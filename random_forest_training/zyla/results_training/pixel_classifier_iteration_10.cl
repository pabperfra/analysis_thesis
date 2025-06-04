/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 top_hat_box=30 top_hat_box=15 top_hat_box=10 difference_of_gaussian=15 small_hessian_eigenvalue_of_gaussian_blur=10 laplace_box_of_gaussian_blur=15 maximum_box=3 gaussian_blur=10 maximum_box=2 median_box=5 gaussian_blur=5 mean_box=15 difference_of_gaussian=20 mean_box=10 laplace_box_of_gaussian_blur=10 difference_of_gaussian=10 sobel_of_gaussian_blur=10 mean_box=3 gaussian_blur=15 laplace_box_of_gaussian_blur=20 gaussian_blur=2 median_box=3 maximum_box=1 maximum_box=5 sobel_of_median_box=5 gaussian_blur=3 maximum_box=10 mean_box=5 maximum_box=30 sobel_of_gaussian_blur=5 maximum_box=15 maximum_box=20 variance_box=2 gaussian_blur=20 variance_box=15 variance_box=30 difference_of_gaussian=30 variance_box=5 variance_box=20 top_hat_box=3 variance_box=10 small_hessian_eigenvalue_of_gaussian_blur=15 top_hat_box=2 sobel_of_median_box=3 top_hat_box=5 difference_of_gaussian=2 difference_of_gaussian=3 laplace_box_of_gaussian_blur=1 laplace_box_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=5 variance_box=3 large_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=30 difference_of_gaussian=1 sobel_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=5 laplace_box_of_gaussian_blur=3 sobel_of_gaussian_blur=15 large_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=1 sobel_of_gaussian_blur=20 sobel_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=3 gaussian_blur=1 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=2 mean_box=1 mean_box=20 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 74
max_depth = 5
num_trees = 250
feature_importances = 0.09567610508851937,0.11197165980492545,0.0993298134540477,0.051254239067134055,0.09668644837684445,0.057072539197930185,0.06380683496838017,0.038942260775750415,0.06340365702050431,0.02960941638539796,0.0167770731177492,0.01377481823791542,0.009621158049910337,0.02739635497965964,0.017973265176227514,0.011405855616889981,0.01528833558796712,0.01434133324919461,0.005925228290138618,0.017923911582146134,0.019443115219573873,0.005251095602012876,0.008731367085382025,0.006559435968513558,0.006621256655112157,0.006970272870435188,0.0062179397909420476,0.002636803881491787,0.0061158144618629305,0.004663770286255425,0.0025209322169771013,0.003116091328781329,0.0027439738531518155,0.0020872376621813254,0.0017215991356360602,0.0026919219184468523,0.002872081660405768,0.0017164458713562875,0.0023131937689358944,0.0029615354435823865,0.0020247533198280224,0.0024012490733201514,0.002232791884305026,0.0025521455220466763,0.0009897587879488779,0.00251738642938089,0.001545794265581399,0.001317940706209263,0.0012595159692739772,0.0014656178918510414,0.0006668215733217068,0.005986792809863912,0.0009958951460521657,0.0013110408008574694,0.001389769349539397,0.0005461584244279947,0.001046814764568967,0.000862675962369156,0.0013102776845987873,0.001500684012412869,0.000821216586498055,0.0007545248896434203,0.0005497233893199357,0.0009071710239361568,0.0008376039097178355,0.0007338797275962701,0.0008019720240625463,0.0005300915884755556,0.0007170998148216555,0.0013351405930975828,0.0002639330945434701,0.0006117615279508428,0.0007053102648097506,0.00037049447949970277
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i20<1.627206802368164e-05){
 if(i22<1.0107624530792236){
  if(i1<0.08355346322059631){
   if(i55<0.018550656735897064){
    if(i23<0.978743314743042){
     s0+=26.0;
     s1+=24.0;
    } else {
     s0+=50467.0;
     s1+=272.0;
    }
   } else {
    if(i31<1.1823735237121582){
     s0+=5722.0;
     s1+=1202.0;
    } else {
     s0+=9954.0;
     s1+=130.0;
    }
   }
  } else {
   if(i19<0.9985270500183105){
    if(i36<0.0017424665857106447){
     s0+=511.0;
    } else {
     s0+=78.0;
     s1+=21.0;
    }
   } else {
    if(i39<0.00045662233605980873){
     s0+=99.0;
     s1+=8.0;
    } else {
     s0+=323.0;
     s1+=1601.0;
    }
   }
  }
 } else {
  if(i35<0.006543607451021671){
   if(i31<1.1759474277496338){
    if(i17<0.0016314050881192088){
     s0+=323.0;
     s1+=114.0;
    } else {
     s0+=70.0;
     s1+=1068.0;
    }
   } else {
    if(i38<0.002061676699668169){
     s0+=141.0;
     s1+=210.0;
    } else {
     s0+=1071.0;
     s1+=247.0;
    }
   }
  } else {
   if(i68<1.0015513896942139){
    if(i68<1.0009589195251465){
     s0+=1.0;
     s1+=1058.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   } else {
    if(i25<0.03047439269721508){
     s0+=40.0;
     s1+=4.0;
    } else {
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i0<0.07410314679145813){
  if(i47<-0.0003794431686401367){
   if(i16<-0.002342700958251953){
    if(i30<0.034578390419483185){
     s0+=339.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=63.0;
    }
   } else {
    if(i24<1.0508280992507935){
     s0+=91.0;
     s1+=10.0;
    } else {
     s0+=89.0;
     s1+=564.0;
    }
   }
  } else {
   if(i54<-0.0011456310749053955){
    if(i36<0.0018508981447666883){
     s0+=24.0;
     s1+=120.0;
    } else {
     s0+=193.0;
     s1+=31.0;
    }
   } else {
    if(i12<1.0035014152526855){
     s0+=887.0;
     s1+=30.0;
    } else {
     s0+=94.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i16<-3.62396240234375e-05){
   if(i44<0.05721034109592438){
    if(i49<0.012884438037872314){
     s0+=17.0;
     s1+=185.0;
    } else {
     s0+=243.0;
     s1+=100.0;
    }
   } else {
    if(i30<0.025745097547769547){
     s0+=134.0;
     s1+=236.0;
    } else {
     s0+=13.0;
     s1+=1086.0;
    }
   }
  } else {
   if(i6<3.510713577270508e-05){
    if(i63<1.1419456313888077e-07){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=47.0;
    }
   } else {
    if(i52<0.00012953793338965625){
     s0+=1.0;
     s1+=8051.0;
    } else {
     s0+=7.0;
     s1+=636.0;
    }
   }
  }
 }
}
if(i7<1.055552363395691){
 if(i7<1.042891263961792){
  if(i3<0.07587894797325134){
   if(i8<1.0025051832199097){
    if(i24<1.0447232723236084){
     s0+=53183.0;
     s1+=216.0;
    } else {
     s0+=7604.0;
     s1+=566.0;
    }
   } else {
    if(i72<-5.15259625899489e-06){
     s1+=117.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i8<0.9968501925468445){
    if(i47<-0.002277076244354248){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=98.0;
     s1+=2.0;
    }
   } else {
    if(i5<-4.4517282731249e-06){
     s0+=14.0;
     s1+=131.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i10<1.008388638496399){
   if(i2<0.06947994232177734){
    if(i46<-0.001822143793106079){
     s0+=225.0;
     s1+=144.0;
    } else {
     s0+=3064.0;
     s1+=298.0;
    }
   } else {
    if(i17<0.0010263260919600725){
     s0+=94.0;
     s1+=2.0;
    } else {
     s0+=153.0;
     s1+=496.0;
    }
   }
  } else {
   if(i1<0.06618624925613403){
    if(i36<0.0008815837791189551){
     s0+=3.0;
     s1+=52.0;
    } else {
     s0+=68.0;
     s1+=3.0;
    }
   } else {
    if(i49<0.01359453797340393){
     s0+=6.0;
     s1+=323.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i5<-4.8489200707990676e-05){
  if(i28<1.0027589797973633){
   if(i51<0.009851040318608284){
    if(i15<-0.00013196468353271484){
     s0+=436.0;
     s1+=369.0;
    } else {
     s0+=99.0;
     s1+=743.0;
    }
   } else {
    if(i11<0.9798850417137146){
     s0+=82.0;
     s1+=117.0;
    } else {
     s0+=31.0;
     s1+=1446.0;
    }
   }
  } else {
   if(i6<-1.2755393981933594e-05){
    if(i42<-8.304348739329726e-06){
     s0+=14.0;
     s1+=91.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i0<0.05767613649368286){
     s0+=33.0;
     s1+=156.0;
    } else {
     s0+=12.0;
     s1+=9575.0;
    }
   }
  }
 } else {
  if(i32<1.1037919521331787){
   if(i41<0.0003431905061006546){
    if(i42<-6.4195742197625805e-06){
     s1+=34.0;
    } else {
     s0+=425.0;
    }
   } else {
    if(i19<0.999243974685669){
     s0+=244.0;
     s1+=44.0;
    } else {
     s0+=358.0;
     s1+=918.0;
    }
   }
  } else {
   if(i36<0.0009756701183505356){
    if(i16<-0.0016055405139923096){
     s0+=135.0;
     s1+=1.0;
    } else {
     s0+=1501.0;
    }
   } else {
    if(i17<0.005884040147066116){
     s0+=3042.0;
     s1+=849.0;
    } else {
     s0+=137.0;
     s1+=365.0;
    }
   }
  }
 }
}
if(i1<0.08353149890899658){
 if(i20<2.2709369659423828e-05){
  if(i35<0.00028988736448809505){
   s0+=36545.0;
  } else {
   if(i31<1.1032289266586304){
    if(i71<0.9996989965438843){
     s0+=6988.0;
     s1+=500.0;
    } else {
     s0+=1210.0;
     s1+=1226.0;
    }
   } else {
    if(i54<-0.003155529499053955){
     s0+=974.0;
     s1+=205.0;
    } else {
     s0+=22495.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i59<0.00835023820400238){
   if(i8<1.0029414892196655){
    if(i8<1.0015943050384521){
     s0+=688.0;
     s1+=21.0;
    } else {
     s0+=95.0;
     s1+=40.0;
    }
   } else {
    if(i65<-0.00908499862998724){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=259.0;
    }
   }
  } else {
   if(i57<0.0029477477073669434){
    if(i6<2.2590160369873047e-05){
     s0+=30.0;
     s1+=26.0;
    } else {
     s0+=30.0;
     s1+=502.0;
    }
   } else {
    if(i0<0.07682690024375916){
     s0+=45.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i17<0.0046307966113090515){
  if(i15<0.00011229515075683594){
   if(i54<0.00480198860168457){
    if(i6<-5.4270029067993164e-05){
     s0+=343.0;
     s1+=11.0;
    } else {
     s0+=440.0;
     s1+=1060.0;
    }
   } else {
    if(i35<0.005335341207683086){
     s0+=778.0;
     s1+=88.0;
    } else {
     s0+=100.0;
     s1+=111.0;
    }
   }
  } else {
   if(i68<0.9960499405860901){
    s0+=14.0;
   } else {
    if(i29<1.2392117977142334){
     s1+=810.0;
    } else {
     s0+=42.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i12<0.995225191116333){
   if(i24<1.3712366819381714){
    if(i50<-0.0009017694392241538){
     s1+=34.0;
    } else {
     s0+=107.0;
     s1+=28.0;
    }
   } else {
    s1+=113.0;
   }
  } else {
   if(i16<-0.0009031891822814941){
    if(i58<0.00498918304219842){
     s0+=228.0;
     s1+=563.0;
    } else {
     s1+=566.0;
    }
   } else {
    if(i52<9.649946878198534e-05){
     s1+=8531.0;
    } else {
     s0+=34.0;
     s1+=1778.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i8<1.0024782419204712){
  if(i24<1.0486011505126953){
   if(i66<0.0006833112565800548){
    if(i1<0.08123216032981873){
     s0+=52555.0;
     s1+=73.0;
    } else {
     s0+=236.0;
     s1+=21.0;
    }
   } else {
    if(i64<-0.0013964183162897825){
     s0+=2215.0;
     s1+=16.0;
    } else {
     s0+=1194.0;
     s1+=221.0;
    }
   }
  } else {
   if(i29<1.1013743877410889){
    if(i38<0.00047775357961654663){
     s0+=1554.0;
     s1+=211.0;
    } else {
     s0+=894.0;
     s1+=1029.0;
    }
   } else {
    if(i54<-0.0027235746383666992){
     s0+=1100.0;
     s1+=255.0;
    } else {
     s0+=9333.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i29<1.2392117977142334){
   if(i41<0.00028658233350142837){
    s0+=4.0;
   } else {
    s1+=779.0;
   }
  } else {
   if(i69<0.002441820688545704){
    if(i42<-3.0831935873720795e-05){
     s0+=34.0;
     s1+=19.0;
    } else {
     s0+=172.0;
    }
   } else {
    if(i63<2.431864595564548e-05){
     s0+=26.0;
     s1+=262.0;
    } else {
     s0+=10.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i5<-1.3797138308291323e-05){
  if(i14<1.000990867614746){
   if(i50<-8.848209108691663e-05){
    if(i49<0.013722032308578491){
     s0+=46.0;
     s1+=1616.0;
    } else {
     s0+=289.0;
     s1+=1324.0;
    }
   } else {
    if(i67<0.998163640499115){
     s0+=16.0;
     s1+=227.0;
    } else {
     s0+=251.0;
     s1+=126.0;
    }
   }
  } else {
   if(i30<0.016907043755054474){
    if(i47<0.0039070844650268555){
     s0+=70.0;
     s1+=1661.0;
    } else {
     s0+=76.0;
     s1+=96.0;
    }
   } else {
    if(i31<1.22279691696167){
     s0+=16.0;
     s1+=767.0;
    } else {
     s0+=1.0;
     s1+=7668.0;
    }
   }
  }
 } else {
  if(i53<0.9995788931846619){
   s0+=419.0;
  } else {
   if(i56<0.00031782075529918075){
    if(i13<0.0005590915679931641){
     s0+=492.0;
     s1+=81.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i49<0.009760349988937378){
     s0+=29.0;
     s1+=218.0;
    } else {
     s0+=161.0;
     s1+=56.0;
    }
   }
  }
 }
}
if(i3<0.07381513714790344){
 if(i16<0.0011493265628814697){
  if(i27<1.0598037242889404){
   if(i51<0.0003713380137924105){
    if(i27<1.0572319030761719){
     s0+=41650.0;
    } else {
     s0+=376.0;
     s1+=1.0;
    }
   } else {
    if(i36<0.0003909693332388997){
     s0+=1422.0;
    } else {
     s0+=562.0;
     s1+=51.0;
    }
   }
  } else {
   if(i62<0.03454846143722534){
    if(i1<0.08262977004051208){
     s0+=12581.0;
     s1+=570.0;
    } else {
     s0+=93.0;
     s1+=179.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=1300.0;
     s1+=1373.0;
    } else {
     s0+=11126.0;
     s1+=1156.0;
    }
   }
  }
 } else {
  if(i51<0.00021388675668276846){
   if(i5<-6.884684989927337e-05){
    s1+=6.0;
   } else {
    s0+=56.0;
   }
  } else {
   if(i42<-1.440165397070814e-05){
    s1+=1267.0;
   } else {
    if(i34<1.0002923011779785){
     s1+=237.0;
    } else {
     s0+=70.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985275268554688){
  if(i36<0.0016545492690056562){
   s0+=437.0;
  } else {
   if(i24<1.0619208812713623){
    if(i65<-0.016741536557674408){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i9<1.0401077270507812){
     s0+=6.0;
    } else {
     s1+=24.0;
    }
   }
  }
 } else {
  if(i41<0.008288681507110596){
   if(i2<0.11400657892227173){
    if(i40<0.05868828296661377){
     s0+=93.0;
     s1+=827.0;
    } else {
     s0+=725.0;
     s1+=279.0;
    }
   } else {
    if(i65<-0.03412853181362152){
     s0+=310.0;
     s1+=246.0;
    } else {
     s0+=89.0;
     s1+=3105.0;
    }
   }
  } else {
   if(i2<0.08579736948013306){
    if(i46<0.004360616207122803){
     s0+=1.0;
     s1+=35.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i16<-0.005843907594680786){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=7827.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i7<1.0452215671539307){
  if(i13<0.0006633400917053223){
   if(i69<0.001749246846884489){
    if(i47<-0.001219630241394043){
     s0+=2012.0;
     s1+=150.0;
    } else {
     s0+=56592.0;
     s1+=306.0;
    }
   } else {
    if(i51<0.002370302565395832){
     s0+=1466.0;
     s1+=377.0;
    } else {
     s0+=1607.0;
     s1+=12.0;
    }
   }
  } else {
   if(i14<0.9996147751808167){
    if(i59<0.01581493392586708){
     s0+=175.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i73<0.00014683400513604283){
     s0+=3.0;
     s1+=83.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i19<1.0018714666366577){
   if(i19<0.9991118907928467){
    if(i17<0.0026024049147963524){
     s0+=1296.0;
     s1+=6.0;
    } else {
     s0+=971.0;
     s1+=81.0;
    }
   } else {
    if(i0<0.06581231951713562){
     s0+=3872.0;
     s1+=802.0;
    } else {
     s0+=511.0;
     s1+=480.0;
    }
   }
  } else {
   if(i8<1.0034213066101074){
    if(i49<-0.00787392258644104){
     s0+=46.0;
     s1+=122.0;
    } else {
     s0+=332.0;
     s1+=55.0;
    }
   } else {
    if(i46<0.0020395517349243164){
     s0+=31.0;
     s1+=592.0;
    } else {
     s0+=18.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i19<0.9986284971237183){
  if(i72<-3.5420996482571354e-06){
   if(i9<1.0401077270507812){
    if(i48<0.005179017782211304){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=41.0;
     s1+=2.0;
    }
   } else {
    if(i12<0.9923347234725952){
     s0+=4.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i9<1.3700618743896484){
    if(i34<0.9992966055870056){
     s0+=657.0;
     s1+=3.0;
    } else {
     s0+=20.0;
     s1+=4.0;
    }
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i36<0.0005124211893416941){
   if(i24<1.073258876800537){
    if(i32<1.0724589824676514){
     s0+=45.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=104.0;
    }
   } else {
    s0+=193.0;
   }
  } else {
   if(i30<0.02409222722053528){
    if(i11<1.007587194442749){
     s0+=827.0;
     s1+=1617.0;
    } else {
     s0+=46.0;
     s1+=2419.0;
    }
   } else {
    if(i5<3.2170946724363603e-06){
     s0+=125.0;
     s1+=10000.0;
    } else {
     s0+=49.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i20<1.901388168334961e-05){
 if(i0<0.08399802446365356){
  if(i59<0.007944749668240547){
   if(i57<-0.002317667007446289){
    if(i52<9.5402414444834e-05){
     s0+=1545.0;
     s1+=493.0;
    } else {
     s0+=2234.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.0692034363746643){
     s0+=59944.0;
     s1+=479.0;
    } else {
     s0+=1577.0;
     s1+=359.0;
    }
   }
  } else {
   if(i12<1.0006482601165771){
    if(i31<1.1999231576919556){
     s0+=1421.0;
     s1+=447.0;
    } else {
     s0+=1287.0;
     s1+=54.0;
    }
   } else {
    if(i36<0.0018563226331025362){
     s0+=26.0;
     s1+=170.0;
    } else {
     s0+=207.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i15<4.8995018005371094e-05){
   if(i40<0.062424421310424805){
    if(i34<0.9986874461174011){
     s0+=85.0;
    } else {
     s0+=65.0;
     s1+=1421.0;
    }
   } else {
    if(i56<0.0005100816488265991){
     s0+=889.0;
     s1+=332.0;
    } else {
     s0+=192.0;
     s1+=506.0;
    }
   }
  } else {
   if(i2<0.09728765487670898){
    if(i23<1.0743005275726318){
     s0+=34.0;
     s1+=183.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.9998663663864136){
     s0+=14.0;
     s1+=1720.0;
    } else {
     s0+=53.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i24<1.0640453100204468){
  if(i72<-9.710233825899195e-06){
   s0+=458.0;
  } else {
   if(i14<1.0035264492034912){
    if(i53<1.0000343322753906){
     s0+=201.0;
     s1+=3.0;
    } else {
     s0+=59.0;
     s1+=51.0;
    }
   } else {
    if(i58<0.0006987863453105092){
     s0+=13.0;
    } else {
     s0+=1.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i15<-3.6954879760742188e-06){
   if(i11<0.9797049164772034){
    if(i51<0.015464464202523232){
     s0+=244.0;
     s1+=55.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   } else {
    if(i55<0.21234330534934998){
     s0+=544.0;
     s1+=860.0;
    } else {
     s0+=6.0;
     s1+=621.0;
    }
   }
  } else {
   if(i58<0.0006327445153146982){
    if(i4<0.0011972784996032715){
     s0+=21.0;
    } else {
     s1+=196.0;
    }
   } else {
    if(i17<0.0009242213563993573){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=8603.0;
    }
   }
  }
 }
}
if(i1<0.08523550629615784){
 if(i4<0.0005853474140167236){
  if(i24<1.0451585054397583){
   if(i69<0.0017568569164723158){
    if(i47<-0.00099867582321167){
     s0+=1457.0;
     s1+=80.0;
    } else {
     s0+=50921.0;
     s1+=72.0;
    }
   } else {
    if(i55<0.044068172574043274){
     s0+=290.0;
     s1+=71.0;
    } else {
     s0+=1092.0;
     s1+=25.0;
    }
   }
  } else {
   if(i1<0.0661783218383789){
    if(i27<1.1031841039657593){
     s0+=4927.0;
     s1+=971.0;
    } else {
     s0+=8656.0;
     s1+=289.0;
    }
   } else {
    if(i60<0.016037076711654663){
     s0+=340.0;
     s1+=514.0;
    } else {
     s0+=1183.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i33<0.00017708349332679063){
   if(i5<-5.388803401729092e-05){
    s1+=20.0;
   } else {
    if(i49<-0.006769508123397827){
     s1+=2.0;
    } else {
     s0+=109.0;
    }
   }
  } else {
   if(i8<1.004084825515747){
    if(i58<0.0018799041863530874){
     s0+=125.0;
     s1+=75.0;
    } else {
     s0+=86.0;
     s1+=259.0;
    }
   } else {
    if(i62<0.35945287346839905){
     s0+=8.0;
     s1+=594.0;
    } else {
     s0+=24.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010436773300170898){
  if(i19<0.9985275268554688){
   if(i42<-1.0292333172401413e-05){
    if(i32<1.1414752006530762){
     s0+=18.0;
    } else {
     s0+=15.0;
     s1+=27.0;
    }
   } else {
    s0+=633.0;
   }
  } else {
   if(i43<0.04811397194862366){
    if(i2<0.05353382229804993){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=56.0;
     s1+=1113.0;
    }
   } else {
    if(i30<0.040010176599025726){
     s0+=644.0;
     s1+=407.0;
    } else {
     s0+=6.0;
     s1+=198.0;
    }
   }
  }
 } else {
  if(i2<0.1290670931339264){
   if(i64<-0.005306074395775795){
    if(i17<0.006274357438087463){
     s0+=256.0;
     s1+=8.0;
    } else {
     s0+=46.0;
     s1+=129.0;
    }
   } else {
    if(i35<0.00025923072826117277){
     s0+=11.0;
    } else {
     s0+=52.0;
     s1+=1902.0;
    }
   }
  } else {
   if(i8<1.0016529560089111){
    if(i54<0.008594632148742676){
     s0+=5.0;
     s1+=582.0;
    } else {
     s0+=87.0;
     s1+=249.0;
    }
   } else {
    if(i12<0.9961597919464111){
     s0+=9.0;
     s1+=131.0;
    } else {
     s0+=16.0;
     s1+=9171.0;
    }
   }
  }
 }
}
if(i6<3.832578659057617e-05){
 if(i18<1.007453203201294){
  if(i0<0.08023446798324585){
   if(i49<-0.005911886692047119){
    if(i27<1.185624122619629){
     s0+=1517.0;
     s1+=628.0;
    } else {
     s0+=1962.0;
     s1+=149.0;
    }
   } else {
    if(i2<0.05820581316947937){
     s0+=58270.0;
     s1+=478.0;
    } else {
     s0+=4613.0;
     s1+=379.0;
    }
   }
  } else {
   if(i40<0.05659404397010803){
    if(i13<-0.0004686117172241211){
     s0+=94.0;
    } else {
     s0+=63.0;
     s1+=1109.0;
    }
   } else {
    if(i2<0.12270036339759827){
     s0+=707.0;
     s1+=155.0;
    } else {
     s0+=248.0;
     s1+=540.0;
    }
   }
  }
 } else {
  if(i17<0.004800986964255571){
   if(i29<1.1039612293243408){
    if(i15<7.581710815429688e-05){
     s0+=460.0;
     s1+=254.0;
    } else {
     s0+=14.0;
     s1+=411.0;
    }
   } else {
    if(i3<0.21097293496131897){
     s0+=2085.0;
     s1+=199.0;
    } else {
     s0+=133.0;
     s1+=135.0;
    }
   }
  } else {
   if(i37<-0.0002160966396331787){
    if(i64<-0.024005034938454628){
     s1+=10.0;
    } else {
     s0+=84.0;
    }
   } else {
    if(i36<0.010286141186952591){
     s0+=32.0;
     s1+=1151.0;
    } else {
     s0+=20.0;
    }
   }
  }
 }
} else {
 if(i19<0.9998130798339844){
  if(i52<5.5389595218002796e-05){
   s0+=256.0;
  } else {
   s1+=7.0;
  }
 } else {
  if(i0<0.05844426155090332){
   if(i42<-1.4155457392917015e-05){
    if(i57<0.0031029582023620605){
     s0+=78.0;
     s1+=389.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i34<1.0010340213775635){
     s0+=99.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i5<-4.5822445827070624e-05){
    if(i1<0.13185465335845947){
     s0+=103.0;
     s1+=1738.0;
    } else {
     s0+=14.0;
     s1+=9280.0;
    }
   } else {
    if(i27<1.111814260482788){
     s0+=1.0;
     s1+=193.0;
    } else {
     s0+=71.0;
     s1+=79.0;
    }
   }
  }
 }
}
if(i0<0.08317044377326965){
 if(i13<0.0006092190742492676){
  if(i46<-0.00161665678024292){
   if(i32<1.197464108467102){
    if(i32<1.0703742504119873){
     s0+=804.0;
    } else {
     s0+=615.0;
     s1+=678.0;
    }
   } else {
    if(i30<0.0486038438975811){
     s0+=2367.0;
     s1+=110.0;
    } else {
     s0+=12.0;
     s1+=35.0;
    }
   }
  } else {
   if(i10<1.0081751346588135){
    if(i8<1.002474308013916){
     s0+=64142.0;
     s1+=1032.0;
    } else {
     s0+=31.0;
     s1+=56.0;
    }
   } else {
    if(i38<0.0009303542319685221){
     s0+=119.0;
     s1+=237.0;
    } else {
     s0+=512.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i8<1.0023391246795654){
   if(i61<0.0018933892715722322){
    if(i59<0.011749474331736565){
     s0+=648.0;
     s1+=51.0;
    } else {
     s0+=29.0;
     s1+=40.0;
    }
   } else {
    if(i59<0.011427798308432102){
     s0+=3.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i54<0.0018364787101745605){
    if(i57<0.006574094295501709){
     s0+=42.0;
     s1+=773.0;
    } else {
     s0+=25.0;
     s1+=2.0;
    }
   } else {
    if(i33<0.0008209674851968884){
     s0+=2.0;
     s1+=6.0;
    } else {
     s0+=37.0;
    }
   }
  }
 }
} else {
 if(i72<2.588930328784045e-06){
  if(i5<-1.2664251698879525e-05){
   if(i1<0.12401637434959412){
    if(i60<0.042083144187927246){
     s0+=268.0;
     s1+=2208.0;
    } else {
     s0+=197.0;
     s1+=99.0;
    }
   } else {
    if(i37<-0.0005416274070739746){
     s0+=10.0;
    } else {
     s0+=191.0;
     s1+=11523.0;
    }
   }
  } else {
   if(i45<0.06445854902267456){
    if(i34<0.9991288781166077){
     s0+=75.0;
    } else {
     s0+=14.0;
     s1+=168.0;
    }
   } else {
    if(i35<0.005023329984396696){
     s0+=631.0;
     s1+=62.0;
    } else {
     s0+=56.0;
     s1+=114.0;
    }
   }
  }
 } else {
  s0+=175.0;
 }
}
if(i8<1.0023839473724365){
 if(i3<0.07133829593658447){
  if(i51<0.0002816389314830303){
   if(i21<1.007855772972107){
    if(i66<0.0017279210733249784){
     s0+=52102.0;
     s1+=153.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   } else {
    if(i5<-3.2023483072407544e-05){
     s0+=11.0;
     s1+=79.0;
    } else {
     s0+=136.0;
     s1+=14.0;
    }
   }
  } else {
   if(i31<1.1812903881072998){
    if(i36<0.00044869352132081985){
     s0+=3808.0;
     s1+=206.0;
    } else {
     s0+=2441.0;
     s1+=1942.0;
    }
   } else {
    if(i6<2.0205974578857422e-05){
     s0+=9928.0;
     s1+=234.0;
    } else {
     s0+=245.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i1<0.11253103613853455){
   if(i40<0.05054792761802673){
    if(i14<0.994693398475647){
     s0+=61.0;
     s1+=49.0;
    } else {
     s0+=21.0;
     s1+=365.0;
    }
   } else {
    if(i64<-0.0043025510385632515){
     s0+=715.0;
     s1+=33.0;
    } else {
     s0+=478.0;
     s1+=192.0;
    }
   }
  } else {
   if(i54<0.006099581718444824){
    if(i40<0.11322021484375){
     s0+=62.0;
     s1+=1549.0;
    } else {
     s0+=80.0;
     s1+=83.0;
    }
   } else {
    if(i36<0.0016422744374722242){
     s0+=387.0;
     s1+=37.0;
    } else {
     s0+=194.0;
     s1+=764.0;
    }
   }
  }
 }
} else {
 if(i1<0.06563782691955566){
  if(i58<0.0009002045262604952){
   if(i5<-6.294679769780487e-05){
    s1+=11.0;
   } else {
    if(i25<0.0011333400616422296){
     s1+=1.0;
    } else {
     s0+=203.0;
     s1+=1.0;
    }
   }
  } else {
   if(i54<0.0003935098648071289){
    if(i21<1.014883041381836){
     s0+=29.0;
     s1+=455.0;
    } else {
     s0+=29.0;
     s1+=5.0;
    }
   } else {
    if(i55<0.06609004735946655){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=37.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<5.716085433959961e-05){
   if(i0<0.11833545565605164){
    if(i67<1.0332567691802979){
     s0+=45.0;
     s1+=312.0;
    } else {
     s0+=35.0;
     s1+=3.0;
    }
   } else {
    if(i17<0.002230713376775384){
     s0+=9.0;
    } else {
     s0+=2.0;
     s1+=566.0;
    }
   }
  } else {
   if(i14<1.0061008930206299){
    if(i17<0.005671074613928795){
     s0+=28.0;
     s1+=58.0;
    } else {
     s0+=32.0;
     s1+=1744.0;
    }
   } else {
    if(i8<1.0039653778076172){
     s0+=2.0;
     s1+=113.0;
    } else {
     s1+=8019.0;
    }
   }
  }
 }
}
if(i0<0.08191633224487305){
 if(i8<1.0024913549423218){
  if(i38<0.0003133216523565352){
   if(i6<1.150369644165039e-05){
    if(i35<0.00028976984322071075){
     s0+=30123.0;
    } else {
     s0+=12440.0;
     s1+=46.0;
    }
   } else {
    if(i24<1.0494716167449951){
     s0+=4591.0;
     s1+=12.0;
    } else {
     s0+=143.0;
     s1+=65.0;
    }
   }
  } else {
   if(i0<0.06630754470825195){
    if(i32<1.103413462638855){
     s0+=4424.0;
     s1+=1029.0;
    } else {
     s0+=15764.0;
     s1+=422.0;
    }
   } else {
    if(i40<0.037075042724609375){
     s0+=59.0;
     s1+=470.0;
    } else {
     s0+=1357.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i32<1.2314128875732422){
   s1+=570.0;
  } else {
   if(i56<8.279834582936019e-05){
    if(i51<0.008692154660820961){
     s0+=178.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i48<0.010780543088912964){
     s0+=30.0;
     s1+=289.0;
    } else {
     s0+=60.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i20<-1.5676021575927734e-05){
  if(i16<-0.003021448850631714){
   if(i30<0.012726213783025742){
    s1+=18.0;
   } else {
    if(i62<0.7337049245834351){
     s0+=21.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i19<0.9988174438476562){
    s0+=403.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i1<0.12399810552597046){
   if(i60<0.03319370746612549){
    if(i47<0.004354923963546753){
     s0+=134.0;
     s1+=2137.0;
    } else {
     s0+=211.0;
     s1+=61.0;
    }
   } else {
    if(i33<0.0008257253793999553){
     s0+=182.0;
     s1+=220.0;
    } else {
     s0+=416.0;
     s1+=43.0;
    }
   }
  } else {
   if(i58<0.0003875337424688041){
    if(i64<-0.004510834813117981){
     s0+=210.0;
     s1+=72.0;
    } else {
     s0+=16.0;
     s1+=168.0;
    }
   } else {
    if(i8<1.0023404359817505){
     s0+=192.0;
     s1+=2174.0;
    } else {
     s0+=39.0;
     s1+=9288.0;
    }
   }
  }
 }
}
if(i1<0.08356860280036926){
 if(i16<0.0011508762836456299){
  if(i69<0.0015700520016252995){
   if(i21<1.0074145793914795){
    if(i55<0.024295024573802948){
     s0+=52505.0;
     s1+=211.0;
    } else {
     s0+=8422.0;
     s1+=627.0;
    }
   } else {
    if(i32<1.1040980815887451){
     s0+=436.0;
     s1+=340.0;
    } else {
     s0+=1207.0;
     s1+=49.0;
    }
   }
  } else {
   if(i20<2.3066997528076172e-05){
    if(i32<1.1037919521331787){
     s0+=1571.0;
     s1+=651.0;
    } else {
     s0+=4467.0;
     s1+=341.0;
    }
   } else {
    if(i14<1.0001977682113647){
     s0+=236.0;
     s1+=137.0;
    } else {
     s0+=25.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i17<0.0019305176101624966){
   if(i39<0.002574353478848934){
    s1+=13.0;
   } else {
    s0+=119.0;
   }
  } else {
   if(i14<1.003690242767334){
    if(i30<0.011800368316471577){
     s0+=12.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i27<1.2388319969177246){
     s1+=446.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00040471553802490234){
  if(i63<4.444957448868081e-05){
   if(i37<-9.34898853302002e-05){
    if(i18<0.9925261735916138){
     s0+=434.0;
    } else {
     s0+=225.0;
     s1+=1.0;
    }
   } else {
    if(i50<-0.0005717356107197702){
     s1+=1.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i47<0.0029584169387817383){
    if(i30<0.014018833637237549){
     s1+=16.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   } else {
    s0+=17.0;
   }
  }
 } else {
  if(i5<-2.0081859474885277e-05){
   if(i28<1.0066328048706055){
    if(i1<0.124696284532547){
     s0+=424.0;
     s1+=917.0;
    } else {
     s0+=115.0;
     s1+=2862.0;
    }
   } else {
    if(i4<0.0004690587520599365){
     s0+=61.0;
     s1+=982.0;
    } else {
     s0+=10.0;
     s1+=8568.0;
    }
   }
  } else {
   if(i46<0.0037605464458465576){
    if(i36<0.0005076368688605726){
     s0+=98.0;
     s1+=15.0;
    } else {
     s0+=125.0;
     s1+=491.0;
    }
   } else {
    if(i36<0.0012141624465584755){
     s0+=396.0;
     s1+=20.0;
    } else {
     s0+=200.0;
     s1+=156.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i7<1.0452277660369873){
  if(i1<0.08263406157493591){
   if(i51<0.00029349036049097776){
    if(i8<1.0026063919067383){
     s0+=51836.0;
     s1+=161.0;
    } else {
     s0+=23.0;
     s1+=25.0;
    }
   } else {
    if(i16<-0.0019544363021850586){
     s0+=6377.0;
     s1+=28.0;
    } else {
     s0+=3746.0;
     s1+=650.0;
    }
   }
  } else {
   if(i11<0.9879646301269531){
    if(i61<0.002036994555965066){
     s0+=341.0;
     s1+=25.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i41<0.00048787964624352753){
     s0+=92.0;
     s1+=6.0;
    } else {
     s0+=61.0;
     s1+=287.0;
    }
   }
  }
 } else {
  if(i17<0.0045654745772480965){
   if(i8<1.0012943744659424){
    if(i31<1.179337501525879){
     s0+=3295.0;
     s1+=1057.0;
    } else {
     s0+=2652.0;
     s1+=142.0;
    }
   } else {
    if(i0<0.06761634349822998){
     s0+=191.0;
     s1+=82.0;
    } else {
     s0+=54.0;
     s1+=223.0;
    }
   }
  } else {
   if(i2<0.08518153429031372){
    if(i14<0.9949423670768738){
     s0+=631.0;
     s1+=129.0;
    } else {
     s0+=363.0;
     s1+=711.0;
    }
   } else {
    if(i20<-1.7911195755004883e-05){
     s0+=49.0;
    } else {
     s0+=133.0;
     s1+=2497.0;
    }
   }
  }
 }
} else {
 if(i8<1.0022735595703125){
  if(i3<0.1574297845363617){
   if(i31<1.1610381603240967){
    if(i11<0.9947918653488159){
     s0+=91.0;
     s1+=3.0;
    } else {
     s0+=69.0;
     s1+=768.0;
    }
   } else {
    if(i58<0.0017277381848543882){
     s0+=872.0;
     s1+=107.0;
    } else {
     s0+=31.0;
     s1+=111.0;
    }
   }
  } else {
   if(i72<1.0949590887321392e-06){
    if(i40<0.15191680192947388){
     s0+=4.0;
     s1+=597.0;
    } else {
     s0+=48.0;
     s1+=167.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i17<0.0022657362278550863){
   if(i29<1.2392117977142334){
    s1+=163.0;
   } else {
    if(i5<-6.903398025315255e-05){
     s1+=43.0;
    } else {
     s0+=169.0;
     s1+=3.0;
    }
   }
  } else {
   if(i61<0.0004903551889583468){
    if(i5<-3.632484367699362e-05){
     s0+=44.0;
     s1+=1966.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.9981099963188171){
     s0+=3.0;
     s1+=202.0;
    } else {
     s1+=6874.0;
    }
   }
  }
 }
}
if(i23<1.0406770706176758){
 if(i2<0.07751670479774475){
  if(i47<-0.001351684331893921){
   if(i8<1.0029304027557373){
    if(i39<0.0008681758772581816){
     s0+=1301.0;
     s1+=618.0;
    } else {
     s0+=3972.0;
     s1+=324.0;
    }
   } else {
    if(i29<1.5682398080825806){
     s0+=2.0;
     s1+=340.0;
    } else {
     s0+=11.0;
     s1+=40.0;
    }
   }
  } else {
   if(i8<1.0025070905685425){
    if(i55<0.024949736893177032){
     s0+=52826.0;
     s1+=263.0;
    } else {
     s0+=8303.0;
     s1+=626.0;
    }
   } else {
    if(i41<0.0023778649047017097){
     s0+=17.0;
     s1+=307.0;
    } else {
     s0+=97.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i24<1.049466609954834){
   if(i21<1.0073213577270508){
    if(i19<0.9987291097640991){
     s0+=139.0;
    } else {
     s0+=58.0;
     s1+=24.0;
    }
   } else {
    if(i61<0.0006661401130259037){
     s1+=12.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i37<-0.00024434924125671387){
    if(i12<0.9944062232971191){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i60<0.036151617765426636){
     s0+=14.0;
     s1+=2090.0;
    } else {
     s0+=33.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i4<0.000443190336227417){
  if(i0<0.09311747550964355){
   if(i37<-2.714991569519043e-05){
    if(i56<0.0013031926937401295){
     s0+=1066.0;
     s1+=18.0;
    } else {
     s0+=9.0;
     s1+=12.0;
    }
   } else {
    if(i41<0.0014402368105947971){
     s0+=600.0;
     s1+=330.0;
    } else {
     s0+=1224.0;
     s1+=69.0;
    }
   }
  } else {
   if(i46<0.004606157541275024){
    if(i36<0.00045763200614601374){
     s0+=59.0;
     s1+=4.0;
    } else {
     s0+=173.0;
     s1+=1199.0;
    }
   } else {
    if(i5<-3.372407809365541e-05){
     s0+=91.0;
     s1+=629.0;
    } else {
     s0+=633.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i10<1.023747444152832){
   if(i24<1.245593547821045){
    if(i39<0.002698765601962805){
     s1+=940.0;
    } else {
     s0+=333.0;
     s1+=1216.0;
    }
   } else {
    if(i3<0.004763364791870117){
     s0+=2.0;
     s1+=14.0;
    } else {
     s1+=1146.0;
    }
   }
  } else {
   if(i18<1.0091216564178467){
    if(i30<0.013857406564056873){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=154.0;
    }
   } else {
    s1+=6516.0;
   }
  }
 }
}
if(i6<3.808736801147461e-05){
 if(i2<0.0801730751991272){
  if(i0<0.06633245944976807){
   if(i62<0.04131795093417168){
    if(i21<1.0088295936584473){
     s0+=53052.0;
     s1+=372.0;
    } else {
     s0+=159.0;
     s1+=59.0;
    }
   } else {
    if(i39<0.0008673291886225343){
     s0+=4151.0;
     s1+=626.0;
    } else {
     s0+=8921.0;
     s1+=319.0;
    }
   }
  } else {
   if(i48<0.004246890544891357){
    if(i18<1.0229194164276123){
     s0+=182.0;
     s1+=392.0;
    } else {
     s0+=104.0;
     s1+=3.0;
    }
   } else {
    if(i14<0.9940168857574463){
     s0+=1056.0;
     s1+=16.0;
    } else {
     s0+=1213.0;
     s1+=292.0;
    }
   }
  }
 } else {
  if(i34<0.9989140033721924){
   if(i5<-5.2089944801991805e-05){
    s1+=11.0;
   } else {
    if(i65<-0.010847199708223343){
     s0+=323.0;
    } else {
     s0+=97.0;
     s1+=3.0;
    }
   }
  } else {
   if(i25<0.02791137434542179){
    if(i47<0.004269927740097046){
     s0+=509.0;
     s1+=1104.0;
    } else {
     s0+=434.0;
     s1+=131.0;
    }
   } else {
    if(i60<0.03031402826309204){
     s0+=40.0;
     s1+=1404.0;
    } else {
     s0+=158.0;
     s1+=627.0;
    }
   }
  }
 }
} else {
 if(i31<1.0624027252197266){
  s0+=322.0;
 } else {
  if(i4<0.0009405612945556641){
   if(i5<-4.922334846924059e-05){
    if(i16<-0.0005399584770202637){
     s0+=123.0;
     s1+=311.0;
    } else {
     s0+=16.0;
     s1+=1010.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=181.0;
    } else {
     s0+=189.0;
     s1+=24.0;
    }
   }
  } else {
   if(i4<0.0014884471893310547){
    if(i13<0.0009430646896362305){
     s0+=9.0;
     s1+=1473.0;
    } else {
     s0+=71.0;
     s1+=524.0;
    }
   } else {
    if(i8<1.0042266845703125){
     s0+=1.0;
    } else {
     s0+=11.0;
     s1+=8229.0;
    }
   }
  }
 }
}
if(i17<0.0048222048208117485){
 if(i10<1.0080251693725586){
  if(i24<1.0485899448394775){
   if(i66<0.0007554180338047445){
    if(i7<1.0410044193267822){
     s0+=49160.0;
     s1+=52.0;
    } else {
     s0+=2136.0;
     s1+=62.0;
    }
   } else {
    if(i8<0.9964547753334045){
     s0+=1172.0;
     s1+=5.0;
    } else {
     s0+=832.0;
     s1+=187.0;
    }
   }
  } else {
   if(i16<-0.0015234649181365967){
    if(i29<1.1977431774139404){
     s0+=165.0;
     s1+=58.0;
    } else {
     s0+=2825.0;
     s1+=58.0;
    }
   } else {
    if(i56<0.0003789961920119822){
     s0+=7189.0;
     s1+=987.0;
    } else {
     s0+=800.0;
     s1+=1016.0;
    }
   }
  }
 } else {
  if(i16<0.0014307498931884766){
   if(i5<-4.4094111217418686e-05){
    if(i68<1.0027928352355957){
     s0+=24.0;
     s1+=382.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i1<0.10607847571372986){
     s0+=1021.0;
     s1+=139.0;
    } else {
     s0+=210.0;
     s1+=379.0;
    }
   }
  } else {
   if(i9<1.0394923686981201){
    if(i36<0.00287777092307806){
     s1+=35.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i7<1.0523395538330078){
     s0+=1.0;
     s1+=21.0;
    } else {
     s1+=900.0;
    }
   }
  }
 }
} else {
 if(i2<0.06363296508789062){
  if(i6<1.9848346710205078e-05){
   if(i1<0.07279178500175476){
    if(i32<1.2098138332366943){
     s0+=218.0;
     s1+=120.0;
    } else {
     s0+=4550.0;
     s1+=105.0;
    }
   } else {
    if(i52<0.00015685561811551452){
     s0+=3.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=7.0;
    }
   }
  } else {
   if(i27<1.1981843709945679){
    if(i46<0.002915680408477783){
     s0+=9.0;
     s1+=464.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i48<-0.024512887001037598){
     s0+=24.0;
     s1+=143.0;
    } else {
     s0+=105.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i34<0.9988111257553101){
   if(i46<0.026646137237548828){
    s0+=118.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i8<0.9980052709579468){
    if(i0<0.08986601233482361){
     s0+=177.0;
     s1+=45.0;
    } else {
     s0+=17.0;
     s1+=235.0;
    }
   } else {
    if(i16<-0.0021122097969055176){
     s0+=123.0;
     s1+=323.0;
    } else {
     s0+=107.0;
     s1+=11365.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i18<1.007725715637207){
  if(i6<4.139542579650879e-05){
   if(i1<0.08579528331756592){
    if(i51<0.00029784609796479344){
     s0+=52330.0;
     s1+=201.0;
    } else {
     s0+=11560.0;
     s1+=1005.0;
    }
   } else {
    if(i34<0.9992820024490356){
     s0+=286.0;
     s1+=7.0;
    } else {
     s0+=113.0;
     s1+=443.0;
    }
   }
  } else {
   if(i53<0.9989770650863647){
    s0+=235.0;
   } else {
    if(i12<0.9980363845825195){
     s0+=6.0;
    } else {
     s0+=25.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i2<0.05865707993507385){
   if(i16<0.0015007853507995605){
    if(i5<-4.115014598937705e-05){
     s0+=33.0;
     s1+=45.0;
    } else {
     s0+=602.0;
     s1+=20.0;
    }
   } else {
    s1+=24.0;
   }
  } else {
   if(i4<1.4007091522216797e-06){
    if(i29<1.2392117977142334){
     s0+=5.0;
     s1+=40.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i5<-2.1997670046403073e-05){
     s0+=12.0;
     s1+=309.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
} else {
 if(i12<1.0008354187011719){
  if(i1<0.09130379557609558){
   if(i25<0.022495826706290245){
    if(i42<-8.691311450093053e-06){
     s0+=603.0;
     s1+=145.0;
    } else {
     s0+=2505.0;
     s1+=112.0;
    }
   } else {
    if(i51<0.001103247981518507){
     s0+=92.0;
     s1+=235.0;
    } else {
     s0+=653.0;
     s1+=127.0;
    }
   }
  } else {
   if(i72<2.248066493848455e-06){
    if(i36<0.0006418487755581737){
     s0+=437.0;
     s1+=193.0;
    } else {
     s0+=366.0;
     s1+=2328.0;
    }
   } else {
    s0+=205.0;
   }
  }
 } else {
  if(i6<3.975629806518555e-05){
   if(i10<0.9897894859313965){
    if(i45<0.0018888413906097412){
     s0+=15.0;
     s1+=26.0;
    } else {
     s0+=5.0;
     s1+=236.0;
    }
   } else {
    if(i2<0.1046503484249115){
     s0+=701.0;
     s1+=338.0;
    } else {
     s0+=153.0;
     s1+=661.0;
    }
   }
  } else {
   if(i6<6.192922592163086e-05){
    if(i1<0.10158544778823853){
     s0+=136.0;
     s1+=167.0;
    } else {
     s0+=34.0;
     s1+=681.0;
    }
   } else {
    if(i26<0.9960192441940308){
     s0+=58.0;
     s1+=824.0;
    } else {
     s0+=17.0;
     s1+=8263.0;
    }
   }
  }
 }
}
if(i16<0.0007591843605041504){
 if(i0<0.08385711908340454){
  if(i7<1.0401114225387573){
   if(i69<0.0017414403846487403){
    if(i38<0.0002733728033490479){
     s0+=42999.0;
     s1+=16.0;
    } else {
     s0+=12815.0;
     s1+=284.0;
    }
   } else {
    if(i28<0.9744327068328857){
     s0+=1609.0;
     s1+=13.0;
    } else {
     s0+=1153.0;
     s1+=300.0;
    }
   }
  } else {
   if(i20<2.7120113372802734e-05){
    if(i47<-0.0009812116622924805){
     s0+=1958.0;
     s1+=675.0;
    } else {
     s0+=7993.0;
     s1+=811.0;
    }
   } else {
    if(i49<0.00035631656646728516){
     s0+=100.0;
     s1+=336.0;
    } else {
     s0+=269.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i17<0.005692002829164267){
   if(i49<0.017257511615753174){
    if(i19<0.998519778251648){
     s0+=260.0;
     s1+=11.0;
    } else {
     s0+=298.0;
     s1+=1353.0;
    }
   } else {
    if(i0<0.13356256484985352){
     s0+=475.0;
     s1+=8.0;
    } else {
     s0+=335.0;
     s1+=276.0;
    }
   }
  } else {
   if(i9<1.0971465110778809){
    if(i49<0.024980932474136353){
     s0+=65.0;
     s1+=1013.0;
    } else {
     s0+=79.0;
     s1+=81.0;
    }
   } else {
    if(i13<-0.0005137622356414795){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=1922.0;
    }
   }
  }
 }
} else {
 if(i16<0.0012113451957702637){
  if(i9<1.03879976272583){
   if(i37<0.00021910667419433594){
    if(i29<1.1386182308197021){
     s0+=24.0;
     s1+=34.0;
    } else {
     s0+=382.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i30<0.008157391101121902){
    if(i32<1.1386182308197021){
     s0+=26.0;
     s1+=79.0;
    } else {
     s0+=145.0;
     s1+=9.0;
    }
   } else {
    if(i5<-2.351109651499428e-05){
     s0+=12.0;
     s1+=800.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i5<-4.353338590590283e-05){
   if(i51<0.0001888184924609959){
    s0+=34.0;
   } else {
    if(i68<1.0044820308685303){
     s0+=21.0;
     s1+=9004.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  } else {
   if(i8<1.0018727779388428){
    s1+=19.0;
   } else {
    if(i15<0.0002168416976928711){
     s0+=68.0;
     s1+=8.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i8<1.0024561882019043){
 if(i23<1.0398095846176147){
  if(i62<0.04625306278467178){
   if(i57<-0.002880662679672241){
    if(i27<1.128363013267517){
     s0+=91.0;
     s1+=182.0;
    } else {
     s0+=127.0;
     s1+=10.0;
    }
   } else {
    if(i0<0.08468303084373474){
     s0+=55794.0;
     s1+=427.0;
    } else {
     s0+=46.0;
     s1+=261.0;
    }
   }
  } else {
   if(i3<0.0686262845993042){
    if(i29<1.1860926151275635){
     s0+=3231.0;
     s1+=1039.0;
    } else {
     s0+=6985.0;
     s1+=227.0;
    }
   } else {
    if(i39<0.0004815777065232396){
     s0+=44.0;
     s1+=5.0;
    } else {
     s0+=110.0;
     s1+=636.0;
    }
   }
  }
 } else {
  if(i30<0.040469925850629807){
   if(i3<0.06353157758712769){
    if(i14<1.0012767314910889){
     s0+=2146.0;
     s1+=222.0;
    } else {
     s0+=189.0;
     s1+=173.0;
    }
   } else {
    if(i40<0.04662293195724487){
     s0+=67.0;
     s1+=537.0;
    } else {
     s0+=1788.0;
     s1+=1066.0;
    }
   }
  } else {
   if(i6<-9.745359420776367e-05){
    if(i51<0.017175592482089996){
     s0+=41.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i16<-0.0050661563873291016){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=30.0;
     s1+=1032.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022073215804994106){
  if(i19<1.0020978450775146){
   if(i53<0.9999213218688965){
    s1+=39.0;
   } else {
    if(i42<-1.526416599517688e-05){
     s1+=34.0;
    } else {
     s0+=228.0;
    }
   }
  } else {
   if(i16<0.0011751651763916016){
    s0+=1.0;
   } else {
    s1+=124.0;
   }
  }
 } else {
  if(i4<0.0012927651405334473){
   if(i19<1.0022687911987305){
    if(i6<3.266334533691406e-05){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=13.0;
     s1+=1580.0;
    }
   } else {
    if(i0<0.1320573389530182){
     s0+=127.0;
     s1+=374.0;
    } else {
     s0+=2.0;
     s1+=403.0;
    }
   }
  } else {
   if(i8<1.0045008659362793){
    if(i38<0.011799726635217667){
     s0+=16.0;
     s1+=23.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i52<0.0003161479253321886){
     s0+=20.0;
     s1+=8672.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i0<0.08144927024841309){
 if(i4<0.0006017684936523438){
  if(i69<0.0015179489273577929){
   if(i0<0.06972727179527283){
    if(i24<1.0470306873321533){
     s0+=52039.0;
     s1+=116.0;
    } else {
     s0+=8601.0;
     s1+=545.0;
    }
   } else {
    if(i29<1.2335381507873535){
     s0+=654.0;
     s1+=321.0;
    } else {
     s0+=787.0;
     s1+=15.0;
    }
   }
  } else {
   if(i31<1.185624122619629){
    if(i32<1.0703742504119873){
     s0+=1413.0;
    } else {
     s0+=1269.0;
     s1+=850.0;
    }
   } else {
    if(i6<1.710653305053711e-05){
     s0+=3900.0;
     s1+=135.0;
    } else {
     s0+=170.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i14<1.0048996210098267){
   if(i69<0.0020070516038686037){
    if(i17<0.005366865545511246){
     s0+=177.0;
     s1+=7.0;
    } else {
     s0+=50.0;
     s1+=50.0;
    }
   } else {
    if(i29<1.5876636505126953){
     s0+=23.0;
     s1+=223.0;
    } else {
     s0+=37.0;
     s1+=18.0;
    }
   }
  } else {
   if(i20<1.5795230865478516e-05){
    if(i67<1.0102593898773193){
     s1+=14.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i51<0.00014213877147994936){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=604.0;
    }
   }
  }
 }
} else {
 if(i35<0.006125407759100199){
  if(i34<0.9989747405052185){
   if(i11<0.9956526160240173){
    s0+=381.0;
   } else {
    if(i42<-8.249337042798288e-06){
     s1+=7.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i54<0.004225939512252808){
    if(i40<0.0589241087436676){
     s0+=63.0;
     s1+=3184.0;
    } else {
     s0+=317.0;
     s1+=750.0;
    }
   } else {
    if(i0<0.12954503297805786){
     s0+=523.0;
     s1+=76.0;
    } else {
     s0+=305.0;
     s1+=637.0;
    }
   }
  }
 } else {
  if(i24<1.0771137475967407){
   if(i67<0.9979076385498047){
    if(i41<0.006554172839969397){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=73.0;
   }
  } else {
   if(i25<0.015401978977024555){
    if(i68<1.0008400678634644){
     s0+=15.0;
     s1+=457.0;
    } else {
     s0+=58.0;
     s1+=16.0;
    }
   } else {
    if(i58<0.0001422118511982262){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=9135.0;
    }
   }
  }
 }
}
if(i16<0.0007591843605041504){
 if(i8<1.0023548603057861){
  if(i9<1.0433766841888428){
   if(i3<0.07592415809631348){
    if(i59<0.008289413526654243){
     s0+=62584.0;
     s1+=1163.0;
    } else {
     s0+=1340.0;
     s1+=327.0;
    }
   } else {
    if(i8<0.9955969452857971){
     s0+=93.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=269.0;
    }
   }
  } else {
   if(i39<0.0057649509981274605){
    if(i0<0.09232509136199951){
     s0+=4461.0;
     s1+=818.0;
    } else {
     s0+=943.0;
     s1+=1360.0;
    }
   } else {
    if(i53<1.0003409385681152){
     s0+=257.0;
     s1+=1178.0;
    } else {
     s0+=370.0;
     s1+=58.0;
    }
   }
  }
 } else {
  if(i17<0.004703286103904247){
   if(i68<1.0004498958587646){
    if(i31<1.2524442672729492){
     s0+=1.0;
     s1+=73.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i57<-0.0026880502700805664){
     s1+=4.0;
    } else {
     s0+=101.0;
     s1+=5.0;
    }
   }
  } else {
   if(i53<1.000780463218689){
    if(i17<0.00813327170908451){
     s0+=85.0;
     s1+=406.0;
    } else {
     s0+=25.0;
     s1+=1510.0;
    }
   } else {
    if(i39<0.015827635303139687){
     s0+=14.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i7<1.041273832321167){
  if(i5<-6.456083065131679e-05){
   if(i68<0.9985544085502625){
    s0+=4.0;
   } else {
    s1+=50.0;
   }
  } else {
   if(i42<-1.4765035302843899e-05){
    s1+=8.0;
   } else {
    s0+=362.0;
   }
  }
 } else {
  if(i1<0.06668129563331604){
   if(i29<1.1386182308197021){
    s1+=226.0;
   } else {
    if(i20<2.4974346160888672e-05){
     s0+=282.0;
     s1+=6.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i6<-8.672475814819336e-06){
    if(i54<0.002305448055267334){
     s1+=2.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i8<1.0038886070251465){
     s0+=55.0;
     s1+=1166.0;
    } else {
     s0+=1.0;
     s1+=8489.0;
    }
   }
  }
 }
}
if(i6<3.641843795776367e-05){
 if(i29<1.0856719017028809){
  s0+=38198.0;
 } else {
  if(i7<1.0452277660369873){
   if(i36<0.0006643217639066279){
    if(i47<-0.0009951293468475342){
     s0+=470.0;
     s1+=505.0;
    } else {
     s0+=5659.0;
     s1+=348.0;
    }
   } else {
    if(i0<0.08572125434875488){
     s0+=18474.0;
     s1+=166.0;
    } else {
     s0+=47.0;
     s1+=87.0;
    }
   }
  } else {
   if(i0<0.08534649014472961){
    if(i32<1.1037919521331787){
     s0+=663.0;
     s1+=915.0;
    } else {
     s0+=5477.0;
     s1+=400.0;
    }
   } else {
    if(i48<0.06985971331596375){
     s0+=329.0;
     s1+=2315.0;
    } else {
     s0+=813.0;
     s1+=784.0;
    }
   }
  }
 }
} else {
 if(i27<1.0590304136276245){
  s0+=407.0;
 } else {
  if(i4<0.0009592175483703613){
   if(i30<0.01021878607571125){
    if(i29<1.2392117977142334){
     s1+=218.0;
    } else {
     s0+=270.0;
     s1+=46.0;
    }
   } else {
    if(i17<0.0031363556627184153){
     s0+=37.0;
     s1+=44.0;
    } else {
     s0+=75.0;
     s1+=1442.0;
    }
   }
  } else {
   if(i52<0.0001043239317368716){
    if(i16<-0.00016063451766967773){
     s0+=3.0;
     s1+=90.0;
    } else {
     s1+=8376.0;
    }
   } else {
    if(i5<-0.0001657649700064212){
     s1+=929.0;
    } else {
     s0+=89.0;
     s1+=576.0;
    }
   }
  }
 }
}
if(i2<0.07663598656654358){
 if(i49<-0.005241692066192627){
  if(i42<-2.0059629605384544e-05){
   if(i4<0.000265657901763916){
    if(i65<0.008333640173077583){
     s0+=532.0;
     s1+=46.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   } else {
    if(i29<1.5682398080825806){
     s0+=20.0;
     s1+=458.0;
    } else {
     s0+=44.0;
     s1+=60.0;
    }
   }
  } else {
   if(i2<0.03558999300003052){
    if(i8<1.0029990673065186){
     s0+=3148.0;
     s1+=350.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i40<0.014342039823532104){
     s0+=29.0;
     s1+=216.0;
    } else {
     s0+=545.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i0<0.0796499252319336){
   if(i0<0.06436818838119507){
    if(i13<0.0006518661975860596){
     s0+=61421.0;
     s1+=657.0;
    } else {
     s0+=362.0;
     s1+=101.0;
    }
   } else {
    if(i11<1.0029819011688232){
     s0+=2852.0;
     s1+=363.0;
    } else {
     s0+=174.0;
     s1+=278.0;
    }
   }
  } else {
   if(i3<0.06973052024841309){
    if(i24<1.0452029705047607){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=258.0;
    }
   } else {
    if(i40<0.04907649755477905){
     s0+=3.0;
     s1+=36.0;
    } else {
     s0+=45.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010436773300170898){
  if(i8<0.9965636730194092){
   if(i5<-2.347785630263388e-05){
    if(i24<1.076696753501892){
     s0+=50.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=92.0;
    }
   } else {
    if(i68<0.9998834729194641){
     s0+=425.0;
     s1+=3.0;
    } else {
     s0+=97.0;
     s1+=33.0;
    }
   }
  } else {
   if(i40<0.05486595630645752){
    if(i1<0.08353996276855469){
     s0+=32.0;
     s1+=90.0;
    } else {
     s0+=6.0;
     s1+=826.0;
    }
   } else {
    if(i55<0.28360968828201294){
     s0+=791.0;
     s1+=580.0;
    } else {
     s0+=14.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i28<1.0105186700820923){
   if(i25<0.023357946425676346){
    if(i47<0.002503007650375366){
     s0+=83.0;
     s1+=508.0;
    } else {
     s0+=263.0;
     s1+=86.0;
    }
   } else {
    if(i48<0.0596393346786499){
     s0+=5.0;
     s1+=1755.0;
    } else {
     s0+=110.0;
     s1+=1212.0;
    }
   }
  } else {
   if(i6<3.343820571899414e-05){
    if(i20<1.138448715209961e-05){
     s0+=14.0;
     s1+=442.0;
    } else {
     s0+=36.0;
     s1+=54.0;
    }
   } else {
    if(i11<1.0091257095336914){
     s0+=7.0;
     s1+=311.0;
    } else {
     s1+=7882.0;
    }
   }
  }
 }
}
if(i3<0.07186156511306763){
 if(i4<0.0006011426448822021){
  if(i9<1.0428826808929443){
   if(i2<0.08160167932510376){
    if(i38<0.0003121616318821907){
     s0+=46197.0;
     s1+=71.0;
    } else {
     s0+=17599.0;
     s1+=1221.0;
    }
   } else {
    if(i19<0.9981670379638672){
     s0+=46.0;
    } else {
     s0+=9.0;
     s1+=190.0;
    }
   }
  } else {
   if(i15<0.0001328587532043457){
    if(i30<0.01385183073580265){
     s0+=3085.0;
     s1+=388.0;
    } else {
     s0+=1644.0;
     s1+=768.0;
    }
   } else {
    if(i0<0.06395214796066284){
     s0+=43.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i38<0.0002225067000836134){
   s0+=91.0;
  } else {
   if(i14<1.0047461986541748){
    if(i39<0.0025258255191147327){
     s1+=174.0;
    } else {
     s0+=195.0;
     s1+=255.0;
    }
   } else {
    if(i37<0.00013759732246398926){
     s0+=37.0;
     s1+=93.0;
    } else {
     s0+=3.0;
     s1+=1460.0;
    }
   }
  }
 }
} else {
 if(i12<1.002943992614746){
  if(i43<0.042174577713012695){
   if(i2<0.08244869112968445){
    if(i45<0.06120207905769348){
     s0+=11.0;
     s1+=123.0;
    } else {
     s0+=72.0;
     s1+=33.0;
    }
   } else {
    if(i61<0.00013808727089781314){
     s0+=19.0;
     s1+=73.0;
    } else {
     s0+=19.0;
     s1+=1755.0;
    }
   }
  } else {
   if(i5<-2.365399632253684e-05){
    if(i2<0.118384450674057){
     s0+=343.0;
     s1+=245.0;
    } else {
     s0+=107.0;
     s1+=1338.0;
    }
   } else {
    if(i19<0.998839259147644){
     s0+=462.0;
     s1+=6.0;
    } else {
     s0+=866.0;
     s1+=251.0;
    }
   }
  }
 } else {
  if(i0<0.09921202063560486){
   if(i65<-0.011143306270241737){
    if(i10<0.9851536154747009){
     s1+=22.0;
    } else {
     s0+=89.0;
     s1+=6.0;
    }
   } else {
    if(i49<0.01338130235671997){
     s0+=5.0;
     s1+=139.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i5<-4.593897392624058e-05){
    if(i65<-0.02466389909386635){
     s0+=30.0;
     s1+=2495.0;
    } else {
     s0+=5.0;
     s1+=5697.0;
    }
   } else {
    if(i67<1.0531129837036133){
     s0+=16.0;
     s1+=187.0;
    } else {
     s0+=33.0;
     s1+=22.0;
    }
   }
  }
 }
}
if(i5<-7.076597830746323e-05){
 if(i3<0.015017211437225342){
  if(i48<-0.08137309551239014){
   if(i20<2.658367156982422e-05){
    if(i9<1.0894520282745361){
     s0+=40.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    s1+=75.0;
   }
  } else {
   if(i26<0.998711347579956){
    if(i31<1.2432942390441895){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=532.0;
     s1+=4.0;
    }
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i4<-0.0001271963119506836){
   if(i30<0.032885678112506866){
    if(i66<0.0015924525214359164){
     s0+=220.0;
    } else {
     s0+=59.0;
     s1+=19.0;
    }
   } else {
    if(i8<0.9926269054412842){
     s0+=16.0;
    } else {
     s1+=181.0;
    }
   }
  } else {
   if(i1<0.09733250737190247){
    if(i54<0.002670884132385254){
     s0+=53.0;
     s1+=885.0;
    } else {
     s0+=113.0;
     s1+=7.0;
    }
   } else {
    if(i52<0.00011129568156320602){
     s1+=8572.0;
    } else {
     s0+=56.0;
     s1+=1873.0;
    }
   }
  }
 }
} else {
 if(i9<1.0410068035125732){
  if(i29<1.0856719017028809){
   s0+=37197.0;
  } else {
   if(i0<0.08468303084373474){
    if(i29<1.100313425064087){
     s0+=2389.0;
     s1+=972.0;
    } else {
     s0+=23322.0;
     s1+=285.0;
    }
   } else {
    if(i43<0.05881515145301819){
     s0+=13.0;
     s1+=405.0;
    } else {
     s0+=22.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i19<0.9987634420394897){
   if(i52<6.369499897118658e-05){
    s0+=1359.0;
   } else {
    if(i4<-0.000694960355758667){
     s0+=611.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=39.0;
    }
   }
  } else {
   if(i1<0.0897078812122345){
    if(i25<0.016913533210754395){
     s0+=3156.0;
     s1+=430.0;
    } else {
     s0+=1087.0;
     s1+=756.0;
    }
   } else {
    if(i70<1.0312533378601074){
     s0+=261.0;
     s1+=1765.0;
    } else {
     s0+=661.0;
     s1+=745.0;
    }
   }
  }
 }
}
if(i13<0.00043570995330810547){
 if(i9<1.0452215671539307){
  if(i24<1.0451585054397583){
   if(i49<-0.005851387977600098){
    if(i35<0.0003186655230820179){
     s0+=535.0;
    } else {
     s0+=270.0;
     s1+=80.0;
    }
   } else {
    if(i56<0.00027220460469834507){
     s0+=48241.0;
     s1+=40.0;
    } else {
     s0+=4718.0;
     s1+=135.0;
    }
   }
  } else {
   if(i2<0.07644954323768616){
    if(i39<0.0008581421570852399){
     s0+=3483.0;
     s1+=837.0;
    } else {
     s0+=6872.0;
     s1+=169.0;
    }
   } else {
    if(i6<-6.511807441711426e-05){
     s0+=53.0;
    } else {
     s0+=57.0;
     s1+=580.0;
    }
   }
  }
 } else {
  if(i34<0.9989444017410278){
   if(i57<0.03616967797279358){
    if(i52<0.00021343916887417436){
     s0+=1208.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i3<0.0628286600112915){
    if(i52<-2.9241815354907885e-05){
     s1+=93.0;
    } else {
     s0+=2564.0;
     s1+=750.0;
    }
   } else {
    if(i2<0.12533354759216309){
     s0+=916.0;
     s1+=746.0;
    } else {
     s0+=289.0;
     s1+=2421.0;
    }
   }
  }
 }
} else {
 if(i4<0.0006051063537597656){
  if(i7<1.1205039024353027){
   if(i14<1.0011847019195557){
    if(i0<0.10595917701721191){
     s0+=1372.0;
     s1+=138.0;
    } else {
     s0+=29.0;
     s1+=105.0;
    }
   } else {
    if(i17<0.002169595332816243){
     s0+=55.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=187.0;
    }
   }
  } else {
   if(i63<6.40532834950136e-06){
    if(i8<1.0014808177947998){
     s0+=33.0;
     s1+=5.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i28<0.9494951963424683){
     s0+=4.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i51<0.00019467777747195214){
   if(i2<0.061760127544403076){
    if(i52<5.407941443991149e-06){
     s0+=104.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i8<1.0043926239013672){
    if(i17<0.0018700012005865574){
     s0+=51.0;
    } else {
     s0+=184.0;
     s1+=1361.0;
    }
   } else {
    if(i12<0.9974284172058105){
     s0+=13.0;
     s1+=108.0;
    } else {
     s0+=24.0;
     s1+=9018.0;
    }
   }
  }
 }
}
if(i20<1.7940998077392578e-05){
 if(i45<0.06174895167350769){
  if(i69<0.001465613953769207){
   if(i18<1.007705569267273){
    if(i62<0.05080331861972809){
     s0+=54809.0;
     s1+=410.0;
    } else {
     s0+=4412.0;
     s1+=604.0;
    }
   } else {
    if(i0<0.07486772537231445){
     s0+=1306.0;
     s1+=221.0;
    } else {
     s0+=27.0;
     s1+=633.0;
    }
   }
  } else {
   if(i2<0.06633251905441284){
    if(i29<1.100754976272583){
     s0+=1818.0;
     s1+=648.0;
    } else {
     s0+=4774.0;
     s1+=223.0;
    }
   } else {
    if(i8<0.9956904649734497){
     s0+=78.0;
     s1+=3.0;
    } else {
     s0+=34.0;
     s1+=864.0;
    }
   }
  }
 } else {
  if(i0<0.10033339262008667){
   if(i25<0.0294500719755888){
    if(i5<-4.3662563257385045e-05){
     s0+=27.0;
     s1+=49.0;
    } else {
     s0+=1032.0;
     s1+=51.0;
    }
   } else {
    if(i55<0.09571550041437149){
     s0+=47.0;
     s1+=84.0;
    } else {
     s0+=125.0;
     s1+=11.0;
    }
   }
  } else {
   if(i40<0.07720035314559937){
    if(i5<3.09629558614688e-06){
     s0+=25.0;
     s1+=1250.0;
    } else {
     s0+=25.0;
     s1+=24.0;
    }
   } else {
    if(i39<0.003823497798293829){
     s0+=630.0;
     s1+=181.0;
    } else {
     s0+=130.0;
     s1+=1012.0;
    }
   }
  }
 }
} else {
 if(i4<0.0006496906280517578){
  if(i23<1.0978665351867676){
   if(i4<0.00015908479690551758){
    if(i30<0.03831646218895912){
     s0+=946.0;
     s1+=66.0;
    } else {
     s0+=15.0;
     s1+=55.0;
    }
   } else {
    if(i27<1.0605937242507935){
     s0+=177.0;
    } else {
     s0+=380.0;
     s1+=404.0;
    }
   }
  } else {
   if(i35<0.00317954458296299){
    s0+=16.0;
   } else {
    if(i58<0.0011510306503623724){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=267.0;
    }
   }
  }
 } else {
  if(i51<0.0001906321558635682){
   if(i17<0.001814122311770916){
    s0+=63.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i16<6.92605972290039e-05){
    if(i24<1.1258437633514404){
     s0+=167.0;
     s1+=296.0;
    } else {
     s0+=34.0;
     s1+=924.0;
    }
   } else {
    if(i24<1.036005973815918){
     s0+=4.0;
    } else {
     s0+=13.0;
     s1+=8840.0;
    }
   }
  }
 }
}
if(i2<0.0806303322315216){
 if(i10<1.0077202320098877){
  if(i8<1.0024971961975098){
   if(i59<0.008160978555679321){
    if(i24<1.0451585054397583){
     s0+=53547.0;
     s1+=207.0;
    } else {
     s0+=12062.0;
     s1+=1045.0;
    }
   } else {
    if(i2<0.04087090492248535){
     s0+=2337.0;
     s1+=393.0;
    } else {
     s0+=263.0;
     s1+=279.0;
    }
   }
  } else {
   if(i36<0.009579259902238846){
    if(i51<0.0001908418198581785){
     s0+=29.0;
    } else {
     s0+=34.0;
     s1+=439.0;
    }
   } else {
    if(i7<1.1275560855865479){
     s0+=55.0;
    } else {
     s1+=24.0;
    }
   }
  }
 } else {
  if(i20<2.1755695343017578e-05){
   if(i41<0.0017636602278798819){
    if(i17<0.000954092014580965){
     s0+=50.0;
     s1+=27.0;
    } else {
     s0+=48.0;
     s1+=381.0;
    }
   } else {
    if(i42<-1.4937237210688181e-05){
     s0+=22.0;
     s1+=33.0;
    } else {
     s0+=882.0;
     s1+=20.0;
    }
   }
  } else {
   if(i8<1.0032826662063599){
    if(i29<1.4186418056488037){
     s1+=6.0;
    } else {
     s0+=56.0;
     s1+=5.0;
    }
   } else {
    if(i66<-0.0005964055890217423){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=574.0;
    }
   }
  }
 }
} else {
 if(i6<3.7550926208496094e-06){
  if(i19<0.9985276460647583){
   if(i56<0.0011775658931583166){
    if(i8<0.9969923496246338){
     s0+=435.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=10.0;
    }
   } else {
    if(i37<-0.0003930628299713135){
     s0+=3.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i2<0.12500733137130737){
    if(i60<0.030279874801635742){
     s0+=111.0;
     s1+=440.0;
    } else {
     s0+=348.0;
     s1+=131.0;
    }
   } else {
    if(i17<0.0016849820967763662){
     s0+=131.0;
     s1+=69.0;
    } else {
     s0+=34.0;
     s1+=826.0;
    }
   }
  }
 } else {
  if(i30<0.025930769741535187){
   if(i49<0.022199004888534546){
    if(i0<0.09642145037651062){
     s0+=95.0;
     s1+=298.0;
    } else {
     s0+=74.0;
     s1+=2917.0;
    }
   } else {
    if(i2<0.14771682024002075){
     s0+=252.0;
     s1+=6.0;
    } else {
     s0+=55.0;
     s1+=206.0;
    }
   }
  } else {
   if(i73<7.921874930616468e-05){
    if(i15<2.6702880859375e-05){
     s0+=34.0;
     s1+=220.0;
    } else {
     s1+=1231.0;
    }
   } else {
    s1+=7475.0;
   }
  }
 }
}
if(i0<0.08319085836410522){
 if(i27<1.0557184219360352){
  if(i51<0.00047700779396109283){
   s0+=41882.0;
  } else {
   if(i51<0.00047715200344100595){
    s1+=3.0;
   } else {
    s0+=1303.0;
   }
  }
 } else {
  if(i13<0.0005357861518859863){
   if(i31<1.103413462638855){
    if(i12<1.0005719661712646){
     s0+=4827.0;
     s1+=1119.0;
    } else {
     s0+=133.0;
     s1+=570.0;
    }
   } else {
    if(i59<0.013110877014696598){
     s0+=19235.0;
     s1+=230.0;
    } else {
     s0+=1224.0;
     s1+=220.0;
    }
   }
  } else {
   if(i6<3.713369369506836e-05){
    if(i29<1.3482874631881714){
     s1+=31.0;
    } else {
     s0+=697.0;
     s1+=76.0;
    }
   } else {
    if(i48<0.033998697996139526){
     s0+=114.0;
     s1+=828.0;
    } else {
     s0+=58.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985139966011047){
  if(i29<1.4901387691497803){
   if(i72<-3.4609524846018758e-06){
    if(i11<0.9953194856643677){
     s0+=14.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=402.0;
   }
  } else {
   if(i24<1.0711722373962402){
    s0+=26.0;
   } else {
    if(i20<-2.1070241928100586e-05){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i11<1.00637948513031){
   if(i41<0.00845630094408989){
    if(i48<0.054621219635009766){
     s0+=229.0;
     s1+=1959.0;
    } else {
     s0+=831.0;
     s1+=637.0;
    }
   } else {
    if(i30<0.04717828333377838){
     s0+=61.0;
     s1+=504.0;
    } else {
     s0+=3.0;
     s1+=1353.0;
    }
   }
  } else {
   if(i8<1.0006685256958008){
    if(i52<2.714308720896952e-06){
     s0+=55.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=115.0;
    }
   } else {
    if(i2<0.09771311283111572){
     s0+=28.0;
     s1+=661.0;
    } else {
     s0+=10.0;
     s1+=8776.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i8<1.0024741888046265){
  if(i0<0.081397145986557){
   if(i7<1.0398929119110107){
    if(i55<0.019961902871727943){
     s0+=47805.0;
     s1+=147.0;
    } else {
     s0+=10722.0;
     s1+=356.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=3040.0;
     s1+=886.0;
    } else {
     s0+=6728.0;
     s1+=425.0;
    }
   }
  } else {
   if(i43<0.05202585458755493){
    if(i36<0.00044872204307466745){
     s0+=134.0;
     s1+=8.0;
    } else {
     s0+=97.0;
     s1+=1453.0;
    }
   } else {
    if(i39<0.006508276332169771){
     s0+=991.0;
     s1+=311.0;
    } else {
     s0+=80.0;
     s1+=314.0;
    }
   }
  }
 } else {
  if(i3<0.032679975032806396){
   if(i33<0.00020209526701364666){
    if(i0<0.045051127672195435){
     s0+=30.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i53<1.0007658004760742){
     s0+=24.0;
     s1+=145.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i61<0.0001695139944786206){
    if(i50<4.797126166522503e-06){
     s0+=29.0;
     s1+=19.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i17<0.0019341364968568087){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=55.0;
     s1+=1850.0;
    }
   }
  }
 }
} else {
 if(i15<6.979703903198242e-05){
  if(i2<0.10595828294754028){
   if(i31<1.1070735454559326){
    if(i24<1.0736396312713623){
     s1+=78.0;
    } else {
     s0+=63.0;
     s1+=48.0;
    }
   } else {
    if(i61<0.0006071623065508902){
     s0+=677.0;
     s1+=32.0;
    } else {
     s0+=44.0;
     s1+=110.0;
    }
   }
  } else {
   if(i19<0.9988816976547241){
    s0+=29.0;
   } else {
    if(i60<0.04669666290283203){
     s0+=48.0;
     s1+=1084.0;
    } else {
     s0+=131.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i2<0.05983173847198486){
   if(i17<0.0029118102975189686){
    if(i36<0.0008767122053541243){
     s0+=2.0;
     s1+=99.0;
    } else {
     s0+=233.0;
     s1+=5.0;
    }
   } else {
    if(i4<-2.2202730178833008e-05){
     s0+=2.0;
    } else {
     s1+=323.0;
    }
   }
  } else {
   if(i6<5.608797073364258e-05){
    if(i50<-0.00015064103354234248){
     s0+=60.0;
     s1+=1226.0;
    } else {
     s0+=41.0;
     s1+=13.0;
    }
   } else {
    if(i42<-1.3800950910081156e-05){
     s1+=7946.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i1<0.08546507358551025){
  if(i55<0.018743878230452538){
   if(i5<-4.097144847037271e-05){
    if(i34<0.999495267868042){
     s0+=376.0;
     s1+=1.0;
    } else {
     s0+=169.0;
     s1+=149.0;
    }
   } else {
    if(i21<0.9721564054489136){
     s0+=36.0;
     s1+=42.0;
    } else {
     s0+=50869.0;
     s1+=300.0;
    }
   }
  } else {
   if(i14<0.9947932958602905){
    if(i71<1.0172321796417236){
     s0+=10881.0;
     s1+=212.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i36<0.00031471456168219447){
     s0+=1896.0;
    } else {
     s0+=4505.0;
     s1+=1442.0;
    }
   }
  }
 } else {
  if(i5<-1.2280826922506094e-05){
   if(i29<1.2604451179504395){
    if(i24<1.0494716167449951){
     s0+=26.0;
     s1+=7.0;
    } else {
     s0+=51.0;
     s1+=1688.0;
    }
   } else {
    if(i3<0.11696702241897583){
     s0+=396.0;
     s1+=236.0;
    } else {
     s0+=142.0;
     s1+=1089.0;
    }
   }
  } else {
   if(i53<0.9995752573013306){
    s0+=516.0;
   } else {
    if(i43<0.04149651527404785){
     s0+=33.0;
     s1+=191.0;
    } else {
     s0+=531.0;
     s1+=126.0;
    }
   }
  }
 }
} else {
 if(i42<-1.0146737622562796e-05){
  if(i16<0.001430511474609375){
   if(i17<0.0022552143782377243){
    if(i68<0.9992548227310181){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=178.0;
     s1+=8.0;
    }
   } else {
    if(i71<0.994635820388794){
     s0+=24.0;
    } else {
     s0+=232.0;
     s1+=3292.0;
    }
   }
  } else {
   s1+=8365.0;
  }
 } else {
  if(i28<1.0147459506988525){
   if(i1<0.11137369275093079){
    if(i71<1.0023250579833984){
     s0+=172.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   s1+=50.0;
  }
 }
}
if(i8<1.0024912357330322){
 if(i9<1.0451873540878296){
  if(i3<0.08106386661529541){
   if(i57<-0.00232502818107605){
    if(i2<0.056397706270217896){
     s0+=4581.0;
     s1+=552.0;
    } else {
     s0+=210.0;
     s1+=321.0;
    }
   } else {
    if(i9<1.0375802516937256){
     s0+=56862.0;
     s1+=455.0;
    } else {
     s0+=3442.0;
     s1+=402.0;
    }
   }
  } else {
   if(i5<-9.813345968723297e-06){
    if(i47<0.003474026918411255){
     s0+=18.0;
     s1+=256.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i23<1.028501272201538){
     s1+=17.0;
    } else {
     s0+=36.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i4<0.0001366138458251953){
   if(i31<1.3685884475708008){
    if(i0<0.08242163062095642){
     s0+=3532.0;
     s1+=403.0;
    } else {
     s0+=1014.0;
     s1+=1150.0;
    }
   } else {
    if(i1<0.09981465339660645){
     s0+=162.0;
     s1+=43.0;
    } else {
     s0+=2.0;
     s1+=378.0;
    }
   }
  } else {
   if(i53<0.9998605251312256){
    if(i30<0.0019293506629765034){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=28.0;
     s1+=1013.0;
    }
   } else {
    if(i1<0.11372393369674683){
     s0+=813.0;
     s1+=327.0;
    } else {
     s0+=174.0;
     s1+=581.0;
    }
   }
  }
 }
} else {
 if(i0<0.06512784957885742){
  if(i37<0.00017854571342468262){
   if(i48<-0.032444536685943604){
    s1+=44.0;
   } else {
    if(i46<-0.0024518966674804688){
     s0+=8.0;
     s1+=8.0;
    } else {
     s0+=135.0;
     s1+=4.0;
    }
   }
  } else {
   if(i16<-0.002607583999633789){
    s0+=12.0;
   } else {
    if(i14<1.0030052661895752){
     s0+=40.0;
     s1+=102.0;
    } else {
     s0+=9.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i30<0.01647692173719406){
   if(i65<-0.029819509014487267){
    if(i72<-1.2549330676847603e-05){
     s1+=15.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i16<-6.0677528381347656e-05){
     s0+=37.0;
     s1+=40.0;
    } else {
     s0+=35.0;
     s1+=1683.0;
    }
   }
  } else {
   if(i5<-5.850264278706163e-05){
    if(i16<-0.0008549094200134277){
     s0+=4.0;
     s1+=315.0;
    } else {
     s1+=8433.0;
    }
   } else {
    if(i2<0.06665170192718506){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=137.0;
    }
   }
  }
 }
}
if(i5<-6.811650382587686e-05){
 if(i63<3.4015065466519445e-05){
  if(i19<0.9980071187019348){
   s0+=166.0;
  } else {
   if(i2<0.016843050718307495){
    if(i41<0.01153847761452198){
     s0+=38.0;
     s1+=71.0;
    } else {
     s0+=121.0;
     s1+=9.0;
    }
   } else {
    if(i15<6.258487701416016e-06){
     s0+=202.0;
     s1+=1449.0;
    } else {
     s0+=5.0;
     s1+=10134.0;
    }
   }
  }
 } else {
  if(i2<0.0927293598651886){
   if(i59<0.015193509869277477){
    if(i31<1.2675615549087524){
     s0+=7.0;
     s1+=9.0;
    } else {
     s0+=643.0;
     s1+=2.0;
    }
   } else {
    if(i45<0.013944029808044434){
     s0+=58.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   }
  } else {
   if(i51<0.004166479222476482){
    if(i60<0.0368635356426239){
     s1+=17.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    s1+=217.0;
   }
  }
 }
} else {
 if(i44<0.02652313932776451){
  if(i26<1.0077769756317139){
   if(i67<0.9707845449447632){
    if(i20<-9.953975677490234e-06){
     s0+=179.0;
     s1+=9.0;
    } else {
     s0+=116.0;
     s1+=170.0;
    }
   } else {
    if(i57<-0.0027008652687072754){
     s0+=460.0;
     s1+=192.0;
    } else {
     s0+=56757.0;
     s1+=583.0;
    }
   }
  } else {
   if(i9<1.083398699760437){
    if(i53<0.9999220371246338){
     s0+=73.0;
     s1+=506.0;
    } else {
     s0+=203.0;
     s1+=239.0;
    }
   } else {
    if(i18<1.0445232391357422){
     s0+=199.0;
     s1+=36.0;
    } else {
     s0+=8.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i7<1.0401077270507812){
   if(i15<-0.0002903938293457031){
    if(i54<-0.006175249814987183){
     s0+=32.0;
     s1+=5.0;
    } else {
     s0+=4294.0;
     s1+=9.0;
    }
   } else {
    if(i7<1.0348410606384277){
     s0+=2222.0;
     s1+=206.0;
    } else {
     s0+=343.0;
     s1+=190.0;
    }
   }
  } else {
   if(i25<0.024364694952964783){
    if(i1<0.07526469230651855){
     s0+=2522.0;
     s1+=453.0;
    } else {
     s0+=759.0;
     s1+=753.0;
    }
   } else {
    if(i51<0.002050063107162714){
     s0+=277.0;
     s1+=1103.0;
    } else {
     s0+=1119.0;
     s1+=1014.0;
    }
   }
  }
 }
}
if(i4<0.0005483031272888184){
 if(i9<1.0452277660369873){
  if(i3<0.08108097314834595){
   if(i24<1.0451585054397583){
    if(i24<1.0406817197799683){
     s0+=49402.0;
     s1+=105.0;
    } else {
     s0+=4429.0;
     s1+=111.0;
    }
   } else {
    if(i33<0.00021301372908055782){
     s0+=4880.0;
     s1+=242.0;
    } else {
     s0+=6109.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i19<0.9981733560562134){
    if(i47<0.001417994499206543){
     s0+=24.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i0<0.09510380029678345){
     s0+=31.0;
     s1+=45.0;
    } else {
     s0+=4.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i2<0.09244713187217712){
   if(i35<0.0011285454966127872){
    if(i30<0.011841852217912674){
     s0+=1213.0;
     s1+=229.0;
    } else {
     s0+=56.0;
     s1+=447.0;
    }
   } else {
    if(i31<1.4303699731826782){
     s0+=3181.0;
     s1+=316.0;
    } else {
     s0+=84.0;
     s1+=68.0;
    }
   }
  } else {
   if(i35<0.006140701472759247){
    if(i45<0.08164846897125244){
     s0+=53.0;
     s1+=863.0;
    } else {
     s0+=916.0;
     s1+=485.0;
    }
   } else {
    if(i24<1.0790610313415527){
     s0+=18.0;
    } else {
     s0+=43.0;
     s1+=1109.0;
    }
   }
  }
 }
} else {
 if(i8<0.9997943639755249){
  s0+=164.0;
 } else {
  if(i30<0.01686345785856247){
   if(i4<0.0010057687759399414){
    if(i31<1.1819204092025757){
     s0+=29.0;
     s1+=507.0;
    } else {
     s0+=298.0;
     s1+=92.0;
    }
   } else {
    if(i55<0.15609076619148254){
     s0+=34.0;
     s1+=1536.0;
    } else {
     s0+=36.0;
     s1+=42.0;
    }
   }
  } else {
   if(i8<1.0023527145385742){
    if(i68<0.9975166320800781){
     s0+=7.0;
    } else {
     s0+=27.0;
     s1+=370.0;
    }
   } else {
    if(i16<-0.003142833709716797){
     s0+=5.0;
     s1+=22.0;
    } else {
     s0+=9.0;
     s1+=9199.0;
    }
   }
  }
 }
}
if(i0<0.08532509207725525){
 if(i5<-4.987316424376331e-05){
  if(i14<1.0012224912643433){
   if(i4<0.0003708004951477051){
    if(i9<1.0855454206466675){
     s0+=1866.0;
     s1+=137.0;
    } else {
     s0+=8.0;
     s1+=47.0;
    }
   } else {
    if(i59<0.012455555610358715){
     s0+=161.0;
     s1+=44.0;
    } else {
     s0+=8.0;
     s1+=106.0;
    }
   }
  } else {
   if(i24<1.1004575490951538){
    if(i58<0.00013663721620105207){
     s0+=5.0;
    } else {
     s0+=30.0;
     s1+=677.0;
    }
   } else {
    if(i59<0.00893591158092022){
     s0+=128.0;
     s1+=15.0;
    } else {
     s0+=22.0;
     s1+=277.0;
    }
   }
  }
 } else {
  if(i7<1.0412344932556152){
   if(i49<-0.004901319742202759){
    if(i36<0.00035801256308332086){
     s0+=891.0;
    } else {
     s0+=1032.0;
     s1+=245.0;
    }
   } else {
    if(i51<0.000270473537966609){
     s0+=48544.0;
     s1+=98.0;
    } else {
     s0+=7846.0;
     s1+=294.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i5<-1.9979619537480175e-05){
     s0+=128.0;
     s1+=570.0;
    } else {
     s0+=2790.0;
     s1+=545.0;
    }
   } else {
    if(i18<0.9770655632019043){
     s0+=950.0;
     s1+=182.0;
    } else {
     s0+=5219.0;
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4603137969970703e-05){
  if(i19<0.9988715052604675){
   if(i32<1.476589322090149){
    if(i20<-1.5676021575927734e-05){
     s0+=386.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.9826464056968689){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i53<1.0002810955047607){
    s1+=5.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i10<1.0235681533813477){
   if(i43<0.05046975612640381){
    if(i21<1.033791422843933){
     s0+=61.0;
     s1+=4316.0;
    } else {
     s0+=39.0;
     s1+=197.0;
    }
   } else {
    if(i31<1.337784767150879){
     s0+=994.0;
     s1+=1096.0;
    } else {
     s0+=23.0;
     s1+=935.0;
    }
   }
  } else {
   if(i8<1.0005066394805908){
    if(i40<0.21228104829788208){
     s0+=2.0;
     s1+=141.0;
    } else {
     s0+=8.0;
     s1+=11.0;
    }
   } else {
    if(i42<-1.2631052413780708e-05){
     s1+=6893.0;
    } else {
     s0+=5.0;
     s1+=178.0;
    }
   }
  }
 }
}
if(i5<-6.907770875841379e-05){
 if(i11<0.9803391695022583){
  if(i12<1.0084322690963745){
   if(i3<0.06065240502357483){
    if(i61<0.00199949461966753){
     s0+=733.0;
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=15.0;
    }
   } else {
    if(i7<1.0798602104187012){
     s0+=16.0;
     s1+=5.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i58<0.0065041519701480865){
    if(i37<4.857778549194336e-06){
     s1+=2.0;
    } else {
     s0+=23.0;
    }
   } else {
    s1+=72.0;
   }
  }
 } else {
  if(i39<0.0005015862989239395){
   s0+=150.0;
  } else {
   if(i2<0.09131181240081787){
    if(i11<0.9986391067504883){
     s0+=241.0;
     s1+=214.0;
    } else {
     s0+=18.0;
     s1+=932.0;
    }
   } else {
    if(i15<-0.0005981922149658203){
     s0+=4.0;
    } else {
     s0+=65.0;
     s1+=10185.0;
    }
   }
  }
 }
} else {
 if(i10<1.008097529411316){
  if(i25<0.016761817038059235){
   if(i47<-0.0014255344867706299){
    if(i22<0.9875484704971313){
     s0+=1422.0;
     s1+=424.0;
    } else {
     s0+=1079.0;
     s1+=68.0;
    }
   } else {
    if(i0<0.08626386523246765){
     s0+=56516.0;
     s1+=337.0;
    } else {
     s0+=345.0;
     s1+=174.0;
    }
   }
  } else {
   if(i15<-0.00021976232528686523){
    if(i0<0.09858199954032898){
     s0+=6437.0;
     s1+=107.0;
    } else {
     s0+=169.0;
     s1+=267.0;
    }
   } else {
    if(i7<1.0348410606384277){
     s0+=1277.0;
     s1+=157.0;
    } else {
     s0+=1502.0;
     s1+=2041.0;
    }
   }
  }
 } else {
  if(i17<0.003334252629429102){
   if(i32<1.1039612293243408){
    if(i16<-0.00010010600090026855){
     s0+=36.0;
    } else {
     s0+=32.0;
     s1+=414.0;
    }
   } else {
    if(i63<1.3855270481144544e-05){
     s0+=1123.0;
     s1+=163.0;
    } else {
     s0+=8.0;
     s1+=103.0;
    }
   }
  } else {
   if(i37<-0.00012755393981933594){
    if(i42<-8.360235369764268e-06){
     s1+=10.0;
    } else {
     s0+=112.0;
     s1+=1.0;
    }
   } else {
    if(i32<1.254285216331482){
     s1+=965.0;
    } else {
     s0+=21.0;
     s1+=204.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i16<0.0011519193649291992){
  if(i4<0.000574648380279541){
   if(i0<0.06633245944976807){
    if(i66<0.0007886321400292218){
     s0+=59079.0;
     s1+=560.0;
    } else {
     s0+=6977.0;
     s1+=911.0;
    }
   } else {
    if(i60<0.021255850791931152){
     s0+=384.0;
     s1+=534.0;
    } else {
     s0+=2081.0;
     s1+=172.0;
    }
   }
  } else {
   if(i12<0.9985832571983337){
    if(i73<0.00010081536311190575){
     s1+=1.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i29<1.5876636505126953){
     s0+=118.0;
     s1+=489.0;
    } else {
     s0+=80.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i36<0.0018014563247561455){
   s1+=394.0;
  } else {
   if(i5<-7.625212310813367e-05){
    s1+=66.0;
   } else {
    if(i22<0.9829317927360535){
     s1+=2.0;
    } else {
     s0+=104.0;
    }
   }
  }
 }
} else {
 if(i6<-4.83393669128418e-05){
  if(i31<1.4303699731826782){
   if(i37<-0.00013843178749084473){
    s0+=561.0;
   } else {
    if(i43<0.04277902841567993){
     s1+=38.0;
    } else {
     s0+=65.0;
     s1+=27.0;
    }
   }
  } else {
   if(i7<1.0457030534744263){
    if(i45<0.10609588027000427){
     s0+=91.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i24<1.0718096494674683){
     s0+=7.0;
    } else {
     s1+=110.0;
    }
   }
  }
 } else {
  if(i5<-2.2300282580545172e-05){
   if(i0<0.11681726574897766){
    if(i46<0.004370927810668945){
     s0+=78.0;
     s1+=1643.0;
    } else {
     s0+=298.0;
     s1+=26.0;
    }
   } else {
    if(i31<1.0610969066619873){
     s0+=13.0;
    } else {
     s0+=161.0;
     s1+=11682.0;
    }
   }
  } else {
   if(i17<0.003556255018338561){
    if(i52<3.533470589900389e-05){
     s0+=568.0;
     s1+=85.0;
    } else {
     s0+=138.0;
     s1+=277.0;
    }
   } else {
    if(i29<1.35038423538208){
     s0+=14.0;
     s1+=265.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08370915055274963){
  if(i7<1.0401519536972046){
   if(i4<0.0005857646465301514){
    if(i47<-0.0012906789779663086){
     s0+=3871.0;
     s1+=349.0;
    } else {
     s0+=54806.0;
     s1+=198.0;
    }
   } else {
    if(i5<-4.4154156057629734e-05){
     s1+=49.0;
    } else {
     s0+=137.0;
     s1+=7.0;
    }
   }
  } else {
   if(i19<1.001848578453064){
    if(i22<0.9934602975845337){
     s0+=1042.0;
     s1+=456.0;
    } else {
     s0+=4920.0;
     s1+=316.0;
    }
   } else {
    if(i47<0.0011758208274841309){
     s0+=95.0;
     s1+=320.0;
    } else {
     s0+=68.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i4<-0.0007641017436981201){
   if(i10<0.9833871722221375){
    if(i11<0.966280460357666){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i34<0.999290406703949){
     s0+=94.0;
    } else {
     s0+=38.0;
     s1+=13.0;
    }
   }
  } else {
   if(i49<0.016388684511184692){
    if(i41<0.0004265800234861672){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=952.0;
    }
   } else {
    if(i1<0.11726027727127075){
     s0+=26.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i1<0.10013306140899658){
  if(i6<6.16908073425293e-05){
   if(i46<0.003225386142730713){
    if(i42<-7.119431757018901e-06){
     s0+=770.0;
     s1+=839.0;
    } else {
     s0+=2447.0;
     s1+=388.0;
    }
   } else {
    if(i64<-0.0042763641104102135){
     s0+=1515.0;
     s1+=10.0;
    } else {
     s0+=153.0;
     s1+=47.0;
    }
   }
  } else {
   if(i8<1.0044848918914795){
    if(i48<0.0016675889492034912){
     s0+=20.0;
     s1+=103.0;
    } else {
     s0+=48.0;
     s1+=4.0;
    }
   } else {
    if(i15<-0.00010210275650024414){
     s0+=8.0;
     s1+=26.0;
    } else {
     s0+=3.0;
     s1+=611.0;
    }
   }
  }
 } else {
  if(i61<0.00013706277240999043){
   if(i17<0.0017336398595944047){
    if(i36<0.0006424930761568248){
     s0+=265.0;
    } else {
     s0+=20.0;
     s1+=74.0;
    }
   } else {
    if(i33<0.016138482838869095){
     s0+=8.0;
     s1+=220.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i42<8.052077191678109e-07){
    if(i2<0.1220652163028717){
     s0+=291.0;
     s1+=1159.0;
    } else {
     s0+=175.0;
     s1+=10911.0;
    }
   } else {
    if(i34<0.9994370937347412){
     s0+=246.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=35.0;
    }
   }
  }
 }
}
if(i1<0.0834135115146637){
 if(i5<-4.987316424376331e-05){
  if(i8<1.0015172958374023){
   if(i9<1.0690178871154785){
    if(i26<1.0033231973648071){
     s0+=1809.0;
     s1+=92.0;
    } else {
     s0+=76.0;
     s1+=49.0;
    }
   } else {
    if(i49<0.0008320212364196777){
     s0+=1.0;
     s1+=81.0;
    } else {
     s0+=31.0;
     s1+=7.0;
    }
   }
  } else {
   if(i68<1.0018198490142822){
    if(i46<0.002054542303085327){
     s0+=66.0;
     s1+=878.0;
    } else {
     s0+=38.0;
     s1+=8.0;
    }
   } else {
    if(i69<0.004644010215997696){
     s0+=100.0;
     s1+=17.0;
    } else {
     s0+=5.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i57<-0.002239435911178589){
   if(i29<1.1991922855377197){
    if(i29<1.0840110778808594){
     s0+=1094.0;
    } else {
     s0+=553.0;
     s1+=693.0;
    }
   } else {
    if(i19<1.002000093460083){
     s0+=2926.0;
     s1+=115.0;
    } else {
     s0+=11.0;
     s1+=41.0;
    }
   }
  } else {
   if(i18<1.006317377090454){
    if(i0<0.06921336054801941){
     s0+=58553.0;
     s1+=436.0;
    } else {
     s0+=1222.0;
     s1+=175.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=733.0;
     s1+=380.0;
    } else {
     s0+=1975.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i35<0.006140701472759247){
  if(i40<0.05840221047401428){
   if(i32<1.0724589824676514){
    if(i12<0.9996601939201355){
     s0+=217.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.06577113270759583){
     s0+=50.0;
    } else {
     s0+=101.0;
     s1+=3158.0;
    }
   }
  } else {
   if(i48<0.08690142631530762){
    if(i5<-2.2964253730606288e-05){
     s0+=185.0;
     s1+=936.0;
    } else {
     s0+=530.0;
     s1+=145.0;
    }
   } else {
    if(i0<0.19162803888320923){
     s0+=532.0;
     s1+=29.0;
    } else {
     s0+=247.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i2<0.10646125674247742){
   if(i48<-0.020847320556640625){
    s1+=133.0;
   } else {
    if(i49<0.0023536086082458496){
     s0+=20.0;
     s1+=36.0;
    } else {
     s0+=132.0;
     s1+=10.0;
    }
   }
  } else {
   if(i2<0.1521974802017212){
    if(i43<0.0759851336479187){
     s0+=12.0;
     s1+=489.0;
    } else {
     s0+=29.0;
     s1+=26.0;
    }
   } else {
    if(i25<0.017862405627965927){
     s0+=6.0;
     s1+=546.0;
    } else {
     s0+=4.0;
     s1+=8212.0;
    }
   }
  }
 }
}
if(i2<0.07745698094367981){
 if(i4<0.000611722469329834){
  if(i48<-0.0270003080368042){
   if(i2<0.02709484100341797){
    if(i39<0.00042587966891005635){
     s0+=866.0;
     s1+=6.0;
    } else {
     s0+=1406.0;
     s1+=238.0;
    }
   } else {
    if(i49<0.004316926002502441){
     s0+=280.0;
     s1+=394.0;
    } else {
     s0+=157.0;
     s1+=12.0;
    }
   }
  } else {
   if(i7<1.0428826808929443){
    if(i24<1.0447232723236084){
     s0+=52085.0;
     s1+=163.0;
    } else {
     s0+=7375.0;
     s1+=433.0;
    }
   } else {
    if(i35<0.001041980693116784){
     s0+=2348.0;
     s1+=770.0;
    } else {
     s0+=4378.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i42<-1.4669136362499557e-05){
   if(i36<0.007543810643255711){
    if(i46<0.002592742443084717){
     s0+=8.0;
     s1+=925.0;
    } else {
     s0+=10.0;
     s1+=11.0;
    }
   } else {
    if(i59<0.017814695835113525){
     s0+=105.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=111.0;
    }
   }
  } else {
   if(i30<0.009043640457093716){
    if(i52<-2.97941078315489e-05){
     s1+=2.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i67<1.033022403717041){
     s1+=33.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00038570165634155273){
  if(i39<0.008514813147485256){
   if(i58<0.0002323282533325255){
    if(i50<-0.00042686754022724926){
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.9943338632583618){
     s0+=435.0;
    } else {
     s0+=60.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<1.045822024345398){
    s0+=13.0;
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i10<1.0235681533813477){
   if(i46<0.003944993019104004){
    if(i35<0.00031839869916439056){
     s0+=66.0;
     s1+=3.0;
    } else {
     s0+=245.0;
     s1+=4626.0;
    }
   } else {
    if(i12<1.0031321048736572){
     s0+=973.0;
     s1+=866.0;
    } else {
     s0+=130.0;
     s1+=1178.0;
    }
   }
  } else {
   if(i50<0.00034813868114724755){
    if(i42<-1.2572698324220255e-05){
     s1+=6843.0;
    } else {
     s0+=11.0;
     s1+=289.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i8<1.0024782419204712){
 if(i7<1.0452277660369873){
  if(i3<0.08106952905654907){
   if(i56<0.00025177226052619517){
    if(i30<0.00588791910558939){
     s0+=39187.0;
     s1+=15.0;
    } else {
     s0+=13468.0;
     s1+=231.0;
    }
   } else {
    if(i8<0.9970612525939941){
     s0+=7654.0;
     s1+=119.0;
    } else {
     s0+=1794.0;
     s1+=580.0;
    }
   }
  } else {
   if(i4<-0.0010539889335632324){
    s0+=38.0;
   } else {
    if(i19<0.997862696647644){
     s0+=9.0;
    } else {
     s0+=17.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i8<0.998103141784668){
   if(i25<0.02792692743241787){
    if(i53<0.9995808601379395){
     s0+=1227.0;
     s1+=4.0;
    } else {
     s0+=1680.0;
     s1+=191.0;
    }
   } else {
    if(i38<0.002807134762406349){
     s0+=29.0;
     s1+=122.0;
    } else {
     s0+=747.0;
     s1+=355.0;
    }
   }
  } else {
   if(i5<-3.317521623102948e-05){
    if(i3<0.07287600636482239){
     s0+=803.0;
     s1+=822.0;
    } else {
     s0+=251.0;
     s1+=1881.0;
    }
   } else {
    if(i18<0.992034912109375){
     s0+=408.0;
     s1+=555.0;
    } else {
     s0+=3428.0;
     s1+=813.0;
    }
   }
  }
 }
} else {
 if(i17<0.0023671393282711506){
  if(i29<1.2392117977142334){
   if(i35<0.0003068847581744194){
    s0+=1.0;
   } else {
    s1+=173.0;
   }
  } else {
   if(i31<1.2648893594741821){
    if(i42<-1.572370638314169e-05){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=208.0;
    }
   } else {
    s1+=57.0;
   }
  }
 } else {
  if(i28<0.9998372793197632){
   if(i25<0.03799434006214142){
    if(i68<1.000728726387024){
     s0+=44.0;
     s1+=254.0;
    } else {
     s0+=85.0;
     s1+=60.0;
    }
   } else {
    if(i56<0.00019357212295290083){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=1092.0;
    }
   }
  } else {
   if(i1<0.051503509283065796){
    if(i17<0.004150741267949343){
     s0+=14.0;
     s1+=21.0;
    } else {
     s1+=130.0;
    }
   } else {
    if(i68<1.00311279296875){
     s0+=3.0;
     s1+=9322.0;
    } else {
     s0+=15.0;
     s1+=169.0;
    }
   }
  }
 }
}
if(i2<0.08162686228752136){
 if(i9<1.0406901836395264){
  if(i4<0.0006026923656463623){
   if(i24<1.0447232723236084){
    if(i46<-0.0018989741802215576){
     s0+=591.0;
     s1+=52.0;
    } else {
     s0+=52360.0;
     s1+=125.0;
    }
   } else {
    if(i0<0.06626632809638977){
     s0+=10176.0;
     s1+=734.0;
    } else {
     s0+=382.0;
     s1+=314.0;
    }
   }
  } else {
   if(i32<1.0657644271850586){
    s0+=68.0;
   } else {
    if(i56<-2.1955627744318917e-05){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i17<0.004334593657404184){
   if(i16<0.0014495849609375){
    if(i14<1.0014796257019043){
     s0+=4619.0;
     s1+=423.0;
    } else {
     s0+=523.0;
     s1+=194.0;
    }
   } else {
    if(i15<0.0002206563949584961){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=219.0;
    }
   }
  } else {
   if(i14<0.9947199821472168){
    if(i70<0.8860676288604736){
     s0+=11.0;
     s1+=46.0;
    } else {
     s0+=604.0;
     s1+=51.0;
    }
   } else {
    if(i4<-0.0004616379737854004){
     s0+=93.0;
     s1+=14.0;
    } else {
     s0+=214.0;
     s1+=1029.0;
    }
   }
  }
 }
} else {
 if(i15<3.1054019927978516e-05){
  if(i13<-0.00038823485374450684){
   if(i37<-5.984306335449219e-05){
    if(i32<1.476589322090149){
     s0+=401.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.005204224027693272){
     s0+=10.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i52<3.3197327866218984e-05){
    if(i17<0.0018248572014272213){
     s0+=344.0;
     s1+=9.0;
    } else {
     s0+=100.0;
     s1+=201.0;
    }
   } else {
    if(i50<-0.00013211576151661575){
     s0+=222.0;
     s1+=2475.0;
    } else {
     s0+=343.0;
     s1+=735.0;
    }
   }
  }
 } else {
  if(i5<-2.4685159587534145e-05){
   if(i8<0.9981042146682739){
    s0+=29.0;
   } else {
    if(i42<-1.9584707843023352e-05){
     s0+=2.0;
     s1+=8335.0;
    } else {
     s0+=41.0;
     s1+=1652.0;
    }
   }
  } else {
   if(i24<1.2549132108688354){
    if(i45<0.12256622314453125){
     s0+=32.0;
     s1+=11.0;
    } else {
     s1+=23.0;
    }
   } else {
    s0+=65.0;
   }
  }
 }
}
if(i14<1.0039854049682617){
 if(i7<1.0452277660369873){
  if(i29<1.0850647687911987){
   s0+=37185.0;
  } else {
   if(i29<1.0929499864578247){
    if(i66<0.000468556972919032){
     s0+=1069.0;
     s1+=136.0;
    } else {
     s0+=83.0;
     s1+=465.0;
    }
   } else {
    if(i2<0.08264073729515076){
     s0+=23506.0;
     s1+=419.0;
    } else {
     s0+=71.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i26<1.0279419422149658){
   if(i8<1.0011813640594482){
    if(i52<2.3186781618278474e-05){
     s0+=3054.0;
     s1+=413.0;
    } else {
     s0+=4615.0;
     s1+=2687.0;
    }
   } else {
    if(i17<0.0033188690431416035){
     s0+=504.0;
     s1+=203.0;
    } else {
     s0+=273.0;
     s1+=1872.0;
    }
   }
  } else {
   if(i36<0.0016576414927840233){
    s0+=32.0;
   } else {
    if(i58<0.000871471012942493){
     s0+=51.0;
     s1+=2.0;
    } else {
     s1+=785.0;
    }
   }
  }
 }
} else {
 if(i7<1.0401725769042969){
  if(i3<0.0617142915725708){
   if(i15<0.00024008750915527344){
    if(i72<-5.2007194426550996e-06){
     s0+=26.0;
     s1+=22.0;
    } else {
     s0+=422.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i12<1.000327229499817){
    s0+=6.0;
   } else {
    if(i44<0.0016594281187281013){
     s0+=2.0;
    } else {
     s1+=51.0;
    }
   }
  }
 } else {
  if(i0<0.06511357426643372){
   if(i13<0.00041031837463378906){
    if(i31<1.1179488897323608){
     s0+=1.0;
     s1+=37.0;
    } else {
     s0+=198.0;
     s1+=8.0;
    }
   } else {
    if(i37<0.00013899803161621094){
     s0+=9.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=336.0;
    }
   }
  } else {
   if(i72<1.0809425248226034e-06){
    if(i14<1.0064334869384766){
     s0+=63.0;
     s1+=974.0;
    } else {
     s0+=21.0;
     s1+=8491.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i8<1.0024800300598145){
  if(i25<0.016617346554994583){
   if(i57<-0.002594083547592163){
    if(i11<0.9844885468482971){
     s0+=989.0;
     s1+=18.0;
    } else {
     s0+=947.0;
     s1+=407.0;
    }
   } else {
    if(i16<0.001160651445388794){
     s0+=54825.0;
     s1+=288.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i14<0.9943046569824219){
    if(i2<0.09412002563476562){
     s0+=6685.0;
     s1+=74.0;
    } else {
     s0+=23.0;
     s1+=54.0;
    }
   } else {
    if(i2<0.05629351735115051){
     s0+=1739.0;
     s1+=446.0;
    } else {
     s0+=108.0;
     s1+=757.0;
    }
   }
  }
 } else {
  if(i71<1.0026869773864746){
   if(i17<0.002005344722419977){
    if(i42<-1.580043499416206e-05){
     s1+=12.0;
    } else {
     s0+=106.0;
    }
   } else {
    if(i23<1.039355993270874){
     s1+=247.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  } else {
   if(i38<0.0002615468401927501){
    s0+=6.0;
   } else {
    if(i4<0.0005159378051757812){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=518.0;
    }
   }
  }
 }
} else {
 if(i6<1.5914440155029297e-05){
  if(i41<0.010467883199453354){
   if(i2<0.07556551694869995){
    if(i19<0.9985876083374023){
     s0+=954.0;
     s1+=5.0;
    } else {
     s0+=2598.0;
     s1+=444.0;
    }
   } else {
    if(i5<-1.2689593859249726e-05){
     s0+=349.0;
     s1+=1193.0;
    } else {
     s0+=806.0;
     s1+=170.0;
    }
   }
  } else {
   if(i7<1.072493076324463){
    if(i10<0.9803353548049927){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i25<0.014303943142294884){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=484.0;
    }
   }
  }
 } else {
  if(i4<0.0008815526962280273){
   if(i13<0.00032806396484375){
    if(i5<-3.3931253710761666e-05){
     s0+=22.0;
     s1+=1029.0;
    } else {
     s0+=117.0;
     s1+=78.0;
    }
   } else {
    if(i3<0.140519380569458){
     s0+=655.0;
     s1+=583.0;
    } else {
     s0+=69.0;
     s1+=649.0;
    }
   }
  } else {
   if(i15<1.1861324310302734e-05){
    if(i1<0.1215246319770813){
     s0+=96.0;
     s1+=198.0;
    } else {
     s0+=10.0;
     s1+=581.0;
    }
   } else {
    if(i1<0.06898784637451172){
     s0+=11.0;
     s1+=170.0;
    } else {
     s0+=3.0;
     s1+=8592.0;
    }
   }
  }
 }
}
if(i3<0.07132148742675781){
 if(i8<1.0024913549423218){
  if(i35<0.0003313115448690951){
   if(i19<1.0005366802215576){
    if(i71<1.0008974075317383){
     s0+=35849.0;
    } else {
     s0+=59.0;
     s1+=2.0;
    }
   } else {
    if(i27<1.0570924282073975){
     s0+=1857.0;
    } else {
     s0+=35.0;
     s1+=35.0;
    }
   }
  } else {
   if(i0<0.07849803566932678){
    if(i36<0.0006617851322516799){
     s0+=7799.0;
     s1+=1335.0;
    } else {
     s0+=22987.0;
     s1+=542.0;
    }
   } else {
    if(i19<0.9981558918952942){
     s0+=117.0;
     s1+=2.0;
    } else {
     s0+=90.0;
     s1+=871.0;
    }
   }
  }
 } else {
  if(i13<0.0005280971527099609){
   if(i2<0.06481796503067017){
    if(i56<2.005184069275856e-05){
     s0+=140.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=47.0;
    }
   } else {
    if(i41<0.0034730921033769846){
     s1+=127.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  } else {
   if(i8<1.0041346549987793){
    if(i51<0.0001877121248980984){
     s0+=17.0;
    } else {
     s0+=55.0;
     s1+=247.0;
    }
   } else {
    if(i48<0.04258492588996887){
     s0+=19.0;
     s1+=1413.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i11<1.0076498985290527){
  if(i5<-1.269704989681486e-05){
   if(i60<0.023274123668670654){
    if(i30<0.022408243268728256){
     s0+=166.0;
     s1+=644.0;
    } else {
     s0+=21.0;
     s1+=1950.0;
    }
   } else {
    if(i17<0.007961945608258247){
     s0+=624.0;
     s1+=683.0;
    } else {
     s0+=51.0;
     s1+=801.0;
    }
   }
  } else {
   if(i46<-0.0018679797649383545){
    if(i39<0.0035033472813665867){
     s0+=49.0;
     s1+=34.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i43<0.041985273361206055){
     s0+=37.0;
     s1+=70.0;
    } else {
     s0+=1065.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i34<0.9998636245727539){
   if(i5<-2.3819648049538955e-05){
    s1+=625.0;
   } else {
    if(i29<1.2604451179504395){
     s1+=3.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i17<0.0030097542330622673){
    if(i20<1.6570091247558594e-05){
     s0+=31.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=199.0;
    }
   } else {
    if(i61<0.00023355605662800372){
     s0+=1.0;
     s1+=196.0;
    } else {
     s1+=7057.0;
    }
   }
  }
 }
}
if(i1<0.08509460091590881){
 if(i4<0.0005857646465301514){
  if(i66<0.0007881972705945373){
   if(i25<0.016616124659776688){
    if(i5<-3.983130227425136e-05){
     s0+=833.0;
     s1+=164.0;
    } else {
     s0+=55114.0;
     s1+=197.0;
    }
   } else {
    if(i31<1.1754932403564453){
     s0+=1507.0;
     s1+=674.0;
    } else {
     s0+=4244.0;
     s1+=41.0;
    }
   }
  } else {
   if(i6<-1.9609928131103516e-05){
    if(i41<0.002240807516500354){
     s0+=1156.0;
     s1+=292.0;
    } else {
     s0+=4309.0;
     s1+=71.0;
    }
   } else {
    if(i0<0.06132829189300537){
     s0+=1633.0;
     s1+=519.0;
    } else {
     s0+=131.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i42<-1.439997140550986e-05){
   if(i49<0.006999790668487549){
    if(i51<0.0024581626057624817){
     s0+=26.0;
     s1+=702.0;
    } else {
     s0+=57.0;
     s1+=244.0;
    }
   } else {
    if(i14<1.0051988363265991){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i69<0.0017925621941685677){
    if(i46<-0.0015584230422973633){
     s1+=2.0;
    } else {
     s0+=223.0;
     s1+=2.0;
    }
   } else {
    if(i30<0.00941845215857029){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4871358871459961e-05){
  if(i56<0.0010126952547580004){
   if(i10<1.0126763582229614){
    if(i5<-2.6176523533649743e-05){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=571.0;
     s1+=2.0;
    }
   } else {
    if(i31<1.255998969078064){
     s1+=4.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i50<-6.855971878394485e-05){
    s1+=13.0;
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i8<1.001499056816101){
   if(i5<-1.4224628102965653e-05){
    if(i60<0.042542099952697754){
     s0+=193.0;
     s1+=2143.0;
    } else {
     s0+=249.0;
     s1+=382.0;
    }
   } else {
    if(i21<0.9844511151313782){
     s0+=42.0;
     s1+=142.0;
    } else {
     s0+=618.0;
     s1+=201.0;
    }
   }
  } else {
   if(i5<-4.2115912947338074e-05){
    if(i1<0.13191434741020203){
     s0+=105.0;
     s1+=1311.0;
    } else {
     s0+=16.0;
     s1+=9432.0;
    }
   } else {
    if(i24<1.1100882291793823){
     s0+=6.0;
     s1+=196.0;
    } else {
     s0+=58.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i14<1.0039854049682617){
 if(i4<0.0005478262901306152){
  if(i7<1.0451740026474){
   if(i33<0.000268422591034323){
    if(i56<0.00027839187532663345){
     s0+=49291.0;
     s1+=135.0;
    } else {
     s0+=2242.0;
     s1+=145.0;
    }
   } else {
    if(i6<-5.53131103515625e-05){
     s0+=4957.0;
     s1+=39.0;
    } else {
     s0+=4910.0;
     s1+=695.0;
    }
   }
  } else {
   if(i37<-0.00013780593872070312){
    if(i30<0.0790579691529274){
     s0+=1864.0;
     s1+=63.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i45<0.0841892659664154){
     s0+=5859.0;
     s1+=2585.0;
    } else {
     s0+=646.0;
     s1+=1330.0;
    }
   }
  }
 } else {
  if(i38<0.0002692716661840677){
   s0+=184.0;
  } else {
   if(i30<0.023019200190901756){
    if(i29<1.5682398080825806){
     s0+=129.0;
     s1+=434.0;
    } else {
     s0+=116.0;
    }
   } else {
    if(i0<0.05138620734214783){
     s0+=3.0;
     s1+=40.0;
    } else {
     s0+=1.0;
     s1+=1682.0;
    }
   }
  }
 }
} else {
 if(i42<-1.4140798157313839e-05){
  if(i15<1.1622905731201172e-05){
   if(i19<1.0000789165496826){
    s0+=25.0;
   } else {
    if(i30<0.017136860638856888){
     s0+=32.0;
     s1+=36.0;
    } else {
     s0+=4.0;
     s1+=389.0;
    }
   }
  } else {
   if(i16<0.000260770320892334){
    if(i32<1.613681674003601){
     s1+=94.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    if(i26<0.9702790379524231){
     s0+=1.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=9074.0;
    }
   }
  }
 } else {
  if(i2<0.0788264274597168){
   if(i19<1.0020220279693604){
    if(i16<0.0016317367553710938){
     s0+=675.0;
     s1+=17.0;
    } else {
     s1+=14.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i5<-4.334082768764347e-05){
    s1+=350.0;
   } else {
    if(i72<-2.5109038688242435e-06){
     s0+=47.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i1<0.08355417847633362){
 if(i4<0.0006162524223327637){
  if(i1<0.06915983557701111){
   if(i59<0.008001085370779037){
    if(i49<-0.005424082279205322){
     s0+=2252.0;
     s1+=258.0;
    } else {
     s0+=60627.0;
     s1+=641.0;
    }
   } else {
    if(i6<1.1622905731201172e-05){
     s0+=2861.0;
     s1+=519.0;
    } else {
     s0+=157.0;
     s1+=177.0;
    }
   }
  } else {
   if(i41<0.00029703270411118865){
    s0+=711.0;
   } else {
    if(i43<0.025975435972213745){
     s0+=77.0;
     s1+=378.0;
    } else {
     s0+=1826.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i49<-0.005158483982086182){
   if(i15<-0.0003571510314941406){
    if(i61<0.0016374009428545833){
     s0+=23.0;
     s1+=5.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i47<0.0006403326988220215){
     s0+=17.0;
     s1+=544.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i73<0.00013565015979111195){
    if(i17<0.0019312039948999882){
     s0+=50.0;
     s1+=1.0;
    } else {
     s0+=49.0;
     s1+=325.0;
    }
   } else {
    if(i34<1.001668930053711){
     s0+=196.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i36<0.0005117163527756929){
  if(i36<0.0004476824833545834){
   if(i34<1.0003606081008911){
    if(i5<-4.507744051807094e-06){
     s0+=54.0;
     s1+=6.0;
    } else {
     s0+=408.0;
    }
   } else {
    if(i25<0.008553015999495983){
     s0+=4.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i63<6.169299922476057e-06){
    s0+=111.0;
   } else {
    if(i8<0.9958426356315613){
     s0+=4.0;
    } else {
     s1+=100.0;
    }
   }
  }
 } else {
  if(i37<-0.0001392960548400879){
   if(i17<0.005894948728382587){
    if(i51<0.0011356049217283726){
     s0+=52.0;
     s1+=20.0;
    } else {
     s0+=346.0;
     s1+=2.0;
    }
   } else {
    if(i4<-0.0008154809474945068){
     s0+=5.0;
    } else {
     s1+=94.0;
    }
   }
  } else {
   if(i1<0.12596827745437622){
    if(i60<0.03697079420089722){
     s0+=413.0;
     s1+=2274.0;
    } else {
     s0+=402.0;
     s1+=156.0;
    }
   } else {
    if(i35<0.006359488237649202){
     s0+=286.0;
     s1+=2534.0;
    } else {
     s0+=43.0;
     s1+=8993.0;
    }
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i15<0.00016164779663085938){
  if(i6<4.184246063232422e-05){
   if(i47<-0.0014188587665557861){
    if(i26<0.9700779914855957){
     s0+=2989.0;
     s1+=134.0;
    } else {
     s0+=2460.0;
     s1+=818.0;
    }
   } else {
    if(i10<1.0063942670822144){
     s0+=62278.0;
     s1+=834.0;
    } else {
     s0+=1238.0;
     s1+=300.0;
    }
   }
  } else {
   if(i49<-0.0033646225929260254){
    if(i28<1.0105324983596802){
     s0+=40.0;
     s1+=352.0;
    } else {
     s0+=18.0;
     s1+=11.0;
    }
   } else {
    if(i28<1.001828908920288){
     s0+=124.0;
     s1+=23.0;
    } else {
     s0+=52.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i8<1.004152774810791){
   if(i51<0.0003841490251943469){
    if(i19<1.0015162229537964){
     s0+=219.0;
     s1+=3.0;
    } else {
     s0+=37.0;
     s1+=21.0;
    }
   } else {
    if(i67<1.0081486701965332){
     s0+=4.0;
     s1+=75.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   }
  } else {
   s1+=403.0;
  }
 }
} else {
 if(i13<-0.00041115283966064453){
  if(i31<1.498544454574585){
   s0+=416.0;
  } else {
   if(i20<-2.5033950805664062e-05){
    s0+=11.0;
   } else {
    if(i26<0.9881563186645508){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i15<6.464123725891113e-05){
   if(i25<0.02453318051993847){
    if(i23<1.0490155220031738){
     s0+=134.0;
     s1+=515.0;
    } else {
     s0+=758.0;
     s1+=305.0;
    }
   } else {
    if(i65<-0.023825153708457947){
     s0+=219.0;
     s1+=1141.0;
    } else {
     s0+=51.0;
     s1+=2102.0;
    }
   }
  } else {
   if(i5<-2.4722245143493637e-05){
    if(i29<1.0632973909378052){
     s0+=2.0;
    } else {
     s0+=40.0;
     s1+=9939.0;
    }
   } else {
    if(i38<0.010316098108887672){
     s0+=53.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i5<-7.076778274495155e-05){
 if(i52<0.0002711188280954957){
  if(i73<0.0003307077568024397){
   if(i13<-0.0002741217613220215){
    if(i39<0.010662142187356949){
     s0+=88.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i9<1.019578218460083){
     s0+=74.0;
     s1+=95.0;
    } else {
     s0+=262.0;
     s1+=11219.0;
    }
   }
  } else {
   s0+=93.0;
  }
 } else {
  if(i7<1.1266052722930908){
   if(i10<0.9343675374984741){
    if(i3<0.023181110620498657){
     s0+=81.0;
    } else {
     s1+=50.0;
    }
   } else {
    s0+=592.0;
   }
  } else {
   if(i72<-9.929703082889318e-06){
    s1+=263.0;
   } else {
    s0+=7.0;
   }
  }
 }
} else {
 if(i22<1.0082337856292725){
  if(i25<0.022007379680871964){
   if(i20<2.390146255493164e-05){
    if(i46<-0.0016703605651855469){
     s0+=2252.0;
     s1+=442.0;
    } else {
     s0+=59133.0;
     s1+=756.0;
    }
   } else {
    if(i69<0.0013456577435135841){
     s0+=129.0;
     s1+=64.0;
    } else {
     s0+=13.0;
     s1+=126.0;
    }
   }
  } else {
   if(i15<-0.00024235248565673828){
    if(i2<0.08926630020141602){
     s0+=4395.0;
     s1+=76.0;
    } else {
     s0+=122.0;
     s1+=197.0;
    }
   } else {
    if(i13<-0.00030547380447387695){
     s0+=332.0;
     s1+=27.0;
    } else {
     s0+=679.0;
     s1+=1629.0;
    }
   }
  }
 } else {
  if(i61<0.0006473812973126769){
   if(i0<0.08542183041572571){
    if(i57<0.0041692256927490234){
     s0+=670.0;
     s1+=259.0;
    } else {
     s0+=1159.0;
     s1+=24.0;
    }
   } else {
    if(i38<0.0016916899476200342){
     s0+=24.0;
     s1+=613.0;
    } else {
     s0+=755.0;
     s1+=422.0;
    }
   }
  } else {
   if(i11<0.9985615015029907){
    if(i2<0.09363731741905212){
     s0+=286.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=142.0;
    }
   } else {
    if(i0<0.058917224407196045){
     s0+=24.0;
     s1+=29.0;
    } else {
     s0+=10.0;
     s1+=618.0;
    }
   }
  }
 }
}
if(i5<-6.939917511772364e-05){
 if(i0<0.05767613649368286){
  if(i4<0.00052642822265625){
   if(i58<0.006543789990246296){
    if(i65<0.008333640173077583){
     s0+=838.0;
     s1+=28.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   } else {
    if(i72<-1.0041359928436577e-05){
     s1+=19.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i57<0.0029217302799224854){
    if(i23<1.0320889949798584){
     s0+=25.0;
     s1+=215.0;
    } else {
     s0+=33.0;
     s1+=38.0;
    }
   } else {
    s0+=24.0;
   }
  }
 } else {
  if(i24<1.0514323711395264){
   if(i7<1.038433313369751){
    s0+=70.0;
   } else {
    if(i49<0.024358272552490234){
     s1+=8.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i28<0.996715784072876){
    if(i1<0.12127232551574707){
     s0+=143.0;
     s1+=312.0;
    } else {
     s0+=18.0;
     s1+=1384.0;
    }
   } else {
    if(i11<1.0073598623275757){
     s0+=23.0;
     s1+=916.0;
    } else {
     s0+=1.0;
     s1+=8921.0;
    }
   }
  }
 }
} else {
 if(i3<0.07075187563896179){
  if(i2<0.07539111375808716){
   if(i8<1.0024800300598145){
    if(i9<1.0401114225387573){
     s0+=61695.0;
     s1+=1012.0;
    } else {
     s0+=5846.0;
     s1+=794.0;
    }
   } else {
    if(i39<0.0020939665846526623){
     s0+=1.0;
     s1+=343.0;
    } else {
     s0+=172.0;
     s1+=33.0;
    }
   }
  } else {
   if(i12<0.9971586465835571){
    if(i37<-0.00013071298599243164){
     s0+=94.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   } else {
    if(i45<0.056432098150253296){
     s0+=9.0;
     s1+=617.0;
    } else {
     s0+=53.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i0<0.09311622381210327){
   if(i43<0.03630220890045166){
    if(i42<-7.996551403266494e-07){
     s0+=23.0;
     s1+=175.0;
    } else {
     s0+=34.0;
     s1+=7.0;
    }
   } else {
    if(i19<0.9987606406211853){
     s0+=316.0;
     s1+=4.0;
    } else {
     s0+=598.0;
     s1+=105.0;
    }
   }
  } else {
   if(i65<-0.025762077420949936){
    if(i42<-3.2340171856048983e-06){
     s0+=289.0;
     s1+=386.0;
    } else {
     s0+=461.0;
     s1+=94.0;
    }
   } else {
    if(i13<-0.0004527270793914795){
     s0+=62.0;
     s1+=1.0;
    } else {
     s0+=214.0;
     s1+=1657.0;
    }
   }
  }
 }
}
if(i8<1.0024597644805908){
 if(i7<1.0452277660369873){
  if(i0<0.08618119359016418){
   if(i46<-0.0015040040016174316){
    if(i39<0.0015072016976773739){
     s0+=1113.0;
     s1+=276.0;
    } else {
     s0+=1121.0;
     s1+=32.0;
    }
   } else {
    if(i56<0.0002458957605995238){
     s0+=51778.0;
     s1+=207.0;
    } else {
     s0+=8033.0;
     s1+=338.0;
    }
   }
  } else {
   if(i12<0.9971877336502075){
    if(i45<0.08703064918518066){
     s0+=79.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i70<1.0140016078948975){
     s0+=16.0;
     s1+=213.0;
    } else {
     s0+=21.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i4<0.00014704465866088867){
   if(i30<0.04027494043111801){
    if(i25<0.017062492668628693){
     s0+=4921.0;
     s1+=380.0;
    } else {
     s0+=2264.0;
     s1+=1650.0;
    }
   } else {
    if(i3<0.08579736948013306){
     s0+=104.0;
     s1+=86.0;
    } else {
     s0+=3.0;
     s1+=422.0;
    }
   }
  } else {
   if(i53<0.9998723268508911){
    if(i41<0.0003304696292616427){
     s0+=74.0;
    } else {
     s0+=113.0;
     s1+=1189.0;
    }
   } else {
    if(i25<0.026619162410497665){
     s0+=950.0;
     s1+=443.0;
    } else {
     s0+=165.0;
     s1+=615.0;
    }
   }
  }
 }
} else {
 if(i3<0.058167964220047){
  if(i20<1.8775463104248047e-05){
   if(i0<0.06803816556930542){
    if(i63<-2.5920485313690733e-07){
     s0+=140.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   } else {
    s1+=85.0;
   }
  } else {
   if(i14<1.0044856071472168){
    if(i30<0.01005653478205204){
     s0+=54.0;
     s1+=37.0;
    } else {
     s0+=27.0;
     s1+=210.0;
    }
   } else {
    if(i9<1.0213534832000732){
     s0+=9.0;
     s1+=26.0;
    } else {
     s0+=3.0;
     s1+=899.0;
    }
   }
  }
 } else {
  if(i15<0.00021260976791381836){
   if(i38<0.010691637173295021){
    if(i29<1.594835877418518){
     s0+=82.0;
     s1+=1165.0;
    } else {
     s0+=49.0;
     s1+=50.0;
    }
   } else {
    s1+=1125.0;
   }
  } else {
   s1+=7612.0;
  }
 }
}
if(i8<1.0024597644805908){
 if(i39<0.00038269389187917113){
  if(i21<1.008110523223877){
   if(i34<1.0003570318222046){
    if(i29<1.0856719017028809){
     s0+=34320.0;
    } else {
     s0+=2387.0;
     s1+=3.0;
    }
   } else {
    if(i55<0.018519992008805275){
     s0+=1813.0;
     s1+=9.0;
    } else {
     s0+=8.0;
     s1+=56.0;
    }
   }
  } else {
   if(i42<-8.721906851860695e-06){
    s1+=44.0;
   } else {
    s0+=66.0;
   }
  }
 } else {
  if(i9<1.0451881885528564){
   if(i51<0.00028111066785641015){
    if(i47<-0.002742767333984375){
     s1+=22.0;
    } else {
     s0+=16923.0;
     s1+=198.0;
    }
   } else {
    if(i29<1.1860926151275635){
     s0+=1536.0;
     s1+=1342.0;
    } else {
     s0+=8896.0;
     s1+=378.0;
    }
   }
  } else {
   if(i5<-2.3174310626927763e-05){
    if(i53<1.000365972518921){
     s0+=957.0;
     s1+=2989.0;
    } else {
     s0+=458.0;
     s1+=99.0;
    }
   } else {
    if(i13<-0.0003864467144012451){
     s0+=854.0;
     s1+=3.0;
    } else {
     s0+=2575.0;
     s1+=718.0;
    }
   }
  }
 }
} else {
 if(i6<6.371736526489258e-05){
  if(i17<0.001999820349738002){
   if(i39<0.0008744297083467245){
    if(i35<0.000306054629618302){
     s0+=8.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i22<0.9955432415008545){
     s1+=4.0;
    } else {
     s0+=169.0;
    }
   }
  } else {
   if(i68<1.0031594038009644){
    if(i42<-9.36179822019767e-06){
     s0+=28.0;
     s1+=1169.0;
    } else {
     s0+=17.0;
     s1+=24.0;
    }
   } else {
    if(i61<0.000966438208706677){
     s0+=32.0;
    } else {
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<9.98377799987793e-05){
   if(i36<0.009083913639187813){
    if(i1<0.059324830770492554){
     s0+=10.0;
     s1+=129.0;
    } else {
     s0+=4.0;
     s1+=1649.0;
    }
   } else {
    if(i25<0.03212527930736542){
     s0+=66.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=191.0;
    }
   }
  } else {
   if(i68<0.997565507888794){
    if(i2<0.09415742754936218){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=336.0;
    }
   } else {
    if(i8<1.0057990550994873){
     s0+=7.0;
     s1+=168.0;
    } else {
     s0+=2.0;
     s1+=7476.0;
    }
   }
  }
 }
}
if(i3<0.07126319408416748){
 if(i28<1.0074422359466553){
  if(i54<-0.002927035093307495){
   if(i12<1.0004940032958984){
    if(i17<0.006169246509671211){
     s0+=1209.0;
     s1+=165.0;
    } else {
     s0+=51.0;
     s1+=91.0;
    }
   } else {
    if(i56<0.002228669822216034){
     s0+=69.0;
     s1+=318.0;
    } else {
     s0+=83.0;
     s1+=56.0;
    }
   }
  } else {
   if(i38<0.0003320306132081896){
    if(i66<0.0007267207838594913){
     s0+=47598.0;
     s1+=77.0;
    } else {
     s0+=330.0;
     s1+=39.0;
    }
   } else {
    if(i0<0.07795795798301697){
     s0+=18188.0;
     s1+=1365.0;
    } else {
     s0+=114.0;
     s1+=568.0;
    }
   }
  }
 } else {
  if(i16<0.0011300444602966309){
   if(i1<0.07565808296203613){
    if(i17<0.0056407637894153595){
     s0+=1320.0;
     s1+=164.0;
    } else {
     s0+=1.0;
     s1+=60.0;
    }
   } else {
    if(i0<0.0756969153881073){
     s0+=23.0;
     s1+=9.0;
    } else {
     s0+=19.0;
     s1+=288.0;
    }
   }
  } else {
   if(i17<0.0018013223307207227){
    if(i1<0.0683908462524414){
     s0+=79.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   } else {
    if(i47<0.0030081868171691895){
     s0+=5.0;
     s1+=1167.0;
    } else {
     s0+=6.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985270500183105){
  if(i5<-4.0322309359908104e-05){
   if(i16<-0.00021967291831970215){
    if(i13<-0.0005575418472290039){
     s0+=10.0;
    } else {
     s1+=27.0;
    }
   } else {
    s0+=19.0;
   }
  } else {
   if(i31<1.5754120349884033){
    s0+=512.0;
   } else {
    if(i9<1.1406713724136353){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i39<0.006003519520163536){
   if(i16<0.0006978809833526611){
    if(i25<0.023548446595668793){
     s0+=984.0;
     s1+=600.0;
    } else {
     s0+=328.0;
     s1+=1288.0;
    }
   } else {
    if(i42<-1.810937988011574e-06){
     s0+=41.0;
     s1+=1300.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  } else {
   if(i16<-0.003944575786590576){
    if(i24<1.0819685459136963){
     s0+=65.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=91.0;
    }
   } else {
    if(i2<0.11058551073074341){
     s0+=90.0;
     s1+=281.0;
    } else {
     s0+=59.0;
     s1+=8976.0;
    }
   }
  }
 }
}
if(i7<1.052894115447998){
 if(i0<0.0827336311340332){
  if(i0<0.06906351447105408){
   if(i8<1.002641201019287){
    if(i66<0.0007286788895726204){
     s0+=56361.0;
     s1+=338.0;
    } else {
     s0+=5956.0;
     s1+=600.0;
    }
   } else {
    if(i58<0.000879478408023715){
     s0+=79.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=101.0;
    }
   }
  } else {
   if(i59<0.0010518365306779742){
    if(i40<0.03589427471160889){
     s0+=17.0;
     s1+=84.0;
    } else {
     s0+=1201.0;
     s1+=72.0;
    }
   } else {
    if(i29<1.3482874631881714){
     s0+=75.0;
     s1+=227.0;
    } else {
     s0+=59.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i24<1.0494635105133057){
   if(i37<-3.656744956970215e-05){
    if(i28<0.9990464448928833){
     s0+=128.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i60<0.04031682014465332){
     s0+=13.0;
     s1+=35.0;
    } else {
     s0+=49.0;
    }
   }
  } else {
   if(i8<0.9956264495849609){
    if(i35<0.007754760794341564){
     s0+=21.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i43<0.054575175046920776){
     s0+=6.0;
     s1+=628.0;
    } else {
     s0+=31.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i17<0.0045758383348584175){
  if(i5<-5.029772000852972e-05){
   if(i16<0.0014473199844360352){
    if(i10<1.008237361907959){
     s0+=167.0;
     s1+=106.0;
    } else {
     s0+=41.0;
     s1+=221.0;
    }
   } else {
    s1+=902.0;
   }
  } else {
   if(i1<0.08502998948097229){
    if(i64<-0.0032533821649849415){
     s0+=1388.0;
     s1+=13.0;
    } else {
     s0+=3064.0;
     s1+=459.0;
    }
   } else {
    if(i40<0.059805452823638916){
     s0+=109.0;
     s1+=533.0;
    } else {
     s0+=1060.0;
     s1+=349.0;
    }
   }
  }
 } else {
  if(i34<0.9989360570907593){
   if(i58<0.003107447177171707){
    if(i41<0.001701324013993144){
     s1+=1.0;
    } else {
     s0+=276.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i11<0.9920960664749146){
    if(i50<-0.00031984923407435417){
     s0+=42.0;
     s1+=654.0;
    } else {
     s0+=687.0;
     s1+=545.0;
    }
   } else {
    if(i16<-0.0008057951927185059){
     s0+=135.0;
     s1+=514.0;
    } else {
     s0+=50.0;
     s1+=10738.0;
    }
   }
  }
 }
}
if(i1<0.08414876461029053){
 if(i69<0.0019976231269538403){
  if(i7<1.0452277660369873){
   if(i4<0.0009406805038452148){
    if(i0<0.06928205490112305){
     s0+=58133.0;
     s1+=359.0;
    } else {
     s0+=1066.0;
     s1+=153.0;
    }
   } else {
    s1+=40.0;
   }
  } else {
   if(i6<1.150369644165039e-05){
    if(i31<1.1037919521331787){
     s0+=1513.0;
     s1+=351.0;
    } else {
     s0+=2686.0;
     s1+=66.0;
    }
   } else {
    if(i31<1.1411950588226318){
     s0+=178.0;
     s1+=541.0;
    } else {
     s0+=606.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i13<0.0005252361297607422){
   if(i32<1.2001045942306519){
    if(i32<1.0703742504119873){
     s0+=965.0;
    } else {
     s0+=798.0;
     s1+=679.0;
    }
   } else {
    if(i30<0.0486038438975811){
     s0+=2932.0;
     s1+=147.0;
    } else {
     s0+=7.0;
     s1+=26.0;
    }
   }
  } else {
   if(i8<1.0013072490692139){
    if(i1<0.029778748750686646){
     s0+=139.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=58.0;
    }
   } else {
    if(i71<0.9989455342292786){
     s0+=8.0;
    } else {
     s0+=53.0;
     s1+=632.0;
    }
   }
  }
 }
} else {
 if(i37<-0.00013971328735351562){
  if(i42<-1.2151159353379626e-05){
   if(i27<1.0762633085250854){
    s0+=9.0;
   } else {
    s1+=126.0;
   }
  } else {
   if(i5<-4.4379528844729066e-05){
    if(i64<-0.00375702534802258){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=703.0;
   }
  }
 } else {
  if(i2<0.1272543966770172){
   if(i23<1.0760493278503418){
    if(i65<-0.018918128684163094){
     s0+=278.0;
     s1+=59.0;
    } else {
     s0+=248.0;
     s1+=2485.0;
    }
   } else {
    if(i46<0.004959762096405029){
     s0+=75.0;
     s1+=220.0;
    } else {
     s0+=384.0;
     s1+=18.0;
    }
   }
  } else {
   if(i42<-9.323206541012041e-06){
    if(i6<3.653764724731445e-05){
     s0+=85.0;
     s1+=1034.0;
    } else {
     s0+=27.0;
     s1+=9281.0;
    }
   } else {
    if(i39<0.0011683264747262){
     s0+=139.0;
     s1+=58.0;
    } else {
     s0+=47.0;
     s1+=730.0;
    }
   }
  }
 }
}
if(i28<1.0074257850646973){
 if(i6<3.629922866821289e-05){
  if(i25<0.02166641503572464){
   if(i62<0.04729150980710983){
    if(i66<0.0007803354528732598){
     s0+=53683.0;
     s1+=277.0;
    } else {
     s0+=851.0;
     s1+=181.0;
    }
   } else {
    if(i1<0.07563716173171997){
     s0+=6261.0;
     s1+=537.0;
    } else {
     s0+=949.0;
     s1+=395.0;
    }
   }
  } else {
   if(i11<0.989464282989502){
    if(i2<0.08544737100601196){
     s0+=5362.0;
     s1+=125.0;
    } else {
     s0+=212.0;
     s1+=403.0;
    }
   } else {
    if(i29<1.0840110778808594){
     s0+=310.0;
    } else {
     s0+=841.0;
     s1+=2183.0;
    }
   }
  }
 } else {
  if(i27<1.0598008632659912){
   s0+=379.0;
  } else {
   if(i3<0.1281866431236267){
    if(i57<0.003798574209213257){
     s0+=198.0;
     s1+=1177.0;
    } else {
     s0+=115.0;
     s1+=64.0;
    }
   } else {
    if(i35<0.002894745673984289){
     s0+=9.0;
     s1+=25.0;
    } else {
     s0+=16.0;
     s1+=1558.0;
    }
   }
  }
 }
} else {
 if(i19<1.001469612121582){
  if(i0<0.07319208979606628){
   if(i35<0.001132158562541008){
    if(i53<0.9998332262039185){
     s0+=120.0;
     s1+=36.0;
    } else {
     s0+=19.0;
     s1+=106.0;
    }
   } else {
    if(i5<-6.324185960693285e-05){
     s1+=18.0;
    } else {
     s0+=1204.0;
     s1+=7.0;
    }
   }
  } else {
   if(i34<0.9989066123962402){
    s0+=48.0;
   } else {
    if(i58<0.00029894241015426815){
     s0+=145.0;
     s1+=170.0;
    } else {
     s0+=126.0;
     s1+=2068.0;
    }
   }
  }
 } else {
  if(i51<0.0002014274796238169){
   if(i72<-5.482866981765255e-06){
    s1+=9.0;
   } else {
    s0+=42.0;
   }
  } else {
   if(i6<6.574392318725586e-05){
    if(i31<1.1773569583892822){
     s0+=1.0;
     s1+=186.0;
    } else {
     s0+=84.0;
     s1+=172.0;
    }
   } else {
    if(i15<-1.4901161193847656e-05){
     s0+=3.0;
     s1+=51.0;
    } else {
     s1+=7526.0;
    }
   }
  }
 }
}
if(i2<0.07905879616737366){
 if(i24<1.0495158433914185){
  if(i47<-0.0014071166515350342){
   if(i39<0.0003769525792449713){
    if(i34<1.000351905822754){
     s0+=749.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i4<-0.0009579360485076904){
     s0+=614.0;
     s1+=2.0;
    } else {
     s0+=313.0;
     s1+=237.0;
    }
   }
  } else {
   if(i5<-3.682339593069628e-05){
    if(i36<0.0017754731234163046){
     s0+=370.0;
     s1+=58.0;
    } else {
     s0+=728.0;
    }
   } else {
    if(i62<0.052010856568813324){
     s0+=51547.0;
     s1+=70.0;
    } else {
     s0+=2323.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i19<1.0018283128738403){
   if(i29<1.1013743877410889){
    if(i30<0.012167944572865963){
     s0+=2233.0;
     s1+=665.0;
    } else {
     s0+=74.0;
     s1+=618.0;
    }
   } else {
    if(i25<0.02227821759879589){
     s0+=7500.0;
     s1+=198.0;
    } else {
     s0+=2450.0;
     s1+=297.0;
    }
   }
  } else {
   if(i11<1.000586748123169){
    if(i46<-0.0012991726398468018){
     s0+=135.0;
     s1+=264.0;
    } else {
     s0+=439.0;
     s1+=44.0;
    }
   } else {
    if(i14<0.995815098285675){
     s0+=16.0;
    } else {
     s0+=25.0;
     s1+=771.0;
    }
   }
  }
 }
} else {
 if(i17<0.004696131683886051){
  if(i64<-0.005187157541513443){
   if(i14<1.0022079944610596){
    if(i43<0.03575146198272705){
     s0+=14.0;
     s1+=61.0;
    } else {
     s0+=935.0;
     s1+=154.0;
    }
   } else {
    if(i17<0.0026010368019342422){
     s0+=48.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=100.0;
    }
   }
  } else {
   if(i31<1.0670123100280762){
    if(i34<1.0003833770751953){
     s0+=139.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i6<-4.3898820877075195e-05){
     s0+=130.0;
     s1+=31.0;
    } else {
     s0+=191.0;
     s1+=1901.0;
    }
   }
  }
 } else {
  if(i29<1.0762357711791992){
   s0+=23.0;
  } else {
   if(i0<0.10900184512138367){
    if(i49<0.015233606100082397){
     s0+=50.0;
     s1+=624.0;
    } else {
     s0+=136.0;
     s1+=20.0;
    }
   } else {
    if(i20<-2.014636993408203e-05){
     s0+=46.0;
    } else {
     s0+=48.0;
     s1+=10756.0;
    }
   }
  }
 }
}
if(i6<3.832578659057617e-05){
 if(i2<0.08225288987159729){
  if(i0<0.0692848265171051){
   if(i49<-0.005985170602798462){
    if(i0<0.04154512286186218){
     s0+=3441.0;
     s1+=403.0;
    } else {
     s0+=305.0;
     s1+=282.0;
    }
   } else {
    if(i24<1.0477051734924316){
     s0+=53289.0;
     s1+=163.0;
    } else {
     s0+=9947.0;
     s1+=700.0;
    }
   }
  } else {
   if(i29<1.2335381507873535){
    if(i29<1.0840110778808594){
     s0+=521.0;
    } else {
     s0+=385.0;
     s1+=651.0;
    }
   } else {
    if(i54<0.0003014206886291504){
     s0+=97.0;
     s1+=42.0;
    } else {
     s0+=914.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i71<0.9973788857460022){
   if(i16<-0.0004242360591888428){
    if(i41<0.011532668024301529){
     s0+=315.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   } else {
    if(i28<1.0058716535568237){
     s0+=28.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=106.0;
    }
   }
  } else {
   if(i41<0.008299407549202442){
    if(i9<1.084590196609497){
     s0+=336.0;
     s1+=1616.0;
    } else {
     s0+=679.0;
     s1+=522.0;
    }
   } else {
    if(i61<0.00017319343169219792){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=1068.0;
    }
   }
  }
 }
} else {
 if(i53<0.9992470741271973){
  s0+=302.0;
 } else {
  if(i11<1.00966477394104){
   if(i0<0.06265565752983093){
    if(i59<0.006226463709026575){
     s0+=164.0;
     s1+=64.0;
    } else {
     s0+=66.0;
     s1+=290.0;
    }
   } else {
    if(i67<1.0199666023254395){
     s0+=41.0;
     s1+=1695.0;
    } else {
     s0+=168.0;
     s1+=1011.0;
    }
   }
  } else {
   if(i42<-1.7780219423002563e-05){
    s1+=8014.0;
   } else {
    if(i2<0.058795005083084106){
     s0+=6.0;
     s1+=16.0;
    } else {
     s1+=454.0;
    }
   }
  }
 }
}
if(i0<0.08281055092811584){
 if(i4<0.0006017684936523438){
  if(i33<0.0002955802483484149){
   if(i25<0.023563746362924576){
    if(i8<1.002464771270752){
     s0+=55024.0;
     s1+=375.0;
    } else {
     s0+=35.0;
     s1+=43.0;
    }
   } else {
    if(i41<0.0012820030096918344){
     s0+=183.0;
     s1+=144.0;
    } else {
     s0+=968.0;
     s1+=7.0;
    }
   }
  } else {
   if(i35<0.0011245511705055833){
    if(i56<0.0004036234749946743){
     s0+=3179.0;
     s1+=700.0;
    } else {
     s0+=202.0;
     s1+=433.0;
    }
   } else {
    if(i31<1.196009874343872){
     s0+=1741.0;
     s1+=336.0;
    } else {
     s0+=7692.0;
     s1+=201.0;
    }
   }
  }
 } else {
  if(i59<0.004434489645063877){
   if(i0<0.05873176455497742){
    if(i52<-5.371271072363015e-08){
     s0+=148.0;
    } else {
     s0+=31.0;
     s1+=32.0;
    }
   } else {
    if(i45<0.03919774293899536){
     s1+=123.0;
    } else {
     s0+=69.0;
     s1+=22.0;
    }
   }
  } else {
   if(i73<0.0001362502371193841){
    if(i49<0.011871874332427979){
     s0+=42.0;
     s1+=670.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i49<-0.0061630308628082275){
     s0+=12.0;
     s1+=95.0;
    } else {
     s0+=56.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i20<-1.3470649719238281e-05){
  if(i36<0.0017424665857106447){
   if(i63<1.1441032256698236e-05){
    if(i43<0.024796634912490845){
     s1+=2.0;
    } else {
     s0+=29.0;
    }
   } else {
    s0+=371.0;
   }
  } else {
   if(i23<1.0581152439117432){
    if(i33<0.0012271248269826174){
     s0+=44.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i36<0.0005139429122209549){
   if(i27<1.0778207778930664){
    if(i29<1.0840110778808594){
     s0+=54.0;
    } else {
     s0+=4.0;
     s1+=110.0;
    }
   } else {
    s0+=200.0;
   }
  } else {
   if(i5<-4.207072197459638e-05){
    if(i1<0.11697793006896973){
     s0+=162.0;
     s1+=1265.0;
    } else {
     s0+=59.0;
     s1+=11034.0;
    }
   } else {
    if(i49<0.01735636591911316){
     s0+=181.0;
     s1+=1204.0;
    } else {
     s0+=586.0;
     s1+=337.0;
    }
   }
  }
 }
}
if(i17<0.005040979944169521){
 if(i3<0.06975999474525452){
  if(i2<0.07745891809463501){
   if(i47<-0.0013135671615600586){
    if(i37<-3.552436828613281e-05){
     s0+=2284.0;
     s1+=90.0;
    } else {
     s0+=1427.0;
     s1+=779.0;
    }
   } else {
    if(i14<1.0073392391204834){
     s0+=60320.0;
     s1+=812.0;
    } else {
     s0+=84.0;
     s1+=224.0;
    }
   }
  } else {
   if(i53<0.9994858503341675){
    s0+=67.0;
   } else {
    if(i43<0.037970930337905884){
     s0+=1.0;
     s1+=626.0;
    } else {
     s0+=28.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i5<-2.334333839826286e-05){
   if(i29<1.2392117977142334){
    if(i68<0.9961775541305542){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=990.0;
    }
   } else {
    if(i5<-5.1914958021370694e-05){
     s0+=47.0;
     s1+=440.0;
    } else {
     s0+=352.0;
     s1+=158.0;
    }
   }
  } else {
   if(i66<0.003205524757504463){
    if(i29<1.255998969078064){
     s0+=735.0;
     s1+=330.0;
    } else {
     s0+=735.0;
     s1+=19.0;
    }
   } else {
    if(i13<-0.000398099422454834){
     s0+=34.0;
    } else {
     s0+=5.0;
     s1+=114.0;
    }
   }
  }
 }
} else {
 if(i0<0.07263362407684326){
  if(i59<0.00949772633612156){
   if(i8<1.001204013824463){
    if(i7<1.0462777614593506){
     s0+=3793.0;
     s1+=32.0;
    } else {
     s0+=502.0;
     s1+=57.0;
    }
   } else {
    if(i54<0.0015025436878204346){
     s0+=33.0;
     s1+=205.0;
    } else {
     s0+=67.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<1.8835067749023438e-05){
    if(i45<0.008043617010116577){
     s0+=245.0;
     s1+=43.0;
    } else {
     s0+=35.0;
     s1+=77.0;
    }
   } else {
    if(i16<-0.0025963187217712402){
     s0+=10.0;
     s1+=33.0;
    } else {
     s0+=10.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i42<1.8545116517998395e-06){
   if(i63<3.643895615823567e-05){
    if(i8<0.994547963142395){
     s0+=28.0;
    } else {
     s0+=191.0;
     s1+=11313.0;
    }
   } else {
    if(i36<0.00978834368288517){
     s0+=55.0;
     s1+=274.0;
    } else {
     s0+=49.0;
     s1+=2.0;
    }
   }
  } else {
   s0+=52.0;
  }
 }
}
if(i3<0.07198938727378845){
 if(i9<1.0452277660369873){
  if(i13<0.0006142258644104004){
   if(i69<0.0014691633405163884){
    if(i22<1.0095653533935547){
     s0+=59118.0;
     s1+=697.0;
    } else {
     s0+=185.0;
     s1+=111.0;
    }
   } else {
    if(i31<1.1823735237121582){
     s0+=2164.0;
     s1+=736.0;
    } else {
     s0+=3232.0;
     s1+=38.0;
    }
   }
  } else {
   if(i52<0.00015101017197594047){
    if(i32<1.0657644271850586){
     s0+=49.0;
    } else {
     s0+=44.0;
     s1+=421.0;
    }
   } else {
    if(i30<0.036857426166534424){
     s0+=233.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i8<1.0023787021636963){
   if(i5<-1.3309942005435005e-05){
    if(i36<0.001360274851322174){
     s0+=242.0;
     s1+=775.0;
    } else {
     s0+=1186.0;
     s1+=248.0;
    }
   } else {
    if(i4<0.00042814016342163086){
     s0+=2598.0;
     s1+=142.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i0<0.06905430555343628){
    if(i27<1.1961640119552612){
     s0+=12.0;
     s1+=272.0;
    } else {
     s0+=124.0;
     s1+=86.0;
    }
   } else {
    if(i66<-0.000714167661499232){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=1089.0;
    }
   }
  }
 }
} else {
 if(i17<0.004687285050749779){
  if(i46<0.004302233457565308){
   if(i19<0.9984122514724731){
    if(i14<0.9943745732307434){
     s0+=191.0;
    } else {
     s0+=75.0;
     s1+=12.0;
    }
   } else {
    if(i40<0.05341404676437378){
     s0+=35.0;
     s1+=772.0;
    } else {
     s0+=356.0;
     s1+=528.0;
    }
   }
  } else {
   if(i14<1.007739782333374){
    if(i1<0.13484960794448853){
     s0+=576.0;
     s1+=8.0;
    } else {
     s0+=349.0;
     s1+=250.0;
    }
   } else {
    if(i2<0.13460564613342285){
     s0+=9.0;
     s1+=17.0;
    } else {
     s1+=90.0;
    }
   }
  }
 } else {
  if(i37<-0.0002669692039489746){
   if(i38<0.03079027682542801){
    s0+=99.0;
   } else {
    s1+=18.0;
   }
  } else {
   if(i2<0.09726226329803467){
    if(i50<-0.00012436904944479465){
     s0+=45.0;
     s1+=346.0;
    } else {
     s0+=161.0;
     s1+=122.0;
    }
   } else {
    if(i30<0.012159787118434906){
     s0+=44.0;
     s1+=409.0;
    } else {
     s0+=33.0;
     s1+=9849.0;
    }
   }
  }
 }
}
if(i11<1.005910038948059){
 if(i1<0.0852321982383728){
  if(i47<-0.0012664198875427246){
   if(i4<0.00039827823638916016){
    if(i26<0.9699656963348389){
     s0+=2963.0;
     s1+=76.0;
    } else {
     s0+=2726.0;
     s1+=800.0;
    }
   } else {
    if(i59<0.008366100490093231){
     s0+=77.0;
     s1+=69.0;
    } else {
     s0+=24.0;
     s1+=309.0;
    }
   }
  } else {
   if(i0<0.06928464770317078){
    if(i38<0.0003098699962720275){
     s0+=45772.0;
     s1+=44.0;
    } else {
     s0+=15227.0;
     s1+=648.0;
    }
   } else {
    if(i59<0.0006279743975028396){
     s0+=1276.0;
     s1+=102.0;
    } else {
     s0+=342.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i4<-0.0007544457912445068){
   if(i53<0.9998000860214233){
    if(i73<4.7587025619577616e-05){
     s0+=51.0;
     s1+=9.0;
    } else {
     s0+=520.0;
     s1+=9.0;
    }
   } else {
    if(i0<0.10136747360229492){
     s0+=97.0;
     s1+=25.0;
    } else {
     s0+=11.0;
     s1+=130.0;
    }
   }
  } else {
   if(i70<1.0166956186294556){
    if(i41<0.00041663512820377946){
     s0+=55.0;
     s1+=6.0;
    } else {
     s0+=142.0;
     s1+=2475.0;
    }
   } else {
    if(i58<0.0010571468155831099){
     s0+=561.0;
     s1+=305.0;
    } else {
     s0+=385.0;
     s1+=1519.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005311667919158936){
  if(i58<0.0008427434368059039){
   if(i35<0.0012732924660667777){
    if(i29<1.089235782623291){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=276.0;
    }
   } else {
    if(i10<1.025259017944336){
     s0+=605.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i37<-0.00018036365509033203){
    s0+=22.0;
   } else {
    if(i7<1.0426700115203857){
     s0+=4.0;
    } else {
     s0+=16.0;
     s1+=553.0;
    }
   }
  }
 } else {
  if(i17<0.0022362954914569855){
   if(i4<0.0009723305702209473){
    if(i42<-1.563724254083354e-05){
     s0+=2.0;
     s1+=21.0;
    } else {
     s0+=147.0;
    }
   } else {
    s1+=145.0;
   }
  } else {
   if(i0<0.039977192878723145){
    if(i12<0.9999169111251831){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i16<3.5643577575683594e-05){
     s0+=9.0;
     s1+=82.0;
    } else {
     s0+=2.0;
     s1+=9217.0;
    }
   }
  }
 }
}
if(i14<1.0034433603286743){
 if(i17<0.0046927183866500854){
  if(i33<0.00031147722620517015){
   if(i57<-0.0031667351722717285){
    if(i37<-3.8117170333862305e-05){
     s0+=100.0;
     s1+=5.0;
    } else {
     s0+=27.0;
     s1+=111.0;
    }
   } else {
    if(i5<-3.521655162330717e-05){
     s0+=764.0;
     s1+=195.0;
    } else {
     s0+=54122.0;
     s1+=307.0;
    }
   }
  } else {
   if(i14<0.9933392405509949){
    if(i26<1.0137598514556885){
     s0+=3545.0;
     s1+=106.0;
    } else {
     s0+=21.0;
     s1+=18.0;
    }
   } else {
    if(i27<1.055511236190796){
     s0+=1246.0;
     s1+=1.0;
    } else {
     s0+=4412.0;
     s1+=2039.0;
    }
   }
  }
 } else {
  if(i8<0.998159646987915){
   if(i3<0.0824456512928009){
    if(i48<-0.02351406216621399){
     s0+=340.0;
     s1+=73.0;
    } else {
     s0+=4695.0;
     s1+=83.0;
    }
   } else {
    if(i53<0.9996685981750488){
     s0+=67.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=239.0;
    }
   }
  } else {
   if(i1<0.09469753503799438){
    if(i28<0.9938324093818665){
     s0+=649.0;
     s1+=296.0;
    } else {
     s0+=40.0;
     s1+=485.0;
    }
   } else {
    if(i16<-0.003990828990936279){
     s0+=14.0;
     s1+=22.0;
    } else {
     s0+=72.0;
     s1+=2882.0;
    }
   }
  }
 }
} else {
 if(i42<-1.0896699677687138e-05){
  if(i0<0.06262242794036865){
   if(i71<0.9994467496871948){
    if(i10<1.0099420547485352){
     s0+=40.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i58<0.0008800256182439625){
     s0+=60.0;
     s1+=26.0;
    } else {
     s0+=15.0;
     s1+=362.0;
    }
   }
  } else {
   if(i5<-4.335466292104684e-05){
    if(i20<-7.241964340209961e-06){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=28.0;
     s1+=9433.0;
    }
   } else {
    if(i41<0.0014374040765687823){
     s0+=3.0;
     s1+=65.0;
    } else {
     s0+=68.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i1<0.0828079879283905){
   if(i58<0.0016702123684808612){
    if(i65<0.0038645099848508835){
     s0+=748.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i63<1.2367189810902346e-05){
    if(i53<0.9998586177825928){
     s1+=263.0;
    } else {
     s0+=14.0;
     s1+=37.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i3<0.0700642466545105){
 if(i6<3.904104232788086e-05){
  if(i10<1.0074981451034546){
   if(i55<0.018615633249282837){
    if(i46<-0.0032061636447906494){
     s0+=86.0;
     s1+=65.0;
    } else {
     s0+=50679.0;
     s1+=270.0;
    }
   } else {
    if(i32<1.2048285007476807){
     s0+=5877.0;
     s1+=1491.0;
    } else {
     s0+=10679.0;
     s1+=281.0;
    }
   }
  } else {
   if(i41<0.002016632817685604){
    if(i31<1.1411950588226318){
     s0+=71.0;
     s1+=490.0;
    } else {
     s0+=79.0;
     s1+=23.0;
    }
   } else {
    if(i17<0.0034237834624946117){
     s0+=725.0;
     s1+=13.0;
    } else {
     s0+=65.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i35<0.0003840237041004002){
   s0+=247.0;
  } else {
   if(i5<-4.330423689680174e-05){
    if(i14<1.0009210109710693){
     s0+=109.0;
     s1+=166.0;
    } else {
     s0+=25.0;
     s1+=1608.0;
    }
   } else {
    if(i15<0.0001323223114013672){
     s0+=11.0;
     s1+=115.0;
    } else {
     s0+=122.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i1<0.11253103613853455){
  if(i49<0.012868165969848633){
   if(i40<0.05058982968330383){
    if(i4<-0.0006125569343566895){
     s0+=33.0;
     s1+=26.0;
    } else {
     s0+=19.0;
     s1+=723.0;
    }
   } else {
    if(i37<-3.1828880310058594e-05){
     s0+=280.0;
     s1+=14.0;
    } else {
     s0+=307.0;
     s1+=290.0;
    }
   }
  } else {
   if(i4<0.0017110705375671387){
    if(i27<1.075559377670288){
     s0+=22.0;
     s1+=17.0;
    } else {
     s0+=721.0;
     s1+=33.0;
    }
   } else {
    if(i29<1.5366990566253662){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i72<1.9456358586467104e-06){
   if(i14<1.0017051696777344){
    if(i40<0.08429539203643799){
     s0+=34.0;
     s1+=1723.0;
    } else {
     s0+=525.0;
     s1+=1164.0;
    }
   } else {
    if(i58<0.0010452424176037312){
     s0+=46.0;
     s1+=929.0;
    } else {
     s0+=17.0;
     s1+=7763.0;
    }
   }
  } else {
   s0+=178.0;
  }
 }
}
if(i2<0.07745698094367981){
 if(i11<1.0061306953430176){
  if(i6<4.1544437408447266e-05){
   if(i44<0.026816263794898987){
    if(i69<0.001587721984833479){
     s0+=55751.0;
     s1+=397.0;
    } else {
     s0+=1800.0;
     s1+=299.0;
    }
   } else {
    if(i14<0.9943428039550781){
     s0+=6652.0;
     s1+=140.0;
    } else {
     s0+=3986.0;
     s1+=1150.0;
    }
   }
  } else {
   if(i53<0.9990893602371216){
    s0+=179.0;
   } else {
    if(i17<0.004697578493505716){
     s0+=32.0;
     s1+=8.0;
    } else {
     s0+=99.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i6<6.240606307983398e-05){
   if(i35<0.0012384909205138683){
    s1+=218.0;
   } else {
    if(i1<0.08577430248260498){
     s0+=639.0;
     s1+=16.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i68<1.0025551319122314){
    if(i4<0.0009387731552124023){
     s0+=4.0;
     s1+=3.0;
    } else {
     s1+=536.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i42<2.755621835603961e-06){
  if(i8<1.00185227394104){
   if(i27<1.0670123100280762){
    if(i53<1.000077247619629){
     s0+=220.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   } else {
    if(i64<-0.00522309634834528){
     s0+=901.0;
     s1+=1199.0;
    } else {
     s0+=283.0;
     s1+=2066.0;
    }
   }
  } else {
   if(i16<3.5643577575683594e-05){
    if(i2<0.12217515707015991){
     s0+=86.0;
     s1+=203.0;
    } else {
     s0+=24.0;
     s1+=888.0;
    }
   } else {
    if(i26<1.009079933166504){
     s0+=30.0;
     s1+=1056.0;
    } else {
     s0+=14.0;
     s1+=8615.0;
    }
   }
  }
 } else {
  if(i45<0.05839449167251587){
   s1+=15.0;
  } else {
   if(i36<0.0017025608103722334){
    if(i24<1.073929786682129){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=283.0;
    }
   } else {
    if(i45<0.13777458667755127){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i0<0.08502998948097229){
 if(i8<1.0024782419204712){
  if(i48<-0.028916150331497192){
   if(i6<1.3649463653564453e-05){
    if(i71<1.0003855228424072){
     s0+=1877.0;
     s1+=237.0;
    } else {
     s0+=403.0;
     s1+=231.0;
    }
   } else {
    if(i57<0.0047449469566345215){
     s0+=65.0;
     s1+=205.0;
    } else {
     s0+=44.0;
    }
   }
  } else {
   if(i55<0.01881270483136177){
    if(i47<-0.0017223656177520752){
     s0+=128.0;
     s1+=97.0;
    } else {
     s0+=50717.0;
     s1+=282.0;
    }
   } else {
    if(i35<0.0010573556646704674){
     s0+=3746.0;
     s1+=960.0;
    } else {
     s0+=12149.0;
     s1+=231.0;
    }
   }
  }
 } else {
  if(i17<0.002001180313527584){
   if(i31<1.1857318878173828){
    if(i50<-0.00013266934547573328){
     s1+=25.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i37<0.00019374489784240723){
     s0+=155.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i48<0.03388822078704834){
    if(i38<0.0012955617858096957){
     s1+=668.0;
    } else {
     s0+=83.0;
     s1+=335.0;
    }
   } else {
    if(i58<0.00531021598726511){
     s0+=38.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i36<0.0005116504617035389){
  if(i33<0.0007725356845185161){
   if(i34<0.9995741844177246){
    s0+=52.0;
   } else {
    if(i72<-1.2189656217742595e-06){
     s0+=10.0;
     s1+=92.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   s0+=275.0;
  }
 } else {
  if(i13<-0.0004030168056488037){
   if(i52<0.0001673797087278217){
    if(i42<-1.003835041046841e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=268.0;
     s1+=1.0;
    }
   } else {
    if(i57<0.005066901445388794){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i17<0.003474235301837325){
    if(i47<0.0038621127605438232){
     s0+=242.0;
     s1+=1350.0;
    } else {
     s0+=409.0;
     s1+=143.0;
    }
   } else {
    if(i15<-0.00026094913482666016){
     s0+=144.0;
     s1+=637.0;
    } else {
     s0+=116.0;
     s1+=11783.0;
    }
   }
  }
 }
}
if(i6<3.737211227416992e-05){
 if(i7<1.0452277660369873){
  if(i7<1.0398929119110107){
   if(i33<0.00030344779952429235){
    if(i47<-0.0015577375888824463){
     s0+=359.0;
     s1+=96.0;
    } else {
     s0+=51166.0;
     s1+=183.0;
    }
   } else {
    if(i36<0.0016073954757303){
     s0+=2324.0;
     s1+=386.0;
    } else {
     s0+=4477.0;
     s1+=28.0;
    }
   }
  } else {
   if(i45<0.07624828815460205){
    if(i25<0.022096043452620506){
     s0+=3163.0;
     s1+=164.0;
    } else {
     s0+=322.0;
     s1+=204.0;
    }
   } else {
    if(i35<0.00041852815775200725){
     s0+=8.0;
    } else {
     s0+=6.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i8<0.9968047738075256){
   if(i61<0.00172183639369905){
    if(i31<1.4938247203826904){
     s0+=2308.0;
     s1+=61.0;
    } else {
     s0+=119.0;
     s1+=40.0;
    }
   } else {
    if(i56<0.0034004095941781998){
     s0+=5.0;
     s1+=102.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i10<1.0106494426727295){
    if(i39<0.00029567861929535866){
     s0+=1177.0;
    } else {
     s0+=4264.0;
     s1+=2789.0;
    }
   } else {
    if(i34<1.0002188682556152){
     s0+=144.0;
     s1+=1117.0;
    } else {
     s0+=410.0;
     s1+=312.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005700588226318359){
  if(i0<0.10758253931999207){
   if(i11<1.0009956359863281){
    if(i39<0.0034423982724547386){
     s0+=224.0;
    } else {
     s0+=23.0;
     s1+=10.0;
    }
   } else {
    if(i58<0.001737781916745007){
     s0+=13.0;
     s1+=5.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i7<1.0342810153961182){
    if(i37<-0.00024390220642089844){
     s0+=12.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i64<-0.008778256364166737){
     s0+=11.0;
     s1+=16.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i32<1.0657644271850586){
   s0+=102.0;
  } else {
   if(i33<0.0001543876132927835){
    if(i20<2.5212764739990234e-05){
     s0+=60.0;
     s1+=5.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i6<6.145238876342773e-05){
     s0+=227.0;
     s1+=1349.0;
    } else {
     s0+=123.0;
     s1+=10218.0;
    }
   }
  }
 }
}
if(i18<1.0082125663757324){
 if(i5<-6.71443049213849e-05){
  if(i2<0.04850432276725769){
   if(i8<1.0028648376464844){
    if(i2<0.018241316080093384){
     s0+=711.0;
     s1+=6.0;
    } else {
     s0+=233.0;
     s1+=53.0;
    }
   } else {
    if(i44<0.1171293705701828){
     s0+=4.0;
     s1+=146.0;
    } else {
     s0+=32.0;
     s1+=33.0;
    }
   }
  } else {
   if(i27<1.060716152191162){
    s0+=76.0;
   } else {
    if(i48<0.0445479154586792){
     s0+=24.0;
     s1+=1697.0;
    } else {
     s0+=152.0;
     s1+=754.0;
    }
   }
  }
 } else {
  if(i25<0.018104152753949165){
   if(i56<0.00027676470926962793){
    if(i6<4.6253204345703125e-05){
     s0+=54471.0;
     s1+=285.0;
    } else {
     s0+=54.0;
     s1+=71.0;
    }
   } else {
    if(i14<0.9943299293518066){
     s0+=3071.0;
     s1+=80.0;
    } else {
     s0+=1587.0;
     s1+=670.0;
    }
   }
  } else {
   if(i36<0.0020438609644770622){
    if(i19<0.9986293911933899){
     s0+=1096.0;
     s1+=31.0;
    } else {
     s0+=1480.0;
     s1+=1709.0;
    }
   } else {
    if(i0<0.10014718770980835){
     s0+=5238.0;
     s1+=149.0;
    } else {
     s0+=75.0;
     s1+=476.0;
    }
   }
  }
 }
} else {
 if(i2<0.07411405444145203){
  if(i5<-5.661234899889678e-05){
   if(i14<1.0046563148498535){
    if(i0<0.06462690234184265){
     s0+=65.0;
     s1+=21.0;
    } else {
     s0+=9.0;
     s1+=44.0;
    }
   } else {
    if(i72<2.7065505037171533e-07){
     s0+=2.0;
     s1+=365.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i64<-0.003112481441348791){
    if(i63<-7.589372671645833e-06){
     s1+=1.0;
    } else {
     s0+=630.0;
     s1+=10.0;
    }
   } else {
    if(i24<1.0731133222579956){
     s0+=262.0;
     s1+=230.0;
    } else {
     s0+=1013.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i8<1.00185227394104){
   if(i53<0.9998672008514404){
    if(i42<9.929394764185417e-07){
     s0+=65.0;
     s1+=1019.0;
    } else {
     s0+=113.0;
     s1+=11.0;
    }
   } else {
    if(i41<0.008017572574317455){
     s0+=414.0;
     s1+=204.0;
    } else {
     s0+=27.0;
     s1+=250.0;
    }
   }
  } else {
   if(i8<1.0050544738769531){
    if(i28<1.0041699409484863){
     s0+=55.0;
     s1+=268.0;
    } else {
     s0+=18.0;
     s1+=1321.0;
    }
   } else {
    s1+=7277.0;
   }
  }
 }
}
if(i11<1.0044360160827637){
 if(i8<1.0023996829986572){
  if(i7<1.0452277660369873){
   if(i57<-0.002026677131652832){
    if(i11<0.9849134683609009){
     s0+=2730.0;
     s1+=46.0;
    } else {
     s0+=1683.0;
     s1+=575.0;
    }
   } else {
    if(i2<0.08109816908836365){
     s0+=57420.0;
     s1+=354.0;
    } else {
     s0+=125.0;
     s1+=123.0;
    }
   }
  } else {
   if(i4<0.00018897652626037598){
    if(i30<0.041065871715545654){
     s0+=6744.0;
     s1+=1906.0;
    } else {
     s0+=91.0;
     s1+=462.0;
    }
   } else {
    if(i29<1.0782209634780884){
     s0+=135.0;
    } else {
     s0+=541.0;
     s1+=1240.0;
    }
   }
  }
 } else {
  if(i30<0.017200911417603493){
   if(i39<0.007222733926028013){
    if(i13<0.0004036426544189453){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=44.0;
     s1+=176.0;
    }
   } else {
    if(i58<0.005403376184403896){
     s0+=78.0;
     s1+=7.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i52<0.0003171401913277805){
    if(i55<0.01320825144648552){
     s0+=1.0;
    } else {
     s0+=9.0;
     s1+=1479.0;
    }
   } else {
    if(i19<1.005141019821167){
     s1+=19.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i2<0.05848807096481323){
  if(i61<0.0005734083242714405){
   if(i35<0.0010688197799026966){
    if(i14<1.0012564659118652){
     s0+=36.0;
    } else {
     s0+=5.0;
     s1+=189.0;
    }
   } else {
    if(i34<1.0014952421188354){
     s0+=910.0;
     s1+=16.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i7<1.0374231338500977){
    if(i61<0.0006691329181194305){
     s0+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=254.0;
   }
  }
 } else {
  if(i4<0.00015294551849365234){
   if(i50<-0.0010608709417283535){
    if(i3<0.10004046559333801){
     s0+=3.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i52<2.508177567506209e-05){
     s0+=222.0;
     s1+=101.0;
    } else {
     s0+=5.0;
     s1+=82.0;
    }
   }
  } else {
   if(i5<-4.32968299719505e-05){
    if(i14<0.9937105774879456){
     s0+=12.0;
     s1+=64.0;
    } else {
     s0+=15.0;
     s1+=9759.0;
    }
   } else {
    if(i58<0.0011056892108172178){
     s0+=158.0;
     s1+=89.0;
    } else {
     s0+=5.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i0<0.08241268992424011){
 if(i4<0.0006018579006195068){
  if(i27<1.0557184219360352){
   s0+=42978.0;
  } else {
   if(i41<0.0015394120709970593){
    if(i6<1.3768672943115234e-05){
     s0+=8808.0;
     s1+=1341.0;
    } else {
     s0+=251.0;
     s1+=378.0;
    }
   } else {
    if(i48<-0.043525129556655884){
     s0+=925.0;
     s1+=217.0;
    } else {
     s0+=16010.0;
     s1+=213.0;
    }
   }
  }
 } else {
  if(i68<0.9976022243499756){
   if(i31<1.5848398208618164){
    s0+=95.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i8<1.0041816234588623){
    if(i17<0.0028119597118347883){
     s0+=136.0;
     s1+=21.0;
    } else {
     s0+=92.0;
     s1+=323.0;
    }
   } else {
    if(i15<-0.0004248619079589844){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=595.0;
    }
   }
  }
 }
} else {
 if(i14<1.001018762588501){
  if(i13<-0.0004131197929382324){
   if(i35<0.007268178276717663){
    s0+=389.0;
   } else {
    if(i31<1.5153357982635498){
     s1+=13.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i1<0.12019583582878113){
    if(i49<0.015387356281280518){
     s0+=208.0;
     s1+=934.0;
    } else {
     s0+=451.0;
     s1+=26.0;
    }
   } else {
    if(i5<-1.3781947927782312e-05){
     s0+=136.0;
     s1+=2475.0;
    } else {
     s0+=235.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i0<0.10272124409675598){
   if(i45<0.06614470481872559){
    if(i29<1.0690243244171143){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=645.0;
    }
   } else {
    if(i58<0.0015544218476861715){
     s0+=70.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=59.0;
    }
   }
  } else {
   if(i58<0.0010814692359417677){
    if(i65<-0.04215695708990097){
     s0+=46.0;
     s1+=19.0;
    } else {
     s0+=22.0;
     s1+=1218.0;
    }
   } else {
    if(i11<1.005340814590454){
     s0+=21.0;
     s1+=1173.0;
    } else {
     s1+=7491.0;
    }
   }
  }
 }
}
if(i0<0.08223840594291687){
 if(i13<0.0006163120269775391){
  if(i47<-0.0012819766998291016){
   if(i27<1.1792536973953247){
    if(i39<0.0003881434095092118){
     s0+=1221.0;
     s1+=8.0;
    } else {
     s0+=1069.0;
     s1+=849.0;
    }
   } else {
    if(i54<-0.008406877517700195){
     s0+=217.0;
     s1+=84.0;
    } else {
     s0+=3199.0;
     s1+=56.0;
    }
   }
  } else {
   if(i26<1.0058107376098633){
    if(i62<0.04845641553401947){
     s0+=55651.0;
     s1+=322.0;
    } else {
     s0+=5403.0;
     s1+=417.0;
    }
   } else {
    if(i24<1.0731133222579956){
     s0+=202.0;
     s1+=319.0;
    } else {
     s0+=1603.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i8<1.0024564266204834){
   if(i23<0.9938398599624634){
    if(i1<0.008073598146438599){
     s0+=36.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=63.0;
    }
   } else {
    if(i7<1.1267116069793701){
     s0+=583.0;
     s1+=59.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   }
  } else {
   if(i47<0.0018548369407653809){
    if(i46<0.0017633438110351562){
     s0+=30.0;
     s1+=755.0;
    } else {
     s0+=18.0;
     s1+=6.0;
    }
   } else {
    if(i27<1.2134636640548706){
     s0+=3.0;
     s1+=18.0;
    } else {
     s0+=36.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i17<0.0018957916181534529){
  if(i16<0.0014205574989318848){
   if(i56<0.00030098517891019583){
    if(i51<0.0006642560474574566){
     s0+=97.0;
     s1+=37.0;
    } else {
     s0+=520.0;
     s1+=24.0;
    }
   } else {
    if(i36<0.0005432831239886582){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=200.0;
    }
   }
  } else {
   s1+=154.0;
  }
 } else {
  if(i5<-7.423595889122225e-06){
   if(i8<1.0023717880249023){
    if(i29<1.2371783256530762){
     s0+=18.0;
     s1+=1498.0;
    } else {
     s0+=465.0;
     s1+=1796.0;
    }
   } else {
    if(i15<6.258487701416016e-06){
     s0+=68.0;
     s1+=869.0;
    } else {
     s0+=10.0;
     s1+=9428.0;
    }
   }
  } else {
   if(i68<0.999485433101654){
    if(i34<0.9991850852966309){
     s0+=304.0;
    } else {
     s0+=24.0;
     s1+=16.0;
    }
   } else {
    if(i29<1.255998969078064){
     s0+=33.0;
     s1+=140.0;
    } else {
     s0+=93.0;
     s1+=12.0;
    }
   }
  }
 }
}
if(i26<1.0066330432891846){
 if(i59<0.00899113342165947){
  if(i4<0.0006011128425598145){
   if(i23<1.0401114225387573){
    if(i56<0.0002806279808282852){
     s0+=55331.0;
     s1+=535.0;
    } else {
     s0+=8518.0;
     s1+=1140.0;
    }
   } else {
    if(i0<0.10999023914337158){
     s0+=2238.0;
     s1+=316.0;
    } else {
     s0+=363.0;
     s1+=830.0;
    }
   }
  } else {
   if(i41<0.00046323315473273396){
    s0+=72.0;
   } else {
    if(i3<0.12221518158912659){
     s0+=139.0;
     s1+=373.0;
    } else {
     s0+=11.0;
     s1+=708.0;
    }
   }
  }
 } else {
  if(i20<9.238719940185547e-06){
   if(i13<-0.0004080235958099365){
    if(i42<-2.1714736249123234e-06){
     s0+=102.0;
     s1+=8.0;
    } else {
     s0+=678.0;
    }
   } else {
    if(i55<0.3814350962638855){
     s0+=1262.0;
     s1+=616.0;
    } else {
     s0+=1.0;
     s1+=74.0;
    }
   }
  } else {
   if(i0<0.017364501953125){
    if(i13<0.0008528828620910645){
     s0+=127.0;
     s1+=24.0;
    } else {
     s0+=19.0;
     s1+=47.0;
    }
   } else {
    if(i57<0.004518628120422363){
     s0+=24.0;
     s1+=1289.0;
    } else {
     s0+=37.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i8<1.0024590492248535){
  if(i5<-3.866210317937657e-05){
   if(i30<0.011183932423591614){
    if(i27<1.1034862995147705){
     s1+=259.0;
    } else {
     s0+=121.0;
     s1+=47.0;
    }
   } else {
    if(i53<0.9999746680259705){
     s0+=1.0;
     s1+=891.0;
    } else {
     s0+=29.0;
     s1+=181.0;
    }
   }
  } else {
   if(i58<0.0018837293609976768){
    if(i35<0.006014925893396139){
     s0+=1739.0;
     s1+=219.0;
    } else {
     s0+=39.0;
     s1+=103.0;
    }
   } else {
    if(i36<0.004720204509794712){
     s1+=129.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i1<0.058233946561813354){
   if(i35<0.0026369697879999876){
    if(i72<-4.191306288703345e-06){
     s1+=108.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i65<0.004455619491636753){
     s0+=117.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i4<0.0009264349937438965){
    if(i3<0.12159848213195801){
     s0+=65.0;
     s1+=401.0;
    } else {
     s1+=406.0;
    }
   } else {
    if(i61<2.2721042114426382e-05){
     s0+=4.0;
    } else {
     s0+=29.0;
     s1+=8424.0;
    }
   }
  }
 }
}
if(i6<3.8564205169677734e-05){
 if(i18<1.008021593093872){
  if(i51<0.00033245683880522847){
   if(i38<0.0002893010969273746){
    if(i12<1.0030986070632935){
     s0+=46036.0;
     s1+=34.0;
    } else {
     s0+=42.0;
     s1+=6.0;
    }
   } else {
    if(i67<0.9872840046882629){
     s0+=276.0;
     s1+=83.0;
    } else {
     s0+=7601.0;
     s1+=204.0;
    }
   }
  } else {
   if(i3<0.08102956414222717){
    if(i8<0.9978666305541992){
     s0+=9350.0;
     s1+=386.0;
    } else {
     s0+=3840.0;
     s1+=1521.0;
    }
   } else {
    if(i40<0.06335565447807312){
     s0+=30.0;
     s1+=704.0;
    } else {
     s0+=622.0;
     s1+=552.0;
    }
   }
  }
 } else {
  if(i58<0.0017418505158275366){
   if(i2<0.07901826500892639){
    if(i16<0.0004450678825378418){
     s0+=1336.0;
     s1+=87.0;
    } else {
     s0+=369.0;
     s1+=160.0;
    }
   } else {
    if(i5<-2.261745794385206e-05){
     s0+=104.0;
     s1+=855.0;
    } else {
     s0+=468.0;
     s1+=122.0;
    }
   }
  } else {
   if(i21<1.0123913288116455){
    if(i41<0.0013408605009317398){
     s0+=25.0;
     s1+=124.0;
    } else {
     s0+=199.0;
     s1+=48.0;
    }
   } else {
    if(i20<1.6868114471435547e-05){
     s0+=3.0;
     s1+=543.0;
    } else {
     s0+=38.0;
     s1+=162.0;
    }
   }
  }
 }
} else {
 if(i32<1.0762357711791992){
  s0+=296.0;
 } else {
  if(i2<0.05339893698692322){
   if(i59<0.0036808846052736044){
    if(i35<0.0015526906354352832){
     s1+=17.0;
    } else {
     s0+=111.0;
     s1+=4.0;
    }
   } else {
    if(i17<0.0029756734147667885){
     s0+=36.0;
     s1+=16.0;
    } else {
     s0+=59.0;
     s1+=462.0;
    }
   }
  } else {
   if(i8<1.0040810108184814){
    if(i68<0.999543309211731){
     s0+=20.0;
     s1+=991.0;
    } else {
     s0+=167.0;
     s1+=686.0;
    }
   } else {
    if(i52<0.00010799648589454591){
     s1+=8152.0;
    } else {
     s0+=37.0;
     s1+=1268.0;
    }
   }
  }
 }
}
if(i26<1.0082402229309082){
 if(i6<3.8683414459228516e-05){
  if(i2<0.08024245500564575){
   if(i47<-0.0012745559215545654){
    if(i31<1.178917407989502){
     s0+=2055.0;
     s1+=854.0;
    } else {
     s0+=3758.0;
     s1+=175.0;
    }
   } else {
    if(i24<1.048384666442871){
     s0+=53572.0;
     s1+=113.0;
    } else {
     s0+=8324.0;
     s1+=819.0;
    }
   }
  } else {
   if(i37<-0.00013941526412963867){
    if(i72<-2.3313614292419516e-06){
     s0+=7.0;
     s1+=23.0;
    } else {
     s0+=367.0;
     s1+=4.0;
    }
   } else {
    if(i60<0.03441154956817627){
     s0+=175.0;
     s1+=1584.0;
    } else {
     s0+=556.0;
     s1+=437.0;
    }
   }
  }
 } else {
  if(i34<0.9992137551307678){
   s0+=275.0;
  } else {
   if(i17<0.0021594008430838585){
    if(i44<0.06968666613101959){
     s0+=40.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i30<0.023360634222626686){
     s0+=187.0;
     s1+=668.0;
    } else {
     s0+=7.0;
     s1+=1751.0;
    }
   }
  }
 }
} else {
 if(i20<1.901388168334961e-05){
  if(i17<0.0024175168946385384){
   if(i32<1.1108002662658691){
    if(i6<9.328126907348633e-06){
     s0+=98.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=268.0;
    }
   } else {
    if(i28<1.0185587406158447){
     s0+=893.0;
     s1+=19.0;
    } else {
     s0+=237.0;
     s1+=48.0;
    }
   }
  } else {
   if(i20<-1.2129545211791992e-05){
    if(i72<1.485140614931879e-07){
     s1+=4.0;
    } else {
     s0+=134.0;
    }
   } else {
    if(i15<2.6971101760864258e-05){
     s0+=112.0;
     s1+=372.0;
    } else {
     s0+=43.0;
     s1+=1922.0;
    }
   }
  }
 } else {
  if(i12<1.0002925395965576){
   if(i0<0.15440857410430908){
    if(i71<1.0041441917419434){
     s0+=127.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    s1+=279.0;
   }
  } else {
   if(i8<1.0041769742965698){
    if(i17<0.0018747919239103794){
     s0+=25.0;
    } else {
     s0+=13.0;
     s1+=323.0;
    }
   } else {
    s1+=7527.0;
   }
  }
 }
}
if(i8<1.0024782419204712){
 if(i7<1.0450963973999023){
  if(i1<0.08356225490570068){
   if(i29<1.0850647687911987){
    s0+=37094.0;
   } else {
    if(i35<0.0009793257340788841){
     s0+=6359.0;
     s1+=714.0;
    } else {
     s0+=18534.0;
     s1+=109.0;
    }
   }
  } else {
   if(i5<5.867177605978213e-06){
    if(i11<0.987466037273407){
     s0+=126.0;
     s1+=28.0;
    } else {
     s0+=85.0;
     s1+=234.0;
    }
   } else {
    if(i22<0.9745914936065674){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=212.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i25<0.024736735969781876){
   if(i15<0.00010129809379577637){
    if(i0<0.075202077627182){
     s0+=5707.0;
     s1+=462.0;
    } else {
     s0+=1205.0;
     s1+=742.0;
    }
   } else {
    if(i31<1.1678911447525024){
     s0+=61.0;
     s1+=402.0;
    } else {
     s0+=135.0;
     s1+=39.0;
    }
   }
  } else {
   if(i20<-1.475214958190918e-05){
    if(i35<0.005441976711153984){
     s0+=460.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=14.0;
    }
   } else {
    if(i5<-6.558672339451732e-06){
     s0+=734.0;
     s1+=2876.0;
    } else {
     s0+=323.0;
     s1+=184.0;
    }
   }
  }
 }
} else {
 if(i3<0.05032345652580261){
  if(i17<0.002013527788221836){
   if(i1<0.06004363298416138){
    if(i73<4.789272497873753e-05){
     s1+=2.0;
    } else {
     s0+=127.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i0<0.04816526174545288){
    if(i46<-0.001300215721130371){
     s0+=21.0;
     s1+=235.0;
    } else {
     s0+=37.0;
     s1+=25.0;
    }
   } else {
    if(i48<0.01025313138961792){
     s0+=1.0;
     s1+=718.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i2<0.1316651701927185){
   if(i47<0.004060983657836914){
    if(i16<-0.0005464553833007812){
     s0+=51.0;
     s1+=130.0;
    } else {
     s0+=33.0;
     s1+=1284.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=33.0;
    } else {
     s0+=60.0;
     s1+=17.0;
    }
   }
  } else {
   if(i8<1.0046576261520386){
    if(i30<0.007774086203426123){
     s0+=2.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=1069.0;
    }
   } else {
    s1+=7466.0;
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i11<1.0059412717819214){
  if(i57<-0.0022674500942230225){
   if(i15<-0.0002906918525695801){
    if(i59<0.015515362843871117){
     s0+=2600.0;
     s1+=16.0;
    } else {
     s0+=345.0;
     s1+=118.0;
    }
   } else {
    if(i19<1.0012434720993042){
     s0+=2612.0;
     s1+=806.0;
    } else {
     s0+=65.0;
     s1+=326.0;
    }
   }
  } else {
   if(i24<1.0486011505126953){
    if(i10<1.0082513093948364){
     s0+=54320.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i25<0.021666157990694046){
     s0+=7969.0;
     s1+=438.0;
    } else {
     s0+=900.0;
     s1+=525.0;
    }
   }
  }
 } else {
  if(i17<0.003097341163083911){
   if(i39<0.0011102557182312012){
    if(i16<0.000639796257019043){
     s0+=6.0;
    } else {
     s1+=167.0;
    }
   } else {
    if(i31<1.1532785892486572){
     s1+=11.0;
    } else {
     s0+=601.0;
     s1+=4.0;
    }
   }
  } else {
   if(i38<0.002548839431256056){
    if(i34<0.9992446899414062){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=514.0;
    }
   } else {
    if(i42<-3.103805283899419e-05){
     s1+=27.0;
    } else {
     s0+=31.0;
    }
   }
  }
 }
} else {
 if(i17<0.001723350491374731){
  if(i15<0.00022596120834350586){
   if(i70<1.0208935737609863){
    if(i12<1.0000945329666138){
     s0+=175.0;
     s1+=60.0;
    } else {
     s0+=12.0;
     s1+=100.0;
    }
   } else {
    if(i4<-0.0005068182945251465){
     s0+=17.0;
     s1+=28.0;
    } else {
     s0+=457.0;
     s1+=18.0;
    }
   }
  } else {
   if(i34<0.9971266984939575){
    s0+=1.0;
   } else {
    s1+=130.0;
   }
  }
 } else {
  if(i16<-0.0006124377250671387){
   if(i17<0.009595125913619995){
    if(i49<0.016006797552108765){
     s0+=261.0;
     s1+=724.0;
    } else {
     s0+=457.0;
     s1+=202.0;
    }
   } else {
    if(i37<0.0005168318748474121){
     s1+=893.0;
    } else {
     s0+=9.0;
     s1+=157.0;
    }
   }
  } else {
   if(i19<0.9989665746688843){
    if(i39<0.013908959925174713){
     s0+=70.0;
     s1+=12.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.1323392689228058){
     s0+=141.0;
     s1+=2038.0;
    } else {
     s0+=43.0;
     s1+=9705.0;
    }
   }
  }
 }
}
if(i1<0.08558851480484009){
 if(i14<1.0044989585876465){
  if(i24<1.0467959642410278){
   if(i69<0.0013679640833288431){
    if(i47<-0.001393347978591919){
     s0+=330.0;
     s1+=40.0;
    } else {
     s0+=52067.0;
     s1+=103.0;
    }
   } else {
    if(i12<1.0011885166168213){
     s0+=2112.0;
     s1+=132.0;
    } else {
     s0+=116.0;
     s1+=50.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i44<0.030377574265003204){
     s0+=2788.0;
     s1+=597.0;
    } else {
     s0+=383.0;
     s1+=706.0;
    }
   } else {
    if(i30<0.06163060665130615){
     s0+=10817.0;
     s1+=689.0;
    } else {
     s0+=1.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i29<1.1386182308197021){
   s1+=499.0;
  } else {
   if(i8<1.0040936470031738){
    if(i30<0.015732351690530777){
     s0+=515.0;
     s1+=18.0;
    } else {
     s0+=18.0;
     s1+=43.0;
    }
   } else {
    if(i14<1.0048507452011108){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=228.0;
    }
   }
  }
 }
} else {
 if(i4<8.341670036315918e-05){
  if(i13<-0.00040593743324279785){
   if(i39<0.008656437508761883){
    if(i37<-0.00025719404220581055){
     s0+=564.0;
    } else {
     s0+=71.0;
     s1+=1.0;
    }
   } else {
    if(i36<0.007379153743386269){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i61<0.00013617373770102859){
    if(i68<0.9996064305305481){
     s0+=23.0;
     s1+=163.0;
    } else {
     s0+=246.0;
     s1+=60.0;
    }
   } else {
    if(i25<0.026604238897562027){
     s0+=359.0;
     s1+=399.0;
    } else {
     s0+=111.0;
     s1+=1059.0;
    }
   }
  }
 } else {
  if(i2<0.12589031457901){
   if(i48<0.050117433071136475){
    if(i46<0.006030142307281494){
     s0+=54.0;
     s1+=1886.0;
    } else {
     s0+=68.0;
     s1+=12.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s0+=6.0;
     s1+=62.0;
    } else {
     s0+=275.0;
     s1+=28.0;
    }
   }
  } else {
   if(i6<3.331899642944336e-05){
    if(i5<-3.960034518968314e-05){
     s0+=6.0;
     s1+=685.0;
    } else {
     s0+=97.0;
     s1+=162.0;
    }
   } else {
    if(i1<0.15952539443969727){
     s0+=28.0;
     s1+=787.0;
    } else {
     s0+=9.0;
     s1+=8667.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i0<0.08225274085998535){
  if(i24<1.0451585054397583){
   if(i29<1.0850647687911987){
    s0+=35693.0;
   } else {
    if(i32<1.0932118892669678){
     s0+=2271.0;
     s1+=199.0;
    } else {
     s0+=16113.0;
     s1+=66.0;
    }
   }
  } else {
   if(i41<0.0015668218256905675){
    if(i25<0.017073385417461395){
     s0+=5166.0;
     s1+=622.0;
    } else {
     s0+=473.0;
     s1+=833.0;
    }
   } else {
    if(i48<-0.025682449340820312){
     s0+=1598.0;
     s1+=282.0;
    } else {
     s0+=7686.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i4<-0.0008780956268310547){
   if(i19<0.9978634119033813){
    if(i32<1.476589322090149){
     s0+=297.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i24<1.1123671531677246){
     s0+=48.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=83.0;
    }
   }
  } else {
   if(i5<-1.3411863619694486e-05){
    if(i30<0.01316266693174839){
     s0+=281.0;
     s1+=618.0;
    } else {
     s0+=219.0;
     s1+=2373.0;
    }
   } else {
    if(i43<0.04318714141845703){
     s0+=23.0;
     s1+=223.0;
    } else {
     s0+=615.0;
     s1+=144.0;
    }
   }
  }
 }
} else {
 if(i38<0.0002465705038048327){
  if(i42<-1.563976547913626e-05){
   s1+=11.0;
  } else {
   s0+=214.0;
  }
 } else {
  if(i6<6.145238876342773e-05){
   if(i5<-4.607368100550957e-05){
    if(i20<2.7358531951904297e-05){
     s0+=4.0;
     s1+=1045.0;
    } else {
     s0+=144.0;
     s1+=280.0;
    }
   } else {
    if(i36<0.0018016588874161243){
     s1+=110.0;
    } else {
     s0+=172.0;
     s1+=50.0;
    }
   }
  } else {
   if(i11<1.0073189735412598){
    if(i17<0.005441439338028431){
     s0+=33.0;
     s1+=22.0;
    } else {
     s0+=72.0;
     s1+=1666.0;
    }
   } else {
    if(i33<0.00011877711222041398){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=8374.0;
    }
   }
  }
 }
}
if(i6<3.7729740142822266e-05){
 if(i1<0.08219277858734131){
  if(i2<0.06076240539550781){
   if(i25<0.016892557963728905){
    if(i69<0.001818241085857153){
     s0+=53487.0;
     s1+=268.0;
    } else {
     s0+=2480.0;
     s1+=265.0;
    }
   } else {
    if(i48<-0.022448331117630005){
     s0+=1128.0;
     s1+=396.0;
    } else {
     s0+=7664.0;
     s1+=381.0;
    }
   }
  } else {
   if(i24<1.0485899448394775){
    if(i60<0.010038048028945923){
     s0+=16.0;
     s1+=25.0;
    } else {
     s0+=2391.0;
     s1+=33.0;
    }
   } else {
    if(i35<0.0011278786696493626){
     s0+=322.0;
     s1+=383.0;
    } else {
     s0+=975.0;
     s1+=198.0;
    }
   }
  }
 } else {
  if(i36<0.00045622797915712){
   if(i13<0.00013190507888793945){
    if(i53<0.999720573425293){
     s0+=338.0;
    } else {
     s0+=140.0;
     s1+=7.0;
    }
   } else {
    if(i63<3.7771280858578393e-06){
     s0+=19.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i5<-1.38188770506531e-05){
    if(i0<0.09157085418701172){
     s0+=320.0;
     s1+=277.0;
    } else {
     s0+=357.0;
     s1+=2819.0;
    }
   } else {
    if(i35<0.0010699795093387365){
     s0+=74.0;
     s1+=160.0;
    } else {
     s0+=759.0;
     s1+=207.0;
    }
   }
  }
 }
} else {
 if(i41<0.00042525172466412187){
  if(i62<0.006595708429813385){
   if(i2<0.05820178985595703){
    s0+=13.0;
   } else {
    s1+=1.0;
   }
  } else {
   s0+=309.0;
  }
 } else {
  if(i0<0.06807142496109009){
   if(i54<-0.0006437897682189941){
    if(i73<0.00013633398339152336){
     s0+=30.0;
     s1+=456.0;
    } else {
     s0+=53.0;
     s1+=68.0;
    }
   } else {
    if(i24<1.0832065343856812){
     s0+=31.0;
     s1+=48.0;
    } else {
     s0+=114.0;
     s1+=21.0;
    }
   }
  } else {
   if(i5<-4.744988837046549e-05){
    if(i73<0.0003256012569181621){
     s0+=105.0;
     s1+=10765.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i17<0.004110430367290974){
     s0+=65.0;
     s1+=28.0;
    } else {
     s0+=1.0;
     s1+=231.0;
    }
   }
  }
 }
}
if(i4<0.0005469322204589844){
 if(i7<1.0452277660369873){
  if(i1<0.08312517404556274){
   if(i27<1.0557184219360352){
    if(i33<0.00044825475197285414){
     s0+=41176.0;
    } else {
     s0+=716.0;
     s1+=2.0;
    }
   } else {
    if(i57<-0.0013217926025390625){
     s0+=3986.0;
     s1+=548.0;
    } else {
     s0+=15676.0;
     s1+=230.0;
    }
   }
  } else {
   if(i20<-1.3053417205810547e-05){
    if(i70<1.0147079229354858){
     s0+=309.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i16<-0.002094864845275879){
     s0+=67.0;
     s1+=13.0;
    } else {
     s0+=76.0;
     s1+=236.0;
    }
   }
  }
 } else {
  if(i6<9.000301361083984e-06){
   if(i5<-2.8535703677334823e-05){
    if(i30<0.012350821867585182){
     s0+=597.0;
     s1+=160.0;
    } else {
     s0+=526.0;
     s1+=1198.0;
    }
   } else {
    if(i71<1.0004749298095703){
     s0+=5010.0;
     s1+=658.0;
    } else {
     s0+=979.0;
     s1+=488.0;
    }
   }
  } else {
   if(i2<0.09637400507926941){
    if(i29<1.1039612293243408){
     s0+=197.0;
     s1+=458.0;
    } else {
     s0+=950.0;
     s1+=181.0;
    }
   } else {
    if(i13<0.00033360719680786133){
     s0+=45.0;
     s1+=870.0;
    } else {
     s0+=165.0;
     s1+=437.0;
    }
   }
  }
 }
} else {
 if(i53<0.9992579221725464){
  s0+=197.0;
 } else {
  if(i8<1.0041425228118896){
   if(i7<1.1368224620819092){
    if(i35<0.0024754544720053673){
     s0+=1.0;
     s1+=471.0;
    } else {
     s0+=356.0;
     s1+=650.0;
    }
   } else {
    if(i58<0.001074147061444819){
     s0+=8.0;
     s1+=42.0;
    } else {
     s1+=791.0;
    }
   }
  } else {
   if(i15<-0.00044476985931396484){
    if(i43<0.02675807476043701){
     s0+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i68<0.9975413084030151){
     s0+=24.0;
     s1+=336.0;
    } else {
     s0+=22.0;
     s1+=9385.0;
    }
   }
  }
 }
}
if(i21<1.00885009765625){
 if(i3<0.08104267716407776){
  if(i4<0.0006022751331329346){
   if(i33<0.000304182234685868){
    if(i22<1.0115526914596558){
     s0+=56247.0;
     s1+=573.0;
    } else {
     s0+=10.0;
     s1+=20.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=4121.0;
     s1+=1442.0;
    } else {
     s0+=7300.0;
     s1+=324.0;
    }
   }
  } else {
   if(i33<0.00016154817421920598){
    if(i73<6.753872730769217e-05){
     s1+=3.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i8<1.003954291343689){
     s0+=126.0;
     s1+=282.0;
    } else {
     s0+=31.0;
     s1+=749.0;
    }
   }
  }
 } else {
  if(i36<0.0015202907379716635){
   if(i33<0.002313578501343727){
    if(i39<0.0004960199585184455){
     s0+=49.0;
     s1+=8.0;
    } else {
     s0+=26.0;
     s1+=201.0;
    }
   } else {
    if(i65<-0.02338200807571411){
     s0+=289.0;
     s1+=7.0;
    } else {
     s0+=47.0;
     s1+=28.0;
    }
   }
  } else {
   if(i2<0.10273474454879761){
    if(i70<0.9944178462028503){
     s0+=4.0;
     s1+=155.0;
    } else {
     s0+=176.0;
     s1+=48.0;
    }
   } else {
    if(i40<0.08311218023300171){
     s0+=5.0;
     s1+=1743.0;
    } else {
     s0+=97.0;
     s1+=510.0;
    }
   }
  }
 }
} else {
 if(i1<0.0850517749786377){
  if(i17<0.002911567920818925){
   if(i50<-0.00033436110243201256){
    if(i71<0.9971078634262085){
     s1+=13.0;
    } else {
     s0+=917.0;
     s1+=9.0;
    }
   } else {
    if(i16<0.0004912018775939941){
     s0+=435.0;
     s1+=20.0;
    } else {
     s0+=83.0;
     s1+=166.0;
    }
   }
  } else {
   if(i28<1.0043530464172363){
    if(i32<1.144597053527832){
     s1+=8.0;
    } else {
     s0+=198.0;
     s1+=10.0;
    }
   } else {
    if(i38<0.0019001783803105354){
     s0+=20.0;
     s1+=324.0;
    } else {
     s0+=55.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i34<0.9988831281661987){
   if(i38<0.04387877136468887){
    s0+=102.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i50<-0.0006692104507237673){
    if(i1<0.11130407452583313){
     s0+=38.0;
     s1+=52.0;
    } else {
     s0+=47.0;
     s1+=6949.0;
    }
   } else {
    if(i47<0.003915667533874512){
     s0+=112.0;
     s1+=2625.0;
    } else {
     s0+=461.0;
     s1+=907.0;
    }
   }
  }
 }
}
if(i6<3.820657730102539e-05){
 if(i0<0.08389636874198914){
  if(i7<1.0410068035125732){
   if(i51<0.0002624749031383544){
    if(i5<-4.6293520426843315e-05){
     s0+=114.0;
     s1+=29.0;
    } else {
     s0+=48612.0;
     s1+=104.0;
    }
   } else {
    if(i31<1.157791018486023){
     s0+=3768.0;
     s1+=459.0;
    } else {
     s0+=6834.0;
     s1+=15.0;
    }
   }
  } else {
   if(i22<0.990405261516571){
    if(i0<0.029227524995803833){
     s0+=1037.0;
     s1+=173.0;
    } else {
     s0+=315.0;
     s1+=413.0;
    }
   } else {
    if(i5<-3.1628434953745455e-05){
     s0+=994.0;
     s1+=485.0;
    } else {
     s0+=7186.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i60<0.03612077236175537){
   if(i39<0.0004816732252947986){
    s0+=59.0;
   } else {
    if(i5<-1.287015857087681e-05){
     s0+=172.0;
     s1+=2461.0;
    } else {
     s0+=235.0;
     s1+=210.0;
    }
   }
  } else {
   if(i42<-5.641010716317396e-07){
    if(i1<0.19536441564559937){
     s0+=475.0;
     s1+=267.0;
    } else {
     s0+=59.0;
     s1+=450.0;
    }
   } else {
    if(i53<1.0000669956207275){
     s0+=395.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i8<0.9999659061431885){
  s0+=264.0;
 } else {
  if(i51<0.000179713882971555){
   if(i63<9.964442142518237e-07){
    s0+=55.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i15<6.258487701416016e-06){
    if(i1<0.13191434741020203){
     s0+=220.0;
     s1+=504.0;
    } else {
     s0+=21.0;
     s1+=880.0;
    }
   } else {
    if(i5<-4.32968299719505e-05){
     s0+=6.0;
     s1+=10295.0;
    } else {
     s0+=119.0;
     s1+=123.0;
    }
   }
  }
 }
}
if(i7<1.052894115447998){
 if(i1<0.08356666564941406){
  if(i47<-0.001137852668762207){
   if(i27<1.1570631265640259){
    if(i31<1.0670123100280762){
     s0+=1346.0;
     s1+=6.0;
    } else {
     s0+=756.0;
     s1+=682.0;
    }
   } else {
    if(i2<0.06651011109352112){
     s0+=2772.0;
     s1+=20.0;
    } else {
     s0+=36.0;
     s1+=8.0;
    }
   }
  } else {
   if(i1<0.07116428017616272){
    if(i19<1.0006153583526611){
     s0+=54532.0;
     s1+=193.0;
    } else {
     s0+=2682.0;
     s1+=231.0;
    }
   } else {
    if(i18<1.0071556568145752){
     s0+=1368.0;
     s1+=142.0;
    } else {
     s0+=15.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i8<0.9956707954406738){
   if(i52<0.00018563203047960997){
    s0+=312.0;
   } else {
    if(i57<0.003790557384490967){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i27<1.0596027374267578){
    if(i26<0.9889522790908813){
     s1+=3.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i46<0.004028350114822388){
     s0+=43.0;
     s1+=753.0;
    } else {
     s0+=40.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i1<0.08502998948097229){
  if(i20<1.9252300262451172e-05){
   if(i24<1.0920991897583008){
    if(i22<0.9909160137176514){
     s0+=93.0;
     s1+=208.0;
    } else {
     s0+=1749.0;
     s1+=409.0;
    }
   } else {
    if(i5<-5.75593403482344e-05){
     s0+=108.0;
     s1+=92.0;
    } else {
     s0+=2942.0;
     s1+=124.0;
    }
   }
  } else {
   if(i4<0.0005786418914794922){
    if(i23<0.9928461313247681){
     s0+=14.0;
     s1+=43.0;
    } else {
     s0+=405.0;
     s1+=66.0;
    }
   } else {
    if(i52<6.8559282226488e-05){
     s0+=2.0;
     s1+=439.0;
    } else {
     s0+=140.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i4<0.0004838109016418457){
   if(i36<0.0005118409171700478){
    if(i38<0.0007914893794804811){
     s0+=49.0;
     s1+=45.0;
    } else {
     s0+=224.0;
    }
   } else {
    if(i43<0.04670232534408569){
     s0+=87.0;
     s1+=1619.0;
    } else {
     s0+=997.0;
     s1+=975.0;
    }
   }
  } else {
   if(i4<0.0008673667907714844){
    if(i0<0.1271650791168213){
     s0+=109.0;
     s1+=212.0;
    } else {
     s0+=19.0;
     s1+=933.0;
    }
   } else {
    if(i12<0.9965437650680542){
     s0+=18.0;
     s1+=95.0;
    } else {
     s0+=19.0;
     s1+=9548.0;
    }
   }
  }
 }
}
if(i0<0.08502185344696045){
 if(i14<1.0043151378631592){
  if(i25<0.014297086745500565){
   if(i69<0.0015784705756232142){
    if(i8<1.0024950504302979){
     s0+=54060.0;
     s1+=301.0;
    } else {
     s0+=46.0;
     s1+=28.0;
    }
   } else {
    if(i10<0.9926044940948486){
     s0+=822.0;
     s1+=243.0;
    } else {
     s0+=1973.0;
     s1+=101.0;
    }
   }
  } else {
   if(i7<1.0398929119110107){
    if(i8<1.0009424686431885){
     s0+=9037.0;
     s1+=259.0;
    } else {
     s0+=56.0;
     s1+=82.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=461.0;
     s1+=764.0;
    } else {
     s0+=2845.0;
     s1+=556.0;
    }
   }
  }
 } else {
  if(i6<3.3915042877197266e-05){
   if(i0<0.06298056244850159){
    if(i27<1.083996295928955){
     s0+=6.0;
     s1+=22.0;
    } else {
     s0+=415.0;
     s1+=8.0;
    }
   } else {
    if(i43<0.030536234378814697){
     s1+=51.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  } else {
   if(i73<0.0001368282246403396){
    if(i51<0.00016081187641248107){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=725.0;
    }
   } else {
    if(i19<1.0037219524383545){
     s0+=53.0;
     s1+=5.0;
    } else {
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i12<1.0002765655517578){
  if(i40<0.06008654832839966){
   if(i31<1.0679112672805786){
    s0+=86.0;
   } else {
    if(i60<0.04049655795097351){
     s0+=10.0;
     s1+=1419.0;
    } else {
     s0+=12.0;
     s1+=44.0;
    }
   }
  } else {
   if(i10<1.0126893520355225){
    if(i42<-2.8019394449074753e-06){
     s0+=275.0;
     s1+=343.0;
    } else {
     s0+=644.0;
     s1+=83.0;
    }
   } else {
    if(i2<0.2376638948917389){
     s0+=81.0;
     s1+=109.0;
    } else {
     s0+=1.0;
     s1+=515.0;
    }
   }
  }
 } else {
  if(i5<-4.2323299567215145e-05){
   if(i1<0.12098944187164307){
    if(i49<0.01646915078163147){
     s0+=27.0;
     s1+=1013.0;
    } else {
     s0+=58.0;
     s1+=19.0;
    }
   } else {
    if(i30<0.022078588604927063){
     s0+=30.0;
     s1+=1390.0;
    } else {
     s1+=8031.0;
    }
   }
  } else {
   if(i67<1.028886318206787){
    if(i16<-0.0042830705642700195){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=41.0;
     s1+=596.0;
    }
   } else {
    if(i30<0.02761998027563095){
     s0+=247.0;
     s1+=69.0;
    } else {
     s0+=14.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i11<1.005615234375){
 if(i0<0.08355346322059631){
  if(i4<0.000634998083114624){
   if(i7<1.042891263961792){
    if(i46<-0.001657634973526001){
     s0+=1829.0;
     s1+=232.0;
    } else {
     s0+=58419.0;
     s1+=433.0;
    }
   } else {
    if(i32<1.1034480333328247){
     s0+=2253.0;
     s1+=971.0;
    } else {
     s0+=5829.0;
     s1+=459.0;
    }
   }
  } else {
   if(i48<0.003024846315383911){
    if(i31<1.0614044666290283){
     s0+=32.0;
    } else {
     s0+=35.0;
     s1+=351.0;
    }
   } else {
    if(i9<1.0305349826812744){
     s0+=7.0;
     s1+=16.0;
    } else {
     s0+=103.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i37<-0.0001398026943206787){
   if(i42<-1.1189409633516334e-05){
    if(i19<0.9962525367736816){
     s0+=11.0;
    } else {
     s1+=43.0;
    }
   } else {
    s0+=435.0;
   }
  } else {
   if(i2<0.12499764561653137){
    if(i48<0.05439278483390808){
     s0+=195.0;
     s1+=1267.0;
    } else {
     s0+=541.0;
     s1+=73.0;
    }
   } else {
    if(i42<-1.6772461094660684e-05){
     s0+=32.0;
     s1+=1859.0;
    } else {
     s0+=226.0;
     s1+=992.0;
    }
   }
  }
 }
} else {
 if(i0<0.06562250852584839){
  if(i35<0.00119309825822711){
   if(i61<4.3260122765786946e-05){
    s0+=18.0;
   } else {
    s1+=286.0;
   }
  } else {
   if(i42<-2.7617210434982553e-05){
    s1+=60.0;
   } else {
    if(i67<0.9961996078491211){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=622.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i32<1.3312374353408813){
   if(i5<-2.8790615033358335e-05){
    if(i42<-1.4456110875471495e-05){
     s0+=5.0;
     s1+=2251.0;
    } else {
     s0+=84.0;
     s1+=691.0;
    }
   } else {
    if(i58<0.0008700009202584624){
     s0+=171.0;
     s1+=11.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i42<-1.489865212533914e-06){
    if(i1<0.0837903618812561){
     s0+=6.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=7264.0;
    }
   } else {
    s0+=10.0;
   }
  }
 }
}
if(i8<1.0024597644805908){
 if(i0<0.08223840594291687){
  if(i38<0.00031277970992960036){
   if(i22<1.0113708972930908){
    if(i7<1.0581047534942627){
     s0+=47065.0;
     s1+=69.0;
    } else {
     s0+=49.0;
     s1+=18.0;
    }
   } else {
    if(i39<0.0002827990101650357){
     s0+=2.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i39<0.00046304825809784234){
     s0+=3238.0;
     s1+=149.0;
    } else {
     s0+=1510.0;
     s1+=1237.0;
    }
   } else {
    if(i58<0.006434008479118347){
     s0+=17049.0;
     s1+=623.0;
    } else {
     s0+=12.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i54<0.0027846992015838623){
   if(i19<0.9982243776321411){
    if(i42<-9.96266862784978e-06){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=131.0;
    }
   } else {
    if(i43<0.04244375228881836){
     s0+=34.0;
     s1+=1793.0;
    } else {
     s0+=169.0;
     s1+=386.0;
    }
   }
  } else {
   if(i0<0.13036960363388062){
    if(i46<0.0043562352657318115){
     s0+=249.0;
     s1+=259.0;
    } else {
     s0+=523.0;
     s1+=19.0;
    }
   } else {
    if(i5<-1.1628882930381224e-05){
     s0+=156.0;
     s1+=1253.0;
    } else {
     s0+=313.0;
     s1+=56.0;
    }
   }
  }
 }
} else {
 if(i5<-4.3521460611373186e-05){
  if(i68<1.0020465850830078){
   if(i38<0.0001858593604993075){
    s0+=10.0;
   } else {
    if(i26<1.0037221908569336){
     s0+=82.0;
     s1+=1475.0;
    } else {
     s0+=31.0;
     s1+=9271.0;
    }
   }
  } else {
   if(i58<0.003112216480076313){
    if(i18<0.9920337200164795){
     s0+=5.0;
     s1+=12.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i26<0.9817870855331421){
     s0+=24.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=392.0;
    }
   }
  }
 } else {
  if(i32<1.2392117977142334){
   if(i24<1.0503910779953003){
    s0+=7.0;
   } else {
    if(i72<-2.6563800474832533e-06){
     s1+=208.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i20<2.3066997528076172e-05){
    if(i23<1.1364331245422363){
     s0+=166.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=21.0;
   }
  }
 }
}
if(i0<0.08223840594291687){
 if(i11<1.0059242248535156){
  if(i13<0.0007192492485046387){
   if(i66<0.0007802886539138854){
    if(i33<0.0002956286771222949){
     s0+=55387.0;
     s1+=324.0;
    } else {
     s0+=5923.0;
     s1+=584.0;
    }
   } else {
    if(i28<0.9763650894165039){
     s0+=4080.0;
     s1+=109.0;
    } else {
     s0+=3119.0;
     s1+=1007.0;
    }
   }
  } else {
   if(i54<-0.0007303059101104736){
    if(i69<0.0010263582225888968){
     s0+=31.0;
     s1+=10.0;
    } else {
     s0+=55.0;
     s1+=306.0;
    }
   } else {
    if(i63<1.9226143194828182e-05){
     s0+=91.0;
     s1+=65.0;
    } else {
     s0+=231.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i19<1.001678705215454){
   if(i32<1.1657817363739014){
    if(i42<-2.9614466257044114e-06){
     s1+=169.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i29<1.4435875415802002){
     s0+=601.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i72<-5.097549092170084e-06){
    if(i12<0.9984028935432434){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=491.0;
    }
   } else {
    if(i51<0.00039000087417662144){
     s0+=48.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i30<0.024092823266983032){
  if(i46<0.004211157560348511){
   if(i27<1.0670123100280762){
    if(i37<9.182095527648926e-05){
     s0+=179.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=34.0;
    }
   } else {
    if(i65<-0.01809840463101864){
     s0+=190.0;
     s1+=299.0;
    } else {
     s0+=109.0;
     s1+=3343.0;
    }
   }
  } else {
   if(i11<1.012450933456421){
    if(i54<0.004817843437194824){
     s0+=253.0;
     s1+=215.0;
    } else {
     s0+=648.0;
     s1+=144.0;
    }
   } else {
    s1+=161.0;
   }
  }
 } else {
  if(i14<0.9890598058700562){
   if(i13<-0.00042697787284851074){
    s0+=102.0;
   } else {
    if(i9<1.064827799797058){
     s0+=26.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=184.0;
    }
   }
  } else {
   if(i17<0.003232328686863184){
    if(i6<3.802776336669922e-05){
     s0+=104.0;
     s1+=32.0;
    } else {
     s1+=88.0;
    }
   } else {
    if(i8<0.9946199655532837){
     s0+=13.0;
    } else {
     s0+=19.0;
     s1+=9395.0;
    }
   }
  }
 }
}
if(i15<0.00011497735977172852){
 if(i2<0.07863140106201172){
  if(i8<1.0024616718292236){
   if(i25<0.016553398221731186){
    if(i69<0.001842339988797903){
     s0+=55984.0;
     s1+=437.0;
    } else {
     s0+=2569.0;
     s1+=339.0;
    }
   } else {
    if(i59<0.0068637654185295105){
     s0+=8420.0;
     s1+=669.0;
    } else {
     s0+=1475.0;
     s1+=623.0;
    }
   }
  } else {
   if(i48<0.010929614305496216){
    if(i18<1.023012638092041){
     s0+=35.0;
     s1+=363.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i36<0.006694125942885876){
     s0+=8.0;
     s1+=10.0;
    } else {
     s0+=40.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i40<0.05683034658432007){
   if(i24<1.0474863052368164){
    if(i8<1.0014150142669678){
     s0+=77.0;
     s1+=4.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i20<-1.9311904907226562e-05){
     s0+=20.0;
    } else {
     s0+=60.0;
     s1+=2494.0;
    }
   }
  } else {
   if(i17<0.005988672841340303){
    if(i25<0.027972478419542313){
     s0+=1088.0;
     s1+=229.0;
    } else {
     s0+=409.0;
     s1+=437.0;
    }
   } else {
    if(i16<-0.004277437925338745){
     s0+=47.0;
     s1+=29.0;
    } else {
     s0+=89.0;
     s1+=1525.0;
    }
   }
  }
 }
} else {
 if(i2<0.05545380711555481){
  if(i4<0.000921785831451416){
   if(i48<-0.03182482719421387){
    if(i18<1.0264935493469238){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s0+=134.0;
     s1+=43.0;
    } else {
     s0+=513.0;
    }
   }
  } else {
   if(i59<0.003872131695970893){
    if(i34<1.000920057296753){
     s0+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=219.0;
   }
  }
 } else {
  if(i4<-4.26173210144043e-05){
   s0+=102.0;
  } else {
   if(i5<-4.335444828029722e-05){
    if(i24<1.0432554483413696){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=9484.0;
    }
   } else {
    if(i39<0.0011526714079082012){
     s1+=86.0;
    } else {
     s0+=83.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i1<0.0847247838973999){
 if(i19<1.001643180847168){
  if(i24<1.0485899448394775){
   if(i57<-0.0022396743297576904){
    if(i27<1.0547096729278564){
     s0+=975.0;
     s1+=1.0;
    } else {
     s0+=763.0;
     s1+=197.0;
    }
   } else {
    if(i26<1.0083168745040894){
     s0+=53954.0;
     s1+=113.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i42<-1.04055943666026e-05){
     s0+=21.0;
     s1+=396.0;
    } else {
     s0+=2884.0;
     s1+=894.0;
    }
   } else {
    if(i3<0.08011183142662048){
     s0+=9699.0;
     s1+=363.0;
    } else {
     s0+=20.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i4<0.0004864931106567383){
   if(i7<1.121130108833313){
    if(i53<1.000367522239685){
     s0+=135.0;
     s1+=68.0;
    } else {
     s0+=641.0;
     s1+=11.0;
    }
   } else {
    if(i62<0.5476272106170654){
     s1+=22.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   }
  } else {
   if(i35<0.0020400388166308403){
    s1+=515.0;
   } else {
    if(i47<-0.0011528432369232178){
     s0+=73.0;
     s1+=311.0;
    } else {
     s0+=129.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i17<0.004804733209311962){
  if(i13<-0.00041115283966064453){
   if(i37<-0.00012364983558654785){
    s0+=493.0;
   } else {
    if(i2<0.0790029764175415){
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i23<1.0851924419403076){
    if(i40<0.058077067136764526){
     s0+=53.0;
     s1+=1535.0;
    } else {
     s0+=364.0;
     s1+=508.0;
    }
   } else {
    if(i64<-0.005450783763080835){
     s0+=641.0;
     s1+=184.0;
    } else {
     s0+=53.0;
     s1+=222.0;
    }
   }
  }
 } else {
  if(i19<0.9986382722854614){
   if(i5<-4.834982973989099e-05){
    if(i16<-0.0034371018409729004){
     s0+=4.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i68<1.0024052858352661){
     s0+=90.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i11<0.9967447519302368){
    if(i1<0.11616292595863342){
     s0+=149.0;
     s1+=228.0;
    } else {
     s0+=23.0;
     s1+=1323.0;
    }
   } else {
    if(i16<0.0002282261848449707){
     s0+=39.0;
     s1+=1071.0;
    } else {
     s1+=8966.0;
    }
   }
  }
 }
}
if(i51<0.0003541068872436881){
 if(i6<3.93986701965332e-05){
  if(i2<0.09033522009849548){
   if(i21<1.0088136196136475){
    if(i27<1.0598037242889404){
     s0+=42151.0;
     s1+=2.0;
    } else {
     s0+=12812.0;
     s1+=369.0;
    }
   } else {
    if(i24<1.0610392093658447){
     s0+=14.0;
     s1+=131.0;
    } else {
     s0+=173.0;
     s1+=36.0;
    }
   }
  } else {
   if(i32<1.0670123100280762){
    s0+=19.0;
   } else {
    if(i6<-5.9723854064941406e-05){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i34<1.0008854866027832){
   if(i12<1.0018479824066162){
    s0+=206.0;
   } else {
    if(i39<0.0024128095246851444){
     s1+=37.0;
    } else {
     s0+=74.0;
     s1+=4.0;
    }
   }
  } else {
   if(i33<0.00011954280489590019){
    if(i50<-0.00027580378809943795){
     s1+=1.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=355.0;
   }
  }
 }
} else {
 if(i6<1.150369644165039e-05){
  if(i7<1.0398883819580078){
   if(i2<0.06969079375267029){
    if(i36<0.0012965593487024307){
     s0+=2088.0;
     s1+=215.0;
    } else {
     s0+=5587.0;
     s1+=10.0;
    }
   } else {
    if(i11<0.9897046089172363){
     s0+=218.0;
     s1+=19.0;
    } else {
     s0+=27.0;
     s1+=103.0;
    }
   }
  } else {
   if(i0<0.08505642414093018){
    if(i31<1.103413462638855){
     s0+=1335.0;
     s1+=770.0;
    } else {
     s0+=4232.0;
     s1+=279.0;
    }
   } else {
    if(i6<-6.389617919921875e-05){
     s0+=270.0;
     s1+=78.0;
    } else {
     s0+=720.0;
     s1+=1672.0;
    }
   }
  }
 } else {
  if(i2<0.10043030977249146){
   if(i29<1.2392117977142334){
    if(i42<-8.410685950366315e-06){
     s0+=23.0;
     s1+=1227.0;
    } else {
     s0+=123.0;
     s1+=129.0;
    }
   } else {
    if(i4<0.0009598135948181152){
     s0+=820.0;
     s1+=231.0;
    } else {
     s0+=71.0;
     s1+=401.0;
    }
   }
  } else {
   if(i14<1.0016701221466064){
    if(i31<1.2590415477752686){
     s0+=187.0;
     s1+=507.0;
    } else {
     s0+=14.0;
     s1+=1329.0;
    }
   } else {
    if(i17<0.003094213781878352){
     s0+=29.0;
     s1+=343.0;
    } else {
     s0+=27.0;
     s1+=8642.0;
    }
   }
  }
 }
}
if(i4<0.0005474090576171875){
 if(i23<1.0406770706176758){
  if(i1<0.08262783288955688){
   if(i51<0.0003013138775713742){
    if(i27<1.0598037242889404){
     s0+=40757.0;
    } else {
     s0+=11743.0;
     s1+=261.0;
    }
   } else {
    if(i4<-0.00028836727142333984){
     s0+=9872.0;
     s1+=436.0;
    } else {
     s0+=3464.0;
     s1+=991.0;
    }
   }
  } else {
   if(i24<1.0494358539581299){
    if(i14<0.9939854145050049){
     s0+=300.0;
    } else {
     s0+=54.0;
     s1+=55.0;
    }
   } else {
    if(i13<-0.0003630518913269043){
     s0+=106.0;
     s1+=11.0;
    } else {
     s0+=49.0;
     s1+=1011.0;
    }
   }
  }
 } else {
  if(i44<0.09246551990509033){
   if(i1<0.09732559323310852){
    if(i36<0.0006880052387714386){
     s0+=1055.0;
     s1+=320.0;
    } else {
     s0+=1559.0;
     s1+=82.0;
    }
   } else {
    if(i54<0.0062010884284973145){
     s0+=197.0;
     s1+=950.0;
    } else {
     s0+=413.0;
     s1+=130.0;
    }
   }
  } else {
   if(i0<0.1053822934627533){
    if(i56<0.0013624009443446994){
     s0+=371.0;
     s1+=62.0;
    } else {
     s0+=30.0;
     s1+=42.0;
    }
   } else {
    if(i35<0.005296452436596155){
     s0+=303.0;
     s1+=264.0;
    } else {
     s0+=30.0;
     s1+=917.0;
    }
   }
  }
 }
} else {
 if(i1<0.06528717279434204){
  if(i66<0.0006487581413239241){
   if(i19<1.0019700527191162){
    if(i30<0.007753650192171335){
     s0+=299.0;
     s1+=17.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=76.0;
    } else {
     s0+=52.0;
     s1+=5.0;
    }
   }
  } else {
   if(i29<1.5682398080825806){
    if(i48<0.0011292099952697754){
     s0+=3.0;
     s1+=325.0;
    } else {
     s0+=16.0;
     s1+=13.0;
    }
   } else {
    if(i17<0.017105024307966232){
     s0+=51.0;
     s1+=6.0;
    } else {
     s1+=37.0;
    }
   }
  }
 } else {
  if(i2<0.1385507881641388){
   if(i48<0.06870511174201965){
    if(i49<0.019363999366760254){
     s0+=48.0;
     s1+=2061.0;
    } else {
     s0+=42.0;
     s1+=22.0;
    }
   } else {
    if(i52<8.820153016131371e-05){
     s0+=21.0;
     s1+=26.0;
    } else {
     s0+=84.0;
     s1+=4.0;
    }
   }
  } else {
   if(i17<0.003580384887754917){
    if(i63<3.557071977411397e-06){
     s0+=4.0;
     s1+=293.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.13674741983413696){
     s1+=7337.0;
    } else {
     s0+=6.0;
     s1+=1539.0;
    }
   }
  }
 }
}
if(i2<0.07742387056350708){
 if(i13<0.0005408525466918945){
  if(i59<0.007525492459535599){
   if(i0<0.07893544435501099){
    if(i57<-0.002100706100463867){
     s0+=4006.0;
     s1+=436.0;
    } else {
     s0+=60909.0;
     s1+=715.0;
    }
   } else {
    if(i32<1.113217830657959){
     s0+=38.0;
     s1+=159.0;
    } else {
     s0+=67.0;
     s1+=8.0;
    }
   }
  } else {
   if(i35<0.0011275650467723608){
    if(i31<1.081458568572998){
     s0+=883.0;
     s1+=75.0;
    } else {
     s0+=239.0;
     s1+=388.0;
    }
   } else {
    if(i36<0.0009458957356400788){
     s0+=851.0;
     s1+=6.0;
    } else {
     s0+=1404.0;
     s1+=254.0;
    }
   }
  }
 } else {
  if(i16<-0.00234144926071167){
   if(i9<1.095224380493164){
    if(i39<0.015598926693201065){
     s0+=560.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=9.0;
    }
   } else {
    s1+=30.0;
   }
  } else {
   if(i12<1.002495288848877){
    if(i69<0.0009036929695867002){
     s0+=204.0;
     s1+=29.0;
    } else {
     s0+=66.0;
     s1+=122.0;
    }
   } else {
    if(i46<0.001547098159790039){
     s0+=70.0;
     s1+=851.0;
    } else {
     s0+=67.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i0<0.11021235585212708){
  if(i45<0.06421899795532227){
   if(i5<7.827322406228632e-06){
    if(i65<-0.01889309659600258){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=45.0;
     s1+=1223.0;
    }
   } else {
    if(i40<0.029933959245681763){
     s1+=5.0;
    } else {
     s0+=34.0;
    }
   }
  } else {
   if(i54<0.0028606653213500977){
    if(i17<0.00547818373888731){
     s0+=299.0;
     s1+=106.0;
    } else {
     s0+=10.0;
     s1+=158.0;
    }
   } else {
    if(i38<0.001232414273545146){
     s0+=161.0;
     s1+=62.0;
    } else {
     s0+=551.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i13<-0.0004056096076965332){
   if(i35<0.007677504792809486){
    s0+=259.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i58<0.00031561870127916336){
    if(i65<-0.02317867986857891){
     s0+=179.0;
     s1+=26.0;
    } else {
     s0+=19.0;
     s1+=229.0;
    }
   } else {
    if(i17<0.003843686543405056){
     s0+=264.0;
     s1+=953.0;
    } else {
     s0+=62.0;
     s1+=11052.0;
    }
   }
  }
 }
}
if(i1<0.08502736687660217){
 if(i4<0.0005741715431213379){
  if(i46<-0.0015513598918914795){
   if(i32<1.1800893545150757){
    if(i27<1.055511236190796){
     s0+=864.0;
    } else {
     s0+=706.0;
     s1+=611.0;
    }
   } else {
    if(i2<0.06450292468070984){
     s0+=2416.0;
     s1+=155.0;
    } else {
     s0+=25.0;
     s1+=50.0;
    }
   }
  } else {
   if(i24<1.0486011505126953){
    if(i66<0.0006678648060187697){
     s0+=52152.0;
     s1+=83.0;
    } else {
     s0+=2651.0;
     s1+=146.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=2386.0;
     s1+=918.0;
    } else {
     s0+=7462.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i33<0.0001712801167741418){
   if(i63<2.1424270926218014e-06){
    if(i30<0.01064293086528778){
     s0+=127.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i42<-1.3289140952110756e-05){
    if(i47<0.00250166654586792){
     s0+=105.0;
     s1+=971.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   } else {
    if(i66<0.0006488087819889188){
     s0+=94.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i20<-1.6301870346069336e-05){
  if(i63<4.303809328121133e-05){
   if(i19<0.9988174438476562){
    if(i6<-3.30507755279541e-05){
     s0+=585.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i19<0.9977188110351562){
    s0+=30.0;
   } else {
    if(i12<0.9974834322929382){
     s1+=16.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i4<0.0005483627319335938){
   if(i61<0.00013470665726345032){
    if(i34<0.9997578859329224){
     s0+=96.0;
     s1+=296.0;
    } else {
     s0+=254.0;
     s1+=33.0;
    }
   } else {
    if(i40<0.05838528275489807){
     s0+=74.0;
     s1+=1686.0;
    } else {
     s0+=794.0;
     s1+=1309.0;
    }
   }
  } else {
   if(i1<0.13692575693130493){
    if(i38<0.00410841591656208){
     s0+=19.0;
     s1+=1141.0;
    } else {
     s0+=94.0;
     s1+=330.0;
    }
   } else {
    if(i15<-9.995698928833008e-05){
     s0+=12.0;
     s1+=426.0;
    } else {
     s0+=6.0;
     s1+=8834.0;
    }
   }
  }
 }
}
if(i8<1.002443790435791){
 if(i24<1.0576403141021729){
  if(i62<0.04345816746354103){
   if(i11<1.0058907270431519){
    if(i67<1.018653154373169){
     s0+=52207.0;
     s1+=250.0;
    } else {
     s0+=15.0;
     s1+=28.0;
    }
   } else {
    if(i5<-3.908473809133284e-05){
     s1+=32.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i6<-1.9490718841552734e-05){
    if(i16<-0.0019539296627044678){
     s0+=2845.0;
     s1+=4.0;
    } else {
     s0+=2130.0;
     s1+=161.0;
    }
   } else {
    if(i27<1.0596027374267578){
     s0+=908.0;
    } else {
     s0+=379.0;
     s1+=315.0;
    }
   }
  }
 } else {
  if(i4<0.00015485286712646484){
   if(i66<-0.0004379045276436955){
    if(i72<1.2775731192959938e-06){
     s0+=163.0;
     s1+=484.0;
    } else {
     s0+=99.0;
    }
   } else {
    if(i1<0.07841920852661133){
     s0+=9512.0;
     s1+=898.0;
    } else {
     s0+=1147.0;
     s1+=1525.0;
    }
   }
  } else {
   if(i30<0.023752287030220032){
    if(i39<0.001153342192992568){
     s0+=91.0;
     s1+=541.0;
    } else {
     s0+=1071.0;
     s1+=536.0;
    }
   } else {
    if(i17<0.002998282667249441){
     s0+=82.0;
     s1+=7.0;
    } else {
     s0+=43.0;
     s1+=1093.0;
    }
   }
  }
 }
} else {
 if(i31<1.3026196956634521){
  if(i1<0.0637250542640686){
   if(i69<0.002002416178584099){
    if(i32<1.2371783256530762){
     s0+=18.0;
     s1+=101.0;
    } else {
     s0+=167.0;
     s1+=6.0;
    }
   } else {
    if(i8<1.0035669803619385){
     s0+=37.0;
     s1+=43.0;
    } else {
     s0+=1.0;
     s1+=156.0;
    }
   }
  } else {
   if(i15<-0.00012505054473876953){
    if(i9<1.0464074611663818){
     s1+=32.0;
    } else {
     s0+=37.0;
     s1+=38.0;
    }
   } else {
    if(i65<-0.03818501532077789){
     s0+=27.0;
     s1+=66.0;
    } else {
     s0+=62.0;
     s1+=3037.0;
    }
   }
  }
 } else {
  if(i24<1.0652071237564087){
   s0+=4.0;
  } else {
   if(i25<0.009147197008132935){
    if(i15<-0.0002472400665283203){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=114.0;
    }
   } else {
    if(i3<0.020058393478393555){
     s0+=11.0;
     s1+=89.0;
    } else {
     s0+=6.0;
     s1+=7603.0;
    }
   }
  }
 }
}
if(i4<0.0005491673946380615){
 if(i25<0.022099249064922333){
  if(i11<1.0046720504760742){
   if(i47<-0.0014188587665557861){
    if(i8<0.9954379200935364){
     s0+=1057.0;
     s1+=11.0;
    } else {
     s0+=2078.0;
     s1+=694.0;
    }
   } else {
    if(i25<0.01617429219186306){
     s0+=56136.0;
     s1+=371.0;
    } else {
     s0+=3293.0;
     s1+=359.0;
    }
   }
  } else {
   if(i39<0.0011129627237096429){
    if(i19<1.000123381614685){
     s1+=195.0;
    } else {
     s0+=77.0;
     s1+=209.0;
    }
   } else {
    if(i37<8.761882781982422e-06){
     s0+=122.0;
     s1+=180.0;
    } else {
     s0+=724.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i2<0.06771838665008545){
   if(i31<1.185624122619629){
    if(i39<0.0004489478887990117){
     s0+=330.0;
     s1+=18.0;
    } else {
     s0+=411.0;
     s1+=579.0;
    }
   } else {
    if(i46<-0.011653393507003784){
     s0+=266.0;
     s1+=73.0;
    } else {
     s0+=5085.0;
     s1+=47.0;
    }
   }
  } else {
   if(i6<-5.415081977844238e-05){
    if(i17<0.007872020825743675){
     s0+=347.0;
     s1+=22.0;
    } else {
     s0+=8.0;
     s1+=86.0;
    }
   } else {
    if(i17<0.0033141644671559334){
     s0+=334.0;
     s1+=658.0;
    } else {
     s0+=132.0;
     s1+=1947.0;
    }
   }
  }
 }
} else {
 if(i38<0.00023369134578388184){
  if(i26<1.0088351964950562){
   s0+=196.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i30<0.018158484250307083){
   if(i8<1.0041351318359375){
    if(i39<0.0025004358030855656){
     s0+=2.0;
     s1+=398.0;
    } else {
     s0+=348.0;
     s1+=173.0;
    }
   } else {
    if(i64<-0.007971428334712982){
     s0+=27.0;
     s1+=26.0;
    } else {
     s0+=13.0;
     s1+=1821.0;
    }
   }
  } else {
   if(i68<0.9974833726882935){
    if(i13<0.000934302806854248){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=229.0;
    }
   } else {
    if(i53<1.0007874965667725){
     s0+=31.0;
     s1+=9100.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i20<1.5914440155029297e-05){
 if(i18<1.008399486541748){
  if(i25<0.02214714139699936){
   if(i49<-0.006163239479064941){
    if(i31<1.179337501525879){
     s0+=1097.0;
     s1+=416.0;
    } else {
     s0+=1080.0;
     s1+=58.0;
    }
   } else {
    if(i66<0.000783991243224591){
     s0+=56401.0;
     s1+=334.0;
    } else {
     s0+=2481.0;
     s1+=385.0;
    }
   }
  } else {
   if(i2<0.07678782939910889){
    if(i16<-0.0014670491218566895){
     s0+=4609.0;
     s1+=73.0;
    } else {
     s0+=861.0;
     s1+=634.0;
    }
   } else {
    if(i43<0.04791057109832764){
     s0+=42.0;
     s1+=899.0;
    } else {
     s0+=279.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i17<0.002920778002589941){
   if(i27<1.083398699760437){
    if(i42<-2.0755937839567196e-06){
     s0+=18.0;
     s1+=394.0;
    } else {
     s0+=124.0;
     s1+=22.0;
    }
   } else {
    if(i10<1.022678256034851){
     s0+=1578.0;
     s1+=113.0;
    } else {
     s0+=15.0;
     s1+=76.0;
    }
   }
  } else {
   if(i72<1.3144517652108334e-06){
    if(i5<-1.7262942492379807e-05){
     s0+=54.0;
     s1+=2108.0;
    } else {
     s0+=68.0;
     s1+=33.0;
    }
   } else {
    s0+=191.0;
   }
  }
 }
} else {
 if(i8<1.0018850564956665){
  if(i17<0.013416053727269173){
   if(i3<0.12805867195129395){
    if(i59<0.011237789876759052){
     s0+=1797.0;
     s1+=149.0;
    } else {
     s0+=68.0;
     s1+=77.0;
    }
   } else {
    if(i65<-0.0638391375541687){
     s0+=22.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=188.0;
    }
   }
  } else {
   if(i16<-0.005774438381195068){
    if(i58<0.007053446490317583){
     s0+=33.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i3<0.005628108978271484){
     s0+=25.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i38<0.0002258287277072668){
   if(i11<1.007957935333252){
    s0+=47.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i6<6.598234176635742e-05){
    if(i42<-1.4076405932428315e-05){
     s0+=149.0;
     s1+=950.0;
    } else {
     s0+=68.0;
     s1+=65.0;
    }
   } else {
    if(i26<0.9982924461364746){
     s0+=74.0;
     s1+=1078.0;
    } else {
     s0+=26.0;
     s1+=8280.0;
    }
   }
  }
 }
}
if(i3<0.06944340467453003){
 if(i19<1.0018699169158936){
  if(i24<1.0486011505126953){
   if(i46<-0.0017419755458831787){
    if(i24<1.0419425964355469){
     s0+=649.0;
     s1+=19.0;
    } else {
     s0+=149.0;
     s1+=70.0;
    }
   } else {
    if(i32<1.0717806816101074){
     s0+=35275.0;
     s1+=1.0;
    } else {
     s0+=19583.0;
     s1+=234.0;
    }
   }
  } else {
   if(i41<0.001780208433046937){
    if(i29<1.084442138671875){
     s0+=1654.0;
    } else {
     s0+=2850.0;
     s1+=1851.0;
    }
   } else {
    if(i32<1.181183099746704){
     s0+=1308.0;
     s1+=319.0;
    } else {
     s0+=6719.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i16<-0.0008150339126586914){
   if(i4<0.0002970695495605469){
    if(i61<0.001728476257994771){
     s0+=445.0;
     s1+=15.0;
    } else {
     s0+=17.0;
     s1+=22.0;
    }
   } else {
    if(i67<0.9898699522018433){
     s0+=57.0;
     s1+=155.0;
    } else {
     s0+=89.0;
     s1+=11.0;
    }
   }
  } else {
   if(i61<0.00030817248625680804){
    if(i6<8.386373519897461e-05){
     s0+=39.0;
    } else {
     s0+=5.0;
     s1+=102.0;
    }
   } else {
    if(i6<4.1425228118896484e-05){
     s0+=12.0;
     s1+=47.0;
    } else {
     s0+=5.0;
     s1+=1303.0;
    }
   }
  }
 }
} else {
 if(i4<0.00015610456466674805){
  if(i36<0.00045622797915712){
   if(i12<1.0011223554611206){
    if(i9<1.0168867111206055){
     s1+=2.0;
    } else {
     s0+=402.0;
     s1+=4.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i17<0.005449656397104263){
    if(i64<-0.00465199863538146){
     s0+=850.0;
     s1+=249.0;
    } else {
     s0+=378.0;
     s1+=725.0;
    }
   } else {
    if(i16<-0.004057496786117554){
     s0+=62.0;
     s1+=50.0;
    } else {
     s0+=76.0;
     s1+=728.0;
    }
   }
  }
 } else {
  if(i2<0.12589031457901){
   if(i43<0.05293935537338257){
    if(i57<0.008140623569488525){
     s0+=55.0;
     s1+=1006.0;
    } else {
     s0+=53.0;
     s1+=22.0;
    }
   } else {
    if(i32<1.124355673789978){
     s0+=19.0;
     s1+=131.0;
    } else {
     s0+=266.0;
     s1+=38.0;
    }
   }
  } else {
   if(i17<0.0029250220395624638){
    if(i11<1.0068790912628174){
     s0+=88.0;
     s1+=50.0;
    } else {
     s0+=2.0;
     s1+=162.0;
    }
   } else {
    if(i0<0.15315037965774536){
     s0+=22.0;
     s1+=550.0;
    } else {
     s0+=11.0;
     s1+=9029.0;
    }
   }
  }
 }
}
if(i0<0.084189772605896){
 if(i4<0.0006022751331329346){
  if(i59<0.008471273817121983){
   if(i3<0.06059253215789795){
    if(i35<0.0003090210957452655){
     s0+=35744.0;
     s1+=6.0;
    } else {
     s0+=28027.0;
     s1+=1018.0;
    }
   } else {
    if(i29<1.0840110778808594){
     s0+=871.0;
    } else {
     s0+=1779.0;
     s1+=396.0;
    }
   }
  } else {
   if(i37<-6.219744682312012e-05){
    if(i19<0.9983209371566772){
     s0+=863.0;
     s1+=2.0;
    } else {
     s0+=341.0;
     s1+=62.0;
    }
   } else {
    if(i29<1.1067204475402832){
     s0+=376.0;
     s1+=378.0;
    } else {
     s0+=1174.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i8<1.0041444301605225){
   if(i49<-0.005011022090911865){
    if(i68<1.0029265880584717){
     s0+=19.0;
     s1+=214.0;
    } else {
     s0+=20.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.001275177113711834){
     s0+=140.0;
     s1+=116.0;
    } else {
     s0+=142.0;
     s1+=7.0;
    }
   }
  } else {
   if(i36<0.00961223803460598){
    if(i48<0.04445430636405945){
     s0+=1.0;
     s1+=654.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i66<0.004232107661664486){
     s0+=16.0;
    } else {
     s0+=10.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i5<-1.3548056813306175e-05){
  if(i5<-4.850350524066016e-05){
   if(i73<0.0003307077568024397){
    if(i16<-0.004012554883956909){
     s0+=26.0;
     s1+=22.0;
    } else {
     s0+=154.0;
     s1+=11972.0;
    }
   } else {
    s0+=21.0;
   }
  } else {
   if(i48<0.043005675077438354){
    if(i57<0.009782850742340088){
     s0+=44.0;
     s1+=1037.0;
    } else {
     s0+=55.0;
     s1+=48.0;
    }
   } else {
    if(i70<1.056130290031433){
     s0+=170.0;
     s1+=392.0;
    } else {
     s0+=171.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i23<1.0421991348266602){
   if(i41<0.0012066690251231194){
    if(i11<0.9892616271972656){
     s0+=88.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=104.0;
    }
   } else {
    if(i63<1.7490279788034968e-05){
     s0+=2.0;
     s1+=116.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   }
  } else {
   if(i31<1.255998969078064){
    if(i6<3.826618194580078e-05){
     s0+=487.0;
     s1+=126.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i12<1.0020368099212646){
     s0+=320.0;
     s1+=7.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
}
if(i2<0.0782996118068695){
 if(i5<-4.561735113384202e-05){
  if(i29<1.2371783256530762){
   if(i68<0.9975277185440063){
    if(i53<0.9988900423049927){
     s0+=157.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i22<0.991153359413147){
     s0+=3.0;
     s1+=43.0;
    } else {
     s1+=865.0;
    }
   }
  } else {
   if(i19<1.0030179023742676){
    if(i46<-0.003912895917892456){
     s0+=524.0;
     s1+=197.0;
    } else {
     s0+=1798.0;
     s1+=81.0;
    }
   } else {
    if(i69<0.00322337681427598){
     s0+=154.0;
     s1+=29.0;
    } else {
     s0+=37.0;
     s1+=228.0;
    }
   }
  }
 } else {
  if(i24<1.0451585054397583){
   if(i46<-0.0017104148864746094){
    if(i5<1.431492819392588e-05){
     s0+=268.0;
     s1+=61.0;
    } else {
     s0+=447.0;
     s1+=2.0;
    }
   } else {
    if(i66<0.00073193886782974){
     s0+=50537.0;
     s1+=64.0;
    } else {
     s0+=1865.0;
     s1+=86.0;
    }
   }
  } else {
   if(i36<0.0014064987190067768){
    if(i71<1.0005390644073486){
     s0+=6091.0;
     s1+=850.0;
    } else {
     s0+=637.0;
     s1+=695.0;
    }
   } else {
    if(i6<6.473064422607422e-05){
     s0+=6678.0;
     s1+=103.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i5<-1.5008437912911177e-05){
  if(i5<-5.613853863906115e-05){
   if(i27<1.056171178817749){
    s0+=11.0;
   } else {
    if(i1<0.1275518834590912){
     s0+=131.0;
     s1+=1164.0;
    } else {
     s0+=15.0;
     s1+=10398.0;
    }
   }
  } else {
   if(i39<0.0023729288950562477){
    if(i26<1.0228934288024902){
     s0+=87.0;
     s1+=1208.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i0<0.12695705890655518){
     s0+=330.0;
     s1+=110.0;
    } else {
     s0+=95.0;
     s1+=542.0;
    }
   }
  }
 } else {
  if(i6<-5.9932470321655273e-05){
   if(i39<0.008494146168231964){
    s0+=360.0;
   } else {
    if(i24<1.0597400665283203){
     s0+=15.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i54<0.0023935437202453613){
    if(i52<2.9312901460798457e-05){
     s0+=82.0;
     s1+=23.0;
    } else {
     s0+=20.0;
     s1+=176.0;
    }
   } else {
    if(i8<1.0016908645629883){
     s0+=669.0;
     s1+=223.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
}
if(i6<3.7610530853271484e-05){
 if(i0<0.08223840594291687){
  if(i24<1.0451585054397583){
   if(i27<1.0557184219360352){
    if(i44<0.06419296562671661){
     s0+=40436.0;
    } else {
     s0+=259.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.0007391273975372314){
     s0+=2272.0;
     s1+=195.0;
    } else {
     s0+=10853.0;
     s1+=41.0;
    }
   }
  } else {
   if(i29<1.1013743877410889){
    if(i25<0.011788798496127129){
     s0+=2860.0;
     s1+=313.0;
    } else {
     s0+=668.0;
     s1+=1039.0;
    }
   } else {
    if(i54<-0.0022855401039123535){
     s0+=1432.0;
     s1+=256.0;
    } else {
     s0+=9963.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i37<-0.00013753771781921387){
   if(i72<-2.438586761854822e-06){
    if(i5<-2.5663133783382364e-05){
     s1+=45.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i36<0.010981746017932892){
     s0+=464.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i49<0.01710820198059082){
    if(i35<0.00032455965992994606){
     s0+=65.0;
     s1+=6.0;
    } else {
     s0+=296.0;
     s1+=2472.0;
    }
   } else {
    if(i5<-2.770539140328765e-05){
     s0+=212.0;
     s1+=776.0;
    } else {
     s0+=531.0;
     s1+=136.0;
    }
   }
  }
 }
} else {
 if(i19<0.9988232851028442){
  s0+=326.0;
 } else {
  if(i51<0.00017990896594710648){
   if(i52<1.013786004477879e-05){
    s0+=61.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i17<0.002279817359521985){
    if(i0<0.09150281548500061){
     s0+=96.0;
     s1+=45.0;
    } else {
     s0+=13.0;
     s1+=152.0;
    }
   } else {
    if(i11<1.0012471675872803){
     s0+=234.0;
     s1+=1454.0;
    } else {
     s0+=59.0;
     s1+=9963.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i1<0.08370846509933472){
  if(i24<1.0451585054397583){
   if(i18<1.0089375972747803){
    if(i33<0.00026389065897092223){
     s0+=47338.0;
     s1+=76.0;
    } else {
     s0+=6377.0;
     s1+=158.0;
    }
   } else {
    if(i66<0.00014166926848702133){
     s0+=9.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i8<0.9976563453674316){
    if(i3<0.05379047989845276){
     s0+=5950.0;
     s1+=112.0;
    } else {
     s0+=798.0;
     s1+=93.0;
    }
   } else {
    if(i25<0.021680161356925964){
     s0+=7187.0;
     s1+=841.0;
    } else {
     s0+=839.0;
     s1+=831.0;
    }
   }
  }
 } else {
  if(i19<0.9985139966011047){
   if(i72<-3.0435244298132602e-06){
    if(i68<1.0015754699707031){
     s0+=30.0;
     s1+=26.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i41<0.035699669271707535){
     s0+=676.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i58<0.0010396322468295693){
    if(i68<0.9999172687530518){
     s0+=207.0;
     s1+=900.0;
    } else {
     s0+=560.0;
     s1+=256.0;
    }
   } else {
    if(i53<1.0003812313079834){
     s0+=272.0;
     s1+=2179.0;
    } else {
     s0+=129.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i32<1.0795294046401978){
  s0+=178.0;
 } else {
  if(i3<0.05480611324310303){
   if(i33<0.00016751090879552066){
    if(i63<-1.6016672361729434e-06){
     s0+=62.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i52<0.00012740647071041167){
     s0+=80.0;
     s1+=1063.0;
    } else {
     s0+=81.0;
     s1+=131.0;
    }
   }
  } else {
   if(i30<0.018109388649463654){
    if(i52<9.572043200023472e-05){
     s0+=65.0;
     s1+=1516.0;
    } else {
     s0+=111.0;
     s1+=126.0;
    }
   } else {
    if(i16<-0.0008514523506164551){
     s0+=20.0;
     s1+=496.0;
    } else {
     s0+=2.0;
     s1+=8362.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i20<2.3066997528076172e-05){
  if(i51<0.00031646830029785633){
   if(i22<1.0095620155334473){
    if(i47<-0.002844780683517456){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=53239.0;
     s1+=292.0;
    }
   } else {
    if(i3<0.056098222732543945){
     s0+=100.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=48.0;
    }
   }
  } else {
   if(i3<0.07240292429924011){
    if(i35<0.0010945041431114078){
     s0+=2810.0;
     s1+=1013.0;
    } else {
     s0+=8254.0;
     s1+=293.0;
    }
   } else {
    if(i0<0.0861361026763916){
     s0+=149.0;
     s1+=55.0;
    } else {
     s0+=37.0;
     s1+=349.0;
    }
   }
  }
 } else {
  if(i0<0.05827382206916809){
   if(i42<-3.3140484447358176e-05){
    if(i65<0.007153351325541735){
     s0+=261.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i57<-0.0015097260475158691){
     s0+=33.0;
     s1+=98.0;
    } else {
     s0+=149.0;
     s1+=14.0;
    }
   }
  } else {
   if(i8<1.0011813640594482){
    if(i47<-0.0018406212329864502){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=101.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.003425687551498413){
     s0+=1.0;
     s1+=457.0;
    } else {
     s0+=7.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i39<0.005791362840682268){
  if(i14<1.0018815994262695){
   if(i5<-1.6403873814851977e-05){
    if(i36<0.001426001195795834){
     s0+=125.0;
     s1+=989.0;
    } else {
     s0+=1048.0;
     s1+=674.0;
    }
   } else {
    if(i0<0.08195340633392334){
     s0+=2664.0;
     s1+=134.0;
    } else {
     s0+=853.0;
     s1+=301.0;
    }
   }
  } else {
   if(i5<-4.33099121437408e-05){
    if(i13<-0.0002747178077697754){
     s0+=23.0;
    } else {
     s0+=35.0;
     s1+=2331.0;
    }
   } else {
    if(i1<0.09198659658432007){
     s0+=318.0;
     s1+=98.0;
    } else {
     s0+=67.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i2<0.09396013617515564){
   if(i46<-0.001766890287399292){
    if(i2<0.0011035501956939697){
     s0+=21.0;
     s1+=14.0;
    } else {
     s0+=11.0;
     s1+=281.0;
    }
   } else {
    if(i59<0.014450740069150925){
     s0+=456.0;
     s1+=36.0;
    } else {
     s0+=13.0;
     s1+=20.0;
    }
   }
  } else {
   if(i16<0.00022643804550170898){
    if(i61<0.00020229823712725192){
     s0+=28.0;
     s1+=25.0;
    } else {
     s0+=73.0;
     s1+=1686.0;
    }
   } else {
    s1+=7789.0;
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i23<1.0398095846176147){
  if(i24<1.0486011505126953){
   if(i24<1.0428826808929443){
    if(i57<-0.002239435911178589){
     s0+=1568.0;
     s1+=109.0;
    } else {
     s0+=50390.0;
     s1+=60.0;
    }
   } else {
    if(i21<0.9927122592926025){
     s0+=555.0;
     s1+=146.0;
    } else {
     s0+=3001.0;
     s1+=37.0;
    }
   }
  } else {
   if(i1<0.07461667060852051){
    if(i25<0.016423754394054413){
     s0+=7354.0;
     s1+=425.0;
    } else {
     s0+=3302.0;
     s1+=767.0;
    }
   } else {
    if(i11<0.9849799871444702){
     s0+=158.0;
     s1+=93.0;
    } else {
     s0+=132.0;
     s1+=1030.0;
    }
   }
  }
 } else {
  if(i50<-0.0001619137910893187){
   if(i8<0.996524453163147){
    if(i61<0.0016344590112566948){
     s0+=474.0;
     s1+=16.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i2<0.09637689590454102){
     s0+=1151.0;
     s1+=431.0;
    } else {
     s0+=352.0;
     s1+=1864.0;
    }
   }
  } else {
   if(i58<0.005292147397994995){
    if(i1<0.11306911706924438){
     s0+=2003.0;
     s1+=163.0;
    } else {
     s0+=250.0;
     s1+=171.0;
    }
   } else {
    s1+=40.0;
   }
  }
 }
} else {
 if(i41<0.0003116395091637969){
  s0+=174.0;
 } else {
  if(i17<0.0019220530521124601){
   if(i5<-5.4940337577136233e-05){
    s1+=111.0;
   } else {
    if(i52<3.423328234930523e-05){
     s0+=121.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i16<-0.0003604292869567871){
    if(i24<1.1228240728378296){
     s0+=139.0;
     s1+=230.0;
    } else {
     s0+=53.0;
     s1+=818.0;
    }
   } else {
    if(i16<0.001217484474182129){
     s0+=61.0;
     s1+=1925.0;
    } else {
     s1+=8502.0;
    }
   }
  }
 }
}
if(i16<0.0007778406143188477){
 if(i2<0.08341610431671143){
  if(i4<0.0006026923656463623){
   if(i25<0.01488492637872696){
    if(i66<0.0007818647427484393){
     s0+=54354.0;
     s1+=256.0;
    } else {
     s0+=2954.0;
     s1+=410.0;
    }
   } else {
    if(i14<0.9943885803222656){
     s0+=8295.0;
     s1+=144.0;
    } else {
     s0+=3170.0;
     s1+=1447.0;
    }
   }
  } else {
   if(i17<0.00424905214458704){
    if(i40<3.269314765930176e-05){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=104.0;
     s1+=4.0;
    }
   } else {
    if(i15<-0.00013363361358642578){
     s0+=101.0;
     s1+=158.0;
    } else {
     s0+=13.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i8<0.9959948062896729){
   if(i36<0.004613542929291725){
    if(i37<-0.00014004111289978027){
     s0+=357.0;
    } else {
     s0+=26.0;
     s1+=4.0;
    }
   } else {
    if(i39<0.008429275825619698){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=96.0;
    }
   }
  } else {
   if(i2<0.11452457308769226){
    if(i25<0.019846539944410324){
     s0+=415.0;
     s1+=295.0;
    } else {
     s0+=172.0;
     s1+=737.0;
    }
   } else {
    if(i65<-0.03506425395607948){
     s0+=301.0;
     s1+=850.0;
    } else {
     s0+=87.0;
     s1+=2450.0;
    }
   }
  }
 }
} else {
 if(i8<1.0041344165802002){
  if(i9<1.0384457111358643){
   if(i27<1.1226119995117188){
    if(i8<1.0011653900146484){
     s0+=86.0;
     s1+=2.0;
    } else {
     s1+=48.0;
    }
   } else {
    s0+=325.0;
   }
  } else {
   if(i17<0.0025642092805355787){
    if(i31<1.1386182308197021){
     s0+=25.0;
     s1+=197.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i42<-8.812061196294962e-07){
     s0+=15.0;
     s1+=1041.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  s1+=8754.0;
 }
}
if(i10<1.0081671476364136){
 if(i5<-4.985728446627036e-05){
  if(i30<0.036385856568813324){
   if(i16<-0.0015686750411987305){
    if(i72<-1.6580977899138816e-05){
     s0+=4.0;
     s1+=45.0;
    } else {
     s0+=1599.0;
     s1+=99.0;
    }
   } else {
    if(i31<1.0634281635284424){
     s0+=266.0;
    } else {
     s0+=395.0;
     s1+=1009.0;
    }
   }
  } else {
   if(i11<0.9638596773147583){
    if(i72<-1.2829430488636717e-05){
     s1+=20.0;
    } else {
     s0+=137.0;
     s1+=5.0;
    }
   } else {
    if(i3<0.0024182498455047607){
     s0+=20.0;
     s1+=46.0;
    } else {
     s0+=9.0;
     s1+=1815.0;
    }
   }
  }
 } else {
  if(i33<0.0003038939321413636){
   if(i0<0.08468303084373474){
    if(i46<-0.0019115209579467773){
     s0+=314.0;
     s1+=80.0;
    } else {
     s0+=56277.0;
     s1+=459.0;
    }
   } else {
    if(i31<1.069220781326294){
     s0+=48.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=132.0;
    }
   }
  } else {
   if(i0<0.07519418001174927){
    if(i32<1.1037919521331787){
     s0+=2753.0;
     s1+=803.0;
    } else {
     s0+=6764.0;
     s1+=239.0;
    }
   } else {
    if(i19<0.9985312223434448){
     s0+=425.0;
     s1+=15.0;
    } else {
     s0+=825.0;
     s1+=1251.0;
    }
   }
  }
 }
} else {
 if(i13<0.0005639791488647461){
  if(i53<0.9998970031738281){
   if(i36<0.0004789647355210036){
    s0+=97.0;
   } else {
    if(i5<-2.5320150598417968e-05){
     s0+=40.0;
     s1+=2381.0;
    } else {
     s0+=172.0;
     s1+=48.0;
    }
   }
  } else {
   if(i2<0.1872396469116211){
    if(i41<0.0014073369093239307){
     s0+=21.0;
     s1+=233.0;
    } else {
     s0+=869.0;
     s1+=140.0;
    }
   } else {
    if(i32<1.2527469396591187){
     s0+=21.0;
    } else {
     s0+=13.0;
     s1+=345.0;
    }
   }
  }
 } else {
  if(i26<1.0244059562683105){
   if(i15<6.079673767089844e-06){
    if(i10<1.0154846906661987){
     s0+=92.0;
     s1+=152.0;
    } else {
     s1+=237.0;
    }
   } else {
    if(i54<0.012849867343902588){
     s1+=1811.0;
    } else {
     s0+=2.0;
     s1+=52.0;
    }
   }
  } else {
   s1+=5641.0;
  }
 }
}
if(i6<3.653764724731445e-05){
 if(i7<1.0452277660369873){
  if(i45<0.08623617887496948){
   if(i2<0.07722920179367065){
    if(i38<0.0003134755534119904){
     s0+=46158.0;
     s1+=54.0;
    } else {
     s0+=15472.0;
     s1+=785.0;
    }
   } else {
    if(i6<-4.845857620239258e-05){
     s0+=177.0;
     s1+=4.0;
    } else {
     s0+=118.0;
     s1+=206.0;
    }
   }
  } else {
   if(i3<0.08786904811859131){
    s0+=1.0;
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i25<0.02194569632411003){
   if(i1<0.08195340633392334){
    if(i31<1.103413462638855){
     s0+=1714.0;
     s1+=513.0;
    } else {
     s0+=3905.0;
     s1+=103.0;
    }
   } else {
    if(i16<0.0004898905754089355){
     s0+=874.0;
     s1+=446.0;
    } else {
     s0+=43.0;
     s1+=471.0;
    }
   }
  } else {
   if(i1<0.0854291021823883){
    if(i41<0.0020256638526916504){
     s0+=154.0;
     s1+=489.0;
    } else {
     s0+=1155.0;
     s1+=209.0;
    }
   } else {
    if(i43<0.05625048279762268){
     s0+=59.0;
     s1+=1506.0;
    } else {
     s0+=497.0;
     s1+=735.0;
    }
   }
  }
 }
} else {
 if(i35<0.0003938460722565651){
  s0+=338.0;
 } else {
  if(i30<0.016113854944705963){
   if(i8<1.0041275024414062){
    if(i41<0.0018134602578356862){
     s0+=24.0;
     s1+=378.0;
    } else {
     s0+=302.0;
     s1+=139.0;
    }
   } else {
    if(i46<0.007560253143310547){
     s0+=20.0;
     s1+=1595.0;
    } else {
     s0+=16.0;
     s1+=19.0;
    }
   }
  } else {
   if(i1<0.011663466691970825){
    if(i15<-0.00042694807052612305){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    if(i0<0.11053186655044556){
     s0+=43.0;
     s1+=715.0;
    } else {
     s0+=10.0;
     s1+=8715.0;
    }
   }
  }
 }
}
if(i6<3.713369369506836e-05){
 if(i1<0.08502665162086487){
  if(i33<0.00029970522155053914){
   if(i0<0.07756069302558899){
    if(i22<1.0100734233856201){
     s0+=55645.0;
     s1+=420.0;
    } else {
     s0+=276.0;
     s1+=81.0;
    }
   } else {
    if(i45<0.052266836166381836){
     s0+=12.0;
     s1+=65.0;
    } else {
     s0+=138.0;
     s1+=14.0;
    }
   }
  } else {
   if(i15<-0.0002046823501586914){
    if(i30<0.07249017059803009){
     s0+=6968.0;
     s1+=198.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i56<0.000422230688855052){
     s0+=4791.0;
     s1+=783.0;
    } else {
     s0+=668.0;
     s1+=527.0;
    }
   }
  }
 } else {
  if(i34<0.9991060495376587){
   if(i5<-5.230044189374894e-05){
    s1+=26.0;
   } else {
    if(i42<-1.0199353710049763e-05){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=655.0;
    }
   }
  } else {
   if(i54<0.0033918917179107666){
    if(i0<0.08492588996887207){
     s0+=86.0;
     s1+=41.0;
    } else {
     s0+=221.0;
     s1+=2039.0;
    }
   } else {
    if(i52<3.909870429197326e-05){
     s0+=449.0;
     s1+=235.0;
    } else {
     s0+=437.0;
     s1+=1030.0;
    }
   }
  }
 }
} else {
 if(i38<0.00026359251933172345){
  if(i34<1.000810146331787){
   s0+=289.0;
  } else {
   if(i25<0.011408285237848759){
    s1+=20.0;
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i29<1.082350254058838){
   s0+=64.0;
  } else {
   if(i17<0.0022347925696521997){
    if(i1<0.09159815311431885){
     s0+=137.0;
     s1+=26.0;
    } else {
     s0+=19.0;
     s1+=164.0;
    }
   } else {
    if(i15<-9.1552734375e-05){
     s0+=198.0;
     s1+=866.0;
    } else {
     s0+=72.0;
     s1+=10557.0;
    }
   }
  }
 }
}
if(i5<-7.899716729298234e-05){
 if(i11<0.980506420135498){
  if(i61<0.0019093314185738564){
   if(i3<0.060183316469192505){
    if(i50<-0.0005662328912876546){
     s1+=12.0;
    } else {
     s0+=494.0;
    }
   } else {
    if(i35<0.012629487551748753){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i15<-0.0008469820022583008){
    s0+=11.0;
   } else {
    if(i39<0.009402901865541935){
     s0+=5.0;
    } else {
     s1+=104.0;
    }
   }
  }
 } else {
  if(i39<0.0005744909285567701){
   s0+=144.0;
  } else {
   if(i26<0.9969416856765747){
    if(i66<0.0012894016690552235){
     s0+=91.0;
     s1+=88.0;
    } else {
     s0+=50.0;
     s1+=1215.0;
    }
   } else {
    if(i1<0.05561625957489014){
     s0+=11.0;
     s1+=63.0;
    } else {
     s0+=38.0;
     s1+=9639.0;
    }
   }
  }
 }
} else {
 if(i51<0.0003013279347214848){
  if(i6<3.892183303833008e-05){
   if(i2<0.0755026638507843){
    if(i22<1.0112468004226685){
     s0+=52946.0;
     s1+=246.0;
    } else {
     s0+=23.0;
     s1+=64.0;
    }
   } else {
    if(i40<0.046920955181121826){
     s0+=31.0;
     s1+=93.0;
    } else {
     s0+=158.0;
     s1+=26.0;
    }
   }
  } else {
   if(i17<0.002009310992434621){
    if(i67<1.0071425437927246){
     s0+=131.0;
    } else {
     s0+=23.0;
     s1+=6.0;
    }
   } else {
    if(i68<0.995250940322876){
     s0+=25.0;
    } else {
     s1+=106.0;
    }
   }
  }
 } else {
  if(i4<0.00014731287956237793){
   if(i8<0.9965627193450928){
    if(i45<0.07077604532241821){
     s0+=7835.0;
     s1+=147.0;
    } else {
     s0+=402.0;
     s1+=74.0;
    }
   } else {
    if(i32<1.0703742504119873){
     s0+=1631.0;
    } else {
     s0+=5780.0;
     s1+=2769.0;
    }
   }
  } else {
   if(i32<1.150278091430664){
    if(i28<1.0012307167053223){
     s0+=67.0;
     s1+=157.0;
    } else {
     s0+=3.0;
     s1+=1099.0;
    }
   } else {
    if(i0<0.11229062080383301){
     s0+=952.0;
     s1+=343.0;
    } else {
     s0+=123.0;
     s1+=999.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i1<0.08483859896659851){
  if(i59<0.007863429374992847){
   if(i8<1.0024954080581665){
    if(i38<0.00030735621112398803){
     s0+=46013.0;
     s1+=52.0;
    } else {
     s0+=17091.0;
     s1+=919.0;
    }
   } else {
    if(i34<1.0009474754333496){
     s0+=108.0;
     s1+=51.0;
    } else {
     s0+=4.0;
     s1+=174.0;
    }
   }
  } else {
   if(i13<0.0005318522453308105){
    if(i1<0.04579916596412659){
     s0+=1490.0;
     s1+=236.0;
    } else {
     s0+=54.0;
     s1+=113.0;
    }
   } else {
    if(i55<0.10107648372650146){
     s0+=29.0;
     s1+=168.0;
    } else {
     s0+=46.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i6<-5.459785461425781e-05){
   if(i45<0.08583930134773254){
    if(i73<4.3864984036190435e-05){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=291.0;
     s1+=5.0;
    }
   } else {
    if(i42<-7.112495950423181e-06){
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i29<1.0840110778808594){
    s0+=25.0;
   } else {
    if(i60<0.04369482398033142){
     s0+=55.0;
     s1+=937.0;
    } else {
     s0+=43.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004763007164001465){
  if(i25<0.0278204083442688){
   if(i11<1.003633737564087){
    if(i0<0.07553601264953613){
     s0+=2874.0;
     s1+=215.0;
    } else {
     s0+=906.0;
     s1+=424.0;
    }
   } else {
    if(i38<0.0012808965984731913){
     s0+=117.0;
     s1+=582.0;
    } else {
     s0+=544.0;
     s1+=67.0;
    }
   }
  } else {
   if(i11<0.9887055158615112){
    if(i50<-0.0002875308564398438){
     s0+=22.0;
     s1+=216.0;
    } else {
     s0+=456.0;
     s1+=131.0;
    }
   } else {
    if(i58<0.0014175297692418098){
     s0+=387.0;
     s1+=732.0;
    } else {
     s0+=27.0;
     s1+=983.0;
    }
   }
  }
 } else {
  if(i10<1.0237452983856201){
   if(i1<0.08798420429229736){
    if(i47<0.00213015079498291){
     s0+=137.0;
     s1+=685.0;
    } else {
     s0+=133.0;
     s1+=20.0;
    }
   } else {
    if(i60<0.03581804037094116){
     s0+=52.0;
     s1+=2927.0;
    } else {
     s0+=99.0;
     s1+=630.0;
    }
   }
  } else {
   if(i21<1.0032742023468018){
    if(i42<-1.143798181146849e-05){
     s1+=163.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    s1+=6689.0;
   }
  }
 }
}
if(i10<1.0081498622894287){
 if(i20<1.9490718841552734e-05){
  if(i1<0.08341601490974426){
   if(i25<0.017065567895770073){
    if(i38<0.0003042697790078819){
     s0+=45954.0;
     s1+=48.0;
    } else {
     s0+=12363.0;
     s1+=565.0;
    }
   } else {
    if(i35<0.001093433704227209){
     s0+=1559.0;
     s1+=833.0;
    } else {
     s0+=6987.0;
     s1+=257.0;
    }
   }
  } else {
   if(i68<0.9970712065696716){
    s0+=391.0;
   } else {
    if(i19<0.998518705368042){
     s0+=323.0;
     s1+=23.0;
    } else {
     s0+=666.0;
     s1+=1939.0;
    }
   }
  }
 } else {
  if(i0<0.08084189891815186){
   if(i24<1.0640453100204468){
    if(i12<1.002161979675293){
     s0+=568.0;
     s1+=6.0;
    } else {
     s0+=108.0;
     s1+=48.0;
    }
   } else {
    if(i65<-0.014302639290690422){
     s0+=194.0;
     s1+=12.0;
    } else {
     s0+=313.0;
     s1+=537.0;
    }
   }
  } else {
   if(i30<0.024646854028105736){
    if(i65<-0.02146071568131447){
     s0+=129.0;
     s1+=53.0;
    } else {
     s0+=50.0;
     s1+=331.0;
    }
   } else {
    if(i3<0.10532328486442566){
     s0+=20.0;
     s1+=307.0;
    } else {
     s1+=1185.0;
    }
   }
  }
 }
} else {
 if(i6<3.4749507904052734e-05){
  if(i0<0.08272159099578857){
   if(i41<0.0011433440959081054){
    if(i58<6.075849523767829e-05){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=175.0;
    }
   } else {
    if(i17<0.006019989959895611){
     s0+=780.0;
     s1+=56.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i23<1.08477783203125){
    if(i37<1.6689300537109375e-05){
     s0+=7.0;
     s1+=713.0;
    } else {
     s0+=59.0;
     s1+=250.0;
    }
   } else {
    if(i1<0.20358771085739136){
     s0+=221.0;
     s1+=72.0;
    } else {
     s0+=38.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i9<1.0341004133224487){
   if(i33<0.00016271443746518344){
    if(i63<2.0761231098731514e-06){
     s0+=53.0;
     s1+=3.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i42<-1.3019936886848882e-05){
     s1+=101.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i58<0.001007725833915174){
    if(i0<0.06942525506019592){
     s0+=70.0;
     s1+=23.0;
    } else {
     s0+=52.0;
     s1+=761.0;
    }
   } else {
    if(i17<0.006494693458080292){
     s0+=45.0;
     s1+=1026.0;
    } else {
     s0+=3.0;
     s1+=7497.0;
    }
   }
  }
 }
}
if(i1<0.08519679307937622){
 if(i6<4.178285598754883e-05){
  if(i69<0.001516862423159182){
   if(i1<0.06641563773155212){
    if(i8<1.0025691986083984){
     s0+=58376.0;
     s1+=515.0;
    } else {
     s0+=29.0;
     s1+=40.0;
    }
   } else {
    if(i0<0.07753890752792358){
     s0+=3152.0;
     s1+=312.0;
    } else {
     s0+=375.0;
     s1+=217.0;
    }
   }
  } else {
   if(i39<0.0008775430615060031){
    if(i71<1.0006401538848877){
     s0+=1863.0;
     s1+=493.0;
    } else {
     s0+=15.0;
     s1+=198.0;
    }
   } else {
    if(i10<1.010927677154541){
     s0+=4684.0;
     s1+=409.0;
    } else {
     s0+=127.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i35<0.000395697308704257){
   s0+=238.0;
  } else {
   if(i27<1.1481032371520996){
    if(i5<-4.451472341315821e-05){
     s1+=578.0;
    } else {
     s0+=12.0;
     s1+=86.0;
    }
   } else {
    if(i54<-0.0014619827270507812){
     s0+=48.0;
     s1+=248.0;
    } else {
     s0+=202.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i27<1.0670123100280762){
  if(i71<1.0010900497436523){
   if(i34<1.000468134880066){
    if(i28<1.0031986236572266){
     s0+=332.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.0005767305847257376){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i72<-3.8575003600271884e-06){
    s1+=13.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i8<1.0018014907836914){
   if(i43<0.04600837826728821){
    if(i2<0.05921313166618347){
     s0+=112.0;
     s1+=14.0;
    } else {
     s0+=89.0;
     s1+=2030.0;
    }
   } else {
    if(i41<0.010480414144694805){
     s0+=1223.0;
     s1+=811.0;
    } else {
     s0+=15.0;
     s1+=387.0;
    }
   }
  } else {
   if(i16<0.0014032721519470215){
    if(i38<0.01005321554839611){
     s0+=112.0;
     s1+=1209.0;
    } else {
     s1+=1334.0;
    }
   } else {
    s1+=8221.0;
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i51<0.0002831319870892912){
  if(i12<1.0031886100769043){
   if(i57<-0.0043950676918029785){
    if(i45<0.0027288198471069336){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i5<-3.957759327022359e-05){
     s0+=475.0;
     s1+=87.0;
    } else {
     s0+=51784.0;
     s1+=148.0;
    }
   }
  } else {
   if(i17<0.002008418319746852){
    if(i0<0.062436193227767944){
     s0+=73.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i29<1.2876198291778564){
     s1+=108.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<1.823902130126953e-05){
   if(i14<0.994226336479187){
    if(i17<0.022732917219400406){
     s0+=8183.0;
     s1+=149.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i3<0.05487385392189026){
     s0+=4134.0;
     s1+=705.0;
    } else {
     s0+=409.0;
     s1+=594.0;
    }
   }
  } else {
   if(i19<0.9982582926750183){
    s0+=69.0;
   } else {
    if(i62<0.34263503551483154){
     s0+=77.0;
     s1+=840.0;
    } else {
     s0+=35.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007564425468444824){
  if(i17<0.005554181523621082){
   if(i37<-0.0001360476016998291){
    if(i36<0.0018288266146555543){
     s0+=1169.0;
     s1+=5.0;
    } else {
     s0+=46.0;
     s1+=31.0;
    }
   } else {
    if(i2<0.09698614478111267){
     s0+=3233.0;
     s1+=723.0;
    } else {
     s0+=639.0;
     s1+=985.0;
    }
   }
  } else {
   if(i53<1.000427484512329){
    if(i1<0.09185826778411865){
     s0+=176.0;
     s1+=437.0;
    } else {
     s0+=67.0;
     s1+=2510.0;
    }
   } else {
    if(i9<1.089697003364563){
     s0+=240.0;
     s1+=62.0;
    } else {
     s1+=310.0;
    }
   }
  }
 } else {
  if(i2<0.055450499057769775){
   if(i20<1.8656253814697266e-05){
    if(i31<1.1386182308197021){
     s0+=30.0;
     s1+=29.0;
    } else {
     s0+=108.0;
     s1+=2.0;
    }
   } else {
    if(i5<-4.220712071401067e-05){
     s1+=178.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<-1.5228986740112305e-05){
    s0+=8.0;
   } else {
    if(i20<1.6629695892333984e-05){
     s0+=66.0;
     s1+=1497.0;
    } else {
     s0+=2.0;
     s1+=7755.0;
    }
   }
  }
 }
}
if(i6<3.7729740142822266e-05){
 if(i38<0.00038416392635554075){
  if(i28<1.0088025331497192){
   if(i56<0.0003339549293741584){
    if(i5<-4.013608850073069e-05){
     s0+=343.0;
     s1+=62.0;
    } else {
     s0+=48671.0;
     s1+=125.0;
    }
   } else {
    if(i35<0.00048742833314463496){
     s0+=4.0;
     s1+=45.0;
    } else {
     s0+=68.0;
    }
   }
  } else {
   if(i55<0.01677478477358818){
    s1+=109.0;
   } else {
    if(i27<1.1419259309768677){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  if(i3<0.06547892093658447){
   if(i29<1.1939998865127563){
    if(i5<-9.754048733157106e-06){
     s0+=374.0;
     s1+=1106.0;
    } else {
     s0+=5170.0;
     s1+=610.0;
    }
   } else {
    if(i0<0.08209827542304993){
     s0+=13547.0;
     s1+=309.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   }
  } else {
   if(i0<0.11029845476150513){
    if(i49<0.011188209056854248){
     s0+=456.0;
     s1+=687.0;
    } else {
     s0+=1063.0;
     s1+=95.0;
    }
   } else {
    if(i43<0.07353293895721436){
     s0+=60.0;
     s1+=1582.0;
    } else {
     s0+=614.0;
     s1+=614.0;
    }
   }
  }
 }
} else {
 if(i0<0.06274065375328064){
  if(i19<1.0017783641815186){
   if(i12<1.0013608932495117){
    s0+=278.0;
   } else {
    if(i39<0.002517335582524538){
     s0+=4.0;
     s1+=40.0;
    } else {
     s0+=82.0;
     s1+=5.0;
    }
   }
  } else {
   if(i46<0.0008081197738647461){
    if(i61<0.0003466533380560577){
     s0+=50.0;
     s1+=31.0;
    } else {
     s0+=53.0;
     s1+=404.0;
    }
   } else {
    if(i24<1.0749009847640991){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=41.0;
    }
   }
  }
 } else {
  if(i32<1.0762357711791992){
   s0+=46.0;
  } else {
   if(i4<0.0008994340896606445){
    if(i37<4.330277442932129e-05){
     s0+=1.0;
     s1+=472.0;
    } else {
     s0+=144.0;
     s1+=694.0;
    }
   } else {
    if(i12<0.9974284172058105){
     s0+=21.0;
     s1+=125.0;
    } else {
     s0+=32.0;
     s1+=9918.0;
    }
   }
  }
 }
}
if(i2<0.08135956525802612){
 if(i13<0.0005946755409240723){
  if(i62<0.040858060121536255){
   if(i69<0.003088397439569235){
    if(i26<1.007562518119812){
     s0+=54648.0;
     s1+=469.0;
    } else {
     s0+=267.0;
     s1+=189.0;
    }
   } else {
    if(i26<0.9901916980743408){
     s0+=45.0;
     s1+=83.0;
    } else {
     s0+=78.0;
     s1+=9.0;
    }
   }
  } else {
   if(i1<0.06633245944976807){
    if(i31<1.1933176517486572){
     s0+=5499.0;
     s1+=858.0;
    } else {
     s0+=6980.0;
     s1+=107.0;
    }
   } else {
    if(i14<0.9942767024040222){
     s0+=756.0;
     s1+=46.0;
    } else {
     s0+=695.0;
     s1+=616.0;
    }
   }
  }
 } else {
  if(i8<1.0022249221801758){
   if(i17<0.018140040338039398){
    if(i48<-0.027039557695388794){
     s0+=49.0;
     s1+=31.0;
    } else {
     s0+=554.0;
     s1+=27.0;
    }
   } else {
    if(i27<1.5876636505126953){
     s1+=34.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i49<0.009289354085922241){
    if(i68<1.0021698474884033){
     s0+=34.0;
     s1+=966.0;
    } else {
     s0+=36.0;
     s1+=38.0;
    }
   } else {
    if(i27<1.1522074937820435){
     s1+=18.0;
    } else {
     s0+=49.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0004056096076965332){
  if(i20<-1.9252300262451172e-05){
   s0+=348.0;
  } else {
   if(i58<0.0023602936416864395){
    if(i41<0.0013600463280454278){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i45<0.07786288857460022){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i48<0.038203656673431396){
   if(i24<1.0467342138290405){
    if(i21<0.9921219944953918){
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=7.0;
    }
   } else {
    if(i57<0.006751000881195068){
     s0+=22.0;
     s1+=5855.0;
    } else {
     s0+=112.0;
     s1+=2382.0;
    }
   }
  } else {
   if(i17<0.0035873602610081434){
    if(i40<0.0576135516166687){
     s0+=12.0;
     s1+=118.0;
    } else {
     s0+=760.0;
     s1+=278.0;
    }
   } else {
    if(i1<0.1161918044090271){
     s0+=176.0;
     s1+=88.0;
    } else {
     s0+=66.0;
     s1+=4765.0;
    }
   }
  }
 }
}
if(i22<1.0099639892578125){
 if(i0<0.08195176720619202){
  if(i13<0.0005941987037658691){
   if(i66<0.0007541314698755741){
    if(i9<1.0406912565231323){
     s0+=56736.0;
     s1+=351.0;
    } else {
     s0+=3094.0;
     s1+=430.0;
    }
   } else {
    if(i38<0.001802476472221315){
     s0+=1796.0;
     s1+=759.0;
    } else {
     s0+=5495.0;
     s1+=288.0;
    }
   }
  } else {
   if(i36<0.006910898722708225){
    if(i71<1.0001301765441895){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=94.0;
     s1+=560.0;
    }
   } else {
    if(i7<1.0999420881271362){
     s0+=457.0;
     s1+=32.0;
    } else {
     s0+=14.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i25<0.015537548810243607){
   if(i12<1.000845193862915){
    if(i8<0.9969314336776733){
     s0+=215.0;
     s1+=15.0;
    } else {
     s0+=203.0;
     s1+=131.0;
    }
   } else {
    if(i60<0.04150477051734924){
     s0+=10.0;
     s1+=264.0;
    } else {
     s0+=42.0;
     s1+=20.0;
    }
   }
  } else {
   if(i13<-0.0004112422466278076){
    if(i63<4.362725303508341e-05){
     s0+=215.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   } else {
    if(i4<0.00014650821685791016){
     s0+=190.0;
     s1+=1013.0;
    } else {
     s0+=28.0;
     s1+=2177.0;
    }
   }
  }
 }
} else {
 if(i0<0.08661770820617676){
  if(i42<-1.4147630281513557e-05){
   if(i63<8.299697583424859e-06){
    if(i64<-0.004483054857701063){
     s0+=21.0;
    } else {
     s0+=8.0;
     s1+=314.0;
    }
   } else {
    if(i53<0.9998899698257446){
     s0+=1.0;
     s1+=46.0;
    } else {
     s0+=238.0;
     s1+=18.0;
    }
   }
  } else {
   if(i38<0.0011142762377858162){
    if(i27<1.083398699760437){
     s0+=53.0;
     s1+=148.0;
    } else {
     s0+=183.0;
     s1+=44.0;
    }
   } else {
    if(i17<0.0043817791156470776){
     s0+=1028.0;
     s1+=4.0;
    } else {
     s0+=83.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i11<1.0076911449432373){
   if(i1<0.177221417427063){
    if(i48<0.05672937631607056){
     s0+=146.0;
     s1+=686.0;
    } else {
     s0+=411.0;
     s1+=71.0;
    }
   } else {
    if(i36<0.0015979561721906066){
     s0+=95.0;
     s1+=27.0;
    } else {
     s0+=44.0;
     s1+=1356.0;
    }
   }
  } else {
   if(i19<0.9998514652252197){
    if(i58<0.00029991287738084793){
     s0+=41.0;
     s1+=30.0;
    } else {
     s1+=196.0;
    }
   } else {
    if(i0<0.08727473020553589){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=19.0;
     s1+=8081.0;
    }
   }
  }
 }
}
if(i14<1.004129409790039){
 if(i24<1.0576403141021729){
  if(i21<1.0084025859832764){
   if(i38<0.0002975648094434291){
    if(i8<1.0025379657745361){
     s0+=45990.0;
     s1+=36.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i31<1.1152933835983276){
     s0+=4607.0;
     s1+=599.0;
    } else {
     s0+=7898.0;
     s1+=23.0;
    }
   }
  } else {
   if(i11<0.9986470937728882){
    s0+=29.0;
   } else {
    if(i7<1.043562889099121){
     s0+=21.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i7<1.0446083545684814){
   if(i24<1.0900816917419434){
    if(i22<0.9938559532165527){
     s0+=474.0;
     s1+=329.0;
    } else {
     s0+=1552.0;
     s1+=134.0;
    }
   } else {
    if(i2<0.08170142769813538){
     s0+=2868.0;
     s1+=44.0;
    } else {
     s0+=3.0;
     s1+=57.0;
    }
   }
  } else {
   if(i5<-2.3194732420961373e-05){
    if(i66<-0.0005054688081145287){
     s0+=58.0;
     s1+=1268.0;
    } else {
     s0+=2020.0;
     s1+=3459.0;
    }
   } else {
    if(i25<0.02346377819776535){
     s0+=3843.0;
     s1+=373.0;
    } else {
     s0+=1012.0;
     s1+=739.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005202293395996094){
  if(i23<1.0357420444488525){
   if(i2<0.05878126621246338){
    if(i32<1.1016805171966553){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=494.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.08003857731819153){
     s0+=12.0;
     s1+=19.0;
    } else {
     s1+=76.0;
    }
   }
  } else {
   if(i1<0.08767035603523254){
    if(i36<0.0010782831814140081){
     s0+=5.0;
     s1+=33.0;
    } else {
     s0+=45.0;
     s1+=6.0;
    }
   } else {
    if(i8<0.9975107312202454){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=275.0;
    }
   }
  }
 } else {
  if(i7<1.0341004133224487){
   if(i13<0.0005967020988464355){
    if(i32<1.1753523349761963){
     s1+=1.0;
    } else {
     s0+=26.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i15<0.00021499395370483398){
    if(i1<0.13287696242332458){
     s0+=104.0;
     s1+=652.0;
    } else {
     s0+=6.0;
     s1+=875.0;
    }
   } else {
    s1+=7990.0;
   }
  }
 }
}
if(i3<0.07121574878692627){
 if(i19<1.0018521547317505){
  if(i33<0.0002964354061987251){
   if(i26<1.0073939561843872){
    if(i25<0.023819219321012497){
     s0+=54849.0;
     s1+=331.0;
    } else {
     s0+=1079.0;
     s1+=195.0;
    }
   } else {
    if(i24<1.0731133222579956){
     s0+=41.0;
     s1+=178.0;
    } else {
     s0+=515.0;
     s1+=25.0;
    }
   }
  } else {
   if(i8<1.0008203983306885){
    if(i27<1.1476502418518066){
     s0+=4825.0;
     s1+=1259.0;
    } else {
     s0+=6714.0;
     s1+=182.0;
    }
   } else {
    if(i5<-4.371679824544117e-05){
     s0+=32.0;
     s1+=422.0;
    } else {
     s0+=330.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i10<1.0032405853271484){
   if(i17<0.015239926986396313){
    if(i63<1.9158116629114375e-05){
     s0+=79.0;
     s1+=248.0;
    } else {
     s0+=487.0;
     s1+=31.0;
    }
   } else {
    if(i48<-0.05231744050979614){
     s1+=126.0;
    } else {
     s0+=10.0;
     s1+=21.0;
    }
   }
  } else {
   if(i68<1.002253770828247){
    if(i48<0.043591856956481934){
     s0+=28.0;
     s1+=1322.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i37<0.0005376338958740234){
     s0+=59.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i11<1.0064631700515747){
  if(i25<0.026388589292764664){
   if(i43<0.04395449161529541){
    if(i17<0.0015947046922519803){
     s0+=45.0;
     s1+=11.0;
    } else {
     s0+=97.0;
     s1+=460.0;
    }
   } else {
    if(i0<0.11617857217788696){
     s0+=968.0;
     s1+=109.0;
    } else {
     s0+=345.0;
     s1+=272.0;
    }
   }
  } else {
   if(i4<-0.0007873773574829102){
    if(i19<0.9986059665679932){
     s0+=220.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=107.0;
    }
   } else {
    if(i43<0.05050674080848694){
     s0+=35.0;
     s1+=1949.0;
    } else {
     s0+=260.0;
     s1+=1239.0;
    }
   }
  }
 } else {
  if(i5<-2.230671998404432e-05){
   if(i5<-4.307488416088745e-05){
    if(i30<0.008217539638280869){
     s0+=3.0;
     s1+=457.0;
    } else {
     s1+=7767.0;
    }
   } else {
    if(i1<0.10933297872543335){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=92.0;
    }
   }
  } else {
   if(i73<8.530731429345906e-05){
    s0+=83.0;
   } else {
    if(i24<1.2682141065597534){
     s1+=15.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i21<1.0088286399841309){
 if(i0<0.08355346322059631){
  if(i59<0.007879253476858139){
   if(i16<0.0012122392654418945){
    if(i47<-0.0010868310928344727){
     s0+=4873.0;
     s1+=647.0;
    } else {
     s0+=60216.0;
     s1+=662.0;
    }
   } else {
    if(i15<0.00023365020751953125){
     s0+=27.0;
     s1+=24.0;
    } else {
     s1+=69.0;
    }
   }
  } else {
   if(i12<1.000511646270752){
    if(i3<0.032024502754211426){
     s0+=2141.0;
     s1+=239.0;
    } else {
     s0+=323.0;
     s1+=203.0;
    }
   } else {
    if(i4<-9.366869926452637e-05){
     s0+=153.0;
     s1+=46.0;
    } else {
     s0+=127.0;
     s1+=673.0;
    }
   }
  }
 } else {
  if(i60<0.04024180769920349){
   if(i71<0.992892324924469){
    s0+=89.0;
   } else {
    if(i54<0.0043093860149383545){
     s0+=60.0;
     s1+=2491.0;
    } else {
     s0+=135.0;
     s1+=562.0;
    }
   }
  } else {
   if(i56<0.0011920810211449862){
    if(i19<0.9991287589073181){
     s0+=294.0;
     s1+=20.0;
    } else {
     s0+=284.0;
     s1+=216.0;
    }
   } else {
    if(i68<1.0034682750701904){
     s0+=5.0;
     s1+=172.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i13<0.0004942119121551514){
  if(i35<0.006664891727268696){
   if(i56<-8.594730752520263e-05){
    if(i23<1.1419421434402466){
     s0+=207.0;
     s1+=873.0;
    } else {
     s0+=95.0;
     s1+=15.0;
    }
   } else {
    if(i17<0.003526238491758704){
     s0+=1669.0;
     s1+=314.0;
    } else {
     s0+=143.0;
     s1+=529.0;
    }
   }
  } else {
   if(i3<0.09560424089431763){
    s0+=17.0;
   } else {
    if(i16<-0.00027942657470703125){
     s0+=5.0;
     s1+=166.0;
    } else {
     s1+=1114.0;
    }
   }
  }
 } else {
  if(i17<0.005093812942504883){
   if(i11<1.0074412822723389){
    if(i35<0.0010398641461506486){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=211.0;
     s1+=17.0;
    }
   } else {
    if(i16<0.0003140568733215332){
     s0+=9.0;
    } else {
     s0+=19.0;
     s1+=734.0;
    }
   }
  } else {
   if(i8<1.0006399154663086){
    if(i38<0.005882519297301769){
     s0+=23.0;
     s1+=1.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i26<1.0068809986114502){
     s0+=21.0;
     s1+=264.0;
    } else {
     s0+=8.0;
     s1+=6971.0;
    }
   }
  }
 }
}
if(i6<3.653764724731445e-05){
 if(i44<0.030405839905142784){
  if(i45<0.06335467100143433){
   if(i15<0.00016158819198608398){
    if(i9<1.0410068035125732){
     s0+=55167.0;
     s1+=592.0;
    } else {
     s0+=3354.0;
     s1+=564.0;
    }
   } else {
    if(i51<0.0002852336619980633){
     s0+=52.0;
    } else {
     s0+=3.0;
     s1+=171.0;
    }
   }
  } else {
   if(i28<1.009439468383789){
    if(i17<0.003966446965932846){
     s0+=744.0;
     s1+=92.0;
    } else {
     s0+=122.0;
     s1+=123.0;
    }
   } else {
    if(i17<0.0011576793622225523){
     s0+=10.0;
    } else {
     s0+=20.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i45<0.06003865599632263){
   if(i8<0.9969263672828674){
    if(i14<0.9931925535202026){
     s0+=5004.0;
     s1+=82.0;
    } else {
     s0+=908.0;
     s1+=92.0;
    }
   } else {
    if(i25<0.028261933475732803){
     s0+=2997.0;
     s1+=815.0;
    } else {
     s0+=541.0;
     s1+=983.0;
    }
   }
  } else {
   if(i20<-1.609325408935547e-05){
    if(i40<0.0235004723072052){
     s1+=2.0;
    } else {
     s0+=316.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.012800365686416626){
     s0+=968.0;
     s1+=1104.0;
    } else {
     s0+=75.0;
     s1+=640.0;
    }
   }
  }
 }
} else {
 if(i27<1.0590304136276245){
  s0+=363.0;
 } else {
  if(i11<1.0098415613174438){
   if(i5<-4.696183168562129e-05){
    if(i24<1.1255970001220703){
     s0+=181.0;
     s1+=953.0;
    } else {
     s0+=61.0;
     s1+=1936.0;
    }
   } else {
    if(i58<0.0010946791153401136){
     s0+=182.0;
     s1+=51.0;
    } else {
     s0+=18.0;
     s1+=239.0;
    }
   }
  } else {
   if(i30<0.0004264884046278894){
    s0+=1.0;
   } else {
    if(i61<6.68542052153498e-05){
     s0+=1.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=8490.0;
    }
   }
  }
 }
}
if(i2<0.07737115025520325){
 if(i12<1.003084659576416){
  if(i10<1.0068104267120361){
   if(i66<0.0007543147657997906){
    if(i44<0.032727405428886414){
     s0+=57282.0;
     s1+=280.0;
    } else {
     s0+=2855.0;
     s1+=414.0;
    }
   } else {
    if(i14<0.9938163757324219){
     s0+=4145.0;
     s1+=89.0;
    } else {
     s0+=2723.0;
     s1+=890.0;
    }
   }
  } else {
   if(i61<0.0006137703312560916){
    if(i41<0.00047660956624895334){
     s0+=16.0;
     s1+=105.0;
    } else {
     s0+=1184.0;
     s1+=86.0;
    }
   } else {
    if(i28<0.9964555501937866){
     s0+=70.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=242.0;
    }
   }
  }
 } else {
  if(i63<1.1882377293659374e-05){
   if(i71<1.002171516418457){
    if(i5<-4.3044805352110416e-05){
     s0+=13.0;
     s1+=156.0;
    } else {
     s0+=140.0;
     s1+=13.0;
    }
   } else {
    if(i32<1.5944836139678955){
     s0+=27.0;
     s1+=769.0;
    } else {
     s0+=33.0;
     s1+=21.0;
    }
   }
  } else {
   if(i6<3.5643577575683594e-05){
    if(i11<0.981231689453125){
     s0+=639.0;
     s1+=5.0;
    } else {
     s0+=128.0;
     s1+=22.0;
    }
   } else {
    if(i58<0.005463206209242344){
     s0+=31.0;
     s1+=23.0;
    } else {
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i37<-0.0002474486827850342){
  if(i58<0.003231124486774206){
   if(i7<1.0402504205703735){
    if(i28<0.9942272901535034){
     s0+=71.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    s0+=350.0;
   }
  } else {
   s1+=45.0;
  }
 } else {
  if(i16<0.0006127357482910156){
   if(i17<0.0033434065990149975){
    if(i43<0.03996184468269348){
     s0+=25.0;
     s1+=552.0;
    } else {
     s0+=988.0;
     s1+=313.0;
    }
   } else {
    if(i25<0.020168986171483994){
     s0+=227.0;
     s1+=401.0;
    } else {
     s0+=182.0;
     s1+=3154.0;
    }
   }
  } else {
   if(i58<0.0003010411746799946){
    if(i44<0.119418203830719){
     s0+=10.0;
     s1+=177.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   } else {
    if(i20<-1.3202428817749023e-05){
     s0+=6.0;
    } else {
     s0+=50.0;
     s1+=9202.0;
    }
   }
  }
 }
}
if(i1<0.08441624045372009){
 if(i16<0.0011496543884277344){
  if(i57<-0.0023182928562164307){
   if(i19<1.001643419265747){
    if(i65<-0.009093244560062885){
     s0+=2680.0;
     s1+=48.0;
    } else {
     s0+=2633.0;
     s1+=804.0;
    }
   } else {
    if(i15<-0.0003324747085571289){
     s0+=202.0;
     s1+=69.0;
    } else {
     s0+=59.0;
     s1+=339.0;
    }
   }
  } else {
   if(i38<0.0003019022406078875){
    if(i42<-1.4607341654482298e-05){
     s0+=239.0;
     s1+=72.0;
    } else {
     s0+=46276.0;
     s1+=70.0;
    }
   } else {
    if(i8<1.0007576942443848){
     s0+=16075.0;
     s1+=732.0;
    } else {
     s0+=845.0;
     s1+=490.0;
    }
   }
  }
 } else {
  if(i58<0.0007685654563829303){
   if(i13<0.00022801756858825684){
    s1+=27.0;
   } else {
    if(i13<0.0009172558784484863){
     s0+=108.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i46<0.004405319690704346){
    if(i58<0.0008586166659370065){
     s0+=5.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=419.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i13<-0.0003857910633087158){
  if(i61<4.4327818613965064e-05){
   s1+=4.0;
  } else {
   if(i72<-3.4878028145612916e-06){
    if(i69<0.002389156259596348){
     s0+=36.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   } else {
    if(i34<0.9996756911277771){
     s0+=586.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i2<0.12403276562690735){
   if(i16<0.0006878972053527832){
    if(i65<-0.018944839015603065){
     s0+=563.0;
     s1+=74.0;
    } else {
     s0+=370.0;
     s1+=1387.0;
    }
   } else {
    if(i40<0.06905725598335266){
     s0+=4.0;
     s1+=1119.0;
    } else {
     s0+=30.0;
     s1+=72.0;
    }
   }
  } else {
   if(i61<0.00017260739696212113){
    if(i51<0.006693173199892044){
     s0+=21.0;
     s1+=280.0;
    } else {
     s0+=165.0;
     s1+=78.0;
    }
   } else {
    if(i4<0.00037485361099243164){
     s0+=119.0;
     s1+=1457.0;
    } else {
     s0+=40.0;
     s1+=9596.0;
    }
   }
  }
 }
}
if(i6<3.641843795776367e-05){
 if(i45<0.06076881289482117){
  if(i10<1.0081498622894287){
   if(i7<1.0451608896255493){
    if(i47<-0.0013626515865325928){
     s0+=4094.0;
     s1+=487.0;
    } else {
     s0+=57006.0;
     s1+=384.0;
    }
   } else {
    if(i3<0.06863921880722046){
     s0+=6210.0;
     s1+=1244.0;
    } else {
     s0+=58.0;
     s1+=453.0;
    }
   }
  } else {
   if(i55<0.024805394932627678){
    if(i38<0.001587704406119883){
     s0+=34.0;
     s1+=436.0;
    } else {
     s0+=50.0;
     s1+=5.0;
    }
   } else {
    if(i0<0.07890269160270691){
     s0+=620.0;
     s1+=77.0;
    } else {
     s0+=3.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i0<0.10642781853675842){
   if(i56<-8.659159357193857e-05){
    if(i35<0.0011798858176916838){
     s0+=4.0;
     s1+=55.0;
    } else {
     s0+=35.0;
     s1+=7.0;
    }
   } else {
    if(i44<0.027438445016741753){
     s0+=911.0;
     s1+=55.0;
    } else {
     s0+=736.0;
     s1+=200.0;
    }
   }
  } else {
   if(i43<0.07275447249412537){
    if(i19<0.9978594779968262){
     s0+=30.0;
     s1+=2.0;
    } else {
     s0+=57.0;
     s1+=1247.0;
    }
   } else {
    if(i17<0.00585099495947361){
     s0+=612.0;
     s1+=187.0;
    } else {
     s0+=10.0;
     s1+=417.0;
    }
   }
  }
 }
} else {
 if(i27<1.0590304136276245){
  s0+=371.0;
 } else {
  if(i8<1.0041282176971436){
   if(i7<1.1368224620819092){
    if(i17<0.002344104927033186){
     s0+=172.0;
     s1+=30.0;
    } else {
     s0+=218.0;
     s1+=1064.0;
    }
   } else {
    if(i30<0.005469705909490585){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=823.0;
    }
   }
  } else {
   if(i3<0.003758668899536133){
    if(i29<1.5682398080825806){
     s1+=45.0;
    } else {
     s0+=13.0;
     s1+=14.0;
    }
   } else {
    if(i18<1.001489520072937){
     s0+=19.0;
     s1+=1148.0;
    } else {
     s0+=10.0;
     s1+=8356.0;
    }
   }
  }
 }
}
if(i8<1.0024337768554688){
 if(i7<1.0452277660369873){
  if(i0<0.08382725715637207){
   if(i49<-0.004901319742202759){
    if(i3<0.031877338886260986){
     s0+=2330.0;
     s1+=158.0;
    } else {
     s0+=291.0;
     s1+=156.0;
    }
   } else {
    if(i44<0.026345448568463326){
     s0+=52818.0;
     s1+=220.0;
    } else {
     s0+=6580.0;
     s1+=281.0;
    }
   }
  } else {
   if(i63<2.1085594198666513e-05){
    if(i31<1.0562636852264404){
     s0+=32.0;
    } else {
     s0+=17.0;
     s1+=216.0;
    }
   } else {
    if(i13<-0.0003985762596130371){
     s0+=92.0;
    } else {
     s0+=44.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i2<0.07569372653961182){
   if(i29<1.1013743877410889){
    if(i17<0.002096274634823203){
     s0+=1579.0;
     s1+=381.0;
    } else {
     s0+=105.0;
     s1+=463.0;
    }
   } else {
    if(i22<0.9616509675979614){
     s0+=410.0;
     s1+=157.0;
    } else {
     s0+=4883.0;
     s1+=224.0;
    }
   }
  } else {
   if(i45<0.06295132637023926){
    if(i34<0.9988836050033569){
     s0+=22.0;
    } else {
     s0+=29.0;
     s1+=1334.0;
    }
   } else {
    if(i2<0.12405866384506226){
     s0+=958.0;
     s1+=388.0;
    } else {
     s0+=571.0;
     s1+=1765.0;
    }
   }
  }
 }
} else {
 if(i8<1.0041425228118896){
  if(i38<0.0001858593604993075){
   s0+=47.0;
  } else {
   if(i3<0.05827140808105469){
    if(i17<0.002159800613299012){
     s0+=137.0;
     s1+=10.0;
    } else {
     s0+=72.0;
     s1+=327.0;
    }
   } else {
    if(i7<1.1368224620819092){
     s0+=106.0;
     s1+=658.0;
    } else {
     s0+=2.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i53<1.0007838010787964){
   if(i15<-0.00046938657760620117){
    s0+=3.0;
   } else {
    if(i15<1.1622905731201172e-05){
     s0+=35.0;
     s1+=620.0;
    } else {
     s0+=4.0;
     s1+=9099.0;
    }
   }
  } else {
   if(i5<-0.0002156810078304261){
    s1+=3.0;
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i5<-8.167394844349474e-05){
 if(i3<0.016550660133361816){
  if(i11<0.9967103004455566){
   if(i7<1.0802128314971924){
    if(i6<0.0001055598258972168){
     s0+=408.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i9<1.1085941791534424){
     s0+=37.0;
     s1+=16.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i61<0.00021508478675968945){
    if(i30<0.017008280381560326){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=102.0;
   }
  }
 } else {
  if(i31<1.0677311420440674){
   s0+=170.0;
  } else {
   if(i4<0.0005004405975341797){
    if(i53<1.000390887260437){
     s0+=29.0;
     s1+=645.0;
    } else {
     s0+=108.0;
     s1+=11.0;
    }
   } else {
    if(i11<1.0080442428588867){
     s0+=79.0;
     s1+=1814.0;
    } else {
     s1+=8365.0;
    }
   }
  }
 }
} else {
 if(i33<0.00032197084510698915){
  if(i26<1.0074787139892578){
   if(i12<1.0033681392669678){
    if(i47<-0.0026511847972869873){
     s0+=86.0;
     s1+=102.0;
    } else {
     s0+=56757.0;
     s1+=594.0;
    }
   } else {
    if(i4<0.0004208683967590332){
     s0+=52.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=101.0;
    }
   }
  } else {
   if(i24<1.083398699760437){
    if(i2<0.046860069036483765){
     s0+=84.0;
     s1+=27.0;
    } else {
     s0+=39.0;
     s1+=377.0;
    }
   } else {
    if(i49<0.006487071514129639){
     s0+=498.0;
     s1+=14.0;
    } else {
     s0+=11.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i13<-0.00011229515075683594){
   if(i3<0.07233840227127075){
    if(i0<0.07551151514053345){
     s0+=6041.0;
     s1+=267.0;
    } else {
     s0+=105.0;
     s1+=90.0;
    }
   } else {
    if(i13<-0.00038823485374450684){
     s0+=327.0;
     s1+=8.0;
    } else {
     s0+=197.0;
     s1+=367.0;
    }
   }
  } else {
   if(i29<1.2371783256530762){
    if(i0<0.06584855914115906){
     s0+=1445.0;
     s1+=735.0;
    } else {
     s0+=495.0;
     s1+=2177.0;
    }
   } else {
    if(i4<0.00047200918197631836){
     s0+=3756.0;
     s1+=912.0;
    } else {
     s0+=253.0;
     s1+=469.0;
    }
   }
  }
 }
}
if(i2<0.07766455411911011){
 if(i20<2.294778823852539e-05){
  if(i9<1.0394752025604248){
   if(i57<-0.0020241141319274902){
    if(i41<0.001730882446281612){
     s0+=1677.0;
     s1+=591.0;
    } else {
     s0+=3314.0;
     s1+=95.0;
    }
   } else {
    if(i22<1.0116345882415771){
     s0+=56860.0;
     s1+=408.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   }
  } else {
   if(i31<1.1037919521331787){
    if(i42<-6.870810011605499e-06){
     s0+=108.0;
     s1+=562.0;
    } else {
     s0+=1984.0;
     s1+=314.0;
    }
   } else {
    if(i61<0.0017748733516782522){
     s0+=4159.0;
     s1+=276.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i16<0.0004267096519470215){
   if(i30<0.03637785091996193){
    if(i69<0.0017144897719845176){
     s0+=633.0;
     s1+=54.0;
    } else {
     s0+=248.0;
     s1+=249.0;
    }
   } else {
    if(i27<1.5876636505126953){
     s1+=117.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i8<1.0023788213729858){
    s0+=14.0;
   } else {
    if(i58<0.0005598149728029966){
     s0+=1.0;
     s1+=10.0;
    } else {
     s1+=610.0;
    }
   }
  }
 }
} else {
 if(i31<1.3733716011047363){
  if(i16<0.00023704767227172852){
   if(i4<-0.0008697211742401123){
    if(i17<0.006963815540075302){
     s0+=403.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i43<0.047919273376464844){
     s0+=86.0;
     s1+=1719.0;
    } else {
     s0+=1068.0;
     s1+=787.0;
    }
   }
  } else {
   if(i37<-0.00016883015632629395){
    s0+=26.0;
   } else {
    if(i16<0.0008144378662109375){
     s0+=134.0;
     s1+=852.0;
    } else {
     s0+=32.0;
     s1+=3220.0;
    }
   }
  }
 } else {
  if(i36<0.004604459274560213){
   s0+=28.0;
  } else {
   if(i7<1.0524604320526123){
    if(i69<0.0015978404553607106){
     s0+=52.0;
     s1+=11.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i26<0.9938323497772217){
     s0+=18.0;
     s1+=954.0;
    } else {
     s1+=6436.0;
    }
   }
  }
 }
}
if(i6<3.5703182220458984e-05){
 if(i5<-6.198177288752049e-05){
  if(i8<0.9988609552383423){
   if(i3<0.06160789728164673){
    if(i9<1.0668572187423706){
     s0+=908.0;
     s1+=31.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i44<0.06368096172809601){
     s0+=18.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=180.0;
    }
   }
  } else {
   if(i28<0.9789642691612244){
    if(i55<0.28715991973876953){
     s0+=169.0;
     s1+=43.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i51<0.003391279373317957){
     s0+=109.0;
     s1+=390.0;
    } else {
     s0+=1.0;
     s1+=466.0;
    }
   }
  }
 } else {
  if(i1<0.08236891031265259){
   if(i59<0.007525504566729069){
    if(i1<0.06618672609329224){
     s0+=60591.0;
     s1+=737.0;
    } else {
     s0+=3511.0;
     s1+=451.0;
    }
   } else {
    if(i5<-3.643934178398922e-05){
     s0+=201.0;
     s1+=169.0;
    } else {
     s0+=2981.0;
     s1+=460.0;
    }
   }
  } else {
   if(i37<-0.00014024972915649414){
    if(i5<-4.755012923851609e-05){
     s1+=14.0;
    } else {
     s0+=685.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.0587787926197052){
     s0+=499.0;
     s1+=1793.0;
    } else {
     s0+=704.0;
     s1+=477.0;
    }
   }
  }
 }
} else {
 if(i53<0.9993064403533936){
  s0+=414.0;
 } else {
  if(i17<0.0018524355255067348){
   if(i6<6.592273712158203e-05){
    if(i32<1.25206458568573){
     s1+=11.0;
    } else {
     s0+=147.0;
    }
   } else {
    s1+=107.0;
   }
  } else {
   if(i30<0.020046064630150795){
    if(i38<0.0014372214209288359){
     s0+=12.0;
     s1+=1756.0;
    } else {
     s0+=292.0;
     s1+=763.0;
    }
   } else {
    if(i0<0.10210561752319336){
     s0+=17.0;
     s1+=417.0;
    } else {
     s0+=5.0;
     s1+=8612.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i5<-4.935797187499702e-05){
  if(i11<0.998801589012146){
   if(i30<0.057299450039863586){
    if(i59<0.013123221695423126){
     s0+=1809.0;
     s1+=74.0;
    } else {
     s0+=144.0;
     s1+=163.0;
    }
   } else {
    if(i11<0.9544451236724854){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=66.0;
    }
   }
  } else {
   if(i20<-9.447336196899414e-06){
    if(i52<4.865225491812453e-05){
     s0+=191.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i12<1.0010430812835693){
     s0+=71.0;
     s1+=133.0;
    } else {
     s0+=22.0;
     s1+=931.0;
    }
   }
  }
 } else {
  if(i69<0.0014806471299380064){
   if(i1<0.0765443742275238){
    if(i39<0.00029571191407740116){
     s0+=34530.0;
    } else {
     s0+=25890.0;
     s1+=753.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=321.0;
     s1+=224.0;
    } else {
     s0+=400.0;
     s1+=12.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i36<0.00042635860154405236){
     s0+=1435.0;
     s1+=35.0;
    } else {
     s0+=306.0;
     s1+=649.0;
    }
   } else {
    if(i57<-0.003990352153778076){
     s0+=1947.0;
     s1+=211.0;
    } else {
     s0+=2154.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i11<1.0063620805740356){
  if(i20<-1.3887882232666016e-05){
   if(i58<0.00045868419692851603){
    if(i2<0.1738453209400177){
     s0+=42.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   } else {
    if(i24<1.398578405380249){
     s0+=402.0;
     s1+=4.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i60<0.025797903537750244){
    if(i43<0.04314035177230835){
     s0+=37.0;
     s1+=2591.0;
    } else {
     s0+=219.0;
     s1+=582.0;
    }
   } else {
    if(i17<0.0035853744484484196){
     s0+=755.0;
     s1+=312.0;
    } else {
     s0+=235.0;
     s1+=1121.0;
    }
   }
  }
 } else {
  if(i4<0.00011464953422546387){
   if(i10<1.0158302783966064){
    if(i25<0.05131605267524719){
     s0+=68.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i27<1.2527469396591187){
     s0+=1.0;
     s1+=14.0;
    } else {
     s1+=91.0;
    }
   }
  } else {
   if(i8<1.0017426013946533){
    if(i5<-2.5045177608262748e-05){
     s0+=1.0;
     s1+=328.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i16<0.0014230012893676758){
     s0+=19.0;
     s1+=964.0;
    } else {
     s1+=7880.0;
    }
   }
  }
 }
}
if(i20<1.627206802368164e-05){
 if(i1<0.08347609639167786){
  if(i49<-0.005848526954650879){
   if(i73<0.0001574942289153114){
    if(i24<1.1316008567810059){
     s0+=1141.0;
     s1+=614.0;
    } else {
     s0+=1615.0;
     s1+=93.0;
    }
   } else {
    if(i50<-0.0010424068896099925){
     s1+=2.0;
    } else {
     s0+=884.0;
     s1+=19.0;
    }
   }
  } else {
   if(i21<1.0073373317718506){
    if(i44<0.03050795942544937){
     s0+=56344.0;
     s1+=312.0;
    } else {
     s0+=5717.0;
     s1+=582.0;
    }
   } else {
    if(i47<0.0013320446014404297){
     s0+=168.0;
     s1+=175.0;
    } else {
     s0+=1403.0;
     s1+=182.0;
    }
   }
  }
 } else {
  if(i5<-1.3541021871787962e-05){
   if(i50<-8.161619189195335e-05){
    if(i58<0.0017899968661367893){
     s0+=254.0;
     s1+=2031.0;
    } else {
     s0+=17.0;
     s1+=1461.0;
    }
   } else {
    if(i40<0.04866570234298706){
     s0+=28.0;
     s1+=148.0;
    } else {
     s0+=158.0;
     s1+=84.0;
    }
   }
  } else {
   if(i8<0.9960569143295288){
    if(i73<3.9750622818246484e-05){
     s0+=46.0;
     s1+=3.0;
    } else {
     s0+=599.0;
     s1+=1.0;
    }
   } else {
    if(i40<0.05758678913116455){
     s0+=44.0;
     s1+=250.0;
    } else {
     s0+=564.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i16<0.00046175718307495117){
  if(i13<0.0007711648941040039){
   if(i2<0.09814459085464478){
    if(i59<0.014757501892745495){
     s0+=1457.0;
     s1+=226.0;
    } else {
     s0+=39.0;
     s1+=110.0;
    }
   } else {
    if(i39<0.004960712976753712){
     s0+=95.0;
     s1+=189.0;
    } else {
     s0+=8.0;
     s1+=389.0;
    }
   }
  } else {
   if(i2<0.11742126941680908){
    if(i59<0.009392067790031433){
     s0+=404.0;
     s1+=174.0;
    } else {
     s0+=45.0;
     s1+=317.0;
    }
   } else {
    if(i1<0.16892573237419128){
     s0+=29.0;
     s1+=306.0;
    } else {
     s1+=757.0;
    }
   }
  }
 } else {
  if(i38<0.00019639487436506897){
   if(i3<0.049922436475753784){
    s0+=51.0;
   } else {
    if(i44<0.0038041688967496157){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i33<0.0001616518129594624){
    if(i12<1.0060739517211914){
     s0+=35.0;
     s1+=10.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i17<0.0012996989535167813){
     s0+=15.0;
     s1+=38.0;
    } else {
     s0+=9.0;
     s1+=8485.0;
    }
   }
  }
 }
}
if(i2<0.07866418361663818){
 if(i15<0.000151902437210083){
  if(i0<0.06599608063697815){
   if(i24<1.0451585054397583){
    if(i8<1.00254487991333){
     s0+=52436.0;
     s1+=168.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i6<3.153085708618164e-05){
     s0+=13704.0;
     s1+=1151.0;
    } else {
     s0+=206.0;
     s1+=342.0;
    }
   }
  } else {
   if(i54<0.0009867548942565918){
    if(i43<0.02594563364982605){
     s0+=55.0;
     s1+=483.0;
    } else {
     s0+=406.0;
     s1+=151.0;
    }
   } else {
    if(i57<-0.0017899572849273682){
     s0+=138.0;
     s1+=96.0;
    } else {
     s0+=2018.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i34<1.000533103942871){
   if(i33<0.00043221976375207305){
    if(i50<-0.00028462911723181605){
     s0+=199.0;
     s1+=1.0;
    } else {
     s0+=68.0;
     s1+=19.0;
    }
   } else {
    if(i40<0.013943701982498169){
     s0+=1.0;
     s1+=41.0;
    } else {
     s0+=15.0;
     s1+=8.0;
    }
   }
  } else {
   if(i13<0.0005730986595153809){
    if(i29<1.2392117977142334){
     s1+=44.0;
    } else {
     s0+=82.0;
    }
   } else {
    s1+=619.0;
   }
  }
 }
} else {
 if(i32<1.37147855758667){
  if(i49<0.014419317245483398){
   if(i31<1.0670123100280762){
    if(i5<-2.3967957531567663e-05){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=157.0;
    }
   } else {
    if(i15<-0.0001741349697113037){
     s0+=160.0;
     s1+=237.0;
    } else {
     s0+=220.0;
     s1+=3681.0;
    }
   }
  } else {
   if(i17<0.005511006340384483){
    if(i1<0.12529361248016357){
     s0+=556.0;
     s1+=23.0;
    } else {
     s0+=408.0;
     s1+=444.0;
    }
   } else {
    if(i9<1.0608487129211426){
     s0+=34.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=921.0;
    }
   }
  }
 } else {
  if(i5<-1.3784601833322085e-05){
   if(i24<1.0819685459136963){
    if(i50<-0.0001344523043371737){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=62.0;
     s1+=9.0;
    }
   } else {
    if(i0<0.12743261456489563){
     s0+=95.0;
     s1+=436.0;
    } else {
     s0+=19.0;
     s1+=8040.0;
    }
   }
  } else {
   if(i38<0.01688523218035698){
    if(i70<0.9674530625343323){
     s1+=3.0;
    } else {
     s0+=56.0;
    }
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i5<-8.167879423126578e-05){
 if(i11<0.9810250401496887){
  if(i58<0.006273078732192516){
   if(i30<0.04770428687334061){
    if(i2<0.12243026494979858){
     s0+=436.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i70<0.8548415303230286){
     s0+=10.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i3<0.005167186260223389){
    if(i11<0.9574571847915649){
     s0+=9.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=115.0;
   }
  }
 } else {
  if(i20<0.00016105175018310547){
   if(i41<0.0004090073343832046){
    s0+=26.0;
   } else {
    if(i63<2.694288923521526e-05){
     s0+=98.0;
     s1+=10412.0;
    } else {
     s0+=89.0;
     s1+=381.0;
    }
   }
  } else {
   s0+=134.0;
  }
 }
} else {
 if(i2<0.07568231225013733){
  if(i51<0.0002811383455991745){
   if(i24<1.0487183332443237){
    if(i57<-0.002834528684616089){
     s0+=53.0;
     s1+=16.0;
    } else {
     s0+=48448.0;
     s1+=64.0;
    }
   } else {
    if(i67<1.0065436363220215){
     s0+=3417.0;
     s1+=125.0;
    } else {
     s0+=341.0;
     s1+=130.0;
    }
   }
  } else {
   if(i8<1.0023298263549805){
    if(i41<0.001978167798370123){
     s0+=5620.0;
     s1+=1529.0;
    } else {
     s0+=10184.0;
     s1+=227.0;
    }
   } else {
    if(i27<1.1961640119552612){
     s0+=11.0;
     s1+=529.0;
    } else {
     s0+=92.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i36<0.0004557690699584782){
   if(i15<7.212162017822266e-05){
    if(i8<1.0010645389556885){
     s0+=413.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i11<1.001188039779663){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i64<-0.004394756630063057){
    if(i1<0.11517965793609619){
     s0+=698.0;
     s1+=44.0;
    } else {
     s0+=522.0;
     s1+=1161.0;
    }
   } else {
    if(i0<0.0925416648387909){
     s0+=236.0;
     s1+=470.0;
    } else {
     s0+=126.0;
     s1+=2024.0;
    }
   }
  }
 }
}
if(i4<0.0005537867546081543){
 if(i22<1.0107730627059937){
  if(i27<1.0598037242889404){
   if(i56<0.0004094894393347204){
    if(i66<0.0004945858963765204){
     s0+=41260.0;
     s1+=2.0;
    } else {
     s0+=2052.0;
     s1+=12.0;
    }
   } else {
    if(i29<1.0762357711791992){
     s0+=525.0;
    } else {
     s0+=26.0;
     s1+=40.0;
    }
   }
  } else {
   if(i6<-3.236532211303711e-05){
    if(i3<0.08112114667892456){
     s0+=14518.0;
     s1+=397.0;
    } else {
     s0+=289.0;
     s1+=189.0;
    }
   } else {
    if(i56<0.00025438275770284235){
     s0+=7464.0;
     s1+=1002.0;
    } else {
     s0+=2496.0;
     s1+=1920.0;
    }
   }
  }
 } else {
  if(i17<0.004021994769573212){
   if(i5<-3.90286986657884e-05){
    if(i38<0.0007712209480814636){
     s1+=305.0;
    } else {
     s0+=77.0;
     s1+=42.0;
    }
   } else {
    if(i29<1.255998969078064){
     s0+=681.0;
     s1+=301.0;
    } else {
     s0+=888.0;
     s1+=11.0;
    }
   }
  } else {
   if(i6<-3.504753112792969e-05){
    if(i39<0.00975306611508131){
     s0+=155.0;
     s1+=17.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i16<-0.0009619593620300293){
     s0+=76.0;
     s1+=202.0;
    } else {
     s0+=12.0;
     s1+=1024.0;
    }
   }
  }
 }
} else {
 if(i38<0.000233056751312688){
  if(i14<1.006054162979126){
   s0+=162.0;
  } else {
   if(i71<1.0013729333877563){
    s1+=9.0;
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i30<0.016754135489463806){
   if(i42<-1.3720884453505278e-05){
    if(i16<7.086992263793945e-05){
     s0+=173.0;
     s1+=191.0;
    } else {
     s0+=14.0;
     s1+=1900.0;
    }
   } else {
    if(i15<0.00021541118621826172){
     s0+=149.0;
     s1+=42.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i15<-0.0001316368579864502){
    if(i61<0.0007031201384961605){
     s0+=46.0;
     s1+=54.0;
    } else {
     s0+=9.0;
     s1+=487.0;
    }
   } else {
    if(i16<-0.0005590915679931641){
     s0+=4.0;
     s1+=212.0;
    } else {
     s1+=8686.0;
    }
   }
  }
 }
}
if(i0<0.08203768730163574){
 if(i12<1.0028963088989258){
  if(i38<0.0003127905074506998){
   if(i56<0.000355068186763674){
    if(i18<1.0084049701690674){
     s0+=47115.0;
     s1+=43.0;
    } else {
     s0+=27.0;
     s1+=69.0;
    }
   } else {
    if(i14<0.9954725503921509){
     s0+=32.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i16<-0.0013845562934875488){
    if(i17<0.017949458211660385){
     s0+=11665.0;
     s1+=196.0;
    } else {
     s0+=12.0;
     s1+=37.0;
    }
   } else {
    if(i25<0.02510870061814785){
     s0+=9055.0;
     s1+=999.0;
    } else {
     s0+=606.0;
     s1+=681.0;
    }
   }
  }
 } else {
  if(i29<1.2385294437408447){
   if(i41<0.00031135501922108233){
    s0+=55.0;
   } else {
    s1+=557.0;
   }
  } else {
   if(i19<1.0031046867370605){
    if(i54<-0.0033570528030395508){
     s0+=34.0;
     s1+=96.0;
    } else {
     s0+=928.0;
     s1+=36.0;
    }
   } else {
    if(i36<0.010318111628293991){
     s0+=29.0;
     s1+=227.0;
    } else {
     s0+=45.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i17<0.00469526881352067){
  if(i54<0.005307912826538086){
   if(i43<0.0533120334148407){
    if(i29<1.0840110778808594){
     s0+=62.0;
    } else {
     s0+=132.0;
     s1+=1793.0;
    }
   } else {
    if(i11<1.0076791048049927){
     s0+=375.0;
     s1+=148.0;
    } else {
     s0+=9.0;
     s1+=145.0;
    }
   }
  } else {
   if(i65<-0.031162042170763016){
    if(i39<0.0038823566865175962){
     s0+=510.0;
     s1+=4.0;
    } else {
     s0+=160.0;
     s1+=98.0;
    }
   } else {
    if(i10<1.016305685043335){
     s0+=128.0;
     s1+=78.0;
    } else {
     s0+=2.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i13<-0.0005213022232055664){
   s0+=99.0;
  } else {
   if(i68<1.0054662227630615){
    if(i1<0.11719471216201782){
     s0+=153.0;
     s1+=1084.0;
    } else {
     s0+=26.0;
     s1+=10499.0;
    }
   } else {
    if(i50<-0.00022472115233540535){
     s1+=51.0;
    } else {
     s0+=47.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i11<1.005615234375){
 if(i69<0.0022751553915441036){
  if(i3<0.07131022214889526){
   if(i21<1.0067415237426758){
    if(i2<0.07698166370391846){
     s0+=62504.0;
     s1+=958.0;
    } else {
     s0+=87.0;
     s1+=247.0;
    }
   } else {
    if(i2<0.0791613757610321){
     s0+=1706.0;
     s1+=280.0;
    } else {
     s0+=3.0;
     s1+=158.0;
    }
   }
  } else {
   if(i30<0.02434029057621956){
    if(i60<0.028143644332885742){
     s0+=264.0;
     s1+=594.0;
    } else {
     s0+=1095.0;
     s1+=369.0;
    }
   } else {
    if(i14<0.9890289306640625){
     s0+=151.0;
     s1+=95.0;
    } else {
     s0+=91.0;
     s1+=1224.0;
    }
   }
  }
 } else {
  if(i2<0.04085206985473633){
   if(i0<0.013902157545089722){
    if(i4<0.0005851387977600098){
     s0+=2403.0;
     s1+=99.0;
    } else {
     s0+=29.0;
     s1+=38.0;
    }
   } else {
    if(i12<1.0004830360412598){
     s0+=1046.0;
     s1+=169.0;
    } else {
     s0+=94.0;
     s1+=194.0;
    }
   }
  } else {
   if(i19<0.9982991218566895){
    if(i68<1.0006318092346191){
     s0+=395.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i35<0.004645059816539288){
     s0+=335.0;
     s1+=581.0;
    } else {
     s0+=73.0;
     s1+=1662.0;
    }
   }
  }
 }
} else {
 if(i33<0.0001986897550523281){
  if(i72<-5.15054944116855e-06){
   s1+=114.0;
  } else {
   if(i1<0.06854712963104248){
    if(i32<1.0796239376068115){
     s1+=1.0;
    } else {
     s0+=362.0;
    }
   } else {
    if(i30<0.0038806675001978874){
     s0+=2.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i5<-4.3097257730551064e-05){
   if(i34<0.9989489912986755){
    if(i24<1.3921351432800293){
     s0+=32.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i30<0.011674616485834122){
     s0+=50.0;
     s1+=1410.0;
    } else {
     s0+=2.0;
     s1+=8575.0;
    }
   }
  } else {
   if(i31<1.1673471927642822){
    if(i35<0.0005326485261321068){
     s0+=13.0;
     s1+=8.0;
    } else {
     s1+=140.0;
    }
   } else {
    if(i38<0.011365163139998913){
     s0+=465.0;
     s1+=52.0;
    } else {
     s0+=13.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i13<0.000401914119720459){
 if(i11<1.0043551921844482){
  if(i29<1.0850647687911987){
   s0+=37797.0;
  } else {
   if(i7<1.0450963973999023){
    if(i57<-0.0014972686767578125){
     s0+=3408.0;
     s1+=680.0;
    } else {
     s0+=20725.0;
     s1+=343.0;
    }
   } else {
    if(i8<0.9974433779716492){
     s0+=2566.0;
     s1+=336.0;
    } else {
     s0+=3142.0;
     s1+=2483.0;
    }
   }
  }
 } else {
  if(i34<1.0000900030136108){
   if(i42<-3.051186922675697e-06){
    if(i33<0.00021722732344642282){
     s0+=22.0;
     s1+=18.0;
    } else {
     s0+=15.0;
     s1+=1398.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=48.0;
     s1+=82.0;
    } else {
     s0+=140.0;
    }
   }
  } else {
   if(i5<-4.2833140469156206e-05){
    if(i72<-3.6428982639336027e-06){
     s0+=1.0;
     s1+=210.0;
    } else {
     s0+=60.0;
     s1+=33.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s0+=1.0;
     s1+=91.0;
    } else {
     s0+=850.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i14<1.0010249614715576){
  if(i7<1.1205039024353027){
   if(i4<0.0005721151828765869){
    if(i0<0.13332787156105042){
     s0+=1527.0;
     s1+=164.0;
    } else {
     s0+=2.0;
     s1+=65.0;
    }
   } else {
    if(i1<0.11683565378189087){
     s0+=181.0;
     s1+=117.0;
    } else {
     s0+=17.0;
     s1+=170.0;
    }
   }
  } else {
   if(i31<1.2592661380767822){
    if(i5<-3.980994733865373e-05){
     s0+=23.0;
     s1+=77.0;
    } else {
     s0+=91.0;
     s1+=19.0;
    }
   } else {
    if(i68<1.0068068504333496){
     s0+=6.0;
     s1+=980.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i17<0.002171597443521023){
   if(i52<-3.0094126486801542e-05){
    s1+=119.0;
   } else {
    if(i5<-4.4599790271604434e-05){
     s1+=38.0;
    } else {
     s0+=181.0;
    }
   }
  } else {
   if(i61<0.0001985838171094656){
    if(i12<1.0059127807617188){
     s0+=29.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=296.0;
    }
   } else {
    if(i38<0.00021834248036611825){
     s0+=1.0;
    } else {
     s0+=42.0;
     s1+=9591.0;
    }
   }
  }
 }
}
if(i3<0.0713215172290802){
 if(i2<0.07553675770759583){
  if(i7<1.044858694076538){
   if(i8<1.0025430917739868){
    if(i29<1.0856719017028809){
     s0+=36678.0;
    } else {
     s0+=24816.0;
     s1+=804.0;
    }
   } else {
    if(i56<9.667677659308538e-06){
     s0+=60.0;
    } else {
     s0+=10.0;
     s1+=135.0;
    }
   }
  } else {
   if(i13<0.0005574226379394531){
    if(i4<0.00020176172256469727){
     s0+=6037.0;
     s1+=818.0;
    } else {
     s0+=620.0;
     s1+=376.0;
    }
   } else {
    if(i4<0.0005173683166503906){
     s0+=360.0;
     s1+=70.0;
    } else {
     s0+=133.0;
     s1+=894.0;
    }
   }
  }
 } else {
  if(i4<-0.0005963444709777832){
   if(i8<0.9965639114379883){
    if(i15<-0.00026416778564453125){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=106.0;
    }
   } else {
    if(i25<0.021223371848464012){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i60<0.03633067011833191){
    if(i46<0.006847470998764038){
     s0+=16.0;
     s1+=1484.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i59<0.0004278006963431835){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i17<0.004687285050749779){
  if(i5<-1.38188770506531e-05){
   if(i46<0.004506736993789673){
    if(i37<-0.00011971592903137207){
     s0+=62.0;
     s1+=18.0;
    } else {
     s0+=140.0;
     s1+=1204.0;
    }
   } else {
    if(i5<-6.83905091136694e-05){
     s0+=11.0;
     s1+=121.0;
    } else {
     s0+=415.0;
     s1+=165.0;
    }
   }
  } else {
   if(i67<0.9901840686798096){
    if(i20<-1.9669532775878906e-05){
     s0+=51.0;
    } else {
     s0+=34.0;
     s1+=117.0;
    }
   } else {
    if(i43<0.038151681423187256){
     s0+=12.0;
     s1+=43.0;
    } else {
     s0+=974.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i19<0.9980086088180542){
   s0+=112.0;
  } else {
   if(i30<0.01888653263449669){
    if(i11<0.9992972612380981){
     s0+=181.0;
     s1+=188.0;
    } else {
     s0+=19.0;
     s1+=1025.0;
    }
   } else {
    if(i3<0.08121192455291748){
     s0+=40.0;
     s1+=251.0;
    } else {
     s0+=32.0;
     s1+=9431.0;
    }
   }
  }
 }
}
if(i51<0.00033419718965888023){
 if(i10<1.0080074071884155){
  if(i12<1.0034291744232178){
   if(i57<-0.0046627819538116455){
    if(i38<0.000533224199898541){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   } else {
    if(i1<0.08048602938652039){
     s0+=54332.0;
     s1+=261.0;
    } else {
     s0+=333.0;
     s1+=99.0;
    }
   }
  } else {
   if(i8<1.0017242431640625){
    if(i55<0.02269645966589451){
     s0+=24.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<0.0027490765787661076){
     s0+=13.0;
    } else {
     s1+=86.0;
    }
   }
  }
 } else {
  if(i5<-4.057683327118866e-05){
   if(i27<1.23526930809021){
    if(i24<1.1345939636230469){
     s0+=1.0;
     s1+=393.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i70<1.021597146987915){
     s0+=19.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i49<-0.00031495094299316406){
    if(i0<0.06769022345542908){
     s0+=135.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i24<1.082112193107605){
     s0+=2.0;
     s1+=53.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
} else {
 if(i0<0.081319659948349){
  if(i64<-0.0027735319454222918){
   if(i69<0.016882214695215225){
    if(i11<0.9963803887367249){
     s0+=6624.0;
     s1+=49.0;
    } else {
     s0+=906.0;
     s1+=109.0;
    }
   } else {
    if(i13<-0.0003076791763305664){
     s0+=20.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i5<-8.968479050963651e-06){
    if(i39<0.0011036116629838943){
     s0+=215.0;
     s1+=1064.0;
    } else {
     s0+=2884.0;
     s1+=648.0;
    }
   } else {
    if(i35<0.00046454707626253366){
     s0+=1966.0;
     s1+=8.0;
    } else {
     s0+=2119.0;
     s1+=463.0;
    }
   }
  }
 } else {
  if(i19<0.9985270500183105){
   if(i39<0.008417043834924698){
    if(i38<0.0010386810172349215){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=435.0;
    }
   } else {
    if(i49<0.027720898389816284){
     s1+=15.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  } else {
   if(i6<3.832578659057617e-05){
    if(i43<0.04318714141845703){
     s0+=62.0;
     s1+=1923.0;
    } else {
     s0+=1008.0;
     s1+=1348.0;
    }
   } else {
    if(i17<0.006492264568805695){
     s0+=97.0;
     s1+=1550.0;
    } else {
     s0+=23.0;
     s1+=8796.0;
    }
   }
  }
 }
}
if(i2<0.07910728454589844){
 if(i8<1.0024913549423218){
  if(i69<0.0017442350508645177){
   if(i24<1.0486011505126953){
    if(i18<1.0098820924758911){
     s0+=54574.0;
     s1+=195.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i36<0.0006822824943810701){
     s0+=3326.0;
     s1+=814.0;
    } else {
     s0+=5638.0;
     s1+=139.0;
    }
   }
  } else {
   if(i35<0.0009778410894796252){
    if(i52<3.0010531190782785e-05){
     s0+=971.0;
     s1+=159.0;
    } else {
     s0+=276.0;
     s1+=430.0;
    }
   } else {
    if(i13<0.00042766332626342773){
     s0+=4024.0;
     s1+=274.0;
    } else {
     s0+=262.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i32<1.250713586807251){
   if(i29<1.0757708549499512){
    s0+=2.0;
   } else {
    if(i52<9.708786819828674e-05){
     s1+=840.0;
    } else {
     s0+=5.0;
     s1+=20.0;
    }
   }
  } else {
   if(i70<0.9946513772010803){
    if(i63<2.5474186259089038e-05){
     s0+=24.0;
     s1+=238.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   } else {
    if(i20<4.7147274017333984e-05){
     s0+=234.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i40<0.05820918083190918){
   if(i13<-0.00038421154022216797){
    if(i67<1.0126395225524902){
     s0+=85.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i8<0.9950349926948547){
     s0+=5.0;
    } else {
     s0+=54.0;
     s1+=1598.0;
    }
   }
  } else {
   if(i15<9.47117805480957e-05){
    if(i64<-0.008735546842217445){
     s0+=607.0;
     s1+=53.0;
    } else {
     s0+=619.0;
     s1+=364.0;
    }
   } else {
    if(i51<0.0024396907538175583){
     s0+=10.0;
     s1+=266.0;
    } else {
     s0+=60.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i24<1.0640453100204468){
   if(i15<-0.0001239478588104248){
    if(i14<0.9952969551086426){
     s0+=100.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   } else {
    if(i8<0.9963408708572388){
     s0+=1.0;
    } else {
     s1+=116.0;
    }
   }
  } else {
   if(i19<0.9980086088180542){
    s0+=65.0;
   } else {
    if(i24<1.1254843473434448){
     s0+=100.0;
     s1+=1880.0;
    } else {
     s0+=25.0;
     s1+=9499.0;
    }
   }
  }
 }
}
if(i0<0.0851384699344635){
 if(i6<4.202127456665039e-05){
  if(i57<-0.0020736753940582275){
   if(i31<1.1823735237121582){
    if(i36<0.00044939701911062){
     s0+=1470.0;
     s1+=103.0;
    } else {
     s0+=611.0;
     s1+=738.0;
    }
   } else {
    if(i30<0.039478473365306854){
     s0+=3785.0;
     s1+=101.0;
    } else {
     s0+=60.0;
     s1+=87.0;
    }
   }
  } else {
   if(i18<1.0067187547683716){
    if(i51<0.00030692131258547306){
     s0+=52395.0;
     s1+=115.0;
    } else {
     s0+=8208.0;
     s1+=560.0;
    }
   } else {
    if(i32<1.1040980815887451){
     s0+=654.0;
     s1+=450.0;
    } else {
     s0+=1965.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i14<0.9992627501487732){
   if(i23<0.9930862784385681){
    if(i33<0.0003378718683961779){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   } else {
    if(i10<0.9761563539505005){
     s1+=15.0;
    } else {
     s0+=300.0;
     s1+=21.0;
    }
   }
  } else {
   if(i5<-4.330423689680174e-05){
    if(i43<0.038269877433776855){
     s0+=52.0;
     s1+=823.0;
    } else {
     s0+=15.0;
     s1+=5.0;
    }
   } else {
    if(i31<1.2160736322402954){
     s0+=5.0;
     s1+=90.0;
    } else {
     s0+=118.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i16<0.000367581844329834){
  if(i43<0.04684284329414368){
   if(i68<0.9956411123275757){
    s0+=78.0;
   } else {
    if(i34<0.9990441799163818){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=2389.0;
    }
   }
  } else {
   if(i30<0.03834867477416992){
    if(i5<-1.086396150640212e-05){
     s0+=512.0;
     s1+=564.0;
    } else {
     s0+=681.0;
     s1+=92.0;
    }
   } else {
    if(i4<-0.0013360381126403809){
     s0+=15.0;
     s1+=11.0;
    } else {
     s0+=17.0;
     s1+=761.0;
    }
   }
  }
 } else {
  if(i38<0.00022851582616567612){
   s0+=5.0;
  } else {
   if(i35<0.004881935194134712){
    if(i24<1.207309603691101){
     s0+=43.0;
     s1+=2037.0;
    } else {
     s0+=82.0;
     s1+=16.0;
    }
   } else {
    if(i15<5.644559860229492e-05){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=7991.0;
    }
   }
  }
 }
}
if(i1<0.08541274070739746){
 if(i13<0.0006254315376281738){
  if(i47<-0.0012956559658050537){
   if(i35<0.0009778380626812577){
    if(i56<0.00041963893454521894){
     s0+=1191.0;
     s1+=296.0;
    } else {
     s0+=110.0;
     s1+=374.0;
    }
   } else {
    if(i3<0.062291502952575684){
     s0+=4286.0;
     s1+=244.0;
    } else {
     s0+=107.0;
     s1+=69.0;
    }
   }
  } else {
   if(i26<1.005781650543213){
    if(i7<1.0406912565231323){
     s0+=54845.0;
     s1+=207.0;
    } else {
     s0+=6207.0;
     s1+=606.0;
    }
   } else {
    if(i55<0.017001530155539513){
     s0+=225.0;
     s1+=259.0;
    } else {
     s0+=1572.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i8<1.002983570098877){
   if(i54<-0.002263188362121582){
    if(i31<1.3522114753723145){
     s0+=35.0;
     s1+=44.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   } else {
    if(i36<0.006847613491117954){
     s0+=172.0;
     s1+=75.0;
    } else {
     s0+=368.0;
     s1+=3.0;
    }
   }
  } else {
   if(i14<1.0019034147262573){
    if(i61<0.0004529078141786158){
     s0+=27.0;
     s1+=7.0;
    } else {
     s0+=31.0;
     s1+=72.0;
    }
   } else {
    if(i54<0.0026580989360809326){
     s0+=14.0;
     s1+=703.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i11<1.0058965682983398){
  if(i34<0.999078631401062){
   if(i8<0.9978853464126587){
    if(i6<-3.463029861450195e-05){
     s0+=565.0;
    } else {
     s0+=60.0;
     s1+=6.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i30<0.02408599853515625){
    if(i51<0.0017526852898299694){
     s0+=239.0;
     s1+=841.0;
    } else {
     s0+=755.0;
     s1+=653.0;
    }
   } else {
    if(i5<-1.829557731980458e-06){
     s0+=96.0;
     s1+=2826.0;
    } else {
     s0+=73.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i61<0.00013760049478150904){
   if(i16<0.000806272029876709){
    s0+=64.0;
   } else {
    s1+=162.0;
   }
  } else {
   if(i17<0.0019935176242142916){
    if(i16<0.0014703869819641113){
     s0+=36.0;
     s1+=8.0;
    } else {
     s1+=134.0;
    }
   } else {
    if(i15<8.940696716308594e-06){
     s0+=13.0;
     s1+=137.0;
    } else {
     s0+=3.0;
     s1+=9093.0;
    }
   }
  }
 }
}
if(i7<1.052894115447998){
 if(i1<0.08123493194580078){
  if(i33<0.00030391855398193){
   if(i19<1.0020110607147217){
    if(i21<1.0083129405975342){
     s0+=55090.0;
     s1+=390.0;
    } else {
     s0+=176.0;
     s1+=130.0;
    }
   } else {
    if(i16<-0.0005941987037658691){
     s0+=28.0;
     s1+=1.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i11<0.9897009134292603){
    if(i34<1.0025829076766968){
     s0+=5415.0;
     s1+=83.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i30<0.011296475306153297){
     s0+=2226.0;
     s1+=375.0;
    } else {
     s0+=404.0;
     s1+=334.0;
    }
   }
  }
 } else {
  if(i13<-0.00036132335662841797){
   if(i67<1.012433409690857){
    if(i20<-2.2798776626586914e-05){
     s0+=298.0;
    } else {
     s0+=88.0;
     s1+=5.0;
    }
   } else {
    if(i66<0.0003420227731112391){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   if(i1<0.0924493670463562){
    if(i23<1.0285388231277466){
     s0+=18.0;
     s1+=130.0;
    } else {
     s0+=200.0;
     s1+=97.0;
    }
   } else {
    if(i14<0.9943687915802002){
     s0+=18.0;
     s1+=28.0;
    } else {
     s0+=18.0;
     s1+=521.0;
    }
   }
  }
 }
} else {
 if(i2<0.08505553007125854){
  if(i20<1.913309097290039e-05){
   if(i27<1.1036889553070068){
    if(i41<0.0003431905061006546){
     s0+=553.0;
     s1+=44.0;
    } else {
     s0+=676.0;
     s1+=749.0;
    }
   } else {
    if(i30<0.037277042865753174){
     s0+=3626.0;
     s1+=224.0;
    } else {
     s0+=89.0;
     s1+=61.0;
    }
   }
  } else {
   if(i68<1.0017516613006592){
    if(i36<0.010652531869709492){
     s0+=123.0;
     s1+=1054.0;
    } else {
     s0+=97.0;
     s1+=38.0;
    }
   } else {
    if(i23<1.0148653984069824){
     s0+=26.0;
     s1+=53.0;
    } else {
     s0+=374.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i5<-2.1133961126906797e-05){
   if(i5<-4.9987007514573634e-05){
    if(i0<0.11053186655044556){
     s0+=104.0;
     s1+=551.0;
    } else {
     s0+=56.0;
     s1+=10950.0;
    }
   } else {
    if(i43<0.05325192213058472){
     s0+=25.0;
     s1+=688.0;
    } else {
     s0+=229.0;
     s1+=327.0;
    }
   }
  } else {
   if(i48<0.07334437966346741){
    if(i53<0.9995768070220947){
     s0+=102.0;
    } else {
     s0+=172.0;
     s1+=355.0;
    }
   } else {
    if(i19<1.0017199516296387){
     s0+=594.0;
     s1+=91.0;
    } else {
     s1+=38.0;
    }
   }
  }
 }
}
if(i5<-8.167879423126578e-05){
 if(i26<0.9433262348175049){
  if(i6<2.288818359375e-05){
   if(i58<0.006415048614144325){
    if(i42<-4.83015610370785e-05){
     s1+=2.0;
    } else {
     s0+=394.0;
    }
   } else {
    if(i39<0.0169246643781662){
     s1+=14.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i17<0.017965171486139297){
    if(i30<0.02980913780629635){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s1+=81.0;
   }
  }
 } else {
  if(i27<1.0611095428466797){
   s0+=171.0;
  } else {
   if(i1<0.07646030187606812){
    if(i36<0.008463309146463871){
     s0+=35.0;
     s1+=333.0;
    } else {
     s0+=139.0;
     s1+=53.0;
    }
   } else {
    if(i16<-0.0025454163551330566){
     s0+=41.0;
     s1+=104.0;
    } else {
     s0+=65.0;
     s1+=10261.0;
    }
   }
  }
 }
} else {
 if(i1<0.08352836966514587){
  if(i19<1.001636028289795){
   if(i59<0.007421890273690224){
    if(i1<0.06920060515403748){
     s0+=62008.0;
     s1+=818.0;
    } else {
     s0+=2288.0;
     s1+=424.0;
    }
   } else {
    if(i13<-0.00015246868133544922){
     s0+=1705.0;
     s1+=112.0;
    } else {
     s0+=1574.0;
     s1+=623.0;
    }
   }
  } else {
   if(i37<0.0003657341003417969){
    if(i4<0.00044983625411987305){
     s0+=192.0;
     s1+=43.0;
    } else {
     s0+=113.0;
     s1+=418.0;
    }
   } else {
    if(i15<-7.575750350952148e-05){
     s0+=426.0;
     s1+=19.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i19<0.998518705368042){
   if(i56<0.0010240834672003984){
    if(i42<-1.0307636330253445e-05){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=740.0;
     s1+=2.0;
    }
   } else {
    if(i11<0.9772902727127075){
     s0+=22.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i49<0.014512240886688232){
    if(i43<0.054625093936920166){
     s0+=103.0;
     s1+=2354.0;
    } else {
     s0+=230.0;
     s1+=349.0;
    }
   } else {
    if(i0<0.13178330659866333){
     s0+=644.0;
     s1+=93.0;
    } else {
     s0+=277.0;
     s1+=942.0;
    }
   }
  }
 }
}
if(i5<-8.168155909515917e-05){
 if(i4<0.0001552104949951172){
  if(i1<0.102358877658844){
   if(i61<0.002000961685553193){
    if(i10<1.0029301643371582){
     s0+=563.0;
     s1+=36.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i1<0.014562249183654785){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i30<0.01452921237796545){
    s0+=20.0;
   } else {
    if(i34<1.0021092891693115){
     s1+=266.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i2<0.031083732843399048){
   if(i54<-0.004449069499969482){
    if(i42<-2.4439883418381214e-05){
     s0+=7.0;
     s1+=82.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i26<0.9874123334884644){
     s0+=91.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   if(i1<0.08457159996032715){
    if(i65<-0.01398797333240509){
     s0+=57.0;
     s1+=11.0;
    } else {
     s0+=19.0;
     s1+=415.0;
    }
   } else {
    if(i2<0.1385507881641388){
     s0+=53.0;
     s1+=1163.0;
    } else {
     s0+=8.0;
     s1+=8900.0;
    }
   }
  }
 }
} else {
 if(i7<1.0452277660369873){
  if(i0<0.0832144021987915){
   if(i47<-0.0013273358345031738){
    if(i27<1.1645891666412354){
     s0+=1525.0;
     s1+=521.0;
    } else {
     s0+=2261.0;
     s1+=16.0;
    }
   } else {
    if(i18<1.0086055994033813){
     s0+=57527.0;
     s1+=368.0;
    } else {
     s0+=69.0;
     s1+=28.0;
    }
   }
  } else {
   if(i13<-0.0003985762596130371){
    s0+=87.0;
   } else {
    if(i43<0.049376457929611206){
     s0+=10.0;
     s1+=249.0;
    } else {
     s0+=72.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i1<0.0773308277130127){
   if(i15<0.00021117925643920898){
    if(i5<-2.1130408640601672e-05){
     s0+=1940.0;
     s1+=825.0;
    } else {
     s0+=4918.0;
     s1+=444.0;
    }
   } else {
    if(i29<1.2160128355026245){
     s1+=147.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i40<0.05393990874290466){
    if(i37<-0.00023308396339416504){
     s0+=59.0;
    } else {
     s0+=138.0;
     s1+=2105.0;
    }
   } else {
    if(i20<-1.6301870346069336e-05){
     s0+=334.0;
     s1+=10.0;
    } else {
     s0+=1290.0;
     s1+=1516.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i2<0.07800713181495667){
  if(i33<0.0002936897799372673){
   if(i22<1.0094950199127197){
    if(i25<0.02599373832345009){
     s0+=55101.0;
     s1+=341.0;
    } else {
     s0+=812.0;
     s1+=105.0;
    }
   } else {
    if(i73<2.423792648187373e-05){
     s0+=2.0;
     s1+=55.0;
    } else {
     s0+=289.0;
     s1+=62.0;
    }
   }
  } else {
   if(i27<1.1036889553070068){
    if(i5<-1.4257871953304857e-05){
     s0+=357.0;
     s1+=626.0;
    } else {
     s0+=3715.0;
     s1+=543.0;
    }
   } else {
    if(i50<-0.0003179047489538789){
     s0+=1149.0;
     s1+=158.0;
    } else {
     s0+=7562.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i20<-1.7315149307250977e-05){
   if(i68<1.0011104345321655){
    s0+=395.0;
   } else {
    if(i0<0.10422006249427795){
     s0+=14.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i40<0.05819499492645264){
    if(i0<0.08642363548278809){
     s0+=85.0;
     s1+=204.0;
    } else {
     s0+=22.0;
     s1+=1661.0;
    }
   } else {
    if(i25<0.048435311764478683){
     s0+=1128.0;
     s1+=678.0;
    } else {
     s0+=58.0;
     s1+=742.0;
    }
   }
  }
 }
} else {
 if(i41<0.00030976897687651217){
  s0+=195.0;
 } else {
  if(i5<-4.601004548021592e-05){
   if(i25<0.020506128668785095){
    if(i28<0.9967862367630005){
     s0+=111.0;
     s1+=134.0;
    } else {
     s0+=41.0;
     s1+=1903.0;
    }
   } else {
    if(i1<0.07711932063102722){
     s0+=63.0;
     s1+=371.0;
    } else {
     s0+=35.0;
     s1+=8836.0;
    }
   }
  } else {
   if(i6<6.35981559753418e-05){
    if(i39<0.00228507979772985){
     s0+=3.0;
     s1+=104.0;
    } else {
     s0+=184.0;
     s1+=46.0;
    }
   } else {
    if(i51<0.00023473540204577148){
     s0+=2.0;
    } else {
     s1+=133.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i7<1.0452277660369873){
  if(i2<0.08047211170196533){
   if(i24<1.0451585054397583){
    if(i66<0.0006792336935177445){
     s0+=50867.0;
     s1+=67.0;
    } else {
     s0+=3263.0;
     s1+=172.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=1864.0;
     s1+=476.0;
    } else {
     s0+=6093.0;
     s1+=120.0;
    }
   }
  } else {
   if(i16<-0.0012183785438537598){
    if(i6<-5.561113357543945e-05){
     s0+=88.0;
     s1+=2.0;
    } else {
     s0+=42.0;
     s1+=32.0;
    }
   } else {
    if(i27<1.0543125867843628){
     s0+=45.0;
    } else {
     s0+=13.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i4<0.00020581483840942383){
   if(i3<0.06205710768699646){
    if(i1<0.07540133595466614){
     s0+=5669.0;
     s1+=660.0;
    } else {
     s0+=80.0;
     s1+=274.0;
    }
   } else {
    if(i43<0.033124297857284546){
     s0+=85.0;
     s1+=784.0;
    } else {
     s0+=1547.0;
     s1+=1020.0;
    }
   }
  } else {
   if(i50<-0.00012572812556754798){
    if(i35<0.0013682852732017636){
     s0+=1.0;
     s1+=536.0;
    } else {
     s0+=567.0;
     s1+=805.0;
    }
   } else {
    if(i32<1.0686089992523193){
     s0+=132.0;
    } else {
     s0+=183.0;
     s1+=254.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003575787995941937){
  s0+=154.0;
 } else {
  if(i17<0.0023745461367070675){
   if(i4<0.0009688138961791992){
    if(i52<8.57461509440327e-06){
     s0+=193.0;
    } else {
     s0+=6.0;
     s1+=34.0;
    }
   } else {
    s1+=165.0;
   }
  } else {
   if(i0<0.0398104190826416){
    if(i48<-0.0027748048305511475){
     s0+=31.0;
     s1+=190.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i14<1.0019569396972656){
     s0+=110.0;
     s1+=1522.0;
    } else {
     s0+=36.0;
     s1+=9857.0;
    }
   }
  }
 }
}
if(i7<1.0564017295837402){
 if(i8<1.0024607181549072){
  if(i25<0.016072874888777733){
   if(i2<0.08889180421829224){
    if(i62<0.04734060913324356){
     s0+=52124.0;
     s1+=279.0;
    } else {
     s0+=3676.0;
     s1+=292.0;
    }
   } else {
    if(i12<0.9946300983428955){
     s0+=63.0;
    } else {
     s0+=27.0;
     s1+=154.0;
    }
   }
  } else {
   if(i2<0.07724055647850037){
    if(i16<-0.001534193754196167){
     s0+=6305.0;
     s1+=24.0;
    } else {
     s0+=2084.0;
     s1+=628.0;
    }
   } else {
    if(i4<-0.0007415413856506348){
     s0+=97.0;
     s1+=14.0;
    } else {
     s0+=50.0;
     s1+=471.0;
    }
   }
  }
 } else {
  if(i1<0.05556437373161316){
   if(i5<-5.3128329454921186e-05){
    if(i27<1.2176469564437866){
     s0+=2.0;
     s1+=65.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   } else {
    if(i58<0.0010054243030026555){
     s0+=73.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i20<1.5914440155029297e-05){
    if(i56<1.658598193898797e-05){
     s0+=10.0;
     s1+=2.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i20<1.8537044525146484e-05){
     s0+=1.0;
     s1+=17.0;
    } else {
     s1+=379.0;
    }
   }
  }
 }
} else {
 if(i17<0.004339978564530611){
  if(i5<-5.4210711823543534e-05){
   if(i15<6.079673767089844e-06){
    if(i34<1.0008509159088135){
     s0+=10.0;
     s1+=68.0;
    } else {
     s0+=64.0;
     s1+=10.0;
    }
   } else {
    if(i13<-0.00022357702255249023){
     s0+=8.0;
    } else {
     s0+=6.0;
     s1+=974.0;
    }
   }
  } else {
   if(i31<1.094580888748169){
    if(i68<0.9998723864555359){
     s0+=385.0;
     s1+=528.0;
    } else {
     s0+=383.0;
     s1+=108.0;
    }
   } else {
    if(i1<0.11104926466941833){
     s0+=3709.0;
     s1+=213.0;
    } else {
     s0+=611.0;
     s1+=549.0;
    }
   }
  }
 } else {
  if(i16<-0.0008352994918823242){
   if(i58<0.0053007411770522594){
    if(i1<0.11515706777572632){
     s0+=892.0;
     s1+=268.0;
    } else {
     s0+=77.0;
     s1+=550.0;
    }
   } else {
    if(i61<0.0016675787046551704){
     s0+=4.0;
     s1+=60.0;
    } else {
     s0+=1.0;
     s1+=603.0;
    }
   }
  } else {
   if(i8<0.9978854060173035){
    if(i5<-7.151826866902411e-05){
     s1+=16.0;
    } else {
     s0+=145.0;
     s1+=2.0;
    }
   } else {
    if(i4<-0.0003853440284729004){
     s0+=11.0;
     s1+=21.0;
    } else {
     s0+=60.0;
     s1+=11031.0;
    }
   }
  }
 }
}
if(i13<0.0004476308822631836){
 if(i9<1.0451881885528564){
  if(i33<0.00029936275677755475){
   if(i66<0.0008379991631954908){
    if(i22<1.0079665184020996){
     s0+=54289.0;
     s1+=280.0;
    } else {
     s0+=489.0;
     s1+=142.0;
    }
   } else {
    if(i35<0.000992210698314011){
     s0+=212.0;
     s1+=191.0;
    } else {
     s0+=570.0;
     s1+=5.0;
    }
   }
  } else {
   if(i2<0.07807236909866333){
    if(i31<1.1812903881072998){
     s0+=3025.0;
     s1+=725.0;
    } else {
     s0+=5538.0;
     s1+=44.0;
    }
   } else {
    if(i14<0.9940224885940552){
     s0+=128.0;
     s1+=41.0;
    } else {
     s0+=18.0;
     s1+=387.0;
    }
   }
  }
 } else {
  if(i30<0.023888543248176575){
   if(i4<0.0001500248908996582){
    if(i2<0.07562986016273499){
     s0+=3103.0;
     s1+=329.0;
    } else {
     s0+=884.0;
     s1+=703.0;
    }
   } else {
    if(i17<0.0027982452884316444){
     s0+=547.0;
     s1+=436.0;
    } else {
     s0+=32.0;
     s1+=643.0;
    }
   }
  } else {
   if(i5<-1.0977566489600576e-05){
    if(i24<1.063935399055481){
     s0+=84.0;
     s1+=5.0;
    } else {
     s0+=75.0;
     s1+=2034.0;
    }
   } else {
    if(i20<-1.0788440704345703e-05){
     s0+=287.0;
     s1+=4.0;
    } else {
     s0+=96.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i7<1.0644469261169434){
  if(i8<1.0018116235733032){
   if(i69<0.00742995785549283){
    if(i45<0.043474048376083374){
     s0+=673.0;
     s1+=20.0;
    } else {
     s0+=245.0;
     s1+=54.0;
    }
   } else {
    if(i0<0.011742472648620605){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   }
  } else {
   if(i17<0.0016505110543221235){
    s0+=53.0;
   } else {
    if(i37<0.0003948211669921875){
     s1+=857.0;
    } else {
     s0+=93.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i15<6.258487701416016e-06){
   if(i33<0.003491190494969487){
    if(i69<0.003146226517856121){
     s0+=453.0;
     s1+=329.0;
    } else {
     s0+=19.0;
     s1+=183.0;
    }
   } else {
    if(i39<0.004962300416082144){
     s0+=60.0;
     s1+=123.0;
    } else {
     s0+=61.0;
     s1+=997.0;
    }
   }
  } else {
   if(i33<0.0001657215179875493){
    if(i58<0.0009081588359549642){
     s0+=8.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i17<0.0010583586990833282){
     s0+=20.0;
     s1+=24.0;
    } else {
     s0+=6.0;
     s1+=8411.0;
    }
   }
  }
 }
}
if(i1<0.08401688933372498){
 if(i63<-7.969405487529002e-06){
  if(i52<0.00012858997797593474){
   if(i60<0.010977476835250854){
    s1+=247.0;
   } else {
    if(i73<0.00012649930431507528){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i34<1.0022783279418945){
    s0+=6.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i6<3.892183303833008e-05){
   if(i38<0.0003133073332719505){
    if(i11<1.005364179611206){
     s0+=46816.0;
     s1+=75.0;
    } else {
     s0+=112.0;
     s1+=65.0;
    }
   } else {
    if(i1<0.06630915403366089){
     s0+=19674.0;
     s1+=1306.0;
    } else {
     s0+=1998.0;
     s1+=653.0;
    }
   }
  } else {
   if(i41<0.00042648223461583257){
    if(i11<1.007359266281128){
     s0+=258.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i67<1.0200037956237793){
     s0+=202.0;
     s1+=671.0;
    } else {
     s0+=63.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4722347259521484e-05){
  if(i15<-0.00044354796409606934){
   if(i61<0.0008850247832015157){
    s0+=41.0;
   } else {
    if(i69<0.0012164842337369919){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=13.0;
    }
   }
  } else {
   if(i10<1.0174098014831543){
    if(i14<0.9923827648162842){
     s0+=530.0;
    } else {
     s0+=63.0;
     s1+=6.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i6<3.36766242980957e-05){
   if(i25<0.021084103733301163){
    if(i64<-0.004646237939596176){
     s0+=570.0;
     s1+=107.0;
    } else {
     s0+=224.0;
     s1+=793.0;
    }
   } else {
    if(i40<0.058369338512420654){
     s0+=21.0;
     s1+=1285.0;
    } else {
     s0+=331.0;
     s1+=1065.0;
    }
   }
  } else {
   if(i72<-3.999604086857289e-05){
    s0+=12.0;
   } else {
    if(i15<-9.644031524658203e-05){
     s0+=90.0;
     s1+=689.0;
    } else {
     s0+=56.0;
     s1+=10176.0;
    }
   }
  }
 }
}
if(i2<0.07752794027328491){
 if(i19<1.0018912553787231){
  if(i51<0.0002811383455991745){
   if(i6<2.950429916381836e-05){
    if(i21<1.0094115734100342){
     s0+=51432.0;
     s1+=169.0;
    } else {
     s0+=34.0;
     s1+=47.0;
    }
   } else {
    if(i24<1.0484097003936768){
     s0+=734.0;
     s1+=5.0;
    } else {
     s0+=124.0;
     s1+=92.0;
    }
   }
  } else {
   if(i32<1.1034480333328247){
    if(i13<7.104873657226562e-05){
     s0+=3866.0;
     s1+=786.0;
    } else {
     s0+=307.0;
     s1+=670.0;
    }
   } else {
    if(i49<-0.01092076301574707){
     s0+=1899.0;
     s1+=246.0;
    } else {
     s0+=10051.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i16<-0.0005167722702026367){
   if(i22<0.984699010848999){
    if(i15<-0.0004425048828125){
     s0+=147.0;
     s1+=32.0;
    } else {
     s0+=26.0;
     s1+=179.0;
    }
   } else {
    if(i27<1.1480928659439087){
     s0+=71.0;
     s1+=43.0;
    } else {
     s0+=380.0;
     s1+=17.0;
    }
   }
  } else {
   if(i17<0.0009221826330758631){
    if(i66<0.0010239442344754934){
     s0+=19.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i56<-0.0001717947016004473){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=865.0;
    }
   }
  }
 }
} else {
 if(i17<0.00470145046710968){
  if(i54<0.004781007766723633){
   if(i5<-1.1281210390734486e-05){
    if(i2<0.09643295407295227){
     s0+=209.0;
     s1+=457.0;
    } else {
     s0+=62.0;
     s1+=1439.0;
    }
   } else {
    if(i63<1.6601044990238734e-05){
     s0+=200.0;
     s1+=173.0;
    } else {
     s0+=186.0;
     s1+=5.0;
    }
   }
  } else {
   if(i3<0.24646031856536865){
    if(i51<0.0031311088241636753){
     s0+=162.0;
     s1+=113.0;
    } else {
     s0+=564.0;
     s1+=35.0;
    }
   } else {
    if(i36<0.0017001191154122353){
     s0+=130.0;
    } else {
     s0+=10.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i5<7.6218020694796e-07){
   if(i50<-0.0001178065431304276){
    if(i19<0.9980460405349731){
     s0+=29.0;
    } else {
     s0+=63.0;
     s1+=10728.0;
    }
   } else {
    if(i46<0.003699004650115967){
     s0+=10.0;
     s1+=639.0;
    } else {
     s0+=140.0;
     s1+=211.0;
    }
   }
  } else {
   if(i63<9.509111805527937e-06){
    s1+=14.0;
   } else {
    s0+=76.0;
   }
  }
 }
}
if(i5<-8.167879423126578e-05){
 if(i63<3.186305548297241e-05){
  if(i7<1.030130386352539){
   if(i34<1.0008649826049805){
    s0+=202.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i26<0.9941827058792114){
    if(i17<0.012905382551252842){
     s0+=108.0;
     s1+=361.0;
    } else {
     s0+=22.0;
     s1+=774.0;
    }
   } else {
    if(i5<-0.0001078621280612424){
     s0+=10.0;
     s1+=8225.0;
    } else {
     s0+=37.0;
     s1+=1258.0;
    }
   }
  }
 } else {
  if(i50<-0.0004976036143489182){
   if(i1<0.007757455110549927){
    if(i9<1.057589054107666){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=218.0;
   }
  } else {
   if(i3<0.08416759967803955){
    if(i58<0.006539278198033571){
     s0+=470.0;
     s1+=10.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i62<0.23397207260131836){
     s0+=11.0;
    } else {
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i8<1.0024676322937012){
  if(i33<0.0003220833605155349){
   if(i22<1.0116113424301147){
    if(i38<0.00028902781195938587){
     s0+=45837.0;
     s1+=33.0;
    } else {
     s0+=11383.0;
     s1+=772.0;
    }
   } else {
    if(i41<0.00263496907427907){
     s0+=35.0;
     s1+=207.0;
    } else {
     s0+=88.0;
     s1+=6.0;
    }
   }
  } else {
   if(i8<0.9966020584106445){
    if(i7<1.0686150789260864){
     s0+=5084.0;
     s1+=116.0;
    } else {
     s0+=1048.0;
     s1+=133.0;
    }
   } else {
    if(i0<0.08362114429473877){
     s0+=5440.0;
     s1+=1341.0;
    } else {
     s0+=986.0;
     s1+=2459.0;
    }
   }
  }
 } else {
  if(i1<0.06385257840156555){
   if(i17<0.002356067532673478){
    if(i36<0.0007664394797757268){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=135.0;
    }
   } else {
    if(i57<0.0028815269470214844){
     s0+=11.0;
     s1+=232.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i36<0.0018659256165847182){
    s1+=655.0;
   } else {
    if(i19<1.001581072807312){
     s0+=41.0;
     s1+=34.0;
    } else {
     s0+=44.0;
     s1+=331.0;
    }
   }
  }
 }
}
if(i3<0.07132148742675781){
 if(i28<1.0076801776885986){
  if(i7<1.0452215671539307){
   if(i1<0.08123493194580078){
    if(i55<0.018856199458241463){
     s0+=49267.0;
     s1+=212.0;
    } else {
     s0+=12017.0;
     s1+=597.0;
    }
   } else {
    if(i37<-2.9027462005615234e-05){
     s0+=302.0;
     s1+=7.0;
    } else {
     s0+=55.0;
     s1+=138.0;
    }
   }
  } else {
   if(i22<0.9904108047485352){
    if(i0<0.030614018440246582){
     s0+=1019.0;
     s1+=242.0;
    } else {
     s0+=201.0;
     s1+=645.0;
    }
   } else {
    if(i5<-1.7511789337731898e-05){
     s0+=1278.0;
     s1+=665.0;
    } else {
     s0+=3507.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i2<0.061005085706710815){
   if(i20<2.193450927734375e-05){
    if(i35<0.0011253085685893893){
     s0+=134.0;
     s1+=179.0;
    } else {
     s0+=1190.0;
     s1+=20.0;
    }
   } else {
    if(i39<0.002011286560446024){
     s1+=247.0;
    } else {
     s0+=31.0;
     s1+=69.0;
    }
   }
  } else {
   if(i16<0.0006420612335205078){
    if(i43<0.026583850383758545){
     s0+=13.0;
     s1+=145.0;
    } else {
     s0+=93.0;
     s1+=24.0;
    }
   } else {
    if(i17<0.0010348473442718387){
     s0+=11.0;
     s1+=16.0;
    } else {
     s0+=18.0;
     s1+=1138.0;
    }
   }
  }
 }
} else {
 if(i19<0.9987596273422241){
  if(i72<-3.051701924050576e-06){
   if(i0<0.087609201669693){
    if(i67<1.005476713180542){
     s0+=37.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=6.0;
    }
   } else {
    if(i53<0.9981650114059448){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  } else {
   if(i13<-0.0003612935543060303){
    if(i8<0.9969763159751892){
     s0+=430.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9982681274414062){
     s0+=78.0;
     s1+=11.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i5<-4.1350547689944506e-05){
   if(i2<0.10040134191513062){
    if(i54<0.003718435764312744){
     s0+=54.0;
     s1+=530.0;
    } else {
     s0+=159.0;
     s1+=22.0;
    }
   } else {
    if(i0<0.1268107295036316){
     s0+=71.0;
     s1+=499.0;
    } else {
     s0+=34.0;
     s1+=10064.0;
    }
   }
  } else {
   if(i43<0.043946146965026855){
    if(i21<1.0327413082122803){
     s0+=63.0;
     s1+=637.0;
    } else {
     s0+=41.0;
     s1+=20.0;
    }
   } else {
    if(i73<8.661815809318796e-05){
     s0+=746.0;
     s1+=250.0;
    } else {
     s0+=348.0;
     s1+=405.0;
    }
   }
  }
 }
}
if(i3<0.072673499584198){
 if(i20<2.3066997528076172e-05){
  if(i21<1.00714111328125){
   if(i69<0.0015146794030442834){
    if(i1<0.0841393768787384){
     s0+=59708.0;
     s1+=586.0;
    } else {
     s0+=193.0;
     s1+=267.0;
    }
   } else {
    if(i35<0.0009957230649888515){
     s0+=1582.0;
     s1+=651.0;
    } else {
     s0+=4609.0;
     s1+=426.0;
    }
   }
  } else {
   if(i29<1.2371783256530762){
    if(i15<9.071826934814453e-05){
     s0+=795.0;
     s1+=408.0;
    } else {
     s0+=40.0;
     s1+=574.0;
    }
   } else {
    if(i72<-1.2340082321316004e-05){
     s1+=3.0;
    } else {
     s0+=1165.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i16<-1.9431114196777344e-05){
   if(i4<0.00033742189407348633){
    if(i17<0.015261458232998848){
     s0+=581.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   } else {
    if(i48<0.027998387813568115){
     s0+=118.0;
     s1+=295.0;
    } else {
     s0+=102.0;
     s1+=8.0;
    }
   }
  } else {
   if(i34<1.0003619194030762){
    s0+=54.0;
   } else {
    if(i14<0.9947423338890076){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=1317.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00039246678352355957){
  if(i30<0.08593477308750153){
   if(i35<0.009224174544215202){
    if(i11<0.9956526160240173){
     s0+=338.0;
    } else {
     s0+=119.0;
     s1+=1.0;
    }
   } else {
    if(i10<0.9860892295837402){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=2.0;
  }
 } else {
  if(i2<0.10607782006263733){
   if(i65<-0.01598425768315792){
    if(i66<0.0033897440880537033){
     s0+=590.0;
     s1+=56.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i40<0.05780211091041565){
     s0+=113.0;
     s1+=797.0;
    } else {
     s0+=340.0;
     s1+=185.0;
    }
   }
  } else {
   if(i39<0.001168245100416243){
    if(i41<0.0018669688142836094){
     s0+=31.0;
     s1+=294.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i5<-3.971980913775042e-05){
     s0+=99.0;
     s1+=10494.0;
    } else {
     s0+=248.0;
     s1+=722.0;
    }
   }
  }
 }
}
if(i1<0.08502665162086487){
 if(i19<1.0016372203826904){
  if(i51<0.00030740309739485383){
   if(i22<1.011213779449463){
    if(i10<1.0099446773529053){
     s0+=53348.0;
     s1+=246.0;
    } else {
     s0+=21.0;
     s1+=32.0;
    }
   } else {
    if(i64<-0.00244450056925416){
     s0+=11.0;
    } else {
     s0+=14.0;
     s1+=92.0;
    }
   }
  } else {
   if(i8<0.9967672824859619){
    if(i61<0.0022793624084442854){
     s0+=8087.0;
     s1+=114.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i10<0.9842262864112854){
     s0+=129.0;
     s1+=185.0;
    } else {
     s0+=6356.0;
     s1+=1392.0;
    }
   }
  }
 } else {
  if(i46<0.002329617738723755){
   if(i10<1.0044231414794922){
    if(i14<0.9987998008728027){
     s0+=364.0;
     s1+=97.0;
    } else {
     s0+=132.0;
     s1+=413.0;
    }
   } else {
    if(i33<0.00016663031419739127){
     s0+=38.0;
     s1+=9.0;
    } else {
     s0+=39.0;
     s1+=544.0;
    }
   }
  } else {
   if(i35<0.0014378372579813004){
    s1+=7.0;
   } else {
    if(i20<5.537271499633789e-05){
     s0+=408.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i15<3.802776336669922e-05){
  if(i44<0.04126450791954994){
   if(i36<0.0004616793303284794){
    if(i13<0.0001366138458251953){
     s0+=372.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i60<0.03402441740036011){
     s0+=191.0;
     s1+=487.0;
    } else {
     s0+=417.0;
     s1+=140.0;
    }
   }
  } else {
   if(i34<0.998927116394043){
    if(i42<-1.195079767057905e-05){
     s1+=6.0;
    } else {
     s0+=220.0;
    }
   } else {
    if(i52<3.6201476177666336e-05){
     s0+=226.0;
     s1+=149.0;
    } else {
     s0+=343.0;
     s1+=2857.0;
    }
   }
  }
 } else {
  if(i73<0.000322722306009382){
   if(i34<0.9987956285476685){
    if(i5<-0.0001344318297924474){
     s1+=5.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i61<0.0001353593252133578){
     s0+=50.0;
     s1+=236.0;
    } else {
     s0+=90.0;
     s1+=10339.0;
    }
   }
  } else {
   s0+=18.0;
  }
 }
}
if(i4<0.0005473494529724121){
 if(i51<0.00030613987473770976){
  if(i18<1.0087257623672485){
   if(i57<-0.0038449764251708984){
    if(i38<0.000518235145136714){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=41.0;
    }
   } else {
    if(i1<0.0770237147808075){
     s0+=52666.0;
     s1+=181.0;
    } else {
     s0+=526.0;
     s1+=66.0;
    }
   }
  } else {
   if(i38<0.0007167735602706671){
    if(i52<6.871100140415365e-06){
     s0+=56.0;
     s1+=6.0;
    } else {
     s0+=27.0;
     s1+=150.0;
    }
   } else {
    if(i35<0.0011135170934721828){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=117.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i45<0.057316720485687256){
   if(i4<-0.00031006336212158203){
    if(i8<0.9965629577636719){
     s0+=7502.0;
     s1+=133.0;
    } else {
     s0+=2738.0;
     s1+=524.0;
    }
   } else {
    if(i1<0.07477235794067383){
     s0+=4289.0;
     s1+=1044.0;
    } else {
     s0+=82.0;
     s1+=994.0;
    }
   }
  } else {
   if(i1<0.10110792517662048){
    if(i56<-6.805409793742001e-05){
     s0+=52.0;
     s1+=65.0;
    } else {
     s0+=1383.0;
     s1+=190.0;
    }
   } else {
    if(i42<1.1401432402635692e-06){
     s0+=608.0;
     s1+=2103.0;
    } else {
     s0+=334.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i27<1.055294156074524){
  s0+=164.0;
 } else {
  if(i17<0.0021814964711666107){
   if(i72<-5.193704055272974e-06){
    s1+=132.0;
   } else {
    if(i5<-5.971781865810044e-05){
     s1+=30.0;
    } else {
     s0+=140.0;
     s1+=7.0;
    }
   }
  } else {
   if(i8<1.0035802125930786){
    if(i3<0.11709576845169067){
     s0+=198.0;
     s1+=614.0;
    } else {
     s0+=10.0;
     s1+=844.0;
    }
   } else {
    if(i2<0.0041693150997161865){
     s0+=20.0;
     s1+=41.0;
    } else {
     s0+=58.0;
     s1+=10058.0;
    }
   }
  }
 }
}
if(i5<-7.880649354774505e-05){
 if(i2<0.048981934785842896){
  if(i8<1.0024096965789795){
   if(i39<0.023246027529239655){
    if(i54<-0.009342163801193237){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=604.0;
     s1+=27.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i15<-0.00023353099822998047){
    if(i38<0.011466970667243004){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i57<0.005448818206787109){
     s0+=18.0;
     s1+=198.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i7<1.0407109260559082){
   if(i35<0.0007105411496013403){
    s0+=74.0;
   } else {
    if(i1<0.08248946070671082){
     s0+=14.0;
     s1+=4.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i8<1.0021140575408936){
    if(i34<1.0020015239715576){
     s0+=23.0;
     s1+=756.0;
    } else {
     s0+=75.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.13185465335845947){
     s0+=60.0;
     s1+=1118.0;
    } else {
     s0+=5.0;
     s1+=8722.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005483627319335938){
  if(i38<0.00035571923945099115){
   if(i0<0.09624296426773071){
    if(i21<1.0087131261825562){
     s0+=48619.0;
     s1+=135.0;
    } else {
     s0+=17.0;
     s1+=71.0;
    }
   } else {
    if(i15<3.451108932495117e-05){
     s0+=12.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i4<-0.00024700164794921875){
    if(i0<0.08345785737037659){
     s0+=14892.0;
     s1+=625.0;
    } else {
     s0+=685.0;
     s1+=630.0;
    }
   } else {
    if(i36<0.0005108098266646266){
     s0+=2377.0;
     s1+=243.0;
    } else {
     s0+=3325.0;
     s1+=3010.0;
    }
   }
  }
 } else {
  if(i42<-1.3892476999899372e-05){
   if(i63<3.7717427403549664e-07){
    if(i30<0.00040641502710059285){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=763.0;
    }
   } else {
    if(i14<1.0005340576171875){
     s0+=91.0;
     s1+=99.0;
    } else {
     s0+=14.0;
     s1+=340.0;
    }
   }
  } else {
   if(i0<0.07343128323554993){
    if(i15<3.889203071594238e-05){
     s1+=7.0;
    } else {
     s0+=282.0;
     s1+=4.0;
    }
   } else {
    if(i73<0.00011389151040930301){
     s0+=3.0;
     s1+=115.0;
    } else {
     s0+=34.0;
     s1+=22.0;
    }
   }
  }
 }
}
if(i7<1.05519437789917){
 if(i2<0.07769986987113953){
  if(i26<1.0080020427703857){
   if(i49<-0.005852222442626953){
    if(i31<1.1800893545150757){
     s0+=970.0;
     s1+=396.0;
    } else {
     s0+=1129.0;
     s1+=44.0;
    }
   } else {
    if(i55<0.01896274834871292){
     s0+=50665.0;
     s1+=194.0;
    } else {
     s0+=11387.0;
     s1+=631.0;
    }
   }
  } else {
   if(i32<1.1108002662658691){
    if(i38<0.0008686163928359747){
     s1+=166.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i17<0.005280825309455395){
     s0+=204.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i6<-1.424551010131836e-05){
   if(i44<0.04083067923784256){
    if(i3<0.09649759531021118){
     s0+=248.0;
     s1+=32.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i64<-0.004306686110794544){
     s0+=51.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=88.0;
    }
   }
  } else {
   if(i41<0.0002812864549923688){
    s0+=33.0;
   } else {
    if(i64<-0.006882037036120892){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=25.0;
     s1+=744.0;
    }
   }
  }
 }
} else {
 if(i12<1.0025689601898193){
  if(i2<0.08581554889678955){
   if(i35<0.0011287308298051357){
    if(i30<0.012054992839694023){
     s0+=1055.0;
     s1+=292.0;
    } else {
     s0+=19.0;
     s1+=348.0;
    }
   } else {
    if(i57<0.003125816583633423){
     s0+=1956.0;
     s1+=334.0;
    } else {
     s0+=1843.0;
     s1+=48.0;
    }
   }
  } else {
   if(i54<0.005050182342529297){
    if(i72<1.8670486952032661e-06){
     s0+=243.0;
     s1+=2547.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i39<0.0034132893197238445){
     s0+=593.0;
     s1+=106.0;
    } else {
     s0+=192.0;
     s1+=854.0;
    }
   }
  }
 } else {
  if(i6<4.07099723815918e-05){
   if(i0<0.12327155470848083){
    if(i59<0.009984835982322693){
     s0+=303.0;
     s1+=59.0;
    } else {
     s0+=37.0;
     s1+=82.0;
    }
   } else {
    if(i17<0.002565729431807995){
     s0+=40.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=464.0;
    }
   }
  } else {
   if(i17<0.0022073215804994106){
    if(i37<0.0001658797264099121){
     s0+=72.0;
     s1+=22.0;
    } else {
     s1+=107.0;
    }
   } else {
    if(i11<0.9986370801925659){
     s0+=112.0;
     s1+=949.0;
    } else {
     s0+=15.0;
     s1+=8397.0;
    }
   }
  }
 }
}
if(i8<1.0024006366729736){
 if(i51<0.00031641250825487077){
  if(i21<1.0092811584472656){
   if(i66<0.0008567798649892211){
    if(i10<1.0104763507843018){
     s0+=53568.0;
     s1+=197.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i35<0.0009844237938523293){
     s0+=72.0;
     s1+=110.0;
    } else {
     s0+=224.0;
     s1+=2.0;
    }
   }
  } else {
   if(i24<1.0610020160675049){
    if(i27<1.0924489498138428){
     s0+=2.0;
     s1+=111.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i1<0.07391399145126343){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i50<-7.28770173736848e-05){
   if(i66<-0.000452116277301684){
    if(i20<-1.6629695892333984e-05){
     s0+=89.0;
    } else {
     s0+=172.0;
     s1+=816.0;
    }
   } else {
    if(i3<0.06299617886543274){
     s0+=4536.0;
     s1+=989.0;
    } else {
     s0+=1164.0;
     s1+=2237.0;
    }
   }
  } else {
   if(i41<0.0022280667908489704){
    if(i29<1.0840110778808594){
     s0+=2225.0;
    } else {
     s0+=1533.0;
     s1+=877.0;
    }
   } else {
    if(i14<0.9978920221328735){
     s0+=6648.0;
     s1+=176.0;
    } else {
     s0+=441.0;
     s1+=224.0;
    }
   }
  }
 }
} else {
 if(i51<0.00018719921354204416){
  if(i29<1.1386182308197021){
   if(i36<0.0003351430350448936){
    s0+=15.0;
   } else {
    s1+=17.0;
   }
  } else {
   if(i4<0.0016988515853881836){
    s0+=117.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i30<0.016754135489463806){
   if(i15<0.00021505355834960938){
    if(i35<0.002460992895066738){
     s0+=7.0;
     s1+=438.0;
    } else {
     s0+=262.0;
     s1+=167.0;
    }
   } else {
    if(i7<1.052141785621643){
     s0+=3.0;
     s1+=42.0;
    } else {
     s1+=1527.0;
    }
   }
  } else {
   if(i2<0.004438549280166626){
    if(i44<0.251307874917984){
     s1+=25.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i8<1.0026888847351074){
     s0+=7.0;
     s1+=195.0;
    } else {
     s0+=1.0;
     s1+=8895.0;
    }
   }
  }
 }
}
if(i2<0.07718163728713989){
 if(i6<4.178285598754883e-05){
  if(i24<1.0451585054397583){
   if(i41<0.00036732875742018223){
    if(i59<0.009138033725321293){
     s0+=37514.0;
     s1+=2.0;
    } else {
     s0+=165.0;
     s1+=5.0;
    }
   } else {
    if(i47<-0.0008134543895721436){
     s0+=1381.0;
     s1+=163.0;
    } else {
     s0+=14854.0;
     s1+=54.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i41<0.0003431905061006546){
     s0+=2378.0;
     s1+=54.0;
    } else {
     s0+=1327.0;
     s1+=1408.0;
    }
   } else {
    if(i58<0.006434008479118347){
     s0+=11140.0;
     s1+=447.0;
    } else {
     s0+=8.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i35<0.00041728158248588443){
   s0+=216.0;
  } else {
   if(i37<0.0001634359359741211){
    if(i34<1.000671625137329){
     s0+=54.0;
     s1+=83.0;
    } else {
     s0+=72.0;
     s1+=10.0;
    }
   } else {
    if(i29<1.5682398080825806){
     s0+=47.0;
     s1+=916.0;
    } else {
     s0+=71.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i0<0.09600377082824707){
  if(i54<0.0025756359100341797){
   if(i47<0.00400969386100769){
    if(i32<1.0827176570892334){
     s0+=42.0;
     s1+=12.0;
    } else {
     s0+=71.0;
     s1+=675.0;
    }
   } else {
    if(i5<-4.3275373172946274e-05){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=128.0;
     s1+=2.0;
    }
   }
  } else {
   if(i54<0.0038903355598449707){
    if(i10<0.9937448501586914){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=138.0;
     s1+=33.0;
    }
   } else {
    if(i65<-0.01890121027827263){
     s0+=287.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i20<-2.0891427993774414e-05){
   s0+=276.0;
  } else {
   if(i4<0.0004838109016418457){
    if(i54<0.00487518310546875){
     s0+=142.0;
     s1+=1798.0;
    } else {
     s0+=555.0;
     s1+=828.0;
    }
   } else {
    if(i2<0.13988709449768066){
     s0+=88.0;
     s1+=1340.0;
    } else {
     s0+=18.0;
     s1+=9202.0;
    }
   }
  }
 }
}
if(i19<1.0016264915466309){
 if(i9<1.0452215671539307){
  if(i33<0.00029934413032606244){
   if(i0<0.08468303084373474){
    if(i24<1.0451585054397583){
     s0+=49732.0;
     s1+=110.0;
    } else {
     s0+=6238.0;
     s1+=351.0;
    }
   } else {
    if(i6<-4.652142524719238e-05){
     s0+=36.0;
    } else {
     s0+=13.0;
     s1+=170.0;
    }
   }
  } else {
   if(i4<-0.0002925992012023926){
    if(i14<0.994280219078064){
     s0+=5575.0;
     s1+=100.0;
    } else {
     s0+=1458.0;
     s1+=334.0;
    }
   } else {
    if(i39<0.0003005151520483196){
     s0+=904.0;
    } else {
     s0+=772.0;
     s1+=828.0;
    }
   }
  }
 } else {
  if(i5<-3.462479435256682e-05){
   if(i53<0.9999203681945801){
    if(i31<1.0630347728729248){
     s0+=18.0;
    } else {
     s0+=152.0;
     s1+=3066.0;
    }
   } else {
    if(i0<0.09725317358970642){
     s0+=286.0;
     s1+=164.0;
    } else {
     s0+=63.0;
     s1+=429.0;
    }
   }
  } else {
   if(i37<-0.00013756752014160156){
    if(i73<1.4575938621419482e-05){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=1253.0;
    }
   } else {
    if(i36<0.0005133849335834384){
     s0+=1256.0;
     s1+=75.0;
    } else {
     s0+=2089.0;
     s1+=1084.0;
    }
   }
  }
 }
} else {
 if(i16<-0.0007150173187255859){
  if(i0<0.10958853363990784){
   if(i69<0.0033090119250118732){
    if(i61<0.0008552476647309959){
     s0+=171.0;
     s1+=50.0;
    } else {
     s0+=696.0;
     s1+=11.0;
    }
   } else {
    if(i3<0.006506532430648804){
     s0+=93.0;
     s1+=33.0;
    } else {
     s0+=18.0;
     s1+=205.0;
    }
   }
  } else {
   if(i38<0.004955544602125883){
    if(i7<1.0874089002609253){
     s0+=13.0;
     s1+=104.0;
    } else {
     s0+=20.0;
     s1+=11.0;
    }
   } else {
    if(i37<9.495019912719727e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=627.0;
    }
   }
  }
 } else {
  if(i32<1.0658810138702393){
   s0+=75.0;
  } else {
   if(i33<0.0001616518129594624){
    if(i0<0.05753287672996521){
     s0+=60.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   } else {
    if(i15<6.258487701416016e-06){
     s0+=136.0;
     s1+=617.0;
    } else {
     s0+=21.0;
     s1+=8688.0;
    }
   }
  }
 }
}
if(i1<0.08468478918075562){
 if(i16<0.001367032527923584){
  if(i33<0.00029936275677755475){
   if(i34<1.0004334449768066){
    if(i38<0.0002925556036643684){
     s0+=43610.0;
     s1+=29.0;
    } else {
     s0+=9325.0;
     s1+=337.0;
    }
   } else {
    if(i0<0.06350475549697876){
     s0+=3473.0;
     s1+=146.0;
    } else {
     s0+=247.0;
     s1+=202.0;
    }
   }
  } else {
   if(i4<0.0003400444984436035){
    if(i29<1.100754976272583){
     s0+=2946.0;
     s1+=952.0;
    } else {
     s0+=9212.0;
     s1+=412.0;
    }
   } else {
    if(i47<0.0024889707565307617){
     s0+=199.0;
     s1+=589.0;
    } else {
     s0+=186.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i33<0.00017136940732598305){
   if(i67<1.0103161334991455){
    s0+=21.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i37<0.0001366138458251953){
    if(i36<0.0016111319418996572){
     s1+=31.0;
    } else {
     s0+=18.0;
     s1+=3.0;
    }
   } else {
    s1+=383.0;
   }
  }
 }
} else {
 if(i16<0.00024759769439697266){
  if(i44<0.04186475649476051){
   if(i34<0.9992927312850952){
    if(i72<-2.9963896395202028e-06){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=406.0;
    }
   } else {
    if(i2<0.11970335245132446){
     s0+=456.0;
     s1+=329.0;
    } else {
     s0+=95.0;
     s1+=301.0;
    }
   }
  } else {
   if(i25<0.026612762361764908){
    if(i46<0.002591371536254883){
     s0+=97.0;
     s1+=339.0;
    } else {
     s0+=343.0;
     s1+=141.0;
    }
   } else {
    if(i12<0.9951351881027222){
     s0+=125.0;
     s1+=92.0;
    } else {
     s0+=199.0;
     s1+=2499.0;
    }
   }
  }
 } else {
  if(i8<0.9982013702392578){
   s0+=29.0;
  } else {
   if(i42<-2.0669376681325957e-06){
    if(i17<0.001987359719350934){
     s0+=80.0;
     s1+=207.0;
    } else {
     s0+=25.0;
     s1+=10037.0;
    }
   } else {
    if(i29<1.2604451179504395){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=66.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i62<0.04937285557389259){
  if(i67<1.0127381086349487){
   if(i44<0.03568800538778305){
    if(i1<0.08818718791007996){
     s0+=56037.0;
     s1+=547.0;
    } else {
     s0+=216.0;
     s1+=134.0;
    }
   } else {
    if(i36<0.0018781718099489808){
     s0+=330.0;
     s1+=255.0;
    } else {
     s0+=520.0;
     s1+=33.0;
    }
   }
  } else {
   if(i32<1.2380458116531372){
    if(i1<0.08470502495765686){
     s0+=257.0;
     s1+=61.0;
    } else {
     s0+=83.0;
     s1+=353.0;
    }
   } else {
    if(i10<1.026533842086792){
     s0+=239.0;
     s1+=10.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i2<0.08230695128440857){
   if(i38<0.0021873973309993744){
    if(i35<0.00040022938628681004){
     s0+=1940.0;
     s1+=31.0;
    } else {
     s0+=2365.0;
     s1+=1136.0;
    }
   } else {
    if(i48<-0.020601660013198853){
     s0+=1381.0;
     s1+=222.0;
    } else {
     s0+=5911.0;
     s1+=72.0;
    }
   }
  } else {
   if(i36<0.000581213622353971){
    if(i72<-1.7621797496758518e-06){
     s0+=65.0;
     s1+=93.0;
    } else {
     s0+=317.0;
     s1+=16.0;
    }
   } else {
    if(i4<-0.0008326470851898193){
     s0+=221.0;
     s1+=128.0;
    } else {
     s0+=595.0;
     s1+=2413.0;
    }
   }
  }
 }
} else {
 if(i1<0.05922818183898926){
  if(i4<0.0009582638740539551){
   if(i42<-1.5127251572266687e-05){
    if(i38<0.0009831603383645415){
     s1+=84.0;
    } else {
     s0+=62.0;
     s1+=47.0;
    }
   } else {
    if(i71<1.002781867980957){
     s0+=269.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i36<0.009046550840139389){
    if(i73<1.385285213473253e-05){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=215.0;
    }
   } else {
    if(i30<0.029910188168287277){
     s0+=35.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i27<1.0533727407455444){
   s0+=19.0;
  } else {
   if(i17<0.0024846652522683144){
    if(i4<0.0009565949440002441){
     s0+=79.0;
     s1+=51.0;
    } else {
     s1+=225.0;
    }
   } else {
    if(i15<-7.68899917602539e-06){
     s0+=141.0;
     s1+=1156.0;
    } else {
     s0+=7.0;
     s1+=9829.0;
    }
   }
  }
 }
}
if(i20<1.627206802368164e-05){
 if(i2<0.07774654030799866){
  if(i69<0.0015548430383205414){
   if(i55<0.01854962855577469){
    if(i10<1.0081498622894287){
     s0+=50171.0;
     s1+=173.0;
    } else {
     s0+=50.0;
     s1+=100.0;
    }
   } else {
    if(i29<1.100754976272583){
     s0+=2566.0;
     s1+=651.0;
    } else {
     s0+=8444.0;
     s1+=100.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i29<1.0835556983947754){
     s0+=1375.0;
    } else {
     s0+=205.0;
     s1+=657.0;
    }
   } else {
    if(i2<0.05891808867454529){
     s0+=4276.0;
     s1+=179.0;
    } else {
     s0+=227.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i13<-0.00037345290184020996){
   if(i19<0.9988216161727905){
    if(i16<-0.0029592514038085938){
     s0+=55.0;
     s1+=12.0;
    } else {
     s0+=402.0;
     s1+=2.0;
    }
   } else {
    if(i23<1.0494781732559204){
     s0+=5.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i48<0.03721451759338379){
    if(i36<0.0005107716424390674){
     s0+=39.0;
     s1+=62.0;
    } else {
     s0+=142.0;
     s1+=2484.0;
    }
   } else {
    if(i58<0.0007198292878456414){
     s0+=497.0;
     s1+=226.0;
    } else {
     s0+=346.0;
     s1+=1283.0;
    }
   }
  }
 }
} else {
 if(i31<1.0631955862045288){
  s0+=405.0;
 } else {
  if(i24<1.0638282299041748){
   if(i63<1.0569762707746122e-05){
    if(i52<-1.1697480658767745e-05){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=2.0;
     s1+=225.0;
    }
   } else {
    if(i31<1.1517643928527832){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=571.0;
    }
   }
  } else {
   if(i4<0.000521540641784668){
    if(i61<0.0016726362518966198){
     s0+=830.0;
     s1+=335.0;
    } else {
     s0+=58.0;
     s1+=315.0;
    }
   } else {
    if(i16<6.955862045288086e-05){
     s0+=237.0;
     s1+=1400.0;
    } else {
     s0+=60.0;
     s1+=8946.0;
    }
   }
  }
 }
}
if(i18<1.0079858303070068){
 if(i24<1.057713270187378){
  if(i47<-0.001375645399093628){
   if(i2<0.04377186298370361){
    if(i41<0.00037585661630146205){
     s0+=709.0;
     s1+=3.0;
    } else {
     s0+=941.0;
     s1+=156.0;
    }
   } else {
    if(i26<0.9808752536773682){
     s0+=145.0;
     s1+=12.0;
    } else {
     s0+=68.0;
     s1+=126.0;
    }
   }
  } else {
   if(i0<0.08179318904876709){
    if(i51<0.00029168077162466943){
     s0+=50274.0;
     s1+=73.0;
    } else {
     s0+=6210.0;
     s1+=196.0;
    }
   } else {
    if(i40<0.05767124891281128){
     s0+=80.0;
     s1+=98.0;
    } else {
     s0+=183.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i19<1.0015848875045776){
   if(i9<1.0398966073989868){
    if(i32<1.1037919521331787){
     s0+=774.0;
     s1+=553.0;
    } else {
     s0+=5465.0;
     s1+=291.0;
    }
   } else {
    if(i2<0.08947893977165222){
     s0+=2370.0;
     s1+=629.0;
    } else {
     s0+=506.0;
     s1+=1267.0;
    }
   }
  } else {
   if(i63<3.6168341466691345e-05){
    if(i30<0.025015059858560562){
     s0+=446.0;
     s1+=851.0;
    } else {
     s0+=14.0;
     s1+=1615.0;
    }
   } else {
    if(i17<0.017376262694597244){
     s0+=282.0;
     s1+=27.0;
    } else {
     s0+=5.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i8<1.0023123025894165){
  if(i25<0.02722727693617344){
   if(i2<0.07474327087402344){
    if(i27<1.0738153457641602){
     s0+=61.0;
     s1+=147.0;
    } else {
     s0+=1801.0;
     s1+=97.0;
    }
   } else {
    if(i51<0.0010684637818485498){
     s0+=90.0;
     s1+=610.0;
    } else {
     s0+=398.0;
     s1+=97.0;
    }
   }
  } else {
   if(i17<0.0032181227579712868){
    if(i13<1.9937753677368164e-05){
     s0+=44.0;
     s1+=88.0;
    } else {
     s0+=140.0;
     s1+=24.0;
    }
   } else {
    if(i6<-6.172060966491699e-05){
     s0+=85.0;
     s1+=30.0;
    } else {
     s0+=16.0;
     s1+=883.0;
    }
   }
  }
 } else {
  if(i8<1.0041425228118896){
   if(i27<1.150846242904663){
    s1+=441.0;
   } else {
    if(i0<0.09665849804878235){
     s0+=173.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=528.0;
    }
   }
  } else {
   if(i16<3.910064697265625e-05){
    if(i0<0.15220317244529724){
     s0+=26.0;
     s1+=9.0;
    } else {
     s1+=153.0;
    }
   } else {
    s1+=7872.0;
   }
  }
 }
}
if(i14<1.0039215087890625){
 if(i17<0.00469409953802824){
  if(i3<0.07113850116729736){
   if(i51<0.00030258295009844005){
    if(i56<-0.00011889571760548279){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=51545.0;
     s1+=242.0;
    }
   } else {
    if(i0<0.07879272103309631){
     s0+=11301.0;
     s1+=1112.0;
    } else {
     s0+=83.0;
     s1+=454.0;
    }
   }
  } else {
   if(i43<0.04343158006668091){
    if(i0<0.08734819293022156){
     s0+=91.0;
     s1+=86.0;
    } else {
     s0+=28.0;
     s1+=494.0;
    }
   } else {
    if(i2<0.12539395689964294){
     s0+=1087.0;
     s1+=180.0;
    } else {
     s0+=448.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i1<0.07655343413352966){
   if(i59<0.009058341383934021){
    if(i73<0.0001408270327374339){
     s0+=1473.0;
     s1+=268.0;
    } else {
     s0+=3428.0;
     s1+=14.0;
    }
   } else {
    if(i4<-0.00033155083656311035){
     s0+=326.0;
     s1+=51.0;
    } else {
     s0+=87.0;
     s1+=299.0;
    }
   }
  } else {
   if(i30<0.013810180127620697){
    if(i26<1.0020753145217896){
     s0+=149.0;
     s1+=64.0;
    } else {
     s0+=23.0;
     s1+=160.0;
    }
   } else {
    if(i42<3.0872702154738363e-06){
     s0+=174.0;
     s1+=3292.0;
    } else {
     s0+=66.0;
    }
   }
  }
 }
} else {
 if(i8<1.0024793148040771){
  if(i23<1.0339713096618652){
   if(i59<0.00691062118858099){
    if(i1<0.08127379417419434){
     s0+=498.0;
     s1+=3.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i61<0.00014045373245608062){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=56.0;
    }
   }
  } else {
   if(i20<-1.2934207916259766e-05){
    s0+=27.0;
   } else {
    if(i2<0.0836835503578186){
     s0+=42.0;
     s1+=37.0;
    } else {
     s0+=14.0;
     s1+=389.0;
    }
   }
  }
 } else {
  if(i6<5.97834587097168e-05){
   if(i33<0.00017038217629306018){
    if(i0<0.061461061239242554){
     s0+=36.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=374.0;
    } else {
     s0+=92.0;
     s1+=193.0;
    }
   }
  } else {
   if(i28<0.996715784072876){
    if(i14<1.0063955783843994){
     s0+=32.0;
     s1+=147.0;
    } else {
     s1+=479.0;
    }
   } else {
    if(i17<0.0006883975001983345){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=8401.0;
    }
   }
  }
 }
}
if(i7<1.0576403141021729){
 if(i2<0.07654222846031189){
  if(i8<1.0026447772979736){
   if(i24<1.0451585054397583){
    if(i57<-0.0023179054260253906){
     s0+=1549.0;
     s1+=136.0;
    } else {
     s0+=52477.0;
     s1+=88.0;
    }
   } else {
    if(i16<-0.0016936659812927246){
     s0+=3741.0;
     s1+=55.0;
    } else {
     s0+=6652.0;
     s1+=1029.0;
    }
   }
  } else {
   if(i31<1.2084944248199463){
    s1+=246.0;
   } else {
    if(i13<0.0007063150405883789){
     s0+=78.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i37<-6.628036499023438e-05){
   if(i44<0.08268949389457703){
    if(i21<1.0083198547363281){
     s0+=222.0;
     s1+=15.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i43<0.05167001485824585){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i1<0.09793397784233093){
    if(i43<0.04858630895614624){
     s0+=42.0;
     s1+=330.0;
    } else {
     s0+=160.0;
     s1+=35.0;
    }
   } else {
    if(i5<1.53853943629656e-05){
     s0+=14.0;
     s1+=572.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i15<9.369850158691406e-05){
  if(i2<0.1123945415019989){
   if(i5<-1.7509475583210588e-05){
    if(i31<1.1056134700775146){
     s0+=42.0;
     s1+=442.0;
    } else {
     s0+=1815.0;
     s1+=842.0;
    }
   } else {
    if(i22<0.9904351234436035){
     s0+=733.0;
     s1+=247.0;
    } else {
     s0+=2741.0;
     s1+=156.0;
    }
   }
  } else {
   if(i34<0.9988981485366821){
    s0+=199.0;
   } else {
    if(i70<1.042079210281372){
     s0+=87.0;
     s1+=2084.0;
    } else {
     s0+=330.0;
     s1+=1064.0;
    }
   }
  }
 } else {
  if(i4<0.0009285211563110352){
   if(i2<0.06632471084594727){
    if(i58<0.0016821904573589563){
     s0+=234.0;
     s1+=21.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i53<0.999891996383667){
     s0+=3.0;
     s1+=966.0;
    } else {
     s0+=92.0;
     s1+=204.0;
    }
   }
  } else {
   if(i2<0.051533907651901245){
    if(i20<1.8656253814697266e-05){
     s0+=1.0;
    } else {
     s1+=197.0;
    }
   } else {
    s1+=8210.0;
   }
  }
 }
}
if(i0<0.08237019181251526){
 if(i19<1.00193452835083){
  if(i38<0.0003021462762262672){
   if(i11<1.0048781633377075){
    if(i56<0.00033019116381183267){
     s0+=46760.0;
     s1+=35.0;
    } else {
     s0+=79.0;
     s1+=19.0;
    }
   } else {
    if(i73<4.52641470474191e-05){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=131.0;
     s1+=1.0;
    }
   }
  } else {
   if(i16<-0.0014732182025909424){
    if(i57<-0.0024847686290740967){
     s0+=3066.0;
     s1+=181.0;
    } else {
     s0+=8450.0;
     s1+=14.0;
    }
   } else {
    if(i37<-3.451108932495117e-05){
     s0+=4806.0;
     s1+=143.0;
    } else {
     s0+=5409.0;
     s1+=1736.0;
    }
   }
  }
 } else {
  if(i29<1.4786540269851685){
   if(i24<1.0629007816314697){
    if(i32<1.2371783256530762){
     s0+=3.0;
     s1+=62.0;
    } else {
     s0+=93.0;
     s1+=2.0;
    }
   } else {
    if(i59<0.002931042341515422){
     s0+=32.0;
     s1+=62.0;
    } else {
     s0+=15.0;
     s1+=574.0;
    }
   }
  } else {
   if(i17<0.015176281332969666){
    if(i64<0.0031937328167259693){
     s0+=558.0;
     s1+=55.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   } else {
    if(i30<0.03235025703907013){
     s0+=8.0;
    } else {
     s1+=116.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0004054605960845947){
  if(i56<0.0009399208356626332){
   if(i36<0.006604011170566082){
    if(i13<-0.0004094839096069336){
     s0+=384.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.01536019891500473){
     s1+=2.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i34<0.9992893934249878){
    s0+=10.0;
   } else {
    if(i60<0.07443457841873169){
     s1+=16.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i8<1.0018532276153564){
   if(i48<0.0468369722366333){
    if(i1<0.0998716950416565){
     s0+=162.0;
     s1+=495.0;
    } else {
     s0+=69.0;
     s1+=1594.0;
    }
   } else {
    if(i17<0.0035919751971960068){
     s0+=703.0;
     s1+=263.0;
    } else {
     s0+=148.0;
     s1+=842.0;
    }
   }
  } else {
   if(i30<0.01795000582933426){
    if(i15<2.9742717742919922e-05){
     s0+=92.0;
     s1+=117.0;
    } else {
     s0+=47.0;
     s1+=1660.0;
    }
   } else {
    if(i1<0.12249556183815002){
     s0+=5.0;
     s1+=514.0;
    } else {
     s0+=1.0;
     s1+=8590.0;
    }
   }
  }
 }
}
if(i13<0.0004405379295349121){
 if(i7<1.0452215671539307){
  if(i1<0.08222121000289917){
   if(i7<1.0406901836395264){
    if(i41<0.00034125492675229907){
     s0+=37161.0;
     s1+=5.0;
    } else {
     s0+=21435.0;
     s1+=498.0;
    }
   } else {
    if(i23<1.0008785724639893){
     s0+=66.0;
     s1+=66.0;
    } else {
     s0+=2479.0;
     s1+=185.0;
    }
   }
  } else {
   if(i6<-5.501508712768555e-05){
    if(i3<0.09415295720100403){
     s0+=370.0;
     s1+=4.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i24<1.0494358539581299){
     s0+=98.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i36<0.0004564251285046339){
   if(i11<1.0032317638397217){
    if(i34<1.0003674030303955){
     s0+=2075.0;
     s1+=12.0;
    } else {
     s0+=59.0;
     s1+=24.0;
    }
   } else {
    if(i27<1.073096752166748){
     s0+=8.0;
     s1+=89.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i25<0.029026668518781662){
    if(i2<0.07474327087402344){
     s0+=3775.0;
     s1+=665.0;
    } else {
     s0+=822.0;
     s1+=1566.0;
    }
   } else {
    if(i35<0.005446815397590399){
     s0+=673.0;
     s1+=1096.0;
    } else {
     s0+=158.0;
     s1+=1628.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005705356597900391){
  if(i24<1.1266913414001465){
   if(i31<1.1602869033813477){
    if(i27<1.0605937242507935){
     s0+=226.0;
    } else {
     s0+=66.0;
     s1+=167.0;
    }
   } else {
    if(i2<0.12819188833236694){
     s0+=922.0;
     s1+=35.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i3<0.059032052755355835){
    if(i54<-0.007119506597518921){
     s1+=26.0;
    } else {
     s0+=153.0;
     s1+=20.0;
    }
   } else {
    if(i2<0.08341464400291443){
     s0+=25.0;
     s1+=26.0;
    } else {
     s0+=21.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i8<1.004135012626648){
   if(i30<0.007361656054854393){
    if(i23<1.001344919204712){
     s1+=24.0;
    } else {
     s0+=191.0;
     s1+=67.0;
    }
   } else {
    if(i1<0.014354079961776733){
     s0+=27.0;
     s1+=15.0;
    } else {
     s0+=109.0;
     s1+=1082.0;
    }
   }
  } else {
   if(i1<0.03338390588760376){
    if(i52<0.0002704615762922913){
     s0+=11.0;
     s1+=70.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i11<1.0055315494537354){
     s0+=28.0;
     s1+=1048.0;
    } else {
     s1+=8178.0;
    }
   }
  }
 }
}
if(i19<1.0016262531280518){
 if(i7<1.0452215671539307){
  if(i38<0.0003027762286365032){
   if(i8<1.0031054019927979){
    if(i32<1.0717806816101074){
     s0+=33731.0;
     s1+=2.0;
    } else {
     s0+=12269.0;
     s1+=29.0;
    }
   } else {
    if(i1<0.051058948040008545){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i14<0.9943811893463135){
    if(i59<0.012204933911561966){
     s0+=10794.0;
     s1+=50.0;
    } else {
     s0+=299.0;
     s1+=22.0;
    }
   } else {
    if(i52<2.9882976377848536e-05){
     s0+=3373.0;
     s1+=161.0;
    } else {
     s0+=1534.0;
     s1+=704.0;
    }
   }
  }
 } else {
  if(i21<1.0095713138580322){
   if(i55<0.0373275987803936){
    if(i39<0.0002943938015960157){
     s0+=1206.0;
    } else {
     s0+=2084.0;
     s1+=531.0;
    }
   } else {
    if(i6<-4.044175148010254e-05){
     s0+=1064.0;
     s1+=140.0;
    } else {
     s0+=1661.0;
     s1+=1926.0;
    }
   }
  } else {
   if(i17<0.0033468850888311863){
    if(i27<1.083398699760437){
     s0+=114.0;
     s1+=359.0;
    } else {
     s0+=1527.0;
     s1+=271.0;
    }
   } else {
    if(i6<-2.5272369384765625e-05){
     s0+=173.0;
     s1+=103.0;
    } else {
     s0+=28.0;
     s1+=2379.0;
    }
   }
  }
 }
} else {
 if(i0<0.06997126340866089){
  if(i6<2.86102294921875e-05){
   if(i54<-0.003889739513397217){
    if(i2<0.015696972608566284){
     s0+=25.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i14<0.9972144365310669){
     s0+=513.0;
     s1+=5.0;
    } else {
     s0+=146.0;
     s1+=28.0;
    }
   }
  } else {
   if(i37<0.00017854571342468262){
    if(i61<0.0006537227891385555){
     s0+=71.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=35.0;
    }
   } else {
    if(i31<1.174884557723999){
     s0+=3.0;
     s1+=303.0;
    } else {
     s0+=144.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i50<-0.00011942729179281741){
   if(i63<2.688884524104651e-05){
    if(i16<-1.895427703857422e-05){
     s0+=105.0;
     s1+=842.0;
    } else {
     s0+=3.0;
     s1+=7706.0;
    }
   } else {
    if(i53<1.0004620552062988){
     s0+=4.0;
     s1+=256.0;
    } else {
     s0+=39.0;
     s1+=22.0;
    }
   }
  } else {
   if(i2<0.11855947971343994){
    if(i65<-0.014797539450228214){
     s0+=156.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=308.0;
    }
   } else {
    if(i66<-8.175497350748628e-05){
     s0+=4.0;
     s1+=19.0;
    } else {
     s0+=2.0;
     s1+=589.0;
    }
   }
  }
 }
}
if(i13<0.00044995546340942383){
 if(i28<1.0071921348571777){
  if(i2<0.0808488130569458){
   if(i66<0.0006788353202864528){
    if(i0<0.08206433057785034){
     s0+=58446.0;
     s1+=621.0;
    } else {
     s0+=44.0;
     s1+=80.0;
    }
   } else {
    if(i11<0.989449679851532){
     s0+=5529.0;
     s1+=175.0;
    } else {
     s0+=2416.0;
     s1+=906.0;
    }
   }
  } else {
   if(i13<-0.0004024505615234375){
    if(i42<-1.0080972970172297e-05){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=369.0;
    }
   } else {
    if(i52<3.321453550597653e-05){
     s0+=394.0;
     s1+=325.0;
    } else {
     s0+=329.0;
     s1+=1777.0;
    }
   }
  }
 } else {
  if(i10<1.0108309984207153){
   if(i61<0.0005954473745077848){
    if(i72<-5.957754183327779e-06){
     s0+=2.0;
     s1+=30.0;
    } else {
     s0+=1263.0;
     s1+=136.0;
    }
   } else {
    if(i71<0.9990622401237488){
     s0+=22.0;
     s1+=32.0;
    } else {
     s0+=7.0;
     s1+=233.0;
    }
   }
  } else {
   if(i56<-6.196576578076929e-05){
    if(i15<-0.00010225176811218262){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=74.0;
     s1+=1311.0;
    }
   } else {
    if(i25<0.02806660160422325){
     s0+=252.0;
     s1+=158.0;
    } else {
     s0+=22.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005707740783691406){
  if(i17<0.014784745872020721){
   if(i24<1.1205039024353027){
    if(i57<0.003545224666595459){
     s0+=595.0;
     s1+=210.0;
    } else {
     s0+=572.0;
     s1+=33.0;
    }
   } else {
    if(i2<0.08335897326469421){
     s0+=191.0;
     s1+=40.0;
    } else {
     s0+=27.0;
     s1+=232.0;
    }
   }
  } else {
   if(i30<0.0412105992436409){
    if(i55<0.1364242285490036){
     s1+=1.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i22<0.8223205208778381){
     s0+=1.0;
    } else {
     s1+=212.0;
    }
   }
  }
 } else {
  if(i34<0.9993311166763306){
   s0+=59.0;
  } else {
   if(i16<-0.000546872615814209){
    if(i30<0.022521905601024628){
     s0+=190.0;
     s1+=149.0;
    } else {
     s0+=4.0;
     s1+=644.0;
    }
   } else {
    if(i5<-4.331536911195144e-05){
     s0+=53.0;
     s1+=9542.0;
    } else {
     s0+=69.0;
     s1+=193.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i10<1.0080897808074951){
  if(i3<0.07196849584579468){
   if(i69<0.0017068753950297832){
    if(i0<0.08023446798324585){
     s0+=62293.0;
     s1+=818.0;
    } else {
     s0+=104.0;
     s1+=321.0;
    }
   } else {
    if(i35<0.0009727982105687261){
     s0+=1353.0;
     s1+=523.0;
    } else {
     s0+=4098.0;
     s1+=425.0;
    }
   }
  } else {
   if(i19<0.9985270500183105){
    if(i5<-5.403870454756543e-05){
     s0+=12.0;
     s1+=10.0;
    } else {
     s0+=462.0;
     s1+=5.0;
    }
   } else {
    if(i1<0.11162430047988892){
     s0+=717.0;
     s1+=451.0;
    } else {
     s0+=287.0;
     s1+=1076.0;
    }
   }
  }
 } else {
  if(i1<0.08511286973953247){
   if(i31<1.0950405597686768){
    if(i46<0.0031624436378479004){
     s0+=21.0;
     s1+=221.0;
    } else {
     s0+=20.0;
     s1+=2.0;
    }
   } else {
    if(i58<0.0021612343844026327){
     s0+=761.0;
     s1+=37.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   if(i19<0.9988974332809448){
    if(i39<0.003526771441102028){
     s0+=64.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i53<0.9998725652694702){
     s0+=34.0;
     s1+=903.0;
    } else {
     s0+=266.0;
     s1+=566.0;
    }
   }
  }
 }
} else {
 if(i31<1.0624027252197266){
  s0+=172.0;
 } else {
  if(i27<1.3005231618881226){
   if(i5<-4.330327283241786e-05){
    if(i3<0.031174004077911377){
     s0+=66.0;
     s1+=266.0;
    } else {
     s0+=170.0;
     s1+=4718.0;
    }
   } else {
    if(i32<1.2392117977142334){
     s0+=2.0;
     s1+=233.0;
    } else {
     s0+=172.0;
     s1+=26.0;
    }
   }
  } else {
   if(i10<0.9989094138145447){
    if(i10<0.9988622665405273){
     s0+=4.0;
     s1+=897.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=5645.0;
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i5<-4.370255919639021e-05){
  if(i39<0.0028284683357924223){
   if(i41<0.00033655675360932946){
    s0+=303.0;
   } else {
    if(i68<1.0022244453430176){
     s0+=17.0;
     s1+=822.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   }
  } else {
   if(i8<1.0029211044311523){
    if(i7<1.082106590270996){
     s0+=2104.0;
     s1+=61.0;
    } else {
     s0+=250.0;
     s1+=156.0;
    }
   } else {
    if(i70<0.9951913356781006){
     s0+=27.0;
     s1+=277.0;
    } else {
     s0+=40.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i49<-0.006025165319442749){
   if(i29<1.1860926151275635){
    if(i29<1.0835556983947754){
     s0+=811.0;
    } else {
     s0+=443.0;
     s1+=559.0;
    }
   } else {
    if(i65<0.06612248718738556){
     s0+=1726.0;
     s1+=75.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i44<0.03042060136795044){
    if(i66<0.0007819577003829181){
     s0+=56323.0;
     s1+=285.0;
    } else {
     s0+=1192.0;
     s1+=173.0;
    }
   } else {
    if(i32<1.100754976272583){
     s0+=1237.0;
     s1+=558.0;
    } else {
     s0+=4831.0;
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i15<4.9054622650146484e-05){
  if(i19<0.9985270500183105){
   if(i5<-3.674704203149304e-05){
    if(i50<-0.00028233713237568736){
     s0+=5.0;
     s1+=21.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i34<0.9999889135360718){
     s0+=627.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i43<0.04318952560424805){
    if(i16<-0.006608754396438599){
     s0+=3.0;
    } else {
     s0+=47.0;
     s1+=2293.0;
    }
   } else {
    if(i1<0.13007774949073792){
     s0+=747.0;
     s1+=230.0;
    } else {
     s0+=265.0;
     s1+=1321.0;
    }
   }
  }
 } else {
  if(i27<1.0569010972976685){
   s0+=22.0;
  } else {
   if(i58<0.0003010411746799946){
    if(i24<1.1683820486068726){
     s1+=213.0;
    } else {
     s0+=73.0;
     s1+=4.0;
    }
   } else {
    if(i17<0.0021832024212926626){
     s0+=65.0;
     s1+=154.0;
    } else {
     s0+=33.0;
     s1+=9737.0;
    }
   }
  }
 }
}
if(i12<1.002824306488037){
 if(i7<1.0452277660369873){
  if(i47<-0.0013700127601623535){
   if(i14<0.9942259788513184){
    if(i50<-0.0005632104584947228){
     s1+=5.0;
    } else {
     s0+=2225.0;
     s1+=42.0;
    }
   } else {
    if(i0<0.05673244595527649){
     s0+=1388.0;
     s1+=293.0;
    } else {
     s0+=45.0;
     s1+=183.0;
    }
   }
  } else {
   if(i55<0.027255358174443245){
    if(i10<1.0099308490753174){
     s0+=51527.0;
     s1+=130.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i24<1.0451276302337646){
     s0+=5117.0;
     s1+=44.0;
    } else {
     s0+=1262.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i25<0.023881513625383377){
   if(i5<-2.9593573344754986e-05){
    if(i50<-0.00022854855342302471){
     s0+=492.0;
     s1+=1270.0;
    } else {
     s0+=610.0;
     s1+=214.0;
    }
   } else {
    if(i1<0.08753567934036255){
     s0+=4975.0;
     s1+=303.0;
    } else {
     s0+=603.0;
     s1+=227.0;
    }
   }
  } else {
   if(i42<1.2463046914490405e-06){
    if(i8<0.9965665340423584){
     s0+=209.0;
     s1+=104.0;
    } else {
     s0+=742.0;
     s1+=3361.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=73.0;
     s1+=61.0;
    } else {
     s0+=492.0;
    }
   }
  }
 }
} else {
 if(i6<2.1517276763916016e-05){
  if(i45<0.08468979597091675){
   if(i0<0.1000823974609375){
    if(i72<-1.4491296496998984e-05){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=907.0;
     s1+=47.0;
    }
   } else {
    if(i49<0.050515949726104736){
     s1+=62.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i35<0.005140312016010284){
    if(i65<-0.02479657530784607){
     s0+=12.0;
     s1+=2.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i3<0.1209617555141449){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=101.0;
    }
   }
  }
 } else {
  if(i41<0.00031536846654489636){
   s0+=48.0;
  } else {
   if(i4<0.0009583234786987305){
    if(i51<0.00018002043361775577){
     s0+=51.0;
    } else {
     s0+=237.0;
     s1+=1281.0;
    }
   } else {
    if(i7<1.097065806388855){
     s0+=47.0;
     s1+=2179.0;
    } else {
     s0+=5.0;
     s1+=6940.0;
    }
   }
  }
 }
}
if(i12<1.0028514862060547){
 if(i23<1.0406770706176758){
  if(i9<1.0401114225387573){
   if(i1<0.0850396454334259){
    if(i56<0.0002566102775745094){
     s0+=53222.0;
     s1+=338.0;
    } else {
     s0+=8836.0;
     s1+=782.0;
    }
   } else {
    if(i68<0.9977260231971741){
     s0+=236.0;
    } else {
     s0+=106.0;
     s1+=376.0;
    }
   }
  } else {
   if(i25<0.022188566625118256){
    if(i2<0.0806877613067627){
     s0+=3110.0;
     s1+=311.0;
    } else {
     s0+=21.0;
     s1+=262.0;
    }
   } else {
    if(i6<-3.9517879486083984e-05){
     s0+=251.0;
     s1+=47.0;
    } else {
     s0+=209.0;
     s1+=710.0;
    }
   }
  }
 } else {
  if(i17<0.004943091422319412){
   if(i15<8.440017700195312e-05){
    if(i1<0.1234743595123291){
     s0+=2802.0;
     s1+=396.0;
    } else {
     s0+=467.0;
     s1+=421.0;
    }
   } else {
    if(i1<0.08277022838592529){
     s0+=125.0;
     s1+=50.0;
    } else {
     s0+=66.0;
     s1+=413.0;
    }
   }
  } else {
   if(i53<1.0004104375839233){
    if(i5<-6.885843504278455e-06){
     s0+=150.0;
     s1+=2438.0;
    } else {
     s0+=106.0;
     s1+=6.0;
    }
   } else {
    if(i17<0.014485733583569527){
     s0+=164.0;
     s1+=3.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i6<2.6881694793701172e-05){
  if(i2<0.10258379578590393){
   if(i50<-0.000658057106193155){
    if(i49<0.0030810534954071045){
     s1+=14.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i4<0.00017207860946655273){
     s0+=785.0;
     s1+=10.0;
    } else {
     s0+=127.0;
     s1+=37.0;
    }
   }
  } else {
   if(i60<0.05482882261276245){
    s1+=215.0;
   } else {
    if(i27<1.2241933345794678){
     s0+=16.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i11<1.0099434852600098){
   if(i61<0.0004715600807685405){
    if(i2<0.06544151902198792){
     s0+=182.0;
     s1+=57.0;
    } else {
     s0+=84.0;
     s1+=652.0;
    }
   } else {
    if(i68<0.997642993927002){
     s0+=33.0;
     s1+=32.0;
    } else {
     s0+=81.0;
     s1+=2141.0;
    }
   }
  } else {
   if(i3<0.022904634475708008){
    if(i33<0.00022216769866645336){
     s0+=2.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i2<0.04840880632400513){
     s0+=1.0;
     s1+=53.0;
    } else {
     s1+=7152.0;
    }
   }
  }
 }
}
if(i2<0.07736942172050476){
 if(i15<0.0001710057258605957){
  if(i38<0.00029223080491647124){
   if(i28<1.0084590911865234){
    if(i26<1.0072101354599){
     s0+=46202.0;
     s1+=44.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   } else {
    if(i10<1.0082154273986816){
     s0+=11.0;
    } else {
     s0+=3.0;
     s1+=62.0;
    }
   }
  } else {
   if(i14<0.9948530197143555){
    if(i5<-0.0001717515115160495){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=13762.0;
     s1+=250.0;
    }
   } else {
    if(i6<3.165006637573242e-05){
     s0+=8719.0;
     s1+=1703.0;
    } else {
     s0+=201.0;
     s1+=505.0;
    }
   }
  }
 } else {
  if(i57<0.0036340951919555664){
   if(i58<0.000870679912623018){
    if(i17<0.001844792510382831){
     s0+=78.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   } else {
    if(i73<0.0003391086938790977){
     s0+=1.0;
     s1+=565.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i63<-8.689166861586273e-06){
    s1+=16.0;
   } else {
    if(i16<0.0014505386352539062){
     s0+=165.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i8<1.0015796422958374){
  if(i5<-1.2303214134590235e-05){
   if(i0<0.09873133897781372){
    if(i70<1.019973635673523){
     s0+=149.0;
     s1+=403.0;
    } else {
     s0+=199.0;
     s1+=47.0;
    }
   } else {
    if(i17<0.001678622793406248){
     s0+=94.0;
     s1+=76.0;
    } else {
     s0+=192.0;
     s1+=2162.0;
    }
   }
  } else {
   if(i45<0.06316548585891724){
    if(i6<-4.488229751586914e-05){
     s0+=79.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=130.0;
    }
   } else {
    if(i53<1.0000605583190918){
     s0+=907.0;
     s1+=85.0;
    } else {
     s0+=57.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i68<1.000882863998413){
   if(i29<1.2725603580474854){
    if(i48<0.09873786568641663){
     s0+=26.0;
     s1+=1505.0;
    } else {
     s0+=28.0;
     s1+=64.0;
    }
   } else {
    if(i24<1.064946174621582){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=16.0;
     s1+=8445.0;
    }
   }
  } else {
   if(i0<0.1326175332069397){
    if(i47<0.002224266529083252){
     s0+=31.0;
     s1+=185.0;
    } else {
     s0+=76.0;
     s1+=39.0;
    }
   } else {
    if(i32<1.2380602359771729){
     s0+=9.0;
     s1+=29.0;
    } else {
     s0+=9.0;
     s1+=742.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i46<-0.0016576945781707764){
  if(i4<0.00048035383224487305){
   if(i2<0.03714311122894287){
    if(i41<0.0015625350642949343){
     s0+=1013.0;
     s1+=312.0;
    } else {
     s0+=2333.0;
     s1+=95.0;
    }
   } else {
    if(i22<0.989672064781189){
     s0+=129.0;
     s1+=293.0;
    } else {
     s0+=264.0;
     s1+=52.0;
    }
   }
  } else {
   if(i29<1.5682398080825806){
    if(i61<0.00013449403923004866){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=455.0;
    }
   } else {
    if(i69<0.014110947027802467){
     s0+=41.0;
     s1+=4.0;
    } else {
     s1+=47.0;
    }
   }
  }
 } else {
  if(i10<1.0081498622894287){
   if(i38<0.0002754211309365928){
    if(i46<-0.0015040040016174316){
     s0+=108.0;
     s1+=3.0;
    } else {
     s0+=45266.0;
     s1+=26.0;
    }
   } else {
    if(i4<0.0001475214958190918){
     s0+=18775.0;
     s1+=793.0;
    } else {
     s0+=602.0;
     s1+=421.0;
    }
   }
  } else {
   if(i50<-0.00033239598269574344){
    if(i72<-8.139748388202861e-06){
     s1+=21.0;
    } else {
     s0+=465.0;
     s1+=39.0;
    }
   } else {
    if(i27<1.1191834211349487){
     s0+=34.0;
     s1+=350.0;
    } else {
     s0+=134.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0003857910633087158){
  if(i53<0.9997952580451965){
   if(i11<0.9969601035118103){
    s0+=564.0;
   } else {
    if(i42<-7.756730155961122e-06){
     s1+=3.0;
    } else {
     s0+=69.0;
    }
   }
  } else {
   if(i49<-0.013362884521484375){
    s1+=5.0;
   } else {
    if(i59<0.011430559679865837){
     s0+=50.0;
     s1+=5.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i31<1.319493293762207){
   if(i14<1.002197027206421){
    if(i0<0.10984665155410767){
     s0+=710.0;
     s1+=774.0;
    } else {
     s0+=442.0;
     s1+=1794.0;
    }
   } else {
    if(i49<0.020508766174316406){
     s0+=28.0;
     s1+=2804.0;
    } else {
     s0+=72.0;
     s1+=441.0;
    }
   }
  } else {
   if(i68<1.0044777393341064){
    if(i0<0.0837135910987854){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=36.0;
     s1+=8189.0;
    }
   } else {
    if(i3<0.10335451364517212){
     s0+=43.0;
     s1+=5.0;
    } else {
     s1+=94.0;
    }
   }
  }
 }
}
if(i1<0.0835534930229187){
 if(i49<-0.0058502256870269775){
  if(i4<0.000507354736328125){
   if(i35<0.0009706543060019612){
    if(i35<0.0004584556445479393){
     s0+=839.0;
     s1+=15.0;
    } else {
     s0+=121.0;
     s1+=443.0;
    }
   } else {
    if(i3<0.048564523458480835){
     s0+=2707.0;
     s1+=205.0;
    } else {
     s0+=117.0;
     s1+=94.0;
    }
   }
  } else {
   if(i14<1.0027391910552979){
    if(i48<0.018202662467956543){
     s0+=29.0;
     s1+=144.0;
    } else {
     s0+=24.0;
     s1+=4.0;
    }
   } else {
    if(i68<0.9974783658981323){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=418.0;
    }
   }
  }
 } else {
  if(i8<1.0024685859680176){
   if(i18<1.0067009925842285){
    if(i0<0.06991493701934814){
     s0+=61587.0;
     s1+=650.0;
    } else {
     s0+=1168.0;
     s1+=231.0;
    }
   } else {
    if(i36<0.0006799725815653801){
     s0+=795.0;
     s1+=322.0;
    } else {
     s0+=1470.0;
     s1+=82.0;
    }
   }
  } else {
   if(i37<0.00017827749252319336){
    if(i35<0.0012503532925620675){
     s0+=5.0;
     s1+=38.0;
    } else {
     s0+=167.0;
    }
   } else {
    if(i41<0.002562887966632843){
     s0+=16.0;
     s1+=353.0;
    } else {
     s0+=58.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i16<0.00024059414863586426){
  if(i8<0.9965245723724365){
   if(i39<0.007201719097793102){
    if(i20<-1.5676021575927734e-05){
     s0+=526.0;
     s1+=2.0;
    } else {
     s0+=113.0;
     s1+=39.0;
    }
   } else {
    if(i7<1.0431103706359863){
     s0+=62.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=119.0;
    }
   }
  } else {
   if(i43<0.04797646403312683){
    if(i17<0.0018342463299632072){
     s0+=45.0;
     s1+=148.0;
    } else {
     s0+=44.0;
     s1+=2107.0;
    }
   } else {
    if(i0<0.12950950860977173){
     s0+=790.0;
     s1+=185.0;
    } else {
     s0+=257.0;
     s1+=1152.0;
    }
   }
  }
 } else {
  if(i39<0.0038609944749623537){
   if(i32<1.2524442672729492){
    if(i73<0.00039677871973253787){
     s0+=26.0;
     s1+=2159.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i52<5.079993206891231e-05){
     s0+=151.0;
     s1+=4.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i58<0.0006928174989297986){
    if(i1<0.13382413983345032){
     s0+=5.0;
    } else {
     s1+=216.0;
    }
   } else {
    s1+=7911.0;
   }
  }
 }
}
if(i12<1.0025546550750732){
 if(i24<1.055574655532837){
  if(i66<0.0007084680255502462){
   if(i18<1.0088856220245361){
    if(i10<1.0095443725585938){
     s0+=54503.0;
     s1+=250.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i19<0.9993512630462646){
     s0+=31.0;
    } else {
     s0+=12.0;
     s1+=124.0;
    }
   }
  } else {
   if(i6<-5.462765693664551e-05){
    if(i6<-6.335973739624023e-05){
     s0+=1634.0;
     s1+=3.0;
    } else {
     s0+=219.0;
     s1+=18.0;
    }
   } else {
    if(i39<0.0003413868835195899){
     s0+=824.0;
    } else {
     s0+=513.0;
     s1+=314.0;
    }
   }
  }
 } else {
  if(i15<0.00014740228652954102){
   if(i2<0.08026513457298279){
    if(i64<-0.0036676721647381783){
     s0+=2654.0;
     s1+=59.0;
    } else {
     s0+=7783.0;
     s1+=1367.0;
    }
   } else {
    if(i65<-0.01935393735766411){
     s0+=960.0;
     s1+=874.0;
    } else {
     s0+=325.0;
     s1+=1836.0;
    }
   }
  } else {
   if(i33<0.00025241286493837833){
    if(i21<1.0120779275894165){
     s0+=67.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   } else {
    if(i16<0.001430511474609375){
     s0+=45.0;
     s1+=297.0;
    } else {
     s1+=1119.0;
    }
   }
  }
 }
} else {
 if(i14<0.9971266984939575){
  if(i26<0.9629552364349365){
   if(i15<-0.00027507543563842773){
    if(i30<0.05948307737708092){
     s0+=664.0;
     s1+=13.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i3<0.006448119878768921){
     s0+=6.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i0<0.10027441382408142){
    if(i49<-0.006630003452301025){
     s0+=17.0;
     s1+=51.0;
    } else {
     s0+=227.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.1101011335849762){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=20.0;
     s1+=497.0;
    }
   }
  }
 } else {
  if(i42<-1.5875877579674125e-05){
   if(i26<0.9325067400932312){
    if(i17<0.01914508268237114){
     s0+=35.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i1<0.05645662546157837){
     s0+=82.0;
     s1+=313.0;
    } else {
     s0+=91.0;
     s1+=9381.0;
    }
   }
  } else {
   if(i2<0.07368102669715881){
    if(i71<1.002435326576233){
     s0+=354.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=57.0;
    }
   } else {
    if(i64<-0.004392314702272415){
     s0+=74.0;
     s1+=130.0;
    } else {
     s0+=5.0;
     s1+=207.0;
    }
   }
  }
 }
}
if(i13<0.0004361271858215332){
 if(i45<0.06305444240570068){
  if(i2<0.07754668593406677){
   if(i1<0.0691697895526886){
    if(i25<0.01669676974415779){
     s0+=56632.0;
     s1+=557.0;
    } else {
     s0+=8569.0;
     s1+=825.0;
    }
   } else {
    if(i17<0.004358962178230286){
     s0+=2008.0;
     s1+=223.0;
    } else {
     s0+=216.0;
     s1+=283.0;
    }
   }
  } else {
   if(i6<-5.558133125305176e-05){
    if(i44<0.1578924059867859){
     s0+=118.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i53<0.9993451833724976){
     s0+=12.0;
    } else {
     s0+=33.0;
     s1+=1547.0;
    }
   }
  }
 } else {
  if(i19<0.998880922794342){
   if(i5<-1.8475395336281508e-05){
    if(i31<1.498544454574585){
     s0+=91.0;
     s1+=18.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   } else {
    if(i40<0.03973299264907837){
     s1+=3.0;
    } else {
     s0+=548.0;
     s1+=7.0;
    }
   }
  } else {
   if(i0<0.10156762599945068){
    if(i17<0.004694439936429262){
     s0+=664.0;
     s1+=81.0;
    } else {
     s0+=54.0;
     s1+=81.0;
    }
   } else {
    if(i1<0.21063998341560364){
     s0+=388.0;
     s1+=901.0;
    } else {
     s0+=79.0;
     s1+=1271.0;
    }
   }
  }
 }
} else {
 if(i4<0.000573575496673584){
  if(i23<1.0934839248657227){
   if(i30<0.03782631456851959){
    if(i36<0.006963534280657768){
     s0+=795.0;
     s1+=335.0;
    } else {
     s0+=655.0;
     s1+=8.0;
    }
   } else {
    if(i7<1.0424890518188477){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=110.0;
    }
   }
  } else {
   if(i36<0.004533275030553341){
    if(i31<1.223900556564331){
     s0+=32.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i32<1.3059041500091553){
     s0+=8.0;
     s1+=38.0;
    } else {
     s0+=2.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i33<0.00016722118016332388){
   if(i71<1.0024521350860596){
    if(i73<7.044710946502164e-05){
     s1+=7.0;
    } else {
     s0+=114.0;
    }
   } else {
    if(i51<0.00017405490507371724){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i16<4.661083221435547e-05){
    if(i7<1.123502492904663){
     s0+=217.0;
     s1+=481.0;
    } else {
     s0+=3.0;
     s1+=845.0;
    }
   } else {
    if(i1<0.051470816135406494){
     s0+=26.0;
     s1+=162.0;
    } else {
     s0+=11.0;
     s1+=8869.0;
    }
   }
  }
 }
}
if(i25<0.02197645977139473){
 if(i8<1.0024776458740234){
  if(i16<0.0011262297630310059){
   if(i3<0.07386252284049988){
    if(i0<0.08016043901443481){
     s0+=62366.0;
     s1+=1030.0;
    } else {
     s0+=180.0;
     s1+=286.0;
    }
   } else {
    if(i5<-1.9333216187078506e-05){
     s0+=363.0;
     s1+=514.0;
    } else {
     s0+=760.0;
     s1+=95.0;
    }
   }
  } else {
   if(i46<-0.0012009143829345703){
    if(i32<1.2156331539154053){
     s1+=47.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i10<1.0045948028564453){
     s0+=2.0;
    } else {
     s1+=162.0;
    }
   }
  }
 } else {
  if(i2<0.05009138584136963){
   if(i32<1.250713586807251){
    if(i40<0.03551065921783447){
     s1+=186.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i54<-0.004171192646026611){
     s0+=2.0;
     s1+=36.0;
    } else {
     s0+=129.0;
     s1+=13.0;
    }
   }
  } else {
   if(i68<1.0023150444030762){
    if(i5<-4.328748764237389e-05){
     s0+=23.0;
     s1+=1984.0;
    } else {
     s0+=56.0;
     s1+=91.0;
    }
   } else {
    if(i58<0.003114256775006652){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i16<-0.0015639960765838623){
  if(i3<0.0938292145729065){
   if(i2<0.08131450414657593){
    if(i58<0.0063812024891376495){
     s0+=5209.0;
     s1+=109.0;
    } else {
     s0+=6.0;
     s1+=39.0;
    }
   } else {
    if(i46<0.0026380717754364014){
     s0+=3.0;
     s1+=88.0;
    } else {
     s0+=60.0;
     s1+=8.0;
    }
   }
  } else {
   if(i37<-0.00013783574104309082){
    if(i15<-0.0002345442771911621){
     s0+=123.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i52<0.00012463534949347377){
     s0+=24.0;
     s1+=61.0;
    } else {
     s0+=8.0;
     s1+=563.0;
    }
   }
  }
 } else {
  if(i24<1.0428757667541504){
   if(i53<1.0001201629638672){
    if(i3<0.05488133430480957){
     s0+=386.0;
     s1+=7.0;
    } else {
     s0+=19.0;
     s1+=9.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i58<0.0013622106052935123){
    if(i37<-0.00014287233352661133){
     s0+=167.0;
    } else {
     s0+=828.0;
     s1+=2409.0;
    }
   } else {
    if(i2<0.0025111138820648193){
     s0+=45.0;
     s1+=23.0;
    } else {
     s0+=180.0;
     s1+=9412.0;
    }
   }
  }
 }
}
if(i4<0.0005514919757843018){
 if(i1<0.08518528938293457){
  if(i33<0.0002996725379489362){
   if(i18<1.0081981420516968){
    if(i47<-0.002172231674194336){
     s0+=104.0;
     s1+=100.0;
    } else {
     s0+=55666.0;
     s1+=333.0;
    }
   } else {
    if(i41<0.000468108628410846){
     s0+=31.0;
     s1+=84.0;
    } else {
     s0+=624.0;
     s1+=68.0;
    }
   }
  } else {
   if(i54<0.0004787147045135498){
    if(i2<0.04915487766265869){
     s0+=4381.0;
     s1+=628.0;
    } else {
     s0+=669.0;
     s1+=542.0;
    }
   } else {
    if(i35<0.0011128562036901712){
     s0+=1413.0;
     s1+=259.0;
    } else {
     s0+=5955.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i34<0.9990403652191162){
   if(i8<0.9982141256332397){
    if(i7<1.398578405380249){
     s0+=686.0;
     s1+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i54<0.002865612506866455){
    if(i47<0.004652559757232666){
     s0+=73.0;
     s1+=1634.0;
    } else {
     s0+=135.0;
     s1+=310.0;
    }
   } else {
    if(i35<0.0064569683745503426){
     s0+=855.0;
     s1+=688.0;
    } else {
     s0+=87.0;
     s1+=635.0;
    }
   }
  }
 }
} else {
 if(i38<0.000233056751312688){
  if(i73<7.667005411349237e-05){
   s1+=6.0;
  } else {
   s0+=160.0;
  }
 } else {
  if(i17<0.0022366377525031567){
   if(i52<-3.0564868211513385e-05){
    s1+=162.0;
   } else {
    if(i42<-1.5648787666577846e-05){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=144.0;
     s1+=6.0;
    }
   }
  } else {
   if(i15<-6.985664367675781e-05){
    if(i68<1.0006515979766846){
     s0+=59.0;
     s1+=665.0;
    } else {
     s0+=124.0;
     s1+=220.0;
    }
   } else {
    if(i36<0.0003855105023831129){
     s0+=3.0;
    } else {
     s0+=56.0;
     s1+=10575.0;
    }
   }
  }
 }
}
if(i28<1.0067551136016846){
 if(i4<0.000564277172088623){
  if(i56<0.00028069678228348494){
   if(i26<1.0052158832550049){
    if(i21<1.0064020156860352){
     s0+=55966.0;
     s1+=677.0;
    } else {
     s0+=943.0;
     s1+=193.0;
    }
   } else {
    if(i27<1.0746264457702637){
     s0+=117.0;
     s1+=151.0;
    } else {
     s0+=847.0;
     s1+=263.0;
    }
   }
  } else {
   if(i7<1.0445520877838135){
    if(i31<1.1792536973953247){
     s0+=1990.0;
     s1+=630.0;
    } else {
     s0+=6282.0;
     s1+=65.0;
    }
   } else {
    if(i2<0.08518755435943604){
     s0+=2182.0;
     s1+=654.0;
    } else {
     s0+=447.0;
     s1+=1564.0;
    }
   }
  }
 } else {
  if(i68<0.9975060224533081){
   if(i3<0.14548230171203613){
    s0+=144.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i7<1.1364943981170654){
    if(i30<0.018006548285484314){
     s0+=236.0;
     s1+=345.0;
    } else {
     s0+=26.0;
     s1+=889.0;
    }
   } else {
    if(i17<0.0036463970318436623){
     s0+=8.0;
     s1+=2.0;
    } else {
     s1+=1307.0;
    }
   }
  }
 }
} else {
 if(i20<1.7940998077392578e-05){
  if(i33<0.0002547932672314346){
   if(i3<0.05502575635910034){
    if(i1<0.07286813855171204){
     s0+=857.0;
     s1+=35.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i10<1.0077259540557861){
     s0+=21.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=88.0;
    }
   }
  } else {
   if(i5<-2.7922491426579654e-05){
    if(i16<0.0014147758483886719){
     s0+=186.0;
     s1+=981.0;
    } else {
     s0+=1.0;
     s1+=1097.0;
    }
   } else {
    if(i0<0.08271440863609314){
     s0+=522.0;
     s1+=22.0;
    } else {
     s0+=206.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i8<1.001692771911621){
   if(i63<1.672481812420301e-05){
    if(i66<-0.0007358115399256349){
     s1+=1.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i9<1.0493929386138916){
     s0+=11.0;
    } else {
     s1+=52.0;
    }
   }
  } else {
   if(i17<0.0011939436662942171){
    if(i8<1.0070112943649292){
     s0+=30.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i36<0.00036327532143332064){
     s0+=6.0;
    } else {
     s0+=21.0;
     s1+=7969.0;
    }
   }
  }
 }
}
if(i0<0.08341756463050842){
 if(i0<0.06597098708152771){
  if(i20<2.3066997528076172e-05){
   if(i24<1.0467959642410278){
    if(i35<0.00034126368700526655){
     s0+=34677.0;
     s1+=3.0;
    } else {
     s0+=18416.0;
     s1+=222.0;
    }
   } else {
    if(i25<0.01379399560391903){
     s0+=8028.0;
     s1+=332.0;
    } else {
     s0+=4621.0;
     s1+=957.0;
    }
   }
  } else {
   if(i12<1.002767562866211){
    if(i24<1.077976107597351){
     s0+=397.0;
     s1+=10.0;
    } else {
     s0+=148.0;
     s1+=77.0;
    }
   } else {
    if(i4<0.00048738718032836914){
     s0+=125.0;
     s1+=22.0;
    } else {
     s0+=75.0;
     s1+=402.0;
    }
   }
  }
 } else {
  if(i16<0.000601649284362793){
   if(i48<0.002781420946121216){
    if(i17<0.0043421052396297455){
     s0+=212.0;
     s1+=153.0;
    } else {
     s0+=10.0;
     s1+=240.0;
    }
   } else {
    if(i57<-0.001208662986755371){
     s0+=196.0;
     s1+=144.0;
    } else {
     s0+=2436.0;
     s1+=190.0;
    }
   }
  } else {
   if(i29<1.2392117977142334){
    if(i32<1.0570776462554932){
     s0+=3.0;
    } else {
     s1+=382.0;
    }
   } else {
    if(i71<1.0025780200958252){
     s0+=42.0;
     s1+=3.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i5<-1.270825850951951e-05){
  if(i15<0.00010401010513305664){
   if(i30<0.023250535130500793){
    if(i64<-0.005224907770752907){
     s0+=412.0;
     s1+=255.0;
    } else {
     s0+=120.0;
     s1+=1150.0;
    }
   } else {
    if(i25<0.015646671876311302){
     s0+=35.0;
     s1+=67.0;
    } else {
     s0+=49.0;
     s1+=2755.0;
    }
   }
  } else {
   if(i53<0.9973702430725098){
    s0+=9.0;
   } else {
    if(i4<6.046891212463379e-05){
     s0+=7.0;
     s1+=8.0;
    } else {
     s0+=35.0;
     s1+=9474.0;
    }
   }
  }
 } else {
  if(i19<0.9985203742980957){
   s0+=392.0;
  } else {
   if(i17<0.0018919880967587233){
    if(i56<0.0004750154912471771){
     s0+=386.0;
     s1+=31.0;
    } else {
     s0+=27.0;
     s1+=40.0;
    }
   } else {
    if(i49<0.012103915214538574){
     s0+=21.0;
     s1+=224.0;
    } else {
     s0+=135.0;
     s1+=74.0;
    }
   }
  }
 }
}
if(i4<0.0005480647087097168){
 if(i2<0.08157229423522949){
  if(i62<0.04530841112136841){
   if(i51<0.00028708091122098267){
    if(i21<1.0078530311584473){
     s0+=51166.0;
     s1+=162.0;
    } else {
     s0+=128.0;
     s1+=97.0;
    }
   } else {
    if(i32<1.1034480333328247){
     s0+=1606.0;
     s1+=440.0;
    } else {
     s0+=3364.0;
     s1+=69.0;
    }
   }
  } else {
   if(i15<-0.0002582669258117676){
    if(i42<-4.63946234958712e-05){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=6053.0;
     s1+=142.0;
    }
   } else {
    if(i32<1.0670123100280762){
     s0+=2039.0;
     s1+=1.0;
    } else {
     s0+=4746.0;
     s1+=1271.0;
    }
   }
  }
 } else {
  if(i20<-1.621246337890625e-05){
   if(i37<-0.00012168288230895996){
    if(i42<-7.055446076265071e-06){
     s1+=3.0;
    } else {
     s0+=404.0;
    }
   } else {
    if(i66<0.0005704666837118566){
     s0+=15.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i43<0.052665501832962036){
    if(i17<0.0016335147665813565){
     s0+=66.0;
     s1+=136.0;
    } else {
     s0+=60.0;
     s1+=2035.0;
    }
   } else {
    if(i0<0.128311425447464){
     s0+=607.0;
     s1+=154.0;
    } else {
     s0+=310.0;
     s1+=892.0;
    }
   }
  }
 }
} else {
 if(i73<0.00043048837687820196){
  if(i17<0.002261590911075473){
   if(i52<-3.0219040127121843e-05){
    s1+=177.0;
   } else {
    if(i36<0.001474126591347158){
     s1+=33.0;
    } else {
     s0+=167.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.04816526174545288){
    if(i36<0.008494186215102673){
     s0+=21.0;
     s1+=224.0;
    } else {
     s0+=68.0;
     s1+=36.0;
    }
   } else {
    if(i2<0.12478673458099365){
     s0+=135.0;
     s1+=1925.0;
    } else {
     s0+=20.0;
     s1+=9281.0;
    }
   }
  }
 } else {
  s0+=182.0;
 }
}
if(i1<0.08351385593414307){
 if(i19<1.0019140243530273){
  if(i2<0.0631459653377533){
   if(i66<0.0007147315191105008){
    if(i38<0.00031147582922130823){
     s0+=45721.0;
     s1+=86.0;
    } else {
     s0+=12456.0;
     s1+=557.0;
    }
   } else {
    if(i41<0.0016956923063844442){
     s0+=1611.0;
     s1+=709.0;
    } else {
     s0+=5982.0;
     s1+=172.0;
    }
   }
  } else {
   if(i43<0.03125631809234619){
    if(i29<1.1991922855377197){
     s0+=51.0;
     s1+=370.0;
    } else {
     s0+=210.0;
     s1+=114.0;
    }
   } else {
    if(i23<1.0103247165679932){
     s0+=22.0;
     s1+=36.0;
    } else {
     s0+=2458.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i6<3.36766242980957e-05){
   if(i48<-0.0426504909992218){
    if(i14<0.99648517370224){
     s0+=23.0;
     s1+=14.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i35<0.0014016828499734402){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=474.0;
     s1+=15.0;
    }
   }
  } else {
   if(i46<0.0021739602088928223){
    if(i51<0.00017265559290535748){
     s0+=16.0;
    } else {
     s0+=82.0;
     s1+=811.0;
    }
   } else {
    if(i10<1.0162081718444824){
     s0+=70.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i20<-1.728534698486328e-05){
  if(i72<-3.214928256056737e-06){
   if(i10<0.9876821041107178){
    s1+=8.0;
   } else {
    s0+=17.0;
   }
  } else {
   s0+=608.0;
  }
 } else {
  if(i58<0.0010642905253916979){
   if(i5<-1.3797138308291323e-05){
    if(i29<1.2371783256530762){
     s0+=5.0;
     s1+=1245.0;
    } else {
     s0+=241.0;
     s1+=806.0;
    }
   } else {
    if(i40<0.05828577280044556){
     s0+=34.0;
     s1+=153.0;
    } else {
     s0+=519.0;
     s1+=76.0;
    }
   }
  } else {
   if(i2<0.1306760609149933){
    if(i48<0.0503840446472168){
     s0+=109.0;
     s1+=1887.0;
    } else {
     s0+=410.0;
     s1+=147.0;
    }
   } else {
    if(i27<1.06563401222229){
     s0+=10.0;
    } else {
     s0+=50.0;
     s1+=9692.0;
    }
   }
  }
 }
}
if(i8<1.002457618713379){
 if(i24<1.0576403141021729){
  if(i62<0.04665403068065643){
   if(i47<-0.0017231404781341553){
    if(i14<0.994769811630249){
     s0+=78.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=58.0;
    }
   } else {
    if(i21<1.0092427730560303){
     s0+=53062.0;
     s1+=178.0;
    } else {
     s0+=3.0;
     s1+=97.0;
    }
   }
  } else {
   if(i1<0.07111167907714844){
    if(i24<1.0434019565582275){
     s0+=4123.0;
     s1+=81.0;
    } else {
     s0+=1063.0;
     s1+=216.0;
    }
   } else {
    if(i11<0.9898874759674072){
     s0+=262.0;
     s1+=14.0;
    } else {
     s0+=125.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i0<0.07580173015594482){
   if(i35<0.0011264070635661483){
    if(i56<0.00027480468270368874){
     s0+=1854.0;
     s1+=419.0;
    } else {
     s0+=50.0;
     s1+=421.0;
    }
   } else {
    if(i19<1.0015043020248413){
     s0+=7655.0;
     s1+=318.0;
    } else {
     s0+=630.0;
     s1+=151.0;
    }
   }
  } else {
   if(i40<0.05363839864730835){
    if(i36<0.00046283414121717215){
     s0+=40.0;
     s1+=8.0;
    } else {
     s0+=80.0;
     s1+=2028.0;
    }
   } else {
    if(i0<0.11692601442337036){
     s0+=942.0;
     s1+=253.0;
    } else {
     s0+=578.0;
     s1+=1571.0;
    }
   }
  }
 }
} else {
 if(i68<0.9996296763420105){
  if(i14<1.0070490837097168){
   if(i0<0.08274254202842712){
    if(i29<1.613681674003601){
     s0+=27.0;
     s1+=136.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i61<0.00016956089530140162){
     s0+=7.0;
     s1+=73.0;
    } else {
     s0+=5.0;
     s1+=1538.0;
    }
   }
  } else {
   if(i1<0.06807255744934082){
    if(i17<0.0015360763063654304){
     s0+=2.0;
    } else {
     s1+=86.0;
    }
   } else {
    s1+=6232.0;
   }
  }
 } else {
  if(i0<0.058233946561813354){
   if(i58<0.0009530502138659358){
    if(i37<0.00018554925918579102){
     s0+=119.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i65<-0.008359866216778755){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=235.0;
    }
   }
  } else {
   if(i58<0.0010100019862875342){
    if(i31<1.2369153499603271){
     s1+=48.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i15<-7.68899917602539e-06){
     s0+=74.0;
     s1+=433.0;
    } else {
     s0+=13.0;
     s1+=2512.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i19<1.0018912553787231){
  if(i0<0.06630873680114746){
   if(i48<-0.031049758195877075){
    if(i5<-1.659883673710283e-05){
     s0+=451.0;
     s1+=288.0;
    } else {
     s0+=1444.0;
     s1+=200.0;
    }
   } else {
    if(i38<0.00027790392050519586){
     s0+=44584.0;
     s1+=55.0;
    } else {
     s0+=19716.0;
     s1+=871.0;
    }
   }
  } else {
   if(i8<0.9970805644989014){
    if(i40<0.016528666019439697){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=1208.0;
     s1+=16.0;
    }
   } else {
    if(i39<0.00030273746233433485){
     s0+=461.0;
    } else {
     s0+=835.0;
     s1+=707.0;
    }
   }
  }
 } else {
  if(i14<1.0002171993255615){
   if(i23<1.0008773803710938){
    if(i6<1.4901161193847656e-05){
     s0+=51.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=89.0;
    }
   } else {
    if(i42<-1.8788532543112524e-05){
     s0+=560.0;
     s1+=45.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i57<0.00473707914352417){
    if(i17<0.0009787008166313171){
     s0+=19.0;
    } else {
     s0+=40.0;
     s1+=752.0;
    }
   } else {
    if(i8<1.004490852355957){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i5<-1.710977085167542e-05){
  if(i19<0.9981886744499207){
   if(i58<0.001900835195556283){
    if(i52<6.397226388799027e-05){
     s0+=46.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i22<0.9787123203277588){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   }
  } else {
   if(i6<5.0961971282958984e-05){
    if(i49<0.01513633131980896){
     s0+=109.0;
     s1+=2250.0;
    } else {
     s0+=412.0;
     s1+=1230.0;
    }
   } else {
    if(i68<1.0058977603912354){
     s0+=67.0;
     s1+=9929.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i71<0.9974430203437805){
   if(i14<0.9967849850654602){
    s0+=477.0;
   } else {
    if(i2<0.14376777410507202){
     s0+=7.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i43<0.04309406876564026){
    if(i37<-0.0001302957534790039){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=288.0;
    }
   } else {
    if(i1<0.2849477529525757){
     s0+=627.0;
     s1+=138.0;
    } else {
     s0+=29.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i15<0.00011593103408813477){
 if(i9<1.0450963973999023){
  if(i51<0.00027992381365038455){
   if(i20<2.8967857360839844e-05){
    if(i18<1.0102460384368896){
     s0+=51739.0;
     s1+=241.0;
    } else {
     s0+=26.0;
     s1+=32.0;
    }
   } else {
    if(i27<1.0552552938461304){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i3<0.07306739687919617){
    if(i14<0.9943342804908752){
     s0+=8297.0;
     s1+=117.0;
    } else {
     s0+=4563.0;
     s1+=1344.0;
    }
   } else {
    if(i4<-0.0010041296482086182){
     s0+=80.0;
     s1+=5.0;
    } else {
     s0+=86.0;
     s1+=444.0;
    }
   }
  }
 } else {
  if(i1<0.0994422435760498){
   if(i17<0.00554784806445241){
    if(i38<0.0024014171212911606){
     s0+=2084.0;
     s1+=626.0;
    } else {
     s0+=2089.0;
     s1+=64.0;
    }
   } else {
    if(i54<0.0003719925880432129){
     s0+=85.0;
     s1+=473.0;
    } else {
     s0+=327.0;
     s1+=87.0;
    }
   }
  } else {
   if(i19<0.9984936118125916){
    if(i29<1.434314250946045){
     s0+=302.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i52<3.612510772654787e-05){
     s0+=416.0;
     s1+=468.0;
    } else {
     s0+=347.0;
     s1+=3151.0;
    }
   }
  }
 }
} else {
 if(i42<-1.1811831427621655e-05){
  if(i36<0.0004315656842663884){
   if(i21<1.0041292905807495){
    s0+=178.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i4<0.0009384751319885254){
    if(i33<0.00018268689746037126){
     s0+=51.0;
     s1+=39.0;
    } else {
     s0+=42.0;
     s1+=749.0;
    }
   } else {
    s1+=8649.0;
   }
  }
 } else {
  if(i20<7.331371307373047e-06){
   if(i22<1.0076470375061035){
    if(i23<1.0614261627197266){
     s0+=169.0;
     s1+=9.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i37<-0.00017309188842773438){
     s0+=16.0;
    } else {
     s0+=7.0;
     s1+=450.0;
    }
   }
  } else {
   if(i17<0.00270266504958272){
    s0+=343.0;
   } else {
    if(i15<0.00012314319610595703){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i1<0.08468067646026611){
 if(i19<1.0018455982208252){
  if(i59<0.007555656600743532){
   if(i1<0.06633725762367249){
    if(i47<-0.00109785795211792){
     s0+=4574.0;
     s1+=427.0;
    } else {
     s0+=57020.0;
     s1+=407.0;
    }
   } else {
    if(i45<0.040262967348098755){
     s0+=107.0;
     s1+=319.0;
    } else {
     s0+=3400.0;
     s1+=275.0;
    }
   }
  } else {
   if(i2<0.03283020853996277){
    if(i12<1.0004322528839111){
     s0+=2292.0;
     s1+=212.0;
    } else {
     s0+=242.0;
     s1+=106.0;
    }
   } else {
    if(i43<0.003174513578414917){
     s0+=78.0;
     s1+=275.0;
    } else {
     s0+=619.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i37<0.000370025634765625){
   if(i46<0.0023617148399353027){
    if(i51<0.00019659037934616208){
     s0+=29.0;
    } else {
     s0+=77.0;
     s1+=740.0;
    }
   } else {
    if(i0<0.08249300718307495){
     s0+=56.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i16<-0.0007804632186889648){
    if(i17<0.01571686565876007){
     s0+=554.0;
     s1+=38.0;
    } else {
     s0+=9.0;
     s1+=44.0;
    }
   } else {
    s1+=133.0;
   }
  }
 }
} else {
 if(i24<1.049466609954834){
  if(i19<1.00080144405365){
   if(i27<1.0705182552337646){
    if(i25<0.023122912272810936){
     s0+=254.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   } else {
    if(i47<-1.6868114471435547e-05){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=60.0;
     s1+=3.0;
    }
   }
  } else {
   if(i31<1.190987467765808){
    s1+=24.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i4<0.00048476457595825195){
   if(i64<-0.006278569810092449){
    if(i73<8.979227277450264e-05){
     s0+=731.0;
     s1+=257.0;
    } else {
     s0+=292.0;
     s1+=682.0;
    }
   } else {
    if(i4<-0.0008109509944915771){
     s0+=135.0;
     s1+=35.0;
    } else {
     s0+=296.0;
     s1+=2196.0;
    }
   }
  } else {
   if(i1<0.13285887241363525){
    if(i68<1.002081036567688){
     s0+=86.0;
     s1+=1287.0;
    } else {
     s0+=49.0;
     s1+=39.0;
    }
   } else {
    if(i30<0.022751975804567337){
     s0+=22.0;
     s1+=1395.0;
    } else {
     s0+=4.0;
     s1+=8085.0;
    }
   }
  }
 }
}
if(i4<0.0005651116371154785){
 if(i45<0.06219518184661865){
  if(i24<1.0486011505126953){
   if(i24<1.0428826808929443){
    if(i66<0.0007819582824595273){
     s0+=49419.0;
     s1+=45.0;
    } else {
     s0+=2333.0;
     s1+=96.0;
    }
   } else {
    if(i47<-0.0014026165008544922){
     s0+=221.0;
     s1+=105.0;
    } else {
     s0+=3560.0;
     s1+=85.0;
    }
   }
  } else {
   if(i1<0.07840406894683838){
    if(i41<0.0016375385457649827){
     s0+=4252.0;
     s1+=1139.0;
    } else {
     s0+=8362.0;
     s1+=335.0;
    }
   } else {
    if(i6<-4.4465065002441406e-05){
     s0+=147.0;
     s1+=35.0;
    } else {
     s0+=95.0;
     s1+=1406.0;
    }
   }
  }
 } else {
  if(i5<-1.8396362065686844e-05){
   if(i1<0.10410448908805847){
    if(i70<0.9690849781036377){
     s1+=28.0;
    } else {
     s0+=448.0;
     s1+=137.0;
    }
   } else {
    if(i2<0.11721307039260864){
     s0+=103.0;
     s1+=241.0;
    } else {
     s0+=119.0;
     s1+=1530.0;
    }
   }
  } else {
   if(i19<0.99846351146698){
    s0+=564.0;
   } else {
    if(i41<0.005754465237259865){
     s0+=829.0;
     s1+=141.0;
    } else {
     s0+=140.0;
     s1+=150.0;
    }
   }
  }
 }
} else {
 if(i73<0.000525852432474494){
  if(i0<0.06265565752983093){
   if(i46<-0.0015270113945007324){
    if(i66<8.146670006681234e-05){
     s0+=6.0;
    } else {
     s0+=31.0;
     s1+=389.0;
    }
   } else {
    if(i24<1.0832065343856812){
     s0+=44.0;
     s1+=103.0;
    } else {
     s0+=116.0;
     s1+=24.0;
    }
   }
  } else {
   if(i0<0.13857463002204895){
    if(i64<-0.0064133950509130955){
     s0+=97.0;
     s1+=52.0;
    } else {
     s0+=68.0;
     s1+=1915.0;
    }
   } else {
    if(i27<1.2295559644699097){
     s0+=15.0;
     s1+=1847.0;
    } else {
     s0+=1.0;
     s1+=7369.0;
    }
   }
  }
 } else {
  s0+=110.0;
 }
}
if(i4<0.0005537867546081543){
 if(i0<0.08216899633407593){
  if(i59<0.007555656600743532){
   if(i27<1.0557184219360352){
    s0+=42018.0;
   } else {
    if(i31<1.103413462638855){
     s0+=4462.0;
     s1+=1080.0;
    } else {
     s0+=18889.0;
     s1+=183.0;
    }
   }
  } else {
   if(i3<0.022208988666534424){
    if(i29<1.0840110778808594){
     s0+=748.0;
    } else {
     s0+=1576.0;
     s1+=283.0;
    }
   } else {
    if(i25<0.017300035804510117){
     s0+=780.0;
     s1+=109.0;
    } else {
     s0+=301.0;
     s1+=384.0;
    }
   }
  }
 } else {
  if(i4<-0.0008136928081512451){
   if(i17<0.006489621475338936){
    if(i35<0.00777461938560009){
     s0+=364.0;
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=15.0;
    }
   } else {
    if(i37<0.00029987096786499023){
     s0+=4.0;
     s1+=110.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   }
  } else {
   if(i40<0.057634592056274414){
    if(i27<1.0581047534942627){
     s0+=13.0;
    } else {
     s0+=35.0;
     s1+=1929.0;
    }
   } else {
    if(i0<0.11972963809967041){
     s0+=663.0;
     s1+=174.0;
    } else {
     s0+=421.0;
     s1+=1240.0;
    }
   }
  }
 }
} else {
 if(i0<0.058464497327804565){
  if(i39<0.0003575368318706751){
   s0+=147.0;
  } else {
   if(i69<0.002002416178584099){
    if(i35<0.001670411555096507){
     s1+=36.0;
    } else {
     s0+=155.0;
     s1+=3.0;
    }
   } else {
    if(i68<1.0027998685836792){
     s0+=40.0;
     s1+=339.0;
    } else {
     s0+=34.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i17<0.0022804737091064453){
   if(i72<-4.8424881242681295e-06){
    s1+=154.0;
   } else {
    if(i71<1.0001132488250732){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=65.0;
     s1+=6.0;
    }
   }
  } else {
   if(i10<1.0156707763671875){
    if(i46<0.0027172863483428955){
     s0+=18.0;
     s1+=2160.0;
    } else {
     s0+=122.0;
     s1+=993.0;
    }
   } else {
    if(i11<1.0061485767364502){
     s0+=2.0;
     s1+=425.0;
    } else {
     s1+=7677.0;
    }
   }
  }
 }
}
if(i13<0.0004342198371887207){
 if(i0<0.08544698357582092){
  if(i51<0.00027992381365038455){
   if(i22<1.011173963546753){
    if(i12<1.0029160976409912){
     s0+=51944.0;
     s1+=191.0;
    } else {
     s0+=94.0;
     s1+=20.0;
    }
   } else {
    if(i11<1.004122257232666){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=53.0;
    }
   }
  } else {
   if(i35<0.0011262557236477733){
    if(i29<1.0840110778808594){
     s0+=2916.0;
    } else {
     s0+=1636.0;
     s1+=1339.0;
    }
   } else {
    if(i54<-0.0022429823875427246){
     s0+=1331.0;
     s1+=208.0;
    } else {
     s0+=9970.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i4<-0.000802844762802124){
   if(i17<0.006514617241919041){
    if(i61<0.0001587385922903195){
     s0+=14.0;
     s1+=10.0;
    } else {
     s0+=379.0;
     s1+=12.0;
    }
   } else {
    if(i3<0.08939287066459656){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i64<-0.004752810113132){
    if(i25<0.03414802625775337){
     s0+=631.0;
     s1+=241.0;
    } else {
     s0+=90.0;
     s1+=1152.0;
    }
   } else {
    if(i34<0.9989631175994873){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=137.0;
     s1+=2310.0;
    }
   }
  }
 }
} else {
 if(i63<3.6168341466691345e-05){
  if(i1<0.09527057409286499){
   if(i69<0.0014754506992176175){
    if(i19<1.0015053749084473){
     s0+=423.0;
     s1+=30.0;
    } else {
     s0+=494.0;
     s1+=451.0;
    }
   } else {
    if(i65<-0.014265025034546852){
     s0+=90.0;
     s1+=18.0;
    } else {
     s0+=146.0;
     s1+=937.0;
    }
   }
  } else {
   if(i24<1.1227065324783325){
    if(i65<-0.027162116020917892){
     s0+=72.0;
     s1+=57.0;
    } else {
     s0+=53.0;
     s1+=1679.0;
    }
   } else {
    if(i58<0.0013228822499513626){
     s0+=37.0;
     s1+=536.0;
    } else {
     s0+=7.0;
     s1+=7511.0;
    }
   }
  }
 } else {
  if(i29<1.561058521270752){
   if(i9<1.0659968852996826){
    if(i41<0.01996631920337677){
     s0+=79.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i58<0.004338433966040611){
     s0+=5.0;
    } else {
     s1+=130.0;
    }
   }
  } else {
   if(i45<0.0950038731098175){
    if(i53<1.0001064538955688){
     s1+=11.0;
    } else {
     s0+=430.0;
     s1+=1.0;
    }
   } else {
    if(i63<4.252486542100087e-05){
     s1+=9.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i8<1.002474308013916){
 if(i2<0.07712078094482422){
  if(i38<0.00031265182769857347){
   if(i8<1.001296877861023){
    if(i71<1.0019464492797852){
     s0+=45358.0;
     s1+=36.0;
    } else {
     s0+=376.0;
     s1+=7.0;
    }
   } else {
    if(i9<1.0494716167449951){
     s0+=1481.0;
     s1+=23.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i41<0.001754465512931347){
    if(i7<1.0398883819580078){
     s0+=4345.0;
     s1+=463.0;
    } else {
     s0+=2541.0;
     s1+=1201.0;
    }
   } else {
    if(i70<0.9574539661407471){
     s0+=2260.0;
     s1+=252.0;
    } else {
     s0+=12498.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i29<1.0840110778808594){
   s0+=231.0;
  } else {
   if(i19<0.9985275268554688){
    if(i61<0.0006420742720365524){
     s0+=292.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=21.0;
    }
   } else {
    if(i40<0.05494454503059387){
     s0+=59.0;
     s1+=2054.0;
    } else {
     s0+=1106.0;
     s1+=1707.0;
    }
   }
  }
 }
} else {
 if(i51<0.0001879951305454597){
  if(i27<1.125725507736206){
   if(i23<1.0228064060211182){
    if(i49<-0.002734959125518799){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   s0+=81.0;
  }
 } else {
  if(i17<0.0022305105812847614){
   if(i11<1.013892650604248){
    if(i37<0.0001659989356994629){
     s0+=109.0;
    } else {
     s0+=4.0;
     s1+=33.0;
    }
   } else {
    s1+=150.0;
   }
  } else {
   if(i15<6.258487701416016e-06){
    if(i25<0.029806099832057953){
     s0+=131.0;
     s1+=206.0;
    } else {
     s0+=35.0;
     s1+=844.0;
    }
   } else {
    if(i6<4.163384437561035e-05){
     s0+=10.0;
     s1+=170.0;
    } else {
     s0+=6.0;
     s1+=9909.0;
    }
   }
  }
 }
}
if(i2<0.07769986987113953){
 if(i19<1.001647710800171){
  if(i51<0.000302087573800236){
   if(i21<1.0085561275482178){
    if(i41<0.0003613918670453131){
     s0+=38464.0;
     s1+=13.0;
    } else {
     s0+=14990.0;
     s1+=190.0;
    }
   } else {
    if(i32<1.1063789129257202){
     s0+=28.0;
     s1+=105.0;
    } else {
     s0+=119.0;
     s1+=4.0;
    }
   }
  } else {
   if(i8<0.9975576400756836){
    if(i41<0.0020229704678058624){
     s0+=1766.0;
     s1+=213.0;
    } else {
     s0+=7527.0;
     s1+=72.0;
    }
   } else {
    if(i17<0.003443222725763917){
     s0+=4880.0;
     s1+=771.0;
    } else {
     s0+=532.0;
     s1+=676.0;
    }
   }
  }
 } else {
  if(i32<1.236706256866455){
   if(i36<0.0003496546996757388){
    s0+=56.0;
   } else {
    if(i40<0.04167020320892334){
     s0+=8.0;
     s1+=740.0;
    } else {
     s0+=31.0;
     s1+=21.0;
    }
   }
  } else {
   if(i59<0.013123984448611736){
    if(i15<-0.0002930760383605957){
     s0+=573.0;
     s1+=5.0;
    } else {
     s0+=265.0;
     s1+=110.0;
    }
   } else {
    if(i8<1.0005037784576416){
     s0+=29.0;
     s1+=32.0;
    } else {
     s0+=22.0;
     s1+=279.0;
    }
   }
  }
 }
} else {
 if(i2<0.12569743394851685){
  if(i54<0.004142463207244873){
   if(i5<-1.7689268133835867e-05){
    if(i70<1.0509774684906006){
     s0+=115.0;
     s1+=2162.0;
    } else {
     s0+=50.0;
     s1+=14.0;
    }
   } else {
    if(i37<-0.00012549757957458496){
     s0+=128.0;
     s1+=1.0;
    } else {
     s0+=199.0;
     s1+=220.0;
    }
   }
  } else {
   if(i64<-0.0045090774074196815){
    if(i1<0.1364624798297882){
     s0+=606.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   } else {
    if(i9<1.048836588859558){
     s0+=23.0;
     s1+=63.0;
    } else {
     s0+=136.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i37<-0.0002630650997161865){
   if(i39<0.012062881141901016){
    s0+=239.0;
   } else {
    s1+=36.0;
   }
  } else {
   if(i17<0.0017026610439643264){
    if(i43<0.08716005086898804){
     s0+=20.0;
     s1+=103.0;
    } else {
     s0+=203.0;
     s1+=21.0;
    }
   } else {
    if(i16<-0.0002754330635070801){
     s0+=122.0;
     s1+=1672.0;
    } else {
     s0+=20.0;
     s1+=9495.0;
    }
   }
  }
 }
}
if(i8<1.0024573802947998){
 if(i0<0.08195626735687256){
  if(i41<0.0003383791772648692){
   if(i23<1.0425481796264648){
    if(i11<1.004652976989746){
     s0+=38961.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i11<1.0030640363693237){
     s0+=307.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i31<1.0716924667358398){
     s0+=3598.0;
     s1+=89.0;
    } else {
     s0+=1380.0;
     s1+=1395.0;
    }
   } else {
    if(i69<0.0066442349925637245){
     s0+=23299.0;
     s1+=334.0;
    } else {
     s0+=1407.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i8<0.9963761568069458){
   if(i13<-0.0004705190658569336){
    if(i36<0.006805916782468557){
     s0+=390.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   } else {
    if(i24<1.1268939971923828){
     s0+=119.0;
     s1+=17.0;
    } else {
     s0+=19.0;
     s1+=85.0;
    }
   }
  } else {
   if(i35<0.006547089666128159){
    if(i33<0.0010480066994205117){
     s0+=237.0;
     s1+=1629.0;
    } else {
     s0+=850.0;
     s1+=822.0;
    }
   } else {
    if(i3<0.10751602053642273){
     s0+=28.0;
     s1+=94.0;
    } else {
     s0+=13.0;
     s1+=1194.0;
    }
   }
  }
 }
} else {
 if(i51<0.00017976900562644005){
  if(i73<4.8740093916421756e-05){
   s1+=15.0;
  } else {
   s0+=73.0;
  }
 } else {
  if(i42<-1.133408113673795e-05){
   if(i0<0.06888946890830994){
    if(i47<0.0014644265174865723){
     s0+=69.0;
     s1+=560.0;
    } else {
     s0+=81.0;
     s1+=7.0;
    }
   } else {
    if(i35<0.007966635748744011){
     s0+=79.0;
     s1+=3048.0;
    } else {
     s0+=8.0;
     s1+=7563.0;
    }
   }
  } else {
   if(i34<1.000150203704834){
    s1+=70.0;
   } else {
    if(i39<0.001698046806268394){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=53.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i22<1.010624885559082){
 if(i20<1.9252300262451172e-05){
  if(i55<0.0260327011346817){
   if(i57<-0.005102068185806274){
    if(i1<0.006561100482940674){
     s0+=81.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=151.0;
    }
   } else {
    if(i21<1.0072554349899292){
     s0+=53642.0;
     s1+=310.0;
    } else {
     s0+=449.0;
     s1+=291.0;
    }
   }
  } else {
   if(i16<-0.0013909637928009033){
    if(i24<1.068637490272522){
     s0+=5757.0;
     s1+=49.0;
    } else {
     s0+=3191.0;
     s1+=425.0;
    }
   } else {
    if(i1<0.06734505295753479){
     s0+=4119.0;
     s1+=752.0;
    } else {
     s0+=664.0;
     s1+=1406.0;
    }
   }
  }
 } else {
  if(i6<4.1812658309936523e-05){
   if(i61<0.0016975539037957788){
    if(i2<0.10480841994285583){
     s0+=853.0;
     s1+=157.0;
    } else {
     s0+=10.0;
     s1+=69.0;
    }
   } else {
    if(i2<0.021916329860687256){
     s0+=40.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=166.0;
    }
   }
  } else {
   if(i24<1.0415534973144531){
    s0+=189.0;
   } else {
    if(i33<0.0001366407668683678){
     s0+=16.0;
    } else {
     s0+=163.0;
     s1+=2535.0;
    }
   }
  }
 }
} else {
 if(i11<1.010017991065979){
  if(i1<0.09586703777313232){
   if(i7<1.0731133222579956){
    if(i48<0.030546367168426514){
     s0+=268.0;
     s1+=339.0;
    } else {
     s0+=119.0;
     s1+=5.0;
    }
   } else {
    if(i37<0.00029841065406799316){
     s0+=1068.0;
     s1+=49.0;
    } else {
     s0+=5.0;
     s1+=29.0;
    }
   }
  } else {
   if(i0<0.20845168828964233){
    if(i46<0.007548898458480835){
     s0+=151.0;
     s1+=919.0;
    } else {
     s0+=332.0;
     s1+=81.0;
    }
   } else {
    if(i20<-2.22623348236084e-05){
     s0+=28.0;
    } else {
     s0+=57.0;
     s1+=1393.0;
    }
   }
  }
 } else {
  if(i11<1.0140671730041504){
   if(i0<0.06520533561706543){
    if(i50<-0.0005148833733983338){
     s0+=63.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i4<0.00020205974578857422){
     s0+=23.0;
     s1+=52.0;
    } else {
     s0+=14.0;
     s1+=906.0;
    }
   }
  } else {
   s1+=6795.0;
  }
 }
}
if(i6<3.737211227416992e-05){
 if(i22<1.0107730627059937){
  if(i24<1.0495158433914185){
   if(i69<0.00147249735891819){
    if(i21<1.0094127655029297){
     s0+=54393.0;
     s1+=218.0;
    } else {
     s0+=8.0;
     s1+=10.0;
    }
   } else {
    if(i27<1.0547096729278564){
     s0+=1291.0;
    } else {
     s0+=884.0;
     s1+=183.0;
    }
   }
  } else {
   if(i8<0.9968687891960144){
    if(i45<0.07824325561523438){
     s0+=4669.0;
     s1+=158.0;
    } else {
     s0+=208.0;
     s1+=80.0;
    }
   } else {
    if(i2<0.06514382362365723){
     s0+=6558.0;
     s1+=1000.0;
    } else {
     s0+=687.0;
     s1+=1743.0;
    }
   }
  }
 } else {
  if(i3<0.09595823287963867){
   if(i38<0.0011171805672347546){
    if(i17<0.0014875836204737425){
     s0+=126.0;
     s1+=53.0;
    } else {
     s0+=13.0;
     s1+=606.0;
    }
   } else {
    if(i27<1.152409315109253){
     s0+=335.0;
     s1+=133.0;
    } else {
     s0+=928.0;
     s1+=25.0;
    }
   }
  } else {
   if(i61<0.00043295594514347613){
    if(i54<0.00614321231842041){
     s0+=80.0;
     s1+=286.0;
    } else {
     s0+=270.0;
     s1+=109.0;
    }
   } else {
    if(i5<-3.3049695048248395e-05){
     s0+=5.0;
     s1+=763.0;
    } else {
     s0+=31.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i27<1.0577372312545776){
  s0+=344.0;
 } else {
  if(i7<1.1363511085510254){
   if(i0<0.06512784957885742){
    if(i42<-1.4669136362499557e-05){
     s0+=122.0;
     s1+=438.0;
    } else {
     s0+=129.0;
     s1+=12.0;
    }
   } else {
    if(i15<-1.7404556274414062e-05){
     s0+=106.0;
     s1+=445.0;
    } else {
     s0+=63.0;
     s1+=3924.0;
    }
   }
  } else {
   if(i39<0.004962012637406588){
    if(i6<4.357099533081055e-05){
     s0+=18.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=189.0;
    }
   } else {
    s1+=6537.0;
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i24<1.0495078563690186){
  if(i33<0.00032276075216941535){
   if(i47<-0.0015629827976226807){
    if(i67<0.9803180694580078){
     s0+=189.0;
     s1+=18.0;
    } else {
     s0+=65.0;
     s1+=48.0;
    }
   } else {
    if(i28<1.0086467266082764){
     s0+=52075.0;
     s1+=141.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i32<1.2011767625808716){
    if(i71<1.0008037090301514){
     s0+=1866.0;
     s1+=150.0;
    } else {
     s0+=43.0;
     s1+=65.0;
    }
   } else {
    s0+=2341.0;
   }
  }
 } else {
  if(i4<0.00018531084060668945){
   if(i3<0.07072949409484863){
    if(i27<1.1036889553070068){
     s0+=3451.0;
     s1+=1124.0;
    } else {
     s0+=8138.0;
     s1+=365.0;
    }
   } else {
    if(i5<-1.3823004337609746e-05){
     s0+=457.0;
     s1+=1557.0;
    } else {
     s0+=882.0;
     s1+=257.0;
    }
   }
  } else {
   if(i53<0.9998573064804077){
    if(i36<0.000471102655865252){
     s0+=50.0;
    } else {
     s0+=42.0;
     s1+=800.0;
    }
   } else {
    if(i2<0.10502761602401733){
     s0+=896.0;
     s1+=494.0;
    } else {
     s0+=113.0;
     s1+=437.0;
    }
   }
  }
 }
} else {
 if(i27<1.055294156074524){
  s0+=189.0;
 } else {
  if(i1<0.062794029712677){
   if(i70<0.996114194393158){
    if(i65<-0.008940745145082474){
     s0+=44.0;
     s1+=15.0;
    } else {
     s0+=28.0;
     s1+=374.0;
    }
   } else {
    if(i31<1.2062125205993652){
     s0+=1.0;
     s1+=96.0;
    } else {
     s0+=152.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<-4.922334846924059e-05){
    if(i0<0.12329819798469543){
     s0+=91.0;
     s1+=1463.0;
    } else {
     s0+=13.0;
     s1+=9336.0;
    }
   } else {
    if(i17<0.00253513315692544){
     s0+=60.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=290.0;
    }
   }
  }
 }
}
if(i13<0.0004356503486633301){
 if(i16<0.0010176301002502441){
  if(i3<0.07105055451393127){
   if(i51<0.0003149998083245009){
    if(i10<1.008400321006775){
     s0+=53128.0;
     s1+=278.0;
    } else {
     s0+=52.0;
     s1+=89.0;
    }
   } else {
    if(i0<0.07543271780014038){
     s0+=13781.0;
     s1+=1319.0;
    } else {
     s0+=178.0;
     s1+=658.0;
    }
   }
  } else {
   if(i71<0.9976601600646973){
    if(i30<0.0513194277882576){
     s0+=475.0;
     s1+=58.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   } else {
    if(i52<3.532107803039253e-05){
     s0+=768.0;
     s1+=531.0;
    } else {
     s0+=544.0;
     s1+=1761.0;
    }
   }
  }
 } else {
  if(i33<0.00025258836103603244){
   if(i15<0.0002346634864807129){
    if(i55<0.006644693668931723){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=101.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i53<0.9999566674232483){
    if(i35<0.0004361692408565432){
     s0+=1.0;
    } else {
     s1+=1200.0;
    }
   } else {
    if(i35<0.00538446381688118){
     s0+=68.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i8<1.0015944242477417){
  if(i7<1.1205039024353027){
   if(i3<0.12219193577766418){
    if(i59<0.017057090997695923){
     s0+=1382.0;
     s1+=112.0;
    } else {
     s0+=17.0;
     s1+=30.0;
    }
   } else {
    if(i29<1.613681674003601){
     s1+=86.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i10<1.004573106765747){
    if(i46<-0.015252292156219482){
     s0+=5.0;
     s1+=35.0;
    } else {
     s1+=202.0;
    }
   } else {
    if(i30<0.0242256261408329){
     s0+=23.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i8<1.0041277408599854){
   if(i0<0.1307906210422516){
    if(i43<0.04596364498138428){
     s0+=222.0;
     s1+=606.0;
    } else {
     s0+=104.0;
     s1+=22.0;
    }
   } else {
    if(i30<0.020939365029335022){
     s0+=13.0;
     s1+=98.0;
    } else {
     s1+=683.0;
    }
   }
  } else {
   if(i10<1.0146727561950684){
    if(i16<-0.003087759017944336){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=2233.0;
    }
   } else {
    s1+=7134.0;
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i9<1.0451873540878296){
  if(i7<1.0410068035125732){
   if(i27<1.0556960105895996){
    if(i56<0.000468086072942242){
     s0+=40939.0;
    } else {
     s0+=317.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.0008345028618350625){
     s0+=3764.0;
     s1+=590.0;
    } else {
     s0+=14585.0;
     s1+=120.0;
    }
   }
  } else {
   if(i10<1.010773777961731){
    if(i3<0.06032338738441467){
     s0+=4987.0;
     s1+=632.0;
    } else {
     s0+=331.0;
     s1+=378.0;
    }
   } else {
    if(i32<1.1657817363739014){
     s1+=89.0;
    } else {
     s0+=39.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i0<0.09594878554344177){
   if(i64<-0.0037169912829995155){
    if(i67<0.9159799814224243){
     s0+=8.0;
     s1+=26.0;
    } else {
     s0+=1799.0;
     s1+=66.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=848.0;
     s1+=655.0;
    } else {
     s0+=1893.0;
     s1+=275.0;
    }
   }
  } else {
   if(i41<0.010460789315402508){
    if(i43<0.059699952602386475){
     s0+=77.0;
     s1+=1370.0;
    } else {
     s0+=855.0;
     s1+=448.0;
    }
   } else {
    if(i24<1.0730035305023193){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=770.0;
    }
   }
  }
 }
} else {
 if(i27<1.0533727407455444){
  s0+=179.0;
 } else {
  if(i3<0.05569306015968323){
   if(i1<0.06271776556968689){
    if(i27<1.1353518962860107){
     s0+=3.0;
     s1+=241.0;
    } else {
     s0+=226.0;
     s1+=195.0;
    }
   } else {
    if(i60<0.025104820728302002){
     s0+=8.0;
     s1+=752.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i1<0.1318863034248352){
    if(i65<-0.018496591597795486){
     s0+=98.0;
     s1+=28.0;
    } else {
     s0+=68.0;
     s1+=1273.0;
    }
   } else {
    if(i0<0.13187462091445923){
     s0+=4.0;
     s1+=27.0;
    } else {
     s0+=15.0;
     s1+=9243.0;
    }
   }
  }
 }
}
if(i16<0.0007561445236206055){
 if(i2<0.08162105083465576){
  if(i8<1.0024901628494263){
   if(i24<1.0467959642410278){
    if(i38<0.00027855567168444395){
     s0+=43462.0;
     s1+=23.0;
    } else {
     s0+=11343.0;
     s1+=249.0;
    }
   } else {
    if(i0<0.06630954146385193){
     s0+=12835.0;
     s1+=1179.0;
    } else {
     s0+=1159.0;
     s1+=676.0;
    }
   }
  } else {
   if(i48<0.01105964183807373){
    if(i15<-0.000364840030670166){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=45.0;
     s1+=376.0;
    }
   } else {
    if(i48<0.028591573238372803){
     s0+=13.0;
     s1+=10.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i36<0.0005112410290166736){
   if(i38<0.0008571604848839343){
    if(i5<-9.312470865552314e-06){
     s0+=8.0;
     s1+=57.0;
    } else {
     s0+=79.0;
     s1+=4.0;
    }
   } else {
    s0+=267.0;
   }
  } else {
   if(i43<0.048421502113342285){
    if(i52<6.417951226467267e-06){
     s0+=23.0;
     s1+=41.0;
    } else {
     s0+=46.0;
     s1+=2795.0;
    }
   } else {
    if(i30<0.0385403074324131){
     s0+=1030.0;
     s1+=720.0;
    } else {
     s0+=39.0;
     s1+=941.0;
    }
   }
  }
 }
} else {
 if(i5<-6.028650386724621e-05){
  if(i72<1.214789335790556e-08){
   if(i0<0.04051828384399414){
    if(i72<-3.964243660448119e-06){
     s1+=53.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i24<1.0375151634216309){
     s0+=1.0;
    } else {
     s0+=6.0;
     s1+=9499.0;
    }
   }
  } else {
   if(i14<1.0047414302825928){
    s0+=24.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i29<1.1386182308197021){
   if(i41<0.0002888083108700812){
    s0+=33.0;
   } else {
    s1+=430.0;
   }
  } else {
   if(i6<7.486343383789062e-05){
    if(i21<1.0151863098144531){
     s0+=507.0;
     s1+=11.0;
    } else {
     s0+=116.0;
     s1+=54.0;
    }
   } else {
    s1+=28.0;
   }
  }
 }
}
if(i4<0.0005488693714141846){
 if(i7<1.0452215671539307){
  if(i24<1.0451585054397583){
   if(i33<0.000264827162027359){
    if(i0<0.0887022614479065){
     s0+=47829.0;
     s1+=66.0;
    } else {
     s0+=31.0;
     s1+=4.0;
    }
   } else {
    if(i57<-0.002383798360824585){
     s0+=1238.0;
     s1+=85.0;
    } else {
     s0+=5185.0;
     s1+=49.0;
    }
   }
  } else {
   if(i29<1.1013743877410889){
    if(i25<0.012746395543217659){
     s0+=1728.0;
     s1+=143.0;
    } else {
     s0+=185.0;
     s1+=482.0;
    }
   } else {
    if(i4<0.000295102596282959){
     s0+=5937.0;
     s1+=140.0;
    } else {
     s0+=89.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i2<0.07899314165115356){
   if(i0<0.05905231833457947){
    if(i25<0.01765695959329605){
     s0+=4119.0;
     s1+=203.0;
    } else {
     s0+=1363.0;
     s1+=461.0;
    }
   } else {
    if(i45<0.043569862842559814){
     s0+=111.0;
     s1+=430.0;
    } else {
     s0+=1306.0;
     s1+=222.0;
    }
   }
  } else {
   if(i40<0.05757090449333191){
    if(i39<0.00039865728467702866){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=40.0;
     s1+=1704.0;
    }
   } else {
    if(i5<-2.1085452317493036e-05){
     s0+=346.0;
     s1+=1186.0;
    } else {
     s0+=970.0;
     s1+=202.0;
    }
   }
  }
 }
} else {
 if(i0<0.05767560005187988){
  if(i49<-0.005472540855407715){
   if(i37<0.0001156926155090332){
    if(i10<0.9847979545593262){
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i71<0.9989455342292786){
     s0+=10.0;
    } else {
     s0+=23.0;
     s1+=318.0;
    }
   }
  } else {
   if(i40<0.0045697689056396484){
    if(i42<-1.6262169083347544e-05){
     s0+=16.0;
     s1+=41.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.0002717106253840029){
     s0+=181.0;
     s1+=1.0;
    } else {
     s0+=87.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i73<0.0004394306743051857){
   if(i5<-4.921784784528427e-05){
    if(i52<8.695388532942161e-05){
     s0+=3.0;
     s1+=8731.0;
    } else {
     s0+=114.0;
     s1+=2357.0;
    }
   } else {
    if(i58<0.0011097645619884133){
     s0+=64.0;
     s1+=51.0;
    } else {
     s0+=7.0;
     s1+=248.0;
    }
   }
  } else {
   s0+=11.0;
  }
 }
}
if(i8<1.0024782419204712){
 if(i0<0.08270779252052307){
  if(i49<-0.0058502256870269775){
   if(i1<0.04927694797515869){
    if(i4<-0.0003100931644439697){
     s0+=2241.0;
     s1+=111.0;
    } else {
     s0+=1327.0;
     s1+=444.0;
    }
   } else {
    if(i43<0.01989862322807312){
     s0+=103.0;
     s1+=244.0;
    } else {
     s0+=209.0;
     s1+=90.0;
    }
   }
  } else {
   if(i25<0.014118511229753494){
    if(i21<1.006913423538208){
     s0+=53217.0;
     s1+=272.0;
    } else {
     s0+=1399.0;
     s1+=102.0;
    }
   } else {
    if(i9<1.0375813245773315){
     s0+=8646.0;
     s1+=323.0;
    } else {
     s0+=1960.0;
     s1+=595.0;
    }
   }
  }
 } else {
  if(i20<-1.6391277313232422e-05){
   if(i36<0.006805916782468557){
    if(i13<-0.0004056096076965332){
     s0+=382.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i5<-2.1967905922792852e-05){
     s1+=15.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i64<-0.005180803127586842){
    if(i5<-2.3765558580635116e-05){
     s0+=328.0;
     s1+=1313.0;
    } else {
     s0+=586.0;
     s1+=165.0;
    }
   } else {
    if(i32<1.081458568572998){
     s0+=63.0;
     s1+=21.0;
    } else {
     s0+=197.0;
     s1+=2234.0;
    }
   }
  }
 }
} else {
 if(i2<0.05848896503448486){
  if(i48<-0.014559775590896606){
   if(i29<1.5876636505126953){
    if(i57<0.0047661662101745605){
     s0+=10.0;
     s1+=463.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i46<-0.011809587478637695){
     s1+=23.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i32<1.227057933807373){
    if(i29<1.0757708549499512){
     s0+=2.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i23<0.9876269102096558){
     s1+=5.0;
    } else {
     s0+=175.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i4<0.0008678436279296875){
   if(i0<0.1314564049243927){
    if(i32<1.2314128875732422){
     s1+=287.0;
    } else {
     s0+=92.0;
     s1+=60.0;
    }
   } else {
    if(i26<1.0036412477493286){
     s0+=4.0;
     s1+=53.0;
    } else {
     s1+=402.0;
    }
   }
  } else {
   if(i68<1.0058162212371826){
    if(i0<0.12678757309913635){
     s0+=46.0;
     s1+=1247.0;
    } else {
     s0+=3.0;
     s1+=8628.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i2<0.07832252979278564){
 if(i4<0.0006018579006195068){
  if(i0<0.06633859872817993){
   if(i47<-0.0013273358345031738){
    if(i31<1.1823735237121582){
     s0+=1921.0;
     s1+=652.0;
    } else {
     s0+=3673.0;
     s1+=124.0;
    }
   } else {
    if(i59<0.009603983722627163){
     s0+=60075.0;
     s1+=464.0;
    } else {
     s0+=729.0;
     s1+=172.0;
    }
   }
  } else {
   if(i54<0.0006658434867858887){
    if(i19<0.9982135891914368){
     s0+=71.0;
    } else {
     s0+=190.0;
     s1+=429.0;
    }
   } else {
    if(i40<0.03787511587142944){
     s0+=89.0;
     s1+=153.0;
    } else {
     s0+=2096.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i51<0.00021771017054561526){
   if(i63<2.280096396134468e-06){
    if(i71<1.0031592845916748){
     s0+=125.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i8<1.004202127456665){
    if(i29<1.2392117977142334){
     s0+=10.0;
     s1+=239.0;
    } else {
     s0+=176.0;
     s1+=150.0;
    }
   } else {
    if(i27<1.2555840015411377){
     s0+=2.0;
     s1+=661.0;
    } else {
     s0+=20.0;
     s1+=110.0;
    }
   }
  }
 }
} else {
 if(i58<0.0015577059239149094){
  if(i13<-0.0003828704357147217){
   if(i13<-0.00041115283966064453){
    s0+=370.0;
   } else {
    if(i29<1.255998969078064){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i54<0.004997968673706055){
    if(i17<0.0016412362456321716){
     s0+=234.0;
     s1+=265.0;
    } else {
     s0+=113.0;
     s1+=2938.0;
    }
   } else {
    if(i25<0.042660076171159744){
     s0+=577.0;
     s1+=237.0;
    } else {
     s0+=58.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i24<1.0644469261169434){
   if(i6<-4.273653030395508e-05){
    if(i31<1.5516376495361328){
     s0+=113.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i61<0.0008725334773771465){
     s0+=21.0;
     s1+=159.0;
    } else {
     s0+=63.0;
    }
   }
  } else {
   if(i68<0.9970192909240723){
    s0+=37.0;
   } else {
    if(i17<0.003919730428606272){
     s0+=70.0;
     s1+=96.0;
    } else {
     s0+=147.0;
     s1+=9987.0;
    }
   }
  }
 }
}
if(i3<0.072673499584198){
 if(i11<1.0061461925506592){
  if(i46<-0.0018989741802215576){
   if(i8<1.0008479356765747){
    if(i0<0.03546074032783508){
     s0+=2844.0;
     s1+=311.0;
    } else {
     s0+=275.0;
     s1+=363.0;
    }
   } else {
    if(i70<0.9888147115707397){
     s0+=46.0;
     s1+=360.0;
    } else {
     s0+=27.0;
     s1+=21.0;
    }
   }
  } else {
   if(i1<0.0821077823638916){
    if(i44<0.026680035516619682){
     s0+=56408.0;
     s1+=475.0;
    } else {
     s0+=8390.0;
     s1+=761.0;
    }
   } else {
    if(i71<0.9968950748443604){
     s0+=238.0;
    } else {
     s0+=163.0;
     s1+=628.0;
    }
   }
  }
 } else {
  if(i1<0.06738436222076416){
   if(i31<1.1463401317596436){
    s1+=256.0;
   } else {
    if(i42<-2.88328155875206e-05){
     s1+=43.0;
    } else {
     s0+=545.0;
     s1+=3.0;
    }
   }
  } else {
   if(i47<0.0037235617637634277){
    if(i42<-2.0566983494063606e-07){
     s0+=16.0;
     s1+=1368.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i34<1.0011159181594849){
     s0+=48.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i15<5.8144330978393555e-05){
  if(i58<0.001347231213003397){
   if(i36<0.0005821507074870169){
    if(i13<0.00016701221466064453){
     s0+=429.0;
     s1+=20.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.11456429958343506){
     s0+=443.0;
     s1+=113.0;
    } else {
     s0+=348.0;
     s1+=676.0;
    }
   }
  } else {
   if(i25<0.02208251692354679){
    if(i49<0.012507498264312744){
     s0+=97.0;
     s1+=260.0;
    } else {
     s0+=317.0;
     s1+=70.0;
    }
   } else {
    if(i13<-0.0004215836524963379){
     s0+=41.0;
     s1+=5.0;
    } else {
     s0+=179.0;
     s1+=2434.0;
    }
   }
  }
 } else {
  if(i32<1.060826301574707){
   s0+=18.0;
  } else {
   if(i42<-2.007024249905953e-06){
    if(i6<5.2034854888916016e-05){
     s0+=61.0;
     s1+=994.0;
    } else {
     s0+=4.0;
     s1+=8021.0;
    }
   } else {
    if(i32<1.2604451179504395){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=61.0;
    }
   }
  }
 }
}
if(i5<-7.877762982388958e-05){
 if(i11<0.9802656769752502){
  if(i7<1.0827677249908447){
   if(i12<1.0098800659179688){
    if(i61<0.001984225818887353){
     s0+=479.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i73<0.00023380055790767074){
     s0+=15.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i1<0.0033735334873199463){
    if(i39<0.022866925224661827){
     s0+=27.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=97.0;
   }
  }
 } else {
  if(i53<0.9988863468170166){
   s0+=180.0;
  } else {
   if(i68<1.0046992301940918){
    if(i15<-4.112720489501953e-06){
     s0+=135.0;
     s1+=1209.0;
    } else {
     s0+=6.0;
     s1+=9602.0;
    }
   } else {
    if(i52<0.00021081429440528154){
     s0+=2.0;
     s1+=117.0;
    } else {
     s0+=55.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i22<1.0077147483825684){
  if(i2<0.07663694024085999){
   if(i19<1.0018205642700195){
    if(i7<1.0410068035125732){
     s0+=58456.0;
     s1+=561.0;
    } else {
     s0+=7170.0;
     s1+=1078.0;
    }
   } else {
    if(i37<0.0003477632999420166){
     s0+=90.0;
     s1+=324.0;
    } else {
     s0+=322.0;
     s1+=14.0;
    }
   }
  } else {
   if(i20<-1.2040138244628906e-05){
    if(i53<1.0001132488250732){
     s0+=415.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   } else {
    if(i60<0.03800150752067566){
     s0+=110.0;
     s1+=1312.0;
    } else {
     s0+=419.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i0<0.0851978063583374){
   if(i5<-4.130015440750867e-05){
    if(i24<1.0831290483474731){
     s0+=84.0;
     s1+=356.0;
    } else {
     s0+=177.0;
     s1+=28.0;
    }
   } else {
    if(i27<1.1025084257125854){
     s0+=649.0;
     s1+=194.0;
    } else {
     s0+=1586.0;
     s1+=1.0;
    }
   }
  } else {
   if(i46<0.0063245296478271484){
    if(i5<-1.4556801033904776e-05){
     s0+=102.0;
     s1+=1396.0;
    } else {
     s0+=102.0;
     s1+=66.0;
    }
   } else {
    if(i2<0.18903732299804688){
     s0+=403.0;
     s1+=64.0;
    } else {
     s0+=120.0;
     s1+=448.0;
    }
   }
  }
 }
}
if(i22<1.0107624530792236){
 if(i6<3.832578659057617e-05){
  if(i1<0.08219277858734131){
   if(i41<0.0003657331981230527){
    if(i21<1.008798360824585){
     s0+=39968.0;
     s1+=52.0;
    } else {
     s0+=25.0;
     s1+=16.0;
    }
   } else {
    if(i29<1.100754976272583){
     s0+=3842.0;
     s1+=1228.0;
    } else {
     s0+=23166.0;
     s1+=526.0;
    }
   }
  } else {
   if(i19<0.9985250234603882){
    if(i5<-4.805061689694412e-05){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=685.0;
     s1+=10.0;
    }
   } else {
    if(i43<0.042882680892944336){
     s0+=28.0;
     s1+=1212.0;
    } else {
     s0+=564.0;
     s1+=570.0;
    }
   }
  }
 } else {
  if(i36<0.0005173275712877512){
   if(i19<1.0012855529785156){
    s0+=290.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i33<0.0001613775675650686){
    if(i72<-5.5772634368622676e-06){
     s1+=7.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i8<1.0040178298950195){
     s0+=137.0;
     s1+=799.0;
    } else {
     s0+=29.0;
     s1+=1999.0;
    }
   }
  }
 }
} else {
 if(i15<9.924173355102539e-05){
  if(i25<0.02792692743241787){
   if(i41<0.0014097369275987148){
    if(i30<0.013444001786410809){
     s0+=208.0;
     s1+=112.0;
    } else {
     s0+=7.0;
     s1+=173.0;
    }
   } else {
    if(i10<1.0140920877456665){
     s0+=1113.0;
     s1+=92.0;
    } else {
     s0+=242.0;
     s1+=193.0;
    }
   }
  } else {
   if(i72<9.280192898586392e-07){
    if(i0<0.10977885127067566){
     s0+=130.0;
     s1+=141.0;
    } else {
     s0+=95.0;
     s1+=1458.0;
    }
   } else {
    s0+=96.0;
   }
  }
 } else {
  if(i4<0.0009334683418273926){
   if(i1<0.06668129563331604){
    if(i39<0.0012683083768934011){
     s1+=40.0;
    } else {
     s0+=137.0;
    }
   } else {
    if(i5<-4.3320978875271976e-05){
     s0+=3.0;
     s1+=1097.0;
    } else {
     s0+=69.0;
     s1+=115.0;
    }
   }
  } else {
   s1+=7507.0;
  }
 }
}
if(i5<-8.144946332322434e-05){
 if(i8<0.9967234134674072){
  if(i3<0.0850355327129364){
   if(i59<0.019923970103263855){
    s0+=453.0;
   } else {
    if(i3<0.022281736135482788){
     s0+=11.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   s1+=47.0;
  }
 } else {
  if(i3<0.016550660133361816){
   if(i26<0.9682050943374634){
    if(i58<0.005463349167257547){
     s0+=147.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=28.0;
    }
   } else {
    if(i0<0.031889915466308594){
     s0+=20.0;
     s1+=28.0;
    } else {
     s1+=66.0;
    }
   }
  } else {
   if(i27<1.3005231618881226){
    if(i68<1.0046979188919067){
     s0+=133.0;
     s1+=3928.0;
    } else {
     s0+=59.0;
     s1+=33.0;
    }
   } else {
    if(i2<0.04543575644493103){
     s0+=8.0;
     s1+=30.0;
    } else {
     s1+=6742.0;
    }
   }
  }
 }
} else {
 if(i67<1.0110745429992676){
  if(i10<1.0080137252807617){
   if(i6<4.3332576751708984e-05){
    if(i0<0.081397145986557){
     s0+=66056.0;
     s1+=1664.0;
    } else {
     s0+=418.0;
     s1+=889.0;
    }
   } else {
    if(i42<-1.2938857253175229e-05){
     s0+=44.0;
     s1+=378.0;
    } else {
     s0+=48.0;
     s1+=11.0;
    }
   }
  } else {
   if(i1<0.0567476749420166){
    if(i39<0.0012036646949127316){
     s0+=71.0;
     s1+=152.0;
    } else {
     s0+=258.0;
     s1+=19.0;
    }
   } else {
    if(i8<0.9965611696243286){
     s0+=20.0;
    } else {
     s0+=48.0;
     s1+=708.0;
    }
   }
  }
 } else {
  if(i5<-2.7687907277140766e-05){
   if(i35<0.0020378658082336187){
    if(i29<1.2660750150680542){
     s1+=1107.0;
    } else {
     s0+=70.0;
     s1+=13.0;
    }
   } else {
    if(i53<0.9998993873596191){
     s0+=116.0;
     s1+=438.0;
    } else {
     s0+=673.0;
     s1+=352.0;
    }
   }
  } else {
   if(i6<3.4928321838378906e-05){
    if(i30<0.013525554910302162){
     s0+=1299.0;
     s1+=51.0;
    } else {
     s0+=1226.0;
     s1+=315.0;
    }
   } else {
    if(i13<0.00058746337890625){
     s0+=2.0;
    } else {
     s1+=46.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i7<1.0452277660369873){
  if(i0<0.08382725715637207){
   if(i49<-0.006163239479064941){
    if(i2<0.029666006565093994){
     s0+=1739.0;
     s1+=125.0;
    } else {
     s0+=198.0;
     s1+=179.0;
    }
   } else {
    if(i66<0.0006823251023888588){
     s0+=55374.0;
     s1+=238.0;
    } else {
     s0+=4647.0;
     s1+=295.0;
    }
   }
  } else {
   if(i13<-0.00041285157203674316){
    s0+=97.0;
   } else {
    if(i61<0.0007509574061259627){
     s0+=19.0;
     s1+=143.0;
    } else {
     s0+=72.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i5<-4.381894177640788e-05){
   if(i22<1.0137145519256592){
    if(i30<0.03598857298493385){
     s0+=770.0;
     s1+=569.0;
    } else {
     s0+=52.0;
     s1+=441.0;
    }
   } else {
    if(i36<0.011345511302351952){
     s0+=54.0;
     s1+=1130.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i52<1.1363645171513781e-05){
     s0+=1209.0;
     s1+=221.0;
    } else {
     s0+=690.0;
     s1+=1038.0;
    }
   } else {
    if(i0<0.10565948486328125){
     s0+=4947.0;
     s1+=226.0;
    } else {
     s0+=642.0;
     s1+=752.0;
    }
   }
  }
 }
} else {
 if(i36<0.0005238373996689916){
  if(i26<1.0075417757034302){
   s0+=184.0;
  } else {
   s1+=16.0;
  }
 } else {
  if(i1<0.05764281749725342){
   if(i70<0.9959410429000854){
    if(i65<-0.010374411940574646){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=317.0;
    }
   } else {
    if(i36<0.0015348000451922417){
     s0+=5.0;
     s1+=44.0;
    } else {
     s0+=155.0;
     s1+=13.0;
    }
   }
  } else {
   if(i8<1.0040178298950195){
    if(i38<0.01165226474404335){
     s0+=170.0;
     s1+=941.0;
    } else {
     s0+=2.0;
     s1+=685.0;
    }
   } else {
    if(i34<1.0012407302856445){
     s0+=18.0;
     s1+=3401.0;
    } else {
     s0+=1.0;
     s1+=6284.0;
    }
   }
  }
 }
}
if(i8<1.0023627281188965){
 if(i10<1.0081918239593506){
  if(i30<0.055581338703632355){
   if(i7<1.0450963973999023){
    if(i33<0.0002980235149152577){
     s0+=54074.0;
     s1+=360.0;
    } else {
     s0+=7883.0;
     s1+=669.0;
    }
   } else {
    if(i1<0.07228055596351624){
     s0+=5884.0;
     s1+=762.0;
    } else {
     s0+=1576.0;
     s1+=1561.0;
    }
   }
  } else {
   if(i8<0.9950259327888489){
    if(i35<0.011561652645468712){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=322.0;
    }
   } else {
    if(i69<0.030604898929595947){
     s1+=495.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i2<0.0788634717464447){
   if(i38<0.0008783655939623713){
    if(i29<1.2392117977142334){
     s0+=13.0;
     s1+=184.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i25<0.03921767324209213){
     s0+=690.0;
     s1+=28.0;
    } else {
     s0+=13.0;
     s1+=19.0;
    }
   }
  } else {
   if(i72<9.340350288766786e-07){
    if(i53<0.9998657703399658){
     s0+=27.0;
     s1+=1066.0;
    } else {
     s0+=286.0;
     s1+=541.0;
    }
   } else {
    s0+=70.0;
   }
  }
 }
} else {
 if(i42<-1.0872935490624513e-05){
  if(i2<0.05852234363555908){
   if(i42<-1.4602788724005222e-05){
    if(i15<1.1444091796875e-05){
     s0+=80.0;
     s1+=140.0;
    } else {
     s0+=2.0;
     s1+=457.0;
    }
   } else {
    if(i30<0.009130517020821571){
     s0+=84.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i0<0.1316651701927185){
    if(i67<1.0418365001678467){
     s0+=85.0;
     s1+=1618.0;
    } else {
     s0+=45.0;
     s1+=10.0;
    }
   } else {
    if(i2<0.16847559809684753){
     s0+=13.0;
     s1+=971.0;
    } else {
     s1+=7909.0;
    }
   }
  }
 } else {
  if(i0<0.08434197306632996){
   if(i65<0.002040557097643614){
    s0+=151.0;
   } else {
    if(i17<0.002091681119054556){
     s0+=12.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i33<0.0022671441547572613){
    s1+=55.0;
   } else {
    if(i54<0.003705441951751709){
     s1+=9.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i7<1.0452215671539307){
  if(i69<0.0020282422192394733){
   if(i33<0.00030389230232685804){
    if(i18<1.008404016494751){
     s0+=54059.0;
     s1+=278.0;
    } else {
     s0+=52.0;
     s1+=22.0;
    }
   } else {
    if(i2<0.0813504159450531){
     s0+=5421.0;
     s1+=245.0;
    } else {
     s0+=62.0;
     s1+=119.0;
    }
   }
  } else {
   if(i41<0.0020324266515672207){
    if(i5<1.0256172572553623e-05){
     s0+=274.0;
     s1+=286.0;
    } else {
     s0+=587.0;
     s1+=30.0;
    }
   } else {
    if(i12<1.0113554000854492){
     s0+=1717.0;
     s1+=38.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i17<0.004297154489904642){
   if(i29<1.255998969078064){
    if(i3<0.05535510182380676){
     s0+=2848.0;
     s1+=749.0;
    } else {
     s0+=888.0;
     s1+=998.0;
    }
   } else {
    if(i36<0.004989529959857464){
     s0+=2998.0;
     s1+=45.0;
    } else {
     s0+=376.0;
     s1+=145.0;
    }
   }
  } else {
   if(i0<0.07236531376838684){
    if(i39<0.0028587905690073967){
     s0+=50.0;
     s1+=247.0;
    } else {
     s0+=937.0;
     s1+=136.0;
    }
   } else {
    if(i12<0.994774580001831){
     s0+=128.0;
     s1+=91.0;
    } else {
     s0+=231.0;
     s1+=2048.0;
    }
   }
  }
 }
} else {
 if(i5<-4.608348899637349e-05){
  if(i0<0.039462268352508545){
   if(i54<-0.0020771324634552){
    if(i49<-0.0011473298072814941){
     s0+=14.0;
     s1+=150.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i55<0.10371408611536026){
     s0+=10.0;
     s1+=18.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i11<1.0009592771530151){
    if(i17<0.008375560864806175){
     s0+=104.0;
     s1+=296.0;
    } else {
     s0+=17.0;
     s1+=971.0;
    }
   } else {
    if(i8<1.0044281482696533){
     s0+=28.0;
     s1+=1193.0;
    } else {
     s0+=4.0;
     s1+=8652.0;
    }
   }
  }
 } else {
  if(i30<0.008858310990035534){
   if(i44<0.054617151618003845){
    if(i5<-4.3521460611373186e-05){
     s1+=6.0;
    } else {
     s0+=274.0;
     s1+=3.0;
    }
   } else {
    if(i30<0.005030063912272453){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i17<0.004408488515764475){
    if(i53<0.9999362230300903){
     s1+=34.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i68<0.9983142614364624){
     s0+=2.0;
    } else {
     s1+=255.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i1<0.08401688933372498){
  if(i59<0.007551596965640783){
   if(i33<0.0002956066164188087){
    if(i12<1.0037115812301636){
     s0+=55456.0;
     s1+=494.0;
    } else {
     s0+=38.0;
     s1+=70.0;
    }
   } else {
    if(i4<0.00043657422065734863){
     s0+=9447.0;
     s1+=679.0;
    } else {
     s0+=105.0;
     s1+=143.0;
    }
   }
  } else {
   if(i13<0.0004648566246032715){
    if(i8<0.9969321489334106){
     s0+=1449.0;
     s1+=58.0;
    } else {
     s0+=1382.0;
     s1+=521.0;
    }
   } else {
    if(i68<1.002887487411499){
     s0+=69.0;
     s1+=392.0;
    } else {
     s0+=88.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i6<-4.869699478149414e-05){
   if(i61<0.0016405937494710088){
    if(i19<0.9977787733078003){
     s0+=533.0;
    } else {
     s0+=127.0;
     s1+=54.0;
    }
   } else {
    if(i5<3.8786129152867943e-07){
     s0+=2.0;
     s1+=101.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i36<0.0004476824833545834){
    if(i19<1.0005359649658203){
     s0+=174.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i43<0.04555344581604004){
     s0+=46.0;
     s1+=2239.0;
    } else {
     s0+=681.0;
     s1+=1299.0;
    }
   }
  }
 }
} else {
 if(i17<0.003327295184135437){
  if(i29<1.1039612293243408){
   if(i11<0.9997731447219849){
    s0+=21.0;
   } else {
    if(i57<0.006412923336029053){
     s0+=22.0;
     s1+=631.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i3<0.10701256990432739){
    if(i41<0.0015105734346434474){
     s0+=8.0;
     s1+=70.0;
    } else {
     s0+=959.0;
     s1+=67.0;
    }
   } else {
    if(i23<1.1283799409866333){
     s0+=23.0;
     s1+=250.0;
    } else {
     s0+=120.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i13<-0.00025081634521484375){
   if(i73<4.5827320718672127e-05){
    s1+=1.0;
   } else {
    if(i51<0.0005414150655269623){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=116.0;
    }
   }
  } else {
   if(i14<0.9991114139556885){
    if(i17<0.004570985212922096){
     s0+=30.0;
     s1+=91.0;
    } else {
     s0+=15.0;
     s1+=899.0;
    }
   } else {
    if(i17<0.006494693458080292){
     s0+=19.0;
     s1+=1537.0;
    } else {
     s1+=7583.0;
    }
   }
  }
 }
}
if(i1<0.08514660596847534){
 if(i19<1.0018501281738281){
  if(i51<0.00031054680584929883){
   if(i5<-3.8427868275903165e-05){
    if(i4<0.00017556548118591309){
     s0+=581.0;
     s1+=13.0;
    } else {
     s0+=57.0;
     s1+=196.0;
    }
   } else {
    if(i47<-0.0027903318405151367){
     s0+=4.0;
     s1+=31.0;
    } else {
     s0+=52891.0;
     s1+=176.0;
    }
   }
  } else {
   if(i27<1.1034480333328247){
    if(i5<-1.429467010893859e-05){
     s0+=375.0;
     s1+=780.0;
    } else {
     s0+=4104.0;
     s1+=632.0;
    }
   } else {
    if(i48<-0.026243507862091064){
     s0+=1456.0;
     s1+=253.0;
    } else {
     s0+=8844.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i15<-0.00012570619583129883){
   if(i69<0.004420583602041006){
    if(i58<0.0032790356781333685){
     s0+=198.0;
     s1+=54.0;
    } else {
     s0+=347.0;
    }
   } else {
    if(i1<0.017029166221618652){
     s0+=98.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=155.0;
    }
   }
  } else {
   if(i29<1.613681674003601){
    if(i51<0.00020044999837409705){
     s0+=30.0;
    } else {
     s0+=23.0;
     s1+=696.0;
    }
   } else {
    if(i25<0.051246486604213715){
     s0+=38.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i8<0.9962878227233887){
  if(i61<0.0016405937494710088){
   if(i17<0.006503769662231207){
    if(i20<-2.0563602447509766e-05){
     s0+=556.0;
     s1+=1.0;
    } else {
     s0+=127.0;
     s1+=21.0;
    }
   } else {
    if(i28<0.9521691799163818){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   }
  } else {
   if(i38<0.005265209823846817){
    s0+=9.0;
   } else {
    s1+=100.0;
   }
  }
 } else {
  if(i2<0.12404754757881165){
   if(i23<1.0743008852005005){
    if(i65<-0.019194118678569794){
     s0+=220.0;
     s1+=55.0;
    } else {
     s0+=179.0;
     s1+=2399.0;
    }
   } else {
    if(i46<0.004282355308532715){
     s0+=83.0;
     s1+=221.0;
    } else {
     s0+=406.0;
     s1+=24.0;
    }
   }
  } else {
   if(i61<0.00019862627959810197){
    if(i67<1.0727684497833252){
     s0+=95.0;
     s1+=436.0;
    } else {
     s0+=120.0;
     s1+=20.0;
    }
   } else {
    if(i58<0.0010448191314935684){
     s0+=78.0;
     s1+=1005.0;
    } else {
     s0+=43.0;
     s1+=9790.0;
    }
   }
  }
 }
}
if(i0<0.08355346322059631){
 if(i4<0.0006022751331329346){
  if(i51<0.0002816389314830303){
   if(i24<1.0451585054397583){
    if(i41<0.00035957933869212866){
     s0+=36268.0;
     s1+=2.0;
    } else {
     s0+=11068.0;
     s1+=50.0;
    }
   } else {
    if(i66<0.0014940185938030481){
     s0+=5112.0;
     s1+=191.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i31<1.0991880893707275){
    if(i24<1.0450632572174072){
     s0+=2592.0;
     s1+=130.0;
    } else {
     s0+=1708.0;
     s1+=1181.0;
    }
   } else {
    if(i59<0.007482171058654785){
     s0+=10349.0;
     s1+=175.0;
    } else {
     s0+=2210.0;
     s1+=331.0;
    }
   }
  }
 } else {
  if(i5<-4.331633317633532e-05){
   if(i59<0.002543932758271694){
    if(i38<0.0012936193961650133){
     s1+=68.0;
    } else {
     s0+=67.0;
     s1+=9.0;
    }
   } else {
    if(i49<0.006009042263031006){
     s0+=63.0;
     s1+=818.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  } else {
   if(i13<0.0007488131523132324){
    if(i71<1.0026335716247559){
     s0+=182.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i53<0.997604250907898){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985139966011047){
  if(i36<0.006805916782468557){
   if(i13<-0.00041115283966064453){
    s0+=380.0;
   } else {
    if(i60<0.04474842548370361){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=46.0;
    }
   }
  } else {
   if(i56<0.0006515444256365299){
    s0+=8.0;
   } else {
    if(i1<0.1005815863609314){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i39<0.006297338753938675){
   if(i43<0.054121196269989014){
    if(i2<0.09586703777313232){
     s0+=139.0;
     s1+=1038.0;
    } else {
     s0+=14.0;
     s1+=2495.0;
    }
   } else {
    if(i8<1.00209641456604){
     s0+=813.0;
     s1+=537.0;
    } else {
     s0+=63.0;
     s1+=434.0;
    }
   }
  } else {
   if(i2<0.11165010929107666){
    if(i5<-0.00011677329894155264){
     s0+=2.0;
     s1+=138.0;
    } else {
     s0+=78.0;
     s1+=97.0;
    }
   } else {
    if(i32<1.274404764175415){
     s0+=5.0;
     s1+=10.0;
    } else {
     s0+=37.0;
     s1+=9197.0;
    }
   }
  }
 }
}
if(i8<1.0024137496948242){
 if(i0<0.08270969986915588){
  if(i69<0.0016967302653938532){
   if(i0<0.06659066677093506){
    if(i8<1.000807523727417){
     s0+=58298.0;
     s1+=439.0;
    } else {
     s0+=2815.0;
     s1+=200.0;
    }
   } else {
    if(i45<0.04294523596763611){
     s0+=56.0;
     s1+=289.0;
    } else {
     s0+=2296.0;
     s1+=196.0;
    }
   }
  } else {
   if(i41<0.002169713843613863){
    if(i36<0.0004225673619657755){
     s0+=1298.0;
     s1+=31.0;
    } else {
     s0+=503.0;
     s1+=660.0;
    }
   } else {
    if(i54<-0.0015971064567565918){
     s0+=1143.0;
     s1+=264.0;
    } else {
     s0+=2985.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i42<3.899492185155395e-06){
   if(i54<0.003540337085723877){
    if(i31<1.0670123100280762){
     s0+=107.0;
     s1+=13.0;
    } else {
     s0+=243.0;
     s1+=2305.0;
    }
   } else {
    if(i41<0.008415762335062027){
     s0+=904.0;
     s1+=629.0;
    } else {
     s0+=70.0;
     s1+=687.0;
    }
   }
  } else {
   if(i45<0.056609511375427246){
    s1+=3.0;
   } else {
    if(i71<0.9997134208679199){
     s0+=283.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i42<-1.0144309271709062e-05){
  if(i1<0.0602172315120697){
   if(i41<0.0009324538987129927){
    if(i42<-1.1866861314047128e-05){
     s1+=193.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.00018014379020314664){
     s0+=107.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=196.0;
    }
   }
  } else {
   if(i8<1.004055142402649){
    if(i63<-5.731973942602053e-06){
     s0+=33.0;
     s1+=59.0;
    } else {
     s0+=107.0;
     s1+=1202.0;
    }
   } else {
    if(i12<0.9974225163459778){
     s0+=6.0;
     s1+=134.0;
    } else {
     s0+=20.0;
     s1+=9213.0;
    }
   }
  }
 } else {
  if(i19<1.0008912086486816){
   s1+=38.0;
  } else {
   if(i68<1.0012555122375488){
    s0+=80.0;
   } else {
    if(i13<0.0004833340644836426){
     s0+=10.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i7<1.052894115447998){
 if(i66<0.000708488398231566){
  if(i2<0.07771533727645874){
   if(i10<1.0081892013549805){
    if(i24<1.048384666442871){
     s0+=52756.0;
     s1+=110.0;
    } else {
     s0+=4805.0;
     s1+=345.0;
    }
   } else {
    if(i52<-3.965358246205142e-06){
     s0+=57.0;
     s1+=11.0;
    } else {
     s0+=44.0;
     s1+=129.0;
    }
   }
  } else {
   if(i5<-9.17022225621622e-06){
    if(i4<-0.00020122528076171875){
     s0+=75.0;
     s1+=37.0;
    } else {
     s0+=25.0;
     s1+=361.0;
    }
   } else {
    if(i6<1.2814998626708984e-06){
     s0+=155.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i36<0.001459044753573835){
   if(i29<1.0840110778808594){
    s0+=1539.0;
   } else {
    if(i41<0.0014767954126000404){
     s0+=241.0;
     s1+=687.0;
    } else {
     s0+=542.0;
     s1+=95.0;
    }
   }
  } else {
   if(i0<0.08107763528823853){
    if(i8<1.0030241012573242){
     s0+=3997.0;
     s1+=79.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i42<-1.0834948625415564e-05){
     s0+=7.0;
     s1+=159.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i8<1.0018079280853271){
  if(i5<-2.7892998332390562e-05){
   if(i13<-0.00034803152084350586){
    if(i1<0.14431557059288025){
     s0+=249.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i68<1.0014276504516602){
     s0+=580.0;
     s1+=2048.0;
    } else {
     s0+=599.0;
     s1+=418.0;
    }
   }
  } else {
   if(i1<0.0753585696220398){
    if(i32<1.094580888748169){
     s0+=781.0;
     s1+=239.0;
    } else {
     s0+=2890.0;
     s1+=104.0;
    }
   } else {
    if(i46<0.004652678966522217){
     s0+=469.0;
     s1+=621.0;
    } else {
     s0+=819.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i1<0.06828692555427551){
   if(i61<0.00046514568384736776){
    if(i34<1.00123929977417){
     s0+=214.0;
     s1+=33.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i48<0.004606693983078003){
     s0+=17.0;
     s1+=392.0;
    } else {
     s0+=61.0;
     s1+=8.0;
    }
   }
  } else {
   if(i32<1.4013257026672363){
    if(i8<1.0040184259414673){
     s0+=178.0;
     s1+=1070.0;
    } else {
     s1+=2449.0;
    }
   } else {
    if(i1<0.12899383902549744){
     s0+=42.0;
     s1+=303.0;
    } else {
     s0+=8.0;
     s1+=7144.0;
    }
   }
  }
 }
}
if(i2<0.07772430777549744){
 if(i20<1.9252300262451172e-05){
  if(i7<1.042891263961792){
   if(i0<0.08381965756416321){
    if(i69<0.0017684802878648043){
     s0+=57363.0;
     s1+=331.0;
    } else {
     s0+=2894.0;
     s1+=309.0;
    }
   } else {
    if(i17<0.0022724096197634935){
     s0+=7.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i17<0.004097611643373966){
    if(i5<-3.966536314692348e-05){
     s0+=254.0;
     s1+=187.0;
    } else {
     s0+=6488.0;
     s1+=596.0;
    }
   } else {
    if(i32<1.1539194583892822){
     s0+=28.0;
     s1+=456.0;
    } else {
     s0+=950.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i13<0.0008949041366577148){
   if(i46<-0.0011082887649536133){
    if(i52<0.00016095282626338303){
     s0+=41.0;
     s1+=269.0;
    } else {
     s0+=117.0;
     s1+=35.0;
    }
   } else {
    if(i0<0.07975137233734131){
     s0+=896.0;
     s1+=155.0;
    } else {
     s0+=12.0;
     s1+=66.0;
    }
   }
  } else {
   if(i16<-0.00240248441696167){
    if(i29<1.561058521270752){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=140.0;
     s1+=14.0;
    }
   } else {
    if(i11<0.999411404132843){
     s0+=53.0;
     s1+=156.0;
    } else {
     s0+=13.0;
     s1+=449.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985244870185852){
  if(i12<1.0035474300384521){
   if(i72<-3.0469529974652687e-06){
    if(i66<0.0003774355282075703){
     s0+=32.0;
    } else {
     s0+=15.0;
     s1+=16.0;
    }
   } else {
    s0+=490.0;
   }
  } else {
   s1+=4.0;
  }
 } else {
  if(i5<-1.3541885891754646e-05){
   if(i8<1.0019538402557373){
    if(i46<0.004556179046630859){
     s0+=85.0;
     s1+=2004.0;
    } else {
     s0+=470.0;
     s1+=914.0;
    }
   } else {
    if(i3<0.1294594705104828){
     s0+=123.0;
     s1+=2963.0;
    } else {
     s0+=19.0;
     s1+=7643.0;
    }
   }
  } else {
   if(i23<1.0382661819458008){
    if(i63<2.1877929611946456e-05){
     s0+=11.0;
     s1+=173.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i40<0.048918962478637695){
     s0+=4.0;
     s1+=79.0;
    } else {
     s0+=593.0;
     s1+=124.0;
    }
   }
  }
 }
}
if(i5<-8.167904161382467e-05){
 if(i14<0.994808554649353){
  if(i2<0.08288678526878357){
   if(i69<0.013721847906708717){
    if(i7<1.0795623064041138){
     s0+=468.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   } else {
    if(i11<0.9683388471603394){
     s0+=72.0;
     s1+=10.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i17<0.0050360290333628654){
    s0+=21.0;
   } else {
    if(i41<0.0032567190937697887){
     s0+=3.0;
    } else {
     s0+=9.0;
     s1+=417.0;
    }
   }
  }
 } else {
  if(i11<0.9807451963424683){
   if(i73<0.00023482058895751834){
    if(i0<0.062334686517715454){
     s0+=107.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i2<0.0033735334873199463){
     s0+=1.0;
    } else {
     s1+=79.0;
    }
   }
  } else {
   if(i35<0.0004256114480085671){
    s0+=24.0;
   } else {
    if(i11<0.9968811273574829){
     s0+=89.0;
     s1+=645.0;
    } else {
     s0+=33.0;
     s1+=9507.0;
    }
   }
  }
 }
} else {
 if(i1<0.0822538435459137){
  if(i6<3.936886787414551e-05){
   if(i7<1.040665864944458){
    if(i29<1.0856719017028809){
     s0+=35832.0;
    } else {
     s0+=22666.0;
     s1+=549.0;
    }
   } else {
    if(i25<0.016922589391469955){
     s0+=7150.0;
     s1+=516.0;
    } else {
     s0+=2369.0;
     s1+=941.0;
    }
   }
  } else {
   if(i47<0.0018540024757385254){
    if(i5<-4.082090890733525e-05){
     s0+=24.0;
     s1+=397.0;
    } else {
     s0+=137.0;
     s1+=65.0;
    }
   } else {
    if(i27<1.116154432296753){
     s1+=4.0;
    } else {
     s0+=102.0;
    }
   }
  }
 } else {
  if(i5<-1.3797138308291323e-05){
   if(i19<0.9981886744499207){
    if(i10<0.987643837928772){
     s0+=5.0;
     s1+=10.0;
    } else {
     s0+=88.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.0048798322677612305){
     s0+=161.0;
     s1+=2655.0;
    } else {
     s0+=467.0;
     s1+=765.0;
    }
   }
  } else {
   if(i40<0.05081290006637573){
    if(i6<-5.53131103515625e-05){
     s0+=250.0;
     s1+=5.0;
    } else {
     s0+=45.0;
     s1+=247.0;
    }
   } else {
    if(i4<0.0005422830581665039){
     s0+=1070.0;
     s1+=148.0;
    } else {
     s1+=34.0;
    }
   }
  }
 }
}
if(i7<1.057713270187378){
 if(i0<0.07892909646034241){
  if(i31<1.067622423171997){
   if(i51<0.00024621799821034074){
    if(i9<1.043684482574463){
     s0+=34850.0;
    } else {
     s0+=205.0;
     s1+=8.0;
    }
   } else {
    if(i26<1.0025858879089355){
     s0+=4182.0;
     s1+=18.0;
    } else {
     s0+=118.0;
     s1+=8.0;
    }
   }
  } else {
   if(i7<1.0398929119110107){
    if(i31<1.0983617305755615){
     s0+=3886.0;
     s1+=429.0;
    } else {
     s0+=17448.0;
     s1+=121.0;
    }
   } else {
    if(i66<0.0007813256816007197){
     s0+=3159.0;
     s1+=451.0;
    } else {
     s0+=631.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i19<0.9991747140884399){
   if(i56<0.0003185464011039585){
    if(i21<1.0096757411956787){
     s0+=197.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i24<1.0543620586395264){
     s0+=64.0;
     s1+=15.0;
    } else {
     s0+=10.0;
     s1+=62.0;
    }
   }
  } else {
   if(i27<1.0596027374267578){
    s0+=49.0;
   } else {
    if(i64<-0.00473274290561676){
     s0+=76.0;
     s1+=45.0;
    } else {
     s0+=70.0;
     s1+=1022.0;
    }
   }
  }
 }
} else {
 if(i4<0.00047722458839416504){
  if(i8<0.9966020584106445){
   if(i61<0.0016536929178982973){
    if(i5<-6.566569936694577e-05){
     s0+=29.0;
     s1+=19.0;
    } else {
     s0+=1562.0;
     s1+=48.0;
    }
   } else {
    if(i35<0.0061151739209890366){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=96.0;
    }
   }
  } else {
   if(i41<0.008102597668766975){
    if(i25<0.028935063630342484){
     s0+=3594.0;
     s1+=1128.0;
    } else {
     s0+=324.0;
     s1+=1086.0;
    }
   } else {
    if(i0<0.1049584150314331){
     s0+=261.0;
     s1+=88.0;
    } else {
     s0+=43.0;
     s1+=917.0;
    }
   }
  }
 } else {
  if(i4<0.0009791254997253418){
   if(i41<0.011928479187190533){
    if(i16<-0.0006311535835266113){
     s0+=153.0;
     s1+=236.0;
    } else {
     s0+=154.0;
     s1+=913.0;
    }
   } else {
    if(i38<0.012307420372962952){
     s0+=2.0;
     s1+=71.0;
    } else {
     s1+=456.0;
    }
   }
  } else {
   if(i7<1.1223218441009521){
    if(i7<1.1221282482147217){
     s0+=66.0;
     s1+=2916.0;
    } else {
     s0+=32.0;
    }
   } else {
    s1+=6505.0;
   }
  }
 }
}
if(i1<0.08548527956008911){
 if(i7<1.0451585054397583){
  if(i57<-0.0021077096462249756){
   if(i41<0.0016189091838896275){
    if(i32<1.0703742504119873){
     s0+=1005.0;
    } else {
     s0+=403.0;
     s1+=531.0;
    }
   } else {
    if(i3<0.068930983543396){
     s0+=2884.0;
     s1+=40.0;
    } else {
     s0+=21.0;
     s1+=13.0;
    }
   }
  } else {
   if(i12<1.0031108856201172){
    if(i44<0.026614513248205185){
     s0+=52688.0;
     s1+=146.0;
    } else {
     s0+=4548.0;
     s1+=183.0;
    }
   } else {
    if(i14<0.9999101161956787){
     s0+=195.0;
     s1+=1.0;
    } else {
     s0+=61.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i25<0.019332561641931534){
   if(i8<1.0024693012237549){
    if(i31<1.103413462638855){
     s0+=1809.0;
     s1+=452.0;
    } else {
     s0+=3684.0;
     s1+=123.0;
    }
   } else {
    if(i41<0.002281468128785491){
     s0+=2.0;
     s1+=337.0;
    } else {
     s0+=108.0;
     s1+=59.0;
    }
   }
  } else {
   if(i31<1.1068296432495117){
    if(i67<1.0175395011901855){
     s0+=82.0;
     s1+=667.0;
    } else {
     s0+=49.0;
     s1+=17.0;
    }
   } else {
    if(i8<1.003359079360962){
     s0+=1503.0;
     s1+=369.0;
    } else {
     s0+=52.0;
     s1+=247.0;
    }
   }
  }
 }
} else {
 if(i19<0.9985578060150146){
  if(i72<-3.214928256056737e-06){
   if(i50<-0.00010229688632534817){
    if(i35<0.0012739693047478795){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=26.0;
    }
   } else {
    s0+=17.0;
   }
  } else {
   if(i27<1.5345615148544312){
    if(i19<0.9985276460647583){
     s0+=652.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.24314197897911072){
     s0+=3.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i15<9.870529174804688e-05){
   if(i17<0.0016418937593698502){
    if(i9<1.048703670501709){
     s0+=35.0;
     s1+=79.0;
    } else {
     s0+=459.0;
     s1+=83.0;
    }
   } else {
    if(i44<0.05878852307796478){
     s0+=459.0;
     s1+=1171.0;
    } else {
     s0+=213.0;
     s1+=3110.0;
    }
   }
  } else {
   if(i36<0.0005811878945678473){
    if(i47<0.0034537911415100098){
     s1+=76.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i36<0.0018839244730770588){
     s0+=33.0;
     s1+=1154.0;
    } else {
     s0+=1.0;
     s1+=8285.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i19<1.0018465518951416){
  if(i47<-0.0014067888259887695){
   if(i0<0.0632108747959137){
    if(i26<0.9703897833824158){
     s0+=2549.0;
     s1+=28.0;
    } else {
     s0+=1896.0;
     s1+=534.0;
    }
   } else {
    if(i5<-1.85564431376406e-07){
     s0+=66.0;
     s1+=323.0;
    } else {
     s0+=80.0;
     s1+=37.0;
    }
   }
  } else {
   if(i21<1.0078833103179932){
    if(i44<0.032623857259750366){
     s0+=56304.0;
     s1+=331.0;
    } else {
     s0+=3435.0;
     s1+=529.0;
    }
   } else {
    if(i27<1.083398699760437){
     s0+=33.0;
     s1+=193.0;
    } else {
     s0+=398.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i15<-0.0003654062747955322){
   if(i73<0.00023569419863633811){
    if(i8<1.0022387504577637){
     s0+=297.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i21<0.9307315349578857){
     s1+=27.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i20<2.568960189819336e-05){
    if(i34<1.0014979839324951){
     s0+=34.0;
     s1+=128.0;
    } else {
     s0+=48.0;
     s1+=2.0;
    }
   } else {
    if(i0<0.059391289949417114){
     s0+=25.0;
     s1+=134.0;
    } else {
     s0+=5.0;
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i15<9.685754776000977e-05){
  if(i3<0.10589194297790527){
   if(i17<0.0041693211533129215){
    if(i0<0.10637229681015015){
     s0+=3916.0;
     s1+=478.0;
    } else {
     s0+=89.0;
     s1+=197.0;
    }
   } else {
    if(i35<0.002514477353543043){
     s0+=30.0;
     s1+=622.0;
    } else {
     s0+=903.0;
     s1+=625.0;
    }
   }
  } else {
   if(i19<0.9988448619842529){
    if(i31<1.4755783081054688){
     s0+=232.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i58<0.0007357369759120047){
     s0+=277.0;
     s1+=136.0;
    } else {
     s0+=197.0;
     s1+=2496.0;
    }
   }
  }
 } else {
  if(i5<-4.276272375136614e-05){
   if(i34<0.9992682933807373){
    if(i2<0.21444037556648254){
     s0+=58.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i13<-0.00030112266540527344){
     s0+=17.0;
    } else {
     s0+=20.0;
     s1+=9592.0;
    }
   }
  } else {
   if(i35<0.001285123871639371){
    if(i26<1.0028367042541504){
     s0+=4.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i35<0.0050050863064825535){
     s0+=185.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i6<3.510713577270508e-05){
 if(i1<0.08346298336982727){
  if(i44<0.02574055641889572){
   if(i22<1.0116007328033447){
    if(i57<-0.002698928117752075){
     s0+=654.0;
     s1+=277.0;
    } else {
     s0+=55662.0;
     s1+=358.0;
    }
   } else {
    if(i51<0.000484026619233191){
     s0+=27.0;
     s1+=119.0;
    } else {
     s0+=241.0;
     s1+=31.0;
    }
   }
  } else {
   if(i27<1.156893253326416){
    if(i5<-9.15024611458648e-06){
     s0+=853.0;
     s1+=801.0;
    } else {
     s0+=3242.0;
     s1+=372.0;
    }
   } else {
    if(i65<0.006435428746044636){
     s0+=7320.0;
     s1+=145.0;
    } else {
     s0+=145.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i8<0.9964188933372498){
   if(i63<4.4552740291692317e-05){
    if(i17<0.007512247655540705){
     s0+=655.0;
     s1+=29.0;
    } else {
     s0+=11.0;
     s1+=24.0;
    }
   } else {
    if(i0<0.10054576396942139){
     s0+=54.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=56.0;
    }
   }
  } else {
   if(i48<0.038206905126571655){
    if(i40<0.05781048536300659){
     s0+=58.0;
     s1+=1632.0;
    } else {
     s0+=198.0;
     s1+=351.0;
    }
   } else {
    if(i73<0.00011309943511150777){
     s0+=781.0;
     s1+=696.0;
    } else {
     s0+=119.0;
     s1+=626.0;
    }
   }
  }
 }
} else {
 if(i35<0.0003810698399320245){
  s0+=404.0;
 } else {
  if(i16<0.0014304518699645996){
   if(i17<0.0034757829271256924){
    if(i57<0.002822190523147583){
     s0+=91.0;
     s1+=115.0;
    } else {
     s0+=157.0;
     s1+=24.0;
    }
   } else {
    if(i12<0.9978667497634888){
     s0+=49.0;
     s1+=44.0;
    } else {
     s0+=190.0;
     s1+=3221.0;
    }
   }
  } else {
   if(i33<0.00016985050751827657){
    if(i10<1.007890224456787){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=8349.0;
   }
  }
 }
}
if(i0<0.08203768730163574){
 if(i14<1.0053694248199463){
  if(i0<0.06630954146385193){
   if(i7<1.0410068035125732){
    if(i49<-0.005474269390106201){
     s0+=1921.0;
     s1+=220.0;
    } else {
     s0+=55849.0;
     s1+=265.0;
    }
   } else {
    if(i25<0.022727075964212418){
     s0+=7531.0;
     s1+=546.0;
    } else {
     s0+=1300.0;
     s1+=608.0;
    }
   }
  } else {
   if(i60<0.020992040634155273){
    if(i29<1.1039612293243408){
     s0+=58.0;
     s1+=385.0;
    } else {
     s0+=381.0;
     s1+=192.0;
    }
   } else {
    if(i23<1.0089670419692993){
     s0+=18.0;
     s1+=43.0;
    } else {
     s0+=2115.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i19<1.0012356042861938){
   if(i48<-0.029421359300613403){
    if(i0<0.02970835566520691){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i17<0.004695532843470573){
     s0+=261.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=14.0;
    }
   }
  } else {
   if(i73<0.0001362563343718648){
    if(i72<-4.832212198380148e-06){
     s1+=565.0;
    } else {
     s0+=12.0;
     s1+=13.0;
    }
   } else {
    if(i37<0.00023245811462402344){
     s0+=30.0;
     s1+=3.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i16<0.0002599954605102539){
  if(i43<0.04649278521537781){
   if(i27<1.0670123100280762){
    if(i31<1.069220781326294){
     s0+=79.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i5<1.551732020743657e-05){
     s0+=61.0;
     s1+=2294.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.13663437962532043){
    if(i27<1.1025084257125854){
     s0+=232.0;
     s1+=165.0;
    } else {
     s0+=699.0;
     s1+=71.0;
    }
   } else {
    if(i39<0.0031196619383990765){
     s0+=318.0;
     s1+=123.0;
    } else {
     s0+=104.0;
     s1+=1028.0;
    }
   }
  }
 } else {
  if(i15<0.00011247396469116211){
   if(i72<-3.943963747587986e-06){
    if(i52<1.1184634786332026e-05){
     s0+=10.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=523.0;
    }
   } else {
    if(i5<-2.1722735255025327e-05){
     s0+=28.0;
     s1+=327.0;
    } else {
     s0+=98.0;
     s1+=21.0;
    }
   }
  } else {
   if(i17<0.0025380640290677547){
    if(i41<0.0037925359793007374){
     s0+=3.0;
     s1+=310.0;
    } else {
     s0+=43.0;
     s1+=63.0;
    }
   } else {
    s1+=9087.0;
   }
  }
 }
}
if(i2<0.08032220602035522){
 if(i7<1.0451608896255493){
  if(i6<3.9577484130859375e-05){
   if(i46<-0.0014933645725250244){
    if(i35<0.0017711082473397255){
     s0+=1080.0;
     s1+=259.0;
    } else {
     s0+=1164.0;
     s1+=25.0;
    }
   } else {
    if(i55<0.020014764741063118){
     s0+=49345.0;
     s1+=137.0;
    } else {
     s0+=10192.0;
     s1+=417.0;
    }
   }
  } else {
   if(i8<1.0016437768936157){
    s0+=264.0;
   } else {
    if(i17<0.002043970860540867){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i27<1.1034480333328247){
   if(i6<3.0338764190673828e-05){
    if(i35<0.0002944233128800988){
     s0+=1009.0;
    } else {
     s0+=1359.0;
     s1+=994.0;
    }
   } else {
    if(i37<-0.00030353665351867676){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=636.0;
    }
   }
  } else {
   if(i5<-6.707158900098875e-05){
    if(i4<0.001317739486694336){
     s0+=323.0;
     s1+=248.0;
    } else {
     s0+=11.0;
     s1+=276.0;
    }
   } else {
    if(i10<0.9941309094429016){
     s0+=771.0;
     s1+=159.0;
    } else {
     s0+=3938.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i5<-1.3546939044317696e-05){
  if(i1<0.12466564774513245){
   if(i46<0.004370927810668945){
    if(i60<0.044346004724502563){
     s0+=57.0;
     s1+=1800.0;
    } else {
     s0+=72.0;
     s1+=66.0;
    }
   } else {
    if(i39<0.0009801564738154411){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=361.0;
     s1+=26.0;
    }
   }
  } else {
   if(i6<0.0008325874805450439){
    if(i58<0.00030156061984598637){
     s0+=57.0;
     s1+=147.0;
    } else {
     s0+=131.0;
     s1+=11237.0;
    }
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i17<0.005988899618387222){
   if(i65<-0.01899651437997818){
    if(i39<0.00387702533043921){
     s0+=611.0;
     s1+=11.0;
    } else {
     s0+=65.0;
     s1+=80.0;
    }
   } else {
    if(i37<-0.00013214349746704102){
     s0+=115.0;
     s1+=1.0;
    } else {
     s0+=181.0;
     s1+=212.0;
    }
   }
  } else {
   if(i25<0.004300006665289402){
    s0+=1.0;
   } else {
    if(i53<1.0002083778381348){
     s1+=72.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i19<1.0016393661499023){
 if(i9<1.0451881885528564){
  if(i51<0.0003057846915908158){
   if(i47<-0.0027875304222106934){
    if(i22<0.9694368839263916){
     s0+=1.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i2<0.09033522009849548){
     s0+=53368.0;
     s1+=256.0;
    } else {
     s0+=20.0;
     s1+=39.0;
    }
   }
  } else {
   if(i8<0.9970575571060181){
    if(i3<0.08107632398605347){
     s0+=7671.0;
     s1+=164.0;
    } else {
     s0+=30.0;
     s1+=43.0;
    }
   } else {
    if(i35<0.0003197522019036114){
     s0+=1626.0;
     s1+=9.0;
    } else {
     s0+=2135.0;
     s1+=1370.0;
    }
   }
  }
 } else {
  if(i17<0.004536224529147148){
   if(i17<0.002717392984777689){
    if(i0<0.0829511284828186){
     s0+=2859.0;
     s1+=286.0;
    } else {
     s0+=790.0;
     s1+=506.0;
    }
   } else {
    if(i32<1.253311276435852){
     s0+=313.0;
     s1+=822.0;
    } else {
     s0+=658.0;
     s1+=118.0;
    }
   }
  } else {
   if(i72<1.1730824098776793e-06){
    if(i53<1.000327706336975){
     s0+=125.0;
     s1+=3099.0;
    } else {
     s0+=77.0;
     s1+=6.0;
    }
   } else {
    if(i30<0.041389673948287964){
     s0+=230.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i28<1.0034160614013672){
  if(i24<1.1266913414001465){
   if(i8<1.0023572444915771){
    if(i31<1.1731500625610352){
     s0+=74.0;
     s1+=84.0;
    } else {
     s0+=720.0;
     s1+=47.0;
    }
   } else {
    if(i30<0.01800490915775299){
     s0+=134.0;
     s1+=182.0;
    } else {
     s0+=6.0;
     s1+=306.0;
    }
   }
  } else {
   if(i2<0.014997810125350952){
    if(i17<0.016971353441476822){
     s0+=86.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i30<0.02448393777012825){
     s0+=58.0;
     s1+=230.0;
    } else {
     s0+=7.0;
     s1+=1400.0;
    }
   }
  }
 } else {
  if(i4<0.0004418492317199707){
   if(i38<0.004354584496468306){
    if(i5<-7.385561184491962e-05){
     s1+=8.0;
    } else {
     s0+=89.0;
    }
   } else {
    s1+=58.0;
   }
  } else {
   if(i51<0.000179713882971555){
    s0+=38.0;
   } else {
    if(i17<0.0009288971778005362){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=35.0;
     s1+=7991.0;
    }
   }
  }
 }
}
if(i15<0.00011461973190307617){
 if(i8<1.0023632049560547){
  if(i24<1.0576403141021729){
   if(i1<0.08222240209579468){
    if(i47<-0.0013793110847473145){
     s0+=1789.0;
     s1+=240.0;
    } else {
     s0+=55989.0;
     s1+=327.0;
    }
   } else {
    if(i4<-0.0006937384605407715){
     s0+=358.0;
     s1+=8.0;
    } else {
     s0+=149.0;
     s1+=171.0;
    }
   }
  } else {
   if(i3<0.07111352682113647){
    if(i32<1.1037919521331787){
     s0+=1451.0;
     s1+=1048.0;
    } else {
     s0+=8801.0;
     s1+=730.0;
    }
   } else {
    if(i35<0.0059617916122078896){
     s0+=1420.0;
     s1+=1319.0;
    } else {
     s0+=149.0;
     s1+=1349.0;
    }
   }
  }
 } else {
  if(i29<1.0763556957244873){
   s0+=44.0;
  } else {
   if(i36<0.009083155542612076){
    if(i0<0.08052337169647217){
     s0+=60.0;
     s1+=311.0;
    } else {
     s0+=10.0;
     s1+=1071.0;
    }
   } else {
    if(i55<0.20032429695129395){
     s0+=93.0;
     s1+=70.0;
    } else {
     s0+=14.0;
     s1+=448.0;
    }
   }
  }
 }
} else {
 if(i7<1.0385410785675049){
  if(i8<1.0041275024414062){
   if(i73<4.1084644180955365e-05){
    s1+=7.0;
   } else {
    if(i13<0.000560462474822998){
     s0+=457.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=23.0;
  }
 } else {
  if(i0<0.06433725357055664){
   if(i72<-4.816477940039476e-06){
    if(i17<0.001163278240710497){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=243.0;
    }
   } else {
    if(i39<0.001139325788244605){
     s0+=43.0;
     s1+=25.0;
    } else {
     s0+=228.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<0.0003006149781867862){
    s0+=4.0;
   } else {
    if(i19<0.9986402988433838){
     s0+=6.0;
    } else {
     s0+=61.0;
     s1+=9708.0;
    }
   }
  }
 }
}
if(i3<0.075318843126297){
 if(i13<0.0007294118404388428){
  if(i38<0.00031034767744131386){
   if(i21<1.0079560279846191){
    if(i19<1.0020420551300049){
     s0+=47224.0;
     s1+=65.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i52<5.087984391138889e-06){
     s0+=32.0;
    } else {
     s0+=2.0;
     s1+=118.0;
    }
   }
  } else {
   if(i16<-0.0013447105884552002){
    if(i48<-0.03705698251724243){
     s0+=674.0;
     s1+=146.0;
    } else {
     s0+=11759.0;
     s1+=187.0;
    }
   } else {
    if(i2<0.07756328582763672){
     s0+=9336.0;
     s1+=1878.0;
    } else {
     s0+=84.0;
     s1+=929.0;
    }
   }
  }
 } else {
  if(i12<1.004326581954956){
   if(i31<1.1773569583892822){
    if(i24<1.0432713031768799){
     s0+=4.0;
    } else {
     s1+=127.0;
    }
   } else {
    if(i46<8.58008861541748e-05){
     s0+=89.0;
     s1+=107.0;
    } else {
     s0+=207.0;
     s1+=10.0;
    }
   }
  } else {
   if(i15<-0.00012689828872680664){
    if(i7<1.1015076637268066){
     s0+=98.0;
     s1+=46.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i44<0.17197683453559875){
     s0+=3.0;
     s1+=1196.0;
    } else {
     s0+=11.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i19<0.998880922794342){
  if(i42<-9.805809895624407e-06){
   if(i72<-6.368651611410314e-06){
    s0+=17.0;
   } else {
    if(i50<-0.00012045867333654314){
     s0+=1.0;
     s1+=46.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i37<-0.00013875961303710938){
    s0+=405.0;
   } else {
    if(i18<0.9839520454406738){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=50.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i58<0.0009612592402845621){
   if(i14<1.0030122995376587){
    if(i52<3.408668999327347e-05){
     s0+=523.0;
     s1+=144.0;
    } else {
     s0+=141.0;
     s1+=394.0;
    }
   } else {
    if(i68<0.9997416734695435){
     s0+=7.0;
     s1+=653.0;
    } else {
     s0+=45.0;
     s1+=33.0;
    }
   }
  } else {
   if(i1<0.11721238493919373){
    if(i64<-0.005190137308090925){
     s0+=296.0;
     s1+=85.0;
    } else {
     s0+=95.0;
     s1+=705.0;
    }
   } else {
    if(i26<1.0143260955810547){
     s0+=113.0;
     s1+=2690.0;
    } else {
     s0+=5.0;
     s1+=7282.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i10<1.0081498622894287){
  if(i25<0.02273833192884922){
   if(i44<0.031748633831739426){
    if(i46<-0.0026377737522125244){
     s0+=480.0;
     s1+=148.0;
    } else {
     s0+=58496.0;
     s1+=544.0;
    }
   } else {
    if(i31<1.179337501525879){
     s0+=1919.0;
     s1+=577.0;
    } else {
     s0+=2573.0;
     s1+=105.0;
    }
   }
  } else {
   if(i28<0.9835776090621948){
    if(i6<-2.5212764739990234e-05){
     s0+=4210.0;
     s1+=180.0;
    } else {
     s0+=535.0;
     s1+=467.0;
    }
   } else {
    if(i2<0.06043234467506409){
     s0+=1030.0;
     s1+=385.0;
    } else {
     s0+=350.0;
     s1+=1227.0;
    }
   }
  }
 } else {
  if(i5<-3.386661410331726e-05){
   if(i53<0.999889075756073){
    if(i12<0.9944486618041992){
     s0+=14.0;
     s1+=26.0;
    } else {
     s0+=1.0;
     s1+=957.0;
    }
   } else {
    if(i25<0.031502559781074524){
     s0+=116.0;
     s1+=139.0;
    } else {
     s0+=2.0;
     s1+=195.0;
    }
   }
  } else {
   if(i68<1.000432014465332){
    if(i42<2.7982732717646286e-06){
     s0+=348.0;
     s1+=340.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i27<1.1120452880859375){
     s0+=15.0;
     s1+=35.0;
    } else {
     s0+=515.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i5<-4.451438508112915e-05){
  if(i15<1.1146068572998047e-05){
   if(i30<0.02138170599937439){
    if(i23<1.0169326066970825){
     s0+=24.0;
     s1+=128.0;
    } else {
     s0+=207.0;
     s1+=107.0;
    }
   } else {
    if(i30<0.025953270494937897){
     s0+=12.0;
     s1+=73.0;
    } else {
     s0+=4.0;
     s1+=993.0;
    }
   }
  } else {
   if(i3<0.0018804371356964111){
    if(i37<0.0001645982265472412){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i56<0.0005608032224699855){
     s1+=7791.0;
    } else {
     s0+=7.0;
     s1+=2129.0;
    }
   }
  }
 } else {
  if(i33<0.00022589968284592032){
   if(i16<0.00027555227279663086){
    s1+=10.0;
   } else {
    if(i30<0.00917954370379448){
     s0+=204.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.00013396143913269043){
    if(i28<0.9911795854568481){
     s1+=33.0;
    } else {
     s0+=96.0;
     s1+=3.0;
    }
   } else {
    if(i8<1.0017728805541992){
     s0+=11.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=254.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i7<1.0452215671539307){
  if(i36<0.00033274455927312374){
   if(i9<1.0434911251068115){
    s0+=35274.0;
   } else {
    if(i9<1.0435409545898438){
     s1+=1.0;
    } else {
     s0+=105.0;
    }
   }
  } else {
   if(i8<1.0029221773147583){
    if(i35<0.0009620193159207702){
     s0+=7004.0;
     s1+=690.0;
    } else {
     s0+=19686.0;
     s1+=100.0;
    }
   } else {
    if(i52<-1.9319099919812288e-07){
     s0+=44.0;
     s1+=24.0;
    } else {
     s1+=71.0;
    }
   }
  }
 } else {
  if(i15<0.00016075372695922852){
   if(i17<0.004260961432009935){
    if(i29<1.1013743877410889){
     s0+=1567.0;
     s1+=560.0;
    } else {
     s0+=4342.0;
     s1+=182.0;
    }
   } else {
    if(i11<0.9959314465522766){
     s0+=905.0;
     s1+=312.0;
    } else {
     s0+=247.0;
     s1+=572.0;
    }
   }
  } else {
   if(i29<1.2392117977142334){
    if(i31<1.06563401222229){
     s0+=1.0;
    } else {
     s1+=607.0;
    }
   } else {
    if(i6<9.608268737792969e-05){
     s0+=109.0;
     s1+=1.0;
    } else {
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i14<1.0007460117340088){
  if(i13<-0.000405043363571167){
   if(i29<1.639693260192871){
    if(i14<0.9812751412391663){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=415.0;
     s1+=4.0;
    }
   } else {
    if(i8<0.9910187721252441){
     s1+=3.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i35<0.0064569683745503426){
    if(i33<0.0012607534881681204){
     s0+=282.0;
     s1+=1135.0;
    } else {
     s0+=772.0;
     s1+=637.0;
    }
   } else {
    if(i9<1.1222549676895142){
     s0+=116.0;
     s1+=413.0;
    } else {
     s0+=20.0;
     s1+=1265.0;
    }
   }
  }
 } else {
  if(i58<0.0010800848249346018){
   if(i53<0.9999010562896729){
    if(i4<-0.00032135844230651855){
     s0+=1.0;
    } else {
     s0+=6.0;
     s1+=1059.0;
    }
   } else {
    if(i42<-1.4749045476492029e-05){
     s0+=1.0;
     s1+=297.0;
    } else {
     s0+=145.0;
     s1+=57.0;
    }
   }
  } else {
   if(i61<0.00023311306722462177){
    if(i73<0.0001485641987528652){
     s1+=201.0;
    } else {
     s0+=20.0;
     s1+=4.0;
    }
   } else {
    if(i24<1.0629007816314697){
     s0+=18.0;
     s1+=78.0;
    } else {
     s0+=32.0;
     s1+=8798.0;
    }
   }
  }
 }
}
if(i1<0.08502736687660217){
 if(i14<1.0055623054504395){
  if(i59<0.008896597661077976){
   if(i8<1.002494215965271){
    if(i7<1.042891263961792){
     s0+=59771.0;
     s1+=594.0;
    } else {
     s0+=6621.0;
     s1+=803.0;
    }
   } else {
    if(i31<1.2133851051330566){
     s0+=11.0;
     s1+=134.0;
    } else {
     s0+=152.0;
     s1+=21.0;
    }
   }
  } else {
   if(i8<1.0006093978881836){
    if(i25<0.022268299013376236){
     s0+=1543.0;
     s1+=167.0;
    } else {
     s0+=697.0;
     s1+=328.0;
    }
   } else {
    if(i10<1.0010991096496582){
     s0+=29.0;
     s1+=220.0;
    } else {
     s0+=163.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i42<-1.4063302842259873e-05){
   if(i65<-0.013121609576046467){
    if(i32<1.6900765895843506){
     s0+=16.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i16<-0.0014367997646331787){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=600.0;
    }
   }
  } else {
   if(i37<0.00021505355834960938){
    if(i5<-6.249437865335494e-05){
     s1+=15.0;
    } else {
     s0+=312.0;
     s1+=7.0;
    }
   } else {
    s1+=13.0;
   }
  }
 }
} else {
 if(i34<0.9989370107650757){
  if(i55<0.4870443344116211){
   if(i22<1.1584041118621826){
    if(i5<-4.434130460140295e-05){
     s0+=18.0;
     s1+=9.0;
    } else {
     s0+=612.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   s1+=13.0;
  }
 } else {
  if(i6<3.4868717193603516e-05){
   if(i2<0.09717720746994019){
    if(i27<1.1043391227722168){
     s0+=153.0;
     s1+=489.0;
    } else {
     s0+=432.0;
     s1+=153.0;
    }
   } else {
    if(i5<-1.3570891496783588e-05){
     s0+=230.0;
     s1+=2417.0;
    } else {
     s0+=334.0;
     s1+=214.0;
    }
   }
  } else {
   if(i30<0.017957482486963272){
    if(i28<1.0012586116790771){
     s0+=100.0;
     s1+=106.0;
    } else {
     s0+=24.0;
     s1+=1558.0;
    }
   } else {
    if(i16<-0.0009416341781616211){
     s0+=15.0;
     s1+=442.0;
    } else {
     s0+=1.0;
     s1+=8602.0;
    }
   }
  }
 }
}
if(i3<0.07199159264564514){
 if(i2<0.07786303758621216){
  if(i10<1.0081498622894287){
   if(i8<1.0024776458740234){
    if(i47<-0.0013532936573028564){
     s0+=5484.0;
     s1+=926.0;
    } else {
     s0+=62379.0;
     s1+=867.0;
    }
   } else {
    if(i51<0.00019195658387616277){
     s0+=32.0;
    } else {
     s0+=90.0;
     s1+=475.0;
    }
   }
  } else {
   if(i32<1.1039612293243408){
    if(i5<-2.318572296644561e-05){
     s1+=660.0;
    } else {
     s0+=52.0;
     s1+=8.0;
    }
   } else {
    if(i8<1.0041879415512085){
     s0+=810.0;
     s1+=81.0;
    } else {
     s1+=145.0;
    }
   }
  }
 } else {
  if(i4<-0.0006773471832275391){
   if(i51<0.008819843642413616){
    if(i9<1.0868099927902222){
     s0+=100.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i27<1.0523815155029297){
    s0+=3.0;
   } else {
    if(i3<0.0702214241027832){
     s0+=4.0;
     s1+=1486.0;
    } else {
     s0+=17.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i17<0.004695648327469826){
  if(i40<0.05796167254447937){
   if(i15<-0.0003344714641571045){
    if(i56<0.0013176319189369678){
     s0+=50.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i31<1.0595405101776123){
     s0+=28.0;
    } else {
     s0+=122.0;
     s1+=1057.0;
    }
   }
  } else {
   if(i64<-0.008029574528336525){
    if(i35<0.005355835892260075){
     s0+=652.0;
     s1+=13.0;
    } else {
     s0+=117.0;
     s1+=113.0;
    }
   } else {
    if(i14<1.0026072263717651){
     s0+=706.0;
     s1+=341.0;
    } else {
     s0+=28.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i42<1.927955963765271e-06){
   if(i0<0.09191417694091797){
    if(i59<0.0026734680868685246){
     s0+=123.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=136.0;
    }
   } else {
    if(i27<1.0567991733551025){
     s0+=7.0;
    } else {
     s0+=95.0;
     s1+=10598.0;
    }
   }
  } else {
   s0+=71.0;
  }
 }
}
if(i13<0.0004321932792663574){
 if(i9<1.0451881885528564){
  if(i0<0.0829220712184906){
   if(i70<0.9824557900428772){
    if(i4<-0.0003021359443664551){
     s0+=6553.0;
     s1+=213.0;
    } else {
     s0+=593.0;
     s1+=372.0;
    }
   } else {
    if(i24<1.0475037097930908){
     s0+=50044.0;
     s1+=164.0;
    } else {
     s0+=6769.0;
     s1+=548.0;
    }
   }
  } else {
   if(i19<0.9984657764434814){
    if(i42<-1.0249375918647274e-05){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i60<0.038421809673309326){
     s0+=16.0;
     s1+=522.0;
    } else {
     s0+=56.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i4<0.0001639723777770996){
   if(i5<-2.3642322048544884e-05){
    if(i13<-0.00036334991455078125){
     s0+=227.0;
     s1+=13.0;
    } else {
     s0+=360.0;
     s1+=1212.0;
    }
   } else {
    if(i1<0.0984550416469574){
     s0+=3286.0;
     s1+=271.0;
    } else {
     s0+=678.0;
     s1+=364.0;
    }
   }
  } else {
   if(i53<0.9998905658721924){
    if(i5<-1.8690761862671934e-05){
     s0+=29.0;
     s1+=1788.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   } else {
    if(i56<0.0003480544837657362){
     s0+=532.0;
     s1+=226.0;
    } else {
     s0+=1.0;
     s1+=226.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005741715431213379){
  if(i3<0.09880083799362183){
   if(i7<1.1205039024353027){
    if(i15<-0.0002828836441040039){
     s0+=758.0;
     s1+=21.0;
    } else {
     s0+=611.0;
     s1+=210.0;
    }
   } else {
    if(i49<0.028251290321350098){
     s0+=4.0;
     s1+=105.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i60<0.06564110517501831){
    if(i44<0.06745389103889465){
     s0+=14.0;
     s1+=66.0;
    } else {
     s0+=1.0;
     s1+=253.0;
    }
   } else {
    if(i0<0.2331658899784088){
     s0+=39.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i0<0.058464497327804565){
   if(i42<-1.4155457392917015e-05){
    if(i36<0.008493486791849136){
     s0+=22.0;
     s1+=361.0;
    } else {
     s0+=88.0;
     s1+=51.0;
    }
   } else {
    if(i68<1.001090168952942){
     s0+=130.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.11398342251777649){
    if(i47<0.003702104091644287){
     s0+=69.0;
     s1+=1290.0;
    } else {
     s0+=57.0;
     s1+=16.0;
    }
   } else {
    if(i2<0.16360238194465637){
     s0+=28.0;
     s1+=1094.0;
    } else {
     s1+=7554.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i10<1.0081498622894287){
  if(i38<0.0003959030727855861){
   if(i26<1.0061875581741333){
    if(i66<0.0008425185224041343){
     s0+=49322.0;
     s1+=103.0;
    } else {
     s0+=161.0;
     s1+=45.0;
    }
   } else {
    if(i35<0.0011643674224615097){
     s0+=17.0;
     s1+=58.0;
    } else {
     s0+=79.0;
     s1+=8.0;
    }
   }
  } else {
   if(i4<-0.0002885162830352783){
    if(i3<0.0716283917427063){
     s0+=14132.0;
     s1+=569.0;
    } else {
     s0+=664.0;
     s1+=473.0;
    }
   } else {
    if(i0<0.08317658305168152){
     s0+=4573.0;
     s1+=1134.0;
    } else {
     s0+=504.0;
     s1+=1390.0;
    }
   }
  }
 } else {
  if(i1<0.08946049213409424){
   if(i35<0.0011289333924651146){
    if(i50<-0.0004535344778560102){
     s0+=18.0;
    } else {
     s0+=25.0;
     s1+=211.0;
    }
   } else {
    if(i32<1.0950405597686768){
     s1+=17.0;
    } else {
     s0+=788.0;
     s1+=62.0;
    }
   }
  } else {
   if(i16<0.00036793947219848633){
    if(i60<0.031058669090270996){
     s0+=105.0;
     s1+=575.0;
    } else {
     s0+=202.0;
     s1+=176.0;
    }
   } else {
    if(i36<0.0005053664790466428){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=731.0;
    }
   }
  }
 }
} else {
 if(i41<0.0003137579478789121){
  s0+=186.0;
 } else {
  if(i5<-4.330423689680174e-05){
   if(i15<-8.71419906616211e-05){
    if(i24<1.1228240728378296){
     s0+=141.0;
     s1+=117.0;
    } else {
     s0+=50.0;
     s1+=621.0;
    }
   } else {
    if(i1<0.009039878845214844){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=44.0;
     s1+=10442.0;
    }
   }
  } else {
   if(i15<0.00011581182479858398){
    if(i29<1.2392117977142334){
     s1+=192.0;
    } else {
     s0+=13.0;
     s1+=35.0;
    }
   } else {
    if(i30<0.008589306846261024){
     s0+=152.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i5<-5.6664641306269914e-05){
 if(i28<0.9669281244277954){
  if(i2<0.08902484178543091){
   if(i50<-0.000450506922788918){
    if(i72<-1.0357074643252417e-05){
     s1+=49.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    if(i59<0.0360909067094326){
     s0+=1057.0;
     s1+=17.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   }
  } else {
   if(i53<1.0007500648498535){
    if(i10<1.0008904933929443){
     s1+=224.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i0<0.07097312808036804){
   if(i48<-0.0028661489486694336){
    if(i6<1.2993812561035156e-05){
     s0+=107.0;
     s1+=37.0;
    } else {
     s0+=83.0;
     s1+=524.0;
    }
   } else {
    if(i16<-5.78761100769043e-05){
     s0+=333.0;
     s1+=25.0;
    } else {
     s0+=65.0;
     s1+=43.0;
    }
   }
  } else {
   if(i19<0.9973146915435791){
    s0+=24.0;
   } else {
    if(i52<0.00010792419197969139){
     s0+=19.0;
     s1+=9438.0;
    } else {
     s0+=164.0;
     s1+=2216.0;
    }
   }
  }
 }
} else {
 if(i9<1.0446507930755615){
  if(i49<-0.006702840328216553){
   if(i8<0.9974626302719116){
    if(i29<1.2209420204162598){
     s0+=344.0;
     s1+=74.0;
    } else {
     s0+=795.0;
     s1+=19.0;
    }
   } else {
    if(i0<0.049291640520095825){
     s0+=937.0;
     s1+=256.0;
    } else {
     s0+=56.0;
     s1+=217.0;
    }
   }
  } else {
   if(i55<0.0250717680901289){
    if(i21<1.0093050003051758){
     s0+=52535.0;
     s1+=328.0;
    } else {
     s0+=44.0;
     s1+=73.0;
    }
   } else {
    if(i2<0.08022624254226685){
     s0+=9060.0;
     s1+=582.0;
    } else {
     s0+=99.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i17<0.00553456274792552){
   if(i27<1.1063084602355957){
    if(i36<0.00043089734390378){
     s0+=794.0;
     s1+=48.0;
    } else {
     s0+=880.0;
     s1+=989.0;
    }
   } else {
    if(i37<4.792213439941406e-05){
     s0+=1951.0;
     s1+=558.0;
    } else {
     s0+=1695.0;
     s1+=89.0;
    }
   }
  } else {
   if(i13<-0.0004936456680297852){
    s0+=54.0;
   } else {
    if(i53<1.0002589225769043){
     s0+=51.0;
     s1+=862.0;
    } else {
     s0+=69.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i10<1.0080897808074951){
  if(i2<0.08079704642295837){
   if(i62<0.04403430223464966){
    if(i22<0.9723231792449951){
     s0+=51.0;
     s1+=46.0;
    } else {
     s0+=55778.0;
     s1+=538.0;
    }
   } else {
    if(i14<0.9942349195480347){
     s0+=7184.0;
     s1+=135.0;
    } else {
     s0+=5248.0;
     s1+=1063.0;
    }
   }
  } else {
   if(i19<0.9980583190917969){
    if(i36<0.0066936323419213295){
     s0+=372.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    if(i56<0.0002544393064454198){
     s0+=496.0;
     s1+=396.0;
    } else {
     s0+=277.0;
     s1+=1350.0;
    }
   }
  }
 } else {
  if(i0<0.08264768123626709){
   if(i18<1.0181013345718384){
    if(i1<0.0595889687538147){
     s0+=293.0;
     s1+=81.0;
    } else {
     s0+=90.0;
     s1+=142.0;
    }
   } else {
    if(i52<-2.9910581361036748e-05){
     s1+=4.0;
    } else {
     s0+=415.0;
     s1+=15.0;
    }
   }
  } else {
   if(i64<-0.0098879374563694){
    if(i66<-0.0010221980046480894){
     s0+=14.0;
     s1+=182.0;
    } else {
     s0+=241.0;
     s1+=89.0;
    }
   } else {
    if(i72<1.0541755273152376e-06){
     s0+=79.0;
     s1+=1246.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
} else {
 if(i38<0.00024887098697945476){
  if(i50<-0.00024784664856269956){
   s1+=9.0;
  } else {
   s0+=198.0;
  }
 } else {
  if(i17<0.0024835874792188406){
   if(i4<0.000948488712310791){
    if(i39<0.0023529701866209507){
     s1+=28.0;
    } else {
     s0+=155.0;
     s1+=10.0;
    }
   } else {
    s1+=209.0;
   }
  } else {
   if(i10<1.00626802444458){
    if(i55<0.2588910460472107){
     s0+=203.0;
     s1+=1203.0;
    } else {
     s0+=7.0;
     s1+=981.0;
    }
   } else {
    if(i68<1.0023152828216553){
     s0+=23.0;
     s1+=9061.0;
    } else {
     s0+=34.0;
     s1+=252.0;
    }
   }
  }
 }
}
if(i0<0.08191633224487305){
 if(i11<1.0044066905975342){
  if(i46<-0.00161665678024292){
   if(i58<0.006483476608991623){
    if(i2<0.03557461500167847){
     s0+=3182.0;
     s1+=429.0;
    } else {
     s0+=350.0;
     s1+=502.0;
    }
   } else {
    if(i14<0.9731225967407227){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   }
  } else {
   if(i35<0.00028949009720236063){
    s0+=35784.0;
   } else {
    if(i9<1.0401519536972046){
     s0+=25187.0;
     s1+=606.0;
    } else {
     s0+=3726.0;
     s1+=626.0;
    }
   }
  }
 } else {
  if(i39<0.001110043958760798){
   if(i42<-9.092356776818633e-06){
    s1+=640.0;
   } else {
    if(i71<0.999914288520813){
     s1+=28.0;
    } else {
     s0+=72.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<6.383657455444336e-05){
    if(i17<0.005782749969512224){
     s0+=1071.0;
     s1+=31.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i47<0.002612173557281494){
     s0+=2.0;
     s1+=133.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i11<1.006361961364746){
  if(i5<-1.2010672435280867e-05){
   if(i45<0.06375560164451599){
    if(i27<1.0558756589889526){
     s0+=11.0;
    } else {
     s0+=12.0;
     s1+=1735.0;
    }
   } else {
    if(i25<0.028331194072961807){
     s0+=503.0;
     s1+=510.0;
    } else {
     s0+=123.0;
     s1+=1922.0;
    }
   }
  } else {
   if(i37<-0.00013780593872070312){
    s0+=416.0;
   } else {
    if(i48<0.0333443284034729){
     s0+=80.0;
     s1+=193.0;
    } else {
     s0+=468.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i4<0.00013136863708496094){
   if(i39<0.0012674764730036259){
    if(i50<-0.00047425072989426553){
     s0+=41.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i58<0.0008557949913665652){
     s0+=11.0;
     s1+=9.0;
    } else {
     s1+=151.0;
    }
   }
  } else {
   if(i8<1.0038797855377197){
    if(i19<1.0007497072219849){
     s0+=1.0;
     s1+=712.0;
    } else {
     s0+=35.0;
     s1+=366.0;
    }
   } else {
    s1+=8332.0;
   }
  }
 }
}
if(i3<0.0723993182182312){
 if(i19<1.0019015073776245){
  if(i0<0.07876047492027283){
   if(i25<0.01642555743455887){
    if(i24<1.0475225448608398){
     s0+=49442.0;
     s1+=165.0;
    } else {
     s0+=9217.0;
     s1+=602.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=2430.0;
     s1+=1043.0;
    } else {
     s0+=7037.0;
     s1+=128.0;
    }
   }
  } else {
   if(i12<0.9945257902145386){
    if(i38<0.004395488649606705){
     s0+=127.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i60<0.032679736614227295){
     s0+=49.0;
     s1+=996.0;
    } else {
     s0+=68.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i52<0.00013378457515500486){
   if(i15<-0.00010848045349121094){
    if(i70<0.9928511381149292){
     s1+=61.0;
    } else {
     s0+=96.0;
     s1+=15.0;
    }
   } else {
    if(i5<-8.459620585199445e-05){
     s1+=950.0;
    } else {
     s0+=42.0;
     s1+=498.0;
    }
   }
  } else {
   if(i17<0.016777731478214264){
    if(i15<-0.00033146142959594727){
     s0+=409.0;
     s1+=11.0;
    } else {
     s0+=98.0;
     s1+=61.0;
    }
   } else {
    if(i58<0.005372495390474796){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i39<0.005209856666624546){
  if(i14<1.0013314485549927){
   if(i40<0.054035484790802){
    if(i6<-6.219744682312012e-05){
     s0+=24.0;
    } else {
     s0+=58.0;
     s1+=638.0;
    }
   } else {
    if(i20<-1.564621925354004e-05){
     s0+=365.0;
     s1+=3.0;
    } else {
     s0+=1063.0;
     s1+=697.0;
    }
   }
  } else {
   if(i38<0.0034496113657951355){
    if(i20<-5.3942203521728516e-06){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=41.0;
     s1+=1284.0;
    }
   } else {
    if(i36<0.0018814257346093655){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=275.0;
    }
   }
  }
 } else {
  if(i11<0.9934571981430054){
   if(i62<0.20784832537174225){
    if(i12<1.0016757249832153){
     s0+=148.0;
     s1+=48.0;
    } else {
     s0+=37.0;
     s1+=177.0;
    }
   } else {
    if(i0<0.0948026180267334){
     s0+=33.0;
     s1+=49.0;
    } else {
     s0+=15.0;
     s1+=822.0;
    }
   }
  } else {
   if(i50<-0.0005531379720196128){
    if(i4<-0.0017783939838409424){
     s0+=2.0;
    } else {
     s0+=19.0;
     s1+=7156.0;
    }
   } else {
    if(i12<0.9995790719985962){
     s0+=46.0;
     s1+=44.0;
    } else {
     s0+=26.0;
     s1+=1351.0;
    }
   }
  }
 }
}
if(i6<3.701448440551758e-05){
 if(i18<1.0077046155929565){
  if(i25<0.022104941308498383){
   if(i22<0.9764086008071899){
    if(i39<0.0005039841635152698){
     s0+=493.0;
    } else {
     s0+=648.0;
     s1+=298.0;
    }
   } else {
    if(i66<0.0007162539404816926){
     s0+=56472.0;
     s1+=372.0;
    } else {
     s0+=3801.0;
     s1+=526.0;
    }
   }
  } else {
   if(i8<0.996924102306366){
    if(i3<0.08193168044090271){
     s0+=4860.0;
     s1+=80.0;
    } else {
     s0+=160.0;
     s1+=108.0;
    }
   } else {
    if(i7<1.0348410606384277){
     s0+=501.0;
     s1+=100.0;
    } else {
     s0+=787.0;
     s1+=1830.0;
    }
   }
  }
 } else {
  if(i66<-0.0004509980499278754){
   if(i30<0.01259654015302658){
    if(i61<0.0003557511663530022){
     s0+=102.0;
    } else {
     s0+=14.0;
     s1+=32.0;
    }
   } else {
    if(i58<0.00137624004855752){
     s0+=126.0;
     s1+=282.0;
    } else {
     s0+=15.0;
     s1+=379.0;
    }
   }
  } else {
   if(i31<1.1040980815887451){
    if(i1<0.07608726620674133){
     s0+=410.0;
     s1+=223.0;
    } else {
     s0+=48.0;
     s1+=588.0;
    }
   } else {
    if(i3<0.09966343641281128){
     s0+=1827.0;
     s1+=216.0;
    } else {
     s0+=194.0;
     s1+=305.0;
    }
   }
  }
 }
} else {
 if(i39<0.0004908976843580604){
  s0+=336.0;
 } else {
  if(i4<0.0009589195251464844){
   if(i29<1.2392117977142334){
    if(i34<0.9981893301010132){
     s0+=4.0;
    } else {
     s1+=687.0;
    }
   } else {
    if(i29<1.2648893594741821){
     s0+=160.0;
    } else {
     s0+=175.0;
     s1+=930.0;
    }
   }
  } else {
   if(i16<3.1828880310058594e-05){
    if(i7<1.1238033771514893){
     s0+=81.0;
     s1+=270.0;
    } else {
     s1+=603.0;
    }
   } else {
    if(i52<0.0001340412418358028){
     s1+=8649.0;
    } else {
     s0+=5.0;
     s1+=555.0;
    }
   }
  }
 }
}
if(i7<1.0565208196640015){
 if(i51<0.0002816389314830303){
  if(i8<1.0024954080581665){
   if(i66<0.000897154794074595){
    if(i10<1.010897159576416){
     s0+=52239.0;
     s1+=178.0;
    } else {
     s0+=4.0;
     s1+=46.0;
    }
   } else {
    if(i10<0.9967325329780579){
     s0+=29.0;
     s1+=69.0;
    } else {
     s0+=203.0;
    }
   }
  } else {
   if(i35<0.0024264866951853037){
    if(i42<-1.2764729945047293e-05){
     s1+=140.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.004408092703670263){
     s0+=87.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i24<1.0451428890228271){
   if(i35<0.0009475743281655014){
    if(i32<1.0724589824676514){
     s0+=1952.0;
     s1+=3.0;
    } else {
     s0+=438.0;
     s1+=197.0;
    }
   } else {
    if(i11<1.0007305145263672){
     s0+=4427.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i2<0.06308349967002869){
    if(i29<1.1013743877410889){
     s0+=758.0;
     s1+=548.0;
    } else {
     s0+=4190.0;
     s1+=116.0;
    }
   } else {
    if(i40<0.04575243592262268){
     s0+=77.0;
     s1+=808.0;
    } else {
     s0+=387.0;
     s1+=331.0;
    }
   }
  }
 }
} else {
 if(i20<1.6629695892333984e-05){
  if(i1<0.0912969708442688){
   if(i29<1.1013743877410889){
    if(i52<2.8194828701089136e-05){
     s0+=684.0;
     s1+=212.0;
    } else {
     s0+=149.0;
     s1+=326.0;
    }
   } else {
    if(i2<0.0758211612701416){
     s0+=3508.0;
     s1+=210.0;
    } else {
     s0+=207.0;
     s1+=102.0;
    }
   }
  } else {
   if(i8<0.996346116065979){
    if(i71<0.9996027946472168){
     s0+=315.0;
     s1+=29.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   } else {
    if(i17<0.001693102065473795){
     s0+=403.0;
     s1+=157.0;
    } else {
     s0+=258.0;
     s1+=3048.0;
    }
   }
  }
 } else {
  if(i1<0.09769311547279358){
   if(i4<0.0005856752395629883){
    if(i47<0.002253293991088867){
     s0+=205.0;
     s1+=134.0;
    } else {
     s0+=377.0;
     s1+=8.0;
    }
   } else {
    if(i29<1.613681674003601){
     s0+=92.0;
     s1+=958.0;
    } else {
     s0+=82.0;
     s1+=30.0;
    }
   }
  } else {
   if(i1<0.13697117567062378){
    if(i45<0.07816141843795776){
     s0+=5.0;
     s1+=732.0;
    } else {
     s0+=145.0;
     s1+=169.0;
    }
   } else {
    if(i5<-5.448270167107694e-05){
     s0+=11.0;
     s1+=8179.0;
    } else {
     s0+=30.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i2<0.07807236909866333){
  if(i7<1.0451585054397583){
   if(i47<-0.001177459955215454){
    if(i6<3.6835670471191406e-05){
     s0+=4641.0;
     s1+=465.0;
    } else {
     s0+=13.0;
     s1+=76.0;
    }
   } else {
    if(i62<0.040187351405620575){
     s0+=51257.0;
     s1+=176.0;
    } else {
     s0+=6031.0;
     s1+=191.0;
    }
   }
  } else {
   if(i2<0.06230437755584717){
    if(i13<0.0006093978881835938){
     s0+=2783.0;
     s1+=369.0;
    } else {
     s0+=96.0;
     s1+=178.0;
    }
   } else {
    if(i8<0.9984548091888428){
     s0+=80.0;
     s1+=32.0;
    } else {
     s0+=60.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i63<2.1008632757002488e-05){
   if(i40<0.056612372398376465){
    if(i13<-0.00037351250648498535){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=830.0;
    }
   } else {
    if(i39<0.0004340489977039397){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=113.0;
    }
   }
  } else {
   if(i20<-1.341104507446289e-05){
    if(i7<1.0962467193603516){
     s0+=102.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<0.09832185506820679){
     s0+=66.0;
     s1+=31.0;
    } else {
     s1+=56.0;
    }
   }
  }
 }
} else {
 if(i0<0.09158980846405029){
  if(i12<1.003448486328125){
   if(i49<0.012339472770690918){
    if(i12<1.000563383102417){
     s0+=2722.0;
     s1+=556.0;
    } else {
     s0+=385.0;
     s1+=426.0;
    }
   } else {
    if(i69<0.006638494320213795){
     s0+=1425.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  } else {
   if(i49<0.00894734263420105){
    if(i57<0.0024909377098083496){
     s0+=57.0;
     s1+=643.0;
    } else {
     s0+=45.0;
     s1+=27.0;
    }
   } else {
    if(i27<1.1407222747802734){
     s0+=5.0;
     s1+=13.0;
    } else {
     s0+=110.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<-1.7344951629638672e-05){
   if(i34<0.9991482496261597){
    s0+=262.0;
   } else {
    if(i23<1.0470178127288818){
     s1+=5.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i61<0.0002050540060736239){
    if(i49<0.014081060886383057){
     s0+=78.0;
     s1+=534.0;
    } else {
     s0+=338.0;
     s1+=164.0;
    }
   } else {
    if(i8<1.0023727416992188){
     s0+=395.0;
     s1+=2499.0;
    } else {
     s0+=52.0;
     s1+=9519.0;
    }
   }
  }
 }
}
if(i4<0.000545799732208252){
 if(i2<0.07751694321632385){
  if(i49<-0.005912303924560547){
   if(i31<1.190589427947998){
    if(i29<1.0835556983947754){
     s0+=877.0;
    } else {
     s0+=583.0;
     s1+=610.0;
    }
   } else {
    if(i26<0.9880516529083252){
     s0+=1598.0;
     s1+=149.0;
    } else {
     s0+=718.0;
     s1+=4.0;
    }
   }
  } else {
   if(i32<1.067622423171997){
    if(i7<1.0596027374267578){
     s0+=35780.0;
     s1+=1.0;
    } else {
     s0+=80.0;
     s1+=10.0;
    }
   } else {
    if(i8<1.0007879734039307){
     s0+=28167.0;
     s1+=999.0;
    } else {
     s0+=1040.0;
     s1+=391.0;
    }
   }
  }
 } else {
  if(i43<0.04736858606338501){
   if(i6<-5.7637691497802734e-05){
    if(i52<0.00016226938168983907){
     s0+=77.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    if(i72<1.2437046734703472e-06){
     s0+=89.0;
     s1+=2080.0;
    } else {
     s0+=17.0;
     s1+=6.0;
    }
   }
  } else {
   if(i1<0.12464997172355652){
    if(i27<1.0967997312545776){
     s0+=236.0;
     s1+=151.0;
    } else {
     s0+=713.0;
     s1+=44.0;
    }
   } else {
    if(i42<-8.863596576702548e-07){
     s0+=222.0;
     s1+=973.0;
    } else {
     s0+=319.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i38<0.000233056751312688){
  if(i52<6.684657364530722e-06){
   s0+=173.0;
  } else {
   s1+=3.0;
  }
 } else {
  if(i51<0.0001797717995941639){
   if(i31<1.1734354496002197){
    s1+=2.0;
   } else {
    s0+=30.0;
   }
  } else {
   if(i31<1.3005231618881226){
    if(i16<-0.0006322264671325684){
     s0+=110.0;
     s1+=210.0;
    } else {
     s0+=165.0;
     s1+=3476.0;
    }
   } else {
    if(i39<0.0051590995863080025){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=62.0;
     s1+=7970.0;
    }
   }
  }
 }
}
if(i23<1.04278564453125){
 if(i19<1.0018455982208252){
  if(i33<0.0002972822403535247){
   if(i10<1.0080087184906006){
    if(i1<0.08480751514434814){
     s0+=55622.0;
     s1+=451.0;
    } else {
     s0+=204.0;
     s1+=137.0;
    }
   } else {
    if(i32<1.1490330696105957){
     s0+=12.0;
     s1+=164.0;
    } else {
     s0+=273.0;
     s1+=33.0;
    }
   }
  } else {
   if(i0<0.08133089542388916){
    if(i16<-0.001533597707748413){
     s0+=5958.0;
     s1+=126.0;
    } else {
     s0+=4550.0;
     s1+=1106.0;
    }
   } else {
    if(i8<0.9925881624221802){
     s0+=83.0;
    } else {
     s0+=52.0;
     s1+=1043.0;
    }
   }
  }
 } else {
  if(i12<1.0025818347930908){
   if(i1<0.09153768420219421){
    if(i63<1.7566620954312384e-05){
     s0+=26.0;
     s1+=80.0;
    } else {
     s0+=300.0;
     s1+=27.0;
    }
   } else {
    if(i46<0.005957573652267456){
     s1+=87.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i0<0.05483958125114441){
    if(i15<-0.00013566017150878906){
     s0+=139.0;
     s1+=66.0;
    } else {
     s0+=32.0;
     s1+=207.0;
    }
   } else {
    if(i46<0.0037800073623657227){
     s0+=24.0;
     s1+=1497.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i4<0.00048828125){
  if(i5<-2.8512906283140182e-05){
   if(i25<0.02829132229089737){
    if(i32<1.1423697471618652){
     s0+=31.0;
     s1+=398.0;
    } else {
     s0+=584.0;
     s1+=209.0;
    }
   } else {
    if(i7<1.0667033195495605){
     s0+=67.0;
     s1+=74.0;
    } else {
     s0+=33.0;
     s1+=1146.0;
    }
   }
  } else {
   if(i36<0.0005143258022144437){
    if(i51<0.0006834036903455853){
     s0+=305.0;
     s1+=22.0;
    } else {
     s0+=673.0;
     s1+=4.0;
    }
   } else {
    if(i71<0.9975109100341797){
     s0+=404.0;
     s1+=5.0;
    } else {
     s0+=1461.0;
     s1+=551.0;
    }
   }
  }
 } else {
  if(i11<1.0095356702804565){
   if(i2<0.1318579614162445){
    if(i8<1.0045157670974731){
     s0+=264.0;
     s1+=226.0;
    } else {
     s0+=15.0;
     s1+=175.0;
    }
   } else {
    if(i17<0.002823679242283106){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=11.0;
     s1+=1624.0;
    }
   }
  } else {
   if(i51<0.0003072755935136229){
    if(i2<0.044471174478530884){
     s0+=1.0;
    } else {
     s1+=51.0;
    }
   } else {
    s1+=7559.0;
   }
  }
 }
}
if(i1<0.08414837718009949){
 if(i69<0.0017442350508645177){
  if(i27<1.0598037242889404){
   if(i51<0.0003347235615365207){
    s0+=41650.0;
   } else {
    if(i63<1.6598711226833984e-05){
     s0+=923.0;
    } else {
     s0+=276.0;
     s1+=24.0;
    }
   }
  } else {
   if(i29<1.1013743877410889){
    if(i29<1.0981647968292236){
     s0+=2562.0;
     s1+=474.0;
    } else {
     s0+=209.0;
     s1+=626.0;
    }
   } else {
    if(i15<0.00023472309112548828){
     s0+=17740.0;
     s1+=238.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i2<0.03929281234741211){
   if(i12<1.0005302429199219){
    if(i29<1.1013743877410889){
     s0+=1148.0;
     s1+=224.0;
    } else {
     s0+=2578.0;
     s1+=66.0;
    }
   } else {
    if(i39<0.001121253939345479){
     s0+=23.0;
     s1+=231.0;
    } else {
     s0+=850.0;
     s1+=185.0;
    }
   }
  } else {
   if(i13<0.0005571842193603516){
    if(i67<0.9783974289894104){
     s0+=153.0;
     s1+=317.0;
    } else {
     s0+=830.0;
     s1+=206.0;
    }
   } else {
    if(i48<0.018399327993392944){
     s0+=12.0;
     s1+=427.0;
    } else {
     s0+=53.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i19<0.9986284971237183){
  if(i17<0.008534912951290607){
   if(i52<0.00019525516836438328){
    if(i8<0.9969772100448608){
     s0+=640.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=7.0;
    }
   } else {
    if(i28<0.9647887945175171){
     s0+=27.0;
    } else {
     s0+=8.0;
     s1+=13.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i4<0.0005391836166381836){
   if(i45<0.06446874141693115){
    if(i43<0.047081172466278076){
     s0+=34.0;
     s1+=1344.0;
    } else {
     s0+=29.0;
     s1+=60.0;
    }
   } else {
    if(i43<0.04275330901145935){
     s0+=22.0;
     s1+=710.0;
    } else {
     s0+=1101.0;
     s1+=1265.0;
    }
   }
  } else {
   if(i17<0.006494081113487482){
    if(i65<-0.021714555099606514){
     s0+=87.0;
     s1+=100.0;
    } else {
     s0+=40.0;
     s1+=1555.0;
    }
   } else {
    if(i16<-0.0008560419082641602){
     s0+=26.0;
     s1+=481.0;
    } else {
     s0+=3.0;
     s1+=8610.0;
    }
   }
  }
 }
}
if(i6<3.8683414459228516e-05){
 if(i2<0.08163893222808838){
  if(i33<0.00030015682568773627){
   if(i18<1.008404016494751){
    if(i46<-0.0021805167198181152){
     s0+=177.0;
     s1+=65.0;
    } else {
     s0+=55654.0;
     s1+=395.0;
    }
   } else {
    if(i0<0.06556582450866699){
     s0+=586.0;
     s1+=64.0;
    } else {
     s0+=31.0;
     s1+=105.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i29<1.0840110778808594){
     s0+=2305.0;
    } else {
     s0+=686.0;
     s1+=1043.0;
    }
   } else {
    if(i27<1.1476502418518066){
     s0+=1884.0;
     s1+=247.0;
    } else {
     s0+=7624.0;
     s1+=231.0;
    }
   }
  }
 } else {
  if(i42<2.911403271355084e-06){
   if(i43<0.04684284329414368){
    if(i71<0.9926552176475525){
     s0+=52.0;
    } else {
     s0+=73.0;
     s1+=2028.0;
    }
   } else {
    if(i1<0.12542256712913513){
     s0+=719.0;
     s1+=209.0;
    } else {
     s0+=345.0;
     s1+=1066.0;
    }
   }
  } else {
   if(i9<1.060274600982666){
    if(i40<0.053356289863586426){
     s1+=21.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i51<0.002229558303952217){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=278.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i1<0.06604969501495361){
  if(i68<0.9976809620857239){
   s0+=234.0;
  } else {
   if(i72<-4.455251200852217e-06){
    if(i29<1.5682398080825806){
     s0+=66.0;
     s1+=487.0;
    } else {
     s0+=88.0;
     s1+=58.0;
    }
   } else {
    s0+=85.0;
   }
  }
 } else {
  if(i8<0.9993529319763184){
   s0+=40.0;
  } else {
   if(i5<-5.447387229651213e-05){
    if(i8<1.0033760070800781){
     s0+=79.0;
     s1+=858.0;
    } else {
     s0+=50.0;
     s1+=9853.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s0+=1.0;
     s1+=309.0;
    } else {
     s0+=75.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i3<0.07109683752059937){
 if(i2<0.07411611080169678){
  if(i20<1.8775463104248047e-05){
   if(i46<-0.0015491843223571777){
    if(i32<1.1800893545150757){
     s0+=1496.0;
     s1+=605.0;
    } else {
     s0+=2192.0;
     s1+=129.0;
    }
   } else {
    if(i24<1.0475225448608398){
     s0+=53765.0;
     s1+=189.0;
    } else {
     s0+=9787.0;
     s1+=988.0;
    }
   }
  } else {
   if(i15<-0.0002205967903137207){
    if(i30<0.0399247482419014){
     s0+=733.0;
     s1+=45.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   } else {
    if(i41<0.0004256158135831356){
     s0+=304.0;
    } else {
     s0+=284.0;
     s1+=1018.0;
    }
   }
  }
 } else {
  if(i31<1.0698697566986084){
   s0+=101.0;
  } else {
   if(i24<1.052557110786438){
    if(i35<0.001028041122481227){
     s0+=6.0;
     s1+=31.0;
    } else {
     s0+=70.0;
     s1+=4.0;
    }
   } else {
    if(i0<0.08023634552955627){
     s0+=48.0;
     s1+=113.0;
    } else {
     s0+=6.0;
     s1+=1448.0;
    }
   }
  }
 }
} else {
 if(i39<0.006011046469211578){
  if(i4<0.00042569637298583984){
   if(i8<0.9962934255599976){
    if(i40<0.03805047273635864){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=478.0;
     s1+=7.0;
    }
   } else {
    if(i5<-1.3823204426444136e-05){
     s0+=476.0;
     s1+=1369.0;
    } else {
     s0+=733.0;
     s1+=221.0;
    }
   }
  } else {
   if(i15<-9.1552734375e-05){
    if(i25<0.02015511319041252){
     s0+=37.0;
     s1+=12.0;
    } else {
     s0+=50.0;
     s1+=144.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s0+=1.0;
     s1+=1088.0;
    } else {
     s0+=41.0;
     s1+=342.0;
    }
   }
  }
 } else {
  if(i5<-4.052467556903139e-05){
   if(i2<0.10032469034194946){
    if(i46<0.003532588481903076){
     s0+=1.0;
     s1+=143.0;
    } else {
     s0+=80.0;
     s1+=7.0;
    }
   } else {
    if(i29<1.594835877418518){
     s0+=4.0;
     s1+=7162.0;
    } else {
     s0+=49.0;
     s1+=2054.0;
    }
   }
  } else {
   if(i43<0.033851027488708496){
    s1+=92.0;
   } else {
    if(i1<0.1940089762210846){
     s0+=124.0;
     s1+=29.0;
    } else {
     s0+=1.0;
     s1+=79.0;
    }
   }
  }
 }
}
if(i14<1.0039219856262207){
 if(i7<1.0470023155212402){
  if(i56<0.00027220460469834507){
   if(i22<1.0147297382354736){
    if(i55<0.027514472603797913){
     s0+=51379.0;
     s1+=124.0;
    } else {
     s0+=2470.0;
     s1+=234.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i4<-0.000232696533203125){
    if(i11<0.9901137351989746){
     s0+=7042.0;
     s1+=101.0;
    } else {
     s0+=998.0;
     s1+=334.0;
    }
   } else {
    if(i39<0.0008784660021774471){
     s0+=61.0;
     s1+=313.0;
    } else {
     s0+=569.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i8<1.001537561416626){
   if(i30<0.040238820016384125){
    if(i29<1.255998969078064){
     s0+=3460.0;
     s1+=2092.0;
    } else {
     s0+=3941.0;
     s1+=562.0;
    }
   } else {
    if(i6<-9.772181510925293e-05){
     s0+=73.0;
     s1+=10.0;
    } else {
     s0+=57.0;
     s1+=769.0;
    }
   }
  } else {
   if(i42<-1.0158513759961352e-05){
    if(i30<0.011146130040287971){
     s0+=252.0;
     s1+=200.0;
    } else {
     s0+=114.0;
     s1+=2073.0;
    }
   } else {
    if(i1<0.09785705804824829){
     s0+=182.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i3<0.04885739088058472){
  if(i20<2.1755695343017578e-05){
   if(i54<-0.0021524429321289062){
    if(i2<0.031113803386688232){
     s0+=24.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=91.0;
    }
   } else {
    if(i6<3.409385681152344e-05){
     s0+=486.0;
     s1+=17.0;
    } else {
     s0+=52.0;
     s1+=32.0;
    }
   }
  } else {
   if(i68<0.9975467324256897){
    if(i16<0.0009270310401916504){
     s0+=5.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i17<0.00421264860779047){
     s0+=1.0;
     s1+=104.0;
    } else {
     s1+=467.0;
    }
   }
  }
 } else {
  if(i37<-0.00024059414863586426){
   if(i17<0.011371677741408348){
    s0+=21.0;
   } else {
    s1+=20.0;
   }
  } else {
   if(i5<-4.331633317633532e-05){
    if(i6<-1.1861324310302734e-05){
     s0+=6.0;
    } else {
     s0+=24.0;
     s1+=9029.0;
    }
   } else {
    if(i20<2.2172927856445312e-05){
     s0+=130.0;
     s1+=41.0;
    } else {
     s1+=36.0;
    }
   }
  }
 }
}
if(i19<1.0016392469406128){
 if(i26<1.0077787637710571){
  if(i2<0.08023625612258911){
   if(i46<-0.0015752315521240234){
    if(i37<-3.796815872192383e-05){
     s0+=1815.0;
     s1+=101.0;
    } else {
     s0+=1716.0;
     s1+=646.0;
    }
   } else {
    if(i44<0.030358992516994476){
     s0+=57457.0;
     s1+=463.0;
    } else {
     s0+=6359.0;
     s1+=673.0;
    }
   }
  } else {
   if(i17<0.005308693740516901){
    if(i40<0.058240532875061035){
     s0+=139.0;
     s1+=756.0;
    } else {
     s0+=852.0;
     s1+=328.0;
    }
   } else {
    if(i19<0.9978466629981995){
     s0+=16.0;
    } else {
     s0+=35.0;
     s1+=929.0;
    }
   }
  }
 } else {
  if(i58<0.0010290556820109487){
   if(i27<1.140648365020752){
    if(i34<0.999830961227417){
     s0+=35.0;
     s1+=485.0;
    } else {
     s0+=248.0;
     s1+=230.0;
    }
   } else {
    if(i5<-6.295460480032489e-05){
     s1+=121.0;
    } else {
     s0+=1095.0;
     s1+=64.0;
    }
   }
  } else {
   if(i72<9.50164690038946e-07){
    if(i14<1.000899314880371){
     s0+=122.0;
     s1+=802.0;
    } else {
     s0+=7.0;
     s1+=1117.0;
    }
   } else {
    s0+=133.0;
   }
  }
 }
} else {
 if(i4<0.00047713518142700195){
  if(i23<1.0956885814666748){
   if(i1<0.11505717039108276){
    if(i29<1.3482874631881714){
     s0+=64.0;
     s1+=58.0;
    } else {
     s0+=823.0;
     s1+=92.0;
    }
   } else {
    if(i8<0.9981184005737305){
     s0+=4.0;
    } else {
     s0+=5.0;
     s1+=101.0;
    }
   }
  } else {
   if(i29<1.4041423797607422){
    if(i57<0.007035702466964722){
     s1+=3.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i4<0.00047594308853149414){
     s1+=178.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i1<0.053892821073532104){
   if(i49<-0.005450516939163208){
    if(i67<0.9991307258605957){
     s0+=29.0;
     s1+=256.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=29.0;
    } else {
     s0+=107.0;
     s1+=14.0;
    }
   }
  } else {
   if(i14<1.000428318977356){
    if(i17<0.004618789069354534){
     s0+=63.0;
     s1+=8.0;
    } else {
     s0+=49.0;
     s1+=757.0;
    }
   } else {
    if(i15<-1.7583370208740234e-05){
     s0+=40.0;
     s1+=503.0;
    } else {
     s0+=16.0;
     s1+=8294.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i24<1.0485899448394775){
  if(i69<0.0016715090023353696){
   if(i8<1.0041840076446533){
    if(i56<0.00025177234783768654){
     s0+=49278.0;
     s1+=73.0;
    } else {
     s0+=5056.0;
     s1+=157.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i14<0.9934359788894653){
    if(i73<4.447343235369772e-05){
     s0+=18.0;
     s1+=3.0;
    } else {
     s0+=955.0;
    }
   } else {
    if(i31<1.0585991144180298){
     s0+=593.0;
    } else {
     s0+=119.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i31<1.103413462638855){
   if(i37<-3.451108932495117e-05){
    if(i44<0.04060085862874985){
     s0+=752.0;
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=12.0;
    }
   } else {
    if(i41<0.00034511409467086196){
     s0+=710.0;
     s1+=36.0;
    } else {
     s0+=496.0;
     s1+=1227.0;
    }
   }
  } else {
   if(i2<0.07710814476013184){
    if(i8<1.0029840469360352){
     s0+=7201.0;
     s1+=234.0;
    } else {
     s0+=37.0;
     s1+=154.0;
    }
   } else {
    if(i63<4.1368137317476794e-05){
     s0+=31.0;
     s1+=604.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i10<1.0106477737426758){
  if(i19<1.0004339218139648){
   if(i1<0.08005461096763611){
    if(i42<-7.931383152026683e-06){
     s0+=216.0;
     s1+=119.0;
    } else {
     s0+=2579.0;
     s1+=195.0;
    }
   } else {
    if(i43<0.04318714141845703){
     s0+=85.0;
     s1+=608.0;
    } else {
     s0+=860.0;
     s1+=432.0;
    }
   }
  } else {
   if(i30<0.03516148030757904){
    if(i31<1.1065986156463623){
     s0+=44.0;
     s1+=611.0;
    } else {
     s0+=1233.0;
     s1+=734.0;
    }
   } else {
    if(i6<-6.601214408874512e-05){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=1697.0;
    }
   }
  }
 } else {
  if(i0<0.08273714780807495){
   if(i41<0.0016933187143877149){
    if(i68<1.0014464855194092){
     s1+=286.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i5<-5.075223452877253e-05){
     s0+=33.0;
     s1+=83.0;
    } else {
     s0+=380.0;
     s1+=7.0;
    }
   }
  } else {
   if(i16<0.00023502111434936523){
    if(i1<0.2006039023399353){
     s0+=190.0;
     s1+=285.0;
    } else {
     s0+=36.0;
     s1+=618.0;
    }
   } else {
    if(i2<0.09952902793884277){
     s0+=38.0;
     s1+=404.0;
    } else {
     s0+=16.0;
     s1+=8440.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i26<1.0066592693328857){
  if(i57<-0.0023464560508728027){
   if(i45<0.05001607537269592){
    if(i3<0.06505554914474487){
     s0+=5227.0;
     s1+=882.0;
    } else {
     s0+=1.0;
     s1+=244.0;
    }
   } else {
    if(i5<3.6788987927138805e-06){
     s0+=129.0;
     s1+=543.0;
    } else {
     s0+=196.0;
     s1+=20.0;
    }
   }
  } else {
   if(i0<0.08341947197914124){
    if(i44<0.03308631107211113){
     s0+=58117.0;
     s1+=308.0;
    } else {
     s0+=3948.0;
     s1+=502.0;
    }
   } else {
    if(i6<-6.175041198730469e-05){
     s0+=197.0;
     s1+=50.0;
    } else {
     s0+=601.0;
     s1+=1134.0;
    }
   }
  }
 } else {
  if(i17<0.0029214515816420317){
   if(i36<0.0007344457553699613){
    if(i68<0.999851644039154){
     s0+=55.0;
     s1+=393.0;
    } else {
     s0+=425.0;
     s1+=56.0;
    }
   } else {
    if(i31<1.253044605255127){
     s0+=1125.0;
     s1+=7.0;
    } else {
     s0+=64.0;
     s1+=45.0;
    }
   }
  } else {
   if(i37<-0.00020757317543029785){
    if(i36<0.0063611106015741825){
     s0+=185.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i1<0.08748766779899597){
     s0+=55.0;
     s1+=172.0;
    } else {
     s0+=28.0;
     s1+=1058.0;
    }
   }
  }
 }
} else {
 if(i5<-4.32968299719505e-05){
  if(i68<1.0018352270126343){
   if(i15<-9.22083854675293e-05){
    if(i17<0.011256289668381214){
     s0+=99.0;
     s1+=153.0;
    } else {
     s0+=5.0;
     s1+=518.0;
    }
   } else {
    if(i15<6.181001663208008e-05){
     s0+=22.0;
     s1+=826.0;
    } else {
     s1+=9687.0;
    }
   }
  } else {
   if(i13<0.0011017918586730957){
    if(i25<0.030224043875932693){
     s0+=66.0;
     s1+=12.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i15<-0.0003713369369506836){
     s0+=26.0;
    } else {
     s0+=8.0;
     s1+=411.0;
    }
   }
  }
 } else {
  if(i71<1.0024473667144775){
   if(i42<-1.4622428352595307e-05){
    s1+=21.0;
   } else {
    if(i11<1.0100009441375732){
     s0+=312.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i4<0.0005756020545959473){
    if(i29<1.2392117977142334){
     s1+=11.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.00024190402473323047){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=216.0;
    }
   }
  }
 }
}
if(i1<0.08510008454322815){
 if(i13<0.0005838274955749512){
  if(i24<1.0451585054397583){
   if(i57<-0.002243131399154663){
    if(i37<-5.6236982345581055e-05){
     s0+=970.0;
     s1+=7.0;
    } else {
     s0+=623.0;
     s1+=134.0;
    }
   } else {
    if(i8<1.0026172399520874){
     s0+=52270.0;
     s1+=103.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   }
  } else {
   if(i48<-0.020753592252731323){
    if(i2<0.038157910108566284){
     s0+=2016.0;
     s1+=316.0;
    } else {
     s0+=317.0;
     s1+=431.0;
    }
   } else {
    if(i0<0.0654611587524414){
     s0+=11279.0;
     s1+=671.0;
    } else {
     s0+=1081.0;
     s1+=555.0;
    }
   }
  }
 } else {
  if(i36<0.006910434924066067){
   if(i12<1.0024604797363281){
    if(i70<0.9934927225112915){
     s0+=14.0;
     s1+=58.0;
    } else {
     s0+=168.0;
     s1+=42.0;
    }
   } else {
    if(i63<1.2454805982997641e-05){
     s0+=4.0;
     s1+=676.0;
    } else {
     s0+=52.0;
     s1+=17.0;
    }
   }
  } else {
   if(i48<-0.051721006631851196){
    if(i68<1.0028058290481567){
     s0+=5.0;
     s1+=150.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   } else {
    if(i30<0.037619367241859436){
     s0+=528.0;
     s1+=12.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i5<-1.2268309546925593e-05){
  if(i14<1.001014232635498){
   if(i43<0.04665803909301758){
    if(i19<0.9986382722854614){
     s0+=34.0;
     s1+=12.0;
    } else {
     s0+=36.0;
     s1+=1890.0;
    }
   } else {
    if(i1<0.1164664626121521){
     s0+=351.0;
     s1+=81.0;
    } else {
     s0+=230.0;
     s1+=1133.0;
    }
   }
  } else {
   if(i6<5.251169204711914e-05){
    if(i5<-1.802250335458666e-05){
     s0+=79.0;
     s1+=1303.0;
    } else {
     s0+=34.0;
     s1+=3.0;
    }
   } else {
    if(i61<0.00016964967653620988){
     s0+=9.0;
     s1+=237.0;
    } else {
     s0+=8.0;
     s1+=8820.0;
    }
   }
  }
 } else {
  if(i43<0.05553320050239563){
   if(i20<-1.8894672393798828e-05){
    s0+=270.0;
   } else {
    if(i23<1.0402847528457642){
     s0+=5.0;
     s1+=153.0;
    } else {
     s0+=88.0;
     s1+=92.0;
    }
   }
  } else {
   if(i34<1.0009539127349854){
    if(i23<1.0237025022506714){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=756.0;
     s1+=54.0;
    }
   } else {
    if(i64<-0.0046823457814753056){
     s1+=12.0;
    } else {
     s0+=1.0;
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
