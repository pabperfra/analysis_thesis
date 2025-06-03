/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = laplace_box_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=15 gaussian_blur=10 difference_of_gaussian=20 laplace_box_of_gaussian_blur=20 gaussian_blur=15 sobel_of_gaussian_blur=10 median_box=5 gaussian_blur=5 gaussian_blur=2 gaussian_blur=3 mean_box=15 sobel_of_gaussian_blur=30 mean_box=3 top_hat_box=20 difference_of_gaussian=10 mean_box=10 sobel_of_gaussian_blur=15 mean_box=5 sobel_of_gaussian_blur=5 laplace_box_of_gaussian_blur=10 top_hat_box=15 variance_box=30 maximum_box=3 maximum_box=30 median_box=3 maximum_box=5 gaussian_blur=1 maximum_box=20 difference_of_gaussian=30 variance_box=20 sobel_of_gaussian_blur=20 maximum_box=2 variance_box=15 maximum_box=10 maximum_box=15 large_hessian_eigenvalue_of_gaussian_blur=10 top_hat_box=30 top_hat_box=10 variance_box=10 mean_box=2 sobel_of_gaussian_blur=3 variance_box=5 mean_box=20 variance_box=3 large_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=30 laplace_box_of_gaussian_blur=30 small_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=5 small_hessian_eigenvalue_of_gaussian_blur=30 maximum_box=1 variance_box=2 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=3 variance_box=1 laplace_box_of_gaussian_blur=5 sobel_of_median_box=3 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=20 difference_of_gaussian=5 sobel_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=5 mean_box=1 difference_of_gaussian=1 laplace_box_of_gaussian_blur=1 top_hat_box=2 difference_of_gaussian=3
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 77
max_depth = 5
num_trees = 250
feature_importances = 0.06842971927734899,0.10213023208861968,0.060559639034302844,0.07306273635433387,0.07153113620366516,0.03830276324127953,0.03799364146609148,0.041127419430894104,0.04109049232709201,0.02926534733948923,0.02701290341147416,0.03298843256962376,0.017466142086823486,0.018099501798478666,0.025123640475408857,0.020783234759025642,0.01374778457573887,0.010685214914023657,0.014683547371797804,0.010611371161613332,0.013471152410948421,0.01150537119152268,0.017961162561166116,0.010685644271556717,0.010057352945530453,0.008964781705607492,0.02577888926415012,0.007374424446819793,0.004587801603098214,0.005405808975246476,0.006461744472760034,0.008327566363545529,0.006886711236258838,0.0037247745164848862,0.007589638381442941,0.0049321166080851814,0.0053551759431544384,0.00405645020617711,0.011912575941475576,0.0025621717362480172,0.004789548598146851,0.011229172150372878,0.00450215890365301,0.001705293092388727,0.003651861123954898,0.0023069547231749205,0.0033121966806202987,0.0027012893731799517,0.0021930862132539773,0.0021377394512280897,0.003915076270602392,0.00191164497723913,0.00217971066447712,0.0016486328338454585,0.003794833324065132,0.0018979121110197729,0.0020881471823822498,0.0011662644616860336,0.0015482632275495099,0.001194215493383256,0.0006396420381806048,0.0014491423684537606,0.0006216274835507261,0.0007196119533336971,0.0006157251074139793,0.0009379978127611725,0.00047396168172588387,0.0007529584213373181,0.0003593809828845548,0.0002986598442724622,0.00012851374943300564,7.309116109570819e-05,0.00026993499608262333,0.000183513473507069,0.0001272805032810496,5.54990290080415e-05,0.00012324386905041105
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
if(i2<0.0009613633155822754){
 if(i4<0.000334322452545166){
  if(i51<-0.0016885398654267192){
   s1+=85.0;
  } else {
   if(i32<0.0006985495565459132){
    if(i33<1.0178465843200684){
     s0+=9327.0;
     s1+=182.0;
    } else {
     s0+=66958.0;
     s1+=228.0;
    }
   } else {
    if(i34<0.0010289032943546772){
     s0+=1830.0;
     s1+=1965.0;
    } else {
     s0+=26640.0;
     s1+=1030.0;
    }
   }
  }
 } else {
  if(i7<0.004105173051357269){
   if(i1<-5.2630821301136166e-05){
    if(i49<-2.4968663637991995e-05){
     s0+=98.0;
     s1+=20.0;
    } else {
     s0+=13.0;
     s1+=96.0;
    }
   } else {
    if(i33<1.0123084783554077){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=7069.0;
     s1+=71.0;
    }
   }
  } else {
   if(i0<-1.2099742889404297e-05){
    if(i1<-9.168589895125479e-05){
     s0+=196.0;
     s1+=243.0;
    } else {
     s0+=1165.0;
     s1+=175.0;
    }
   } else {
    if(i15<0.036263734102249146){
     s0+=280.0;
     s1+=116.0;
    } else {
     s0+=559.0;
     s1+=3843.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007052693981677294){
  if(i8<1.012189507484436){
   if(i53<-4.734275080409134e-06){
    if(i5<0.00022017955780029297){
     s0+=186.0;
     s1+=2982.0;
    } else {
     s0+=35.0;
    }
   } else {
    s0+=42.0;
   }
  } else {
   if(i69<1.3287342881085351e-05){
    if(i5<0.0002608299255371094){
     s0+=35.0;
     s1+=13502.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  s0+=1874.0;
 }
}
if(i0<6.431341171264648e-05){
 if(i22<0.19861671328544617){
  if(i26<1.0181578397750854){
   if(i32<0.0007107780547812581){
    if(i8<1.0177817344665527){
     s0+=80008.0;
     s1+=462.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.9980305433273315){
     s0+=20539.0;
     s1+=373.0;
    } else {
     s0+=12675.0;
     s1+=4607.0;
    }
   }
  } else {
   if(i0<1.3649463653564453e-05){
    if(i33<1.0553319454193115){
     s0+=11.0;
     s1+=21.0;
    } else {
     s0+=659.0;
     s1+=150.0;
    }
   } else {
    if(i53<-1.1159306268382352e-05){
     s0+=131.0;
     s1+=7.0;
    } else {
     s0+=157.0;
     s1+=674.0;
    }
   }
  }
 } else {
  if(i52<0.037943560630083084){
   if(i72<1.0378682613372803){
    if(i7<0.008732675574719906){
     s0+=187.0;
     s1+=4.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i1<-6.388937617884949e-05){
     s1+=48.0;
    } else {
     s0+=25.0;
     s1+=3.0;
    }
   }
  } else {
   if(i18<0.0015938609139993787){
    if(i5<1.6927719116210938e-05){
     s0+=91.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i13<9.460281580686569e-05){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=48.0;
     s1+=1525.0;
    }
   }
  }
 }
} else {
 if(i42<0.01947672665119171){
  if(i48<1.2576580047607422e-05){
   if(i32<0.0013593072071671486){
    if(i48<-1.1324882507324219e-06){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=101.0;
     s1+=2408.0;
    }
   } else {
    if(i35<1.1527581214904785){
     s0+=195.0;
    } else {
     s1+=78.0;
    }
   }
  } else {
   if(i25<1.1843671798706055){
    if(i35<1.0834892988204956){
     s0+=46.0;
     s1+=21.0;
    } else {
     s0+=1420.0;
     s1+=1.0;
    }
   } else {
    s1+=467.0;
   }
  }
 } else {
  if(i30<0.0017189383506774902){
   if(i7<0.0043674372136592865){
    if(i37<-1.9918035832233727e-05){
     s1+=354.0;
    } else {
     s0+=124.0;
    }
   } else {
    if(i50<0.997137725353241){
     s0+=14.0;
    } else {
     s0+=104.0;
     s1+=13028.0;
    }
   }
  } else {
   s0+=18.0;
  }
 }
}
if(i8<1.0136241912841797){
 if(i3<1.0035377740859985){
  if(i20<0.06302852928638458){
   if(i30<8.219480514526367e-05){
    if(i34<0.00032770104007795453){
     s0+=16012.0;
     s1+=612.0;
    } else {
     s0+=61579.0;
     s1+=253.0;
    }
   } else {
    if(i25<1.1162974834442139){
     s0+=5943.0;
     s1+=2354.0;
    } else {
     s0+=27195.0;
     s1+=1571.0;
    }
   }
  } else {
   if(i45<0.008020320907235146){
    if(i21<-0.000590205192565918){
     s0+=344.0;
     s1+=21.0;
    } else {
     s0+=16.0;
     s1+=33.0;
    }
   } else {
    if(i7<0.009827306494116783){
     s0+=15.0;
    } else {
     s0+=12.0;
     s1+=793.0;
    }
   }
  }
 } else {
  if(i31<0.002205150667577982){
   if(i30<0.0005121231079101562){
    if(i7<0.002644273452460766){
     s0+=533.0;
     s1+=89.0;
    } else {
     s0+=85.0;
     s1+=1054.0;
    }
   } else {
    s0+=3143.0;
   }
  } else {
   if(i45<0.000312990159727633){
    if(i67<-0.003222823143005371){
     s1+=6.0;
    } else {
     s0+=104.0;
    }
   } else {
    if(i53<-4.689713932748418e-06){
     s0+=124.0;
     s1+=3003.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
} else {
 if(i8<1.0192979574203491){
  if(i7<0.0049649616703391075){
   if(i12<1.0104376077651978){
    if(i40<0.0007850324036553502){
     s1+=246.0;
    } else {
     s0+=779.0;
     s1+=14.0;
    }
   } else {
    if(i55<-4.934242497256491e-06){
     s0+=31.0;
    } else {
     s1+=306.0;
    }
   }
  } else {
   if(i53<-4.978929268872889e-07){
    if(i47<0.9982911348342896){
     s0+=25.0;
    } else {
     s0+=50.0;
     s1+=1131.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i3<1.0013195276260376){
   if(i13<0.000348721572663635){
    if(i7<0.0058310553431510925){
     s0+=198.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i47<0.9950518608093262){
     s0+=1.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i25<1.7041046619415283){
    if(i21<-0.00026798248291015625){
     s0+=29.0;
     s1+=69.0;
    } else {
     s0+=74.0;
     s1+=12851.0;
    }
   } else {
    s0+=23.0;
   }
  }
 }
}
if(i41<1.0214226245880127){
 if(i27<1.1546916961669922){
  if(i9<1.0075807571411133){
   if(i6<1.0026342868804932){
    if(i32<0.0007165358983911574){
     s0+=77706.0;
     s1+=433.0;
    } else {
     s0+=29039.0;
     s1+=3240.0;
    }
   } else {
    if(i22<0.12464600801467896){
     s0+=2474.0;
     s1+=701.0;
    } else {
     s0+=275.0;
     s1+=596.0;
    }
   }
  } else {
   if(i36<1.098123550415039){
    if(i25<1.057311773300171){
     s0+=3.0;
    } else {
     s1+=1462.0;
    }
   } else {
    if(i9<1.0143063068389893){
     s0+=2512.0;
     s1+=456.0;
    } else {
     s0+=38.0;
     s1+=587.0;
    }
   }
  }
 } else {
  if(i2<-6.22868537902832e-06){
   if(i38<0.14268270134925842){
    if(i42<0.14442375302314758){
     s0+=2113.0;
     s1+=93.0;
    } else {
     s0+=188.0;
     s1+=145.0;
    }
   } else {
    if(i18<0.004817276261746883){
     s0+=135.0;
     s1+=40.0;
    } else {
     s0+=14.0;
     s1+=271.0;
    }
   }
  } else {
   if(i49<-1.949672878254205e-05){
    if(i15<0.04074743390083313){
     s0+=108.0;
     s1+=140.0;
    } else {
     s0+=83.0;
     s1+=2757.0;
    }
   } else {
    if(i20<0.02748456597328186){
     s0+=244.0;
     s1+=8.0;
    } else {
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i0<1.341104507446289e-05){
  if(i20<0.0283055417239666){
   if(i47<1.0007455348968506){
    if(i56<1.0455071926116943){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=374.0;
    }
   } else {
    if(i7<0.005423491820693016){
     s0+=295.0;
     s1+=28.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i7<0.005633378401398659){
    s0+=157.0;
   } else {
    if(i25<1.629280686378479){
     s0+=6.0;
     s1+=372.0;
    } else {
     s0+=31.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i20<0.005298480857163668){
   if(i7<0.0025100605562329292){
    if(i66<-7.73606552684214e-06){
     s0+=4.0;
     s1+=29.0;
    } else {
     s0+=258.0;
    }
   } else {
    if(i13<0.000823963200673461){
     s0+=6.0;
     s1+=345.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i15<0.1022595465183258){
    if(i46<1.1666433238133322e-05){
     s0+=38.0;
     s1+=197.0;
    } else {
     s0+=70.0;
     s1+=4.0;
    }
   } else {
    if(i1<-5.6921198847703636e-05){
     s0+=55.0;
     s1+=11987.0;
    } else {
     s0+=102.0;
     s1+=461.0;
    }
   }
  }
 }
}
if(i38<0.20029965043067932){
 if(i1<-9.717797365738079e-05){
  if(i59<0.0030702182557433844){
   if(i21<-0.0005432963371276855){
    if(i22<0.032797276973724365){
     s0+=100.0;
     s1+=11.0;
    } else {
     s0+=18.0;
     s1+=90.0;
    }
   } else {
    if(i13<0.0006787346792407334){
     s0+=169.0;
     s1+=3681.0;
    } else {
     s0+=172.0;
    }
   }
  } else {
   if(i1<-0.00019301939755678177){
    if(i70<0.020466506481170654){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i33<1.0836575031280518){
     s0+=480.0;
     s1+=30.0;
    } else {
     s0+=6.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i5<1.901388168334961e-05){
   if(i31<0.001067528617568314){
    if(i42<0.009235650300979614){
     s0+=21473.0;
     s1+=367.0;
    } else {
     s0+=9156.0;
     s1+=2485.0;
    }
   } else {
    if(i29<1.0887749195098877){
     s0+=2.0;
     s1+=78.0;
    } else {
     s0+=77070.0;
     s1+=826.0;
    }
   }
  } else {
   if(i13<0.0003100049798376858){
    if(i37<8.981952851172537e-05){
     s0+=704.0;
     s1+=3278.0;
    } else {
     s0+=731.0;
     s1+=315.0;
    }
   } else {
    if(i18<0.007502944208681583){
     s0+=5601.0;
     s1+=199.0;
    } else {
     s0+=107.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i36<1.175400972366333){
  if(i34<0.0022815228439867496){
   if(i28<1.0484521389007568){
    if(i65<0.0006951693794690073){
     s0+=457.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i48<-2.384185791015625e-07){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i4<-8.827447891235352e-05){
    s0+=24.0;
   } else {
    if(i36<1.1462047100067139){
     s0+=2.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i3<1.0011639595031738){
   if(i1<-4.443278885446489e-05){
    if(i7<0.0061860596761107445){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=470.0;
    }
   } else {
    if(i1<-1.9465638615656644e-05){
     s0+=40.0;
     s1+=23.0;
    } else {
     s0+=228.0;
     s1+=9.0;
    }
   }
  } else {
   if(i23<0.002557366155087948){
    if(i49<-2.016499638557434e-05){
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   } else {
    if(i2<-0.0001577138900756836){
     s0+=10.0;
     s1+=56.0;
    } else {
     s0+=7.0;
     s1+=12036.0;
    }
   }
  }
 }
}
if(i1<-8.840278314892203e-05){
 if(i3<1.0000547170639038){
  if(i67<-0.010489732027053833){
   if(i60<-0.0009478200227022171){
    if(i58<1.0033626556396484){
     s0+=1.0;
     s1+=39.0;
    } else {
     s0+=40.0;
     s1+=19.0;
    }
   } else {
    if(i29<1.5545397996902466){
     s0+=648.0;
     s1+=12.0;
    } else {
     s0+=52.0;
     s1+=31.0;
    }
   }
  } else {
   if(i34<0.00492106145247817){
    if(i42<0.04608062282204628){
     s0+=40.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i32<0.001888855593279004){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=423.0;
    }
   }
  }
 } else {
  if(i53<-5.289870023261756e-05){
   s0+=68.0;
  } else {
   if(i69<4.788699243363226e-06){
    if(i9<0.9755473136901855){
     s0+=128.0;
     s1+=59.0;
    } else {
     s0+=165.0;
     s1+=15353.0;
    }
   } else {
    s0+=150.0;
   }
  }
 }
} else {
 if(i12<1.004023551940918){
  if(i11<1.0110284090042114){
   if(i7<0.003535489086061716){
    if(i9<0.9982382655143738){
     s0+=29312.0;
     s1+=724.0;
    } else {
     s0+=56609.0;
     s1+=290.0;
    }
   } else {
    if(i9<1.002681851387024){
     s0+=22672.0;
     s1+=2308.0;
    } else {
     s0+=898.0;
     s1+=853.0;
    }
   }
  } else {
   if(i27<1.0869145393371582){
    if(i7<0.003939351066946983){
     s0+=41.0;
    } else {
     s1+=601.0;
    }
   } else {
    if(i50<1.0008220672607422){
     s0+=559.0;
     s1+=9.0;
    } else {
     s0+=476.0;
     s1+=462.0;
    }
   }
  }
 } else {
  if(i12<1.0110044479370117){
   if(i7<0.0027594217099249363){
    if(i46<-1.621927549422253e-05){
     s0+=17.0;
     s1+=74.0;
    } else {
     s0+=3576.0;
     s1+=20.0;
    }
   } else {
    if(i21<-0.00017207860946655273){
     s0+=640.0;
     s1+=218.0;
    } else {
     s0+=485.0;
     s1+=2026.0;
    }
   }
  } else {
   if(i44<1.0065150260925293){
    if(i55<-3.7913200685579795e-06){
     s0+=23.0;
    } else {
     s0+=7.0;
     s1+=31.0;
    }
   } else {
    if(i59<0.005058730021119118){
     s0+=47.0;
     s1+=609.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i2<0.0009593367576599121){
 if(i10<1.0177059173583984){
  if(i4<0.00032654404640197754){
   if(i49<-3.5022916563320905e-05){
    if(i31<0.020527485758066177){
     s0+=323.0;
     s1+=112.0;
    } else {
     s0+=1.0;
     s1+=45.0;
    }
   } else {
    if(i32<0.0006622220389544964){
     s0+=73686.0;
     s1+=315.0;
    } else {
     s0+=30150.0;
     s1+=2574.0;
    }
   }
  } else {
   if(i1<-4.8143876483663917e-05){
    if(i42<0.1413378268480301){
     s0+=1341.0;
     s1+=1170.0;
    } else {
     s0+=30.0;
     s1+=756.0;
    }
   } else {
    if(i32<0.000791973783634603){
     s0+=3844.0;
     s1+=12.0;
    } else {
     s0+=3974.0;
     s1+=1176.0;
    }
   }
  }
 } else {
  if(i7<0.005069713108241558){
   if(i27<1.0698158740997314){
    s1+=20.0;
   } else {
    if(i35<1.1488782167434692){
     s0+=343.0;
     s1+=97.0;
    } else {
     s0+=540.0;
     s1+=7.0;
    }
   }
  } else {
   if(i3<0.9959328174591064){
    if(i7<0.017228927463293076){
     s0+=27.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i39<0.1310632824897766){
     s0+=26.0;
     s1+=509.0;
    } else {
     s0+=1.0;
     s1+=1103.0;
    }
   }
  }
 }
} else {
 if(i51<-0.0002815466723404825){
  if(i40<0.002188637852668762){
   if(i53<-1.2735968994093128e-05){
    if(i23<0.0025261598639190197){
     s0+=122.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i43<0.0011678359005600214){
     s1+=856.0;
    } else {
     s0+=38.0;
     s1+=57.0;
    }
   }
  } else {
   if(i10<0.8858749270439148){
    if(i30<0.0003650784492492676){
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i36<1.1297775506973267){
     s0+=18.0;
    } else {
     s0+=23.0;
     s1+=12038.0;
    }
   }
  }
 } else {
  if(i17<1.0139110088348389){
   if(i13<0.0007013810100033879){
    if(i23<0.0010903043439611793){
     s1+=1055.0;
    } else {
     s0+=230.0;
     s1+=734.0;
    }
   } else {
    if(i25<1.3942866325378418){
     s0+=1646.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i48<2.765655517578125e-05){
    if(i0<7.170438766479492e-05){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=1732.0;
    }
   } else {
    if(i49<-0.00010023452341556549){
     s1+=2.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
}
if(i17<1.0083101987838745){
 if(i1<-8.61893204273656e-05){
  if(i39<0.034238994121551514){
   if(i38<0.0463317334651947){
    if(i20<0.061080202460289){
     s0+=851.0;
     s1+=64.0;
    } else {
     s0+=42.0;
     s1+=72.0;
    }
   } else {
    if(i68<0.3923496603965759){
     s0+=18.0;
     s1+=44.0;
    } else {
     s0+=5.0;
     s1+=124.0;
    }
   }
  } else {
   if(i31<0.002418141346424818){
    if(i8<1.0179009437561035){
     s0+=130.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   } else {
    if(i59<0.003616676665842533){
     s0+=89.0;
     s1+=3714.0;
    } else {
     s0+=57.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i26<1.0182610750198364){
   if(i31<0.0010567116551101208){
    if(i8<1.0077781677246094){
     s0+=31972.0;
     s1+=2692.0;
    } else {
     s0+=191.0;
     s1+=701.0;
    }
   } else {
    if(i4<0.0012587308883666992){
     s0+=80019.0;
     s1+=1413.0;
    } else {
     s0+=236.0;
     s1+=343.0;
    }
   }
  } else {
   if(i7<0.0063095539808273315){
    if(i37<1.4421480955206789e-05){
     s0+=472.0;
     s1+=13.0;
    } else {
     s0+=525.0;
     s1+=133.0;
    }
   } else {
    if(i53<-2.301605718457722e-06){
     s0+=43.0;
     s1+=1115.0;
    } else {
     s0+=24.0;
    }
   }
  }
 }
} else {
 if(i8<1.0186305046081543){
  if(i30<0.0007649660110473633){
   if(i7<0.002079564146697521){
    if(i44<1.0057003498077393){
     s0+=178.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=120.0;
    }
   } else {
    if(i49<-1.2944075933774002e-05){
     s0+=91.0;
     s1+=2415.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.1748707294464111){
    s0+=1417.0;
   } else {
    if(i49<-3.437490886426531e-05){
     s1+=554.0;
    } else {
     s0+=33.0;
    }
   }
  }
 } else {
  if(i25<1.7041046619415283){
   if(i13<0.0008070758194662631){
    if(i16<0.0014821887016296387){
     s0+=1.0;
     s1+=615.0;
    } else {
     s1+=10167.0;
    }
   } else {
    s0+=48.0;
   }
  } else {
   s0+=4.0;
  }
 }
}
if(i10<1.017836570739746){
 if(i12<1.0075172185897827){
  if(i4<0.0003413558006286621){
   if(i20<0.08979959785938263){
    if(i59<0.0001833227142924443){
     s0+=79612.0;
     s1+=1093.0;
    } else {
     s0+=24954.0;
     s1+=1963.0;
    }
   } else {
    s1+=96.0;
   }
  } else {
   if(i51<-0.00020028991275466979){
    if(i54<0.033674001693725586){
     s0+=1203.0;
     s1+=967.0;
    } else {
     s0+=194.0;
     s1+=1444.0;
    }
   } else {
    if(i29<1.056142807006836){
     s0+=2553.0;
    } else {
     s0+=5684.0;
     s1+=1278.0;
    }
   }
  }
 } else {
  if(i59<8.604128379374743e-05){
   if(i27<1.0867276191711426){
    if(i30<0.000602424144744873){
     s1+=223.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i11<1.0183007717132568){
     s0+=635.0;
     s1+=34.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i2<0.0013990998268127441){
    if(i25<1.1782985925674438){
     s0+=184.0;
     s1+=19.0;
    } else {
     s0+=275.0;
     s1+=629.0;
    }
   } else {
    if(i55<-7.435000043187756e-06){
     s0+=23.0;
    } else {
     s0+=42.0;
     s1+=2493.0;
    }
   }
  }
 }
} else {
 if(i50<1.000361442565918){
  if(i51<-0.0010105748660862446){
   s1+=267.0;
  } else {
   if(i40<0.01559188961982727){
    if(i45<0.00038083107210695744){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=459.0;
    }
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i31<0.006386181339621544){
   if(i58<1.003661870956421){
    if(i35<1.2710373401641846){
     s0+=303.0;
     s1+=3474.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i13<0.0003692498430609703){
     s0+=218.0;
     s1+=374.0;
    } else {
     s0+=222.0;
     s1+=7.0;
    }
   }
  } else {
   if(i1<-3.279053998994641e-05){
    if(i14<1.026814341545105){
     s0+=27.0;
     s1+=612.0;
    } else {
     s0+=1.0;
     s1+=9093.0;
    }
   } else {
    if(i54<0.047436825931072235){
     s0+=23.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i41<1.0214226245880127){
 if(i1<-9.165673691313714e-05){
  if(i22<0.01829242706298828){
   if(i19<0.988564133644104){
    if(i74<-0.20554661750793457){
     s0+=8.0;
     s1+=28.0;
    } else {
     s0+=659.0;
     s1+=29.0;
    }
   } else {
    if(i13<0.001918693771585822){
     s0+=1.0;
     s1+=57.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i53<-3.7088291719555855e-05){
    if(i20<0.01704031229019165){
     s0+=166.0;
     s1+=5.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i24<1.0290617942810059){
     s0+=73.0;
     s1+=6.0;
    } else {
     s0+=218.0;
     s1+=4136.0;
    }
   }
  }
 } else {
  if(i0<7.194280624389648e-05){
   if(i5<1.5079975128173828e-05){
    if(i23<0.0008788029663264751){
     s0+=29958.0;
     s1+=2477.0;
    } else {
     s0+=75312.0;
     s1+=618.0;
    }
   } else {
    if(i18<0.002017403719946742){
     s0+=4642.0;
     s1+=112.0;
    } else {
     s0+=2910.0;
     s1+=1730.0;
    }
   }
  } else {
   if(i29<1.1174830198287964){
    if(i30<0.0006834268569946289){
     s1+=1071.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i59<0.00019782871822826564){
     s0+=1067.0;
     s1+=62.0;
    } else {
     s0+=61.0;
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013913747388869524){
  if(i0<0.0001348257064819336){
   if(i58<1.001664161682129){
    s0+=601.0;
   } else {
    if(i52<0.05146794766187668){
     s0+=241.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i11<1.0205750465393066){
    if(i0<0.00023615360260009766){
     s1+=39.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    s1+=310.0;
   }
  }
 } else {
  if(i8<1.0240025520324707){
   if(i2<-0.00018346309661865234){
    if(i27<1.1695423126220703){
     s0+=357.0;
     s1+=92.0;
    } else {
     s1+=87.0;
    }
   } else {
    if(i27<1.1401267051696777){
     s0+=347.0;
     s1+=1075.0;
    } else {
     s0+=6.0;
     s1+=1124.0;
    }
   }
  } else {
   if(i0<-3.838539123535156e-05){
    if(i29<1.4533636569976807){
     s0+=26.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i2<-0.0005252361297607422){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=10562.0;
    }
   }
  }
 }
}
if(i3<1.0038654804229736){
 if(i15<0.22035330533981323){
  if(i61<0.004610382951796055){
   if(i7<0.0037339082919061184){
    if(i40<0.000732363376300782){
     s0+=26957.0;
     s1+=967.0;
    } else {
     s0+=61279.0;
     s1+=223.0;
    }
   } else {
    if(i18<0.0018178049940615892){
     s0+=11595.0;
     s1+=125.0;
    } else {
     s0+=11075.0;
     s1+=3656.0;
    }
   }
  } else {
   if(i3<0.9999324083328247){
    if(i42<0.1365005373954773){
     s0+=929.0;
     s1+=71.0;
    } else {
     s0+=102.0;
     s1+=143.0;
    }
   } else {
    if(i60<-0.0004804767086170614){
     s0+=28.0;
     s1+=305.0;
    } else {
     s0+=73.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i53<-2.9655341222678544e-06){
   if(i43<0.002169257029891014){
    if(i57<0.0011223709443584085){
     s1+=1.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i42<0.06854525208473206){
     s0+=17.0;
     s1+=51.0;
    } else {
     s0+=10.0;
     s1+=937.0;
    }
   }
  } else {
   if(i9<0.9577329754829407){
    s1+=1.0;
   } else {
    s0+=104.0;
   }
  }
 }
} else {
 if(i42<0.018828436732292175){
  if(i9<1.0143901109695435){
   if(i30<0.000512540340423584){
    if(i5<2.0563602447509766e-05){
     s0+=269.0;
     s1+=39.0;
    } else {
     s0+=88.0;
     s1+=1297.0;
    }
   } else {
    if(i65<0.0012347877491265535){
     s0+=3486.0;
     s1+=26.0;
    } else {
     s0+=13.0;
     s1+=70.0;
    }
   }
  } else {
   if(i0<0.00012189149856567383){
    if(i21<0.00025576353073120117){
     s0+=65.0;
     s1+=65.0;
    } else {
     s1+=288.0;
    }
   } else {
    if(i30<0.0017734766006469727){
     s0+=1.0;
     s1+=1358.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i20<0.01484580896794796){
   if(i9<1.0144705772399902){
    if(i16<0.001402139663696289){
     s0+=310.0;
     s1+=92.0;
    } else {
     s0+=22.0;
     s1+=187.0;
    }
   } else {
    s1+=1088.0;
   }
  } else {
   if(i21<-0.00026035308837890625){
    if(i25<1.629280686378479){
     s0+=54.0;
     s1+=482.0;
    } else {
     s0+=36.0;
     s1+=5.0;
    }
   } else {
    if(i5<0.0002281665802001953){
     s0+=40.0;
     s1+=12727.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i1<-0.00010984981781803071){
 if(i56<0.9600916504859924){
  if(i51<-0.0005959635600447655){
   if(i8<0.8904531002044678){
    s0+=15.0;
   } else {
    if(i63<0.06267524510622025){
     s0+=14.0;
     s1+=19.0;
    } else {
     s0+=4.0;
     s1+=94.0;
    }
   }
  } else {
   if(i22<0.10564574599266052){
    if(i74<-0.20889678597450256){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=286.0;
     s1+=19.0;
    }
   } else {
    s1+=23.0;
   }
  }
 } else {
  if(i32<0.004034362733364105){
   if(i53<-5.673414852935821e-05){
    s0+=70.0;
   } else {
    if(i56<1.0155813694000244){
     s0+=117.0;
     s1+=541.0;
    } else {
     s0+=38.0;
     s1+=13940.0;
    }
   }
  } else {
   s0+=93.0;
  }
 }
} else {
 if(i3<1.0031737089157104){
  if(i4<0.0002784132957458496){
   if(i29<1.0905578136444092){
    if(i36<1.05497145652771){
     s0+=18902.0;
     s1+=150.0;
    } else {
     s0+=5003.0;
     s1+=1741.0;
    }
   } else {
    if(i33<1.121600866317749){
     s0+=76874.0;
     s1+=788.0;
    } else {
     s0+=1347.0;
     s1+=260.0;
    }
   }
  } else {
   if(i52<0.03643088787794113){
    if(i37<1.528838402009569e-05){
     s0+=4828.0;
     s1+=174.0;
    } else {
     s0+=937.0;
     s1+=397.0;
    }
   } else {
    if(i21<-0.00018852949142456055){
     s0+=1821.0;
     s1+=602.0;
    } else {
     s0+=291.0;
     s1+=903.0;
    }
   }
  }
 } else {
  if(i7<0.004010120872408152){
   if(i46<-1.3959424904896878e-05){
    if(i1<-4.431179695529863e-05){
     s0+=12.0;
     s1+=333.0;
    } else {
     s0+=43.0;
     s1+=120.0;
    }
   } else {
    if(i30<0.000457763671875){
     s0+=1181.0;
     s1+=244.0;
    } else {
     s0+=3987.0;
    }
   }
  } else {
   if(i67<0.0015717744827270508){
    if(i58<1.0036842823028564){
     s0+=235.0;
     s1+=1936.0;
    } else {
     s0+=166.0;
     s1+=231.0;
    }
   } else {
    if(i13<0.0010756752453744411){
     s0+=9.0;
     s1+=2021.0;
    } else {
     s0+=35.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i8<1.0124268531799316){
  if(i23<0.0008851554011926055){
   if(i7<0.0035985333379358053){
    if(i8<0.996613085269928){
     s0+=5664.0;
     s1+=570.0;
    } else {
     s0+=22573.0;
     s1+=232.0;
    }
   } else {
    if(i47<0.9996750354766846){
     s0+=2550.0;
     s1+=185.0;
    } else {
     s0+=237.0;
     s1+=2141.0;
    }
   }
  } else {
   if(i68<0.5563302636146545){
    if(i27<1.122455358505249){
     s0+=71979.0;
     s1+=388.0;
    } else {
     s0+=6478.0;
     s1+=894.0;
    }
   } else {
    if(i50<1.000795841217041){
     s0+=399.0;
     s1+=113.0;
    } else {
     s0+=30.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i54<0.03130526468157768){
   if(i23<0.0009787420276552439){
    if(i43<0.0023362524807453156){
     s1+=181.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i15<0.18738248944282532){
     s0+=377.0;
     s1+=51.0;
    } else {
     s0+=14.0;
     s1+=56.0;
    }
   }
  } else {
   if(i46<1.2998043530387804e-06){
    if(i41<1.0927252769470215){
     s0+=87.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i53<-2.657644927239744e-06){
     s0+=66.0;
     s1+=708.0;
    } else {
     s0+=35.0;
    }
   }
  }
 }
} else {
 if(i35<1.171312928199768){
  if(i23<0.0009705505217425525){
   if(i40<0.00019617135694716126){
    s0+=1031.0;
   } else {
    s1+=2738.0;
   }
  } else {
   if(i19<1.0200309753417969){
    if(i36<1.1758689880371094){
     s0+=3384.0;
     s1+=76.0;
    } else {
     s0+=436.0;
     s1+=497.0;
    }
   } else {
    if(i33<1.0796948671340942){
     s0+=19.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i2<0.0002459287643432617){
   if(i1<-9.02213723747991e-05){
    if(i41<0.8930266499519348){
     s0+=116.0;
     s1+=48.0;
    } else {
     s0+=50.0;
     s1+=311.0;
    }
   } else {
    if(i39<0.1431775987148285){
     s0+=489.0;
     s1+=85.0;
    } else {
     s0+=15.0;
     s1+=71.0;
    }
   }
  } else {
   if(i15<0.06720975041389465){
    if(i3<1.0062167644500732){
     s0+=202.0;
     s1+=105.0;
    } else {
     s0+=7.0;
     s1+=183.0;
    }
   } else {
    if(i49<-2.7735215553548187e-05){
     s0+=105.0;
     s1+=13557.0;
    } else {
     s0+=50.0;
     s1+=486.0;
    }
   }
  }
 }
}
if(i38<0.1999136507511139){
 if(i37<-3.204743916285224e-05){
  if(i3<1.0070898532867432){
   if(i1<-0.0001471921568736434){
    s0+=22.0;
   } else {
    s1+=53.0;
   }
  } else {
   if(i53<-6.036689592292532e-05){
    s0+=21.0;
   } else {
    if(i37<-5.1628638175316155e-05){
     s1+=1016.0;
    } else {
     s0+=19.0;
     s1+=790.0;
    }
   }
  }
 } else {
  if(i2<0.0009197592735290527){
   if(i4<0.00029009580612182617){
    if(i50<0.9997731447219849){
     s0+=46605.0;
     s1+=138.0;
    } else {
     s0+=56355.0;
     s1+=2639.0;
    }
   } else {
    if(i62<0.0007718205451965332){
     s0+=9593.0;
     s1+=2378.0;
    } else {
     s0+=910.0;
     s1+=1041.0;
    }
   }
  } else {
   if(i30<0.0007310807704925537){
    if(i4<0.0005601644515991211){
     s0+=74.0;
     s1+=6.0;
    } else {
     s0+=327.0;
     s1+=2802.0;
    }
   } else {
    if(i25<1.185887336730957){
     s0+=1767.0;
    } else {
     s0+=61.0;
     s1+=849.0;
    }
   }
  }
 }
} else {
 if(i1<-4.446204184205271e-05){
  if(i53<-1.9942781364079565e-06){
   if(i20<0.005868683569133282){
    if(i26<1.0156028270721436){
     s0+=22.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=151.0;
    }
   } else {
    if(i34<0.0019066489767283201){
     s0+=4.0;
    } else {
     s0+=14.0;
     s1+=12141.0;
    }
   }
  } else {
   s0+=15.0;
  }
 } else {
  if(i20<0.03205346688628197){
   if(i4<0.00041747093200683594){
    if(i44<1.0052032470703125){
     s0+=620.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i7<0.0065477387979626656){
     s0+=72.0;
    } else {
     s0+=3.0;
     s1+=40.0;
    }
   }
  } else {
   if(i7<0.0070535847917199135){
    if(i1<-3.597913382691331e-05){
     s1+=1.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i16<-0.009564608335494995){
     s0+=2.0;
    } else {
     s1+=208.0;
    }
   }
  }
 }
}
if(i1<-9.281450184062123e-05){
 if(i41<0.8923659920692444){
  if(i39<0.03375944495201111){
   if(i24<1.121344804763794){
    if(i51<0.0003101219772361219){
     s0+=504.0;
     s1+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i52<0.14042985439300537){
     s0+=45.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=56.0;
    }
   }
  } else {
   if(i47<1.000626564025879){
    if(i70<0.014357184059917927){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=74.0;
    }
   } else {
    if(i32<0.0031634652987122536){
     s0+=52.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i25<1.1719775199890137){
   if(i55<-4.427575277077267e-06){
    s0+=278.0;
   } else {
    if(i30<-0.0003027021884918213){
     s0+=5.0;
    } else {
     s1+=813.0;
    }
   }
  } else {
   if(i28<0.9639248251914978){
    if(i22<0.020250678062438965){
     s0+=138.0;
     s1+=53.0;
    } else {
     s0+=34.0;
     s1+=1146.0;
    }
   } else {
    if(i14<0.9570701122283936){
     s0+=19.0;
     s1+=62.0;
    } else {
     s0+=16.0;
     s1+=13487.0;
    }
   }
  }
 }
} else {
 if(i32<0.0007052448345348239){
  if(i0<8.469820022583008e-05){
   if(i32<0.0005175179103389382){
    if(i1<-8.288160461233929e-05){
     s1+=5.0;
    } else {
     s0+=68252.0;
     s1+=120.0;
    }
   } else {
    if(i31<0.0003274903283454478){
     s0+=1335.0;
     s1+=248.0;
    } else {
     s0+=10934.0;
     s1+=134.0;
    }
   }
  } else {
   if(i29<1.3585253953933716){
    if(i13<0.0004062005318701267){
     s1+=557.0;
    } else {
     s0+=11.0;
    }
   } else {
    s0+=16.0;
   }
  }
 } else {
  if(i0<-2.485513687133789e-05){
   if(i29<1.0912797451019287){
    if(i41<0.9955673813819885){
     s0+=274.0;
     s1+=301.0;
    } else {
     s0+=550.0;
     s1+=62.0;
    }
   } else {
    if(i71<0.22055214643478394){
     s0+=25396.0;
     s1+=476.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  } else {
   if(i37<3.2671472581569105e-05){
    if(i62<0.0009407997131347656){
     s0+=6950.0;
     s1+=1645.0;
    } else {
     s0+=295.0;
     s1+=1307.0;
    }
   } else {
    if(i31<0.0012279751244932413){
     s0+=12.0;
     s1+=1797.0;
    } else {
     s0+=1492.0;
     s1+=1755.0;
    }
   }
  }
 }
}
if(i26<1.0195764303207397){
 if(i6<1.0026252269744873){
  if(i7<0.0036514331586658955){
   if(i32<0.0005478152888827026){
    if(i31<0.0019054749282076955){
     s0+=62433.0;
     s1+=70.0;
    } else {
     s0+=2238.0;
     s1+=69.0;
    }
   } else {
    if(i0<-4.476308822631836e-05){
     s0+=11860.0;
     s1+=49.0;
    } else {
     s0+=10523.0;
     s1+=809.0;
    }
   }
  } else {
   if(i0<-2.199411392211914e-05){
    if(i7<0.017762385308742523){
     s0+=21375.0;
     s1+=655.0;
    } else {
     s0+=152.0;
     s1+=162.0;
    }
   } else {
    if(i6<1.0000011920928955){
     s0+=880.0;
     s1+=48.0;
    } else {
     s0+=700.0;
     s1+=2549.0;
    }
   }
  }
 } else {
  if(i12<1.010783076286316){
   if(i52<0.04430484026670456){
    if(i30<0.00047075748443603516){
     s0+=240.0;
     s1+=1128.0;
    } else {
     s0+=3831.0;
     s1+=149.0;
    }
   } else {
    if(i15<0.07604637742042542){
     s0+=833.0;
     s1+=371.0;
    } else {
     s0+=394.0;
     s1+=1870.0;
    }
   }
  } else {
   if(i0<0.00011909008026123047){
    if(i34<0.0017871665768325329){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=65.0;
     s1+=362.0;
    }
   } else {
    if(i15<0.02392074465751648){
     s0+=9.0;
     s1+=46.0;
    } else {
     s0+=15.0;
     s1+=2023.0;
    }
   }
  }
 }
} else {
 if(i7<0.005042189732193947){
  if(i19<1.0168603658676147){
   if(i45<0.0005057633970864117){
    if(i44<1.0098209381103516){
     s1+=90.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i40<0.0007399971364066005){
     s1+=19.0;
    } else {
     s0+=803.0;
     s1+=38.0;
    }
   }
  } else {
   if(i46<-9.031536137626972e-06){
    if(i1<-4.659434489440173e-05){
     s0+=2.0;
     s1+=420.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i6<1.0023009777069092){
     s0+=171.0;
    } else {
     s0+=94.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i41<1.0248006582260132){
   if(i46<1.1956357411690988e-05){
    if(i66<2.5072963580896612e-06){
     s0+=6.0;
     s1+=886.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i1<-9.297805081587285e-05){
     s0+=10.0;
     s1+=219.0;
    } else {
     s0+=70.0;
     s1+=65.0;
    }
   }
  } else {
   if(i38<0.10271039605140686){
    if(i19<1.0045688152313232){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=61.0;
    }
   } else {
    if(i47<0.9982213973999023){
     s0+=11.0;
    } else {
     s0+=14.0;
     s1+=11836.0;
    }
   }
  }
 }
}
if(i3<1.0037109851837158){
 if(i52<0.3064613342285156){
  if(i1<-7.498959894292057e-05){
   if(i33<1.076303482055664){
    if(i38<0.17555472254753113){
     s0+=1393.0;
     s1+=201.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   } else {
    if(i20<0.01724933087825775){
     s0+=153.0;
     s1+=18.0;
    } else {
     s0+=16.0;
     s1+=635.0;
    }
   }
  } else {
   if(i10<1.0139503479003906){
    if(i36<1.0903575420379639){
     s0+=28490.0;
     s1+=2623.0;
    } else {
     s0+=79985.0;
     s1+=1372.0;
    }
   } else {
    if(i4<0.0002853274345397949){
     s0+=1146.0;
     s1+=110.0;
    } else {
     s0+=364.0;
     s1+=537.0;
    }
   }
  }
 } else {
  if(i24<1.107909917831421){
   if(i3<0.9955918788909912){
    s0+=425.0;
   } else {
    if(i48<8.463859558105469e-06){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i32<0.0007290243520401418){
    s0+=37.0;
   } else {
    if(i50<1.0046859979629517){
     s0+=1.0;
     s1+=913.0;
    } else {
     s0+=15.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i18<0.0018885948229581118){
  if(i2<0.0018310546875){
   if(i54<0.05119051784276962){
    if(i0<9.965896606445312e-05){
     s0+=2892.0;
     s1+=37.0;
    } else {
     s0+=292.0;
     s1+=82.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i69<2.270331151521532e-06){
    if(i55<-5.9653912103385665e-06){
     s0+=7.0;
    } else {
     s1+=1249.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i34<0.0021074290852993727){
   if(i43<0.0010117359925061464){
    if(i9<1.007557988166809){
     s0+=132.0;
     s1+=139.0;
    } else {
     s0+=1.0;
     s1+=1918.0;
    }
   } else {
    if(i29<1.176405668258667){
     s0+=940.0;
     s1+=25.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i1<-7.333487883443013e-05){
    if(i11<0.9242790341377258){
     s0+=19.0;
     s1+=9.0;
    } else {
     s0+=52.0;
     s1+=13503.0;
    }
   } else {
    if(i54<0.018926167860627174){
     s0+=87.0;
     s1+=92.0;
    } else {
     s0+=69.0;
     s1+=726.0;
    }
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i4<0.00032711029052734375){
  if(i39<0.20670610666275024){
   if(i50<0.9997678995132446){
    if(i52<0.5570666790008545){
     s0+=46829.0;
     s1+=148.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i23<0.0009037681156769395){
     s0+=12465.0;
     s1+=2139.0;
    } else {
     s0+=45663.0;
     s1+=649.0;
    }
   }
  } else {
   if(i1<-3.708993972395547e-05){
    if(i32<0.0005671627586707473){
     s0+=9.0;
    } else {
     s0+=1.0;
     s1+=314.0;
    }
   } else {
    if(i39<0.20920616388320923){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=132.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<0.010102557018399239){
   if(i20<0.006826792377978563){
    if(i16<0.0010678768157958984){
     s0+=6305.0;
     s1+=98.0;
    } else {
     s0+=120.0;
     s1+=56.0;
    }
   } else {
    if(i31<0.0009011340443976223){
     s0+=100.0;
     s1+=220.0;
    } else {
     s0+=734.0;
     s1+=61.0;
    }
   }
  } else {
   if(i2<-6.9141387939453125e-06){
    if(i38<0.10393571853637695){
     s0+=1352.0;
     s1+=192.0;
    } else {
     s0+=326.0;
     s1+=449.0;
    }
   } else {
    if(i35<1.0440559387207031){
     s0+=77.0;
    } else {
     s0+=526.0;
     s1+=3363.0;
    }
   }
  }
 }
} else {
 if(i52<0.03585674986243248){
  if(i9<1.0154354572296143){
   if(i32<0.001080069923773408){
    if(i45<0.0007323973113670945){
     s0+=12.0;
     s1+=1215.0;
    } else {
     s0+=511.0;
     s1+=63.0;
    }
   } else {
    if(i51<-0.0004169727035332471){
     s0+=13.0;
     s1+=114.0;
    } else {
     s0+=1317.0;
     s1+=21.0;
    }
   }
  } else {
   if(i20<0.003128188196569681){
    if(i55<-5.058050646766787e-06){
     s0+=29.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i53<-7.275358075276017e-05){
     s0+=3.0;
    } else {
     s0+=6.0;
     s1+=1927.0;
    }
   }
  }
 } else {
  if(i13<0.0007150453748181462){
   if(i38<0.00024014711380004883){
    if(i30<0.00046133995056152344){
     s0+=42.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=38.0;
    }
   } else {
    if(i2<0.0008175969123840332){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=94.0;
     s1+=12900.0;
    }
   }
  } else {
   s0+=107.0;
  }
 }
}
if(i1<-9.4027811428532e-05){
 if(i9<0.9737211465835571){
  if(i42<0.1412682831287384){
   if(i22<0.10227096080780029){
    if(i56<0.8430051803588867){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=618.0;
     s1+=30.0;
    }
   } else {
    if(i26<0.8674073219299316){
     s0+=3.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i33<1.0283173322677612){
    if(i68<0.30633437633514404){
     s0+=13.0;
     s1+=9.0;
    } else {
     s0+=81.0;
     s1+=2.0;
    }
   } else {
    if(i59<0.004711853340268135){
     s0+=6.0;
     s1+=106.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i5<0.0002281665802001953){
   if(i47<0.9981549978256226){
    s0+=180.0;
   } else {
    if(i28<0.9019845724105835){
     s0+=70.0;
     s1+=331.0;
    } else {
     s0+=70.0;
     s1+=15272.0;
    }
   }
  } else {
   s0+=77.0;
  }
 }
} else {
 if(i2<0.0009393095970153809){
  if(i10<1.0177061557769775){
   if(i15<0.23419234156608582){
    if(i65<0.0009772991761565208){
     s0+=101500.0;
     s1+=3264.0;
    } else {
     s0+=11087.0;
     s1+=1460.0;
    }
   } else {
    if(i18<0.0024232047144323587){
     s0+=36.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=146.0;
    }
   }
  } else {
   if(i54<0.0215366892516613){
    if(i35<1.0905578136444092){
     s1+=127.0;
    } else {
     s0+=456.0;
     s1+=49.0;
    }
   } else {
    if(i5<8.404254913330078e-06){
     s0+=265.0;
     s1+=67.0;
    } else {
     s0+=156.0;
     s1+=749.0;
    }
   }
  }
 } else {
  if(i25<1.116804838180542){
   if(i43<0.0001588426239322871){
    if(i25<1.0610902309417725){
     s0+=92.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i13<0.0006786673329770565){
     s1+=1613.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i29<1.176405668258667){
    s0+=1770.0;
   } else {
    if(i49<-3.857059346046299e-05){
     s0+=66.0;
     s1+=335.0;
    } else {
     s1+=697.0;
    }
   }
  }
 }
}
if(i22<0.18659314513206482){
 if(i26<1.0156245231628418){
  if(i17<1.0084686279296875){
   if(i18<0.0017301308689638972){
    if(i32<0.000574491685256362){
     s0+=70889.0;
     s1+=161.0;
    } else {
     s0+=18952.0;
     s1+=726.0;
    }
   } else {
    if(i0<-2.676248550415039e-05){
     s0+=17944.0;
     s1+=729.0;
    } else {
     s0+=4229.0;
     s1+=4229.0;
    }
   }
  } else {
   if(i13<0.0006753865163773298){
    if(i44<1.0011872053146362){
     s0+=120.0;
     s1+=63.0;
    } else {
     s0+=210.0;
     s1+=1891.0;
    }
   } else {
    s0+=937.0;
   }
  }
 } else {
  if(i16<0.0018960833549499512){
   if(i25<1.1164028644561768){
    if(i31<0.001207550521939993){
     s0+=8.0;
     s1+=1055.0;
    } else {
     s0+=49.0;
     s1+=17.0;
    }
   } else {
    if(i31<0.0019253524951636791){
     s0+=1363.0;
    } else {
     s0+=791.0;
     s1+=815.0;
    }
   }
  } else {
   if(i55<-5.6004305406531785e-06){
    if(i61<0.005637503229081631){
     s0+=38.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i21<-0.0007745921611785889){
     s0+=1.0;
    } else {
     s1+=1700.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025611179880797863){
  if(i44<1.0023024082183838){
   if(i49<-1.4439542610489298e-05){
    if(i47<1.0001933574676514){
     s0+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i6<1.0006561279296875){
     s0+=336.0;
    } else {
     s0+=154.0;
     s1+=8.0;
    }
   }
  } else {
   if(i7<0.00420323945581913){
    if(i57<0.0023018724750727415){
     s0+=98.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.0021285538095980883){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i22<0.20413026213645935){
   if(i75<0.10704970359802246){
    if(i16<-0.00978049635887146){
     s0+=4.0;
    } else {
     s0+=15.0;
     s1+=969.0;
    }
   } else {
    if(i2<0.00024300813674926758){
     s0+=127.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   }
  } else {
   if(i49<-8.223973964049947e-06){
    if(i12<0.9986840486526489){
     s0+=18.0;
     s1+=304.0;
    } else {
     s0+=21.0;
     s1+=11741.0;
    }
   } else {
    if(i66<-1.2331263405940263e-06){
     s1+=1.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
}
if(i6<1.0026230812072754){
 if(i56<1.140348196029663){
  if(i11<1.0107295513153076){
   if(i30<9.173154830932617e-05){
    if(i62<-0.0003648996353149414){
     s0+=16652.0;
     s1+=612.0;
    } else {
     s0+=62594.0;
     s1+=432.0;
    }
   } else {
    if(i25<1.1162974834442139){
     s0+=5412.0;
     s1+=2189.0;
    } else {
     s0+=24514.0;
     s1+=843.0;
    }
   }
  } else {
   if(i5<7.927417755126953e-06){
    if(i76<0.0035472512245178223){
     s0+=261.0;
     s1+=2.0;
    } else {
     s0+=247.0;
     s1+=74.0;
    }
   } else {
    if(i32<0.0016100096981972456){
     s0+=134.0;
     s1+=864.0;
    } else {
     s0+=187.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i34<0.006421363912522793){
   if(i3<1.000499963760376){
    if(i27<1.1495444774627686){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i58<1.0014500617980957){
     s0+=11.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   s1+=523.0;
  }
 }
} else {
 if(i25<1.1935834884643555){
  if(i23<0.0010737174889072776){
   if(i2<0.0009710788726806641){
    if(i42<0.008295776322484016){
     s0+=729.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=127.0;
    }
   } else {
    if(i27<1.0328443050384521){
     s0+=43.0;
    } else {
     s1+=2203.0;
    }
   }
  } else {
   s0+=3267.0;
  }
 } else {
  if(i9<1.010168194770813){
   if(i22<0.09962698817253113){
    if(i64<0.0016807746142148972){
     s0+=775.0;
     s1+=61.0;
    } else {
     s0+=855.0;
     s1+=783.0;
    }
   } else {
    if(i2<5.501508712768555e-05){
     s0+=309.0;
     s1+=368.0;
    } else {
     s0+=138.0;
     s1+=3182.0;
    }
   }
  } else {
   if(i2<0.0007649064064025879){
    if(i10<1.0161625146865845){
     s0+=53.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=209.0;
    }
   } else {
    if(i40<0.00273181707598269){
     s0+=10.0;
     s1+=662.0;
    } else {
     s0+=1.0;
     s1+=11219.0;
    }
   }
  }
 }
}
if(i3<1.00374174118042){
 if(i26<1.0181148052215576){
  if(i18<0.001728216651827097){
   if(i36<1.0776758193969727){
    if(i8<0.9968249797821045){
     s0+=4281.0;
     s1+=505.0;
    } else {
     s0+=18477.0;
     s1+=231.0;
    }
   } else {
    if(i6<1.00266695022583){
     s0+=66102.0;
     s1+=218.0;
    } else {
     s0+=142.0;
     s1+=29.0;
    }
   }
  } else {
   if(i31<0.0011142458533868194){
    if(i23<0.00023698783479630947){
     s0+=1555.0;
     s1+=18.0;
    } else {
     s0+=626.0;
     s1+=2246.0;
    }
   } else {
    if(i24<1.1416184902191162){
     s0+=19829.0;
     s1+=1168.0;
    } else {
     s0+=170.0;
     s1+=858.0;
    }
   }
  }
 } else {
  if(i15<0.21251019835472107){
   if(i1<-3.2337156881112605e-05){
    if(i31<0.00123863504268229){
     s0+=2.0;
     s1+=295.0;
    } else {
     s0+=349.0;
     s1+=227.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s1+=16.0;
    } else {
     s0+=538.0;
     s1+=47.0;
    }
   }
  } else {
   if(i7<0.005355168133974075){
    if(i0<1.9073486328125e-05){
     s0+=48.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i51<0.00028086037491448224){
     s1+=568.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i7<0.00393954012542963){
  if(i9<1.0162657499313354){
   if(i46<-1.0797377399285324e-05){
    if(i47<1.0007596015930176){
     s0+=155.0;
     s1+=22.0;
    } else {
     s0+=49.0;
     s1+=479.0;
    }
   } else {
    if(i14<1.0327651500701904){
     s0+=3796.0;
     s1+=91.0;
    } else {
     s0+=19.0;
     s1+=39.0;
    }
   }
  } else {
   s1+=397.0;
  }
 } else {
  if(i36<1.1428577899932861){
   if(i13<0.0002563430170994252){
    if(i25<1.1229777336120605){
     s1+=2057.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=383.0;
   }
  } else {
   if(i41<0.8660122156143188){
    if(i12<1.0148406028747559){
     s0+=24.0;
     s1+=13.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i1<-8.480883116135374e-05){
     s0+=22.0;
     s1+=13461.0;
    } else {
     s0+=86.0;
     s1+=1150.0;
    }
   }
  }
 }
}
if(i1<-8.453788905171677e-05){
 if(i38<0.041246384382247925){
  if(i62<-0.005494832992553711){
   if(i47<1.0025575160980225){
    if(i3<1.0067152976989746){
     s0+=827.0;
     s1+=38.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<2.7358531951904297e-05){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i54<0.02402353845536709){
    if(i37<-7.080117939040065e-06){
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=16.0;
    }
   } else {
    if(i65<0.002274863887578249){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i25<1.1743842363357544){
   if(i40<0.0011581345461308956){
    if(i5<8.040666580200195e-05){
     s0+=2.0;
     s1+=862.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i29<1.0981338024139404){
     s1+=110.0;
    } else {
     s0+=368.0;
     s1+=7.0;
    }
   }
  } else {
   if(i62<-0.008835524320602417){
    if(i22<0.10564574599266052){
     s0+=60.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   } else {
    if(i0<9.953975677490234e-06){
     s0+=86.0;
     s1+=741.0;
    } else {
     s0+=28.0;
     s1+=14266.0;
    }
   }
  }
 }
} else {
 if(i6<1.0023186206817627){
  if(i18<0.0017091698246076703){
   if(i34<0.00034115416929125786){
    if(i32<0.0006280275993049145){
     s0+=17667.0;
     s1+=145.0;
    } else {
     s0+=1125.0;
     s1+=498.0;
    }
   } else {
    if(i1<-6.336074147839099e-05){
     s0+=156.0;
     s1+=37.0;
    } else {
     s0+=69344.0;
     s1+=248.0;
    }
   }
  } else {
   if(i21<-0.0002116858959197998){
    if(i38<0.24309122562408447){
     s0+=14533.0;
     s1+=346.0;
    } else {
     s0+=6.0;
     s1+=45.0;
    }
   } else {
    if(i20<0.009386109188199043){
     s0+=4048.0;
     s1+=355.0;
    } else {
     s0+=1476.0;
     s1+=2604.0;
    }
   }
  }
 } else {
  if(i0<8.13603401184082e-05){
   if(i51<-0.00020992584177292883){
    if(i2<8.64863395690918e-05){
     s0+=733.0;
     s1+=184.0;
    } else {
     s0+=537.0;
     s1+=1069.0;
    }
   } else {
    if(i20<0.01461019553244114){
     s0+=4109.0;
     s1+=360.0;
    } else {
     s0+=587.0;
     s1+=464.0;
    }
   }
  } else {
   if(i7<0.0028368490748107433){
    if(i13<0.0004491735890042037){
     s1+=225.0;
    } else {
     s0+=725.0;
    }
   } else {
    if(i25<1.629280686378479){
     s0+=101.0;
     s1+=1394.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
}
if(i3<1.0037345886230469){
 if(i1<-9.137838060269132e-05){
  if(i65<0.008217127993702888){
   if(i60<-0.00039696076419204473){
    if(i24<1.117748737335205){
     s0+=66.0;
     s1+=192.0;
    } else {
     s0+=5.0;
     s1+=911.0;
    }
   } else {
    if(i73<-0.004666149616241455){
     s0+=11.0;
     s1+=27.0;
    } else {
     s0+=262.0;
     s1+=29.0;
    }
   }
  } else {
   if(i38<0.049963533878326416){
    if(i59<0.0024068919010460377){
     s0+=4.0;
     s1+=13.0;
    } else {
     s0+=440.0;
     s1+=51.0;
    }
   } else {
    if(i59<0.0037079621106386185){
     s0+=4.0;
     s1+=186.0;
    } else {
     s0+=32.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i32<0.0007162693655118346){
   if(i12<1.0056219100952148){
    if(i49<-1.6065292584244162e-05){
     s0+=94.0;
     s1+=87.0;
    } else {
     s0+=79543.0;
     s1+=421.0;
    }
   } else {
    if(i16<-0.00025147199630737305){
     s1+=13.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i0<-3.49879264831543e-05){
    if(i5<-7.092952728271484e-06){
     s0+=18492.0;
     s1+=164.0;
    } else {
     s0+=6167.0;
     s1+=457.0;
    }
   } else {
    if(i13<0.0002682028280105442){
     s0+=2205.0;
     s1+=3508.0;
    } else {
     s0+=5068.0;
     s1+=468.0;
    }
   }
  }
 }
} else {
 if(i35<1.1699821949005127){
  if(i34<0.0011588599300011992){
   if(i5<3.904104232788086e-05){
    if(i40<0.00018148341041523963){
     s0+=685.0;
    } else {
     s0+=66.0;
     s1+=872.0;
    }
   } else {
    if(i0<6.920099258422852e-05){
     s0+=19.0;
    } else {
     s0+=5.0;
     s1+=1394.0;
    }
   }
  } else {
   if(i51<-0.0002950072812382132){
    if(i7<0.004306907299906015){
     s0+=170.0;
     s1+=30.0;
    } else {
     s0+=45.0;
     s1+=986.0;
    }
   } else {
    if(i42<0.03357228636741638){
     s0+=3281.0;
     s1+=89.0;
    } else {
     s0+=39.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i31<0.0026692398823797703){
   if(i43<0.002533053047955036){
    s1+=2.0;
   } else {
    s0+=13.0;
   }
  } else {
   if(i27<1.0789777040481567){
    if(i23<0.007884864695370197){
     s1+=24.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i38<0.04125577211380005){
     s0+=36.0;
     s1+=116.0;
    } else {
     s0+=46.0;
     s1+=13737.0;
    }
   }
  }
 }
}
if(i4<0.0005698800086975098){
 if(i18<0.0016773302340880036){
  if(i25<1.0817922353744507){
   if(i25<1.064497947692871){
    if(i11<0.9922783374786377){
     s0+=2338.0;
     s1+=52.0;
    } else {
     s0+=11597.0;
    }
   } else {
    if(i35<1.034000039100647){
     s0+=1082.0;
     s1+=34.0;
    } else {
     s0+=1212.0;
     s1+=446.0;
    }
   }
  } else {
   if(i59<0.0002022396947722882){
    if(i11<1.0091180801391602){
     s0+=62038.0;
     s1+=67.0;
    } else {
     s0+=1329.0;
     s1+=46.0;
    }
   } else {
    if(i36<1.0654278993606567){
     s0+=11.0;
     s1+=57.0;
    } else {
     s0+=9013.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i25<1.1164028644561768){
   if(i25<1.056142807006836){
    s0+=1780.0;
   } else {
    if(i47<0.9995441436767578){
     s0+=284.0;
     s1+=9.0;
    } else {
     s0+=97.0;
     s1+=2423.0;
    }
   }
  } else {
   if(i56<1.1177008152008057){
    if(i70<0.026535725221037865){
     s0+=18896.0;
     s1+=892.0;
    } else {
     s0+=237.0;
     s1+=208.0;
    }
   } else {
    if(i24<1.1397545337677002){
     s0+=112.0;
     s1+=92.0;
    } else {
     s0+=10.0;
     s1+=467.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i45<0.0008179399883374572){
   if(i2<0.0009704232215881348){
    if(i35<1.0487251281738281){
     s0+=1373.0;
    } else {
     s0+=118.0;
     s1+=636.0;
    }
   } else {
    if(i29<1.0510683059692383){
     s0+=66.0;
    } else {
     s0+=14.0;
     s1+=2184.0;
    }
   }
  } else {
   if(i13<0.00026246393099427223){
    if(i46<2.012159711739514e-05){
     s0+=103.0;
     s1+=268.0;
    } else {
     s0+=149.0;
     s1+=4.0;
    }
   } else {
    if(i34<0.0023983102291822433){
     s0+=3236.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i9<0.9912972450256348){
   if(i59<0.0011234574485570192){
    if(i27<1.1137194633483887){
     s0+=282.0;
     s1+=4.0;
    } else {
     s0+=68.0;
     s1+=67.0;
    }
   } else {
    if(i24<1.052901268005371){
     s0+=454.0;
     s1+=90.0;
    } else {
     s0+=227.0;
     s1+=1122.0;
    }
   }
  } else {
   if(i22<0.07186341285705566){
    if(i72<0.9991782903671265){
     s0+=48.0;
     s1+=259.0;
    } else {
     s0+=290.0;
     s1+=42.0;
    }
   } else {
    if(i7<0.0050048367120325565){
     s0+=166.0;
     s1+=450.0;
    } else {
     s0+=50.0;
     s1+=14059.0;
    }
   }
  }
 }
}
if(i41<1.021300196647644){
 if(i1<-8.235532732214779e-05){
  if(i38<0.04277065396308899){
   if(i73<-0.008243024349212646){
    if(i19<0.9598272442817688){
     s0+=94.0;
     s1+=50.0;
    } else {
     s0+=15.0;
     s1+=107.0;
    }
   } else {
    if(i66<-4.884503141511232e-06){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=903.0;
     s1+=38.0;
    }
   }
  } else {
   if(i36<1.1434736251831055){
    if(i61<0.0004435167647898197){
     s0+=29.0;
     s1+=533.0;
    } else {
     s0+=356.0;
     s1+=37.0;
    }
   } else {
    if(i37<0.0003566569066606462){
     s0+=80.0;
     s1+=3750.0;
    } else {
     s0+=94.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i16<0.001238703727722168){
   if(i18<0.0017281423788517714){
    if(i33<1.0179111957550049){
     s0+=10760.0;
     s1+=534.0;
    } else {
     s0+=80241.0;
     s1+=473.0;
    }
   } else {
    if(i30<3.045797348022461e-05){
     s0+=6940.0;
     s1+=98.0;
    } else {
     s0+=14382.0;
     s1+=4091.0;
    }
   }
  } else {
   if(i61<0.00039964745519682765){
    if(i4<0.0004578232765197754){
     s0+=116.0;
    } else {
     s0+=18.0;
     s1+=828.0;
    }
   } else {
    if(i66<-5.360355316952337e-06){
     s0+=26.0;
     s1+=109.0;
    } else {
     s0+=800.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i1<-6.125499203335494e-05){
  if(i53<-2.95221457236039e-06){
   if(i1<-8.590633660787717e-05){
    if(i66<1.8810591427609324e-05){
     s0+=20.0;
     s1+=11873.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i7<0.005971886217594147){
     s0+=131.0;
     s1+=116.0;
    } else {
     s0+=14.0;
     s1+=748.0;
    }
   }
  } else {
   if(i52<0.08285205811262131){
    s0+=16.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i5<1.2814998626708984e-05){
   if(i67<0.003793567419052124){
    if(i44<1.0013928413391113){
     s0+=462.0;
     s1+=11.0;
    } else {
     s0+=143.0;
     s1+=73.0;
    }
   } else {
    s0+=227.0;
   }
  } else {
   if(i51<-0.00027261237846687436){
    if(i58<1.0038409233093262){
     s0+=33.0;
     s1+=538.0;
    } else {
     s0+=142.0;
     s1+=29.0;
    }
   } else {
    if(i24<1.0818555355072021){
     s0+=41.0;
     s1+=125.0;
    } else {
     s0+=326.0;
     s1+=71.0;
    }
   }
  }
 }
}
if(i17<1.0082762241363525){
 if(i7<0.008001732639968395){
  if(i6<1.0020513534545898){
   if(i11<1.0081905126571655){
    if(i31<0.0010565273696556687){
     s0+=31312.0;
     s1+=2402.0;
    } else {
     s0+=70731.0;
     s1+=349.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=62.0;
     s1+=370.0;
    } else {
     s0+=1886.0;
     s1+=101.0;
    }
   }
  } else {
   if(i1<-4.515163891483098e-05){
    if(i39<0.12977352738380432){
     s0+=690.0;
     s1+=446.0;
    } else {
     s0+=57.0;
     s1+=329.0;
    }
   } else {
    if(i32<0.0007668891921639442){
     s0+=3432.0;
     s1+=15.0;
    } else {
     s0+=2230.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i39<0.05318066477775574){
   if(i22<0.05677849054336548){
    if(i29<1.1360875368118286){
     s0+=13.0;
     s1+=147.0;
    } else {
     s0+=3744.0;
     s1+=283.0;
    }
   } else {
    if(i12<0.9991533756256104){
     s0+=39.0;
     s1+=22.0;
    } else {
     s0+=43.0;
     s1+=338.0;
    }
   }
  } else {
   if(i0<-8.669495582580566e-05){
    if(i25<1.5726749897003174){
     s0+=338.0;
     s1+=11.0;
    } else {
     s0+=72.0;
     s1+=152.0;
    }
   } else {
    if(i20<0.014962548390030861){
     s0+=159.0;
     s1+=92.0;
    } else {
     s0+=133.0;
     s1+=4612.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025597985368222){
  if(i30<0.0005152523517608643){
   if(i5<1.436471939086914e-05){
    s0+=86.0;
   } else {
    if(i32<0.0018665491370484233){
     s0+=4.0;
     s1+=2127.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i29<1.185887336730957){
    s0+=1651.0;
   } else {
    s1+=8.0;
   }
  }
 } else {
  if(i27<1.0936050415039062){
   if(i21<0.00020194053649902344){
    s0+=80.0;
   } else {
    s1+=47.0;
   }
  } else {
   if(i3<1.0023612976074219){
    if(i7<0.0052270954474806786){
     s0+=43.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i45<0.00016960923676379025){
     s0+=9.0;
    } else {
     s0+=14.0;
     s1+=11497.0;
    }
   }
  }
 }
}
if(i16<0.0012875199317932129){
 if(i7<0.008001732639968395){
  if(i25<1.1162974834442139){
   if(i32<0.0007173037156462669){
    if(i9<1.0070981979370117){
     s0+=26473.0;
     s1+=380.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i11<1.0091586112976074){
     s0+=3821.0;
     s1+=2616.0;
    } else {
     s0+=11.0;
     s1+=643.0;
    }
   }
  } else {
   if(i41<1.02130925655365){
    if(i5<1.2695789337158203e-05){
     s0+=72934.0;
     s1+=409.0;
    } else {
     s0+=5876.0;
     s1+=459.0;
    }
   } else {
    if(i51<-0.00029514863854274154){
     s0+=633.0;
     s1+=338.0;
    } else {
     s0+=704.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i15<0.07021322846412659){
   if(i20<0.061080202460289){
    if(i2<-0.0001525282859802246){
     s0+=3475.0;
     s1+=69.0;
    } else {
     s0+=237.0;
     s1+=211.0;
    }
   } else {
    if(i68<0.2735011577606201){
     s0+=110.0;
     s1+=46.0;
    } else {
     s0+=13.0;
     s1+=99.0;
    }
   }
  } else {
   if(i16<-0.004525423049926758){
    if(i23<0.009256746619939804){
     s0+=376.0;
     s1+=72.0;
    } else {
     s0+=80.0;
     s1+=215.0;
    }
   } else {
    if(i55<9.561167644278612e-07){
     s0+=139.0;
     s1+=5410.0;
    } else {
     s0+=21.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i5<1.385807991027832e-05){
  if(i33<1.1402058601379395){
   if(i15<0.17393505573272705){
    if(i1<-9.416014654561877e-05){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=382.0;
    }
   } else {
    if(i37<8.85271219885908e-06){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   s1+=79.0;
  }
 } else {
  if(i7<0.004502411000430584){
   if(i61<0.00038548067095689476){
    if(i29<1.1180615425109863){
     s1+=734.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    if(i27<1.1396493911743164){
     s0+=607.0;
     s1+=109.0;
    } else {
     s0+=15.0;
     s1+=282.0;
    }
   }
  } else {
   if(i66<1.3191740436013788e-05){
    if(i9<1.0120317935943604){
     s0+=127.0;
     s1+=598.0;
    } else {
     s0+=13.0;
     s1+=11859.0;
    }
   } else {
    s0+=64.0;
   }
  }
 }
}
if(i26<1.0181405544281006){
 if(i37<-2.4684610252734274e-05){
  if(i16<0.0018284320831298828){
   if(i36<1.0958809852600098){
    s1+=258.0;
   } else {
    if(i31<0.002451913431286812){
     s0+=129.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i48<-2.962350845336914e-05){
    s0+=2.0;
   } else {
    s1+=1252.0;
   }
  }
 } else {
  if(i1<-8.702851482667029e-05){
   if(i39<0.030481785535812378){
    if(i9<0.9764809608459473){
     s0+=802.0;
     s1+=47.0;
    } else {
     s0+=103.0;
     s1+=259.0;
    }
   } else {
    if(i35<1.1324639320373535){
     s0+=204.0;
     s1+=46.0;
    } else {
     s0+=176.0;
     s1+=2692.0;
    }
   }
  } else {
   if(i23<0.0009077182039618492){
    if(i8<1.0074796676635742){
     s0+=31956.0;
     s1+=2909.0;
    } else {
     s0+=262.0;
     s1+=1091.0;
    }
   } else {
    if(i65<0.001186285400763154){
     s0+=74984.0;
     s1+=554.0;
    } else {
     s0+=6553.0;
     s1+=1176.0;
    }
   }
  }
 }
} else {
 if(i7<0.005060822702944279){
  if(i66<-5.089563273941167e-06){
   if(i11<1.0159963369369507){
    if(i5<5.179643630981445e-05){
     s0+=1.0;
     s1+=47.0;
    } else {
     s0+=38.0;
     s1+=6.0;
    }
   } else {
    if(i21<0.00019890069961547852){
     s0+=15.0;
    } else {
     s0+=8.0;
     s1+=470.0;
    }
   }
  } else {
   if(i25<1.0905578136444092){
    s1+=78.0;
   } else {
    if(i9<1.0163629055023193){
     s0+=1248.0;
     s1+=111.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i21<-0.00035443902015686035){
   if(i39<0.14418411254882812){
    if(i22<0.17858287692070007){
     s0+=82.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i62<-0.004965305328369141){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=174.0;
    }
   }
  } else {
   if(i49<-8.545360287826043e-06){
    if(i66<1.7356429452775046e-05){
     s0+=56.0;
     s1+=12966.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i30<0.0002467632293701172){
     s0+=33.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i9<1.0124831199645996){
 if(i15<0.20334360003471375){
  if(i18<0.0017806536052376032){
   if(i46<-1.359493126074085e-05){
    if(i2<0.0016141533851623535){
     s0+=29.0;
    } else {
     s0+=13.0;
     s1+=218.0;
    }
   } else {
    if(i59<0.00017948579625226557){
     s0+=78610.0;
     s1+=421.0;
    } else {
     s0+=14273.0;
     s1+=698.0;
    }
   }
  } else {
   if(i0<-2.3305416107177734e-05){
    if(i5<-7.212162017822266e-06){
     s0+=11643.0;
     s1+=139.0;
    } else {
     s0+=6428.0;
     s1+=715.0;
    }
   } else {
    if(i47<0.9995671510696411){
     s0+=2441.0;
     s1+=44.0;
    } else {
     s0+=2267.0;
     s1+=6131.0;
    }
   }
  }
 } else {
  if(i35<1.1326069831848145){
   if(i63<0.21153199672698975){
    if(i52<0.14285306632518768){
     s0+=191.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i53<-2.8527174436021596e-06){
    if(i22<0.2033335268497467){
     s0+=46.0;
     s1+=38.0;
    } else {
     s0+=74.0;
     s1+=2717.0;
    }
   } else {
    if(i7<0.009659169241786003){
     s0+=106.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i1<-7.312437810469419e-05){
  if(i55<-6.519388534798054e-06){
   s0+=67.0;
  } else {
   if(i12<0.9980201125144958){
    if(i51<-0.0005448426818475127){
     s1+=73.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i66<1.6933263395912945e-05){
     s1+=12478.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i29<1.1180615425109863){
   if(i31<0.001297669019550085){
    s1+=369.0;
   } else {
    s0+=8.0;
   }
  } else {
   if(i22<0.1768273115158081){
    if(i48<1.3053417205810547e-05){
     s0+=88.0;
     s1+=74.0;
    } else {
     s0+=296.0;
     s1+=3.0;
    }
   } else {
    if(i34<0.0020655114203691483){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=139.0;
    }
   }
  }
 }
}
if(i1<-9.285741543862969e-05){
 if(i3<1.0000410079956055){
  if(i62<-0.005998671054840088){
   if(i60<-0.0006805500015616417){
    if(i56<0.9272212386131287){
     s0+=44.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=66.0;
    }
   } else {
    if(i15<0.08494293689727783){
     s0+=570.0;
     s1+=28.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  } else {
   if(i18<0.0046516284346580505){
    if(i66<1.1116237146779895e-05){
     s0+=34.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i22<0.06471222639083862){
     s0+=17.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i15<0.033281952142715454){
   if(i6<1.0057528018951416){
    if(i74<-0.10782811045646667){
     s0+=34.0;
     s1+=52.0;
    } else {
     s0+=131.0;
     s1+=12.0;
    }
   } else {
    if(i65<0.0029268506914377213){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=56.0;
    }
   }
  } else {
   if(i30<0.0017054975032806396){
    if(i32<0.004031617194414139){
     s0+=132.0;
     s1+=15283.0;
    } else {
     s0+=78.0;
    }
   } else {
    s0+=52.0;
   }
  }
 }
} else {
 if(i5<1.4007091522216797e-05){
  if(i18<0.0015725111588835716){
   if(i62<-0.000503838062286377){
    if(i36<1.0776758193969727){
     s0+=2712.0;
     s1+=279.0;
    } else {
     s0+=8874.0;
     s1+=62.0;
    }
   } else {
    if(i18<0.0009780819527804852){
     s0+=59951.0;
     s1+=135.0;
    } else {
     s0+=12649.0;
     s1+=217.0;
    }
   }
  } else {
   if(i19<0.9799202680587769){
    if(i38<0.2529054582118988){
     s0+=7708.0;
     s1+=147.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i13<0.00021329111768864095){
     s0+=3716.0;
     s1+=1895.0;
    } else {
     s0+=9506.0;
     s1+=500.0;
    }
   }
  }
 } else {
  if(i42<0.012599257752299309){
   if(i37<-2.6296482246834785e-05){
    if(i45<0.0010731166694313288){
     s0+=1.0;
     s1+=322.0;
    } else {
     s0+=61.0;
     s1+=11.0;
    }
   } else {
    if(i67<0.0016323328018188477){
     s0+=6096.0;
     s1+=701.0;
    } else {
     s0+=327.0;
     s1+=321.0;
    }
   }
  } else {
   if(i0<-5.424022674560547e-06){
    if(i22<0.12463018298149109){
     s0+=1454.0;
     s1+=98.0;
    } else {
     s0+=160.0;
     s1+=135.0;
    }
   } else {
    if(i34<0.0010403405176475644){
     s0+=88.0;
     s1+=1354.0;
    } else {
     s0+=1900.0;
     s1+=2461.0;
    }
   }
  }
 }
}
if(i1<-0.00011409414582885802){
 if(i33<1.0243992805480957){
  if(i22<0.07412481307983398){
   if(i9<0.9781841039657593){
    if(i13<0.0004854036960750818){
     s0+=285.0;
     s1+=3.0;
    } else {
     s0+=59.0;
     s1+=23.0;
    }
   } else {
    if(i50<1.0033228397369385){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i37<0.0003565475926734507){
    s1+=74.0;
   } else {
    if(i57<0.007016648072749376){
     s0+=7.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i27<1.11314058303833){
   if(i17<1.015244722366333){
    if(i7<0.011108556762337685){
     s0+=145.0;
     s1+=14.0;
    } else {
     s0+=19.0;
     s1+=123.0;
    }
   } else {
    if(i0<-0.00032061338424682617){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=381.0;
    }
   }
  } else {
   if(i15<0.051568567752838135){
    if(i63<0.024661127477884293){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=148.0;
    }
   } else {
    if(i59<0.004711853340268135){
     s0+=21.0;
     s1+=13545.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i2<0.000942528247833252){
  if(i30<0.0001023411750793457){
   if(i18<0.001245009945705533){
    if(i24<1.0128133296966553){
     s0+=1442.0;
     s1+=62.0;
    } else {
     s0+=63567.0;
     s1+=169.0;
    }
   } else {
    if(i36<1.0906792879104614){
     s0+=2829.0;
     s1+=807.0;
    } else {
     s0+=14565.0;
     s1+=292.0;
    }
   }
  } else {
   if(i11<1.0132973194122314){
    if(i7<0.004057322628796101){
     s0+=24533.0;
     s1+=644.0;
    } else {
     s0+=6675.0;
     s1+=3461.0;
    }
   } else {
    if(i50<1.0029418468475342){
     s0+=58.0;
     s1+=885.0;
    } else {
     s0+=377.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i51<-0.0002892316260840744){
   if(i58<0.99932461977005){
    if(i5<7.963180541992188e-05){
     s0+=71.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i66<1.1245463156228652e-06){
     s0+=26.0;
     s1+=1609.0;
    } else {
     s0+=12.0;
     s1+=14.0;
    }
   }
  } else {
   if(i33<1.059464454650879){
    if(i29<1.0548467636108398){
     s0+=91.0;
    } else {
     s0+=79.0;
     s1+=1312.0;
    }
   } else {
    if(i31<0.0023238067515194416){
     s0+=1634.0;
     s1+=226.0;
    } else {
     s0+=60.0;
     s1+=391.0;
    }
   }
  }
 }
}
if(i3<1.0038644075393677){
 if(i22<0.20638719201087952){
  if(i50<1.0002226829528809){
   if(i10<0.9948341846466064){
    if(i13<0.00013611940084956586){
     s0+=8183.0;
     s1+=12.0;
    } else {
     s0+=8136.0;
     s1+=592.0;
    }
   } else {
    if(i28<0.9673149585723877){
     s0+=9.0;
     s1+=6.0;
    } else {
     s0+=47502.0;
     s1+=194.0;
    }
   }
  } else {
   if(i14<1.0160410404205322){
    if(i31<0.0010364173213019967){
     s0+=7512.0;
     s1+=2258.0;
    } else {
     s0+=40123.0;
     s1+=1852.0;
    }
   } else {
    if(i30<0.000494539737701416){
     s0+=264.0;
     s1+=600.0;
    } else {
     s0+=301.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i37<3.4406784834573045e-05){
   if(i7<0.00815743301063776){
    if(i53<-3.778953214350622e-06){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=99.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i27<1.1231228113174438){
    if(i54<0.05483593791723251){
     s0+=55.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i53<-2.346858991586487e-06){
     s0+=33.0;
     s1+=1058.0;
    } else {
     s0+=45.0;
    }
   }
  }
 }
} else {
 if(i7<0.003936316817998886){
  if(i46<-1.2568450983962975e-05){
   if(i55<-5.4295646805258e-06){
    s0+=106.0;
   } else {
    if(i17<1.0098652839660645){
     s0+=26.0;
     s1+=20.0;
    } else {
     s0+=14.0;
     s1+=850.0;
    }
   }
  } else {
   if(i51<7.048420957289636e-05){
    if(i8<1.026588797569275){
     s0+=3755.0;
     s1+=110.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i4<0.0009269118309020996){
     s0+=12.0;
    } else {
     s0+=4.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i34<0.0021228278055787086){
   if(i25<1.1180615425109863){
    s1+=1962.0;
   } else {
    if(i25<1.1766860485076904){
     s0+=345.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i56<0.9260998964309692){
    if(i13<0.0001235614763572812){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=79.0;
    }
   } else {
    if(i16<-0.0011427998542785645){
     s0+=85.0;
     s1+=790.0;
    } else {
     s0+=5.0;
     s1+=13706.0;
    }
   }
  }
 }
}
if(i1<-0.00010635903163347393){
 if(i11<0.9341237545013428){
  if(i24<1.0733017921447754){
   if(i47<1.002518653869629){
    if(i60<0.0013670495245605707){
     s0+=330.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i70<0.006050297990441322){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i38<0.0016644299030303955){
    if(i64<0.03585130721330643){
     s0+=63.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i52<0.15937507152557373){
     s0+=16.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i29<1.1654179096221924){
   if(i1<-0.00013151305029168725){
    if(i55<-3.4084432627423666e-06){
     s0+=133.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i30<0.0008285045623779297){
     s1+=423.0;
    } else {
     s0+=81.0;
    }
   }
  } else {
   if(i38<0.01792392134666443){
    if(i62<-0.0038969218730926514){
     s0+=52.0;
     s1+=14.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i22<0.04025036096572876){
     s0+=11.0;
     s1+=58.0;
    } else {
     s0+=9.0;
     s1+=14282.0;
    }
   }
  }
 }
} else {
 if(i4<0.00038248300552368164){
  if(i18<0.00145257031545043){
   if(i19<0.9957694411277771){
    if(i1<-1.5220541172311641e-05){
     s0+=528.0;
     s1+=115.0;
    } else {
     s0+=14570.0;
     s1+=198.0;
    }
   } else {
    if(i40<0.0018449685303494334){
     s0+=61719.0;
     s1+=112.0;
    } else {
     s0+=5051.0;
     s1+=143.0;
    }
   }
  } else {
   if(i0<-3.2842159271240234e-05){
    if(i22<0.23436102271080017){
     s0+=20611.0;
     s1+=532.0;
    } else {
     s0+=2.0;
     s1+=80.0;
    }
   } else {
    if(i44<0.9995174407958984){
     s0+=2119.0;
     s1+=119.0;
    } else {
     s0+=1057.0;
     s1+=2069.0;
    }
   }
  }
 } else {
  if(i13<0.0003417117986828089){
   if(i18<0.0009965533390641212){
    if(i5<4.6193599700927734e-05){
     s0+=1744.0;
    } else {
     s1+=123.0;
    }
   } else {
    if(i2<5.46574592590332e-05){
     s0+=1046.0;
     s1+=173.0;
    } else {
     s0+=555.0;
     s1+=5426.0;
    }
   }
  } else {
   if(i40<0.005180067382752895){
    if(i45<0.0069615812972188){
     s0+=6091.0;
     s1+=34.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i52<0.3041984438896179){
     s0+=540.0;
     s1+=271.0;
    } else {
     s0+=11.0;
     s1+=145.0;
    }
   }
  }
 }
}
if(i26<1.0181405544281006){
 if(i0<7.957220077514648e-05){
  if(i63<0.4780000150203705){
   if(i57<0.002522288355976343){
    if(i30<7.778406143188477e-05){
     s0+=75031.0;
     s1+=713.0;
    } else {
     s0+=33307.0;
     s1+=3681.0;
    }
   } else {
    if(i12<1.003145694732666){
     s0+=5000.0;
     s1+=732.0;
    } else {
     s0+=603.0;
     s1+=777.0;
    }
   }
  } else {
   if(i56<1.0238711833953857){
    if(i7<0.020084653049707413){
     s0+=99.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i1<-7.702479342697188e-05){
     s0+=1.0;
     s1+=505.0;
    } else {
     s0+=7.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i65<0.0009007997578009963){
   if(i31<0.0012627949472516775){
    if(i47<1.0009708404541016){
     s0+=2.0;
     s1+=882.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i13<0.0004011295095551759){
     s0+=45.0;
     s1+=326.0;
    } else {
     s0+=916.0;
     s1+=15.0;
    }
   }
  } else {
   if(i22<0.010683774948120117){
    if(i47<1.0004897117614746){
     s0+=36.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=57.0;
    }
   } else {
    if(i48<2.8461217880249023e-05){
     s0+=41.0;
     s1+=2521.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i8<1.020103931427002){
  if(i15<0.19387686252593994){
   if(i7<0.005681229755282402){
    if(i34<0.0009378622053191066){
     s0+=2.0;
     s1+=286.0;
    } else {
     s0+=1090.0;
     s1+=80.0;
    }
   } else {
    if(i44<0.9996337890625){
     s0+=52.0;
     s1+=4.0;
    } else {
     s0+=47.0;
     s1+=696.0;
    }
   }
  } else {
   if(i31<0.0024118726141750813){
    if(i34<0.0019098948687314987){
     s0+=24.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i49<-8.396091288886964e-06){
     s0+=32.0;
     s1+=1008.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i55<-6.249510988709517e-06){
   s0+=19.0;
  } else {
   if(i3<1.001333475112915){
    if(i32<0.0018887518672272563){
     s0+=140.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=81.0;
    }
   } else {
    if(i27<1.6501121520996094){
     s0+=41.0;
     s1+=11853.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i5<1.3649463653564453e-05){
  if(i38<0.23891732096672058){
   if(i32<0.0007178897503763437){
    if(i24<1.1354830265045166){
     s0+=76867.0;
     s1+=364.0;
    } else {
     s0+=976.0;
     s1+=61.0;
    }
   } else {
    if(i25<1.1164028644561768){
     s0+=1645.0;
     s1+=2026.0;
    } else {
     s0+=26007.0;
     s1+=700.0;
    }
   }
  } else {
   if(i43<0.00484958291053772){
    if(i26<1.017127275466919){
     s0+=47.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    if(i49<-9.950557796400972e-06){
     s1+=264.0;
    } else {
     s0+=64.0;
    }
   }
  }
 } else {
  if(i51<-0.00021149478561710566){
   if(i33<1.116865873336792){
    if(i0<1.3828277587890625e-05){
     s0+=787.0;
     s1+=270.0;
    } else {
     s0+=398.0;
     s1+=1257.0;
    }
   } else {
    if(i40<0.0019071797141805291){
     s0+=18.0;
    } else {
     s0+=103.0;
     s1+=1618.0;
    }
   }
  } else {
   if(i18<0.00197644904255867){
    if(i28<0.9653328061103821){
     s0+=9.0;
     s1+=14.0;
    } else {
     s0+=4623.0;
     s1+=39.0;
    }
   } else {
    if(i7<0.0039031333290040493){
     s0+=1167.0;
     s1+=12.0;
    } else {
     s0+=1794.0;
     s1+=1175.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i25<1.116804838180542){
   if(i9<1.00748610496521){
    if(i13<0.0005902131670154631){
     s1+=84.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i29<1.0510683059692383){
     s0+=1.0;
    } else {
     s1+=2293.0;
    }
   }
  } else {
   if(i20<0.01808037795126438){
    if(i59<0.001465010573156178){
     s0+=1940.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<1.0013282299041748){
     s0+=11.0;
    } else {
     s1+=60.0;
    }
   }
  }
 } else {
  if(i28<0.9125299453735352){
   if(i37<0.0002922086277976632){
    if(i34<0.0046469056978821754){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=258.0;
    }
   } else {
    if(i53<-1.9054445147048682e-05){
     s0+=4.0;
     s1+=42.0;
    } else {
     s0+=43.0;
     s1+=12.0;
    }
   }
  } else {
   if(i33<1.0739543437957764){
    if(i47<1.0008552074432373){
     s0+=52.0;
     s1+=62.0;
    } else {
     s0+=2.0;
     s1+=770.0;
    }
   } else {
    if(i15<0.0969586968421936){
     s0+=15.0;
     s1+=260.0;
    } else {
     s0+=6.0;
     s1+=12548.0;
    }
   }
  }
 }
}
if(i4<0.0005726218223571777){
 if(i22<0.20090630650520325){
  if(i32<0.0007157920626923442){
   if(i36<1.0776758193969727){
    if(i32<0.0006275171763263643){
     s0+=20563.0;
     s1+=137.0;
    } else {
     s0+=1140.0;
     s1+=180.0;
    }
   } else {
    if(i57<0.0019517428008839488){
     s0+=54670.0;
     s1+=84.0;
    } else {
     s0+=3162.0;
     s1+=76.0;
    }
   }
  } else {
   if(i40<0.0010602541733533144){
    if(i63<0.016703089699149132){
     s0+=3521.0;
     s1+=873.0;
    } else {
     s0+=709.0;
     s1+=1574.0;
    }
   } else {
    if(i3<1.0021140575408936){
     s0+=25476.0;
     s1+=1154.0;
    } else {
     s0+=198.0;
     s1+=478.0;
    }
   }
  }
 } else {
  if(i43<0.001911762054078281){
   if(i14<1.0164387226104736){
    s0+=167.0;
   } else {
    if(i58<1.0060791969299316){
     s1+=14.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i25<1.6811659336090088){
    if(i7<0.005282666068524122){
     s0+=87.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=730.0;
    }
   } else {
    s0+=49.0;
   }
  }
 }
} else {
 if(i8<1.0167311429977417){
  if(i13<0.000704434234648943){
   if(i32<0.00047920437646098435){
    if(i37<-2.3080981918610632e-05){
     s0+=12.0;
     s1+=218.0;
    } else {
     s0+=909.0;
     s1+=24.0;
    }
   } else {
    if(i2<0.00034302473068237305){
     s0+=1378.0;
     s1+=724.0;
    } else {
     s0+=803.0;
     s1+=5076.0;
    }
   }
  } else {
   s0+=3266.0;
  }
 } else {
  if(i30<0.0017088353633880615){
   if(i7<0.003527122549712658){
    if(i17<1.0093955993652344){
     s0+=92.0;
     s1+=20.0;
    } else {
     s0+=58.0;
     s1+=319.0;
    }
   } else {
    if(i66<1.4724004358868115e-05){
     s0+=61.0;
     s1+=12746.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   s0+=82.0;
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i41<1.0242044925689697){
  if(i15<0.2243664264678955){
   if(i18<0.0017270424868911505){
    if(i43<0.000473509484436363){
     s0+=29575.0;
     s1+=744.0;
    } else {
     s0+=59126.0;
     s1+=214.0;
    }
   } else {
    if(i23<0.0009228305425494909){
     s0+=1872.0;
     s1+=2290.0;
    } else {
     s0+=18371.0;
     s1+=943.0;
    }
   }
  } else {
   if(i42<0.06251917779445648){
    if(i3<1.0041961669921875){
     s0+=53.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i23<0.0024896636605262756){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i20<0.02762436680495739){
   if(i12<1.0005995035171509){
    if(i25<1.1187247037887573){
     s0+=4.0;
     s1+=14.0;
    } else {
     s0+=435.0;
     s1+=39.0;
    }
   } else {
    if(i53<-3.947873210563557e-06){
     s0+=37.0;
     s1+=98.0;
    } else {
     s0+=50.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<-2.442598997731693e-05){
    if(i11<0.9922699928283691){
     s0+=13.0;
     s1+=21.0;
    } else {
     s0+=15.0;
     s1+=668.0;
    }
   } else {
    if(i17<0.9974441528320312){
     s0+=83.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i40<0.001967518124729395){
  if(i50<1.0029758214950562){
   if(i47<0.9996919631958008){
    if(i42<0.030583621934056282){
     s0+=1465.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i48<9.357929229736328e-06){
     s0+=246.0;
     s1+=2603.0;
    } else {
     s0+=873.0;
     s1+=235.0;
    }
   }
  } else {
   if(i19<1.039130449295044){
    if(i7<0.0062440442852675915){
     s0+=2214.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=20.0;
   }
  }
 } else {
  if(i4<0.0010259747505187988){
   if(i2<5.513429641723633e-05){
    if(i52<0.2532956898212433){
     s0+=1075.0;
     s1+=134.0;
    } else {
     s0+=17.0;
     s1+=172.0;
    }
   } else {
    if(i21<-0.00018918514251708984){
     s0+=131.0;
     s1+=282.0;
    } else {
     s0+=10.0;
     s1+=1624.0;
    }
   }
  } else {
   if(i22<0.09465053677558899){
    if(i64<0.001663857838138938){
     s0+=241.0;
     s1+=39.0;
    } else {
     s0+=260.0;
     s1+=695.0;
    }
   } else {
    if(i35<1.127323031425476){
     s0+=57.0;
     s1+=5.0;
    } else {
     s0+=113.0;
     s1+=13411.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i18<0.0017930822214111686){
  if(i36<1.0776758193969727){
   if(i32<0.0006275171763263643){
    if(i0<-2.9742717742919922e-05){
     s0+=7266.0;
     s1+=167.0;
    } else {
     s0+=13286.0;
     s1+=1.0;
    }
   } else {
    if(i44<0.9990084767341614){
     s0+=1351.0;
     s1+=14.0;
    } else {
     s0+=1301.0;
     s1+=623.0;
    }
   }
  } else {
   if(i40<0.0018044563475996256){
    if(i31<0.0006346661830320954){
     s0+=6171.0;
     s1+=70.0;
    } else {
     s0+=52653.0;
    }
   } else {
    if(i12<1.002396821975708){
     s0+=10474.0;
     s1+=198.0;
    } else {
     s0+=124.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i14<1.0106399059295654){
   if(i21<-0.0003045201301574707){
    if(i7<0.016279663890600204){
     s0+=13799.0;
     s1+=538.0;
    } else {
     s0+=560.0;
     s1+=747.0;
    }
   } else {
    if(i47<0.9995657205581665){
     s0+=3477.0;
     s1+=47.0;
    } else {
     s0+=2766.0;
     s1+=3227.0;
    }
   }
  } else {
   if(i3<1.0010666847229004){
    if(i56<1.1230299472808838){
     s0+=623.0;
     s1+=147.0;
    } else {
     s0+=27.0;
     s1+=156.0;
    }
   } else {
    if(i30<0.0006518363952636719){
     s0+=85.0;
     s1+=1749.0;
    } else {
     s0+=283.0;
     s1+=195.0;
    }
   }
  }
 }
} else {
 if(i35<1.1703872680664062){
  if(i57<0.0007057955954223871){
   if(i36<1.0494179725646973){
    s0+=66.0;
   } else {
    if(i31<0.0013757115229964256){
     s0+=1.0;
     s1+=2224.0;
    } else {
     s0+=39.0;
     s1+=107.0;
    }
   }
  } else {
   if(i20<0.014609199948608875){
    if(i13<0.00027587154181674123){
     s0+=39.0;
     s1+=317.0;
    } else {
     s0+=1828.0;
     s1+=2.0;
    }
   } else {
    if(i13<0.0018356486689299345){
     s0+=7.0;
     s1+=467.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i37<0.00029134636861272156){
   if(i14<1.0245285034179688){
    if(i76<0.004382610321044922){
     s0+=15.0;
     s1+=2908.0;
    } else {
     s0+=37.0;
     s1+=217.0;
    }
   } else {
    if(i7<0.0029270583763718605){
     s0+=6.0;
     s1+=85.0;
    } else {
     s1+=10102.0;
    }
   }
  } else {
   if(i62<-0.006371259689331055){
    if(i18<0.005788838490843773){
     s0+=34.0;
    } else {
     s0+=9.0;
     s1+=43.0;
    }
   } else {
    s1+=74.0;
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i7<0.007630317471921444){
  if(i29<1.0905578136444092){
   if(i18<0.0015696289483457804){
    if(i59<8.911815530154854e-05){
     s0+=17965.0;
     s1+=43.0;
    } else {
     s0+=5636.0;
     s1+=424.0;
    }
   } else {
    if(i25<1.056142807006836){
     s0+=2689.0;
    } else {
     s0+=287.0;
     s1+=2356.0;
    }
   }
  } else {
   if(i6<1.0021469593048096){
    if(i31<0.000845159578602761){
     s0+=5377.0;
     s1+=399.0;
    } else {
     s0+=72811.0;
     s1+=415.0;
    }
   } else {
    if(i1<-5.490486364578828e-05){
     s0+=303.0;
     s1+=460.0;
    } else {
     s0+=4088.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i4<0.00024458765983581543){
   if(i38<0.16456732153892517){
    if(i2<-0.0003705620765686035){
     s0+=3542.0;
     s1+=128.0;
    } else {
     s0+=7.0;
     s1+=62.0;
    }
   } else {
    if(i16<-0.005976051092147827){
     s0+=29.0;
     s1+=17.0;
    } else {
     s0+=15.0;
     s1+=361.0;
    }
   }
  } else {
   if(i15<0.07075774669647217){
    if(i19<0.9629480838775635){
     s0+=1001.0;
     s1+=84.0;
    } else {
     s0+=179.0;
     s1+=187.0;
    }
   } else {
    if(i67<-0.003189295530319214){
     s0+=266.0;
     s1+=945.0;
    } else {
     s0+=29.0;
     s1+=1867.0;
    }
   }
  }
 }
} else {
 if(i1<-7.376159919658676e-05){
  if(i13<0.0007051074644550681){
   if(i48<5.811452865600586e-05){
    if(i39<6.139278411865234e-06){
     s0+=41.0;
     s1+=95.0;
    } else {
     s0+=35.0;
     s1+=14597.0;
    }
   } else {
    s0+=85.0;
   }
  } else {
   s0+=359.0;
  }
 } else {
  if(i23<0.0009883928578346968){
   if(i3<1.0052490234375){
    if(i13<0.0005902131670154631){
     s1+=135.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i48<1.138448715209961e-05){
     s0+=3.0;
     s1+=984.0;
    } else {
     s0+=14.0;
     s1+=43.0;
    }
   }
  } else {
   if(i20<0.011908026412129402){
    if(i23<0.0023548221215605736){
     s0+=1502.0;
    } else {
     s0+=2.0;
     s1+=66.0;
    }
   } else {
    if(i22<0.1203572154045105){
     s0+=86.0;
     s1+=174.0;
    } else {
     s0+=2.0;
     s1+=388.0;
    }
   }
  }
 }
}
if(i5<2.0444393157958984e-05){
 if(i23<0.015951594337821007){
  if(i6<1.0001695156097412){
   if(i19<0.9955960512161255){
    if(i9<0.9894192218780518){
     s0+=14907.0;
     s1+=159.0;
    } else {
     s0+=7739.0;
     s1+=730.0;
    }
   } else {
    if(i40<0.01671522483229637){
     s0+=46917.0;
     s1+=193.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i22<0.20642241835594177){
    if(i1<-5.7299148465972394e-05){
     s0+=1078.0;
     s1+=779.0;
    } else {
     s0+=38562.0;
     s1+=2339.0;
    }
   } else {
    if(i50<1.000819444656372){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=48.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i30<-0.0008320808410644531){
   s0+=34.0;
  } else {
   s1+=249.0;
  }
 }
} else {
 if(i13<0.0007041473872959614){
  if(i33<1.104677438735962){
   if(i0<6.216764450073242e-05){
    if(i36<1.0967509746551514){
     s0+=118.0;
     s1+=530.0;
    } else {
     s0+=2831.0;
     s1+=906.0;
    }
   } else {
    if(i55<-6.216310794115998e-06){
     s0+=82.0;
    } else {
     s0+=210.0;
     s1+=5172.0;
    }
   }
  } else {
   if(i1<-3.533397102728486e-05){
    if(i35<1.1279253959655762){
     s0+=20.0;
     s1+=22.0;
    } else {
     s0+=76.0;
     s1+=12708.0;
    }
   } else {
    if(i18<0.0019421873148530722){
     s0+=274.0;
    } else {
     s0+=96.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i52<0.1274736076593399){
   s0+=3461.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i15<0.20764318108558655){
  if(i30<9.292364120483398e-05){
   if(i9<1.01465904712677){
    if(i18<0.0012453357921913266){
     s0+=63135.0;
     s1+=223.0;
    } else {
     s0+=16810.0;
     s1+=873.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i4<0.000279843807220459){
    if(i12<0.9971782565116882){
     s0+=7123.0;
     s1+=108.0;
    } else {
     s0+=16269.0;
     s1+=1595.0;
    }
   } else {
    if(i23<0.0002466001606080681){
     s0+=2676.0;
    } else {
     s0+=8019.0;
     s1+=3585.0;
    }
   }
  }
 } else {
  if(i20<0.03070584125816822){
   if(i31<0.005660871043801308){
    if(i21<0.00015360116958618164){
     s0+=253.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i35<1.1627824306488037){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=45.0;
    }
   }
  } else {
   if(i24<1.6811659336090088){
    if(i1<-3.5174110962543637e-05){
     s0+=2.0;
     s1+=1335.0;
    } else {
     s0+=37.0;
     s1+=90.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
} else {
 if(i55<-7.045716301945504e-06){
  s0+=733.0;
 } else {
  if(i8<1.0167311429977417){
   if(i20<0.007862752303481102){
    if(i33<1.0634982585906982){
     s0+=106.0;
     s1+=846.0;
    } else {
     s0+=970.0;
     s1+=176.0;
    }
   } else {
    if(i24<1.1097848415374756){
     s0+=194.0;
     s1+=1014.0;
    } else {
     s0+=33.0;
     s1+=1824.0;
    }
   }
  } else {
   if(i40<0.0016602175310254097){
    if(i48<1.4066696166992188e-05){
     s0+=13.0;
     s1+=942.0;
    } else {
     s0+=76.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.041490793228149414){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=13.0;
     s1+=11653.0;
    }
   }
  }
 }
}
if(i2<0.0009575486183166504){
 if(i1<-8.329882984980941e-05){
  if(i22<0.0459960401058197){
   if(i24<1.1418507099151611){
    if(i19<0.9684889316558838){
     s0+=895.0;
     s1+=20.0;
    } else {
     s0+=74.0;
     s1+=37.0;
    }
   } else {
    if(i70<0.04820213466882706){
     s0+=29.0;
     s1+=11.0;
    } else {
     s0+=13.0;
     s1+=57.0;
    }
   }
  } else {
   if(i55<-6.662562554993201e-06){
    s0+=49.0;
   } else {
    if(i38<0.1199522316455841){
     s0+=112.0;
     s1+=374.0;
    } else {
     s0+=25.0;
     s1+=1762.0;
    }
   }
  }
 } else {
  if(i10<1.0161552429199219){
   if(i8<1.0077850818634033){
    if(i31<0.0010524073150008917){
     s0+=32274.0;
     s1+=2640.0;
    } else {
     s0+=75881.0;
     s1+=1217.0;
    }
   } else {
    if(i40<0.0009468882344663143){
     s0+=208.0;
     s1+=402.0;
    } else {
     s0+=3555.0;
     s1+=314.0;
    }
   }
  } else {
   if(i4<0.00026863813400268555){
    if(i32<0.0009710463928058743){
     s0+=604.0;
     s1+=25.0;
    } else {
     s0+=179.0;
     s1+=83.0;
    }
   } else {
    if(i13<0.00034517032327130437){
     s0+=218.0;
     s1+=871.0;
    } else {
     s0+=269.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i29<1.176405668258667){
  if(i34<0.0012506716884672642){
   if(i13<0.00027890206547454){
    s1+=2140.0;
   } else {
    s0+=94.0;
   }
  } else {
   if(i23<0.0010731036309152842){
    s1+=216.0;
   } else {
    s0+=1870.0;
   }
  }
 } else {
  if(i15<0.010792076587677002){
   if(i6<1.0061490535736084){
    if(i10<0.9386438131332397){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i17<0.9919241666793823){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   }
  } else {
   if(i25<1.629280686378479){
    if(i24<1.0234335660934448){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=13503.0;
    }
   } else {
    if(i24<1.114524483680725){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=652.0;
    }
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i7<0.006916811689734459){
  if(i31<0.0010346968192607164){
   if(i30<6.288290023803711e-05){
    if(i62<-0.00034245848655700684){
     s0+=4717.0;
     s1+=378.0;
    } else {
     s0+=20995.0;
     s1+=254.0;
    }
   } else {
    if(i54<0.012127353809773922){
     s0+=5815.0;
     s1+=879.0;
    } else {
     s0+=462.0;
     s1+=1430.0;
    }
   }
  } else {
   if(i1<-5.7065364671871066e-05){
    if(i58<1.0012832880020142){
     s0+=1093.0;
     s1+=9.0;
    } else {
     s0+=308.0;
     s1+=419.0;
    }
   } else {
    if(i52<0.03904944658279419){
     s0+=61096.0;
     s1+=106.0;
    } else {
     s0+=12868.0;
     s1+=398.0;
    }
   }
  }
 } else {
  if(i0<-2.7239322662353516e-05){
   if(i39<0.1521766483783722){
    if(i13<0.000615807599388063){
     s0+=5955.0;
     s1+=271.0;
    } else {
     s0+=188.0;
     s1+=102.0;
    }
   } else {
    if(i1<-5.493385106092319e-05){
     s0+=5.0;
     s1+=299.0;
    } else {
     s0+=69.0;
     s1+=26.0;
    }
   }
  } else {
   if(i9<0.9763535857200623){
    if(i7<0.02046896517276764){
     s0+=304.0;
     s1+=51.0;
    } else {
     s0+=77.0;
     s1+=117.0;
    }
   } else {
    if(i20<0.013361186720430851){
     s0+=125.0;
     s1+=45.0;
    } else {
     s0+=153.0;
     s1+=3153.0;
    }
   }
  }
 }
} else {
 if(i14<1.0226216316223145){
  if(i23<0.002379375509917736){
   if(i48<1.150369644165039e-05){
    if(i25<1.116804838180542){
     s0+=7.0;
     s1+=1667.0;
    } else {
     s0+=280.0;
    }
   } else {
    if(i30<0.0005134940147399902){
     s0+=44.0;
     s1+=54.0;
    } else {
     s0+=1689.0;
    }
   }
  } else {
   if(i47<1.0008876323699951){
    if(i19<0.9443275928497314){
     s0+=29.0;
     s1+=2.0;
    } else {
     s0+=79.0;
     s1+=854.0;
    }
   } else {
    if(i21<-0.0002999305725097656){
     s0+=20.0;
     s1+=252.0;
    } else {
     s0+=5.0;
     s1+=2246.0;
    }
   }
  }
 } else {
  if(i55<-6.478499926743098e-06){
   s0+=16.0;
  } else {
   if(i7<0.001547491643577814){
    if(i3<1.0099666118621826){
     s0+=29.0;
    } else {
     s0+=2.0;
     s1+=51.0;
    }
   } else {
    if(i9<1.0118509531021118){
     s0+=14.0;
     s1+=588.0;
    } else {
     s1+=10765.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i22<0.19786036014556885){
  if(i46<-8.745904779061675e-06){
   if(i20<0.0036112002562731504){
    if(i45<0.000767089833971113){
     s0+=3.0;
     s1+=74.0;
    } else {
     s0+=123.0;
     s1+=14.0;
    }
   } else {
    if(i64<0.00029201802681200206){
     s0+=56.0;
     s1+=86.0;
    } else {
     s0+=33.0;
     s1+=806.0;
    }
   }
  } else {
   if(i4<0.00035625696182250977){
    if(i25<1.116391897201538){
     s0+=27414.0;
     s1+=2347.0;
    } else {
     s0+=77731.0;
     s1+=685.0;
    }
   } else {
    if(i20<0.009556775912642479){
     s0+=7498.0;
     s1+=616.0;
    } else {
     s0+=2256.0;
     s1+=3150.0;
    }
   }
  }
 } else {
  if(i23<0.00257682497613132){
   if(i53<-4.185590114502702e-06){
    if(i31<0.0020997922401875257){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=26.0;
    }
   } else {
    if(i24<1.1015751361846924){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=186.0;
    }
   }
  } else {
   if(i65<0.00031881534960120916){
    if(i27<1.1231228113174438){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=27.0;
     s1+=411.0;
    }
   } else {
    if(i45<0.003329440951347351){
     s0+=9.0;
     s1+=144.0;
    } else {
     s0+=4.0;
     s1+=1299.0;
    }
   }
  }
 }
} else {
 if(i15<0.17102265357971191){
  if(i13<0.0003237108467146754){
   if(i4<0.0002834200859069824){
    if(i58<1.0014150142669678){
     s0+=209.0;
     s1+=7.0;
    } else {
     s0+=47.0;
     s1+=48.0;
    }
   } else {
    if(i46<2.0111858248128556e-05){
     s0+=16.0;
     s1+=2823.0;
    } else {
     s0+=92.0;
     s1+=5.0;
    }
   }
  } else {
   if(i31<0.008277731016278267){
    if(i43<0.002049239119514823){
     s0+=667.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=31.0;
    }
   } else {
    s1+=100.0;
   }
  }
 } else {
  if(i18<0.001378514338284731){
   if(i4<0.0017642378807067871){
    if(i33<1.0736944675445557){
     s1+=2.0;
    } else {
     s0+=74.0;
     s1+=6.0;
    }
   } else {
    s1+=253.0;
   }
  } else {
   if(i16<-0.0028408169746398926){
    if(i13<0.00023781845811754465){
     s0+=26.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i34<0.0014657964929938316){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=25.0;
     s1+=11179.0;
    }
   }
  }
 }
}
if(i3<1.0038504600524902){
 if(i1<-8.121997234411538e-05){
  if(i67<-0.011774510145187378){
   if(i1<-0.00017103216669056565){
    if(i42<0.1461949646472931){
     s0+=16.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i33<1.074812889099121){
     s0+=848.0;
     s1+=59.0;
    } else {
     s0+=5.0;
     s1+=44.0;
    }
   }
  } else {
   if(i33<1.0780255794525146){
    if(i20<0.028277404606342316){
     s0+=285.0;
     s1+=53.0;
    } else {
     s0+=26.0;
     s1+=142.0;
    }
   } else {
    if(i29<1.1640105247497559){
     s0+=62.0;
     s1+=42.0;
    } else {
     s0+=54.0;
     s1+=1369.0;
    }
   }
  }
 } else {
  if(i11<1.0092684030532837){
   if(i32<0.0006951235700398684){
    if(i59<0.0001471744035370648){
     s0+=61930.0;
     s1+=108.0;
    } else {
     s0+=15516.0;
     s1+=313.0;
    }
   } else {
    if(i6<0.9997754096984863){
     s0+=19890.0;
     s1+=346.0;
    } else {
     s0+=11913.0;
     s1+=3241.0;
    }
   }
  } else {
   if(i34<0.0011313601862639189){
    if(i27<1.0921316146850586){
     s0+=4.0;
     s1+=477.0;
    } else {
     s0+=109.0;
    }
   } else {
    if(i7<0.006043029949069023){
     s0+=1492.0;
     s1+=84.0;
    } else {
     s0+=54.0;
     s1+=264.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i61<0.0004274080856703222){
   if(i18<0.0015643038786947727){
    if(i13<0.00016685631999280304){
     s1+=370.0;
    } else {
     s0+=579.0;
    }
   } else {
    if(i23<0.00024114479310810566){
     s0+=174.0;
    } else {
     s0+=75.0;
     s1+=2113.0;
    }
   }
  } else {
   if(i7<0.005993309896439314){
    if(i43<0.0008483472047373652){
     s1+=68.0;
    } else {
     s0+=3149.0;
     s1+=48.0;
    }
   } else {
    if(i55<-3.6555193219101056e-06){
     s0+=48.0;
    } else {
     s0+=12.0;
     s1+=259.0;
    }
   }
  }
 } else {
  if(i33<1.0628807544708252){
   if(i59<0.0002049435570370406){
    if(i39<0.06243982911109924){
     s0+=122.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   } else {
    if(i6<1.0052155256271362){
     s0+=38.0;
     s1+=74.0;
    } else {
     s0+=23.0;
     s1+=523.0;
    }
   }
  } else {
   if(i7<0.0029759714379906654){
    if(i60<-0.0025666537694633007){
     s0+=29.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=126.0;
    }
   } else {
    if(i24<1.0742113590240479){
     s0+=27.0;
     s1+=39.0;
    } else {
     s0+=36.0;
     s1+=14095.0;
    }
   }
  }
 }
}
if(i24<1.1279573440551758){
 if(i0<6.574392318725586e-05){
  if(i7<0.0038731484673917294){
   if(i7<0.0023879720829427242){
    if(i33<1.010751724243164){
     s0+=1815.0;
     s1+=113.0;
    } else {
     s0+=72389.0;
     s1+=295.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=4290.0;
     s1+=616.0;
    } else {
     s0+=11294.0;
     s1+=141.0;
    }
   }
  } else {
   if(i44<0.9996456503868103){
    if(i4<-0.00010913610458374023){
     s0+=14345.0;
     s1+=36.0;
    } else {
     s0+=650.0;
     s1+=217.0;
    }
   } else {
    if(i46<2.3700773454038426e-05){
     s0+=808.0;
     s1+=3443.0;
    } else {
     s0+=6322.0;
     s1+=649.0;
    }
   }
  }
 } else {
  if(i30<0.0011671185493469238){
   if(i16<0.0018780827522277832){
    if(i34<0.0012326434953138232){
     s0+=50.0;
     s1+=1074.0;
    } else {
     s0+=940.0;
     s1+=963.0;
    }
   } else {
    if(i1<-7.248677138704807e-05){
     s1+=2816.0;
    } else {
     s0+=5.0;
     s1+=179.0;
    }
   }
  } else {
   if(i23<0.005015186034142971){
    s0+=962.0;
   } else {
    s1+=226.0;
   }
  }
 }
} else {
 if(i23<0.002560233697295189){
  if(i16<0.0017865896224975586){
   if(i7<0.006917441263794899){
    if(i30<0.00013768672943115234){
     s0+=1273.0;
    } else {
     s0+=605.0;
     s1+=55.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   s1+=18.0;
  }
 } else {
  if(i1<-3.4557579056127e-05){
   if(i22<0.005414396524429321){
    if(i52<0.13233771920204163){
     s0+=80.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=50.0;
    }
   } else {
    if(i36<1.1393816471099854){
     s0+=14.0;
    } else {
     s0+=103.0;
     s1+=13227.0;
    }
   }
  } else {
   if(i6<1.0023168325424194){
    if(i54<0.04896432161331177){
     s0+=328.0;
     s1+=1.0;
    } else {
     s0+=50.0;
     s1+=38.0;
    }
   } else {
    if(i21<-0.0002651214599609375){
     s0+=98.0;
     s1+=59.0;
    } else {
     s0+=25.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i10<1.0164800882339478){
 if(i6<1.0026320219039917){
  if(i54<0.19675123691558838){
   if(i30<8.219480514526367e-05){
    if(i18<0.005688025150448084){
     s0+=77793.0;
     s1+=847.0;
    } else {
     s0+=84.0;
     s1+=88.0;
    }
   } else {
    if(i31<0.001050656195729971){
     s0+=5028.0;
     s1+=2411.0;
    } else {
     s0+=26602.0;
     s1+=902.0;
    }
   }
  } else {
   if(i22<0.07880347967147827){
    if(i56<1.022320032119751){
     s0+=136.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i15<0.10648640990257263){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=203.0;
    }
   }
  }
 } else {
  if(i65<0.0008404312538914382){
   if(i23<0.0010736514814198017){
    if(i30<0.000509798526763916){
     s0+=96.0;
     s1+=985.0;
    } else {
     s0+=651.0;
    }
   } else {
    if(i20<0.02103275991976261){
     s0+=2834.0;
     s1+=43.0;
    } else {
     s0+=208.0;
     s1+=407.0;
    }
   }
  } else {
   if(i38<0.043690502643585205){
    if(i73<-0.005842387676239014){
     s0+=102.0;
     s1+=206.0;
    } else {
     s0+=539.0;
     s1+=55.0;
    }
   } else {
    if(i3<1.0017242431640625){
     s0+=278.0;
     s1+=418.0;
    } else {
     s0+=265.0;
     s1+=3384.0;
    }
   }
  }
 }
} else {
 if(i38<0.17997723817825317){
  if(i25<1.1178560256958008){
   if(i53<-1.6953661088336958e-06){
    s1+=1731.0;
   } else {
    s0+=11.0;
   }
  } else {
   if(i31<0.002625123830512166){
    if(i43<0.001806078478693962){
     s0+=641.0;
     s1+=5.0;
    } else {
     s0+=288.0;
     s1+=39.0;
    }
   } else {
    if(i2<0.0007684230804443359){
     s0+=462.0;
     s1+=225.0;
    } else {
     s0+=51.0;
     s1+=975.0;
    }
   }
  }
 } else {
  if(i3<1.0016801357269287){
   if(i13<0.00031039564055390656){
    if(i43<0.006263384595513344){
     s0+=59.0;
     s1+=49.0;
    } else {
     s0+=109.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.003448875853791833){
     s0+=21.0;
    } else {
     s0+=5.0;
     s1+=214.0;
    }
   }
  } else {
   if(i49<-1.4380471839103848e-05){
    if(i10<1.022721529006958){
     s0+=51.0;
     s1+=421.0;
    } else {
     s0+=5.0;
     s1+=10862.0;
    }
   } else {
    if(i7<0.0058038667775690556){
     s0+=26.0;
    } else {
     s1+=29.0;
    }
   }
  }
 }
}
if(i21<0.00020736455917358398){
 if(i33<1.1279923915863037){
  if(i1<-7.644802099093795e-05){
   if(i22<0.0504450798034668){
    if(i70<0.040759675204753876){
     s0+=1189.0;
     s1+=68.0;
    } else {
     s0+=87.0;
     s1+=113.0;
    }
   } else {
    if(i44<0.9968771934509277){
     s0+=101.0;
     s1+=2.0;
    } else {
     s0+=175.0;
     s1+=1753.0;
    }
   }
  } else {
   if(i20<0.006637009792029858){
    if(i16<0.001105666160583496){
     s0+=70137.0;
     s1+=591.0;
    } else {
     s0+=732.0;
     s1+=211.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=7326.0;
     s1+=2715.0;
    } else {
     s0+=34397.0;
     s1+=1975.0;
    }
   }
  }
 } else {
  if(i1<-4.1843391954898834e-05){
   if(i36<1.1731728315353394){
    if(i37<3.281014505773783e-05){
     s0+=63.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i32<0.0006761630065739155){
     s0+=57.0;
     s1+=39.0;
    } else {
     s0+=31.0;
     s1+=3359.0;
    }
   }
  } else {
   if(i7<0.006770792417228222){
    if(i49<-7.854585419408977e-06){
     s0+=426.0;
     s1+=26.0;
    } else {
     s0+=855.0;
    }
   } else {
    if(i13<0.00011933143105125055){
     s0+=9.0;
    } else {
     s0+=15.0;
     s1+=248.0;
    }
   }
  }
 }
} else {
 if(i11<1.018025517463684){
  if(i59<8.3932165580336e-05){
   if(i34<0.0011917822994291782){
    if(i11<1.0060625076293945){
     s0+=21.0;
    } else {
     s0+=3.0;
     s1+=575.0;
    }
   } else {
    if(i3<1.010100245475769){
     s0+=812.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i55<-6.3159486671793275e-06){
    s0+=103.0;
   } else {
    if(i53<-5.6886756283347495e-06){
     s1+=1439.0;
    } else {
     s0+=28.0;
    }
   }
  }
 } else {
  if(i3<1.00345778465271){
   if(i42<0.0775306224822998){
    s0+=16.0;
   } else {
    s1+=25.0;
   }
  } else {
   if(i1<-6.24214590061456e-05){
    if(i52<0.004708145745098591){
     s0+=3.0;
     s1+=48.0;
    } else {
     s0+=8.0;
     s1+=10931.0;
    }
   } else {
    if(i45<0.0008423279505223036){
     s1+=52.0;
    } else {
     s0+=46.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i9<1.0125951766967773){
 if(i15<0.20050522685050964){
  if(i4<0.0003286004066467285){
   if(i7<0.0034019225277006626){
    if(i62<-0.0004258155822753906){
     s0+=13797.0;
     s1+=499.0;
    } else {
     s0+=67156.0;
     s1+=324.0;
    }
   } else {
    if(i21<-0.0002090930938720703){
     s0+=14778.0;
     s1+=433.0;
    } else {
     s0+=8706.0;
     s1+=1721.0;
    }
   }
  } else {
   if(i42<0.02183801494538784){
    if(i40<0.0009451715741306543){
     s0+=2606.0;
     s1+=1500.0;
    } else {
     s0+=6162.0;
     s1+=226.0;
    }
   } else {
    if(i38<0.05991336703300476){
     s0+=1394.0;
     s1+=375.0;
    } else {
     s0+=1104.0;
     s1+=3041.0;
    }
   }
  }
 } else {
  if(i42<0.028649618849158287){
   if(i31<0.009666051715612411){
    if(i49<-2.3207907361211255e-05){
     s0+=13.0;
     s1+=15.0;
    } else {
     s0+=328.0;
     s1+=5.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i2<-0.0002091526985168457){
    if(i32<0.0018972170073539019){
     s0+=154.0;
     s1+=49.0;
    } else {
     s0+=14.0;
     s1+=324.0;
    }
   } else {
    if(i7<0.003712844103574753){
     s0+=16.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=2497.0;
    }
   }
  }
 }
} else {
 if(i1<-7.310554792638868e-05){
  if(i47<0.9983588457107544){
   s0+=40.0;
  } else {
   if(i55<-6.519388534798054e-06){
    s0+=34.0;
   } else {
    if(i53<-3.5338935049367137e-06){
     s0+=2.0;
     s1+=12583.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i25<1.1180615425109863){
   s1+=358.0;
  } else {
   if(i20<0.013348565436899662){
    if(i59<9.753381891641766e-05){
     s0+=372.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=186.0;
   }
  }
 }
}
if(i19<1.014458179473877){
 if(i54<0.07340790331363678){
  if(i5<2.2470951080322266e-05){
   if(i4<0.00030285120010375977){
    if(i25<1.116391897201538){
     s0+=27158.0;
     s1+=2076.0;
    } else {
     s0+=73584.0;
     s1+=620.0;
    }
   } else {
    if(i51<-0.00016945943934842944){
     s0+=836.0;
     s1+=761.0;
    } else {
     s0+=4945.0;
     s1+=538.0;
    }
   }
  } else {
   if(i17<1.013411045074463){
    if(i13<0.00029936435748822987){
     s0+=1029.0;
     s1+=1992.0;
    } else {
     s0+=4602.0;
     s1+=504.0;
    }
   } else {
    if(i62<0.0003330111503601074){
     s0+=34.0;
     s1+=642.0;
    } else {
     s0+=25.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i19<0.9636250734329224){
   if(i53<-1.8009523046202958e-05){
    if(i20<0.060399461537599564){
     s0+=61.0;
     s1+=41.0;
    } else {
     s0+=7.0;
     s1+=127.0;
    }
   } else {
    if(i9<0.9761295914649963){
     s0+=2679.0;
     s1+=173.0;
    } else {
     s0+=32.0;
     s1+=115.0;
    }
   }
  } else {
   if(i22<0.06336137652397156){
    if(i42<0.1205890029668808){
     s0+=220.0;
     s1+=60.0;
    } else {
     s0+=6.0;
     s1+=51.0;
    }
   } else {
    if(i53<-2.469547325745225e-06){
     s0+=125.0;
     s1+=3171.0;
    } else {
     s0+=120.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i19<1.017743706703186){
  if(i48<1.2934207916259766e-05){
   if(i12<1.003324270248413){
    if(i3<1.002791166305542){
     s0+=126.0;
     s1+=39.0;
    } else {
     s0+=37.0;
     s1+=151.0;
    }
   } else {
    if(i13<0.0006490593077614903){
     s0+=32.0;
     s1+=711.0;
    } else {
     s0+=51.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<-0.0001052263323799707){
    if(i40<0.002456149086356163){
     s0+=21.0;
     s1+=4.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i7<0.006908491253852844){
     s0+=374.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i53<-3.3622454793658108e-06){
   if(i3<1.001603364944458){
    if(i43<0.005921277217566967){
     s0+=86.0;
     s1+=6.0;
    } else {
     s1+=67.0;
    }
   } else {
    if(i38<0.06685197353363037){
     s0+=47.0;
     s1+=103.0;
    } else {
     s0+=58.0;
     s1+=12289.0;
    }
   }
  } else {
   if(i2<-0.00036475062370300293){
    if(i34<0.0037164813838899136){
     s1+=2.0;
    } else {
     s0+=11.0;
    }
   } else {
    s0+=164.0;
   }
  }
 }
}
if(i6<1.0026252269744873){
 if(i72<1.0380427837371826){
  if(i11<1.0092239379882812){
   if(i4<0.00020688772201538086){
    if(i22<0.2311956286430359){
     s0+=97587.0;
     s1+=2178.0;
    } else {
     s0+=20.0;
     s1+=96.0;
    }
   } else {
    if(i23<0.0009264809777960181){
     s0+=2420.0;
     s1+=1184.0;
    } else {
     s0+=8600.0;
     s1+=538.0;
    }
   }
  } else {
   if(i27<1.0832439661026){
    if(i31<0.001075506559573114){
     s1+=591.0;
    } else {
     s0+=55.0;
     s1+=10.0;
    }
   } else {
    if(i51<-0.00093359115999192){
     s0+=1.0;
     s1+=42.0;
    } else {
     s0+=1356.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i7<0.005211531184613705){
   if(i46<1.0427296729176305e-05){
    s0+=356.0;
   } else {
    if(i27<1.1223869323730469){
     s0+=91.0;
     s1+=3.0;
    } else {
     s0+=32.0;
     s1+=25.0;
    }
   }
  } else {
   if(i66<1.9154496840201318e-05){
    if(i32<0.0007136603817343712){
     s0+=3.0;
    } else {
     s0+=21.0;
     s1+=764.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
} else {
 if(i22<0.1686955988407135){
  if(i1<-7.388104859273881e-05){
   if(i15<0.04147660732269287){
    if(i21<-0.00023823976516723633){
     s0+=378.0;
     s1+=90.0;
    } else {
     s0+=9.0;
     s1+=96.0;
    }
   } else {
    if(i16<0.0020425915718078613){
     s0+=350.0;
     s1+=1497.0;
    } else {
     s1+=2145.0;
    }
   }
  } else {
   if(i31<0.001203361083753407){
    if(i34<0.00025239645037800074){
     s0+=689.0;
    } else {
     s0+=48.0;
     s1+=1257.0;
    }
   } else {
    if(i65<0.0009405686287209392){
     s0+=3638.0;
     s1+=228.0;
    } else {
     s0+=640.0;
     s1+=582.0;
    }
   }
  }
 } else {
  if(i29<1.176405668258667){
   s0+=169.0;
  } else {
   if(i24<1.052932858467102){
    if(i23<0.004724897909909487){
     s0+=10.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i1<-2.8435480999178253e-05){
     s0+=14.0;
     s1+=12635.0;
    } else {
     s0+=56.0;
     s1+=153.0;
    }
   }
  }
 }
}
if(i11<1.0143203735351562){
 if(i44<1.0068883895874023){
  if(i18<0.001728216651827097){
   if(i18<0.0012767375446856022){
    if(i11<0.995873749256134){
     s0+=14322.0;
     s1+=228.0;
    } else {
     s0+=67607.0;
     s1+=182.0;
    }
   } else {
    if(i29<1.0907573699951172){
     s0+=2176.0;
     s1+=480.0;
    } else {
     s0+=7797.0;
     s1+=156.0;
    }
   }
  } else {
   if(i3<0.9984357357025146){
    if(i57<0.0128191988915205){
     s0+=16543.0;
     s1+=567.0;
    } else {
     s0+=199.0;
     s1+=196.0;
    }
   } else {
    if(i20<0.01022331602871418){
     s0+=4059.0;
     s1+=1199.0;
    } else {
     s0+=1007.0;
     s1+=3931.0;
    }
   }
  }
 } else {
  if(i27<1.1273066997528076){
   if(i0<0.00012665987014770508){
    if(i64<0.00356285460293293){
     s0+=979.0;
     s1+=165.0;
    } else {
     s0+=147.0;
     s1+=166.0;
    }
   } else {
    if(i48<2.6613473892211914e-05){
     s0+=2.0;
     s1+=487.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i15<0.04178726673126221){
    if(i44<1.0179688930511475){
     s0+=455.0;
     s1+=72.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   } else {
    if(i13<0.0007043684599921107){
     s0+=163.0;
     s1+=2207.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
} else {
 if(i8<1.0205715894699097){
  if(i30<0.0006488561630249023){
   if(i29<1.6811659336090088){
    if(i50<1.0003559589385986){
     s0+=145.0;
     s1+=36.0;
    } else {
     s0+=62.0;
     s1+=1733.0;
    }
   } else {
    s0+=80.0;
   }
  } else {
   if(i3<1.0103576183319092){
    if(i40<0.0042175669223070145){
     s0+=735.0;
     s1+=22.0;
    } else {
     s0+=20.0;
     s1+=54.0;
    }
   } else {
    s1+=258.0;
   }
  }
 } else {
  if(i7<0.002841254463419318){
   if(i46<-1.2938929103256669e-05){
    s1+=135.0;
   } else {
    if(i52<0.007149836048483849){
     s1+=2.0;
    } else {
     s0+=152.0;
     s1+=8.0;
    }
   }
  } else {
   if(i53<-2.8513579763966845e-06){
    if(i66<1.8408467440167442e-05){
     s0+=7.0;
     s1+=11752.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=54.0;
   }
  }
 }
}
if(i14<1.0169930458068848){
 if(i22<0.1899137794971466){
  if(i46<-9.983918062062003e-06){
   if(i13<0.0007078605704009533){
    if(i48<5.710124969482422e-05){
     s1+=1447.0;
    } else {
     s0+=33.0;
    }
   } else {
    s0+=165.0;
   }
  } else {
   if(i18<0.0018727885326370597){
    if(i34<0.0005388681311160326){
     s0+=25533.0;
     s1+=930.0;
    } else {
     s0+=68102.0;
     s1+=220.0;
    }
   } else {
    if(i40<0.0011593988165259361){
     s0+=2443.0;
     s1+=2399.0;
    } else {
     s0+=18284.0;
     s1+=2969.0;
    }
   }
  }
 } else {
  if(i49<-1.2709533621091396e-05){
   if(i13<0.0007595211500301957){
    if(i1<-3.730806565727107e-05){
     s0+=21.0;
     s1+=2073.0;
    } else {
     s0+=52.0;
     s1+=82.0;
    }
   } else {
    s0+=25.0;
   }
  } else {
   if(i18<0.00356775289401412){
    if(i42<0.01729263737797737){
     s0+=293.0;
    } else {
     s0+=159.0;
     s1+=13.0;
    }
   } else {
    if(i62<0.0009713470935821533){
     s1+=22.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i2<0.00024303793907165527){
  if(i54<0.037491269409656525){
   if(i43<0.0006437101983465254){
    s1+=3.0;
   } else {
    if(i9<1.0145199298858643){
     s0+=648.0;
     s1+=44.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i7<0.005344959907233715){
    if(i38<0.2344769537448883){
     s0+=197.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.0013039960758760571){
     s0+=3.0;
     s1+=7.0;
    } else {
     s1+=337.0;
    }
   }
  }
 } else {
  if(i7<0.0027919397689402103){
   if(i46<-1.5061363228596747e-05){
    if(i4<0.0013373494148254395){
     s0+=5.0;
    } else {
     s1+=240.0;
    }
   } else {
    if(i51<-0.0007143142865970731){
     s0+=5.0;
     s1+=17.0;
    } else {
     s0+=531.0;
     s1+=5.0;
    }
   }
  } else {
   if(i8<1.0169017314910889){
    if(i47<0.999047040939331){
     s0+=88.0;
     s1+=5.0;
    } else {
     s0+=81.0;
     s1+=1170.0;
    }
   } else {
    if(i50<0.9964817762374878){
     s0+=5.0;
    } else {
     s0+=44.0;
     s1+=12132.0;
    }
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i5<1.2695789337158203e-05){
  if(i26<1.0222010612487793){
   if(i6<0.9994590282440186){
    if(i39<0.2329743504524231){
     s0+=52027.0;
     s1+=307.0;
    } else {
     s0+=31.0;
     s1+=73.0;
    }
   } else {
    if(i23<0.0008680314058437943){
     s0+=12222.0;
     s1+=1962.0;
    } else {
     s0+=39960.0;
     s1+=706.0;
    }
   }
  } else {
   if(i44<0.9999943971633911){
    if(i20<0.04552300646901131){
     s0+=212.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i29<1.7041046619415283){
     s0+=82.0;
     s1+=273.0;
    } else {
     s0+=54.0;
    }
   }
  }
 } else {
  if(i61<0.0029025159310549498){
   if(i10<1.017622709274292){
    if(i7<0.004010428674519062){
     s0+=6911.0;
     s1+=95.0;
    } else {
     s0+=1919.0;
     s1+=1985.0;
    }
   } else {
    if(i30<0.0006154179573059082){
     s0+=15.0;
     s1+=1003.0;
    } else {
     s0+=318.0;
     s1+=176.0;
    }
   }
  } else {
   if(i2<-0.0005234479904174805){
    if(i45<0.01262429729104042){
     s0+=195.0;
     s1+=20.0;
    } else {
     s0+=21.0;
     s1+=75.0;
    }
   } else {
    if(i43<0.003074251115322113){
     s0+=97.0;
     s1+=6.0;
    } else {
     s0+=155.0;
     s1+=1311.0;
    }
   }
  }
 }
} else {
 if(i9<1.0144739151000977){
  if(i13<0.000704873469658196){
   if(i4<0.00039839744567871094){
    if(i7<0.019455360248684883){
     s0+=63.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i13<0.00040471245301887393){
     s0+=117.0;
     s1+=3822.0;
    } else {
     s0+=166.0;
     s1+=477.0;
    }
   }
  } else {
   s0+=1653.0;
  }
 } else {
  if(i48<3.49879264831543e-05){
   if(i9<1.0162638425827026){
    if(i48<1.9311904907226562e-05){
     s0+=4.0;
     s1+=547.0;
    } else {
     s0+=50.0;
     s1+=9.0;
    }
   } else {
    if(i68<0.014794085174798965){
     s0+=1.0;
     s1+=147.0;
    } else {
     s1+=11528.0;
    }
   }
  } else {
   s0+=11.0;
  }
 }
}
if(i3<1.0038654804229736){
 if(i6<1.002397060394287){
  if(i22<0.23270562291145325){
   if(i10<1.0139503479003906){
    if(i30<7.575750350952148e-05){
     s0+=76231.0;
     s1+=801.0;
    } else {
     s0+=31791.0;
     s1+=2945.0;
    }
   } else {
    if(i35<1.0904107093811035){
     s0+=7.0;
     s1+=421.0;
    } else {
     s0+=1177.0;
     s1+=199.0;
    }
   }
  } else {
   if(i37<7.476549944840372e-05){
    if(i47<1.0008610486984253){
     s0+=69.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i53<-2.779070200631395e-06){
     s0+=3.0;
     s1+=437.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i27<1.1271681785583496){
   if(i26<0.9769315719604492){
    if(i71<0.02983960509300232){
     s0+=259.0;
     s1+=92.0;
    } else {
     s0+=62.0;
     s1+=152.0;
    }
   } else {
    if(i7<0.004155952017754316){
     s0+=1381.0;
     s1+=23.0;
    } else {
     s0+=579.0;
     s1+=193.0;
    }
   }
  } else {
   if(i20<0.02232266403734684){
    if(i35<1.1480443477630615){
     s0+=42.0;
     s1+=74.0;
    } else {
     s0+=300.0;
     s1+=56.0;
    }
   } else {
    if(i33<1.0530054569244385){
     s0+=263.0;
     s1+=127.0;
    } else {
     s0+=140.0;
     s1+=1223.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007036929600872099){
  if(i35<1.1699821949005127){
   if(i48<1.1980533599853516e-05){
    if(i5<1.8537044525146484e-05){
     s0+=220.0;
     s1+=55.0;
    } else {
     s0+=266.0;
     s1+=3294.0;
    }
   } else {
    if(i40<0.0022261436097323895){
     s0+=1066.0;
     s1+=34.0;
    } else {
     s0+=27.0;
     s1+=201.0;
    }
   }
  } else {
   if(i24<1.0742113590240479){
    if(i76<0.0024175941944122314){
     s0+=42.0;
     s1+=245.0;
    } else {
     s0+=34.0;
     s1+=4.0;
    }
   } else {
    if(i56<0.9264345765113831){
     s0+=16.0;
     s1+=43.0;
    } else {
     s0+=45.0;
     s1+=13711.0;
    }
   }
  }
 } else {
  if(i29<1.3942866325378418){
   s0+=2492.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i5<3.11732292175293e-05){
 if(i1<-7.367770740529522e-05){
  if(i37<0.000338696816470474){
   if(i60<-0.0009394939988851547){
    if(i54<0.01300189271569252){
     s0+=20.0;
     s1+=51.0;
    } else {
     s0+=31.0;
     s1+=1572.0;
    }
   } else {
    if(i5<7.569789886474609e-06){
     s0+=387.0;
     s1+=8.0;
    } else {
     s0+=234.0;
     s1+=225.0;
    }
   }
  } else {
   if(i22<0.09880217909812927){
    if(i18<0.008455722592771053){
     s0+=862.0;
     s1+=26.0;
    } else {
     s0+=32.0;
     s1+=26.0;
    }
   } else {
    if(i22<0.12902992963790894){
     s0+=4.0;
     s1+=16.0;
    } else {
     s1+=142.0;
    }
   }
  }
 } else {
  if(i8<1.0114514827728271){
   if(i18<0.0017227325588464737){
    if(i36<1.0776758193969727){
     s0+=22792.0;
     s1+=699.0;
    } else {
     s0+=66945.0;
     s1+=218.0;
    }
   } else {
    if(i5<-1.9669532775878906e-06){
     s0+=14114.0;
     s1+=322.0;
    } else {
     s0+=6214.0;
     s1+=3077.0;
    }
   }
  } else {
   if(i29<1.0905578136444092){
    s1+=375.0;
   } else {
    if(i4<0.0003402233123779297){
     s0+=670.0;
     s1+=49.0;
    } else {
     s0+=164.0;
     s1+=294.0;
    }
   }
  }
 }
} else {
 if(i15<0.17144212126731873){
  if(i7<0.0028390209190547466){
   if(i46<-1.470904317102395e-05){
    if(i13<0.00016328154015354812){
     s0+=3.0;
     s1+=339.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i67<-0.0025732815265655518){
     s1+=3.0;
    } else {
     s0+=2396.0;
     s1+=12.0;
    }
   }
  } else {
   if(i2<0.000975489616394043){
    if(i7<0.006749710999429226){
     s0+=471.0;
     s1+=44.0;
    } else {
     s0+=561.0;
     s1+=672.0;
    }
   } else {
    if(i13<0.0009192614816129208){
     s0+=204.0;
     s1+=3733.0;
    } else {
     s0+=347.0;
    }
   }
  }
 } else {
  if(i49<-2.7764090191340074e-05){
   if(i2<-0.00011861324310302734){
    if(i22<0.23691445589065552){
     s0+=21.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   } else {
    if(i29<1.1665340662002563){
     s0+=33.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=11933.0;
    }
   }
  } else {
   if(i55<-3.524432486301521e-06){
    if(i10<1.0300110578536987){
     s0+=130.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i16<-0.0015127062797546387){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=248.0;
    }
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i39<0.19654995203018188){
  if(i18<0.0017377252224832773){
   if(i40<0.000485155382193625){
    if(i26<0.995093584060669){
     s0+=1935.0;
     s1+=459.0;
    } else {
     s0+=22543.0;
     s1+=288.0;
    }
   } else {
    if(i26<1.0182666778564453){
     s0+=66567.0;
     s1+=232.0;
    } else {
     s0+=527.0;
     s1+=56.0;
    }
   }
  } else {
   if(i17<0.9955152273178101){
    if(i64<0.0048837242648005486){
     s0+=14892.0;
     s1+=455.0;
    } else {
     s0+=1657.0;
     s1+=570.0;
    }
   } else {
    if(i4<-0.00012493133544921875){
     s0+=2165.0;
     s1+=47.0;
    } else {
     s0+=3972.0;
     s1+=4680.0;
    }
   }
  }
 } else {
  if(i52<0.03874167427420616){
   if(i42<0.017179327085614204){
    if(i14<1.0436910390853882){
     s0+=120.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i22<0.21723991632461548){
     s0+=23.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=45.0;
    }
   }
  } else {
   if(i34<0.0019096338655799627){
    s0+=43.0;
   } else {
    if(i36<1.6811659336090088){
     s0+=63.0;
     s1+=1213.0;
    } else {
     s0+=33.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007056489121168852){
  if(i18<0.0005217394791543484){
   if(i21<0.0002276897430419922){
    s0+=63.0;
   } else {
    s1+=74.0;
   }
  } else {
   if(i22<0.00024014711380004883){
    if(i3<1.0063905715942383){
     s0+=40.0;
     s1+=3.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i53<-6.022286106599495e-05){
     s0+=57.0;
    } else {
     s0+=206.0;
     s1+=16069.0;
    }
   }
  }
 } else {
  s0+=1705.0;
 }
}
if(i1<-9.084412158699706e-05){
 if(i10<0.908370852470398){
  if(i59<0.003048410639166832){
   if(i13<0.0004461487988010049){
    if(i38<0.056608736515045166){
     s0+=62.0;
     s1+=13.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i51<-0.0008931253105401993){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=62.0;
    }
   }
  } else {
   if(i24<1.1361256837844849){
    if(i51<0.0003721442772075534){
     s0+=584.0;
     s1+=21.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i20<0.061460696160793304){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=22.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i47<0.9982416033744812){
   s0+=197.0;
  } else {
   if(i24<1.0291502475738525){
    if(i6<1.0063543319702148){
     s0+=103.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i55<-6.419467354135122e-06){
     s0+=105.0;
     s1+=1.0;
    } else {
     s0+=107.0;
     s1+=15529.0;
    }
   }
  }
 }
} else {
 if(i0<6.276369094848633e-05){
  if(i18<0.0017318971222266555){
   if(i36<1.0776758193969727){
    if(i67<-0.0005668103694915771){
     s0+=3291.0;
     s1+=450.0;
    } else {
     s0+=19923.0;
     s1+=230.0;
    }
   } else {
    if(i49<-1.9653682102216408e-05){
     s0+=204.0;
     s1+=50.0;
    } else {
     s0+=68349.0;
     s1+=224.0;
    }
   }
  } else {
   if(i12<0.9980586767196655){
    if(i24<1.1930971145629883){
     s0+=14031.0;
     s1+=308.0;
    } else {
     s0+=8.0;
     s1+=60.0;
    }
   } else {
    if(i2<-0.00043335556983947754){
     s0+=4157.0;
     s1+=376.0;
    } else {
     s0+=3799.0;
     s1+=3943.0;
    }
   }
  }
 } else {
  if(i31<0.0012276426423341036){
   if(i31<0.0002476790396030992){
    s0+=81.0;
   } else {
    if(i24<1.1053738594055176){
     s0+=1.0;
     s1+=1615.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i40<0.0018991557881236076){
    if(i7<0.007277738302946091){
     s0+=1750.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i23<0.010820754803717136){
     s0+=23.0;
     s1+=866.0;
    } else {
     s0+=59.0;
     s1+=99.0;
    }
   }
  }
 }
}
if(i4<0.0005874037742614746){
 if(i1<-8.175124821718782e-05){
  if(i56<1.0269927978515625){
   if(i20<0.05577882006764412){
    if(i35<1.1999151706695557){
     s0+=11.0;
     s1+=15.0;
    } else {
     s0+=649.0;
     s1+=9.0;
    }
   } else {
    if(i14<0.8601906299591064){
     s0+=24.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=78.0;
    }
   }
  } else {
   if(i31<0.002081248676404357){
    if(i35<1.0881752967834473){
     s1+=54.0;
    } else {
     s0+=74.0;
    }
   } else {
    if(i19<1.0002210140228271){
     s0+=37.0;
     s1+=416.0;
    } else {
     s1+=358.0;
    }
   }
  }
 } else {
  if(i18<0.0016922694630920887){
   if(i34<0.0003370007616467774){
    if(i16<-0.00036603212356567383){
     s0+=2944.0;
     s1+=517.0;
    } else {
     s0+=15846.0;
     s1+=87.0;
    }
   } else {
    if(i27<1.1354830265045166){
     s0+=67710.0;
     s1+=176.0;
    } else {
     s0+=2223.0;
     s1+=119.0;
    }
   }
  } else {
   if(i16<-0.001429736614227295){
    if(i38<0.24319857358932495){
     s0+=14940.0;
     s1+=400.0;
    } else {
     s0+=6.0;
     s1+=50.0;
    }
   } else {
    if(i4<-0.00015220046043395996){
     s0+=3225.0;
     s1+=57.0;
    } else {
     s0+=2291.0;
     s1+=2729.0;
    }
   }
  }
 }
} else {
 if(i20<0.00938820093870163){
  if(i16<0.0012642741203308105){
   if(i25<1.116804838180542){
    if(i23<0.00025287622702308){
     s0+=1354.0;
    } else {
     s1+=345.0;
    }
   } else {
    if(i8<1.0207414627075195){
     s0+=2839.0;
     s1+=48.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i30<0.0007768869400024414){
    if(i6<1.0025358200073242){
     s0+=117.0;
     s1+=9.0;
    } else {
     s0+=77.0;
     s1+=2001.0;
    }
   } else {
    if(i27<1.138265609741211){
     s0+=674.0;
     s1+=4.0;
    } else {
     s1+=140.0;
    }
   }
  }
 } else {
  if(i28<1.0182826519012451){
   if(i38<0.06464239954948425){
    if(i9<1.0050280094146729){
     s0+=727.0;
     s1+=327.0;
    } else {
     s0+=31.0;
     s1+=190.0;
    }
   } else {
    if(i49<-3.188712435076013e-05){
     s0+=141.0;
     s1+=3151.0;
    } else {
     s0+=349.0;
     s1+=668.0;
    }
   }
  } else {
   if(i16<-0.0015415549278259277){
    if(i24<1.1273012161254883){
     s0+=175.0;
     s1+=36.0;
    } else {
     s0+=74.0;
     s1+=308.0;
    }
   } else {
    if(i47<0.9980189204216003){
     s0+=25.0;
    } else {
     s0+=105.0;
     s1+=11860.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i22<0.2003687620162964){
  if(i32<0.0007220549741759896){
   if(i49<-1.777637589839287e-05){
    if(i13<0.00024327778373844922){
     s0+=33.0;
     s1+=95.0;
    } else {
     s0+=233.0;
    }
   } else {
    if(i59<0.00016782316379249096){
     s0+=67267.0;
     s1+=165.0;
    } else {
     s0+=13509.0;
     s1+=329.0;
    }
   }
  } else {
   if(i31<0.0010134043404832482){
    if(i23<0.00023004824470262975){
     s0+=2486.0;
     s1+=85.0;
    } else {
     s0+=1048.0;
     s1+=3117.0;
    }
   } else {
    if(i74<-0.06864437460899353){
     s0+=717.0;
     s1+=603.0;
    } else {
     s0+=28856.0;
     s1+=1924.0;
    }
   }
  }
 } else {
  if(i20<0.0306578166782856){
   if(i47<1.000745415687561){
    if(i5<4.607439041137695e-05){
     s0+=223.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i34<0.0019491849234327674){
     s0+=40.0;
    } else {
     s0+=51.0;
     s1+=148.0;
    }
   }
  } else {
   if(i49<-7.0500950641871896e-06){
    if(i43<0.001713093719445169){
     s0+=1.0;
    } else {
     s0+=20.0;
     s1+=1445.0;
    }
   } else {
    s0+=23.0;
   }
  }
 }
} else {
 if(i34<0.0023637169506400824){
  if(i35<1.095003366470337){
   if(i47<0.9997459650039673){
    s0+=52.0;
   } else {
    if(i39<0.13201475143432617){
     s0+=25.0;
     s1+=2045.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i34<0.001157477032393217){
    s1+=322.0;
   } else {
    if(i29<1.185887336730957){
     s0+=1961.0;
    } else {
     s1+=49.0;
    }
   }
  }
 } else {
  if(i21<-0.00032079219818115234){
   if(i25<1.629280686378479){
    if(i18<0.005533963441848755){
     s0+=37.0;
     s1+=21.0;
    } else {
     s0+=13.0;
     s1+=262.0;
    }
   } else {
    if(i3<1.006824016571045){
     s0+=45.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i7<0.0048212409019470215){
    if(i1<-0.0001034603628795594){
     s1+=372.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   } else {
    if(i54<6.743495646333031e-07){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=13180.0;
    }
   }
  }
 }
}
if(i1<-9.171762212645262e-05){
 if(i15<0.04129183292388916){
  if(i16<-0.0035708248615264893){
   if(i50<1.0047547817230225){
    if(i33<1.1123039722442627){
     s0+=654.0;
     s1+=23.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i73<-0.0059223473072052){
    if(i0<-3.039836883544922e-05){
     s0+=12.0;
    } else {
     s0+=34.0;
     s1+=119.0;
    }
   } else {
    if(i66<-5.4784122767159715e-06){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=62.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i55<-6.574159669980872e-06){
   s0+=295.0;
  } else {
   if(i67<-0.017305642366409302){
    if(i12<1.0101991891860962){
     s0+=46.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   } else {
    if(i16<-0.003840923309326172){
     s0+=31.0;
     s1+=238.0;
    } else {
     s0+=23.0;
     s1+=15272.0;
    }
   }
  }
 }
} else {
 if(i46<-1.1500600521685556e-05){
  if(i5<7.009506225585938e-05){
   if(i30<0.0006209313869476318){
    s1+=792.0;
   } else {
    if(i40<0.0017498936504125595){
     s0+=43.0;
    } else {
     s1+=111.0;
    }
   }
  } else {
   if(i31<0.002822267822921276){
    s0+=80.0;
   } else {
    s1+=101.0;
   }
  }
 } else {
  if(i8<1.0144805908203125){
   if(i25<1.1162974834442139){
    if(i36<1.05497145652771){
     s0+=20781.0;
     s1+=164.0;
    } else {
     s0+=9254.0;
     s1+=3802.0;
    }
   } else {
    if(i6<1.0025358200073242){
     s0+=80183.0;
     s1+=750.0;
    } else {
     s0+=4366.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i30<0.000723719596862793){
    if(i32<0.000579740502871573){
     s0+=241.0;
     s1+=2.0;
    } else {
     s0+=145.0;
     s1+=1421.0;
    }
   } else {
    if(i27<1.1691503524780273){
     s0+=539.0;
     s1+=3.0;
    } else {
     s1+=51.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i0<6.347894668579102e-05){
  if(i22<0.20414790511131287){
   if(i65<0.0019676797091960907){
    if(i36<1.0905030965805054){
     s0+=28608.0;
     s1+=2913.0;
    } else {
     s0+=78940.0;
     s1+=1212.0;
    }
   } else {
    if(i24<1.0915963649749756){
     s0+=4678.0;
     s1+=475.0;
    } else {
     s0+=916.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i57<0.0023332838900387287){
    if(i43<0.002870995318517089){
     s0+=131.0;
     s1+=16.0;
    } else {
     s0+=8.0;
     s1+=77.0;
    }
   } else {
    if(i1<-1.8912502127932385e-05){
     s0+=12.0;
     s1+=777.0;
    } else {
     s0+=66.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i62<-0.0003539919853210449){
   if(i19<0.948935329914093){
    if(i50<1.0040621757507324){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=58.0;
    }
   } else {
    if(i53<-3.78160439140629e-05){
     s0+=18.0;
    } else {
     s0+=96.0;
     s1+=2116.0;
    }
   }
  } else {
   if(i52<0.04364871233701706){
    if(i40<0.000964711420238018){
     s0+=88.0;
     s1+=550.0;
    } else {
     s0+=1381.0;
     s1+=41.0;
    }
   } else {
    if(i52<0.0554829016327858){
     s0+=33.0;
     s1+=81.0;
    } else {
     s0+=2.0;
     s1+=451.0;
    }
   }
  }
 }
} else {
 if(i1<-7.013511640252545e-05){
  if(i53<-3.2448474485136103e-06){
   if(i66<1.675429302849807e-05){
    if(i35<1.141157627105713){
     s0+=122.0;
     s1+=1263.0;
    } else {
     s0+=17.0;
     s1+=12344.0;
    }
   } else {
    s0+=21.0;
   }
  } else {
   if(i30<-0.0001253187656402588){
    s0+=25.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i49<-1.0847727025975473e-05){
   if(i47<1.001607894897461){
    if(i53<-1.2048639291606378e-05){
     s0+=341.0;
     s1+=16.0;
    } else {
     s0+=99.0;
     s1+=1187.0;
    }
   } else {
    if(i18<0.004679075907915831){
     s0+=277.0;
     s1+=1.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i7<0.0061266073025763035){
    s0+=272.0;
   } else {
    s1+=11.0;
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i38<0.2208874225616455){
  if(i5<1.4007091522216797e-05){
   if(i17<0.9931652545928955){
    if(i47<1.0025792121887207){
     s0+=29054.0;
     s1+=239.0;
    } else {
     s0+=57.0;
     s1+=44.0;
    }
   } else {
    if(i43<0.0018566770013421774){
     s0+=73533.0;
     s1+=2340.0;
    } else {
     s0+=3035.0;
     s1+=632.0;
    }
   }
  } else {
   if(i32<0.0007363088079728186){
    if(i34<0.002377217635512352){
     s0+=3215.0;
    } else {
     s0+=101.0;
     s1+=121.0;
    }
   } else {
    if(i63<0.014712892472743988){
     s0+=2601.0;
     s1+=445.0;
    } else {
     s0+=2852.0;
     s1+=2757.0;
    }
   }
  }
 } else {
  if(i20<0.030817346647381783){
   if(i18<0.0030614295974373817){
    if(i26<1.0096126794815063){
     s0+=136.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=23.0;
    }
   } else {
    if(i66<4.258743501850404e-06){
     s0+=2.0;
     s1+=54.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i36<1.6811659336090088){
    if(i64<-0.02214261144399643){
     s0+=3.0;
    } else {
     s0+=27.0;
     s1+=1257.0;
    }
   } else {
    s0+=12.0;
   }
  }
 }
} else {
 if(i29<1.176405668258667){
  if(i23<0.0009706164710223675){
   if(i36<1.0494179725646973){
    s0+=54.0;
   } else {
    s1+=2337.0;
   }
  } else {
   s0+=1898.0;
  }
 } else {
  if(i15<0.03295239806175232){
   if(i63<0.1785738468170166){
    if(i49<-5.392951061367057e-05){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   } else {
    if(i3<1.0055400133132935){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=29.0;
    }
   }
  } else {
   if(i18<0.012416908517479897){
    if(i15<0.09436097741127014){
     s0+=36.0;
     s1+=430.0;
    } else {
     s0+=13.0;
     s1+=13350.0;
    }
   } else {
    if(i11<0.8692048788070679){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i15<0.19177600741386414){
 if(i5<1.8298625946044922e-05){
  if(i25<1.1162974834442139){
   if(i29<1.0577976703643799){
    if(i36<1.0547914505004883){
     s0+=16588.0;
    } else {
     s0+=175.0;
     s1+=3.0;
    }
   } else {
    if(i6<0.9994415044784546){
     s0+=7068.0;
     s1+=267.0;
    } else {
     s0+=4505.0;
     s1+=2656.0;
    }
   }
  } else {
   if(i10<1.0192145109176636){
    if(i24<1.1283433437347412){
     s0+=77203.0;
     s1+=548.0;
    } else {
     s0+=1573.0;
     s1+=272.0;
    }
   } else {
    if(i29<1.400726318359375){
     s0+=241.0;
     s1+=138.0;
    } else {
     s0+=187.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i46<-8.897561201592907e-06){
   if(i32<0.0013628611341118813){
    if(i2<0.0012445449829101562){
     s0+=28.0;
     s1+=5.0;
    } else {
     s0+=66.0;
     s1+=2560.0;
    }
   } else {
    if(i35<1.1562808752059937){
     s0+=175.0;
    } else {
     s1+=261.0;
    }
   }
  } else {
   if(i20<0.009381631389260292){
    if(i30<0.00040453672409057617){
     s0+=1002.0;
     s1+=624.0;
    } else {
     s0+=4777.0;
     s1+=137.0;
    }
   } else {
    if(i21<-0.0001900792121887207){
     s0+=1637.0;
     s1+=1101.0;
    } else {
     s0+=360.0;
     s1+=2945.0;
    }
   }
  }
 }
} else {
 if(i8<1.0107150077819824){
  if(i49<-1.2911363228340633e-05){
   if(i7<0.006241826806217432){
    if(i32<0.00109264743514359){
     s0+=22.0;
     s1+=40.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i21<-0.0014529526233673096){
     s0+=2.0;
    } else {
     s0+=21.0;
     s1+=1731.0;
    }
   }
  } else {
   if(i5<3.0994415283203125e-05){
    if(i3<0.9857605695724487){
     s1+=6.0;
    } else {
     s0+=625.0;
     s1+=26.0;
    }
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i1<-3.428745549172163e-05){
   if(i13<0.0007849900284782052){
    if(i49<-1.0355033737141639e-05){
     s0+=2.0;
     s1+=10984.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=16.0;
   }
  } else {
   if(i35<1.1764509677886963){
    if(i7<0.00799207016825676){
     s0+=52.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i5<1.2755393981933594e-05){
     s0+=19.0;
    } else {
     s0+=12.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i24<1.127976417541504){
 if(i0<6.407499313354492e-05){
  if(i9<1.0060384273529053){
   if(i42<0.012259412556886673){
    if(i11<0.9917712807655334){
     s0+=844.0;
     s1+=163.0;
    } else {
     s0+=68271.0;
     s1+=466.0;
    }
   } else {
    if(i3<0.997625470161438){
     s0+=27875.0;
     s1+=338.0;
    } else {
     s0+=12561.0;
     s1+=3347.0;
    }
   }
  } else {
   if(i60<-0.0009657215559855103){
    if(i53<-3.700538400153164e-06){
     s0+=97.0;
     s1+=521.0;
    } else {
     s0+=132.0;
     s1+=1.0;
    }
   } else {
    if(i27<1.0773630142211914){
     s0+=474.0;
     s1+=509.0;
    } else {
     s0+=1625.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i30<0.0011618435382843018){
   if(i7<0.0022011175751686096){
    if(i23<0.0009882563026621938){
     s0+=50.0;
     s1+=191.0;
    } else {
     s0+=536.0;
     s1+=12.0;
    }
   } else {
    if(i50<1.0008375644683838){
     s0+=124.0;
     s1+=2.0;
    } else {
     s0+=262.0;
     s1+=4725.0;
    }
   }
  } else {
   if(i34<0.004793520085513592){
    s0+=908.0;
   } else {
    s1+=228.0;
   }
  }
 }
} else {
 if(i34<0.0021585384383797646){
  if(i67<0.0017677545547485352){
   if(i23<0.001881590811535716){
    s0+=1380.0;
   } else {
    if(i51<-0.00030879658879712224){
     s1+=2.0;
    } else {
     s0+=93.0;
    }
   }
  } else {
   if(i24<1.1377174854278564){
    if(i47<0.9996649026870728){
     s0+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=76.0;
   }
  }
 } else {
  if(i0<-1.0907649993896484e-05){
   if(i32<0.0018874038942158222){
    if(i42<0.059427469968795776){
     s0+=467.0;
     s1+=6.0;
    } else {
     s0+=262.0;
     s1+=85.0;
    }
   } else {
    if(i52<0.15506309270858765){
     s0+=131.0;
     s1+=55.0;
    } else {
     s0+=14.0;
     s1+=460.0;
    }
   }
  } else {
   if(i15<0.09512361884117126){
    if(i29<1.6811659336090088){
     s0+=77.0;
     s1+=386.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i1<-8.106556924758479e-05){
     s0+=21.0;
     s1+=11995.0;
    } else {
     s0+=102.0;
     s1+=872.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i0<6.61015510559082e-05){
  if(i20<0.061604324728250504){
   if(i32<0.0007055175956338644){
    if(i27<1.1354830265045166){
     s0+=77485.0;
     s1+=366.0;
    } else {
     s0+=2501.0;
     s1+=137.0;
    }
   } else {
    if(i25<1.1164028644561768){
     s0+=3984.0;
     s1+=3158.0;
    } else {
     s0+=29365.0;
     s1+=1843.0;
    }
   }
  } else {
   if(i66<1.8781283870339394e-05){
    if(i42<0.14649644494056702){
     s0+=90.0;
     s1+=91.0;
    } else {
     s0+=21.0;
     s1+=945.0;
    }
   } else {
    if(i61<0.02533910796046257){
     s0+=356.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i13<0.0007050354033708572){
   if(i0<0.0005336403846740723){
    if(i38<0.0003789663314819336){
     s0+=37.0;
     s1+=30.0;
    } else {
     s0+=172.0;
     s1+=3094.0;
    }
   } else {
    s0+=59.0;
   }
  } else {
   s0+=1241.0;
  }
 }
} else {
 if(i1<-6.681359081994742e-05){
  if(i47<0.9983727931976318){
   if(i39<0.36692750453948975){
    s0+=102.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i13<0.0007059713825583458){
    if(i1<-8.109880582196638e-05){
     s0+=28.0;
     s1+=12956.0;
    } else {
     s0+=48.0;
     s1+=479.0;
    }
   } else {
    s0+=57.0;
   }
  }
 } else {
  if(i46<-8.197060196835082e-06){
   if(i35<1.096491813659668){
    s1+=354.0;
   } else {
    if(i51<-0.00026925321435555816){
     s0+=1.0;
     s1+=91.0;
    } else {
     s0+=61.0;
     s1+=23.0;
    }
   }
  } else {
   if(i27<1.0869600772857666){
    if(i23<0.0009684002725407481){
     s1+=355.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i27<1.175206184387207){
     s0+=847.0;
     s1+=131.0;
    } else {
     s0+=75.0;
     s1+=243.0;
    }
   }
  }
 }
}
if(i5<2.855062484741211e-05){
 if(i14<1.018324375152588){
  if(i5<1.5079975128173828e-05){
   if(i23<0.0008788029663264751){
    if(i18<0.0017283011693507433){
     s0+=28562.0;
     s1+=761.0;
    } else {
     s0+=1120.0;
     s1+=1739.0;
    }
   } else {
    if(i38<0.24781933426856995){
     s0+=76625.0;
     s1+=783.0;
    } else {
     s0+=42.0;
     s1+=193.0;
    }
   }
  } else {
   if(i60<-0.0006344026187434793){
    if(i7<0.004502361640334129){
     s0+=511.0;
     s1+=67.0;
    } else {
     s0+=292.0;
     s1+=790.0;
    }
   } else {
    if(i8<1.008805513381958){
     s0+=4007.0;
     s1+=605.0;
    } else {
     s0+=273.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i15<0.09305524826049805){
   if(i36<1.0905578136444092){
    s1+=30.0;
   } else {
    if(i3<1.0034409761428833){
     s0+=220.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i36<1.6811659336090088){
    if(i5<6.616115570068359e-06){
     s0+=266.0;
     s1+=182.0;
    } else {
     s0+=105.0;
     s1+=1058.0;
    }
   } else {
    s0+=58.0;
   }
  }
 }
} else {
 if(i7<0.003987208474427462){
  if(i19<1.0174893140792847){
   if(i46<-1.1254682249273174e-05){
    if(i33<1.056657075881958){
     s0+=1.0;
     s1+=388.0;
    } else {
     s0+=198.0;
     s1+=71.0;
    }
   } else {
    if(i35<1.0773630142211914){
     s0+=668.0;
     s1+=80.0;
    } else {
     s0+=2435.0;
     s1+=11.0;
    }
   }
  } else {
   if(i17<1.014378309249878){
    if(i66<-5.068511200079229e-06){
     s0+=2.0;
     s1+=62.0;
    } else {
     s0+=113.0;
     s1+=10.0;
    }
   } else {
    s1+=329.0;
   }
  }
 } else {
  if(i19<0.9805957078933716){
   if(i52<0.27794569730758667){
    if(i17<0.996100664138794){
     s0+=525.0;
     s1+=181.0;
    } else {
     s0+=189.0;
     s1+=423.0;
    }
   } else {
    if(i59<0.0009122397750616074){
     s0+=7.0;
    } else {
     s0+=39.0;
     s1+=609.0;
    }
   }
  } else {
   if(i13<0.0007047192193567753){
    if(i16<-0.0013545751571655273){
     s0+=265.0;
     s1+=572.0;
    } else {
     s0+=77.0;
     s1+=14786.0;
    }
   } else {
    s0+=260.0;
   }
  }
 }
}
if(i8<1.0136051177978516){
 if(i1<-8.67880298756063e-05){
  if(i11<0.938477635383606){
   if(i60<-0.0011331925634294748){
    if(i62<-0.01012316346168518){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=35.0;
     s1+=79.0;
    }
   } else {
    if(i71<0.07336583733558655){
     s0+=756.0;
     s1+=95.0;
    } else {
     s0+=10.0;
     s1+=26.0;
    }
   }
  } else {
   if(i47<0.9981522560119629){
    s0+=223.0;
   } else {
    if(i62<0.0045806169509887695){
     s0+=248.0;
     s1+=3394.0;
    } else {
     s0+=26.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i17<1.0062432289123535){
   if(i18<0.0017414854373782873){
    if(i11<0.9957937002182007){
     s0+=16791.0;
     s1+=549.0;
    } else {
     s0+=73051.0;
     s1+=397.0;
    }
   } else {
    if(i23<0.0009276657365262508){
     s0+=2162.0;
     s1+=2468.0;
    } else {
     s0+=19062.0;
     s1+=1540.0;
    }
   }
  } else {
   if(i22<0.06838348507881165){
    if(i35<1.0905089378356934){
     s0+=186.0;
     s1+=675.0;
    } else {
     s0+=600.0;
     s1+=115.0;
    }
   } else {
    if(i65<0.0011676289141178131){
     s0+=1901.0;
     s1+=211.0;
    } else {
     s0+=17.0;
     s1+=110.0;
    }
   }
  }
 }
} else {
 if(i21<0.00029456615447998047){
  if(i15<0.1704210340976715){
   if(i36<1.0905578136444092){
    s1+=829.0;
   } else {
    if(i60<-0.000982498750090599){
     s0+=385.0;
     s1+=380.0;
    } else {
     s0+=712.0;
     s1+=141.0;
    }
   }
  } else {
   if(i29<1.176405668258667){
    if(i25<1.105151891708374){
     s1+=12.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i26<1.057281494140625){
     s0+=97.0;
     s1+=1215.0;
    } else {
     s0+=4.0;
     s1+=1366.0;
    }
   }
  }
 } else {
  if(i31<0.002394279232248664){
   if(i16<0.0019382238388061523){
    s0+=21.0;
   } else {
    if(i49<-4.54861183243338e-05){
     s0+=11.0;
    } else {
     s1+=958.0;
    }
   }
  } else {
   s1+=9903.0;
  }
 }
}
if(i18<0.0019662692211568356){
 if(i37<-2.4859600671334192e-05){
  if(i13<0.0008173791575245559){
   if(i4<0.0010631680488586426){
    s0+=29.0;
   } else {
    if(i69<-3.7368645280366763e-06){
     s0+=17.0;
     s1+=7.0;
    } else {
     s1+=1251.0;
    }
   }
  } else {
   s0+=44.0;
  }
 } else {
  if(i46<-1.0180430763284676e-05){
   if(i13<0.0008393077878281474){
    if(i0<0.0005451440811157227){
     s1+=158.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=146.0;
   }
  } else {
   if(i30<-1.8775463104248047e-05){
    if(i29<1.0742852687835693){
     s0+=12821.0;
     s1+=204.0;
    } else {
     s0+=40502.0;
     s1+=6.0;
    }
   } else {
    if(i59<0.00018488673958927393){
     s0+=38869.0;
     s1+=633.0;
    } else {
     s0+=3754.0;
     s1+=712.0;
    }
   }
  }
 }
} else {
 if(i8<1.009117841720581){
  if(i3<0.9984986782073975){
   if(i33<1.1230299472808838){
    if(i34<0.000996727030724287){
     s0+=141.0;
     s1+=182.0;
    } else {
     s0+=15274.0;
     s1+=392.0;
    }
   } else {
    if(i1<-8.022320980671793e-05){
     s1+=200.0;
    } else {
     s0+=104.0;
     s1+=72.0;
    }
   }
  } else {
   if(i47<0.9995858073234558){
    if(i20<0.01958758756518364){
     s0+=1520.0;
     s1+=8.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i22<0.14896348118782043){
     s0+=2086.0;
     s1+=3644.0;
    } else {
     s0+=129.0;
     s1+=2097.0;
    }
   }
  }
 } else {
  if(i15<0.16204440593719482){
   if(i45<0.0008538666879758239){
    if(i37<8.278577297460288e-05){
     s0+=82.0;
     s1+=1951.0;
    } else {
     s0+=75.0;
    }
   } else {
    if(i9<1.0144610404968262){
     s0+=972.0;
     s1+=417.0;
    } else {
     s1+=691.0;
    }
   }
  } else {
   if(i66<1.8852770153898746e-05){
    if(i2<-0.0004749298095703125){
     s0+=61.0;
     s1+=50.0;
    } else {
     s0+=56.0;
     s1+=11459.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i9<1.010812520980835){
 if(i5<1.8537044525146484e-05){
  if(i7<0.003547548083588481){
   if(i18<0.0010131527669727802){
    if(i76<0.003575742244720459){
     s0+=66482.0;
     s1+=182.0;
    } else {
     s0+=299.0;
     s1+=19.0;
    }
   } else {
    if(i40<0.0005611443193629384){
     s0+=2316.0;
     s1+=713.0;
    } else {
     s0+=16085.0;
     s1+=101.0;
    }
   }
  } else {
   if(i4<-8.875131607055664e-05){
    if(i7<0.016202744096517563){
     s0+=19652.0;
     s1+=263.0;
    } else {
     s0+=79.0;
     s1+=154.0;
    }
   } else {
    if(i31<0.001212429953739047){
     s0+=380.0;
     s1+=1974.0;
    } else {
     s0+=3010.0;
     s1+=919.0;
    }
   }
  }
 } else {
  if(i15<0.15981429815292358){
   if(i13<0.00035300786839798093){
    if(i23<0.0009356377413496375){
     s1+=1309.0;
    } else {
     s0+=2038.0;
     s1+=1184.0;
    }
   } else {
    if(i76<-0.0030029118061065674){
     s0+=512.0;
     s1+=484.0;
    } else {
     s0+=4073.0;
     s1+=56.0;
    }
   }
  } else {
   if(i52<0.039569009095430374){
    if(i22<0.21536841988563538){
     s0+=253.0;
     s1+=22.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   } else {
    if(i22<0.15999028086662292){
     s0+=30.0;
     s1+=47.0;
    } else {
     s0+=64.0;
     s1+=2758.0;
    }
   }
  }
 }
} else {
 if(i31<0.0026127854362130165){
  if(i29<1.1174830198287964){
   if(i53<-1.4911503967596218e-05){
    s0+=23.0;
   } else {
    s1+=1922.0;
   }
  } else {
   if(i34<0.002179273869842291){
    s0+=1075.0;
   } else {
    if(i34<0.0037949332036077976){
     s1+=36.0;
    } else {
     s0+=25.0;
    }
   }
  }
 } else {
  if(i53<-3.6791070670005865e-06){
   if(i7<0.002508999314159155){
    if(i49<-4.227083263685927e-05){
     s1+=96.0;
    } else {
     s0+=71.0;
     s1+=6.0;
    }
   } else {
    if(i40<0.0016069590346887708){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=12005.0;
    }
   }
  } else {
   if(i42<0.0429723747074604){
    s0+=78.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i11<1.0154335498809814){
 if(i20<0.061510246247053146){
  if(i0<7.349252700805664e-05){
   if(i10<1.0140953063964844){
    if(i4<0.0002930164337158203){
     s0+=101979.0;
     s1+=2628.0;
    } else {
     s0+=10538.0;
     s1+=2569.0;
    }
   } else {
    if(i27<1.0816454887390137){
     s0+=92.0;
     s1+=335.0;
    } else {
     s0+=1390.0;
     s1+=378.0;
    }
   }
  } else {
   if(i55<-6.999329343670979e-06){
    s0+=558.0;
   } else {
    if(i59<5.5790886108297855e-05){
     s0+=452.0;
     s1+=303.0;
    } else {
     s0+=211.0;
     s1+=1866.0;
    }
   }
  }
 } else {
  if(i7<0.012388776987791061){
   if(i37<8.080930274445564e-05){
    s1+=14.0;
   } else {
    s0+=330.0;
   }
  } else {
   if(i26<0.8649345636367798){
    if(i45<0.007617856375873089){
     s0+=70.0;
     s1+=8.0;
    } else {
     s0+=21.0;
     s1+=153.0;
    }
   } else {
    if(i32<0.0036418954841792583){
     s0+=25.0;
     s1+=2098.0;
    } else {
     s0+=18.0;
     s1+=71.0;
    }
   }
  }
 }
} else {
 if(i1<-6.360732368193567e-05){
  if(i53<-3.154156274831621e-06){
   if(i25<1.1743842363357544){
    if(i75<0.05371356010437012){
     s0+=65.0;
     s1+=1107.0;
    } else {
     s0+=50.0;
     s1+=32.0;
    }
   } else {
    if(i15<0.09711065888404846){
     s0+=16.0;
     s1+=143.0;
    } else {
     s0+=10.0;
     s1+=11851.0;
    }
   }
  } else {
   s0+=26.0;
  }
 } else {
  if(i35<1.0953161716461182){
   s1+=384.0;
  } else {
   if(i38<0.1905421018600464){
    if(i7<0.005939618684351444){
     s0+=638.0;
     s1+=1.0;
    } else {
     s1+=129.0;
    }
   } else {
    if(i3<1.0016634464263916){
     s0+=79.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=199.0;
    }
   }
  }
 }
}
if(i38<0.20030072331428528){
 if(i19<1.0122718811035156){
  if(i17<1.008971095085144){
   if(i7<0.003630575258284807){
    if(i36<1.0903575420379639){
     s0+=25962.0;
     s1+=810.0;
    } else {
     s0+=62804.0;
     s1+=209.0;
    }
   } else {
    if(i12<0.9982165098190308){
     s0+=19025.0;
     s1+=411.0;
    } else {
     s0+=5392.0;
     s1+=4886.0;
    }
   }
  } else {
   if(i59<0.00012766767758876085){
    if(i40<0.0006189357955008745){
     s0+=1.0;
     s1+=257.0;
    } else {
     s0+=632.0;
     s1+=11.0;
    }
   } else {
    if(i66<-2.008831870625727e-06){
     s0+=5.0;
     s1+=766.0;
    } else {
     s0+=81.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i7<0.003986856434494257){
   if(i37<-2.5931345589924604e-05){
    if(i45<0.0007119289366528392){
     s1+=331.0;
    } else {
     s0+=97.0;
     s1+=82.0;
    }
   } else {
    if(i27<1.0658252239227295){
     s0+=13.0;
     s1+=62.0;
    } else {
     s0+=1536.0;
     s1+=50.0;
    }
   }
  } else {
   if(i35<1.6238889694213867){
    if(i32<0.0018711067968979478){
     s0+=30.0;
     s1+=3570.0;
    } else {
     s0+=185.0;
     s1+=238.0;
    }
   } else {
    if(i51<-0.0009455304825678468){
     s1+=5.0;
    } else {
     s0+=51.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025624986737966537){
  if(i47<1.000745415687561){
   s0+=428.0;
  } else {
   if(i25<1.194390058517456){
    if(i18<0.002479227725416422){
     s0+=131.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i21<-4.8160552978515625e-05){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i0<-4.64320182800293e-05){
   if(i42<0.10658073425292969){
    if(i8<0.981657862663269){
     s1+=25.0;
    } else {
     s0+=184.0;
     s1+=14.0;
    }
   } else {
    if(i2<-0.002641826868057251){
     s0+=2.0;
    } else {
     s0+=10.0;
     s1+=159.0;
    }
   }
  } else {
   if(i31<0.002374539850279689){
    s0+=4.0;
   } else {
    if(i21<-0.0003520846366882324){
     s0+=35.0;
     s1+=343.0;
    } else {
     s0+=9.0;
     s1+=11846.0;
    }
   }
  }
 }
}
if(i1<-8.899930980987847e-05){
 if(i16<-0.0035708248615264893){
  if(i75<0.041787147521972656){
   if(i22<0.045233339071273804){
    if(i20<0.0569508820772171){
     s0+=706.0;
     s1+=12.0;
    } else {
     s0+=47.0;
     s1+=39.0;
    }
   } else {
    if(i59<0.004711853340268135){
     s0+=12.0;
     s1+=182.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  } else {
   if(i14<0.8993449211120605){
    if(i57<0.03171222656965256){
     s0+=32.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i38<0.14281758666038513){
     s0+=8.0;
     s1+=14.0;
    } else {
     s1+=92.0;
    }
   }
  }
 } else {
  if(i23<0.0022998088970780373){
   if(i45<0.0010078174527734518){
    if(i30<0.0007229447364807129){
     s0+=22.0;
     s1+=838.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i10<1.0267480611801147){
     s0+=254.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   }
  } else {
   if(i33<1.0235018730163574){
    if(i50<1.0035245418548584){
     s0+=102.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=85.0;
    }
   } else {
    if(i0<1.2218952178955078e-06){
     s0+=47.0;
     s1+=408.0;
    } else {
     s0+=35.0;
     s1+=14445.0;
    }
   }
  }
 }
} else {
 if(i4<0.0003286004066467285){
  if(i42<0.011270265094935894){
   if(i26<0.9932905435562134){
    if(i59<0.00025026113144122064){
     s0+=5394.0;
     s1+=32.0;
    } else {
     s0+=429.0;
     s1+=182.0;
    }
   } else {
    if(i61<0.0003259254735894501){
     s0+=27322.0;
     s1+=240.0;
    } else {
     s0+=29132.0;
     s1+=18.0;
    }
   }
  } else {
   if(i40<0.00044037774205207825){
    if(i18<0.001204929780215025){
     s0+=2050.0;
     s1+=61.0;
    } else {
     s0+=138.0;
     s1+=1042.0;
    }
   } else {
    if(i25<1.116391897201538){
     s0+=5052.0;
     s1+=733.0;
    } else {
     s0+=34695.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i51<-0.00021753544569946826){
   if(i20<0.01399225927889347){
    if(i61<0.0005081286653876305){
     s0+=323.0;
     s1+=641.0;
    } else {
     s0+=527.0;
     s1+=161.0;
    }
   } else {
    if(i1<-2.865321221179329e-05){
     s0+=198.0;
     s1+=1850.0;
    } else {
     s0+=258.0;
     s1+=123.0;
    }
   }
  } else {
   if(i2<0.0014244914054870605){
    if(i52<0.04346810281276703){
     s0+=7569.0;
     s1+=811.0;
    } else {
     s0+=1489.0;
     s1+=791.0;
    }
   } else {
    if(i13<0.0007119736401364207){
     s0+=30.0;
     s1+=882.0;
    } else {
     s0+=488.0;
    }
   }
  }
 }
}
if(i14<1.0170331001281738){
 if(i17<1.0090839862823486){
  if(i4<0.00039118528366088867){
   if(i18<0.0014858207432553172){
    if(i19<0.9956493377685547){
     s0+=15147.0;
     s1+=372.0;
    } else {
     s0+=67541.0;
     s1+=212.0;
    }
   } else {
    if(i25<1.1164028644561768){
     s0+=2106.0;
     s1+=1999.0;
    } else {
     s0+=20966.0;
     s1+=765.0;
    }
   }
  } else {
   if(i52<0.04345836490392685){
    if(i51<-0.00016945222159847617){
     s0+=1153.0;
     s1+=616.0;
    } else {
     s0+=5233.0;
     s1+=438.0;
    }
   } else {
    if(i22<0.09738418459892273){
     s0+=1478.0;
     s1+=808.0;
    } else {
     s0+=355.0;
     s1+=2393.0;
    }
   }
  }
 } else {
  if(i36<1.17277193069458){
   if(i25<1.1180615425109863){
    s1+=1020.0;
   } else {
    if(i42<0.06132989749312401){
     s0+=1060.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i45<0.0002699273463804275){
    if(i18<0.001864514546468854){
     s0+=35.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i6<1.0015696287155151){
     s0+=19.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=1602.0;
    }
   }
  }
 }
} else {
 if(i3<1.002294898033142){
  if(i39<0.2229108214378357){
   if(i29<1.0905578136444092){
    s1+=73.0;
   } else {
    if(i53<-2.525261606933782e-06){
     s0+=442.0;
     s1+=152.0;
    } else {
     s0+=393.0;
    }
   }
  } else {
   if(i22<0.3065810203552246){
    if(i49<-6.802398729632841e-06){
     s0+=6.0;
     s1+=46.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i53<-2.644444066390861e-06){
     s1+=143.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i13<0.0007077126065269113){
   if(i49<-1.4453802577918395e-05){
    if(i1<-7.456685125362128e-05){
     s0+=30.0;
     s1+=12426.0;
    } else {
     s0+=163.0;
     s1+=1054.0;
    }
   } else {
    if(i43<0.0038935374468564987){
     s0+=77.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   s0+=462.0;
  }
 }
}
if(i5<2.378225326538086e-05){
 if(i38<0.23402073979377747){
  if(i14<1.01369309425354){
   if(i25<1.1162974834442139){
    if(i20<0.006731318309903145){
     s0+=21543.0;
     s1+=526.0;
    } else {
     s0+=7393.0;
     s1+=2538.0;
    }
   } else {
    if(i20<0.08888089656829834){
     s0+=79555.0;
     s1+=1067.0;
    } else {
     s0+=5.0;
     s1+=103.0;
    }
   }
  } else {
   if(i29<1.0905578136444092){
    if(i7<0.0026446699630469084){
     s0+=10.0;
    } else {
     s1+=332.0;
    }
   } else {
    if(i20<0.0228080153465271){
     s0+=1264.0;
     s1+=131.0;
    } else {
     s0+=232.0;
     s1+=374.0;
    }
   }
  }
 } else {
  if(i7<0.0056310780346393585){
   if(i49<-1.787238215911202e-05){
    s1+=7.0;
   } else {
    if(i49<-1.3139160728314891e-05){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=126.0;
    }
   }
  } else {
   if(i27<1.109195590019226){
    if(i37<0.0003337761154398322){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i69<-1.5896603144938126e-06){
     s0+=2.0;
     s1+=6.0;
    } else {
     s1+=645.0;
    }
   }
  }
 }
} else {
 if(i34<0.002999057061970234){
  if(i45<0.0008353746379725635){
   if(i23<0.0002474786597304046){
    s0+=1149.0;
   } else {
    if(i23<0.0009861561702564359){
     s1+=2665.0;
    } else {
     s0+=208.0;
     s1+=3.0;
    }
   }
  } else {
   if(i40<0.0019538498017936945){
    if(i16<0.002069532871246338){
     s0+=3081.0;
     s1+=75.0;
    } else {
     s0+=9.0;
     s1+=58.0;
    }
   } else {
    if(i35<1.1284984350204468){
     s0+=164.0;
     s1+=2.0;
    } else {
     s0+=118.0;
     s1+=421.0;
    }
   }
  }
 } else {
  if(i22<0.07181891798973083){
   if(i3<1.0062525272369385){
    if(i65<0.00386418541893363){
     s0+=592.0;
     s1+=27.0;
    } else {
     s0+=444.0;
     s1+=251.0;
    }
   } else {
    if(i47<1.0008857250213623){
     s0+=10.0;
     s1+=40.0;
    } else {
     s1+=222.0;
    }
   }
  } else {
   if(i0<6.377696990966797e-06){
    if(i49<-3.5286881029605865e-05){
     s0+=26.0;
     s1+=233.0;
    } else {
     s0+=226.0;
     s1+=80.0;
    }
   } else {
    if(i65<0.013981493189930916){
     s0+=156.0;
     s1+=14713.0;
    } else {
     s0+=8.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i4<0.0005717873573303223){
 if(i18<0.0017301690531894565){
  if(i33<1.0178465843200684){
   if(i49<-1.1993867701676209e-05){
    if(i50<1.0002095699310303){
     s0+=31.0;
     s1+=67.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i59<8.148995402734727e-05){
     s0+=5147.0;
     s1+=21.0;
    } else {
     s0+=5366.0;
     s1+=373.0;
    }
   }
  } else {
   if(i27<1.1354830265045166){
    if(i40<0.0004674913943745196){
     s0+=17319.0;
     s1+=315.0;
    } else {
     s0+=59279.0;
     s1+=98.0;
    }
   } else {
    if(i27<1.1355493068695068){
     s1+=107.0;
    } else {
     s0+=2192.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i23<0.0009191688150167465){
   if(i50<0.9998741149902344){
    if(i47<0.9995925426483154){
     s0+=1400.0;
     s1+=9.0;
    } else {
     s0+=63.0;
     s1+=57.0;
    }
   } else {
    if(i48<8.58306884765625e-06){
     s0+=284.0;
     s1+=2281.0;
    } else {
     s0+=131.0;
     s1+=40.0;
    }
   }
  } else {
   if(i11<1.0147008895874023){
    if(i20<0.06816443800926208){
     s0+=18462.0;
     s1+=961.0;
    } else {
     s0+=99.0;
     s1+=332.0;
    }
   } else {
    if(i6<1.0031671524047852){
     s0+=32.0;
     s1+=428.0;
    } else {
     s0+=58.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i11<1.017433524131775){
  if(i52<0.04362281411886215){
   if(i31<0.0010535300243645906){
    if(i25<1.0623862743377686){
     s0+=1449.0;
    } else {
     s0+=39.0;
     s1+=1535.0;
    }
   } else {
    if(i23<0.0025083161890506744){
     s0+=3182.0;
     s1+=110.0;
    } else {
     s0+=460.0;
     s1+=342.0;
    }
   }
  } else {
   if(i21<-0.0005413293838500977){
    if(i15<0.09496951103210449){
     s0+=570.0;
     s1+=138.0;
    } else {
     s0+=88.0;
     s1+=212.0;
    }
   } else {
    if(i36<1.1757044792175293){
     s0+=237.0;
     s1+=289.0;
    } else {
     s0+=417.0;
     s1+=3750.0;
    }
   }
  }
 } else {
  if(i2<6.502866744995117e-05){
   if(i1<-6.366718298522756e-05){
    s1+=14.0;
   } else {
    if(i18<0.0037785882595926523){
     s0+=46.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i15<0.0655680000782013){
    if(i46<1.7904403648572043e-06){
     s0+=8.0;
     s1+=60.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.01973557472229){
     s0+=153.0;
     s1+=1388.0;
    } else {
     s0+=26.0;
     s1+=11287.0;
    }
   }
  }
 }
}
if(i7<0.008016876876354218){
 if(i3<1.0079412460327148){
  if(i0<6.276369094848633e-05){
   if(i31<0.001060430658981204){
    if(i32<0.0007210150361061096){
     s0+=28777.0;
     s1+=344.0;
    } else {
     s0+=3694.0;
     s1+=2947.0;
    }
   } else {
    if(i1<-6.629697600146756e-05){
     s0+=719.0;
     s1+=416.0;
    } else {
     s0+=76673.0;
     s1+=799.0;
    }
   }
  } else {
   if(i30<0.00046253204345703125){
    if(i4<0.0006339848041534424){
     s0+=101.0;
     s1+=7.0;
    } else {
     s0+=31.0;
     s1+=899.0;
    }
   } else {
    if(i52<0.04150243103504181){
     s0+=1212.0;
     s1+=31.0;
    } else {
     s0+=69.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i34<0.0017843986861407757){
   if(i61<0.0004026946844533086){
    if(i31<0.001498882775194943){
     s0+=12.0;
     s1+=1008.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i64<0.003581397235393524){
     s0+=635.0;
     s1+=74.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   s1+=1241.0;
  }
 }
} else {
 if(i0<-2.2113323211669922e-05){
  if(i39<0.1173754334449768){
   if(i3<0.9975269436836243){
    if(i7<0.02280295267701149){
     s0+=3466.0;
     s1+=105.0;
    } else {
     s0+=51.0;
     s1+=46.0;
    }
   } else {
    if(i45<0.011263927444815636){
     s0+=267.0;
     s1+=53.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   }
  } else {
   if(i2<-0.0018692612648010254){
    if(i22<0.1781110167503357){
     s0+=37.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=42.0;
    }
   } else {
    if(i34<0.002797476015985012){
     s0+=9.0;
    } else {
     s0+=27.0;
     s1+=388.0;
    }
   }
  }
 } else {
  if(i19<0.9497156143188477){
   if(i51<0.0004260767309460789){
    if(i33<1.052539587020874){
     s0+=233.0;
     s1+=26.0;
    } else {
     s0+=25.0;
     s1+=56.0;
    }
   } else {
    if(i21<-0.001577228307723999){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=70.0;
    }
   }
  } else {
   if(i32<0.004220698028802872){
    if(i14<0.9873311519622803){
     s0+=209.0;
     s1+=2068.0;
    } else {
     s0+=18.0;
     s1+=13720.0;
    }
   } else {
    s0+=56.0;
   }
  }
 }
}
if(i5<2.1636486053466797e-05){
 if(i22<0.20532912015914917){
  if(i30<8.600950241088867e-05){
   if(i1<-0.00017310782277490944){
    s1+=12.0;
   } else {
    if(i34<0.0003251193556934595){
     s0+=16280.0;
     s1+=621.0;
    } else {
     s0+=62593.0;
     s1+=311.0;
    }
   }
  } else {
   if(i42<0.01152599137276411){
    if(i35<1.077322244644165){
     s0+=4305.0;
     s1+=442.0;
    } else {
     s0+=12510.0;
     s1+=33.0;
    }
   } else {
    if(i40<0.0009466598858125508){
     s0+=489.0;
     s1+=1268.0;
    } else {
     s0+=13494.0;
     s1+=1800.0;
    }
   }
  }
 } else {
  if(i49<-8.396091288886964e-06){
   if(i7<0.004680048208683729){
    if(i32<0.0008444999111816287){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   } else {
    if(i1<-4.4985441491007805e-05){
     s0+=3.0;
     s1+=629.0;
    } else {
     s0+=6.0;
     s1+=58.0;
    }
   }
  } else {
   s0+=186.0;
  }
 }
} else {
 if(i8<1.0164823532104492){
  if(i13<0.0007036785827949643){
   if(i4<0.0011450648307800293){
    if(i48<9.953975677490234e-06){
     s0+=1016.0;
     s1+=2092.0;
    } else {
     s0+=1727.0;
     s1+=390.0;
    }
   } else {
    if(i9<0.9731517434120178){
     s0+=162.0;
     s1+=109.0;
    } else {
     s0+=361.0;
     s1+=3377.0;
    }
   }
  } else {
   if(i39<0.25272077322006226){
    s0+=3164.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i20<0.00502206664532423){
   if(i2<0.0019073486328125){
    if(i13<0.0002608943614177406){
     s1+=119.0;
    } else {
     s0+=143.0;
    }
   } else {
    if(i9<1.0142552852630615){
     s0+=25.0;
     s1+=17.0;
    } else {
     s1+=306.0;
    }
   }
  } else {
   if(i48<3.081560134887695e-05){
    if(i30<0.0017922818660736084){
     s0+=146.0;
     s1+=12579.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i66<-1.541450728836935e-05){
     s1+=3.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
}
if(i4<0.0006127357482910156){
 if(i38<0.22860586643218994){
  if(i20<0.00740019278600812){
   if(i10<0.9911853075027466){
    if(i43<0.0005011281464248896){
     s0+=404.0;
     s1+=237.0;
    } else {
     s0+=3737.0;
     s1+=12.0;
    }
   } else {
    if(i9<1.0066089630126953){
     s0+=65393.0;
     s1+=332.0;
    } else {
     s0+=606.0;
     s1+=86.0;
    }
   }
  } else {
   if(i4<-7.611513137817383e-05){
    if(i36<1.0905578136444092){
     s0+=6390.0;
     s1+=365.0;
    } else {
     s0+=27373.0;
     s1+=198.0;
    }
   } else {
    if(i25<1.1166167259216309){
     s0+=319.0;
     s1+=2379.0;
    } else {
     s0+=5496.0;
     s1+=1223.0;
    }
   }
  }
 } else {
  if(i1<-3.3513089874759316e-05){
   if(i13<0.00012509709631558508){
    s0+=4.0;
   } else {
    if(i34<0.0026403754018247128){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=664.0;
    }
   }
  } else {
   if(i6<1.002490520477295){
    if(i18<0.0025297196116298437){
     s0+=111.0;
    } else {
     s0+=7.0;
     s1+=9.0;
    }
   } else {
    if(i54<0.05696028470993042){
     s0+=3.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i1<-7.861674384912476e-05){
  if(i3<1.003849744796753){
   if(i24<1.1143057346343994){
    if(i21<-0.000547945499420166){
     s0+=252.0;
     s1+=28.0;
    } else {
     s0+=171.0;
     s1+=128.0;
    }
   } else {
    if(i19<0.9394688606262207){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=48.0;
     s1+=801.0;
    }
   }
  } else {
   if(i7<0.0046151489950716496){
    if(i30<0.0013307034969329834){
     s0+=109.0;
     s1+=605.0;
    } else {
     s0+=164.0;
     s1+=9.0;
    }
   } else {
    if(i33<0.972511887550354){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=106.0;
     s1+=14278.0;
    }
   }
  }
 } else {
  if(i2<0.0011892914772033691){
   if(i13<0.00029910189914517105){
    if(i16<-0.0011242032051086426){
     s0+=536.0;
     s1+=138.0;
    } else {
     s0+=219.0;
     s1+=1105.0;
    }
   } else {
    if(i23<0.0022940426133573055){
     s0+=3227.0;
    } else {
     s0+=660.0;
     s1+=320.0;
    }
   }
  } else {
   if(i31<0.0012550882529467344){
    if(i66<-3.939283033105312e-07){
     s1+=1032.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i7<0.005371480714529753){
     s0+=909.0;
    } else {
     s0+=40.0;
     s1+=571.0;
    }
   }
  }
 }
}
if(i2<0.000957190990447998){
 if(i18<0.0017903816187754273){
  if(i19<0.9957032203674316){
   if(i23<0.0005623495671898127){
    if(i3<0.9973774552345276){
     s0+=4205.0;
     s1+=38.0;
    } else {
     s0+=1484.0;
     s1+=561.0;
    }
   } else {
    if(i6<1.002488136291504){
     s0+=10880.0;
     s1+=43.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   }
  } else {
   if(i63<0.0647580474615097){
    if(i43<0.002131807152181864){
     s0+=74322.0;
     s1+=354.0;
    } else {
     s0+=562.0;
     s1+=92.0;
    }
   } else {
    if(i30<0.00023108720779418945){
     s0+=1007.0;
     s1+=22.0;
    } else {
     s0+=51.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i3<0.9985601902008057){
   if(i72<1.0593976974487305){
    if(i15<0.203891783952713){
     s0+=17124.0;
     s1+=712.0;
    } else {
     s0+=56.0;
     s1+=178.0;
    }
   } else {
    if(i39<0.1386629343032837){
     s0+=2.0;
    } else {
     s1+=115.0;
    }
   }
  } else {
   if(i54<0.02044254168868065){
    if(i50<1.0000499486923218){
     s0+=1402.0;
     s1+=10.0;
    } else {
     s0+=2162.0;
     s1+=1655.0;
    }
   } else {
    if(i7<0.0037040323950350285){
     s0+=470.0;
     s1+=2.0;
    } else {
     s0+=705.0;
     s1+=4248.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007058108458295465){
  if(i18<0.0005923695862293243){
   if(i48<3.993511199951172e-06){
    if(i2<0.0023613572120666504){
     s0+=41.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i17<1.009964108467102){
     s0+=19.0;
    } else {
     s1+=116.0;
    }
   }
  } else {
   if(i55<-6.2567542045144364e-06){
    if(i20<0.04863343387842178){
     s0+=41.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i16<-0.002286076545715332){
     s0+=86.0;
     s1+=325.0;
    } else {
     s0+=139.0;
     s1+=15741.0;
    }
   }
  }
 } else {
  s0+=1797.0;
 }
}
if(i3<1.0038504600524902){
 if(i42<0.18409478664398193){
  if(i30<9.173154830932617e-05){
   if(i8<1.0200060606002808){
    if(i22<0.23061108589172363){
     s0+=79791.0;
     s1+=974.0;
    } else {
     s0+=55.0;
     s1+=56.0;
    }
   } else {
    if(i18<0.001990314107388258){
     s0+=117.0;
    } else {
     s1+=95.0;
    }
   }
  } else {
   if(i0<-3.141164779663086e-05){
    if(i61<0.007338770665228367){
     s0+=13876.0;
     s1+=518.0;
    } else {
     s0+=57.0;
     s1+=99.0;
    }
   } else {
    if(i63<0.05326598510146141){
     s0+=16624.0;
     s1+=2311.0;
    } else {
     s0+=1497.0;
     s1+=1744.0;
    }
   }
  }
 } else {
  if(i1<-8.750787674216554e-05){
   if(i38<0.007787436246871948){
    if(i50<1.000638484954834){
     s0+=17.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i66<2.17686847463483e-05){
     s0+=3.0;
     s1+=803.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i33<1.1652129888534546){
    if(i44<1.0193798542022705){
     s0+=216.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    s1+=20.0;
   }
  }
 }
} else {
 if(i25<1.1979892253875732){
  if(i30<0.0005127787590026855){
   if(i35<1.1212427616119385){
    if(i47<1.0010708570480347){
     s0+=55.0;
     s1+=2652.0;
    } else {
     s0+=95.0;
    }
   } else {
    s0+=196.0;
   }
  } else {
   s0+=3672.0;
  }
 } else {
  if(i34<0.0018664165399968624){
   s0+=92.0;
  } else {
   if(i33<1.0641252994537354){
    if(i59<0.00023770802363287657){
     s0+=91.0;
     s1+=48.0;
    } else {
     s0+=59.0;
     s1+=630.0;
    }
   } else {
    if(i15<0.1022334098815918){
     s0+=72.0;
     s1+=441.0;
    } else {
     s0+=24.0;
     s1+=13841.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i8<1.0145692825317383){
  if(i4<0.00026351213455200195){
   if(i32<0.0006719887023791671){
    if(i34<0.0019441863987594843){
     s0+=68265.0;
     s1+=238.0;
    } else {
     s0+=4359.0;
     s1+=107.0;
    }
   } else {
    if(i29<1.0907573699951172){
     s0+=1647.0;
     s1+=1581.0;
    } else {
     s0+=27778.0;
     s1+=912.0;
    }
   }
  } else {
   if(i7<0.004150607623159885){
    if(i64<0.005496767349541187){
     s0+=6335.0;
     s1+=124.0;
    } else {
     s0+=36.0;
     s1+=25.0;
    }
   } else {
    if(i31<0.0029362419154495){
     s0+=241.0;
     s1+=1204.0;
    } else {
     s0+=877.0;
     s1+=430.0;
    }
   }
  }
 } else {
  if(i1<-3.2477433705935255e-05){
   if(i49<-1.0702930012485012e-05){
    if(i26<1.0178364515304565){
     s0+=41.0;
     s1+=46.0;
    } else {
     s0+=20.0;
     s1+=646.0;
    }
   } else {
    if(i36<1.4085768461227417){
     s1+=2.0;
    } else {
     s0+=94.0;
    }
   }
  } else {
   if(i52<0.2532281279563904){
    if(i25<1.0905578136444092){
     s1+=7.0;
    } else {
     s0+=206.0;
     s1+=3.0;
    }
   } else {
    if(i34<0.0027165114879608154){
     s0+=3.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i22<0.15841618180274963){
  if(i48<1.0073184967041016e-05){
   if(i19<1.006882905960083){
    if(i24<1.1027498245239258){
     s0+=1554.0;
     s1+=526.0;
    } else {
     s0+=106.0;
     s1+=408.0;
    }
   } else {
    if(i31<0.00025351098156534135){
     s0+=57.0;
    } else {
     s0+=320.0;
     s1+=3152.0;
    }
   }
  } else {
   if(i35<1.1714401245117188){
    if(i1<-9.596720337867737e-05){
     s0+=227.0;
     s1+=143.0;
    } else {
     s0+=3560.0;
     s1+=163.0;
    }
   } else {
    if(i17<0.9983581304550171){
     s0+=445.0;
     s1+=214.0;
    } else {
     s0+=125.0;
     s1+=1187.0;
    }
   }
  }
 } else {
  if(i31<0.0025079119950532913){
   if(i67<0.0036426186561584473){
    if(i25<1.195103406906128){
     s0+=278.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i21<-0.000414431095123291){
    if(i23<0.00681103952229023){
     s0+=48.0;
     s1+=22.0;
    } else {
     s0+=21.0;
     s1+=278.0;
    }
   } else {
    if(i7<0.0005054670036770403){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=12770.0;
    }
   }
  }
 }
}
if(i8<1.0131404399871826){
 if(i18<0.0017997362883761525){
  if(i16<0.0020664334297180176){
   if(i3<1.0080538988113403){
    if(i18<0.0013013466959819198){
     s0+=81847.0;
     s1+=435.0;
    } else {
     s0+=10678.0;
     s1+=773.0;
    }
   } else {
    if(i13<0.00017611731891520321){
     s1+=97.0;
    } else {
     s0+=187.0;
    }
   }
  } else {
   s1+=131.0;
  }
 } else {
  if(i0<-2.1517276763916016e-05){
   if(i34<0.0009901626035571098){
    if(i29<1.0728148221969604){
     s0+=143.0;
     s1+=1.0;
    } else {
     s0+=106.0;
     s1+=299.0;
    }
   } else {
    if(i57<0.012316538020968437){
     s0+=17386.0;
     s1+=628.0;
    } else {
     s0+=295.0;
     s1+=280.0;
    }
   }
  } else {
   if(i43<0.00015642524522263557){
    if(i42<0.009648837149143219){
     s0+=1409.0;
     s1+=68.0;
    } else {
     s0+=116.0;
     s1+=149.0;
    }
   } else {
    if(i4<-4.392862319946289e-05){
     s0+=494.0;
     s1+=30.0;
    } else {
     s0+=2282.0;
     s1+=6649.0;
    }
   }
  }
 }
} else {
 if(i38<0.17787590622901917){
  if(i48<1.2934207916259766e-05){
   if(i50<1.0003869533538818){
    if(i40<0.014164023101329803){
     s0+=273.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i2<-0.00045984983444213867){
     s0+=97.0;
     s1+=1.0;
    } else {
     s0+=224.0;
     s1+=3063.0;
    }
   }
  } else {
   if(i12<1.0112818479537964){
    if(i1<-0.00010329810902476311){
     s0+=15.0;
     s1+=63.0;
    } else {
     s0+=717.0;
     s1+=35.0;
    }
   } else {
    if(i50<1.0038175582885742){
     s0+=6.0;
     s1+=14.0;
    } else {
     s1+=226.0;
    }
   }
  }
 } else {
  if(i34<0.0019669043831527233){
   if(i19<1.0170314311981201){
    s0+=63.0;
   } else {
    if(i36<1.1050615310668945){
     s1+=12.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i53<-3.242523916924256e-06){
    if(i17<0.9934760332107544){
     s0+=36.0;
     s1+=200.0;
    } else {
     s0+=16.0;
     s1+=11240.0;
    }
   } else {
    if(i25<1.4355765581130981){
     s1+=2.0;
    } else {
     s0+=46.0;
    }
   }
  }
 }
}
if(i14<1.0181543827056885){
 if(i2<0.0010828375816345215){
  if(i18<0.0018178049940615892){
   if(i18<0.0013666523154824972){
    if(i59<0.00015475935651920736){
     s0+=69532.0;
     s1+=152.0;
    } else {
     s0+=14009.0;
     s1+=331.0;
    }
   } else {
    if(i44<0.9991494417190552){
     s0+=6118.0;
     s1+=49.0;
    } else {
     s0+=2973.0;
     s1+=622.0;
    }
   }
  } else {
   if(i34<0.0010853195562958717){
    if(i36<1.0498223304748535){
     s0+=1863.0;
     s1+=4.0;
    } else {
     s0+=136.0;
     s1+=2503.0;
    }
   } else {
    if(i7<0.01419079303741455){
     s0+=18117.0;
     s1+=1613.0;
    } else {
     s0+=1033.0;
     s1+=1396.0;
    }
   }
  }
 } else {
  if(i13<0.0007051959983073175){
   if(i53<-6.171533459564671e-05){
    s0+=26.0;
   } else {
    if(i47<1.0025485754013062){
     s0+=114.0;
     s1+=3862.0;
    } else {
     s0+=51.0;
     s1+=108.0;
    }
   }
  } else {
   s0+=1103.0;
  }
 }
} else {
 if(i1<-6.446082261390984e-05){
  if(i1<-8.732201240491122e-05){
   if(i5<0.0002683401107788086){
    if(i48<-3.483891487121582e-05){
     s0+=14.0;
    } else {
     s0+=18.0;
     s1+=12092.0;
    }
   } else {
    s0+=15.0;
   }
  } else {
   if(i25<1.4586446285247803){
    if(i51<-0.00028782139997929335){
     s0+=29.0;
     s1+=794.0;
    } else {
     s0+=66.0;
     s1+=63.0;
    }
   } else {
    s0+=34.0;
   }
  }
 } else {
  if(i25<1.1180615425109863){
   if(i76<0.009104669094085693){
    s1+=491.0;
   } else {
    s0+=5.0;
   }
  } else {
   if(i35<1.182697057723999){
    if(i40<0.0019617974758148193){
     s0+=482.0;
    } else {
     s0+=332.0;
     s1+=53.0;
    }
   } else {
    if(i47<1.0008163452148438){
     s0+=264.0;
     s1+=4.0;
    } else {
     s0+=29.0;
     s1+=360.0;
    }
   }
  }
 }
}
if(i3<1.0038650035858154){
 if(i7<0.006925000809133053){
  if(i11<1.0067744255065918){
   if(i40<0.0009896178962662816){
    if(i20<0.0077968486584723){
     s0+=25908.0;
     s1+=509.0;
    } else {
     s0+=6039.0;
     s1+=1595.0;
    }
   } else {
    if(i1<-5.742676876252517e-05){
     s0+=831.0;
     s1+=149.0;
    } else {
     s0+=68013.0;
     s1+=550.0;
    }
   }
  } else {
   if(i7<0.003983490169048309){
    if(i24<1.1354830265045166){
     s0+=3745.0;
     s1+=52.0;
    } else {
     s0+=335.0;
     s1+=47.0;
    }
   } else {
    if(i6<1.0007128715515137){
     s0+=493.0;
     s1+=29.0;
    } else {
     s0+=104.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i22<0.058905720710754395){
   if(i46<2.0333787688286975e-05){
    if(i56<1.069605827331543){
     s0+=24.0;
     s1+=296.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i73<-0.009957373142242432){
     s0+=88.0;
     s1+=117.0;
    } else {
     s0+=5000.0;
     s1+=99.0;
    }
   }
  } else {
   if(i1<-4.195527435513213e-05){
    if(i15<0.13617771863937378){
     s0+=456.0;
     s1+=665.0;
    } else {
     s0+=74.0;
     s1+=1613.0;
    }
   } else {
    if(i0<-3.403425216674805e-05){
     s0+=1032.0;
     s1+=41.0;
    } else {
     s0+=40.0;
     s1+=432.0;
    }
   }
  }
 }
} else {
 if(i31<0.002347438596189022){
  if(i29<1.116804838180542){
   if(i13<0.0002556991530582309){
    if(i66<-1.1558044207049534e-05){
     s0+=4.0;
    } else {
     s1+=2707.0;
    }
   } else {
    s0+=670.0;
   }
  } else {
   if(i19<0.9943310022354126){
    s1+=5.0;
   } else {
    if(i25<1.1995093822479248){
     s0+=3291.0;
    } else {
     s0+=68.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i16<0.0010938644409179688){
   if(i25<1.4667320251464844){
    if(i35<1.1269173622131348){
     s0+=19.0;
     s1+=14.0;
    } else {
     s0+=51.0;
     s1+=2723.0;
    }
   } else {
    if(i57<0.0005076915840618312){
     s0+=123.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=580.0;
    }
   }
  } else {
   if(i49<-2.170867628592532e-05){
    s1+=11532.0;
   } else {
    if(i26<1.0086052417755127){
     s0+=1.0;
    } else {
     s1+=45.0;
    }
   }
  }
 }
}
if(i11<1.0151864290237427){
 if(i54<0.08521415293216705){
  if(i18<0.0017434083856642246){
   if(i16<0.001389145851135254){
    if(i18<0.001160677638836205){
     s0+=78188.0;
     s1+=293.0;
    } else {
     s0+=13506.0;
     s1+=752.0;
    }
   } else {
    if(i29<1.0989346504211426){
     s1+=233.0;
    } else {
     s0+=219.0;
     s1+=85.0;
    }
   }
  } else {
   if(i12<0.9980906248092651){
    if(i7<0.014077531173825264){
     s0+=12946.0;
     s1+=268.0;
    } else {
     s0+=58.0;
     s1+=78.0;
    }
   } else {
    if(i13<0.0002729803090915084){
     s0+=2678.0;
     s1+=4641.0;
    } else {
     s0+=5610.0;
     s1+=1039.0;
    }
   }
  }
 } else {
  if(i21<-0.0005727708339691162){
   if(i7<0.02047327160835266){
    if(i22<0.1940530240535736){
     s0+=2026.0;
     s1+=55.0;
    } else {
     s0+=11.0;
     s1+=37.0;
    }
   } else {
    if(i37<0.0006024507456459105){
     s0+=28.0;
     s1+=148.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i24<1.596516489982605){
    if(i53<-9.941896905729664e-07){
     s0+=89.0;
     s1+=2611.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i53<-6.590021712327143e-06){
     s1+=7.0;
    } else {
     s0+=105.0;
    }
   }
  }
 }
} else {
 if(i49<-1.0497658877284266e-05){
  if(i8<1.022573709487915){
   if(i7<0.002908161375671625){
    if(i30<0.0005125701427459717){
     s0+=15.0;
     s1+=147.0;
    } else {
     s0+=434.0;
     s1+=14.0;
    }
   } else {
    if(i7<0.005681229755282402){
     s0+=120.0;
     s1+=464.0;
    } else {
     s0+=18.0;
     s1+=1705.0;
    }
   }
  } else {
   if(i37<0.0004423197824507952){
    if(i21<-0.00026470422744750977){
     s0+=21.0;
     s1+=61.0;
    } else {
     s0+=39.0;
     s1+=11753.0;
    }
   } else {
    s0+=6.0;
   }
  }
 } else {
  s0+=263.0;
 }
}
if(i3<1.003865361213684){
 if(i24<1.1403480768203735){
  if(i7<0.0036522415466606617){
   if(i33<1.0179111957550049){
    if(i59<8.116433309623972e-05){
     s0+=5015.0;
     s1+=14.0;
    } else {
     s0+=5278.0;
     s1+=462.0;
    }
   } else {
    if(i14<1.0157908201217651){
     s0+=76275.0;
     s1+=474.0;
    } else {
     s0+=577.0;
     s1+=46.0;
    }
   }
  } else {
   if(i17<0.9959769248962402){
    if(i22<0.19438233971595764){
     s0+=18495.0;
     s1+=713.0;
    } else {
     s0+=62.0;
     s1+=185.0;
    }
   } else {
    if(i4<-0.0001468658447265625){
     s0+=4162.0;
     s1+=16.0;
    } else {
     s0+=1368.0;
     s1+=3234.0;
    }
   }
  }
 } else {
  if(i1<-2.8564150852616876e-05){
   if(i7<0.0059630717150866985){
    if(i24<1.142959475517273){
     s1+=20.0;
    } else {
     s0+=115.0;
    }
   } else {
    if(i59<0.002702738158404827){
     s0+=31.0;
     s1+=1364.0;
    } else {
     s0+=60.0;
     s1+=165.0;
    }
   }
  } else {
   if(i18<0.0033728457055985928){
    if(i12<1.001830816268921){
     s0+=770.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i21<-0.0003445446491241455){
     s0+=72.0;
     s1+=15.0;
    } else {
     s1+=75.0;
    }
   }
  }
 }
} else {
 if(i7<0.002874211873859167){
  if(i46<-1.5051960872369818e-05){
   if(i53<-1.722737761156168e-05){
    if(i3<1.0132125616073608){
     s0+=45.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i16<0.0011672377586364746){
     s0+=8.0;
    } else {
     s1+=399.0;
    }
   }
  } else {
   if(i65<0.0015405663289129734){
    if(i46<-1.3002734704059549e-05){
     s0+=54.0;
     s1+=14.0;
    } else {
     s0+=3269.0;
     s1+=12.0;
    }
   } else {
    s1+=8.0;
   }
  }
 } else {
  if(i29<1.1525434255599976){
   if(i25<1.1180615425109863){
    if(i23<0.00020576687529683113){
     s0+=26.0;
    } else {
     s1+=2350.0;
    }
   } else {
    s0+=667.0;
   }
  } else {
   if(i21<-0.00019276142120361328){
    if(i32<0.0013164910487830639){
     s0+=91.0;
     s1+=29.0;
    } else {
     s0+=30.0;
     s1+=663.0;
    }
   } else {
    if(i16<-0.0008696317672729492){
     s0+=13.0;
     s1+=288.0;
    } else {
     s0+=7.0;
     s1+=13767.0;
    }
   }
  }
 }
}
if(i3<1.003852128982544){
 if(i5<1.710653305053711e-05){
  if(i32<0.0007188408053480089){
   if(i32<0.000538723892532289){
    if(i29<1.1758689880371094){
     s0+=63445.0;
     s1+=88.0;
    } else {
     s0+=4345.0;
     s1+=66.0;
    }
   } else {
    if(i30<-9.417533874511719e-05){
     s0+=6931.0;
    } else {
     s0+=3985.0;
     s1+=330.0;
    }
   }
  } else {
   if(i6<0.9997398853302002){
    if(i38<0.24219545722007751){
     s0+=19254.0;
     s1+=322.0;
    } else {
     s0+=9.0;
     s1+=204.0;
    }
   } else {
    if(i31<0.0010257072281092405){
     s0+=478.0;
     s1+=2017.0;
    } else {
     s0+=9174.0;
     s1+=1071.0;
    }
   }
  }
 } else {
  if(i22<0.1651381254196167){
   if(i51<-0.0001724839094094932){
    if(i0<2.4437904357910156e-06){
     s0+=632.0;
     s1+=162.0;
    } else {
     s0+=424.0;
     s1+=880.0;
    }
   } else {
    if(i35<1.0482103824615479){
     s0+=1349.0;
    } else {
     s0+=2184.0;
     s1+=463.0;
    }
   }
  } else {
   if(i20<0.008431177586317062){
    if(i67<-0.005348831415176392){
     s1+=2.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i30<0.0007001161575317383){
     s0+=17.0;
     s1+=839.0;
    } else {
     s0+=61.0;
     s1+=138.0;
    }
   }
  }
 }
} else {
 if(i23<0.0022431365214288235){
  if(i25<1.116804838180542){
   if(i23<0.0002408422587905079){
    s0+=635.0;
   } else {
    s1+=2719.0;
   }
  } else {
   s0+=3368.0;
  }
 } else {
  if(i38<0.08329227566719055){
   if(i73<-0.0016830861568450928){
    if(i15<0.017942875623703003){
     s0+=26.0;
     s1+=78.0;
    } else {
     s0+=14.0;
     s1+=324.0;
    }
   } else {
    if(i1<-0.00010633892088662833){
     s1+=34.0;
    } else {
     s0+=207.0;
     s1+=9.0;
    }
   }
  } else {
   if(i32<0.004058488644659519){
    if(i21<-0.00016754865646362305){
     s0+=54.0;
     s1+=691.0;
    } else {
     s0+=24.0;
     s1+=13756.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i6<1.0026321411132812){
 if(i42<0.2075226902961731){
  if(i39<0.20686772465705872){
   if(i11<1.0105798244476318){
    if(i54<0.015891660004854202){
     s0+=73729.0;
     s1+=1562.0;
    } else {
     s0+=35859.0;
     s1+=2298.0;
    }
   } else {
    if(i7<0.005081589799374342){
     s0+=881.0;
     s1+=92.0;
    } else {
     s0+=145.0;
     s1+=802.0;
    }
   }
  } else {
   if(i6<1.001091718673706){
    if(i13<0.0004531997547019273){
     s0+=115.0;
     s1+=31.0;
    } else {
     s0+=2.0;
     s1+=94.0;
    }
   } else {
    if(i42<0.06488106399774551){
     s0+=15.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=182.0;
    }
   }
  }
 } else {
  if(i0<-0.00017026066780090332){
   s0+=71.0;
  } else {
   s1+=525.0;
  }
 }
} else {
 if(i34<0.0029343694914132357){
  if(i18<0.001970433397218585){
   if(i16<0.001295328140258789){
    if(i43<0.002136003226041794){
     s0+=3082.0;
     s1+=45.0;
    } else {
     s0+=6.0;
     s1+=38.0;
    }
   } else {
    if(i23<0.0010951210279017687){
     s1+=663.0;
    } else {
     s0+=240.0;
     s1+=2.0;
    }
   }
  } else {
   if(i23<0.0010740733705461025){
    if(i7<0.002916251542046666){
     s0+=46.0;
    } else {
     s1+=1530.0;
    }
   } else {
    if(i19<1.0188639163970947){
     s0+=1003.0;
     s1+=360.0;
    } else {
     s0+=2.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i2<8.004903793334961e-05){
   if(i33<1.075090765953064){
    if(i65<0.001830950495786965){
     s0+=417.0;
     s1+=3.0;
    } else {
     s0+=454.0;
     s1+=132.0;
    }
   } else {
    if(i36<1.2320208549499512){
     s0+=230.0;
     s1+=83.0;
    } else {
     s0+=24.0;
     s1+=300.0;
    }
   }
  } else {
   if(i24<1.0743002891540527){
    if(i38<0.0672922432422638){
     s0+=193.0;
     s1+=78.0;
    } else {
     s0+=74.0;
     s1+=279.0;
    }
   } else {
    if(i22<0.0629468560218811){
     s0+=95.0;
     s1+=280.0;
    } else {
     s0+=98.0;
     s1+=14557.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i26<1.0181578397750854){
  if(i4<0.00029093027114868164){
   if(i7<0.0034479042515158653){
    if(i40<0.0006387092871591449){
     s0+=23800.0;
     s1+=699.0;
    } else {
     s0+=56015.0;
     s1+=133.0;
    }
   } else {
    if(i3<0.9985604286193848){
     s0+=21550.0;
     s1+=615.0;
    } else {
     s0+=1216.0;
     s1+=1329.0;
    }
   }
  } else {
   if(i42<0.028969280421733856){
    if(i34<0.001022687996737659){
     s0+=2644.0;
     s1+=903.0;
    } else {
     s0+=5926.0;
     s1+=121.0;
    }
   } else {
    if(i52<0.2824849486351013){
     s0+=2035.0;
     s1+=1612.0;
    } else {
     s0+=55.0;
     s1+=675.0;
    }
   }
  }
 } else {
  if(i49<-1.0462450518389232e-05){
   if(i48<9.715557098388672e-06){
    if(i58<1.005081057548523){
     s0+=90.0;
     s1+=1510.0;
    } else {
     s0+=61.0;
     s1+=44.0;
    }
   } else {
    if(i15<0.17595776915550232){
     s0+=288.0;
     s1+=44.0;
    } else {
     s0+=52.0;
     s1+=353.0;
    }
   }
  } else {
   if(i44<1.0012288093566895){
    s0+=379.0;
   } else {
    if(i32<0.00042488338658586144){
     s0+=118.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i1<-7.392268889816478e-05){
  if(i15<0.1467491090297699){
   if(i32<0.0025855875574052334){
    if(i9<0.976269006729126){
     s0+=34.0;
     s1+=12.0;
    } else {
     s0+=63.0;
     s1+=2214.0;
    }
   } else {
    if(i26<0.9940154552459717){
     s0+=4.0;
     s1+=93.0;
    } else {
     s0+=320.0;
     s1+=6.0;
    }
   }
  } else {
   if(i48<6.532669067382812e-05){
    if(i31<0.002438904717564583){
     s0+=42.0;
     s1+=87.0;
    } else {
     s0+=2.0;
     s1+=12229.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i48<1.150369644165039e-05){
   if(i44<1.0028908252716064){
    if(i45<0.0008045294671319425){
     s0+=4.0;
     s1+=66.0;
    } else {
     s0+=97.0;
    }
   } else {
    if(i53<-1.2584095202328172e-05){
     s0+=49.0;
     s1+=61.0;
    } else {
     s0+=45.0;
     s1+=1363.0;
    }
   }
  } else {
   if(i25<1.185887336730957){
    if(i23<0.0010674964869394898){
     s0+=72.0;
     s1+=50.0;
    } else {
     s0+=1329.0;
    }
   } else {
    if(i3<1.006321668624878){
     s0+=28.0;
     s1+=29.0;
    } else {
     s0+=4.0;
     s1+=216.0;
    }
   }
  }
 }
}
if(i3<1.0038522481918335){
 if(i39<0.20448759198188782){
  if(i33<1.1403393745422363){
   if(i54<0.020632624626159668){
    if(i23<0.000866956077516079){
     s0+=28250.0;
     s1+=1994.0;
    } else {
     s0+=55925.0;
     s1+=329.0;
    }
   } else {
    if(i3<0.9976680874824524){
     s0+=18308.0;
     s1+=298.0;
    } else {
     s0+=8915.0;
     s1+=2567.0;
    }
   }
  } else {
   if(i20<0.03839575871825218){
    if(i32<0.0007885836530476809){
     s0+=379.0;
    } else {
     s0+=67.0;
     s1+=63.0;
    }
   } else {
    if(i7<0.00759605597704649){
     s0+=21.0;
    } else {
     s1+=513.0;
    }
   }
  }
 } else {
  if(i23<0.0025624986737966537){
   if(i49<-1.2505592167144641e-05){
    if(i31<0.0021865619346499443){
     s0+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<1.1016433238983154){
     s1+=2.0;
    } else {
     s0+=123.0;
    }
   }
  } else {
   if(i52<0.0674709752202034){
    if(i6<0.9999352693557739){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=52.0;
    }
   } else {
    if(i35<1.1713470220565796){
     s0+=12.0;
     s1+=53.0;
    } else {
     s0+=8.0;
     s1+=815.0;
    }
   }
  }
 }
} else {
 if(i3<1.0101943016052246){
  if(i52<0.04144972562789917){
   if(i13<0.0002626259229145944){
    if(i7<0.001562921330332756){
     s0+=144.0;
     s1+=56.0;
    } else {
     s0+=73.0;
     s1+=2194.0;
    }
   } else {
    if(i31<0.002493802923709154){
     s0+=3781.0;
    } else {
     s0+=113.0;
     s1+=186.0;
    }
   }
  } else {
   if(i22<0.1237669289112091){
    if(i7<0.004868936724960804){
     s0+=136.0;
     s1+=82.0;
    } else {
     s0+=90.0;
     s1+=773.0;
    }
   } else {
    if(i25<1.1843671798706055){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=3258.0;
    }
   }
  }
 } else {
  if(i48<3.0994415283203125e-05){
   if(i7<0.00038292884710244834){
    if(i40<0.0008724182262085378){
     s1+=5.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i31<0.0013653654605150223){
     s0+=5.0;
     s1+=506.0;
    } else {
     s1+=10667.0;
    }
   }
  } else {
   if(i40<0.011910743080079556){
    s0+=10.0;
   } else {
    s1+=4.0;
   }
  }
 }
}
if(i0<6.324052810668945e-05){
 if(i1<-7.223394641187042e-05){
  if(i3<0.9998409748077393){
   if(i60<-0.0008858852088451385){
    if(i63<0.09117159247398376){
     s0+=74.0;
     s1+=47.0;
    } else {
     s0+=44.0;
     s1+=431.0;
    }
   } else {
    if(i1<-0.00015647144755348563){
     s0+=12.0;
     s1+=27.0;
    } else {
     s0+=1418.0;
     s1+=81.0;
    }
   }
  } else {
   if(i51<-0.00023315958969760686){
    if(i20<0.010641973465681076){
     s0+=50.0;
     s1+=26.0;
    } else {
     s0+=108.0;
     s1+=1862.0;
    }
   } else {
    if(i42<0.07800690829753876){
     s0+=132.0;
     s1+=46.0;
    } else {
     s0+=19.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i9<1.0057435035705566){
   if(i30<7.12275505065918e-05){
    if(i29<1.0905578136444092){
     s0+=21029.0;
     s1+=716.0;
    } else {
     s0+=53806.0;
     s1+=129.0;
    }
   } else {
    if(i36<1.0919182300567627){
     s0+=5815.0;
     s1+=1827.0;
    } else {
     s0+=28597.0;
     s1+=1628.0;
    }
   }
  } else {
   if(i32<0.0007911357679404318){
    if(i64<0.00491933012381196){
     s0+=2280.0;
     s1+=17.0;
    } else {
     s0+=12.0;
     s1+=11.0;
    }
   } else {
    if(i25<1.0610902309417725){
     s0+=323.0;
    } else {
     s0+=529.0;
     s1+=854.0;
    }
   }
  }
 }
} else {
 if(i43<0.001904493197798729){
  if(i61<0.0005101589486002922){
   if(i25<1.0610902309417725){
    s0+=74.0;
   } else {
    if(i16<0.0008952021598815918){
     s0+=54.0;
     s1+=72.0;
    } else {
     s0+=109.0;
     s1+=3058.0;
    }
   }
  } else {
   if(i31<0.002394279232248664){
    if(i30<0.0004964470863342285){
     s0+=122.0;
     s1+=136.0;
    } else {
     s0+=1644.0;
     s1+=2.0;
    }
   } else {
    s1+=742.0;
   }
  }
 } else {
  if(i35<1.127323031425476){
   if(i23<0.008300923742353916){
    s0+=59.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i31<0.0021121809259057045){
    s0+=35.0;
   } else {
    if(i22<0.002888798713684082){
     s0+=36.0;
     s1+=41.0;
    } else {
     s0+=81.0;
     s1+=12565.0;
    }
   }
  }
 }
}
if(i15<0.19664087891578674){
 if(i41<1.0194694995880127){
  if(i0<7.706880569458008e-05){
   if(i5<1.710653305053711e-05){
    if(i4<0.00017684698104858398){
     s0+=95491.0;
     s1+=2000.0;
    } else {
     s0+=10710.0;
     s1+=1364.0;
    }
   } else {
    if(i51<-0.00021105438645463437){
     s0+=963.0;
     s1+=1309.0;
    } else {
     s0+=5908.0;
     s1+=964.0;
    }
   }
  } else {
   if(i76<-0.0014487504959106445){
    if(i55<-6.841412869107444e-06){
     s0+=46.0;
    } else {
     s0+=84.0;
     s1+=1640.0;
    }
   } else {
    if(i43<0.0009809259790927172){
     s0+=8.0;
     s1+=928.0;
    } else {
     s0+=881.0;
     s1+=375.0;
    }
   }
  }
 } else {
  if(i44<1.000362753868103){
   if(i43<0.0007738125859759748){
    s1+=17.0;
   } else {
    if(i1<-8.224419434554875e-05){
     s0+=17.0;
     s1+=18.0;
    } else {
     s0+=661.0;
     s1+=3.0;
    }
   }
  } else {
   if(i18<0.0015885512111708522){
    if(i13<0.00012728877482004464){
     s0+=46.0;
     s1+=179.0;
    } else {
     s0+=552.0;
     s1+=65.0;
    }
   } else {
    if(i37<9.478542779106647e-05){
     s0+=296.0;
     s1+=2534.0;
    } else {
     s0+=332.0;
     s1+=137.0;
    }
   }
  }
 }
} else {
 if(i1<-3.667901910375804e-05){
  if(i4<0.0004870891571044922){
   if(i31<0.0022163125686347485){
    s0+=11.0;
   } else {
    if(i54<0.042192425578832626){
     s0+=21.0;
     s1+=56.0;
    } else {
     s0+=6.0;
     s1+=540.0;
    }
   }
  } else {
   if(i40<0.00161633244715631){
    if(i2<0.005091190338134766){
     s0+=20.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i13<0.0018011067295446992){
     s0+=9.0;
     s1+=11884.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i7<0.007504411041736603){
   if(i64<0.011758583597838879){
    if(i30<0.00010335445404052734){
     s0+=348.0;
    } else {
     s0+=227.0;
     s1+=21.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i17<0.9828603863716125){
    s0+=2.0;
   } else {
    if(i0<-7.730722427368164e-05){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=176.0;
    }
   }
  }
 }
}
if(i2<0.0009647011756896973){
 if(i20<0.06413139402866364){
  if(i7<0.0040580471977591515){
   if(i32<0.0005504961591213942){
    if(i2<-0.00014585256576538086){
     s0+=23439.0;
     s1+=145.0;
    } else {
     s0+=43428.0;
     s1+=23.0;
    }
   } else {
    if(i35<1.0838289260864258){
     s0+=7509.0;
     s1+=1004.0;
    } else {
     s0+=18695.0;
     s1+=187.0;
    }
   }
  } else {
   if(i34<0.0010901367058977485){
    if(i5<-1.2934207916259766e-05){
     s0+=1891.0;
    } else {
     s0+=240.0;
     s1+=2457.0;
    }
   } else {
    if(i12<0.9991154670715332){
     s0+=15523.0;
     s1+=488.0;
    } else {
     s0+=3492.0;
     s1+=2450.0;
    }
   }
  }
 } else {
  if(i49<-1.722978413454257e-05){
   if(i10<0.866610586643219){
    if(i42<0.09495890140533447){
     s0+=23.0;
    } else {
     s0+=14.0;
     s1+=33.0;
    }
   } else {
    if(i67<-0.011539608240127563){
     s0+=29.0;
     s1+=112.0;
    } else {
     s1+=1181.0;
    }
   }
  } else {
   s0+=234.0;
  }
 }
} else {
 if(i55<-7.701273716520518e-06){
  s0+=585.0;
 } else {
  if(i7<0.0027542768511921167){
   if(i40<0.0008648898219689727){
    if(i0<9.185075759887695e-05){
     s0+=47.0;
    } else {
     s1+=281.0;
    }
   } else {
    if(i21<0.00041407346725463867){
     s0+=953.0;
    } else {
     s1+=117.0;
    }
   }
  } else {
   if(i47<0.9983958601951599){
    if(i26<1.0551029443740845){
     s0+=81.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i27<1.1288561820983887){
     s0+=270.0;
     s1+=2944.0;
    } else {
     s0+=84.0;
     s1+=12897.0;
    }
   }
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i4<0.0003274083137512207){
  if(i42<0.2743814289569855){
   if(i20<0.006572762504220009){
    if(i24<1.0128135681152344){
     s0+=506.0;
     s1+=101.0;
    } else {
     s0+=63377.0;
     s1+=337.0;
    }
   } else {
    if(i3<0.9978651404380798){
     s0+=34983.0;
     s1+=497.0;
    } else {
     s0+=5905.0;
     s1+=2196.0;
    }
   }
  } else {
   s1+=119.0;
  }
 } else {
  if(i7<0.004235590808093548){
   if(i1<-4.916613397654146e-05){
    if(i58<1.0026185512542725){
     s0+=117.0;
     s1+=128.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i8<0.9991979002952576){
     s0+=527.0;
     s1+=42.0;
    } else {
     s0+=6814.0;
     s1+=39.0;
    }
   }
  } else {
   if(i33<1.0264147520065308){
    if(i46<1.7022348401951604e-05){
     s0+=39.0;
     s1+=137.0;
    } else {
     s0+=871.0;
     s1+=139.0;
    }
   } else {
    if(i2<-0.00015282630920410156){
     s0+=777.0;
     s1+=403.0;
    } else {
     s0+=495.0;
     s1+=3734.0;
    }
   }
  }
 }
} else {
 if(i34<0.0023648133501410484){
  if(i40<0.001167183625511825){
   if(i47<0.9997408390045166){
    s0+=59.0;
   } else {
    if(i0<0.0002751350402832031){
     s0+=26.0;
     s1+=2219.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i55<-2.7220116862736177e-06){
    if(i31<0.002368235494941473){
     s0+=1818.0;
     s1+=6.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i18<0.0024427752941846848){
     s0+=67.0;
    } else {
     s1+=274.0;
    }
   }
  }
 } else {
  if(i15<0.010319918394088745){
   if(i50<1.0030912160873413){
    if(i76<-0.027234435081481934){
     s1+=6.0;
    } else {
     s0+=49.0;
     s1+=1.0;
    }
   } else {
    if(i72<0.9421214461326599){
     s1+=50.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i65<0.015344128012657166){
    if(i2<0.0011810064315795898){
     s0+=57.0;
     s1+=691.0;
    } else {
     s0+=29.0;
     s1+=13102.0;
    }
   } else {
    if(i63<0.24652664363384247){
     s0+=9.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i9<1.0126168727874756){
 if(i3<1.0031800270080566){
  if(i6<1.0023819208145142){
   if(i10<1.0162476301193237){
    if(i31<0.001068255165591836){
     s0+=31390.0;
     s1+=2897.0;
    } else {
     s0+=76146.0;
     s1+=949.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=4.0;
     s1+=234.0;
    } else {
     s0+=738.0;
     s1+=302.0;
    }
   }
  } else {
   if(i33<1.1079127788543701){
    if(i59<0.0004534826730377972){
     s0+=1121.0;
     s1+=58.0;
    } else {
     s0+=1170.0;
     s1+=540.0;
    }
   } else {
    if(i0<-2.9265880584716797e-05){
     s0+=133.0;
     s1+=73.0;
    } else {
     s0+=38.0;
     s1+=696.0;
    }
   }
  }
 } else {
  if(i15<0.1822577714920044){
   if(i42<0.02560296840965748){
    if(i31<0.0009924613405019045){
     s0+=986.0;
     s1+=1357.0;
    } else {
     s0+=4125.0;
     s1+=158.0;
    }
   } else {
    if(i73<0.004047483205795288){
     s0+=189.0;
     s1+=1534.0;
    } else {
     s0+=73.0;
     s1+=68.0;
    }
   }
  } else {
   if(i34<0.0018916940316557884){
    s0+=135.0;
   } else {
    if(i24<1.0510923862457275){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=2192.0;
    }
   }
  }
 }
} else {
 if(i25<1.1767785549163818){
  if(i36<1.117674469947815){
   if(i43<0.0010086176916956902){
    if(i0<0.00031697750091552734){
     s1+=1456.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i11<1.0254802703857422){
     s0+=109.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   s0+=268.0;
  }
 } else {
  if(i21<0.0002434253692626953){
   if(i49<-1.2787708328687586e-05){
    if(i43<0.0014507127925753593){
     s0+=15.0;
    } else {
     s0+=5.0;
     s1+=1110.0;
    }
   } else {
    s0+=26.0;
   }
  } else {
   s1+=10531.0;
  }
 }
}
if(i4<0.0005692839622497559){
 if(i4<0.00031262636184692383){
  if(i43<0.03871728479862213){
   if(i38<0.22860586643218994){
    if(i32<0.0006721191457472742){
     s0+=74431.0;
     s1+=328.0;
    } else {
     s0+=29945.0;
     s1+=2548.0;
    }
   } else {
    if(i7<0.005170347169041634){
     s0+=115.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=210.0;
    }
   }
  } else {
   if(i13<0.00027555416454561055){
    s0+=26.0;
   } else {
    s1+=167.0;
   }
  }
 } else {
  if(i54<0.02589556574821472){
   if(i42<0.012593314051628113){
    if(i18<0.002056621015071869){
     s0+=2882.0;
     s1+=4.0;
    } else {
     s0+=801.0;
     s1+=265.0;
    }
   } else {
    if(i43<0.0005176509730517864){
     s0+=53.0;
     s1+=275.0;
    } else {
     s0+=961.0;
     s1+=210.0;
    }
   }
  } else {
   if(i2<-0.0004984736442565918){
    if(i68<0.4962467551231384){
     s0+=493.0;
     s1+=62.0;
    } else {
     s0+=20.0;
     s1+=37.0;
    }
   } else {
    if(i26<1.0115242004394531){
     s0+=151.0;
     s1+=461.0;
    } else {
     s0+=13.0;
     s1+=523.0;
    }
   }
  }
 }
} else {
 if(i0<8.398294448852539e-05){
  if(i40<0.0019222565460950136){
   if(i23<0.0009407876641489565){
    if(i52<0.010926198214292526){
     s0+=1377.0;
     s1+=171.0;
    } else {
     s0+=48.0;
     s1+=819.0;
    }
   } else {
    s0+=2396.0;
   }
  } else {
   if(i27<1.1073942184448242){
    if(i12<1.0053949356079102){
     s0+=778.0;
     s1+=75.0;
    } else {
     s0+=89.0;
     s1+=101.0;
    }
   } else {
    if(i38<0.05026403069496155){
     s0+=415.0;
     s1+=135.0;
    } else {
     s0+=402.0;
     s1+=2782.0;
    }
   }
  }
 } else {
  if(i27<1.1269601583480835){
   if(i45<0.0009271735325455666){
    if(i22<0.09027010202407837){
     s0+=7.0;
     s1+=1701.0;
    } else {
     s0+=28.0;
     s1+=294.0;
    }
   } else {
    if(i7<0.0049505168572068214){
     s0+=855.0;
     s1+=90.0;
    } else {
     s0+=112.0;
     s1+=464.0;
    }
   }
  } else {
   if(i23<0.002121121156960726){
    s0+=72.0;
   } else {
    if(i22<0.03063589334487915){
     s0+=29.0;
     s1+=78.0;
    } else {
     s0+=17.0;
     s1+=12534.0;
    }
   }
  }
 }
}
if(i11<1.0153834819793701){
 if(i1<-8.27767580631189e-05){
  if(i6<1.0018715858459473){
   if(i60<-0.0016600083326920867){
    if(i59<0.004803054966032505){
     s0+=6.0;
     s1+=234.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i24<1.1842291355133057){
     s0+=758.0;
     s1+=46.0;
    } else {
     s0+=10.0;
     s1+=38.0;
    }
   }
  } else {
   if(i24<1.045081377029419){
    if(i32<0.0010768822394311428){
     s1+=96.0;
    } else {
     s0+=324.0;
     s1+=20.0;
    }
   } else {
    if(i59<0.00010761096200440079){
     s0+=156.0;
     s1+=68.0;
    } else {
     s0+=249.0;
     s1+=3421.0;
    }
   }
  }
 } else {
  if(i21<0.00017893314361572266){
   if(i5<1.8537044525146484e-05){
    if(i50<0.9998122453689575){
     s0+=47813.0;
     s1+=201.0;
    } else {
     s0+=59033.0;
     s1+=3407.0;
    }
   } else {
    if(i13<0.0003495897108223289){
     s0+=1788.0;
     s1+=1666.0;
    } else {
     s0+=4515.0;
     s1+=248.0;
    }
   }
  } else {
   if(i34<0.0010795193957164884){
    if(i8<1.0022927522659302){
     s0+=54.0;
    } else {
     s1+=779.0;
    }
   } else {
    if(i41<0.9922176599502563){
     s0+=10.0;
     s1+=39.0;
    } else {
     s0+=893.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i1<-6.1021426517982036e-05){
  if(i36<1.1411436796188354){
   if(i25<1.1180615425109863){
    s1+=1183.0;
   } else {
    s0+=136.0;
   }
  } else {
   if(i50<1.000826358795166){
    if(i42<0.037938058376312256){
     s0+=30.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=384.0;
    }
   } else {
    if(i29<1.4731788635253906){
     s1+=10157.0;
    } else {
     s0+=31.0;
     s1+=1669.0;
    }
   }
  }
 } else {
  if(i4<0.00034552812576293945){
   if(i44<1.0053694248199463){
    if(i7<0.006235656328499317){
     s0+=339.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i53<-1.162291482614819e-05){
    if(i49<-4.049666313221678e-05){
     s1+=10.0;
    } else {
     s0+=339.0;
     s1+=6.0;
    }
   } else {
    if(i0<-1.1682510375976562e-05){
     s0+=4.0;
    } else {
     s0+=9.0;
     s1+=637.0;
    }
   }
  }
 }
}
if(i3<1.003852128982544){
 if(i1<-8.679615712026134e-05){
  if(i9<0.9737917184829712){
   if(i20<0.05645971745252609){
    if(i51<-0.0005749869742430747){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=790.0;
     s1+=19.0;
    }
   } else {
    if(i52<0.12383577972650528){
     s0+=61.0;
     s1+=11.0;
    } else {
     s0+=26.0;
     s1+=145.0;
    }
   }
  } else {
   if(i7<0.01202608086168766){
    if(i42<0.02461431920528412){
     s0+=93.0;
     s1+=9.0;
    } else {
     s0+=72.0;
     s1+=165.0;
    }
   } else {
    if(i42<0.039090581238269806){
     s0+=30.0;
     s1+=17.0;
    } else {
     s0+=12.0;
     s1+=1189.0;
    }
   }
  }
 } else {
  if(i32<0.0007174089550971985){
   if(i33<1.0178465843200684){
    if(i18<0.001030272338539362){
     s0+=8369.0;
     s1+=71.0;
    } else {
     s0+=1116.0;
     s1+=146.0;
    }
   } else {
    if(i29<1.1758689880371094){
     s0+=64155.0;
     s1+=114.0;
    } else {
     s0+=5931.0;
     s1+=184.0;
    }
   }
  } else {
   if(i31<0.001016516936942935){
    if(i34<0.0002008494338952005){
     s0+=1996.0;
    } else {
     s0+=1252.0;
     s1+=2945.0;
    }
   } else {
    if(i3<1.0011364221572876){
     s0+=26762.0;
     s1+=758.0;
    } else {
     s0+=1571.0;
     s1+=854.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007025634404271841){
  if(i11<1.015470027923584){
   if(i59<0.00017010218289215118){
    if(i29<1.116804838180542){
     s0+=192.0;
     s1+=1166.0;
    } else {
     s0+=1316.0;
     s1+=93.0;
    }
   } else {
    if(i36<1.1665184497833252){
     s0+=95.0;
     s1+=245.0;
    } else {
     s0+=104.0;
     s1+=2958.0;
    }
   }
  } else {
   if(i33<1.033008337020874){
    if(i3<1.0067051649093628){
     s0+=10.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i8<1.0165913105010986){
     s0+=44.0;
     s1+=855.0;
    } else {
     s0+=23.0;
     s1+=12335.0;
    }
   }
  }
 } else {
  if(i45<0.00495178485289216){
   s0+=2511.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i10<1.016379475593567){
 if(i30<0.00013643503189086914){
  if(i20<0.08877816051244736){
   if(i32<0.0006807364989072084){
    if(i24<1.023176908493042){
     s0+=10691.0;
     s1+=182.0;
    } else {
     s0+=58221.0;
     s1+=74.0;
    }
   } else {
    if(i31<0.0010489537380635738){
     s0+=1601.0;
     s1+=1273.0;
    } else {
     s0+=16810.0;
     s1+=331.0;
    }
   }
  } else {
   if(i45<0.004648276139050722){
    s0+=1.0;
   } else {
    s1+=100.0;
   }
  }
 } else {
  if(i64<0.0029393588192760944){
   if(i57<0.00617563258856535){
    if(i1<-5.1149429054930806e-05){
     s0+=1661.0;
     s1+=1893.0;
    } else {
     s0+=22848.0;
     s1+=2042.0;
    }
   } else {
    if(i60<7.230945629999042e-05){
     s0+=64.0;
     s1+=523.0;
    } else {
     s0+=171.0;
     s1+=13.0;
    }
   }
  } else {
   if(i67<-0.011873245239257812){
    if(i15<0.08320015668869019){
     s0+=973.0;
     s1+=124.0;
    } else {
     s0+=31.0;
     s1+=160.0;
    }
   } else {
    if(i49<-3.468872091616504e-05){
     s0+=173.0;
     s1+=2459.0;
    } else {
     s0+=1302.0;
     s1+=771.0;
    }
   }
  }
 }
} else {
 if(i7<0.005051120184361935){
  if(i2<0.002159714698791504){
   if(i29<1.0905578136444092){
    if(i17<1.0005613565444946){
     s0+=4.0;
    } else {
     s1+=237.0;
    }
   } else {
    if(i13<0.0002659093006514013){
     s0+=723.0;
     s1+=101.0;
    } else {
     s0+=968.0;
    }
   }
  } else {
   if(i32<0.0024999668821692467){
    s1+=538.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i32<0.0040134163573384285){
   if(i4<-0.0009497106075286865){
    s0+=16.0;
   } else {
    if(i49<-5.19881632499164e-06){
     s0+=58.0;
     s1+=13673.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   s0+=35.0;
  }
 }
}
if(i7<0.007683638483285904){
 if(i18<0.0016998830251395702){
  if(i9<1.0139381885528564){
   if(i46<-1.416431950929109e-05){
    if(i2<0.0017123818397521973){
     s0+=51.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=232.0;
    }
   } else {
    if(i36<1.0776758193969727){
     s0+=23235.0;
     s1+=631.0;
    } else {
     s0+=68157.0;
     s1+=304.0;
    }
   }
  } else {
   if(i55<-5.39842585567385e-06){
    s0+=95.0;
   } else {
    if(i53<-5.382227755035274e-06){
     s1+=620.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i0<-2.3424625396728516e-05){
   if(i29<1.0912797451019287){
    if(i12<0.9980467557907104){
     s0+=597.0;
     s1+=71.0;
    } else {
     s0+=35.0;
     s1+=199.0;
    }
   } else {
    if(i34<0.0009782223496586084){
     s0+=44.0;
     s1+=78.0;
    } else {
     s0+=14445.0;
     s1+=172.0;
    }
   }
  } else {
   if(i32<0.0014018355868756771){
    if(i50<0.9998750686645508){
     s0+=708.0;
     s1+=6.0;
    } else {
     s0+=1055.0;
     s1+=5133.0;
    }
   } else {
    if(i35<1.2587189674377441){
     s0+=2969.0;
     s1+=34.0;
    } else {
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i4<0.00032716989517211914){
  if(i0<-5.486607551574707e-05){
   if(i22<0.1781110167503357){
    if(i64<0.013278385624289513){
     s0+=3109.0;
     s1+=44.0;
    } else {
     s0+=328.0;
     s1+=87.0;
    }
   } else {
    if(i32<0.0013763869646936655){
     s0+=3.0;
    } else {
     s0+=8.0;
     s1+=163.0;
    }
   }
  } else {
   if(i9<0.9834737777709961){
    if(i25<1.470740795135498){
     s0+=154.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=29.0;
    }
   } else {
    s1+=417.0;
   }
  }
 } else {
  if(i38<0.05823272466659546){
   if(i73<-0.0074935853481292725){
    if(i6<1.0053677558898926){
     s0+=102.0;
     s1+=124.0;
    } else {
     s0+=10.0;
     s1+=127.0;
    }
   } else {
    if(i53<-2.0309935280238278e-05){
     s0+=12.0;
     s1+=35.0;
    } else {
     s0+=839.0;
     s1+=76.0;
    }
   }
  } else {
   if(i55<-7.725942850811407e-06){
    s0+=52.0;
   } else {
    if(i11<0.9859058260917664){
     s0+=332.0;
     s1+=1591.0;
    } else {
     s0+=35.0;
     s1+=14234.0;
    }
   }
  }
 }
}
if(i22<0.18659314513206482){
 if(i37<-2.6876183255808428e-05){
  if(i30<0.0016872882843017578){
   if(i50<1.0011281967163086){
    if(i64<0.012725939974188805){
     s0+=17.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i26<1.0123100280761719){
     s0+=49.0;
     s1+=694.0;
    } else {
     s0+=7.0;
     s1+=1506.0;
    }
   }
  } else {
   s0+=53.0;
  }
 } else {
  if(i27<1.1292840242385864){
   if(i4<0.00032657384872436523){
    if(i30<8.219480514526367e-05){
     s0+=74034.0;
     s1+=752.0;
    } else {
     s0+=24746.0;
     s1+=1742.0;
    }
   } else {
    if(i37<1.5898052879492752e-05){
     s0+=7005.0;
     s1+=1626.0;
    } else {
     s0+=2588.0;
     s1+=1606.0;
    }
   }
  } else {
   if(i50<1.0010814666748047){
    if(i18<0.006166478618979454){
     s0+=3975.0;
     s1+=119.0;
    } else {
     s0+=49.0;
     s1+=94.0;
    }
   } else {
    if(i20<0.02371971122920513){
     s0+=2543.0;
     s1+=796.0;
    } else {
     s0+=642.0;
     s1+=2234.0;
    }
   }
  }
 }
} else {
 if(i40<0.0020681198220700026){
  if(i11<1.046355962753296){
   if(i59<0.0005310599226504564){
    if(i40<0.001908344216644764){
     s0+=495.0;
    } else {
     s0+=36.0;
     s1+=8.0;
    }
   } else {
    if(i71<0.1888723075389862){
     s1+=4.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s1+=24.0;
  }
 } else {
  if(i3<1.0017143487930298){
   if(i18<0.004270118195563555){
    if(i0<-1.5616416931152344e-05){
     s0+=213.0;
     s1+=39.0;
    } else {
     s0+=32.0;
     s1+=78.0;
    }
   } else {
    if(i7<0.00703670596703887){
     s0+=4.0;
    } else {
     s0+=6.0;
     s1+=612.0;
    }
   }
  } else {
   if(i36<1.7041046619415283){
    if(i24<1.096811294555664){
     s0+=6.0;
     s1+=411.0;
    } else {
     s0+=3.0;
     s1+=12001.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
}
if(i1<-9.084412158699706e-05){
 if(i14<0.9119160175323486){
  if(i15<0.0734480619430542){
   if(i47<1.0025391578674316){
    if(i66<-6.585573373740772e-06){
     s1+=10.0;
    } else {
     s0+=649.0;
     s1+=40.0;
    }
   } else {
    if(i17<0.9879674315452576){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i24<1.074812889099121){
    if(i39<0.10276639461517334){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i18<0.011443637311458588){
     s0+=7.0;
     s1+=108.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i22<0.03226152062416077){
   if(i14<0.953768789768219){
    if(i50<1.0039582252502441){
     s0+=135.0;
     s1+=21.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i21<0.00030410289764404297){
     s0+=38.0;
     s1+=49.0;
    } else {
     s0+=6.0;
     s1+=112.0;
    }
   }
  } else {
   if(i69<5.794467142550275e-06){
    if(i48<6.562471389770508e-05){
     s0+=129.0;
     s1+=15831.0;
    } else {
     s0+=74.0;
    }
   } else {
    s0+=129.0;
   }
  }
 }
} else {
 if(i10<1.013479232788086){
  if(i6<1.0025413036346436){
   if(i32<0.000702576944604516){
    if(i40<0.0002551441721152514){
     s0+=17017.0;
     s1+=279.0;
    } else {
     s0+=60080.0;
     s1+=102.0;
    }
   } else {
    if(i31<0.0010524073150008917){
     s0+=3592.0;
     s1+=2696.0;
    } else {
     s0+=26806.0;
     s1+=655.0;
    }
   }
  } else {
   if(i58<1.0032644271850586){
    if(i13<0.0005158705171197653){
     s0+=621.0;
     s1+=1564.0;
    } else {
     s0+=953.0;
     s1+=61.0;
    }
   } else {
    if(i7<0.00537223881110549){
     s0+=2033.0;
     s1+=6.0;
    } else {
     s0+=688.0;
     s1+=419.0;
    }
   }
  }
 } else {
  if(i13<0.0003307155566290021){
   if(i49<-1.1911733054148499e-05){
    if(i46<2.4245491658803076e-05){
     s0+=126.0;
     s1+=2731.0;
    } else {
     s0+=318.0;
     s1+=9.0;
    }
   } else {
    if(i46<1.1752974387491122e-05){
     s0+=872.0;
     s1+=12.0;
    } else {
     s0+=123.0;
     s1+=63.0;
    }
   }
  } else {
   if(i33<1.17277193069458){
    if(i22<0.2560059428215027){
     s0+=1566.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    s1+=46.0;
   }
  }
 }
}
if(i6<1.0026333332061768){
 if(i26<1.0187143087387085){
  if(i30<8.374452590942383e-05){
   if(i18<0.005803664214909077){
    if(i35<1.0838289260864258){
     s0+=28013.0;
     s1+=788.0;
    } else {
     s0+=50128.0;
     s1+=124.0;
    }
   } else {
    if(i47<0.9997764825820923){
     s1+=141.0;
    } else {
     s0+=85.0;
    }
   }
  } else {
   if(i34<0.001034964225254953){
    if(i63<0.014716972596943378){
     s0+=4293.0;
     s1+=661.0;
    } else {
     s0+=1068.0;
     s1+=1677.0;
    }
   } else {
    if(i33<1.1658319234848022){
     s0+=26285.0;
     s1+=1041.0;
    } else {
     s1+=170.0;
    }
   }
  }
 } else {
  if(i18<0.0021602881606668234){
   if(i49<-1.8013010048889555e-05){
    if(i4<-0.0003024637699127197){
     s0+=4.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i37<2.9272441679495387e-05){
     s0+=392.0;
    } else {
     s0+=99.0;
     s1+=21.0;
    }
   }
  } else {
   if(i5<3.8504600524902344e-05){
    if(i60<-0.0009394939988851547){
     s0+=64.0;
     s1+=1033.0;
    } else {
     s0+=59.0;
     s1+=16.0;
    }
   } else {
    if(i30<7.984042167663574e-05){
     s1+=2.0;
    } else {
     s0+=30.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007055420428514481){
  if(i58<1.0029339790344238){
   if(i16<-0.0032518506050109863){
    if(i18<0.006745347753167152){
     s0+=187.0;
     s1+=18.0;
    } else {
     s0+=54.0;
     s1+=133.0;
    }
   } else {
    if(i4<0.00040394067764282227){
     s0+=85.0;
     s1+=2.0;
    } else {
     s0+=384.0;
     s1+=13328.0;
    }
   }
  } else {
   if(i15<0.14755651354789734){
    if(i65<0.001326250028796494){
     s0+=2245.0;
     s1+=265.0;
    } else {
     s0+=655.0;
     s1+=948.0;
    }
   } else {
    if(i49<-2.7065254471381195e-05){
     s0+=39.0;
     s1+=3513.0;
    } else {
     s0+=278.0;
     s1+=282.0;
    }
   }
  }
 } else {
  s0+=2227.0;
 }
}
if(i12<1.0047690868377686){
 if(i19<1.0121601819992065){
  if(i26<1.0212061405181885){
   if(i5<1.6033649444580078e-05){
    if(i59<0.0002164229517802596){
     s0+=84133.0;
     s1+=1549.0;
    } else {
     s0+=21966.0;
     s1+=1886.0;
    }
   } else {
    if(i52<0.24867062270641327){
     s0+=5146.0;
     s1+=1262.0;
    } else {
     s0+=57.0;
     s1+=459.0;
    }
   }
  } else {
   if(i43<0.008185372687876225){
    if(i49<-8.244938726420514e-06){
     s0+=152.0;
     s1+=279.0;
    } else {
     s0+=111.0;
     s1+=8.0;
    }
   } else {
    if(i53<-3.356964271006291e-06){
     s0+=10.0;
     s1+=437.0;
    } else {
     s0+=24.0;
    }
   }
  }
 } else {
  if(i22<0.17931842803955078){
   if(i0<2.1964311599731445e-05){
    if(i18<0.0027685621753335){
     s0+=396.0;
     s1+=13.0;
    } else {
     s0+=96.0;
     s1+=66.0;
    }
   } else {
    if(i18<0.001200338127091527){
     s0+=63.0;
     s1+=2.0;
    } else {
     s0+=166.0;
     s1+=1045.0;
    }
   }
  } else {
   if(i53<-3.5595433018897893e-06){
    if(i25<1.1935834884643555){
     s0+=4.0;
    } else {
     s0+=12.0;
     s1+=1073.0;
    }
   } else {
    s0+=25.0;
   }
  }
 }
} else {
 if(i16<0.0019502639770507812){
  if(i20<0.018450895324349403){
   if(i25<1.116804838180542){
    if(i35<1.0499491691589355){
     s0+=309.0;
    } else {
     s1+=930.0;
    }
   } else {
    if(i36<1.1706266403198242){
     s0+=2937.0;
     s1+=5.0;
    } else {
     s0+=415.0;
     s1+=202.0;
    }
   }
  } else {
   if(i0<3.039836883544922e-06){
    if(i21<-0.00043067336082458496){
     s0+=238.0;
     s1+=93.0;
    } else {
     s0+=9.0;
     s1+=58.0;
    }
   } else {
    if(i39<0.08271956443786621){
     s0+=195.0;
     s1+=642.0;
    } else {
     s0+=69.0;
     s1+=3405.0;
    }
   }
  }
 } else {
  if(i13<0.0013479506596922874){
   s1+=10864.0;
  } else {
   s0+=49.0;
  }
 }
}
if(i4<0.0005706548690795898){
 if(i8<1.014552116394043){
  if(i63<0.5144110918045044){
   if(i18<0.0017282022163271904){
    if(i25<1.0817922353744507){
     s0+=16500.0;
     s1+=594.0;
    } else {
     s0+=72432.0;
     s1+=379.0;
    }
   } else {
    if(i17<0.9952431321144104){
     s0+=15779.0;
     s1+=670.0;
    } else {
     s0+=4578.0;
     s1+=2692.0;
    }
   }
  } else {
   if(i38<0.0582183301448822){
    s0+=67.0;
   } else {
    s1+=167.0;
   }
  }
 } else {
  if(i32<0.0006856404943391681){
   if(i44<1.0023384094238281){
    if(i69<-9.521879178464587e-07){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=231.0;
     s1+=2.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i47<1.0015994310379028){
    if(i28<1.0164637565612793){
     s0+=10.0;
     s1+=47.0;
    } else {
     s1+=543.0;
    }
   } else {
    if(i36<1.29445219039917){
     s0+=96.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i15<0.17141973972320557){
  if(i7<0.004011405166238546){
   if(i2<0.0018061399459838867){
    if(i46<-8.900664397515357e-06){
     s0+=231.0;
     s1+=178.0;
    } else {
     s0+=4370.0;
     s1+=93.0;
    }
   } else {
    if(i25<1.1180615425109863){
     s1+=434.0;
    } else {
     s0+=233.0;
     s1+=81.0;
    }
   }
  } else {
   if(i22<0.009797453880310059){
    if(i14<0.9800868034362793){
     s0+=462.0;
     s1+=90.0;
    } else {
     s0+=4.0;
     s1+=49.0;
    }
   } else {
    if(i55<-6.168154413899174e-06){
     s0+=185.0;
     s1+=1.0;
    } else {
     s0+=1134.0;
     s1+=5249.0;
    }
   }
  }
 } else {
  if(i25<1.1935834884643555){
   if(i39<0.13396131992340088){
    s1+=18.0;
   } else {
    s0+=215.0;
   }
  } else {
   if(i49<-3.2559615647187456e-05){
    if(i0<1.9252300262451172e-05){
     s0+=10.0;
     s1+=220.0;
    } else {
     s0+=1.0;
     s1+=11833.0;
    }
   } else {
    if(i32<0.0015503617469221354){
     s0+=19.0;
     s1+=875.0;
    } else {
     s0+=48.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i26<1.0181405544281006){
 if(i6<1.0026342868804932){
  if(i20<0.08716651797294617){
   if(i30<7.075071334838867e-05){
    if(i38<0.2397882640361786){
     s0+=75791.0;
     s1+=813.0;
    } else {
     s0+=53.0;
     s1+=59.0;
    }
   } else {
    if(i31<0.0010229828767478466){
     s0+=5332.0;
     s1+=2588.0;
    } else {
     s0+=28570.0;
     s1+=845.0;
    }
   }
  } else {
   if(i57<0.0011757367756217718){
    s0+=24.0;
   } else {
    s1+=289.0;
   }
  }
 } else {
  if(i64<0.0025134009774774313){
   if(i30<0.0005086064338684082){
    if(i26<1.0065245628356934){
     s0+=316.0;
     s1+=443.0;
    } else {
     s0+=107.0;
     s1+=1177.0;
    }
   } else {
    if(i1<-8.655428246129304e-05){
     s0+=108.0;
     s1+=488.0;
    } else {
     s0+=3690.0;
     s1+=252.0;
    }
   }
  } else {
   if(i19<0.9489254355430603){
    if(i29<1.600679874420166){
     s0+=324.0;
     s1+=52.0;
    } else {
     s0+=27.0;
     s1+=100.0;
    }
   } else {
    if(i22<0.06776818633079529){
     s0+=403.0;
     s1+=614.0;
    } else {
     s0+=199.0;
     s1+=2635.0;
    }
   }
  }
 }
} else {
 if(i3<1.0026564598083496){
  if(i7<0.006305333226919174){
   if(i20<0.0076155937276780605){
    if(i46<1.0753202332125511e-05){
     s0+=143.0;
    } else {
     s0+=24.0;
     s1+=31.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s1+=3.0;
    } else {
     s0+=588.0;
     s1+=20.0;
    }
   }
  } else {
   if(i21<-0.001067429780960083){
    s0+=9.0;
   } else {
    if(i44<0.9983068704605103){
     s0+=26.0;
     s1+=27.0;
    } else {
     s0+=13.0;
     s1+=638.0;
    }
   }
  }
 } else {
  if(i20<0.005247903056442738){
   if(i16<0.0019981861114501953){
    if(i27<1.0783891677856445){
     s1+=154.0;
    } else {
     s0+=403.0;
     s1+=20.0;
    }
   } else {
    if(i37<9.530111128697172e-06){
     s1+=268.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i25<1.7041046619415283){
    if(i22<0.14458847045898438){
     s0+=188.0;
     s1+=1394.0;
    } else {
     s0+=19.0;
     s1+=11580.0;
    }
   } else {
    s0+=9.0;
   }
  }
 }
}
if(i3<1.0038650035858154){
 if(i24<1.1403480768203735){
  if(i4<0.00029212236404418945){
   if(i18<0.0013733640080317855){
    if(i43<0.00195284653455019){
     s0+=74830.0;
     s1+=376.0;
    } else {
     s0+=2718.0;
     s1+=107.0;
    }
   } else {
    if(i23<0.0009020448196679354){
     s0+=2158.0;
     s1+=1781.0;
    } else {
     s0+=22849.0;
     s1+=498.0;
    }
   }
  } else {
   if(i51<-0.00017014809418469667){
    if(i1<-4.2439030949026346e-05){
     s0+=515.0;
     s1+=1129.0;
    } else {
     s0+=1068.0;
     s1+=397.0;
    }
   } else {
    if(i32<0.0007896185852587223){
     s0+=3295.0;
     s1+=30.0;
    } else {
     s0+=3811.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i18<0.001545739360153675){
   s0+=731.0;
  } else {
   if(i22<0.02384468913078308){
    if(i73<-0.015866905450820923){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=116.0;
     s1+=11.0;
    }
   } else {
    if(i35<1.1804778575897217){
     s0+=93.0;
     s1+=46.0;
    } else {
     s0+=47.0;
     s1+=1422.0;
    }
   }
  }
 }
} else {
 if(i34<0.0021074290852993727){
  if(i29<1.116804838180542){
   if(i36<1.0520559549331665){
    s0+=647.0;
   } else {
    if(i23<0.0011372441658750176){
     s1+=2759.0;
    } else {
     s0+=78.0;
    }
   }
  } else {
   if(i20<0.015295097604393959){
    s0+=3478.0;
   } else {
    s1+=38.0;
   }
  }
 } else {
  if(i15<0.07181668281555176){
   if(i73<-0.0018693208694458008){
    if(i61<0.0005233839037828147){
     s0+=24.0;
     s1+=20.0;
    } else {
     s0+=17.0;
     s1+=299.0;
    }
   } else {
    if(i0<0.00015795230865478516){
     s0+=123.0;
     s1+=9.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i16<-0.0011427998542785645){
    if(i31<0.0038855315651744604){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=688.0;
    }
   } else {
    if(i31<0.002247324911877513){
     s0+=1.0;
    } else {
     s0+=21.0;
     s1+=13747.0;
    }
   }
  }
 }
}
if(i10<1.017055869102478){
 if(i7<0.013990071602165699){
  if(i17<1.008970022201538){
   if(i18<0.0017335031880065799){
    if(i32<0.0005748281837441027){
     s0+=71362.0;
     s1+=205.0;
    } else {
     s0+=19669.0;
     s1+=810.0;
    }
   } else {
    if(i3<0.9984855651855469){
     s0+=16597.0;
     s1+=518.0;
    } else {
     s0+=4869.0;
     s1+=3853.0;
    }
   }
  } else {
   if(i43<0.0009863676968961954){
    if(i25<1.4586446285247803){
     s0+=2.0;
     s1+=1040.0;
    } else {
     s0+=51.0;
    }
   } else {
    if(i31<0.002617242746055126){
     s0+=1018.0;
     s1+=54.0;
    } else {
     s0+=99.0;
     s1+=680.0;
    }
   }
  }
 } else {
  if(i11<0.9365639686584473){
   if(i23<0.01459495723247528){
    if(i32<0.003064489923417568){
     s0+=813.0;
     s1+=60.0;
    } else {
     s0+=141.0;
     s1+=86.0;
    }
   } else {
    if(i9<0.9389097690582275){
     s0+=71.0;
     s1+=28.0;
    } else {
     s0+=13.0;
     s1+=134.0;
    }
   }
  } else {
   if(i53<-3.9192582335090265e-07){
    if(i20<0.01602485030889511){
     s0+=22.0;
     s1+=24.0;
    } else {
     s0+=29.0;
     s1+=2717.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
} else {
 if(i8<1.0196523666381836){
  if(i7<0.005057089030742645){
   if(i34<0.0006250994047150016){
    if(i57<0.0014589739730581641){
     s1+=282.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i35<1.0905089378356934){
     s1+=51.0;
    } else {
     s0+=1167.0;
     s1+=117.0;
    }
   }
  } else {
   if(i47<0.9986141324043274){
    if(i56<1.1713464260101318){
     s0+=60.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i2<-0.0010130703449249268){
     s0+=14.0;
     s1+=12.0;
    } else {
     s0+=28.0;
     s1+=1688.0;
    }
   }
  }
 } else {
  if(i53<-3.1884114832791965e-06){
   if(i13<0.0008065343135967851){
    if(i35<1.1672112941741943){
     s0+=80.0;
     s1+=1094.0;
    } else {
     s0+=15.0;
     s1+=11090.0;
    }
   } else {
    s0+=49.0;
   }
  } else {
   s0+=109.0;
  }
 }
}
if(i17<1.0089073181152344){
 if(i1<-8.826566045172513e-05){
  if(i22<0.050447672605514526){
   if(i24<1.0643947124481201){
    if(i73<-0.01112830638885498){
     s0+=9.0;
     s1+=6.0;
    } else {
     s0+=695.0;
     s1+=6.0;
    }
   } else {
    if(i74<-0.0860033929347992){
     s0+=92.0;
     s1+=150.0;
    } else {
     s0+=119.0;
     s1+=13.0;
    }
   }
  } else {
   if(i23<0.0023045148700475693){
    if(i36<1.09272301197052){
     s1+=72.0;
    } else {
     s0+=136.0;
    }
   } else {
    if(i62<-0.010663032531738281){
     s0+=36.0;
     s1+=8.0;
    } else {
     s0+=73.0;
     s1+=3787.0;
    }
   }
  }
 } else {
  if(i44<1.002607822418213){
   if(i19<1.0090675354003906){
    if(i18<0.0017285477370023727){
     s0+=86313.0;
     s1+=864.0;
    } else {
     s0+=15830.0;
     s1+=2410.0;
    }
   } else {
    if(i35<1.0907460451126099){
     s0+=34.0;
     s1+=518.0;
    } else {
     s0+=1267.0;
     s1+=176.0;
    }
   }
  } else {
   if(i23<0.0009542510379105806){
    if(i36<1.058152437210083){
     s0+=905.0;
    } else {
     s1+=883.0;
    }
   } else {
    if(i8<1.017221450805664){
     s0+=9522.0;
     s1+=1481.0;
    } else {
     s0+=155.0;
     s1+=425.0;
    }
   }
  }
 }
} else {
 if(i35<1.1706266403198242){
  if(i13<0.00032519688829779625){
   if(i12<0.9976867437362671){
    if(i11<1.029726266860962){
     s0+=58.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i3<1.0057709217071533){
     s0+=59.0;
     s1+=109.0;
    } else {
     s0+=17.0;
     s1+=2244.0;
    }
   }
  } else {
   s0+=1302.0;
  }
 } else {
  if(i32<7.642851414857432e-05){
   if(i46<-1.3820204003422987e-05){
    s1+=15.0;
   } else {
    s0+=31.0;
   }
  } else {
   if(i49<-1.0932444638456218e-05){
    if(i2<0.0005505681037902832){
     s0+=3.0;
     s1+=41.0;
    } else {
     s1+=10977.0;
    }
   } else {
    s0+=17.0;
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i15<0.20892611145973206){
  if(i7<0.004025985952466726){
   if(i34<0.0006928443908691406){
    if(i59<0.00011798631749115884){
     s0+=23999.0;
     s1+=264.0;
    } else {
     s0+=4290.0;
     s1+=822.0;
    }
   } else {
    if(i25<1.1980679035186768){
     s0+=46381.0;
     s1+=3.0;
    } else {
     s0+=17848.0;
     s1+=302.0;
    }
   }
  } else {
   if(i31<0.0012045393232256174){
    if(i58<0.9993674755096436){
     s0+=2192.0;
    } else {
     s0+=73.0;
     s1+=2689.0;
    }
   } else {
    if(i4<0.00024819374084472656){
     s0+=16707.0;
     s1+=452.0;
    } else {
     s0+=2576.0;
     s1+=1948.0;
    }
   }
  }
 } else {
  if(i54<0.043475329875946045){
   if(i0<1.2159347534179688e-05){
    if(i22<0.31730756163597107){
     s0+=191.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i18<0.0013131347950547934){
     s0+=26.0;
    } else {
     s0+=3.0;
     s1+=102.0;
    }
   }
  } else {
   if(i25<1.6811659336090088){
    if(i5<-5.543231964111328e-06){
     s0+=27.0;
     s1+=154.0;
    } else {
     s0+=10.0;
     s1+=1208.0;
    }
   } else {
    s0+=21.0;
   }
  }
 }
} else {
 if(i31<0.002390485256910324){
  if(i57<0.000679526012390852){
   if(i48<1.2576580047607422e-05){
    if(i0<0.0003134608268737793){
     s0+=14.0;
     s1+=2095.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i11<1.015453815460205){
     s0+=96.0;
     s1+=15.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i25<1.116804838180542){
    s1+=161.0;
   } else {
    s0+=1934.0;
   }
  }
 } else {
  if(i9<0.976269006729126){
   if(i32<0.002123746555298567){
    if(i39<0.05848073959350586){
     s0+=42.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    if(i1<-0.00018364886636845767){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=75.0;
    }
   }
  } else {
   if(i15<0.1016799807548523){
    if(i74<0.020827502012252808){
     s0+=14.0;
     s1+=558.0;
    } else {
     s0+=41.0;
     s1+=12.0;
    }
   } else {
    if(i18<0.0025077196769416332){
     s0+=8.0;
     s1+=1476.0;
    } else {
     s0+=1.0;
     s1+=11962.0;
    }
   }
  }
 }
}
if(i4<0.0005705952644348145){
 if(i18<0.0017301690531894565){
  if(i18<0.0010931054130196571){
   if(i8<0.9958462715148926){
    if(i45<0.00014264744822867215){
     s0+=494.0;
     s1+=57.0;
    } else {
     s0+=13445.0;
     s1+=88.0;
    }
   } else {
    if(i19<1.0085458755493164){
     s0+=59234.0;
     s1+=83.0;
    } else {
     s0+=1029.0;
     s1+=34.0;
    }
   }
  } else {
   if(i36<1.0776758193969727){
    if(i44<0.9989715814590454){
     s0+=2352.0;
     s1+=6.0;
    } else {
     s0+=456.0;
     s1+=558.0;
    }
   } else {
    if(i5<2.8014183044433594e-06){
     s0+=11128.0;
     s1+=46.0;
    } else {
     s0+=1073.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i2<-0.0004642605781555176){
   if(i71<0.18744036555290222){
    if(i57<0.01092839241027832){
     s0+=17348.0;
     s1+=581.0;
    } else {
     s0+=366.0;
     s1+=143.0;
    }
   } else {
    if(i52<0.09533190727233887){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=122.0;
    }
   }
  } else {
   if(i50<1.0000449419021606){
    if(i37<5.1565453759394586e-05){
     s0+=1864.0;
     s1+=36.0;
    } else {
     s1+=200.0;
    }
   } else {
    if(i36<1.044745922088623){
     s0+=248.0;
    } else {
     s0+=594.0;
     s1+=3027.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i13<0.0002617553109303117){
   if(i23<0.0010843509808182716){
    s1+=2995.0;
   } else {
    if(i12<1.005507230758667){
     s0+=266.0;
     s1+=43.0;
    } else {
     s0+=43.0;
     s1+=81.0;
    }
   }
  } else {
   if(i29<1.1762815713882446){
    s0+=4750.0;
   } else {
    if(i20<0.015618773177266121){
     s0+=4.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i6<1.0051677227020264){
   if(i24<1.10249662399292){
    if(i39<0.07893985509872437){
     s0+=973.0;
     s1+=110.0;
    } else {
     s0+=178.0;
     s1+=261.0;
    }
   } else {
    if(i22<0.06594499945640564){
     s0+=125.0;
     s1+=115.0;
    } else {
     s0+=82.0;
     s1+=3523.0;
    }
   }
  } else {
   if(i15<0.07538220286369324){
    if(i74<-0.01979997754096985){
     s0+=53.0;
     s1+=281.0;
    } else {
     s0+=110.0;
     s1+=19.0;
    }
   } else {
    if(i2<0.0007160305976867676){
     s0+=70.0;
     s1+=213.0;
    } else {
     s0+=45.0;
     s1+=11779.0;
    }
   }
  }
 }
}
if(i4<0.0005945563316345215){
 if(i38<0.2217993140220642){
  if(i4<0.0003013014793395996){
   if(i32<0.0006684710970148444){
    if(i2<-0.00014585256576538086){
     s0+=31705.0;
     s1+=291.0;
    } else {
     s0+=42159.0;
     s1+=35.0;
    }
   } else {
    if(i36<1.0903575420379639){
     s0+=2399.0;
     s1+=1740.0;
    } else {
     s0+=27409.0;
     s1+=775.0;
    }
   }
  } else {
   if(i8<1.0088379383087158){
    if(i54<0.021623609587550163){
     s0+=4631.0;
     s1+=460.0;
    } else {
     s0+=1052.0;
     s1+=614.0;
    }
   } else {
    if(i25<1.116804838180542){
     s0+=38.0;
     s1+=474.0;
    } else {
     s0+=320.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i18<0.0024705645628273487){
   if(i61<0.0009822617284953594){
    if(i1<-5.653084008372389e-05){
     s1+=4.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i53<-7.571350124635501e-06){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=168.0;
     s1+=2.0;
    }
   }
  } else {
   if(i45<0.0025928157847374678){
    if(i7<0.004490258172154427){
     s0+=12.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i20<0.03266900032758713){
     s0+=12.0;
     s1+=23.0;
    } else {
     s1+=613.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007044102530926466){
  if(i27<1.1672133207321167){
   if(i13<0.00030982960015535355){
    if(i8<1.0085475444793701){
     s0+=755.0;
     s1+=1238.0;
    } else {
     s0+=218.0;
     s1+=4902.0;
    }
   } else {
    if(i38<0.17738190293312073){
     s0+=1795.0;
     s1+=364.0;
    } else {
     s0+=92.0;
     s1+=494.0;
    }
   }
  } else {
   if(i39<0.008888185024261475){
    if(i4<0.0015859603881835938){
     s0+=211.0;
     s1+=70.0;
    } else {
     s0+=7.0;
     s1+=111.0;
    }
   } else {
    if(i16<-0.0040569007396698){
     s0+=83.0;
     s1+=101.0;
    } else {
     s0+=67.0;
     s1+=11885.0;
    }
   }
  }
 } else {
  if(i60<-0.00799139030277729){
   s1+=1.0;
  } else {
   s0+=3300.0;
  }
 }
}
if(i26<1.0177959203720093){
 if(i3<1.0038676261901855){
  if(i38<0.2211030125617981){
   if(i57<0.005211060866713524){
    if(i20<0.006775497458875179){
     s0+=68700.0;
     s1+=537.0;
    } else {
     s0+=39853.0;
     s1+=3591.0;
    }
   } else {
    if(i22<0.08876904845237732){
     s0+=2133.0;
     s1+=195.0;
    } else {
     s0+=234.0;
     s1+=619.0;
    }
   }
  } else {
   if(i45<0.002249333541840315){
    s0+=99.0;
   } else {
    if(i36<1.6811659336090088){
     s0+=44.0;
     s1+=424.0;
    } else {
     s0+=26.0;
    }
   }
  }
 } else {
  if(i18<0.0019530088175088167){
   if(i13<0.00017719765310175717){
    if(i4<0.001037299633026123){
     s0+=30.0;
     s1+=1.0;
    } else {
     s1+=620.0;
    }
   } else {
    if(i16<0.0023467540740966797){
     s0+=2813.0;
     s1+=13.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i47<0.9997889399528503){
    if(i55<-2.4261144062620588e-06){
     s0+=414.0;
     s1+=4.0;
    } else {
     s1+=90.0;
    }
   } else {
    if(i27<1.0380836725234985){
     s0+=96.0;
     s1+=5.0;
    } else {
     s0+=414.0;
     s1+=3992.0;
    }
   }
  }
 }
} else {
 if(i0<1.6033649444580078e-05){
  if(i32<0.001985743874683976){
   if(i49<-6.765963007637765e-06){
    if(i30<0.00044906139373779297){
     s0+=76.0;
     s1+=248.0;
    } else {
     s0+=272.0;
     s1+=8.0;
    }
   } else {
    if(i44<1.0033555030822754){
     s0+=408.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   }
  } else {
   if(i38<0.15113228559494019){
    if(i64<0.0021579647436738014){
     s0+=17.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i46<7.608707528561354e-05){
     s1+=281.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i1<-7.37582886358723e-05){
   if(i55<-7.172812274802709e-06){
    s0+=96.0;
   } else {
    if(i8<1.0200297832489014){
     s0+=46.0;
     s1+=1126.0;
    } else {
     s0+=8.0;
     s1+=11434.0;
    }
   }
  } else {
   if(i23<0.0009931349195539951){
    s1+=637.0;
   } else {
    if(i20<0.016851257532835007){
     s0+=588.0;
     s1+=23.0;
    } else {
     s0+=91.0;
     s1+=527.0;
    }
   }
  }
 }
}
if(i1<-8.767819963395596e-05){
 if(i15<0.041282445192337036){
  if(i20<0.05589570105075836){
   if(i37<0.00023496930953115225){
    if(i73<-0.00647774338722229){
     s0+=20.0;
     s1+=59.0;
    } else {
     s0+=71.0;
     s1+=5.0;
    }
   } else {
    if(i72<0.7088955044746399){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=668.0;
     s1+=15.0;
    }
   }
  } else {
   if(i45<0.00966438464820385){
    if(i19<0.9658527374267578){
     s0+=45.0;
     s1+=10.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i14<0.8486261963844299){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i34<0.0024065817706286907){
   if(i23<0.0010736514814198017){
    s1+=942.0;
   } else {
    s0+=305.0;
   }
  } else {
   if(i33<0.996726393699646){
    if(i11<0.9253509044647217){
     s0+=44.0;
     s1+=8.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i67<-0.015410453081130981){
     s0+=21.0;
     s1+=32.0;
    } else {
     s0+=70.0;
     s1+=14873.0;
    }
   }
  }
 }
} else {
 if(i9<1.006575107574463){
  if(i18<0.0017192027298733592){
   if(i33<1.0178465843200684){
    if(i12<0.9977318048477173){
     s0+=5425.0;
     s1+=29.0;
    } else {
     s0+=5130.0;
     s1+=433.0;
    }
   } else {
    if(i36<1.0776758193969727){
     s0+=15964.0;
     s1+=298.0;
    } else {
     s0+=63029.0;
     s1+=190.0;
    }
   }
  } else {
   if(i31<0.0012073649559170008){
    if(i35<1.0440731048583984){
     s0+=1947.0;
     s1+=32.0;
    } else {
     s0+=448.0;
     s1+=2351.0;
    }
   } else {
    if(i3<1.0011423826217651){
     s0+=18715.0;
     s1+=677.0;
    } else {
     s0+=839.0;
     s1+=1151.0;
    }
   }
  }
 } else {
  if(i58<1.0032920837402344){
   if(i45<0.0007498518680222332){
    if(i36<1.0520559549331665){
     s0+=226.0;
    } else {
     s0+=159.0;
     s1+=1939.0;
    }
   } else {
    if(i7<0.006421025842428207){
     s0+=1826.0;
     s1+=143.0;
    } else {
     s0+=15.0;
     s1+=716.0;
    }
   }
  } else {
   if(i27<1.1700975894927979){
    if(i76<0.0030655860900878906){
     s0+=1638.0;
     s1+=23.0;
    } else {
     s0+=33.0;
     s1+=56.0;
    }
   } else {
    s1+=92.0;
   }
  }
 }
}
if(i11<1.0143284797668457){
 if(i4<0.0005390048027038574){
  if(i39<0.2062883973121643){
   if(i32<0.0007107785204425454){
    if(i40<0.00025389017537236214){
     s0+=17309.0;
     s1+=282.0;
    } else {
     s0+=61480.0;
     s1+=135.0;
    }
   } else {
    if(i31<0.0010359818115830421){
     s0+=2347.0;
     s1+=2669.0;
    } else {
     s0+=27604.0;
     s1+=965.0;
    }
   }
  } else {
   if(i46<1.459700615669135e-05){
    if(i7<0.005070778541266918){
     s0+=96.0;
     s1+=1.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i75<0.13540107011795044){
     s1+=221.0;
    } else {
     s0+=38.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i67<-0.0005074739456176758){
   if(i42<0.09346087276935577){
    if(i58<1.003394365310669){
     s0+=495.0;
     s1+=1191.0;
    } else {
     s0+=825.0;
     s1+=380.0;
    }
   } else {
    if(i24<1.0476930141448975){
     s0+=202.0;
     s1+=22.0;
    } else {
     s0+=176.0;
     s1+=2407.0;
    }
   }
  } else {
   if(i57<0.0027485268656164408){
    if(i52<0.045135512948036194){
     s0+=4510.0;
     s1+=1036.0;
    } else {
     s0+=124.0;
     s1+=317.0;
    }
   } else {
    if(i25<1.1843671798706055){
     s0+=13.0;
    } else {
     s0+=28.0;
     s1+=378.0;
    }
   }
  }
 }
} else {
 if(i1<-6.35802571196109e-05){
  if(i9<1.0143743753433228){
   if(i76<0.002529919147491455){
    if(i20<0.009913614019751549){
     s0+=201.0;
     s1+=26.0;
    } else {
     s0+=16.0;
     s1+=180.0;
    }
   } else {
    if(i7<0.0030010570771992207){
     s0+=18.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=1347.0;
    }
   }
  } else {
   if(i55<-7.533166808570968e-06){
    s0+=14.0;
   } else {
    if(i16<0.0013404488563537598){
     s0+=1.0;
     s1+=562.0;
    } else {
     s1+=11333.0;
    }
   }
  }
 } else {
  if(i35<1.0953161716461182){
   s1+=467.0;
  } else {
   if(i22<0.18119600415229797){
    if(i20<0.01750955730676651){
     s0+=709.0;
     s1+=27.0;
    } else {
     s0+=142.0;
     s1+=107.0;
    }
   } else {
    if(i18<0.002176824491471052){
     s0+=64.0;
    } else {
     s0+=28.0;
     s1+=221.0;
    }
   }
  }
 }
}
if(i12<1.0044209957122803){
 if(i26<1.0198003053665161){
  if(i18<0.0017335471929982305){
   if(i32<0.000574491685256362){
    if(i35<1.1354830265045166){
     s0+=65652.0;
     s1+=90.0;
    } else {
     s0+=5274.0;
     s1+=89.0;
    }
   } else {
    if(i59<0.00021418131655082107){
     s0+=16055.0;
     s1+=318.0;
    } else {
     s0+=2620.0;
     s1+=452.0;
    }
   }
  } else {
   if(i2<-0.0005144774913787842){
    if(i42<0.27527278661727905){
     s0+=17414.0;
     s1+=661.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i58<1.0002700090408325){
     s0+=2662.0;
     s1+=411.0;
    } else {
     s0+=1499.0;
     s1+=3514.0;
    }
   }
  }
 } else {
  if(i6<1.0003693103790283){
   if(i1<-8.705393702257425e-05){
    if(i53<-1.6959324057097547e-05){
     s0+=13.0;
    } else {
     s1+=122.0;
    }
   } else {
    if(i21<-0.00044268369674682617){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=297.0;
     s1+=2.0;
    }
   }
  } else {
   if(i22<0.17174404859542847){
    if(i2<0.00036650896072387695){
     s0+=266.0;
     s1+=177.0;
    } else {
     s0+=63.0;
     s1+=621.0;
    }
   } else {
    if(i25<1.7041046619415283){
     s0+=33.0;
     s1+=1290.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
} else {
 if(i25<1.1979892253875732){
  if(i13<0.0002304987865500152){
   if(i53<-5.612223958451068e-06){
    if(i45<0.0011869263835251331){
     s0+=3.0;
     s1+=2046.0;
    } else {
     s0+=34.0;
     s1+=65.0;
    }
   } else {
    s0+=85.0;
   }
  } else {
   if(i35<1.0790096521377563){
    if(i62<0.0007881522178649902){
     s0+=416.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=2884.0;
   }
  }
 } else {
  if(i24<1.0744926929473877){
   if(i6<1.0063409805297852){
    if(i29<1.3219363689422607){
     s0+=91.0;
     s1+=64.0;
    } else {
     s0+=614.0;
     s1+=40.0;
    }
   } else {
    if(i16<-0.0017486214637756348){
     s0+=28.0;
     s1+=97.0;
    } else {
     s1+=173.0;
    }
   }
  } else {
   if(i67<-0.012338310480117798){
    if(i34<0.018609769642353058){
     s0+=74.0;
     s1+=61.0;
    } else {
     s0+=4.0;
     s1+=90.0;
    }
   } else {
    if(i7<0.0029759714379906654){
     s0+=108.0;
     s1+=142.0;
    } else {
     s0+=193.0;
     s1+=13888.0;
    }
   }
  }
 }
}
if(i21<0.00021070241928100586){
 if(i4<0.00043469667434692383){
  if(i39<0.2063690721988678){
   if(i4<0.00019305944442749023){
    if(i29<1.0905578136444092){
     s0+=23216.0;
     s1+=1520.0;
    } else {
     s0+=74208.0;
     s1+=744.0;
    }
   } else {
    if(i23<0.0009262270177714527){
     s0+=1136.0;
     s1+=1019.0;
    } else {
     s0+=8323.0;
     s1+=353.0;
    }
   }
  } else {
   if(i23<0.0025688123423606157){
    if(i50<1.000819444656372){
     s0+=105.0;
    } else {
     s0+=13.0;
     s1+=12.0;
    }
   } else {
    if(i27<1.1281554698944092){
     s0+=9.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i54<0.03202596306800842){
   if(i67<0.0015669465065002441){
    if(i52<0.0357355996966362){
     s0+=5609.0;
     s1+=729.0;
    } else {
     s0+=1034.0;
     s1+=662.0;
    }
   } else {
    if(i34<0.001323580858297646){
     s1+=518.0;
    } else {
     s0+=568.0;
     s1+=293.0;
    }
   }
  } else {
   if(i3<0.9999045133590698){
    if(i16<-0.003725677728652954){
     s0+=553.0;
     s1+=118.0;
    } else {
     s0+=52.0;
     s1+=110.0;
    }
   } else {
    if(i38<0.10351860523223877){
     s0+=247.0;
     s1+=530.0;
    } else {
     s0+=221.0;
     s1+=4316.0;
    }
   }
  }
 }
} else {
 if(i50<1.0009018182754517){
  if(i34<0.012140238657593727){
   if(i35<1.0867587327957153){
    if(i9<1.0070092678070068){
     s0+=11.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=490.0;
   }
  } else {
   s1+=328.0;
  }
 } else {
  if(i16<0.0018955469131469727){
   if(i18<0.001917953253723681){
    if(i31<0.0008123053703457117){
     s1+=289.0;
    } else {
     s0+=295.0;
     s1+=7.0;
    }
   } else {
    if(i42<0.01713050715625286){
     s0+=183.0;
     s1+=354.0;
    } else {
     s0+=3.0;
     s1+=712.0;
    }
   }
  } else {
   if(i66<1.4764026673219632e-05){
    if(i11<1.015930414199829){
     s0+=16.0;
     s1+=1041.0;
    } else {
     s1+=10503.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i4<0.0005949139595031738){
 if(i10<1.0186007022857666){
  if(i4<0.000280916690826416){
   if(i25<1.116391897201538){
    if(i42<0.010158069431781769){
     s0+=19170.0;
     s1+=248.0;
    } else {
     s0+=7756.0;
     s1+=1795.0;
    }
   } else {
    if(i47<1.0025792121887207){
     s0+=75415.0;
     s1+=686.0;
    } else {
     s0+=52.0;
     s1+=48.0;
    }
   }
  } else {
   if(i32<0.000800437992438674){
    if(i68<0.17892608046531677){
     s0+=4112.0;
     s1+=11.0;
    } else {
     s0+=24.0;
     s1+=27.0;
    }
   } else {
    if(i15<0.04461941123008728){
     s0+=1821.0;
     s1+=125.0;
    } else {
     s0+=1104.0;
     s1+=1464.0;
    }
   }
  }
 } else {
  if(i32<0.0006217864574864507){
   if(i12<1.0008854866027832){
    if(i47<1.0006930828094482){
     s0+=346.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i66<4.119057393836556e-06){
     s0+=21.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i2<-0.0006209611892700195){
    if(i65<-0.0007990363519638777){
     s0+=6.0;
     s1+=65.0;
    } else {
     s0+=152.0;
     s1+=10.0;
    }
   } else {
    if(i24<1.1148730516433716){
     s0+=26.0;
     s1+=210.0;
    } else {
     s1+=514.0;
    }
   }
  }
 }
} else {
 if(i15<0.171440988779068){
  if(i27<1.0453402996063232){
   if(i13<0.00017643858154769987){
    if(i46<1.4729771464772057e-05){
     s1+=53.0;
    } else {
     s0+=84.0;
    }
   } else {
    s0+=1454.0;
   }
  } else {
   if(i36<1.0967509746551514){
    s1+=2229.0;
   } else {
    if(i29<1.1969701051712036){
     s0+=3303.0;
     s1+=731.0;
    } else {
     s0+=1284.0;
     s1+=3022.0;
    }
   }
  }
 } else {
  if(i34<0.00205517397262156){
   if(i14<1.0254321098327637){
    s0+=192.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i31<0.0024341968819499016){
    if(i11<1.0177853107452393){
     s0+=16.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i37<0.0004643608699552715){
     s0+=55.0;
     s1+=13199.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i0<6.407499313354492e-05){
 if(i22<0.2011924684047699){
  if(i64<0.00447261705994606){
   if(i19<1.0100181102752686){
    if(i32<0.0007081667426973581){
     s0+=77981.0;
     s1+=439.0;
    } else {
     s0+=31046.0;
     s1+=3562.0;
    }
   } else {
    if(i26<1.01812744140625){
     s0+=1311.0;
     s1+=405.0;
    } else {
     s0+=372.0;
     s1+=668.0;
    }
   }
  } else {
   if(i52<0.30423855781555176){
    if(i6<1.00218665599823){
     s0+=2614.0;
     s1+=282.0;
    } else {
     s0+=679.0;
     s1+=642.0;
    }
   } else {
    if(i51<-0.0003136738087050617){
     s0+=1.0;
     s1+=330.0;
    } else {
     s0+=164.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i7<0.006278231739997864){
   if(i50<1.0012199878692627){
    if(i61<0.0011838306672871113){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=216.0;
    }
   } else {
    if(i59<-0.00011654926493065432){
     s0+=1.0;
     s1+=16.0;
    } else {
     s0+=91.0;
     s1+=28.0;
    }
   }
  } else {
   if(i53<-1.7274669517064467e-06){
    if(i1<-5.683476774720475e-05){
     s1+=1271.0;
    } else {
     s0+=6.0;
     s1+=227.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
} else {
 if(i20<0.00731443427503109){
  if(i13<0.00027773785404860973){
   if(i69<-4.820369213121012e-06){
    s0+=10.0;
   } else {
    if(i53<-6.306338764261454e-05){
     s0+=14.0;
    } else {
     s0+=1.0;
     s1+=1745.0;
    }
   }
  } else {
   if(i36<1.2454030513763428){
    s0+=1637.0;
   } else {
    if(i17<0.9931407570838928){
     s0+=1.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i48<3.063678741455078e-05){
   if(i31<0.0023654235992580652){
    if(i43<0.0011194194667041302){
     s0+=1.0;
     s1+=1047.0;
    } else {
     s0+=217.0;
     s1+=1.0;
    }
   } else {
    if(i41<0.9084622859954834){
     s0+=40.0;
     s1+=235.0;
    } else {
     s0+=80.0;
     s1+=13283.0;
    }
   }
  } else {
   if(i35<1.3088769912719727){
    s0+=86.0;
   } else {
    s1+=9.0;
   }
  }
 }
}
if(i15<0.195326566696167){
 if(i2<0.0009617209434509277){
  if(i5<1.8298625946044922e-05){
   if(i32<0.0007173882913775742){
    if(i25<1.0817922353744507){
     s0+=16365.0;
     s1+=271.0;
    } else {
     s0+=62720.0;
     s1+=162.0;
    }
   } else {
    if(i31<0.0009743058471940458){
     s0+=1947.0;
     s1+=2329.0;
    } else {
     s0+=26908.0;
     s1+=891.0;
    }
   }
  } else {
   if(i27<1.0431840419769287){
    if(i22<0.0594804584980011){
     s0+=1995.0;
     s1+=23.0;
    } else {
     s0+=30.0;
     s1+=22.0;
    }
   } else {
    if(i63<0.044473983347415924){
     s0+=2739.0;
     s1+=894.0;
    } else {
     s0+=1428.0;
     s1+=1419.0;
    }
   }
  }
 } else {
  if(i13<0.000691491411998868){
   if(i53<-4.379328402137617e-06){
    if(i5<0.0002244710922241211){
     s0+=233.0;
     s1+=5146.0;
    } else {
     s0+=53.0;
    }
   } else {
    s0+=54.0;
   }
  } else {
   if(i34<0.016166849061846733){
    s0+=1784.0;
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i23<0.002577213803306222){
  if(i25<1.194390058517456){
   if(i40<0.0031193511094897985){
    s0+=320.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i0<2.181529998779297e-05){
    if(i49<-1.26921968330862e-05){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=136.0;
     s1+=3.0;
    }
   } else {
    if(i40<0.0021202764473855495){
     s0+=6.0;
    } else {
     s1+=31.0;
    }
   }
  }
 } else {
  if(i12<0.9983129501342773){
   if(i7<0.0072044674307107925){
    if(i9<1.009833812713623){
     s0+=132.0;
     s1+=7.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i49<-1.9253262507845648e-05){
     s0+=1.0;
     s1+=258.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   }
  } else {
   if(i3<1.0017199516296387){
    if(i1<-3.7928439269308e-05){
     s0+=8.0;
     s1+=431.0;
    } else {
     s0+=75.0;
     s1+=44.0;
    }
   } else {
    if(i0<4.0531158447265625e-06){
     s0+=4.0;
     s1+=64.0;
    } else {
     s0+=2.0;
     s1+=11881.0;
    }
   }
  }
 }
}
if(i4<0.0005691647529602051){
 if(i38<0.23054799437522888){
  if(i11<1.0093718767166138){
   if(i18<0.0015520930755883455){
    if(i18<0.0011010266607627273){
     s0+=73747.0;
     s1+=249.0;
    } else {
     s0+=10760.0;
     s1+=406.0;
    }
   } else {
    if(i35<1.0903346538543701){
     s0+=4984.0;
     s1+=2165.0;
    } else {
     s0+=18460.0;
     s1+=923.0;
    }
   }
  } else {
   if(i32<0.0007317392155528069){
    if(i29<1.1731728315353394){
     s0+=789.0;
     s1+=2.0;
    } else {
     s0+=335.0;
     s1+=34.0;
    }
   } else {
    if(i35<1.0955976247787476){
     s1+=382.0;
    } else {
     s0+=336.0;
     s1+=283.0;
    }
   }
  }
 } else {
  if(i1<-4.537610584520735e-05){
   if(i68<0.05450933426618576){
    if(i22<0.2426549792289734){
     s0+=5.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=517.0;
   }
  } else {
   if(i4<0.00042510032653808594){
    if(i18<0.002799076959490776){
     s0+=124.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   } else {
    if(i7<0.007024177350103855){
     s0+=1.0;
    } else {
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i20<0.007645247969776392){
  if(i0<9.757280349731445e-05){
   if(i2<0.0010245442390441895){
    if(i13<0.00020700000459328294){
     s0+=187.0;
     s1+=159.0;
    } else {
     s0+=3072.0;
     s1+=11.0;
    }
   } else {
    if(i6<1.0042874813079834){
     s0+=238.0;
     s1+=292.0;
    } else {
     s0+=566.0;
     s1+=20.0;
    }
   }
  } else {
   if(i7<0.002455259906128049){
    if(i29<1.1002612113952637){
     s1+=206.0;
    } else {
     s0+=489.0;
     s1+=12.0;
    }
   } else {
    if(i17<1.0123238563537598){
     s0+=214.0;
     s1+=359.0;
    } else {
     s0+=34.0;
     s1+=1011.0;
    }
   }
  }
 } else {
  if(i14<1.0205378532409668){
   if(i7<0.004587660077959299){
    if(i0<0.00010412931442260742){
     s0+=648.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=141.0;
    }
   } else {
    if(i33<1.0259605646133423){
     s0+=498.0;
     s1+=301.0;
    } else {
     s0+=679.0;
     s1+=4918.0;
    }
   }
  } else {
   if(i21<-0.00020009279251098633){
    if(i38<0.23437851667404175){
     s0+=121.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=126.0;
    }
   } else {
    if(i15<0.06504526734352112){
     s0+=26.0;
     s1+=32.0;
    } else {
     s0+=27.0;
     s1+=11834.0;
    }
   }
  }
 }
}
if(i10<1.0170105695724487){
 if(i4<0.000957787036895752){
  if(i42<0.20742225646972656){
   if(i6<1.002221703529358){
    if(i4<0.0001811385154724121){
     s0+=95626.0;
     s1+=2084.0;
    } else {
     s0+=11974.0;
     s1+=1645.0;
    }
   } else {
    if(i59<0.0002651050454005599){
     s0+=3644.0;
     s1+=725.0;
    } else {
     s0+=1277.0;
     s1+=852.0;
    }
   }
  } else {
   if(i3<0.983995795249939){
    s0+=109.0;
   } else {
    s1+=464.0;
   }
  }
 } else {
  if(i65<0.0008399395737797022){
   if(i36<1.098123550415039){
    if(i17<1.007227897644043){
     s0+=95.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=586.0;
    }
   } else {
    if(i7<0.005305407103151083){
     s0+=1514.0;
     s1+=15.0;
    } else {
     s0+=169.0;
     s1+=353.0;
    }
   }
  } else {
   if(i17<1.0012311935424805){
    if(i20<0.040960781276226044){
     s0+=277.0;
     s1+=226.0;
    } else {
     s0+=51.0;
     s1+=543.0;
    }
   } else {
    if(i42<0.0164853073656559){
     s0+=86.0;
     s1+=308.0;
    } else {
     s0+=53.0;
     s1+=2293.0;
    }
   }
  }
 }
} else {
 if(i53<-3.714093281814712e-06){
  if(i38<0.1773572564125061){
   if(i43<0.0010228578466922045){
    if(i35<1.298409342765808){
     s0+=7.0;
     s1+=1420.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i20<0.007636284455657005){
     s0+=520.0;
     s1+=117.0;
    } else {
     s0+=399.0;
     s1+=1158.0;
    }
   }
  } else {
   if(i13<0.0007440329063683748){
    if(i40<0.0016365816118195653){
     s0+=18.0;
     s1+=8.0;
    } else {
     s0+=63.0;
     s1+=11539.0;
    }
   } else {
    s0+=66.0;
   }
  }
 } else {
  if(i58<1.0016157627105713){
   s0+=522.0;
  } else {
   if(i42<0.04032277315855026){
    if(i49<-7.080780960677657e-06){
     s1+=1.0;
    } else {
     s0+=26.0;
    }
   } else {
    s1+=19.0;
   }
  }
 }
}
if(i4<0.0005691647529602051){
 if(i15<0.21642684936523438){
  if(i18<0.001720347674563527){
   if(i25<1.0817922353744507){
    if(i25<1.064497947692871){
     s0+=14136.0;
     s1+=48.0;
    } else {
     s0+=2238.0;
     s1+=538.0;
    }
   } else {
    if(i1<-6.329619645839557e-05){
     s0+=211.0;
     s1+=50.0;
    } else {
     s0+=72441.0;
     s1+=346.0;
    }
   }
  } else {
   if(i3<0.9984357357025146){
    if(i7<0.01973598077893257){
     s0+=17183.0;
     s1+=571.0;
    } else {
     s0+=77.0;
     s1+=86.0;
    }
   } else {
    if(i7<0.004050849005579948){
     s0+=2391.0;
     s1+=319.0;
    } else {
     s0+=757.0;
     s1+=2600.0;
    }
   }
  }
 } else {
  if(i23<0.002567521296441555){
   if(i3<1.0036016702651978){
    if(i49<-1.7270411262870766e-05){
     s1+=1.0;
    } else {
     s0+=124.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i49<-9.185604540107306e-06){
    if(i68<0.05776364356279373){
     s0+=10.0;
     s1+=17.0;
    } else {
     s0+=9.0;
     s1+=614.0;
    }
   } else {
    if(i61<0.0009625395759940147){
     s1+=1.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i15<0.15998652577400208){
  if(i47<0.9996932744979858){
   if(i1<-0.00016190591850318015){
    if(i31<0.010178481228649616){
     s0+=3.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i13<0.0002652256516739726){
     s1+=6.0;
    } else {
     s0+=1645.0;
    }
   }
  } else {
   if(i25<1.116804838180542){
    if(i30<0.000529944896697998){
     s1+=2986.0;
    } else {
     s0+=616.0;
    }
   } else {
    if(i42<0.021894268691539764){
     s0+=2598.0;
     s1+=271.0;
    } else {
     s0+=1477.0;
     s1+=2450.0;
    }
   }
  }
 } else {
  if(i18<0.0010396962752565742){
   if(i2<0.002572774887084961){
    s0+=188.0;
   } else {
    s1+=145.0;
   }
  } else {
   if(i23<0.002531631151214242){
    if(i41<1.0305941104888916){
     s0+=156.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=50.0;
    }
   } else {
    if(i1<-4.315700789447874e-05){
     s0+=15.0;
     s1+=13099.0;
    } else {
     s0+=69.0;
     s1+=239.0;
    }
   }
  }
 }
}
if(i9<1.0101584196090698){
 if(i1<-8.658624574309215e-05){
  if(i15<0.049838751554489136){
   if(i74<-0.10170453786849976){
    if(i42<0.09818264096975327){
     s0+=142.0;
     s1+=59.0;
    } else {
     s0+=10.0;
     s1+=89.0;
    }
   } else {
    if(i19<0.9597504138946533){
     s0+=737.0;
     s1+=7.0;
    } else {
     s0+=82.0;
     s1+=30.0;
    }
   }
  } else {
   if(i20<0.01705242693424225){
    if(i36<1.4169189929962158){
     s0+=196.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i18<0.012042183429002762){
     s0+=59.0;
     s1+=3392.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i14<1.0129755735397339){
   if(i0<7.37309455871582e-05){
    if(i23<0.0008898492669686675){
     s0+=31878.0;
     s1+=3059.0;
    } else {
     s0+=79063.0;
     s1+=1356.0;
    }
   } else {
    if(i33<1.0551724433898926){
     s0+=9.0;
     s1+=327.0;
    } else {
     s0+=216.0;
     s1+=228.0;
    }
   }
  } else {
   if(i30<0.00011074542999267578){
    if(i8<1.0139812231063843){
     s0+=954.0;
     s1+=16.0;
    } else {
     s0+=67.0;
     s1+=41.0;
    }
   } else {
    if(i31<0.0011081822449341416){
     s0+=7.0;
     s1+=630.0;
    } else {
     s0+=1335.0;
     s1+=537.0;
    }
   }
  }
 }
} else {
 if(i20<0.0070902639999985695){
  if(i27<1.0869626998901367){
   if(i40<0.001144407782703638){
    s1+=982.0;
   } else {
    if(i27<1.0865297317504883){
     s0+=47.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i16<0.00202864408493042){
    if(i40<0.0009960359893739223){
     s1+=29.0;
    } else {
     s0+=1309.0;
     s1+=35.0;
    }
   } else {
    if(i3<1.0080711841583252){
     s0+=20.0;
    } else {
     s1+=473.0;
    }
   }
  }
 } else {
  if(i13<0.0007145039271563292){
   if(i53<-3.805679853030597e-06){
    if(i38<0.11576110124588013){
     s0+=61.0;
     s1+=1089.0;
    } else {
     s0+=32.0;
     s1+=12005.0;
    }
   } else {
    if(i1<-8.267699740827084e-05){
     s1+=2.0;
    } else {
     s0+=99.0;
    }
   }
  } else {
   s0+=92.0;
  }
 }
}
if(i11<1.0151777267456055){
 if(i7<0.01397714950144291){
  if(i4<0.00032275915145874023){
   if(i18<0.0014000143855810165){
    if(i25<1.0817922353744507){
     s0+=15253.0;
     s1+=319.0;
    } else {
     s0+=64615.0;
     s1+=189.0;
    }
   } else {
    if(i34<0.0010642970446497202){
     s0+=1836.0;
     s1+=1778.0;
    } else {
     s0+=22124.0;
     s1+=647.0;
    }
   }
  } else {
   if(i42<0.014016753062605858){
    if(i13<0.00022483940119855106){
     s0+=1984.0;
     s1+=1192.0;
    } else {
     s0+=5626.0;
     s1+=21.0;
    }
   } else {
    if(i0<-7.092952728271484e-06){
     s0+=1333.0;
     s1+=172.0;
    } else {
     s0+=1620.0;
     s1+=2721.0;
    }
   }
  }
 } else {
  if(i14<0.9119707345962524){
   if(i12<1.0098509788513184){
    if(i20<0.05996181070804596){
     s0+=808.0;
     s1+=24.0;
    } else {
     s0+=84.0;
     s1+=122.0;
    }
   } else {
    if(i25<1.5129314661026){
     s0+=35.0;
     s1+=42.0;
    } else {
     s0+=4.0;
     s1+=115.0;
    }
   }
  } else {
   if(i24<1.0476155281066895){
    if(i22<0.06731951236724854){
     s0+=69.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   } else {
    if(i62<-0.008345991373062134){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=2937.0;
    }
   }
  }
 }
} else {
 if(i2<0.00025406479835510254){
  if(i15<0.24347713589668274){
   if(i50<1.0003125667572021){
    if(i32<0.001572336070239544){
     s0+=188.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i7<0.004621218889951706){
     s0+=219.0;
    } else {
     s1+=125.0;
    }
   }
  } else {
   if(i32<0.0009387683821842074){
    s0+=14.0;
   } else {
    s1+=117.0;
   }
  }
 } else {
  if(i40<0.001964421011507511){
   if(i23<0.0011120671406388283){
    s1+=1574.0;
   } else {
    if(i2<0.005099475383758545){
     s0+=458.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i29<1.7041046619415283){
    if(i0<-0.000630110502243042){
     s0+=7.0;
    } else {
     s0+=59.0;
     s1+=12315.0;
    }
   } else {
    s0+=25.0;
   }
  }
 }
}
if(i4<0.0005695223808288574){
 if(i18<0.0017319958424195647){
  if(i34<0.0003374764055479318){
   if(i59<0.00016655720537528396){
    if(i7<0.002802811795845628){
     s0+=17746.0;
     s1+=77.0;
    } else {
     s0+=400.0;
     s1+=170.0;
    }
   } else {
    if(i21<-0.00013247132301330566){
     s0+=882.0;
     s1+=61.0;
    } else {
     s0+=110.0;
     s1+=358.0;
    }
   }
  } else {
   if(i35<1.1354830265045166){
    if(i47<0.9997246265411377){
     s0+=17166.0;
     s1+=107.0;
    } else {
     s0+=45897.0;
     s1+=11.0;
    }
   } else {
    if(i1<-6.421883881557733e-05){
     s0+=38.0;
     s1+=45.0;
    } else {
     s0+=7905.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i16<-0.0014017820358276367){
   if(i24<1.1230299472808838){
    if(i3<0.9963284730911255){
     s0+=12387.0;
     s1+=114.0;
    } else {
     s0+=2319.0;
     s1+=242.0;
    }
   } else {
    if(i20<0.05238625034689903){
     s0+=276.0;
     s1+=188.0;
    } else {
     s0+=16.0;
     s1+=298.0;
    }
   }
  } else {
   if(i54<0.02056494727730751){
    if(i3<1.0019311904907227){
     s0+=3865.0;
     s1+=653.0;
    } else {
     s0+=305.0;
     s1+=503.0;
    }
   } else {
    if(i12<0.9969781637191772){
     s0+=455.0;
     s1+=53.0;
    } else {
     s0+=304.0;
     s1+=1931.0;
    }
   }
  }
 }
} else {
 if(i22<0.15640726685523987){
  if(i16<0.0012926459312438965){
   if(i13<0.0003100049798376858){
    if(i46<2.4420041881967336e-05){
     s0+=395.0;
     s1+=1601.0;
    } else {
     s0+=578.0;
     s1+=198.0;
    }
   } else {
    if(i7<0.008330795913934708){
     s0+=3968.0;
     s1+=61.0;
    } else {
     s0+=546.0;
     s1+=658.0;
    }
   }
  } else {
   if(i47<0.9998409748077393){
    if(i29<1.3688106536865234){
     s0+=576.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i30<0.0008348524570465088){
     s0+=51.0;
     s1+=3151.0;
    } else {
     s0+=207.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i29<1.176405668258667){
   s0+=302.0;
  } else {
   if(i0<4.112720489501953e-06){
    if(i18<0.004760372452437878){
     s0+=44.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=174.0;
    }
   } else {
    if(i0<2.1159648895263672e-05){
     s0+=14.0;
     s1+=180.0;
    } else {
     s0+=9.0;
     s1+=12916.0;
    }
   }
  }
 }
}
if(i3<1.0038644075393677){
 if(i33<1.140138864517212){
  if(i11<1.0091831684112549){
   if(i18<0.001575210364535451){
    if(i59<0.00017948301683645695){
     s0+=72413.0;
     s1+=231.0;
    } else {
     s0+=12998.0;
     s1+=512.0;
    }
   } else {
    if(i4<-0.0001309812068939209){
     s0+=16241.0;
     s1+=238.0;
    } else {
     s0+=8452.0;
     s1+=3630.0;
    }
   }
  } else {
   if(i29<1.0978162288665771){
    if(i6<0.999157190322876){
     s0+=4.0;
    } else {
     s1+=490.0;
    }
   } else {
    if(i4<0.00032451748847961426){
     s0+=1111.0;
     s1+=80.0;
    } else {
     s0+=434.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i13<0.00017227011267095804){
   if(i6<1.0013527870178223){
    s0+=323.0;
   } else {
    if(i50<1.0032490491867065){
     s1+=106.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i15<0.15589335560798645){
    if(i49<-8.359223102161195e-06){
     s0+=19.0;
     s1+=194.0;
    } else {
     s0+=109.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9984153509140015){
     s0+=36.0;
     s1+=165.0;
    } else {
     s0+=1.0;
     s1+=709.0;
    }
   }
  }
 }
} else {
 if(i23<0.00225556967779994){
  if(i24<1.0782103538513184){
   if(i19<1.0089911222457886){
    if(i40<0.00018969367374666035){
     s0+=603.0;
    } else {
     s0+=206.0;
     s1+=378.0;
    }
   } else {
    if(i13<0.0002535167441237718){
     s0+=5.0;
     s1+=2042.0;
    } else {
     s0+=157.0;
    }
   }
  } else {
   if(i13<0.00015958203584887087){
    if(i51<-0.0012072697281837463){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=285.0;
    }
   } else {
    if(i45<0.0007791011594235897){
     s0+=5.0;
     s1+=21.0;
    } else {
     s0+=2920.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i0<3.5643577575683594e-05){
   if(i25<1.4586446285247803){
    if(i52<0.010291176848113537){
     s0+=3.0;
    } else {
     s1+=134.0;
    }
   } else {
    if(i24<1.0872573852539062){
     s0+=120.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i39<0.060565412044525146){
    if(i7<0.0016274959780275822){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=101.0;
     s1+=867.0;
    }
   } else {
    if(i1<-8.827574492897838e-05){
     s0+=7.0;
     s1+=12888.0;
    } else {
     s0+=71.0;
     s1+=1114.0;
    }
   }
  }
 }
}
if(i11<1.0154366493225098){
 if(i7<0.014082438312470913){
  if(i32<0.0006933006225153804){
   if(i12<1.0084474086761475){
    if(i2<0.0013862252235412598){
     s0+=79473.0;
     s1+=461.0;
    } else {
     s0+=3.0;
     s1+=48.0;
    }
   } else {
    if(i23<0.007296898402273655){
     s0+=17.0;
     s1+=451.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   }
  } else {
   if(i44<0.9993929862976074){
    if(i1<-7.726167677901685e-05){
     s0+=280.0;
     s1+=67.0;
    } else {
     s0+=15749.0;
     s1+=261.0;
    }
   } else {
    if(i13<0.00021448591724038124){
     s0+=3796.0;
     s1+=4254.0;
    } else {
     s0+=15241.0;
     s1+=1594.0;
    }
   }
  }
 } else {
  if(i24<1.052932858467102){
   if(i11<0.9459786415100098){
    if(i0<7.343292236328125e-05){
     s0+=656.0;
     s1+=20.0;
    } else {
     s0+=27.0;
     s1+=20.0;
    }
   } else {
    if(i31<0.0050316425040364265){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   }
  } else {
   if(i39<0.018429607152938843){
    if(i16<-0.004064321517944336){
     s0+=160.0;
     s1+=44.0;
    } else {
     s0+=46.0;
     s1+=181.0;
    }
   } else {
    if(i19<0.9189573526382446){
     s0+=48.0;
     s1+=24.0;
    } else {
     s0+=52.0;
     s1+=3021.0;
    }
   }
  }
 }
} else {
 if(i55<-6.019827651471132e-06){
  if(i66<-1.6547000996069983e-05){
   s1+=4.0;
  } else {
   s0+=210.0;
  }
 } else {
  if(i20<0.023472873494029045){
   if(i3<1.0028223991394043){
    if(i51<-0.00038907682755962014){
     s0+=352.0;
     s1+=4.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i15<0.055796653032302856){
     s0+=29.0;
     s1+=20.0;
    } else {
     s0+=207.0;
     s1+=3591.0;
    }
   }
  } else {
   if(i18<0.001354112522676587){
    if(i30<0.00019100308418273926){
     s0+=36.0;
    } else {
     s1+=128.0;
    }
   } else {
    if(i7<0.0025655000936239958){
     s0+=36.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=10151.0;
    }
   }
  }
 }
}
if(i4<0.0005705952644348145){
 if(i33<1.1403393745422363){
  if(i4<0.00028055906295776367){
   if(i30<7.12275505065918e-05){
    if(i29<1.0905578136444092){
     s0+=21013.0;
     s1+=672.0;
    } else {
     s0+=54567.0;
     s1+=117.0;
    }
   } else {
    if(i23<0.0009140369947999716){
     s0+=3149.0;
     s1+=1436.0;
    } else {
     s0+=23980.0;
     s1+=576.0;
    }
   }
  } else {
   if(i7<0.00410185381770134){
    if(i37<3.281724639236927e-05){
     s0+=5059.0;
     s1+=26.0;
    } else {
     s0+=469.0;
     s1+=98.0;
    }
   } else {
    if(i37<9.339628741145134e-05){
     s0+=180.0;
     s1+=1374.0;
    } else {
     s0+=901.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i23<0.002567488234490156){
   if(i69<-1.0556658480709302e-06){
    if(i72<1.0316904783248901){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i42<0.12662924826145172){
     s0+=424.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i35<1.1806621551513672){
    if(i68<0.31263530254364014){
     s0+=48.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i0<-0.00015234947204589844){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=662.0;
    }
   }
  }
 }
} else {
 if(i20<0.007959650829434395){
  if(i13<0.00027373339980840683){
   if(i2<0.0007765293121337891){
    if(i29<1.0905885696411133){
     s1+=24.0;
    } else {
     s0+=208.0;
     s1+=14.0;
    }
   } else {
    if(i55<-1.8958449800265953e-05){
     s0+=17.0;
    } else {
     s0+=18.0;
     s1+=1934.0;
    }
   }
  } else {
   if(i21<0.0013968944549560547){
    if(i64<0.0053278496488928795){
     s0+=4628.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   } else {
    if(i48<8.982419967651367e-05){
     s1+=31.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i22<0.13338327407836914){
   if(i23<0.00102982297539711){
    if(i6<1.0007234811782837){
     s0+=7.0;
    } else {
     s1+=1436.0;
    }
   } else {
    if(i2<0.0014275908470153809){
     s0+=1634.0;
     s1+=934.0;
    } else {
     s0+=77.0;
     s1+=971.0;
    }
   }
  } else {
   if(i35<1.1283297538757324){
    s0+=60.0;
   } else {
    if(i9<0.9994422793388367){
     s0+=110.0;
     s1+=1405.0;
    } else {
     s0+=35.0;
     s1+=12340.0;
    }
   }
  }
 }
}
if(i26<1.0181405544281006){
 if(i3<1.0038543939590454){
  if(i1<-9.144713840214536e-05){
   if(i15<0.0408363938331604){
    if(i73<-0.008367776870727539){
     s0+=68.0;
     s1+=91.0;
    } else {
     s0+=637.0;
     s1+=16.0;
    }
   } else {
    if(i20<0.026058748364448547){
     s0+=88.0;
     s1+=9.0;
    } else {
     s0+=64.0;
     s1+=922.0;
    }
   }
  } else {
   if(i30<7.897615432739258e-05){
    if(i22<0.23616039752960205){
     s0+=76887.0;
     s1+=774.0;
    } else {
     s0+=45.0;
     s1+=35.0;
    }
   } else {
    if(i23<0.0009264220716431737){
     s0+=4907.0;
     s1+=2398.0;
    } else {
     s0+=28384.0;
     s1+=1153.0;
    }
   }
  }
 } else {
  if(i7<0.00393954012542963){
   if(i67<-0.0004926919937133789){
    if(i55<-4.014838395960396e-06){
     s0+=249.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=258.0;
    }
   } else {
    if(i25<1.116804838180542){
     s0+=572.0;
     s1+=279.0;
    } else {
     s0+=2510.0;
     s1+=27.0;
    }
   }
  } else {
   if(i6<1.0020332336425781){
    if(i51<-0.0005145414615981281){
     s1+=24.0;
    } else {
     s0+=59.0;
     s1+=5.0;
    }
   } else {
    if(i48<2.473592758178711e-05){
     s0+=227.0;
     s1+=4324.0;
    } else {
     s0+=98.0;
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i31<0.00665141548961401){
  if(i1<-6.171359564177692e-05){
   if(i19<1.0194087028503418){
    if(i30<0.001065671443939209){
     s0+=193.0;
     s1+=809.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i30<-0.00010398030281066895){
     s0+=8.0;
    } else {
     s0+=18.0;
     s1+=2287.0;
    }
   }
  } else {
   if(i25<1.1175415515899658){
    if(i4<0.00012892484664916992){
     s0+=43.0;
    } else {
     s1+=475.0;
    }
   } else {
    if(i7<0.006903261877596378){
     s0+=1045.0;
     s1+=50.0;
    } else {
     s0+=5.0;
     s1+=355.0;
    }
   }
  }
 } else {
  if(i1<-4.0785416786093265e-05){
   if(i33<1.0630991458892822){
    if(i0<0.00012952089309692383){
     s0+=14.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i26<1.028307557106018){
     s0+=18.0;
     s1+=423.0;
    } else {
     s0+=3.0;
     s1+=9704.0;
    }
   }
  } else {
   if(i7<0.00880352035164833){
    s0+=33.0;
   } else {
    s1+=14.0;
   }
  }
 }
}
if(i10<1.017690658569336){
 if(i20<0.057465292513370514){
  if(i19<1.0090596675872803){
   if(i7<0.0036698170006275177){
    if(i4<0.0012663006782531738){
     s0+=87561.0;
     s1+=1031.0;
    } else {
     s0+=58.0;
     s1+=82.0;
    }
   } else {
    if(i34<0.0010659208055585623){
     s0+=2674.0;
     s1+=2179.0;
    } else {
     s0+=20885.0;
     s1+=2616.0;
    }
   }
  } else {
   if(i7<0.004215539433062077){
    if(i0<0.00012046098709106445){
     s0+=2725.0;
     s1+=194.0;
    } else {
     s0+=177.0;
     s1+=296.0;
    }
   } else {
    if(i23<0.0010825245408341289){
     s1+=990.0;
    } else {
     s0+=354.0;
     s1+=756.0;
    }
   }
  }
 } else {
  if(i2<-0.0022173523902893066){
   if(i76<-3.93986701965332e-05){
    if(i11<0.8925051689147949){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    s0+=531.0;
   }
  } else {
   if(i33<0.9652957320213318){
    if(i5<8.106231689453125e-05){
     s0+=66.0;
     s1+=20.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i37<0.0003566569066606462){
     s0+=16.0;
     s1+=2100.0;
    } else {
     s0+=30.0;
     s1+=115.0;
    }
   }
  }
 }
} else {
 if(i2<0.0002327263355255127){
  if(i7<0.005949777085334063){
   if(i67<0.0033305585384368896){
    if(i36<1.1396554708480835){
     s0+=59.0;
     s1+=17.0;
    } else {
     s0+=255.0;
     s1+=11.0;
    }
   } else {
    s0+=408.0;
   }
  } else {
   if(i5<-3.3289194107055664e-05){
    s0+=4.0;
   } else {
    if(i38<0.09455841779708862){
     s0+=9.0;
     s1+=2.0;
    } else {
     s1+=411.0;
    }
   }
  }
 } else {
  if(i23<0.002558264182880521){
   if(i23<0.0010444617364555597){
    s1+=1438.0;
   } else {
    if(i25<1.1843671798706055){
     s0+=487.0;
    } else {
     s0+=30.0;
     s1+=97.0;
    }
   }
  } else {
   if(i7<0.00439818948507309){
    if(i25<1.4667320251464844){
     s0+=7.0;
     s1+=281.0;
    } else {
     s0+=63.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.006490702275186777){
     s0+=22.0;
     s1+=420.0;
    } else {
     s0+=2.0;
     s1+=11318.0;
    }
   }
  }
 }
}
if(i4<0.000588834285736084){
 if(i52<0.34739965200424194){
  if(i26<1.0181578397750854){
   if(i32<0.0007107785204425454){
    if(i27<1.023447036743164){
     s0+=3809.0;
     s1+=131.0;
    } else {
     s0+=75472.0;
     s1+=303.0;
    }
   } else {
    if(i6<0.999824047088623){
     s0+=19579.0;
     s1+=385.0;
    } else {
     s0+=10472.0;
     s1+=3190.0;
    }
   }
  } else {
   if(i12<0.9992121458053589){
    if(i4<6.681680679321289e-05){
     s0+=340.0;
     s1+=25.0;
    } else {
     s0+=62.0;
     s1+=119.0;
    }
   } else {
    if(i29<1.0978162288665771){
     s1+=196.0;
    } else {
     s0+=284.0;
     s1+=442.0;
    }
   }
  }
 } else {
  if(i60<-0.00043612997978925705){
   if(i51<-7.454084698110819e-05){
    if(i60<-0.0007274943636730313){
     s1+=359.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i63<0.3951151967048645){
     s0+=32.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i1<-0.00014115248632151634){
    if(i40<0.06040596961975098){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i20<0.06992723047733307){
     s0+=181.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i20<0.007715622894465923){
  if(i4<0.001124262809753418){
   if(i16<0.0011081695556640625){
    if(i7<0.003688780590891838){
     s0+=2770.0;
     s1+=2.0;
    } else {
     s0+=236.0;
     s1+=137.0;
    }
   } else {
    if(i40<0.0011967848986387253){
     s1+=361.0;
    } else {
     s0+=305.0;
     s1+=49.0;
    }
   }
  } else {
   if(i13<0.0002923966967500746){
    if(i9<0.9951168298721313){
     s0+=15.0;
    } else {
     s0+=8.0;
     s1+=1438.0;
    }
   } else {
    if(i35<1.1861532926559448){
     s0+=1141.0;
    } else {
     s0+=10.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i1<-7.456685125362128e-05){
   if(i9<0.9755473136901855){
    if(i34<0.019485417753458023){
     s0+=297.0;
     s1+=85.0;
    } else {
     s0+=13.0;
     s1+=38.0;
    }
   } else {
    if(i15<0.0181959867477417){
     s0+=61.0;
     s1+=79.0;
    } else {
     s0+=140.0;
     s1+=14841.0;
    }
   }
  } else {
   if(i2<4.9591064453125e-05){
    if(i15<0.10538783669471741){
     s0+=541.0;
     s1+=31.0;
    } else {
     s0+=122.0;
     s1+=85.0;
    }
   } else {
    if(i13<0.00040387368062511086){
     s0+=329.0;
     s1+=1800.0;
    } else {
     s0+=403.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i0<6.395578384399414e-05){
 if(i24<1.1402404308319092){
  if(i8<1.0135858058929443){
   if(i1<-7.562968676211312e-05){
    if(i38<0.07644623517990112){
     s0+=1257.0;
     s1+=155.0;
    } else {
     s0+=220.0;
     s1+=497.0;
    }
   } else {
    if(i30<7.909536361694336e-05){
     s0+=76588.0;
     s1+=820.0;
    } else {
     s0+=34422.0;
     s1+=3730.0;
    }
   }
  } else {
   if(i18<0.0014300693292170763){
    if(i23<0.0026175871025770903){
     s0+=240.0;
    } else {
     s0+=4.0;
     s1+=11.0;
    }
   } else {
    if(i38<0.09508022665977478){
     s0+=127.0;
     s1+=82.0;
    } else {
     s0+=152.0;
     s1+=597.0;
    }
   }
  }
 } else {
  if(i4<0.0002008676528930664){
   if(i34<0.00713551789522171){
    if(i62<0.004129290580749512){
     s0+=778.0;
     s1+=48.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i28<0.8613095283508301){
     s0+=41.0;
     s1+=26.0;
    } else {
     s0+=4.0;
     s1+=248.0;
    }
   }
  } else {
   if(i40<0.0019773037638515234){
    s0+=223.0;
   } else {
    if(i16<-0.003743886947631836){
     s0+=77.0;
     s1+=121.0;
    } else {
     s0+=87.0;
     s1+=1589.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i30<0.0005132555961608887){
   if(i6<1.001788854598999){
    s0+=72.0;
   } else {
    if(i2<0.0010523200035095215){
     s0+=82.0;
     s1+=149.0;
    } else {
     s0+=4.0;
     s1+=2234.0;
    }
   }
  } else {
   if(i65<0.002407400868833065){
    if(i73<0.009970307350158691){
     s0+=1894.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i3<1.003894329071045){
   if(i7<0.019870471209287643){
    if(i71<0.10034576058387756){
     s0+=40.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i72<0.8261323571205139){
     s0+=6.0;
     s1+=9.0;
    } else {
     s1+=98.0;
    }
   }
  } else {
   if(i9<0.9758907556533813){
    if(i1<-0.00016113114543259144){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=67.0;
    }
   } else {
    if(i27<1.075517177581787){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=47.0;
     s1+=13927.0;
    }
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i61<0.004592279903590679){
  if(i18<0.0017321244813501835){
   if(i8<0.996406078338623){
    if(i45<0.00026874832110479474){
     s0+=2469.0;
     s1+=470.0;
    } else {
     s0+=17999.0;
     s1+=158.0;
    }
   } else {
    if(i1<-8.054320642258972e-05){
     s0+=1.0;
     s1+=46.0;
    } else {
     s0+=70691.0;
     s1+=381.0;
    }
   }
  } else {
   if(i5<-1.1324882507324219e-06){
    if(i15<0.22610780596733093){
     s0+=14248.0;
     s1+=318.0;
    } else {
     s0+=10.0;
     s1+=76.0;
    }
   } else {
    if(i11<1.0081794261932373){
     s0+=7048.0;
     s1+=3227.0;
    } else {
     s0+=702.0;
     s1+=1907.0;
    }
   }
  }
 } else {
  if(i33<1.0847499370574951){
   if(i6<1.0037579536437988){
    if(i74<-0.25806596875190735){
     s0+=14.0;
     s1+=6.0;
    } else {
     s0+=728.0;
     s1+=22.0;
    }
   } else {
    if(i33<1.060168743133545){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   }
  } else {
   if(i23<0.002563408575952053){
    if(i47<1.000786542892456){
     s0+=246.0;
    } else {
     s0+=21.0;
     s1+=11.0;
    }
   } else {
    if(i27<1.1278045177459717){
     s0+=28.0;
     s1+=5.0;
    } else {
     s0+=49.0;
     s1+=1227.0;
    }
   }
  }
 }
} else {
 if(i25<1.1979892253875732){
  if(i40<0.0011562638683244586){
   if(i13<0.00024223740911111236){
    if(i49<-0.0001361353788524866){
     s0+=8.0;
    } else {
     s1+=2178.0;
    }
   } else {
    if(i13<0.00026703899493440986){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=102.0;
    }
   }
  } else {
   if(i45<0.0007904383819550276){
    if(i7<0.006044004112482071){
     s0+=17.0;
    } else {
     s1+=217.0;
    }
   } else {
    if(i11<1.0247933864593506){
     s0+=1948.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i21<-0.00032979249954223633){
   if(i8<0.9924596548080444){
    if(i5<6.145238876342773e-05){
     s0+=28.0;
     s1+=27.0;
    } else {
     s0+=5.0;
     s1+=253.0;
    }
   } else {
    if(i15<0.12180662155151367){
     s0+=79.0;
     s1+=12.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i24<1.0634851455688477){
    if(i24<1.0621075630187988){
     s0+=3.0;
     s1+=73.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i2<0.0010501742362976074){
     s0+=13.0;
     s1+=301.0;
    } else {
     s0+=13.0;
     s1+=13367.0;
    }
   }
  }
 }
}
if(i5<2.294778823852539e-05){
 if(i11<1.0115032196044922){
  if(i22<0.23153239488601685){
   if(i34<0.0010463498765602708){
    if(i36<1.05497145652771){
     s0+=21215.0;
     s1+=125.0;
    } else {
     s0+=10077.0;
     s1+=2539.0;
    }
   } else {
    if(i1<-0.00012880701979156584){
     s0+=91.0;
     s1+=188.0;
    } else {
     s0+=78099.0;
     s1+=1222.0;
    }
   }
  } else {
   if(i18<0.0024232047144323587){
    s0+=48.0;
   } else {
    if(i75<0.1995547115802765){
     s1+=340.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i32<0.0007147281430661678){
   if(i4<0.0005296468734741211){
    if(i59<-4.260948844603263e-05){
     s0+=366.0;
    } else {
     s0+=64.0;
     s1+=6.0;
    }
   } else {
    if(i23<0.0021258711349219084){
     s0+=11.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i7<0.003895427566021681){
    if(i8<1.0064363479614258){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=218.0;
     s1+=1.0;
    }
   } else {
    if(i58<0.998900294303894){
     s0+=54.0;
     s1+=154.0;
    } else {
     s0+=6.0;
     s1+=722.0;
    }
   }
  }
 }
} else {
 if(i15<0.1563088297843933){
  if(i16<0.0013726353645324707){
   if(i64<0.0036505083553493023){
    if(i31<0.0010162687394768){
     s0+=1255.0;
     s1+=826.0;
    } else {
     s0+=3502.0;
     s1+=469.0;
    }
   } else {
    if(i33<1.0323559045791626){
     s0+=409.0;
     s1+=197.0;
    } else {
     s0+=166.0;
     s1+=955.0;
    }
   }
  } else {
   if(i53<-1.9522827642504126e-05){
    if(i6<1.0073914527893066){
     s0+=300.0;
     s1+=5.0;
    } else {
     s1+=145.0;
    }
   } else {
    if(i55<-5.721632078348193e-06){
     s0+=78.0;
    } else {
     s0+=274.0;
     s1+=2823.0;
    }
   }
  }
 } else {
  if(i29<1.176405668258667){
   if(i35<1.0905089378356934){
    if(i59<0.000273046171059832){
     s1+=66.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i55<-1.8160521904064808e-06){
     s0+=346.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   if(i19<0.9976075291633606){
    if(i43<0.002847365103662014){
     s0+=37.0;
     s1+=2.0;
    } else {
     s0+=67.0;
     s1+=1500.0;
    }
   } else {
    if(i1<-2.846742245310452e-05){
     s0+=4.0;
     s1+=11726.0;
    } else {
     s0+=18.0;
     s1+=86.0;
    }
   }
  }
 }
}
if(i15<0.19155284762382507){
 if(i2<0.0009958148002624512){
  if(i7<0.004047315567731857){
   if(i36<1.0905030965805054){
    if(i37<3.775142249651253e-05){
     s0+=21539.0;
     s1+=154.0;
    } else {
     s0+=4914.0;
     s1+=872.0;
    }
   } else {
    if(i35<1.1334413290023804){
     s0+=51962.0;
     s1+=60.0;
    } else {
     s0+=13983.0;
     s1+=222.0;
    }
   }
  } else {
   if(i30<6.264448165893555e-05){
    if(i18<0.00659245764836669){
     s0+=13683.0;
     s1+=139.0;
    } else {
     s0+=17.0;
     s1+=30.0;
    }
   } else {
    if(i29<1.1161681413650513){
     s0+=323.0;
     s1+=2657.0;
    } else {
     s0+=7255.0;
     s1+=2043.0;
    }
   }
  }
 } else {
  if(i47<0.9997913837432861){
   if(i23<0.008747520856559277){
    if(i51<-0.0003164584923069924){
     s0+=85.0;
     s1+=1.0;
    } else {
     s0+=628.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i31<0.0020578219555318356){
    if(i43<0.0010536673944443464){
     s0+=17.0;
     s1+=2365.0;
    } else {
     s0+=1054.0;
     s1+=41.0;
    }
   } else {
    if(i21<-0.0003205537796020508){
     s0+=74.0;
     s1+=177.0;
    } else {
     s0+=23.0;
     s1+=2574.0;
    }
   }
  }
 }
} else {
 if(i40<0.0020922315306961536){
  if(i19<1.02277672290802){
   if(i44<1.008390188217163){
    if(i28<1.0017156600952148){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=506.0;
    }
   } else {
    if(i74<0.04127401113510132){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   s1+=30.0;
  }
 } else {
  if(i1<-3.2633619412081316e-05){
   if(i53<-2.9702264328079764e-06){
    if(i1<-4.3800275307148695e-05){
     s0+=12.0;
     s1+=12699.0;
    } else {
     s0+=23.0;
     s1+=114.0;
    }
   } else {
    if(i16<0.00017461180686950684){
     s1+=3.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i2<5.5670738220214844e-05){
    if(i2<-0.00016176700592041016){
     s0+=291.0;
     s1+=19.0;
    } else {
     s0+=14.0;
     s1+=11.0;
    }
   } else {
    if(i44<1.001875400543213){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=135.0;
    }
   }
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i67<-0.012425273656845093){
  if(i73<-0.011782914400100708){
   if(i5<5.125999450683594e-06){
    if(i42<0.05451472848653793){
     s0+=12.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i14<0.8442455530166626){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=52.0;
    }
   }
  } else {
   if(i18<0.008491568267345428){
    if(i13<0.0006603086367249489){
     s0+=526.0;
     s1+=23.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i57<0.007196301594376564){
     s0+=55.0;
     s1+=17.0;
    } else {
     s1+=39.0;
    }
   }
  }
 } else {
  if(i33<1.0741896629333496){
   if(i2<0.002174854278564453){
    if(i55<-5.9318545027053915e-06){
     s0+=127.0;
    } else {
     s0+=76.0;
     s1+=392.0;
    }
   } else {
    if(i30<0.0016488134860992432){
     s1+=887.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i69<5.492272975970991e-06){
    if(i48<6.002187728881836e-05){
     s0+=65.0;
     s1+=14062.0;
    } else {
     s0+=28.0;
    }
   } else {
    s0+=55.0;
   }
  }
 }
} else {
 if(i6<1.0022156238555908){
  if(i7<0.003659198060631752){
   if(i45<0.0006127979140728712){
    if(i62<-0.0003586709499359131){
     s0+=3813.0;
     s1+=600.0;
    } else {
     s0+=28563.0;
     s1+=240.0;
    }
   } else {
    if(i43<0.0017420295625925064){
     s0+=46532.0;
     s1+=36.0;
    } else {
     s0+=7012.0;
     s1+=121.0;
    }
   }
  } else {
   if(i3<0.999025285243988){
    if(i39<0.20237162709236145){
     s0+=20872.0;
     s1+=553.0;
    } else {
     s0+=52.0;
     s1+=96.0;
    }
   } else {
    if(i44<1.0000524520874023){
     s0+=708.0;
     s1+=175.0;
    } else {
     s0+=500.0;
     s1+=2300.0;
    }
   }
  }
 } else {
  if(i47<1.0016194581985474){
   if(i13<0.00035426963586360216){
    if(i7<0.002613280201330781){
     s0+=907.0;
     s1+=261.0;
    } else {
     s0+=768.0;
     s1+=3801.0;
    }
   } else {
    if(i68<0.4661496877670288){
     s0+=2943.0;
     s1+=116.0;
    } else {
     s0+=30.0;
     s1+=62.0;
    }
   }
  } else {
   if(i7<0.005396926309913397){
    if(i2<0.002142012119293213){
     s0+=2534.0;
     s1+=8.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i15<0.08779847621917725){
     s0+=344.0;
     s1+=95.0;
    } else {
     s0+=48.0;
     s1+=310.0;
    }
   }
  }
 }
}
if(i9<1.0125961303710938){
 if(i5<1.8298625946044922e-05){
  if(i4<0.00027042627334594727){
   if(i22<0.2315966784954071){
    if(i4<6.41942024230957e-05){
     s0+=84206.0;
     s1+=1526.0;
    } else {
     s0+=17970.0;
     s1+=1191.0;
    }
   } else {
    if(i49<-9.187402611132711e-06){
     s0+=2.0;
     s1+=238.0;
    } else {
     s0+=78.0;
    }
   }
  } else {
   if(i20<0.010480625554919243){
    if(i34<0.0006030830554664135){
     s0+=882.0;
     s1+=168.0;
    } else {
     s0+=3899.0;
     s1+=16.0;
    }
   } else {
    if(i25<1.2514922618865967){
     s0+=204.0;
     s1+=915.0;
    } else {
     s0+=632.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i13<0.0007041515782475471){
   if(i0<6.324052810668945e-05){
    if(i57<0.004786921665072441){
     s0+=3668.0;
     s1+=2039.0;
    } else {
     s0+=367.0;
     s1+=1270.0;
    }
   } else {
    if(i49<-0.00010173791815759614){
     s0+=81.0;
    } else {
     s0+=231.0;
     s1+=3673.0;
    }
   }
  } else {
   s0+=3597.0;
  }
 }
} else {
 if(i11<1.0205810070037842){
  if(i16<0.001996338367462158){
   if(i43<0.0007648215396329761){
    if(i47<1.0010640621185303){
     s1+=250.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i23<0.0025779488496482372){
     s0+=347.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=184.0;
    }
   }
  } else {
   s1+=1257.0;
  }
 } else {
  if(i49<-1.2370857803034596e-05){
   if(i16<0.0007401704788208008){
    if(i22<0.08142828941345215){
     s0+=8.0;
    } else {
     s1+=297.0;
    }
   } else {
    if(i7<0.001542004058137536){
     s0+=3.0;
     s1+=48.0;
    } else {
     s1+=11300.0;
    }
   }
  } else {
   s0+=36.0;
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i26<1.0182610750198364){
  if(i1<-0.00012383423745632172){
   if(i9<0.964314341545105){
    if(i24<1.046203374862671){
     s0+=99.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=27.0;
    }
   } else {
    if(i36<1.1331840753555298){
     s0+=8.0;
    } else {
     s1+=244.0;
    }
   }
  } else {
   if(i25<1.1162974834442139){
    if(i30<7.408857345581055e-05){
     s0+=23176.0;
     s1+=661.0;
    } else {
     s0+=5759.0;
     s1+=2370.0;
    }
   } else {
    if(i45<0.002131494227796793){
     s0+=72213.0;
     s1+=369.0;
    } else {
     s0+=8054.0;
     s1+=708.0;
    }
   }
  }
 } else {
  if(i37<1.3513116755348165e-05){
   if(i9<1.0149078369140625){
    if(i17<1.0076477527618408){
     s0+=372.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    if(i51<-0.0003325957804918289){
     s1+=76.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i54<0.03361818566918373){
    if(i66<5.555672487389529e-06){
     s0+=85.0;
     s1+=193.0;
    } else {
     s0+=187.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.0015146039659157395){
     s0+=33.0;
    } else {
     s0+=54.0;
     s1+=733.0;
    }
   }
  }
 }
} else {
 if(i0<8.32676887512207e-05){
  if(i42<0.03490809351205826){
   if(i8<1.0168575048446655){
    if(i7<0.004266693722456694){
     s0+=3657.0;
     s1+=64.0;
    } else {
     s0+=416.0;
     s1+=658.0;
    }
   } else {
    if(i50<1.0031940937042236){
     s0+=19.0;
     s1+=334.0;
    } else {
     s0+=64.0;
     s1+=43.0;
    }
   }
  } else {
   if(i51<-0.00029132619965821505){
    if(i56<0.9024662971496582){
     s0+=53.0;
     s1+=6.0;
    } else {
     s0+=164.0;
     s1+=2169.0;
    }
   } else {
    if(i20<0.02323860675096512){
     s0+=551.0;
     s1+=95.0;
    } else {
     s0+=366.0;
     s1+=542.0;
    }
   }
  }
 } else {
  if(i23<0.0024235653690993786){
   if(i30<0.0005174875259399414){
    if(i48<3.069639205932617e-05){
     s1+=1927.0;
    } else {
     s0+=36.0;
    }
   } else {
    s0+=1080.0;
   }
  } else {
   if(i38<0.0003789663314819336){
    if(i73<-0.005215436220169067){
     s0+=8.0;
     s1+=35.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i33<1.0739543437957764){
     s0+=32.0;
     s1+=804.0;
    } else {
     s0+=9.0;
     s1+=12248.0;
    }
   }
  }
 }
}
if(i9<1.012472152709961){
 if(i42<0.16861964762210846){
  if(i19<1.0090596675872803){
   if(i5<3.8683414459228516e-05){
    if(i32<0.0007118294597603381){
     s0+=79154.0;
     s1+=477.0;
    } else {
     s0+=32120.0;
     s1+=4386.0;
    }
   } else {
    if(i4<0.0012579560279846191){
     s0+=525.0;
     s1+=369.0;
    } else {
     s0+=411.0;
     s1+=1330.0;
    }
   }
  } else {
   if(i7<0.004379455000162125){
    if(i40<0.0006758249364793301){
     s0+=13.0;
     s1+=299.0;
    } else {
     s0+=3257.0;
     s1+=76.0;
    }
   } else {
    if(i49<-1.0769148502731696e-05){
     s0+=244.0;
     s1+=1769.0;
    } else {
     s0+=125.0;
    }
   }
  }
 } else {
  if(i51<6.255076732486486e-05){
   if(i30<-0.0008354485034942627){
    s0+=14.0;
   } else {
    if(i24<1.1024481058120728){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=2056.0;
    }
   }
  } else {
   if(i0<3.349781036376953e-05){
    if(i24<1.226008415222168){
     s0+=358.0;
     s1+=10.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i49<-4.8706810048315674e-05){
     s1+=95.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025525051169097424){
  if(i48<1.138448715209961e-05){
   if(i49<-1.2738166333292611e-05){
    if(i53<-1.3926812243880704e-05){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=1481.0;
    }
   } else {
    s0+=50.0;
   }
  } else {
   if(i30<0.0006021857261657715){
    s1+=15.0;
   } else {
    s0+=363.0;
   }
  }
 } else {
  if(i7<0.0015505452174693346){
   if(i6<1.0063693523406982){
    s0+=23.0;
   } else {
    s1+=46.0;
   }
  } else {
   s1+=11724.0;
  }
 }
}
if(i21<0.00020521879196166992){
 if(i15<0.2029258906841278){
  if(i1<-8.429105946561322e-05){
   if(i37<0.0003105443902313709){
    if(i9<0.9770298004150391){
     s0+=120.0;
     s1+=42.0;
    } else {
     s0+=173.0;
     s1+=1555.0;
    }
   } else {
    if(i20<0.056046709418296814){
     s0+=802.0;
     s1+=65.0;
    } else {
     s0+=103.0;
     s1+=214.0;
    }
   }
  } else {
   if(i7<0.003631859552115202){
    if(i7<0.0022607860155403614){
     s0+=74252.0;
     s1+=378.0;
    } else {
     s0+=16049.0;
     s1+=728.0;
    }
   } else {
    if(i18<0.00181779102422297){
     s0+=12173.0;
     s1+=176.0;
    } else {
     s0+=11312.0;
     s1+=4642.0;
    }
   }
  }
 } else {
  if(i31<0.0024559381417930126){
   if(i21<0.00017315149307250977){
    if(i20<0.023524345830082893){
     s0+=236.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i44<1.004372477531433){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i4<0.00021374225616455078){
    if(i27<1.1231228113174438){
     s0+=79.0;
     s1+=5.0;
    } else {
     s0+=86.0;
     s1+=295.0;
    }
   } else {
    if(i7<0.006476332899183035){
     s0+=34.0;
     s1+=30.0;
    } else {
     s0+=5.0;
     s1+=2980.0;
    }
   }
  }
 }
} else {
 if(i21<0.00029844045639038086){
  if(i30<0.0012143850326538086){
   if(i0<4.595518112182617e-05){
    if(i7<0.0054742456413805485){
     s0+=189.0;
     s1+=2.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i31<0.0012642877409234643){
     s1+=870.0;
    } else {
     s0+=366.0;
     s1+=904.0;
    }
   }
  } else {
   if(i44<1.0128276348114014){
    s0+=389.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i5<0.0002281665802001953){
   if(i55<-6.4529062910878565e-06){
    s0+=66.0;
   } else {
    if(i66<1.6641914044157602e-05){
     s1+=11427.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s0+=72.0;
  }
 }
}
if(i11<1.0146512985229492){
 if(i45<0.0022467821836471558){
  if(i2<0.0012423396110534668){
   if(i18<0.001781160244718194){
    if(i25<1.1162974834442139){
     s0+=27620.0;
     s1+=829.0;
    } else {
     s0+=63256.0;
     s1+=147.0;
    }
   } else {
    if(i32<0.001095147687010467){
     s0+=3446.0;
     s1+=2775.0;
    } else {
     s0+=11584.0;
     s1+=427.0;
    }
   }
  } else {
   if(i30<0.0007874965667724609){
    if(i31<0.0012752118054777384){
     s1+=765.0;
    } else {
     s0+=108.0;
     s1+=334.0;
    }
   } else {
    if(i29<1.1766860485076904){
     s0+=601.0;
    } else {
     s0+=3.0;
     s1+=117.0;
    }
   }
  }
 } else {
  if(i0<1.0907649993896484e-05){
   if(i22<0.17498302459716797){
    if(i3<0.9979333877563477){
     s0+=6344.0;
     s1+=279.0;
    } else {
     s0+=1810.0;
     s1+=569.0;
    }
   } else {
    if(i7<0.0060578687116503716){
     s0+=191.0;
     s1+=30.0;
    } else {
     s0+=20.0;
     s1+=539.0;
    }
   }
  } else {
   if(i54<0.03387017920613289){
    if(i6<1.0063461065292358){
     s0+=342.0;
     s1+=279.0;
    } else {
     s0+=2.0;
     s1+=169.0;
    }
   } else {
    if(i20<0.026321787387132645){
     s0+=100.0;
     s1+=126.0;
    } else {
     s0+=68.0;
     s1+=2785.0;
    }
   }
  }
 }
} else {
 if(i9<1.0145856142044067){
  if(i18<0.0017544112633913755){
   if(i43<0.0005791846197098494){
    s1+=42.0;
   } else {
    if(i43<0.001764883752912283){
     s0+=341.0;
    } else {
     s0+=290.0;
     s1+=40.0;
    }
   }
  } else {
   if(i28<1.0225982666015625){
    if(i32<0.0013656083028763533){
     s0+=56.0;
     s1+=296.0;
    } else {
     s0+=161.0;
     s1+=42.0;
    }
   } else {
    if(i0<-3.832578659057617e-05){
     s0+=46.0;
     s1+=21.0;
    } else {
     s0+=133.0;
     s1+=1730.0;
    }
   }
  }
 } else {
  if(i13<0.0008069879258982837){
   if(i5<0.00028771162033081055){
    s1+=11935.0;
   } else {
    s0+=3.0;
   }
  } else {
   s0+=59.0;
  }
 }
}
if(i1<-9.090294770430773e-05){
 if(i55<-6.515702352771768e-06){
  s0+=293.0;
 } else {
  if(i22<0.01918831467628479){
   if(i73<-0.008331865072250366){
    if(i50<1.002624273300171){
     s0+=78.0;
     s1+=23.0;
    } else {
     s0+=9.0;
     s1+=75.0;
    }
   } else {
    if(i19<0.993303120136261){
     s0+=606.0;
     s1+=6.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i9<0.9732421040534973){
    if(i57<0.00669216550886631){
     s0+=117.0;
     s1+=39.0;
    } else {
     s0+=32.0;
     s1+=158.0;
    }
   } else {
    if(i50<0.9964578747749329){
     s0+=7.0;
    } else {
     s0+=41.0;
     s1+=15796.0;
    }
   }
  }
 }
} else {
 if(i3<1.0030970573425293){
  if(i26<1.0182666778564453){
   if(i30<7.575750350952148e-05){
    if(i7<0.014089793898165226){
     s0+=76028.0;
     s1+=750.0;
    } else {
     s0+=10.0;
     s1+=41.0;
    }
   } else {
    if(i29<1.0955734252929688){
     s0+=4648.0;
     s1+=1779.0;
    } else {
     s0+=27896.0;
     s1+=1490.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    s1+=184.0;
   } else {
    if(i20<0.027726631611585617){
     s0+=695.0;
     s1+=70.0;
    } else {
     s0+=149.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i42<0.020290397107601166){
   if(i25<1.116804838180542){
    if(i29<1.0609431266784668){
     s0+=1045.0;
    } else {
     s0+=18.0;
     s1+=1891.0;
    }
   } else {
    if(i12<1.0118443965911865){
     s0+=4221.0;
     s1+=76.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i27<1.1352583169937134){
    if(i23<0.0010723916348069906){
     s1+=371.0;
    } else {
     s0+=392.0;
     s1+=412.0;
    }
   } else {
    if(i40<0.0018584862118586898){
     s0+=10.0;
    } else {
     s0+=32.0;
     s1+=1050.0;
    }
   }
  }
 }
}
if(i2<0.0009575486183166504){
 if(i41<1.0242488384246826){
  if(i1<-9.379861148772761e-05){
   if(i9<0.9737917184829712){
    if(i42<0.1840275228023529){
     s0+=661.0;
     s1+=118.0;
    } else {
     s0+=19.0;
     s1+=80.0;
    }
   } else {
    if(i49<-8.111250645015389e-05){
     s0+=40.0;
    } else {
     s0+=107.0;
     s1+=1096.0;
    }
   }
  } else {
   if(i20<0.007340525276958942){
    if(i33<1.0100669860839844){
     s0+=907.0;
     s1+=150.0;
    } else {
     s0+=71694.0;
     s1+=633.0;
    }
   } else {
    if(i17<0.9963372945785522){
     s0+=34504.0;
     s1+=808.0;
    } else {
     s0+=5742.0;
     s1+=3367.0;
    }
   }
  }
 } else {
  if(i53<-3.032248287127004e-06){
   if(i39<0.14528557658195496){
    if(i23<0.00402914360165596){
     s0+=45.0;
     s1+=416.0;
    } else {
     s0+=302.0;
     s1+=62.0;
    }
   } else {
    if(i27<1.1672112941741943){
     s0+=93.0;
     s1+=340.0;
    } else {
     s1+=792.0;
    }
   }
  } else {
   if(i32<0.0010984487598761916){
    s0+=414.0;
   } else {
    s1+=6.0;
   }
  }
 }
} else {
 if(i34<0.0023648133501410484){
  if(i30<0.0005125701427459717){
   if(i34<0.001245022751390934){
    if(i6<1.0022083520889282){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=2165.0;
    }
   } else {
    if(i23<0.0010731036309152842){
     s1+=197.0;
    } else {
     s0+=109.0;
    }
   }
  } else {
   if(i13<0.00025750070926733315){
    if(i5<0.00015348196029663086){
     s1+=49.0;
    } else {
     s0+=15.0;
    }
   } else {
    s0+=1856.0;
   }
  }
 } else {
  if(i15<0.0009492039680480957){
   if(i46<2.553554622863885e-06){
    s1+=42.0;
   } else {
    if(i6<1.006176471710205){
     s0+=51.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i15<0.0969369113445282){
    if(i25<1.629280686378479){
     s0+=14.0;
     s1+=470.0;
    } else {
     s0+=30.0;
     s1+=42.0;
    }
   } else {
    if(i9<0.9655437469482422){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=13383.0;
    }
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i2<0.0009949803352355957){
  if(i45<0.011798723600804806){
   if(i44<1.0021682977676392){
    if(i30<7.289648056030273e-05){
     s0+=73835.0;
     s1+=771.0;
    } else {
     s0+=25489.0;
     s1+=2504.0;
    }
   } else {
    if(i1<-5.16814980073832e-05){
     s0+=1738.0;
     s1+=1092.0;
    } else {
     s0+=11949.0;
     s1+=1089.0;
    }
   }
  } else {
   if(i6<1.0009655952453613){
    if(i39<0.10624393820762634){
     s0+=798.0;
     s1+=46.0;
    } else {
     s0+=80.0;
     s1+=148.0;
    }
   } else {
    if(i14<0.8523081541061401){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=69.0;
     s1+=858.0;
    }
   }
  }
 } else {
  if(i25<1.1979892253875732){
   if(i23<0.0010863945353776217){
    if(i34<0.00019349763169884682){
     s0+=44.0;
    } else {
     s1+=813.0;
    }
   } else {
    s0+=1272.0;
   }
  } else {
   if(i3<1.0028709173202515){
    if(i14<0.8841802477836609){
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.0018433332443237305){
     s0+=59.0;
     s1+=866.0;
    } else {
     s0+=4.0;
     s1+=1404.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007059713825583458){
  if(i0<2.154707908630371e-05){
   if(i54<0.037479713559150696){
    if(i44<1.0003745555877686){
     s0+=135.0;
    } else {
     s0+=127.0;
     s1+=26.0;
    }
   } else {
    if(i37<3.2889503927435726e-05){
     s0+=96.0;
     s1+=2.0;
    } else {
     s0+=58.0;
     s1+=319.0;
    }
   }
  } else {
   if(i2<0.0008606910705566406){
    if(i37<1.306720832872088e-06){
     s0+=79.0;
     s1+=25.0;
    } else {
     s0+=107.0;
     s1+=875.0;
    }
   } else {
    if(i66<1.636188244447112e-05){
     s0+=45.0;
     s1+=13369.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  s0+=600.0;
 }
}
if(i1<-0.00010638617095537484){
 if(i16<-0.0037756264209747314){
  if(i67<-0.012055188417434692){
   if(i24<1.0689074993133545){
    if(i4<0.0015125274658203125){
     s0+=333.0;
     s1+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i27<1.2434022426605225){
     s0+=8.0;
     s1+=38.0;
    } else {
     s0+=46.0;
     s1+=19.0;
    }
   }
  } else {
   if(i15<0.030869334936141968){
    if(i25<1.3865976333618164){
     s1+=8.0;
    } else {
     s0+=11.0;
    }
   } else {
    s1+=139.0;
   }
  }
 } else {
  if(i31<0.0024830512702465057){
   if(i19<1.0152037143707275){
    if(i43<0.0007157922955229878){
     s1+=16.0;
    } else {
     s0+=211.0;
    }
   } else {
    if(i21<0.0007406473159790039){
     s0+=6.0;
     s1+=455.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i15<0.02325919270515442){
    if(i6<1.0053677558898926){
     s0+=83.0;
     s1+=26.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i26<0.9715973138809204){
     s0+=28.0;
     s1+=1127.0;
    } else {
     s1+=13071.0;
    }
   }
  }
 }
} else {
 if(i6<1.0024174451828003){
  if(i7<0.0035805795341730118){
   if(i35<1.0746673345565796){
    if(i41<0.994530439376831){
     s0+=3031.0;
     s1+=428.0;
    } else {
     s0+=22824.0;
     s1+=353.0;
    }
   } else {
    if(i14<1.0157215595245361){
     s0+=59673.0;
     s1+=163.0;
    } else {
     s0+=547.0;
     s1+=35.0;
    }
   }
  } else {
   if(i2<-0.00038695335388183594){
    if(i12<0.9967626333236694){
     s0+=16971.0;
     s1+=132.0;
    } else {
     s0+=4307.0;
     s1+=535.0;
    }
   } else {
    if(i35<1.0904077291488647){
     s0+=564.0;
     s1+=2321.0;
    } else {
     s0+=1152.0;
     s1+=538.0;
    }
   }
  }
 } else {
  if(i7<0.004059398081153631){
   if(i0<0.0001189112663269043){
    if(i43<0.00048058986430987716){
     s0+=1062.0;
     s1+=180.0;
    } else {
     s0+=3785.0;
     s1+=132.0;
    }
   } else {
    if(i40<0.0008908449672162533){
     s1+=381.0;
    } else {
     s0+=242.0;
    }
   }
  } else {
   if(i3<1.0017197132110596){
    if(i2<-0.000217437744140625){
     s0+=813.0;
     s1+=203.0;
    } else {
     s0+=188.0;
     s1+=208.0;
    }
   } else {
    if(i21<-0.00020486116409301758){
     s0+=289.0;
     s1+=442.0;
    } else {
     s0+=211.0;
     s1+=3460.0;
    }
   }
  }
 }
}
if(i27<1.1402404308319092){
 if(i6<1.0024405717849731){
  if(i18<0.0016680180560797453){
   if(i33<1.0178465843200684){
    if(i58<1.0002501010894775){
     s0+=6979.0;
     s1+=130.0;
    } else {
     s0+=3384.0;
     s1+=290.0;
    }
   } else {
    if(i33<1.1354830265045166){
     s0+=76064.0;
     s1+=370.0;
    } else {
     s0+=147.0;
     s1+=31.0;
    }
   }
  } else {
   if(i34<0.0011926456354558468){
    if(i37<1.234235332958633e-05){
     s0+=1733.0;
     s1+=380.0;
    } else {
     s0+=1035.0;
     s1+=2336.0;
    }
   } else {
    if(i31<0.001239459728822112){
     s0+=15.0;
     s1+=209.0;
    } else {
     s0+=17202.0;
     s1+=430.0;
    }
   }
  }
 } else {
  if(i13<0.0003447724157012999){
   if(i2<0.0007929205894470215){
    if(i7<0.004234373569488525){
     s0+=1241.0;
     s1+=62.0;
    } else {
     s0+=496.0;
     s1+=510.0;
    }
   } else {
    if(i5<1.6510486602783203e-05){
     s0+=62.0;
     s1+=1.0;
    } else {
     s0+=110.0;
     s1+=4015.0;
    }
   }
  } else {
   if(i37<6.634283636230975e-05){
    if(i10<1.0531400442123413){
     s0+=3005.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i22<0.10336357355117798){
     s0+=570.0;
     s1+=90.0;
    } else {
     s0+=61.0;
     s1+=339.0;
    }
   }
  }
 }
} else {
 if(i3<1.0010632276535034){
  if(i54<0.196366548538208){
   if(i20<0.034240126609802246){
    if(i27<1.1405575275421143){
     s1+=17.0;
    } else {
     s0+=3247.0;
     s1+=56.0;
    }
   } else {
    if(i24<1.0453444719314575){
     s0+=226.0;
     s1+=13.0;
    } else {
     s0+=178.0;
     s1+=516.0;
    }
   }
  } else {
   if(i22<0.09141552448272705){
    if(i7<0.022016240283846855){
     s0+=43.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i46<1.776650606188923e-05){
     s0+=5.0;
    } else {
     s1+=260.0;
    }
   }
  }
 } else {
  if(i1<-4.2571777157718316e-05){
   if(i53<-3.6110250221099705e-06){
    if(i11<0.9382606148719788){
     s0+=92.0;
     s1+=68.0;
    } else {
     s0+=82.0;
     s1+=13625.0;
    }
   } else {
    if(i20<0.02419663965702057){
     s0+=66.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i16<-8.916854858398438e-05){
    if(i0<-7.68899917602539e-06){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=24.0;
     s1+=268.0;
    }
   } else {
    if(i7<0.005364094395190477){
     s0+=673.0;
    } else {
     s1+=73.0;
    }
   }
  }
 }
}
if(i14<1.0170316696166992){
 if(i1<-8.23536392999813e-05){
  if(i38<0.042434364557266235){
   if(i3<1.0036762952804565){
    if(i70<0.05137966573238373){
     s0+=940.0;
     s1+=52.0;
    } else {
     s0+=36.0;
     s1+=71.0;
    }
   } else {
    if(i32<0.0032907556742429733){
     s0+=30.0;
     s1+=108.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i13<0.0007025073282420635){
    if(i19<0.9405195713043213){
     s0+=81.0;
     s1+=54.0;
    } else {
     s0+=168.0;
     s1+=3843.0;
    }
   } else {
    s0+=246.0;
   }
  }
 } else {
  if(i4<0.0003268122673034668){
   if(i32<0.0006575525039806962){
    if(i24<1.0213799476623535){
     s0+=8189.0;
     s1+=136.0;
    } else {
     s0+=65142.0;
     s1+=161.0;
    }
   } else {
    if(i31<0.0010359818115830421){
     s0+=2166.0;
     s1+=2047.0;
    } else {
     s0+=28001.0;
     s1+=558.0;
    }
   }
  } else {
   if(i16<0.0011770129203796387){
    if(i1<-4.454423105926253e-05){
     s0+=1187.0;
     s1+=1051.0;
    } else {
     s0+=8264.0;
     s1+=1329.0;
    }
   } else {
    if(i61<0.00042851761099882424){
     s0+=30.0;
     s1+=753.0;
    } else {
     s0+=510.0;
     s1+=130.0;
    }
   }
  }
 }
} else {
 if(i7<0.005042189732193947){
  if(i46<-1.1820131476270035e-05){
   if(i48<2.4586915969848633e-05){
    if(i13<0.0006522606126964092){
     s1+=573.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i25<1.258997917175293){
     s0+=23.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i37<-2.6003737730206922e-05){
    if(i48<1.239776611328125e-05){
     s1+=72.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.0004542820970527828){
     s1+=28.0;
    } else {
     s0+=1353.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i3<0.9968087673187256){
   if(i43<0.016371771693229675){
    if(i71<0.1431971788406372){
     s0+=62.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    s1+=33.0;
   }
  } else {
   if(i50<0.9964601993560791){
    s0+=13.0;
   } else {
    if(i13<0.001091978163458407){
     s0+=37.0;
     s1+=13172.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
}
if(i2<0.0009961724281311035){
 if(i26<1.0181578397750854){
  if(i4<0.0003134608268737793){
   if(i7<0.0030945942271500826){
    if(i62<-0.00042569637298583984){
     s0+=13112.0;
     s1+=412.0;
    } else {
     s0+=64554.0;
     s1+=264.0;
    }
   } else {
    if(i31<0.0011698363814502954){
     s0+=3554.0;
     s1+=1603.0;
    } else {
     s0+=22559.0;
     s1+=673.0;
    }
   }
  } else {
   if(i42<0.028795810416340828){
    if(i18<0.0020314478315413){
     s0+=5888.0;
     s1+=49.0;
    } else {
     s0+=1927.0;
     s1+=915.0;
    }
   } else {
    if(i3<0.9999021291732788){
     s0+=1361.0;
     s1+=352.0;
    } else {
     s0+=587.0;
     s1+=1853.0;
    }
   }
  }
 } else {
  if(i18<0.0015432164072990417){
   if(i50<1.000828742980957){
    s0+=375.0;
   } else {
    if(i67<0.0019401311874389648){
     s0+=149.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=33.0;
    }
   }
  } else {
   if(i7<0.006304655224084854){
    if(i40<0.0034563285298645496){
     s0+=146.0;
     s1+=147.0;
    } else {
     s0+=279.0;
     s1+=21.0;
    }
   } else {
    if(i47<0.9980033040046692){
     s0+=6.0;
    } else {
     s0+=40.0;
     s1+=1775.0;
    }
   }
  }
 }
} else {
 if(i19<1.01774263381958){
  if(i31<0.0024072201922535896){
   if(i48<1.0848045349121094e-05){
    if(i29<1.1174830198287964){
     s0+=12.0;
     s1+=1256.0;
    } else {
     s0+=228.0;
    }
   } else {
    if(i25<1.1180615425109863){
     s0+=51.0;
     s1+=56.0;
    } else {
     s0+=1481.0;
     s1+=1.0;
    }
   }
  } else {
   if(i9<0.976269006729126){
    if(i40<0.017167989164590836){
     s0+=43.0;
     s1+=18.0;
    } else {
     s0+=3.0;
     s1+=59.0;
    }
   } else {
    if(i32<0.000421219679992646){
     s0+=24.0;
     s1+=41.0;
    } else {
     s0+=39.0;
     s1+=3055.0;
    }
   }
  }
 } else {
  if(i69<6.1439118326234166e-06){
   if(i18<0.000539845903404057){
    if(i13<0.0007573321345262229){
     s1+=64.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i5<0.00027930736541748047){
     s0+=38.0;
     s1+=11698.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   s0+=15.0;
  }
 }
}
if(i0<6.383657455444336e-05){
 if(i24<1.1402404308319092){
  if(i14<1.0164064168930054){
   if(i4<0.000292360782623291){
    if(i59<0.00019295043603051454){
     s0+=78181.0;
     s1+=1009.0;
    } else {
     s0+=23907.0;
     s1+=1649.0;
    }
   } else {
    if(i42<0.01405693031847477){
     s0+=7226.0;
     s1+=536.0;
    } else {
     s0+=2968.0;
     s1+=1794.0;
    }
   }
  } else {
   if(i25<1.1178560256958008){
    if(i18<0.0016483482904732227){
     s0+=9.0;
    } else {
     s1+=488.0;
    }
   } else {
    if(i15<0.16486409306526184){
     s0+=736.0;
     s1+=150.0;
    } else {
     s0+=111.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i49<-1.2756219803122804e-05){
   if(i1<-3.711331373779103e-05){
    if(i28<0.8574167490005493){
     s0+=68.0;
     s1+=108.0;
    } else {
     s0+=31.0;
     s1+=1773.0;
    }
   } else {
    if(i15<0.18955323100090027){
     s0+=173.0;
     s1+=23.0;
    } else {
     s0+=26.0;
     s1+=91.0;
    }
   }
  } else {
   if(i48<6.258487701416016e-06){
    if(i13<0.00031971692806109786){
     s0+=835.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   } else {
    if(i18<0.0031712152995169163){
     s0+=128.0;
    } else {
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i9<1.0152355432510376){
  if(i20<0.014165941625833511){
   if(i23<0.0009706164710223675){
    if(i23<0.00024337925424333662){
     s0+=56.0;
    } else {
     s1+=1224.0;
    }
   } else {
    if(i19<1.0015864372253418){
     s0+=21.0;
     s1+=72.0;
    } else {
     s0+=1904.0;
     s1+=74.0;
    }
   }
  } else {
   if(i15<0.10567501187324524){
    if(i72<1.0224051475524902){
     s0+=71.0;
     s1+=430.0;
    } else {
     s0+=47.0;
     s1+=17.0;
    }
   } else {
    if(i10<0.84925776720047){
     s0+=6.0;
    } else {
     s0+=23.0;
     s1+=2772.0;
    }
   }
  }
 } else {
  if(i18<0.0009878198616206646){
   if(i2<0.0020359158515930176){
    s0+=31.0;
   } else {
    s1+=225.0;
   }
  } else {
   if(i49<-0.0001802768965717405){
    if(i56<1.095555067062378){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i55<-6.5692729549482465e-06){
     s0+=1.0;
    } else {
     s1+=11513.0;
    }
   }
  }
 }
}
if(i1<-0.00011003482359228656){
 if(i56<0.9545140266418457){
  if(i3<1.0050857067108154){
   if(i51<-0.0007512781885452569){
    if(i32<0.004006248898804188){
     s0+=8.0;
     s1+=37.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i58<1.0059490203857422){
     s0+=227.0;
     s1+=20.0;
    } else {
     s0+=26.0;
     s1+=23.0;
    }
   }
  } else {
   if(i33<0.9633132815361023){
    if(i29<1.3865976333618164){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i13<7.44760618545115e-05){
     s0+=1.0;
    } else {
     s1+=45.0;
    }
   }
  }
 } else {
  if(i32<0.004031617194414139){
   if(i19<0.9452497959136963){
    if(i22<0.01821613311767578){
     s0+=99.0;
    } else {
     s0+=6.0;
     s1+=54.0;
    }
   } else {
    if(i5<0.0002263188362121582){
     s0+=61.0;
     s1+=14563.0;
    } else {
     s0+=75.0;
    }
   }
  } else {
   s0+=79.0;
  }
 }
} else {
 if(i11<1.0123205184936523){
  if(i24<1.1391525268554688){
   if(i4<0.00032716989517211914){
    if(i7<0.0027854079380631447){
     s0+=74529.0;
     s1+=593.0;
    } else {
     s0+=28994.0;
     s1+=2290.0;
    }
   } else {
    if(i2<0.0014060139656066895){
     s0+=8990.0;
     s1+=2198.0;
    } else {
     s0+=215.0;
     s1+=784.0;
    }
   }
  } else {
   if(i20<0.03448246419429779){
    if(i5<4.839897155761719e-05){
     s0+=1024.0;
     s1+=39.0;
    } else {
     s0+=8.0;
     s1+=28.0;
    }
   } else {
    if(i18<0.0016930046258494258){
     s0+=34.0;
    } else {
     s0+=49.0;
     s1+=665.0;
    }
   }
  }
 } else {
  if(i7<0.004104502499103546){
   if(i25<1.1180615425109863){
    s1+=300.0;
   } else {
    if(i65<-0.000641524326056242){
     s0+=122.0;
     s1+=38.0;
    } else {
     s0+=1639.0;
     s1+=13.0;
    }
   }
  } else {
   if(i29<1.4586446285247803){
    if(i13<0.0005902043194510043){
     s0+=8.0;
     s1+=2755.0;
    } else {
     s0+=147.0;
    }
   } else {
    if(i76<0.009512245655059814){
     s0+=64.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i6<1.002625584602356){
 if(i19<1.0101895332336426){
  if(i26<1.022601842880249){
   if(i20<0.08886991441249847){
    if(i29<1.0905578136444092){
     s0+=26062.0;
     s1+=2458.0;
    } else {
     s0+=83363.0;
     s1+=1434.0;
    }
   } else {
    if(i24<1.06653892993927){
     s0+=6.0;
    } else {
     s1+=261.0;
    }
   }
  } else {
   if(i1<-3.2477433705935255e-05){
    if(i7<0.005422697868198156){
     s0+=19.0;
    } else {
     s0+=3.0;
     s1+=284.0;
    }
   } else {
    if(i23<0.004848516546189785){
     s0+=83.0;
     s1+=8.0;
    } else {
     s0+=10.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i18<0.0020186712499707937){
   if(i46<9.476530976826325e-06){
    s0+=555.0;
   } else {
    if(i2<-5.322694778442383e-05){
     s0+=95.0;
     s1+=5.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i30<0.000340193510055542){
    if(i12<0.9940811991691589){
     s0+=55.0;
     s1+=17.0;
    } else {
     s0+=17.0;
     s1+=1019.0;
    }
   } else {
    if(i35<1.1749842166900635){
     s0+=229.0;
     s1+=1.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i31<0.002549482975155115){
  if(i35<1.095003366470337){
   if(i27<1.0451974868774414){
    if(i42<0.008018775843083858){
     s0+=727.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=54.0;
    }
   } else {
    if(i53<-3.966022632084787e-06){
     s0+=12.0;
     s1+=2005.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i48<9.357929229736328e-06){
    if(i2<0.0011134147644042969){
     s0+=362.0;
     s1+=136.0;
    } else {
     s0+=44.0;
     s1+=323.0;
    }
   } else {
    if(i34<0.0006321737309917808){
     s1+=16.0;
    } else {
     s0+=2991.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i39<0.05564114451408386){
   if(i5<5.608797073364258e-05){
    if(i3<1.0017433166503906){
     s0+=868.0;
     s1+=109.0;
    } else {
     s0+=257.0;
     s1+=232.0;
    }
   } else {
    if(i70<0.007046819664537907){
     s0+=71.0;
     s1+=35.0;
    } else {
     s0+=41.0;
     s1+=641.0;
    }
   }
  } else {
   if(i35<1.1672112941741943){
    if(i3<1.00227952003479){
     s0+=243.0;
     s1+=56.0;
    } else {
     s0+=78.0;
     s1+=867.0;
    }
   } else {
    if(i3<1.0017143487930298){
     s0+=205.0;
     s1+=384.0;
    } else {
     s0+=112.0;
     s1+=13870.0;
    }
   }
  }
 }
}
if(i19<1.0145370960235596){
 if(i27<1.1546916961669922){
  if(i7<0.0036593670956790447){
   if(i0<9.697675704956055e-05){
    if(i32<0.0005071574705652893){
     s0+=62878.0;
     s1+=108.0;
    } else {
     s0+=26751.0;
     s1+=968.0;
    }
   } else {
    if(i36<1.0958912372589111){
     s1+=273.0;
    } else {
     s0+=403.0;
     s1+=21.0;
    }
   }
  } else {
   if(i4<-0.00010877847671508789){
    if(i64<0.011967532336711884){
     s0+=18284.0;
     s1+=180.0;
    } else {
     s0+=21.0;
     s1+=28.0;
    }
   } else {
    if(i17<0.9942044019699097){
     s0+=2610.0;
     s1+=389.0;
    } else {
     s0+=1951.0;
     s1+=4928.0;
    }
   }
  }
 } else {
  if(i1<-0.00010305606701876968){
   if(i42<0.085655078291893){
    if(i16<-0.002767026424407959){
     s0+=288.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=263.0;
    }
   } else {
    if(i19<0.930018424987793){
     s0+=93.0;
     s1+=22.0;
    } else {
     s0+=53.0;
     s1+=2479.0;
    }
   }
  } else {
   if(i26<1.019459843635559){
    if(i20<0.03805281221866608){
     s0+=2273.0;
     s1+=161.0;
    } else {
     s0+=94.0;
     s1+=498.0;
    }
   } else {
    if(i54<0.05026623606681824){
     s0+=78.0;
     s1+=44.0;
    } else {
     s0+=27.0;
     s1+=313.0;
    }
   }
  }
 }
} else {
 if(i2<0.00024706125259399414){
  if(i1<-6.707143620587885e-05){
   if(i54<0.04000738635659218){
    if(i34<0.004277075175195932){
     s1+=4.0;
    } else {
     s0+=10.0;
    }
   } else {
    s1+=70.0;
   }
  } else {
   if(i35<1.092748999595642){
    s1+=6.0;
   } else {
    if(i25<1.2564609050750732){
     s0+=58.0;
     s1+=16.0;
    } else {
     s0+=307.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i1<-6.86838902765885e-05){
   if(i48<-2.9712915420532227e-05){
    s0+=22.0;
   } else {
    if(i23<0.002433218527585268){
     s0+=111.0;
     s1+=1116.0;
    } else {
     s0+=6.0;
     s1+=11341.0;
    }
   }
  } else {
   if(i36<1.096491813659668){
    s1+=458.0;
   } else {
    if(i30<0.0007146894931793213){
     s0+=58.0;
     s1+=320.0;
    } else {
     s0+=407.0;
     s1+=28.0;
    }
   }
  }
 }
}
if(i1<-8.06535390438512e-05){
 if(i2<2.199411392211914e-05){
  if(i20<0.05389205738902092){
   if(i51<-0.00043916847789660096){
    if(i42<0.04643179476261139){
     s0+=72.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=150.0;
    }
   } else {
    if(i6<1.004951000213623){
     s0+=974.0;
     s1+=48.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i19<0.9400884509086609){
    if(i29<1.5726749897003174){
     s0+=53.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=45.0;
    }
   } else {
    if(i54<0.01959412172436714){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i20<0.004211162216961384){
   if(i47<0.9998648166656494){
    s0+=224.0;
   } else {
    if(i26<1.0018137693405151){
     s0+=22.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=305.0;
    }
   }
  } else {
   if(i10<0.9067027568817139){
    if(i16<-0.0022428929805755615){
     s0+=97.0;
     s1+=42.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i55<-6.611284334212542e-06){
     s0+=123.0;
    } else {
     s0+=182.0;
     s1+=15384.0;
    }
   }
  }
 }
} else {
 if(i8<1.0130810737609863){
  if(i18<0.0016921816859394312){
   if(i0<0.00011640787124633789){
    if(i33<1.0178465843200684){
     s0+=10420.0;
     s1+=446.0;
    } else {
     s0+=80635.0;
     s1+=487.0;
    }
   } else {
    if(i25<1.1093167066574097){
     s1+=107.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i34<0.0010808806400746107){
    if(i38<0.05423778295516968){
     s0+=2158.0;
     s1+=994.0;
    } else {
     s0+=309.0;
     s1+=2015.0;
    }
   } else {
    if(i4<0.000359952449798584){
     s0+=17543.0;
     s1+=535.0;
    } else {
     s0+=2616.0;
     s1+=1215.0;
    }
   }
  }
 } else {
  if(i13<0.0003499977174215019){
   if(i4<0.00032329559326171875){
    if(i37<4.5168671931605786e-05){
     s0+=320.0;
    } else {
     s0+=56.0;
     s1+=77.0;
    }
   } else {
    if(i46<2.139684875146486e-05){
     s0+=34.0;
     s1+=1620.0;
    } else {
     s0+=103.0;
     s1+=6.0;
    }
   }
  } else {
   if(i40<0.006993818562477827){
    s0+=763.0;
   } else {
    s1+=25.0;
   }
  }
 }
}
if(i1<-9.339455573353916e-05){
 if(i3<0.9998463988304138){
  if(i14<0.9159983396530151){
   if(i51<-0.0004910983261652291){
    if(i20<0.0568348690867424){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=60.0;
    }
   } else {
    if(i20<0.06046532467007637){
     s0+=482.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=36.0;
    }
   }
  } else {
   if(i32<0.0015880484133958817){
    if(i8<0.9745157957077026){
     s1+=2.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i7<0.013813439756631851){
     s0+=37.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=339.0;
    }
   }
  }
 } else {
  if(i19<0.9475822448730469){
   if(i45<0.014824549667537212){
    if(i46<5.7748009567148983e-05){
     s0+=106.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i8<0.9721205234527588){
     s1+=19.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i55<-6.6408160819264594e-06){
    s0+=263.0;
   } else {
    if(i33<1.0158576965332031){
     s0+=42.0;
     s1+=82.0;
    } else {
     s0+=55.0;
     s1+=15075.0;
    }
   }
  }
 }
} else {
 if(i12<1.0042016506195068){
  if(i4<0.00029343366622924805){
   if(i32<0.0006575156003236771){
    if(i35<1.1354830265045166){
     s0+=67468.0;
     s1+=201.0;
    } else {
     s0+=5756.0;
     s1+=109.0;
    }
   } else {
    if(i58<1.00299072265625){
     s0+=20371.0;
     s1+=2342.0;
    } else {
     s0+=9565.0;
     s1+=123.0;
    }
   }
  } else {
   if(i67<0.0012574195861816406){
    if(i58<1.001446008682251){
     s0+=5095.0;
     s1+=408.0;
    } else {
     s0+=2227.0;
     s1+=915.0;
    }
   } else {
    if(i0<7.748603820800781e-06){
     s0+=536.0;
     s1+=80.0;
    } else {
     s0+=312.0;
     s1+=1139.0;
    }
   }
  }
 } else {
  if(i13<0.0003435302642174065){
   if(i23<0.0009846989996731281){
    if(i0<1.1920928955078125e-05){
     s0+=4.0;
    } else {
     s1+=1550.0;
    }
   } else {
    if(i40<0.0019213567720726132){
     s0+=628.0;
    } else {
     s0+=411.0;
     s1+=1396.0;
    }
   }
  } else {
   if(i40<0.005478803068399429){
    if(i4<0.000507056713104248){
     s0+=29.0;
     s1+=3.0;
    } else {
     s0+=3044.0;
    }
   } else {
    if(i39<0.12296038866043091){
     s0+=199.0;
     s1+=99.0;
    } else {
     s1+=83.0;
    }
   }
  }
 }
}
if(i6<1.0026332139968872){
 if(i9<1.0068632364273071){
  if(i38<0.22912314534187317){
   if(i7<0.0033554125111550093){
    if(i62<-0.00038689374923706055){
     s0+=15088.0;
     s1+=565.0;
    } else {
     s0+=68852.0;
     s1+=303.0;
    }
   } else {
    if(i2<-0.0003943145275115967){
     s0+=22923.0;
     s1+=689.0;
    } else {
     s0+=2201.0;
     s1+=2549.0;
    }
   }
  } else {
   if(i40<0.0031683961860835552){
    if(i50<1.001122236251831){
     s0+=60.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i44<0.9991567134857178){
     s0+=49.0;
     s1+=51.0;
    } else {
     s0+=20.0;
     s1+=391.0;
    }
   }
  }
 } else {
  if(i30<0.0003992021083831787){
   if(i36<1.1005628108978271){
    s1+=620.0;
   } else {
    if(i20<0.02276013419032097){
     s0+=660.0;
     s1+=66.0;
    } else {
     s0+=11.0;
     s1+=369.0;
    }
   }
  } else {
   if(i63<0.11803729832172394){
    if(i19<1.0248732566833496){
     s0+=389.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i7<0.004014653153717518){
  if(i8<1.0133508443832397){
   if(i59<0.00014538259711116552){
    if(i46<-8.92563366505783e-06){
     s0+=199.0;
     s1+=82.0;
    } else {
     s0+=3079.0;
     s1+=57.0;
    }
   } else {
    if(i23<0.0010936580365523696){
     s1+=127.0;
    } else {
     s0+=336.0;
     s1+=60.0;
    }
   }
  } else {
   if(i30<0.0005424022674560547){
    if(i47<1.001709222793579){
     s1+=550.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i16<0.0027222633361816406){
     s0+=802.0;
    } else {
     s1+=181.0;
    }
   }
  }
 } else {
  if(i15<0.03972733020782471){
   if(i46<2.0805882741115056e-06){
    if(i42<0.005311677232384682){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=154.0;
    }
   } else {
    if(i63<0.07902482897043228){
     s0+=143.0;
     s1+=87.0;
    } else {
     s0+=529.0;
     s1+=62.0;
    }
   }
  } else {
   if(i2<5.555152893066406e-05){
    if(i54<0.04795997589826584){
     s0+=330.0;
     s1+=115.0;
    } else {
     s0+=144.0;
     s1+=362.0;
    }
   } else {
    if(i36<1.1912720203399658){
     s0+=315.0;
     s1+=2678.0;
    } else {
     s0+=186.0;
     s1+=14402.0;
    }
   }
  }
 }
}
if(i20<0.04859431833028793){
 if(i21<0.0002098679542541504){
  if(i4<0.000379025936126709){
   if(i7<0.00342957628890872){
    if(i7<0.0019329108763486147){
     s0+=64156.0;
     s1+=260.0;
    } else {
     s0+=17304.0;
     s1+=589.0;
    }
   } else {
    if(i13<0.0002130729117197916){
     s0+=9232.0;
     s1+=1819.0;
    } else {
     s0+=13647.0;
     s1+=539.0;
    }
   }
  } else {
   if(i60<-0.000776266329921782){
    if(i3<1.0007681846618652){
     s0+=572.0;
     s1+=121.0;
    } else {
     s0+=851.0;
     s1+=2323.0;
    }
   } else {
    if(i18<0.0019238701788708568){
     s0+=5009.0;
     s1+=100.0;
    } else {
     s0+=2882.0;
     s1+=1651.0;
    }
   }
  }
 } else {
  if(i6<1.0020747184753418){
   if(i8<1.0284494161605835){
    if(i27<1.0684335231781006){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=351.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i1<-7.89581099525094e-05){
    if(i50<1.0009486675262451){
     s0+=104.0;
     s1+=53.0;
    } else {
     s0+=108.0;
     s1+=6206.0;
    }
   } else {
    if(i29<1.1177868843078613){
     s0+=4.0;
     s1+=850.0;
    } else {
     s0+=434.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i5<-7.838010787963867e-06){
  if(i24<1.1259219646453857){
   if(i1<-7.771673699608073e-05){
    if(i22<0.03688153624534607){
     s0+=8.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i62<-0.009400755167007446){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=1616.0;
    }
   }
  } else {
   if(i6<0.9994593858718872){
    s1+=152.0;
   } else {
    if(i12<0.9944706559181213){
     s0+=8.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i37<0.00033176440047100186){
   if(i11<0.9348083138465881){
    if(i20<0.0565502867102623){
     s0+=17.0;
    } else {
     s0+=13.0;
     s1+=91.0;
    }
   } else {
    if(i2<-0.0014567971229553223){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=9066.0;
    }
   }
  } else {
   if(i45<0.007270876318216324){
    if(i18<0.007706750184297562){
     s0+=104.0;
     s1+=4.0;
    } else {
     s0+=92.0;
     s1+=54.0;
    }
   } else {
    if(i33<0.9957208633422852){
     s0+=26.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=195.0;
    }
   }
  }
 }
}
if(i3<1.0037140846252441){
 if(i18<0.0017366306856274605){
  if(i49<-1.974974657059647e-05){
   if(i46<1.965287810890004e-05){
    s1+=47.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i18<0.0011455914936959743){
    if(i24<1.1354830265045166){
     s0+=75106.0;
     s1+=226.0;
    } else {
     s0+=919.0;
     s1+=34.0;
    }
   } else {
    if(i4<-0.0003148317337036133){
     s0+=8888.0;
     s1+=5.0;
    } else {
     s0+=4766.0;
     s1+=663.0;
    }
   }
  }
 } else {
  if(i34<0.0010581051465123892){
   if(i23<0.00023483129916712642){
    if(i63<0.04401669651269913){
     s0+=1643.0;
     s1+=8.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i58<0.9992678165435791){
     s0+=270.0;
    } else {
     s0+=169.0;
     s1+=2254.0;
    }
   }
  } else {
   if(i2<-0.0002562999725341797){
    if(i23<0.013839161954820156){
     s0+=18276.0;
     s1+=828.0;
    } else {
     s0+=347.0;
     s1+=234.0;
    }
   } else {
    if(i20<0.018220823258161545){
     s0+=1340.0;
     s1+=133.0;
    } else {
     s0+=371.0;
     s1+=1967.0;
    }
   }
  }
 }
} else {
 if(i3<1.0081689357757568){
  if(i7<0.004066635854542255){
   if(i37<-2.9295444619492628e-05){
    if(i23<0.0007956900517456234){
     s1+=71.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i7<0.002779862843453884){
     s0+=3080.0;
     s1+=11.0;
    } else {
     s0+=399.0;
     s1+=166.0;
    }
   }
  } else {
   if(i13<0.0007052091532386839){
    if(i51<-0.00011923817510250956){
     s0+=97.0;
     s1+=3923.0;
    } else {
     s0+=111.0;
     s1+=394.0;
    }
   } else {
    s0+=271.0;
   }
  }
 } else {
  if(i48<2.8431415557861328e-05){
   if(i13<0.0008100195555016398){
    if(i47<1.002572774887085){
     s1+=12299.0;
    } else {
     s0+=41.0;
     s1+=947.0;
    }
   } else {
    s0+=186.0;
   }
  } else {
   if(i24<1.1327776908874512){
    s0+=307.0;
   } else {
    s1+=32.0;
   }
  }
 }
}
if(i1<-9.840834536589682e-05){
 if(i62<-0.007095664739608765){
  if(i19<0.9494352340698242){
   if(i22<0.11782616376876831){
    if(i73<-0.012647062540054321){
     s0+=9.0;
     s1+=19.0;
    } else {
     s0+=541.0;
     s1+=21.0;
    }
   } else {
    if(i33<1.0321000814437866){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i22<0.016400009393692017){
    if(i60<0.0007943047676235437){
     s0+=33.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i54<0.14886713027954102){
     s1+=61.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i13<0.0007076200563460588){
   if(i48<5.841255187988281e-05){
    if(i62<-0.006255507469177246){
     s0+=38.0;
     s1+=140.0;
    } else {
     s0+=71.0;
     s1+=15012.0;
    }
   } else {
    s0+=63.0;
   }
  } else {
   s0+=156.0;
  }
 }
} else {
 if(i4<0.0003574490547180176){
  if(i25<1.116391897201538){
   if(i7<0.003175517078489065){
    if(i67<-0.0006281733512878418){
     s0+=3501.0;
     s1+=464.0;
    } else {
     s0+=20573.0;
     s1+=166.0;
    }
   } else {
    if(i25<1.05894136428833){
     s0+=3082.0;
    } else {
     s0+=497.0;
     s1+=1747.0;
    }
   }
  } else {
   if(i22<0.20165222883224487){
    if(i10<1.019146203994751){
     s0+=77159.0;
     s1+=551.0;
    } else {
     s0+=421.0;
     s1+=92.0;
    }
   } else {
    if(i42<0.05962308496236801){
     s0+=197.0;
     s1+=19.0;
    } else {
     s0+=65.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i1<-7.462562643922865e-05){
   if(i13<0.0003782238345593214){
    if(i0<2.5570392608642578e-05){
     s0+=170.0;
     s1+=94.0;
    } else {
     s0+=18.0;
     s1+=1362.0;
    }
   } else {
    if(i54<0.030874624848365784){
     s0+=253.0;
     s1+=9.0;
    } else {
     s0+=52.0;
     s1+=115.0;
    }
   }
  } else {
   if(i29<1.054492473602295){
    s0+=2522.0;
   } else {
    if(i25<1.1162974834442139){
     s0+=333.0;
     s1+=2465.0;
    } else {
     s0+=6929.0;
     s1+=1610.0;
    }
   }
  }
 }
}
if(i44<1.0035808086395264){
 if(i11<1.0121502876281738){
  if(i49<-3.482258034637198e-05){
   if(i16<-0.004402607679367065){
    if(i33<1.146504282951355){
     s0+=180.0;
     s1+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i45<0.002246931428089738){
     s0+=128.0;
     s1+=12.0;
    } else {
     s0+=90.0;
     s1+=480.0;
    }
   }
  } else {
   if(i1<-6.616195605602115e-05){
    if(i22<0.14019501209259033){
     s0+=1088.0;
     s1+=212.0;
    } else {
     s0+=49.0;
     s1+=210.0;
    }
   } else {
    if(i7<0.00344466557726264){
     s0+=84996.0;
     s1+=909.0;
    } else {
     s0+=20945.0;
     s1+=2848.0;
    }
   }
  }
 } else {
  if(i5<1.1622905731201172e-05){
   if(i30<-0.00030991435050964355){
    if(i57<0.0016841210890561342){
     s0+=6.0;
    } else {
     s1+=99.0;
    }
   } else {
    if(i32<0.0007147281430661678){
     s0+=375.0;
     s1+=3.0;
    } else {
     s0+=113.0;
     s1+=103.0;
    }
   }
  } else {
   if(i13<0.0007126646814867854){
    if(i53<-4.923377218801761e-06){
     s0+=45.0;
     s1+=2977.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   } else {
    s0+=205.0;
   }
  }
 }
} else {
 if(i1<-8.068899478530511e-05){
  if(i16<-0.004014551639556885){
   if(i62<-0.007091522216796875){
    if(i24<1.072326898574829){
     s0+=416.0;
     s1+=13.0;
    } else {
     s0+=86.0;
     s1+=60.0;
    }
   } else {
    if(i26<0.9869118332862854){
     s0+=20.0;
     s1+=108.0;
    } else {
     s0+=49.0;
     s1+=23.0;
    }
   }
  } else {
   if(i69<4.011676082882332e-06){
    if(i9<0.9755657911300659){
     s0+=71.0;
     s1+=56.0;
    } else {
     s0+=184.0;
     s1+=13284.0;
    }
   } else {
    s0+=53.0;
   }
  }
 } else {
  if(i30<0.0007039308547973633){
   if(i37<7.533807365689427e-05){
    if(i44<1.0045220851898193){
     s0+=378.0;
     s1+=513.0;
    } else {
     s0+=127.0;
     s1+=1488.0;
    }
   } else {
    if(i15<0.16199642419815063){
     s0+=3311.0;
     s1+=224.0;
    } else {
     s0+=108.0;
     s1+=222.0;
    }
   }
  } else {
   if(i65<0.0011833130847662687){
    if(i10<1.0283385515213013){
     s0+=3242.0;
     s1+=26.0;
    } else {
     s0+=137.0;
     s1+=56.0;
    }
   } else {
    if(i12<1.009007215499878){
     s0+=175.0;
     s1+=88.0;
    } else {
     s0+=11.0;
     s1+=232.0;
    }
   }
  }
 }
}
if(i27<1.1402404308319092){
 if(i4<0.0005188584327697754){
  if(i8<1.0142364501953125){
   if(i23<0.0008801923249848187){
    if(i32<0.0007222344866022468){
     s0+=27997.0;
     s1+=335.0;
    } else {
     s0+=2023.0;
     s1+=2494.0;
    }
   } else {
    if(i28<1.046715259552002){
     s0+=75335.0;
     s1+=669.0;
    } else {
     s0+=20.0;
     s1+=45.0;
    }
   }
  } else {
   if(i17<0.9982150197029114){
    if(i25<1.488378882408142){
     s0+=99.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i7<0.004084690473973751){
     s0+=64.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i15<0.056760162115097046){
   if(i37<-1.3521587789000478e-05){
    if(i13<0.00020791884162463248){
     s0+=14.0;
     s1+=295.0;
    } else {
     s0+=106.0;
     s1+=2.0;
    }
   } else {
    if(i74<-0.08869203925132751){
     s0+=24.0;
     s1+=70.0;
    } else {
     s0+=2714.0;
     s1+=197.0;
    }
   }
  } else {
   if(i7<0.004381720907986164){
    if(i35<1.090468406677246){
     s0+=77.0;
     s1+=604.0;
    } else {
     s0+=2719.0;
     s1+=183.0;
    }
   } else {
    if(i55<-5.624201548926067e-06){
     s0+=154.0;
    } else {
     s0+=585.0;
     s1+=4159.0;
    }
   }
  }
 }
} else {
 if(i2<0.00021308660507202148){
  if(i20<0.03460674732923508){
   if(i50<1.0021615028381348){
    if(i9<1.0132949352264404){
     s0+=2928.0;
     s1+=32.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i60<-0.0005859008524566889){
     s0+=99.0;
     s1+=84.0;
    } else {
     s0+=367.0;
     s1+=5.0;
    }
   }
  } else {
   if(i22<0.0455261766910553){
    if(i42<0.08221139013767242){
     s0+=228.0;
     s1+=14.0;
    } else {
     s0+=90.0;
     s1+=69.0;
    }
   } else {
    if(i42<0.10001234710216522){
     s0+=69.0;
     s1+=102.0;
    } else {
     s0+=40.0;
     s1+=825.0;
    }
   }
  }
 } else {
  if(i18<0.0009752736077643931){
   if(i37<-2.548059455875773e-05){
    s1+=120.0;
   } else {
    s0+=608.0;
   }
  } else {
   if(i31<0.001952440245077014){
    s0+=84.0;
   } else {
    if(i19<0.9587545990943909){
     s0+=118.0;
     s1+=212.0;
    } else {
     s0+=63.0;
     s1+=13530.0;
    }
   }
  }
 }
}
if(i7<0.00747767835855484){
 if(i5<1.901388168334961e-05){
  if(i40<0.0009971207473427057){
   if(i36<1.05497145652771){
    if(i59<0.00011216917482670397){
     s0+=16960.0;
     s1+=18.0;
    } else {
     s0+=3713.0;
     s1+=116.0;
    }
   } else {
    if(i44<0.9994981288909912){
     s0+=6413.0;
     s1+=363.0;
    } else {
     s0+=4154.0;
     s1+=1887.0;
    }
   }
  } else {
   if(i27<1.122455358505249){
    if(i36<1.0905301570892334){
     s0+=1284.0;
     s1+=180.0;
    } else {
     s0+=66197.0;
     s1+=216.0;
    }
   } else {
    if(i37<2.742457581916824e-05){
     s0+=3293.0;
     s1+=25.0;
    } else {
     s0+=2640.0;
     s1+=421.0;
    }
   }
  }
 } else {
  if(i7<0.0034547015093266964){
   if(i12<1.010705828666687){
    if(i0<0.00010782480239868164){
     s0+=4785.0;
     s1+=81.0;
    } else {
     s0+=430.0;
     s1+=196.0;
    }
   } else {
    if(i30<0.0010467171669006348){
     s0+=10.0;
     s1+=462.0;
    } else {
     s0+=78.0;
     s1+=10.0;
    }
   }
  } else {
   if(i17<0.9999302625656128){
    if(i30<0.0002810657024383545){
     s0+=24.0;
     s1+=73.0;
    } else {
     s0+=569.0;
     s1+=35.0;
    }
   } else {
    if(i47<0.999674916267395){
     s0+=296.0;
     s1+=5.0;
    } else {
     s0+=525.0;
     s1+=3155.0;
    }
   }
  }
 }
} else {
 if(i33<1.0527876615524292){
  if(i53<-2.014843630604446e-05){
   if(i66<3.2967282095341943e-06){
    if(i27<1.097757339477539){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=152.0;
    }
   } else {
    if(i16<-0.004551947116851807){
     s0+=20.0;
    } else {
     s0+=11.0;
     s1+=23.0;
    }
   }
  } else {
   if(i2<-0.00012451410293579102){
    if(i39<0.0984746515750885){
     s0+=4100.0;
     s1+=116.0;
    } else {
     s0+=104.0;
     s1+=66.0;
    }
   } else {
    if(i67<-0.003867506980895996){
     s0+=274.0;
     s1+=225.0;
    } else {
     s0+=3.0;
     s1+=427.0;
    }
   }
  }
 } else {
  if(i17<0.9914766550064087){
   if(i7<0.01581241935491562){
    if(i71<0.1597980558872223){
     s0+=606.0;
     s1+=104.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   } else {
    if(i16<-0.006476253271102905){
     s0+=16.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=572.0;
    }
   }
  } else {
   if(i55<-7.167695912357885e-06){
    s0+=50.0;
   } else {
    if(i0<-6.103515625e-05){
     s0+=59.0;
     s1+=55.0;
    } else {
     s0+=76.0;
     s1+=15102.0;
    }
   }
  }
 }
}
if(i22<0.186611145734787){
 if(i4<0.0005393624305725098){
  if(i32<0.0007080329232849181){
   if(i25<1.0817922353744507){
    if(i16<-0.0003847777843475342){
     s0+=5383.0;
     s1+=261.0;
    } else {
     s0+=10991.0;
     s1+=13.0;
    }
   } else {
    if(i36<1.1354830265045166){
     s0+=50861.0;
     s1+=22.0;
    } else {
     s0+=11248.0;
     s1+=138.0;
    }
   }
  } else {
   if(i31<0.0010359818115830421){
    if(i47<0.9995705485343933){
     s0+=1839.0;
     s1+=82.0;
    } else {
     s0+=518.0;
     s1+=2563.0;
    }
   } else {
    if(i10<1.019269347190857){
     s0+=27623.0;
     s1+=843.0;
    } else {
     s0+=141.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i0<8.362531661987305e-05){
   if(i7<0.004268035292625427){
    if(i54<0.05119051784276962){
     s0+=4262.0;
     s1+=101.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i3<1.000880241394043){
     s0+=965.0;
     s1+=267.0;
    } else {
     s0+=566.0;
     s1+=2422.0;
    }
   }
  } else {
   if(i13<0.0007035648450255394){
    if(i55<-5.951220828137593e-06){
     s0+=60.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=4438.0;
    }
   } else {
    s0+=964.0;
   }
  }
 }
} else {
 if(i1<-4.3476204155012965e-05){
  if(i47<0.998022198677063){
   s0+=5.0;
  } else {
   if(i48<9.059906005859375e-05){
    if(i7<0.004848449490964413){
     s0+=32.0;
     s1+=234.0;
    } else {
     s0+=7.0;
     s1+=12671.0;
    }
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i45<0.0023209224455058575){
   if(i65<0.0010148921282961965){
    if(i41<1.0187139511108398){
     s0+=540.0;
     s1+=2.0;
    } else {
     s0+=52.0;
     s1+=12.0;
    }
   } else {
    if(i24<1.0838968753814697){
     s0+=3.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i4<0.0003650188446044922){
    if(i31<0.005710636265575886){
     s0+=134.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   } else {
    if(i34<0.00585157610476017){
     s0+=2.0;
     s1+=175.0;
    } else {
     s0+=31.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i2<0.0009695291519165039){
 if(i26<1.0196888446807861){
  if(i61<0.0047006853856146336){
   if(i32<0.0007107793353497982){
    if(i47<1.000159502029419){
     s0+=42750.0;
     s1+=22.0;
    } else {
     s0+=36902.0;
     s1+=496.0;
    }
   } else {
    if(i23<0.0009266837732866406){
     s0+=3575.0;
     s1+=3161.0;
    } else {
     s0+=29264.0;
     s1+=1663.0;
    }
   }
  } else {
   if(i12<1.0024261474609375){
    if(i32<0.0020387270487844944){
     s0+=785.0;
     s1+=107.0;
    } else {
     s0+=135.0;
     s1+=317.0;
    }
   } else {
    if(i11<0.9356520175933838){
     s0+=120.0;
     s1+=37.0;
    } else {
     s0+=24.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i7<0.005661167204380035){
   if(i25<1.0905578136444092){
    s1+=22.0;
   } else {
    if(i27<1.1309735774993896){
     s0+=465.0;
     s1+=12.0;
    } else {
     s0+=300.0;
     s1+=106.0;
    }
   }
  } else {
   if(i14<0.9887556433677673){
    if(i20<0.05166606605052948){
     s0+=17.0;
     s1+=2.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i47<0.9981223344802856){
     s0+=8.0;
    } else {
     s0+=36.0;
     s1+=1680.0;
    }
   }
  }
 }
} else {
 if(i7<0.003481372492387891){
  if(i35<1.0953161716461182){
   if(i0<7.575750350952148e-05){
    s0+=70.0;
   } else {
    if(i60<-0.002286322880536318){
     s0+=4.0;
    } else {
     s1+=490.0;
    }
   }
  } else {
   if(i3<1.0117735862731934){
    s0+=1518.0;
   } else {
    s1+=205.0;
   }
  }
 } else {
  if(i66<1.2893717212136835e-05){
   if(i47<0.998401939868927){
    s0+=158.0;
   } else {
    if(i32<0.004086809232831001){
     s0+=221.0;
     s1+=15573.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i35<1.3232917785644531){
    s0+=99.0;
   } else {
    s1+=13.0;
   }
  }
 }
}
if(i26<1.0167311429977417){
 if(i2<0.0010210275650024414){
  if(i32<0.0007382712792605162){
   if(i31<0.00190553511492908){
    if(i36<1.0776758193969727){
     s0+=21865.0;
     s1+=386.0;
    } else {
     s0+=53430.0;
     s1+=11.0;
    }
   } else {
    if(i7<0.0006784771685488522){
     s0+=256.0;
     s1+=61.0;
    } else {
     s0+=5895.0;
     s1+=143.0;
    }
   }
  } else {
   if(i38<0.2180120348930359){
    if(i5<7.331371307373047e-06){
     s0+=25131.0;
     s1+=1589.0;
    } else {
     s0+=6863.0;
     s1+=3363.0;
    }
   } else {
    if(i1<-1.403884198225569e-05){
     s0+=22.0;
     s1+=460.0;
    } else {
     s0+=41.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i31<0.0023910049349069595){
   if(i23<0.0010868094395846128){
    if(i43<0.00013335267431102693){
     s0+=15.0;
    } else {
     s1+=1090.0;
    }
   } else {
    s0+=1208.0;
   }
  } else {
   if(i28<0.8898735642433167){
    if(i24<1.0395406484603882){
     s0+=30.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=181.0;
    }
   } else {
    if(i22<0.045426249504089355){
     s0+=15.0;
     s1+=78.0;
    } else {
     s0+=8.0;
     s1+=2337.0;
    }
   }
  }
 }
} else {
 if(i22<0.167356938123703){
  if(i1<-3.357609239174053e-05){
   if(i23<0.001047821482643485){
    s1+=1545.0;
   } else {
    if(i42<0.01518933568149805){
     s0+=494.0;
     s1+=102.0;
    } else {
     s0+=409.0;
     s1+=973.0;
    }
   }
  } else {
   if(i41<1.0224497318267822){
    if(i35<1.0873100757598877){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=560.0;
     s1+=5.0;
    }
   } else {
    if(i40<0.001195336226373911){
     s1+=36.0;
    } else {
     s0+=240.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i34<0.001903340918943286){
   s0+=89.0;
  } else {
   if(i1<-3.2476993510499597e-05){
    if(i49<-8.874254490365274e-06){
     s0+=15.0;
     s1+=11632.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i62<0.00214269757270813){
     s0+=32.0;
     s1+=104.0;
    } else {
     s0+=46.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i11<1.0154454708099365){
 if(i5<1.8537044525146484e-05){
  if(i24<1.142219066619873){
   if(i20<0.006544958800077438){
    if(i10<0.9912667870521545){
     s0+=3789.0;
     s1+=210.0;
    } else {
     s0+=62630.0;
     s1+=271.0;
    }
   } else {
    if(i40<0.000412471272284165){
     s0+=2473.0;
     s1+=1307.0;
    } else {
     s0+=38484.0;
     s1+=1936.0;
    }
   }
  } else {
   if(i7<0.00649941386654973){
    s0+=665.0;
   } else {
    if(i33<1.0776395797729492){
     s0+=70.0;
     s1+=28.0;
    } else {
     s0+=12.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i54<0.041212812066078186){
   if(i12<1.0108202695846558){
    if(i25<1.1162974834442139){
     s0+=1857.0;
     s1+=1400.0;
    } else {
     s0+=4922.0;
     s1+=585.0;
    }
   } else {
    if(i66<-3.732930281330482e-06){
     s0+=50.0;
     s1+=732.0;
    } else {
     s0+=56.0;
     s1+=39.0;
    }
   }
  } else {
   if(i38<0.05530598759651184){
    if(i5<5.0008296966552734e-05){
     s0+=401.0;
     s1+=57.0;
    } else {
     s0+=43.0;
     s1+=109.0;
    }
   } else {
    if(i27<1.0485790967941284){
     s0+=32.0;
    } else {
     s0+=194.0;
     s1+=3233.0;
    }
   }
  }
 }
} else {
 if(i0<1.6570091247558594e-05){
  if(i7<0.005157867446541786){
   s0+=417.0;
  } else {
   if(i37<0.0003986627561971545){
    s1+=256.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i1<-6.900172593304887e-05){
   if(i47<0.9983292818069458){
    s0+=38.0;
   } else {
    if(i30<0.0017088353633880615){
     s0+=62.0;
     s1+=12973.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i23<0.0010853902203962207){
    s1+=437.0;
   } else {
    if(i43<0.0018520810408517718){
     s0+=328.0;
     s1+=17.0;
    } else {
     s0+=53.0;
     s1+=294.0;
    }
   }
  }
 }
}
if(i14<1.0165542364120483){
 if(i12<1.006564736366272){
  if(i7<0.003994446713477373){
   if(i18<0.0010495001915842295){
    if(i11<0.9960145354270935){
     s0+=11961.0;
     s1+=105.0;
    } else {
     s0+=57887.0;
     s1+=86.0;
    }
   } else {
    if(i35<1.0838289260864258){
     s0+=6183.0;
     s1+=914.0;
    } else {
     s0+=15723.0;
     s1+=115.0;
    }
   }
  } else {
   if(i2<-0.0003566443920135498){
    if(i38<0.21345260739326477){
     s0+=19517.0;
     s1+=769.0;
    } else {
     s0+=58.0;
     s1+=223.0;
    }
   } else {
    if(i6<0.9999849200248718){
     s0+=638.0;
     s1+=51.0;
    } else {
     s0+=1036.0;
     s1+=4096.0;
    }
   }
  }
 } else {
  if(i59<0.00011100110714323819){
   if(i40<0.0009750681929290295){
    if(i36<1.4193298816680908){
     s0+=1.0;
     s1+=383.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i34<0.002521571470424533){
     s0+=1101.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=57.0;
    }
   }
  } else {
   if(i5<4.285573959350586e-05){
    if(i20<0.034908801317214966){
     s0+=372.0;
     s1+=137.0;
    } else {
     s0+=57.0;
     s1+=493.0;
    }
   } else {
    if(i19<0.9627371430397034){
     s0+=133.0;
     s1+=273.0;
    } else {
     s0+=83.0;
     s1+=2466.0;
    }
   }
  }
 }
} else {
 if(i0<1.3530254364013672e-05){
  if(i49<-6.90678643877618e-06){
   if(i38<0.23492702841758728){
    if(i58<1.0032167434692383){
     s0+=94.0;
     s1+=175.0;
    } else {
     s0+=321.0;
     s1+=25.0;
    }
   } else {
    if(i42<0.019030127674341202){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=202.0;
    }
   }
  } else {
   s0+=435.0;
  }
 } else {
  if(i8<1.0167348384857178){
   if(i28<1.03324294090271){
    if(i55<-5.542880444409093e-06){
     s0+=209.0;
    } else {
     s0+=407.0;
     s1+=686.0;
    }
   } else {
    if(i69<5.340287771105068e-06){
     s0+=41.0;
     s1+=628.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i36<1.7041046619415283){
    if(i30<0.0017150938510894775){
     s0+=124.0;
     s1+=12497.0;
    } else {
     s0+=39.0;
    }
   } else {
    s0+=23.0;
   }
  }
 }
}
if(i22<0.1841118335723877){
 if(i11<1.0133229494094849){
  if(i27<1.1546916961669922){
   if(i2<0.0010656118392944336){
    if(i58<1.0003472566604614){
     s0+=57541.0;
     s1+=688.0;
    } else {
     s0+=52905.0;
     s1+=3956.0;
    }
   } else {
    if(i57<0.0006562328198924661){
     s0+=22.0;
     s1+=806.0;
    } else {
     s0+=789.0;
     s1+=434.0;
    }
   }
  } else {
   if(i7<0.013737198896706104){
    if(i53<-1.4653238395112567e-05){
     s0+=74.0;
     s1+=149.0;
    } else {
     s0+=2075.0;
     s1+=216.0;
    }
   } else {
    if(i0<-2.5093555450439453e-05){
     s0+=477.0;
     s1+=139.0;
    } else {
     s0+=191.0;
     s1+=1068.0;
    }
   }
  }
 } else {
  if(i17<1.0138685703277588){
   if(i25<1.1180615425109863){
    s1+=1236.0;
   } else {
    if(i20<0.013529260642826557){
     s0+=1239.0;
     s1+=114.0;
    } else {
     s0+=264.0;
     s1+=677.0;
    }
   }
  } else {
   if(i9<1.0144740343093872){
    if(i30<0.0011174678802490234){
     s1+=8.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i69<5.887015868211165e-05){
     s1+=1677.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025611179880797863){
  if(i58<1.0018837451934814){
   if(i58<1.001595377922058){
    s0+=525.0;
   } else {
    if(i12<0.9979810118675232){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i31<0.00238861795514822){
    if(i58<1.0022094249725342){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=96.0;
     s1+=2.0;
    }
   } else {
    if(i0<-6.195902824401855e-05){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i7<0.004492856562137604){
   if(i1<-6.279192166402936e-05){
    s1+=175.0;
   } else {
    if(i20<0.01662128046154976){
     s0+=54.0;
     s1+=6.0;
    } else {
     s0+=160.0;
    }
   }
  } else {
   if(i21<-0.00038105249404907227){
    if(i40<0.004215560853481293){
     s0+=13.0;
    } else {
     s0+=15.0;
     s1+=502.0;
    }
   } else {
    if(i0<-8.246302604675293e-05){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=12451.0;
    }
   }
  }
 }
}
if(i3<1.0037109851837158){
 if(i1<-8.679615712026134e-05){
  if(i62<-0.006804972887039185){
   if(i70<0.051338184624910355){
    if(i20<0.08284604549407959){
     s0+=749.0;
     s1+=25.0;
    } else {
     s0+=24.0;
     s1+=54.0;
    }
   } else {
    if(i7<0.02001895010471344){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=45.0;
    }
   }
  } else {
   if(i38<0.04886728525161743){
    if(i13<0.0001777959696482867){
     s0+=98.0;
     s1+=4.0;
    } else {
     s0+=52.0;
     s1+=71.0;
    }
   } else {
    if(i25<1.1743842363357544){
     s0+=96.0;
     s1+=22.0;
    } else {
     s0+=41.0;
     s1+=1352.0;
    }
   }
  }
 } else {
  if(i42<0.012195032089948654){
   if(i65<0.000902549596503377){
    if(i3<1.0025869607925415){
     s0+=65274.0;
     s1+=477.0;
    } else {
     s0+=2993.0;
     s1+=184.0;
    }
   } else {
    if(i35<1.0757582187652588){
     s0+=103.0;
     s1+=94.0;
    } else {
     s0+=1033.0;
     s1+=28.0;
    }
   }
  } else {
   if(i4<7.75456428527832e-05){
    if(i34<0.0003279909142293036){
     s0+=1482.0;
     s1+=591.0;
    } else {
     s0+=33574.0;
     s1+=646.0;
    }
   } else {
    if(i3<0.9982818961143494){
     s0+=1824.0;
     s1+=147.0;
    } else {
     s0+=4792.0;
     s1+=2913.0;
    }
   }
  }
 }
} else {
 if(i20<0.007908768951892853){
  if(i16<0.0012870430946350098){
   if(i27<1.0773630142211914){
    if(i2<0.0010662078857421875){
     s0+=740.0;
     s1+=136.0;
    } else {
     s0+=2.0;
     s1+=156.0;
    }
   } else {
    if(i10<1.0325126647949219){
     s0+=2223.0;
     s1+=21.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i61<0.0005062245763838291){
    if(i30<0.0007661879062652588){
     s0+=8.0;
     s1+=1272.0;
    } else {
     s0+=41.0;
     s1+=24.0;
    }
   } else {
    if(i11<1.020129680633545){
     s0+=792.0;
     s1+=137.0;
    } else {
     s0+=8.0;
     s1+=392.0;
    }
   }
  }
 } else {
  if(i29<1.1573951244354248){
   if(i45<0.0008904340211302042){
    if(i50<1.003603219985962){
     s0+=1.0;
     s1+=1128.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i19<1.0170859098434448){
     s0+=398.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=36.0;
    }
   }
  } else {
   if(i7<0.0031291511841118336){
    if(i1<-8.422740938840434e-05){
     s1+=118.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i17<1.0045931339263916){
     s0+=108.0;
     s1+=2062.0;
    } else {
     s0+=24.0;
     s1+=12115.0;
    }
   }
  }
 }
}
if(i15<0.19103863835334778){
 if(i3<1.0037418603897095){
  if(i4<0.00029271841049194336){
   if(i34<0.0010550729930400848){
    if(i58<1.0003567934036255){
     s0+=21189.0;
     s1+=417.0;
    } else {
     s0+=8665.0;
     s1+=1560.0;
    }
   } else {
    if(i47<1.002559781074524){
     s0+=72952.0;
     s1+=657.0;
    } else {
     s0+=66.0;
     s1+=65.0;
    }
   }
  } else {
   if(i20<0.009589133784174919){
    if(i10<1.0114624500274658){
     s0+=5723.0;
     s1+=106.0;
    } else {
     s0+=273.0;
     s1+=63.0;
    }
   } else {
    if(i30<0.0004265904426574707){
     s0+=585.0;
     s1+=1666.0;
    } else {
     s0+=1776.0;
     s1+=620.0;
    }
   }
  }
 } else {
  if(i31<0.002205150667577982){
   if(i57<0.00068770966026932){
    if(i27<1.0450111627578735){
     s0+=704.0;
     s1+=89.0;
    } else {
     s0+=80.0;
     s1+=2499.0;
    }
   } else {
    if(i9<1.0162914991378784){
     s0+=3321.0;
     s1+=80.0;
    } else {
     s0+=1.0;
     s1+=66.0;
    }
   }
  } else {
   if(i39<0.05717095732688904){
    if(i74<-0.02327197790145874){
     s0+=42.0;
     s1+=531.0;
    } else {
     s0+=175.0;
     s1+=42.0;
    }
   } else {
    if(i21<-0.00016266107559204102){
     s0+=53.0;
     s1+=297.0;
    } else {
     s0+=27.0;
     s1+=2424.0;
    }
   }
  }
 }
} else {
 if(i35<1.133432149887085){
  if(i52<0.1501096785068512){
   if(i1<-0.00011287486995570362){
    s1+=7.0;
   } else {
    if(i8<0.9895559549331665){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=434.0;
    }
   }
  } else {
   if(i30<0.00016188621520996094){
    s0+=3.0;
   } else {
    s1+=20.0;
   }
  }
 } else {
  if(i1<-3.197797923348844e-05){
   if(i31<0.0017799398628994823){
    s0+=27.0;
   } else {
    if(i53<-2.9702264328079764e-06){
     s0+=41.0;
     s1+=12995.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   }
  } else {
   if(i30<0.00010955333709716797){
    if(i30<0.00010192394256591797){
     s0+=157.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i2<-0.00022113323211669922){
     s0+=126.0;
     s1+=10.0;
    } else {
     s0+=47.0;
     s1+=147.0;
    }
   }
  }
 }
}
if(i9<1.0101969242095947){
 if(i15<0.2000322937965393){
  if(i4<0.0003268122673034668){
   if(i7<0.0028207271825522184){
    if(i16<-0.00036150217056274414){
     s0+=22601.0;
     s1+=481.0;
    } else {
     s0+=52729.0;
     s1+=116.0;
    }
   } else {
    if(i17<0.9954054355621338){
     s0+=20661.0;
     s1+=463.0;
    } else {
     s0+=8155.0;
     s1+=1931.0;
    }
   }
  } else {
   if(i43<0.002052200958132744){
    if(i7<0.004327030852437019){
     s0+=7535.0;
     s1+=332.0;
    } else {
     s0+=340.0;
     s1+=1683.0;
    }
   } else {
    if(i27<1.1073942184448242){
     s0+=1142.0;
     s1+=232.0;
    } else {
     s0+=1219.0;
     s1+=2203.0;
    }
   }
  }
 } else {
  if(i53<-3.914826265827287e-06){
   if(i7<0.006372775882482529){
    if(i63<0.05510547757148743){
     s0+=128.0;
     s1+=6.0;
    } else {
     s0+=53.0;
     s1+=51.0;
    }
   } else {
    if(i44<0.9936175346374512){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=2554.0;
    }
   }
  } else {
   if(i7<0.007118582725524902){
    s0+=324.0;
   } else {
    if(i53<6.37686753179878e-07){
     s1+=18.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i1<-7.364313933067024e-05){
  if(i50<1.0009409189224243){
   if(i34<0.010711587965488434){
    if(i23<0.0011049152817577124){
     s1+=64.0;
    } else {
     s0+=146.0;
    }
   } else {
    s1+=356.0;
   }
  } else {
   if(i55<-6.2383332988247275e-06){
    if(i46<-5.010567110730335e-05){
     s1+=1.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i46<0.00019460811745375395){
     s0+=6.0;
     s1+=12682.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i13<0.0003140031185466796){
   if(i4<0.00033020973205566406){
    s0+=141.0;
   } else {
    if(i2<0.0005899667739868164){
     s0+=34.0;
     s1+=33.0;
    } else {
     s0+=1.0;
     s1+=1158.0;
    }
   }
  } else {
   if(i15<0.2359471619129181){
    if(i60<-0.0012037847191095352){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=1140.0;
     s1+=1.0;
    }
   } else {
    if(i9<1.0113372802734375){
     s0+=3.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i0<6.276369094848633e-05){
 if(i8<1.0133508443832397){
  if(i45<0.011907868087291718){
   if(i32<0.0007155099883675575){
    if(i23<0.0019645888824015856){
     s0+=74774.0;
     s1+=332.0;
    } else {
     s0+=5567.0;
     s1+=210.0;
    }
   } else {
    if(i31<0.0009988048113882542){
     s0+=3449.0;
     s1+=2964.0;
    } else {
     s0+=28784.0;
     s1+=1862.0;
    }
   }
  } else {
   if(i33<1.0650966167449951){
    if(i63<0.0016241429839283228){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=665.0;
     s1+=24.0;
    }
   } else {
    if(i1<-4.780597009812482e-06){
     s0+=58.0;
     s1+=1000.0;
    } else {
     s0+=199.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i4<0.0002824068069458008){
   if(i49<-1.0934520105365664e-05){
    if(i18<0.0024521579034626484){
     s0+=75.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=151.0;
    }
   } else {
    if(i18<0.002504174830392003){
     s0+=246.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i50<1.00337553024292){
    if(i30<0.0007249712944030762){
     s0+=40.0;
     s1+=1129.0;
    } else {
     s0+=73.0;
     s1+=1.0;
    }
   } else {
    if(i27<1.1695423126220703){
     s0+=271.0;
     s1+=34.0;
    } else {
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i25<1.1979892253875732){
  if(i23<0.000988935586065054){
   if(i25<1.0610902309417725){
    s0+=109.0;
   } else {
    s1+=2394.0;
   }
  } else {
   s0+=2057.0;
  }
 } else {
  if(i21<-0.000321805477142334){
   if(i8<0.9925687313079834){
    if(i30<0.0008158087730407715){
     s0+=30.0;
     s1+=71.0;
    } else {
     s1+=229.0;
    }
   } else {
    if(i15<0.12338131666183472){
     s0+=72.0;
     s1+=10.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i38<0.04250127077102661){
    if(i0<0.00011593103408813477){
     s0+=13.0;
     s1+=15.0;
    } else {
     s1+=61.0;
    }
   } else {
    if(i23<0.002176937647163868){
     s0+=7.0;
    } else {
     s0+=29.0;
     s1+=13694.0;
    }
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i0<6.502866744995117e-05){
  if(i22<0.20643335580825806){
   if(i52<0.03940994292497635){
    if(i29<1.0905578136444092){
     s0+=24009.0;
     s1+=2063.0;
    } else {
     s0+=68388.0;
     s1+=578.0;
    }
   } else {
    if(i5<4.708766937255859e-06){
     s0+=17555.0;
     s1+=604.0;
    } else {
     s0+=3653.0;
     s1+=2440.0;
    }
   }
  } else {
   if(i63<0.05363090708851814){
    if(i31<0.006460972595959902){
     s0+=125.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=17.0;
    }
   } else {
    if(i1<1.0762196325231344e-05){
     s0+=22.0;
     s1+=828.0;
    } else {
     s0+=42.0;
    }
   }
  }
 } else {
  if(i34<0.0023248870857059956){
   if(i32<0.0010112610179930925){
    if(i23<0.001074854750186205){
     s1+=795.0;
    } else {
     s0+=302.0;
    }
   } else {
    if(i36<1.1762815713882446){
     s0+=1123.0;
     s1+=16.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i37<0.0002922086277976632){
    if(i21<-0.00023800134658813477){
     s0+=48.0;
     s1+=292.0;
    } else {
     s0+=4.0;
     s1+=1972.0;
    }
   } else {
    if(i18<0.005694606341421604){
     s0+=48.0;
    } else {
     s0+=10.0;
     s1+=136.0;
    }
   }
  }
 }
} else {
 if(i9<1.015235424041748){
  if(i22<0.18403273820877075){
   if(i43<0.0010400742758065462){
    if(i23<0.0009987340308725834){
     s1+=785.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i54<0.03077521175146103){
     s0+=886.0;
     s1+=123.0;
    } else {
     s0+=202.0;
     s1+=467.0;
    }
   }
  } else {
   if(i54<0.021505046635866165){
    if(i7<0.005503430962562561){
     s0+=34.0;
     s1+=3.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i23<0.00256074545904994){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=24.0;
     s1+=1607.0;
    }
   }
  }
 } else {
  if(i52<0.004030467011034489){
   if(i7<0.0015547062503173947){
    s0+=8.0;
   } else {
    s1+=29.0;
   }
  } else {
   if(i1<-6.1017202824587e-05){
    if(i5<0.0002962350845336914){
     s0+=4.0;
     s1+=11378.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i3<1.0097821950912476){
     s1+=59.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i0<6.407499313354492e-05){
  if(i39<0.19654995203018188){
   if(i42<0.1873437762260437){
    if(i52<0.03656761348247528){
     s0+=90726.0;
     s1+=2502.0;
    } else {
     s0+=22584.0;
     s1+=2780.0;
    }
   } else {
    if(i17<0.982708215713501){
     s0+=202.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=401.0;
    }
   }
  } else {
   if(i23<0.002562624868005514){
    if(i1<-4.336440179031342e-05){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=172.0;
     s1+=5.0;
    }
   } else {
    if(i43<0.002874241443350911){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=716.0;
    }
   }
  }
 } else {
  if(i59<0.00014522590208798647){
   if(i36<1.0958912372589111){
    if(i43<0.00013861697516404092){
     s0+=59.0;
    } else {
     s1+=475.0;
    }
   } else {
    if(i7<0.005732926540076733){
     s0+=1235.0;
     s1+=5.0;
    } else {
     s0+=78.0;
     s1+=179.0;
    }
   }
  } else {
   if(i38<0.005287647247314453){
    if(i46<-6.976803888392169e-06){
     s1+=36.0;
    } else {
     s0+=48.0;
     s1+=12.0;
    }
   } else {
    if(i53<-3.9056547393556684e-05){
     s0+=22.0;
    } else {
     s0+=131.0;
     s1+=2519.0;
    }
   }
  }
 }
} else {
 if(i21<0.0002881288528442383){
  if(i13<0.000709324493072927){
   if(i2<0.00020897388458251953){
    if(i54<0.035354793071746826){
     s0+=221.0;
     s1+=8.0;
    } else {
     s0+=154.0;
     s1+=242.0;
    }
   } else {
    if(i18<0.0010014206636697054){
     s0+=125.0;
     s1+=44.0;
    } else {
     s0+=131.0;
     s1+=3623.0;
    }
   }
  } else {
   s0+=548.0;
  }
 } else {
  if(i47<0.9982057809829712){
   s0+=22.0;
  } else {
   if(i48<-2.944469451904297e-05){
    s0+=15.0;
   } else {
    if(i53<-7.73327483329922e-05){
     s0+=9.0;
    } else {
     s1+=10718.0;
    }
   }
  }
 }
}
if(i14<1.0169928073883057){
 if(i6<1.0026230812072754){
  if(i7<0.003599122865125537){
   if(i40<0.0006483247270807624){
    if(i62<-0.00034686923027038574){
     s0+=2486.0;
     s1+=580.0;
    } else {
     s0+=23299.0;
     s1+=249.0;
    }
   } else {
    if(i43<0.001935161417350173){
     s0+=55011.0;
     s1+=40.0;
    } else {
     s0+=5654.0;
     s1+=109.0;
    }
   }
  } else {
   if(i31<0.001198094803839922){
    if(i35<1.0463924407958984){
     s0+=2775.0;
     s1+=205.0;
    } else {
     s0+=51.0;
     s1+=2169.0;
    }
   } else {
    if(i39<0.18338561058044434){
     s0+=20329.0;
     s1+=676.0;
    } else {
     s0+=105.0;
     s1+=395.0;
    }
   }
  }
 } else {
  if(i42<0.02871953323483467){
   if(i37<-2.4682260118424892e-05){
    if(i48<1.4394521713256836e-05){
     s0+=32.0;
     s1+=703.0;
    } else {
     s0+=89.0;
     s1+=14.0;
    }
   } else {
    if(i16<0.001204073429107666){
     s0+=3343.0;
     s1+=431.0;
    } else {
     s0+=437.0;
     s1+=545.0;
    }
   }
  } else {
   if(i17<0.9997953772544861){
    if(i22<0.10336357355117798){
     s0+=869.0;
     s1+=266.0;
    } else {
     s0+=187.0;
     s1+=866.0;
    }
   } else {
    if(i20<0.014323417097330093){
     s0+=110.0;
     s1+=148.0;
    } else {
     s0+=104.0;
     s1+=2764.0;
    }
   }
  }
 }
} else {
 if(i3<1.001906394958496){
  if(i23<0.007941056042909622){
   if(i44<1.0003373622894287){
    if(i27<1.0574055910110474){
     s1+=3.0;
    } else {
     s0+=413.0;
    }
   } else {
    if(i29<1.2000374794006348){
     s0+=32.0;
     s1+=105.0;
    } else {
     s0+=273.0;
     s1+=47.0;
    }
   }
  } else {
   if(i35<1.2757329940795898){
    if(i45<0.002472374588251114){
     s0+=68.0;
     s1+=4.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=196.0;
   }
  }
 } else {
  if(i11<1.0187921524047852){
   if(i20<0.010168010368943214){
    if(i27<1.0773653984069824){
     s1+=254.0;
    } else {
     s0+=529.0;
     s1+=45.0;
    }
   } else {
    if(i7<0.005687820725142956){
     s0+=74.0;
     s1+=51.0;
    } else {
     s0+=9.0;
     s1+=951.0;
    }
   }
  } else {
   if(i48<3.3527612686157227e-05){
    if(i7<0.003352269995957613){
     s0+=134.0;
     s1+=290.0;
    } else {
     s0+=2.0;
     s1+=12312.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
}
if(i6<1.0026230812072754){
 if(i22<0.23153239488601685){
  if(i1<-7.149981684051454e-05){
   if(i26<1.0202583074569702){
    if(i42<0.20591461658477783){
     s0+=1608.0;
     s1+=289.0;
    } else {
     s0+=18.0;
     s1+=123.0;
    }
   } else {
    if(i50<1.0000165700912476){
     s0+=59.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=282.0;
    }
   }
  } else {
   if(i18<0.0016676054801791906){
    if(i31<0.0005804428365081549){
     s0+=26918.0;
     s1+=694.0;
    } else {
     s0+=61198.0;
     s1+=163.0;
    }
   } else {
    if(i12<0.9981420636177063){
     s0+=14420.0;
     s1+=258.0;
    } else {
     s0+=6072.0;
     s1+=3133.0;
    }
   }
  }
 } else {
  if(i34<0.005995279178023338){
   if(i75<0.16371408104896545){
    if(i12<0.9994093775749207){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i32<0.0012249571736901999){
     s0+=80.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   if(i1<-8.348477422259748e-06){
    s1+=609.0;
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i35<1.1714401245117188){
  if(i29<1.1174830198287964){
   if(i35<1.058152437210083){
    if(i27<1.0452228784561157){
     s0+=742.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=53.0;
    }
   } else {
    if(i13<0.00025443133199587464){
     s0+=7.0;
     s1+=2230.0;
    } else {
     s0+=62.0;
    }
   }
  } else {
   if(i30<0.000561833381652832){
    if(i29<1.197878360748291){
     s0+=365.0;
     s1+=87.0;
    } else {
     s0+=42.0;
     s1+=703.0;
    }
   } else {
    if(i1<-0.00010360397573094815){
     s0+=68.0;
     s1+=375.0;
    } else {
     s0+=3635.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i24<1.0743002891540527){
   if(i12<1.0112804174423218){
    if(i39<0.0571344792842865){
     s0+=579.0;
     s1+=35.0;
    } else {
     s0+=157.0;
     s1+=127.0;
    }
   } else {
    if(i16<-0.012356728315353394){
     s0+=4.0;
    } else {
     s0+=17.0;
     s1+=241.0;
    }
   }
  } else {
   if(i16<-0.004016697406768799){
    if(i18<0.0060769421979784966){
     s0+=77.0;
     s1+=17.0;
    } else {
     s0+=58.0;
     s1+=148.0;
    }
   } else {
    if(i15<0.12297651171684265){
     s0+=172.0;
     s1+=993.0;
    } else {
     s0+=47.0;
     s1+=13676.0;
    }
   }
  }
 }
}
if(i3<1.0038518905639648){
 if(i22<0.20742589235305786){
  if(i6<1.0024921894073486){
   if(i35<1.0902695655822754){
    if(i11<1.007434606552124){
     s0+=38204.0;
     s1+=2673.0;
    } else {
     s0+=155.0;
     s1+=709.0;
    }
   } else {
    if(i45<0.011867418885231018){
     s0+=70204.0;
     s1+=772.0;
    } else {
     s0+=885.0;
     s1+=229.0;
    }
   }
  } else {
   if(i1<-3.8848571421112865e-05){
    if(i22<0.055202871561050415){
     s0+=684.0;
     s1+=139.0;
    } else {
     s0+=318.0;
     s1+=787.0;
    }
   } else {
    if(i65<0.0019713295623660088){
     s0+=1469.0;
     s1+=101.0;
    } else {
     s0+=209.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i23<0.002555741462856531){
   if(i53<-5.3479070629691705e-06){
    if(i66<2.6354300644015893e-06){
     s0+=4.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i7<0.000495345622766763){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=141.0;
    }
   }
  } else {
   if(i45<0.0022674803622066975){
    if(i26<1.0203466415405273){
     s0+=43.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i47<1.0023956298828125){
     s0+=19.0;
     s1+=1104.0;
    } else {
     s0+=17.0;
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i1<-7.153466867748648e-05){
  if(i69<4.618086677510291e-06){
   if(i16<0.0020012259483337402){
    if(i7<0.004598657600581646){
     s0+=236.0;
     s1+=26.0;
    } else {
     s0+=112.0;
     s1+=4195.0;
    }
   } else {
    s1+=11302.0;
   }
  } else {
   s0+=157.0;
  }
 } else {
  if(i42<0.025818951427936554){
   if(i48<9.47713851928711e-06){
    if(i13<0.0002527579781599343){
     s0+=71.0;
     s1+=1127.0;
    } else {
     s0+=348.0;
     s1+=4.0;
    }
   } else {
    if(i13<0.00022529636044055223){
     s0+=25.0;
     s1+=146.0;
    } else {
     s0+=3093.0;
     s1+=19.0;
    }
   }
  } else {
   if(i15<0.12449488043785095){
    if(i60<-0.0029410049319267273){
     s0+=28.0;
    } else {
     s0+=74.0;
     s1+=260.0;
    }
   } else {
    if(i30<0.0015936493873596191){
     s0+=1.0;
     s1+=528.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i1<-9.121593029703945e-05){
 if(i15<0.0413852334022522){
  if(i19<0.9589345455169678){
   if(i56<0.8788720369338989){
    if(i31<0.015957176685333252){
     s0+=62.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   } else {
    if(i33<1.1100257635116577){
     s0+=584.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i64<0.0028761334251612425){
    s0+=22.0;
   } else {
    if(i33<1.0099376440048218){
     s0+=28.0;
     s1+=7.0;
    } else {
     s0+=28.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i7<0.004916093312203884){
   if(i17<1.015228509902954){
    if(i16<0.002367556095123291){
     s0+=197.0;
     s1+=33.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i3<1.0084006786346436){
     s0+=4.0;
    } else {
     s1+=594.0;
    }
   }
  } else {
   if(i69<6.193411536514759e-06){
    if(i67<-0.015968024730682373){
     s0+=55.0;
     s1+=42.0;
    } else {
     s0+=107.0;
     s1+=14889.0;
    }
   } else {
    s0+=44.0;
   }
  }
 }
} else {
 if(i0<6.55055046081543e-05){
  if(i72<1.0352630615234375){
   if(i7<0.003651426872238517){
    if(i59<0.0001868669642135501){
     s0+=75699.0;
     s1+=362.0;
    } else {
     s0+=13842.0;
     s1+=673.0;
    }
   } else {
    if(i34<0.0010866548400372267){
     s0+=2751.0;
     s1+=2573.0;
    } else {
     s0+=20701.0;
     s1+=1479.0;
    }
   }
  } else {
   if(i18<0.0013647906016558409){
    if(i49<-8.45355953060789e-06){
     s0+=57.0;
     s1+=19.0;
    } else {
     s0+=461.0;
    }
   } else {
    if(i7<0.005227973684668541){
     s0+=301.0;
     s1+=45.0;
    } else {
     s0+=62.0;
     s1+=700.0;
    }
   }
  }
 } else {
  if(i30<0.0007607638835906982){
   if(i13<0.0002621188759803772){
    if(i14<0.9967901706695557){
     s0+=1.0;
     s1+=124.0;
    } else {
     s1+=2007.0;
    }
   } else {
    if(i34<0.002095021540299058){
     s0+=270.0;
    } else {
     s0+=15.0;
     s1+=105.0;
    }
   }
  } else {
   if(i18<0.004162650089710951){
    if(i17<1.0168797969818115){
     s0+=1398.0;
     s1+=1.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i43<0.0014490641187876463){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=282.0;
    }
   }
  }
 }
}
if(i26<1.0181405544281006){
 if(i5<3.4749507904052734e-05){
  if(i24<1.1705610752105713){
   if(i6<1.0021978616714478){
    if(i23<0.0008898492669686675){
     s0+=31202.0;
     s1+=2978.0;
    } else {
     s0+=76290.0;
     s1+=579.0;
    }
   } else {
    if(i7<0.0038664082530885935){
     s0+=3470.0;
     s1+=90.0;
    } else {
     s0+=1183.0;
     s1+=1322.0;
    }
   }
  } else {
   if(i5<9.864568710327148e-06){
    if(i63<0.22149613499641418){
     s0+=376.0;
     s1+=11.0;
    } else {
     s0+=49.0;
     s1+=119.0;
    }
   } else {
    if(i15<0.0003725588321685791){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=472.0;
    }
   }
  }
 } else {
  if(i2<0.0016651749610900879){
   if(i13<0.000704434234648943){
    if(i20<0.02785458043217659){
     s0+=798.0;
     s1+=545.0;
    } else {
     s0+=257.0;
     s1+=1161.0;
    }
   } else {
    s0+=1220.0;
   }
  } else {
   if(i32<0.0028283873107284307){
    if(i59<9.815637895371765e-05){
     s0+=136.0;
     s1+=450.0;
    } else {
     s0+=20.0;
     s1+=2252.0;
    }
   } else {
    if(i18<0.00745220435783267){
     s0+=184.0;
     s1+=2.0;
    } else {
     s1+=167.0;
    }
   }
  }
 }
} else {
 if(i7<0.005055225919932127){
  if(i34<0.0009378622053191066){
   if(i19<1.004244089126587){
    s0+=2.0;
   } else {
    s1+=319.0;
   }
  } else {
   if(i46<-1.3049060726189055e-05){
    if(i55<-7.469594493159093e-06){
     s0+=25.0;
    } else {
     s0+=1.0;
     s1+=293.0;
    }
   } else {
    if(i37<-2.543216396588832e-05){
     s0+=4.0;
     s1+=31.0;
    } else {
     s0+=1227.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i6<0.9998031854629517){
   if(i33<1.1570996046066284){
    s0+=64.0;
   } else {
    s1+=143.0;
   }
  } else {
   if(i9<0.997575044631958){
    if(i39<0.11409899592399597){
     s0+=53.0;
     s1+=32.0;
    } else {
     s0+=20.0;
     s1+=325.0;
    }
   } else {
    if(i7<0.005785293877124786){
     s0+=13.0;
     s1+=236.0;
    } else {
     s0+=3.0;
     s1+=12622.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i54<0.08062326908111572){
  if(i41<1.0242984294891357){
   if(i20<0.006775142624974251){
    if(i35<1.077322244644165){
     s0+=22248.0;
     s1+=542.0;
    } else {
     s0+=48256.0;
     s1+=66.0;
    }
   } else {
    if(i16<-0.0007291436195373535){
     s0+=33039.0;
     s1+=1786.0;
    } else {
     s0+=7397.0;
     s1+=2733.0;
    }
   }
  } else {
   if(i5<8.404254913330078e-06){
    if(i53<-2.7351011340215337e-06){
     s0+=110.0;
     s1+=86.0;
    } else {
     s0+=345.0;
     s1+=1.0;
    }
   } else {
    if(i21<-0.0001913905143737793){
     s0+=225.0;
     s1+=36.0;
    } else {
     s0+=113.0;
     s1+=757.0;
    }
   }
  }
 } else {
  if(i15<0.13545766472816467){
   if(i5<6.973743438720703e-06){
    if(i9<0.9844014644622803){
     s0+=1815.0;
     s1+=31.0;
    } else {
     s0+=67.0;
     s1+=31.0;
    }
   } else {
    if(i22<0.03744885325431824){
     s0+=448.0;
     s1+=30.0;
    } else {
     s0+=59.0;
     s1+=334.0;
    }
   }
  } else {
   if(i4<8.702278137207031e-05){
    if(i40<0.016551781445741653){
     s0+=167.0;
     s1+=50.0;
    } else {
     s0+=10.0;
     s1+=143.0;
    }
   } else {
    if(i5<6.99162483215332e-05){
     s0+=8.0;
     s1+=1401.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i1<-8.84491964825429e-05){
  if(i66<1.2618054824997671e-05){
   if(i32<0.0036323475651443005){
    if(i10<0.921058177947998){
     s0+=51.0;
     s1+=96.0;
    } else {
     s0+=69.0;
     s1+=13748.0;
    }
   } else {
    if(i57<0.002751594875007868){
     s0+=105.0;
     s1+=1.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i69<5.217943908064626e-06){
    s1+=20.0;
   } else {
    s0+=106.0;
   }
  }
 } else {
  if(i13<0.0003949269885197282){
   if(i7<0.0016455292934551835){
    if(i5<4.26173210144043e-05){
     s0+=45.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i55<-6.057035534468014e-06){
     s0+=2.0;
    } else {
     s0+=43.0;
     s1+=2241.0;
    }
   }
  } else {
   if(i54<0.0912124291062355){
    if(i44<1.025156021118164){
     s0+=1766.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   } else {
    s1+=67.0;
   }
  }
 }
}
if(i6<1.002625584602356){
 if(i14<1.0185229778289795){
  if(i38<0.24231716990470886){
   if(i32<0.0007064715027809143){
    if(i32<0.0005746058886870742){
     s0+=70632.0;
     s1+=155.0;
    } else {
     s0+=7848.0;
     s1+=266.0;
    }
   } else {
    if(i34<0.001065118471160531){
     s0+=3792.0;
     s1+=2720.0;
    } else {
     s0+=27723.0;
     s1+=1097.0;
    }
   }
  } else {
   if(i32<0.001017257571220398){
    if(i30<0.00017142295837402344){
     s0+=57.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i13<0.0009278190555050969){
     s0+=5.0;
     s1+=307.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i20<0.02242887020111084){
   if(i45<0.0006563019705936313){
    if(i4<0.00018453598022460938){
     s0+=15.0;
    } else {
     s1+=175.0;
    }
   } else {
    if(i36<1.1015981435775757){
     s1+=9.0;
    } else {
     s0+=411.0;
     s1+=57.0;
    }
   }
  } else {
   if(i0<8.255243301391602e-06){
    if(i20<0.05401773750782013){
     s0+=108.0;
     s1+=42.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i46<-1.6693493307684548e-06){
     s0+=2.0;
     s1+=54.0;
    } else {
     s1+=591.0;
    }
   }
  }
 }
} else {
 if(i7<0.0039420705288648605){
  if(i23<0.0010811510728672147){
   if(i37<-1.2105974747100845e-05){
    s1+=719.0;
   } else {
    s0+=774.0;
   }
  } else {
   if(i17<1.0159635543823242){
    if(i42<0.03591588884592056){
     s0+=3352.0;
     s1+=20.0;
    } else {
     s0+=180.0;
     s1+=61.0;
    }
   } else {
    s1+=292.0;
   }
  }
 } else {
  if(i37<0.0003111869446001947){
   if(i3<1.0017324686050415){
    if(i42<0.08883625268936157){
     s0+=466.0;
     s1+=161.0;
    } else {
     s0+=43.0;
     s1+=283.0;
    }
   } else {
    if(i38<0.16990938782691956){
     s0+=568.0;
     s1+=4260.0;
    } else {
     s0+=29.0;
     s1+=12583.0;
    }
   }
  } else {
   if(i39<0.04905480146408081){
    if(i6<1.0062042474746704){
     s0+=436.0;
     s1+=41.0;
    } else {
     s0+=24.0;
     s1+=58.0;
    }
   } else {
    if(i24<1.052539587020874){
     s0+=62.0;
     s1+=21.0;
    } else {
     s0+=44.0;
     s1+=227.0;
    }
   }
  }
 }
}
if(i16<0.00133591890335083){
 if(i4<0.00047475099563598633){
  if(i28<1.0303971767425537){
   if(i4<0.00019818544387817383){
    if(i15<0.231725811958313){
     s0+=97703.0;
     s1+=2134.0;
    } else {
     s0+=22.0;
     s1+=106.0;
    }
   } else {
    if(i33<1.1378257274627686){
     s0+=9637.0;
     s1+=1349.0;
    } else {
     s0+=12.0;
     s1+=103.0;
    }
   }
  } else {
   if(i32<0.0006461046868935227){
    if(i44<1.0015537738800049){
     s0+=450.0;
    } else {
     s0+=43.0;
     s1+=9.0;
    }
   } else {
    if(i39<0.18622788786888123){
     s0+=182.0;
     s1+=137.0;
    } else {
     s0+=18.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i42<0.03139318525791168){
   if(i8<1.0207617282867432){
    if(i13<0.0002527784090489149){
     s0+=901.0;
     s1+=1037.0;
    } else {
     s0+=5047.0;
     s1+=81.0;
    }
   } else {
    if(i7<0.001749170245602727){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=186.0;
    }
   }
  } else {
   if(i3<1.0000503063201904){
    if(i54<0.10827849060297012){
     s0+=765.0;
     s1+=158.0;
    } else {
     s0+=70.0;
     s1+=107.0;
    }
   } else {
    if(i7<0.006191173568367958){
     s0+=358.0;
     s1+=188.0;
    } else {
     s0+=313.0;
     s1+=4981.0;
    }
   }
  }
 }
} else {
 if(i23<0.0025617657229304314){
  if(i56<1.0498769283294678){
   if(i45<0.0009316931827925146){
    if(i5<1.9550323486328125e-05){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=1410.0;
    }
   } else {
    if(i24<1.0608644485473633){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=164.0;
     s1+=18.0;
    }
   }
  } else {
   if(i29<1.1174830198287964){
    if(i25<1.125709891319275){
     s1+=576.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i10<1.0263780355453491){
     s0+=811.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i34<0.0015566060319542885){
   s0+=24.0;
  } else {
   s1+=11297.0;
  }
 }
}
if(i4<0.0005717873573303223){
 if(i45<0.011832619085907936){
  if(i32<0.0007055121823213995){
   if(i59<0.00016068170953076333){
    if(i10<1.0146963596343994){
     s0+=64507.0;
     s1+=157.0;
    } else {
     s0+=693.0;
     s1+=29.0;
    }
   } else {
    if(i43<0.0002485832083038986){
     s0+=688.0;
     s1+=190.0;
    } else {
     s0+=13425.0;
     s1+=106.0;
    }
   }
  } else {
   if(i23<0.0009191688150167465){
    if(i20<0.009225670248270035){
     s0+=2065.0;
     s1+=573.0;
    } else {
     s0+=389.0;
     s1+=2227.0;
    }
   } else {
    if(i10<1.021991491317749){
     s0+=27396.0;
     s1+=807.0;
    } else {
     s0+=110.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i51<-0.00021908846974838525){
   if(i27<1.6811659336090088){
    if(i42<0.0864407867193222){
     s0+=49.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=573.0;
    }
   } else {
    s0+=33.0;
   }
  } else {
   if(i20<0.043630488216876984){
    if(i56<0.8604601621627808){
     s1+=7.0;
    } else {
     s0+=779.0;
     s1+=8.0;
    }
   } else {
    if(i38<0.051516979932785034){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i18<0.0019520034547895193){
  if(i4<0.0012343525886535645){
   if(i46<-8.920977052184753e-06){
    if(i35<1.0840215682983398){
     s1+=83.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i76<0.003693878650665283){
     s0+=3001.0;
     s1+=19.0;
    } else {
     s1+=46.0;
    }
   }
  } else {
   if(i49<-3.360379923833534e-05){
    if(i2<0.0023183226585388184){
     s0+=73.0;
    } else {
     s1+=954.0;
    }
   } else {
    if(i33<1.0648064613342285){
     s0+=28.0;
     s1+=369.0;
    } else {
     s0+=445.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i7<0.004115651361644268){
   if(i1<-0.00014578747504856437){
    if(i17<1.0160222053527832){
     s0+=3.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i37<-1.5004339729784988e-05){
     s0+=153.0;
     s1+=148.0;
    } else {
     s0+=1239.0;
     s1+=11.0;
    }
   }
  } else {
   if(i21<-0.00033169984817504883){
    if(i12<1.009965419769287){
     s0+=1122.0;
     s1+=709.0;
    } else {
     s0+=82.0;
     s1+=350.0;
    }
   } else {
    if(i20<0.008247138932347298){
     s0+=292.0;
     s1+=1215.0;
    } else {
     s0+=203.0;
     s1+=15005.0;
    }
   }
  }
 }
}
if(i1<-7.64209107728675e-05){
 if(i33<1.024446964263916){
  if(i15<0.07315021753311157){
   if(i46<8.469269232591614e-06){
    s1+=19.0;
   } else {
    if(i20<0.0560784637928009){
     s0+=1045.0;
     s1+=20.0;
    } else {
     s0+=82.0;
     s1+=44.0;
    }
   }
  } else {
   if(i37<0.0003557151649147272){
    if(i14<0.8734439015388489){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=95.0;
    }
   } else {
    if(i25<1.5129314661026){
     s0+=19.0;
    } else {
     s0+=7.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i36<1.1497111320495605){
   if(i57<0.0007769332733005285){
    if(i49<-4.94731284561567e-05){
     s0+=19.0;
    } else {
     s0+=16.0;
     s1+=1162.0;
    }
   } else {
    if(i40<0.0008712307317182422){
     s1+=50.0;
    } else {
     s0+=530.0;
     s1+=35.0;
    }
   }
  } else {
   if(i16<-0.003993958234786987){
    if(i38<0.06941130757331848){
     s0+=149.0;
     s1+=34.0;
    } else {
     s0+=27.0;
     s1+=220.0;
    }
   } else {
    if(i22<0.06947678327560425){
     s0+=99.0;
     s1+=353.0;
    } else {
     s0+=63.0;
     s1+=15213.0;
    }
   }
  }
 }
} else {
 if(i26<1.0156245231628418){
  if(i2<0.0009769797325134277){
   if(i23<0.0008908312302082777){
    if(i18<0.0017286306247115135){
     s0+=29901.0;
     s1+=783.0;
    } else {
     s0+=2331.0;
     s1+=2475.0;
    }
   } else {
    if(i24<1.1145050525665283){
     s0+=75244.0;
     s1+=715.0;
    } else {
     s0+=3702.0;
     s1+=466.0;
    }
   }
  } else {
   if(i45<0.0007700723363086581){
    if(i34<0.00019286855240352452){
     s0+=59.0;
    } else {
     s0+=2.0;
     s1+=640.0;
    }
   } else {
    if(i59<0.00020168519404251128){
     s0+=900.0;
     s1+=51.0;
    } else {
     s0+=27.0;
     s1+=331.0;
    }
   }
  }
 } else {
  if(i18<0.0016030152328312397){
   if(i29<1.0780352354049683){
    s1+=108.0;
   } else {
    if(i1<-7.246241148095578e-05){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=1326.0;
     s1+=35.0;
    }
   }
  } else {
   if(i50<1.0027968883514404){
    if(i13<0.00033982202876359224){
     s0+=99.0;
     s1+=1264.0;
    } else {
     s0+=216.0;
     s1+=6.0;
    }
   } else {
    if(i39<0.1268138885498047){
     s0+=292.0;
     s1+=70.0;
    } else {
     s0+=155.0;
     s1+=329.0;
    }
   }
  }
 }
}
if(i1<-8.035823702812195e-05){
 if(i9<0.9740655422210693){
  if(i70<0.051338184624910355){
   if(i25<1.5726749897003174){
    if(i30<0.0005835890769958496){
     s0+=783.0;
     s1+=23.0;
    } else {
     s0+=100.0;
     s1+=41.0;
    }
   } else {
    if(i22<0.06350398063659668){
     s0+=116.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=114.0;
    }
   }
  } else {
   if(i14<0.8322755098342896){
    s0+=7.0;
   } else {
    if(i20<0.04211871325969696){
     s0+=7.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i69<4.952272774971789e-06){
   if(i23<0.0021232604049146175){
    if(i45<0.0007670323248021305){
     s0+=13.0;
     s1+=1015.0;
    } else {
     s0+=301.0;
     s1+=76.0;
    }
   } else {
    if(i1<-0.00010638521052896976){
     s0+=54.0;
     s1+=14279.0;
    } else {
     s0+=158.0;
     s1+=1105.0;
    }
   }
  } else {
   if(i41<1.0477744340896606){
    s0+=173.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i8<1.013148546218872){
  if(i37<-2.3391665308736265e-05){
   if(i35<1.095583200454712){
    s1+=262.0;
   } else {
    if(i26<1.0044474601745605){
     s0+=1.0;
     s1+=37.0;
    } else {
     s0+=133.0;
     s1+=1.0;
    }
   }
  } else {
   if(i25<1.1162974834442139){
    if(i8<1.0075263977050781){
     s0+=29809.0;
     s1+=2695.0;
    } else {
     s0+=343.0;
     s1+=873.0;
    }
   } else {
    if(i12<1.0115538835525513){
     s0+=83467.0;
     s1+=1568.0;
    } else {
     s0+=20.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i45<0.0008539985865354538){
   if(i30<0.0006136298179626465){
    if(i35<1.1197539567947388){
     s0+=7.0;
     s1+=941.0;
    } else {
     s0+=27.0;
    }
   } else {
    s0+=61.0;
   }
  } else {
   if(i15<0.18148797750473022){
    if(i54<0.025297973304986954){
     s0+=770.0;
     s1+=55.0;
    } else {
     s0+=249.0;
     s1+=268.0;
    }
   } else {
    if(i0<-1.3470649719238281e-05){
     s0+=50.0;
     s1+=6.0;
    } else {
     s0+=56.0;
     s1+=481.0;
    }
   }
  }
 }
}
if(i3<1.003865361213684){
 if(i22<0.20496979355812073){
  if(i11<1.009448528289795){
   if(i65<0.0020042690448462963){
    if(i7<0.003236576449126005){
     s0+=81666.0;
     s1+=779.0;
    } else {
     s0+=23439.0;
     s1+=2548.0;
    }
   } else {
    if(i11<0.9573609828948975){
     s0+=3750.0;
     s1+=436.0;
    } else {
     s0+=1637.0;
     s1+=894.0;
    }
   }
  } else {
   if(i25<1.117018461227417){
    if(i5<5.7220458984375e-06){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=587.0;
    }
   } else {
    if(i15<0.15337279438972473){
     s0+=1282.0;
     s1+=88.0;
    } else {
     s0+=301.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i7<0.006326139904558659){
   if(i1<-5.298638279782608e-05){
    if(i6<1.0014698505401611){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    if(i38<0.20840701460838318){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=263.0;
     s1+=3.0;
    }
   }
  } else {
   if(i25<1.1648578643798828){
    s0+=6.0;
   } else {
    if(i40<0.0020915118511766195){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=1075.0;
    }
   }
  }
 }
} else {
 if(i0<8.231401443481445e-05){
  if(i42<0.027918890118598938){
   if(i13<0.000252643134444952){
    if(i36<1.1219847202301025){
     s0+=3.0;
     s1+=638.0;
    } else {
     s0+=130.0;
     s1+=111.0;
    }
   } else {
    if(i7<0.005916215479373932){
     s0+=2962.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=74.0;
    }
   }
  } else {
   if(i16<-0.001373589038848877){
    if(i35<1.1300979852676392){
     s0+=27.0;
     s1+=3.0;
    } else {
     s0+=41.0;
     s1+=260.0;
    }
   } else {
    if(i25<1.4667320251464844){
     s0+=13.0;
     s1+=1230.0;
    } else {
     s0+=30.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i48<2.6285648345947266e-05){
   if(i7<0.002520160749554634){
    if(i66<-6.434775968955364e-06){
     s1+=362.0;
    } else {
     s0+=317.0;
     s1+=1.0;
    }
   } else {
    if(i50<1.0011281967163086){
     s0+=139.0;
     s1+=300.0;
    } else {
     s0+=122.0;
     s1+=14374.0;
    }
   }
  } else {
   if(i43<0.001998789142817259){
    s0+=508.0;
   } else {
    s1+=102.0;
   }
  }
 }
}
if(i11<1.0152629613876343){
 if(i3<1.0035377740859985){
  if(i18<0.0017838565399870276){
   if(i35<1.0739831924438477){
    if(i10<0.995963454246521){
     s0+=4486.0;
     s1+=551.0;
    } else {
     s0+=24196.0;
     s1+=307.0;
    }
   } else {
    if(i49<-1.8805052604875527e-05){
     s0+=22.0;
     s1+=41.0;
    } else {
     s0+=61070.0;
     s1+=190.0;
    }
   }
  } else {
   if(i4<-5.9485435485839844e-05){
    if(i39<0.23175275325775146){
     s0+=14048.0;
     s1+=280.0;
    } else {
     s0+=1.0;
     s1+=116.0;
    }
   } else {
    if(i7<0.003744247369468212){
     s0+=2651.0;
     s1+=75.0;
    } else {
     s0+=4576.0;
     s1+=4213.0;
    }
   }
  }
 } else {
  if(i68<0.1311338245868683){
   if(i12<1.0108118057250977){
    if(i23<0.0009694203035905957){
     s0+=765.0;
     s1+=1059.0;
    } else {
     s0+=3421.0;
     s1+=326.0;
    }
   } else {
    if(i21<0.00023448467254638672){
     s0+=43.0;
     s1+=180.0;
    } else {
     s0+=6.0;
     s1+=556.0;
    }
   }
  } else {
   if(i40<0.003809218294918537){
    if(i11<0.9863995909690857){
     s0+=37.0;
    } else {
     s0+=55.0;
     s1+=151.0;
    }
   } else {
    if(i38<0.031002432107925415){
     s0+=25.0;
     s1+=71.0;
    } else {
     s0+=42.0;
     s1+=2212.0;
    }
   }
  }
 }
} else {
 if(i53<-3.4551469525467837e-06){
  if(i0<-4.7326087951660156e-05){
   if(i54<0.14789234101772308){
    s0+=116.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i55<-7.339995136135258e-06){
    s0+=127.0;
   } else {
    if(i36<1.1757044792175293){
     s0+=323.0;
     s1+=1652.0;
    } else {
     s0+=88.0;
     s1+=12507.0;
    }
   }
  }
 } else {
  if(i46<1.3674401998287067e-05){
   s0+=261.0;
  } else {
   s1+=7.0;
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i24<1.038961410522461){
  if(i6<1.0064318180084229){
   if(i53<-2.1091391317895614e-05){
    if(i5<0.0002173781394958496){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i19<0.9939050674438477){
     s0+=414.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i11<0.9304784536361694){
    s0+=2.0;
   } else {
    s1+=36.0;
   }
  }
 } else {
  if(i67<-0.012055188417434692){
   if(i22<0.07312902808189392){
    if(i73<-0.011782914400100708){
     s0+=12.0;
     s1+=47.0;
    } else {
     s0+=141.0;
     s1+=21.0;
    }
   } else {
    if(i45<0.007487655617296696){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=126.0;
    }
   }
  } else {
   if(i48<3.0219554901123047e-05){
    if(i13<0.0007076200563460588){
     s0+=74.0;
     s1+=15174.0;
    } else {
     s0+=153.0;
    }
   } else {
    if(i25<1.38189697265625){
     s0+=89.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i5<1.5079975128173828e-05){
  if(i40<0.0009896178962662816){
   if(i29<1.0577976703643799){
    if(i18<0.001510447938926518){
     s0+=15456.0;
    } else {
     s0+=1322.0;
     s1+=12.0;
    }
   } else {
    if(i52<0.012662561610341072){
     s0+=10357.0;
     s1+=413.0;
    } else {
     s0+=3563.0;
     s1+=1678.0;
    }
   }
  } else {
   if(i22<0.20648562908172607){
    if(i29<1.0905578136444092){
     s0+=1091.0;
     s1+=334.0;
    } else {
     s0+=74259.0;
     s1+=800.0;
    }
   } else {
    if(i18<0.002425975166261196){
     s0+=201.0;
     s1+=20.0;
    } else {
     s0+=30.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i7<0.004090173169970512){
   if(i2<0.0013721585273742676){
    if(i32<0.0010280582355335355){
     s0+=3651.0;
     s1+=197.0;
    } else {
     s0+=3210.0;
    }
   } else {
    if(i25<1.105151891708374){
     s1+=515.0;
    } else {
     s0+=595.0;
    }
   }
  } else {
   if(i2<-0.00012362003326416016){
    if(i20<0.039340369403362274){
     s0+=1110.0;
     s1+=91.0;
    } else {
     s0+=124.0;
     s1+=109.0;
    }
   } else {
    if(i30<0.0004547238349914551){
     s0+=148.0;
     s1+=3096.0;
    } else {
     s0+=554.0;
     s1+=1464.0;
    }
   }
  }
 }
}
if(i12<1.004767894744873){
 if(i10<1.0153725147247314){
  if(i24<1.1525766849517822){
   if(i23<0.0008959810947999358){
    if(i26<1.0082857608795166){
     s0+=31368.0;
     s1+=2495.0;
    } else {
     s0+=463.0;
     s1+=757.0;
    }
   } else {
    if(i49<-3.966441727243364e-05){
     s0+=373.0;
     s1+=313.0;
    } else {
     s0+=78775.0;
     s1+=1066.0;
    }
   }
  } else {
   if(i49<-8.944529326981865e-06){
    if(i52<0.1865241825580597){
     s0+=109.0;
     s1+=67.0;
    } else {
     s0+=7.0;
     s1+=637.0;
    }
   } else {
    if(i47<1.00095796585083){
     s0+=319.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<1.2010335922241211e-05){
   if(i7<0.005997432395815849){
    if(i16<-0.003006875514984131){
     s0+=6.0;
     s1+=18.0;
    } else {
     s0+=892.0;
     s1+=42.0;
    }
   } else {
    if(i34<0.0026479382067918777){
     s0+=40.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=219.0;
    }
   }
  } else {
   if(i2<-6.9141387939453125e-06){
    if(i49<-3.819644189206883e-05){
     s1+=73.0;
    } else {
     s0+=192.0;
     s1+=64.0;
    }
   } else {
    if(i13<0.001123651396483183){
     s0+=51.0;
     s1+=2216.0;
    } else {
     s0+=72.0;
    }
   }
  }
 }
} else {
 if(i7<0.0027594217099249363){
  if(i46<-1.4859393559163436e-05){
   if(i32<0.001589710358530283){
    if(i62<0.0019770264625549316){
     s0+=2.0;
     s1+=372.0;
    } else {
     s0+=16.0;
     s1+=8.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i13<0.00016890668484847993){
    if(i12<1.0076558589935303){
     s0+=22.0;
    } else {
     s1+=16.0;
    }
   } else {
    s0+=2671.0;
   }
  }
 } else {
  if(i21<-0.00037539005279541016){
   if(i39<0.02761206030845642){
    if(i5<8.219480514526367e-05){
     s0+=394.0;
     s1+=33.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i18<0.004968321416527033){
     s0+=116.0;
     s1+=6.0;
    } else {
     s0+=67.0;
     s1+=497.0;
    }
   }
  } else {
   if(i31<0.002680041827261448){
    if(i32<0.0010933598969131708){
     s0+=186.0;
     s1+=1719.0;
    } else {
     s0+=396.0;
     s1+=40.0;
    }
   } else {
    if(i7<0.005049468949437141){
     s0+=52.0;
     s1+=328.0;
    } else {
     s0+=62.0;
     s1+=13144.0;
    }
   }
  }
 }
}
if(i1<-9.114234853768721e-05){
 if(i16<-0.0037864744663238525){
  if(i15<0.06552129983901978){
   if(i20<0.055532753467559814){
    if(i63<0.0010775685077533126){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=595.0;
     s1+=6.0;
    }
   } else {
    if(i26<0.8539461493492126){
     s0+=43.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=49.0;
    }
   }
  } else {
   if(i33<0.963921070098877){
    if(i45<0.0022414957638829947){
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.8849660158157349){
     s0+=3.0;
    } else {
     s0+=13.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i5<0.0002281665802001953){
   if(i55<-6.45692489342764e-06){
    s0+=207.0;
   } else {
    if(i8<0.9947075843811035){
     s0+=175.0;
     s1+=1962.0;
    } else {
     s0+=32.0;
     s1+=13672.0;
    }
   }
  } else {
   s0+=85.0;
  }
 }
} else {
 if(i18<0.001773912226781249){
  if(i0<0.00012129545211791992){
   if(i31<0.0006168958498165011){
    if(i11<0.9965723752975464){
     s0+=6171.0;
     s1+=555.0;
    } else {
     s0+=22617.0;
     s1+=296.0;
    }
   } else {
    if(i33<1.1172127723693848){
     s0+=62830.0;
     s1+=197.0;
    } else {
     s0+=1750.0;
     s1+=81.0;
    }
   }
  } else {
   if(i69<2.08860865313909e-06){
    if(i30<0.0010339617729187012){
     s1+=298.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i7<0.003997085615992546){
   if(i13<0.00022431655088439584){
    if(i37<-6.624574780289549e-06){
     s1+=229.0;
    } else {
     s0+=2211.0;
     s1+=200.0;
    }
   } else {
    if(i13<0.0002622775500640273){
     s0+=903.0;
     s1+=56.0;
    } else {
     s0+=8150.0;
     s1+=7.0;
    }
   }
  } else {
   if(i29<1.1164028644561768){
    if(i50<0.999790370464325){
     s0+=1053.0;
     s1+=16.0;
    } else {
     s0+=55.0;
     s1+=3657.0;
    }
   } else {
    if(i22<0.13696172833442688){
     s0+=8941.0;
     s1+=1080.0;
    } else {
     s0+=689.0;
     s1+=1698.0;
    }
   }
  }
 }
}
if(i10<1.0177361965179443){
 if(i17<1.009092092514038){
  if(i7<0.014057562686502934){
   if(i30<9.256601333618164e-05){
    if(i32<0.0005928203463554382){
     s0+=58287.0;
     s1+=120.0;
    } else {
     s0+=21321.0;
     s1+=825.0;
    }
   } else {
    if(i23<0.0009322601836174726){
     s0+=5229.0;
     s1+=2729.0;
    } else {
     s0+=28165.0;
     s1+=1707.0;
    }
   }
  } else {
   if(i19<0.9401877522468567){
    if(i36<1.4697450399398804){
     s0+=769.0;
     s1+=19.0;
    } else {
     s0+=195.0;
     s1+=151.0;
    }
   } else {
    if(i72<0.852336049079895){
     s0+=87.0;
     s1+=130.0;
    } else {
     s0+=51.0;
     s1+=1832.0;
    }
   }
  }
 } else {
  if(i13<0.0006839977577328682){
   if(i4<0.00035768747329711914){
    if(i40<0.03295367956161499){
     s0+=126.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i5<4.607439041137695e-05){
     s0+=117.0;
     s1+=638.0;
    } else {
     s0+=11.0;
     s1+=2074.0;
    }
   }
  } else {
   s0+=863.0;
  }
 }
} else {
 if(i50<1.0008046627044678){
  if(i32<0.0006757236551493406){
   s0+=431.0;
  } else {
   if(i52<0.03617212548851967){
    if(i25<1.1180615425109863){
     s1+=61.0;
    } else {
     s0+=107.0;
    }
   } else {
    if(i42<0.021151598542928696){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=430.0;
    }
   }
  }
 } else {
  if(i2<-0.00025331974029541016){
   if(i71<0.1382366120815277){
    if(i39<0.18475928902626038){
     s0+=230.0;
     s1+=13.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i65<-0.0008072234340943396){
     s0+=3.0;
     s1+=65.0;
    } else {
     s0+=43.0;
     s1+=12.0;
    }
   }
  } else {
   if(i7<0.0028075857553631067){
    if(i1<-7.640309922862798e-05){
     s0+=16.0;
     s1+=151.0;
    } else {
     s0+=446.0;
     s1+=87.0;
    }
   } else {
    if(i29<1.7041046619415283){
     s0+=114.0;
     s1+=13177.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i8<1.0136470794677734){
 if(i4<0.0005361437797546387){
  if(i25<1.1162974834442139){
   if(i18<0.0015696289483457804){
    if(i18<0.0010509793646633625){
     s0+=23318.0;
     s1+=128.0;
    } else {
     s0+=2871.0;
     s1+=447.0;
    }
   } else {
    if(i58<0.9998159408569336){
     s0+=1842.0;
     s1+=122.0;
    } else {
     s0+=534.0;
     s1+=2184.0;
    }
   }
  } else {
   if(i33<1.1403393745422363){
    if(i1<-8.129396883305162e-05){
     s0+=783.0;
     s1+=235.0;
    } else {
     s0+=79056.0;
     s1+=822.0;
    }
   } else {
    if(i7<0.006609870120882988){
     s0+=407.0;
    } else {
     s0+=3.0;
     s1+=354.0;
    }
   }
  }
 } else {
  if(i7<0.003959427587687969){
   if(i31<0.0009698849753476679){
    if(i27<1.0451974868774414){
     s0+=1472.0;
     s1+=6.0;
    } else {
     s1+=293.0;
    }
   } else {
    if(i42<0.03419646993279457){
     s0+=3006.0;
     s1+=18.0;
    } else {
     s0+=64.0;
     s1+=35.0;
    }
   }
  } else {
   if(i24<1.1188709735870361){
    if(i3<1.0012835264205933){
     s0+=1025.0;
     s1+=197.0;
    } else {
     s0+=603.0;
     s1+=2256.0;
    }
   } else {
    if(i29<1.1498383283615112){
     s0+=19.0;
    } else {
     s0+=112.0;
     s1+=2594.0;
    }
   }
  }
 }
} else {
 if(i7<0.004937818739563227){
  if(i46<-9.031536137626972e-06){
   if(i25<1.1180615425109863){
    s1+=530.0;
   } else {
    if(i37<-2.39241671806667e-05){
     s0+=25.0;
     s1+=312.0;
    } else {
     s0+=60.0;
     s1+=11.0;
    }
   }
  } else {
   if(i31<0.0005069526378065348){
    s1+=70.0;
   } else {
    if(i37<-2.595978912722785e-05){
     s0+=16.0;
     s1+=32.0;
    } else {
     s0+=1081.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i32<0.003952434286475182){
   if(i6<1.0010795593261719){
    if(i40<0.013288948684930801){
     s0+=40.0;
     s1+=44.0;
    } else {
     s1+=172.0;
    }
   } else {
    if(i19<1.0156913995742798){
     s0+=60.0;
     s1+=1702.0;
    } else {
     s0+=1.0;
     s1+=11818.0;
    }
   }
  } else {
   s0+=14.0;
  }
 }
}
if(i16<0.0013867020606994629){
 if(i38<0.20886924862861633){
  if(i32<0.0007192140910774469){
   if(i12<1.0084130764007568){
    if(i26<1.018277645111084){
     s0+=80507.0;
     s1+=544.0;
    } else {
     s0+=493.0;
     s1+=108.0;
    }
   } else {
    if(i36<1.3050894737243652){
     s0+=24.0;
     s1+=78.0;
    } else {
     s0+=39.0;
    }
   }
  } else {
   if(i27<1.1301478147506714){
    if(i13<0.0002163630269933492){
     s0+=5250.0;
     s1+=3258.0;
    } else {
     s0+=25215.0;
     s1+=1292.0;
    }
   } else {
    if(i6<1.0018550157546997){
     s0+=2373.0;
     s1+=313.0;
    } else {
     s0+=1158.0;
     s1+=2333.0;
    }
   }
  }
 } else {
  if(i36<1.1759499311447144){
   if(i28<1.0462123155593872){
    if(i31<0.0022310088388621807){
     s0+=232.0;
    } else {
     s0+=41.0;
     s1+=14.0;
    }
   } else {
    if(i8<1.0311790704727173){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i32<0.0005471991607919335){
    if(i44<1.0023772716522217){
     s0+=91.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i53<-3.921403276763158e-06){
     s0+=107.0;
     s1+=3214.0;
    } else {
     s0+=35.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i50<1.0008686780929565){
  if(i43<0.0057518319226801395){
   if(i23<0.0009854333475232124){
    s1+=3.0;
   } else {
    s0+=506.0;
   }
  } else {
   s1+=283.0;
  }
 } else {
  if(i13<0.0007050560088828206){
   if(i55<-6.466872036980931e-06){
    s0+=7.0;
   } else {
    if(i49<-1.7712100088829175e-05){
     s0+=10.0;
     s1+=12858.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   }
  } else {
   s0+=419.0;
  }
 }
}
if(i4<0.0005871951580047607){
 if(i41<1.021773099899292){
  if(i7<0.0036570909433066845){
   if(i67<-0.0008009970188140869){
    if(i40<0.00025867833755910397){
     s0+=262.0;
     s1+=271.0;
    } else {
     s0+=13101.0;
     s1+=315.0;
    }
   } else {
    if(i7<0.0027586088981479406){
     s0+=66377.0;
     s1+=221.0;
    } else {
     s0+=6459.0;
     s1+=232.0;
    }
   }
  } else {
   if(i31<0.001190647017210722){
    if(i27<1.0381015539169312){
     s0+=2524.0;
     s1+=272.0;
    } else {
     s0+=313.0;
     s1+=1872.0;
    }
   } else {
    if(i24<1.1393959522247314){
     s0+=19679.0;
     s1+=772.0;
    } else {
     s0+=221.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i49<-8.446475476375781e-06){
   if(i50<1.0024292469024658){
    if(i37<7.073233064147644e-06){
     s0+=47.0;
     s1+=35.0;
    } else {
     s0+=84.0;
     s1+=794.0;
    }
   } else {
    if(i15<0.2588637173175812){
     s0+=148.0;
     s1+=13.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i32<0.000993011286482215){
    if(i42<0.01033877581357956){
     s0+=103.0;
     s1+=3.0;
    } else {
     s0+=448.0;
    }
   } else {
    if(i66<6.157031293696491e-06){
     s1+=10.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
} else {
 if(i20<0.007953254505991936){
  if(i16<0.001134335994720459){
   if(i13<0.00022083419025875628){
    if(i21<-4.9114227294921875e-05){
     s0+=176.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=186.0;
    }
   } else {
    if(i8<0.9831634759902954){
     s0+=35.0;
     s1+=8.0;
    } else {
     s0+=3436.0;
     s1+=2.0;
    }
   }
  } else {
   if(i40<0.001119527267292142){
    if(i66<2.2086917397245998e-06){
     s0+=1.0;
     s1+=1413.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i31<0.002547471784055233){
     s0+=1052.0;
     s1+=15.0;
    } else {
     s1+=528.0;
    }
   }
  }
 } else {
  if(i3<1.002917766571045){
   if(i52<0.2521389126777649){
    if(i17<0.999195396900177){
     s0+=947.0;
     s1+=321.0;
    } else {
     s0+=180.0;
     s1+=254.0;
    }
   } else {
    if(i16<-0.0036199092864990234){
     s0+=44.0;
     s1+=89.0;
    } else {
     s0+=7.0;
     s1+=410.0;
    }
   }
  } else {
   if(i20<0.01347518339753151){
    if(i1<-7.007726526353508e-05){
     s0+=55.0;
     s1+=1101.0;
    } else {
     s0+=410.0;
     s1+=267.0;
    }
   } else {
    if(i9<0.9791369438171387){
     s0+=52.0;
     s1+=134.0;
    } else {
     s0+=179.0;
     s1+=14476.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i4<0.00032657384872436523){
  if(i7<0.01970546320080757){
   if(i20<0.006546176038682461){
    if(i11<0.9945783019065857){
     s0+=4507.0;
     s1+=286.0;
    } else {
     s0+=59255.0;
     s1+=162.0;
    }
   } else {
    if(i44<0.9995287656784058){
     s0+=26950.0;
     s1+=326.0;
    } else {
     s0+=13745.0;
     s1+=2296.0;
    }
   }
  } else {
   if(i38<0.04405701160430908){
    if(i73<-0.012040376663208008){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=67.0;
     s1+=3.0;
    }
   } else {
    s1+=211.0;
   }
  }
 } else {
  if(i20<0.009598784148693085){
   if(i13<0.00024739804212003946){
    if(i34<0.0007240900304168463){
     s0+=3.0;
     s1+=311.0;
    } else {
     s0+=2547.0;
     s1+=45.0;
    }
   } else {
    if(i64<0.0047327689826488495){
     s0+=4772.0;
     s1+=4.0;
    } else {
     s0+=78.0;
     s1+=10.0;
    }
   }
  } else {
   if(i11<0.9349991083145142){
    if(i13<0.0005369996652007103){
     s0+=466.0;
     s1+=45.0;
    } else {
     s0+=30.0;
     s1+=55.0;
    }
   } else {
    if(i2<-0.0003916621208190918){
     s0+=1054.0;
     s1+=228.0;
    } else {
     s0+=944.0;
     s1+=3963.0;
    }
   }
  }
 }
} else {
 if(i31<0.002356777200475335){
  if(i48<1.1980533599853516e-05){
   if(i13<0.0002517071843612939){
    s1+=2292.0;
   } else {
    s0+=351.0;
   }
  } else {
   if(i13<0.0001433916186215356){
    s1+=34.0;
   } else {
    if(i65<0.0012415244709700346){
     s0+=1579.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i38<0.0003789663314819336){
   if(i30<0.000461578369140625){
    if(i20<0.06206987053155899){
     s0+=24.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i40<0.004240095149725676){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   }
  } else {
   if(i33<0.8617047071456909){
    s0+=4.0;
   } else {
    if(i14<1.0193473100662231){
     s0+=57.0;
     s1+=2940.0;
    } else {
     s0+=8.0;
     s1+=11138.0;
    }
   }
  }
 }
}
if(i14<1.016650676727295){
 if(i5<1.8298625946044922e-05){
  if(i23<0.0008836754132062197){
   if(i35<1.0514838695526123){
    if(i58<1.001078724861145){
     s0+=21876.0;
     s1+=425.0;
    } else {
     s0+=1571.0;
     s1+=313.0;
    }
   } else {
    if(i13<0.000165375298820436){
     s0+=6323.0;
     s1+=822.0;
    } else {
     s0+=393.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i38<0.2285960614681244){
    if(i24<1.1299827098846436){
     s0+=75774.0;
     s1+=563.0;
    } else {
     s0+=1360.0;
     s1+=316.0;
    }
   } else {
    if(i37<8.055123907979578e-05){
     s0+=73.0;
     s1+=4.0;
    } else {
     s0+=30.0;
     s1+=250.0;
    }
   }
  }
 } else {
  if(i20<0.020584801211953163){
   if(i37<-2.0060655515408143e-05){
    if(i35<1.0905089378356934){
     s0+=4.0;
     s1+=728.0;
    } else {
     s0+=197.0;
     s1+=347.0;
    }
   } else {
    if(i18<0.0020718311425298452){
     s0+=4022.0;
     s1+=98.0;
    } else {
     s0+=2336.0;
     s1+=1164.0;
    }
   }
  } else {
   if(i24<1.0529450178146362){
    if(i46<1.2406295354594477e-05){
     s0+=3.0;
     s1+=60.0;
    } else {
     s0+=419.0;
     s1+=66.0;
    }
   } else {
    if(i22<0.10551220178604126){
     s0+=307.0;
     s1+=839.0;
    } else {
     s0+=87.0;
     s1+=2939.0;
    }
   }
  }
 }
} else {
 if(i6<1.0013642311096191){
  if(i31<0.016393626108765602){
   if(i53<-2.5809890757955145e-06){
    if(i13<0.0002546323521528393){
     s0+=8.0;
     s1+=132.0;
    } else {
     s0+=176.0;
     s1+=21.0;
    }
   } else {
    if(i44<1.0015835762023926){
     s0+=447.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=171.0;
  }
 } else {
  if(i3<1.0016777515411377){
   if(i42<0.061701416969299316){
    if(i31<0.0011754545848816633){
     s1+=3.0;
    } else {
     s0+=223.0;
     s1+=3.0;
    }
   } else {
    if(i29<1.3406391143798828){
     s0+=48.0;
     s1+=25.0;
    } else {
     s0+=4.0;
     s1+=96.0;
    }
   }
  } else {
   if(i34<0.002641368191689253){
    if(i48<1.1622905731201172e-05){
     s0+=119.0;
     s1+=1608.0;
    } else {
     s0+=541.0;
     s1+=27.0;
    }
   } else {
    if(i35<1.1279253959655762){
     s0+=41.0;
    } else {
     s0+=111.0;
     s1+=12120.0;
    }
   }
  }
 }
}
if(i10<1.017686128616333){
 if(i46<-1.2578627320181113e-05){
  if(i58<1.0037391185760498){
   if(i30<0.0017195045948028564){
    if(i5<0.0002313852310180664){
     s0+=34.0;
     s1+=1639.0;
    } else {
     s0+=17.0;
    }
   } else {
    s0+=45.0;
   }
  } else {
   if(i40<0.0021518319845199585){
    s0+=38.0;
   } else {
    s1+=30.0;
   }
  }
 } else {
  if(i32<0.0007268061162903905){
   if(i8<1.0192770957946777){
    if(i18<0.002062622457742691){
     s0+=81183.0;
     s1+=534.0;
    } else {
     s0+=200.0;
     s1+=105.0;
    }
   } else {
    if(i51<-0.0006246298435144126){
     s1+=25.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i2<-0.0004323124885559082){
    if(i38<0.220998615026474){
     s0+=25560.0;
     s1+=915.0;
    } else {
     s0+=36.0;
     s1+=164.0;
    }
   } else {
    if(i37<3.2644442399032414e-05){
     s0+=6484.0;
     s1+=1835.0;
    } else {
     s0+=1868.0;
     s1+=4919.0;
    }
   }
  }
 }
} else {
 if(i49<-9.178902473649941e-06){
  if(i9<1.0157520771026611){
   if(i35<1.1704325675964355){
    if(i34<0.0012127617374062538){
     s0+=6.0;
     s1+=704.0;
    } else {
     s0+=814.0;
     s1+=437.0;
    }
   } else {
    if(i0<-8.320808410644531e-05){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=55.0;
     s1+=2018.0;
    }
   }
  } else {
   if(i67<0.002089202404022217){
    if(i0<0.00011396408081054688){
     s0+=10.0;
     s1+=3.0;
    } else {
     s1+=1769.0;
    }
   } else {
    s1+=8866.0;
   }
  }
 } else {
  if(i9<0.9919902086257935){
   if(i58<1.0019924640655518){
    s0+=29.0;
   } else {
    if(i51<-0.00021871401986572891){
     s1+=13.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i30<0.00011146068572998047){
    s0+=419.0;
   } else {
    if(i6<1.0007998943328857){
     s0+=17.0;
     s1+=6.0;
    } else {
     s0+=29.0;
    }
   }
  }
 }
}
if(i0<6.431341171264648e-05){
 if(i7<0.007540770806372166){
  if(i30<8.600950241088867e-05){
   if(i34<0.0003272363974247128){
    if(i59<0.00013219151878729463){
     s0+=15100.0;
     s1+=233.0;
    } else {
     s0+=1018.0;
     s1+=463.0;
    }
   } else {
    if(i29<1.0905578136444092){
     s0+=7155.0;
     s1+=148.0;
    } else {
     s0+=53705.0;
     s1+=69.0;
    }
   }
  } else {
   if(i36<1.0905030965805054){
    if(i23<0.000240382767515257){
     s0+=5279.0;
     s1+=7.0;
    } else {
     s0+=522.0;
     s1+=2082.0;
    }
   } else {
    if(i37<3.906316123902798e-05){
     s0+=15201.0;
     s1+=263.0;
    } else {
     s0+=11125.0;
     s1+=1057.0;
    }
   }
  }
 } else {
  if(i2<-0.0005053579807281494){
   if(i7<0.01971573755145073){
    if(i15<0.15728965401649475){
     s0+=4451.0;
     s1+=165.0;
    } else {
     s0+=69.0;
     s1+=218.0;
    }
   } else {
    if(i24<1.0718709230422974){
     s0+=119.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=188.0;
    }
   }
  } else {
   if(i16<-0.0029633045196533203){
    if(i42<0.14560987055301666){
     s0+=389.0;
     s1+=191.0;
    } else {
     s0+=26.0;
     s1+=209.0;
    }
   } else {
    if(i60<-0.000411426619393751){
     s0+=57.0;
     s1+=2386.0;
    } else {
     s0+=110.0;
     s1+=287.0;
    }
   }
  }
 }
} else {
 if(i23<0.002331655938178301){
  if(i45<0.0008027036674320698){
   if(i36<1.0531964302062988){
    s0+=67.0;
   } else {
    if(i13<0.00033777664066292346){
     s0+=3.0;
     s1+=2167.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i43<0.0008565150201320648){
    if(i3<1.0021201372146606){
     s0+=7.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i67<-0.0008699893951416016){
     s0+=25.0;
     s1+=33.0;
    } else {
     s0+=1872.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i22<0.0032147467136383057){
   if(i16<-0.0012546181678771973){
    if(i1<-4.7672263463027775e-05){
     s0+=50.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i19<0.9484723806381226){
    if(i6<1.0068879127502441){
     s0+=21.0;
     s1+=7.0;
    } else {
     s1+=71.0;
    }
   } else {
    if(i27<1.075517177581787){
     s0+=26.0;
     s1+=24.0;
    } else {
     s0+=52.0;
     s1+=13961.0;
    }
   }
  }
 }
}
if(i7<0.007529483176767826){
 if(i0<8.100271224975586e-05){
  if(i58<1.000800609588623){
   if(i44<1.0025646686553955){
    if(i43<0.0008364487439393997){
     s0+=26499.0;
     s1+=886.0;
    } else {
     s0+=43361.0;
     s1+=139.0;
    }
   } else {
    if(i23<0.0008839421207085252){
     s0+=92.0;
     s1+=131.0;
    } else {
     s0+=794.0;
     s1+=4.0;
    }
   }
  } else {
   if(i25<1.1162974834442139){
    if(i51<-0.00010481629578862339){
     s0+=1060.0;
     s1+=1545.0;
    } else {
     s0+=5626.0;
     s1+=806.0;
    }
   } else {
    if(i72<1.037872552871704){
     s0+=32088.0;
     s1+=903.0;
    } else {
     s0+=385.0;
     s1+=199.0;
    }
   }
  }
 } else {
  if(i35<1.0951786041259766){
   if(i0<0.00043952465057373047){
    if(i25<1.126470685005188){
     s1+=1272.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   if(i34<0.0021090831141918898){
    if(i40<0.0007755444385111332){
     s1+=232.0;
    } else {
     s0+=1122.0;
    }
   } else {
    if(i9<1.000862717628479){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=1206.0;
    }
   }
  }
 }
} else {
 if(i38<0.08377152681350708){
  if(i12<1.0035831928253174){
   if(i46<1.9441304175416008e-05){
    if(i50<0.9987782835960388){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=120.0;
    }
   } else {
    if(i33<1.113267183303833){
     s0+=3876.0;
     s1+=126.0;
    } else {
     s0+=6.0;
     s1+=54.0;
    }
   }
  } else {
   if(i9<0.9771363735198975){
    if(i12<1.015486717224121){
     s0+=512.0;
     s1+=69.0;
    } else {
     s0+=6.0;
     s1+=69.0;
    }
   } else {
    if(i73<-0.001390308141708374){
     s0+=43.0;
     s1+=398.0;
    } else {
     s0+=47.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i16<-0.004173070192337036){
   if(i18<0.0067477053962647915){
    if(i51<-0.00019536192121449858){
     s0+=24.0;
     s1+=60.0;
    } else {
     s0+=416.0;
     s1+=36.0;
    }
   } else {
    if(i7<0.015576448291540146){
     s0+=38.0;
     s1+=18.0;
    } else {
     s0+=22.0;
     s1+=231.0;
    }
   }
  } else {
   if(i30<-0.0005910992622375488){
    if(i33<1.147796392440796){
     s0+=170.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i50<0.9975085258483887){
     s0+=74.0;
     s1+=1.0;
    } else {
     s0+=125.0;
     s1+=15816.0;
    }
   }
  }
 }
}
if(i4<0.0005820393562316895){
 if(i18<0.0017192047089338303){
  if(i67<-0.0006284117698669434){
   if(i1<-2.3374137526843697e-05){
    if(i45<0.00038167962338775396){
     s0+=31.0;
     s1+=112.0;
    } else {
     s0+=521.0;
     s1+=64.0;
    }
   } else {
    if(i40<0.0002575440448708832){
     s0+=473.0;
     s1+=261.0;
    } else {
     s0+=14662.0;
     s1+=127.0;
    }
   }
  } else {
   if(i43<0.0019349345238879323){
    if(i23<0.00027900387067347765){
     s0+=17083.0;
     s1+=241.0;
    } else {
     s0+=54948.0;
     s1+=34.0;
    }
   } else {
    if(i13<0.00018390617333352566){
     s0+=1020.0;
     s1+=6.0;
    } else {
     s0+=427.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i26<1.0171196460723877){
   if(i34<0.001065357238985598){
    if(i35<1.0444698333740234){
     s0+=1497.0;
     s1+=98.0;
    } else {
     s0+=210.0;
     s1+=1952.0;
    }
   } else {
    if(i61<0.006039524916559458){
     s0+=18351.0;
     s1+=871.0;
    } else {
     s0+=328.0;
     s1+=358.0;
    }
   }
  } else {
   if(i6<1.0031826496124268){
    if(i47<1.0015244483947754){
     s0+=72.0;
     s1+=901.0;
    } else {
     s0+=101.0;
     s1+=5.0;
    }
   } else {
    if(i49<-3.977275264333002e-05){
     s1+=13.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<0.0041463011875748634){
  if(i13<0.0002057016536127776){
   if(i12<1.006316065788269){
    if(i44<1.0034445524215698){
     s0+=1.0;
     s1+=47.0;
    } else {
     s0+=239.0;
     s1+=4.0;
    }
   } else {
    if(i37<7.626955630257726e-05){
     s0+=11.0;
     s1+=966.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i46<-4.751111555378884e-05){
    s1+=23.0;
   } else {
    if(i12<1.011908769607544){
     s0+=4800.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<0.06315866112709045){
   if(i37<0.00016363043687306345){
    if(i6<1.0013914108276367){
     s0+=32.0;
    } else {
     s0+=46.0;
     s1+=495.0;
    }
   } else {
    if(i73<-0.005297422409057617){
     s0+=130.0;
     s1+=215.0;
    } else {
     s0+=661.0;
     s1+=48.0;
    }
   }
  } else {
   if(i47<0.9985374212265015){
    s0+=176.0;
   } else {
    if(i16<-0.001348733901977539){
     s0+=451.0;
     s1+=1483.0;
    } else {
     s0+=134.0;
     s1+=15927.0;
    }
   }
  }
 }
}
if(i3<1.0038650035858154){
 if(i24<1.1403480768203735){
  if(i4<0.0002925992012023926){
   if(i32<0.0006473066750913858){
    if(i29<1.1758689880371094){
     s0+=66863.0;
     s1+=195.0;
    } else {
     s0+=4964.0;
     s1+=98.0;
    }
   } else {
    if(i6<0.9995347261428833){
     s0+=20468.0;
     s1+=210.0;
    } else {
     s0+=10425.0;
     s1+=2271.0;
    }
   }
  } else {
   if(i42<0.01235502865165472){
    if(i1<-4.209646431263536e-05){
     s0+=230.0;
     s1+=106.0;
    } else {
     s0+=4960.0;
     s1+=159.0;
    }
   } else {
    if(i31<0.0010583068942651153){
     s0+=145.0;
     s1+=1045.0;
    } else {
     s0+=3037.0;
     s1+=1104.0;
    }
   }
  }
 } else {
  if(i5<8.761882781982422e-06){
   if(i34<0.007047354709357023){
    if(i49<-1.2633890946744941e-05){
     s0+=35.0;
     s1+=44.0;
    } else {
     s0+=844.0;
     s1+=5.0;
    }
   } else {
    if(i39<0.01492568850517273){
     s0+=35.0;
     s1+=6.0;
    } else {
     s1+=269.0;
    }
   }
  } else {
   if(i52<0.20935004949569702){
    if(i0<-1.9788742065429688e-05){
     s0+=109.0;
     s1+=16.0;
    } else {
     s0+=48.0;
     s1+=197.0;
    }
   } else {
    if(i27<1.1693449020385742){
     s0+=21.0;
     s1+=34.0;
    } else {
     s1+=955.0;
    }
   }
  }
 }
} else {
 if(i40<0.001967518124729395){
  if(i25<1.116804838180542){
   if(i30<0.0005320906639099121){
    s1+=2615.0;
   } else {
    s0+=611.0;
   }
  } else {
   if(i7<0.007247840519994497){
    s0+=3476.0;
   } else {
    if(i46<1.4171955626807176e-06){
     s1+=21.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i15<0.08588147163391113){
   if(i6<1.006425142288208){
    if(i1<-7.161656685639173e-05){
     s0+=27.0;
     s1+=145.0;
    } else {
     s0+=67.0;
     s1+=21.0;
    }
   } else {
    if(i70<0.005347777158021927){
     s0+=10.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=279.0;
    }
   }
  } else {
   if(i13<0.0016919911140576005){
    if(i56<0.8742899298667908){
     s0+=4.0;
    } else {
     s0+=54.0;
     s1+=14601.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i5<2.0205974578857422e-05){
 if(i22<0.23055705428123474){
  if(i32<0.0007066469406709075){
   if(i32<0.0005074490327388048){
    if(i31<0.0019056590972468257){
     s0+=63001.0;
     s1+=49.0;
    } else {
     s0+=3371.0;
     s1+=58.0;
    }
   } else {
    if(i33<1.0178570747375488){
     s0+=1353.0;
     s1+=187.0;
    } else {
     s0+=11487.0;
     s1+=152.0;
    }
   }
  } else {
   if(i29<1.0955833196640015){
    if(i15<0.04871243238449097){
     s0+=1896.0;
     s1+=726.0;
    } else {
     s0+=282.0;
     s1+=1582.0;
    }
   } else {
    if(i31<0.0009051052038557827){
     s0+=106.0;
     s1+=387.0;
    } else {
     s0+=28125.0;
     s1+=1125.0;
    }
   }
  }
 } else {
  if(i7<0.0048084622249007225){
   if(i22<0.23177304863929749){
    s1+=2.0;
   } else {
    if(i12<1.001280665397644){
     s0+=75.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i53<-1.4715690213051857e-06){
    s1+=533.0;
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i13<0.0007044117664918303){
  if(i3<1.0068868398666382){
   if(i7<0.003959427587687969){
    if(i7<0.002295785117894411){
     s0+=1483.0;
     s1+=19.0;
    } else {
     s0+=382.0;
     s1+=96.0;
    }
   } else {
    if(i0<2.980232238769531e-07){
     s0+=1085.0;
     s1+=395.0;
    } else {
     s0+=631.0;
     s1+=4456.0;
    }
   }
  } else {
   if(i52<0.033246226608753204){
    if(i47<1.0023648738861084){
     s0+=29.0;
     s1+=2339.0;
    } else {
     s0+=130.0;
     s1+=65.0;
    }
   } else {
    if(i13<0.0007036929600872099){
     s0+=31.0;
     s1+=11702.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  s0+=3513.0;
 }
}
if(i2<0.0009578466415405273){
 if(i41<1.0214500427246094){
  if(i24<1.1546916961669922){
   if(i20<0.006728487089276314){
    if(i18<0.0011251452378928661){
     s0+=59562.0;
     s1+=166.0;
    } else {
     s0+=10876.0;
     s1+=473.0;
    }
   } else {
    if(i17<0.9967387318611145){
     s0+=35618.0;
     s1+=1088.0;
    } else {
     s0+=6588.0;
     s1+=3494.0;
    }
   }
  } else {
   if(i40<0.011482018046081066){
    if(i7<0.006559655070304871){
     s0+=411.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=256.0;
    }
   } else {
    if(i38<0.007369309663772583){
     s0+=47.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=676.0;
    }
   }
  }
 } else {
  if(i7<0.005081909708678722){
   if(i0<1.6987323760986328e-05){
    if(i0<-6.338953971862793e-05){
     s0+=107.0;
     s1+=12.0;
    } else {
     s0+=766.0;
     s1+=17.0;
    }
   } else {
    if(i12<0.9998260736465454){
     s1+=41.0;
    } else {
     s0+=249.0;
     s1+=53.0;
    }
   }
  } else {
   if(i66<-7.423501301673241e-06){
    s0+=8.0;
   } else {
    if(i0<-4.884600639343262e-05){
     s0+=45.0;
     s1+=65.0;
    } else {
     s0+=39.0;
     s1+=1622.0;
    }
   }
  }
 }
} else {
 if(i27<1.1288561820983887){
  if(i23<0.0009706164710223675){
   if(i30<0.0006200969219207764){
    s1+=2339.0;
   } else {
    s0+=69.0;
   }
  } else {
   if(i13<0.00029686756897717714){
    if(i40<0.0014875851338729262){
     s0+=55.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=775.0;
    }
   } else {
    if(i29<1.1843671798706055){
     s0+=1639.0;
    } else {
     s0+=33.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i31<0.0019996617920696735){
   s0+=281.0;
  } else {
   if(i33<1.023483157157898){
    if(i59<0.0029994864016771317){
     s0+=1.0;
     s1+=79.0;
    } else {
     s0+=34.0;
     s1+=39.0;
    }
   } else {
    if(i29<1.4731788635253906){
     s0+=3.0;
     s1+=10667.0;
    } else {
     s0+=30.0;
     s1+=2420.0;
    }
   }
  }
 }
}
if(i1<-9.239432984031737e-05){
 if(i59<0.003162022680044174){
  if(i9<0.9735504388809204){
   if(i45<0.013990888372063637){
    if(i56<1.0262340307235718){
     s0+=160.0;
     s1+=26.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i20<0.03755620867013931){
     s0+=12.0;
    } else {
     s1+=76.0;
    }
   }
  } else {
   if(i27<1.117903709411621){
    if(i32<0.003382065799087286){
     s0+=90.0;
     s1+=1145.0;
    } else {
     s0+=194.0;
    }
   } else {
    if(i48<6.559491157531738e-05){
     s0+=75.0;
     s1+=14486.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i67<-0.013004511594772339){
   if(i20<0.06980380415916443){
    if(i36<1.5545397996902466){
     s0+=467.0;
     s1+=2.0;
    } else {
     s0+=44.0;
     s1+=7.0;
    }
   } else {
    if(i57<0.005487138405442238){
     s0+=50.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=59.0;
    }
   }
  } else {
   if(i34<0.0160863995552063){
    s0+=2.0;
   } else {
    s1+=92.0;
   }
  }
 }
} else {
 if(i19<1.0100209712982178){
  if(i20<0.006775497458875179){
   if(i17<1.0098073482513428){
    if(i56<1.0047178268432617){
     s0+=1997.0;
     s1+=182.0;
    } else {
     s0+=68224.0;
     s1+=491.0;
    }
   } else {
    if(i25<1.1180615425109863){
     s1+=261.0;
    } else {
     s0+=113.0;
     s1+=5.0;
    }
   }
  } else {
   if(i25<1.116391897201538){
    if(i5<-6.139278411865234e-06){
     s0+=6699.0;
     s1+=224.0;
    } else {
     s0+=671.0;
     s1+=2581.0;
    }
   } else {
    if(i6<1.0023819208145142){
     s0+=32495.0;
     s1+=703.0;
    } else {
     s0+=1857.0;
     s1+=1363.0;
    }
   }
  }
 } else {
  if(i25<1.116804838180542){
   if(i4<-4.312396049499512e-05){
    s0+=10.0;
   } else {
    if(i1<-2.31145659199683e-05){
     s1+=1840.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   }
  } else {
   if(i31<0.002261953428387642){
    if(i34<0.0020586447790265083){
     s0+=2306.0;
    } else {
     s0+=49.0;
     s1+=9.0;
    }
   } else {
    if(i7<0.005328661762177944){
     s0+=714.0;
     s1+=68.0;
    } else {
     s0+=15.0;
     s1+=927.0;
    }
   }
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i24<1.0441462993621826){
  if(i4<0.0016364455223083496){
   if(i57<0.0002952016657218337){
    s1+=5.0;
   } else {
    if(i53<-2.0812280126847327e-05){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=444.0;
     s1+=4.0;
    }
   }
  } else {
   if(i72<0.8637003898620605){
    s0+=3.0;
   } else {
    s1+=50.0;
   }
  }
 } else {
  if(i15<0.041282445192337036){
   if(i29<1.4396315813064575){
    if(i6<1.0053532123565674){
     s0+=191.0;
     s1+=29.0;
    } else {
     s0+=18.0;
     s1+=33.0;
    }
   } else {
    if(i12<1.0039527416229248){
     s0+=26.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=71.0;
    }
   }
  } else {
   if(i69<5.490585863299202e-06){
    if(i22<0.13598647713661194){
     s0+=141.0;
     s1+=1889.0;
    } else {
     s0+=23.0;
     s1+=13207.0;
    }
   } else {
    s0+=118.0;
   }
  }
 }
} else {
 if(i7<0.004080099519342184){
  if(i40<0.0005629415391013026){
   if(i0<7.331371307373047e-05){
    if(i9<0.9972046613693237){
     s0+=4326.0;
     s1+=624.0;
    } else {
     s0+=21861.0;
     s1+=485.0;
    }
   } else {
    s1+=589.0;
   }
  } else {
   if(i58<1.001373529434204){
    if(i35<1.0838650465011597){
     s0+=3804.0;
     s1+=46.0;
    } else {
     s0+=46717.0;
     s1+=19.0;
    }
   } else {
    if(i41<1.0305655002593994){
     s0+=18427.0;
     s1+=255.0;
    } else {
     s0+=220.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i11<1.0059757232666016){
   if(i0<-2.4437904357910156e-05){
    if(i39<0.22334763407707214){
     s0+=18317.0;
     s1+=569.0;
    } else {
     s0+=15.0;
     s1+=70.0;
    }
   } else {
    if(i53<-2.517583652661415e-06){
     s0+=946.0;
     s1+=2444.0;
    } else {
     s0+=245.0;
    }
   }
  } else {
   if(i35<1.0905089378356934){
    if(i13<0.00026604655431583524){
     s0+=12.0;
     s1+=2058.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i44<1.0007905960083008){
     s0+=596.0;
     s1+=33.0;
    } else {
     s0+=250.0;
     s1+=1585.0;
    }
   }
  }
 }
}
if(i7<0.00747767835855484){
 if(i11<1.014328956604004){
  if(i18<0.0015720020746812224){
   if(i66<-6.506420504592825e-06){
    if(i55<-5.4915781220188364e-06){
     s0+=77.0;
    } else {
     s1+=244.0;
    }
   } else {
    if(i19<0.9949926733970642){
     s0+=13701.0;
     s1+=411.0;
    } else {
     s0+=74261.0;
     s1+=325.0;
    }
   }
  } else {
   if(i9<1.0051662921905518){
    if(i31<0.0010359818115830421){
     s0+=2433.0;
     s1+=1971.0;
    } else {
     s0+=17772.0;
     s1+=587.0;
    }
   } else {
    if(i13<0.0002762534422799945){
     s0+=162.0;
     s1+=1502.0;
    } else {
     s0+=1436.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i55<-5.433075330074644e-06){
   if(i45<0.009855009615421295){
    s0+=400.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i37<-2.355179276491981e-05){
    if(i76<0.0010190010070800781){
     s0+=3.0;
     s1+=893.0;
    } else {
     s0+=26.0;
     s1+=574.0;
    }
   } else {
    if(i6<1.001533031463623){
     s0+=357.0;
     s1+=12.0;
    } else {
     s0+=493.0;
     s1+=693.0;
    }
   }
  }
 }
} else {
 if(i24<1.0529450178146362){
  if(i2<7.796287536621094e-05){
   if(i46<1.7783097064238973e-05){
    s1+=8.0;
   } else {
    if(i6<1.0029391050338745){
     s0+=3425.0;
     s1+=26.0;
    } else {
     s0+=333.0;
     s1+=35.0;
    }
   }
  } else {
   if(i18<0.004042563959956169){
    s1+=161.0;
   } else {
    if(i50<1.004634976387024){
     s0+=153.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i11<0.9584225416183472){
   if(i3<0.9975187182426453){
    if(i7<0.019685398787260056){
     s0+=808.0;
     s1+=103.0;
    } else {
     s0+=11.0;
     s1+=104.0;
    }
   } else {
    if(i52<0.19026952981948853){
     s0+=169.0;
     s1+=123.0;
    } else {
     s0+=44.0;
     s1+=405.0;
    }
   }
  } else {
   if(i5<-2.9087066650390625e-05){
    if(i61<0.006865955889225006){
     s0+=252.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i47<0.9971882700920105){
     s0+=50.0;
    } else {
     s0+=271.0;
     s1+=15959.0;
    }
   }
  }
 }
}
if(i6<1.0026319026947021){
 if(i39<0.20620757341384888){
  if(i10<1.0171293020248413){
   if(i20<0.006739639677107334){
    if(i24<1.0128135681152344){
     s0+=518.0;
     s1+=97.0;
    } else {
     s0+=68281.0;
     s1+=477.0;
    }
   } else {
    if(i21<-0.00011783838272094727){
     s0+=33811.0;
     s1+=1149.0;
    } else {
     s0+=7242.0;
     s1+=2433.0;
    }
   }
  } else {
   if(i27<1.0869145393371582){
    if(i18<0.001363346353173256){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=525.0;
    }
   } else {
    if(i44<1.0011886358261108){
     s0+=491.0;
     s1+=9.0;
    } else {
     s0+=121.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i7<0.006707801483571529){
   if(i7<0.004592172335833311){
    if(i27<1.0974891185760498){
     s1+=2.0;
    } else {
     s0+=145.0;
     s1+=4.0;
    }
   } else {
    if(i61<0.0014529931358993053){
     s1+=8.0;
    } else {
     s0+=26.0;
     s1+=7.0;
    }
   }
  } else {
   if(i58<1.0060980319976807){
    if(i35<1.126117467880249){
     s0+=1.0;
    } else {
     s1+=673.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i16<0.0019251704216003418){
  if(i36<1.1757044792175293){
   if(i48<9.000301361083984e-06){
    if(i46<1.5650834939151537e-07){
     s0+=109.0;
     s1+=1026.0;
    } else {
     s0+=355.0;
     s1+=225.0;
    }
   } else {
    if(i45<0.000848281430080533){
     s0+=750.0;
     s1+=153.0;
    } else {
     s0+=2983.0;
     s1+=51.0;
    }
   }
  } else {
   if(i39<0.0659399926662445){
    if(i27<1.0919609069824219){
     s0+=547.0;
     s1+=6.0;
    } else {
     s0+=686.0;
     s1+=748.0;
    }
   } else {
    if(i7<0.005229106638580561){
     s0+=319.0;
     s1+=102.0;
    } else {
     s0+=195.0;
     s1+=4899.0;
    }
   }
  }
 } else {
  if(i20<0.0034779394045472145){
   if(i47<0.9990718364715576){
    s0+=31.0;
   } else {
    s1+=254.0;
   }
  } else {
   if(i47<0.9981217384338379){
    s0+=12.0;
   } else {
    s1+=11161.0;
   }
  }
 }
}
if(i10<1.017686128616333){
 if(i4<0.001017153263092041){
  if(i6<1.0023244619369507){
   if(i20<0.09012533724308014){
    if(i31<0.0010565273696556687){
     s0+=31696.0;
     s1+=3034.0;
    } else {
     s0+=76877.0;
     s1+=853.0;
    }
   } else {
    s1+=235.0;
   }
  } else {
   if(i7<0.0039302087388932705){
    if(i72<0.977115273475647){
     s0+=30.0;
     s1+=24.0;
    } else {
     s0+=3296.0;
     s1+=82.0;
    }
   } else {
    if(i17<0.9988046884536743){
     s0+=986.0;
     s1+=472.0;
    } else {
     s0+=290.0;
     s1+=1361.0;
    }
   }
  }
 } else {
  if(i30<0.0011478662490844727){
   if(i1<-7.334932161029428e-05){
    if(i46<1.2019956557196565e-05){
     s0+=30.0;
     s1+=1934.0;
    } else {
     s0+=230.0;
     s1+=1195.0;
    }
   } else {
    if(i2<0.0013926029205322266){
     s0+=635.0;
     s1+=238.0;
    } else {
     s0+=132.0;
     s1+=689.0;
    }
   }
  } else {
   if(i6<1.0082567930221558){
    if(i65<0.0023336338344961405){
     s0+=1041.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i53<-2.1540941816056147e-05){
     s1+=187.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i5<8.64267349243164e-06){
  if(i40<0.01215713657438755){
   if(i53<-2.9927191462775227e-06){
    if(i13<0.00024587608641013503){
     s0+=18.0;
     s1+=91.0;
    } else {
     s0+=126.0;
     s1+=4.0;
    }
   } else {
    if(i7<0.0068595558404922485){
     s0+=468.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   }
  } else {
   s1+=149.0;
  }
 } else {
  if(i1<-6.426691834349185e-05){
   if(i8<1.020032286643982){
    if(i13<0.0009025814360938966){
     s0+=50.0;
     s1+=1367.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i7<0.0034062108024954796){
     s0+=11.0;
     s1+=148.0;
    } else {
     s1+=11207.0;
    }
   }
  } else {
   if(i53<-1.1572987204999663e-05){
    if(i49<-4.188081220490858e-05){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=490.0;
     s1+=23.0;
    }
   } else {
    if(i55<-4.0784457269182894e-06){
     s0+=56.0;
    } else {
     s0+=57.0;
     s1+=912.0;
    }
   }
  }
 }
}
if(i41<1.0207123756408691){
 if(i2<0.0010561943054199219){
  if(i33<1.142219066619873){
   if(i12<1.002882957458496){
    if(i34<0.001045609125867486){
     s0+=30865.0;
     s1+=2808.0;
    } else {
     s0+=75315.0;
     s1+=1182.0;
    }
   } else {
    if(i20<0.009537912905216217){
     s0+=5863.0;
     s1+=246.0;
    } else {
     s0+=1068.0;
     s1+=1201.0;
    }
   }
  } else {
   if(i63<0.21240100264549255){
    if(i5<4.8160552978515625e-05){
     s0+=408.0;
     s1+=35.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i7<0.006897475570440292){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=743.0;
    }
   }
  }
 } else {
  if(i47<0.9998264312744141){
   if(i29<1.5844049453735352){
    if(i32<0.001108350814320147){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=585.0;
    }
   } else {
    s1+=120.0;
   }
  } else {
   if(i0<9.757280349731445e-05){
    if(i57<0.0005479284445755184){
     s1+=331.0;
    } else {
     s0+=580.0;
     s1+=425.0;
    }
   } else {
    if(i16<0.001893162727355957){
     s0+=211.0;
     s1+=1548.0;
    } else {
     s1+=2043.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013825625646859407){
  if(i3<1.0113444328308105){
   if(i46<-1.6186360880965367e-05){
    if(i40<0.0009074565023183823){
     s1+=45.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i6<1.000627040863037){
     s0+=493.0;
    } else {
     s0+=428.0;
     s1+=32.0;
    }
   }
  } else {
   s1+=266.0;
  }
 } else {
  if(i46<3.503182961139828e-05){
   if(i22<0.1423138678073883){
    if(i25<1.116804838180542){
     s1+=1117.0;
    } else {
     s0+=354.0;
     s1+=481.0;
    }
   } else {
    if(i34<0.0021264725364744663){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=11100.0;
    }
   }
  } else {
   if(i22<0.2107773721218109){
    if(i47<1.002655267715454){
     s0+=325.0;
     s1+=9.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i23<0.005073043517768383){
     s0+=5.0;
    } else {
     s0+=13.0;
     s1+=489.0;
    }
   }
  }
 }
}
if(i11<1.015453815460205){
 if(i4<0.0005266070365905762){
  if(i38<0.23819425702095032){
   if(i23<0.0008836754132062197){
    if(i18<0.0015711064916104078){
     s0+=28447.0;
     s1+=505.0;
    } else {
     s0+=2204.0;
     s1+=2373.0;
    }
   } else {
    if(i1<-0.00011741343041649088){
     s0+=163.0;
     s1+=159.0;
    } else {
     s0+=78028.0;
     s1+=865.0;
    }
   }
  } else {
   if(i53<-2.3693555704085156e-06){
    if(i68<0.03614260256290436){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=256.0;
    }
   } else {
    s0+=54.0;
   }
  }
 } else {
  if(i13<0.0007043712539598346){
   if(i18<0.0010443874634802341){
    if(i17<1.010493278503418){
     s0+=1249.0;
    } else {
     s0+=8.0;
     s1+=83.0;
    }
   } else {
    if(i21<-0.00031453371047973633){
     s0+=1376.0;
     s1+=1030.0;
    } else {
     s0+=859.0;
     s1+=5015.0;
    }
   }
  } else {
   s0+=3422.0;
  }
 }
} else {
 if(i49<-1.0473199836269487e-05){
  if(i16<0.001914680004119873){
   if(i30<0.0012896060943603516){
    if(i18<0.0019148781429976225){
     s0+=183.0;
     s1+=167.0;
    } else {
     s0+=238.0;
     s1+=2985.0;
    }
   } else {
    if(i25<1.3808014392852783){
     s0+=160.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i50<0.9966055750846863){
    s0+=7.0;
   } else {
    if(i63<0.009988291189074516){
     s0+=2.0;
     s1+=362.0;
    } else {
     s0+=1.0;
     s1+=10362.0;
    }
   }
  }
 } else {
  s0+=275.0;
 }
}
if(i0<6.574392318725586e-05){
 if(i18<0.0018239400815218687){
  if(i34<0.0005491843912750483){
   if(i7<0.002047398593276739){
    if(i65<0.00043216755148023367){
     s0+=19093.0;
     s1+=86.0;
    } else {
     s0+=1531.0;
     s1+=118.0;
    }
   } else {
    if(i6<0.9994978904724121){
     s0+=4542.0;
     s1+=53.0;
    } else {
     s0+=246.0;
     s1+=654.0;
    }
   }
  } else {
   if(i28<1.029343843460083){
    if(i35<1.1354830265045166){
     s0+=58532.0;
     s1+=45.0;
    } else {
     s0+=8443.0;
     s1+=215.0;
    }
   } else {
    if(i18<0.0013647906016558409){
     s0+=595.0;
     s1+=24.0;
    } else {
     s0+=38.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i12<0.9981685280799866){
   if(i0<-1.2576580047607422e-05){
    if(i49<-3.582408317015506e-05){
     s0+=52.0;
     s1+=88.0;
    } else {
     s0+=13246.0;
     s1+=346.0;
    }
   } else {
    if(i20<0.008200748823583126){
     s0+=70.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=203.0;
    }
   }
  } else {
   if(i36<1.0452228784561157){
    s0+=1641.0;
   } else {
    if(i21<-0.00018799304962158203){
     s0+=5068.0;
     s1+=1710.0;
    } else {
     s0+=1388.0;
     s1+=4360.0;
    }
   }
  }
 }
} else {
 if(i51<-0.0002815466723404825){
  if(i47<0.9983546137809753){
   s0+=74.0;
  } else {
   if(i15<0.13699889183044434){
    if(i6<1.0015249252319336){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=67.0;
     s1+=1433.0;
    }
   } else {
    if(i25<1.1767785549163818){
     s0+=16.0;
     s1+=152.0;
    } else {
     s0+=3.0;
     s1+=11387.0;
    }
   }
  }
 } else {
  if(i0<0.00014406442642211914){
   if(i45<0.0007700723363086581){
    if(i27<1.040771722793579){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=833.0;
    }
   } else {
    if(i63<0.056658968329429626){
     s0+=1600.0;
     s1+=82.0;
    } else {
     s0+=135.0;
     s1+=378.0;
    }
   }
  } else {
   if(i55<-8.269738827948458e-06){
    s0+=70.0;
   } else {
    s1+=2096.0;
   }
  }
 }
}
if(i3<1.003852128982544){
 if(i7<0.00733465701341629){
  if(i34<0.001020520692691207){
   if(i20<0.007383130025118589){
    if(i18<0.0008558928966522217){
     s0+=19480.0;
     s1+=51.0;
    } else {
     s0+=5006.0;
     s1+=497.0;
    }
   } else {
    if(i44<1.000028133392334){
     s0+=6322.0;
     s1+=535.0;
    } else {
     s0+=565.0;
     s1+=1784.0;
    }
   }
  } else {
   if(i24<1.1145050525665283){
    if(i43<0.0016789863584563136){
     s0+=58762.0;
     s1+=72.0;
    } else {
     s0+=12423.0;
     s1+=448.0;
    }
   } else {
    if(i44<1.0013236999511719){
     s0+=2839.0;
     s1+=74.0;
    } else {
     s0+=959.0;
     s1+=283.0;
    }
   }
  }
 } else {
  if(i26<1.0089232921600342){
   if(i20<0.05613604933023453){
    if(i3<0.9983017444610596){
     s0+=4761.0;
     s1+=216.0;
    } else {
     s0+=501.0;
     s1+=692.0;
    }
   } else {
    if(i49<-1.8932980310637504e-05){
     s0+=133.0;
     s1+=860.0;
    } else {
     s0+=126.0;
     s1+=3.0;
    }
   }
  } else {
   if(i4<-0.0008303821086883545){
    if(i56<1.1503090858459473){
     s0+=91.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<-0.0006504356861114502){
     s0+=55.0;
     s1+=21.0;
    } else {
     s0+=31.0;
     s1+=1313.0;
    }
   }
  }
 }
} else {
 if(i34<0.0021215351298451424){
  if(i35<1.095003366470337){
   if(i11<1.008800983428955){
    if(i48<9.47713851928711e-06){
     s0+=72.0;
     s1+=355.0;
    } else {
     s0+=574.0;
     s1+=31.0;
    }
   } else {
    if(i69<-2.855811999324942e-06){
     s0+=9.0;
    } else {
     s0+=19.0;
     s1+=1977.0;
    }
   }
  } else {
   if(i61<0.0003307526931166649){
    if(i34<0.001149141462519765){
     s0+=29.0;
     s1+=298.0;
    } else {
     s0+=109.0;
    }
   } else {
    if(i34<0.000970973283983767){
     s1+=47.0;
    } else {
     s0+=3249.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i38<0.0806012749671936){
   if(i3<1.006232738494873){
    if(i72<0.958519458770752){
     s0+=31.0;
     s1+=103.0;
    } else {
     s0+=99.0;
     s1+=5.0;
    }
   } else {
    if(i74<0.007871538400650024){
     s1+=278.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   }
  } else {
   if(i22<0.0976891815662384){
    if(i72<1.0296471118927002){
     s0+=8.0;
     s1+=272.0;
    } else {
     s0+=29.0;
     s1+=15.0;
    }
   } else {
    if(i24<1.050832986831665){
     s0+=7.0;
     s1+=21.0;
    } else {
     s0+=33.0;
     s1+=14232.0;
    }
   }
  }
 }
}
if(i54<0.04409372806549072){
 if(i9<1.012605905532837){
  if(i32<0.0007182335248216987){
   if(i46<-9.116462024394423e-06){
    if(i62<0.0013092756271362305){
     s1+=337.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i19<0.9946585893630981){
     s0+=9793.0;
     s1+=265.0;
    } else {
     s0+=69008.0;
     s1+=229.0;
    }
   }
  } else {
   if(i40<0.0010595133062452078){
    if(i54<0.010533090680837631){
     s0+=4847.0;
     s1+=1112.0;
    } else {
     s0+=680.0;
     s1+=2200.0;
    }
   } else {
    if(i0<6.854534149169922e-06){
     s0+=19410.0;
     s1+=448.0;
    } else {
     s0+=3358.0;
     s1+=1438.0;
    }
   }
  }
 } else {
  if(i21<0.0003007054328918457){
   if(i51<-0.000276729348115623){
    if(i53<-3.915945399057819e-06){
     s0+=29.0;
     s1+=836.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i61<0.0003023685421794653){
     s1+=174.0;
    } else {
     s0+=318.0;
     s1+=18.0;
    }
   }
  } else {
   if(i31<0.002171348314732313){
    if(i49<-4.784291377291083e-05){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=1009.0;
    }
   } else {
    s1+=3825.0;
   }
  }
 }
} else {
 if(i24<1.107046127319336){
  if(i53<-1.8136441212845966e-05){
   if(i49<-5.499509279616177e-05){
    if(i42<0.0169823057949543){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=337.0;
    }
   } else {
    if(i12<1.0046772956848145){
     s0+=65.0;
     s1+=21.0;
    } else {
     s0+=9.0;
     s1+=87.0;
    }
   }
  } else {
   if(i17<0.9955555200576782){
    if(i7<0.014202035963535309){
     s0+=7085.0;
     s1+=115.0;
    } else {
     s0+=534.0;
     s1+=84.0;
    }
   } else {
    if(i18<0.0018991125980392098){
     s0+=151.0;
     s1+=22.0;
    } else {
     s0+=164.0;
     s1+=845.0;
    }
   }
  }
 } else {
  if(i7<0.005307463929057121){
   if(i3<1.003232717514038){
    if(i58<1.0015639066696167){
     s0+=370.0;
     s1+=1.0;
    } else {
     s0+=211.0;
     s1+=43.0;
    }
   } else {
    if(i36<1.1729364395141602){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=150.0;
    }
   }
  } else {
   if(i15<0.007520467042922974){
    if(i66<-4.762432581628673e-08){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=127.0;
     s1+=9.0;
    }
   } else {
    if(i29<1.1644196510314941){
     s0+=22.0;
    } else {
     s0+=104.0;
     s1+=10827.0;
    }
   }
  }
 }
}
if(i10<1.017686367034912){
 if(i2<0.0010584592819213867){
  if(i15<0.21268728375434875){
   if(i70<0.02372467890381813){
    if(i68<0.13498246669769287){
     s0+=104875.0;
     s1+=3683.0;
    } else {
     s0+=7945.0;
     s1+=1303.0;
    }
   } else {
    if(i31<0.00455911410972476){
     s0+=703.0;
     s1+=48.0;
    } else {
     s0+=436.0;
     s1+=632.0;
    }
   }
  } else {
   if(i68<0.11538289487361908){
    if(i1<-4.9231250159209594e-05){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=137.0;
     s1+=3.0;
    }
   } else {
    if(i1<1.2962484106537886e-05){
     s0+=19.0;
     s1+=638.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i7<0.0036961911246180534){
   if(i25<1.1180615425109863){
    if(i31<0.00021627548267133534){
     s0+=1.0;
    } else {
     s1+=388.0;
    }
   } else {
    if(i34<0.002569166012108326){
     s0+=1058.0;
    } else {
     s0+=5.0;
     s1+=62.0;
    }
   }
  } else {
   if(i50<1.0009024143218994){
    if(i35<1.257047176361084){
     s0+=176.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i15<0.0003789663314819336){
     s0+=28.0;
     s1+=28.0;
    } else {
     s0+=82.0;
     s1+=3314.0;
    }
   }
  }
 }
} else {
 if(i49<-1.1512915079947561e-05){
  if(i35<1.170027494430542){
   if(i25<1.1180615425109863){
    s1+=1503.0;
   } else {
    if(i9<1.0162644386291504){
     s0+=757.0;
     s1+=319.0;
    } else {
     s0+=1.0;
     s1+=308.0;
    }
   }
  } else {
   if(i27<1.1076258420944214){
    if(i10<1.0248258113861084){
     s0+=60.0;
     s1+=16.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i27<1.134283423423767){
     s0+=26.0;
     s1+=523.0;
    } else {
     s0+=1.0;
     s1+=11083.0;
    }
   }
  }
 } else {
  if(i23<0.00476831803098321){
   if(i18<0.0026225647889077663){
    if(i47<1.0007319450378418){
     s0+=433.0;
    } else {
     s0+=56.0;
     s1+=13.0;
    }
   } else {
    if(i32<0.0016550940927118063){
     s1+=11.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i8<1.0056614875793457){
    s1+=11.0;
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i56<1.1133661270141602){
 if(i9<1.0100631713867188){
  if(i32<0.0007171216420829296){
   if(i2<0.0012192726135253906){
    if(i49<-1.8805052604875527e-05){
     s0+=166.0;
     s1+=69.0;
    } else {
     s0+=80289.0;
     s1+=492.0;
    }
   } else {
    if(i58<1.003820538520813){
     s0+=4.0;
     s1+=178.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i12<0.9982701539993286){
    if(i4<-0.00015312433242797852){
     s0+=17957.0;
     s1+=134.0;
    } else {
     s0+=2807.0;
     s1+=363.0;
    }
   } else {
    if(i24<1.1087288856506348){
     s0+=11849.0;
     s1+=4559.0;
    } else {
     s0+=718.0;
     s1+=1874.0;
    }
   }
  }
 } else {
  if(i9<1.0144740343093872){
   if(i34<0.0012156760785728693){
    if(i62<0.00285947322845459){
     s0+=3.0;
     s1+=1086.0;
    } else {
     s0+=31.0;
     s1+=5.0;
    }
   } else {
    if(i60<-0.0011538723483681679){
     s0+=96.0;
     s1+=450.0;
    } else {
     s0+=1361.0;
     s1+=143.0;
    }
   }
  } else {
   if(i53<-7.687309698667377e-05){
    s0+=7.0;
   } else {
    if(i18<0.0009641704382374883){
     s0+=67.0;
     s1+=129.0;
    } else {
     s0+=15.0;
     s1+=5266.0;
    }
   }
  }
 }
} else {
 if(i7<0.0050637200474739075){
  if(i49<-4.455907765077427e-05){
   if(i15<0.09457308053970337){
    s0+=2.0;
   } else {
    s1+=141.0;
   }
  } else {
   if(i47<1.0007860660552979){
    s0+=732.0;
   } else {
    if(i65<-0.0007626361912116408){
     s0+=10.0;
     s1+=23.0;
    } else {
     s0+=410.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i4<-0.0009246766567230225){
   if(i62<0.00017383694648742676){
    s1+=10.0;
   } else {
    s0+=45.0;
   }
  } else {
   if(i23<0.00208652438595891){
    if(i31<0.001091760233975947){
     s1+=10.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i3<0.996829628944397){
     s0+=23.0;
     s1+=115.0;
    } else {
     s0+=25.0;
     s1+=9113.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i7<0.014062054455280304){
  if(i7<0.0036453751381486654){
   if(i44<1.0070937871932983){
    if(i34<0.0005672426195815206){
     s0+=25544.0;
     s1+=913.0;
    } else {
     s0+=64349.0;
     s1+=246.0;
    }
   } else {
    if(i2<0.0018926262855529785){
     s0+=329.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=100.0;
    }
   }
  } else {
   if(i2<-0.00025731325149536133){
    if(i50<1.0036592483520508){
     s0+=21649.0;
     s1+=746.0;
    } else {
     s0+=212.0;
     s1+=160.0;
    }
   } else {
    if(i50<1.0000419616699219){
     s0+=984.0;
     s1+=4.0;
    } else {
     s0+=1052.0;
     s1+=4509.0;
    }
   }
  }
 } else {
  if(i0<-1.7940998077392578e-05){
   if(i39<0.05293911695480347){
    if(i20<0.05988872051239014){
     s0+=723.0;
     s1+=15.0;
    } else {
     s0+=29.0;
     s1+=53.0;
    }
   } else {
    if(i16<-0.005555570125579834){
     s0+=60.0;
     s1+=66.0;
    } else {
     s0+=4.0;
     s1+=264.0;
    }
   }
  } else {
   if(i24<1.052932858467102){
    if(i25<1.4449632167816162){
     s0+=122.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=47.0;
    }
   } else {
    if(i11<0.9359695315361023){
     s0+=77.0;
     s1+=137.0;
    } else {
     s0+=15.0;
     s1+=2480.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013938674237579107){
  if(i5<4.8279762268066406e-05){
   if(i70<0.016024339944124222){
    if(i36<1.143596887588501){
     s0+=151.0;
     s1+=8.0;
    } else {
     s0+=311.0;
    }
   } else {
    if(i59<8.731750131119043e-05){
     s0+=23.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i16<0.0017053484916687012){
    if(i25<1.1028293371200562){
     s1+=56.0;
    } else {
     s0+=126.0;
    }
   } else {
    s1+=458.0;
   }
  }
 } else {
  if(i7<0.003240159247070551){
   if(i37<-2.9691431336686946e-05){
    if(i69<0.0001111197707359679){
     s0+=1.0;
     s1+=81.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i36<1.0934572219848633){
     s1+=38.0;
    } else {
     s0+=304.0;
     s1+=20.0;
    }
   }
  } else {
   if(i55<-7.472720881196437e-06){
    s0+=31.0;
   } else {
    if(i41<1.0214693546295166){
     s0+=153.0;
     s1+=2093.0;
    } else {
     s0+=67.0;
     s1+=12010.0;
    }
   }
  }
 }
}
if(i4<0.0005734562873840332){
 if(i1<-8.161991718225181e-05){
  if(i39<0.07159703969955444){
   if(i24<1.0970628261566162){
    if(i35<1.0947699546813965){
     s1+=20.0;
    } else {
     s0+=663.0;
     s1+=15.0;
    }
   } else {
    if(i53<-1.524173239886295e-05){
     s1+=29.0;
    } else {
     s0+=62.0;
     s1+=53.0;
    }
   }
  } else {
   if(i36<1.1434736251831055){
    if(i35<1.0881752967834473){
     s1+=30.0;
    } else {
     s0+=49.0;
     s1+=3.0;
    }
   } else {
    if(i58<1.0092225074768066){
     s0+=17.0;
     s1+=803.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i36<1.0903575420379639){
   if(i50<1.0001869201660156){
    if(i36<1.055753469467163){
     s0+=16338.0;
     s1+=60.0;
    } else {
     s0+=3840.0;
     s1+=631.0;
    }
   } else {
    if(i23<0.00022977319895289838){
     s0+=6771.0;
     s1+=54.0;
    } else {
     s0+=731.0;
     s1+=2166.0;
    }
   }
  } else {
   if(i22<0.20406660437583923){
    if(i32<0.0008322895737364888){
     s0+=57969.0;
     s1+=203.0;
    } else {
     s0+=23094.0;
     s1+=930.0;
    }
   } else {
    if(i75<0.13586997985839844){
     s0+=37.0;
     s1+=154.0;
    } else {
     s0+=232.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i40<0.0019509218400344253){
  if(i43<0.001012215274386108){
   if(i23<0.0002495512890163809){
    s0+=1417.0;
   } else {
    if(i25<1.116804838180542){
     s1+=2771.0;
    } else {
     s0+=239.0;
     s1+=16.0;
    }
   }
  } else {
   if(i57<0.0005571279907599092){
    if(i31<0.0012263788376003504){
     s0+=2.0;
     s1+=78.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i25<1.116804838180542){
     s1+=51.0;
    } else {
     s0+=3274.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i9<0.9955812692642212){
   if(i61<0.0027736094780266285){
    if(i27<1.1076748371124268){
     s0+=648.0;
     s1+=100.0;
    } else {
     s0+=404.0;
     s1+=531.0;
    }
   } else {
    if(i9<0.9732885360717773){
     s0+=153.0;
     s1+=75.0;
    } else {
     s0+=102.0;
     s1+=1088.0;
    }
   }
  } else {
   if(i35<1.1277275085449219){
    if(i23<0.0012309442972764373){
     s1+=35.0;
    } else {
     s0+=249.0;
     s1+=1.0;
    }
   } else {
    if(i22<0.09451109170913696){
     s0+=123.0;
     s1+=522.0;
    } else {
     s0+=54.0;
     s1+=13903.0;
    }
   }
  }
 }
}
if(i4<0.0006107091903686523){
 if(i57<0.010889653116464615){
  if(i18<0.0017233858816325665){
   if(i7<0.0016272536013275385){
    if(i23<0.0019639551173895597){
     s0+=56310.0;
     s1+=141.0;
    } else {
     s0+=2647.0;
     s1+=85.0;
    }
   } else {
    if(i23<0.0002786156255751848){
     s0+=4480.0;
     s1+=477.0;
    } else {
     s0+=25821.0;
     s1+=272.0;
    }
   }
  } else {
   if(i2<-0.00047257542610168457){
    if(i39<0.1862984001636505){
     s0+=17406.0;
     s1+=509.0;
    } else {
     s0+=77.0;
     s1+=106.0;
    }
   } else {
    if(i29<1.0533521175384521){
     s0+=1377.0;
    } else {
     s0+=1536.0;
     s1+=3183.0;
    }
   }
  }
 } else {
  if(i51<-0.0004650788614526391){
   if(i24<1.6811659336090088){
    if(i59<-0.00015110778622329235){
     s0+=5.0;
     s1+=52.0;
    } else {
     s1+=423.0;
    }
   } else {
    s0+=6.0;
   }
  } else {
   if(i5<1.233816146850586e-05){
    if(i23<0.01672791689634323){
     s0+=566.0;
     s1+=64.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i10<0.9211815595626831){
     s0+=44.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i19<1.0170689821243286){
  if(i18<0.0019437968730926514){
   if(i46<-1.151187279901933e-05){
    if(i48<2.1219253540039062e-05){
     s0+=44.0;
     s1+=607.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i45<0.0026477056089788675){
     s0+=3242.0;
     s1+=43.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i54<0.04738462343811989){
    if(i31<0.0012425316963344812){
     s0+=288.0;
     s1+=1168.0;
    } else {
     s0+=2164.0;
     s1+=1149.0;
    }
   } else {
    if(i24<1.0529165267944336){
     s0+=232.0;
     s1+=45.0;
    } else {
     s0+=158.0;
     s1+=3654.0;
    }
   }
  }
 } else {
  if(i55<-6.039870640961453e-06){
   if(i36<1.2057459354400635){
    s0+=89.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i7<0.0015505452174693346){
    if(i16<0.0014339089393615723){
     s0+=41.0;
    } else {
     s0+=2.0;
     s1+=77.0;
    }
   } else {
    if(i69<1.3097418559482321e-05){
     s0+=24.0;
     s1+=12045.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i19<1.014317512512207){
 if(i2<0.0009762048721313477){
  if(i39<0.2009982466697693){
   if(i1<-8.67880298756063e-05){
    if(i15<0.045153290033340454){
     s0+=841.0;
     s1+=144.0;
    } else {
     s0+=149.0;
     s1+=966.0;
    }
   } else {
    if(i7<0.0036593035329133272){
     s0+=89589.0;
     s1+=1031.0;
    } else {
     s0+=23430.0;
     s1+=3958.0;
    }
   }
  } else {
   if(i49<-9.185604540107306e-06){
    if(i40<0.002120974939316511){
     s0+=25.0;
    } else {
     s0+=39.0;
     s1+=938.0;
    }
   } else {
    if(i74<0.05323919653892517){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=124.0;
    }
   }
  }
 } else {
  if(i68<0.13075639307498932){
   if(i25<1.1180615425109863){
    if(i25<1.057311773300171){
     s0+=48.0;
    } else {
     s1+=847.0;
    }
   } else {
    if(i25<1.1979892253875732){
     s0+=1342.0;
    } else {
     s0+=27.0;
     s1+=602.0;
    }
   }
  } else {
   if(i20<0.027371693402528763){
    if(i63<0.3151547312736511){
     s0+=50.0;
     s1+=155.0;
    } else {
     s0+=36.0;
     s1+=4.0;
    }
   } else {
    if(i10<0.8861821889877319){
     s0+=15.0;
     s1+=75.0;
    } else {
     s0+=11.0;
     s1+=2017.0;
    }
   }
  }
 }
} else {
 if(i9<1.0143442153930664){
  if(i36<1.0958912372589111){
   s1+=543.0;
  } else {
   if(i7<0.005635660607367754){
    if(i7<0.004548420198261738){
     s0+=903.0;
     s1+=23.0;
    } else {
     s0+=98.0;
     s1+=34.0;
    }
   } else {
    if(i37<0.000428212370024994){
     s0+=14.0;
     s1+=841.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i13<0.0008069879258982837){
   if(i5<0.00028568506240844727){
    if(i5<2.5331974029541016e-06){
     s0+=3.0;
     s1+=38.0;
    } else {
     s1+=11806.0;
    }
   } else {
    s0+=4.0;
   }
  } else {
   s0+=63.0;
  }
 }
}
if(i4<0.0005905032157897949){
 if(i8<1.0135915279388428){
  if(i22<0.20535829663276672){
   if(i18<0.0016681744018569589){
    if(i36<1.0776758193969727){
     s0+=22140.0;
     s1+=627.0;
    } else {
     s0+=65777.0;
     s1+=244.0;
    }
   } else {
    if(i34<0.0010872932616621256){
     s0+=1965.0;
     s1+=2188.0;
    } else {
     s0+=19457.0;
     s1+=1125.0;
    }
   }
  } else {
   if(i53<-3.5545729133446002e-06){
    if(i54<0.044492363929748535){
     s0+=47.0;
     s1+=30.0;
    } else {
     s0+=11.0;
     s1+=394.0;
    }
   } else {
    if(i20<0.038675591349601746){
     s0+=150.0;
     s1+=5.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i12<0.9989806413650513){
   if(i37<0.00012332870392128825){
    if(i65<-0.00417375098913908){
     s1+=18.0;
    } else {
     s0+=274.0;
     s1+=31.0;
    }
   } else {
    if(i25<1.3973886966705322){
     s0+=3.0;
    } else {
     s1+=61.0;
    }
   }
  } else {
   if(i20<0.01383372861891985){
    if(i36<1.087432861328125){
     s1+=2.0;
    } else {
     s0+=86.0;
    }
   } else {
    if(i1<-3.159130210406147e-05){
     s1+=578.0;
    } else {
     s0+=36.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i20<0.007953254505991936){
  if(i2<0.0013666749000549316){
   if(i43<0.0007389404927380383){
    if(i3<1.0052261352539062){
     s0+=1368.0;
     s1+=105.0;
    } else {
     s0+=58.0;
     s1+=265.0;
    }
   } else {
    if(i51<-0.0008927456219680607){
     s0+=15.0;
     s1+=31.0;
    } else {
     s0+=2423.0;
     s1+=16.0;
    }
   }
  } else {
   if(i23<0.0011145739117637277){
    s1+=1176.0;
   } else {
    if(i40<0.0020306699443608522){
     s0+=740.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i10<1.0174247026443481){
   if(i24<1.0907866954803467){
    if(i4<0.0017200708389282227){
     s0+=1131.0;
     s1+=876.0;
    } else {
     s0+=55.0;
     s1+=405.0;
    }
   } else {
    if(i25<1.1748318672180176){
     s0+=135.0;
     s1+=10.0;
    } else {
     s0+=314.0;
     s1+=3292.0;
    }
   }
  } else {
   if(i1<-6.061925523681566e-05){
    if(i55<-7.908680345281027e-06){
     s0+=16.0;
    } else {
     s0+=46.0;
     s1+=12018.0;
    }
   } else {
    if(i66<7.432884103764081e-07){
     s0+=92.0;
     s1+=413.0;
    } else {
     s0+=74.0;
     s1+=12.0;
    }
   }
  }
 }
}
if(i8<1.0136051177978516){
 if(i0<6.502866744995117e-05){
  if(i20<0.06171708181500435){
   if(i18<0.0017335471929982305){
    if(i36<1.0776758193969727){
     s0+=23076.0;
     s1+=711.0;
    } else {
     s0+=68255.0;
     s1+=282.0;
    }
   } else {
    if(i23<0.0009248446440324187){
     s0+=2326.0;
     s1+=2656.0;
    } else {
     s0+=19806.0;
     s1+=1847.0;
    }
   }
  } else {
   if(i3<0.9885257482528687){
    if(i33<1.0986816883087158){
     s0+=369.0;
     s1+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i42<0.14177453517913818){
     s0+=58.0;
     s1+=65.0;
    } else {
     s0+=15.0;
     s1+=920.0;
    }
   }
  }
 } else {
  if(i23<0.0024063470773398876){
   if(i29<1.116804838180542){
    if(i50<1.000910758972168){
     s0+=58.0;
    } else {
     s0+=57.0;
     s1+=820.0;
    }
   } else {
    s0+=1276.0;
   }
  } else {
   if(i3<1.0040912628173828){
    if(i67<-0.012108027935028076){
     s0+=29.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=79.0;
    }
   } else {
    if(i54<0.0007336548296734691){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=37.0;
     s1+=2377.0;
    }
   }
  }
 }
} else {
 if(i1<-7.014039874775335e-05){
  if(i7<0.004952756687998772){
   if(i66<1.1424635886214674e-06){
    if(i55<-5.954260814178269e-06){
     s0+=42.0;
    } else {
     s0+=21.0;
     s1+=616.0;
    }
   } else {
    if(i11<1.0240470170974731){
     s0+=92.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i21<-0.0010037422180175781){
    s0+=3.0;
   } else {
    if(i66<1.7242215108126402e-05){
     s0+=25.0;
     s1+=12578.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i13<0.0003417887492105365){
   if(i25<1.2882157564163208){
    if(i49<-9.47209628066048e-06){
     s0+=15.0;
     s1+=1199.0;
    } else {
     s0+=110.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.0007559061050415039){
     s0+=329.0;
     s1+=31.0;
    } else {
     s0+=3.0;
     s1+=52.0;
    }
   }
  } else {
   if(i54<0.059542249888181686){
    s0+=558.0;
   } else {
    s1+=11.0;
   }
  }
 }
}
if(i12<1.0046367645263672){
 if(i9<1.0075563192367554){
  if(i20<0.06171819567680359){
   if(i32<0.0007213441422209144){
    if(i4<0.0009496212005615234){
     s0+=79225.0;
     s1+=546.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i4<-0.00012999773025512695){
     s0+=21412.0;
     s1+=334.0;
    } else {
     s0+=10060.0;
     s1+=4074.0;
    }
   }
  } else {
   if(i21<-0.0008632242679595947){
    if(i38<0.0842035710811615){
     s0+=358.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=29.0;
    }
   } else {
    if(i56<0.8754096031188965){
     s0+=15.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=818.0;
    }
   }
  }
 } else {
  if(i0<3.1054019927978516e-05){
   if(i37<2.447914084768854e-05){
    if(i23<0.000306330737657845){
     s1+=13.0;
    } else {
     s0+=481.0;
     s1+=2.0;
    }
   } else {
    if(i0<-4.076957702636719e-05){
     s0+=48.0;
    } else {
     s0+=12.0;
     s1+=239.0;
    }
   }
  } else {
   if(i13<0.000714586756657809){
    if(i53<-4.977555818186374e-06){
     s0+=41.0;
     s1+=1949.0;
    } else {
     s0+=143.0;
     s1+=2.0;
    }
   } else {
    s0+=191.0;
   }
  }
 }
} else {
 if(i7<0.002786189317703247){
  if(i12<1.0110281705856323){
   if(i36<1.0900044441223145){
    if(i31<0.0002476265071891248){
     s0+=372.0;
    } else {
     s1+=92.0;
    }
   } else {
    s0+=2428.0;
   }
  } else {
   if(i13<0.0008984197629615664){
    if(i53<-8.866821735864505e-05){
     s0+=2.0;
    } else {
     s1+=368.0;
    }
   } else {
    s0+=40.0;
   }
  }
 } else {
  if(i24<1.0262643098831177){
   if(i6<1.006075382232666){
    if(i13<0.0006968611851334572){
     s0+=278.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i27<1.434808373451233){
     s0+=2.0;
     s1+=28.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i0<8.541345596313477e-05){
    if(i38<0.1764669120311737){
     s0+=848.0;
     s1+=1236.0;
    } else {
     s0+=46.0;
     s1+=1016.0;
    }
   } else {
    if(i13<0.0007243318250402808){
     s0+=80.0;
     s1+=13797.0;
    } else {
     s0+=189.0;
    }
   }
  }
 }
}
if(i2<0.0009605884552001953){
 if(i38<0.22026437520980835){
  if(i9<1.006910800933838){
   if(i7<0.0037173153832554817){
    if(i32<0.0005450347671285272){
     s0+=64872.0;
     s1+=142.0;
    } else {
     s0+=23801.0;
     s1+=971.0;
    }
   } else {
    if(i3<0.9988394975662231){
     s0+=21401.0;
     s1+=789.0;
    } else {
     s0+=2134.0;
     s1+=3681.0;
    }
   }
  } else {
   if(i50<1.0029456615447998){
    if(i37<1.6086009054561146e-05){
     s0+=796.0;
     s1+=444.0;
    } else {
     s0+=25.0;
     s1+=674.0;
    }
   } else {
    if(i14<1.0439414978027344){
     s0+=1079.0;
     s1+=13.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i32<0.0007445080555044115){
   if(i30<0.0003598928451538086){
    if(i30<0.00016391277313232422){
     s0+=152.0;
    } else {
     s0+=12.0;
     s1+=2.0;
    }
   } else {
    if(i1<-4.8950107156997547e-05){
     s1+=9.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i42<0.0173141248524189){
    if(i72<1.0501086711883545){
     s0+=21.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i45<0.0022693476639688015){
     s0+=25.0;
     s1+=45.0;
    } else {
     s0+=29.0;
     s1+=1316.0;
    }
   }
  }
 }
} else {
 if(i31<0.0024050595238804817){
  if(i25<1.1180615425109863){
   if(i36<1.0529288053512573){
    s0+=65.0;
   } else {
    s1+=2334.0;
   }
  } else {
   if(i10<0.9965742230415344){
    s1+=1.0;
   } else {
    s0+=1912.0;
   }
  }
 } else {
  if(i15<0.009231925010681152){
   if(i2<0.002047598361968994){
    if(i50<1.003115177154541){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    s1+=43.0;
   }
  } else {
   if(i22<0.09436097741127014){
    if(i13<0.0004084642860107124){
     s0+=5.0;
     s1+=467.0;
    } else {
     s0+=44.0;
     s1+=76.0;
    }
   } else {
    if(i8<0.8718807101249695){
     s0+=2.0;
    } else {
     s0+=15.0;
     s1+=13383.0;
    }
   }
  }
 }
}
if(i3<1.003865361213684){
 if(i26<1.0182666778564453){
  if(i7<0.0038967791479080915){
   if(i40<0.0006082020699977875){
    if(i26<0.9956917762756348){
     s0+=2967.0;
     s1+=564.0;
    } else {
     s0+=23191.0;
     s1+=389.0;
    }
   } else {
    if(i65<0.0010225786827504635){
     s0+=58308.0;
     s1+=68.0;
    } else {
     s0+=4882.0;
     s1+=156.0;
    }
   }
  } else {
   if(i3<0.9989069700241089){
    if(i15<0.2054118812084198){
     s0+=20269.0;
     s1+=728.0;
    } else {
     s0+=59.0;
     s1+=161.0;
    }
   } else {
    if(i50<1.0000442266464233){
     s0+=502.0;
     s1+=21.0;
    } else {
     s0+=1122.0;
     s1+=3312.0;
    }
   }
  }
 } else {
  if(i15<0.21229785680770874){
   if(i35<1.0905578136444092){
    s1+=308.0;
   } else {
    if(i37<2.825883711921051e-05){
     s0+=457.0;
     s1+=10.0;
    } else {
     s0+=437.0;
     s1+=298.0;
    }
   }
  } else {
   if(i7<0.005653864704072475){
    if(i43<0.00407039001584053){
     s1+=11.0;
    } else {
     s0+=54.0;
     s1+=1.0;
    }
   } else {
    if(i21<-0.0006003975868225098){
     s0+=1.0;
     s1+=31.0;
    } else {
     s1+=613.0;
    }
   }
  }
 }
} else {
 if(i29<1.176405668258667){
  if(i30<0.0005137622356414795){
   if(i29<1.116804838180542){
    if(i23<0.0009796405211091042){
     s1+=2708.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i43<0.002426361432299018){
     s0+=342.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   s0+=3609.0;
  }
 } else {
  if(i40<0.001931892242282629){
   if(i33<1.0910239219665527){
    s0+=141.0;
   } else {
    s1+=14.0;
   }
  } else {
   if(i21<-0.00018787384033203125){
    if(i15<0.12084001302719116){
     s0+=113.0;
     s1+=202.0;
    } else {
     s0+=5.0;
     s1+=522.0;
    }
   } else {
    if(i43<0.0003205387620255351){
     s0+=5.0;
    } else {
     s0+=79.0;
     s1+=14184.0;
    }
   }
  }
 }
}
if(i14<1.018029808998108){
 if(i1<-9.087425860343501e-05){
  if(i13<0.0007020288612693548){
   if(i9<0.9739477634429932){
    if(i71<0.07336583733558655){
     s0+=743.0;
     s1+=102.0;
    } else {
     s0+=14.0;
     s1+=104.0;
    }
   } else {
    if(i55<-1.545356099086348e-05){
     s0+=66.0;
    } else {
     s0+=131.0;
     s1+=3852.0;
    }
   }
  } else {
   s0+=199.0;
  }
 } else {
  if(i5<1.5079975128173828e-05){
   if(i34<0.0010450929403305054){
    if(i40<0.00017313507851213217){
     s0+=14305.0;
     s1+=55.0;
    } else {
     s0+=15778.0;
     s1+=2338.0;
    }
   } else {
    if(i59<0.00028216009377501905){
     s0+=61262.0;
     s1+=252.0;
    } else {
     s0+=14004.0;
     s1+=619.0;
    }
   }
  } else {
   if(i7<0.003986856434494257){
    if(i16<0.0012870430946350098){
     s0+=6473.0;
     s1+=131.0;
    } else {
     s0+=432.0;
     s1+=375.0;
    }
   } else {
    if(i16<-0.0013983845710754395){
     s0+=1468.0;
     s1+=583.0;
    } else {
     s0+=368.0;
     s1+=2240.0;
    }
   }
  }
 }
} else {
 if(i49<-9.178902473649941e-06){
  if(i3<1.0016777515411377){
   if(i7<0.007067870814353228){
    if(i29<1.2004961967468262){
     s0+=27.0;
     s1+=21.0;
    } else {
     s0+=280.0;
     s1+=6.0;
    }
   } else {
    if(i0<7.027387619018555e-05){
     s0+=8.0;
     s1+=259.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i55<-6.622164619329851e-06){
    s0+=131.0;
   } else {
    if(i10<1.023425579071045){
     s0+=303.0;
     s1+=1228.0;
    } else {
     s0+=103.0;
     s1+=12139.0;
    }
   }
  }
 } else {
  if(i47<1.0007240772247314){
   s0+=387.0;
  } else {
   if(i52<0.03811854124069214){
    if(i70<-0.005150358192622662){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.0002105236053466797){
     s1+=8.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i16<0.001321345567703247){
 if(i41<1.0235999822616577){
  if(i7<0.013988800346851349){
   if(i32<0.0007155428756959736){
    if(i44<1.0066852569580078){
     s0+=80263.0;
     s1+=535.0;
    } else {
     s0+=168.0;
     s1+=52.0;
    }
   } else {
    if(i3<0.9980652332305908){
     s0+=22741.0;
     s1+=411.0;
    } else {
     s0+=9990.0;
     s1+=4597.0;
    }
   }
  } else {
   if(i33<1.0331685543060303){
    if(i67<-0.012266427278518677){
     s0+=916.0;
     s1+=129.0;
    } else {
     s0+=44.0;
     s1+=110.0;
    }
   } else {
    if(i66<6.863668659207178e-06){
     s0+=42.0;
     s1+=1855.0;
    } else {
     s0+=78.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i1<-5.421973764896393e-05){
   if(i38<0.10590454936027527){
    if(i9<1.004152774810791){
     s0+=42.0;
    } else {
     s0+=30.0;
     s1+=62.0;
    }
   } else {
    if(i20<0.025345560163259506){
     s0+=57.0;
     s1+=271.0;
    } else {
     s0+=8.0;
     s1+=2114.0;
    }
   }
  } else {
   if(i0<1.33514404296875e-05){
    if(i30<9.566545486450195e-05){
     s0+=368.0;
     s1+=1.0;
    } else {
     s0+=277.0;
     s1+=96.0;
    }
   } else {
    if(i13<0.0003432555531617254){
     s0+=72.0;
     s1+=359.0;
    } else {
     s0+=162.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i9<1.0139331817626953){
  if(i34<0.0012328955344855785){
   if(i50<1.0006746053695679){
    s0+=44.0;
   } else {
    s1+=904.0;
   }
  } else {
   if(i27<1.1825388669967651){
    if(i10<0.9986577033996582){
     s0+=3.0;
     s1+=111.0;
    } else {
     s0+=1034.0;
     s1+=88.0;
    }
   } else {
    s1+=291.0;
   }
  }
 } else {
  if(i7<0.0016247158637270331){
   if(i12<1.0110441446304321){
    if(i61<0.00020622782176360488){
     s1+=7.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i55<-5.142278496350627e-06){
     s0+=1.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i13<0.0009714859770610929){
    if(i29<1.7041046619415283){
     s0+=6.0;
     s1+=12033.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
}
if(i3<1.00374174118042){
 if(i22<0.2054835557937622){
  if(i7<0.003604619763791561){
   if(i18<0.0010455121519044042){
    if(i29<1.175206184387207){
     s0+=64317.0;
     s1+=141.0;
    } else {
     s0+=3731.0;
     s1+=92.0;
    }
   } else {
    if(i40<0.0005601411103270948){
     s0+=3051.0;
     s1+=663.0;
    } else {
     s0+=16053.0;
     s1+=162.0;
    }
   }
  } else {
   if(i40<0.001098365057259798){
    if(i58<0.9998518824577332){
     s0+=2878.0;
     s1+=85.0;
    } else {
     s0+=962.0;
     s1+=1966.0;
    }
   } else {
    if(i17<0.9967994689941406){
     s0+=17403.0;
     s1+=881.0;
    } else {
     s0+=3274.0;
     s1+=1508.0;
    }
   }
  }
 } else {
  if(i18<0.0027292491868138313){
   if(i53<-5.147830961504951e-06){
    if(i23<0.004051387310028076){
     s0+=7.0;
     s1+=37.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i18<0.0026165195740759373){
     s0+=190.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   }
  } else {
   if(i6<1.0059232711791992){
    if(i51<-0.00023416793555952609){
     s0+=12.0;
     s1+=983.0;
    } else {
     s0+=13.0;
     s1+=111.0;
    }
   } else {
    if(i74<0.18177556991577148){
     s1+=10.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i20<0.0077141160145401955){
  if(i13<0.0002618989092297852){
   if(i53<-5.6670028243388515e-06){
    if(i19<0.9888832569122314){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=2019.0;
    }
   } else {
    if(i60<-0.0007471716962754726){
     s1+=1.0;
    } else {
     s0+=93.0;
    }
   }
  } else {
   if(i17<1.0164861679077148){
    if(i40<0.004802364856004715){
     s0+=3620.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i19<1.0138843059539795){
     s0+=1.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i40<0.0019504593219608068){
   if(i47<1.0009270906448364){
    if(i40<0.001331541920080781){
     s0+=7.0;
     s1+=969.0;
    } else {
     s0+=127.0;
     s1+=159.0;
    }
   } else {
    if(i44<1.00930917263031){
     s0+=342.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i27<1.0782527923583984){
    if(i46<6.10630104347365e-06){
     s1+=24.0;
    } else {
     s0+=30.0;
     s1+=3.0;
    }
   } else {
    if(i3<1.0066475868225098){
     s0+=136.0;
     s1+=2023.0;
    } else {
     s0+=11.0;
     s1+=12612.0;
    }
   }
  }
 }
}
if(i8<1.0136051177978516){
 if(i0<6.335973739624023e-05){
  if(i42<0.1835160255432129){
   if(i45<0.0020210319198668003){
    if(i11<1.008318543434143){
     s0+=100772.0;
     s1+=3039.0;
    } else {
     s0+=2523.0;
     s1+=686.0;
    }
   } else {
    if(i22<0.1573646366596222){
     s0+=9288.0;
     s1+=1102.0;
    } else {
     s0+=537.0;
     s1+=847.0;
    }
   }
  } else {
   if(i15<0.05435675382614136){
    if(i3<0.9930805563926697){
     s0+=191.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i27<1.1069575548171997){
     s0+=13.0;
    } else {
     s0+=13.0;
     s1+=766.0;
    }
   }
  }
 } else {
  if(i25<1.1979892253875732){
   if(i43<0.001101180212572217){
    if(i6<1.0023446083068848){
     s0+=37.0;
     s1+=8.0;
    } else {
     s0+=80.0;
     s1+=832.0;
    }
   } else {
    if(i36<1.0880210399627686){
     s1+=12.0;
    } else {
     s0+=1453.0;
    }
   }
  } else {
   if(i3<1.0053987503051758){
    if(i24<1.1273012161254883){
     s0+=77.0;
     s1+=87.0;
    } else {
     s0+=11.0;
     s1+=222.0;
    }
   } else {
    if(i15<0.07505813241004944){
     s0+=25.0;
     s1+=220.0;
    } else {
     s0+=5.0;
     s1+=1914.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007036929600872099){
  if(i2<0.0002682209014892578){
   if(i53<-2.962033249787055e-06){
    if(i47<1.001997709274292){
     s0+=32.0;
     s1+=281.0;
    } else {
     s0+=175.0;
     s1+=31.0;
    }
   } else {
    if(i18<0.0026054379995912313){
     s0+=222.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.7041046619415283){
    if(i18<0.000980279641225934){
     s0+=93.0;
     s1+=234.0;
    } else {
     s0+=115.0;
     s1+=14284.0;
    }
   } else {
    s0+=27.0;
   }
  }
 } else {
  s0+=573.0;
 }
}
if(i9<1.0125960111618042){
 if(i15<0.1981150507926941){
  if(i0<6.276369094848633e-05){
   if(i1<-8.108161273412406e-05){
    if(i33<1.068043828010559){
     s0+=1073.0;
     s1+=216.0;
    } else {
     s0+=117.0;
     s1+=776.0;
    }
   } else {
    if(i4<0.00029343366622924805){
     s0+=102587.0;
     s1+=2540.0;
    } else {
     s0+=10038.0;
     s1+=2393.0;
    }
   }
  } else {
   if(i18<0.0018716917838901281){
    if(i46<-1.2551175132102799e-05){
     s0+=67.0;
     s1+=268.0;
    } else {
     s0+=946.0;
     s1+=18.0;
    }
   } else {
    if(i6<1.0020883083343506){
     s0+=207.0;
     s1+=3.0;
    } else {
     s0+=595.0;
     s1+=1873.0;
    }
   }
  }
 } else {
  if(i18<0.002494803396984935){
   if(i1<-5.278898970573209e-05){
    if(i35<1.1312987804412842){
     s0+=2.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i56<1.0795912742614746){
     s0+=32.0;
     s1+=7.0;
    } else {
     s0+=437.0;
     s1+=4.0;
    }
   }
  } else {
   if(i27<1.1169729232788086){
    if(i55<-1.8941943835670827e-06){
     s0+=17.0;
     s1+=62.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   } else {
    if(i12<0.9988481998443604){
     s0+=31.0;
     s1+=270.0;
    } else {
     s0+=35.0;
     s1+=2586.0;
    }
   }
  }
 }
} else {
 if(i55<-7.426610864058603e-06){
  s0+=190.0;
 } else {
  if(i23<0.0025544380769133568){
   if(i23<0.0011350312270224094){
    if(i44<0.9998176693916321){
     s0+=14.0;
    } else {
     s1+=1491.0;
    }
   } else {
    if(i29<1.1767785549163818){
     s0+=183.0;
    } else {
     s0+=39.0;
     s1+=53.0;
    }
   }
  } else {
   if(i7<0.0018760529346764088){
    if(i1<-7.61463597882539e-05){
     s1+=52.0;
    } else {
     s0+=18.0;
    }
   } else {
    s1+=11535.0;
   }
  }
 }
}
if(i6<1.0026335716247559){
 if(i7<0.0040462082251906395){
  if(i36<1.0905301570892334){
   if(i59<0.00011864614498335868){
    if(i9<1.0076937675476074){
     s0+=21798.0;
     s1+=270.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i42<0.023907627910375595){
     s0+=1574.0;
     s1+=697.0;
    } else {
     s0+=2695.0;
     s1+=94.0;
    }
   }
  } else {
   if(i45<0.001836702460423112){
    if(i23<0.0005814202013425529){
     s0+=3578.0;
     s1+=57.0;
    } else {
     s0+=56182.0;
     s1+=63.0;
    }
   } else {
    if(i47<1.0007472038269043){
     s0+=2945.0;
    } else {
     s0+=1596.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i4<-5.1081180572509766e-05){
   if(i15<0.20458927750587463){
    if(i4<-0.00032138824462890625){
     s0+=15298.0;
     s1+=57.0;
    } else {
     s0+=1739.0;
     s1+=234.0;
    }
   } else {
    if(i63<0.07604718953371048){
     s0+=33.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=186.0;
    }
   }
  } else {
   if(i32<0.0011893771588802338){
    if(i41<0.9706287384033203){
     s0+=193.0;
     s1+=119.0;
    } else {
     s0+=84.0;
     s1+=2879.0;
    }
   } else {
    if(i56<1.1181178092956543){
     s0+=2861.0;
     s1+=480.0;
    } else {
     s0+=28.0;
     s1+=426.0;
    }
   }
  }
 }
} else {
 if(i35<1.1714401245117188){
  if(i23<0.0010737174889072776){
   if(i40<0.00021333363838493824){
    if(i37<-1.8295128029421903e-05){
     s1+=2.0;
    } else {
     s0+=708.0;
    }
   } else {
    if(i17<1.0019936561584473){
     s0+=18.0;
    } else {
     s1+=2349.0;
    }
   }
  } else {
   if(i29<1.1822609901428223){
    if(i20<0.023334531113505363){
     s0+=3197.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i46<1.5432447980856523e-05){
     s0+=194.0;
     s1+=953.0;
    } else {
     s0+=772.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i38<0.08309072256088257){
   if(i46<3.2828006624185946e-06){
    if(i37<0.00026503606932237744){
     s1+=257.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i27<1.1165440082550049){
     s0+=375.0;
     s1+=34.0;
    } else {
     s0+=453.0;
     s1+=269.0;
    }
   }
  } else {
   if(i0<4.112720489501953e-06){
    if(i20<0.027608703821897507){
     s0+=122.0;
     s1+=46.0;
    } else {
     s0+=47.0;
     s1+=305.0;
    }
   } else {
    if(i34<0.0029941583052277565){
     s0+=43.0;
     s1+=103.0;
    } else {
     s0+=110.0;
     s1+=13903.0;
    }
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i24<1.1402404308319092){
  if(i5<1.3887882232666016e-05){
   if(i30<7.12275505065918e-05){
    if(i59<0.00018334988271817565){
     s0+=58996.0;
     s1+=279.0;
    } else {
     s0+=16815.0;
     s1+=493.0;
    }
   } else {
    if(i31<0.0010526843834668398){
     s0+=3523.0;
     s1+=1661.0;
    } else {
     s0+=25502.0;
     s1+=714.0;
    }
   }
  } else {
   if(i42<0.014158165082335472){
    if(i18<0.0021213339641690254){
     s0+=4313.0;
     s1+=22.0;
    } else {
     s0+=1242.0;
     s1+=538.0;
    }
   } else {
    if(i23<0.0009514355333521962){
     s0+=80.0;
     s1+=857.0;
    } else {
     s0+=2679.0;
     s1+=1347.0;
    }
   }
  }
 } else {
  if(i60<-0.0015015427488833666){
   if(i1<-4.9990496336249635e-05){
    if(i7<0.006697985343635082){
     s0+=23.0;
     s1+=21.0;
    } else {
     s0+=15.0;
     s1+=1364.0;
    }
   } else {
    if(i50<1.0016181468963623){
     s0+=313.0;
     s1+=2.0;
    } else {
     s0+=60.0;
     s1+=129.0;
    }
   }
  } else {
   if(i52<0.18990372121334076){
    if(i19<1.024507761001587){
     s0+=737.0;
     s1+=28.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i20<0.03203289210796356){
     s0+=48.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=325.0;
    }
   }
  }
 }
} else {
 if(i7<0.003749951720237732){
  if(i16<0.0019306540489196777){
   if(i33<1.0615596771240234){
    if(i55<-3.2019343052525073e-06){
     s0+=157.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=361.0;
    }
   } else {
    if(i13<0.0001536174677312374){
     s0+=7.0;
     s1+=36.0;
    } else {
     s0+=1524.0;
    }
   }
  } else {
   if(i32<0.0027800551615655422){
    s1+=412.0;
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i66<1.3016762750339694e-05){
   if(i50<1.0008533000946045){
    if(i34<0.010701946914196014){
     s0+=160.0;
     s1+=3.0;
    } else {
     s1+=307.0;
    }
   } else {
    if(i16<-0.0022172927856445312){
     s0+=83.0;
     s1+=385.0;
    } else {
     s0+=151.0;
     s1+=15009.0;
    }
   }
  } else {
   if(i13<0.0020353631116449833){
    s1+=13.0;
   } else {
    s0+=67.0;
   }
  }
 }
}
if(i3<1.0038654804229736){
 if(i41<1.0215239524841309){
  if(i1<-0.00010728221968747675){
   if(i20<0.04786209762096405){
    if(i62<-0.0058441162109375){
     s0+=287.0;
     s1+=2.0;
    } else {
     s0+=70.0;
     s1+=92.0;
    }
   } else {
    if(i33<0.9912505149841309){
     s0+=115.0;
     s1+=24.0;
    } else {
     s0+=22.0;
     s1+=776.0;
    }
   }
  } else {
   if(i32<0.0007050713757053018){
    if(i17<0.9986661672592163){
     s0+=28610.0;
     s1+=354.0;
    } else {
     s0+=49785.0;
     s1+=110.0;
    }
   } else {
    if(i2<-0.0005199015140533447){
     s0+=25040.0;
     s1+=630.0;
    } else {
     s0+=7179.0;
     s1+=3525.0;
    }
   }
  }
 } else {
  if(i49<-7.720154826529324e-06){
   if(i58<1.003615140914917){
    if(i18<0.0013181837275624275){
     s0+=53.0;
     s1+=19.0;
    } else {
     s0+=138.0;
     s1+=1000.0;
    }
   } else {
    if(i18<0.003844600636512041){
     s0+=300.0;
     s1+=3.0;
    } else {
     s0+=23.0;
     s1+=145.0;
    }
   }
  } else {
   if(i44<1.0042119026184082){
    if(i44<1.0014194250106812){
     s0+=505.0;
    } else {
     s0+=96.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i20<0.008312854915857315){
  if(i17<1.0141267776489258){
   if(i27<1.0773630142211914){
    if(i34<0.00021104421466588974){
     s0+=645.0;
    } else {
     s0+=84.0;
     s1+=1024.0;
    }
   } else {
    if(i36<1.094508409500122){
     s1+=62.0;
    } else {
     s0+=3014.0;
     s1+=96.0;
    }
   }
  } else {
   if(i66<6.518460395454895e-06){
    if(i13<0.0009500883752480149){
     s0+=1.0;
     s1+=1051.0;
    } else {
     s0+=14.0;
    }
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i42<0.02928983047604561){
   if(i55<-4.980558514944278e-06){
    if(i16<0.002611517906188965){
     s0+=202.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i9<1.0108590126037598){
     s0+=189.0;
     s1+=373.0;
    } else {
     s0+=22.0;
     s1+=2439.0;
    }
   }
  } else {
   if(i35<1.1332385540008545){
    if(i21<-0.0002655982971191406){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=169.0;
    }
   } else {
    if(i27<1.0789777040481567){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=75.0;
     s1+=12407.0;
    }
   }
  }
 }
}
if(i6<1.0026427507400513){
 if(i3<1.0038622617721558){
  if(i22<0.20499524474143982){
   if(i6<0.9995712041854858){
    if(i50<0.9995567798614502){
     s0+=38223.0;
     s1+=53.0;
    } else {
     s0+=16411.0;
     s1+=318.0;
    }
   } else {
    if(i40<0.0009897018317133188){
     s0+=14105.0;
     s1+=2387.0;
    } else {
     s0+=41037.0;
     s1+=1692.0;
    }
   }
  } else {
   if(i23<0.0025557351764291525){
    if(i74<0.056692421436309814){
     s0+=16.0;
     s1+=10.0;
    } else {
     s0+=138.0;
     s1+=9.0;
    }
   } else {
    if(i63<0.03979559615254402){
     s0+=40.0;
     s1+=10.0;
    } else {
     s0+=22.0;
     s1+=530.0;
    }
   }
  }
 } else {
  if(i20<0.006538210436701775){
   if(i45<0.0006505113560706377){
    if(i31<0.0002425998100079596){
     s0+=139.0;
    } else {
     s1+=39.0;
    }
   } else {
    s0+=379.0;
   }
  } else {
   if(i4<0.0012919902801513672){
    if(i55<-3.580594693630701e-06){
     s0+=14.0;
    } else {
     s0+=6.0;
     s1+=555.0;
    }
   } else {
    s0+=22.0;
   }
  }
 }
} else {
 if(i13<0.0007044102530926466){
  if(i38<0.15091785788536072){
   if(i58<1.0028772354125977){
    if(i21<0.0001627206802368164){
     s0+=537.0;
     s1+=840.0;
    } else {
     s0+=17.0;
     s1+=2693.0;
    }
   } else {
    if(i49<-3.353292413521558e-05){
     s0+=637.0;
     s1+=1000.0;
    } else {
     s0+=2044.0;
     s1+=337.0;
    }
   }
  } else {
   if(i49<-1.7105034203268588e-05){
    if(i34<0.0028193355537950993){
     s0+=69.0;
     s1+=208.0;
    } else {
     s0+=138.0;
     s1+=13650.0;
    }
   } else {
    if(i43<0.0025189020670950413){
     s0+=210.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=103.0;
    }
   }
  }
 } else {
  s0+=2220.0;
 }
}
if(i50<1.0018723011016846){
 if(i24<1.1838014125823975){
  if(i14<1.015832543373108){
   if(i32<0.0007166832801885903){
    if(i21<0.00027042627334594727){
     s0+=76494.0;
     s1+=428.0;
    } else {
     s0+=19.0;
     s1+=72.0;
    }
   } else {
    if(i34<0.0010651475749909878){
     s0+=3769.0;
     s1+=3077.0;
    } else {
     s0+=23967.0;
     s1+=749.0;
    }
   }
  } else {
   if(i25<1.1178560256958008){
    if(i32<0.00044572632759809494){
     s0+=15.0;
    } else {
     s1+=1336.0;
    }
   } else {
    if(i7<0.00644207326695323){
     s0+=665.0;
     s1+=63.0;
    } else {
     s0+=79.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i23<0.002599078696221113){
   s0+=414.0;
  } else {
   if(i22<0.0031520426273345947){
    if(i45<0.026711592450737953){
     s0+=45.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i18<0.0031867297366261482){
     s0+=1.0;
     s1+=16.0;
    } else {
     s1+=1495.0;
    }
   }
  }
 }
} else {
 if(i2<0.0012020468711853027){
  if(i33<1.1168808937072754){
   if(i18<0.0019486447563394904){
    if(i11<1.0240871906280518){
     s0+=4999.0;
     s1+=48.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i5<1.7344951629638672e-05){
     s0+=2457.0;
     s1+=202.0;
    } else {
     s0+=2004.0;
     s1+=1486.0;
    }
   }
  } else {
   if(i35<1.170027494430542){
    if(i7<0.0029843063093721867){
     s0+=473.0;
     s1+=15.0;
    } else {
     s0+=81.0;
     s1+=162.0;
    }
   } else {
    if(i3<0.9979328513145447){
     s0+=25.0;
     s1+=8.0;
    } else {
     s0+=51.0;
     s1+=1678.0;
    }
   }
  }
 } else {
  if(i31<0.0021200445480644703){
   if(i24<1.0774388313293457){
    if(i30<0.0005554556846618652){
     s1+=896.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i23<0.0010888343676924706){
     s1+=51.0;
    } else {
     s0+=682.0;
    }
   }
  } else {
   if(i10<0.9090896844863892){
    if(i5<5.7578086853027344e-05){
     s0+=14.0;
    } else {
     s0+=8.0;
     s1+=100.0;
    }
   } else {
    if(i11<0.9425605535507202){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=45.0;
     s1+=12450.0;
    }
   }
  }
 }
}
if(i6<1.0026230812072754){
 if(i10<1.0162707567214966){
  if(i33<1.152909755706787){
   if(i25<1.1162974834442139){
    if(i50<1.0001742839813232){
     s0+=20583.0;
     s1+=660.0;
    } else {
     s0+=8841.0;
     s1+=2450.0;
    }
   } else {
    if(i27<1.127637267112732){
     s0+=74408.0;
     s1+=308.0;
    } else {
     s0+=5717.0;
     s1+=537.0;
    }
   }
  } else {
   if(i20<0.03700292855501175){
    if(i7<0.01288323663175106){
     s0+=184.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i23<0.0018798368982970715){
     s0+=1.0;
    } else {
     s1+=349.0;
    }
   }
  }
 } else {
  if(i1<-3.4200413210783154e-05){
   if(i47<0.9983292818069458){
    s0+=67.0;
   } else {
    if(i53<-3.70589214071515e-06){
     s0+=70.0;
     s1+=1100.0;
    } else {
     s0+=166.0;
     s1+=12.0;
    }
   }
  } else {
   if(i21<-0.0004610121250152588){
    if(i24<1.1180851459503174){
     s0+=16.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i5<2.3424625396728516e-05){
     s0+=512.0;
     s1+=11.0;
    } else {
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i32<0.0010367436334490776){
   if(i47<1.0009740591049194){
    if(i48<1.3649463653564453e-05){
     s0+=80.0;
     s1+=2224.0;
    } else {
     s0+=221.0;
     s1+=14.0;
    }
   } else {
    if(i31<0.0024553677067160606){
     s0+=1978.0;
     s1+=22.0;
    } else {
     s0+=20.0;
     s1+=113.0;
    }
   }
  } else {
   if(i26<0.9949541091918945){
    if(i30<0.0005616545677185059){
     s0+=4.0;
     s1+=48.0;
    } else {
     s0+=69.0;
     s1+=12.0;
    }
   } else {
    if(i54<0.10144633054733276){
     s0+=2018.0;
     s1+=51.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i24<1.0743002891540527){
   if(i13<0.000303316192002967){
    if(i6<1.0053536891937256){
     s0+=239.0;
     s1+=72.0;
    } else {
     s0+=12.0;
     s1+=190.0;
    }
   } else {
    if(i2<0.0006954073905944824){
     s0+=782.0;
     s1+=89.0;
    } else {
     s0+=56.0;
     s1+=74.0;
    }
   }
  } else {
   if(i22<0.12415513396263123){
    if(i0<7.575750350952148e-05){
     s0+=426.0;
     s1+=653.0;
    } else {
     s0+=20.0;
     s1+=919.0;
    }
   } else {
    if(i21<-0.00020885467529296875){
     s0+=154.0;
     s1+=1001.0;
    } else {
     s0+=36.0;
     s1+=13208.0;
    }
   }
  }
 }
}
if(i14<1.0167019367218018){
 if(i18<0.0018618605099618435){
  if(i2<0.001672208309173584){
   if(i25<1.0905578136444092){
    if(i31<0.00018184949294663966){
     s0+=9987.0;
     s1+=13.0;
    } else {
     s0+=12150.0;
     s1+=880.0;
    }
   } else {
    if(i64<0.004075030330568552){
     s0+=70466.0;
     s1+=281.0;
    } else {
     s0+=1319.0;
     s1+=62.0;
    }
   }
  } else {
   if(i62<5.131959915161133e-05){
    if(i20<0.0027722795493900776){
     s0+=8.0;
     s1+=41.0;
    } else {
     s1+=350.0;
    }
   } else {
    if(i24<1.0733249187469482){
     s1+=54.0;
    } else {
     s0+=54.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<1.0026592016220093){
   if(i24<1.1403480768203735){
    if(i6<1.0000396966934204){
     s0+=11753.0;
     s1+=339.0;
    } else {
     s0+=6510.0;
     s1+=2275.0;
    }
   } else {
    if(i21<-0.0005576014518737793){
     s0+=97.0;
     s1+=110.0;
    } else {
     s0+=41.0;
     s1+=510.0;
    }
   }
  } else {
   if(i47<0.9997100830078125){
    if(i31<0.014594275504350662){
     s0+=561.0;
    } else {
     s0+=2.0;
     s1+=92.0;
    }
   } else {
    if(i0<3.039836883544922e-06){
     s0+=998.0;
     s1+=323.0;
    } else {
     s0+=1025.0;
     s1+=4897.0;
    }
   }
  }
 }
} else {
 if(i0<1.2099742889404297e-05){
  if(i7<0.006041659973561764){
   if(i20<0.006678263656795025){
    if(i37<2.0630486687878147e-05){
     s0+=147.0;
    } else {
     s0+=11.0;
     s1+=20.0;
    }
   } else {
    if(i16<-0.003382474184036255){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=575.0;
     s1+=6.0;
    }
   }
  } else {
   if(i22<0.12159928679466248){
    if(i8<1.0151978731155396){
     s0+=47.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   } else {
    if(i42<0.020411133766174316){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=278.0;
    }
   }
  }
 } else {
  if(i34<0.002358631230890751){
   if(i31<0.0012914050603285432){
    if(i39<0.11487540602684021){
     s0+=29.0;
     s1+=1529.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    if(i25<1.105151891708374){
     s1+=38.0;
    } else {
     s0+=615.0;
     s1+=20.0;
    }
   }
  } else {
   if(i27<1.0863457918167114){
    s0+=36.0;
   } else {
    if(i7<0.003670660313218832){
     s0+=101.0;
     s1+=193.0;
    } else {
     s0+=32.0;
     s1+=11889.0;
    }
   }
  }
 }
}
if(i7<0.007511983625590801){
 if(i16<0.0014438033103942871){
  if(i7<0.0035892880987375975){
   if(i34<0.000567201292142272){
    if(i37<-1.739232538966462e-05){
     s0+=11.0;
     s1+=109.0;
    } else {
     s0+=25721.0;
     s1+=769.0;
    }
   } else {
    if(i27<1.1354830265045166){
     s0+=61925.0;
     s1+=112.0;
    } else {
     s0+=2796.0;
     s1+=130.0;
    }
   }
  } else {
   if(i0<-2.485513687133789e-05){
    if(i2<-0.0006427466869354248){
     s0+=15973.0;
     s1+=149.0;
    } else {
     s0+=1417.0;
     s1+=244.0;
    }
   } else {
    if(i23<0.0009966542711481452){
     s0+=563.0;
     s1+=2477.0;
    } else {
     s0+=1725.0;
     s1+=705.0;
    }
   }
  }
 } else {
  if(i55<-5.71362261325703e-06){
   if(i41<1.091299295425415){
    s0+=353.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i4<0.00036722421646118164){
    s0+=111.0;
   } else {
    if(i47<0.9998548030853271){
     s0+=207.0;
     s1+=3.0;
    } else {
     s0+=148.0;
     s1+=2578.0;
    }
   }
  }
 }
} else {
 if(i2<-0.00035756826400756836){
  if(i38<0.17585673928260803){
   if(i33<1.113352656364441){
    if(i3<0.9975558519363403){
     s0+=4597.0;
     s1+=136.0;
    } else {
     s0+=296.0;
     s1+=88.0;
    }
   } else {
    if(i52<0.1738966405391693){
     s0+=20.0;
     s1+=6.0;
    } else {
     s1+=98.0;
    }
   }
  } else {
   if(i1<-5.585968756349757e-05){
    if(i16<-0.007024616003036499){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=323.0;
    }
   } else {
    if(i22<0.21307498216629028){
     s0+=49.0;
     s1+=12.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i3<1.001676082611084){
   if(i33<1.0263004302978516){
    if(i49<-2.1335948986234143e-05){
     s0+=199.0;
     s1+=50.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i20<0.022339381277561188){
     s0+=108.0;
     s1+=55.0;
    } else {
     s0+=39.0;
     s1+=812.0;
    }
   }
  } else {
   if(i15<0.017743289470672607){
    if(i2<0.002047598361968994){
     s0+=95.0;
     s1+=35.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i11<0.9865204691886902){
     s0+=89.0;
     s1+=1278.0;
    } else {
     s0+=29.0;
     s1+=14139.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i12<1.0075289011001587){
  if(i45<0.011805877089500427){
   if(i19<1.008994698524475){
    if(i5<1.5079975128173828e-05){
     s0+=104316.0;
     s1+=3089.0;
    } else {
     s0+=6665.0;
     s1+=1770.0;
    }
   } else {
    if(i45<0.0006958501180633903){
     s0+=353.0;
     s1+=728.0;
    } else {
     s0+=2166.0;
     s1+=210.0;
    }
   }
  } else {
   if(i14<0.9097118377685547){
    if(i42<0.2747282385826111){
     s0+=580.0;
     s1+=50.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    if(i27<1.6269450187683105){
     s0+=125.0;
     s1+=963.0;
    } else {
     s0+=209.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i43<0.0019974769093096256){
   if(i12<1.0110281705856323){
    if(i34<0.0009835719829425216){
     s1+=341.0;
    } else {
     s0+=732.0;
     s1+=21.0;
    }
   } else {
    if(i55<-4.152658675593557e-06){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=392.0;
    }
   }
  } else {
   if(i15<0.03526061773300171){
    if(i3<1.0047743320465088){
     s0+=197.0;
     s1+=17.0;
    } else {
     s0+=13.0;
     s1+=73.0;
    }
   } else {
    if(i21<-0.0004393458366394043){
     s0+=86.0;
     s1+=270.0;
    } else {
     s0+=18.0;
     s1+=1730.0;
    }
   }
  }
 }
} else {
 if(i34<0.002371780341491103){
  if(i55<-3.0453147701337002e-06){
   if(i36<1.092331886291504){
    s1+=16.0;
   } else {
    s0+=704.0;
   }
  } else {
   if(i50<1.0002498626708984){
    s0+=84.0;
   } else {
    if(i1<-2.35722563957097e-05){
     s0+=18.0;
     s1+=1870.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i25<1.6811659336090088){
   if(i4<0.0002237558364868164){
    if(i52<0.09112390875816345){
     s0+=121.0;
     s1+=51.0;
    } else {
     s1+=99.0;
    }
   } else {
    if(i1<-3.2698229915695265e-05){
     s0+=101.0;
     s1+=12324.0;
    } else {
     s0+=96.0;
     s1+=79.0;
    }
   }
  } else {
   s0+=107.0;
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i37<0.0003142372006550431){
  if(i69<5.794467142550275e-06){
   if(i50<1.0008631944656372){
    if(i15<0.1365998089313507){
     s0+=86.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=419.0;
    }
   } else {
    if(i38<0.036341965198516846){
     s0+=68.0;
     s1+=102.0;
    } else {
     s0+=69.0;
     s1+=14414.0;
    }
   }
  } else {
   s0+=130.0;
  }
 } else {
  if(i15<0.045639216899871826){
   if(i73<-0.009415894746780396){
    if(i13<0.0004795556887984276){
     s0+=42.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=42.0;
    }
   } else {
    if(i54<0.013783127069473267){
     s0+=31.0;
     s1+=7.0;
    } else {
     s0+=432.0;
     s1+=3.0;
    }
   }
  } else {
   if(i24<1.044359564781189){
    if(i9<0.9708060026168823){
     s0+=21.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i67<-0.017986059188842773){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=303.0;
    }
   }
  }
 }
} else {
 if(i11<1.0105777978897095){
  if(i6<1.0024166107177734){
   if(i36<1.0903575420379639){
    if(i50<1.0001988410949707){
     s0+=20571.0;
     s1+=661.0;
    } else {
     s0+=7840.0;
     s1+=1972.0;
    }
   } else {
    if(i33<1.1145050525665283){
     s0+=77871.0;
     s1+=792.0;
    } else {
     s0+=1892.0;
     s1+=282.0;
    }
   }
  } else {
   if(i0<9.1552734375e-05){
    if(i7<0.0037768245674669743){
     s0+=3073.0;
     s1+=53.0;
    } else {
     s0+=1387.0;
     s1+=1263.0;
    }
   } else {
    if(i59<9.306689025834203e-05){
     s0+=74.0;
     s1+=64.0;
    } else {
     s0+=64.0;
     s1+=632.0;
    }
   }
  }
 } else {
  if(i61<0.0003595863818190992){
   if(i29<1.1180615425109863){
    if(i4<-0.0001367628574371338){
     s0+=1.0;
    } else {
     s1+=1703.0;
    }
   } else {
    if(i15<0.12733665108680725){
     s0+=264.0;
     s1+=11.0;
    } else {
     s0+=47.0;
     s1+=57.0;
    }
   }
  } else {
   if(i20<0.017452413216233253){
    if(i7<0.00584321329370141){
     s0+=2276.0;
     s1+=102.0;
    } else {
     s0+=56.0;
     s1+=222.0;
    }
   } else {
    if(i17<0.9997789859771729){
     s0+=244.0;
     s1+=163.0;
    } else {
     s0+=28.0;
     s1+=926.0;
    }
   }
  }
 }
}
if(i12<1.0046117305755615){
 if(i26<1.0196788311004639){
  if(i22<0.20195084810256958){
   if(i11<1.0091698169708252){
    if(i32<0.0007107759010978043){
     s0+=78325.0;
     s1+=435.0;
    } else {
     s0+=31285.0;
     s1+=3859.0;
    }
   } else {
    if(i24<1.0688291788101196){
     s0+=138.0;
     s1+=552.0;
    } else {
     s0+=1374.0;
     s1+=269.0;
    }
   }
  } else {
   if(i1<-3.762528649531305e-05){
    if(i43<0.0016023601638153195){
     s0+=9.0;
    } else {
     s0+=11.0;
     s1+=481.0;
    }
   } else {
    if(i4<0.00039130449295043945){
     s0+=231.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i44<1.0002952814102173){
   if(i7<0.006958914455026388){
    s0+=333.0;
   } else {
    if(i42<0.021160895004868507){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=154.0;
    }
   }
  } else {
   if(i39<0.14800137281417847){
    if(i21<-0.0001838207244873047){
     s0+=122.0;
     s1+=23.0;
    } else {
     s0+=160.0;
     s1+=794.0;
    }
   } else {
    if(i3<1.0016802549362183){
     s0+=47.0;
     s1+=221.0;
    } else {
     s0+=6.0;
     s1+=1119.0;
    }
   }
  }
 }
} else {
 if(i13<0.0007044356898404658){
  if(i11<1.0152742862701416){
   if(i32<0.00046202525845728815){
    if(i66<-6.193102308316156e-06){
     s0+=34.0;
     s1+=170.0;
    } else {
     s0+=765.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.0009783506393432617){
     s0+=974.0;
     s1+=1120.0;
    } else {
     s0+=172.0;
     s1+=3251.0;
    }
   }
  } else {
   if(i48<6.61611557006836e-05){
    if(i66<1.5061589692777488e-05){
     s0+=64.0;
     s1+=11990.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=25.0;
   }
  }
 } else {
  if(i71<0.2981117069721222){
   s0+=2290.0;
  } else {
   s1+=4.0;
  }
 }
}
if(i26<1.0167112350463867){
 if(i16<0.0013865828514099121){
  if(i4<0.00032788515090942383){
   if(i18<0.0014028892619535327){
    if(i34<0.0003132093115709722){
     s0+=17652.0;
     s1+=332.0;
    } else {
     s0+=62065.0;
     s1+=154.0;
    }
   } else {
    if(i23<0.0009048659121617675){
     s0+=2087.0;
     s1+=1812.0;
    } else {
     s0+=22195.0;
     s1+=617.0;
    }
   }
  } else {
   if(i37<3.1389085052069277e-05){
    if(i9<1.0058660507202148){
     s0+=4981.0;
     s1+=214.0;
    } else {
     s0+=2475.0;
     s1+=831.0;
    }
   } else {
    if(i24<1.1005501747131348){
     s0+=2267.0;
     s1+=1324.0;
    } else {
     s0+=302.0;
     s1+=2197.0;
    }
   }
  }
 } else {
  if(i50<1.0009510517120361){
   if(i40<0.016711633652448654){
    if(i43<0.0003813136136159301){
     s0+=11.0;
     s1+=6.0;
    } else {
     s0+=358.0;
    }
   } else {
    s1+=49.0;
   }
  } else {
   if(i13<0.0007066940306685865){
    if(i5<1.0371208190917969e-05){
     s0+=19.0;
    } else {
     s0+=9.0;
     s1+=2260.0;
    }
   } else {
    s0+=229.0;
   }
  }
 }
} else {
 if(i53<-2.696682940950268e-06){
  if(i35<1.170027494430542){
   if(i29<1.116804838180542){
    if(i31<0.00136243412271142){
     s0+=20.0;
     s1+=1582.0;
    } else {
     s0+=39.0;
     s1+=10.0;
    }
   } else {
    if(i15<0.16931751370429993){
     s0+=955.0;
     s1+=225.0;
    } else {
     s0+=103.0;
     s1+=426.0;
    }
   }
  } else {
   if(i8<1.0152943134307861){
    if(i51<-0.000354799471097067){
     s0+=29.0;
     s1+=771.0;
    } else {
     s0+=90.0;
     s1+=198.0;
    }
   } else {
    if(i29<1.7041046619415283){
     s0+=34.0;
     s1+=11314.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i37<7.775578706059605e-05){
   s0+=606.0;
  } else {
   if(i21<-0.00017330050468444824){
    s0+=3.0;
   } else {
    s1+=6.0;
   }
  }
 }
}
if(i1<-0.00010637124069035053){
 if(i2<-0.00023543834686279297){
  if(i11<0.9265801906585693){
   if(i25<1.5726749897003174){
    if(i3<1.0001215934753418){
     s0+=239.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i15<0.014400094747543335){
     s0+=41.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=40.0;
    }
   }
  } else {
   if(i48<6.651878356933594e-05){
    if(i13<0.00015749706653878093){
     s0+=4.0;
    } else {
     s0+=18.0;
     s1+=291.0;
    }
   } else {
    s0+=25.0;
   }
  }
 } else {
  if(i41<0.8791900873184204){
   if(i64<0.02545725181698799){
    if(i42<0.2159237563610077){
     s0+=83.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i52<0.18670326471328735){
     s0+=27.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=70.0;
    }
   }
  } else {
   if(i53<-5.658583540935069e-05){
    s0+=58.0;
   } else {
    if(i5<-2.759695053100586e-05){
     s0+=14.0;
    } else {
     s0+=193.0;
     s1+=14604.0;
    }
   }
  }
 }
} else {
 if(i21<0.00020521879196166992){
  if(i14<1.0164942741394043){
   if(i18<0.001716169761493802){
    if(i59<0.0001868668186943978){
     s0+=77444.0;
     s1+=344.0;
    } else {
     s0+=13419.0;
     s1+=644.0;
    }
   } else {
    if(i29<1.1164028644561768){
     s0+=3113.0;
     s1+=2837.0;
    } else {
     s0+=19426.0;
     s1+=2013.0;
    }
   }
  } else {
   if(i53<-3.7760662507935194e-06){
    if(i13<0.0003346474259160459){
     s0+=295.0;
     s1+=1384.0;
    } else {
     s0+=644.0;
     s1+=71.0;
    }
   } else {
    if(i1<-6.650583236478269e-05){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=488.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i33<1.0566296577453613){
   if(i13<0.0003824138839263469){
    if(i12<0.99861741065979){
     s0+=5.0;
    } else {
     s1+=1055.0;
    }
   } else {
    s0+=43.0;
   }
  } else {
   if(i32<0.00135968963149935){
    if(i4<0.0003516077995300293){
     s0+=135.0;
     s1+=1.0;
    } else {
     s0+=119.0;
     s1+=1047.0;
    }
   } else {
    if(i29<1.1672043800354004){
     s0+=557.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
}
if(i1<-0.00011748328688554466){
 if(i11<0.9360716342926025){
  if(i38<0.01935023069381714){
   if(i70<0.0598263256251812){
    if(i31<0.010851318016648293){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=228.0;
    }
   } else {
    if(i63<0.2278064340353012){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i24<1.112304925918579){
    if(i59<0.0030687872786074877){
     s1+=7.0;
    } else {
     s0+=42.0;
     s1+=9.0;
    }
   } else {
    if(i68<0.29312217235565186){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i69<5.7961542552220635e-06){
   if(i27<1.1008507013320923){
    if(i62<0.0034564733505249023){
     s0+=35.0;
     s1+=339.0;
    } else {
     s0+=41.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.0021502317395061255){
     s0+=11.0;
     s1+=13.0;
    } else {
     s0+=24.0;
     s1+=13498.0;
    }
   }
  } else {
   s0+=114.0;
  }
 }
} else {
 if(i4<0.00048297643661499023){
  if(i4<0.0002269148826599121){
   if(i32<0.0006543614435940981){
    if(i35<1.1354830265045166){
     s0+=64378.0;
     s1+=202.0;
    } else {
     s0+=5725.0;
     s1+=121.0;
    }
   } else {
    if(i29<1.0907573699951172){
     s0+=1885.0;
     s1+=1484.0;
    } else {
     s0+=28101.0;
     s1+=734.0;
    }
   }
  } else {
   if(i18<0.001578230643644929){
    if(i60<-0.0019327322952449322){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=5923.0;
     s1+=5.0;
    }
   } else {
    if(i46<2.0223793399054557e-05){
     s0+=1006.0;
     s1+=1395.0;
    } else {
     s0+=1157.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i30<0.0005106329917907715){
   if(i27<1.0440804958343506){
    if(i32<0.0009537505102343857){
     s1+=56.0;
    } else {
     s0+=813.0;
     s1+=1.0;
    }
   } else {
    if(i1<-3.2105628633871675e-05){
     s0+=364.0;
     s1+=3967.0;
    } else {
     s0+=929.0;
     s1+=391.0;
    }
   }
  } else {
   if(i15<0.18237924575805664){
    if(i7<0.005493515636771917){
     s0+=4638.0;
     s1+=38.0;
    } else {
     s0+=951.0;
     s1+=997.0;
    }
   } else {
    if(i42<0.019446661695837975){
     s0+=113.0;
     s1+=79.0;
    } else {
     s0+=47.0;
     s1+=686.0;
    }
   }
  }
 }
}
if(i4<0.0005714297294616699){
 if(i26<1.0181350708007812){
  if(i32<0.0006855846731923521){
   if(i18<0.0008560146670788527){
    if(i17<0.9986253976821899){
     s0+=19822.0;
     s1+=84.0;
    } else {
     s0+=44283.0;
     s1+=21.0;
    }
   } else {
    if(i12<0.997368574142456){
     s0+=7158.0;
    } else {
     s0+=6415.0;
     s1+=284.0;
    }
   }
  } else {
   if(i2<-0.0005336999893188477){
    if(i47<1.0025967359542847){
     s0+=25284.0;
     s1+=620.0;
    } else {
     s0+=62.0;
     s1+=78.0;
    }
   } else {
    if(i7<0.003892368171364069){
     s0+=5008.0;
     s1+=702.0;
    } else {
     s0+=1225.0;
     s1+=2486.0;
    }
   }
  }
 } else {
  if(i37<2.820468034769874e-05){
   if(i49<-1.4822358025412541e-05){
    if(i10<1.0214297771453857){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=98.0;
    }
   } else {
    if(i29<1.0937910079956055){
     s1+=2.0;
    } else {
     s0+=438.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<-3.5822391510009766e-05){
    if(i37<0.00015825111768208444){
     s0+=209.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=97.0;
    }
   } else {
    if(i2<-0.00020813941955566406){
     s0+=34.0;
     s1+=88.0;
    } else {
     s0+=4.0;
     s1+=608.0;
    }
   }
  }
 }
} else {
 if(i52<0.03595093637704849){
  if(i13<0.0002996080438606441){
   if(i55<-1.572448672959581e-05){
    s0+=32.0;
   } else {
    if(i5<3.3795833587646484e-05){
     s0+=176.0;
     s1+=950.0;
    } else {
     s0+=49.0;
     s1+=2686.0;
    }
   }
  } else {
   if(i11<1.0210464000701904){
    if(i3<1.010286808013916){
     s0+=4653.0;
     s1+=48.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   } else {
    if(i39<0.08819863200187683){
     s0+=3.0;
     s1+=21.0;
    } else {
     s1+=206.0;
    }
   }
  }
 } else {
  if(i39<0.056265175342559814){
   if(i17<1.0085639953613281){
    if(i24<1.0529766082763672){
     s0+=495.0;
     s1+=53.0;
    } else {
     s0+=453.0;
     s1+=572.0;
    }
   } else {
    if(i61<9.067713108379394e-05){
     s0+=6.0;
     s1+=10.0;
    } else {
     s0+=12.0;
     s1+=713.0;
    }
   }
  } else {
   if(i49<-3.604475568863563e-05){
    if(i15<0.13756141066551208){
     s0+=155.0;
     s1+=811.0;
    } else {
     s0+=25.0;
     s1+=11060.0;
    }
   } else {
    if(i2<1.1920928955078125e-07){
     s0+=234.0;
     s1+=83.0;
    } else {
     s0+=317.0;
     s1+=1844.0;
    }
   }
  }
 }
}
if(i28<1.0277631282806396){
 if(i21<0.0002104341983795166){
  if(i6<1.0023912191390991){
   if(i22<0.22079935669898987){
    if(i4<0.00027877092361450195){
     s0+=101411.0;
     s1+=2519.0;
    } else {
     s0+=6814.0;
     s1+=1412.0;
    }
   } else {
    if(i23<0.0020971177145838737){
     s0+=30.0;
    } else {
     s0+=13.0;
     s1+=181.0;
    }
   }
  } else {
   if(i65<0.0010810347739607096){
    if(i54<0.03800888732075691){
     s0+=4555.0;
     s1+=778.0;
    } else {
     s0+=251.0;
     s1+=353.0;
    }
   } else {
    if(i33<1.0529379844665527){
     s0+=817.0;
     s1+=558.0;
    } else {
     s0+=274.0;
     s1+=2196.0;
    }
   }
  }
 } else {
  if(i20<0.003473853226751089){
   if(i25<1.1180615425109863){
    s1+=259.0;
   } else {
    if(i40<0.00203233165666461){
     s0+=427.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i6<1.0016443729400635){
    if(i61<0.004899092949926853){
     s0+=251.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i19<1.0173883438110352){
     s0+=188.0;
     s1+=1325.0;
    } else {
     s0+=14.0;
     s1+=2082.0;
    }
   }
  }
 }
} else {
 if(i3<1.0027518272399902){
  if(i54<0.04893622547388077){
   if(i57<0.0005448467563837767){
    if(i7<0.005735913757234812){
     s0+=45.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   } else {
    if(i65<-0.002081203041598201){
     s0+=16.0;
     s1+=18.0;
    } else {
     s0+=889.0;
     s1+=64.0;
    }
   }
  } else {
   if(i32<0.0006264942931011319){
    s0+=120.0;
   } else {
    if(i30<0.0006821155548095703){
     s0+=38.0;
     s1+=593.0;
    } else {
     s0+=37.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i36<1.1757044792175293){
   if(i29<1.1177868843078613){
    if(i18<0.00016494178271386772){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=675.0;
    }
   } else {
    if(i23<0.002163618803024292){
     s0+=262.0;
    } else {
     s0+=25.0;
     s1+=83.0;
    }
   }
  } else {
   if(i15<0.10998234152793884){
    if(i30<0.0006521344184875488){
     s1+=21.0;
    } else {
     s0+=49.0;
     s1+=6.0;
    }
   } else {
    if(i54<0.031352318823337555){
     s0+=18.0;
     s1+=2362.0;
    } else {
     s1+=8683.0;
    }
   }
  }
 }
}
if(i14<1.016754150390625){
 if(i22<0.19806867837905884){
  if(i2<0.001077413558959961){
   if(i5<1.329183578491211e-05){
    if(i44<0.9989416599273682){
     s0+=40373.0;
     s1+=189.0;
    } else {
     s0+=63835.0;
     s1+=2790.0;
    }
   } else {
    if(i1<-4.808451922144741e-05){
     s0+=1545.0;
     s1+=1554.0;
    } else {
     s0+=7481.0;
     s1+=1100.0;
    }
   }
  } else {
   if(i59<0.00010063241643365473){
    if(i55<-3.2197563086810987e-06){
     s0+=891.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=579.0;
    }
   } else {
    if(i32<0.004073325544595718){
     s0+=191.0;
     s1+=1993.0;
    } else {
     s0+=56.0;
    }
   }
  }
 } else {
  if(i53<-4.4666089706879575e-06){
   if(i23<0.0021858529653400183){
    s0+=41.0;
   } else {
    if(i7<0.006490905769169331){
     s0+=56.0;
     s1+=42.0;
    } else {
     s0+=4.0;
     s1+=1820.0;
    }
   }
  } else {
   if(i31<0.015241065993905067){
    if(i58<1.001595377922058){
     s0+=216.0;
    } else {
     s0+=39.0;
     s1+=8.0;
    }
   } else {
    s1+=9.0;
   }
  }
 }
} else {
 if(i0<1.4603137969970703e-05){
  if(i54<0.04128057882189751){
   if(i4<-4.6193599700927734e-05){
    if(i18<0.0028083818033337593){
     s0+=320.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i29<1.1015981435775757){
     s1+=10.0;
    } else {
     s0+=354.0;
     s1+=31.0;
    }
   }
  } else {
   if(i32<0.0007397012086585164){
    s0+=121.0;
   } else {
    if(i22<0.12456580996513367){
     s0+=39.0;
     s1+=17.0;
    } else {
     s0+=26.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i16<0.001914680004119873){
   if(i23<0.0025516331661492586){
    if(i27<1.0905089378356934){
     s0+=80.0;
     s1+=865.0;
    } else {
     s0+=626.0;
     s1+=79.0;
    }
   } else {
    if(i32<0.000985033344477415){
     s0+=79.0;
     s1+=213.0;
    } else {
     s0+=19.0;
     s1+=2479.0;
    }
   }
  } else {
   if(i47<0.998241662979126){
    s0+=16.0;
   } else {
    s1+=10316.0;
   }
  }
 }
}
if(i1<-9.840739949140698e-05){
 if(i38<0.04125577211380005){
  if(i24<1.1212424039840698){
   if(i4<0.0016953349113464355){
    if(i9<0.9781841039657593){
     s0+=523.0;
     s1+=10.0;
    } else {
     s0+=32.0;
     s1+=18.0;
    }
   } else {
    if(i13<0.0010732820956036448){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i10<0.9080420732498169){
    if(i29<1.5387091636657715){
     s0+=47.0;
     s1+=20.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i38<0.04102542996406555){
     s0+=5.0;
     s1+=75.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i13<0.0007076200563460588){
   if(i55<-6.607377144973725e-06){
    s0+=73.0;
   } else {
    if(i56<0.9169293642044067){
     s0+=39.0;
     s1+=20.0;
    } else {
     s0+=43.0;
     s1+=15309.0;
    }
   }
  } else {
   s0+=159.0;
  }
 }
} else {
 if(i5<1.329183578491211e-05){
  if(i18<0.0013898866018280387){
   if(i27<1.0233088731765747){
    if(i50<0.9995908737182617){
     s0+=2024.0;
     s1+=3.0;
    } else {
     s0+=1678.0;
     s1+=143.0;
    }
   } else {
    if(i18<0.0010510102147236466){
     s0+=67947.0;
     s1+=142.0;
    } else {
     s0+=8838.0;
     s1+=198.0;
    }
   }
  } else {
   if(i36<1.0906792879104614){
    if(i17<0.9940305948257446){
     s0+=953.0;
     s1+=33.0;
    } else {
     s0+=1475.0;
     s1+=1740.0;
    }
   } else {
    if(i34<0.00100405840203166){
     s0+=11.0;
     s1+=155.0;
    } else {
     s0+=22057.0;
     s1+=680.0;
    }
   }
  }
 } else {
  if(i13<0.0003476145793683827){
   if(i18<0.0011503733694553375){
    if(i66<-5.62117156732711e-06){
     s1+=135.0;
    } else {
     s0+=2297.0;
     s1+=18.0;
    }
   } else {
    if(i32<0.0013916869647800922){
     s0+=978.0;
     s1+=4752.0;
    } else {
     s0+=728.0;
     s1+=459.0;
    }
   }
  } else {
   if(i20<0.0427490770816803){
    if(i20<0.022331899031996727){
     s0+=6158.0;
     s1+=27.0;
    } else {
     s0+=378.0;
     s1+=126.0;
    }
   } else {
    if(i57<0.0014521898701786995){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=218.0;
    }
   }
  }
 }
}
if(i28<1.0256788730621338){
 if(i9<1.0130226612091064){
  if(i61<0.0038984990678727627){
   if(i8<1.0085750818252563){
    if(i50<1.0038654804229736){
     s0+=108160.0;
     s1+=4565.0;
    } else {
     s0+=691.0;
     s1+=613.0;
    }
   } else {
    if(i25<1.1166167259216309){
     s0+=127.0;
     s1+=1267.0;
    } else {
     s0+=3895.0;
     s1+=472.0;
    }
   }
  } else {
   if(i22<0.08508032560348511){
    if(i7<0.023598138242959976){
     s0+=1245.0;
     s1+=171.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i20<0.02326967753469944){
     s0+=159.0;
     s1+=25.0;
    } else {
     s0+=45.0;
     s1+=1358.0;
    }
   }
  }
 } else {
  if(i20<0.006415039300918579){
   if(i53<-1.6259087715297937e-05){
    if(i36<1.169473648071289){
     s0+=140.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i4<0.0005207061767578125){
     s0+=7.0;
    } else {
     s0+=20.0;
     s1+=538.0;
    }
   }
  } else {
   if(i49<-1.276516923098825e-05){
    if(i54<0.0001519501965958625){
     s0+=7.0;
    } else {
     s0+=15.0;
     s1+=2396.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i38<0.1971643567085266){
  if(i1<-5.42289562872611e-05){
   if(i14<1.0196082592010498){
    if(i7<0.004450972191989422){
     s0+=131.0;
     s1+=29.0;
    } else {
     s0+=67.0;
     s1+=158.0;
    }
   } else {
    if(i3<1.00204336643219){
     s0+=43.0;
     s1+=31.0;
    } else {
     s0+=53.0;
     s1+=1539.0;
    }
   }
  } else {
   if(i35<1.0902788639068604){
    if(i5<9.5367431640625e-06){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=241.0;
    }
   } else {
    if(i18<0.003116949461400509){
     s0+=1050.0;
     s1+=30.0;
    } else {
     s0+=193.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i18<0.0010923210065811872){
   if(i4<0.0015842318534851074){
    if(i72<1.0191371440887451){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=193.0;
     s1+=1.0;
    }
   } else {
    s1+=114.0;
   }
  } else {
   if(i7<0.005014176480472088){
    if(i18<0.0029500178061425686){
     s0+=60.0;
     s1+=150.0;
    } else {
     s0+=50.0;
     s1+=4.0;
    }
   } else {
    if(i49<-7.443412414431805e-06){
     s0+=13.0;
     s1+=10579.0;
    } else {
     s0+=6.0;
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
