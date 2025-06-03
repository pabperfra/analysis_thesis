/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = laplace_box_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=15 gaussian_blur=10 gaussian_blur=15 difference_of_gaussian=20 laplace_box_of_gaussian_blur=20 sobel_of_gaussian_blur=10 median_box=5 gaussian_blur=3 gaussian_blur=5 median_box=3 top_hat_box=15 mean_box=3 sobel_of_gaussian_blur=15 sobel_of_gaussian_blur=30 mean_box=15 gaussian_blur=2 difference_of_gaussian=10 sobel_of_gaussian_blur=5 mean_box=5 variance_box=30 maximum_box=30 top_hat_box=20 difference_of_gaussian=30 mean_box=2 maximum_box=3 variance_box=20 variance_box=15 laplace_box_of_gaussian_blur=10 top_hat_box=30 maximum_box=5 sobel_of_gaussian_blur=20 variance_box=10 maximum_box=20 gaussian_blur=1 maximum_box=10 maximum_box=2 mean_box=1 maximum_box=15 sobel_of_gaussian_blur=3 mean_box=10 variance_box=5 top_hat_box=10 large_hessian_eigenvalue_of_gaussian_blur=10 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=15 large_hessian_eigenvalue_of_gaussian_blur=15 maximum_box=1 small_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=30 gaussian_blur=30 laplace_box_of_gaussian_blur=30 variance_box=3 variance_box=2 sobel_of_gaussian_blur=1 sobel_of_median_box=5 gaussian_blur=20 mean_box=30 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=3 mean_box=20 difference_of_gaussian=5 laplace_box_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=20 variance_box=1 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=30 top_hat_box=5 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=1 top_hat_box=1 small_hessian_eigenvalue_of_gaussian_blur=2 laplace_box_of_gaussian_blur=1 top_hat_box=2 difference_of_gaussian=2 laplace_box_of_gaussian_blur=3 top_hat_box=3 laplace_box_of_gaussian_blur=2 difference_of_gaussian=3
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 83
max_depth = 5
num_trees = 250
feature_importances = 0.07068256077838773,0.10501571799271577,0.08769193123249241,0.06136653155539539,0.06587837236196094,0.0523556189905847,0.05918109758673457,0.04458549365628456,0.025839054911380187,0.029197763196681697,0.024833896089649782,0.02669055118224874,0.015452767224908131,0.02089408258722919,0.017016459078842736,0.01988641096689112,0.011754110274409896,0.02536446270698318,0.012032343293615735,0.00959701360555811,0.014552895766351732,0.011422240753208386,0.00851026840940548,0.018896183339149247,0.007803837556991876,0.008822510580367371,0.007662347252618819,0.00843066091820404,0.005866582663485598,0.010260844901980348,0.008435752500148318,0.004399115671520076,0.007402484794079613,0.005072379641914975,0.005187780541380385,0.002308047367332567,0.004852173837716042,0.0031515363732754556,0.00033280517990336237,0.006350533866664229,0.0051374712189619885,0.01382837252520006,0.003150501934859973,0.0027214265925039347,0.0033545330001503223,0.0016497857046658842,0.0028321798362832087,0.0022355845963103194,0.0005655517804461576,0.0041180850351494975,0.002035811516028317,0.0025634427820237357,0.0019482016094159007,0.0016114756451841026,0.0011562924497603682,0.0005000782664142435,0.0016525530103962023,0.0026672860966639664,0.0011971893604151372,0.0016659213555006833,0.0004924330160855278,0.0016270087455640195,0.0007063141126804753,0.0006606252026685137,0.0007075003405395307,0.0005650463010716032,0.0008537429870784161,0.0005138776739959678,0.000567578925336407,0.00023838756251405143,0.00025770052940688403,0.00018516519857584977,0.0001287161684681235,0.00011403159836929334,7.104867830607113e-05,8.47333317864151e-05,0.00010855620447704496,2.8981856292782617e-05,0.00016190506865090758,7.975876706307512e-05,1.3862920936912759e-05,6.496750656817818e-05,0.00013909179857752696
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
if(i5<0.000583946704864502){
 if(i12<0.21006444096565247){
  if(i32<0.0006985495565459132){
   if(i31<1.023447036743164){
    if(i65<-0.0001885552774183452){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=3683.0;
     s1+=125.0;
    }
   } else {
    if(i32<0.0005328029510565102){
     s0+=65052.0;
     s1+=86.0;
    } else {
     s0+=9869.0;
     s1+=209.0;
    }
   }
  } else {
   if(i34<1.1160998344421387){
    if(i5<-0.00023925304412841797){
     s0+=1771.0;
     s1+=58.0;
    } else {
     s0+=1922.0;
     s1+=2976.0;
    }
   } else {
    if(i17<1.0218592882156372){
     s0+=27045.0;
     s1+=949.0;
    } else {
     s0+=102.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i46<-8.711261216376442e-06){
   if(i40<0.01629902981221676){
    if(i9<1.0325820446014404){
     s0+=15.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i45<0.0513489693403244){
     s0+=7.0;
     s1+=31.0;
    } else {
     s0+=4.0;
     s1+=651.0;
    }
   }
  } else {
   if(i57<1.0010573863983154){
    s0+=148.0;
   } else {
    if(i79<0.01678892970085144){
     s0+=24.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007044356898404658){
  if(i8<1.0134286880493164){
   if(i1<-3.8263475289568305e-05){
    if(i37<1.0852675437927246){
     s0+=1089.0;
     s1+=1928.0;
    } else {
     s0+=110.0;
     s1+=2598.0;
    }
   } else {
    if(i2<0.0009570121765136719){
     s0+=1666.0;
     s1+=406.0;
    } else {
     s0+=10.0;
     s1+=256.0;
    }
   }
  } else {
   if(i46<-1.1196774721611291e-05){
    if(i20<1.0162338018417358){
     s0+=160.0;
     s1+=1891.0;
    } else {
     s0+=38.0;
     s1+=12172.0;
    }
   } else {
    if(i49<-6.981634214753285e-05){
     s0+=38.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  s0+=3562.0;
 }
}
if(i0<6.431341171264648e-05){
 if(i23<0.2075349986553192){
  if(i13<1.016498327255249){
   if(i5<0.00028783082962036133){
    if(i28<0.0010436107404530048){
     s0+=29579.0;
     s1+=2020.0;
    } else {
     s0+=72953.0;
     s1+=683.0;
    }
   } else {
    if(i79<-0.0037521719932556152){
     s0+=1404.0;
     s1+=1154.0;
    } else {
     s0+=9205.0;
     s1+=1615.0;
    }
   }
  } else {
   if(i0<1.3649463653564453e-05){
    if(i14<0.002690570428967476){
     s0+=534.0;
     s1+=16.0;
    } else {
     s0+=259.0;
     s1+=142.0;
    }
   } else {
    if(i15<0.00033061509020626545){
     s0+=100.0;
     s1+=754.0;
    } else {
     s0+=197.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i1<-3.958183515351266e-05){
   if(i28<0.0019166652346029878){
    s0+=4.0;
   } else {
    if(i21<0.002394389593973756){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=1361.0;
    }
   }
  } else {
   if(i32<0.0010154934134334326){
    if(i48<1.101438283920288){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=172.0;
    }
   } else {
    if(i30<0.2558462619781494){
     s0+=79.0;
     s1+=51.0;
    } else {
     s0+=7.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i28<0.002360896673053503){
  if(i34<1.116804838180542){
   if(i24<0.0006277263164520264){
    s1+=2339.0;
   } else {
    s0+=134.0;
   }
  } else {
   if(i39<1.1762815713882446){
    s0+=1786.0;
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i12<0.0003789663314819336){
   if(i19<0.056831274181604385){
    if(i47<1.369237907056231e-06){
     s1+=3.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i29<-0.00023883581161499023){
    if(i46<-4.704713501268998e-05){
     s0+=22.0;
     s1+=414.0;
    } else {
     s0+=49.0;
     s1+=59.0;
    }
   } else {
    if(i41<1.0064241886138916){
     s0+=24.0;
     s1+=1524.0;
    } else {
     s1+=11952.0;
    }
   }
  }
 }
}
if(i20<1.0143831968307495){
 if(i1<-8.961516141425818e-05){
  if(i43<0.02610144019126892){
   if(i10<0.9764809608459473){
    if(i26<1.124306082725525){
     s0+=651.0;
     s1+=19.0;
    } else {
     s0+=51.0;
     s1+=41.0;
    }
   } else {
    if(i24<0.0012111365795135498){
     s0+=65.0;
     s1+=252.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i27<0.002407979918643832){
    if(i22<1.1180615425109863){
     s1+=69.0;
    } else {
     s0+=208.0;
    }
   } else {
    if(i10<0.964712381362915){
     s0+=75.0;
     s1+=65.0;
    } else {
     s0+=68.0;
     s1+=3842.0;
    }
   }
  }
 } else {
  if(i6<2.092123031616211e-05){
   if(i22<1.1162974834442139){
    if(i24<7.933378219604492e-05){
     s0+=23512.0;
     s1+=731.0;
    } else {
     s0+=5304.0;
     s1+=2346.0;
    }
   } else {
    if(i43<0.20560264587402344){
     s0+=79521.0;
     s1+=861.0;
    } else {
     s0+=121.0;
     s1+=169.0;
    }
   }
  } else {
   if(i14<0.0019531557336449623){
    if(i2<0.0015156269073486328){
     s0+=3111.0;
     s1+=51.0;
    } else {
     s0+=140.0;
     s1+=331.0;
    }
   } else {
    if(i24<0.00043469667434692383){
     s0+=260.0;
     s1+=1314.0;
    } else {
     s0+=2174.0;
     s1+=894.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007054299348965287){
  if(i14<0.0013595200143754482){
   if(i5<0.001405954360961914){
    if(i13<1.0133357048034668){
     s0+=37.0;
     s1+=7.0;
    } else {
     s0+=261.0;
     s1+=3.0;
    }
   } else {
    s1+=493.0;
   }
  } else {
   if(i41<0.9998770952224731){
    if(i1<-4.0101174818119034e-05){
     s0+=1.0;
     s1+=452.0;
    } else {
     s0+=166.0;
     s1+=2.0;
    }
   } else {
    if(i2<-4.655122756958008e-05){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=91.0;
     s1+=12575.0;
    }
   }
  }
 } else {
  s0+=484.0;
 }
}
if(i7<0.007848847657442093){
 if(i41<1.0095877647399902){
  if(i22<1.1162974834442139){
   if(i14<0.001733255572617054){
    if(i62<-0.0005755424499511719){
     s0+=4622.0;
     s1+=516.0;
    } else {
     s0+=22898.0;
     s1+=259.0;
    }
   } else {
    if(i39<1.0498223304748535){
     s0+=2219.0;
     s1+=10.0;
    } else {
     s0+=387.0;
     s1+=2889.0;
    }
   }
  } else {
   if(i8<1.0182864665985107){
    if(i5<0.00042635202407836914){
     s0+=75477.0;
     s1+=575.0;
    } else {
     s0+=4452.0;
     s1+=511.0;
    }
   } else {
    if(i21<0.004356942139565945){
     s0+=128.0;
     s1+=184.0;
    } else {
     s0+=169.0;
    }
   }
  }
 } else {
  if(i15<0.0006658517522737384){
   if(i67<5.856537427462172e-06){
    if(i59<-4.9083755584433675e-06){
     s0+=87.0;
     s1+=2877.0;
    } else {
     s0+=31.0;
    }
   } else {
    s0+=65.0;
   }
  } else {
   s0+=992.0;
  }
 }
} else {
 if(i26<1.0529450178146362){
  if(i20<1.006352186203003){
   if(i47<1.8752711184788495e-05){
    if(i20<0.981103777885437){
     s0+=24.0;
     s1+=39.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i12<0.10355958342552185){
     s0+=3415.0;
     s1+=27.0;
    } else {
     s0+=45.0;
     s1+=39.0;
    }
   }
  } else {
   s1+=66.0;
  }
 } else {
  if(i11<0.9885989427566528){
   if(i41<0.9935030937194824){
    if(i10<0.9669511914253235){
     s0+=672.0;
     s1+=138.0;
    } else {
     s0+=256.0;
     s1+=485.0;
    }
   } else {
    if(i12<0.03992652893066406){
     s0+=141.0;
     s1+=169.0;
    } else {
     s0+=45.0;
     s1+=1780.0;
    }
   }
  } else {
   if(i18<-0.003802686929702759){
    if(i12<0.13863348960876465){
     s0+=79.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   } else {
    if(i5<-0.0008123219013214111){
     s0+=67.0;
    } else {
     s0+=82.0;
     s1+=13844.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i32<0.0007162693655118346){
  if(i62<-0.0007107853889465332){
   if(i33<0.00021888082846999168){
    if(i1<-4.00510361941997e-06){
     s0+=21.0;
     s1+=183.0;
    } else {
     s0+=176.0;
     s1+=1.0;
    }
   } else {
    if(i32<0.0006629903800785542){
     s0+=12565.0;
     s1+=27.0;
    } else {
     s0+=478.0;
     s1+=31.0;
    }
   }
  } else {
   if(i33<0.0018449685303494334){
    if(i28<0.000262974645011127){
     s0+=15409.0;
     s1+=140.0;
    } else {
     s0+=47411.0;
     s1+=1.0;
    }
   } else {
    if(i61<1.000493049621582){
     s0+=3026.0;
     s1+=7.0;
    } else {
     s0+=656.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i22<1.1164028644561768){
   if(i58<0.9998154640197754){
    if(i51<0.9995039701461792){
     s0+=1578.0;
    } else {
     s0+=210.0;
     s1+=192.0;
    }
   } else {
    if(i4<0.9994384050369263){
     s0+=513.0;
     s1+=86.0;
    } else {
     s0+=402.0;
     s1+=2600.0;
    }
   }
  } else {
   if(i11<1.0203540325164795){
    if(i6<7.927417755126953e-06){
     s0+=24941.0;
     s1+=492.0;
    } else {
     s0+=2403.0;
     s1+=710.0;
    }
   } else {
    if(i57<1.0026357173919678){
     s0+=67.0;
     s1+=597.0;
    } else {
     s0+=110.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i1<-7.266070315381512e-05){
  if(i23<0.044857680797576904){
   if(i47<3.2293264666805044e-06){
    if(i40<0.010949388146400452){
     s0+=8.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i51<1.000322699546814){
     s0+=183.0;
     s1+=4.0;
    } else {
     s0+=229.0;
     s1+=109.0;
    }
   }
  } else {
   if(i20<1.0187439918518066){
    if(i15<0.0007066903635859489){
     s0+=235.0;
     s1+=4681.0;
    } else {
     s0+=333.0;
    }
   } else {
    if(i4<1.0006039142608643){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=11385.0;
    }
   }
  }
 } else {
  if(i47<-1.2546299331006594e-05){
   if(i50<-6.8142744567012414e-06){
    s0+=58.0;
   } else {
    if(i24<0.00062522292137146){
     s1+=578.0;
    } else {
     s0+=46.0;
     s1+=113.0;
    }
   }
  } else {
   if(i7<0.004073903895914555){
    if(i27<0.0007024687365628779){
     s0+=1311.0;
     s1+=150.0;
    } else {
     s0+=3186.0;
     s1+=11.0;
    }
   } else {
    if(i58<1.0034277439117432){
     s0+=286.0;
     s1+=1644.0;
    } else {
     s0+=757.0;
     s1+=315.0;
    }
   }
  }
 }
}
if(i2<0.0009763836860656738){
 if(i23<0.20414844155311584){
  if(i7<0.003946851938962936){
   if(i28<0.0007011392735876143){
    if(i9<0.9959514141082764){
     s0+=4411.0;
     s1+=642.0;
    } else {
     s0+=24008.0;
     s1+=430.0;
    }
   } else {
    if(i35<1.0341966152191162){
     s0+=63209.0;
     s1+=236.0;
    } else {
     s0+=369.0;
     s1+=48.0;
    }
   }
  } else {
   if(i5<-5.167722702026367e-05){
    if(i81<-0.013276398181915283){
     s0+=815.0;
     s1+=90.0;
    } else {
     s0+=16790.0;
     s1+=165.0;
    }
   } else {
    if(i10<0.9914731979370117){
     s0+=3665.0;
     s1+=1088.0;
    } else {
     s0+=914.0;
     s1+=3721.0;
    }
   }
  }
 } else {
  if(i64<-0.0009748468291945755){
   if(i46<-9.170661542157177e-06){
    if(i39<1.2320208549499512){
     s0+=56.0;
     s1+=289.0;
    } else {
     s0+=18.0;
     s1+=1203.0;
    }
   } else {
    if(i68<0.0008626023773103952){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=173.0;
     s1+=1.0;
    }
   }
  } else {
   if(i45<0.06009276956319809){
    if(i25<1.0249886512756348){
     s0+=165.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i28<0.0021551037207245827){
     s0+=8.0;
    } else {
     s0+=7.0;
     s1+=115.0;
    }
   }
  }
 }
} else {
 if(i7<0.0036230331752449274){
  if(i15<0.00021887900948058814){
   if(i64<-0.0027468521147966385){
    s0+=8.0;
   } else {
    if(i2<0.0011683106422424316){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=724.0;
    }
   }
  } else {
   if(i28<0.008786985650658607){
    s0+=1620.0;
   } else {
    s1+=30.0;
   }
  }
 } else {
  if(i51<0.9983727931976318){
   s0+=240.0;
  } else {
   if(i30<0.01153591275215149){
    if(i64<0.0027501422446221113){
     s0+=47.0;
     s1+=16.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i0<8.445978164672852e-05){
     s0+=112.0;
     s1+=1252.0;
    } else {
     s0+=44.0;
     s1+=14081.0;
    }
   }
  }
 }
}
if(i2<0.0009593367576599121){
 if(i12<0.19902536273002625){
  if(i5<0.0003134608268737793){
   if(i36<1.0867384672164917){
    if(i14<0.0015701169613748789){
     s0+=30731.0;
     s1+=524.0;
    } else {
     s0+=3500.0;
     s1+=1597.0;
    }
   } else {
    if(i51<1.0025966167449951){
     s0+=69653.0;
     s1+=684.0;
    } else {
     s0+=63.0;
     s1+=51.0;
    }
   }
  } else {
   if(i7<0.004288777709007263){
    if(i47<9.461456102144439e-06){
     s0+=6756.0;
     s1+=53.0;
    } else {
     s0+=1059.0;
     s1+=165.0;
    }
   } else {
    if(i18<-0.0013014376163482666){
     s0+=1925.0;
     s1+=909.0;
    } else {
     s0+=236.0;
     s1+=2314.0;
    }
   }
  }
 } else {
  if(i32<0.0005180564476177096){
   if(i46<-5.8751393225975335e-06){
    if(i10<1.0016491413116455){
     s1+=3.0;
    } else {
     s0+=27.0;
    }
   } else {
    s0+=173.0;
   }
  } else {
   if(i19<0.029374059289693832){
    if(i46<-9.218598279403523e-06){
     s0+=52.0;
     s1+=146.0;
    } else {
     s0+=76.0;
     s1+=1.0;
    }
   } else {
    if(i6<-4.3720006942749023e-05){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=1485.0;
    }
   }
  }
 }
} else {
 if(i21<0.0023432746529579163){
  if(i42<0.0010659211548045278){
   if(i33<0.00016847002552822232){
    s0+=65.0;
   } else {
    if(i46<-7.287032349267974e-05){
     s0+=8.0;
    } else {
     s0+=16.0;
     s1+=2400.0;
    }
   }
  } else {
   if(i36<1.088707685470581){
    s1+=50.0;
   } else {
    s0+=1908.0;
   }
  }
 } else {
  if(i44<0.00029488440486602485){
   if(i23<0.0940406322479248){
    if(i82<0.0022668540477752686){
     s0+=20.0;
     s1+=496.0;
    } else {
     s0+=36.0;
     s1+=7.0;
    }
   } else {
    if(i49<-0.00048452330520376563){
     s0+=1.0;
     s1+=10723.0;
    } else {
     s0+=19.0;
     s1+=2749.0;
    }
   }
  } else {
   if(i52<1.1622905731201172e-05){
    if(i63<-0.0064678192138671875){
     s0+=43.0;
     s1+=8.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i6<6.0439109802246094e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=67.0;
    }
   }
  }
 }
}
if(i35<1.0281920433044434){
 if(i14<0.0018166388617828488){
  if(i6<4.750490188598633e-05){
   if(i14<0.0012835743837058544){
    if(i17<0.9958218932151794){
     s0+=17170.0;
     s1+=236.0;
    } else {
     s0+=64291.0;
     s1+=173.0;
    }
   } else {
    if(i27<0.0006169977132230997){
     s0+=2127.0;
     s1+=704.0;
    } else {
     s0+=9384.0;
     s1+=103.0;
    }
   }
  } else {
   if(i50<-4.351619736553403e-06){
    if(i82<-0.003186464309692383){
     s1+=1.0;
    } else {
     s0+=358.0;
    }
   } else {
    if(i16<1.0085034370422363){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=680.0;
    }
   }
  }
 } else {
  if(i29<-0.00020200014114379883){
   if(i3<0.9992678165435791){
    if(i19<0.06780664622783661){
     s0+=14698.0;
     s1+=541.0;
    } else {
     s0+=122.0;
     s1+=211.0;
    }
   } else {
    if(i19<0.028430938720703125){
     s0+=859.0;
     s1+=183.0;
    } else {
     s0+=223.0;
     s1+=1226.0;
    }
   }
  } else {
   if(i51<0.9995690584182739){
    if(i56<0.056149549782276154){
     s0+=3606.0;
     s1+=40.0;
    } else {
     s0+=1.0;
     s1+=132.0;
    }
   } else {
    if(i32<0.0011124468874186277){
     s0+=535.0;
     s1+=4988.0;
    } else {
     s0+=1650.0;
     s1+=2688.0;
    }
   }
  }
 }
} else {
 if(i5<0.00026679039001464844){
  if(i43<0.2262495756149292){
   if(i32<0.0006474092369899154){
    if(i46<-8.465556675218977e-06){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=535.0;
    }
   } else {
    if(i2<-0.00015938282012939453){
     s0+=220.0;
     s1+=47.0;
    } else {
     s0+=7.0;
     s1+=47.0;
    }
   }
  } else {
   if(i7<0.00559232197701931){
    if(i41<0.9857063889503479){
     s1+=2.0;
    } else {
     s0+=69.0;
    }
   } else {
    s1+=225.0;
   }
  }
 } else {
  if(i36<1.1757044792175293){
   if(i24<0.0005538463592529297){
    if(i44<0.00010324838513042778){
     s0+=32.0;
     s1+=1059.0;
    } else {
     s0+=18.0;
     s1+=4.0;
    }
   } else {
    if(i2<0.0019396543502807617){
     s0+=396.0;
     s1+=105.0;
    } else {
     s0+=6.0;
     s1+=159.0;
    }
   }
  } else {
   if(i29<-0.0005404949188232422){
    if(i31<1.2105140686035156){
     s0+=47.0;
     s1+=4.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i31<1.0847094058990479){
     s0+=9.0;
    } else {
     s0+=35.0;
     s1+=10819.0;
    }
   }
  }
 }
}
if(i41<1.0086265802383423){
 if(i19<0.05531063675880432){
  if(i14<0.0017650627996772528){
   if(i62<-0.0006379485130310059){
    if(i41<0.9942938685417175){
     s0+=6977.0;
     s1+=6.0;
    } else {
     s0+=8459.0;
     s1+=615.0;
    }
   } else {
    if(i51<1.0002104043960571){
     s0+=40953.0;
     s1+=12.0;
    } else {
     s0+=35771.0;
     s1+=503.0;
    }
   }
  } else {
   if(i32<0.0011274379212409258){
    if(i6<-1.9669532775878906e-06){
     s0+=3635.0;
     s1+=227.0;
    } else {
     s0+=1085.0;
     s1+=3859.0;
    }
   } else {
    if(i26<1.121600866317749){
     s0+=16605.0;
     s1+=1121.0;
    } else {
     s0+=636.0;
     s1+=1203.0;
    }
   }
  }
 } else {
  if(i4<0.9986008405685425){
   if(i53<0.008172482252120972){
    if(i1<-0.00012637172767426819){
     s1+=1.0;
    } else {
     s0+=637.0;
    }
   } else {
    if(i30<0.0685352087020874){
     s0+=43.0;
     s1+=2.0;
    } else {
     s1+=145.0;
    }
   }
  } else {
   if(i48<0.8948323726654053){
    if(i38<0.7907041311264038){
     s0+=16.0;
     s1+=44.0;
    } else {
     s0+=92.0;
     s1+=17.0;
    }
   } else {
    if(i1<1.1304480722174048e-05){
     s0+=36.0;
     s1+=2739.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i1<-7.3887305916287e-05){
  if(i24<0.0017117559909820557){
   if(i27<0.0023111337795853615){
    if(i39<1.116863489151001){
     s0+=31.0;
     s1+=1040.0;
    } else {
     s0+=153.0;
    }
   } else {
    if(i3<1.0017344951629639){
     s0+=5.0;
     s1+=28.0;
    } else {
     s1+=11418.0;
    }
   }
  } else {
   s0+=93.0;
  }
 } else {
  if(i15<0.0002588334318716079){
   if(i22<1.2545855045318604){
    s1+=1125.0;
   } else {
    if(i14<0.002263427246361971){
     s0+=152.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i2<0.0023493170738220215){
    if(i19<0.01853947900235653){
     s0+=1296.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=14.0;
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i3<1.0035377740859985){
  if(i14<0.001723489840514958){
   if(i28<0.00033641717163845897){
    if(i44<3.965718133258633e-05){
     s0+=18074.0;
     s1+=81.0;
    } else {
     s0+=1119.0;
     s1+=587.0;
    }
   } else {
    if(i10<1.0078331232070923){
     s0+=69783.0;
     s1+=301.0;
    } else {
     s0+=141.0;
     s1+=31.0;
    }
   }
  } else {
   if(i19<0.06411650776863098){
    if(i21<0.0009219899657182395){
     s0+=2155.0;
     s1+=2251.0;
    } else {
     s0+=19755.0;
     s1+=1474.0;
    }
   } else {
    if(i10<0.9664340019226074){
     s0+=177.0;
     s1+=83.0;
    } else {
     s0+=25.0;
     s1+=731.0;
    }
   }
  }
 } else {
  if(i28<0.0020751641131937504){
   if(i39<1.1161171197891235){
    if(i22<1.067186713218689){
     s0+=789.0;
    } else {
     s0+=347.0;
     s1+=1192.0;
    }
   } else {
    if(i10<1.000472068786621){
     s0+=5.0;
     s1+=33.0;
    } else {
     s0+=2794.0;
     s1+=26.0;
    }
   }
  } else {
   if(i7<0.002480310620740056){
    if(i22<1.3384385108947754){
     s1+=3.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i63<-0.008291661739349365){
     s0+=41.0;
     s1+=100.0;
    } else {
     s0+=132.0;
     s1+=2735.0;
    }
   }
  }
 }
} else {
 if(i51<0.9997625350952148){
  if(i31<1.1910490989685059){
   if(i29<5.882978439331055e-05){
    if(i67<1.986125425901264e-06){
     s1+=10.0;
    } else {
     s0+=30.0;
    }
   } else {
    s0+=337.0;
   }
  } else {
   if(i0<3.6656856536865234e-06){
    if(i15<0.00034467087243683636){
     s0+=23.0;
    } else {
     s1+=27.0;
    }
   } else {
    s1+=444.0;
   }
  }
 } else {
  if(i6<1.1980533599853516e-05){
   if(i1<-6.386818131431937e-05){
    if(i82<0.0022786855697631836){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=90.0;
    }
   } else {
    if(i40<0.057453759014606476){
     s0+=192.0;
    } else {
     s0+=6.0;
     s1+=23.0;
    }
   }
  } else {
   if(i9<1.0213284492492676){
    if(i22<1.1180615425109863){
     s1+=1205.0;
    } else {
     s0+=621.0;
     s1+=1411.0;
    }
   } else {
    if(i4<1.0053966045379639){
     s0+=81.0;
     s1+=2472.0;
    } else {
     s0+=5.0;
     s1+=8854.0;
    }
   }
  }
 }
}
if(i29<0.00020843744277954102){
 if(i3<1.0031101703643799){
  if(i7<0.01398899033665657){
   if(i11<1.0181350708007812){
    if(i24<7.075071334838867e-05){
     s0+=75631.0;
     s1+=751.0;
    } else {
     s0+=32720.0;
     s1+=3141.0;
    }
   } else {
    if(i39<1.0905578136444092){
     s1+=207.0;
    } else {
     s0+=861.0;
     s1+=362.0;
    }
   }
  } else {
   if(i62<-0.012142270803451538){
    if(i19<0.06408624351024628){
     s0+=928.0;
     s1+=41.0;
    } else {
     s0+=63.0;
     s1+=115.0;
    }
   } else {
    if(i31<1.0502392053604126){
     s0+=23.0;
    } else {
     s0+=36.0;
     s1+=1113.0;
    }
   }
  }
 } else {
  if(i27<0.0022065388038754463){
   if(i68<0.0004204477882012725){
    if(i7<0.0033763954415917397){
     s0+=1349.0;
     s1+=53.0;
    } else {
     s0+=26.0;
     s1+=883.0;
    }
   } else {
    if(i8<1.0213193893432617){
     s0+=3483.0;
     s1+=61.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   }
  } else {
   if(i53<0.0005392938619479537){
    if(i56<0.02703169174492359){
     s0+=150.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i31<1.1343250274658203){
     s0+=215.0;
     s1+=768.0;
    } else {
     s0+=89.0;
     s1+=3578.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007051074644550681){
  if(i4<1.0015170574188232){
   if(i53<0.005561408586800098){
    s0+=166.0;
   } else {
    s1+=121.0;
   }
  } else {
   if(i6<0.0002281665802001953){
    if(i1<-5.9030757256550714e-05){
     s0+=8.0;
     s1+=12582.0;
    } else {
     s0+=23.0;
     s1+=484.0;
    }
   } else {
    s0+=47.0;
   }
  }
 } else {
  s0+=766.0;
 }
}
if(i25<1.02119779586792){
 if(i5<0.0009071230888366699){
  if(i7<0.0037569967098534107){
   if(i28<0.0006927973590791225){
    if(i62<-0.0006280839443206787){
     s0+=3450.0;
     s1+=631.0;
    } else {
     s0+=24359.0;
     s1+=360.0;
    }
   } else {
    if(i20<1.0097553730010986){
     s0+=60340.0;
     s1+=171.0;
    } else {
     s0+=1056.0;
     s1+=34.0;
    }
   }
  } else {
   if(i3<0.9985599517822266){
    if(i68<0.008093424141407013){
     s0+=20620.0;
     s1+=637.0;
    } else {
     s0+=172.0;
     s1+=164.0;
    }
   } else {
    if(i6<-5.5730342864990234e-06){
     s0+=472.0;
     s1+=24.0;
    } else {
     s0+=1398.0;
     s1+=3784.0;
    }
   }
  }
 } else {
  if(i7<0.004014371428638697){
   if(i28<0.0010249356273561716){
    if(i33<0.00017247122013941407){
     s0+=113.0;
    } else {
     s0+=2.0;
     s1+=471.0;
    }
   } else {
    if(i62<-0.0010887980461120605){
     s0+=14.0;
     s1+=58.0;
    } else {
     s0+=1896.0;
     s1+=42.0;
    }
   }
  } else {
   if(i50<-6.133764145488385e-06){
    if(i36<1.3063979148864746){
     s0+=164.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i43<0.007735013961791992){
     s0+=193.0;
     s1+=197.0;
    } else {
     s0+=456.0;
     s1+=4367.0;
    }
   }
  }
 }
} else {
 if(i1<-5.984936069580726e-05){
  if(i28<0.0026629245840013027){
   if(i59<-1.352499566564802e-05){
    if(i45<0.06820124387741089){
     s0+=90.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i52<1.1801719665527344e-05){
     s0+=31.0;
     s1+=882.0;
    } else {
     s0+=27.0;
     s1+=6.0;
    }
   }
  } else {
   if(i11<1.0326900482177734){
    if(i4<1.0003175735473633){
     s0+=23.0;
     s1+=20.0;
    } else {
     s0+=39.0;
     s1+=1321.0;
    }
   } else {
    if(i39<1.1399215459823608){
     s0+=1.0;
    } else {
     s0+=27.0;
     s1+=10502.0;
    }
   }
  }
 } else {
  if(i6<1.1861324310302734e-05){
   if(i7<0.005569516681134701){
    if(i46<-6.761109034414403e-06){
     s0+=172.0;
     s1+=31.0;
    } else {
     s0+=538.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.9961003661155701){
     s0+=42.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  } else {
   if(i58<1.0037498474121094){
    if(i52<1.233816146850586e-05){
     s0+=89.0;
     s1+=705.0;
    } else {
     s0+=174.0;
     s1+=45.0;
    }
   } else {
    if(i28<0.007415476720780134){
     s0+=313.0;
     s1+=12.0;
    } else {
     s0+=34.0;
     s1+=28.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i9<1.0111148357391357){
  if(i14<0.0017283367924392223){
   if(i46<-1.8774631826090626e-05){
    if(i27<0.002308341208845377){
     s0+=2.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i42<0.0004960155347362161){
     s0+=30101.0;
     s1+=736.0;
    } else {
     s0+=59139.0;
     s1+=185.0;
    }
   }
  } else {
   if(i2<-0.0005321204662322998){
    if(i71<0.18700218200683594){
     s0+=17202.0;
     s1+=642.0;
    } else {
     s0+=27.0;
     s1+=92.0;
    }
   } else {
    if(i57<1.0000451803207397){
     s0+=2098.0;
     s1+=149.0;
    } else {
     s0+=1161.0;
     s1+=2813.0;
    }
   }
  }
 } else {
  if(i1<-3.2337156881112605e-05){
   if(i21<0.002557814586907625){
    if(i39<1.0963833332061768){
     s1+=379.0;
    } else {
     s0+=335.0;
     s1+=102.0;
    }
   } else {
    if(i36<1.1413248777389526){
     s0+=36.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=617.0;
    }
   }
  } else {
   if(i21<0.0002994166570715606){
    if(i37<1.0961744785308838){
     s1+=23.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i30<0.1608353555202484){
     s0+=300.0;
     s1+=1.0;
    } else {
     s0+=139.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i1<-7.051551074255258e-05){
  if(i44<0.00031042908085510135){
   if(i4<1.0019800662994385){
    if(i71<0.16194957494735718){
     s0+=189.0;
     s1+=15.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i39<1.1595423221588135){
     s0+=347.0;
     s1+=1318.0;
    } else {
     s0+=185.0;
     s1+=14488.0;
    }
   }
  } else {
   if(i43<0.06643182039260864){
    if(i37<1.0388901233673096){
     s0+=269.0;
     s1+=21.0;
    } else {
     s0+=11.0;
     s1+=43.0;
    }
   } else {
    if(i32<0.00399467907845974){
     s0+=18.0;
     s1+=159.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i14<0.001774258678779006){
   if(i0<0.0001208186149597168){
    if(i7<0.0026176651008427143){
     s0+=2662.0;
     s1+=1.0;
    } else {
     s0+=127.0;
     s1+=41.0;
    }
   } else {
    if(i21<0.001148149138316512){
     s1+=271.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i39<1.117074966430664){
    if(i57<1.0006582736968994){
     s0+=132.0;
     s1+=1.0;
    } else {
     s0+=240.0;
     s1+=1124.0;
    }
   } else {
    if(i31<1.1344192028045654){
     s0+=1512.0;
     s1+=320.0;
    } else {
     s0+=190.0;
     s1+=762.0;
    }
   }
  }
 }
}
if(i1<-7.861674384912476e-05){
 if(i10<0.9754714965820312){
  if(i12<0.07035401463508606){
   if(i72<0.050970401614904404){
    if(i59<-2.1402129277703352e-05){
     s0+=9.0;
     s1+=13.0;
    } else {
     s0+=959.0;
     s1+=26.0;
    }
   } else {
    if(i40<0.05498940497636795){
     s0+=13.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=59.0;
    }
   }
  } else {
   if(i63<-0.009466350078582764){
    if(i58<1.0005005598068237){
     s1+=11.0;
    } else {
     s0+=38.0;
     s1+=4.0;
    }
   } else {
    if(i6<2.1189451217651367e-05){
     s0+=3.0;
     s1+=131.0;
    } else {
     s0+=25.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i7<0.004952756687998772){
   if(i41<1.0151145458221436){
    if(i3<1.0106101036071777){
     s0+=415.0;
     s1+=72.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i10<1.0113180875778198){
     s0+=6.0;
    } else {
     s1+=626.0;
    }
   }
  } else {
   if(i57<1.0005991458892822){
    if(i12<0.17035692930221558){
     s0+=189.0;
     s1+=28.0;
    } else {
     s1+=399.0;
    }
   } else {
    if(i2<0.0004786252975463867){
     s0+=133.0;
     s1+=1003.0;
    } else {
     s0+=46.0;
     s1+=14374.0;
    }
   }
  }
 }
} else {
 if(i0<6.335973739624023e-05){
  if(i20<1.0090599060058594){
   if(i22<1.1162974834442139){
    if(i40<0.010216894559562206){
     s0+=21799.0;
     s1+=469.0;
    } else {
     s0+=8085.0;
     s1+=2582.0;
    }
   } else {
    if(i23<0.23462852835655212){
     s0+=80745.0;
     s1+=1241.0;
    } else {
     s0+=83.0;
     s1+=241.0;
    }
   }
  } else {
   if(i36<1.0904107093811035){
    if(i22<1.116804838180542){
     s0+=7.0;
     s1+=566.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i25<1.024297833442688){
     s0+=2018.0;
     s1+=120.0;
    } else {
     s0+=318.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i53<0.0007963000680319965){
   if(i21<0.0002468889288138598){
    s0+=84.0;
   } else {
    if(i15<0.00032414172892458737){
     s1+=1176.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i36<1.1703872680664062){
    if(i45<0.055023059248924255){
     s0+=1504.0;
     s1+=71.0;
    } else {
     s0+=4.0;
     s1+=152.0;
    }
   } else {
    if(i43<0.08933141827583313){
     s0+=42.0;
     s1+=129.0;
    } else {
     s0+=4.0;
     s1+=382.0;
    }
   }
  }
 }
}
if(i2<0.0009575486183166504){
 if(i5<0.0003272891044616699){
  if(i23<0.23277127742767334){
   if(i39<1.0903575420379639){
    if(i30<0.06142875552177429){
     s0+=25073.0;
     s1+=1396.0;
    } else {
     s0+=1261.0;
     s1+=604.0;
    }
   } else {
    if(i57<1.003686547279358){
     s0+=78419.0;
     s1+=882.0;
    } else {
     s0+=53.0;
     s1+=56.0;
    }
   }
  } else {
   if(i1<-3.559455944923684e-05){
    if(i60<0.06920342147350311){
     s0+=3.0;
     s1+=19.0;
    } else {
     s1+=263.0;
    }
   } else {
    if(i48<1.1157262325286865){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=93.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i60<0.04635581374168396){
   if(i1<-4.655412340071052e-05){
    if(i32<0.001311680767685175){
     s0+=132.0;
     s1+=759.0;
    } else {
     s0+=480.0;
     s1+=189.0;
    }
   } else {
    if(i24<0.0004037022590637207){
     s0+=3179.0;
     s1+=667.0;
    } else {
     s0+=3785.0;
     s1+=63.0;
    }
   }
  } else {
   if(i30<0.09012669324874878){
    if(i2<-0.00012809038162231445){
     s0+=918.0;
     s1+=82.0;
    } else {
     s0+=359.0;
     s1+=392.0;
    }
   } else {
    if(i56<0.04099779576063156){
     s0+=605.0;
     s1+=478.0;
    } else {
     s0+=169.0;
     s1+=2068.0;
    }
   }
  }
 }
} else {
 if(i40<0.018635030835866928){
  if(i53<0.0007985817501321435){
   if(i42<0.0001345416094409302){
    s0+=76.0;
   } else {
    if(i50<-5.262388185656164e-06){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=1952.0;
    }
   }
  } else {
   if(i9<1.0206258296966553){
    if(i36<1.1729364395141602){
     s0+=1722.0;
     s1+=48.0;
    } else {
     s0+=7.0;
     s1+=140.0;
    }
   } else {
    if(i39<1.1139039993286133){
     s0+=3.0;
     s1+=8.0;
    } else {
     s1+=692.0;
    }
   }
  }
 } else {
  if(i15<0.0007150453748181462){
   if(i30<0.00024014711380004883){
    if(i47<9.337098163086921e-06){
     s0+=1.0;
     s1+=40.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   } else {
    if(i1<-8.05398085503839e-05){
     s0+=25.0;
     s1+=12544.0;
    } else {
     s0+=101.0;
     s1+=868.0;
    }
   }
  } else {
   s0+=126.0;
  }
 }
}
if(i17<1.0176864862442017){
 if(i0<7.575750350952148e-05){
  if(i23<0.21786090731620789){
   if(i5<0.00031238794326782227){
    if(i40<0.011364723555743694){
     s0+=62243.0;
     s1+=420.0;
    } else {
     s0+=41547.0;
     s1+=2345.0;
    }
   } else {
    if(i56<0.032528530806303024){
     s0+=9008.0;
     s1+=1491.0;
    } else {
     s0+=1254.0;
     s1+=1477.0;
    }
   }
  } else {
   if(i53<0.0024137813597917557){
    if(i63<-0.002318441867828369){
     s1+=3.0;
    } else {
     s0+=109.0;
    }
   } else {
    if(i59<-2.0938205125276e-06){
     s0+=12.0;
     s1+=681.0;
    } else {
     s0+=19.0;
    }
   }
  }
 } else {
  if(i7<0.004184725694358349){
   if(i34<1.0958912372589111){
    s1+=428.0;
   } else {
    if(i2<0.002456188201904297){
     s0+=930.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i15<0.0007143407128751278){
    if(i10<0.9795496463775635){
     s0+=43.0;
     s1+=128.0;
    } else {
     s0+=62.0;
     s1+=2952.0;
    }
   } else {
    s0+=150.0;
   }
  }
 }
} else {
 if(i59<-3.0207877443899633e-06){
  if(i15<0.0007270687492564321){
   if(i0<-1.9550323486328125e-05){
    if(i39<1.233483076095581){
     s0+=205.0;
     s1+=11.0;
    } else {
     s0+=32.0;
     s1+=119.0;
    }
   } else {
    if(i2<0.0009278059005737305){
     s0+=235.0;
     s1+=1526.0;
    } else {
     s0+=44.0;
     s1+=12403.0;
    }
   }
  } else {
   s0+=416.0;
  }
 } else {
  if(i61<1.0016058683395386){
   s0+=447.0;
  } else {
   if(i44<7.486112008336931e-05){
    s0+=33.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i2<0.0009618401527404785){
 if(i7<0.007925176993012428){
  if(i13<1.0132766962051392){
   if(i6<1.6391277313232422e-05){
    if(i21<0.0008588301716372371){
     s0+=29894.0;
     s1+=2404.0;
    } else {
     s0+=72226.0;
     s1+=434.0;
    }
   } else {
    if(i14<0.0019987719133496284){
     s0+=3532.0;
     s1+=75.0;
    } else {
     s0+=1935.0;
     s1+=763.0;
    }
   }
  } else {
   if(i42<0.0005877050571143627){
    if(i4<1.0043919086456299){
     s1+=263.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i46<-1.5702116797911003e-05){
     s0+=735.0;
     s1+=420.0;
    } else {
     s0+=1588.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i3<0.9985396265983582){
   if(i26<1.115910530090332){
    if(i30<0.14598992466926575){
     s0+=3942.0;
     s1+=97.0;
    } else {
     s0+=81.0;
     s1+=70.0;
    }
   } else {
    if(i40<0.08533301949501038){
     s0+=90.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=356.0;
    }
   }
  } else {
   if(i9<0.964215099811554){
    if(i26<1.052932858467102){
     s0+=182.0;
     s1+=36.0;
    } else {
     s0+=129.0;
     s1+=401.0;
    }
   } else {
    if(i82<-0.0007184445858001709){
     s0+=106.0;
     s1+=743.0;
    } else {
     s0+=24.0;
     s1+=1843.0;
    }
   }
  }
 }
} else {
 if(i10<1.0146316289901733){
  if(i34<1.176405668258667){
   if(i28<0.001210490008816123){
    if(i15<0.0002663549967110157){
     s1+=1228.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i15<0.00012134078133385628){
     s1+=11.0;
    } else {
     s0+=1827.0;
    }
   }
  } else {
   if(i32<0.00043352140346542){
    if(i44<0.00010128670692211017){
     s1+=20.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i12<0.003440648317337036){
     s0+=43.0;
     s1+=19.0;
    } else {
     s0+=39.0;
     s1+=2793.0;
    }
   }
  }
 } else {
  if(i1<-6.20197388343513e-05){
   if(i67<2.4342924007214606e-05){
    if(i6<0.00028771162033081055){
     s0+=2.0;
     s1+=12207.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=5.0;
   }
  } else {
   if(i58<1.0036022663116455){
    s1+=56.0;
   } else {
    s0+=46.0;
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i25<1.023249626159668){
  if(i72<0.025075960904359818){
   if(i56<0.19764700531959534){
    if(i57<0.999946117401123){
     s0+=52964.0;
     s1+=348.0;
    } else {
     s0+=59563.0;
     s1+=4787.0;
    }
   } else {
    if(i0<-4.8160552978515625e-05){
     s0+=145.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=298.0;
    }
   }
  } else {
   if(i30<0.04093208909034729){
    if(i52<6.854534149169922e-06){
     s0+=690.0;
     s1+=47.0;
    } else {
     s0+=157.0;
     s1+=116.0;
    }
   } else {
    if(i33<0.0028531274292618036){
     s0+=73.0;
     s1+=2.0;
    } else {
     s0+=73.0;
     s1+=454.0;
    }
   }
  }
 } else {
  if(i7<0.005052757915109396){
   if(i31<1.1426570415496826){
    if(i1<-6.93048641551286e-05){
     s0+=29.0;
     s1+=81.0;
    } else {
     s0+=532.0;
     s1+=31.0;
    }
   } else {
    s0+=331.0;
   }
  } else {
   if(i4<0.9954206943511963){
    if(i39<1.3897883892059326){
     s0+=13.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i10<0.9851242303848267){
     s0+=30.0;
     s1+=45.0;
    } else {
     s0+=33.0;
     s1+=1485.0;
    }
   }
  }
 }
} else {
 if(i34<1.176405668258667){
  if(i22<1.116804838180542){
   if(i33<0.00017795692838262767){
    s0+=85.0;
   } else {
    s1+=2404.0;
   }
  } else {
   s0+=1924.0;
  }
 } else {
  if(i10<0.976647138595581){
   if(i7<0.021538930013775826){
    if(i27<0.010484905913472176){
     s1+=14.0;
    } else {
     s0+=62.0;
     s1+=10.0;
    }
   } else {
    if(i71<0.004868835210800171){
     s1+=62.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   }
  } else {
   if(i2<0.0009279251098632812){
    if(i42<0.003268555272370577){
     s0+=10.0;
    } else {
     s0+=7.0;
     s1+=53.0;
    }
   } else {
    if(i30<0.10498163104057312){
     s0+=41.0;
     s1+=578.0;
    } else {
     s0+=13.0;
     s1+=13228.0;
    }
   }
  }
 }
}
if(i3<1.0037140846252441){
 if(i37<1.1403067111968994){
  if(i40<0.013100909069180489){
   if(i34<1.0905578136444092){
    if(i13<1.0085535049438477){
     s0+=20291.0;
     s1+=534.0;
    } else {
     s0+=139.0;
     s1+=203.0;
    }
   } else {
    if(i69<0.004075030330568552){
     s0+=51419.0;
     s1+=140.0;
    } else {
     s0+=337.0;
     s1+=27.0;
    }
   }
  } else {
   if(i6<6.496906280517578e-06){
    if(i49<5.203545879339799e-05){
     s0+=24775.0;
     s1+=1568.0;
    } else {
     s0+=9557.0;
     s1+=46.0;
    }
   } else {
    if(i29<-0.00020051002502441406){
     s0+=3099.0;
     s1+=849.0;
    } else {
     s0+=1831.0;
     s1+=1963.0;
    }
   }
  }
 } else {
  if(i46<-8.450024324702099e-06){
   if(i57<1.003780484199524){
    if(i19<0.024022337049245834){
     s0+=33.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=1089.0;
    }
   } else {
    if(i22<1.3641953468322754){
     s0+=38.0;
     s1+=1.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i47<1.6074967561507947e-06){
    if(i45<0.18375679850578308){
     s0+=62.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=387.0;
   }
  }
 }
} else {
 if(i28<0.002119396347552538){
  if(i31<1.0867276191711426){
   if(i21<0.00024251206195913255){
    s0+=742.0;
   } else {
    if(i22<1.116804838180542){
     s1+=2430.0;
    } else {
     s0+=358.0;
    }
   }
  } else {
   if(i42<0.000916891498491168){
    if(i47<8.494416761095636e-06){
     s1+=220.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i66<0.0002864728157874197){
     s0+=3192.0;
     s1+=6.0;
    } else {
     s0+=11.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i31<1.0789777040481567){
   if(i63<-0.0033370256423950195){
    s1+=25.0;
   } else {
    s0+=48.0;
   }
  } else {
   if(i3<1.0060372352600098){
    if(i43<0.0958554744720459){
     s0+=163.0;
     s1+=258.0;
    } else {
     s0+=37.0;
     s1+=1371.0;
    }
   } else {
    if(i30<0.0757007896900177){
     s0+=14.0;
     s1+=259.0;
    } else {
     s0+=15.0;
     s1+=13226.0;
    }
   }
  }
 }
}
if(i13<1.0165379047393799){
 if(i26<1.1402318477630615){
  if(i18<0.0012375712394714355){
   if(i4<1.0024170875549316){
    if(i39<1.0903575420379639){
     s0+=28171.0;
     s1+=2675.0;
    } else {
     s0+=79240.0;
     s1+=1010.0;
    }
   } else {
    if(i56<0.037825800478458405){
     s0+=4461.0;
     s1+=996.0;
    } else {
     s0+=686.0;
     s1+=1183.0;
    }
   }
  } else {
   if(i57<1.00101900100708){
    if(i21<0.001018330454826355){
     s1+=4.0;
    } else {
     s0+=635.0;
     s1+=2.0;
    }
   } else {
    if(i48<1.051001787185669){
     s0+=74.0;
     s1+=1303.0;
    } else {
     s0+=369.0;
     s1+=321.0;
    }
   }
  }
 } else {
  if(i55<0.13045066595077515){
   if(i3<1.0081270933151245){
    if(i64<-0.004373113624751568){
     s1+=5.0;
    } else {
     s0+=531.0;
     s1+=11.0;
    }
   } else {
    s1+=106.0;
   }
  } else {
   if(i21<0.0025631526950746775){
    if(i5<0.0002262592315673828){
     s0+=329.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i7<0.009451983496546745){
     s0+=71.0;
     s1+=146.0;
    } else {
     s0+=85.0;
     s1+=2313.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015225410461426){
  if(i28<0.011548874899744987){
   if(i7<0.006294433027505875){
    if(i44<0.00016407022485509515){
     s0+=684.0;
     s1+=24.0;
    } else {
     s0+=46.0;
     s1+=19.0;
    }
   } else {
    if(i70<1.0975306850014022e-06){
     s0+=9.0;
     s1+=138.0;
    } else {
     s0+=39.0;
     s1+=8.0;
    }
   }
  } else {
   if(i60<0.015143871307373047){
    s0+=2.0;
   } else {
    s1+=125.0;
   }
  }
 } else {
  if(i7<0.0035041868686676025){
   if(i34<1.1176170110702515){
    if(i22<1.125709891319275){
     s1+=202.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i4<1.007340431213379){
     s0+=730.0;
     s1+=46.0;
    } else {
     s0+=17.0;
     s1+=164.0;
    }
   }
  } else {
   if(i20<1.0165328979492188){
    if(i50<-5.658734153257683e-06){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=126.0;
     s1+=1901.0;
    }
   } else {
    if(i44<0.0003966212971135974){
     s0+=10.0;
     s1+=11794.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i16<1.0048059225082397){
 if(i11<1.0181148052215576){
  if(i4<1.002340316772461){
   if(i12<0.23522478342056274){
    if(i5<0.0001792311668395996){
     s0+=95488.0;
     s1+=1945.0;
    } else {
     s0+=12433.0;
     s1+=1781.0;
    }
   } else {
    if(i7<0.0061469776555895805){
     s0+=53.0;
    } else {
     s0+=1.0;
     s1+=178.0;
    }
   }
  } else {
   if(i22<1.067186713218689){
    s0+=623.0;
   } else {
    if(i21<0.0010394827695563436){
     s1+=417.0;
    } else {
     s0+=2749.0;
     s1+=1142.0;
    }
   }
  }
 } else {
  if(i5<0.0002678036689758301){
   if(i27<0.007757179439067841){
    if(i59<-2.525261606933782e-06){
     s0+=181.0;
     s1+=137.0;
    } else {
     s0+=432.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.004353600554168224){
     s0+=1.0;
    } else {
     s1+=152.0;
    }
   }
  } else {
   if(i56<0.03764869272708893){
    if(i0<1.0371208190917969e-05){
     s0+=140.0;
     s1+=16.0;
    } else {
     s0+=118.0;
     s1+=835.0;
    }
   } else {
    if(i2<-0.0006250143051147461){
     s0+=24.0;
     s1+=29.0;
    } else {
     s0+=31.0;
     s1+=1477.0;
    }
   }
  }
 }
} else {
 if(i7<0.002816584426909685){
  if(i41<1.014751672744751){
   if(i24<0.000510871410369873){
    if(i61<1.0052549839019775){
     s0+=136.0;
     s1+=1.0;
    } else {
     s1+=241.0;
    }
   } else {
    s0+=2642.0;
   }
  } else {
   s1+=187.0;
  }
 } else {
  if(i29<-0.0004531443119049072){
   if(i43<0.027816563844680786){
    if(i24<0.0007864832878112793){
     s0+=357.0;
     s1+=31.0;
    } else {
     s0+=19.0;
     s1+=57.0;
    }
   } else {
    if(i65<0.0018754564225673676){
     s0+=96.0;
     s1+=27.0;
    } else {
     s0+=103.0;
     s1+=325.0;
    }
   }
  } else {
   if(i50<-6.457914423663169e-06){
    s0+=283.0;
   } else {
    if(i15<0.0007061389042064548){
     s0+=366.0;
     s1+=15472.0;
    } else {
     s0+=133.0;
    }
   }
  }
 }
}
if(i6<2.0205974578857422e-05){
 if(i38<1.0378766059875488){
  if(i5<0.00027757883071899414){
   if(i22<1.116391897201538){
    if(i45<0.01207717414945364){
     s0+=17310.0;
     s1+=328.0;
    } else {
     s0+=9865.0;
     s1+=1669.0;
    }
   } else {
    if(i19<0.090852290391922){
     s0+=75304.0;
     s1+=668.0;
    } else {
     s1+=88.0;
    }
   }
  } else {
   if(i47<9.17722900339868e-06){
    if(i14<0.0020109100732952356){
     s0+=4101.0;
     s1+=8.0;
    } else {
     s0+=834.0;
     s1+=462.0;
    }
   } else {
    if(i47<1.8384527720627375e-05){
     s0+=283.0;
     s1+=779.0;
    } else {
     s0+=994.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i14<0.0015871943905949593){
   if(i38<1.0395073890686035){
    if(i16<1.0010175704956055){
     s0+=32.0;
    } else {
     s0+=10.0;
     s1+=5.0;
    }
   } else {
    s0+=379.0;
   }
  } else {
   if(i2<-0.0006046891212463379){
    if(i45<0.1476619839668274){
     s0+=117.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=80.0;
    }
   } else {
    if(i57<1.0026191473007202){
     s0+=12.0;
     s1+=497.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
} else {
 if(i39<1.1757044792175293){
  if(i34<1.116804838180542){
   if(i21<0.0002490319893695414){
    s0+=1558.0;
   } else {
    if(i4<1.0010344982147217){
     s0+=51.0;
    } else {
     s0+=176.0;
     s1+=3145.0;
    }
   }
  } else {
   if(i20<1.02247953414917){
    if(i7<0.006990808993577957){
     s0+=3686.0;
     s1+=58.0;
    } else {
     s0+=65.0;
     s1+=81.0;
    }
   } else {
    if(i7<0.0010195581708103418){
     s0+=2.0;
    } else {
     s1+=39.0;
    }
   }
  }
 } else {
  if(i1<-8.122561848722398e-05){
   if(i12<0.04077029228210449){
    if(i72<0.04242582246661186){
     s0+=349.0;
     s1+=66.0;
    } else {
     s0+=26.0;
     s1+=92.0;
    }
   } else {
    if(i9<0.9077209234237671){
     s0+=25.0;
    } else {
     s0+=95.0;
     s1+=14380.0;
    }
   }
  } else {
   if(i16<1.0053186416625977){
    if(i31<1.1082684993743896){
     s0+=851.0;
     s1+=14.0;
    } else {
     s0+=264.0;
     s1+=574.0;
    }
   } else {
    if(i12<0.07668337225914001){
     s0+=159.0;
     s1+=115.0;
    } else {
     s0+=93.0;
     s1+=801.0;
    }
   }
  }
 }
}
if(i1<-8.453788905171677e-05){
 if(i37<1.0247893333435059){
  if(i30<0.0754995346069336){
   if(i41<1.0110005140304565){
    if(i51<1.0025359392166138){
     s0+=828.0;
     s1+=32.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i9<0.9209229946136475){
    if(i76<-0.09724918007850647){
     s1+=1.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i17<0.9042655825614929){
     s0+=3.0;
     s1+=5.0;
    } else {
     s1+=92.0;
    }
   }
  }
 } else {
  if(i22<1.1743842363357544){
   if(i57<1.0008018016815186){
    if(i13<1.0290334224700928){
     s0+=293.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i42<0.0009722306858748198){
     s1+=947.0;
    } else {
     s0+=123.0;
     s1+=28.0;
    }
   }
  } else {
   if(i63<-0.0076957643032073975){
    if(i37<1.0572068691253662){
     s0+=62.0;
     s1+=19.0;
    } else {
     s0+=10.0;
     s1+=81.0;
    }
   } else {
    if(i30<0.06037977337837219){
     s0+=84.0;
     s1+=220.0;
    } else {
     s0+=70.0;
     s1+=14754.0;
    }
   }
  }
 }
} else {
 if(i6<1.8537044525146484e-05){
  if(i32<0.000691623892635107){
   if(i63<-0.00045430660247802734){
    if(i53<0.00016044762742239982){
     s0+=292.0;
     s1+=78.0;
    } else {
     s0+=11747.0;
     s1+=111.0;
    }
   } else {
    if(i28<0.001812804490327835){
     s0+=60983.0;
     s1+=98.0;
    } else {
     s0+=4606.0;
     s1+=92.0;
    }
   }
  } else {
   if(i0<-3.629922866821289e-05){
    if(i23<0.24719828367233276){
     s0+=24246.0;
     s1+=478.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=1631.0;
     s1+=2515.0;
    } else {
     s0+=4175.0;
     s1+=522.0;
    }
   }
  }
 } else {
  if(i17<1.017756462097168){
   if(i29<0.00017875432968139648){
    if(i14<0.0020738965831696987){
     s0+=4005.0;
     s1+=107.0;
    } else {
     s0+=2336.0;
     s1+=1582.0;
    }
   } else {
    if(i24<0.0005190670490264893){
     s0+=18.0;
     s1+=797.0;
    } else {
     s0+=502.0;
     s1+=69.0;
    }
   }
  } else {
   if(i57<1.0032610893249512){
    if(i32<0.0015687552513554692){
     s0+=80.0;
     s1+=1251.0;
    } else {
     s0+=93.0;
     s1+=10.0;
    }
   } else {
    if(i31<1.1687968969345093){
     s0+=469.0;
     s1+=96.0;
    } else {
     s1+=126.0;
    }
   }
  }
 }
}
if(i6<2.294778823852539e-05){
 if(i30<0.23505562543869019){
  if(i10<1.0063657760620117){
   if(i14<0.001569476444274187){
    if(i8<0.9960441589355469){
     s0+=18147.0;
     s1+=435.0;
    } else {
     s0+=67536.0;
     s1+=232.0;
    }
   } else {
    if(i0<-2.9981136322021484e-05){
     s0+=19832.0;
     s1+=731.0;
    } else {
     s0+=3703.0;
     s1+=2714.0;
    }
   }
  } else {
   if(i39<1.095010757446289){
    if(i27<0.00021339360682759434){
     s0+=10.0;
    } else {
     s1+=391.0;
    }
   } else {
    if(i36<1.1355184316635132){
     s0+=704.0;
     s1+=13.0;
    } else {
     s0+=516.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i14<0.0024232047144323587){
   if(i5<0.00029519200325012207){
    s0+=95.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i23<0.2323589324951172){
    s0+=9.0;
   } else {
    if(i42<0.004255945794284344){
     s0+=7.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=576.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007044356898404658){
  if(i5<0.001123189926147461){
   if(i1<-3.8292608223855495e-05){
    if(i37<1.0292508602142334){
     s0+=360.0;
     s1+=121.0;
    } else {
     s0+=497.0;
     s1+=3384.0;
    }
   } else {
    if(i24<0.0006301403045654297){
     s0+=508.0;
     s1+=522.0;
    } else {
     s0+=1129.0;
     s1+=30.0;
    }
   }
  } else {
   if(i10<0.9764465689659119){
    if(i34<1.600679874420166){
     s0+=169.0;
     s1+=114.0;
    } else {
     s0+=13.0;
     s1+=94.0;
    }
   } else {
    if(i3<1.0064671039581299){
     s0+=359.0;
     s1+=989.0;
    } else {
     s0+=56.0;
     s1+=13401.0;
    }
   }
  }
 } else {
  s0+=3181.0;
 }
}
if(i13<1.0181775093078613){
 if(i41<1.008970856666565){
  if(i37<1.1402318477630615){
   if(i32<0.0007107695564627647){
    if(i27<0.0019054749282076955){
     s0+=74451.0;
     s1+=327.0;
    } else {
     s0+=5585.0;
     s1+=213.0;
    }
   } else {
    if(i0<-3.045797348022461e-05){
     s0+=25448.0;
     s1+=832.0;
    } else {
     s0+=8291.0;
     s1+=5062.0;
    }
   }
  } else {
   if(i27<0.004037556704133749){
    if(i19<0.03725183382630348){
     s0+=435.0;
     s1+=14.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i60<0.1320066899061203){
     s0+=31.0;
     s1+=17.0;
    } else {
     s0+=19.0;
     s1+=1160.0;
    }
   }
  }
 } else {
  if(i24<0.0007880926132202148){
   if(i46<-1.4994160665082745e-05){
    if(i24<0.000738978385925293){
     s0+=62.0;
     s1+=2194.0;
    } else {
     s0+=60.0;
     s1+=150.0;
    }
   } else {
    s0+=126.0;
   }
  } else {
   if(i7<0.006850015372037888){
    if(i27<0.0034354727249592543){
     s0+=996.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i65<0.0002060509577859193){
     s0+=3.0;
     s1+=14.0;
    } else {
     s1+=497.0;
    }
   }
  }
 }
} else {
 if(i2<0.0002276003360748291){
  if(i61<1.0001332759857178){
   if(i44<0.00011684747732942924){
    if(i33<0.0008775562746450305){
     s1+=2.0;
    } else {
     s0+=334.0;
    }
   } else {
    if(i17<1.0216991901397705){
     s0+=21.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i32<0.0021237977780401707){
    if(i56<0.047635938972234726){
     s0+=267.0;
     s1+=55.0;
    } else {
     s0+=44.0;
     s1+=88.0;
    }
   } else {
    if(i7<0.006974067538976669){
     s0+=14.0;
    } else {
     s1+=183.0;
    }
   }
  }
 } else {
  if(i7<0.0031099063344299793){
   if(i18<0.0017430782318115234){
    if(i31<1.072145700454712){
     s1+=24.0;
    } else {
     s0+=356.0;
     s1+=24.0;
    }
   } else {
    if(i61<1.0056941509246826){
     s0+=10.0;
     s1+=14.0;
    } else {
     s1+=182.0;
    }
   }
  } else {
   if(i29<-0.0002574324607849121){
    if(i7<0.009477108716964722){
     s0+=45.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   } else {
    if(i52<-6.499886512756348e-05){
     s0+=6.0;
    } else {
     s0+=77.0;
     s1+=12941.0;
    }
   }
  }
 }
}
if(i10<1.0126030445098877){
 if(i19<0.05747519060969353){
  if(i25<1.02130925655365){
   if(i4<1.0024323463439941){
    if(i14<0.001478683901950717){
     s0+=83292.0;
     s1+=597.0;
    } else {
     s0+=24773.0;
     s1+=3230.0;
    }
   } else {
    if(i16<1.0084941387176514){
     s0+=5413.0;
     s1+=1933.0;
    } else {
     s0+=449.0;
     s1+=1015.0;
    }
   }
  } else {
   if(i14<0.0015994647983461618){
    if(i1<-7.20401294529438e-05){
     s0+=7.0;
     s1+=29.0;
    } else {
     s0+=766.0;
     s1+=31.0;
    }
   } else {
    if(i24<0.0005052685737609863){
     s0+=176.0;
     s1+=1051.0;
    } else {
     s0+=466.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i0<-0.0001386106014251709){
   if(i79<-0.004734128713607788){
    if(i63<-0.010299623012542725){
     s0+=3.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i65<0.004788772203028202){
     s0+=571.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i18<-0.004014551639556885){
    if(i58<1.001729965209961){
     s0+=11.0;
     s1+=147.0;
    } else {
     s0+=81.0;
     s1+=94.0;
    }
   } else {
    if(i9<0.9221161603927612){
     s0+=16.0;
     s1+=33.0;
    } else {
     s0+=8.0;
     s1+=2530.0;
    }
   }
  }
 }
} else {
 if(i7<0.0024571388494223356){
  if(i67<-7.373668267973699e-06){
   if(i50<-6.080818366172025e-06){
    s0+=16.0;
   } else {
    s1+=212.0;
   }
  } else {
   if(i2<0.0025930404663085938){
    if(i55<0.0015077628195285797){
     s1+=1.0;
    } else {
     s0+=291.0;
     s1+=1.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i21<0.002551304642111063){
   if(i24<0.00067138671875){
    if(i41<1.000816822052002){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=1374.0;
    }
   } else {
    s0+=77.0;
   }
  } else {
   s1+=11685.0;
  }
 }
}
if(i29<0.00020927190780639648){
 if(i12<0.1933382749557495){
  if(i14<0.00181780313141644){
   if(i32<0.0005275803850963712){
    if(i6<5.072355270385742e-05){
     s0+=68798.0;
     s1+=133.0;
    } else {
     s0+=13.0;
     s1+=14.0;
    }
   } else {
    if(i0<-4.762411117553711e-05){
     s0+=12463.0;
     s1+=25.0;
    } else {
     s0+=12211.0;
     s1+=1027.0;
    }
   }
  } else {
   if(i5<6.389617919921875e-05){
    if(i21<0.0008839613292366266){
     s0+=437.0;
     s1+=395.0;
    } else {
     s0+=14328.0;
     s1+=238.0;
    }
   } else {
    if(i47<2.7597385269473307e-05){
     s0+=3255.0;
     s1+=4669.0;
    } else {
     s0+=3757.0;
     s1+=1062.0;
    }
   }
  }
 } else {
  if(i53<0.002178263384848833){
   if(i46<-1.6038022295106202e-05){
    if(i34<1.165347695350647){
     s0+=22.0;
    } else {
     s0+=17.0;
     s1+=305.0;
    }
   } else {
    if(i60<0.0498274490237236){
     s0+=310.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=11.0;
    }
   }
  } else {
   if(i27<0.0026068519800901413){
    if(i59<-3.957779881602619e-06){
     s0+=7.0;
     s1+=16.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i7<0.00531354732811451){
     s0+=80.0;
     s1+=21.0;
    } else {
     s0+=14.0;
     s1+=3142.0;
    }
   }
  }
 }
} else {
 if(i51<0.9998549222946167){
  if(i53<0.002741013653576374){
   if(i53<0.0005503803258761764){
    s1+=1.0;
   } else {
    s0+=659.0;
   }
  } else {
   if(i15<0.002599431900307536){
    s1+=439.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i15<0.00070473353844136){
   if(i29<0.00022751092910766602){
    if(i46<-1.869706466095522e-05){
     s1+=385.0;
    } else {
     s0+=76.0;
     s1+=18.0;
    }
   } else {
    if(i6<0.0002281665802001953){
     s0+=23.0;
     s1+=12116.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   s0+=227.0;
  }
 }
}
if(i3<1.0037096738815308){
 if(i23<0.2179235816001892){
  if(i32<0.0007166675059124827){
   if(i5<0.0005655288696289062){
    if(i66<0.0001667616597842425){
     s0+=65561.0;
     s1+=210.0;
    } else {
     s0+=13589.0;
     s1+=325.0;
    }
   } else {
    if(i45<0.04393240064382553){
     s0+=183.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i21<0.0009237105259671807){
    if(i58<1.0003386735916138){
     s0+=2313.0;
     s1+=587.0;
    } else {
     s0+=728.0;
     s1+=2484.0;
    }
   } else {
    if(i78<-0.002876073122024536){
     s0+=2533.0;
     s1+=1034.0;
    } else {
     s0+=26620.0;
     s1+=952.0;
    }
   }
  }
 } else {
  if(i21<0.0025688123423606157){
   if(i59<-4.07590687245829e-06){
    if(i7<0.003946369513869286){
     s0+=6.0;
    } else {
     s1+=6.0;
    }
   } else {
    s0+=129.0;
   }
  } else {
   if(i42<0.002870787400752306){
    if(i54<0.0008439991506747901){
     s1+=2.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   } else {
    if(i1<-7.481803550035693e-06){
     s0+=9.0;
     s1+=1006.0;
    } else {
     s0+=10.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i34<1.1731728315353394){
  if(i21<0.0009706164710223675){
   if(i7<0.0017748265527188778){
    if(i6<4.7087669372558594e-05){
     s0+=567.0;
    } else {
     s1+=135.0;
    }
   } else {
    if(i34<1.0548467636108398){
     s0+=140.0;
    } else {
     s1+=2672.0;
    }
   }
  } else {
   if(i22<1.2318363189697266){
    s0+=3383.0;
   } else {
    if(i16<1.0042428970336914){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i12<0.07181668281555176){
   if(i73<-0.0010185837745666504){
    if(i68<0.0004636853118427098){
     s0+=31.0;
     s1+=16.0;
    } else {
     s0+=30.0;
     s1+=320.0;
    }
   } else {
    if(i16<1.0158541202545166){
     s0+=183.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i59<-4.102914772374788e-06){
    if(i43<0.08731383085250854){
     s0+=64.0;
     s1+=1582.0;
    } else {
     s0+=32.0;
     s1+=13286.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i4<1.0026251077651978){
  if(i19<0.08942355215549469){
   if(i7<0.0036597372964024544){
    if(i26<1.0231759548187256){
     s0+=12541.0;
     s1+=498.0;
    } else {
     s0+=74757.0;
     s1+=479.0;
    }
   } else {
    if(i3<0.9986692667007446){
     s0+=21315.0;
     s1+=706.0;
    } else {
     s0+=1591.0;
     s1+=2718.0;
    }
   }
  } else {
   if(i18<-0.008134275674819946){
    if(i27<0.021002164110541344){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=287.0;
   }
  }
 } else {
  if(i31<1.1698036193847656){
   if(i63<-0.00036662817001342773){
    if(i5<0.0012683272361755371){
     s0+=1002.0;
     s1+=692.0;
    } else {
     s0+=165.0;
     s1+=1059.0;
    }
   } else {
    if(i24<0.0005204677581787109){
     s0+=297.0;
     s1+=937.0;
    } else {
     s0+=3456.0;
     s1+=154.0;
    }
   }
  } else {
   if(i48<0.9596149921417236){
    if(i63<-0.007663637399673462){
     s0+=224.0;
     s1+=90.0;
    } else {
     s0+=12.0;
     s1+=102.0;
    }
   } else {
    if(i10<0.9791369438171387){
     s0+=70.0;
     s1+=89.0;
    } else {
     s0+=30.0;
     s1+=1979.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007102541858330369){
  if(i7<0.005057003349065781){
   if(i2<0.0010524988174438477){
    if(i22<1.0840704441070557){
     s1+=35.0;
    } else {
     s0+=597.0;
     s1+=57.0;
    }
   } else {
    if(i64<-0.003097732551395893){
     s0+=11.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=936.0;
    }
   }
  } else {
   if(i41<1.0008845329284668){
    if(i15<0.00010033637954620644){
     s0+=28.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=928.0;
    }
   } else {
    s1+=12391.0;
   }
  }
 } else {
  s0+=554.0;
 }
}
if(i5<0.0005885958671569824){
 if(i17<1.016693115234375){
  if(i68<0.0075561124831438065){
   if(i57<0.999872088432312){
    if(i23<0.23259040713310242){
     s0+=50399.0;
     s1+=240.0;
    } else {
     s0+=16.0;
     s1+=41.0;
    }
   } else {
    if(i21<0.0009126809891313314){
     s0+=11749.0;
     s1+=2818.0;
    } else {
     s0+=46747.0;
     s1+=1034.0;
    }
   }
  } else {
   if(i23<0.07511764764785767){
    if(i0<1.3172626495361328e-05){
     s0+=297.0;
     s1+=11.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i34<1.1615915298461914){
     s0+=14.0;
    } else {
     s0+=32.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i5<0.00022685527801513672){
   if(i58<0.9965981245040894){
    s1+=117.0;
   } else {
    if(i1<-7.518276106566191e-05){
     s0+=5.0;
     s1+=63.0;
    } else {
     s0+=662.0;
     s1+=64.0;
    }
   }
  } else {
   if(i2<-0.0005980134010314941){
    if(i7<0.009015126153826714){
     s0+=69.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i46<-1.0317595297237858e-05){
     s0+=31.0;
     s1+=646.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
} else {
 if(i7<0.004073903895914555){
  if(i0<0.00012010335922241211){
   if(i34<1.0894038677215576){
    if(i33<0.0002070215850835666){
     s0+=1261.0;
    } else {
     s1+=277.0;
    }
   } else {
    if(i9<1.0280356407165527){
     s0+=3248.0;
     s1+=21.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   }
  } else {
   if(i32<0.0013637786032631993){
    if(i18<0.0012469887733459473){
     s0+=40.0;
    } else {
     s0+=27.0;
     s1+=683.0;
    }
   } else {
    if(i8<1.0264062881469727){
     s0+=243.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<-2.980232238769531e-07){
   if(i54<0.010308695025742054){
    if(i30<0.10393571853637695){
     s0+=672.0;
     s1+=47.0;
    } else {
     s0+=118.0;
     s1+=136.0;
    }
   } else {
    if(i57<1.0013153553009033){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=116.0;
    }
   }
  } else {
   if(i15<0.0007061389042064548){
    if(i11<0.9982426166534424){
     s0+=402.0;
     s1+=2488.0;
    } else {
     s0+=222.0;
     s1+=15095.0;
    }
   } else {
    s0+=301.0;
   }
  }
 }
}
if(i1<-9.285741543862969e-05){
 if(i9<0.938477635383606){
  if(i26<1.0941886901855469){
   if(i51<1.0024960041046143){
    if(i76<-0.17706358432769775){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=607.0;
     s1+=10.0;
    }
   } else {
    if(i12<0.02967265248298645){
     s1+=9.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   }
  } else {
   if(i19<0.05452411621809006){
    if(i25<0.8806294202804565){
     s0+=45.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    if(i5<0.0008112192153930664){
     s0+=8.0;
     s1+=96.0;
    } else {
     s0+=27.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i51<0.9981535077095032){
   s0+=190.0;
  } else {
   if(i50<-6.4529062910878565e-06){
    s0+=74.0;
   } else {
    if(i30<0.04158875346183777){
     s0+=113.0;
     s1+=133.0;
    } else {
     s0+=38.0;
     s1+=15541.0;
    }
   }
  }
 }
} else {
 if(i2<0.0009489655494689941){
  if(i32<0.0007264483720064163){
   if(i42<0.002083334606140852){
    if(i32<0.000551355245988816){
     s0+=68045.0;
     s1+=136.0;
    } else {
     s0+=10066.0;
     s1+=274.0;
    }
   } else {
    if(i41<1.0001745223999023){
     s0+=2773.0;
     s1+=59.0;
    } else {
     s0+=300.0;
     s1+=127.0;
    }
   }
  } else {
   if(i2<-0.00048065185546875){
    if(i72<0.018479060381650925){
     s0+=24436.0;
     s1+=546.0;
    } else {
     s0+=416.0;
     s1+=143.0;
    }
   } else {
    if(i22<1.056142807006836){
     s0+=2610.0;
    } else {
     s0+=4615.0;
     s1+=4753.0;
    }
   }
  }
 } else {
  if(i36<1.0905089378356934){
   if(i15<0.0002663549967110157){
    s1+=1446.0;
   } else {
    s0+=92.0;
   }
  } else {
   if(i19<0.009866489097476006){
    if(i54<0.00035549537278711796){
     s1+=97.0;
    } else {
     s0+=1684.0;
     s1+=85.0;
    }
   } else {
    if(i7<0.005814771633595228){
     s0+=106.0;
     s1+=7.0;
    } else {
     s0+=60.0;
     s1+=994.0;
    }
   }
  }
 }
}
if(i23<0.19657808542251587){
 if(i25<1.0198525190353394){
  if(i6<3.6656856536865234e-05){
   if(i41<1.0063188076019287){
    if(i57<0.9997882843017578){
     s0+=47664.0;
     s1+=196.0;
    } else {
     s0+=62872.0;
     s1+=4403.0;
    }
   } else {
    if(i15<0.00021207226382102817){
     s0+=252.0;
     s1+=545.0;
    } else {
     s0+=1084.0;
     s1+=141.0;
    }
   }
  } else {
   if(i52<1.5079975128173828e-05){
    if(i47<-5.702302587451413e-06){
     s0+=83.0;
     s1+=1793.0;
    } else {
     s0+=790.0;
     s1+=1110.0;
    }
   } else {
    if(i65<0.0013235346414148808){
     s0+=1316.0;
     s1+=50.0;
    } else {
     s0+=64.0;
     s1+=444.0;
    }
   }
  }
 } else {
  if(i18<0.0017429590225219727){
   if(i6<1.0788440704345703e-05){
    if(i1<-5.29110839124769e-05){
     s0+=72.0;
     s1+=69.0;
    } else {
     s0+=800.0;
     s1+=42.0;
    }
   } else {
    if(i36<1.0904107093811035){
     s0+=1.0;
     s1+=684.0;
    } else {
     s0+=871.0;
     s1+=621.0;
    }
   }
  } else {
   if(i51<0.9992885589599609){
    s0+=49.0;
   } else {
    if(i1<-7.311570516321808e-05){
     s1+=1398.0;
    } else {
     s0+=12.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i27<0.0021949345245957375){
  if(i38<1.0458669662475586){
   s0+=321.0;
  } else {
   if(i13<1.0102107524871826){
    if(i72<-0.015360191464424133){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=22.0;
   }
  }
 } else {
  if(i67<1.0310264769941568e-05){
   if(i6<6.973743438720703e-06){
    if(i44<7.536067278124392e-05){
     s0+=96.0;
     s1+=16.0;
    } else {
     s0+=34.0;
     s1+=99.0;
    }
   } else {
    if(i10<0.9948892593383789){
     s0+=43.0;
     s1+=640.0;
    } else {
     s0+=26.0;
     s1+=11636.0;
    }
   }
  } else {
   if(i42<0.0038584123831242323){
    if(i1<-6.337124068522826e-05){
     s1+=5.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i49<4.336833444540389e-05){
     s0+=2.0;
     s1+=268.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i4<1.0026179552078247){
 if(i7<0.003866306971758604){
  if(i66<0.00017033942276611924){
   if(i33<0.0003100511967204511){
    if(i36<1.054823875427246){
     s0+=19293.0;
     s1+=181.0;
    } else {
     s0+=1139.0;
     s1+=124.0;
    }
   } else {
    if(i45<0.04273774474859238){
     s0+=51191.0;
     s1+=38.0;
    } else {
     s0+=1435.0;
     s1+=55.0;
    }
   }
  } else {
   if(i33<0.0002597951388452202){
    if(i0<-4.4345855712890625e-05){
     s0+=123.0;
     s1+=1.0;
    } else {
     s0+=60.0;
     s1+=331.0;
    }
   } else {
    if(i42<0.000498575740493834){
     s0+=1794.0;
     s1+=283.0;
    } else {
     s0+=13951.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i0<-2.1636486053466797e-05){
   if(i37<1.1411010026931763){
    if(i5<-0.00020629167556762695){
     s0+=16581.0;
     s1+=103.0;
    } else {
     s0+=3504.0;
     s1+=605.0;
    }
   } else {
    if(i15<0.0003117090091109276){
     s0+=101.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=177.0;
    }
   }
  } else {
   if(i57<1.0000441074371338){
    if(i33<0.013946780934929848){
     s0+=970.0;
     s1+=24.0;
    } else {
     s1+=262.0;
    }
   } else {
    if(i46<-6.9358593464130536e-06){
     s0+=292.0;
     s1+=3262.0;
    } else {
     s0+=67.0;
    }
   }
  }
 }
} else {
 if(i10<1.0142518281936646){
  if(i14<0.0019531557336449623){
   if(i63<-0.0004411935806274414){
    if(i3<1.0078238248825073){
     s0+=117.0;
     s1+=43.0;
    } else {
     s0+=7.0;
     s1+=157.0;
    }
   } else {
    if(i15<0.00019052265270147473){
     s0+=190.0;
     s1+=381.0;
    } else {
     s0+=3055.0;
     s1+=45.0;
    }
   }
  } else {
   if(i19<0.029543180018663406){
    if(i28<0.0012147523229941726){
     s0+=56.0;
     s1+=878.0;
    } else {
     s0+=2111.0;
     s1+=902.0;
    }
   } else {
    if(i12<0.08144751191139221){
     s0+=360.0;
     s1+=327.0;
    } else {
     s0+=139.0;
     s1+=3742.0;
    }
   }
  }
 } else {
  if(i1<-6.197639595484361e-05){
   if(i67<2.218714143964462e-05){
    if(i24<0.0017088353633880615){
     s0+=6.0;
     s1+=12060.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=6.0;
   }
  } else {
   if(i57<1.00376558303833){
    if(i4<1.005936861038208){
     s1+=92.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=73.0;
   }
  }
 }
}
if(i5<0.000592648983001709){
 if(i12<0.21618962287902832){
  if(i14<0.0017282022163271904){
   if(i36<1.0739831924438477){
    if(i14<0.0013736066175624728){
     s0+=26530.0;
     s1+=317.0;
    } else {
     s0+=2017.0;
     s1+=424.0;
    }
   } else {
    if(i46<-1.8781880498863757e-05){
     s0+=24.0;
     s1+=41.0;
    } else {
     s0+=60485.0;
     s1+=226.0;
    }
   }
  } else {
   if(i41<0.9952428340911865){
    if(i51<1.0026291608810425){
     s0+=15758.0;
     s1+=536.0;
    } else {
     s0+=42.0;
     s1+=66.0;
    }
   } else {
    if(i4<0.9999884963035583){
     s0+=2566.0;
     s1+=138.0;
    } else {
     s0+=2156.0;
     s1+=2902.0;
    }
   }
  }
 } else {
  if(i32<0.0007489288691431284){
   s0+=100.0;
  } else {
   if(i1<-1.2558422895381227e-05){
    if(i42<0.0016605581622570753){
     s0+=9.0;
    } else {
     s0+=3.0;
     s1+=662.0;
    }
   } else {
    if(i5<0.0004215240478515625){
     s0+=21.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i1<-7.2890252340585e-05){
  if(i50<-6.515702352771768e-06){
   s0+=375.0;
  } else {
   if(i18<-0.003919541835784912){
    if(i30<0.07168558239936829){
     s0+=258.0;
     s1+=40.0;
    } else {
     s0+=32.0;
     s1+=94.0;
    }
   } else {
    if(i23<0.0410362184047699){
     s0+=182.0;
     s1+=177.0;
    } else {
     s0+=184.0;
     s1+=15953.0;
    }
   }
  }
 } else {
  if(i21<0.0009778020903468132){
   if(i28<0.00022361279116012156){
    s0+=1333.0;
   } else {
    s1+=1704.0;
   }
  } else {
   if(i34<1.1822609901428223){
    if(i19<0.02712414413690567){
     s0+=3015.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i37<1.0916686058044434){
     s0+=1029.0;
     s1+=334.0;
    } else {
     s0+=240.0;
     s1+=877.0;
    }
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i25<1.024177074432373){
  if(i55<0.4963024854660034){
   if(i5<0.000280916690826416){
    if(i19<0.006775497458875179){
     s0+=63172.0;
     s1+=405.0;
    } else {
     s0+=38639.0;
     s1+=2135.0;
    }
   } else {
    if(i14<0.001982919406145811){
     s0+=6780.0;
     s1+=144.0;
    } else {
     s0+=4149.0;
     s1+=2632.0;
    }
   }
  } else {
   if(i30<0.06335490942001343){
    if(i49<-0.00048180349403992295){
     s0+=2.0;
     s1+=31.0;
    } else {
     s0+=607.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.006751272361725569){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=836.0;
    }
   }
  }
 } else {
  if(i7<0.005021924618631601){
   if(i1<-7.006417581578717e-05){
    if(i21<0.005091366358101368){
     s0+=3.0;
     s1+=63.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i36<1.0776238441467285){
     s1+=1.0;
    } else {
     s0+=781.0;
     s1+=25.0;
    }
   }
  } else {
   if(i30<0.09252864122390747){
    if(i64<-0.0024480463471263647){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i24<0.0010947585105895996){
     s0+=24.0;
     s1+=1526.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
} else {
 if(i45<0.03588664531707764){
  if(i15<0.00038894754834473133){
   if(i10<1.0101935863494873){
    if(i33<0.000982492696493864){
     s0+=2.0;
     s1+=339.0;
    } else {
     s0+=119.0;
     s1+=103.0;
    }
   } else {
    if(i6<0.00024396181106567383){
     s1+=2930.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i39<1.228783130645752){
    s0+=1881.0;
   } else {
    if(i28<0.00943056121468544){
     s0+=12.0;
     s1+=1.0;
    } else {
     s1+=71.0;
    }
   }
  }
 } else {
  if(i22<1.1843671798706055){
   if(i24<0.0005128979682922363){
    if(i6<0.00010055303573608398){
     s0+=4.0;
     s1+=488.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=145.0;
   }
  } else {
   if(i18<-0.0023111701011657715){
    if(i12<0.121034175157547){
     s0+=89.0;
     s1+=100.0;
    } else {
     s1+=210.0;
    }
   } else {
    if(i23<0.0666813850402832){
     s0+=16.0;
     s1+=152.0;
    } else {
     s0+=18.0;
     s1+=12056.0;
    }
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i55<0.44188863039016724){
  if(i19<0.007786069065332413){
   if(i63<-0.0006219446659088135){
    if(i33<0.0006387386238202453){
     s0+=592.0;
     s1+=262.0;
    } else {
     s0+=3820.0;
     s1+=23.0;
    }
   } else {
    if(i82<0.007301807403564453){
     s0+=69834.0;
     s1+=504.0;
    } else {
     s0+=9.0;
     s1+=16.0;
    }
   }
  } else {
   if(i16<0.9984605312347412){
    if(i6<-3.993511199951172e-06){
     s0+=29123.0;
     s1+=148.0;
    } else {
     s0+=2547.0;
     s1+=492.0;
    }
   } else {
    if(i9<1.010866641998291){
     s0+=6953.0;
     s1+=3734.0;
    } else {
     s0+=427.0;
     s1+=1251.0;
    }
   }
  }
 } else {
  if(i5<0.0002472400665283203){
   if(i7<0.021185144782066345){
    if(i23<0.09324327111244202){
     s0+=892.0;
     s1+=24.0;
    } else {
     s0+=84.0;
     s1+=89.0;
    }
   } else {
    if(i53<0.01005510427057743){
     s0+=2.0;
    } else {
     s1+=114.0;
    }
   }
  } else {
   if(i37<1.0744216442108154){
    if(i1<-0.0001554297050461173){
     s1+=7.0;
    } else {
     s0+=170.0;
     s1+=2.0;
    }
   } else {
    if(i15<9.961462637875229e-05){
     s0+=22.0;
     s1+=9.0;
    } else {
     s0+=33.0;
     s1+=1136.0;
    }
   }
  }
 }
} else {
 if(i1<-7.37878872314468e-05){
  if(i15<0.0007059713825583458){
   if(i6<0.0002281665802001953){
    if(i17<0.9147590398788452){
     s0+=41.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=14496.0;
    }
   } else {
    s0+=77.0;
   }
  } else {
   s0+=321.0;
  }
 } else {
  if(i54<0.0006172920111566782){
   if(i24<0.0005709528923034668){
    s1+=1128.0;
   } else {
    if(i16<1.014153003692627){
     s0+=97.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i33<0.0019111627480015159){
    if(i44<-3.107745942543261e-05){
     s0+=17.0;
     s1+=60.0;
    } else {
     s0+=1510.0;
     s1+=37.0;
    }
   } else {
    if(i75<-0.00610903836786747){
     s0+=45.0;
     s1+=153.0;
    } else {
     s0+=11.0;
     s1+=428.0;
    }
   }
  }
 }
}
if(i1<-9.114392742048949e-05){
 if(i18<-0.0040656328201293945){
  if(i43<0.07479602098464966){
   if(i23<0.07167559862136841){
    if(i14<0.008181383833289146){
     s0+=544.0;
     s1+=13.0;
    } else {
     s0+=74.0;
     s1+=40.0;
    }
   } else {
    if(i46<-4.7924870159476995e-05){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  } else {
   if(i20<0.9170578718185425){
    if(i62<-0.01794874668121338){
     s0+=9.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.05867626518011093){
     s0+=4.0;
    } else {
     s0+=5.0;
     s1+=117.0;
    }
   }
  }
 } else {
  if(i32<0.0037998708430677652){
   if(i52<3.096461296081543e-05){
    if(i12<0.018518716096878052){
     s0+=154.0;
     s1+=110.0;
    } else {
     s0+=144.0;
     s1+=15552.0;
    }
   } else {
    if(i18<0.011259853839874268){
     s0+=84.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i37<1.1408298015594482){
    s0+=168.0;
   } else {
    s1+=19.0;
   }
  }
 }
} else {
 if(i2<0.000881195068359375){
  if(i14<0.0017281806794926524){
   if(i32<0.0006280661327764392){
    if(i28<0.001856507733464241){
     s0+=70716.0;
     s1+=148.0;
    } else {
     s0+=4728.0;
     s1+=135.0;
    }
   } else {
    if(i21<0.0005620250012725592){
     s0+=2220.0;
     s1+=644.0;
    } else {
     s0+=13477.0;
     s1+=101.0;
    }
   }
  } else {
   if(i27<0.001225555781275034){
    if(i36<1.0440731048583984){
     s0+=1923.0;
     s1+=29.0;
    } else {
     s0+=439.0;
     s1+=2944.0;
    }
   } else {
    if(i48<1.1076631546020508){
     s0+=19124.0;
     s1+=1309.0;
    } else {
     s0+=313.0;
     s1+=553.0;
    }
   }
  }
 } else {
  if(i32<0.0013795896666124463){
   if(i34<1.116804838180542){
    if(i22<1.0610902309417725){
     s0+=44.0;
    } else {
     s0+=30.0;
     s1+=1687.0;
    }
   } else {
    if(i22<1.1979892253875732){
     s0+=996.0;
    } else {
     s0+=99.0;
     s1+=745.0;
    }
   }
  } else {
   if(i55<0.14116725325584412){
    if(i42<0.0021646800450980663){
     s0+=1096.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=60.0;
    }
   } else {
    if(i28<0.0020457529462873936){
     s0+=4.0;
    } else {
     s0+=9.0;
     s1+=209.0;
    }
   }
  }
 }
}
if(i4<1.0026392936706543){
 if(i17<1.0163744688034058){
  if(i24<7.814168930053711e-05){
   if(i26<1.1923551559448242){
    if(i32<0.0006140869809314609){
     s0+=57366.0;
     s1+=147.0;
    } else {
     s0+=19549.0;
     s1+=708.0;
    }
   } else {
    if(i51<0.9995590448379517){
     s0+=11.0;
     s1+=148.0;
    } else {
     s0+=259.0;
     s1+=28.0;
    }
   }
  } else {
   if(i34<1.0955734252929688){
    if(i28<0.0002564002061262727){
     s0+=3934.0;
     s1+=128.0;
    } else {
     s0+=830.0;
     s1+=1814.0;
    }
   } else {
    if(i78<-0.0037668049335479736){
     s0+=1365.0;
     s1+=381.0;
    } else {
     s0+=26127.0;
     s1+=1130.0;
    }
   }
  }
 } else {
  if(i39<1.0905578136444092){
   if(i3<0.9992901086807251){
    s0+=3.0;
   } else {
    s1+=552.0;
   }
  } else {
   if(i7<0.005248034372925758){
    if(i15<0.0001605070719961077){
     s0+=397.0;
     s1+=4.0;
    } else {
     s0+=329.0;
     s1+=45.0;
    }
   } else {
    if(i28<0.002438254188746214){
     s0+=71.0;
     s1+=54.0;
    } else {
     s0+=21.0;
     s1+=531.0;
    }
   }
  }
 }
} else {
 if(i23<0.17101946473121643){
  if(i44<-2.4859600671334192e-05){
   if(i18<0.001893162727355957){
    if(i22<1.1180615425109863){
     s1+=448.0;
    } else {
     s0+=131.0;
     s1+=16.0;
    }
   } else {
    if(i67<8.15223938843701e-06){
     s1+=1612.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i69<0.002526884200051427){
    if(i1<-7.230821211123839e-05){
     s0+=335.0;
     s1+=767.0;
    } else {
     s0+=4369.0;
     s1+=878.0;
    }
   } else {
    if(i18<-0.002895534038543701){
     s0+=589.0;
     s1+=414.0;
    } else {
     s0+=395.0;
     s1+=1522.0;
    }
   }
  }
 } else {
  if(i36<1.170027494430542){
   if(i21<0.0024183867499232292){
    if(i50<-2.3307898118218873e-06){
     s0+=168.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=15.0;
    }
   } else {
    if(i51<1.0021955966949463){
     s0+=12.0;
     s1+=520.0;
    } else {
     s0+=47.0;
    }
   }
  } else {
   if(i0<9.357929229736328e-06){
    if(i19<0.01511953491717577){
     s0+=7.0;
    } else {
     s0+=14.0;
     s1+=217.0;
    }
   } else {
    if(i30<0.17537403106689453){
     s0+=4.0;
     s1+=135.0;
    } else {
     s0+=2.0;
     s1+=12302.0;
    }
   }
  }
 }
}
if(i13<1.0170331001281738){
 if(i57<1.001782774925232){
  if(i32<0.0007165043498389423){
   if(i41<1.0124807357788086){
    if(i37<1.0178465843200684){
     s0+=9507.0;
     s1+=226.0;
    } else {
     s0+=67289.0;
     s1+=226.0;
    }
   } else {
    if(i67<-2.7249186587141594e-06){
     s1+=47.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i27<0.0010554982582107186){
    if(i28<0.00020506295550148934){
     s0+=2242.0;
     s1+=5.0;
    } else {
     s0+=1277.0;
     s1+=3197.0;
    }
   } else {
    if(i14<0.0060800062492489815){
     s0+=23515.0;
     s1+=565.0;
    } else {
     s0+=381.0;
     s1+=588.0;
    }
   }
  }
 } else {
  if(i65<0.0009269188158214092){
   if(i44<-2.013862831518054e-05){
    if(i42<0.0011230428935959935){
     s0+=10.0;
     s1+=536.0;
    } else {
     s0+=151.0;
     s1+=26.0;
    }
   } else {
    if(i25<1.024486780166626){
     s0+=8026.0;
     s1+=727.0;
    } else {
     s0+=107.0;
     s1+=238.0;
    }
   }
  } else {
   if(i26<1.0856611728668213){
    if(i3<1.002366065979004){
     s0+=1704.0;
     s1+=225.0;
    } else {
     s0+=150.0;
     s1+=596.0;
    }
   } else {
    if(i3<1.001135230064392){
     s0+=322.0;
     s1+=355.0;
    } else {
     s0+=151.0;
     s1+=2766.0;
    }
   }
  }
 }
} else {
 if(i19<0.005542275495827198){
  if(i15<0.0002769996935967356){
   if(i0<4.7087669372558594e-05){
    if(i58<1.001558542251587){
     s0+=114.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   } else {
    if(i6<0.00031822919845581055){
     s1+=567.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i9<1.0273146629333496){
    s0+=471.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i10<1.0118063688278198){
   if(i2<0.00019758939743041992){
    if(i56<0.04465828090906143){
     s0+=476.0;
     s1+=38.0;
    } else {
     s0+=156.0;
     s1+=281.0;
    }
   } else {
    if(i32<0.00047600813559256494){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=141.0;
     s1+=1672.0;
    }
   }
  } else {
   if(i59<-3.629191269283183e-06){
    if(i46<-0.0001821671612560749){
     s0+=3.0;
    } else {
     s0+=38.0;
     s1+=11610.0;
    }
   } else {
    s0+=44.0;
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i23<0.20764318108558655){
  if(i19<0.00799203384667635){
   if(i7<0.002017572522163391){
    if(i31<1.023447036743164){
     s0+=2340.0;
     s1+=78.0;
    } else {
     s0+=58846.0;
     s1+=155.0;
    }
   } else {
    if(i10<1.0058237314224243){
     s0+=12770.0;
     s1+=394.0;
    } else {
     s0+=598.0;
     s1+=226.0;
    }
   }
  } else {
   if(i0<-2.485513687133789e-05){
    if(i14<0.008043055422604084){
     s0+=35846.0;
     s1+=798.0;
    } else {
     s0+=182.0;
     s1+=116.0;
    }
   } else {
    if(i7<0.003667974378913641){
     s0+=2069.0;
     s1+=330.0;
    } else {
     s0+=1244.0;
     s1+=4328.0;
    }
   }
  }
 } else {
  if(i14<0.002145780250430107){
   if(i16<1.002645492553711){
    if(i24<0.0001537799835205078){
     s0+=206.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   } else {
    if(i25<1.025918960571289){
     s0+=31.0;
     s1+=4.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i31<1.1231228113174438){
    if(i14<0.0037721022963523865){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   } else {
    if(i56<0.05710119381546974){
     s0+=23.0;
     s1+=197.0;
    } else {
     s0+=2.0;
     s1+=1288.0;
    }
   }
  }
 }
} else {
 if(i49<-0.0002368246205151081){
  if(i52<3.2067298889160156e-05){
   if(i4<1.0015461444854736){
    if(i28<0.01232849434018135){
     s0+=101.0;
    } else {
     s1+=116.0;
    }
   } else {
    if(i25<0.8622187376022339){
     s0+=22.0;
     s1+=26.0;
    } else {
     s0+=147.0;
     s1+=13339.0;
    }
   }
  } else {
   if(i34<1.3793227672576904){
    s0+=93.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i2<0.0021619200706481934){
   if(i14<0.0014416627818718553){
    if(i54<0.0005507200257852674){
     s0+=22.0;
     s1+=73.0;
    } else {
     s0+=746.0;
     s1+=19.0;
    }
   } else {
    if(i33<0.0008129545021802187){
     s0+=51.0;
     s1+=717.0;
    } else {
     s0+=964.0;
     s1+=362.0;
    }
   }
  } else {
   if(i57<1.001188039779663){
    if(i7<0.014325227588415146){
     s0+=39.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=1815.0;
   }
  }
 }
}
if(i10<1.0101652145385742){
 if(i1<-8.630675438325852e-05){
  if(i64<-0.0006765347789041698){
   if(i13<0.8994504809379578){
    if(i31<1.4427015781402588){
     s0+=83.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i22<1.1734975576400757){
     s0+=66.0;
     s1+=9.0;
    } else {
     s0+=71.0;
     s1+=3052.0;
    }
   }
  } else {
   if(i3<1.0029258728027344){
    if(i30<0.08268341422080994){
     s0+=853.0;
     s1+=68.0;
    } else {
     s0+=68.0;
     s1+=81.0;
    }
   } else {
    if(i50<-6.646552719757892e-06){
     s0+=70.0;
    } else {
     s0+=32.0;
     s1+=482.0;
    }
   }
  }
 } else {
  if(i5<0.0002925992012023926){
   if(i21<0.0008680314058437943){
    if(i32<0.0007691409555263817){
     s0+=28531.0;
     s1+=521.0;
    } else {
     s0+=856.0;
     s1+=1595.0;
    }
   } else {
    if(i26<1.122455358505249){
     s0+=71743.0;
     s1+=356.0;
    } else {
     s0+=2030.0;
     s1+=303.0;
    }
   }
  } else {
   if(i60<0.04534917324781418){
    if(i49<-0.00017427228158339858){
     s0+=1249.0;
     s1+=918.0;
    } else {
     s0+=7381.0;
     s1+=811.0;
    }
   } else {
    if(i19<0.020395144820213318){
     s0+=1323.0;
     s1+=278.0;
    } else {
     s0+=571.0;
     s1+=1403.0;
    }
   }
  }
 }
} else {
 if(i10<1.0143001079559326){
  if(i51<0.9998111724853516){
   if(i1<-0.0001605634461157024){
    if(i53<0.004080379381775856){
     s0+=4.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i39<1.092331886291504){
     s1+=2.0;
    } else {
     s0+=516.0;
     s1+=3.0;
    }
   }
  } else {
   if(i15<0.0006069635273888707){
    if(i46<-1.4310102415038273e-05){
     s0+=153.0;
     s1+=1959.0;
    } else {
     s0+=79.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.23319661617279053){
     s0+=720.0;
     s1+=1.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i50<-7.862937309255358e-06){
   s0+=29.0;
  } else {
   if(i1<-6.199370545800775e-05){
    if(i21<0.0020529350731521845){
     s0+=4.0;
     s1+=1068.0;
    } else {
     s1+=11302.0;
    }
   } else {
    if(i3<1.0098564624786377){
     s0+=10.0;
     s1+=89.0;
    } else {
     s0+=53.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i5<0.0005874037742614746){
 if(i23<0.2315579652786255){
  if(i14<0.0016740397550165653){
   if(i32<0.0006154378643259406){
    if(i32<0.0004954074393026531){
     s0+=65497.0;
     s1+=106.0;
    } else {
     s0+=8095.0;
     s1+=141.0;
    }
   } else {
    if(i30<0.06256964802742004){
     s0+=6641.0;
     s1+=567.0;
    } else {
     s0+=8172.0;
     s1+=98.0;
    }
   }
  } else {
   if(i3<0.9980977773666382){
    if(i26<1.123177170753479){
     s0+=17227.0;
     s1+=384.0;
    } else {
     s0+=360.0;
     s1+=180.0;
    }
   } else {
    if(i39<1.0452228784561157){
     s0+=1274.0;
    } else {
     s0+=2600.0;
     s1+=3194.0;
    }
   }
  }
 } else {
  if(i59<-3.18949309985328e-06){
   if(i1<-3.323789132991806e-05){
    if(i58<1.0065844058990479){
     s1+=554.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i19<0.03734378516674042){
     s0+=14.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i70<3.835764346149517e-06){
    if(i77<0.12401056289672852){
     s1+=1.0;
    } else {
     s0+=81.0;
    }
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i7<0.004084527492523193){
  if(i20<1.017761468887329){
   if(i47<-1.0119252692675218e-05){
    if(i31<1.0878822803497314){
     s0+=8.0;
     s1+=479.0;
    } else {
     s0+=216.0;
     s1+=39.0;
    }
   } else {
    if(i1<-4.4024112867191434e-05){
     s0+=936.0;
     s1+=83.0;
    } else {
     s0+=3574.0;
     s1+=32.0;
    }
   }
  } else {
   if(i18<0.0017200112342834473){
    if(i52<1.1146068572998047e-05){
     s0+=13.0;
     s1+=39.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i51<0.9990088939666748){
     s0+=2.0;
    } else {
     s1+=338.0;
    }
   }
  }
 } else {
  if(i2<5.4955482482910156e-05){
   if(i55<0.4687960147857666){
    if(i30<0.2011154294013977){
     s0+=787.0;
     s1+=146.0;
    } else {
     s0+=9.0;
     s1+=81.0;
    }
   } else {
    if(i37<1.0542020797729492){
     s0+=31.0;
    } else {
     s0+=11.0;
     s1+=176.0;
    }
   }
  } else {
   if(i51<0.9985311031341553){
    s0+=225.0;
   } else {
    if(i23<0.0413852334022522){
     s0+=212.0;
     s1+=284.0;
    } else {
     s0+=421.0;
     s1+=17419.0;
    }
   }
  }
 }
}
if(i2<0.0009575486183166504){
 if(i23<0.20764318108558655){
  if(i14<0.0017869309522211552){
   if(i14<0.0011492302874103189){
    if(i43<0.2001301646232605){
     s0+=77663.0;
     s1+=277.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.0006204007659107447){
     s0+=3005.0;
     s1+=656.0;
    } else {
     s0+=11618.0;
     s1+=137.0;
    }
   }
  } else {
   if(i9<1.0083599090576172){
    if(i4<1.0001940727233887){
     s0+=13366.0;
     s1+=440.0;
    } else {
     s0+=7652.0;
     s1+=3373.0;
    }
   } else {
    if(i0<2.9206275939941406e-06){
     s0+=462.0;
     s1+=89.0;
    } else {
     s0+=322.0;
     s1+=1389.0;
    }
   }
  }
 } else {
  if(i42<0.0021096449345350266){
   if(i46<-1.8595310393720865e-05){
    if(i61<1.0046751499176025){
     s1+=14.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=146.0;
   }
  } else {
   if(i32<0.00051532918587327){
    if(i48<1.1172187328338623){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=75.0;
    }
   } else {
    if(i12<0.20787692070007324){
     s0+=22.0;
     s1+=20.0;
    } else {
     s0+=38.0;
     s1+=1444.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007058108458295465){
  if(i6<0.0002390146255493164){
   if(i1<-7.46210862416774e-05){
    if(i30<0.0003789663314819336){
     s0+=30.0;
     s1+=19.0;
    } else {
     s0+=26.0;
     s1+=14757.0;
    }
   } else {
    if(i24<0.00012320280075073242){
     s0+=62.0;
    } else {
     s0+=169.0;
     s1+=1786.0;
    }
   }
  } else {
   s0+=37.0;
  }
 } else {
  s0+=1744.0;
 }
}
if(i36<1.1755040884017944){
 if(i3<1.0035314559936523){
  if(i8<1.0113646984100342){
   if(i19<0.006775497458875179){
    if(i63<-0.0006678998470306396){
     s0+=2956.0;
     s1+=246.0;
    } else {
     s0+=64425.0;
     s1+=265.0;
    }
   } else {
    if(i57<0.9999275803565979){
     s0+=19318.0;
     s1+=116.0;
    } else {
     s0+=11327.0;
     s1+=3073.0;
    }
   }
  } else {
   if(i46<-1.0876618034671992e-05){
    if(i32<0.0011882990365847945){
     s0+=71.0;
     s1+=393.0;
    } else {
     s0+=268.0;
     s1+=25.0;
    }
   } else {
    if(i54<0.0007774248369969428){
     s0+=63.0;
     s1+=2.0;
    } else {
     s0+=313.0;
    }
   }
  }
 } else {
  if(i20<1.0161285400390625){
   if(i44<-2.7674876037053764e-05){
    if(i59<-1.4428161193791311e-05){
     s0+=79.0;
    } else {
     s0+=2.0;
     s1+=540.0;
    }
   } else {
    if(i1<-4.456537135411054e-05){
     s0+=1215.0;
     s1+=1065.0;
    } else {
     s0+=3221.0;
     s1+=484.0;
    }
   }
  } else {
   if(i51<0.9997788667678833){
    s0+=64.0;
   } else {
    if(i52<1.8894672393798828e-05){
     s0+=80.0;
     s1+=1684.0;
    } else {
     s0+=74.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i26<1.0901963710784912){
  if(i46<-3.9872520574135706e-05){
   if(i30<0.07695871591567993){
    if(i34<1.600679874420166){
     s0+=431.0;
     s1+=59.0;
    } else {
     s0+=8.0;
     s1+=34.0;
    }
   } else {
    if(i18<-0.0062611401081085205){
     s0+=23.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=530.0;
    }
   }
  } else {
   if(i67<-1.4380757420440204e-06){
    if(i3<1.0057079792022705){
     s0+=157.0;
     s1+=41.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i12<0.20081067085266113){
     s0+=10298.0;
     s1+=138.0;
    } else {
     s0+=4.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i61<1.0020967721939087){
   if(i7<0.0051004765555262566){
    if(i28<0.01696079969406128){
     s0+=1286.0;
     s1+=33.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i30<0.11152538657188416){
     s0+=144.0;
     s1+=105.0;
    } else {
     s0+=45.0;
     s1+=1715.0;
    }
   }
  } else {
   if(i29<-0.0005796253681182861){
    if(i14<0.006004433147609234){
     s0+=247.0;
     s1+=48.0;
    } else {
     s0+=63.0;
     s1+=261.0;
    }
   } else {
    if(i5<0.00026869773864746094){
     s0+=106.0;
     s1+=183.0;
    } else {
     s0+=134.0;
     s1+=13258.0;
    }
   }
  }
 }
}
if(i2<0.0009647011756896973){
 if(i48<1.1157262325286865){
  if(i19<0.007637705188244581){
   if(i7<0.0019331048242747784){
    if(i48<1.0053236484527588){
     s0+=1735.0;
     s1+=77.0;
    } else {
     s0+=57613.0;
     s1+=147.0;
    }
   } else {
    if(i22<1.116688847541809){
     s0+=4520.0;
     s1+=539.0;
    } else {
     s0+=9309.0;
     s1+=26.0;
    }
   }
  } else {
   if(i41<0.9968191981315613){
    if(i12<0.20758327841758728){
     s0+=35374.0;
     s1+=1185.0;
    } else {
     s0+=38.0;
     s1+=173.0;
    }
   } else {
    if(i4<0.9999367594718933){
     s0+=2420.0;
     s1+=188.0;
    } else {
     s0+=2620.0;
     s1+=4105.0;
    }
   }
  }
 } else {
  if(i1<-3.708993972395547e-05){
   if(i27<0.002181545365601778){
    s0+=56.0;
   } else {
    if(i14<0.0011954940855503082){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=40.0;
     s1+=1378.0;
    }
   }
  } else {
   if(i12<0.2354525625705719){
    if(i45<0.18428239226341248){
     s0+=768.0;
     s1+=24.0;
    } else {
     s0+=68.0;
     s1+=45.0;
    }
   } else {
    if(i3<1.0011918544769287){
     s0+=82.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i7<0.003481372492387891){
  if(i21<0.0010900609195232391){
   if(i34<1.0510683059692383){
    s0+=60.0;
   } else {
    s1+=467.0;
   }
  } else {
   if(i21<0.0026023027021437883){
    s0+=1453.0;
   } else {
    if(i46<-4.533080573310144e-05){
     s1+=189.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i27<0.002365377964451909){
   if(i22<1.1180615425109863){
    s1+=1856.0;
   } else {
    s0+=405.0;
   }
  } else {
   if(i44<0.00028603861574083567){
    if(i18<-0.0012277960777282715){
     s0+=43.0;
     s1+=491.0;
    } else {
     s0+=7.0;
     s1+=13042.0;
    }
   } else {
    if(i12<0.03694278001785278){
     s0+=32.0;
     s1+=12.0;
    } else {
     s0+=10.0;
     s1+=127.0;
    }
   }
  }
 }
}
if(i6<2.0325183868408203e-05){
 if(i1<-8.121734572341666e-05){
  if(i12<0.0705086886882782){
   if(i32<0.003124992363154888){
    if(i49<-0.0004871816490776837){
     s0+=23.0;
     s1+=31.0;
    } else {
     s0+=643.0;
     s1+=16.0;
    }
   } else {
    if(i47<8.786698890617117e-05){
     s0+=3.0;
     s1+=26.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i28<0.0024100840091705322){
    if(i39<1.0940955877304077){
     s1+=42.0;
    } else {
     s0+=80.0;
     s1+=2.0;
    }
   } else {
    if(i10<0.9583567976951599){
     s0+=16.0;
     s1+=23.0;
    } else {
     s0+=18.0;
     s1+=800.0;
    }
   }
  }
 } else {
  if(i34<1.094810962677002){
   if(i24<6.979703903198242e-05){
    if(i15<0.00013388879597187042){
     s0+=13905.0;
     s1+=12.0;
    } else {
     s0+=7496.0;
     s1+=640.0;
    }
   } else {
    if(i40<0.010453607887029648){
     s0+=3489.0;
     s1+=241.0;
    } else {
     s0+=650.0;
     s1+=1633.0;
    }
   }
  } else {
   if(i25<1.023759126663208){
    if(i56<0.032060787081718445){
     s0+=71135.0;
     s1+=563.0;
    } else {
     s0+=11093.0;
     s1+=576.0;
    }
   } else {
    if(i44<2.5324801754322834e-05){
     s0+=379.0;
     s1+=7.0;
    } else {
     s0+=258.0;
     s1+=206.0;
    }
   }
  }
 }
} else {
 if(i1<-7.546199049102142e-05){
  if(i15<0.0007056489121168852){
   if(i29<-0.0005387067794799805){
    if(i43<0.06552129983901978){
     s0+=331.0;
     s1+=70.0;
    } else {
     s0+=30.0;
     s1+=133.0;
    }
   } else {
    if(i46<-0.00018035108223557472){
     s0+=53.0;
    } else {
     s0+=248.0;
     s1+=16044.0;
    }
   }
  } else {
   s0+=361.0;
  }
 } else {
  if(i15<0.00029910189914517105){
   if(i18<-0.0011255145072937012){
    if(i14<0.005224296823143959){
     s0+=603.0;
     s1+=140.0;
    } else {
     s0+=29.0;
     s1+=86.0;
    }
   } else {
    if(i67<2.3167528979683993e-06){
     s0+=375.0;
     s1+=2632.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   if(i28<0.0019440874457359314){
    s0+=4399.0;
   } else {
    if(i37<1.0853664875030518){
     s0+=770.0;
     s1+=165.0;
    } else {
     s0+=75.0;
     s1+=241.0;
    }
   }
  }
 }
}
if(i2<0.0009613633155822754){
 if(i5<0.0003268122673034668){
  if(i7<0.01973491534590721){
   if(i14<0.0014959170948714018){
    if(i63<-0.0004164278507232666){
     s0+=13420.0;
     s1+=344.0;
    } else {
     s0+=68579.0;
     s1+=253.0;
    }
   } else {
    if(i41<0.9949947595596313){
     s0+=17234.0;
     s1+=484.0;
    } else {
     s0+=5306.0;
     s1+=2053.0;
    }
   }
  } else {
   if(i9<0.8943436145782471){
    if(i41<0.9923980236053467){
     s0+=46.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i42<0.007204015739262104){
     s0+=3.0;
    } else {
     s1+=210.0;
    }
   }
  }
 } else {
  if(i56<0.028595607727766037){
   if(i1<-4.3209725845372304e-05){
    if(i39<1.122192621231079){
     s0+=73.0;
     s1+=521.0;
    } else {
     s0+=971.0;
     s1+=371.0;
    }
   } else {
    if(i28<0.0010021098423749208){
     s0+=2584.0;
     s1+=601.0;
    } else {
     s0+=4688.0;
     s1+=125.0;
    }
   }
  } else {
   if(i30<0.06460830569267273){
    if(i10<0.9784214496612549){
     s0+=678.0;
     s1+=62.0;
    } else {
     s0+=104.0;
     s1+=122.0;
    }
   } else {
    if(i64<-0.0005547840264625847){
     s0+=346.0;
     s1+=2448.0;
    } else {
     s0+=259.0;
     s1+=334.0;
    }
   }
  }
 }
} else {
 if(i27<0.0023625660687685013){
  if(i53<0.0007887855172157288){
   if(i15<0.0005907327868044376){
    s1+=2154.0;
   } else {
    s0+=79.0;
   }
  } else {
   if(i22<1.116804838180542){
    s1+=136.0;
   } else {
    s0+=1991.0;
   }
  }
 } else {
  if(i23<0.0031147003173828125){
   if(i31<1.2759335041046143){
    if(i55<0.23447942733764648){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i29<-0.0002384185791015625){
    if(i19<0.03396698832511902){
     s0+=36.0;
     s1+=50.0;
    } else {
     s0+=9.0;
     s1+=395.0;
    }
   } else {
    if(i7<0.0047505097463727){
     s0+=14.0;
     s1+=401.0;
    } else {
     s0+=1.0;
     s1+=13281.0;
    }
   }
  }
 }
}
if(i1<-8.429215813521296e-05){
 if(i13<0.9184360504150391){
  if(i23<0.06147068738937378){
   if(i7<0.02213778905570507){
    if(i73<-0.014972925186157227){
     s0+=12.0;
     s1+=17.0;
    } else {
     s0+=778.0;
     s1+=12.0;
    }
   } else {
    if(i76<-0.16579943895339966){
     s1+=26.0;
    } else {
     s0+=60.0;
     s1+=14.0;
    }
   }
  } else {
   if(i62<-0.01805424690246582){
    if(i78<-0.01776912808418274){
     s1+=3.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i54<0.0017185593023896217){
     s0+=2.0;
    } else {
     s0+=9.0;
     s1+=186.0;
    }
   }
  }
 } else {
  if(i21<0.0022823007311671972){
   if(i51<0.9998688697814941){
    s0+=292.0;
   } else {
    if(i46<-6.805928569519892e-05){
     s0+=78.0;
    } else {
     s1+=1066.0;
    }
   }
  } else {
   if(i44<0.0003094805870205164){
    if(i39<1.1497111320495605){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=131.0;
     s1+=15024.0;
    }
   } else {
    if(i48<1.0256946086883545){
     s0+=85.0;
     s1+=65.0;
    } else {
     s0+=11.0;
     s1+=208.0;
    }
   }
  }
 }
} else {
 if(i10<1.0060510635375977){
  if(i14<0.001712622120976448){
   if(i32<0.0005478583043441176){
    if(i1<-6.55341791571118e-05){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=68885.0;
     s1+=165.0;
    }
   } else {
    if(i21<0.0002774372696876526){
     s0+=1546.0;
     s1+=499.0;
    } else {
     s0+=18445.0;
     s1+=233.0;
    }
   }
  } else {
   if(i15<0.00025283085415139794){
    if(i29<-0.00020891427993774414){
     s0+=4525.0;
     s1+=407.0;
    } else {
     s0+=1739.0;
     s1+=2624.0;
    }
   } else {
    if(i46<-3.850795474136248e-05){
     s0+=162.0;
     s1+=242.0;
    } else {
     s0+=15149.0;
     s1+=716.0;
    }
   }
  }
 } else {
  if(i7<0.003936396911740303){
   if(i34<1.0952479839324951){
    if(i41<1.0080888271331787){
     s0+=312.0;
     s1+=32.0;
    } else {
     s1+=501.0;
    }
   } else {
    if(i64<-0.0012791184708476067){
     s0+=248.0;
     s1+=34.0;
    } else {
     s0+=3563.0;
     s1+=14.0;
    }
   }
  } else {
   if(i4<1.0007734298706055){
    if(i28<0.0011173030361533165){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i42<0.0010124382097274065){
     s1+=1533.0;
    } else {
     s0+=173.0;
     s1+=885.0;
    }
   }
  }
 }
}
if(i7<0.007575519382953644){
 if(i4<1.0025594234466553){
  if(i32<0.0007064561941660941){
   if(i31<1.1354830265045166){
    if(i34<1.0776758193969727){
     s0+=18304.0;
     s1+=241.0;
    } else {
     s0+=57953.0;
     s1+=55.0;
    }
   } else {
    if(i61<1.0010285377502441){
     s0+=1690.0;
     s1+=2.0;
    } else {
     s0+=476.0;
     s1+=88.0;
    }
   }
  } else {
   if(i18<-0.0013831257820129395){
    if(i22<1.1164028644561768){
     s0+=444.0;
     s1+=104.0;
    } else {
     s0+=15402.0;
     s1+=70.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=3189.0;
     s1+=2548.0;
    } else {
     s0+=8571.0;
     s1+=327.0;
    }
   }
  }
 } else {
  if(i29<0.00019687414169311523){
   if(i1<-6.86826097080484e-05){
    if(i52<9.834766387939453e-06){
     s0+=21.0;
     s1+=251.0;
    } else {
     s0+=115.0;
     s1+=50.0;
    }
   } else {
    if(i7<0.00413128174841404){
     s0+=4014.0;
     s1+=129.0;
    } else {
     s0+=543.0;
     s1+=617.0;
    }
   }
  } else {
   if(i15<0.0006554124993272126){
    if(i41<1.0048800706863403){
     s0+=17.0;
    } else {
     s0+=41.0;
     s1+=2761.0;
    }
   } else {
    s0+=574.0;
   }
  }
 }
} else {
 if(i3<0.9982897043228149){
  if(i37<1.116155982017517){
   if(i23<0.15758711099624634){
    if(i5<0.001017451286315918){
     s0+=4493.0;
     s1+=143.0;
    } else {
     s0+=70.0;
     s1+=43.0;
    }
   } else {
    if(i28<0.004144398029893637){
     s0+=37.0;
    } else {
     s0+=27.0;
     s1+=95.0;
    }
   }
  } else {
   if(i34<1.320885181427002){
    if(i49<-0.0003708688891492784){
     s1+=3.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i62<-0.01069939136505127){
     s0+=3.0;
     s1+=24.0;
    } else {
     s1+=240.0;
    }
   }
  }
 } else {
  if(i62<-0.00895226001739502){
   if(i10<0.9772737622261047){
    if(i23<0.041206568479537964){
     s0+=237.0;
     s1+=72.0;
    } else {
     s0+=54.0;
     s1+=198.0;
    }
   } else {
    if(i22<1.2997381687164307){
     s0+=7.0;
    } else {
     s0+=19.0;
     s1+=381.0;
    }
   }
  } else {
   if(i70<6.668858532066224e-06){
    if(i23<0.04210478067398071){
     s0+=134.0;
     s1+=135.0;
    } else {
     s0+=148.0;
     s1+=15642.0;
    }
   } else {
    s0+=45.0;
   }
  }
 }
}
if(i13<1.0169901847839355){
 if(i2<0.0009840130805969238){
  if(i37<1.1410577297210693){
   if(i40<0.012148621492087841){
    if(i32<0.000722388387657702){
     s0+=58331.0;
     s1+=206.0;
    } else {
     s0+=12456.0;
     s1+=673.0;
    }
   } else {
    if(i0<-3.3915042877197266e-05){
     s0+=30118.0;
     s1+=752.0;
    } else {
     s0+=12236.0;
     s1+=3749.0;
    }
   }
  } else {
   if(i21<0.002563408575952053){
    s0+=375.0;
   } else {
    if(i40<0.0764189213514328){
     s0+=24.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=839.0;
    }
   }
  }
 } else {
  if(i52<2.0205974578857422e-05){
   if(i15<0.000714269932359457){
    if(i1<-7.564359839307144e-05){
     s0+=51.0;
     s1+=2697.0;
    } else {
     s0+=192.0;
     s1+=1031.0;
    }
   } else {
    s0+=591.0;
   }
  } else {
   if(i21<0.004975386895239353){
    s0+=656.0;
   } else {
    s1+=175.0;
   }
  }
 }
} else {
 if(i15<0.0007054299348965287){
  if(i6<8.52346420288086e-06){
   if(i27<0.00890680868178606){
    if(i61<1.0014629364013672){
     s0+=545.0;
     s1+=11.0;
    } else {
     s0+=74.0;
     s1+=76.0;
    }
   } else {
    if(i53<0.004174030851572752){
     s0+=12.0;
    } else {
     s1+=153.0;
    }
   }
  } else {
   if(i0<1.0073184967041016e-05){
    if(i56<0.05901608616113663){
     s0+=214.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=149.0;
    }
   } else {
    if(i2<0.0008943080902099609){
     s0+=186.0;
     s1+=1113.0;
    } else {
     s0+=51.0;
     s1+=12512.0;
    }
   }
  }
 } else {
  s0+=552.0;
 }
}
if(i1<-0.0001083441820810549){
 if(i44<0.0003123870410490781){
  if(i46<-0.0001819253811845556){
   s0+=57.0;
  } else {
   if(i59<-5.658583540935069e-05){
    s0+=23.0;
   } else {
    if(i19<0.0033193512354046106){
     s0+=53.0;
     s1+=110.0;
    } else {
     s0+=106.0;
     s1+=14301.0;
    }
   }
  }
 } else {
  if(i23<0.04550141096115112){
   if(i19<0.0547424778342247){
    if(i64<0.0013666790910065174){
     s0+=335.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i54<0.004299202933907509){
     s0+=55.0;
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=35.0;
    }
   }
  } else {
   if(i29<-0.0008352398872375488){
    if(i5<0.00038164854049682617){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i37<0.9411240816116333){
     s0+=7.0;
    } else {
     s0+=13.0;
     s1+=305.0;
    }
   }
  }
 }
} else {
 if(i10<1.0076665878295898){
  if(i14<0.001730130985379219){
   if(i22<1.0817922353744507){
    if(i22<1.064497947692871){
     s0+=14897.0;
     s1+=52.0;
    } else {
     s0+=2318.0;
     s1+=567.0;
    }
   } else {
    if(i25<0.9924368858337402){
     s0+=11951.0;
     s1+=206.0;
    } else {
     s0+=61109.0;
     s1+=171.0;
    }
   }
  } else {
   if(i21<0.0009237105259671807){
    if(i21<0.00023582334688398987){
     s0+=1757.0;
     s1+=11.0;
    } else {
     s0+=583.0;
     s1+=2577.0;
    }
   } else {
    if(i37<1.121600866317749){
     s0+=19744.0;
     s1+=1450.0;
    } else {
     s0+=353.0;
     s1+=868.0;
    }
   }
  }
 } else {
  if(i21<0.0010626810835674405){
   if(i34<1.1197539567947388){
    if(i22<1.057311773300171){
     s0+=1.0;
    } else {
     s1+=2403.0;
    }
   } else {
    s0+=70.0;
   }
  } else {
   if(i39<1.1729817390441895){
    if(i17<1.0258638858795166){
     s0+=2613.0;
     s1+=62.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i22<1.4586446285247803){
     s0+=21.0;
     s1+=1195.0;
    } else {
     s0+=371.0;
    }
   }
  }
 }
}
if(i16<1.004654884338379){
 if(i5<0.00043386220932006836){
  if(i14<0.0015695479232817888){
   if(i66<0.0001653643703320995){
    if(i58<1.0004466772079468){
     s0+=42102.0;
     s1+=11.0;
    } else {
     s0+=28484.0;
     s1+=227.0;
    }
   } else {
    if(i42<0.0002471085754223168){
     s0+=800.0;
     s1+=304.0;
    } else {
     s0+=13689.0;
     s1+=157.0;
    }
   }
  } else {
   if(i12<0.19977131485939026){
    if(i27<0.001124548027291894){
     s0+=1851.0;
     s1+=2077.0;
    } else {
     s0+=19903.0;
     s1+=721.0;
    }
   } else {
    if(i1<-3.835119059658609e-05){
     s0+=12.0;
     s1+=446.0;
    } else {
     s0+=73.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i49<-0.0001988192816497758){
   if(i1<-3.165038287988864e-05){
    if(i23<0.05076974630355835){
     s0+=180.0;
     s1+=92.0;
    } else {
     s0+=374.0;
     s1+=3103.0;
    }
   } else {
    if(i33<0.0006135148578323424){
     s0+=1.0;
     s1+=98.0;
    } else {
     s0+=467.0;
     s1+=84.0;
    }
   }
  } else {
   if(i40<0.010814623907208443){
    if(i18<0.0010284185409545898){
     s0+=2756.0;
     s1+=98.0;
    } else {
     s0+=70.0;
     s1+=36.0;
    }
   } else {
    if(i26<1.1109884977340698){
     s0+=1479.0;
     s1+=415.0;
    } else {
     s0+=95.0;
     s1+=151.0;
    }
   }
  }
 }
} else {
 if(i22<1.1979892253875732){
  if(i22<1.116804838180542){
   if(i2<0.0010314583778381348){
    if(i27<0.00024320474767591804){
     s0+=337.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i51<0.9997497797012329){
     s0+=12.0;
    } else {
     s1+=1960.0;
    }
   }
  } else {
   s0+=2935.0;
  }
 } else {
  if(i5<0.0004273056983947754){
   if(i23<0.14772745966911316){
    if(i65<0.009292720817029476){
     s0+=261.0;
     s1+=6.0;
    } else {
     s0+=34.0;
     s1+=22.0;
    }
   } else {
    if(i31<1.1085567474365234){
     s0+=2.0;
    } else {
     s1+=92.0;
    }
   }
  } else {
   if(i29<-0.000269472599029541){
    if(i7<0.009849278256297112){
     s0+=148.0;
     s1+=16.0;
    } else {
     s0+=319.0;
     s1+=761.0;
    }
   } else {
    if(i42<0.00035260102595202625){
     s0+=36.0;
    } else {
     s0+=138.0;
     s1+=13292.0;
    }
   }
  }
 }
}
if(i1<-9.841620340012014e-05){
 if(i12<0.028592169284820557){
  if(i10<0.9789471626281738){
   if(i72<0.05141763016581535){
    if(i27<0.010851318016648293){
     s0+=87.0;
     s1+=9.0;
    } else {
     s0+=442.0;
    }
   } else {
    if(i75<0.002931267023086548){
     s0+=27.0;
     s1+=9.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i3<1.0076498985290527){
    if(i72<0.023366624489426613){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=42.0;
    }
   } else {
    s1+=72.0;
   }
  }
 } else {
  if(i50<-6.607598152186256e-06){
   s0+=229.0;
  } else {
   if(i63<-0.00906345248222351){
    if(i36<1.3858838081359863){
     s0+=60.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=38.0;
    }
   } else {
    if(i67<0.00017717794980853796){
     s0+=41.0;
     s1+=15052.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i18<0.0011134147644042969){
  if(i4<1.0021003484725952){
   if(i9<1.0097987651824951){
    if(i14<0.0014786629471927881){
     s0+=82300.0;
     s1+=565.0;
    } else {
     s0+=23805.0;
     s1+=2818.0;
    }
   } else {
    if(i31<1.086911916732788){
     s0+=36.0;
     s1+=413.0;
    } else {
     s0+=687.0;
     s1+=101.0;
    }
   }
  } else {
   if(i36<1.1825730800628662){
    if(i14<0.001961824717000127){
     s0+=4656.0;
     s1+=129.0;
    } else {
     s0+=1646.0;
     s1+=1091.0;
    }
   } else {
    if(i37<1.0897798538208008){
     s0+=875.0;
     s1+=490.0;
    } else {
     s0+=90.0;
     s1+=949.0;
    }
   }
  }
 } else {
  if(i21<0.0010800787713378668){
   if(i34<1.056680679321289){
    s0+=4.0;
   } else {
    s1+=1710.0;
   }
  } else {
   if(i39<1.1729364395141602){
    if(i56<0.04180765524506569){
     s0+=1511.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=21.0;
    }
   } else {
    if(i4<1.001625418663025){
     s0+=195.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=541.0;
    }
   }
  }
 }
}
if(i11<1.016714334487915){
 if(i2<0.0010543465614318848){
  if(i19<0.06490268558263779){
   if(i0<3.057718276977539e-05){
    if(i14<0.0014671849785372615){
     s0+=81034.0;
     s1+=505.0;
    } else {
     s0+=25558.0;
     s1+=3485.0;
    }
   } else {
    if(i40<0.028776798397302628){
     s0+=6433.0;
     s1+=606.0;
    } else {
     s0+=136.0;
     s1+=586.0;
    }
   }
  } else {
   if(i5<-0.0007902383804321289){
    if(i12<0.12644842267036438){
     s0+=239.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i45<0.19926536083221436){
     s0+=68.0;
     s1+=58.0;
    } else {
     s0+=16.0;
     s1+=787.0;
    }
   }
  }
 } else {
  if(i82<-0.001615673303604126){
   if(i50<-6.841412869107444e-06){
    s0+=29.0;
   } else {
    if(i15<0.0007562452228739858){
     s0+=68.0;
     s1+=2167.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i42<0.0010537572670727968){
    if(i15<0.0006505445926450193){
     s1+=810.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i22<1.1843671798706055){
     s0+=1087.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=620.0;
    }
   }
  }
 }
} else {
 if(i1<-6.5184838604182e-05){
  if(i70<5.159015927347355e-06){
   if(i51<0.9983373284339905){
    s0+=71.0;
   } else {
    if(i50<-6.2567542045144364e-06){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=183.0;
     s1+=13278.0;
    }
   }
  } else {
   s0+=37.0;
  }
 } else {
  if(i7<0.006749086081981659){
   if(i28<0.0008929211762733757){
    if(i22<1.1088526248931885){
     s1+=293.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i18<-0.0032408833503723145){
     s0+=50.0;
     s1+=20.0;
    } else {
     s0+=1617.0;
     s1+=47.0;
    }
   }
  } else {
   if(i44<0.000209446792723611){
    if(i79<0.003663778305053711){
     s0+=14.0;
     s1+=97.0;
    } else {
     s0+=4.0;
     s1+=735.0;
    }
   } else {
    s0+=25.0;
   }
  }
 }
}
if(i1<-9.239692008122802e-05){
 if(i23<0.041282445192337036){
  if(i6<5.632638931274414e-05){
   if(i29<-0.00026351213455200195){
    if(i20<0.9429119825363159){
     s0+=554.0;
     s1+=8.0;
    } else {
     s0+=153.0;
     s1+=50.0;
    }
   } else {
    if(i64<0.00010201940312981606){
     s0+=2.0;
     s1+=28.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   }
  } else {
   if(i79<-0.003112196922302246){
    if(i9<0.9384709596633911){
     s0+=15.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=63.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i21<0.0023148341570049524){
   if(i24<0.0004540979862213135){
    if(i34<1.1188106536865234){
     s1+=784.0;
    } else {
     s0+=27.0;
    }
   } else {
    s0+=210.0;
   }
  } else {
   if(i10<0.9595667123794556){
    if(i55<0.5938006639480591){
     s0+=35.0;
     s1+=5.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i0<2.3245811462402344e-06){
     s0+=30.0;
     s1+=578.0;
    } else {
     s0+=14.0;
     s1+=14372.0;
    }
   }
  }
 }
} else {
 if(i7<0.003994472324848175){
  if(i0<9.721517562866211e-05){
   if(i7<0.0031150076538324356){
    if(i66<0.00018452707445248961){
     s0+=73722.0;
     s1+=274.0;
    } else {
     s0+=11788.0;
     s1+=512.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=1963.0;
     s1+=547.0;
    } else {
     s0+=6145.0;
     s1+=72.0;
    }
   }
  } else {
   if(i31<1.078357458114624){
    s1+=510.0;
   } else {
    s0+=567.0;
   }
  }
 } else {
  if(i17<1.0085947513580322){
   if(i0<-2.3543834686279297e-05){
    if(i6<-9.59634780883789e-06){
     s0+=14656.0;
     s1+=74.0;
    } else {
     s0+=3833.0;
     s1+=550.0;
    }
   } else {
    if(i59<-2.409255557722645e-06){
     s0+=983.0;
     s1+=2795.0;
    } else {
     s0+=275.0;
    }
   }
  } else {
   if(i5<-9.763240814208984e-05){
    if(i7<0.008427996188402176){
     s0+=804.0;
     s1+=25.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i21<0.005179144442081451){
     s0+=273.0;
     s1+=3146.0;
    } else {
     s0+=205.0;
     s1+=154.0;
    }
   }
  }
 }
}
if(i0<6.264448165893555e-05){
 if(i4<1.002185583114624){
  if(i11<1.0181143283843994){
   if(i12<0.23148182034492493){
    if(i24<8.219480514526367e-05){
     s0+=77641.0;
     s1+=844.0;
    } else {
     s0+=29947.0;
     s1+=2922.0;
    }
   } else {
    if(i7<0.0061469776555895805){
     s0+=70.0;
     s1+=2.0;
    } else {
     s1+=168.0;
    }
   }
  } else {
   if(i6<1.0788440704345703e-05){
    if(i32<0.0009565157815814018){
     s0+=449.0;
     s1+=28.0;
    } else {
     s0+=82.0;
     s1+=277.0;
    }
   } else {
    if(i1<-1.5262587112374604e-05){
     s0+=17.0;
     s1+=396.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i64<-0.0008322651847265661){
   if(i30<0.17496639490127563){
    if(i82<-0.0005548298358917236){
     s0+=75.0;
     s1+=478.0;
    } else {
     s0+=1025.0;
     s1+=443.0;
    }
   } else {
    if(i28<0.00244087353348732){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=86.0;
     s1+=1233.0;
    }
   }
  } else {
   if(i69<0.004323652479797602){
    if(i24<0.0005086064338684082){
     s0+=1434.0;
     s1+=572.0;
    } else {
     s0+=2860.0;
     s1+=66.0;
    }
   } else {
    if(i20<0.9427584409713745){
     s0+=299.0;
     s1+=25.0;
    } else {
     s0+=292.0;
     s1+=461.0;
    }
   }
  }
 }
} else {
 if(i39<1.1706266403198242){
  if(i22<1.116804838180542){
   if(i0<6.99758529663086e-05){
    if(i39<1.0531964302062988){
     s0+=92.0;
    } else {
     s1+=163.0;
    }
   } else {
    if(i42<0.00013850349932909012){
     s0+=6.0;
    } else {
     s1+=2203.0;
    }
   }
  } else {
   if(i82<0.0032123923301696777){
    if(i21<0.002429952844977379){
     s0+=1958.0;
    } else {
     s0+=5.0;
     s1+=15.0;
    }
   } else {
    if(i27<0.0025040144100785255){
     s0+=6.0;
    } else {
     s1+=35.0;
    }
   }
  }
 } else {
  if(i26<1.0742113590240479){
   if(i15<0.0004442645295057446){
    if(i43<0.018107563257217407){
     s0+=32.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=219.0;
    }
   } else {
    if(i73<-0.001302272081375122){
     s0+=2.0;
     s1+=28.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   }
  } else {
   if(i30<0.04125577211380005){
    if(i47<9.580408004694618e-06){
     s1+=64.0;
    } else {
     s0+=24.0;
     s1+=21.0;
    }
   } else {
    if(i48<0.863822340965271){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=13650.0;
    }
   }
  }
 }
}
if(i1<-8.845650154398754e-05){
 if(i13<0.914894163608551){
  if(i76<-0.16298624873161316){
   if(i37<0.9907351136207581){
    if(i57<1.00136399269104){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i43<0.0023055970668792725){
     s0+=12.0;
     s1+=23.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i43<0.04583209753036499){
    if(i12<0.05860400199890137){
     s0+=671.0;
     s1+=18.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i40<0.1158980280160904){
     s0+=49.0;
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i50<-6.419467354135122e-06){
   if(i41<0.9930577278137207){
    s1+=1.0;
   } else {
    s0+=296.0;
   }
  } else {
   if(i18<-0.0041656494140625){
    if(i26<1.0384800434112549){
     s0+=90.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=118.0;
    }
   } else {
    if(i12<0.016036123037338257){
     s0+=57.0;
     s1+=70.0;
    } else {
     s0+=61.0;
     s1+=15736.0;
    }
   }
  }
 }
} else {
 if(i13<1.0165371894836426){
  if(i3<1.003509759902954){
   if(i5<0.0002773404121398926){
    if(i30<0.23401862382888794){
     s0+=101629.0;
     s1+=2516.0;
    } else {
     s0+=72.0;
     s1+=94.0;
    }
   } else {
    if(i49<-0.00016658869571983814){
     s0+=1184.0;
     s1+=848.0;
    } else {
     s0+=6811.0;
     s1+=823.0;
    }
   }
  } else {
   if(i19<0.013531321659684181){
    if(i18<0.0011800527572631836){
     s0+=3430.0;
     s1+=375.0;
    } else {
     s0+=607.0;
     s1+=836.0;
    }
   } else {
    if(i29<-0.0002257823944091797){
     s0+=71.0;
     s1+=151.0;
    } else {
     s0+=14.0;
     s1+=513.0;
    }
   }
  }
 } else {
  if(i39<1.0905578136444092){
   if(i9<1.0072526931762695){
    s0+=5.0;
   } else {
    s1+=871.0;
   }
  } else {
   if(i35<1.0377936363220215){
    if(i1<-6.100588143453933e-05){
     s0+=181.0;
     s1+=191.0;
    } else {
     s0+=1055.0;
     s1+=163.0;
    }
   } else {
    if(i7<0.005223320331424475){
     s0+=345.0;
     s1+=25.0;
    } else {
     s0+=10.0;
     s1+=618.0;
    }
   }
  }
 }
}
if(i17<1.0162643194198608){
 if(i12<0.19036078453063965){
  if(i47<-1.1554561751836445e-05){
   if(i15<0.0006983933271840215){
    if(i50<-1.6290079656755552e-05){
     s0+=21.0;
    } else {
     s1+=1284.0;
    }
   } else {
    s0+=114.0;
   }
  } else {
   if(i14<0.0017377252224832773){
    if(i62<-0.0007867217063903809){
     s0+=12937.0;
     s1+=519.0;
    } else {
     s0+=78398.0;
     s1+=457.0;
    }
   } else {
    if(i34<1.1164028644561768){
     s0+=3179.0;
     s1+=3062.0;
    } else {
     s0+=19672.0;
     s1+=2736.0;
    }
   }
  }
 } else {
  if(i56<0.03164418414235115){
   if(i65<0.0009755222126841545){
    if(i57<1.005292534828186){
     s0+=420.0;
     s1+=10.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i59<-4.727268787974026e-06){
     s1+=139.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i46<-7.53761560190469e-06){
    if(i1<-2.4520250008208677e-05){
     s0+=7.0;
     s1+=1588.0;
    } else {
     s0+=32.0;
     s1+=50.0;
    }
   } else {
    if(i46<-5.23132484886446e-06){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
} else {
 if(i7<0.004374008625745773){
  if(i2<0.0020765066146850586){
   if(i22<1.0780352354049683){
    s1+=153.0;
   } else {
    if(i15<0.0002449968014843762){
     s0+=578.0;
     s1+=81.0;
    } else {
     s0+=940.0;
    }
   }
  } else {
   if(i3<1.008958339691162){
    s0+=18.0;
   } else {
    s1+=437.0;
   }
  }
 } else {
  if(i4<1.0006238222122192){
   if(i21<0.01342189870774746){
    if(i34<1.0905578136444092){
     s1+=10.0;
    } else {
     s0+=150.0;
     s1+=6.0;
    }
   } else {
    s1+=195.0;
   }
  } else {
   if(i51<0.9984520673751831){
    s0+=28.0;
   } else {
    if(i0<-0.00011038780212402344){
     s0+=3.0;
    } else {
     s0+=66.0;
     s1+=13508.0;
    }
   }
  }
 }
}
if(i20<1.0146541595458984){
 if(i4<1.0026230812072754){
  if(i32<0.000716265756636858){
   if(i21<0.0019596852362155914){
    if(i21<0.00027482002042233944){
     s0+=19608.0;
     s1+=275.0;
    } else {
     s0+=53944.0;
     s1+=26.0;
    }
   } else {
    if(i22<1.2000374794006348){
     s0+=215.0;
     s1+=123.0;
    } else {
     s0+=5338.0;
     s1+=14.0;
    }
   }
  } else {
   if(i4<0.9998906254768372){
    if(i19<0.08811405301094055){
     s0+=20188.0;
     s1+=444.0;
    } else {
     s0+=3.0;
     s1+=102.0;
    }
   } else {
    if(i0<-2.485513687133789e-05){
     s0+=7636.0;
     s1+=551.0;
    } else {
     s0+=3489.0;
     s1+=3232.0;
    }
   }
  }
 } else {
  if(i53<0.002247416879981756){
   if(i7<0.004247186705470085){
    if(i28<0.0010673414217308164){
     s0+=720.0;
     s1+=498.0;
    } else {
     s0+=3117.0;
     s1+=40.0;
    }
   } else {
    if(i41<1.001664638519287){
     s0+=310.0;
     s1+=66.0;
    } else {
     s0+=149.0;
     s1+=1200.0;
    }
   }
  } else {
   if(i48<1.0332145690917969){
    if(i23<0.0397057831287384){
     s0+=549.0;
     s1+=180.0;
    } else {
     s0+=220.0;
     s1+=681.0;
    }
   } else {
    if(i27<0.0026099449023604393){
     s0+=85.0;
     s1+=31.0;
    } else {
     s0+=355.0;
     s1+=3145.0;
    }
   }
  }
 }
} else {
 if(i14<0.0013938674237579107){
  if(i0<0.00013244152069091797){
   if(i60<0.07062487304210663){
    if(i25<1.0097589492797852){
     s0+=60.0;
     s1+=3.0;
    } else {
     s0+=354.0;
    }
   } else {
    if(i58<1.0015339851379395){
     s0+=74.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i58<1.0034277439117432){
    if(i67<5.0309099606238306e-06){
     s1+=492.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i1<-3.458932405919768e-05){
   if(i19<0.00623480137437582){
    if(i41<1.0127863883972168){
     s0+=214.0;
     s1+=170.0;
    } else {
     s0+=2.0;
     s1+=521.0;
    }
   } else {
    if(i50<-8.008137228898704e-06){
     s0+=12.0;
    } else {
     s0+=52.0;
     s1+=12101.0;
    }
   }
  } else {
   if(i39<1.105151891708374){
    s1+=43.0;
   } else {
    if(i3<1.004422903060913){
     s0+=166.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=22.0;
    }
   }
  }
 }
}
if(i5<0.0005874037742614746){
 if(i45<0.3634226322174072){
  if(i17<1.0177853107452393){
   if(i27<0.0010524073150008917){
    if(i30<0.06249210238456726){
     s0+=29645.0;
     s1+=1838.0;
    } else {
     s0+=1286.0;
     s1+=1019.0;
    }
   } else {
    if(i43<0.2261349856853485){
     s0+=78217.0;
     s1+=1096.0;
    } else {
     s0+=22.0;
     s1+=131.0;
    }
   }
  } else {
   if(i59<-3.714093281814712e-06){
    if(i2<-0.00025349855422973633){
     s0+=186.0;
     s1+=81.0;
    } else {
     s0+=18.0;
     s1+=539.0;
    }
   } else {
    if(i55<0.013798626139760017){
     s1+=1.0;
    } else {
     s0+=459.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i19<0.06406886875629425){
   if(i50<-2.4867149477358907e-06){
    s1+=3.0;
   } else {
    if(i20<0.9754230976104736){
     s0+=149.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   s1+=347.0;
  }
 }
} else {
 if(i7<0.004094831645488739){
  if(i2<0.0017902851104736328){
   if(i29<0.00018197298049926758){
    if(i20<1.0231115818023682){
     s0+=4090.0;
     s1+=80.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i27<0.0008211208041757345){
     s1+=230.0;
    } else {
     s0+=604.0;
    }
   }
  } else {
   if(i32<0.001325441524386406){
    if(i2<0.0018059611320495605){
     s0+=3.0;
     s1+=16.0;
    } else {
     s1+=670.0;
    }
   } else {
    if(i30<0.24816274642944336){
     s0+=246.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<0.0007056489121168852){
   if(i10<0.9948837757110596){
    if(i0<4.112720489501953e-06){
     s0+=791.0;
     s1+=309.0;
    } else {
     s0+=472.0;
     s1+=1382.0;
    }
   } else {
    if(i10<0.9998571276664734){
     s0+=98.0;
     s1+=643.0;
    } else {
     s0+=66.0;
     s1+=15760.0;
    }
   }
  } else {
   s0+=315.0;
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i1<-8.23399968794547e-05){
  if(i37<1.0459970235824585){
   if(i32<0.0029645480681210756){
    if(i18<-0.003644227981567383){
     s0+=759.0;
     s1+=22.0;
    } else {
     s0+=107.0;
     s1+=53.0;
    }
   } else {
    if(i11<0.9033063054084778){
     s0+=98.0;
     s1+=44.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i40<0.013187572360038757){
    if(i52<-4.1425228118896484e-06){
     s0+=38.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   } else {
    if(i64<-0.00040355673991143703){
     s0+=54.0;
     s1+=1941.0;
    } else {
     s0+=70.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i14<0.0017241251189261675){
   if(i14<0.0011055102804675698){
    if(i14<0.0009018229320645332){
     s0+=69399.0;
     s1+=162.0;
    } else {
     s0+=7186.0;
     s1+=117.0;
    }
   } else {
    if(i48<1.017997145652771){
     s0+=4093.0;
     s1+=473.0;
    } else {
     s0+=10702.0;
     s1+=200.0;
    }
   }
  } else {
   if(i27<0.0012122662737965584){
    if(i31<1.0382080078125){
     s0+=2047.0;
     s1+=350.0;
    } else {
     s0+=476.0;
     s1+=2571.0;
    }
   } else {
    if(i12<0.17673194408416748){
     s0+=19033.0;
     s1+=1085.0;
    } else {
     s0+=355.0;
     s1+=617.0;
    }
   }
  }
 }
} else {
 if(i7<0.004063703119754791){
  if(i28<0.0011192981619387865){
   if(i27<0.00024220827617682517){
    s0+=76.0;
   } else {
    if(i39<1.116804838180542){
     s0+=2.0;
     s1+=716.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i39<1.176405668258667){
    s0+=1762.0;
   } else {
    if(i18<0.0015255212783813477){
     s0+=20.0;
    } else {
     s1+=266.0;
    }
   }
  }
 } else {
  if(i12<0.15020403265953064){
   if(i58<0.9985305666923523){
    if(i67<3.7752147363789845e-07){
     s0+=3.0;
     s1+=56.0;
    } else {
     s0+=116.0;
     s1+=2.0;
    }
   } else {
    if(i4<1.0020711421966553){
     s0+=46.0;
    } else {
     s0+=208.0;
     s1+=3194.0;
    }
   }
  } else {
   if(i33<0.0017937085358425975){
    if(i1<-0.0002690666005946696){
     s1+=7.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i22<1.170810580253601){
     s0+=7.0;
    } else {
     s1+=12104.0;
    }
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i32<0.0007447777315974236){
  if(i32<0.0005152646917849779){
   if(i36<1.1354830265045166){
    if(i20<0.994538426399231){
     s0+=8606.0;
     s1+=54.0;
    } else {
     s0+=53952.0;
     s1+=9.0;
    }
   } else {
    if(i58<1.0011694431304932){
     s0+=3753.0;
    } else {
     s0+=1907.0;
     s1+=61.0;
    }
   }
  } else {
   if(i35<1.03103768825531){
    if(i37<1.0178966522216797){
     s0+=1377.0;
     s1+=234.0;
    } else {
     s0+=12691.0;
     s1+=291.0;
    }
   } else {
    if(i12<0.09401598572731018){
     s0+=22.0;
    } else {
     s0+=51.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i3<0.9985610246658325){
   if(i30<0.21763533353805542){
    if(i21<0.0009493619436398149){
     s0+=747.0;
     s1+=361.0;
    } else {
     s0+=23126.0;
     s1+=478.0;
    }
   } else {
    if(i56<0.03933347016572952){
     s0+=44.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=232.0;
    }
   }
  } else {
   if(i31<1.1324117183685303){
    if(i13<1.009852647781372){
     s0+=6956.0;
     s1+=2599.0;
    } else {
     s0+=797.0;
     s1+=1112.0;
    }
   } else {
    if(i37<1.0670145750045776){
     s0+=333.0;
     s1+=189.0;
    } else {
     s0+=262.0;
     s1+=2167.0;
    }
   }
  }
 }
} else {
 if(i28<0.0023084082640707493){
  if(i22<1.116804838180542){
   if(i28<0.0002100976271321997){
    s0+=89.0;
   } else {
    s1+=2277.0;
   }
  } else {
   if(i41<1.003732681274414){
    if(i1<-8.664394408697262e-05){
     s0+=62.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   } else {
    s0+=1889.0;
   }
  }
 } else {
  if(i30<0.0032147467136383057){
   if(i51<1.000321865081787){
    if(i44<0.0002691505942493677){
     s1+=1.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i33<0.005323625169694424){
     s0+=4.0;
     s1+=3.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i65<0.01547478698194027){
    if(i7<0.008488902822136879){
     s0+=64.0;
     s1+=1597.0;
    } else {
     s0+=15.0;
     s1+=12271.0;
    }
   } else {
    if(i71<0.026476681232452393){
     s1+=2.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i12<0.20402288436889648){
  if(i32<0.0007343760225921869){
   if(i53<0.0019204092677682638){
    if(i11<1.0269520282745361){
     s0+=78418.0;
     s1+=459.0;
    } else {
     s0+=61.0;
     s1+=31.0;
    }
   } else {
    if(i4<1.0024943351745605){
     s0+=2826.0;
     s1+=107.0;
    } else {
     s0+=88.0;
     s1+=90.0;
    }
   }
  } else {
   if(i3<0.9984424114227295){
    if(i2<-0.0007576048374176025){
     s0+=21815.0;
     s1+=348.0;
    } else {
     s0+=1898.0;
     s1+=412.0;
    }
   } else {
    if(i45<0.013435368426144123){
     s0+=4290.0;
     s1+=577.0;
    } else {
     s0+=4348.0;
     s1+=4346.0;
    }
   }
  }
 } else {
  if(i32<0.0007217901293188334){
   if(i1<-4.4556469219969586e-05){
    s1+=10.0;
   } else {
    if(i46<-5.903706551180221e-06){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=148.0;
    }
   }
  } else {
   if(i1<9.69919165072497e-06){
    if(i36<1.128379464149475){
     s0+=17.0;
    } else {
     s0+=40.0;
     s1+=1491.0;
    }
   } else {
    s0+=18.0;
   }
  }
 }
} else {
 if(i27<0.0023654235992580652){
  if(i33<0.001167495734989643){
   if(i22<1.0610902309417725){
    s0+=94.0;
   } else {
    if(i22<1.116804838180542){
     s1+=2224.0;
    } else {
     s0+=37.0;
    }
   }
  } else {
   if(i21<0.0010526366531848907){
    s1+=194.0;
   } else {
    s0+=1950.0;
   }
  }
 } else {
  if(i17<0.9108325839042664){
   if(i26<1.0395152568817139){
    if(i52<1.3589859008789062e-05){
     s0+=30.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i32<0.0040541281923651695){
     s0+=8.0;
     s1+=136.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i31<1.0789777040481567){
    if(i39<1.4586446285247803){
     s1+=23.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i43<0.021016240119934082){
     s0+=18.0;
     s1+=157.0;
    } else {
     s0+=38.0;
     s1+=14055.0;
    }
   }
  }
 }
}
if(i1<-9.339638927485794e-05){
 if(i9<0.9357659816741943){
  if(i23<0.04118296504020691){
   if(i4<1.0059109926223755){
    if(i20<0.9429119825363159){
     s0+=560.0;
     s1+=21.0;
    } else {
     s0+=64.0;
     s1+=24.0;
    }
   } else {
    if(i26<1.10160493850708){
     s0+=6.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i26<1.0724456310272217){
    if(i40<0.09435223042964935){
     s0+=27.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   } else {
    if(i54<0.0056176939979195595){
     s0+=17.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i70<5.199127372179646e-06){
   if(i51<0.9981535077095032){
    s0+=76.0;
   } else {
    if(i9<0.9648252725601196){
     s0+=116.0;
     s1+=525.0;
    } else {
     s0+=86.0;
     s1+=14896.0;
    }
   }
  } else {
   if(i40<0.35270529985427856){
    s0+=133.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i11<1.0156245231628418){
  if(i41<1.0079281330108643){
   if(i32<0.0007118540816009045){
    if(i3<1.007859230041504){
     s0+=79509.0;
     s1+=500.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i21<0.0009308744920417666){
     s0+=3654.0;
     s1+=2949.0;
    } else {
     s0+=28801.0;
     s1+=1577.0;
    }
   }
  } else {
   if(i21<0.0009706164710223675){
    if(i18<0.0009481310844421387){
     s0+=8.0;
     s1+=15.0;
    } else {
     s1+=827.0;
    }
   } else {
    if(i13<0.9972200989723206){
     s0+=18.0;
     s1+=112.0;
    } else {
     s0+=1385.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i15<0.0003379828413017094){
   if(i59<-5.168722054804675e-06){
    if(i51<1.0016223192214966){
     s0+=199.0;
     s1+=2208.0;
    } else {
     s0+=164.0;
     s1+=50.0;
    }
   } else {
    if(i14<0.0025957454927265644){
     s0+=832.0;
     s1+=20.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i60<0.11450997740030289){
    if(i43<0.19871878623962402){
     s0+=1063.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    if(i30<0.1440606713294983){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=77.0;
    }
   }
  }
 }
}
if(i5<0.0005876123905181885){
 if(i1<-8.107854228001088e-05){
  if(i37<1.0771270990371704){
   if(i67<2.039933406194905e-06){
    if(i72<-0.005991385318338871){
     s0+=1.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i64<-0.0017656070413067937){
     s0+=5.0;
     s1+=37.0;
    } else {
     s0+=784.0;
     s1+=64.0;
    }
   }
  } else {
   if(i49<-0.00041817384772002697){
    if(i12<0.0019797980785369873){
     s0+=2.0;
    } else {
     s1+=728.0;
    }
   } else {
    if(i40<0.018578501418232918){
     s0+=14.0;
    } else {
     s0+=28.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i14<0.001678377971984446){
   if(i62<-0.0008313655853271484){
    if(i42<0.0002545768511481583){
     s0+=290.0;
     s1+=286.0;
    } else {
     s0+=11784.0;
     s1+=153.0;
    }
   } else {
    if(i56<0.009587543085217476){
     s0+=43039.0;
     s1+=121.0;
    } else {
     s0+=33140.0;
     s1+=351.0;
    }
   }
  } else {
   if(i29<-0.0002117156982421875){
    if(i37<1.1231228113174438){
     s0+=15098.0;
     s1+=329.0;
    } else {
     s0+=93.0;
     s1+=92.0;
    }
   } else {
    if(i51<0.9995690584182739){
     s0+=3399.0;
     s1+=23.0;
    } else {
     s0+=2234.0;
     s1+=2981.0;
    }
   }
  }
 }
} else {
 if(i49<-0.000249463424552232){
  if(i7<0.0043731676414608955){
   if(i10<1.0182172060012817){
    if(i58<1.0028173923492432){
     s0+=100.0;
     s1+=64.0;
    } else {
     s0+=440.0;
    }
   } else {
    s1+=184.0;
   }
  } else {
   if(i48<0.9260998964309692){
    if(i0<7.426738739013672e-05){
     s0+=105.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=32.0;
    }
   } else {
    if(i47<7.431536505464464e-05){
     s0+=222.0;
     s1+=14933.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<0.00012034177780151367){
   if(i54<0.0031515248119831085){
    if(i15<0.0002633999683894217){
     s0+=414.0;
     s1+=1014.0;
    } else {
     s0+=4495.0;
     s1+=121.0;
    }
   } else {
    if(i2<3.3736228942871094e-05){
     s0+=263.0;
     s1+=41.0;
    } else {
     s0+=171.0;
     s1+=441.0;
    }
   }
  } else {
   if(i50<-7.215299774543382e-06){
    s0+=268.0;
   } else {
    if(i26<1.0234335660934448){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=2268.0;
    }
   }
  }
 }
}
if(i3<1.0038710832595825){
 if(i54<0.009031342342495918){
  if(i13<1.0165050029754639){
   if(i66<0.00018433501827530563){
    if(i7<0.003679860383272171){
     s0+=73615.0;
     s1+=346.0;
    } else {
     s0+=10476.0;
     s1+=1514.0;
    }
   } else {
    if(i33<0.00035028558340854943){
     s0+=589.0;
     s1+=550.0;
    } else {
     s0+=25576.0;
     s1+=2140.0;
    }
   }
  } else {
   if(i6<8.404254913330078e-06){
    if(i14<0.0027304866816848516){
     s0+=520.0;
     s1+=22.0;
    } else {
     s0+=54.0;
     s1+=78.0;
    }
   } else {
    if(i7<0.004991380497813225){
     s0+=274.0;
     s1+=54.0;
    } else {
     s0+=59.0;
     s1+=680.0;
    }
   }
  }
 } else {
  if(i12<0.05397862195968628){
   if(i76<-0.1184893548488617){
    if(i58<1.0018705129623413){
     s0+=193.0;
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=42.0;
    }
   } else {
    if(i52<1.8596649169921875e-05){
     s0+=628.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i15<0.00016957081970758736){
    if(i1<-2.4987315555335954e-05){
     s0+=9.0;
     s1+=71.0;
    } else {
     s0+=100.0;
    }
   } else {
    if(i49<5.521248385775834e-05){
     s0+=44.0;
     s1+=1015.0;
    } else {
     s0+=41.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i40<0.01864106021821499){
  if(i20<1.0167890787124634){
   if(i22<1.116804838180542){
    if(i20<1.0079724788665771){
     s0+=524.0;
     s1+=236.0;
    } else {
     s0+=61.0;
     s1+=1054.0;
    }
   } else {
    if(i2<0.0025193095207214355){
     s0+=3037.0;
     s1+=39.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i10<1.0163497924804688){
    if(i54<0.0007702899165451527){
     s0+=3.0;
     s1+=265.0;
    } else {
     s0+=114.0;
     s1+=47.0;
    }
   } else {
    s1+=1498.0;
   }
  }
 } else {
  if(i1<-6.915853009559214e-05){
   if(i70<6.0428860706451815e-06){
    if(i30<0.041255444288253784){
     s0+=31.0;
     s1+=97.0;
    } else {
     s0+=76.0;
     s1+=13677.0;
    }
   } else {
    s0+=14.0;
   }
  } else {
   if(i7<0.006171230226755142){
    if(i41<1.0103569030761719){
     s0+=328.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=82.0;
    }
   } else {
    if(i22<1.629280686378479){
     s0+=15.0;
     s1+=764.0;
    } else {
     s0+=16.0;
    }
   }
  }
 }
}
if(i4<1.0025928020477295){
 if(i17<1.0172946453094482){
  if(i43<0.22165292501449585){
   if(i32<0.0006952469702810049){
    if(i36<1.1354830265045166){
     s0+=72059.0;
     s1+=269.0;
    } else {
     s0+=5725.0;
     s1+=124.0;
    }
   } else {
    if(i21<0.000928508467040956){
     s0+=3520.0;
     s1+=2949.0;
    } else {
     s0+=28287.0;
     s1+=857.0;
    }
   }
  } else {
   if(i46<-7.771798664180096e-06){
    if(i34<1.1599600315093994){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=274.0;
    }
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i6<7.68899917602539e-06){
   if(i27<0.006294661201536655){
    if(i51<1.0007381439208984){
     s0+=440.0;
     s1+=3.0;
    } else {
     s0+=96.0;
     s1+=84.0;
    }
   } else {
    if(i12<0.11503264307975769){
     s0+=3.0;
    } else {
     s1+=156.0;
    }
   }
  } else {
   if(i51<0.9984691739082336){
    s0+=59.0;
   } else {
    if(i64<-0.0010857933666557074){
     s0+=36.0;
     s1+=806.0;
    } else {
     s0+=32.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i2<0.001230478286743164){
  if(i1<-6.791172927478328e-05){
   if(i23<0.049767255783081055){
    if(i60<0.11634320765733719){
     s0+=163.0;
     s1+=88.0;
    } else {
     s0+=275.0;
     s1+=40.0;
    }
   } else {
    if(i28<0.002246774034574628){
     s0+=52.0;
     s1+=16.0;
    } else {
     s0+=126.0;
     s1+=2283.0;
    }
   }
  } else {
   if(i24<0.0005248188972473145){
    if(i3<1.0037492513656616){
     s0+=423.0;
     s1+=351.0;
    } else {
     s0+=101.0;
     s1+=621.0;
    }
   } else {
    if(i12<0.20779657363891602){
     s0+=4027.0;
     s1+=247.0;
    } else {
     s0+=29.0;
     s1+=180.0;
    }
   }
  }
 } else {
  if(i39<1.1531562805175781){
   if(i31<1.0869626998901367){
    if(i42<0.00119326775893569){
     s0+=5.0;
     s1+=1710.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i28<0.001120339729823172){
     s1+=229.0;
    } else {
     s0+=969.0;
     s1+=7.0;
    }
   }
  } else {
   if(i10<0.9766114950180054){
    if(i7<0.02263115532696247){
     s0+=39.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=72.0;
    }
   } else {
    if(i31<1.0861116647720337){
     s0+=10.0;
     s1+=53.0;
    } else {
     s0+=23.0;
     s1+=12827.0;
    }
   }
  }
 }
}
if(i13<1.0170427560806274){
 if(i61<1.0065464973449707){
  if(i1<-8.510352927260101e-05){
   if(i37<1.0268115997314453){
    if(i41<1.0099961757659912){
     s0+=548.0;
     s1+=25.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i15<0.0006984594510868192){
     s0+=183.0;
     s1+=1572.0;
    } else {
     s0+=220.0;
    }
   }
  } else {
   if(i41<1.0063810348510742){
    if(i34<1.094810962677002){
     s0+=26999.0;
     s1+=2637.0;
    } else {
     s0+=83037.0;
     s1+=1599.0;
    }
   } else {
    if(i24<0.00047957897186279297){
     s0+=468.0;
     s1+=853.0;
    } else {
     s0+=1754.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i2<-0.00010561943054199219){
   if(i12<0.13537856936454773){
    if(i49<-0.0003366380697116256){
     s0+=114.0;
     s1+=64.0;
    } else {
     s0+=1034.0;
     s1+=48.0;
    }
   } else {
    if(i69<0.0017042586114257574){
     s0+=49.0;
     s1+=54.0;
    } else {
     s0+=1.0;
     s1+=75.0;
    }
   }
  } else {
   if(i39<1.1757044792175293){
    if(i58<1.0026891231536865){
     s0+=34.0;
     s1+=368.0;
    } else {
     s0+=484.0;
     s1+=18.0;
    }
   } else {
    if(i3<1.0056054592132568){
     s0+=371.0;
     s1+=848.0;
    } else {
     s0+=23.0;
     s1+=1874.0;
    }
   }
  }
 }
} else {
 if(i28<0.0070623671635985374){
  if(i3<1.001906394958496){
   if(i6<6.794929504394531e-06){
    if(i59<-2.9927191462775227e-06){
     s0+=126.0;
     s1+=61.0;
    } else {
     s0+=408.0;
     s1+=1.0;
    }
   } else {
    if(i57<1.0025947093963623){
     s0+=28.0;
     s1+=104.0;
    } else {
     s0+=137.0;
     s1+=17.0;
    }
   }
  } else {
   if(i1<-6.681311060674489e-05){
    if(i24<0.0012148618698120117){
     s0+=108.0;
     s1+=3412.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i64<-0.0012054542312398553){
     s0+=125.0;
     s1+=626.0;
    } else {
     s0+=488.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i31<1.1010477542877197){
   if(i44<0.00011803661618614569){
    s1+=14.0;
   } else {
    s0+=54.0;
   }
  } else {
   if(i27<0.006281329318881035){
    s0+=12.0;
   } else {
    if(i46<-2.2826929125585593e-05){
     s0+=1.0;
     s1+=9430.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i0<6.407499313354492e-05){
 if(i5<0.0003440976142883301){
  if(i43<0.2066880762577057){
   if(i27<0.0010675336234271526){
    if(i24<6.502866744995117e-05){
     s0+=26185.0;
     s1+=597.0;
    } else {
     s0+=3832.0;
     s1+=1621.0;
    }
   } else {
    if(i26<1.122455358505249){
     s0+=72692.0;
     s1+=456.0;
    } else {
     s0+=2054.0;
     s1+=322.0;
    }
   }
  } else {
   if(i26<1.596516489982605){
    if(i66<0.0002420817909296602){
     s0+=97.0;
     s1+=85.0;
    } else {
     s0+=13.0;
     s1+=255.0;
    }
   } else {
    if(i47<2.7786240025307052e-05){
     s0+=59.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i12<0.16515320539474487){
   if(i1<-4.454815643839538e-05){
    if(i2<6.639957427978516e-05){
     s0+=1046.0;
     s1+=275.0;
    } else {
     s0+=621.0;
     s1+=1595.0;
    }
   } else {
    if(i21<0.00093079824000597){
     s0+=2384.0;
     s1+=705.0;
    } else {
     s0+=4863.0;
     s1+=304.0;
    }
   }
  } else {
   if(i1<-3.4428900107741356e-05){
    if(i36<1.1300873756408691){
     s0+=22.0;
    } else {
     s0+=37.0;
     s1+=1511.0;
    }
   } else {
    if(i42<0.002697697840631008){
     s0+=174.0;
     s1+=2.0;
    } else {
     s0+=69.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007056489121168852){
  if(i46<-0.00018300293595530093){
   s0+=54.0;
  } else {
   if(i3<1.0054035186767578){
    if(i12<0.003268212080001831){
     s0+=33.0;
     s1+=7.0;
    } else {
     s0+=114.0;
     s1+=691.0;
    }
   } else {
    if(i29<0.00018769502639770508){
     s0+=169.0;
     s1+=2614.0;
    } else {
     s0+=21.0;
     s1+=13264.0;
    }
   }
  }
 } else {
  s0+=1842.0;
 }
}
if(i8<1.0136470794677734){
 if(i2<0.0010227560997009277){
  if(i6<2.4378299713134766e-05){
   if(i5<0.000280916690826416){
    if(i1<-0.00010455961455591023){
     s0+=179.0;
     s1+=187.0;
    } else {
     s0+=102709.0;
     s1+=2638.0;
    }
   } else {
    if(i19<0.009252063930034637){
     s0+=5864.0;
     s1+=269.0;
    } else {
     s0+=1369.0;
     s1+=1740.0;
    }
   }
  } else {
   if(i1<-5.4976335377432406e-05){
    if(i54<0.004641462117433548){
     s0+=641.0;
     s1+=486.0;
    } else {
     s0+=155.0;
     s1+=817.0;
    }
   } else {
    if(i15<0.000292309996439144){
     s0+=339.0;
     s1+=411.0;
    } else {
     s0+=2849.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i22<1.1979892253875732){
   if(i54<0.0006408387562260032){
    if(i24<0.0006401240825653076){
     s1+=742.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i27<0.0011692093685269356){
     s1+=81.0;
    } else {
     s0+=1237.0;
    }
   }
  } else {
   if(i18<-0.00218963623046875){
    if(i32<0.0013323684688657522){
     s0+=46.0;
     s1+=3.0;
    } else {
     s0+=29.0;
     s1+=278.0;
    }
   } else {
    if(i29<-0.0001888275146484375){
     s0+=10.0;
     s1+=196.0;
    } else {
     s1+=1798.0;
    }
   }
  }
 }
} else {
 if(i7<0.00501455320045352){
  if(i47<-8.900648936105426e-06){
   if(i32<0.0013777278363704681){
    if(i66<-0.00011501711560413241){
     s0+=9.0;
     s1+=80.0;
    } else {
     s1+=756.0;
    }
   } else {
    if(i41<1.0312132835388184){
     s0+=60.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i53<0.00030738796340301633){
    if(i7<0.003823505714535713){
     s0+=12.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i3<1.0103020668029785){
     s0+=1036.0;
     s1+=63.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i15<0.0010798709699884057){
   if(i36<1.6811659336090088){
    if(i0<-5.328655242919922e-05){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=32.0;
     s1+=13391.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   s0+=70.0;
  }
 }
}
if(i23<0.18776404857635498){
 if(i2<0.0009757876396179199){
  if(i6<1.8537044525146484e-05){
   if(i19<0.006775497458875179){
    if(i18<-0.000420987606048584){
     s0+=7719.0;
     s1+=406.0;
    } else {
     s0+=59248.0;
     s1+=157.0;
    }
   } else {
    if(i28<0.0010872913990169764){
     s0+=7663.0;
     s1+=2258.0;
    } else {
     s0+=32842.0;
     s1+=1037.0;
    }
   }
  } else {
   if(i30<0.0520663857460022){
    if(i34<1.056142807006836){
     s0+=1589.0;
    } else {
     s0+=1229.0;
     s1+=291.0;
    }
   } else {
    if(i21<0.0009356377413496375){
     s0+=162.0;
     s1+=783.0;
    } else {
     s0+=3086.0;
     s1+=1323.0;
    }
   }
  }
 } else {
  if(i52<1.3530254364013672e-05){
   if(i41<1.0097017288208008){
    if(i4<1.0020943880081177){
     s0+=99.0;
     s1+=11.0;
    } else {
     s0+=301.0;
     s1+=1113.0;
    }
   } else {
    if(i70<1.7919414858624805e-06){
     s0+=97.0;
     s1+=3048.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   }
  } else {
   if(i39<1.1706266403198242){
    if(i24<0.0005229711532592773){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1386.0;
    }
   } else {
    if(i32<0.0007070281426422298){
     s0+=17.0;
     s1+=84.0;
    } else {
     s0+=5.0;
     s1+=640.0;
    }
   }
  }
 }
} else {
 if(i1<-4.256757893017493e-05){
  if(i36<1.1287440061569214){
   if(i10<0.994044303894043){
    s1+=2.0;
   } else {
    s0+=24.0;
   }
  } else {
   if(i27<0.0019235520157963037){
    s0+=16.0;
   } else {
    if(i26<1.0532255172729492){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=24.0;
     s1+=12816.0;
    }
   }
  }
 } else {
  if(i46<-8.236002940975595e-06){
   if(i14<0.002661190228536725){
    if(i77<0.09083589911460876){
     s1+=2.0;
    } else {
     s0+=167.0;
     s1+=6.0;
    }
   } else {
    if(i47<3.5552511690184474e-05){
     s0+=10.0;
     s1+=276.0;
    } else {
     s0+=104.0;
     s1+=13.0;
    }
   }
  } else {
   if(i13<0.9157627820968628){
    s1+=2.0;
   } else {
    if(i7<0.010840602219104767){
     s0+=727.0;
     s1+=5.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i1<-8.7317792349495e-05){
 if(i3<1.0000569820404053){
  if(i12<0.07725641131401062){
   if(i72<0.05140172690153122){
    if(i12<0.04238411784172058){
     s0+=666.0;
     s1+=4.0;
    } else {
     s0+=70.0;
     s1+=14.0;
    }
   } else {
    if(i13<0.843693196773529){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=57.0;
    }
   }
  } else {
   if(i14<0.003260526340454817){
    s0+=32.0;
   } else {
    if(i32<0.004010317847132683){
     s0+=26.0;
     s1+=462.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i13<0.90430748462677){
   if(i44<0.0002922086277976632){
    s1+=40.0;
   } else {
    if(i7<0.021813813596963882){
     s0+=81.0;
    } else {
     s0+=47.0;
     s1+=47.0;
    }
   }
  } else {
   if(i51<0.9983445405960083){
    s0+=207.0;
   } else {
    if(i67<1.6933263395912945e-05){
     s0+=179.0;
     s1+=15502.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i6<1.6748905181884766e-05){
  if(i8<1.012428879737854){
   if(i14<0.0015705750556662679){
    if(i37<1.0179111957550049){
     s0+=10171.0;
     s1+=349.0;
    } else {
     s0+=74503.0;
     s1+=323.0;
    }
   } else {
    if(i10<0.989300012588501){
     s0+=12435.0;
     s1+=308.0;
    } else {
     s0+=9110.0;
     s1+=2373.0;
    }
   }
  } else {
   if(i6<1.0907649993896484e-05){
    if(i14<0.0024647230748087168){
     s0+=490.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=75.0;
    }
   } else {
    if(i7<0.004454255569726229){
     s0+=48.0;
    } else {
     s0+=8.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i64<-0.0008325048838742077){
   if(i3<1.001948356628418){
    if(i23<0.09554103016853333){
     s0+=514.0;
     s1+=51.0;
    } else {
     s0+=226.0;
     s1+=227.0;
    }
   } else {
    if(i19<0.007864784449338913){
     s0+=262.0;
     s1+=194.0;
    } else {
     s0+=295.0;
     s1+=1749.0;
    }
   }
  } else {
   if(i44<-2.0571787899825722e-05){
    if(i27<0.0012143919011577964){
     s0+=4.0;
     s1+=700.0;
    } else {
     s0+=242.0;
     s1+=79.0;
    }
   } else {
    if(i56<0.028345758095383644){
     s0+=6227.0;
     s1+=1009.0;
    } else {
     s0+=681.0;
     s1+=554.0;
    }
   }
  }
 }
}
if(i2<0.0009556412696838379){
 if(i25<1.023249626159668){
  if(i24<0.00010651350021362305){
   if(i1<-0.00010451542038936168){
    if(i18<-0.0047290027141571045){
     s0+=102.0;
     s1+=17.0;
    } else {
     s0+=20.0;
     s1+=94.0;
    }
   } else {
    if(i32<0.0006472887471318245){
     s0+=63547.0;
     s1+=169.0;
    } else {
     s0+=18923.0;
     s1+=1047.0;
    }
   }
  } else {
   if(i21<0.0009274540934711695){
    if(i27<0.00028661993565037847){
     s0+=4451.0;
     s1+=227.0;
    } else {
     s0+=248.0;
     s1+=2167.0;
    }
   } else {
    if(i4<1.002384901046753){
     s0+=22326.0;
     s1+=749.0;
    } else {
     s0+=3854.0;
     s1+=1837.0;
    }
   }
  }
 } else {
  if(i59<-3.1971758289728314e-06){
   if(i1<-6.451064837165177e-05){
    if(i19<0.013971013948321342){
     s0+=35.0;
     s1+=48.0;
    } else {
     s0+=36.0;
     s1+=1117.0;
    }
   } else {
    if(i7<0.005636329762637615){
     s0+=399.0;
     s1+=31.0;
    } else {
     s0+=36.0;
     s1+=490.0;
    }
   }
  } else {
   if(i32<0.0010984487598761916){
    s0+=493.0;
   } else {
    s1+=9.0;
   }
  }
 }
} else {
 if(i27<0.0024050595238804817){
  if(i42<0.0010659211548045278){
   if(i32<0.0011395786423236132){
    if(i24<0.000730663537979126){
     s0+=1.0;
     s1+=2333.0;
    } else {
     s0+=12.0;
    }
   } else {
    s0+=96.0;
   }
  } else {
   if(i62<-0.001551210880279541){
    if(i56<0.007960422895848751){
     s0+=1.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i40<0.03040536493062973){
     s0+=1963.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i65<0.014835456386208534){
   if(i12<0.0347670316696167){
    if(i56<0.033589303493499756){
     s0+=39.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=94.0;
    }
   } else {
    if(i31<1.0772056579589844){
     s0+=18.0;
     s1+=17.0;
    } else {
     s0+=37.0;
     s1+=13693.0;
    }
   }
  } else {
   if(i56<0.09616941213607788){
    s0+=6.0;
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i10<1.0108562707901){
 if(i6<1.5079975128173828e-05){
  if(i32<0.0007065801182761788){
   if(i14<0.0007970186416059732){
    if(i33<0.0018044563475996256){
     s0+=58181.0;
     s1+=47.0;
    } else {
     s0+=2994.0;
     s1+=67.0;
    }
   } else {
    if(i28<0.0002665547071956098){
     s0+=1364.0;
     s1+=283.0;
    } else {
     s0+=15030.0;
     s1+=74.0;
    }
   }
  } else {
   if(i27<0.0009404437150806189){
    if(i19<0.008643489331007004){
     s0+=1264.0;
     s1+=428.0;
    } else {
     s0+=338.0;
     s1+=1731.0;
    }
   } else {
    if(i30<0.24231716990470886){
     s0+=26953.0;
     s1+=882.0;
    } else {
     s0+=15.0;
     s1+=302.0;
    }
   }
  }
 } else {
  if(i40<0.028795810416340828){
   if(i47<-9.295104973716661e-06){
    if(i0<0.00035119056701660156){
     s0+=10.0;
     s1+=296.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i45<0.010205971077084541){
     s0+=3123.0;
     s1+=168.0;
    } else {
     s0+=3750.0;
     s1+=943.0;
    }
   }
  } else {
   if(i19<0.02555818110704422){
    if(i18<-0.001262068748474121){
     s0+=1174.0;
     s1+=177.0;
    } else {
     s0+=138.0;
     s1+=485.0;
    }
   } else {
    if(i20<0.9637221097946167){
     s0+=395.0;
     s1+=487.0;
    } else {
     s0+=362.0;
     s1+=3938.0;
    }
   }
  }
 }
} else {
 if(i10<1.014369010925293){
  if(i15<0.0006073151016607881){
   if(i59<-3.629191269283183e-06){
    if(i21<0.0010945906396955252){
     s1+=861.0;
    } else {
     s0+=110.0;
     s1+=766.0;
    }
   } else {
    s0+=123.0;
   }
  } else {
   if(i22<1.3942866325378418){
    s0+=960.0;
   } else {
    s1+=11.0;
   }
  }
 } else {
  if(i1<-6.203705561347306e-05){
   if(i24<0.0018826723098754883){
    if(i6<0.00027930736541748047){
     s0+=3.0;
     s1+=12429.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   if(i14<0.0020403037779033184){
    if(i0<0.00013118982315063477){
     s0+=70.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=73.0;
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i7<0.006916837766766548){
  if(i7<0.003647971898317337){
   if(i37<1.0179111957550049){
    if(i15<0.00013293961819726974){
     s0+=6127.0;
     s1+=13.0;
    } else {
     s0+=4439.0;
     s1+=537.0;
    }
   } else {
    if(i38<1.035298228263855){
     s0+=78947.0;
     s1+=504.0;
    } else {
     s0+=624.0;
     s1+=46.0;
    }
   }
  } else {
   if(i21<0.0009644652018323541){
    if(i46<-5.756278824264882e-06){
     s0+=497.0;
     s1+=2085.0;
    } else {
     s0+=2027.0;
     s1+=20.0;
    }
   } else {
    if(i0<1.8477439880371094e-06){
     s0+=14680.0;
     s1+=188.0;
    } else {
     s0+=528.0;
     s1+=465.0;
    }
   }
  }
 } else {
  if(i19<0.02428927645087242){
   if(i0<4.231929779052734e-06){
    if(i12<0.19123131036758423){
     s0+=3767.0;
     s1+=110.0;
    } else {
     s0+=12.0;
     s1+=34.0;
    }
   } else {
    if(i29<-0.0002738833427429199){
     s0+=144.0;
     s1+=69.0;
    } else {
     s0+=6.0;
     s1+=296.0;
    }
   }
  } else {
   if(i18<-0.004014402627944946){
    if(i37<1.099762201309204){
     s0+=1833.0;
     s1+=173.0;
    } else {
     s0+=19.0;
     s1+=160.0;
    }
   } else {
    if(i4<0.9971147775650024){
     s0+=730.0;
     s1+=47.0;
    } else {
     s0+=153.0;
     s1+=3102.0;
    }
   }
  }
 }
} else {
 if(i23<0.16875553131103516){
  if(i50<-8.332436664204579e-06){
   s0+=635.0;
  } else {
   if(i34<1.116804838180542){
    if(i42<0.00013335267431102693){
     s0+=77.0;
    } else {
     s0+=27.0;
     s1+=2346.0;
    }
   } else {
    if(i21<0.0021718768402934074){
     s0+=1164.0;
    } else {
     s0+=124.0;
     s1+=2033.0;
    }
   }
  }
 } else {
  if(i7<0.001820072764530778){
   if(i28<0.0025434503331780434){
    s0+=87.0;
   } else {
    s1+=38.0;
   }
  } else {
   if(i28<0.002281417138874531){
    if(i20<1.0161598920822144){
     s0+=48.0;
     s1+=2.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i12<0.16899776458740234){
     s0+=2.0;
     s1+=163.0;
    } else {
     s1+=11723.0;
    }
   }
  }
 }
}
if(i3<1.0037403106689453){
 if(i43<0.1965303122997284){
  if(i14<0.001723462250083685){
   if(i46<-1.8592818378238007e-05){
    if(i10<1.0067059993743896){
     s0+=44.0;
     s1+=21.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s0+=23812.0;
     s1+=688.0;
    } else {
     s0+=65242.0;
     s1+=243.0;
    }
   }
  } else {
   if(i5<-6.651878356933594e-05){
    if(i72<0.027380455285310745){
     s0+=14717.0;
     s1+=282.0;
    } else {
     s0+=89.0;
     s1+=66.0;
    }
   } else {
    if(i2<-0.0004980266094207764){
     s0+=4250.0;
     s1+=466.0;
    } else {
     s0+=3481.0;
     s1+=3927.0;
    }
   }
  }
 } else {
  if(i59<-3.946364358853316e-06){
   if(i40<0.0224774070084095){
    if(i48<1.134460687637329){
     s0+=23.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i56<0.05889580771327019){
     s0+=38.0;
     s1+=130.0;
    } else {
     s0+=10.0;
     s1+=853.0;
    }
   }
  } else {
   if(i7<0.007118582725524902){
    s0+=221.0;
   } else {
    s1+=16.0;
   }
  }
 }
} else {
 if(i33<0.0019522530492395163){
  if(i52<1.0073184967041016e-05){
   if(i39<1.116804838180542){
    if(i36<1.0452228784561157){
     s0+=135.0;
    } else {
     s0+=124.0;
     s1+=2590.0;
    }
   } else {
    if(i23<0.2341040074825287){
     s0+=450.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i10<1.0164850950241089){
    if(i44<-2.873870835173875e-05){
     s0+=61.0;
     s1+=66.0;
    } else {
     s0+=3430.0;
     s1+=51.0;
    }
   } else {
    s1+=44.0;
   }
  }
 } else {
  if(i15<0.0018577781738713384){
   if(i1<-7.332980749197304e-05){
    if(i18<-0.001757502555847168){
     s0+=34.0;
     s1+=383.0;
    } else {
     s0+=23.0;
     s1+=13828.0;
    }
   } else {
    if(i26<1.0778363943099976){
     s0+=70.0;
     s1+=50.0;
    } else {
     s0+=61.0;
     s1+=763.0;
    }
   }
  } else {
   s0+=16.0;
  }
 }
}
if(i3<1.00374174118042){
 if(i26<1.1403480768203735){
  if(i14<0.0015706925187259912){
   if(i14<0.0010953780729323626){
    if(i28<0.001856507733464241){
     s0+=67128.0;
     s1+=139.0;
    } else {
     s0+=6666.0;
     s1+=110.0;
    }
   } else {
    if(i21<0.00027767327264882624){
     s0+=1343.0;
     s1+=299.0;
    } else {
     s0+=10597.0;
     s1+=203.0;
    }
   }
  } else {
   if(i3<0.998318076133728){
    if(i28<0.000996727030724287){
     s0+=873.0;
     s1+=203.0;
    } else {
     s0+=18865.0;
     s1+=358.0;
    }
   } else {
    if(i61<0.9995160102844238){
     s0+=1458.0;
     s1+=134.0;
    } else {
     s0+=4073.0;
     s1+=3553.0;
    }
   }
  }
 } else {
  if(i1<-5.2246694394852966e-05){
   if(i14<0.0014848894206807017){
    s0+=35.0;
   } else {
    if(i79<-0.03242865204811096){
     s0+=60.0;
     s1+=58.0;
    } else {
     s0+=25.0;
     s1+=1256.0;
    }
   }
  } else {
   if(i5<0.0003272891044616699){
    if(i5<0.0002586841583251953){
     s0+=763.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=6.0;
    }
   } else {
    if(i47<2.9982571504660882e-05){
     s0+=2.0;
     s1+=138.0;
    } else {
     s0+=119.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i22<1.1979892253875732){
  if(i24<0.0005122125148773193){
   if(i21<0.0009705505217425525){
    s1+=2785.0;
   } else {
    s0+=381.0;
   }
  } else {
   s0+=3788.0;
  }
 } else {
  if(i30<0.08340141177177429){
   if(i31<1.135886549949646){
    if(i41<1.012453556060791){
     s0+=235.0;
     s1+=71.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i47<1.2293576219235547e-06){
     s1+=201.0;
    } else {
     s0+=55.0;
     s1+=116.0;
    }
   }
  } else {
   if(i30<0.13137128949165344){
    if(i77<0.05425998568534851){
     s0+=37.0;
     s1+=877.0;
    } else {
     s0+=58.0;
     s1+=53.0;
    }
   } else {
    if(i34<1.1478302478790283){
     s0+=16.0;
    } else {
     s0+=19.0;
     s1+=13616.0;
    }
   }
  }
 }
}
if(i2<0.0009575486183166504){
 if(i1<-7.645013829460368e-05){
  if(i18<-0.004096806049346924){
   if(i30<0.12030419707298279){
    if(i37<1.1001770496368408){
     s0+=959.0;
     s1+=71.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   } else {
    if(i48<0.9136769771575928){
     s0+=5.0;
    } else {
     s1+=135.0;
    }
   }
  } else {
   if(i75<-0.002316419966518879){
    if(i6<0.00011086463928222656){
     s0+=69.0;
     s1+=1738.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i19<0.017049476504325867){
     s0+=316.0;
     s1+=45.0;
    } else {
     s0+=140.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i40<0.012292933650314808){
   if(i8<1.007319688796997){
    if(i8<0.9926210641860962){
     s0+=2074.0;
     s1+=149.0;
    } else {
     s0+=65559.0;
     s1+=488.0;
    }
   } else {
    if(i42<0.0006217655027285218){
     s0+=377.0;
     s1+=370.0;
    } else {
     s0+=3160.0;
     s1+=14.0;
    }
   }
  } else {
   if(i5<0.0001793503761291504){
    if(i39<1.0905578136444092){
     s0+=6279.0;
     s1+=1090.0;
    } else {
     s0+=30398.0;
     s1+=553.0;
    }
   } else {
    if(i27<0.0010663189459592104){
     s0+=211.0;
     s1+=1458.0;
    } else {
     s0+=4719.0;
     s1+=1438.0;
    }
   }
  }
 }
} else {
 if(i40<0.01885717362165451){
  if(i52<1.2576580047607422e-05){
   if(i57<1.0008292198181152){
    if(i49<-0.0035772358532994986){
     s1+=4.0;
    } else {
     s0+=155.0;
    }
   } else {
    if(i24<0.00011402368545532227){
     s0+=54.0;
    } else {
     s0+=117.0;
     s1+=2387.0;
    }
   }
  } else {
   if(i12<0.18829071521759033){
    if(i27<0.002572484314441681){
     s0+=1448.0;
     s1+=13.0;
    } else {
     s1+=114.0;
    }
   } else {
    if(i39<1.176405668258667){
     s0+=15.0;
    } else {
     s1+=343.0;
    }
   }
  }
 } else {
  if(i51<0.9972440600395203){
   s0+=38.0;
  } else {
   if(i33<0.0016212360933423042){
    if(i39<1.1180615425109863){
     s0+=16.0;
     s1+=534.0;
    } else {
     s0+=110.0;
    }
   } else {
    if(i43<0.02107807993888855){
     s0+=48.0;
     s1+=226.0;
    } else {
     s0+=54.0;
     s1+=12822.0;
    }
   }
  }
 }
}
if(i4<1.0025781393051147){
 if(i43<0.2062024176120758){
  if(i5<0.0003021359443664551){
   if(i4<0.9994590282440186){
    if(i19<0.08955896645784378){
     s0+=52293.0;
     s1+=286.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i19<0.007397943176329136){
     s0+=41881.0;
     s1+=405.0;
    } else {
     s0+=9489.0;
     s1+=2133.0;
    }
   }
  } else {
   if(i7<0.004089142195880413){
    if(i37<1.0123084783554077){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=5499.0;
     s1+=83.0;
    }
   } else {
    if(i0<-7.152557373046875e-06){
     s0+=835.0;
     s1+=140.0;
    } else {
     s0+=321.0;
     s1+=1738.0;
    }
   }
  }
 } else {
  if(i22<1.1910145282745361){
   s0+=36.0;
  } else {
   if(i46<-7.964621545397677e-06){
    if(i51<1.0016791820526123){
     s0+=9.0;
     s1+=653.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=93.0;
   }
  }
 }
} else {
 if(i2<0.001240372657775879){
  if(i49<-0.0002907768648583442){
   if(i12<0.11853811144828796){
    if(i62<0.00036978721618652344){
     s0+=158.0;
     s1+=361.0;
    } else {
     s0+=546.0;
     s1+=226.0;
    }
   } else {
    if(i28<0.001963079674169421){
     s0+=59.0;
     s1+=4.0;
    } else {
     s0+=116.0;
     s1+=2127.0;
    }
   }
  } else {
   if(i54<0.004693391267210245){
    if(i24<0.00043582916259765625){
     s0+=271.0;
     s1+=577.0;
    } else {
     s0+=3800.0;
     s1+=249.0;
    }
   } else {
    if(i27<0.004247377160936594){
     s0+=14.0;
     s1+=151.0;
    } else {
     s0+=263.0;
     s1+=204.0;
    }
   }
  }
 } else {
  if(i7<0.002853245474398136){
   if(i3<1.0116453170776367){
    if(i31<1.0783891677856445){
     s1+=246.0;
    } else {
     s0+=775.0;
    }
   } else {
    s1+=195.0;
   }
  } else {
   if(i49<-0.00026138636167161167){
    if(i35<0.821997880935669){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=11879.0;
    }
   } else {
    if(i52<2.7477741241455078e-05){
     s0+=143.0;
     s1+=2476.0;
    } else {
     s0+=49.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i14<0.0017987508326768875){
  if(i39<1.0776758193969727){
   if(i63<-0.00034415721893310547){
    if(i39<1.0549226999282837){
     s0+=2821.0;
     s1+=79.0;
    } else {
     s0+=356.0;
     s1+=457.0;
    }
   } else {
    if(i14<0.00147630728315562){
     s0+=18915.0;
     s1+=121.0;
    } else {
     s0+=1153.0;
     s1+=168.0;
    }
   }
  } else {
   if(i17<1.0205836296081543){
    if(i36<1.1354830265045166){
     s0+=59900.0;
     s1+=76.0;
    } else {
     s0+=8707.0;
     s1+=185.0;
    }
   } else {
    if(i1<-6.493418186437339e-05){
     s0+=6.0;
     s1+=76.0;
    } else {
     s0+=368.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i7<0.00395199004560709){
   if(i27<0.0006453238311223686){
    if(i18<6.16312026977539e-05){
     s0+=187.0;
     s1+=177.0;
    } else {
     s0+=1271.0;
     s1+=8.0;
    }
   } else {
    if(i54<0.0028319633565843105){
     s0+=8612.0;
     s1+=17.0;
    } else {
     s0+=205.0;
     s1+=24.0;
    }
   }
  } else {
   if(i2<-0.0004627108573913574){
    if(i48<1.113352656364441){
     s0+=9715.0;
     s1+=791.0;
    } else {
     s0+=72.0;
     s1+=220.0;
    }
   } else {
    if(i15<0.0007054416928440332){
     s0+=1504.0;
     s1+=5591.0;
    } else {
     s0+=408.0;
    }
   }
  }
 }
} else {
 if(i10<1.0144740343093872){
  if(i21<0.002353748306632042){
   if(i33<0.0010763800237327814){
    if(i22<1.0610902309417725){
     s0+=60.0;
    } else {
     s0+=17.0;
     s1+=1288.0;
    }
   } else {
    if(i27<0.001192146330140531){
     s1+=83.0;
    } else {
     s0+=1843.0;
     s1+=4.0;
    }
   }
  } else {
   if(i20<0.9554018378257751){
    if(i49<0.000465971213998273){
     s0+=55.0;
     s1+=63.0;
    } else {
     s0+=1.0;
     s1+=76.0;
    }
   } else {
    if(i31<1.1343250274658203){
     s0+=48.0;
     s1+=544.0;
    } else {
     s0+=17.0;
     s1+=2370.0;
    }
   }
  }
 } else {
  if(i18<0.0017052292823791504){
   if(i21<0.0020494619384407997){
    if(i34<1.1209434270858765){
     s1+=25.0;
    } else {
     s0+=77.0;
    }
   } else {
    s1+=699.0;
   }
  } else {
   s1+=11398.0;
  }
 }
}
if(i11<1.0181405544281006){
 if(i3<1.0038710832595825){
  if(i66<0.00022936100140213966){
   if(i27<0.000982649507932365){
    if(i13<1.0085464715957642){
     s0+=26587.0;
     s1+=1421.0;
    } else {
     s0+=333.0;
     s1+=567.0;
    }
   } else {
    if(i7<0.018358558416366577){
     s0+=61369.0;
     s1+=160.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i29<-0.0001842975616455078){
    if(i40<0.18327397108078003){
     s0+=20119.0;
     s1+=1256.0;
    } else {
     s0+=214.0;
     s1+=488.0;
    }
   } else {
    if(i14<0.0012797268573194742){
     s0+=1954.0;
     s1+=153.0;
    } else {
     s0+=777.0;
     s1+=1426.0;
    }
   }
  }
 } else {
  if(i7<0.00426650233566761){
   if(i18<0.0012870430946350098){
    if(i15<0.00020750438852701336){
     s0+=70.0;
     s1+=100.0;
    } else {
     s0+=2905.0;
     s1+=2.0;
    }
   } else {
    if(i36<1.0905089378356934){
     s1+=431.0;
    } else {
     s0+=485.0;
     s1+=102.0;
    }
   }
  } else {
   if(i15<0.0007042873185127974){
    if(i6<0.00022161006927490234){
     s0+=109.0;
     s1+=4179.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=177.0;
   }
  }
 }
} else {
 if(i34<1.1758689880371094){
  if(i22<1.1174219846725464){
   if(i28<0.0020514007192105055){
    if(i74<0.06315594911575317){
     s0+=4.0;
     s1+=1324.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=28.0;
   }
  } else {
   if(i43<0.20147943496704102){
    s0+=773.0;
   } else {
    if(i67<2.4713108359719627e-06){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i21<0.0025611063465476036){
   if(i52<1.6689300537109375e-06){
    if(i33<0.0023542605340480804){
     s1+=9.0;
    } else {
     s0+=182.0;
     s1+=3.0;
    }
   } else {
    if(i58<1.0015652179718018){
     s0+=22.0;
    } else {
     s0+=5.0;
     s1+=83.0;
    }
   }
  } else {
   if(i18<-0.0012226104736328125){
    if(i1<-6.775359361199662e-05){
     s0+=18.0;
     s1+=450.0;
    } else {
     s0+=264.0;
     s1+=115.0;
    }
   } else {
    if(i23<0.10541185736656189){
     s0+=78.0;
     s1+=95.0;
    } else {
     s0+=69.0;
     s1+=11931.0;
    }
   }
  }
 }
}
if(i10<1.0123543739318848){
 if(i26<1.1402404308319092){
  if(i6<1.5079975128173828e-05){
   if(i51<1.0026426315307617){
    if(i21<0.0008722951170057058){
     s0+=29758.0;
     s1+=2525.0;
    } else {
     s0+=75846.0;
     s1+=714.0;
    }
   } else {
    if(i13<0.9459632635116577){
     s0+=21.0;
    } else {
     s1+=52.0;
    }
   }
  } else {
   if(i1<-5.727438110625371e-05){
    if(i15<0.000697449198924005){
     s0+=1119.0;
     s1+=2212.0;
    } else {
     s0+=629.0;
    }
   } else {
    if(i24<0.0005105137825012207){
     s0+=3238.0;
     s1+=1840.0;
    } else {
     s0+=4089.0;
     s1+=328.0;
    }
   }
  }
 } else {
  if(i46<-1.7663047401583754e-05){
   if(i31<1.17107355594635){
    if(i15<0.0006735965725965798){
     s0+=130.0;
     s1+=328.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i40<0.052904631942510605){
     s0+=47.0;
     s1+=51.0;
    } else {
     s0+=37.0;
     s1+=2772.0;
    }
   }
  } else {
   if(i32<0.0010506452526897192){
    s0+=1056.0;
   } else {
    if(i40<0.04813288897275925){
     s0+=48.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=134.0;
    }
   }
  }
 }
} else {
 if(i1<-7.397145964205265e-05){
  if(i50<-7.238312718982343e-06){
   s0+=82.0;
  } else {
   if(i0<1.4573335647583008e-05){
    if(i21<0.002506520366296172){
     s0+=1.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i4<1.0031988620758057){
     s0+=1.0;
     s1+=626.0;
    } else {
     s1+=12036.0;
    }
   }
  }
 } else {
  if(i42<0.0007011091220192611){
   if(i59<-1.2435325515980367e-05){
    s0+=9.0;
   } else {
    s1+=356.0;
   }
  } else {
   if(i33<0.0020075375214219093){
    if(i34<1.099211573600769){
     s1+=8.0;
    } else {
     s0+=399.0;
    }
   } else {
    if(i61<1.0016593933105469){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=221.0;
    }
   }
  }
 }
}
if(i3<1.0037473440170288){
 if(i43<0.1947348713874817){
  if(i8<1.0114476680755615){
   if(i5<0.00029033422470092773){
    if(i24<5.632638931274414e-05){
     s0+=72834.0;
     s1+=681.0;
    } else {
     s0+=29934.0;
     s1+=2064.0;
    }
   } else {
    if(i1<-4.3746200390160084e-05){
     s0+=1566.0;
     s1+=1352.0;
    } else {
     s0+=6713.0;
     s1+=932.0;
    }
   }
  } else {
   if(i31<1.086911916732788){
    if(i22<1.116804838180542){
     s0+=2.0;
     s1+=332.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i36<1.1672112941741943){
     s0+=617.0;
     s1+=70.0;
    } else {
     s0+=207.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i59<-3.3327582968922798e-06){
   if(i14<0.00456301961094141){
    if(i40<0.029241640120744705){
     s0+=45.0;
     s1+=4.0;
    } else {
     s0+=59.0;
     s1+=243.0;
    }
   } else {
    if(i40<0.07669685781002045){
     s0+=2.0;
     s1+=30.0;
    } else {
     s1+=728.0;
    }
   }
  } else {
   if(i71<0.15895113348960876){
    s1+=6.0;
   } else {
    if(i47<6.667945126537234e-05){
     s0+=169.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i39<1.1757044792175293){
  if(i24<0.0005138516426086426){
   if(i54<0.0007051887223497033){
    if(i21<0.0010703449370339513){
     s0+=2.0;
     s1+=2582.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   } else {
    if(i46<-2.009041782002896e-05){
     s0+=88.0;
     s1+=268.0;
    } else {
     s0+=291.0;
     s1+=2.0;
    }
   }
  } else {
   if(i45<0.0632810965180397){
    s0+=3739.0;
   } else {
    if(i8<1.0072462558746338){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i42<0.00034354953095316887){
   if(i51<1.0016590356826782){
    s0+=80.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i23<0.08016994595527649){
    if(i73<-0.0020096004009246826){
     s0+=40.0;
     s1+=352.0;
    } else {
     s0+=118.0;
     s1+=39.0;
    }
   } else {
    if(i32<0.0040499987080693245){
     s0+=52.0;
     s1+=14283.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i2<0.0009593367576599121){
 if(i32<0.0007346938364207745){
  if(i26<1.1172127723693848){
   if(i60<0.19714267551898956){
    if(i28<0.00029357921448536217){
     s0+=17746.0;
     s1+=400.0;
    } else {
     s0+=60958.0;
     s1+=107.0;
    }
   } else {
    if(i59<-3.5269870295451256e-06){
     s1+=24.0;
    } else {
     s0+=57.0;
    }
   }
  } else {
   if(i1<-5.314960435498506e-05){
    if(i34<1.3554327487945557){
     s0+=5.0;
     s1+=125.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i46<-1.6943806258495897e-05){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=2912.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i26<1.1231780052185059){
   if(i5<-0.00011980533599853516){
    if(i34<1.0912797451019287){
     s0+=778.0;
     s1+=214.0;
    } else {
     s0+=20190.0;
     s1+=118.0;
    }
   } else {
    if(i32<0.0011245990172028542){
     s0+=2719.0;
     s1+=3504.0;
    } else {
     s0+=8041.0;
     s1+=912.0;
    }
   }
  } else {
   if(i31<1.1672112941741943){
    if(i7<0.006691840477287769){
     s0+=662.0;
     s1+=148.0;
    } else {
     s0+=45.0;
     s1+=495.0;
    }
   } else {
    if(i19<0.029024925082921982){
     s0+=66.0;
     s1+=80.0;
    } else {
     s0+=67.0;
     s1+=1781.0;
    }
   }
  }
 }
} else {
 if(i14<0.001938033732585609){
  if(i15<0.000259967491729185){
   if(i18<0.0010432600975036621){
    s0+=7.0;
   } else {
    if(i18<0.0011358261108398438){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=1352.0;
    }
   }
  } else {
   if(i27<0.008596244268119335){
    s0+=1225.0;
   } else {
    s1+=70.0;
   }
  }
 } else {
  if(i23<0.16141480207443237){
   if(i51<0.9997861385345459){
    if(i1<-0.00016721425345167518){
     s1+=32.0;
    } else {
     s0+=579.0;
     s1+=2.0;
    }
   } else {
    if(i30<0.0006538331508636475){
     s0+=43.0;
     s1+=42.0;
    } else {
     s0+=219.0;
     s1+=3253.0;
    }
   }
  } else {
   if(i22<1.1843671798706055){
    if(i38<1.0316476821899414){
     s0+=37.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=30.0;
    }
   } else {
    if(i28<0.004599391017109156){
     s0+=1.0;
     s1+=854.0;
    } else {
     s1+=10810.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i30<0.22107088565826416){
  if(i58<1.0004554986953735){
   if(i24<8.600950241088867e-05){
    if(i19<0.09349881112575531){
     s0+=55946.0;
     s1+=251.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i44<3.169874980812892e-05){
     s0+=4648.0;
     s1+=74.0;
    } else {
     s0+=1282.0;
     s1+=545.0;
    }
   }
  } else {
   if(i27<0.00106035266071558){
    if(i45<0.01171867921948433){
     s0+=5209.0;
     s1+=376.0;
    } else {
     s0+=2639.0;
     s1+=2226.0;
    }
   } else {
    if(i4<1.0024163722991943){
     s0+=38602.0;
     s1+=854.0;
    } else {
     s0+=1672.0;
     s1+=629.0;
    }
   }
  }
 } else {
  if(i59<-3.950420705223223e-06){
   if(i1<-3.547751475707628e-05){
    if(i56<0.013971725478768349){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=670.0;
    }
   } else {
    if(i45<0.08267110586166382){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=42.0;
    }
   }
  } else {
   if(i47<1.9056718883803114e-05){
    s0+=133.0;
   } else {
    if(i46<-6.276485237322049e-06){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
} else {
 if(i19<0.007952049374580383){
  if(i29<0.00018918514251708984){
   if(i29<0.00015354156494140625){
    if(i25<1.031897783279419){
     s0+=3089.0;
     s1+=99.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i24<0.0006840527057647705){
     s0+=2.0;
     s1+=155.0;
    } else {
     s0+=397.0;
    }
   }
  } else {
   if(i15<0.0004735799157060683){
    if(i6<0.0002474784851074219){
     s1+=1872.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i81<-0.02461734414100647){
     s1+=2.0;
    } else {
     s0+=803.0;
    }
   }
  }
 } else {
  if(i23<0.08708468079566956){
   if(i76<0.013849198818206787){
    if(i29<0.0001806020736694336){
     s0+=780.0;
     s1+=648.0;
    } else {
     s0+=28.0;
     s1+=393.0;
    }
   } else {
    if(i34<1.2034409046173096){
     s0+=4.0;
     s1+=42.0;
    } else {
     s0+=405.0;
     s1+=2.0;
    }
   }
  } else {
   if(i15<0.0007051313878037035){
    if(i7<0.004814965184777975){
     s0+=292.0;
     s1+=391.0;
    } else {
     s0+=192.0;
     s1+=15162.0;
    }
   } else {
    s0+=125.0;
   }
  }
 }
}
if(i11<1.0163159370422363){
 if(i3<1.0038522481918335){
  if(i32<0.0007343760225921869){
   if(i66<0.00018707680283114314){
    if(i53<0.0021262308582663536){
     s0+=66898.0;
     s1+=168.0;
    } else {
     s0+=604.0;
     s1+=25.0;
    }
   } else {
    if(i46<-1.3118688002577983e-05){
     s0+=50.0;
     s1+=110.0;
    } else {
     s0+=12176.0;
     s1+=259.0;
    }
   }
  } else {
   if(i2<-0.0004850625991821289){
    if(i7<0.019611716270446777){
     s0+=24394.0;
     s1+=698.0;
    } else {
     s0+=122.0;
     s1+=152.0;
    }
   } else {
    if(i40<0.01140560582280159){
     s0+=4388.0;
     s1+=408.0;
    } else {
     s0+=2194.0;
     s1+=3588.0;
    }
   }
  }
 } else {
  if(i7<0.003853839822113514){
   if(i67<-3.635388793554739e-06){
    if(i53<0.0008179399883374572){
     s0+=26.0;
     s1+=299.0;
    } else {
     s0+=339.0;
     s1+=117.0;
    }
   } else {
    if(i28<0.0004762043245136738){
     s0+=603.0;
     s1+=35.0;
    } else {
     s0+=2174.0;
    }
   }
  } else {
   if(i34<1.192675232887268){
    if(i24<0.0004534423351287842){
     s0+=25.0;
     s1+=1027.0;
    } else {
     s0+=287.0;
     s1+=31.0;
    }
   } else {
    if(i18<-0.0018385052680969238){
     s0+=46.0;
     s1+=399.0;
    } else {
     s0+=8.0;
     s1+=2412.0;
    }
   }
  }
 }
} else {
 if(i3<1.0030465126037598){
  if(i56<0.047420352697372437){
   if(i36<1.0905578136444092){
    if(i3<0.9993447065353394){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=177.0;
    }
   } else {
    if(i7<0.007942717522382736){
     s0+=1057.0;
     s1+=43.0;
    } else {
     s0+=25.0;
     s1+=40.0;
    }
   }
  } else {
   if(i61<0.9993069767951965){
    if(i7<0.01207684725522995){
     s0+=118.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i52<9.715557098388672e-06){
     s0+=19.0;
     s1+=523.0;
    } else {
     s0+=52.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i22<1.1846036911010742){
   if(i28<0.001263770624063909){
    if(i42<0.0010662985732778907){
     s0+=10.0;
     s1+=1245.0;
    } else {
     s0+=59.0;
     s1+=33.0;
    }
   } else {
    if(i24<0.0003746151924133301){
     s0+=2.0;
     s1+=183.0;
    } else {
     s0+=676.0;
    }
   }
  } else {
   if(i36<1.1279253959655762){
    s0+=25.0;
   } else {
    if(i1<-7.481149805244058e-05){
     s0+=19.0;
     s1+=11713.0;
    } else {
     s0+=76.0;
     s1+=537.0;
    }
   }
  }
 }
}
if(i23<0.1922006607055664){
 if(i5<0.0005207061767578125){
  if(i45<0.03219923377037048){
   if(i42<0.0005883464473299682){
    if(i13<1.0089900493621826){
     s0+=33165.0;
     s1+=1461.0;
    } else {
     s0+=91.0;
     s1+=260.0;
    }
   } else {
    if(i43<0.18961933255195618){
     s0+=50592.0;
     s1+=141.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i2<-0.0005680620670318604){
    if(i6<-7.212162017822266e-06){
     s0+=14746.0;
     s1+=96.0;
    } else {
     s0+=4432.0;
     s1+=309.0;
    }
   } else {
    if(i14<0.0015337876975536346){
     s0+=4636.0;
     s1+=146.0;
    } else {
     s0+=691.0;
     s1+=1458.0;
    }
   }
  }
 } else {
  if(i15<0.0003661462105810642){
   if(i22<1.116804838180542){
    if(i54<0.0009320729877799749){
     s0+=2.0;
     s1+=3147.0;
    } else {
     s0+=21.0;
     s1+=78.0;
    }
   } else {
    if(i27<0.0025357380509376526){
     s0+=853.0;
     s1+=106.0;
    } else {
     s0+=1019.0;
     s1+=3366.0;
    }
   }
  } else {
   if(i7<0.00945152249187231){
    if(i76<-0.12047940492630005){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=4940.0;
     s1+=34.0;
    }
   } else {
    if(i37<1.0527876615524292){
     s0+=382.0;
     s1+=158.0;
    } else {
     s0+=100.0;
     s1+=587.0;
    }
   }
  }
 }
} else {
 if(i22<1.194390058517456){
  if(i55<0.21014763414859772){
   if(i39<1.187287449836731){
    s0+=388.0;
   } else {
    if(i63<-4.419684410095215e-05){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i13<0.9789975881576538){
    s0+=6.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i46<-9.215063982992433e-06){
   if(i47<7.446377276210114e-05){
    if(i7<0.0032638991251587868){
     s0+=75.0;
     s1+=115.0;
    } else {
     s0+=56.0;
     s1+=12892.0;
    }
   } else {
    if(i76<0.0839737057685852){
     s0+=15.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i22<1.2000374794006348){
    if(i80<0.15555992722511292){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i61<1.0032904148101807){
     s0+=246.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i6<2.378225326538086e-05){
 if(i7<0.0036522415466606617){
  if(i14<0.0010512636508792639){
   if(i11<1.0182666778564453){
    if(i8<1.0144017934799194){
     s0+=68315.0;
     s1+=184.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i14<0.00047164989518933){
     s0+=164.0;
     s1+=1.0;
    } else {
     s0+=124.0;
     s1+=23.0;
    }
   }
  } else {
   if(i27<0.0006345764268189669){
    if(i57<0.9998543858528137){
     s0+=2211.0;
     s1+=72.0;
    } else {
     s0+=628.0;
     s1+=596.0;
    }
   } else {
    if(i5<0.000475078821182251){
     s0+=15555.0;
     s1+=74.0;
    } else {
     s0+=161.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i4<1.0001559257507324){
   if(i38<1.0594526529312134){
    if(i53<0.033207379281520844){
     s0+=18819.0;
     s1+=520.0;
    } else {
     s0+=21.0;
     s1+=61.0;
    }
   } else {
    if(i21<0.013762885704636574){
     s0+=53.0;
    } else {
     s1+=174.0;
    }
   }
  } else {
   if(i20<0.9851057529449463){
    if(i1<-0.0001209331676363945){
     s0+=66.0;
     s1+=192.0;
    } else {
     s0+=3253.0;
     s1+=343.0;
    }
   } else {
    if(i0<-3.17692756652832e-05){
     s0+=556.0;
     s1+=151.0;
    } else {
     s0+=412.0;
     s1+=3269.0;
    }
   }
  }
 }
} else {
 if(i7<0.004014371428638697){
  if(i15<0.00022282676945906132){
   if(i32<0.0010774785187095404){
    if(i2<0.00045806169509887695){
     s0+=59.0;
     s1+=10.0;
    } else {
     s0+=34.0;
     s1+=1011.0;
    }
   } else {
    s0+=150.0;
   }
  } else {
   if(i31<1.1714658737182617){
    if(i55<0.2136479616165161){
     s0+=4186.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    s1+=27.0;
   }
  }
 } else {
  if(i2<7.975101470947266e-05){
   if(i53<0.008131856098771095){
    if(i43<0.15972959995269775){
     s0+=808.0;
     s1+=101.0;
    } else {
     s0+=6.0;
     s1+=78.0;
    }
   } else {
    if(i15<0.0001902268559206277){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=37.0;
     s1+=250.0;
    }
   }
  } else {
   if(i30<0.04241466522216797){
    if(i29<-0.000246584415435791){
     s0+=200.0;
     s1+=79.0;
    } else {
     s0+=15.0;
     s1+=161.0;
    }
   } else {
    if(i15<0.0007056489121168852){
     s0+=318.0;
     s1+=16948.0;
    } else {
     s0+=265.0;
    }
   }
  }
 }
}
if(i4<1.0026252269744873){
 if(i56<0.1978479027748108){
  if(i8<1.0135915279388428){
   if(i24<8.219480514526367e-05){
    if(i32<0.0006157935131341219){
     s0+=58359.0;
     s1+=143.0;
    } else {
     s0+=19834.0;
     s1+=798.0;
    }
   } else {
    if(i27<0.0010364173213019967){
     s0+=4970.0;
     s1+=2421.0;
    } else {
     s0+=26994.0;
     s1+=985.0;
    }
   }
  } else {
   if(i32<0.0007184833521023393){
    if(i82<-0.0005668997764587402){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=240.0;
    }
   } else {
    if(i52<8.344650268554688e-06){
     s0+=67.0;
     s1+=788.0;
    } else {
     s0+=68.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i10<0.9632205367088318){
   if(i71<0.1090233325958252){
    s0+=111.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i59<-2.8115457553212764e-06){
    s1+=428.0;
   } else {
    s0+=18.0;
   }
  }
 }
} else {
 if(i39<1.1757044792175293){
  if(i24<0.0005120635032653809){
   if(i18<0.0006623268127441406){
    if(i40<0.040520746260881424){
     s0+=259.0;
     s1+=80.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   } else {
    if(i28<0.0013692324282601476){
     s1+=2205.0;
    } else {
     s0+=13.0;
     s1+=191.0;
    }
   }
  } else {
   if(i14<0.004900515079498291){
    if(i7<0.008809970691800117){
     s0+=4008.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=9.0;
    }
   } else {
    if(i79<-0.01862141489982605){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i12<0.07181668281555176){
   if(i2<0.0010696053504943848){
    if(i82<-0.0018263757228851318){
     s0+=567.0;
     s1+=270.0;
    } else {
     s0+=480.0;
     s1+=16.0;
    }
   } else {
    if(i51<1.0008456707000732){
     s0+=60.0;
     s1+=42.0;
    } else {
     s0+=1.0;
     s1+=253.0;
    }
   }
  } else {
   if(i36<1.1279253959655762){
    if(i71<0.018030107021331787){
     s1+=7.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i47<3.247588756494224e-05){
     s0+=212.0;
     s1+=14329.0;
    } else {
     s0+=309.0;
     s1+=1096.0;
    }
   }
  }
 }
}
if(i3<1.0038522481918335){
 if(i54<0.010010100901126862){
  if(i11<1.0182666778564453){
   if(i7<0.003661691676825285){
    if(i22<1.1162974834442139){
     s0+=26685.0;
     s1+=886.0;
    } else {
     s0+=60746.0;
     s1+=178.0;
    }
   } else {
    if(i27<0.0012045393232256174){
     s0+=2811.0;
     s1+=2222.0;
    } else {
     s0+=20529.0;
     s1+=1330.0;
    }
   }
  } else {
   if(i46<-9.02269584912574e-06){
    if(i2<-0.0002726912498474121){
     s0+=236.0;
     s1+=116.0;
    } else {
     s0+=197.0;
     s1+=777.0;
    }
   } else {
    if(i61<1.0033555030822754){
     s0+=459.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i64<-0.00023432850139215589){
   if(i31<1.6269450187683105){
    if(i59<-2.5468484636803623e-06){
     s0+=45.0;
     s1+=988.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i51<0.9990460872650146){
     s1+=35.0;
    } else {
     s0+=132.0;
    }
   }
  } else {
   if(i12<0.09052512049674988){
    if(i58<1.0068755149841309){
     s0+=572.0;
     s1+=19.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i73<0.008816540241241455){
     s0+=1.0;
     s1+=52.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i21<0.0022431365214288235){
  if(i68<0.0004285535542294383){
   if(i10<1.0075582265853882){
    if(i50<-2.6588727450871374e-06){
     s0+=630.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=137.0;
    }
   } else {
    if(i50<-3.6406513572728727e-06){
     s0+=112.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=2193.0;
    }
   }
  } else {
   if(i21<0.000977157847955823){
    s1+=217.0;
   } else {
    s0+=3254.0;
   }
  }
 } else {
  if(i33<0.001717746490612626){
   if(i41<1.0357288122177124){
    s0+=115.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i10<0.9767643213272095){
    if(i5<0.0023592710494995117){
     s0+=35.0;
     s1+=27.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i28<0.008827053010463715){
     s0+=132.0;
     s1+=4942.0;
    } else {
     s0+=14.0;
     s1+=9872.0;
    }
   }
  }
 }
}
if(i3<1.003852128982544){
 if(i7<0.007675830740481615){
  if(i21<0.0008606069022789598){
   if(i7<0.0036071441136300564){
    if(i7<0.0020175487734377384){
     s0+=22734.0;
     s1+=189.0;
    } else {
     s0+=5904.0;
     s1+=616.0;
    }
   } else {
    if(i22<1.05894136428833){
     s0+=2811.0;
    } else {
     s0+=101.0;
     s1+=2178.0;
    }
   }
  } else {
   if(i17<1.0169044733047485){
    if(i69<0.004072223789989948){
     s0+=73281.0;
     s1+=475.0;
    } else {
     s0+=1322.0;
     s1+=165.0;
    }
   } else {
    if(i3<1.003055453300476){
     s0+=698.0;
     s1+=90.0;
    } else {
     s0+=35.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i37<1.052894115447998){
   if(i0<-6.139278411865234e-06){
    if(i30<0.0740063488483429){
     s0+=3769.0;
     s1+=57.0;
    } else {
     s0+=408.0;
     s1+=109.0;
    }
   } else {
    if(i44<0.00017039524391293526){
     s0+=1.0;
     s1+=182.0;
    } else {
     s0+=272.0;
     s1+=101.0;
    }
   }
  } else {
   if(i29<-0.0006493330001831055){
    if(i21<0.014676394872367382){
     s0+=434.0;
     s1+=125.0;
    } else {
     s1+=85.0;
    }
   } else {
    if(i51<0.9989069104194641){
     s0+=145.0;
     s1+=132.0;
    } else {
     s0+=129.0;
     s1+=2174.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007027651881799102){
  if(i49<-0.00021759633091278374){
   if(i7<0.004127922933548689){
    if(i15<0.0001946407137438655){
     s0+=11.0;
     s1+=250.0;
    } else {
     s0+=231.0;
     s1+=35.0;
    }
   } else {
    if(i17<0.882281482219696){
     s0+=14.0;
     s1+=10.0;
    } else {
     s0+=40.0;
     s1+=14484.0;
    }
   }
  } else {
   if(i0<7.063150405883789e-05){
    if(i33<0.0005222267936915159){
     s0+=126.0;
     s1+=213.0;
    } else {
     s0+=1228.0;
     s1+=139.0;
    }
   } else {
    if(i0<8.386373519897461e-05){
     s0+=52.0;
     s1+=140.0;
    } else {
     s0+=47.0;
     s1+=2475.0;
    }
   }
  }
 } else {
  if(i56<0.1204158142209053){
   s0+=2563.0;
  } else {
   s1+=4.0;
  }
 }
}
if(i9<1.014350414276123){
 if(i57<1.001826524734497){
  if(i53<0.018241815268993378){
   if(i4<1.002185344696045){
    if(i13<1.0128178596496582){
     s0+=102016.0;
     s1+=3364.0;
    } else {
     s0+=1147.0;
     s1+=399.0;
    }
   } else {
    if(i6<1.5795230865478516e-05){
     s0+=352.0;
     s1+=25.0;
    } else {
     s0+=762.0;
     s1+=725.0;
    }
   }
  } else {
   if(i45<0.45817726850509644){
    if(i6<7.271766662597656e-06){
     s0+=339.0;
     s1+=67.0;
    } else {
     s0+=16.0;
     s1+=122.0;
    }
   } else {
    if(i24<-0.0008044540882110596){
     s0+=26.0;
    } else {
     s1+=382.0;
    }
   }
  }
 } else {
  if(i0<8.183717727661133e-05){
   if(i26<1.1703245639801025){
    if(i19<0.022395439445972443){
     s0+=8253.0;
     s1+=602.0;
    } else {
     s0+=1827.0;
     s1+=1295.0;
    }
   } else {
    if(i25<0.855252742767334){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=604.0;
    }
   }
  } else {
   if(i21<0.002294423058629036){
    if(i28<0.0010207220911979675){
     s1+=537.0;
    } else {
     s0+=452.0;
     s1+=4.0;
    }
   } else {
    if(i26<1.0260529518127441){
     s0+=26.0;
     s1+=15.0;
    } else {
     s0+=50.0;
     s1+=2062.0;
    }
   }
  }
 }
} else {
 if(i20<1.0193531513214111){
  if(i51<0.9997459650039673){
   if(i7<0.018322566524147987){
    s0+=264.0;
   } else {
    s1+=48.0;
   }
  } else {
   if(i14<0.0013815728016197681){
    if(i54<0.0006116866134107113){
     s0+=12.0;
     s1+=99.0;
    } else {
     s0+=369.0;
     s1+=14.0;
    }
   } else {
    if(i52<2.0563602447509766e-05){
     s0+=190.0;
     s1+=2113.0;
    } else {
     s0+=69.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i36<1.6811659336090088){
   if(i46<-1.1772957805078477e-05){
    if(i1<-3.1888070225249976e-05){
     s0+=40.0;
     s1+=11907.0;
    } else {
     s0+=76.0;
     s1+=7.0;
    }
   } else {
    if(i2<-0.00035130977630615234){
     s1+=1.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   s0+=75.0;
  }
 }
}
if(i4<1.0026252269744873){
 if(i17<1.0161547660827637){
  if(i5<0.00029343366622924805){
   if(i1<-0.00011002604878740385){
    if(i12<0.005559861660003662){
     s0+=127.0;
     s1+=5.0;
    } else {
     s0+=36.0;
     s1+=135.0;
    }
   } else {
    if(i66<0.00018689717398956418){
     s0+=77948.0;
     s1+=990.0;
    } else {
     s0+=24470.0;
     s1+=1686.0;
    }
   }
  } else {
   if(i49<-0.00018319804803468287){
    if(i24<0.000385969877243042){
     s0+=316.0;
     s1+=780.0;
    } else {
     s0+=375.0;
     s1+=69.0;
    }
   } else {
    if(i47<5.49811556993518e-06){
     s0+=5363.0;
     s1+=134.0;
    } else {
     s0+=994.0;
     s1+=514.0;
    }
   }
  }
 } else {
  if(i11<1.0173320770263672){
   if(i31<1.0784308910369873){
    if(i0<-3.018975257873535e-05){
     s0+=10.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i33<0.013290522620081902){
     s0+=397.0;
     s1+=20.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    s1+=526.0;
   } else {
    if(i46<-8.73040517035406e-06){
     s0+=154.0;
     s1+=544.0;
    } else {
     s0+=296.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i2<0.0012389421463012695){
  if(i1<-6.790657062083483e-05){
   if(i23<0.04257813096046448){
    if(i40<0.14560987055301666){
     s0+=391.0;
     s1+=60.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   } else {
    if(i29<0.0005066990852355957){
     s0+=146.0;
     s1+=2391.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   if(i40<0.03319237753748894){
    if(i24<0.0004264712333679199){
     s0+=118.0;
     s1+=434.0;
    } else {
     s0+=3403.0;
     s1+=71.0;
    }
   } else {
    if(i2<-0.00012803077697753906){
     s0+=636.0;
     s1+=95.0;
    } else {
     s0+=243.0;
     s1+=776.0;
    }
   }
  }
 } else {
  if(i50<-9.585808584233746e-06){
   s0+=306.0;
  } else {
   if(i7<0.002242851769551635){
    if(i36<1.0953161716461182){
     s1+=173.0;
    } else {
     s0+=465.0;
     s1+=117.0;
    }
   } else {
    if(i23<0.14328548312187195){
     s0+=193.0;
     s1+=2838.0;
    } else {
     s0+=17.0;
     s1+=11917.0;
    }
   }
  }
 }
}
if(i16<1.0046422481536865){
 if(i17<1.01520836353302){
  if(i26<1.1525766849517822){
   if(i4<1.0021449327468872){
    if(i14<0.0015381304547190666){
     s0+=83315.0;
     s1+=610.0;
    } else {
     s0+=23263.0;
     s1+=2830.0;
    }
   } else {
    if(i0<3.355741500854492e-05){
     s0+=3504.0;
     s1+=649.0;
    } else {
     s0+=622.0;
     s1+=518.0;
    }
   }
  } else {
   if(i27<0.005760799162089825){
    if(i59<-4.251658083376242e-06){
     s0+=54.0;
     s1+=59.0;
    } else {
     s0+=301.0;
    }
   } else {
    if(i62<-0.011311352252960205){
     s0+=42.0;
     s1+=43.0;
    } else {
     s0+=20.0;
     s1+=558.0;
    }
   }
  }
 } else {
  if(i32<0.0006843263399787247){
   if(i24<0.00031936168670654297){
    if(i44<2.5324801754322834e-05){
     s0+=548.0;
    } else {
     s0+=85.0;
     s1+=24.0;
    }
   } else {
    if(i33<0.002595961093902588){
     s0+=13.0;
     s1+=2.0;
    } else {
     s1+=60.0;
    }
   }
  } else {
   if(i5<0.00032216310501098633){
    if(i31<1.123177170753479){
     s0+=248.0;
     s1+=25.0;
    } else {
     s0+=66.0;
     s1+=248.0;
    }
   } else {
    if(i32<0.002708770800381899){
     s0+=204.0;
     s1+=2188.0;
    } else {
     s0+=89.0;
     s1+=75.0;
    }
   }
  }
 }
} else {
 if(i49<-0.00026212644297629595){
  if(i0<7.635354995727539e-05){
   if(i23<0.07122284173965454){
    if(i68<0.0007647257880307734){
     s0+=127.0;
     s1+=8.0;
    } else {
     s0+=54.0;
     s1+=76.0;
    }
   } else {
    if(i56<0.023655347526073456){
     s0+=99.0;
     s1+=132.0;
    } else {
     s0+=27.0;
     s1+=1050.0;
    }
   }
  } else {
   if(i59<-5.998693814035505e-05){
    s0+=42.0;
   } else {
    if(i62<-0.013869643211364746){
     s0+=15.0;
     s1+=12.0;
    } else {
     s0+=52.0;
     s1+=11504.0;
    }
   }
  }
 } else {
  if(i3<1.0102672576904297){
   if(i22<1.116804838180542){
    if(i28<0.00020314531866461039){
     s0+=327.0;
    } else {
     s1+=1027.0;
    }
   } else {
    if(i27<0.0022821826860308647){
     s0+=2815.0;
     s1+=8.0;
    } else {
     s0+=711.0;
     s1+=780.0;
    }
   }
  } else {
   s1+=1731.0;
  }
 }
}
if(i1<-9.404207958141342e-05){
 if(i23<0.04118296504020691){
  if(i20<0.9566696882247925){
   if(i32<0.0031481990590691566){
    if(i37<1.107215404510498){
     s0+=665.0;
     s1+=12.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i69<0.023723244667053223){
     s0+=15.0;
     s1+=1.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i4<1.0050444602966309){
    if(i38<0.9129103422164917){
     s0+=41.0;
     s1+=45.0;
    } else {
     s0+=39.0;
     s1+=6.0;
    }
   } else {
    if(i78<-0.0030346810817718506){
     s0+=3.0;
     s1+=80.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<0.0002390146255493164){
   if(i52<-3.3974647521972656e-05){
    s0+=30.0;
   } else {
    if(i24<0.0017144381999969482){
     s0+=201.0;
     s1+=15458.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   s0+=69.0;
  }
 }
} else {
 if(i4<1.0024164915084839){
  if(i32<0.0007271716604009271){
   if(i32<0.00055642647203058){
    if(i21<0.0019639551173895597){
     s0+=65563.0;
     s1+=76.0;
    } else {
     s0+=3530.0;
     s1+=83.0;
    }
   } else {
    if(i26<1.0239198207855225){
     s0+=1469.0;
     s1+=212.0;
    } else {
     s0+=8715.0;
     s1+=123.0;
    }
   }
  } else {
   if(i36<1.0903346538543701){
    if(i15<0.0002485486911609769){
     s0+=2100.0;
     s1+=2947.0;
    } else {
     s0+=6228.0;
     s1+=177.0;
    }
   } else {
    if(i12<0.20091432332992554){
     s0+=21207.0;
     s1+=657.0;
    } else {
     s0+=87.0;
     s1+=187.0;
    }
   }
  }
 } else {
  if(i19<0.01427558995783329){
   if(i27<0.001192090567201376){
    if(i33<0.00021333363838493824){
     s0+=807.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=1606.0;
    }
   } else {
    if(i10<1.0164802074432373){
     s0+=4581.0;
     s1+=220.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i47<1.5005112800281495e-05){
    if(i7<0.004371302202343941){
     s0+=57.0;
     s1+=48.0;
    } else {
     s0+=34.0;
     s1+=1781.0;
    }
   } else {
    if(i16<1.0103342533111572){
     s0+=1004.0;
     s1+=386.0;
    } else {
     s0+=23.0;
     s1+=97.0;
    }
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i11<1.0196866989135742){
  if(i5<0.000292360782623291){
   if(i43<0.23224332928657532){
    if(i39<1.0903575420379639){
     s0+=26157.0;
     s1+=1927.0;
    } else {
     s0+=76734.0;
     s1+=703.0;
    }
   } else {
    if(i65<8.048067684285343e-05){
     s0+=49.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=116.0;
    }
   }
  } else {
   if(i7<0.004094069357961416){
    if(i2<0.0002728104591369629){
     s0+=750.0;
     s1+=59.0;
    } else {
     s0+=5102.0;
     s1+=44.0;
    }
   } else {
    if(i41<0.996167004108429){
     s0+=820.0;
     s1+=220.0;
    } else {
     s0+=394.0;
     s1+=1451.0;
    }
   }
  }
 } else {
  if(i5<0.00022912025451660156){
   if(i47<1.1153864761581644e-05){
    if(i21<0.0028863810002803802){
     s0+=300.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i37<1.121600866317749){
     s0+=95.0;
     s1+=34.0;
    } else {
     s0+=4.0;
     s1+=209.0;
    }
   }
  } else {
   if(i64<-0.0010439024772495031){
    if(i32<0.004102589562535286){
     s0+=14.0;
     s1+=826.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i40<0.04528236761689186){
     s0+=57.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i10<1.0134289264678955){
  if(i12<0.1706913709640503){
   if(i24<0.0005176067352294922){
    if(i22<1.1229777336120605){
     s0+=87.0;
     s1+=1247.0;
    } else {
     s0+=506.0;
     s1+=702.0;
    }
   } else {
    if(i66<0.0003090414102189243){
     s0+=4087.0;
     s1+=86.0;
    } else {
     s0+=1044.0;
     s1+=1323.0;
    }
   }
  } else {
   if(i15<0.0007036785827949643){
    if(i27<0.002452127169817686){
     s0+=78.0;
     s1+=4.0;
    } else {
     s0+=62.0;
     s1+=2931.0;
    }
   } else {
    s0+=89.0;
   }
  }
 } else {
  if(i31<1.1203162670135498){
   if(i15<0.0003260530938860029){
    s1+=1475.0;
   } else {
    s0+=168.0;
   }
  } else {
   if(i0<4.8160552978515625e-05){
    if(i34<1.4586446285247803){
     s1+=110.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i10<1.0134379863739014){
     s0+=2.0;
     s1+=8.0;
    } else {
     s1+=10731.0;
    }
   }
  }
 }
}
if(i2<0.000976264476776123){
 if(i12<0.1985427737236023){
  if(i14<0.001729619805701077){
   if(i63<-0.00038892030715942383){
    if(i36<1.0742530822753906){
     s0+=3372.0;
     s1+=478.0;
    } else {
     s0+=11907.0;
     s1+=60.0;
    }
   } else {
    if(i25<1.0288443565368652){
     s0+=75684.0;
     s1+=402.0;
    } else {
     s0+=261.0;
     s1+=45.0;
    }
   }
  } else {
   if(i44<9.483353642281145e-05){
    if(i3<0.9983215928077698){
     s0+=3126.0;
     s1+=162.0;
    } else {
     s0+=3724.0;
     s1+=3599.0;
    }
   } else {
    if(i26<1.1177282333374023){
     s0+=15559.0;
     s1+=730.0;
    } else {
     s0+=550.0;
     s1+=786.0;
    }
   }
  }
 } else {
  if(i21<0.00256479368545115){
   if(i80<0.13480257987976074){
    if(i59<-4.232873834553175e-06){
     s1+=26.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i1<-7.255405944306403e-05){
     s1+=3.0;
    } else {
     s0+=282.0;
     s1+=6.0;
    }
   }
  } else {
   if(i42<0.002948022447526455){
    if(i25<1.019880771636963){
     s0+=65.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=42.0;
    }
   } else {
    if(i15<0.0001189528702525422){
     s0+=20.0;
     s1+=13.0;
    } else {
     s0+=32.0;
     s1+=1535.0;
    }
   }
  }
 }
} else {
 if(i50<-7.576046755275456e-06){
  s0+=671.0;
 } else {
  if(i49<-0.0002815466723404825){
   if(i15<0.0007059713825583458){
    if(i63<-0.007862359285354614){
     s0+=18.0;
     s1+=16.0;
    } else {
     s0+=35.0;
     s1+=12887.0;
    }
   } else {
    s0+=51.0;
   }
  } else {
   if(i46<-3.180483327014372e-05){
    if(i0<0.0001284480094909668){
     s0+=125.0;
     s1+=259.0;
    } else {
     s0+=6.0;
     s1+=1994.0;
    }
   } else {
    if(i27<0.001223732135258615){
     s0+=63.0;
     s1+=1009.0;
    } else {
     s0+=1111.0;
     s1+=120.0;
    }
   }
  }
 }
}
if(i6<2.1755695343017578e-05){
 if(i1<-8.211741806007922e-05){
  if(i43<0.0795881450176239){
   if(i0<6.318092346191406e-06){
    if(i51<1.0024893283843994){
     s0+=719.0;
     s1+=63.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i50<-3.4611703085829504e-06){
     s0+=2.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i31<1.1281554698944092){
    if(i70<1.920273462019395e-06){
     s0+=16.0;
     s1+=53.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i37<1.0284470319747925){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=771.0;
    }
   }
  }
 } else {
  if(i40<0.011426031589508057){
   if(i14<0.001985338982194662){
    if(i36<1.0685478448867798){
     s0+=22801.0;
     s1+=326.0;
    } else {
     s0+=40448.0;
     s1+=23.0;
    }
   } else {
    if(i4<1.0013278722763062){
     s0+=2753.0;
     s1+=28.0;
    } else {
     s0+=290.0;
     s1+=289.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    if(i32<0.0007343054749071598){
     s0+=5778.0;
     s1+=183.0;
    } else {
     s0+=557.0;
     s1+=2002.0;
    }
   } else {
    if(i25<1.0193731784820557){
     s0+=35594.0;
     s1+=1099.0;
    } else {
     s0+=824.0;
     s1+=277.0;
    }
   }
  }
 }
} else {
 if(i19<0.007701985538005829){
  if(i18<0.0012511014938354492){
   if(i15<0.00021565024508163333){
    if(i34<1.0970759391784668){
     s1+=186.0;
    } else {
     s0+=249.0;
     s1+=43.0;
    }
   } else {
    if(i42<0.0048291729763150215){
     s0+=3563.0;
     s1+=4.0;
    } else {
     s0+=32.0;
     s1+=11.0;
    }
   }
  } else {
   if(i28<0.0012584580108523369){
    if(i29<0.0008935332298278809){
     s0+=2.0;
     s1+=1198.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i33<0.0020205224864184856){
     s0+=802.0;
     s1+=74.0;
    } else {
     s0+=11.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i9<1.0140810012817383){
   if(i2<5.555152893066406e-05){
    if(i40<0.13749897480010986){
     s0+=880.0;
     s1+=175.0;
    } else {
     s0+=74.0;
     s1+=187.0;
    }
   } else {
    if(i33<0.0019524223171174526){
     s0+=399.0;
     s1+=459.0;
    } else {
     s0+=482.0;
     s1+=3667.0;
    }
   }
  } else {
   if(i29<-0.00022467970848083496){
    if(i23<0.2278466522693634){
     s0+=70.0;
    } else {
     s0+=3.0;
     s1+=66.0;
    }
   } else {
    if(i12<0.1254744529724121){
     s0+=98.0;
     s1+=1325.0;
    } else {
     s0+=8.0;
     s1+=11288.0;
    }
   }
  }
 }
}
if(i0<6.514787673950195e-05){
 if(i7<0.00768423592671752){
  if(i22<1.1162974834442139){
   if(i19<0.006567143835127354){
    if(i20<1.009320616722107){
     s0+=22500.0;
     s1+=449.0;
    } else {
     s0+=7.0;
     s1+=87.0;
    }
   } else {
    if(i61<1.0002425909042358){
     s0+=7088.0;
     s1+=705.0;
    } else {
     s0+=452.0;
     s1+=1989.0;
    }
   }
  } else {
   if(i4<1.002321720123291){
    if(i33<0.0018115810817107558){
     s0+=55101.0;
     s1+=1.0;
    } else {
     s0+=20733.0;
     s1+=450.0;
    }
   } else {
    if(i42<0.0016117002815008163){
     s0+=2343.0;
     s1+=27.0;
    } else {
     s0+=1379.0;
     s1+=609.0;
    }
   }
  }
 } else {
  if(i23<0.09000974893569946){
   if(i0<-2.199411392211914e-05){
    if(i7<0.01966053992509842){
     s0+=3816.0;
     s1+=105.0;
    } else {
     s0+=139.0;
     s1+=58.0;
    }
   } else {
    if(i23<0.035818129777908325){
     s0+=304.0;
     s1+=71.0;
    } else {
     s0+=104.0;
     s1+=294.0;
    }
   }
  } else {
   if(i46<-5.983059054415207e-06){
    if(i49<2.5282177375629544e-05){
     s0+=157.0;
     s1+=2972.0;
    } else {
     s0+=286.0;
     s1+=134.0;
    }
   } else {
    s0+=118.0;
   }
  }
 }
} else {
 if(i39<1.1706266403198242){
  if(i22<1.116804838180542){
   if(i28<0.0001958778011612594){
    s0+=46.0;
   } else {
    s1+=2335.0;
   }
  } else {
   if(i20<1.022268295288086){
    if(i27<0.002545691095292568){
     s0+=1822.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   } else {
    if(i36<1.124671220779419){
     s0+=4.0;
    } else {
     s1+=29.0;
    }
   }
  }
 } else {
  if(i62<-0.013395249843597412){
   if(i4<1.0061638355255127){
    if(i40<0.12734024226665497){
     s0+=33.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i33<0.0431891605257988){
     s0+=1.0;
     s1+=96.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  } else {
   if(i2<0.0010501742362976074){
    if(i7<0.005028503015637398){
     s0+=9.0;
    } else {
     s0+=13.0;
     s1+=246.0;
    }
   } else {
    if(i23<0.0931888222694397){
     s0+=27.0;
     s1+=415.0;
    } else {
     s0+=12.0;
     s1+=13250.0;
    }
   }
  }
 }
}
if(i9<1.014883279800415){
 if(i5<0.0005189478397369385){
  if(i43<0.20664000511169434){
   if(i34<1.0905578136444092){
    if(i11<1.0088748931884766){
     s0+=24843.0;
     s1+=2002.0;
    } else {
     s0+=215.0;
     s1+=455.0;
    }
   } else {
    if(i1<-6.0143407608848065e-05){
     s0+=2275.0;
     s1+=495.0;
    } else {
     s0+=81217.0;
     s1+=997.0;
    }
   }
  } else {
   if(i46<-8.205975973396562e-06){
    if(i77<0.14890608191490173){
     s1+=233.0;
    } else {
     s0+=18.0;
     s1+=65.0;
    }
   } else {
    if(i57<1.0009289979934692){
     s0+=83.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i66<0.00016301238792948425){
   if(i1<-4.5108768972568214e-05){
    if(i21<0.0010733408853411674){
     s0+=29.0;
     s1+=794.0;
    } else {
     s0+=963.0;
     s1+=71.0;
    }
   } else {
    if(i27<0.0009023270104080439){
     s0+=1666.0;
     s1+=566.0;
    } else {
     s0+=2494.0;
     s1+=27.0;
    }
   }
  } else {
   if(i12<0.10037890076637268){
    if(i5<0.0012682676315307617){
     s0+=1142.0;
     s1+=457.0;
    } else {
     s0+=227.0;
     s1+=736.0;
    }
   } else {
    if(i21<0.001967070624232292){
     s0+=88.0;
     s1+=4.0;
    } else {
     s0+=280.0;
     s1+=3389.0;
    }
   }
  }
 }
} else {
 if(i3<1.001796841621399){
  if(i33<0.011506031267344952){
   if(i7<0.00515198428183794){
    s0+=370.0;
   } else {
    if(i14<0.007513908203691244){
     s1+=77.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   s1+=107.0;
  }
 } else {
  if(i8<1.0188167095184326){
   if(i52<1.2576580047607422e-05){
    if(i6<1.0013580322265625e-05){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=129.0;
     s1+=1381.0;
    }
   } else {
    if(i2<0.0021613240242004395){
     s0+=386.0;
     s1+=39.0;
    } else {
     s1+=153.0;
    }
   }
  } else {
   if(i50<-6.076356385165127e-06){
    if(i36<1.1812894344329834){
     s0+=38.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i15<0.000823186943307519){
     s0+=39.0;
     s1+=12258.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i29<0.00020819902420043945){
 if(i12<0.1965532898902893){
  if(i0<6.347894668579102e-05){
   if(i10<1.0058493614196777){
    if(i7<0.003730404656380415){
     s0+=87570.0;
     s1+=1069.0;
    } else {
     s0+=23186.0;
     s1+=3901.0;
    }
   } else {
    if(i39<1.092360019683838){
     s0+=310.0;
     s1+=711.0;
    } else {
     s0+=2619.0;
     s1+=430.0;
    }
   }
  } else {
   if(i33<0.0019069273257628083){
    if(i22<1.116804838180542){
     s0+=79.0;
     s1+=462.0;
    } else {
     s0+=1020.0;
    }
   } else {
    if(i12<0.03428608179092407){
     s0+=53.0;
     s1+=47.0;
    } else {
     s0+=73.0;
     s1+=1099.0;
    }
   }
  }
 } else {
  if(i21<0.0025655513163655996){
   if(i1<-4.336440179031342e-05){
    if(i28<0.0019750413484871387){
     s0+=16.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i30<0.19834494590759277){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=275.0;
     s1+=3.0;
    }
   }
  } else {
   if(i19<0.024006713181734085){
    if(i6<1.4543533325195312e-05){
     s0+=68.0;
     s1+=21.0;
    } else {
     s0+=7.0;
     s1+=94.0;
    }
   } else {
    if(i6<-4.348158836364746e-05){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=3431.0;
    }
   }
  }
 }
} else {
 if(i50<-7.4461208896536846e-06){
  s0+=388.0;
 } else {
  if(i3<1.004356026649475){
   if(i1<-9.367988241137937e-05){
    s1+=54.0;
   } else {
    if(i39<1.0989346504211426){
     s1+=4.0;
    } else {
     s0+=225.0;
    }
   }
  } else {
   if(i2<0.0018033385276794434){
    if(i15<0.0007128219585865736){
     s0+=22.0;
     s1+=1699.0;
    } else {
     s0+=384.0;
    }
   } else {
    if(i2<0.0018045902252197266){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=11430.0;
    }
   }
  }
 }
}
if(i17<1.0173604488372803){
 if(i4<1.0026341676712036){
  if(i22<1.1162974834442139){
   if(i24<7.361173629760742e-05){
    if(i14<0.0011010444723069668){
     s0+=19875.0;
     s1+=132.0;
    } else {
     s0+=3792.0;
     s1+=524.0;
    }
   } else {
    if(i27<0.00023019294894766062){
     s0+=4298.0;
     s1+=54.0;
    } else {
     s0+=1935.0;
     s1+=2547.0;
    }
   }
  } else {
   if(i23<0.2321862280368805){
    if(i1<-0.00012881019210908562){
     s0+=138.0;
     s1+=169.0;
    } else {
     s0+=79655.0;
     s1+=796.0;
    }
   } else {
    if(i19<0.030716773122549057){
     s0+=44.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=277.0;
    }
   }
  }
 } else {
  if(i33<0.0019542304798960686){
   if(i24<0.0005058646202087402){
    if(i51<1.0009770393371582){
     s0+=24.0;
     s1+=1360.0;
    } else {
     s0+=160.0;
     s1+=2.0;
    }
   } else {
    if(i61<1.0094115734100342){
     s0+=3319.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<4.166364669799805e-05){
    if(i57<1.0022895336151123){
     s0+=37.0;
     s1+=421.0;
    } else {
     s0+=1187.0;
     s1+=817.0;
    }
   } else {
    if(i23<0.07060208916664124){
     s0+=298.0;
     s1+=356.0;
    } else {
     s0+=137.0;
     s1+=2729.0;
    }
   }
  }
 }
} else {
 if(i46<-1.2241425793035887e-05){
  if(i1<-6.444031896535307e-05){
   if(i50<-6.526601737277815e-06){
    s0+=75.0;
   } else {
    if(i1<-8.833584433887154e-05){
     s0+=5.0;
     s1+=12351.0;
    } else {
     s0+=121.0;
     s1+=926.0;
    }
   }
  } else {
   if(i7<0.0037256749346852303){
    if(i34<1.0945069789886475){
     s1+=106.0;
    } else {
     s0+=599.0;
    }
   } else {
    if(i59<-1.223335311806295e-05){
     s0+=86.0;
     s1+=16.0;
    } else {
     s0+=44.0;
     s1+=824.0;
    }
   }
  }
 } else {
  if(i61<1.001420021057129){
   if(i39<1.0887749195098877){
    s1+=3.0;
   } else {
    s0+=456.0;
   }
  } else {
   if(i14<0.002191977808251977){
    if(i32<0.0004361401661299169){
     s0+=82.0;
    } else {
     s0+=14.0;
     s1+=10.0;
    }
   } else {
    s1+=31.0;
   }
  }
 }
}
if(i1<-9.234872413799167e-05){
 if(i17<0.9089494943618774){
  if(i40<0.16457073390483856){
   if(i40<0.08373236656188965){
    if(i49<0.0001921892398968339){
     s0+=431.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<-0.00906345248222351){
     s0+=171.0;
     s1+=17.0;
    } else {
     s0+=27.0;
     s1+=41.0;
    }
   }
  } else {
   if(i7<0.01597227156162262){
    s0+=32.0;
   } else {
    if(i37<1.0665230751037598){
     s0+=17.0;
     s1+=27.0;
    } else {
     s1+=121.0;
    }
   }
  }
 } else {
  if(i18<-0.003994286060333252){
   if(i80<0.047635018825531006){
    if(i69<0.005186187103390694){
     s0+=103.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=53.0;
    }
   } else {
    if(i47<3.6354576877783984e-05){
     s0+=1.0;
     s1+=6.0;
    } else {
     s1+=79.0;
    }
   }
  } else {
   if(i24<0.0017116665840148926){
    if(i15<0.00070473353844136){
     s0+=168.0;
     s1+=15574.0;
    } else {
     s0+=153.0;
    }
   } else {
    s0+=74.0;
   }
  }
 }
} else {
 if(i7<0.003994487226009369){
  if(i44<-2.4684610252734274e-05){
   if(i39<1.0958809852600098){
    s1+=358.0;
   } else {
    s0+=106.0;
   }
  } else {
   if(i7<0.0028421697206795216){
    if(i2<0.0017580389976501465){
     s0+=82889.0;
     s1+=622.0;
    } else {
     s0+=168.0;
     s1+=41.0;
    }
   } else {
    if(i33<0.0007398203015327454){
     s0+=2574.0;
     s1+=717.0;
    } else {
     s0+=8627.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i3<0.9993937015533447){
   if(i43<0.20456725358963013){
    if(i27<0.001158344210125506){
     s0+=1974.0;
     s1+=443.0;
    } else {
     s0+=17385.0;
     s1+=342.0;
    }
   } else {
    if(i59<-1.7244379932890297e-06){
     s0+=9.0;
     s1+=75.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i61<1.0000102519989014){
    if(i32<0.0018883385928347707){
     s0+=158.0;
     s1+=103.0;
    } else {
     s0+=233.0;
    }
   } else {
    if(i18<-0.0013014376163482666){
     s0+=661.0;
     s1+=610.0;
    } else {
     s0+=525.0;
     s1+=5009.0;
    }
   }
  }
 }
}
if(i17<1.0176970958709717){
 if(i41<1.008970022201538){
  if(i26<1.1546916961669922){
   if(i65<0.0014376299222931266){
    if(i32<0.0007107608253136277){
     s0+=76374.0;
     s1+=447.0;
    } else {
     s0+=28822.0;
     s1+=3814.0;
    }
   } else {
    if(i0<1.6033649444580078e-05){
     s0+=7334.0;
     s1+=958.0;
    } else {
     s0+=283.0;
     s1+=1012.0;
    }
   }
  } else {
   if(i19<0.03691728040575981){
    if(i59<-1.5295685443561524e-05){
     s0+=7.0;
     s1+=25.0;
    } else {
     s0+=494.0;
     s1+=17.0;
    }
   } else {
    if(i48<0.8950342535972595){
     s0+=27.0;
     s1+=11.0;
    } else {
     s0+=32.0;
     s1+=1338.0;
    }
   }
  }
 } else {
  if(i45<0.04265394061803818){
   if(i15<0.00038741843309253454){
    if(i47<1.4883817129884847e-06){
     s0+=62.0;
     s1+=1288.0;
    } else {
     s0+=127.0;
     s1+=33.0;
    }
   } else {
    if(i34<1.2815889120101929){
     s0+=1030.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i70<7.247485882544424e-07){
    if(i15<0.0009009349159896374){
     s0+=3.0;
     s1+=1467.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i46<-3.1890536774881184e-05){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i41<1.0114707946777344){
  if(i14<0.0017517723608762026){
   if(i39<1.0840704441070557){
    s1+=46.0;
   } else {
    if(i21<0.002907846122980118){
     s0+=664.0;
     s1+=24.0;
    } else {
     s0+=34.0;
     s1+=45.0;
    }
   }
  } else {
   if(i19<0.02955978363752365){
    if(i0<2.6226043701171875e-06){
     s0+=221.0;
     s1+=32.0;
    } else {
     s0+=271.0;
     s1+=1175.0;
    }
   } else {
    if(i30<0.09252864122390747){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=52.0;
     s1+=2996.0;
    }
   }
  }
 } else {
  if(i9<1.020751714706421){
   if(i63<0.0005379319190979004){
    if(i50<-5.566350864683045e-06){
     s0+=8.0;
    } else {
     s1+=350.0;
    }
   } else {
    if(i52<1.3768672943115234e-05){
     s0+=6.0;
     s1+=164.0;
    } else {
     s0+=86.0;
     s1+=7.0;
    }
   }
  } else {
   if(i50<-6.6019920268445276e-06){
    s0+=1.0;
   } else {
    s1+=9527.0;
   }
  }
 }
}
if(i30<0.19701266288757324){
 if(i5<0.0005189776420593262){
  if(i40<0.012152817100286484){
   if(i27<0.0006292717880569398){
    if(i10<1.0051389932632446){
     s0+=22302.0;
     s1+=539.0;
    } else {
     s0+=33.0;
     s1+=188.0;
    }
   } else {
    if(i66<-0.00023273158876691014){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=45471.0;
     s1+=26.0;
    }
   }
  } else {
   if(i5<8.398294448852539e-05){
    if(i22<1.1164028644561768){
     s0+=6772.0;
     s1+=908.0;
    } else {
     s0+=28287.0;
     s1+=354.0;
    }
   } else {
    if(i39<1.092151403427124){
     s0+=229.0;
     s1+=1257.0;
    } else {
     s0+=5130.0;
     s1+=841.0;
    }
   }
  }
 } else {
  if(i15<0.0003515285497996956){
   if(i29<0.00016367435455322266){
    if(i0<7.092952728271484e-06){
     s0+=670.0;
     s1+=121.0;
    } else {
     s0+=1131.0;
     s1+=2362.0;
    }
   } else {
    if(i1<-0.00041310919914394617){
     s0+=24.0;
     s1+=38.0;
    } else {
     s0+=16.0;
     s1+=4164.0;
    }
   }
  } else {
   if(i54<0.0030060862191021442){
    if(i65<0.0014125662855803967){
     s0+=5097.0;
     s1+=29.0;
    } else {
     s0+=228.0;
     s1+=174.0;
    }
   } else {
    if(i26<1.098909616470337){
     s0+=250.0;
     s1+=74.0;
    } else {
     s0+=67.0;
     s1+=542.0;
    }
   }
  }
 }
} else {
 if(i27<0.002443302422761917){
  if(i63<-0.0003192424774169922){
   if(i21<0.0020920480601489544){
    s0+=39.0;
   } else {
    if(i1<-3.0483657610602677e-05){
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.001956205815076828){
    s0+=550.0;
   } else {
    if(i17<1.016984462738037){
     s0+=23.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i0<-1.3232231140136719e-05){
   if(i44<0.00014265884237829596){
    if(i82<-0.0009176135063171387){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=181.0;
     s1+=13.0;
    }
   } else {
    if(i55<0.20115655660629272){
     s0+=95.0;
     s1+=89.0;
    } else {
     s0+=17.0;
     s1+=286.0;
    }
   }
  } else {
   if(i22<1.7041046619415283){
    if(i29<-0.0005244016647338867){
     s0+=9.0;
     s1+=68.0;
    } else {
     s0+=12.0;
     s1+=12083.0;
    }
   } else {
    s0+=21.0;
   }
  }
 }
}
if(i3<1.0037122964859009){
 if(i37<1.140138864517212){
  if(i5<0.00029212236404418945){
   if(i36<1.0867384672164917){
    if(i9<1.0067591667175293){
     s0+=34508.0;
     s1+=1900.0;
    } else {
     s0+=13.0;
     s1+=134.0;
    }
   } else {
    if(i7<0.01970546320080757){
     s0+=68554.0;
     s1+=712.0;
    } else {
     s0+=39.0;
     s1+=58.0;
    }
   }
  } else {
   if(i44<1.4902832845109515e-05){
    if(i57<1.001203179359436){
     s0+=4510.0;
     s1+=60.0;
    } else {
     s0+=689.0;
     s1+=251.0;
    }
   } else {
    if(i22<1.116804838180542){
     s0+=100.0;
     s1+=1022.0;
    } else {
     s0+=3065.0;
     s1+=1175.0;
    }
   }
  }
 } else {
  if(i27<0.0062370700761675835){
   if(i3<1.00144362449646){
    if(i44<7.540771912317723e-05){
     s0+=423.0;
     s1+=3.0;
    } else {
     s0+=89.0;
     s1+=54.0;
    }
   } else {
    if(i57<1.0009912252426147){
     s0+=8.0;
    } else {
     s1+=134.0;
    }
   }
  } else {
   if(i15<9.780722029972821e-05){
    if(i58<1.0014450550079346){
     s1+=8.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i51<1.0024850368499756){
     s1+=986.0;
    } else {
     s0+=4.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007037244504317641){
  if(i14<0.0010245119920000434){
   if(i29<0.00020873546600341797){
    s0+=1304.0;
   } else {
    if(i59<-6.662498890364077e-06){
     s0+=22.0;
     s1+=329.0;
    } else {
     s0+=27.0;
    }
   }
  } else {
   if(i14<0.00196904968470335){
    if(i47<-7.24618075764738e-06){
     s0+=21.0;
     s1+=1097.0;
    } else {
     s0+=291.0;
     s1+=79.0;
    }
   } else {
    if(i7<0.0038688541390001774){
     s0+=90.0;
     s1+=115.0;
    } else {
     s0+=173.0;
     s1+=16142.0;
    }
   }
  }
 } else {
  if(i10<1.0342133045196533){
   s0+=2621.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i1<-8.450371387880296e-05){
 if(i29<-0.0005508661270141602){
  if(i30<0.07550358772277832){
   if(i24<0.0006403326988220215){
    if(i48<0.8528308868408203){
     s0+=13.0;
     s1+=17.0;
    } else {
     s0+=806.0;
     s1+=33.0;
    }
   } else {
    if(i53<0.009398173540830612){
     s0+=65.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  } else {
   if(i19<0.16805274784564972){
    if(i62<-0.01439589262008667){
     s0+=21.0;
     s1+=17.0;
    } else {
     s0+=16.0;
     s1+=218.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i39<1.1497111320495605){
   if(i22<1.1180615425109863){
    s1+=1002.0;
   } else {
    if(i56<0.0701231062412262){
     s0+=386.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i23<0.018527567386627197){
    if(i9<0.9681284427642822){
     s0+=135.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=53.0;
    }
   } else {
    if(i2<6.622076034545898e-05){
     s0+=32.0;
     s1+=529.0;
    } else {
     s0+=22.0;
     s1+=14408.0;
    }
   }
  }
 }
} else {
 if(i4<1.0022797584533691){
  if(i14<0.0017282022163271904){
   if(i14<0.0011612222297117114){
    if(i66<0.00016695645172148943){
     s0+=64241.0;
     s1+=113.0;
    } else {
     s0+=10922.0;
     s1+=169.0;
    }
   } else {
    if(i28<0.00031522344215773046){
     s0+=1058.0;
     s1+=469.0;
    } else {
     s0+=12024.0;
     s1+=183.0;
    }
   }
  } else {
   if(i0<-3.1441450119018555e-05){
    if(i2<-0.0007500648498535156){
     s0+=15412.0;
     s1+=217.0;
    } else {
     s0+=1181.0;
     s1+=221.0;
    }
   } else {
    if(i40<0.010509265586733818){
     s0+=2238.0;
     s1+=269.0;
    } else {
     s0+=853.0;
     s1+=2473.0;
    }
   }
  }
 } else {
  if(i52<9.715557098388672e-06){
   if(i46<-1.1501189874252304e-05){
    if(i0<4.231929779052734e-06){
     s0+=617.0;
     s1+=102.0;
    } else {
     s0+=670.0;
     s1+=2698.0;
    }
   } else {
    if(i32<0.0012467900523915887){
     s0+=937.0;
     s1+=4.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i45<0.04480832815170288){
    if(i2<0.002159714698791504){
     s0+=3979.0;
     s1+=151.0;
    } else {
     s0+=13.0;
     s1+=70.0;
    }
   } else {
    if(i71<0.08953315019607544){
     s0+=754.0;
     s1+=385.0;
    } else {
     s0+=192.0;
     s1+=346.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i7<0.007089757826179266){
  if(i7<0.0036073289811611176){
   if(i7<0.0020516817457973957){
    if(i13<0.992809534072876){
     s0+=7490.0;
     s1+=164.0;
    } else {
     s0+=63506.0;
     s1+=188.0;
    }
   } else {
    if(i61<0.9990026950836182){
     s0+=10824.0;
     s1+=48.0;
    } else {
     s0+=7902.0;
     s1+=712.0;
    }
   }
  } else {
   if(i3<0.9988394975662231){
    if(i5<-0.0002065896987915039){
     s0+=14547.0;
     s1+=35.0;
    } else {
     s0+=1740.0;
     s1+=374.0;
    }
   } else {
    if(i27<0.0011439165100455284){
     s0+=441.0;
     s1+=1949.0;
    } else {
     s0+=1625.0;
     s1+=628.0;
    }
   }
  }
 } else {
  if(i3<0.99797523021698){
   if(i26<1.1230299472808838){
    if(i6<3.9696693420410156e-05){
     s0+=5485.0;
     s1+=171.0;
    } else {
     s0+=69.0;
     s1+=41.0;
    }
   } else {
    if(i48<1.0032711029052734){
     s0+=81.0;
     s1+=51.0;
    } else {
     s0+=12.0;
     s1+=245.0;
    }
   }
  } else {
   if(i64<-0.00038790859980508685){
    if(i65<0.01062425971031189){
     s0+=125.0;
     s1+=3031.0;
    } else {
     s0+=45.0;
     s1+=32.0;
    }
   } else {
    if(i18<-0.0018597245216369629){
     s0+=454.0;
     s1+=171.0;
    } else {
     s0+=15.0;
     s1+=264.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007058108458295465){
  if(i52<5.9545040130615234e-05){
   if(i3<1.0053155422210693){
    if(i59<-4.389376044855453e-06){
     s0+=70.0;
     s1+=582.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i10<1.0134658813476562){
     s0+=148.0;
     s1+=3425.0;
    } else {
     s0+=2.0;
     s1+=12379.0;
    }
   }
  } else {
   s0+=25.0;
  }
 } else {
  s0+=1717.0;
 }
}
if(i1<-9.841138671617955e-05){
 if(i20<0.9452497959136963){
  if(i30<0.11791250109672546){
   if(i15<0.0006343753775581717){
    if(i18<-0.0031130313873291016){
     s0+=519.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i78<-0.017399877309799194){
     s0+=1.0;
     s1+=23.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i5<0.0010066032409667969){
    s1+=55.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i32<0.0038933800533413887){
   if(i9<0.9419854283332825){
    if(i30<0.018826663494110107){
     s0+=70.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=93.0;
    }
   } else {
    if(i21<0.0022585601545870304){
     s0+=134.0;
     s1+=631.0;
    } else {
     s0+=68.0;
     s1+=14410.0;
    }
   }
  } else {
   if(i1<-0.00019934805459342897){
    s1+=12.0;
   } else {
    s0+=151.0;
   }
  }
 }
} else {
 if(i6<1.5079975128173828e-05){
  if(i19<0.006544956471771002){
   if(i44<5.0596558139659464e-05){
    if(i64<-0.0015501927118748426){
     s0+=132.0;
     s1+=23.0;
    } else {
     s0+=63028.0;
     s1+=290.0;
    }
   } else {
    if(i27<0.0006186641985550523){
     s0+=489.0;
     s1+=164.0;
    } else {
     s0+=1588.0;
     s1+=17.0;
    }
   }
  } else {
   if(i29<-0.00014704465866088867){
    if(i4<0.9992941617965698){
     s0+=22688.0;
     s1+=98.0;
    } else {
     s0+=8319.0;
     s1+=665.0;
    }
   } else {
    if(i61<0.9995105862617493){
     s0+=6933.0;
     s1+=191.0;
    } else {
     s0+=2975.0;
     s1+=1955.0;
    }
   }
  }
 } else {
  if(i15<0.00033471203641965985){
   if(i2<0.0007657408714294434){
    if(i39<1.0926339626312256){
     s1+=743.0;
    } else {
     s0+=2854.0;
     s1+=1046.0;
    }
   } else {
    if(i14<0.0009971446124836802){
     s0+=82.0;
     s1+=94.0;
    } else {
     s0+=78.0;
     s1+=3131.0;
    }
   }
  } else {
   if(i63<-0.0007634460926055908){
    if(i5<0.0011801719665527344){
     s0+=720.0;
     s1+=167.0;
    } else {
     s0+=106.0;
     s1+=234.0;
    }
   } else {
    if(i56<0.0485997349023819){
     s0+=5719.0;
     s1+=25.0;
    } else {
     s0+=5.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i3<1.0038622617721558){
 if(i32<0.0007200517575256526){
  if(i66<0.00016339246940333396){
   if(i8<1.0133452415466309){
    if(i64<-0.0013630576431751251){
     s0+=820.0;
     s1+=25.0;
    } else {
     s0+=64494.0;
     s1+=181.0;
    }
   } else {
    if(i3<1.0032464265823364){
     s0+=236.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=29.0;
    }
   }
  } else {
   if(i41<0.9952004551887512){
    s0+=9617.0;
   } else {
    if(i28<0.0002857315121218562){
     s0+=204.0;
     s1+=238.0;
    } else {
     s0+=4128.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i21<0.0009228305425494909){
   if(i15<0.00025698679382912815){
    if(i34<1.051046371459961){
     s0+=321.0;
    } else {
     s0+=407.0;
     s1+=3023.0;
    }
   } else {
    if(i27<0.0005485518486239016){
     s0+=2402.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=80.0;
    }
   }
  } else {
   if(i43<0.17457449436187744){
    if(i26<1.1403480768203735){
     s0+=28852.0;
     s1+=1134.0;
    } else {
     s0+=255.0;
     s1+=664.0;
    }
   } else {
    if(i26<1.121600866317749){
     s0+=216.0;
     s1+=137.0;
    } else {
     s0+=66.0;
     s1+=1080.0;
    }
   }
  }
 }
} else {
 if(i23<0.17187491059303284){
  if(i40<0.021286074072122574){
   if(i15<0.0002539613051339984){
    if(i0<5.46574592590332e-05){
     s0+=138.0;
     s1+=155.0;
    } else {
     s0+=33.0;
     s1+=2386.0;
    }
   } else {
    if(i36<1.170654058456421){
     s0+=3583.0;
     s1+=24.0;
    } else {
     s0+=13.0;
     s1+=52.0;
    }
   }
  } else {
   if(i15<0.0006906705675646663){
    if(i41<1.0109219551086426){
     s0+=242.0;
     s1+=1293.0;
    } else {
     s0+=2.0;
     s1+=1293.0;
    }
   } else {
    if(i8<0.9529499411582947){
     s1+=2.0;
    } else {
     s0+=74.0;
    }
   }
  }
 } else {
  if(i33<0.0017623440362513065){
   if(i71<0.12290328741073608){
    if(i50<-3.5871382806362817e-06){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    s0+=183.0;
   }
  } else {
   if(i15<0.0018005652818828821){
    if(i1<-8.711989357834682e-05){
     s1+=12009.0;
    } else {
     s0+=2.0;
     s1+=603.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i5<0.000569760799407959){
 if(i1<-8.081998385023326e-05){
  if(i9<0.9476344585418701){
   if(i19<0.05547779053449631){
    if(i77<0.10726097226142883){
     s0+=675.0;
     s1+=10.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i26<1.03448486328125){
     s0+=12.0;
    } else {
     s0+=10.0;
     s1+=133.0;
    }
   }
  } else {
   if(i42<0.0014660470187664032){
    if(i4<1.0007755756378174){
     s0+=103.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i64<-0.0002816739142872393){
     s0+=25.0;
     s1+=774.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i7<0.003651416627690196){
   if(i14<0.0010444426443427801){
    if(i33<0.0018039068672806025){
     s0+=65382.0;
     s1+=114.0;
    } else {
     s0+=3059.0;
     s1+=87.0;
    }
   } else {
    if(i15<0.0002515996457077563){
     s0+=8484.0;
     s1+=756.0;
    } else {
     s0+=10155.0;
     s1+=24.0;
    }
   }
  } else {
   if(i21<0.0009975278517231345){
    if(i57<0.9997749924659729){
     s0+=2590.0;
     s1+=23.0;
    } else {
     s0+=104.0;
     s1+=2260.0;
    }
   } else {
    if(i0<-5.662441253662109e-06){
     s0+=18971.0;
     s1+=409.0;
    } else {
     s0+=284.0;
     s1+=406.0;
    }
   }
  }
 }
} else {
 if(i7<0.004437560215592384){
  if(i7<0.002759080845862627){
   if(i0<0.00012558698654174805){
    if(i17<1.0247974395751953){
     s0+=3887.0;
     s1+=24.0;
    } else {
     s0+=80.0;
     s1+=30.0;
    }
   } else {
    if(i15<0.0006522606126964092){
     s0+=16.0;
     s1+=411.0;
    } else {
     s0+=131.0;
    }
   }
  } else {
   if(i22<1.1180615425109863){
    if(i42<0.0001669547928031534){
     s0+=179.0;
    } else {
     s1+=601.0;
    }
   } else {
    if(i21<0.0028335892129689455){
     s0+=622.0;
     s1+=6.0;
    } else {
     s0+=199.0;
     s1+=240.0;
    }
   }
  }
 } else {
  if(i20<0.9888955354690552){
   if(i37<1.0849794149398804){
    if(i0<2.300739288330078e-05){
     s0+=863.0;
     s1+=221.0;
    } else {
     s0+=298.0;
     s1+=562.0;
    }
   } else {
    if(i7<0.009285220876336098){
     s0+=85.0;
     s1+=60.0;
    } else {
     s0+=28.0;
     s1+=1310.0;
    }
   }
  } else {
   if(i29<-0.00022786855697631836){
    if(i14<0.00487092137336731){
     s0+=136.0;
     s1+=17.0;
    } else {
     s0+=22.0;
     s1+=244.0;
    }
   } else {
    if(i4<1.0006086826324463){
     s0+=72.0;
     s1+=3.0;
    } else {
     s0+=177.0;
     s1+=15429.0;
    }
   }
  }
 }
}
if(i17<1.017293930053711){
 if(i1<-8.23536392999813e-05){
  if(i23<0.04238376021385193){
   if(i47<1.3457020031637512e-06){
    if(i22<1.171745777130127){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i37<1.06502366065979){
     s0+=996.0;
     s1+=80.0;
    } else {
     s0+=42.0;
     s1+=83.0;
    }
   }
  } else {
   if(i27<0.002312758471816778){
    if(i21<0.0010737174889072776){
     s1+=366.0;
    } else {
     s0+=339.0;
    }
   } else {
    if(i5<0.000682830810546875){
     s0+=111.0;
     s1+=583.0;
    } else {
     s0+=66.0;
     s1+=2963.0;
    }
   }
  }
 } else {
  if(i8<1.0076289176940918){
   if(i16<1.0073580741882324){
    if(i4<0.9995086193084717){
     s0+=52414.0;
     s1+=321.0;
    } else {
     s0+=55532.0;
     s1+=3635.0;
    }
   } else {
    if(i2<0.0014099478721618652){
     s0+=303.0;
     s1+=223.0;
    } else {
     s0+=33.0;
     s1+=293.0;
    }
   }
  } else {
   if(i37<1.0550940036773682){
    if(i27<0.00102378916926682){
     s0+=200.0;
     s1+=1122.0;
    } else {
     s0+=710.0;
     s1+=15.0;
    }
   } else {
    if(i40<0.029203878715634346){
     s0+=4072.0;
     s1+=161.0;
    } else {
     s0+=236.0;
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i9<1.0207710266113281){
  if(i19<0.027663514018058777){
   if(i54<0.0005728784017264843){
    if(i28<0.001632079016417265){
     s1+=588.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i7<0.00533274793997407){
     s0+=960.0;
     s1+=85.0;
    } else {
     s0+=60.0;
     s1+=202.0;
    }
   }
  } else {
   if(i2<-0.0002219676971435547){
    if(i12<0.09334501624107361){
     s0+=40.0;
    } else {
     s0+=50.0;
     s1+=107.0;
    }
   } else {
    if(i23<0.07821860909461975){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=1144.0;
    }
   }
  }
 } else {
  if(i1<-3.4331380447838455e-05){
   if(i36<1.6811659336090088){
    if(i8<1.0208998918533325){
     s0+=45.0;
     s1+=708.0;
    } else {
     s0+=16.0;
     s1+=11272.0;
    }
   } else {
    s0+=37.0;
   }
  } else {
   if(i14<0.0035286755301058292){
    if(i38<1.1025261878967285){
     s0+=159.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    if(i32<0.00153666315600276){
     s1+=23.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i3<1.0038702487945557){
 if(i7<0.007542978972196579){
  if(i14<0.0015781274996697903){
   if(i62<-0.0007689893245697021){
    if(i1<-1.7450951418140903e-05){
     s0+=666.0;
     s1+=145.0;
    } else {
     s0+=12061.0;
     s1+=236.0;
    }
   } else {
    if(i25<1.0245282649993896){
     s0+=72871.0;
     s1+=320.0;
    } else {
     s0+=403.0;
     s1+=30.0;
    }
   }
  } else {
   if(i34<1.1164028644561768){
    if(i4<0.9992912411689758){
     s0+=2087.0;
     s1+=50.0;
    } else {
     s0+=1730.0;
     s1+=2315.0;
    }
   } else {
    if(i41<1.0015605688095093){
     s0+=16060.0;
     s1+=310.0;
    } else {
     s0+=904.0;
     s1+=286.0;
    }
   }
  }
 } else {
  if(i43<0.05595552921295166){
   if(i2<-0.00039136409759521484){
    if(i12<0.06485873460769653){
     s0+=3915.0;
     s1+=86.0;
    } else {
     s0+=63.0;
     s1+=28.0;
    }
   } else {
    if(i47<1.986809729714878e-05){
     s0+=20.0;
     s1+=340.0;
    } else {
     s0+=403.0;
     s1+=207.0;
    }
   }
  } else {
   if(i2<-0.0009399056434631348){
    if(i65<0.001833014190196991){
     s0+=482.0;
     s1+=96.0;
    } else {
     s0+=175.0;
     s1+=198.0;
    }
   } else {
    if(i26<1.1133897304534912){
     s0+=211.0;
     s1+=473.0;
    } else {
     s0+=23.0;
     s1+=1529.0;
    }
   }
  }
 }
} else {
 if(i21<0.0022595368791371584){
  if(i21<0.0009706164710223675){
   if(i22<1.0610902309417725){
    s0+=630.0;
   } else {
    s1+=2706.0;
   }
  } else {
   s0+=3343.0;
  }
 } else {
  if(i23<0.07181668281555176){
   if(i65<0.0009320862591266632){
    if(i48<1.0847523212432861){
     s0+=166.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i51<1.001317024230957){
     s0+=48.0;
     s1+=102.0;
    } else {
     s0+=12.0;
     s1+=169.0;
    }
   }
  } else {
   if(i8<0.9070309400558472){
    if(i45<0.3356199860572815){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i31<1.1342540979385376){
     s0+=67.0;
     s1+=1420.0;
    } else {
     s0+=5.0;
     s1+=13415.0;
    }
   }
  }
 }
}
if(i12<0.1866081953048706){
 if(i16<1.004512071609497){
  if(i6<1.901388168334961e-05){
   if(i24<8.231401443481445e-05){
    if(i20<1.0247046947479248){
     s0+=77817.0;
     s1+=850.0;
    } else {
     s0+=39.0;
     s1+=25.0;
    }
   } else {
    if(i0<-3.49879264831543e-05){
     s0+=12770.0;
     s1+=296.0;
    } else {
     s0+=16557.0;
     s1+=2641.0;
    }
   }
  } else {
   if(i8<1.009491205215454){
    if(i45<0.24855197966098785){
     s0+=3637.0;
     s1+=703.0;
    } else {
     s0+=30.0;
     s1+=212.0;
    }
   } else {
    if(i21<0.0009655589237809181){
     s0+=16.0;
     s1+=792.0;
    } else {
     s0+=347.0;
     s1+=379.0;
    }
   }
  }
 } else {
  if(i33<0.001954355277121067){
   if(i15<0.0002304987865500152){
    if(i34<1.1219847202301025){
     s0+=12.0;
     s1+=2116.0;
    } else {
     s0+=106.0;
     s1+=2.0;
    }
   } else {
    if(i78<-0.00603899359703064){
     s1+=2.0;
    } else {
     s0+=3364.0;
     s1+=2.0;
    }
   }
  } else {
   if(i29<-0.00028508901596069336){
    if(i30<0.05393105745315552){
     s0+=543.0;
     s1+=121.0;
    } else {
     s0+=221.0;
     s1+=386.0;
    }
   } else {
    if(i78<0.008450210094451904){
     s0+=109.0;
     s1+=2752.0;
    } else {
     s0+=27.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i21<0.002562624868005514){
  if(i46<-1.2283024261705577e-05){
   if(i34<1.1731728315353394){
    s0+=62.0;
   } else {
    if(i59<-5.053894710727036e-06){
     s0+=6.0;
     s1+=44.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i47<1.0704644409997854e-05){
    s0+=387.0;
   } else {
    if(i51<1.0007047653198242){
     s0+=96.0;
    } else {
     s0+=31.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i2<-0.000622093677520752){
   if(i1<-4.9869369831867516e-05){
    if(i27<0.004836014471948147){
     s0+=5.0;
    } else {
     s1+=224.0;
    }
   } else {
    if(i54<0.0060524470172822475){
     s0+=205.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i15<0.0001229798945132643){
    if(i47<3.266365092713386e-05){
     s0+=1.0;
     s1+=1306.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i46<-7.728229320491664e-06){
     s0+=12.0;
     s1+=11509.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i1<-0.00010307504999218509){
 if(i9<0.9381881952285767){
  if(i40<0.16928499937057495){
   if(i26<1.068504810333252){
    if(i49<0.0002027024165727198){
     s0+=385.0;
     s1+=6.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i37<1.0221832990646362){
     s0+=102.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=37.0;
    }
   }
  } else {
   if(i62<-0.020395219326019287){
    s0+=15.0;
   } else {
    if(i14<0.011745013296604156){
     s0+=11.0;
     s1+=100.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i27<0.002462439239025116){
   if(i59<-1.4911503967596218e-05){
    s0+=251.0;
   } else {
    s1+=478.0;
   }
  } else {
   if(i39<1.1528396606445312){
    if(i15<0.00031293349456973374){
     s0+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i37<1.0290398597717285){
     s0+=43.0;
     s1+=129.0;
    } else {
     s0+=22.0;
     s1+=14364.0;
    }
   }
  }
 }
} else {
 if(i17<1.0164439678192139){
  if(i47<-8.928149327402934e-06){
   if(i15<0.0006997378659434617){
    s1+=938.0;
   } else {
    s0+=178.0;
   }
  } else {
   if(i7<0.003661890747025609){
    if(i33<0.0005624371115118265){
     s0+=25597.0;
     s1+=879.0;
    } else {
     s0+=64492.0;
     s1+=204.0;
    }
   } else {
    if(i4<1.0001909732818604){
     s0+=18325.0;
     s1+=470.0;
    } else {
     s0+=5300.0;
     s1+=4068.0;
    }
   }
  }
 } else {
  if(i15<0.00034035430871881545){
   if(i0<2.3543834686279297e-05){
    if(i58<1.000431776046753){
     s0+=410.0;
     s1+=1.0;
    } else {
     s0+=329.0;
     s1+=295.0;
    }
   } else {
    if(i34<1.4586446285247803){
     s0+=56.0;
     s1+=2307.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i40<0.10359635949134827){
    if(i37<1.1540639400482178){
     s0+=906.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i23<0.19755354523658752){
     s0+=1.0;
    } else {
     s1+=61.0;
    }
   }
  }
 }
}
if(i33<0.0037029117811471224){
 if(i20<1.0146300792694092){
  if(i28<0.0010463498765602708){
   if(i17<1.008659839630127){
    if(i14<0.0014524990692734718){
     s0+=28754.0;
     s1+=456.0;
    } else {
     s0+=3344.0;
     s1+=2550.0;
    }
   } else {
    if(i46<-8.805908692011144e-06){
     s0+=147.0;
     s1+=1219.0;
    } else {
     s0+=255.0;
    }
   }
  } else {
   if(i41<1.0162161588668823){
    if(i14<0.0021492470987141132){
     s0+=62301.0;
     s1+=350.0;
    } else {
     s0+=5353.0;
     s1+=888.0;
    }
   } else {
    s1+=144.0;
   }
  }
 } else {
  if(i42<0.0009011722868308425){
   if(i44<5.7938144891522825e-05){
    if(i2<0.0006279945373535156){
     s0+=18.0;
     s1+=28.0;
    } else {
     s1+=1569.0;
    }
   } else {
    s0+=12.0;
   }
  } else {
   if(i33<0.001966852694749832){
    if(i15<0.00012321636313572526){
     s1+=32.0;
    } else {
     s0+=528.0;
     s1+=23.0;
    }
   } else {
    if(i15<0.0003533713170327246){
     s0+=63.0;
     s1+=1316.0;
    } else {
     s0+=42.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i41<0.9954018592834473){
  if(i5<0.0005853772163391113){
   if(i30<0.2280256748199463){
    if(i37<1.1185131072998047){
     s0+=13579.0;
     s1+=235.0;
    } else {
     s0+=309.0;
     s1+=164.0;
    }
   } else {
    if(i28<0.0052048880606889725){
     s0+=34.0;
     s1+=6.0;
    } else {
     s0+=24.0;
     s1+=299.0;
    }
   }
  } else {
   if(i12<0.11385190486907959){
    if(i11<0.9686239957809448){
     s0+=347.0;
     s1+=166.0;
    } else {
     s0+=369.0;
     s1+=10.0;
    }
   } else {
    if(i14<0.0039252787828445435){
     s0+=55.0;
     s1+=26.0;
    } else {
     s0+=43.0;
     s1+=656.0;
    }
   }
  }
 } else {
  if(i27<0.005299557000398636){
   if(i4<1.001504898071289){
    if(i14<0.0028422910254448652){
     s0+=453.0;
     s1+=7.0;
    } else {
     s0+=47.0;
     s1+=31.0;
    }
   } else {
    if(i7<0.0053033060394227505){
     s0+=150.0;
     s1+=10.0;
    } else {
     s0+=122.0;
     s1+=1558.0;
    }
   }
  } else {
   if(i17<0.9081936478614807){
    if(i40<0.11751622706651688){
     s0+=136.0;
     s1+=48.0;
    } else {
     s0+=26.0;
     s1+=143.0;
    }
   } else {
    if(i26<1.0767154693603516){
     s0+=83.0;
     s1+=254.0;
    } else {
     s0+=55.0;
     s1+=12016.0;
    }
   }
  }
 }
}
if(i5<0.000571906566619873){
 if(i30<0.23566213250160217){
  if(i32<0.0007220557890832424){
   if(i53<0.0020309416577219963){
    if(i28<0.000288573675788939){
     s0+=17501.0;
     s1+=311.0;
    } else {
     s0+=59859.0;
     s1+=53.0;
    }
   } else {
    if(i6<1.817941665649414e-05){
     s0+=2388.0;
     s1+=72.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  } else {
   if(i5<-5.97834587097168e-05){
    if(i55<1.0557482242584229){
     s0+=22834.0;
     s1+=589.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i39<1.1161795854568481){
     s0+=1512.0;
     s1+=2463.0;
    } else {
     s0+=5510.0;
     s1+=1060.0;
    }
   }
  }
 } else {
  if(i40<0.10418763756752014){
   if(i46<-1.2148917448939756e-05){
    if(i12<0.23458704352378845){
     s0+=8.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i29<-0.0005055367946624756){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=99.0;
    }
   }
  } else {
   if(i59<-2.649545422173105e-06){
    if(i0<-0.0001258552074432373){
     s0+=1.0;
     s1+=10.0;
    } else {
     s1+=462.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
} else {
 if(i27<0.002615139354020357){
  if(i9<1.015977144241333){
   if(i47<-1.1054221431550104e-05){
    if(i42<0.0011230428935959935){
     s0+=9.0;
     s1+=626.0;
    } else {
     s0+=175.0;
     s1+=26.0;
    }
   } else {
    if(i53<0.0007151261670514941){
     s0+=1491.0;
     s1+=897.0;
    } else {
     s0+=3063.0;
     s1+=151.0;
    }
   }
  } else {
   if(i22<1.1180615425109863){
    s1+=1395.0;
   } else {
    if(i40<0.03861796855926514){
     s0+=298.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i13<1.0138920545578003){
   if(i12<0.06819960474967957){
    if(i76<-0.06637188792228699){
     s0+=184.0;
     s1+=382.0;
    } else {
     s0+=885.0;
     s1+=90.0;
    }
   } else {
    if(i47<2.4357570509891957e-05){
     s0+=62.0;
     s1+=2307.0;
    } else {
     s0+=286.0;
     s1+=1176.0;
    }
   }
  } else {
   if(i23<0.09945359826087952){
    if(i1<-7.340677984757349e-05){
     s1+=86.0;
    } else {
     s0+=180.0;
     s1+=8.0;
    }
   } else {
    if(i18<-0.0020231008529663086){
     s0+=63.0;
     s1+=81.0;
    } else {
     s0+=24.0;
     s1+=12027.0;
    }
   }
  }
 }
}
if(i3<1.0037598609924316){
 if(i43<0.20448759198188782){
  if(i5<0.00032275915145874023){
   if(i19<0.006074696779251099){
    if(i29<-0.00010436773300170898){
     s0+=2642.0;
     s1+=194.0;
    } else {
     s0+=59266.0;
     s1+=180.0;
    }
   } else {
    if(i3<0.9978249073028564){
     s0+=35476.0;
     s1+=412.0;
    } else {
     s0+=7024.0;
     s1+=2246.0;
    }
   }
  } else {
   if(i44<1.5035177966638003e-05){
    if(i13<1.0118207931518555){
     s0+=4231.0;
     s1+=170.0;
    } else {
     s0+=200.0;
     s1+=91.0;
    }
   } else {
    if(i44<8.319482731167227e-05){
     s0+=564.0;
     s1+=1348.0;
    } else {
     s0+=2392.0;
     s1+=1145.0;
    }
   }
  }
 } else {
  if(i60<0.09397117793560028){
   if(i51<1.0007843971252441){
    if(i82<0.01996132731437683){
     s0+=110.0;
     s1+=7.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i73<0.006674349308013916){
     s0+=6.0;
     s1+=77.0;
    } else {
     s0+=26.0;
     s1+=22.0;
    }
   }
  } else {
   if(i32<0.0004949592985212803){
    s0+=36.0;
   } else {
    if(i4<1.0060923099517822){
     s0+=10.0;
     s1+=760.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007013810100033879){
  if(i28<0.002255180384963751){
   if(i34<1.116804838180542){
    if(i18<0.0003961324691772461){
     s0+=164.0;
     s1+=2.0;
    } else {
     s0+=31.0;
     s1+=2648.0;
    }
   } else {
    if(i21<0.002163882367312908){
     s0+=1286.0;
    } else {
     s0+=112.0;
     s1+=71.0;
    }
   }
  } else {
   if(i37<1.0641252994537354){
    if(i56<0.021019775420427322){
     s0+=113.0;
     s1+=97.0;
    } else {
     s0+=48.0;
     s1+=601.0;
    }
   } else {
    if(i33<0.0019617974758148193){
     s0+=9.0;
     s1+=18.0;
    } else {
     s0+=95.0;
     s1+=14346.0;
    }
   }
  }
 } else {
  if(i19<0.06917474418878555){
   s0+=2555.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i17<1.016261100769043){
 if(i16<1.0075784921646118){
  if(i30<0.22431331872940063){
   if(i14<0.0017366200918331742){
    if(i48<1.0093979835510254){
     s0+=9174.0;
     s1+=401.0;
    } else {
     s0+=81769.0;
     s1+=588.0;
    }
   } else {
    if(i4<1.0003502368927002){
     s0+=14672.0;
     s1+=633.0;
    } else {
     s0+=7792.0;
     s1+=4476.0;
    }
   }
  } else {
   if(i14<0.0024316960480064154){
    if(i10<1.0145994424819946){
     s0+=89.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i31<1.1223869323730469){
     s0+=9.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=631.0;
    }
   }
  }
 } else {
  if(i22<1.1767785549163818){
   if(i27<0.00121493567712605){
    s1+=633.0;
   } else {
    if(i26<1.0608985424041748){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=676.0;
     s1+=4.0;
    }
   }
  } else {
   if(i71<0.009791702032089233){
    if(i5<0.001473844051361084){
     s0+=153.0;
     s1+=124.0;
    } else {
     s0+=27.0;
     s1+=454.0;
    }
   } else {
    if(i23<0.07013607025146484){
     s0+=80.0;
     s1+=80.0;
    } else {
     s0+=44.0;
     s1+=1947.0;
    }
   }
  }
 }
} else {
 if(i1<-6.444031896535307e-05){
  if(i13<1.0226216316223145){
   if(i24<0.0011729896068572998){
    if(i19<0.010169534012675285){
     s0+=137.0;
     s1+=330.0;
    } else {
     s0+=31.0;
     s1+=983.0;
    }
   } else {
    if(i23<0.20555704832077026){
     s0+=78.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i6<-2.8908252716064453e-05){
    if(i48<1.1841895580291748){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i32<0.005079972557723522){
     s0+=44.0;
     s1+=12040.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i31<1.086911916732788){
   if(i58<1.00320303440094){
    if(i6<7.987022399902344e-06){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=608.0;
    }
   } else {
    s0+=60.0;
   }
  } else {
   if(i28<0.0019333027303218842){
    if(i54<0.0007745504844933748){
     s0+=39.0;
     s1+=47.0;
    } else {
     s0+=770.0;
     s1+=11.0;
    }
   } else {
    if(i22<1.2596347332000732){
     s0+=28.0;
     s1+=329.0;
    } else {
     s0+=596.0;
     s1+=152.0;
    }
   }
  }
 }
}
if(i23<0.1922590434551239){
 if(i3<1.0037307739257812){
  if(i7<0.0036593670956790447){
   if(i62<-0.000635296106338501){
    if(i1<-2.3448043066309765e-05){
     s0+=903.0;
     s1+=206.0;
    } else {
     s0+=15127.0;
     s1+=376.0;
    }
   } else {
    if(i45<0.08219139277935028){
     s0+=70731.0;
     s1+=344.0;
    } else {
     s0+=413.0;
     s1+=52.0;
    }
   }
  } else {
   if(i61<0.9995741844177246){
    if(i51<1.0025749206542969){
     s0+=16042.0;
     s1+=221.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i3<0.9982953071594238){
     s0+=6082.0;
     s1+=453.0;
    } else {
     s0+=1821.0;
     s1+=3513.0;
    }
   }
  }
 } else {
  if(i1<-7.154080958571285e-05){
   if(i19<0.0029993420466780663){
    if(i51<0.9997937679290771){
     s0+=184.0;
    } else {
     s0+=9.0;
     s1+=90.0;
    }
   } else {
    if(i50<-6.152826244942844e-06){
     s0+=165.0;
     s1+=2.0;
    } else {
     s0+=138.0;
     s1+=4113.0;
    }
   }
  } else {
   if(i7<0.0026264828629791737){
    if(i3<1.0084228515625){
     s0+=2837.0;
     s1+=2.0;
    } else {
     s0+=377.0;
     s1+=205.0;
    }
   } else {
    if(i15<0.00038251408841460943){
     s0+=115.0;
     s1+=1658.0;
    } else {
     s0+=580.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i1<-4.344295302871615e-05){
  if(i51<0.9982103109359741){
   s0+=7.0;
  } else {
   if(i46<-1.1503535461088177e-05){
    if(i36<1.1287440061569214){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=12891.0;
    }
   } else {
    if(i68<0.0007210259209387004){
     s1+=1.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i6<1.481175422668457e-05){
   if(i77<0.09354478120803833){
    if(i46<-6.576216946996283e-06){
     s0+=5.0;
     s1+=14.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i21<0.01205488108098507){
     s0+=649.0;
     s1+=14.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i60<0.06128498911857605){
    if(i42<0.002195150824263692){
     s0+=93.0;
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=49.0;
    }
   } else {
    if(i47<3.0440771297435276e-05){
     s0+=1.0;
     s1+=184.0;
    } else {
     s0+=18.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i4<1.0026230812072754){
 if(i1<-7.564615225419402e-05){
  if(i48<1.076188325881958){
   if(i19<0.05795556306838989){
    if(i39<1.0988214015960693){
     s0+=19.0;
     s1+=151.0;
    } else {
     s0+=1218.0;
     s1+=128.0;
    }
   } else {
    if(i10<0.9440411329269409){
     s0+=11.0;
    } else {
     s0+=6.0;
     s1+=172.0;
    }
   }
  } else {
   if(i40<0.0198738481849432){
    if(i10<1.0123589038848877){
     s0+=78.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i31<1.1281554698944092){
     s0+=22.0;
     s1+=59.0;
    } else {
     s1+=691.0;
    }
   }
  }
 } else {
  if(i9<1.0092573165893555){
   if(i4<0.9995404481887817){
    if(i43<0.26456382870674133){
     s0+=53590.0;
     s1+=298.0;
    } else {
     s0+=16.0;
     s1+=13.0;
    }
   } else {
    if(i21<0.0008800200885161757){
     s0+=13382.0;
     s1+=2638.0;
    } else {
     s0+=40786.0;
     s1+=604.0;
    }
   }
  } else {
   if(i5<0.0003269314765930176){
    if(i34<1.0905578136444092){
     s1+=55.0;
    } else {
     s0+=1228.0;
     s1+=88.0;
    }
   } else {
    if(i21<0.0009552011033520103){
     s1+=607.0;
    } else {
     s0+=164.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i23<0.1719616949558258){
  if(i2<0.0012359023094177246){
   if(i19<0.013993789441883564){
    if(i51<1.0009572505950928){
     s0+=921.0;
     s1+=428.0;
    } else {
     s0+=2807.0;
     s1+=84.0;
    }
   } else {
    if(i41<0.9996600151062012){
     s0+=971.0;
     s1+=546.0;
    } else {
     s0+=144.0;
     s1+=962.0;
    }
   }
  } else {
   if(i7<0.0028368490748107433){
    if(i15<0.0001743839238770306){
     s0+=3.0;
     s1+=375.0;
    } else {
     s0+=721.0;
    }
   } else {
    if(i50<-5.951220828137593e-06){
     s0+=120.0;
     s1+=2.0;
    } else {
     s0+=103.0;
     s1+=3396.0;
    }
   }
  }
 } else {
  if(i22<1.1935834884643555){
   if(i34<1.1177868843078613){
    s1+=15.0;
   } else {
    s0+=174.0;
   }
  } else {
   if(i1<-4.518266359809786e-05){
    if(i3<1.001582145690918){
     s0+=5.0;
     s1+=178.0;
    } else {
     s0+=2.0;
     s1+=12464.0;
    }
   } else {
    if(i7<0.006426931358873844){
     s0+=78.0;
    } else {
     s0+=19.0;
     s1+=265.0;
    }
   }
  }
 }
}
if(i6<2.2351741790771484e-05){
 if(i14<0.0017282022163271904){
  if(i32<0.0005818543722853065){
   if(i46<-1.896310095617082e-05){
    if(i13<1.0169727802276611){
     s1+=8.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i31<1.1354830265045166){
     s0+=69876.0;
     s1+=125.0;
    } else {
     s0+=1969.0;
     s1+=57.0;
    }
   }
  } else {
   if(i63<-0.00038889050483703613){
    if(i39<1.0776758193969727){
     s0+=421.0;
     s1+=365.0;
    } else {
     s0+=2138.0;
     s1+=73.0;
    }
   } else {
    if(i42<0.0021592797711491585){
     s0+=15148.0;
     s1+=199.0;
    } else {
     s0+=192.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i29<-0.0002117455005645752){
   if(i26<1.1230299472808838){
    if(i28<0.0010715560056269169){
     s0+=175.0;
     s1+=90.0;
    } else {
     s0+=14812.0;
     s1+=249.0;
    }
   } else {
    if(i45<0.09068915247917175){
     s0+=247.0;
     s1+=14.0;
    } else {
     s0+=95.0;
     s1+=520.0;
    }
   }
  } else {
   if(i40<0.019602812826633453){
    if(i53<0.0004984057741239667){
     s0+=2178.0;
     s1+=1012.0;
    } else {
     s0+=2285.0;
     s1+=49.0;
    }
   } else {
    if(i6<-1.8149614334106445e-05){
     s0+=223.0;
     s1+=11.0;
    } else {
     s0+=459.0;
     s1+=2248.0;
    }
   }
  }
 }
} else {
 if(i7<0.004266594536602497){
  if(i44<-2.4685599782969803e-05){
   if(i59<-1.8322491087019444e-05){
    if(i67<-1.6130499716382474e-05){
     s1+=69.0;
    } else {
     s0+=110.0;
    }
   } else {
    if(i50<-4.472991349757649e-06){
     s0+=27.0;
    } else {
     s0+=25.0;
     s1+=789.0;
    }
   }
  } else {
   if(i15<0.00023073804914020002){
    if(i34<1.0905885696411133){
     s1+=222.0;
    } else {
     s0+=316.0;
     s1+=84.0;
    }
   } else {
    s0+=4546.0;
   }
  }
 } else {
  if(i20<0.9637251496315002){
   if(i18<-0.003711611032485962){
    if(i34<1.600679874420166){
     s0+=582.0;
     s1+=151.0;
    } else {
     s0+=32.0;
     s1+=94.0;
    }
   } else {
    if(i12<0.023680269718170166){
     s0+=69.0;
     s1+=14.0;
    } else {
     s0+=13.0;
     s1+=229.0;
    }
   }
  } else {
   if(i2<-7.808208465576172e-06){
    if(i53<0.00697692483663559){
     s0+=371.0;
     s1+=91.0;
    } else {
     s0+=16.0;
     s1+=162.0;
    }
   } else {
    if(i51<0.9984945058822632){
     s0+=202.0;
    } else {
     s0+=411.0;
     s1+=16922.0;
    }
   }
  }
 }
}
if(i5<0.0005691647529602051){
 if(i30<0.23054799437522888){
  if(i13<1.0164942741394043){
   if(i27<0.0010622595436871052){
    if(i14<0.0016117937630042434){
     s0+=28494.0;
     s1+=584.0;
    } else {
     s0+=2181.0;
     s1+=2262.0;
    }
   } else {
    if(i1<-0.0001174766366602853){
     s0+=165.0;
     s1+=158.0;
    } else {
     s0+=77808.0;
     s1+=954.0;
    }
   }
  } else {
   if(i46<-1.0492644832993392e-05){
    if(i1<-3.131550329271704e-05){
     s0+=91.0;
     s1+=455.0;
    } else {
     s0+=148.0;
     s1+=11.0;
    }
   } else {
    if(i59<-3.786914248848916e-06){
     s0+=28.0;
     s1+=19.0;
    } else {
     s0+=496.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i19<0.03485899791121483){
   if(i1<-6.757455412298441e-05){
    s1+=12.0;
   } else {
    if(i51<1.0007545948028564){
     s0+=112.0;
    } else {
     s0+=25.0;
     s1+=12.0;
    }
   }
  } else {
   if(i1<7.40697214496322e-06){
    s1+=547.0;
   } else {
    s0+=8.0;
   }
  }
 }
} else {
 if(i39<1.1757044792175293){
  if(i27<0.0012707755668088794){
   if(i42<0.00017214474792126566){
    if(i63<0.0007312297821044922){
     s0+=1419.0;
     s1+=10.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i51<0.999675989151001){
     s0+=204.0;
     s1+=1.0;
    } else {
     s0+=157.0;
     s1+=2890.0;
    }
   }
  } else {
   if(i18<0.002384960651397705){
    if(i19<0.02930917963385582){
     s0+=3391.0;
     s1+=71.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i32<0.0028346809558570385){
     s1+=116.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i30<0.08305248618125916){
   if(i4<1.005784273147583){
    if(i78<-0.0020869970321655273){
     s0+=480.0;
     s1+=313.0;
    } else {
     s0+=669.0;
     s1+=24.0;
    }
   } else {
    if(i77<0.012433886528015137){
     s0+=42.0;
     s1+=300.0;
    } else {
     s0+=39.0;
     s1+=16.0;
    }
   }
  } else {
   if(i31<1.1076258420944214){
    if(i0<7.462501525878906e-05){
     s0+=224.0;
     s1+=94.0;
    } else {
     s0+=10.0;
     s1+=202.0;
    }
   } else {
    if(i0<-1.0073184967041016e-05){
     s0+=104.0;
     s1+=143.0;
    } else {
     s0+=93.0;
     s1+=15177.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i32<0.0007173882913775742){
  if(i22<1.0817922353744507){
   if(i0<-2.1696090698242188e-05){
    if(i34<1.0605735778808594){
     s0+=5703.0;
     s1+=40.0;
    } else {
     s0+=639.0;
     s1+=296.0;
    }
   } else {
    s0+=10029.0;
   }
  } else {
   if(i33<0.0018416903913021088){
    if(i19<0.032182589173316956){
     s0+=57729.0;
     s1+=24.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i46<-1.61069674504688e-05){
     s0+=1.0;
     s1+=58.0;
    } else {
     s0+=5766.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i26<1.1403480768203735){
   if(i5<-7.766485214233398e-05){
    if(i21<0.0002786917029879987){
     s0+=75.0;
     s1+=226.0;
    } else {
     s0+=22650.0;
     s1+=272.0;
    }
   } else {
    if(i47<2.435107307974249e-05){
     s0+=3726.0;
     s1+=3387.0;
    } else {
     s0+=4031.0;
     s1+=304.0;
    }
   }
  } else {
   if(i45<0.12167078256607056){
    if(i2<-0.00047579407691955566){
     s0+=138.0;
     s1+=9.0;
    } else {
     s0+=16.0;
     s1+=132.0;
    }
   } else {
    if(i19<0.02369188517332077){
     s0+=21.0;
    } else {
     s0+=7.0;
     s1+=861.0;
    }
   }
  }
 }
} else {
 if(i23<0.16841062903404236){
  if(i14<0.001871139626018703){
   if(i2<0.0018057823181152344){
    if(i11<1.0315786600112915){
     s0+=2917.0;
     s1+=89.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i18<0.0012215971946716309){
     s0+=13.0;
    } else {
     s0+=11.0;
     s1+=735.0;
    }
   }
  } else {
   if(i16<1.010080337524414){
    if(i24<0.0004547238349914551){
     s0+=295.0;
     s1+=2221.0;
    } else {
     s0+=2321.0;
     s1+=1195.0;
    }
   } else {
    if(i76<0.05885264277458191){
     s0+=96.0;
     s1+=1363.0;
    } else {
     s0+=35.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i1<-6.014350219629705e-05){
   if(i6<0.00026416778564453125){
    if(i27<0.0024037917610257864){
     s0+=28.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=12586.0;
    }
   } else {
    s0+=5.0;
   }
  } else {
   if(i28<0.0027893269434571266){
    if(i14<0.0025422810576856136){
     s0+=195.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   } else {
    if(i2<-5.328655242919922e-05){
     s0+=42.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=364.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i7<0.013782389461994171){
  if(i5<0.0003406405448913574){
   if(i21<0.0008659957675263286){
    if(i21<0.0005222266190685332){
     s0+=28347.0;
     s1+=1645.0;
    } else {
     s0+=1192.0;
     s1+=671.0;
    }
   } else {
    if(i31<1.122455358505249){
     s0+=68704.0;
     s1+=230.0;
    } else {
     s0+=5919.0;
     s1+=427.0;
    }
   }
  } else {
   if(i19<0.007870436646044254){
    if(i39<1.0921316146850586){
     s0+=2377.0;
     s1+=766.0;
    } else {
     s0+=5194.0;
     s1+=151.0;
    }
   } else {
    if(i0<4.231929779052734e-06){
     s0+=1345.0;
     s1+=260.0;
    } else {
     s0+=907.0;
     s1+=2537.0;
    }
   }
  }
 } else {
  if(i9<0.9341797828674316){
   if(i19<0.055921055376529694){
    if(i24<0.0009852051734924316){
     s0+=942.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i40<0.14649644494056702){
     s0+=88.0;
     s1+=52.0;
    } else {
     s0+=32.0;
     s1+=161.0;
    }
   }
  } else {
   if(i26<1.046175241470337){
    if(i6<5.0961971282958984e-05){
     s0+=72.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i70<7.72786825109506e-06){
     s0+=34.0;
     s1+=2709.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i36<1.1704325675964355){
  if(i74<0.026915252208709717){
   if(i15<0.0003236282791476697){
    if(i41<0.9994419813156128){
     s0+=144.0;
     s1+=22.0;
    } else {
     s0+=26.0;
     s1+=2116.0;
    }
   } else {
    if(i7<0.009222619235515594){
     s0+=329.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   }
  } else {
   if(i62<0.002000272274017334){
    if(i36<1.0953161716461182){
     s0+=1.0;
     s1+=58.0;
    } else {
     s0+=382.0;
     s1+=43.0;
    }
   } else {
    if(i0<-1.8477439880371094e-05){
     s0+=63.0;
    } else {
     s0+=48.0;
     s1+=306.0;
    }
   }
  }
 } else {
  if(i14<0.0013938674237579107){
   if(i46<-2.659717938513495e-05){
    s1+=273.0;
   } else {
    s0+=164.0;
   }
  } else {
   if(i12<0.07172179222106934){
    if(i73<-0.0025703907012939453){
     s1+=66.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.0034839597065001726){
     s0+=24.0;
     s1+=62.0;
    } else {
     s0+=7.0;
     s1+=11808.0;
    }
   }
  }
 }
}
if(i3<1.003865361213684){
 if(i1<-9.140255133388564e-05){
  if(i17<0.9085059762001038){
   if(i40<0.14513179659843445){
    if(i13<0.9120544195175171){
     s0+=576.0;
     s1+=36.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i69<0.00922172050923109){
     s0+=58.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=110.0;
    }
   }
  } else {
   if(i19<0.025265082716941833){
    if(i22<1.4328255653381348){
     s0+=212.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=13.0;
    }
   } else {
    if(i18<-0.00644955039024353){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=1352.0;
    }
   }
  }
 } else {
  if(i7<0.0036597372964024544){
   if(i9<0.9957923889160156){
    if(i27<0.0005796675686724484){
     s0+=4067.0;
     s1+=544.0;
    } else {
     s0+=14336.0;
     s1+=62.0;
    }
   } else {
    if(i13<1.0133044719696045){
     s0+=68087.0;
     s1+=360.0;
    } else {
     s0+=1408.0;
     s1+=81.0;
    }
   }
  } else {
   if(i21<0.0009975278517231345){
    if(i51<0.9997038841247559){
     s0+=2597.0;
     s1+=237.0;
    } else {
     s0+=131.0;
     s1+=2344.0;
    }
   } else {
    if(i5<-2.485513687133789e-05){
     s0+=17077.0;
     s1+=192.0;
    } else {
     s0+=3461.0;
     s1+=1274.0;
    }
   }
  }
 }
} else {
 if(i7<0.002878728788346052){
  if(i18<0.001914680004119873){
   if(i61<1.007192611694336){
    if(i24<0.0004936456680297852){
     s0+=256.0;
     s1+=45.0;
    } else {
     s0+=2878.0;
    }
   } else {
    if(i21<0.0008421338861808181){
     s1+=188.0;
    } else {
     s0+=349.0;
    }
   }
  } else {
   if(i67<0.00012744811829179525){
    s1+=236.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i24<0.001512378454208374){
   if(i27<0.0026820595376193523){
    if(i21<0.0010752036469057202){
     s0+=20.0;
     s1+=2423.0;
    } else {
     s0+=472.0;
     s1+=159.0;
    }
   } else {
    if(i18<-0.001844942569732666){
     s0+=81.0;
     s1+=459.0;
    } else {
     s0+=30.0;
     s1+=14109.0;
    }
   }
  } else {
   if(i36<1.1999495029449463){
    s0+=242.0;
   } else {
    s1+=197.0;
   }
  }
 }
}
if(i3<1.00374174118042){
 if(i1<-9.090729872696102e-05){
  if(i26<1.114527940750122){
   if(i12<0.08610501885414124){
    if(i73<-0.007501482963562012){
     s0+=64.0;
     s1+=29.0;
    } else {
     s0+=684.0;
     s1+=19.0;
    }
   } else {
    if(i4<0.998766303062439){
     s0+=38.0;
     s1+=4.0;
    } else {
     s0+=30.0;
     s1+=153.0;
    }
   }
  } else {
   if(i59<-2.1962550817988813e-05){
    if(i26<1.142315149307251){
     s0+=14.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i79<-0.02543923258781433){
     s0+=44.0;
     s1+=117.0;
    } else {
     s0+=7.0;
     s1+=1157.0;
    }
   }
  }
 } else {
  if(i9<1.0095206499099731){
   if(i7<0.0036262189969420433){
    if(i62<-0.0006757080554962158){
     s0+=15548.0;
     s1+=603.0;
    } else {
     s0+=70714.0;
     s1+=438.0;
    }
   } else {
    if(i5<-9.924173355102539e-05){
     s0+=19088.0;
     s1+=222.0;
    } else {
     s0+=4161.0;
     s1+=2961.0;
    }
   }
  } else {
   if(i44<1.58883813128341e-05){
    if(i22<1.099359154701233){
     s1+=161.0;
    } else {
     s0+=884.0;
     s1+=1.0;
    }
   } else {
    if(i58<1.0035898685455322){
     s0+=253.0;
     s1+=697.0;
    } else {
     s0+=387.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i7<0.004063720814883709){
  if(i21<0.0009705505217425525){
   if(i28<0.00021790582104586065){
    s0+=674.0;
   } else {
    s1+=721.0;
   }
  } else {
   if(i10<1.0163774490356445){
    if(i41<1.0015777349472046){
     s0+=9.0;
     s1+=25.0;
    } else {
     s0+=3387.0;
     s1+=8.0;
    }
   } else {
    s1+=266.0;
   }
  }
 } else {
  if(i39<1.1757044792175293){
   if(i42<0.0010088717099279165){
    if(i0<1.9371509552001953e-05){
     s0+=1.0;
    } else {
     s1+=2037.0;
    }
   } else {
    if(i15<0.0003612822911236435){
     s0+=36.0;
     s1+=162.0;
    } else {
     s0+=267.0;
    }
   }
  } else {
   if(i2<0.0010203719139099121){
    if(i37<1.0477371215820312){
     s0+=26.0;
     s1+=34.0;
    } else {
     s0+=33.0;
     s1+=1116.0;
    }
   } else {
    if(i9<1.003227949142456){
     s0+=46.0;
     s1+=1477.0;
    } else {
     s0+=3.0;
     s1+=12026.0;
    }
   }
  }
 }
}
if(i10<1.0125738382339478){
 if(i5<0.0003960728645324707){
  if(i24<7.361173629760742e-05){
   if(i21<0.015977846458554268){
    if(i14<0.0011606775224208832){
     s0+=59009.0;
     s1+=158.0;
    } else {
     s0+=18153.0;
     s1+=739.0;
    }
   } else {
    if(i15<0.00027424399740993977){
     s0+=24.0;
    } else {
     s1+=121.0;
    }
   }
  } else {
   if(i7<0.003659228328615427){
    if(i66<0.00017461029347032309){
     s0+=19711.0;
     s1+=140.0;
    } else {
     s0+=3950.0;
     s1+=351.0;
    }
   } else {
    if(i22<1.2004961967468262){
     s0+=390.0;
     s1+=1577.0;
    } else {
     s0+=5584.0;
     s1+=540.0;
    }
   }
  }
 } else {
  if(i40<0.02733137086033821){
   if(i21<0.0009693625615909696){
    if(i42<0.00017201280570589006){
     s0+=2231.0;
     s1+=138.0;
    } else {
     s0+=54.0;
     s1+=1552.0;
    }
   } else {
    if(i28<0.002368680667132139){
     s0+=4821.0;
     s1+=38.0;
    } else {
     s0+=521.0;
     s1+=222.0;
    }
   }
  } else {
   if(i49<-0.00015015348617453128){
    if(i20<0.9491925835609436){
     s0+=156.0;
     s1+=79.0;
    } else {
     s0+=446.0;
     s1+=4368.0;
    }
   } else {
    if(i67<-5.86916121392278e-06){
     s0+=68.0;
     s1+=371.0;
    } else {
     s0+=1244.0;
     s1+=660.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007050560088828206){
  if(i3<1.0032339096069336){
   if(i59<-3.640710929175839e-06){
    s1+=74.0;
   } else {
    s0+=54.0;
   }
  } else {
   if(i52<7.015466690063477e-05){
    if(i56<0.0001519501965958625){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=34.0;
     s1+=12959.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  s0+=301.0;
 }
}
if(i9<1.0146512985229492){
 if(i6<2.0205974578857422e-05){
  if(i24<8.600950241088867e-05){
   if(i19<0.09017260372638702){
    if(i26<1.1435775756835938){
     s0+=78270.0;
     s1+=883.0;
    } else {
     s0+=556.0;
     s1+=111.0;
    }
   } else {
    s1+=97.0;
   }
  } else {
   if(i39<1.092151403427124){
    if(i19<0.00923258624970913){
     s0+=4071.0;
     s1+=436.0;
    } else {
     s0+=266.0;
     s1+=1501.0;
    }
   } else {
    if(i28<0.0008105791639536619){
     s0+=82.0;
     s1+=199.0;
    } else {
     s0+=25558.0;
     s1+=1126.0;
    }
   }
  }
 } else {
  if(i19<0.016153374686837196){
   if(i68<0.0003959998139180243){
    if(i36<1.0452228784561157){
     s0+=1613.0;
    } else {
     s0+=448.0;
     s1+=1310.0;
    }
   } else {
    if(i27<0.0009572160197421908){
     s1+=94.0;
    } else {
     s0+=3434.0;
     s1+=236.0;
    }
   }
  } else {
   if(i44<0.00029586401069536805){
    if(i29<-0.0003091394901275635){
     s0+=460.0;
     s1+=675.0;
    } else {
     s0+=136.0;
     s1+=3092.0;
    }
   } else {
    if(i43<0.058055102825164795){
     s0+=443.0;
     s1+=109.0;
    } else {
     s0+=79.0;
     s1+=296.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007193446508608758){
  if(i3<1.0019127130508423){
   if(i14<0.0037876751739531755){
    if(i46<-1.0942539120151196e-05){
     s0+=151.0;
     s1+=52.0;
    } else {
     s0+=208.0;
     s1+=1.0;
    }
   } else {
    s1+=143.0;
   }
  } else {
   if(i7<0.0035455189645290375){
    if(i29<0.00022262334823608398){
     s0+=138.0;
     s1+=46.0;
    } else {
     s0+=16.0;
     s1+=410.0;
    }
   } else {
    if(i29<-0.0002117753028869629){
     s0+=6.0;
     s1+=56.0;
    } else {
     s0+=12.0;
     s1+=13531.0;
    }
   }
  }
 } else {
  s0+=509.0;
 }
}
if(i41<1.008302927017212){
 if(i1<-8.429199806414545e-05){
  if(i23<0.04128372669219971){
   if(i73<-0.0064885616302490234){
    if(i48<0.9701014757156372){
     s0+=163.0;
     s1+=79.0;
    } else {
     s0+=8.0;
     s1+=59.0;
    }
   } else {
    if(i73<-0.0050758421421051025){
     s0+=57.0;
     s1+=7.0;
    } else {
     s0+=691.0;
     s1+=2.0;
    }
   }
  } else {
   if(i19<0.015196887776255608){
    if(i82<0.0023475289344787598){
     s0+=206.0;
     s1+=20.0;
    } else {
     s0+=13.0;
     s1+=42.0;
    }
   } else {
    if(i23<0.07383033633232117){
     s0+=52.0;
     s1+=148.0;
    } else {
     s0+=42.0;
     s1+=3759.0;
    }
   }
  }
 } else {
  if(i32<0.0007220549741759896){
   if(i46<-1.894672095659189e-05){
    if(i3<1.0036859512329102){
     s0+=8.0;
     s1+=73.0;
    } else {
     s0+=177.0;
     s1+=27.0;
    }
   } else {
    if(i28<0.00028637927607633173){
     s0+=17585.0;
     s1+=337.0;
    } else {
     s0+=63181.0;
     s1+=153.0;
    }
   }
  } else {
   if(i28<0.0010884469375014305){
    if(i28<0.0002060420229099691){
     s0+=2463.0;
     s1+=3.0;
    } else {
     s0+=1657.0;
     s1+=3337.0;
    }
   } else {
    if(i12<0.19276508688926697){
     s0+=28060.0;
     s1+=1810.0;
    } else {
     s0+=203.0;
     s1+=730.0;
    }
   }
  }
 }
} else {
 if(i7<0.0035568824969232082){
  if(i0<0.00012236833572387695){
   if(i27<0.0008263542549684644){
    s1+=140.0;
   } else {
    s0+=1397.0;
   }
  } else {
   if(i10<1.0145037174224854){
    if(i50<-4.6660898078698665e-06){
     s0+=203.0;
    } else {
     s1+=205.0;
    }
   } else {
    if(i67<-3.5527673389879055e-06){
     s0+=5.0;
     s1+=369.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i50<-6.447518444474554e-06){
   s0+=155.0;
  } else {
   if(i34<1.1525434255599976){
    if(i53<0.0008683866471983492){
     s1+=1387.0;
    } else {
     s0+=134.0;
     s1+=59.0;
    }
   } else {
    if(i10<0.9744640588760376){
     s0+=1.0;
     s1+=10.0;
    } else {
     s1+=11638.0;
    }
   }
  }
 }
}
if(i4<1.002624750137329){
 if(i9<1.0114848613739014){
  if(i40<0.20541220903396606){
   if(i8<1.0135738849639893){
    if(i22<1.1162974834442139){
     s0+=29545.0;
     s1+=3146.0;
    } else {
     s0+=80023.0;
     s1+=923.0;
    }
   } else {
    if(i32<0.0007246495224535465){
     s0+=55.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=101.0;
    }
   }
  } else {
   if(i18<-0.007717609405517578){
    if(i67<1.2605481970240362e-05){
     s1+=2.0;
    } else {
     s0+=92.0;
    }
   } else {
    if(i31<1.1736817359924316){
     s0+=1.0;
    } else {
     s1+=297.0;
    }
   }
  }
 } else {
  if(i54<0.0006919474108144641){
   if(i22<1.1197539567947388){
    if(i58<0.999591052532196){
     s0+=1.0;
    } else {
     s1+=652.0;
    }
   } else {
    if(i44<5.063078424427658e-05){
     s0+=79.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   }
  } else {
   if(i7<0.006403369829058647){
    if(i14<0.0014593113446608186){
     s0+=420.0;
     s1+=10.0;
    } else {
     s0+=169.0;
     s1+=49.0;
    }
   } else {
    if(i57<0.9969416260719299){
     s0+=34.0;
    } else {
     s0+=20.0;
     s1+=486.0;
    }
   }
  }
 }
} else {
 if(i0<8.183717727661133e-05){
  if(i49<-0.00027541170129552484){
   if(i40<0.03606979176402092){
    if(i3<1.003157377243042){
     s0+=400.0;
     s1+=27.0;
    } else {
     s0+=207.0;
     s1+=448.0;
    }
   } else {
    if(i62<-0.013041198253631592){
     s0+=54.0;
     s1+=26.0;
    } else {
     s0+=198.0;
     s1+=2087.0;
    }
   }
  } else {
   if(i58<1.0026764869689941){
    if(i32<0.0010504284873604774){
     s0+=318.0;
     s1+=399.0;
    } else {
     s0+=597.0;
     s1+=184.0;
    }
   } else {
    if(i19<0.02412494644522667){
     s0+=3013.0;
     s1+=80.0;
    } else {
     s0+=274.0;
     s1+=336.0;
    }
   }
  }
 } else {
  if(i22<1.1767785549163818){
   if(i22<1.1180615425109863){
    s1+=1886.0;
   } else {
    s0+=998.0;
   }
  } else {
   if(i23<0.0006538331508636475){
    if(i22<1.4213035106658936){
     s0+=27.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   } else {
    if(i66<0.005026070401072502){
     s0+=42.0;
     s1+=13075.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i2<0.0009595155715942383){
 if(i26<1.1402404308319092){
  if(i17<1.0168390274047852){
   if(i34<1.0905578136444092){
    if(i40<0.008528552949428558){
     s0+=19231.0;
     s1+=322.0;
    } else {
     s0+=7471.0;
     s1+=2442.0;
    }
   } else {
    if(i1<-8.081998385023326e-05){
     s0+=1210.0;
     s1+=601.0;
    } else {
     s0+=84349.0;
     s1+=1661.0;
    }
   }
  } else {
   if(i31<1.086911916732788){
    if(i22<1.124192237854004){
     s0+=1.0;
     s1+=417.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i23<0.12410879135131836){
     s0+=403.0;
     s1+=43.0;
    } else {
     s0+=276.0;
     s1+=399.0;
    }
   }
  }
 } else {
  if(i7<0.00647768983617425){
   if(i31<1.1426570415496826){
    if(i57<1.0009328126907349){
     s0+=15.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i32<0.0017517373198643327){
     s0+=1057.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.01492568850517273){
    if(i19<0.057046860456466675){
     s0+=98.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=23.0;
    }
   } else {
    if(i19<0.01878894492983818){
     s0+=18.0;
     s1+=44.0;
    } else {
     s0+=25.0;
     s1+=1932.0;
    }
   }
  }
 }
} else {
 if(i21<0.0023709710221737623){
  if(i15<0.0002467811282258481){
   if(i34<1.126470685005188){
    if(i29<0.0009428858757019043){
     s1+=2383.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=20.0;
   }
  } else {
   s0+=1943.0;
  }
 } else {
  if(i18<-0.002297699451446533){
   if(i56<0.03408437222242355){
    if(i32<0.0020495273638516665){
     s0+=43.0;
     s1+=9.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i32<0.0014003303367644548){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=287.0;
    }
   }
  } else {
   if(i23<0.09364831447601318){
    if(i78<0.0030781924724578857){
     s0+=5.0;
     s1+=436.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i1<-9.604118531569839e-05){
     s1+=12650.0;
    } else {
     s0+=12.0;
     s1+=834.0;
    }
   }
  }
 }
}
if(i1<-0.00010638617095537484){
 if(i26<1.0370820760726929){
  if(i20<0.966580867767334){
   if(i12<0.10339200496673584){
    if(i59<-2.106597639794927e-05){
     s1+=4.0;
    } else {
     s0+=362.0;
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   s1+=19.0;
  }
 } else {
  if(i15<0.0007050560088828206){
   if(i30<0.018122375011444092){
    if(i63<-0.0036871731281280518){
     s0+=128.0;
     s1+=48.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i9<0.9250922799110413){
     s0+=34.0;
     s1+=56.0;
    } else {
     s0+=87.0;
     s1+=14759.0;
    }
   }
  } else {
   s0+=139.0;
  }
 }
} else {
 if(i18<0.0011793971061706543){
  if(i17<1.0182080268859863){
   if(i6<1.4007091522216797e-05){
    if(i32<0.0006678386125713587){
     s0+=74299.0;
     s1+=299.0;
    } else {
     s0+=29998.0;
     s1+=2783.0;
    }
   } else {
    if(i45<0.03643088787794113){
     s0+=6985.0;
     s1+=858.0;
    } else {
     s0+=1948.0;
     s1+=1792.0;
    }
   }
  } else {
   if(i4<1.000087022781372){
    if(i56<0.24618712067604065){
     s0+=346.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i7<0.004381655715405941){
     s0+=542.0;
     s1+=77.0;
    } else {
     s0+=38.0;
     s1+=1213.0;
    }
   }
  }
 } else {
  if(i57<1.0008394718170166){
   if(i36<1.089855670928955){
    if(i17<1.0081372261047363){
     s0+=48.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=716.0;
   }
  } else {
   if(i15<0.0003140218905173242){
    if(i4<1.0026037693023682){
     s0+=23.0;
     s1+=216.0;
    } else {
     s0+=1.0;
     s1+=2226.0;
    }
   } else {
    if(i19<0.014794070273637772){
     s0+=743.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i9<1.0115034580230713){
  if(i32<0.0007107785204425454){
   if(i46<-1.7985970771405846e-05){
    if(i33<0.0014937722589820623){
     s0+=7.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i32<0.0005479506216943264){
     s0+=69415.0;
     s1+=125.0;
    } else {
     s0+=9975.0;
     s1+=299.0;
    }
   }
  } else {
   if(i33<0.0010586754651740193){
    if(i5<-0.00023439526557922363){
     s0+=2581.0;
     s1+=47.0;
    } else {
     s0+=2188.0;
     s1+=2243.0;
    }
   } else {
    if(i26<1.1417081356048584){
     s0+=25725.0;
     s1+=1316.0;
    } else {
     s0+=128.0;
     s1+=560.0;
    }
   }
  }
 } else {
  if(i23<0.2112133800983429){
   if(i58<1.0002820491790771){
    if(i61<1.0011913776397705){
     s0+=354.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=31.0;
    }
   } else {
    if(i24<0.00045943260192871094){
     s0+=139.0;
     s1+=669.0;
    } else {
     s0+=179.0;
     s1+=3.0;
    }
   }
  } else {
   if(i39<1.7041046619415283){
    if(i40<0.08319076150655746){
     s0+=20.0;
     s1+=65.0;
    } else {
     s1+=304.0;
    }
   } else {
    s0+=10.0;
   }
  }
 }
} else {
 if(i7<0.004239299334585667){
  if(i15<0.00020573165966197848){
   if(i67<-1.739959998303675e-06){
    if(i59<-6.197334005264565e-05){
     s0+=23.0;
    } else {
     s0+=9.0;
     s1+=1030.0;
    }
   } else {
    if(i61<1.0037987232208252){
     s0+=7.0;
     s1+=36.0;
    } else {
     s0+=188.0;
    }
   }
  } else {
   if(i41<1.0193121433258057){
    if(i25<1.0410757064819336){
     s0+=4094.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    s1+=43.0;
   }
  }
 } else {
  if(i3<1.001570463180542){
   if(i68<0.00255567766726017){
    if(i7<0.012655477970838547){
     s0+=491.0;
     s1+=31.0;
    } else {
     s0+=250.0;
     s1+=144.0;
    }
   } else {
    if(i19<0.03207017481327057){
     s0+=120.0;
     s1+=44.0;
    } else {
     s0+=24.0;
     s1+=277.0;
    }
   }
  } else {
   if(i9<1.0156105756759644){
    if(i29<-0.0001971125602722168){
     s0+=383.0;
     s1+=1125.0;
    } else {
     s0+=242.0;
     s1+=3241.0;
    }
   } else {
    if(i51<0.9985630512237549){
     s0+=21.0;
    } else {
     s1+=12577.0;
    }
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i43<0.2057197093963623){
  if(i24<8.612871170043945e-05){
   if(i19<0.09060870110988617){
    if(i32<0.0006158249452710152){
     s0+=59214.0;
     s1+=128.0;
    } else {
     s0+=19885.0;
     s1+=872.0;
    }
   } else {
    s1+=35.0;
   }
  } else {
   if(i14<0.0016054627485573292){
    if(i13<1.0175496339797974){
     s0+=18307.0;
     s1+=283.0;
    } else {
     s0+=34.0;
     s1+=32.0;
    }
   } else {
    if(i2<-0.00042814016342163086){
     s0+=10191.0;
     s1+=427.0;
    } else {
     s0+=2681.0;
     s1+=3205.0;
    }
   }
  }
 } else {
  if(i7<0.006032458506524563){
   if(i61<1.002307653427124){
    s0+=139.0;
   } else {
    if(i58<1.0017305612564087){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  } else {
   if(i1<-1.4920478861313313e-06){
    if(i36<1.1245791912078857){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=659.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
} else {
 if(i10<1.0134257078170776){
  if(i27<0.002547050826251507){
   if(i52<9.357929229736328e-06){
    if(i51<1.0013091564178467){
     s0+=135.0;
     s1+=1102.0;
    } else {
     s0+=401.0;
     s1+=57.0;
    }
   } else {
    if(i24<0.0005030035972595215){
     s0+=84.0;
     s1+=158.0;
    } else {
     s0+=3327.0;
     s1+=14.0;
    }
   }
  } else {
   if(i12<0.09223860502243042){
    if(i4<1.0059752464294434){
     s0+=1353.0;
     s1+=403.0;
    } else {
     s0+=59.0;
     s1+=252.0;
    }
   } else {
    if(i31<1.1078033447265625){
     s0+=151.0;
     s1+=237.0;
    } else {
     s0+=258.0;
     s1+=4004.0;
    }
   }
  }
 } else {
  if(i19<0.005197648424655199){
   if(i47<-1.0508518244023435e-05){
    if(i18<0.0015129446983337402){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=490.0;
    }
   } else {
    if(i15<0.00030310015426948667){
     s1+=71.0;
    } else {
     s0+=112.0;
    }
   }
  } else {
   if(i50<-6.305464921751991e-06){
    s0+=27.0;
   } else {
    if(i6<7.033348083496094e-06){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=12020.0;
    }
   }
  }
 }
}
if(i1<-9.594250877853483e-05){
 if(i11<0.9215456247329712){
  if(i9<0.9287368059158325){
   if(i12<0.03154495358467102){
    if(i32<0.0031481990590691566){
     s0+=426.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=17.0;
    }
   } else {
    if(i72<0.04159027338027954){
     s0+=58.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   }
  } else {
   if(i64<-0.0005796179175376892){
    if(i62<-0.01332622766494751){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=456.0;
    }
   } else {
    if(i45<0.23653095960617065){
     s0+=28.0;
     s1+=20.0;
    } else {
     s1+=76.0;
    }
   }
  }
 } else {
  if(i67<1.769172740750946e-05){
   if(i32<0.0038933800533413887){
    if(i6<0.00023752450942993164){
     s0+=201.0;
     s1+=15042.0;
    } else {
     s0+=77.0;
    }
   } else {
    if(i67<-4.206590347166639e-07){
     s1+=6.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i37<1.1903448104858398){
    s0+=84.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i7<0.004074343480169773){
  if(i0<9.542703628540039e-05){
   if(i32<0.0005476578371599317){
    if(i32<0.0003902250318787992){
     s0+=55959.0;
     s1+=45.0;
    } else {
     s0+=11050.0;
     s1+=121.0;
    }
   } else {
    if(i39<1.0903575420379639){
     s0+=5636.0;
     s1+=1116.0;
    } else {
     s0+=21650.0;
     s1+=216.0;
    }
   }
  } else {
   if(i32<0.0008999396814033389){
    if(i39<1.096491813659668){
     s1+=524.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i22<1.0986645221710205){
     s1+=4.0;
    } else {
     s0+=618.0;
    }
   }
  }
 } else {
  if(i0<-1.901388168334961e-05){
   if(i23<0.20586535334587097){
    if(i26<1.1134045124053955){
     s0+=18289.0;
     s1+=539.0;
    } else {
     s0+=730.0;
     s1+=159.0;
    }
   } else {
    if(i60<0.05426820367574692){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=128.0;
    }
   }
  } else {
   if(i59<-3.4123584100598237e-06){
    if(i15<0.00035431055584922433){
     s0+=524.0;
     s1+=5573.0;
    } else {
     s0+=689.0;
     s1+=240.0;
    }
   } else {
    if(i58<1.0008127689361572){
     s0+=280.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 }
}
if(i14<0.0019527917029336095){
 if(i2<0.0017920732498168945){
  if(i0<9.697675704956055e-05){
   if(i39<1.0903575420379639){
    if(i14<0.0014691848773509264){
     s0+=25519.0;
     s1+=401.0;
    } else {
     s0+=1887.0;
     s1+=690.0;
    }
   } else {
    if(i24<0.00013011693954467773){
     s0+=55491.0;
     s1+=37.0;
    } else {
     s0+=13031.0;
     s1+=362.0;
    }
   }
  } else {
   if(i21<0.0007934834575280547){
    s1+=133.0;
   } else {
    s0+=361.0;
   }
  }
 } else {
  if(i67<-4.513828116614604e-06){
   if(i46<-2.893720375141129e-05){
    s1+=1004.0;
   } else {
    if(i26<1.0828373432159424){
     s1+=293.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   s0+=42.0;
  }
 }
} else {
 if(i26<1.1076223850250244){
  if(i2<-0.00025600194931030273){
   if(i21<0.0009957578731700778){
    if(i34<1.0728148221969604){
     s0+=252.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=350.0;
    }
   } else {
    if(i43<0.18746474385261536){
     s0+=15224.0;
     s1+=284.0;
    } else {
     s0+=29.0;
     s1+=35.0;
    }
   }
  } else {
   if(i4<1.000502109527588){
    if(i58<1.000270128250122){
     s0+=1104.0;
     s1+=18.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i15<0.0003896542184520513){
     s0+=728.0;
     s1+=5451.0;
    } else {
     s0+=1393.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i36<1.1714401245117188){
   if(i57<1.0018404722213745){
    if(i15<0.00021192819986026734){
     s0+=10.0;
     s1+=71.0;
    } else {
     s0+=585.0;
     s1+=11.0;
    }
   } else {
    if(i41<0.9997713565826416){
     s0+=280.0;
     s1+=124.0;
    } else {
     s0+=142.0;
     s1+=640.0;
    }
   }
  } else {
   if(i7<0.004633611999452114){
    if(i44<7.586897481814958e-06){
     s1+=68.0;
    } else {
     s0+=245.0;
     s1+=10.0;
    }
   } else {
    if(i25<0.8960627317428589){
     s0+=187.0;
     s1+=313.0;
    } else {
     s0+=153.0;
     s1+=13602.0;
    }
   }
  }
 }
}
if(i11<1.0168530941009521){
 if(i0<7.18235969543457e-05){
  if(i14<0.0017287707887589931){
   if(i62<-0.0006946921348571777){
    if(i32<0.0006569762481376529){
     s0+=12826.0;
     s1+=127.0;
    } else {
     s0+=1697.0;
     s1+=388.0;
    }
   } else {
    if(i60<0.06483883410692215){
     s0+=75149.0;
     s1+=372.0;
    } else {
     s0+=954.0;
     s1+=45.0;
    }
   }
  } else {
   if(i69<0.003681004047393799){
    if(i3<0.9986786842346191){
     s0+=16250.0;
     s1+=440.0;
    } else {
     s0+=4066.0;
     s1+=3025.0;
    }
   } else {
    if(i62<-0.01179453730583191){
     s0+=1369.0;
     s1+=209.0;
    } else {
     s0+=1114.0;
     s1+=1444.0;
    }
   }
  }
 } else {
  if(i22<1.1979892253875732){
   if(i52<1.0848045349121094e-05){
    if(i42<0.0011863617692142725){
     s0+=12.0;
     s1+=1089.0;
    } else {
     s0+=72.0;
     s1+=3.0;
    }
   } else {
    if(i15<0.00018219358753412962){
     s0+=8.0;
     s1+=39.0;
    } else {
     s0+=948.0;
     s1+=3.0;
    }
   }
  } else {
   if(i37<1.023472785949707){
    if(i4<1.0052400827407837){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=132.0;
    }
   } else {
    if(i37<1.0739543437957764){
     s0+=26.0;
     s1+=579.0;
    } else {
     s0+=5.0;
     s1+=1841.0;
    }
   }
  }
 }
} else {
 if(i46<-1.3362642675929237e-05){
  if(i12<0.1691018044948578){
   if(i7<0.004349910654127598){
    if(i33<0.0007618691888637841){
     s1+=321.0;
    } else {
     s0+=788.0;
     s1+=84.0;
    }
   } else {
    if(i63<-0.0004806816577911377){
     s0+=78.0;
     s1+=57.0;
    } else {
     s0+=122.0;
     s1+=2349.0;
    }
   }
  } else {
   if(i36<1.1289786100387573){
    s0+=18.0;
   } else {
    if(i27<0.0019061234779655933){
     s0+=25.0;
    } else {
     s0+=56.0;
     s1+=11732.0;
    }
   }
  }
 } else {
  if(i12<0.17536288499832153){
   if(i47<9.28238205233356e-06){
    if(i14<0.0024170582182705402){
     s0+=540.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i59<-3.129170181637164e-06){
     s0+=62.0;
     s1+=43.0;
    } else {
     s0+=151.0;
     s1+=1.0;
    }
   }
  } else {
   if(i58<1.0015498399734497){
    s0+=69.0;
   } else {
    if(i42<0.0018663813825696707){
     s0+=11.0;
    } else {
     s0+=9.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i11<1.0181405544281006){
 if(i12<0.19874083995819092){
  if(i1<-7.367770740529522e-05){
   if(i30<0.058738768100738525){
    if(i0<3.2007694244384766e-05){
     s0+=1298.0;
     s1+=122.0;
    } else {
     s0+=128.0;
     s1+=206.0;
    }
   } else {
    if(i33<0.0020719459280371666){
     s0+=471.0;
     s1+=553.0;
    } else {
     s0+=189.0;
     s1+=2302.0;
    }
   }
  } else {
   if(i5<0.00029343366622924805){
    if(i32<0.0006807364989072084){
     s0+=73435.0;
     s1+=327.0;
    } else {
     s0+=28264.0;
     s1+=2138.0;
    }
   } else {
    if(i15<0.00027288799174129963){
     s0+=3880.0;
     s1+=2580.0;
    } else {
     s0+=7114.0;
     s1+=373.0;
    }
   }
  }
 } else {
  if(i59<-4.7602225095033646e-06){
   if(i28<0.0023184646852314472){
    s0+=41.0;
   } else {
    if(i77<0.12821847200393677){
     s0+=6.0;
     s1+=1398.0;
    } else {
     s0+=51.0;
     s1+=165.0;
    }
   }
  } else {
   if(i19<0.037079110741615295){
    if(i14<0.0026165195740759373){
     s0+=237.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i48<1.4313111305236816){
     s1+=17.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i23<0.1486128568649292){
  if(i21<0.001023701741360128){
   if(i4<1.0002663135528564){
    s0+=51.0;
   } else {
    s1+=1179.0;
   }
  } else {
   if(i20<1.022112488746643){
    if(i49<-0.00030392385087907314){
     s0+=388.0;
     s1+=163.0;
    } else {
     s0+=631.0;
     s1+=24.0;
    }
   } else {
    if(i7<0.004749521613121033){
     s0+=66.0;
     s1+=38.0;
    } else {
     s0+=5.0;
     s1+=375.0;
    }
   }
  }
 } else {
  if(i27<0.0024118726141750813){
   if(i71<0.1108144223690033){
    if(i52<1.5735626220703125e-05){
     s0+=3.0;
     s1+=159.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i12<0.13727444410324097){
     s1+=5.0;
    } else {
     s0+=159.0;
     s1+=9.0;
    }
   }
  } else {
   if(i3<1.0019851922988892){
    if(i28<0.007380469236522913){
     s0+=145.0;
     s1+=161.0;
    } else {
     s0+=2.0;
     s1+=262.0;
    }
   } else {
    if(i17<0.9679994583129883){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=11712.0;
    }
   }
  }
 }
}
if(i2<0.000970005989074707){
 if(i23<0.2165270447731018){
  if(i8<1.0141115188598633){
   if(i14<0.0017285547219216824){
    if(i14<0.001301352633163333){
     s0+=81316.0;
     s1+=394.0;
    } else {
     s0+=9270.0;
     s1+=611.0;
    }
   } else {
    if(i6<-1.7881393432617188e-07){
     s0+=15081.0;
     s1+=483.0;
    } else {
     s0+=7688.0;
     s1+=4397.0;
    }
   }
  } else {
   if(i16<0.9987080097198486){
    if(i2<0.00025343894958496094){
     s0+=240.0;
     s1+=22.0;
    } else {
     s0+=10.0;
     s1+=30.0;
    }
   } else {
    if(i29<-0.00018680095672607422){
     s0+=117.0;
     s1+=5.0;
    } else {
     s0+=235.0;
     s1+=751.0;
    }
   }
  }
 } else {
  if(i46<-8.966469067672733e-06){
   if(i7<0.005060759373009205){
    if(i73<0.0068100690841674805){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i19<0.0071092164143919945){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=1459.0;
    }
   }
  } else {
   if(i77<0.11219292879104614){
    if(i35<1.044189453125){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=154.0;
   }
  }
 }
} else {
 if(i34<1.176405668258667){
  if(i42<0.0010737571865320206){
   if(i22<1.057311773300171){
    s0+=58.0;
   } else {
    if(i34<1.116804838180542){
     s0+=2.0;
     s1+=2361.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i39<1.0940982103347778){
    s1+=34.0;
   } else {
    s0+=1885.0;
   }
  }
 } else {
  if(i12<0.0032147467136383057){
   if(i68<0.002904574852436781){
    if(i57<1.003115177154541){
     s0+=8.0;
     s1+=4.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i75<0.00660495413467288){
     s0+=24.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i18<-0.002291262149810791){
    if(i23<0.10238343477249146){
     s0+=39.0;
     s1+=72.0;
    } else {
     s0+=2.0;
     s1+=206.0;
    }
   } else {
    if(i23<0.0969369113445282){
     s0+=18.0;
     s1+=428.0;
    } else {
     s0+=8.0;
     s1+=13323.0;
    }
   }
  }
 }
}
if(i2<0.0009602904319763184){
 if(i6<1.3649463653564453e-05){
  if(i17<1.0191272497177124){
   if(i23<0.25013983249664307){
    if(i58<1.0003724098205566){
     s0+=57295.0;
     s1+=539.0;
    } else {
     s0+=47522.0;
     s1+=2534.0;
    }
   } else {
    if(i46<-8.600436558481306e-06){
     s1+=147.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i1<-6.379498518072069e-05){
    if(i30<0.12511706352233887){
     s0+=14.0;
     s1+=10.0;
    } else {
     s0+=8.0;
     s1+=234.0;
    }
   } else {
    if(i7<0.005157867446541786){
     s0+=520.0;
     s1+=25.0;
    } else {
     s0+=5.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i19<0.009655127301812172){
   if(i29<0.00014722347259521484){
    if(i11<1.0317951440811157){
     s0+=6359.0;
     s1+=215.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i28<0.0007891204440966249){
     s0+=37.0;
     s1+=129.0;
    } else {
     s0+=179.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.9996740818023682){
    if(i23<0.13571837544441223){
     s0+=1303.0;
     s1+=145.0;
    } else {
     s0+=60.0;
     s1+=140.0;
    }
   } else {
    if(i15<0.0007069511339068413){
     s0+=931.0;
     s1+=3810.0;
    } else {
     s0+=141.0;
    }
   }
  }
 }
} else {
 if(i1<-7.332679524552077e-05){
  if(i22<1.1743842363357544){
   if(i42<0.0009661255753599107){
    s1+=1204.0;
   } else {
    if(i39<1.0940982103347778){
     s1+=6.0;
    } else {
     s0+=416.0;
    }
   }
  } else {
   if(i26<1.0260529518127441){
    if(i29<-4.649162292480469e-05){
     s0+=26.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i13<0.9063429832458496){
     s0+=12.0;
     s1+=30.0;
    } else {
     s0+=26.0;
     s1+=13339.0;
    }
   }
  }
 } else {
  if(i7<0.0028471844270825386){
   if(i15<0.00023222157324198633){
    s1+=257.0;
   } else {
    s0+=1359.0;
   }
  } else {
   if(i21<0.001089893514290452){
    if(i21<0.0002060876286122948){
     s0+=1.0;
    } else {
     s1+=914.0;
    }
   } else {
    if(i28<0.0019886770751327276){
     s0+=263.0;
    } else {
     s0+=40.0;
     s1+=585.0;
    }
   }
  }
 }
}
if(i5<0.0005886554718017578){
 if(i5<0.000292360782623291){
  if(i30<0.24089425802230835){
   if(i7<0.002795865759253502){
    if(i29<-5.3942203521728516e-05){
     s0+=22013.0;
     s1+=423.0;
    } else {
     s0+=52124.0;
     s1+=129.0;
    }
   } else {
    if(i29<-0.00020319223403930664){
     s0+=17779.0;
     s1+=421.0;
    } else {
     s0+=11794.0;
     s1+=1806.0;
    }
   }
  } else {
   if(i67<5.067708571004914e-06){
    if(i37<1.1361892223358154){
     s0+=4.0;
     s1+=23.0;
    } else {
     s0+=62.0;
     s1+=2.0;
    }
   } else {
    if(i19<0.03420299291610718){
     s0+=16.0;
    } else {
     s1+=252.0;
    }
   }
  }
 } else {
  if(i38<1.0242946147918701){
   if(i19<0.009541744366288185){
    if(i18<0.0009736418724060059){
     s0+=4703.0;
     s1+=117.0;
    } else {
     s0+=155.0;
     s1+=62.0;
    }
   } else {
    if(i23<0.04137292504310608){
     s0+=551.0;
     s1+=53.0;
    } else {
     s0+=621.0;
     s1+=1184.0;
    }
   }
  } else {
   if(i56<0.020041581243276596){
    if(i62<0.0013839006423950195){
     s0+=170.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=45.0;
    }
   } else {
    if(i24<0.0004553794860839844){
     s0+=22.0;
     s1+=488.0;
    } else {
     s0+=50.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i12<0.1584048569202423){
  if(i41<1.0136345624923706){
   if(i15<0.00031019761809147894){
    if(i2<0.0005597472190856934){
     s0+=733.0;
     s1+=320.0;
    } else {
     s0+=281.0;
     s1+=2797.0;
    }
   } else {
    if(i54<0.003131608013063669){
     s0+=4967.0;
     s1+=213.0;
    } else {
     s0+=256.0;
     s1+=508.0;
    }
   }
  } else {
   if(i57<1.0000077486038208){
    if(i38<0.9234312772750854){
     s1+=1.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i24<0.001275479793548584){
     s0+=2.0;
     s1+=1907.0;
    } else {
     s0+=38.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i21<0.002298691775649786){
   s0+=262.0;
  } else {
   if(i26<1.052932858467102){
    if(i22<1.3031277656555176){
     s0+=15.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i8<1.024235486984253){
     s0+=60.0;
     s1+=2715.0;
    } else {
     s0+=2.0;
     s1+=10575.0;
    }
   }
  }
 }
}
if(i3<1.0038622617721558){
 if(i7<0.00768423592671752){
  if(i7<0.003448149189352989){
   if(i28<0.0005491330521181226){
    if(i9<0.9958162903785706){
     s0+=3133.0;
     s1+=489.0;
    } else {
     s0+=21536.0;
     s1+=202.0;
    }
   } else {
    if(i26<1.1172146797180176){
     s0+=58930.0;
     s1+=130.0;
    } else {
     s0+=2501.0;
     s1+=114.0;
    }
   }
  } else {
   if(i27<0.001158344210125506){
    if(i34<1.0561506748199463){
     s0+=3025.0;
    } else {
     s0+=143.0;
     s1+=2194.0;
    }
   } else {
    if(i5<5.161762237548828e-05){
     s0+=16135.0;
     s1+=111.0;
    } else {
     s0+=1887.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i43<0.058022111654281616){
   if(i22<1.1180615425109863){
    if(i6<-1.3977289199829102e-05){
     s0+=31.0;
    } else {
     s1+=250.0;
    }
   } else {
    if(i7<0.02041323482990265){
     s0+=4018.0;
     s1+=246.0;
    } else {
     s0+=137.0;
     s1+=134.0;
    }
   }
  } else {
   if(i23<0.15800964832305908){
    if(i5<-3.910064697265625e-05){
     s0+=389.0;
     s1+=41.0;
    } else {
     s0+=309.0;
     s1+=747.0;
    }
   } else {
    if(i21<0.0023987023159861565){
     s0+=20.0;
     s1+=22.0;
    } else {
     s0+=50.0;
     s1+=1506.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007036929600872099){
  if(i33<0.001907446188852191){
   if(i18<0.0011370182037353516){
    if(i21<0.000944056489970535){
     s0+=129.0;
     s1+=401.0;
    } else {
     s0+=1319.0;
    }
   } else {
    if(i15<0.00025086558889597654){
     s0+=9.0;
     s1+=2207.0;
    } else {
     s0+=124.0;
    }
   }
  } else {
   if(i9<1.0139355659484863){
    if(i3<1.005295991897583){
     s0+=129.0;
     s1+=586.0;
    } else {
     s0+=39.0;
     s1+=2332.0;
    }
   } else {
    if(i27<0.006651417817920446){
     s0+=41.0;
     s1+=2526.0;
    } else {
     s1+=9632.0;
    }
   }
  }
 } else {
  if(i64<-0.00799139030277729){
   s1+=1.0;
  } else {
   s0+=2475.0;
  }
 }
}
if(i4<1.0026335716247559){
 if(i17<1.0163769721984863){
  if(i43<0.20620757341384888){
   if(i27<0.0010551821906119585){
    if(i23<0.05944499373435974){
     s0+=30333.0;
     s1+=1808.0;
    } else {
     s0+=1257.0;
     s1+=1268.0;
    }
   } else {
    if(i69<0.005877384915947914){
     s0+=76365.0;
     s1+=612.0;
    } else {
     s0+=1729.0;
     s1+=432.0;
    }
   }
  } else {
   if(i21<0.0025538443587720394){
    if(i46<-1.3139160728314891e-05){
     s1+=2.0;
    } else {
     s0+=51.0;
     s1+=3.0;
    }
   } else {
    if(i66<0.00020657179993577302){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i32<0.0007268291665241122){
   if(i46<-7.142771664803149e-06){
    if(i44<1.9135615730192512e-05){
     s0+=67.0;
    } else {
     s0+=11.0;
     s1+=11.0;
    }
   } else {
    s0+=453.0;
   }
  } else {
   if(i52<7.450580596923828e-06){
    if(i46<-6.631150426983368e-06){
     s0+=94.0;
     s1+=1068.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i27<0.001179348910227418){
     s1+=42.0;
    } else {
     s0+=135.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i2<0.0012420415878295898){
  if(i19<0.020177965983748436){
   if(i29<0.0001887679100036621){
    if(i14<0.0020738965831696987){
     s0+=2817.0;
     s1+=86.0;
    } else {
     s0+=1262.0;
     s1+=541.0;
    }
   } else {
    if(i15<0.0002933611976914108){
     s0+=30.0;
     s1+=189.0;
    } else {
     s0+=97.0;
    }
   }
  } else {
   if(i30<0.09012669324874878){
    if(i26<1.0759975910186768){
     s0+=416.0;
     s1+=65.0;
    } else {
     s0+=147.0;
     s1+=249.0;
    }
   } else {
    if(i3<1.0022958517074585){
     s0+=192.0;
     s1+=537.0;
    } else {
     s0+=68.0;
     s1+=1981.0;
    }
   }
  }
 } else {
  if(i50<-7.317813469853718e-06){
   s0+=477.0;
  } else {
   if(i1<-7.380759052466601e-05){
    if(i23<0.0003789663314819336){
     s0+=24.0;
     s1+=20.0;
    } else {
     s0+=32.0;
     s1+=13739.0;
    }
   } else {
    if(i27<0.0012794573558494449){
     s1+=831.0;
    } else {
     s0+=445.0;
     s1+=478.0;
    }
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i9<1.0112154483795166){
  if(i14<0.0016791331581771374){
   if(i63<-0.0004277229309082031){
    if(i26<1.0300796031951904){
     s0+=4399.0;
     s1+=352.0;
    } else {
     s0+=9418.0;
     s1+=68.0;
    }
   } else {
    if(i21<0.00027754143229685724){
     s0+=17202.0;
     s1+=282.0;
    } else {
     s0+=57010.0;
     s1+=118.0;
    }
   }
  } else {
   if(i0<-3.045797348022461e-05){
    if(i12<0.22811877727508545){
     s0+=17910.0;
     s1+=571.0;
    } else {
     s0+=5.0;
     s1+=151.0;
    }
   } else {
    if(i15<0.0002713846042752266){
     s0+=941.0;
     s1+=2577.0;
    } else {
     s0+=2666.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i3<1.001852035522461){
   if(i23<0.2716105282306671){
    if(i36<1.0887749195098877){
     s1+=44.0;
    } else {
     s0+=491.0;
     s1+=70.0;
    }
   } else {
    if(i46<-1.0774571819638368e-05){
     s1+=96.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i62<0.001661062240600586){
    if(i42<0.0007045399397611618){
     s1+=67.0;
    } else {
     s0+=172.0;
     s1+=22.0;
    }
   } else {
    if(i32<0.0006812433712184429){
     s0+=49.0;
    } else {
     s0+=68.0;
     s1+=934.0;
    }
   }
  }
 }
} else {
 if(i23<0.17141973972320557){
  if(i15<0.0003522391780279577){
   if(i18<0.0011044144630432129){
    if(i0<1.341104507446289e-05){
     s0+=862.0;
     s1+=120.0;
    } else {
     s0+=677.0;
     s1+=1515.0;
    }
   } else {
    if(i6<0.00023186206817626953){
     s0+=14.0;
     s1+=3418.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i1<-0.00010776300041470677){
    if(i10<0.9697532653808594){
     s0+=121.0;
     s1+=15.0;
    } else {
     s0+=69.0;
     s1+=492.0;
    }
   } else {
    if(i82<-0.0030602216720581055){
     s0+=362.0;
     s1+=166.0;
    } else {
     s0+=3586.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i27<0.002495890948921442){
   if(i7<0.005806018598377705){
    if(i9<1.0214805603027344){
     s0+=188.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i18<-0.002587258815765381){
    if(i32<0.0016628741286695004){
     s0+=50.0;
     s1+=21.0;
    } else {
     s0+=18.0;
     s1+=241.0;
    }
   } else {
    if(i0<-3.8683414459228516e-05){
     s0+=27.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=12748.0;
    }
   }
  }
 }
}
if(i7<0.007529303431510925){
 if(i41<1.0090837478637695){
  if(i14<0.0017194473184645176){
   if(i32<0.0005504807340912521){
    if(i2<0.0017864108085632324){
     s0+=70527.0;
     s1+=151.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i15<0.00025313219521194696){
     s0+=10382.0;
     s1+=820.0;
    } else {
     s0+=10083.0;
     s1+=29.0;
    }
   }
  } else {
   if(i21<0.0009021472651511431){
    if(i22<1.056142807006836){
     s0+=2157.0;
    } else {
     s0+=184.0;
     s1+=2689.0;
    }
   } else {
    if(i0<1.8477439880371094e-06){
     s0+=15079.0;
     s1+=246.0;
    } else {
     s0+=1336.0;
     s1+=571.0;
    }
   }
  }
 } else {
  if(i15<0.0004757441929541528){
   if(i61<1.0009552240371704){
    if(i9<1.0164605379104614){
     s0+=115.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i0<3.8623809814453125e-05){
     s0+=41.0;
     s1+=3.0;
    } else {
     s0+=52.0;
     s1+=2721.0;
    }
   }
  } else {
   if(i27<0.005544368177652359){
    s0+=1228.0;
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i3<0.9985483288764954){
  if(i23<0.165534108877182){
   if(i24<0.0008639693260192871){
    if(i26<1.116757869720459){
     s0+=4585.0;
     s1+=110.0;
    } else {
     s0+=133.0;
     s1+=139.0;
    }
   } else {
    if(i27<0.014288708567619324){
     s0+=51.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=29.0;
    }
   }
  } else {
   if(i54<0.0015186844393610954){
    if(i15<0.00041507030255161226){
     s0+=26.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i5<0.0016790032386779785){
     s0+=16.0;
     s1+=344.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i12<0.029407024383544922){
   if(i20<0.9887452125549316){
    if(i14<0.008047636598348618){
     s0+=318.0;
     s1+=60.0;
    } else {
     s0+=11.0;
     s1+=58.0;
    }
   } else {
    if(i57<0.9983546137809753){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=98.0;
    }
   }
  } else {
   if(i57<0.9970167875289917){
    s0+=39.0;
   } else {
    if(i26<1.0529714822769165){
     s0+=102.0;
     s1+=179.0;
    } else {
     s0+=148.0;
     s1+=15877.0;
    }
   }
  }
 }
}
if(i20<1.0142451524734497){
 if(i1<-9.091240644920617e-05){
  if(i63<-0.007081866264343262){
   if(i26<1.1232843399047852){
    if(i49<0.0002952448558062315){
     s0+=637.0;
     s1+=44.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i28<0.015474293380975723){
     s0+=29.0;
     s1+=41.0;
    } else {
     s0+=10.0;
     s1+=114.0;
    }
   }
  } else {
   if(i39<1.1497111320495605){
    if(i34<1.0958912372589111){
     s1+=46.0;
    } else {
     s0+=235.0;
     s1+=25.0;
    }
   } else {
    if(i7<0.01442614197731018){
     s0+=141.0;
     s1+=808.0;
    } else {
     s0+=3.0;
     s1+=2909.0;
    }
   }
  }
 } else {
  if(i5<0.00032275915145874023){
   if(i66<0.0001833255373639986){
    if(i19<0.0067800977267324924){
     s0+=61304.0;
     s1+=181.0;
    } else {
     s0+=17892.0;
     s1+=992.0;
    }
   } else {
    if(i18<-0.0012664794921875){
     s0+=20092.0;
     s1+=472.0;
    } else {
     s0+=4743.0;
     s1+=1311.0;
    }
   }
  } else {
   if(i32<0.0005050420295447111){
    if(i47<-1.2681883163168095e-05){
     s1+=115.0;
    } else {
     s0+=3342.0;
    }
   } else {
    if(i32<0.0011910886969417334){
     s0+=2198.0;
     s1+=2799.0;
    } else {
     s0+=4894.0;
     s1+=892.0;
    }
   }
  }
 }
} else {
 if(i2<0.00028192996978759766){
  if(i19<0.03442397713661194){
   if(i22<1.2564609050750732){
    if(i59<-2.8928261599503458e-06){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i27<0.0063649131916463375){
     s0+=344.0;
    } else {
     s0+=13.0;
     s1+=11.0;
    }
   }
  } else {
   if(i18<-0.0026140809059143066){
    if(i32<0.0022644097916781902){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=89.0;
   }
  }
 } else {
  if(i50<-7.27162478142418e-06){
   s0+=206.0;
  } else {
   if(i14<0.001207300927489996){
    if(i4<1.0054421424865723){
     s0+=161.0;
     s1+=4.0;
    } else {
     s0+=98.0;
     s1+=375.0;
    }
   } else {
    if(i7<0.002559478161856532){
     s0+=123.0;
     s1+=93.0;
    } else {
     s0+=110.0;
     s1+=12856.0;
    }
   }
  }
 }
}
if(i12<0.1875152289867401){
 if(i0<6.335973739624023e-05){
  if(i32<0.0007354532135650516){
   if(i33<0.0018095234408974648){
    if(i33<0.0002661575854290277){
     s0+=18065.0;
     s1+=345.0;
    } else {
     s0+=56884.0;
     s1+=17.0;
    }
   } else {
    if(i46<-1.5661946235923097e-05){
     s0+=48.0;
     s1+=147.0;
    } else {
     s0+=6222.0;
     s1+=122.0;
    }
   }
  } else {
   if(i6<-2.562999725341797e-06){
    if(i72<0.04594302922487259){
     s0+=21567.0;
     s1+=489.0;
    } else {
     s0+=20.0;
     s1+=24.0;
    }
   } else {
    if(i7<0.0036509225610643625){
     s0+=5596.0;
     s1+=308.0;
    } else {
     s0+=5041.0;
     s1+=4666.0;
    }
   }
  }
 } else {
  if(i52<1.2576580047607422e-05){
   if(i51<0.9996352195739746){
    if(i42<0.007857324555516243){
     s0+=169.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i10<0.9754695296287537){
     s0+=55.0;
     s1+=16.0;
    } else {
     s0+=246.0;
     s1+=4103.0;
    }
   }
  } else {
   if(i34<1.176405668258667){
    if(i28<0.0009191257995553315){
     s0+=51.0;
     s1+=18.0;
    } else {
     s0+=1606.0;
    }
   } else {
    if(i3<1.0070159435272217){
     s0+=33.0;
     s1+=117.0;
    } else {
     s0+=3.0;
     s1+=920.0;
    }
   }
  }
 }
} else {
 if(i46<-9.515722922515124e-06){
  if(i7<0.00309165520593524){
   if(i1<-5.1964554586447775e-05){
    if(i28<0.00208004261367023){
     s0+=4.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i77<0.1884530484676361){
     s0+=125.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i34<1.1580171585083008){
    s0+=10.0;
   } else {
    if(i29<-0.0005525946617126465){
     s0+=35.0;
     s1+=205.0;
    } else {
     s0+=31.0;
     s1+=12851.0;
    }
   }
  }
 } else {
  if(i58<1.0021671056747437){
   if(i69<0.007806400302797556){
    if(i65<0.001017752569168806){
     s0+=435.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   } else {
    if(i65<0.005176164209842682){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i75<-0.006979645695537329){
    if(i29<-0.0004399120807647705){
     s1+=10.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i53<0.008296373300254345){
     s0+=116.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i68<0.004606305155903101){
  if(i1<-7.645013829460368e-05){
   if(i43<0.05597999691963196){
    if(i10<0.9760055541992188){
     s0+=767.0;
     s1+=55.0;
    } else {
     s0+=162.0;
     s1+=158.0;
    }
   } else {
    if(i4<1.0005439519882202){
     s0+=134.0;
     s1+=74.0;
    } else {
     s0+=121.0;
     s1+=1131.0;
    }
   }
  } else {
   if(i11<1.0181578397750854){
    if(i28<0.0010563337709754705){
     s0+=32653.0;
     s1+=3151.0;
    } else {
     s0+=78681.0;
     s1+=1128.0;
    }
   } else {
    if(i57<1.0002529621124268){
     s0+=298.0;
    } else {
     s0+=619.0;
     s1+=725.0;
    }
   }
  }
 } else {
  if(i37<1.0852025747299194){
   if(i5<0.0011638402938842773){
    if(i75<-0.0010098936036229134){
     s0+=86.0;
     s1+=22.0;
    } else {
     s0+=700.0;
     s1+=19.0;
    }
   } else {
    if(i23<0.031864702701568604){
     s0+=6.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i7<0.005064855329692364){
    if(i3<1.0008636713027954){
     s0+=285.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   } else {
    if(i36<1.1713470220565796){
     s0+=24.0;
     s1+=34.0;
    } else {
     s0+=44.0;
     s1+=1178.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007058108458295465){
  if(i12<0.14896273612976074){
   if(i10<1.0104937553405762){
    if(i24<0.00010514259338378906){
     s0+=72.0;
     s1+=3.0;
    } else {
     s0+=259.0;
     s1+=1126.0;
    }
   } else {
    if(i50<-5.062230684416136e-06){
     s0+=45.0;
     s1+=15.0;
    } else {
     s0+=7.0;
     s1+=2890.0;
    }
   }
  } else {
   if(i34<1.1630253791809082){
    s0+=31.0;
   } else {
    if(i39<1.4731788635253906){
     s1+=10394.0;
    } else {
     s0+=1.0;
     s1+=1967.0;
    }
   }
  }
 } else {
  s0+=1759.0;
 }
}
if(i10<1.0100185871124268){
 if(i0<6.407499313354492e-05){
  if(i26<1.1402404308319092){
   if(i7<0.0037994813174009323){
    if(i32<0.000506730517372489){
     s0+=62707.0;
     s1+=121.0;
    } else {
     s0+=27085.0;
     s1+=1075.0;
    }
   } else {
    if(i38<1.0111167430877686){
     s0+=20608.0;
     s1+=2900.0;
    } else {
     s0+=2414.0;
     s1+=1495.0;
    }
   }
  } else {
   if(i21<0.0025632018223404884){
    if(i12<0.18311181664466858){
     s0+=796.0;
     s1+=1.0;
    } else {
     s0+=113.0;
     s1+=6.0;
    }
   } else {
    if(i36<1.1804778575897217){
     s0+=122.0;
     s1+=57.0;
    } else {
     s0+=156.0;
     s1+=1554.0;
    }
   }
  }
 } else {
  if(i22<1.1979892253875732){
   if(i59<-1.1397218258935027e-05){
    if(i33<0.0006746223079971969){
     s1+=1.0;
    } else {
     s0+=588.0;
    }
   } else {
    if(i36<1.0474592447280884){
     s0+=69.0;
    } else {
     s0+=67.0;
     s1+=318.0;
    }
   }
  } else {
   if(i22<1.629280686378479){
    if(i30<0.0347670316696167){
     s0+=44.0;
     s1+=42.0;
    } else {
     s0+=25.0;
     s1+=2196.0;
    }
   } else {
    if(i19<0.03506798297166824){
     s0+=67.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i7<0.003947752993553877){
  if(i15<0.00022373671527020633){
   if(i16<1.0009515285491943){
    if(i44<3.5243425372755155e-05){
     s0+=99.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i29<0.0009877681732177734){
     s1+=742.0;
    } else {
     s0+=11.0;
     s1+=46.0;
    }
   }
  } else {
   if(i10<1.0278557538986206){
    s0+=1384.0;
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i4<1.0015208721160889){
   if(i1<-0.00016157071513589472){
    s1+=145.0;
   } else {
    if(i51<1.000228762626648){
     s0+=84.0;
     s1+=4.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i50<-6.4661758187867235e-06){
    s0+=67.0;
   } else {
    if(i2<0.0011109709739685059){
     s0+=51.0;
     s1+=912.0;
    } else {
     s0+=12.0;
     s1+=12511.0;
    }
   }
  }
 }
}
if(i1<-0.0001031054780469276){
 if(i9<0.9359695315361023){
  if(i30<0.04665669798851013){
   if(i73<-0.014444023370742798){
    if(i30<0.0016644299030303955){
     s0+=11.0;
     s1+=11.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i72<0.051338184624910355){
     s0+=424.0;
     s1+=11.0;
    } else {
     s0+=12.0;
     s1+=7.0;
    }
   }
  } else {
   if(i53<0.010071003809571266){
    if(i57<1.0025055408477783){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i26<1.0618343353271484){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i70<5.490585863299202e-06){
   if(i46<-0.0001819253811845556){
    s0+=66.0;
   } else {
    if(i32<0.004009571857750416){
     s0+=114.0;
     s1+=14937.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   s0+=137.0;
  }
 }
} else {
 if(i6<2.0325183868408203e-05){
  if(i4<0.9995808601379395){
   if(i77<0.18521353602409363){
    if(i63<-0.0003164708614349365){
     s0+=14651.0;
     s1+=310.0;
    } else {
     s0+=40297.0;
     s1+=59.0;
    }
   } else {
    if(i32<0.0014969654148444533){
     s0+=42.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i14<0.0014038183726370335){
    if(i8<0.9948610067367554){
     s0+=3117.0;
     s1+=128.0;
    } else {
     s0+=41602.0;
     s1+=214.0;
    }
   } else {
    if(i28<0.0011110538616776466){
     s0+=904.0;
     s1+=2341.0;
    } else {
     s0+=8355.0;
     s1+=1214.0;
    }
   }
  }
 } else {
  if(i1<-5.966985190752894e-05){
   if(i24<0.00048410892486572266){
    if(i27<0.008721432648599148){
     s0+=63.0;
     s1+=1724.0;
    } else {
     s0+=90.0;
     s1+=23.0;
    }
   } else {
    if(i26<1.1407102346420288){
     s0+=995.0;
     s1+=493.0;
    } else {
     s0+=10.0;
     s1+=409.0;
    }
   }
  } else {
   if(i40<0.011408589780330658){
    if(i57<1.0029449462890625){
     s0+=2077.0;
     s1+=510.0;
    } else {
     s0+=1264.0;
     s1+=9.0;
    }
   } else {
    if(i22<1.116804838180542){
     s0+=4.0;
     s1+=838.0;
    } else {
     s0+=2205.0;
     s1+=971.0;
    }
   }
  }
 }
}
if(i7<0.007846960797905922){
 if(i3<1.007975459098816){
  if(i24<9.161233901977539e-05){
   if(i27<0.0008963134605437517){
    if(i8<0.995877742767334){
     s0+=5572.0;
     s1+=527.0;
    } else {
     s0+=21156.0;
     s1+=337.0;
    }
   } else {
    if(i31<1.1315784454345703){
     s0+=49214.0;
     s1+=16.0;
    } else {
     s0+=2615.0;
     s1+=65.0;
    }
   }
  } else {
   if(i39<1.0903575420379639){
    if(i22<1.0632507801055908){
     s0+=3778.0;
    } else {
     s0+=1887.0;
     s1+=2775.0;
    }
   } else {
    if(i7<0.0049616144970059395){
     s0+=24391.0;
     s1+=508.0;
    } else {
     s0+=2468.0;
     s1+=1094.0;
    }
   }
  }
 } else {
  if(i0<0.00012242794036865234){
   if(i6<5.322694778442383e-05){
    if(i20<1.0171139240264893){
     s0+=151.0;
     s1+=108.0;
    } else {
     s0+=1.0;
     s1+=139.0;
    }
   } else {
    if(i45<0.05558617413043976){
     s0+=374.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i32<0.0020172426011413336){
    if(i70<2.7800128918897826e-06){
     s0+=20.0;
     s1+=2079.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i39<1.3694318532943726){
     s0+=116.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i3<0.999399721622467){
  if(i25<1.0366028547286987){
   if(i71<0.10400810837745667){
    if(i73<-0.009923040866851807){
     s0+=81.0;
     s1+=99.0;
    } else {
     s0+=4167.0;
     s1+=300.0;
    }
   } else {
    if(i1<-5.800767394248396e-05){
     s0+=15.0;
     s1+=192.0;
    } else {
     s0+=79.0;
     s1+=50.0;
    }
   }
  } else {
   if(i37<1.1109259128570557){
    s0+=6.0;
   } else {
    s1+=102.0;
   }
  }
 } else {
  if(i12<0.02081221342086792){
   if(i3<1.0047814846038818){
    if(i26<1.274744987487793){
     s0+=212.0;
     s1+=44.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i15<9.138393215835094e-05){
     s0+=7.0;
     s1+=1.0;
    } else {
     s1+=61.0;
    }
   }
  } else {
   if(i70<6.0609218053286895e-06){
    if(i32<0.0040388694033026695){
     s0+=193.0;
     s1+=15772.0;
    } else {
     s0+=19.0;
    }
   } else {
    s0+=29.0;
   }
  }
 }
}
if(i4<1.0026252269744873){
 if(i60<0.5144110918045044){
  if(i7<0.0036593035329133272){
   if(i36<1.077322244644165){
    if(i66<0.00017831646255217493){
     s0+=23587.0;
     s1+=278.0;
    } else {
     s0+=2898.0;
     s1+=600.0;
    }
   } else {
    if(i65<0.001032416825182736){
     s0+=57284.0;
     s1+=101.0;
    } else {
     s0+=3731.0;
     s1+=98.0;
    }
   }
  } else {
   if(i0<-2.485513687133789e-05){
    if(i71<0.15665596723556519){
     s0+=20971.0;
     s1+=656.0;
    } else {
     s0+=148.0;
     s1+=123.0;
    }
   } else {
    if(i21<0.0010093704331666231){
     s0+=476.0;
     s1+=2632.0;
    } else {
     s0+=1206.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i20<0.9179918766021729){
   if(i26<1.186039924621582){
    s0+=69.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i10<0.9598990678787231){
    if(i12<0.0927543044090271){
     s0+=2.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=364.0;
   }
  }
 }
} else {
 if(i30<0.16764822602272034){
  if(i24<0.0005615949630737305){
   if(i10<1.0062503814697266){
    if(i46<-1.3636248695547692e-05){
     s0+=484.0;
     s1+=608.0;
    } else {
     s0+=232.0;
     s1+=9.0;
    }
   } else {
    if(i53<0.000927194079849869){
     s0+=1.0;
     s1+=2155.0;
    } else {
     s0+=55.0;
     s1+=801.0;
    }
   }
  } else {
   if(i33<0.0019358457066118717){
    s0+=3449.0;
   } else {
    if(i1<-8.188341598724946e-05){
     s0+=245.0;
     s1+=1550.0;
    } else {
     s0+=1137.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i33<0.0017861502710729837){
   if(i80<0.09203803539276123){
    if(i31<1.123201847076416){
     s1+=20.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i2<0.0023535490036010742){
     s0+=284.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i46<-2.591182419564575e-05){
    if(i2<-0.000291287899017334){
     s0+=30.0;
     s1+=91.0;
    } else {
     s0+=20.0;
     s1+=12654.0;
    }
   } else {
    if(i6<1.537799835205078e-05){
     s0+=34.0;
    } else {
     s0+=68.0;
     s1+=520.0;
    }
   }
  }
 }
}
if(i17<1.0177552700042725){
 if(i5<0.0005705952644348145){
  if(i1<-0.00012767651060130447){
   if(i64<-0.000663231941871345){
    if(i45<0.033448476344347){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=246.0;
    }
   } else {
    if(i39<1.5545397996902466){
     s0+=76.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=23.0;
    }
   }
  } else {
   if(i22<1.1162974834442139){
    if(i9<1.0067683458328247){
     s0+=28697.0;
     s1+=2488.0;
    } else {
     s0+=232.0;
     s1+=498.0;
    }
   } else {
    if(i23<0.23320958018302917){
     s0+=80145.0;
     s1+=948.0;
    } else {
     s0+=34.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i27<0.0027281001675873995){
   if(i15<0.0002617553109303117){
    if(i34<1.122192621231079){
     s0+=4.0;
     s1+=1705.0;
    } else {
     s0+=260.0;
     s1+=105.0;
    }
   } else {
    if(i1<4.980161975254305e-06){
     s0+=4343.0;
     s1+=22.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i26<1.0743656158447266){
    if(i41<1.0012558698654175){
     s0+=933.0;
     s1+=140.0;
    } else {
     s0+=151.0;
     s1+=252.0;
    }
   } else {
    if(i1<-8.008445729501545e-05){
     s0+=111.0;
     s1+=3112.0;
    } else {
     s0+=219.0;
     s1+=635.0;
    }
   }
  }
 }
} else {
 if(i46<-1.2195390809210949e-05){
  if(i10<1.0163447856903076){
   if(i40<0.02054935321211815){
    if(i27<0.0012534728739410639){
     s0+=2.0;
     s1+=468.0;
    } else {
     s0+=519.0;
     s1+=53.0;
    }
   } else {
    if(i7<0.005233694799244404){
     s0+=239.0;
     s1+=102.0;
    } else {
     s0+=39.0;
     s1+=2608.0;
    }
   }
  } else {
   s1+=10732.0;
  }
 } else {
  if(i7<0.005097950343042612){
   if(i21<0.004829477518796921){
    if(i59<-3.446840764809167e-06){
     s0+=56.0;
     s1+=7.0;
    } else {
     s0+=427.0;
    }
   } else {
    if(i82<0.00611799955368042){
     s0+=7.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i45<0.043557994067668915){
    s0+=8.0;
   } else {
    s1+=34.0;
   }
  }
 }
}
if(i9<1.0154330730438232){
 if(i6<1.8298625946044922e-05){
  if(i24<7.814168930053711e-05){
   if(i60<0.5615112781524658){
    if(i56<0.2068627029657364){
     s0+=77726.0;
     s1+=901.0;
    } else {
     s0+=22.0;
     s1+=46.0;
    }
   } else {
    if(i20<0.9189661741256714){
     s0+=33.0;
     s1+=3.0;
    } else {
     s1+=81.0;
    }
   }
  } else {
   if(i14<0.001452464610338211){
    if(i53<0.0019861781038343906){
     s0+=17564.0;
     s1+=129.0;
    } else {
     s0+=542.0;
     s1+=81.0;
    }
   } else {
    if(i22<1.116804838180542){
     s0+=954.0;
     s1+=1938.0;
    } else {
     s0+=11427.0;
     s1+=826.0;
    }
   }
  }
 } else {
  if(i15<0.000704434234648943){
   if(i2<0.0009782910346984863){
    if(i54<0.004791369196027517){
     s0+=3725.0;
     s1+=1549.0;
    } else {
     s0+=367.0;
     s1+=1174.0;
    }
   } else {
    if(i22<1.629280686378479){
     s0+=144.0;
     s1+=3339.0;
    } else {
     s0+=40.0;
     s1+=113.0;
    }
   }
  } else {
   s0+=3421.0;
  }
 }
} else {
 if(i8<1.0192968845367432){
  if(i46<-1.1652337889245246e-05){
   if(i36<1.1692326068878174){
    if(i34<1.1180615425109863){
     s0+=24.0;
     s1+=679.0;
    } else {
     s0+=427.0;
     s1+=116.0;
    }
   } else {
    if(i59<-3.4663494261621963e-06){
     s0+=4.0;
     s1+=739.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i29<-0.0003148317337036133){
    s1+=1.0;
   } else {
    s0+=156.0;
   }
  }
 } else {
  if(i59<-3.3283993161603576e-06){
   if(i50<-6.080845196265727e-06){
    if(i4<1.0085808038711548){
     s0+=34.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i7<0.002649433445185423){
     s0+=82.0;
     s1+=157.0;
    } else {
     s0+=12.0;
     s1+=12170.0;
    }
   }
  } else {
   if(i18<-0.00011169910430908203){
    s1+=2.0;
   } else {
    if(i58<1.0020360946655273){
     s0+=101.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i9<1.0154556035995483){
 if(i0<6.407499313354492e-05){
  if(i26<1.1546916961669922){
   if(i6<1.8298625946044922e-05){
    if(i34<1.0905578136444092){
     s0+=25176.0;
     s1+=2431.0;
    } else {
     s0+=82370.0;
     s1+=1277.0;
    }
   } else {
    if(i64<-0.0007816538563929498){
     s0+=891.0;
     s1+=885.0;
    } else {
     s0+=5115.0;
     s1+=909.0;
    }
   }
  } else {
   if(i14<0.001989389769732952){
    s0+=473.0;
   } else {
    if(i45<0.1551409363746643){
     s0+=130.0;
     s1+=39.0;
    } else {
     s0+=51.0;
     s1+=1099.0;
    }
   }
  }
 } else {
  if(i24<0.001161724328994751){
   if(i2<0.0013859868049621582){
    if(i7<0.003633808344602585){
     s0+=568.0;
     s1+=18.0;
    } else {
     s0+=191.0;
     s1+=988.0;
    }
   } else {
    if(i51<0.9998289346694946){
     s0+=76.0;
     s1+=52.0;
    } else {
     s0+=90.0;
     s1+=2547.0;
    }
   }
  } else {
   if(i66<0.0003646350814960897){
    s0+=792.0;
   } else {
    s1+=168.0;
   }
  }
 }
} else {
 if(i15<0.0007059713825583458){
  if(i1<-3.1602226954419166e-05){
   if(i39<1.6811659336090088){
    if(i30<0.07484322786331177){
     s0+=45.0;
     s1+=136.0;
    } else {
     s0+=118.0;
     s1+=13496.0;
    }
   } else {
    s0+=73.0;
   }
  } else {
   if(i62<0.003224968910217285){
    if(i67<6.648514272455941e-08){
     s1+=33.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i4<1.0038970708847046){
     s0+=215.0;
     s1+=5.0;
    } else {
     s0+=27.0;
     s1+=12.0;
    }
   }
  }
 } else {
  s0+=352.0;
 }
}
if(i4<1.0026333332061768){
 if(i23<0.22038736939430237){
  if(i8<1.0124268531799316){
   if(i58<1.00034761428833){
    if(i24<7.933378219604492e-05){
     s0+=53033.0;
     s1+=128.0;
    } else {
     s0+=6004.0;
     s1+=546.0;
    }
   } else {
    if(i28<0.0010465348605066538){
     s0+=9205.0;
     s1+=2447.0;
    } else {
     s0+=41799.0;
     s1+=994.0;
    }
   }
  } else {
   if(i7<0.005681229755282402){
    if(i42<0.0006120628677308559){
     s1+=18.0;
    } else {
     s0+=573.0;
     s1+=9.0;
    }
   } else {
    if(i51<0.999047040939331){
     s0+=30.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=645.0;
    }
   }
  }
 } else {
  if(i46<-1.1868146430060733e-05){
   if(i7<0.004594243131577969){
    if(i30<0.22707751393318176){
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    if(i31<1.1122510433197021){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=691.0;
    }
   }
  } else {
   if(i68<0.0008452615002170205){
    if(i3<0.9989007711410522){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=130.0;
   }
  }
 }
} else {
 if(i10<1.0134499073028564){
  if(i53<0.002354982541874051){
   if(i47<-8.942888598539867e-06){
    if(i48<1.0527207851409912){
     s0+=54.0;
     s1+=723.0;
    } else {
     s0+=189.0;
     s1+=129.0;
    }
   } else {
    if(i24<0.00043457746505737305){
     s0+=166.0;
     s1+=826.0;
    } else {
     s0+=4141.0;
     s1+=431.0;
    }
   }
  } else {
   if(i26<1.086484432220459){
    if(i26<1.0477511882781982){
     s0+=456.0;
     s1+=56.0;
    } else {
     s0+=355.0;
     s1+=306.0;
    }
   } else {
    if(i2<-5.221366882324219e-05){
     s0+=213.0;
     s1+=321.0;
    } else {
     s0+=219.0;
     s1+=3509.0;
    }
   }
  }
 } else {
  if(i10<1.0162644386291504){
   if(i15<0.0007963682292029262){
    if(i15<0.0004765255725942552){
     s0+=4.0;
     s1+=897.0;
    } else {
     s0+=11.0;
     s1+=51.0;
    }
   } else {
    s0+=152.0;
   }
  } else {
   if(i55<0.014794085174798965){
    if(i40<0.003353955689817667){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=130.0;
    }
   } else {
    s1+=11229.0;
   }
  }
 }
}
if(i20<1.0147995948791504){
 if(i0<6.407499313354492e-05){
  if(i1<-9.140255133388564e-05){
   if(i30<0.05053210258483887){
    if(i4<1.0031670331954956){
     s0+=547.0;
     s1+=26.0;
    } else {
     s0+=185.0;
     s1+=102.0;
    }
   } else {
    if(i9<0.9267503023147583){
     s0+=42.0;
     s1+=45.0;
    } else {
     s0+=50.0;
     s1+=1428.0;
    }
   }
  } else {
   if(i7<0.0037087686359882355){
    if(i22<1.1162974834442139){
     s0+=27442.0;
     s1+=914.0;
    } else {
     s0+=62389.0;
     s1+=227.0;
    }
   } else {
    if(i6<-3.635883331298828e-06){
     s0+=18199.0;
     s1+=227.0;
    } else {
     s0+=4724.0;
     s1+=4068.0;
    }
   }
  }
 } else {
  if(i28<0.0023778104223310947){
   if(i33<0.0009899220895022154){
    if(i36<1.0451856851577759){
     s0+=67.0;
    } else {
     s0+=3.0;
     s1+=1042.0;
    }
   } else {
    if(i39<1.1762815713882446){
     s0+=1554.0;
     s1+=7.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i22<1.629280686378479){
    if(i35<0.8982579708099365){
     s0+=50.0;
     s1+=225.0;
    } else {
     s0+=27.0;
     s1+=2657.0;
    }
   } else {
    if(i31<1.1873421669006348){
     s0+=60.0;
     s1+=3.0;
    } else {
     s1+=131.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007059713825583458){
  if(i59<-3.6661026570072863e-06){
   if(i29<-6.973743438720703e-05){
    if(i23<0.1902289092540741){
     s0+=144.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=154.0;
    }
   } else {
    if(i12<0.14339736104011536){
     s0+=127.0;
     s1+=2414.0;
    } else {
     s0+=17.0;
     s1+=10789.0;
    }
   }
  } else {
   if(i47<1.3569480870501138e-05){
    s0+=253.0;
   } else {
    s1+=10.0;
   }
  }
 } else {
  s0+=454.0;
 }
}
if(i6<2.4378299713134766e-05){
 if(i11<1.0181578397750854){
  if(i14<0.0017322666244581342){
   if(i37<1.0179111957550049){
    if(i44<3.827812906820327e-05){
     s0+=5735.0;
     s1+=12.0;
    } else {
     s0+=4759.0;
     s1+=444.0;
    }
   } else {
    if(i66<0.00017998844850808382){
     s0+=68639.0;
     s1+=242.0;
    } else {
     s0+=10157.0;
     s1+=247.0;
    }
   }
  } else {
   if(i6<-1.1324882507324219e-06){
    if(i23<0.23117956519126892){
     s0+=14601.0;
     s1+=376.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   } else {
    if(i32<0.0011344533413648605){
     s0+=676.0;
     s1+=2441.0;
    } else {
     s0+=5284.0;
     s1+=731.0;
    }
   }
  }
 } else {
  if(i7<0.005097781307995319){
   if(i44<2.5273897335864604e-05){
    if(i5<0.00047719478607177734){
     s0+=438.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   } else {
    if(i43<0.16119202971458435){
     s0+=231.0;
     s1+=23.0;
    } else {
     s0+=32.0;
     s1+=42.0;
    }
   }
  } else {
   if(i51<0.9982256889343262){
    s0+=21.0;
   } else {
    if(i64<-0.0011208404321223497){
     s0+=11.0;
     s1+=1037.0;
    } else {
     s0+=19.0;
     s1+=48.0;
    }
   }
  }
 }
} else {
 if(i2<0.0012757182121276855){
  if(i40<0.025870822370052338){
   if(i9<1.0179688930511475){
    if(i28<0.0010324653703719378){
     s0+=1092.0;
     s1+=511.0;
    } else {
     s0+=2510.0;
     s1+=71.0;
    }
   } else {
    if(i47<1.5782925402163528e-05){
     s0+=18.0;
     s1+=217.0;
    } else {
     s0+=47.0;
     s1+=11.0;
    }
   }
  } else {
   if(i43<0.062013447284698486){
    if(i2<-7.921457290649414e-05){
     s0+=529.0;
     s1+=68.0;
    } else {
     s0+=300.0;
     s1+=393.0;
    }
   } else {
    if(i14<0.005432634614408016){
     s0+=338.0;
     s1+=1055.0;
    } else {
     s0+=64.0;
     s1+=1360.0;
    }
   }
  }
 } else {
  if(i1<-8.408993016928434e-05){
   if(i15<0.0007145039271563292){
    if(i50<-1.9692775822477415e-05){
     s0+=16.0;
    } else {
     s0+=34.0;
     s1+=13310.0;
    }
   } else {
    s0+=190.0;
   }
  } else {
   if(i52<1.2814998626708984e-05){
    if(i57<1.0010250806808472){
     s0+=32.0;
    } else {
     s0+=96.0;
     s1+=1324.0;
    }
   } else {
    if(i21<0.0023672999814152718){
     s0+=687.0;
     s1+=19.0;
    } else {
     s0+=12.0;
     s1+=205.0;
    }
   }
  }
 }
}
if(i6<2.7954578399658203e-05){
 if(i8<1.0124268531799316){
  if(i23<0.22030922770500183){
   if(i39<1.0905030965805054){
    if(i14<0.0017270202515646815){
     s0+=26123.0;
     s1+=724.0;
    } else {
     s0+=2402.0;
     s1+=2145.0;
    }
   } else {
    if(i4<1.0026283264160156){
     s0+=80919.0;
     s1+=1237.0;
    } else {
     s0+=1311.0;
     s1+=474.0;
    }
   }
  } else {
   if(i21<0.0025550143327564){
    if(i10<1.0073933601379395){
     s0+=73.0;
     s1+=5.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i60<0.053955573588609695){
     s0+=29.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=450.0;
    }
   }
  }
 } else {
  if(i12<0.19245120882987976){
   if(i59<-4.072652700415347e-06){
    if(i2<-0.0005297064781188965){
     s0+=112.0;
    } else {
     s0+=131.0;
     s1+=684.0;
    }
   } else {
    if(i58<1.0021445751190186){
     s0+=390.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=26.0;
    }
   }
  } else {
   if(i37<1.1827008724212646){
    if(i77<0.1479918658733368){
     s0+=14.0;
     s1+=210.0;
    } else {
     s0+=33.0;
     s1+=10.0;
    }
   } else {
    s1+=365.0;
   }
  }
 }
} else {
 if(i0<8.374452590942383e-05){
  if(i33<0.001848368439823389){
   if(i52<7.569789886474609e-06){
    if(i21<0.0009407876641489565){
     s0+=41.0;
     s1+=367.0;
    } else {
     s0+=132.0;
    }
   } else {
    if(i49<-0.00033648667158558965){
     s0+=55.0;
     s1+=34.0;
    } else {
     s0+=2435.0;
     s1+=63.0;
    }
   }
  } else {
   if(i1<-8.032805635593832e-05){
    if(i12<0.040812134742736816){
     s0+=273.0;
     s1+=99.0;
    } else {
     s0+=78.0;
     s1+=1633.0;
    }
   } else {
    if(i31<1.1104938983917236){
     s0+=600.0;
     s1+=73.0;
    } else {
     s0+=331.0;
     s1+=617.0;
    }
   }
  }
 } else {
  if(i2<0.0021575093269348145){
   if(i64<-0.0009701435337774456){
    if(i50<-6.714607025060104e-06){
     s0+=73.0;
    } else {
     s0+=28.0;
     s1+=2182.0;
    }
   } else {
    if(i21<0.0010773739777505398){
     s1+=952.0;
    } else {
     s0+=963.0;
     s1+=525.0;
    }
   }
  } else {
   if(i67<7.567631655547302e-06){
    s1+=11362.0;
   } else {
    if(i48<1.1081833839416504){
     s0+=35.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
}
if(i1<-9.840834536589682e-05){
 if(i62<-0.012664943933486938){
  if(i26<1.0946877002716064){
   if(i49<0.00020020728698000312){
    if(i44<0.0002371251757722348){
     s1+=2.0;
    } else {
     s0+=495.0;
     s1+=8.0;
    }
   } else {
    if(i67<1.6743379092076793e-05){
     s1+=9.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i53<0.010190699249505997){
    if(i19<0.0826101154088974){
     s0+=30.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   } else {
    if(i7<0.019133102148771286){
     s0+=29.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i50<-6.419467354135122e-06){
   if(i4<1.0098085403442383){
    s0+=220.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i3<1.0003100633621216){
    if(i43<0.03668355941772461){
     s0+=64.0;
     s1+=43.0;
    } else {
     s0+=10.0;
     s1+=422.0;
    }
   } else {
    if(i37<1.0290398597717285){
     s0+=31.0;
     s1+=130.0;
    } else {
     s0+=19.0;
     s1+=14581.0;
    }
   }
  }
 }
} else {
 if(i0<6.490945816040039e-05){
  if(i17<1.0168521404266357){
   if(i24<9.959936141967773e-05){
    if(i36<1.0838289260864258){
     s0+=28589.0;
     s1+=924.0;
    } else {
     s0+=52679.0;
     s1+=158.0;
    }
   } else {
    if(i39<1.0917774438858032){
     s0+=5454.0;
     s1+=2095.0;
    } else {
     s0+=26272.0;
     s1+=1755.0;
    }
   }
  } else {
   if(i34<1.1176170110702515){
    if(i4<0.9999598264694214){
     s0+=18.0;
    } else {
     s0+=13.0;
     s1+=411.0;
    }
   } else {
    if(i32<0.0006266824784688652){
     s0+=572.0;
     s1+=29.0;
    } else {
     s0+=502.0;
     s1+=665.0;
    }
   }
  }
 } else {
  if(i28<0.0012292922474443913){
   if(i28<0.00019530199642758816){
    s0+=45.0;
   } else {
    if(i24<0.0012179017066955566){
     s0+=1.0;
     s1+=1610.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i33<0.001731817377731204){
    if(i42<0.0008560587884858251){
     s1+=66.0;
    } else {
     s0+=1523.0;
    }
   } else {
    if(i15<0.0004009896074421704){
     s0+=5.0;
     s1+=1042.0;
    } else {
     s0+=92.0;
     s1+=99.0;
    }
   }
  }
 }
}
if(i5<0.0005647540092468262){
 if(i5<0.00029343366622924805){
  if(i14<0.001373345497995615){
   if(i14<0.0008911527693271637){
    if(i42<0.001782100647687912){
     s0+=61873.0;
     s1+=93.0;
    } else {
     s0+=3036.0;
     s1+=53.0;
    }
   } else {
    if(i27<0.0002525999443605542){
     s0+=598.0;
     s1+=161.0;
    } else {
     s0+=13337.0;
     s1+=152.0;
    }
   }
  } else {
   if(i5<-9.053945541381836e-05){
    if(i53<0.03559998422861099){
     s0+=20783.0;
     s1+=542.0;
    } else {
     s0+=1.0;
     s1+=122.0;
    }
   } else {
    if(i39<1.095287561416626){
     s0+=213.0;
     s1+=1343.0;
    } else {
     s0+=4038.0;
     s1+=682.0;
    }
   }
  }
 } else {
  if(i44<1.3648686035594437e-05){
   if(i34<1.088989019393921){
    if(i15<0.0002512550272513181){
     s1+=270.0;
    } else {
     s0+=1090.0;
    }
   } else {
    if(i7<0.007847566157579422){
     s0+=3163.0;
     s1+=7.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i18<-0.0014671683311462402){
    if(i55<0.5575586557388306){
     s0+=1034.0;
     s1+=168.0;
    } else {
     s0+=25.0;
     s1+=100.0;
    }
   } else {
    if(i40<0.027592699974775314){
     s0+=462.0;
     s1+=298.0;
    } else {
     s0+=146.0;
     s1+=967.0;
    }
   }
  }
 }
} else {
 if(i36<1.1714401245117188){
  if(i52<1.1622905731201172e-05){
   if(i28<0.00022361279116012156){
    s0+=1031.0;
   } else {
    if(i15<0.00026064139092341065){
     s0+=346.0;
     s1+=3471.0;
    } else {
     s0+=788.0;
     s1+=226.0;
    }
   }
  } else {
   if(i28<0.0030807252041995525){
    if(i7<0.006353721953928471){
     s0+=3176.0;
     s1+=46.0;
    } else {
     s0+=79.0;
     s1+=48.0;
    }
   } else {
    if(i2<7.110834121704102e-05){
     s0+=146.0;
     s1+=6.0;
    } else {
     s0+=52.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i30<0.08309072256088257){
   if(i4<1.0059937238693237){
    if(i76<-0.07516738772392273){
     s0+=153.0;
     s1+=212.0;
    } else {
     s0+=651.0;
     s1+=75.0;
    }
   } else {
    if(i81<0.005373269319534302){
     s0+=18.0;
     s1+=311.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i12<0.12350466847419739){
    if(i3<1.0043396949768066){
     s0+=186.0;
     s1+=204.0;
    } else {
     s0+=25.0;
     s1+=697.0;
    }
   } else {
    if(i27<0.0026014773175120354){
     s0+=15.0;
    } else {
     s0+=103.0;
     s1+=13716.0;
    }
   }
  }
 }
}
if(i6<2.0205974578857422e-05){
 if(i7<0.0037303476128727198){
  if(i36<1.0764788389205933){
   if(i62<-0.0005748271942138672){
    if(i1<-6.804759323131293e-06){
     s0+=250.0;
     s1+=532.0;
    } else {
     s0+=2835.0;
     s1+=61.0;
    }
   } else {
    if(i44<4.2332154407631606e-05){
     s0+=19810.0;
     s1+=115.0;
    } else {
     s0+=2830.0;
     s1+=161.0;
    }
   }
  } else {
   if(i69<0.0025710626505315304){
    if(i31<1.1354830265045166){
     s0+=55957.0;
     s1+=44.0;
    } else {
     s0+=1383.0;
     s1+=64.0;
    }
   } else {
    if(i1<-3.8035112083889544e-05){
     s0+=101.0;
     s1+=27.0;
    } else {
     s0+=3887.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i25<1.0211706161499023){
   if(i29<-0.00020182132720947266){
    if(i7<0.019750643521547318){
     s0+=14256.0;
     s1+=517.0;
    } else {
     s0+=80.0;
     s1+=169.0;
    }
   } else {
    if(i58<1.0003468990325928){
     s0+=5442.0;
     s1+=267.0;
    } else {
     s0+=2057.0;
     s1+=1974.0;
    }
   }
  } else {
   if(i0<8.940696716308594e-07){
    if(i61<0.9996156096458435){
     s0+=210.0;
     s1+=27.0;
    } else {
     s0+=42.0;
     s1+=242.0;
    }
   } else {
    if(i51<0.9981014728546143){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=516.0;
    }
   }
  }
 }
} else {
 if(i12<0.1598033607006073){
  if(i36<1.0452228784561157){
   s0+=1658.0;
  } else {
   if(i15<0.0003102111513726413){
    if(i0<3.415346145629883e-05){
     s0+=912.0;
     s1+=394.0;
    } else {
     s0+=438.0;
     s1+=4863.0;
    }
   } else {
    if(i78<-0.004287600517272949){
     s0+=392.0;
     s1+=667.0;
    } else {
     s0+=3725.0;
     s1+=239.0;
    }
   }
  }
 } else {
  if(i39<1.1713988780975342){
   if(i71<0.10834968090057373){
    if(i33<0.0018340155947953463){
     s0+=5.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i19<0.0222886074334383){
     s0+=272.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i1<-2.3471708118449897e-05){
    if(i10<1.0011096000671387){
     s0+=25.0;
     s1+=1370.0;
    } else {
     s1+=11759.0;
    }
   } else {
    if(i0<-1.1444091796875e-05){
     s0+=44.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=118.0;
    }
   }
  }
 }
}
if(i4<1.00262451171875){
 if(i25<1.0237257480621338){
  if(i1<-0.00012767681619152427){
   if(i75<-0.002210176084190607){
    if(i7<0.011108994483947754){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=245.0;
    }
   } else {
    if(i72<0.02989908680319786){
     s0+=135.0;
     s1+=14.0;
    } else {
     s0+=19.0;
     s1+=63.0;
    }
   }
  } else {
   if(i32<0.0007218856480903924){
    if(i37<1.0178465843200684){
     s0+=9592.0;
     s1+=214.0;
    } else {
     s0+=69955.0;
     s1+=256.0;
    }
   } else {
    if(i3<0.9982894659042358){
     s0+=23089.0;
     s1+=549.0;
    } else {
     s0+=7184.0;
     s1+=3260.0;
    }
   }
  }
 } else {
  if(i4<1.0006589889526367){
   if(i33<0.013332858681678772){
    if(i14<0.0024796784855425358){
     s0+=393.0;
     s1+=1.0;
    } else {
     s0+=68.0;
     s1+=15.0;
    }
   } else {
    s1+=155.0;
   }
  } else {
   if(i6<7.450580596923828e-06){
    if(i46<-7.473900950571988e-06){
     s0+=62.0;
     s1+=87.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i24<0.0004494786262512207){
     s0+=39.0;
     s1+=760.0;
    } else {
     s0+=38.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i2<0.0012348294258117676){
  if(i14<0.0019328242633491755){
   if(i1<-5.797944322694093e-05){
    if(i39<1.1395916938781738){
     s0+=72.0;
    } else {
     s0+=3.0;
     s1+=102.0;
    }
   } else {
    if(i7<0.004446389619261026){
     s0+=2648.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i43<0.1200968325138092){
    if(i12<0.040922731161117554){
     s0+=878.0;
     s1+=228.0;
    } else {
     s0+=1075.0;
     s1+=1276.0;
    }
   } else {
    if(i36<1.170027494430542){
     s0+=249.0;
     s1+=286.0;
    } else {
     s0+=72.0;
     s1+=1737.0;
    }
   }
  }
 } else {
  if(i7<0.0027612345293164253){
   if(i24<0.0005347132682800293){
    s1+=335.0;
   } else {
    if(i39<1.1668702363967896){
     s0+=811.0;
    } else {
     s1+=84.0;
    }
   }
  } else {
   if(i45<0.018272068351507187){
    if(i47<-5.263905222818721e-06){
     s0+=33.0;
     s1+=902.0;
    } else {
     s0+=119.0;
     s1+=90.0;
    }
   } else {
    if(i23<0.02196362614631653){
     s0+=31.0;
     s1+=65.0;
    } else {
     s0+=73.0;
     s1+=13408.0;
    }
   }
  }
 }
}
if(i0<6.526708602905273e-05){
 if(i12<0.19869360327720642){
  if(i32<0.0007220549741759896){
   if(i11<1.0182666778564453){
    if(i14<0.0010079792700707912){
     s0+=69400.0;
     s1+=178.0;
    } else {
     s0+=10958.0;
     s1+=332.0;
    }
   } else {
    if(i1<-7.664234726689756e-05){
     s1+=46.0;
    } else {
     s0+=486.0;
     s1+=29.0;
    }
   }
  } else {
   if(i0<-2.485513687133789e-05){
    if(i66<0.00026934684137813747){
     s0+=15663.0;
     s1+=142.0;
    } else {
     s0+=10530.0;
     s1+=806.0;
    }
   } else {
    if(i57<1.0000195503234863){
     s0+=2897.0;
     s1+=118.0;
    } else {
     s0+=3994.0;
     s1+=4758.0;
    }
   }
  }
 } else {
  if(i1<-3.710929013323039e-05){
   if(i21<0.002140618395060301){
    s0+=14.0;
   } else {
    if(i14<0.0013079780619591475){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=1446.0;
    }
   }
  } else {
   if(i4<1.0017971992492676){
    if(i59<-3.7584813981084153e-06){
     s0+=59.0;
     s1+=11.0;
    } else {
     s0+=239.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.05471827834844589){
     s0+=41.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=116.0;
    }
   }
  }
 }
} else {
 if(i19<0.007720647845417261){
  if(i42<0.0010159143712371588){
   if(i34<1.0510683059692383){
    s0+=44.0;
   } else {
    if(i36<1.1209661960601807){
     s0+=3.0;
     s1+=1397.0;
    } else {
     s0+=23.0;
     s1+=7.0;
    }
   }
  } else {
   if(i39<1.176405668258667){
    if(i21<0.0007892159046605229){
     s1+=53.0;
    } else {
     s0+=1546.0;
    }
   } else {
    if(i25<0.9392915368080139){
     s0+=3.0;
    } else {
     s1+=494.0;
    }
   }
  }
 } else {
  if(i28<0.002370662521570921){
   if(i22<1.1180615425109863){
    s1+=909.0;
   } else {
    if(i66<0.00024604308418929577){
     s0+=272.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=33.0;
    }
   }
  } else {
   if(i23<0.03492620587348938){
    if(i76<-0.11412730813026428){
     s0+=7.0;
     s1+=71.0;
    } else {
     s0+=32.0;
     s1+=8.0;
    }
   } else {
    if(i23<0.09790387749671936){
     s0+=51.0;
     s1+=452.0;
    } else {
     s0+=20.0;
     s1+=13116.0;
    }
   }
  }
 }
}
if(i8<1.0136470794677734){
 if(i56<0.0882381871342659){
  if(i16<1.0087025165557861){
   if(i32<0.0007107793353497982){
    if(i11<1.018277645111084){
     s0+=79681.0;
     s1+=515.0;
    } else {
     s0+=314.0;
     s1+=56.0;
    }
   } else {
    if(i15<0.00021332512551452965){
     s0+=6091.0;
     s1+=3440.0;
    } else {
     s0+=26484.0;
     s1+=1804.0;
    }
   }
  } else {
   if(i50<-4.3704935706045944e-06){
    if(i28<0.00265059364028275){
     s0+=334.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i62<-0.013504981994628906){
     s0+=101.0;
     s1+=56.0;
    } else {
     s0+=87.0;
     s1+=1260.0;
    }
   }
  }
 } else {
  if(i6<9.715557098388672e-06){
   if(i26<1.1086031198501587){
    if(i0<-3.001093864440918e-05){
     s0+=1653.0;
     s1+=25.0;
    } else {
     s0+=24.0;
     s1+=23.0;
    }
   } else {
    if(i40<0.11089880764484406){
     s0+=133.0;
     s1+=16.0;
    } else {
     s0+=19.0;
     s1+=158.0;
    }
   }
  } else {
   if(i18<-0.004356324672698975){
    if(i40<0.17874693870544434){
     s0+=299.0;
     s1+=62.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i20<0.9471122026443481){
     s0+=19.0;
     s1+=34.0;
    } else {
     s0+=23.0;
     s1+=2304.0;
    }
   }
  }
 }
} else {
 if(i18<0.0019156932830810547){
  if(i1<-4.3453248508740216e-05){
   if(i50<-5.744514055550098e-06){
    if(i44<0.00015154782158788294){
     s0+=198.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i19<0.01119695883244276){
     s0+=301.0;
     s1+=404.0;
    } else {
     s0+=72.0;
     s1+=3106.0;
    }
   }
  } else {
   if(i7<0.003993778955191374){
    if(i34<1.0840704441070557){
     s1+=27.0;
    } else {
     s0+=541.0;
    }
   } else {
    if(i61<1.000163197517395){
     s0+=45.0;
    } else {
     s0+=18.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i18<0.0019910335540771484){
   if(i32<0.003039489034563303){
    s1+=165.0;
   } else {
    if(i64<-0.002428729087114334){
     s1+=4.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i15<0.002099760575219989){
    s1+=10559.0;
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i6<1.901388168334961e-05){
  if(i23<0.23286330699920654){
   if(i34<1.0905578136444092){
    if(i36<1.0545225143432617){
     s0+=22625.0;
     s1+=748.0;
    } else {
     s0+=2558.0;
     s1+=1575.0;
    }
   } else {
    if(i69<0.0043264045380055904){
     s0+=80451.0;
     s1+=970.0;
    } else {
     s0+=2717.0;
     s1+=429.0;
    }
   }
  } else {
   if(i67<5.286090981826419e-06){
    if(i14<0.0014959542313590646){
     s0+=75.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=75.0;
    }
   } else {
    if(i60<0.06813991069793701){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i56<0.04222743585705757){
   if(i65<0.0009443767485208809){
    if(i21<0.0009702016250230372){
     s0+=1738.0;
     s1+=1237.0;
    } else {
     s0+=4011.0;
     s1+=181.0;
    }
   } else {
    if(i29<-0.00033271312713623047){
     s0+=455.0;
     s1+=247.0;
    } else {
     s0+=242.0;
     s1+=767.0;
    }
   }
  } else {
   if(i41<0.9953835010528564){
    if(i12<0.08393076062202454){
     s0+=468.0;
     s1+=70.0;
    } else {
     s0+=66.0;
     s1+=469.0;
    }
   } else {
    if(i7<0.0024856978561729193){
     s0+=9.0;
    } else {
     s0+=80.0;
     s1+=2633.0;
    }
   }
  }
 }
} else {
 if(i3<1.0016400814056396){
  if(i21<0.007539649028331041){
   if(i39<1.0887749195098877){
    s1+=45.0;
   } else {
    if(i4<1.0002328157424927){
     s0+=172.0;
    } else {
     s0+=159.0;
     s1+=50.0;
    }
   }
  } else {
   if(i42<0.0038654515519738197){
    s0+=2.0;
   } else {
    s1+=125.0;
   }
  }
 } else {
  if(i23<0.15380635857582092){
   if(i27<0.0012500641169026494){
    if(i51<1.0009739398956299){
     s0+=3.0;
     s1+=1591.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i41<1.014045238494873){
     s0+=720.0;
     s1+=359.0;
    } else {
     s0+=4.0;
     s1+=583.0;
    }
   }
  } else {
   if(i14<0.0007722944719716907){
    if(i16<1.0120437145233154){
     s0+=39.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i15<0.0008640842279419303){
     s0+=5.0;
     s1+=11709.0;
    } else {
     s0+=52.0;
    }
   }
  }
 }
}
if(i10<1.0125844478607178){
 if(i5<0.0004341006278991699){
  if(i37<1.121600866317749){
   if(i40<0.01094459556043148){
    if(i10<1.0066125392913818){
     s0+=61966.0;
     s1+=386.0;
    } else {
     s0+=386.0;
     s1+=57.0;
    }
   } else {
    if(i4<0.9997398853302002){
     s0+=28258.0;
     s1+=389.0;
    } else {
     s0+=15375.0;
     s1+=2606.0;
    }
   }
  } else {
   if(i7<0.006765664555132389){
    if(i58<1.001657247543335){
     s0+=1232.0;
     s1+=9.0;
    } else {
     s0+=269.0;
     s1+=78.0;
    }
   } else {
    if(i2<-0.002591043710708618){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=513.0;
    }
   }
  }
 } else {
  if(i12<0.1709456741809845){
   if(i40<0.021614041179418564){
    if(i22<1.116804838180542){
     s0+=2276.0;
     s1+=1432.0;
    } else {
     s0+=4164.0;
     s1+=127.0;
    }
   } else {
    if(i0<3.0994415283203125e-06){
     s0+=1268.0;
     s1+=236.0;
    } else {
     s0+=736.0;
     s1+=2291.0;
    }
   }
  } else {
   if(i31<1.1182329654693604){
    if(i19<0.022753994911909103){
     s0+=104.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=142.0;
    }
   } else {
    if(i22<1.1843671798706055){
     s0+=71.0;
    } else {
     s0+=44.0;
     s1+=2777.0;
    }
   }
  }
 }
} else {
 if(i27<0.0021062088198959827){
  if(i54<0.0007972397143021226){
   if(i43<0.1128929853439331){
    if(i5<0.0019333958625793457){
     s0+=7.0;
     s1+=1367.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i76<0.04826706647872925){
     s0+=25.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i27<0.0011689006350934505){
    s1+=58.0;
   } else {
    s0+=351.0;
   }
  }
 } else {
  if(i39<1.7041046619415283){
   if(i28<0.0022459684405475855){
    s0+=3.0;
   } else {
    if(i57<0.999462366104126){
     s0+=10.0;
     s1+=199.0;
    } else {
     s0+=15.0;
     s1+=11593.0;
    }
   }
  } else {
   s0+=16.0;
  }
 }
}
if(i13<1.0165542364120483){
 if(i14<0.0018177322344854474){
  if(i47<-1.3024269719608128e-05){
   if(i52<2.485513687133789e-05){
    if(i63<0.0005105137825012207){
     s1+=400.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   } else {
    s0+=50.0;
   }
  } else {
   if(i14<0.0013657734962180257){
    if(i32<0.0004862488422077149){
     s0+=64858.0;
     s1+=92.0;
    } else {
     s0+=18657.0;
     s1+=335.0;
    }
   } else {
    if(i5<-0.0002276301383972168){
     s0+=6898.0;
     s1+=32.0;
    } else {
     s0+=2528.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i16<1.0025136470794678){
   if(i2<-0.000561833381652832){
    if(i71<0.19747382402420044){
     s0+=15908.0;
     s1+=569.0;
    } else {
     s0+=14.0;
     s1+=82.0;
    }
   } else {
    if(i34<1.0533521175384521){
     s0+=1429.0;
    } else {
     s0+=1622.0;
     s1+=2547.0;
    }
   }
  } else {
   if(i19<0.030816301703453064){
    if(i18<-0.0011987686157226562){
     s0+=1152.0;
     s1+=251.0;
    } else {
     s0+=1267.0;
     s1+=2065.0;
    }
   } else {
    if(i30<0.04176744818687439){
     s0+=231.0;
     s1+=162.0;
    } else {
     s0+=140.0;
     s1+=3029.0;
    }
   }
  }
 }
} else {
 if(i1<-6.518935697386041e-05){
  if(i7<0.004036503843963146){
   if(i15<0.0002656037686392665){
    if(i52<5.239248275756836e-05){
     s1+=358.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i47<-4.935769538860768e-05){
     s1+=30.0;
    } else {
     s0+=157.0;
    }
   }
  } else {
   if(i4<0.9967080354690552){
    if(i75<-0.01192423328757286){
     s1+=12.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i50<-6.080845196265727e-06){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=12738.0;
    }
   }
  }
 } else {
  if(i7<0.006012952886521816){
   if(i48<1.0475484132766724){
    if(i34<1.105151891708374){
     s0+=1.0;
     s1+=211.0;
    } else {
     s0+=155.0;
    }
   } else {
    if(i42<0.0009935526177287102){
     s1+=37.0;
    } else {
     s0+=1261.0;
     s1+=44.0;
    }
   }
  } else {
   if(i67<4.544935563899344e-06){
    if(i59<-1.1266391084063798e-05){
     s0+=16.0;
     s1+=65.0;
    } else {
     s0+=7.0;
     s1+=710.0;
    }
   } else {
    if(i30<0.12517976760864258){
     s0+=25.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i23<0.20334360003471375){
  if(i32<0.000734373927116394){
   if(i65<-0.0008895399514585733){
    if(i59<-3.354525688337162e-06){
     s0+=4.0;
     s1+=30.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i46<-1.772333780536428e-05){
     s0+=237.0;
     s1+=80.0;
    } else {
     s0+=81366.0;
     s1+=494.0;
    }
   }
  } else {
   if(i0<-3.045797348022461e-05){
    if(i26<1.169194221496582){
     s0+=24909.0;
     s1+=666.0;
    } else {
     s0+=41.0;
     s1+=76.0;
    }
   } else {
    if(i6<-6.496906280517578e-06){
     s0+=1280.0;
     s1+=27.0;
    } else {
     s0+=6081.0;
     s1+=5013.0;
    }
   }
  }
 } else {
  if(i28<0.0029448899440467358){
   if(i71<0.1392093002796173){
    if(i46<-1.0747766282293014e-05){
     s1+=14.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i11<1.017568826675415){
     s0+=220.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=10.0;
    }
   }
  } else {
   if(i56<0.05642351508140564){
    if(i7<0.0066336095333099365){
     s0+=130.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=223.0;
    }
   } else {
    if(i68<0.0671844631433487){
     s0+=24.0;
     s1+=1384.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i39<1.1706266403198242){
  if(i58<1.0025538206100464){
   if(i42<0.0011055232025682926){
    if(i36<1.0451856851577759){
     s0+=60.0;
    } else {
     s0+=25.0;
     s1+=2300.0;
    }
   } else {
    if(i69<0.00399768678471446){
     s0+=982.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   if(i59<-1.0977531928801909e-05){
    if(i24<0.0006690621376037598){
     s1+=5.0;
    } else {
     s0+=916.0;
    }
   } else {
    if(i14<0.0030922566074877977){
     s1+=83.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i20<0.9566062688827515){
   if(i32<0.0013744429452344775){
    if(i44<0.0002312991418875754){
     s1+=2.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i59<-1.577723742229864e-05){
     s0+=11.0;
     s1+=142.0;
    } else {
     s0+=10.0;
     s1+=17.0;
    }
   }
  } else {
   if(i12<0.09284693002700806){
    if(i78<0.0035514235496520996){
     s0+=11.0;
     s1+=432.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   } else {
    if(i29<-0.0005641579627990723){
     s0+=3.0;
     s1+=25.0;
    } else {
     s0+=8.0;
     s1+=13284.0;
    }
   }
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i30<0.04118296504020691){
  if(i63<-0.005531877279281616){
   if(i69<0.031874097883701324){
    if(i14<0.008487353101372719){
     s0+=518.0;
     s1+=7.0;
    } else {
     s0+=42.0;
     s1+=18.0;
    }
   } else {
    if(i60<0.22229382395744324){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  } else {
   if(i51<1.000756859779358){
    if(i68<0.0029851715080440044){
     s0+=51.0;
     s1+=12.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i78<-0.0021240711212158203){
     s0+=1.0;
     s1+=72.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i51<0.9979400038719177){
   s0+=159.0;
  } else {
   if(i29<-0.0008294880390167236){
    if(i77<0.004831254482269287){
     s1+=14.0;
    } else {
     s0+=34.0;
     s1+=9.0;
    }
   } else {
    if(i33<0.0019008297240361571){
     s0+=105.0;
     s1+=670.0;
    } else {
     s0+=54.0;
     s1+=14421.0;
    }
   }
  }
 }
} else {
 if(i9<1.0105361938476562){
  if(i44<-2.2788339265389368e-05){
   if(i32<0.001657660584896803){
    if(i4<1.001744270324707){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=296.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i14<0.001728216651827097){
    if(i14<0.001245009945705533){
     s0+=79699.0;
     s1+=348.0;
    } else {
     s0+=10795.0;
     s1+=618.0;
    }
   } else {
    if(i0<-2.9981136322021484e-05){
     s0+=17707.0;
     s1+=664.0;
    } else {
     s0+=4387.0;
     s1+=3978.0;
    }
   }
  }
 } else {
  if(i6<9.953975677490234e-06){
   if(i46<-8.139225428749342e-06){
    if(i82<0.0035286545753479004){
     s0+=268.0;
     s1+=19.0;
    } else {
     s0+=52.0;
     s1+=95.0;
    }
   } else {
    if(i24<0.00011402368545532227){
     s0+=454.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  } else {
   if(i27<0.0012226768303662539){
    if(i27<0.0011464310809969902){
     s0+=3.0;
     s1+=1784.0;
    } else {
     s0+=30.0;
     s1+=63.0;
    }
   } else {
    if(i81<0.011078089475631714){
     s0+=1950.0;
     s1+=461.0;
    } else {
     s0+=204.0;
     s1+=685.0;
    }
   }
  }
 }
}
if(i4<1.0026335716247559){
 if(i17<1.0162495374679565){
  if(i7<0.003601599484682083){
   if(i27<0.0006338842795230448){
    if(i63<-0.0003425180912017822){
     s0+=4113.0;
     s1+=561.0;
    } else {
     s0+=23236.0;
     s1+=232.0;
    }
   } else {
    if(i19<0.006270553916692734){
     s0+=41381.0;
     s1+=34.0;
    } else {
     s0+=17666.0;
     s1+=134.0;
    }
   }
  } else {
   if(i16<0.998204231262207){
    if(i12<0.19995230436325073){
     s0+=18845.0;
     s1+=287.0;
    } else {
     s0+=50.0;
     s1+=93.0;
    }
   } else {
    if(i22<1.117285966873169){
     s0+=520.0;
     s1+=2185.0;
    } else {
     s0+=3795.0;
     s1+=816.0;
    }
   }
  }
 } else {
  if(i46<-8.390849870920647e-06){
   if(i7<0.004360439255833626){
    if(i32<0.0010209032334387302){
     s0+=56.0;
     s1+=29.0;
    } else {
     s0+=149.0;
    }
   } else {
    if(i24<0.0005505084991455078){
     s0+=39.0;
     s1+=1166.0;
    } else {
     s0+=42.0;
    }
   }
  } else {
   if(i59<-3.6373101011122344e-06){
    if(i55<0.11025822162628174){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i18<-0.0028056800365448){
     s1+=1.0;
    } else {
     s0+=548.0;
    }
   }
  }
 }
} else {
 if(i7<0.003984224051237106){
  if(i18<0.0013667941093444824){
   if(i15<0.00023719292948953807){
    if(i46<-1.8484584870748222e-05){
     s0+=295.0;
     s1+=196.0;
    } else {
     s0+=325.0;
     s1+=7.0;
    }
   } else {
    if(i17<0.991496205329895){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=3290.0;
     s1+=3.0;
    }
   }
  } else {
   if(i15<0.0004422192578203976){
    if(i64<-0.0027468521147966385){
     s0+=9.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=808.0;
    }
   } else {
    if(i43<0.3713856637477875){
     s0+=485.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i2<2.1219253540039062e-05){
   if(i64<-0.0007965191616676748){
    if(i26<1.085615634918213){
     s0+=172.0;
     s1+=46.0;
    } else {
     s0+=86.0;
     s1+=327.0;
    }
   } else {
    if(i19<0.025691404938697815){
     s0+=469.0;
     s1+=14.0;
    } else {
     s0+=138.0;
     s1+=104.0;
    }
   }
  } else {
   if(i19<0.028986044228076935){
    if(i0<7.408857345581055e-05){
     s0+=469.0;
     s1+=892.0;
    } else {
     s0+=101.0;
     s1+=4435.0;
    }
   } else {
    if(i18<-0.0025612711906433105){
     s0+=143.0;
     s1+=485.0;
    } else {
     s0+=13.0;
     s1+=11482.0;
    }
   }
  }
 }
}
if(i25<1.0217523574829102){
 if(i6<3.451108932495117e-05){
  if(i6<1.5795230865478516e-05){
   if(i30<0.24834105372428894){
    if(i24<7.075071334838867e-05){
     s0+=75618.0;
     s1+=794.0;
    } else {
     s0+=30393.0;
     s1+=2583.0;
    }
   } else {
    if(i36<1.1542227268218994){
     s0+=11.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=131.0;
    }
   }
  } else {
   if(i19<0.007906589657068253){
    if(i10<1.0086866617202759){
     s0+=4284.0;
     s1+=186.0;
    } else {
     s0+=272.0;
     s1+=190.0;
    }
   } else {
    if(i3<1.000158429145813){
     s0+=1062.0;
     s1+=268.0;
    } else {
     s0+=516.0;
     s1+=1662.0;
    }
   }
  }
 } else {
  if(i27<0.0026931532192975283){
   if(i28<0.001227645669132471){
    if(i27<0.00023552498896606266){
     s0+=113.0;
    } else {
     s0+=54.0;
     s1+=1264.0;
    }
   } else {
    if(i10<1.0166175365447998){
     s0+=1959.0;
     s1+=24.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i12<0.06259316205978394){
    if(i3<1.0062167644500732){
     s0+=575.0;
     s1+=171.0;
    } else {
     s0+=7.0;
     s1+=194.0;
    }
   } else {
    if(i41<0.9970836639404297){
     s0+=138.0;
     s1+=403.0;
    } else {
     s0+=40.0;
     s1+=3202.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007230782066471875){
  if(i7<0.005095003172755241){
   if(i47<-5.999856057314901e-06){
    if(i46<-0.0001478838676121086){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=433.0;
    }
   } else {
    if(i59<-3.632992502389243e-06){
     s0+=496.0;
     s1+=152.0;
    } else {
     s0+=530.0;
     s1+=2.0;
    }
   }
  } else {
   if(i10<0.9991863369941711){
    if(i43<0.13845232129096985){
     s0+=74.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=349.0;
    }
   } else {
    if(i4<0.9962007403373718){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=12234.0;
    }
   }
  }
 } else {
  s0+=302.0;
 }
}
if(i11<1.0181405544281006){
 if(i18<0.0013654828071594238){
  if(i19<0.06261739134788513){
   if(i14<0.001786241540685296){
    if(i32<0.000549356103874743){
     s0+=70270.0;
     s1+=168.0;
    } else {
     s0+=22049.0;
     s1+=975.0;
    }
   } else {
    if(i2<-0.00040280818939208984){
     s0+=17477.0;
     s1+=728.0;
    } else {
     s0+=4105.0;
     s1+=4379.0;
    }
   }
  } else {
   if(i18<-0.0058949291706085205){
    if(i31<1.1183619499206543){
     s0+=318.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=55.0;
    }
   } else {
    if(i37<1.029990792274475){
     s0+=70.0;
     s1+=42.0;
    } else {
     s0+=13.0;
     s1+=1439.0;
    }
   }
  }
 } else {
  if(i29<0.0002976059913635254){
   if(i15<0.000268247677013278){
    if(i59<-4.913160410069395e-06){
     s1+=691.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i27<0.003627263940870762){
     s0+=632.0;
     s1+=7.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i52<2.5093555450439453e-05){
    if(i47<9.563066851114854e-05){
     s0+=4.0;
     s1+=1751.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i53<0.002442875411361456){
     s0+=34.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i0<2.3066997528076172e-05){
  if(i19<0.02766634151339531){
   if(i42<0.0006256664637476206){
    s1+=9.0;
   } else {
    if(i41<0.9840598106384277){
     s0+=4.0;
     s1+=19.0;
    } else {
     s0+=627.0;
     s1+=61.0;
    }
   }
  } else {
   if(i59<-2.2102240109234117e-06){
    if(i61<1.0072062015533447){
     s0+=44.0;
     s1+=510.0;
    } else {
     s0+=44.0;
     s1+=68.0;
    }
   } else {
    s0+=51.0;
   }
  }
 } else {
  if(i1<-7.030265260254964e-05){
   if(i19<0.004140316043049097){
    if(i8<1.0201327800750732){
     s0+=76.0;
     s1+=24.0;
    } else {
     s1+=138.0;
    }
   } else {
    if(i57<0.9964392185211182){
     s0+=16.0;
    } else {
     s0+=72.0;
     s1+=12213.0;
    }
   }
  } else {
   if(i57<1.0033750534057617){
    if(i50<-3.64187098966795e-06){
     s0+=129.0;
     s1+=5.0;
    } else {
     s0+=81.0;
     s1+=847.0;
    }
   } else {
    if(i39<1.1819071769714355){
     s0+=254.0;
    } else {
     s0+=65.0;
     s1+=112.0;
    }
   }
  }
 }
}
if(i1<-9.218060586135834e-05){
 if(i3<0.9985666871070862){
  if(i71<0.058563798666000366){
   if(i64<-0.0011489067692309618){
    if(i54<0.007285615429282188){
     s0+=22.0;
     s1+=14.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i64<0.001558396266773343){
     s0+=521.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i23<0.14849650859832764){
    if(i10<0.9671252369880676){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=21.0;
    }
   } else {
    if(i5<0.000880122184753418){
     s1+=190.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i12<0.02074626088142395){
   if(i9<0.968817949295044){
    if(i76<-0.17863357067108154){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=182.0;
     s1+=18.0;
    }
   } else {
    if(i70<1.9652984519780148e-06){
     s0+=5.0;
     s1+=93.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i70<5.794467142550275e-06){
    if(i6<0.00024086236953735352){
     s0+=142.0;
     s1+=15333.0;
    } else {
     s0+=53.0;
    }
   } else {
    s0+=143.0;
   }
  }
 }
} else {
 if(i5<0.0003574490547180176){
  if(i22<1.116391897201538){
   if(i56<0.012763132341206074){
    if(i14<0.0011008912697434425){
     s0+=18810.0;
     s1+=114.0;
    } else {
     s0+=2611.0;
     s1+=745.0;
    }
   } else {
    if(i14<0.0016888042446225882){
     s0+=6030.0;
     s1+=238.0;
    } else {
     s0+=361.0;
     s1+=1295.0;
    }
   }
  } else {
   if(i12<0.20721644163131714){
    if(i53<0.0019126825500279665){
     s0+=68832.0;
     s1+=212.0;
    } else {
     s0+=8540.0;
     s1+=452.0;
    }
   } else {
    if(i57<1.000819444656372){
     s0+=136.0;
     s1+=38.0;
    } else {
     s0+=49.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i8<1.0145690441131592){
   if(i34<1.054492473602295){
    s0+=2440.0;
   } else {
    if(i28<0.0010055163875222206){
     s0+=22.0;
     s1+=1886.0;
    } else {
     s0+=7022.0;
     s1+=1554.0;
    }
   }
  } else {
   if(i58<1.0034672021865845){
    if(i59<-1.3501984540198464e-05){
     s0+=164.0;
     s1+=29.0;
    } else {
     s0+=91.0;
     s1+=1663.0;
    }
   } else {
    if(i26<1.1327931880950928){
     s0+=307.0;
     s1+=34.0;
    } else {
     s0+=38.0;
     s1+=148.0;
    }
   }
  }
 }
}
if(i24<0.00025206804275512695){
 if(i8<1.0135915279388428){
  if(i43<0.20677721500396729){
   if(i21<0.0009014678653329611){
    if(i40<0.008920134976506233){
     s0+=20007.0;
     s1+=333.0;
    } else {
     s0+=9149.0;
     s1+=2631.0;
    }
   } else {
    if(i5<0.0005548596382141113){
     s0+=68714.0;
     s1+=480.0;
    } else {
     s0+=56.0;
     s1+=116.0;
    }
   }
  } else {
   if(i14<0.00211498886346817){
    if(i4<1.0006561279296875){
     s0+=95.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i53<0.0018262718804180622){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=320.0;
    }
   }
  }
 } else {
  if(i14<0.0015738229267299175){
   s0+=276.0;
  } else {
   if(i46<-0.0001896020257845521){
    s0+=2.0;
   } else {
    if(i9<1.0156733989715576){
     s0+=4.0;
     s1+=247.0;
    } else {
     s1+=1254.0;
    }
   }
  }
 }
} else {
 if(i4<1.002637267112732){
  if(i17<1.0228707790374756){
   if(i25<1.009971022605896){
    if(i26<1.1715928316116333){
     s0+=10765.0;
     s1+=522.0;
    } else {
     s0+=14.0;
     s1+=121.0;
    }
   } else {
    if(i60<0.14756764471530914){
     s0+=1393.0;
     s1+=269.0;
    } else {
     s1+=47.0;
    }
   }
  } else {
   if(i7<0.004028813913464546){
    s0+=33.0;
   } else {
    if(i3<0.9983111619949341){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i1<-7.230826304294169e-05){
   if(i13<0.9187412858009338){
    if(i6<6.753206253051758e-05){
     s0+=310.0;
     s1+=112.0;
    } else {
     s0+=4.0;
     s1+=52.0;
    }
   } else {
    if(i52<2.9325485229492188e-05){
     s0+=374.0;
     s1+=14965.0;
    } else {
     s0+=114.0;
     s1+=10.0;
    }
   }
  } else {
   if(i14<0.0017565481830388308){
    if(i67<-6.100032805989031e-06){
     s0+=97.0;
     s1+=288.0;
    } else {
     s0+=2852.0;
     s1+=34.0;
    }
   } else {
    if(i32<0.0013668418396264315){
     s0+=761.0;
     s1+=1787.0;
    } else {
     s0+=1520.0;
     s1+=504.0;
    }
   }
  }
 }
}
if(i5<0.000592648983001709){
 if(i1<-9.136960579780862e-05){
  if(i62<-0.012451589107513428){
   if(i19<0.07150377333164215){
    if(i76<-0.24668347835540771){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=435.0;
     s1+=9.0;
    }
   } else {
    if(i12<0.003238588571548462){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  } else {
   if(i50<-6.252938874240499e-06){
    s0+=34.0;
   } else {
    if(i23<0.018788456916809082){
     s0+=26.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=784.0;
    }
   }
  }
 } else {
  if(i7<0.003599122865125537){
   if(i26<1.0231759548187256){
    if(i14<0.0007956181652843952){
     s0+=8707.0;
     s1+=33.0;
    } else {
     s0+=3712.0;
     s1+=502.0;
    }
   } else {
    if(i21<0.0005710704135708511){
     s0+=17868.0;
     s1+=299.0;
    } else {
     s0+=56339.0;
     s1+=182.0;
    }
   }
  } else {
   if(i21<0.000997075461782515){
    if(i61<0.9995706081390381){
     s0+=2559.0;
     s1+=149.0;
    } else {
     s0+=281.0;
     s1+=2190.0;
    }
   } else {
    if(i0<6.556510925292969e-07){
     s0+=19873.0;
     s1+=506.0;
    } else {
     s0+=208.0;
     s1+=433.0;
    }
   }
  }
 }
} else {
 if(i7<0.0044362409971654415){
  if(i15<0.00021229890990071){
   if(i29<-1.239776611328125e-05){
    if(i1<-6.286925781751052e-05){
     s1+=3.0;
    } else {
     s0+=226.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.001035451889038086){
     s0+=25.0;
     s1+=87.0;
    } else {
     s0+=12.0;
     s1+=1139.0;
    }
   }
  } else {
   if(i41<1.0182890892028809){
    if(i28<0.0026392657309770584){
     s0+=4347.0;
    } else {
     s0+=239.0;
     s1+=12.0;
    }
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i3<1.001123309135437){
   if(i45<0.2698083519935608){
    if(i71<0.060596466064453125){
     s0+=657.0;
     s1+=96.0;
    } else {
     s0+=149.0;
     s1+=94.0;
    }
   } else {
    if(i26<1.0883898735046387){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=212.0;
    }
   }
  } else {
   if(i15<0.000704873469658196){
    if(i9<0.9960337281227112){
     s0+=382.0;
     s1+=2154.0;
    } else {
     s0+=74.0;
     s1+=15444.0;
    }
   } else {
    s0+=236.0;
   }
  }
 }
}
if(i1<-9.781442349776626e-05){
 if(i26<1.038961410522461){
  if(i41<1.011845588684082){
   if(i12<0.08045101165771484){
    if(i7<0.02173081785440445){
     s0+=422.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   } else {
    if(i53<0.0012622374342754483){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   s1+=23.0;
  }
 } else {
  if(i51<0.9982380867004395){
   s0+=171.0;
  } else {
   if(i9<0.9321627020835876){
    if(i34<1.504706621170044){
     s0+=136.0;
     s1+=49.0;
    } else {
     s0+=8.0;
     s1+=70.0;
    }
   } else {
    if(i50<-6.356329322443344e-06){
     s0+=102.0;
     s1+=1.0;
    } else {
     s0+=77.0;
     s1+=15307.0;
    }
   }
  }
 }
} else {
 if(i44<-2.516113090678118e-05){
  if(i31<1.0948957204818726){
   s1+=814.0;
  } else {
   if(i3<1.0102670192718506){
    if(i29<0.0002918243408203125){
     s0+=94.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    s1+=133.0;
   }
  }
 } else {
  if(i7<0.0039970362558960915){
   if(i33<0.0005407584831118584){
    if(i0<7.259845733642578e-05){
     s0+=25773.0;
     s1+=1056.0;
    } else {
     s1+=179.0;
    }
   } else {
    if(i25<1.027273178100586){
     s0+=67681.0;
     s1+=281.0;
    } else {
     s0+=534.0;
     s1+=38.0;
    }
   }
  } else {
   if(i4<1.0001945495605469){
    if(i30<0.289946585893631){
     s0+=16716.0;
     s1+=374.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   } else {
    if(i18<-0.0014676451683044434){
     s0+=3939.0;
     s1+=1004.0;
    } else {
     s0+=737.0;
     s1+=5040.0;
    }
   }
  }
 }
}
if(i3<1.0038518905639648){
 if(i12<0.20742589235305786){
  if(i1<-7.877018651925027e-05){
   if(i43<0.04938405752182007){
    if(i23<0.06867608428001404){
     s0+=1193.0;
     s1+=161.0;
    } else {
     s0+=7.0;
     s1+=78.0;
    }
   } else {
    if(i58<0.9990741014480591){
     s0+=161.0;
     s1+=30.0;
    } else {
     s0+=137.0;
     s1+=651.0;
    }
   }
  } else {
   if(i14<0.001712815836071968){
    if(i7<0.0016381237655878067){
     s0+=59561.0;
     s1+=203.0;
    } else {
     s0+=29894.0;
     s1+=771.0;
    }
   } else {
    if(i0<-2.485513687133789e-05){
     s0+=17691.0;
     s1+=581.0;
    } else {
     s0+=3484.0;
     s1+=3093.0;
    }
   }
  }
 } else {
  if(i27<0.002609620336443186){
   if(i46<-1.5067302228999324e-05){
    if(i46<-2.022242551902309e-05){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i58<1.0030529499053955){
     s0+=110.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i45<0.07348072528839111){
    if(i7<0.00678021227940917){
     s0+=63.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=64.0;
    }
   } else {
    if(i68<0.06809048354625702){
     s0+=40.0;
     s1+=1092.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i49<-0.00027817790396511555){
  if(i51<0.9981743097305298){
   s0+=37.0;
  } else {
   if(i19<0.009980255737900734){
    if(i18<0.0015253424644470215){
     s0+=144.0;
     s1+=159.0;
    } else {
     s0+=6.0;
     s1+=772.0;
    }
   } else {
    if(i30<0.12367221713066101){
     s0+=81.0;
     s1+=928.0;
    } else {
     s0+=22.0;
     s1+=12099.0;
    }
   }
  }
 } else {
  if(i0<0.0001385807991027832){
   if(i33<0.0019454818684607744){
    if(i42<0.0009699619840830564){
     s0+=697.0;
     s1+=953.0;
    } else {
     s0+=2973.0;
     s1+=42.0;
    }
   } else {
    if(i54<0.0007103699026629329){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=66.0;
     s1+=613.0;
    }
   }
  } else {
   if(i51<0.9988278746604919){
    s0+=99.0;
   } else {
    if(i7<0.0009781562257558107){
     s0+=4.0;
     s1+=42.0;
    } else {
     s0+=7.0;
     s1+=1996.0;
    }
   }
  }
 }
}
if(i1<-9.121593029703945e-05){
 if(i17<0.9089494943618774){
  if(i43<0.03375944495201111){
   if(i75<0.003627635072916746){
    if(i51<1.0025391578674316){
     s0+=555.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i26<1.0718709230422974){
    if(i62<-0.01588362455368042){
     s0+=49.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   } else {
    if(i8<0.8864320516586304){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i51<0.9981913566589355){
   s0+=191.0;
  } else {
   if(i52<5.799531936645508e-05){
    if(i26<1.0260529518127441){
     s0+=80.0;
     s1+=6.0;
    } else {
     s0+=150.0;
     s1+=15519.0;
    }
   } else {
    s0+=91.0;
   }
  }
 }
} else {
 if(i3<1.00326406955719){
  if(i40<0.012254985049366951){
   if(i14<0.001055262517184019){
    if(i66<0.0002553617814555764){
     s0+=54751.0;
     s1+=83.0;
    } else {
     s0+=282.0;
     s1+=47.0;
    }
   } else {
    if(i34<1.1161681413650513){
     s0+=4876.0;
     s1+=499.0;
    } else {
     s0+=9005.0;
     s1+=10.0;
    }
   }
  } else {
   if(i32<0.000706543039996177){
    if(i5<0.0005348920822143555){
     s0+=21650.0;
     s1+=225.0;
    } else {
     s0+=42.0;
     s1+=29.0;
    }
   } else {
    if(i21<0.0009450033539906144){
     s0+=726.0;
     s1+=2528.0;
    } else {
     s0+=19051.0;
     s1+=1256.0;
    }
   }
  }
 } else {
  if(i14<0.0019523295341059566){
   if(i31<1.0773591995239258){
    if(i3<1.006253957748413){
     s0+=879.0;
    } else {
     s1+=480.0;
    }
   } else {
    if(i44<4.0149108826881275e-05){
     s0+=3198.0;
     s1+=46.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   }
  } else {
   if(i32<0.001568137900903821){
    if(i15<0.00035148923052474856){
     s0+=106.0;
     s1+=2816.0;
    } else {
     s0+=155.0;
    }
   } else {
    if(i40<0.031776923686265945){
     s0+=824.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=315.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i7<0.0037339082919061184){
  if(i39<1.0905301570892334){
   if(i66<0.00011777261534007266){
    if(i56<0.01825471594929695){
     s0+=20393.0;
     s1+=143.0;
    } else {
     s0+=255.0;
     s1+=51.0;
    }
   } else {
    if(i41<0.9956827163696289){
     s0+=3075.0;
     s1+=46.0;
    } else {
     s0+=1022.0;
     s1+=693.0;
    }
   }
  } else {
   if(i27<0.0019269450567662716){
    if(i68<2.48589385591913e-05){
     s0+=52.0;
     s1+=6.0;
    } else {
     s0+=49380.0;
     s1+=27.0;
    }
   } else {
    if(i3<0.9999985694885254){
     s0+=11945.0;
     s1+=21.0;
    } else {
     s0+=1627.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i11<1.0114675760269165){
   if(i2<-0.00037151575088500977){
    if(i4<0.9991861581802368){
     s0+=15311.0;
     s1+=113.0;
    } else {
     s0+=5139.0;
     s1+=705.0;
    }
   } else {
    if(i57<1.000042200088501){
     s0+=861.0;
     s1+=63.0;
    } else {
     s0+=338.0;
     s1+=1917.0;
    }
   }
  } else {
   if(i2<-0.0003600120544433594){
    if(i46<-8.042598892643582e-06){
     s0+=96.0;
     s1+=150.0;
    } else {
     s0+=432.0;
    }
   } else {
    if(i7<0.0054240114986896515){
     s0+=136.0;
     s1+=126.0;
    } else {
     s0+=35.0;
     s1+=999.0;
    }
   }
  }
 }
} else {
 if(i8<1.0167311429977417){
  if(i15<0.000704434234648943){
   if(i2<0.0009424090385437012){
    if(i32<0.0007896185852587223){
     s0+=1207.0;
     s1+=71.0;
    } else {
     s0+=1677.0;
     s1+=1980.0;
    }
   } else {
    if(i59<-5.647615762427449e-05){
     s0+=30.0;
    } else {
     s0+=214.0;
     s1+=3847.0;
    }
   }
  } else {
   s0+=3078.0;
  }
 } else {
  if(i1<-7.525620458181947e-05){
   if(i15<0.0010530299041420221){
    if(i7<0.004612356424331665){
     s0+=25.0;
     s1+=445.0;
    } else {
     s0+=3.0;
     s1+=11914.0;
    }
   } else {
    s0+=26.0;
   }
  } else {
   if(i52<1.4483928680419922e-05){
    if(i21<0.005526068154722452){
     s0+=9.0;
     s1+=728.0;
    } else {
     s0+=77.0;
     s1+=25.0;
    }
   } else {
    if(i46<-3.710605960804969e-05){
     s0+=18.0;
     s1+=32.0;
    } else {
     s0+=148.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i23<0.19221258163452148){
 if(i5<0.0005193948745727539){
  if(i13<1.0139408111572266){
   if(i7<0.0033541845623403788){
    if(i7<0.0020225378684699535){
     s0+=66895.0;
     s1+=273.0;
    } else {
     s0+=15616.0;
     s1+=543.0;
    }
   } else {
    if(i16<0.9981820583343506){
     s0+=20096.0;
     s1+=306.0;
    } else {
     s0+=4347.0;
     s1+=2536.0;
    }
   }
  } else {
   if(i14<0.0017241594614461064){
    if(i24<0.00011324882507324219){
     s0+=727.0;
    } else {
     s0+=197.0;
     s1+=43.0;
    }
   } else {
    if(i47<3.3826265280367807e-05){
     s0+=80.0;
     s1+=346.0;
    } else {
     s0+=283.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i1<-4.9045815103454515e-05){
   if(i18<0.0020072460174560547){
    if(i21<0.0010788681684061885){
     s1+=1196.0;
    } else {
     s0+=2332.0;
     s1+=2333.0;
    }
   } else {
    if(i29<0.00023746490478515625){
     s0+=15.0;
    } else {
     s0+=19.0;
     s1+=2566.0;
    }
   }
  } else {
   if(i14<0.001972819212824106){
    if(i41<1.0096774101257324){
     s0+=3103.0;
     s1+=17.0;
    } else {
     s0+=331.0;
     s1+=201.0;
    }
   } else {
    if(i58<1.003345251083374){
     s0+=871.0;
     s1+=1002.0;
    } else {
     s0+=784.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i33<0.00208946131169796){
  if(i47<-1.7975442460738122e-05){
   if(i27<0.002819617511704564){
    s0+=1.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i21<0.0020075703505426645){
    s0+=388.0;
   } else {
    if(i45<0.05560457706451416){
     s0+=81.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<0.0002715587615966797){
   if(i19<0.03882114589214325){
    if(i27<0.010898223146796227){
     s0+=245.0;
     s1+=53.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i1<-3.0384089768631384e-05){
     s1+=316.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i27<0.0024420893751084805){
    if(i5<0.00044101476669311523){
     s1+=1.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i29<-0.0003947317600250244){
     s0+=46.0;
     s1+=288.0;
    } else {
     s0+=11.0;
     s1+=12165.0;
    }
   }
  }
 }
}
if(i9<1.0152710676193237){
 if(i6<2.2113323211669922e-05){
  if(i32<0.0007064715027809143){
   if(i36<1.1354830265045166){
    if(i14<0.0009138573659583926){
     s0+=61568.0;
     s1+=56.0;
    } else {
     s0+=11222.0;
     s1+=229.0;
    }
   } else {
    if(i1<-3.1654468330089e-05){
     s0+=470.0;
     s1+=109.0;
    } else {
     s0+=5661.0;
     s1+=63.0;
    }
   }
  } else {
   if(i29<-0.00018787384033203125){
    if(i1<-0.00010309165372746065){
     s0+=283.0;
     s1+=331.0;
    } else {
     s0+=20148.0;
     s1+=665.0;
    }
   } else {
    if(i19<0.009689999744296074){
     s0+=8312.0;
     s1+=644.0;
    } else {
     s0+=1908.0;
     s1+=2556.0;
    }
   }
  }
 } else {
  if(i42<0.0024038958363234997){
   if(i7<0.0039617083966732025){
    if(i44<-1.953748142113909e-05){
     s0+=239.0;
     s1+=404.0;
    } else {
     s0+=3978.0;
     s1+=74.0;
    }
   } else {
    if(i15<0.00026723972405306995){
     s0+=93.0;
     s1+=1315.0;
    } else {
     s0+=499.0;
     s1+=67.0;
    }
   }
  } else {
   if(i49<-0.0002594109973870218){
    if(i66<0.0032364060170948505){
     s0+=144.0;
     s1+=2553.0;
    } else {
     s0+=111.0;
     s1+=68.0;
    }
   } else {
    if(i12<0.09861442446708679){
     s0+=884.0;
     s1+=281.0;
    } else {
     s0+=154.0;
     s1+=922.0;
    }
   }
  }
 }
} else {
 if(i0<1.329183578491211e-05){
  if(i32<0.00183783913962543){
   if(i15<0.000145434751175344){
    if(i26<1.0873644351959229){
     s1+=5.0;
    } else {
     s0+=198.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.1958281993865967){
     s0+=8.0;
     s1+=44.0;
    } else {
     s0+=169.0;
     s1+=31.0;
    }
   }
  } else {
   if(i51<0.9976164102554321){
    s0+=10.0;
   } else {
    s1+=130.0;
   }
  }
 } else {
  if(i19<0.005542275495827198){
   if(i44<-2.5316810933873057e-05){
    if(i70<4.346571950009093e-05){
     s0+=12.0;
     s1+=487.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i24<0.0008039772510528564){
     s0+=68.0;
     s1+=111.0;
    } else {
     s0+=242.0;
     s1+=4.0;
    }
   }
  } else {
   if(i3<1.002785086631775){
    if(i59<-3.7184545362833887e-06){
     s0+=22.0;
     s1+=134.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i51<0.9982697367668152){
     s0+=10.0;
    } else {
     s0+=116.0;
     s1+=13000.0;
    }
   }
  }
 }
}
if(i2<0.0009647011756896973){
 if(i5<0.0003293752670288086){
  if(i25<1.0242669582366943){
   if(i12<0.23083317279815674){
    if(i14<0.001478683901950717){
     s0+=81740.0;
     s1+=567.0;
    } else {
     s0+=22730.0;
     s1+=2270.0;
    }
   } else {
    if(i14<0.002479227725416422){
     s0+=30.0;
     s1+=7.0;
    } else {
     s1+=142.0;
    }
   }
  } else {
   if(i59<-2.775733719317941e-06){
    if(i12<0.162227064371109){
     s0+=130.0;
     s1+=57.0;
    } else {
     s0+=29.0;
     s1+=228.0;
    }
   } else {
    if(i44<7.595191709697247e-05){
     s0+=389.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i37<1.116865873336792){
   if(i19<0.008028005249798298){
    if(i27<0.0007027245592325926){
     s0+=2455.0;
     s1+=202.0;
    } else {
     s0+=4125.0;
     s1+=26.0;
    }
   } else {
    if(i3<1.0007672309875488){
     s0+=1636.0;
     s1+=354.0;
    } else {
     s0+=915.0;
     s1+=2111.0;
    }
   }
  } else {
   if(i53<0.0023666834458708763){
    if(i27<0.0025161150842905045){
     s0+=300.0;
    } else {
     s0+=17.0;
     s1+=172.0;
    }
   } else {
    if(i15<0.00013933485024608672){
     s0+=79.0;
     s1+=56.0;
    } else {
     s0+=72.0;
     s1+=1626.0;
    }
   }
  }
 }
} else {
 if(i33<0.002045207656919956){
  if(i28<0.0012506716884672642){
   if(i15<0.00026703899493440986){
    s1+=2130.0;
   } else {
    s0+=98.0;
   }
  } else {
   if(i7<0.005752669647336006){
    if(i41<1.0174031257629395){
     s0+=1682.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i67<1.4250206277210964e-06){
     s1+=256.0;
    } else {
     s0+=60.0;
    }
   }
  }
 } else {
  if(i21<0.002358806785196066){
   if(i44<1.2842905562138185e-05){
    s1+=5.0;
   } else {
    s0+=36.0;
   }
  } else {
   if(i3<1.0046970844268799){
    if(i12<0.10469669103622437){
     s0+=46.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=163.0;
    }
   } else {
    if(i2<0.001275479793548584){
     s0+=36.0;
     s1+=787.0;
    } else {
     s0+=21.0;
     s1+=13026.0;
    }
   }
  }
 }
}
if(i9<1.014350414276123){
 if(i16<1.0075409412384033){
  if(i19<0.06277245283126831){
   if(i57<1.0001838207244873){
    if(i9<0.9949204921722412){
     s0+=15774.0;
     s1+=618.0;
    } else {
     s0+=46142.0;
     s1+=142.0;
    }
   } else {
    if(i49<-0.00015921599697321653){
     s0+=11125.0;
     s1+=2887.0;
    } else {
     s0+=41189.0;
     s1+=2174.0;
    }
   }
  } else {
   if(i1<-5.3571260650642216e-05){
    if(i32<0.0038354189600795507){
     s0+=41.0;
     s1+=1068.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i3<1.002616047859192){
     s0+=313.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i7<0.0026206369511783123){
   if(i15<0.00021858143736608326){
    s1+=147.0;
   } else {
    s0+=554.0;
   }
  } else {
   if(i37<1.0234894752502441){
    if(i16<1.014402151107788){
     s0+=187.0;
     s1+=84.0;
    } else {
     s0+=5.0;
     s1+=120.0;
    }
   } else {
    if(i29<-0.0005241036415100098){
     s0+=115.0;
     s1+=183.0;
    } else {
     s0+=187.0;
     s1+=2546.0;
    }
   }
  }
 }
} else {
 if(i1<-6.879034481244162e-05){
  if(i15<0.0009054832626134157){
   if(i21<0.0024338290095329285){
    if(i16<0.9980345964431763){
     s0+=23.0;
    } else {
     s0+=23.0;
     s1+=1171.0;
    }
   } else {
    if(i0<8.285045623779297e-05){
     s0+=14.0;
     s1+=1102.0;
    } else {
     s1+=10732.0;
    }
   }
  } else {
   s0+=138.0;
  }
 } else {
  if(i54<0.000767309800721705){
   if(i34<1.1180615425109863){
    s1+=567.0;
   } else {
    if(i65<0.0008515602676197886){
     s0+=145.0;
     s1+=6.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i19<0.02372807264328003){
    if(i21<0.0025962279178202152){
     s0+=625.0;
     s1+=24.0;
    } else {
     s0+=149.0;
     s1+=79.0;
    }
   } else {
    if(i3<1.0011918544769287){
     s0+=80.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=327.0;
    }
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i35<1.0291191339492798){
  if(i40<0.18404248356819153){
   if(i7<0.0037409914657473564){
    if(i28<0.0006928443908691406){
     s0+=28043.0;
     s1+=927.0;
    } else {
     s0+=61525.0;
     s1+=186.0;
    }
   } else {
    if(i10<1.0036909580230713){
     s0+=22840.0;
     s1+=3146.0;
    } else {
     s0+=561.0;
     s1+=1326.0;
    }
   }
  } else {
   if(i7<0.01509915478527546){
    if(i21<0.00827882345765829){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=191.0;
    }
   } else {
    if(i1<4.863112553721294e-05){
     s0+=2.0;
     s1+=621.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i14<0.001527818851172924){
   if(i58<1.0015878677368164){
    s0+=542.0;
   } else {
    if(i58<1.0027053356170654){
     s0+=17.0;
     s1+=27.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i3<1.0011639595031738){
    if(i56<0.04959104210138321){
     s0+=252.0;
     s1+=32.0;
    } else {
     s0+=43.0;
     s1+=273.0;
    }
   } else {
    if(i36<1.1757044792175293){
     s0+=153.0;
     s1+=391.0;
    } else {
     s0+=17.0;
     s1+=933.0;
    }
   }
  }
 }
} else {
 if(i21<0.002331655938178301){
  if(i39<1.116804838180542){
   if(i24<0.0005398988723754883){
    if(i24<0.00012511014938354492){
     s0+=9.0;
    } else {
     s0+=4.0;
     s1+=2362.0;
    }
   } else {
    s0+=374.0;
   }
  } else {
   s0+=1556.0;
  }
 } else {
  if(i12<0.0003789663314819336){
   if(i4<1.006076455116272){
    if(i19<0.06206485629081726){
     s0+=34.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=35.0;
   }
  } else {
   if(i29<-0.0002999305725097656){
    if(i57<1.0039876699447632){
     s0+=48.0;
     s1+=120.0;
    } else {
     s0+=1.0;
     s1+=246.0;
    }
   } else {
    if(i41<1.0045689344406128){
     s0+=30.0;
     s1+=1296.0;
    } else {
     s0+=3.0;
     s1+=12600.0;
    }
   }
  }
 }
}
if(i1<-8.035823702812195e-05){
 if(i12<0.01854380965232849){
  if(i3<1.0062637329101562){
   if(i26<1.125353455543518){
    if(i76<-0.14969474077224731){
     s0+=33.0;
     s1+=26.0;
    } else {
     s0+=866.0;
     s1+=16.0;
    }
   } else {
    if(i40<0.07562294602394104){
     s0+=41.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=38.0;
    }
   }
  } else {
   if(i51<0.9977409839630127){
    s0+=2.0;
   } else {
    s1+=73.0;
   }
  }
 } else {
  if(i28<0.0023680883459746838){
   if(i50<-3.2903221836022567e-06){
    s0+=410.0;
   } else {
    if(i27<0.0014755513984709978){
     s0+=2.0;
     s1+=1062.0;
    } else {
     s0+=72.0;
    }
   }
  } else {
   if(i37<1.045181155204773){
    if(i4<1.0049667358398438){
     s0+=170.0;
     s1+=72.0;
    } else {
     s0+=16.0;
     s1+=284.0;
    }
   } else {
    if(i26<1.0529509782791138){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=97.0;
     s1+=15157.0;
    }
   }
  }
 }
} else {
 if(i6<1.901388168334961e-05){
  if(i7<0.0035355815198272467){
   if(i42<0.000500502297654748){
    if(i11<0.995118260383606){
     s0+=2038.0;
     s1+=456.0;
    } else {
     s0+=24972.0;
     s1+=287.0;
    }
   } else {
    if(i28<0.0018706615082919598){
     s0+=48271.0;
     s1+=12.0;
    } else {
     s0+=9958.0;
     s1+=161.0;
    }
   }
  } else {
   if(i16<0.9983950853347778){
    if(i5<-0.00020837783813476562){
     s0+=17532.0;
     s1+=68.0;
    } else {
     s0+=1820.0;
     s1+=285.0;
    }
   } else {
    if(i21<0.000995492679066956){
     s0+=453.0;
     s1+=1846.0;
    } else {
     s0+=2878.0;
     s1+=524.0;
    }
   }
  }
 } else {
  if(i18<0.001135706901550293){
   if(i42<0.0020363363437354565){
    if(i64<-0.0009354491485282779){
     s0+=348.0;
     s1+=436.0;
    } else {
     s0+=4644.0;
     s1+=539.0;
    }
   } else {
    if(i26<1.104677438735962){
     s0+=1022.0;
     s1+=320.0;
    } else {
     s0+=287.0;
     s1+=1035.0;
    }
   }
  } else {
   if(i74<0.02450433373451233){
    if(i27<0.0012289148289710283){
     s1+=1106.0;
    } else {
     s0+=323.0;
     s1+=133.0;
    }
   } else {
    if(i33<0.001730078598484397){
     s0+=447.0;
     s1+=91.0;
    } else {
     s1+=105.0;
    }
   }
  }
 }
}
if(i13<1.016587734222412){
 if(i12<0.1916458010673523){
  if(i4<1.0025358200073242){
   if(i7<0.0035424279049038887){
    if(i33<0.0005798089550808072){
     s0+=24890.0;
     s1+=814.0;
    } else {
     s0+=60766.0;
     s1+=145.0;
    }
   } else {
    if(i0<-2.485513687133789e-05){
     s0+=21538.0;
     s1+=547.0;
    } else {
     s0+=1766.0;
     s1+=2415.0;
    }
   }
  } else {
   if(i19<0.02044902741909027){
    if(i18<0.0012426376342773438){
     s0+=4330.0;
     s1+=588.0;
    } else {
     s0+=444.0;
     s1+=1210.0;
    }
   } else {
    if(i41<0.9910886287689209){
     s0+=379.0;
     s1+=145.0;
    } else {
     s0+=332.0;
     s1+=2042.0;
    }
   }
  }
 } else {
  if(i22<1.194390058517456){
   if(i42<0.0032788575626909733){
    s0+=285.0;
   } else {
    if(i26<1.1279473304748535){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i7<0.006326090544462204){
    if(i77<0.09185954928398132){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=236.0;
     s1+=30.0;
    }
   } else {
    if(i39<1.1299148797988892){
     s0+=1.0;
    } else {
     s0+=17.0;
     s1+=2024.0;
    }
   }
  }
 }
} else {
 if(i1<-6.681556260446087e-05){
  if(i32<0.003997625317424536){
   if(i9<1.0179308652877808){
    if(i66<4.212130079395138e-05){
     s0+=123.0;
     s1+=169.0;
    } else {
     s0+=26.0;
     s1+=689.0;
    }
   } else {
    if(i1<-7.57095986045897e-05){
     s0+=23.0;
     s1+=12006.0;
    } else {
     s0+=22.0;
     s1+=221.0;
    }
   }
  } else {
   s0+=22.0;
  }
 } else {
  if(i42<0.001083671348169446){
   if(i28<0.0021240180358290672){
    if(i74<0.042062073945999146){
     s0+=1.0;
     s1+=518.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i23<0.20879104733467102){
    if(i75<-0.0027754988986998796){
     s0+=635.0;
     s1+=271.0;
    } else {
     s0+=750.0;
     s1+=71.0;
    }
   } else {
    if(i61<1.0020294189453125){
     s0+=42.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=254.0;
    }
   }
  }
 }
}
if(i20<1.0139482021331787){
 if(i7<0.013799179345369339){
  if(i14<0.0016903369687497616){
   if(i0<0.00011456012725830078){
    if(i9<0.995873749256134){
     s0+=17029.0;
     s1+=540.0;
    } else {
     s0+=73899.0;
     s1+=399.0;
    }
   } else {
    if(i15<0.00017443840624764562){
     s0+=9.0;
     s1+=243.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i0<-2.1636486053466797e-05){
    if(i34<1.0907573699951172){
     s0+=681.0;
     s1+=283.0;
    } else {
     s0+=17625.0;
     s1+=532.0;
    }
   } else {
    if(i58<0.9998139142990112){
     s0+=2238.0;
     s1+=225.0;
    } else {
     s0+=2496.0;
     s1+=4650.0;
    }
   }
  }
 } else {
  if(i20<0.9425015449523926){
   if(i19<0.056458063423633575){
    if(i16<1.017244815826416){
     s0+=939.0;
     s1+=43.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i54<0.004904307425022125){
     s0+=84.0;
     s1+=34.0;
    } else {
     s0+=13.0;
     s1+=116.0;
    }
   }
  } else {
   if(i36<1.1197271347045898){
    s0+=30.0;
   } else {
    if(i25<0.9176977872848511){
     s0+=76.0;
     s1+=447.0;
    } else {
     s0+=20.0;
     s1+=3159.0;
    }
   }
  }
 }
} else {
 if(i10<1.014490008354187){
  if(i14<0.0018147018272429705){
   if(i16<1.0110456943511963){
    if(i59<-1.1021633326890878e-05){
     s0+=345.0;
    } else {
     s0+=298.0;
     s1+=75.0;
    }
   } else {
    if(i34<1.1110819578170776){
     s1+=30.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i50<-5.062230684416136e-06){
    if(i7<0.016668396070599556){
     s0+=132.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<1.0024890899658203){
     s0+=153.0;
     s1+=107.0;
    } else {
     s0+=160.0;
     s1+=1399.0;
    }
   }
  }
 } else {
  if(i14<0.0009878198616206646){
   if(i24<0.001200258731842041){
    if(i47<-9.879313438432291e-06){
     s1+=201.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i5<0.0035842061042785645){
     s0+=60.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i59<-7.231465860968456e-05){
    s0+=3.0;
   } else {
    if(i10<1.0146348476409912){
     s0+=6.0;
     s1+=44.0;
    } else {
     s0+=7.0;
     s1+=11933.0;
    }
   }
  }
 }
}
if(i31<1.1402404308319092){
 if(i2<0.0009647607803344727){
  if(i5<0.0002930760383605957){
   if(i24<5.441904067993164e-05){
    if(i71<0.028939932584762573){
     s0+=28448.0;
     s1+=481.0;
    } else {
     s0+=42668.0;
     s1+=104.0;
    }
   } else {
    if(i21<0.0008986566681414843){
     s0+=3870.0;
     s1+=1503.0;
    } else {
     s0+=25393.0;
     s1+=550.0;
    }
   }
  } else {
   if(i49<-0.00016945943934842944){
    if(i58<1.0031756162643433){
     s0+=730.0;
     s1+=1417.0;
    } else {
     s0+=895.0;
     s1+=314.0;
    }
   } else {
    if(i21<0.0009210731368511915){
     s0+=2501.0;
     s1+=576.0;
    } else {
     s0+=5696.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i7<0.003633808344602585){
   if(i27<0.0012660676147788763){
    if(i67<-2.947452003354556e-06){
     s0+=3.0;
     s1+=531.0;
    } else {
     s0+=77.0;
     s1+=8.0;
    }
   } else {
    if(i27<0.002911191899329424){
     s0+=1229.0;
     s1+=25.0;
    } else {
     s0+=14.0;
     s1+=50.0;
    }
   }
  } else {
   if(i51<0.9992092847824097){
    s0+=244.0;
   } else {
    if(i52<2.473592758178711e-05){
     s0+=99.0;
     s1+=3388.0;
    } else {
     s0+=25.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i3<1.0011403560638428){
  if(i60<0.46743372082710266){
   if(i14<0.0054152486845850945){
    if(i23<0.14621376991271973){
     s0+=2591.0;
     s1+=82.0;
    } else {
     s0+=360.0;
     s1+=134.0;
    }
   } else {
    if(i71<0.0663316547870636){
     s0+=695.0;
     s1+=216.0;
    } else {
     s0+=39.0;
     s1+=226.0;
    }
   }
  } else {
   if(i30<0.049955129623413086){
    s0+=64.0;
   } else {
    s1+=292.0;
   }
  }
 } else {
  if(i0<8.028745651245117e-05){
   if(i40<0.02061670646071434){
    if(i63<0.0019189715385437012){
     s0+=656.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=84.0;
    }
   } else {
    if(i46<-8.395691111218184e-06){
     s0+=151.0;
     s1+=2108.0;
    } else {
     s0+=55.0;
     s1+=6.0;
    }
   }
  } else {
   if(i39<1.1603314876556396){
    s0+=19.0;
   } else {
    if(i62<-0.01329106092453003){
     s0+=33.0;
     s1+=118.0;
    } else {
     s0+=17.0;
     s1+=11762.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i11<1.0182610750198364){
  if(i12<0.23153239488601685){
   if(i32<0.0007055175956338644){
    if(i32<0.0005138842388987541){
     s0+=66797.0;
     s1+=120.0;
    } else {
     s0+=12179.0;
     s1+=308.0;
    }
   } else {
    if(i27<0.0009752023033797741){
     s0+=2868.0;
     s1+=2727.0;
    } else {
     s0+=28033.0;
     s1+=1155.0;
    }
   }
  } else {
   if(i59<-2.346858991586487e-06){
    if(i47<7.2037273639580235e-06){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=230.0;
    }
   } else {
    s0+=64.0;
   }
  }
 } else {
  if(i7<0.005058640614151955){
   if(i58<1.0016086101531982){
    s0+=462.0;
   } else {
    if(i15<0.00025296607054769993){
     s0+=89.0;
     s1+=69.0;
    } else {
     s0+=174.0;
     s1+=1.0;
    }
   }
  } else {
   if(i59<-2.2466708742285846e-06){
    if(i32<0.004102589562535286){
     s0+=3.0;
     s1+=1033.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=26.0;
   }
  }
 }
} else {
 if(i8<1.0164668560028076){
  if(i19<0.019327253103256226){
   if(i2<0.0014296174049377441){
    if(i53<0.0007421376067213714){
     s0+=1387.0;
     s1+=628.0;
    } else {
     s0+=2964.0;
     s1+=132.0;
    }
   } else {
    if(i27<0.0012980165192857385){
     s1+=755.0;
    } else {
     s0+=609.0;
     s1+=336.0;
    }
   }
  } else {
   if(i12<0.0720953643321991){
    if(i79<0.0057051777839660645){
     s0+=365.0;
     s1+=483.0;
    } else {
     s0+=153.0;
     s1+=18.0;
    }
   } else {
    if(i41<0.987921953201294){
     s0+=59.0;
     s1+=116.0;
    } else {
     s0+=116.0;
     s1+=3067.0;
    }
   }
  }
 } else {
  if(i20<1.0200309753417969){
   if(i1<-8.807845006231219e-05){
    if(i4<1.0003986358642578){
     s0+=5.0;
    } else {
     s0+=21.0;
     s1+=1294.0;
    }
   } else {
    if(i15<0.00039409453165717423){
     s0+=80.0;
     s1+=507.0;
    } else {
     s0+=192.0;
     s1+=23.0;
    }
   }
  } else {
   if(i12<0.10482865571975708){
    if(i15<0.0008043099078349769){
     s0+=8.0;
     s1+=846.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i33<0.0013669633772224188){
     s0+=3.0;
     s1+=17.0;
    } else {
     s1+=10307.0;
    }
   }
  }
 }
}
if(i1<-9.114234853768721e-05){
 if(i25<0.8916984796524048){
  if(i26<1.0851237773895264){
   if(i6<7.200241088867188e-05){
    if(i72<0.04987782984972){
     s0+=520.0;
     s1+=16.0;
    } else {
     s0+=14.0;
     s1+=9.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i45<0.13839730620384216){
    if(i64<0.0019676724914461374){
     s0+=76.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i30<0.0023055970668792725){
     s0+=25.0;
     s1+=23.0;
    } else {
     s0+=11.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i9<0.9420915842056274){
   if(i43<0.03625115752220154){
    s0+=114.0;
   } else {
    if(i9<0.9183850288391113){
     s0+=2.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i51<0.9981522560119629){
    s0+=189.0;
   } else {
    if(i27<0.0021068076603114605){
     s0+=113.0;
     s1+=831.0;
    } else {
     s0+=126.0;
     s1+=14784.0;
    }
   }
  }
 }
} else {
 if(i6<1.901388168334961e-05){
  if(i14<0.0015701677184551954){
   if(i20<0.9957698583602905){
    if(i57<0.9996161460876465){
     s0+=10412.0;
     s1+=22.0;
    } else {
     s0+=5520.0;
     s1+=382.0;
    }
   } else {
    if(i65<0.0010490257991477847){
     s0+=69347.0;
     s1+=257.0;
    } else {
     s0+=714.0;
     s1+=55.0;
    }
   }
  } else {
   if(i27<0.001182423671707511){
    if(i32<0.001191586023196578){
     s0+=1260.0;
     s1+=2359.0;
    } else {
     s0+=1035.0;
    }
   } else {
    if(i37<1.121600866317749){
     s0+=19609.0;
     s1+=573.0;
    } else {
     s0+=272.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i19<0.008101139217615128){
   if(i44<-2.3325730580836535e-05){
    if(i34<1.1180615425109863){
     s1+=685.0;
    } else {
     s0+=145.0;
     s1+=18.0;
    }
   } else {
    if(i33<0.0009236931800842285){
     s0+=1815.0;
     s1+=542.0;
    } else {
     s0+=3506.0;
     s1+=35.0;
    }
   }
  } else {
   if(i3<1.001251459121704){
    if(i32<0.0012091011740267277){
     s0+=14.0;
     s1+=58.0;
    } else {
     s0+=910.0;
     s1+=175.0;
    }
   } else {
    if(i14<0.002067524939775467){
     s0+=337.0;
     s1+=166.0;
    } else {
     s0+=492.0;
     s1+=2750.0;
    }
   }
  }
 }
}
if(i1<-9.505248453933746e-05){
 if(i20<0.9494333267211914){
  if(i43<0.1064581573009491){
   if(i37<1.108560562133789){
    if(i73<-0.013444662094116211){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=626.0;
     s1+=30.0;
    }
   } else {
    if(i33<0.010268379002809525){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  } else {
   if(i35<0.8548354506492615){
    if(i58<1.002661108970642){
     s1+=4.0;
    } else {
     s0+=9.0;
    }
   } else {
    s1+=64.0;
   }
  }
 } else {
  if(i51<0.998097836971283){
   s0+=162.0;
  } else {
   if(i59<-5.289870023261756e-05){
    s0+=73.0;
   } else {
    if(i12<0.015959322452545166){
     s0+=104.0;
     s1+=80.0;
    } else {
     s0+=70.0;
     s1+=15387.0;
    }
   }
  }
 }
} else {
 if(i0<6.335973739624023e-05){
  if(i6<2.294778823852539e-05){
   if(i24<8.219480514526367e-05){
    if(i12<0.23061108589172363){
     s0+=78036.0;
     s1+=845.0;
    } else {
     s0+=83.0;
     s1+=64.0;
    }
   } else {
    if(i7<0.003796791424974799){
     s0+=25312.0;
     s1+=606.0;
    } else {
     s0+=6259.0;
     s1+=3009.0;
    }
   }
  } else {
   if(i7<0.004437560215592384){
    if(i24<0.00040477514266967773){
     s0+=198.0;
     s1+=63.0;
    } else {
     s0+=2872.0;
     s1+=1.0;
    }
   } else {
    if(i47<1.8740665836958215e-05){
     s0+=132.0;
     s1+=1011.0;
    } else {
     s0+=866.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i53<0.0007874143775552511){
   if(i53<0.00012919495929963887){
    if(i15<0.0005490218172781169){
     s1+=34.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i32<0.0014132998185232282){
     s0+=6.0;
     s1+=1523.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i15<0.00039578202995471656){
    if(i7<0.0045725456438958645){
     s0+=95.0;
     s1+=52.0;
    } else {
     s0+=10.0;
     s1+=1042.0;
    }
   } else {
    if(i33<0.01294289156794548){
     s0+=1618.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=84.0;
    }
   }
  }
 }
}
if(i13<1.0170316696166992){
 if(i1<-8.464543498121202e-05){
  if(i12<0.017889678478240967){
   if(i9<0.9747002124786377){
    if(i69<0.024193361401557922){
     s0+=701.0;
     s1+=13.0;
    } else {
     s0+=89.0;
     s1+=35.0;
    }
   } else {
    if(i24<0.0009272098541259766){
     s0+=5.0;
     s1+=72.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i66<0.00011246932263020426){
    if(i52<1.531839370727539e-05){
     s0+=51.0;
     s1+=202.0;
    } else {
     s0+=198.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.07168558239936829){
     s0+=217.0;
     s1+=462.0;
    } else {
     s0+=90.0;
     s1+=3307.0;
    }
   }
  }
 } else {
  if(i4<1.0023963451385498){
   if(i32<0.0007080128416419029){
    if(i32<0.0005504889413714409){
     s0+=68533.0;
     s1+=153.0;
    } else {
     s0+=9504.0;
     s1+=305.0;
    }
   } else {
    if(i34<1.1160998344421387){
     s0+=4367.0;
     s1+=2742.0;
    } else {
     s0+=25560.0;
     s1+=568.0;
    }
   }
  } else {
   if(i52<9.119510650634766e-06){
    if(i53<0.0006878870772197843){
     s0+=205.0;
     s1+=990.0;
    } else {
     s0+=1177.0;
     s1+=696.0;
    }
   } else {
    if(i7<0.00565848546102643){
     s0+=3525.0;
     s1+=129.0;
    } else {
     s0+=625.0;
     s1+=642.0;
    }
   }
  }
 }
} else {
 if(i0<1.6629695892333984e-05){
  if(i14<0.005125298164784908){
   if(i19<0.02762436680495739){
    if(i46<-7.510639989050105e-06){
     s0+=270.0;
     s1+=49.0;
    } else {
     s0+=323.0;
    }
   } else {
    if(i10<0.999860405921936){
     s0+=118.0;
    } else {
     s0+=40.0;
     s1+=129.0;
    }
   }
  } else {
   if(i47<7.528423157054931e-05){
    s1+=210.0;
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i19<0.005277448333799839){
   if(i41<1.0148398876190186){
    if(i32<0.0009727048454806209){
     s0+=163.0;
     s1+=158.0;
    } else {
     s0+=356.0;
     s1+=28.0;
    }
   } else {
    s1+=312.0;
   }
  } else {
   if(i50<-6.4194418882834725e-06){
    s0+=80.0;
   } else {
    if(i22<1.7041046619415283){
     s0+=177.0;
     s1+=13243.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
}
if(i41<1.00789213180542){
 if(i12<0.1999807357788086){
  if(i5<0.0003440976142883301){
   if(i4<0.9994903802871704){
    if(i19<0.09125332534313202){
     s0+=52987.0;
     s1+=293.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i19<0.007792222313582897){
     s0+=42755.0;
     s1+=480.0;
    } else {
     s0+=8996.0;
     s1+=2170.0;
    }
   }
  } else {
   if(i49<-0.00020023013348691165){
    if(i30<0.06074783205986023){
     s0+=672.0;
     s1+=279.0;
    } else {
     s0+=881.0;
     s1+=2512.0;
    }
   } else {
    if(i18<-2.5928020477294922e-05){
     s0+=2158.0;
     s1+=908.0;
    } else {
     s0+=5591.0;
     s1+=427.0;
    }
   }
  }
 } else {
  if(i32<0.0006084715714678168){
   if(i6<2.4974346160888672e-05){
    if(i26<1.1014058589935303){
     s0+=12.0;
     s1+=8.0;
    } else {
     s0+=205.0;
     s1+=1.0;
    }
   } else {
    if(i27<0.0022579547949135303){
     s0+=7.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i42<0.0019170173909515142){
    if(i1<-7.854744035284966e-05){
     s1+=13.0;
    } else {
     s0+=58.0;
     s1+=4.0;
    }
   } else {
    if(i27<0.006905077490955591){
     s0+=81.0;
     s1+=711.0;
    } else {
     s0+=8.0;
     s1+=2382.0;
    }
   }
  }
 }
} else {
 if(i18<0.0020006895065307617){
  if(i40<0.028408251702785492){
   if(i22<1.1180615425109863){
    if(i19<0.0010591540485620499){
     s0+=6.0;
     s1+=9.0;
    } else {
     s1+=1036.0;
    }
   } else {
    if(i8<1.0207617282867432){
     s0+=2022.0;
     s1+=50.0;
    } else {
     s0+=20.0;
     s1+=75.0;
    }
   }
  } else {
   if(i59<-4.511582119448576e-06){
    if(i27<0.002103880513459444){
     s0+=11.0;
     s1+=47.0;
    } else {
     s0+=14.0;
     s1+=1826.0;
    }
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i52<-0.0004240274429321289){
   s0+=6.0;
  } else {
   if(i70<5.229548605711898e-06){
    s1+=11078.0;
   } else {
    s0+=20.0;
   }
  }
 }
}
if(i2<0.0009613633155822754){
 if(i13<1.0190471410751343){
  if(i1<-9.171530837193131e-05){
   if(i66<0.0029035983607172966){
    if(i7<0.008562128990888596){
     s0+=89.0;
     s1+=31.0;
    } else {
     s0+=157.0;
     s1+=1222.0;
    }
   } else {
    if(i43<0.033980756998062134){
     s0+=560.0;
     s1+=45.0;
    } else {
     s0+=59.0;
     s1+=127.0;
    }
   }
  } else {
   if(i32<0.0007118352805264294){
    if(i42<0.0020945435389876366){
     s0+=77637.0;
     s1+=358.0;
    } else {
     s0+=2722.0;
     s1+=136.0;
    }
   } else {
    if(i15<0.00022071399143896997){
     s0+=6441.0;
     s1+=3140.0;
    } else {
     s0+=25879.0;
     s1+=1471.0;
    }
   }
  }
 } else {
  if(i41<1.0001518726348877){
   if(i32<0.0020789243280887604){
    if(i23<0.2663911283016205){
     s0+=512.0;
     s1+=151.0;
    } else {
     s0+=11.0;
     s1+=55.0;
    }
   } else {
    if(i26<1.1081805229187012){
     s0+=7.0;
    } else {
     s1+=317.0;
    }
   }
  } else {
   if(i46<-1.2364516805973835e-05){
    if(i57<1.0029451847076416){
     s0+=24.0;
     s1+=803.0;
    } else {
     s0+=106.0;
     s1+=135.0;
    }
   } else {
    if(i29<1.3947486877441406e-05){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=88.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007036929600872099){
  if(i8<1.0133442878723145){
   if(i59<-4.990785328118363e-06){
    if(i30<0.0006538331508636475){
     s0+=35.0;
     s1+=43.0;
    } else {
     s0+=182.0;
     s1+=3035.0;
    }
   } else {
    s0+=39.0;
   }
  } else {
   if(i59<-4.172325134277344e-06){
    if(i7<0.004606984090059996){
     s0+=21.0;
     s1+=891.0;
    } else {
     s0+=2.0;
     s1+=12500.0;
    }
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i35<1.1597455739974976){
   s0+=1804.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i0<6.240606307983398e-05){
 if(i6<1.5079975128173828e-05){
  if(i7<0.0035355393774807453){
   if(i66<0.0001810542307794094){
    if(i19<0.006406474858522415){
     s0+=58413.0;
     s1+=100.0;
    } else {
     s0+=11307.0;
     s1+=215.0;
    }
   } else {
    if(i3<0.9974206686019897){
     s0+=9871.0;
     s1+=52.0;
    } else {
     s0+=3814.0;
     s1+=577.0;
    }
   }
  } else {
   if(i2<-0.0004063844680786133){
    if(i12<0.1951809823513031){
     s0+=21087.0;
     s1+=610.0;
    } else {
     s0+=93.0;
     s1+=222.0;
    }
   } else {
    if(i59<-2.6290665573469596e-06){
     s0+=636.0;
     s1+=1999.0;
    } else {
     s0+=991.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i36<1.179929256439209){
   if(i13<1.016669750213623){
    if(i40<0.014391042292118073){
     s0+=4929.0;
     s1+=407.0;
    } else {
     s0+=1270.0;
     s1+=846.0;
    }
   } else {
    if(i4<1.0037024021148682){
     s0+=68.0;
     s1+=530.0;
    } else {
     s0+=328.0;
     s1+=39.0;
    }
   }
  } else {
   if(i8<1.0169942378997803){
    if(i30<0.08235672116279602){
     s0+=1075.0;
     s1+=268.0;
    } else {
     s0+=338.0;
     s1+=1298.0;
    }
   } else {
    if(i56<0.018886320292949677){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=4.0;
     s1+=578.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007040285272523761){
  if(i7<0.004063091240823269){
   if(i28<0.0010615470819175243){
    if(i29<0.00012618303298950195){
     s0+=1.0;
    } else {
     s1+=701.0;
    }
   } else {
    if(i16<1.0114741325378418){
     s0+=290.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=284.0;
    }
   }
  } else {
   if(i23<0.0003789663314819336){
    if(i57<1.0031156539916992){
     s0+=34.0;
     s1+=2.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i2<0.0008175969123840332){
     s0+=21.0;
    } else {
     s0+=89.0;
     s1+=15604.0;
    }
   }
  }
 } else {
  if(i9<1.077824592590332){
   s0+=1772.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i11<1.0181405544281006){
 if(i29<0.00021320581436157227){
  if(i1<-8.67880298756063e-05){
   if(i44<0.00033628378878347576){
    if(i30<0.04277065396308899){
     s0+=252.0;
     s1+=113.0;
    } else {
     s0+=80.0;
     s1+=1936.0;
    }
   } else {
    if(i43<0.06646415591239929){
     s0+=738.0;
     s1+=83.0;
    } else {
     s0+=33.0;
     s1+=171.0;
    }
   }
  } else {
   if(i7<0.0036337929777801037){
    if(i34<1.0905578136444092){
     s0+=24186.0;
     s1+=824.0;
    } else {
     s0+=65660.0;
     s1+=315.0;
    }
   } else {
    if(i0<-2.205371856689453e-05){
     s0+=21516.0;
     s1+=721.0;
    } else {
     s0+=1876.0;
     s1+=3685.0;
    }
   }
  }
 } else {
  if(i18<0.0020006299018859863){
   if(i34<1.0958912372589111){
    s1+=454.0;
   } else {
    if(i3<1.0102019309997559){
     s0+=649.0;
     s1+=141.0;
    } else {
     s0+=2.0;
     s1+=96.0;
    }
   }
  } else {
   if(i3<1.0057156085968018){
    if(i66<0.0001439721672795713){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i59<-3.875170659739524e-05){
     s0+=6.0;
     s1+=36.0;
    } else {
     s1+=1724.0;
    }
   }
  }
 }
} else {
 if(i0<1.6510486602783203e-05){
  if(i1<-5.877316652913578e-05){
   if(i47<1.1498585081426427e-05){
    s0+=20.0;
   } else {
    if(i7<0.005514475516974926){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=380.0;
    }
   }
  } else {
   if(i24<8.928775787353516e-05){
    if(i7<0.006925075314939022){
     s0+=348.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i28<0.00606960104778409){
     s0+=202.0;
     s1+=158.0;
    } else {
     s0+=123.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i33<0.0017347559332847595){
   if(i27<0.0012155151925981045){
    if(i59<-4.736478331324179e-06){
     s1+=1030.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i34<1.0970759391784668){
     s1+=59.0;
    } else {
     s0+=516.0;
     s1+=7.0;
    }
   }
  } else {
   if(i30<0.10602173209190369){
    if(i3<1.006709098815918){
     s0+=106.0;
     s1+=28.0;
    } else {
     s0+=4.0;
     s1+=79.0;
    }
   } else {
    if(i46<-9.455350664211437e-06){
     s0+=57.0;
     s1+=12301.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
}
if(i2<0.0009577274322509766){
 if(i6<1.6033649444580078e-05){
  if(i30<0.24078291654586792){
   if(i7<0.00342957628890872){
    if(i66<0.0001658809487707913){
     s0+=68394.0;
     s1+=276.0;
    } else {
     s0+=14875.0;
     s1+=608.0;
    }
   } else {
    if(i2<-0.0003660917282104492){
     s0+=22337.0;
     s1+=808.0;
    } else {
     s0+=1646.0;
     s1+=1967.0;
    }
   }
  } else {
   if(i59<-3.048563485208433e-06){
    if(i14<0.00243567768484354){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=318.0;
    }
   } else {
    if(i67<1.927520861499943e-05){
     s0+=74.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i44<1.5457437257282436e-05){
   if(i9<1.0166175365447998){
    if(i18<0.001123666763305664){
     s0+=4551.0;
     s1+=324.0;
    } else {
     s0+=59.0;
     s1+=100.0;
    }
   } else {
    if(i19<0.005875525996088982){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=99.0;
    }
   }
  } else {
   if(i43<0.12744277715682983){
    if(i2<5.549192428588867e-05){
     s0+=1814.0;
     s1+=313.0;
    } else {
     s0+=754.0;
     s1+=1462.0;
    }
   } else {
    if(i1<-4.240028647473082e-05){
     s0+=55.0;
     s1+=1410.0;
    } else {
     s0+=187.0;
     s1+=217.0;
    }
   }
  }
 }
} else {
 if(i27<0.0023654235992580652){
  if(i42<0.0010254615917801857){
   if(i21<0.00020642380695790052){
    s0+=60.0;
   } else {
    if(i36<1.1209661960601807){
     s0+=3.0;
     s1+=2306.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i64<0.0007034012232907116){
    if(i39<1.0940982103347778){
     s1+=45.0;
    } else {
     s0+=1920.0;
    }
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i12<0.009231925010681152){
   if(i33<0.019042596220970154){
    if(i63<-0.004013031721115112){
     s0+=49.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s1+=34.0;
   }
  } else {
   if(i23<0.0969369113445282){
    if(i77<0.025588393211364746){
     s0+=19.0;
     s1+=443.0;
    } else {
     s0+=37.0;
     s1+=38.0;
    }
   } else {
    if(i66<0.00471619563177228){
     s0+=13.0;
     s1+=13189.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i4<1.0026309490203857){
 if(i9<1.0116913318634033){
  if(i32<0.0006990906549617648){
   if(i22<1.0817922353744507){
    if(i39<1.0577976703643799){
     s0+=14896.0;
     s1+=73.0;
    } else {
     s0+=1086.0;
     s1+=210.0;
    }
   } else {
    if(i34<1.1758689880371094){
     s0+=56141.0;
     s1+=33.0;
    } else {
     s0+=5990.0;
     s1+=122.0;
    }
   }
  } else {
   if(i3<0.9979984760284424){
    if(i43<0.2066880762577057){
     s0+=23352.0;
     s1+=502.0;
    } else {
     s0+=25.0;
     s1+=183.0;
    }
   } else {
    if(i44<3.241576632717624e-05){
     s0+=5792.0;
     s1+=754.0;
    } else {
     s0+=2464.0;
     s1+=2675.0;
    }
   }
  }
 } else {
  if(i7<0.005077261012047529){
   if(i24<0.00011736154556274414){
    s0+=396.0;
   } else {
    if(i32<0.0010763194877654314){
     s0+=28.0;
     s1+=63.0;
    } else {
     s0+=149.0;
    }
   }
  } else {
   if(i15<0.0011687183286994696){
    if(i50<1.4507437526845024e-06){
     s0+=3.0;
     s1+=1039.0;
    } else {
     s0+=10.0;
     s1+=4.0;
    }
   } else {
    s0+=71.0;
   }
  }
 }
} else {
 if(i7<0.0034818619024008512){
  if(i58<1.0026603937149048){
   if(i32<0.0009009003406390548){
    if(i44<-1.7725536963553168e-05){
     s0+=20.0;
     s1+=670.0;
    } else {
     s0+=200.0;
     s1+=57.0;
    }
   } else {
    if(i9<1.029630422592163){
     s0+=1012.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i18<0.0025759339332580566){
    s0+=2909.0;
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i30<0.052055954933166504){
   if(i10<1.0049710273742676){
    if(i69<0.010193071328103542){
     s0+=469.0;
     s1+=42.0;
    } else {
     s0+=296.0;
     s1+=221.0;
    }
   } else {
    if(i15<0.0008337880717590451){
     s0+=4.0;
     s1+=220.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i2<7.587671279907227e-05){
    if(i37<1.085615634918213){
     s0+=413.0;
     s1+=133.0;
    } else {
     s0+=89.0;
     s1+=333.0;
    }
   } else {
    if(i8<1.0153131484985352){
     s0+=591.0;
     s1+=4297.0;
    } else {
     s0+=60.0;
     s1+=12706.0;
    }
   }
  }
 }
}
if(i7<0.007529483176767826){
 if(i44<-2.278166175528895e-05){
  if(i7<0.002009821590036154){
   if(i24<0.0008464455604553223){
    if(i16<1.008537769317627){
     s0+=43.0;
    } else {
     s1+=222.0;
    }
   } else {
    if(i13<1.0288456678390503){
     s0+=135.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i54<0.0006843990413472056){
    if(i26<1.1038200855255127){
     s1+=974.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   } else {
    if(i51<0.9992454051971436){
     s0+=48.0;
    } else {
     s0+=25.0;
     s1+=925.0;
    }
   }
  }
 } else {
  if(i7<0.0036111040972173214){
   if(i32<0.0005481978878378868){
    if(i27<0.0019055015873163939){
     s0+=63756.0;
     s1+=72.0;
    } else {
     s0+=2216.0;
     s1+=89.0;
    }
   } else {
    if(i68<0.0002712603018153459){
     s0+=10596.0;
     s1+=807.0;
    } else {
     s0+=14340.0;
     s1+=185.0;
    }
   }
  } else {
   if(i5<-0.00010251998901367188){
    if(i5<-0.00020629167556762695){
     s0+=16078.0;
     s1+=46.0;
    } else {
     s0+=556.0;
     s1+=95.0;
    }
   } else {
    if(i10<0.9939833283424377){
     s0+=1882.0;
     s1+=395.0;
    } else {
     s0+=1393.0;
     s1+=3478.0;
    }
   }
  }
 }
} else {
 if(i5<0.00027751922607421875){
  if(i0<-3.4809112548828125e-05){
   if(i64<-0.005230084992945194){
    if(i19<0.049224939197301865){
     s0+=4.0;
    } else {
     s1+=78.0;
    }
   } else {
    if(i30<0.20602107048034668){
     s0+=3765.0;
     s1+=156.0;
    } else {
     s1+=97.0;
    }
   }
  } else {
   if(i63<-0.0056507885456085205){
    if(i4<0.9997231960296631){
     s1+=7.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i18<-0.0029133260250091553){
     s0+=3.0;
     s1+=3.0;
    } else {
     s1+=344.0;
    }
   }
  }
 } else {
  if(i63<-0.005326002836227417){
   if(i20<0.9589568376541138){
    if(i26<1.085817575454712){
     s0+=779.0;
     s1+=113.0;
    } else {
     s0+=143.0;
     s1+=259.0;
    }
   } else {
    if(i46<-3.615965397330001e-05){
     s0+=4.0;
     s1+=377.0;
    } else {
     s0+=12.0;
     s1+=12.0;
    }
   }
  } else {
   if(i10<0.982795000076294){
    if(i49<-0.00016545355902053416){
     s0+=41.0;
     s1+=210.0;
    } else {
     s0+=324.0;
     s1+=42.0;
    }
   } else {
    if(i18<-0.0018638968467712402){
     s0+=136.0;
     s1+=782.0;
    } else {
     s0+=99.0;
     s1+=14621.0;
    }
   }
  }
 }
}
if(i1<-0.00010638976527843624){
 if(i23<0.04118296504020691){
  if(i29<-0.0003515481948852539){
   if(i22<1.378669261932373){
    if(i78<-0.02087479829788208){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=44.0;
     s1+=13.0;
    }
   } else {
    if(i73<-0.02192285656929016){
     s1+=4.0;
    } else {
     s0+=387.0;
     s1+=11.0;
    }
   }
  } else {
   if(i24<0.0012128055095672607){
    if(i73<-0.007541567087173462){
     s0+=6.0;
     s1+=71.0;
    } else {
     s0+=10.0;
     s1+=10.0;
    }
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i15<0.0007059713825583458){
   if(i26<1.0160033702850342){
    if(i30<0.10339200496673584){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i59<-6.135476724011824e-05){
     s0+=72.0;
    } else {
     s0+=45.0;
     s1+=14789.0;
    }
   }
  } else {
   s0+=137.0;
  }
 }
} else {
 if(i6<1.8417835235595703e-05){
  if(i22<1.1162974834442139){
   if(i19<0.007394314743578434){
    if(i10<1.005840539932251){
     s0+=21450.0;
     s1+=459.0;
    } else {
     s0+=28.0;
     s1+=80.0;
    }
   } else {
    if(i4<0.9999300241470337){
     s0+=6400.0;
     s1+=376.0;
    } else {
     s0+=311.0;
     s1+=1949.0;
    }
   }
  } else {
   if(i7<0.00692296726629138){
    if(i21<0.0019596852362155914){
     s0+=50719.0;
    } else {
     s0+=23898.0;
     s1+=531.0;
    }
   } else {
    if(i12<0.13813021779060364){
     s0+=4920.0;
     s1+=132.0;
    } else {
     s0+=177.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i20<1.017743706703186){
   if(i47<-1.2571907063829713e-05){
    if(i51<0.9998430013656616){
     s0+=56.0;
    } else {
     s0+=41.0;
     s1+=918.0;
    }
   } else {
    if(i19<0.008101139217615128){
     s0+=5644.0;
     s1+=646.0;
    } else {
     s0+=2006.0;
     s1+=2456.0;
    }
   }
  } else {
   if(i23<0.06950139999389648){
    if(i52<1.1205673217773438e-05){
     s0+=3.0;
     s1+=47.0;
    } else {
     s0+=43.0;
     s1+=4.0;
    }
   } else {
    if(i24<0.0012267827987670898){
     s0+=33.0;
     s1+=1427.0;
    } else {
     s0+=30.0;
    }
   }
  }
 }
}
if(i17<1.0177061557769775){
 if(i3<1.00386643409729){
  if(i1<-9.168998076347634e-05){
   if(i64<-0.0007833406561985612){
    if(i55<0.11581478267908096){
     s0+=65.0;
     s1+=25.0;
    } else {
     s0+=43.0;
     s1+=850.0;
    }
   } else {
    if(i29<-0.0005581378936767578){
     s0+=610.0;
     s1+=58.0;
    } else {
     s0+=161.0;
     s1+=133.0;
    }
   }
  } else {
   if(i30<0.2441096007823944){
    if(i40<0.012021159753203392){
     s0+=68963.0;
     s1+=686.0;
    } else {
     s0+=41421.0;
     s1+=3719.0;
    }
   } else {
    if(i7<0.006178768817335367){
     s0+=53.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i14<0.0020022301468998194){
   if(i2<0.0017949938774108887){
    if(i7<0.002716339658945799){
     s0+=2552.0;
     s1+=1.0;
    } else {
     s0+=252.0;
     s1+=111.0;
    }
   } else {
    if(i51<0.9999319314956665){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=531.0;
    }
   }
  } else {
   if(i27<0.0021811840124428272){
    if(i33<0.001194103853777051){
     s0+=96.0;
     s1+=992.0;
    } else {
     s0+=732.0;
     s1+=39.0;
    }
   } else {
    if(i30<0.08588147163391113){
     s0+=84.0;
     s1+=361.0;
    } else {
     s0+=34.0;
     s1+=2659.0;
    }
   }
  }
 }
} else {
 if(i57<1.0008220672607422){
  if(i28<0.013882864266633987){
   if(i36<1.0905578136444092){
    s1+=158.0;
   } else {
    if(i57<1.0007611513137817){
     s0+=506.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=356.0;
  }
 } else {
  if(i1<-6.13514130236581e-05){
   if(i59<-6.348478200379759e-05){
    s0+=21.0;
   } else {
    if(i70<2.490762653906131e-06){
     s0+=81.0;
     s1+=12787.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i58<1.0036402940750122){
    if(i7<0.0031536752358078957){
     s0+=234.0;
     s1+=77.0;
    } else {
     s0+=18.0;
     s1+=680.0;
    }
   } else {
    if(i14<0.00374052207916975){
     s0+=408.0;
     s1+=5.0;
    } else {
     s0+=14.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i41<1.0079200267791748){
 if(i14<0.0019662748090922832){
  if(i27<0.0006751233013346791){
   if(i24<2.580881118774414e-05){
    if(i51<1.0002280473709106){
     s0+=19564.0;
     s1+=73.0;
    } else {
     s0+=3684.0;
     s1+=329.0;
    }
   } else {
    if(i60<0.016587432473897934){
     s0+=5383.0;
     s1+=252.0;
    } else {
     s0+=985.0;
     s1+=568.0;
    }
   }
  } else {
   if(i37<1.1172127723693848){
    if(i65<-0.0013284317683428526){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=63995.0;
     s1+=225.0;
    }
   } else {
    if(i47<1.0498615665710531e-05){
     s0+=1187.0;
     s1+=2.0;
    } else {
     s0+=464.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i11<1.012266755104065){
   if(i7<0.004111211746931076){
    if(i10<1.0059077739715576){
     s0+=8367.0;
     s1+=71.0;
    } else {
     s0+=330.0;
     s1+=54.0;
    }
   } else {
    if(i2<-0.00039121508598327637){
     s0+=8736.0;
     s1+=901.0;
    } else {
     s0+=1269.0;
     s1+=3799.0;
    }
   }
  } else {
   if(i12<0.1770145297050476){
    if(i3<1.0008389949798584){
     s0+=463.0;
     s1+=112.0;
    } else {
     s0+=392.0;
     s1+=1216.0;
    }
   } else {
    if(i3<1.001261591911316){
     s0+=54.0;
     s1+=242.0;
    } else {
     s0+=13.0;
     s1+=2077.0;
    }
   }
  }
 }
} else {
 if(i50<-7.755489605187904e-06){
  s0+=565.0;
 } else {
  if(i18<0.0018758773803710938){
   if(i14<0.0018452213844284415){
    if(i21<0.0006851349025964737){
     s1+=296.0;
    } else {
     s0+=1203.0;
     s1+=2.0;
    }
   } else {
    if(i57<1.000788688659668){
     s0+=68.0;
     s1+=11.0;
    } else {
     s0+=254.0;
     s1+=2382.0;
    }
   }
  } else {
   if(i70<1.2934069673065096e-05){
    if(i19<0.002664675237610936){
     s0+=3.0;
     s1+=135.0;
    } else {
     s1+=11003.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i5<0.0003224015235900879){
  if(i37<1.191728115081787){
   if(i14<0.001453259726986289){
    if(i14<0.0010444426443427801){
     s0+=70374.0;
     s1+=199.0;
    } else {
     s0+=10675.0;
     s1+=346.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=1949.0;
     s1+=1817.0;
    } else {
     s0+=21394.0;
     s1+=717.0;
    }
   }
  } else {
   if(i19<0.042252831161022186){
    s0+=229.0;
   } else {
    s1+=266.0;
   }
  }
 } else {
  if(i20<1.0093096494674683){
   if(i40<0.017144910991191864){
    if(i33<0.0006324277492240071){
     s0+=1145.0;
     s1+=273.0;
    } else {
     s0+=2742.0;
     s1+=18.0;
    }
   } else {
    if(i2<-0.0002079606056213379){
     s0+=815.0;
     s1+=179.0;
    } else {
     s0+=250.0;
     s1+=802.0;
    }
   }
  } else {
   if(i1<-3.5482386010698974e-05){
    if(i51<0.9984994530677795){
     s0+=54.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=588.0;
    }
   } else {
    if(i36<1.0886253118515015){
     s1+=34.0;
    } else {
     s0+=191.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i36<1.171312928199768){
  if(i20<1.016809105873108){
   if(i21<0.0009706164710223675){
    if(i40<0.005359882488846779){
     s0+=1176.0;
     s1+=206.0;
    } else {
     s0+=109.0;
     s1+=1561.0;
    }
   } else {
    if(i39<1.1758689880371094){
     s0+=3575.0;
     s1+=105.0;
    } else {
     s0+=438.0;
     s1+=479.0;
    }
   }
  } else {
   if(i15<0.0003233443130739033){
    if(i51<1.0020463466644287){
     s0+=12.0;
     s1+=1597.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i79<0.014038443565368652){
     s0+=169.0;
     s1+=2.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i23<0.07092666625976562){
   if(i16<1.011608600616455){
    if(i37<1.0747318267822266){
     s0+=753.0;
     s1+=106.0;
    } else {
     s0+=30.0;
     s1+=159.0;
    }
   } else {
    if(i52<9.834766387939453e-06){
     s0+=39.0;
     s1+=38.0;
    } else {
     s0+=12.0;
     s1+=142.0;
    }
   }
  } else {
   if(i30<0.1575622260570526){
    if(i72<0.0017071808688342571){
     s0+=166.0;
     s1+=161.0;
    } else {
     s0+=129.0;
     s1+=1621.0;
    }
   } else {
    if(i2<-3.5643577575683594e-05){
     s0+=31.0;
     s1+=159.0;
    } else {
     s0+=20.0;
     s1+=12747.0;
    }
   }
  }
 }
}
if(i5<0.0005705356597900391){
 if(i1<-8.068525494309142e-05){
  if(i37<1.071354627609253){
   if(i49<-0.00040700408862903714){
    if(i23<0.13392791152000427){
     s0+=77.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   } else {
    if(i71<0.12699782848358154){
     s0+=733.0;
     s1+=25.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i19<0.01371884997934103){
    s0+=51.0;
   } else {
    if(i48<0.8976291418075562){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=872.0;
    }
   }
  }
 } else {
  if(i4<0.9995007514953613){
   if(i62<-0.0005671083927154541){
    if(i30<0.24091240763664246){
     s0+=13595.0;
     s1+=262.0;
    } else {
     s0+=23.0;
     s1+=22.0;
    }
   } else {
    if(i34<1.0650897026062012){
     s0+=7390.0;
     s1+=42.0;
    } else {
     s0+=31794.0;
     s1+=7.0;
    }
   }
  } else {
   if(i40<0.015699975192546844){
    if(i39<1.0780352354049683){
     s0+=10116.0;
     s1+=960.0;
    } else {
     s0+=35037.0;
     s1+=194.0;
    }
   } else {
    if(i34<1.094810962677002){
     s0+=612.0;
     s1+=1576.0;
    } else {
     s0+=10179.0;
     s1+=1200.0;
    }
   }
  }
 }
} else {
 if(i39<1.1757044792175293){
  if(i24<0.0005105137825012207){
   if(i51<0.9996745586395264){
    s0+=641.0;
   } else {
    if(i68<0.0005469095194712281){
     s0+=18.0;
     s1+=2914.0;
    } else {
     s0+=174.0;
     s1+=217.0;
    }
   }
  } else {
   if(i27<0.004911448806524277){
    if(i21<0.007745160721242428){
     s0+=4261.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i43<0.06660622358322144){
     s1+=8.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i0<3.516674041748047e-06){
   if(i68<0.0033643674105405807){
    if(i49<-0.0005167142953723669){
     s0+=117.0;
     s1+=113.0;
    } else {
     s0+=712.0;
     s1+=86.0;
    }
   } else {
    if(i60<0.4160791039466858){
     s0+=96.0;
     s1+=89.0;
    } else {
     s1+=82.0;
    }
   }
  } else {
   if(i12<0.06775999069213867){
    if(i73<-0.0018931925296783447){
     s0+=152.0;
     s1+=396.0;
    } else {
     s0+=266.0;
     s1+=17.0;
    }
   } else {
    if(i34<1.19221830368042){
     s0+=82.0;
     s1+=202.0;
    } else {
     s0+=120.0;
     s1+=15228.0;
    }
   }
  }
 }
}
if(i11<1.0181405544281006){
 if(i57<1.001725435256958){
  if(i41<1.0074808597564697){
   if(i14<0.0015694904141128063){
    if(i14<0.001120442757382989){
     s0+=72309.0;
     s1+=247.0;
    } else {
     s0+=10640.0;
     s1+=453.0;
    }
   } else {
    if(i6<-2.4437904357910156e-06){
     s0+=15806.0;
     s1+=514.0;
    } else {
     s0+=4724.0;
     s1+=2862.0;
    }
   }
  } else {
   if(i22<1.116804838180542){
    if(i31<1.0351943969726562){
     s0+=5.0;
    } else {
     s1+=523.0;
    }
   } else {
    if(i31<1.2168467044830322){
     s0+=432.0;
     s1+=8.0;
    } else {
     s1+=135.0;
    }
   }
  }
 } else {
  if(i0<7.957220077514648e-05){
   if(i55<0.3927382230758667){
    if(i7<0.004387294873595238){
     s0+=7594.0;
     s1+=118.0;
    } else {
     s0+=2812.0;
     s1+=1412.0;
    }
   } else {
    if(i20<0.9500960111618042){
     s0+=218.0;
     s1+=50.0;
    } else {
     s0+=71.0;
     s1+=652.0;
    }
   }
  } else {
   if(i1<-7.593627378810197e-05){
    if(i6<0.00022161006927490234){
     s0+=64.0;
     s1+=2368.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i37<1.0539100170135498){
     s0+=13.0;
     s1+=551.0;
    } else {
     s0+=592.0;
     s1+=259.0;
    }
   }
  }
 }
} else {
 if(i46<-1.1531976269907318e-05){
  if(i19<0.005390217527747154){
   if(i15<0.00027990975650027394){
    if(i46<-1.3907902030041441e-05){
     s0+=3.0;
     s1+=491.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.005925009027123451){
     s0+=377.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i1<-3.0025421438040212e-05){
    if(i8<1.0205715894699097){
     s0+=287.0;
     s1+=1848.0;
    } else {
     s0+=27.0;
     s1+=11462.0;
    }
   } else {
    if(i7<0.006514418870210648){
     s0+=199.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i10<1.0032227039337158){
   if(i36<1.1351547241210938){
    if(i5<0.0002440810203552246){
     s0+=112.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i9<1.014857292175293){
     s0+=37.0;
     s1+=57.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i44<4.3875654228031635e-05){
    s0+=348.0;
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i5<0.0002925992012023926){
  if(i21<0.015966322273015976){
   if(i7<0.00336261373013258){
    if(i26<1.0231759548187256){
     s0+=11927.0;
     s1+=467.0;
    } else {
     s0+=67663.0;
     s1+=367.0;
    }
   } else {
    if(i3<0.9984371662139893){
     s0+=22332.0;
     s1+=636.0;
    } else {
     s0+=1653.0;
     s1+=1541.0;
    }
   }
  } else {
   if(i12<0.06218677759170532){
    s0+=32.0;
   } else {
    s1+=163.0;
   }
  }
 } else {
  if(i42<0.0017954183276742697){
   if(i21<0.000939404359087348){
    if(i36<1.0452228784561157){
     s0+=2435.0;
    } else {
     s1+=1536.0;
    }
   } else {
    if(i56<0.04594844579696655){
     s0+=5541.0;
     s1+=98.0;
    } else {
     s0+=5.0;
     s1+=34.0;
    }
   }
  } else {
   if(i30<0.10528784990310669){
    if(i19<0.05545348674058914){
     s0+=1916.0;
     s1+=399.0;
    } else {
     s0+=103.0;
     s1+=219.0;
    }
   } else {
    if(i1<-4.394022835185751e-05){
     s0+=199.0;
     s1+=2065.0;
    } else {
     s0+=548.0;
     s1+=403.0;
    }
   }
  }
 }
} else {
 if(i40<0.019590675830841064){
  if(i32<0.0011117530521005392){
   if(i53<0.0009306753054261208){
    if(i49<-0.0010683487635105848){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=1944.0;
    }
   } else {
    if(i3<1.0103882551193237){
     s0+=597.0;
     s1+=134.0;
    } else {
     s1+=426.0;
    }
   }
  } else {
   if(i39<1.17277193069458){
    if(i62<0.004379928112030029){
     s0+=1392.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i23<0.04034504294395447){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=469.0;
    }
   }
  }
 } else {
  if(i22<1.1767785549163818){
   if(i22<1.1180615425109863){
    s1+=483.0;
   } else {
    s0+=144.0;
   }
  } else {
   if(i22<1.629280686378479){
    if(i63<-0.007788658142089844){
     s0+=42.0;
     s1+=105.0;
    } else {
     s0+=26.0;
     s1+=12124.0;
    }
   } else {
    if(i37<1.104602575302124){
     s0+=56.0;
     s1+=36.0;
    } else {
     s0+=3.0;
     s1+=555.0;
    }
   }
  }
 }
}
if(i4<1.0026319026947021){
 if(i17<1.0171293020248413){
  if(i19<0.08942355215549469){
   if(i14<0.0015701651573181152){
    if(i48<1.0100414752960205){
     s0+=9869.0;
     s1+=306.0;
    } else {
     s0+=76208.0;
     s1+=412.0;
    }
   } else {
    if(i34<1.1164028644561768){
     s0+=3982.0;
     s1+=2654.0;
    } else {
     s0+=19894.0;
     s1+=831.0;
    }
   }
  } else {
   if(i63<-0.01225253939628601){
    s0+=2.0;
   } else {
    s1+=242.0;
   }
  }
 } else {
  if(i4<1.0012531280517578){
   if(i46<-8.25608367449604e-06){
    if(i15<0.0011673631379380822){
     s0+=58.0;
     s1+=305.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i3<0.9956713914871216){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=444.0;
     s1+=1.0;
    }
   }
  } else {
   if(i57<1.0022555589675903){
    if(i7<0.003544746432453394){
     s0+=36.0;
    } else {
     s0+=14.0;
     s1+=838.0;
    }
   } else {
    if(i33<0.006164551712572575){
     s0+=59.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i7<0.004162720870226622){
  if(i44<-2.4859600671334192e-05){
   if(i21<0.0010901268105953932){
    s1+=600.0;
   } else {
    if(i4<1.0070364475250244){
     s0+=144.0;
     s1+=14.0;
    } else {
     s0+=9.0;
     s1+=224.0;
    }
   }
  } else {
   if(i58<1.0026297569274902){
    if(i22<1.0986645221710205){
     s0+=322.0;
     s1+=215.0;
    } else {
     s0+=808.0;
     s1+=99.0;
    }
   } else {
    if(i18<0.0029167532920837402){
     s0+=3144.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i20<0.9638034105300903){
   if(i16<1.011638879776001){
    if(i23<0.10151615738868713){
     s0+=655.0;
     s1+=106.0;
    } else {
     s0+=48.0;
     s1+=168.0;
    }
   } else {
    if(i56<0.018479036167263985){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=18.0;
     s1+=217.0;
    }
   }
  } else {
   if(i31<1.1285691261291504){
    if(i20<0.9947577714920044){
     s0+=499.0;
     s1+=359.0;
    } else {
     s0+=206.0;
     s1+=2365.0;
    }
   } else {
    if(i37<1.0553799867630005){
     s0+=64.0;
     s1+=341.0;
    } else {
     s0+=55.0;
     s1+=13905.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i7<0.014038044027984142){
  if(i2<0.0009393095970153809){
   if(i43<0.19467946887016296){
    if(i40<0.012013603001832962){
     s0+=70607.0;
     s1+=909.0;
    } else {
     s0+=41835.0;
     s1+=3884.0;
    }
   } else {
    if(i7<0.005535781383514404){
     s0+=254.0;
     s1+=31.0;
    } else {
     s0+=18.0;
     s1+=227.0;
    }
   }
  } else {
   if(i52<1.1980533599853516e-05){
    if(i57<1.0008788108825684){
     s0+=99.0;
    } else {
     s0+=199.0;
     s1+=1338.0;
    }
   } else {
    if(i39<1.1706266403198242){
     s0+=1362.0;
     s1+=21.0;
    } else {
     s0+=25.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i20<0.9440854787826538){
   if(i34<1.4667320251464844){
    if(i20<0.9365319013595581){
     s0+=660.0;
     s1+=8.0;
    } else {
     s0+=87.0;
     s1+=33.0;
    }
   } else {
    if(i72<0.017380252480506897){
     s0+=157.0;
     s1+=72.0;
    } else {
     s0+=33.0;
     s1+=114.0;
    }
   }
  } else {
   if(i43<0.01056787371635437){
    if(i40<0.10812830924987793){
     s0+=61.0;
     s1+=29.0;
    } else {
     s0+=8.0;
     s1+=131.0;
    }
   } else {
    if(i8<0.8821282982826233){
     s0+=2.0;
    } else {
     s0+=25.0;
     s1+=2750.0;
    }
   }
  }
 }
} else {
 if(i8<1.0200928449630737){
  if(i24<0.0007379055023193359){
   if(i53<0.0009474828839302063){
    if(i57<1.00023353099823){
     s0+=20.0;
    } else {
     s0+=4.0;
     s1+=1053.0;
    }
   } else {
    if(i21<0.0025603470858186483){
     s0+=248.0;
     s1+=109.0;
    } else {
     s0+=53.0;
     s1+=496.0;
    }
   }
  } else {
   if(i36<1.1714441776275635){
    if(i66<0.0005874219350516796){
     s0+=536.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   } else {
    if(i53<0.0007671755738556385){
     s0+=19.0;
    } else {
     s0+=13.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i46<-1.0876152373384684e-05){
   if(i7<0.0029354337602853775){
    if(i33<0.00380901200696826){
     s0+=23.0;
     s1+=118.0;
    } else {
     s0+=93.0;
     s1+=27.0;
    }
   } else {
    if(i10<1.0008442401885986){
     s0+=31.0;
     s1+=189.0;
    } else {
     s0+=17.0;
     s1+=12277.0;
    }
   }
  } else {
   if(i75<-0.011723164469003677){
    s1+=6.0;
   } else {
    s0+=125.0;
   }
  }
 }
}
if(i25<1.0207123756408691){
 if(i2<0.0010561943054199219){
  if(i14<0.0017809270648285747){
   if(i53<0.0006543331546708941){
    if(i29<-3.4868717193603516e-05){
     s0+=14720.0;
     s1+=733.0;
    } else {
     s0+=19456.0;
     s1+=84.0;
    }
   } else {
    if(i42<0.0018516925629228354){
     s0+=53440.0;
     s1+=44.0;
    } else {
     s0+=4220.0;
     s1+=142.0;
    }
   }
  } else {
   if(i21<0.0009248446440324187){
    if(i36<1.0452228784561157){
     s0+=2071.0;
     s1+=100.0;
    } else {
     s0+=145.0;
     s1+=2464.0;
    }
   } else {
    if(i5<0.00039774179458618164){
     s0+=16991.0;
     s1+=734.0;
    } else {
     s0+=2504.0;
     s1+=1931.0;
    }
   }
  }
 } else {
  if(i15<0.0007051959983073175){
   if(i10<0.975357174873352){
    if(i61<1.0239381790161133){
     s0+=53.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   } else {
    if(i70<-4.831522346648853e-06){
     s0+=8.0;
    } else {
     s0+=114.0;
     s1+=4390.0;
    }
   }
  } else {
   s0+=1206.0;
  }
 }
} else {
 if(i8<1.0164823532104492){
  if(i59<-3.586212415029877e-06){
   if(i49<-0.0002918688696809113){
    if(i1<-5.924931974732317e-05){
     s0+=31.0;
     s1+=893.0;
    } else {
     s0+=165.0;
     s1+=263.0;
    }
   } else {
    if(i22<1.116804838180542){
     s1+=206.0;
    } else {
     s0+=553.0;
     s1+=173.0;
    }
   }
  } else {
   if(i7<0.006599194370210171){
    if(i29<-0.0004902184009552002){
     s1+=1.0;
    } else {
     s0+=547.0;
    }
   } else {
    if(i22<1.1924176216125488){
     s0+=16.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i3<1.0012609958648682){
   if(i7<0.006030217278748751){
    s0+=182.0;
   } else {
    if(i40<0.01564817689359188){
     s0+=3.0;
    } else {
     s1+=116.0;
    }
   }
  } else {
   if(i59<-3.6791070670005865e-06){
    if(i52<2.9981136322021484e-05){
     s0+=129.0;
     s1+=11898.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   } else {
    s0+=26.0;
   }
  }
 }
}
if(i1<-9.269449219573289e-05){
 if(i20<0.9475822448730469){
  if(i23<0.07167559862136841){
   if(i60<0.006926802918314934){
    s1+=6.0;
   } else {
    if(i7<0.02175997942686081){
     s0+=550.0;
     s1+=2.0;
    } else {
     s0+=65.0;
     s1+=23.0;
    }
   }
  } else {
   if(i4<1.002687931060791){
    if(i53<0.0031021786853671074){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   } else {
    if(i25<0.8772004842758179){
     s0+=21.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i6<0.0002263188362121582){
   if(i50<-6.389312147803139e-06){
    if(i4<1.0096497535705566){
     s0+=228.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.9083379507064819){
     s0+=64.0;
     s1+=145.0;
    } else {
     s0+=92.0;
     s1+=15547.0;
    }
   }
  } else {
   s0+=76.0;
  }
 }
} else {
 if(i11<1.015717625617981){
  if(i47<-1.157034421339631e-05){
   if(i24<0.0016985535621643066){
    if(i4<1.0035028457641602){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=611.0;
    }
   } else {
    s0+=65.0;
   }
  } else {
   if(i5<0.0002810359001159668){
    if(i16<0.9973686933517456){
     s0+=37481.0;
     s1+=178.0;
    } else {
     s0+=64352.0;
     s1+=2294.0;
    }
   } else {
    if(i19<0.009619276970624924){
     s0+=9363.0;
     s1+=738.0;
    } else {
     s0+=2062.0;
     s1+=2065.0;
    }
   }
  }
 } else {
  if(i22<1.1164028644561768){
   if(i5<0.00017404556274414062){
    if(i56<0.0642641931772232){
     s0+=60.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=1226.0;
   }
  } else {
   if(i31<1.1268494129180908){
    if(i30<0.21615228056907654){
     s0+=1512.0;
     s1+=61.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   } else {
    if(i22<1.1834590435028076){
     s0+=253.0;
    } else {
     s0+=398.0;
     s1+=1152.0;
    }
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i9<1.0110981464385986){
  if(i26<1.1706064939498901){
   if(i21<0.0008888171869330108){
    if(i14<0.0015663012163713574){
     s0+=28363.0;
     s1+=545.0;
    } else {
     s0+=2997.0;
     s1+=2554.0;
    }
   } else {
    if(i30<0.23166519403457642){
     s0+=77873.0;
     s1+=739.0;
    } else {
     s0+=60.0;
     s1+=93.0;
    }
   }
  } else {
   if(i28<0.0060690236277878284){
    if(i27<0.004112231079488993){
     s0+=311.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i25<0.8591122627258301){
     s0+=39.0;
     s1+=26.0;
    } else {
     s0+=6.0;
     s1+=405.0;
    }
   }
  }
 } else {
  if(i7<0.0050931693986058235){
   if(i31<1.0699607133865356){
    s1+=37.0;
   } else {
    if(i47<9.327326552011073e-06){
     s0+=616.0;
     s1+=1.0;
    } else {
     s0+=118.0;
     s1+=51.0;
    }
   }
  } else {
   if(i57<1.0001049041748047){
    if(i28<0.009167725220322609){
     s0+=113.0;
    } else {
     s1+=220.0;
    }
   } else {
    s1+=919.0;
   }
  }
 }
} else {
 if(i49<-0.00027749722357839346){
  if(i12<0.12362787127494812){
   if(i2<0.0007372498512268066){
    if(i62<-4.756450653076172e-05){
     s0+=157.0;
     s1+=313.0;
    } else {
     s0+=558.0;
     s1+=105.0;
    }
   } else {
    if(i15<0.0003702127723954618){
     s0+=20.0;
     s1+=1328.0;
    } else {
     s0+=71.0;
     s1+=110.0;
    }
   }
  } else {
   if(i28<0.0022463309578597546){
    if(i36<1.132683515548706){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i47<3.555451985448599e-05){
     s0+=23.0;
     s1+=12089.0;
    } else {
     s0+=76.0;
     s1+=614.0;
    }
   }
  }
 } else {
  if(i15<0.0003448018687777221){
   if(i16<1.0061273574829102){
    if(i24<0.00042945146560668945){
     s0+=156.0;
     s1+=430.0;
    } else {
     s0+=873.0;
     s1+=204.0;
    }
   } else {
    if(i23<0.01790088415145874){
     s0+=70.0;
     s1+=28.0;
    } else {
     s0+=80.0;
     s1+=2989.0;
    }
   }
  } else {
   if(i19<0.040688443928956985){
    if(i12<0.21700501441955566){
     s0+=3841.0;
     s1+=85.0;
    } else {
     s0+=15.0;
     s1+=63.0;
    }
   } else {
    if(i29<-0.0007674694061279297){
     s0+=51.0;
     s1+=41.0;
    } else {
     s0+=8.0;
     s1+=307.0;
    }
   }
  }
 }
}
if(i7<0.007530448958277702){
 if(i44<-2.4839995603542775e-05){
  if(i19<0.0027048676274716854){
   if(i36<1.0930736064910889){
    s1+=149.0;
   } else {
    if(i34<1.175166130065918){
     s0+=96.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i59<-6.14996679360047e-05){
    s0+=36.0;
   } else {
    if(i50<-5.895233243791154e-06){
     s0+=30.0;
    } else {
     s0+=16.0;
     s1+=1838.0;
    }
   }
  }
 } else {
  if(i10<1.0059444904327393){
   if(i24<7.396936416625977e-05){
    if(i40<0.010217651724815369){
     s0+=43785.0;
     s1+=129.0;
    } else {
     s0+=30594.0;
     s1+=604.0;
    }
   } else {
    if(i7<0.003994319587945938){
     s0+=27403.0;
     s1+=708.0;
    } else {
     s0+=4349.0;
     s1+=2102.0;
    }
   }
  } else {
   if(i7<0.004070216324180365){
    if(i34<1.0887606143951416){
     s0+=351.0;
     s1+=248.0;
    } else {
     s0+=3963.0;
     s1+=88.0;
    }
   } else {
    if(i0<1.1622905731201172e-05){
     s0+=78.0;
     s1+=14.0;
    } else {
     s0+=282.0;
     s1+=1532.0;
    }
   }
  }
 }
} else {
 if(i2<-0.0003959536552429199){
  if(i12<0.155055433511734){
   if(i3<0.99753338098526){
    if(i26<1.1168255805969238){
     s0+=4292.0;
     s1+=88.0;
    } else {
     s0+=83.0;
     s1+=85.0;
    }
   } else {
    if(i45<0.22248032689094543){
     s0+=266.0;
     s1+=86.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i7<0.009195566177368164){
    if(i37<1.111676812171936){
     s0+=51.0;
     s1+=4.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i31<1.1078033447265625){
     s0+=9.0;
     s1+=33.0;
    } else {
     s1+=322.0;
    }
   }
  }
 } else {
  if(i44<0.00031104826484806836){
   if(i30<0.0433124303817749){
    if(i3<1.0063626766204834){
     s0+=164.0;
     s1+=120.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i32<0.0042252978309988976){
     s0+=131.0;
     s1+=15969.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i14<0.006021107546985149){
    if(i54<0.01995489001274109){
     s0+=150.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i12<0.041805773973464966){
     s0+=103.0;
     s1+=36.0;
    } else {
     s0+=48.0;
     s1+=207.0;
    }
   }
  }
 }
}
if(i4<1.0026252269744873){
 if(i13<1.0181643962860107){
  if(i12<0.20643335580825806){
   if(i39<1.0903575420379639){
    if(i40<0.008405419066548347){
     s0+=20530.0;
     s1+=358.0;
    } else {
     s0+=7882.0;
     s1+=2643.0;
    }
   } else {
    if(i19<0.08864700794219971){
     s0+=81192.0;
     s1+=1184.0;
    } else {
     s0+=5.0;
     s1+=88.0;
    }
   }
  } else {
   if(i74<0.10886543989181519){
    if(i59<-2.104015720760799e-06){
     s0+=12.0;
     s1+=391.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i60<0.13477382063865662){
     s0+=128.0;
     s1+=7.0;
    } else {
     s0+=17.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i14<0.0020714206621050835){
   if(i1<-7.661309064133093e-05){
    s1+=18.0;
   } else {
    if(i58<1.001838207244873){
     s0+=366.0;
    } else {
     s0+=48.0;
     s1+=17.0;
    }
   }
  } else {
   if(i7<0.004482298623770475){
    if(i24<0.00021904706954956055){
     s1+=9.0;
    } else {
     s0+=92.0;
    }
   } else {
    if(i50<-2.5526674107823055e-06){
     s0+=35.0;
     s1+=25.0;
    } else {
     s0+=34.0;
     s1+=910.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007044102530926466){
  if(i6<3.641843795776367e-05){
   if(i32<0.000507493270561099){
    if(i75<-0.0032256587874144316){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=1179.0;
     s1+=1.0;
    }
   } else {
    if(i2<-1.5497207641601562e-06){
     s0+=1171.0;
     s1+=342.0;
    } else {
     s0+=339.0;
     s1+=2379.0;
    }
   }
  } else {
   if(i37<1.0330471992492676){
    if(i18<0.001001894474029541){
     s0+=342.0;
     s1+=202.0;
    } else {
     s0+=1.0;
     s1+=374.0;
    }
   } else {
    if(i12<0.145189106464386){
     s0+=653.0;
     s1+=3266.0;
    } else {
     s0+=67.0;
     s1+=12215.0;
    }
   }
  }
 } else {
  s0+=2276.0;
 }
}
if(i17<1.017686367034912){
 if(i4<1.0026264190673828){
  if(i19<0.07361090183258057){
   if(i19<0.006779953837394714){
    if(i39<1.0903575420379639){
     s0+=21054.0;
     s1+=517.0;
    } else {
     s0+=47976.0;
     s1+=49.0;
    }
   } else {
    if(i3<0.9982897043228149){
     s0+=35768.0;
     s1+=522.0;
    } else {
     s0+=5168.0;
     s1+=2914.0;
    }
   }
  } else {
   if(i47<7.889707922004163e-05){
    if(i10<0.9438281059265137){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=362.0;
    }
   } else {
    if(i26<1.090799331665039){
     s0+=136.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<0.0012513995170593262){
   if(i45<0.045369960367679596){
    if(i18<0.0012150406837463379){
     s0+=3093.0;
     s1+=389.0;
    } else {
     s0+=178.0;
     s1+=436.0;
    }
   } else {
    if(i62<-0.011878997087478638){
     s0+=307.0;
     s1+=49.0;
    } else {
     s0+=807.0;
     s1+=1528.0;
    }
   }
  } else {
   if(i16<1.0108888149261475){
    if(i27<0.0024921505246311426){
     s0+=646.0;
     s1+=307.0;
    } else {
     s0+=281.0;
     s1+=1014.0;
    }
   } else {
    if(i23<0.04061797261238098){
     s0+=31.0;
     s1+=74.0;
    } else {
     s0+=33.0;
     s1+=2024.0;
    }
   }
  }
 }
} else {
 if(i0<1.4603137969970703e-05){
  if(i40<0.10078807175159454){
   if(i19<0.02771899104118347){
    if(i18<-0.0029613375663757324){
     s1+=22.0;
    } else {
     s0+=557.0;
     s1+=34.0;
    }
   } else {
    if(i41<0.9961692094802856){
     s0+=118.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=114.0;
    }
   }
  } else {
   if(i46<-6.264158855628921e-06){
    if(i56<0.06040970981121063){
     s0+=15.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=180.0;
    }
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i22<1.1843671798706055){
   if(i36<1.0953161716461182){
    if(i31<1.0905089378356934){
     s1+=1344.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i22<1.1180615425109863){
     s1+=137.0;
    } else {
     s0+=492.0;
    }
   }
  } else {
   if(i34<1.7041046619415283){
    if(i59<-3.731855485966662e-06){
     s0+=114.0;
     s1+=11990.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=20.0;
   }
  }
 }
}
if(i4<1.0026321411132812){
 if(i38<1.0368858575820923){
  if(i9<1.01144540309906){
   if(i12<0.2064477801322937){
    if(i9<1.007431149482727){
     s0+=106740.0;
     s1+=3419.0;
    } else {
     s0+=2669.0;
     s1+=503.0;
    }
   } else {
    if(i40<0.06635019183158875){
     s0+=130.0;
     s1+=18.0;
    } else {
     s0+=11.0;
     s1+=253.0;
    }
   }
  } else {
   if(i22<1.1180615425109863){
    s1+=495.0;
   } else {
    if(i8<1.0286533832550049){
     s0+=518.0;
     s1+=88.0;
    } else {
     s0+=3.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i14<0.001964119728654623){
   if(i61<1.0024864673614502){
    if(i21<0.0020075703505426645){
     s0+=347.0;
    } else {
     s0+=95.0;
     s1+=8.0;
    }
   } else {
    if(i36<1.1396092176437378){
     s0+=3.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i11<1.0300493240356445){
    if(i0<-2.1696090698242188e-05){
     s0+=104.0;
     s1+=49.0;
    } else {
     s0+=13.0;
     s1+=134.0;
    }
   } else {
    if(i15<0.002122397068887949){
     s0+=5.0;
     s1+=563.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i1<-7.376159919658676e-05){
  if(i10<0.9737190008163452){
   if(i76<-0.16630873084068298){
    s1+=15.0;
   } else {
    if(i30<0.10052803158760071){
     s0+=308.0;
     s1+=25.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  } else {
   if(i23<0.03444504737854004){
    if(i76<-0.07457143068313599){
     s0+=38.0;
     s1+=110.0;
    } else {
     s0+=110.0;
     s1+=11.0;
    }
   } else {
    if(i50<-6.577845852007158e-06){
     s0+=224.0;
    } else {
     s0+=89.0;
     s1+=15718.0;
    }
   }
  }
 } else {
  if(i7<0.004072299227118492){
   if(i24<0.0005112290382385254){
    if(i18<0.0008153319358825684){
     s0+=264.0;
     s1+=31.0;
    } else {
     s1+=533.0;
    }
   } else {
    if(i67<-9.386149031342939e-06){
     s0+=53.0;
     s1+=1.0;
    } else {
     s0+=3829.0;
    }
   }
  } else {
   if(i15<0.00034370136563666165){
    if(i62<-0.0017089247703552246){
     s0+=332.0;
     s1+=417.0;
    } else {
     s0+=124.0;
     s1+=1486.0;
    }
   } else {
    if(i34<1.602540135383606){
     s0+=611.0;
     s1+=122.0;
    } else {
     s0+=28.0;
     s1+=98.0;
    }
   }
  }
 }
}
if(i9<1.0152629613876343){
 if(i7<0.014074793085455894){
  if(i61<1.002949833869934){
   if(i7<0.0034787103068083525){
    if(i62<-0.0008145570755004883){
     s0+=12416.0;
     s1+=468.0;
    } else {
     s0+=71506.0;
     s1+=436.0;
    }
   } else {
    if(i9<1.0068150758743286){
     s0+=20651.0;
     s1+=2354.0;
    } else {
     s0+=824.0;
     s1+=905.0;
    }
   }
  } else {
   if(i29<0.00019156932830810547){
    if(i14<0.0018936621490865946){
     s0+=3653.0;
     s1+=50.0;
    } else {
     s0+=4959.0;
     s1+=1736.0;
    }
   } else {
    if(i15<0.000622750842012465){
     s0+=35.0;
     s1+=1105.0;
    } else {
     s0+=379.0;
    }
   }
  }
 } else {
  if(i37<1.0243825912475586){
   if(i16<1.0160534381866455){
    if(i44<0.00030078430427238345){
     s0+=14.0;
     s1+=39.0;
    } else {
     s0+=849.0;
     s1+=70.0;
    }
   } else {
    s1+=89.0;
   }
  } else {
   if(i18<-0.005648970603942871){
    if(i27<0.015754010528326035){
     s0+=114.0;
     s1+=17.0;
    } else {
     s1+=65.0;
    }
   } else {
    if(i65<0.00982669834047556){
     s0+=23.0;
     s1+=2748.0;
    } else {
     s0+=36.0;
     s1+=272.0;
    }
   }
  }
 }
} else {
 if(i59<-3.179698524036212e-06){
  if(i15<0.0007059713825583458){
   if(i0<-3.832578659057617e-05){
    if(i44<0.00016327580669894814){
     s0+=105.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i30<0.06240072846412659){
     s0+=44.0;
     s1+=60.0;
    } else {
     s0+=87.0;
     s1+=14078.0;
    }
   }
  } else {
   s0+=377.0;
  }
 } else {
  if(i58<1.001857042312622){
   s0+=267.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i7<0.007983492687344551){
 if(i18<0.0013867020606994629){
  if(i22<1.1162974834442139){
   if(i14<0.001712525263428688){
    if(i66<0.00011598579294513911){
     s0+=21682.0;
     s1+=156.0;
    } else {
     s0+=5991.0;
     s1+=616.0;
    }
   } else {
    if(i21<0.00023627348127774894){
     s0+=1806.0;
     s1+=15.0;
    } else {
     s0+=826.0;
     s1+=2940.0;
    }
   }
  } else {
   if(i17<1.0187782049179077){
    if(i42<0.0017951487097889185){
     s0+=67348.0;
     s1+=161.0;
    } else {
     s0+=12479.0;
     s1+=801.0;
    }
   } else {
    if(i1<-6.682487583020702e-05){
     s0+=36.0;
     s1+=170.0;
    } else {
     s0+=888.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i57<1.0008728504180908){
   if(i31<1.0642578601837158){
    if(i46<-1.6559944924665615e-05){
     s1+=4.0;
    } else {
     s0+=16.0;
    }
   } else {
    s0+=435.0;
   }
  } else {
   if(i51<0.9998289346694946){
    if(i9<1.0604844093322754){
     s0+=195.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i7<0.0018166510853916407){
     s0+=168.0;
     s1+=160.0;
    } else {
     s0+=94.0;
     s1+=2780.0;
    }
   }
  }
 }
} else {
 if(i30<0.07644787430763245){
  if(i10<1.0030021667480469){
   if(i41<0.9959431886672974){
    if(i26<1.1148920059204102){
     s0+=3313.0;
     s1+=74.0;
    } else {
     s0+=139.0;
     s1+=109.0;
    }
   } else {
    if(i37<1.0453933477401733){
     s0+=313.0;
     s1+=129.0;
    } else {
     s0+=39.0;
     s1+=183.0;
    }
   }
  } else {
   if(i15<0.0018484671600162983){
    if(i24<-0.0005283057689666748){
     s0+=2.0;
    } else {
     s1+=159.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i16<0.9996095895767212){
   if(i1<-6.71904199407436e-05){
    if(i39<1.1266374588012695){
     s0+=18.0;
    } else {
     s0+=32.0;
     s1+=666.0;
    }
   } else {
    if(i2<-0.0005195736885070801){
     s0+=348.0;
     s1+=52.0;
    } else {
     s0+=10.0;
     s1+=78.0;
    }
   }
  } else {
   if(i17<0.9786157608032227){
    if(i10<0.9634661674499512){
     s0+=122.0;
     s1+=53.0;
    } else {
     s0+=105.0;
     s1+=1328.0;
    }
   } else {
    if(i1<3.000644937856123e-05){
     s0+=73.0;
     s1+=13633.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i30<0.19657406210899353){
 if(i4<1.0026254653930664){
  if(i38<1.0304455757141113){
   if(i14<0.0017233858816325665){
    if(i39<1.0776758193969727){
     s0+=22433.0;
     s1+=722.0;
    } else {
     s0+=65716.0;
     s1+=196.0;
    }
   } else {
    if(i2<-0.00046506524085998535){
     s0+=17166.0;
     s1+=491.0;
    } else {
     s0+=3350.0;
     s1+=2884.0;
    }
   }
  } else {
   if(i59<-4.1985449570347555e-06){
    if(i53<0.0007806259673088789){
     s0+=5.0;
     s1+=251.0;
    } else {
     s0+=235.0;
     s1+=144.0;
    }
   } else {
    if(i59<-2.5704343897814397e-06){
     s0+=109.0;
     s1+=23.0;
    } else {
     s0+=621.0;
    }
   }
  }
 } else {
  if(i24<0.0005583763122558594){
   if(i51<1.0016167163848877){
    if(i0<1.1742115020751953e-05){
     s0+=200.0;
     s1+=110.0;
    } else {
     s0+=303.0;
     s1+=4060.0;
    }
   } else {
    if(i19<0.047170646488666534){
     s0+=263.0;
     s1+=1.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i1<-7.428511889884248e-05){
    if(i50<-6.187952749314718e-06){
     s0+=198.0;
     s1+=1.0;
    } else {
     s0+=325.0;
     s1+=2233.0;
    }
   } else {
    if(i16<1.0118443965911865){
     s0+=4644.0;
     s1+=237.0;
    } else {
     s0+=12.0;
     s1+=171.0;
    }
   }
  }
 }
} else {
 if(i34<1.1759499311447144){
  if(i21<0.0020120241679251194){
   s0+=568.0;
  } else {
   if(i12<0.19810333847999573){
    s0+=27.0;
   } else {
    if(i15<0.00022414495470002294){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<0.00022488832473754883){
   if(i14<0.004720909055322409){
    if(i71<0.13371005654335022){
     s0+=3.0;
     s1+=29.0;
    } else {
     s0+=375.0;
     s1+=42.0;
    }
   } else {
    if(i47<7.446377276210114e-05){
     s0+=1.0;
     s1+=297.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  } else {
   if(i27<0.002447582082822919){
    if(i19<0.021779486909508705){
     s0+=8.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i7<0.0017197404522448778){
     s0+=23.0;
     s1+=32.0;
    } else {
     s0+=50.0;
     s1+=12267.0;
    }
   }
  }
 }
}
if(i1<-9.283507824875414e-05){
 if(i3<0.9996438026428223){
  if(i23<0.04800140857696533){
   if(i73<-0.01348191499710083){
    if(i16<0.9970313310623169){
     s0+=13.0;
    } else {
     s0+=9.0;
     s1+=37.0;
    }
   } else {
    if(i7<0.030287466943264008){
     s0+=552.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i34<1.2384477853775024){
    s0+=33.0;
   } else {
    if(i79<-0.026086479425430298){
     s0+=21.0;
     s1+=38.0;
    } else {
     s0+=11.0;
     s1+=358.0;
    }
   }
  }
 } else {
  if(i31<1.1178078651428223){
   if(i24<0.0010593533515930176){
    if(i6<0.00019568204879760742){
     s0+=23.0;
     s1+=1079.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i20<0.9984104633331299){
     s1+=10.0;
    } else {
     s0+=223.0;
    }
   }
  } else {
   if(i20<0.9499770998954773){
    if(i19<0.06965161859989166){
     s0+=61.0;
    } else {
     s0+=37.0;
     s1+=39.0;
    }
   } else {
    if(i30<0.009477972984313965){
     s0+=43.0;
     s1+=49.0;
    } else {
     s0+=43.0;
     s1+=14091.0;
    }
   }
  }
 }
} else {
 if(i3<1.0032644271850586){
  if(i14<0.0017270520329475403){
   if(i32<0.0006242415402084589){
    if(i31<1.1354830265045166){
     s0+=71273.0;
     s1+=180.0;
    } else {
     s0+=2010.0;
     s1+=85.0;
    }
   } else {
    if(i27<0.0006204007659107447){
     s0+=1860.0;
     s1+=611.0;
    } else {
     s0+=13586.0;
     s1+=99.0;
    }
   }
  } else {
   if(i21<0.0009200487984344363){
    if(i15<0.00026820902712643147){
     s0+=628.0;
     s1+=2450.0;
    } else {
     s0+=1535.0;
     s1+=12.0;
    }
   } else {
    if(i3<1.000579595565796){
     s0+=18538.0;
     s1+=562.0;
    } else {
     s0+=1028.0;
     s1+=682.0;
    }
   }
  }
 } else {
  if(i19<0.00963277742266655){
   if(i34<1.116804838180542){
    if(i15<0.00024967329227365553){
     s0+=26.0;
     s1+=1407.0;
    } else {
     s0+=979.0;
    }
   } else {
    if(i63<0.0027144551277160645){
     s0+=3940.0;
     s1+=62.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i32<0.0005062716081738472){
    if(i11<1.0334912538528442){
     s0+=117.0;
     s1+=3.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i32<0.0008099849219433963){
     s0+=80.0;
     s1+=147.0;
    } else {
     s0+=139.0;
     s1+=1949.0;
    }
   }
  }
 }
}
if(i0<6.55055046081543e-05){
 if(i23<0.20763567090034485){
  if(i4<1.0020513534545898){
   if(i25<1.0211117267608643){
    if(i5<0.00020903348922729492){
     s0+=96863.0;
     s1+=2158.0;
    } else {
     s0+=9199.0;
     s1+=1385.0;
    }
   } else {
    if(i58<1.0003050565719604){
     s0+=451.0;
     s1+=42.0;
    } else {
     s0+=280.0;
     s1+=372.0;
    }
   }
  } else {
   if(i60<0.05220130831003189){
    if(i14<0.001856660470366478){
     s0+=4160.0;
     s1+=39.0;
    } else {
     s0+=1376.0;
     s1+=984.0;
    }
   } else {
    if(i0<-5.900859832763672e-06){
     s0+=1213.0;
     s1+=308.0;
    } else {
     s0+=607.0;
     s1+=1250.0;
    }
   }
  }
 } else {
  if(i59<-3.554522436388652e-06){
   if(i2<-0.000583350658416748){
    if(i1<-3.736919825314544e-05){
     s0+=6.0;
     s1+=191.0;
    } else {
     s0+=78.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.002279554959386587){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=1316.0;
    }
   }
  } else {
   if(i44<7.556485797977075e-05){
    if(i49<-1.975645136553794e-05){
     s0+=136.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.003042320255190134){
     s0+=25.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i28<0.0023418846540153027){
  if(i15<0.00024963216856122017){
   if(i41<1.0008916854858398){
    s0+=22.0;
   } else {
    if(i52<4.8995018005371094e-05){
     s1+=2369.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   s0+=1777.0;
  }
 } else {
  if(i9<0.9392907619476318){
   if(i51<1.000321865081787){
    if(i42<0.017746614292263985){
     s0+=44.0;
    } else {
     s0+=12.0;
     s1+=16.0;
    }
   } else {
    if(i55<0.1480504274368286){
     s0+=8.0;
     s1+=5.0;
    } else {
     s1+=96.0;
    }
   }
  } else {
   if(i15<0.00041376816807314754){
    if(i23<0.021417826414108276){
     s0+=7.0;
     s1+=44.0;
    } else {
     s0+=7.0;
     s1+=11693.0;
    }
   } else {
    if(i9<1.014883279800415){
     s0+=63.0;
     s1+=350.0;
    } else {
     s0+=7.0;
     s1+=1787.0;
    }
   }
  }
 }
}
if(i18<0.0013652443885803223){
 if(i24<0.00013428926467895508){
  if(i7<0.019867297261953354){
   if(i22<1.0905578136444092){
    if(i34<1.0577136278152466){
     s0+=14859.0;
     s1+=3.0;
    } else {
     s0+=4694.0;
     s1+=1261.0;
    }
   } else {
    if(i11<1.02170729637146){
     s0+=67443.0;
     s1+=416.0;
    } else {
     s0+=262.0;
     s1+=130.0;
    }
   }
  } else {
   if(i62<-0.0230274498462677){
    s0+=7.0;
   } else {
    s1+=179.0;
   }
  }
 } else {
  if(i31<1.1698167324066162){
   if(i7<0.004145527258515358){
    if(i69<-0.003685522358864546){
     s1+=10.0;
    } else {
     s0+=21929.0;
     s1+=728.0;
    }
   } else {
    if(i26<1.029199242591858){
     s0+=1843.0;
     s1+=158.0;
    } else {
     s0+=3569.0;
     s1+=4584.0;
    }
   }
  } else {
   if(i23<0.05376729369163513){
    if(i73<-0.008361101150512695){
     s0+=92.0;
     s1+=124.0;
    } else {
     s0+=685.0;
     s1+=31.0;
    }
   } else {
    if(i26<1.0742030143737793){
     s0+=126.0;
     s1+=40.0;
    } else {
     s0+=58.0;
     s1+=3463.0;
    }
   }
  }
 }
} else {
 if(i9<1.0174126625061035){
  if(i66<0.00011101625568699092){
   if(i21<0.0010801446624100208){
    s1+=635.0;
   } else {
    if(i78<-0.0037491321563720703){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=847.0;
     s1+=7.0;
    }
   }
  } else {
   if(i6<1.6510486602783203e-05){
    if(i30<0.2457699179649353){
     s0+=37.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i15<0.0018449178896844387){
     s1+=1279.0;
    } else {
     s0+=24.0;
    }
   }
  }
 } else {
  if(i46<-1.3818588740832638e-05){
   if(i51<0.9983546137809753){
    s0+=16.0;
   } else {
    if(i15<0.0008207382634282112){
     s0+=8.0;
     s1+=11219.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   s0+=24.0;
  }
 }
}
if(i2<0.0009613633155822754){
 if(i37<1.140138864517212){
  if(i46<-4.5724300434812903e-05){
   if(i37<1.0690515041351318){
    if(i32<0.0031483592465519905){
     s0+=247.0;
     s1+=83.0;
    } else {
     s0+=2.0;
     s1+=45.0;
    }
   } else {
    if(i0<0.0002123713493347168){
     s0+=4.0;
     s1+=319.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i25<1.021170735359192){
    if(i27<0.0010565273696556687){
     s0+=32184.0;
     s1+=3282.0;
    } else {
     s0+=80118.0;
     s1+=1752.0;
    }
   } else {
    if(i2<0.0002942681312561035){
     s0+=754.0;
     s1+=263.0;
    } else {
     s0+=231.0;
     s1+=637.0;
    }
   }
  }
 } else {
  if(i59<-2.82636528936564e-06){
   if(i36<1.1804778575897217){
    if(i49<-0.00026110600447282195){
     s0+=32.0;
     s1+=23.0;
    } else {
     s0+=140.0;
     s1+=6.0;
    }
   } else {
    if(i7<0.005698124412447214){
     s0+=6.0;
    } else {
     s0+=26.0;
     s1+=1655.0;
    }
   }
  } else {
   if(i21<0.002677387557923794){
    s0+=465.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i21<0.0023432746529579163){
  if(i27<0.001258086645975709){
   if(i50<-3.050846316909883e-06){
    if(i2<0.0015470385551452637){
     s0+=87.0;
     s1+=6.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i15<0.0007333559915423393){
     s1+=2299.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i8<1.0240933895111084){
    if(i15<0.00011876221833517775){
     s1+=76.0;
    } else {
     s0+=1873.0;
    }
   } else {
    if(i32<0.0008640316664241254){
     s1+=43.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i63<-0.00728568434715271){
   if(i12<0.00185394287109375){
    if(i14<0.005746135022491217){
     s0+=37.0;
     s1+=1.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i53<0.006911398842930794){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=125.0;
    }
   }
  } else {
   if(i26<1.0742030143737793){
    if(i75<-0.005508532747626305){
     s0+=31.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=178.0;
    }
   } else {
    if(i39<1.4731788635253906){
     s0+=6.0;
     s1+=11649.0;
    } else {
     s0+=20.0;
     s1+=2056.0;
    }
   }
  }
 }
}
if(i6<2.0802021026611328e-05){
 if(i1<-8.655661076772958e-05){
  if(i9<0.9422708749771118){
   if(i26<1.1163792610168457){
    if(i74<0.0784374475479126){
     s0+=521.0;
     s1+=28.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i21<0.012451989576220512){
     s0+=37.0;
     s1+=37.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i51<0.9983084201812744){
    s0+=38.0;
   } else {
    if(i24<0.0004450976848602295){
     s0+=4.0;
     s1+=641.0;
    } else {
     s0+=36.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i11<1.0177826881408691){
   if(i14<0.0015740448143333197){
    if(i13<0.9944213032722473){
     s0+=14954.0;
     s1+=387.0;
    } else {
     s0+=70966.0;
     s1+=321.0;
    }
   } else {
    if(i41<0.9953596591949463){
     s0+=16511.0;
     s1+=419.0;
    } else {
     s0+=5574.0;
     s1+=2695.0;
    }
   }
  } else {
   if(i1<-3.3757365599740297e-05){
    if(i22<1.5306217670440674){
     s0+=64.0;
     s1+=341.0;
    } else {
     s0+=113.0;
     s1+=6.0;
    }
   } else {
    if(i39<1.2145798206329346){
     s0+=430.0;
     s1+=23.0;
    } else {
     s0+=128.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i1<-7.494797318940982e-05){
  if(i25<0.894601583480835){
   if(i18<-0.003447592258453369){
    if(i37<1.029990792274475){
     s0+=205.0;
     s1+=25.0;
    } else {
     s0+=9.0;
     s1+=32.0;
    }
   } else {
    if(i30<0.026363492012023926){
     s0+=35.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=102.0;
    }
   }
  } else {
   if(i70<4.148013431404252e-06){
    if(i15<0.0007051074644550681){
     s0+=377.0;
     s1+=15945.0;
    } else {
     s0+=199.0;
    }
   } else {
    s0+=150.0;
   }
  }
 } else {
  if(i45<0.0342121496796608){
   if(i29<0.00017625093460083008){
    if(i53<0.0007151365280151367){
     s0+=1876.0;
     s1+=586.0;
    } else {
     s0+=2308.0;
     s1+=72.0;
    }
   } else {
    if(i54<0.000694548711180687){
     s0+=10.0;
     s1+=772.0;
    } else {
     s0+=613.0;
     s1+=21.0;
    }
   }
  } else {
   if(i47<2.4919410861912183e-05){
    if(i24<0.0007118880748748779){
     s0+=172.0;
     s1+=1340.0;
    } else {
     s0+=285.0;
     s1+=244.0;
    }
   } else {
    if(i6<4.953145980834961e-05){
     s0+=750.0;
     s1+=73.0;
    } else {
     s0+=75.0;
     s1+=93.0;
    }
   }
  }
 }
}
if(i5<0.0005698800086975098){
 if(i12<0.20496979355812073){
  if(i14<0.0015612179413437843){
   if(i37<1.0179111957550049){
    if(i34<1.0577976703643799){
     s0+=5437.0;
     s1+=1.0;
    } else {
     s0+=5088.0;
     s1+=350.0;
    }
   } else {
    if(i31<1.1354830265045166){
     s0+=73757.0;
     s1+=265.0;
    } else {
     s0+=1950.0;
     s1+=116.0;
    }
   }
  } else {
   if(i21<0.0009191688150167465){
    if(i45<0.010930068790912628){
     s0+=1418.0;
     s1+=282.0;
    } else {
     s0+=892.0;
     s1+=2398.0;
    }
   } else {
    if(i10<1.005698800086975){
     s0+=20879.0;
     s1+=837.0;
    } else {
     s0+=159.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i56<0.044825479388237){
   if(i46<-1.9485161828924902e-05){
    if(i58<1.0077924728393555){
     s0+=2.0;
     s1+=48.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i14<0.0026874858886003494){
     s0+=191.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=11.0;
    }
   }
  } else {
   if(i44<7.894852024037391e-05){
    if(i0<-1.1801719665527344e-05){
     s0+=41.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=92.0;
    }
   } else {
    if(i26<1.1075127124786377){
     s0+=6.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=556.0;
    }
   }
  }
 }
} else {
 if(i7<0.0040647853165864944){
  if(i44<-2.2774605895392597e-05){
   if(i47<-9.543759006191976e-06){
    if(i32<0.001649094163440168){
     s0+=48.0;
     s1+=852.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i26<1.1196718215942383){
     s0+=91.0;
     s1+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i15<0.00022192041797097772){
    if(i24<0.00044459104537963867){
     s0+=40.0;
     s1+=193.0;
    } else {
     s0+=201.0;
     s1+=3.0;
    }
   } else {
    if(i68<0.00534331239759922){
     s0+=4496.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i3<1.0003130435943604){
   if(i45<0.2956433892250061){
    if(i26<1.1141397953033447){
     s0+=781.0;
     s1+=94.0;
    } else {
     s0+=40.0;
     s1+=50.0;
    }
   } else {
    if(i19<0.021836575120687485){
     s0+=2.0;
    } else {
     s1+=105.0;
    }
   }
  } else {
   if(i23<0.0397074818611145){
    if(i47<1.2147964298492298e-05){
     s0+=34.0;
     s1+=185.0;
    } else {
     s0+=233.0;
     s1+=95.0;
    }
   } else {
    if(i32<0.004013966303318739){
     s0+=582.0;
     s1+=17527.0;
    } else {
     s0+=94.0;
    }
   }
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i35<0.8967708349227905){
  if(i20<0.9484244585037231){
   if(i18<-0.0029680728912353516){
    if(i23<0.10051944851875305){
     s0+=497.0;
     s1+=30.0;
    } else {
     s0+=9.0;
     s1+=22.0;
    }
   } else {
    if(i40<0.10132652521133423){
     s0+=3.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i7<0.015658613294363022){
    if(i67<-3.450575832175673e-06){
     s1+=28.0;
    } else {
     s0+=31.0;
     s1+=11.0;
    }
   } else {
    if(i48<0.8754096031188965){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i70<5.7961542552220635e-06){
   if(i23<0.03952541947364807){
    if(i3<1.0044491291046143){
     s0+=118.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=59.0;
    }
   } else {
    if(i59<-5.673414852935821e-05){
     s0+=71.0;
    } else {
     s0+=91.0;
     s1+=14877.0;
    }
   }
  } else {
   s0+=128.0;
  }
 }
} else {
 if(i9<1.009162425994873){
  if(i40<0.012292933650314808){
   if(i0<7.37309455871582e-05){
    if(i37<1.0100669860839844){
     s0+=411.0;
     s1+=132.0;
    } else {
     s0+=69774.0;
     s1+=662.0;
    }
   } else {
    if(i24<0.0007634758949279785){
     s0+=2.0;
     s1+=207.0;
    } else {
     s0+=62.0;
     s1+=7.0;
    }
   }
  } else {
   if(i67<-5.878562205907656e-06){
    if(i39<1.4586446285247803){
     s0+=5.0;
     s1+=307.0;
    } else {
     s0+=83.0;
     s1+=72.0;
    }
   } else {
    if(i23<0.2140655219554901){
     s0+=41006.0;
     s1+=3737.0;
    } else {
     s0+=120.0;
     s1+=341.0;
    }
   }
  }
 } else {
  if(i39<1.0978162288665771){
   if(i36<1.0452228784561157){
    s0+=11.0;
   } else {
    if(i78<0.007815957069396973){
     s1+=1847.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i28<0.0020041787065565586){
    if(i27<0.0010541669325903058){
     s0+=188.0;
     s1+=326.0;
    } else {
     s0+=2998.0;
     s1+=4.0;
    }
   } else {
    if(i22<1.2437124252319336){
     s0+=66.0;
     s1+=1025.0;
    } else {
     s0+=845.0;
     s1+=306.0;
    }
   }
  }
 }
}
if(i2<0.000955045223236084){
 if(i26<1.1402404308319092){
  if(i5<0.00031179189682006836){
   if(i22<1.116391897201538){
    if(i40<0.010158069431781769){
     s0+=19474.0;
     s1+=284.0;
    } else {
     s0+=7967.0;
     s1+=1847.0;
    }
   } else {
    if(i25<1.0252549648284912){
     s0+=75910.0;
     s1+=603.0;
    } else {
     s0+=250.0;
     s1+=77.0;
    }
   }
  } else {
   if(i44<1.4912457118043676e-05){
    if(i62<0.001254737377166748){
     s0+=5984.0;
     s1+=300.0;
    } else {
     s0+=284.0;
     s1+=304.0;
    }
   } else {
    if(i34<1.116804838180542){
     s0+=115.0;
     s1+=1000.0;
    } else {
     s0+=3164.0;
     s1+=1491.0;
    }
   }
  }
 } else {
  if(i27<0.0026123090647161007){
   if(i19<0.038870856165885925){
    if(i46<-1.7545680748298764e-05){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=690.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i4<1.0012301206588745){
    if(i32<0.0010628339368849993){
     s0+=277.0;
    } else {
     s0+=72.0;
     s1+=294.0;
    }
   } else {
    if(i1<-3.512553666951135e-05){
     s0+=64.0;
     s1+=1539.0;
    } else {
     s0+=100.0;
     s1+=139.0;
    }
   }
  }
 }
} else {
 if(i39<1.1706266403198242){
  if(i15<0.00024551330716349185){
   if(i46<-0.00010281485447194427){
    s0+=13.0;
   } else {
    if(i33<0.004748762585222721){
     s1+=2454.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   s0+=1922.0;
  }
 } else {
  if(i38<0.9000040292739868){
   if(i44<0.0002922086277976632){
    if(i42<0.00594487925991416){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=207.0;
    }
   } else {
    if(i61<1.0110557079315186){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=45.0;
    }
   }
  } else {
   if(i23<0.10225111246109009){
    if(i18<-0.0007485747337341309){
     s0+=69.0;
     s1+=40.0;
    } else {
     s0+=4.0;
     s1+=412.0;
    }
   } else {
    if(i23<0.1129140555858612){
     s0+=5.0;
     s1+=158.0;
    } else {
     s0+=7.0;
     s1+=13214.0;
    }
   }
  }
 }
}
if(i3<1.00374174118042){
 if(i45<0.30531495809555054){
  if(i11<1.0182666778564453){
   if(i21<0.0008854222251102328){
    if(i21<0.0004958955105394125){
     s0+=30103.0;
     s1+=1921.0;
    } else {
     s0+=1376.0;
     s1+=1202.0;
    }
   } else {
    if(i42<0.0019174818880856037){
     s0+=65463.0;
     s1+=155.0;
    } else {
     s0+=13520.0;
     s1+=1508.0;
    }
   }
  } else {
   if(i12<0.19359904527664185){
    if(i14<0.0013647906016558409){
     s0+=452.0;
     s1+=29.0;
    } else {
     s0+=392.0;
     s1+=500.0;
    }
   } else {
    if(i32<0.0005320925265550613){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=28.0;
     s1+=371.0;
    }
   }
  }
 } else {
  if(i43<0.049507856369018555){
   if(i49<-0.00037063838681206107){
    if(i41<0.9773342609405518){
     s0+=1.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i46<-4.1933919419534504e-05){
     s0+=6.0;
     s1+=11.0;
    } else {
     s0+=472.0;
     s1+=8.0;
    }
   }
  } else {
   if(i46<-1.5453664673259482e-05){
    if(i19<0.04897797107696533){
     s0+=42.0;
     s1+=21.0;
    } else {
     s0+=1.0;
     s1+=847.0;
    }
   } else {
    s0+=34.0;
   }
  }
 }
} else {
 if(i19<0.0077141160145401955){
  if(i24<0.0005298256874084473){
   if(i3<1.0051738023757935){
    if(i6<1.8298625946044922e-05){
     s0+=237.0;
     s1+=7.0;
    } else {
     s0+=103.0;
     s1+=125.0;
    }
   } else {
    if(i4<1.0025765895843506){
     s0+=7.0;
    } else {
     s1+=1587.0;
    }
   }
  } else {
   if(i45<0.042617104947566986){
    if(i3<1.0103588104248047){
     s0+=3394.0;
     s1+=1.0;
    } else {
     s1+=126.0;
    }
   } else {
    if(i0<8.094310760498047e-05){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i15<0.0007056489121168852){
   if(i2<0.0013427138328552246){
    if(i42<0.0016092921141535044){
     s0+=262.0;
     s1+=582.0;
    } else {
     s0+=121.0;
     s1+=2054.0;
    }
   } else {
    if(i6<0.0003147721290588379){
     s0+=39.0;
     s1+=13162.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s0+=226.0;
  }
 }
}
if(i18<0.0012281239032745361){
 if(i12<0.19296708703041077){
  if(i45<0.04435371235013008){
   if(i24<9.292364120483398e-05){
    if(i37<1.0100661516189575){
     s0+=989.0;
     s1+=185.0;
    } else {
     s0+=67326.0;
     s1+=596.0;
    }
   } else {
    if(i7<0.004086026921868324){
     s0+=24741.0;
     s1+=636.0;
    } else {
     s0+=1727.0;
     s1+=1864.0;
    }
   }
  } else {
   if(i18<-0.0013402998447418213){
    if(i65<0.0032091052271425724){
     s0+=13650.0;
     s1+=398.0;
    } else {
     s0+=3020.0;
     s1+=1170.0;
    }
   } else {
    if(i2<0.00016951560974121094){
     s0+=2420.0;
     s1+=788.0;
    } else {
     s0+=313.0;
     s1+=1610.0;
    }
   }
  }
 } else {
  if(i28<0.0022876025177538395){
   if(i58<1.0017770528793335){
    s0+=271.0;
   } else {
    if(i19<0.014426173642277718){
     s0+=61.0;
     s1+=2.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i0<-1.0192394256591797e-05){
    if(i32<0.0019596293568611145){
     s0+=218.0;
     s1+=59.0;
    } else {
     s0+=18.0;
     s1+=390.0;
    }
   } else {
    if(i59<-2.883372872020118e-06){
     s0+=10.0;
     s1+=2974.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
} else {
 if(i31<1.1292386054992676){
  if(i21<0.0010821260511875153){
   s1+=2199.0;
  } else {
   if(i39<1.1573951244354248){
    if(i28<0.00242155441083014){
     s0+=1223.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   } else {
    if(i0<8.779764175415039e-05){
     s0+=105.0;
     s1+=6.0;
    } else {
     s1+=623.0;
    }
   }
  }
 } else {
  if(i34<1.1614863872528076){
   s0+=72.0;
  } else {
   if(i59<-3.870569798891665e-06){
    if(i21<0.002549742581322789){
     s0+=1.0;
     s1+=44.0;
    } else {
     s1+=11037.0;
    }
   } else {
    s0+=72.0;
   }
  }
 }
}
if(i5<0.0005741715431213379){
 if(i13<1.0171254873275757){
  if(i1<-0.00011795527825597674){
   if(i30<0.0016644299030303955){
    if(i81<-0.08022075891494751){
     s0+=22.0;
     s1+=11.0;
    } else {
     s0+=101.0;
    }
   } else {
    if(i34<1.2056756019592285){
     s0+=31.0;
    } else {
     s0+=14.0;
     s1+=310.0;
    }
   }
  } else {
   if(i27<0.001060430658981204){
    if(i8<1.0065486431121826){
     s0+=31124.0;
     s1+=2374.0;
    } else {
     s0+=231.0;
     s1+=497.0;
    }
   } else {
    if(i54<0.002342043910175562){
     s0+=72692.0;
     s1+=489.0;
    } else {
     s0+=4992.0;
     s1+=579.0;
    }
   }
  }
 } else {
  if(i32<0.0007241725106723607){
   if(i67<4.376459855848225e-06){
    if(i13<1.0172007083892822){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=419.0;
     s1+=3.0;
    }
   } else {
    if(i57<1.0005028247833252){
     s0+=8.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i0<-2.47955322265625e-05){
    if(i23<0.18603897094726562){
     s0+=266.0;
     s1+=14.0;
    } else {
     s0+=20.0;
     s1+=78.0;
    }
   } else {
    if(i24<0.0005913972854614258){
     s0+=12.0;
     s1+=672.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i7<0.00422133132815361){
  if(i15<0.00020710876560769975){
   if(i10<1.0075790882110596){
    if(i24<0.0004298090934753418){
     s0+=29.0;
     s1+=76.0;
    } else {
     s0+=228.0;
    }
   } else {
    if(i3<1.00727379322052){
     s0+=16.0;
     s1+=154.0;
    } else {
     s0+=4.0;
     s1+=887.0;
    }
   }
  } else {
   if(i10<1.0192574262619019){
    if(i40<0.03970469534397125){
     s0+=4729.0;
    } else {
     s0+=31.0;
     s1+=17.0;
    }
   } else {
    s1+=50.0;
   }
  }
 } else {
  if(i15<0.0007056489121168852){
   if(i44<0.0002859932428691536){
    if(i3<1.0011117458343506){
     s0+=361.0;
     s1+=228.0;
    } else {
     s0+=387.0;
     s1+=17253.0;
    }
   } else {
    if(i68<0.003483640728518367){
     s0+=507.0;
     s1+=246.0;
    } else {
     s0+=115.0;
     s1+=257.0;
    }
   }
  } else {
   s0+=304.0;
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i8<1.0135915279388428){
  if(i12<0.23153239488601685){
   if(i21<0.0008888171869330108){
    if(i24<7.385015487670898e-05){
     s0+=26716.0;
     s1+=692.0;
    } else {
     s0+=4370.0;
     s1+=2467.0;
    }
   } else {
    if(i51<1.0026071071624756){
     s0+=78264.0;
     s1+=1012.0;
    } else {
     s0+=66.0;
     s1+=79.0;
    }
   }
  } else {
   if(i27<0.004038665443658829){
    if(i46<-7.709244528086856e-06){
     s0+=2.0;
     s1+=21.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i53<0.0018519924487918615){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i12<0.18758270144462585){
   if(i39<1.0905578136444092){
    s1+=215.0;
   } else {
    if(i32<0.000573988538235426){
     s0+=265.0;
    } else {
     s0+=150.0;
     s1+=174.0;
    }
   }
  } else {
   if(i7<0.0048097530379891396){
    if(i3<1.0027451515197754){
     s0+=31.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.004971691407263279){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=359.0;
    }
   }
  }
 }
} else {
 if(i49<-0.0002316369500476867){
  if(i7<0.004342175554484129){
   if(i47<-9.138907444139477e-06){
    if(i9<1.0162492990493774){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=249.0;
    }
   } else {
    if(i65<-0.0013458272442221642){
     s1+=21.0;
    } else {
     s0+=651.0;
     s1+=41.0;
    }
   }
  } else {
   if(i13<0.9107595682144165){
    if(i40<0.10141927003860474){
     s0+=89.0;
     s1+=4.0;
    } else {
     s0+=34.0;
     s1+=65.0;
    }
   } else {
    if(i15<0.0010823220945894718){
     s0+=197.0;
     s1+=14967.0;
    } else {
     s0+=127.0;
    }
   }
  }
 } else {
  if(i29<0.00029587745666503906){
   if(i7<0.0028920224867761135){
    if(i21<0.0006850683130323887){
     s0+=1198.0;
     s1+=206.0;
    } else {
     s0+=2548.0;
    }
   } else {
    if(i34<1.1174830198287964){
     s0+=135.0;
     s1+=834.0;
    } else {
     s0+=1651.0;
     s1+=1072.0;
    }
   }
  } else {
   if(i29<0.0003529191017150879){
    if(i41<1.0104857683181763){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=153.0;
    }
   } else {
    if(i6<0.0002257227897644043){
     s1+=1280.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i2<0.0009486675262451172){
 if(i12<0.1980297863483429){
  if(i17<1.0153515338897705){
   if(i32<0.000734373927116394){
    if(i42<0.002131897024810314){
     s0+=78702.0;
     s1+=421.0;
    } else {
     s0+=2488.0;
     s1+=139.0;
    }
   } else {
    if(i6<6.020069122314453e-06){
     s0+=24479.0;
     s1+=1450.0;
    } else {
     s0+=7026.0;
     s1+=3310.0;
    }
   }
  } else {
   if(i1<-6.143040809547529e-05){
    if(i34<1.4536241292953491){
     s0+=51.0;
     s1+=568.0;
    } else {
     s0+=60.0;
     s1+=3.0;
    }
   } else {
    if(i14<0.002148714615032077){
     s0+=814.0;
     s1+=14.0;
    } else {
     s0+=362.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i21<0.0025654251221567392){
   if(i71<0.1392093002796173){
    if(i0<1.0251998901367188e-05){
     s0+=12.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i59<-4.176274160272442e-06){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=237.0;
    }
   }
  } else {
   if(i19<0.030471118167042732){
    if(i38<1.0551115274429321){
     s0+=93.0;
     s1+=45.0;
    } else {
     s0+=5.0;
     s1+=54.0;
    }
   } else {
    if(i5<-0.0009514093399047852){
     s0+=9.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=1442.0;
    }
   }
  }
 }
} else {
 if(i36<1.1703872680664062){
  if(i28<0.0012504032347351313){
   if(i24<0.0006200969219207764){
    if(i61<1.001281499862671){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=2226.0;
    }
   } else {
    s0+=97.0;
   }
  } else {
   if(i20<1.0194779634475708){
    if(i21<0.0024128828663378954){
     s0+=1926.0;
     s1+=22.0;
    } else {
     s0+=18.0;
     s1+=271.0;
    }
   } else {
    if(i7<0.004940904211252928){
     s0+=15.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i26<1.07395601272583){
   if(i16<1.0137073993682861){
    if(i18<-0.0018050074577331543){
     s0+=40.0;
     s1+=15.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i44<0.00029143280698917806){
     s1+=138.0;
    } else {
     s0+=5.0;
     s1+=28.0;
    }
   }
  } else {
   if(i12<0.0011257827281951904){
    if(i0<0.0001131296157836914){
     s0+=14.0;
     s1+=2.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i10<0.9702921509742737){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=21.0;
     s1+=13083.0;
    }
   }
  }
 }
}
if(i2<0.0009630322456359863){
 if(i43<0.1903238296508789){
  if(i14<0.0017282022163271904){
   if(i1<-6.431563815567642e-05){
    if(i5<0.00014033913612365723){
     s0+=173.0;
    } else {
     s0+=14.0;
     s1+=76.0;
    }
   } else {
    if(i37<1.0178465843200684){
     s0+=10691.0;
     s1+=480.0;
    } else {
     s0+=80438.0;
     s1+=447.0;
    }
   }
  } else {
   if(i0<-2.473592758178711e-05){
    if(i19<0.06465208530426025){
     s0+=18362.0;
     s1+=753.0;
    } else {
     s0+=147.0;
     s1+=112.0;
    }
   } else {
    if(i19<0.008029885590076447){
     s0+=2925.0;
     s1+=339.0;
    } else {
     s0+=1297.0;
     s1+=4401.0;
    }
   }
  }
 } else {
  if(i21<0.0025688123423606157){
   if(i21<0.0020032254979014397){
    s0+=199.0;
   } else {
    if(i27<0.003051225794479251){
     s0+=20.0;
     s1+=26.0;
    } else {
     s0+=45.0;
    }
   }
  } else {
   if(i46<-9.170661542157177e-06){
    if(i51<1.0023194551467896){
     s0+=27.0;
     s1+=1274.0;
    } else {
     s0+=51.0;
     s1+=90.0;
    }
   } else {
    if(i42<0.0036237966269254684){
     s0+=48.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i21<0.0023432746529579163){
  if(i28<0.0012504032347351313){
   if(i15<0.00026703899493440986){
    s1+=2117.0;
   } else {
    s0+=109.0;
   }
  } else {
   if(i34<1.099318504333496){
    s1+=212.0;
   } else {
    if(i20<1.0229449272155762){
     s0+=1859.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i79<-0.02373272180557251){
   if(i18<-0.0023273825645446777){
    if(i14<0.0055624921806156635){
     s0+=32.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=90.0;
    }
   } else {
    s1+=265.0;
   }
  } else {
   if(i18<-0.004080653190612793){
    if(i14<0.006330687552690506){
     s0+=20.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i12<0.0931888222694397){
     s0+=41.0;
     s1+=418.0;
    } else {
     s0+=11.0;
     s1+=13175.0;
    }
   }
  }
 }
}
if(i10<1.0101649761199951){
 if(i2<0.0009618401527404785){
  if(i32<0.000734373927116394){
   if(i46<-1.9369952497072518e-05){
    if(i45<0.05310116708278656){
     s0+=125.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=72.0;
    }
   } else {
    if(i7<0.0016256168019026518){
     s0+=56968.0;
     s1+=176.0;
    } else {
     s0+=24606.0;
     s1+=379.0;
    }
   }
  } else {
   if(i11<1.0171196460723877){
    if(i26<1.1416184902191162){
     s0+=31713.0;
     s1+=4378.0;
    } else {
     s0+=180.0;
     s1+=899.0;
    }
   } else {
    if(i40<0.03182530403137207){
     s0+=230.0;
     s1+=109.0;
    } else {
     s0+=231.0;
     s1+=1198.0;
    }
   }
  }
 } else {
  if(i19<0.015928417444229126){
   if(i27<0.0009203926892951131){
    if(i0<7.265806198120117e-05){
     s0+=67.0;
     s1+=82.0;
    } else {
     s1+=287.0;
    }
   } else {
    if(i67<-3.7446091027959483e-06){
     s0+=12.0;
     s1+=96.0;
    } else {
     s0+=616.0;
     s1+=8.0;
    }
   }
  } else {
   if(i29<-0.0002804994583129883){
    if(i26<1.0745704174041748){
     s0+=54.0;
     s1+=70.0;
    } else {
     s0+=14.0;
     s1+=303.0;
    }
   } else {
    if(i32<0.00034327880712226033){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=1772.0;
    }
   }
  }
 }
} else {
 if(i21<0.0025562848895788193){
  if(i15<0.00028389523504301906){
   if(i46<-1.2562270967464428e-05){
    if(i24<0.0005562901496887207){
     s0+=1.0;
     s1+=2185.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    s0+=99.0;
   }
  } else {
   if(i21<0.002439074218273163){
    if(i45<0.0833420604467392){
     s0+=1353.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i28<0.002458005677908659){
   if(i53<0.0007671080529689789){
    s0+=49.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i19<0.008848225697875023){
    if(i18<0.0011218786239624023){
     s0+=57.0;
     s1+=27.0;
    } else {
     s1+=596.0;
    }
   } else {
    if(i33<0.0026015941984951496){
     s0+=11.0;
     s1+=414.0;
    } else {
     s1+=11347.0;
    }
   }
  }
 }
}
if(i3<1.0038769245147705){
 if(i30<0.22811877727508545){
  if(i40<0.013536807149648666){
   if(i63<-0.000717848539352417){
    if(i42<0.0005062254494987428){
     s0+=131.0;
     s1+=159.0;
    } else {
     s0+=1397.0;
     s1+=34.0;
    }
   } else {
    if(i7<0.003794469404965639){
     s0+=63318.0;
     s1+=290.0;
    } else {
     s0+=8363.0;
     s1+=507.0;
    }
   }
  } else {
   if(i0<-2.9861927032470703e-05){
    if(i51<1.0026580095291138){
     s0+=29679.0;
     s1+=778.0;
    } else {
     s0+=46.0;
     s1+=86.0;
    }
   } else {
    if(i14<0.0014865605626255274){
     s0+=6868.0;
     s1+=220.0;
    } else {
     s0+=1896.0;
     s1+=3648.0;
    }
   }
  }
 } else {
  if(i59<-3.187809397786623e-06){
   if(i31<1.1231228113174438){
    if(i14<0.005117554217576981){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i7<0.007079030387103558){
     s0+=37.0;
     s1+=19.0;
    } else {
     s1+=1012.0;
    }
   }
  } else {
   if(i1<-6.431172369048e-05){
    s1+=1.0;
   } else {
    s0+=123.0;
   }
  }
 }
} else {
 if(i33<0.0019504593219608068){
  if(i21<0.0009705505217425525){
   if(i28<0.00021110517263878137){
    s0+=667.0;
   } else {
    s1+=2645.0;
   }
  } else {
   if(i9<1.0420540571212769){
    if(i61<1.0093210935592651){
     s0+=3558.0;
    } else {
     s0+=28.0;
     s1+=2.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i12<0.08913779258728027){
   if(i68<0.0005225476925261319){
    if(i52<1.1146068572998047e-05){
     s0+=10.0;
     s1+=78.0;
    } else {
     s0+=64.0;
     s1+=19.0;
    }
   } else {
    if(i47<1.843267909862334e-06){
     s1+=283.0;
    } else {
     s0+=81.0;
     s1+=190.0;
    }
   }
  } else {
   if(i50<-7.079083388816798e-06){
    s0+=8.0;
   } else {
    if(i36<1.1269173622131348){
     s0+=9.0;
     s1+=13.0;
    } else {
     s0+=50.0;
     s1+=14502.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i12<0.1999812126159668){
  if(i5<0.0003948807716369629){
   if(i21<0.0008722951170057058){
    if(i32<0.0007354016997851431){
     s0+=28486.0;
     s1+=379.0;
    } else {
     s0+=1344.0;
     s1+=2012.0;
    }
   } else {
    if(i31<1.122455358505249){
     s0+=69841.0;
     s1+=209.0;
    } else {
     s0+=6378.0;
     s1+=483.0;
    }
   }
  } else {
   if(i66<0.00014530381304211915){
    if(i21<0.0009772909106686711){
     s0+=2258.0;
     s1+=1435.0;
    } else {
     s0+=4475.0;
     s1+=167.0;
    }
   } else {
    if(i30<0.049838751554489136){
     s0+=1096.0;
     s1+=380.0;
    } else {
     s0+=1250.0;
     s1+=2814.0;
    }
   }
  }
 } else {
  if(i46<-8.430932211922482e-06){
   if(i55<0.06154024600982666){
    if(i65<0.0009485940681770444){
     s0+=51.0;
     s1+=12.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i7<0.0064681051298975945){
     s0+=30.0;
     s1+=36.0;
    } else {
     s0+=1.0;
     s1+=1797.0;
    }
   }
  } else {
   if(i59<-2.9736752367170993e-06){
    if(i61<1.0052942037582397){
     s0+=51.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=195.0;
   }
  }
 }
} else {
 if(i10<1.0143113136291504){
  if(i46<-1.072225313691888e-05){
   if(i30<0.1948752999305725){
    if(i7<0.006385420449078083){
     s0+=788.0;
     s1+=429.0;
    } else {
     s0+=19.0;
     s1+=794.0;
    }
   } else {
    if(i33<0.0019274756778031588){
     s0+=19.0;
    } else {
     s0+=39.0;
     s1+=1463.0;
    }
   }
  } else {
   if(i7<0.006159687414765358){
    s0+=286.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i7<0.0017503537237644196){
   if(i1<-8.067936869338155e-05){
    if(i58<1.0033458471298218){
     s1+=60.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i53<0.0002934050280600786){
     s1+=12.0;
    } else {
     s0+=57.0;
    }
   }
  } else {
   if(i50<-7.533166808570968e-06){
    s0+=12.0;
   } else {
    s1+=11648.0;
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i7<0.014074311591684818){
  if(i32<0.0006690444424748421){
   if(i46<-2.0090134057682008e-05){
    if(i3<1.0078352689743042){
     s0+=119.0;
     s1+=72.0;
    } else {
     s0+=15.0;
     s1+=366.0;
    }
   } else {
    if(i28<0.001856507733464241){
     s0+=72986.0;
     s1+=208.0;
    } else {
     s0+=5206.0;
     s1+=148.0;
    }
   }
  } else {
   if(i27<0.0010019142646342516){
    if(i40<0.006734028924256563){
     s0+=3014.0;
     s1+=374.0;
    } else {
     s0+=1248.0;
     s1+=3360.0;
    }
   } else {
    if(i3<1.0011353492736816){
     s0+=28547.0;
     s1+=669.0;
    } else {
     s0+=3207.0;
     s1+=1530.0;
    }
   }
  }
 } else {
  if(i62<-0.01226910948753357){
   if(i19<0.056109048426151276){
    if(i3<1.0047814846038818){
     s0+=892.0;
     s1+=35.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   } else {
    if(i60<0.12843835353851318){
     s0+=99.0;
     s1+=75.0;
    } else {
     s0+=27.0;
     s1+=177.0;
    }
   }
  } else {
   if(i44<0.00042729658889584243){
    if(i12<0.034823834896087646){
     s0+=19.0;
     s1+=73.0;
    } else {
     s0+=12.0;
     s1+=2630.0;
    }
   } else {
    if(i7<0.017281748354434967){
     s0+=21.0;
     s1+=2.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i8<1.0200928449630737){
  if(i36<1.0905578136444092){
   if(i13<1.0047025680541992){
    if(i59<-1.0758207281469367e-05){
     s0+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=916.0;
   }
  } else {
   if(i7<0.005829906091094017){
    if(i0<0.00016307830810546875){
     s0+=883.0;
     s1+=34.0;
    } else {
     s0+=11.0;
     s1+=104.0;
    }
   } else {
    if(i15<0.0010914847953245044){
     s0+=11.0;
     s1+=793.0;
    } else {
     s0+=33.0;
    }
   }
  }
 } else {
  if(i22<1.7041046619415283){
   if(i46<-9.555956239637453e-06){
    if(i1<-3.172258220729418e-05){
     s0+=69.0;
     s1+=12551.0;
    } else {
     s0+=87.0;
     s1+=66.0;
    }
   } else {
    s0+=66.0;
   }
  } else {
   s0+=41.0;
  }
 }
}
if(i11<1.0181405544281006){
 if(i3<1.003873586654663){
  if(i57<1.0001006126403809){
   if(i23<0.235647052526474){
    if(i19<0.0901748463511467){
     s0+=58693.0;
     s1+=578.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i59<-3.4380582292214967e-06){
     s0+=3.0;
     s1+=90.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i40<0.17876586318016052){
    if(i40<0.014275147579610348){
     s0+=35754.0;
     s1+=780.0;
    } else {
     s0+=16711.0;
     s1+=3312.0;
    }
   } else {
    if(i5<0.00011444091796875){
     s0+=43.0;
     s1+=17.0;
    } else {
     s0+=12.0;
     s1+=510.0;
    }
   }
  }
 } else {
  if(i56<0.037216171622276306){
   if(i14<0.0019530088175088167){
    if(i67<-5.026001872465713e-06){
     s0+=184.0;
     s1+=570.0;
    } else {
     s0+=2622.0;
     s1+=11.0;
    }
   } else {
    if(i15<0.000542821828275919){
     s0+=104.0;
     s1+=1863.0;
    } else {
     s0+=749.0;
     s1+=30.0;
    }
   }
  } else {
   if(i52<2.7388334274291992e-05){
    if(i27<0.002185130026191473){
     s0+=34.0;
     s1+=17.0;
    } else {
     s0+=32.0;
     s1+=2329.0;
    }
   } else {
    if(i4<1.008664846420288){
     s0+=11.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i7<0.004994588904082775){
  if(i18<0.0019958019256591797){
   if(i54<0.0003205845132470131){
    if(i31<1.0840704441070557){
     s1+=186.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i26<1.0609849691390991){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=1278.0;
     s1+=112.0;
    }
   }
  } else {
   s1+=435.0;
  }
 } else {
  if(i4<0.9998955726623535){
   if(i75<-0.009981991723179817){
    s1+=115.0;
   } else {
    if(i33<0.015868647024035454){
     s0+=71.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i18<-0.001835644245147705){
    if(i49<-0.00023910487652756274){
     s0+=13.0;
     s1+=262.0;
    } else {
     s0+=69.0;
     s1+=11.0;
    }
   } else {
    if(i70<6.31863804301247e-06){
     s0+=18.0;
     s1+=13101.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i0<6.562471389770508e-05){
 if(i6<1.5079975128173828e-05){
  if(i43<0.22627761960029602){
   if(i39<1.0903575420379639){
    if(i30<0.0614202618598938){
     s0+=25339.0;
     s1+=1581.0;
    } else {
     s0+=1329.0;
     s1+=835.0;
    }
   } else {
    if(i31<1.122455358505249){
     s0+=72454.0;
     s1+=400.0;
    } else {
     s0+=7400.0;
     s1+=637.0;
    }
   }
  } else {
   if(i1<-3.255768388044089e-05){
    if(i74<0.13966572284698486){
     s1+=310.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i47<2.284805304952897e-05){
     s0+=72.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i49<-0.000216042302781716){
   if(i56<0.020702870562672615){
    if(i52<9.000301361083984e-06){
     s0+=229.0;
     s1+=490.0;
    } else {
     s0+=556.0;
     s1+=109.0;
    }
   } else {
    if(i48<0.935904860496521){
     s0+=106.0;
     s1+=38.0;
    } else {
     s0+=269.0;
     s1+=2449.0;
    }
   }
  } else {
   if(i32<0.0008123756852000952){
    if(i19<0.01816408336162567){
     s0+=2842.0;
    } else {
     s0+=9.0;
     s1+=59.0;
    }
   } else {
    if(i24<0.0003191828727722168){
     s0+=375.0;
     s1+=587.0;
    } else {
     s0+=3630.0;
     s1+=443.0;
    }
   }
  }
 }
} else {
 if(i19<0.007382198702543974){
  if(i33<0.001123802037909627){
   if(i18<0.0010527968406677246){
    if(i50<-2.841853529389482e-06){
     s0+=61.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i22<1.1294310092926025){
     s0+=3.0;
     s1+=1280.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i10<1.0171551704406738){
    if(i36<1.1762815713882446){
     s0+=1618.0;
    } else {
     s0+=7.0;
     s1+=42.0;
    }
   } else {
    s1+=418.0;
   }
  }
 } else {
  if(i50<-6.728960215696134e-06){
   s0+=176.0;
  } else {
   if(i2<0.0013386011123657227){
    if(i1<-7.760131848044693e-05){
     s0+=28.0;
     s1+=949.0;
    } else {
     s0+=151.0;
     s1+=384.0;
    }
   } else {
    if(i43<1.329183578491211e-05){
     s0+=19.0;
     s1+=89.0;
    } else {
     s0+=44.0;
     s1+=12965.0;
    }
   }
  }
 }
}
if(i9<1.0152561664581299){
 if(i2<0.0009602904319763184){
  if(i5<0.0003013014793395996){
   if(i7<0.0034022172912955284){
    if(i17<0.9958306550979614){
     s0+=18090.0;
     s1+=541.0;
    } else {
     s0+=62144.0;
     s1+=261.0;
    }
   } else {
    if(i21<0.0009798486717045307){
     s0+=2972.0;
     s1+=1472.0;
    } else {
     s0+=20370.0;
     s1+=740.0;
    }
   }
  } else {
   if(i45<0.043335556983947754){
    if(i21<0.0009409811464138329){
     s0+=2642.0;
     s1+=950.0;
    } else {
     s0+=5548.0;
     s1+=94.0;
    }
   } else {
    if(i10<0.9789858460426331){
     s0+=1106.0;
     s1+=376.0;
    } else {
     s0+=1087.0;
     s1+=2230.0;
    }
   }
  }
 } else {
  if(i40<0.02185952663421631){
   if(i21<0.0009700951632112265){
    if(i32<0.0010595337953418493){
     s1+=933.0;
    } else {
     s0+=72.0;
     s1+=1.0;
    }
   } else {
    if(i39<1.1726908683776855){
     s0+=1427.0;
    } else {
     s0+=4.0;
     s1+=144.0;
    }
   }
  } else {
   if(i15<0.000714269932359457){
    if(i51<1.0011589527130127){
     s0+=128.0;
     s1+=1036.0;
    } else {
     s0+=11.0;
     s1+=1402.0;
    }
   } else {
    s0+=31.0;
   }
  }
 }
} else {
 if(i59<-3.4006416171905585e-06){
  if(i1<-6.782143464079127e-05){
   if(i70<6.668858532066224e-06){
    if(i51<0.9983417987823486){
     s0+=25.0;
    } else {
     s0+=67.0;
     s1+=13184.0;
    }
   } else {
    s0+=25.0;
   }
  } else {
   if(i51<1.0016132593154907){
    if(i52<1.2934207916259766e-05){
     s0+=101.0;
     s1+=822.0;
    } else {
     s0+=268.0;
     s1+=36.0;
    }
   } else {
    if(i30<0.24700507521629333){
     s0+=200.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i7<0.006249392405152321){
   s0+=297.0;
  } else {
   s1+=7.0;
  }
 }
}
if(i2<0.0009762048721313477){
 if(i12<0.19871443510055542){
  if(i11<1.0181578397750854){
   if(i7<0.0037343723233789206){
    if(i37<1.0178465843200684){
     s0+=10345.0;
     s1+=507.0;
    } else {
     s0+=79241.0;
     s1+=570.0;
    }
   } else {
    if(i0<-2.485513687133789e-05){
     s0+=21274.0;
     s1+=738.0;
    } else {
     s0+=2162.0;
     s1+=3655.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    s1+=391.0;
   } else {
    if(i46<-9.194956874125637e-06){
     s0+=467.0;
     s1+=448.0;
    } else {
     s0+=461.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i14<0.0025012316182255745){
   if(i1<-6.200713687576354e-05){
    s1+=61.0;
   } else {
    if(i51<1.000745415687561){
     s0+=220.0;
    } else {
     s0+=91.0;
     s1+=5.0;
    }
   }
  } else {
   if(i2<-0.0004761815071105957){
    if(i32<0.0021566287614405155){
     s0+=49.0;
     s1+=46.0;
    } else {
     s1+=207.0;
    }
   } else {
    if(i7<0.006266140379011631){
     s0+=13.0;
    } else {
     s0+=1.0;
     s1+=1329.0;
    }
   }
  }
 }
} else {
 if(i49<-0.0002885576104745269){
  if(i70<6.3194529502652586e-06){
   if(i7<0.004957734607160091){
    if(i23<0.14726164937019348){
     s0+=73.0;
     s1+=53.0;
    } else {
     s0+=16.0;
     s1+=182.0;
    }
   } else {
    if(i51<0.9982905983924866){
     s0+=37.0;
    } else {
     s0+=20.0;
     s1+=12701.0;
    }
   }
  } else {
   s0+=50.0;
  }
 } else {
  if(i32<0.0010272932704538107){
   if(i15<0.000259967491729185){
    s1+=2615.0;
   } else {
    if(i82<-0.003613114356994629){
     s1+=27.0;
    } else {
     s0+=420.0;
     s1+=5.0;
    }
   }
  } else {
   if(i22<1.185887336730957){
    if(i68<0.00015713245375081897){
     s0+=52.0;
     s1+=6.0;
    } else {
     s0+=1349.0;
    }
   } else {
    if(i29<-0.0004951357841491699){
     s0+=35.0;
     s1+=106.0;
    } else {
     s0+=12.0;
     s1+=803.0;
    }
   }
  }
 }
}
if(i4<1.0026230812072754){
 if(i12<0.20754054188728333){
  if(i14<0.0016728255432099104){
   if(i26<1.0231759548187256){
    if(i63<-0.0003478825092315674){
     s0+=3469.0;
     s1+=329.0;
    } else {
     s0+=9122.0;
     s1+=99.0;
    }
   } else {
    if(i31<1.1354830265045166){
     s0+=73785.0;
     s1+=325.0;
    } else {
     s0+=2111.0;
     s1+=118.0;
    }
   }
  } else {
   if(i3<0.9982831478118896){
    if(i26<1.1230299472808838){
     s0+=17387.0;
     s1+=378.0;
    } else {
     s0+=370.0;
     s1+=161.0;
    }
   } else {
    if(i51<0.9995706081390381){
     s0+=2318.0;
     s1+=54.0;
    } else {
     s0+=1820.0;
     s1+=3304.0;
    }
   }
  }
 } else {
  if(i46<-1.2285770935704932e-05){
   if(i7<0.006621931213885546){
    if(i22<1.2603092193603516){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i0<-0.0001258552074432373){
     s0+=2.0;
     s1+=16.0;
    } else {
     s1+=699.0;
    }
   }
  } else {
   if(i61<1.0048781633377075){
    if(i13<0.9208122491836548){
     s1+=1.0;
    } else {
     s0+=196.0;
     s1+=6.0;
    }
   } else {
    s1+=7.0;
   }
  }
 }
} else {
 if(i2<0.0013426542282104492){
  if(i49<-0.00022313775843940675){
   if(i37<1.107893705368042){
    if(i2<0.00029796361923217773){
     s0+=603.0;
     s1+=219.0;
    } else {
     s0+=335.0;
     s1+=806.0;
    }
   } else {
    if(i3<1.0011646747589111){
     s0+=108.0;
     s1+=209.0;
    } else {
     s0+=74.0;
     s1+=1946.0;
    }
   }
  } else {
   if(i52<8.404254913330078e-06){
    if(i18<0.0006685853004455566){
     s0+=531.0;
     s1+=302.0;
    } else {
     s0+=20.0;
     s1+=264.0;
    }
   } else {
    if(i56<0.038454074412584305){
     s0+=2966.0;
     s1+=118.0;
    } else {
     s0+=465.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i27<0.0022745064925402403){
   if(i27<0.0013210643082857132){
    if(i15<0.0007021033670753241){
     s1+=1794.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i18<0.0027595162391662598){
     s0+=751.0;
    } else {
     s1+=79.0;
    }
   }
  } else {
   if(i13<0.9027070999145508){
    if(i5<0.0020080208778381348){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=68.0;
    }
   } else {
    if(i18<-0.0028148293495178223){
     s0+=16.0;
     s1+=91.0;
    } else {
     s0+=17.0;
     s1+=12623.0;
    }
   }
  }
 }
}
if(i14<0.0019662748090922832){
 if(i16<1.010737419128418){
  if(i2<0.0014827847480773926){
   if(i32<0.0006479526637122035){
    if(i33<0.0018041512230411172){
     s0+=71500.0;
     s1+=162.0;
    } else {
     s0+=5325.0;
     s1+=181.0;
    }
   } else {
    if(i24<-5.5164098739624023e-05){
     s0+=8309.0;
     s1+=3.0;
    } else {
     s0+=10726.0;
     s1+=1266.0;
    }
   }
  } else {
   if(i28<0.0009567219531163573){
    s1+=237.0;
   } else {
    if(i2<0.0023872852325439453){
     s0+=296.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i15<0.000882275402545929){
   if(i6<0.0003209114074707031){
    if(i32<0.00107870576903224){
     s1+=1153.0;
    } else {
     s0+=14.0;
     s1+=46.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   s0+=37.0;
  }
 }
} else {
 if(i2<-0.0002371668815612793){
  if(i7<0.017421722412109375){
   if(i41<0.9919331669807434){
    if(i25<1.024405598640442){
     s0+=12837.0;
     s1+=288.0;
    } else {
     s0+=124.0;
     s1+=53.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=231.0;
     s1+=359.0;
    } else {
     s0+=3040.0;
     s1+=338.0;
    }
   }
  } else {
   if(i23<0.06766685843467712){
    if(i26<1.0680748224258423){
     s0+=236.0;
     s1+=11.0;
    } else {
     s0+=34.0;
     s1+=33.0;
    }
   } else {
    if(i51<1.0018854141235352){
     s0+=5.0;
     s1+=252.0;
    } else {
     s0+=11.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i7<0.004116857890039682){
   if(i3<1.0111291408538818){
    if(i15<0.00026556866941973567){
     s0+=171.0;
     s1+=205.0;
    } else {
     s0+=2055.0;
    }
   } else {
    s1+=47.0;
   }
  } else {
   if(i29<-0.00031453371047973633){
    if(i45<0.30378440022468567){
     s0+=560.0;
     s1+=509.0;
    } else {
     s0+=28.0;
     s1+=401.0;
    }
   } else {
    if(i34<1.0542936325073242){
     s0+=182.0;
    } else {
     s0+=672.0;
     s1+=18875.0;
    }
   }
  }
 }
}
if(i2<0.000955045223236084){
 if(i31<1.1354830265045166){
  if(i17<1.0140788555145264){
   if(i14<0.0017211013473570347){
    if(i42<0.0004761679738294333){
     s0+=30221.0;
     s1+=802.0;
    } else {
     s0+=57832.0;
     s1+=97.0;
    }
   } else {
    if(i22<1.1164028644561768){
     s0+=2555.0;
     s1+=2429.0;
    } else {
     s0+=16994.0;
     s1+=945.0;
    }
   }
  } else {
   if(i31<1.086911916732788){
    if(i57<1.0022611618041992){
     s0+=63.0;
     s1+=584.0;
    } else {
     s0+=79.0;
    }
   } else {
    if(i12<0.20158329606056213){
     s0+=1070.0;
     s1+=150.0;
    } else {
     s0+=8.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i49<-0.0003309999010525644){
   if(i46<-1.2204929589643143e-05){
    if(i48<0.9300430417060852){
     s0+=153.0;
     s1+=47.0;
    } else {
     s0+=224.0;
     s1+=2191.0;
    }
   } else {
    if(i69<0.0009546696674078703){
     s0+=205.0;
     s1+=38.0;
    } else {
     s0+=329.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<1.1742115020751953e-05){
    if(i76<0.1515834629535675){
     s0+=3359.0;
     s1+=123.0;
    } else {
     s0+=49.0;
     s1+=27.0;
    }
   } else {
    if(i55<0.10877841711044312){
     s0+=674.0;
     s1+=51.0;
    } else {
     s0+=591.0;
     s1+=419.0;
    }
   }
  }
 }
} else {
 if(i27<0.0023654235992580652){
  if(i42<0.0010536673944443464){
   if(i39<1.0529288053512573){
    s0+=78.0;
   } else {
    if(i22<1.116804838180542){
     s1+=2293.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i30<0.0019504129886627197){
    if(i82<-0.002249985933303833){
     s1+=8.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i34<1.0952932834625244){
     s1+=36.0;
    } else {
     s0+=1982.0;
    }
   }
  }
 } else {
  if(i18<-0.002286672592163086){
   if(i23<0.10233905911445618){
    if(i24<0.0008468031883239746){
     s0+=72.0;
     s1+=24.0;
    } else {
     s1+=61.0;
    }
   } else {
    if(i17<0.8530012369155884){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=229.0;
    }
   }
  } else {
   if(i2<0.0010474920272827148){
    if(i56<0.021860402077436447){
     s0+=9.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=257.0;
    }
   } else {
    if(i1<-9.606707317288965e-05){
     s0+=1.0;
     s1+=12519.0;
    } else {
     s0+=13.0;
     s1+=844.0;
    }
   }
  }
 }
}
if(i18<0.0013867020606994629){
 if(i25<1.0242502689361572){
  if(i6<1.8417835235595703e-05){
   if(i19<0.007383549120277166){
    if(i39<1.0903575420379639){
     s0+=20594.0;
     s1+=571.0;
    } else {
     s0+=48398.0;
     s1+=71.0;
    }
   } else {
    if(i6<-1.1324882507324219e-06){
     s0+=33873.0;
     s1+=766.0;
    } else {
     s0+=4744.0;
     s1+=2551.0;
    }
   }
  } else {
   if(i40<0.03232648968696594){
    if(i7<0.00409046933054924){
     s0+=5093.0;
     s1+=156.0;
    } else {
     s0+=467.0;
     s1+=916.0;
    }
   } else {
    if(i3<1.0006062984466553){
     s0+=996.0;
     s1+=366.0;
    } else {
     s0+=438.0;
     s1+=2847.0;
    }
   }
  }
 } else {
  if(i14<0.0015976959839463234){
   if(i58<1.0015878677368164){
    s0+=450.0;
   } else {
    if(i21<0.0018087521893903613){
     s0+=83.0;
    } else {
     s0+=8.0;
     s1+=37.0;
    }
   }
  } else {
   if(i1<-6.513924017781392e-05){
    if(i23<0.09710705280303955){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=35.0;
     s1+=2249.0;
    }
   } else {
    if(i47<2.456567744957283e-05){
     s0+=100.0;
     s1+=638.0;
    } else {
     s0+=324.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i18<0.0019668936729431152){
  if(i22<1.1180615425109863){
   s1+=862.0;
  } else {
   if(i33<0.002058550249785185){
    if(i63<-0.0008376836776733398){
     s1+=7.0;
    } else {
     s0+=789.0;
     s1+=1.0;
    }
   } else {
    if(i4<1.001605749130249){
     s0+=110.0;
     s1+=16.0;
    } else {
     s1+=809.0;
    }
   }
  }
 } else {
  if(i4<1.0025906562805176){
   if(i24<0.0007607638835906982){
    s1+=182.0;
   } else {
    s0+=37.0;
   }
  } else {
   if(i52<-0.000371396541595459){
    s0+=4.0;
   } else {
    if(i57<1.0011873245239258){
     s0+=10.0;
     s1+=195.0;
    } else {
     s1+=10993.0;
    }
   }
  }
 }
}
if(i9<1.0143437385559082){
 if(i3<1.0036582946777344){
  if(i1<-9.168191172648221e-05){
   if(i37<1.0457196235656738){
    if(i24<0.0006478428840637207){
     s0+=715.0;
     s1+=71.0;
    } else {
     s0+=44.0;
     s1+=43.0;
    }
   } else {
    if(i60<0.04582366347312927){
     s0+=33.0;
     s1+=13.0;
    } else {
     s0+=57.0;
     s1+=1063.0;
    }
   }
  } else {
   if(i24<9.208917617797852e-05){
    if(i71<0.2342281937599182){
     s0+=79779.0;
     s1+=953.0;
    } else {
     s0+=34.0;
     s1+=34.0;
    }
   } else {
    if(i19<0.007393957115709782){
     s0+=18216.0;
     s1+=345.0;
    } else {
     s0+=12575.0;
     s1+=3278.0;
    }
   }
  }
 } else {
  if(i63<-0.0004411935806274414){
   if(i2<0.0009146332740783691){
    if(i22<1.1843671798706055){
     s0+=126.0;
    } else {
     s0+=75.0;
     s1+=326.0;
    }
   } else {
    if(i17<0.8882160186767578){
     s0+=22.0;
     s1+=83.0;
    } else {
     s0+=61.0;
     s1+=2333.0;
    }
   }
  } else {
   if(i53<0.0022969902493059635){
    if(i34<1.116804838180542){
     s0+=773.0;
     s1+=1038.0;
    } else {
     s0+=2824.0;
     s1+=164.0;
    }
   } else {
    if(i15<0.00043201399967074394){
     s0+=6.0;
     s1+=360.0;
    } else {
     s0+=27.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i46<-1.2239957868587226e-05){
  if(i10<1.0143743753433228){
   if(i49<-0.00022611395979765803){
    if(i31<1.1673319339752197){
     s0+=450.0;
     s1+=1092.0;
    } else {
     s0+=2.0;
     s1+=1026.0;
    }
   } else {
    if(i31<1.0783891677856445){
     s1+=107.0;
    } else {
     s0+=364.0;
     s1+=28.0;
    }
   }
  } else {
   if(i15<0.0008069879258982837){
    if(i70<-6.002398095006356e-06){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=11897.0;
    }
   } else {
    s0+=63.0;
   }
  }
 } else {
  if(i24<0.00011610984802246094){
   if(i14<0.0020664718467742205){
    s0+=287.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i19<0.003981473855674267){
    s0+=17.0;
   } else {
    s1+=10.0;
   }
  }
 }
}
if(i2<0.0009393095970153809){
 if(i8<1.0144232511520386){
  if(i5<0.0003135800361633301){
   if(i1<-0.0001018423427012749){
    if(i75<-0.003990907222032547){
     s0+=8.0;
     s1+=172.0;
    } else {
     s0+=238.0;
     s1+=72.0;
    }
   } else {
    if(i7<0.0028207271825522184){
     s0+=74974.0;
     s1+=570.0;
    } else {
     s0+=28800.0;
     s1+=2310.0;
    }
   }
  } else {
   if(i7<0.004223987925797701){
    if(i40<0.029272932559251785){
     s0+=7089.0;
     s1+=94.0;
    } else {
     s0+=333.0;
     s1+=78.0;
    }
   } else {
    if(i18<-0.002343803644180298){
     s0+=1758.0;
     s1+=788.0;
    } else {
     s0+=468.0;
     s1+=2391.0;
    }
   }
  }
 } else {
  if(i3<1.0012667179107666){
   if(i16<0.9991347193717957){
    if(i14<0.0031062602065503597){
     s0+=251.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i57<1.002591609954834){
     s0+=11.0;
     s1+=100.0;
    } else {
     s0+=57.0;
     s1+=3.0;
    }
   }
  } else {
   if(i23<0.08875766396522522){
    if(i21<0.0009392524370923638){
     s1+=45.0;
    } else {
     s0+=104.0;
     s1+=20.0;
    }
   } else {
    if(i32<0.00045524706365540624){
     s0+=62.0;
    } else {
     s0+=69.0;
     s1+=1197.0;
    }
   }
  }
 }
} else {
 if(i39<1.1706266403198242){
  if(i22<1.116804838180542){
   if(i28<0.00020864690304733813){
    s0+=101.0;
   } else {
    s1+=2395.0;
   }
  } else {
   if(i9<1.0214061737060547){
    if(i40<0.040314145386219025){
     s0+=1987.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i20<0.9490760564804077){
   if(i14<0.005533963441848755){
    if(i44<0.0002592568635009229){
     s1+=10.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i32<0.004073325544595718){
     s0+=2.0;
     s1+=76.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i23<0.0970124900341034){
    if(i35<1.0141890048980713){
     s0+=26.0;
     s1+=448.0;
    } else {
     s0+=49.0;
     s1+=14.0;
    }
   } else {
    if(i23<0.14332130551338196){
     s0+=15.0;
     s1+=872.0;
    } else {
     s0+=4.0;
     s1+=12670.0;
    }
   }
  }
 }
}
if(i1<-9.840739949140698e-05){
 if(i30<0.04125577211380005){
  if(i47<9.343750207335688e-06){
   if(i40<0.008197067305445671){
    s0+=2.0;
   } else {
    s1+=64.0;
   }
  } else {
   if(i9<0.948928713798523){
    if(i26<1.141512393951416){
     s0+=519.0;
     s1+=11.0;
    } else {
     s0+=37.0;
     s1+=27.0;
    }
   } else {
    if(i69<0.00982215628027916){
     s0+=40.0;
    } else {
     s0+=18.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i50<-6.6408160819264594e-06){
   s0+=229.0;
  } else {
   if(i10<0.9648668766021729){
    if(i40<0.13038165867328644){
     s0+=34.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=53.0;
    }
   } else {
    if(i44<0.0003563922946341336){
     s0+=25.0;
     s1+=15171.0;
    } else {
     s0+=20.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i10<1.007127285003662){
  if(i3<1.0064417123794556){
   if(i14<0.0016890920232981443){
    if(i37<1.0178465843200684){
     s0+=10456.0;
     s1+=431.0;
    } else {
     s0+=79131.0;
     s1+=497.0;
    }
   } else {
    if(i21<0.000918716425076127){
     s0+=2484.0;
     s1+=2487.0;
    } else {
     s0+=19986.0;
     s1+=1780.0;
    }
   }
  } else {
   if(i6<3.784894943237305e-05){
    if(i4<1.0047276020050049){
     s1+=3.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i22<1.629280686378479){
     s0+=18.0;
     s1+=303.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i15<0.0003032727399840951){
   if(i0<3.808736801147461e-05){
    if(i7<0.003965952433645725){
     s0+=498.0;
     s1+=43.0;
    } else {
     s0+=30.0;
     s1+=266.0;
    }
   } else {
    if(i32<0.0001038594200508669){
     s0+=34.0;
     s1+=5.0;
    } else {
     s0+=120.0;
     s1+=2906.0;
    }
   }
  } else {
   if(i45<0.07278921455144882){
    if(i65<0.0010233407374471426){
     s0+=2775.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   } else {
    if(i36<1.2035794258117676){
     s0+=1.0;
     s1+=59.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i11<1.0181405544281006){
 if(i16<1.0073180198669434){
  if(i45<0.3424045443534851){
   if(i14<0.0017199964495375752){
    if(i14<0.0012273236643522978){
     s0+=79553.0;
     s1+=323.0;
    } else {
     s0+=11282.0;
     s1+=614.0;
    }
   } else {
    if(i3<0.9982990026473999){
     s0+=17481.0;
     s1+=574.0;
    } else {
     s0+=5317.0;
     s1+=4478.0;
    }
   }
  } else {
   if(i19<0.060295164585113525){
    if(i20<0.9754589200019836){
     s0+=207.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i59<-4.531401373242261e-06){
     s1+=593.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i7<0.002564558759331703){
   if(i22<1.105151891708374){
    s1+=179.0;
   } else {
    if(i28<0.0030545820482075214){
     s0+=713.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  } else {
   if(i12<0.0031494200229644775){
    if(i9<0.968239963054657){
     s0+=152.0;
     s1+=20.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i24<0.0016326308250427246){
     s0+=238.0;
     s1+=3438.0;
    } else {
     s0+=56.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i6<1.1742115020751953e-05){
  if(i23<0.24923095107078552){
   if(i58<1.0015456676483154){
    if(i14<0.0021955380216240883){
     s0+=434.0;
    } else {
     s0+=15.0;
     s1+=43.0;
    }
   } else {
    if(i67<6.803909855079837e-06){
     s0+=30.0;
     s1+=132.0;
    } else {
     s0+=129.0;
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.002600825857371092){
    if(i22<1.2181655168533325){
     s1+=2.0;
    } else {
     s0+=10.0;
    }
   } else {
    s1+=212.0;
   }
  }
 } else {
  if(i0<4.708766937255859e-06){
   if(i1<-8.388661808567122e-05){
    if(i19<0.021549366414546967){
     s0+=7.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i24<0.0004297494888305664){
     s0+=3.0;
     s1+=47.0;
    } else {
     s0+=179.0;
     s1+=18.0;
    }
   }
  } else {
   if(i34<1.1766420602798462){
    if(i53<0.0008606279734522104){
     s0+=8.0;
     s1+=1207.0;
    } else {
     s0+=442.0;
     s1+=97.0;
    }
   } else {
    if(i23<0.10245606303215027){
     s0+=94.0;
     s1+=90.0;
    } else {
     s0+=49.0;
     s1+=12177.0;
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
