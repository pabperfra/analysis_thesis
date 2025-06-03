/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = difference_of_gaussian=15 small_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=15 laplace_box_of_gaussian_blur=15 gaussian_blur=10 laplace_box_of_gaussian_blur=20 difference_of_gaussian=20 sobel_of_gaussian_blur=10 median_box=5 gaussian_blur=5 gaussian_blur=3 mean_box=5 top_hat_box=15 median_box=3 mean_box=3 gaussian_blur=2 sobel_of_gaussian_blur=30 mean_box=10 sobel_of_gaussian_blur=15 top_hat_box=20 maximum_box=2 difference_of_gaussian=10 laplace_box_of_gaussian_blur=10 maximum_box=3 variance_box=30 mean_box=15 top_hat_box=30 mean_box=2 sobel_of_gaussian_blur=5 variance_box=20 maximum_box=20 maximum_box=30 variance_box=10 sobel_of_gaussian_blur=20 maximum_box=15 difference_of_gaussian=30 maximum_box=10 variance_box=15 sobel_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=15 variance_box=5 gaussian_blur=1 maximum_box=1 large_hessian_eigenvalue_of_gaussian_blur=10 maximum_box=5 top_hat_box=10 small_hessian_eigenvalue_of_gaussian_blur=5 laplace_box_of_gaussian_blur=30 mean_box=1 small_hessian_eigenvalue_of_gaussian_blur=30 sobel_of_median_box=5 large_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=30 mean_box=20 small_hessian_eigenvalue_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=5 gaussian_blur=20 sobel_of_gaussian_blur=2 variance_box=3 difference_of_gaussian=5 mean_box=30 laplace_box_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=3 variance_box=2 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=3 variance_box=1 large_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=3 sobel_of_gaussian_blur=1 top_hat_box=5 large_hessian_eigenvalue_of_gaussian_blur=30 laplace_box_of_gaussian_blur=1 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 75
max_depth = 5
num_trees = 250
feature_importances = 0.06717478103605302,0.08042008826232559,0.04566287065887375,0.07100260349093153,0.05917182423622429,0.05381155412235787,0.06424830149663041,0.027846000225378073,0.05947342786149873,0.04953405175437482,0.03357375962571987,0.00667045080987875,0.027332395518511295,0.01977032427837552,0.01183958363447091,0.02798974616489632,0.016841328602012096,0.009153726663901612,0.014403147698675598,0.012406294117289694,0.001827335546748877,0.027064774557303148,0.01129581166252451,0.010337648018694067,0.01095891297036731,0.014043268012478466,0.010408920248509387,0.008039423255170144,0.012842219864973888,0.007045179148816359,0.007289716522416221,0.009616054489423511,0.006015101349447753,0.007569706535193969,0.006533765367780446,0.00944075562683713,0.004665074440888482,0.008033472781251579,0.004573283379499526,0.003734726446174824,0.002512690476454356,0.006360294644381184,0.0009299548222913738,0.0033743036968958955,0.004343789653777196,0.002601399796303205,0.0029069988553432325,0.0019839645507966695,0.00481176664444053,0.0023286064505035294,0.0025444146205358923,0.0024317688014698293,0.002859392717427255,0.0016096673782754606,0.002267424679349664,0.0008473355914069924,0.001749530942810696,0.002651936637188045,0.0028467971980271427,0.0005199222336796719,0.0007768487220037628,0.0007479968242986638,0.0005783884858065854,0.001818072463455644,0.00044153557586993773,0.0006625164073905804,0.0007669986883273573,0.0003891437897602582,0.0004766876730824399,0.0001752058340204389,0.00025291443490154205,0.00022209127653821043,7.404732676831861e-05,0.0001144988070992669,0.0003596828164399924
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i15<1.0176973342895508){
 if(i26<0.2089904248714447){
  if(i0<0.0010320544242858887){
   if(i33<0.0007173037156462669){
    if(i1<-5.2518968004733324e-05){
     s0+=789.0;
     s1+=77.0;
    } else {
     s0+=79598.0;
     s1+=446.0;
    }
   } else {
    if(i34<1.0903575420379639){
     s0+=4084.0;
     s1+=2819.0;
    } else {
     s0+=28672.0;
     s1+=2416.0;
    }
   }
  } else {
   if(i32<0.002015113364905119){
    if(i30<1.1174830198287964){
     s0+=74.0;
     s1+=1255.0;
    } else {
     s0+=1284.0;
     s1+=22.0;
    }
   } else {
    if(i49<-6.6977636379306205e-06){
     s0+=33.0;
    } else {
     s0+=75.0;
     s1+=1737.0;
    }
   }
  }
 } else {
  if(i7<0.006372726988047361){
   if(i25<1.0074293613433838){
    if(i15<1.017624855041504){
     s0+=336.0;
     s1+=8.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<1.1522939205169678){
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i31<1.1669886112213135){
    s0+=4.0;
   } else {
    if(i5<-4.717707633972168e-05){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=1640.0;
    }
   }
  }
 }
} else {
 if(i0<0.00023508071899414062){
  if(i28<0.028331618756055832){
   if(i58<0.0004122370155528188){
    if(i30<1.106844425201416){
     s1+=15.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i29<0.006173891946673393){
     s0+=582.0;
     s1+=31.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i23<1.594602346420288){
    if(i19<0.12366443872451782){
     s0+=34.0;
     s1+=17.0;
    } else {
     s0+=51.0;
     s1+=356.0;
    }
   } else {
    if(i54<-6.167068022477906e-06){
     s1+=2.0;
    } else {
     s0+=52.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   if(i12<0.09973841905593872){
    if(i52<1.0009765625){
     s0+=68.0;
     s1+=1313.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i34<1.0963833332061768){
     s1+=117.0;
    } else {
     s0+=387.0;
     s1+=14.0;
    }
   }
  } else {
   if(i12<0.07840678095817566){
    if(i0<0.0012617111206054688){
     s0+=42.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i22<-0.00024324655532836914){
     s0+=24.0;
     s1+=100.0;
    } else {
     s0+=42.0;
     s1+=12098.0;
    }
   }
  }
 }
}
if(i41<1.0267434120178223){
 if(i25<1.0046367645263672){
  if(i7<0.004046197049319744){
   if(i33<0.0005500816041603684){
    if(i41<1.0266655683517456){
     s0+=65554.0;
     s1+=149.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i16<0.0002500204718671739){
     s0+=10366.0;
     s1+=1116.0;
    } else {
     s0+=14697.0;
     s1+=43.0;
    }
   }
  } else {
   if(i3<-2.187490463256836e-05){
    if(i45<0.22165292501449585){
     s0+=19225.0;
     s1+=737.0;
    } else {
     s0+=1.0;
     s1+=93.0;
    }
   } else {
    if(i6<-0.000102996826171875){
     s0+=316.0;
     s1+=25.0;
    } else {
     s0+=912.0;
     s1+=3528.0;
    }
   }
  }
 } else {
  if(i21<0.002000749111175537){
   if(i38<0.026192402467131615){
    if(i24<0.00097916298545897){
     s0+=360.0;
     s1+=842.0;
    } else {
     s0+=2768.0;
     s1+=135.0;
    }
   } else {
    if(i10<0.9378846883773804){
     s0+=302.0;
     s1+=205.0;
    } else {
     s0+=381.0;
     s1+=2119.0;
    }
   }
  } else {
   if(i33<0.0037937830202281475){
    if(i52<0.9973262548446655){
     s0+=5.0;
    } else {
     s1+=2615.0;
    }
   } else {
    if(i1<-0.0002058435056824237){
     s1+=1.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
} else {
 if(i39<-1.2658743798965588e-05){
  if(i15<1.0247598886489868){
   if(i28<0.029496412724256516){
    if(i29<0.0012689337600022554){
     s0+=2.0;
     s1+=254.0;
    } else {
     s0+=494.0;
     s1+=137.0;
    }
   } else {
    if(i51<7.343495963141322e-05){
     s0+=66.0;
     s1+=803.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i21<-0.001333475112915039){
    if(i7<0.006846261210739613){
     s0+=123.0;
    } else {
     s1+=237.0;
    }
   } else {
    if(i16<0.0013006979133933783){
     s0+=84.0;
     s1+=11148.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i50<0.036480508744716644){
   if(i43<0.00014669196389149874){
    if(i14<0.9828603267669678){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=675.0;
     s1+=9.0;
    }
   } else {
    if(i32<0.004867476411163807){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i24<0.0025696600787341595){
    if(i31<1.106844425201416){
     s1+=13.0;
    } else {
     s0+=176.0;
     s1+=4.0;
    }
   } else {
    if(i42<1.1081864833831787){
     s0+=20.0;
     s1+=10.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
}
if(i10<1.014350414276123){
 if(i25<1.0075196027755737){
  if(i6<0.0003414750099182129){
   if(i18<0.0014876610366627574){
    if(i34<1.0776758193969727){
     s0+=21420.0;
     s1+=406.0;
    } else {
     s0+=60573.0;
     s1+=154.0;
    }
   } else {
    if(i2<0.9997336864471436){
     s0+=15869.0;
     s1+=408.0;
    } else {
     s0+=6892.0;
     s1+=2311.0;
    }
   }
  } else {
   if(i23<1.170370101928711){
    if(i46<-0.00020026245329063386){
     s0+=1317.0;
     s1+=1599.0;
    } else {
     s0+=8062.0;
     s1+=1275.0;
    }
   } else {
    if(i36<1.5987657308578491){
     s0+=14.0;
     s1+=895.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i47<2.6881694793701172e-05){
   if(i28<0.03488747403025627){
    if(i63<0.0004904782399535179){
     s0+=25.0;
     s1+=601.0;
    } else {
     s0+=574.0;
     s1+=578.0;
    }
   } else {
    if(i62<0.012292479164898396){
     s0+=44.0;
     s1+=1860.0;
    } else {
     s0+=40.0;
     s1+=50.0;
    }
   }
  } else {
   if(i38<0.04205963388085365){
    s0+=288.0;
   } else {
    s1+=23.0;
   }
  }
 }
} else {
 if(i28<0.007364313118159771){
  if(i40<0.0007790033705532551){
   if(i31<1.4586446285247803){
    s1+=654.0;
   } else {
    s0+=10.0;
   }
  } else {
   if(i34<1.1764509677886963){
    if(i37<0.0007902109646238387){
     s1+=8.0;
    } else {
     s0+=609.0;
    }
   } else {
    if(i39<-1.8881804862758145e-05){
     s0+=27.0;
     s1+=402.0;
    } else {
     s0+=71.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i39<-1.0365742127760313e-05){
   if(i1<-3.2078034564619884e-05){
    if(i7<0.003496207296848297){
     s0+=97.0;
     s1+=206.0;
    } else {
     s0+=41.0;
     s1+=13010.0;
    }
   } else {
    if(i64<-1.239125140273245e-07){
     s0+=10.0;
     s1+=74.0;
    } else {
     s0+=115.0;
    }
   }
  } else {
   s0+=240.0;
  }
 }
}
if(i13<1.016731858253479){
 if(i7<0.013943055644631386){
  if(i0<0.0011927485466003418){
   if(i6<0.00029212236404418945){
    if(i34<1.0905301570892334){
     s0+=26357.0;
     s1+=1923.0;
    } else {
     s0+=75759.0;
     s1+=670.0;
    }
   } else {
    if(i18<0.0020022836979478598){
     s0+=6780.0;
     s1+=158.0;
    } else {
     s0+=3590.0;
     s1+=2381.0;
    }
   }
  } else {
   if(i49<-8.29295277071651e-06){
    s0+=372.0;
   } else {
    if(i64<-2.040791741819703e-06){
     s0+=291.0;
     s1+=1855.0;
    } else {
     s0+=211.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i15<0.9088995456695557){
   if(i23<1.0917787551879883){
    if(i51<2.9484486731234938e-05){
     s0+=21.0;
     s1+=60.0;
    } else {
     s0+=778.0;
     s1+=28.0;
    }
   } else {
    if(i61<-0.007253885269165039){
     s0+=113.0;
     s1+=174.0;
    } else {
     s0+=1.0;
     s1+=85.0;
    }
   }
  } else {
   if(i2<0.9930551052093506){
    s0+=15.0;
   } else {
    if(i23<1.046175241470337){
     s0+=93.0;
     s1+=11.0;
    } else {
     s0+=52.0;
     s1+=2554.0;
    }
   }
  }
 }
} else {
 if(i6<0.0002828240394592285){
  if(i38<0.05864734947681427){
   if(i54<-4.01330635213526e-06){
    if(i29<0.0036840159446001053){
     s0+=40.0;
     s1+=59.0;
    } else {
     s0+=101.0;
     s1+=16.0;
    }
   } else {
    if(i28<0.03430970013141632){
     s0+=559.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   if(i45<0.1890791654586792){
    if(i7<0.005398218519985676){
     s0+=128.0;
     s1+=6.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i39<-5.960206181043759e-06){
     s1+=196.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i28<0.005365860648453236){
   if(i21<0.0023969411849975586){
    if(i29<0.0010253624059259892){
     s1+=214.0;
    } else {
     s0+=561.0;
     s1+=16.0;
    }
   } else {
    s1+=361.0;
   }
  } else {
   if(i7<0.004938337951898575){
    if(i11<1.0159213542938232){
     s0+=298.0;
     s1+=54.0;
    } else {
     s0+=70.0;
     s1+=409.0;
    }
   } else {
    if(i9<0.996037483215332){
     s0+=89.0;
     s1+=259.0;
    } else {
     s0+=64.0;
     s1+=12935.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i1<-8.526472083758563e-05){
  if(i10<0.9359695315361023){
   if(i21<-0.0022662878036499023){
    if(i20<1.092198371887207){
     s0+=757.0;
     s1+=73.0;
    } else {
     s0+=5.0;
     s1+=45.0;
    }
   } else {
    s1+=26.0;
   }
  } else {
   if(i49<-6.117652446846478e-06){
    if(i41<1.0609711408615112){
     s0+=258.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<1.0316683053970337){
     s0+=126.0;
     s1+=192.0;
    } else {
     s0+=130.0;
     s1+=3194.0;
    }
   }
  }
 } else {
  if(i6<0.00029546022415161133){
   if(i24<0.0008680314058437943){
    if(i35<7.006525993347168e-05){
     s0+=26152.0;
     s1+=694.0;
    } else {
     s0+=3094.0;
     s1+=1411.0;
    }
   } else {
    if(i26<0.23402073979377747){
     s0+=73671.0;
     s1+=534.0;
    } else {
     s0+=83.0;
     s1+=80.0;
    }
   }
  } else {
   if(i18<0.0017917148070409894){
    if(i58<0.002914630575105548){
     s0+=6580.0;
     s1+=186.0;
    } else {
     s0+=10.0;
     s1+=28.0;
    }
   } else {
    if(i33<0.0013124330434948206){
     s0+=818.0;
     s1+=2523.0;
    } else {
     s0+=3719.0;
     s1+=585.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013814725680276752){
  if(i6<0.0013920068740844727){
   if(i39<-1.738389619276859e-05){
    if(i16<0.00027268219855614007){
     s1+=19.0;
    } else {
     s0+=134.0;
    }
   } else {
    s0+=331.0;
   }
  } else {
   if(i16<0.0006853733793832362){
    s1+=513.0;
   } else {
    s0+=123.0;
   }
  }
 } else {
  if(i34<1.1757044792175293){
   if(i63<0.0008537806570529938){
    if(i31<1.1264252662658691){
     s1+=1582.0;
    } else {
     s0+=24.0;
     s1+=5.0;
    }
   } else {
    if(i15<1.0247502326965332){
     s0+=332.0;
     s1+=49.0;
    } else {
     s0+=24.0;
     s1+=80.0;
    }
   }
  } else {
   if(i21<-0.0019976794719696045){
    if(i7<0.008633285760879517){
     s0+=85.0;
    } else {
     s1+=96.0;
    }
   } else {
    if(i0<-0.0007401704788208008){
     s0+=72.0;
     s1+=2.0;
    } else {
     s0+=80.0;
     s1+=12334.0;
    }
   }
  }
 }
}
if(i10<1.014319896697998){
 if(i6<0.0005390644073486328){
  if(i1<-6.236880290089175e-05){
   if(i38<0.20148730278015137){
    if(i68<-0.0009523016051389277){
     s0+=149.0;
     s1+=435.0;
    } else {
     s0+=2065.0;
     s1+=157.0;
    }
   } else {
    if(i9<0.9493118524551392){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=241.0;
    }
   }
  } else {
   if(i28<0.006643952801823616){
    if(i7<0.0016256168019026518){
     s0+=52786.0;
     s1+=178.0;
    } else {
     s0+=13618.0;
     s1+=371.0;
    }
   } else {
    if(i6<-6.574392318725586e-05){
     s0+=35152.0;
     s1+=562.0;
    } else {
     s0+=5186.0;
     s1+=2457.0;
    }
   }
  }
 } else {
  if(i50<0.04489459842443466){
   if(i51<-8.91016134119127e-06){
    if(i37<0.0011405355762690306){
     s0+=4.0;
     s1+=631.0;
    } else {
     s0+=197.0;
     s1+=360.0;
    }
   } else {
    if(i1<-4.53903412562795e-05){
     s0+=1576.0;
     s1+=934.0;
    } else {
     s0+=4201.0;
     s1+=598.0;
    }
   }
  } else {
   if(i23<1.0477652549743652){
    if(i4<1.0022590160369873){
     s0+=283.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i26<0.04132869839668274){
     s0+=77.0;
     s1+=70.0;
    } else {
     s0+=104.0;
     s1+=2936.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007059713825583458){
  if(i6<0.00029200315475463867){
   if(i37<0.00781730841845274){
    if(i56<1.0008807182312012){
     s0+=287.0;
    } else {
     s0+=79.0;
     s1+=66.0;
    }
   } else {
    s1+=139.0;
   }
  } else {
   if(i7<0.0028477413579821587){
    if(i43<-2.127560946973972e-05){
     s0+=15.0;
     s1+=262.0;
    } else {
     s0+=213.0;
     s1+=32.0;
    }
   } else {
    if(i54<-6.333646888379008e-05){
     s0+=13.0;
    } else {
     s0+=50.0;
     s1+=13693.0;
    }
   }
  }
 } else {
  s0+=611.0;
 }
}
if(i1<-9.340472752228379e-05){
 if(i51<4.766482743434608e-05){
  if(i26<0.04151874780654907){
   if(i11<0.9589345455169678){
    if(i2<1.005887746810913){
     s0+=163.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i72<-0.07582417130470276){
     s0+=20.0;
     s1+=135.0;
    } else {
     s0+=42.0;
     s1+=8.0;
    }
   }
  } else {
   if(i47<2.8192996978759766e-05){
    if(i28<0.007547371089458466){
     s0+=95.0;
     s1+=794.0;
    } else {
     s0+=95.0;
     s1+=14271.0;
    }
   } else {
    if(i6<0.002625763416290283){
     s0+=122.0;
    } else {
     s1+=45.0;
    }
   }
  }
 } else {
  if(i42<1.0032439231872559){
   if(i19<0.0455704927444458){
    if(i28<0.05724336579442024){
     s0+=440.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=37.0;
    }
   } else {
    if(i11<0.9483792185783386){
     s0+=36.0;
     s1+=14.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i47<-0.0003750622272491455){
    s0+=13.0;
   } else {
    if(i22<-0.0009430050849914551){
     s0+=5.0;
    } else {
     s1+=440.0;
    }
   }
  }
 }
} else {
 if(i13<1.015717625617981){
  if(i29<0.0010565273696556687){
   if(i8<1.0074796676635742){
    if(i40<0.0001737794082146138){
     s0+=20526.0;
     s1+=517.0;
    } else {
     s0+=11568.0;
     s1+=2310.0;
    }
   } else {
    if(i31<1.0621874332427979){
     s0+=196.0;
    } else {
     s0+=14.0;
     s1+=1313.0;
    }
   }
  } else {
   if(i3<0.00014513731002807617){
    if(i2<1.002416729927063){
     s0+=76254.0;
     s1+=669.0;
    } else {
     s0+=4483.0;
     s1+=1084.0;
    }
   } else {
    if(i37<0.002243343275040388){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=182.0;
    }
   }
  }
 } else {
  if(i1<-3.377450775587931e-05){
   if(i37<0.0012435277458280325){
    if(i47<1.5974044799804688e-05){
     s0+=2.0;
     s1+=1038.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i19<0.14764684438705444){
     s0+=902.0;
     s1+=317.0;
    } else {
     s0+=159.0;
     s1+=982.0;
    }
   }
  } else {
   if(i12<0.2136235237121582){
    if(i7<0.006272520404309034){
     s0+=1157.0;
     s1+=46.0;
    } else {
     s0+=20.0;
     s1+=67.0;
    }
   } else {
    if(i18<0.0027312757447361946){
     s0+=27.0;
    } else {
     s0+=5.0;
     s1+=112.0;
    }
   }
  }
 }
}
if(i1<-9.4027811428532e-05){
 if(i19<0.0413852334022522){
  if(i74<0.034096673130989075){
   if(i22<0.0003501772880554199){
    if(i54<-1.850145599746611e-05){
     s0+=77.0;
     s1+=14.0;
    } else {
     s0+=548.0;
     s1+=10.0;
    }
   } else {
    if(i42<1.0676507949829102){
     s1+=15.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i35<0.0004315376281738281){
    if(i18<0.007272400893270969){
     s0+=71.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i50<0.0006807558820582926){
     s0+=4.0;
    } else {
     s0+=19.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i71<5.813413736177608e-06){
   if(i8<0.9201545715332031){
    if(i20<1.0646969079971313){
     s0+=51.0;
     s1+=28.0;
    } else {
     s0+=5.0;
     s1+=72.0;
    }
   } else {
    if(i54<-5.304701335262507e-05){
     s0+=72.0;
    } else {
     s0+=116.0;
     s1+=15566.0;
    }
   }
  } else {
   s0+=98.0;
  }
 }
} else {
 if(i3<6.35981559753418e-05){
  if(i6<0.00031238794326782227){
   if(i24<0.0008717200835235417){
    if(i34<1.05497145652771){
     s0+=19682.0;
     s1+=159.0;
    } else {
     s0+=9655.0;
     s1+=2041.0;
    }
   } else {
    if(i26<0.23422786593437195){
     s0+=74749.0;
     s1+=675.0;
    } else {
     s0+=115.0;
     s1+=83.0;
    }
   }
  } else {
   if(i57<0.040301285684108734){
    if(i37<0.001036152709275484){
     s0+=2531.0;
     s1+=905.0;
    } else {
     s0+=4983.0;
     s1+=243.0;
    }
   } else {
    if(i3<-8.285045623779297e-06){
     s0+=1289.0;
     s1+=186.0;
    } else {
     s0+=585.0;
     s1+=1601.0;
    }
   }
  }
 } else {
  if(i35<0.000758051872253418){
   if(i64<7.172577625169652e-07){
    if(i5<1.710653305053711e-05){
     s0+=52.0;
    } else {
     s0+=125.0;
     s1+=2341.0;
    }
   } else {
    if(i30<1.1692216396331787){
     s0+=140.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i34<1.1757044792175293){
    if(i21<3.898143768310547e-05){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=1441.0;
    }
   } else {
    if(i18<0.004073038697242737){
     s0+=44.0;
     s1+=19.0;
    } else {
     s0+=4.0;
     s1+=285.0;
    }
   }
  }
 }
}
if(i10<1.0154454708099365){
 if(i50<0.08446063846349716){
  if(i6<0.0004336833953857422){
   if(i24<0.0008788029663264751){
    if(i35<6.979703903198242e-05){
     s0+=26338.0;
     s1+=694.0;
    } else {
     s0+=3668.0;
     s1+=1837.0;
    }
   } else {
    if(i26<0.23481085896492004){
     s0+=74825.0;
     s1+=691.0;
    } else {
     s0+=71.0;
     s1+=68.0;
    }
   }
  } else {
   if(i16<0.00029936435748822987){
    if(i36<1.0905089378356934){
     s0+=19.0;
     s1+=1742.0;
    } else {
     s0+=2158.0;
     s1+=1658.0;
    }
   } else {
    if(i58<0.002275139559060335){
     s0+=5772.0;
     s1+=129.0;
    } else {
     s0+=633.0;
     s1+=665.0;
    }
   }
  }
 } else {
  if(i23<1.0890278816223145){
   if(i0<-0.00014126300811767578){
    if(i13<1.0059951543807983){
     s0+=2077.0;
     s1+=54.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i45<0.00032144784927368164){
     s0+=14.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=180.0;
    }
   }
  } else {
   if(i33<0.0004732966481242329){
    s0+=122.0;
   } else {
    if(i19<0.008136838674545288){
     s0+=68.0;
     s1+=17.0;
    } else {
     s0+=63.0;
     s1+=2623.0;
    }
   }
  }
 }
} else {
 if(i2<1.0013656616210938){
  if(i51<9.222052540280856e-06){
   if(i21<0.0021708011627197266){
    if(i30<1.106844425201416){
     s1+=14.0;
    } else {
     s0+=304.0;
    }
   } else {
    s1+=35.0;
   }
  } else {
   if(i6<0.0008743107318878174){
    if(i7<0.005088950973004103){
     s0+=2.0;
    } else {
     s1+=170.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i7<0.0029435798060148954){
   if(i58<0.00038901029620319605){
    if(i24<0.0033983681350946426){
     s1+=180.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i64<-6.912165645189816e-06){
     s0+=11.0;
     s1+=129.0;
    } else {
     s0+=467.0;
     s1+=19.0;
    }
   }
  } else {
   if(i52<0.9985255002975464){
    s0+=15.0;
   } else {
    if(i47<3.1888484954833984e-05){
     s0+=36.0;
     s1+=13230.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i21<0.0013654828071594238){
 if(i17<1.005275845527649){
  if(i13<1.0197663307189941){
   if(i3<5.6684017181396484e-05){
    if(i5<1.6391277313232422e-05){
     s0+=105556.0;
     s1+=3400.0;
    } else {
     s0+=5020.0;
     s1+=1817.0;
    }
   } else {
    if(i31<1.1843671798706055){
     s0+=162.0;
     s1+=40.0;
    } else {
     s0+=135.0;
     s1+=874.0;
    }
   }
  } else {
   if(i3<2.1159648895263672e-05){
    if(i28<0.02828342467546463){
     s0+=495.0;
     s1+=53.0;
    } else {
     s0+=139.0;
     s1+=491.0;
    }
   } else {
    if(i6<0.000286102294921875){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=88.0;
     s1+=1511.0;
    }
   }
  }
 } else {
  if(i50<0.036748915910720825){
   if(i18<0.001973812934011221){
    if(i64<-5.0213652684760746e-06){
     s0+=163.0;
     s1+=55.0;
    } else {
     s0+=3163.0;
     s1+=30.0;
    }
   } else {
    if(i49<-5.547910859604599e-06){
     s0+=148.0;
    } else {
     s0+=422.0;
     s1+=957.0;
    }
   }
  } else {
   if(i32<0.0017596969846636057){
    if(i60<1.001183032989502){
     s1+=6.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i20<0.9210827350616455){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=1718.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007059713825583458){
  if(i56<1.0008273124694824){
   if(i54<-5.849984063388547e-06){
    s1+=289.0;
   } else {
    s0+=198.0;
   }
  } else {
   if(i7<0.0011479533277451992){
    if(i16<0.0003084514755755663){
     s1+=81.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i49<-6.548920282511972e-06){
     s0+=12.0;
    } else {
     s0+=10.0;
     s1+=12833.0;
    }
   }
  }
 } else {
  s0+=864.0;
 }
}
if(i3<6.335973739624023e-05){
 if(i5<1.329183578491211e-05){
  if(i26<0.24682429432868958){
   if(i18<0.0014503966085612774){
    if(i31<1.0817922353744507){
     s0+=15554.0;
     s1+=371.0;
    } else {
     s0+=66058.0;
     s1+=204.0;
    }
   } else {
    if(i32<0.0010480022756382823){
     s0+=2356.0;
     s1+=1665.0;
    } else {
     s0+=21245.0;
     s1+=886.0;
    }
   }
  } else {
   if(i17<0.9913127422332764){
    if(i31<1.3789691925048828){
     s0+=1.0;
    } else {
     s1+=171.0;
    }
   } else {
    if(i56<1.000833511352539){
     s0+=71.0;
     s1+=37.0;
    } else {
     s0+=2.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i50<0.031047407537698746){
   if(i36<1.0452228784561157){
    s0+=2447.0;
   } else {
    if(i30<1.0977189540863037){
     s1+=747.0;
    } else {
     s0+=5373.0;
     s1+=846.0;
    }
   }
  } else {
   if(i17<0.9915603399276733){
    if(i23<1.0915354490280151){
     s0+=690.0;
     s1+=39.0;
    } else {
     s0+=155.0;
     s1+=366.0;
    }
   } else {
    if(i38<0.026506002992391586){
     s0+=162.0;
     s1+=56.0;
    } else {
     s0+=270.0;
     s1+=2223.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i36<1.095003366470337){
   if(i32<0.00018481384904589504){
    s0+=96.0;
   } else {
    if(i35<0.0005132555961608887){
     s0+=9.0;
     s1+=1974.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i40<0.0008477004012092948){
    if(i24<0.0010598108638077974){
     s1+=327.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i51<-1.9167262507835403e-05){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=1893.0;
    }
   }
  }
 } else {
  if(i23<1.07395601272583){
   if(i22<-0.00023096799850463867){
    if(i47<1.329183578491211e-05){
     s0+=70.0;
     s1+=18.0;
    } else {
     s0+=17.0;
     s1+=69.0;
    }
   } else {
    if(i0<0.0009313821792602539){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=160.0;
    }
   }
  } else {
   if(i0<0.0008476376533508301){
    if(i38<0.13605721294879913){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i7<0.005303313955664635){
     s0+=27.0;
     s1+=525.0;
    } else {
     s0+=28.0;
     s1+=13504.0;
    }
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i20<1.1403393745422363){
  if(i18<0.0016409580130130053){
   if(i30<1.0776758193969727){
    if(i52<1.000199317932129){
     s0+=12502.0;
     s1+=15.0;
    } else {
     s0+=6312.0;
     s1+=523.0;
    }
   } else {
    if(i44<1.1354830265045166){
     s0+=66474.0;
     s1+=206.0;
    } else {
     s0+=1773.0;
     s1+=140.0;
    }
   }
  } else {
   if(i24<0.0009191688150167465){
    if(i26<0.04912760853767395){
     s0+=1504.0;
     s1+=724.0;
    } else {
     s0+=465.0;
     s1+=1902.0;
    }
   } else {
    if(i4<1.001906156539917){
     s0+=19845.0;
     s1+=749.0;
    } else {
     s0+=110.0;
     s1+=331.0;
    }
   }
  }
 } else {
  if(i33<0.0008970819180831313){
   s0+=476.0;
  } else {
   if(i28<0.029886875301599503){
    if(i51<2.9496863135136664e-05){
     s1+=23.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   } else {
    if(i28<0.03158660978078842){
     s0+=2.0;
     s1+=12.0;
    } else {
     s1+=629.0;
    }
   }
  }
 }
} else {
 if(i28<0.007906395941972733){
  if(i32<0.0009607698884792626){
   if(i30<1.056142807006836){
    s0+=1431.0;
   } else {
    if(i34<1.1214042901992798){
     s1+=1576.0;
    } else {
     s0+=59.0;
    }
   }
  } else {
   if(i4<1.0102622509002686){
    if(i13<1.0319724082946777){
     s0+=3384.0;
     s1+=78.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i24<0.0021274667233228683){
     s0+=2.0;
    } else {
     s1+=476.0;
    }
   }
  }
 } else {
  if(i3<1.806020736694336e-05){
   if(i0<-0.0002917647361755371){
    if(i26<0.2506141662597656){
     s0+=679.0;
     s1+=135.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   } else {
    if(i23<1.1145033836364746){
     s0+=334.0;
     s1+=82.0;
    } else {
     s0+=48.0;
     s1+=368.0;
    }
   }
  } else {
   if(i17<1.010291576385498){
    if(i49<-6.284908522502519e-06){
     s0+=173.0;
     s1+=2.0;
    } else {
     s0+=664.0;
     s1+=5540.0;
    }
   } else {
    if(i0<0.001468658447265625){
     s0+=43.0;
     s1+=508.0;
    } else {
     s1+=10442.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i13<1.0181578397750854){
  if(i28<0.0067800977267324924){
   if(i9<0.996801495552063){
    if(i32<0.000567253096960485){
     s0+=1415.0;
     s1+=285.0;
    } else {
     s0+=4010.0;
     s1+=19.0;
    }
   } else {
    if(i10<1.0091161727905273){
     s0+=62468.0;
     s1+=182.0;
    } else {
     s0+=762.0;
     s1+=76.0;
    }
   }
  } else {
   if(i25<0.99867844581604){
    if(i0<-0.0005346238613128662){
     s0+=32590.0;
     s1+=391.0;
    } else {
     s0+=1320.0;
     s1+=302.0;
    }
   } else {
    if(i34<1.092360019683838){
     s0+=809.0;
     s1+=2046.0;
    } else {
     s0+=6436.0;
     s1+=1329.0;
    }
   }
  }
 } else {
  if(i12<0.19245120882987976){
   if(i18<0.0017956859664991498){
    if(i44<1.1239633560180664){
     s0+=332.0;
    } else {
     s0+=165.0;
     s1+=43.0;
    }
   } else {
    if(i52<1.001483678817749){
     s0+=62.0;
     s1+=510.0;
    } else {
     s0+=143.0;
     s1+=5.0;
    }
   }
  } else {
   if(i34<1.1328749656677246){
    s0+=6.0;
   } else {
    if(i7<0.005039419047534466){
     s0+=33.0;
     s1+=16.0;
    } else {
     s1+=592.0;
    }
   }
  }
 }
} else {
 if(i31<1.1935834884643555){
  if(i35<0.0005118846893310547){
   if(i52<0.9997169971466064){
    if(i57<0.03961674124002457){
     s0+=421.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i13<0.998857319355011){
     s0+=64.0;
     s1+=19.0;
    } else {
     s0+=35.0;
     s1+=2711.0;
    }
   }
  } else {
   s0+=3659.0;
  }
 } else {
  if(i23<1.0743656158447266){
   if(i19<0.08709836006164551){
    if(i72<-0.020278990268707275){
     s0+=207.0;
     s1+=121.0;
    } else {
     s0+=747.0;
     s1+=18.0;
    }
   } else {
    if(i2<1.0053514242172241){
     s0+=108.0;
     s1+=68.0;
    } else {
     s0+=24.0;
     s1+=231.0;
    }
   }
  } else {
   if(i1<-7.144272967707366e-05){
    if(i26<0.041255444288253784){
     s0+=101.0;
     s1+=156.0;
    } else {
     s0+=79.0;
     s1+=14299.0;
    }
   } else {
    if(i44<1.1076748371124268){
     s0+=209.0;
     s1+=15.0;
    } else {
     s0+=260.0;
     s1+=953.0;
    }
   }
  }
 }
}
if(i35<0.0002478957176208496){
 if(i13<1.0203287601470947){
  if(i18<0.001720347674563527){
   if(i21<-0.00021594762802124023){
    if(i36<1.0739831924438477){
     s0+=12469.0;
     s1+=701.0;
    } else {
     s0+=22757.0;
     s1+=55.0;
    }
   } else {
    if(i40<0.0019344224128872156){
     s0+=49218.0;
     s1+=79.0;
    } else {
     s0+=630.0;
     s1+=62.0;
    }
   }
  } else {
   if(i0<-0.00047129392623901367){
    if(i32<0.001074070343747735){
     s0+=613.0;
     s1+=207.0;
    } else {
     s0+=10838.0;
     s1+=224.0;
    }
   } else {
    if(i35<3.013014793395996e-05){
     s0+=964.0;
     s1+=141.0;
    } else {
     s0+=418.0;
     s1+=2310.0;
    }
   }
  }
 } else {
  if(i7<0.005520226433873177){
   if(i54<-3.778344307647785e-06){
    if(i36<1.1351547241210938){
     s0+=13.0;
     s1+=3.0;
    } else {
     s1+=22.0;
    }
   } else {
    s0+=349.0;
   }
  } else {
   if(i39<-4.309706582716899e-06){
    s1+=1471.0;
   } else {
    s0+=7.0;
   }
  }
 }
} else {
 if(i9<1.0127514600753784){
  if(i26<0.19176915287971497){
   if(i2<1.0024375915527344){
    if(i1<-4.740960866911337e-05){
     s0+=1366.0;
     s1+=423.0;
    } else {
     s0+=10311.0;
     s1+=313.0;
    }
   } else {
    if(i62<0.0009050324442796409){
     s0+=4773.0;
     s1+=1521.0;
    } else {
     s0+=1203.0;
     s1+=2146.0;
    }
   }
  } else {
   if(i44<1.127584457397461){
    if(i28<0.029635917395353317){
     s0+=225.0;
     s1+=25.0;
    } else {
     s0+=13.0;
     s1+=173.0;
    }
   } else {
    if(i7<0.00556989386677742){
     s0+=103.0;
     s1+=19.0;
    } else {
     s0+=12.0;
     s1+=2227.0;
    }
   }
  }
 } else {
  if(i28<0.006573269609361887){
   if(i4<1.0102672576904297){
    if(i58<0.0007356679998338223){
     s0+=14.0;
     s1+=250.0;
    } else {
     s0+=264.0;
     s1+=43.0;
    }
   } else {
    s1+=567.0;
   }
  } else {
   if(i28<0.01202295906841755){
    if(i39<-0.00015993774286471307){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=1114.0;
    }
   } else {
    s1+=10180.0;
   }
  }
 }
}
if(i25<1.004767894744873){
 if(i8<1.0135858058929443){
  if(i18<0.0017335031880065799){
   if(i18<0.0012767375446856022){
    if(i21<-0.00032025575637817383){
     s0+=25265.0;
     s1+=265.0;
    } else {
     s0+=54796.0;
     s1+=115.0;
    }
   } else {
    if(i2<0.9994975328445435){
     s0+=7305.0;
     s1+=25.0;
    } else {
     s0+=2690.0;
     s1+=546.0;
    }
   }
  } else {
   if(i29<0.0011252076365053654){
    if(i7<0.0036876103840768337){
     s0+=1464.0;
     s1+=131.0;
    } else {
     s0+=862.0;
     s1+=2482.0;
    }
   } else {
    if(i45<0.17347007989883423){
     s0+=19421.0;
     s1+=1320.0;
    } else {
     s0+=187.0;
     s1+=695.0;
    }
   }
  }
 } else {
  if(i8<1.0283756256103516){
   if(i56<1.000380516052246){
    if(i32<0.015490522608160973){
     s0+=209.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i51<2.4377279260079376e-05){
     s0+=140.0;
     s1+=932.0;
    } else {
     s0+=145.0;
     s1+=140.0;
    }
   }
  } else {
   if(i29<0.0007509673596359789){
    s0+=27.0;
   } else {
    if(i7<0.004883464425802231){
     s0+=23.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=1264.0;
    }
   }
  }
 }
} else {
 if(i9<1.0144070386886597){
  if(i28<0.02536826580762863){
   if(i51<-1.0244830264127813e-05){
    if(i49<-3.5766197470366023e-06){
     s0+=192.0;
     s1+=8.0;
    } else {
     s0+=22.0;
     s1+=828.0;
    }
   } else {
    if(i36<1.0905089378356934){
     s0+=307.0;
     s1+=401.0;
    } else {
     s0+=3127.0;
     s1+=353.0;
    }
   }
  } else {
   if(i10<0.9362058639526367){
    if(i34<1.4855914115905762){
     s0+=160.0;
     s1+=51.0;
    } else {
     s0+=24.0;
     s1+=133.0;
    }
   } else {
    if(i21<-0.003279656171798706){
     s0+=117.0;
     s1+=235.0;
    } else {
     s0+=64.0;
     s1+=3074.0;
    }
   }
  }
 } else {
  if(i16<0.0008217089343816042){
   if(i71<-5.138819233252434e-06){
    if(i14<1.1015219688415527){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.0035487303975969553){
     s0+=1.0;
     s1+=373.0;
    } else {
     s1+=10835.0;
    }
   }
  } else {
   s0+=86.0;
  }
 }
}
if(i8<1.013500690460205){
 if(i65<0.4414411187171936){
  if(i6<0.0005391836166381836){
   if(i34<1.0903575420379639){
    if(i30<1.0577976703643799){
     s0+=18346.0;
     s1+=8.0;
    } else {
     s0+=9508.0;
     s1+=2574.0;
    }
   } else {
    if(i26<0.23436102271080017){
     s0+=81020.0;
     s1+=1210.0;
    } else {
     s0+=106.0;
     s1+=181.0;
    }
   }
  } else {
   if(i57<0.042486801743507385){
    if(i1<-4.393175186123699e-05){
     s0+=1156.0;
     s1+=895.0;
    } else {
     s0+=3690.0;
     s1+=427.0;
    }
   } else {
    if(i19<0.07604637742042542){
     s0+=994.0;
     s1+=548.0;
    } else {
     s0+=439.0;
     s1+=2317.0;
    }
   }
  }
 } else {
  if(i12<0.048442453145980835){
   if(i73<-0.015943288803100586){
    s1+=1.0;
   } else {
    s0+=164.0;
   }
  } else {
   if(i39<-5.890442935196916e-06){
    if(i20<1.0234806537628174){
     s0+=4.0;
    } else {
     s0+=13.0;
     s1+=1297.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i7<0.005011753179132938){
  if(i1<-9.328003943664953e-05){
   if(i2<1.0033376216888428){
    if(i36<1.134464979171753){
     s0+=19.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i43<0.00010438734898343682){
     s0+=10.0;
     s1+=638.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i30<1.0905578136444092){
    s1+=378.0;
   } else {
    if(i26<0.1591821014881134){
     s0+=921.0;
     s1+=5.0;
    } else {
     s0+=274.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i1<-8.631362288724631e-05){
   if(i2<0.9985692501068115){
    if(i33<0.003940783441066742){
     s1+=69.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i16<0.0023350557312369347){
     s0+=1.0;
     s1+=11999.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i33<0.0023248139768838882){
    if(i46<4.407789674587548e-06){
     s0+=16.0;
     s1+=1478.0;
    } else {
     s0+=22.0;
     s1+=9.0;
    }
   } else {
    if(i44<1.1662384271621704){
     s0+=62.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i61<-0.0076749324798583984){
  if(i23<1.1128016710281372){
   if(i68<0.0014347239630296826){
    if(i35<0.0006688237190246582){
     s0+=495.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=12.0;
    }
   } else {
    if(i40<0.028722504153847694){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i16<0.00044621090637519956){
    if(i38<0.14649644494056702){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i16<0.000671038927976042){
     s0+=2.0;
     s1+=89.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i47<3.096461296081543e-05){
   if(i52<0.9980083703994751){
    s0+=144.0;
   } else {
    if(i12<0.02064254879951477){
     s0+=108.0;
     s1+=92.0;
    } else {
     s0+=62.0;
     s1+=15305.0;
    }
   }
  } else {
   if(i19<0.31026098132133484){
    s0+=75.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i12<0.19802764058113098){
  if(i2<1.0023455619812012){
   if(i29<0.001060430658981204){
    if(i19<0.059351950883865356){
     s0+=30221.0;
     s1+=1801.0;
    } else {
     s0+=1477.0;
     s1+=1558.0;
    }
   } else {
    if(i13<1.0254400968551636){
     s0+=76526.0;
     s1+=580.0;
    } else {
     s0+=171.0;
     s1+=108.0;
    }
   }
  } else {
   if(i47<9.357929229736328e-06){
    if(i3<3.2842159271240234e-05){
     s0+=1341.0;
     s1+=464.0;
    } else {
     s0+=445.0;
     s1+=2260.0;
    }
   } else {
    if(i7<0.005274789407849312){
     s0+=4249.0;
     s1+=168.0;
    } else {
     s0+=736.0;
     s1+=769.0;
    }
   }
  }
 } else {
  if(i29<0.0019227287266403437){
   s0+=227.0;
  } else {
   if(i20<1.500936508178711){
    if(i5<-8.255243301391602e-06){
     s0+=63.0;
     s1+=31.0;
    } else {
     s0+=92.0;
     s1+=1045.0;
    }
   } else {
    s0+=40.0;
   }
  }
 }
}
if(i0<0.0009575486183166504){
 if(i12<0.20049402117729187){
  if(i2<1.0022128820419312){
   if(i8<1.0124268531799316){
    if(i4<0.9971930384635925){
     s0+=38204.0;
     s1+=269.0;
    } else {
     s0+=69643.0;
     s1+=3372.0;
    }
   } else {
    if(i6<0.00029268860816955566){
     s0+=393.0;
     s1+=62.0;
    } else {
     s0+=18.0;
     s1+=345.0;
    }
   }
  } else {
   if(i28<0.020438259467482567){
    if(i33<0.0005311615532264113){
     s0+=2422.0;
     s1+=3.0;
    } else {
     s0+=2797.0;
     s1+=759.0;
    }
   } else {
    if(i23<1.07442045211792){
     s0+=529.0;
     s1+=149.0;
    } else {
     s0+=411.0;
     s1+=1297.0;
    }
   }
  }
 } else {
  if(i7<0.005902651697397232){
   if(i4<1.0022239685058594){
    if(i66<0.0011892812326550484){
     s0+=27.0;
     s1+=8.0;
    } else {
     s0+=275.0;
     s1+=6.0;
    }
   } else {
    if(i54<-6.7558848968474194e-06){
     s0+=11.0;
     s1+=47.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i36<1.1216881275177002){
    s0+=3.0;
   } else {
    if(i44<1.0860185623168945){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=1511.0;
    }
   }
  }
 }
} else {
 if(i19<0.17041748762130737){
  if(i30<1.116804838180542){
   if(i16<0.00032009408459998667){
    if(i64<-1.2274091204744764e-05){
     s0+=2.0;
    } else {
     s1+=2379.0;
    }
   } else {
    s0+=135.0;
   }
  } else {
   if(i36<1.1706266403198242){
    if(i7<0.007154636550694704){
     s0+=1662.0;
     s1+=23.0;
    } else {
     s0+=29.0;
     s1+=236.0;
    }
   } else {
    if(i23<1.0236399173736572){
     s0+=29.0;
     s1+=8.0;
    } else {
     s0+=68.0;
     s1+=1774.0;
    }
   }
  }
 } else {
  if(i29<0.0024155867286026478){
   if(i40<0.0010521390940994024){
    s1+=8.0;
   } else {
    s0+=107.0;
   }
  } else {
   if(i3<8.279085159301758e-05){
    if(i33<0.0006838495610281825){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=517.0;
    }
   } else {
    s1+=11278.0;
   }
  }
 }
}
if(i10<1.015453577041626){
 if(i2<1.0025405883789062){
  if(i20<1.154522180557251){
   if(i2<0.9995312690734863){
    if(i68<-0.007883654907345772){
     s1+=6.0;
    } else {
     s0+=53592.0;
     s1+=348.0;
    }
   } else {
    if(i33<0.0006626573158428073){
     s0+=42419.0;
     s1+=169.0;
    } else {
     s0+=13521.0;
     s1+=3721.0;
    }
   }
  } else {
   if(i7<0.007966340519487858){
    s0+=246.0;
   } else {
    if(i66<0.0016750774811953306){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=374.0;
    }
   }
  }
 } else {
  if(i30<1.1934996843338013){
   if(i32<0.0010306452168151736){
    if(i30<1.0609431266784668){
     s0+=873.0;
    } else {
     s0+=4.0;
     s1+=1216.0;
    }
   } else {
    if(i31<1.1941347122192383){
     s0+=3017.0;
     s1+=12.0;
    } else {
     s0+=295.0;
     s1+=156.0;
    }
   }
  } else {
   if(i55<0.00016401553875766695){
    if(i3<3.7729740142822266e-05){
     s0+=403.0;
     s1+=39.0;
    } else {
     s0+=20.0;
     s1+=69.0;
    }
   } else {
    if(i4<1.0010857582092285){
     s0+=927.0;
     s1+=420.0;
    } else {
     s0+=370.0;
     s1+=3753.0;
    }
   }
  }
 }
} else {
 if(i6<0.00033995509147644043){
  if(i46<-0.0012315528001636267){
   s1+=104.0;
  } else {
   if(i33<0.0006800716510042548){
    s0+=253.0;
   } else {
    if(i35<0.0004190802574157715){
     s1+=88.0;
    } else {
     s0+=76.0;
    }
   }
  }
 } else {
  if(i30<1.1793382167816162){
   if(i49<-3.0443950436165323e-06){
    if(i36<1.088707685470581){
     s1+=9.0;
    } else {
     s0+=393.0;
    }
   } else {
    if(i21<-0.0005976557731628418){
     s0+=12.0;
    } else {
     s1+=1473.0;
    }
   }
  } else {
   if(i51<2.7934876925428398e-05){
    if(i22<0.0001347064971923828){
     s0+=57.0;
     s1+=985.0;
    } else {
     s1+=10842.0;
    }
   } else {
    if(i7<0.006824436131864786){
     s0+=80.0;
    } else {
     s1+=513.0;
    }
   }
  }
 }
}
if(i13<1.0167311429977417){
 if(i7<0.013633918017148972){
  if(i3<8.45789909362793e-05){
   if(i31<1.1162974834442139){
    if(i15<1.0086463689804077){
     s0+=29836.0;
     s1+=2736.0;
    } else {
     s0+=345.0;
     s1+=820.0;
    }
   } else {
    if(i56<1.001725435256958){
     s0+=73016.0;
     s1+=414.0;
    } else {
     s0+=9198.0;
     s1+=1079.0;
    }
   }
  } else {
   if(i49<-4.6168806875357404e-06){
    if(i37<0.0055960919708013535){
     s0+=677.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i35<0.0007004737854003906){
     s0+=28.0;
     s1+=1477.0;
    } else {
     s0+=77.0;
     s1+=252.0;
    }
   }
  }
 } else {
  if(i12<0.04668155312538147){
   if(i43<0.0002891541225835681){
    if(i38<0.04726409912109375){
     s0+=45.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=125.0;
    }
   } else {
    if(i35<0.0009545087814331055){
     s0+=1028.0;
     s1+=72.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   }
  } else {
   if(i43<0.0003566569066606462){
    if(i63<0.0002484718570485711){
     s0+=9.0;
    } else {
     s0+=31.0;
     s1+=2579.0;
    }
   } else {
    if(i12<0.10225528478622437){
     s0+=95.0;
     s1+=55.0;
    } else {
     s0+=22.0;
     s1+=141.0;
    }
   }
  }
 }
} else {
 if(i29<0.00264030322432518){
  if(i35<0.0005367398262023926){
   if(i54<-3.914718035957776e-06){
    if(i16<0.0003209997375961393){
     s0+=34.0;
     s1+=1782.0;
    } else {
     s0+=51.0;
     s1+=4.0;
    }
   } else {
    if(i36<1.0873100757598877){
     s1+=4.0;
    } else {
     s0+=537.0;
     s1+=4.0;
    }
   }
  } else {
   if(i59<0.00450819730758667){
    if(i14<1.0367703437805176){
     s0+=686.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i44<1.108320713043213){
   if(i12<0.12872064113616943){
    if(i9<1.0139777660369873){
     s0+=178.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i5<6.258487701416016e-06){
     s0+=17.0;
    } else {
     s0+=7.0;
     s1+=89.0;
    }
   }
  } else {
   if(i21<-0.0013155639171600342){
    if(i1<-6.775359361199662e-05){
     s0+=14.0;
     s1+=443.0;
    } else {
     s0+=191.0;
     s1+=110.0;
    }
   } else {
    if(i4<1.001513957977295){
     s0+=119.0;
     s1+=135.0;
    } else {
     s0+=106.0;
     s1+=12109.0;
    }
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i3<6.622076034545898e-05){
  if(i33<0.0007188316085375845){
   if(i44<1.1354830265045166){
    if(i11<0.9949754476547241){
     s0+=12676.0;
     s1+=252.0;
    } else {
     s0+=65384.0;
     s1+=152.0;
    }
   } else {
    if(i44<1.1355493068695068){
     s1+=94.0;
    } else {
     s0+=2462.0;
     s1+=30.0;
    }
   }
  } else {
   if(i31<1.1164028644561768){
    if(i37<0.0002005394926527515){
     s0+=2425.0;
    } else {
     s0+=1372.0;
     s1+=3084.0;
    }
   } else {
    if(i20<1.1215944290161133){
     s0+=28965.0;
     s1+=1635.0;
    } else {
     s0+=374.0;
     s1+=1274.0;
    }
   }
  }
 } else {
  if(i44<1.1451921463012695){
   if(i24<0.0009702016250230372){
    if(i34<1.0494179725646973){
     s0+=45.0;
    } else {
     s1+=817.0;
    }
   } else {
    if(i29<0.002368235494941473){
     s0+=1307.0;
    } else {
     s0+=49.0;
     s1+=530.0;
    }
   }
  } else {
   if(i37<0.0018058312125504017){
    s0+=81.0;
   } else {
    if(i43<0.0002940863196272403){
     s0+=1.0;
     s1+=1690.0;
    } else {
     s0+=36.0;
     s1+=115.0;
    }
   }
  }
 }
} else {
 if(i9<1.0143468379974365){
  if(i57<0.08487248420715332){
   if(i24<0.0009984233183786273){
    if(i53<0.9994758367538452){
     s0+=23.0;
    } else {
     s1+=780.0;
    }
   } else {
    if(i52<1.0010403394699097){
     s0+=585.0;
     s1+=20.0;
    } else {
     s0+=395.0;
     s1+=467.0;
    }
   }
  } else {
   if(i4<1.00089430809021){
    if(i28<0.0461697056889534){
     s0+=103.0;
     s1+=16.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i46<-0.00011727373203029856){
     s0+=25.0;
     s1+=1358.0;
    } else {
     s0+=29.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i10<1.020751714706421){
   if(i21<0.0017147660255432129){
    if(i6<0.0016180872917175293){
     s1+=45.0;
    } else {
     s0+=68.0;
     s1+=13.0;
    }
   } else {
    s1+=784.0;
   }
  } else {
   if(i29<0.0006523001356981695){
    if(i33<0.00034286949085071683){
     s0+=2.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i26<0.05860283970832825){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=11114.0;
    }
   }
  }
 }
}
if(i13<1.0181578397750854){
 if(i17<1.008760690689087){
  if(i1<-9.202562796417624e-05){
   if(i59<-0.012772947549819946){
    if(i23<1.1232192516326904){
     s0+=665.0;
     s1+=30.0;
    } else {
     s0+=34.0;
     s1+=105.0;
    }
   } else {
    if(i40<0.002286182716488838){
     s0+=99.0;
     s1+=18.0;
    } else {
     s0+=178.0;
     s1+=1628.0;
    }
   }
  } else {
   if(i18<0.001728216651827097){
    if(i34<1.0776758193969727){
     s0+=23253.0;
     s1+=736.0;
    } else {
     s0+=67669.0;
     s1+=247.0;
    }
   } else {
    if(i4<0.9983162879943848){
     s0+=17068.0;
     s1+=545.0;
    } else {
     s0+=4919.0;
     s1+=3812.0;
    }
   }
  }
 } else {
  if(i57<0.03659433126449585){
   if(i37<0.0012395847588777542){
    if(i31<1.125709891319275){
     s1+=1007.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i17<1.0161001682281494){
     s0+=1162.0;
     s1+=60.0;
    } else {
     s0+=5.0;
     s1+=237.0;
    }
   }
  } else {
   if(i35<0.001722097396850586){
    if(i37<0.0025675420183688402){
     s0+=35.0;
     s1+=232.0;
    } else {
     s0+=11.0;
     s1+=1546.0;
    }
   } else {
    s0+=18.0;
   }
  }
 }
} else {
 if(i39<-1.2242378033988643e-05){
  if(i9<1.0162607431411743){
   if(i45<0.1650111973285675){
    if(i46<-0.00029012482264079154){
     s0+=287.0;
     s1+=1193.0;
    } else {
     s0+=591.0;
     s1+=387.0;
    }
   } else {
    if(i19<0.21526244282722473){
     s0+=66.0;
     s1+=267.0;
    } else {
     s0+=15.0;
     s1+=1714.0;
    }
   }
  } else {
   s1+=10367.0;
  }
 } else {
  if(i18<0.0025644348934292793){
   if(i54<-3.508399004203966e-06){
    if(i56<1.00100576877594){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=78.0;
     s1+=1.0;
    }
   } else {
    s0+=457.0;
   }
  } else {
   if(i33<0.001656081760302186){
    if(i6<-0.0005084872245788574){
     s0+=6.0;
    } else {
     s1+=58.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
}
if(i1<-8.453788905171677e-05){
 if(i26<0.041246384382247925){
  if(i22<-0.0003533363342285156){
   if(i74<0.04770629480481148){
    if(i54<-2.2208008886082098e-05){
     s1+=4.0;
    } else {
     s0+=801.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.09556984901428223){
     s0+=42.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=39.0;
    }
   }
  } else {
   if(i64<-1.8276250557391904e-06){
    if(i13<0.8592110872268677){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=76.0;
    }
   } else {
    if(i24<0.007425935938954353){
     s0+=58.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i52<0.9982832074165344){
   s0+=255.0;
  } else {
   if(i26<0.10130399465560913){
    if(i9<0.971065878868103){
     s0+=85.0;
     s1+=24.0;
    } else {
     s0+=90.0;
     s1+=907.0;
    }
   } else {
    if(i16<0.0007059713825583458){
     s0+=96.0;
     s1+=15098.0;
    } else {
     s0+=49.0;
    }
   }
  }
 }
} else {
 if(i33<0.0007078940398059785){
  if(i22<0.00021278858184814453){
   if(i64<-4.8274878281517886e-06){
    if(i30<1.3585253953933716){
     s0+=5.0;
     s1+=99.0;
    } else {
     s0+=51.0;
    }
   } else {
    if(i58<0.001905535813421011){
     s0+=77244.0;
     s1+=354.0;
    } else {
     s0+=3255.0;
     s1+=168.0;
    }
   }
  } else {
   if(i64<-3.669175839604577e-06){
    s1+=333.0;
   } else {
    s0+=97.0;
   }
  }
 } else {
  if(i3<-3.045797348022461e-05){
   if(i8<0.9934877157211304){
    if(i31<1.1164028644561768){
     s0+=249.0;
     s1+=294.0;
    } else {
     s0+=8809.0;
     s1+=304.0;
    }
   } else {
    if(i13<0.9751864671707153){
     s0+=6.0;
     s1+=17.0;
    } else {
     s0+=16139.0;
     s1+=127.0;
    }
   }
  } else {
   if(i18<0.0018620854243636131){
    if(i28<0.009140701033174992){
     s0+=4814.0;
     s1+=274.0;
    } else {
     s0+=307.0;
     s1+=477.0;
    }
   } else {
    if(i37<0.00022714052465744317){
     s0+=1478.0;
    } else {
     s0+=2732.0;
     s1+=5527.0;
    }
   }
  }
 }
}
if(i6<0.0005647540092468262){
 if(i27<1.0219312906265259){
  if(i39<-3.3651893318165094e-05){
   if(i68<-0.0007594854105263948){
    if(i11<0.9423253536224365){
     s0+=25.0;
     s1+=11.0;
    } else {
     s0+=23.0;
     s1+=261.0;
    }
   } else {
    if(i23<1.1411972045898438){
     s0+=552.0;
     s1+=21.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   }
  } else {
   if(i18<0.001569476444274187){
    if(i61<-0.0004277825355529785){
     s0+=13342.0;
     s1+=374.0;
    } else {
     s0+=72756.0;
     s1+=292.0;
    }
   } else {
    if(i6<-0.00013178586959838867){
     s0+=16469.0;
     s1+=283.0;
    } else {
     s0+=6169.0;
     s1+=2962.0;
    }
   }
  }
 } else {
  if(i8<1.0196764469146729){
   if(i53<1.0003105401992798){
    if(i20<1.0542371273040771){
     s1+=13.0;
    } else {
     s0+=475.0;
     s1+=28.0;
    }
   } else {
    if(i7<0.0038954271003603935){
     s0+=245.0;
     s1+=16.0;
    } else {
     s0+=13.0;
     s1+=332.0;
    }
   }
  } else {
   if(i4<1.0012108087539673){
    if(i28<0.03282773122191429){
     s0+=108.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   } else {
    if(i44<1.7041046619415283){
     s0+=13.0;
     s1+=357.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i19<0.15890279412269592){
  if(i30<1.056142807006836){
   s0+=1468.0;
  } else {
   if(i35<0.0005793571472167969){
    if(i30<1.116804838180542){
     s0+=81.0;
     s1+=2909.0;
    } else {
     s0+=901.0;
     s1+=1136.0;
    }
   } else {
    if(i7<0.005846390035003424){
     s0+=3017.0;
     s1+=134.0;
    } else {
     s0+=788.0;
     s1+=1454.0;
    }
   }
  }
 } else {
  if(i37<0.0019930554553866386){
   if(i24<0.0009867369662970304){
    s1+=42.0;
   } else {
    if(i40<0.002229326870292425){
     s0+=290.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i64<1.7906560970004648e-05){
    if(i21<-0.0014759302139282227){
     s0+=76.0;
     s1+=825.0;
    } else {
     s0+=6.0;
     s1+=12489.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
}
if(i5<2.3424625396728516e-05){
 if(i19<0.21933749318122864){
  if(i10<1.0092968940734863){
   if(i28<0.006744748912751675){
    if(i7<0.0016256094677373767){
     s0+=52937.0;
     s1+=145.0;
    } else {
     s0+=14910.0;
     s1+=363.0;
    }
   } else {
    if(i5<-5.364418029785156e-07){
     s0+=35535.0;
     s1+=745.0;
    } else {
     s0+=5361.0;
     s1+=2686.0;
    }
   }
  } else {
   if(i7<0.003935899585485458){
    if(i55<0.00012459864956326783){
     s0+=1258.0;
     s1+=36.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   } else {
    if(i54<-2.359127847739728e-06){
     s0+=81.0;
     s1+=763.0;
    } else {
     s0+=203.0;
    }
   }
  }
 } else {
  if(i54<-3.7133613659534603e-06){
   if(i32<0.004470331594347954){
    if(i64<6.175051566970069e-06){
     s0+=4.0;
     s1+=33.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i39<-8.205975973396562e-06){
     s0+=9.0;
     s1+=631.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i62<0.00557936355471611){
    if(i7<0.007417214103043079){
     s0+=126.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i36<1.1714401245117188){
  if(i7<0.0034688643645495176){
   if(i51<-1.3959424904896878e-05){
    if(i40<0.0011993105290457606){
     s0+=18.0;
     s1+=381.0;
    } else {
     s0+=71.0;
     s1+=8.0;
    }
   } else {
    if(i61<0.0026602447032928467){
     s0+=4079.0;
     s1+=82.0;
    } else {
     s0+=21.0;
     s1+=18.0;
    }
   }
  } else {
   if(i35<0.000462949275970459){
    if(i56<1.0001651048660278){
     s0+=47.0;
    } else {
     s0+=48.0;
     s1+=2555.0;
    }
   } else {
    if(i36<1.1332385540008545){
     s0+=642.0;
     s1+=55.0;
    } else {
     s0+=245.0;
     s1+=652.0;
    }
   }
  }
 } else {
  if(i19<0.08144751191139221){
   if(i17<0.9991158843040466){
    if(i67<0.008223329670727253){
     s0+=418.0;
     s1+=8.0;
    } else {
     s0+=222.0;
     s1+=139.0;
    }
   } else {
    if(i28<0.030987504869699478){
     s0+=73.0;
     s1+=122.0;
    } else {
     s0+=36.0;
     s1+=270.0;
    }
   }
  } else {
   if(i44<1.1076223850250244){
    if(i9<0.9960464835166931){
     s0+=179.0;
     s1+=80.0;
    } else {
     s0+=11.0;
     s1+=176.0;
    }
   } else {
    if(i55<0.004571220837533474){
     s0+=110.0;
     s1+=14200.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i19<0.1921253204345703){
 if(i3<6.312131881713867e-05){
  if(i7<0.0037441218737512827){
   if(i20<1.0179111957550049){
    if(i43<3.6563302273862064e-05){
     s0+=5735.0;
     s1+=6.0;
    } else {
     s0+=4878.0;
     s1+=594.0;
    }
   } else {
    if(i28<0.006074696779251099){
     s0+=58938.0;
     s1+=124.0;
    } else {
     s0+=20684.0;
     s1+=464.0;
    }
   }
  } else {
   if(i3<-2.3543834686279297e-05){
    if(i4<0.9974368810653687){
     s0+=19216.0;
     s1+=313.0;
    } else {
     s0+=1820.0;
     s1+=468.0;
    }
   } else {
    if(i16<0.0006711222813464701){
     s0+=1603.0;
     s1+=4207.0;
    } else {
     s0+=527.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   if(i45<0.07061201333999634){
    if(i40<0.0011278614401817322){
     s0+=114.0;
     s1+=2085.0;
    } else {
     s0+=441.0;
     s1+=13.0;
    }
   } else {
    if(i58<0.0007468222756870091){
     s0+=8.0;
     s1+=242.0;
    } else {
     s0+=1516.0;
     s1+=42.0;
    }
   }
  } else {
   if(i52<1.000950813293457){
    if(i22<-0.00032025575637817383){
     s0+=72.0;
     s1+=56.0;
    } else {
     s0+=30.0;
     s1+=372.0;
    }
   } else {
    if(i33<0.004081865306943655){
     s0+=11.0;
     s1+=2346.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i39<-1.1532851203810424e-05){
  if(i7<0.0030903606675565243){
   if(i25<1.0122909545898438){
    if(i11<1.0262134075164795){
     s0+=121.0;
     s1+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=82.0;
   }
  } else {
   if(i37<0.0017294685821980238){
    s0+=7.0;
   } else {
    if(i7<0.006555674597620964){
     s0+=48.0;
     s1+=405.0;
    } else {
     s0+=16.0;
     s1+=12554.0;
    }
   }
  }
 } else {
  if(i38<0.11671194434165955){
   if(i28<0.035550810396671295){
    if(i24<0.004906848073005676){
     s0+=585.0;
     s1+=6.0;
    } else {
     s0+=37.0;
     s1+=7.0;
    }
   } else {
    if(i31<1.313255786895752){
     s1+=5.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i36<1.2799794673919678){
    s1+=17.0;
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i9<1.0124841928482056){
 if(i12<0.1933382749557495){
  if(i6<0.0003457069396972656){
   if(i35<5.632638931274414e-05){
    if(i60<1.0003564357757568){
     s0+=52152.0;
     s1+=148.0;
    } else {
     s0+=21014.0;
     s1+=500.0;
    }
   } else {
    if(i52<1.0008677244186401){
     s0+=15720.0;
     s1+=1900.0;
    } else {
     s0+=16188.0;
     s1+=454.0;
    }
   }
  } else {
   if(i67<0.0029637785628437996){
    if(i59<0.0013732314109802246){
     s0+=8753.0;
     s1+=2125.0;
    } else {
     s0+=923.0;
     s1+=1041.0;
    }
   } else {
    if(i55<0.0027041074354201555){
     s0+=621.0;
     s1+=1672.0;
    } else {
     s0+=473.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i54<-3.9681272028246894e-06){
   if(i1<-4.314623947720975e-05){
    if(i34<1.141118049621582){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=2645.0;
    }
   } else {
    if(i38<0.06632305681705475){
     s0+=141.0;
     s1+=41.0;
    } else {
     s0+=29.0;
     s1+=204.0;
    }
   }
  } else {
   if(i7<0.007984324358403683){
    if(i53<1.0049235820770264){
     s0+=355.0;
     s1+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=15.0;
   }
  }
 }
} else {
 if(i32<0.0019804779440164566){
  if(i63<0.0007997699431143701){
   if(i36<1.117074966430664){
    if(i35<0.0009111762046813965){
     s1+=1415.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i6<0.002910017967224121){
     s0+=42.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i40<0.0009171342826448381){
    s1+=65.0;
   } else {
    s0+=359.0;
   }
  }
 } else {
  if(i3<3.546476364135742e-05){
   if(i51<7.549405836471124e-06){
    if(i6<0.0005017518997192383){
     s0+=26.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=90.0;
   }
  } else {
   if(i21<0.0005813241004943848){
    if(i28<0.00897069089114666){
     s0+=4.0;
     s1+=4.0;
    } else {
     s1+=199.0;
    }
   } else {
    s1+=11257.0;
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i23<1.1402404308319092){
  if(i35<0.00011008977890014648){
   if(i33<0.0006245356635190547){
    if(i23<1.023176908493042){
     s0+=10265.0;
     s1+=139.0;
    } else {
     s0+=52064.0;
     s1+=35.0;
    }
   } else {
    if(i29<0.0003233976603951305){
     s0+=652.0;
     s1+=672.0;
    } else {
     s0+=19474.0;
     s1+=463.0;
    }
   }
  } else {
   if(i24<0.0009388724574819207){
    if(i31<1.0842654705047607){
     s0+=4789.0;
     s1+=1122.0;
    } else {
     s0+=9.0;
     s1+=1606.0;
    }
   } else {
    if(i2<1.002416729927063){
     s0+=21877.0;
     s1+=634.0;
    } else {
     s0+=3713.0;
     s1+=1459.0;
    }
   }
  }
 } else {
  if(i33<0.0006467708153650165){
   if(i33<0.0006308010197244585){
    s0+=979.0;
   } else {
    if(i59<0.002905130386352539){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i26<0.0014938712120056152){
    if(i7<0.020278040319681168){
     s0+=90.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i23<1.1703245639801025){
     s0+=170.0;
     s1+=510.0;
    } else {
     s0+=9.0;
     s1+=1554.0;
    }
   }
  }
 }
} else {
 if(i35<0.0015603303909301758){
  if(i1<-7.376159919658676e-05){
   if(i52<0.9983766674995422){
    if(i28<0.12271809577941895){
     s0+=170.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i10<0.9381884336471558){
     s0+=35.0;
     s1+=23.0;
    } else {
     s0+=105.0;
     s1+=14575.0;
    }
   }
  } else {
   if(i18<0.0019438646268099546){
    if(i16<0.00021974334958940744){
     s1+=455.0;
    } else {
     s0+=885.0;
    }
   } else {
    if(i33<0.0014459716621786356){
     s0+=62.0;
     s1+=1172.0;
    } else {
     s0+=196.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i31<1.3808014392852783){
   s0+=599.0;
  } else {
   s1+=138.0;
  }
 }
}
if(i4<1.0038650035858154){
 if(i19<0.2179235816001892){
  if(i2<1.0024135112762451){
   if(i10<1.0092169046401978){
    if(i35<7.086992263793945e-05){
     s0+=75429.0;
     s1+=748.0;
    } else {
     s0+=32500.0;
     s1+=2892.0;
    }
   } else {
    if(i39<-1.2230574611749034e-05){
     s0+=289.0;
     s1+=638.0;
    } else {
     s0+=1026.0;
     s1+=48.0;
    }
   }
  } else {
   if(i67<0.002496970584616065){
    if(i7<0.004419243894517422){
     s0+=1397.0;
     s1+=52.0;
    } else {
     s0+=694.0;
     s1+=347.0;
    }
   } else {
    if(i26<0.04683154821395874){
     s0+=541.0;
     s1+=124.0;
    } else {
     s0+=252.0;
     s1+=790.0;
    }
   }
  }
 } else {
  if(i31<1.185621738433838){
   s0+=41.0;
  } else {
   if(i18<0.0015740875387564301){
    if(i35<0.00017142295837402344){
     s0+=90.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i1<-1.5970761523931287e-05){
     s0+=17.0;
     s1+=1034.0;
    } else {
     s0+=18.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i32<0.0011464820709079504){
   if(i31<1.0610902309417725){
    s0+=643.0;
   } else {
    if(i60<1.0032024383544922){
     s0+=25.0;
     s1+=2408.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i36<1.0887261629104614){
    if(i33<0.0004666943568736315){
     s0+=2.0;
    } else {
     s1+=247.0;
    }
   } else {
    if(i24<0.0022889948450028896){
     s0+=3352.0;
     s1+=20.0;
    } else {
     s0+=24.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i19<0.0713396668434143){
   if(i48<1.002903699874878){
    if(i72<-0.02367156744003296){
     s0+=31.0;
     s1+=256.0;
    } else {
     s0+=32.0;
     s1+=16.0;
    }
   } else {
    if(i52<1.0012561082839966){
     s0+=121.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i9<0.9935282468795776){
    if(i30<1.1958844661712646){
     s0+=12.0;
    } else {
     s0+=27.0;
     s1+=563.0;
    }
   } else {
    if(i22<5.620718002319336e-05){
     s0+=45.0;
     s1+=1621.0;
    } else {
     s1+=12206.0;
    }
   }
  }
 }
}
if(i15<1.017686367034912){
 if(i7<0.013943055644631386){
  if(i5<1.8298625946044922e-05){
   if(i2<0.9995348453521729){
    if(i34<1.0905301570892334){
     s0+=15588.0;
     s1+=285.0;
    } else {
     s0+=38165.0;
     s1+=41.0;
    }
   } else {
    if(i38<0.017249926924705505){
     s0+=44537.0;
     s1+=1093.0;
    } else {
     s0+=8798.0;
     s1+=2198.0;
    }
   }
  } else {
   if(i16<0.00026430917205289006){
    if(i21<0.0008056759834289551){
     s0+=1328.0;
     s1+=996.0;
    } else {
     s0+=62.0;
     s1+=2090.0;
    }
   } else {
    if(i41<0.9879418611526489){
     s0+=438.0;
     s1+=272.0;
    } else {
     s0+=5183.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i9<0.9689464569091797){
   if(i74<0.04929930716753006){
    if(i12<0.10194551944732666){
     s0+=942.0;
     s1+=75.0;
    } else {
     s0+=24.0;
     s1+=125.0;
    }
   } else {
    if(i10<0.8491411209106445){
     s0+=3.0;
    } else {
     s0+=8.0;
     s1+=60.0;
    }
   }
  } else {
   if(i40<0.0007760283187963068){
    s0+=10.0;
   } else {
    if(i22<-0.0003287196159362793){
     s0+=89.0;
     s1+=836.0;
    } else {
     s0+=3.0;
     s1+=2007.0;
    }
   }
  }
 }
} else {
 if(i0<0.00025406479835510254){
  if(i28<0.028588145971298218){
   if(i43<0.0001736623526085168){
    if(i30<1.1049463748931885){
     s1+=9.0;
    } else {
     s0+=585.0;
     s1+=16.0;
    }
   } else {
    s1+=29.0;
   }
  } else {
   if(i26<0.10781130194664001){
    if(i30<1.0887749195098877){
     s1+=1.0;
    } else {
     s0+=53.0;
     s1+=2.0;
    }
   } else {
    if(i1<-2.90438601950882e-05){
     s0+=12.0;
     s1+=393.0;
    } else {
     s0+=95.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i16<0.0007216791855171323){
   if(i39<-1.3516168110072613e-05){
    if(i19<0.05952543020248413){
     s0+=35.0;
     s1+=13.0;
    } else {
     s0+=109.0;
     s1+=13414.0;
    }
   } else {
    if(i55<5.502005296875723e-05){
     s0+=82.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   s0+=442.0;
  }
 }
}
if(i17<1.0081478357315063){
 if(i13<1.020301103591919){
  if(i33<0.0007445220835506916){
   if(i18<0.002082128543406725){
    if(i44<1.1354830265045166){
     s0+=78735.0;
     s1+=450.0;
    } else {
     s0+=2340.0;
     s1+=122.0;
    }
   } else {
    if(i55<0.00019951823924202472){
     s0+=161.0;
    } else {
     s0+=53.0;
     s1+=107.0;
    }
   }
  } else {
   if(i23<1.1391525268554688){
    if(i3<-3.045797348022461e-05){
     s0+=24688.0;
     s1+=682.0;
    } else {
     s0+=7283.0;
     s1+=4555.0;
    }
   } else {
    if(i28<0.03348161280155182){
     s0+=214.0;
     s1+=106.0;
    } else {
     s0+=63.0;
     s1+=1367.0;
    }
   }
  }
 } else {
  if(i33<0.0006153655704110861){
   if(i1<-8.996267570182681e-05){
    if(i44<1.1239575147628784){
     s0+=2.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i0<0.001698911190032959){
     s0+=379.0;
     s1+=12.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i50<0.044925957918167114){
    if(i0<0.0001323223114013672){
     s0+=251.0;
     s1+=44.0;
    } else {
     s0+=109.0;
     s1+=803.0;
    }
   } else {
    if(i3<-0.0007085204124450684){
     s0+=9.0;
    } else {
     s0+=50.0;
     s1+=2192.0;
    }
   }
  }
 }
} else {
 if(i0<0.0017899870872497559){
  if(i40<0.00198149960488081){
   if(i35<0.0004798769950866699){
    if(i64<2.919956386904232e-06){
     s0+=76.0;
     s1+=1019.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i36<1.1729364395141602){
     s0+=1536.0;
     s1+=9.0;
    } else {
     s1+=52.0;
    }
   }
  } else {
   if(i18<0.0015596479643136263){
    s0+=21.0;
   } else {
    if(i34<1.133331298828125){
     s0+=2.0;
    } else {
     s1+=1132.0;
    }
   }
  }
 } else {
  if(i35<0.0017054975032806396){
   if(i56<1.0012900829315186){
    if(i30<1.2601135969161987){
     s0+=80.0;
    } else {
     s1+=238.0;
    }
   } else {
    if(i16<0.0009445130126550794){
     s0+=4.0;
     s1+=11617.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   s0+=179.0;
  }
 }
}
if(i12<0.18659314513206482){
 if(i22<0.00020819902420043945){
  if(i18<0.0017930833855643868){
   if(i20<1.0178465843200684){
    if(i39<-1.2219673408253584e-05){
     s0+=85.0;
     s1+=76.0;
    } else {
     s0+=10449.0;
     s1+=457.0;
    }
   } else {
    if(i7<0.002406792715191841){
     s0+=63952.0;
     s1+=214.0;
    } else {
     s0+=18291.0;
     s1+=468.0;
    }
   }
  } else {
   if(i30<1.1164028644561768){
    if(i56<1.0000250339508057){
     s0+=2094.0;
     s1+=179.0;
    } else {
     s0+=640.0;
     s1+=3046.0;
    }
   } else {
    if(i17<0.9996350407600403){
     s0+=17434.0;
     s1+=1175.0;
    } else {
     s0+=1854.0;
     s1+=1897.0;
    }
   }
  }
 } else {
  if(i54<-3.703567199409008e-05){
   if(i57<0.14618360996246338){
    s0+=197.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i2<1.0020883083343506){
    if(i8<1.0303330421447754){
     s0+=276.0;
     s1+=3.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i38<0.011434000916779041){
     s0+=410.0;
     s1+=872.0;
    } else {
     s0+=80.0;
     s1+=2919.0;
    }
   }
  }
 }
} else {
 if(i2<1.0017132759094238){
  if(i37<0.008754806593060493){
   if(i57<0.06627205014228821){
    if(i7<0.008256334811449051){
     s0+=507.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i60<1.0014493465423584){
     s0+=86.0;
     s1+=7.0;
    } else {
     s0+=32.0;
     s1+=61.0;
    }
   }
  } else {
   if(i12<0.20512127876281738){
    if(i31<1.459856390953064){
     s0+=16.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i50<0.019815512001514435){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=369.0;
    }
   }
  }
 } else {
  if(i46<-0.0002309538540430367){
   if(i7<0.0032173320651054382){
    if(i17<0.9993524551391602){
     s0+=29.0;
    } else {
     s0+=4.0;
     s1+=64.0;
    }
   } else {
    if(i29<0.002099707955494523){
     s0+=1.0;
    } else {
     s0+=5.0;
     s1+=11369.0;
    }
   }
  } else {
   if(i30<1.1729364395141602){
    s0+=107.0;
   } else {
    if(i70<0.16304290294647217){
     s0+=9.0;
     s1+=946.0;
    } else {
     s0+=21.0;
     s1+=95.0;
    }
   }
  }
 }
}
if(i4<1.0038644075393677){
 if(i58<0.011903461068868637){
  if(i8<1.0124268531799316){
   if(i5<1.8298625946044922e-05){
    if(i38<0.01134202815592289){
     s0+=64822.0;
     s1+=560.0;
    } else {
     s0+=41854.0;
     s1+=2984.0;
    }
   } else {
    if(i19<0.053127020597457886){
     s0+=2319.0;
     s1+=157.0;
    } else {
     s0+=1584.0;
     s1+=1083.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    if(i54<-9.86442591965897e-06){
     s0+=5.0;
    } else {
     s1+=318.0;
    }
   } else {
    if(i7<0.006220854353159666){
     s0+=646.0;
     s1+=38.0;
    } else {
     s0+=30.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i20<1.0915982723236084){
   if(i12<0.08840763568878174){
    if(i23<1.0917118787765503){
     s0+=637.0;
     s1+=4.0;
    } else {
     s0+=120.0;
     s1+=23.0;
    }
   } else {
    if(i44<1.1228655576705933){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=32.0;
    }
   }
  } else {
   if(i28<0.038817331194877625){
    if(i18<0.004828453063964844){
     s0+=215.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=19.0;
    }
   } else {
    if(i35<0.0008177757263183594){
     s0+=1.0;
     s1+=1049.0;
    } else {
     s0+=20.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i7<0.003936316817998886){
  if(i32<0.0006093695992603898){
   if(i22<0.00015467405319213867){
    if(i7<0.0035215639509260654){
     s0+=663.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i37<0.00019191912724636495){
     s0+=8.0;
    } else {
     s1+=756.0;
    }
   }
  } else {
   if(i32<0.001978039275854826){
    s0+=3196.0;
   } else {
    if(i30<1.4667320251464844){
     s1+=263.0;
    } else {
     s0+=50.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i39<-1.363450337521499e-05){
   if(i36<1.1401267051696777){
    if(i63<0.0007089986465871334){
     s0+=5.0;
     s1+=1897.0;
    } else {
     s0+=312.0;
     s1+=292.0;
    }
   } else {
    if(i26<0.10445559024810791){
     s0+=79.0;
     s1+=711.0;
    } else {
     s0+=14.0;
     s1+=13651.0;
    }
   }
  } else {
   if(i64<-2.599118488433305e-06){
    s1+=18.0;
   } else {
    if(i66<0.0003892792738042772){
     s1+=1.0;
    } else {
     s0+=47.0;
    }
   }
  }
 }
}
if(i13<1.0181405544281006){
 if(i6<0.0009673833847045898){
  if(i1<-0.0001045521639753133){
   if(i38<0.10859476774930954){
    if(i23<1.0463327169418335){
     s0+=208.0;
     s1+=8.0;
    } else {
     s0+=151.0;
     s1+=144.0;
    }
   } else {
    if(i23<1.031775712966919){
     s0+=46.0;
    } else {
     s0+=18.0;
     s1+=600.0;
    }
   }
  } else {
   if(i18<0.0017282022163271904){
    if(i37<0.0003370106569491327){
     s0+=19696.0;
     s1+=649.0;
    } else {
     s0+=70744.0;
     s1+=331.0;
    }
   } else {
    if(i24<0.0009401060524396598){
     s0+=2372.0;
     s1+=2976.0;
    } else {
     s0+=19236.0;
     s1+=1204.0;
    }
   }
  }
 } else {
  if(i67<0.0028703873977065086){
   if(i16<0.0003923051990568638){
    if(i10<0.9869884252548218){
     s0+=143.0;
     s1+=141.0;
    } else {
     s0+=105.0;
     s1+=1550.0;
    }
   } else {
    if(i50<0.04702571779489517){
     s0+=1798.0;
     s1+=14.0;
    } else {
     s0+=36.0;
     s1+=75.0;
    }
   }
  } else {
   if(i11<0.9566088318824768){
    if(i19<0.0031147003173828125){
     s0+=83.0;
     s1+=20.0;
    } else {
     s0+=74.0;
     s1+=195.0;
    }
   } else {
    if(i52<0.9986929893493652){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=124.0;
     s1+=2434.0;
    }
   }
  }
 }
} else {
 if(i18<0.001589713734574616){
  if(i21<0.0017200112342834473){
   if(i36<1.0840215682983398){
    s1+=38.0;
   } else {
    if(i43<3.2857042242540047e-05){
     s0+=707.0;
     s1+=1.0;
    } else {
     s0+=63.0;
     s1+=47.0;
    }
   }
  } else {
   if(i6<0.0013874173164367676){
    if(i4<1.0087262392044067){
     s0+=18.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=475.0;
   }
  }
 } else {
  if(i52<0.9983292818069458){
   s0+=105.0;
  } else {
   if(i21<-0.001386106014251709){
    if(i34<1.2320208549499512){
     s0+=205.0;
     s1+=85.0;
    } else {
     s0+=67.0;
     s1+=373.0;
    }
   } else {
    if(i49<-6.084856067900546e-06){
     s0+=46.0;
     s1+=7.0;
    } else {
     s0+=292.0;
     s1+=13131.0;
    }
   }
  }
 }
}
if(i2<1.0026252269744873){
 if(i45<0.20681965351104736){
  if(i27<1.021047592163086){
   if(i33<0.0007064561941660941){
    if(i18<0.0008389424765482545){
     s0+=63361.0;
     s1+=78.0;
    } else {
     s0+=15012.0;
     s1+=277.0;
    }
   } else {
    if(i25<0.9982082843780518){
     s0+=20572.0;
     s1+=353.0;
    } else {
     s0+=10531.0;
     s1+=3441.0;
    }
   }
  } else {
   if(i23<1.086853265762329){
    if(i30<1.1176170110702515){
     s0+=23.0;
     s1+=503.0;
    } else {
     s0+=104.0;
     s1+=6.0;
    }
   } else {
    if(i33<0.0007268291665241122){
     s0+=468.0;
     s1+=9.0;
    } else {
     s0+=248.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i39<-8.016733772819862e-06){
   if(i71<-9.582905704519362e-07){
    if(i3<-4.112720489501953e-05){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i32<0.001966634998098016){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=690.0;
    }
   }
  } else {
   if(i66<0.0017373948357999325){
    if(i13<0.99606853723526){
     s1+=1.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=130.0;
   }
  }
 }
} else {
 if(i36<1.171312928199768){
  if(i47<9.953975677490234e-06){
   if(i21<0.0007124543190002441){
    if(i28<0.012412119656801224){
     s0+=580.0;
     s1+=89.0;
    } else {
     s0+=118.0;
     s1+=409.0;
    }
   } else {
    if(i39<-4.961642116541043e-05){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=86.0;
     s1+=2509.0;
    }
   }
  } else {
   if(i7<0.006828224286437035){
    if(i17<1.0151722431182861){
     s0+=4084.0;
     s1+=143.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i27<0.9971075057983398){
     s0+=73.0;
     s1+=105.0;
    } else {
     s0+=2.0;
     s1+=315.0;
    }
   }
  }
 } else {
  if(i4<1.0011076927185059){
   if(i19<0.08324357867240906){
    if(i38<0.17147967219352722){
     s0+=604.0;
     s1+=79.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i33<0.002122703241184354){
     s0+=105.0;
     s1+=43.0;
    } else {
     s0+=49.0;
     s1+=244.0;
    }
   }
  } else {
   if(i19<0.0713396668434143){
    if(i22<-8.732080459594727e-05){
     s0+=216.0;
     s1+=168.0;
    } else {
     s0+=2.0;
     s1+=163.0;
    }
   } else {
    if(i1<-4.4181961129652336e-05){
     s0+=82.0;
     s1+=14091.0;
    } else {
     s0+=101.0;
     s1+=311.0;
    }
   }
  }
 }
}
if(i21<0.0013865232467651367){
 if(i19<0.20461061596870422){
  if(i5<1.3649463653564453e-05){
   if(i32<0.0009854367235675454){
    if(i34<1.05497145652771){
     s0+=19959.0;
     s1+=121.0;
    } else {
     s0+=10426.0;
     s1+=1867.0;
    }
   } else {
    if(i69<0.12951938807964325){
     s0+=67278.0;
     s1+=449.0;
    } else {
     s0+=7429.0;
     s1+=602.0;
    }
   }
  } else {
   if(i38<0.02637738361954689){
    if(i18<0.0019725149031728506){
     s0+=5766.0;
     s1+=127.0;
    } else {
     s0+=2141.0;
     s1+=1308.0;
    }
   } else {
    if(i43<9.682110976427794e-05){
     s0+=221.0;
     s1+=1407.0;
    } else {
     s0+=2049.0;
     s1+=1941.0;
    }
   }
  }
 } else {
  if(i18<0.002366693690419197){
   if(i13<1.0180604457855225){
    if(i54<-6.478334398707375e-06){
     s0+=38.0;
     s1+=14.0;
    } else {
     s0+=262.0;
     s1+=1.0;
    }
   } else {
    if(i39<-1.045754015649436e-05){
     s0+=1.0;
     s1+=43.0;
    } else {
     s0+=27.0;
    }
   }
  } else {
   if(i39<-7.698168701608665e-06){
    if(i28<0.02960004098713398){
     s0+=36.0;
     s1+=154.0;
    } else {
     s0+=26.0;
     s1+=3005.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
} else {
 if(i52<0.9983766674995422){
  if(i45<0.4510025084018707){
   s0+=349.0;
  } else {
   s1+=1.0;
  }
 } else {
  if(i14<1.0217630863189697){
   if(i16<0.000697620096616447){
    if(i54<-5.36556399310939e-06){
     s0+=14.0;
     s1+=2826.0;
    } else {
     s0+=179.0;
    }
   } else {
    s0+=396.0;
   }
  } else {
   if(i32<0.001632842468097806){
    if(i16<0.0005851267487742007){
     s1+=494.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i4<1.003078818321228){
     s0+=10.0;
     s1+=26.0;
    } else {
     s1+=9816.0;
    }
   }
  }
 }
}
if(i3<6.562471389770508e-05){
 if(i1<-8.107854228001088e-05){
  if(i14<0.9264670610427856){
   if(i26<0.04860055446624756){
    if(i33<0.0031781939323991537){
     s0+=810.0;
     s1+=31.0;
    } else {
     s0+=26.0;
     s1+=37.0;
    }
   } else {
    if(i23<1.0949643850326538){
     s0+=91.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=147.0;
    }
   }
  } else {
   if(i28<0.016772158443927765){
    if(i11<1.0166094303131104){
     s0+=235.0;
     s1+=39.0;
    } else {
     s0+=6.0;
     s1+=56.0;
    }
   } else {
    if(i20<1.0441107749938965){
     s0+=63.0;
     s1+=57.0;
    } else {
     s0+=22.0;
     s1+=2028.0;
    }
   }
  }
 } else {
  if(i13<1.0181355476379395){
   if(i60<1.0004554986953735){
    if(i35<8.064508438110352e-05){
     s0+=55297.0;
     s1+=211.0;
    } else {
     s0+=6447.0;
     s1+=639.0;
    }
   } else {
    if(i40<0.0008533555082976818){
     s0+=14611.0;
     s1+=2271.0;
    } else {
     s0+=35768.0;
     s1+=1770.0;
    }
   }
  } else {
   if(i7<0.005379930138587952){
    if(i13<1.01902437210083){
     s0+=82.0;
     s1+=32.0;
    } else {
     s0+=829.0;
     s1+=44.0;
    }
   } else {
    if(i11<0.9786495566368103){
     s0+=19.0;
    } else {
     s0+=50.0;
     s1+=848.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i44<1.0869626998901367){
   if(i6<0.0006029605865478516){
    s0+=33.0;
   } else {
    if(i34<1.0494179725646973){
     s0+=46.0;
    } else {
     s0+=42.0;
     s1+=2053.0;
    }
   }
  } else {
   if(i17<1.0144357681274414){
    if(i63<0.000532963895238936){
     s0+=5.0;
     s1+=87.0;
    } else {
     s0+=1777.0;
     s1+=54.0;
    }
   } else {
    if(i24<0.0012397919781506062){
     s1+=91.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i9<0.9753731489181519){
   if(i35<0.0006285309791564941){
    if(i70<0.05340579152107239){
     s0+=41.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i63<0.0013013696298003197){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=77.0;
    }
   }
  } else {
   if(i11<1.0026607513427734){
    if(i44<1.075517177581787){
     s0+=25.0;
     s1+=28.0;
    } else {
     s0+=39.0;
     s1+=1760.0;
    }
   } else {
    if(i0<0.001141965389251709){
     s0+=13.0;
     s1+=266.0;
    } else {
     s0+=6.0;
     s1+=11786.0;
    }
   }
  }
 }
}
if(i11<1.0139765739440918){
 if(i1<-7.40064715500921e-05){
  if(i12<0.034398436546325684){
   if(i21<-0.0018736720085144043){
    if(i74<0.05141177400946617){
     s0+=1163.0;
     s1+=30.0;
    } else {
     s0+=35.0;
     s1+=58.0;
    }
   } else {
    if(i0<0.00017559528350830078){
     s0+=56.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=117.0;
    }
   }
  } else {
   if(i56<1.0006740093231201){
    if(i28<0.033198870718479156){
     s0+=451.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=200.0;
    }
   } else {
    if(i10<0.9249628782272339){
     s0+=109.0;
     s1+=30.0;
    } else {
     s0+=235.0;
     s1+=4340.0;
    }
   }
  }
 } else {
  if(i18<0.0017415544716641307){
   if(i51<-1.3609610505227465e-05){
    if(i34<1.105151891708374){
     s1+=199.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i33<0.0006161645287647843){
     s0+=74280.0;
     s1+=273.0;
    } else {
     s0+=17432.0;
     s1+=723.0;
    }
   }
  } else {
   if(i31<1.1164028644561768){
    if(i26<0.04913532733917236){
     s0+=1845.0;
     s1+=717.0;
    } else {
     s0+=683.0;
     s1+=2447.0;
    }
   } else {
    if(i2<1.0022783279418945){
     s0+=16392.0;
     s1+=459.0;
    } else {
     s0+=2374.0;
     s1+=1201.0;
    }
   }
  }
 }
} else {
 if(i5<1.1146068572998047e-05){
  if(i32<0.020746516063809395){
   if(i24<0.0025773493107408285){
    if(i0<-0.00036200881004333496){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=274.0;
    }
   } else {
    if(i35<0.00014698505401611328){
     s0+=5.0;
     s1+=39.0;
    } else {
     s0+=97.0;
    }
   }
  } else {
   s1+=86.0;
  }
 } else {
  if(i11<1.0170689821243286){
   if(i30<1.1177868843078613){
    if(i31<1.1280226707458496){
     s1+=546.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i7<0.005248034372925758){
     s0+=597.0;
     s1+=39.0;
    } else {
     s0+=18.0;
     s1+=386.0;
    }
   }
  } else {
   if(i49<-6.003326689096866e-06){
    if(i31<1.2579023838043213){
     s0+=71.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i7<0.0019485417287796736){
     s0+=107.0;
     s1+=136.0;
    } else {
     s0+=30.0;
     s1+=12471.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i18<0.001792560564354062){
  if(i21<0.0018960237503051758){
   if(i40<0.0004761164600495249){
    if(i0<0.0013290047645568848){
     s0+=30812.0;
     s1+=859.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i3<0.00011909008026123047){
     s0+=62103.0;
     s1+=261.0;
    } else {
     s0+=86.0;
     s1+=46.0;
    }
   }
  } else {
   s1+=126.0;
  }
 } else {
  if(i12<0.17455196380615234){
   if(i7<0.0037983558140695095){
    if(i32<0.0007930032443255186){
     s0+=1305.0;
     s1+=216.0;
    } else {
     s0+=8506.0;
     s1+=26.0;
    }
   } else {
    if(i4<0.9986461997032166){
     s0+=9955.0;
     s1+=631.0;
    } else {
     s0+=2015.0;
     s1+=5161.0;
    }
   }
  } else {
   if(i69<0.10435425490140915){
    if(i4<1.001305103302002){
     s0+=202.0;
     s1+=18.0;
    } else {
     s0+=39.0;
     s1+=172.0;
    }
   } else {
    if(i1<-1.871132553787902e-05){
     s0+=38.0;
     s1+=2069.0;
    } else {
     s0+=56.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i9<1.0146698951721191){
  if(i35<0.0007367134094238281){
   if(i2<1.0013813972473145){
    if(i18<0.002113828668370843){
     s0+=251.0;
    } else {
     s0+=49.0;
     s1+=156.0;
    }
   } else {
    if(i0<-0.0006141066551208496){
     s0+=102.0;
     s1+=7.0;
    } else {
     s0+=97.0;
     s1+=2185.0;
    }
   }
  } else {
   if(i26<0.1831064522266388){
    if(i30<1.5334972143173218){
     s0+=610.0;
     s1+=18.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i8<1.0163453817367554){
     s0+=32.0;
     s1+=21.0;
    } else {
     s0+=20.0;
     s1+=471.0;
    }
   }
  }
 } else {
  if(i30<1.161512017250061){
   if(i35<0.0008949637413024902){
    if(i10<1.0462727546691895){
     s1+=1027.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=58.0;
   }
  } else {
   s1+=10877.0;
  }
 }
}
if(i21<0.001349329948425293){
 if(i2<1.002340316772461){
  if(i7<0.0036543256137520075){
   if(i42<1.0073561668395996){
    if(i1<-1.244823397428263e-05){
     s0+=658.0;
     s1+=225.0;
    } else {
     s0+=5482.0;
     s1+=138.0;
    }
   } else {
    if(i37<0.0005489629693329334){
     s0+=21349.0;
     s1+=459.0;
    } else {
     s0+=58776.0;
     s1+=143.0;
    }
   }
  } else {
   if(i24<0.0010032036807388067){
    if(i54<-1.9010519736184506e-06){
     s0+=458.0;
     s1+=2684.0;
    } else {
     s0+=2340.0;
    }
   } else {
    if(i26<0.2051025629043579){
     s0+=19442.0;
     s1+=649.0;
    } else {
     s0+=122.0;
     s1+=522.0;
    }
   }
  }
 } else {
  if(i50<0.03883140906691551){
   if(i38<0.033488474786281586){
    if(i30<1.1174830198287964){
     s0+=928.0;
     s1+=643.0;
    } else {
     s0+=4019.0;
     s1+=275.0;
    }
   } else {
    if(i19<0.12783756852149963){
     s0+=725.0;
     s1+=425.0;
    } else {
     s0+=112.0;
     s1+=489.0;
    }
   }
  } else {
   if(i23<1.0742030143737793){
    if(i51<3.118905806331895e-05){
     s0+=55.0;
     s1+=160.0;
    } else {
     s0+=517.0;
     s1+=39.0;
    }
   } else {
    if(i4<1.0013059377670288){
     s0+=182.0;
     s1+=419.0;
    } else {
     s0+=153.0;
     s1+=3846.0;
    }
   }
  }
 }
} else {
 if(i52<0.9998549222946167){
  if(i44<1.1910490989685059){
   if(i32<0.0007972446037456393){
    s1+=5.0;
   } else {
    s0+=716.0;
   }
  } else {
   s1+=485.0;
  }
 } else {
  if(i5<1.3887882232666016e-05){
   if(i27<1.021291971206665){
    if(i39<-2.067771492875181e-05){
     s1+=2.0;
    } else {
     s0+=129.0;
    }
   } else {
    if(i1<-7.426954834954813e-05){
     s1+=21.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i16<0.0008253059349954128){
    if(i30<1.7041046619415283){
     s0+=13.0;
     s1+=12822.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=230.0;
   }
  }
 }
}
if(i0<0.0009577274322509766){
 if(i13<1.0182610750198364){
  if(i6<0.00029271841049194336){
   if(i18<0.0013828871306031942){
    if(i55<0.00017946914886124432){
     s0+=66868.0;
     s1+=160.0;
    } else {
     s0+=11604.0;
     s1+=309.0;
    }
   } else {
    if(i24<0.0009029248030856252){
     s0+=2119.0;
     s1+=1746.0;
    } else {
     s0+=22598.0;
     s1+=605.0;
    }
   }
  } else {
   if(i55<0.0002561439760029316){
    if(i46<-0.000169580482179299){
     s0+=1350.0;
     s1+=791.0;
    } else {
     s0+=6797.0;
     s1+=505.0;
    }
   } else {
    if(i20<1.0849632024765015){
     s0+=1898.0;
     s1+=769.0;
    } else {
     s0+=227.0;
     s1+=1140.0;
    }
   }
  }
 } else {
  if(i39<-9.141434929915704e-06){
   if(i7<0.004938425030559301){
    if(i51<1.6269372281385586e-05){
     s0+=137.0;
     s1+=91.0;
    } else {
     s0+=346.0;
     s1+=3.0;
    }
   } else {
    if(i64<-7.049580290185986e-06){
     s0+=17.0;
    } else {
     s0+=63.0;
     s1+=1781.0;
    }
   }
  } else {
   if(i21<-0.003270745277404785){
    if(i40<0.0028622718527913094){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i13<1.018303394317627){
     s1+=1.0;
    } else {
     s0+=483.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i38<0.019163645803928375){
  if(i22<0.0002955794334411621){
   if(i40<0.0009890698129311204){
    if(i40<0.0001345416094409302){
     s0+=58.0;
    } else {
     s0+=2.0;
     s1+=1002.0;
    }
   } else {
    if(i24<0.0024361356627196074){
     s0+=1604.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=97.0;
    }
   }
  } else {
   if(i56<1.0010361671447754){
    if(i58<0.007089206948876381){
     s0+=17.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i46<-0.0012272752355784178){
     s0+=23.0;
     s1+=178.0;
    } else {
     s0+=23.0;
     s1+=1710.0;
    }
   }
  }
 } else {
  if(i34<1.1551029682159424){
   if(i51<-5.329814484866802e-06){
    if(i49<-3.823923179879785e-06){
     s0+=6.0;
    } else {
     s1+=362.0;
    }
   } else {
    if(i40<0.0011241856263950467){
     s1+=128.0;
    } else {
     s0+=162.0;
     s1+=18.0;
    }
   }
  } else {
   if(i11<0.955382227897644){
    if(i19<0.0031147003173828125){
     s0+=24.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=109.0;
    }
   } else {
    if(i12<0.09436097741127014){
     s0+=42.0;
     s1+=441.0;
    } else {
     s0+=15.0;
     s1+=12377.0;
    }
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i18<0.001785720232874155){
  if(i32<0.0005461126565933228){
   if(i61<-0.0004969239234924316){
    if(i6<-0.00035449862480163574){
     s0+=921.0;
     s1+=49.0;
    } else {
     s0+=473.0;
     s1+=434.0;
    }
   } else {
    if(i16<0.0001325066841673106){
     s0+=13676.0;
     s1+=12.0;
    } else {
     s0+=10111.0;
     s1+=381.0;
    }
   }
  } else {
   if(i10<1.014641523361206){
    if(i35<0.00011008977890014648){
     s0+=52897.0;
     s1+=25.0;
    } else {
     s0+=13981.0;
     s1+=217.0;
    }
   } else {
    if(i39<-1.8363767594564706e-05){
     s0+=29.0;
     s1+=56.0;
    } else {
     s0+=295.0;
    }
   }
  }
 } else {
  if(i23<1.1230299472808838){
   if(i9<0.9924452900886536){
    if(i2<1.002528429031372){
     s0+=13454.0;
     s1+=408.0;
    } else {
     s0+=1105.0;
     s1+=376.0;
    }
   } else {
    if(i38<0.01828750967979431){
     s0+=5444.0;
     s1+=1142.0;
    } else {
     s0+=1215.0;
     s1+=2240.0;
    }
   }
  } else {
   if(i50<0.04738902673125267){
    if(i44<1.1390706300735474){
     s0+=395.0;
     s1+=112.0;
    } else {
     s0+=160.0;
     s1+=350.0;
    }
   } else {
    if(i7<0.004529922269284725){
     s0+=71.0;
     s1+=6.0;
    } else {
     s0+=120.0;
     s1+=2099.0;
    }
   }
  }
 }
} else {
 if(i1<-7.46210862416774e-05){
  if(i56<1.000880479812622){
   if(i36<1.257002353668213){
    s0+=301.0;
   } else {
    s1+=310.0;
   }
  } else {
   if(i5<0.0002281665802001953){
    if(i71<3.4804079405148514e-06){
     s0+=124.0;
     s1+=14391.0;
    } else {
     s0+=51.0;
    }
   } else {
    s0+=58.0;
   }
  }
 } else {
  if(i31<1.116804838180542){
   if(i37<0.0002116487012244761){
    s0+=57.0;
   } else {
    s1+=1132.0;
   }
  } else {
   if(i46<-0.00028916809242218733){
    if(i37<0.0019296440295875072){
     s0+=25.0;
    } else {
     s0+=18.0;
     s1+=374.0;
    }
   } else {
    if(i14<0.9984800815582275){
     s0+=31.0;
     s1+=187.0;
    } else {
     s0+=1476.0;
     s1+=71.0;
    }
   }
  }
 }
}
if(i12<0.1866081953048706){
 if(i21<0.0013720989227294922){
  if(i67<0.004260946065187454){
   if(i33<0.0007080247160047293){
    if(i0<0.0014736056327819824){
     s0+=78713.0;
     s1+=507.0;
    } else {
     s0+=4.0;
     s1+=68.0;
    }
   } else {
    if(i37<0.0010897385654971004){
     s0+=4223.0;
     s1+=3352.0;
    } else {
     s0+=28072.0;
     s1+=1610.0;
    }
   }
  } else {
   if(i6<0.00044274330139160156){
    if(i39<-6.520982424262911e-06){
     s0+=1596.0;
     s1+=363.0;
    } else {
     s0+=1428.0;
     s1+=5.0;
    }
   } else {
    if(i26<0.018134266138076782){
     s0+=418.0;
     s1+=83.0;
    } else {
     s0+=225.0;
     s1+=1320.0;
    }
   }
  }
 } else {
  if(i54<-4.8835586312634405e-06){
   if(i24<0.0010801446624100208){
    s1+=2026.0;
   } else {
    if(i30<1.1672043800354004){
     s0+=803.0;
    } else {
     s1+=1851.0;
    }
   }
  } else {
   if(i39<-1.816939766285941e-05){
    if(i4<1.0043052434921265){
     s1+=2.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i11<1.0301767587661743){
     s0+=214.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i30<1.1740410327911377){
  if(i30<1.146653652191162){
   s0+=375.0;
  } else {
   if(i62<-0.0005975716048851609){
    s1+=4.0;
   } else {
    s0+=60.0;
   }
  }
 } else {
  if(i39<-8.76820740813855e-06){
   if(i39<-1.7695134374662302e-05){
    if(i36<1.1712557077407837){
     s0+=39.0;
     s1+=454.0;
    } else {
     s0+=20.0;
     s1+=12581.0;
    }
   } else {
    if(i65<0.08857569098472595){
     s0+=52.0;
     s1+=41.0;
    } else {
     s0+=2.0;
     s1+=128.0;
    }
   }
  } else {
   if(i56<1.00105881690979){
    if(i41<0.9368834495544434){
     s1+=1.0;
    } else {
     s0+=179.0;
    }
   } else {
    if(i17<0.9833534359931946){
     s1+=9.0;
    } else {
     s0+=27.0;
    }
   }
  }
 }
}
if(i9<1.010016918182373){
 if(i6<0.0004642605781555176){
  if(i18<0.0015612401766702533){
   if(i33<0.0005645051132887602){
    if(i31<1.1979892253875732){
     s0+=63476.0;
     s1+=85.0;
    } else {
     s0+=6098.0;
     s1+=79.0;
    }
   } else {
    if(i32<0.0002968815970234573){
     s0+=1732.0;
     s1+=405.0;
    } else {
     s0+=13672.0;
     s1+=121.0;
    }
   }
  } else {
   if(i24<0.0009128163219429553){
    if(i24<0.0002332424628548324){
     s0+=954.0;
     s1+=22.0;
    } else {
     s0+=916.0;
     s1+=2224.0;
    }
   } else {
    if(i23<1.121600866317749){
     s0+=20200.0;
     s1+=488.0;
    } else {
     s0+=593.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i50<0.04098062217235565){
   if(i46<-0.0001999790983973071){
    if(i35<0.0003859400749206543){
     s0+=78.0;
     s1+=654.0;
    } else {
     s0+=899.0;
     s1+=430.0;
    }
   } else {
    if(i51<-8.523171345586888e-06){
     s0+=14.0;
     s1+=217.0;
    } else {
     s0+=5377.0;
     s1+=775.0;
    }
   }
  } else {
   if(i28<0.025184668600559235){
    if(i46<-0.00023123678693082184){
     s0+=35.0;
     s1+=104.0;
    } else {
     s0+=376.0;
     s1+=67.0;
    }
   } else {
    if(i21<-0.005159437656402588){
     s0+=159.0;
     s1+=84.0;
    } else {
     s0+=133.0;
     s1+=3332.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025589815340936184){
  if(i47<1.150369644165039e-05){
   if(i40<0.00103172124363482){
    if(i6<0.00021332502365112305){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=2018.0;
    }
   } else {
    if(i1<-8.94784097908996e-05){
     s0+=27.0;
     s1+=68.0;
    } else {
     s0+=278.0;
     s1+=37.0;
    }
   }
  } else {
   if(i29<0.0011528301984071732){
    s1+=52.0;
   } else {
    if(i40<0.0020568277686834335){
     s0+=1308.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i58<0.00020895841589663178){
   if(i29<0.008692489005625248){
    s0+=38.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i39<-1.7756156012183055e-05){
    if(i51<1.3796796338283457e-05){
     s1+=11233.0;
    } else {
     s0+=47.0;
     s1+=1163.0;
    }
   } else {
    if(i30<1.2027409076690674){
     s1+=48.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i19<0.04109334945678711){
  if(i72<-0.13005954027175903){
   if(i11<0.943334698677063){
    if(i68<0.0011869596783071756){
     s0+=45.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i56<1.0026216506958008){
     s0+=21.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=92.0;
    }
   }
  } else {
   if(i43<7.72155362938065e-06){
    if(i38<0.01448703370988369){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i36<1.2324421405792236){
     s0+=46.0;
     s1+=15.0;
    } else {
     s0+=567.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i37<0.002473668660968542){
   if(i9<1.014538049697876){
    if(i58<0.0005417291540652514){
     s1+=10.0;
    } else {
     s0+=240.0;
    }
   } else {
    if(i56<1.0031397342681885){
     s1+=620.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i22<-0.0006765425205230713){
    if(i26<0.14040398597717285){
     s0+=50.0;
     s1+=40.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i8<0.880750298500061){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=14397.0;
    }
   }
  }
 }
} else {
 if(i2<1.0024900436401367){
  if(i15<1.0141422748565674){
   if(i34<1.0905030965805054){
    if(i34<1.05497145652771){
     s0+=22241.0;
     s1+=154.0;
    } else {
     s0+=6058.0;
     s1+=2507.0;
    }
   } else {
    if(i7<0.004054747521877289){
     s0+=63377.0;
     s1+=197.0;
    } else {
     s0+=16681.0;
     s1+=831.0;
    }
   }
  } else {
   if(i63<0.0005442567635327578){
    if(i6<0.0002301931381225586){
     s0+=83.0;
     s1+=12.0;
    } else {
     s0+=11.0;
     s1+=516.0;
    }
   } else {
    if(i39<-7.972812454681844e-06){
     s0+=434.0;
     s1+=298.0;
    } else {
     s0+=750.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i24<0.0010592372855171561){
   if(i37<0.00024826618027873337){
    s0+=717.0;
   } else {
    if(i6<0.0003641843795776367){
     s0+=69.0;
    } else {
     s1+=1873.0;
    }
   }
  } else {
   if(i28<0.014545377343893051){
    if(i30<1.1822609901428223){
     s0+=3285.0;
    } else {
     s0+=919.0;
     s1+=276.0;
    }
   } else {
    if(i43<9.478302672505379e-05){
     s0+=86.0;
     s1+=1357.0;
    } else {
     s0+=964.0;
     s1+=835.0;
    }
   }
  }
 }
}
if(i3<6.574392318725586e-05){
 if(i6<0.0003281235694885254){
  if(i45<0.22582203149795532){
   if(i31<1.116391897201538){
    if(i31<1.064497947692871){
     s0+=14599.0;
     s1+=40.0;
    } else {
     s0+=12663.0;
     s1+=2152.0;
    }
   } else {
    if(i15<1.015373945236206){
     s0+=76641.0;
     s1+=652.0;
    } else {
     s0+=817.0;
     s1+=166.0;
    }
   }
  } else {
   if(i18<0.002247827360406518){
    if(i54<-5.6815142670529895e-06){
     s1+=1.0;
    } else {
     s0+=80.0;
    }
   } else {
    if(i26<0.23113250732421875){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=286.0;
    }
   }
  }
 } else {
  if(i7<0.004251687787473202){
   if(i28<0.008388491347432137){
    if(i21<0.001036524772644043){
     s0+=6448.0;
     s1+=33.0;
    } else {
     s0+=126.0;
     s1+=37.0;
    }
   } else {
    if(i60<1.0027880668640137){
     s0+=282.0;
     s1+=146.0;
    } else {
     s0+=629.0;
    }
   }
  } else {
   if(i13<1.002765417098999){
    if(i58<0.012004618532955647){
     s0+=1693.0;
     s1+=1005.0;
    } else {
     s0+=59.0;
     s1+=587.0;
    }
   } else {
    if(i22<-0.0003351271152496338){
     s0+=251.0;
     s1+=165.0;
    } else {
     s0+=228.0;
     s1+=2643.0;
    }
   }
  }
 }
} else {
 if(i38<0.019895829260349274){
  if(i33<0.0011131616774946451){
   if(i16<0.000289968098513782){
    if(i60<1.0049539804458618){
     s0+=53.0;
     s1+=2588.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i15<0.9987046122550964){
     s1+=6.0;
    } else {
     s0+=419.0;
    }
   }
  } else {
   if(i16<0.000560765212867409){
    if(i34<1.1540117263793945){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=516.0;
    }
   } else {
    if(i36<1.3131433725357056){
     s0+=1229.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i35<0.0017184615135192871){
   if(i64<1.626075572858099e-05){
    if(i1<-7.546199049102142e-05){
     s0+=82.0;
     s1+=12609.0;
    } else {
     s0+=146.0;
     s1+=693.0;
    }
   } else {
    s0+=19.0;
   }
  } else {
   s0+=22.0;
  }
 }
}
if(i3<6.288290023803711e-05){
 if(i41<1.0291298627853394){
  if(i33<0.0007333966204896569){
   if(i23<1.0179111957550049){
    if(i2<0.9988037347793579){
     s0+=2243.0;
    } else {
     s0+=1893.0;
     s1+=159.0;
    }
   } else {
    if(i40<0.0021319440566003323){
     s0+=74523.0;
     s1+=261.0;
    } else {
     s0+=2466.0;
     s1+=155.0;
    }
   }
  } else {
   if(i30<1.1160998344421387){
    if(i30<1.0512452125549316){
     s0+=2884.0;
    } else {
     s0+=1545.0;
     s1+=3117.0;
    }
   } else {
    if(i65<0.44101041555404663){
     s0+=27311.0;
     s1+=1979.0;
    } else {
     s0+=215.0;
     s1+=451.0;
    }
   }
  }
 } else {
  if(i32<0.0029901089146733284){
   if(i18<0.0011082259006798267){
    if(i44<1.1354689598083496){
     s0+=328.0;
    } else {
     s0+=93.0;
     s1+=15.0;
    }
   } else {
    if(i3<-4.827976226806641e-06){
     s0+=120.0;
     s1+=2.0;
    } else {
     s0+=37.0;
     s1+=333.0;
    }
   }
  } else {
   if(i39<-9.185604540107306e-06){
    if(i7<0.006019349209964275){
     s0+=268.0;
     s1+=61.0;
    } else {
     s0+=40.0;
     s1+=1246.0;
    }
   } else {
    if(i21<-0.003069847822189331){
     s0+=4.0;
     s1+=13.0;
    } else {
     s0+=177.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i40<0.0010479375487193465){
   if(i24<0.0002476464433129877){
    s0+=98.0;
   } else {
    if(i54<-1.4326877135317773e-05){
     s0+=35.0;
    } else {
     s0+=5.0;
     s1+=2255.0;
    }
   }
  } else {
   if(i24<0.0010230334009975195){
    s1+=56.0;
   } else {
    if(i37<0.0024902052246034145){
     s0+=2051.0;
    } else {
     s0+=2.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i12<0.0031147003173828125){
   if(i36<1.3731330633163452){
    if(i47<1.138448715209961e-05){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.013300692662596703){
     s0+=1.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i26<0.10336363315582275){
    if(i41<1.0153017044067383){
     s0+=25.0;
     s1+=575.0;
    } else {
     s0+=38.0;
     s1+=27.0;
    }
   } else {
    if(i42<0.8731958866119385){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=13594.0;
    }
   }
  }
 }
}
if(i3<6.526708602905273e-05){
 if(i6<0.00032657384872436523){
  if(i15<1.0184590816497803){
   if(i35<7.075071334838867e-05){
    if(i45<0.2340487241744995){
     s0+=75771.0;
     s1+=752.0;
    } else {
     s0+=7.0;
     s1+=109.0;
    }
   } else {
    if(i38<0.013911239802837372){
     s0+=17053.0;
     s1+=357.0;
    } else {
     s0+=11398.0;
     s1+=1819.0;
    }
   }
  } else {
   if(i60<0.9978909492492676){
    if(i31<1.3897883892059326){
     s0+=4.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i7<0.0051170047372579575){
     s0+=540.0;
     s1+=34.0;
    } else {
     s0+=11.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i28<0.009510276839137077){
   if(i46<-0.00018436755635775626){
    if(i32<0.0005944305448792875){
     s0+=25.0;
     s1+=161.0;
    } else {
     s0+=714.0;
     s1+=48.0;
    }
   } else {
    if(i33<0.0008406972046941519){
     s0+=3512.0;
    } else {
     s0+=2906.0;
     s1+=206.0;
    }
   }
  } else {
   if(i0<-0.0003914833068847656){
    if(i38<0.13753783702850342){
     s0+=1296.0;
     s1+=130.0;
    } else {
     s0+=61.0;
     s1+=124.0;
    }
   } else {
    if(i12<0.14537197351455688){
     s0+=969.0;
     s1+=2222.0;
    } else {
     s0+=80.0;
     s1+=1776.0;
    }
   }
  }
 }
} else {
 if(i29<0.002373333554714918){
  if(i37<0.0012504032347351313){
   if(i40<0.00013335267431102693){
    s0+=60.0;
   } else {
    if(i30<1.120318055152893){
     s0+=2.0;
     s1+=2147.0;
    } else {
     s0+=41.0;
    }
   }
  } else {
   if(i24<0.0010660446714609861){
    s1+=230.0;
   } else {
    s0+=1764.0;
   }
  }
 } else {
  if(i26<0.0032147467136383057){
   if(i52<1.0004894733428955){
    if(i3<0.00017052888870239258){
     s0+=40.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i72<-0.0762270987033844){
     s1+=40.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i60<1.0104646682739258){
    if(i12<0.09768173098564148){
     s0+=73.0;
     s1+=578.0;
    } else {
     s0+=11.0;
     s1+=13545.0;
    }
   } else {
    if(i52<1.0019302368164062){
     s0+=5.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i12<0.2009410262107849){
  if(i35<0.00011068582534790039){
   if(i18<0.0012953171972185373){
    if(i44<1.023447036743164){
     s0+=3866.0;
     s1+=99.0;
    } else {
     s0+=63345.0;
     s1+=131.0;
    }
   } else {
    if(i32<0.0009280395461246371){
     s0+=2313.0;
     s1+=739.0;
    } else {
     s0+=13887.0;
     s1+=260.0;
    }
   }
  } else {
   if(i1<-6.407810724340379e-05){
    if(i51<3.419899439904839e-05){
     s0+=203.0;
     s1+=963.0;
    } else {
     s0+=1324.0;
     s1+=671.0;
    }
   } else {
    if(i6<-7.11679458618164e-05){
     s0+=9535.0;
     s1+=45.0;
    } else {
     s0+=19605.0;
     s1+=3216.0;
    }
   }
  }
 } else {
  if(i1<-3.708993972395547e-05){
   if(i38<0.01703355461359024){
    if(i44<1.1380887031555176){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i54<-2.273686277476372e-06){
     s0+=12.0;
     s1+=1441.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i54<-3.968797955167247e-06){
    if(i7<0.00598146254196763){
     s0+=68.0;
     s1+=9.0;
    } else {
     s1+=146.0;
    }
   } else {
    if(i27<0.9926444292068481){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=212.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<0.00407246220856905){
  if(i30<1.116804838180542){
   if(i29<0.00024275531177408993){
    s0+=74.0;
   } else {
    if(i16<0.0002103899314533919){
     s0+=4.0;
     s1+=711.0;
    } else {
     s0+=47.0;
    }
   }
  } else {
   if(i21<0.002640962600708008){
    s0+=1698.0;
   } else {
    s1+=259.0;
   }
  }
 } else {
  if(i16<0.0007051074644550681){
   if(i11<0.9566062688827515){
    if(i47<9.47713851928711e-06){
     s0+=59.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=130.0;
    }
   } else {
    if(i49<-1.6586616766289808e-05){
     s0+=15.0;
    } else {
     s0+=91.0;
     s1+=15359.0;
    }
   }
  } else {
   s0+=245.0;
  }
 }
}
if(i9<1.0125951766967773){
 if(i5<1.901388168334961e-05){
  if(i13<1.021174430847168){
   if(i18<0.001641404815018177){
    if(i8<0.9960441589355469){
     s0+=18430.0;
     s1+=500.0;
    } else {
     s0+=68594.0;
     s1+=307.0;
    }
   } else {
    if(i37<0.0010506388498470187){
     s0+=1640.0;
     s1+=2013.0;
    } else {
     s0+=19539.0;
     s1+=1173.0;
    }
   }
  } else {
   if(i29<0.006173891946673393){
    if(i2<1.0000848770141602){
     s0+=243.0;
    } else {
     s0+=176.0;
     s1+=280.0;
    }
   } else {
    if(i51<7.608707528561354e-05){
     s1+=174.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i7<0.004377886652946472){
   if(i36<1.0773630142211914){
    if(i44<1.0451974868774414){
     s0+=1753.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=431.0;
    }
   } else {
    if(i10<1.021496295928955){
     s0+=3808.0;
     s1+=45.0;
    } else {
     s0+=42.0;
     s1+=20.0;
    }
   }
  } else {
   if(i17<0.9965637922286987){
    if(i12<0.10320505499839783){
     s0+=1063.0;
     s1+=168.0;
    } else {
     s0+=151.0;
     s1+=825.0;
    }
   } else {
    if(i0<0.00020897388458251953){
     s0+=229.0;
     s1+=321.0;
    } else {
     s0+=553.0;
     s1+=4770.0;
    }
   }
  }
 }
} else {
 if(i1<-7.310554792638868e-05){
  if(i5<0.0002598762512207031){
   if(i9<1.0139923095703125){
    if(i49<-6.216601832420565e-06){
     s0+=52.0;
    } else {
     s0+=5.0;
     s1+=328.0;
    }
   } else {
    if(i38<0.004375003278255463){
     s0+=5.0;
     s1+=153.0;
    } else {
     s0+=5.0;
     s1+=12102.0;
    }
   }
  } else {
   s0+=12.0;
  }
 } else {
  if(i30<1.1180615425109863){
   if(i16<0.0005726463859900832){
    s1+=358.0;
   } else {
    s0+=12.0;
   }
  } else {
   if(i28<0.013348565436899662){
    if(i7<0.006762915290892124){
     s0+=360.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=186.0;
   }
  }
 }
}
if(i4<1.003739833831787){
 if(i18<0.0017335031880065799){
  if(i39<-1.9481489289319143e-05){
   if(i34<1.1360328197479248){
    s0+=9.0;
   } else {
    s1+=56.0;
   }
  } else {
   if(i42<1.0179111957550049){
    if(i55<0.00013239440158940852){
     s0+=16450.0;
     s1+=158.0;
    } else {
     s0+=8116.0;
     s1+=525.0;
    }
   } else {
    if(i40<0.0019495009910315275){
     s0+=62126.0;
     s1+=183.0;
    } else {
     s0+=2765.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i3<-2.7120113372802734e-05){
   if(i7<0.017796363681554794){
    if(i45<0.19124528765678406){
     s0+=18224.0;
     s1+=658.0;
    } else {
     s0+=60.0;
     s1+=147.0;
    }
   } else {
    if(i23<1.0654174089431763){
     s0+=199.0;
     s1+=24.0;
    } else {
     s0+=27.0;
     s1+=255.0;
    }
   }
  } else {
   if(i24<0.00023678143043071032){
    s0+=1527.0;
   } else {
    if(i36<1.093428611755371){
     s0+=118.0;
     s1+=2252.0;
    } else {
     s0+=2397.0;
     s1+=2205.0;
    }
   }
  }
 }
} else {
 if(i37<0.002143150195479393){
  if(i31<1.116804838180542){
   if(i28<0.0024697359185665846){
    if(i57<0.011572010815143585){
     s0+=608.0;
     s1+=50.0;
    } else {
     s0+=11.0;
     s1+=157.0;
    }
   } else {
    if(i36<1.0452228784561157){
     s0+=34.0;
    } else {
     s1+=2580.0;
    }
   }
  } else {
   if(i28<0.015465977601706982){
    s0+=3544.0;
   } else {
    s1+=36.0;
   }
  }
 } else {
  if(i32<0.001931892242282629){
   if(i15<1.0437648296356201){
    s0+=56.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i19<0.09810054302215576){
    if(i74<0.005528424866497517){
     s0+=96.0;
     s1+=33.0;
    } else {
     s0+=61.0;
     s1+=628.0;
    }
   } else {
    if(i20<0.9382284283638){
     s0+=2.0;
    } else {
     s0+=40.0;
     s1+=14305.0;
    }
   }
  }
 }
}
if(i8<1.0135858058929443){
 if(i28<0.06144237518310547){
  if(i3<6.407499313354492e-05){
   if(i18<0.0017301690531894565){
    if(i1<-7.0865178713575e-05){
     s0+=58.0;
     s1+=36.0;
    } else {
     s0+=90996.0;
     s1+=968.0;
    }
   } else {
    if(i17<0.9950674176216125){
     s0+=16126.0;
     s1+=702.0;
    } else {
     s0+=6103.0;
     s1+=3751.0;
    }
   }
  } else {
   if(i32<0.0019538498017936945){
    if(i58<0.0007652833592146635){
     s0+=73.0;
     s1+=734.0;
    } else {
     s0+=1344.0;
     s1+=73.0;
    }
   } else {
    if(i56<1.0021387338638306){
     s0+=67.0;
     s1+=38.0;
    } else {
     s0+=68.0;
     s1+=1229.0;
    }
   }
  }
 } else {
  if(i1<-5.235779099166393e-05){
   if(i69<0.20975714921951294){
    if(i8<0.9355289936065674){
     s0+=58.0;
     s1+=25.0;
    } else {
     s0+=2.0;
     s1+=179.0;
    }
   } else {
    if(i56<0.9962905645370483){
     s0+=4.0;
    } else {
     s0+=15.0;
     s1+=1918.0;
    }
   }
  } else {
   if(i44<1.1490082740783691){
    if(i41<0.7182006239891052){
     s1+=2.0;
    } else {
     s0+=363.0;
    }
   } else {
    if(i25<1.0085148811340332){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i1<-7.194842328317463e-05){
  if(i16<0.0007150453748181462){
   if(i10<1.0208462476730347){
    if(i6<3.0249357223510742e-05){
     s0+=12.0;
     s1+=18.0;
    } else {
     s0+=25.0;
     s1+=1753.0;
    }
   } else {
    if(i25<0.9972833395004272){
     s0+=2.0;
     s1+=66.0;
    } else {
     s0+=2.0;
     s1+=11368.0;
    }
   }
  } else {
   s0+=148.0;
  }
 } else {
  if(i47<1.150369644165039e-05){
   if(i5<1.2993812561035156e-05){
    if(i7<0.0053662448190152645){
     s0+=321.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i21<-0.0013312101364135742){
     s0+=45.0;
     s1+=9.0;
    } else {
     s0+=39.0;
     s1+=1171.0;
    }
   }
  } else {
   if(i26<0.2348645031452179){
    if(i35<0.0006459951400756836){
     s0+=14.0;
     s1+=65.0;
    } else {
     s0+=658.0;
    }
   } else {
    if(i49<-4.751333108288236e-06){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   }
  }
 }
}
if(i2<1.0026230812072754){
 if(i7<0.0038929786533117294){
  if(i55<0.00018689109128899872){
   if(i30<1.0776758193969727){
    if(i50<0.015498120337724686){
     s0+=16610.0;
     s1+=175.0;
    } else {
     s0+=280.0;
     s1+=142.0;
    }
   } else {
    if(i38<0.02233370766043663){
     s0+=54562.0;
     s1+=52.0;
    } else {
     s0+=3728.0;
     s1+=61.0;
    }
   }
  } else {
   if(i40<0.0002588495262898505){
    if(i25<0.9978538751602173){
     s0+=357.0;
     s1+=24.0;
    } else {
     s0+=101.0;
     s1+=405.0;
    }
   } else {
    if(i1<-3.015562833752483e-05){
     s0+=421.0;
     s1+=143.0;
    } else {
     s0+=13447.0;
     s1+=186.0;
    }
   }
  }
 } else {
  if(i9<1.00337553024292){
   if(i12<0.19810333847999573){
    if(i17<0.9948495626449585){
     s0+=15506.0;
     s1+=415.0;
    } else {
     s0+=4920.0;
     s1+=1709.0;
    }
   } else {
    if(i44<1.127637267112732){
     s0+=53.0;
     s1+=25.0;
    } else {
     s0+=28.0;
     s1+=452.0;
    }
   }
  } else {
   if(i35<0.00039908289909362793){
    if(i5<-3.159046173095703e-06){
     s0+=340.0;
     s1+=30.0;
    } else {
     s0+=121.0;
     s1+=1730.0;
    }
   } else {
    if(i49<-1.2998129932384472e-06){
     s0+=209.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i19<0.16940414905548096){
  if(i17<1.012582778930664){
   if(i16<0.0003436448168940842){
    if(i7<0.0023254738189280033){
     s0+=663.0;
     s1+=131.0;
    } else {
     s0+=824.0;
     s1+=2617.0;
    }
   } else {
    if(i62<0.0013240774860605597){
     s0+=3565.0;
     s1+=30.0;
    } else {
     s0+=539.0;
     s1+=644.0;
    }
   }
  } else {
   if(i1<-7.315443508559838e-05){
    if(i33<0.0033989751245826483){
     s0+=13.0;
     s1+=2042.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i49<-3.760800382224261e-06){
     s0+=132.0;
    } else {
     s1+=194.0;
    }
   }
  }
 } else {
  if(i38<0.013321168720722198){
   if(i9<1.0164088010787964){
    if(i32<0.00321189290843904){
     s0+=166.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   } else {
    s1+=468.0;
   }
  } else {
   if(i31<1.1935834884643555){
    if(i10<1.017838716506958){
     s0+=54.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i6<0.00036472082138061523){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=88.0;
     s1+=12385.0;
    }
   }
  }
 }
}
if(i6<0.0005685687065124512){
 if(i12<0.20638719201087952){
  if(i35<8.422136306762695e-05){
   if(i18<0.001246176427230239){
    if(i32<0.0002482426934875548){
     s0+=15171.0;
     s1+=174.0;
    } else {
     s0+=46800.0;
     s1+=2.0;
    }
   } else {
    if(i35<-2.7120113372802734e-05){
     s0+=12954.0;
     s1+=106.0;
    } else {
     s0+=3708.0;
     s1+=655.0;
    }
   }
  } else {
   if(i15<1.013569951057434){
    if(i7<0.0038310722447931767){
     s0+=24151.0;
     s1+=529.0;
    } else {
     s0+=6265.0;
     s1+=2298.0;
    }
   } else {
    if(i34<1.0978162288665771){
     s1+=286.0;
    } else {
     s0+=615.0;
     s1+=250.0;
    }
   }
  }
 } else {
  if(i39<-1.2888654964626767e-05){
   if(i33<0.002080589532852173){
    if(i60<1.0038845539093018){
     s0+=6.0;
     s1+=260.0;
    } else {
     s0+=16.0;
    }
   } else {
    s1+=457.0;
   }
  } else {
   if(i7<0.008271521888673306){
    if(i53<1.0042330026626587){
     s0+=211.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=6.0;
   }
  }
 }
} else {
 if(i28<0.007905698381364346){
  if(i43<-2.0570079868775792e-05){
   if(i58<0.0008579031564295292){
    if(i0<0.0008885860443115234){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=1050.0;
    }
   } else {
    if(i4<1.0102919340133667){
     s0+=306.0;
     s1+=75.0;
    } else {
     s1+=398.0;
    }
   }
  } else {
   if(i10<1.0193753242492676){
    if(i35<0.0004025101661682129){
     s0+=332.0;
     s1+=376.0;
    } else {
     s0+=4211.0;
     s1+=58.0;
    }
   } else {
    if(i19<0.07145664095878601){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i45<0.09202289581298828){
   if(i0<0.0003300905227661133){
    if(i28<0.05749719589948654){
     s0+=904.0;
     s1+=171.0;
    } else {
     s0+=62.0;
     s1+=144.0;
    }
   } else {
    if(i16<0.00043493614066392183){
     s0+=255.0;
     s1+=3345.0;
    } else {
     s0+=265.0;
     s1+=194.0;
    }
   }
  } else {
   if(i7<0.00494739692658186){
    if(i44<1.1371207237243652){
     s0+=252.0;
     s1+=16.0;
    } else {
     s0+=44.0;
     s1+=238.0;
    }
   } else {
    if(i10<0.9101259708404541){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=163.0;
     s1+=12914.0;
    }
   }
  }
 }
}
if(i22<0.0002085566520690918){
 if(i5<1.901388168334961e-05){
  if(i31<1.1162974834442139){
   if(i14<1.0089902877807617){
    if(i65<0.01640552282333374){
     s0+=19578.0;
     s1+=754.0;
    } else {
     s0+=8857.0;
     s1+=1646.0;
    }
   } else {
    if(i44<1.0871185064315796){
     s0+=151.0;
     s1+=501.0;
    } else {
     s0+=130.0;
    }
   }
  } else {
   if(i23<1.122455358505249){
    if(i2<1.002396583557129){
     s0+=75629.0;
     s1+=463.0;
    } else {
     s0+=1165.0;
     s1+=167.0;
    }
   } else {
    if(i43<3.524085332173854e-05){
     s0+=1795.0;
     s1+=17.0;
    } else {
     s0+=945.0;
     s1+=882.0;
    }
   }
  }
 } else {
  if(i42<1.0918397903442383){
   if(i7<0.003899506526067853){
    if(i1<-6.714019400533289e-05){
     s0+=30.0;
     s1+=23.0;
    } else {
     s0+=4592.0;
     s1+=113.0;
    }
   } else {
    if(i22<-0.00022464990615844727){
     s0+=1467.0;
     s1+=1072.0;
    } else {
     s0+=314.0;
     s1+=2622.0;
    }
   }
  } else {
   if(i37<0.001817349111661315){
    s0+=439.0;
   } else {
    if(i19<0.13891315460205078){
     s0+=122.0;
     s1+=161.0;
    } else {
     s0+=79.0;
     s1+=2863.0;
    }
   }
  }
 }
} else {
 if(i37<0.002389603527262807){
  if(i16<0.00023345850058831275){
   if(i21<0.001364588737487793){
    if(i45<0.023394614458084106){
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.126470685005188){
     s1+=1967.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s0+=859.0;
  }
 } else {
  if(i2<1.00152587890625){
   if(i28<0.02297690510749817){
    s0+=89.0;
   } else {
    s1+=101.0;
   }
  } else {
   s1+=11222.0;
  }
 }
}
if(i3<6.264448165893555e-05){
 if(i18<0.0018275990150868893){
  if(i1<-7.272198126884177e-05){
   if(i40<0.0017591607756912708){
    s0+=55.0;
   } else {
    if(i47<-8.940696716308594e-08){
     s0+=9.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i44<1.0466102361679077){
    if(i59<-0.0005547106266021729){
     s0+=4641.0;
     s1+=593.0;
    } else {
     s0+=28222.0;
     s1+=315.0;
    }
   } else {
    if(i63<0.0020455215126276016){
     s0+=57210.0;
     s1+=142.0;
    } else {
     s0+=3008.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i15<1.0112941265106201){
   if(i2<1.000501275062561){
    if(i20<1.1402966976165771){
     s0+=13876.0;
     s1+=691.0;
    } else {
     s0+=5.0;
     s1+=101.0;
    }
   } else {
    if(i26<0.044786304235458374){
     s0+=3197.0;
     s1+=441.0;
    } else {
     s0+=3183.0;
     s1+=3150.0;
    }
   }
  } else {
   if(i4<1.0011820793151855){
    if(i38<0.05708327889442444){
     s0+=494.0;
     s1+=58.0;
    } else {
     s0+=90.0;
     s1+=323.0;
    }
   } else {
    if(i47<1.0192394256591797e-05){
     s0+=90.0;
     s1+=1652.0;
    } else {
     s0+=235.0;
     s1+=253.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i24<0.0009706164710223675){
   if(i36<1.0462350845336914){
    s0+=98.0;
   } else {
    s1+=2366.0;
   }
  } else {
   if(i31<1.2318363189697266){
    s0+=1964.0;
   } else {
    if(i4<1.0055954456329346){
     s0+=5.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i23<1.0742113590240479){
   if(i52<1.0008502006530762){
    if(i12<0.10238343477249146){
     s0+=84.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i30<1.195103406906128){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=250.0;
    }
   }
  } else {
   if(i11<0.9469805955886841){
    if(i28<0.0329337976872921){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=38.0;
    }
   } else {
    if(i19<0.03952541947364807){
     s0+=20.0;
     s1+=71.0;
    } else {
     s0+=20.0;
     s1+=13628.0;
    }
   }
  }
 }
}
if(i6<0.0005717873573303223){
 if(i45<0.20483282208442688){
  if(i5<1.329183578491211e-05){
   if(i34<1.0905030965805054){
    if(i57<0.011529022827744484){
     s0+=18250.0;
     s1+=285.0;
    } else {
     s0+=8323.0;
     s1+=1849.0;
    }
   } else {
    if(i18<0.0018732479074969888){
     s0+=63084.0;
     s1+=193.0;
    } else {
     s0+=15565.0;
     s1+=763.0;
    }
   }
  } else {
   if(i1<-4.1435159801039845e-05){
    if(i4<0.9999815225601196){
     s0+=528.0;
     s1+=125.0;
    } else {
     s0+=169.0;
     s1+=739.0;
    }
   } else {
    if(i7<0.004138544201850891){
     s0+=3426.0;
     s1+=13.0;
    } else {
     s0+=345.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i54<-3.5612988540378865e-06){
   if(i28<0.02762436680495739){
    if(i64<5.260067155177239e-06){
     s0+=7.0;
     s1+=42.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i38<0.01705300435423851){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=612.0;
    }
   }
  } else {
   if(i55<0.0024489625357091427){
    if(i33<0.0010889521799981594){
     s0+=114.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i37<0.0030171978287398815){
  if(i35<0.0005027651786804199){
   if(i16<0.0003101713955402374){
    if(i22<-0.00015991926193237305){
     s0+=117.0;
     s1+=2.0;
    } else {
     s0+=71.0;
     s1+=3102.0;
    }
   } else {
    if(i50<0.02796684205532074){
     s0+=709.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=41.0;
    }
   }
  } else {
   if(i38<0.03424719721078873){
    if(i36<1.1824047565460205){
     s0+=4384.0;
     s1+=53.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i23<1.1026153564453125){
     s0+=85.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i22<-0.000307619571685791){
   if(i23<1.1077709197998047){
    if(i5<5.942583084106445e-05){
     s0+=935.0;
     s1+=128.0;
    } else {
     s0+=99.0;
     s1+=160.0;
    }
   } else {
    if(i39<-3.237480268580839e-05){
     s0+=110.0;
     s1+=785.0;
    } else {
     s0+=91.0;
     s1+=32.0;
    }
   }
  } else {
   if(i7<0.0035533306654542685){
    if(i51<1.4486839972960297e-05){
     s1+=197.0;
    } else {
     s0+=162.0;
     s1+=4.0;
    }
   } else {
    if(i26<0.1021040678024292){
     s0+=81.0;
     s1+=556.0;
    } else {
     s0+=13.0;
     s1+=13783.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i23<1.1403480768203735){
  if(i7<0.004044456407427788){
   if(i33<0.000511792313773185){
    if(i30<1.1758689880371094){
     s0+=61309.0;
     s1+=70.0;
    } else {
     s0+=2552.0;
     s1+=55.0;
    }
   } else {
    if(i24<0.0005867431173101068){
     s0+=5510.0;
     s1+=1057.0;
    } else {
     s0+=22742.0;
     s1+=221.0;
    }
   }
  } else {
   if(i6<-2.8014183044433594e-05){
    if(i26<0.2464318871498108){
     s0+=17110.0;
     s1+=287.0;
    } else {
     s0+=6.0;
     s1+=17.0;
    }
   } else {
    if(i43<9.768969903234392e-05){
     s0+=465.0;
     s1+=3318.0;
    } else {
     s0+=3635.0;
     s1+=1052.0;
    }
   }
  }
 } else {
  if(i39<-1.443652763555292e-05){
   if(i7<0.006751272361725569){
    if(i35<0.000526130199432373){
     s0+=5.0;
     s1+=40.0;
    } else {
     s0+=146.0;
     s1+=5.0;
    }
   } else {
    if(i26<1.722574234008789e-05){
     s0+=71.0;
     s1+=9.0;
    } else {
     s0+=38.0;
     s1+=1896.0;
    }
   }
  } else {
   if(i33<0.0010628339368849993){
    s0+=944.0;
   } else {
    if(i34<1.202282190322876){
     s0+=4.0;
     s1+=89.0;
    } else {
     s0+=24.0;
    }
   }
  }
 }
} else {
 if(i7<0.0039032245986163616){
  if(i51<-1.2568450983962975e-05){
   if(i24<0.0010901096975430846){
    s1+=544.0;
   } else {
    if(i29<0.002571993274614215){
     s0+=141.0;
    } else {
     s1+=204.0;
    }
   }
  } else {
   if(i35<0.00044474005699157715){
    if(i2<1.0026799440383911){
     s0+=49.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i21<0.003080129623413086){
     s0+=1485.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i33<0.004043448716402054){
   if(i56<1.0009018182754517){
    if(i7<0.007263283245265484){
     s0+=105.0;
    } else {
     s1+=317.0;
    }
   } else {
    if(i3<8.314847946166992e-05){
     s0+=86.0;
     s1+=1190.0;
    } else {
     s0+=81.0;
     s1+=13731.0;
    }
   }
  } else {
   s0+=112.0;
  }
 }
}
if(i26<0.20124730467796326){
 if(i5<1.9609928131103516e-05){
  if(i18<0.0016584128607064486){
   if(i32<0.0002981976722367108){
    if(i55<0.00017831646255217493){
     s0+=19318.0;
     s1+=179.0;
    } else {
     s0+=519.0;
     s1+=350.0;
    }
   } else {
    if(i35<0.00010913610458374023){
     s0+=54994.0;
     s1+=32.0;
    } else {
     s0+=12648.0;
     s1+=201.0;
    }
   }
  } else {
   if(i31<1.1164028644561768){
    if(i24<0.00023014267208054662){
     s0+=1114.0;
     s1+=5.0;
    } else {
     s0+=939.0;
     s1+=2270.0;
    }
   } else {
    if(i74<0.022851258516311646){
     s0+=18648.0;
     s1+=700.0;
    } else {
     s0+=316.0;
     s1+=240.0;
    }
   }
  }
 } else {
  if(i21<0.001257777214050293){
   if(i38<0.028930015861988068){
    if(i28<0.007870436646044254){
     s0+=4444.0;
     s1+=308.0;
    } else {
     s0+=811.0;
     s1+=614.0;
    }
   } else {
    if(i0<2.1755695343017578e-05){
     s0+=1014.0;
     s1+=289.0;
    } else {
     s0+=499.0;
     s1+=2099.0;
    }
   }
  } else {
   if(i71<4.149958840571344e-06){
    if(i56<1.0008677244186401){
     s0+=186.0;
     s1+=32.0;
    } else {
     s0+=507.0;
     s1+=4232.0;
    }
   } else {
    s0+=139.0;
   }
  }
 }
} else {
 if(i24<0.0025655513163655996){
  if(i1<-6.943452171981335e-05){
   if(i32<0.0018883347511291504){
    s0+=12.0;
   } else {
    s1+=20.0;
   }
  } else {
   if(i60<1.0017883777618408){
    if(i41<1.001739740371704){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=420.0;
    }
   } else {
    if(i30<1.1738321781158447){
     s0+=80.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i39<-9.397136636835057e-06){
   if(i22<-0.00034123659133911133){
    if(i24<0.007115885615348816){
     s0+=98.0;
     s1+=61.0;
    } else {
     s0+=7.0;
     s1+=457.0;
    }
   } else {
    if(i3<-4.667043685913086e-05){
     s0+=30.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=11836.0;
    }
   }
  } else {
   if(i50<0.06837844848632812){
    s0+=107.0;
   } else {
    if(i23<1.0978089570999146){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
}
if(i5<2.0205974578857422e-05){
 if(i45<0.20560264587402344){
  if(i7<0.0036593973636627197){
   if(i31<1.1162974834442139){
    if(i15<0.9957475662231445){
     s0+=4587.0;
     s1+=534.0;
    } else {
     s0+=21320.0;
     s1+=293.0;
    }
   } else {
    if(i29<0.0019055538577958941){
     s0+=47061.0;
    } else {
     s0+=13394.0;
     s1+=171.0;
    }
   }
  } else {
   if(i3<-2.3543834686279297e-05){
    if(i4<0.9973987340927124){
     s0+=19531.0;
     s1+=303.0;
    } else {
     s0+=1714.0;
     s1+=459.0;
    }
   } else {
    if(i53<1.0000240802764893){
     s0+=940.0;
     s1+=169.0;
    } else {
     s0+=462.0;
     s1+=2230.0;
    }
   }
  }
 } else {
  if(i29<0.004038665443658829){
   if(i54<-3.336360578032327e-06){
    if(i3<-3.0428171157836914e-05){
     s0+=11.0;
    } else {
     s0+=7.0;
     s1+=56.0;
    }
   } else {
    if(i1<-6.396223034244031e-05){
     s1+=2.0;
    } else {
     s0+=122.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.030671317130327225){
    if(i40<0.0028541316278278828){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i64<1.5702931705163792e-05){
     s0+=3.0;
     s1+=445.0;
    } else {
     s0+=7.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i46<-0.0002313152072019875){
  if(i26<0.07009544968605042){
   if(i3<4.5239925384521484e-05){
    if(i23<1.1414964199066162){
     s0+=472.0;
     s1+=95.0;
    } else {
     s0+=13.0;
     s1+=49.0;
    }
   } else {
    if(i54<-1.1680078387144022e-05){
     s0+=80.0;
     s1+=139.0;
    } else {
     s0+=2.0;
     s1+=135.0;
    }
   }
  } else {
   if(i34<1.1757044792175293){
    if(i63<0.0007057955954223871){
     s0+=22.0;
     s1+=1263.0;
    } else {
     s0+=431.0;
     s1+=215.0;
    }
   } else {
    if(i59<-0.018465489149093628){
     s0+=8.0;
    } else {
     s0+=227.0;
     s1+=14009.0;
    }
   }
  }
 } else {
  if(i7<0.003122990019619465){
   if(i51<-1.5050367437652312e-05){
    if(i54<-1.7117841707658954e-05){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=311.0;
    }
   } else {
    if(i21<0.0019519329071044922){
     s0+=4350.0;
     s1+=39.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i51<-4.478618393477518e-06){
    if(i7<0.0035678348504006863){
     s0+=27.0;
     s1+=159.0;
    } else {
     s0+=17.0;
     s1+=1859.0;
    }
   } else {
    if(i0<8.165836334228516e-05){
     s0+=969.0;
     s1+=109.0;
    } else {
     s0+=846.0;
     s1+=1070.0;
    }
   }
  }
 }
}
if(i15<1.0162649154663086){
 if(i1<-8.235467976192012e-05){
  if(i14<0.907936692237854){
   if(i12<0.06571212410926819){
    if(i28<0.05604623630642891){
     s0+=679.0;
     s1+=7.0;
    } else {
     s0+=80.0;
     s1+=51.0;
    }
   } else {
    if(i56<1.0028257369995117){
     s0+=9.0;
     s1+=69.0;
    } else {
     s0+=43.0;
     s1+=30.0;
    }
   }
  } else {
   if(i44<1.129934310913086){
    if(i52<0.9998763799667358){
     s0+=326.0;
     s1+=1.0;
    } else {
     s0+=199.0;
     s1+=787.0;
    }
   } else {
    if(i23<1.0340452194213867){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=102.0;
     s1+=3035.0;
    }
   }
  }
 } else {
  if(i18<0.0017085324507206678){
   if(i31<1.0817922353744507){
    if(i0<0.0013699531555175781){
     s0+=17275.0;
     s1+=557.0;
    } else {
     s1+=182.0;
    }
   } else {
    if(i43<-3.357465539011173e-05){
     s1+=19.0;
    } else {
     s0+=73816.0;
     s1+=326.0;
    }
   }
  } else {
   if(i29<0.0010972470045089722){
    if(i31<1.056142807006836){
     s0+=2275.0;
    } else {
     s0+=240.0;
     s1+=3115.0;
    }
   } else {
    if(i17<0.9983745813369751){
     s0+=16892.0;
     s1+=608.0;
    } else {
     s0+=2891.0;
     s1+=991.0;
    }
   }
  }
 }
} else {
 if(i1<-6.441956793423742e-05){
  if(i16<0.0008672933327034116){
   if(i19<0.10103276371955872){
    if(i51<1.45915428220178e-05){
     s0+=10.0;
     s1+=279.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i4<1.002601146697998){
     s0+=31.0;
     s1+=397.0;
    } else {
     s0+=23.0;
     s1+=12606.0;
    }
   }
  } else {
   s0+=164.0;
  }
 } else {
  if(i31<1.1178560256958008){
   if(i5<2.3245811462402344e-06){
    s0+=14.0;
   } else {
    s1+=626.0;
   }
  } else {
   if(i29<0.001880711643025279){
    s0+=872.0;
   } else {
    if(i0<0.00013571977615356445){
     s0+=540.0;
     s1+=105.0;
    } else {
     s0+=116.0;
     s1+=375.0;
    }
   }
  }
 }
}
if(i9<1.0126030445098877){
 if(i2<1.0024405717849731){
  if(i12<0.2175895869731903){
   if(i28<0.0066441697999835014){
    if(i59<-0.0010555088520050049){
     s0+=3737.0;
     s1+=256.0;
    } else {
     s0+=64670.0;
     s1+=293.0;
    }
   } else {
    if(i32<0.0004125879786442965){
     s0+=2443.0;
     s1+=1414.0;
    } else {
     s0+=38974.0;
     s1+=2464.0;
    }
   }
  } else {
   if(i57<0.06573893129825592){
    if(i5<8.404254913330078e-06){
     s0+=62.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i54<-2.993580210386426e-06){
     s0+=5.0;
     s1+=401.0;
    } else {
     s0+=58.0;
    }
   }
  }
 } else {
  if(i28<0.022413823753595352){
   if(i32<0.0010149308945983648){
    if(i24<0.0002431720495223999){
     s0+=840.0;
    } else {
     s0+=98.0;
     s1+=1122.0;
    }
   } else {
    if(i7<0.0053760092705488205){
     s0+=3936.0;
     s1+=117.0;
    } else {
     s0+=759.0;
     s1+=482.0;
    }
   }
  } else {
   if(i26<0.08304688334465027){
    if(i73<-0.003530561923980713){
     s0+=170.0;
     s1+=325.0;
    } else {
     s0+=327.0;
     s1+=75.0;
    }
   } else {
    if(i3<-2.205371856689453e-05){
     s0+=134.0;
     s1+=178.0;
    } else {
     s0+=139.0;
     s1+=3792.0;
    }
   }
  }
 }
} else {
 if(i34<1.1573951244354248){
  if(i30<1.1180615425109863){
   if(i49<-4.772806278197095e-06){
    s0+=18.0;
   } else {
    s1+=1427.0;
   }
  } else {
   if(i57<0.04818788170814514){
    s0+=362.0;
   } else {
    if(i43<8.567245458834805e-06){
     s0+=16.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i1<-6.365183071466163e-05){
   if(i5<-2.980232238769531e-07){
    if(i1<-0.00012502374011091888){
     s1+=38.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=11562.0;
   }
  } else {
   if(i18<0.0020123645663261414){
    s0+=38.0;
   } else {
    s1+=98.0;
   }
  }
 }
}
if(i26<0.19975057244300842){
 if(i1<-8.769286796450615e-05){
  if(i23<1.038961410522461){
   if(i9<0.975085973739624){
    if(i26<0.0993131697177887){
     s0+=592.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i45<0.016804397106170654){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   }
  } else {
   if(i26<0.041246384382247925){
    if(i59<-0.011742770671844482){
     s0+=189.0;
     s1+=58.0;
    } else {
     s0+=97.0;
     s1+=146.0;
    }
   } else {
    if(i16<0.0006985344225540757){
     s0+=181.0;
     s1+=4195.0;
    } else {
     s0+=207.0;
    }
   }
  }
 } else {
  if(i8<1.012894630432129){
   if(i25<1.0087831020355225){
    if(i24<0.0009238333441317081){
     s0+=32237.0;
     s1+=3847.0;
    } else {
     s0+=80230.0;
     s1+=1236.0;
    }
   } else {
    if(i16<0.0008268530364148319){
     s0+=121.0;
     s1+=583.0;
    } else {
     s0+=241.0;
    }
   }
  } else {
   if(i6<0.00027000904083251953){
    if(i7<0.005567693617194891){
     s0+=367.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   } else {
    if(i24<0.0009976174915209413){
     s1+=1175.0;
    } else {
     s0+=959.0;
     s1+=383.0;
    }
   }
  }
 }
} else {
 if(i39<-1.2148917448939756e-05){
  if(i7<0.0033043823204934597){
   if(i43<-2.343298911000602e-05){
    s1+=89.0;
   } else {
    if(i65<0.07441183924674988){
     s0+=103.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   }
  } else {
   if(i19<0.19807574152946472){
    if(i9<1.0183401107788086){
     s0+=22.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i30<1.1580171585083008){
     s0+=4.0;
    } else {
     s0+=40.0;
     s1+=12784.0;
    }
   }
  }
 } else {
  if(i33<0.0012978905579075217){
   if(i28<0.037181124091148376){
    if(i13<1.042912244796753){
     s0+=507.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   } else {
    if(i13<1.0121493339538574){
     s0+=7.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i25<1.0010440349578857){
    if(i12<0.26872506737709045){
     s0+=34.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=30.0;
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i27<1.021773099899292){
  if(i19<0.23436102271080017){
   if(i28<0.006739684380590916){
    if(i61<-0.0005832910537719727){
     s0+=4387.0;
     s1+=263.0;
    } else {
     s0+=63667.0;
     s1+=301.0;
    }
   } else {
    if(i3<-3.4868717193603516e-05){
     s0+=36273.0;
     s1+=564.0;
    } else {
     s0+=4777.0;
     s1+=2935.0;
    }
   }
  } else {
   if(i43<8.188123319996521e-05){
    if(i2<1.0024874210357666){
     s0+=25.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i65<0.0456540547311306){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i4<1.000950813293457){
   if(i39<-2.6388575861346908e-05){
    if(i19<0.1392642855644226){
     s0+=11.0;
    } else {
     s1+=146.0;
    }
   } else {
    if(i7<0.007099189795553684){
     s0+=688.0;
     s1+=36.0;
    } else {
     s0+=18.0;
     s1+=81.0;
    }
   }
  } else {
   if(i30<1.7041046619415283){
    if(i68<-0.0011240076273679733){
     s0+=48.0;
     s1+=580.0;
    } else {
     s0+=65.0;
     s1+=31.0;
    }
   } else {
    s0+=40.0;
   }
  }
 }
} else {
 if(i16<0.000704434234648943){
  if(i10<1.0153052806854248){
   if(i17<1.0094842910766602){
    if(i0<0.0009225010871887207){
     s0+=2935.0;
     s1+=1976.0;
    } else {
     s0+=185.0;
     s1+=1681.0;
    }
   } else {
    if(i47<6.973743438720703e-05){
     s0+=85.0;
     s1+=2106.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i1<-5.9573649195954204e-05){
    if(i19<0.07444876432418823){
     s0+=17.0;
     s1+=116.0;
    } else {
     s0+=27.0;
     s1+=12594.0;
    }
   } else {
    if(i54<-1.1786450158979278e-05){
     s0+=122.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=487.0;
    }
   }
  }
 } else {
  if(i34<1.3942866325378418){
   s0+=3349.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i8<1.0135973691940308){
 if(i23<1.1402404308319092){
  if(i17<1.006238579750061){
   if(i7<0.0036593973636627197){
    if(i14<0.9949272871017456){
     s0+=16375.0;
     s1+=608.0;
    } else {
     s0+=71183.0;
     s1+=477.0;
    }
   } else {
    if(i35<5.620718002319336e-05){
     s0+=15172.0;
     s1+=180.0;
    } else {
     s0+=8742.0;
     s1+=4184.0;
    }
   }
  } else {
   if(i16<0.00027432802016846836){
    if(i3<5.2988529205322266e-05){
     s0+=369.0;
     s1+=145.0;
    } else {
     s0+=43.0;
     s1+=1419.0;
    }
   } else {
    if(i34<1.1984384059906006){
     s0+=2129.0;
     s1+=19.0;
    } else {
     s0+=80.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i28<0.03669477254152298){
   if(i64<-3.601496473493171e-06){
    if(i34<1.176405668258667){
     s0+=9.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i18<0.0015788881573826075){
     s0+=884.0;
    } else {
     s0+=149.0;
     s1+=126.0;
    }
   }
  } else {
   if(i7<0.006745709106326103){
    s0+=26.0;
   } else {
    if(i27<0.8623865246772766){
     s0+=41.0;
     s1+=99.0;
    } else {
     s0+=10.0;
     s1+=2303.0;
    }
   }
  }
 }
} else {
 if(i10<1.02054762840271){
  if(i18<0.0014066416770219803){
   if(i32<0.0008026179857552052){
    s1+=174.0;
   } else {
    if(i29<0.004022754728794098){
     s0+=451.0;
     s1+=9.0;
    } else {
     s0+=8.0;
     s1+=11.0;
    }
   }
  } else {
   if(i16<0.0008758144685998559){
    if(i7<0.0021148775704205036){
     s0+=48.0;
     s1+=7.0;
    } else {
     s0+=137.0;
     s1+=2470.0;
    }
   } else {
    s0+=314.0;
   }
  }
 } else {
  if(i31<1.6811659336090088){
   if(i22<-0.00021278858184814453){
    if(i38<0.08002512156963348){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   } else {
    if(i29<0.0006273494800552726){
     s0+=50.0;
     s1+=10.0;
    } else {
     s0+=88.0;
     s1+=11868.0;
    }
   }
  } else {
   s0+=83.0;
  }
 }
}
if(i17<1.0080909729003906){
 if(i10<1.0123891830444336){
  if(i28<0.06413139402866364){
   if(i25<1.0061430931091309){
    if(i18<0.0017287731170654297){
     s0+=90078.0;
     s1+=971.0;
    } else {
     s0+=22081.0;
     s1+=4012.0;
    }
   } else {
    if(i31<1.1843671798706055){
     s0+=527.0;
     s1+=53.0;
    } else {
     s0+=440.0;
     s1+=831.0;
    }
   }
  } else {
   if(i44<1.0700323581695557){
    s0+=235.0;
   } else {
    if(i61<-0.00975826382637024){
     s0+=56.0;
     s1+=70.0;
    } else {
     s0+=34.0;
     s1+=1377.0;
    }
   }
  }
 } else {
  if(i39<-1.2954393241670914e-05){
   if(i1<-4.320298467064276e-05){
    if(i19<0.17390602827072144){
     s0+=269.0;
     s1+=863.0;
    } else {
     s0+=6.0;
     s1+=1834.0;
    }
   } else {
    if(i54<-1.1048767191823572e-05){
     s0+=273.0;
     s1+=1.0;
    } else {
     s0+=93.0;
     s1+=247.0;
    }
   }
  } else {
   if(i18<0.0025971767026931047){
    if(i10<1.0124555826187134){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=402.0;
     s1+=2.0;
    }
   } else {
    s1+=32.0;
   }
  }
 }
} else {
 if(i1<-7.335818372666836e-05){
  if(i31<1.1743842363357544){
   if(i29<0.0014211880043148994){
    if(i35<0.0004779994487762451){
     s1+=1079.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i63<0.00039693538565188646){
     s1+=13.0;
    } else {
     s0+=247.0;
    }
   }
  } else {
   if(i9<0.9744640588760376){
    if(i38<0.1955840289592743){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i54<-3.996181021648226e-06){
     s1+=11868.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i29<0.0012467129854485393){
   if(i60<1.003751516342163){
    s1+=951.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i38<0.03270299732685089){
    if(i59<0.0025995373725891113){
     s0+=1621.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   } else {
    if(i34<1.6707003116607666){
     s0+=1.0;
     s1+=179.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i1<-0.00011828212154796347){
 if(i14<0.8995840549468994){
  if(i33<0.00300824036821723){
   if(i69<0.9777128100395203){
    if(i20<1.0305119752883911){
     s0+=234.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i38<0.09387655556201935){
    if(i27<0.8071606159210205){
     s1+=2.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i58<0.00760470749810338){
     s0+=17.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i71<5.784759650850901e-06){
   if(i59<-0.012425273656845093){
    if(i20<1.0338709354400635){
     s0+=28.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=47.0;
    }
   } else {
    if(i56<0.9984319806098938){
     s0+=26.0;
     s1+=186.0;
    } else {
     s0+=66.0;
     s1+=13578.0;
    }
   }
  } else {
   s0+=105.0;
  }
 }
} else {
 if(i6<0.00043398141860961914){
  if(i13<1.0181355476379395){
   if(i2<0.9995008707046509){
    if(i63<0.010327075608074665){
     s0+=52591.0;
     s1+=321.0;
    } else {
     s0+=374.0;
     s1+=41.0;
    }
   } else {
    if(i57<0.03656761348247528){
     s0+=46020.0;
     s1+=1624.0;
    } else {
     s0+=7600.0;
     s1+=1410.0;
    }
   }
  } else {
   if(i28<0.027643796056509018){
    if(i21<-0.002866208553314209){
     s1+=25.0;
    } else {
     s0+=580.0;
     s1+=62.0;
    }
   } else {
    if(i1<-2.015330028370954e-05){
     s0+=1.0;
     s1+=312.0;
    } else {
     s0+=58.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i46<-0.0002126269682776183){
   if(i51<1.3650138498633169e-05){
    if(i47<1.519918441772461e-05){
     s0+=244.0;
     s1+=3283.0;
    } else {
     s0+=310.0;
     s1+=104.0;
    }
   } else {
    if(i32<0.004426720552146435){
     s0+=492.0;
     s1+=111.0;
    } else {
     s0+=304.0;
     s1+=531.0;
    }
   }
  } else {
   if(i17<1.0125303268432617){
    if(i18<0.001798876328393817){
     s0+=4156.0;
     s1+=173.0;
    } else {
     s0+=3149.0;
     s1+=1747.0;
    }
   } else {
    if(i56<1.002943515777588){
     s0+=62.0;
     s1+=514.0;
    } else {
     s0+=109.0;
     s1+=124.0;
    }
   }
  }
 }
}
if(i1<-0.00010072439181385562){
 if(i12<0.01574268937110901){
  if(i10<0.9720922708511353){
   if(i0<0.002507150173187256){
    if(i10<0.9378788471221924){
     s0+=452.0;
     s1+=17.0;
    } else {
     s0+=57.0;
     s1+=13.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i35<0.0009272098541259766){
    if(i68<0.0006105107022449374){
     s1+=46.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i27<0.9453351497650146){
     s1+=2.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i31<1.1719775199890137){
   if(i54<-1.4911503967596218e-05){
    s0+=238.0;
   } else {
    s1+=584.0;
   }
  } else {
   if(i10<0.9227776527404785){
    if(i69<0.5616609454154968){
     s0+=79.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   } else {
    if(i23<1.023787498474121){
     s0+=7.0;
    } else {
     s0+=35.0;
     s1+=14314.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003948807716369629){
  if(i13<1.0198211669921875){
   if(i33<0.0006897139828652143){
    if(i23<1.023176908493042){
     s0+=10786.0;
     s1+=208.0;
    } else {
     s0+=65751.0;
     s1+=158.0;
    }
   } else {
    if(i34<1.0903575420379639){
     s0+=2372.0;
     s1+=1992.0;
    } else {
     s0+=27244.0;
     s1+=798.0;
    }
   }
  } else {
   if(i50<0.03609286621212959){
    if(i1<-8.318612526636571e-05){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=332.0;
     s1+=26.0;
    }
   } else {
    if(i54<-2.8807291982957395e-06){
     s0+=21.0;
     s1+=198.0;
    } else {
     s0+=121.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i16<0.00034962600329890847){
   if(i18<0.0009965559002012014){
    if(i4<1.0079982280731201){
     s0+=1627.0;
    } else {
     s1+=95.0;
    }
   } else {
    if(i36<1.0905089378356934){
     s0+=29.0;
     s1+=2585.0;
    } else {
     s0+=1497.0;
     s1+=2499.0;
    }
   }
  } else {
   if(i44<1.1969611644744873){
    if(i62<0.0013532494194805622){
     s0+=5803.0;
     s1+=32.0;
    } else {
     s0+=341.0;
     s1+=147.0;
    }
   } else {
    if(i12<0.07249769568443298){
     s0+=51.0;
     s1+=31.0;
    } else {
     s0+=7.0;
     s1+=185.0;
    }
   }
  }
 }
}
if(i0<0.0009602904319763184){
 if(i48<1.0352630615234375){
  if(i1<-8.215632988139987e-05){
   if(i55<0.0027256407774984837){
    if(i19<0.05840003490447998){
     s0+=294.0;
     s1+=133.0;
    } else {
     s0+=147.0;
     s1+=1162.0;
    }
   } else {
    if(i28<0.05645288527011871){
     s0+=670.0;
     s1+=11.0;
    } else {
     s0+=106.0;
     s1+=231.0;
    }
   }
  } else {
   if(i35<9.185075759887695e-05){
    if(i37<0.0003285316051915288){
     s0+=16363.0;
     s1+=654.0;
    } else {
     s0+=62566.0;
     s1+=277.0;
    }
   } else {
    if(i16<0.000347952067386359){
     s0+=21062.0;
     s1+=3677.0;
    } else {
     s0+=12081.0;
     s1+=268.0;
    }
   }
  }
 } else {
  if(i50<0.0508536696434021){
   if(i58<0.0009107947698794305){
    if(i5<8.58306884765625e-06){
     s0+=12.0;
    } else {
     s1+=125.0;
    }
   } else {
    if(i54<-3.594068857637467e-06){
     s0+=374.0;
     s1+=312.0;
    } else {
     s0+=339.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<-4.397565498948097e-05){
    if(i15<0.980580747127533){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=968.0;
    }
   } else {
    if(i25<1.00111722946167){
     s0+=147.0;
     s1+=40.0;
    } else {
     s0+=21.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i49<-7.340583579207305e-06){
  s0+=702.0;
 } else {
  if(i16<0.0007058108458295465){
   if(i7<0.004184725694358349){
    if(i21<0.001242995262145996){
     s0+=140.0;
     s1+=65.0;
    } else {
     s0+=49.0;
     s1+=1049.0;
    }
   } else {
    if(i27<0.8721399903297424){
     s0+=31.0;
     s1+=99.0;
    } else {
     s0+=77.0;
     s1+=15296.0;
    }
   }
  } else {
   s0+=1187.0;
  }
 }
}
if(i12<0.18392407894134521){
 if(i2<1.002625584602356){
  if(i8<1.0113122463226318){
   if(i34<1.0903575420379639){
    if(i36<1.0545225143432617){
     s0+=24979.0;
     s1+=846.0;
    } else {
     s0+=3000.0;
     s1+=1903.0;
    }
   } else {
    if(i28<0.08888089656829834){
     s0+=81027.0;
     s1+=1070.0;
    } else {
     s0+=1.0;
     s1+=86.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    if(i56<1.0011847019195557){
     s1+=514.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   } else {
    if(i43<1.6545616745133884e-05){
     s0+=607.0;
     s1+=25.0;
    } else {
     s0+=192.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i4<1.0082670450210571){
   if(i7<0.003486625850200653){
    if(i47<6.496906280517578e-06){
     s0+=148.0;
     s1+=81.0;
    } else {
     s0+=3372.0;
     s1+=62.0;
    }
   } else {
    if(i9<0.9764931797981262){
     s0+=693.0;
     s1+=226.0;
    } else {
     s0+=1180.0;
     s1+=3009.0;
    }
   }
  } else {
   if(i47<2.092123031616211e-05){
    if(i3<8.863210678100586e-05){
     s0+=40.0;
     s1+=7.0;
    } else {
     s0+=31.0;
     s1+=2945.0;
    }
   } else {
    if(i34<1.1815763711929321){
     s0+=458.0;
    } else {
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i37<0.0022813340183347464){
  if(i55<0.0005294083384796977){
   if(i73<0.00031936168670654297){
    s1+=4.0;
   } else {
    if(i30<1.1468710899353027){
     s0+=456.0;
    } else {
     s0+=160.0;
     s1+=5.0;
    }
   }
  } else {
   if(i70<0.17818892002105713){
    if(i4<0.9941979050636292){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i1<-2.7748788852477446e-05){
   if(i39<-7.010176886979025e-06){
    if(i6<0.0007495880126953125){
     s0+=38.0;
     s1+=1189.0;
    } else {
     s0+=6.0;
     s1+=11760.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   if(i17<0.9976631999015808){
    if(i62<0.001165995025075972){
     s0+=256.0;
     s1+=15.0;
    } else {
     s0+=12.0;
     s1+=17.0;
    }
   } else {
    if(i16<0.00016440337640233338){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=116.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i19<0.21697938442230225){
  if(i7<0.0036513074301183224){
   if(i33<0.0005382340168580413){
    if(i37<0.0018990417011082172){
     s0+=62773.0;
     s1+=87.0;
    } else {
     s0+=1877.0;
     s1+=73.0;
    }
   } else {
    if(i3<-4.404783248901367e-05){
     s0+=12261.0;
     s1+=54.0;
    } else {
     s0+=10157.0;
     s1+=896.0;
    }
   }
  } else {
   if(i5<-1.4901161193847656e-06){
    if(i2<0.9991083145141602){
     s0+=16166.0;
     s1+=33.0;
    } else {
     s0+=3051.0;
     s1+=321.0;
    }
   } else {
    if(i9<0.9863733053207397){
     s0+=2414.0;
     s1+=196.0;
    } else {
     s0+=1022.0;
     s1+=2942.0;
    }
   }
  }
 } else {
  if(i39<-9.218598279403523e-06){
   if(i50<0.02749069407582283){
    if(i53<1.0026838779449463){
     s0+=20.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i58<0.004934588447213173){
     s0+=11.0;
     s1+=82.0;
    } else {
     s0+=1.0;
     s1+=561.0;
    }
   }
  } else {
   if(i66<0.0008935872465372086){
    if(i4<0.9978708028793335){
     s1+=2.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=158.0;
   }
  }
 }
} else {
 if(i10<1.017824411392212){
  if(i1<-7.358742004726082e-05){
   if(i16<0.0007160112727433443){
    if(i12<0.0188329815864563){
     s0+=318.0;
     s1+=109.0;
    } else {
     s0+=312.0;
     s1+=3992.0;
    }
   } else {
    s0+=336.0;
   }
  } else {
   if(i28<0.01398983784019947){
    if(i29<0.0009743057889863849){
     s0+=1348.0;
     s1+=1201.0;
    } else {
     s0+=3388.0;
     s1+=74.0;
    }
   } else {
    if(i29<0.0042636217549443245){
     s0+=121.0;
     s1+=638.0;
    } else {
     s0+=619.0;
     s1+=423.0;
    }
   }
  }
 } else {
  if(i47<3.3527612686157227e-05){
   if(i44<1.1342540979385376){
    if(i1<-6.035073602106422e-05){
     s0+=30.0;
     s1+=1723.0;
    } else {
     s0+=135.0;
     s1+=153.0;
    }
   } else {
    if(i51<3.690291123348288e-05){
     s1+=10580.0;
    } else {
     s0+=17.0;
     s1+=147.0;
    }
   }
  } else {
   s0+=22.0;
  }
 }
}
if(i4<1.003865361213684){
 if(i18<0.0017987368628382683){
  if(i18<0.0012453185627236962){
   if(i36<1.1354830265045166){
    if(i20<1.010056734085083){
     s0+=2232.0;
     s1+=73.0;
    } else {
     s0+=70385.0;
     s1+=147.0;
    }
   } else {
    if(i1<-3.366863529663533e-05){
     s0+=423.0;
     s1+=71.0;
    } else {
     s0+=5839.0;
     s1+=56.0;
    }
   }
  } else {
   if(i23<1.0300796031951904){
    if(i37<0.00031522344215773046){
     s0+=513.0;
     s1+=432.0;
    } else {
     s0+=2796.0;
     s1+=133.0;
    }
   } else {
    if(i5<5.960464477539063e-08){
     s0+=7302.0;
     s1+=51.0;
    } else {
     s0+=1151.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i20<1.1215944290161133){
   if(i22<-0.00020247697830200195){
    if(i0<-0.00035130977630615234){
     s0+=15486.0;
     s1+=532.0;
    } else {
     s0+=894.0;
     s1+=502.0;
    }
   } else {
    if(i16<0.0002630844246596098){
     s0+=1397.0;
     s1+=2715.0;
    } else {
     s0+=3528.0;
     s1+=243.0;
    }
   }
  } else {
   if(i28<0.029660392552614212){
    if(i34<1.2243194580078125){
     s0+=205.0;
     s1+=35.0;
    } else {
     s0+=31.0;
     s1+=88.0;
    }
   } else {
    if(i1<-2.443483390379697e-05){
     s0+=22.0;
     s1+=1445.0;
    } else {
     s0+=71.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007046828395687044){
  if(i3<6.562471389770508e-05){
   if(i30<1.1766420602798462){
    if(i18<0.0021241488866508007){
     s0+=1266.0;
    } else {
     s0+=34.0;
     s1+=405.0;
    }
   } else {
    if(i7<0.0031108621042221785){
     s0+=197.0;
     s1+=12.0;
    } else {
     s0+=55.0;
     s1+=1060.0;
    }
   }
  } else {
   if(i5<0.0002281665802001953){
    if(i9<1.012805700302124){
     s0+=230.0;
     s1+=3530.0;
    } else {
     s0+=11.0;
     s1+=12544.0;
    }
   } else {
    s0+=43.0;
   }
  }
 } else {
  s0+=2474.0;
 }
}
if(i5<2.294778823852539e-05){
 if(i28<0.07152965664863586){
  if(i7<0.003630575258284807){
   if(i15<0.9957728981971741){
    if(i18<0.0008839669171720743){
     s0+=12696.0;
     s1+=63.0;
    } else {
     s0+=6021.0;
     s1+=593.0;
    }
   } else {
    if(i7<0.002823524409905076){
     s0+=62908.0;
     s1+=199.0;
    } else {
     s0+=5431.0;
     s1+=174.0;
    }
   }
  } else {
   if(i35<3.737211227416992e-05){
    if(i2<1.0001243352890015){
     s0+=15156.0;
     s1+=75.0;
    } else {
     s0+=91.0;
     s1+=100.0;
    }
   } else {
    if(i4<0.9985604286193848){
     s0+=6489.0;
     s1+=581.0;
    } else {
     s0+=1300.0;
     s1+=3115.0;
    }
   }
  }
 } else {
  if(i22<-0.0009225010871887207){
   if(i28<0.0918012484908104){
    if(i46<-0.0015987561782822013){
     s1+=4.0;
    } else {
     s0+=171.0;
     s1+=3.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i64<2.0494460841291584e-05){
    s1+=525.0;
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i16<0.0007036929600872099){
  if(i9<1.0101873874664307){
   if(i12<0.15593549609184265){
    if(i0<0.0009225010871887207){
     s0+=2569.0;
     s1+=1186.0;
    } else {
     s0+=201.0;
     s1+=1099.0;
    }
   } else {
    if(i18<0.0021798424422740936){
     s0+=89.0;
     s1+=17.0;
    } else {
     s0+=78.0;
     s1+=2609.0;
    }
   }
  } else {
   if(i3<6.312131881713867e-05){
    if(i25<1.0034937858581543){
     s1+=238.0;
    } else {
     s0+=119.0;
     s1+=164.0;
    }
   } else {
    if(i37<0.0017599489074200392){
     s0+=72.0;
     s1+=2006.0;
    } else {
     s1+=11434.0;
    }
   }
  }
 } else {
  if(i57<0.1274736076593399){
   s0+=3262.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i8<1.0135951042175293){
 if(i3<6.395578384399414e-05){
  if(i33<0.0007354473927989602){
   if(i33<0.0005171962548047304){
    if(i29<0.0019054749282076955){
     s0+=64643.0;
     s1+=60.0;
    } else {
     s0+=3354.0;
     s1+=78.0;
    }
   } else {
    if(i52<1.00022554397583){
     s0+=9264.0;
     s1+=34.0;
    } else {
     s0+=4190.0;
     s1+=463.0;
    }
   }
  } else {
   if(i29<0.0009609137196093798){
    if(i31<1.056142807006836){
     s0+=2819.0;
    } else {
     s0+=550.0;
     s1+=2935.0;
    }
   } else {
    if(i1<-9.203179070027545e-05){
     s0+=863.0;
     s1+=1374.0;
    } else {
     s0+=27836.0;
     s1+=1500.0;
    }
   }
  }
 } else {
  if(i16<0.0007047191611491144){
   if(i0<0.0013427138328552246){
    if(i6<0.00043642520904541016){
     s0+=69.0;
    } else {
     s0+=221.0;
     s1+=731.0;
    }
   } else {
    if(i19<0.009496986865997314){
     s0+=21.0;
     s1+=54.0;
    } else {
     s0+=44.0;
     s1+=2518.0;
    }
   }
  } else {
   s0+=1249.0;
  }
 }
} else {
 if(i39<-1.1194244507350959e-05){
  if(i1<-8.815387991489843e-05){
   if(i64<1.6792389942565933e-05){
    if(i54<-7.718443521298468e-05){
     s0+=6.0;
    } else {
     s0+=28.0;
     s1+=12691.0;
    }
   } else {
    s0+=21.0;
   }
  } else {
   if(i16<0.0003270622401032597){
    if(i1<-2.846742245310452e-05){
     s0+=69.0;
     s1+=1875.0;
    } else {
     s0+=127.0;
     s1+=75.0;
    }
   } else {
    if(i44<1.1677536964416504){
     s0+=696.0;
    } else {
     s1+=56.0;
    }
   }
  }
 } else {
  if(i34<1.0887749195098877){
   s1+=8.0;
  } else {
   if(i24<0.0025768298655748367){
    s0+=326.0;
   } else {
    if(i23<1.0907409191131592){
     s0+=3.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
}
if(i2<1.0026849508285522){
 if(i3<5.322694778442383e-05){
  if(i28<0.08931306004524231){
   if(i29<0.0010703555308282375){
    if(i6<0.00013935565948486328){
     s0+=28660.0;
     s1+=1435.0;
    } else {
     s0+=3295.0;
     s1+=1909.0;
    }
   } else {
    if(i41<1.0379185676574707){
     s0+=77725.0;
     s1+=1064.0;
    } else {
     s0+=229.0;
     s1+=286.0;
    }
   }
  } else {
   if(i63<0.0014585885219275951){
    s0+=2.0;
   } else {
    s1+=325.0;
   }
  }
 } else {
  if(i11<1.016829490661621){
   if(i57<0.061427149921655655){
    if(i43<5.4282900237012655e-06){
     s0+=626.0;
     s1+=45.0;
    } else {
     s0+=144.0;
     s1+=145.0;
    }
   } else {
    s1+=81.0;
   }
  } else {
   if(i56<0.9962795376777649){
    s0+=1.0;
   } else {
    if(i49<-3.4534386941231787e-06){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=377.0;
    }
   }
  }
 }
} else {
 if(i3<8.350610733032227e-05){
  if(i18<0.0020146716851741076){
   if(i62<-0.0006072926335036755){
    if(i53<1.0044472217559814){
     s1+=51.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i51<9.826871064433362e-06){
     s0+=2613.0;
     s1+=8.0;
    } else {
     s0+=179.0;
     s1+=70.0;
    }
   }
  } else {
   if(i20<1.104677438735962){
    if(i17<1.002165675163269){
     s0+=1502.0;
     s1+=552.0;
    } else {
     s0+=418.0;
     s1+=824.0;
    }
   } else {
    if(i29<0.0019835536368191242){
     s0+=52.0;
    } else {
     s0+=229.0;
     s1+=2122.0;
    }
   }
  }
 } else {
  if(i32<0.0018792010378092527){
   if(i58<0.0009261462837457657){
    if(i16<0.0003519846359267831){
     s0+=2.0;
     s1+=1797.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i36<1.0905089378356934){
     s1+=73.0;
    } else {
     s0+=888.0;
     s1+=44.0;
    }
   }
  } else {
   if(i12<0.0003789663314819336){
    if(i56<1.0030630826950073){
     s0+=31.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i44<1.0755698680877686){
     s0+=14.0;
     s1+=25.0;
    } else {
     s0+=22.0;
     s1+=12900.0;
    }
   }
  }
 }
}
if(i9<1.0100185871124268){
 if(i63<0.0035041370429098606){
  if(i51<-8.541703209630214e-06){
   if(i39<-9.078706352738664e-05){
    s0+=20.0;
   } else {
    if(i64<-3.79041489395604e-06){
     s0+=6.0;
     s1+=308.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i18<0.0018291294109076262){
    if(i56<0.9996514320373535){
     s0+=36735.0;
     s1+=55.0;
    } else {
     s0+=55278.0;
     s1+=1141.0;
    }
   } else {
    if(i0<-0.00039190053939819336){
     s0+=14632.0;
     s1+=605.0;
    } else {
     s0+=3841.0;
     s1+=4167.0;
    }
   }
  }
 } else {
  if(i3<7.092952728271484e-06){
   if(i68<-0.0007414873107336462){
    if(i5<6.4373016357421875e-06){
     s0+=517.0;
     s1+=304.0;
    } else {
     s0+=90.0;
     s1+=525.0;
    }
   } else {
    if(i16<0.0006340622203424573){
     s0+=3215.0;
     s1+=140.0;
    } else {
     s0+=34.0;
     s1+=28.0;
    }
   }
  } else {
   if(i28<0.030814096331596375){
    if(i26<0.03938347101211548){
     s0+=124.0;
     s1+=14.0;
    } else {
     s0+=100.0;
     s1+=164.0;
    }
   } else {
    if(i10<0.9341237545013428){
     s0+=26.0;
     s1+=93.0;
    } else {
     s0+=16.0;
     s1+=2405.0;
    }
   }
  }
 }
} else {
 if(i9<1.0133613348007202){
  if(i35<0.0007399618625640869){
   if(i2<1.001543641090393){
    if(i28<0.026453837752342224){
     s0+=191.0;
     s1+=5.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i4<1.0022377967834473){
     s0+=34.0;
     s1+=4.0;
    } else {
     s0+=82.0;
     s1+=1430.0;
    }
   }
  } else {
   if(i32<0.002098953351378441){
    if(i41<0.9869627952575684){
     s1+=2.0;
    } else {
     s0+=1169.0;
    }
   } else {
    if(i7<0.0033731618896126747){
     s0+=13.0;
    } else {
     s0+=8.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i1<-6.132783892098814e-05){
   if(i54<-7.231465860968456e-05){
    s0+=9.0;
   } else {
    if(i10<1.0185456275939941){
     s0+=52.0;
     s1+=1081.0;
    } else {
     s0+=2.0;
     s1+=11664.0;
    }
   }
  } else {
   if(i4<1.009018898010254){
    if(i35<0.0001240372657775879){
     s0+=23.0;
    } else {
     s0+=11.0;
     s1+=121.0;
    }
   } else {
    if(i30<1.100994348526001){
     s1+=38.0;
    } else {
     s0+=95.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i13<1.016731858253479){
 if(i3<7.194280624389648e-05){
  if(i1<-8.177189738489687e-05){
   if(i46<-0.0003863438032567501){
    if(i55<0.003252848284319043){
     s0+=41.0;
     s1+=994.0;
    } else {
     s0+=106.0;
     s1+=77.0;
    }
   } else {
    if(i3<2.980232238769531e-07){
     s0+=818.0;
     s1+=119.0;
    } else {
     s0+=185.0;
     s1+=207.0;
    }
   }
  } else {
   if(i28<0.006684551946818829){
    if(i23<1.0178465843200684){
     s0+=2437.0;
     s1+=185.0;
    } else {
     s0+=68196.0;
     s1+=456.0;
    }
   } else {
    if(i0<-0.0004312098026275635){
     s0+=37116.0;
     s1+=667.0;
    } else {
     s0+=4608.0;
     s1+=3404.0;
    }
   }
  }
 } else {
  if(i57<0.043682415038347244){
   if(i49<-7.737557098153047e-06){
    s0+=435.0;
   } else {
    if(i23<1.0774388313293457){
     s0+=37.0;
     s1+=1057.0;
    } else {
     s0+=651.0;
     s1+=304.0;
    }
   }
  } else {
   if(i0<0.0010179877281188965){
    if(i14<0.9806441068649292){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i52<0.9969871640205383){
     s0+=5.0;
    } else {
     s0+=86.0;
     s1+=2354.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007059713825583458){
  if(i14<1.018288016319275){
   if(i19<0.18967536091804504){
    if(i63<0.0005378259811550379){
     s0+=6.0;
     s1+=279.0;
    } else {
     s0+=660.0;
     s1+=235.0;
    }
   } else {
    if(i33<0.0002666026121005416){
     s0+=3.0;
    } else {
     s0+=27.0;
     s1+=766.0;
    }
   }
  } else {
   if(i0<0.00023308396339416504){
    if(i33<0.00205418118275702){
     s0+=481.0;
     s1+=141.0;
    } else {
     s0+=2.0;
     s1+=174.0;
    }
   } else {
    if(i0<0.001050710678100586){
     s0+=140.0;
     s1+=1330.0;
    } else {
     s0+=19.0;
     s1+=11493.0;
    }
   }
  }
 } else {
  s0+=542.0;
 }
}
if(i27<1.0214221477508545){
 if(i18<0.0018776271026581526){
  if(i51<-1.064194475475233e-05){
   if(i35<0.00083121657371521){
    if(i2<1.0042102336883545){
     s0+=28.0;
    } else {
     s0+=6.0;
     s1+=647.0;
    }
   } else {
    if(i55<0.000725259305909276){
     s0+=69.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i59<-0.0005814433097839355){
    if(i43<3.603945151553489e-05){
     s0+=8586.0;
     s1+=9.0;
    } else {
     s0+=8920.0;
     s1+=740.0;
    }
   } else {
    if(i38<0.01144394464790821){
     s0+=57948.0;
     s1+=88.0;
    } else {
     s0+=18553.0;
     s1+=417.0;
    }
   }
  }
 } else {
  if(i7<0.004010566510260105){
   if(i33<0.0010023147333413363){
    if(i0<0.000758051872253418){
     s0+=651.0;
     s1+=105.0;
    } else {
     s1+=168.0;
    }
   } else {
    if(i5<0.00010597705841064453){
     s0+=9214.0;
     s1+=13.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i17<0.9942061901092529){
    if(i12<0.16984209418296814){
     s0+=7992.0;
     s1+=529.0;
    } else {
     s0+=110.0;
     s1+=440.0;
    }
   } else {
    if(i60<0.9991405010223389){
     s0+=1244.0;
     s1+=634.0;
    } else {
     s0+=1497.0;
     s1+=7173.0;
    }
   }
  }
 }
} else {
 if(i12<0.1752069592475891){
  if(i5<8.52346420288086e-06){
   if(i54<-2.980833414767403e-06){
    if(i64<6.680858859908767e-06){
     s0+=13.0;
     s1+=50.0;
    } else {
     s0+=146.0;
    }
   } else {
    s0+=452.0;
   }
  } else {
   if(i22<-0.00015169382095336914){
    if(i60<1.0031354427337646){
     s0+=26.0;
     s1+=18.0;
    } else {
     s0+=231.0;
     s1+=5.0;
    }
   } else {
    if(i35<0.0008417367935180664){
     s0+=178.0;
     s1+=2043.0;
    } else {
     s0+=261.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i7<0.005056971684098244){
   if(i9<1.012850046157837){
    if(i17<0.9995501041412354){
     s0+=173.0;
     s1+=12.0;
    } else {
     s0+=40.0;
     s1+=30.0;
    }
   } else {
    if(i1<-7.735823601251468e-05){
     s1+=192.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i34<1.1432669162750244){
    s0+=2.0;
   } else {
    if(i21<-0.0036717355251312256){
     s0+=2.0;
     s1+=53.0;
    } else {
     s1+=11050.0;
    }
   }
  }
 }
}
if(i21<0.0013865232467651367){
 if(i4<1.00313138961792){
  if(i65<0.4629526734352112){
   if(i33<0.0007170927128754556){
    if(i33<0.0005328953266143799){
     s0+=67243.0;
     s1+=141.0;
    } else {
     s0+=11134.0;
     s1+=329.0;
    }
   } else {
    if(i27<1.0211706161499023){
     s0+=31654.0;
     s1+=4092.0;
    } else {
     s0+=489.0;
     s1+=722.0;
    }
   }
  } else {
   if(i12<0.0499325692653656){
    s0+=122.0;
   } else {
    if(i23<1.0715563297271729){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=530.0;
    }
   }
  }
 } else {
  if(i36<1.1712620258331299){
   if(i46<-0.00024820968974381685){
    if(i18<0.0021589533425867558){
     s0+=235.0;
     s1+=154.0;
    } else {
     s0+=64.0;
     s1+=789.0;
    }
   } else {
    if(i35<0.0005211532115936279){
     s0+=1305.0;
     s1+=715.0;
    } else {
     s0+=3275.0;
     s1+=84.0;
    }
   }
  } else {
   if(i19<0.09438374638557434){
    if(i73<-0.000729680061340332){
     s0+=59.0;
     s1+=248.0;
    } else {
     s0+=77.0;
     s1+=13.0;
    }
   } else {
    if(i44<1.107614517211914){
     s0+=19.0;
     s1+=54.0;
    } else {
     s0+=24.0;
     s1+=3230.0;
    }
   }
  }
 }
} else {
 if(i31<1.1979892253875732){
  if(i34<1.116863489151001){
   if(i35<0.0007704198360443115){
    if(i53<1.0002268552780151){
     s0+=2.0;
    } else {
     s1+=1933.0;
    }
   } else {
    s0+=185.0;
   }
  } else {
   s0+=669.0;
  }
 } else {
  if(i4<1.0037727355957031){
   if(i48<1.0405514240264893){
    if(i42<1.1054470539093018){
     s0+=102.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i34<1.1427289247512817){
    s0+=14.0;
   } else {
    s1+=11107.0;
   }
  }
 }
}
if(i0<0.0009617209434509277){
 if(i19<0.20764318108558655){
  if(i1<-7.644675497431308e-05){
   if(i68<-0.0005826011765748262){
    if(i23<1.0436580181121826){
     s0+=77.0;
     s1+=4.0;
    } else {
     s0+=225.0;
     s1+=1122.0;
    }
   } else {
    if(i74<0.02806778997182846){
     s0+=1182.0;
     s1+=117.0;
    } else {
     s0+=123.0;
     s1+=142.0;
    }
   }
  } else {
   if(i31<1.1162974834442139){
    if(i15<1.0087864398956299){
     s0+=29736.0;
     s1+=2693.0;
    } else {
     s0+=376.0;
     s1+=1026.0;
    }
   } else {
    if(i7<0.0074869971722364426){
     s0+=78201.0;
     s1+=703.0;
    } else {
     s0+=3990.0;
     s1+=633.0;
    }
   }
  }
 } else {
  if(i46<-0.00021972274407744408){
   if(i39<-8.040256034291815e-06){
    if(i50<0.048891581594944){
     s0+=30.0;
     s1+=168.0;
    } else {
     s0+=5.0;
     s1+=1298.0;
    }
   } else {
    s0+=90.0;
   }
  } else {
   if(i28<0.037079110741615295){
    if(i24<0.007944051176309586){
     s0+=189.0;
     s1+=13.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i66<0.05638103187084198){
     s0+=3.0;
     s1+=129.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019787342753261328){
  if(i70<0.06397393345832825){
   if(i33<0.0010953332530334592){
    if(i31<1.124298334121704){
     s0+=3.0;
     s1+=2270.0;
    } else {
     s0+=202.0;
     s1+=14.0;
    }
   } else {
    if(i14<1.0275665521621704){
     s0+=561.0;
     s1+=5.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i40<0.0010401129256933928){
    if(i47<1.6927719116210938e-05){
     s0+=3.0;
     s1+=208.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i24<0.0024464414454996586){
     s0+=1159.0;
     s1+=5.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i52<0.9973210096359253){
   s0+=53.0;
  } else {
   if(i61<-0.00736767053604126){
    if(i25<1.013185739517212){
     s0+=39.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=138.0;
    }
   } else {
    if(i26<0.0757032036781311){
     s0+=36.0;
     s1+=261.0;
    } else {
     s0+=25.0;
     s1+=13562.0;
    }
   }
  }
 }
}
if(i48<1.0307652950286865){
 if(i0<0.0010228753089904785){
  if(i6<0.0003272891044616699){
   if(i30<1.0905578136444092){
    if(i35<7.408857345581055e-05){
     s0+=21226.0;
     s1+=688.0;
    } else {
     s0+=3094.0;
     s1+=1231.0;
    }
   } else {
    if(i40<0.038333017379045486){
     s0+=79498.0;
     s1+=1032.0;
    } else {
     s0+=19.0;
     s1+=57.0;
    }
   }
  } else {
   if(i18<0.0019943963270634413){
    if(i51<8.968350812210701e-06){
     s0+=5350.0;
     s1+=6.0;
    } else {
     s0+=288.0;
     s1+=131.0;
    }
   } else {
    if(i33<0.0011390638537704945){
     s0+=367.0;
     s1+=1757.0;
    } else {
     s0+=3447.0;
     s1+=1610.0;
    }
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i35<0.0005122125148773193){
    if(i3<7.76052474975586e-05){
     s0+=56.0;
     s1+=171.0;
    } else {
     s0+=5.0;
     s1+=1613.0;
    }
   } else {
    if(i10<0.9899147748947144){
     s1+=3.0;
    } else {
     s0+=1525.0;
    }
   }
  } else {
   if(i12<0.002888798713684082){
    if(i52<1.000321626663208){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i19<0.09436097741127014){
     s0+=38.0;
     s1+=465.0;
    } else {
     s0+=4.0;
     s1+=3413.0;
    }
   }
  }
 }
} else {
 if(i54<-5.420297384262085e-06){
  if(i4<1.0016775131225586){
   if(i12<0.22720173001289368){
    if(i7<0.0066328938119113445){
     s0+=281.0;
     s1+=9.0;
    } else {
     s0+=55.0;
     s1+=85.0;
    }
   } else {
    if(i35<0.000705420970916748){
     s0+=2.0;
     s1+=281.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  } else {
   if(i37<0.0027678292244672775){
    if(i49<-2.6853374492930016e-06){
     s0+=241.0;
     s1+=24.0;
    } else {
     s0+=20.0;
     s1+=704.0;
    }
   } else {
    if(i34<1.1757044792175293){
     s0+=28.0;
     s1+=28.0;
    } else {
     s0+=79.0;
     s1+=10816.0;
    }
   }
  }
 } else {
  if(i39<-1.456057907489594e-05){
   if(i28<0.009431630373001099){
    s0+=4.0;
   } else {
    s1+=76.0;
   }
  } else {
   if(i60<1.0021321773529053){
    if(i31<1.0905578136444092){
     s0+=13.0;
     s1+=13.0;
    } else {
     s0+=825.0;
     s1+=1.0;
    }
   } else {
    if(i44<1.1201868057250977){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i1<-9.07825815374963e-05){
 if(i55<0.0030145493801683187){
  if(i34<1.1528396606445312){
   if(i5<7.095932960510254e-05){
    if(i35<0.0005395412445068359){
     s0+=8.0;
     s1+=809.0;
    } else {
     s0+=153.0;
    }
   } else {
    if(i40<0.0005261822370812297){
     s1+=4.0;
    } else {
     s0+=180.0;
    }
   }
  } else {
   if(i3<2.9802322387695312e-06){
    if(i59<-0.01052546501159668){
     s0+=99.0;
     s1+=48.0;
    } else {
     s0+=50.0;
     s1+=509.0;
    }
   } else {
    if(i10<0.9396493434906006){
     s0+=39.0;
     s1+=31.0;
    } else {
     s0+=57.0;
     s1+=14273.0;
    }
   }
  }
 } else {
  if(i57<0.34832680225372314){
   if(i19<0.09791669249534607){
    if(i11<0.9588305950164795){
     s0+=534.0;
     s1+=42.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i42<0.8881314992904663){
     s0+=12.0;
    } else {
     s0+=10.0;
     s1+=64.0;
    }
   }
  } else {
   if(i23<1.0809998512268066){
    s0+=53.0;
   } else {
    s1+=122.0;
   }
  }
 }
} else {
 if(i51<-1.2571907063829713e-05){
  if(i29<0.0012908419594168663){
   s1+=633.0;
  } else {
   if(i7<0.004095336422324181){
    s0+=93.0;
   } else {
    s1+=281.0;
   }
  }
 } else {
  if(i10<1.011128544807434){
   if(i53<1.002571940422058){
    if(i24<0.0008751751738600433){
     s0+=31098.0;
     s1+=2839.0;
    } else {
     s0+=71642.0;
     s1+=580.0;
    }
   } else {
    if(i62<0.0009599729673936963){
     s0+=7685.0;
     s1+=916.0;
    } else {
     s0+=2416.0;
     s1+=996.0;
    }
   }
  } else {
   if(i7<0.004372354596853256){
    if(i37<0.0005036754882894456){
     s1+=142.0;
    } else {
     s0+=2275.0;
     s1+=55.0;
    }
   } else {
    if(i52<0.999728798866272){
     s0+=104.0;
    } else {
     s0+=105.0;
     s1+=1892.0;
    }
   }
  }
 }
}
if(i2<1.0026330947875977){
 if(i13<1.0181148052215576){
  if(i57<0.422817587852478){
   if(i6<0.00026351213455200195){
    if(i24<0.0008653205586597323){
     s0+=29581.0;
     s1+=2033.0;
    } else {
     s0+=71833.0;
     s1+=560.0;
    }
   } else {
    if(i29<0.0010208472376689315){
     s0+=2140.0;
     s1+=1287.0;
    } else {
     s0+=6267.0;
     s1+=419.0;
    }
   }
  } else {
   if(i3<-0.00015524029731750488){
    s0+=61.0;
   } else {
    if(i59<-0.020905107259750366){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i54<-3.787335344895837e-06){
   if(i50<0.03739353269338608){
    if(i31<1.1180615425109863){
     s1+=381.0;
    } else {
     s0+=179.0;
     s1+=91.0;
    }
   } else {
    if(i35<0.0005397200584411621){
     s0+=5.0;
     s1+=679.0;
    } else {
     s0+=8.0;
     s1+=3.0;
    }
   }
  } else {
   if(i33<0.0011129004415124655){
    if(i43<0.00013137809582985938){
     s0+=471.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<-4.571676254272461e-05){
     s0+=4.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i46<-0.0002422538527753204){
  if(i20<1.0362656116485596){
   if(i5<5.8770179748535156e-05){
    if(i29<0.0016289795748889446){
     s0+=1.0;
     s1+=48.0;
    } else {
     s0+=300.0;
     s1+=80.0;
    }
   } else {
    if(i39<-0.00017377480980940163){
     s0+=3.0;
    } else {
     s0+=7.0;
     s1+=110.0;
    }
   }
  } else {
   if(i11<1.0205527544021606){
    if(i44<1.1268494129180908){
     s0+=569.0;
     s1+=707.0;
    } else {
     s0+=175.0;
     s1+=3601.0;
    }
   } else {
    if(i4<1.0013082027435303){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=22.0;
     s1+=10340.0;
    }
   }
  }
 } else {
  if(i25<1.0107781887054443){
   if(i7<0.002560536377131939){
    if(i30<1.0945069789886475){
     s0+=723.0;
     s1+=60.0;
    } else {
     s0+=2369.0;
    }
   } else {
    if(i32<0.0008667704532854259){
     s0+=10.0;
     s1+=837.0;
    } else {
     s0+=1748.0;
     s1+=724.0;
    }
   }
  } else {
   if(i49<-5.430460078059696e-06){
    if(i6<0.0027358531951904297){
     s0+=42.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i3<9.98377799987793e-05){
     s0+=56.0;
     s1+=82.0;
    } else {
     s0+=19.0;
     s1+=1910.0;
    }
   }
  }
 }
}
if(i6<0.0005963444709777832){
 if(i33<0.0007093652384355664){
  if(i29<0.0003272547328379005){
   if(i8<0.9955826997756958){
    if(i17<0.9956828355789185){
     s0+=1767.0;
     s1+=5.0;
    } else {
     s0+=483.0;
     s1+=209.0;
    }
   } else {
    if(i21<-0.00036579370498657227){
     s0+=2147.0;
     s1+=106.0;
    } else {
     s0+=15136.0;
     s1+=12.0;
    }
   }
  } else {
   if(i37<0.0019205338321626186){
    if(i50<0.14028355479240417){
     s0+=54485.0;
     s1+=23.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   } else {
    if(i0<-0.00027623772621154785){
     s0+=4566.0;
    } else {
     s0+=690.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i0<-0.0005058646202087402){
   if(i27<1.0390163660049438){
    if(i24<0.0009500917512923479){
     s0+=865.0;
     s1+=248.0;
    } else {
     s0+=24127.0;
     s1+=589.0;
    }
   } else {
    if(i9<1.0003643035888672){
     s0+=8.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=2.0;
    }
   }
  } else {
   if(i57<0.033496905118227005){
    if(i36<1.0839190483093262){
     s0+=1679.0;
     s1+=1558.0;
    } else {
     s0+=3174.0;
     s1+=214.0;
    }
   } else {
    if(i38<0.022274203598499298){
     s0+=231.0;
     s1+=44.0;
    } else {
     s0+=476.0;
     s1+=2148.0;
    }
   }
  }
 }
} else {
 if(i37<0.002964819548651576){
  if(i63<0.0007057955954223871){
   if(i36<1.0487251281738281){
    s0+=1298.0;
   } else {
    if(i31<1.116804838180542){
     s1+=2794.0;
    } else {
     s0+=286.0;
     s1+=18.0;
    }
   }
  } else {
   if(i57<0.04470783472061157){
    if(i24<0.002533013466745615){
     s0+=3246.0;
     s1+=29.0;
    } else {
     s0+=19.0;
     s1+=87.0;
    }
   } else {
    if(i11<0.9933815002441406){
     s0+=129.0;
     s1+=13.0;
    } else {
     s0+=95.0;
     s1+=442.0;
    }
   }
  }
 } else {
  if(i12<0.06765583157539368){
   if(i73<-0.0026677846908569336){
    if(i41<0.9057499170303345){
     s0+=234.0;
     s1+=201.0;
    } else {
     s0+=43.0;
     s1+=234.0;
    }
   } else {
    if(i54<-2.041969128185883e-05){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=762.0;
     s1+=25.0;
    }
   }
  } else {
   if(i46<-0.00035307544749230146){
    if(i62<0.014439202845096588){
     s0+=108.0;
     s1+=12852.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i4<1.002443552017212){
     s0+=216.0;
     s1+=170.0;
    } else {
     s0+=86.0;
     s1+=2151.0;
    }
   }
  }
 }
}
if(i0<0.0009440779685974121){
 if(i19<0.20617127418518066){
  if(i4<1.0026233196258545){
   if(i74<0.02638360485434532){
    if(i28<0.0073992908000946045){
     s0+=67575.0;
     s1+=590.0;
    } else {
     s0+=39455.0;
     s1+=3482.0;
    }
   } else {
    if(i28<0.05608603358268738){
     s0+=850.0;
     s1+=171.0;
    } else {
     s0+=65.0;
     s1+=312.0;
    }
   }
  } else {
   if(i55<0.00024749099975451827){
    if(i59<0.0015715360641479492){
     s0+=5364.0;
     s1+=558.0;
    } else {
     s0+=250.0;
     s1+=684.0;
    }
   } else {
    if(i24<0.001941401744261384){
     s0+=40.0;
    } else {
     s0+=205.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i54<-4.504263415583409e-06){
   if(i7<0.004370578099042177){
    if(i9<1.0011626482009888){
     s0+=49.0;
    } else {
     s0+=21.0;
     s1+=18.0;
    }
   } else {
    if(i44<1.1174499988555908){
     s0+=11.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=1414.0;
    }
   }
  } else {
   if(i43<7.538804493378848e-05){
    if(i23<1.101456880569458){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=177.0;
    }
   } else {
    if(i40<0.003722621127963066){
     s0+=29.0;
    } else {
     s0+=4.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i37<0.0023648133501410484){
  if(i31<1.116804838180542){
   if(i37<0.000197875895537436){
    s0+=91.0;
   } else {
    s1+=2448.0;
   }
  } else {
   if(i55<0.00030445674201473594){
    if(i38<0.031911008059978485){
     s0+=2017.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i25<1.0044806003570557){
     s0+=9.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i10<0.9381884336471558){
   if(i25<1.0145436525344849){
    if(i8<0.9607958793640137){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i47<5.453824996948242e-06){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=90.0;
    }
   }
  } else {
   if(i36<1.127323031425476){
    if(i72<-0.003465801477432251){
     s1+=4.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i9<1.005394458770752){
     s0+=51.0;
     s1+=1475.0;
    } else {
     s0+=9.0;
     s1+=12554.0;
    }
   }
  }
 }
}
if(i6<0.0005698800086975098){
 if(i18<0.0017004840774461627){
  if(i34<1.0776758193969727){
   if(i30<1.0577976703643799){
    if(i11<0.991518497467041){
     s0+=2414.0;
     s1+=5.0;
    } else {
     s0+=14447.0;
    }
   } else {
    if(i15<0.9944347143173218){
     s0+=639.0;
     s1+=396.0;
    } else {
     s0+=4991.0;
     s1+=280.0;
    }
   }
  } else {
   if(i58<0.0019458781462162733){
    if(i40<0.0017822999507188797){
     s0+=60797.0;
     s1+=81.0;
    } else {
     s0+=2620.0;
     s1+=72.0;
    }
   } else {
    if(i2<1.0023376941680908){
     s0+=3022.0;
     s1+=91.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i29<0.0012060783337801695){
   if(i34<1.0498223304748535){
    if(i30<1.0623862743377686){
     s0+=1648.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i51<2.569230127846822e-05){
     s0+=267.0;
     s1+=2505.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   }
  } else {
   if(i58<0.014070045202970505){
    if(i41<1.0238704681396484){
     s0+=18018.0;
     s1+=778.0;
    } else {
     s0+=413.0;
     s1+=367.0;
    }
   } else {
    if(i9<0.9577896595001221){
     s0+=349.0;
     s1+=27.0;
    } else {
     s0+=7.0;
     s1+=539.0;
    }
   }
  }
 }
} else {
 if(i37<0.002976000076159835){
  if(i43<-2.6873582100961357e-05){
   if(i47<1.424551010131836e-05){
    if(i33<0.0010367247741669416){
     s0+=7.0;
     s1+=1426.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i37<0.0008589019416831434){
     s1+=6.0;
    } else {
     s0+=84.0;
     s1+=3.0;
    }
   }
  } else {
   if(i31<1.116804838180542){
    if(i34<1.0520559549331665){
     s0+=1447.0;
    } else {
     s1+=1622.0;
    }
   } else {
    if(i34<1.1758689880371094){
     s0+=3528.0;
     s1+=109.0;
    } else {
     s0+=222.0;
     s1+=330.0;
    }
   }
  }
 } else {
  if(i17<0.9987872838973999){
   if(i63<0.006740547716617584){
    if(i19<0.13646391034126282){
     s0+=890.0;
     s1+=205.0;
    } else {
     s0+=94.0;
     s1+=439.0;
    }
   } else {
    if(i20<1.0389716625213623){
     s0+=93.0;
     s1+=11.0;
    } else {
     s0+=74.0;
     s1+=799.0;
    }
   }
  } else {
   if(i44<1.1044622659683228){
    if(i4<1.005699634552002){
     s0+=130.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=203.0;
    }
   } else {
    if(i12<0.06738737225532532){
     s0+=144.0;
     s1+=312.0;
    } else {
     s0+=57.0;
     s1+=13712.0;
    }
   }
  }
 }
}
if(i10<1.0151864290237427){
 if(i12<0.19336140155792236){
  if(i3<6.455183029174805e-05){
   if(i6<0.0003057122230529785){
    if(i30<1.0905578136444092){
     s0+=24522.0;
     s1+=1826.0;
    } else {
     s0+=78883.0;
     s1+=854.0;
    }
   } else {
    if(i33<0.0007546945125795901){
     s0+=4336.0;
     s1+=62.0;
    } else {
     s0+=5652.0;
     s1+=2756.0;
    }
   }
  } else {
   if(i7<0.002428883221000433){
    if(i34<1.094508409500122){
     s0+=68.0;
     s1+=126.0;
    } else {
     s0+=898.0;
     s1+=3.0;
    }
   } else {
    if(i30<1.162848949432373){
     s0+=581.0;
     s1+=944.0;
    } else {
     s0+=123.0;
     s1+=1388.0;
    }
   }
  }
 } else {
  if(i54<-4.167176939517958e-06){
   if(i7<0.005584056954830885){
    if(i70<0.14121973514556885){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=134.0;
     s1+=16.0;
    }
   } else {
    if(i40<0.00166288111358881){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=2230.0;
    }
   }
  } else {
   if(i1<-5.611275264527649e-05){
    if(i7<0.005676085129380226){
     s0+=5.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i4<0.9857000708580017){
     s1+=3.0;
    } else {
     s0+=326.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003389716148376465){
  if(i1<-6.39209829387255e-05){
   if(i28<0.012991927564144135){
    s0+=22.0;
   } else {
    s1+=226.0;
   }
  } else {
   if(i17<0.9847695827484131){
    if(i1<-2.812308957800269e-05){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i7<0.006249392405152321){
     s0+=305.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i16<0.0007230782066471875){
   if(i19<0.06807273626327515){
    if(i35<0.0006563663482666016){
     s0+=3.0;
     s1+=120.0;
    } else {
     s0+=56.0;
     s1+=8.0;
    }
   } else {
    if(i22<-0.00021696090698242188){
     s0+=62.0;
     s1+=100.0;
    } else {
     s0+=55.0;
     s1+=13681.0;
    }
   }
  } else {
   s0+=412.0;
  }
 }
}
if(i2<1.0026252269744873){
 if(i12<0.22824528813362122){
  if(i27<1.0212098360061646){
   if(i38<0.012150675058364868){
    if(i7<0.003952784463763237){
     s0+=61445.0;
     s1+=362.0;
    } else {
     s0+=7513.0;
     s1+=452.0;
    }
   } else {
    if(i29<0.0010740964207798243){
     s0+=7497.0;
     s1+=2395.0;
    } else {
     s0+=33130.0;
     s1+=975.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    if(i10<1.0054254531860352){
     s0+=13.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=505.0;
    }
   } else {
    if(i31<1.1964774131774902){
     s0+=438.0;
     s1+=13.0;
    } else {
     s0+=418.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i33<0.0010140403173863888){
   if(i24<0.0025688123423606157){
    if(i39<-1.045754015649436e-05){
     s1+=1.0;
    } else {
     s0+=80.0;
    }
   } else {
    if(i28<0.02465163916349411){
     s0+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i5<-4.410743713378906e-05){
    if(i13<0.9547008275985718){
     s1+=1.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i24<0.00210865237750113){
     s0+=4.0;
    } else {
     s0+=6.0;
     s1+=735.0;
    }
   }
  }
 }
} else {
 if(i16<0.000704434234648943){
  if(i3<6.335973739624023e-05){
   if(i46<-0.0002149089559679851){
    if(i28<0.0206010639667511){
     s0+=610.0;
     s1+=275.0;
    } else {
     s0+=345.0;
     s1+=1781.0;
    }
   } else {
    if(i15<0.9992357492446899){
     s0+=1043.0;
     s1+=464.0;
    } else {
     s0+=1402.0;
     s1+=159.0;
    }
   }
  } else {
   if(i54<-5.644093471346423e-05){
    s0+=39.0;
   } else {
    if(i46<-0.00021443262812681496){
     s0+=67.0;
     s1+=13194.0;
    } else {
     s0+=190.0;
     s1+=2833.0;
    }
   }
  }
 } else {
  if(i55<-0.0008555967942811549){
   s1+=2.0;
  } else {
   s0+=2245.0;
  }
 }
}
if(i8<1.0136241912841797){
 if(i7<0.013989217579364777){
  if(i51<-1.0201805707765743e-05){
   if(i3<0.00035458803176879883){
    if(i54<-1.7209065845236182e-05){
     s0+=60.0;
     s1+=4.0;
    } else {
     s0+=75.0;
     s1+=770.0;
    }
   } else {
    if(i13<0.991913914680481){
     s1+=4.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i3<3.331899642944336e-05){
    if(i33<0.000689433014485985){
     s0+=76478.0;
     s1+=442.0;
    } else {
     s0+=31213.0;
     s1+=3679.0;
    }
   } else {
    if(i38<0.02277461439371109){
     s0+=6267.0;
     s1+=823.0;
    } else {
     s0+=225.0;
     s1+=844.0;
    }
   }
  }
 } else {
  if(i61<-0.0073379576206207275){
   if(i64<-6.359377493936336e-06){
    if(i25<1.0166587829589844){
     s0+=9.0;
     s1+=7.0;
    } else {
     s1+=87.0;
    }
   } else {
    if(i19<0.12466299533843994){
     s0+=939.0;
     s1+=120.0;
    } else {
     s0+=6.0;
     s1+=72.0;
    }
   }
  } else {
   if(i22<-0.0012150704860687256){
    if(i23<1.124981164932251){
     s0+=29.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i35<-0.000876009464263916){
     s0+=6.0;
    } else {
     s0+=41.0;
     s1+=2722.0;
    }
   }
  }
 }
} else {
 if(i11<1.0194834470748901){
  if(i7<0.005781912710517645){
   if(i23<1.0741198062896729){
    if(i40<0.0009458819404244423){
     s0+=19.0;
     s1+=507.0;
    } else {
     s0+=32.0;
     s1+=20.0;
    }
   } else {
    if(i25<1.0124058723449707){
     s0+=912.0;
     s1+=50.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   }
  } else {
   if(i7<0.006941183470189571){
    if(i16<0.001001893077045679){
     s0+=14.0;
     s1+=118.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i71<6.116504209785489e-06){
     s0+=2.0;
     s1+=2133.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i54<-3.3622454793658108e-06){
   if(i7<0.002020162995904684){
    if(i6<0.0017462372779846191){
     s0+=93.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   } else {
    if(i3<-4.25875186920166e-05){
     s0+=23.0;
    } else {
     s0+=2.0;
     s1+=11626.0;
    }
   }
  } else {
   if(i64<4.813964551431127e-06){
    s0+=139.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i4<1.0038522481918335){
 if(i18<0.0017301690531894565){
  if(i1<-6.336497608572245e-05){
   if(i60<1.0014463663101196){
    s0+=203.0;
   } else {
    if(i32<0.0018954046536237001){
     s0+=2.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i36<1.0739831924438477){
    if(i38<0.007935757748782635){
     s0+=20965.0;
     s1+=165.0;
    } else {
     s0+=7660.0;
     s1+=620.0;
    }
   } else {
    if(i29<0.00190553511492908){
     s0+=51866.0;
     s1+=13.0;
    } else {
     s0+=9148.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i0<-0.000459134578704834){
   if(i20<1.1230299472808838){
    if(i52<1.002561092376709){
     s0+=18011.0;
     s1+=562.0;
    } else {
     s0+=122.0;
     s1+=105.0;
    }
   } else {
    if(i23<1.1689486503601074){
     s0+=209.0;
     s1+=105.0;
    } else {
     s0+=3.0;
     s1+=215.0;
    }
   }
  } else {
   if(i52<0.9995718598365784){
    if(i28<0.04305427521467209){
     s0+=2414.0;
     s1+=29.0;
    } else {
     s1+=133.0;
    }
   } else {
    if(i28<0.009706292301416397){
     s0+=972.0;
     s1+=331.0;
    } else {
     s0+=889.0;
     s1+=4118.0;
    }
   }
  }
 }
} else {
 if(i28<0.00790596753358841){
  if(i47<1.0073184967041016e-05){
   if(i0<0.001044631004333496){
    if(i36<1.081012487411499){
     s0+=118.0;
     s1+=181.0;
    } else {
     s0+=346.0;
     s1+=13.0;
    }
   } else {
    if(i33<0.0013926627580076456){
     s0+=22.0;
     s1+=1436.0;
    } else {
     s0+=92.0;
     s1+=5.0;
    }
   }
  } else {
   if(i32<0.002021988620981574){
    if(i25<1.0116779804229736){
     s0+=3155.0;
     s1+=75.0;
    } else {
     s0+=10.0;
     s1+=35.0;
    }
   } else {
    if(i9<0.9954812526702881){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=267.0;
    }
   }
  }
 } else {
  if(i49<-6.456466508097947e-06){
   s0+=174.0;
  } else {
   if(i28<0.014544578269124031){
    if(i21<0.0013779401779174805){
     s0+=267.0;
     s1+=300.0;
    } else {
     s0+=8.0;
     s1+=1261.0;
    }
   } else {
    if(i26<0.041255444288253784){
     s0+=44.0;
     s1+=110.0;
    } else {
     s0+=77.0;
     s1+=13758.0;
    }
   }
  }
 }
}
if(i11<1.0147067308425903){
 if(i4<1.0035377740859985){
  if(i42<1.121600866317749){
   if(i2<1.0024349689483643){
    if(i10<1.0089396238327026){
     s0+=106778.0;
     s1+=3575.0;
    } else {
     s0+=1085.0;
     s1+=554.0;
    }
   } else {
    if(i23<1.104677438735962){
     s0+=2301.0;
     s1+=408.0;
    } else {
     s0+=276.0;
     s1+=704.0;
    }
   }
  } else {
   if(i33<0.0009574423311278224){
    if(i56<1.0011136531829834){
     s0+=443.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=32.0;
    }
   } else {
    if(i58<0.0029259242583066225){
     s0+=69.0;
     s1+=15.0;
    } else {
     s0+=47.0;
     s1+=813.0;
    }
   }
  }
 } else {
  if(i38<0.02578471228480339){
   if(i7<0.0036403294652700424){
    if(i16<0.00019517034525051713){
     s0+=201.0;
     s1+=287.0;
    } else {
     s0+=3629.0;
     s1+=3.0;
    }
   } else {
    if(i49<-3.286603259766707e-06){
     s0+=343.0;
     s1+=40.0;
    } else {
     s0+=79.0;
     s1+=1107.0;
    }
   }
  } else {
   if(i19<0.10445189476013184){
    if(i73<0.0008116364479064941){
     s0+=71.0;
     s1+=493.0;
    } else {
     s0+=73.0;
     s1+=32.0;
    }
   } else {
    if(i7<0.00501287542283535){
     s0+=25.0;
     s1+=44.0;
    } else {
     s0+=13.0;
     s1+=2921.0;
    }
   }
  }
 }
} else {
 if(i1<-6.412460061255842e-05){
  if(i2<1.000830054283142){
   if(i58<0.004707771353423595){
    s0+=53.0;
   } else {
    s1+=124.0;
   }
  } else {
   if(i7<0.004629038739949465){
    if(i16<0.0004089851281605661){
     s0+=3.0;
     s1+=539.0;
    } else {
     s0+=121.0;
     s1+=10.0;
    }
   } else {
    if(i16<0.001070429920218885){
     s1+=12119.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i6<0.00033801794052124023){
   if(i7<0.006416570395231247){
    s0+=286.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i60<1.0036594867706299){
    if(i37<0.0012663202360272408){
     s1+=399.0;
    } else {
     s0+=138.0;
     s1+=252.0;
    }
   } else {
    if(i19<0.1740039885044098){
     s0+=276.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   }
  }
 }
}
if(i48<1.031127691268921){
 if(i5<2.294778823852539e-05){
  if(i5<1.436471939086914e-05){
   if(i24<0.0008725000661797822){
    if(i28<0.006727822124958038){
     s0+=21619.0;
     s1+=404.0;
    } else {
     s0+=8027.0;
     s1+=2001.0;
    }
   } else {
    if(i69<0.5582541823387146){
     s0+=74744.0;
     s1+=695.0;
    } else {
     s0+=330.0;
     s1+=163.0;
    }
   }
  } else {
   if(i7<0.0038620512932538986){
    if(i57<0.0395750030875206){
     s0+=3023.0;
     s1+=21.0;
    } else {
     s0+=145.0;
     s1+=39.0;
    }
   } else {
    if(i9<0.9921818375587463){
     s0+=704.0;
     s1+=206.0;
    } else {
     s0+=173.0;
     s1+=1032.0;
    }
   }
  }
 } else {
  if(i46<-0.00023091639741323888){
   if(i26<0.06314116716384888){
    if(i17<1.0090317726135254){
     s0+=456.0;
     s1+=191.0;
    } else {
     s0+=9.0;
     s1+=114.0;
    }
   } else {
    if(i47<2.7865171432495117e-05){
     s0+=393.0;
     s1+=4645.0;
    } else {
     s0+=93.0;
     s1+=3.0;
    }
   }
  } else {
   if(i25<1.0107357501983643){
    if(i22<0.00017589330673217773){
     s0+=4353.0;
     s1+=801.0;
    } else {
     s0+=724.0;
     s1+=672.0;
    }
   } else {
    if(i16<0.0009273043833673){
     s0+=71.0;
     s1+=1445.0;
    } else {
     s0+=32.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003248453140258789){
  if(i7<0.0056278579868376255){
   if(i53<1.003688097000122){
    if(i43<3.245889092795551e-05){
     s0+=635.0;
    } else {
     s0+=286.0;
     s1+=18.0;
    }
   } else {
    if(i34<1.233483076095581){
     s0+=23.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i44<1.1197350025177002){
    if(i56<1.0000327825546265){
     s0+=27.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=302.0;
   }
  }
 } else {
  if(i10<1.0188641548156738){
   if(i69<0.1078578308224678){
    if(i60<1.0022788047790527){
     s0+=122.0;
     s1+=235.0;
    } else {
     s0+=230.0;
     s1+=86.0;
    }
   } else {
    if(i12<0.13317474722862244){
     s0+=92.0;
     s1+=50.0;
    } else {
     s0+=31.0;
     s1+=1028.0;
    }
   }
  } else {
   if(i9<1.0053236484527588){
    if(i7<0.00578007148578763){
     s0+=57.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i33<0.004817063454538584){
     s0+=34.0;
     s1+=10122.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i22<0.00020760297775268555){
 if(i1<-7.223394641187042e-05){
  if(i19<0.06042000651359558){
   if(i2<1.003137230873108){
    if(i52<1.0025575160980225){
     s0+=1164.0;
     s1+=65.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i74<0.02822352945804596){
     s0+=275.0;
     s1+=45.0;
    } else {
     s0+=58.0;
     s1+=140.0;
    }
   }
  } else {
   if(i3<7.748603820800781e-07){
    if(i7<0.00767369382083416){
     s0+=202.0;
     s1+=15.0;
    } else {
     s0+=92.0;
     s1+=653.0;
    }
   } else {
    if(i7<0.004538720939308405){
     s0+=63.0;
     s1+=64.0;
    } else {
     s0+=44.0;
     s1+=4061.0;
    }
   }
  }
 } else {
  if(i10<1.00911545753479){
   if(i18<0.0017322666244581342){
    if(i55<0.00017945315630640835){
     s0+=75516.0;
     s1+=360.0;
    } else {
     s0+=14289.0;
     s1+=633.0;
    }
   } else {
    if(i36<1.0903346538543701){
     s0+=4371.0;
     s1+=2130.0;
    } else {
     s0+=15990.0;
     s1+=1501.0;
    }
   }
  } else {
   if(i44<1.0773630142211914){
    if(i35<0.000509798526763916){
     s0+=18.0;
     s1+=740.0;
    } else {
     s0+=110.0;
    }
   } else {
    if(i7<0.006050930358469486){
     s0+=3163.0;
     s1+=65.0;
    } else {
     s0+=50.0;
     s1+=681.0;
    }
   }
  }
 }
} else {
 if(i37<0.002410672139376402){
  if(i24<0.0010737174889072776){
   s1+=1923.0;
  } else {
   s0+=965.0;
  }
 } else {
  if(i7<0.0026474082842469215){
   if(i51<-8.98826419870602e-06){
    s1+=134.0;
   } else {
    s0+=86.0;
   }
  } else {
   if(i39<-1.4797823496337514e-05){
    s1+=11182.0;
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i11<1.0105888843536377){
  if(i1<-0.00011643033212749287){
   if(i12<0.024820715188980103){
    if(i72<-0.17002233862876892){
     s0+=11.0;
     s1+=24.0;
    } else {
     s0+=147.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.0038579085376113653){
     s0+=10.0;
     s1+=428.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i12<0.20759069919586182){
    if(i32<0.0009975200518965721){
     s0+=32193.0;
     s1+=2552.0;
    } else {
     s0+=77104.0;
     s1+=1555.0;
    }
   } else {
    if(i1<-3.677132190205157e-05){
     s0+=13.0;
     s1+=248.0;
    } else {
     s0+=173.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i0<0.0002446472644805908){
   if(i68<-0.004523064009845257){
    if(i3<-3.549456596374512e-05){
     s0+=10.0;
    } else {
     s0+=4.0;
     s1+=42.0;
    }
   } else {
    if(i7<0.006001846864819527){
     s0+=642.0;
     s1+=15.0;
    } else {
     s0+=14.0;
     s1+=76.0;
    }
   }
  } else {
   if(i27<1.020111083984375){
    if(i7<0.003633185289800167){
     s0+=249.0;
     s1+=10.0;
    } else {
     s0+=40.0;
     s1+=216.0;
    }
   } else {
    if(i39<-1.4544914847647306e-05){
     s0+=17.0;
     s1+=533.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i19<0.15969401597976685){
  if(i7<0.0034477305598556995){
   if(i16<0.00019099083147011697){
    if(i4<1.0066008567810059){
     s0+=125.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=535.0;
    }
   } else {
    if(i27<1.036724328994751){
     s0+=3676.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=5.0;
    }
   }
  } else {
   if(i17<1.0004174709320068){
    if(i12<0.08371290564537048){
     s0+=893.0;
     s1+=219.0;
    } else {
     s0+=245.0;
     s1+=329.0;
    }
   } else {
    if(i31<1.1180615425109863){
     s0+=18.0;
     s1+=2237.0;
    } else {
     s0+=647.0;
     s1+=2006.0;
    }
   }
  }
 } else {
  if(i24<0.002316377591341734){
   if(i66<0.0005300503107719123){
    if(i11<1.0037115812301636){
     s0+=1.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i49<-1.373024815620738e-06){
     s0+=265.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i1<-4.0068476664600894e-05){
    if(i44<1.0918097496032715){
     s0+=6.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=12858.0;
    }
   } else {
    if(i51<3.1163173844106495e-05){
     s0+=23.0;
     s1+=201.0;
    } else {
     s0+=52.0;
     s1+=14.0;
    }
   }
  }
 }
}
if(i1<-9.404207958141342e-05){
 if(i22<-0.0005433261394500732){
  if(i41<0.9514786005020142){
   if(i12<0.04177007079124451){
    if(i74<0.05140172690153122){
     s0+=571.0;
     s1+=6.0;
    } else {
     s0+=18.0;
     s1+=34.0;
    }
   } else {
    if(i38<0.11647408455610275){
     s0+=33.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=104.0;
    }
   }
  } else {
   if(i61<-0.005094945430755615){
    if(i68<-0.0007175261853262782){
     s0+=5.0;
     s1+=30.0;
    } else {
     s0+=40.0;
     s1+=5.0;
    }
   } else {
    if(i64<0.0001764482440194115){
     s0+=1.0;
     s1+=79.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i33<0.0038930517621338367){
   if(i49<-6.422751084755873e-06){
    s0+=120.0;
   } else {
    if(i12<0.018715858459472656){
     s0+=115.0;
     s1+=78.0;
    } else {
     s0+=49.0;
     s1+=15276.0;
    }
   }
  } else {
   if(i54<-2.1271507648634724e-05){
    s0+=125.0;
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i4<1.0030933618545532){
  if(i33<0.0007176338112913072){
   if(i44<1.1354830265045166){
    if(i55<0.0001658069231780246){
     s0+=63076.0;
     s1+=116.0;
    } else {
     s0+=13004.0;
     s1+=263.0;
    }
   } else {
    if(i60<1.001522421836853){
     s0+=1809.0;
    } else {
     s0+=318.0;
     s1+=107.0;
    }
   }
  } else {
   if(i16<0.00021444156300276518){
    if(i36<1.0884286165237427){
     s0+=1246.0;
     s1+=2143.0;
    } else {
     s0+=4774.0;
     s1+=582.0;
    }
   } else {
    if(i6<2.759695053100586e-05){
     s0+=19924.0;
     s1+=250.0;
    } else {
     s0+=5479.0;
     s1+=1181.0;
    }
   }
  }
 } else {
  if(i1<-4.7752884711371735e-05){
   if(i24<0.0010844041826203465){
    s1+=1519.0;
   } else {
    if(i37<0.0019450320396572351){
     s0+=1056.0;
    } else {
     s0+=205.0;
     s1+=1291.0;
    }
   }
  } else {
   if(i18<0.002052853349596262){
    if(i3<9.638071060180664e-05){
     s0+=4085.0;
     s1+=33.0;
    } else {
     s0+=79.0;
     s1+=183.0;
    }
   } else {
    if(i31<1.0610902309417725){
     s0+=148.0;
    } else {
     s0+=244.0;
     s1+=1020.0;
    }
   }
  }
 }
}
if(i10<1.014660120010376){
 if(i6<0.0005188584327697754){
  if(i33<0.0007107695564627647){
   if(i31<1.0817922353744507){
    if(i34<1.0577976703643799){
     s0+=15201.0;
     s1+=81.0;
    } else {
     s0+=1166.0;
     s1+=194.0;
    }
   } else {
    if(i58<0.001986355986446142){
     s0+=60101.0;
     s1+=69.0;
    } else {
     s0+=2255.0;
     s1+=83.0;
    }
   }
  } else {
   if(i2<0.9997470378875732){
    if(i19<0.24039196968078613){
     s0+=19500.0;
     s1+=326.0;
    } else {
     s0+=3.0;
     s1+=111.0;
    }
   } else {
    if(i0<-0.0004628300666809082){
     s0+=7953.0;
     s1+=562.0;
    } else {
     s0+=2471.0;
     s1+=2769.0;
    }
   }
  }
 } else {
  if(i7<0.00409046933054924){
   if(i43<-1.9645518477773294e-05){
    if(i49<-3.589470452425303e-06){
     s0+=137.0;
     s1+=10.0;
    } else {
     s0+=41.0;
     s1+=419.0;
    }
   } else {
    if(i63<0.003340465482324362){
     s0+=4788.0;
     s1+=107.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   }
  } else {
   if(i20<1.0258264541625977){
    if(i0<0.0008034110069274902){
     s0+=607.0;
     s1+=156.0;
    } else {
     s0+=47.0;
     s1+=219.0;
    }
   } else {
    if(i26<0.16995254158973694){
     s0+=1143.0;
     s1+=2862.0;
    } else {
     s0+=77.0;
     s1+=2209.0;
    }
   }
  }
 }
} else {
 if(i26<0.17938673496246338){
  if(i31<1.1180615425109863){
   s1+=1733.0;
  } else {
   if(i4<1.0102639198303223){
    if(i9<1.0163629055023193){
     s0+=976.0;
     s1+=349.0;
    } else {
     s1+=306.0;
    }
   } else {
    if(i49<-2.4977183784358203e-05){
     s0+=2.0;
    } else {
     s1+=732.0;
    }
   }
  }
 } else {
  if(i1<-3.25901601172518e-05){
   if(i7<0.003516858210787177){
    if(i39<-4.461401840671897e-05){
     s0+=1.0;
     s1+=117.0;
    } else {
     s0+=43.0;
     s1+=14.0;
    }
   } else {
    if(i36<1.1296827793121338){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=10737.0;
    }
   }
  } else {
   if(i30<1.2027409076690674){
    if(i28<0.02638312429189682){
     s0+=12.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i38<0.10611367225646973){
     s0+=70.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i9<1.0126168727874756){
 if(i1<-8.430118032265455e-05){
  if(i26<0.04174652695655823){
   if(i9<0.9764856696128845){
    if(i33<0.003126997733488679){
     s0+=821.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=31.0;
    }
   } else {
    if(i30<1.341634750366211){
     s0+=84.0;
     s1+=42.0;
    } else {
     s0+=20.0;
     s1+=60.0;
    }
   }
  } else {
   if(i28<0.01597583293914795){
    if(i53<1.0067121982574463){
     s0+=399.0;
     s1+=58.0;
    } else {
     s0+=23.0;
     s1+=72.0;
    }
   } else {
    if(i19<0.11837232112884521){
     s0+=102.0;
     s1+=569.0;
    } else {
     s0+=22.0;
     s1+=3157.0;
    }
   }
  }
 } else {
  if(i7<0.003994487226009369){
   if(i22<0.00020235776901245117){
    if(i43<-2.4211032723542303e-05){
     s0+=8.0;
     s1+=33.0;
    } else {
     s0+=93473.0;
     s1+=1382.0;
    }
   } else {
    if(i2<1.0042428970336914){
     s0+=342.0;
     s1+=51.0;
    } else {
     s0+=107.0;
     s1+=240.0;
    }
   }
  } else {
   if(i17<0.9964081048965454){
    if(i4<0.9973773956298828){
     s0+=15347.0;
     s1+=248.0;
    } else {
     s0+=1108.0;
     s1+=612.0;
    }
   } else {
    if(i25<0.9984362721443176){
     s0+=2952.0;
     s1+=126.0;
    } else {
     s0+=1413.0;
     s1+=4350.0;
    }
   }
  }
 }
} else {
 if(i9<1.014286994934082){
  if(i7<0.0037210267037153244){
   if(i30<1.0937738418579102){
    s1+=105.0;
   } else {
    if(i51<1.0316379302821588e-05){
     s0+=283.0;
    } else {
     s0+=20.0;
     s1+=6.0;
    }
   }
  } else {
   if(i33<0.0034316307865083218){
    if(i35<0.0018177032470703125){
     s0+=5.0;
     s1+=597.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i1<-6.244092219276354e-05){
   if(i1<-7.04591948306188e-05){
    if(i16<0.0012171827256679535){
     s0+=6.0;
     s1+=12191.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i56<1.0038518905639648){
     s1+=117.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i5<5.8710575103759766e-05){
    if(i16<0.00069104612339288){
     s0+=3.0;
     s1+=107.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i63<0.0004744661273434758){
     s1+=2.0;
    } else {
     s0+=70.0;
    }
   }
  }
 }
}
if(i4<1.0038774013519287){
 if(i33<0.0007354473927989602){
  if(i32<0.001847307663410902){
   if(i44<1.023176908493042){
    if(i10<0.9958815574645996){
     s0+=1222.0;
     s1+=119.0;
    } else {
     s0+=1904.0;
     s1+=12.0;
    }
   } else {
    if(i29<0.0003604345547500998){
     s0+=18465.0;
     s1+=242.0;
    } else {
     s0+=52813.0;
     s1+=24.0;
    }
   }
  } else {
   if(i56<1.0008231401443481){
    if(i5<8.046627044677734e-06){
     s0+=5220.0;
     s1+=5.0;
    } else {
     s0+=68.0;
     s1+=7.0;
    }
   } else {
    if(i3<-1.7940998077392578e-05){
     s0+=673.0;
     s1+=4.0;
    } else {
     s0+=170.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i6<-2.2530555725097656e-05){
   if(i26<0.24221569299697876){
    if(i33<0.0009567447705194354){
     s0+=5780.0;
     s1+=474.0;
    } else {
     s0+=17238.0;
     s1+=240.0;
    }
   } else {
    if(i58<0.0032876450568437576){
     s0+=4.0;
    } else {
     s1+=205.0;
    }
   }
  } else {
   if(i19<0.04115408658981323){
    if(i35<0.00021576881408691406){
     s0+=486.0;
     s1+=282.0;
    } else {
     s0+=3625.0;
     s1+=197.0;
    }
   } else {
    if(i16<0.00026625581085681915){
     s0+=1728.0;
     s1+=3062.0;
    } else {
     s0+=2948.0;
     s1+=1544.0;
    }
   }
  }
 }
} else {
 if(i18<0.0019072175491601229){
  if(i7<0.0022607245482504368){
   if(i43<-2.4839995603542775e-05){
    if(i35<0.0008462667465209961){
     s0+=19.0;
     s1+=237.0;
    } else {
     s0+=51.0;
     s1+=12.0;
    }
   } else {
    if(i3<0.00013107061386108398){
     s0+=2634.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=9.0;
    }
   }
  } else {
   if(i21<0.0012466907501220703){
    if(i32<0.0006645949906669557){
     s1+=20.0;
    } else {
     s0+=262.0;
     s1+=20.0;
    }
   } else {
    if(i3<0.00010335445404052734){
     s0+=32.0;
     s1+=28.0;
    } else {
     s0+=12.0;
     s1+=1063.0;
    }
   }
  }
 } else {
  if(i52<0.9984211921691895){
   if(i58<0.04059182107448578){
    s0+=279.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i32<0.0019098040647804737){
    if(i31<1.1180615425109863){
     s0+=97.0;
     s1+=1877.0;
    } else {
     s0+=604.0;
     s1+=5.0;
    }
   } else {
    if(i55<0.0031672376208007336){
     s0+=153.0;
     s1+=14350.0;
    } else {
     s0+=28.0;
     s1+=110.0;
    }
   }
  }
 }
}
if(i1<-0.00010786704660858959){
 if(i12<0.024221271276474){
  if(i17<1.0157873630523682){
   if(i73<-0.008361101150512695){
    if(i12<0.0076081156730651855){
     s0+=64.0;
     s1+=30.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i7<0.024753388017416){
     s0+=368.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=49.0;
  }
 } else {
  if(i56<0.9964916110038757){
   s0+=32.0;
  } else {
   if(i16<0.0007066904217936099){
    if(i37<0.0017150300554931164){
     s0+=70.0;
     s1+=372.0;
    } else {
     s0+=72.0;
     s1+=14338.0;
    }
   } else {
    s0+=82.0;
   }
  }
 }
} else {
 if(i14<1.0155880451202393){
  if(i6<0.00032654404640197754){
   if(i55<0.00020145485177636147){
    if(i34<1.0903575420379639){
     s0+=22063.0;
     s1+=983.0;
    } else {
     s0+=58500.0;
     s1+=146.0;
    }
   } else {
    if(i40<0.0002546455361880362){
     s0+=524.0;
     s1+=353.0;
    } else {
     s0+=22610.0;
     s1+=1369.0;
    }
   }
  } else {
   if(i38<0.01264725811779499){
    if(i7<0.004089951515197754){
     s0+=6524.0;
     s1+=244.0;
    } else {
     s0+=230.0;
     s1+=713.0;
    }
   } else {
    if(i33<0.0013120155781507492){
     s0+=1321.0;
     s1+=1964.0;
    } else {
     s0+=1970.0;
     s1+=840.0;
    }
   }
  }
 } else {
  if(i34<1.0905578136444092){
   if(i6<-1.823902130126953e-05){
    s0+=4.0;
   } else {
    s1+=1281.0;
   }
  } else {
   if(i9<1.014406681060791){
    if(i38<0.03346363827586174){
     s0+=1514.0;
     s1+=210.0;
    } else {
     s0+=495.0;
     s1+=779.0;
    }
   } else {
    if(i7<0.0037813771050423384){
     s0+=45.0;
     s1+=2.0;
    } else {
     s1+=653.0;
    }
   }
  }
 }
}
if(i4<1.003852128982544){
 if(i2<1.0024135112762451){
  if(i6<0.00027757883071899414){
   if(i26<0.24078291654586792){
    if(i18<0.0013842222979292274){
     s0+=77685.0;
     s1+=456.0;
    } else {
     s0+=24414.0;
     s1+=2193.0;
    }
   } else {
    if(i43<7.982194074429572e-05){
     s0+=89.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=267.0;
    }
   }
  } else {
   if(i13<1.0162190198898315){
    if(i1<-4.14331370848231e-05){
     s0+=870.0;
     s1+=705.0;
    } else {
     s0+=6171.0;
     s1+=582.0;
    }
   } else {
    if(i43<5.885374775971286e-06){
     s0+=65.0;
     s1+=4.0;
    } else {
     s0+=40.0;
     s1+=490.0;
    }
   }
  }
 } else {
  if(i44<1.1271681785583496){
   if(i13<0.979178786277771){
    if(i68<-0.0003670805599540472){
     s0+=33.0;
     s1+=165.0;
    } else {
     s0+=302.0;
     s1+=92.0;
    }
   } else {
    if(i56<1.0020639896392822){
     s0+=195.0;
     s1+=140.0;
    } else {
     s0+=1659.0;
     s1+=72.0;
    }
   }
  } else {
   if(i20<1.0676051378250122){
    if(i9<0.9704372882843018){
     s0+=333.0;
     s1+=30.0;
    } else {
     s0+=154.0;
     s1+=167.0;
    }
   } else {
    if(i1<-3.6952467780793086e-05){
     s0+=60.0;
     s1+=1127.0;
    } else {
     s0+=175.0;
     s1+=148.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019525650423020124){
  if(i35<0.0005132555961608887){
   if(i16<0.00024930256768129766){
    if(i36<1.1219847202301025){
     s0+=38.0;
     s1+=2661.0;
    } else {
     s0+=49.0;
    }
   } else {
    s0+=258.0;
   }
  } else {
   if(i14<1.0452094078063965){
    if(i11<1.0001943111419678){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=3715.0;
    }
   } else {
    s1+=20.0;
   }
  }
 } else {
  if(i21<-0.0011425018310546875){
   if(i26<0.1381470263004303){
    if(i7<0.009989837184548378){
     s0+=86.0;
     s1+=3.0;
    } else {
     s0+=41.0;
     s1+=316.0;
    }
   } else {
    if(i38<0.009369995445013046){
     s0+=2.0;
    } else {
     s1+=559.0;
    }
   }
  } else {
   if(i71<6.7487394517229404e-06){
    if(i22<8.249282836914062e-05){
     s0+=58.0;
     s1+=1683.0;
    } else {
     s0+=3.0;
     s1+=12429.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i33<0.0007206910522654653){
  if(i21<-0.0003113746643066406){
   if(i2<0.9988065958023071){
    s0+=14696.0;
   } else {
    if(i33<0.00048394937766715884){
     s0+=8193.0;
     s1+=53.0;
    } else {
     s0+=2210.0;
     s1+=303.0;
    }
   }
  } else {
   if(i39<-1.8486003682482988e-05){
    if(i38<0.017420627176761627){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i29<0.0019043730571866035){
     s0+=52929.0;
     s1+=5.0;
    } else {
     s0+=1922.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i6<-2.9861927032470703e-05){
   if(i46<-0.0014308771351352334){
    s1+=120.0;
   } else {
    if(i37<0.0003222422965336591){
     s0+=204.0;
     s1+=338.0;
    } else {
     s0+=23318.0;
     s1+=473.0;
    }
   }
  } else {
   if(i24<0.0009227658738382161){
    if(i29<0.00021567678777500987){
     s0+=947.0;
     s1+=1.0;
    } else {
     s0+=290.0;
     s1+=2309.0;
    }
   } else {
    if(i23<1.1215648651123047){
     s0+=4862.0;
     s1+=484.0;
    } else {
     s0+=237.0;
     s1+=970.0;
    }
   }
  }
 }
} else {
 if(i19<0.171440988779068){
  if(i21<0.0020006299018859863){
   if(i46<-0.0002162897726520896){
    if(i7<0.004414434544742107){
     s0+=768.0;
     s1+=122.0;
    } else {
     s0+=422.0;
     s1+=2270.0;
    }
   } else {
    if(i16<0.00029032776365056634){
     s0+=612.0;
     s1+=1254.0;
    } else {
     s0+=4459.0;
     s1+=286.0;
    }
   }
  } else {
   if(i64<1.2583159332280047e-05){
    if(i35<0.0017197132110595703){
     s1+=2207.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=29.0;
   }
  }
 } else {
  if(i36<1.1290926933288574){
   if(i15<1.0312013626098633){
    if(i14<0.9861426949501038){
     s1+=2.0;
    } else {
     s0+=85.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i7<0.0017708217492327094){
    if(i1<-5.959071495453827e-05){
     s1+=42.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i36<1.170027494430542){
     s0+=39.0;
     s1+=534.0;
    } else {
     s0+=42.0;
     s1+=12582.0;
    }
   }
  }
 }
}
if(i15<1.0173604488372803){
 if(i6<0.000968635082244873){
  if(i25<1.0032451152801514){
   if(i1<-0.0001045521639753133){
    if(i46<-0.0004885146045126021){
     s0+=68.0;
     s1+=326.0;
    } else {
     s0+=192.0;
     s1+=67.0;
    }
   } else {
    if(i5<1.5079975128173828e-05){
     s0+=103863.0;
     s1+=3216.0;
    } else {
     s0+=3889.0;
     s1+=877.0;
    }
   }
  } else {
   if(i57<0.04425439238548279){
    if(i29<0.0010520489886403084){
     s0+=1019.0;
     s1+=475.0;
    } else {
     s0+=2927.0;
     s1+=60.0;
    }
   } else {
    if(i26<0.041270911693573){
     s0+=421.0;
     s1+=48.0;
    } else {
     s0+=318.0;
     s1+=832.0;
    }
   }
  }
 } else {
  if(i34<1.1757044792175293){
   if(i44<1.0867276191711426){
    if(i17<1.0081229209899902){
     s0+=111.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=837.0;
    }
   } else {
    if(i35<0.0005185604095458984){
     s1+=121.0;
    } else {
     s0+=1516.0;
     s1+=21.0;
    }
   }
  } else {
   if(i3<3.8623809814453125e-05){
    if(i45<0.08557960391044617){
     s0+=333.0;
     s1+=156.0;
    } else {
     s0+=45.0;
     s1+=144.0;
    }
   } else {
    if(i31<1.629280686378479){
     s0+=134.0;
     s1+=2851.0;
    } else {
     s0+=57.0;
     s1+=164.0;
    }
   }
  }
 }
} else {
 if(i7<0.005060822702944279){
  if(i21<0.00171738862991333){
   if(i31<1.0905578136444092){
    s1+=123.0;
   } else {
    if(i43<3.198772174073383e-05){
     s0+=878.0;
    } else {
     s0+=439.0;
     s1+=94.0;
    }
   }
  } else {
   if(i17<1.0094573497772217){
    if(i10<1.0204238891601562){
     s0+=28.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<1.0128216743469238){
     s0+=21.0;
     s1+=100.0;
    } else {
     s1+=462.0;
    }
   }
  }
 } else {
  if(i5<-3.311038017272949e-05){
   s0+=16.0;
  } else {
   if(i2<1.0006024837493896){
    if(i57<0.06512874364852905){
     s0+=45.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=157.0;
    }
   } else {
    if(i43<0.00038020219653844833){
     s0+=49.0;
     s1+=13323.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i2<1.0026171207427979){
 if(i26<0.24003750085830688){
  if(i8<1.0124268531799316){
   if(i28<0.006651876028627157){
    if(i55<0.00024073854729067534){
     s0+=66431.0;
     s1+=285.0;
    } else {
     s0+=2111.0;
     s1+=249.0;
    }
   } else {
    if(i25<0.9982069134712219){
     s0+=32720.0;
     s1+=396.0;
    } else {
     s0+=8383.0;
     s1+=3266.0;
    }
   }
  } else {
   if(i7<0.005113167222589254){
    if(i44<1.069335699081421){
     s1+=6.0;
    } else {
     s0+=528.0;
     s1+=7.0;
    }
   } else {
    if(i2<1.0005124807357788){
     s0+=45.0;
     s1+=11.0;
    } else {
     s0+=18.0;
     s1+=712.0;
    }
   }
  }
 } else {
  if(i37<0.006219975650310516){
   if(i7<0.007079030387103558){
    if(i56<1.0010534524917603){
     s0+=74.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i5<-2.8312206268310547e-05){
     s0+=2.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   s1+=596.0;
  }
 }
} else {
 if(i18<0.0019530635327100754){
  if(i3<0.00011998414993286133){
   if(i16<0.00019051993149332702){
    if(i54<-7.2735401772661135e-06){
     s0+=57.0;
     s1+=186.0;
    } else {
     s0+=143.0;
     s1+=2.0;
    }
   } else {
    if(i37<0.0024454330559819937){
     s0+=3083.0;
     s1+=5.0;
    } else {
     s0+=41.0;
     s1+=54.0;
    }
   }
  } else {
   if(i31<1.1734975576400757){
    if(i39<-4.5568613131763414e-05){
     s0+=84.0;
    } else {
     s0+=32.0;
     s1+=571.0;
    }
   } else {
    s1+=745.0;
   }
  }
 } else {
  if(i22<-0.00019091367721557617){
   if(i7<0.009205011650919914){
    if(i15<0.9690151214599609){
     s0+=117.0;
     s1+=67.0;
    } else {
     s0+=794.0;
     s1+=49.0;
    }
   } else {
    if(i4<0.9999979734420776){
     s0+=516.0;
     s1+=163.0;
    } else {
     s0+=309.0;
     s1+=1499.0;
    }
   }
  } else {
   if(i52<0.9986459016799927){
    s0+=193.0;
   } else {
    if(i28<0.011685006320476532){
     s0+=737.0;
     s1+=2157.0;
    } else {
     s0+=80.0;
     s1+=13281.0;
    }
   }
  }
 }
}
if(i10<1.0143204927444458){
 if(i0<0.0009949803352355957){
  if(i33<0.0007354473927989602){
   if(i39<-1.831019835663028e-05){
    if(i16<0.00018467679910827428){
     s0+=1.0;
     s1+=73.0;
    } else {
     s0+=196.0;
     s1+=8.0;
    }
   } else {
    if(i37<0.0002959734119940549){
     s0+=17693.0;
     s1+=363.0;
    } else {
     s0+=63267.0;
     s1+=153.0;
    }
   }
  } else {
   if(i24<0.0009257246274501085){
    if(i52<0.9995700120925903){
     s0+=2564.0;
     s1+=73.0;
    } else {
     s0+=892.0;
     s1+=3083.0;
    }
   } else {
    if(i2<1.0019569396972656){
     s0+=25664.0;
     s1+=776.0;
    } else {
     s0+=3176.0;
     s1+=2304.0;
    }
   }
  }
 } else {
  if(i24<0.0024335216730833054){
   if(i58<0.0007700723363086581){
    if(i35<0.0006400644779205322){
     s1+=916.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i24<0.0007948860293254256){
     s1+=60.0;
    } else {
     s0+=1190.0;
    }
   }
  } else {
   if(i31<1.629280686378479){
    if(i42<0.957897424697876){
     s0+=23.0;
     s1+=105.0;
    } else {
     s0+=19.0;
     s1+=2278.0;
    }
   } else {
    if(i28<0.034389473497867584){
     s0+=62.0;
     s1+=10.0;
    } else {
     s1+=118.0;
    }
   }
  }
 }
} else {
 if(i36<1.1673319339752197){
  if(i31<1.1180615425109863){
   s1+=1793.0;
  } else {
   if(i10<1.0206069946289062){
    if(i55<0.0001118660147767514){
     s0+=793.0;
     s1+=86.0;
    } else {
     s0+=12.0;
     s1+=55.0;
    }
   } else {
    if(i36<1.1279253959655762){
     s0+=67.0;
    } else {
     s0+=88.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i34<1.6811659336090088){
   if(i24<0.002444140613079071){
    if(i33<0.0008406148990616202){
     s0+=92.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i21<0.00029015541076660156){
     s0+=13.0;
     s1+=803.0;
    } else {
     s0+=1.0;
     s1+=11344.0;
    }
   }
  } else {
   s0+=117.0;
  }
 }
}
if(i0<0.0009602904319763184){
 if(i1<-7.621861004736274e-05){
  if(i19<0.07682543992996216){
   if(i4<1.0011461973190308){
    if(i23<1.1131150722503662){
     s0+=1168.0;
     s1+=42.0;
    } else {
     s0+=62.0;
     s1+=80.0;
    }
   } else {
    if(i72<-0.05936262011528015){
     s0+=39.0;
     s1+=139.0;
    } else {
     s0+=96.0;
     s1+=29.0;
    }
   }
  } else {
   if(i28<0.013137390837073326){
    if(i11<1.0153591632843018){
     s0+=202.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=28.0;
    }
   } else {
    if(i61<-0.010540753602981567){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=49.0;
     s1+=2161.0;
    }
   }
  }
 } else {
  if(i15<1.0151201486587524){
   if(i33<0.0007157397922128439){
    if(i39<-1.794260424503591e-05){
     s0+=186.0;
     s1+=54.0;
    } else {
     s0+=80099.0;
     s1+=456.0;
    }
   } else {
    if(i6<-0.00011819601058959961){
     s0+=21455.0;
     s1+=362.0;
    } else {
     s0+=9766.0;
     s1+=3779.0;
    }
   }
  } else {
   if(i54<-3.177195594616933e-06){
    if(i34<1.0981338024139404){
     s1+=378.0;
    } else {
     s0+=741.0;
     s1+=498.0;
    }
   } else {
    if(i53<1.0016260147094727){
     s0+=616.0;
    } else {
     s0+=82.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i24<0.0023604000452905893){
  if(i31<1.1180615425109863){
   if(i49<-3.0537300972355297e-06){
    if(i32<0.0001999304222408682){
     s0+=61.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i37<0.00019352283561602235){
     s0+=2.0;
    } else {
     s1+=2300.0;
    }
   }
  } else {
   s0+=1901.0;
  }
 } else {
  if(i17<1.00382399559021){
   if(i28<0.0343916229903698){
    if(i46<-0.000360657722922042){
     s0+=8.0;
     s1+=173.0;
    } else {
     s0+=80.0;
     s1+=63.0;
    }
   } else {
    if(i73<-0.010724544525146484){
     s0+=11.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=1081.0;
    }
   }
  } else {
   if(i10<0.9234668016433716){
    if(i8<0.9510488510131836){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.07395601272583){
     s0+=10.0;
     s1+=134.0;
    } else {
     s0+=4.0;
     s1+=12330.0;
    }
   }
  }
 }
}
if(i1<-9.841138671617955e-05){
 if(i45<0.00799715518951416){
  if(i23<1.0709826946258545){
   if(i64<-7.298900982277701e-06){
    s1+=9.0;
   } else {
    if(i57<0.10969458520412445){
     s0+=64.0;
     s1+=6.0;
    } else {
     s0+=333.0;
    }
   }
  } else {
   if(i55<0.002828824333846569){
    if(i16<0.0005795132601633668){
     s0+=20.0;
     s1+=171.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   } else {
    if(i21<-0.001972496509552002){
     s0+=62.0;
     s1+=22.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i14<0.8863656520843506){
   if(i40<0.01927901804447174){
    if(i44<1.1882586479187012){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i59<-0.019114404916763306){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=26.0;
    }
   }
  } else {
   if(i29<0.002462439239025116){
    if(i40<0.0009722306858748198){
     s0+=13.0;
     s1+=667.0;
    } else {
     s0+=233.0;
     s1+=5.0;
    }
   } else {
    if(i10<0.9527511596679688){
     s0+=46.0;
     s1+=268.0;
    } else {
     s0+=31.0;
     s1+=14253.0;
    }
   }
  }
 }
} else {
 if(i7<0.003994484432041645){
  if(i3<9.948015213012695e-05){
   if(i18<0.001095306477509439){
    if(i40<0.001965336501598358){
     s0+=69940.0;
     s1+=183.0;
    } else {
     s0+=2414.0;
     s1+=81.0;
    }
   } else {
    if(i37<0.0006723938276991248){
     s0+=3770.0;
     s1+=1032.0;
    } else {
     s0+=17776.0;
     s1+=167.0;
    }
   }
  } else {
   if(i24<0.0011222765315324068){
    s1+=460.0;
   } else {
    s0+=537.0;
   }
  }
 } else {
  if(i3<-2.1278858184814453e-05){
   if(i6<-0.0002181529998779297){
    if(i7<0.015330981463193893){
     s0+=15809.0;
     s1+=66.0;
    } else {
     s0+=35.0;
     s1+=33.0;
    }
   } else {
    if(i31<1.1180615425109863){
     s0+=3.0;
     s1+=262.0;
    } else {
     s0+=3732.0;
     s1+=365.0;
    }
   }
  } else {
   if(i31<1.0605340003967285){
    s0+=288.0;
   } else {
    if(i36<1.0904077291488647){
     s1+=3214.0;
    } else {
     s0+=1375.0;
     s1+=2963.0;
    }
   }
  }
 }
}
if(i4<1.0038650035858154){
 if(i27<1.0215537548065186){
  if(i28<0.06362716853618622){
   if(i37<0.0010529401479288936){
    if(i38<0.009237919002771378){
     s0+=23173.0;
     s1+=382.0;
    } else {
     s0+=8731.0;
     s1+=2571.0;
    }
   } else {
    if(i69<0.16886645555496216){
     s0+=72834.0;
     s1+=717.0;
    } else {
     s0+=5989.0;
     s1+=1064.0;
    }
   }
  } else {
   if(i6<-0.001020282506942749){
    if(i0<-0.002962261438369751){
     s0+=239.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i59<-0.012641966342926025){
     s0+=97.0;
     s1+=107.0;
    } else {
     s0+=20.0;
     s1+=617.0;
    }
   }
  }
 } else {
  if(i12<0.19968557357788086){
   if(i31<1.116804838180542){
    if(i68<-0.0039004178252071142){
     s0+=24.0;
    } else {
     s0+=13.0;
     s1+=344.0;
    }
   } else {
    if(i36<1.1422208547592163){
     s0+=509.0;
     s1+=17.0;
    } else {
     s0+=434.0;
     s1+=218.0;
    }
   }
  } else {
   if(i7<0.00511259725317359){
    if(i54<-3.7217262160993414e-06){
     s0+=23.0;
     s1+=16.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i52<1.002530574798584){
     s1+=586.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019506709650158882){
  if(i22<0.00019019842147827148){
   if(i7<0.00426650233566761){
    if(i46<3.9352707972284406e-05){
     s0+=3142.0;
     s1+=55.0;
    } else {
     s0+=69.0;
     s1+=51.0;
    }
   } else {
    if(i29<0.0012042979942634702){
     s1+=476.0;
    } else {
     s0+=97.0;
     s1+=3.0;
    }
   }
  } else {
   if(i31<1.1180615425109863){
    s1+=2035.0;
   } else {
    if(i64<-1.7611779185244814e-05){
     s1+=7.0;
    } else {
     s0+=928.0;
    }
   }
  }
 } else {
  if(i4<1.0062272548675537){
   if(i5<5.2988529205322266e-05){
    if(i33<0.0008347611874341965){
     s0+=33.0;
     s1+=98.0;
    } else {
     s0+=12.0;
     s1+=1241.0;
    }
   } else {
    if(i65<0.05114574730396271){
     s0+=55.0;
     s1+=4.0;
    } else {
     s0+=59.0;
     s1+=333.0;
    }
   }
  } else {
   if(i0<0.001566469669342041){
    if(i19<0.12084254622459412){
     s0+=20.0;
     s1+=115.0;
    } else {
     s0+=4.0;
     s1+=1026.0;
    }
   } else {
    if(i0<0.0017338395118713379){
     s0+=4.0;
     s1+=425.0;
    } else {
     s1+=11721.0;
    }
   }
  }
 }
}
if(i23<1.127637267112732){
 if(i14<1.0155093669891357){
  if(i25<1.006629228591919){
   if(i31<1.1162974834442139){
    if(i33<0.0007317111012525856){
     s0+=26736.0;
     s1+=392.0;
    } else {
     s0+=3683.0;
     s1+=3222.0;
    }
   } else {
    if(i40<0.0018087676726281643){
     s0+=65978.0;
     s1+=149.0;
    } else {
     s0+=14481.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i55<0.00010766889317892492){
    if(i60<1.0025545358657837){
     s0+=300.0;
     s1+=327.0;
    } else {
     s0+=513.0;
     s1+=18.0;
    }
   } else {
    if(i0<0.0013990998268127441){
     s0+=500.0;
     s1+=411.0;
    } else {
     s0+=42.0;
     s1+=1355.0;
    }
   }
  }
 } else {
  if(i3<1.6689300537109375e-05){
   if(i18<0.0025122459046542645){
    if(i34<1.0887564420700073){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=412.0;
     s1+=8.0;
    }
   } else {
    if(i7<0.006001803558319807){
     s0+=193.0;
     s1+=11.0;
    } else {
     s0+=42.0;
     s1+=91.0;
    }
   }
  } else {
   if(i7<0.0028243795968592167){
    if(i51<-1.5061363228596747e-05){
     s0+=23.0;
     s1+=142.0;
    } else {
     s0+=587.0;
     s1+=14.0;
    }
   } else {
    if(i22<-0.00016105175018310547){
     s0+=64.0;
     s1+=7.0;
    } else {
     s0+=178.0;
     s1+=3405.0;
    }
   }
  }
 }
} else {
 if(i39<-1.6443993445136584e-05){
  if(i19<0.1295957863330841){
   if(i24<0.002078549237921834){
    s0+=120.0;
   } else {
    if(i39<-3.414288948988542e-05){
     s0+=89.0;
     s1+=695.0;
    } else {
     s0+=142.0;
     s1+=174.0;
    }
   }
  } else {
   if(i37<0.0019249621545895934){
    s0+=57.0;
   } else {
    if(i39<-3.168450348312035e-05){
     s0+=26.0;
     s1+=11540.0;
    } else {
     s0+=103.0;
     s1+=1102.0;
    }
   }
  }
 } else {
  if(i37<0.0020372304134070873){
   s0+=1397.0;
  } else {
   if(i4<1.0003026723861694){
    if(i30<1.1935834884643555){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=630.0;
     s1+=54.0;
    }
   } else {
    if(i56<1.0008676052093506){
     s0+=60.0;
    } else {
     s0+=5.0;
     s1+=161.0;
    }
   }
  }
 }
}
if(i9<1.0104501247406006){
 if(i3<6.502866744995117e-05){
  if(i57<0.30531495809555054){
   if(i15<1.0162713527679443){
    if(i2<1.0023410320281982){
     s0+=107729.0;
     s1+=3709.0;
    } else {
     s0+=4996.0;
     s1+=1507.0;
    }
   } else {
    if(i56<1.0002927780151367){
     s0+=358.0;
     s1+=23.0;
    } else {
     s0+=669.0;
     s1+=974.0;
    }
   }
  } else {
   if(i28<0.04897797107696533){
    if(i6<0.0004589557647705078){
     s0+=468.0;
     s1+=2.0;
    } else {
     s0+=25.0;
     s1+=36.0;
    }
   } else {
    if(i51<8.110208000289276e-05){
     s0+=1.0;
     s1+=974.0;
    } else {
     s0+=38.0;
    }
   }
  }
 } else {
  if(i31<1.1979892253875732){
   if(i32<0.0009042444289661944){
    if(i31<1.057311773300171){
     s0+=52.0;
    } else {
     s0+=1.0;
     s1+=424.0;
    }
   } else {
    if(i36<1.0905089378356934){
     s0+=4.0;
     s1+=18.0;
    } else {
     s0+=786.0;
     s1+=2.0;
    }
   }
  } else {
   if(i22<-0.00027495622634887695){
    if(i26<0.10359317064285278){
     s0+=76.0;
     s1+=106.0;
    } else {
     s0+=8.0;
     s1+=324.0;
    }
   } else {
    if(i29<0.001911176834255457){
     s0+=5.0;
    } else {
     s0+=28.0;
     s1+=1910.0;
    }
   }
  }
 }
} else {
 if(i1<-7.333919347729534e-05){
  if(i31<1.1743842363357544){
   if(i63<0.0009500426822341979){
    if(i31<1.1180615425109863){
     s1+=1243.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i31<1.1180615425109863){
     s1+=18.0;
    } else {
     s0+=203.0;
    }
   }
  } else {
   if(i39<-1.3680326446774416e-05){
    s1+=11762.0;
   } else {
    if(i31<1.4355765581130981){
     s1+=2.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i47<1.1265277862548828e-05){
   if(i0<0.000621497631072998){
    if(i53<1.0015957355499268){
     s0+=127.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=23.0;
    }
   } else {
    if(i2<1.0016496181488037){
     s0+=15.0;
    } else {
     s0+=42.0;
     s1+=1011.0;
    }
   }
  } else {
   if(i29<0.0011560962302610278){
    s1+=41.0;
   } else {
    if(i28<0.012114533223211765){
     s0+=1003.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i9<1.0102519989013672){
 if(i38<0.17110702395439148){
  if(i5<1.6391277313232422e-05){
   if(i13<1.02170729637146){
    if(i29<0.0010565380798652768){
     s0+=30337.0;
     s1+=2624.0;
    } else {
     s0+=75825.0;
     s1+=896.0;
    }
   } else {
    if(i53<1.0002219676971436){
     s0+=157.0;
     s1+=12.0;
    } else {
     s0+=110.0;
     s1+=265.0;
    }
   }
  } else {
   if(i16<0.00037458486622199416){
    if(i46<-0.00016938330372795463){
     s0+=752.0;
     s1+=2360.0;
    } else {
     s0+=2357.0;
     s1+=1307.0;
    }
   } else {
    if(i28<0.028840959072113037){
     s0+=4403.0;
     s1+=80.0;
    } else {
     s0+=356.0;
     s1+=419.0;
    }
   }
  }
 } else {
  if(i20<1.0552937984466553){
   if(i28<0.08884015679359436){
    if(i39<-4.418228490976617e-05){
     s1+=5.0;
    } else {
     s0+=348.0;
     s1+=2.0;
    }
   } else {
    if(i69<0.14501580595970154){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=47.0;
    }
   }
  } else {
   if(i7<0.012300143018364906){
    if(i23<1.1755075454711914){
     s0+=39.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i20<1.0650966167449951){
     s0+=8.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=1954.0;
    }
   }
  }
 }
} else {
 if(i34<1.1728172302246094){
  if(i35<0.0005128085613250732){
   if(i56<1.000330924987793){
    s0+=57.0;
   } else {
    if(i25<0.9970513582229614){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=2191.0;
    }
   }
  } else {
   s0+=1329.0;
  }
 } else {
  if(i54<-3.821212885668501e-06){
   if(i58<0.00020170706557109952){
    if(i61<0.0028986334800720215){
     s0+=42.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i0<0.0007594823837280273){
     s0+=36.0;
     s1+=306.0;
    } else {
     s0+=5.0;
     s1+=12059.0;
    }
   }
  } else {
   s0+=114.0;
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i33<0.0007118329522199929){
  if(i44<1.1354830265045166){
   if(i32<0.0002538955304771662){
    if(i15<0.9940215945243835){
     s0+=415.0;
     s1+=170.0;
    } else {
     s0+=17218.0;
     s1+=123.0;
    }
   } else {
    if(i1<-5.83737637498416e-05){
     s0+=282.0;
     s1+=17.0;
    } else {
     s0+=59703.0;
     s1+=37.0;
    }
   }
  } else {
   if(i43<2.8105690944357775e-05){
    s0+=1429.0;
   } else {
    if(i44<1.1374742984771729){
     s1+=119.0;
    } else {
     s0+=711.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i31<1.1164028644561768){
   if(i52<0.999569833278656){
    if(i52<0.9994912147521973){
     s0+=2342.0;
    } else {
     s0+=149.0;
     s1+=52.0;
    }
   } else {
    if(i28<0.005278607364743948){
     s0+=364.0;
     s1+=131.0;
    } else {
     s0+=132.0;
     s1+=2946.0;
    }
   }
  } else {
   if(i15<1.020005702972412){
    if(i1<-0.00011788848496507853){
     s0+=165.0;
     s1+=369.0;
    } else {
     s0+=27536.0;
     s1+=1011.0;
    }
   } else {
    if(i52<1.0014939308166504){
     s0+=35.0;
     s1+=696.0;
    } else {
     s0+=131.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i57<0.03207595273852348){
  if(i9<1.0130822658538818){
   if(i29<0.0009928155923262239){
    if(i30<1.0548467636108398){
     s0+=1044.0;
    } else {
     s0+=2.0;
     s1+=1037.0;
    }
   } else {
    if(i29<0.0026052084285765886){
     s0+=2569.0;
     s1+=9.0;
    } else {
     s0+=322.0;
     s1+=160.0;
    }
   }
  } else {
   if(i47<2.1159648895263672e-05){
    if(i1<-7.298724813153967e-05){
     s0+=7.0;
     s1+=1812.0;
    } else {
     s0+=42.0;
     s1+=239.0;
    }
   } else {
    if(i21<0.003496527671813965){
     s0+=155.0;
    } else {
     s1+=48.0;
    }
   }
  }
 } else {
  if(i23<1.1129539012908936){
   if(i0<0.0006884932518005371){
    if(i45<0.051663756370544434){
     s0+=715.0;
     s1+=106.0;
    } else {
     s0+=424.0;
     s1+=278.0;
    }
   } else {
    if(i25<1.0115416049957275){
     s0+=364.0;
     s1+=1129.0;
    } else {
     s0+=21.0;
     s1+=944.0;
    }
   }
  } else {
   if(i31<1.1843671798706055){
    if(i40<0.0010158306686207652){
     s1+=50.0;
    } else {
     s0+=140.0;
    }
   } else {
    if(i26<0.04808643460273743){
     s0+=74.0;
     s1+=140.0;
    } else {
     s0+=182.0;
     s1+=12540.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i26<0.21709120273590088){
  if(i14<1.017124891281128){
   if(i58<0.002119690179824829){
    if(i7<0.0035805795341730118){
     s0+=85992.0;
     s1+=876.0;
    } else {
     s0+=17916.0;
     s1+=2853.0;
    }
   } else {
    if(i2<1.0023741722106934){
     s0+=7954.0;
     s1+=686.0;
    } else {
     s0+=1292.0;
     s1+=1251.0;
    }
   }
  } else {
   if(i31<1.1178560256958008){
    if(i64<3.038405793631682e-06){
     s0+=1.0;
     s1+=377.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i2<1.0004396438598633){
     s0+=373.0;
     s1+=8.0;
    } else {
     s0+=571.0;
     s1+=543.0;
    }
   }
  }
 } else {
  if(i28<0.03454026207327843){
   if(i54<-4.742986675410066e-06){
    if(i39<-1.2316445463511627e-05){
     s0+=43.0;
     s1+=114.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   } else {
    if(i11<0.9947071671485901){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=124.0;
     s1+=1.0;
    }
   }
  } else {
   if(i52<1.002446174621582){
    if(i57<0.040177442133426666){
     s0+=11.0;
     s1+=33.0;
    } else {
     s0+=5.0;
     s1+=1209.0;
    }
   } else {
    if(i18<0.0046996623277664185){
     s0+=18.0;
    } else {
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i29<0.0024050595238804817){
  if(i9<1.0144740343093872){
   if(i30<1.1174830198287964){
    if(i52<0.9997437596321106){
     s0+=128.0;
    } else {
     s0+=36.0;
     s1+=1271.0;
    }
   } else {
    s0+=1800.0;
   }
  } else {
   if(i54<-1.5357181837316602e-05){
    s0+=78.0;
   } else {
    s1+=1020.0;
   }
  }
 } else {
  if(i21<-0.002312004566192627){
   if(i18<0.005532586015760899){
    if(i30<1.3785405158996582){
     s1+=19.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.004086809232831001){
     s0+=2.0;
     s1+=261.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i26<0.10241568088531494){
    if(i7<0.005321495700627565){
     s0+=14.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=495.0;
    }
   } else {
    if(i12<0.1391223967075348){
     s0+=7.0;
     s1+=815.0;
    } else {
     s0+=2.0;
     s1+=12398.0;
    }
   }
  }
 }
}
if(i32<0.003459351137280464){
 if(i9<1.0102547407150269){
  if(i28<0.007063582073897123){
   if(i17<1.0097684860229492){
    if(i22<0.00015014410018920898){
     s0+=70374.0;
     s1+=630.0;
    } else {
     s0+=1149.0;
     s1+=160.0;
    }
   } else {
    if(i40<0.0012146561639383435){
     s0+=15.0;
     s1+=149.0;
    } else {
     s0+=131.0;
     s1+=8.0;
    }
   }
  } else {
   if(i17<0.9968361258506775){
    if(i3<-2.9981136322021484e-05){
     s0+=20830.0;
     s1+=240.0;
    } else {
     s0+=471.0;
     s1+=270.0;
    }
   } else {
    if(i30<1.116391897201538){
     s0+=1244.0;
     s1+=2685.0;
    } else {
     s0+=4231.0;
     s1+=731.0;
    }
   }
  }
 } else {
  if(i21<0.0020006299018859863){
   if(i32<0.001044518779963255){
    if(i56<1.0029970407485962){
     s0+=1.0;
     s1+=866.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i28<0.013605385087430477){
     s0+=1400.0;
     s1+=25.0;
    } else {
     s0+=20.0;
     s1+=465.0;
    }
   }
  } else {
   if(i17<1.0034129619598389){
    s0+=3.0;
   } else {
    if(i16<0.0011633728863671422){
     s1+=2016.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
} else {
 if(i0<-0.00014925003051757812){
  if(i0<-0.0006282329559326172){
   if(i58<0.012343796901404858){
    if(i20<1.1231228113174438){
     s0+=13852.0;
     s1+=268.0;
    } else {
     s0+=170.0;
     s1+=85.0;
    }
   } else {
    if(i33<0.0021928539499640465){
     s0+=657.0;
     s1+=37.0;
    } else {
     s0+=76.0;
     s1+=193.0;
    }
   }
  } else {
   if(i26<0.14611771702766418){
    if(i28<0.06009552627801895){
     s0+=763.0;
     s1+=103.0;
    } else {
     s0+=21.0;
     s1+=63.0;
    }
   } else {
    if(i16<0.0001520391961093992){
     s0+=60.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i26<0.08138284087181091){
   if(i23<1.057895541191101){
    if(i25<1.0172971487045288){
     s0+=211.0;
     s1+=14.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i67<0.004590552765876055){
     s0+=134.0;
     s1+=14.0;
    } else {
     s0+=130.0;
     s1+=454.0;
    }
   }
  } else {
   if(i54<-3.3890619306475855e-06){
    if(i36<1.127323031425476){
     s0+=41.0;
     s1+=6.0;
    } else {
     s0+=146.0;
     s1+=14691.0;
    }
   } else {
    if(i43<4.4080075895180926e-05){
     s0+=145.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i23<1.1279573440551758){
 if(i4<1.0037140846252441){
  if(i7<0.003559643169865012){
   if(i18<0.0010455121519044042){
    if(i32<0.0018044363241642714){
     s0+=64394.0;
     s1+=117.0;
    } else {
     s0+=2549.0;
     s1+=75.0;
    }
   } else {
    if(i59<-0.00024405121803283691){
     s0+=6093.0;
     s1+=588.0;
    } else {
     s0+=12745.0;
     s1+=187.0;
    }
   }
  } else {
   if(i25<0.9981420636177063){
    if(i6<-0.00021409988403320312){
     s0+=16707.0;
     s1+=50.0;
    } else {
     s0+=2070.0;
     s1+=285.0;
    }
   } else {
    if(i51<2.642674371600151e-05){
     s0+=1784.0;
     s1+=3002.0;
    } else {
     s0+=3450.0;
     s1+=379.0;
    }
   }
  }
 } else {
  if(i1<-7.376159919658676e-05){
   if(i56<1.0008809566497803){
    if(i44<1.0779778957366943){
     s1+=15.0;
    } else {
     s0+=221.0;
     s1+=1.0;
    }
   } else {
    if(i49<-5.811725259263767e-06){
     s0+=134.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=4087.0;
    }
   }
  } else {
   if(i35<0.0005795955657958984){
    if(i24<0.000978632946498692){
     s0+=25.0;
     s1+=1542.0;
    } else {
     s0+=388.0;
     s1+=231.0;
    }
   } else {
    if(i30<1.176405668258667){
     s0+=2842.0;
    } else {
     s0+=214.0;
     s1+=179.0;
    }
   }
  }
 }
} else {
 if(i36<1.170623779296875){
  if(i0<0.0012569427490234375){
   if(i1<-8.151328074745834e-05){
    if(i6<-0.00013265013694763184){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=168.0;
    }
   } else {
    if(i55<0.0008807963458821177){
     s0+=1868.0;
     s1+=79.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   }
  } else {
   if(i8<1.0174081325531006){
    if(i30<1.1748318672180176){
     s0+=19.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=161.0;
   }
  }
 } else {
  if(i1<-2.46454819716746e-05){
   if(i9<0.9718669652938843){
    if(i57<0.22758576273918152){
     s0+=97.0;
     s1+=15.0;
    } else {
     s0+=16.0;
     s1+=114.0;
    }
   } else {
    if(i18<0.00138442637398839){
     s0+=98.0;
     s1+=192.0;
    } else {
     s0+=72.0;
     s1+=12751.0;
    }
   }
  } else {
   if(i7<0.009039964526891708){
    if(i30<1.2004961967468262){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=575.0;
     s1+=19.0;
    }
   } else {
    if(i31<1.629280686378479){
     s0+=4.0;
     s1+=135.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i33<0.0007171102333813906){
  if(i22<-5.3942203521728516e-05){
   if(i4<0.9973739981651306){
    s0+=15765.0;
   } else {
    if(i32<0.0002502943389117718){
     s0+=960.0;
     s1+=296.0;
    } else {
     s0+=6568.0;
     s1+=29.0;
    }
   }
  } else {
   if(i32<0.0018413099460303783){
    if(i21<-0.00028699636459350586){
     s0+=2763.0;
     s1+=23.0;
    } else {
     s0+=52996.0;
     s1+=2.0;
    }
   } else {
    if(i52<1.0006693601608276){
     s0+=934.0;
     s1+=1.0;
    } else {
     s0+=123.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i6<-6.628036499023438e-05){
   if(i31<1.0907573699951172){
    if(i53<0.999143123626709){
     s0+=677.0;
     s1+=68.0;
    } else {
     s0+=120.0;
     s1+=316.0;
    }
   } else {
    if(i28<0.08489324897527695){
     s0+=21705.0;
     s1+=241.0;
    } else {
     s0+=9.0;
     s1+=170.0;
    }
   }
  } else {
   if(i29<0.0010480150813236833){
    if(i31<1.056142807006836){
     s0+=1596.0;
    } else {
     s0+=65.0;
     s1+=2492.0;
    }
   } else {
    if(i44<1.1224448680877686){
     s0+=4680.0;
     s1+=422.0;
    } else {
     s0+=1364.0;
     s1+=1518.0;
    }
   }
  }
 }
} else {
 if(i7<0.004137266427278519){
  if(i17<1.0141663551330566){
   if(i16<0.00020573165966197848){
    if(i34<1.094508409500122){
     s1+=555.0;
    } else {
     s0+=223.0;
     s1+=21.0;
    }
   } else {
    if(i62<-0.0013256659731268883){
     s1+=2.0;
    } else {
     s0+=4203.0;
     s1+=7.0;
    }
   }
  } else {
   if(i2<1.0047063827514648){
    s0+=12.0;
   } else {
    if(i60<1.0036756992340088){
     s0+=2.0;
     s1+=444.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<1.0183675289154053){
   if(i43<0.0003116616571787745){
    if(i12<0.14790531992912292){
     s0+=1002.0;
     s1+=2617.0;
    } else {
     s0+=88.0;
     s1+=2295.0;
    }
   } else {
    if(i19<0.09746479988098145){
     s0+=477.0;
     s1+=128.0;
    } else {
     s0+=43.0;
     s1+=167.0;
    }
   }
  } else {
   if(i49<-8.164295650203712e-06){
    s0+=7.0;
   } else {
    if(i22<-0.0003401339054107666){
     s0+=41.0;
     s1+=37.0;
    } else {
     s0+=39.0;
     s1+=12397.0;
    }
   }
  }
 }
}
if(i14<1.0168040990829468){
 if(i6<0.0010116100311279297){
  if(i7<0.003943925723433495){
   if(i29<0.0006515684654004872){
    if(i38<0.008579740300774574){
     s0+=21527.0;
     s1+=235.0;
    } else {
     s0+=6995.0;
     s1+=849.0;
    }
   } else {
    if(i69<0.17192327976226807){
     s0+=61925.0;
     s1+=155.0;
    } else {
     s0+=1013.0;
     s1+=63.0;
    }
   }
  } else {
   if(i3<-1.913309097290039e-05){
    if(i66<0.0059054698795080185){
     s0+=19982.0;
     s1+=853.0;
    } else {
     s0+=315.0;
     s1+=258.0;
    }
   } else {
    if(i6<-9.295344352722168e-05){
     s0+=334.0;
     s1+=13.0;
    } else {
     s0+=973.0;
     s1+=3601.0;
    }
   }
  }
 } else {
  if(i16<0.000704434234648943){
   if(i51<-7.946971891215071e-06){
    if(i71<-4.874543265032116e-06){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=1912.0;
    }
   } else {
    if(i39<-3.071106402785517e-05){
     s0+=409.0;
     s1+=2173.0;
    } else {
     s0+=296.0;
     s1+=67.0;
    }
   }
  } else {
   s0+=1242.0;
  }
 }
} else {
 if(i5<8.64267349243164e-06){
  if(i45<0.2234465479850769){
   if(i25<0.9998133182525635){
    if(i52<1.0007444620132446){
     s0+=375.0;
     s1+=4.0;
    } else {
     s0+=109.0;
     s1+=20.0;
    }
   } else {
    if(i52<1.0007307529449463){
     s0+=73.0;
     s1+=3.0;
    } else {
     s0+=55.0;
     s1+=69.0;
    }
   }
  } else {
   if(i54<-2.644444066390861e-06){
    if(i35<0.0004902482032775879){
     s1+=162.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i49<-7.345089670707239e-06){
   s0+=152.0;
  } else {
   if(i36<1.1704325675964355){
    if(i63<0.0007491239812225103){
     s0+=54.0;
     s1+=1623.0;
    } else {
     s0+=706.0;
     s1+=614.0;
    }
   } else {
    if(i12<0.09759768843650818){
     s0+=68.0;
     s1+=106.0;
    } else {
     s0+=15.0;
     s1+=11431.0;
    }
   }
  }
 }
}
if(i9<1.0108096599578857){
 if(i25<1.0046414136886597){
  if(i6<0.0002925395965576172){
   if(i18<0.001478683901950717){
    if(i18<0.0011217499850317836){
     s0+=71711.0;
     s1+=233.0;
    } else {
     s0+=8975.0;
     s1+=309.0;
    }
   } else {
    if(i23<1.1412148475646973){
     s0+=22324.0;
     s1+=2212.0;
    } else {
     s0+=106.0;
     s1+=289.0;
    }
   }
  } else {
   if(i7<0.004146904684603214){
    if(i28<0.00839012861251831){
     s0+=6060.0;
     s1+=29.0;
    } else {
     s0+=834.0;
     s1+=126.0;
    }
   } else {
    if(i21<-0.002202153205871582){
     s0+=1516.0;
     s1+=620.0;
    } else {
     s0+=456.0;
     s1+=2540.0;
    }
   }
  }
 } else {
  if(i57<0.04591449350118637){
   if(i18<0.0016954871825873852){
    if(i0<0.0017438530921936035){
     s0+=1756.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=50.0;
    }
   } else {
    if(i52<0.9997895956039429){
     s0+=210.0;
     s1+=3.0;
    } else {
     s0+=438.0;
     s1+=634.0;
    }
   }
  } else {
   if(i23<1.047491431236267){
    if(i6<0.0018181204795837402){
     s0+=336.0;
     s1+=25.0;
    } else {
     s1+=50.0;
    }
   } else {
    if(i23<1.104756236076355){
     s0+=291.0;
     s1+=648.0;
    } else {
     s0+=155.0;
     s1+=2486.0;
    }
   }
  }
 }
} else {
 if(i28<0.006413161754608154){
  if(i31<1.1180615425109863){
   s1+=823.0;
  } else {
   if(i4<1.0102919340133667){
    if(i32<0.0023937963414937258){
     s0+=987.0;
    } else {
     s0+=36.0;
     s1+=49.0;
    }
   } else {
    s1+=311.0;
   }
  }
 } else {
  if(i4<1.002284288406372){
   if(i28<0.024655450135469437){
    s0+=61.0;
   } else {
    s1+=43.0;
   }
  } else {
   if(i39<-1.196733137476258e-05){
    if(i37<0.0022362759336829185){
     s0+=152.0;
     s1+=1170.0;
    } else {
     s0+=16.0;
     s1+=11758.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
}
if(i1<-8.012790203792974e-05){
 if(i9<0.9764533042907715){
  if(i12<0.0558563768863678){
   if(i28<0.056046709418296814){
    if(i74<0.05141763016581535){
     s0+=945.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=16.0;
    }
   } else {
    if(i73<-0.01156511902809143){
     s0+=5.0;
     s1+=33.0;
    } else {
     s0+=53.0;
     s1+=17.0;
    }
   }
  } else {
   if(i61<-0.009833455085754395){
    if(i31<1.5129314661026){
     s0+=33.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   } else {
    if(i23<1.1039278507232666){
     s0+=29.0;
     s1+=71.0;
    } else {
     s0+=6.0;
     s1+=174.0;
    }
   }
  }
 } else {
  if(i12<0.13982897996902466){
   if(i56<1.0006344318389893){
    if(i73<-0.008064299821853638){
     s1+=17.0;
    } else {
     s0+=338.0;
    }
   } else {
    if(i16<0.0006768650491721928){
     s0+=200.0;
     s1+=2876.0;
    } else {
     s0+=66.0;
    }
   }
  } else {
   if(i24<0.0022782483138144016){
    if(i73<0.00809413194656372){
     s0+=45.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.002926609478890896){
     s0+=4.0;
     s1+=97.0;
    } else {
     s0+=5.0;
     s1+=13501.0;
    }
   }
  }
 }
} else {
 if(i5<2.294778823852539e-05){
  if(i33<0.0006896289996802807){
   if(i24<0.0019596852362155914){
    if(i33<0.000534960301592946){
     s0+=65567.0;
     s1+=58.0;
    } else {
     s0+=7528.0;
     s1+=186.0;
    }
   } else {
    if(i4<1.000068187713623){
     s0+=4438.0;
    } else {
     s0+=851.0;
     s1+=151.0;
    }
   }
  } else {
   if(i24<0.0009228305425494909){
    if(i56<0.999855637550354){
     s0+=2132.0;
     s1+=115.0;
    } else {
     s0+=636.0;
     s1+=3014.0;
    }
   } else {
    if(i20<1.121600866317749){
     s0+=27617.0;
     s1+=645.0;
    } else {
     s0+=321.0;
     s1+=322.0;
    }
   }
  }
 } else {
  if(i8<1.0164823532104492){
   if(i60<1.0032713413238525){
    if(i36<1.0487251281738281){
     s0+=1172.0;
    } else {
     s0+=1493.0;
     s1+=1888.0;
    }
   } else {
    if(i62<0.0013614192139357328){
     s0+=2333.0;
     s1+=106.0;
    } else {
     s0+=271.0;
     s1+=207.0;
    }
   }
  } else {
   if(i24<0.001112248282879591){
    s1+=436.0;
   } else {
    if(i23<1.1363131999969482){
     s0+=259.0;
     s1+=153.0;
    } else {
     s0+=22.0;
     s1+=363.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i6<0.0005732178688049316){
  if(i31<1.1162974834442139){
   if(i11<1.0068142414093018){
    if(i57<0.012716250494122505){
     s0+=18580.0;
     s1+=420.0;
    } else {
     s0+=9670.0;
     s1+=2165.0;
    }
   } else {
    if(i23<1.0690466165542603){
     s0+=73.0;
     s1+=464.0;
    } else {
     s0+=133.0;
     s1+=14.0;
    }
   }
  } else {
   if(i45<0.2054959535598755){
    if(i7<0.019742581993341446){
     s0+=80589.0;
     s1+=959.0;
    } else {
     s0+=88.0;
     s1+=117.0;
    }
   } else {
    if(i39<-5.853974471392576e-06){
     s0+=23.0;
     s1+=387.0;
    } else {
     s0+=96.0;
    }
   }
  }
 } else {
  if(i55<0.00016790971858426929){
   if(i40<0.0010082372464239597){
    if(i9<1.0075352191925049){
     s0+=1484.0;
     s1+=289.0;
    } else {
     s0+=115.0;
     s1+=722.0;
    }
   } else {
    if(i34<1.1758689880371094){
     s0+=2586.0;
     s1+=66.0;
    } else {
     s0+=91.0;
     s1+=142.0;
    }
   }
  } else {
   if(i3<2.6226043701171875e-06){
    if(i23<1.1715928316116333){
     s0+=760.0;
     s1+=180.0;
    } else {
     s1+=131.0;
    }
   } else {
    if(i29<0.002686100546270609){
     s0+=300.0;
     s1+=286.0;
    } else {
     s0+=422.0;
     s1+=3473.0;
    }
   }
  }
 }
} else {
 if(i22<0.00029456615447998047){
  if(i1<-4.351078314357437e-05){
   if(i47<2.1517276763916016e-05){
    if(i6<0.00029522180557250977){
     s0+=123.0;
     s1+=147.0;
    } else {
     s0+=311.0;
     s1+=3460.0;
    }
   } else {
    if(i56<1.0056366920471191){
     s0+=176.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i24<0.00031737046083435416){
    s1+=98.0;
   } else {
    if(i19<0.23756816983222961){
     s0+=639.0;
     s1+=137.0;
    } else {
     s0+=6.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i52<0.997472882270813){
   s0+=14.0;
  } else {
   if(i7<0.0028180149383842945){
    if(i35<0.0017859935760498047){
     s0+=4.0;
     s1+=212.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i39<-0.00022621144307777286){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=10562.0;
    }
   }
  }
 }
}
if(i25<1.004767894744873){
 if(i12<0.206992506980896){
  if(i8<1.0118725299835205){
   if(i35<9.292364120483398e-05){
    if(i34<1.0905301570892334){
     s0+=23353.0;
     s1+=804.0;
    } else {
     s0+=55994.0;
     s1+=141.0;
    }
   } else {
    if(i29<0.00103671383112669){
     s0+=5027.0;
     s1+=2378.0;
    } else {
     s0+=26873.0;
     s1+=1520.0;
    }
   }
  } else {
   if(i33<0.0005947379395365715){
    if(i6<0.0005390644073486328){
     s0+=424.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=38.0;
    }
   } else {
    if(i16<0.0009891833178699017){
     s0+=274.0;
     s1+=1314.0;
    } else {
     s0+=153.0;
    }
   }
  }
 } else {
  if(i24<0.0025624986737966537){
   if(i1<-4.3717765947803855e-05){
    if(i52<1.000367283821106){
     s0+=5.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i12<0.20925024151802063){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=148.0;
    }
   }
  } else {
   if(i39<-8.500350304530002e-06){
    if(i3<-2.956390380859375e-05){
     s0+=26.0;
     s1+=240.0;
    } else {
     s1+=1598.0;
    }
   } else {
    if(i27<1.0462987422943115){
     s0+=34.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i37<0.001994185149669647){
  if(i30<1.116804838180542){
   if(i16<0.00023443414829671383){
    if(i49<-2.575073085608892e-05){
     s0+=9.0;
    } else {
     s1+=2091.0;
    }
   } else {
    s0+=344.0;
   }
  } else {
   if(i55<0.00037357083056122065){
    s0+=2858.0;
   } else {
    if(i16<0.00022927383542992175){
     s1+=14.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i3<2.1219253540039062e-05){
   if(i22<-0.0004146099090576172){
    if(i16<0.0004729192587547004){
     s0+=348.0;
     s1+=45.0;
    } else {
     s0+=72.0;
     s1+=96.0;
    }
   } else {
    if(i28<0.020484916865825653){
     s0+=60.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=162.0;
    }
   }
  } else {
   if(i26<0.08529186248779297){
    if(i7<0.0034890384413301945){
     s0+=67.0;
     s1+=8.0;
    } else {
     s0+=191.0;
     s1+=484.0;
    }
   } else {
    if(i26<0.11128672957420349){
     s0+=56.0;
     s1+=434.0;
    } else {
     s0+=36.0;
     s1+=13066.0;
    }
   }
  }
 }
}
if(i1<-9.841296559898183e-05){
 if(i12<0.018122375011444092){
  if(i11<0.9566044807434082){
   if(i48<0.765272319316864){
    if(i73<-0.01689666509628296){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=43.0;
     s1+=3.0;
    }
   } else {
    if(i72<-0.1787671148777008){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=473.0;
     s1+=6.0;
    }
   }
  } else {
   if(i10<0.9701445698738098){
    if(i43<0.00024189878604374826){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=22.0;
    }
   } else {
    if(i64<1.2057755157002248e-05){
     s1+=59.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i71<5.490585863299202e-06){
   if(i39<-0.0001821671612560749){
    s0+=55.0;
   } else {
    if(i11<0.9348538517951965){
     s0+=90.0;
     s1+=38.0;
    } else {
     s0+=134.0;
     s1+=15181.0;
    }
   }
  } else {
   s0+=114.0;
  }
 }
} else {
 if(i14<1.015355110168457){
  if(i22<0.0002085566520690918){
   if(i53<1.0082100629806519){
    if(i7<0.0036514331586658955){
     s0+=89357.0;
     s1+=1087.0;
    } else {
     s0+=23009.0;
     s1+=3849.0;
    }
   } else {
    if(i19<0.10160109400749207){
     s0+=624.0;
     s1+=180.0;
    } else {
     s0+=127.0;
     s1+=466.0;
    }
   }
  } else {
   if(i30<1.1174830198287964){
    if(i58<0.00011075311340391636){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=609.0;
    }
   } else {
    if(i62<0.0010686821769922972){
     s0+=444.0;
     s1+=12.0;
    } else {
     s1+=114.0;
    }
   }
  }
 } else {
  if(i1<-4.358645310276188e-05){
   if(i49<-5.724809852836188e-06){
    s0+=224.0;
   } else {
    if(i7<0.004345653112977743){
     s0+=396.0;
     s1+=279.0;
    } else {
     s0+=108.0;
     s1+=1925.0;
    }
   }
  } else {
   if(i4<1.001915693283081){
    if(i7<0.006880091968923807){
     s0+=827.0;
     s1+=33.0;
    } else {
     s0+=17.0;
     s1+=57.0;
    }
   } else {
    if(i16<0.0003250935988035053){
     s0+=98.0;
     s1+=326.0;
    } else {
     s0+=391.0;
    }
   }
  }
 }
}
if(i26<0.20152893662452698){
 if(i6<0.0005429387092590332){
  if(i31<1.1162974834442139){
   if(i33<0.000731740437913686){
    if(i18<0.002082128543406725){
     s0+=26475.0;
     s1+=333.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i56<0.9998250603675842){
     s0+=1883.0;
     s1+=104.0;
    } else {
     s0+=429.0;
     s1+=2506.0;
    }
   }
  } else {
   if(i28<0.08963660895824432){
    if(i66<0.005208220332860947){
     s0+=79580.0;
     s1+=842.0;
    } else {
     s0+=687.0;
     s1+=155.0;
    }
   } else {
    s1+=53.0;
   }
  }
 } else {
  if(i16<0.0003110435209237039){
   if(i0<0.0003846287727355957){
    if(i51<2.4443063011858612e-05){
     s0+=128.0;
     s1+=177.0;
    } else {
     s0+=634.0;
     s1+=131.0;
    }
   } else {
    if(i39<-1.2426196917658672e-05){
     s0+=412.0;
     s1+=5860.0;
    } else {
     s0+=125.0;
     s1+=5.0;
    }
   }
  } else {
   if(i28<0.024568211287260056){
    if(i40<0.0020298142917454243){
     s0+=5027.0;
     s1+=15.0;
    } else {
     s0+=424.0;
     s1+=111.0;
    }
   } else {
    if(i4<1.0010086297988892){
     s0+=294.0;
     s1+=141.0;
    } else {
     s0+=116.0;
     s1+=1037.0;
    }
   }
  }
 }
} else {
 if(i3<1.633167266845703e-05){
  if(i29<0.005951268598437309){
   if(i39<-9.234809112967923e-06){
    if(i3<-4.678964614868164e-05){
     s0+=72.0;
     s1+=9.0;
    } else {
     s0+=18.0;
     s1+=94.0;
    }
   } else {
    if(i39<-8.040256034291815e-06){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=427.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<-3.550029578036629e-05){
    if(i7<0.005949685350060463){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=530.0;
    }
   } else {
    if(i67<-0.006492864806205034){
     s1+=3.0;
    } else {
     s0+=73.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i30<1.1729364395141602){
   s0+=117.0;
  } else {
   if(i33<7.606846338603646e-05){
    if(i22<0.0004106760025024414){
     s0+=4.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i32<0.001778275240212679){
     s0+=3.0;
     s1+=8.0;
    } else {
     s1+=11763.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i8<1.0124268531799316){
  if(i23<1.1529799699783325){
   if(i18<0.0015520930755883455){
    if(i55<0.00016782278544269502){
     s0+=71532.0;
     s1+=215.0;
    } else {
     s0+=13655.0;
     s1+=475.0;
    }
   } else {
    if(i32<0.0010798980947583914){
     s0+=3100.0;
     s1+=2189.0;
    } else {
     s0+=20872.0;
     s1+=1296.0;
    }
   }
  } else {
   if(i38<0.11089880764484406){
    if(i4<1.0014853477478027){
     s0+=537.0;
     s1+=5.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i45<0.5373715162277222){
     s0+=11.0;
     s1+=484.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i28<0.02427760884165764){
   if(i5<1.233816146850586e-05){
    if(i53<1.0028295516967773){
     s0+=377.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i49<-2.2800782062404323e-06){
     s0+=82.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=164.0;
    }
   }
  } else {
   if(i22<-0.000202178955078125){
    if(i1<-2.0246328858775087e-05){
     s0+=3.0;
     s1+=48.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i4<0.9986151456832886){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=761.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i66<0.00048074102960526943){
   if(i32<0.00019617135694716126){
    s0+=1077.0;
   } else {
    if(i58<0.0008583570015616715){
     s0+=75.0;
     s1+=2512.0;
    } else {
     s0+=276.0;
     s1+=62.0;
    }
   }
  } else {
   if(i57<0.04519117623567581){
    if(i31<1.116804838180542){
     s1+=64.0;
    } else {
     s0+=2930.0;
     s1+=19.0;
    }
   } else {
    if(i37<0.0011346485698595643){
     s0+=1.0;
     s1+=104.0;
    } else {
     s0+=190.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i23<1.0743002891540527){
   if(i21<0.0011625885963439941){
    if(i2<1.006422758102417){
     s0+=984.0;
     s1+=146.0;
    } else {
     s0+=37.0;
     s1+=146.0;
    }
   } else {
    s1+=107.0;
   }
  } else {
   if(i3<2.5928020477294922e-05){
    if(i7<0.009086012840270996){
     s0+=220.0;
     s1+=48.0;
    } else {
     s0+=119.0;
     s1+=616.0;
    }
   } else {
    if(i12<0.06089472770690918){
     s0+=83.0;
     s1+=244.0;
    } else {
     s0+=97.0;
     s1+=14634.0;
    }
   }
  }
 }
}
if(i6<0.0005717873573303223){
 if(i6<0.00032275915145874023){
  if(i26<0.2503450810909271){
   if(i30<1.0905578136444092){
    if(i30<1.0577976703643799){
     s0+=17134.0;
     s1+=12.0;
    } else {
     s0+=7121.0;
     s1+=1986.0;
    }
   } else {
    if(i50<0.03342743217945099){
     s0+=69658.0;
     s1+=419.0;
    } else {
     s0+=10671.0;
     s1+=607.0;
    }
   }
  } else {
   if(i30<1.6811659336090088){
    if(i28<0.038527704775333405){
     s0+=44.0;
     s1+=6.0;
    } else {
     s1+=289.0;
    }
   } else {
    s0+=36.0;
   }
  }
 } else {
  if(i7<0.0041430797427892685){
   if(i43<3.276218558312394e-05){
    if(i1<-4.7099139919737354e-05){
     s0+=46.0;
     s1+=17.0;
    } else {
     s0+=3824.0;
     s1+=5.0;
    }
   } else {
    if(i33<0.0010406662477180362){
     s0+=133.0;
     s1+=90.0;
    } else {
     s0+=257.0;
    }
   }
  } else {
   if(i17<0.9958550930023193){
    if(i46<-0.000398402800783515){
     s0+=13.0;
     s1+=172.0;
    } else {
     s0+=698.0;
     s1+=52.0;
    }
   } else {
    if(i2<0.9998340606689453){
     s0+=59.0;
     s1+=4.0;
    } else {
     s0+=135.0;
     s1+=1424.0;
    }
   }
  }
 }
} else {
 if(i12<0.1641763150691986){
  if(i17<1.0126475095748901){
   if(i7<0.0034477305598556995){
    if(i35<0.0005117356777191162){
     s0+=664.0;
     s1+=340.0;
    } else {
     s0+=3523.0;
    }
   } else {
    if(i21<-0.0013829469680786133){
     s0+=1403.0;
     s1+=844.0;
    } else {
     s0+=650.0;
     s1+=2670.0;
    }
   }
  } else {
   if(i64<8.190367225324735e-06){
    if(i49<-5.9252015489619225e-06){
     s0+=111.0;
    } else {
     s0+=31.0;
     s1+=2273.0;
    }
   } else {
    if(i35<0.0008319616317749023){
     s1+=3.0;
    } else {
     s0+=30.0;
    }
   }
  }
 } else {
  if(i29<0.0024420893751084805){
   if(i14<1.0249910354614258){
    s0+=214.0;
   } else {
    if(i63<0.0017753171268850565){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i0<-0.00029087066650390625){
    if(i66<0.0011320947669446468){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=76.0;
    }
   } else {
    if(i29<0.0024614785797894){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=13061.0;
    }
   }
  }
 }
}
if(i0<0.0009602904319763184){
 if(i45<0.19009116291999817){
  if(i5<1.8537044525146484e-05){
   if(i6<0.0002925992012023926){
    if(i31<1.116391897201538){
     s0+=27170.0;
     s1+=2135.0;
    } else {
     s0+=76003.0;
     s1+=668.0;
    }
   } else {
    if(i18<0.0017972530331462622){
     s0+=3139.0;
     s1+=29.0;
    } else {
     s0+=1435.0;
     s1+=1146.0;
    }
   }
  } else {
   if(i18<0.0021432575304061174){
    if(i32<0.0019625918939709663){
     s0+=3465.0;
     s1+=27.0;
    } else {
     s0+=94.0;
     s1+=120.0;
    }
   } else {
    if(i12<0.039587557315826416){
     s0+=1300.0;
     s1+=292.0;
    } else {
     s0+=1249.0;
     s1+=2185.0;
    }
   }
  }
 } else {
  if(i7<0.005578009411692619){
   if(i70<0.1442703902721405){
    if(i59<-0.0031912624835968018){
     s0+=2.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i56<1.0008361339569092){
     s0+=219.0;
    } else {
     s0+=156.0;
     s1+=30.0;
    }
   }
  } else {
   if(i40<0.0016580894589424133){
    if(i2<1.0000261068344116){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i36<1.1116981506347656){
     s0+=2.0;
    } else {
     s0+=10.0;
     s1+=1370.0;
    }
   }
  }
 }
} else {
 if(i31<1.1979892253875732){
  if(i16<0.0002467811282258481){
   if(i47<5.143880844116211e-05){
    s1+=2380.0;
   } else {
    s0+=18.0;
   }
  } else {
   s0+=1994.0;
  }
 } else {
  if(i26<0.0032147467136383057){
   if(i36<1.346508264541626){
    if(i68<0.001231587608344853){
     s0+=25.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i20<1.1959316730499268){
     s0+=1.0;
     s1+=39.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i21<-0.002543509006500244){
    if(i8<0.995506763458252){
     s0+=10.0;
     s1+=193.0;
    } else {
     s0+=34.0;
     s1+=37.0;
    }
   } else {
    if(i30<1.1592519283294678){
     s0+=5.0;
    } else {
     s0+=29.0;
     s1+=13807.0;
    }
   }
  }
 }
}
if(i6<0.0005698800086975098){
 if(i19<0.23068618774414062){
  if(i27<1.0215840339660645){
   if(i10<1.00851309299469){
    if(i28<0.006601128727197647){
     s0+=66249.0;
     s1+=394.0;
    } else {
     s0+=40764.0;
     s1+=3106.0;
    }
   } else {
    if(i36<1.0869145393371582){
     s1+=335.0;
    } else {
     s0+=1647.0;
     s1+=115.0;
    }
   }
  } else {
   if(i33<0.0007268291665241122){
    if(i60<1.0016639232635498){
     s0+=511.0;
    } else {
     s0+=27.0;
     s1+=12.0;
    }
   } else {
    if(i56<1.002423882484436){
     s0+=139.0;
     s1+=468.0;
    } else {
     s0+=134.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i43<7.872036076150835e-05){
   if(i22<0.00015538930892944336){
    if(i5<1.0579824447631836e-05){
     s0+=89.0;
     s1+=4.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i33<0.0010140403173863888){
    if(i49<-2.9470152185240295e-07){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i18<0.002799076959490776){
     s0+=7.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=515.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i31<1.116804838180542){
   if(i24<0.00024820026010274887){
    s0+=1477.0;
   } else {
    s1+=3040.0;
   }
  } else {
   if(i24<0.0024389256723225117){
    if(i11<0.9952073097229004){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=3414.0;
    }
   } else {
    if(i24<0.0033107574563473463){
     s0+=31.0;
     s1+=126.0;
    } else {
     s0+=252.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i48<1.020175814628601){
   if(i19<0.06612715125083923){
    if(i66<0.0005232765688560903){
     s0+=456.0;
     s1+=10.0;
    } else {
     s0+=608.0;
     s1+=428.0;
    }
   } else {
    if(i62<0.0005271253176033497){
     s0+=122.0;
     s1+=179.0;
    } else {
     s0+=193.0;
     s1+=3780.0;
    }
   }
  } else {
   if(i46<-0.00033017777604982257){
    if(i44<1.1078033447265625){
     s0+=29.0;
     s1+=41.0;
    } else {
     s0+=85.0;
     s1+=10711.0;
    }
   } else {
    if(i21<-0.0013415813446044922){
     s0+=162.0;
     s1+=61.0;
    } else {
     s0+=10.0;
     s1+=1009.0;
    }
   }
  }
 }
}
if(i15<1.016991376876831){
 if(i17<1.0088284015655518){
  if(i0<0.0009949803352355957){
   if(i5<1.4007091522216797e-05){
    if(i7<0.0031063775531947613){
     s0+=78485.0;
     s1+=714.0;
    } else {
     s0+=26382.0;
     s1+=2583.0;
    }
   } else {
    if(i57<0.04127100110054016){
     s0+=6268.0;
     s1+=766.0;
    } else {
     s0+=1944.0;
     s1+=2092.0;
    }
   }
  } else {
   if(i37<0.0022767395712435246){
    if(i16<0.00025218474911525846){
     s0+=12.0;
     s1+=172.0;
    } else {
     s0+=416.0;
    }
   } else {
    if(i34<1.399658441543579){
     s0+=14.0;
     s1+=761.0;
    } else {
     s0+=66.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i28<0.012444490566849709){
   if(i31<1.1180615425109863){
    s1+=1013.0;
   } else {
    if(i25<1.012401819229126){
     s0+=1215.0;
     s1+=89.0;
    } else {
     s1+=164.0;
    }
   }
  } else {
   if(i24<0.001963934861123562){
    if(i62<0.00015613084542565048){
     s0+=3.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i62<0.014980388805270195){
     s1+=1415.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i7<0.005013410001993179){
  if(i43<-2.420787131995894e-05){
   if(i33<0.0014045457355678082){
    if(i16<0.00046254185144789517){
     s0+=14.0;
     s1+=668.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i17<1.0303740501403809){
     s0+=38.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i32<0.0007148200529627502){
    s1+=47.0;
   } else {
    if(i16<0.00026260741287842393){
     s0+=627.0;
     s1+=140.0;
    } else {
     s0+=778.0;
    }
   }
  }
 } else {
  if(i71<6.2602066464023665e-06){
   if(i21<-0.003539472818374634){
    if(i33<0.0022502464707940817){
     s0+=26.0;
     s1+=1.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i56<0.9967690706253052){
     s0+=10.0;
    } else {
     s0+=53.0;
     s1+=13488.0;
    }
   }
  } else {
   s0+=25.0;
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i12<0.2006644308567047){
  if(i2<1.0019298791885376){
   if(i57<0.020238732919096947){
    if(i37<0.001045099925249815){
     s0+=25045.0;
     s1+=1030.0;
    } else {
     s0+=40063.0;
     s1+=35.0;
    }
   } else {
    if(i31<1.1162974834442139){
     s0+=6843.0;
     s1+=2014.0;
    } else {
     s0+=34132.0;
     s1+=595.0;
    }
   }
  } else {
   if(i63<0.002795517910271883){
    if(i18<0.00196083914488554){
     s0+=5183.0;
     s1+=112.0;
    } else {
     s0+=2148.0;
     s1+=1508.0;
    }
   } else {
    if(i4<0.9999338388442993){
     s0+=569.0;
     s1+=174.0;
    } else {
     s0+=323.0;
     s1+=782.0;
    }
   }
  }
 } else {
  if(i39<-8.02727481641341e-06){
   if(i33<0.000517450156621635){
    if(i25<1.0014355182647705){
     s1+=2.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i40<0.0017225684132426977){
     s0+=15.0;
     s1+=8.0;
    } else {
     s0+=41.0;
     s1+=1544.0;
    }
   }
  } else {
   s0+=272.0;
  }
 }
} else {
 if(i16<0.000704873469658196){
  if(i7<0.00407246220856905){
   if(i0<0.0014303326606750488){
    if(i24<0.0006708052242174745){
     s1+=68.0;
    } else {
     s0+=229.0;
    }
   } else {
    if(i39<-0.00018147399532608688){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=886.0;
    }
   }
  } else {
   if(i9<0.975357174873352){
    if(i24<0.015140490606427193){
     s0+=53.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   } else {
    if(i49<-1.6586616766289808e-05){
     s0+=15.0;
    } else {
     s0+=51.0;
     s1+=15250.0;
    }
   }
  }
 } else {
  s0+=1752.0;
 }
}
if(i21<0.0014270544052124023){
 if(i4<1.0031514167785645){
  if(i7<0.0076211560517549515){
   if(i18<0.0015706925187259912){
    if(i20<1.0179111957550049){
     s0+=10200.0;
     s1+=387.0;
    } else {
     s0+=74792.0;
     s1+=375.0;
    }
   } else {
    if(i17<0.9955857396125793){
     s0+=14350.0;
     s1+=325.0;
    } else {
     s0+=6197.0;
     s1+=2416.0;
    }
   }
  } else {
   if(i3<-2.2232532501220703e-05){
    if(i23<1.116074562072754){
     s0+=4405.0;
     s1+=247.0;
    } else {
     s0+=100.0;
     s1+=445.0;
    }
   } else {
    if(i13<1.0013372898101807){
     s0+=442.0;
     s1+=841.0;
    } else {
     s0+=30.0;
     s1+=784.0;
    }
   }
  }
 } else {
  if(i40<0.0019991081207990646){
   if(i16<0.0002495085645932704){
    if(i30<1.1176170110702515){
     s0+=55.0;
     s1+=1091.0;
    } else {
     s0+=842.0;
     s1+=145.0;
    }
   } else {
    if(i31<1.1979892253875732){
     s0+=3701.0;
    } else {
     s0+=227.0;
     s1+=64.0;
    }
   }
  } else {
   if(i33<0.00043222622480243444){
    s0+=39.0;
   } else {
    if(i44<1.075517177581787){
     s0+=12.0;
    } else {
     s0+=178.0;
     s1+=4113.0;
    }
   }
  }
 }
} else {
 if(i56<1.000880479812622){
  if(i65<0.0845566838979721){
   if(i40<0.0074626062996685505){
    if(i23<1.054246187210083){
     s0+=15.0;
     s1+=4.0;
    } else {
     s0+=455.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i32<0.010855449363589287){
    s0+=6.0;
   } else {
    s1+=287.0;
   }
  }
 } else {
  if(i7<0.003443686757236719){
   if(i37<0.001043511088937521){
    s1+=442.0;
   } else {
    if(i36<1.1500647068023682){
     s0+=372.0;
    } else {
     s1+=184.0;
    }
   }
  } else {
   if(i16<0.0009516249992884696){
    if(i16<0.0006302791298367083){
     s1+=11763.0;
    } else {
     s0+=1.0;
     s1+=479.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i10<1.0110664367675781){
  if(i45<0.20452991127967834){
   if(i33<0.0007107772398740053){
    if(i31<1.0817922353744507){
     s0+=16295.0;
     s1+=285.0;
    } else {
     s0+=62536.0;
     s1+=155.0;
    }
   } else {
    if(i24<0.0009256517514586449){
     s0+=2724.0;
     s1+=2772.0;
    } else {
     s0+=27923.0;
     s1+=1139.0;
    }
   }
  } else {
   if(i58<0.002527278382331133){
    if(i50<0.049291811883449554){
     s0+=66.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i44<1.6811659336090088){
     s0+=36.0;
     s1+=360.0;
    } else {
     s0+=24.0;
    }
   }
  }
 } else {
  if(i30<1.1025036573410034){
   s1+=353.0;
  } else {
   if(i28<0.023384617641568184){
    if(i9<1.0145468711853027){
     s0+=744.0;
     s1+=72.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   } else {
    if(i54<-2.1821208520123037e-06){
     s0+=30.0;
     s1+=593.0;
    } else {
     s0+=59.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007039118208922446){
  if(i3<6.216764450073242e-05){
   if(i38<0.03153620660305023){
    if(i16<0.00028176925843581557){
     s0+=239.0;
     s1+=329.0;
    } else {
     s0+=1270.0;
     s1+=34.0;
    }
   } else {
    if(i46<-0.00024962794850580394){
     s0+=241.0;
     s1+=1510.0;
    } else {
     s0+=810.0;
     s1+=430.0;
    }
   }
  } else {
   if(i39<-0.00018281370284967124){
    s0+=48.0;
   } else {
    if(i7<0.004827394150197506){
     s0+=190.0;
     s1+=1367.0;
    } else {
     s0+=121.0;
     s1+=14927.0;
    }
   }
  }
 } else {
  if(i32<0.015238100662827492){
   s0+=3106.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i10<1.0154218673706055){
 if(i7<0.013990690931677818){
  if(i5<1.245737075805664e-05){
   if(i29<0.0010683477157726884){
    if(i2<0.9993958473205566){
     s0+=16916.0;
     s1+=227.0;
    } else {
     s0+=12937.0;
     s1+=2044.0;
    }
   } else {
    if(i19<0.23653894662857056){
     s0+=74007.0;
     s1+=609.0;
    } else {
     s0+=54.0;
     s1+=65.0;
    }
   }
  } else {
   if(i16<0.00026974722277373075){
    if(i31<1.1162974834442139){
     s0+=356.0;
     s1+=2374.0;
    } else {
     s0+=3214.0;
     s1+=1146.0;
    }
   } else {
    if(i7<0.007368982769548893){
     s0+=6578.0;
     s1+=107.0;
    } else {
     s0+=622.0;
     s1+=496.0;
    }
   }
  }
 } else {
  if(i26<0.04109334945678711){
   if(i72<-0.1187877357006073){
    if(i5<5.8531761169433594e-05){
     s0+=82.0;
     s1+=76.0;
    } else {
     s0+=3.0;
     s1+=52.0;
    }
   } else {
    if(i22<-0.00027436017990112305){
     s0+=764.0;
     s1+=32.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i11<0.9392516613006592){
    if(i31<1.5508465766906738){
     s0+=118.0;
     s1+=4.0;
    } else {
     s0+=35.0;
     s1+=140.0;
    }
   } else {
    if(i40<0.000935570802539587){
     s0+=3.0;
    } else {
     s0+=29.0;
     s1+=2924.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013814725680276752){
  if(i4<1.0111653804779053){
   if(i40<0.0007121249218471348){
    s1+=41.0;
   } else {
    if(i43<4.2915351514238864e-05){
     s0+=472.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   s1+=374.0;
  }
 } else {
  if(i35<0.0017150938510894775){
   if(i3<-3.826618194580078e-05){
    if(i38<0.06978616118431091){
     s0+=105.0;
     s1+=2.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i32<0.0026020631194114685){
     s0+=198.0;
     s1+=1752.0;
    } else {
     s0+=66.0;
     s1+=11739.0;
    }
   }
  } else {
   s0+=45.0;
  }
 }
}
if(i8<1.0135951042175293){
 if(i3<6.407499313354492e-05){
  if(i1<-9.148754179477692e-05){
   if(i27<0.9019755125045776){
    if(i28<0.05608603358268738){
     s0+=531.0;
     s1+=22.0;
    } else {
     s0+=103.0;
     s1+=213.0;
    }
   } else {
    if(i23<1.046175241470337){
     s0+=97.0;
     s1+=10.0;
    } else {
     s0+=79.0;
     s1+=1198.0;
    }
   }
  } else {
   if(i24<0.0008910034666769207){
    if(i26<0.05988207459449768){
     s0+=30165.0;
     s1+=1856.0;
    } else {
     s0+=1861.0;
     s1+=1522.0;
    }
   } else {
    if(i63<0.0023227273486554623){
     s0+=75416.0;
     s1+=755.0;
    } else {
     s0+=5227.0;
     s1+=841.0;
    }
   }
  }
 } else {
  if(i38<0.02174375019967556){
   if(i58<0.0007667532190680504){
    if(i38<0.004972237162292004){
     s0+=46.0;
     s1+=85.0;
    } else {
     s0+=20.0;
     s1+=654.0;
    }
   } else {
    if(i7<0.005349109880626202){
     s0+=1305.0;
     s1+=19.0;
    } else {
     s0+=90.0;
     s1+=120.0;
    }
   }
  } else {
   if(i30<1.1694390773773193){
    if(i40<0.0011901464313268661){
     s0+=1.0;
     s1+=103.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i12<0.09436097741127014){
     s0+=83.0;
     s1+=364.0;
    } else {
     s0+=10.0;
     s1+=1960.0;
    }
   }
  }
 }
} else {
 if(i39<-1.1194636499567423e-05){
  if(i24<0.00243267766200006){
   if(i16<0.00027266889810562134){
    if(i53<0.9970804452896118){
     s0+=1.0;
    } else {
     s1+=1920.0;
    }
   } else {
    s0+=635.0;
   }
  } else {
   if(i60<1.0056723356246948){
    if(i19<0.0615805983543396){
     s0+=41.0;
     s1+=43.0;
    } else {
     s0+=109.0;
     s1+=12397.0;
    }
   } else {
    if(i4<1.0042059421539307){
     s0+=124.0;
     s1+=39.0;
    } else {
     s0+=13.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i7<0.006143288686871529){
   s0+=302.0;
  } else {
   s1+=13.0;
  }
 }
}
if(i12<0.18751028180122375){
 if(i6<0.0005188584327697754){
  if(i6<0.00022238492965698242){
   if(i29<0.0010682829888537526){
    if(i30<1.0577976703643799){
     s0+=17003.0;
     s1+=6.0;
    } else {
     s0+=12611.0;
     s1+=1781.0;
    }
   } else {
    if(i44<1.122455358505249){
     s0+=63805.0;
     s1+=148.0;
    } else {
     s0+=5891.0;
     s1+=402.0;
    }
   }
  } else {
   if(i7<0.00410185381770134){
    if(i55<0.00020445954578462988){
     s0+=7281.0;
     s1+=49.0;
    } else {
     s0+=362.0;
     s1+=114.0;
    }
   } else {
    if(i33<0.0011922339908778667){
     s0+=102.0;
     s1+=1247.0;
    } else {
     s0+=1125.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i46<-0.00021953052782919258){
   if(i26<0.06093388795852661){
    if(i51<9.49607328948332e-06){
     s0+=24.0;
     s1+=155.0;
    } else {
     s0+=483.0;
     s1+=145.0;
    }
   } else {
    if(i2<1.001227617263794){
     s0+=107.0;
     s1+=6.0;
    } else {
     s0+=696.0;
     s1+=4428.0;
    }
   }
  } else {
   if(i0<0.0018033385276794434){
    if(i43<-2.835290797520429e-05){
     s0+=4.0;
     s1+=134.0;
    } else {
     s0+=5894.0;
     s1+=1244.0;
    }
   } else {
    if(i49<-6.274260158534162e-06){
     s0+=270.0;
    } else {
     s0+=9.0;
     s1+=1280.0;
    }
   }
  }
 }
} else {
 if(i34<1.1725034713745117){
  if(i18<0.00242799986153841){
   if(i15<1.0172483921051025){
    if(i32<0.0021632532589137554){
     s0+=409.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    if(i29<0.001767341629602015){
     s0+=20.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i28<0.018648050725460052){
    s0+=15.0;
   } else {
    s1+=37.0;
   }
  }
 } else {
  if(i24<0.00256150308996439){
   if(i53<1.002307653427124){
    if(i71<-7.217851134555531e-07){
     s1+=2.0;
    } else {
     s0+=111.0;
     s1+=2.0;
    }
   } else {
    if(i46<-0.00030026197782717645){
     s1+=34.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i25<0.9970105290412903){
    if(i31<1.4242253303527832){
     s0+=100.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=201.0;
    }
   } else {
    if(i1<-3.7649093428626657e-05){
     s0+=11.0;
     s1+=12485.0;
    } else {
     s0+=74.0;
     s1+=217.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i5<1.6391277313232422e-05){
  if(i24<0.0008798039052635431){
   if(i34<1.05497145652771){
    if(i55<0.00011345017264829949){
     s0+=15940.0;
     s1+=23.0;
    } else {
     s0+=4459.0;
     s1+=133.0;
    }
   } else {
    if(i18<0.001494662486948073){
     s0+=9391.0;
     s1+=347.0;
    } else {
     s0+=398.0;
     s1+=2065.0;
    }
   }
  } else {
   if(i7<0.017224851995706558){
    if(i19<0.23059505224227905){
     s0+=76658.0;
     s1+=687.0;
    } else {
     s0+=84.0;
     s1+=112.0;
    }
   } else {
    if(i21<-0.0045416951179504395){
     s0+=174.0;
     s1+=81.0;
    } else {
     s0+=1.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i57<0.04364871233701706){
   if(i35<0.0004468560218811035){
    if(i2<1.0022692680358887){
     s0+=1896.0;
     s1+=344.0;
    } else {
     s0+=164.0;
     s1+=1013.0;
    }
   } else {
    if(i51<-1.4137323887553066e-05){
     s0+=81.0;
     s1+=216.0;
    } else {
     s0+=4308.0;
     s1+=102.0;
    }
   }
  } else {
   if(i50<0.04329922795295715){
    if(i51<1.8898117559729144e-05){
     s0+=286.0;
     s1+=891.0;
    } else {
     s0+=957.0;
     s1+=306.0;
    }
   } else {
    if(i4<0.9998459815979004){
     s0+=527.0;
     s1+=203.0;
    } else {
     s0+=111.0;
     s1+=2922.0;
    }
   }
  }
 }
} else {
 if(i8<1.0200928449630737){
  if(i16<0.0006988890236243606){
   if(i6<0.0003167390823364258){
    if(i11<1.0082533359527588){
     s0+=28.0;
     s1+=53.0;
    } else {
     s0+=150.0;
     s1+=12.0;
    }
   } else {
    if(i49<-4.475723017094424e-06){
     s0+=91.0;
     s1+=40.0;
    } else {
     s0+=126.0;
     s1+=1828.0;
    }
   }
  } else {
   s0+=543.0;
  }
 } else {
  if(i25<0.9986214637756348){
   if(i0<0.0002719759941101074){
    if(i12<0.2354530394077301){
     s0+=110.0;
     s1+=18.0;
    } else {
     s1+=32.0;
    }
   } else {
    s1+=99.0;
   }
  } else {
   if(i16<0.000825504946988076){
    if(i39<-9.295117706642486e-06){
     s0+=76.0;
     s1+=12531.0;
    } else {
     s0+=29.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
}
if(i4<1.0038622617721558){
 if(i19<0.2074921429157257){
  if(i35<8.612871170043945e-05){
   if(i33<0.0006158249452710152){
    if(i44<1.023176908493042){
     s0+=3113.0;
     s1+=88.0;
    } else {
     s0+=55937.0;
     s1+=40.0;
    }
   } else {
    if(i2<0.9994627237319946){
     s0+=17373.0;
     s1+=180.0;
    } else {
     s0+=2491.0;
     s1+=682.0;
    }
   }
  } else {
   if(i50<0.02007480338215828){
    if(i1<-4.544451803667471e-05){
     s0+=907.0;
     s1+=440.0;
    } else {
     s0+=22009.0;
     s1+=1175.0;
    }
   } else {
    if(i37<0.0010660311672836542){
     s0+=56.0;
     s1+=1033.0;
    } else {
     s0+=9900.0;
     s1+=1918.0;
    }
   }
  }
 } else {
  if(i7<0.00603043008595705){
   if(i7<0.003968958277255297){
    if(i17<1.0012900829315186){
     s0+=193.0;
    } else {
     s0+=40.0;
     s1+=7.0;
    }
   } else {
    if(i3<1.5139579772949219e-05){
     s0+=50.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i18<0.0017363924998790026){
    s0+=3.0;
   } else {
    if(i2<0.994681715965271){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=1115.0;
    }
   }
  }
 }
} else {
 if(i57<0.03406607359647751){
  if(i7<0.004010985139757395){
   if(i25<1.0107808113098145){
    if(i29<0.0007409324171021581){
     s0+=643.0;
     s1+=348.0;
    } else {
     s0+=2852.0;
     s1+=12.0;
    }
   } else {
    if(i0<0.0017685294151306152){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=320.0;
    }
   }
  } else {
   if(i71<2.1110515717737144e-06){
    if(i9<1.0133581161499023){
     s0+=214.0;
     s1+=1065.0;
    } else {
     s1+=1958.0;
    }
   } else {
    s0+=68.0;
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i35<0.0005242228507995605){
    if(i49<-3.654928605101304e-06){
     s0+=13.0;
    } else {
     s0+=10.0;
     s1+=689.0;
    }
   } else {
    if(i13<0.9542452692985535){
     s1+=4.0;
    } else {
     s0+=297.0;
    }
   }
  } else {
   if(i19<0.07556289434432983){
    if(i13<1.0063416957855225){
     s0+=35.0;
     s1+=282.0;
    } else {
     s0+=64.0;
     s1+=27.0;
    }
   } else {
    if(i19<0.12017664313316345){
     s0+=43.0;
     s1+=616.0;
    } else {
     s0+=17.0;
     s1+=12433.0;
    }
   }
  }
 }
}
if(i1<-9.594250877853483e-05){
 if(i11<0.9494333267211914){
  if(i45<0.047240614891052246){
   if(i33<0.0031964934896677732){
    if(i19<0.08632653951644897){
     s0+=563.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i38<0.06024444103240967){
     s0+=7.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  } else {
   if(i11<0.9245967268943787){
    if(i26<0.209114670753479){
     s0+=23.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i5<2.3365020751953125e-05){
     s1+=55.0;
    } else {
     s0+=13.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i24<0.0023143193684518337){
   if(i21<0.002208411693572998){
    if(i11<1.0188841819763184){
     s0+=249.0;
    } else {
     s0+=4.0;
     s1+=43.0;
    }
   } else {
    if(i2<1.0022863149642944){
     s0+=12.0;
    } else {
     s1+=713.0;
    }
   }
  } else {
   if(i10<0.9394705891609192){
    if(i26<0.018788456916809082){
     s0+=48.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=67.0;
    }
   } else {
    if(i34<1.1525202989578247){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=58.0;
     s1+=14725.0;
    }
   }
  }
 }
} else {
 if(i4<1.0034375190734863){
  if(i19<0.2230074107646942){
   if(i34<1.0903575420379639){
    if(i23<1.0383106470108032){
     s0+=26088.0;
     s1+=1546.0;
    } else {
     s0+=2425.0;
     s1+=1367.0;
    }
   } else {
    if(i25<1.0052311420440674){
     s0+=81572.0;
     s1+=1479.0;
    } else {
     s0+=329.0;
     s1+=196.0;
    }
   }
  } else {
   if(i18<0.0015677283518016338){
    if(i1<-4.271764191798866e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=95.0;
    }
   } else {
    if(i26<0.27508291602134705){
     s0+=35.0;
     s1+=134.0;
    } else {
     s0+=1.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i10<1.017477035522461){
   if(i18<0.0018953558756038547){
    if(i24<0.0009706164710223675){
     s0+=641.0;
     s1+=399.0;
    } else {
     s0+=2905.0;
     s1+=17.0;
    }
   } else {
    if(i66<0.0003490978851914406){
     s0+=281.0;
     s1+=1129.0;
    } else {
     s0+=942.0;
     s1+=971.0;
    }
   }
  } else {
   if(i46<-0.0002849907614290714){
    if(i43<2.931280505436007e-05){
     s0+=11.0;
     s1+=884.0;
    } else {
     s0+=31.0;
     s1+=253.0;
    }
   } else {
    if(i63<0.0005260752514004707){
     s1+=114.0;
    } else {
     s0+=141.0;
     s1+=30.0;
    }
   }
  }
 }
}
if(i6<0.000570833683013916){
 if(i18<0.0017414051108062267){
  if(i33<0.0006200698553584516){
   if(i29<0.0019064306979998946){
    if(i30<1.0776758193969727){
     s0+=17836.0;
     s1+=144.0;
    } else {
     s0+=51844.0;
    }
   } else {
    if(i3<-1.913309097290039e-05){
     s0+=3823.0;
     s1+=2.0;
    } else {
     s0+=727.0;
     s1+=103.0;
    }
   }
  } else {
   if(i37<0.0003151227138005197){
    if(i28<0.005085094831883907){
     s0+=802.0;
     s1+=61.0;
    } else {
     s0+=22.0;
     s1+=407.0;
    }
   } else {
    if(i6<-4.470348358154297e-07){
     s0+=12686.0;
     s1+=50.0;
    } else {
     s0+=1974.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i4<0.9985008239746094){
   if(i58<0.013264253735542297){
    if(i24<0.0009957578731700778){
     s0+=566.0;
     s1+=269.0;
    } else {
     s0+=16144.0;
     s1+=341.0;
    }
   } else {
    if(i26<0.09907349944114685){
     s0+=472.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=254.0;
    }
   }
  } else {
   if(i28<0.010181293822824955){
    if(i4<1.002659559249878){
     s0+=2303.0;
     s1+=255.0;
    } else {
     s0+=89.0;
     s1+=154.0;
    }
   } else {
    if(i35<0.00040602684020996094){
     s0+=177.0;
     s1+=2556.0;
    } else {
     s0+=491.0;
     s1+=200.0;
    }
   }
  }
 }
} else {
 if(i1<-7.428437675116584e-05){
  if(i22<-0.0005429685115814209){
   if(i74<0.0451064258813858){
    if(i45<0.043314963579177856){
     s0+=251.0;
     s1+=18.0;
    } else {
     s0+=43.0;
     s1+=97.0;
    }
   } else {
    if(i23<1.08799409866333){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=68.0;
    }
   }
  } else {
   if(i30<1.162848949432373){
    if(i40<0.000912336865440011){
     s1+=1224.0;
    } else {
     s0+=402.0;
     s1+=9.0;
    }
   } else {
    if(i15<0.9140982031822205){
     s0+=64.0;
     s1+=107.0;
    } else {
     s0+=169.0;
     s1+=14519.0;
    }
   }
  }
 } else {
  if(i51<-1.241503377968911e-05){
   if(i52<0.9998573064804077){
    s0+=60.0;
   } else {
    if(i16<0.0009006229229271412){
     s1+=734.0;
    } else {
     s0+=58.0;
    }
   }
  } else {
   if(i28<0.009666124358773232){
    if(i16<0.00022073971922509372){
     s0+=191.0;
     s1+=657.0;
    } else {
     s0+=4407.0;
     s1+=13.0;
    }
   } else {
    if(i7<0.0047580646350979805){
     s0+=480.0;
     s1+=30.0;
    } else {
     s0+=614.0;
     s1+=1640.0;
    }
   }
  }
 }
}
if(i2<1.0026230812072754){
 if(i12<0.23129135370254517){
  if(i35<9.113550186157227e-05){
   if(i34<1.0905301570892334){
    if(i60<1.0004031658172607){
     s0+=17865.0;
     s1+=168.0;
    } else {
     s0+=5442.0;
     s1+=645.0;
    }
   } else {
    if(i6<0.0005106329917907715){
     s0+=56294.0;
     s1+=199.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i18<0.001496391836553812){
    if(i32<0.001829029992222786){
     s0+=15583.0;
     s1+=64.0;
    } else {
     s0+=1530.0;
     s1+=148.0;
    }
   } else {
    if(i25<0.9983848333358765){
     s0+=7538.0;
     s1+=309.0;
    } else {
     s0+=6181.0;
     s1+=3307.0;
    }
   }
  }
 } else {
  if(i30<1.6811659336090088){
   if(i54<-2.9510872536775423e-06){
    if(i7<0.004618343431502581){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=681.0;
    }
   } else {
    s0+=51.0;
   }
  } else {
   s0+=39.0;
  }
 }
} else {
 if(i12<0.15700870752334595){
  if(i9<1.0144740343093872){
   if(i3<7.516145706176758e-05){
    if(i56<1.00242018699646){
     s0+=615.0;
     s1+=702.0;
    } else {
     s0+=3753.0;
     s1+=786.0;
    }
   } else {
    if(i32<0.0010309448698535562){
     s0+=2.0;
     s1+=1001.0;
    } else {
     s0+=1109.0;
     s1+=830.0;
    }
   }
  } else {
   if(i22<0.00025725364685058594){
    if(i36<1.1199393272399902){
     s0+=50.0;
     s1+=17.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i71<5.033776324125938e-05){
     s0+=5.0;
     s1+=2043.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i37<0.001954779028892517){
   s0+=272.0;
  } else {
   if(i24<0.0025058831088244915){
    if(i16<0.00020896307250950485){
     s0+=16.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i51<3.334434222779237e-05){
     s0+=25.0;
     s1+=12657.0;
    } else {
     s0+=73.0;
     s1+=679.0;
    }
   }
  }
 }
}
if(i8<1.0136470794677734){
 if(i18<0.001837889663875103){
  if(i25<1.011193037033081){
   if(i51<-1.1968717444688082e-05){
    if(i29<0.0008301942143589258){
     s1+=105.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i55<0.00017564227164257318){
     s0+=78388.0;
     s1+=403.0;
    } else {
     s0+=14989.0;
     s1+=791.0;
    }
   }
  } else {
   if(i35<0.0008982419967651367){
    s1+=219.0;
   } else {
    s0+=18.0;
   }
  }
 } else {
  if(i5<1.9669532775878906e-06){
   if(i24<0.00030361308017745614){
    s1+=122.0;
   } else {
    if(i58<0.035999104380607605){
     s0+=14374.0;
     s1+=462.0;
    } else {
     s1+=66.0;
    }
   }
  } else {
   if(i7<0.0040141623467206955){
    if(i32<0.0007136616623029113){
     s0+=1315.0;
     s1+=219.0;
    } else {
     s0+=2060.0;
     s1+=19.0;
    }
   } else {
    if(i12<0.029717594385147095){
     s0+=1878.0;
     s1+=522.0;
    } else {
     s0+=2288.0;
     s1+=6689.0;
    }
   }
  }
 }
} else {
 if(i22<0.0002785325050354004){
  if(i16<0.0007100760703906417){
   if(i36<1.598376750946045){
    if(i28<0.02441040240228176){
     s0+=373.0;
     s1+=868.0;
    } else {
     s0+=121.0;
     s1+=2878.0;
    }
   } else {
    if(i50<0.11282609403133392){
     s0+=154.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   s0+=502.0;
  }
 } else {
  if(i16<0.0009376192465424538){
   if(i47<7.593631744384766e-05){
    if(i65<0.003754665609449148){
     s0+=2.0;
     s1+=70.0;
    } else {
     s1+=10814.0;
    }
   } else {
    s0+=5.0;
   }
  } else {
   s0+=46.0;
  }
 }
}
if(i8<1.0136113166809082){
 if(i2<1.0026252269744873){
  if(i65<0.49841874837875366){
   if(i14<1.012237548828125){
    if(i57<0.03230297192931175){
     s0+=83878.0;
     s1+=1979.0;
    } else {
     s0+=23874.0;
     s1+=1953.0;
    }
   } else {
    if(i63<0.0005413911421783268){
     s0+=158.0;
     s1+=345.0;
    } else {
     s0+=1711.0;
     s1+=195.0;
    }
   }
  } else {
   if(i11<0.9333347082138062){
    if(i63<0.0404970720410347){
     s0+=70.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=236.0;
   }
  }
 } else {
  if(i7<0.004409357905387878){
   if(i60<1.0026371479034424){
    if(i64<-6.860313987999689e-06){
     s0+=30.0;
     s1+=174.0;
    } else {
     s0+=1083.0;
     s1+=324.0;
    }
   } else {
    if(i21<0.0023201704025268555){
     s0+=2772.0;
     s1+=5.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i45<0.08364927768707275){
    if(i4<1.0012340545654297){
     s0+=822.0;
     s1+=200.0;
    } else {
     s0+=321.0;
     s1+=1507.0;
    }
   } else {
    if(i38<0.04195921868085861){
     s0+=141.0;
     s1+=319.0;
    } else {
     s0+=115.0;
     s1+=2601.0;
    }
   }
  }
 }
} else {
 if(i5<9.149312973022461e-06){
  if(i24<0.0025773493107408285){
   if(i33<0.001102581387385726){
    s0+=274.0;
   } else {
    if(i34<1.1541939973831177){
     s0+=23.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i38<0.04774542152881622){
    if(i0<-0.00040411949157714844){
     s0+=44.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i57<0.04770611226558685){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=134.0;
    }
   }
  }
 } else {
  if(i49<-7.632166671101004e-06){
   s0+=171.0;
  } else {
   if(i31<1.1843671798706055){
    if(i34<1.1209661960601807){
     s0+=68.0;
     s1+=1905.0;
    } else {
     s0+=419.0;
    }
   } else {
    if(i31<1.7041046619415283){
     s0+=242.0;
     s1+=12703.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
}
if(i58<0.002105000428855419){
 if(i8<1.0136241912841797){
  if(i22<0.00016421079635620117){
   if(i18<0.001741562387906015){
    if(i59<-0.00064849853515625){
     s0+=14053.0;
     s1+=505.0;
    } else {
     s0+=74837.0;
     s1+=356.0;
    }
   } else {
    if(i43<9.595180745236576e-05){
     s0+=6281.0;
     s1+=2906.0;
    } else {
     s0+=8686.0;
     s1+=189.0;
    }
   }
  } else {
   if(i34<1.0912797451019287){
    if(i4<1.001480221748352){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=668.0;
    }
   } else {
    if(i4<1.0102558135986328){
     s0+=1502.0;
     s1+=130.0;
    } else {
     s0+=2.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i52<0.9997285008430481){
   s0+=300.0;
  } else {
   if(i0<0.0018053650856018066){
    if(i16<0.0003215979668311775){
     s0+=130.0;
     s1+=1660.0;
    } else {
     s0+=537.0;
     s1+=87.0;
    }
   } else {
    if(i16<0.0009081396274268627){
     s1+=4413.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i3<1.1026859283447266e-05){
  if(i45<0.16222721338272095){
   if(i23<1.1135536432266235){
    if(i34<1.0887749195098877){
     s0+=156.0;
     s1+=87.0;
    } else {
     s0+=7596.0;
     s1+=336.0;
    }
   } else {
    if(i7<0.006925652269273996){
     s0+=1206.0;
     s1+=103.0;
    } else {
     s0+=176.0;
     s1+=429.0;
    }
   }
  } else {
   if(i24<0.0025618872605264187){
    if(i4<1.0002188682556152){
     s0+=200.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=26.0;
    }
   } else {
    if(i20<1.1672183275222778){
     s0+=167.0;
     s1+=346.0;
    } else {
     s1+=292.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   if(i65<0.04718799144029617){
    s0+=154.0;
   } else {
    if(i16<0.00012647639960050583){
     s0+=7.0;
     s1+=36.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i21<-0.0013767480850219727){
    if(i28<0.03476506471633911){
     s0+=309.0;
     s1+=205.0;
    } else {
     s0+=67.0;
     s1+=1132.0;
    }
   } else {
    if(i33<0.0001287994091399014){
     s0+=38.0;
     s1+=34.0;
    } else {
     s0+=40.0;
     s1+=10089.0;
    }
   }
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i9<0.9732885360717773){
  if(i12<0.07167559862136841){
   if(i72<-0.13044872879981995){
    if(i47<6.9141387939453125e-06){
     s0+=41.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=27.0;
    }
   } else {
    if(i28<0.0611787848174572){
     s0+=490.0;
    } else {
     s0+=44.0;
     s1+=13.0;
    }
   }
  } else {
   if(i8<0.9138983488082886){
    if(i67<0.02507505752146244){
     s0+=20.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i23<1.005332589149475){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i47<2.8192996978759766e-05){
   if(i71<5.857271844433853e-06){
    if(i16<0.001722638146020472){
     s0+=95.0;
     s1+=15156.0;
    } else {
     s0+=51.0;
    }
   } else {
    s0+=96.0;
   }
  } else {
   if(i44<1.1546776294708252){
    s0+=107.0;
   } else {
    s1+=23.0;
   }
  }
 }
} else {
 if(i3<6.574392318725586e-05){
  if(i12<0.2064599096775055){
   if(i11<1.010044813156128){
    if(i6<0.00024634599685668945){
     s0+=100228.0;
     s1+=2314.0;
    } else {
     s0+=11685.0;
     s1+=2170.0;
    }
   } else {
    if(i7<0.00447289040312171){
     s0+=1610.0;
     s1+=104.0;
    } else {
     s0+=200.0;
     s1+=876.0;
    }
   }
  } else {
   if(i50<0.04525642469525337){
    if(i24<0.0026759281754493713){
     s0+=152.0;
     s1+=16.0;
    } else {
     s0+=42.0;
     s1+=84.0;
    }
   } else {
    if(i41<1.184133529663086){
     s0+=44.0;
     s1+=440.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i47<1.245737075805664e-05){
   if(i34<1.1209661960601807){
    if(i29<0.0012980583123862743){
     s0+=8.0;
     s1+=1642.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i24<0.002163426484912634){
     s0+=295.0;
    } else {
     s0+=44.0;
     s1+=761.0;
    }
   }
  } else {
   if(i37<0.00197957968339324){
    if(i68<-0.0014703294727951288){
     s1+=3.0;
    } else {
     s0+=1386.0;
     s1+=29.0;
    }
   } else {
    if(i16<0.00041693297680467367){
     s0+=6.0;
     s1+=289.0;
    } else {
     s0+=27.0;
     s1+=57.0;
    }
   }
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i0<-0.00010800361633300781){
  if(i23<1.0765080451965332){
   if(i13<0.952608585357666){
    if(i26<0.10068094730377197){
     s0+=426.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i45<0.11859831213951111){
     s0+=27.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   }
  } else {
   if(i45<0.0416848361492157){
    if(i18<0.006026954390108585){
     s0+=39.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=55.0;
    }
   } else {
    if(i49<-2.3008442440186627e-05){
     s0+=4.0;
    } else {
     s0+=13.0;
     s1+=432.0;
    }
   }
  }
 } else {
  if(i49<-6.607598152186256e-06){
   s0+=254.0;
  } else {
   if(i9<0.9737251996994019){
    if(i45<0.07265248894691467){
     s0+=144.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=29.0;
    }
   } else {
    if(i10<0.93534255027771){
     s0+=22.0;
     s1+=45.0;
    } else {
     s0+=55.0;
     s1+=14882.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003960728645324707){
  if(i7<0.003448149189352989){
   if(i37<0.0005491330521181226){
    if(i18<0.0012453185627236962){
     s0+=22297.0;
     s1+=204.0;
    } else {
     s0+=853.0;
     s1+=487.0;
    }
   } else {
    if(i62<0.0009071955573745072){
     s0+=54972.0;
     s1+=91.0;
    } else {
     s0+=4589.0;
     s1+=93.0;
    }
   }
  } else {
   if(i29<0.001190647017210722){
    if(i31<1.05894136428833){
     s0+=2831.0;
    } else {
     s0+=144.0;
     s1+=1753.0;
    }
   } else {
    if(i19<0.2027762234210968){
     s0+=20365.0;
     s1+=536.0;
    } else {
     s0+=101.0;
     s1+=182.0;
    }
   }
  }
 } else {
  if(i16<0.00034962600329890847){
   if(i24<0.0009784870781004429){
    s1+=2940.0;
   } else {
    if(i28<0.014231041073799133){
     s0+=2453.0;
     s1+=275.0;
    } else {
     s0+=681.0;
     s1+=1910.0;
    }
   }
  } else {
   if(i23<1.17277193069458){
    if(i7<0.012229680083692074){
     s0+=5955.0;
     s1+=42.0;
    } else {
     s0+=258.0;
     s1+=191.0;
    }
   } else {
    s1+=143.0;
   }
  }
 }
}
if(i10<1.0146512985229492){
 if(i53<1.0070624351501465){
  if(i18<0.0017793249571695924){
   if(i33<0.0005745262606069446){
    if(i4<1.0081431865692139){
     s0+=72223.0;
     s1+=195.0;
    } else {
     s0+=8.0;
     s1+=35.0;
    }
   } else {
    if(i37<0.0003981365589424968){
     s0+=2219.0;
     s1+=696.0;
    } else {
     s0+=18285.0;
     s1+=226.0;
    }
   }
  } else {
   if(i17<0.9949932098388672){
    if(i7<0.017807697877287865){
     s0+=14807.0;
     s1+=563.0;
    } else {
     s0+=125.0;
     s1+=289.0;
    }
   } else {
    if(i56<1.0000461339950562){
     s0+=2989.0;
     s1+=134.0;
    } else {
     s0+=3142.0;
     s1+=5027.0;
    }
   }
  }
 } else {
  if(i22<-0.0005303621292114258){
   if(i2<1.0068836212158203){
    if(i45<0.055703818798065186){
     s0+=863.0;
     s1+=68.0;
    } else {
     s0+=178.0;
     s1+=191.0;
    }
   } else {
    if(i17<0.9791984558105469){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=118.0;
    }
   }
  } else {
   if(i35<0.0016646385192871094){
    if(i3<7.992982864379883e-05){
     s0+=433.0;
     s1+=643.0;
    } else {
     s0+=67.0;
     s1+=1985.0;
    }
   } else {
    s0+=144.0;
   }
  }
 }
} else {
 if(i18<0.0013813039986416698){
  if(i43<-2.5002034817589447e-05){
   if(i4<1.0094479322433472){
    if(i29<0.0007874354487285018){
     s1+=1.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i6<0.0014042854309082031){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=450.0;
    }
   }
  } else {
   if(i39<-5.003899059374817e-05){
    s1+=4.0;
   } else {
    if(i32<0.0006812481442466378){
     s1+=1.0;
    } else {
     s0+=569.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i3<-3.832578659057617e-05){
   if(i35<0.0003885626792907715){
    s1+=20.0;
   } else {
    if(i2<1.0050089359283447){
     s0+=94.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i52<0.9983373284339905){
    s0+=97.0;
   } else {
    if(i36<1.1672112941741943){
     s0+=288.0;
     s1+=1967.0;
    } else {
     s0+=15.0;
     s1+=11654.0;
    }
   }
  }
 }
}
if(i1<-9.090294770430773e-05){
 if(i20<1.0234894752502441){
  if(i17<1.0084595680236816){
   if(i35<0.0006494522094726562){
    if(i19<0.11390116810798645){
     s0+=673.0;
     s1+=29.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i13<0.879997730255127){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=22.0;
     s1+=44.0;
    }
   }
  } else {
   s1+=75.0;
  }
 } else {
  if(i8<1.0144509077072144){
   if(i29<0.0024061729200184345){
    if(i32<0.000803123228251934){
     s1+=123.0;
    } else {
     s0+=271.0;
    }
   } else {
    if(i1<-0.00010720732825575396){
     s0+=59.0;
     s1+=2943.0;
    } else {
     s0+=96.0;
     s1+=368.0;
    }
   }
  } else {
   if(i51<0.00011632418318185955){
    if(i16<0.000938311917707324){
     s0+=5.0;
     s1+=12527.0;
    } else {
     s0+=25.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i8<1.0130107402801514){
  if(i2<1.002340316772461){
   if(i34<1.0903575420379639){
    if(i10<1.0074224472045898){
     s0+=27970.0;
     s1+=2308.0;
    } else {
     s0+=121.0;
     s1+=444.0;
    }
   } else {
    if(i26<0.23402073979377747){
     s0+=79831.0;
     s1+=998.0;
    } else {
     s0+=83.0;
     s1+=82.0;
    }
   }
  } else {
   if(i29<0.0011359965428709984){
    if(i36<1.0452228784561157){
     s0+=782.0;
    } else {
     s0+=69.0;
     s1+=933.0;
    }
   } else {
    if(i28<0.014242216944694519){
     s0+=3959.0;
     s1+=150.0;
    } else {
     s0+=923.0;
     s1+=1211.0;
    }
   }
  }
 } else {
  if(i35<0.0007235407829284668){
   if(i0<0.00036847591400146484){
    if(i53<1.000024676322937){
     s0+=234.0;
     s1+=1.0;
    } else {
     s0+=174.0;
     s1+=219.0;
    }
   } else {
    if(i35<0.00013643503189086914){
     s0+=67.0;
     s1+=17.0;
    } else {
     s0+=104.0;
     s1+=1945.0;
    }
   }
  } else {
   if(i19<0.22020158171653748){
    if(i44<1.1700975894927979){
     s0+=820.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i7<0.007703372742980719){
     s0+=7.0;
    } else {
     s1+=96.0;
    }
   }
  }
 }
}
if(i4<1.0037140846252441){
 if(i12<0.2009384036064148){
  if(i2<1.0024163722991943){
   if(i41<1.0263583660125732){
    if(i32<0.0010117029305547476){
     s0+=32624.0;
     s1+=2626.0;
    } else {
     s0+=75370.0;
     s1+=1166.0;
    }
   } else {
    if(i54<-5.445543592941249e-06){
     s0+=186.0;
     s1+=244.0;
    } else {
     s0+=783.0;
     s1+=89.0;
    }
   }
  } else {
   if(i44<1.1072397232055664){
    if(i18<0.006917364429682493){
     s0+=1722.0;
     s1+=119.0;
    } else {
     s0+=98.0;
     s1+=51.0;
    }
   } else {
    if(i12<0.046812504529953){
     s0+=509.0;
     s1+=109.0;
    } else {
     s0+=581.0;
     s1+=850.0;
    }
   }
  }
 } else {
  if(i7<0.0063024163246154785){
   if(i1<-6.067214417271316e-05){
    if(i32<0.0019540605135262012){
     s0+=3.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i26<0.21134036779403687){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=298.0;
     s1+=7.0;
    }
   }
  } else {
   if(i39<-5.146685452928068e-06){
    if(i23<1.115551471710205){
     s0+=4.0;
     s1+=76.0;
    } else {
     s0+=3.0;
     s1+=1071.0;
    }
   } else {
    s0+=17.0;
   }
  }
 }
} else {
 if(i37<0.002119396347552538){
  if(i30<1.116804838180542){
   if(i37<0.0002146116748917848){
    s0+=664.0;
   } else {
    if(i63<0.0009967463556677103){
     s0+=8.0;
     s1+=2689.0;
    } else {
     s0+=68.0;
     s1+=77.0;
    }
   }
  } else {
   if(i37<0.0019203734118491411){
    if(i57<0.06358014792203903){
     s0+=3404.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i28<0.012465749867260456){
     s0+=22.0;
    } else {
     s1+=39.0;
    }
   }
  }
 } else {
  if(i3<6.330013275146484e-05){
   if(i28<0.012174252420663834){
    if(i61<0.0027610063552856445){
     s0+=94.0;
     s1+=6.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i58<0.0006526950164698064){
     s0+=15.0;
    } else {
     s0+=47.0;
     s1+=989.0;
    }
   }
  } else {
   if(i33<0.004058134742081165){
    if(i55<0.0031683724373579025){
     s0+=63.0;
     s1+=13876.0;
    } else {
     s0+=20.0;
     s1+=91.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i6<0.0005696415901184082){
 if(i65<0.4807561933994293){
  if(i13<1.0181578397750854){
   if(i38<0.01207716390490532){
    if(i11<0.9924651384353638){
     s0+=910.0;
     s1+=154.0;
    } else {
     s0+=67367.0;
     s1+=634.0;
    }
   } else {
    if(i3<-2.6881694793701172e-05){
     s0+=30583.0;
     s1+=969.0;
    } else {
     s0+=10238.0;
     s1+=2303.0;
    }
   }
  } else {
   if(i1<-3.196890975232236e-05){
    if(i6<-8.890032768249512e-05){
     s0+=95.0;
     s1+=37.0;
    } else {
     s0+=93.0;
     s1+=681.0;
    }
   } else {
    if(i18<0.0030629755929112434){
     s0+=505.0;
     s1+=21.0;
    } else {
     s0+=19.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i28<0.04197690635919571){
   if(i59<-0.006899237632751465){
    s0+=94.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i27<0.7511261701583862){
    s0+=2.0;
   } else {
    s1+=281.0;
   }
  }
 }
} else {
 if(i16<0.000704434234648943){
  if(i19<0.15867704153060913){
   if(i60<1.0031757354736328){
    if(i1<-3.5933011531597e-05){
     s0+=457.0;
     s1+=4095.0;
    } else {
     s0+=401.0;
     s1+=422.0;
    }
   } else {
    if(i28<0.019381962716579437){
     s0+=1541.0;
     s1+=173.0;
    } else {
     s0+=614.0;
     s1+=948.0;
    }
   }
  } else {
   if(i29<0.0025094221346080303){
    if(i41<1.0363173484802246){
     s0+=140.0;
     s1+=11.0;
    } else {
     s0+=7.0;
     s1+=46.0;
    }
   } else {
    if(i4<1.0017192363739014){
     s0+=80.0;
     s1+=279.0;
    } else {
     s0+=22.0;
     s1+=13133.0;
    }
   }
  }
 } else {
  if(i18<0.010328909382224083){
   s0+=3477.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i1<-0.00010638617095537484){
 if(i10<0.938185453414917){
  if(i28<0.061080202460289){
   if(i11<0.9568066596984863){
    if(i74<0.09325004369020462){
     s0+=364.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i31<1.3504220247268677){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i69<0.3918449878692627){
    if(i37<0.013453306630253792){
     s0+=4.0;
     s1+=21.0;
    } else {
     s0+=75.0;
     s1+=15.0;
    }
   } else {
    if(i64<2.0932051484123804e-05){
     s0+=1.0;
     s1+=99.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i47<3.096461296081543e-05){
   if(i64<1.6883990610949695e-05){
    if(i19<0.04129183292388916){
     s0+=51.0;
     s1+=110.0;
    } else {
     s0+=91.0;
     s1+=14673.0;
    }
   } else {
    if(i31<1.39126718044281){
     s0+=58.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i45<0.26685264706611633){
    s0+=87.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i4<1.0035169124603271){
  if(i7<0.003580596763640642){
   if(i33<0.0005216205026954412){
    if(i24<0.0019596852362155914){
     s0+=60781.0;
     s1+=43.0;
    } else {
     s0+=1793.0;
     s1+=83.0;
    }
   } else {
    if(i32<0.0005612062523141503){
     s0+=4317.0;
     s1+=726.0;
    } else {
     s0+=19849.0;
     s1+=185.0;
    }
   }
  } else {
   if(i18<0.0017344036605209112){
    if(i25<1.0028811693191528){
     s0+=11761.0;
     s1+=83.0;
    } else {
     s0+=4.0;
     s1+=41.0;
    }
   } else {
    if(i34<1.0906792879104614){
     s0+=948.0;
     s1+=2078.0;
    } else {
     s0+=11564.0;
     s1+=1914.0;
    }
   }
  }
 } else {
  if(i32<0.0018838124815374613){
   if(i16<0.00023581819550599903){
    if(i24<0.0010383828775957227){
     s0+=15.0;
     s1+=2296.0;
    } else {
     s0+=338.0;
    }
   } else {
    if(i8<1.025230050086975){
     s0+=4119.0;
     s1+=10.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i2<1.0017437934875488){
    s0+=26.0;
   } else {
    if(i44<1.0755698680877686){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=126.0;
     s1+=2049.0;
    }
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i12<0.20763933658599854){
  if(i2<1.0018861293792725){
   if(i30<1.0905578136444092){
    if(i34<1.05497145652771){
     s0+=20823.0;
     s1+=136.0;
    } else {
     s0+=4799.0;
     s1+=2340.0;
    }
   } else {
    if(i1<-0.00012571853585541248){
     s0+=103.0;
     s1+=90.0;
    } else {
     s0+=79826.0;
     s1+=1054.0;
    }
   }
  } else {
   if(i23<1.1673290729522705){
    if(i1<-4.592966433847323e-05){
     s0+=1353.0;
     s1+=1380.0;
    } else {
     s0+=7401.0;
     s1+=820.0;
    }
   } else {
    if(i55<0.0028185416013002396){
     s0+=10.0;
     s1+=367.0;
    } else {
     s0+=21.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i33<0.0007445080555044115){
   if(i60<1.0015668869018555){
    s0+=112.0;
   } else {
    if(i39<-1.606211117177736e-05){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  } else {
   if(i24<0.0021765148267149925){
    s0+=31.0;
   } else {
    if(i69<0.08391892910003662){
     s0+=39.0;
     s1+=120.0;
    } else {
     s0+=28.0;
     s1+=1355.0;
    }
   }
  }
 }
} else {
 if(i7<0.003890079678967595){
  if(i51<-1.2568450983962975e-05){
   if(i24<0.0010901096975430846){
    s1+=579.0;
   } else {
    if(i4<1.0123589038848877){
     s0+=154.0;
    } else {
     s1+=206.0;
    }
   }
  } else {
   if(i30<1.0894038677215576){
    if(i33<0.0010253328364342451){
     s1+=113.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i17<1.0206546783447266){
     s0+=1518.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i49<-6.388305337168276e-06){
   s0+=186.0;
  } else {
   if(i21<-0.002181828022003174){
    if(i7<0.012078484520316124){
     s0+=46.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=324.0;
    }
   } else {
    if(i2<1.0020883083343506){
     s0+=63.0;
     s1+=168.0;
    } else {
     s0+=83.0;
     s1+=14989.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i12<0.19871443510055542){
  if(i33<0.0007199090905487537){
   if(i40<0.001935161417350173){
    if(i31<1.0817922353744507){
     s0+=16288.0;
     s1+=328.0;
    } else {
     s0+=60905.0;
     s1+=64.0;
    }
   } else {
    if(i4<1.0002379417419434){
     s0+=3224.0;
     s1+=2.0;
    } else {
     s0+=376.0;
     s1+=207.0;
    }
   }
  } else {
   if(i3<-3.141164779663086e-05){
    if(i30<1.0912797451019287){
     s0+=724.0;
     s1+=240.0;
    } else {
     s0+=24829.0;
     s1+=529.0;
    }
   } else {
    if(i28<0.00863475538790226){
     s0+=6199.0;
     s1+=585.0;
    } else {
     s0+=1554.0;
     s1+=4395.0;
    }
   }
  }
 } else {
  if(i1<-3.728250885615125e-05){
   if(i28<0.015483607538044453){
    if(i68<-0.0011137237306684256){
     s0+=4.0;
     s1+=17.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i28<0.03343581408262253){
     s0+=5.0;
     s1+=129.0;
    } else {
     s0+=2.0;
     s1+=1350.0;
    }
   }
  } else {
   if(i18<0.002777318935841322){
    if(i23<1.1014058589935303){
     s0+=62.0;
     s1+=4.0;
    } else {
     s0+=255.0;
     s1+=1.0;
    }
   } else {
    if(i63<0.002452770248055458){
     s0+=29.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=135.0;
    }
   }
  }
 }
} else {
 if(i29<0.0024066336918622255){
  if(i32<0.0011884358245879412){
   if(i34<1.0529288053512573){
    s0+=70.0;
   } else {
    if(i22<0.0008248090744018555){
     s0+=10.0;
     s1+=2150.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i58<0.0007908192928880453){
    if(i8<1.0111680030822754){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=200.0;
    }
   } else {
    if(i30<1.185887336730957){
     s0+=1869.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i23<1.0236399173736572){
   if(i25<1.0178983211517334){
    s0+=29.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i26<0.10565772652626038){
    if(i4<1.0071420669555664){
     s0+=78.0;
     s1+=117.0;
    } else {
     s0+=5.0;
     s1+=517.0;
    }
   } else {
    if(i20<0.9416272640228271){
     s0+=3.0;
    } else {
     s0+=9.0;
     s1+=13292.0;
    }
   }
  }
 }
}
if(i6<0.0005691647529602051){
 if(i7<0.003705440554767847){
  if(i40<0.000500502297654748){
   if(i15<0.9949249029159546){
    if(i4<0.9974212050437927){
     s0+=1296.0;
     s1+=28.0;
    } else {
     s0+=591.0;
     s1+=475.0;
    }
   } else {
    if(i31<1.064497947692871){
     s0+=11028.0;
    } else {
     s0+=14726.0;
     s1+=364.0;
    }
   }
  } else {
   if(i40<0.0019511699210852385){
    if(i53<1.0035762786865234){
     s0+=52933.0;
     s1+=58.0;
    } else {
     s0+=522.0;
     s1+=10.0;
    }
   } else {
    if(i17<1.0017411708831787){
     s0+=6129.0;
     s1+=77.0;
    } else {
     s0+=219.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i9<1.0034321546554565){
   if(i24<0.0009911754168570042){
    if(i2<0.9993351697921753){
     s0+=2439.0;
     s1+=38.0;
    } else {
     s0+=168.0;
     s1+=1543.0;
    }
   } else {
    if(i7<0.017762385308742523){
     s0+=19020.0;
     s1+=933.0;
    } else {
     s0+=204.0;
     s1+=331.0;
    }
   }
  } else {
   if(i38<0.009917578659951687){
    if(i34<1.0914093255996704){
     s0+=107.0;
     s1+=180.0;
    } else {
     s0+=195.0;
     s1+=2.0;
    }
   } else {
    if(i54<-3.4439560749888187e-06){
     s0+=61.0;
     s1+=1002.0;
    } else {
     s0+=200.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i28<0.007696944288909435){
  if(i35<0.0005113482475280762){
   if(i2<1.0023822784423828){
    if(i4<1.004443645477295){
     s0+=698.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i59<-0.002211064100265503){
     s0+=73.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=1651.0;
    }
   }
  } else {
   if(i8<1.0206066370010376){
    if(i25<1.0117899179458618){
     s0+=3912.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=74.0;
    }
   } else {
    if(i29<0.002540521090850234){
     s0+=26.0;
    } else {
     s1+=245.0;
    }
   }
  }
 } else {
  if(i22<-0.00023066997528076172){
   if(i44<1.1286907196044922){
    if(i8<0.9793128967285156){
     s0+=113.0;
     s1+=145.0;
    } else {
     s0+=679.0;
     s1+=66.0;
    }
   } else {
    if(i23<1.0858451128005981){
     s0+=265.0;
     s1+=144.0;
    } else {
     s0+=204.0;
     s1+=1130.0;
    }
   }
  } else {
   if(i16<0.00070473353844136){
    if(i1<-6.681359081994742e-05){
     s0+=98.0;
     s1+=14414.0;
    } else {
     s0+=342.0;
     s1+=1326.0;
    }
   } else {
    s0+=238.0;
   }
  }
 }
}
if(i9<1.0100185871124268){
 if(i44<1.1546916961669922){
  if(i1<-8.620828884886578e-05){
   if(i37<0.0023940724786370993){
    if(i16<7.415704749291763e-05){
     s1+=9.0;
    } else {
     s0+=180.0;
    }
   } else {
    if(i2<1.0033471584320068){
     s0+=231.0;
     s1+=109.0;
    } else {
     s0+=78.0;
     s1+=802.0;
    }
   }
  } else {
   if(i33<0.0007108970312401652){
    if(i43<-2.2790103685110807e-05){
     s0+=23.0;
     s1+=67.0;
    } else {
     s0+=79698.0;
     s1+=525.0;
    }
   } else {
    if(i16<0.0002496709057595581){
     s0+=8311.0;
     s1+=4067.0;
    } else {
     s0+=23161.0;
     s1+=703.0;
    }
   }
  }
 } else {
  if(i3<2.205371856689453e-06){
   if(i63<0.011138016358017921){
    if(i28<0.0549311488866806){
     s0+=2230.0;
     s1+=141.0;
    } else {
     s0+=42.0;
     s1+=208.0;
    }
   } else {
    if(i35<0.00016802549362182617){
     s0+=455.0;
     s1+=119.0;
    } else {
     s0+=37.0;
     s1+=291.0;
    }
   }
  } else {
   if(i24<0.0025720952544361353){
    s0+=178.0;
   } else {
    if(i45<0.021971076726913452){
     s0+=113.0;
     s1+=153.0;
    } else {
     s0+=81.0;
     s1+=2699.0;
    }
   }
  }
 }
} else {
 if(i18<0.0017619552090764046){
  if(i25<1.0109972953796387){
   if(i23<1.0648064613342285){
    if(i30<1.1015465259552002){
     s1+=98.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i54<-9.402101568412036e-06){
     s0+=815.0;
    } else {
     s0+=184.0;
     s1+=40.0;
    }
   }
  } else {
   if(i3<0.0001233220100402832){
    if(i51<-1.1980714589299168e-05){
     s1+=1.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i6<0.0013273954391479492){
     s0+=6.0;
     s1+=6.0;
    } else {
     s1+=914.0;
    }
   }
  }
 } else {
  if(i35<0.0015281438827514648){
   if(i8<1.016697645187378){
    if(i52<0.9998089075088501){
     s0+=165.0;
     s1+=27.0;
    } else {
     s0+=170.0;
     s1+=1604.0;
    }
   } else {
    if(i16<0.000952885253354907){
     s0+=20.0;
     s1+=11582.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i31<1.3807299137115479){
    s0+=297.0;
   } else {
    s1+=124.0;
   }
  }
 }
}
if(i13<1.016731858253479){
 if(i25<1.0073620080947876){
  if(i6<0.0003274083137512207){
   if(i34<1.0905030965805054){
    if(i30<1.0577976703643799){
     s0+=17187.0;
     s1+=8.0;
    } else {
     s0+=9285.0;
     s1+=2079.0;
    }
   } else {
    if(i45<0.23153239488601685){
     s0+=77431.0;
     s1+=793.0;
    } else {
     s0+=53.0;
     s1+=136.0;
    }
   }
  } else {
   if(i66<0.0037393709644675255){
    if(i33<0.0007359696319326758){
     s0+=3741.0;
     s1+=85.0;
    } else {
     s0+=5531.0;
     s1+=2597.0;
    }
   } else {
    if(i50<0.07306590676307678){
     s0+=153.0;
     s1+=169.0;
    } else {
     s0+=23.0;
     s1+=621.0;
    }
   }
  }
 } else {
  if(i49<-6.254219442780595e-06){
   if(i37<0.008258751593530178){
    s0+=395.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i16<0.000704434234648943){
    if(i6<0.00042742490768432617){
     s0+=83.0;
     s1+=20.0;
    } else {
     s0+=310.0;
     s1+=3439.0;
    }
   } else {
    s0+=343.0;
   }
  }
 }
} else {
 if(i1<-6.712805043207482e-05){
  if(i28<0.0029993420466780663){
   if(i25<1.0095856189727783){
    if(i58<0.0006842941511422396){
     s1+=18.0;
    } else {
     s0+=68.0;
     s1+=2.0;
    }
   } else {
    if(i71<2.3874767975939903e-06){
     s1+=76.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i15<1.021310567855835){
    if(i56<1.000452995300293){
     s0+=66.0;
     s1+=28.0;
    } else {
     s0+=74.0;
     s1+=958.0;
    }
   } else {
    if(i49<-8.315366358147003e-06){
     s0+=10.0;
    } else {
     s0+=41.0;
     s1+=12138.0;
    }
   }
  }
 } else {
  if(i30<1.0905578136444092){
   if(i72<0.09726214408874512){
    s1+=576.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i39<-9.494156984146684e-06){
    if(i7<0.006288854870945215){
     s0+=891.0;
     s1+=29.0;
    } else {
     s0+=31.0;
     s1+=645.0;
    }
   } else {
    if(i17<0.9853481650352478){
     s0+=6.0;
     s1+=12.0;
    } else {
     s0+=678.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i2<1.002625584602356){
 if(i14<1.018324375152588){
  if(i6<0.000292360782623291){
   if(i45<0.2329743504524231){
    if(i56<0.9997749328613281){
     s0+=46382.0;
     s1+=171.0;
    } else {
     s0+=56337.0;
     s1+=2511.0;
    }
   } else {
    if(i48<1.1597886085510254){
     s0+=18.0;
     s1+=156.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   if(i38<0.014420470222830772){
    if(i1<-4.655577504308894e-05){
     s0+=243.0;
     s1+=199.0;
    } else {
     s0+=5402.0;
     s1+=242.0;
    }
   } else {
    if(i0<-0.0004120469093322754){
     s0+=884.0;
     s1+=86.0;
    } else {
     s0+=657.0;
     s1+=1208.0;
    }
   }
  }
 } else {
  if(i36<1.0905578136444092){
   if(i64<5.528216206585057e-06){
    s1+=483.0;
   } else {
    s0+=5.0;
   }
  } else {
   if(i28<0.027357518672943115){
    if(i56<1.0008301734924316){
     s0+=336.0;
    } else {
     s0+=121.0;
     s1+=66.0;
    }
   } else {
    if(i19<0.09256258606910706){
     s0+=66.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=435.0;
    }
   }
  }
 }
} else {
 if(i28<0.01300989743322134){
  if(i7<0.0026161898858845234){
   if(i25<1.0111953020095825){
    if(i3<0.00012230873107910156){
     s0+=3310.0;
     s1+=26.0;
    } else {
     s0+=170.0;
     s1+=87.0;
    }
   } else {
    if(i8<1.0081884860992432){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=262.0;
    }
   }
  } else {
   if(i4<1.0038068294525146){
    if(i22<5.7816505432128906e-05){
     s0+=621.0;
     s1+=33.0;
    } else {
     s0+=6.0;
     s1+=22.0;
    }
   } else {
    if(i24<0.0010752695379778743){
     s1+=1828.0;
    } else {
     s0+=610.0;
     s1+=1084.0;
    }
   }
  }
 } else {
  if(i61<-0.007394850254058838){
   if(i25<1.0129520893096924){
    if(i74<0.04888498783111572){
     s0+=323.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   } else {
    if(i2<1.0059725046157837){
     s0+=12.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=93.0;
    }
   }
  } else {
   if(i19<0.09303408861160278){
    if(i17<0.9997727870941162){
     s0+=487.0;
     s1+=179.0;
    } else {
     s0+=113.0;
     s1+=568.0;
    }
   } else {
    if(i0<0.0001971721649169922){
     s0+=238.0;
     s1+=522.0;
    } else {
     s0+=119.0;
     s1+=13980.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i2<1.002099871635437){
  if(i33<0.0007188643794506788){
   if(i21<-0.0003794729709625244){
    if(i32<0.00024875105009414256){
     s0+=1709.0;
     s1+=277.0;
    } else {
     s0+=20535.0;
     s1+=34.0;
    }
   } else {
    if(i38<0.022929178550839424){
     s0+=54842.0;
     s1+=61.0;
    } else {
     s0+=973.0;
     s1+=78.0;
    }
   }
  } else {
   if(i0<-0.0005614161491394043){
    if(i20<1.1402966976165771){
     s0+=23576.0;
     s1+=491.0;
    } else {
     s0+=25.0;
     s1+=138.0;
    }
   } else {
    if(i60<1.0003383159637451){
     s0+=4431.0;
     s1+=678.0;
    } else {
     s0+=1726.0;
     s1+=2641.0;
    }
   }
  }
 } else {
  if(i57<0.04584350809454918){
   if(i11<1.0175411701202393){
    if(i40<0.0005825479747727513){
     s0+=1317.0;
     s1+=416.0;
    } else {
     s0+=3596.0;
     s1+=181.0;
    }
   } else {
    if(i7<0.002773050684481859){
     s0+=26.0;
     s1+=7.0;
    } else {
     s1+=191.0;
    }
   }
  } else {
   if(i26<0.10434994101524353){
    if(i58<0.012227881699800491){
     s0+=1460.0;
     s1+=409.0;
    } else {
     s0+=40.0;
     s1+=115.0;
    }
   } else {
    if(i30<1.2347543239593506){
     s0+=339.0;
     s1+=602.0;
    } else {
     s0+=187.0;
     s1+=1582.0;
    }
   }
  }
 }
} else {
 if(i7<0.003915297798812389){
  if(i30<1.116804838180542){
   if(i34<1.0529288053512573){
    s0+=54.0;
   } else {
    if(i24<0.0011369767598807812){
     s1+=622.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i16<0.0002575595863163471){
    if(i29<0.002412785543128848){
     s0+=14.0;
    } else {
     s1+=249.0;
    }
   } else {
    if(i10<1.0260894298553467){
     s0+=1556.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i9<1.0133616924285889){
   if(i34<1.1428577899932861){
    if(i32<0.001179989892989397){
     s0+=1.0;
     s1+=646.0;
    } else {
     s0+=295.0;
     s1+=48.0;
    }
   } else {
    if(i45<0.034996241331100464){
     s0+=52.0;
     s1+=172.0;
    } else {
     s0+=29.0;
     s1+=2461.0;
    }
   }
  } else {
   s1+=11932.0;
  }
 }
}
if(i21<0.0013867020606994629){
 if(i1<-8.02454596851021e-05){
  if(i11<0.9475120306015015){
   if(i23<1.1224606037139893){
    if(i28<0.06505127251148224){
     s0+=875.0;
     s1+=28.0;
    } else {
     s0+=53.0;
     s1+=35.0;
    }
   } else {
    if(i42<0.9846709966659546){
     s0+=46.0;
     s1+=23.0;
    } else {
     s1+=63.0;
    }
   }
  } else {
   if(i12<0.03966394066810608){
    if(i74<0.03383326530456543){
     s0+=209.0;
     s1+=18.0;
    } else {
     s0+=49.0;
     s1+=109.0;
    }
   } else {
    if(i34<1.1419479846954346){
     s0+=140.0;
     s1+=58.0;
    } else {
     s0+=75.0;
     s1+=4218.0;
    }
   }
  }
 } else {
  if(i7<0.0039438894018530846){
   if(i7<0.0026664049364626408){
    if(i10<0.9948619604110718){
     s0+=12091.0;
     s1+=332.0;
    } else {
     s0+=68492.0;
     s1+=264.0;
    }
   } else {
    if(i31<1.1164028644561768){
     s0+=3314.0;
     s1+=733.0;
    } else {
     s0+=9602.0;
     s1+=92.0;
    }
   }
  } else {
   if(i5<-3.2782554626464844e-06){
    if(i66<0.0048114825040102005){
     s0+=16521.0;
     s1+=154.0;
    } else {
     s0+=231.0;
     s1+=66.0;
    }
   } else {
    if(i3<-2.6881694793701172e-05){
     s0+=2890.0;
     s1+=360.0;
    } else {
     s0+=1218.0;
     s1+=4508.0;
    }
   }
  }
 }
} else {
 if(i52<0.9983612298965454){
  s0+=365.0;
 } else {
  if(i7<0.003445587120950222){
   if(i51<-1.4795165952818934e-05){
    if(i5<0.0002586245536804199){
     s0+=12.0;
     s1+=504.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i31<1.0986645221710205){
     s1+=56.0;
    } else {
     s0+=491.0;
     s1+=10.0;
    }
   }
  } else {
   if(i4<0.9988839626312256){
    if(i58<0.04046150669455528){
     s0+=27.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i9<1.012258529663086){
     s0+=52.0;
     s1+=649.0;
    } else {
     s1+=11812.0;
    }
   }
  }
 }
}
if(i18<0.0019724234007298946){
 if(i39<-3.308800660306588e-05){
  if(i16<0.0006865469622425735){
   if(i0<0.0019384026527404785){
    if(i43<9.224261157214642e-05){
     s0+=63.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=1036.0;
   }
  } else {
   s0+=63.0;
  }
 } else {
  if(i0<0.0017934441566467285){
   if(i51<-1.1242687833146192e-05){
    if(i35<0.0005934834480285645){
     s1+=121.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i18<0.0014956711092963815){
     s0+=87800.0;
     s1+=658.0;
    } else {
     s0+=8629.0;
     s1+=977.0;
    }
   }
  } else {
   if(i54<-1.4944680515327491e-05){
    s0+=19.0;
   } else {
    s1+=290.0;
   }
  }
 }
} else {
 if(i22<-0.00020068883895874023){
  if(i4<0.9998432397842407){
   if(i45<0.18335506319999695){
    if(i67<0.003482235362753272){
     s0+=12302.0;
     s1+=199.0;
    } else {
     s0+=2025.0;
     s1+=494.0;
    }
   } else {
    if(i26<0.24029627442359924){
     s0+=52.0;
     s1+=73.0;
    } else {
     s0+=2.0;
     s1+=210.0;
    }
   }
  } else {
   if(i50<0.0667983740568161){
    if(i7<0.008052818477153778){
     s0+=699.0;
     s1+=27.0;
    } else {
     s0+=294.0;
     s1+=566.0;
    }
   } else {
    if(i26<0.0187721848487854){
     s0+=34.0;
     s1+=17.0;
    } else {
     s0+=49.0;
     s1+=1083.0;
    }
   }
  }
 } else {
  if(i52<0.9995691180229187){
   if(i37<0.016908664256334305){
    if(i10<0.989014744758606){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=2967.0;
    }
   } else {
    s1+=417.0;
   }
  } else {
   if(i22<0.00022619962692260742){
    if(i16<0.00036733451997861266){
     s0+=471.0;
     s1+=6107.0;
    } else {
     s0+=1160.0;
     s1+=860.0;
    }
   } else {
    if(i7<0.00345343304798007){
     s0+=12.0;
     s1+=25.0;
    } else {
     s0+=11.0;
     s1+=10934.0;
    }
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i8<1.0135915279388428){
  if(i19<0.23298412561416626){
   if(i2<0.9995336532592773){
    if(i40<0.04840607941150665){
     s0+=53854.0;
     s1+=344.0;
    } else {
     s0+=9.0;
     s1+=13.0;
    }
   } else {
    if(i38<0.016447696834802628){
     s0+=44731.0;
     s1+=1173.0;
    } else {
     s0+=10423.0;
     s1+=2588.0;
    }
   }
  } else {
   if(i54<-2.9510872536775423e-06){
    if(i63<0.004769527353346348){
     s0+=20.0;
     s1+=41.0;
    } else {
     s1+=272.0;
    }
   } else {
    s0+=72.0;
   }
  }
 } else {
  if(i18<0.0022665983997285366){
   if(i9<1.014538049697876){
    if(i5<1.710653305053711e-05){
     s0+=350.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i62<-0.00031656480859965086){
    if(i28<0.012320817448198795){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=424.0;
    }
   } else {
    if(i31<1.3000664710998535){
     s0+=16.0;
     s1+=144.0;
    } else {
     s0+=68.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i1<-7.564108091173694e-05){
  if(i4<1.0000286102294922){
   if(i23<1.12319016456604){
    if(i24<0.013827353715896606){
     s0+=267.0;
     s1+=18.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   } else {
    if(i57<0.1320165991783142){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=91.0;
    }
   }
  } else {
   if(i29<0.0023868330754339695){
    if(i30<1.1174830198287964){
     s0+=62.0;
     s1+=1237.0;
    } else {
     s0+=349.0;
    }
   } else {
    if(i19<0.04077786207199097){
     s0+=195.0;
     s1+=166.0;
    } else {
     s0+=81.0;
     s1+=14703.0;
    }
   }
  }
 } else {
  if(i35<0.0005119442939758301){
   if(i17<1.005631685256958){
    if(i16<0.00030234968289732933){
     s0+=203.0;
     s1+=795.0;
    } else {
     s0+=702.0;
     s1+=106.0;
    }
   } else {
    if(i49<-3.7281508866726654e-06){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=1449.0;
    }
   }
  } else {
   if(i30<1.1815180778503418){
    s0+=3773.0;
   } else {
    if(i4<1.0060687065124512){
     s0+=1077.0;
     s1+=392.0;
    } else {
     s0+=20.0;
     s1+=457.0;
    }
   }
  }
 }
}
if(i8<1.0135951042175293){
 if(i7<0.013978036120533943){
  if(i0<0.000996232032775879){
   if(i38<0.012287363409996033){
    if(i23<1.0128135681152344){
     s0+=209.0;
     s1+=77.0;
    } else {
     s0+=71287.0;
     s1+=959.0;
    }
   } else {
    if(i5<6.496906280517578e-06){
     s0+=36242.0;
     s1+=1540.0;
    } else {
     s0+=5113.0;
     s1+=2536.0;
    }
   }
  } else {
   if(i63<0.0006697533535771072){
    if(i49<-3.5771367947745603e-06){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=876.0;
    }
   } else {
    if(i16<0.000298031372949481){
     s0+=42.0;
     s1+=578.0;
    } else {
     s0+=1281.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i19<0.04118296504020691){
   if(i11<0.9574721455574036){
    if(i74<0.051339589059352875){
     s0+=910.0;
     s1+=36.0;
    } else {
     s0+=25.0;
     s1+=62.0;
    }
   } else {
    if(i24<0.006902802269905806){
     s0+=18.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   }
  } else {
   if(i0<-0.0006807446479797363){
    if(i45<0.10989108681678772){
     s0+=112.0;
     s1+=75.0;
    } else {
     s0+=3.0;
     s1+=183.0;
    }
   } else {
    if(i43<0.0003836201212834567){
     s0+=33.0;
     s1+=2612.0;
    } else {
     s0+=29.0;
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013938674237579107){
  if(i29<0.004006137140095234){
   if(i42<1.0484898090362549){
    if(i5<4.667043685913086e-05){
     s0+=44.0;
    } else {
     s0+=10.0;
     s1+=188.0;
    }
   } else {
    if(i21<0.0017102360725402832){
     s0+=565.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=51.0;
    }
   }
  } else {
   if(i71<2.0999614207539707e-06){
    if(i22<0.0003203749656677246){
     s0+=4.0;
    } else {
     s1+=296.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i0<-0.0006494522094726562){
   if(i34<1.236745834350586){
    if(i21<-0.0032088160514831543){
     s1+=1.0;
    } else {
     s0+=116.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i28<0.004942123778164387){
    if(i52<0.9999064803123474){
     s0+=172.0;
     s1+=1.0;
    } else {
     s0+=67.0;
     s1+=564.0;
    }
   } else {
    if(i19<0.14042285084724426){
     s0+=189.0;
     s1+=1647.0;
    } else {
     s0+=33.0;
     s1+=11766.0;
    }
   }
  }
 }
}
if(i0<0.0009554624557495117){
 if(i45<0.1927434504032135){
  if(i33<0.0007343760225921869){
   if(i33<0.0005300017073750496){
    if(i18<0.0018919347785413265){
     s0+=68986.0;
     s1+=133.0;
    } else {
     s0+=64.0;
     s1+=8.0;
    }
   } else {
    if(i29<0.0003293713671155274){
     s0+=1384.0;
     s1+=277.0;
    } else {
     s0+=11231.0;
     s1+=196.0;
    }
   }
  } else {
   if(i24<0.0009214283199980855){
    if(i31<1.056142807006836){
     s0+=2882.0;
    } else {
     s0+=552.0;
     s1+=3284.0;
    }
   } else {
    if(i3<-6.854534149169922e-06){
     s0+=26136.0;
     s1+=812.0;
    } else {
     s0+=2930.0;
     s1+=1742.0;
    }
   }
  }
 } else {
  if(i39<-9.560206308378838e-06){
   if(i36<1.1713470220565796){
    if(i70<0.1582057774066925){
     s0+=1.0;
     s1+=58.0;
    } else {
     s0+=80.0;
     s1+=57.0;
    }
   } else {
    if(i1<-4.706686740973964e-05){
     s1+=1077.0;
    } else {
     s0+=13.0;
     s1+=151.0;
    }
   }
  } else {
   if(i21<-0.0033909380435943604){
    if(i16<0.0001708389463601634){
     s1+=5.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i44<1.0966551303863525){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=240.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007048240513540804){
  if(i22<0.00022429227828979492){
   if(i57<0.044859662652015686){
    if(i7<0.0018190384143963456){
     s0+=79.0;
     s1+=1.0;
    } else {
     s0+=97.0;
     s1+=783.0;
    }
   } else {
    if(i26<0.0006538331508636475){
     s0+=32.0;
     s1+=21.0;
    } else {
     s0+=72.0;
     s1+=2895.0;
    }
   }
  } else {
   if(i47<5.8531761169433594e-05){
    if(i47<-3.1888484954833984e-05){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=12748.0;
    }
   } else {
    s0+=29.0;
   }
  }
 } else {
  s0+=1775.0;
 }
}
if(i3<6.562471389770508e-05){
 if(i7<0.00776229053735733){
  if(i29<0.0010495330207049847){
   if(i36<1.0514838695526123){
    if(i52<1.0002549886703491){
     s0+=19148.0;
     s1+=116.0;
    } else {
     s0+=6453.0;
     s1+=653.0;
    }
   } else {
    if(i18<0.00157012022100389){
     s0+=6632.0;
     s1+=108.0;
    } else {
     s0+=304.0;
     s1+=2402.0;
    }
   }
  } else {
   if(i27<1.0255582332611084){
    if(i1<-6.614861194975674e-05){
     s0+=662.0;
     s1+=205.0;
    } else {
     s0+=76075.0;
     s1+=655.0;
    }
   } else {
    if(i60<1.0032320022583008){
     s0+=302.0;
     s1+=251.0;
    } else {
     s0+=326.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i22<-0.0005803108215332031){
   if(i12<0.13209623098373413){
    if(i67<0.014410823583602905){
     s0+=3011.0;
     s1+=78.0;
    } else {
     s0+=521.0;
     s1+=154.0;
    }
   } else {
    if(i24<0.006823086645454168){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=236.0;
    }
   }
  } else {
   if(i56<0.9991365671157837){
    if(i24<0.01466490887105465){
     s0+=833.0;
    } else {
     s1+=148.0;
    }
   } else {
    if(i68<-0.0004156433278694749){
     s0+=100.0;
     s1+=2632.0;
    } else {
     s0+=386.0;
     s1+=287.0;
    }
   }
  }
 }
} else {
 if(i7<0.0039141131564974785){
  if(i37<0.0010471780551597476){
   if(i31<1.057311773300171){
    s0+=39.0;
   } else {
    s1+=622.0;
   }
  } else {
   if(i17<1.0160408020019531){
    s0+=1501.0;
   } else {
    s1+=250.0;
   }
  }
 } else {
  if(i64<1.4071389159653336e-05){
   if(i7<0.00491687934845686){
    if(i43<-1.1555852324818261e-05){
     s0+=22.0;
     s1+=487.0;
    } else {
     s0+=117.0;
    }
   } else {
    if(i33<0.004016326740384102){
     s0+=112.0;
     s1+=14866.0;
    } else {
     s0+=32.0;
     s1+=7.0;
    }
   }
  } else {
   if(i22<0.0004962682723999023){
    s0+=60.0;
   } else {
    s1+=4.0;
   }
  }
 }
}
if(i15<1.0170488357543945){
 if(i25<1.006448745727539){
  if(i18<0.0018173940479755402){
   if(i7<0.0019376350101083517){
    if(i10<0.9948345422744751){
     s0+=7219.0;
     s1+=158.0;
    } else {
     s0+=57963.0;
     s1+=116.0;
    }
   } else {
    if(i29<0.00028628617292270064){
     s0+=1817.0;
     s1+=429.0;
    } else {
     s0+=25170.0;
     s1+=441.0;
    }
   }
  } else {
   if(i25<0.9982155561447144){
    if(i45<0.19551372528076172){
     s0+=13577.0;
     s1+=415.0;
    } else {
     s0+=28.0;
     s1+=96.0;
    }
   } else {
    if(i3<-2.2470951080322266e-05){
     s0+=4083.0;
     s1+=581.0;
    } else {
     s0+=3410.0;
     s1+=4063.0;
    }
   }
  }
 } else {
  if(i62<0.0007298007840290666){
   if(i31<1.1180615425109863){
    if(i3<6.771087646484375e-05){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=572.0;
    }
   } else {
    if(i37<0.0019204305717721581){
     s0+=1201.0;
    } else {
     s0+=67.0;
     s1+=177.0;
    }
   }
  } else {
   if(i45<0.018076956272125244){
    if(i59<-0.006981462240219116){
     s0+=232.0;
     s1+=80.0;
    } else {
     s0+=6.0;
     s1+=155.0;
    }
   } else {
    if(i16<0.0007183755515143275){
     s0+=173.0;
     s1+=2835.0;
    } else {
     s0+=82.0;
    }
   }
  }
 }
} else {
 if(i6<0.00022685527801513672){
  if(i50<0.040474727749824524){
   if(i1<-7.964715041453019e-05){
    s1+=11.0;
   } else {
    if(i36<1.0873398780822754){
     s1+=3.0;
    } else {
     s0+=479.0;
     s1+=23.0;
    }
   }
  } else {
   if(i7<0.005364337004721165){
    if(i18<0.002783348551020026){
     s0+=135.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    s1+=209.0;
   }
  }
 } else {
  if(i16<0.0007198286475613713){
   if(i3<-7.450580596923828e-06){
    if(i50<0.058487460017204285){
     s0+=163.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=87.0;
    }
   } else {
    if(i17<1.0090562105178833){
     s0+=274.0;
     s1+=3163.0;
    } else {
     s0+=12.0;
     s1+=10627.0;
    }
   }
  } else {
   s0+=484.0;
  }
 }
}
if(i3<6.300210952758789e-05){
 if(i4<1.0026384592056274){
  if(i1<-9.589446563040838e-05){
   if(i61<-0.0070462822914123535){
    if(i45<0.0779595673084259){
     s0+=572.0;
     s1+=51.0;
    } else {
     s0+=12.0;
     s1+=69.0;
    }
   } else {
    if(i18<0.005298972595483065){
     s0+=67.0;
     s1+=64.0;
    } else {
     s0+=17.0;
     s1+=857.0;
    }
   }
  } else {
   if(i33<0.0006897003622725606){
    if(i55<0.00016065053932834417){
     s0+=61547.0;
     s1+=128.0;
    } else {
     s0+=13892.0;
     s1+=223.0;
    }
   } else {
    if(i5<-1.2516975402832031e-06){
     s0+=24120.0;
     s1+=742.0;
    } else {
     s0+=8304.0;
     s1+=3073.0;
    }
   }
  }
 } else {
  if(i38<0.02185223624110222){
   if(i46<-0.0002059192629531026){
    if(i44<1.0773630142211914){
     s0+=46.0;
     s1+=327.0;
    } else {
     s0+=369.0;
     s1+=99.0;
    }
   } else {
    if(i1<-4.655141310649924e-05){
     s0+=184.0;
     s1+=115.0;
    } else {
     s0+=5018.0;
     s1+=156.0;
    }
   }
  } else {
   if(i49<-5.129614692123141e-06){
    if(i71<-1.966487616300583e-06){
     s1+=1.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i26<0.10830485820770264){
     s0+=169.0;
     s1+=318.0;
    } else {
     s0+=89.0;
     s1+=1550.0;
    }
   }
  }
 }
} else {
 if(i40<0.0018981765024363995){
  if(i63<0.0008128911722451448){
   if(i49<-4.978636297892081e-06){
    if(i30<1.2487926483154297){
     s0+=92.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i24<0.0002461280091665685){
     s0+=80.0;
    } else {
     s0+=30.0;
     s1+=2996.0;
    }
   }
  } else {
   if(i24<0.002358538331463933){
    if(i32<0.0008794768364168704){
     s1+=121.0;
    } else {
     s0+=1760.0;
     s1+=10.0;
    }
   } else {
    s1+=743.0;
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i49<-3.903356628143229e-06){
    s0+=69.0;
   } else {
    if(i9<0.9941205978393555){
     s0+=6.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i11<0.9566062688827515){
    if(i50<0.034110620617866516){
     s0+=48.0;
     s1+=16.0;
    } else {
     s0+=24.0;
     s1+=141.0;
    }
   } else {
    if(i45<0.08555057644844055){
     s0+=58.0;
     s1+=1358.0;
    } else {
     s0+=14.0;
     s1+=11030.0;
    }
   }
  }
 }
}
if(i13<1.0181405544281006){
 if(i4<1.0038676261901855){
  if(i33<0.0007218856480903924){
   if(i5<2.0325183868408203e-05){
    if(i23<1.023176908493042){
     s0+=11327.0;
     s1+=250.0;
    } else {
     s0+=68051.0;
     s1+=209.0;
    }
   } else {
    if(i51<6.624998150073225e-06){
     s0+=350.0;
    } else {
     s0+=14.0;
     s1+=47.0;
    }
   }
  } else {
   if(i30<1.1160998344421387){
    if(i16<0.00024735223269090056){
     s0+=753.0;
     s1+=2616.0;
    } else {
     s0+=3352.0;
     s1+=174.0;
    }
   } else {
    if(i2<1.0018892288208008){
     s0+=24873.0;
     s1+=625.0;
    } else {
     s0+=2741.0;
     s1+=1461.0;
    }
   }
  }
 } else {
  if(i18<0.0019530088175088167){
   if(i0<0.0017920732498168945){
    if(i36<1.0773630142211914){
     s0+=481.0;
     s1+=95.0;
    } else {
     s0+=2274.0;
     s1+=12.0;
    }
   } else {
    if(i49<-5.345303179637995e-06){
     s0+=25.0;
    } else {
     s1+=573.0;
    }
   }
  } else {
   if(i32<0.0020195767283439636){
    if(i64<7.659913308089017e-07){
     s0+=482.0;
     s1+=1221.0;
    } else {
     s0+=399.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.049822837114334106){
     s0+=46.0;
     s1+=150.0;
    } else {
     s0+=39.0;
     s1+=2773.0;
    }
   }
  }
 }
} else {
 if(i37<0.002645047614350915){
  if(i36<1.0905089378356934){
   if(i6<-0.0003871023654937744){
    s0+=1.0;
   } else {
    s1+=1197.0;
   }
  } else {
   if(i17<1.0150532722473145){
    if(i28<0.02069445140659809){
     s0+=843.0;
     s1+=55.0;
    } else {
     s0+=49.0;
     s1+=60.0;
    }
   } else {
    s1+=115.0;
   }
  }
 } else {
  if(i36<1.1333510875701904){
   if(i51<1.681572393863462e-05){
    s1+=22.0;
   } else {
    if(i51<5.452385084936395e-05){
     s0+=123.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i1<-5.9902660723309964e-05){
    if(i0<0.0013315081596374512){
     s0+=80.0;
     s1+=1767.0;
    } else {
     s0+=2.0;
     s1+=10319.0;
    }
   } else {
    if(i7<0.006752978079020977){
     s0+=388.0;
     s1+=18.0;
    } else {
     s0+=15.0;
     s1+=389.0;
    }
   }
  }
 }
}
if(i0<0.0009572505950927734){
 if(i6<0.00032711029052734375){
  if(i35<7.075071334838867e-05){
   if(i70<0.23821723461151123){
    if(i37<0.039369240403175354){
     s0+=76123.0;
     s1+=847.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i38<0.12247943878173828){
     s0+=39.0;
     s1+=13.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i12<0.23105797171592712){
    if(i30<1.0955734252929688){
     s0+=3221.0;
     s1+=1256.0;
    } else {
     s0+=25459.0;
     s1+=945.0;
    }
   } else {
    if(i33<0.0005296256858855486){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i48<1.0269287824630737){
   if(i28<0.009598784148693085){
    if(i22<0.00016480684280395508){
     s0+=6682.0;
     s1+=244.0;
    } else {
     s0+=121.0;
     s1+=84.0;
    }
   } else {
    if(i29<0.001244023209437728){
     s0+=92.0;
     s1+=919.0;
    } else {
     s0+=2027.0;
     s1+=1862.0;
    }
   }
  } else {
   if(i38<0.014723431318998337){
    if(i66<0.0003345515578985214){
     s0+=2.0;
     s1+=62.0;
    } else {
     s0+=180.0;
     s1+=26.0;
    }
   } else {
    if(i1<-6.43008534098044e-05){
     s0+=44.0;
     s1+=1037.0;
    } else {
     s0+=250.0;
     s1+=461.0;
    }
   }
  }
 }
} else {
 if(i49<-8.30446879263036e-06){
  s0+=601.0;
 } else {
  if(i29<0.0024050595238804817){
   if(i32<0.0011882283724844456){
    if(i29<0.000222798902541399){
     s0+=56.0;
    } else {
     s0+=9.0;
     s1+=2177.0;
    }
   } else {
    if(i34<1.0987343788146973){
     s1+=180.0;
    } else {
     s0+=1303.0;
     s1+=32.0;
    }
   }
  } else {
   if(i12<0.03487405180931091){
    if(i56<1.0027612447738647){
     s0+=29.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=82.0;
    }
   } else {
    if(i60<1.011107087135315){
     s0+=58.0;
     s1+=14087.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i1<-8.109824557323009e-05){
 if(i14<0.9241349697113037){
  if(i26<0.05376729369163513){
   if(i9<0.9737211465835571){
    if(i73<-0.014444023370742798){
     s0+=11.0;
     s1+=17.0;
    } else {
     s0+=855.0;
     s1+=21.0;
    }
   } else {
    if(i52<1.0020301342010498){
     s0+=51.0;
     s1+=27.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i40<0.014628888107836246){
    if(i21<-0.005676597356796265){
     s0+=52.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=30.0;
    }
   } else {
    if(i33<0.004006248898804188){
     s0+=10.0;
     s1+=205.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i71<4.952272774971789e-06){
   if(i52<0.998355507850647){
    if(i12<0.3489762246608734){
     s0+=159.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i19<0.044990479946136475){
     s0+=178.0;
     s1+=136.0;
    } else {
     s0+=204.0;
     s1+=16268.0;
    }
   }
  } else {
   if(i37<0.02218465320765972){
    s0+=175.0;
   } else {
    s1+=4.0;
   }
  }
 }
} else {
 if(i6<0.0003573298454284668){
  if(i33<0.0006912790704518557){
   if(i55<0.00016696008970029652){
    if(i36<1.1354830265045166){
     s0+=58497.0;
     s1+=88.0;
    } else {
     s0+=4233.0;
     s1+=72.0;
    }
   } else {
    if(i29<0.00022374170657712966){
     s0+=421.0;
     s1+=137.0;
    } else {
     s0+=12870.0;
     s1+=101.0;
    }
   }
  } else {
   if(i2<0.9995850324630737){
    if(i29<0.0007188565796241164){
     s0+=1337.0;
     s1+=174.0;
    } else {
     s0+=17533.0;
     s1+=39.0;
    }
   } else {
    if(i29<0.000936471507884562){
     s0+=238.0;
     s1+=1844.0;
    } else {
     s0+=9757.0;
     s1+=596.0;
    }
   }
  }
 } else {
  if(i68<-0.0007801048923283815){
   if(i22<-0.0001882314682006836){
    if(i19<0.17081046104431152){
     s0+=843.0;
     s1+=129.0;
    } else {
     s0+=73.0;
     s1+=206.0;
    }
   } else {
    if(i47<1.2814998626708984e-05){
     s0+=274.0;
     s1+=1864.0;
    } else {
     s0+=283.0;
     s1+=87.0;
    }
   }
  } else {
   if(i28<0.00905279628932476){
    if(i58<0.0006686652777716517){
     s0+=2645.0;
     s1+=979.0;
    } else {
     s0+=4768.0;
     s1+=109.0;
    }
   } else {
    if(i16<0.00026491767494007945){
     s0+=232.0;
     s1+=997.0;
    } else {
     s0+=727.0;
     s1+=239.0;
    }
   }
  }
 }
}
if(i12<0.1866081953048706){
 if(i8<1.0135858058929443){
  if(i2<1.002427101135254){
   if(i38<0.01119060069322586){
    if(i23<1.0128135681152344){
     s0+=187.0;
     s1+=65.0;
    } else {
     s0+=65115.0;
     s1+=563.0;
    }
   } else {
    if(i6<0.00017625093460083008){
     s0+=39881.0;
     s1+=1650.0;
    } else {
     s0+=3697.0;
     s1+=1582.0;
    }
   }
  } else {
   if(i7<0.003916038200259209){
    if(i22<0.00017845630645751953){
     s0+=3698.0;
     s1+=72.0;
    } else {
     s0+=505.0;
     s1+=268.0;
    }
   } else {
    if(i11<0.9610394239425659){
     s0+=770.0;
     s1+=328.0;
    } else {
     s0+=912.0;
     s1+=2928.0;
    }
   }
  }
 } else {
  if(i21<0.0018811821937561035){
   if(i32<0.0011690594255924225){
    if(i49<-4.8292822611983865e-06){
     s0+=17.0;
    } else {
     s0+=2.0;
     s1+=596.0;
    }
   } else {
    if(i29<0.0012199727352708578){
     s0+=37.0;
     s1+=277.0;
    } else {
     s0+=1008.0;
     s1+=590.0;
    }
   }
  } else {
   if(i49<-6.042951099516358e-06){
    s0+=31.0;
   } else {
    if(i4<1.0021809339523315){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=2204.0;
    }
   }
  }
 }
} else {
 if(i29<0.0024691675789654255){
  if(i50<0.022995823994278908){
   s0+=413.0;
  } else {
   if(i1<-4.364354390418157e-05){
    if(i52<0.9988211989402771){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i39<-5.647742909786757e-06){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=64.0;
    }
   }
  }
 } else {
  if(i54<-3.928325440938352e-06){
   if(i0<-0.0004749298095703125){
    if(i38<0.11123959720134735){
     s0+=137.0;
     s1+=88.0;
    } else {
     s0+=8.0;
     s1+=245.0;
    }
   } else {
    if(i22<-0.00048351287841796875){
     s0+=20.0;
     s1+=131.0;
    } else {
     s0+=13.0;
     s1+=12556.0;
    }
   }
  } else {
   if(i18<0.002380646299570799){
    s0+=145.0;
   } else {
    if(i35<1.8477439880371094e-06){
     s1+=15.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i2<1.0026392936706543){
 if(i48<1.0378774404525757){
  if(i8<1.0124261379241943){
   if(i19<0.23209643363952637){
    if(i33<0.0007107793353497982){
     s0+=78706.0;
     s1+=428.0;
    } else {
     s0+=30838.0;
     s1+=3685.0;
    }
   } else {
    if(i38<0.05739780515432358){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=229.0;
    }
   }
  } else {
   if(i37<0.0011888232547789812){
    if(i70<0.08290916681289673){
     s0+=8.0;
     s1+=318.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i1<-8.842152601573616e-05){
     s0+=24.0;
     s1+=105.0;
    } else {
     s0+=379.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i7<0.005154707003384829){
   if(i2<1.0021958351135254){
    if(i29<0.00446733832359314){
     s0+=443.0;
     s1+=10.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i52<1.001161813735962){
     s1+=11.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i5<-3.981590270996094e-05){
    s0+=13.0;
   } else {
    if(i35<0.0005518794059753418){
     s0+=20.0;
     s1+=790.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012583136558532715){
  if(i34<1.1757044792175293){
   if(i60<1.0029337406158447){
    if(i29<0.0002923093852587044){
     s0+=393.0;
    } else {
     s0+=499.0;
     s1+=489.0;
    }
   } else {
    if(i35<0.0004474520683288574){
     s0+=47.0;
     s1+=89.0;
    } else {
     s0+=2446.0;
     s1+=34.0;
    }
   }
  } else {
   if(i70<0.07027179002761841){
    if(i12<0.07181602716445923){
     s0+=1165.0;
     s1+=269.0;
    } else {
     s0+=194.0;
     s1+=920.0;
    }
   } else {
    if(i19<0.17541855573654175){
     s0+=286.0;
     s1+=499.0;
    } else {
     s0+=72.0;
     s1+=1404.0;
    }
   }
  }
 } else {
  if(i28<0.0034860149025917053){
   if(i32<0.0010564536787569523){
    s1+=307.0;
   } else {
    if(i29<0.0025399010628461838){
     s0+=542.0;
     s1+=2.0;
    } else {
     s1+=105.0;
    }
   }
  } else {
   if(i28<0.008295314386487007){
    if(i16<0.00060124701121822){
     s0+=16.0;
     s1+=1383.0;
    } else {
     s0+=316.0;
    }
   } else {
    if(i7<0.003804775420576334){
     s0+=46.0;
     s1+=241.0;
    } else {
     s0+=49.0;
     s1+=12820.0;
    }
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i7<0.006916837766766548){
  if(i6<0.00027757883071899414){
   if(i31<1.116391897201538){
    if(i18<0.0015855543315410614){
     s0+=25647.0;
     s1+=511.0;
    } else {
     s0+=1171.0;
     s1+=1219.0;
    }
   } else {
    if(i23<1.122455358505249){
     s0+=68468.0;
     s1+=260.0;
    } else {
     s0+=2290.0;
     s1+=147.0;
    }
   }
  } else {
   if(i29<0.0009025975014083087){
    if(i24<0.000246360432356596){
     s0+=2775.0;
    } else {
     s0+=30.0;
     s1+=1174.0;
    }
   } else {
    if(i40<0.001619020476937294){
     s0+=5694.0;
     s1+=15.0;
    } else {
     s0+=1652.0;
     s1+=481.0;
    }
   }
  }
 } else {
  if(i42<1.0529714822769165){
   if(i11<1.0063579082489014){
    if(i0<-0.00035369396209716797){
     s0+=5669.0;
     s1+=371.0;
    } else {
     s0+=433.0;
     s1+=893.0;
    }
   } else {
    if(i5<-1.7434358596801758e-05){
     s0+=7.0;
    } else {
     s1+=276.0;
    }
   }
  } else {
   if(i20<1.113352656364441){
    if(i6<-5.048513412475586e-05){
     s0+=353.0;
     s1+=37.0;
    } else {
     s0+=134.0;
     s1+=675.0;
    }
   } else {
    if(i18<0.0020652106031775475){
     s0+=7.0;
    } else {
     s0+=24.0;
     s1+=1967.0;
    }
   }
  }
 }
} else {
 if(i49<-8.296950909425505e-06){
  s0+=671.0;
 } else {
  if(i7<0.002190305618569255){
   if(i17<1.0140360593795776){
    if(i0<0.0018818974494934082){
     s0+=936.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i16<0.0008060660911723971){
     s1+=173.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i37<0.001759433071129024){
    if(i23<1.0905089378356934){
     s0+=148.0;
     s1+=1979.0;
    } else {
     s0+=231.0;
     s1+=56.0;
    }
   } else {
    if(i9<0.9753731489181519){
     s0+=56.0;
     s1+=98.0;
    } else {
     s0+=75.0;
     s1+=13934.0;
    }
   }
  }
 }
}
if(i10<1.0154435634613037){
 if(i2<1.0026252269744873){
  if(i28<0.08798976242542267){
   if(i29<0.0010623257840052247){
    if(i10<1.006861925125122){
     s0+=31536.0;
     s1+=2463.0;
    } else {
     s0+=365.0;
     s1+=806.0;
    }
   } else {
    if(i30<1.0887749195098877){
     s0+=7.0;
     s1+=70.0;
    } else {
     s0+=78139.0;
     s1+=1091.0;
    }
   }
  } else {
   if(i51<7.79111433075741e-05){
    s1+=303.0;
   } else {
    if(i22<-0.0007951259613037109){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<0.0019530088175088167){
   if(i16<0.00018321695097256452){
    if(i21<0.001034557819366455){
     s0+=171.0;
     s1+=26.0;
    } else {
     s0+=9.0;
     s1+=520.0;
    }
   } else {
    if(i51<1.0039715562015772e-05){
     s0+=2818.0;
     s1+=4.0;
    } else {
     s0+=97.0;
     s1+=24.0;
    }
   }
  } else {
   if(i4<1.0022000074386597){
    if(i12<0.09872236847877502){
     s0+=1111.0;
     s1+=231.0;
    } else {
     s0+=252.0;
     s1+=502.0;
    }
   } else {
    if(i52<0.9997804164886475){
     s0+=286.0;
     s1+=37.0;
    } else {
     s0+=788.0;
     s1+=4355.0;
    }
   }
  }
 }
} else {
 if(i7<0.0041488585993647575){
  if(i31<1.1180615425109863){
   s1+=264.0;
  } else {
   if(i17<1.0152513980865479){
    if(i1<-7.260687561938539e-05){
     s0+=77.0;
     s1+=30.0;
    } else {
     s0+=726.0;
    }
   } else {
    s1+=235.0;
   }
  }
 } else {
  if(i39<-8.445927960565314e-06){
   if(i64<1.776314093149267e-05){
    if(i56<0.9999971985816956){
     s0+=33.0;
     s1+=275.0;
    } else {
     s0+=6.0;
     s1+=13122.0;
    }
   } else {
    s0+=19.0;
   }
  } else {
   s0+=48.0;
  }
 }
}
if(i12<0.186611145734787){
 if(i43<-2.578504427219741e-05){
  if(i49<-4.709232598543167e-06){
   if(i21<0.005991876125335693){
    s0+=125.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i50<0.002571586985141039){
    if(i63<0.001291948719881475){
     s1+=47.0;
    } else {
     s0+=18.0;
     s1+=4.0;
    }
   } else {
    if(i43<-2.9765496947220527e-05){
     s1+=1958.0;
    } else {
     s0+=16.0;
     s1+=337.0;
    }
   }
  }
 } else {
  if(i1<-8.847646677168086e-05){
   if(i9<0.9734644889831543){
    if(i74<0.04693351313471794){
     s0+=778.0;
     s1+=59.0;
    } else {
     s0+=32.0;
     s1+=63.0;
    }
   } else {
    if(i7<0.005208146758377552){
     s0+=160.0;
     s1+=82.0;
    } else {
     s0+=269.0;
     s1+=2387.0;
    }
   }
  } else {
   if(i18<0.001728216651827097){
    if(i24<0.0005609223735518754){
     s0+=29034.0;
     s1+=840.0;
    } else {
     s0+=62713.0;
     s1+=225.0;
    }
   } else {
    if(i4<0.9984215497970581){
     s0+=16959.0;
     s1+=512.0;
    } else {
     s0+=5647.0;
     s1+=4947.0;
    }
   }
  }
 }
} else {
 if(i54<-3.928325440938352e-06){
  if(i1<-3.423222005949356e-05){
   if(i29<0.0018960768356919289){
    s0+=28.0;
   } else {
    if(i1<-5.882701952941716e-05){
     s0+=5.0;
     s1+=12317.0;
    } else {
     s0+=20.0;
     s1+=257.0;
    }
   }
  } else {
   if(i12<0.22427573800086975){
    if(i63<0.0033207801170647144){
     s0+=190.0;
     s1+=31.0;
    } else {
     s0+=14.0;
     s1+=29.0;
    }
   } else {
    if(i7<0.00598146254196763){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i62<0.005304932594299316){
   if(i52<1.0010286569595337){
    if(i38<0.24535460770130157){
     s0+=488.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i70<0.14432141184806824){
     s0+=1.0;
     s1+=16.0;
    } else {
     s0+=68.0;
     s1+=4.0;
    }
   }
  } else {
   s1+=7.0;
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i23<1.1403480768203735){
  if(i13<1.0181355476379395){
   if(i29<0.001049334998242557){
    if(i28<0.006744109559804201){
     s0+=23137.0;
     s1+=499.0;
    } else {
     s0+=7791.0;
     s1+=2461.0;
    }
   } else {
    if(i40<0.0017286455258727074){
     s0+=62801.0;
     s1+=70.0;
    } else {
     s0+=14813.0;
     s1+=924.0;
    }
   }
  } else {
   if(i5<8.404254913330078e-06){
    if(i7<0.0055205742828547955){
     s0+=398.0;
     s1+=34.0;
    } else {
     s0+=29.0;
     s1+=40.0;
    }
   } else {
    if(i51<1.418631654814817e-06){
     s0+=59.0;
     s1+=3.0;
    } else {
     s0+=77.0;
     s1+=453.0;
    }
   }
  }
 } else {
  if(i16<0.0003223730600439012){
   if(i52<1.000698447227478){
    if(i46<-0.0009584275539964437){
     s1+=24.0;
    } else {
     s0+=806.0;
     s1+=13.0;
    }
   } else {
    if(i1<-2.0590658095898107e-05){
     s0+=20.0;
     s1+=284.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<0.14467933773994446){
    if(i38<0.08817803859710693){
     s0+=70.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=84.0;
    }
   } else {
    if(i2<1.0039671659469604){
     s0+=2.0;
     s1+=504.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
} else {
 if(i7<0.003985515795648098){
  if(i0<0.0017727017402648926){
   if(i37<0.0005903115379624069){
    if(i36<1.0499491691589355){
     s0+=1246.0;
    } else {
     s1+=264.0;
    }
   } else {
    if(i15<1.0271049737930298){
     s0+=3079.0;
     s1+=9.0;
    } else {
     s0+=90.0;
     s1+=39.0;
    }
   }
  } else {
   if(i52<1.0000230073928833){
    if(i67<-0.003802806604653597){
     s1+=3.0;
    } else {
     s0+=236.0;
    }
   } else {
    if(i56<1.0038901567459106){
     s1+=517.0;
    } else {
     s0+=15.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i12<0.13911518454551697){
   if(i31<1.1180615425109863){
    if(i56<1.0001225471496582){
     s0+=13.0;
    } else {
     s1+=2104.0;
    }
   } else {
    if(i6<0.0011979341506958008){
     s0+=1147.0;
     s1+=663.0;
    } else {
     s0+=469.0;
     s1+=1388.0;
    }
   }
  } else {
   if(i37<0.0019490942358970642){
    if(i67<-0.003314556088298559){
     s1+=3.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i3<1.4781951904296875e-05){
     s0+=60.0;
     s1+=295.0;
    } else {
     s0+=26.0;
     s1+=13510.0;
    }
   }
  }
 }
}
if(i0<0.0009554624557495117){
 if(i8<1.0144217014312744){
  if(i18<0.0017282022163271904){
   if(i63<0.0003924713237211108){
    if(i9<0.998176097869873){
     s0+=12940.0;
     s1+=594.0;
    } else {
     s0+=20439.0;
     s1+=159.0;
    }
   } else {
    if(i60<1.001512050628662){
     s0+=48550.0;
     s1+=46.0;
    } else {
     s0+=9159.0;
     s1+=212.0;
    }
   }
  } else {
   if(i25<0.9981685280799866){
    if(i48<1.0549442768096924){
     s0+=14413.0;
     s1+=480.0;
    } else {
     s0+=5.0;
     s1+=100.0;
    }
   } else {
    if(i28<0.009349076077342033){
     s0+=4072.0;
     s1+=524.0;
    } else {
     s0+=4270.0;
     s1+=4583.0;
    }
   }
  }
 } else {
  if(i7<0.006034521386027336){
   if(i56<1.0027052164077759){
    if(i35<0.00018864870071411133){
     s0+=210.0;
    } else {
     s0+=16.0;
     s1+=109.0;
    }
   } else {
    s0+=303.0;
   }
  } else {
   if(i14<1.0027269124984741){
    if(i44<1.1296039819717407){
     s0+=10.0;
     s1+=7.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i8<1.0152255296707153){
     s0+=5.0;
     s1+=37.0;
    } else {
     s0+=1.0;
     s1+=1215.0;
    }
   }
  }
 }
} else {
 if(i36<1.1703872680664062){
  if(i30<1.116804838180542){
   if(i29<0.00022223932319320738){
    s0+=75.0;
   } else {
    if(i40<0.0012249862775206566){
     s0+=6.0;
     s1+=2373.0;
    } else {
     s0+=87.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.013018541038036346){
    if(i29<0.002467517741024494){
     s0+=1794.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i36<1.1220828294754028){
     s0+=17.0;
    } else {
     s0+=8.0;
     s1+=501.0;
    }
   }
  }
 } else {
  if(i26<0.041255444288253784){
   if(i0<0.002047598361968994){
    if(i33<0.0019859089516103268){
     s0+=48.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    s1+=74.0;
   }
  } else {
   if(i20<1.0739543437957764){
    if(i21<-0.0014958381652832031){
     s0+=40.0;
     s1+=140.0;
    } else {
     s0+=1.0;
     s1+=688.0;
    }
   } else {
    if(i7<0.0047505097463727){
     s0+=16.0;
     s1+=321.0;
    } else {
     s1+=12029.0;
    }
   }
  }
 }
}
if(i19<0.19098326563835144){
 if(i3<6.276369094848633e-05){
  if(i18<0.0017319268081337214){
   if(i33<0.0005904244026169181){
    if(i0<-0.00014513731002807617){
     s0+=28676.0;
     s1+=183.0;
    } else {
     s0+=44106.0;
     s1+=46.0;
    }
   } else {
    if(i61<-0.00034233927726745605){
     s0+=2670.0;
     s1+=498.0;
    } else {
     s0+=15376.0;
     s1+=319.0;
    }
   }
  } else {
   if(i32<0.0011565648019313812){
    if(i30<1.0533521175384521){
     s0+=2049.0;
    } else {
     s0+=856.0;
     s1+=2417.0;
    }
   } else {
    if(i25<0.9995023608207703){
     s0+=14861.0;
     s1+=532.0;
    } else {
     s0+=4787.0;
     s1+=2150.0;
    }
   }
  }
 } else {
  if(i16<0.0006910573574714363){
   if(i49<-6.212318567122566e-06){
    if(i2<1.0098085403442383){
     s0+=70.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i73<0.007445156574249268){
     s0+=285.0;
     s1+=5223.0;
    } else {
     s0+=26.0;
     s1+=6.0;
    }
   }
  } else {
   if(i15<0.922357439994812){
    s1+=5.0;
   } else {
    s0+=1878.0;
   }
  }
 }
} else {
 if(i1<-4.4889020500704646e-05){
  if(i36<1.1300873756408691){
   if(i31<1.2456395626068115){
    s0+=31.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i30<1.1580427885055542){
    s0+=10.0;
   } else {
    if(i6<8.416175842285156e-05){
     s0+=5.0;
     s1+=264.0;
    } else {
     s0+=2.0;
     s1+=12387.0;
    }
   }
  }
 } else {
  if(i58<0.002366905100643635){
   if(i62<0.0011563478037714958){
    if(i17<1.0121254920959473){
     s0+=632.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i64<-5.206479727348778e-07){
    if(i5<1.4781951904296875e-05){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=185.0;
    }
   } else {
    if(i54<-2.334961209271569e-06){
     s0+=99.0;
     s1+=96.0;
    } else {
     s0+=104.0;
    }
   }
  }
 }
}
if(i22<0.00019246339797973633){
 if(i12<0.1929747760295868){
  if(i38<0.017652185633778572){
   if(i9<1.005933165550232){
    if(i10<0.992769718170166){
     s0+=1987.0;
     s1+=332.0;
    } else {
     s0+=78170.0;
     s1+=996.0;
    }
   } else {
    if(i24<0.0009303414262831211){
     s0+=342.0;
     s1+=757.0;
    } else {
     s0+=2721.0;
     s1+=38.0;
    }
   }
  } else {
   if(i0<-0.00046521425247192383){
    if(i1<-8.122206781990826e-05){
     s0+=704.0;
     s1+=214.0;
    } else {
     s0+=25994.0;
     s1+=522.0;
    }
   } else {
    if(i33<0.000708917563315481){
     s0+=2979.0;
     s1+=245.0;
    } else {
     s0+=1858.0;
     s1+=4357.0;
    }
   }
  }
 } else {
  if(i28<0.02334645949304104){
   if(i53<1.0058038234710693){
    if(i36<1.1346988677978516){
     s0+=220.0;
    } else {
     s0+=131.0;
     s1+=42.0;
    }
   } else {
    if(i49<-4.746721515402896e-06){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=72.0;
    }
   }
  } else {
   if(i20<1.601638913154602){
    if(i7<0.005579294171184301){
     s0+=101.0;
     s1+=11.0;
    } else {
     s0+=16.0;
     s1+=3293.0;
    }
   } else {
    if(i57<0.7053526639938354){
     s0+=43.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i49<-7.489660674764309e-06){
  s0+=452.0;
 } else {
  if(i6<0.00035494565963745117){
   if(i8<1.0290024280548096){
    if(i21<0.0017795264720916748){
     s0+=368.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=79.0;
   }
  } else {
   if(i1<-8.80335210240446e-05){
    if(i28<0.006579854991286993){
     s0+=9.0;
     s1+=692.0;
    } else {
     s1+=11115.0;
    }
   } else {
    if(i40<0.0010747448541224003){
     s0+=6.0;
     s1+=1169.0;
    } else {
     s0+=458.0;
     s1+=338.0;
    }
   }
  }
 }
}
if(i15<1.0162707567214966){
 if(i1<-8.23536392999813e-05){
  if(i11<0.9493842720985413){
   if(i46<-0.000609803362749517){
    if(i65<0.10883449018001556){
     s0+=41.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   } else {
    if(i69<1.003283977508545){
     s0+=860.0;
     s1+=89.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i34<1.1497111320495605){
    if(i37<0.0012497592251747847){
     s0+=6.0;
     s1+=262.0;
    } else {
     s0+=338.0;
     s1+=49.0;
    }
   } else {
    if(i26<0.04125577211380005){
     s0+=195.0;
     s1+=173.0;
    } else {
     s0+=62.0;
     s1+=3339.0;
    }
   }
  }
 } else {
  if(i2<1.0023256540298462){
   if(i31<1.1162974834442139){
    if(i57<0.01334091741591692){
     s0+=19725.0;
     s1+=562.0;
    } else {
     s0+=9571.0;
     s1+=2506.0;
    }
   } else {
    if(i58<0.001922286581248045){
     s0+=69852.0;
     s1+=168.0;
    } else {
     s0+=8193.0;
     s1+=410.0;
    }
   }
  } else {
   if(i21<0.0012421011924743652){
    if(i7<0.00413128174841404){
     s0+=4326.0;
     s1+=138.0;
    } else {
     s0+=1166.0;
     s1+=1412.0;
    }
   } else {
    if(i24<0.0011222383473068476){
     s1+=655.0;
    } else {
     s0+=336.0;
     s1+=88.0;
    }
   }
  }
 }
} else {
 if(i4<1.0019025802612305){
  if(i28<0.027980636805295944){
   if(i43<0.00016385974595323205){
    if(i31<1.1178560256958008){
     s0+=6.0;
     s1+=22.0;
    } else {
     s0+=728.0;
     s1+=23.0;
    }
   } else {
    if(i1<-4.0298029489349574e-05){
     s0+=13.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   }
  } else {
   if(i17<0.9961535930633545){
    if(i33<0.0021560541354119778){
     s0+=156.0;
     s1+=16.0;
    } else {
     s0+=14.0;
     s1+=158.0;
    }
   } else {
    if(i33<0.0004351316310930997){
     s0+=1.0;
    } else {
     s1+=175.0;
    }
   }
  }
 } else {
  if(i30<1.1793382167816162){
   if(i40<0.0010416398290544748){
    if(i49<-6.99822703609243e-06){
     s0+=3.0;
    } else {
     s1+=1488.0;
    }
   } else {
    if(i24<0.0009994888678193092){
     s1+=118.0;
    } else {
     s0+=786.0;
    }
   }
  } else {
   if(i23<1.0742113590240479){
    if(i51<7.506387646571966e-06){
     s1+=7.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i54<-3.706689767568605e-06){
     s0+=120.0;
     s1+=12339.0;
    } else {
     s0+=31.0;
    }
   }
  }
 }
}
if(i10<1.0152747631072998){
 if(i0<0.0009746551513671875){
  if(i58<0.011904025450348854){
   if(i25<1.0030853748321533){
    if(i5<2.1159648895263672e-05){
     s0+=105409.0;
     s1+=3574.0;
    } else {
     s0+=1742.0;
     s1+=577.0;
    }
   } else {
    if(i18<0.0020466914866119623){
     s0+=4392.0;
     s1+=97.0;
    } else {
     s0+=1428.0;
     s1+=1326.0;
    }
   }
  } else {
   if(i28<0.04325440898537636){
    if(i47<9.417533874511719e-06){
     s0+=822.0;
     s1+=21.0;
    } else {
     s0+=30.0;
     s1+=32.0;
    }
   } else {
    if(i20<1.0300202369689941){
     s0+=63.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=1069.0;
    }
   }
  }
 } else {
  if(i52<0.999795138835907){
   if(i40<0.007650920655578375){
    if(i52<0.9997772574424744){
     s0+=602.0;
    } else {
     s0+=12.0;
     s1+=6.0;
    }
   } else {
    s1+=53.0;
   }
  } else {
   if(i39<-2.9993421776453033e-05){
    if(i7<0.0036272513680160046){
     s0+=50.0;
     s1+=58.0;
    } else {
     s0+=89.0;
     s1+=2580.0;
    }
   } else {
    if(i31<1.1180615425109863){
     s0+=9.0;
     s1+=721.0;
    } else {
     s0+=836.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i3<1.6927719116210938e-05){
  if(i1<-6.188838597154245e-05){
   if(i7<0.005999404937028885){
    s0+=27.0;
   } else {
    if(i51<0.0002669640234671533){
     s1+=218.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i51<8.317729225382209e-06){
    s0+=196.0;
   } else {
    if(i60<1.0035712718963623){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=178.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i49<-6.053051038179547e-06){
   if(i8<1.0374860763549805){
    s0+=229.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i8<1.0208998918533325){
    if(i24<0.0011107332538813353){
     s1+=924.0;
    } else {
     s0+=266.0;
     s1+=993.0;
    }
   } else {
    if(i3<2.1249055862426758e-05){
     s0+=8.0;
     s1+=31.0;
    } else {
     s0+=13.0;
     s1+=11947.0;
    }
   }
  }
 }
}
if(i1<-9.781442349776626e-05){
 if(i14<0.9104173183441162){
  if(i20<1.0540410280227661){
   if(i28<0.05810079723596573){
    if(i6<0.0019423961639404297){
     s0+=464.0;
     s1+=5.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i62<0.01177007146179676){
     s0+=4.0;
     s1+=29.0;
    } else {
     s0+=69.0;
     s1+=26.0;
    }
   }
  } else {
   if(i18<0.011133464053273201){
    if(i28<0.03241966664791107){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=89.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i52<0.9978563785552979){
   s0+=170.0;
  } else {
   if(i49<-6.356329322443344e-06){
    if(i22<-0.0001652240753173828){
     s1+=1.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i11<0.952367901802063){
     s0+=70.0;
     s1+=88.0;
    } else {
     s0+=66.0;
     s1+=15219.0;
    }
   }
  }
 }
} else {
 if(i10<1.0093693733215332){
  if(i0<0.0010464787483215332){
   if(i33<0.0007017834577709436){
    if(i37<0.00026552905910648406){
     s0+=16828.0;
     s1+=295.0;
    } else {
     s0+=61706.0;
     s1+=160.0;
    }
   } else {
    if(i18<0.0014826070982962847){
     s0+=8818.0;
     s1+=187.0;
    } else {
     s0+=24022.0;
     s1+=4120.0;
    }
   }
  } else {
   if(i64<-1.470326651542564e-06){
    if(i31<1.629280686378479){
     s0+=52.0;
     s1+=804.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i58<0.01153356209397316){
     s0+=173.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i30<1.116673469543457){
   if(i35<8.738040924072266e-05){
    s0+=64.0;
   } else {
    if(i44<1.0926339626312256){
     s0+=11.0;
     s1+=2028.0;
    } else {
     s0+=45.0;
     s1+=64.0;
    }
   }
  } else {
   if(i31<1.1979892253875732){
    s0+=2704.0;
   } else {
    if(i30<1.4536241292953491){
     s0+=594.0;
     s1+=1300.0;
    } else {
     s0+=424.0;
    }
   }
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i13<1.0219464302062988){
  if(i28<0.08869542181491852){
   if(i6<0.0002925992012023926){
    if(i29<0.0010675336234271526){
     s0+=29842.0;
     s1+=2167.0;
    } else {
     s0+=73395.0;
     s1+=679.0;
    }
   } else {
    if(i1<-4.3212876335019246e-05){
     s0+=782.0;
     s1+=890.0;
    } else {
     s0+=5854.0;
     s1+=710.0;
    }
   }
  } else {
   if(i2<0.9941760897636414){
    s0+=10.0;
   } else {
    s1+=208.0;
   }
  }
 } else {
  if(i50<0.04068895801901817){
   if(i54<-3.704179107444361e-06){
    if(i3<1.430511474609375e-06){
     s0+=104.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=184.0;
    }
   } else {
    if(i42<1.0311205387115479){
     s1+=1.0;
    } else {
     s0+=176.0;
    }
   }
  } else {
   if(i51<3.1409817893290892e-06){
    if(i63<0.010306350886821747){
     s0+=68.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i18<0.001432902878150344){
     s0+=27.0;
    } else {
     s0+=15.0;
     s1+=681.0;
    }
   }
  }
 }
} else {
 if(i25<1.010185956954956){
  if(i1<-4.6804674639133736e-05){
   if(i7<0.004938940051943064){
    if(i36<1.0834892988204956){
     s1+=297.0;
    } else {
     s0+=1046.0;
     s1+=90.0;
    }
   } else {
    if(i4<1.001085877418518){
     s0+=547.0;
     s1+=288.0;
    } else {
     s0+=400.0;
     s1+=6187.0;
    }
   }
  } else {
   if(i47<1.1861324310302734e-05){
    if(i37<0.00022610867745243013){
     s0+=840.0;
    } else {
     s0+=842.0;
     s1+=870.0;
    }
   } else {
    if(i69<0.12226614356040955){
     s0+=2107.0;
     s1+=19.0;
    } else {
     s0+=196.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i7<0.0018177265301346779){
   if(i24<0.001137753832153976){
    s1+=111.0;
   } else {
    if(i32<0.0017865553963929415){
     s0+=121.0;
    } else {
     s1+=46.0;
    }
   }
  } else {
   if(i0<0.0014176368713378906){
    if(i36<1.1268658638000488){
     s0+=36.0;
    } else {
     s0+=51.0;
     s1+=390.0;
    }
   } else {
    if(i11<0.952918529510498){
     s0+=9.0;
     s1+=61.0;
    } else {
     s0+=27.0;
     s1+=10366.0;
    }
   }
  }
 }
}
if(i9<1.011464238166809){
 if(i25<1.0045123100280762){
  if(i10<1.0110284090042114){
   if(i19<0.20775911211967468){
    if(i1<-9.148749086307362e-05){
     s0+=581.0;
     s1+=544.0;
    } else {
     s0+=110365.0;
     s1+=4096.0;
    }
   } else {
    if(i55<9.668118582339957e-05){
     s0+=114.0;
     s1+=7.0;
    } else {
     s0+=106.0;
     s1+=606.0;
    }
   }
  } else {
   if(i31<1.1178560256958008){
    s1+=554.0;
   } else {
    if(i68<-0.0035468635614961386){
     s0+=152.0;
     s1+=387.0;
    } else {
     s0+=824.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i24<0.0022909212857484818){
   if(i37<0.001120625645853579){
    if(i40<0.00017642872990109026){
     s0+=355.0;
     s1+=10.0;
    } else {
     s0+=13.0;
     s1+=683.0;
    }
   } else {
    if(i63<0.0005230605602264404){
     s0+=19.0;
     s1+=18.0;
    } else {
     s0+=2280.0;
     s1+=8.0;
    }
   }
  } else {
   if(i26<0.06980171799659729){
    if(i3<7.43865966796875e-05){
     s0+=604.0;
     s1+=159.0;
    } else {
     s0+=41.0;
     s1+=142.0;
    }
   } else {
    if(i4<1.0043730735778809){
     s0+=231.0;
     s1+=835.0;
    } else {
     s0+=57.0;
     s1+=2272.0;
    }
   }
  }
 }
} else {
 if(i7<0.003915297798812389){
  if(i33<0.0008746765670366585){
   if(i43<-2.115507231792435e-05){
    if(i16<0.00025961551000364125){
     s0+=4.0;
     s1+=611.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   } else {
    if(i16<0.00023986432643141598){
     s0+=57.0;
     s1+=24.0;
    } else {
     s0+=156.0;
    }
   }
  } else {
   if(i11<1.0217050313949585){
    if(i16<0.00028610226581804454){
     s1+=4.0;
    } else {
     s0+=629.0;
    }
   } else {
    if(i17<1.0194764137268066){
     s0+=1.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i39<-1.0305273463018239e-05){
   if(i49<-7.466106126230443e-06){
    s0+=42.0;
   } else {
    if(i38<0.005658193491399288){
     s0+=21.0;
     s1+=268.0;
    } else {
     s0+=8.0;
     s1+=12692.0;
    }
   }
  } else {
   s0+=10.0;
  }
 }
}
if(i3<6.335973739624023e-05){
 if(i57<0.31439870595932007){
  if(i5<1.7344951629638672e-05){
   if(i45<0.2048301100730896){
    if(i24<0.0008836754132062197){
     s0+=30328.0;
     s1+=2763.0;
    } else {
     s0+=77002.0;
     s1+=883.0;
    }
   } else {
    if(i56<1.0009541511535645){
     s0+=125.0;
     s1+=96.0;
    } else {
     s0+=32.0;
     s1+=148.0;
    }
   }
  } else {
   if(i28<0.009554717689752579){
    if(i8<1.0078375339508057){
     s0+=3772.0;
     s1+=59.0;
    } else {
     s0+=966.0;
     s1+=205.0;
    }
   } else {
    if(i22<-0.0002929866313934326){
     s0+=1396.0;
     s1+=506.0;
    } else {
     s0+=431.0;
     s1+=2067.0;
    }
   }
  }
 } else {
  if(i23<1.1021389961242676){
   if(i4<0.9955918788909912){
    s0+=372.0;
   } else {
    if(i20<1.0812389850616455){
     s1+=10.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i46<-1.9711515051312745e-05){
    if(i54<-3.0177382086549187e-06){
     s0+=5.0;
     s1+=1039.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i18<0.005380426533520222){
     s0+=56.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i34<1.116804838180542){
   if(i24<0.0010944163659587502){
    if(i40<0.00014660602028016){
     s0+=76.0;
    } else {
     s1+=2309.0;
    }
   } else {
    s0+=278.0;
   }
  } else {
   if(i28<0.018427859991788864){
    s0+=1621.0;
   } else {
    if(i43<0.00018790236208587885){
     s1+=60.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i59<-0.013395249843597412){
   if(i25<1.0148372650146484){
    if(i34<1.399658441543579){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=42.0;
    }
   } else {
    s1+=92.0;
   }
  } else {
   if(i45<0.08552074432373047){
    if(i4<1.0076179504394531){
     s0+=69.0;
     s1+=200.0;
    } else {
     s1+=1494.0;
    }
   } else {
    if(i7<0.003694957820698619){
     s0+=12.0;
     s1+=183.0;
    } else {
     s0+=6.0;
     s1+=12097.0;
    }
   }
  }
 }
}
if(i27<1.0212277173995972){
 if(i39<-5.433076512417756e-05){
  if(i31<1.1734975576400757){
   s0+=194.0;
  } else {
   if(i22<-0.000583261251449585){
    if(i1<-0.00013432427658699453){
     s0+=36.0;
     s1+=5.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i20<0.972511887550354){
     s0+=6.0;
     s1+=6.0;
    } else {
     s0+=15.0;
     s1+=1798.0;
    }
   }
  }
 } else {
  if(i5<1.6987323760986328e-05){
   if(i7<0.0033541845623403788){
    if(i33<0.0005180307198315859){
     s0+=60988.0;
     s1+=118.0;
    } else {
     s0+=21305.0;
     s1+=703.0;
    }
   } else {
    if(i4<0.9985604286193848){
     s0+=22483.0;
     s1+=761.0;
    } else {
     s0+=1776.0;
     s1+=2131.0;
    }
   }
  } else {
   if(i3<8.207559585571289e-05){
    if(i1<-4.809129313798621e-05){
     s0+=1366.0;
     s1+=1842.0;
    } else {
     s0+=5813.0;
     s1+=967.0;
    }
   } else {
    if(i16<0.0007127192802727222){
     s0+=89.0;
     s1+=2635.0;
    } else {
     s0+=787.0;
    }
   }
  }
 }
} else {
 if(i8<1.0193507671356201){
  if(i54<-4.202254331175936e-06){
   if(i1<-6.361096166074276e-05){
    if(i12<0.15177375078201294){
     s0+=120.0;
     s1+=368.0;
    } else {
     s0+=13.0;
     s1+=1007.0;
    }
   } else {
    if(i56<1.0029823780059814){
     s0+=271.0;
     s1+=460.0;
    } else {
     s0+=402.0;
     s1+=62.0;
    }
   }
  } else {
   if(i39<-8.43302950670477e-06){
    if(i0<5.957484245300293e-05){
     s1+=20.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i21<-0.0029791295528411865){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=541.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i21<-0.00178605318069458){
   if(i34<1.2354635000228882){
    if(i31<1.4179863929748535){
     s0+=66.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=60.0;
   }
  } else {
   if(i54<-2.8496081085904734e-06){
    if(i1<-3.1550567655358464e-05){
     s0+=49.0;
     s1+=11284.0;
    } else {
     s0+=37.0;
     s1+=70.0;
    }
   } else {
    s0+=99.0;
   }
  }
 }
}
if(i4<1.0038506984710693){
 if(i2<1.0023819208145142){
  if(i27<1.021565556526184){
   if(i45<0.22984635829925537){
    if(i24<0.0008889894234016538){
     s0+=30941.0;
     s1+=2949.0;
    } else {
     s0+=77570.0;
     s1+=853.0;
    }
   } else {
    if(i39<-7.709244528086856e-06){
     s1+=180.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i5<8.046627044677734e-06){
    if(i29<0.008778301998972893){
     s0+=665.0;
     s1+=105.0;
    } else {
     s0+=13.0;
     s1+=122.0;
    }
   } else {
    if(i3<-4.553794860839844e-05){
     s0+=29.0;
     s1+=8.0;
    } else {
     s0+=75.0;
     s1+=474.0;
    }
   }
  }
 } else {
  if(i12<0.1491709053516388){
   if(i48<0.9775383472442627){
    if(i61<-0.0071391761302948){
     s0+=451.0;
     s1+=87.0;
    } else {
     s0+=432.0;
     s1+=559.0;
    }
   } else {
    if(i35<0.00045675039291381836){
     s0+=544.0;
     s1+=234.0;
    } else {
     s0+=1343.0;
     s1+=45.0;
    }
   }
  } else {
   if(i40<0.002662351820617914){
    if(i9<1.0089633464813232){
     s0+=117.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i33<0.0017488697776570916){
     s0+=98.0;
     s1+=331.0;
    } else {
     s0+=5.0;
     s1+=669.0;
    }
   }
  }
 }
} else {
 if(i30<1.1766420602798462){
  if(i52<1.0009739398956299){
   if(i46<-0.00022742508735973388){
    if(i16<0.0002651920076459646){
     s0+=6.0;
     s1+=1224.0;
    } else {
     s0+=162.0;
    }
   } else {
    if(i32<0.0008808720158413053){
     s0+=528.0;
     s1+=1486.0;
    } else {
     s0+=1130.0;
    }
   }
  } else {
   if(i57<0.07913310825824738){
    s0+=2121.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i58<0.00020895841589663178){
   if(i6<0.002013683319091797){
    s0+=127.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i12<0.09768173098564148){
    if(i52<1.001110553741455){
     s0+=113.0;
     s1+=125.0;
    } else {
     s0+=51.0;
     s1+=615.0;
    }
   } else {
    if(i18<0.012327942065894604){
     s0+=34.0;
     s1+=14177.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i6<0.0005700588226318359){
 if(i42<1.1393959522247314){
  if(i23<1.122455358505249){
   if(i35<9.125471115112305e-05){
    if(i19<0.23173606395721436){
     s0+=78323.0;
     s1+=906.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   } else {
    if(i36<1.0902695655822754){
     s0+=6827.0;
     s1+=2082.0;
    } else {
     s0+=22062.0;
     s1+=761.0;
    }
   }
  } else {
   if(i38<0.07437369227409363){
    if(i1<-6.546915392391384e-05){
     s0+=108.0;
     s1+=141.0;
    } else {
     s0+=2316.0;
     s1+=115.0;
    }
   } else {
    if(i56<1.00083589553833){
     s0+=108.0;
     s1+=110.0;
    } else {
     s0+=19.0;
     s1+=394.0;
    }
   }
  }
 } else {
  if(i7<0.0062118228524923325){
   s0+=228.0;
  } else {
   s1+=392.0;
  }
 }
} else {
 if(i8<1.0164823532104492){
  if(i23<1.1698036193847656){
   if(i7<0.003450365038588643){
    if(i35<0.0005117356777191162){
     s0+=746.0;
     s1+=342.0;
    } else {
     s0+=3607.0;
     s1+=31.0;
    }
   } else {
    if(i0<8.64267349243164e-05){
     s0+=917.0;
     s1+=241.0;
    } else {
     s0+=997.0;
     s1+=3649.0;
    }
   }
  } else {
   if(i8<0.8791054487228394){
    s0+=6.0;
   } else {
    if(i38<0.0689118355512619){
     s0+=18.0;
     s1+=48.0;
    } else {
     s0+=6.0;
     s1+=1742.0;
    }
   }
  }
 } else {
  if(i49<-6.076356385165127e-06){
   if(i14<1.0369453430175781){
    s0+=141.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i1<-3.197797923348844e-05){
    if(i19<0.14605486392974854){
     s0+=112.0;
     s1+=1695.0;
    } else {
     s0+=8.0;
     s1+=11451.0;
    }
   } else {
    if(i7<0.0045443568378686905){
     s0+=76.0;
    } else {
     s0+=2.0;
     s1+=94.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i28<0.0605810210108757){
  if(i51<-1.2578627320181113e-05){
   if(i49<-6.56937754683895e-06){
    s0+=96.0;
   } else {
    if(i13<1.013838291168213){
     s0+=1.0;
     s1+=679.0;
    } else {
     s0+=14.0;
     s1+=125.0;
    }
   }
  } else {
   if(i6<0.0003268122673034668){
    if(i35<7.098913192749023e-05){
     s0+=75546.0;
     s1+=759.0;
    } else {
     s0+=28766.0;
     s1+=2090.0;
    }
   } else {
    if(i28<0.009552545845508575){
     s0+=8408.0;
     s1+=741.0;
    } else {
     s0+=2288.0;
     s1+=3083.0;
    }
   }
  }
 } else {
  if(i1<-5.3571260650642216e-05){
   if(i59<-0.016712844371795654){
    if(i20<0.994971513748169){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   } else {
    if(i42<0.8797170519828796){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=2030.0;
    }
   }
  } else {
   if(i2<0.999567985534668){
    s0+=377.0;
   } else {
    if(i66<0.0010848864912986755){
     s0+=18.0;
     s1+=12.0;
    } else {
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i0<0.0002351999282836914){
  if(i43<3.3248150430154055e-05){
   s0+=253.0;
  } else {
   if(i52<1.002134084701538){
    if(i16<0.00011062383418902755){
     s0+=37.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=273.0;
    }
   } else {
    if(i18<0.004968489520251751){
     s0+=131.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i16<0.0007118552457541227){
   if(i39<-1.3358498108573258e-05){
    if(i60<1.0116232633590698){
     s0+=140.0;
     s1+=14069.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i33<0.0008497611852362752){
     s0+=104.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   s0+=551.0;
  }
 }
}
if(i1<-7.64209107728675e-05){
 if(i9<0.9737211465835571){
  if(i12<0.09731948375701904){
   if(i67<0.020873285830020905){
    if(i52<1.002518653869629){
     s0+=984.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i74<0.05181942507624626){
     s0+=171.0;
     s1+=17.0;
    } else {
     s0+=22.0;
     s1+=57.0;
    }
   }
  } else {
   if(i8<0.9032346606254578){
    if(i34<1.629280686378479){
     s0+=17.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i64<-5.194879577175016e-06){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i56<1.0006622076034546){
   if(i44<1.1876764297485352){
    if(i60<1.0005974769592285){
     s0+=443.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i37<0.013257039710879326){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=442.0;
    }
   }
  } else {
   if(i44<1.127584457397461){
    if(i47<2.2232532501220703e-05){
     s0+=158.0;
     s1+=2127.0;
    } else {
     s0+=102.0;
     s1+=10.0;
    }
   } else {
    if(i21<-0.001376509666442871){
     s0+=97.0;
     s1+=1225.0;
    } else {
     s0+=31.0;
     s1+=13181.0;
    }
   }
  }
 }
} else {
 if(i5<1.3530254364013672e-05){
  if(i7<0.0028421697206795216){
   if(i14<0.9928308725357056){
    if(i63<0.00014056076179258525){
     s0+=438.0;
     s1+=163.0;
    } else {
     s0+=9498.0;
     s1+=184.0;
    }
   } else {
    if(i44<1.1354830265045166){
     s0+=64891.0;
     s1+=180.0;
    } else {
     s0+=1265.0;
     s1+=72.0;
    }
   }
  } else {
   if(i5<-2.562999725341797e-06){
    if(i53<0.999010443687439){
     s0+=19782.0;
     s1+=60.0;
    } else {
     s0+=5519.0;
     s1+=396.0;
    }
   } else {
    if(i31<1.1185983419418335){
     s0+=288.0;
     s1+=1522.0;
    } else {
     s0+=2859.0;
     s1+=394.0;
    }
   }
  }
 } else {
  if(i22<0.0001868605613708496){
   if(i16<0.0003495897108223289){
    if(i46<-0.00016336608678102493){
     s0+=756.0;
     s1+=1888.0;
    } else {
     s0+=2868.0;
     s1+=1018.0;
    }
   } else {
    if(i37<0.012889858335256577){
     s0+=5527.0;
     s1+=117.0;
    } else {
     s0+=31.0;
     s1+=132.0;
    }
   }
  } else {
   if(i24<0.001111656310968101){
    s1+=1011.0;
   } else {
    if(i37<0.0020756623707711697){
     s0+=531.0;
    } else {
     s0+=8.0;
     s1+=143.0;
    }
   }
  }
 }
}
if(i15<1.0176970958709717){
 if(i0<0.001189887523651123){
  if(i19<0.20533204078674316){
   if(i5<1.5079975128173828e-05){
    if(i2<0.9994460344314575){
     s0+=51492.0;
     s1+=286.0;
    } else {
     s0+=54235.0;
     s1+=2833.0;
    }
   } else {
    if(i50<0.03156308829784393){
     s0+=7135.0;
     s1+=1300.0;
    } else {
     s0+=1188.0;
     s1+=1342.0;
    }
   }
  } else {
   if(i50<0.04600178077816963){
    if(i7<0.006246510427445173){
     s0+=230.0;
     s1+=10.0;
    } else {
     s0+=12.0;
     s1+=56.0;
    }
   } else {
    if(i24<0.0025538443587720394){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=711.0;
    }
   }
  }
 } else {
  if(i49<-6.737806870660279e-06){
   s0+=531.0;
  } else {
   if(i0<0.0017887353897094727){
    if(i55<4.2322109948145226e-05){
     s0+=297.0;
     s1+=199.0;
    } else {
     s0+=147.0;
     s1+=878.0;
    }
   } else {
    if(i43<0.0002949435729533434){
     s0+=13.0;
     s1+=2493.0;
    } else {
     s0+=10.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i3<2.187490463256836e-05){
  if(i7<0.0055794189684093){
   if(i21<-0.0031399130821228027){
    if(i54<-9.72894486039877e-06){
     s0+=20.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i36<1.1489096879959106){
     s0+=290.0;
     s1+=23.0;
    } else {
     s0+=457.0;
    }
   }
  } else {
   if(i6<-0.0007902681827545166){
    if(i57<0.34809449315071106){
     s0+=14.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i23<1.1155459880828857){
     s0+=32.0;
     s1+=53.0;
    } else {
     s1+=420.0;
    }
   }
  }
 } else {
  if(i37<0.0023685405030846596){
   if(i30<1.1176170110702515){
    if(i31<1.125709891319275){
     s1+=1407.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i15<1.0258100032806396){
     s0+=427.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i45<0.06042388081550598){
    if(i0<0.0012515783309936523){
     s0+=55.0;
    } else {
     s1+=302.0;
    }
   } else {
    if(i19<0.09730783104896545){
     s0+=31.0;
     s1+=35.0;
    } else {
     s0+=51.0;
     s1+=11756.0;
    }
   }
  }
 }
}
if(i0<0.0009607076644897461){
 if(i48<1.0341947078704834){
  if(i18<0.0018314361805096269){
   if(i31<1.0905578136444092){
    if(i34<1.05497145652771){
     s0+=17982.0;
     s1+=113.0;
    } else {
     s0+=4296.0;
     s1+=737.0;
    }
   } else {
    if(i40<0.0018065455369651318){
     s0+=65735.0;
     s1+=150.0;
    } else {
     s0+=4835.0;
     s1+=188.0;
    }
   }
  } else {
   if(i16<0.0002582193701528013){
    if(i29<0.0012155745644122362){
     s0+=385.0;
     s1+=2576.0;
    } else {
     s0+=5458.0;
     s1+=878.0;
    }
   } else {
    if(i66<0.0066108922474086285){
     s0+=14752.0;
     s1+=1223.0;
    } else {
     s0+=147.0;
     s1+=488.0;
    }
   }
  }
 } else {
  if(i5<8.404254913330078e-06){
   if(i39<-8.48710351419868e-06){
    if(i23<1.1231228113174438){
     s0+=77.0;
     s1+=20.0;
    } else {
     s0+=19.0;
     s1+=176.0;
    }
   } else {
    if(i22<-0.0004315376281738281){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=537.0;
     s1+=1.0;
    }
   }
  } else {
   if(i23<1.167208194732666){
    if(i19<0.1241559088230133){
     s0+=217.0;
     s1+=50.0;
    } else {
     s0+=171.0;
     s1+=609.0;
    }
   } else {
    if(i39<-8.215736670535989e-06){
     s1+=665.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i36<1.1703872680664062){
  if(i43<-2.9977793019497767e-05){
   if(i1<-0.00020269272499717772){
    if(i49<-3.905410267179832e-06){
     s0+=51.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i49<-5.968242476228625e-06){
     s0+=25.0;
    } else {
     s1+=1332.0;
    }
   }
  } else {
   if(i63<0.0007057955954223871){
    if(i24<0.00020642380695790052){
     s0+=79.0;
    } else {
     s0+=27.0;
     s1+=1102.0;
    }
   } else {
    if(i31<1.1979892253875732){
     s0+=1766.0;
     s1+=60.0;
    } else {
     s0+=18.0;
     s1+=478.0;
    }
   }
  }
 } else {
  if(i31<1.629280686378479){
   if(i15<0.9037315845489502){
    if(i18<0.005743540823459625){
     s0+=24.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=100.0;
    }
   } else {
    if(i59<-0.014171570539474487){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=12602.0;
    }
   }
  } else {
   if(i44<1.1868131160736084){
    if(i3<0.0001347064971923828){
     s0+=55.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i19<0.009231925010681152){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=598.0;
    }
   }
  }
 }
}
if(i6<0.0005717873573303223){
 if(i28<0.06505270302295685){
  if(i24<0.0008851554011926055){
   if(i35<7.098913192749023e-05){
    if(i16<0.00017628812929615378){
     s0+=23194.0;
     s1+=330.0;
    } else {
     s0+=2966.0;
     s1+=348.0;
    }
   } else {
    if(i50<0.012620292603969574){
     s0+=4059.0;
     s1+=717.0;
    } else {
     s0+=359.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i15<1.0195518732070923){
    if(i26<0.23338669538497925){
     s0+=78472.0;
     s1+=946.0;
    } else {
     s0+=49.0;
     s1+=105.0;
    }
   } else {
    if(i18<0.001483533182181418){
     s0+=202.0;
     s1+=6.0;
    } else {
     s0+=152.0;
     s1+=350.0;
    }
   }
  }
 } else {
  if(i3<-0.00014480948448181152){
   if(i51<7.606015424244106e-05){
    s1+=2.0;
   } else {
    s0+=242.0;
   }
  } else {
   if(i20<0.9901257753372192){
    if(i72<-0.1463617980480194){
     s1+=5.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=520.0;
   }
  }
 }
} else {
 if(i28<0.009401100687682629){
  if(i35<0.0005103349685668945){
   if(i3<6.312131881713867e-05){
    if(i11<1.0090487003326416){
     s0+=779.0;
     s1+=44.0;
    } else {
     s0+=11.0;
     s1+=119.0;
    }
   } else {
    if(i60<0.9984987378120422){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=44.0;
     s1+=1926.0;
    }
   }
  } else {
   if(i17<1.0151152610778809){
    if(i11<1.0233259201049805){
     s0+=4231.0;
     s1+=52.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i4<1.0080268383026123){
     s0+=5.0;
    } else {
     s1+=393.0;
    }
   }
  }
 } else {
  if(i7<0.004945139400660992){
   if(i60<1.0034035444259644){
    if(i44<1.1073942184448242){
     s0+=101.0;
     s1+=65.0;
    } else {
     s0+=40.0;
     s1+=323.0;
    }
   } else {
    if(i25<1.0116512775421143){
     s0+=410.0;
     s1+=6.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i19<0.05663558840751648){
    if(i6<0.0014213323593139648){
     s0+=564.0;
     s1+=205.0;
    } else {
     s0+=65.0;
     s1+=185.0;
    }
   } else {
    if(i4<0.9997571110725403){
     s0+=171.0;
     s1+=130.0;
    } else {
     s0+=228.0;
     s1+=15871.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i28<0.06222312152385712){
  if(i33<0.0007041534991003573){
   if(i0<0.001346886157989502){
    if(i29<0.0019266443559899926){
     s0+=74510.0;
     s1+=310.0;
    } else {
     s0+=5585.0;
     s1+=232.0;
    }
   } else {
    if(i16<0.0004033526929561049){
     s0+=1.0;
     s1+=413.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i24<0.0009550844551995397){
    if(i24<0.00023024249821901321){
     s0+=2720.0;
     s1+=96.0;
    } else {
     s0+=1130.0;
     s1+=3468.0;
    }
   } else {
    if(i7<0.008211974054574966){
     s0+=27150.0;
     s1+=973.0;
    } else {
     s0+=3841.0;
     s1+=2000.0;
    }
   }
  }
 } else {
  if(i0<-0.002405911684036255){
   if(i55<0.0025833877734839916){
    s0+=359.0;
   } else {
    if(i2<0.9927995800971985){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i59<-0.017483621835708618){
    if(i25<1.0190778970718384){
     s0+=57.0;
     s1+=28.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i63<0.0007782619213685393){
     s0+=8.0;
     s1+=8.0;
    } else {
     s0+=25.0;
     s1+=2008.0;
    }
   }
  }
 }
} else {
 if(i9<1.0143625736236572){
  if(i1<-4.643409192794934e-05){
   if(i28<0.014033904299139977){
    if(i58<0.0007482729852199554){
     s0+=15.0;
     s1+=326.0;
    } else {
     s0+=397.0;
     s1+=62.0;
    }
   } else {
    if(i54<-2.065947228402365e-06){
     s0+=67.0;
     s1+=1998.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i60<1.003554105758667){
    if(i40<0.0012245079269632697){
     s0+=6.0;
     s1+=164.0;
    } else {
     s0+=272.0;
     s1+=201.0;
    }
   } else {
    if(i19<0.2240561544895172){
     s0+=350.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i35<0.0018943548202514648){
   if(i32<0.0019636228680610657){
    if(i54<-1.5357181837316602e-05){
     s0+=43.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=988.0;
    }
   } else {
    if(i26<0.05932202935218811){
     s0+=1.0;
     s1+=24.0;
    } else {
     s1+=10875.0;
    }
   }
  } else {
   s0+=12.0;
  }
 }
}
if(i6<0.0005905032157897949){
 if(i20<1.1403393745422363){
  if(i5<1.6391277313232422e-05){
   if(i6<0.00020319223403930664){
    if(i18<0.0013842222979292274){
     s0+=74601.0;
     s1+=470.0;
    } else {
     s0+=23905.0;
     s1+=1815.0;
    }
   } else {
    if(i33<0.0007033855654299259){
     s0+=6358.0;
     s1+=4.0;
    } else {
     s0+=2117.0;
     s1+=1331.0;
    }
   }
  } else {
   if(i35<0.00023931264877319336){
    if(i23<1.0687981843948364){
     s0+=73.0;
     s1+=293.0;
    } else {
     s0+=369.0;
     s1+=122.0;
    }
   } else {
    if(i2<1.0021345615386963){
     s0+=1444.0;
     s1+=46.0;
    } else {
     s0+=835.0;
     s1+=421.0;
    }
   }
  }
 } else {
  if(i16<0.0003142229397781193){
   if(i56<1.0008232593536377){
    if(i18<0.0020140591077506542){
     s0+=485.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i2<1.0033848285675049){
     s0+=2.0;
     s1+=226.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i57<0.10662412643432617){
    if(i20<1.187452793121338){
     s0+=19.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i19<0.01298549771308899){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=400.0;
    }
   }
  }
 }
} else {
 if(i1<-7.457345782313496e-05){
  if(i19<0.04245355725288391){
   if(i31<1.4247384071350098){
    if(i74<0.04129194840788841){
     s0+=320.0;
     s1+=34.0;
    } else {
     s0+=18.0;
     s1+=55.0;
    }
   } else {
    if(i11<0.987830400466919){
     s0+=44.0;
     s1+=42.0;
    } else {
     s0+=8.0;
     s1+=71.0;
    }
   }
  } else {
   if(i29<0.0024505567271262407){
    if(i35<0.0004540979862213135){
     s0+=29.0;
     s1+=1210.0;
    } else {
     s0+=348.0;
    }
   } else {
    if(i42<0.8857340812683105){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=113.0;
     s1+=14760.0;
    }
   }
  }
 } else {
  if(i60<1.0032817125320435){
   if(i32<0.0001954154868144542){
    s0+=1269.0;
   } else {
    if(i37<0.0009698058711364865){
     s0+=8.0;
     s1+=1442.0;
    } else {
     s0+=1488.0;
     s1+=978.0;
    }
   }
  } else {
   if(i25<1.0118144750595093){
    if(i42<1.1207642555236816){
     s0+=2687.0;
     s1+=206.0;
    } else {
     s0+=100.0;
     s1+=128.0;
    }
   } else {
    s1+=83.0;
   }
  }
 }
}
if(i9<1.012772798538208){
 if(i19<0.20116794109344482){
  if(i10<1.0090718269348145){
   if(i2<1.0026342868804932){
    if(i2<0.9995272755622864){
     s0+=53338.0;
     s1+=328.0;
    } else {
     s0+=55062.0;
     s1+=3337.0;
    }
   } else {
    if(i61<-0.0003974437713623047){
     s0+=1471.0;
     s1+=2263.0;
    } else {
     s0+=1990.0;
     s1+=407.0;
    }
   }
  } else {
   if(i24<0.0009829162154346704){
    if(i33<0.00026655726833269){
     s0+=134.0;
     s1+=18.0;
    } else {
     s0+=25.0;
     s1+=1439.0;
    }
   } else {
    if(i28<0.023384617641568184){
     s0+=3502.0;
     s1+=176.0;
    } else {
     s0+=149.0;
     s1+=407.0;
    }
   }
  }
 } else {
  if(i65<0.056621454656124115){
   if(i39<-1.6781013982836157e-05){
    if(i28<0.020702272653579712){
     s0+=44.0;
     s1+=10.0;
    } else {
     s0+=24.0;
     s1+=203.0;
    }
   } else {
    if(i8<1.0275503396987915){
     s0+=340.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i33<0.0005448606098070741){
    if(i54<-3.6369449389894726e-06){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i7<0.006278231739997864){
     s0+=49.0;
     s1+=40.0;
    } else {
     s0+=3.0;
     s1+=2532.0;
    }
   }
  }
 }
} else {
 if(i7<0.002196378307417035){
  if(i51<-1.6395591956097633e-05){
   if(i64<-1.7335632946924306e-06){
    if(i6<0.001367807388305664){
     s0+=1.0;
    } else {
     s1+=163.0;
    }
   } else {
    s0+=7.0;
   }
  } else {
   s0+=253.0;
  }
 } else {
  if(i16<0.0009374562650918961){
   if(i54<-3.6658764202002203e-06){
    if(i5<0.0002598762512207031){
     s0+=12.0;
     s1+=12935.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=22.0;
   }
  } else {
   s0+=56.0;
  }
 }
}
if(i9<1.0108106136322021){
 if(i1<-8.679615712026134e-05){
  if(i61<-0.00713193416595459){
   if(i9<0.9739558696746826){
    if(i45<0.10564574599266052){
     s0+=757.0;
     s1+=52.0;
    } else {
     s0+=9.0;
     s1+=31.0;
    }
   } else {
    if(i69<0.3210834860801697){
     s0+=25.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=77.0;
    }
   }
  } else {
   if(i31<1.1743842363357544){
    if(i16<8.184953185264021e-05){
     s1+=10.0;
    } else {
     s0+=222.0;
    }
   } else {
    if(i12<0.0496058464050293){
     s0+=176.0;
     s1+=130.0;
    } else {
     s0+=50.0;
     s1+=3402.0;
    }
   }
  }
 } else {
  if(i18<0.001736646518111229){
   if(i51<-1.2469007742765825e-05){
    if(i1<-5.6602806580485776e-05){
     s0+=2.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i33<0.0005332392756827176){
     s0+=69425.0;
     s1+=155.0;
    } else {
     s0+=22642.0;
     s1+=859.0;
    }
   }
  } else {
   if(i43<0.00010404607019154355){
    if(i28<0.009706255048513412){
     s0+=5031.0;
     s1+=899.0;
    } else {
     s0+=2470.0;
     s1+=3446.0;
    }
   } else {
    if(i19<0.20239895582199097){
     s0+=14497.0;
     s1+=686.0;
    } else {
     s0+=82.0;
     s1+=287.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019912910647690296){
  if(i29<0.0012977374717593193){
   if(i52<0.9997119903564453){
    s0+=25.0;
   } else {
    if(i31<1.1294310092926025){
     s1+=1800.0;
    } else {
     s0+=32.0;
    }
   }
  } else {
   if(i34<1.096491813659668){
    s1+=84.0;
   } else {
    if(i51<-5.143573434907012e-05){
     s1+=11.0;
    } else {
     s0+=1041.0;
    }
   }
  }
 } else {
  if(i24<0.002557549625635147){
   if(i31<1.415489673614502){
    if(i5<-0.0006522238254547119){
     s0+=2.0;
    } else {
     s1+=94.0;
    }
   } else {
    s0+=92.0;
   }
  } else {
   if(i3<-3.2842159271240234e-05){
    s0+=15.0;
   } else {
    if(i1<-6.730294262524694e-05){
     s0+=2.0;
     s1+=11869.0;
    } else {
     s0+=17.0;
     s1+=219.0;
    }
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i27<1.0242586135864258){
  if(i66<0.004606188274919987){
   if(i55<0.00022991281002759933){
    if(i6<0.00031179189682006836){
     s0+=82946.0;
     s1+=1210.0;
    } else {
     s0+=7493.0;
     s1+=1362.0;
    }
   } else {
    if(i23<1.1075191497802734){
     s0+=21013.0;
     s1+=2014.0;
    } else {
     s0+=933.0;
     s1+=700.0;
    }
   }
  } else {
   if(i28<0.03785691410303116){
    if(i4<1.001704454421997){
     s0+=973.0;
     s1+=65.0;
    } else {
     s0+=16.0;
     s1+=30.0;
    }
   } else {
    if(i59<-0.019082456827163696){
     s0+=64.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=884.0;
    }
   }
  }
 } else {
  if(i24<0.0004581672546919435){
   if(i52<1.0005971193313599){
    s0+=150.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i7<0.005208120681345463){
    if(i4<1.0028526782989502){
     s0+=503.0;
     s1+=27.0;
    } else {
     s0+=72.0;
     s1+=87.0;
    }
   } else {
    if(i22<-0.0006628334522247314){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=23.0;
     s1+=1496.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i9<1.0143113136291504){
   if(i16<0.0002448976447340101){
    if(i66<0.0008565597236156464){
     s0+=15.0;
     s1+=1261.0;
    } else {
     s0+=41.0;
     s1+=31.0;
    }
   } else {
    s0+=1920.0;
   }
  } else {
   if(i35<0.0006805658340454102){
    s1+=1043.0;
   } else {
    s0+=90.0;
   }
  }
 } else {
  if(i27<0.9025173187255859){
   if(i18<0.005628311540931463){
    if(i6<0.0017157793045043945){
     s0+=35.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   } else {
    if(i73<-0.0018888115882873535){
     s0+=1.0;
     s1+=155.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i19<0.0940406322479248){
    if(i16<0.0003863298916257918){
     s0+=10.0;
     s1+=342.0;
    } else {
     s0+=38.0;
     s1+=51.0;
    }
   } else {
    if(i4<1.0010643005371094){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=13617.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i5<1.901388168334961e-05){
  if(i7<0.003626090008765459){
   if(i31<1.1162974834442139){
    if(i24<0.00018388079479336739){
     s0+=10370.0;
     s1+=2.0;
    } else {
     s0+=14864.0;
     s1+=810.0;
    }
   } else {
    if(i13<1.018606424331665){
     s0+=60176.0;
     s1+=169.0;
    } else {
     s0+=253.0;
     s1+=37.0;
    }
   }
  } else {
   if(i6<-8.922815322875977e-05){
    if(i7<0.01536891981959343){
     s0+=19088.0;
     s1+=217.0;
    } else {
     s0+=93.0;
     s1+=149.0;
    }
   } else {
    if(i0<-0.0005599260330200195){
     s0+=2533.0;
     s1+=318.0;
    } else {
     s0+=874.0;
     s1+=2344.0;
    }
   }
  }
 } else {
  if(i16<0.000704434234648943){
   if(i3<6.335973739624023e-05){
    if(i7<0.00413128174841404){
     s0+=2066.0;
     s1+=63.0;
    } else {
     s0+=1527.0;
     s1+=2336.0;
    }
   } else {
    if(i0<0.0014020204544067383){
     s0+=253.0;
     s1+=853.0;
    } else {
     s0+=35.0;
     s1+=2429.0;
    }
   }
  } else {
   s0+=3169.0;
  }
 }
} else {
 if(i21<0.001965165138244629){
  if(i34<1.1757044792175293){
   if(i47<1.1026859283447266e-05){
    if(i52<0.9996955990791321){
     s0+=162.0;
    } else {
     s0+=74.0;
     s1+=950.0;
    }
   } else {
    if(i63<0.0004172464250586927){
     s1+=26.0;
    } else {
     s0+=584.0;
     s1+=3.0;
    }
   }
  } else {
   if(i36<1.6238889694213867){
    if(i7<0.004986017011106014){
     s0+=212.0;
     s1+=36.0;
    } else {
     s0+=12.0;
     s1+=2877.0;
    }
   } else {
    if(i28<0.05677666515111923){
     s0+=159.0;
    } else {
     s1+=22.0;
    }
   }
  }
 } else {
  if(i64<1.7101338016800582e-05){
   if(i16<0.0016900928458198905){
    s1+=10696.0;
   } else {
    s0+=6.0;
   }
  } else {
   s0+=13.0;
  }
 }
}
if(i0<0.0009613633155822754){
 if(i33<0.0007268479093909264){
  if(i27<1.0255444049835205){
   if(i33<0.0005640232702717185){
    if(i30<1.1758689880371094){
     s0+=66773.0;
     s1+=80.0;
    } else {
     s0+=4384.0;
     s1+=102.0;
    }
   } else {
    if(i6<-0.0003604888916015625){
     s0+=4916.0;
    } else {
     s0+=4983.0;
     s1+=362.0;
    }
   }
  } else {
   if(i36<1.1426570415496826){
    if(i37<0.0024739783257246017){
     s0+=133.0;
     s1+=12.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i23<1.123903512954712){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=251.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<-0.0003940165042877197){
   if(i29<0.00030162191251292825){
    if(i3<-4.6879053115844727e-05){
     s0+=15.0;
    } else {
     s1+=152.0;
    }
   } else {
    if(i42<1.1402966976165771){
     s0+=25634.0;
     s1+=1027.0;
    } else {
     s0+=18.0;
     s1+=133.0;
    }
   }
  } else {
   if(i7<0.004120503552258015){
    if(i7<0.0031104302033782005){
     s0+=4514.0;
     s1+=174.0;
    } else {
     s0+=1187.0;
     s1+=521.0;
    }
   } else {
    if(i52<0.9993034601211548){
     s0+=400.0;
     s1+=82.0;
    } else {
     s0+=1059.0;
     s1+=5287.0;
    }
   }
  }
 }
} else {
 if(i15<1.0238850116729736){
  if(i24<0.002399804536253214){
   if(i66<0.00047711696242913604){
    if(i33<0.0010624052956700325){
     s0+=16.0;
     s1+=1745.0;
    } else {
     s0+=152.0;
     s1+=7.0;
    }
   } else {
    if(i24<0.0009643260855227709){
     s1+=108.0;
    } else {
     s0+=1794.0;
    }
   }
  } else {
   if(i55<0.0030546430498361588){
    if(i45<0.0827106237411499){
     s0+=58.0;
     s1+=810.0;
    } else {
     s0+=1.0;
     s1+=2396.0;
    }
   } else {
    if(i36<1.364558458328247){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i4<1.0005228519439697){
   s0+=14.0;
  } else {
   if(i14<1.022620677947998){
    if(i16<0.000754115404561162){
     s1+=203.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i16<0.0008863499970175326){
     s0+=2.0;
     s1+=11093.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i25<1.0046154260635376){
 if(i14<1.0166401863098145){
  if(i38<0.1899326890707016){
   if(i7<0.003634197171777487){
    if(i31<1.1162974834442139){
     s0+=27030.0;
     s1+=820.0;
    } else {
     s0+=60609.0;
     s1+=188.0;
    }
   } else {
    if(i4<0.9986296892166138){
     s0+=21266.0;
     s1+=676.0;
    } else {
     s0+=2078.0;
     s1+=3313.0;
    }
   }
  } else {
   if(i9<0.9527849555015564){
    if(i58<0.044732075184583664){
     s0+=167.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i65<0.12809813022613525){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=482.0;
    }
   }
  }
 } else {
  if(i6<0.00029736757278442383){
   if(i28<0.05610734224319458){
    if(i2<1.0001132488250732){
     s0+=404.0;
    } else {
     s0+=285.0;
     s1+=120.0;
    }
   } else {
    if(i21<-0.005908101797103882){
     s0+=1.0;
    } else {
     s1+=112.0;
    }
   }
  } else {
   if(i0<2.6106834411621094e-05){
    if(i50<0.05756189674139023){
     s0+=196.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=112.0;
    }
   } else {
    if(i7<0.0043691121973097324){
     s0+=83.0;
     s1+=47.0;
    } else {
     s0+=60.0;
     s1+=2040.0;
    }
   }
  }
 }
} else {
 if(i29<0.002673104405403137){
  if(i47<9.953975677490234e-06){
   if(i24<0.0009846989996731281){
    if(i31<1.0610902309417725){
     s0+=34.0;
    } else {
     s1+=1913.0;
    }
   } else {
    if(i30<1.1599884033203125){
     s0+=333.0;
     s1+=4.0;
    } else {
     s0+=70.0;
     s1+=83.0;
    }
   }
  } else {
   if(i35<0.0005043745040893555){
    if(i40<0.001238205237314105){
     s0+=1.0;
     s1+=153.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i32<0.001965839182958007){
     s0+=2880.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i23<1.07395601272583){
   if(i22<-0.00033020973205566406){
    if(i12<0.10235348343849182){
     s0+=511.0;
     s1+=74.0;
    } else {
     s0+=10.0;
     s1+=58.0;
    }
   } else {
    if(i61<0.0005722343921661377){
     s0+=5.0;
     s1+=214.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<6.479024887084961e-05){
    if(i26<0.13800403475761414){
     s0+=220.0;
     s1+=315.0;
    } else {
     s0+=54.0;
     s1+=769.0;
    }
   } else {
    if(i55<0.0047424472868442535){
     s0+=47.0;
     s1+=12883.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i2<1.0026333332061768){
 if(i12<0.20766690373420715){
  if(i18<0.001719426130875945){
   if(i8<0.9963101744651794){
    if(i21<-0.0013476014137268066){
     s0+=8639.0;
     s1+=2.0;
    } else {
     s0+=11461.0;
     s1+=572.0;
    }
   } else {
    if(i39<-1.9380848243599758e-05){
     s0+=23.0;
     s1+=8.0;
    } else {
     s0+=69035.0;
     s1+=380.0;
    }
   }
  } else {
   if(i30<1.1164028644561768){
    if(i34<1.0498223304748535){
     s0+=2121.0;
     s1+=24.0;
    } else {
     s0+=1007.0;
     s1+=3048.0;
    }
   } else {
    if(i28<0.07361090183258057){
     s0+=17851.0;
     s1+=709.0;
    } else {
     s0+=67.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i7<0.0048084622249007225){
   if(i39<-8.016733772819862e-06){
    if(i11<1.00640869140625){
     s0+=20.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i26<0.21204650402069092){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=146.0;
    }
   }
  } else {
   if(i36<1.1353986263275146){
    if(i40<0.00736323744058609){
     s0+=14.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i39<-4.628531314665452e-06){
     s0+=5.0;
     s1+=739.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i29<0.0025819619186222553){
  if(i37<0.0011594598181545734){
   if(i29<0.0002943950821645558){
    s0+=723.0;
   } else {
    if(i21<0.001082003116607666){
     s0+=52.0;
     s1+=266.0;
    } else {
     s1+=1786.0;
    }
   }
  } else {
   if(i30<1.0981338024139404){
    s1+=243.0;
   } else {
    if(i28<0.014672667719423771){
     s0+=3394.0;
     s1+=36.0;
    } else {
     s0+=66.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i51<2.7880196284968406e-05){
   if(i45<0.06009587645530701){
    if(i58<0.0006287862197495997){
     s0+=187.0;
     s1+=16.0;
    } else {
     s0+=134.0;
     s1+=770.0;
    }
   } else {
    if(i32<0.004754306748509407){
     s0+=99.0;
     s1+=2659.0;
    } else {
     s0+=44.0;
     s1+=10936.0;
    }
   }
  } else {
   if(i39<-3.963483322877437e-05){
    if(i19<0.045153290033340454){
     s0+=323.0;
     s1+=87.0;
    } else {
     s0+=65.0;
     s1+=1407.0;
    }
   } else {
    if(i19<0.24682796001434326){
     s0+=1016.0;
     s1+=191.0;
    } else {
     s0+=2.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i14<1.0166674852371216){
 if(i6<0.0005283653736114502){
  if(i7<0.00342957628890872){
   if(i20<1.0179111957550049){
    if(i55<8.377869380638003e-05){
     s0+=5078.0;
     s1+=17.0;
    } else {
     s0+=5031.0;
     s1+=463.0;
    }
   } else {
    if(i33<0.0005081773269921541){
     s0+=54254.0;
     s1+=75.0;
    } else {
     s0+=19978.0;
     s1+=329.0;
    }
   }
  } else {
   if(i61<0.0009628832340240479){
    if(i53<0.9994199275970459){
     s0+=10166.0;
     s1+=248.0;
    } else {
     s0+=6503.0;
     s1+=2931.0;
    }
   } else {
    if(i6<0.00017511844635009766){
     s0+=7697.0;
     s1+=12.0;
    } else {
     s0+=50.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i7<0.004185450728982687){
   if(i9<1.0149526596069336){
    if(i16<0.00020670556114055216){
     s0+=311.0;
     s1+=464.0;
    } else {
     s0+=4345.0;
     s1+=21.0;
    }
   } else {
    if(i46<-0.0004905531532131135){
     s0+=2.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i0<4.935264587402344e-05){
    if(i20<1.1156240701675415){
     s0+=958.0;
     s1+=187.0;
    } else {
     s0+=24.0;
     s1+=204.0;
    }
   } else {
    if(i52<0.9985311031341553){
     s0+=170.0;
    } else {
     s0+=595.0;
     s1+=4953.0;
    }
   }
  }
 }
} else {
 if(i9<1.01450777053833){
  if(i1<-4.489421917241998e-05){
   if(i52<0.9997244477272034){
    if(i24<0.013172734528779984){
     s0+=227.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i28<0.013459483161568642){
     s0+=266.0;
     s1+=280.0;
    } else {
     s0+=64.0;
     s1+=1987.0;
    }
   }
  } else {
   if(i7<0.006318633444607258){
    if(i30<1.0780352354049683){
     s1+=59.0;
    } else {
     s0+=1057.0;
     s1+=32.0;
    }
   } else {
    if(i17<0.9950376749038696){
     s0+=22.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=318.0;
    }
   }
  }
 } else {
  if(i49<-6.076356385165127e-06){
   if(i48<1.0432875156402588){
    s0+=66.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i44<1.0972511768341064){
    if(i70<0.12303364276885986){
     s0+=3.0;
     s1+=801.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=10345.0;
   }
  }
 }
}
if(i14<1.0181801319122314){
 if(i21<0.001387178897857666){
  if(i6<0.00043195486068725586){
   if(i33<0.0006990906549617648){
    if(i21<-0.00038483738899230957){
     s0+=21706.0;
     s1+=301.0;
    } else {
     s0+=55496.0;
     s1+=118.0;
    }
   } else {
    if(i24<0.0009128163219429553){
     s0+=1878.0;
     s1+=2347.0;
    } else {
     s0+=27485.0;
     s1+=921.0;
    }
   }
  } else {
   if(i43<2.859366941265762e-05){
    if(i16<0.00022543806699104607){
     s0+=1004.0;
     s1+=790.0;
    } else {
     s0+=4724.0;
     s1+=47.0;
    }
   } else {
    if(i23<1.104677438735962){
     s0+=1926.0;
     s1+=1270.0;
    } else {
     s0+=261.0;
     s1+=2620.0;
    }
   }
  }
 } else {
  if(i62<0.0005566035397350788){
   if(i40<0.0010316759580746293){
    if(i23<1.0258731842041016){
     s0+=12.0;
    } else {
     s0+=3.0;
     s1+=524.0;
    }
   } else {
    if(i16<0.0002172023814637214){
     s0+=9.0;
     s1+=30.0;
    } else {
     s0+=681.0;
     s1+=13.0;
    }
   }
  } else {
   if(i5<1.6808509826660156e-05){
    if(i24<0.009466279298067093){
     s0+=63.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i52<0.9986881613731384){
     s0+=75.0;
    } else {
     s0+=19.0;
     s1+=1688.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i44<1.0869145393371582){
   if(i71<2.0983934518881142e-06){
    if(i35<0.0005453824996948242){
     s0+=4.0;
     s1+=1272.0;
    } else {
     s0+=15.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i47<1.0311603546142578e-05){
    if(i64<-1.2454472653189441e-06){
     s0+=17.0;
     s1+=167.0;
    } else {
     s0+=202.0;
     s1+=40.0;
    }
   } else {
    if(i35<0.00044909119606018066){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=378.0;
    }
   }
  }
 } else {
  if(i0<0.00012955069541931152){
   if(i44<1.1220200061798096){
    s0+=116.0;
   } else {
    if(i50<0.04486985504627228){
     s0+=192.0;
     s1+=18.0;
    } else {
     s0+=82.0;
     s1+=246.0;
    }
   }
  } else {
   if(i19<0.07460236549377441){
    if(i74<0.010893521830439568){
     s0+=50.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i39<-1.0711975846788846e-05){
     s0+=35.0;
     s1+=11934.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i2<1.0026252269744873){
 if(i8<1.0118496417999268){
  if(i23<1.182846188545227){
   if(i31<1.1162974834442139){
    if(i57<0.01334091741591692){
     s0+=19914.0;
     s1+=639.0;
    } else {
     s0+=9641.0;
     s1+=2589.0;
    }
   } else {
    if(i69<0.1674020141363144){
     s0+=74568.0;
     s1+=446.0;
    } else {
     s0+=5209.0;
     s1+=412.0;
    }
   }
  } else {
   if(i54<-4.271905254427111e-06){
    if(i12<0.0031520426273345947){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=455.0;
    }
   } else {
    s0+=362.0;
   }
  }
 } else {
  if(i5<8.64267349243164e-06){
   if(i39<-1.086738302547019e-05){
    if(i57<0.055806539952754974){
     s0+=73.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=159.0;
    }
   } else {
    if(i18<0.002851320430636406){
     s0+=388.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.007644514087587595){
    if(i24<0.0009096578578464687){
     s1+=16.0;
    } else {
     s0+=142.0;
    }
   } else {
    if(i2<0.9996998310089111){
     s0+=18.0;
     s1+=4.0;
    } else {
     s0+=23.0;
     s1+=885.0;
    }
   }
  }
 }
} else {
 if(i0<0.001229703426361084){
  if(i63<0.002526399213820696){
   if(i38<0.029083820059895515){
    if(i35<0.0004264712333679199){
     s0+=121.0;
     s1+=500.0;
    } else {
     s0+=3441.0;
     s1+=119.0;
    }
   } else {
    if(i45<0.06456702947616577){
     s0+=422.0;
     s1+=81.0;
    } else {
     s0+=327.0;
     s1+=864.0;
    }
   }
  } else {
   if(i23<1.0854418277740479){
    if(i45<0.03691670298576355){
     s0+=368.0;
     s1+=37.0;
    } else {
     s0+=103.0;
     s1+=99.0;
    }
   } else {
    if(i46<-0.0002279721957165748){
     s0+=97.0;
     s1+=1643.0;
    } else {
     s0+=167.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i38<0.015121864154934883){
   if(i30<1.1174830198287964){
    if(i56<1.003448724746704){
     s0+=1.0;
     s1+=1075.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i32<0.0018438869155943394){
     s0+=798.0;
    } else {
     s0+=2.0;
     s1+=714.0;
    }
   }
  } else {
   if(i15<1.0226454734802246){
    if(i47<2.7239322662353516e-05){
     s0+=175.0;
     s1+=3303.0;
    } else {
     s0+=46.0;
     s1+=23.0;
    }
   } else {
    if(i12<0.1391223967075348){
     s0+=1.0;
     s1+=495.0;
    } else {
     s1+=9525.0;
    }
   }
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i1<-8.694273128639907e-05){
  if(i70<0.03306666016578674){
   if(i23<1.0722980499267578){
    if(i28<0.05541844666004181){
     s0+=497.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    if(i1<-0.00012745664571411908){
     s0+=7.0;
     s1+=101.0;
    } else {
     s0+=89.0;
     s1+=43.0;
    }
   }
  } else {
   if(i28<0.010690971277654171){
    if(i24<0.011270025745034218){
     s0+=44.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i10<0.9253169894218445){
     s0+=23.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=802.0;
    }
   }
  }
 } else {
  if(i10<1.0085203647613525){
   if(i18<0.0015230090357363224){
    if(i39<-1.7719907191349193e-05){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=83757.0;
     s1+=591.0;
    }
   } else {
    if(i6<-0.00012916326522827148){
     s0+=16904.0;
     s1+=268.0;
    } else {
     s0+=6389.0;
     s1+=2746.0;
    }
   }
  } else {
   if(i29<0.0011033415794372559){
    if(i30<1.1197539567947388){
     s0+=1.0;
     s1+=564.0;
    } else {
     s0+=153.0;
    }
   } else {
    if(i41<1.0356488227844238){
     s0+=1899.0;
     s1+=128.0;
    } else {
     s0+=180.0;
     s1+=154.0;
    }
   }
  }
 }
} else {
 if(i3<8.100271224975586e-05){
  if(i50<0.04104376956820488){
   if(i35<0.00042641162872314453){
    if(i7<0.003014921210706234){
     s0+=271.0;
     s1+=6.0;
    } else {
     s0+=175.0;
     s1+=990.0;
    }
   } else {
    if(i40<0.0022035078145563602){
     s0+=3626.0;
     s1+=84.0;
    } else {
     s0+=690.0;
     s1+=429.0;
    }
   }
  } else {
   if(i23<1.052932858467102){
    if(i21<-0.0036621689796447754){
     s0+=268.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i21<-0.0025698840618133545){
     s0+=145.0;
     s1+=436.0;
    } else {
     s0+=58.0;
     s1+=1689.0;
    }
   }
  }
 } else {
  if(i47<2.676248550415039e-05){
   if(i44<1.1268339157104492){
    if(i37<0.0012030107900500298){
     s0+=15.0;
     s1+=1691.0;
    } else {
     s0+=587.0;
     s1+=944.0;
    }
   } else {
    if(i14<0.9042929410934448){
     s0+=30.0;
     s1+=68.0;
    } else {
     s0+=87.0;
     s1+=12469.0;
    }
   }
  } else {
   if(i31<1.258997917175293){
    s0+=551.0;
   } else {
    s1+=108.0;
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i10<1.01152503490448){
  if(i7<0.0034599469508975744){
   if(i7<0.001909567741677165){
    if(i55<0.0001774270203895867){
     s0+=59222.0;
     s1+=119.0;
    } else {
     s0+=6730.0;
     s1+=160.0;
    }
   } else {
    if(i14<0.99648118019104){
     s0+=6105.0;
     s1+=485.0;
    } else {
     s0+=12858.0;
     s1+=197.0;
    }
   }
  } else {
   if(i3<-2.485513687133789e-05){
    if(i19<0.2054118812084198){
     s0+=22444.0;
     s1+=695.0;
    } else {
     s0+=83.0;
     s1+=220.0;
    }
   } else {
    if(i6<-0.000149458646774292){
     s0+=780.0;
     s1+=21.0;
    } else {
     s0+=963.0;
     s1+=2569.0;
    }
   }
  }
 } else {
  if(i39<-1.2242378033988643e-05){
   if(i51<3.3489988709334284e-05){
    if(i18<0.0015061772428452969){
     s0+=100.0;
     s1+=10.0;
    } else {
     s0+=21.0;
     s1+=662.0;
    }
   } else {
    if(i18<0.005117021966725588){
     s0+=164.0;
    } else {
     s0+=9.0;
     s1+=111.0;
    }
   }
  } else {
   if(i64<4.097652890777681e-06){
    if(i3<-4.7087669372558594e-05){
     s1+=3.0;
    } else {
     s0+=439.0;
     s1+=3.0;
    }
   } else {
    if(i64<5.98625638303929e-06){
     s0+=6.0;
     s1+=21.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
} else {
 if(i13<1.0205397605895996){
  if(i1<-6.823844887549058e-05){
   if(i9<0.9754334688186646){
    if(i18<0.005728686694055796){
     s0+=175.0;
     s1+=6.0;
    } else {
     s0+=194.0;
     s1+=128.0;
    }
   } else {
    if(i31<1.1743842363357544){
     s0+=500.0;
     s1+=802.0;
    } else {
     s0+=180.0;
     s1+=3570.0;
    }
   }
  } else {
   if(i35<0.0005085468292236328){
    if(i10<1.0082844495773315){
     s0+=853.0;
     s1+=570.0;
    } else {
     s0+=33.0;
     s1+=872.0;
    }
   } else {
    if(i40<0.0020666245836764574){
     s0+=3622.0;
     s1+=101.0;
    } else {
     s0+=489.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i49<-6.084856067900546e-06){
   if(i7<0.016730498522520065){
    s0+=115.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i3<2.110004425048828e-05){
    if(i18<0.00487010320648551){
     s0+=145.0;
     s1+=45.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i7<0.002550430130213499){
     s0+=112.0;
     s1+=176.0;
    } else {
     s0+=90.0;
     s1+=12335.0;
    }
   }
  }
 }
}
if(i4<1.0038182735443115){
 if(i48<1.036631464958191){
  if(i19<0.21773692965507507){
   if(i25<1.0045864582061768){
    if(i5<1.901388168334961e-05){
     s0+=107734.0;
     s1+=3697.0;
    } else {
     s0+=3219.0;
     s1+=1014.0;
    }
   } else {
    if(i23<1.108922004699707){
     s0+=704.0;
     s1+=207.0;
    } else {
     s0+=74.0;
     s1+=311.0;
    }
   }
  } else {
   if(i65<0.09254220128059387){
    if(i5<6.973743438720703e-06){
     s0+=84.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=23.0;
    }
   } else {
    if(i54<-2.0713189314847114e-06){
     s0+=7.0;
     s1+=352.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i39<-7.942683623696212e-06){
   if(i45<0.1594243049621582){
    if(i54<-9.988591045839712e-06){
     s0+=210.0;
     s1+=19.0;
    } else {
     s0+=53.0;
     s1+=166.0;
    }
   } else {
    if(i56<1.003678560256958){
     s0+=22.0;
     s1+=697.0;
    } else {
     s0+=62.0;
     s1+=58.0;
    }
   }
  } else {
   if(i0<-0.0013041794300079346){
    if(i44<1.1267386674880981){
     s0+=17.0;
    } else {
     s1+=5.0;
    }
   } else {
    s0+=461.0;
   }
  }
 }
} else {
 if(i16<0.0007036929600872099){
  if(i18<0.0010517493356019258){
   if(i39<-2.364613101235591e-05){
    if(i47<5.364418029785156e-05){
     s0+=9.0;
     s1+=349.0;
    } else {
     s0+=19.0;
    }
   } else {
    s0+=1223.0;
   }
  } else {
   if(i4<1.0062849521636963){
    if(i56<1.0028871297836304){
     s0+=112.0;
     s1+=1985.0;
    } else {
     s0+=300.0;
     s1+=609.0;
    }
   } else {
    if(i22<0.00020498037338256836){
     s0+=106.0;
     s1+=2243.0;
    } else {
     s0+=22.0;
     s1+=12136.0;
    }
   }
  }
 } else {
  if(i9<1.0371119976043701){
   s0+=2532.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i12<0.18751028180122375){
 if(i53<1.0031838417053223){
  if(i11<1.0100791454315186){
   if(i36<1.0902695655822754){
    if(i56<1.0001460313796997){
     s0+=26322.0;
     s1+=625.0;
    } else {
     s0+=12108.0;
     s1+=2317.0;
    }
   } else {
    if(i56<1.002868413925171){
     s0+=66342.0;
     s1+=750.0;
    } else {
     s0+=336.0;
     s1+=114.0;
    }
   }
  } else {
   if(i39<-1.271975997951813e-05){
    if(i31<1.116804838180542){
     s1+=912.0;
    } else {
     s0+=516.0;
     s1+=367.0;
    }
   } else {
    if(i29<0.00047271623043343425){
     s1+=13.0;
    } else {
     s0+=607.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i21<0.001366734504699707){
   if(i6<0.0004429817199707031){
    if(i74<0.02092645689845085){
     s0+=4045.0;
     s1+=167.0;
    } else {
     s0+=139.0;
     s1+=140.0;
    }
   } else {
    if(i74<0.021800188347697258){
     s0+=4628.0;
     s1+=1916.0;
    } else {
     s0+=188.0;
     s1+=713.0;
    }
   }
  } else {
   if(i16<0.0006745322607457638){
    if(i39<-0.0001573178160469979){
     s0+=16.0;
    } else {
     s0+=3.0;
     s1+=3266.0;
    }
   } else {
    s0+=485.0;
   }
  }
 }
} else {
 if(i24<0.0025613768957555294){
  if(i33<0.000700776930898428){
   if(i56<1.0008258819580078){
    s0+=337.0;
   } else {
    if(i32<0.0018055562395602465){
     s0+=106.0;
    } else {
     s0+=21.0;
     s1+=8.0;
    }
   }
  } else {
   if(i28<0.010892212390899658){
    s0+=87.0;
   } else {
    if(i3<-5.957484245300293e-05){
     s0+=24.0;
    } else {
     s0+=4.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i39<-9.383120413986035e-06){
   if(i22<-0.00039571523666381836){
    if(i65<0.1356876939535141){
     s0+=55.0;
     s1+=74.0;
    } else {
     s0+=14.0;
     s1+=391.0;
    }
   } else {
    if(i7<0.0041055092588067055){
     s0+=26.0;
     s1+=129.0;
    } else {
     s0+=4.0;
     s1+=12370.0;
    }
   }
  } else {
   if(i58<0.004672317765653133){
    if(i41<1.0572662353515625){
     s0+=96.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i10<0.979303240776062){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
}
if(i41<1.0277631282806396){
 if(i0<0.0009891390800476074){
  if(i38<0.18404248356819153){
   if(i35<9.208917617797852e-05){
    if(i36<1.0838351249694824){
     s0+=28319.0;
     s1+=902.0;
    } else {
     s0+=50983.0;
     s1+=153.0;
    }
   } else {
    if(i31<1.1162974834442139){
     s0+=6094.0;
     s1+=2739.0;
    } else {
     s0+=27442.0;
     s1+=1959.0;
    }
   }
  } else {
   if(i3<-7.903575897216797e-05){
    if(i23<1.1120966672897339){
     s0+=211.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i9<0.9493614435195923){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   if(i16<0.0002522961003705859){
    if(i49<-1.4436571291298606e-05){
     s0+=14.0;
    } else {
     s1+=1796.0;
    }
   } else {
    s0+=1654.0;
   }
  } else {
   if(i12<0.0032147467136383057){
    if(i0<0.002047598361968994){
     s0+=43.0;
     s1+=11.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i42<0.8718293309211731){
     s0+=8.0;
     s1+=13.0;
    } else {
     s0+=28.0;
     s1+=3718.0;
    }
   }
  }
 }
} else {
 if(i54<-2.8055715119990055e-06){
  if(i1<-6.520845636259764e-05){
   if(i16<0.0009070273372344673){
    if(i0<1.4722347259521484e-05){
     s0+=45.0;
     s1+=260.0;
    } else {
     s0+=54.0;
     s1+=11509.0;
    }
   } else {
    s0+=64.0;
   }
  } else {
   if(i44<1.1700975894927979){
    if(i35<0.000563502311706543){
     s0+=255.0;
     s1+=492.0;
    } else {
     s0+=425.0;
     s1+=37.0;
    }
   } else {
    if(i31<1.7041046619415283){
     s0+=1.0;
     s1+=299.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i3<-3.394484519958496e-05){
   if(i18<0.0024761436507105827){
    s0+=94.0;
   } else {
    if(i29<0.0021609244868159294){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   s0+=517.0;
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i11<0.9452497959136963){
  if(i31<1.5726749897003174){
   if(i45<0.10484078526496887){
    if(i53<1.0161333084106445){
     s0+=443.0;
     s1+=10.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i20<1.0310399532318115){
    if(i24<0.010860605165362358){
     s1+=8.0;
    } else {
     s0+=101.0;
     s1+=17.0;
    }
   } else {
    if(i28<0.03052631765604019){
     s0+=1.0;
    } else {
     s1+=52.0;
    }
   }
  }
 } else {
  if(i8<1.0133767127990723){
   if(i37<0.0024464386515319347){
    if(i24<0.001068976242095232){
     s1+=47.0;
    } else {
     s0+=240.0;
    }
   } else {
    if(i45<0.0318244993686676){
     s0+=133.0;
     s1+=232.0;
    } else {
     s0+=26.0;
     s1+=2749.0;
    }
   }
  } else {
   if(i31<1.170881986618042){
    if(i21<0.002113938331604004){
     s0+=24.0;
     s1+=14.0;
    } else {
     s1+=582.0;
    }
   } else {
    if(i1<-0.00010237355309072882){
     s1+=11493.0;
    } else {
     s0+=1.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i6<0.00043195486068725586){
  if(i6<0.00018674135208129883){
   if(i7<0.0026932177133858204){
    if(i61<-0.0004904270172119141){
     s0+=9963.0;
     s1+=277.0;
    } else {
     s0+=58004.0;
     s1+=248.0;
    }
   } else {
    if(i35<-1.7881393432617188e-06){
     s0+=20128.0;
     s1+=165.0;
    } else {
     s0+=9281.0;
     s1+=1592.0;
    }
   }
  } else {
   if(i38<0.018147656694054604){
    if(i20<1.045426368713379){
     s0+=1668.0;
     s1+=365.0;
    } else {
     s0+=6643.0;
     s1+=27.0;
    }
   } else {
    if(i28<0.01276077888906002){
     s0+=693.0;
     s1+=64.0;
    } else {
     s0+=750.0;
     s1+=853.0;
    }
   }
  }
 } else {
  if(i59<0.0014702081680297852){
   if(i7<0.003741075750440359){
    if(i43<-2.8099871997255832e-05){
     s0+=43.0;
     s1+=239.0;
    } else {
     s0+=6044.0;
     s1+=212.0;
    }
   } else {
    if(i40<0.0009900827426463366){
     s0+=75.0;
     s1+=1094.0;
    } else {
     s0+=1662.0;
     s1+=1571.0;
    }
   }
  } else {
   if(i16<0.0003344796714372933){
    if(i1<-2.9127098969183862e-05){
     s0+=131.0;
     s1+=1971.0;
    } else {
     s0+=156.0;
     s1+=86.0;
    }
   } else {
    if(i45<0.17594578862190247){
     s0+=526.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=49.0;
    }
   }
  }
 }
}
if(i14<1.0169930458068848){
 if(i5<2.2113323211669922e-05){
  if(i35<8.219480514526367e-05){
   if(i12<0.23616039752960205){
    if(i34<1.0905301570892334){
     s0+=23183.0;
     s1+=751.0;
    } else {
     s0+=54499.0;
     s1+=139.0;
    }
   } else {
    if(i1<-3.587450191844255e-05){
     s1+=174.0;
    } else {
     s0+=49.0;
    }
   }
  } else {
   if(i36<1.0867881774902344){
    if(i38<0.009369606152176857){
     s0+=5310.0;
     s1+=305.0;
    } else {
     s0+=1477.0;
     s1+=1863.0;
    }
   } else {
    if(i23<1.1283433437347412){
     s0+=24048.0;
     s1+=853.0;
    } else {
     s0+=498.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i1<-8.434935443801805e-05){
   if(i16<0.0007017063908278942){
    if(i43<0.00031133118318393826){
     s0+=194.0;
     s1+=3420.0;
    } else {
     s0+=309.0;
     s1+=197.0;
    }
   } else {
    s0+=217.0;
   }
  } else {
   if(i35<0.0005086064338684082){
    if(i53<1.0025725364685059){
     s0+=581.0;
     s1+=185.0;
    } else {
     s0+=327.0;
     s1+=1392.0;
    }
   } else {
    if(i62<0.0009927914943546057){
     s0+=3797.0;
     s1+=106.0;
    } else {
     s0+=486.0;
     s1+=499.0;
    }
   }
  }
 }
} else {
 if(i10<1.0203170776367188){
  if(i12<0.19276419281959534){
   if(i40<0.0010177027434110641){
    if(i24<0.0010672153439372778){
     s1+=655.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i8<1.0172210931777954){
     s0+=1153.0;
     s1+=240.0;
    } else {
     s0+=146.0;
     s1+=199.0;
    }
   }
  } else {
   if(i39<-8.396091288886964e-06){
    if(i7<0.0037131826393306255){
     s0+=23.0;
    } else {
     s0+=1.0;
     s1+=758.0;
    }
   } else {
    if(i66<0.0008662831387482584){
     s1+=1.0;
    } else {
     s0+=26.0;
    }
   }
  }
 } else {
  if(i54<-3.181191459589172e-06){
   if(i4<1.0011794567108154){
    if(i34<1.2785332202911377){
     s0+=75.0;
     s1+=5.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i26<0.09075936675071716){
     s0+=28.0;
     s1+=92.0;
    } else {
     s0+=30.0;
     s1+=11888.0;
    }
   }
  } else {
   s0+=171.0;
  }
 }
}
if(i8<1.0135858058929443){
 if(i6<0.0005145668983459473){
  if(i12<0.23129135370254517){
   if(i28<0.006544958800077438){
    if(i31<1.1162974834442139){
     s0+=20955.0;
     s1+=453.0;
    } else {
     s0+=45922.0;
     s1+=84.0;
    }
   } else {
    if(i37<0.0010873638093471527){
     s0+=7690.0;
     s1+=2229.0;
    } else {
     s0+=34105.0;
     s1+=1070.0;
    }
   }
  } else {
   if(i28<0.037038981914520264){
    if(i35<9.870529174804688e-05){
     s0+=74.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=17.0;
    }
   } else {
    if(i1<-4.056382749695331e-07){
     s1+=278.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i34<1.1759499311447144){
   if(i31<1.116804838180542){
    if(i58<0.00017551486962474883){
     s0+=1545.0;
     s1+=220.0;
    } else {
     s0+=97.0;
     s1+=1255.0;
    }
   } else {
    if(i30<1.1822609901428223){
     s0+=3118.0;
     s1+=10.0;
    } else {
     s0+=245.0;
     s1+=99.0;
    }
   }
  } else {
   if(i26<0.08016994595527649){
    if(i74<0.008889990858733654){
     s0+=837.0;
     s1+=27.0;
    } else {
     s0+=349.0;
     s1+=544.0;
    }
   } else {
    if(i62<0.0006692720344290137){
     s0+=226.0;
     s1+=616.0;
    } else {
     s0+=175.0;
     s1+=2773.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013815650017932057){
  if(i0<0.0019731521606445312){
   if(i16<0.0002257420856039971){
    if(i54<-5.140347184351413e-06){
     s1+=19.0;
    } else {
     s0+=204.0;
    }
   } else {
    s0+=453.0;
   }
  } else {
   s1+=495.0;
  }
 } else {
  if(i37<0.007393014617264271){
   if(i49<-5.69543180972687e-06){
    s0+=160.0;
   } else {
    if(i22<-0.0002537965774536133){
     s0+=126.0;
     s1+=23.0;
    } else {
     s0+=328.0;
     s1+=4702.0;
    }
   }
  } else {
   if(i8<1.0154783725738525){
    if(i40<0.0019503168296068907){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i21<-0.003367811441421509){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=9216.0;
    }
   }
  }
 }
}
if(i15<1.017686128616333){
 if(i2<1.0026252269744873){
  if(i33<0.0007074003806337714){
   if(i37<0.0002663907071109861){
    if(i33<0.0005748368566855788){
     s0+=15760.0;
     s1+=83.0;
    } else {
     s0+=720.0;
     s1+=223.0;
    }
   } else {
    if(i58<0.0019567757844924927){
     s0+=59959.0;
     s1+=50.0;
    } else {
     s0+=2391.0;
     s1+=79.0;
    }
   }
  } else {
   if(i28<0.07568371295928955){
    if(i29<0.0010344411712139845){
     s0+=3557.0;
     s1+=2887.0;
    } else {
     s0+=27506.0;
     s1+=828.0;
    }
   } else {
    if(i51<7.889707922004163e-05){
     s1+=366.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i32<0.0019539743661880493){
   if(i29<0.00123101647477597){
    if(i30<1.0609431266784668){
     s0+=733.0;
    } else {
     s0+=9.0;
     s1+=1319.0;
    }
   } else {
    if(i9<1.0162136554718018){
     s0+=2875.0;
     s1+=6.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i4<1.0028893947601318){
    if(i20<1.0916686058044434){
     s0+=1325.0;
     s1+=376.0;
    } else {
     s0+=115.0;
     s1+=539.0;
    }
   } else {
    if(i9<0.995576024055481){
     s0+=189.0;
     s1+=982.0;
    } else {
     s0+=39.0;
     s1+=2528.0;
    }
   }
  }
 }
} else {
 if(i39<-9.378031791129615e-06){
  if(i16<0.0007216791855171323){
   if(i21<-0.0012302398681640625){
    if(i12<0.20398840308189392){
     s0+=215.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=328.0;
    }
   } else {
    if(i7<0.003099074587225914){
     s0+=227.0;
     s1+=251.0;
    } else {
     s0+=28.0;
     s1+=13293.0;
    }
   }
  } else {
   s0+=384.0;
  }
 } else {
  if(i39<-7.32195940145175e-06){
   if(i19<0.16638553142547607){
    s0+=33.0;
   } else {
    if(i3<-8.696317672729492e-05){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  } else {
   if(i29<0.004552902188152075){
    s0+=464.0;
   } else {
    if(i33<0.0009951043175533414){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i4<1.003865361213684){
 if(i18<0.001736646518111229){
  if(i31<1.1162974834442139){
   if(i30<1.1157604455947876){
    if(i29<0.00018101680325344205){
     s0+=9973.0;
     s1+=11.0;
    } else {
     s0+=17107.0;
     s1+=655.0;
    }
   } else {
    if(i0<-0.00037726759910583496){
     s0+=128.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i1<-6.176106398925185e-05){
    if(i55<0.00016509027045685798){
     s0+=246.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=38.0;
    }
   } else {
    if(i35<0.00011295080184936523){
     s0+=50563.0;
    } else {
     s0+=11827.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i45<0.16974607110023499){
   if(i36<1.0914386510849){
    if(i19<0.04894381761550903){
     s0+=3613.0;
     s1+=563.0;
    } else {
     s0+=730.0;
     s1+=1942.0;
    }
   } else {
    if(i17<0.9962877035140991){
     s0+=14786.0;
     s1+=778.0;
    } else {
     s0+=3006.0;
     s1+=1100.0;
    }
   }
  } else {
   if(i38<0.04563324898481369){
    if(i1<-8.0023382906802e-05){
     s1+=18.0;
    } else {
     s0+=146.0;
     s1+=18.0;
    }
   } else {
    if(i46<-0.0001385751093039289){
     s0+=48.0;
     s1+=1115.0;
    } else {
     s0+=85.0;
     s1+=105.0;
    }
   }
  }
 }
} else {
 if(i28<0.0077140736393630505){
  if(i24<0.0009799512336030602){
   if(i24<0.00024030767963267863){
    s0+=601.0;
   } else {
    s1+=1484.0;
   }
  } else {
   if(i37<0.003169870004057884){
    if(i4<1.0103546380996704){
     s0+=3070.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i60<1.006574034690857){
     s0+=4.0;
     s1+=536.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   if(i10<1.0139551162719727){
    if(i49<-3.2973264296742855e-06){
     s0+=348.0;
    } else {
     s0+=45.0;
     s1+=307.0;
    }
   } else {
    if(i60<1.0030008554458618){
     s0+=3.0;
     s1+=851.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i7<0.0031389747746288776){
    if(i39<-4.5438355300575495e-05){
     s1+=112.0;
    } else {
     s0+=104.0;
     s1+=3.0;
    }
   } else {
    if(i59<-0.013304561376571655){
     s0+=34.0;
     s1+=120.0;
    } else {
     s0+=94.0;
     s1+=14222.0;
    }
   }
  }
 }
}
if(i9<1.0125844478607178){
 if(i12<0.19891658425331116){
  if(i6<0.00034540891647338867){
   if(i33<0.0006917033460922539){
    if(i22<-5.3942203521728516e-05){
     s0+=22554.0;
     s1+=246.0;
    } else {
     s0+=53711.0;
     s1+=125.0;
    }
   } else {
    if(i37<0.0010466554667800665){
     s0+=1976.0;
     s1+=1877.0;
    } else {
     s0+=26889.0;
     s1+=681.0;
    }
   }
  } else {
   if(i1<-6.801898416597396e-05){
    if(i56<1.0006154775619507){
     s0+=326.0;
     s1+=24.0;
    } else {
     s0+=975.0;
     s1+=2295.0;
    }
   } else {
    if(i37<0.0010126378620043397){
     s0+=2641.0;
     s1+=1855.0;
    } else {
     s0+=6839.0;
     s1+=1020.0;
    }
   }
  }
 } else {
  if(i54<-3.2207572076004e-06){
   if(i29<0.0022621999960392714){
    s0+=67.0;
   } else {
    if(i44<1.127584457397461){
     s0+=50.0;
     s1+=159.0;
    } else {
     s0+=39.0;
     s1+=2710.0;
    }
   }
  } else {
   if(i3<-0.00017365813255310059){
    s1+=2.0;
   } else {
    if(i70<0.1365753412246704){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=201.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i28<0.006150846369564533){
  if(i17<1.0140650272369385){
   if(i42<1.0496320724487305){
    if(i32<0.0011564348824322224){
     s1+=192.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   } else {
    if(i16<0.0002708313404582441){
     s0+=8.0;
     s1+=35.0;
    } else {
     s0+=295.0;
    }
   }
  } else {
   if(i26<0.06547653675079346){
    if(i43<-3.1696697988081723e-05){
     s1+=3.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i1<-5.993735248921439e-05){
     s0+=1.0;
     s1+=577.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i1<-3.191570795024745e-05){
   if(i49<-6.080845196265727e-06){
    if(i19<0.24176466464996338){
     s0+=36.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i1<-6.637535989284515e-05){
     s1+=12131.0;
    } else {
     s0+=16.0;
     s1+=230.0;
    }
   }
  } else {
   s0+=19.0;
  }
 }
}
if(i21<0.0013867020606994629){
 if(i23<1.1401641368865967){
  if(i39<-4.282592999516055e-05){
   if(i12<0.12067633867263794){
    if(i19<0.033985674381256104){
     s0+=273.0;
     s1+=45.0;
    } else {
     s0+=185.0;
     s1+=224.0;
    }
   } else {
    if(i34<1.147965669631958){
     s0+=22.0;
    } else {
     s0+=4.0;
     s1+=891.0;
    }
   }
  } else {
   if(i33<0.0007165126735344529){
    if(i5<3.9517879486083984e-05){
     s0+=79976.0;
     s1+=596.0;
    } else {
     s0+=237.0;
     s1+=160.0;
    }
   } else {
    if(i2<1.0000168085098267){
     s0+=20478.0;
     s1+=551.0;
    } else {
     s0+=13066.0;
     s1+=4925.0;
    }
   }
  }
 } else {
  if(i29<0.0026121516712009907){
   if(i32<0.003419179003685713){
    s0+=656.0;
   } else {
    if(i36<1.4528192281723022){
     s1+=20.0;
    } else {
     s0+=100.0;
    }
   }
  } else {
   if(i44<1.6013109683990479){
    if(i42<0.9554671049118042){
     s0+=94.0;
     s1+=102.0;
    } else {
     s0+=258.0;
     s1+=3574.0;
    }
   } else {
    if(i39<-2.4117147404467687e-05){
     s1+=19.0;
    } else {
     s0+=195.0;
    }
   }
  }
 }
} else {
 if(i9<1.0134507417678833){
  if(i33<0.0010489276610314846){
   if(i4<1.0039515495300293){
    s0+=100.0;
   } else {
    if(i40<0.0011386449914425611){
     s0+=2.0;
     s1+=737.0;
    } else {
     s0+=44.0;
     s1+=147.0;
    }
   }
  } else {
   if(i7<0.012746100313961506){
    if(i28<0.01785518042743206){
     s0+=733.0;
     s1+=3.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i64<2.038608363363892e-05){
     s1+=208.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i49<-8.03560033091344e-06){
   s0+=46.0;
  } else {
   if(i35<0.0012742877006530762){
    if(i0<0.0004974603652954102){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=11266.0;
    }
   } else {
    if(i54<-2.278860119986348e-05){
     s1+=811.0;
    } else {
     s0+=63.0;
    }
   }
  }
 }
}
if(i9<1.0102015733718872){
 if(i3<6.335973739624023e-05){
  if(i6<0.00032275915145874023){
   if(i45<0.22627761960029602){
    if(i18<0.001484018750488758){
     s0+=81445.0;
     s1+=590.0;
    } else {
     s0+=22722.0;
     s1+=2459.0;
    }
   } else {
    if(i7<0.00509447930380702){
     s0+=60.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=281.0;
    }
   }
  } else {
   if(i26<0.1921226680278778){
    if(i43<1.545876875752583e-05){
     s0+=6064.0;
     s1+=508.0;
    } else {
     s0+=3295.0;
     s1+=2407.0;
    }
   } else {
    if(i63<0.002376836957409978){
     s0+=143.0;
     s1+=144.0;
    } else {
     s0+=34.0;
     s1+=933.0;
    }
   }
  }
 } else {
  if(i38<0.027114955708384514){
   if(i43<-1.5463074305444025e-05){
    if(i7<0.0020989570766687393){
     s0+=86.0;
     s1+=6.0;
    } else {
     s0+=18.0;
     s1+=282.0;
    }
   } else {
    if(i66<0.0004905353998765349){
     s0+=131.0;
     s1+=160.0;
    } else {
     s0+=545.0;
     s1+=50.0;
    }
   }
  } else {
   if(i28<0.02798466384410858){
    if(i21<-0.0002383589744567871){
     s0+=80.0;
     s1+=53.0;
    } else {
     s0+=18.0;
     s1+=123.0;
    }
   } else {
    if(i48<0.8356568813323975){
     s0+=17.0;
     s1+=68.0;
    } else {
     s0+=22.0;
     s1+=2010.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025570078287273645){
  if(i16<0.00029353960417211056){
   if(i35<0.00011974573135375977){
    s0+=146.0;
   } else {
    if(i71<-2.858091193047585e-06){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=2218.0;
    }
   }
  } else {
   if(i68<-0.0012719391379505396){
    if(i68<-0.001616454217582941){
     s0+=13.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   } else {
    if(i46<-0.0004247906617820263){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=1341.0;
    }
   }
  }
 } else {
  if(i37<0.002489358652383089){
   if(i52<1.0013008117675781){
    s0+=37.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i34<1.1593338251113892){
    if(i31<1.2839648723602295){
     s1+=14.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i7<0.002193649299442768){
     s0+=41.0;
     s1+=77.0;
    } else {
     s0+=13.0;
     s1+=12130.0;
    }
   }
  }
 }
}
if(i0<0.0009595751762390137){
 if(i12<0.2009410262107849){
  if(i18<0.0017374332528561354){
   if(i7<0.0019593974575400352){
    if(i44<1.023176908493042){
     s0+=2665.0;
     s1+=92.0;
    } else {
     s0+=63288.0;
     s1+=180.0;
    }
   } else {
    if(i31<1.1164028644561768){
     s0+=6323.0;
     s1+=647.0;
    } else {
     s0+=19497.0;
     s1+=133.0;
    }
   }
  } else {
   if(i30<1.1164028644561768){
    if(i36<1.0440731048583984){
     s0+=1960.0;
     s1+=21.0;
    } else {
     s0+=1053.0;
     s1+=2974.0;
    }
   } else {
    if(i3<-7.092952728271484e-06){
     s0+=17824.0;
     s1+=775.0;
    } else {
     s0+=1419.0;
     s1+=1651.0;
    }
   }
  }
 } else {
  if(i24<0.002562624868005514){
   if(i29<0.0018809812609106302){
    s0+=153.0;
   } else {
    if(i39<-1.512800736236386e-05){
     s0+=1.0;
     s1+=21.0;
    } else {
     s0+=85.0;
     s1+=5.0;
    }
   }
  } else {
   if(i44<1.1231228113174438){
    if(i32<0.006111604161560535){
     s0+=45.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   } else {
    if(i65<0.045968808233737946){
     s0+=26.0;
     s1+=157.0;
    } else {
     s0+=13.0;
     s1+=1419.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007052693981677294){
  if(i29<0.0020550100598484278){
   if(i45<0.0775672197341919){
    if(i52<1.0009815692901611){
     s0+=9.0;
     s1+=2193.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i24<0.0010890418197959661){
     s1+=171.0;
    } else {
     s0+=139.0;
    }
   }
  } else {
   if(i21<-0.00226747989654541){
    if(i7<0.012508369982242584){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=302.0;
    }
   } else {
    if(i12<0.10626491904258728){
     s0+=24.0;
     s1+=642.0;
    } else {
     s0+=7.0;
     s1+=13039.0;
    }
   }
  }
 } else {
  s0+=1760.0;
 }
}
if(i44<1.1402404308319092){
 if(i8<1.013148546218872){
  if(i5<1.8298625946044922e-05){
   if(i33<0.0007055175956338644){
    if(i18<0.0009138300083577633){
     s0+=64809.0;
     s1+=135.0;
    } else {
     s0+=12318.0;
     s1+=265.0;
    }
   } else {
    if(i37<0.001046649063937366){
     s0+=2382.0;
     s1+=2241.0;
    } else {
     s0+=25345.0;
     s1+=680.0;
    }
   }
  } else {
   if(i18<0.0018794501665979624){
    if(i37<0.0023892484605312347){
     s0+=3141.0;
     s1+=206.0;
    } else {
     s0+=24.0;
     s1+=70.0;
    }
   } else {
    if(i56<1.000447392463684){
     s0+=691.0;
     s1+=2.0;
    } else {
     s0+=2311.0;
     s1+=2216.0;
    }
   }
  }
 } else {
  if(i63<0.0007857755990698934){
   if(i52<0.9996947050094604){
    s0+=47.0;
   } else {
    if(i16<0.0003108997771050781){
     s0+=7.0;
     s1+=2289.0;
    } else {
     s0+=74.0;
     s1+=14.0;
    }
   }
  } else {
   if(i34<1.1757044792175293){
    if(i16<0.00023439465439878404){
     s0+=109.0;
     s1+=163.0;
    } else {
     s0+=746.0;
     s1+=8.0;
    }
   } else {
    if(i39<-2.19687008211622e-05){
     s0+=55.0;
     s1+=825.0;
    } else {
     s0+=41.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003326535224914551){
  if(i68<-0.003155536949634552){
   if(i64<5.150017386768013e-06){
    if(i33<0.0007694356609135866){
     s0+=91.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i28<0.02996785193681717){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=271.0;
    }
   }
  } else {
   if(i7<0.019867297261953354){
    if(i45<0.1566399335861206){
     s0+=3079.0;
     s1+=93.0;
    } else {
     s0+=119.0;
     s1+=119.0;
    }
   } else {
    if(i21<-0.008038580417633057){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i19<0.1397324800491333){
   if(i24<0.0020697126165032387){
    s0+=481.0;
   } else {
    if(i19<0.04074743390083313){
     s0+=500.0;
     s1+=154.0;
    } else {
     s0+=196.0;
     s1+=1337.0;
    }
   }
  } else {
   if(i37<0.0018115451093763113){
    s0+=141.0;
   } else {
    if(i21<-0.0035401880741119385){
     s0+=52.0;
     s1+=138.0;
    } else {
     s0+=39.0;
     s1+=12724.0;
    }
   }
  }
 }
}
if(i8<1.0134286880493164){
 if(i25<1.0075420141220093){
  if(i58<0.012022260576486588){
   if(i1<-8.301056368509308e-05){
    if(i11<0.9494675993919373){
     s0+=575.0;
     s1+=55.0;
    } else {
     s0+=472.0;
     s1+=752.0;
    }
   } else {
    if(i10<1.0091097354888916){
     s0+=109945.0;
     s1+=4099.0;
    } else {
     s0+=2445.0;
     s1+=879.0;
    }
   }
  } else {
   if(i61<-0.00648266077041626){
    if(i70<0.05215594172477722){
     s0+=568.0;
     s1+=41.0;
    } else {
     s0+=15.0;
     s1+=50.0;
    }
   } else {
    if(i54<-3.665310487122042e-06){
     s0+=21.0;
     s1+=971.0;
    } else {
     s0+=264.0;
    }
   }
  }
 } else {
  if(i7<0.002791637321934104){
   if(i32<0.0008786896360106766){
    s1+=96.0;
   } else {
    if(i16<0.00021219358313828707){
     s1+=8.0;
    } else {
     s0+=613.0;
    }
   }
  } else {
   if(i4<1.002925157546997){
    if(i50<0.090987928211689){
     s0+=194.0;
     s1+=84.0;
    } else {
     s0+=45.0;
     s1+=115.0;
    }
   } else {
    if(i55<5.668305675499141e-05){
     s0+=64.0;
     s1+=74.0;
    } else {
     s0+=150.0;
     s1+=2434.0;
    }
   }
  }
 }
} else {
 if(i0<0.0018055438995361328){
  if(i47<1.341104507446289e-05){
   if(i53<1.000210165977478){
    if(i1<-9.485992632107809e-05){
     s0+=2.0;
     s1+=102.0;
    } else {
     s0+=232.0;
     s1+=15.0;
    }
   } else {
    if(i16<0.0006990337278693914){
     s0+=299.0;
     s1+=3155.0;
    } else {
     s0+=104.0;
    }
   }
  } else {
   if(i31<1.185887336730957){
    if(i16<0.00014821038348600268){
     s1+=6.0;
    } else {
     s0+=518.0;
    }
   } else {
    if(i50<0.057153165340423584){
     s0+=70.0;
     s1+=90.0;
    } else {
     s0+=3.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i47<2.7626752853393555e-05){
   if(i51<7.696924149058759e-05){
    if(i9<1.0153441429138184){
     s0+=24.0;
     s1+=779.0;
    } else {
     s1+=10150.0;
    }
   } else {
    s0+=8.0;
   }
  } else {
   if(i24<0.005751042626798153){
    s0+=30.0;
   } else {
    s1+=35.0;
   }
  }
 }
}
if(i9<1.010008454322815){
 if(i5<2.2113323211669922e-05){
  if(i19<0.23260089755058289){
   if(i6<0.000280916690826416){
    if(i55<0.00022797418932896107){
     s0+=81768.0;
     s1+=1233.0;
    } else {
     s0+=20889.0;
     s1+=1475.0;
    }
   } else {
    if(i38<0.014409026131033897){
     s0+=5123.0;
     s1+=380.0;
    } else {
     s0+=1558.0;
     s1+=1308.0;
    }
   }
  } else {
   if(i33<0.0009218553313985467){
    if(i70<0.17452555894851685){
     s1+=3.0;
    } else {
     s0+=101.0;
     s1+=1.0;
    }
   } else {
    if(i39<-6.8991348598501645e-06){
     s0+=6.0;
     s1+=440.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i34<1.1795884370803833){
   if(i35<0.00037664175033569336){
    if(i18<0.0020175189711153507){
     s0+=164.0;
     s1+=15.0;
    } else {
     s0+=56.0;
     s1+=622.0;
    }
   } else {
    if(i28<0.02932802587747574){
     s0+=3486.0;
     s1+=156.0;
    } else {
     s1+=64.0;
    }
   }
  } else {
   if(i45<0.05609545111656189){
    if(i38<0.14911970496177673){
     s0+=941.0;
     s1+=293.0;
    } else {
     s0+=41.0;
     s1+=252.0;
    }
   } else {
    if(i12<0.1414121389389038){
     s0+=364.0;
     s1+=856.0;
    } else {
     s0+=128.0;
     s1+=2699.0;
    }
   }
  }
 }
} else {
 if(i0<0.0018053650856018066){
  if(i28<0.010306430980563164){
   if(i23<1.0773630142211914){
    if(i32<0.0009608152322471142){
     s0+=5.0;
     s1+=522.0;
    } else {
     s0+=125.0;
     s1+=3.0;
    }
   } else {
    if(i16<0.00027621694607660174){
     s0+=78.0;
     s1+=157.0;
    } else {
     s0+=1177.0;
    }
   }
  } else {
   if(i7<0.004296954721212387){
    if(i33<0.000540762091986835){
     s0+=79.0;
    } else {
     s0+=19.0;
     s1+=21.0;
    }
   } else {
    if(i10<1.0137680768966675){
     s0+=5.0;
     s1+=59.0;
    } else {
     s0+=3.0;
     s1+=2177.0;
    }
   }
  }
 } else {
  if(i16<0.0009496925631538033){
   s1+=11785.0;
  } else {
   s0+=213.0;
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i15<1.018699288368225){
  if(i2<1.0021378993988037){
   if(i12<0.23055705428123474){
    if(i66<0.0003677864442579448){
     s0+=45528.0;
     s1+=2680.0;
    } else {
     s0+=61695.0;
     s1+=1057.0;
    }
   } else {
    if(i33<0.0008017854997888207){
     s0+=28.0;
    } else {
     s0+=8.0;
     s1+=235.0;
    }
   }
  } else {
   if(i38<0.03926372528076172){
    if(i28<0.007704542949795723){
     s0+=3832.0;
     s1+=150.0;
    } else {
     s0+=1118.0;
     s1+=481.0;
    }
   } else {
    if(i20<1.0854045152664185){
     s0+=1184.0;
     s1+=548.0;
    } else {
     s0+=171.0;
     s1+=1162.0;
    }
   }
  }
 } else {
  if(i7<0.005058640614151955){
   if(i4<1.0030064582824707){
    if(i51<9.475331353314687e-06){
     s0+=368.0;
    } else {
     s0+=305.0;
     s1+=35.0;
    }
   } else {
    if(i47<1.043081283569336e-05){
     s0+=6.0;
     s1+=90.0;
    } else {
     s0+=86.0;
    }
   }
  } else {
   if(i19<0.08294805884361267){
    if(i32<0.004504549317061901){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i52<0.9981127977371216){
     s0+=12.0;
    } else {
     s0+=17.0;
     s1+=1488.0;
    }
   }
  }
 }
} else {
 if(i31<1.1979892253875732){
  if(i16<0.00024223740911111236){
   if(i31<1.1229777336120605){
    s1+=2332.0;
   } else {
    s0+=44.0;
   }
  } else {
   if(i37<0.0009208887349814177){
    if(i36<1.054499864578247){
     s0+=50.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=1890.0;
   }
  }
 } else {
  if(i20<1.023472785949707){
   if(i26<0.0009492039680480957){
    if(i56<1.003204584121704){
     s0+=36.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i32<0.04249376431107521){
     s0+=4.0;
     s1+=122.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<0.1022334098815918){
    if(i41<1.0218981504440308){
     s0+=35.0;
     s1+=477.0;
    } else {
     s0+=39.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.0008254051208496094){
     s0+=1.0;
    } else {
     s0+=14.0;
     s1+=13455.0;
    }
   }
  }
 }
}
if(i4<1.0037109851837158){
 if(i23<1.1403480768203735){
  if(i10<1.009073257446289){
   if(i6<0.000280916690826416){
    if(i33<0.0006568260723724961){
     s0+=71154.0;
     s1+=285.0;
    } else {
     s0+=29908.0;
     s1+=2274.0;
    }
   } else {
    if(i50<0.026546454057097435){
     s0+=6981.0;
     s1+=730.0;
    } else {
     s0+=1366.0;
     s1+=949.0;
    }
   }
  } else {
   if(i7<0.0040880050510168076){
    if(i36<1.1351547241210938){
     s0+=872.0;
     s1+=1.0;
    } else {
     s0+=478.0;
     s1+=62.0;
    }
   } else {
    if(i39<-9.434814273845404e-06){
     s0+=118.0;
     s1+=728.0;
    } else {
     s0+=137.0;
    }
   }
  }
 } else {
  if(i28<0.038527704775333405){
   if(i24<0.002604034263640642){
    s0+=767.0;
   } else {
    if(i22<-0.00028380751609802246){
     s0+=176.0;
     s1+=47.0;
    } else {
     s0+=33.0;
     s1+=122.0;
    }
   }
  } else {
   if(i16<0.00011835071200039238){
    if(i58<0.02639244869351387){
     s0+=26.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i12<0.003935188055038452){
     s0+=18.0;
     s1+=21.0;
    } else {
     s0+=7.0;
     s1+=1305.0;
    }
   }
  }
 }
} else {
 if(i24<0.0022443931084126234){
  if(i35<0.0005128085613250732){
   if(i54<-5.68047835258767e-06){
    if(i40<0.0012297503417357802){
     s0+=31.0;
     s1+=2694.0;
    } else {
     s0+=102.0;
     s1+=17.0;
    }
   } else {
    if(i28<0.007688445039093494){
     s0+=340.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   s0+=3775.0;
  }
 } else {
  if(i12<0.06848582625389099){
   if(i72<-0.02247399091720581){
    if(i51<1.0803416444105096e-05){
     s0+=4.0;
     s1+=218.0;
    } else {
     s0+=46.0;
     s1+=92.0;
    }
   } else {
    if(i2<1.0071784257888794){
     s0+=182.0;
     s1+=11.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i36<1.1269173622131348){
    if(i13<0.9909284114837646){
     s1+=6.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i1<-7.452009594999254e-05){
     s0+=23.0;
     s1+=13799.0;
    } else {
     s0+=76.0;
     s1+=830.0;
    }
   }
  }
 }
}
if(i7<0.0077146547846496105){
 if(i43<-2.651747126947157e-05){
  if(i64<-1.6123749446705915e-07){
   if(i16<0.0008157913107424974){
    if(i55<-0.0001588333398103714){
     s0+=17.0;
     s1+=135.0;
    } else {
     s0+=12.0;
     s1+=1770.0;
    }
   } else {
    s0+=69.0;
   }
  } else {
   s0+=11.0;
  }
 } else {
  if(i7<0.0036593035329133272){
   if(i43<-2.139034404535778e-05){
    if(i63<0.000530291988980025){
     s0+=12.0;
     s1+=91.0;
    } else {
     s0+=231.0;
     s1+=31.0;
    }
   } else {
    if(i23<1.0231759548187256){
     s0+=12843.0;
     s1+=516.0;
    } else {
     s0+=78597.0;
     s1+=615.0;
    }
   }
  } else {
   if(i53<0.999622106552124){
    if(i2<0.9991019368171692){
     s0+=13261.0;
     s1+=3.0;
    } else {
     s0+=1653.0;
     s1+=207.0;
    }
   } else {
    if(i10<0.9877769351005554){
     s0+=2936.0;
     s1+=337.0;
    } else {
     s0+=2105.0;
     s1+=3707.0;
    }
   }
  }
 }
} else {
 if(i3<-1.901388168334961e-05){
  if(i12<0.15212783217430115){
   if(i19<0.06837910413742065){
    if(i41<0.7715810537338257){
     s0+=51.0;
     s1+=29.0;
    } else {
     s0+=3736.0;
     s1+=73.0;
    }
   } else {
    if(i62<0.005645170342177153){
     s0+=644.0;
     s1+=93.0;
    } else {
     s0+=43.0;
     s1+=108.0;
    }
   }
  } else {
   if(i44<1.1232991218566895){
    if(i1<-5.2729767048731446e-05){
     s0+=3.0;
     s1+=49.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i28<0.009105117991566658){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i42<1.0235018730163574){
   if(i25<1.0097882747650146){
    if(i43<0.00030077798874117434){
     s0+=99.0;
     s1+=449.0;
    } else {
     s0+=216.0;
     s1+=59.0;
    }
   } else {
    if(i4<1.0037267208099365){
     s0+=27.0;
     s1+=48.0;
    } else {
     s0+=11.0;
     s1+=538.0;
    }
   }
  } else {
   if(i56<0.9966689944267273){
    s0+=23.0;
   } else {
    if(i16<0.001867488375864923){
     s0+=155.0;
     s1+=14785.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
}
if(i4<1.003873586654663){
 if(i50<0.09849527478218079){
  if(i10<1.0096235275268555){
   if(i28<0.007340525276958942){
    if(i21<-0.0003848075866699219){
     s0+=9555.0;
     s1+=439.0;
    } else {
     s0+=60722.0;
     s1+=160.0;
    }
   } else {
    if(i6<-7.730722427368164e-05){
     s0+=32726.0;
     s1+=538.0;
    } else {
     s0+=6069.0;
     s1+=3339.0;
    }
   }
  } else {
   if(i40<0.0007836876902729273){
    if(i21<-0.00022029876708984375){
     s0+=36.0;
    } else {
     s0+=11.0;
     s1+=375.0;
    }
   } else {
    if(i30<1.0978162288665771){
     s0+=1.0;
     s1+=119.0;
    } else {
     s0+=1399.0;
     s1+=377.0;
    }
   }
  }
 } else {
  if(i12<0.06244811415672302){
   if(i5<6.99162483215332e-05){
    if(i74<0.04798777773976326){
     s0+=1272.0;
     s1+=15.0;
    } else {
     s0+=50.0;
     s1+=20.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i21<-0.004159897565841675){
    if(i31<1.5508465766906738){
     s0+=258.0;
     s1+=22.0;
    } else {
     s0+=9.0;
     s1+=96.0;
    }
   } else {
    if(i43<4.6405300963670015e-05){
     s0+=67.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=1247.0;
    }
   }
  }
 }
} else {
 if(i11<1.017743706703186){
  if(i30<1.1766420602798462){
   if(i32<0.0010060702916234732){
    if(i24<0.00024030767963267863){
     s0+=624.0;
    } else {
     s0+=1.0;
     s1+=1589.0;
    }
   } else {
    if(i40<0.0008727788226678967){
     s0+=1.0;
     s1+=39.0;
    } else {
     s0+=3215.0;
     s1+=16.0;
    }
   }
  } else {
   if(i63<0.00038622692227363586){
    if(i22<0.0001685023307800293){
     s0+=142.0;
     s1+=5.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i26<0.12156331539154053){
     s0+=133.0;
     s1+=714.0;
    } else {
     s0+=14.0;
     s1+=2988.0;
    }
   }
  }
 } else {
  if(i16<0.0007050560088828206){
   if(i19<0.061278343200683594){
    if(i47<1.1980533599853516e-05){
     s0+=3.0;
     s1+=77.0;
    } else {
     s0+=20.0;
     s1+=2.0;
    }
   } else {
    if(i5<0.00027930736541748047){
     s0+=10.0;
     s1+=12194.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s0+=52.0;
  }
 }
}
if(i1<-9.283507824875414e-05){
 if(i15<0.9066811800003052){
  if(i1<-0.00015639846969861537){
   if(i12<0.040767818689346313){
    if(i74<0.08168639987707138){
     s0+=48.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i35<0.0007243752479553223){
     s0+=5.0;
     s1+=83.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i28<0.05608603358268738){
    if(i72<-0.21715876460075378){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=523.0;
     s1+=9.0;
    }
   } else {
    if(i58<0.007564175873994827){
     s0+=33.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i37<0.0024383491836488247){
   if(i40<0.0008475208305753767){
    if(i22<0.0009202659130096436){
     s1+=771.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i34<1.09272301197052){
     s1+=20.0;
    } else {
     s0+=294.0;
     s1+=1.0;
    }
   }
  } else {
   if(i26<0.03954237699508667){
    if(i74<0.02213376760482788){
     s0+=122.0;
     s1+=2.0;
    } else {
     s0+=25.0;
     s1+=106.0;
    }
   } else {
    if(i3<2.9802322387695312e-06){
     s0+=27.0;
     s1+=561.0;
    } else {
     s0+=10.0;
     s1+=14139.0;
    }
   }
  }
 }
} else {
 if(i22<0.00018101930618286133){
  if(i5<1.8298625946044922e-05){
   if(i35<6.502866744995117e-05){
    if(i19<0.23466548323631287){
     s0+=74556.0;
     s1+=710.0;
    } else {
     s0+=81.0;
     s1+=66.0;
    }
   } else {
    if(i24<0.0009163363138213754){
     s0+=4232.0;
     s1+=2259.0;
    } else {
     s0+=28524.0;
     s1+=833.0;
    }
   }
  } else {
   if(i7<0.0041358331218361855){
    if(i67<-0.0024872622452676296){
     s0+=9.0;
     s1+=18.0;
    } else {
     s0+=5345.0;
     s1+=132.0;
    }
   } else {
    if(i43<0.00015086216444615275){
     s0+=265.0;
     s1+=2131.0;
    } else {
     s0+=1169.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i23<1.0773637294769287){
   if(i3<4.798173904418945e-05){
    if(i39<-1.6666246665408835e-05){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=221.0;
    }
   } else {
    if(i49<-3.847227162623312e-06){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1331.0;
    }
   }
  } else {
   if(i7<0.005855622235685587){
    if(i3<0.00017201900482177734){
     s0+=1012.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i56<1.000012993812561){
     s0+=22.0;
    } else {
     s1+=475.0;
    }
   }
  }
 }
}
if(i3<6.574392318725586e-05){
 if(i26<0.2166942059993744){
  if(i2<1.0020086765289307){
   if(i4<0.9973740577697754){
    if(i7<0.01971353031694889){
     s0+=39019.0;
     s1+=260.0;
    } else {
     s0+=72.0;
     s1+=58.0;
    }
   } else {
    if(i33<0.0007213441422209144){
     s0+=58977.0;
     s1+=500.0;
    } else {
     s0+=8096.0;
     s1+=3075.0;
    }
   }
  } else {
   if(i24<0.0022580698132514954){
    if(i31<1.116804838180542){
     s0+=1140.0;
     s1+=617.0;
    } else {
     s0+=3630.0;
     s1+=12.0;
    }
   } else {
    if(i0<4.947185516357422e-05){
     s0+=2332.0;
     s1+=566.0;
    } else {
     s0+=720.0;
     s1+=1560.0;
    }
   }
  }
 } else {
  if(i24<0.0025688123423606157){
   if(i22<0.00015032291412353516){
    if(i7<0.007083310279995203){
     s0+=183.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i39<-8.135299140121788e-06){
    if(i12<0.21533340215682983){
     s0+=38.0;
     s1+=19.0;
    } else {
     s0+=27.0;
     s1+=1423.0;
    }
   } else {
    s0+=60.0;
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i31<1.1180615425109863){
   if(i16<0.0005916407098993659){
    s1+=2408.0;
   } else {
    s0+=45.0;
   }
  } else {
   s0+=1834.0;
  }
 } else {
  if(i43<0.00029499526135623455){
   if(i22<-0.00029218196868896484){
    if(i40<0.003928219899535179){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=275.0;
    }
   } else {
    if(i45<0.08474969863891602){
     s0+=20.0;
     s1+=1587.0;
    } else {
     s0+=8.0;
     s1+=12067.0;
    }
   }
  } else {
   if(i59<-0.01333850622177124){
    if(i7<0.022297702729701996){
     s0+=37.0;
    } else {
     s0+=10.0;
     s1+=37.0;
    }
   } else {
    if(i28<0.025471866130828857){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i9<1.0125961303710938){
 if(i4<1.003117561340332){
  if(i28<0.06784076988697052){
   if(i7<0.003659198060631752){
    if(i18<0.001050972961820662){
     s0+=67242.0;
     s1+=207.0;
    } else {
     s0+=19127.0;
     s1+=866.0;
    }
   } else {
    if(i5<-3.3974647521972656e-06){
     s0+=18725.0;
     s1+=244.0;
    } else {
     s0+=5109.0;
     s1+=3741.0;
    }
   }
  } else {
   if(i23<1.0399506092071533){
    if(i52<1.0024991035461426){
     s0+=239.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i69<0.11178363859653473){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=13.0;
     s1+=800.0;
    }
   }
  }
 } else {
  if(i31<1.1979892253875732){
   if(i40<0.0010002872440963984){
    if(i30<1.0609431266784668){
     s0+=1036.0;
    } else {
     s0+=102.0;
     s1+=1447.0;
    }
   } else {
    if(i36<1.0886855125427246){
     s0+=8.0;
     s1+=92.0;
    } else {
     s0+=3845.0;
    }
   }
  } else {
   if(i32<0.00192650081589818){
    s0+=229.0;
   } else {
    if(i7<0.005310342647135258){
     s0+=167.0;
     s1+=127.0;
    } else {
     s0+=142.0;
     s1+=3750.0;
    }
   }
  }
 }
} else {
 if(i29<0.0021049007773399353){
  if(i31<1.1180615425109863){
   s1+=1457.0;
  } else {
   s0+=394.0;
  }
 } else {
  if(i36<1.7041046619415283){
   if(i5<-2.980232238769531e-07){
    if(i63<0.005102957598865032){
     s0+=11.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i23<1.0594638586044312){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=11623.0;
    }
   }
  } else {
   s0+=17.0;
  }
 }
}
if(i5<2.2470951080322266e-05){
 if(i45<0.20483282208442688){
  if(i8<1.0116910934448242){
   if(i38<0.0115569569170475){
    if(i33<0.0006907876813784242){
     s0+=55011.0;
     s1+=174.0;
    } else {
     s0+=11491.0;
     s1+=529.0;
    }
   } else {
    if(i29<0.001066779368557036){
     s0+=7934.0;
     s1+=2344.0;
    } else {
     s0+=34676.0;
     s1+=1099.0;
    }
   }
  } else {
   if(i7<0.005097781307995319){
    if(i5<1.8715858459472656e-05){
     s0+=687.0;
     s1+=14.0;
    } else {
     s0+=25.0;
     s1+=38.0;
    }
   } else {
    if(i60<0.9996986389160156){
     s0+=24.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=526.0;
    }
   }
  }
 } else {
  if(i7<0.006009400822222233){
   if(i25<1.0026493072509766){
    if(i19<0.21186524629592896){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=168.0;
     s1+=9.0;
    }
   } else {
    if(i16<0.0002622623578645289){
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i60<1.0101776123046875){
    if(i69<0.008686421439051628){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=649.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i37<0.0030000684782862663){
  if(i24<0.0009702398092485964){
   if(i8<1.0081508159637451){
    if(i33<0.0010374559788033366){
     s0+=190.0;
     s1+=366.0;
    } else {
     s0+=1027.0;
     s1+=19.0;
    }
   } else {
    if(i31<1.0610902309417725){
     s0+=62.0;
    } else {
     s1+=2493.0;
    }
   }
  } else {
   if(i31<1.1935834884643555){
    s0+=3324.0;
   } else {
    if(i26<0.08443793654441833){
     s0+=254.0;
     s1+=52.0;
    } else {
     s0+=129.0;
     s1+=435.0;
    }
   }
  }
 } else {
  if(i6<0.001147627830505371){
   if(i12<0.08742746710777283){
    if(i40<0.01903645694255829){
     s0+=846.0;
     s1+=142.0;
    } else {
     s0+=14.0;
     s1+=48.0;
    }
   } else {
    if(i4<1.0011646747589111){
     s0+=121.0;
     s1+=232.0;
    } else {
     s0+=38.0;
     s1+=2033.0;
    }
   }
  } else {
   if(i4<1.0057060718536377){
    if(i19<0.14505451917648315){
     s0+=443.0;
     s1+=286.0;
    } else {
     s0+=19.0;
     s1+=442.0;
    }
   } else {
    if(i1<-9.607086394680664e-05){
     s0+=5.0;
     s1+=11682.0;
    } else {
     s0+=53.0;
     s1+=668.0;
    }
   }
  }
 }
}
if(i0<0.0009596943855285645){
 if(i23<1.1402404308319092){
  if(i27<1.0214502811431885){
   if(i1<-8.231226820498705e-05){
    if(i61<-0.005962967872619629){
     s0+=883.0;
     s1+=106.0;
    } else {
     s0+=254.0;
     s1+=476.0;
    }
   } else {
    if(i18<0.0015701677184551954){
     s0+=86654.0;
     s1+=722.0;
    } else {
     s0+=24435.0;
     s1+=3851.0;
    }
   }
  } else {
   if(i31<1.116804838180542){
    if(i55<0.00019440395408309996){
     s0+=11.0;
     s1+=407.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   } else {
    if(i45<0.1422901451587677){
     s0+=685.0;
     s1+=106.0;
    } else {
     s0+=201.0;
     s1+=374.0;
    }
   }
  }
 } else {
  if(i7<0.006063672713935375){
   if(i18<0.0015303641557693481){
    s0+=1026.0;
   } else {
    if(i51<1.8646671378519386e-05){
     s1+=35.0;
    } else {
     s0+=107.0;
    }
   }
  } else {
   if(i10<0.9360528588294983){
    if(i19<0.007647126913070679){
     s0+=80.0;
     s1+=5.0;
    } else {
     s0+=19.0;
     s1+=82.0;
    }
   } else {
    if(i28<0.02386011928319931){
     s0+=31.0;
     s1+=56.0;
    } else {
     s0+=33.0;
     s1+=1840.0;
    }
   }
  }
 }
} else {
 if(i7<0.0034800004214048386){
  if(i35<0.0005202293395996094){
   if(i25<1.0068328380584717){
    s0+=70.0;
   } else {
    s1+=511.0;
   }
  } else {
   if(i31<1.185887336730957){
    s0+=1527.0;
   } else {
    if(i9<1.0124015808105469){
     s0+=8.0;
    } else {
     s1+=132.0;
    }
   }
  }
 } else {
  if(i16<0.0009518089354969561){
   if(i9<0.9766114950180054){
    if(i2<1.005888819694519){
     s0+=41.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=68.0;
    }
   } else {
    if(i19<0.09434086084365845){
     s0+=78.0;
     s1+=1313.0;
    } else {
     s0+=37.0;
     s1+=14218.0;
    }
   }
  } else {
   s0+=338.0;
  }
 }
}
if(i4<1.0038654804229736){
 if(i50<0.08876470476388931){
  if(i38<0.01348651573061943){
   if(i34<1.0903575420379639){
    if(i13<1.0078489780426025){
     s0+=22206.0;
     s1+=591.0;
    } else {
     s0+=371.0;
     s1+=269.0;
    }
   } else {
    if(i39<-2.0745794245158322e-05){
     s0+=351.0;
     s1+=52.0;
    } else {
     s0+=50749.0;
     s1+=110.0;
    }
   }
  } else {
   if(i2<1.0001145601272583){
    if(i6<-0.0002626776695251465){
     s0+=21605.0;
     s1+=122.0;
    } else {
     s0+=4646.0;
     s1+=502.0;
    }
   } else {
    if(i24<0.0009518878650851548){
     s0+=399.0;
     s1+=1809.0;
    } else {
     s0+=9790.0;
     s1+=1670.0;
    }
   }
  }
 } else {
  if(i43<0.00030230224365368485){
   if(i20<1.0607160329818726){
    if(i64<3.903195647581015e-06){
     s0+=2.0;
     s1+=35.0;
    } else {
     s0+=290.0;
     s1+=3.0;
    }
   } else {
    if(i38<0.11605877429246902){
     s0+=193.0;
     s1+=214.0;
    } else {
     s0+=39.0;
     s1+=930.0;
    }
   }
  } else {
   if(i20<1.0907601118087769){
    if(i12<0.19715964794158936){
     s0+=1581.0;
     s1+=72.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i18<0.004900449421256781){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=184.0;
    }
   }
  }
 }
} else {
 if(i37<0.002119882730767131){
  if(i21<0.0011499524116516113){
   if(i7<0.004379834979772568){
    if(i16<0.00020590169879142195){
     s0+=73.0;
     s1+=86.0;
    } else {
     s0+=2729.0;
     s1+=4.0;
    }
   } else {
    if(i34<1.1222262382507324){
     s1+=316.0;
    } else {
     s0+=52.0;
     s1+=48.0;
    }
   }
  } else {
   if(i63<0.0007062000222504139){
    if(i6<0.0019277334213256836){
     s0+=17.0;
     s1+=2184.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i24<0.0010799221927300096){
     s1+=128.0;
    } else {
     s0+=1075.0;
    }
   }
  }
 } else {
  if(i19<0.10225111246109009){
   if(i1<-6.944258348084986e-05){
    if(i36<1.1297659873962402){
     s0+=16.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=612.0;
    }
   } else {
    if(i7<0.00644831545650959){
     s0+=124.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=90.0;
    }
   }
  } else {
   if(i61<-0.012347400188446045){
    s0+=2.0;
   } else {
    if(i12<0.11850422620773315){
     s0+=23.0;
     s1+=444.0;
    } else {
     s0+=16.0;
     s1+=13927.0;
    }
   }
  }
 }
}
if(i0<0.0009572505950927734){
 if(i23<1.1402404308319092){
  if(i7<0.0037359213456511497){
   if(i34<1.0905301570892334){
    if(i27<0.995246410369873){
     s0+=4023.0;
     s1+=568.0;
    } else {
     s0+=22147.0;
     s1+=311.0;
    }
   } else {
    if(i63<0.0020840084180235863){
     s0+=61234.0;
     s1+=177.0;
    } else {
     s0+=2314.0;
     s1+=119.0;
    }
   }
  } else {
   if(i3<-1.901388168334961e-05){
    if(i2<0.9992600083351135){
     s0+=15671.0;
     s1+=62.0;
    } else {
     s0+=5719.0;
     s1+=879.0;
    }
   } else {
    if(i26<0.037029653787612915){
     s0+=531.0;
     s1+=181.0;
    } else {
     s0+=1322.0;
     s1+=3686.0;
    }
   }
  }
 } else {
  if(i7<0.00647768983617425){
   if(i33<0.0006308010197244585){
    s0+=954.0;
   } else {
    if(i36<1.142959475517273){
     s1+=24.0;
    } else {
     s0+=156.0;
     s1+=7.0;
    }
   }
  } else {
   if(i45<0.007369309663772583){
    if(i61<-0.006502985954284668){
     s0+=94.0;
     s1+=23.0;
    } else {
     s0+=16.0;
     s1+=63.0;
    }
   } else {
    if(i46<0.0004838703607674688){
     s0+=27.0;
     s1+=1907.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i44<1.1288561820983887){
  if(i16<0.0002969361376017332){
   if(i47<5.65648078918457e-05){
    if(i66<0.004807384684681892){
     s0+=31.0;
     s1+=3137.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    s0+=14.0;
   }
  } else {
   if(i24<0.0024535558186471462){
    s0+=1744.0;
   } else {
    if(i7<0.016809770837426186){
     s0+=29.0;
     s1+=9.0;
    } else {
     s1+=29.0;
    }
   }
  }
 } else {
  if(i29<0.0019996617920696735){
   s0+=243.0;
  } else {
   if(i45<0.000132828950881958){
    if(i16<0.00010119628859683871){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=92.0;
    }
   } else {
    if(i4<1.0072274208068848){
     s0+=35.0;
     s1+=1296.0;
    } else {
     s0+=2.0;
     s1+=11926.0;
    }
   }
  }
 }
}
if(i15<1.017037034034729){
 if(i2<1.0025755167007446){
  if(i63<0.010866867378354073){
   if(i18<0.0015732361935079098){
    if(i42<1.0100414752960205){
     s0+=9746.0;
     s1+=357.0;
    } else {
     s0+=75811.0;
     s1+=387.0;
    }
   } else {
    if(i31<1.1164028644561768){
     s0+=3153.0;
     s1+=2601.0;
    } else {
     s0+=19991.0;
     s1+=619.0;
    }
   }
  } else {
   if(i19<0.06224784255027771){
    if(i68<-0.0011355632450431585){
     s0+=27.0;
     s1+=19.0;
    } else {
     s0+=491.0;
     s1+=16.0;
    }
   } else {
    if(i28<0.032626666128635406){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=435.0;
    }
   }
  }
 } else {
  if(i28<0.02046818844974041){
   if(i7<0.0027496928814798594){
    if(i16<0.00012668129056692123){
     s0+=120.0;
     s1+=160.0;
    } else {
     s0+=3052.0;
     s1+=49.0;
    }
   } else {
    if(i9<1.0058687925338745){
     s0+=1001.0;
     s1+=282.0;
    } else {
     s0+=536.0;
     s1+=1490.0;
    }
   }
  } else {
   if(i59<-0.012603789567947388){
    if(i53<1.0240815877914429){
     s0+=271.0;
     s1+=103.0;
    } else {
     s0+=1.0;
     s1+=102.0;
    }
   } else {
    if(i36<1.1270281076431274){
     s0+=75.0;
     s1+=13.0;
    } else {
     s0+=365.0;
     s1+=3452.0;
    }
   }
  }
 }
} else {
 if(i39<-1.1512915079947561e-05){
  if(i3<-8.761882781982422e-06){
   if(i18<0.005119006615132093){
    if(i62<-0.0008724101353436708){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=280.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.00886128656566143){
     s0+=26.0;
    } else {
     s0+=10.0;
     s1+=138.0;
    }
   }
  } else {
   if(i28<0.005277448333799839){
    if(i24<0.0011178369168192148){
     s1+=314.0;
    } else {
     s0+=432.0;
     s1+=213.0;
    }
   } else {
    if(i26<0.14636391401290894){
     s0+=216.0;
     s1+=1634.0;
    } else {
     s0+=63.0;
     s1+=12130.0;
    }
   }
  }
 } else {
  if(i39<-7.63108255341649e-06){
   if(i43<1.4012858628120739e-05){
    if(i1<-1.0024829862231854e-05){
     s0+=62.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<-0.001231849193572998){
     s0+=15.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   s0+=481.0;
  }
 }
}
if(i10<1.015183925628662){
 if(i35<0.00014764070510864258){
  if(i20<1.152909755706787){
   if(i32<0.0009853061055764556){
    if(i60<1.0004589557647705){
     s0+=21721.0;
     s1+=387.0;
    } else {
     s0+=6133.0;
     s1+=1036.0;
    }
   } else {
    if(i26<0.23667016625404358){
     s0+=60867.0;
     s1+=460.0;
    } else {
     s0+=32.0;
     s1+=67.0;
    }
   }
  } else {
   if(i54<-3.4603890526341274e-06){
    if(i69<0.306616872549057){
     s0+=1.0;
     s1+=20.0;
    } else {
     s1+=188.0;
    }
   } else {
    s0+=220.0;
   }
  }
 } else {
  if(i1<-7.051282591419294e-05){
   if(i11<0.9531890153884888){
    if(i26<0.10198745131492615){
     s0+=822.0;
     s1+=77.0;
    } else {
     s0+=20.0;
     s1+=137.0;
    }
   } else {
    if(i32<0.005114869214594364){
     s0+=593.0;
     s1+=1011.0;
    } else {
     s0+=137.0;
     s1+=2962.0;
    }
   }
  } else {
   if(i7<0.004086808301508427){
    if(i36<1.0773305892944336){
     s0+=5055.0;
     s1+=672.0;
    } else {
     s0+=14911.0;
     s1+=158.0;
    }
   } else {
    if(i4<0.9993937015533447){
     s0+=4067.0;
     s1+=269.0;
    } else {
     s0+=1056.0;
     s1+=2837.0;
    }
   }
  }
 }
} else {
 if(i0<0.00023365020751953125){
  if(i19<0.19731637835502625){
   if(i54<-2.9146815450076247e-06){
    if(i62<-0.0006355701480060816){
     s0+=3.0;
     s1+=41.0;
    } else {
     s0+=170.0;
     s1+=32.0;
    }
   } else {
    s0+=208.0;
   }
  } else {
   if(i22<-2.22623348236084e-05){
    if(i33<0.0018665720708668232){
     s0+=20.0;
     s1+=17.0;
    } else {
     s1+=136.0;
    }
   } else {
    if(i73<0.005192399024963379){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i18<0.0012083259643986821){
   if(i64<-6.209452294569928e-06){
    if(i49<-6.533251507789828e-06){
     s0+=13.0;
    } else {
     s1+=364.0;
    }
   } else {
    if(i18<0.0012065593618899584){
     s0+=240.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i49<-6.642127118539065e-06){
    s0+=129.0;
   } else {
    if(i8<1.0193507671356201){
     s0+=179.0;
     s1+=1527.0;
    } else {
     s0+=24.0;
     s1+=11788.0;
    }
   }
  }
 }
}
if(i4<1.0036859512329102){
 if(i12<0.2043227255344391){
  if(i33<0.0007346938364207745){
   if(i58<0.001986355986446142){
    if(i33<0.0006471581291407347){
     s0+=73065.0;
     s1+=211.0;
    } else {
     s0+=4526.0;
     s1+=208.0;
    }
   } else {
    if(i6<0.0004838109016418457){
     s0+=2508.0;
     s1+=76.0;
    } else {
     s0+=13.0;
     s1+=74.0;
    }
   }
  } else {
   if(i74<0.025945529341697693){
    if(i33<0.001124496222473681){
     s0+=11357.0;
     s1+=3396.0;
    } else {
     s0+=20015.0;
     s1+=988.0;
    }
   } else {
    if(i63<0.010274829342961311){
     s0+=329.0;
     s1+=228.0;
    } else {
     s0+=42.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i54<-3.554522436388652e-06){
   if(i4<0.9993264079093933){
    if(i44<1.1281554698944092){
     s0+=40.0;
     s1+=15.0;
    } else {
     s0+=7.0;
     s1+=269.0;
    }
   } else {
    if(i24<0.0025475486181676388){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=774.0;
    }
   }
  } else {
   if(i7<0.007764182984828949){
    if(i26<0.21204650402069092){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=178.0;
    }
   } else {
    s1+=6.0;
   }
  }
 }
} else {
 if(i31<1.1979892253875732){
  if(i35<0.0005127787590026855){
   if(i58<0.0009189109550788999){
    if(i5<1.7583370208740234e-05){
     s0+=20.0;
     s1+=17.0;
    } else {
     s0+=9.0;
     s1+=2658.0;
    }
   } else {
    if(i16<0.00015802134294062853){
     s0+=13.0;
     s1+=97.0;
    } else {
     s0+=362.0;
     s1+=8.0;
    }
   }
  } else {
   s0+=3725.0;
  }
 } else {
  if(i32<0.001945793628692627){
   if(i13<1.0392792224884033){
    s0+=178.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i31<1.7041046619415283){
    if(i36<1.1279253959655762){
     s0+=19.0;
     s1+=6.0;
    } else {
     s0+=202.0;
     s1+=14832.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
}
if(i15<1.017055869102478){
 if(i2<1.0026251077651978){
  if(i7<0.0036539556458592415){
   if(i32<0.0007298421114683151){
    if(i55<0.00016491298447363079){
     s0+=24404.0;
     s1+=236.0;
    } else {
     s0+=2373.0;
     s1+=580.0;
    }
   } else {
    if(i58<0.0019056977471336722){
     s0+=56985.0;
     s1+=78.0;
    } else {
     s0+=3430.0;
     s1+=115.0;
    }
   }
  } else {
   if(i3<-2.5093555450439453e-05){
    if(i20<1.1405069828033447){
     s0+=20924.0;
     s1+=597.0;
    } else {
     s0+=67.0;
     s1+=138.0;
    }
   } else {
    if(i16<0.00035427697002887726){
     s0+=850.0;
     s1+=2600.0;
    } else {
     s0+=771.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i38<0.034158214926719666){
   if(i43<-2.2795926270191558e-05){
    if(i49<-4.112720489501953e-06){
     s0+=90.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=941.0;
    }
   } else {
    if(i18<0.0020469101145863533){
     s0+=2928.0;
     s1+=110.0;
    } else {
     s0+=1034.0;
     s1+=878.0;
    }
   }
  } else {
   if(i46<-0.00015423510922119021){
    if(i44<1.0745704174041748){
     s0+=58.0;
     s1+=4.0;
    } else {
     s0+=246.0;
     s1+=2836.0;
    }
   } else {
    if(i19<0.08823490142822266){
     s0+=591.0;
     s1+=236.0;
    } else {
     s0+=240.0;
     s1+=735.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013815650017932057){
  if(i0<0.002001643180847168){
   if(i64<4.0849663491826504e-06){
    if(i25<0.9971538186073303){
     s0+=27.0;
     s1+=3.0;
    } else {
     s0+=722.0;
     s1+=4.0;
    }
   } else {
    if(i39<-7.734135579084978e-06){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=32.0;
    }
   }
  } else {
   s1+=391.0;
  }
 } else {
  if(i26<0.1745913326740265){
   if(i35<0.0006175041198730469){
    if(i51<3.2835429010447115e-05){
     s0+=73.0;
     s1+=2204.0;
    } else {
     s0+=110.0;
     s1+=2.0;
    }
   } else {
    if(i9<1.0151997804641724){
     s0+=433.0;
     s1+=31.0;
    } else {
     s1+=230.0;
    }
   }
  } else {
   if(i7<0.0029913492035120726){
    if(i43<-5.462810077005997e-05){
     s1+=28.0;
    } else {
     s0+=83.0;
     s1+=4.0;
    }
   } else {
    if(i1<-8.738636097405106e-05){
     s0+=3.0;
     s1+=10602.0;
    } else {
     s0+=24.0;
     s1+=613.0;
    }
   }
  }
 }
}
if(i2<1.002624750137329){
 if(i27<1.0214492082595825){
  if(i33<0.0007050713757053018){
   if(i58<0.00036108255153521895){
    if(i59<-0.0006645917892456055){
     s0+=1985.0;
     s1+=185.0;
    } else {
     s0+=23958.0;
     s1+=135.0;
    }
   } else {
    if(i44<1.1354830265045166){
     s0+=50431.0;
     s1+=40.0;
    } else {
     s0+=1848.0;
     s1+=71.0;
    }
   }
  } else {
   if(i2<0.9996764659881592){
    if(i23<1.1820518970489502){
     s0+=19294.0;
     s1+=268.0;
    } else {
     s0+=6.0;
     s1+=82.0;
    }
   } else {
    if(i37<0.001110367476940155){
     s0+=2280.0;
     s1+=2674.0;
    } else {
     s0+=9835.0;
     s1+=1124.0;
    }
   }
  }
 } else {
  if(i33<0.0007118298672139645){
   if(i39<-7.68557219998911e-06){
    if(i51<9.900855729938485e-06){
     s0+=51.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i54<-3.817357992375037e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=567.0;
    }
   }
  } else {
   if(i3<-2.1517276763916016e-05){
    if(i7<0.011792287230491638){
     s0+=208.0;
     s1+=41.0;
    } else {
     s0+=3.0;
     s1+=101.0;
    }
   } else {
    if(i16<0.0011509588221088052){
     s0+=17.0;
     s1+=963.0;
    } else {
     s0+=55.0;
    }
   }
  }
 }
} else {
 if(i3<8.231401443481445e-05){
  if(i46<-0.0002528125769458711){
   if(i38<0.036045417189598083){
    if(i7<0.0043798694387078285){
     s0+=541.0;
     s1+=24.0;
    } else {
     s0+=76.0;
     s1+=449.0;
    }
   } else {
    if(i3<-2.8312206268310547e-05){
     s0+=160.0;
     s1+=168.0;
    } else {
     s0+=134.0;
     s1+=2079.0;
    }
   }
  } else {
   if(i67<0.0029590448830276728){
    if(i21<0.001279592514038086){
     s0+=3440.0;
     s1+=432.0;
    } else {
     s0+=83.0;
     s1+=135.0;
    }
   } else {
    if(i28<0.02599904127418995){
     s0+=366.0;
     s1+=121.0;
    } else {
     s0+=103.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i32<0.0019541617948561907){
   if(i35<0.0005174875259399414){
    if(i71<-2.4425926312687807e-06){
     s0+=12.0;
    } else {
     s0+=6.0;
     s1+=1882.0;
    }
   } else {
    if(i14<1.047054409980774){
     s0+=984.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i21<-0.002184569835662842){
    if(i51<3.7581157812383026e-06){
     s1+=79.0;
    } else {
     s0+=65.0;
     s1+=175.0;
    }
   } else {
    if(i1<-9.604798106011003e-05){
     s1+=12151.0;
    } else {
     s0+=17.0;
     s1+=658.0;
    }
   }
  }
 }
}
if(i21<0.0013732314109802246){
 if(i3<6.335973739624023e-05){
  if(i19<0.20479726791381836){
   if(i11<1.009044885635376){
    if(i39<-4.40390249423217e-05){
     s0+=262.0;
     s1+=456.0;
    } else {
     s0+=111237.0;
     s1+=4698.0;
    }
   } else {
    if(i58<0.0006744234124198556){
     s0+=376.0;
     s1+=612.0;
    } else {
     s0+=1819.0;
     s1+=470.0;
    }
   }
  } else {
   if(i43<2.5004264898598194e-05){
    if(i4<1.00419020652771){
     s0+=152.0;
    } else {
     s0+=16.0;
     s1+=31.0;
    }
   } else {
    if(i3<-2.8014183044433594e-05){
     s0+=146.0;
     s1+=225.0;
    } else {
     s0+=29.0;
     s1+=1102.0;
    }
   }
  }
 } else {
  if(i37<0.0019959714263677597){
   if(i40<0.0010085281683132052){
    if(i28<0.0025110850110650063){
     s0+=76.0;
     s1+=29.0;
    } else {
     s0+=18.0;
     s1+=414.0;
    }
   } else {
    s0+=1163.0;
   }
  } else {
   if(i43<0.00028819366707466543){
    if(i23<1.0742030143737793){
     s0+=39.0;
     s1+=88.0;
    } else {
     s0+=33.0;
     s1+=2727.0;
    }
   } else {
    if(i56<1.0028676986694336){
     s0+=39.0;
     s1+=34.0;
    } else {
     s0+=5.0;
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i22<0.00030034780502319336){
  if(i2<1.0017952919006348){
   if(i57<0.14187678694725037){
    if(i32<0.0008593917591497302){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=337.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i52<0.9998226165771484){
    if(i7<0.016027480363845825){
     s0+=352.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i1<-7.335442205658183e-05){
     s1+=1044.0;
    } else {
     s0+=262.0;
     s1+=798.0;
    }
   }
  }
 } else {
  if(i49<-6.426866548281396e-06){
   s0+=47.0;
  } else {
   s1+=11571.0;
  }
 }
}
if(i4<1.0038769245147705){
 if(i1<-8.833887113723904e-05){
  if(i26<0.06411013007164001){
   if(i10<0.9485912322998047){
    if(i28<0.05430067330598831){
     s0+=697.0;
     s1+=6.0;
    } else {
     s0+=75.0;
     s1+=79.0;
    }
   } else {
    if(i23<1.0737862586975098){
     s0+=58.0;
     s1+=9.0;
    } else {
     s0+=31.0;
     s1+=66.0;
    }
   }
  } else {
   if(i37<0.0031596506014466286){
    if(i54<-1.1705235010595061e-05){
     s0+=93.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   } else {
    if(i7<0.00880221463739872){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=41.0;
     s1+=1404.0;
    }
   }
  }
 } else {
  if(i5<2.2113323211669922e-05){
   if(i35<8.26716423034668e-05){
    if(i12<0.23061108589172363){
     s0+=77822.0;
     s1+=850.0;
    } else {
     s0+=90.0;
     s1+=63.0;
    }
   } else {
    if(i29<0.001033186912536621){
     s0+=4276.0;
     s1+=2311.0;
    } else {
     s0+=26303.0;
     s1+=1093.0;
    }
   }
  } else {
   if(i23<1.1097925901412964){
    if(i46<-0.00017774500884115696){
     s0+=431.0;
     s1+=309.0;
    } else {
     s0+=1748.0;
     s1+=176.0;
    }
   } else {
    if(i34<1.1757044792175293){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=128.0;
     s1+=346.0;
    }
   }
  }
 }
} else {
 if(i29<0.002257714979350567){
  if(i45<0.07001015543937683){
   if(i34<1.117074966430664){
    if(i38<0.005512791685760021){
     s0+=628.0;
     s1+=258.0;
    } else {
     s0+=158.0;
     s1+=2061.0;
    }
   } else {
    if(i55<0.0003497452416922897){
     s0+=765.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i7<0.005442587658762932){
    if(i43<-2.8809066861867905e-05){
     s0+=54.0;
     s1+=62.0;
    } else {
     s0+=2513.0;
     s1+=30.0;
    }
   } else {
    if(i18<0.0034607076086103916){
     s1+=274.0;
    } else {
     s0+=55.0;
    }
   }
  }
 } else {
  if(i3<6.288290023803711e-05){
   if(i26<0.08294892311096191){
    if(i63<0.0010882505448535085){
     s0+=143.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=60.0;
    }
   } else {
    if(i2<1.004416584968567){
     s1+=611.0;
    } else {
     s0+=39.0;
     s1+=314.0;
    }
   }
  } else {
   if(i45<0.02107807993888855){
    if(i51<4.311918928578962e-06){
     s1+=140.0;
    } else {
     s0+=33.0;
     s1+=73.0;
    }
   } else {
    if(i12<0.09276366233825684){
     s0+=42.0;
     s1+=389.0;
    } else {
     s0+=21.0;
     s1+=13464.0;
    }
   }
  }
 }
}
if(i8<1.0136241912841797){
 if(i6<0.0005390048027038574){
  if(i6<0.000280916690826416){
   if(i18<0.00140411127358675){
    if(i33<0.000488425197545439){
     s0+=61294.0;
     s1+=98.0;
    } else {
     s0+=17331.0;
     s1+=392.0;
    }
   } else {
    if(i34<1.0906792879104614){
     s0+=2208.0;
     s1+=1480.0;
    } else {
     s0+=22122.0;
     s1+=816.0;
    }
   }
  } else {
   if(i20<1.1378257274627686){
    if(i7<0.004094069357961416){
     s0+=5155.0;
     s1+=114.0;
    } else {
     s0+=958.0;
     s1+=1142.0;
    }
   } else {
    if(i57<0.14366655051708221){
     s0+=16.0;
     s1+=5.0;
    } else {
     s1+=168.0;
    }
   }
  }
 } else {
  if(i29<0.002600870095193386){
   if(i29<0.001030679326504469){
    if(i30<1.056142807006836){
     s0+=1569.0;
    } else {
     s0+=25.0;
     s1+=1337.0;
    }
   } else {
    if(i28<0.01599077507853508){
     s0+=3137.0;
     s1+=41.0;
    } else {
     s0+=46.0;
     s1+=120.0;
    }
   }
  } else {
   if(i23<1.0743656158447266){
    if(i2<1.007249355316162){
     s0+=1178.0;
     s1+=215.0;
    } else {
     s0+=6.0;
     s1+=178.0;
    }
   } else {
    if(i4<1.00311279296875){
     s0+=349.0;
     s1+=911.0;
    } else {
     s0+=62.0;
     s1+=2750.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i18<0.0012596435844898224){
   if(i43<-2.5810413717408665e-05){
    if(i21<0.0014634132385253906){
     s0+=11.0;
    } else {
     s0+=2.0;
     s1+=141.0;
    }
   } else {
    if(i31<1.228743553161621){
     s0+=405.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i34<1.116863489151001){
    if(i16<0.0002959247794933617){
     s1+=1611.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i36<1.1413248777389526){
     s0+=354.0;
     s1+=3.0;
    } else {
     s0+=53.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i7<0.005058640614151955){
   if(i22<0.0003668069839477539){
    if(i1<-8.856186468619853e-05){
     s0+=6.0;
     s1+=41.0;
    } else {
     s0+=359.0;
     s1+=2.0;
    }
   } else {
    s1+=346.0;
   }
  } else {
   if(i3<-5.841255187988281e-06){
    if(i59<-0.0022988617420196533){
     s0+=4.0;
    } else {
     s1+=129.0;
    }
   } else {
    if(i10<0.9916553497314453){
     s0+=4.0;
     s1+=89.0;
    } else {
     s0+=3.0;
     s1+=11975.0;
    }
   }
  }
 }
}
if(i3<6.407499313354492e-05){
 if(i7<0.007604305632412434){
  if(i10<1.0090715885162354){
   if(i33<0.0006719849770888686){
    if(i24<0.0019596852362155914){
     s0+=71968.0;
     s1+=195.0;
    } else {
     s0+=4495.0;
     s1+=146.0;
    }
   } else {
    if(i3<-4.094839096069336e-05){
     s0+=21249.0;
     s1+=241.0;
    } else {
     s0+=9032.0;
     s1+=2819.0;
    }
   }
  } else {
   if(i24<0.0009122370975092053){
    if(i33<0.0005487909074872732){
     s0+=171.0;
    } else {
     s0+=8.0;
     s1+=502.0;
    }
   } else {
    if(i7<0.005471782758831978){
     s0+=2435.0;
     s1+=146.0;
    } else {
     s0+=94.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i42<1.0357568264007568){
   if(i31<1.1207046508789062){
    if(i56<0.9990097284317017){
     s0+=38.0;
    } else {
     s1+=127.0;
    }
   } else {
    if(i4<1.0000157356262207){
     s0+=4276.0;
     s1+=324.0;
    } else {
     s0+=216.0;
     s1+=401.0;
    }
   }
  } else {
   if(i9<0.978368878364563){
    if(i7<0.01477794349193573){
     s0+=328.0;
     s1+=38.0;
    } else {
     s0+=13.0;
     s1+=194.0;
    }
   } else {
    if(i54<-1.968791593753849e-06){
     s0+=118.0;
     s1+=2561.0;
    } else {
     s0+=113.0;
    }
   }
  }
 }
} else {
 if(i46<-0.00028149521676823497){
  if(i5<0.00024086236953735352){
   if(i24<0.002331655938178301){
    if(i29<0.0013838775921612978){
     s0+=14.0;
     s1+=816.0;
    } else {
     s0+=119.0;
    }
   } else {
    if(i10<0.9382606148719788){
     s0+=19.0;
     s1+=16.0;
    } else {
     s0+=23.0;
     s1+=12099.0;
    }
   }
  } else {
   s0+=54.0;
  }
 } else {
  if(i25<1.0110145807266235){
   if(i16<0.0003894653054885566){
    if(i33<0.000266849878244102){
     s0+=46.0;
     s1+=5.0;
    } else {
     s0+=65.0;
     s1+=1310.0;
    }
   } else {
    if(i12<0.2628379762172699){
     s0+=1661.0;
     s1+=13.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i16<0.0009264040854759514){
    if(i9<0.9747106432914734){
     s0+=17.0;
     s1+=74.0;
    } else {
     s0+=12.0;
     s1+=2001.0;
    }
   } else {
    s0+=35.0;
   }
  }
 }
}
if(i2<1.002637267112732){
 if(i11<1.0100778341293335){
  if(i35<7.50422477722168e-05){
   if(i12<0.23061108589172363){
    if(i32<0.00035083337570540607){
     s0+=18489.0;
     s1+=567.0;
    } else {
     s0+=57988.0;
     s1+=213.0;
    }
   } else {
    if(i33<0.0008768708212301135){
     s0+=50.0;
    } else {
     s0+=5.0;
     s1+=189.0;
    }
   }
  } else {
   if(i18<0.0014727609232068062){
    if(i42<1.006286859512329){
     s0+=331.0;
     s1+=62.0;
    } else {
     s0+=18910.0;
     s1+=132.0;
    }
   } else {
    if(i34<1.1161681413650513){
     s0+=2443.0;
     s1+=2370.0;
    } else {
     s0+=11041.0;
     s1+=907.0;
    }
   }
  }
 } else {
  if(i31<1.116804838180542){
   if(i58<0.0008712505223229527){
    s1+=694.0;
   } else {
    if(i43<2.8936308808624744e-05){
     s0+=16.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i32<0.011491810902953148){
    if(i60<1.0013337135314941){
     s0+=806.0;
     s1+=1.0;
    } else {
     s0+=288.0;
     s1+=136.0;
    }
   } else {
    s1+=247.0;
   }
  }
 }
} else {
 if(i28<0.012781240046024323){
  if(i1<-7.3887305916287e-05){
   if(i8<1.013469934463501){
    if(i21<0.00199812650680542){
     s0+=304.0;
     s1+=91.0;
    } else {
     s0+=3.0;
     s1+=234.0;
    }
   } else {
    if(i64<1.689607870503096e-06){
     s0+=40.0;
     s1+=1698.0;
    } else {
     s0+=37.0;
     s1+=7.0;
    }
   }
  } else {
   if(i43<-2.276826126035303e-05){
    if(i54<-1.209675338031957e-05){
     s0+=157.0;
     s1+=18.0;
    } else {
     s0+=26.0;
     s1+=642.0;
    }
   } else {
    if(i63<0.0007113306783139706){
     s0+=1132.0;
     s1+=562.0;
    } else {
     s0+=3051.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i44<1.1076258420944214){
   if(i0<0.0010790228843688965){
    if(i62<0.002016732469201088){
     s0+=514.0;
     s1+=67.0;
    } else {
     s0+=64.0;
     s1+=115.0;
    }
   } else {
    if(i24<0.0105863306671381){
     s0+=8.0;
     s1+=377.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i3<2.8014183044433594e-06){
    if(i23<1.1689486503601074){
     s0+=457.0;
     s1+=236.0;
    } else {
     s1+=136.0;
    }
   } else {
    if(i22<-0.0002573728561401367){
     s0+=232.0;
     s1+=962.0;
    } else {
     s0+=70.0;
     s1+=13623.0;
    }
   }
  }
 }
}
if(i9<1.0125844478607178){
 if(i2<1.0026252269744873){
  if(i33<0.0007346895872615278){
   if(i37<0.00028868974186480045){
    if(i33<0.0005736772436648607){
     s0+=16412.0;
     s1+=93.0;
    } else {
     s0+=881.0;
     s1+=258.0;
    }
   } else {
    if(i31<1.1979892253875732){
     s0+=54762.0;
     s1+=29.0;
    } else {
     s0+=8395.0;
     s1+=135.0;
    }
   }
  } else {
   if(i3<-3.8683414459228516e-05){
    if(i20<1.1402966976165771){
     s0+=23500.0;
     s1+=433.0;
    } else {
     s0+=28.0;
     s1+=130.0;
    }
   } else {
    if(i16<0.0002676936564967036){
     s0+=1579.0;
     s1+=3543.0;
    } else {
     s0+=5031.0;
     s1+=505.0;
    }
   }
  }
 } else {
  if(i12<0.17151567339897156){
   if(i47<9.47713851928711e-06){
    if(i1<-2.995386421389412e-05){
     s0+=609.0;
     s1+=1675.0;
    } else {
     s0+=435.0;
     s1+=202.0;
    }
   } else {
    if(i62<0.0011807079426944256){
     s0+=3815.0;
     s1+=254.0;
    } else {
     s0+=599.0;
     s1+=1084.0;
    }
   }
  } else {
   if(i50<0.025375399738550186){
    if(i24<0.002555904909968376){
     s0+=144.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=91.0;
    }
   } else {
    if(i29<0.0023527026642113924){
     s0+=17.0;
    } else {
     s0+=55.0;
     s1+=2657.0;
    }
   }
  }
 }
} else {
 if(i21<0.001995682716369629){
  if(i47<2.0325183868408203e-05){
   if(i28<0.01191745512187481){
    if(i44<1.0922120809555054){
     s0+=9.0;
     s1+=230.0;
    } else {
     s0+=172.0;
     s1+=47.0;
    }
   } else {
    if(i24<0.0004496023175306618){
     s0+=2.0;
    } else {
     s1+=1650.0;
    }
   }
  } else {
   if(i43<1.662577415117994e-05){
    s0+=269.0;
   } else {
    s1+=23.0;
   }
  }
 } else {
  s1+=11092.0;
 }
}
if(i21<0.001386404037475586){
 if(i12<0.19297125935554504){
  if(i33<0.0007171068573370576){
   if(i37<0.0019205338321626186){
    if(i17<1.0094430446624756){
     s0+=75613.0;
     s1+=341.0;
    } else {
     s0+=138.0;
     s1+=54.0;
    }
   } else {
    if(i0<-0.0002783834934234619){
     s0+=4533.0;
    } else {
     s0+=674.0;
     s1+=259.0;
    }
   }
  } else {
   if(i24<0.000928508467040956){
    if(i19<0.05023926496505737){
     s0+=3311.0;
     s1+=1191.0;
    } else {
     s0+=363.0;
     s1+=2623.0;
    }
   } else {
    if(i44<1.127637267112732){
     s0+=26577.0;
     s1+=769.0;
    } else {
     s0+=3879.0;
     s1+=2316.0;
    }
   }
  }
 } else {
  if(i7<0.005585376173257828){
   if(i41<1.031458854675293){
    if(i19<0.1936360001564026){
     s1+=3.0;
    } else {
     s0+=340.0;
     s1+=8.0;
    }
   } else {
    if(i70<0.15837791562080383){
     s0+=7.0;
     s1+=29.0;
    } else {
     s0+=157.0;
     s1+=12.0;
    }
   }
  } else {
   if(i30<1.1609504222869873){
    s0+=18.0;
   } else {
    if(i39<-8.755558155826293e-06){
     s0+=18.0;
     s1+=3418.0;
    } else {
     s0+=12.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i7<0.0049505168572068214){
  if(i51<-1.2909874385513831e-05){
   if(i56<1.0016822814941406){
    if(i51<-4.773683758685365e-05){
     s1+=2.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i16<0.0004459444317035377){
     s0+=11.0;
     s1+=1002.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i37<0.0004670518101193011){
    if(i32<0.0001855491427704692){
     s0+=7.0;
    } else {
     s1+=198.0;
    }
   } else {
    if(i62<0.001132915960624814){
     s0+=744.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i16<0.0011771050048992038){
   if(i2<0.9965223073959351){
    s0+=1.0;
   } else {
    s1+=11966.0;
   }
  } else {
   s0+=170.0;
  }
 }
}
if(i27<1.0215201377868652){
 if(i21<0.0014507770538330078){
  if(i1<-9.202562796417624e-05){
   if(i23<1.0463327169418335){
    if(i68<0.0018073604442179203){
     s0+=594.0;
     s1+=20.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i38<0.03887545317411423){
     s0+=161.0;
     s1+=113.0;
    } else {
     s0+=187.0;
     s1+=2302.0;
    }
   }
  } else {
   if(i3<6.276369094848633e-05){
    if(i24<0.0008908312302082777){
     s0+=31803.0;
     s1+=3289.0;
    } else {
     s0+=80234.0;
     s1+=1446.0;
    }
   } else {
    if(i30<1.176405668258667){
     s0+=1173.0;
     s1+=423.0;
    } else {
     s0+=52.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i22<0.00030297040939331055){
   if(i44<1.0847599506378174){
    if(i36<1.116863489151001){
     s0+=5.0;
     s1+=533.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i4<1.0103129148483276){
     s0+=669.0;
     s1+=150.0;
    } else {
     s1+=81.0;
    }
   }
  } else {
   if(i49<-6.382430910889525e-06){
    s0+=38.0;
   } else {
    if(i71<1.2877962035418022e-05){
     s1+=2198.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i3<1.5676021575927734e-05){
  if(i33<0.0021704984828829765){
   if(i53<1.0005590915679932){
    if(i6<9.888410568237305e-05){
     s0+=500.0;
    } else {
     s0+=27.0;
     s1+=6.0;
    }
   } else {
    if(i47<8.52346420288086e-06){
     s0+=151.0;
     s1+=209.0;
    } else {
     s0+=192.0;
     s1+=20.0;
    }
   }
  } else {
   if(i51<6.682068487862125e-05){
    s1+=262.0;
   } else {
    s0+=37.0;
   }
  }
 } else {
  if(i15<1.0228092670440674){
   if(i57<0.03349006921052933){
    if(i49<-2.9534025998145808e-06){
     s0+=310.0;
     s1+=2.0;
    } else {
     s0+=74.0;
     s1+=259.0;
    }
   } else {
    if(i18<0.0008681126637384295){
     s0+=7.0;
    } else {
     s0+=35.0;
     s1+=528.0;
    }
   }
  } else {
   if(i2<0.9967262148857117){
    s0+=6.0;
   } else {
    if(i19<0.0703744888305664){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=101.0;
     s1+=12170.0;
    }
   }
  }
 }
}
if(i6<0.0006104111671447754){
 if(i12<0.20721644163131714){
  if(i11<1.009044885635376){
   if(i57<0.03656761348247528){
    if(i7<0.0027802204713225365){
     s0+=69136.0;
     s1+=479.0;
    } else {
     s0+=18212.0;
     s1+=1457.0;
    }
   } else {
    if(i11<0.9884001016616821){
     s0+=16533.0;
     s1+=688.0;
    } else {
     s0+=4746.0;
     s1+=1269.0;
    }
   }
  } else {
   if(i6<0.0003109574317932129){
    if(i30<1.0952479839324951){
     s1+=23.0;
    } else {
     s0+=1203.0;
     s1+=98.0;
    }
   } else {
    if(i1<-3.7437355786096305e-05){
     s0+=57.0;
     s1+=524.0;
    } else {
     s0+=248.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i39<-8.040256034291815e-06){
   if(i44<1.1223869323730469){
    if(i18<0.005117554217576981){
     s0+=13.0;
     s1+=2.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i68<-0.0005556176765821874){
     s0+=12.0;
     s1+=719.0;
    } else {
     s0+=9.0;
     s1+=29.0;
    }
   }
  } else {
   if(i23<1.0974891185760498){
    if(i19<0.20994997024536133){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=182.0;
   }
  }
 }
} else {
 if(i3<8.398294448852539e-05){
  if(i32<0.0018568108789622784){
   if(i63<0.0007502810331061482){
    if(i18<0.002069110982120037){
     s0+=1162.0;
     s1+=8.0;
    } else {
     s0+=303.0;
     s1+=837.0;
    }
   } else {
    if(i37<0.0009057183051481843){
     s1+=7.0;
    } else {
     s0+=2022.0;
     s1+=7.0;
    }
   }
  } else {
   if(i3<1.806020736694336e-05){
    if(i19<0.09731149673461914){
     s0+=883.0;
     s1+=191.0;
    } else {
     s0+=228.0;
     s1+=410.0;
    }
   } else {
    if(i44<1.1073942184448242){
     s0+=183.0;
     s1+=117.0;
    } else {
     s0+=223.0;
     s1+=2325.0;
    }
   }
  }
 } else {
  if(i21<0.0020006299018859863){
   if(i31<1.175166130065918){
    if(i66<0.00039588677464053035){
     s0+=42.0;
     s1+=770.0;
    } else {
     s0+=1018.0;
     s1+=70.0;
    }
   } else {
    if(i11<0.952649712562561){
     s0+=41.0;
     s1+=98.0;
    } else {
     s0+=40.0;
     s1+=2810.0;
    }
   }
  } else {
   if(i52<0.9969654083251953){
    s0+=31.0;
   } else {
    s1+=11335.0;
   }
  }
 }
}
if(i3<6.300210952758789e-05){
 if(i7<0.0077141826041042805){
  if(i35<7.933378219604492e-05){
   if(i31<1.0905578136444092){
    if(i18<0.0011661219177767634){
     s0+=15710.0;
     s1+=159.0;
    } else {
     s0+=2749.0;
     s1+=574.0;
    }
   } else {
    if(i27<1.0203474760055542){
     s0+=56663.0;
     s1+=43.0;
    } else {
     s0+=605.0;
     s1+=14.0;
    }
   }
  } else {
   if(i14<1.0133070945739746){
    if(i40<0.0008354183519259095){
     s0+=9318.0;
     s1+=1776.0;
    } else {
     s0+=23006.0;
     s1+=1088.0;
    }
   } else {
    if(i37<0.0009952604304999113){
     s1+=296.0;
    } else {
     s0+=1336.0;
     s1+=404.0;
    }
   }
  }
 } else {
  if(i22<-0.0005372762680053711){
   if(i12<0.12940460443496704){
    if(i74<0.04557056352496147){
     s0+=3430.0;
     s1+=140.0;
    } else {
     s0+=75.0;
     s1+=94.0;
    }
   } else {
    if(i44<1.1286321878433228){
     s0+=58.0;
     s1+=55.0;
    } else {
     s0+=18.0;
     s1+=249.0;
    }
   }
  } else {
   if(i5<-2.8431415557861328e-05){
    if(i11<0.9711036682128906){
     s1+=2.0;
    } else {
     s0+=823.0;
    }
   } else {
    if(i12<0.029734641313552856){
     s0+=230.0;
     s1+=62.0;
    } else {
     s0+=129.0;
     s1+=2876.0;
    }
   }
  }
 }
} else {
 if(i37<0.002370662521570921){
  if(i24<0.0009706164710223675){
   if(i52<0.9997454881668091){
    s0+=75.0;
   } else {
    if(i40<0.00014370429562404752){
     s0+=23.0;
    } else {
     s1+=2365.0;
    }
   }
  } else {
   if(i29<0.0023654235992580652){
    s0+=2009.0;
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i19<0.0003789663314819336){
   if(i36<1.3731330633163452){
    if(i59<-0.012100934982299805){
     s0+=40.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.00010416270379209891){
     s0+=1.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i19<0.1022334098815918){
    if(i41<1.0177799463272095){
     s0+=32.0;
     s1+=525.0;
    } else {
     s0+=55.0;
     s1+=26.0;
    }
   } else {
    if(i42<0.8731958866119385){
     s0+=4.0;
    } else {
     s0+=11.0;
     s1+=13634.0;
    }
   }
  }
 }
}
if(i41<1.0284864902496338){
 if(i2<1.00259530544281){
  if(i7<0.0036307750269770622){
   if(i23<1.0231759548187256){
    if(i18<0.0008384915417991579){
     s0+=8793.0;
     s1+=43.0;
    } else {
     s0+=3523.0;
     s1+=499.0;
    }
   } else {
    if(i7<0.002783330623060465){
     s0+=67239.0;
     s1+=256.0;
    } else {
     s0+=7176.0;
     s1+=272.0;
    }
   }
  } else {
   if(i29<0.0011982028372585773){
    if(i31<1.05894136428833){
     s0+=2770.0;
    } else {
     s0+=60.0;
     s1+=2570.0;
    }
   } else {
    if(i20<1.1407763957977295){
     s0+=19801.0;
     s1+=627.0;
    } else {
     s0+=90.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i1<-7.485827518394217e-05){
   if(i27<0.8918198347091675){
    if(i73<-0.009418398141860962){
     s0+=19.0;
     s1+=83.0;
    } else {
     s0+=250.0;
     s1+=68.0;
    }
   } else {
    if(i52<0.9986975193023682){
     s0+=149.0;
    } else {
     s0+=274.0;
     s1+=5028.0;
    }
   }
  } else {
   if(i7<0.004107964690774679){
    if(i22<0.00018727779388427734){
     s0+=3699.0;
     s1+=95.0;
    } else {
     s0+=431.0;
     s1+=436.0;
    }
   } else {
    if(i56<1.002560019493103){
     s0+=122.0;
     s1+=950.0;
    } else {
     s0+=803.0;
     s1+=657.0;
    }
   }
  }
 }
} else {
 if(i0<0.0002853870391845703){
  if(i1<-6.492784450529143e-05){
   if(i50<0.024160536006093025){
    if(i13<1.056473731994629){
     s0+=46.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i23<1.1011407375335693){
     s0+=3.0;
     s1+=11.0;
    } else {
     s1+=400.0;
    }
   }
  } else {
   if(i6<0.00020802021026611328){
    if(i39<-6.725406819896307e-06){
     s0+=105.0;
     s1+=53.0;
    } else {
     s0+=581.0;
    }
   } else {
    if(i51<2.7940068321186118e-05){
     s0+=28.0;
     s1+=133.0;
    } else {
     s0+=217.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i31<1.1979892253875732){
   if(i49<-3.0196988518582657e-06){
    if(i63<0.000560853979550302){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=223.0;
    }
   } else {
    if(i24<0.0010372325778007507){
     s1+=700.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   if(i7<0.006200100295245647){
    if(i19<0.13994020223617554){
     s0+=82.0;
     s1+=28.0;
    } else {
     s0+=19.0;
     s1+=413.0;
    }
   } else {
    if(i10<0.9871150255203247){
     s0+=18.0;
     s1+=42.0;
    } else {
     s0+=15.0;
     s1+=10558.0;
    }
   }
  }
 }
}
if(i21<0.0013867020606994629){
 if(i7<0.008030128665268421){
  if(i7<0.003634196473285556){
   if(i32<0.0006397273391485214){
    if(i43<-1.7717891751090065e-05){
     s0+=19.0;
     s1+=80.0;
    } else {
     s0+=26513.0;
     s1+=847.0;
    }
   } else {
    if(i30<1.1759499311447144){
     s0+=51134.0;
     s1+=26.0;
    } else {
     s0+=13289.0;
     s1+=243.0;
    }
   }
  } else {
   if(i6<-0.00010877847671508789){
    if(i25<0.9975429773330688){
     s0+=15107.0;
     s1+=12.0;
    } else {
     s0+=1761.0;
     s1+=98.0;
    }
   } else {
    if(i9<0.9928225874900818){
     s0+=1944.0;
     s1+=358.0;
    } else {
     s0+=1257.0;
     s1+=3339.0;
    }
   }
  }
 } else {
  if(i6<0.0002620220184326172){
   if(i45<0.13196003437042236){
    if(i4<0.9992474317550659){
     s0+=3165.0;
     s1+=107.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   } else {
    if(i23<1.1031291484832764){
     s0+=36.0;
     s1+=28.0;
    } else {
     s1+=314.0;
    }
   }
  } else {
   if(i28<0.0228322371840477){
    if(i59<-0.003152519464492798){
     s0+=757.0;
     s1+=123.0;
    } else {
     s0+=16.0;
     s1+=230.0;
    }
   } else {
    if(i12<0.040872395038604736){
     s0+=438.0;
     s1+=178.0;
    } else {
     s0+=192.0;
     s1+=5205.0;
    }
   }
  }
 }
} else {
 if(i49<-6.264077910600463e-06){
  s0+=352.0;
 } else {
  if(i2<1.0019607543945312){
   if(i69<0.1720682978630066){
    if(i55<-0.000387487089028582){
     s1+=9.0;
    } else {
     s0+=309.0;
     s1+=6.0;
    }
   } else {
    s1+=142.0;
   }
  } else {
   if(i13<1.0238800048828125){
    if(i38<0.01022491417825222){
     s0+=210.0;
     s1+=572.0;
    } else {
     s0+=73.0;
     s1+=2713.0;
    }
   } else {
    if(i16<0.0009064670302905142){
     s1+=9623.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i1<-8.038502710405737e-05){
  if(i9<0.9690659046173096){
   if(i35<-0.00020867586135864258){
    if(i23<1.0724523067474365){
     s0+=23.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   } else {
    if(i42<1.0269927978515625){
     s0+=628.0;
     s1+=39.0;
    } else {
     s0+=11.0;
     s1+=30.0;
    }
   }
  } else {
   if(i32<0.001896413741633296){
    if(i14<1.0222485065460205){
     s0+=114.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   } else {
    if(i9<0.9779572486877441){
     s0+=74.0;
     s1+=103.0;
    } else {
     s0+=50.0;
     s1+=914.0;
    }
   }
  }
 } else {
  if(i8<1.0118427276611328){
   if(i35<9.208917617797852e-05){
    if(i32<0.0009277965873479843){
     s0+=26106.0;
     s1+=806.0;
    } else {
     s0+=53603.0;
     s1+=127.0;
    }
   } else {
    if(i33<0.0006616660393774509){
     s0+=14042.0;
     s1+=128.0;
    } else {
     s0+=15253.0;
     s1+=2977.0;
    }
   }
  } else {
   if(i36<1.0905578136444092){
    if(i7<0.002150911372154951){
     s0+=1.0;
    } else {
     s1+=252.0;
    }
   } else {
    if(i18<0.002620403654873371){
     s0+=614.0;
     s1+=38.0;
    } else {
     s0+=84.0;
     s1+=171.0;
    }
   }
  }
 }
} else {
 if(i8<1.0164823532104492){
  if(i57<0.0443403422832489){
   if(i35<0.0004449784755706787){
    if(i9<1.0058592557907104){
     s0+=292.0;
     s1+=75.0;
    } else {
     s0+=51.0;
     s1+=1263.0;
    }
   } else {
    if(i25<1.0115172863006592){
     s0+=4080.0;
     s1+=188.0;
    } else {
     s0+=10.0;
     s1+=258.0;
    }
   }
  } else {
   if(i12<0.0821545422077179){
    if(i73<-0.0007281899452209473){
     s0+=345.0;
     s1+=644.0;
    } else {
     s0+=549.0;
     s1+=96.0;
    }
   } else {
    if(i29<0.002640142571181059){
     s0+=132.0;
     s1+=95.0;
    } else {
     s0+=176.0;
     s1+=3102.0;
    }
   }
  }
 } else {
  if(i36<1.1704325675964355){
   if(i21<-0.0013947486877441406){
    if(i39<-4.947264096699655e-05){
     s1+=11.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i47<1.728534698486328e-05){
     s0+=62.0;
     s1+=1653.0;
    } else {
     s0+=144.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<-0.0003159046173095703){
    if(i26<0.23362421989440918){
     s0+=11.0;
     s1+=3.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i7<0.003119823755696416){
     s0+=12.0;
     s1+=117.0;
    } else {
     s0+=6.0;
     s1+=11107.0;
    }
   }
  }
 }
}
if(i4<1.0038710832595825){
 if(i12<0.20618078112602234){
  if(i20<1.1403067111968994){
   if(i15<1.0154520273208618){
    if(i5<1.329183578491211e-05){
     s0+=103760.0;
     s1+=2893.0;
    } else {
     s0+=6711.0;
     s1+=1573.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s0+=9.0;
     s1+=382.0;
    } else {
     s0+=946.0;
     s1+=233.0;
    }
   }
  } else {
   if(i6<0.00012701749801635742){
    if(i1<-5.53297832084354e-05){
     s0+=7.0;
     s1+=39.0;
    } else {
     s0+=377.0;
     s1+=1.0;
    }
   } else {
    if(i52<1.0024080276489258){
     s0+=27.0;
     s1+=393.0;
    } else {
     s0+=42.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i7<0.006298738531768322){
   if(i5<1.0281801223754883e-05){
    if(i50<0.052887387573719025){
     s0+=167.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=6.0;
    }
   } else {
    if(i4<1.0022497177124023){
     s0+=28.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=16.0;
    }
   }
  } else {
   if(i5<-4.3779611587524414e-05){
    if(i67<0.0019136227201670408){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i38<0.01578737050294876){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=1116.0;
    }
   }
  }
 }
} else {
 if(i24<0.0022535885218530893){
  if(i35<0.0005127787590026855){
   if(i34<1.1219847202301025){
    if(i63<0.0009394625667482615){
     s0+=4.0;
     s1+=2622.0;
    } else {
     s0+=65.0;
     s1+=71.0;
    }
   } else {
    s0+=279.0;
   }
  } else {
   s0+=3632.0;
  }
 } else {
  if(i58<0.00024686261895112693){
   if(i53<1.0096075534820557){
    if(i8<1.0484557151794434){
     s0+=116.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i1<-8.094465010799468e-05){
    if(i12<0.03098270297050476){
     s0+=23.0;
     s1+=77.0;
    } else {
     s0+=28.0;
     s1+=13935.0;
    }
   } else {
    if(i44<1.1344192028045654){
     s0+=136.0;
     s1+=263.0;
    } else {
     s0+=14.0;
     s1+=753.0;
    }
   }
  }
 }
}
if(i6<0.0005900263786315918){
 if(i18<0.0016891385894268751){
  if(i33<0.0005737949395552278){
   if(i32<0.0018041834700852633){
    if(i20<1.0100433826446533){
     s0+=1984.0;
     s1+=50.0;
    } else {
     s0+=64622.0;
     s1+=49.0;
    }
   } else {
    if(i56<1.000826120376587){
     s0+=4028.0;
     s1+=8.0;
    } else {
     s0+=629.0;
     s1+=103.0;
    }
   }
  } else {
   if(i59<-0.0006283819675445557){
    if(i37<0.0005216532736085355){
     s0+=297.0;
     s1+=383.0;
    } else {
     s0+=2259.0;
     s1+=64.0;
    }
   } else {
    if(i40<0.002184051088988781){
     s0+=15016.0;
     s1+=225.0;
    } else {
     s0+=163.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i6<-6.651878356933594e-05){
   if(i69<0.7095738649368286){
    if(i70<0.223859965801239){
     s0+=15128.0;
     s1+=367.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i23<1.1087533235549927){
     s0+=48.0;
    } else {
     s1+=119.0;
    }
   }
  } else {
   if(i4<0.9980621933937073){
    if(i12<0.17334643006324768){
     s0+=2968.0;
     s1+=247.0;
    } else {
     s0+=14.0;
     s1+=108.0;
    }
   } else {
    if(i28<0.009573711082339287){
     s0+=2063.0;
     s1+=377.0;
    } else {
     s0+=813.0;
     s1+=3018.0;
    }
   }
  }
 }
} else {
 if(i16<0.0007055420428514481){
  if(i0<0.0009783506393432617){
   if(i7<0.004321753978729248){
    if(i62<-0.001057785702869296){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=1713.0;
     s1+=35.0;
    }
   } else {
    if(i9<0.9957044720649719){
     s0+=1159.0;
     s1+=1101.0;
    } else {
     s0+=78.0;
     s1+=1740.0;
    }
   }
  } else {
   if(i49<-6.411725735233631e-06){
    if(i9<0.993188738822937){
     s1+=2.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i21<-0.002297699451446533){
     s0+=72.0;
     s1+=314.0;
    } else {
     s0+=122.0;
     s1+=15859.0;
    }
   }
  }
 } else {
  s0+=3320.0;
 }
}
if(i8<1.013500690460205){
 if(i4<1.0035377740859985){
  if(i6<0.000292360782623291){
   if(i31<1.116391897201538){
    if(i61<-0.00032901763916015625){
     s0+=4941.0;
     s1+=1140.0;
    } else {
     s0+=22300.0;
     s1+=946.0;
    }
   } else {
    if(i70<0.21958842873573303){
     s0+=75535.0;
     s1+=733.0;
    } else {
     s0+=64.0;
     s1+=87.0;
    }
   }
  } else {
   if(i43<1.5440324204973876e-05){
    if(i28<0.00948471948504448){
     s0+=5014.0;
     s1+=86.0;
    } else {
     s0+=38.0;
     s1+=144.0;
    }
   } else {
    if(i21<-0.003919541835784912){
     s0+=1308.0;
     s1+=277.0;
    } else {
     s0+=1807.0;
     s1+=2220.0;
    }
   }
  }
 } else {
  if(i38<0.027866316959261894){
   if(i24<0.0009702016250230372){
    if(i36<1.0452228784561157){
     s0+=777.0;
    } else {
     s0+=14.0;
     s1+=1126.0;
    }
   } else {
    if(i21<0.002159595489501953){
     s0+=3210.0;
     s1+=81.0;
    } else {
     s0+=13.0;
     s1+=146.0;
    }
   }
  } else {
   if(i7<0.0064985491335392){
    if(i32<0.0031907856464385986){
     s0+=32.0;
     s1+=171.0;
    } else {
     s0+=37.0;
     s1+=14.0;
    }
   } else {
    if(i19<0.04665669798851013){
     s0+=42.0;
     s1+=137.0;
    } else {
     s0+=24.0;
     s1+=2420.0;
    }
   }
  }
 }
} else {
 if(i3<8.362531661987305e-05){
  if(i39<-1.208085086545907e-05){
   if(i0<-0.0006497502326965332){
    if(i4<0.9996896982192993){
     s1+=24.0;
    } else {
     s0+=120.0;
     s1+=2.0;
    }
   } else {
    if(i48<1.0249208211898804){
     s0+=302.0;
     s1+=434.0;
    } else {
     s0+=169.0;
     s1+=1670.0;
    }
   }
  } else {
   if(i29<0.004045503214001656){
    if(i39<-9.317895091953687e-06){
     s0+=80.0;
     s1+=15.0;
    } else {
     s0+=282.0;
    }
   } else {
    if(i21<-0.0012294352054595947){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i31<1.175166130065918){
   if(i31<1.1180615425109863){
    s1+=1305.0;
   } else {
    s0+=294.0;
   }
  } else {
   if(i43<0.00010722107981564477){
    s1+=9688.0;
   } else {
    if(i29<0.007658158894628286){
     s0+=10.0;
     s1+=240.0;
    } else {
     s1+=1333.0;
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
