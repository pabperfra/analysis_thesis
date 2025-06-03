/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = difference_of_gaussian=15 small_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=10 laplace_box_of_gaussian_blur=15 laplace_box_of_gaussian_blur=20 gaussian_blur=15 sobel_of_gaussian_blur=10 median_box=5 difference_of_gaussian=20 gaussian_blur=3 gaussian_blur=5 top_hat_box=20 sobel_of_gaussian_blur=30 mean_box=5 top_hat_box=15 maximum_box=3 mean_box=10 mean_box=15 sobel_of_gaussian_blur=15 median_box=3 difference_of_gaussian=10 gaussian_blur=2 mean_box=3 maximum_box=30 top_hat_box=30 sobel_of_gaussian_blur=5 laplace_box_of_gaussian_blur=10 variance_box=30 variance_box=10 variance_box=20 maximum_box=20 maximum_box=10 difference_of_gaussian=30 mean_box=2 variance_box=15 sobel_of_gaussian_blur=20 maximum_box=15 mean_box=20 top_hat_box=10 sobel_of_gaussian_blur=3 maximum_box=5 small_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=20 maximum_box=2 variance_box=3 small_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=20 gaussian_blur=30 mean_box=1 large_hessian_eigenvalue_of_gaussian_blur=15 variance_box=5 small_hessian_eigenvalue_of_gaussian_blur=30 sobel_of_gaussian_blur=2 laplace_box_of_gaussian_blur=30 gaussian_blur=1 mean_box=30 sobel_of_median_box=5 large_hessian_eigenvalue_of_gaussian_blur=10 large_hessian_eigenvalue_of_gaussian_blur=5 variance_box=2 maximum_box=1 laplace_box_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=3 variance_box=1 large_hessian_eigenvalue_of_gaussian_blur=2 difference_of_gaussian=5 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=1 sobel_of_median_box=3 large_hessian_eigenvalue_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=30 difference_of_gaussian=1 laplace_box_of_gaussian_blur=1 difference_of_gaussian=3 small_hessian_eigenvalue_of_gaussian_blur=2 top_hat_box=5 top_hat_box=1 laplace_box_of_gaussian_blur=2 difference_of_gaussian=2 top_hat_box=2
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 81
max_depth = 5
num_trees = 250
feature_importances = 0.09711617081082201,0.09290981886724546,0.06837978301638685,0.07740231051779861,0.04060746578739136,0.05371921694603759,0.038191518103148435,0.04460694608017729,0.043508214341056305,0.015349210765670087,0.04350365448273211,0.013819350120017606,0.022425935726434327,0.026805366288244682,0.01708509491711962,0.011788506223388954,0.0071101541904150835,0.01924472640897011,0.01889910263190358,0.020221521765459435,0.010627774630331644,0.02821706224313282,0.018257819845308984,0.008831581652988432,0.010079658235892639,0.011048173079109685,0.00877724164913971,0.00879629947331039,0.0060924672076602725,0.007041697175600702,0.006529484238039746,0.004864986573609194,0.005585773183747617,0.005784805949412388,0.0063781692681871,0.007501941080179009,0.006014026259273557,0.0042828722822422175,0.002856829802279086,0.004673277529251799,0.006760470835361302,0.002638715896430796,0.003673776557232567,0.003775195479609085,0.002405219657280691,0.0038235325281822325,0.0013011207659266917,0.0020900692289017946,9.69509465150518e-05,0.002919665308745322,0.001831420396622689,0.0018049153649403824,0.0013222900168142824,0.0018149725062472143,0.002740076013210954,0.00052855004762491,0.0016151490048571292,0.004506500798478226,0.0007330664055249324,0.0017936136098116887,0.0007551933499158879,0.0010984818387949514,0.0005911939084729216,0.0007757259125128878,8.861869319027535e-05,0.0001475853910622276,0.0004821367907826945,0.0006285319329739512,0.000530607575926004,0.00022232464306595791,0.00024012952745665884,0.00014737411150199544,0.00024803591414674834,7.262373371546677e-05,0.00014650809337869,5.022466331152803e-05,0.00029553813907149106,7.913797192400216e-05,5.836977363661621e-05,7.13610936262802e-05,0.00015901622409847315
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
if(i20<0.0013867020606994629){
 if(i1<-8.429199806414545e-05){
  if(i11<0.04118296504020691){
   if(i15<1.0844184160232544){
    if(i7<1.0082719326019287){
     s0+=745.0;
     s1+=18.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i9<0.9386814832687378){
     s0+=90.0;
     s1+=50.0;
    } else {
     s0+=30.0;
     s1+=79.0;
    }
   }
  } else {
   if(i51<-7.218347491289023e-06){
    s0+=104.0;
   } else {
    if(i10<0.962018609046936){
     s0+=58.0;
     s1+=44.0;
    } else {
     s0+=116.0;
     s1+=4229.0;
    }
   }
  }
 } else {
  if(i6<0.00395224941894412){
   if(i35<0.0005327850813046098){
    if(i49<-1.3045336345385294e-05){
     s1+=11.0;
    } else {
     s0+=65582.0;
     s1+=132.0;
    }
   } else {
    if(i36<1.0903575420379639){
     s0+=5692.0;
     s1+=1057.0;
    } else {
     s0+=21871.0;
     s1+=249.0;
    }
   }
  } else {
   if(i7<1.0065498352050781){
    if(i5<0.9997879862785339){
     s0+=15483.0;
     s1+=213.0;
    } else {
     s0+=4640.0;
     s1+=2760.0;
    }
   } else {
    if(i16<0.9972736835479736){
     s0+=426.0;
     s1+=134.0;
    } else {
     s0+=455.0;
     s1+=2227.0;
    }
   }
  }
 }
} else {
 if(i51<-7.426532192766899e-06){
  s0+=323.0;
 } else {
  if(i6<0.003939358051866293){
   if(i27<0.0010820601601153612){
    s1+=565.0;
   } else {
    if(i2<1.0117311477661133){
     s0+=551.0;
    } else {
     s1+=260.0;
    }
   }
  } else {
   if(i20<0.0018336176872253418){
    if(i5<1.0018391609191895){
     s0+=116.0;
     s1+=12.0;
    } else {
     s0+=25.0;
     s1+=1017.0;
    }
   } else {
    if(i53<-0.0004464685916900635){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=11482.0;
    }
   }
  }
 }
}
if(i7<1.0135951042175293){
 if(i1<-8.826566045172513e-05){
  if(i14<0.018573224544525146){
   if(i70<0.05137966573238373){
    if(i27<0.001235962612554431){
     s1+=9.0;
    } else {
     s0+=742.0;
     s1+=35.0;
    }
   } else {
    if(i5<1.0030362606048584){
     s0+=23.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   }
  } else {
   if(i40<1.1180213689804077){
    if(i5<1.003867506980896){
     s0+=244.0;
     s1+=48.0;
    } else {
     s0+=63.0;
     s1+=279.0;
    }
   } else {
    if(i13<0.947498083114624){
     s0+=107.0;
     s1+=116.0;
    } else {
     s0+=51.0;
     s1+=2918.0;
    }
   }
  }
 } else {
  if(i49<-9.920830052578822e-06){
   if(i27<0.0011433199979364872){
    s1+=342.0;
   } else {
    if(i6<0.004992665722966194){
     s0+=139.0;
    } else {
     s1+=126.0;
    }
   }
  } else {
   if(i6<0.0036593670956790447){
    if(i36<1.0903575420379639){
     s0+=26007.0;
     s1+=870.0;
    } else {
     s0+=64550.0;
     s1+=233.0;
    }
   } else {
    if(i3<-2.187490463256836e-05){
     s0+=21388.0;
     s1+=758.0;
    } else {
     s0+=2019.0;
     s1+=3853.0;
    }
   }
  }
 }
} else {
 if(i6<0.004347655922174454){
  if(i26<0.0002346038818359375){
   if(i23<1.0840704441070557){
    s1+=48.0;
   } else {
    if(i42<1.0025272369384766){
     s0+=249.0;
     s1+=41.0;
    } else {
     s0+=647.0;
    }
   }
  } else {
   if(i16<1.009786605834961){
    if(i15<1.0542423725128174){
     s1+=2.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i10<1.016266942024231){
     s0+=109.0;
     s1+=248.0;
    } else {
     s1+=458.0;
    }
   }
  }
 } else {
  if(i47<0.998361349105835){
   s0+=51.0;
  } else {
   if(i24<0.0942583978176117){
    if(i10<1.0024378299713135){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=16.0;
     s1+=451.0;
    }
   } else {
    if(i17<0.9980697631835938){
     s0+=31.0;
     s1+=155.0;
    } else {
     s0+=53.0;
     s1+=13206.0;
    }
   }
  }
 }
}
if(i8<0.000592648983001709){
 if(i22<1.0159155130386353){
  if(i14<0.2063673734664917){
   if(i32<8.219480514526367e-05){
    if(i28<0.0009259146172553301){
     s0+=25642.0;
     s1+=739.0;
    } else {
     s0+=51940.0;
     s1+=130.0;
    }
   } else {
    if(i36<1.0919182300567627){
     s0+=4647.0;
     s1+=1986.0;
    } else {
     s0+=26673.0;
     s1+=1180.0;
    }
   }
  } else {
   if(i57<8.055123907979578e-05){
    if(i11<0.21341124176979065){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=113.0;
     s1+=6.0;
    }
   } else {
    if(i1<-1.8581742551759817e-05){
     s0+=7.0;
     s1+=352.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<0.005234386771917343){
   if(i31<1.0777933597564697){
    if(i66<0.0022974908351898193){
     s1+=11.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i41<-6.910635875101434e-06){
     s0+=351.0;
     s1+=64.0;
    } else {
     s0+=541.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<-6.142258644104004e-05){
    if(i56<0.06642275303602219){
     s0+=34.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i41<-5.490025159815559e-06){
     s0+=15.0;
     s1+=780.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
} else {
 if(i30<1.1969701051712036){
  if(i29<0.001271774061024189){
   if(i31<1.0487251281738281){
    s0+=1270.0;
   } else {
    if(i59<0.0007062000222504139){
     s0+=25.0;
     s1+=2641.0;
    } else {
     s0+=270.0;
     s1+=139.0;
    }
   }
  } else {
   if(i10<1.0164381265640259){
    if(i25<0.021227151155471802){
     s0+=3178.0;
     s1+=18.0;
    } else {
     s0+=5.0;
     s1+=102.0;
    }
   } else {
    s1+=195.0;
   }
  }
 } else {
  if(i3<3.1054019927978516e-05){
   if(i24<0.08307167887687683){
    if(i54<0.9449365735054016){
     s0+=310.0;
     s1+=181.0;
    } else {
     s0+=634.0;
     s1+=9.0;
    }
   } else {
    if(i45<-0.0004206466837786138){
     s0+=51.0;
     s1+=534.0;
    } else {
     s0+=215.0;
     s1+=223.0;
    }
   }
  } else {
   if(i24<0.08016994595527649){
    if(i5<1.0064363479614258){
     s0+=241.0;
     s1+=198.0;
    } else {
     s0+=18.0;
     s1+=227.0;
    }
   } else {
    if(i40<1.075517177581787){
     s0+=14.0;
     s1+=13.0;
    } else {
     s0+=81.0;
     s1+=14755.0;
    }
   }
  }
 }
}
if(i0<0.0009665489196777344){
 if(i5<1.0022130012512207){
  if(i22<1.0170376300811768){
   if(i27<0.0008911171462386847){
    if(i30<1.0577976703643799){
     s0+=18672.0;
     s1+=7.0;
    } else {
     s0+=12372.0;
     s1+=3006.0;
    }
   } else {
    if(i64<0.007720611523836851){
     s0+=76282.0;
     s1+=701.0;
    } else {
     s0+=268.0;
     s1+=281.0;
    }
   }
  } else {
   if(i46<-3.437989107624162e-06){
    if(i19<1.0165719985961914){
     s0+=69.0;
     s1+=49.0;
    } else {
     s0+=86.0;
     s1+=563.0;
    }
   } else {
    if(i25<0.03449132665991783){
     s0+=403.0;
    } else {
     s0+=18.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i36<1.1757044792175293){
   if(i25<0.008284988813102245){
    if(i29<0.0007419516332447529){
     s0+=862.0;
     s1+=142.0;
    } else {
     s0+=2532.0;
     s1+=7.0;
    }
   } else {
    if(i16<1.0009765625){
     s0+=386.0;
     s1+=29.0;
    } else {
     s0+=268.0;
     s1+=464.0;
    }
   }
  } else {
   if(i43<1.074406623840332){
    if(i44<0.0011123742442578077){
     s0+=397.0;
     s1+=4.0;
    } else {
     s0+=1209.0;
     s1+=510.0;
    }
   } else {
    if(i31<1.1287610530853271){
     s0+=86.0;
    } else {
     s0+=358.0;
     s1+=2264.0;
    }
   }
  }
 }
} else {
 if(i1<-7.462810754077509e-05){
  if(i35<0.003834203816950321){
   if(i4<-2.154707908630371e-05){
    s0+=25.0;
   } else {
    if(i12<0.0007059713825583458){
     s0+=85.0;
     s1+=14640.0;
    } else {
     s0+=206.0;
    }
   }
  } else {
   if(i64<0.003574543632566929){
    s0+=170.0;
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i28<0.0011194662656635046){
   if(i5<1.002353549003601){
    if(i39<0.007647505030035973){
     s0+=13.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i34<0.00018808933964464813){
     s0+=34.0;
    } else {
     s0+=3.0;
     s1+=1090.0;
    }
   }
  } else {
   if(i6<0.005796168465167284){
    s0+=1508.0;
   } else {
    if(i10<0.9946779012680054){
     s0+=42.0;
     s1+=161.0;
    } else {
     s1+=558.0;
    }
   }
  }
 }
}
if(i21<1.0172944068908691){
 if(i3<7.110834121704102e-05){
  if(i18<0.0017806499963626266){
   if(i31<1.0739831924438477){
    if(i0<-0.0006435513496398926){
     s0+=10707.0;
     s1+=18.0;
    } else {
     s0+=18555.0;
     s1+=839.0;
    }
   } else {
    if(i44<0.0019168361322954297){
     s0+=59771.0;
     s1+=95.0;
    } else {
     s0+=3058.0;
     s1+=116.0;
    }
   }
  } else {
   if(i2<0.9984357357025146){
    if(i6<0.01622418686747551){
     s0+=16624.0;
     s1+=520.0;
    } else {
     s0+=432.0;
     s1+=267.0;
    }
   } else {
    if(i12<0.0006915458361618221){
     s0+=2791.0;
     s1+=4400.0;
    } else {
     s0+=1917.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i28<0.001998553052544594){
   if(i51<-3.632475909398636e-06){
    if(i23<1.185887336730957){
     s0+=1097.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i47<0.9998107552528381){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=1091.0;
    }
   }
  } else {
   if(i51<-7.244738753797719e-06){
    s0+=29.0;
   } else {
    if(i21<0.9232906103134155){
     s0+=49.0;
     s1+=181.0;
    } else {
     s0+=47.0;
     s1+=2495.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007198286475613713){
  if(i41<-9.584423423802946e-06){
   if(i4<1.3887882232666016e-05){
    if(i54<1.0515427589416504){
     s0+=180.0;
     s1+=119.0;
    } else {
     s0+=1.0;
     s1+=185.0;
    }
   } else {
    if(i6<0.0043731676414608955){
     s0+=302.0;
     s1+=628.0;
    } else {
     s0+=48.0;
     s1+=13273.0;
    }
   }
  } else {
   if(i26<-0.00044101476669311523){
    s1+=11.0;
   } else {
    if(i15<1.103654146194458){
     s0+=94.0;
     s1+=6.0;
    } else {
     s0+=368.0;
    }
   }
  }
 } else {
  s0+=473.0;
 }
}
if(i16<1.0080878734588623){
 if(i19<1.0181187391281128){
  if(i41<-4.647437890525907e-05){
   if(i58<0.0031597900670021772){
    if(i29<0.0030865520238876343){
     s0+=90.0;
    } else {
     s0+=61.0;
     s1+=1027.0;
    }
   } else {
    if(i52<0.3250530958175659){
     s0+=182.0;
     s1+=33.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   }
  } else {
   if(i15<1.1546916961669922){
    if(i55<1.0003472566604614){
     s0+=58233.0;
     s1+=741.0;
    } else {
     s0+=54386.0;
     s1+=4510.0;
    }
   } else {
    if(i39<0.11050388216972351){
     s0+=541.0;
     s1+=43.0;
    } else {
     s0+=32.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i8<0.00026851892471313477){
   if(i29<0.007757179439067841){
    if(i18<0.002573086880147457){
     s0+=542.0;
     s1+=43.0;
    } else {
     s0+=51.0;
     s1+=107.0;
    }
   } else {
    if(i69<0.017579836770892143){
     s0+=3.0;
    } else {
     s1+=160.0;
    }
   }
  } else {
   if(i1<-6.393926742020994e-05){
    if(i11<0.11709439754486084){
     s0+=81.0;
     s1+=133.0;
    } else {
     s0+=42.0;
     s1+=2231.0;
    }
   } else {
    if(i53<9.715557098388672e-06){
     s0+=67.0;
     s1+=509.0;
    } else {
     s0+=354.0;
     s1+=143.0;
    }
   }
  }
 }
} else {
 if(i26<0.0003007650375366211){
  if(i36<1.17277193069458){
   if(i34<0.0011454680934548378){
    if(i26<0.00016117095947265625){
     s0+=18.0;
     s1+=52.0;
    } else {
     s1+=945.0;
    }
   } else {
    if(i12<0.00013548927381634712){
     s1+=51.0;
    } else {
     s0+=1828.0;
     s1+=13.0;
    }
   }
  } else {
   if(i23<1.6811659336090088){
    if(i18<0.001866576261818409){
     s0+=59.0;
    } else {
     s0+=1.0;
     s1+=1923.0;
    }
   } else {
    s0+=43.0;
   }
  }
 } else {
  if(i53<3.0040740966796875e-05){
   if(i67<1.246260308107594e-05){
    if(i47<0.9978345036506653){
     s0+=1.0;
    } else {
     s0+=9.0;
     s1+=10882.0;
    }
   } else {
    if(i15<1.1776264905929565){
     s0+=22.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i67<-2.0829404093092307e-05){
    s1+=6.0;
   } else {
    s0+=50.0;
   }
  }
 }
}
if(i19<1.0167311429977417){
 if(i18<0.0017869978910312057){
  if(i57<-2.305053931195289e-05){
   if(i17<1.0086302757263184){
    if(i36<1.0880210399627686){
     s1+=3.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i32<0.000850975513458252){
     s1+=391.0;
    } else {
     s0+=18.0;
     s1+=6.0;
    }
   }
  } else {
   if(i0<0.0016530752182006836){
    if(i9<0.9959394931793213){
     s0+=17590.0;
     s1+=624.0;
    } else {
     s0+=74577.0;
     s1+=439.0;
    }
   } else {
    if(i51<-2.6841612452699337e-06){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=44.0;
    }
   }
  }
 } else {
  if(i17<1.0026286840438843){
   if(i2<0.998466968536377){
    if(i15<1.16768217086792){
     s0+=16241.0;
     s1+=509.0;
    } else {
     s0+=39.0;
     s1+=141.0;
    }
   } else {
    if(i29<0.00021799386013299227){
     s0+=1139.0;
    } else {
     s0+=2045.0;
     s1+=2537.0;
    }
   }
  } else {
   if(i6<0.003992726095020771){
    if(i12<0.00021067856869194657){
     s0+=70.0;
     s1+=192.0;
    } else {
     s0+=1046.0;
     s1+=8.0;
    }
   } else {
    if(i10<0.9766379594802856){
     s0+=766.0;
     s1+=315.0;
    } else {
     s0+=747.0;
     s1+=4639.0;
    }
   }
  }
 }
} else {
 if(i0<0.00035127997398376465){
  if(i11<0.19889691472053528){
   if(i42<1.000014066696167){
    if(i54<0.9680037498474121){
     s1+=4.0;
    } else {
     s0+=391.0;
    }
   } else {
    if(i29<0.0010796403512358665){
     s0+=7.0;
     s1+=73.0;
    } else {
     s0+=591.0;
     s1+=178.0;
    }
   }
  } else {
   if(i18<0.0021498382557183504){
    if(i17<1.001267433166504){
     s0+=35.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<-0.0005769133567810059){
     s0+=30.0;
     s1+=98.0;
    } else {
     s0+=7.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i1<-6.76914060022682e-05){
   if(i25<0.004519425332546234){
    if(i26<0.00035369396209716797){
     s0+=102.0;
     s1+=19.0;
    } else {
     s0+=7.0;
     s1+=237.0;
    }
   } else {
    if(i12<0.0007059713825583458){
     s0+=69.0;
     s1+=12595.0;
    } else {
     s0+=48.0;
    }
   }
  } else {
   if(i34<0.001122128451243043){
    if(i27<0.0009238831116817892){
     s1+=515.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i6<0.0065453266724944115){
     s0+=692.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=515.0;
    }
   }
  }
 }
}
if(i10<1.0104076862335205){
 if(i17<1.0044822692871094){
  if(i24<0.22563281655311584){
   if(i4<1.245737075805664e-05){
    if(i25<0.006473441142588854){
     s0+=63706.0;
     s1+=450.0;
    } else {
     s0+=40411.0;
     s1+=2526.0;
    }
   } else {
    if(i39<0.014499375596642494){
     s0+=5190.0;
     s1+=509.0;
    } else {
     s0+=2326.0;
     s1+=1991.0;
    }
   }
  } else {
   if(i27<0.002567521296441555){
    if(i55<1.0020710229873657){
     s0+=117.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i35<0.0018972170073539019){
     s0+=42.0;
     s1+=166.0;
    } else {
     s0+=5.0;
     s1+=699.0;
    }
   }
  }
 } else {
  if(i52<0.05332355201244354){
   if(i53<1.0311603546142578e-05){
    if(i8<0.00046944618225097656){
     s0+=289.0;
     s1+=17.0;
    } else {
     s0+=251.0;
     s1+=528.0;
    }
   } else {
    if(i58<0.0002927526365965605){
     s0+=1875.0;
     s1+=17.0;
    } else {
     s0+=35.0;
     s1+=116.0;
    }
   }
  } else {
   if(i24<0.04241466522216797){
    if(i32<0.0006757378578186035){
     s0+=391.0;
     s1+=63.0;
    } else {
     s0+=47.0;
     s1+=77.0;
    }
   } else {
    if(i20<-0.0035570263862609863){
     s0+=167.0;
     s1+=250.0;
    } else {
     s0+=151.0;
     s1+=2726.0;
    }
   }
  }
 }
} else {
 if(i10<1.014402151107788){
  if(i23<1.1180615425109863){
   s1+=965.0;
  } else {
   if(i29<0.0023343765642493963){
    s0+=1184.0;
   } else {
    if(i46<-3.8180637602636125e-06){
     s0+=92.0;
     s1+=908.0;
    } else {
     s0+=117.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<0.0011955539230257273){
   if(i17<1.0110337734222412){
    if(i36<1.0900044441223145){
     s1+=1.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i55<1.0034126043319702){
     s1+=345.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i13<1.020984172821045){
    if(i53<7.939338684082031e-05){
     s0+=8.0;
     s1+=1248.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=10790.0;
   }
  }
 }
}
if(i7<1.0135858058929443){
 if(i1<-8.510082261636853e-05){
  if(i57<0.00033809832530096173){
   if(i10<0.9740719795227051){
    if(i43<1.1126729249954224){
     s0+=174.0;
     s1+=15.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i15<1.127540111541748){
     s0+=420.0;
     s1+=1093.0;
    } else {
     s0+=34.0;
     s1+=2207.0;
    }
   }
  } else {
   if(i66<-0.012089520692825317){
    if(i43<1.0482559204101562){
     s0+=688.0;
     s1+=29.0;
    } else {
     s0+=21.0;
     s1+=54.0;
    }
   } else {
    if(i18<0.005753188394010067){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i17<1.0044376850128174){
   if(i6<0.003630739636719227){
    if(i23<1.1162974834442139){
     s0+=27174.0;
     s1+=869.0;
    } else {
     s0+=60973.0;
     s1+=214.0;
    }
   } else {
    if(i4<-3.635883331298828e-06){
     s0+=18453.0;
     s1+=227.0;
    } else {
     s0+=4102.0;
     s1+=3259.0;
    }
   }
  } else {
   if(i6<0.0028347664047032595){
    if(i49<-1.48865638038842e-05){
     s0+=22.0;
     s1+=104.0;
    } else {
     s0+=2513.0;
     s1+=7.0;
    }
   } else {
    if(i36<1.0958912372589111){
     s1+=532.0;
    } else {
     s0+=825.0;
     s1+=861.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013938338961452246){
  if(i49<-1.621211413294077e-05){
   if(i4<4.786252975463867e-05){
    s0+=8.0;
   } else {
    if(i8<0.0013920068740844727){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=534.0;
    }
   }
  } else {
   if(i0<0.0025791525840759277){
    if(i20<0.0007066130638122559){
     s0+=184.0;
     s1+=16.0;
    } else {
     s0+=451.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i0<-0.0005837678909301758){
   if(i11<0.22310996055603027){
    if(i56<0.12955227494239807){
     s0+=115.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=32.0;
   }
  } else {
   if(i32<0.0017129480838775635){
    if(i34<0.003221251768991351){
     s0+=308.0;
     s1+=2096.0;
    } else {
     s0+=103.0;
     s1+=11812.0;
    }
   } else {
    s0+=97.0;
   }
  }
 }
}
if(i3<6.407499313354492e-05){
 if(i11<0.20757997035980225){
  if(i8<0.00032711029052734375){
   if(i6<0.0031150076538324356){
    if(i20<-0.00033348798751831055){
     s0+=24994.0;
     s1+=611.0;
    } else {
     s0+=53459.0;
     s1+=108.0;
    }
   } else {
    if(i17<0.9981024861335754){
     s0+=21836.0;
     s1+=284.0;
    } else {
     s0+=4254.0;
     s1+=1923.0;
    }
   }
  } else {
   if(i18<0.002054407726973295){
    if(i13<1.022314190864563){
     s0+=5712.0;
     s1+=216.0;
    } else {
     s0+=5.0;
     s1+=48.0;
    }
   } else {
    if(i35<0.001192659605294466){
     s0+=435.0;
     s1+=1853.0;
    } else {
     s0+=3460.0;
     s1+=1312.0;
    }
   }
  }
 } else {
  if(i27<0.002572213765233755){
   if(i26<0.00016170740127563477){
    if(i18<0.00249337125569582){
     s0+=229.0;
     s1+=8.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i62<0.0001185049768537283){
     s1+=11.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i69<0.02737656980752945){
    if(i2<1.0017287731170654){
     s0+=40.0;
     s1+=2.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i77<0.09229147434234619){
     s0+=18.0;
     s1+=1217.0;
    } else {
     s0+=45.0;
     s1+=164.0;
    }
   }
  }
 }
} else {
 if(i7<1.0186108350753784){
  if(i6<0.0036419518291950226){
   if(i23<1.116804838180542){
    if(i36<1.0545791387557983){
     s0+=67.0;
    } else {
     s1+=516.0;
    }
   } else {
    if(i20<0.0026779770851135254){
     s0+=1572.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i5<1.0020729303359985){
    if(i50<0.016098013147711754){
     s0+=168.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i12<0.000704873469658196){
     s0+=192.0;
     s1+=3945.0;
    } else {
     s0+=128.0;
    }
   }
  }
 } else {
  if(i18<0.001216040225699544){
   if(i41<-4.183346754871309e-05){
    if(i16<1.0156526565551758){
     s0+=8.0;
    } else {
     s1+=275.0;
    }
   } else {
    if(i12<0.0005118962144479156){
     s1+=30.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i32<0.0017721056938171387){
    if(i26<-0.0003191232681274414){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=24.0;
     s1+=11533.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i11<0.19277158379554749){
 if(i8<0.0005691647529602051){
  if(i18<0.0014964346773922443){
   if(i18<0.0010550793958827853){
    if(i31<1.1354830265045166){
     s0+=67800.0;
     s1+=127.0;
    } else {
     s0+=5465.0;
     s1+=92.0;
    }
   } else {
    if(i15<1.023176908493042){
     s0+=1591.0;
     s1+=251.0;
    } else {
     s0+=9722.0;
     s1+=176.0;
    }
   }
  } else {
   if(i16<0.9949765205383301){
    if(i70<0.0188172347843647){
     s0+=17327.0;
     s1+=316.0;
    } else {
     s0+=458.0;
     s1+=161.0;
    }
   } else {
    if(i37<0.9997972249984741){
     s0+=4395.0;
     s1+=276.0;
    } else {
     s0+=2413.0;
     s1+=2804.0;
    }
   }
  }
 } else {
  if(i0<0.001282811164855957){
   if(i12<0.00031000919989310205){
    if(i6<0.0033893990330398083){
     s0+=348.0;
     s1+=22.0;
    } else {
     s0+=679.0;
     s1+=1992.0;
    }
   } else {
    if(i52<0.06418851763010025){
     s0+=4010.0;
     s1+=68.0;
    } else {
     s0+=508.0;
     s1+=627.0;
    }
   }
  } else {
   if(i16<1.01426100730896){
    if(i53<1.9252300262451172e-05){
     s0+=372.0;
     s1+=1986.0;
    } else {
     s0+=678.0;
     s1+=74.0;
    }
   } else {
    if(i53<2.8967857360839844e-05){
     s0+=2.0;
     s1+=2294.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
} else {
 if(i30<1.1759499311447144){
  if(i78<0.021583527326583862){
   if(i19<0.9819559454917908){
    if(i6<0.0031158793717622757){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=435.0;
   }
  } else {
   if(i29<0.0012606238014996052){
    s0+=3.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i17<0.9983129501342773){
   if(i77<0.06666868925094604){
    if(i1<-4.953624738845974e-06){
     s0+=2.0;
     s1+=235.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i14<0.30922847986221313){
     s0+=188.0;
     s1+=18.0;
    } else {
     s0+=17.0;
     s1+=54.0;
    }
   }
  } else {
   if(i0<0.00015300512313842773){
    if(i29<0.006286017596721649){
     s0+=124.0;
     s1+=114.0;
    } else {
     s0+=17.0;
     s1+=366.0;
    }
   } else {
    if(i41<-7.216719950520201e-06){
     s0+=3.0;
     s1+=12213.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i0<0.0009613633155822754){
 if(i19<1.0182666778564453){
  if(i15<1.1546916961669922){
   if(i8<0.0002784132957458496){
    if(i29<0.001052700448781252){
     s0+=29435.0;
     s1+=2117.0;
    } else {
     s0+=72198.0;
     s1+=618.0;
    }
   } else {
    if(i18<0.0019667819142341614){
     s0+=6805.0;
     s1+=121.0;
    } else {
     s0+=4120.0;
     s1+=2515.0;
    }
   }
  } else {
   if(i39<0.11701841652393341){
    if(i17<1.0090837478637695){
     s0+=584.0;
     s1+=33.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i31<1.1728172302246094){
     s0+=3.0;
    } else {
     s0+=20.0;
     s1+=850.0;
    }
   }
  }
 } else {
  if(i1<-3.433132587815635e-05){
   if(i25<0.01924758031964302){
    if(i12<0.0002720154298003763){
     s0+=124.0;
     s1+=185.0;
    } else {
     s0+=183.0;
     s1+=1.0;
    }
   } else {
    if(i55<1.0047754049301147){
     s0+=21.0;
     s1+=1374.0;
    } else {
     s0+=67.0;
     s1+=229.0;
    }
   }
  } else {
   if(i39<0.09773322939872742){
    if(i23<1.0905578136444092){
     s1+=21.0;
    } else {
     s0+=546.0;
     s1+=71.0;
    }
   } else {
    if(i16<0.9971407055854797){
     s0+=62.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=71.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i44<0.0008957636309787631){
   if(i27<0.0002065548615064472){
    s0+=62.0;
   } else {
    if(i47<0.9997774362564087){
     s0+=16.0;
    } else {
     s0+=20.0;
     s1+=2272.0;
    }
   }
  } else {
   if(i12<0.00016135505575221032){
    if(i4<6.562471389770508e-05){
     s1+=177.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i29<0.0009148243116214871){
     s1+=11.0;
    } else {
     s0+=1926.0;
    }
   }
  }
 } else {
  if(i48<0.9044426679611206){
   if(i25<0.014813005924224854){
    s0+=9.0;
   } else {
    if(i56<0.03346443921327591){
     s0+=31.0;
     s1+=45.0;
    } else {
     s0+=5.0;
     s1+=238.0;
    }
   }
  } else {
   if(i15<1.07395601272583){
    if(i27<0.01172618754208088){
     s0+=1.0;
     s1+=175.0;
    } else {
     s0+=38.0;
     s1+=3.0;
    }
   } else {
    if(i14<0.10636892914772034){
     s0+=23.0;
     s1+=495.0;
    } else {
     s0+=4.0;
     s1+=12906.0;
    }
   }
  }
 }
}
if(i1<-9.840834536589682e-05){
 if(i15<1.0441462993621826){
  if(i0<0.002067089080810547){
   if(i77<0.07900157570838928){
    if(i63<0.0018073604442179203){
     s0+=455.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   s1+=45.0;
  }
 } else {
  if(i36<1.1400820016860962){
   if(i10<1.0143179893493652){
    if(i13<1.0228108167648315){
     s0+=257.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i46<-1.8132343029719777e-05){
     s0+=15.0;
    } else {
     s1+=621.0;
    }
   }
  } else {
   if(i66<-0.01265832781791687){
    if(i47<0.9999437928199768){
     s1+=43.0;
    } else {
     s0+=179.0;
     s1+=100.0;
    }
   } else {
    if(i24<0.01815354824066162){
     s0+=51.0;
     s1+=80.0;
    } else {
     s0+=24.0;
     s1+=14459.0;
    }
   }
  }
 }
} else {
 if(i2<1.0033104419708252){
  if(i39<0.014282772317528725){
   if(i18<0.0011617278214544058){
    if(i58<0.00024986383505165577){
     s0+=60736.0;
     s1+=119.0;
    } else {
     s0+=446.0;
     s1+=61.0;
    }
   } else {
    if(i23<1.1164028644561768){
     s0+=3577.0;
     s1+=776.0;
    } else {
     s0+=9570.0;
     s1+=14.0;
    }
   }
  } else {
   if(i5<1.0002354383468628){
    if(i34<0.0010865385411307216){
     s0+=6211.0;
     s1+=550.0;
    } else {
     s0+=20898.0;
     s1+=151.0;
    }
   } else {
    if(i27<0.0009518878650851548){
     s0+=294.0;
     s1+=1746.0;
    } else {
     s0+=8658.0;
     s1+=1469.0;
    }
   }
  }
 } else {
  if(i74<0.0025675296783447266){
   if(i23<1.116804838180542){
    if(i28<0.00018986323266290128){
     s0+=859.0;
    } else {
     s1+=2044.0;
    }
   } else {
    if(i29<0.0021480945870280266){
     s0+=3813.0;
     s1+=4.0;
    } else {
     s0+=271.0;
     s1+=954.0;
    }
   }
  } else {
   if(i27<0.005677315406501293){
    if(i6<0.002783136907964945){
     s0+=45.0;
     s1+=19.0;
    } else {
     s0+=4.0;
     s1+=1049.0;
    }
   } else {
    if(i40<1.1367955207824707){
     s0+=98.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i7<1.0135858058929443){
 if(i1<-7.861426274757832e-05){
  if(i24<0.05530640482902527){
   if(i15<1.0716495513916016){
    if(i68<0.2155686467885971){
     s0+=164.0;
     s1+=33.0;
    } else {
     s0+=742.0;
     s1+=8.0;
    }
   } else {
    if(i72<-0.006943613290786743){
     s0+=68.0;
     s1+=231.0;
    } else {
     s0+=153.0;
     s1+=58.0;
    }
   }
  } else {
   if(i46<-3.592955181375146e-05){
    if(i23<1.38189697265625){
     s0+=192.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i34<0.0023465855047106743){
     s0+=192.0;
     s1+=197.0;
    } else {
     s0+=170.0;
     s1+=3342.0;
    }
   }
  }
 } else {
  if(i4<1.8298625946044922e-05){
   if(i35<0.0007064662640914321){
    if(i47<1.0001633167266846){
     s0+=42979.0;
     s1+=25.0;
    } else {
     s0+=35484.0;
     s1+=410.0;
    }
   } else {
    if(i2<0.9984357357025146){
     s0+=23006.0;
     s1+=582.0;
    } else {
     s0+=5668.0;
     s1+=2515.0;
    }
   }
  } else {
   if(i52<0.04346810281276703){
    if(i25<0.0075520798563957214){
     s0+=4665.0;
     s1+=574.0;
    } else {
     s0+=750.0;
     s1+=577.0;
    }
   } else {
    if(i2<1.0005133152008057){
     s0+=683.0;
     s1+=133.0;
    } else {
     s0+=416.0;
     s1+=977.0;
    }
   }
  }
 }
} else {
 if(i6<0.004952756687998772){
  if(i0<0.0018059611320495605){
   if(i31<1.081012487411499){
    s1+=207.0;
   } else {
    if(i11<0.15810438990592957){
     s0+=889.0;
     s1+=15.0;
    } else {
     s0+=182.0;
     s1+=39.0;
    }
   }
  } else {
   if(i42<1.0017802715301514){
    s0+=49.0;
   } else {
    if(i35<0.0013544459361582994){
     s1+=723.0;
    } else {
     s0+=22.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<0.9960885047912598){
   if(i36<1.1912720203399658){
    s0+=28.0;
   } else {
    if(i14<0.10003894567489624){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=107.0;
    }
   }
  } else {
   if(i51<-8.110292583296541e-06){
    s0+=9.0;
   } else {
    if(i40<1.6811659336090088){
     s0+=63.0;
     s1+=13516.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i4<2.3424625396728516e-05){
 if(i6<0.0037344549782574177){
  if(i9<0.9967513084411621){
   if(i28<0.0003173098957631737){
    if(i0<-0.0006206929683685303){
     s0+=1075.0;
     s1+=27.0;
    } else {
     s0+=755.0;
     s1+=453.0;
    }
   } else {
    if(i28<0.0007320797303691506){
     s0+=2418.0;
     s1+=140.0;
    } else {
     s0+=18031.0;
     s1+=64.0;
    }
   }
  } else {
   if(i62<0.0010793458204716444){
    if(i21<1.0184693336486816){
     s0+=64907.0;
     s1+=311.0;
    } else {
     s0+=445.0;
     s1+=32.0;
    }
   } else {
    if(i12<0.00022017030278220773){
     s0+=273.0;
     s1+=13.0;
    } else {
     s0+=13.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i3<-2.485513687133789e-05){
   if(i19<1.0233063697814941){
    if(i15<1.128258228302002){
     s0+=20462.0;
     s1+=546.0;
    } else {
     s0+=407.0;
     s1+=236.0;
    }
   } else {
    if(i11<0.1539231836795807){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=97.0;
    }
   }
  } else {
   if(i23<1.0559439659118652){
    s0+=456.0;
   } else {
    if(i37<0.9993956685066223){
     s0+=606.0;
     s1+=154.0;
    } else {
     s0+=453.0;
     s1+=3320.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007041515782475471){
  if(i6<0.002331777010113001){
   if(i57<-2.2118587367003784e-05){
    if(i7<1.0082697868347168){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=322.0;
    }
   } else {
    if(i22<1.037703514099121){
     s0+=1198.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   }
  } else {
   if(i3<2.1278858184814453e-05){
    if(i15<1.1141393184661865){
     s0+=1074.0;
     s1+=186.0;
    } else {
     s0+=124.0;
     s1+=491.0;
    }
   } else {
    if(i24<0.031302064657211304){
     s0+=137.0;
     s1+=155.0;
    } else {
     s0+=561.0;
     s1+=17625.0;
    }
   }
  }
 } else {
  if(i38<0.42648380994796753){
   s0+=3163.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i22<1.0179963111877441){
 if(i1<-9.102238254854456e-05){
  if(i11<0.04176744818687439){
   if(i20<-0.0032539963722229004){
    if(i15<1.1314058303833008){
     s0+=710.0;
     s1+=20.0;
    } else {
     s0+=38.0;
     s1+=32.0;
    }
   } else {
    if(i78<-0.017800092697143555){
     s0+=67.0;
     s1+=140.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   }
  } else {
   if(i51<-6.152826244942844e-06){
    s0+=238.0;
   } else {
    if(i22<0.8901476860046387){
     s0+=52.0;
     s1+=37.0;
    } else {
     s0+=58.0;
     s1+=3690.0;
    }
   }
  }
 } else {
  if(i16<1.0089950561523438){
   if(i2<1.0026501417160034){
    if(i35<0.0006847964832559228){
     s0+=75282.0;
     s1+=370.0;
    } else {
     s0+=31855.0;
     s1+=3464.0;
    }
   } else {
    if(i58<0.00029089924646541476){
     s0+=5805.0;
     s1+=980.0;
    } else {
     s0+=185.0;
     s1+=588.0;
    }
   }
  } else {
   if(i50<0.0010397520381957293){
    if(i6<0.0013792761601507664){
     s0+=45.0;
     s1+=37.0;
    } else {
     s0+=15.0;
     s1+=712.0;
    }
   } else {
    if(i61<-0.0005285739898681641){
     s0+=12.0;
     s1+=129.0;
    } else {
     s0+=1044.0;
     s1+=86.0;
    }
   }
  }
 }
} else {
 if(i27<0.002564740367233753){
  if(i36<1.117074966430664){
   if(i5<1.006335735321045){
    if(i29<0.0013550642179325223){
     s0+=11.0;
     s1+=1406.0;
    } else {
     s0+=32.0;
     s1+=11.0;
    }
   } else {
    s0+=62.0;
   }
  } else {
   if(i29<0.0018816528609022498){
    s0+=580.0;
   } else {
    if(i4<8.64267349243164e-06){
     s0+=192.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i0<-0.00018960237503051758){
   if(i65<-0.0013622811529785395){
    if(i19<1.023890495300293){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=89.0;
    }
   } else {
    if(i40<1.176649808883667){
     s0+=283.0;
     s1+=20.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i24<0.09910997748374939){
    if(i10<1.013805866241455){
     s0+=104.0;
     s1+=15.0;
    } else {
     s1+=67.0;
    }
   } else {
    if(i26<-0.00023865699768066406){
     s0+=32.0;
     s1+=134.0;
    } else {
     s0+=20.0;
     s1+=11902.0;
    }
   }
  }
 }
}
if(i9<1.0143203735351562){
 if(i4<1.901388168334961e-05){
  if(i11<0.23055705428123474){
   if(i18<0.0015694889007136226){
    if(i35<0.0005787883419543505){
     s0+=70610.0;
     s1+=166.0;
    } else {
     s0+=15083.0;
     s1+=531.0;
    }
   } else {
    if(i31<1.0903346538543701){
     s0+=4467.0;
     s1+=2265.0;
    } else {
     s0+=17969.0;
     s1+=869.0;
    }
   }
  } else {
   if(i28<0.0029357322491705418){
    s0+=39.0;
   } else {
    if(i48<1.2056859731674194){
     s0+=28.0;
     s1+=245.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i25<0.01489979401230812){
   if(i49<-9.990177204599604e-06){
    if(i27<0.0010748929344117641){
     s1+=552.0;
    } else {
     s0+=129.0;
     s1+=147.0;
    }
   } else {
    if(i30<1.116804838180542){
     s0+=2043.0;
     s1+=722.0;
    } else {
     s0+=3719.0;
     s1+=113.0;
    }
   }
  } else {
   if(i11<0.07124891877174377){
    if(i27<0.0033554842229932547){
     s0+=6.0;
     s1+=109.0;
    } else {
     s0+=829.0;
     s1+=415.0;
    }
   } else {
    if(i6<0.006782077718526125){
     s0+=220.0;
     s1+=198.0;
    } else {
     s0+=174.0;
     s1+=3594.0;
    }
   }
  }
 }
} else {
 if(i41<-1.2083864930900745e-05){
  if(i7<1.0192979574203491){
   if(i12<0.0006948315422050655){
    if(i49<2.7827736630570143e-05){
     s0+=81.0;
     s1+=1736.0;
    } else {
     s0+=118.0;
     s1+=136.0;
    }
   } else {
    if(i28<0.016680069267749786){
     s0+=527.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.000825504946988076){
    if(i47<1.0021650791168213){
     s0+=26.0;
     s1+=11354.0;
    } else {
     s0+=79.0;
     s1+=1159.0;
    }
   } else {
    s0+=38.0;
   }
  }
 } else {
  if(i16<0.9876512885093689){
   s1+=5.0;
  } else {
   if(i35<0.0008926889859139919){
    s0+=338.0;
   } else {
    s1+=5.0;
   }
  }
 }
}
if(i4<2.2113323211669922e-05){
 if(i1<-9.141492773778737e-05){
  if(i15<1.1077394485473633){
   if(i11<0.11500242352485657){
    if(i43<0.9100509285926819){
     s1+=7.0;
    } else {
     s0+=450.0;
     s1+=11.0;
    }
   } else {
    if(i25<0.01947851851582527){
     s0+=14.0;
     s1+=7.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i38<0.005414396524429321){
    if(i39<0.09040619432926178){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   } else {
    if(i45<-0.00045556522672995925){
     s1+=674.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i6<0.003448149189352989){
   if(i58<0.0001868960098363459){
    if(i35<0.0005389937432482839){
     s0+=57195.0;
     s1+=82.0;
    } else {
     s0+=15232.0;
     s1+=258.0;
    }
   } else {
    if(i31<1.074918270111084){
     s0+=2624.0;
     s1+=498.0;
    } else {
     s0+=10399.0;
     s1+=87.0;
    }
   }
  } else {
   if(i0<-0.0003699660301208496){
    if(i27<0.0009662852389737964){
     s0+=2592.0;
     s1+=333.0;
    } else {
     s0+=19690.0;
     s1+=338.0;
    }
   } else {
    if(i34<0.00022108256234787405){
     s0+=517.0;
    } else {
     s0+=1400.0;
     s1+=2780.0;
    }
   }
  }
 }
} else {
 if(i6<0.0040731425397098064){
  if(i0<0.0018061399459838867){
   if(i0<0.0013652443885803223){
    if(i13<1.0227183103561401){
     s0+=4089.0;
     s1+=106.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   } else {
    if(i28<0.000764877418987453){
     s1+=204.0;
    } else {
     s0+=517.0;
    }
   }
  } else {
   if(i12<0.0009277650387957692){
    s1+=740.0;
   } else {
    s0+=214.0;
   }
  }
 } else {
  if(i0<1.621246337890625e-05){
   if(i59<0.011705569922924042){
    if(i43<1.0861446857452393){
     s0+=862.0;
     s1+=134.0;
    } else {
     s0+=87.0;
     s1+=115.0;
    }
   } else {
    if(i42<1.001037836074829){
     s0+=7.0;
    } else {
     s0+=1.0;
     s1+=136.0;
    }
   }
  } else {
   if(i7<1.0176701545715332){
    if(i47<0.9987090229988098){
     s0+=185.0;
    } else {
     s0+=625.0;
     s1+=5158.0;
    }
   } else {
    if(i34<0.003721078857779503){
     s0+=33.0;
     s1+=1497.0;
    } else {
     s0+=3.0;
     s1+=10755.0;
    }
   }
  }
 }
}
if(i2<1.0037140846252441){
 if(i5<1.0024404525756836){
  if(i18<0.0016728362534195185){
   if(i61<-0.00034862756729125977){
    if(i28<0.00026032491587102413){
     s0+=537.0;
     s1+=302.0;
    } else {
     s0+=15846.0;
     s1+=192.0;
    }
   } else {
    if(i44<0.0020512472838163376){
     s0+=70350.0;
     s1+=294.0;
    } else {
     s0+=1036.0;
     s1+=76.0;
    }
   }
  } else {
   if(i34<0.0010805816855281591){
    if(i47<0.9995900392532349){
     s0+=2054.0;
     s1+=42.0;
    } else {
     s0+=260.0;
     s1+=2338.0;
    }
   } else {
    if(i14<0.2006007730960846){
     s0+=19076.0;
     s1+=964.0;
    } else {
     s0+=63.0;
     s1+=537.0;
    }
   }
  }
 } else {
  if(i25<0.028227876871824265){
   if(i3<8.64267349243164e-06){
    if(i67<1.2556969522847794e-05){
     s0+=1567.0;
     s1+=94.0;
    } else {
     s0+=31.0;
     s1+=54.0;
    }
   } else {
    if(i35<0.0005024626152589917){
     s0+=345.0;
    } else {
     s0+=321.0;
     s1+=353.0;
    }
   }
  } else {
   if(i59<0.002928221132606268){
    if(i34<0.006689746864140034){
     s0+=47.0;
     s1+=155.0;
    } else {
     s0+=301.0;
     s1+=97.0;
    }
   } else {
    if(i58<0.002879758831113577){
     s0+=69.0;
     s1+=946.0;
    } else {
     s0+=66.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019506709650158882){
  if(i12<0.00024096386914607137){
   if(i0<0.0008133053779602051){
    if(i23<1.1229777336120605){
     s0+=5.0;
     s1+=154.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i50<0.0012310479069128633){
     s0+=2.0;
     s1+=2455.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   }
  } else {
   if(i9<1.0256919860839844){
    if(i63<-0.0023154434747993946){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=4140.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i20<-0.0014261603355407715){
   if(i27<0.004084317479282618){
    s0+=23.0;
   } else {
    if(i42<1.003983497619629){
     s0+=111.0;
     s1+=236.0;
    } else {
     s0+=12.0;
     s1+=476.0;
    }
   }
  } else {
   if(i36<1.7041046619415283){
    if(i23<1.170810580253601){
     s0+=13.0;
     s1+=45.0;
    } else {
     s0+=63.0;
     s1+=14438.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
}
if(i3<6.300210952758789e-05){
 if(i11<0.2063632607460022){
  if(i13<1.010044813156128){
   if(i35<0.0007250821217894554){
    if(i36<1.0776758193969727){
     s0+=21866.0;
     s1+=336.0;
    } else {
     s0+=58137.0;
     s1+=185.0;
    }
   } else {
    if(i0<-0.0005058348178863525){
     s0+=24645.0;
     s1+=748.0;
    } else {
     s0+=7328.0;
     s1+=4036.0;
    }
   }
  } else {
   if(i1<-3.9417707739630714e-05){
    if(i46<-3.577130428311648e-06){
     s0+=263.0;
     s1+=917.0;
    } else {
     s0+=218.0;
     s1+=8.0;
    }
   } else {
    if(i31<1.0904107093811035){
     s0+=19.0;
     s1+=132.0;
    } else {
     s0+=1251.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i46<-4.43563067165087e-06){
   if(i39<0.020922426134347916){
    if(i40<1.174942970275879){
     s0+=46.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i6<0.004680048208683729){
     s0+=44.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=1453.0;
    }
   }
  } else {
   if(i27<0.010787519626319408){
    if(i25<0.037812888622283936){
     s0+=236.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=12.0;
   }
  }
 }
} else {
 if(i12<0.0007042945362627506){
  if(i6<0.004916093312203884){
   if(i12<0.00021321247913874686){
    if(i37<0.9956697821617126){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=1366.0;
    }
   } else {
    if(i13<1.0212163925170898){
     s0+=268.0;
    } else {
     s0+=2.0;
     s1+=71.0;
    }
   }
  } else {
   if(i65<0.02478109300136566){
    if(i21<0.9088934063911438){
     s0+=16.0;
     s1+=73.0;
    } else {
     s0+=50.0;
     s1+=14973.0;
    }
   } else {
    if(i18<0.012154837138950825){
     s0+=11.0;
     s1+=118.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  s0+=1903.0;
 }
}
if(i40<1.1402404308319092){
 if(i10<1.0075582265853882){
  if(i41<-4.320670632296242e-05){
   if(i25<0.02753775380551815){
    if(i55<1.0013985633850098){
     s0+=62.0;
     s1+=62.0;
    } else {
     s0+=147.0;
     s1+=21.0;
    }
   } else {
    if(i54<0.8607923984527588){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=412.0;
    }
   }
  } else {
   if(i8<0.00022464990615844727){
    if(i31<1.0867384672164917){
     s0+=34147.0;
     s1+=1776.0;
    } else {
     s0+=62416.0;
     s1+=440.0;
    }
   } else {
    if(i6<0.004120370373129845){
     s0+=10437.0;
     s1+=213.0;
    } else {
     s0+=1821.0;
     s1+=2063.0;
    }
   }
  }
 } else {
  if(i35<0.0011665787314996123){
   if(i53<1.233816146850586e-05){
    if(i35<0.00029264239128679037){
     s0+=180.0;
     s1+=87.0;
    } else {
     s0+=279.0;
     s1+=3340.0;
    }
   } else {
    if(i11<0.19621288776397705){
     s0+=771.0;
     s1+=143.0;
    } else {
     s0+=5.0;
     s1+=152.0;
    }
   }
  } else {
   if(i12<0.0005526171298697591){
    if(i6<0.005145300179719925){
     s0+=90.0;
    } else {
     s1+=576.0;
    }
   } else {
    if(i50<0.00420727115124464){
     s0+=1388.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i3<1.1324882507324219e-05){
  if(i63<-0.0011191698722541332){
   if(i18<0.004684617277234793){
    if(i47<1.0007877349853516){
     s0+=484.0;
     s1+=3.0;
    } else {
     s0+=135.0;
     s1+=136.0;
    }
   } else {
    if(i25<0.032620400190353394){
     s0+=40.0;
     s1+=12.0;
    } else {
     s0+=33.0;
     s1+=642.0;
    }
   }
  } else {
   if(i43<1.115551471710205){
    if(i35<0.003193114884197712){
     s0+=2819.0;
     s1+=98.0;
    } else {
     s0+=31.0;
     s1+=37.0;
    }
   } else {
    if(i42<1.0008246898651123){
     s0+=179.0;
     s1+=24.0;
    } else {
     s0+=15.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i36<1.1730083227157593){
   if(i39<0.03053249977529049){
    s0+=681.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i36<1.6811659336090088){
    if(i14<0.04079708456993103){
     s0+=136.0;
     s1+=168.0;
    } else {
     s0+=56.0;
     s1+=13944.0;
    }
   } else {
    s0+=52.0;
   }
  }
 }
}
if(i2<1.00374174118042){
 if(i38<0.20438066124916077){
  if(i4<2.0205974578857422e-05){
   if(i30<1.0905578136444092){
    if(i24<0.06891325116157532){
     s0+=24976.0;
     s1+=1767.0;
    } else {
     s0+=406.0;
     s1+=790.0;
    }
   } else {
    if(i15<1.122455358505249){
     s0+=80749.0;
     s1+=1035.0;
    } else {
     s0+=2506.0;
     s1+=535.0;
    }
   }
  } else {
   if(i63<-0.00037626063567586243){
    if(i34<0.000994562404230237){
     s0+=9.0;
     s1+=255.0;
    } else {
     s0+=1150.0;
     s1+=875.0;
    }
   } else {
    if(i52<0.013353949412703514){
     s0+=1066.0;
     s1+=15.0;
    } else {
     s0+=1060.0;
     s1+=287.0;
    }
   }
  }
 } else {
  if(i18<0.0021944441832602024){
   if(i1<-5.298638279782608e-05){
    if(i42<1.000273585319519){
     s0+=1.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i15<1.0987606048583984){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=152.0;
    }
   }
  } else {
   if(i6<0.006281908601522446){
    if(i27<0.005086936522275209){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i20<-0.0047844648361206055){
     s0+=3.0;
     s1+=60.0;
    } else {
     s1+=786.0;
    }
   }
  }
 }
} else {
 if(i6<0.00393954012542963){
  if(i53<1.0311603546142578e-05){
   if(i17<1.0074357986450195){
    if(i62<-0.0008360601495951414){
     s1+=36.0;
    } else {
     s0+=672.0;
     s1+=46.0;
    }
   } else {
    if(i49<-5.054508619650733e-06){
     s0+=11.0;
     s1+=657.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i20<0.00197601318359375){
    if(i26<0.00020837783813476562){
     s0+=2820.0;
     s1+=4.0;
    } else {
     s0+=497.0;
     s1+=72.0;
    }
   } else {
    if(i49<3.6571746022673324e-06){
     s1+=213.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i34<0.0021347326692193747){
   if(i50<0.0009902314050123096){
    s1+=2028.0;
   } else {
    if(i56<0.036144010722637177){
     s0+=376.0;
     s1+=30.0;
    } else {
     s0+=13.0;
     s1+=55.0;
    }
   }
  } else {
   if(i14<0.07792609930038452){
    if(i0<0.0020337700843811035){
     s0+=82.0;
     s1+=180.0;
    } else {
     s1+=191.0;
    }
   } else {
    if(i20<-0.0011449456214904785){
     s0+=51.0;
     s1+=738.0;
    } else {
     s1+=13514.0;
    }
   }
  }
 }
}
if(i0<0.0009595751762390137){
 if(i6<0.0070898039266467094){
  if(i29<0.001060551032423973){
   if(i35<0.0007173037156462669){
    if(i26<-5.65648078918457e-05){
     s0+=8768.0;
     s1+=317.0;
    } else {
     s0+=19763.0;
     s1+=29.0;
    }
   } else {
    if(i23<1.056142807006836){
     s0+=2849.0;
    } else {
     s0+=755.0;
     s1+=2751.0;
    }
   }
  } else {
   if(i40<1.122455358505249){
    if(i5<1.002333402633667){
     s0+=67355.0;
     s1+=163.0;
    } else {
     s0+=2481.0;
     s1+=175.0;
    }
   } else {
    if(i54<1.0239506959915161){
     s0+=5892.0;
     s1+=365.0;
    } else {
     s0+=577.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i4<7.569789886474609e-06){
   if(i15<1.1179389953613281){
    if(i24<0.19826281070709229){
     s0+=4291.0;
     s1+=157.0;
    } else {
     s0+=9.0;
     s1+=38.0;
    }
   } else {
    if(i33<0.9064956307411194){
     s0+=73.0;
     s1+=30.0;
    } else {
     s0+=4.0;
     s1+=324.0;
    }
   }
  } else {
   if(i26<-0.0005453824996948242){
    if(i14<0.10315051674842834){
     s0+=1329.0;
     s1+=160.0;
    } else {
     s0+=80.0;
     s1+=225.0;
    }
   } else {
    if(i26<-0.00037997961044311523){
     s0+=236.0;
     s1+=418.0;
    } else {
     s0+=117.0;
     s1+=2679.0;
    }
   }
  }
 }
} else {
 if(i39<0.019100630655884743){
  if(i6<0.002867113333195448){
   if(i23<1.116804838180542){
    if(i36<1.0545791387557983){
     s0+=70.0;
    } else {
     s1+=251.0;
    }
   } else {
    if(i28<0.0019653593190014362){
     s0+=1256.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i53<1.9788742065429688e-05){
    if(i35<0.002489933278411627){
     s0+=88.0;
     s1+=2479.0;
    } else {
     s0+=121.0;
     s1+=17.0;
    }
   } else {
    if(i23<1.2116529941558838){
     s0+=290.0;
    } else {
     s1+=80.0;
    }
   }
  }
 } else {
  if(i36<1.1645245552062988){
   if(i26<0.0002123415470123291){
    if(i6<0.005598537158221006){
     s0+=124.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=59.0;
    }
   } else {
    if(i35<0.0013187527656555176){
     s0+=6.0;
     s1+=499.0;
    } else {
     s0+=34.0;
    }
   }
  } else {
   if(i61<-0.007202714681625366){
    if(i56<0.03396885469555855){
     s0+=30.0;
     s1+=20.0;
    } else {
     s0+=6.0;
     s1+=141.0;
    }
   } else {
    if(i26<-0.0006299614906311035){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=50.0;
     s1+=12509.0;
    }
   }
  }
 }
}
if(i0<0.0009695291519165039){
 if(i6<0.0076050907373428345){
  if(i23<1.1162974834442139){
   if(i32<7.006525993347168e-05){
    if(i36<1.0579137802124023){
     s0+=16845.0;
     s1+=110.0;
    } else {
     s0+=6302.0;
     s1+=554.0;
    }
   } else {
    if(i57<2.114705421263352e-05){
     s0+=6755.0;
     s1+=685.0;
    } else {
     s0+=506.0;
     s1+=1817.0;
    }
   }
  } else {
   if(i1<-6.177615432534367e-05){
    if(i2<1.0022001266479492){
     s0+=914.0;
     s1+=54.0;
    } else {
     s0+=143.0;
     s1+=377.0;
    }
   } else {
    if(i28<0.0018041827715933323){
     s0+=56625.0;
    } else {
     s0+=21778.0;
     s1+=684.0;
    }
   }
  }
 } else {
  if(i21<1.0071582794189453){
   if(i43<1.0849632024765015){
    if(i38<0.0636414885520935){
     s0+=4274.0;
     s1+=348.0;
    } else {
     s0+=504.0;
     s1+=442.0;
    }
   } else {
    if(i6<0.008329525589942932){
     s0+=82.0;
     s1+=65.0;
    } else {
     s0+=69.0;
     s1+=1191.0;
    }
   }
  } else {
   if(i41<-7.473411642422434e-06){
    if(i9<0.9922565221786499){
     s0+=12.0;
     s1+=21.0;
    } else {
     s0+=8.0;
     s1+=1667.0;
    }
   } else {
    s0+=31.0;
   }
  }
 }
} else {
 if(i31<1.1703872680664062){
  if(i35<0.0010805835481733084){
   if(i28<0.0010662246495485306){
    if(i55<1.0038902759552002){
     s0+=2.0;
     s1+=2050.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i51<-3.4464228519937024e-06){
     s0+=410.0;
    } else {
     s0+=67.0;
     s1+=554.0;
    }
   }
  } else {
   if(i39<0.023560402914881706){
    if(i29<0.0024727843701839447){
     s0+=1398.0;
     s1+=12.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i31<1.127323031425476){
     s0+=19.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i1<-8.267072553280741e-05){
   if(i10<0.9744459390640259){
    if(i18<0.005938179790973663){
     s0+=26.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i54<0.8037070035934448){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=12475.0;
    }
   }
  } else {
   if(i23<1.629280686378479){
    if(i74<0.008280515670776367){
     s1+=503.0;
    } else {
     s0+=6.0;
     s1+=71.0;
    }
   } else {
    s0+=40.0;
   }
  }
 }
}
if(i10<1.011118769645691){
 if(i5<1.0024418830871582){
  if(i21<1.0152485370635986){
   if(i4<1.4483928680419922e-05){
    if(i35<0.0006896273698657751){
     s0+=75421.0;
     s1+=359.0;
    } else {
     s0+=29041.0;
     s1+=2786.0;
    }
   } else {
    if(i6<0.003998374566435814){
     s0+=3609.0;
     s1+=41.0;
    } else {
     s0+=848.0;
     s1+=896.0;
    }
   }
  } else {
   if(i18<0.0020662732422351837){
    if(i41<-1.699785570963286e-05){
     s1+=18.0;
    } else {
     s0+=648.0;
     s1+=22.0;
    }
   } else {
    if(i41<-6.631150426983368e-06){
     s0+=195.0;
     s1+=639.0;
    } else {
     s0+=43.0;
    }
   }
  }
 } else {
  if(i3<7.861852645874023e-05){
   if(i30<1.1822609901428223){
    if(i32<0.00040286779403686523){
     s0+=409.0;
     s1+=440.0;
    } else {
     s0+=2821.0;
     s1+=3.0;
    }
   } else {
    if(i52<0.252445787191391){
     s0+=2032.0;
     s1+=1692.0;
    } else {
     s0+=108.0;
     s1+=1012.0;
    }
   }
  } else {
   if(i50<0.0019340196158736944){
    if(i34<0.0009569872636348009){
     s1+=409.0;
    } else {
     s0+=374.0;
     s1+=138.0;
    }
   } else {
    if(i24<0.0006538331508636475){
     s0+=35.0;
     s1+=22.0;
    } else {
     s0+=56.0;
     s1+=1871.0;
    }
   }
  }
 }
} else {
 if(i6<0.0035202710423618555){
  if(i17<1.0115530490875244){
   if(i29<0.0004989909939467907){
    s1+=150.0;
   } else {
    if(i62<-0.0010372926481068134){
     s0+=31.0;
     s1+=17.0;
    } else {
     s0+=837.0;
    }
   }
  } else {
   if(i46<-8.533305663149804e-05){
    s0+=4.0;
   } else {
    if(i47<0.9978032112121582){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=338.0;
    }
   }
  }
 } else {
  if(i25<0.003431842429563403){
   if(i32<0.0011269450187683105){
    if(i42<1.00084388256073){
     s0+=21.0;
    } else {
     s1+=237.0;
    }
   } else {
    if(i65<0.003663197858259082){
     s0+=55.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i47<0.9983499050140381){
    s0+=35.0;
   } else {
    if(i12<0.0009516249992884696){
     s0+=32.0;
     s1+=13086.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
}
if(i3<6.335973739624023e-05){
 if(i18<0.0018532066605985165){
  if(i25<0.005530565045773983){
   if(i20<-0.0007148385047912598){
    if(i42<1.0003859996795654){
     s0+=883.0;
     s1+=178.0;
    } else {
     s0+=546.0;
    }
   } else {
    if(i18<0.0013016583397984505){
     s0+=56980.0;
     s1+=90.0;
    } else {
     s0+=3812.0;
     s1+=80.0;
    }
   }
  } else {
   if(i42<1.0000032186508179){
    if(i5<0.9990936517715454){
     s0+=19150.0;
     s1+=24.0;
    } else {
     s0+=2061.0;
     s1+=68.0;
    }
   } else {
    if(i31<1.077322244644165){
     s0+=1451.0;
     s1+=637.0;
    } else {
     s0+=8371.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i15<1.1221752166748047){
   if(i29<0.001218539895489812){
    if(i12<0.00027326063718646765){
     s0+=375.0;
     s1+=2799.0;
    } else {
     s0+=1682.0;
     s1+=4.0;
    }
   } else {
    if(i24<0.2082941234111786){
     s0+=18084.0;
     s1+=1125.0;
    } else {
     s0+=80.0;
     s1+=139.0;
    }
   }
  } else {
   if(i39<0.04704539477825165){
    if(i9<1.0132783651351929){
     s0+=432.0;
     s1+=19.0;
    } else {
     s0+=70.0;
     s1+=232.0;
    }
   } else {
    if(i31<1.1802709102630615){
     s0+=120.0;
     s1+=150.0;
    } else {
     s0+=123.0;
     s1+=2055.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007036376628093421){
  if(i41<-0.00018300293595530093){
   s0+=64.0;
  } else {
   if(i18<0.0005420804372988641){
    if(i20<0.0014936327934265137){
     s0+=72.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=77.0;
    }
   } else {
    if(i26<-0.00032079219818115234){
     s0+=92.0;
     s1+=356.0;
    } else {
     s0+=157.0;
     s1+=16133.0;
    }
   }
  }
 } else {
  if(i14<0.4399506449699402){
   s0+=1829.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i21<1.017121434211731){
 if(i6<0.013846679590642452){
  if(i18<0.0017227320931851864){
   if(i17<1.0096051692962646){
    if(i13<0.9955960512161255){
     s0+=16035.0;
     s1+=526.0;
    } else {
     s0+=75514.0;
     s1+=425.0;
    }
   } else {
    if(i53<2.09808349609375e-05){
     s0+=15.0;
     s1+=373.0;
    } else {
     s0+=89.0;
    }
   }
  } else {
   if(i0<-0.0004642605781555176){
    if(i38<0.1862984001636505){
     s0+=17280.0;
     s1+=495.0;
    } else {
     s0+=54.0;
     s1+=48.0;
    }
   } else {
    if(i42<1.0000250339508057){
     s0+=2332.0;
     s1+=64.0;
    } else {
     s0+=2839.0;
     s1+=5084.0;
    }
   }
  }
 } else {
  if(i9<0.9340300559997559){
   if(i14<0.03981906175613403){
    if(i72<-0.011279523372650146){
     s0+=40.0;
     s1+=65.0;
    } else {
     s0+=854.0;
     s1+=21.0;
    }
   } else {
    if(i77<0.0037259459495544434){
     s0+=38.0;
     s1+=140.0;
    } else {
     s0+=101.0;
     s1+=47.0;
    }
   }
  } else {
   if(i40<1.0502392053604126){
    s0+=53.0;
   } else {
    if(i13<0.9473711848258972){
     s0+=25.0;
     s1+=117.0;
    } else {
     s0+=30.0;
     s1+=2617.0;
    }
   }
  }
 }
} else {
 if(i7<1.0193507671356201){
  if(i18<0.0013992582680657506){
   if(i28<0.0007105979602783918){
    s1+=104.0;
   } else {
    if(i3<0.00018012523651123047){
     s0+=675.0;
     s1+=28.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   }
  } else {
   if(i47<0.999714732170105){
    if(i28<0.015601854771375656){
     s0+=201.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i42<1.0026493072509766){
     s0+=78.0;
     s1+=1248.0;
    } else {
     s0+=341.0;
     s1+=625.0;
    }
   }
  }
 } else {
  if(i1<-3.197797923348844e-05){
   if(i46<-2.8950712476216722e-06){
    if(i51<-6.053051038179547e-06){
     s0+=37.0;
     s1+=6.0;
    } else {
     s0+=41.0;
     s1+=11874.0;
    }
   } else {
    s0+=33.0;
   }
  } else {
   if(i40<1.1686761379241943){
    if(i39<0.12129999697208405){
     s0+=106.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i42<1.0013341903686523){
     s0+=12.0;
    } else {
     s1+=53.0;
    }
   }
  }
 }
}
if(i5<1.0026336908340454){
 if(i1<-6.823796138633043e-05){
  if(i21<1.0186803340911865){
   if(i14<0.15762674808502197){
    if(i25<0.05641042813658714){
     s0+=1830.0;
     s1+=185.0;
    } else {
     s0+=19.0;
     s1+=149.0;
    }
   } else {
    if(i77<0.07376375794410706){
     s0+=5.0;
     s1+=351.0;
    } else {
     s0+=30.0;
     s1+=49.0;
    }
   }
  } else {
   if(i67<1.8333612388232723e-05){
    if(i12<0.0011964017758145928){
     s0+=11.0;
     s1+=732.0;
    } else {
     s0+=23.0;
    }
   } else {
    s0+=19.0;
   }
  }
 } else {
  if(i35<0.0007166675059124827){
   if(i30<1.0776758193969727){
    if(i58<7.963355164974928e-05){
     s0+=13458.0;
     s1+=25.0;
    } else {
     s0+=5010.0;
     s1+=322.0;
    }
   } else {
    if(i41<-1.7727290469338186e-05){
     s0+=64.0;
     s1+=12.0;
    } else {
     s0+=60784.0;
     s1+=154.0;
    }
   }
  } else {
   if(i34<0.0010686947498470545){
    if(i23<1.056142807006836){
     s0+=2479.0;
    } else {
     s0+=1089.0;
     s1+=2862.0;
    }
   } else {
    if(i29<0.0010983350221067667){
     s0+=199.0;
     s1+=232.0;
    } else {
     s0+=25258.0;
     s1+=638.0;
    }
   }
  }
 }
} else {
 if(i6<0.00398296769708395){
  if(i49<-1.195699951495044e-05){
   if(i35<0.0012358434032648802){
    if(i55<1.0037235021591187){
     s0+=13.0;
     s1+=840.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i0<0.005054175853729248){
     s0+=101.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i12<0.00023719502496533096){
    if(i3<3.898143768310547e-05){
     s0+=599.0;
     s1+=47.0;
    } else {
     s1+=142.0;
    }
   } else {
    if(i48<0.9617953300476074){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=3567.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<-0.0022623538970947266){
   if(i24<0.10325247049331665){
    if(i15<1.085599660873413){
     s0+=839.0;
     s1+=107.0;
    } else {
     s0+=118.0;
     s1+=233.0;
    }
   } else {
    if(i6<0.011996319517493248){
     s0+=137.0;
     s1+=98.0;
    } else {
     s0+=40.0;
     s1+=622.0;
    }
   }
  } else {
   if(i34<0.0030228211544454098){
    if(i30<1.1180615425109863){
     s0+=15.0;
     s1+=1680.0;
    } else {
     s0+=325.0;
     s1+=629.0;
    }
   } else {
    if(i11<0.039694756269454956){
     s0+=39.0;
     s1+=93.0;
    } else {
     s0+=58.0;
     s1+=14492.0;
    }
   }
  }
 }
}
if(i6<0.007714689243584871){
 if(i57<-2.8572820156114176e-05){
  if(i4<0.00023937225341796875){
   if(i53<-2.446770668029785e-05){
    s0+=17.0;
   } else {
    if(i47<0.9992756247520447){
     s0+=13.0;
    } else {
     s0+=6.0;
     s1+=1790.0;
    }
   }
  } else {
   s0+=43.0;
  }
 } else {
  if(i3<6.335973739624023e-05){
   if(i7<1.0076289176940918){
    if(i25<0.007063098717480898){
     s0+=68340.0;
     s1+=478.0;
    } else {
     s0+=36320.0;
     s1+=2884.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=211.0;
     s1+=639.0;
    } else {
     s0+=4646.0;
     s1+=389.0;
    }
   }
  } else {
   if(i27<0.0009608876425772905){
    if(i23<1.0610902309417725){
     s0+=85.0;
    } else {
     s1+=809.0;
    }
   } else {
    if(i12<0.00029901901143603027){
     s0+=78.0;
     s1+=505.0;
    } else {
     s0+=1838.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018846988677979){
  if(i60<1.0323761701583862){
   if(i0<-0.00039514899253845215){
    if(i43<1.0721662044525146){
     s0+=3232.0;
     s1+=72.0;
    } else {
     s0+=62.0;
     s1+=41.0;
    }
   } else {
    if(i11<0.03968939185142517){
     s0+=44.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=108.0;
    }
   }
  } else {
   if(i1<-2.8650301828747615e-05){
    if(i20<-0.004677444696426392){
     s0+=177.0;
     s1+=74.0;
    } else {
     s0+=87.0;
     s1+=851.0;
    }
   } else {
    if(i30<1.1188106536865234){
     s0+=5.0;
     s1+=22.0;
    } else {
     s0+=187.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i11<0.06147068738937378){
   if(i8<0.00150984525680542){
    if(i78<-0.03120937943458557){
     s0+=347.0;
     s1+=142.0;
    } else {
     s0+=553.0;
     s1+=37.0;
    }
   } else {
    if(i42<1.0030461549758911){
     s0+=26.0;
     s1+=15.0;
    } else {
     s0+=24.0;
     s1+=154.0;
    }
   }
  } else {
   if(i11<0.1128307580947876){
    if(i0<-0.0004197359085083008){
     s0+=127.0;
     s1+=41.0;
    } else {
     s0+=94.0;
     s1+=933.0;
    }
   } else {
    if(i13<0.9767433404922485){
     s0+=85.0;
     s1+=761.0;
    } else {
     s0+=18.0;
     s1+=13397.0;
    }
   }
  }
 }
}
if(i10<1.0124831199645996){
 if(i14<0.19891658425331116){
  if(i2<1.0031747817993164){
   if(i4<1.8298625946044922e-05){
    if(i29<0.0010668114991858602){
     s0+=30442.0;
     s1+=2750.0;
    } else {
     s0+=76431.0;
     s1+=1004.0;
    }
   } else {
    if(i6<0.004476544912904501){
     s0+=2058.0;
     s1+=52.0;
    } else {
     s0+=1526.0;
     s1+=1143.0;
    }
   }
  } else {
   if(i18<0.0019539985805749893){
    if(i20<0.0012872815132141113){
     s0+=3864.0;
     s1+=103.0;
    } else {
     s0+=163.0;
     s1+=292.0;
    }
   } else {
    if(i29<0.002671506954357028){
     s0+=1040.0;
     s1+=1353.0;
    } else {
     s0+=226.0;
     s1+=1604.0;
    }
   }
  }
 } else {
  if(i80<0.12636765837669373){
   if(i50<0.0017918788362294436){
    if(i16<1.0078290700912476){
     s0+=17.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i36<1.1328749656677246){
     s0+=6.0;
    } else {
     s0+=19.0;
     s1+=2297.0;
    }
   }
  } else {
   if(i29<0.004041154868900776){
    if(i55<1.0014077425003052){
     s0+=201.0;
    } else {
     s0+=70.0;
     s1+=67.0;
    }
   } else {
    if(i6<0.007320511154830456){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=463.0;
    }
   }
  }
 }
} else {
 if(i6<0.002729946281760931){
  if(i0<0.0020338892936706543){
   if(i46<-1.0671686140995007e-05){
    s0+=335.0;
   } else {
    if(i32<0.00023192167282104492){
     s0+=38.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i49<-1.2993534255656414e-05){
    s1+=247.0;
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i12<0.0009522198815830052){
   if(i1<-7.061431824695319e-05){
    if(i30<1.1574809551239014){
     s0+=8.0;
     s1+=1053.0;
    } else {
     s1+=11378.0;
    }
   } else {
    if(i4<1.3887882232666016e-05){
     s0+=16.0;
    } else {
     s0+=12.0;
     s1+=441.0;
    }
   }
  } else {
   s0+=55.0;
  }
 }
}
if(i1<-9.285741543862969e-05){
 if(i11<0.033281952142715454){
  if(i25<0.056046709418296814){
   if(i49<5.013725967728533e-06){
    if(i36<1.109985589981079){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i28<0.007734311278909445){
     s0+=71.0;
     s1+=38.0;
    } else {
     s0+=656.0;
     s1+=6.0;
    }
   }
  } else {
   if(i60<0.8899385929107666){
    if(i18<0.007895873859524727){
     s0+=29.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=19.0;
    }
   } else {
    if(i4<-5.900859832763672e-06){
     s0+=3.0;
    } else {
     s1+=68.0;
    }
   }
  }
 } else {
  if(i12<0.0007070786086842418){
   if(i26<-0.0006127655506134033){
    if(i61<-0.009844303131103516){
     s0+=41.0;
     s1+=12.0;
    } else {
     s0+=27.0;
     s1+=150.0;
    }
   } else {
    if(i53<5.692243576049805e-05){
     s0+=40.0;
     s1+=15552.0;
    } else {
     s0+=58.0;
    }
   }
  } else {
   s0+=189.0;
  }
 }
} else {
 if(i5<1.0022141933441162){
  if(i27<0.0008910034666769207){
   if(i31<1.0514838695526123){
    if(i66<-0.0004725456237792969){
     s0+=3556.0;
     s1+=405.0;
    } else {
     s0+=20789.0;
     s1+=339.0;
    }
   } else {
    if(i4<8.404254913330078e-06){
     s0+=6665.0;
     s1+=1072.0;
    } else {
     s0+=137.0;
     s1+=1598.0;
    }
   }
  } else {
   if(i11<0.22316431999206543){
    if(i33<1.0251494646072388){
     s0+=76159.0;
     s1+=568.0;
    } else {
     s0+=281.0;
     s1+=98.0;
    }
   } else {
    if(i25<0.038527704775333405){
     s0+=138.0;
     s1+=29.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i18<0.0018916204571723938){
   if(i67<-5.417009560915176e-06){
    if(i42<1.0038325786590576){
     s1+=418.0;
    } else {
     s0+=125.0;
     s1+=5.0;
    }
   } else {
    if(i57<4.330901356297545e-05){
     s0+=4259.0;
     s1+=23.0;
    } else {
     s0+=62.0;
     s1+=80.0;
    }
   }
  } else {
   if(i35<0.0013958336785435677){
    if(i0<3.129243850708008e-05){
     s0+=414.0;
     s1+=64.0;
    } else {
     s0+=434.0;
     s1+=3088.0;
    }
   } else {
    if(i62<0.0013213097117841244){
     s0+=1554.0;
     s1+=243.0;
    } else {
     s0+=628.0;
     s1+=537.0;
    }
   }
  }
 }
}
if(i8<0.000571906566619873){
 if(i18<0.0016987810377031565){
  if(i28<0.0005610964726656675){
   if(i19<0.9952577352523804){
    if(i57<4.06030158046633e-05){
     s0+=1050.0;
     s1+=19.0;
    } else {
     s0+=1342.0;
     s1+=457.0;
    }
   } else {
    if(i26<-5.1915645599365234e-05){
     s0+=4182.0;
     s1+=217.0;
    } else {
     s0+=18080.0;
     s1+=69.0;
    }
   }
  } else {
   if(i1<-5.725380833609961e-05){
    if(i41<-1.565572529216297e-05){
     s0+=16.0;
     s1+=71.0;
    } else {
     s0+=283.0;
     s1+=2.0;
    }
   } else {
    if(i1<-5.474768840940669e-05){
     s0+=125.0;
     s1+=8.0;
    } else {
     s0+=63890.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i29<0.0011670974781736732){
   if(i6<0.003998028114438057){
    if(i26<2.1904706954956055e-05){
     s0+=341.0;
     s1+=337.0;
    } else {
     s0+=939.0;
     s1+=17.0;
    }
   } else {
    if(i30<1.0542936325073242){
     s0+=708.0;
    } else {
     s0+=5.0;
     s1+=2058.0;
    }
   }
  } else {
   if(i0<7.677078247070312e-05){
    if(i60<1.121600866317749){
     s0+=18687.0;
     s1+=754.0;
    } else {
     s0+=73.0;
     s1+=307.0;
    }
   } else {
    if(i23<1.1935834884643555){
     s0+=293.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=653.0;
    }
   }
  }
 }
} else {
 if(i6<0.004214993678033352){
  if(i17<1.0107808113098145){
   if(i12<0.00020715358550660312){
    if(i2<1.0033526420593262){
     s0+=207.0;
     s1+=3.0;
    } else {
     s0+=33.0;
     s1+=470.0;
    }
   } else {
    if(i69<0.10374213010072708){
     s0+=4531.0;
     s1+=7.0;
    } else {
     s0+=11.0;
     s1+=11.0;
    }
   }
  } else {
   if(i51<-4.562454250844894e-06){
    if(i40<1.143641710281372){
     s0+=62.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i57<-9.505187335889786e-06){
     s1+=695.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i10<0.9938486218452454){
   if(i11<0.08301892876625061){
    if(i72<-0.004894167184829712){
     s0+=168.0;
     s1+=258.0;
    } else {
     s0+=767.0;
     s1+=73.0;
    }
   } else {
    if(i30<1.2247962951660156){
     s0+=160.0;
     s1+=31.0;
    } else {
     s0+=163.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i12<0.0007141864625737071){
    if(i0<1.1920928955078125e-07){
     s0+=41.0;
     s1+=68.0;
    } else {
     s0+=108.0;
     s1+=16340.0;
    }
   } else {
    s0+=309.0;
   }
  }
 }
}
if(i1<-8.766925020609051e-05){
 if(i61<-0.006746202707290649){
  if(i3<7.528066635131836e-05){
   if(i23<1.5726749897003174){
    if(i15<1.1375598907470703){
     s0+=646.0;
     s1+=15.0;
    } else {
     s0+=43.0;
     s1+=43.0;
    }
   } else {
    if(i13<0.9169313907623291){
     s0+=75.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=64.0;
    }
   }
  } else {
   if(i57<0.0002922086277976632){
    s1+=77.0;
   } else {
    if(i11<0.01755020022392273){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i32<0.0017116665840148926){
   if(i7<1.0144509077072144){
    if(i42<1.000702977180481){
     s0+=170.0;
     s1+=109.0;
    } else {
     s0+=217.0;
     s1+=3174.0;
    }
   } else {
    if(i35<0.0038937628269195557){
     s0+=34.0;
     s1+=12569.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   s0+=59.0;
  }
 }
} else {
 if(i52<0.03311684727668762){
  if(i10<1.0075807571411133){
   if(i27<0.0008888171869330108){
    if(i36<1.05497145652771){
     s0+=19591.0;
     s1+=142.0;
    } else {
     s0+=7520.0;
     s1+=1934.0;
    }
   } else {
    if(i61<-0.0016705095767974854){
     s0+=298.0;
     s1+=56.0;
    } else {
     s0+=60547.0;
     s1+=81.0;
    }
   }
  } else {
   if(i12<0.0002521965652704239){
    if(i41<-1.340951621386921e-05){
     s0+=34.0;
     s1+=1565.0;
    } else {
     s0+=118.0;
     s1+=1.0;
    }
   } else {
    if(i6<0.007026633247733116){
     s0+=2342.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i4<7.927417755126953e-06){
   if(i2<0.9969868659973145){
    if(i60<1.1086821556091309){
     s0+=15859.0;
     s1+=117.0;
    } else {
     s0+=130.0;
     s1+=65.0;
    }
   } else {
    if(i37<1.000077724456787){
     s0+=3068.0;
     s1+=214.0;
    } else {
     s0+=2531.0;
     s1+=643.0;
    }
   }
  } else {
   if(i3<-8.761882781982422e-06){
    if(i45<-0.00022252149938140064){
     s0+=320.0;
     s1+=157.0;
    } else {
     s0+=1617.0;
     s1+=101.0;
    }
   } else {
    if(i25<0.01449594646692276){
     s0+=1098.0;
     s1+=541.0;
    } else {
     s0+=277.0;
     s1+=2480.0;
    }
   }
  }
 }
}
if(i10<1.010016918182373){
 if(i25<0.056185122579336166){
  if(i4<2.3066997528076172e-05){
   if(i43<1.114506483078003){
    if(i35<0.0006912897806614637){
     s0+=76387.0;
     s1+=376.0;
    } else {
     s0+=30188.0;
     s1+=3685.0;
    }
   } else {
    if(i56<0.0454709567129612){
     s0+=1999.0;
     s1+=150.0;
    } else {
     s0+=312.0;
     s1+=299.0;
    }
   }
  } else {
   if(i56<0.04151424393057823){
    if(i6<0.004478255286812782){
     s0+=3542.0;
     s1+=232.0;
    } else {
     s0+=858.0;
     s1+=1146.0;
    }
   } else {
    if(i26<-0.0004583895206451416){
     s0+=416.0;
     s1+=152.0;
    } else {
     s0+=100.0;
     s1+=1102.0;
    }
   }
  }
 } else {
  if(i15<1.041637659072876){
   if(i41<-3.9076949178706855e-05){
    if(i22<0.8765664100646973){
     s0+=26.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i74<-0.02601209282875061){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=610.0;
     s1+=1.0;
    }
   }
  } else {
   if(i40<1.1079127788543701){
    if(i63<-0.0032066027633845806){
     s0+=59.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i61<-0.00859290361404419){
     s0+=53.0;
     s1+=132.0;
    } else {
     s0+=18.0;
     s1+=2534.0;
    }
   }
  }
 }
} else {
 if(i23<1.1843671798706055){
  if(i59<0.0007174420170485973){
   if(i0<0.0003052949905395508){
    s0+=37.0;
   } else {
    if(i23<1.1180615425109863){
     s1+=2127.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i29<0.0011736105661839247){
    if(i18<0.0008319882908836007){
     s0+=10.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i31<1.088707685470581){
     s1+=2.0;
    } else {
     s0+=1474.0;
    }
   }
  }
 } else {
  if(i2<1.002284288406372){
   if(i18<0.002556275576353073){
    s0+=110.0;
   } else {
    s1+=54.0;
   }
  } else {
   if(i27<0.0025562848895788193){
    if(i30<1.4852395057678223){
     s0+=5.0;
     s1+=69.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i18<0.0020832838490605354){
     s0+=85.0;
     s1+=891.0;
    } else {
     s0+=3.0;
     s1+=11393.0;
    }
   }
  }
 }
}
if(i3<6.312131881713867e-05){
 if(i1<-7.059728523017839e-05){
  if(i38<0.054372042417526245){
   if(i24<0.07694807648658752){
    if(i70<0.03402026742696762){
     s0+=1423.0;
     s1+=64.0;
    } else {
     s0+=128.0;
     s1+=174.0;
    }
   } else {
    if(i6<0.0070571983233094215){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=134.0;
    }
   }
  } else {
   if(i40<1.1299827098846436){
    if(i41<-1.616666850168258e-05){
     s0+=152.0;
     s1+=342.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i46<-3.262485506638768e-06){
     s0+=80.0;
     s1+=2010.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i11<0.2347225844860077){
   if(i19<1.0147029161453247){
    if(i25<0.006775497458875179){
     s0+=69773.0;
     s1+=553.0;
    } else {
     s0+=40422.0;
     s1+=3582.0;
    }
   } else {
    if(i1<-3.4028285881504416e-05){
     s0+=499.0;
     s1+=572.0;
    } else {
     s0+=1458.0;
     s1+=142.0;
    }
   }
  } else {
   if(i18<0.0024232047144323587){
    if(i18<0.0015119955642148852){
     s0+=102.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i42<1.004025936126709){
     s0+=6.0;
     s1+=223.0;
    } else {
     s0+=11.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i6<0.0039421734400093555){
  if(i23<1.116804838180542){
   if(i12<0.000571106793358922){
    s1+=740.0;
   } else {
    s0+=95.0;
   }
  } else {
   if(i27<0.0025911794509738684){
    s0+=1786.0;
   } else {
    if(i64<0.00043835272663272917){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i35<0.004016326740384102){
   if(i10<0.976647138595581){
    if(i53<1.3887882232666016e-05){
     s0+=59.0;
     s1+=27.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i51<-6.604180271096993e-06){
     s0+=74.0;
    } else {
     s0+=143.0;
     s1+=15363.0;
    }
   }
  } else {
   if(i34<0.02621193416416645){
    s0+=127.0;
   } else {
    s1+=5.0;
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i18<0.0017849841387942433){
  if(i35<0.0005425301496870816){
   if(i29<0.0019055015873163939){
    if(i43<1.010056734085083){
     s0+=2218.0;
     s1+=34.0;
    } else {
     s0+=64484.0;
     s1+=31.0;
    }
   } else {
    if(i47<1.0007002353668213){
     s0+=2999.0;
    } else {
     s0+=816.0;
     s1+=78.0;
    }
   }
  } else {
   if(i3<-4.571676254272461e-05){
    if(i8<-0.00033861398696899414){
     s0+=10621.0;
    } else {
     s0+=1270.0;
     s1+=23.0;
    }
   } else {
    if(i26<-5.1915645599365234e-05){
     s0+=1570.0;
     s1+=621.0;
    } else {
     s0+=8682.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i11<0.1837097704410553){
   if(i5<1.0003687143325806){
    if(i29<0.0011116763344034553){
     s0+=1243.0;
     s1+=507.0;
    } else {
     s0+=12661.0;
     s1+=121.0;
    }
   } else {
    if(i16<0.995634913444519){
     s0+=4743.0;
     s1+=576.0;
    } else {
     s0+=2865.0;
     s1+=3681.0;
    }
   }
  } else {
   if(i25<0.029662784188985825){
    if(i33<1.0219573974609375){
     s0+=213.0;
     s1+=67.0;
    } else {
     s0+=21.0;
     s1+=96.0;
    }
   } else {
    if(i3<-0.0001589357852935791){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=55.0;
     s1+=1662.0;
    }
   }
  }
 }
} else {
 if(i25<0.008219708688557148){
  if(i44<0.0007578764925710857){
   if(i12<0.0006295693456195295){
    s1+=1424.0;
   } else {
    s0+=82.0;
   }
  } else {
   if(i12<0.0002875700010918081){
    if(i0<0.0014290809631347656){
     s0+=45.0;
     s1+=25.0;
    } else {
     s1+=619.0;
    }
   } else {
    if(i23<1.2712651491165161){
     s0+=1653.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i11<0.10514962673187256){
   if(i51<-6.691961061733309e-06){
    s0+=75.0;
   } else {
    if(i79<0.003559410572052002){
     s0+=131.0;
     s1+=1028.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   }
  } else {
   if(i51<-6.286137704591965e-06){
    s0+=61.0;
   } else {
    if(i7<0.8792477250099182){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=13269.0;
    }
   }
  }
 }
}
if(i9<1.0153834819793701){
 if(i6<0.013962394557893276){
  if(i2<1.003493309020996){
   if(i29<0.0010675336234271526){
    if(i11<0.05427747964859009){
     s0+=29173.0;
     s1+=1537.0;
    } else {
     s0+=2337.0;
     s1+=1662.0;
    }
   } else {
    if(i43<1.1144856214523315){
     s0+=76663.0;
     s1+=933.0;
    } else {
     s0+=1790.0;
     s1+=553.0;
    }
   }
  } else {
   if(i12<0.00023100138059817255){
    if(i0<0.0008094906806945801){
     s0+=438.0;
     s1+=343.0;
    } else {
     s0+=42.0;
     s1+=1841.0;
    }
   } else {
    if(i50<0.0020662203896790743){
     s0+=3885.0;
     s1+=45.0;
    } else {
     s0+=65.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i66<-0.012296080589294434){
   if(i15<1.0900241136550903){
    if(i60<0.8475048542022705){
     s0+=13.0;
     s1+=33.0;
    } else {
     s0+=857.0;
     s1+=34.0;
    }
   } else {
    if(i24<0.0016644299030303955){
     s0+=85.0;
     s1+=20.0;
    } else {
     s0+=42.0;
     s1+=233.0;
    }
   }
  } else {
   if(i14<0.060426265001297){
    if(i13<0.9475544691085815){
     s0+=50.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=144.0;
    }
   } else {
    if(i23<1.2094390392303467){
     s0+=2.0;
    } else {
     s0+=19.0;
     s1+=2857.0;
    }
   }
  }
 }
} else {
 if(i17<0.9986667037010193){
  if(i37<0.9995968341827393){
   if(i28<0.01063932292163372){
    s0+=212.0;
   } else {
    s1+=28.0;
   }
  } else {
   if(i6<0.002947798930108547){
    if(i30<1.202282190322876){
     s1+=15.0;
    } else {
     s0+=81.0;
    }
   } else {
    s1+=200.0;
   }
  }
 } else {
  if(i9<1.021496295928955){
   if(i12<0.0007118466310203075){
    if(i36<1.7041046619415283){
     s0+=155.0;
     s1+=1808.0;
    } else {
     s0+=19.0;
    }
   } else {
    s0+=343.0;
   }
  } else {
   if(i41<-1.0311971891496796e-05){
    if(i1<-1.7654891053098254e-05){
     s0+=29.0;
     s1+=11844.0;
    } else {
     s0+=17.0;
     s1+=6.0;
    }
   } else {
    s0+=62.0;
   }
  }
 }
}
if(i4<2.2113323211669922e-05){
 if(i18<0.0017323429929092526){
  if(i21<0.9951577186584473){
   if(i1<-1.7584694433026016e-05){
    if(i23<1.116688847541809){
     s0+=165.0;
     s1+=205.0;
    } else {
     s0+=937.0;
     s1+=59.0;
    }
   } else {
    if(i29<0.00026161869755014777){
     s0+=1334.0;
     s1+=220.0;
    } else {
     s0+=14941.0;
     s1+=59.0;
    }
   }
  } else {
   if(i41<-1.8713642930379137e-05){
    if(i50<0.0017597919795662165){
     s0+=12.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i36<1.0776758193969727){
     s0+=18611.0;
     s1+=304.0;
    } else {
     s0+=53266.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i27<0.0009228305425494909){
   if(i40<1.0382080078125){
    if(i47<0.9997259378433228){
     s0+=1584.0;
     s1+=72.0;
    } else {
     s0+=46.0;
     s1+=268.0;
    }
   } else {
    if(i47<0.9995511770248413){
     s0+=190.0;
    } else {
     s0+=35.0;
     s1+=2118.0;
    }
   }
  } else {
   if(i22<1.024388074874878){
    if(i24<0.1997363567352295){
     s0+=18276.0;
     s1+=890.0;
    } else {
     s0+=157.0;
     s1+=453.0;
    }
   } else {
    if(i6<0.0034587224945425987){
     s0+=78.0;
    } else {
     s0+=9.0;
     s1+=487.0;
    }
   }
  }
 }
} else {
 if(i25<0.008250832557678223){
  if(i0<0.0017902851104736328){
   if(i29<0.0010266464669257402){
    if(i2<1.0052294731140137){
     s0+=1286.0;
     s1+=112.0;
    } else {
     s0+=39.0;
     s1+=593.0;
    }
   } else {
    if(i28<0.003048257203772664){
     s0+=2945.0;
     s1+=14.0;
    } else {
     s0+=150.0;
     s1+=87.0;
    }
   }
  } else {
   if(i51<-5.645782948704436e-06){
    s0+=309.0;
   } else {
    if(i68<0.578690230846405){
     s1+=1415.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i57<0.00029471240122802556){
   if(i0<2.2113323211669922e-05){
    if(i69<0.2637377381324768){
     s0+=527.0;
     s1+=105.0;
    } else {
     s0+=24.0;
     s1+=119.0;
    }
   } else {
    if(i30<1.1962356567382812){
     s0+=443.0;
     s1+=1446.0;
    } else {
     s0+=343.0;
     s1+=14919.0;
    }
   }
  } else {
   if(i76<0.08986490964889526){
    if(i44<0.015795553103089333){
     s0+=598.0;
     s1+=179.0;
    } else {
     s0+=18.0;
     s1+=89.0;
    }
   } else {
    if(i18<0.005547988228499889){
     s0+=8.0;
    } else {
     s0+=10.0;
     s1+=156.0;
    }
   }
  }
 }
}
if(i13<1.0148073434829712){
 if(i8<0.0005151629447937012){
  if(i38<0.2033551037311554){
   if(i39<0.012015031650662422){
    if(i61<-0.000757068395614624){
     s0+=1003.0;
     s1+=148.0;
    } else {
     s0+=66290.0;
     s1+=523.0;
    }
   } else {
    if(i3<-3.463029861450195e-05){
     s0+=29722.0;
     s1+=623.0;
    } else {
     s0+=11266.0;
     s1+=2658.0;
    }
   }
  } else {
   if(i44<0.002152096014469862){
    if(i41<-1.661968963162508e-05){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=62.0;
     s1+=2.0;
    }
   } else {
    if(i6<0.004918111488223076){
     s0+=87.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i39<0.02884308621287346){
   if(i44<0.0007730085635557771){
    if(i28<0.0001994979102164507){
     s0+=1694.0;
    } else {
     s0+=295.0;
     s1+=1451.0;
    }
   } else {
    if(i30<1.1934996843338013){
     s0+=3298.0;
     s1+=47.0;
    } else {
     s0+=239.0;
     s1+=248.0;
    }
   }
  } else {
   if(i0<-7.921457290649414e-05){
    if(i11<0.13571837544441223){
     s0+=800.0;
     s1+=156.0;
    } else {
     s0+=75.0;
     s1+=203.0;
    }
   } else {
    if(i74<-0.014535188674926758){
     s0+=117.0;
     s1+=284.0;
    } else {
     s0+=413.0;
     s1+=4308.0;
    }
   }
  }
 }
} else {
 if(i5<1.0013813972473145){
  if(i46<-3.4006416171905585e-06){
   if(i40<1.142665147781372){
    if(i58<-0.00019577168859541416){
     s1+=10.0;
    } else {
     s0+=56.0;
    }
   } else {
    s1+=171.0;
   }
  } else {
   if(i49<1.4788436601520516e-05){
    s0+=253.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i12<0.0007059713825583458){
   if(i46<-3.5569250940170605e-06){
    if(i2<1.0024001598358154){
     s0+=160.0;
     s1+=49.0;
    } else {
     s0+=113.0;
     s1+=13241.0;
    }
   } else {
    s0+=19.0;
   }
  } else {
   s0+=364.0;
  }
 }
}
if(i5<1.0026252269744873){
 if(i21<1.0163769721984863){
  if(i25<0.08877816051244736){
   if(i32<8.219480514526367e-05){
    if(i11<0.23920628428459167){
     s0+=77384.0;
     s1+=878.0;
    } else {
     s0+=10.0;
     s1+=59.0;
    }
   } else {
    if(i28<0.001011179992929101){
     s0+=6429.0;
     s1+=2004.0;
    } else {
     s0+=25631.0;
     s1+=1283.0;
    }
   }
  } else {
   if(i49<7.889707922004163e-05){
    if(i44<0.0019513512961566448){
     s0+=1.0;
    } else {
     s1+=272.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i31<1.0905578136444092){
   if(i4<-3.5762786865234375e-07){
    s0+=3.0;
   } else {
    s1+=583.0;
   }
  } else {
   if(i28<0.012724123895168304){
    if(i18<0.001599396113306284){
     s0+=614.0;
     s1+=17.0;
    } else {
     s0+=263.0;
     s1+=241.0;
    }
   } else {
    s1+=363.0;
   }
  }
 }
} else {
 if(i12<0.0007037727627903223){
  if(i15<1.104677438735962){
   if(i23<1.1229777336120605){
    if(i36<1.058152437210083){
     s0+=359.0;
    } else {
     s1+=2305.0;
    }
   } else {
    if(i4<5.525350570678711e-05){
     s0+=2385.0;
     s1+=699.0;
    } else {
     s0+=244.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i31<1.170027494430542){
    if(i28<0.0019358457066118717){
     s0+=423.0;
     s1+=54.0;
    } else {
     s0+=232.0;
     s1+=886.0;
    }
   } else {
    if(i14<0.023539870977401733){
     s0+=63.0;
     s1+=97.0;
    } else {
     s0+=108.0;
     s1+=13522.0;
    }
   }
  }
 } else {
  if(i18<0.007720361463725567){
   s0+=2258.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i19<1.016731858253479){
 if(i6<0.014100218191742897){
  if(i57<-2.4683939045644365e-05){
   if(i47<0.9998338222503662){
    if(i25<0.01785941794514656){
     s0+=54.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i53<5.3822994232177734e-05){
     s0+=23.0;
     s1+=1020.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i27<0.0009075460257008672){
    if(i13<1.0073002576828003){
     s0+=31706.0;
     s1+=2778.0;
    } else {
     s0+=302.0;
     s1+=1068.0;
    }
   } else {
    if(i0<0.0014273524284362793){
     s0+=80941.0;
     s1+=1630.0;
    } else {
     s0+=438.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i10<0.9710646867752075){
   if(i36<1.467585563659668){
    if(i66<-0.012166023254394531){
     s0+=808.0;
     s1+=21.0;
    } else {
     s0+=12.0;
     s1+=61.0;
    }
   } else {
    if(i13<0.9155954122543335){
     s0+=163.0;
     s1+=55.0;
    } else {
     s0+=23.0;
     s1+=146.0;
    }
   }
  } else {
   if(i15<1.0325958728790283){
    if(i53<8.463859558105469e-06){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i24<0.015933603048324585){
     s0+=28.0;
     s1+=46.0;
    } else {
     s0+=21.0;
     s1+=2553.0;
    }
   }
  }
 }
} else {
 if(i41<-1.4450166418100707e-05){
  if(i6<0.004952743649482727){
   if(i0<0.0021556615829467773){
    if(i31<1.0839810371398926){
     s1+=213.0;
    } else {
     s0+=917.0;
     s1+=74.0;
    }
   } else {
    if(i67<-2.595020077933441e-06){
     s1+=473.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  } else {
   if(i42<0.9966491460800171){
    s0+=28.0;
   } else {
    if(i6<0.007313533686101437){
     s0+=105.0;
     s1+=1078.0;
    } else {
     s0+=19.0;
     s1+=12587.0;
    }
   }
  }
 } else {
  if(i14<0.20895329117774963){
   if(i35<0.0010470356792211533){
    if(i55<1.0016374588012695){
     s0+=583.0;
    } else {
     s0+=180.0;
     s1+=33.0;
    }
   } else {
    if(i6<0.005937687121331692){
     s0+=61.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=67.0;
    }
   }
  } else {
   if(i37<1.0015983581542969){
    if(i43<1.1041715145111084){
     s1+=1.0;
    } else {
     s0+=38.0;
    }
   } else {
    s1+=50.0;
   }
  }
 }
}
if(i1<-0.00010635890794219449){
 if(i13<0.9441101551055908){
  if(i36<1.5148605108261108){
   if(i60<1.0529460906982422){
    if(i47<1.0025391578674316){
     s0+=333.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i66<-0.01579231023788452){
    if(i15<1.031775712966919){
     s0+=64.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    s1+=44.0;
   }
  }
 } else {
  if(i12<0.0007076200563460588){
   if(i53<5.6624412536621094e-05){
    if(i43<1.0218262672424316){
     s0+=64.0;
     s1+=104.0;
    } else {
     s0+=36.0;
     s1+=14721.0;
    }
   } else {
    s0+=83.0;
   }
  } else {
   s0+=149.0;
  }
 }
} else {
 if(i21<1.016284704208374){
  if(i18<0.0016999136423692107){
   if(i3<0.00011563301086425781){
    if(i40<1.0466740131378174){
     s0+=31799.0;
     s1+=740.0;
    } else {
     s0+=59052.0;
     s1+=186.0;
    }
   } else {
    if(i28<0.0008841750677675009){
     s1+=220.0;
    } else {
     s0+=19.0;
     s1+=8.0;
    }
   }
  } else {
   if(i34<0.00105525110848248){
    if(i36<1.0510576963424683){
     s0+=2125.0;
     s1+=23.0;
    } else {
     s0+=237.0;
     s1+=3089.0;
    }
   } else {
    if(i37<1.0084421634674072){
     s0+=20131.0;
     s1+=1625.0;
    } else {
     s0+=655.0;
     s1+=720.0;
    }
   }
  }
 } else {
  if(i50<0.0010252274805679917){
   if(i27<0.0010836380533874035){
    s1+=1168.0;
   } else {
    s0+=19.0;
   }
  } else {
   if(i34<0.0023256191052496433){
    if(i31<1.0905578136444092){
     s0+=4.0;
     s1+=179.0;
    } else {
     s0+=1101.0;
     s1+=40.0;
    }
   } else {
    if(i0<0.00023239850997924805){
     s0+=475.0;
     s1+=213.0;
    } else {
     s0+=136.0;
     s1+=1246.0;
    }
   }
  }
 }
}
if(i2<1.0038647651672363){
 if(i21<1.0161552429199219){
  if(i1<-0.00010808712977450341){
   if(i63<-0.00046067903167568147){
    if(i43<0.9897862672805786){
     s0+=56.0;
     s1+=11.0;
    } else {
     s0+=36.0;
     s1+=786.0;
    }
   } else {
    if(i60<1.0522339344024658){
     s0+=375.0;
     s1+=57.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   }
  } else {
   if(i18<0.0017199964495375752){
    if(i58<0.000186706252861768){
     s0+=75718.0;
     s1+=322.0;
    } else {
     s0+=13204.0;
     s1+=606.0;
    }
   } else {
    if(i3<-2.9265880584716797e-05){
     s0+=17861.0;
     s1+=650.0;
    } else {
     s0+=3788.0;
     s1+=2910.0;
    }
   }
  }
 } else {
  if(i25<0.024170611053705215){
   if(i30<1.0955736637115479){
    if(i18<0.0011306972010061145){
     s0+=5.0;
    } else {
     s1+=113.0;
    }
   } else {
    if(i40<1.0722013711929321){
     s1+=26.0;
    } else {
     s0+=828.0;
     s1+=109.0;
    }
   }
  } else {
   if(i10<0.9984437823295593){
    if(i39<0.1205088347196579){
     s0+=177.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=152.0;
    }
   } else {
    if(i23<1.6811659336090088){
     s0+=50.0;
     s1+=791.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
} else {
 if(i45<-0.0002511416096240282){
  if(i11<0.07407575845718384){
   if(i12<0.0002873773337341845){
    if(i22<0.8855029344558716){
     s0+=7.0;
    } else {
     s0+=9.0;
     s1+=223.0;
    }
   } else {
    if(i79<-0.004300564527511597){
     s0+=6.0;
     s1+=50.0;
    } else {
     s0+=149.0;
     s1+=4.0;
    }
   }
  } else {
   if(i29<0.002232029102742672){
    if(i44<0.0009524228516966105){
     s0+=25.0;
     s1+=958.0;
    } else {
     s0+=193.0;
     s1+=27.0;
    }
   } else {
    if(i11<0.09713518619537354){
     s0+=22.0;
     s1+=184.0;
    } else {
     s0+=16.0;
     s1+=12895.0;
    }
   }
  }
 } else {
  if(i20<0.0020006895065307617){
   if(i61<-0.0008916854858398438){
    if(i3<6.181001663208008e-05){
     s0+=50.0;
     s1+=81.0;
    } else {
     s0+=39.0;
     s1+=625.0;
    }
   } else {
    if(i23<1.116804838180542){
     s0+=658.0;
     s1+=1031.0;
    } else {
     s0+=3123.0;
     s1+=160.0;
    }
   }
  } else {
   if(i2<1.0074374675750732){
    if(i15<1.0811712741851807){
     s1+=5.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i5<1.0032918453216553){
     s0+=1.0;
    } else {
     s1+=1572.0;
    }
   }
  }
 }
}
if(i3<6.335973739624023e-05){
 if(i1<-8.288207754958421e-05){
  if(i63<-0.0007650390616618097){
   if(i60<0.9264990091323853){
    if(i15<1.222273588180542){
     s0+=67.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=16.0;
    }
   } else {
    if(i47<0.9974367618560791){
     s0+=9.0;
    } else {
     s0+=60.0;
     s1+=1875.0;
    }
   }
  } else {
   if(i15<1.0804370641708374){
    if(i10<0.9760322570800781){
     s0+=750.0;
     s1+=27.0;
    } else {
     s0+=83.0;
     s1+=34.0;
    }
   } else {
    if(i2<1.0002779960632324){
     s0+=90.0;
     s1+=56.0;
    } else {
     s0+=51.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i6<0.0037409067153930664){
   if(i27<0.0005787297268398106){
    if(i19<0.9950935244560242){
     s0+=4422.0;
     s1+=557.0;
    } else {
     s0+=24325.0;
     s1+=371.0;
    }
   } else {
    if(i1<-5.784298264188692e-05){
     s0+=479.0;
     s1+=72.0;
    } else {
     s0+=61122.0;
     s1+=158.0;
    }
   }
  } else {
   if(i2<0.9989671111106873){
    if(i2<0.9976609945297241){
     s0+=19507.0;
     s1+=354.0;
    } else {
     s0+=1342.0;
     s1+=347.0;
    }
   } else {
    if(i27<0.0010077625047415495){
     s0+=363.0;
     s1+=2508.0;
    } else {
     s0+=1556.0;
     s1+=1345.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007046828395687044){
  if(i51<-6.456466508097947e-06){
   s0+=88.0;
  } else {
   if(i2<1.0054028034210205){
    if(i25<0.006090848706662655){
     s0+=66.0;
     s1+=29.0;
    } else {
     s0+=92.0;
     s1+=648.0;
    }
   } else {
    if(i31<1.1599657535552979){
     s0+=125.0;
     s1+=2526.0;
    } else {
     s0+=39.0;
     s1+=13275.0;
    }
   }
  }
 } else {
  if(i44<0.004344569519162178){
   s0+=1804.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i61<-0.007430851459503174){
  if(i11<0.07418400049209595){
   if(i35<0.0031262014526873827){
    if(i79<-0.028103917837142944){
     s0+=18.0;
     s1+=20.0;
    } else {
     s0+=562.0;
     s1+=12.0;
    }
   } else {
    if(i16<0.9911235570907593){
     s0+=14.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   }
  } else {
   if(i52<0.29718148708343506){
    if(i9<0.9218629598617554){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   } else {
    s1+=79.0;
   }
  }
 } else {
  if(i71<5.794467142550275e-06){
   if(i46<-5.998693814035505e-05){
    s0+=68.0;
   } else {
    if(i12<0.0017059608362615108){
     s0+=127.0;
     s1+=15144.0;
    } else {
     s0+=70.0;
    }
   }
  } else {
   s0+=132.0;
  }
 }
} else {
 if(i37<1.0026733875274658){
  if(i10<1.007741093635559){
   if(i35<0.0007080329232849181){
    if(i5<1.003026008605957){
     s0+=77494.0;
     s1+=436.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   } else {
    if(i12<0.00021511281374841928){
     s0+=4456.0;
     s1+=2359.0;
    } else {
     s0+=21854.0;
     s1+=854.0;
    }
   }
  } else {
   if(i23<1.1180615425109863){
    s1+=543.0;
   } else {
    if(i6<0.0064354753121733665){
     s0+=586.0;
     s1+=57.0;
    } else {
     s0+=5.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i8<0.0005268454551696777){
   if(i60<1.1086403131484985){
    if(i11<0.18405473232269287){
     s0+=6185.0;
     s1+=371.0;
    } else {
     s0+=61.0;
     s1+=71.0;
    }
   } else {
    if(i31<1.1868445873260498){
     s0+=63.0;
     s1+=28.0;
    } else {
     s0+=5.0;
     s1+=117.0;
    }
   }
  } else {
   if(i12<0.0003496355493552983){
    if(i20<-0.0012091994285583496){
     s0+=720.0;
     s1+=390.0;
    } else {
     s0+=491.0;
     s1+=3206.0;
    }
   } else {
    if(i18<0.0058036381378769875){
     s0+=3490.0;
     s1+=25.0;
    } else {
     s0+=262.0;
     s1+=279.0;
    }
   }
  }
 }
}
if(i5<1.0026328563690186){
 if(i19<1.0181355476379395){
  if(i6<0.003607318736612797){
   if(i35<0.000574491685256362){
    if(i23<1.1979892253875732){
     s0+=61040.0;
     s1+=89.0;
    } else {
     s0+=4568.0;
     s1+=70.0;
    }
   } else {
    if(i0<-0.0007858872413635254){
     s0+=10888.0;
     s1+=21.0;
    } else {
     s0+=10271.0;
     s1+=796.0;
    }
   }
  } else {
   if(i34<0.0010907903779298067){
    if(i41<-5.007845174986869e-06){
     s0+=531.0;
     s1+=2229.0;
    } else {
     s0+=2184.0;
     s1+=4.0;
    }
   } else {
    if(i6<0.018634874373674393){
     s0+=20201.0;
     s1+=804.0;
    } else {
     s0+=127.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i6<0.005076962057501078){
   if(i17<1.0007562637329102){
    if(i10<0.9920660257339478){
     s0+=24.0;
     s1+=9.0;
    } else {
     s0+=386.0;
     s1+=7.0;
    }
   } else {
    if(i27<0.001749879913404584){
     s0+=165.0;
     s1+=4.0;
    } else {
     s0+=57.0;
     s1+=42.0;
    }
   }
  } else {
   if(i67<1.7756074157659896e-05){
    if(i47<0.9982213973999023){
     s0+=16.0;
    } else {
     s0+=20.0;
     s1+=1183.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
} else {
 if(i6<0.00401469599455595){
  if(i27<0.0010782342869788408){
   if(i30<1.0609431266784668){
    s0+=729.0;
   } else {
    s1+=739.0;
   }
  } else {
   if(i1<-0.00010716855467762798){
    if(i31<1.1395916938781738){
     s0+=74.0;
    } else {
     s1+=284.0;
    }
   } else {
    if(i9<1.0278698205947876){
     s0+=3616.0;
     s1+=42.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i26<-0.0003319084644317627){
   if(i2<1.0009740591049194){
    if(i25<0.05854896083474159){
     s0+=808.0;
     s1+=216.0;
    } else {
     s0+=55.0;
     s1+=138.0;
    }
   } else {
    if(i15<1.0745704174041748){
     s0+=193.0;
     s1+=110.0;
    } else {
     s0+=125.0;
     s1+=590.0;
    }
   }
  } else {
   if(i0<0.0009862780570983887){
    if(i56<0.025413837283849716){
     s0+=282.0;
     s1+=406.0;
    } else {
     s0+=68.0;
     s1+=1508.0;
    }
   } else {
    if(i51<-6.672814834018936e-06){
     s0+=35.0;
    } else {
     s0+=43.0;
     s1+=14669.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i6<0.007676013745367527){
  if(i13<1.0072479248046875){
   if(i23<1.1162974834442139){
    if(i32<6.562471389770508e-05){
     s0+=22978.0;
     s1+=622.0;
    } else {
     s0+=6561.0;
     s1+=1854.0;
    }
   } else {
    if(i68<0.21153293550014496){
     s0+=72034.0;
     s1+=484.0;
    } else {
     s0+=1936.0;
     s1+=216.0;
    }
   }
  } else {
   if(i34<0.0009400409180670977){
    if(i30<1.0534145832061768){
     s0+=118.0;
    } else {
     s0+=11.0;
     s1+=434.0;
    }
   } else {
    if(i29<0.002053095493465662){
     s0+=2224.0;
     s1+=29.0;
    } else {
     s0+=1152.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i24<0.08383834362030029){
   if(i70<0.0459098257124424){
    if(i29<0.0013170379679650068){
     s0+=13.0;
     s1+=78.0;
    } else {
     s0+=4227.0;
     s1+=181.0;
    }
   } else {
    if(i2<0.9981210231781006){
     s0+=72.0;
     s1+=57.0;
    } else {
     s0+=13.0;
     s1+=116.0;
    }
   }
  } else {
   if(i15<1.113352656364441){
    if(i29<0.0013383885379880667){
     s0+=14.0;
     s1+=386.0;
    } else {
     s0+=650.0;
     s1+=339.0;
    }
   } else {
    if(i34<0.0024809844326227903){
     s0+=4.0;
    } else {
     s0+=21.0;
     s1+=1701.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007036929600872099){
  if(i34<0.0022520367056131363){
   if(i47<1.0009739398956299){
    if(i23<1.116804838180542){
     s0+=21.0;
     s1+=2652.0;
    } else {
     s0+=152.0;
    }
   } else {
    if(i25<0.015295097604393959){
     s0+=1396.0;
     s1+=4.0;
    } else {
     s1+=62.0;
    }
   }
  } else {
   if(i15<1.0629973411560059){
    if(i2<1.0065319538116455){
     s0+=71.0;
     s1+=31.0;
    } else {
     s0+=1.0;
     s1+=109.0;
    }
   } else {
    if(i0<0.0009595751762390137){
     s0+=97.0;
     s1+=953.0;
    } else {
     s0+=47.0;
     s1+=13922.0;
    }
   }
  }
 } else {
  s0+=2651.0;
 }
}
if(i10<1.0097546577453613){
 if(i5<1.0024408102035522){
  if(i11<0.22342759370803833){
   if(i8<0.00021642446517944336){
    if(i40<1.0678277015686035){
     s0+=42691.0;
     s1+=1650.0;
    } else {
     s0+=56285.0;
     s1+=659.0;
    }
   } else {
    if(i56<0.027759678661823273){
     s0+=9302.0;
     s1+=1099.0;
    } else {
     s0+=947.0;
     s1+=903.0;
    }
   }
  } else {
   if(i39<0.07659976929426193){
    if(i57<0.00015419961709994823){
     s0+=99.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i46<-2.51510846283054e-06){
     s0+=2.0;
     s1+=410.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i39<0.0410718210041523){
   if(i32<0.0004824995994567871){
    if(i16<1.005864143371582){
     s0+=612.0;
     s1+=239.0;
    } else {
     s0+=98.0;
     s1+=389.0;
    }
   } else {
    if(i20<0.0015265345573425293){
     s0+=3148.0;
     s1+=174.0;
    } else {
     s0+=14.0;
     s1+=92.0;
    }
   }
  } else {
   if(i17<1.0040630102157593){
    if(i11<0.09738582372665405){
     s0+=649.0;
     s1+=167.0;
    } else {
     s0+=171.0;
     s1+=1004.0;
    }
   } else {
    if(i2<1.0030746459960938){
     s0+=287.0;
     s1+=387.0;
    } else {
     s0+=161.0;
     s1+=2435.0;
    }
   }
  }
 }
} else {
 if(i6<0.003724998328834772){
  if(i28<0.0007340196170844138){
   s1+=497.0;
  } else {
   if(i16<1.015680193901062){
    if(i20<0.0006195306777954102){
     s0+=98.0;
     s1+=29.0;
    } else {
     s0+=1493.0;
     s1+=1.0;
    }
   } else {
    if(i2<1.0084134340286255){
     s0+=1.0;
    } else {
     s1+=217.0;
    }
   }
  }
 } else {
  if(i71<5.7961542552220635e-06){
   if(i47<0.9983524084091187){
    s0+=105.0;
   } else {
    if(i53<2.9742717742919922e-05){
     s0+=111.0;
     s1+=14139.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   }
  } else {
   s0+=30.0;
  }
 }
}
if(i7<1.0135858058929443){
 if(i8<0.0005384087562561035){
  if(i32<8.660554885864258e-05){
   if(i11<0.23173606395721436){
    if(i30<1.0905578136444092){
     s0+=21433.0;
     s1+=739.0;
    } else {
     s0+=57683.0;
     s1+=136.0;
    }
   } else {
    if(i25<0.037079110741615295){
     s0+=73.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=154.0;
    }
   }
  } else {
   if(i29<0.0010524073150008917){
    if(i18<0.0013048930559307337){
     s0+=2824.0;
     s1+=18.0;
    } else {
     s0+=1117.0;
     s1+=2002.0;
    }
   } else {
    if(i24<0.23505017161369324){
     s0+=25868.0;
     s1+=965.0;
    } else {
     s0+=17.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i56<0.04020781069993973){
   if(i0<0.0022053122520446777){
    if(i28<0.00020203358144499362){
     s0+=1625.0;
    } else {
     s0+=4185.0;
     s1+=1768.0;
    }
   } else {
    if(i51<-7.0957075877231546e-06){
     s0+=31.0;
    } else {
     s1+=487.0;
    }
   }
  } else {
   if(i15<1.052932858467102){
    if(i0<0.0008803009986877441){
     s0+=318.0;
     s1+=29.0;
    } else {
     s0+=6.0;
     s1+=38.0;
    }
   } else {
    if(i16<0.9895139932632446){
     s0+=94.0;
     s1+=222.0;
    } else {
     s0+=158.0;
     s1+=2871.0;
    }
   }
  }
 }
} else {
 if(i46<-3.4123584100598237e-06){
  if(i10<1.0157337188720703){
   if(i6<0.006386946886777878){
    if(i12<0.00021242263028398156){
     s0+=113.0;
     s1+=524.0;
    } else {
     s0+=795.0;
     s1+=37.0;
    }
   } else {
    if(i71<6.060800842533354e-06){
     s0+=18.0;
     s1+=2700.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i27<0.0019146152772009373){
    if(i51<-4.466562131710816e-06){
     s0+=20.0;
    } else {
     s1+=837.0;
    }
   } else {
    s1+=10527.0;
   }
  }
 } else {
  if(i18<0.00256165349856019){
   s0+=255.0;
  } else {
   s1+=10.0;
  }
 }
}
if(i2<1.003735065460205){
 if(i54<1.0291500091552734){
  if(i18<0.001728216651827097){
   if(i9<0.9958532452583313){
    if(i18<0.001245179446414113){
     s0+=13809.0;
     s1+=185.0;
    } else {
     s0+=3105.0;
     s1+=367.0;
    }
   } else {
    if(i28<0.001849620952270925){
     s0+=66499.0;
     s1+=258.0;
    } else {
     s0+=5683.0;
     s1+=133.0;
    }
   }
  } else {
   if(i2<0.9982824325561523){
    if(i35<0.0030397032387554646){
     s0+=17100.0;
     s1+=585.0;
    } else {
     s0+=240.0;
     s1+=171.0;
    }
   } else {
    if(i47<0.9995439052581787){
     s0+=1885.0;
     s1+=29.0;
    } else {
     s0+=2744.0;
     s1+=3630.0;
    }
   }
  }
 } else {
  if(i2<1.000822901725769){
   if(i31<1.1804778575897217){
    if(i14<0.26258671283721924){
     s0+=497.0;
     s1+=29.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i24<0.26662251353263855){
     s0+=211.0;
     s1+=58.0;
    } else {
     s0+=41.0;
     s1+=198.0;
    }
   }
  } else {
   if(i57<1.5163271200435702e-05){
    if(i29<0.0010803663171827793){
     s1+=16.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i42<1.0027108192443848){
     s0+=11.0;
     s1+=641.0;
    } else {
     s0+=148.0;
     s1+=134.0;
    }
   }
  }
 }
} else {
 if(i30<1.1731728315353394){
  if(i53<9.357929229736328e-06){
   if(i59<0.0007056946051307023){
    if(i35<0.0011493449565023184){
     s0+=20.0;
     s1+=2366.0;
    } else {
     s0+=97.0;
    }
   } else {
    if(i27<0.0009640151401981711){
     s1+=141.0;
    } else {
     s0+=490.0;
     s1+=4.0;
    }
   }
  } else {
   if(i26<0.0002995133399963379){
    if(i57<-2.802634844556451e-05){
     s0+=35.0;
     s1+=64.0;
    } else {
     s0+=3516.0;
     s1+=62.0;
    }
   } else {
    if(i59<0.0005529706249944866){
     s0+=3.0;
     s1+=88.0;
    } else {
     s0+=82.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i44<0.00020895841589663178){
   if(i17<1.0095083713531494){
    s0+=124.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i6<0.003378134686499834){
    if(i23<1.4558475017547607){
     s1+=196.0;
    } else {
     s0+=75.0;
     s1+=4.0;
    }
   } else {
    if(i40<1.0789777040481567){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=142.0;
     s1+=14774.0;
    }
   }
  }
 }
}
if(i0<0.0009607076644897461){
 if(i15<1.1403480768203735){
  if(i7<1.0114514827728271){
   if(i44<0.0020059316884726286){
    if(i23<1.1162974834442139){
     s0+=29884.0;
     s1+=3130.0;
    } else {
     s0+=72943.0;
     s1+=428.0;
    }
   } else {
    if(i11<0.1847599446773529){
     s0+=9139.0;
     s1+=1096.0;
    } else {
     s0+=144.0;
     s1+=358.0;
    }
   }
  } else {
   if(i35<0.0007193911005742848){
    if(i1<-6.440548168029636e-05){
     s0+=25.0;
     s1+=39.0;
    } else {
     s0+=653.0;
     s1+=11.0;
    }
   } else {
    if(i30<1.116804838180542){
     s0+=1.0;
     s1+=519.0;
    } else {
     s0+=454.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i41<-1.604739918548148e-05){
   if(i15<1.1693928241729736){
    if(i6<0.00638259993866086){
     s0+=99.0;
     s1+=28.0;
    } else {
     s0+=61.0;
     s1+=362.0;
    }
   } else {
    if(i14<0.0003725588321685791){
     s0+=42.0;
     s1+=10.0;
    } else {
     s0+=8.0;
     s1+=1565.0;
    }
   }
  } else {
   if(i35<0.0011111286003142595){
    s0+=928.0;
   } else {
    if(i26<-0.00031045079231262207){
     s0+=32.0;
     s1+=1.0;
    } else {
     s1+=126.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i30<1.116804838180542){
   if(i30<1.0545791387557983){
    s0+=58.0;
   } else {
    if(i51<-4.10341817769222e-06){
     s0+=86.0;
    } else {
     s0+=4.0;
     s1+=2408.0;
    }
   }
  } else {
   if(i63<-0.001267145504243672){
    if(i34<0.002274569822475314){
     s0+=37.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i39<0.033646367490291595){
     s0+=1766.0;
    } else {
     s0+=4.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i20<-0.0035706162452697754){
   if(i47<1.0005866289138794){
    if(i56<0.08307215571403503){
     s0+=44.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i25<0.16573160886764526){
     s0+=1.0;
     s1+=102.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i11<0.07201570272445679){
    if(i15<1.023998737335205){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=25.0;
     s1+=263.0;
    }
   } else {
    if(i24<0.10565221309661865){
     s0+=12.0;
     s1+=329.0;
    } else {
     s0+=4.0;
     s1+=13229.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i4<1.4722347259521484e-05){
  if(i18<0.0015695479232817888){
   if(i58<0.0001653643703320995){
    if(i23<1.0776758193969727){
     s0+=11488.0;
     s1+=152.0;
    } else {
     s0+=58606.0;
     s1+=86.0;
    }
   } else {
    if(i1<-5.747353861806914e-05){
     s0+=7.0;
     s1+=39.0;
    } else {
     s0+=14490.0;
     s1+=422.0;
    }
   }
  } else {
   if(i4<-1.1324882507324219e-06){
    if(i25<0.08948192000389099){
     s0+=17395.0;
     s1+=600.0;
    } else {
     s0+=1.0;
     s1+=136.0;
    }
   } else {
    if(i29<0.001114855520427227){
     s0+=505.0;
     s1+=1561.0;
    } else {
     s0+=3609.0;
     s1+=746.0;
    }
   }
  }
 } else {
  if(i63<-0.0008070315816439688){
   if(i45<-0.00015959321171976626){
    if(i24<0.08200865983963013){
     s0+=385.0;
     s1+=235.0;
    } else {
     s0+=386.0;
     s1+=2480.0;
    }
   } else {
    if(i14<0.1733369529247284){
     s0+=582.0;
     s1+=79.0;
    } else {
     s0+=14.0;
     s1+=68.0;
    }
   }
  } else {
   if(i58<0.00018383076530881226){
    if(i25<0.008064677938818932){
     s0+=5177.0;
     s1+=143.0;
    } else {
     s0+=325.0;
     s1+=527.0;
    }
   } else {
    if(i2<0.9993925094604492){
     s0+=802.0;
     s1+=69.0;
    } else {
     s0+=711.0;
     s1+=714.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i76<0.06579431891441345){
   if(i53<1.1622905731201172e-05){
    if(i30<1.116804838180542){
     s0+=5.0;
     s1+=2146.0;
    } else {
     s0+=141.0;
     s1+=29.0;
    }
   } else {
    if(i60<1.0486842393875122){
     s0+=175.0;
     s1+=51.0;
    } else {
     s0+=504.0;
     s1+=8.0;
    }
   }
  } else {
   if(i31<1.0905089378356934){
    s1+=148.0;
   } else {
    if(i50<0.0009338060626760125){
     s1+=29.0;
    } else {
     s0+=1142.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i24<0.018107563257217407){
   if(i32<0.0004948973655700684){
    if(i57<0.00027222855715081096){
     s1+=3.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i73<-0.053712666034698486){
     s0+=2.0;
     s1+=66.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i14<0.09436097741127014){
    if(i16<0.9916157722473145){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=504.0;
    }
   } else {
    if(i57<0.0003184852539561689){
     s0+=12.0;
     s1+=13220.0;
    } else {
     s0+=3.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i0<0.0009757876396179199){
 if(i6<0.007684210315346718){
  if(i18<0.0016409580130130053){
   if(i28<0.0003007578197866678){
    if(i57<4.216836532577872e-05){
     s0+=19901.0;
     s1+=77.0;
    } else {
     s0+=847.0;
     s1+=502.0;
    }
   } else {
    if(i41<-1.7489754100097343e-05){
     s0+=432.0;
     s1+=67.0;
    } else {
     s0+=68458.0;
     s1+=226.0;
    }
   }
  } else {
   if(i34<0.001055063446983695){
    if(i55<1.0003464221954346){
     s0+=2102.0;
     s1+=332.0;
    } else {
     s0+=484.0;
     s1+=2189.0;
    }
   } else {
    if(i0<0.0001227855682373047){
     s0+=16709.0;
     s1+=365.0;
    } else {
     s0+=974.0;
     s1+=553.0;
    }
   }
  }
 } else {
  if(i11<0.07124695181846619){
   if(i79<-0.008630841970443726){
    if(i63<-0.0007327396888285875){
     s0+=78.0;
     s1+=136.0;
    } else {
     s0+=893.0;
     s1+=122.0;
    }
   } else {
    if(i3<-2.1755695343017578e-05){
     s0+=2899.0;
     s1+=14.0;
    } else {
     s0+=199.0;
     s1+=64.0;
    }
   }
  } else {
   if(i8<-2.1576881408691406e-05){
    if(i14<0.19056349992752075){
     s0+=430.0;
     s1+=53.0;
    } else {
     s0+=8.0;
     s1+=223.0;
    }
   } else {
    if(i25<0.019427858293056488){
     s0+=163.0;
     s1+=109.0;
    } else {
     s0+=192.0;
     s1+=2980.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i23<1.1180615425109863){
   if(i2<1.0051813125610352){
    if(i35<0.0011447416618466377){
     s1+=176.0;
    } else {
     s0+=47.0;
    }
   } else {
    s1+=2129.0;
   }
  } else {
   s0+=1852.0;
  }
 } else {
  if(i57<0.00029134636861272156){
   if(i15<1.07395601272583){
    if(i47<1.0006593465805054){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=221.0;
    }
   } else {
    if(i20<-0.0002499222755432129){
     s0+=37.0;
     s1+=999.0;
    } else {
     s0+=1.0;
     s1+=12440.0;
    }
   }
  } else {
   if(i63<-0.0010033001890406013){
    if(i43<0.9382284283638){
     s0+=2.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i55<1.0027858018875122){
     s0+=38.0;
     s1+=18.0;
    } else {
     s1+=24.0;
    }
   }
  }
 }
}
if(i3<6.502866744995117e-05){
 if(i25<0.06413033604621887){
  if(i22<1.0165858268737793){
   if(i8<0.00029391050338745117){
    if(i18<0.0014671216486021876){
     s0+=80120.0;
     s1+=485.0;
    } else {
     s0+=22606.0;
     s1+=2120.0;
    }
   } else {
    if(i6<0.004166446626186371){
     s0+=8202.0;
     s1+=138.0;
    } else {
     s0+=2180.0;
     s1+=2479.0;
    }
   }
  } else {
   if(i1<-5.884419078938663e-05){
    if(i25<0.010987117886543274){
     s0+=78.0;
     s1+=32.0;
    } else {
     s0+=42.0;
     s1+=920.0;
    }
   } else {
    if(i55<1.0038514137268066){
     s0+=680.0;
     s1+=433.0;
    } else {
     s0+=427.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i40<1.1163756847381592){
   if(i3<5.960464477539063e-08){
    s0+=253.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i61<-0.00901561975479126){
    if(i64<0.0035401599016040564){
     s0+=69.0;
     s1+=15.0;
    } else {
     s0+=5.0;
     s1+=34.0;
    }
   } else {
    if(i54<0.8859308362007141){
     s0+=11.0;
     s1+=142.0;
    } else {
     s0+=2.0;
     s1+=1122.0;
    }
   }
  }
 }
} else {
 if(i29<0.002368235494941473){
  if(i44<0.000805217307060957){
   if(i51<-3.0460387279163115e-06){
    if(i35<0.0008132833754643798){
     s0+=2.0;
     s1+=21.0;
    } else {
     s0+=71.0;
     s1+=2.0;
    }
   } else {
    s1+=2083.0;
   }
  } else {
   if(i32<0.0005030035972595215){
    if(i27<0.0009472598321735859){
     s1+=134.0;
    } else {
     s0+=129.0;
    }
   } else {
    if(i31<1.0840215682983398){
     s1+=2.0;
    } else {
     s0+=1735.0;
    }
   }
  }
 } else {
  if(i23<1.629280686378479){
   if(i21<0.9255220890045166){
    if(i17<1.0142724514007568){
     s0+=44.0;
     s1+=60.0;
    } else {
     s0+=1.0;
     s1+=123.0;
    }
   } else {
    if(i3<8.982419967651367e-05){
     s0+=18.0;
     s1+=1063.0;
    } else {
     s1+=12074.0;
    }
   }
  } else {
   if(i34<0.011657515540719032){
    if(i43<1.113415241241455){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i13<0.9514822959899902){
     s0+=9.0;
    } else {
     s1+=611.0;
    }
   }
  }
 }
}
if(i1<-9.239692008122802e-05){
 if(i43<1.024446964263916){
  if(i61<-0.0071031153202056885){
   if(i42<1.004485845565796){
    if(i72<-0.011035174131393433){
     s0+=20.0;
     s1+=11.0;
    } else {
     s0+=586.0;
     s1+=7.0;
    }
   } else {
    if(i64<0.002416840987280011){
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i2<1.0039052963256836){
    if(i24<0.05366674065589905){
     s0+=72.0;
     s1+=8.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i47<1.000950813293457){
     s0+=4.0;
     s1+=15.0;
    } else {
     s1+=83.0;
    }
   }
  }
 } else {
  if(i23<1.1719775199890137){
   if(i35<0.0010420932667329907){
    if(i42<1.0022772550582886){
     s0+=26.0;
     s1+=778.0;
    } else {
     s0+=43.0;
    }
   } else {
    s0+=192.0;
   }
  } else {
   if(i11<0.04509007930755615){
    if(i15<1.084362506866455){
     s0+=58.0;
     s1+=8.0;
    } else {
     s0+=42.0;
     s1+=123.0;
    }
   } else {
    if(i36<1.1419479846954346){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=14844.0;
    }
   }
  }
 }
} else {
 if(i6<0.003994472324848175){
  if(i26<0.00020235776901245117){
   if(i58<0.00018394594371784478){
    if(i39<0.011571086943149567){
     s0+=60941.0;
     s1+=202.0;
    } else {
     s0+=17496.0;
     s1+=435.0;
    }
   } else {
    if(i2<0.9974119067192078){
     s0+=10947.0;
     s1+=71.0;
    } else {
     s0+=4088.0;
     s1+=721.0;
    }
   }
  } else {
   if(i27<0.0010817258153110743){
    s1+=486.0;
   } else {
    s0+=713.0;
   }
  }
 } else {
  if(i3<-2.4020671844482422e-05){
   if(i2<0.9968551993370056){
    if(i59<0.0100486408919096){
     s0+=16687.0;
     s1+=139.0;
    } else {
     s0+=315.0;
     s1+=68.0;
    }
   } else {
    if(i25<0.014436113648116589){
     s0+=1610.0;
     s1+=68.0;
    } else {
     s0+=582.0;
     s1+=402.0;
    }
   }
  } else {
   if(i6<0.005055743269622326){
    if(i28<0.0009002402657642961){
     s0+=294.0;
     s1+=1172.0;
    } else {
     s0+=864.0;
     s1+=130.0;
    }
   } else {
    if(i55<0.9985061883926392){
     s0+=79.0;
    } else {
     s0+=598.0;
     s1+=4773.0;
    }
   }
  }
 }
}
if(i4<2.0205974578857422e-05){
 if(i14<0.2051546573638916){
  if(i27<0.0008890840108506382){
   if(i4<7.569789886474609e-06){
    if(i25<0.006314046680927277){
     s0+=20634.0;
     s1+=343.0;
    } else {
     s0+=8115.0;
     s1+=1338.0;
    }
   } else {
    if(i23<1.067840814590454){
     s0+=1314.0;
    } else {
     s0+=312.0;
     s1+=1397.0;
    }
   }
  } else {
   if(i59<0.010769533924758434){
    if(i10<1.0133819580078125){
     s0+=78195.0;
     s1+=947.0;
    } else {
     s0+=17.0;
     s1+=49.0;
    }
   } else {
    if(i45<-0.0004884222871623933){
     s0+=12.0;
     s1+=102.0;
    } else {
     s0+=482.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i44<0.002390358131378889){
   if(i21<1.0173139572143555){
    if(i62<0.0009495600825175643){
     s0+=132.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.9990674257278442){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i27<0.002562624868005514){
    if(i40<1.1378226280212402){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i15<1.121600866317749){
     s0+=6.0;
     s1+=40.0;
    } else {
     s1+=588.0;
    }
   }
  }
 }
} else {
 if(i45<-0.00022736213577445596){
  if(i2<1.0026565790176392){
   if(i59<0.002532167360186577){
    if(i26<-3.343820571899414e-05){
     s0+=428.0;
     s1+=105.0;
    } else {
     s0+=67.0;
     s1+=76.0;
    }
   } else {
    if(i75<0.00023942766711115837){
     s0+=56.0;
     s1+=642.0;
    } else {
     s0+=35.0;
     s1+=30.0;
    }
   }
  } else {
   if(i47<0.9985709190368652){
    s0+=99.0;
   } else {
    if(i12<0.0007039504125714302){
     s0+=366.0;
     s1+=14884.0;
    } else {
     s0+=154.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i3<0.00014382600784301758){
   if(i49<-1.1018213626812212e-05){
    if(i29<0.0012359312968328595){
     s1+=380.0;
    } else {
     s0+=161.0;
     s1+=38.0;
    }
   } else {
    if(i62<0.000972320674918592){
     s0+=4917.0;
     s1+=825.0;
    } else {
     s0+=863.0;
     s1+=633.0;
    }
   }
  } else {
   if(i12<0.000722970231436193){
    if(i41<-0.00015539920423179865){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=1796.0;
    }
   } else {
    s0+=53.0;
   }
  }
 }
}
if(i1<-8.845650154398754e-05){
 if(i24<0.045134395360946655){
  if(i70<0.03124559111893177){
   if(i4<5.4895877838134766e-05){
    if(i63<-0.0007727472693659365){
     s0+=42.0;
     s1+=5.0;
    } else {
     s0+=657.0;
     s1+=5.0;
    }
   } else {
    if(i5<1.0052872896194458){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   }
  } else {
   if(i2<0.9991970658302307){
    if(i75<0.002802979201078415){
     s0+=92.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   } else {
    if(i58<0.0030566230416297913){
     s0+=14.0;
     s1+=130.0;
    } else {
     s0+=31.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i46<-5.6322969612665474e-05){
   s0+=65.0;
  } else {
   if(i35<0.004024064168334007){
    if(i51<-6.419467354135122e-06){
     s0+=89.0;
     s1+=1.0;
    } else {
     s0+=132.0;
     s1+=15928.0;
    }
   } else {
    s0+=134.0;
   }
  }
 }
} else {
 if(i6<0.0037292761262506247){
  if(i0<0.0014620423316955566){
   if(i40<1.0615402460098267){
    if(i32<-4.357099533081055e-05){
     s0+=16875.0;
     s1+=126.0;
    } else {
     s0+=18351.0;
     s1+=789.0;
    }
   } else {
    if(i1<-5.782243169960566e-05){
     s0+=582.0;
     s1+=69.0;
    } else {
     s0+=55965.0;
     s1+=157.0;
    }
   }
  } else {
   if(i23<1.105151891708374){
    s1+=417.0;
   } else {
    s0+=530.0;
   }
  }
 } else {
  if(i2<0.999226450920105){
   if(i3<-4.07099723815918e-05){
    if(i38<0.20777076482772827){
     s0+=19424.0;
     s1+=310.0;
    } else {
     s0+=35.0;
     s1+=75.0;
    }
   } else {
    if(i8<-0.00015604496002197266){
     s0+=1220.0;
     s1+=15.0;
    } else {
     s0+=386.0;
     s1+=472.0;
    }
   }
  } else {
   if(i36<1.044745922088623){
    s0+=426.0;
   } else {
    if(i29<0.001227042987011373){
     s1+=3294.0;
    } else {
     s0+=1620.0;
     s1+=2300.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i1<-7.644463767064735e-05){
  if(i66<-0.009956032037734985){
   if(i43<1.0688095092773438){
    if(i35<0.0029785677324980497){
     s0+=1080.0;
     s1+=33.0;
    } else {
     s0+=100.0;
     s1+=67.0;
    }
   } else {
    if(i15<1.1080402135849){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=146.0;
    }
   }
  } else {
   if(i30<1.161441683769226){
    if(i29<0.0011979262344539165){
     s0+=27.0;
     s1+=104.0;
    } else {
     s0+=179.0;
    }
   } else {
    if(i60<1.0268759727478027){
     s0+=173.0;
     s1+=265.0;
    } else {
     s0+=94.0;
     s1+=1907.0;
    }
   }
  }
 } else {
  if(i9<1.0094190835952759){
   if(i18<0.0016681499546393752){
    if(i66<-0.0008019208908081055){
     s0+=12511.0;
     s1+=456.0;
    } else {
     s0+=76339.0;
     s1+=385.0;
    }
   } else {
    if(i3<-3.045797348022461e-05){
     s0+=17663.0;
     s1+=555.0;
    } else {
     s0+=4032.0;
     s1+=2999.0;
    }
   }
  } else {
   if(i35<0.0007913750596344471){
    if(i49<1.090312798623927e-05){
     s0+=1519.0;
     s1+=2.0;
    } else {
     s0+=188.0;
     s1+=61.0;
    }
   } else {
    if(i31<1.0963022708892822){
     s0+=11.0;
     s1+=716.0;
    } else {
     s0+=628.0;
     s1+=414.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i32<0.0005122125148773193){
   if(i47<0.9995496273040771){
    s0+=54.0;
   } else {
    if(i12<0.0002515773812774569){
     s0+=4.0;
     s1+=2378.0;
    } else {
     s0+=57.0;
    }
   }
  } else {
   if(i33<0.9545737504959106){
    s1+=3.0;
   } else {
    if(i66<-0.001921534538269043){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=1822.0;
    }
   }
  }
 } else {
  if(i27<0.010824834927916527){
   if(i21<0.8696866035461426){
    if(i73<-0.14366576075553894){
     s0+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i12<0.0004134662449359894){
     s0+=2.0;
     s1+=10396.0;
    } else {
     s0+=24.0;
     s1+=825.0;
    }
   }
  } else {
   if(i38<0.08291500806808472){
    if(i34<0.01795099303126335){
     s0+=84.0;
     s1+=34.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i15<1.0747172832489014){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=2330.0;
    }
   }
  }
 }
}
if(i9<1.0154454708099365){
 if(i24<0.21253448724746704){
  if(i8<0.00037676095962524414){
   if(i32<7.480382919311523e-05){
    if(i27<0.016370387747883797){
     s0+=76697.0;
     s1+=751.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   } else {
    if(i64<0.0004588642914313823){
     s0+=10737.0;
     s1+=1506.0;
    } else {
     s0+=18386.0;
     s1+=823.0;
    }
   }
  } else {
   if(i6<0.004013941623270512){
    if(i47<1.0006076097488403){
     s0+=4426.0;
     s1+=53.0;
    } else {
     s0+=3034.0;
     s1+=546.0;
    }
   } else {
    if(i30<1.1174830198287964){
     s0+=124.0;
     s1+=1668.0;
    } else {
     s0+=2299.0;
     s1+=2864.0;
    }
   }
  }
 } else {
  if(i36<1.175400972366333){
   if(i52<0.1316368579864502){
    if(i75<-0.006962086074054241){
     s1+=2.0;
    } else {
     s0+=180.0;
     s1+=2.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i41<-8.040256034291815e-06){
    if(i69<0.13297823071479797){
     s0+=56.0;
     s1+=338.0;
    } else {
     s0+=4.0;
     s1+=1529.0;
    }
   } else {
    s0+=89.0;
   }
  }
 }
} else {
 if(i8<0.00033277273178100586){
  if(i57<3.2199397537624463e-05){
   if(i1<-9.035378752741963e-05){
    s1+=22.0;
   } else {
    s0+=298.0;
   }
  } else {
   if(i25<0.025220952928066254){
    if(i35<0.001213862095028162){
     s1+=8.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i1<-2.3516826331615448e-05){
     s1+=161.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i31<1.1672112941741943){
   if(i6<0.0029066218994557858){
    if(i49<-1.4986138012318406e-05){
     s0+=16.0;
     s1+=138.0;
    } else {
     s0+=386.0;
     s1+=25.0;
    }
   } else {
    if(i71<1.3720738252231968e-06){
     s0+=65.0;
     s1+=1942.0;
    } else {
     s0+=40.0;
     s1+=12.0;
    }
   }
  } else {
   if(i11<0.14625981450080872){
    if(i75<-0.009342227131128311){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=512.0;
    }
   } else {
    s1+=11034.0;
   }
  }
 }
}
if(i7<1.0135951042175293){
 if(i5<1.0026319026947021){
  if(i6<0.0036593973636627197){
   if(i23<1.1162974834442139){
    if(i19<0.9952584505081177){
     s0+=4343.0;
     s1+=506.0;
    } else {
     s0+=22401.0;
     s1+=321.0;
    }
   } else {
    if(i44<0.0018367768498137593){
     s0+=56559.0;
     s1+=49.0;
    } else {
     s0+=3912.0;
     s1+=118.0;
    }
   }
  } else {
   if(i0<-0.0004013180732727051){
    if(i6<0.020223548635840416){
     s0+=21108.0;
     s1+=648.0;
    } else {
     s0+=59.0;
     s1+=143.0;
    }
   } else {
    if(i5<1.0000026226043701){
     s0+=1046.0;
     s1+=97.0;
    } else {
     s0+=729.0;
     s1+=2630.0;
    }
   }
  }
 } else {
  if(i50<0.002034586388617754){
   if(i61<-0.0004934072494506836){
    if(i3<9.524822235107422e-05){
     s0+=204.0;
     s1+=72.0;
    } else {
     s0+=3.0;
     s1+=360.0;
    }
   } else {
    if(i12<0.00024347740691155195){
     s0+=399.0;
     s1+=827.0;
    } else {
     s0+=3225.0;
     s1+=22.0;
    }
   }
  } else {
   if(i2<1.002791404724121){
    if(i43<1.0854625701904297){
     s0+=1046.0;
     s1+=303.0;
    } else {
     s0+=150.0;
     s1+=650.0;
    }
   } else {
    if(i30<1.19221830368042){
     s0+=78.0;
     s1+=50.0;
    } else {
     s0+=156.0;
     s1+=2730.0;
    }
   }
  }
 }
} else {
 if(i7<1.0200928449630737){
  if(i53<1.341104507446289e-05){
   if(i42<1.0002195835113525){
    if(i62<0.009082561358809471){
     s0+=174.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i36<1.0978162288665771){
     s1+=883.0;
    } else {
     s0+=252.0;
     s1+=812.0;
    }
   }
  } else {
   if(i58<0.00010868490790016949){
    if(i10<1.0164830684661865){
     s0+=543.0;
     s1+=17.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i2<1.00785231590271){
     s0+=23.0;
     s1+=26.0;
    } else {
     s1+=134.0;
    }
   }
  }
 } else {
  if(i10<1.014490008354187){
   if(i46<-3.2787834243208636e-06){
    if(i29<0.0066523002460598946){
     s0+=133.0;
     s1+=656.0;
    } else {
     s0+=1.0;
     s1+=954.0;
    }
   } else {
    if(i3<-4.202127456665039e-06){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=93.0;
    }
   }
  } else {
   if(i41<-8.99417955224635e-06){
    if(i10<1.0162498950958252){
     s0+=17.0;
     s1+=319.0;
    } else {
     s1+=10844.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i1<-8.23399968794547e-05){
  if(i14<0.05164223909378052){
   if(i72<-0.007637381553649902){
    if(i60<0.9648253917694092){
     s0+=114.0;
     s1+=73.0;
    } else {
     s0+=1.0;
     s1+=63.0;
    }
   } else {
    if(i10<0.9815242290496826){
     s0+=810.0;
     s1+=13.0;
    } else {
     s0+=48.0;
     s1+=28.0;
    }
   }
  } else {
   if(i12<0.0012301912065595388){
    if(i45<-0.00024509718059562147){
     s0+=51.0;
     s1+=1970.0;
    } else {
     s0+=78.0;
     s1+=111.0;
    }
   } else {
    s0+=27.0;
   }
  }
 } else {
  if(i6<0.003952128812670708){
   if(i7<0.9960689544677734){
    if(i43<1.0239180326461792){
     s0+=5556.0;
     s1+=580.0;
    } else {
     s0+=14017.0;
     s1+=115.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=70711.0;
     s1+=432.0;
    } else {
     s0+=2012.0;
     s1+=110.0;
    }
   }
  } else {
   if(i0<-0.00034373998641967773){
    if(i5<0.9991074800491333){
     s0+=14425.0;
     s1+=32.0;
    } else {
     s0+=5080.0;
     s1+=634.0;
    }
   } else {
    if(i8<-9.72747802734375e-05){
     s0+=442.0;
     s1+=10.0;
    } else {
     s0+=1048.0;
     s1+=3662.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007044489029794931){
  if(i51<-6.2452345446217805e-06){
   s0+=82.0;
  } else {
   if(i1<-7.459495827788487e-05){
    if(i14<0.0006538331508636475){
     s0+=46.0;
     s1+=28.0;
    } else {
     s0+=34.0;
     s1+=14543.0;
    }
   } else {
    if(i30<1.116804838180542){
     s0+=7.0;
     s1+=1173.0;
    } else {
     s0+=240.0;
     s1+=601.0;
    }
   }
  }
 } else {
  s0+=1853.0;
 }
}
if(i8<0.0005691647529602051){
 if(i14<0.20638719201087952){
  if(i9<1.0090718269348145){
   if(i8<0.00015598535537719727){
    if(i42<0.9997047185897827){
     s0+=43058.0;
     s1+=110.0;
    } else {
     s0+=50805.0;
     s1+=1834.0;
    }
   } else {
    if(i57<1.985818198591005e-05){
     s0+=11612.0;
     s1+=249.0;
    } else {
     s0+=2672.0;
     s1+=1526.0;
    }
   }
  } else {
   if(i6<0.004013890400528908){
    if(i67<3.4611448427313007e-06){
     s0+=1146.0;
     s1+=13.0;
    } else {
     s0+=335.0;
     s1+=36.0;
    }
   } else {
    if(i42<1.0000159740447998){
     s0+=224.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=666.0;
    }
   }
  }
 } else {
  if(i6<0.005585376173257828){
   if(i0<6.970763206481934e-05){
    if(i80<0.12603214383125305){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=168.0;
    }
   } else {
    if(i37<1.002284288406372){
     s0+=28.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i41<-4.236299901094753e-06){
    if(i50<0.004255945794284344){
     s0+=2.0;
     s1+=54.0;
    } else {
     s1+=602.0;
    }
   } else {
    s0+=10.0;
   }
  }
 }
} else {
 if(i45<-0.0002776621258817613){
  if(i15<1.0384089946746826){
   if(i14<0.07328495383262634){
    if(i24<0.09919288754463196){
     s0+=126.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i43<0.9132418632507324){
     s0+=1.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i9<1.02156400680542){
    if(i24<0.06526422500610352){
     s0+=277.0;
     s1+=243.0;
    } else {
     s0+=381.0;
     s1+=3615.0;
    }
   } else {
    if(i2<1.0011236667633057){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=10927.0;
    }
   }
  }
 } else {
  if(i6<0.003121871966868639){
   if(i10<1.016380786895752){
    if(i3<0.00012117624282836914){
     s0+=3938.0;
     s1+=35.0;
    } else {
     s0+=184.0;
     s1+=229.0;
    }
   } else {
    s1+=139.0;
   }
  } else {
   if(i27<0.0010761339217424393){
    if(i28<0.00019022950436919928){
     s0+=83.0;
    } else {
     s1+=1435.0;
    }
   } else {
    if(i17<1.0098085403442383){
     s0+=1563.0;
     s1+=690.0;
    } else {
     s0+=108.0;
     s1+=1622.0;
    }
   }
  }
 }
}
if(i3<6.312131881713867e-05){
 if(i8<0.00032824277877807617){
  if(i18<0.001478683901950717){
   if(i66<-0.000700831413269043){
    if(i64<0.00018369988538324833){
     s0+=2662.0;
     s1+=264.0;
    } else {
     s0+=10588.0;
     s1+=83.0;
    }
   } else {
    if(i19<1.0182610750198364){
     s0+=67924.0;
     s1+=251.0;
    } else {
     s0+=442.0;
     s1+=19.0;
    }
   }
  } else {
   if(i36<1.0906792879104614){
    if(i37<0.99980628490448){
     s0+=1742.0;
     s1+=309.0;
    } else {
     s0+=182.0;
     s1+=1362.0;
    }
   } else {
    if(i6<0.019616950303316116){
     s0+=20983.0;
     s1+=899.0;
    } else {
     s0+=54.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i24<0.1853620707988739){
   if(i12<0.00035300786839798093){
    if(i30<1.1002821922302246){
     s0+=24.0;
     s1+=1201.0;
    } else {
     s0+=4233.0;
     s1+=1370.0;
    }
   } else {
    if(i25<0.025679126381874084){
     s0+=4516.0;
     s1+=47.0;
    } else {
     s0+=452.0;
     s1+=475.0;
    }
   }
  } else {
   if(i28<0.0020893460605293512){
    s0+=106.0;
   } else {
    if(i40<1.1133897304534912){
     s0+=30.0;
     s1+=19.0;
    } else {
     s0+=54.0;
     s1+=1350.0;
    }
   }
  }
 }
} else {
 if(i29<0.0023654235992580652){
  if(i27<0.0009706164710223675){
   if(i27<0.0002461280091665685){
    s0+=94.0;
   } else {
    s1+=2418.0;
   }
  } else {
   s0+=1987.0;
  }
 } else {
  if(i26<-0.00032079219818115234){
   if(i42<1.0039830207824707){
    if(i15<1.0854368209838867){
     s0+=64.0;
     s1+=19.0;
    } else {
     s0+=17.0;
     s1+=100.0;
    }
   } else {
    if(i49<4.252153303241357e-05){
     s0+=2.0;
     s1+=235.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i11<0.07417535781860352){
    if(i79<0.0024198591709136963){
     s0+=7.0;
     s1+=210.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i11<0.1460624635219574){
     s0+=12.0;
     s1+=1070.0;
    } else {
     s0+=1.0;
     s1+=12744.0;
    }
   }
  }
 }
}
if(i10<1.010442852973938){
 if(i18<0.0019446368096396327){
  if(i35<0.0006139904726296663){
   if(i67<-6.366989964590175e-06){
    if(i4<0.00011962652206420898){
     s1+=77.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i35<0.0005150012439116836){
     s0+=67894.0;
     s1+=133.0;
    } else {
     s0+=6789.0;
     s1+=157.0;
    }
   }
  } else {
   if(i5<0.9994986057281494){
    if(i23<1.0907573699951172){
     s0+=1699.0;
     s1+=103.0;
    } else {
     s0+=11138.0;
     s1+=3.0;
    }
   } else {
    if(i23<1.116804838180542){
     s0+=1239.0;
     s1+=1036.0;
    } else {
     s0+=6294.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i38<0.1482064425945282){
   if(i5<1.0006272792816162){
    if(i0<-0.0008091628551483154){
     s0+=11181.0;
     s1+=106.0;
    } else {
     s0+=1910.0;
     s1+=577.0;
    }
   } else {
    if(i29<0.0012367612216621637){
     s0+=625.0;
     s1+=2133.0;
    } else {
     s0+=5832.0;
     s1+=2597.0;
    }
   }
  } else {
   if(i6<0.005510495975613594){
    if(i35<0.001089921104721725){
     s0+=65.0;
     s1+=33.0;
    } else {
     s0+=445.0;
     s1+=3.0;
    }
   } else {
    if(i23<1.1689915657043457){
     s0+=65.0;
    } else {
     s0+=59.0;
     s1+=2841.0;
    }
   }
  }
 }
} else {
 if(i13<1.0177439451217651){
  if(i58<8.132644870784134e-05){
   if(i51<-2.938842953881249e-06){
    if(i66<0.0026509761810302734){
     s0+=1151.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i41<-1.3886616216041148e-05){
     s0+=24.0;
     s1+=678.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i47<0.9990149736404419){
    if(i20<0.007634341716766357){
     s0+=21.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i53<2.8848648071289062e-05){
     s0+=20.0;
     s1+=1319.0;
    } else {
     s0+=23.0;
    }
   }
  }
 } else {
  if(i31<1.6811659336090088){
   if(i41<-1.2008709745714441e-05){
    if(i32<0.0017201900482177734){
     s0+=112.0;
     s1+=12121.0;
    } else {
     s0+=18.0;
    }
   } else {
    s0+=52.0;
   }
  } else {
   s0+=47.0;
  }
 }
}
if(i18<0.001975716557353735){
 if(i33<1.0262037515640259){
  if(i0<0.0017920732498168945){
   if(i31<1.077322244644165){
    if(i8<0.00106126070022583){
     s0+=30597.0;
     s1+=1221.0;
    } else {
     s1+=113.0;
    }
   } else {
    if(i28<0.00184170575812459){
     s0+=55947.0;
     s1+=43.0;
    } else {
     s0+=9221.0;
     s1+=274.0;
    }
   }
  } else {
   if(i53<1.996755599975586e-05){
    s1+=770.0;
   } else {
    if(i62<0.0021828459575772285){
     s0+=31.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<0.0018350481986999512){
   if(i18<0.0013728310586884618){
    if(i49<1.1285708751529455e-05){
     s0+=400.0;
    } else {
     s0+=30.0;
     s1+=15.0;
    }
   } else {
    if(i42<1.0026893615722656){
     s0+=11.0;
     s1+=98.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i71<6.609468255192041e-05){
    s1+=577.0;
   } else {
    s0+=2.0;
   }
  }
 }
} else {
 if(i5<1.0020508766174316){
  if(i0<-0.0005683302879333496){
   if(i21<1.0226926803588867){
    if(i15<1.1417241096496582){
     s0+=14088.0;
     s1+=320.0;
    } else {
     s0+=91.0;
     s1+=152.0;
    }
   } else {
    if(i47<1.0016329288482666){
     s1+=61.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i25<0.010074407793581486){
    if(i19<1.00954008102417){
     s0+=1957.0;
     s1+=86.0;
    } else {
     s0+=244.0;
     s1+=105.0;
    }
   } else {
    if(i20<-0.004192262887954712){
     s0+=87.0;
     s1+=1.0;
    } else {
     s0+=200.0;
     s1+=2388.0;
    }
   }
  }
 } else {
  if(i40<1.1286749839782715){
   if(i23<1.1180615425109863){
    if(i13<1.0088869333267212){
     s0+=136.0;
     s1+=395.0;
    } else {
     s0+=1.0;
     s1+=1804.0;
    }
   } else {
    if(i0<0.002232968807220459){
     s0+=2399.0;
     s1+=868.0;
    } else {
     s0+=24.0;
     s1+=480.0;
    }
   }
  } else {
   if(i14<0.04343494772911072){
    if(i3<0.0001004338264465332){
     s0+=460.0;
     s1+=122.0;
    } else {
     s0+=15.0;
     s1+=104.0;
    }
   } else {
    if(i26<-0.00034376978874206543){
     s0+=257.0;
     s1+=852.0;
    } else {
     s0+=208.0;
     s1+=13573.0;
    }
   }
  }
 }
}
if(i13<1.0138275623321533){
 if(i4<1.901388168334961e-05){
  if(i18<0.0017281451728194952){
   if(i23<1.0817922353744507){
    if(i52<0.010108882561326027){
     s0+=10342.0;
     s1+=97.0;
    } else {
     s0+=6164.0;
     s1+=486.0;
    }
   } else {
    if(i61<-0.00046753883361816406){
     s0+=10306.0;
     s1+=229.0;
    } else {
     s0+=61722.0;
     s1+=151.0;
    }
   }
  } else {
   if(i10<0.9913786053657532){
    if(i11<0.20013859868049622){
     s0+=13360.0;
     s1+=559.0;
    } else {
     s0+=65.0;
     s1+=222.0;
    }
   } else {
    if(i42<0.9998736381530762){
     s0+=3472.0;
     s1+=67.0;
    } else {
     s0+=2765.0;
     s1+=2397.0;
    }
   }
  }
 } else {
  if(i36<1.176374077796936){
   if(i27<0.0009780721738934517){
    if(i10<1.0075461864471436){
     s0+=1788.0;
     s1+=536.0;
    } else {
     s0+=3.0;
     s1+=947.0;
    }
   } else {
    if(i27<0.00227105850353837){
     s0+=3093.0;
     s1+=2.0;
    } else {
     s0+=332.0;
     s1+=160.0;
    }
   }
  } else {
   if(i15<1.0743324756622314){
    if(i5<1.0061061382293701){
     s0+=1146.0;
     s1+=157.0;
    } else {
     s0+=54.0;
     s1+=249.0;
    }
   } else {
    if(i41<-4.175095818936825e-05){
     s0+=110.0;
     s1+=3035.0;
    } else {
     s0+=463.0;
     s1+=1327.0;
    }
   }
  }
 }
} else {
 if(i3<1.5437602996826172e-05){
  if(i56<0.035646818578243256){
   if(i14<0.34977108240127563){
    if(i10<1.0147565603256226){
     s0+=264.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i1<-4.351562529336661e-05){
    if(i63<-0.0013188663870096207){
     s0+=2.0;
     s1+=107.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    if(i17<1.002859354019165){
     s0+=129.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i7<1.0193507671356201){
   if(i53<1.1265277862548828e-05){
    if(i8<0.0003305673599243164){
     s0+=44.0;
     s1+=8.0;
    } else {
     s0+=76.0;
     s1+=1340.0;
    }
   } else {
    if(i41<-4.315629121265374e-05){
     s0+=40.0;
     s1+=261.0;
    } else {
     s0+=586.0;
     s1+=53.0;
    }
   }
  } else {
   if(i12<0.0008061461849138141){
    if(i18<0.0006805756129324436){
     s0+=17.0;
     s1+=83.0;
    } else {
     s0+=26.0;
     s1+=11958.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
}
if(i13<1.0148130655288696){
 if(i18<0.0017366211395710707){
  if(i49<-1.3512235454982147e-05){
   if(i12<0.00017860284424386919){
    if(i46<-5.412140308180824e-05){
     s0+=10.0;
    } else {
     s1+=319.0;
    }
   } else {
    s0+=32.0;
   }
  } else {
   if(i36<1.0776758193969727){
    if(i18<0.0011494799982756376){
     s0+=20256.0;
     s1+=175.0;
    } else {
     s0+=2894.0;
     s1+=562.0;
    }
   } else {
    if(i28<0.0018044363241642714){
     s0+=59216.0;
     s1+=39.0;
    } else {
     s0+=9866.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i37<1.000277042388916){
   if(i40<1.2708653211593628){
    if(i5<1.0026808977127075){
     s0+=10805.0;
     s1+=513.0;
    } else {
     s0+=27.0;
     s1+=95.0;
    }
   } else {
    if(i24<0.059201955795288086){
     s0+=98.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=138.0;
    }
   }
  } else {
   if(i20<-0.0014889240264892578){
    if(i15<1.112868309020996){
     s0+=8952.0;
     s1+=624.0;
    } else {
     s0+=497.0;
     s1+=1615.0;
    }
   } else {
    if(i30<1.0533521175384521){
     s0+=1047.0;
    } else {
     s0+=1905.0;
     s1+=6641.0;
    }
   }
  }
 }
} else {
 if(i14<0.17093199491500854){
  if(i12<0.0003213275340385735){
   if(i17<0.9987215399742126){
    if(i1<-6.68885768391192e-05){
     s0+=13.0;
     s1+=41.0;
    } else {
     s0+=181.0;
     s1+=6.0;
    }
   } else {
    if(i20<-0.0005136728286743164){
     s0+=68.0;
     s1+=3.0;
    } else {
     s0+=38.0;
     s1+=2750.0;
    }
   }
  } else {
   if(i78<-0.011915087699890137){
    if(i31<1.1562808752059937){
     s0+=2.0;
    } else {
     s1+=120.0;
    }
   } else {
    if(i7<1.0270802974700928){
     s0+=572.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i0<0.00021249055862426758){
   if(i41<-1.4826768165221438e-05){
    if(i3<-4.598498344421387e-05){
     s0+=6.0;
    } else {
     s1+=57.0;
    }
   } else {
    s0+=53.0;
   }
  } else {
   if(i30<1.1688169240951538){
    s0+=16.0;
   } else {
    if(i0<0.00025406479835510254){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=10324.0;
    }
   }
  }
 }
}
if(i17<1.0046415328979492){
 if(i7<1.0131568908691406){
  if(i39<0.17880380153656006){
   if(i23<1.1162974834442139){
    if(i6<0.0036071198992431164){
     s0+=26960.0;
     s1+=831.0;
    } else {
     s0+=2909.0;
     s1+=2495.0;
    }
   } else {
    if(i11<0.20744594931602478){
     s0+=81643.0;
     s1+=1345.0;
    } else {
     s0+=258.0;
     s1+=336.0;
    }
   }
  } else {
   if(i13<0.9408142566680908){
    if(i24<0.12634238600730896){
     s0+=263.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i42<0.9958771467208862){
     s0+=4.0;
    } else {
     s1+=559.0;
    }
   }
  }
 } else {
  if(i41<-1.0885387382586487e-05){
   if(i0<-0.0006005167961120605){
    if(i6<0.008751343004405499){
     s0+=137.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i22<1.0215635299682617){
     s0+=150.0;
     s1+=569.0;
    } else {
     s0+=32.0;
     s1+=1631.0;
    }
   }
  } else {
   if(i6<0.0061266073025763035){
    s0+=264.0;
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i1<-7.427426317008212e-05){
  if(i14<0.011134833097457886){
   if(i43<1.0302562713623047){
    if(i49<-2.4791970645310357e-06){
     s1+=6.0;
    } else {
     s0+=234.0;
     s1+=8.0;
    }
   } else {
    if(i26<-0.00040772557258605957){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=40.0;
    }
   }
  } else {
   if(i36<1.1430405378341675){
    if(i46<-1.3660572221851908e-05){
     s0+=289.0;
     s1+=6.0;
    } else {
     s1+=958.0;
    }
   } else {
    if(i20<-0.0040142834186553955){
     s0+=90.0;
     s1+=88.0;
    } else {
     s0+=70.0;
     s1+=13006.0;
    }
   }
  }
 } else {
  if(i28<0.000991077278740704){
   if(i32<0.0005546808242797852){
    if(i8<0.0003941059112548828){
     s0+=9.0;
    } else {
     s1+=982.0;
    }
   } else {
    s0+=391.0;
   }
  } else {
   if(i29<0.002283785492181778){
    if(i59<0.0005146820330992341){
     s0+=1.0;
     s1+=91.0;
    } else {
     s0+=2631.0;
     s1+=15.0;
    }
   } else {
    if(i6<0.006219151429831982){
     s0+=271.0;
     s1+=61.0;
    } else {
     s0+=233.0;
     s1+=920.0;
    }
   }
  }
 }
}
if(i0<0.0009602904319763184){
 if(i8<0.0003440976142883301){
  if(i35<0.0007107785204425454){
   if(i58<0.00017509804456494749){
    if(i15<1.0101629495620728){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=64036.0;
     s1+=149.0;
    }
   } else {
    if(i34<0.0002051241899607703){
     s0+=103.0;
     s1+=125.0;
    } else {
     s0+=12663.0;
     s1+=125.0;
    }
   }
  } else {
   if(i27<0.0009083823533728719){
    if(i2<0.9976602792739868){
     s0+=857.0;
     s1+=151.0;
    } else {
     s0+=501.0;
     s1+=1815.0;
    }
   } else {
    if(i60<1.121600866317749){
     s0+=26679.0;
     s1+=694.0;
    } else {
     s0+=111.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i52<0.039405278861522675){
   if(i1<-4.4557913497556e-05){
    if(i44<0.000660348276142031){
     s0+=66.0;
     s1+=485.0;
    } else {
     s0+=391.0;
     s1+=214.0;
    }
   } else {
    if(i12<0.00024987501092255116){
     s0+=2123.0;
     s1+=537.0;
    } else {
     s0+=4425.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<-0.00016242265701293945){
    if(i24<0.12737822532653809){
     s0+=1298.0;
     s1+=154.0;
    } else {
     s0+=199.0;
     s1+=335.0;
    }
   } else {
    if(i6<0.004419955890625715){
     s0+=249.0;
     s1+=120.0;
    } else {
     s0+=493.0;
     s1+=2769.0;
    }
   }
  }
 }
} else {
 if(i31<1.1703872680664062){
  if(i59<0.0007062000222504139){
   if(i12<0.000603155349381268){
    if(i42<1.0052733421325684){
     s1+=2283.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=113.0;
   }
  } else {
   if(i13<1.0207257270812988){
    if(i23<1.1979892253875732){
     s0+=1931.0;
     s1+=99.0;
    } else {
     s0+=17.0;
     s1+=281.0;
    }
   } else {
    if(i40<1.102536678314209){
     s0+=8.0;
     s1+=22.0;
    } else {
     s1+=317.0;
    }
   }
  }
 } else {
  if(i20<-0.00226747989654541){
   if(i35<0.0013470470439642668){
    if(i28<0.006962013430893421){
     s1+=2.0;
    } else {
     s0+=56.0;
     s1+=2.0;
    }
   } else {
    if(i47<1.0001415014266968){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=265.0;
    }
   }
  } else {
   if(i35<0.0006722000543959439){
    if(i30<1.4667320251464844){
     s1+=971.0;
    } else {
     s0+=33.0;
     s1+=48.0;
    }
   } else {
    if(i6<0.003396288026124239){
     s0+=3.0;
     s1+=63.0;
    } else {
     s1+=12147.0;
    }
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i21<1.0175851583480835){
  if(i8<0.00032275915145874023){
   if(i38<0.23919841647148132){
    if(i32<6.22868537902832e-05){
     s0+=74287.0;
     s1+=706.0;
    } else {
     s0+=29894.0;
     s1+=2157.0;
    }
   } else {
    if(i64<0.07773412764072418){
     s0+=6.0;
     s1+=122.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i25<0.009082312695682049){
    if(i18<0.00207941303960979){
     s0+=5432.0;
     s1+=17.0;
    } else {
     s0+=1750.0;
     s1+=282.0;
    }
   } else {
    if(i15<1.104677438735962){
     s0+=1950.0;
     s1+=1446.0;
    } else {
     s0+=274.0;
     s1+=1459.0;
    }
   }
  }
 } else {
  if(i41<-9.511071766610257e-06){
   if(i6<0.004357761703431606){
    if(i35<0.0007695353124290705){
     s0+=93.0;
     s1+=57.0;
    } else {
     s0+=292.0;
    }
   } else {
    if(i42<1.0032615661621094){
     s0+=33.0;
     s1+=1474.0;
    } else {
     s0+=52.0;
     s1+=174.0;
    }
   }
  } else {
   if(i55<1.0016752481460571){
    s0+=440.0;
   } else {
    if(i10<0.9919902086257935){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=50.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i25<0.00795380026102066){
  if(i30<1.116804838180542){
   if(i40<1.0328443050384521){
    s0+=61.0;
   } else {
    if(i12<0.00022241417900659144){
     s0+=5.0;
     s1+=1470.0;
    } else {
     s0+=73.0;
    }
   }
  } else {
   if(i30<1.176405668258667){
    s0+=1633.0;
   } else {
    if(i2<1.0049235820770264){
     s0+=4.0;
    } else {
     s1+=516.0;
    }
   }
  }
 } else {
  if(i29<0.002365377964451909){
   if(i50<0.0010394998826086521){
    if(i51<-2.3011001758277416e-05){
     s0+=6.0;
    } else {
     s1+=869.0;
    }
   } else {
    if(i50<0.0011026544962078333){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=213.0;
    }
   }
  } else {
   if(i14<0.030427783727645874){
    if(i73<-0.07886850833892822){
     s0+=17.0;
     s1+=80.0;
    } else {
     s0+=35.0;
     s1+=4.0;
    }
   } else {
    if(i35<0.004053190816193819){
     s0+=68.0;
     s1+=13320.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i5<1.0025739669799805){
 if(i6<0.0039538051933050156){
  if(i27<0.0005862683174200356){
   if(i35<0.0006471696542575955){
    if(i35<0.0004682029830291867){
     s0+=22654.0;
     s1+=36.0;
    } else {
     s0+=2438.0;
     s1+=143.0;
    }
   } else {
    if(i3<4.857778549194336e-06){
     s0+=1176.0;
     s1+=856.0;
    } else {
     s0+=2042.0;
     s1+=60.0;
    }
   }
  } else {
   if(i34<0.0018097332213073969){
    if(i29<0.0006450694054365158){
     s0+=187.0;
     s1+=1.0;
    } else {
     s0+=47219.0;
    }
   } else {
    if(i26<-6.052851676940918e-05){
     s0+=12281.0;
     s1+=34.0;
    } else {
     s0+=1717.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i10<1.0031929016113281){
   if(i2<0.9983158111572266){
    if(i38<0.20352378487586975){
     s0+=19045.0;
     s1+=454.0;
    } else {
     s0+=33.0;
     s1+=195.0;
    }
   } else {
    if(i41<-6.900043445057236e-06){
     s0+=620.0;
     s1+=1850.0;
    } else {
     s0+=273.0;
     s1+=14.0;
    }
   }
  } else {
   if(i55<1.000230312347412){
    if(i43<1.183570146560669){
     s0+=565.0;
     s1+=127.0;
    } else {
     s1+=224.0;
    }
   } else {
    if(i41<-1.0229328836430795e-05){
     s0+=3.0;
     s1+=1357.0;
    } else {
     s0+=84.0;
    }
   }
  }
 }
} else {
 if(i45<-0.0002526991593185812){
  if(i16<1.0020129680633545){
   if(i14<0.12731757760047913){
    if(i7<0.9926761388778687){
     s0+=128.0;
     s1+=267.0;
    } else {
     s0+=482.0;
     s1+=54.0;
    }
   } else {
    if(i30<1.233483076095581){
     s0+=85.0;
     s1+=91.0;
    } else {
     s0+=27.0;
     s1+=1442.0;
    }
   }
  } else {
   if(i71<3.876265509461518e-06){
    if(i24<0.07383379340171814){
     s0+=157.0;
     s1+=273.0;
    } else {
     s0+=205.0;
     s1+=12790.0;
    }
   } else {
    s0+=37.0;
   }
  }
 } else {
  if(i0<0.001794576644897461){
   if(i6<0.0028047794476151466){
    if(i32<0.00043135881423950195){
     s0+=161.0;
     s1+=8.0;
    } else {
     s0+=3035.0;
    }
   } else {
    if(i28<0.000682557001709938){
     s1+=674.0;
    } else {
     s0+=1639.0;
     s1+=904.0;
    }
   }
  } else {
   if(i6<0.003245901083573699){
    if(i35<0.0012028340715914965){
     s1+=419.0;
    } else {
     s0+=215.0;
    }
   } else {
    if(i53<2.7000904083251953e-05){
     s0+=23.0;
     s1+=1860.0;
    } else {
     s0+=28.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i1<-8.215877460315824e-05){
  if(i15<1.072366714477539){
   if(i63<-0.0011251436080783606){
    if(i27<0.013298134319484234){
     s0+=34.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=45.0;
    }
   } else {
    if(i32<0.0006479620933532715){
     s0+=870.0;
     s1+=31.0;
    } else {
     s0+=55.0;
     s1+=24.0;
    }
   }
  } else {
   if(i24<0.025011122226715088){
    if(i70<0.03860863670706749){
     s0+=87.0;
     s1+=3.0;
    } else {
     s0+=43.0;
     s1+=68.0;
    }
   } else {
    if(i25<0.01551614236086607){
     s0+=88.0;
     s1+=33.0;
    } else {
     s0+=49.0;
     s1+=2112.0;
    }
   }
  }
 } else {
  if(i6<0.003660991322249174){
   if(i35<0.0005479494575411081){
    if(i44<0.0019221007823944092){
     s0+=63624.0;
     s1+=109.0;
    } else {
     s0+=2330.0;
     s1+=43.0;
    }
   } else {
    if(i0<-0.0006534457206726074){
     s0+=12577.0;
     s1+=58.0;
    } else {
     s0+=11688.0;
     s1+=840.0;
    }
   }
  } else {
   if(i27<0.0010042204521596432){
    if(i31<1.0463924407958984){
     s0+=2685.0;
     s1+=183.0;
    } else {
     s0+=93.0;
     s1+=2754.0;
    }
   } else {
    if(i14<0.1840263307094574){
     s0+=20079.0;
     s1+=1185.0;
    } else {
     s0+=221.0;
     s1+=569.0;
    }
   }
  }
 }
} else {
 if(i39<0.021607322618365288){
  if(i12<0.0003926467034034431){
   if(i4<1.4662742614746094e-05){
    s0+=43.0;
   } else {
    if(i53<6.22868537902832e-05){
     s0+=28.0;
     s1+=3271.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i11<0.25785425305366516){
    if(i34<0.005307522602379322){
     s0+=1799.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=26.0;
   }
  }
 } else {
  if(i12<0.0007145039271563292){
   if(i20<-0.002253293991088867){
    if(i46<-1.726169284665957e-05){
     s0+=13.0;
     s1+=287.0;
    } else {
     s0+=59.0;
     s1+=29.0;
    }
   } else {
    if(i36<1.141331434249878){
     s0+=28.0;
     s1+=395.0;
    } else {
     s0+=39.0;
     s1+=12180.0;
    }
   }
  } else {
   s0+=37.0;
  }
 }
}
if(i5<1.0026333332061768){
 if(i21<1.0164746046066284){
  if(i14<0.22610390186309814){
   if(i36<1.0903575420379639){
    if(i33<1.0091321468353271){
     s0+=28008.0;
     s1+=2211.0;
    } else {
     s0+=399.0;
     s1+=601.0;
    }
   } else {
    if(i43<1.1403393745422363){
     s0+=81161.0;
     s1+=1113.0;
    } else {
     s0+=283.0;
     s1+=196.0;
    }
   }
  } else {
   if(i77<0.15416046977043152){
    if(i41<-9.554288226354402e-06){
     s0+=3.0;
     s1+=298.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i28<0.014438615180552006){
     s0+=25.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i4<7.927417755126953e-06){
   if(i49<1.1816048754553776e-05){
    if(i35<0.0010119936196133494){
     s0+=487.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i56<0.037729233503341675){
     s0+=149.0;
     s1+=33.0;
    } else {
     s0+=21.0;
     s1+=205.0;
    }
   }
  } else {
   if(i4<3.8504600524902344e-05){
    if(i25<0.006127418018877506){
     s0+=55.0;
     s1+=8.0;
    } else {
     s0+=62.0;
     s1+=999.0;
    }
   } else {
    s0+=53.0;
   }
  }
 }
} else {
 if(i25<0.013079443946480751){
  if(i12<0.0002754503220785409){
   if(i20<0.0005655288696289062){
    if(i30<1.4213035106658936){
     s0+=615.0;
     s1+=37.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i12<0.00022448471281677485){
     s0+=51.0;
     s1+=2890.0;
    } else {
     s0+=68.0;
     s1+=206.0;
    }
   }
  } else {
   if(i16<1.015563726425171){
    if(i78<-0.039196789264678955){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=3928.0;
     s1+=25.0;
    }
   } else {
    s1+=94.0;
   }
  }
 } else {
  if(i15<1.0743656158447266){
   if(i20<-0.0016012191772460938){
    if(i62<0.0022952312137931585){
     s0+=341.0;
     s1+=4.0;
    } else {
     s0+=306.0;
     s1+=220.0;
    }
   } else {
    if(i6<0.0036354204639792442){
     s0+=19.0;
    } else {
     s0+=4.0;
     s1+=344.0;
    }
   }
  } else {
   if(i15<1.1076631546020508){
    if(i5<1.0056869983673096){
     s0+=269.0;
     s1+=562.0;
    } else {
     s0+=21.0;
     s1+=831.0;
    }
   } else {
    if(i10<1.007401704788208){
     s0+=297.0;
     s1+=2854.0;
    } else {
     s0+=16.0;
     s1+=10403.0;
    }
   }
  }
 }
}
if(i1<-8.899930980987847e-05){
 if(i43<1.024446964263916){
  if(i16<1.0101765394210815){
   if(i14<0.07730212807655334){
    if(i3<0.00013971328735351562){
     s0+=799.0;
     s1+=39.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i10<0.9696012139320374){
     s0+=21.0;
     s1+=7.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   s1+=101.0;
  }
 } else {
  if(i36<1.1497111320495605){
   if(i12<0.00019965166575275362){
    if(i30<1.122192621231079){
     s0+=1.0;
     s1+=845.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   } else {
    if(i62<0.0038462302181869745){
     s0+=280.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i66<-0.012936294078826904){
    if(i15<1.0834230184555054){
     s0+=50.0;
     s1+=8.0;
    } else {
     s0+=21.0;
     s1+=112.0;
    }
   } else {
    if(i14<0.04476943612098694){
     s0+=63.0;
     s1+=176.0;
    } else {
     s0+=45.0;
     s1+=14835.0;
    }
   }
  }
 }
} else {
 if(i10<1.0071296691894531){
  if(i18<0.0017126891762018204){
   if(i21<0.9958423972129822){
    if(i35<0.0006191135616973042){
     s0+=16307.0;
     s1+=136.0;
    } else {
     s0+=2986.0;
     s1+=430.0;
    }
   } else {
    if(i47<1.0002474784851074){
     s0+=37701.0;
     s1+=10.0;
    } else {
     s0+=32737.0;
     s1+=386.0;
    }
   }
  } else {
   if(i8<-7.873773574829102e-05){
    if(i15<1.1483726501464844){
     s0+=14558.0;
     s1+=280.0;
    } else {
     s0+=22.0;
     s1+=41.0;
    }
   } else {
    if(i35<0.0011349322739988565){
     s0+=1098.0;
     s1+=2892.0;
    } else {
     s0+=6277.0;
     s1+=1215.0;
    }
   }
  }
 } else {
  if(i23<1.1180615425109863){
   if(i40<1.0380836725234985){
    if(i62<0.0003002045559696853){
     s0+=69.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i12<0.0006221031071618199){
     s1+=2011.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i27<0.002569211646914482){
    if(i29<0.002217112574726343){
     s0+=2753.0;
    } else {
     s0+=264.0;
     s1+=40.0;
    }
   } else {
    if(i50<0.001340279122814536){
     s0+=154.0;
     s1+=2.0;
    } else {
     s0+=164.0;
     s1+=855.0;
    }
   }
  }
 }
}
if(i22<1.0170331001281738){
 if(i39<0.16865673661231995){
  if(i0<0.001065969467163086){
   if(i11<0.21786090731620789){
    if(i27<0.0008908312302082777){
     s0+=32329.0;
     s1+=3448.0;
    } else {
     s0+=80945.0;
     s1+=1862.0;
    }
   } else {
    if(i18<0.0024870377965271473){
     s0+=129.0;
     s1+=12.0;
    } else {
     s0+=20.0;
     s1+=320.0;
    }
   }
  } else {
   if(i6<0.0027332170866429806){
    if(i32<0.000525355339050293){
     s1+=157.0;
    } else {
     s0+=768.0;
     s1+=15.0;
    }
   } else {
    if(i36<1.1431341171264648){
     s0+=398.0;
     s1+=964.0;
    } else {
     s0+=72.0;
     s1+=1783.0;
    }
   }
  }
 } else {
  if(i8<0.0001887679100036621){
   if(i26<-0.0008111000061035156){
    if(i59<0.032162249088287354){
     s0+=389.0;
     s1+=7.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i18<0.0046884543262422085){
     s0+=1.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i7<0.8788085579872131){
    if(i17<1.0176746845245361){
     s0+=18.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i1<-4.8673748096916825e-05){
     s0+=6.0;
     s1+=1491.0;
    } else {
     s0+=19.0;
     s1+=50.0;
    }
   }
  }
 }
} else {
 if(i0<0.00023877620697021484){
  if(i1<-6.125459185568616e-05){
   if(i34<0.002566572744399309){
    if(i25<0.015012387186288834){
     s0+=17.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i41<-1.100253575714305e-05){
     s0+=3.0;
     s1+=245.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i36<1.0887749195098877){
    s1+=20.0;
   } else {
    if(i41<-6.8122917582513765e-06){
     s0+=404.0;
     s1+=88.0;
    } else {
     s0+=421.0;
    }
   }
  }
 } else {
  if(i12<0.0007077126065269113){
   if(i6<0.0034077209420502186){
    if(i2<1.0077152252197266){
     s0+=185.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=315.0;
    }
   } else {
    if(i4<0.00026851892471313477){
     s0+=61.0;
     s1+=13227.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   s0+=485.0;
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i32<0.00010198354721069336){
  if(i24<0.24086105823516846){
   if(i35<0.0006888715433888137){
    if(i36<1.0776758193969727){
     s0+=19703.0;
     s1+=253.0;
    } else {
     s0+=45377.0;
    }
   } else {
    if(i5<0.9997033476829529){
     s0+=15637.0;
     s1+=292.0;
    } else {
     s0+=1153.0;
     s1+=720.0;
    }
   }
  } else {
   if(i39<0.11119472980499268){
    if(i6<0.007705851458013058){
     s0+=97.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i27<0.002762813586741686){
     s0+=6.0;
    } else {
     s1+=222.0;
    }
   }
  }
 } else {
  if(i40<1.1287857294082642){
   if(i9<1.009296178817749){
    if(i28<0.0009973087580874562){
     s0+=6299.0;
     s1+=1599.0;
    } else {
     s0+=21655.0;
     s1+=1213.0;
    }
   } else {
    if(i27<0.0009756743675097823){
     s0+=7.0;
     s1+=850.0;
    } else {
     s0+=950.0;
     s1+=60.0;
    }
   }
  } else {
   if(i24<0.163964182138443){
    if(i29<0.0019578379578888416){
     s0+=941.0;
    } else {
     s0+=2128.0;
     s1+=1167.0;
    }
   } else {
    if(i68<0.061982229351997375){
     s0+=106.0;
     s1+=101.0;
    } else {
     s0+=185.0;
     s1+=1585.0;
    }
   }
  }
 }
} else {
 if(i6<0.003694957820698619){
  if(i49<-1.2533850167528726e-05){
   if(i30<1.1180615425109863){
    if(i47<1.0019875764846802){
     s0+=2.0;
     s1+=489.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i31<1.14853835105896){
     s0+=136.0;
    } else {
     s1+=214.0;
    }
   }
  } else {
   if(i30<1.0894038677215576){
    if(i25<0.002520041074603796){
     s0+=59.0;
     s1+=3.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i17<1.0122144222259521){
     s0+=1390.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i12<0.0007347549544647336){
   if(i9<0.9392907619476318){
    if(i75<0.0028858985751867294){
     s0+=47.0;
     s1+=59.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   } else {
    if(i0<0.0009216070175170898){
     s0+=40.0;
     s1+=21.0;
    } else {
     s0+=104.0;
     s1+=15517.0;
    }
   }
  } else {
   s0+=300.0;
  }
 }
}
if(i7<1.0135858058929443){
 if(i8<0.0005390048027038574){
  if(i24<0.24306640028953552){
   if(i32<7.814168930053711e-05){
    if(i56<0.24249976873397827){
     s0+=77473.0;
     s1+=831.0;
    } else {
     s0+=16.0;
     s1+=19.0;
    }
   } else {
    if(i50<0.0008550971979275346){
     s0+=7781.0;
     s1+=1650.0;
    } else {
     s0+=23682.0;
     s1+=1525.0;
    }
   }
  } else {
   if(i34<0.005995279178023338){
    if(i1<-2.1802463379572146e-05){
     s0+=4.0;
     s1+=43.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   } else {
    s1+=229.0;
   }
  }
 } else {
  if(i12<0.0007041515782475471){
   if(i14<0.14886868000030518){
    if(i12<0.00029036577325314283){
     s0+=957.0;
     s1+=2374.0;
    } else {
     s0+=2087.0;
     s1+=738.0;
    }
   } else {
    if(i28<0.0019498500041663647){
     s0+=155.0;
    } else {
     s0+=69.0;
     s1+=2258.0;
    }
   }
  } else {
   s0+=3068.0;
  }
 }
} else {
 if(i18<0.0013815650017932057){
  if(i49<-1.731789052428212e-05){
   if(i51<-6.5830754465423524e-06){
    s0+=12.0;
   } else {
    s1+=467.0;
   }
  } else {
   if(i40<1.0613367557525635){
    s1+=2.0;
   } else {
    if(i34<0.002392764203250408){
     s0+=471.0;
    } else {
     s0+=169.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i28<0.0021898802369832993){
   if(i23<1.1180615425109863){
    s1+=1699.0;
   } else {
    if(i12<0.00031889905221760273){
     s0+=1.0;
     s1+=64.0;
    } else {
     s0+=324.0;
    }
   }
  } else {
   if(i1<-3.423222005949356e-05){
    if(i31<1.127323031425476){
     s0+=41.0;
    } else {
     s0+=68.0;
     s1+=12249.0;
    }
   } else {
    if(i23<1.2596347332000732){
     s1+=82.0;
    } else {
     s0+=166.0;
    }
   }
  }
 }
}
if(i8<0.000583946704864502){
 if(i33<1.0214462280273438){
  if(i35<0.0007167013827711344){
   if(i13<0.9946585893630981){
    if(i34<0.00027476565446704626){
     s0+=975.0;
     s1+=230.0;
    } else {
     s0+=11488.0;
     s1+=26.0;
    }
   } else {
    if(i44<0.0020286838989704847){
     s0+=65652.0;
     s1+=145.0;
    } else {
     s0+=900.0;
     s1+=79.0;
    }
   }
  } else {
   if(i15<1.1403480768203735){
    if(i17<0.998104453086853){
     s0+=20311.0;
     s1+=330.0;
    } else {
     s0+=9441.0;
     s1+=3121.0;
    }
   } else {
    if(i52<0.12572163343429565){
     s0+=128.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=454.0;
    }
   }
  }
 } else {
  if(i4<8.404254913330078e-06){
   if(i35<0.0021330849267542362){
    if(i55<1.0014259815216064){
     s0+=552.0;
     s1+=5.0;
    } else {
     s0+=189.0;
     s1+=96.0;
    }
   } else {
    if(i49<7.67730234656483e-05){
     s1+=167.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i47<1.001589059829712){
    if(i21<1.0168993473052979){
     s0+=55.0;
     s1+=49.0;
    } else {
     s0+=31.0;
     s1+=579.0;
    }
   } else {
    if(i56<0.05901270732283592){
     s0+=66.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i12<0.000704434234648943){
  if(i6<0.0021673268638551235){
   if(i67<-6.276097792579094e-06){
    if(i3<0.0006181597709655762){
     s1+=256.0;
    } else {
     s0+=12.0;
     s1+=8.0;
    }
   } else {
    if(i9<1.019651174545288){
     s0+=1247.0;
    } else {
     s0+=40.0;
     s1+=11.0;
    }
   }
  } else {
   if(i38<0.008997082710266113){
    if(i13<0.957441508769989){
     s0+=310.0;
     s1+=72.0;
    } else {
     s0+=107.0;
     s1+=278.0;
    }
   } else {
    if(i9<1.0140416622161865){
     s0+=1304.0;
     s1+=5040.0;
    } else {
     s0+=96.0;
     s1+=13556.0;
    }
   }
  }
 } else {
  if(i38<0.42648380994796753){
   s0+=3413.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i22<1.0166476964950562){
 if(i5<1.0025781393051147){
  if(i35<0.0007107785204425454){
   if(i58<0.00017389096319675446){
    if(i29<0.0019045951776206493){
     s0+=61605.0;
     s1+=99.0;
    } else {
     s0+=3965.0;
     s1+=46.0;
    }
   } else {
    if(i44<0.0001615608634892851){
     s0+=687.0;
     s1+=117.0;
    } else {
     s0+=12263.0;
     s1+=143.0;
    }
   }
  } else {
   if(i0<-0.0005176961421966553){
    if(i24<0.24712559580802917){
     s0+=24681.0;
     s1+=597.0;
    } else {
     s0+=8.0;
     s1+=112.0;
    }
   } else {
    if(i30<1.0512452125549316){
     s0+=2407.0;
    } else {
     s0+=4082.0;
     s1+=3297.0;
    }
   }
  }
 } else {
  if(i6<0.004239914007484913){
   if(i34<0.0009652769658714533){
    if(i50<0.0001840204349718988){
     s0+=829.0;
    } else {
     s0+=1.0;
     s1+=482.0;
    }
   } else {
    if(i17<1.01253342628479){
     s0+=2986.0;
     s1+=40.0;
    } else {
     s1+=69.0;
    }
   }
  } else {
   if(i0<1.2636184692382812e-05){
    if(i15<1.0866855382919312){
     s0+=764.0;
     s1+=99.0;
    } else {
     s0+=126.0;
     s1+=330.0;
    }
   } else {
    if(i0<0.0009641647338867188){
     s0+=504.0;
     s1+=1474.0;
    } else {
     s0+=121.0;
     s1+=3175.0;
    }
   }
  }
 }
} else {
 if(i26<0.00025725364685058594){
  if(i24<0.17788538336753845){
   if(i29<0.00121737876906991){
    if(i46<-3.76066918761353e-06){
     s1+=707.0;
    } else {
     s0+=128.0;
    }
   } else {
    if(i39<0.03748645260930061){
     s0+=1026.0;
     s1+=151.0;
    } else {
     s0+=181.0;
     s1+=349.0;
    }
   }
  } else {
   if(i36<1.1731728315353394){
    if(i28<0.001970735378563404){
     s0+=72.0;
     s1+=6.0;
    } else {
     s0+=11.0;
     s1+=33.0;
    }
   } else {
    if(i35<0.00038846349343657494){
     s0+=39.0;
    } else {
     s0+=85.0;
     s1+=2322.0;
    }
   }
  }
 } else {
  if(i20<0.0015777945518493652){
   s0+=41.0;
  } else {
   if(i25<0.00443354994058609){
    if(i50<0.0008639206644147635){
     s1+=157.0;
    } else {
     s0+=64.0;
     s1+=127.0;
    }
   } else {
    if(i35<0.0040097106248140335){
     s0+=4.0;
     s1+=10243.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i2<1.0038522481918335){
 if(i14<0.20763644576072693){
  if(i4<1.6391277313232422e-05){
   if(i18<0.0015713473549112678){
    if(i34<0.0003162538632750511){
     s0+=18078.0;
     s1+=490.0;
    } else {
     s0+=66371.0;
     s1+=184.0;
    }
   } else {
    if(i17<0.9981770515441895){
     s0+=16196.0;
     s1+=403.0;
    } else {
     s0+=5788.0;
     s1+=2536.0;
    }
   }
  } else {
   if(i15<1.1143057346343994){
    if(i33<1.0154001712799072){
     s0+=4563.0;
     s1+=877.0;
    } else {
     s0+=309.0;
     s1+=368.0;
    }
   } else {
    if(i25<0.03285103663802147){
     s0+=211.0;
     s1+=152.0;
    } else {
     s0+=95.0;
     s1+=560.0;
    }
   }
  }
 } else {
  if(i27<0.002562624868005514){
   if(i55<1.001489520072937){
    s0+=137.0;
   } else {
    if(i26<-5.924701690673828e-05){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i6<0.006298738531768322){
    if(i35<0.001176189398393035){
     s0+=20.0;
     s1+=32.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i77<0.1322074830532074){
     s1+=1156.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019342033192515373){
  if(i12<0.00024218179169110954){
   if(i0<0.0008127093315124512){
    if(i6<0.00399169372394681){
     s0+=170.0;
    } else {
     s0+=3.0;
     s1+=131.0;
    }
   } else {
    if(i51<-1.5273089957190678e-05){
     s0+=18.0;
    } else {
     s1+=2659.0;
    }
   }
  } else {
   s0+=4097.0;
  }
 } else {
  if(i24<0.09608951210975647){
   if(i62<0.00041584117570891976){
    if(i30<1.2648619413375854){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i49<2.0348402358649764e-06){
     s1+=360.0;
    } else {
     s0+=78.0;
     s1+=225.0;
    }
   }
  } else {
   if(i33<0.8267439007759094){
    s0+=2.0;
   } else {
    if(i67<1.5604686268488877e-05){
     s0+=60.0;
     s1+=14348.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i57<-3.6600289604393765e-05){
 if(i53<6.002187728881836e-05){
  if(i2<1.006638765335083){
   if(i50<0.0008804444223642349){
    s1+=9.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i2<1.0101470947265625){
    if(i53<-0.00010904669761657715){
     s0+=12.0;
    } else {
     s1+=396.0;
    }
   } else {
    s1+=6303.0;
   }
  }
 } else {
  s0+=31.0;
 }
} else {
 if(i1<-9.234483877662569e-05){
  if(i14<0.03240281343460083){
   if(i43<1.0321065187454224){
    if(i16<1.0113842487335205){
     s0+=656.0;
     s1+=44.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i70<0.022898251190781593){
     s0+=45.0;
     s1+=28.0;
    } else {
     s0+=16.0;
     s1+=89.0;
    }
   }
  } else {
   if(i36<1.1400820016860962){
    if(i41<-4.071757575729862e-05){
     s0+=216.0;
    } else {
     s0+=5.0;
     s1+=167.0;
    }
   } else {
    if(i22<0.8893301486968994){
     s0+=65.0;
     s1+=56.0;
    } else {
     s0+=67.0;
     s1+=9093.0;
    }
   }
  }
 } else {
  if(i35<0.0007192176999524236){
   if(i3<8.893013000488281e-05){
    if(i27<0.0019596852362155914){
     s0+=75533.0;
     s1+=340.0;
    } else {
     s0+=5900.0;
     s1+=231.0;
    }
   } else {
    if(i32<0.0006638765335083008){
     s1+=362.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i4<-1.1324882507324219e-06){
    if(i23<1.0907573699951172){
     s0+=793.0;
     s1+=469.0;
    } else {
     s0+=22034.0;
     s1+=255.0;
    }
   } else {
    if(i32<0.0003422200679779053){
     s0+=2909.0;
     s1+=4078.0;
    } else {
     s0+=8246.0;
     s1+=2374.0;
    }
   }
  }
 }
}
if(i0<0.0009596943855285645){
 if(i39<0.17584490776062012){
  if(i18<0.001754688797518611){
   if(i1<-7.278913108166307e-05){
    if(i79<0.0022076964378356934){
     s0+=74.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=45.0;
    }
   } else {
    if(i36<1.0776758193969727){
     s0+=23120.0;
     s1+=746.0;
    } else {
     s0+=68906.0;
     s1+=244.0;
    }
   }
  } else {
   if(i5<1.0005526542663574){
    if(i12<0.0002565566392149776){
     s0+=3936.0;
     s1+=702.0;
    } else {
     s0+=10936.0;
     s1+=170.0;
    }
   } else {
    if(i36<1.1161681413650513){
     s0+=886.0;
     s1+=2309.0;
    } else {
     s0+=6251.0;
     s1+=2646.0;
    }
   }
  }
 } else {
  if(i16<0.9826288223266602){
   if(i15<1.0976974964141846){
    s0+=315.0;
   } else {
    if(i25<0.05151606723666191){
     s0+=2.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i45<-3.5793636925518513e-06){
    if(i18<0.011745013296604156){
     s0+=3.0;
     s1+=1000.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i12<0.00027352862525731325){
     s0+=26.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019787342753261328){
  if(i59<0.0007981798844411969){
   if(i32<0.0006200969219207764){
    if(i47<0.9992611408233643){
     s0+=11.0;
    } else {
     s1+=2150.0;
    }
   } else {
    if(i13<1.0380560159683228){
     s0+=170.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i34<0.00117137236520648){
    if(i28<0.0009870973881334066){
     s1+=108.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i50<0.0009232090087607503){
     s1+=10.0;
    } else {
     s0+=1782.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i11<0.09620705246925354){
   if(i72<0.0011259019374847412){
    if(i5<1.0043516159057617){
     s0+=47.0;
     s1+=21.0;
    } else {
     s0+=26.0;
     s1+=464.0;
    }
   } else {
    if(i40<1.2711634635925293){
     s0+=50.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i5<0.9980310201644897){
    if(i31<1.376343846321106){
     s0+=24.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i35<0.0040473733097314835){
     s0+=22.0;
     s1+=13471.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
}
if(i3<6.324052810668945e-05){
 if(i21<1.0172691345214844){
  if(i6<0.004000610671937466){
   if(i18<0.001050544437021017){
    if(i40<1.023447036743164){
     s0+=3411.0;
     s1+=79.0;
    } else {
     s0+=66676.0;
     s1+=131.0;
    }
   } else {
    if(i36<1.0928175449371338){
     s0+=4486.0;
     s1+=944.0;
    } else {
     s0+=17449.0;
     s1+=180.0;
    }
   }
  } else {
   if(i5<1.0001559257507324){
    if(i44<0.033300917595624924){
     s0+=16410.0;
     s1+=423.0;
    } else {
     s0+=17.0;
     s1+=51.0;
    }
   } else {
    if(i11<0.03700593113899231){
     s0+=2267.0;
     s1+=260.0;
    } else {
     s0+=2718.0;
     s1+=4109.0;
    }
   }
  }
 } else {
  if(i6<0.005058640614151955){
   if(i46<-3.1838710583542706e-06){
    if(i32<0.00042998790740966797){
     s0+=40.0;
     s1+=136.0;
    } else {
     s0+=433.0;
    }
   } else {
    s0+=441.0;
   }
  } else {
   if(i20<-0.004607349634170532){
    if(i60<1.1419059038162231){
     s0+=23.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i47<0.9980999231338501){
     s0+=21.0;
    } else {
     s0+=29.0;
     s1+=1642.0;
    }
   }
  }
 }
} else {
 if(i34<0.0023648133501410484){
  if(i12<0.00024223740911111236){
   if(i1<-0.00019192585023120046){
    s0+=61.0;
   } else {
    s1+=2389.0;
   }
  } else {
   if(i21<1.0323317050933838){
    s0+=2050.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i11<0.07503119111061096){
   if(i79<0.0017147362232208252){
    if(i32<0.0004329085350036621){
     s0+=33.0;
     s1+=22.0;
    } else {
     s0+=22.0;
     s1+=254.0;
    }
   } else {
    s0+=30.0;
   }
  } else {
   if(i10<0.9591931104660034){
    if(i33<0.8322516083717346){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i55<1.0110883712768555){
     s0+=34.0;
     s1+=13569.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i26<0.0001850724220275879){
 if(i37<1.007016897201538){
  if(i19<1.0181578397750854){
   if(i35<0.0007093652384355664){
    if(i58<0.00015627997345291078){
     s0+=65184.0;
     s1+=169.0;
    } else {
     s0+=14671.0;
     s1+=368.0;
    }
   } else {
    if(i3<-3.88026237487793e-05){
     s0+=23861.0;
     s1+=637.0;
    } else {
     s0+=8492.0;
     s1+=4552.0;
    }
   }
  } else {
   if(i18<0.00200984557159245){
    if(i74<0.0034682750701904297){
     s0+=375.0;
     s1+=21.0;
    } else {
     s0+=278.0;
     s1+=85.0;
    }
   } else {
    if(i43<1.1379115581512451){
     s0+=244.0;
     s1+=945.0;
    } else {
     s0+=16.0;
     s1+=900.0;
    }
   }
  }
 } else {
  if(i1<-0.0001040207571350038){
   if(i10<0.9737211465835571){
    if(i11<0.06261515617370605){
     s0+=158.0;
     s1+=17.0;
    } else {
     s0+=22.0;
     s1+=63.0;
    }
   } else {
    if(i39<0.030140940099954605){
     s0+=19.0;
     s1+=21.0;
    } else {
     s0+=12.0;
     s1+=2030.0;
    }
   }
  } else {
   if(i14<0.11802685260772705){
    if(i6<0.018537301570177078){
     s0+=1337.0;
     s1+=166.0;
    } else {
     s0+=74.0;
     s1+=125.0;
    }
   } else {
    if(i18<0.0024279430508613586){
     s0+=128.0;
     s1+=13.0;
    } else {
     s0+=125.0;
     s1+=605.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007056489121168852){
  if(i4<1.385807991027832e-05){
   if(i25<0.014315960928797722){
    s0+=408.0;
   } else {
    s1+=92.0;
   }
  } else {
   if(i8<0.00036084651947021484){
    s0+=30.0;
   } else {
    if(i53<5.739927291870117e-05){
     s0+=7.0;
     s1+=13612.0;
    } else {
     s0+=47.0;
    }
   }
  }
 } else {
  s0+=951.0;
 }
}
if(i2<1.0038650035858154){
 if(i11<0.21778300404548645){
  if(i18<0.0017125974409282207){
   if(i7<0.9969318509101868){
    if(i28<0.0003221366787329316){
     s0+=1935.0;
     s1+=516.0;
    } else {
     s0+=20901.0;
     s1+=142.0;
    }
   } else {
    if(i18<0.0011763154761865735){
     s0+=57998.0;
     s1+=115.0;
    } else {
     s0+=8328.0;
     s1+=229.0;
    }
   }
  } else {
   if(i17<0.9979158639907837){
    if(i70<0.020480502396821976){
     s0+=13894.0;
     s1+=282.0;
    } else {
     s0+=200.0;
     s1+=124.0;
    }
   } else {
    if(i27<0.0009228305425494909){
     s0+=1677.0;
     s1+=2645.0;
    } else {
     s0+=6874.0;
     s1+=1625.0;
    }
   }
  }
 } else {
  if(i29<0.0026071323081851006){
   if(i7<1.0116373300552368){
    s0+=88.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i18<0.001340505201369524){
    s0+=50.0;
   } else {
    if(i69<0.07542021572589874){
     s0+=36.0;
     s1+=85.0;
    } else {
     s0+=10.0;
     s1+=952.0;
    }
   }
  }
 }
} else {
 if(i0<0.001240372657775879){
  if(i34<0.0018696142360568047){
   if(i50<0.0010037394240498543){
    if(i10<1.0076128244400024){
     s0+=620.0;
     s1+=119.0;
    } else {
     s0+=52.0;
     s1+=616.0;
    }
   } else {
    if(i31<1.0887261629104614){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=2357.0;
     s1+=1.0;
    }
   }
  } else {
   if(i56<0.02522459626197815){
    if(i23<1.4505159854888916){
     s0+=26.0;
     s1+=201.0;
    } else {
     s0+=145.0;
     s1+=21.0;
    }
   } else {
    if(i61<-0.00859290361404419){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=1504.0;
    }
   }
  }
 } else {
  if(i32<0.0016525983810424805){
   if(i13<1.0178778171539307){
    if(i51<-7.013293725322001e-06){
     s0+=144.0;
    } else {
     s0+=448.0;
     s1+=3917.0;
    }
   } else {
    if(i36<1.150090217590332){
     s0+=31.0;
     s1+=831.0;
    } else {
     s1+=10495.0;
    }
   }
  } else {
   if(i52<0.04990285634994507){
    s0+=493.0;
   } else {
    s1+=47.0;
   }
  }
 }
}
if(i42<1.0019042491912842){
 if(i10<1.0075582265853882){
  if(i24<0.22966212034225464){
   if(i34<0.0010531137231737375){
    if(i37<1.001906394958496){
     s0+=31184.0;
     s1+=2451.0;
    } else {
     s0+=823.0;
     s1+=668.0;
    }
   } else {
    if(i25<0.0901748463511467){
     s0+=72829.0;
     s1+=1051.0;
    } else {
     s1+=123.0;
    }
   }
  } else {
   if(i18<0.00277986703440547){
    if(i16<1.0025421380996704){
     s0+=112.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i59<0.00185749726369977){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=563.0;
    }
   }
  }
 } else {
  if(i10<1.0133640766143799){
   if(i29<0.0011398617643862963){
    if(i5<1.0001920461654663){
     s0+=67.0;
    } else {
     s0+=5.0;
     s1+=862.0;
    }
   } else {
    if(i14<0.19118458032608032){
     s0+=904.0;
     s1+=52.0;
    } else {
     s0+=19.0;
     s1+=114.0;
    }
   }
  } else {
   if(i23<1.7041046619415283){
    if(i27<0.0004465581732802093){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=1679.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
} else {
 if(i0<0.0012296438217163086){
  if(i40<1.1709990501403809){
   if(i1<-7.00049422448501e-05){
    if(i24<0.04130786657333374){
     s0+=304.0;
     s1+=43.0;
    } else {
     s0+=164.0;
     s1+=912.0;
    }
   } else {
    if(i69<0.05231142044067383){
     s0+=6575.0;
     s1+=355.0;
    } else {
     s0+=2351.0;
     s1+=557.0;
    }
   }
  } else {
   if(i61<-0.006528526544570923){
    if(i15<1.1241443157196045){
     s0+=285.0;
     s1+=19.0;
    } else {
     s0+=25.0;
     s1+=71.0;
    }
   } else {
    if(i10<0.984798789024353){
     s0+=69.0;
     s1+=139.0;
    } else {
     s0+=15.0;
     s1+=1427.0;
    }
   }
  }
 } else {
  if(i12<0.000784214586019516){
   if(i11<0.002888798713684082){
    if(i73<-0.10318312048912048){
     s0+=9.0;
     s1+=45.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i46<-6.509711965918541e-05){
     s0+=20.0;
    } else {
     s0+=49.0;
     s1+=13232.0;
    }
   }
  } else {
   s0+=615.0;
  }
 }
}
if(i22<1.0166999101638794){
 if(i2<1.0037099123001099){
  if(i43<1.142219066619873){
   if(i42<1.0000030994415283){
    if(i38<0.23096713423728943){
     s0+=54756.0;
     s1+=422.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   } else {
    if(i6<0.0034037420991808176){
     s0+=45921.0;
     s1+=622.0;
    } else {
     s0+=9984.0;
     s1+=3638.0;
    }
   }
  } else {
   if(i27<0.002563408575952053){
    if(i49<1.7203610696014948e-05){
     s0+=292.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i40<1.1689658164978027){
     s0+=49.0;
     s1+=49.0;
    } else {
     s0+=1.0;
     s1+=763.0;
    }
   }
  }
 } else {
  if(i1<-7.45758879929781e-05){
   if(i42<1.0010008811950684){
    if(i44<0.0032167464960366488){
     s0+=223.0;
     s1+=3.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i41<-0.00016453227726742625){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=117.0;
     s1+=2981.0;
    }
   }
  } else {
   if(i18<0.0018628223333507776){
    if(i8<0.0012446045875549316){
     s0+=2472.0;
     s1+=45.0;
    } else {
     s0+=213.0;
     s1+=236.0;
    }
   } else {
    if(i51<-5.566560503211804e-06){
     s0+=232.0;
     s1+=4.0;
    } else {
     s0+=539.0;
     s1+=1232.0;
    }
   }
  }
 }
} else {
 if(i6<0.0050665270537137985){
  if(i30<1.1176170110702515){
   if(i15<1.0887749195098877){
    if(i0<0.00014832615852355957){
     s0+=6.0;
    } else {
     s1+=429.0;
    }
   } else {
    if(i16<1.0143632888793945){
     s0+=24.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i49<-1.4859018847346306e-05){
    if(i16<1.0152513980865479){
     s0+=27.0;
    } else {
     s1+=278.0;
    }
   } else {
    if(i12<0.00026203718152828515){
     s0+=591.0;
     s1+=168.0;
    } else {
     s0+=846.0;
    }
   }
  }
 } else {
  if(i26<-0.000574946403503418){
   if(i38<0.255715936422348){
    s0+=45.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i8<-0.00047585368156433105){
    if(i31<1.2177454233169556){
     s0+=17.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i23<1.1846036911010742){
     s0+=65.0;
     s1+=1235.0;
    } else {
     s0+=15.0;
     s1+=12168.0;
    }
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i43<1.140138864517212){
  if(i19<1.0181355476379395){
   if(i18<0.0016790914814919233){
    if(i9<0.995873749256134){
     s0+=16677.0;
     s1+=495.0;
    } else {
     s0+=72669.0;
     s1+=323.0;
    }
   } else {
    if(i23<1.1164028644561768){
     s0+=2724.0;
     s1+=2709.0;
    } else {
     s0+=20735.0;
     s1+=1737.0;
    }
   }
  } else {
   if(i23<1.1175415515899658){
    if(i35<0.0005443904083222151){
     s0+=36.0;
    } else {
     s1+=405.0;
    }
   } else {
    if(i40<1.1270010471343994){
     s0+=587.0;
     s1+=38.0;
    } else {
     s0+=230.0;
     s1+=578.0;
    }
   }
  }
 } else {
  if(i6<0.005942846182733774){
   if(i40<1.1426570415496826){
    if(i0<0.00020959973335266113){
     s0+=5.0;
    } else {
     s1+=23.0;
    }
   } else {
    s0+=640.0;
   }
  } else {
   if(i45<0.0004552201135084033){
    if(i20<-0.003907054662704468){
     s0+=20.0;
     s1+=108.0;
    } else {
     s0+=2.0;
     s1+=1533.0;
    }
   } else {
    if(i13<0.9224328398704529){
     s1+=3.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i29<0.0023654235992580652){
  if(i34<0.0012504032347351313){
   if(i28<0.0001760727318469435){
    s0+=83.0;
   } else {
    if(i27<0.000989001477137208){
     s1+=2144.0;
    } else {
     s0+=57.0;
    }
   }
  } else {
   if(i13<1.0211833715438843){
    if(i31<1.0881938934326172){
     s1+=25.0;
    } else {
     s0+=1881.0;
    }
   } else {
    if(i76<0.11598354578018188){
     s0+=1.0;
     s1+=176.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i54<0.8900001049041748){
   if(i25<0.05526094138622284){
    if(i4<6.657838821411133e-05){
     s0+=34.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=50.0;
    }
   } else {
    if(i7<0.87418133020401){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=119.0;
    }
   }
  } else {
   if(i26<-0.000628054141998291){
    if(i35<0.0020166037138551474){
     s0+=27.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i15<1.07395601272583){
     s0+=35.0;
     s1+=200.0;
    } else {
     s0+=27.0;
     s1+=13657.0;
    }
   }
  }
 }
}
if(i5<1.0026252269744873){
 if(i33<1.0215789079666138){
  if(i14<0.2314072847366333){
   if(i6<0.003651426872238517){
    if(i19<0.9956917762756348){
     s0+=20888.0;
     s1+=624.0;
    } else {
     s0+=65826.0;
     s1+=404.0;
    }
   } else {
    if(i23<1.1164028644561768){
     s0+=2961.0;
     s1+=2380.0;
    } else {
     s0+=20078.0;
     s1+=750.0;
    }
   }
  } else {
   if(i41<-8.014089871721808e-06){
    if(i36<1.2029259204864502){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=261.0;
    }
   } else {
    s0+=28.0;
   }
  }
 } else {
  if(i6<0.005223395302891731){
   if(i43<1.0539169311523438){
    s1+=5.0;
   } else {
    if(i18<0.0014126116875559092){
     s0+=621.0;
     s1+=12.0;
    } else {
     s0+=196.0;
     s1+=40.0;
    }
   }
  } else {
   if(i3<-5.1409006118774414e-05){
    if(i40<1.1232221126556396){
     s0+=43.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i4<3.8236379623413086e-05){
     s0+=19.0;
     s1+=1068.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
} else {
 if(i3<8.183717727661133e-05){
  if(i11<0.17091071605682373){
   if(i6<0.00413128174841404){
    if(i38<0.16427960991859436){
     s0+=3378.0;
     s1+=70.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    if(i3<3.039836883544922e-06){
     s0+=764.0;
     s1+=256.0;
    } else {
     s0+=533.0;
     s1+=1515.0;
    }
   }
  } else {
   if(i12<0.0007047067629173398){
    if(i35<0.0005096028908155859){
     s0+=48.0;
     s1+=1.0;
    } else {
     s0+=112.0;
     s1+=1708.0;
    }
   } else {
    s0+=61.0;
   }
  }
 } else {
  if(i30<1.1688169240951538){
   if(i23<1.1180615425109863){
    s1+=1942.0;
   } else {
    s0+=1002.0;
   }
  } else {
   if(i2<1.0049374103546143){
    if(i35<0.0013859024038538337){
     s0+=31.0;
    } else {
     s0+=13.0;
     s1+=70.0;
    }
   } else {
    if(i54<0.8800005912780762){
     s0+=13.0;
     s1+=120.0;
    } else {
     s0+=25.0;
     s1+=12912.0;
    }
   }
  }
 }
}
if(i2<1.0038522481918335){
 if(i43<1.1403067111968994){
  if(i19<1.0182666778564453){
   if(i32<9.566545486450195e-05){
    if(i58<0.00018690130673348904){
     s0+=62727.0;
     s1+=371.0;
    } else {
     s0+=17229.0;
     s1+=646.0;
    }
   } else {
    if(i57<3.779801045311615e-05){
     s0+=17264.0;
     s1+=873.0;
    } else {
     s0+=13942.0;
     s1+=2857.0;
    }
   }
  } else {
   if(i18<0.002111473586410284){
    if(i40<1.1239633560180664){
     s0+=321.0;
    } else {
     s0+=118.0;
     s1+=57.0;
    }
   } else {
    if(i34<0.001488079666160047){
     s0+=13.0;
     s1+=309.0;
    } else {
     s0+=332.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i39<0.09994766116142273){
   if(i18<0.0015935597475618124){
    s0+=409.0;
   } else {
    if(i3<-2.8789043426513672e-05){
     s0+=59.0;
     s1+=8.0;
    } else {
     s1+=136.0;
    }
   }
  } else {
   if(i40<1.6811659336090088){
    if(i41<-2.2916815396456514e-06){
     s0+=22.0;
     s1+=1076.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
} else {
 if(i12<0.0007027651881799102){
  if(i22<1.0181212425231934){
   if(i35<0.0004377959412522614){
    if(i16<1.0101463794708252){
     s0+=1104.0;
     s1+=2.0;
    } else {
     s1+=216.0;
    }
   } else {
    if(i8<0.0012254714965820312){
     s0+=464.0;
     s1+=1465.0;
    } else {
     s0+=115.0;
     s1+=3089.0;
    }
   }
  } else {
   if(i11<0.0695250928401947){
    if(i20<0.0008189678192138672){
     s0+=32.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=83.0;
    }
   } else {
    if(i18<0.0005586098995991051){
     s0+=25.0;
     s1+=63.0;
    } else {
     s0+=44.0;
     s1+=12514.0;
    }
   }
  }
 } else {
  if(i39<0.12858669459819794){
   s0+=2530.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i2<1.003852128982544){
 if(i1<-9.171824785880744e-05){
  if(i61<-0.006951063871383667){
   if(i11<0.10056006908416748){
    if(i35<0.0031821029260754585){
     s0+=662.0;
     s1+=22.0;
    } else {
     s0+=27.0;
     s1+=33.0;
    }
   } else {
    if(i26<-0.0009497404098510742){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=65.0;
    }
   }
  } else {
   if(i11<0.04713684320449829){
    if(i70<0.030077090486884117){
     s0+=92.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=60.0;
    }
   } else {
    if(i36<1.1400820016860962){
     s0+=72.0;
     s1+=8.0;
    } else {
     s0+=28.0;
     s1+=1372.0;
    }
   }
  }
 } else {
  if(i33<1.0197274684906006){
   if(i23<1.1162974834442139){
    if(i35<0.000721935008186847){
     s0+=26251.0;
     s1+=373.0;
    } else {
     s0+=3388.0;
     s1+=2737.0;
    }
   } else {
    if(i5<1.0024375915527344){
     s0+=78044.0;
     s1+=588.0;
    } else {
     s0+=2061.0;
     s1+=637.0;
    }
   }
  } else {
   if(i0<0.00022363662719726562){
    if(i47<1.0007331371307373){
     s0+=664.0;
     s1+=65.0;
    } else {
     s0+=469.0;
     s1+=248.0;
    }
   } else {
    if(i18<0.0011668252991512418){
     s0+=163.0;
    } else {
     s0+=90.0;
     s1+=543.0;
    }
   }
  }
 }
} else {
 if(i6<0.003986856434494257){
  if(i0<0.0018033385276794434){
   if(i53<9.119510650634766e-06){
    if(i17<1.0060365200042725){
     s0+=400.0;
     s1+=33.0;
    } else {
     s0+=29.0;
     s1+=200.0;
    }
   } else {
    if(i53<1.1980533599853516e-05){
     s0+=471.0;
     s1+=34.0;
    } else {
     s0+=2758.0;
     s1+=6.0;
    }
   }
  } else {
   if(i42<1.0018928050994873){
    if(i0<0.002705872058868408){
     s0+=151.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i49<-1.4861394447507337e-05){
     s0+=24.0;
     s1+=695.0;
    } else {
     s0+=60.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i12<0.0007051074644550681){
   if(i1<-7.455255399690941e-05){
    if(i10<0.9755880832672119){
     s0+=18.0;
     s1+=23.0;
    } else {
     s0+=29.0;
     s1+=14910.0;
    }
   } else {
    if(i58<0.00012152485578553751){
     s0+=27.0;
     s1+=1178.0;
    } else {
     s0+=113.0;
     s1+=635.0;
    }
   }
  } else {
   s0+=232.0;
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i6<0.00747277494519949){
  if(i34<0.0010205329162999988){
   if(i8<0.00013893842697143555){
    if(i55<1.000359058380127){
     s0+=20715.0;
     s1+=270.0;
    } else {
     s0+=7559.0;
     s1+=1175.0;
    }
   } else {
    if(i18<0.0017914740601554513){
     s0+=2350.0;
     s1+=84.0;
    } else {
     s0+=1697.0;
     s1+=1595.0;
    }
   }
  } else {
   if(i22<1.0192067623138428){
    if(i50<0.0016371016390621662){
     s0+=60732.0;
     s1+=55.0;
    } else {
     s0+=15167.0;
     s1+=798.0;
    }
   } else {
    if(i2<1.003077507019043){
     s0+=548.0;
     s1+=61.0;
    } else {
     s0+=86.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i60<1.0512807369232178){
   if(i0<-0.00023692846298217773){
    if(i70<0.016093933954834938){
     s0+=4200.0;
     s1+=164.0;
    } else {
     s0+=499.0;
     s1+=203.0;
    }
   } else {
    if(i11<0.05525168776512146){
     s0+=275.0;
     s1+=128.0;
    } else {
     s0+=66.0;
     s1+=724.0;
    }
   }
  } else {
   if(i43<1.113352656364441){
    if(i8<9.083747863769531e-05){
     s0+=221.0;
     s1+=35.0;
    } else {
     s0+=115.0;
     s1+=580.0;
    }
   } else {
    if(i6<0.008922940120100975){
     s0+=20.0;
     s1+=216.0;
    } else {
     s0+=4.0;
     s1+=1628.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019787342753261328){
  if(i59<0.0007060554344207048){
   if(i12<0.0002460971591062844){
    if(i4<0.0002218484878540039){
     s1+=2192.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=125.0;
   }
  } else {
   if(i51<-2.6980426355294185e-06){
    if(i34<0.0007551562739536166){
     s1+=7.0;
    } else {
     s0+=1821.0;
     s1+=5.0;
    }
   } else {
    if(i67<-2.2244266801862977e-06){
     s0+=1.0;
     s1+=152.0;
    } else {
     s0+=66.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i11<0.03279539942741394){
   if(i42<1.0024176836013794){
    if(i45<-0.0006078430451452732){
     s1+=3.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i55<1.0052781105041504){
     s0+=5.0;
     s1+=72.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  } else {
   if(i30<1.1515507698059082){
    if(i49<5.426473762781825e-06){
     s1+=25.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i62<0.01486753486096859){
     s0+=53.0;
     s1+=14050.0;
    } else {
     s0+=6.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i2<1.0038702487945557){
 if(i1<-9.09008231246844e-05){
  if(i14<0.04118296504020691){
   if(i43<1.0649352073669434){
    if(i73<-0.20554661750793457){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=723.0;
     s1+=34.0;
    }
   } else {
    if(i15<1.1126587390899658){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  } else {
   if(i51<-5.8039368013851345e-06){
    s0+=79.0;
   } else {
    if(i66<-0.017305642366409302){
     s0+=34.0;
     s1+=15.0;
    } else {
     s0+=50.0;
     s1+=1383.0;
    }
   }
  }
 } else {
  if(i35<0.0007107793353497982){
   if(i37<1.0061386823654175){
    if(i58<0.00016787173808552325){
     s0+=65509.0;
     s1+=203.0;
    } else {
     s0+=13720.0;
     s1+=348.0;
    }
   } else {
    if(i76<0.04509156942367554){
     s1+=14.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i17<0.9980596303939819){
    if(i15<1.1930971145629883){
     s0+=20682.0;
     s1+=336.0;
    } else {
     s0+=7.0;
     s1+=51.0;
    }
   } else {
    if(i0<-0.0006050467491149902){
     s0+=4630.0;
     s1+=264.0;
    } else {
     s0+=6763.0;
     s1+=3897.0;
    }
   }
  }
 }
} else {
 if(i45<-0.00026198039995506406){
  if(i46<-6.022286106599495e-05){
   s0+=57.0;
  } else {
   if(i12<0.0007076200563460588){
    if(i6<0.00406037550419569){
     s0+=128.0;
     s1+=207.0;
    } else {
     s0+=39.0;
     s1+=13940.0;
    }
   } else {
    s0+=117.0;
   }
  }
 } else {
  if(i17<1.010814905166626){
   if(i29<0.0011810443829745054){
    if(i34<0.00021085518528707325){
     s0+=593.0;
    } else {
     s0+=7.0;
     s1+=1115.0;
    }
   } else {
    if(i25<0.014562276192009449){
     s0+=3172.0;
     s1+=39.0;
    } else {
     s0+=61.0;
     s1+=436.0;
    }
   }
  } else {
   if(i12<0.0009218913619406521){
    if(i2<1.0076416730880737){
     s0+=21.0;
     s1+=101.0;
    } else {
     s0+=10.0;
     s1+=1972.0;
    }
   } else {
    s0+=32.0;
   }
  }
 }
}
if(i5<1.0026319026947021){
 if(i60<1.140348196029663){
  if(i8<0.000292360782623291){
   if(i39<0.011369064450263977){
    if(i18<0.000913649273570627){
     s0+=47702.0;
     s1+=72.0;
    } else {
     s0+=13607.0;
     s1+=299.0;
    }
   } else {
    if(i0<-0.0006769895553588867){
     s0+=27802.0;
     s1+=373.0;
    } else {
     s0+=14119.0;
     s1+=2124.0;
    }
   }
  } else {
   if(i25<0.009541744366288185){
    if(i7<1.00752854347229){
     s0+=5264.0;
     s1+=73.0;
    } else {
     s0+=753.0;
     s1+=178.0;
    }
   } else {
    if(i0<-0.0003889799118041992){
     s0+=804.0;
     s1+=92.0;
    } else {
     s0+=350.0;
     s1+=1888.0;
    }
   }
  }
 } else {
  if(i39<0.11835344135761261){
   if(i41<-1.0409145943413023e-05){
    if(i49<4.978934157406911e-05){
     s1+=81.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=231.0;
   }
  } else {
   if(i35<0.0005884186830371618){
    s0+=3.0;
   } else {
    s1+=475.0;
   }
  }
 }
} else {
 if(i1<-7.40231407689862e-05){
  if(i47<0.9986459016799927){
   s0+=139.0;
  } else {
   if(i43<1.0259605646133423){
    if(i24<0.07313579320907593){
     s0+=344.0;
     s1+=43.0;
    } else {
     s0+=28.0;
     s1+=137.0;
    }
   } else {
    if(i53<5.6624412536621094e-05){
     s0+=179.0;
     s1+=15675.0;
    } else {
     s0+=52.0;
    }
   }
  }
 } else {
  if(i25<0.014595618471503258){
   if(i29<0.001203361083753407){
    if(i23<1.067186713218689){
     s0+=737.0;
    } else {
     s1+=1179.0;
    }
   } else {
    if(i66<-0.0016247034072875977){
     s0+=361.0;
     s1+=86.0;
    } else {
     s0+=3297.0;
     s1+=51.0;
    }
   }
  } else {
   if(i49<1.5256689948728308e-05){
    if(i23<1.629280686378479){
     s0+=32.0;
     s1+=1085.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i14<0.12450215220451355){
     s0+=624.0;
     s1+=85.0;
    } else {
     s0+=168.0;
     s1+=221.0;
    }
   }
  }
 }
}
if(i4<2.4378299713134766e-05){
 if(i35<0.0007347335340455174){
  if(i50<0.0020835367031395435){
   if(i34<0.00029597466345876455){
    if(i10<0.9968173503875732){
     s0+=1671.0;
     s1+=262.0;
    } else {
     s0+=15927.0;
     s1+=89.0;
    }
   } else {
    if(i27<0.0019639551173895597){
     s0+=54727.0;
     s1+=11.0;
    } else {
     s0+=5238.0;
     s1+=59.0;
    }
   }
  } else {
   if(i8<0.00043976306915283203){
    if(i17<1.0008076429367065){
     s0+=2800.0;
     s1+=29.0;
    } else {
     s0+=287.0;
     s1+=71.0;
    }
   } else {
    if(i6<0.0057051582261919975){
     s1+=35.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i36<1.0903575420379639){
   if(i36<1.0547914505004883){
    if(i7<0.9959286451339722){
     s0+=16.0;
     s1+=23.0;
    } else {
     s0+=2129.0;
     s1+=23.0;
    }
   } else {
    if(i2<0.9976165294647217){
     s0+=636.0;
     s1+=105.0;
    } else {
     s0+=179.0;
     s1+=2608.0;
    }
   }
  } else {
   if(i11<0.19212472438812256){
    if(i2<1.002091407775879){
     s0+=26400.0;
     s1+=1051.0;
    } else {
     s0+=278.0;
     s1+=438.0;
    }
   } else {
    if(i25<0.02986258640885353){
     s0+=223.0;
     s1+=119.0;
    } else {
     s0+=52.0;
     s1+=861.0;
    }
   }
  }
 }
} else {
 if(i0<0.001368105411529541){
  if(i59<0.0025902236811816692){
   if(i53<6.496906280517578e-06){
    if(i7<1.0060851573944092){
     s0+=248.0;
     s1+=98.0;
    } else {
     s0+=69.0;
     s1+=864.0;
    }
   } else {
    if(i28<0.0018963036127388477){
     s0+=3312.0;
     s1+=263.0;
    } else {
     s0+=856.0;
     s1+=742.0;
    }
   }
  } else {
   if(i11<0.049838751554489136){
    if(i57<0.0002985490136779845){
     s0+=121.0;
     s1+=93.0;
    } else {
     s0+=262.0;
     s1+=26.0;
    }
   } else {
    if(i45<-0.000227213793550618){
     s0+=46.0;
     s1+=1731.0;
    } else {
     s0+=217.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i26<0.0003051161766052246){
   if(i51<-7.331736469495809e-06){
    s0+=454.0;
   } else {
    if(i28<0.001554011949338019){
     s0+=307.0;
     s1+=700.0;
    } else {
     s0+=45.0;
     s1+=2742.0;
    }
   }
  } else {
   if(i49<1.7571921489434317e-05){
    if(i5<1.002966284751892){
     s0+=3.0;
     s1+=112.0;
    } else {
     s0+=6.0;
     s1+=10593.0;
    }
   } else {
    if(i34<0.004543054848909378){
     s0+=18.0;
    } else {
     s1+=243.0;
    }
   }
  }
 }
}
if(i4<2.4378299713134766e-05){
 if(i14<0.2076481580734253){
  if(i22<1.0164942741394043){
   if(i32<7.385015487670898e-05){
    if(i35<0.0005738260224461555){
     s0+=54716.0;
     s1+=94.0;
    } else {
     s0+=21382.0;
     s1+=713.0;
    }
   } else {
    if(i34<0.0010307810734957457){
     s0+=5223.0;
     s1+=2150.0;
    } else {
     s0+=28240.0;
     s1+=1329.0;
    }
   }
  } else {
   if(i37<1.000307321548462){
    if(i30<1.0905578136444092){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=487.0;
     s1+=1.0;
    }
   } else {
    if(i67<5.634290573652834e-06){
     s0+=171.0;
     s1+=585.0;
    } else {
     s0+=130.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i35<0.0007738601416349411){
   if(i41<-1.3237118764664046e-05){
    if(i47<1.000367283821106){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i11<0.20821988582611084){
     s1+=1.0;
    } else {
     s0+=146.0;
     s1+=1.0;
    }
   }
  } else {
   if(i25<0.03057049959897995){
    if(i77<0.08339488506317139){
     s0+=4.0;
     s1+=39.0;
    } else {
     s0+=55.0;
     s1+=15.0;
    }
   } else {
    if(i4<-4.4345855712890625e-05){
     s0+=2.0;
     s1+=4.0;
    } else {
     s1+=741.0;
    }
   }
  }
 }
} else {
 if(i7<1.0164823532104492){
  if(i1<-7.460542838089168e-05){
   if(i35<0.003881420474499464){
    if(i10<0.9754949808120728){
     s0+=324.0;
     s1+=97.0;
    } else {
     s0+=393.0;
     s1+=3610.0;
    }
   } else {
    if(i1<-0.00017569521151017398){
     s1+=7.0;
    } else {
     s0+=157.0;
    }
   }
  } else {
   if(i6<0.002797000575810671){
    if(i49<-1.489431451773271e-05){
     s0+=24.0;
     s1+=189.0;
    } else {
     s0+=3459.0;
     s1+=11.0;
    }
   } else {
    if(i34<0.001144275302067399){
     s0+=69.0;
     s1+=1010.0;
    } else {
     s0+=1289.0;
     s1+=773.0;
    }
   }
  }
 } else {
  if(i51<-6.076356385165127e-06){
   if(i8<0.0024660825729370117){
    s0+=142.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i7<1.0226455926895142){
    if(i26<-0.00025206804275512695){
     s0+=60.0;
     s1+=32.0;
    } else {
     s0+=116.0;
     s1+=1366.0;
    }
   } else {
    if(i12<0.0008866717107594013){
     s0+=28.0;
     s1+=11438.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i11<0.21786090731620789){
  if(i15<1.1403480768203735){
   if(i21<1.0162476301193237){
    if(i18<0.0017227325588464737){
     s0+=88320.0;
     s1+=920.0;
    } else {
     s0+=22047.0;
     s1+=3402.0;
    }
   } else {
    if(i31<1.0905578136444092){
     s0+=4.0;
     s1+=364.0;
    } else {
     s0+=733.0;
     s1+=185.0;
    }
   }
  } else {
   if(i58<0.0012404767330735922){
    if(i46<-3.4006416171905585e-06){
     s0+=142.0;
     s1+=225.0;
    } else {
     s0+=703.0;
     s1+=7.0;
    }
   } else {
    if(i43<1.0703580379486084){
     s0+=101.0;
     s1+=49.0;
    } else {
     s0+=17.0;
     s1+=375.0;
    }
   }
  }
 } else {
  if(i46<-3.958295565098524e-06){
   if(i18<0.001352360239252448){
    if(i14<0.23697003722190857){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i77<0.10886543989181519){
     s0+=11.0;
     s1+=941.0;
    } else {
     s0+=29.0;
     s1+=71.0;
    }
   }
  } else {
   if(i61<-0.006553083658218384){
    s1+=5.0;
   } else {
    if(i42<1.0008225440979004){
     s0+=118.0;
    } else {
     s0+=30.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i6<0.0040647853165864944){
  if(i12<0.00020742537162732333){
   if(i26<0.00015157461166381836){
    if(i8<0.0007227063179016113){
     s0+=57.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i67<-1.1152063962072134e-05){
     s0+=11.0;
     s1+=36.0;
    } else {
     s0+=9.0;
     s1+=952.0;
    }
   }
  } else {
   if(i8<0.0026743710041046143){
    if(i10<1.0192155838012695){
     s0+=3875.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i35<0.004016326740384102){
   if(i0<0.0010176301002502441){
    if(i12<0.0006940921302884817){
     s0+=107.0;
     s1+=1529.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i51<-6.5435306169092655e-06){
     s0+=46.0;
    } else {
     s0+=106.0;
     s1+=15041.0;
    }
   }
  } else {
   if(i70<0.04382631182670593){
    s0+=94.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i5<1.0026252269744873){
 if(i11<0.2315579652786255){
  if(i25<0.006601128727197647){
   if(i31<1.0768578052520752){
    if(i58<0.000170599902048707){
     s0+=21044.0;
     s1+=173.0;
    } else {
     s0+=541.0;
     s1+=295.0;
    }
   } else {
    if(i45<-0.0003627765690907836){
     s0+=533.0;
     s1+=34.0;
    } else {
     s0+=46548.0;
     s1+=38.0;
    }
   }
  } else {
   if(i37<0.9995723962783813){
    if(i2<0.9974015951156616){
     s0+=24411.0;
     s1+=68.0;
    } else {
     s0+=2817.0;
     s1+=283.0;
    }
   } else {
    if(i36<1.1161795854568481){
     s0+=1735.0;
     s1+=3040.0;
    } else {
     s0+=12707.0;
     s1+=990.0;
    }
   }
  }
 } else {
  if(i6<0.00509447930380702){
   if(i17<1.0028125047683716){
    if(i20<-0.00314977765083313){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=83.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i32<0.0005701184272766113){
    if(i41<-4.02894238504814e-06){
     s0+=1.0;
     s1+=698.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i31<1.170027494430542){
  if(i32<0.0005622506141662598){
   if(i36<1.058152437210083){
    s0+=113.0;
   } else {
    if(i30<1.122192621231079){
     s1+=2251.0;
    } else {
     s0+=439.0;
     s1+=727.0;
    }
   }
  } else {
   if(i37<1.0100425481796265){
    if(i59<0.0027440953999757767){
     s0+=4216.0;
     s1+=125.0;
    } else {
     s0+=94.0;
     s1+=117.0;
    }
   } else {
    if(i2<1.0052382946014404){
     s0+=69.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i26<-0.000432431697845459){
   if(i25<0.05605419725179672){
    if(i16<0.9982725381851196){
     s0+=755.0;
     s1+=200.0;
    } else {
     s0+=31.0;
     s1+=97.0;
    }
   } else {
    if(i59<0.005365318618714809){
     s0+=79.0;
     s1+=75.0;
    } else {
     s0+=7.0;
     s1+=235.0;
    }
   }
  } else {
   if(i11<0.09530997276306152){
    if(i0<0.0017663240432739258){
     s0+=159.0;
     s1+=204.0;
    } else {
     s0+=5.0;
     s1+=333.0;
    }
   } else {
    if(i26<-0.00018703937530517578){
     s0+=111.0;
     s1+=836.0;
    } else {
     s0+=15.0;
     s1+=13302.0;
    }
   }
  }
 }
}
if(i10<1.0101969242095947){
 if(i18<0.0018935678526759148){
  if(i0<0.001434624195098877){
   if(i29<0.0006452754023484886){
    if(i6<0.002048167632892728){
     s0+=22943.0;
     s1+=209.0;
    } else {
     s0+=5941.0;
     s1+=793.0;
    }
   } else {
    if(i28<0.0018885266035795212){
     s0+=55191.0;
     s1+=8.0;
    } else {
     s0+=10200.0;
     s1+=260.0;
    }
   }
  } else {
   if(i58<4.715299292001873e-05){
    s0+=12.0;
   } else {
    if(i67<-4.717314823210472e-06){
     s1+=112.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i1<-0.00010786704660858959){
   if(i61<-0.007394850254058838){
    if(i39<0.14649644494056702){
     s0+=415.0;
     s1+=44.0;
    } else {
     s0+=37.0;
     s1+=101.0;
    }
   } else {
    if(i34<0.0028036092408001423){
     s0+=97.0;
    } else {
     s0+=51.0;
     s1+=2933.0;
    }
   }
  } else {
   if(i3<-2.3424625396728516e-05){
    if(i27<0.0009964691707864404){
     s0+=360.0;
     s1+=283.0;
    } else {
     s0+=16166.0;
     s1+=601.0;
    }
   } else {
    if(i45<-0.00018042685405816883){
     s0+=710.0;
     s1+=2252.0;
    } else {
     s0+=2800.0;
     s1+=2199.0;
    }
   }
  }
 }
} else {
 if(i27<0.0025562848895788193){
  if(i59<0.0006907683564350009){
   if(i40<1.117383599281311){
    if(i5<1.0065159797668457){
     s0+=4.0;
     s1+=2073.0;
    } else {
     s0+=12.0;
    }
   } else {
    s0+=60.0;
   }
  } else {
   if(i53<1.0311603546142578e-05){
    if(i31<1.116863489151001){
     s0+=23.0;
     s1+=104.0;
    } else {
     s0+=195.0;
     s1+=55.0;
    }
   } else {
    if(i13<1.022826075553894){
     s0+=1177.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i28<0.0019225473515689373){
   if(i9<1.0410789251327515){
    s0+=58.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i1<-3.5951783502241597e-05){
    if(i24<0.08609572052955627){
     s0+=20.0;
     s1+=202.0;
    } else {
     s0+=7.0;
     s1+=12091.0;
    }
   } else {
    if(i23<1.2681288719177246){
     s1+=20.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
}
if(i20<0.0012989342212677002){
 if(i19<1.0197689533233643){
  if(i5<1.002424716949463){
   if(i18<0.0015696636401116848){
    if(i58<0.00016674332437105477){
     s0+=71260.0;
     s1+=206.0;
    } else {
     s0+=14170.0;
     s1+=474.0;
    }
   } else {
    if(i12<0.00025646729045547545){
     s0+=7850.0;
     s1+=2789.0;
    } else {
     s0+=15439.0;
     s1+=645.0;
    }
   }
  } else {
   if(i1<-6.789703911636025e-05){
    if(i15<1.0477511882781982){
     s0+=362.0;
     s1+=24.0;
    } else {
     s0+=307.0;
     s1+=2270.0;
    }
   } else {
    if(i35<0.0005213534459471703){
     s0+=1798.0;
     s1+=7.0;
    } else {
     s0+=3239.0;
     s1+=1373.0;
    }
   }
  }
 } else {
  if(i1<-4.356506178737618e-05){
   if(i38<0.1274847388267517){
    if(i29<0.0012533875415101647){
     s1+=316.0;
    } else {
     s0+=223.0;
     s1+=317.0;
    }
   } else {
    if(i56<0.023714259266853333){
     s0+=15.0;
     s1+=89.0;
    } else {
     s0+=10.0;
     s1+=2105.0;
    }
   }
  } else {
   if(i6<0.006931559182703495){
    if(i28<0.0010530464351177216){
     s1+=12.0;
    } else {
     s0+=666.0;
     s1+=39.0;
    }
   } else {
    if(i67<2.9738739613094367e-06){
     s0+=3.0;
     s1+=252.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007050560088828206){
  if(i3<4.839897155761719e-05){
   if(i60<1.1016671657562256){
    if(i6<0.005765332840383053){
     s0+=286.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i57<6.8682711571455e-06){
     s0+=5.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i53<6.562471389770508e-05){
    if(i35<0.0002833472681231797){
     s0+=36.0;
     s1+=258.0;
    } else {
     s0+=5.0;
     s1+=13090.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  s0+=852.0;
 }
}
if(i14<0.18677985668182373){
 if(i0<0.000995934009552002){
  if(i1<-7.645013829460368e-05){
   if(i15<1.0743229389190674){
    if(i67<3.3044425435946323e-06){
     s0+=180.0;
     s1+=109.0;
    } else {
     s0+=1026.0;
     s1+=36.0;
    }
   } else {
    if(i63<-0.0008844641270115972){
     s0+=102.0;
     s1+=855.0;
    } else {
     s0+=261.0;
     s1+=271.0;
    }
   }
  } else {
   if(i25<0.006658373400568962){
    if(i43<1.0100805759429932){
     s0+=790.0;
     s1+=133.0;
    } else {
     s0+=69310.0;
     s1+=505.0;
    }
   } else {
    if(i5<0.9999030828475952){
     s0+=32081.0;
     s1+=405.0;
    } else {
     s0+=9983.0;
     s1+=3880.0;
    }
   }
  }
 } else {
  if(i16<1.0141267776489258){
   if(i12<0.0007034847512841225){
    if(i24<0.003440648317337036){
     s0+=37.0;
     s1+=20.0;
    } else {
     s0+=202.0;
     s1+=2661.0;
    }
   } else {
    s0+=1576.0;
   }
  } else {
   if(i47<0.9984409809112549){
    s0+=19.0;
   } else {
    if(i4<-9.804964065551758e-06){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=2392.0;
    }
   }
  }
 }
} else {
 if(i1<-4.352737596491352e-05){
  if(i34<0.0019474324071779847){
   s0+=45.0;
  } else {
   if(i46<-1.8215069985672017e-06){
    if(i40<1.0918097496032715){
     s0+=4.0;
     s1+=29.0;
    } else {
     s0+=12.0;
     s1+=12881.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i8<0.0003992915153503418){
   if(i37<1.0031077861785889){
    if(i21<0.9282310009002686){
     s1+=2.0;
    } else {
     s0+=609.0;
     s1+=16.0;
    }
   } else {
    if(i68<0.18018189072608948){
     s0+=20.0;
     s1+=9.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i31<1.1802709102630615){
    if(i67<-3.2530786029383307e-06){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=80.0;
     s1+=1.0;
    }
   } else {
    if(i3<-5.269050598144531e-05){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=247.0;
    }
   }
  }
 }
}
if(i4<2.2113323211669922e-05){
 if(i38<0.19760403037071228){
  if(i9<1.0116021633148193){
   if(i32<7.814168930053711e-05){
    if(i23<1.0905578136444092){
     s0+=18935.0;
     s1+=684.0;
    } else {
     s0+=58540.0;
     s1+=135.0;
    }
   } else {
    if(i34<0.00103671639226377){
     s0+=4812.0;
     s1+=2079.0;
    } else {
     s0+=26630.0;
     s1+=1169.0;
    }
   }
  } else {
   if(i6<0.005069713108241558){
    if(i50<0.0004332546959631145){
     s1+=23.0;
    } else {
     s0+=594.0;
     s1+=41.0;
    }
   } else {
    if(i12<0.0012593516148626804){
     s0+=19.0;
     s1+=464.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i29<0.004037540405988693){
   if(i1<-4.075168908457272e-05){
    if(i55<0.9996383190155029){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=108.0;
    }
   } else {
    if(i5<1.0025423765182495){
     s0+=197.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i52<0.03913838416337967){
    if(i1<-6.591799319721758e-05){
     s1+=11.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i40<1.1281554698944092){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=578.0;
    }
   }
  }
 }
} else {
 if(i2<1.0079662799835205){
  if(i6<0.00402294285595417){
   if(i1<-4.643999636755325e-05){
    if(i30<1.0894038677215576){
     s1+=90.0;
    } else {
     s0+=562.0;
     s1+=33.0;
    }
   } else {
    if(i0<0.0013880133628845215){
     s0+=3574.0;
     s1+=38.0;
    } else {
     s0+=9.0;
     s1+=62.0;
    }
   }
  } else {
   if(i0<2.2232532501220703e-05){
    if(i52<0.25438857078552246){
     s0+=885.0;
     s1+=214.0;
    } else {
     s0+=33.0;
     s1+=200.0;
    }
   } else {
    if(i25<0.014962548390030861){
     s0+=530.0;
     s1+=1148.0;
    } else {
     s0+=355.0;
     s1+=3975.0;
    }
   }
  }
 } else {
  if(i25<0.0035728514194488525){
   if(i12<0.0007348903454840183){
    if(i46<-8.618127321824431e-05){
     s0+=9.0;
    } else {
     s1+=312.0;
    }
   } else {
    s0+=344.0;
   }
  } else {
   if(i44<0.0016861928161233664){
    if(i12<0.0003954681451432407){
     s0+=7.0;
     s1+=3594.0;
    } else {
     s0+=273.0;
     s1+=43.0;
    }
   } else {
    if(i0<0.0013398528099060059){
     s0+=6.0;
     s1+=68.0;
    } else {
     s0+=6.0;
     s1+=9385.0;
    }
   }
  }
 }
}
if(i19<1.0181405544281006){
 if(i3<7.194280624389648e-05){
  if(i35<0.0007447648094967008){
   if(i35<0.0005158118437975645){
    if(i18<0.0019329043570905924){
     s0+=67770.0;
     s1+=109.0;
    } else {
     s0+=43.0;
     s1+=7.0;
    }
   } else {
    if(i36<1.0866682529449463){
     s0+=3405.0;
     s1+=343.0;
    } else {
     s0+=10531.0;
     s1+=132.0;
    }
   }
  } else {
   if(i4<3.635883331298828e-06){
    if(i34<0.0003415649989619851){
     s0+=164.0;
     s1+=522.0;
    } else {
     s0+=23499.0;
     s1+=749.0;
    }
   } else {
    if(i29<0.00022111920407041907){
     s0+=2353.0;
     s1+=1.0;
    } else {
     s0+=5936.0;
     s1+=4284.0;
    }
   }
  }
 } else {
  if(i34<0.002127867192029953){
   if(i12<0.00022635620553046465){
    if(i61<0.0019672811031341553){
     s0+=11.0;
     s1+=1316.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i51<-1.3685084923054092e-06){
     s0+=1159.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i13<0.9566088318824768){
    if(i46<-1.6251926354016177e-05){
     s0+=5.0;
     s1+=123.0;
    } else {
     s0+=47.0;
     s1+=13.0;
    }
   } else {
    if(i27<0.0024555157870054245){
     s0+=8.0;
    } else {
     s0+=34.0;
     s1+=2713.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007079977658577263){
  if(i3<1.8894672393798828e-05){
   if(i14<0.19997680187225342){
    if(i49<3.091005783062428e-05){
     s0+=381.0;
     s1+=212.0;
    } else {
     s0+=323.0;
     s1+=18.0;
    }
   } else {
    if(i57<2.8849080990767106e-05){
     s0+=35.0;
    } else {
     s0+=26.0;
     s1+=356.0;
    }
   }
  } else {
   if(i1<-3.2701733289286494e-05){
    if(i11<0.06751036643981934){
     s0+=34.0;
     s1+=64.0;
    } else {
     s0+=119.0;
     s1+=13269.0;
    }
   } else {
    if(i6<0.006514418870210648){
     s0+=102.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=116.0;
    }
   }
  }
 } else {
  s0+=497.0;
 }
}
if(i13<1.0129852294921875){
 if(i4<1.901388168334961e-05){
  if(i8<0.0002148747444152832){
   if(i38<0.20560264587402344){
    if(i34<0.001045377692207694){
     s0+=29021.0;
     s1+=1714.0;
    } else {
     s0+=69357.0;
     s1+=613.0;
    }
   } else {
    if(i80<0.1449856460094452){
     s0+=2.0;
     s1+=156.0;
    } else {
     s0+=128.0;
     s1+=89.0;
    }
   }
  } else {
   if(i6<0.004107747692614794){
    if(i60<1.0122380256652832){
     s0+=265.0;
     s1+=62.0;
    } else {
     s0+=7617.0;
     s1+=90.0;
    }
   } else {
    if(i16<0.9960673451423645){
     s0+=827.0;
     s1+=210.0;
    } else {
     s0+=306.0;
     s1+=1400.0;
    }
   }
  }
 } else {
  if(i1<-6.781799311283976e-05){
   if(i25<0.02990259975194931){
    if(i35<0.0012768891174346209){
     s0+=105.0;
     s1+=544.0;
    } else {
     s0+=675.0;
     s1+=163.0;
    }
   } else {
    if(i74<-0.015811264514923096){
     s0+=207.0;
     s1+=206.0;
    } else {
     s0+=41.0;
     s1+=3282.0;
    }
   }
  } else {
   if(i3<9.196996688842773e-05){
    if(i29<0.0002522264840081334){
     s0+=1816.0;
    } else {
     s0+=3839.0;
     s1+=1510.0;
    }
   } else {
    if(i32<0.0016551315784454346){
     s0+=82.0;
     s1+=620.0;
    } else {
     s0+=149.0;
    }
   }
  }
 }
} else {
 if(i29<0.0026141302660107613){
  if(i27<0.0010618753731250763){
   if(i41<-8.164375685737468e-06){
    s1+=1964.0;
   } else {
    s0+=71.0;
   }
  } else {
   if(i39<0.04160426929593086){
    if(i25<0.017452459782361984){
     s0+=1055.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   } else {
    if(i40<1.4367010593414307){
     s1+=31.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i0<0.00015395879745483398){
   if(i6<0.006483031436800957){
    s0+=254.0;
   } else {
    s1+=84.0;
   }
  } else {
   if(i6<0.003537735901772976){
    if(i17<1.010509729385376){
     s0+=143.0;
     s1+=40.0;
    } else {
     s1+=159.0;
    }
   } else {
    if(i2<1.004223108291626){
     s0+=11.0;
     s1+=261.0;
    } else {
     s0+=1.0;
     s1+=11665.0;
    }
   }
  }
 }
}
if(i10<1.0124726295471191){
 if(i14<0.19054746627807617){
  if(i4<1.8298625946044922e-05){
   if(i35<0.0006896546692587435){
    if(i7<0.9955506324768066){
     s0+=15265.0;
     s1+=214.0;
    } else {
     s0+=62193.0;
     s1+=181.0;
    }
   } else {
    if(i8<-0.00011807680130004883){
     s0+=22960.0;
     s1+=392.0;
    } else {
     s0+=7271.0;
     s1+=3060.0;
    }
   }
  } else {
   if(i63<-0.0007766159251332283){
    if(i74<0.0009181797504425049){
     s0+=202.0;
     s1+=1083.0;
    } else {
     s0+=1178.0;
     s1+=945.0;
    }
   } else {
    if(i6<0.003633651416748762){
     s0+=4867.0;
     s1+=219.0;
    } else {
     s0+=1643.0;
     s1+=1973.0;
    }
   }
  }
 } else {
  if(i30<1.1731728315353394){
   if(i79<0.006198704242706299){
    if(i74<-0.0019533634185791016){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=345.0;
    }
   } else {
    if(i70<-0.005932323634624481){
     s0+=6.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i27<0.00256150308996439){
    if(i46<-5.0382159315631725e-06){
     s0+=9.0;
     s1+=40.0;
    } else {
     s0+=106.0;
     s1+=6.0;
    }
   } else {
    if(i1<-3.7267884181346744e-05){
     s0+=23.0;
     s1+=2898.0;
    } else {
     s0+=138.0;
     s1+=202.0;
    }
   }
  }
 }
} else {
 if(i32<0.0017090141773223877){
  if(i12<0.0007059713825583458){
   if(i23<1.7041046619415283){
    if(i5<0.9995262622833252){
     s0+=23.0;
     s1+=55.0;
    } else {
     s0+=60.0;
     s1+=12914.0;
    }
   } else {
    s0+=18.0;
   }
  } else {
   s0+=250.0;
  }
 } else {
  s0+=105.0;
 }
}
if(i3<6.562471389770508e-05){
 if(i33<1.0215541124343872){
  if(i1<-9.625111852074042e-05){
   if(i43<1.0294650793075562){
    if(i69<0.08978673070669174){
     s0+=150.0;
     s1+=63.0;
    } else {
     s0+=424.0;
     s1+=18.0;
    }
   } else {
    if(i25<0.029887806624174118){
     s0+=65.0;
     s1+=89.0;
    } else {
     s0+=32.0;
     s1+=1027.0;
    }
   }
  } else {
   if(i6<0.0036110891960561275){
    if(i34<0.0005491618067026138){
     s0+=25464.0;
     s1+=797.0;
    } else {
     s0+=63673.0;
     s1+=215.0;
    }
   } else {
    if(i13<1.005577564239502){
     s0+=22437.0;
     s1+=2808.0;
    } else {
     s0+=1138.0;
     s1+=1063.0;
    }
   }
  }
 } else {
  if(i6<0.005096016451716423){
   if(i28<0.0006241697119548917){
    s1+=16.0;
   } else {
    if(i2<1.003006935119629){
     s0+=893.0;
     s1+=34.0;
    } else {
     s0+=137.0;
     s1+=71.0;
    }
   }
  } else {
   if(i45<-7.754938997095451e-05){
    if(i11<0.08332884311676025){
     s0+=43.0;
     s1+=17.0;
    } else {
     s0+=46.0;
     s1+=1709.0;
    }
   } else {
    if(i4<3.796815872192383e-05){
     s0+=6.0;
     s1+=22.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
} else {
 if(i6<0.003903256729245186){
  if(i12<0.0002278670435771346){
   if(i8<0.000708162784576416){
    if(i59<0.0007454957813024521){
     s1+=3.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i17<1.0073468685150146){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=855.0;
    }
   }
  } else {
   if(i5<1.0086405277252197){
    s0+=1635.0;
   } else {
    s1+=33.0;
   }
  }
 } else {
  if(i27<0.002325113397091627){
   if(i67<8.30839326226851e-08){
    if(i50<0.0010253018699586391){
     s1+=1652.0;
    } else {
     s0+=92.0;
     s1+=2.0;
    }
   } else {
    if(i63<-0.0026312447153031826){
     s1+=1.0;
    } else {
     s0+=187.0;
    }
   }
  } else {
   if(i10<0.9747106432914734){
    if(i27<0.015185687690973282){
     s0+=45.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=71.0;
    }
   } else {
    if(i23<1.629280686378479){
     s0+=16.0;
     s1+=13095.0;
    } else {
     s0+=46.0;
     s1+=587.0;
    }
   }
  }
 }
}
if(i0<0.0009596943855285645){
 if(i44<0.008437560871243477){
  if(i8<0.00031262636184692383){
   if(i18<0.001491042086854577){
    if(i13<0.9949581623077393){
     s0+=12846.0;
     s1+=334.0;
    } else {
     s0+=68103.0;
     s1+=275.0;
    }
   } else {
    if(i0<-0.0004690885543823242){
     s0+=18835.0;
     s1+=507.0;
    } else {
     s0+=2587.0;
     s1+=1738.0;
    }
   }
  } else {
   if(i45<-0.00020180299179628491){
    if(i23<1.1203181743621826){
     s0+=43.0;
     s1+=893.0;
    } else {
     s0+=1396.0;
     s1+=1312.0;
    }
   } else {
    if(i10<1.0012396574020386){
     s0+=2219.0;
     s1+=641.0;
    } else {
     s0+=6426.0;
     s1+=498.0;
    }
   }
  }
 } else {
  if(i61<-0.006048828363418579){
   if(i18<0.00843917764723301){
    if(i76<0.06656023859977722){
     s0+=1394.0;
     s1+=74.0;
    } else {
     s0+=67.0;
     s1+=71.0;
    }
   } else {
    if(i41<-3.3252865250688046e-05){
     s0+=4.0;
     s1+=93.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i4<5.781650543212891e-06){
    if(i35<0.0019693130161613226){
     s0+=453.0;
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=197.0;
    }
   } else {
    if(i15<1.1157877445220947){
     s0+=49.0;
     s1+=20.0;
    } else {
     s0+=50.0;
     s1+=1263.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i23<1.116804838180542){
   if(i34<0.00019530199642758816){
    s0+=66.0;
   } else {
    s1+=2318.0;
   }
  } else {
   s0+=1933.0;
  }
 } else {
  if(i9<0.9392907619476318){
   if(i5<1.0061638355255127){
    if(i34<0.017971809953451157){
     s0+=47.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   } else {
    if(i1<-0.00019618905207607895){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=85.0;
    }
   }
  } else {
   if(i24<0.10271039605140686){
    if(i72<0.0008273422718048096){
     s0+=3.0;
     s1+=550.0;
    } else {
     s0+=44.0;
     s1+=12.0;
    }
   } else {
    if(i16<1.0064184665679932){
     s0+=11.0;
     s1+=1730.0;
    } else {
     s1+=11618.0;
    }
   }
  }
 }
}
if(i2<1.0037498474121094){
 if(i11<0.2195587158203125){
  if(i9<1.0110883712768555){
   if(i5<1.0023252964019775){
    if(i36<1.0903575420379639){
     s0+=28304.0;
     s1+=2663.0;
    } else {
     s0+=79769.0;
     s1+=1185.0;
    }
   } else {
    if(i56<0.04238548502326012){
     s0+=2321.0;
     s1+=505.0;
    } else {
     s0+=672.0;
     s1+=684.0;
    }
   }
  } else {
   if(i42<1.0003502368927002){
    if(i28<0.014088189229369164){
     s0+=385.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i6<0.004074997268617153){
     s0+=465.0;
     s1+=44.0;
    } else {
     s0+=18.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i57<4.3388929043430835e-05){
   if(i53<8.881092071533203e-06){
    if(i45<-0.0007979673100635409){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=61.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i27<0.0025548122357577085){
    if(i9<1.0143190622329712){
     s0+=43.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i1<-1.8706276023294777e-05){
     s0+=20.0;
     s1+=1003.0;
    } else {
     s0+=31.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019457883900031447){
  if(i23<1.116804838180542){
   if(i28<0.00018148341041523963){
    s0+=639.0;
   } else {
    s1+=2650.0;
   }
  } else {
   if(i27<0.008833080530166626){
    s0+=3420.0;
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i24<0.10240885615348816){
   if(i65<0.001332844258286059){
    if(i27<0.005717015825212002){
     s0+=4.0;
     s1+=47.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i70<0.005397578701376915){
     s0+=36.0;
     s1+=38.0;
    } else {
     s0+=54.0;
     s1+=601.0;
    }
   }
  } else {
   if(i47<0.9973980188369751){
    s0+=7.0;
   } else {
    if(i11<0.09762069582939148){
     s0+=6.0;
    } else {
     s0+=40.0;
     s1+=14435.0;
    }
   }
  }
 }
}
if(i10<1.0104501247406006){
 if(i6<0.013856201432645321){
  if(i18<0.0017506445292383432){
   if(i61<-0.00040072202682495117){
    if(i49<-1.0205924809270073e-05){
     s1+=81.0;
    } else {
     s0+=14996.0;
     s1+=576.0;
    }
   } else {
    if(i0<0.0016714930534362793){
     s0+=77017.0;
     s1+=501.0;
    } else {
     s0+=8.0;
     s1+=19.0;
    }
   }
  } else {
   if(i12<0.00024986121570691466){
    if(i0<-0.00029990077018737793){
     s0+=5269.0;
     s1+=523.0;
    } else {
     s0+=884.0;
     s1+=3660.0;
    }
   } else {
    if(i15<1.1402076482772827){
     s0+=15881.0;
     s1+=888.0;
    } else {
     s0+=84.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i20<-0.004253685474395752){
   if(i11<0.0902361273765564){
    if(i72<-0.008285611867904663){
     s0+=60.0;
     s1+=76.0;
    } else {
     s0+=855.0;
     s1+=56.0;
    }
   } else {
    if(i62<0.013809245079755783){
     s0+=17.0;
     s1+=252.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i74<-0.019413471221923828){
    if(i14<0.018518716096878052){
     s0+=71.0;
     s1+=22.0;
    } else {
     s0+=6.0;
     s1+=95.0;
    }
   } else {
    if(i25<0.022754032164812088){
     s0+=43.0;
     s1+=8.0;
    } else {
     s0+=38.0;
     s1+=2989.0;
    }
   }
  }
 }
} else {
 if(i7<1.0192816257476807){
  if(i12<0.0006867414340376854){
   if(i6<0.003545087296515703){
    if(i57<-1.8878061382565647e-05){
     s0+=24.0;
     s1+=374.0;
    } else {
     s0+=176.0;
     s1+=4.0;
    }
   } else {
    if(i8<0.00010660290718078613){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=2119.0;
    }
   }
  } else {
   if(i30<1.348146677017212){
    s0+=1080.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i41<-1.2679817700700369e-05){
   if(i53<-0.0001233816146850586){
    s0+=6.0;
   } else {
    if(i9<1.0204085111618042){
     s0+=48.0;
     s1+=472.0;
    } else {
     s0+=7.0;
     s1+=11188.0;
    }
   }
  } else {
   s0+=77.0;
  }
 }
}
if(i2<1.0038622617721558){
 if(i6<0.007605015300214291){
  if(i23<1.1162974834442139){
   if(i6<0.003598366864025593){
    if(i58<0.00012383944704197347){
     s0+=22369.0;
     s1+=165.0;
    } else {
     s0+=4485.0;
     s1+=686.0;
    }
   } else {
    if(i42<0.999780535697937){
     s0+=2780.0;
     s1+=30.0;
    } else {
     s0+=103.0;
     s1+=2081.0;
    }
   }
  } else {
   if(i5<1.0023424625396729){
    if(i28<0.0018042608862742782){
     s0+=54526.0;
    } else {
     s0+=20652.0;
     s1+=455.0;
    }
   } else {
    if(i62<0.0014456984354183078){
     s0+=1841.0;
     s1+=169.0;
    } else {
     s0+=158.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i4<7.569789886474609e-06){
   if(i80<0.0875181257724762){
    if(i38<0.144353449344635){
     s0+=3365.0;
     s1+=147.0;
    } else {
     s0+=1.0;
     s1+=168.0;
    }
   } else {
    if(i1<-6.18754856986925e-05){
     s0+=7.0;
     s1+=185.0;
    } else {
     s0+=66.0;
     s1+=22.0;
    }
   }
  } else {
   if(i24<0.06155487895011902){
    if(i26<-0.00027430057525634766){
     s0+=1227.0;
     s1+=170.0;
    } else {
     s0+=16.0;
     s1+=47.0;
    }
   } else {
    if(i45<-0.00014453651965595782){
     s0+=116.0;
     s1+=1854.0;
    } else {
     s0+=315.0;
     s1+=354.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012356042861938477){
  if(i6<0.004294530022889376){
   if(i9<1.0278393030166626){
    if(i12<0.00020760091138072312){
     s0+=88.0;
     s1+=85.0;
    } else {
     s0+=2898.0;
     s1+=4.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i38<0.14574038982391357){
    if(i42<1.0026516914367676){
     s0+=40.0;
     s1+=914.0;
    } else {
     s0+=145.0;
     s1+=428.0;
    }
   } else {
    s1+=1058.0;
   }
  }
 } else {
  if(i12<0.0007054299348965287){
   if(i53<6.562471389770508e-05){
    if(i20<-0.00226747989654541){
     s0+=34.0;
     s1+=213.0;
    } else {
     s0+=42.0;
     s1+=15111.0;
    }
   } else {
    s0+=20.0;
   }
  } else {
   s0+=1007.0;
  }
 }
}
if(i17<1.004636287689209){
 if(i6<0.007195604965090752){
  if(i10<1.0076309442520142){
   if(i23<1.1162974834442139){
    if(i36<1.05497145652771){
     s0+=20525.0;
     s1+=115.0;
    } else {
     s0+=9401.0;
     s1+=2588.0;
    }
   } else {
    if(i52<0.04191451519727707){
     s0+=63452.0;
     s1+=131.0;
    } else {
     s0+=12654.0;
     s1+=479.0;
    }
   }
  } else {
   if(i3<2.193450927734375e-05){
    if(i6<0.005267429165542126){
     s0+=369.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   } else {
    if(i30<1.1174830198287964){
     s0+=5.0;
     s1+=339.0;
    } else {
     s0+=436.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i3<-3.090500831604004e-05){
   if(i76<0.10283121466636658){
    if(i39<0.27492597699165344){
     s0+=4896.0;
     s1+=235.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i38<0.17250242829322815){
     s0+=165.0;
     s1+=65.0;
    } else {
     s0+=7.0;
     s1+=212.0;
    }
   }
  } else {
   if(i45<-0.00020866302656941116){
    if(i46<-3.615112655097619e-05){
     s0+=30.0;
    } else {
     s0+=128.0;
     s1+=3099.0;
    }
   } else {
    if(i10<0.9897942543029785){
     s0+=247.0;
     s1+=108.0;
    } else {
     s0+=27.0;
     s1+=316.0;
    }
   }
  }
 }
} else {
 if(i1<-7.398748130071908e-05){
  if(i13<0.9494969248771667){
   if(i11<0.11640867590904236){
    if(i72<-0.007669687271118164){
     s0+=34.0;
     s1+=38.0;
    } else {
     s0+=267.0;
     s1+=4.0;
    }
   } else {
    if(i44<0.011196684092283249){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  } else {
   if(i53<2.8580427169799805e-05){
    if(i42<1.001157283782959){
     s0+=97.0;
     s1+=349.0;
    } else {
     s0+=189.0;
     s1+=13639.0;
    }
   } else {
    if(i36<1.2549420595169067){
     s0+=123.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i27<0.000988423707894981){
   if(i40<1.0451974868774414){
    if(i32<0.0005387067794799805){
     s1+=27.0;
    } else {
     s0+=327.0;
    }
   } else {
    s1+=1139.0;
   }
  } else {
   if(i52<0.04876982420682907){
    if(i6<0.005922605749219656){
     s0+=2808.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=157.0;
    }
   } else {
    if(i3<5.245208740234375e-06){
     s0+=243.0;
     s1+=46.0;
    } else {
     s0+=222.0;
     s1+=796.0;
    }
   }
  }
 }
}
if(i17<1.004465103149414){
 if(i1<-7.645013829460368e-05){
  if(i15<1.1182427406311035){
   if(i67<3.308510940769338e-06){
    if(i24<0.055702030658721924){
     s0+=89.0;
     s1+=26.0;
    } else {
     s0+=38.0;
     s1+=420.0;
    }
   } else {
    if(i11<0.18355605006217957){
     s0+=1060.0;
     s1+=113.0;
    } else {
     s1+=73.0;
    }
   }
  } else {
   if(i23<1.1743842363357544){
    s0+=52.0;
   } else {
    if(i43<1.0571215152740479){
     s0+=52.0;
     s1+=37.0;
    } else {
     s0+=15.0;
     s1+=2089.0;
    }
   }
  }
 } else {
  if(i21<1.0140680074691772){
   if(i25<0.0067933835089206696){
    if(i21<0.9928287267684937){
     s0+=5441.0;
     s1+=269.0;
    } else {
     s0+=63329.0;
     s1+=259.0;
    }
   } else {
    if(i28<0.000445453857537359){
     s0+=2776.0;
     s1+=1537.0;
    } else {
     s0+=37702.0;
     s1+=2045.0;
    }
   }
  } else {
   if(i0<0.00026917457580566406){
    if(i8<0.000202178955078125){
     s0+=915.0;
     s1+=86.0;
    } else {
     s0+=236.0;
     s1+=181.0;
    }
   } else {
    if(i41<-1.4254854249884374e-05){
     s0+=71.0;
     s1+=654.0;
    } else {
     s0+=209.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i34<0.0021195930894464254){
  if(i27<0.0009846989996731281){
   if(i35<0.0010549064027145505){
    if(i29<0.00027996860444545746){
     s0+=113.0;
    } else {
     s1+=2077.0;
    }
   } else {
    if(i28<0.0004819401365239173){
     s0+=246.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i39<0.034431420266628265){
    if(i54<0.9691306352615356){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=3170.0;
     s1+=1.0;
    }
   } else {
    s1+=27.0;
   }
  }
 } else {
  if(i0<0.0006597042083740234){
   if(i63<-0.0004740445874631405){
    if(i40<1.105471134185791){
     s0+=122.0;
     s1+=36.0;
    } else {
     s0+=114.0;
     s1+=546.0;
    }
   } else {
    if(i11<0.09271624684333801){
     s0+=494.0;
     s1+=76.0;
    } else {
     s0+=45.0;
     s1+=99.0;
    }
   }
  } else {
   if(i15<1.07395601272583){
    if(i5<1.006868600845337){
     s0+=104.0;
     s1+=70.0;
    } else {
     s0+=6.0;
     s1+=214.0;
    }
   } else {
    if(i0<0.0009391903877258301){
     s0+=74.0;
     s1+=481.0;
    } else {
     s0+=33.0;
     s1+=12887.0;
    }
   }
  }
 }
}
if(i3<6.395578384399414e-05){
 if(i4<1.5795230865478516e-05){
  if(i6<0.003542715683579445){
   if(i35<0.000532822625245899){
    if(i66<0.0017561018466949463){
     s0+=61352.0;
     s1+=127.0;
    } else {
     s0+=908.0;
     s1+=28.0;
    }
   } else {
    if(i28<0.0005593672394752502){
     s0+=2956.0;
     s1+=678.0;
    } else {
     s0+=18527.0;
     s1+=94.0;
    }
   }
  } else {
   if(i32<3.045797348022461e-05){
    if(i72<0.011138617992401123){
     s0+=15491.0;
     s1+=238.0;
    } else {
     s0+=41.0;
     s1+=87.0;
    }
   } else {
    if(i9<0.9761120080947876){
     s0+=3903.0;
     s1+=268.0;
    } else {
     s0+=3526.0;
     s1+=2405.0;
    }
   }
  }
 } else {
  if(i6<0.00417274609208107){
   if(i1<-4.898905899608508e-05){
    if(i32<0.0004315376281738281){
     s1+=102.0;
    } else {
     s0+=126.0;
    }
   } else {
    if(i6<0.003875504480674863){
     s0+=5227.0;
     s1+=8.0;
    } else {
     s0+=138.0;
     s1+=28.0;
    }
   }
  } else {
   if(i66<-0.0021955370903015137){
    if(i15<1.0854418277740479){
     s0+=1235.0;
     s1+=231.0;
    } else {
     s0+=328.0;
     s1+=1111.0;
    }
   } else {
    if(i9<1.0042935609817505){
     s0+=245.0;
     s1+=491.0;
    } else {
     s0+=172.0;
     s1+=1970.0;
    }
   }
  }
 }
} else {
 if(i34<0.0023418846540153027){
  if(i50<0.0009980060858651996){
   if(i50<0.00013468779798131436){
    s0+=72.0;
   } else {
    if(i3<0.00031697750091552734){
     s0+=6.0;
     s1+=2276.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i23<1.1038953065872192){
    s1+=59.0;
   } else {
    if(i25<0.014665921218693256){
     s0+=1953.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i26<-0.00022339820861816406){
   if(i28<0.005019794683903456){
    if(i1<-0.00012327524018473923){
     s1+=6.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i18<0.005535823758691549){
     s0+=76.0;
     s1+=65.0;
    } else {
     s0+=13.0;
     s1+=488.0;
    }
   }
  } else {
   if(i11<0.11639672517776489){
    if(i35<0.0004595749487634748){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=4.0;
     s1+=673.0;
    }
   } else {
    if(i2<1.0068752765655518){
     s0+=4.0;
     s1+=871.0;
    } else {
     s1+=12133.0;
    }
   }
  }
 }
}
if(i2<1.0036871433258057){
 if(i35<0.0007343760225921869){
  if(i41<-1.7719907191349193e-05){
   if(i0<0.000708162784576416){
    if(i32<-0.0002378523349761963){
     s0+=14.0;
    } else {
     s1+=105.0;
    }
   } else {
    s0+=35.0;
   }
  } else {
   if(i23<1.0817922353744507){
    if(i36<1.0577976703643799){
     s0+=15328.0;
     s1+=86.0;
    } else {
     s0+=1120.0;
     s1+=249.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=61630.0;
     s1+=86.0;
    } else {
     s0+=2135.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i38<0.18546411395072937){
   if(i27<0.0009191688150167465){
    if(i23<1.056142807006836){
     s0+=2334.0;
    } else {
     s0+=529.0;
     s1+=2986.0;
    }
   } else {
    if(i15<1.1220817565917969){
     s0+=27724.0;
     s1+=863.0;
    } else {
     s0+=905.0;
     s1+=947.0;
    }
   }
  } else {
   if(i11<0.2432205080986023){
    if(i39<0.051761116832494736){
     s0+=88.0;
     s1+=11.0;
    } else {
     s0+=69.0;
     s1+=277.0;
    }
   } else {
    if(i1<-2.499120273569133e-05){
     s0+=4.0;
     s1+=744.0;
    } else {
     s0+=8.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007036929600872099){
  if(i36<1.1706266403198242){
   if(i27<0.000979210832156241){
    if(i29<0.0002725295489653945){
     s0+=141.0;
    } else {
     s1+=2785.0;
    }
   } else {
    if(i39<0.030387528240680695){
     s0+=1486.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=113.0;
    }
   }
  } else {
   if(i1<-6.371877680066973e-05){
    if(i58<0.0032267735805362463){
     s0+=50.0;
     s1+=14349.0;
    } else {
     s0+=31.0;
     s1+=51.0;
    }
   } else {
    if(i11<0.08766785264015198){
     s0+=182.0;
     s1+=75.0;
    } else {
     s0+=34.0;
     s1+=565.0;
    }
   }
  }
 } else {
  if(i36<1.348146677017212){
   s0+=2579.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i19<1.0177959203720093){
 if(i0<0.000987410545349121){
  if(i4<1.6391277313232422e-05){
   if(i18<0.0014956803061068058){
    if(i18<0.0011022472754120827){
     s0+=73515.0;
     s1+=221.0;
    } else {
     s0+=9726.0;
     s1+=365.0;
    }
   } else {
    if(i16<0.9950639009475708){
     s0+=17237.0;
     s1+=593.0;
    } else {
     s0+=5761.0;
     s1+=2356.0;
    }
   }
  } else {
   if(i56<0.032517023384571075){
    if(i12<0.000295872101560235){
     s0+=1742.0;
     s1+=885.0;
    } else {
     s0+=4371.0;
     s1+=150.0;
    }
   } else {
    if(i25<0.022208107635378838){
     s0+=571.0;
     s1+=134.0;
    } else {
     s0+=440.0;
     s1+=1322.0;
    }
   }
  }
 } else {
  if(i6<0.0035818489268422127){
   if(i15<1.0648859739303589){
    if(i57<-1.5123545381356962e-05){
     s1+=357.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i49<-1.5036252079880796e-05){
     s0+=52.0;
     s1+=52.0;
    } else {
     s0+=1071.0;
     s1+=17.0;
    }
   }
  } else {
   if(i42<1.0009024143218994){
    if(i1<-0.00016416300786659122){
     s1+=62.0;
    } else {
     s0+=182.0;
     s1+=1.0;
    }
   } else {
    if(i51<-6.175197995617054e-06){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=124.0;
     s1+=3585.0;
    }
   }
  }
 }
} else {
 if(i6<0.005058640614151955){
  if(i57<-2.569277785369195e-05){
   if(i16<1.0087242126464844){
    s0+=11.0;
   } else {
    if(i42<1.0016140937805176){
     s0+=4.0;
    } else {
     s0+=17.0;
     s1+=564.0;
    }
   }
  } else {
   if(i1<-9.588045941200107e-05){
    if(i48<1.0200011730194092){
     s0+=8.0;
     s1+=5.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i34<0.0006646199617534876){
     s0+=1.0;
     s1+=44.0;
    } else {
     s0+=1392.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i47<0.9982398748397827){
   s0+=51.0;
  } else {
   if(i2<0.9977098703384399){
    if(i43<1.100295066833496){
     s0+=31.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   } else {
    if(i21<1.0179049968719482){
     s0+=74.0;
     s1+=709.0;
    } else {
     s0+=20.0;
     s1+=12775.0;
    }
   }
  }
 }
}
if(i37<1.0035561323165894){
 if(i21<1.0170691013336182){
  if(i5<1.0026342868804932){
   if(i23<1.1162974834442139){
    if(i30<1.0577976703643799){
     s0+=17931.0;
     s1+=9.0;
    } else {
     s0+=11518.0;
     s1+=3234.0;
    }
   } else {
    if(i68<0.5571249723434448){
     s0+=76982.0;
     s1+=560.0;
    } else {
     s0+=219.0;
     s1+=158.0;
    }
   }
  } else {
   if(i39<0.009598297998309135){
    if(i67<-2.911210231104633e-06){
     s0+=13.0;
     s1+=60.0;
    } else {
     s0+=543.0;
     s1+=61.0;
    }
   } else {
    if(i56<0.04358827695250511){
     s0+=292.0;
     s1+=338.0;
    } else {
     s0+=47.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i6<0.00502552418038249){
   if(i2<1.0030474662780762){
    if(i15<1.0539169311523438){
     s1+=2.0;
    } else {
     s0+=590.0;
     s1+=19.0;
    }
   } else {
    if(i47<0.9995828866958618){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=129.0;
    }
   }
  } else {
   if(i42<0.9967833161354065){
    s0+=34.0;
   } else {
    if(i20<-0.004346400499343872){
     s0+=12.0;
     s1+=9.0;
    } else {
     s0+=51.0;
     s1+=2758.0;
    }
   }
  }
 }
} else {
 if(i10<1.0133490562438965){
  if(i24<0.18343579769134521){
   if(i3<7.778406143188477e-05){
    if(i62<0.0013532494194805622){
     s0+=5099.0;
     s1+=478.0;
    } else {
     s0+=1893.0;
     s1+=1111.0;
    }
   } else {
    if(i58<8.279681787826121e-05){
     s0+=672.0;
     s1+=373.0;
    } else {
     s0+=219.0;
     s1+=1263.0;
    }
   }
  } else {
   if(i18<0.0021431827917695045){
    if(i17<1.0133202075958252){
     s0+=179.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i6<0.005636329762637615){
     s0+=82.0;
     s1+=13.0;
    } else {
     s0+=37.0;
     s1+=2581.0;
    }
   }
  }
 } else {
  if(i28<0.0018472499214112759){
   if(i55<1.0021076202392578){
    if(i12<0.00029320523026399314){
     s1+=893.0;
    } else {
     s0+=27.0;
    }
   } else {
    s0+=144.0;
   }
  } else {
   s1+=9724.0;
  }
 }
}
if(i0<0.000955045223236084){
 if(i6<0.006937823258340359){
  if(i35<0.0007107785204425454){
   if(i1<-7.996225031092763e-05){
    if(i33<1.0234853029251099){
     s0+=35.0;
     s1+=1.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i13<0.9949754476547241){
     s0+=13087.0;
     s1+=219.0;
    } else {
     s0+=66610.0;
     s1+=235.0;
    }
   }
  } else {
   if(i27<0.0008846725686453283){
    if(i28<0.00018653733422979712){
     s0+=2493.0;
     s1+=15.0;
    } else {
     s0+=958.0;
     s1+=2700.0;
    }
   } else {
    if(i8<0.00017255544662475586){
     s0+=21516.0;
     s1+=166.0;
    } else {
     s0+=2952.0;
     s1+=486.0;
    }
   }
  }
 } else {
  if(i2<0.9978866577148438){
   if(i11<0.20735353231430054){
    if(i59<0.012334682047367096){
     s0+=5650.0;
     s1+=183.0;
    } else {
     s0+=264.0;
     s1+=93.0;
    }
   } else {
    if(i6<0.008112505078315735){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=183.0;
    }
   }
  } else {
   if(i13<0.9635785222053528){
    if(i6<0.020380161702632904){
     s0+=359.0;
     s1+=124.0;
    } else {
     s0+=92.0;
     s1+=187.0;
    }
   } else {
    if(i66<-0.0031155943870544434){
     s0+=290.0;
     s1+=882.0;
    } else {
     s0+=31.0;
     s1+=2465.0;
    }
   }
  }
 }
} else {
 if(i27<0.0023296670988202095){
  if(i12<0.0002517071843612939){
   if(i3<0.0003732442855834961){
    s1+=2371.0;
   } else {
    s0+=22.0;
   }
  } else {
   s0+=1979.0;
  }
 } else {
  if(i33<0.8895372152328491){
   if(i12<0.000131769833387807){
    if(i32<0.0006313323974609375){
     s0+=25.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i3<7.49826431274414e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=132.0;
    }
   }
  } else {
   if(i22<0.9097332954406738){
    if(i49<1.4923434719094075e-05){
     s1+=8.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i2<1.0040823221206665){
     s0+=20.0;
     s1+=102.0;
    } else {
     s0+=52.0;
     s1+=13790.0;
    }
   }
  }
 }
}
if(i21<1.0176970958709717){
 if(i0<0.0011141300201416016){
  if(i4<1.5079975128173828e-05){
   if(i18<0.0014827335253357887){
    if(i50<0.0003345765871927142){
     s0+=26199.0;
     s1+=429.0;
    } else {
     s0+=56343.0;
     s1+=146.0;
    }
   } else {
    if(i3<-3.045797348022461e-05){
     s0+=20324.0;
     s1+=738.0;
    } else {
     s0+=2869.0;
     s1+=2250.0;
    }
   }
  } else {
   if(i57<3.013707828358747e-05){
    if(i18<0.002106231637299061){
     s0+=4727.0;
     s1+=18.0;
    } else {
     s0+=1066.0;
     s1+=637.0;
    }
   } else {
    if(i2<1.0001628398895264){
     s0+=1466.0;
     s1+=364.0;
    } else {
     s0+=899.0;
     s1+=2044.0;
    }
   }
  }
 } else {
  if(i40<1.1451921463012695){
   if(i50<0.0009980060858651996){
    s1+=1102.0;
   } else {
    if(i61<-0.0004943609237670898){
     s0+=64.0;
     s1+=498.0;
    } else {
     s0+=1023.0;
     s1+=157.0;
    }
   }
  } else {
   if(i15<1.023998737335205){
    if(i7<0.9681401252746582){
     s1+=14.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i58<-6.483432662207633e-05){
     s0+=10.0;
     s1+=25.0;
    } else {
     s0+=17.0;
     s1+=1967.0;
    }
   }
  }
 }
} else {
 if(i3<1.6033649444580078e-05){
  if(i5<1.0000925064086914){
   if(i45<-0.0010574643965810537){
    s1+=37.0;
   } else {
    if(i34<0.015311367809772491){
     s0+=381.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i6<0.004801478236913681){
    if(i20<-0.0030961334705352783){
     s0+=20.0;
     s1+=13.0;
    } else {
     s0+=324.0;
     s1+=7.0;
    }
   } else {
    if(i38<0.07411888241767883){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i25<0.007417078595608473){
   if(i44<0.0007479030755348504){
    if(i36<1.3344844579696655){
     s0+=3.0;
     s1+=446.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i29<0.002535071922466159){
     s0+=454.0;
     s1+=35.0;
    } else {
     s0+=23.0;
     s1+=366.0;
    }
   }
  } else {
   if(i1<-8.211575186578557e-05){
    if(i51<-7.920414645923302e-06){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=11588.0;
    }
   } else {
    if(i49<1.4989193005021662e-05){
     s0+=38.0;
     s1+=1184.0;
    } else {
     s0+=83.0;
     s1+=49.0;
    }
   }
  }
 }
}
if(i18<0.0019695572555065155){
 if(i57<-2.4870820197975263e-05){
  if(i17<1.0095059871673584){
   if(i40<1.0773653984069824){
    s1+=86.0;
   } else {
    if(i11<0.2401910424232483){
     s0+=92.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i67<-3.826771717285737e-06){
    if(i3<0.0006718635559082031){
     s1+=1158.0;
    } else {
     s0+=8.0;
     s1+=41.0;
    }
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i10<1.016322135925293){
   if(i67<-5.838836841576267e-06){
    if(i50<0.0006644714158028364){
     s1+=73.0;
    } else {
     s0+=130.0;
     s1+=6.0;
    }
   } else {
    if(i29<0.0006704982370138168){
     s0+=28886.0;
     s1+=1295.0;
    } else {
     s0+=67053.0;
     s1+=358.0;
    }
   }
  } else {
   s1+=78.0;
  }
 }
} else {
 if(i10<1.0056939125061035){
  if(i3<-2.4616718292236328e-05){
   if(i1<-8.103090658551082e-05){
    if(i43<1.0540410280227661){
     s0+=769.0;
     s1+=86.0;
    } else {
     s0+=59.0;
     s1+=366.0;
    }
   } else {
    if(i43<1.1230299472808838){
     s0+=14852.0;
     s1+=513.0;
    } else {
     s0+=166.0;
     s1+=103.0;
    }
   }
  } else {
   if(i25<0.01000148244202137){
    if(i23<1.0623862743377686){
     s0+=1155.0;
    } else {
     s0+=867.0;
     s1+=158.0;
    }
   } else {
    if(i56<0.04025879502296448){
     s0+=715.0;
     s1+=1737.0;
    } else {
     s0+=246.0;
     s1+=3429.0;
    }
   }
  }
 } else {
  if(i28<0.0025116796605288982){
   if(i53<1.150369644165039e-05){
    if(i34<0.00022048369282856584){
     s0+=108.0;
    } else {
     s0+=273.0;
     s1+=2719.0;
    }
   } else {
    if(i17<1.011906385421753){
     s0+=790.0;
     s1+=61.0;
    } else {
     s1+=88.0;
    }
   }
  } else {
   if(i20<-0.0002669692039489746){
    if(i6<0.005878843367099762){
     s0+=101.0;
    } else {
     s1+=262.0;
    }
   } else {
    if(i18<0.002189141232520342){
     s0+=17.0;
     s1+=275.0;
    } else {
     s0+=9.0;
     s1+=11660.0;
    }
   }
  }
 }
}
if(i0<0.000952303409576416){
 if(i19<1.0181578397750854){
  if(i68<0.5004740357398987){
   if(i52<0.040796466171741486){
    if(i6<0.003183729248121381){
     s0+=76525.0;
     s1+=568.0;
    } else {
     s0+=16185.0;
     s1+=2011.0;
    }
   } else {
    if(i0<-0.00045737624168395996){
     s0+=16908.0;
     s1+=555.0;
    } else {
     s0+=2886.0;
     s1+=2003.0;
    }
   }
  } else {
   if(i45<-0.0003692091559059918){
    if(i58<0.004845699295401573){
     s0+=7.0;
     s1+=601.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i25<0.03864718973636627){
     s0+=699.0;
     s1+=21.0;
    } else {
     s0+=45.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i25<0.02768278867006302){
   if(i40<1.0781182050704956){
    if(i61<0.0010819733142852783){
     s0+=4.0;
    } else {
     s1+=168.0;
    }
   } else {
    if(i6<0.004996602423489094){
     s0+=771.0;
     s1+=105.0;
    } else {
     s0+=85.0;
     s1+=216.0;
    }
   }
  } else {
   if(i1<-2.846742245310452e-05){
    if(i12<0.0001153827179223299){
     s0+=18.0;
     s1+=165.0;
    } else {
     s0+=6.0;
     s1+=1257.0;
    }
   } else {
    if(i34<0.005713406018912792){
     s0+=36.0;
     s1+=74.0;
    } else {
     s0+=71.0;
    }
   }
  }
 }
} else {
 if(i29<0.0024050595238804817){
  if(i12<0.00024617204326204956){
   if(i27<0.0010901096975430846){
    s1+=2356.0;
   } else {
    if(i2<1.0056898593902588){
     s1+=5.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   s0+=2023.0;
  }
 } else {
  if(i11<0.03509262204170227){
   if(i56<0.03347494453191757){
    if(i5<1.0054320096969604){
     s0+=35.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i73<-0.04372325539588928){
     s0+=1.0;
     s1+=95.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.00012224912643432617){
    if(i60<0.8795273303985596){
     s0+=5.0;
    } else {
     s0+=46.0;
     s1+=2504.0;
    }
   } else {
    s1+=11573.0;
   }
  }
 }
}
if(i3<6.407499313354492e-05){
 if(i21<1.0183451175689697){
  if(i68<0.5045275092124939){
   if(i68<0.1387997567653656){
    if(i25<0.006637009792029858){
     s0+=69065.0;
     s1+=586.0;
    } else {
     s0+=36437.0;
     s1+=3261.0;
    }
   } else {
    if(i5<1.0024449825286865){
     s0+=6423.0;
     s1+=681.0;
    } else {
     s0+=991.0;
     s1+=799.0;
    }
   }
  } else {
   if(i42<1.0008983612060547){
    if(i14<0.09120318293571472){
     s0+=551.0;
     s1+=18.0;
    } else {
     s0+=33.0;
     s1+=111.0;
    }
   } else {
    if(i43<1.0672643184661865){
     s0+=111.0;
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=767.0;
    }
   }
  }
 } else {
  if(i0<0.00024211406707763672){
   if(i6<0.005633835680782795){
    if(i26<-0.0005025565624237061){
     s0+=11.0;
     s1+=10.0;
    } else {
     s0+=642.0;
     s1+=14.0;
    }
   } else {
    if(i56<0.029571034014225006){
     s0+=16.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=425.0;
    }
   }
  } else {
   if(i42<1.0033996105194092){
    if(i6<0.003591801505535841){
     s0+=66.0;
     s1+=45.0;
    } else {
     s0+=14.0;
     s1+=1128.0;
    }
   } else {
    if(i43<1.1460928916931152){
     s0+=98.0;
     s1+=18.0;
    } else {
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i6<0.003915297798812389){
  if(i59<0.0005300198681652546){
   if(i40<1.0380276441574097){
    s0+=63.0;
   } else {
    if(i55<1.0033838748931885){
     s0+=2.0;
     s1+=623.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i16<1.0159316062927246){
    if(i36<1.094508409500122){
     s1+=47.0;
    } else {
     s0+=1626.0;
    }
   } else {
    s1+=238.0;
   }
  }
 } else {
  if(i12<0.000740836258046329){
   if(i20<-0.0021743178367614746){
    if(i23<1.629280686378479){
     s0+=44.0;
     s1+=339.0;
    } else {
     s0+=50.0;
     s1+=4.0;
    }
   } else {
    if(i36<1.1432220935821533){
     s0+=53.0;
     s1+=1677.0;
    } else {
     s0+=12.0;
     s1+=13419.0;
    }
   }
  } else {
   s0+=232.0;
  }
 }
}
if(i40<1.1402404308319092){
 if(i20<0.0012875199317932129){
  if(i18<0.0017291271360591054){
   if(i6<0.0016256138915196061){
    if(i58<0.0001803697377908975){
     s0+=55862.0;
     s1+=99.0;
    } else {
     s0+=4142.0;
     s1+=96.0;
    }
   } else {
    if(i5<0.9993281364440918){
     s0+=22906.0;
     s1+=66.0;
    } else {
     s0+=7327.0;
     s1+=662.0;
    }
   }
  } else {
   if(i29<0.0011962726712226868){
    if(i35<0.001191586023196578){
     s0+=732.0;
     s1+=3173.0;
    } else {
     s0+=1829.0;
    }
   } else {
    if(i8<0.00043386220932006836){
     s0+=15814.0;
     s1+=447.0;
    } else {
     s0+=2286.0;
     s1+=1222.0;
    }
   }
  }
 } else {
  if(i53<1.9252300262451172e-05){
   if(i42<1.0008375644683838){
    if(i27<0.0009969368111342192){
     s1+=6.0;
    } else {
     s0+=465.0;
    }
   } else {
    if(i10<1.013466715812683){
     s0+=259.0;
     s1+=998.0;
    } else {
     s0+=15.0;
     s1+=2173.0;
    }
   }
  } else {
   if(i7<1.0290861129760742){
    if(i62<0.0022686803713440895){
     s0+=521.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=44.0;
   }
  }
 }
} else {
 if(i1<-7.228234608191997e-05){
  if(i26<-0.0005432665348052979){
   if(i38<0.06552129983901978){
    if(i25<0.056267231702804565){
     s0+=704.0;
     s1+=18.0;
    } else {
     s0+=62.0;
     s1+=86.0;
    }
   } else {
    if(i63<0.00013775273691862822){
     s0+=13.0;
     s1+=189.0;
    } else {
     s0+=20.0;
     s1+=7.0;
    }
   }
  } else {
   if(i20<-0.00223541259765625){
    if(i43<1.0534658432006836){
     s0+=115.0;
     s1+=80.0;
    } else {
     s0+=7.0;
     s1+=511.0;
    }
   } else {
    if(i24<0.0530858039855957){
     s0+=46.0;
     s1+=120.0;
    } else {
     s0+=32.0;
     s1+=12830.0;
    }
   }
  }
 } else {
  if(i11<0.15892192721366882){
   if(i0<0.0013487935066223145){
    if(i41<-3.826723695965484e-05){
     s0+=25.0;
     s1+=38.0;
    } else {
     s0+=3393.0;
     s1+=225.0;
    }
   } else {
    if(i47<1.000470519065857){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=108.0;
    }
   }
  } else {
   if(i47<1.0006853342056274){
    if(i34<0.011481045745313168){
     s0+=218.0;
     s1+=15.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i6<0.006063672713935375){
     s0+=133.0;
     s1+=14.0;
    } else {
     s0+=17.0;
     s1+=662.0;
    }
   }
  }
 }
}
if(i33<1.0212268829345703){
 if(i3<7.75456428527832e-05){
  if(i1<-9.171530837193131e-05){
   if(i38<0.041920989751815796){
    if(i43<1.0509908199310303){
     s0+=768.0;
     s1+=55.0;
    } else {
     s0+=42.0;
     s1+=183.0;
    }
   } else {
    if(i61<-0.010154873132705688){
     s0+=34.0;
     s1+=10.0;
    } else {
     s0+=56.0;
     s1+=1144.0;
    }
   }
  } else {
   if(i23<1.1162974834442139){
    if(i25<0.007362657692283392){
     s0+=23215.0;
     s1+=747.0;
    } else {
     s0+=6953.0;
     s1+=2769.0;
    }
   } else {
    if(i37<1.0082013607025146){
     s0+=81988.0;
     s1+=1207.0;
    } else {
     s0+=569.0;
     s1+=256.0;
    }
   }
  }
 } else {
  if(i6<0.0036386114079505205){
   if(i59<0.0005304815713316202){
    s1+=369.0;
   } else {
    if(i20<0.0025429725646972656){
     s0+=892.0;
     s1+=52.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i12<0.0007143407128751278){
    if(i24<0.017944544553756714){
     s0+=33.0;
     s1+=44.0;
    } else {
     s0+=77.0;
     s1+=3835.0;
    }
   } else {
    s0+=191.0;
   }
  }
 }
} else {
 if(i27<0.0025602495297789574){
  if(i18<0.0015978969167917967){
   if(i20<0.0017102360725402832){
    if(i40<1.0694921016693115){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=875.0;
     s1+=18.0;
    }
   } else {
    if(i12<0.0003729936433956027){
     s1+=84.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i44<0.0009261462837457657){
    s1+=1037.0;
   } else {
    if(i6<0.0043854862451553345){
     s0+=103.0;
     s1+=7.0;
    } else {
     s0+=54.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i40<1.108400821685791){
   if(i1<-8.583473390899599e-05){
    s1+=87.0;
   } else {
    if(i58<-0.0002692911075428128){
     s1+=3.0;
    } else {
     s0+=237.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<-0.0004705190658569336){
    if(i30<1.269250750541687){
     s0+=146.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=167.0;
    }
   } else {
    if(i20<-0.0012276172637939453){
     s0+=83.0;
     s1+=322.0;
    } else {
     s0+=44.0;
     s1+=11781.0;
    }
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i11<0.20787692070007324){
  if(i9<1.0119352340698242){
   if(i62<0.00200056005269289){
    if(i32<9.721517562866211e-05){
     s0+=77838.0;
     s1+=955.0;
    } else {
     s0+=29621.0;
     s1+=2955.0;
    }
   } else {
    if(i45<-0.00031016848515719175){
     s0+=432.0;
     s1+=840.0;
    } else {
     s0+=5075.0;
     s1+=641.0;
    }
   }
  } else {
   if(i30<1.1177868843078613){
    if(i35<0.0011986549943685532){
     s1+=575.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i1<-6.980808393564075e-05){
     s0+=52.0;
     s1+=328.0;
    } else {
     s0+=986.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i6<0.005585376173257828){
   if(i4<1.195073127746582e-05){
    if(i6<0.00493135629221797){
     s0+=254.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i42<1.0025255680084229){
     s0+=9.0;
     s1+=24.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i27<0.0019308177288621664){
    s0+=8.0;
   } else {
    if(i1<1.1291930604784284e-05){
     s0+=9.0;
     s1+=1402.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i6<0.00392558379098773){
  if(i32<0.0005181431770324707){
   if(i17<1.0060303211212158){
    if(i44<0.000570551201235503){
     s1+=2.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i7<1.0020875930786133){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=758.0;
    }
   }
  } else {
   if(i20<0.002640962600708008){
    s0+=1657.0;
   } else {
    s1+=223.0;
   }
  }
 } else {
  if(i35<0.004036585800349712){
   if(i5<1.0019748210906982){
    if(i15<1.1802421808242798){
     s0+=78.0;
    } else {
     s1+=138.0;
    }
   } else {
    if(i12<0.000715116155333817){
     s0+=157.0;
     s1+=15370.0;
    } else {
     s0+=59.0;
    }
   }
  } else {
   s0+=114.0;
  }
 }
}
if(i9<1.0153836011886597){
 if(i1<-8.784572855802253e-05){
  if(i24<0.04277065396308899){
   if(i73<-0.110523521900177){
    if(i3<-1.8477439880371094e-05){
     s0+=74.0;
     s1+=22.0;
    } else {
     s0+=33.0;
     s1+=113.0;
    }
   } else {
    if(i5<1.0064353942871094){
     s0+=744.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  } else {
   if(i53<2.282857894897461e-05){
    if(i12<0.0007361331954598427){
     s0+=152.0;
     s1+=3464.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i29<0.007583580445498228){
     s0+=195.0;
    } else {
     s1+=66.0;
    }
   }
  }
 } else {
  if(i4<1.8537044525146484e-05){
   if(i30<1.0905578136444092){
    if(i7<1.0075263977050781){
     s0+=25068.0;
     s1+=2070.0;
    } else {
     s0+=52.0;
     s1+=372.0;
    }
   } else {
    if(i14<0.206171452999115){
     s0+=81955.0;
     s1+=1173.0;
    } else {
     s0+=178.0;
     s1+=159.0;
    }
   }
  } else {
   if(i18<0.001863109995611012){
    if(i49<-1.1527268725330941e-05){
     s0+=74.0;
     s1+=293.0;
    } else {
     s0+=3811.0;
     s1+=54.0;
    }
   } else {
    if(i23<1.0623862743377686){
     s0+=703.0;
    } else {
     s0+=2371.0;
     s1+=2607.0;
    }
   }
  }
 }
} else {
 if(i41<-1.0978626960422844e-05){
  if(i36<1.1757044792175293){
   if(i23<1.1180615425109863){
    s1+=1547.0;
   } else {
    if(i1<-7.149554585339502e-05){
     s0+=96.0;
     s1+=70.0;
    } else {
     s0+=374.0;
     s1+=1.0;
    }
   }
  } else {
   if(i49<3.537854354362935e-05){
    if(i46<-2.970079094666289e-06){
     s0+=72.0;
     s1+=12152.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.004564069677144289){
     s0+=77.0;
    } else {
     s1+=287.0;
    }
   }
  }
 } else {
  s0+=258.0;
 }
}
if(i1<-9.841138671617955e-05){
 if(i20<-0.004015237092971802){
  if(i14<0.07313269376754761){
   if(i15<1.0953224897384644){
    if(i75<0.0023482339456677437){
     s0+=441.0;
     s1+=4.0;
    } else {
     s0+=48.0;
     s1+=11.0;
    }
   } else {
    if(i69<0.29182136058807373){
     s0+=23.0;
     s1+=42.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i74<-0.016089946031570435){
    if(i52<0.30267995595932007){
     s0+=18.0;
     s1+=3.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i22<0.908851146697998){
     s0+=2.0;
     s1+=17.0;
    } else {
     s1+=115.0;
    }
   }
  }
 } else {
  if(i11<0.040883272886276245){
   if(i30<1.4396315813064575){
    if(i2<1.0067026615142822){
     s0+=176.0;
     s1+=53.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   } else {
    if(i72<-0.003935009241104126){
     s0+=1.0;
     s1+=61.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i39<0.013340933248400688){
    if(i71<6.528992457788263e-07){
     s0+=22.0;
     s1+=734.0;
    } else {
     s0+=137.0;
     s1+=10.0;
    }
   } else {
    if(i29<0.002427053404971957){
     s0+=68.0;
     s1+=425.0;
    } else {
     s0+=18.0;
     s1+=14128.0;
    }
   }
  }
 }
} else {
 if(i3<6.574392318725586e-05){
  if(i8<0.00032275915145874023){
   if(i27<0.0008680314058437943){
    if(i32<6.216764450073242e-05){
     s0+=25931.0;
     s1+=594.0;
    } else {
     s0+=3507.0;
     s1+=1618.0;
    }
   } else {
    if(i60<1.1134384870529175){
     s0+=74049.0;
     s1+=592.0;
    } else {
     s0+=752.0;
     s1+=181.0;
    }
   }
  } else {
   if(i56<0.02119291201233864){
    if(i23<1.1162974834442139){
     s0+=2889.0;
     s1+=912.0;
    } else {
     s0+=4532.0;
     s1+=206.0;
    }
   } else {
    if(i21<1.0133354663848877){
     s0+=1799.0;
     s1+=1017.0;
    } else {
     s0+=213.0;
     s1+=896.0;
    }
   }
  }
 } else {
  if(i12<0.0004009896074421704){
   if(i18<0.00038952339673414826){
    if(i67<-5.1733313739532605e-06){
     s1+=14.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i42<1.0008294582366943){
     s0+=3.0;
    } else {
     s0+=59.0;
     s1+=2692.0;
    }
   }
  } else {
   if(i39<0.1574060171842575){
    if(i26<-0.0007106661796569824){
     s1+=12.0;
    } else {
     s0+=1676.0;
    }
   } else {
    s1+=65.0;
   }
  }
 }
}
if(i4<2.0444393157958984e-05){
 if(i19<1.0182666778564453){
  if(i25<0.08869542181491852){
   if(i25<0.006473441142588854){
    if(i57<5.056078953202814e-05){
     s0+=64500.0;
     s1+=321.0;
    } else {
     s0+=2019.0;
     s1+=173.0;
    }
   } else {
    if(i2<0.9980146884918213){
     s0+=35661.0;
     s1+=521.0;
    } else {
     s0+=6228.0;
     s1+=2944.0;
    }
   }
  } else {
   if(i67<2.0643248717533424e-05){
    s1+=161.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i41<-9.02269584912574e-06){
   if(i55<1.003829002380371){
    if(i57<8.292015991173685e-06){
     s0+=49.0;
     s1+=36.0;
    } else {
     s0+=39.0;
     s1+=736.0;
    }
   } else {
    if(i14<0.23762351274490356){
     s0+=126.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i27<0.004856407176703215){
    if(i19<1.018388032913208){
     s1+=1.0;
    } else {
     s0+=463.0;
     s1+=5.0;
    }
   } else {
    if(i0<-0.0013496577739715576){
     s0+=36.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i36<1.1757044792175293){
  if(i27<0.0009705505217425525){
   if(i29<0.0002529688645154238){
    s0+=1578.0;
   } else {
    if(i35<0.0012701060622930527){
     s1+=3109.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i25<0.027421599254012108){
    if(i30<1.1822609901428223){
     s0+=3652.0;
    } else {
     s0+=282.0;
     s1+=83.0;
    }
   } else {
    if(i6<0.006892005912959576){
     s0+=11.0;
    } else {
     s1+=86.0;
    }
   }
  }
 } else {
  if(i15<1.0743002891540527){
   if(i0<0.0006380677223205566){
    if(i12<0.0005643069162033498){
     s0+=1009.0;
     s1+=96.0;
    } else {
     s0+=14.0;
     s1+=48.0;
    }
   } else {
    if(i47<1.000916600227356){
     s0+=90.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=272.0;
    }
   }
  } else {
   if(i16<0.9995224475860596){
    if(i56<0.058385055512189865){
     s0+=362.0;
     s1+=345.0;
    } else {
     s0+=67.0;
     s1+=1179.0;
    }
   } else {
    if(i11<0.09505677223205566){
     s0+=146.0;
     s1+=538.0;
    } else {
     s0+=45.0;
     s1+=13767.0;
    }
   }
  }
 }
}
if(i1<-9.838824189500883e-05){
 if(i13<0.9475562572479248){
  if(i60<1.0302375555038452){
   if(i18<0.0092988982796669){
    if(i70<0.05666739121079445){
     s0+=529.0;
     s1+=22.0;
    } else {
     s0+=8.0;
     s1+=15.0;
    }
   } else {
    if(i44<0.007165697403252125){
     s0+=17.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   }
  } else {
   if(i11<0.06287315487861633){
    s0+=5.0;
   } else {
    s1+=50.0;
   }
  }
 } else {
  if(i12<0.0007050560088828206){
   if(i11<0.033443450927734375){
    if(i70<0.024805793538689613){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=49.0;
     s1+=109.0;
    }
   } else {
    if(i4<0.0002281665802001953){
     s0+=20.0;
     s1+=15016.0;
    } else {
     s0+=68.0;
    }
   }
  } else {
   s0+=216.0;
  }
 }
} else {
 if(i13<1.0098170042037964){
  if(i17<1.0066288709640503){
   if(i58<0.00019735265232156962){
    if(i25<0.007805217988789082){
     s0+=69596.0;
     s1+=354.0;
    } else {
     s0+=17328.0;
     s1+=1818.0;
    }
   } else {
    if(i43<1.1144856214523315){
     s0+=24426.0;
     s1+=2093.0;
    } else {
     s0+=481.0;
     s1+=493.0;
    }
   }
  } else {
   if(i2<1.0079059600830078){
    if(i29<0.0021242727525532246){
     s0+=387.0;
     s1+=121.0;
    } else {
     s0+=247.0;
     s1+=408.0;
    }
   } else {
    if(i12<0.0010092237498611212){
     s0+=24.0;
     s1+=494.0;
    } else {
     s0+=25.0;
    }
   }
  }
 } else {
  if(i31<1.0917414426803589){
   if(i49<1.9151913875248283e-05){
    if(i4<8.344650268554688e-06){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=1824.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i34<0.0021215351298451424){
    if(i36<1.1161171197891235){
     s0+=201.0;
     s1+=182.0;
    } else {
     s0+=2299.0;
     s1+=7.0;
    }
   } else {
    if(i11<0.12377786636352539){
     s0+=544.0;
     s1+=153.0;
    } else {
     s0+=213.0;
     s1+=914.0;
    }
   }
  }
 }
}
if(i0<0.0009575486183166504){
 if(i11<0.2138250768184662){
  if(i18<0.0017414051108062267){
   if(i18<0.0011161656584590673){
    if(i43<1.0100433826446533){
     s0+=2353.0;
     s1+=59.0;
    } else {
     s0+=74315.0;
     s1+=215.0;
    }
   } else {
    if(i55<0.9999587535858154){
     s0+=8345.0;
     s1+=107.0;
    } else {
     s0+=6590.0;
     s1+=706.0;
    }
   }
  } else {
   if(i15<1.1300873756408691){
    if(i22<1.0081970691680908){
     s0+=20461.0;
     s1+=2914.0;
    } else {
     s0+=1578.0;
     s1+=1483.0;
    }
   } else {
    if(i3<-2.9265880584716797e-05){
     s0+=366.0;
     s1+=183.0;
    } else {
     s0+=113.0;
     s1+=948.0;
    }
   }
  }
 } else {
  if(i25<0.030813774093985558){
   if(i5<1.0017856359481812){
    if(i57<0.00018187098612543195){
     s0+=173.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    if(i77<0.07892358303070068){
     s1+=38.0;
    } else {
     s0+=34.0;
     s1+=27.0;
    }
   }
  } else {
   if(i41<-6.85858049109811e-06){
    if(i1<-2.5347701011924073e-05){
     s0+=2.0;
     s1+=1200.0;
    } else {
     s0+=13.0;
     s1+=77.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
} else {
 if(i3<0.0001385211944580078){
  if(i12<0.0007045901147648692){
   if(i61<-0.008007258176803589){
    if(i46<-1.8174247088609263e-05){
     s0+=2.0;
     s1+=35.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   } else {
    if(i6<0.0018128217197954655){
     s0+=65.0;
    } else {
     s0+=175.0;
     s1+=4594.0;
    }
   }
  } else {
   s0+=1678.0;
  }
 } else {
  if(i46<-6.022286106599495e-05){
   s0+=28.0;
  } else {
   if(i53<2.855062484741211e-05){
    if(i2<1.0081512928009033){
     s0+=23.0;
     s1+=54.0;
    } else {
     s0+=21.0;
     s1+=11721.0;
    }
   } else {
    if(i2<1.0106406211853027){
     s0+=59.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
}
if(i16<1.008302927017212){
 if(i24<0.2075493335723877){
  if(i18<0.0017660732846707106){
   if(i28<0.0005611196393147111){
    if(i58<0.00018002442084252834){
     s0+=24089.0;
     s1+=302.0;
    } else {
     s0+=1597.0;
     s1+=558.0;
    }
   } else {
    if(i41<-2.0165651221759617e-05){
     s0+=292.0;
     s1+=58.0;
    } else {
     s0+=65573.0;
     s1+=201.0;
    }
   }
  } else {
   if(i9<1.0084773302078247){
    if(i4<-1.1324882507324219e-06){
     s0+=14062.0;
     s1+=370.0;
    } else {
     s0+=7543.0;
     s1+=4198.0;
    }
   } else {
    if(i27<0.001055598957464099){
     s0+=51.0;
     s1+=1185.0;
    } else {
     s0+=872.0;
     s1+=630.0;
    }
   }
  }
 } else {
  if(i46<-3.927633770217653e-06){
   if(i52<0.032693978399038315){
    if(i18<0.002929289825260639){
     s0+=74.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=75.0;
    }
   } else {
    if(i40<1.1219151020050049){
     s0+=40.0;
     s1+=88.0;
    } else {
     s0+=39.0;
     s1+=2898.0;
    }
   }
  } else {
   if(i9<0.936697244644165){
    s1+=3.0;
   } else {
    if(i25<0.038527704775333405){
     s0+=318.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007013798458501697){
  if(i7<1.011652946472168){
   if(i3<7.11679458618164e-05){
    if(i57<2.5004352210089564e-05){
     s0+=321.0;
     s1+=60.0;
    } else {
     s1+=169.0;
    }
   } else {
    if(i53<5.811452865600586e-05){
     s0+=47.0;
     s1+=1562.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i46<-4.296697170502739e-06){
    if(i0<0.0010287165641784668){
     s0+=28.0;
     s1+=219.0;
    } else {
     s0+=2.0;
     s1+=11790.0;
    }
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i28<0.01700490526854992){
   s0+=1464.0;
  } else {
   s1+=8.0;
  }
 }
}
if(i0<0.0009605884552001953){
 if(i15<1.1402404308319092){
  if(i7<1.0124268531799316){
   if(i30<1.0905578136444092){
    if(i31<1.0545225143432617){
     s0+=24174.0;
     s1+=775.0;
    } else {
     s0+=2551.0;
     s1+=2025.0;
    }
   } else {
    if(i40<1.127637267112732){
     s0+=79815.0;
     s1+=1301.0;
    } else {
     s0+=5905.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i23<1.116804838180542){
    if(i1<-1.5419009287143126e-05){
     s0+=1.0;
     s1+=500.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i27<0.0022744224406778812){
     s0+=423.0;
    } else {
     s0+=361.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i25<0.037056658416986465){
   if(i42<1.001036286354065){
    if(i47<1.0009320974349976){
     s0+=744.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i30<1.176405668258667){
     s0+=222.0;
    } else {
     s0+=170.0;
     s1+=281.0;
    }
   }
  } else {
   if(i21<0.8904072046279907){
    if(i24<0.007647126913070679){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=48.0;
    }
   } else {
    if(i62<0.014695649966597557){
     s0+=36.0;
     s1+=1635.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i0<0.0017913579940795898){
  if(i12<0.0007045901147648692){
   if(i6<0.0026231883093714714){
    if(i29<0.0007192133343778551){
     s1+=2.0;
    } else {
     s0+=104.0;
    }
   } else {
    if(i12<0.0003956139553338289){
     s0+=73.0;
     s1+=3086.0;
    } else {
     s0+=137.0;
     s1+=424.0;
    }
   }
  } else {
   s0+=1454.0;
  }
 } else {
  if(i53<2.676248550415039e-05){
   if(i42<1.0010669231414795){
    if(i28<0.010706647299230099){
     s0+=84.0;
    } else {
     s1+=269.0;
    }
   } else {
    if(i47<0.9991918802261353){
     s0+=22.0;
    } else {
     s0+=30.0;
     s1+=12442.0;
    }
   }
  } else {
   if(i34<0.006336217280477285){
    s0+=228.0;
   } else {
    s1+=73.0;
   }
  }
 }
}
if(i7<1.0135951042175293){
 if(i8<0.0005111098289489746){
  if(i32<7.897615432739258e-05){
   if(i24<0.24798697233200073){
    if(i30<1.0905578136444092){
     s0+=21289.0;
     s1+=692.0;
    } else {
     s0+=56087.0;
     s1+=122.0;
    }
   } else {
    if(i57<8.188123319996521e-05){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=155.0;
    }
   }
  } else {
   if(i27<0.0009176249150186777){
    if(i6<0.004000547342002392){
     s0+=3588.0;
     s1+=409.0;
    } else {
     s0+=214.0;
     s1+=1676.0;
    }
   } else {
    if(i40<1.1223994493484497){
     s0+=24120.0;
     s1+=301.0;
    } else {
     s0+=2983.0;
     s1+=706.0;
    }
   }
  }
 } else {
  if(i18<0.0019722217693924904){
   if(i20<0.001286923885345459){
    if(i25<0.016505353152751923){
     s0+=3438.0;
     s1+=58.0;
    } else {
     s0+=9.0;
     s1+=45.0;
    }
   } else {
    if(i53<1.138448715209961e-05){
     s0+=11.0;
     s1+=284.0;
    } else {
     s0+=143.0;
     s1+=59.0;
    }
   }
  } else {
   if(i24<0.051966845989227295){
    if(i2<1.0045716762542725){
     s0+=1493.0;
     s1+=229.0;
    } else {
     s0+=87.0;
     s1+=280.0;
    }
   } else {
    if(i1<-9.527149086352438e-05){
     s0+=209.0;
     s1+=2649.0;
    } else {
     s0+=1365.0;
     s1+=2055.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013815650017932057){
  if(i67<-6.161931651149644e-06){
   if(i12<0.0009817746467888355){
    s1+=528.0;
   } else {
    s0+=20.0;
   }
  } else {
   if(i65<0.005113778170198202){
    if(i27<0.0026826118119060993){
     s0+=577.0;
    } else {
     s0+=9.0;
     s1+=12.0;
    }
   } else {
    if(i75<-0.003960820846259594){
     s0+=8.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i22<1.0224015712738037){
   if(i32<0.0012848377227783203){
    if(i32<0.0005143284797668457){
     s0+=33.0;
     s1+=1454.0;
    } else {
     s0+=238.0;
     s1+=982.0;
    }
   } else {
    if(i34<0.01088094525039196){
     s0+=159.0;
    } else {
     s1+=47.0;
    }
   }
  } else {
   if(i0<-0.00042557716369628906){
    if(i12<0.00036044997978024185){
     s0+=89.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i45<-0.0007350625819526613){
     s0+=1.0;
     s1+=8890.0;
    } else {
     s0+=90.0;
     s1+=2873.0;
    }
   }
  }
 }
}
if(i14<0.18751028180122375){
 if(i8<0.0005188584327697754){
  if(i18<0.0016234699869528413){
   if(i35<0.0005564579041674733){
    if(i23<1.1979892253875732){
     s0+=63225.0;
     s1+=73.0;
    } else {
     s0+=5901.0;
     s1+=85.0;
    }
   } else {
    if(i30<1.0907573699951172){
     s0+=2543.0;
     s1+=440.0;
    } else {
     s0+=14893.0;
     s1+=142.0;
    }
   }
  } else {
   if(i28<0.0010757704731076956){
    if(i50<0.00017867075803223997){
     s0+=1571.0;
     s1+=338.0;
    } else {
     s0+=662.0;
     s1+=1625.0;
    }
   } else {
    if(i34<0.001066046068444848){
     s0+=71.0;
     s1+=218.0;
    } else {
     s0+=19314.0;
     s1+=1110.0;
    }
   }
  }
 } else {
  if(i6<0.0034817690029740334){
   if(i49<-1.4206339983502403e-05){
    if(i26<0.0008963346481323242){
     s0+=46.0;
     s1+=550.0;
    } else {
     s0+=33.0;
     s1+=6.0;
    }
   } else {
    if(i78<-0.017132550477981567){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=5050.0;
     s1+=110.0;
    }
   }
  } else {
   if(i49<2.301778476976324e-05){
    if(i12<0.0007030277047306299){
     s0+=440.0;
     s1+=5781.0;
    } else {
     s0+=473.0;
    }
   } else {
    if(i43<1.0759761333465576){
     s0+=1206.0;
     s1+=317.0;
    } else {
     s0+=238.0;
     s1+=620.0;
    }
   }
  }
 }
} else {
 if(i25<0.007701862137764692){
  if(i27<0.0029020202346146107){
   if(i58<-0.00018758610531222075){
    s1+=2.0;
   } else {
    if(i3<0.0001227259635925293){
     s0+=381.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i67<5.984243216516916e-06){
    s1+=254.0;
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i41<-9.363375284010544e-06){
   if(i3<-2.962350845336914e-05){
    if(i40<1.16939377784729){
     s0+=92.0;
     s1+=78.0;
    } else {
     s1+=211.0;
    }
   } else {
    if(i29<0.0024420893751084805){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=10.0;
     s1+=12429.0;
    }
   }
  } else {
   if(i80<0.10314080119132996){
    if(i40<1.127683162689209){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i2<1.0001705884933472){
     s0+=207.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i22<1.0165544748306274){
 if(i3<6.526708602905273e-05){
  if(i1<-0.00010772857058327645){
   if(i43<1.0295443534851074){
    if(i61<-0.006861209869384766){
     s0+=404.0;
     s1+=41.0;
    } else {
     s0+=17.0;
     s1+=35.0;
    }
   } else {
    if(i28<0.0027081703301519156){
     s0+=8.0;
    } else {
     s0+=28.0;
     s1+=1049.0;
    }
   }
  } else {
   if(i8<0.000292360782623291){
    if(i18<0.001377878594212234){
     s0+=78557.0;
     s1+=436.0;
    } else {
     s0+=24364.0;
     s1+=2175.0;
    }
   } else {
    if(i56<0.028591472655534744){
     s0+=8863.0;
     s1+=1319.0;
    } else {
     s0+=1299.0;
     s1+=1116.0;
    }
   }
  }
 } else {
  if(i27<0.00237540015950799){
   if(i28<0.001034741522744298){
    if(i27<0.00020565498562064022){
     s0+=43.0;
    } else {
     s0+=9.0;
     s1+=1065.0;
    }
   } else {
    if(i23<1.1180615425109863){
     s1+=25.0;
    } else {
     s0+=1254.0;
    }
   }
  } else {
   if(i61<-0.00728568434715271){
    if(i25<0.03522973507642746){
     s0+=27.0;
     s1+=10.0;
    } else {
     s0+=16.0;
     s1+=138.0;
    }
   } else {
    if(i35<0.00048629133380018175){
     s0+=21.0;
     s1+=93.0;
    } else {
     s0+=25.0;
     s1+=2519.0;
    }
   }
  }
 }
} else {
 if(i20<0.0017542839050292969){
  if(i3<1.4603137969970703e-05){
   if(i60<1.1918110847473145){
    if(i14<0.20791611075401306){
     s0+=785.0;
     s1+=149.0;
    } else {
     s0+=18.0;
     s1+=116.0;
    }
   } else {
    if(i57<8.332671859534457e-05){
     s0+=45.0;
    } else {
     s1+=117.0;
    }
   }
  } else {
   if(i12<0.0007037960458546877){
    if(i57<4.29119836553582e-07){
     s0+=154.0;
     s1+=372.0;
    } else {
     s0+=136.0;
     s1+=2850.0;
    }
   } else {
    s0+=487.0;
   }
  }
 } else {
  if(i47<0.998352587223053){
   s0+=39.0;
  } else {
   if(i3<0.00011986494064331055){
    if(i21<1.0173006057739258){
     s0+=13.0;
     s1+=27.0;
    } else {
     s0+=12.0;
     s1+=997.0;
    }
   } else {
    if(i2<1.0063409805297852){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=9581.0;
    }
   }
  }
 }
}
if(i8<0.000569760799407959){
 if(i76<0.18641865253448486){
  if(i32<8.612871170043945e-05){
   if(i38<0.2223021388053894){
    if(i23<1.0905578136444092){
     s0+=18971.0;
     s1+=799.0;
    } else {
     s0+=60113.0;
     s1+=202.0;
    }
   } else {
    s1+=98.0;
   }
  } else {
   if(i6<0.0040504420176148415){
    if(i29<0.0006457591662183404){
     s0+=3773.0;
     s1+=442.0;
    } else {
     s0+=20958.0;
     s1+=243.0;
    }
   } else {
    if(i8<1.7404556274414062e-05){
     s0+=3283.0;
     s1+=243.0;
    } else {
     s0+=2371.0;
     s1+=2747.0;
    }
   }
  }
 } else {
  if(i35<0.001008220948278904){
   if(i35<0.0005463692941702902){
    s0+=132.0;
   } else {
    if(i77<0.10654237866401672){
     s1+=3.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i40<1.1185479164123535){
    if(i54<0.9526627063751221){
     s1+=1.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i68<0.14094266295433044){
     s0+=6.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=343.0;
    }
   }
  }
 }
} else {
 if(i21<1.0219385623931885){
  if(i62<0.000815766747109592){
   if(i26<0.00018197298049926758){
    if(i25<0.009922891855239868){
     s0+=3850.0;
     s1+=318.0;
    } else {
     s0+=655.0;
     s1+=804.0;
    }
   } else {
    if(i23<1.1180615425109863){
     s1+=1162.0;
    } else {
     s0+=897.0;
     s1+=134.0;
    }
   }
  } else {
   if(i43<1.0244418382644653){
    if(i49<1.8108758013113402e-05){
     s0+=16.0;
     s1+=176.0;
    } else {
     s0+=463.0;
     s1+=131.0;
    }
   } else {
    if(i2<1.0053987503051758){
     s0+=475.0;
     s1+=1329.0;
    } else {
     s0+=122.0;
     s1+=2897.0;
    }
   }
  }
 } else {
  if(i51<-6.027386916684918e-06){
   if(i9<1.0394272804260254){
    s0+=67.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i24<0.0900954008102417){
    if(i10<1.0115631818771362){
     s0+=58.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=84.0;
    }
   } else {
    if(i25<0.004185201600193977){
     s0+=35.0;
     s1+=188.0;
    } else {
     s0+=106.0;
     s1+=12092.0;
    }
   }
  }
 }
}
if(i11<0.19539520144462585){
 if(i54<1.02268648147583){
  if(i17<1.0067434310913086){
   if(i1<-8.28630945761688e-05){
    if(i13<0.9434192180633545){
     s0+=722.0;
     s1+=45.0;
    } else {
     s0+=481.0;
     s1+=1109.0;
    }
   } else {
    if(i35<0.0007055207388475537){
     s0+=78679.0;
     s1+=455.0;
    } else {
     s0+=31737.0;
     s1+=4221.0;
    }
   }
  } else {
   if(i3<0.00011974573135375977){
    if(i25<0.013377382420003414){
     s0+=1191.0;
     s1+=343.0;
    } else {
     s0+=245.0;
     s1+=725.0;
    }
   } else {
    if(i42<1.0012853145599365){
     s0+=64.0;
     s1+=8.0;
    } else {
     s0+=197.0;
     s1+=2197.0;
    }
   }
  }
 } else {
  if(i80<0.05367708206176758){
   if(i3<1.6123056411743164e-05){
    if(i37<1.0002226829528809){
     s0+=285.0;
     s1+=6.0;
    } else {
     s0+=204.0;
     s1+=108.0;
    }
   } else {
    if(i11<0.11800426244735718){
     s0+=227.0;
     s1+=534.0;
    } else {
     s0+=41.0;
     s1+=1350.0;
    }
   }
  } else {
   if(i9<1.0209704637527466){
    if(i25<0.0288575179874897){
     s0+=1592.0;
     s1+=116.0;
    } else {
     s0+=82.0;
     s1+=81.0;
    }
   } else {
    if(i23<1.3213659524917603){
     s0+=8.0;
     s1+=174.0;
    } else {
     s0+=71.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i1<-3.7652585888281465e-05){
  if(i1<-5.688601959263906e-05){
   if(i53<7.241964340209961e-05){
    if(i29<0.002024744637310505){
     s0+=11.0;
    } else {
     s0+=9.0;
     s1+=12449.0;
    }
   } else {
    s0+=1.0;
   }
  } else {
   if(i50<0.0018144005443900824){
    s0+=30.0;
   } else {
    if(i35<0.0005192947573959827){
     s0+=5.0;
    } else {
     s0+=10.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i31<1.1802709102630615){
   if(i59<0.0017093766946345568){
    s0+=256.0;
   } else {
    if(i3<6.693601608276367e-05){
     s0+=209.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   if(i36<1.3027558326721191){
    if(i18<0.002372236456722021){
     s0+=27.0;
    } else {
     s0+=19.0;
     s1+=190.0;
    }
   } else {
    if(i25<0.08393581211566925){
     s0+=80.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
}
if(i3<6.335973739624023e-05){
 if(i33<1.0242586135864258){
  if(i35<0.0007354473927989602){
   if(i29<0.0019064306979998946){
    if(i56<0.13650816679000854){
     s0+=75481.0;
     s1+=361.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i23<1.2000374794006348){
     s0+=418.0;
     s1+=120.0;
    } else {
     s0+=5730.0;
     s1+=57.0;
    }
   }
  } else {
   if(i27<0.0009290999732911587){
    if(i12<0.00025009014643728733){
     s0+=512.0;
     s1+=2821.0;
    } else {
     s0+=2872.0;
     s1+=150.0;
    }
   } else {
    if(i15<1.1391525268554688){
     s0+=28531.0;
     s1+=1568.0;
    } else {
     s0+=220.0;
     s1+=1091.0;
    }
   }
  }
 } else {
  if(i5<1.0010939836502075){
   if(i35<0.0010097534395754337){
    if(i17<1.0005879402160645){
     s0+=357.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=10.0;
    }
   } else {
    if(i45<-0.00032470980659127235){
     s0+=14.0;
     s1+=155.0;
    } else {
     s0+=35.0;
     s1+=12.0;
    }
   }
  } else {
   if(i45<-0.00017080025281757116){
    if(i32<0.0006818771362304688){
     s0+=98.0;
     s1+=1259.0;
    } else {
     s0+=169.0;
     s1+=137.0;
    }
   } else {
    if(i40<1.1693449020385742){
     s0+=119.0;
     s1+=25.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i6<0.00361812231130898){
  if(i12<0.0002575595863163471){
   if(i41<-0.00015213119331747293){
    s0+=26.0;
   } else {
    s1+=780.0;
   }
  } else {
   if(i7<1.0286617279052734){
    s0+=1644.0;
   } else {
    s1+=26.0;
   }
  }
 } else {
  if(i47<0.9983991384506226){
   if(i15<1.3898332118988037){
    s0+=226.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i12<0.0007051074644550681){
    if(i53<6.29425048828125e-05){
     s0+=141.0;
     s1+=15554.0;
    } else {
     s0+=32.0;
    }
   } else {
    s0+=54.0;
   }
  }
 }
}
if(i0<0.0009595155715942383){
 if(i24<0.22026625275611877){
  if(i1<-7.64209107728675e-05){
   if(i15<1.0743744373321533){
    if(i11<0.08803907036781311){
     s0+=1139.0;
     s1+=50.0;
    } else {
     s0+=76.0;
     s1+=93.0;
    }
   } else {
    if(i56<0.02073228359222412){
     s0+=199.0;
     s1+=117.0;
    } else {
     s0+=220.0;
     s1+=1206.0;
    }
   }
  } else {
   if(i9<1.0091831684112549){
    if(i18<0.0015695986803621054){
     s0+=86155.0;
     s1+=651.0;
    } else {
     s0+=24010.0;
     s1+=3347.0;
    }
   } else {
    if(i40<1.0833147764205933){
     s0+=154.0;
     s1+=638.0;
    } else {
     s0+=2163.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i14<0.22025063633918762){
   if(i2<1.003725528717041){
    if(i64<0.009100759401917458){
     s0+=89.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i77<0.0894111692905426){
     s1+=15.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i34<0.0022570497822016478){
    s0+=65.0;
   } else {
    if(i15<1.596516489982605){
     s0+=62.0;
     s1+=1396.0;
    } else {
     s0+=42.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i60<1.0592234134674072){
   if(i28<0.0011935400543734431){
    if(i12<0.0002657711738720536){
     s1+=1952.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i23<1.1180615425109863){
     s1+=113.0;
    } else {
     s0+=592.0;
    }
   }
  } else {
   if(i51<-2.722168801483349e-06){
    if(i28<0.000772956176660955){
     s1+=3.0;
    } else {
     s0+=1257.0;
     s1+=1.0;
    }
   } else {
    if(i30<1.125762701034546){
     s1+=383.0;
    } else {
     s0+=37.0;
    }
   }
  }
 } else {
  if(i66<-0.013395249843597412){
   if(i5<1.0061638355255127){
    if(i65<0.03108176589012146){
     s0+=39.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i66<-0.013502627611160278){
     s0+=1.0;
     s1+=85.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i11<0.09436097741127014){
    if(i80<0.05101737380027771){
     s0+=31.0;
     s1+=444.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   } else {
    if(i10<0.9849931597709656){
     s0+=4.0;
     s1+=101.0;
    } else {
     s0+=9.0;
     s1+=13388.0;
    }
   }
  }
 }
}
if(i26<0.00020569562911987305){
 if(i15<1.1401641368865967){
  if(i18<0.0018277347553521395){
   if(i35<0.0005504961591213942){
    if(i15<1.1354830265045166){
     s0+=69206.0;
     s1+=157.0;
    } else {
     s0+=341.0;
     s1+=26.0;
    }
   } else {
    if(i34<0.0003993614809587598){
     s0+=2529.0;
     s1+=756.0;
    } else {
     s0+=20514.0;
     s1+=310.0;
    }
   }
  } else {
   if(i23<1.1164028644561768){
    if(i52<0.01109536737203598){
     s0+=1630.0;
     s1+=400.0;
    } else {
     s0+=658.0;
     s1+=2767.0;
    }
   } else {
    if(i7<1.0144232511520386){
     s0+=19118.0;
     s1+=2156.0;
    } else {
     s0+=254.0;
     s1+=650.0;
    }
   }
  }
 } else {
  if(i35<0.0006463710451498628){
   if(i6<0.00561482971534133){
    if(i18<0.0016218170057982206){
     s0+=931.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i31<1.170027494430542){
    if(i59<0.003032101783901453){
     s0+=171.0;
     s1+=21.0;
    } else {
     s0+=26.0;
     s1+=45.0;
    }
   } else {
    if(i60<0.9555914402008057){
     s0+=87.0;
     s1+=110.0;
    } else {
     s0+=82.0;
     s1+=3669.0;
    }
   }
  }
 }
} else {
 if(i47<0.9984172582626343){
  if(i68<0.5279874801635742){
   s0+=381.0;
  } else {
   s1+=6.0;
  }
 } else {
  if(i0<0.0007838606834411621){
   if(i57<1.3523289453587495e-05){
    if(i33<1.0287668704986572){
     s0+=187.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i23<1.170225739479065){
     s0+=21.0;
     s1+=2.0;
    } else {
     s1+=59.0;
    }
   }
  } else {
   if(i51<-6.6163152041553985e-06){
    s0+=121.0;
   } else {
    if(i39<0.011377384886145592){
     s0+=248.0;
     s1+=1162.0;
    } else {
     s0+=81.0;
     s1+=11969.0;
    }
   }
  }
 }
}
if(i19<1.017000436782837){
 if(i0<0.0010581016540527344){
  if(i39<0.18335433304309845){
   if(i5<1.0020601749420166){
    if(i35<0.0007101721130311489){
     s0+=76203.0;
     s1+=410.0;
    } else {
     s0+=29793.0;
     s1+=3092.0;
    }
   } else {
    if(i1<-4.539152723737061e-05){
     s0+=1310.0;
     s1+=1280.0;
    } else {
     s0+=5602.0;
     s1+=746.0;
    }
   }
  } else {
   if(i40<1.1228663921356201){
    if(i51<-3.896121597790625e-06){
     s1+=3.0;
    } else {
     s0+=147.0;
    }
   } else {
    if(i10<0.9508770704269409){
     s0+=55.0;
     s1+=13.0;
    } else {
     s0+=7.0;
     s1+=703.0;
    }
   }
  }
 } else {
  if(i34<0.0022767395712435246){
   if(i23<1.1180615425109863){
    if(i28<0.00016285388846881688){
     s0+=5.0;
    } else {
     s1+=1184.0;
    }
   } else {
    if(i36<1.1762815713882446){
     s0+=1207.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i13<0.9589747190475464){
    if(i4<7.039308547973633e-05){
     s0+=29.0;
     s1+=25.0;
    } else {
     s0+=9.0;
     s1+=130.0;
    }
   } else {
    if(i2<0.9999538660049438){
     s0+=2.0;
    } else {
     s0+=20.0;
     s1+=2419.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013815650017932057){
  if(i67<-7.468921467079781e-06){
   if(i9<1.0162131786346436){
    if(i1<-0.00022728550538886338){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    s1+=386.0;
   }
  } else {
   if(i49<1.0861233022296801e-05){
    s0+=824.0;
   } else {
    if(i41<-8.33116973808501e-06){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=105.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i51<-6.282024969550548e-06){
   s0+=153.0;
  } else {
   if(i26<-0.00019615888595581055){
    if(i24<0.18499380350112915){
     s0+=268.0;
     s1+=30.0;
    } else {
     s0+=58.0;
     s1+=506.0;
    }
   } else {
    if(i4<1.9669532775878906e-06){
     s0+=105.0;
     s1+=84.0;
    } else {
     s0+=311.0;
     s1+=13539.0;
    }
   }
  }
 }
}
if(i13<1.0147950649261475){
 if(i6<0.013996429741382599){
  if(i0<0.000976264476776123){
   if(i32<0.00011008977890014648){
    if(i18<0.0013796668499708176){
     s0+=68585.0;
     s1+=297.0;
    } else {
     s0+=14460.0;
     s1+=887.0;
    }
   } else {
    if(i1<-5.581394725595601e-05){
     s0+=1501.0;
     s1+=1215.0;
    } else {
     s0+=28326.0;
     s1+=3080.0;
    }
   }
  } else {
   if(i35<0.001122807152569294){
    if(i50<0.0010748517233878374){
     s0+=8.0;
     s1+=976.0;
    } else {
     s0+=416.0;
     s1+=497.0;
    }
   } else {
    if(i29<0.0023926454596221447){
     s0+=1113.0;
    } else {
     s0+=18.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i14<0.033338844776153564){
   if(i75<0.003525783307850361){
    if(i70<0.04719236493110657){
     s0+=859.0;
     s1+=31.0;
    } else {
     s0+=42.0;
     s1+=48.0;
    }
   } else {
    if(i42<1.003112554550171){
     s0+=12.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  } else {
   if(i74<-0.014194637537002563){
    if(i39<0.08985276520252228){
     s0+=73.0;
     s1+=37.0;
    } else {
     s0+=27.0;
     s1+=314.0;
    }
   } else {
    if(i21<0.910591185092926){
     s0+=35.0;
     s1+=33.0;
    } else {
     s0+=63.0;
     s1+=3297.0;
    }
   }
  }
 }
} else {
 if(i4<9.834766387939453e-06){
  if(i43<1.2215156555175781){
   if(i37<1.0016770362854004){
    if(i25<0.03444107994437218){
     s0+=290.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i62<-0.0004990705638192594){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=49.0;
     s1+=3.0;
    }
   }
  } else {
   if(i55<0.9979128837585449){
    s1+=77.0;
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i34<0.002756561851128936){
   if(i5<1.0061790943145752){
    if(i51<-3.047174686798826e-06){
     s0+=294.0;
     s1+=14.0;
    } else {
     s0+=38.0;
     s1+=1670.0;
    }
   } else {
    s0+=192.0;
   }
  } else {
   if(i3<-1.0609626770019531e-05){
    if(i1<-6.506220233859494e-05){
     s1+=6.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i0<0.0008782744407653809){
     s0+=55.0;
     s1+=439.0;
    } else {
     s0+=12.0;
     s1+=11117.0;
    }
   }
  }
 }
}
if(i54<1.0277631282806396){
 if(i7<1.0131590366363525){
  if(i5<1.0026410818099976){
   if(i35<0.0007118294597603381){
    if(i29<0.0003420555149205029){
     s0+=19861.0;
     s1+=288.0;
    } else {
     s0+=58464.0;
     s1+=140.0;
    }
   } else {
    if(i29<0.0009936934802681208){
     s0+=3305.0;
     s1+=2755.0;
    } else {
     s0+=27693.0;
     s1+=954.0;
    }
   }
  } else {
   if(i18<0.0018085180781781673){
    if(i12<0.00016893686552066356){
     s0+=116.0;
     s1+=252.0;
    } else {
     s0+=2413.0;
     s1+=12.0;
    }
   } else {
    if(i3<1.6033649444580078e-05){
     s0+=1309.0;
     s1+=517.0;
    } else {
     s0+=1052.0;
     s1+=3279.0;
    }
   }
  }
 } else {
  if(i12<0.0006739527452737093){
   if(i26<0.00011342763900756836){
    if(i41<-1.0708236004575156e-05){
     s0+=167.0;
     s1+=366.0;
    } else {
     s0+=100.0;
     s1+=1.0;
    }
   } else {
    if(i25<0.0018762880936264992){
     s0+=28.0;
     s1+=49.0;
    } else {
     s0+=87.0;
     s1+=2980.0;
    }
   }
  } else {
   if(i25<0.06974878907203674){
    s0+=660.0;
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i8<0.0003540515899658203){
  if(i25<0.03478619456291199){
   if(i41<-6.549531008204212e-06){
    if(i35<0.0013172902399674058){
     s0+=83.0;
     s1+=108.0;
    } else {
     s0+=135.0;
    }
   } else {
    s0+=614.0;
   }
  } else {
   if(i76<0.10513314604759216){
    if(i3<-4.8786401748657227e-05){
     s0+=44.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i27<0.002461327239871025){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i12<0.0007449550903402269){
   if(i41<-1.1969767001573928e-05){
    if(i6<0.0050004166550934315){
     s0+=252.0;
     s1+=368.0;
    } else {
     s0+=73.0;
     s1+=11792.0;
    }
   } else {
    if(i18<0.002283404115587473){
     s0+=40.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   s0+=206.0;
  }
 }
}
if(i1<-9.780903201317415e-05){
 if(i13<0.9475562572479248){
  if(i60<1.0210341215133667){
   if(i14<0.09799987077713013){
    if(i11<0.04574957489967346){
     s0+=539.0;
     s1+=28.0;
    } else {
     s0+=39.0;
     s1+=18.0;
    }
   } else {
    if(i40<1.3002631664276123){
     s0+=1.0;
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i4<3.7670135498046875e-05){
    if(i19<0.9863796830177307){
     s0+=1.0;
     s1+=66.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i40<1.1178078651428223){
   if(i53<1.7702579498291016e-05){
    if(i71<2.3403206341754412e-06){
     s0+=14.0;
     s1+=1025.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i27<0.004019846674054861){
     s0+=221.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   }
  } else {
   if(i66<-0.010575711727142334){
    if(i11<0.026906639337539673){
     s0+=56.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=204.0;
    }
   } else {
    if(i14<0.028567224740982056){
     s0+=40.0;
     s1+=86.0;
    } else {
     s0+=25.0;
     s1+=13993.0;
    }
   }
  }
 }
} else {
 if(i3<6.312131881713867e-05){
  if(i6<0.004049303941428661){
   if(i27<0.0005824537947773933){
    if(i36<1.05497145652771){
     s0+=20322.0;
     s1+=116.0;
    } else {
     s0+=9131.0;
     s1+=973.0;
    }
   } else {
    if(i1<-6.177213799674064e-05){
     s0+=330.0;
     s1+=73.0;
    } else {
     s0+=63123.0;
     s1+=196.0;
    }
   }
  } else {
   if(i23<1.1164028644561768){
    if(i27<0.00042825491982512176){
     s0+=2213.0;
     s1+=1049.0;
    } else {
     s0+=134.0;
     s1+=1593.0;
    }
   } else {
    if(i0<-6.511807441711426e-05){
     s0+=17793.0;
     s1+=717.0;
    } else {
     s0+=619.0;
     s1+=1305.0;
    }
   }
  }
 } else {
  if(i27<0.000989001477137208){
   if(i34<0.00021652047871612012){
    s0+=77.0;
   } else {
    s1+=1688.0;
   }
  } else {
   if(i27<0.0022335799876600504){
    s0+=1665.0;
   } else {
    if(i6<0.004837789572775364){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=60.0;
     s1+=1136.0;
    }
   }
  }
 }
}
if(i7<1.0131404399871826){
 if(i6<0.013849745504558086){
  if(i2<1.0031509399414062){
   if(i6<0.0036110945511609316){
    if(i29<0.0006450897781178355){
     s0+=27257.0;
     s1+=799.0;
    } else {
     s0+=58531.0;
     s1+=200.0;
    }
   } else {
    if(i29<0.0011862034443765879){
     s0+=2932.0;
     s1+=2161.0;
    } else {
     s0+=20384.0;
     s1+=1018.0;
    }
   }
  } else {
   if(i34<0.002121706958860159){
    if(i29<0.0010477660689502954){
     s0+=979.0;
     s1+=1139.0;
    } else {
     s0+=3758.0;
     s1+=88.0;
    }
   } else {
    if(i36<1.4644027948379517){
     s0+=132.0;
     s1+=993.0;
    } else {
     s0+=93.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i43<1.0477511882781982){
   if(i2<1.0037723779678345){
    if(i14<0.07162019610404968){
     s0+=1012.0;
     s1+=95.0;
    } else {
     s0+=55.0;
     s1+=95.0;
    }
   } else {
    if(i54<0.8639990091323853){
     s0+=18.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=118.0;
    }
   }
  } else {
   if(i2<0.9949692487716675){
    if(i45<-0.00011474345228634775){
     s0+=1.0;
     s1+=101.0;
    } else {
     s0+=56.0;
     s1+=22.0;
    }
   } else {
    if(i42<0.9948239922523499){
     s0+=2.0;
    } else {
     s0+=29.0;
     s1+=2529.0;
    }
   }
  }
 }
} else {
 if(i46<-4.000776243628934e-06){
  if(i25<0.006877989042550325){
   if(i67<-2.4385105916735483e-06){
    if(i35<0.0013586317654699087){
     s0+=107.0;
     s1+=1011.0;
    } else {
     s0+=152.0;
     s1+=29.0;
    }
   } else {
    if(i13<1.0228157043457031){
     s0+=441.0;
     s1+=36.0;
    } else {
     s0+=11.0;
     s1+=45.0;
    }
   }
  } else {
   if(i1<-3.3107935450971127e-05){
    if(i12<0.0007150453748181462){
     s0+=107.0;
     s1+=13547.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i40<1.1693449020385742){
     s0+=187.0;
     s1+=51.0;
    } else {
     s1+=55.0;
    }
   }
  }
 } else {
  if(i47<1.0009582042694092){
   if(i18<0.0027212288696318865){
    s0+=259.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i5<1.001355767250061){
    s1+=23.0;
   } else {
    s0+=25.0;
   }
  }
 }
}
if(i21<1.0162713527679443){
 if(i0<0.0009835362434387207){
  if(i8<0.0002925992012023926){
   if(i1<-0.00010767009371193126){
    if(i39<0.1839444637298584){
     s0+=188.0;
     s1+=53.0;
    } else {
     s0+=3.0;
     s1+=109.0;
    }
   } else {
    if(i42<0.9997739791870117){
     s0+=46203.0;
     s1+=183.0;
    } else {
     s0+=56397.0;
     s1+=2497.0;
    }
   }
  } else {
   if(i25<0.009554717689752579){
    if(i28<0.0005624862387776375){
     s0+=2480.0;
     s1+=333.0;
    } else {
     s0+=5648.0;
     s1+=23.0;
    }
   } else {
    if(i24<0.045088887214660645){
     s0+=1058.0;
     s1+=235.0;
    } else {
     s0+=1268.0;
     s1+=2816.0;
    }
   }
  }
 } else {
  if(i39<0.023444456979632378){
   if(i32<0.0007205605506896973){
    if(i64<0.000409443600801751){
     s0+=3.0;
     s1+=986.0;
    } else {
     s0+=151.0;
     s1+=167.0;
    }
   } else {
    if(i23<1.185887336730957){
     s0+=1083.0;
    } else {
     s1+=94.0;
    }
   }
  } else {
   if(i2<1.0072298049926758){
    if(i56<0.03842076286673546){
     s0+=91.0;
     s1+=101.0;
    } else {
     s0+=28.0;
     s1+=456.0;
    }
   } else {
    if(i69<0.007785591296851635){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=12.0;
     s1+=1872.0;
    }
   }
  }
 }
} else {
 if(i1<-6.446179759223014e-05){
  if(i1<-8.836502820486203e-05){
   if(i4<0.0002504587173461914){
    if(i53<-3.102421760559082e-05){
     s0+=21.0;
    } else {
     s0+=28.0;
     s1+=12520.0;
    }
   } else {
    s0+=28.0;
   }
  } else {
   if(i51<-3.952175575250294e-06){
    if(i58<0.0008483307901769876){
     s0+=85.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i4<5.245208740234375e-06){
     s0+=26.0;
     s1+=26.0;
    } else {
     s0+=64.0;
     s1+=916.0;
    }
   }
  }
 } else {
  if(i23<1.1178560256958008){
   if(i29<0.001312224310822785){
    if(i3<-1.4483928680419922e-05){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=656.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i27<0.00256150308996439){
    if(i20<3.102421760559082e-05){
     s0+=118.0;
     s1+=30.0;
    } else {
     s0+=864.0;
     s1+=1.0;
    }
   } else {
    if(i40<1.134283423423767){
     s0+=366.0;
     s1+=64.0;
    } else {
     s0+=93.0;
     s1+=380.0;
    }
   }
  }
 }
}
if(i1<-0.0001063833333319053){
 if(i14<0.018716037273406982){
  if(i13<0.988326907157898){
   if(i70<0.06534868478775024){
    if(i47<1.0025575160980225){
     s0+=438.0;
     s1+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i41<-3.8059552025515586e-05){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   }
  } else {
   if(i73<-0.07445484399795532){
    s1+=45.0;
   } else {
    if(i16<1.0157723426818848){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i35<0.004024064168334007){
   if(i51<-6.326945367618464e-06){
    if(i78<-0.043235719203948975){
     s1+=1.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i22<0.8995684385299683){
     s0+=68.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=14617.0;
    }
   }
  } else {
   s0+=101.0;
  }
 }
} else {
 if(i15<1.1300873756408691){
  if(i0<0.000946044921875){
   if(i23<1.1162974834442139){
    if(i66<0.001252204179763794){
     s0+=29228.0;
     s1+=2867.0;
    } else {
     s0+=1055.0;
     s1+=878.0;
    }
   } else {
    if(i5<1.0023930072784424){
     s0+=77693.0;
     s1+=530.0;
    } else {
     s0+=3634.0;
     s1+=768.0;
    }
   }
  } else {
   if(i28<0.001181131461635232){
    if(i12<0.0002675970899872482){
     s1+=1768.0;
    } else {
     s0+=113.0;
    }
   } else {
    if(i23<1.1979892253875732){
     s0+=1649.0;
     s1+=168.0;
    } else {
     s0+=52.0;
     s1+=646.0;
    }
   }
  }
 } else {
  if(i1<-4.086765693500638e-05){
   if(i53<-1.4901161193847656e-06){
    if(i39<0.05562523379921913){
     s0+=78.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   } else {
    if(i27<0.0018097495194524527){
     s0+=64.0;
    } else {
     s0+=129.0;
     s1+=1400.0;
    }
   }
  } else {
   if(i39<0.10736504942178726){
    if(i1<-2.5837131033767946e-05){
     s0+=362.0;
     s1+=111.0;
    } else {
     s0+=1773.0;
     s1+=30.0;
    }
   } else {
    if(i12<0.00014623612514697015){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=207.0;
    }
   }
  }
 }
}
if(i14<0.1866081953048706){
 if(i42<1.001725673675537){
  if(i6<0.003865992184728384){
   if(i18<0.0010495472233742476){
    if(i34<0.0018103718757629395){
     s0+=63485.0;
     s1+=135.0;
    } else {
     s0+=2887.0;
     s1+=87.0;
    }
   } else {
    if(i5<0.9994458556175232){
     s0+=10353.0;
     s1+=105.0;
    } else {
     s0+=7934.0;
     s1+=850.0;
    }
   }
  } else {
   if(i4<-1.4901161193847656e-06){
    if(i30<1.0905578136444092){
     s0+=2039.0;
     s1+=146.0;
    } else {
     s0+=14574.0;
     s1+=118.0;
    }
   } else {
    if(i27<0.0010702942963689566){
     s0+=325.0;
     s1+=3516.0;
    } else {
     s0+=1827.0;
     s1+=417.0;
    }
   }
  }
 } else {
  if(i12<0.0003542218473739922){
   if(i57<-1.4909880519553553e-05){
    if(i53<5.46574592590332e-05){
     s0+=46.0;
     s1+=2378.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i2<1.0038650035858154){
     s0+=5010.0;
     s1+=783.0;
    } else {
     s0+=363.0;
     s1+=1792.0;
    }
   }
  } else {
   if(i25<0.054721757769584656){
    if(i65<0.003871775232255459){
     s0+=6054.0;
     s1+=123.0;
    } else {
     s0+=719.0;
     s1+=345.0;
    }
   } else {
    if(i15<1.1148015260696411){
     s0+=104.0;
     s1+=89.0;
    } else {
     s0+=20.0;
     s1+=351.0;
    }
   }
  }
 }
} else {
 if(i36<1.175400972366333){
  if(i6<0.007560260593891144){
   if(i39<0.026734713464975357){
    if(i76<0.23898184299468994){
     s0+=490.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i5<1.0024120807647705){
     s0+=42.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=13.0;
    }
   }
  } else {
   if(i32<-0.00017535686492919922){
    s0+=4.0;
   } else {
    s1+=33.0;
   }
  }
 } else {
  if(i41<-9.383120413986035e-06){
   if(i2<1.0022790431976318){
    if(i40<1.1713674068450928){
     s0+=111.0;
     s1+=229.0;
    } else {
     s0+=3.0;
     s1+=626.0;
    }
   } else {
    if(i0<0.00018608570098876953){
     s0+=3.0;
     s1+=80.0;
    } else {
     s1+=11971.0;
    }
   }
  } else {
   if(i67<-1.1552397154446226e-06){
    s1+=6.0;
   } else {
    if(i6<0.004810180515050888){
     s0+=192.0;
     s1+=5.0;
    } else {
     s0+=23.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i0<0.0009647011756896973){
 if(i6<0.007561680860817432){
  if(i32<8.612871170043945e-05){
   if(i35<0.0006123223574832082){
    if(i23<1.0776758193969727){
     s0+=13054.0;
     s1+=117.0;
    } else {
     s0+=45721.0;
    }
   } else {
    if(i30<1.0907573699951172){
     s0+=2266.0;
     s1+=662.0;
    } else {
     s0+=15838.0;
     s1+=68.0;
    }
   }
  } else {
   if(i4<-3.516674041748047e-06){
    if(i29<0.000851762481033802){
     s0+=412.0;
     s1+=32.0;
    } else {
     s0+=8784.0;
     s1+=25.0;
    }
   } else {
    if(i6<0.004004435148090124){
     s0+=20678.0;
     s1+=714.0;
    } else {
     s0+=2311.0;
     s1+=2638.0;
    }
   }
  }
 } else {
  if(i0<-0.0005053579807281494){
   if(i48<1.0253148078918457){
    if(i35<0.0030737891793251038){
     s0+=4400.0;
     s1+=299.0;
    } else {
     s0+=205.0;
     s1+=158.0;
    }
   } else {
    if(i38<0.1652717888355255){
     s0+=61.0;
    } else {
     s0+=1.0;
     s1+=141.0;
    }
   }
  } else {
   if(i38<0.026926368474960327){
    if(i10<0.977341890335083){
     s0+=270.0;
     s1+=43.0;
    } else {
     s0+=101.0;
     s1+=194.0;
    }
   } else {
    if(i26<-0.0006223022937774658){
     s0+=104.0;
     s1+=92.0;
    } else {
     s0+=101.0;
     s1+=2893.0;
    }
   }
  }
 }
} else {
 if(i28<0.0020320508629083633){
  if(i34<0.0012518188450485468){
   if(i12<0.00026703899493440986){
    s1+=2134.0;
   } else {
    s0+=104.0;
   }
  } else {
   if(i27<0.0010724718449637294){
    s1+=206.0;
   } else {
    if(i27<0.0024323281832039356){
     s0+=1823.0;
    } else {
     s1+=49.0;
    }
   }
  }
 } else {
  if(i36<1.1329221725463867){
   if(i2<1.0044971704483032){
    s0+=58.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i62<0.00940251350402832){
    if(i15<1.07395601272583){
     s0+=46.0;
     s1+=190.0;
    } else {
     s0+=31.0;
     s1+=13556.0;
    }
   } else {
    if(i12<0.00012957814033143222){
     s0+=25.0;
     s1+=17.0;
    } else {
     s0+=7.0;
     s1+=219.0;
    }
   }
  }
 }
}
if(i3<6.347894668579102e-05){
 if(i11<0.20787692070007324){
  if(i9<1.0115270614624023){
   if(i1<-9.622889047022909e-05){
    if(i11<0.04277065396308899){
     s0+=606.0;
     s1+=106.0;
    } else {
     s0+=78.0;
     s1+=649.0;
    }
   } else {
    if(i29<0.001049475627951324){
     s0+=32265.0;
     s1+=3150.0;
    } else {
     s0+=80152.0;
     s1+=1326.0;
    }
   }
  } else {
   if(i31<1.0953161716461182){
    if(i37<0.9990289807319641){
     s0+=1.0;
    } else {
     s1+=479.0;
    }
   } else {
    if(i57<1.79807138920296e-05){
     s0+=740.0;
     s1+=54.0;
    } else {
     s0+=423.0;
     s1+=449.0;
    }
   }
  }
 } else {
  if(i77<0.11118894815444946){
   if(i23<1.1935834884643555){
    s0+=21.0;
   } else {
    if(i41<-8.396091288886964e-06){
     s0+=32.0;
     s1+=1406.0;
    } else {
     s0+=33.0;
     s1+=2.0;
    }
   }
  } else {
   if(i18<0.002516740933060646){
    if(i19<1.0368618965148926){
     s0+=208.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.05664088577032089){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=79.0;
    }
   }
  }
 }
} else {
 if(i27<0.002353748306632042){
  if(i29<0.0012701142113655806){
   if(i32<0.0005447268486022949){
    if(i23<1.116804838180542){
     s1+=2266.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=95.0;
   }
  } else {
   if(i31<1.0881938934326172){
    s1+=99.0;
   } else {
    s0+=1924.0;
   }
  }
 } else {
  if(i0<0.0018426775932312012){
   if(i24<0.10409674048423767){
    if(i20<-0.0015149712562561035){
     s0+=99.0;
     s1+=47.0;
    } else {
     s0+=17.0;
     s1+=145.0;
    }
   } else {
    if(i11<0.10270935297012329){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=22.0;
     s1+=2514.0;
    }
   }
  } else {
   if(i2<1.0061033964157104){
    if(i64<0.0014084980357438326){
     s0+=3.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=11309.0;
   }
  }
 }
}
if(i7<1.013148546218872){
 if(i2<1.0034775733947754){
  if(i8<0.0003134608268737793){
   if(i25<0.09055037796497345){
    if(i18<0.0014896292705088854){
     s0+=81070.0;
     s1+=612.0;
    } else {
     s0+=22676.0;
     s1+=2420.0;
    }
   } else {
    s1+=111.0;
   }
  } else {
   if(i6<0.004146904684603214){
    if(i40<1.1371207237243652){
     s0+=5033.0;
     s1+=80.0;
    } else {
     s0+=22.0;
     s1+=19.0;
    }
   } else {
    if(i3<-7.092952728271484e-06){
     s0+=1555.0;
     s1+=498.0;
    } else {
     s0+=604.0;
     s1+=1894.0;
    }
   }
  }
 } else {
  if(i68<0.12555652856826782){
   if(i49<-8.913128112908453e-06){
    if(i62<0.00013324417523108423){
     s0+=107.0;
     s1+=48.0;
    } else {
     s0+=106.0;
     s1+=704.0;
    }
   } else {
    if(i25<0.014635961502790451){
     s0+=3792.0;
     s1+=591.0;
    } else {
     s0+=32.0;
     s1+=400.0;
    }
   }
  } else {
   if(i56<0.036294274032115936){
    if(i39<0.03519593924283981){
     s0+=96.0;
     s1+=92.0;
    } else {
     s0+=33.0;
     s1+=230.0;
    }
   } else {
    if(i40<1.075517177581787){
     s0+=12.0;
    } else {
     s0+=27.0;
     s1+=1856.0;
    }
   }
  }
 }
} else {
 if(i6<0.005015648901462555){
  if(i12<0.00025867222575470805){
   if(i3<3.74913215637207e-05){
    if(i4<1.811981201171875e-05){
     s0+=259.0;
     s1+=3.0;
    } else {
     s0+=83.0;
     s1+=32.0;
    }
   } else {
    if(i0<0.0007215738296508789){
     s0+=10.0;
     s1+=28.0;
    } else {
     s1+=989.0;
    }
   }
  } else {
   if(i29<0.012127712368965149){
    s0+=933.0;
   } else {
    s1+=33.0;
   }
  }
 } else {
  if(i67<1.713316305540502e-05){
   if(i26<-0.0003027915954589844){
    if(i38<0.1433870792388916){
     s0+=32.0;
     s1+=8.0;
    } else {
     s1+=86.0;
    }
   } else {
    if(i3<-5.328655242919922e-05){
     s0+=5.0;
    } else {
     s0+=69.0;
     s1+=13556.0;
    }
   }
  } else {
   s0+=14.0;
  }
 }
}
if(i5<1.0026252269744873){
 if(i19<1.018606424331665){
  if(i32<8.219480514526367e-05){
   if(i39<0.269126832485199){
    if(i18<0.005623736418783665){
     s0+=78216.0;
     s1+=886.0;
    } else {
     s0+=121.0;
     s1+=85.0;
    }
   } else {
    if(i15<1.1195333003997803){
     s0+=3.0;
    } else {
     s1+=78.0;
    }
   }
  } else {
   if(i6<0.003937643952667713){
    if(i28<0.0005596858682110906){
     s0+=4627.0;
     s1+=427.0;
    } else {
     s0+=20887.0;
     s1+=192.0;
    }
   } else {
    if(i0<-0.0004717409610748291){
     s0+=5155.0;
     s1+=414.0;
    } else {
     s0+=873.0;
     s1+=2416.0;
    }
   }
  }
 } else {
  if(i8<0.0002678036689758301){
   if(i29<0.007757179439067841){
    if(i35<0.0009450945653952658){
     s0+=444.0;
     s1+=30.0;
    } else {
     s0+=85.0;
     s1+=104.0;
    }
   } else {
    if(i15<1.1141090393066406){
     s0+=1.0;
    } else {
     s1+=161.0;
    }
   }
  } else {
   if(i37<1.00022554397583){
    if(i25<0.018154345452785492){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=65.0;
    }
   } else {
    if(i35<0.0006965492502786219){
     s0+=20.0;
    } else {
     s0+=22.0;
     s1+=784.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007041473872959614){
  if(i17<1.0070827007293701){
   if(i7<1.016484022140503){
    if(i32<0.00047665834426879883){
     s0+=289.0;
     s1+=1211.0;
    } else {
     s0+=2822.0;
     s1+=1050.0;
    }
   } else {
    if(i47<1.0022618770599365){
     s0+=70.0;
     s1+=2507.0;
    } else {
     s0+=92.0;
     s1+=99.0;
    }
   }
  } else {
   if(i3<7.56382942199707e-05){
    if(i25<0.013380225747823715){
     s0+=158.0;
     s1+=7.0;
    } else {
     s0+=147.0;
     s1+=577.0;
    }
   } else {
    if(i0<0.0014123916625976562){
     s0+=105.0;
     s1+=554.0;
    } else {
     s0+=49.0;
     s1+=12700.0;
    }
   }
  }
 } else {
  if(i31<1.328157901763916){
   s0+=2282.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i5<1.0026252269744873){
 if(i8<0.0002983212471008301){
  if(i63<-0.00781996175646782){
   s1+=122.0;
  } else {
   if(i24<0.24798697233200073){
    if(i18<0.001478683901950717){
     s0+=80873.0;
     s1+=559.0;
    } else {
     s0+=22412.0;
     s1+=2291.0;
    }
   } else {
    if(i12<0.0003162278444506228){
     s0+=92.0;
     s1+=33.0;
    } else {
     s0+=5.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i1<-4.298573549021967e-05){
   if(i3<-2.485513687133789e-05){
    if(i45<-0.0003915387496817857){
     s0+=12.0;
     s1+=61.0;
    } else {
     s0+=472.0;
     s1+=8.0;
    }
   } else {
    if(i6<0.0038738115690648556){
     s0+=256.0;
     s1+=43.0;
    } else {
     s0+=356.0;
     s1+=1632.0;
    }
   }
  } else {
   if(i25<0.008646557107567787){
    if(i6<0.004078884609043598){
     s0+=5250.0;
     s1+=7.0;
    } else {
     s0+=128.0;
     s1+=83.0;
    }
   } else {
    if(i27<0.0010296867694705725){
     s0+=113.0;
     s1+=610.0;
    } else {
     s0+=484.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i7<1.016484022140503){
  if(i39<0.031943462789058685){
   if(i34<0.0011361006181687117){
    if(i27<0.00024427002063021064){
     s0+=756.0;
    } else {
     s0+=29.0;
     s1+=1292.0;
    }
   } else {
    if(i31<1.1824626922607422){
     s0+=3440.0;
     s1+=103.0;
    } else {
     s0+=245.0;
     s1+=353.0;
    }
   }
  } else {
   if(i15<1.0852792263031006){
    if(i0<9.059906005859375e-05){
     s0+=748.0;
     s1+=69.0;
    } else {
     s0+=197.0;
     s1+=413.0;
    }
   } else {
    if(i3<2.6226043701171875e-06){
     s0+=158.0;
     s1+=344.0;
    } else {
     s0+=169.0;
     s1+=3194.0;
    }
   }
  }
 } else {
  if(i12<0.0008036313811317086){
   if(i26<-0.00025218725204467773){
    if(i23<1.4030930995941162){
     s0+=85.0;
     s1+=64.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i0<-0.0008020997047424316){
     s0+=40.0;
    } else {
     s0+=44.0;
     s1+=12710.0;
    }
   }
  } else {
   s0+=207.0;
  }
 }
}
if(i1<-0.00011003482359228656){
 if(i51<-6.419467354135122e-06){
  if(i39<0.11832552403211594){
   s0+=179.0;
  } else {
   s1+=1.0;
  }
 } else {
  if(i38<0.00909346342086792){
   if(i66<-0.01138979196548462){
    if(i72<-0.01179194450378418){
     s0+=11.0;
     s1+=26.0;
    } else {
     s0+=296.0;
     s1+=9.0;
    }
   } else {
    if(i43<1.030665397644043){
     s0+=11.0;
     s1+=10.0;
    } else {
     s1+=154.0;
    }
   }
  } else {
   if(i3<1.1861324310302734e-05){
    if(i38<0.07731854915618896){
     s0+=53.0;
     s1+=68.0;
    } else {
     s0+=10.0;
     s1+=493.0;
    }
   } else {
    if(i13<0.947498083114624){
     s0+=24.0;
     s1+=21.0;
    } else {
     s0+=6.0;
     s1+=13961.0;
    }
   }
  }
 }
} else {
 if(i7<1.0131568908691406){
  if(i5<1.002319574356079){
   if(i27<0.0008908312302082777){
    if(i8<0.00015240907669067383){
     s0+=28189.0;
     s1+=1560.0;
    } else {
     s0+=3085.0;
     s1+=1604.0;
    }
   } else {
    if(i48<1.0457332134246826){
     s0+=76963.0;
     s1+=695.0;
    } else {
     s0+=117.0;
     s1+=103.0;
    }
   }
  } else {
   if(i25<0.016119061037898064){
    if(i59<0.0006580024491995573){
     s0+=1325.0;
     s1+=931.0;
    } else {
     s0+=3864.0;
     s1+=274.0;
    }
   } else {
    if(i49<2.4902818040573038e-05){
     s0+=166.0;
     s1+=1156.0;
    } else {
     s0+=736.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i36<1.0905578136444092){
   s1+=1318.0;
  } else {
   if(i30<1.1793382167816162){
    if(i12<0.0002395708579570055){
     s0+=125.0;
     s1+=251.0;
    } else {
     s0+=791.0;
    }
   } else {
    if(i31<1.58058500289917){
     s0+=297.0;
     s1+=1431.0;
    } else {
     s0+=165.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i1<-0.00010986015695380047){
 if(i9<0.9365501403808594){
  if(i24<0.04665669798851013){
   if(i65<0.03162757307291031){
    if(i18<0.009927483275532722){
     s0+=331.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i70<0.07211589813232422){
     s0+=6.0;
    } else {
     s0+=4.0;
     s1+=19.0;
    }
   }
  } else {
   if(i44<0.010162289254367352){
    if(i13<0.9483792185783386){
     s0+=33.0;
     s1+=6.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i45<-0.0021134079433977604){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i12<0.0007059713825583458){
   if(i71<-4.856011400988791e-06){
    if(i39<0.02921062335371971){
     s0+=21.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i11<0.033443450927734375){
     s0+=41.0;
     s1+=84.0;
    } else {
     s0+=69.0;
     s1+=14428.0;
    }
   }
  } else {
   s0+=140.0;
  }
 }
} else {
 if(i57<-2.593071258161217e-05){
  if(i23<1.1180615425109863){
   s1+=1019.0;
  } else {
   if(i6<0.0040213000029325485){
    s0+=79.0;
   } else {
    s1+=191.0;
   }
  }
 } else {
  if(i18<0.0017987422179430723){
   if(i36<1.0776758193969727){
    if(i30<1.0577976703643799){
     s0+=17644.0;
     s1+=2.0;
    } else {
     s0+=5697.0;
     s1+=892.0;
    }
   } else {
    if(i19<1.029581069946289){
     s0+=70210.0;
     s1+=299.0;
    } else {
     s0+=172.0;
     s1+=47.0;
    }
   }
  } else {
   if(i0<-0.000357210636138916){
    if(i34<0.000913514697458595){
     s0+=205.0;
     s1+=276.0;
    } else {
     s0+=17360.0;
     s1+=638.0;
    }
   } else {
    if(i30<1.0533521175384521){
     s0+=1769.0;
    } else {
     s0+=2739.0;
     s1+=6320.0;
    }
   }
  }
 }
}
if(i3<6.407499313354492e-05){
 if(i8<0.00032824277877807617){
  if(i6<0.01971467211842537){
   if(i11<0.2234729528427124){
    if(i18<0.0014525727601721883){
     s0+=81484.0;
     s1+=523.0;
    } else {
     s0+=23514.0;
     s1+=2400.0;
    }
   } else {
    if(i41<-8.016733772819862e-06){
     s0+=7.0;
     s1+=144.0;
    } else {
     s0+=109.0;
    }
   }
  } else {
   if(i3<-0.00016307830810546875){
    s0+=21.0;
   } else {
    if(i44<0.012351801618933678){
     s0+=12.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i15<1.116865873336792){
   if(i6<0.00410185381770134){
    if(i39<0.014589440077543259){
     s0+=5866.0;
     s1+=33.0;
    } else {
     s0+=811.0;
     s1+=68.0;
    }
   } else {
    if(i31<1.0938332080841064){
     s0+=82.0;
     s1+=1326.0;
    } else {
     s0+=2037.0;
     s1+=938.0;
    }
   }
  } else {
   if(i34<0.002334130462259054){
    if(i28<0.0019271087367087603){
     s0+=471.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.17581325769424438){
     s0+=253.0;
     s1+=807.0;
    } else {
     s0+=75.0;
     s1+=1375.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019788923673331738){
  if(i34<0.0012506716884672642){
   if(i46<-1.549557964608539e-05){
    s0+=31.0;
   } else {
    if(i35<0.0011386764235794544){
     s0+=16.0;
     s1+=2052.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i30<1.0981338024139404){
    s1+=206.0;
   } else {
    if(i36<1.1762815713882446){
     s0+=1809.0;
     s1+=10.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i34<0.0023648133501410484){
   if(i35<0.002800657181069255){
    s1+=45.0;
   } else {
    s0+=42.0;
   }
  } else {
   if(i57<0.0002861364628188312){
    if(i13<1.0144039392471313){
     s0+=63.0;
     s1+=2632.0;
    } else {
     s1+=11107.0;
    }
   } else {
    if(i24<0.0034831762313842773){
     s0+=27.0;
     s1+=10.0;
    } else {
     s0+=17.0;
     s1+=125.0;
    }
   }
  }
 }
}
if(i0<0.0009567141532897949){
 if(i11<0.20764318108558655){
  if(i5<1.0021003484725952){
   if(i6<0.0035519252996891737){
    if(i35<0.0005121048307046294){
     s0+=60824.0;
     s1+=132.0;
    } else {
     s0+=23799.0;
     s1+=816.0;
    }
   } else {
    if(i2<0.9989027976989746){
     s0+=21577.0;
     s1+=675.0;
    } else {
     s0+=1357.0;
     s1+=2365.0;
    }
   }
  } else {
   if(i40<1.1703872680664062){
    if(i6<0.004131694324314594){
     s0+=4922.0;
     s1+=120.0;
    } else {
     s0+=1536.0;
     s1+=1575.0;
    }
   } else {
    if(i13<0.957634687423706){
     s0+=328.0;
     s1+=94.0;
    } else {
     s0+=48.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i41<-8.430932211922482e-06){
   if(i34<0.0026031676679849625){
    if(i39<0.024076122790575027){
     s0+=41.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i52<0.037943560630083084){
     s0+=24.0;
     s1+=57.0;
    } else {
     s0+=31.0;
     s1+=1487.0;
    }
   }
  } else {
   s0+=220.0;
  }
 }
} else {
 if(i29<0.0023625660687685013){
  if(i44<0.0008971877978183329){
   if(i11<0.03728008270263672){
    if(i31<1.0464098453521729){
     s0+=44.0;
    } else {
     s1+=67.0;
    }
   } else {
    if(i47<0.9997772574424744){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=2190.0;
    }
   }
  } else {
   if(i34<0.0009621439385227859){
    s1+=99.0;
   } else {
    if(i51<6.675308128478719e-08){
     s0+=1862.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<0.9820970296859741){
   if(i53<1.055002212524414e-05){
    if(i14<0.023083925247192383){
     s0+=33.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=47.0;
    }
   } else {
    if(i1<-0.00019505867385305464){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=129.0;
    }
   }
  } else {
   if(i40<1.075517177581787){
    if(i19<1.0042567253112793){
     s1+=25.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i14<0.09759768843650818){
     s0+=27.0;
     s1+=508.0;
    } else {
     s0+=11.0;
     s1+=13096.0;
    }
   }
  }
 }
}
if(i14<0.186611145734787){
 if(i17<1.0046154260635376){
  if(i5<1.0022215843200684){
   if(i23<1.1162974834442139){
    if(i30<1.0577976703643799){
     s0+=17798.0;
     s1+=5.0;
    } else {
     s0+=11582.0;
     s1+=3255.0;
    }
   } else {
    if(i43<1.1422367095947266){
     s0+=77975.0;
     s1+=550.0;
    } else {
     s0+=374.0;
     s1+=115.0;
    }
   }
  } else {
   if(i20<0.0009957551956176758){
    if(i45<-0.00016157104982994497){
     s0+=1271.0;
     s1+=974.0;
    } else {
     s0+=2678.0;
     s1+=269.0;
    }
   } else {
    if(i18<0.0015761260874569416){
     s0+=52.0;
    } else {
     s0+=28.0;
     s1+=630.0;
    }
   }
  }
 } else {
  if(i6<0.002898415084928274){
   if(i30<1.116804838180542){
    if(i17<1.0071066617965698){
     s0+=344.0;
    } else {
     s0+=12.0;
     s1+=326.0;
    }
   } else {
    if(i17<1.01285982131958){
     s0+=2421.0;
    } else {
     s1+=75.0;
    }
   }
  } else {
   if(i0<0.0009751319885253906){
    if(i43<1.0262742042541504){
     s0+=412.0;
     s1+=101.0;
    } else {
     s0+=541.0;
     s1+=708.0;
    }
   } else {
    if(i71<2.0639165541069815e-06){
     s0+=345.0;
     s1+=4106.0;
    } else {
     s0+=83.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i6<0.004826132208108902){
  if(i37<1.0055046081542969){
   if(i10<1.0130099058151245){
    if(i22<1.0129618644714355){
     s0+=565.0;
     s1+=12.0;
    } else {
     s0+=120.0;
     s1+=28.0;
    }
   } else {
    if(i14<0.1935862898826599){
     s0+=2.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i26<0.0003802776336669922){
    if(i7<0.9893652200698853){
     s1+=2.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   } else {
    s1+=134.0;
   }
  }
 } else {
  if(i17<0.9930460453033447){
   if(i23<1.4396315813064575){
    s0+=52.0;
   } else {
    s1+=61.0;
   }
  } else {
   if(i46<-1.3539798828787752e-06){
    if(i27<0.0019964007660746574){
     s0+=7.0;
    } else {
     s0+=45.0;
     s1+=12695.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
}
if(i33<1.0212335586547852){
 if(i15<1.1402404308319092){
  if(i2<1.003851056098938){
   if(i35<0.0007061988580971956){
    if(i15<1.1354830265045166){
     s0+=77446.0;
     s1+=433.0;
    } else {
     s0+=286.0;
     s1+=44.0;
    }
   } else {
    if(i29<0.0009480245062150061){
     s0+=3256.0;
     s1+=2677.0;
    } else {
     s0+=29148.0;
     s1+=1341.0;
    }
   }
  } else {
   if(i1<-4.675999662140384e-05){
    if(i47<0.9998147487640381){
     s0+=475.0;
     s1+=9.0;
    } else {
     s0+=668.0;
     s1+=3143.0;
    }
   } else {
    if(i55<1.0029196739196777){
     s0+=979.0;
     s1+=563.0;
    } else {
     s0+=1459.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i1<-4.4743828766513616e-05){
   if(i46<-2.8828017093474045e-06){
    if(i0<-0.0010308623313903809){
     s0+=25.0;
     s1+=71.0;
    } else {
     s0+=60.0;
     s1+=2449.0;
    }
   } else {
    if(i25<0.01944705843925476){
     s0+=42.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i56<0.13287420570850372){
    if(i25<0.03854388743638992){
     s0+=851.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=54.0;
    }
   } else {
    if(i63<-0.0015296305064111948){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i26<0.0002461671829223633){
  if(i6<0.005096016451716423){
   if(i50<0.0009950202656909823){
    if(i29<0.0009227942791767418){
     s1+=70.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i45<-0.000343146501109004){
     s0+=562.0;
     s1+=113.0;
    } else {
     s0+=862.0;
     s1+=8.0;
    }
   }
  } else {
   if(i20<-0.004460752010345459){
    if(i38<0.18918737769126892){
     s0+=43.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i42<0.9969387650489807){
     s0+=30.0;
    } else {
     s0+=66.0;
     s1+=3487.0;
    }
   }
  }
 } else {
  if(i21<1.0226552486419678){
   if(i6<0.002515695057809353){
    if(i23<1.1180615425109863){
     s1+=18.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i49<2.760833922366146e-06){
     s0+=7.0;
     s1+=204.0;
    } else {
     s0+=14.0;
     s1+=10.0;
    }
   }
  } else {
   if(i71<7.021590590738924e-06){
    s1+=9693.0;
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i8<0.0005717873573303223){
 if(i6<0.003654367756098509){
  if(i15<1.0231759548187256){
   if(i18<0.0008578773704357445){
    if(i8<-0.0003484785556793213){
     s0+=3616.0;
     s1+=57.0;
    } else {
     s0+=5348.0;
    }
   } else {
    if(i17<0.9979754686355591){
     s0+=2404.0;
     s1+=42.0;
    } else {
     s0+=943.0;
     s1+=395.0;
    }
   }
  } else {
   if(i6<0.0028505988884717226){
    if(i34<0.001812628353945911){
     s0+=59647.0;
     s1+=135.0;
    } else {
     s0+=8290.0;
     s1+=144.0;
    }
   } else {
    if(i43<1.022996425628662){
     s0+=753.0;
     s1+=103.0;
    } else {
     s0+=5941.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i16<0.9962193369865417){
   if(i60<1.1216037273406982){
    if(i14<0.1854701042175293){
     s0+=17595.0;
     s1+=589.0;
    } else {
     s0+=99.0;
     s1+=160.0;
    }
   } else {
    if(i6<0.006573546677827835){
     s0+=174.0;
     s1+=8.0;
    } else {
     s1+=258.0;
    }
   }
  } else {
   if(i25<0.01176360435783863){
    if(i8<-0.00012552738189697266){
     s0+=3639.0;
    } else {
     s0+=665.0;
     s1+=614.0;
    }
   } else {
    if(i37<0.9994674921035767){
     s0+=587.0;
     s1+=174.0;
    } else {
     s0+=183.0;
     s1+=2232.0;
    }
   }
  }
 }
} else {
 if(i6<0.0040731425397098064){
  if(i20<0.001366734504699707){
   if(i57<-2.3071945179253817e-05){
    if(i29<0.0008039497770369053){
     s1+=50.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i62<-0.0009595450828783214){
     s0+=3.0;
     s1+=32.0;
    } else {
     s0+=4301.0;
     s1+=87.0;
    }
   }
  } else {
   if(i31<1.0953161716461182){
    if(i7<1.0058586597442627){
     s0+=1.0;
    } else {
     s1+=632.0;
    }
   } else {
    if(i17<1.0121943950653076){
     s0+=577.0;
     s1+=6.0;
    } else {
     s1+=321.0;
    }
   }
  }
 } else {
  if(i61<-0.007099062204360962){
   if(i39<0.12814193964004517){
    if(i8<0.0017729997634887695){
     s0+=352.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   } else {
    if(i40<1.0976893901824951){
     s0+=22.0;
    } else {
     s0+=43.0;
     s1+=223.0;
    }
   }
  } else {
   if(i19<1.0201168060302734){
    if(i0<-7.921457290649414e-05){
     s0+=512.0;
     s1+=188.0;
    } else {
     s0+=694.0;
     s1+=5328.0;
    }
   } else {
    if(i2<1.0038349628448486){
     s0+=101.0;
     s1+=490.0;
    } else {
     s0+=37.0;
     s1+=11830.0;
    }
   }
  }
 }
}
if(i4<2.7954578399658203e-05){
 if(i8<0.0003281235694885254){
  if(i41<-3.5022916563320905e-05){
   if(i15<1.0870472192764282){
    if(i6<0.022026507183909416){
     s0+=310.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i60<0.9927083253860474){
     s0+=17.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=234.0;
    }
   }
  } else {
   if(i14<0.23903319239616394){
    if(i6<0.0028206859715282917){
     s0+=75493.0;
     s1+=566.0;
    } else {
     s0+=29066.0;
     s1+=2346.0;
    }
   } else {
    if(i6<0.004804055206477642){
     s0+=60.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i18<0.0020021116361021996){
   if(i22<1.018916130065918){
    if(i25<0.013404032215476036){
     s0+=3796.0;
     s1+=57.0;
    } else {
     s0+=56.0;
     s1+=84.0;
    }
   } else {
    if(i36<1.1412231922149658){
     s0+=6.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i32<0.00033351778984069824){
    if(i11<0.043063849210739136){
     s0+=398.0;
     s1+=100.0;
    } else {
     s0+=142.0;
     s1+=1959.0;
    }
   } else {
    if(i47<1.000717282295227){
     s0+=1249.0;
     s1+=35.0;
    } else {
     s0+=963.0;
     s1+=671.0;
    }
   }
  }
 }
} else {
 if(i25<0.007727803196758032){
  if(i12<0.0002703849459066987){
   if(i3<5.9723854064941406e-05){
    if(i31<1.0955593585968018){
     s1+=11.0;
    } else {
     s0+=131.0;
     s1+=4.0;
    }
   } else {
    if(i51<-1.5504068869631737e-05){
     s0+=20.0;
    } else {
     s0+=9.0;
     s1+=1904.0;
    }
   }
  } else {
   if(i0<0.003419220447540283){
    if(i19<0.9762786626815796){
     s0+=36.0;
     s1+=12.0;
    } else {
     s0+=3293.0;
    }
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i14<0.12415513396263123){
   if(i10<1.0118978023529053){
    if(i2<1.0024287700653076){
     s0+=680.0;
     s1+=217.0;
    } else {
     s0+=618.0;
     s1+=1002.0;
    }
   } else {
    if(i47<1.0023517608642578){
     s0+=20.0;
     s1+=1166.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i36<1.1416611671447754){
    if(i50<0.0007385999197140336){
     s1+=1.0;
    } else {
     s0+=86.0;
    }
   } else {
    if(i26<-0.00041747093200683594){
     s0+=84.0;
     s1+=327.0;
    } else {
     s0+=48.0;
     s1+=13252.0;
    }
   }
  }
 }
}
if(i1<-9.840834536589682e-05){
 if(i11<0.04129183292388916){
  if(i43<1.0572526454925537){
   if(i20<-0.001522362232208252){
    if(i2<1.0071600675582886){
     s0+=596.0;
     s1+=38.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i12<0.0003708078293129802){
     s1+=25.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i3<-5.614757537841797e-05){
    s0+=10.0;
   } else {
    if(i31<1.1249759197235107){
     s0+=7.0;
    } else {
     s0+=6.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i40<1.1178078651428223){
   if(i32<0.0010593533515930176){
    if(i45<-0.001053020590916276){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=998.0;
    }
   } else {
    if(i57<0.00020119705004617572){
     s0+=142.0;
    } else {
     s0+=5.0;
     s1+=15.0;
    }
   }
  } else {
   if(i19<0.889582097530365){
    if(i44<0.013956034556031227){
     s0+=49.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=204.0;
    }
   } else {
    if(i27<0.0018814849900081754){
     s0+=9.0;
    } else {
     s0+=22.0;
     s1+=13911.0;
    }
   }
  }
 }
} else {
 if(i7<1.0131568908691406){
  if(i18<0.0017439296934753656){
   if(i3<0.00012010335922241211){
    if(i1<-7.304830069188029e-05){
     s0+=21.0;
     s1+=33.0;
    } else {
     s0+=92287.0;
     s1+=1055.0;
    }
   } else {
    if(i40<1.0908130407333374){
     s1+=112.0;
    } else {
     s0+=10.0;
     s1+=4.0;
    }
   }
  } else {
   if(i0<-0.0004074573516845703){
    if(i64<0.008987288922071457){
     s0+=17661.0;
     s1+=662.0;
    } else {
     s0+=50.0;
     s1+=75.0;
    }
   } else {
    if(i30<1.0533521175384521){
     s0+=1811.0;
    } else {
     s0+=2620.0;
     s1+=4406.0;
    }
   }
  }
 } else {
  if(i53<1.2934207916259766e-05){
   if(i5<1.0003385543823242){
    s0+=224.0;
   } else {
    if(i1<-3.1777541153132915e-05){
     s0+=216.0;
     s1+=2255.0;
    } else {
     s0+=173.0;
     s1+=88.0;
    }
   }
  } else {
   if(i18<0.004227423574775457){
    if(i32<0.000723719596862793){
     s0+=27.0;
     s1+=61.0;
    } else {
     s0+=670.0;
     s1+=5.0;
    }
   } else {
    if(i10<0.9868609309196472){
     s0+=2.0;
    } else {
     s1+=98.0;
    }
   }
  }
 }
}
if(i4<2.3066997528076172e-05){
 if(i76<0.19047755002975464){
  if(i33<1.021680235862732){
   if(i35<0.0007071393774822354){
    if(i61<-0.0003910660743713379){
     s0+=14031.0;
     s1+=234.0;
    } else {
     s0+=64660.0;
     s1+=209.0;
    }
   } else {
    if(i3<-3.88026237487793e-05){
     s0+=24243.0;
     s1+=534.0;
    } else {
     s0+=6282.0;
     s1+=3334.0;
    }
   }
  } else {
   if(i1<-4.241206625010818e-05){
    if(i23<1.5508465766906738){
     s0+=33.0;
     s1+=570.0;
    } else {
     s0+=129.0;
     s1+=30.0;
    }
   } else {
    if(i18<0.0030040740966796875){
     s0+=583.0;
     s1+=17.0;
    } else {
     s0+=77.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i34<0.008649144321680069){
   if(i6<0.0064681051298975945){
    if(i57<0.00016045621305238456){
     s0+=144.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=8.0;
    }
   } else {
    s1+=44.0;
   }
  } else {
   if(i67<1.8616467059473507e-05){
    if(i45<0.00010903977090492845){
     s1+=337.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i8<-0.0011844635009765625){
     s1+=2.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i12<0.000704434234648943){
  if(i6<0.0025590104050934315){
   if(i17<1.0092811584472656){
    if(i13<1.0163323879241943){
     s0+=1230.0;
     s1+=6.0;
    } else {
     s0+=87.0;
     s1+=17.0;
    }
   } else {
    if(i42<1.0048425197601318){
     s1+=368.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   }
  } else {
   if(i0<0.00013768672943115234){
    if(i15<1.1141393184661865){
     s0+=1008.0;
     s1+=181.0;
    } else {
     s0+=128.0;
     s1+=350.0;
    }
   } else {
    if(i0<0.0009688735008239746){
     s0+=551.0;
     s1+=2253.0;
    } else {
     s0+=199.0;
     s1+=15675.0;
    }
   }
  }
 } else {
  s0+=3187.0;
 }
}
if(i10<1.0101938247680664){
 if(i4<1.8298625946044922e-05){
  if(i52<0.36349326372146606){
   if(i9<1.0087132453918457){
    if(i35<0.0006896551931276917){
     s0+=76219.0;
     s1+=314.0;
    } else {
     s0+=29938.0;
     s1+=3101.0;
    }
   } else {
    if(i6<0.003942091483622789){
     s0+=1439.0;
     s1+=30.0;
    } else {
     s0+=291.0;
     s1+=491.0;
    }
   }
  } else {
   if(i45<-0.0002879798994399607){
    if(i2<0.9846150875091553){
     s0+=3.0;
    } else {
     s1+=213.0;
    }
   } else {
    if(i29<0.028936393558979034){
     s0+=132.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i28<0.0038097987417131662){
   if(i12<0.00030988751677796245){
    if(i35<0.00042290627607144415){
     s0+=482.0;
     s1+=18.0;
    } else {
     s0+=761.0;
     s1+=1505.0;
    }
   } else {
    if(i36<1.17277193069458){
     s0+=3983.0;
     s1+=15.0;
    } else {
     s0+=258.0;
     s1+=83.0;
    }
   }
  } else {
   if(i56<0.05479907989501953){
    if(i16<0.9941833019256592){
     s0+=730.0;
     s1+=103.0;
    } else {
     s0+=371.0;
     s1+=707.0;
    }
   } else {
    if(i11<0.041713327169418335){
     s0+=332.0;
     s1+=89.0;
    } else {
     s0+=133.0;
     s1+=3067.0;
    }
   }
  }
 }
} else {
 if(i25<0.007662137504667044){
  if(i12<0.00027126725763082504){
   if(i26<0.00017750263214111328){
    if(i30<1.4586446285247803){
     s0+=16.0;
     s1+=54.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i0<0.000784754753112793){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=1587.0;
    }
   }
  } else {
   if(i5<1.0083434581756592){
    s0+=1273.0;
   } else {
    s1+=30.0;
   }
  }
 } else {
  if(i1<-6.371826748363674e-05){
   if(i56<0.0001519501965958625){
    if(i23<1.2312616109848022){
     s0+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i41<-1.3680326446774416e-05){
     s0+=36.0;
     s1+=12435.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   }
  } else {
   if(i12<0.0003400905115995556){
    if(i17<1.0008718967437744){
     s0+=84.0;
     s1+=14.0;
    } else {
     s0+=8.0;
     s1+=344.0;
    }
   } else {
    s0+=94.0;
   }
  }
 }
}
if(i22<1.0170331001281738){
 if(i58<0.0005024604615755379){
  if(i2<1.0079392194747925){
   if(i32<0.00011008977890014648){
    if(i40<1.0585176944732666){
     s0+=31225.0;
     s1+=898.0;
    } else {
     s0+=45002.0;
     s1+=84.0;
    }
   } else {
    if(i27<0.0009524866472929716){
     s0+=4791.0;
     s1+=2739.0;
    } else {
     s0+=20851.0;
     s1+=623.0;
    }
   }
  } else {
   if(i32<0.0010572075843811035){
    if(i32<0.0008070170879364014){
     s0+=2.0;
     s1+=991.0;
    } else {
     s0+=77.0;
     s1+=105.0;
    }
   } else {
    if(i30<1.23252534866333){
     s0+=408.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i17<1.0034253597259521){
   if(i1<-9.144559589913115e-05){
    if(i38<0.033609360456466675){
     s0+=420.0;
     s1+=94.0;
    } else {
     s0+=58.0;
     s1+=624.0;
    }
   } else {
    if(i26<-0.00025281310081481934){
     s0+=10666.0;
     s1+=404.0;
    } else {
     s0+=735.0;
     s1+=442.0;
    }
   }
  } else {
   if(i10<0.9754418134689331){
    if(i25<0.05596037954092026){
     s0+=541.0;
     s1+=69.0;
    } else {
     s0+=71.0;
     s1+=158.0;
    }
   } else {
    if(i25<0.025859497487545013){
     s0+=263.0;
     s1+=388.0;
    } else {
     s0+=82.0;
     s1+=2577.0;
    }
   }
  }
 }
} else {
 if(i41<-1.2405662346282043e-05){
  if(i22<1.0245475769042969){
   if(i6<0.003497741185128689){
    if(i31<1.0905089378356934){
     s1+=140.0;
    } else {
     s0+=536.0;
     s1+=58.0;
    }
   } else {
    if(i12<0.0008575890678912401){
     s0+=92.0;
     s1+=1661.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i24<0.0876220166683197){
    if(i3<5.698204040527344e-05){
     s0+=67.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=43.0;
    }
   } else {
    if(i51<-6.455192760768114e-06){
     s0+=16.0;
    } else {
     s0+=169.0;
     s1+=11969.0;
    }
   }
  }
 } else {
  if(i20<9.03010368347168e-05){
   if(i18<0.0025688842870295048){
    if(i2<1.0002615451812744){
     s0+=171.0;
    } else {
     s0+=9.0;
     s1+=25.0;
    }
   } else {
    if(i8<-0.0002060532569885254){
     s0+=10.0;
     s1+=2.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   s0+=338.0;
  }
 }
}
if(i6<0.007674234453588724){
 if(i20<0.0013867020606994629){
  if(i35<0.0006894000107422471){
   if(i5<1.002683162689209){
    if(i19<1.0182666778564453){
     s0+=76913.0;
     s1+=362.0;
    } else {
     s0+=430.0;
     s1+=31.0;
    }
   } else {
    if(i32<0.000498354434967041){
     s0+=79.0;
     s1+=169.0;
    } else {
     s0+=1635.0;
    }
   }
  } else {
   if(i29<0.0009300523670390248){
    if(i36<1.0510823726654053){
     s0+=3038.0;
     s1+=32.0;
    } else {
     s0+=791.0;
     s1+=3130.0;
    }
   } else {
    if(i4<4.827976226806641e-06){
     s0+=22627.0;
     s1+=176.0;
    } else {
     s0+=4761.0;
     s1+=818.0;
    }
   }
  }
 } else {
  if(i20<0.0020009875297546387){
   if(i27<0.0010754058603197336){
    s1+=749.0;
   } else {
    if(i25<0.01299965474754572){
     s0+=890.0;
     s1+=20.0;
    } else {
     s1+=107.0;
    }
   }
  } else {
   if(i12<0.001742253778502345){
    s1+=1955.0;
   } else {
    s0+=29.0;
   }
  }
 }
} else {
 if(i49<4.452924258657731e-05){
  if(i15<1.052986741065979){
   if(i40<1.0517606735229492){
    s0+=265.0;
   } else {
    if(i10<0.9925330281257629){
     s0+=231.0;
     s1+=58.0;
    } else {
     s1+=138.0;
    }
   }
  } else {
   if(i3<-2.0831823348999023e-05){
    if(i23<1.3962788581848145){
     s0+=314.0;
     s1+=31.0;
    } else {
     s0+=17.0;
     s1+=101.0;
    }
   } else {
    if(i51<-7.324348189285956e-06){
     s0+=49.0;
    } else {
     s0+=195.0;
     s1+=15738.0;
    }
   }
  }
 } else {
  if(i19<1.0168750286102295){
   if(i38<0.10838702321052551){
    if(i38<0.05807465314865112){
     s0+=3598.0;
     s1+=143.0;
    } else {
     s0+=334.0;
     s1+=156.0;
    }
   } else {
    if(i0<-0.0018724501132965088){
     s0+=78.0;
     s1+=43.0;
    } else {
     s0+=42.0;
     s1+=352.0;
    }
   }
  } else {
   if(i3<-0.001106947660446167){
    s0+=4.0;
   } else {
    if(i49<6.816702079959214e-05){
     s1+=230.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i0<0.0009695291519165039){
 if(i6<0.007267617620527744){
  if(i18<0.001674183295108378){
   if(i43<1.0178465843200684){
    if(i30<1.0547914505004883){
     s0+=5302.0;
    } else {
     s0+=5103.0;
     s1+=435.0;
    }
   } else {
    if(i9<1.0124280452728271){
     s0+=78542.0;
     s1+=461.0;
    } else {
     s0+=596.0;
     s1+=55.0;
    }
   }
  } else {
   if(i0<-0.000479966402053833){
    if(i34<0.000913514697458595){
     s0+=407.0;
     s1+=186.0;
    } else {
     s0+=14278.0;
     s1+=147.0;
    }
   } else {
    if(i12<0.0003452305682003498){
     s0+=1658.0;
     s1+=2896.0;
    } else {
     s0+=2637.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i15<1.113352656364441){
   if(i0<-0.00012356042861938477){
    if(i3<-3.11732292175293e-05){
     s0+=5031.0;
     s1+=207.0;
    } else {
     s0+=297.0;
     s1+=115.0;
    }
   } else {
    if(i10<0.9906898140907288){
     s0+=262.0;
     s1+=202.0;
    } else {
     s0+=25.0;
     s1+=846.0;
    }
   }
  } else {
   if(i14<0.0003725588321685791){
    if(i39<0.14621317386627197){
     s0+=145.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i43<1.0792715549468994){
     s0+=66.0;
     s1+=142.0;
    } else {
     s0+=31.0;
     s1+=2399.0;
    }
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i42<1.0029759407043457){
   if(i31<1.095003366470337){
    if(i36<1.0494179725646973){
     s0+=69.0;
    } else {
     s0+=13.0;
     s1+=2069.0;
    }
   } else {
    if(i36<1.116863489151001){
     s0+=174.0;
     s1+=320.0;
    } else {
     s0+=789.0;
     s1+=29.0;
    }
   }
  } else {
   if(i27<0.0021587891969829798){
    s0+=929.0;
   } else {
    if(i39<0.11293710768222809){
     s1+=41.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i33<0.8862806558609009){
   if(i39<0.07404161989688873){
    if(i75<0.003756595542654395){
     s0+=34.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i68<0.19544467329978943){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   }
  } else {
   if(i13<0.9492236375808716){
    if(i32<0.0006218552589416504){
     s0+=10.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i40<1.075517177581787){
     s0+=13.0;
     s1+=10.0;
    } else {
     s0+=33.0;
     s1+=13680.0;
    }
   }
  }
 }
}
if(i1<-8.856481872498989e-05){
 if(i13<0.9464079141616821){
  if(i25<0.055532753467559814){
   if(i35<0.00287166191264987){
    if(i41<-2.2935357264941558e-05){
     s0+=534.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i11<0.10229161381721497){
     s0+=91.0;
     s1+=6.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i58<0.004054001532495022){
    if(i39<0.09221425652503967){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=98.0;
    }
   } else {
    if(i61<-0.010183990001678467){
     s0+=64.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i34<0.0024496240075677633){
   if(i53<1.3828277587890625e-05){
    if(i23<1.1180615425109863){
     s1+=889.0;
    } else {
     s0+=53.0;
    }
   } else {
    s0+=284.0;
   }
  } else {
   if(i62<0.007662886753678322){
    if(i14<0.039050012826919556){
     s0+=74.0;
     s1+=59.0;
    } else {
     s0+=45.0;
     s1+=14234.0;
    }
   } else {
    if(i21<0.9083379507064819){
     s0+=95.0;
     s1+=141.0;
    } else {
     s0+=19.0;
     s1+=637.0;
    }
   }
  }
 }
} else {
 if(i4<1.8298625946044922e-05){
  if(i6<0.0036318339407444){
   if(i6<0.002017572522163391){
    if(i7<0.9960441589355469){
     s0+=12834.0;
     s1+=197.0;
    } else {
     s0+=54614.0;
     s1+=113.0;
    }
   } else {
    if(i29<0.0006135903531685472){
     s0+=4585.0;
     s1+=609.0;
    } else {
     s0+=13756.0;
     s1+=70.0;
    }
   }
  } else {
   if(i5<1.0000653266906738){
    if(i2<0.9970359802246094){
     s0+=16400.0;
     s1+=113.0;
    } else {
     s0+=2066.0;
     s1+=243.0;
    }
   } else {
    if(i0<-0.000511467456817627){
     s0+=3135.0;
     s1+=208.0;
    } else {
     s0+=552.0;
     s1+=2178.0;
    }
   }
  }
 } else {
  if(i39<0.010240846313536167){
   if(i49<-8.899887689040042e-06){
    if(i30<1.1180615425109863){
     s0+=2.0;
     s1+=244.0;
    } else {
     s0+=134.0;
     s1+=21.0;
    }
   } else {
    if(i12<0.00023507053265348077){
     s0+=398.0;
     s1+=478.0;
    } else {
     s0+=3539.0;
     s1+=5.0;
    }
   }
  } else {
   if(i23<1.116804838180542){
    if(i23<1.0606132745742798){
     s0+=30.0;
    } else {
     s0+=12.0;
     s1+=1623.0;
    }
   } else {
    if(i14<0.14773884415626526){
     s0+=3018.0;
     s1+=840.0;
    } else {
     s0+=325.0;
     s1+=1137.0;
    }
   }
  }
 }
}
if(i0<0.0009596943855285645){
 if(i8<0.0003216862678527832){
  if(i14<0.22808903455734253){
   if(i23<1.116391897201538){
    if(i26<-4.571676254272461e-05){
     s0+=10468.0;
     s1+=1655.0;
    } else {
     s0+=17044.0;
     s1+=576.0;
    }
   } else {
    if(i19<1.0182610750198364){
     s0+=76616.0;
     s1+=650.0;
    } else {
     s0+=568.0;
     s1+=153.0;
    }
   }
  } else {
   if(i41<-9.51513629843248e-06){
    if(i71<-1.5427071957674343e-06){
     s0+=1.0;
    } else {
     s1+=323.0;
    }
   } else {
    if(i20<-0.0031082630157470703){
     s1+=2.0;
    } else {
     s0+=81.0;
    }
   }
  }
 } else {
  if(i38<0.1552278697490692){
   if(i52<0.0349731519818306){
    if(i9<1.0154249668121338){
     s0+=7015.0;
     s1+=882.0;
    } else {
     s0+=36.0;
     s1+=219.0;
    }
   } else {
    if(i45<-0.0001520279620308429){
     s0+=727.0;
     s1+=1557.0;
    } else {
     s0+=1671.0;
     s1+=460.0;
    }
   }
  } else {
   if(i6<0.004433085210621357){
    if(i24<0.16821208596229553){
     s1+=18.0;
    } else {
     s0+=240.0;
     s1+=27.0;
    }
   } else {
    if(i2<0.9962370991706848){
     s0+=9.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=1423.0;
    }
   }
  }
 }
} else {
 if(i45<-0.0002810843288898468){
  if(i6<0.005708134733140469){
   if(i18<0.003445721697062254){
    if(i51<-4.84238080389332e-06){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=403.0;
    }
   } else {
    if(i42<1.0033048391342163){
     s0+=59.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i61<-0.007780581712722778){
    if(i18<0.005613686516880989){
     s0+=15.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i57<0.00038173742359504104){
     s0+=47.0;
     s1+=12521.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i2<1.0102641582489014){
   if(i12<0.0004486095567699522){
    if(i44<0.0009416369721293449){
     s1+=1023.0;
    } else {
     s0+=122.0;
     s1+=528.0;
    }
   } else {
    if(i6<0.017804648727178574){
     s0+=1761.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   }
  } else {
   s1+=1775.0;
  }
 }
}
if(i5<1.0026252269744873){
 if(i18<0.001729218871332705){
  if(i58<0.00017327204113826156){
   if(i1<-8.191460801754147e-05){
    if(i13<1.0102667808532715){
     s0+=7.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i18<0.0014764904044568539){
     s0+=71167.0;
     s1+=216.0;
    } else {
     s0+=3388.0;
     s1+=128.0;
    }
   }
  } else {
   if(i29<0.00026083807460963726){
    if(i41<-2.26176325668348e-06){
     s0+=120.0;
     s1+=220.0;
    } else {
     s0+=571.0;
     s1+=9.0;
    }
   } else {
    if(i0<-0.00048106908798217773){
     s0+=10968.0;
     s1+=41.0;
    } else {
     s0+=3155.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i31<1.0914386510849){
   if(i3<-4.678964614868164e-05){
    if(i62<0.0006914912955835462){
     s0+=2306.0;
     s1+=7.0;
    } else {
     s0+=148.0;
     s1+=32.0;
    }
   } else {
    if(i40<1.040604829788208){
     s0+=1853.0;
     s1+=490.0;
    } else {
     s0+=120.0;
     s1+=2335.0;
    }
   }
  } else {
   if(i43<1.121600866317749){
    if(i0<-0.00013720989227294922){
     s0+=15473.0;
     s1+=435.0;
    } else {
     s0+=859.0;
     s1+=388.0;
    }
   } else {
    if(i50<0.003512412076815963){
     s0+=217.0;
     s1+=50.0;
    } else {
     s0+=25.0;
     s1+=1003.0;
    }
   }
  }
 }
} else {
 if(i31<1.170027494430542){
  if(i1<-7.231666677398607e-05){
   if(i32<0.0009920597076416016){
    if(i53<1.8298625946044922e-05){
     s0+=102.0;
     s1+=1898.0;
    } else {
     s0+=38.0;
     s1+=3.0;
    }
   } else {
    if(i18<0.005117753054946661){
     s0+=199.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i12<0.0002588236820884049){
    if(i3<3.36766242980957e-05){
     s0+=769.0;
     s1+=122.0;
    } else {
     s0+=54.0;
     s1+=1352.0;
    }
   } else {
    if(i44<0.0022960088681429625){
     s0+=3788.0;
     s1+=73.0;
    } else {
     s0+=36.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i57<0.0003042603493668139){
   if(i15<1.0743002891540527){
    if(i41<-4.8109104682225734e-05){
     s0+=13.0;
     s1+=145.0;
    } else {
     s0+=295.0;
     s1+=122.0;
    }
   } else {
    if(i14<0.10037890076637268){
     s0+=169.0;
     s1+=641.0;
    } else {
     s0+=94.0;
     s1+=13921.0;
    }
   }
  } else {
   if(i6<0.021567676216363907){
    if(i35<0.003180800937116146){
     s0+=445.0;
     s1+=53.0;
    } else {
     s0+=13.0;
     s1+=41.0;
    }
   } else {
    if(i38<0.01415163278579712){
     s0+=46.0;
     s1+=28.0;
    } else {
     s0+=35.0;
     s1+=250.0;
    }
   }
  }
 }
}
if(i2<1.003735065460205){
 if(i44<0.011738410219550133){
  if(i38<0.2052970826625824){
   if(i32<9.185075759887695e-05){
    if(i30<1.0905578136444092){
     s0+=21810.0;
     s1+=833.0;
    } else {
     s0+=57269.0;
     s1+=107.0;
    }
   } else {
    if(i25<0.007584746927022934){
     s0+=18685.0;
     s1+=361.0;
    } else {
     s0+=13123.0;
     s1+=3726.0;
    }
   }
  } else {
   if(i42<1.000823974609375){
    if(i35<0.0018069574143737555){
     s0+=85.0;
     s1+=3.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i34<0.0029448899440467358){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=33.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i11<0.05485767126083374){
   if(i18<0.005706388503313065){
    if(i45<-0.0006141639314591885){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=719.0;
     s1+=4.0;
    }
   } else {
    if(i22<0.8507545590400696){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=32.0;
     s1+=53.0;
    }
   }
  } else {
   if(i41<-6.437588126573246e-06){
    if(i26<-0.0005566179752349854){
     s0+=63.0;
     s1+=213.0;
    } else {
     s0+=6.0;
     s1+=943.0;
    }
   } else {
    s0+=82.0;
   }
  }
 }
} else {
 if(i27<0.00225556967779994){
  if(i40<1.0867276191711426){
   if(i12<0.0002576320548541844){
    if(i30<1.1219847202301025){
     s0+=4.0;
     s1+=2497.0;
    } else {
     s0+=51.0;
    }
   } else {
    s0+=874.0;
   }
  } else {
   if(i44<0.0007757964776828885){
    if(i27<0.001072219107300043){
     s1+=163.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i52<0.056028805673122406){
     s0+=3204.0;
     s1+=21.0;
    } else {
     s0+=6.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i14<0.0713396668434143){
   if(i78<-0.006949067115783691){
    if(i2<1.005044937133789){
     s0+=37.0;
     s1+=50.0;
    } else {
     s0+=13.0;
     s1+=283.0;
    }
   } else {
    if(i73<-0.03122037649154663){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=202.0;
     s1+=15.0;
    }
   }
  } else {
   if(i6<0.0004206181038171053){
    s0+=9.0;
   } else {
    if(i11<0.11397543549537659){
     s0+=61.0;
     s1+=598.0;
    } else {
     s0+=34.0;
     s1+=14057.0;
    }
   }
  }
 }
}
if(i26<0.0001927018165588379){
 if(i3<6.335973739624023e-05){
  if(i21<1.0175869464874268){
   if(i15<1.1546916961669922){
    if(i8<0.0002930760383605957){
     s0+=102449.0;
     s1+=2789.0;
    } else {
     s0+=10041.0;
     s1+=2444.0;
    }
   } else {
    if(i6<0.007719844579696655){
     s0+=435.0;
     s1+=8.0;
    } else {
     s0+=95.0;
     s1+=952.0;
    }
   }
  } else {
   if(i41<-9.215063982992433e-06){
    if(i1<-6.440539436880499e-05){
     s0+=45.0;
     s1+=1062.0;
    } else {
     s0+=423.0;
     s1+=476.0;
    }
   } else {
    if(i41<-7.668605576327536e-06){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=491.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i29<0.002365377964451909){
   if(i23<1.116804838180542){
    if(i12<0.0005904762074351311){
     s1+=323.0;
    } else {
     s0+=76.0;
    }
   } else {
    s0+=1001.0;
   }
  } else {
   if(i10<0.976647138595581){
    if(i6<0.021538930013775826){
     s0+=50.0;
     s1+=19.0;
    } else {
     s0+=5.0;
     s1+=98.0;
    }
   } else {
    if(i35<0.000422369921579957){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=2756.0;
    }
   }
  }
 }
} else {
 if(i6<0.004952756687998772){
  if(i31<1.0951786041259766){
   if(i27<0.00109648157376796){
    s1+=879.0;
   } else {
    s0+=45.0;
   }
  } else {
   if(i57<-3.3728523703757674e-05){
    if(i40<1.1133074760437012){
     s0+=42.0;
     s1+=49.0;
    } else {
     s1+=308.0;
    }
   } else {
    if(i9<1.020695447921753){
     s0+=1071.0;
     s1+=51.0;
    } else {
     s0+=9.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i35<0.003786880988627672){
   if(i12<0.0010851880069822073){
    if(i0<-0.00016170740127563477){
     s0+=16.0;
    } else {
     s1+=11961.0;
    }
   } else {
    s0+=64.0;
   }
  } else {
   if(i17<1.0100562572479248){
    s0+=126.0;
   } else {
    s1+=22.0;
   }
  }
 }
}
if(i7<1.0136241912841797){
 if(i38<0.18806558847427368){
  if(i4<4.0590763092041016e-05){
   if(i10<1.0058541297912598){
    if(i59<0.011302905157208443){
     s0+=109639.0;
     s1+=4170.0;
    } else {
     s0+=569.0;
     s1+=377.0;
    }
   } else {
    if(i59<0.0005709609249606729){
     s0+=633.0;
     s1+=819.0;
    } else {
     s0+=2342.0;
     s1+=196.0;
    }
   }
  } else {
   if(i32<0.0011376142501831055){
    if(i2<1.0082931518554688){
     s0+=792.0;
     s1+=1179.0;
    } else {
     s0+=53.0;
     s1+=1236.0;
    }
   } else {
    if(i28<0.011155241169035435){
     s0+=826.0;
     s1+=12.0;
    } else {
     s0+=12.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i27<0.002404307248070836){
   if(i27<0.0020032254979014397){
    s0+=237.0;
   } else {
    if(i1<-2.2177853679750115e-05){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i52<0.032268088310956955){
    if(i1<-4.696052201325074e-05){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i70<-0.050602853298187256){
     s0+=8.0;
    } else {
     s0+=58.0;
     s1+=1453.0;
    }
   }
  }
 }
} else {
 if(i6<0.005057411268353462){
  if(i20<0.001972496509552002){
   if(i50<0.0009458819404244423){
    if(i0<0.0006515979766845703){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=343.0;
    }
   } else {
    if(i34<0.0006913682445883751){
     s1+=23.0;
    } else {
     s0+=1123.0;
     s1+=60.0;
    }
   }
  } else {
   s1+=607.0;
  }
 } else {
  if(i5<1.0003933906555176){
   if(i44<0.004306593909859657){
    s0+=37.0;
   } else {
    s1+=140.0;
   }
  } else {
   if(i9<1.0148649215698242){
    if(i25<0.007091645151376724){
     s0+=25.0;
     s1+=29.0;
    } else {
     s0+=20.0;
     s1+=976.0;
    }
   } else {
    if(i7<1.0143353939056396){
     s0+=1.0;
     s1+=59.0;
    } else {
     s1+=12520.0;
    }
   }
  }
 }
}
if(i21<1.0170528888702393){
 if(i40<1.1546916961669922){
  if(i5<1.0026251077651978){
   if(i39<0.011364666745066643){
    if(i18<0.001985338982194662){
     s0+=62800.0;
     s1+=355.0;
    } else {
     s0+=3308.0;
     s1+=344.0;
    }
   } else {
    if(i3<-3.260374069213867e-05){
     s0+=29039.0;
     s1+=506.0;
    } else {
     s0+=12350.0;
     s1+=2696.0;
    }
   }
  } else {
   if(i49<-1.1557558536878787e-05){
    if(i51<-6.120145371824037e-06){
     s0+=115.0;
    } else {
     s0+=42.0;
     s1+=1082.0;
    }
   } else {
    if(i32<0.00043708086013793945){
     s0+=277.0;
     s1+=1023.0;
    } else {
     s0+=4190.0;
     s1+=948.0;
    }
   }
  }
 } else {
  if(i8<0.0003001689910888672){
   if(i14<0.1799485981464386){
    if(i70<0.039093632251024246){
     s0+=1822.0;
     s1+=45.0;
    } else {
     s0+=211.0;
     s1+=70.0;
    }
   } else {
    if(i18<0.0033620819449424744){
     s0+=16.0;
     s1+=2.0;
    } else {
     s1+=150.0;
    }
   }
  } else {
   if(i21<0.9077403545379639){
    if(i70<0.051339589059352875){
     s0+=409.0;
     s1+=132.0;
    } else {
     s0+=10.0;
     s1+=105.0;
    }
   } else {
    if(i39<0.019529882818460464){
     s0+=185.0;
     s1+=71.0;
    } else {
     s0+=231.0;
     s1+=2746.0;
    }
   }
  }
 }
} else {
 if(i0<0.00023615360260009766){
  if(i56<0.0407487228512764){
   if(i1<-6.229943392099813e-05){
    if(i30<1.2605139017105103){
     s0+=3.0;
     s1+=22.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i36<1.0887749195098877){
     s1+=8.0;
    } else {
     s0+=501.0;
     s1+=39.0;
    }
   }
  } else {
   if(i57<3.5120749089401215e-05){
    s0+=105.0;
   } else {
    if(i15<1.6038397550582886){
     s0+=59.0;
     s1+=402.0;
    } else {
     s0+=36.0;
    }
   }
  }
 } else {
  if(i10<1.0163447856903076){
   if(i6<0.0029867705889046192){
    if(i36<1.0958809852600098){
     s1+=73.0;
    } else {
     s0+=565.0;
     s1+=26.0;
    }
   } else {
    if(i5<1.001220941543579){
     s0+=57.0;
     s1+=40.0;
    } else {
     s0+=132.0;
     s1+=2853.0;
    }
   }
  } else {
   s1+=10636.0;
  }
 }
}
if(i24<0.1999344527721405){
 if(i5<1.0025362968444824){
  if(i8<0.0003057122230529785){
   if(i5<0.9994949102401733){
    if(i25<0.09125332534313202){
     s0+=52609.0;
     s1+=320.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i36<1.0903575420379639){
     s0+=10972.0;
     s1+=1757.0;
    } else {
     s0+=39433.0;
     s1+=719.0;
    }
   }
  } else {
   if(i18<0.0020021928939968348){
    if(i41<-2.0004154066555202e-05){
     s0+=3.0;
     s1+=28.0;
    } else {
     s0+=4002.0;
     s1+=56.0;
    }
   } else {
    if(i32<0.00030171871185302734){
     s0+=428.0;
     s1+=1565.0;
    } else {
     s0+=1934.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i6<0.0037407586351037025){
   if(i57<-2.277378189319279e-05){
    if(i34<0.000978178926743567){
     s1+=523.0;
    } else {
     s0+=226.0;
     s1+=99.0;
    }
   } else {
    if(i32<0.00045096874237060547){
     s0+=341.0;
     s1+=181.0;
    } else {
     s0+=3946.0;
     s1+=1.0;
    }
   }
  } else {
   if(i10<0.9954265356063843){
    if(i44<0.008831329643726349){
     s0+=1251.0;
     s1+=695.0;
    } else {
     s0+=156.0;
     s1+=652.0;
    }
   } else {
    if(i26<-0.00023317337036132812){
     s0+=80.0;
     s1+=41.0;
    } else {
     s0+=347.0;
     s1+=5047.0;
    }
   }
  }
 }
} else {
 if(i30<1.1759499311447144){
  if(i54<1.046044945716858){
   s0+=438.0;
  } else {
   if(i4<-5.364418029785156e-07){
    s1+=5.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i6<0.005079376045614481){
   if(i8<0.0012176036834716797){
    if(i5<1.0017015933990479){
     s0+=251.0;
     s1+=7.0;
    } else {
     s0+=56.0;
     s1+=28.0;
    }
   } else {
    s1+=199.0;
   }
  } else {
   if(i3<-0.00017896294593811035){
    if(i64<0.008307203650474548){
     s0+=16.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i67<1.540924313303549e-05){
     s0+=24.0;
     s1+=12183.0;
    } else {
     s0+=11.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i5<1.0026322603225708){
 if(i21<1.017541527748108){
  if(i56<0.19671794772148132){
   if(i32<8.219480514526367e-05){
    if(i1<-0.00012761200196109712){
     s0+=61.0;
     s1+=55.0;
    } else {
     s0+=78141.0;
     s1+=894.0;
    }
   } else {
    if(i18<0.0015695340698584914){
     s0+=18788.0;
     s1+=288.0;
    } else {
     s0+=12772.0;
     s1+=3148.0;
    }
   }
  } else {
   if(i11<0.0726819634437561){
    if(i10<0.9815323352813721){
     s0+=118.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=227.0;
   }
  }
 } else {
  if(i41<-1.0492644832993392e-05){
   if(i6<0.004952743649482727){
    if(i3<-7.748603820800781e-06){
     s0+=74.0;
    } else {
     s0+=36.0;
     s1+=19.0;
    }
   } else {
    if(i25<0.01061868853867054){
     s0+=28.0;
     s1+=34.0;
    } else {
     s0+=26.0;
     s1+=1018.0;
    }
   }
  } else {
   if(i10<0.9919902086257935){
    if(i66<0.001411736011505127){
     s0+=38.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i5<1.0001132488250732){
     s0+=346.0;
    } else {
     s0+=116.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i23<1.1935834884643555){
  if(i47<1.0009737014770508){
   if(i15<1.0773653984069824){
    if(i30<1.0548467636108398){
     s0+=400.0;
    } else {
     s0+=100.0;
     s1+=2012.0;
    }
   } else {
    if(i30<1.1174830198287964){
     s0+=6.0;
     s1+=298.0;
    } else {
     s0+=919.0;
    }
   }
  } else {
   s0+=2426.0;
  }
 } else {
  if(i14<0.09851333498954773){
   if(i16<1.0100655555725098){
    if(i40<1.1072397232055664){
     s0+=938.0;
     s1+=74.0;
    } else {
     s0+=752.0;
     s1+=602.0;
    }
   } else {
    if(i2<1.002756118774414){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=416.0;
    }
   }
  } else {
   if(i14<0.14528611302375793){
    if(i3<1.1205673217773438e-05){
     s0+=199.0;
     s1+=113.0;
    } else {
     s0+=115.0;
     s1+=1367.0;
    }
   } else {
    if(i6<0.004858660511672497){
     s0+=109.0;
     s1+=313.0;
    } else {
     s0+=57.0;
     s1+=13374.0;
    }
   }
  }
 }
}
if(i22<1.0165472030639648){
 if(i37<1.0068050622940063){
  if(i24<0.22430413961410522){
   if(i65<0.0040552979335188866){
    if(i8<0.0002931952476501465){
     s0+=99481.0;
     s1+=2413.0;
    } else {
     s0+=9978.0;
     s1+=2663.0;
    }
   } else {
    if(i11<0.06521019339561462){
     s0+=2902.0;
     s1+=330.0;
    } else {
     s0+=484.0;
     s1+=891.0;
    }
   }
  } else {
   if(i27<0.002576771890744567){
    if(i26<0.00017219781875610352){
     s0+=98.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i1<-3.708993972395547e-05){
     s0+=10.0;
     s1+=626.0;
    } else {
     s0+=34.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i11<0.05526217818260193){
   if(i67<-5.783106644230429e-06){
    if(i49<6.9936604631948285e-06){
     s0+=19.0;
     s1+=167.0;
    } else {
     s0+=30.0;
     s1+=29.0;
    }
   } else {
    if(i3<-3.5762786865234375e-07){
     s0+=776.0;
     s1+=28.0;
    } else {
     s0+=223.0;
     s1+=103.0;
    }
   }
  } else {
   if(i8<0.0011894702911376953){
    if(i1<-8.036715007619932e-05){
     s0+=37.0;
     s1+=394.0;
    } else {
     s0+=385.0;
     s1+=177.0;
    }
   } else {
    if(i28<0.0017536947270855308){
     s0+=170.0;
     s1+=263.0;
    } else {
     s0+=162.0;
     s1+=2022.0;
    }
   }
  }
 }
} else {
 if(i6<0.0040221065282821655){
  if(i28<0.0007303787861019373){
   s1+=247.0;
  } else {
   if(i20<0.0027030110359191895){
    if(i62<-0.0007484305533580482){
     s0+=157.0;
     s1+=50.0;
    } else {
     s0+=1272.0;
     s1+=22.0;
    }
   } else {
    s1+=207.0;
   }
  }
 } else {
  if(i41<-7.977489985933062e-06){
   if(i20<-0.0022648870944976807){
    if(i14<0.14887800812721252){
     s0+=75.0;
    } else {
     s0+=4.0;
     s1+=99.0;
    }
   } else {
    if(i35<0.003995408304035664){
     s0+=92.0;
     s1+=13512.0;
    } else {
     s0+=37.0;
    }
   }
  } else {
   s0+=135.0;
  }
 }
}
if(i8<0.000592648983001709){
 if(i38<0.20632776618003845){
  if(i8<0.00029212236404418945){
   if(i32<5.620718002319336e-05){
    if(i50<0.0533415824174881){
     s0+=73110.0;
     s1+=692.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   } else {
    if(i27<0.0008986566681414843){
     s0+=3858.0;
     s1+=1518.0;
    } else {
     s0+=26505.0;
     s1+=522.0;
    }
   }
  } else {
   if(i52<0.036666709929704666){
    if(i35<0.0008026951691135764){
     s0+=3436.0;
     s1+=1.0;
    } else {
     s0+=1751.0;
     s1+=712.0;
    }
   } else {
    if(i13<0.9885498285293579){
     s0+=954.0;
     s1+=202.0;
    } else {
     s0+=295.0;
     s1+=834.0;
    }
   }
  }
 } else {
  if(i57<6.986214430071414e-05){
   if(i18<0.0014620756264775991){
    if(i42<1.000819444656372){
     s0+=88.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i30<1.161441683769226){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=92.0;
    }
   }
  } else {
   if(i18<0.002328313887119293){
    if(i38<0.21310055255889893){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i56<0.048882126808166504){
     s0+=15.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=526.0;
    }
   }
  }
 }
} else {
 if(i21<1.0222854614257812){
  if(i12<0.000704434234648943){
   if(i20<0.0011216402053833008){
    if(i56<0.03890421241521835){
     s0+=2357.0;
     s1+=1159.0;
    } else {
     s0+=488.0;
     s1+=2541.0;
    }
   } else {
    if(i53<6.282329559326172e-05){
     s0+=25.0;
     s1+=3184.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   s0+=3212.0;
  }
 } else {
  if(i34<0.007341562770307064){
   if(i12<0.0003940871392842382){
    if(i10<1.0039172172546387){
     s0+=110.0;
     s1+=97.0;
    } else {
     s0+=35.0;
     s1+=3067.0;
    }
   } else {
    if(i25<0.027782104909420013){
     s0+=115.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i40<1.0847094058990479){
    s0+=4.0;
   } else {
    if(i3<-0.00010293722152709961){
     s0+=2.0;
    } else {
     s1+=9223.0;
    }
   }
  }
 }
}
if(i1<-9.781442349776626e-05){
 if(i48<0.9057945609092712){
  if(i61<-0.007689297199249268){
   if(i75<0.003082181327044964){
    if(i39<0.14109937846660614){
     s0+=447.0;
     s1+=20.0;
    } else {
     s0+=55.0;
     s1+=60.0;
    }
   } else {
    if(i72<-0.00967341661453247){
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  } else {
   if(i43<1.0646969079971313){
    if(i14<0.018903523683547974){
     s0+=44.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=80.0;
    }
   } else {
    if(i68<0.018692879006266594){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=340.0;
    }
   }
  }
 } else {
  if(i42<1.0004984140396118){
   if(i6<0.015497066080570221){
    if(i19<1.0555921792984009){
     s0+=223.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i20<-0.00610998272895813){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=404.0;
    }
   }
  } else {
   if(i13<0.952367901802063){
    if(i18<0.006072214338928461){
     s0+=53.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   } else {
    if(i4<0.00022667646408081055){
     s0+=70.0;
     s1+=14453.0;
    } else {
     s0+=50.0;
    }
   }
  }
 }
} else {
 if(i4<1.5079975128173828e-05){
  if(i25<0.006544956471771002){
   if(i10<0.9968971610069275){
    if(i23<1.0660821199417114){
     s0+=233.0;
     s1+=124.0;
    } else {
     s0+=5157.0;
     s1+=194.0;
    }
   } else {
    if(i35<0.0004729961510747671){
     s0+=46705.0;
     s1+=21.0;
    } else {
     s0+=13253.0;
     s1+=124.0;
    }
   }
  } else {
   if(i13<1.005765438079834){
    if(i3<-2.7120113372802734e-05){
     s0+=36005.0;
     s1+=798.0;
    } else {
     s0+=3147.0;
     s1+=1770.0;
    }
   } else {
    if(i37<1.0002415180206299){
     s0+=1161.0;
     s1+=39.0;
    } else {
     s0+=476.0;
     s1+=417.0;
    }
   }
  }
 } else {
  if(i45<-0.00021062869927845895){
   if(i1<-4.12604640587233e-05){
    if(i53<1.2814998626708984e-05){
     s0+=273.0;
     s1+=2360.0;
    } else {
     s0+=253.0;
     s1+=220.0;
    }
   } else {
    if(i49<1.3655680049851071e-05){
     s0+=249.0;
     s1+=493.0;
    } else {
     s0+=567.0;
     s1+=85.0;
    }
   }
  } else {
   if(i0<0.0014819502830505371){
    if(i30<1.056142807006836){
     s0+=2232.0;
    } else {
     s0+=5320.0;
     s1+=1432.0;
    }
   } else {
    if(i44<0.0007968623540364206){
     s1+=569.0;
    } else {
     s0+=450.0;
     s1+=316.0;
    }
   }
  }
 }
}
if(i7<1.0136241912841797){
 if(i5<1.0025155544281006){
  if(i25<0.06781265884637833){
   if(i18<0.001567827188409865){
    if(i18<0.001050280872732401){
     s0+=73019.0;
     s1+=228.0;
    } else {
     s0+=13023.0;
     s1+=509.0;
    }
   } else {
    if(i0<-0.00042831897735595703){
     s0+=19391.0;
     s1+=639.0;
    } else {
     s0+=4128.0;
     s1+=2774.0;
    }
   }
  } else {
   if(i40<1.1137166023254395){
    s0+=210.0;
   } else {
    if(i11<0.003238588571548462){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=455.0;
    }
   }
  }
 } else {
  if(i34<0.002999977208673954){
   if(i29<0.0011502798879519105){
    if(i50<0.0001721998560242355){
     s0+=800.0;
     s1+=44.0;
    } else {
     s0+=20.0;
     s1+=882.0;
    }
   } else {
    if(i25<0.014587603509426117){
     s0+=3145.0;
     s1+=95.0;
    } else {
     s0+=112.0;
     s1+=304.0;
    }
   }
  } else {
   if(i15<1.0743656158447266){
    if(i2<1.0038655996322632){
     s0+=1031.0;
     s1+=139.0;
    } else {
     s0+=55.0;
     s1+=238.0;
    }
   } else {
    if(i10<0.9769649505615234){
     s0+=149.0;
     s1+=187.0;
    } else {
     s0+=217.0;
     s1+=3156.0;
    }
   }
  }
 }
} else {
 if(i18<0.0014018788933753967){
  if(i3<0.00013142824172973633){
   if(i57<2.6350442567490973e-05){
    s0+=579.0;
   } else {
    if(i26<6.556510925292969e-07){
     s0+=34.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i13<1.018937110900879){
    if(i27<0.0011172931408509612){
     s1+=128.0;
    } else {
     s0+=22.0;
     s1+=8.0;
    }
   } else {
    s1+=354.0;
   }
  }
 } else {
  if(i12<0.0008824690012261271){
   if(i24<0.15475311875343323){
    if(i27<0.005273110698908567){
     s0+=26.0;
     s1+=2217.0;
    } else {
     s0+=176.0;
     s1+=145.0;
    }
   } else {
    if(i3<-3.713369369506836e-05){
     s0+=37.0;
     s1+=32.0;
    } else {
     s0+=22.0;
     s1+=11803.0;
    }
   }
  } else {
   s0+=297.0;
  }
 }
}
if(i8<0.000591576099395752){
 if(i14<0.20754054188728333){
  if(i42<0.9998573660850525){
   if(i70<0.039146438241004944){
    if(i9<0.9948345422744751){
     s0+=13259.0;
     s1+=187.0;
    } else {
     s0+=36656.0;
     s1+=9.0;
    }
   } else {
    if(i41<-1.3090228094370104e-05){
     s0+=2.0;
     s1+=47.0;
    } else {
     s0+=183.0;
     s1+=2.0;
    }
   }
  } else {
   if(i18<0.0013765343464910984){
    if(i37<0.9996414184570312){
     s0+=5937.0;
     s1+=210.0;
    } else {
     s0+=38444.0;
     s1+=209.0;
    }
   } else {
    if(i34<0.0011621321318671107){
     s0+=669.0;
     s1+=2619.0;
    } else {
     s0+=14837.0;
     s1+=1315.0;
    }
   }
  }
 } else {
  if(i36<1.1468710899353027){
   if(i41<-1.7576536265551113e-05){
    s1+=1.0;
   } else {
    if(i75<-0.006884348578751087){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=84.0;
    }
   }
  } else {
   if(i34<0.00624976959079504){
    if(i4<4.470348358154297e-06){
     s0+=110.0;
     s1+=24.0;
    } else {
     s0+=15.0;
     s1+=161.0;
    }
   } else {
    if(i56<0.03192613273859024){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=508.0;
    }
   }
  }
 }
} else {
 if(i24<0.1702863872051239){
  if(i9<1.0174109935760498){
   if(i18<0.0019523295341059566){
    if(i12<0.00019071114365942776){
     s0+=13.0;
     s1+=607.0;
    } else {
     s0+=3184.0;
     s1+=6.0;
    }
   } else {
    if(i40<1.0430457592010498){
     s0+=547.0;
     s1+=3.0;
    } else {
     s0+=2143.0;
     s1+=3347.0;
    }
   }
  } else {
   if(i25<0.004400548525154591){
    if(i3<0.00012260675430297852){
     s0+=93.0;
     s1+=37.0;
    } else {
     s0+=10.0;
     s1+=140.0;
    }
   } else {
    if(i12<0.0003548678942024708){
     s0+=47.0;
     s1+=1778.0;
    } else {
     s0+=62.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i29<0.002498050220310688){
   if(i22<1.0249910354614258){
    if(i23<1.1038953065872192){
     s1+=2.0;
    } else {
     s0+=312.0;
    }
   } else {
    if(i51<-3.310936790512642e-06){
     s0+=4.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i16<0.9919130802154541){
    if(i42<1.0041656494140625){
     s0+=13.0;
     s1+=283.0;
    } else {
     s0+=36.0;
     s1+=8.0;
    }
   } else {
    if(i0<2.3663043975830078e-05){
     s0+=21.0;
     s1+=114.0;
    } else {
     s0+=8.0;
     s1+=12459.0;
    }
   }
  }
 }
}
if(i8<0.0005646347999572754){
 if(i19<1.0181350708007812){
  if(i11<0.23656192421913147){
   if(i23<1.1162974834442139){
    if(i9<1.0067977905273438){
     s0+=28708.0;
     s1+=2457.0;
    } else {
     s0+=201.0;
     s1+=463.0;
    }
   } else {
    if(i39<0.20742225646972656){
     s0+=80155.0;
     s1+=906.0;
    } else {
     s0+=96.0;
     s1+=106.0;
    }
   }
  } else {
   if(i46<-2.9510872536775423e-06){
    if(i50<0.003425967413932085){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=232.0;
    }
   } else {
    if(i27<0.010285159572958946){
     s0+=62.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i37<1.0001482963562012){
   if(i35<0.0019557750783860683){
    if(i40<1.065199375152588){
     s1+=10.0;
    } else {
     s0+=377.0;
     s1+=3.0;
    }
   } else {
    if(i50<0.004801446571946144){
     s0+=11.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i49<3.142885816487251e-06){
    if(i27<0.002722568344324827){
     s0+=164.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i55<1.003356695175171){
     s0+=53.0;
     s1+=702.0;
    } else {
     s0+=111.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i25<0.00797753781080246){
  if(i32<0.0005112290382385254){
   if(i10<1.0058653354644775){
    if(i43<1.1118156909942627){
     s0+=764.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i31<1.0967509746551514){
     s0+=21.0;
     s1+=1404.0;
    } else {
     s0+=72.0;
     s1+=264.0;
    }
   }
  } else {
   if(i10<1.017041802406311){
    if(i28<0.005376659333705902){
     s0+=3869.0;
     s1+=13.0;
    } else {
     s0+=28.0;
     s1+=24.0;
    }
   } else {
    s1+=366.0;
   }
  }
 } else {
  if(i38<0.056164681911468506){
   if(i30<1.1180615425109863){
    if(i64<0.0011852688621729612){
     s0+=8.0;
     s1+=869.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i5<1.0061990022659302){
     s0+=984.0;
     s1+=406.0;
    } else {
     s0+=55.0;
     s1+=612.0;
    }
   }
  } else {
   if(i6<0.004952215123921633){
    if(i2<1.0104420185089111){
     s0+=492.0;
     s1+=87.0;
    } else {
     s1+=259.0;
    }
   } else {
    if(i2<0.9998408555984497){
     s0+=142.0;
     s1+=115.0;
    } else {
     s0+=212.0;
     s1+=14829.0;
    }
   }
  }
 }
}
if(i24<0.19655689597129822){
 if(i1<-8.67824419401586e-05){
  if(i20<-0.0036793649196624756){
   if(i11<0.06259316205978394){
    if(i70<0.04693351313471794){
     s0+=714.0;
     s1+=14.0;
    } else {
     s0+=38.0;
     s1+=43.0;
    }
   } else {
    if(i10<0.9672660827636719){
     s0+=46.0;
     s1+=46.0;
    } else {
     s0+=9.0;
     s1+=112.0;
    }
   }
  } else {
   if(i12<0.000695524737238884){
    if(i24<0.010319918394088745){
     s0+=99.0;
     s1+=66.0;
    } else {
     s0+=166.0;
     s1+=4210.0;
    }
   } else {
    s0+=271.0;
   }
  }
 } else {
  if(i7<1.0130107402801514){
   if(i18<0.0016928836703300476){
    if(i17<1.0108890533447266){
     s0+=90479.0;
     s1+=944.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   } else {
    if(i0<-0.0003921985626220703){
     s0+=17940.0;
     s1+=654.0;
    } else {
     s0+=4454.0;
     s1+=4020.0;
    }
   }
  } else {
   if(i1<-3.311008185846731e-05){
    if(i40<1.0869145393371582){
     s0+=26.0;
     s1+=1044.0;
    } else {
     s0+=796.0;
     s1+=466.0;
    }
   } else {
    if(i34<0.0008655551355332136){
     s1+=27.0;
    } else {
     s0+=464.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i23<1.194390058517456){
  if(i36<1.179210901260376){
   s0+=484.0;
  } else {
   if(i44<0.0020665423944592476){
    s0+=3.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i8<0.0003161430358886719){
   if(i34<0.008531300351023674){
    if(i25<0.03863929957151413){
     s0+=408.0;
     s1+=55.0;
    } else {
     s0+=7.0;
     s1+=53.0;
    }
   } else {
    if(i36<1.4405076503753662){
     s0+=31.0;
     s1+=58.0;
    } else {
     s1+=236.0;
    }
   }
  } else {
   if(i6<0.0021926038898527622){
    if(i1<-4.8785001126816496e-05){
     s1+=48.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i34<0.0027387170121073723){
     s0+=8.0;
     s1+=42.0;
    } else {
     s0+=26.0;
     s1+=12147.0;
    }
   }
  }
 }
}
if(i7<1.0136241912841797){
 if(i8<0.0005145668983459473){
  if(i69<0.49786680936813354){
   if(i15<1.1230299472808838){
    if(i6<0.00342957628890872){
     s0+=82391.0;
     s1+=812.0;
    } else {
     s0+=23788.0;
     s1+=2574.0;
    }
   } else {
    if(i41<-1.3567234418587759e-05){
     s0+=258.0;
     s1+=418.0;
    } else {
     s0+=2224.0;
     s1+=139.0;
    }
   }
  } else {
   if(i11<0.056572526693344116){
    s0+=70.0;
   } else {
    if(i15<1.0968146324157715){
     s0+=1.0;
    } else {
     s1+=185.0;
    }
   }
  }
 } else {
  if(i40<1.1698036193847656){
   if(i25<0.0077140736393630505){
    if(i0<0.0012246966361999512){
     s0+=4015.0;
     s1+=254.0;
    } else {
     s0+=719.0;
     s1+=570.0;
    }
   } else {
    if(i32<0.00045114755630493164){
     s0+=219.0;
     s1+=1113.0;
    } else {
     s0+=1348.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i11<0.04079955816268921){
    if(i39<0.14103145897388458){
     s0+=271.0;
     s1+=54.0;
    } else {
     s0+=5.0;
     s1+=67.0;
    }
   } else {
    if(i43<1.054736614227295){
     s0+=99.0;
     s1+=176.0;
    } else {
     s0+=11.0;
     s1+=2101.0;
    }
   }
  }
 }
} else {
 if(i41<-1.1212900062673725e-05){
  if(i1<-7.011544948909432e-05){
   if(i71<4.921766958432272e-06){
    if(i47<0.998361349105835){
     s0+=58.0;
    } else {
     s0+=88.0;
     s1+=13385.0;
    }
   } else {
    s0+=40.0;
   }
  } else {
   if(i32<0.000666201114654541){
    if(i55<1.0043606758117676){
     s0+=14.0;
     s1+=1150.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i40<1.1686761379241943){
     s0+=598.0;
     s1+=23.0;
    } else {
     s1+=55.0;
    }
   }
  }
 } else {
  if(i9<1.0079131126403809){
   if(i41<-7.167673174990341e-06){
    s1+=18.0;
   } else {
    s0+=33.0;
   }
  } else {
   if(i30<1.0887749195098877){
    s1+=2.0;
   } else {
    if(i58<0.00010912307334365323){
     s0+=258.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i10<1.0104501247406006){
 if(i11<0.2014853060245514){
  if(i2<1.003507137298584){
   if(i25<0.007792222313582897){
    if(i13<0.9946876168251038){
     s0+=5444.0;
     s1+=364.0;
    } else {
     s0+=66216.0;
     s1+=299.0;
    }
   } else {
    if(i3<-2.9861927032470703e-05){
     s0+=35872.0;
     s1+=736.0;
    } else {
     s0+=3623.0;
     s1+=3578.0;
    }
   }
  } else {
   if(i6<0.004326674621552229){
    if(i30<1.0894038677215576){
     s0+=790.0;
     s1+=260.0;
    } else {
     s0+=2545.0;
     s1+=8.0;
    }
   } else {
    if(i51<-6.708199634886114e-06){
     s0+=60.0;
    } else {
     s0+=214.0;
     s1+=2075.0;
    }
   }
  }
 } else {
  if(i27<0.002562624868005514){
   if(i29<0.0019368715584278107){
    s0+=260.0;
   } else {
    if(i47<1.0007390975952148){
     s0+=62.0;
    } else {
     s0+=17.0;
     s1+=22.0;
    }
   }
  } else {
   if(i25<0.025949031114578247){
    if(i79<0.009049206972122192){
     s0+=74.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=37.0;
    }
   } else {
    if(i8<-0.0011407732963562012){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=38.0;
     s1+=2519.0;
    }
   }
  }
 }
} else {
 if(i25<0.00716392369940877){
  if(i12<0.00028769820346497){
   if(i5<1.0018503665924072){
    s0+=31.0;
   } else {
    if(i2<1.0027172565460205){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=1453.0;
    }
   }
  } else {
   if(i8<0.0025320351123809814){
    s0+=1106.0;
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i2<1.0019826889038086){
   if(i43<1.1974310874938965){
    if(i25<0.025488313287496567){
     s0+=76.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=30.0;
   }
  } else {
   if(i51<-6.456466508097947e-06){
    s0+=70.0;
   } else {
    if(i41<-1.195939512399491e-05){
     s0+=69.0;
     s1+=12803.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
}
if(i4<2.2113323211669922e-05){
 if(i22<1.0165859460830688){
  if(i39<0.19065260887145996){
   if(i6<0.003589279018342495){
    if(i18<0.0010326235787943006){
     s0+=68027.0;
     s1+=221.0;
    } else {
     s0+=18400.0;
     s1+=800.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=3335.0;
     s1+=1856.0;
    } else {
     s0+=19474.0;
     s1+=1182.0;
    }
   }
  } else {
   if(i25<0.08425267040729523){
    if(i27<0.00893176905810833){
     s1+=40.0;
    } else {
     s0+=160.0;
     s1+=9.0;
    }
   } else {
    if(i40<1.0789575576782227){
     s0+=1.0;
    } else {
     s1+=221.0;
    }
   }
  }
 } else {
  if(i46<-2.9752045520581305e-06){
   if(i0<-0.0006209611892700195){
    if(i31<1.2349636554718018){
     s0+=241.0;
     s1+=9.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i35<0.0007268291665241122){
     s0+=35.0;
     s1+=23.0;
    } else {
     s0+=69.0;
     s1+=778.0;
    }
   }
  } else {
   if(i18<0.0026315334253013134){
    s0+=514.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i45<-0.00026002718368545175){
  if(i11<0.06775155663490295){
   if(i72<-0.004880428314208984){
    if(i61<-0.007183253765106201){
     s0+=44.0;
     s1+=17.0;
    } else {
     s0+=25.0;
     s1+=214.0;
    }
   } else {
    if(i16<1.0100340843200684){
     s0+=394.0;
     s1+=89.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   if(i12<0.0007365214405581355){
    if(i46<-5.998693814035505e-05){
     s0+=51.0;
    } else {
     s0+=226.0;
     s1+=14556.0;
    }
   } else {
    s0+=145.0;
   }
  }
 } else {
  if(i62<0.0008392782765440643){
   if(i10<1.014464259147644){
    if(i12<0.00025859742891043425){
     s0+=353.0;
     s1+=1237.0;
    } else {
     s0+=4371.0;
     s1+=113.0;
    }
   } else {
    if(i12<0.000785444863140583){
     s1+=596.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   if(i11<0.040785640478134155){
    if(i2<1.005434513092041){
     s0+=535.0;
     s1+=55.0;
    } else {
     s0+=16.0;
     s1+=95.0;
    }
   } else {
    if(i16<1.002331018447876){
     s0+=267.0;
     s1+=361.0;
    } else {
     s0+=117.0;
     s1+=1464.0;
    }
   }
  }
 }
}
if(i19<1.0178306102752686){
 if(i1<-7.641889533260837e-05){
  if(i61<-0.006977856159210205){
   if(i43<1.0577945709228516){
    if(i63<0.001558396266773343){
     s0+=1066.0;
     s1+=78.0;
    } else {
     s0+=5.0;
     s1+=19.0;
    }
   } else {
    if(i13<0.9156116247177124){
     s0+=11.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=133.0;
    }
   }
  } else {
   if(i46<-5.402932856668485e-06){
    if(i42<1.000715970993042){
     s0+=251.0;
     s1+=135.0;
    } else {
     s0+=389.0;
     s1+=4037.0;
    }
   } else {
    if(i24<0.18496721982955933){
     s0+=167.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i3<6.622076034545898e-05){
   if(i55<1.0003522634506226){
    if(i42<0.999854326248169){
     s0+=42420.0;
     s1+=103.0;
    } else {
     s0+=15846.0;
     s1+=585.0;
    }
   } else {
    if(i18<0.001450316165573895){
     s0+=36296.0;
     s1+=408.0;
    } else {
     s0+=17255.0;
     s1+=3517.0;
    }
   }
  } else {
   if(i50<0.0010748517233878374){
    if(i57<-9.656168003857601e-06){
     s0+=6.0;
     s1+=687.0;
    } else {
     s0+=53.0;
     s1+=91.0;
    }
   } else {
    if(i30<1.176405668258667){
     s0+=1018.0;
     s1+=37.0;
    } else {
     s0+=14.0;
     s1+=356.0;
    }
   }
  }
 }
} else {
 if(i8<0.0003132820129394531){
  if(i46<-3.1852118809183594e-06){
   if(i43<1.121600866317749){
    if(i25<0.027685977518558502){
     s0+=158.0;
     s1+=24.0;
    } else {
     s0+=3.0;
     s1+=68.0;
    }
   } else {
    if(i5<1.0022728443145752){
     s0+=4.0;
     s1+=282.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   s0+=494.0;
  }
 } else {
  if(i3<4.708766937255859e-06){
   if(i56<0.058519147336483){
    if(i31<1.0919957160949707){
     s1+=9.0;
    } else {
     s0+=181.0;
     s1+=19.0;
    }
   } else {
    if(i11<0.1808268427848816){
     s0+=14.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=143.0;
    }
   }
  } else {
   if(i6<0.004103606566786766){
    if(i49<-1.319548664469039e-05){
     s0+=20.0;
     s1+=440.0;
    } else {
     s0+=468.0;
     s1+=70.0;
    }
   } else {
    if(i51<-7.43595091989846e-06){
     s0+=29.0;
    } else {
     s0+=119.0;
     s1+=13271.0;
    }
   }
  }
 }
}
if(i1<-8.035823702812195e-05){
 if(i14<0.01854380965232849){
  if(i21<0.9458050727844238){
   if(i70<0.05007573962211609){
    if(i2<1.0101693868637085){
     s0+=875.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i8<-0.00020039081573486328){
     s0+=7.0;
    } else {
     s0+=24.0;
     s1+=70.0;
    }
   }
  } else {
   if(i3<5.605816841125488e-05){
    if(i72<-0.00558781623840332){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i2<1.005042552947998){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i35<0.0038354189600795507){
   if(i13<0.9347280263900757){
    if(i36<1.4635651111602783){
     s0+=117.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=54.0;
    }
   } else {
    if(i25<0.0075520859099924564){
     s0+=331.0;
     s1+=915.0;
    } else {
     s0+=162.0;
     s1+=15583.0;
    }
   }
  } else {
   if(i39<0.11383192241191864){
    s0+=147.0;
   } else {
    if(i37<1.0119986534118652){
     s1+=24.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i35<0.0007181063992902637){
  if(i10<1.0101135969161987){
   if(i69<0.14612537622451782){
    if(i4<4.303455352783203e-05){
     s0+=80613.0;
     s1+=498.0;
    } else {
     s0+=103.0;
     s1+=64.0;
    }
   } else {
    if(i8<0.00015288591384887695){
     s0+=359.0;
    } else {
     s0+=2.0;
     s1+=46.0;
    }
   }
  } else {
   if(i4<4.32133674621582e-05){
    if(i57<-2.3923788830870762e-05){
     s1+=15.0;
    } else {
     s0+=329.0;
     s1+=6.0;
    }
   } else {
    if(i23<1.125709891319275){
     s1+=290.0;
    } else {
     s0+=72.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i30<1.1161681413650513){
   if(i39<0.008007766678929329){
    if(i12<0.00023593325749970973){
     s0+=364.0;
     s1+=482.0;
    } else {
     s0+=2942.0;
     s1+=16.0;
    }
   } else {
    if(i47<0.9995216131210327){
     s0+=1078.0;
     s1+=5.0;
    } else {
     s0+=246.0;
     s1+=3658.0;
    }
   }
  } else {
   if(i24<0.20908212661743164){
    if(i3<-1.1622905731201172e-05){
     s0+=24907.0;
     s1+=388.0;
    } else {
     s0+=3783.0;
     s1+=1248.0;
    }
   } else {
    if(i25<0.023634960874915123){
     s0+=110.0;
     s1+=41.0;
    } else {
     s0+=85.0;
     s1+=600.0;
    }
   }
  }
 }
}
if(i15<1.1279573440551758){
 if(i7<1.0131568908691406){
  if(i3<6.657838821411133e-05){
   if(i39<0.011517408303916454){
    if(i61<-0.0007091164588928223){
     s0+=1229.0;
     s1+=185.0;
    } else {
     s0+=67046.0;
     s1+=646.0;
    }
   } else {
    if(i36<1.0905301570892334){
     s0+=6545.0;
     s1+=2254.0;
    } else {
     s0+=36798.0;
     s1+=1767.0;
    }
   }
  } else {
   if(i47<0.9997916221618652){
    if(i78<-0.055684804916381836){
     s1+=8.0;
    } else {
     s0+=438.0;
     s1+=2.0;
    }
   } else {
    if(i6<0.0036124587059020996){
     s0+=649.0;
     s1+=186.0;
    } else {
     s0+=166.0;
     s1+=1387.0;
    }
   }
  }
 } else {
  if(i47<0.9997088313102722){
   s0+=299.0;
  } else {
   if(i9<1.0202105045318604){
    if(i29<0.0011689066886901855){
     s0+=4.0;
     s1+=1056.0;
    } else {
     s0+=730.0;
     s1+=718.0;
    }
   } else {
    if(i2<1.0012729167938232){
     s0+=30.0;
     s1+=3.0;
    } else {
     s0+=20.0;
     s1+=2474.0;
    }
   }
  }
 }
} else {
 if(i0<0.00014927983283996582){
  if(i41<-9.511071766610257e-06){
   if(i25<0.027017025277018547){
    if(i18<0.001244808896444738){
     s0+=1.0;
     s1+=40.0;
    } else {
     s0+=263.0;
     s1+=57.0;
    }
   } else {
    if(i43<1.074721097946167){
     s0+=67.0;
     s1+=44.0;
    } else {
     s0+=86.0;
     s1+=838.0;
    }
   }
  } else {
   if(i42<1.0026609897613525){
    if(i29<0.005539687350392342){
     s0+=1448.0;
     s1+=3.0;
    } else {
     s0+=85.0;
     s1+=7.0;
    }
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i28<0.0019471123814582825){
   s0+=649.0;
  } else {
   if(i23<1.7041046619415283){
    if(i24<0.11507311463356018){
     s0+=59.0;
     s1+=508.0;
    } else {
     s0+=25.0;
     s1+=11991.0;
    }
   } else {
    s0+=42.0;
   }
  }
 }
}
if(i1<-8.733263530302793e-05){
 if(i13<0.9439544677734375){
  if(i60<1.029644250869751){
   if(i38<0.1372191607952118){
    if(i69<0.007353364489972591){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=709.0;
     s1+=38.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i24<0.12033343315124512){
    if(i59<0.018924986943602562){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=40.0;
   }
  }
 } else {
  if(i12<0.0007054299348965287){
   if(i51<-1.5399591575260274e-05){
    s0+=72.0;
   } else {
    if(i11<0.04097169637680054){
     s0+=187.0;
     s1+=173.0;
    } else {
     s0+=83.0;
     s1+=16174.0;
    }
   }
  } else {
   s0+=245.0;
  }
 }
} else {
 if(i13<1.009004831314087){
  if(i14<0.2076939046382904){
   if(i17<1.00752592086792){
    if(i29<0.0010369091760367155){
     s0+=32104.0;
     s1+=3024.0;
    } else {
     s0+=78587.0;
     s1+=1250.0;
    }
   } else {
    if(i34<0.0009359735995531082){
     s1+=221.0;
    } else {
     s0+=360.0;
     s1+=362.0;
    }
   }
  } else {
   if(i47<1.0007843971252441){
    if(i26<-0.0004031062126159668){
     s0+=10.0;
     s1+=66.0;
    } else {
     s0+=131.0;
     s1+=3.0;
    }
   } else {
    if(i36<1.1433720588684082){
     s0+=16.0;
    } else {
     s0+=35.0;
     s1+=400.0;
    }
   }
  }
 } else {
  if(i23<1.116391897201538){
   if(i5<1.0001153945922852){
    s0+=21.0;
   } else {
    if(i27<0.00021899639978073537){
     s0+=10.0;
    } else {
     s0+=9.0;
     s1+=1838.0;
    }
   }
  } else {
   if(i27<0.002427163068205118){
    if(i12<0.0003084988275077194){
     s0+=922.0;
     s1+=38.0;
    } else {
     s0+=2111.0;
    }
   } else {
    if(i14<0.10602635145187378){
     s0+=549.0;
     s1+=52.0;
    } else {
     s0+=182.0;
     s1+=785.0;
    }
   }
  }
 }
}
if(i2<1.0038644075393677){
 if(i38<0.20457690954208374){
  if(i18<0.0016892398707568645){
   if(i41<-1.801326834538486e-05){
    if(i29<0.0023204833269119263){
     s0+=79.0;
    } else {
     s0+=3.0;
     s1+=82.0;
    }
   } else {
    if(i18<0.00111615308560431){
     s0+=75230.0;
     s1+=285.0;
    } else {
     s0+=13597.0;
     s1+=608.0;
    }
   }
  } else {
   if(i0<-0.00046506524085998535){
    if(i34<0.0009124649805016816){
     s0+=396.0;
     s1+=197.0;
    } else {
     s0+=18382.0;
     s1+=614.0;
    }
   } else {
    if(i5<1.0000059604644775){
     s0+=1556.0;
     s1+=110.0;
    } else {
     s0+=2936.0;
     s1+=3828.0;
    }
   }
  }
 } else {
  if(i49<9.651017535361461e-06){
   if(i37<1.0026684999465942){
    s0+=102.0;
   } else {
    s1+=41.0;
   }
  } else {
   if(i36<1.185941457748413){
    if(i33<1.0186978578567505){
     s0+=34.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i77<0.12720581889152527){
     s0+=24.0;
     s1+=793.0;
    } else {
     s0+=37.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i26<0.0002860426902770996){
  if(i25<0.01342746801674366){
   if(i40<1.0773630142211914){
    if(i31<1.0452228784561157){
     s0+=612.0;
    } else {
     s0+=117.0;
     s1+=1164.0;
    }
   } else {
    if(i6<0.006158568896353245){
     s0+=3133.0;
     s1+=42.0;
    } else {
     s0+=48.0;
     s1+=216.0;
    }
   }
  } else {
   if(i25<0.029504768550395966){
    if(i49<1.3091647815599572e-05){
     s0+=38.0;
     s1+=781.0;
    } else {
     s0+=83.0;
     s1+=128.0;
    }
   } else {
    if(i15<1.0239770412445068){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=26.0;
     s1+=3697.0;
    }
   }
  }
 } else {
  if(i4<0.00024640560150146484){
   if(i12<0.0007076200563460588){
    if(i2<1.0066406726837158){
     s0+=3.0;
     s1+=191.0;
    } else {
     s1+=11456.0;
    }
   } else {
    s0+=88.0;
   }
  } else {
   s0+=42.0;
  }
 }
}
if(i1<-9.283353574573994e-05){
 if(i43<1.024446964263916){
  if(i57<0.0002581855223979801){
   if(i67<-2.953610419353936e-06){
    s1+=73.0;
   } else {
    if(i11<0.006138712167739868){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   }
  } else {
   if(i25<0.05608603358268738){
    if(i73<-0.2149808704853058){
     s0+=2.0;
     s1+=6.0;
    } else {
     s0+=546.0;
     s1+=4.0;
    }
   } else {
    if(i58<0.003360915696248412){
     s0+=3.0;
     s1+=33.0;
    } else {
     s0+=71.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i51<-6.419467354135122e-06){
   if(i62<0.0059813945554196835){
    s0+=277.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i20<-0.005066245794296265){
    if(i13<0.942593514919281){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   } else {
    if(i12<0.0013470352860167623){
     s0+=91.0;
     s1+=15691.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i32<0.00011211633682250977){
  if(i38<0.2039250135421753){
   if(i40<1.058549404144287){
    if(i18<0.0011607063934206963){
     s0+=26227.0;
     s1+=162.0;
    } else {
     s0+=8546.0;
     s1+=800.0;
    }
   } else {
    if(i68<0.15582945942878723){
     s0+=46912.0;
     s1+=132.0;
    } else {
     s0+=2218.0;
     s1+=143.0;
    }
   }
  } else {
   if(i27<0.0026816821191459894){
    if(i32<0.00010067224502563477){
     s0+=118.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i6<0.007922638207674026){
     s0+=13.0;
     s1+=5.0;
    } else {
     s1+=74.0;
    }
   }
  }
 } else {
  if(i0<0.0009711384773254395){
   if(i23<1.1162974834442139){
    if(i6<0.004045139066874981){
     s0+=5401.0;
     s1+=362.0;
    } else {
     s0+=229.0;
     s1+=2250.0;
    }
   } else {
    if(i15<1.116865873336792){
     s0+=22769.0;
     s1+=876.0;
    } else {
     s0+=1521.0;
     s1+=1087.0;
    }
   }
  } else {
   if(i6<0.003592067863792181){
    if(i30<1.100994348526001){
     s0+=53.0;
     s1+=386.0;
    } else {
     s0+=1384.0;
    }
   } else {
    if(i12<0.0003881404409185052){
     s0+=34.0;
     s1+=1883.0;
    } else {
     s0+=200.0;
     s1+=90.0;
    }
   }
  }
 }
}
if(i13<1.0132712125778198){
 if(i4<2.092123031616211e-05){
  if(i38<0.20560264587402344){
   if(i18<0.001716724131256342){
    if(i18<0.0011214091209694743){
     s0+=75067.0;
     s1+=259.0;
    } else {
     s0+=13620.0;
     s1+=656.0;
    }
   } else {
    if(i36<1.0951454639434814){
     s0+=1929.0;
     s1+=1992.0;
    } else {
     s0+=18193.0;
     s1+=1212.0;
    }
   }
  } else {
   if(i6<0.005170347169041634){
    if(i78<-0.0008172690868377686){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=135.0;
     s1+=3.0;
    }
   } else {
    if(i41<-4.478765731619205e-06){
     s0+=3.0;
     s1+=386.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i25<0.02013212814927101){
   if(i2<1.0079927444458008){
    if(i29<0.0009730213787406683){
     s0+=1521.0;
     s1+=815.0;
    } else {
     s0+=3370.0;
     s1+=170.0;
    }
   } else {
    if(i53<1.9371509552001953e-05){
     s0+=50.0;
     s1+=611.0;
    } else {
     s0+=238.0;
    }
   }
  } else {
   if(i2<0.9993263483047485){
    if(i15<1.147531509399414){
     s0+=428.0;
     s1+=73.0;
    } else {
     s0+=4.0;
     s1+=51.0;
    }
   } else {
    if(i38<0.08701559901237488){
     s0+=337.0;
     s1+=979.0;
    } else {
     s0+=135.0;
     s1+=3331.0;
    }
   }
  }
 }
} else {
 if(i27<0.0025599487125873566){
  if(i28<0.0011826532427221537){
   if(i55<1.00358247756958){
    if(i64<0.001945921452715993){
     s1+=1485.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=20.0;
   }
  } else {
   if(i23<1.1180615425109863){
    s1+=333.0;
   } else {
    if(i57<1.6833244444569573e-05){
     s0+=1112.0;
     s1+=26.0;
    } else {
     s0+=58.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i31<1.1398391723632812){
   if(i0<0.0008362531661987305){
    s0+=154.0;
   } else {
    s1+=51.0;
   }
  } else {
   if(i6<0.0021558962762355804){
    if(i26<6.890296936035156e-05){
     s0+=130.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=95.0;
    }
   } else {
    if(i6<0.003864230588078499){
     s0+=34.0;
     s1+=166.0;
    } else {
     s0+=4.0;
     s1+=11521.0;
    }
   }
  }
 }
}
if(i20<0.001320958137512207){
 if(i18<0.0018732198514044285){
  if(i39<0.010748997330665588){
   if(i3<0.00010067224502563477){
    if(i26<-6.109476089477539e-05){
     s0+=10376.0;
     s1+=269.0;
    } else {
     s0+=51845.0;
     s1+=42.0;
    }
   } else {
    if(i51<-4.046137291879859e-06){
     s0+=78.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i59<0.00016890675760805607){
    if(i2<0.9983882904052734){
     s0+=3869.0;
     s1+=62.0;
    } else {
     s0+=556.0;
     s1+=454.0;
    }
   } else {
    if(i28<0.0004927638219669461){
     s0+=1467.0;
     s1+=179.0;
    } else {
     s0+=26485.0;
     s1+=339.0;
    }
   }
  }
 } else {
  if(i39<0.1840275228023529){
   if(i4<7.748603820800781e-07){
    if(i29<0.0007025004597380757){
     s0+=129.0;
     s1+=183.0;
    } else {
     s0+=13029.0;
     s1+=332.0;
    }
   } else {
    if(i14<0.04099264740943909){
     s0+=4023.0;
     s1+=954.0;
    } else {
     s0+=3434.0;
     s1+=6000.0;
    }
   }
  } else {
   if(i2<0.9929152131080627){
    if(i24<0.12643387913703918){
     s0+=193.0;
     s1+=3.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i57<0.00047410873230546713){
     s0+=27.0;
     s1+=1978.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i46<-4.9174236664839555e-06){
  if(i29<0.0024704383686184883){
   if(i44<0.0009261462837457657){
    if(i35<0.001152311684563756){
     s0+=7.0;
     s1+=1934.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i29<0.001141865155659616){
     s1+=80.0;
    } else {
     s0+=793.0;
     s1+=3.0;
    }
   }
  } else {
   s1+=11338.0;
  }
 } else {
  if(i21<1.0327401161193848){
   s0+=285.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i1<-8.853543840814382e-05){
 if(i42<1.0008960962295532){
  if(i15<1.141160249710083){
   if(i38<0.1669009029865265){
    if(i12<8.48170166136697e-05){
     s1+=7.0;
    } else {
     s0+=549.0;
     s1+=14.0;
    }
   } else {
    if(i19<0.9955578446388245){
     s1+=13.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i11<0.0026209652423858643){
    if(i42<1.000004768371582){
     s1+=4.0;
    } else {
     s0+=10.0;
    }
   } else {
    s1+=519.0;
   }
  }
 } else {
  if(i61<-0.007013499736785889){
   if(i15<1.0718709230422974){
    if(i9<0.9432994723320007){
     s0+=352.0;
     s1+=8.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i24<0.009910166263580322){
     s0+=66.0;
     s1+=12.0;
    } else {
     s0+=16.0;
     s1+=139.0;
    }
   }
  } else {
   if(i51<-7.252754585351795e-06){
    s0+=87.0;
   } else {
    if(i14<0.016036123037338257){
     s0+=94.0;
     s1+=81.0;
    } else {
     s0+=90.0;
     s1+=15459.0;
    }
   }
  }
 }
} else {
 if(i7<1.013148546218872){
  if(i17<1.0075329542160034){
   if(i27<0.0009160810732282698){
    if(i39<0.008251180872321129){
     s0+=22246.0;
     s1+=448.0;
    } else {
     s0+=9777.0;
     s1+=3189.0;
    }
   } else {
    if(i11<0.20917987823486328){
     s0+=80647.0;
     s1+=1273.0;
    } else {
     s0+=240.0;
     s1+=254.0;
    }
   }
  } else {
   if(i32<0.0007607638835906982){
    if(i58<0.0014285976067185402){
     s0+=36.0;
     s1+=584.0;
    } else {
     s0+=69.0;
     s1+=39.0;
    }
   } else {
    if(i28<0.0019314645323902369){
     s0+=672.0;
    } else {
     s0+=27.0;
     s1+=250.0;
    }
   }
  }
 } else {
  if(i6<0.006391370203346014){
   if(i36<1.0905578136444092){
    s1+=519.0;
   } else {
    if(i50<0.0019332270603626966){
     s0+=969.0;
    } else {
     s0+=448.0;
     s1+=49.0;
    }
   }
  } else {
   if(i55<0.9985983967781067){
    s0+=4.0;
   } else {
    if(i57<0.00017829822900239378){
     s1+=1569.0;
    } else {
     s0+=12.0;
     s1+=15.0;
    }
   }
  }
 }
}
if(i0<0.0009646415710449219){
 if(i15<1.1402404308319092){
  if(i2<1.0026241540908813){
   if(i8<0.000292360782623291){
    if(i35<0.0006622183136641979){
     s0+=71318.0;
     s1+=335.0;
    } else {
     s0+=29993.0;
     s1+=2325.0;
    }
   } else {
    if(i56<0.01953137293457985){
     s0+=4329.0;
     s1+=383.0;
    } else {
     s0+=1878.0;
     s1+=1081.0;
    }
   }
  } else {
   if(i57<1.430924930900801e-05){
    if(i45<-0.0001952343445736915){
     s0+=413.0;
     s1+=348.0;
    } else {
     s0+=4640.0;
     s1+=220.0;
    }
   } else {
    if(i39<0.028321582823991776){
     s0+=532.0;
     s1+=234.0;
    } else {
     s0+=151.0;
     s1+=968.0;
    }
   }
  }
 } else {
  if(i57<3.289886808488518e-05){
   if(i41<-1.752398929966148e-05){
    if(i21<1.02272367477417){
     s0+=17.0;
    } else {
     s1+=107.0;
    }
   } else {
    if(i19<1.0559006929397583){
     s0+=765.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i14<0.0017264187335968018){
    if(i31<1.3756766319274902){
     s0+=51.0;
     s1+=10.0;
    } else {
     s0+=136.0;
    }
   } else {
    if(i25<0.03474512696266174){
     s0+=220.0;
     s1+=188.0;
    } else {
     s0+=60.0;
     s1+=1739.0;
    }
   }
  }
 }
} else {
 if(i1<-7.462810754077509e-05){
  if(i35<0.0036948430351912975){
   if(i25<0.003479079809039831){
    if(i26<0.0003472566604614258){
     s0+=112.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=177.0;
    }
   } else {
    if(i2<1.0045502185821533){
     s0+=73.0;
     s1+=138.0;
    } else {
     s0+=85.0;
     s1+=14235.0;
    }
   }
  } else {
   if(i5<1.0041842460632324){
    s0+=164.0;
   } else {
    if(i20<-0.0042781829833984375){
     s0+=4.0;
    } else {
     s1+=43.0;
    }
   }
  }
 } else {
  if(i12<0.00038624435546807945){
   if(i4<1.8715858459472656e-05){
    s0+=45.0;
   } else {
    if(i44<0.0011708233505487442){
     s1+=1127.0;
    } else {
     s0+=33.0;
     s1+=564.0;
    }
   }
  } else {
   if(i56<0.04278815537691116){
    if(i58<0.002571813063696027){
     s0+=1482.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i34<0.014246072620153427){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=74.0;
    }
   }
  }
 }
}
if(i0<0.0009613633155822754){
 if(i35<0.0007268479093909264){
  if(i35<0.0005080257542431355){
   if(i40<1.1354830265045166){
    if(i23<1.1979892253875732){
     s0+=60271.0;
     s1+=38.0;
    } else {
     s0+=4620.0;
     s1+=42.0;
    }
   } else {
    if(i19<1.0179890394210815){
     s0+=2098.0;
     s1+=30.0;
    } else {
     s0+=140.0;
     s1+=14.0;
    }
   }
  } else {
   if(i5<1.002455234527588){
    if(i43<1.0178570747375488){
     s0+=1407.0;
     s1+=209.0;
    } else {
     s0+=12587.0;
     s1+=168.0;
    }
   } else {
    if(i50<0.0019978214986622334){
     s0+=331.0;
     s1+=7.0;
    } else {
     s0+=13.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i43<1.1215944290161133){
   if(i7<1.0088119506835938){
    if(i0<-0.0005335807800292969){
     s0+=23996.0;
     s1+=668.0;
    } else {
     s0+=7376.0;
     s1+=3430.0;
    }
   } else {
    if(i3<1.33514404296875e-05){
     s0+=564.0;
     s1+=117.0;
    } else {
     s0+=414.0;
     s1+=1110.0;
    }
   }
  } else {
   if(i6<0.006762110162526369){
    if(i31<1.1740061044692993){
     s0+=408.0;
     s1+=27.0;
    } else {
     s0+=42.0;
     s1+=65.0;
    }
   } else {
    if(i26<-0.0006291866302490234){
     s0+=22.0;
     s1+=101.0;
    } else {
     s0+=5.0;
     s1+=1858.0;
    }
   }
  }
 }
} else {
 if(i11<0.15993723273277283){
  if(i51<-7.755489605187904e-06){
   s0+=624.0;
  } else {
   if(i12<0.0007011143607087433){
    if(i27<0.0009706164710223675){
     s1+=2331.0;
    } else {
     s0+=248.0;
     s1+=1845.0;
    }
   } else {
    s0+=1049.0;
   }
  }
 } else {
  if(i31<1.1290926933288574){
   if(i12<0.0002490887709427625){
    if(i77<0.06539100408554077){
     s1+=43.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=95.0;
   }
  } else {
   if(i18<0.0012063400354236364){
    if(i10<1.0171871185302734){
     s0+=52.0;
    } else {
     s1+=224.0;
    }
   } else {
    if(i31<1.1453365087509155){
     s0+=15.0;
     s1+=109.0;
    } else {
     s0+=8.0;
     s1+=11920.0;
    }
   }
  }
 }
}
if(i3<6.240606307983398e-05){
 if(i21<1.0183451175689697){
  if(i5<1.002134084701538){
   if(i11<0.23398521542549133){
    if(i27<0.000884784443769604){
     s0+=30995.0;
     s1+=2953.0;
    } else {
     s0+=76139.0;
     s1+=703.0;
    }
   } else {
    if(i35<0.0009412172948941588){
     s0+=26.0;
    } else {
     s0+=9.0;
     s1+=214.0;
    }
   }
  } else {
   if(i59<0.0030364305712282658){
    if(i1<-4.1232837247662246e-05){
     s0+=884.0;
     s1+=551.0;
    } else {
     s0+=4572.0;
     s1+=428.0;
    }
   } else {
    if(i52<0.2789517939090729){
     s0+=660.0;
     s1+=659.0;
    } else {
     s0+=41.0;
     s1+=596.0;
    }
   }
  }
 } else {
  if(i6<0.005058640614151955){
   if(i14<0.156479150056839){
    if(i2<1.0031802654266357){
     s0+=510.0;
     s1+=7.0;
    } else {
     s0+=102.0;
     s1+=27.0;
    }
   } else {
    if(i55<1.0015463829040527){
     s0+=143.0;
    } else {
     s0+=91.0;
     s1+=93.0;
    }
   }
  } else {
   if(i3<-0.00013977289199829102){
    s0+=11.0;
   } else {
    if(i11<0.08257552981376648){
     s0+=22.0;
     s1+=15.0;
    } else {
     s0+=27.0;
     s1+=1525.0;
    }
   }
  }
 }
} else {
 if(i34<0.0023287064395844936){
  if(i27<0.0009706164710223675){
   if(i30<1.0548467636108398){
    s0+=127.0;
   } else {
    s1+=2363.0;
   }
  } else {
   if(i39<0.031083237379789352){
    if(i63<-0.0013004953507333994){
     s0+=74.0;
     s1+=11.0;
    } else {
     s0+=1885.0;
    }
   } else {
    if(i28<0.0019105684477835894){
     s0+=3.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i33<0.9001100063323975){
   if(i2<1.005268931388855){
    if(i44<0.022018730640411377){
     s0+=37.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i4<6.41942024230957e-05){
     s0+=5.0;
     s1+=26.0;
    } else {
     s1+=118.0;
    }
   }
  } else {
   if(i1<-8.574075764045119e-05){
    if(i16<1.0045689344406128){
     s0+=14.0;
     s1+=1222.0;
    } else {
     s1+=12074.0;
    }
   } else {
    if(i30<1.4586446285247803){
     s0+=8.0;
     s1+=732.0;
    } else {
     s0+=62.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i1<-9.473635873291641e-05){
 if(i13<0.9442543983459473){
  if(i43<1.0665230751037598){
   if(i25<0.056602321565151215){
    if(i38<0.14529696106910706){
     s0+=561.0;
     s1+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i40<1.2619349956512451){
     s0+=5.0;
     s1+=30.0;
    } else {
     s0+=87.0;
     s1+=17.0;
    }
   }
  } else {
   if(i39<0.13655772805213928){
    s0+=3.0;
   } else {
    if(i32<0.0006551742553710938){
     s0+=1.0;
     s1+=65.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i24<0.04277065396308899){
   if(i75<0.0018073460087180138){
    if(i16<1.0114279985427856){
     s0+=149.0;
     s1+=65.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   } else {
    if(i16<0.984764575958252){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=81.0;
    }
   }
  } else {
   if(i46<-6.022286106599495e-05){
    s0+=69.0;
   } else {
    if(i12<0.0007059713825583458){
     s0+=39.0;
     s1+=15296.0;
    } else {
     s0+=181.0;
    }
   }
  }
 }
} else {
 if(i57<-2.764349483186379e-05){
  if(i15<1.0779829025268555){
   s1+=685.0;
  } else {
   if(i32<0.0008400678634643555){
    if(i2<1.0064096450805664){
     s0+=2.0;
     s1+=7.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i50<0.0022216655779629946){
     s0+=31.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i35<0.0007191791664808989){
   if(i67<-4.894771791441599e-06){
    if(i53<1.1146068572998047e-05){
     s0+=4.0;
     s1+=162.0;
    } else {
     s0+=82.0;
     s1+=15.0;
    }
   } else {
    if(i18<0.002594901714473963){
     s0+=81252.0;
     s1+=565.0;
    } else {
     s0+=30.0;
     s1+=24.0;
    }
   }
  } else {
   if(i2<0.9985599517822266){
    if(i3<-5.239248275756836e-05){
     s0+=21715.0;
     s1+=318.0;
    } else {
     s0+=2342.0;
     s1+=479.0;
    }
   } else {
    if(i25<0.009279235266149044){
     s0+=8166.0;
     s1+=1241.0;
    } else {
     s0+=1775.0;
     s1+=5119.0;
    }
   }
  }
 }
}
if(i8<0.0005705356597900391){
 if(i11<0.23237019777297974){
  if(i23<1.1162974834442139){
   if(i35<0.0007269376656040549){
    if(i56<0.13895228505134583){
     s0+=26480.0;
     s1+=360.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i12<0.00024953059619292617){
     s0+=560.0;
     s1+=2657.0;
    } else {
     s0+=1869.0;
     s1+=133.0;
    }
   }
  } else {
   if(i1<-6.014207247062586e-05){
    if(i8<0.00011914968490600586){
     s0+=1784.0;
     s1+=179.0;
    } else {
     s0+=700.0;
     s1+=529.0;
    }
   } else {
    if(i43<1.114506483078003){
     s0+=76561.0;
     s1+=484.0;
    } else {
     s0+=2098.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i23<1.6811659336090088){
   if(i56<0.03008061647415161){
    if(i41<-1.3821776519762352e-05){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i25<0.038527704775333405){
     s0+=26.0;
     s1+=32.0;
    } else {
     s1+=510.0;
    }
   }
  } else {
   s0+=23.0;
  }
 }
} else {
 if(i10<1.0134613513946533){
  if(i56<0.04104376956820488){
   if(i49<-1.2578627320181113e-05){
    if(i12<0.0006360296392813325){
     s0+=36.0;
     s1+=621.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i18<0.001972476253286004){
     s0+=3435.0;
     s1+=72.0;
    } else {
     s0+=2408.0;
     s1+=2005.0;
    }
   }
  } else {
   if(i43<1.0477652549743652){
    if(i20<-0.0036541521549224854){
     s0+=356.0;
     s1+=106.0;
    } else {
     s0+=17.0;
     s1+=126.0;
    }
   } else {
    if(i12<0.0008531874045729637){
     s0+=169.0;
     s1+=3582.0;
    } else {
     s0+=23.0;
    }
   }
  }
 } else {
  if(i71<3.9211404327943455e-06){
   if(i6<0.002447939943522215){
    if(i35<0.0006822086870670319){
     s0+=1.0;
     s1+=166.0;
    } else {
     s0+=125.0;
     s1+=14.0;
    }
   } else {
    if(i1<-5.688923556590453e-05){
     s0+=22.0;
     s1+=12093.0;
    } else {
     s0+=13.0;
     s1+=85.0;
    }
   }
  } else {
   if(i56<0.14570654928684235){
    s0+=17.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i10<1.0124890804290771){
 if(i3<6.181001663208008e-05){
  if(i19<1.0182666778564453){
   if(i69<0.46195071935653687){
    if(i52<0.045390427112579346){
     s0+=94669.0;
     s1+=2813.0;
    } else {
     s0+=18307.0;
     s1+=2665.0;
    }
   } else {
    if(i26<-0.0007330179214477539){
     s0+=133.0;
     s1+=23.0;
    } else {
     s0+=13.0;
     s1+=476.0;
    }
   }
  } else {
   if(i18<0.0021708356216549873){
    if(i49<8.980732673080638e-06){
     s0+=388.0;
    } else {
     s0+=151.0;
     s1+=102.0;
    }
   } else {
    if(i25<0.02735332027077675){
     s0+=266.0;
     s1+=251.0;
    } else {
     s0+=110.0;
     s1+=1103.0;
    }
   }
  }
 } else {
  if(i29<0.0023654235992580652){
   if(i29<0.0010512758744880557){
    if(i23<1.0610902309417725){
     s0+=152.0;
    } else {
     s1+=953.0;
    }
   } else {
    if(i9<1.020480990409851){
     s0+=1677.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i14<0.03492620587348938){
    if(i18<0.005640862509608269){
     s0+=79.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    if(i26<-0.0005298852920532227){
     s0+=31.0;
     s1+=108.0;
    } else {
     s0+=54.0;
     s1+=2647.0;
    }
   }
  }
 }
} else {
 if(i36<1.1573951244354248){
  if(i44<0.0008771963184699416){
   if(i16<0.9991118311882019){
    s0+=11.0;
   } else {
    if(i32<0.0012142062187194824){
     s1+=1408.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i12<0.000275948055787012){
    if(i46<-4.447950686881086e-06){
     s1+=60.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=374.0;
   }
  }
 } else {
  if(i27<0.0025520131457597017){
   if(i28<0.0053166733123362064){
    s1+=52.0;
   } else {
    s0+=30.0;
   }
  } else {
   if(i11<0.07435527443885803){
    if(i26<0.00016617774963378906){
     s0+=17.0;
    } else {
     s1+=134.0;
    }
   } else {
    s1+=11519.0;
   }
  }
 }
}
if(i3<6.431341171264648e-05){
 if(i11<0.2075349986553192){
  if(i6<0.0039951391518116){
   if(i18<0.0010507050901651382){
    if(i23<1.197187900543213){
     s0+=64332.0;
     s1+=120.0;
    } else {
     s0+=5986.0;
     s1+=100.0;
    }
   } else {
    if(i34<0.0006934159900993109){
     s0+=3991.0;
     s1+=980.0;
    } else {
     s0+=18036.0;
     s1+=150.0;
    }
   }
  } else {
   if(i8<-1.6689300537109375e-05){
    if(i8<-0.00012999773025512695){
     s0+=16845.0;
     s1+=155.0;
    } else {
     s0+=663.0;
     s1+=206.0;
    }
   } else {
    if(i16<0.9948877096176147){
     s0+=2929.0;
     s1+=574.0;
    } else {
     s0+=1296.0;
     s1+=4138.0;
    }
   }
  }
 } else {
  if(i6<0.0063024163246154785){
   if(i46<-4.451175300346222e-06){
    if(i45<-0.0004349566879682243){
     s0+=24.0;
     s1+=39.0;
    } else {
     s0+=70.0;
     s1+=6.0;
    }
   } else {
    s0+=214.0;
   }
  } else {
   if(i46<-1.6413926005043322e-06){
    if(i49<5.356327892513946e-05){
     s1+=1253.0;
    } else {
     s0+=3.0;
     s1+=200.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
} else {
 if(i36<1.1706266403198242){
  if(i27<0.000989001477137208){
   if(i28<0.0001669393095653504){
    s0+=51.0;
   } else {
    s1+=2299.0;
   }
  } else {
   if(i21<1.0278782844543457){
    if(i52<0.0543094277381897){
     s0+=1845.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=21.0;
    }
   } else {
    if(i18<0.006010810844600201){
     s1+=34.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i2<1.005581021308899){
   if(i11<0.12047335505485535){
    if(i26<-0.00020140409469604492){
     s0+=88.0;
     s1+=41.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i60<0.8925490975379944){
     s0+=1.0;
    } else {
     s1+=429.0;
    }
   }
  } else {
   if(i24<0.08370897173881531){
    if(i72<0.0005038678646087646){
     s0+=8.0;
     s1+=348.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   } else {
    if(i49<4.3641972297336906e-05){
     s0+=19.0;
     s1+=13298.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i2<1.0037140846252441){
 if(i39<0.18422886729240417){
  if(i35<0.0007171295001171529){
   if(i37<1.0061386823654175){
    if(i15<1.1172127723693848){
     s0+=76738.0;
     s1+=404.0;
    } else {
     s0+=2624.0;
     s1+=107.0;
    }
   } else {
    if(i1<-2.612905518617481e-05){
     s1+=15.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i0<-0.00043404102325439453){
    if(i65<-0.0030739493668079376){
     s0+=14.0;
     s1+=68.0;
    } else {
     s0+=25539.0;
     s1+=894.0;
    }
   } else {
    if(i18<0.0018620553892105818){
     s0+=3230.0;
     s1+=600.0;
    } else {
     s0+=3504.0;
     s1+=3623.0;
    }
   }
  }
 } else {
  if(i2<0.9923499822616577){
   if(i24<0.13509738445281982){
    if(i48<0.7776971459388733){
     s1+=1.0;
    } else {
     s0+=190.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i28<0.009994943626224995){
    if(i28<0.0098847895860672){
     s0+=2.0;
     s1+=30.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i43<1.0235800743103027){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=774.0;
    }
   }
  }
 }
} else {
 if(i1<-6.916874554008245e-05){
  if(i34<0.002174623776227236){
   if(i59<0.0007062000222504139){
    if(i67<2.1612527234537993e-06){
     s0+=16.0;
     s1+=1228.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i50<0.0009147459641098976){
     s1+=62.0;
    } else {
     s0+=459.0;
    }
   }
  } else {
   if(i21<0.8882160186767578){
    if(i50<0.019649652764201164){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i22<0.9072944521903992){
     s0+=9.0;
     s1+=25.0;
    } else {
     s0+=48.0;
     s1+=14307.0;
    }
   }
  }
 } else {
  if(i12<0.0002631360257510096){
   if(i1<-3.9492020732723176e-05){
    if(i13<1.0055434703826904){
     s0+=35.0;
     s1+=159.0;
    } else {
     s0+=3.0;
     s1+=1265.0;
    }
   } else {
    if(i6<0.0023165466263890266){
     s0+=179.0;
    } else {
     s0+=30.0;
     s1+=495.0;
    }
   }
  } else {
   if(i34<0.001963648246601224){
    s0+=3663.0;
   } else {
    if(i36<1.3258767127990723){
     s0+=10.0;
     s1+=184.0;
    } else {
     s0+=144.0;
     s1+=53.0;
    }
   }
  }
 }
}
if(i1<-0.00010307504999218509){
 if(i33<0.8917844295501709){
  if(i6<0.020750708878040314){
   if(i43<1.0786433219909668){
    if(i67<-7.0721043812227435e-06){
     s1+=8.0;
    } else {
     s0+=363.0;
     s1+=16.0;
    }
   } else {
    if(i78<-0.10290804505348206){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   }
  } else {
   if(i39<0.09274979680776596){
    if(i4<6.74128532409668e-05){
     s0+=66.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i68<0.14028002321720123){
     s0+=18.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i34<0.0024464386515319347){
   if(i29<0.0013754288665950298){
    if(i35<0.0009719806257635355){
     s0+=17.0;
     s1+=457.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i31<1.0881938934326172){
     s1+=34.0;
    } else {
     s0+=234.0;
    }
   }
  } else {
   if(i38<0.0011893510818481445){
    if(i45<-0.0002425862185191363){
     s0+=6.0;
     s1+=85.0;
    } else {
     s0+=76.0;
     s1+=21.0;
    }
   } else {
    if(i24<0.039630740880966187){
     s0+=28.0;
     s1+=40.0;
    } else {
     s0+=20.0;
     s1+=14301.0;
    }
   }
  }
 }
} else {
 if(i10<1.0076709985733032){
  if(i52<0.03728180751204491){
   if(i36<1.0905030965805054){
    if(i39<0.009197350591421127){
     s0+=21544.0;
     s1+=393.0;
    } else {
     s0+=4098.0;
     s1+=1500.0;
    }
   } else {
    if(i17<1.0099892616271973){
     s0+=64766.0;
     s1+=489.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   }
  } else {
   if(i5<1.0003471374511719){
    if(i16<0.9938412308692932){
     s0+=13464.0;
     s1+=129.0;
    } else {
     s0+=2640.0;
     s1+=386.0;
    }
   } else {
    if(i27<0.000967053696513176){
     s0+=180.0;
     s1+=808.0;
    } else {
     s0+=5943.0;
     s1+=2117.0;
    }
   }
  }
 } else {
  if(i32<0.0007647275924682617){
   if(i4<1.424551010131836e-05){
    if(i55<1.0014718770980835){
     s0+=399.0;
     s1+=10.0;
    } else {
     s0+=108.0;
     s1+=65.0;
    }
   } else {
    if(i35<0.0015251488657668233){
     s0+=102.0;
     s1+=3240.0;
    } else {
     s0+=176.0;
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.006723185069859028){
    if(i74<-0.0029287338256835938){
     s1+=12.0;
    } else {
     s0+=2186.0;
     s1+=11.0;
    }
   } else {
    s1+=50.0;
   }
  }
 }
}
if(i17<1.004577875137329){
 if(i9<1.0116868019104004){
  if(i8<0.0003135204315185547){
   if(i14<0.23106703162193298){
    if(i39<0.011364450678229332){
     s0+=62571.0;
     s1+=426.0;
    } else {
     s0+=41408.0;
     s1+=2395.0;
    }
   } else {
    if(i49<1.547754800412804e-05){
     s0+=42.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=169.0;
    }
   }
  } else {
   if(i1<-4.2874657083302736e-05){
    if(i60<1.0745646953582764){
     s0+=1213.0;
     s1+=924.0;
    } else {
     s0+=77.0;
     s1+=548.0;
    }
   } else {
    if(i47<1.0005385875701904){
     s0+=4351.0;
     s1+=262.0;
    } else {
     s0+=2031.0;
     s1+=597.0;
    }
   }
  }
 } else {
  if(i18<0.0014300693292170763){
   if(i20<0.0006778836250305176){
    if(i58<-4.392531991470605e-05){
     s0+=161.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=24.0;
    }
   } else {
    s0+=315.0;
   }
  } else {
   if(i67<4.594869551510783e-06){
    if(i6<0.004356323275715113){
     s0+=148.0;
     s1+=44.0;
    } else {
     s0+=62.0;
     s1+=2099.0;
    }
   } else {
    if(i75<-0.008223852142691612){
     s0+=18.0;
     s1+=287.0;
    } else {
     s0+=220.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i18<0.0017565597081556916){
  if(i17<1.0111908912658691){
   if(i3<0.00011783838272094727){
    if(i12<7.662150164833292e-05){
     s1+=7.0;
    } else {
     s0+=2308.0;
     s1+=21.0;
    }
   } else {
    if(i50<0.000973059912212193){
     s1+=119.0;
    } else {
     s0+=107.0;
     s1+=7.0;
    }
   }
  } else {
   if(i51<-5.690033049177146e-06){
    s0+=12.0;
   } else {
    if(i20<0.0012669563293457031){
     s0+=1.0;
    } else {
     s1+=874.0;
    }
   }
  }
 } else {
  if(i11<0.1384480595588684){
   if(i23<1.1180615425109863){
    if(i29<0.0002264361537527293){
     s0+=58.0;
    } else {
     s1+=1454.0;
    }
   } else {
    if(i27<0.002254038117825985){
     s0+=733.0;
    } else {
     s0+=872.0;
     s1+=1669.0;
    }
   }
  } else {
   if(i30<1.176405668258667){
    if(i12<0.000258788641076535){
     s1+=116.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i1<-3.336751979077235e-05){
     s0+=16.0;
     s1+=11662.0;
    } else {
     s0+=37.0;
     s1+=110.0;
    }
   }
  }
 }
}
if(i5<1.0026336908340454){
 if(i33<1.0219894647598267){
  if(i18<0.0017227325588464737){
   if(i36<1.0776758193969727){
    if(i20<-0.0002747476100921631){
     s0+=7807.0;
     s1+=618.0;
    } else {
     s0+=14635.0;
     s1+=85.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=64553.0;
     s1+=125.0;
    } else {
     s0+=1956.0;
     s1+=91.0;
    }
   }
  } else {
   if(i8<-9.018182754516602e-05){
    if(i45<-0.0015759633388370275){
     s1+=32.0;
    } else {
     s0+=14427.0;
     s1+=328.0;
    }
   } else {
    if(i11<0.04406669735908508){
     s0+=3677.0;
     s1+=451.0;
    } else {
     s0+=2627.0;
     s1+=2774.0;
    }
   }
  }
 } else {
  if(i46<-3.650908183772117e-06){
   if(i19<1.0180892944335938){
    if(i32<0.00034177303314208984){
     s0+=53.0;
     s1+=91.0;
    } else {
     s0+=81.0;
     s1+=2.0;
    }
   } else {
    if(i47<1.0014359951019287){
     s0+=29.0;
     s1+=1004.0;
    } else {
     s0+=56.0;
     s1+=4.0;
    }
   }
  } else {
   if(i12<0.00019741257710848004){
    if(i53<4.351139068603516e-06){
     s0+=421.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.0026315334253013134){
     s0+=147.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007055420428514481){
  if(i24<0.15865442156791687){
   if(i9<1.014338493347168){
    if(i12<0.0003090209502261132){
     s0+=1088.0;
     s1+=2300.0;
    } else {
     s0+=2071.0;
     s1+=809.0;
    }
   } else {
    if(i55<1.0046429634094238){
     s0+=97.0;
     s1+=2023.0;
    } else {
     s0+=138.0;
     s1+=56.0;
    }
   }
  } else {
   if(i28<0.001737492624670267){
    if(i47<1.000800609588623){
     s1+=41.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i34<0.002776943612843752){
     s0+=72.0;
     s1+=135.0;
    } else {
     s0+=122.0;
     s1+=13360.0;
    }
   }
  }
 } else {
  s0+=2270.0;
 }
}
if(i2<1.0038650035858154){
 if(i6<0.007382565643638372){
  if(i35<0.0006999608594924212){
   if(i5<1.002680778503418){
    if(i40<1.023447036743164){
     s0+=3686.0;
     s1+=139.0;
    } else {
     s0+=74025.0;
     s1+=309.0;
    }
   } else {
    if(i50<0.0018723421962931752){
     s0+=344.0;
    } else {
     s0+=3.0;
     s1+=45.0;
    }
   }
  } else {
   if(i4<2.682209014892578e-06){
    if(i35<0.0010087995324283838){
     s0+=8212.0;
     s1+=894.0;
    } else {
     s0+=14198.0;
     s1+=127.0;
    }
   } else {
    if(i32<0.0002982020378112793){
     s0+=1427.0;
     s1+=1895.0;
    } else {
     s0+=4428.0;
     s1+=341.0;
    }
   }
  }
 } else {
  if(i15<1.113753318786621){
   if(i9<1.0058860778808594){
    if(i27<0.0010768063366413116){
     s0+=130.0;
     s1+=196.0;
    } else {
     s0+=5258.0;
     s1+=506.0;
    }
   } else {
    if(i15<1.0905630588531494){
     s0+=12.0;
     s1+=393.0;
    } else {
     s0+=59.0;
     s1+=18.0;
    }
   }
  } else {
   if(i14<0.0014938712120056152){
    if(i6<0.02091490663588047){
     s0+=134.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    if(i24<0.06896248459815979){
     s0+=39.0;
     s1+=125.0;
    } else {
     s0+=23.0;
     s1+=1794.0;
    }
   }
  }
 }
} else {
 if(i18<0.0019411268876865506){
  if(i2<1.010324478149414){
   if(i32<0.0005151629447937012){
    if(i41<-1.857565075624734e-05){
     s0+=46.0;
     s1+=461.0;
    } else {
     s0+=255.0;
     s1+=1.0;
    }
   } else {
    s0+=2820.0;
   }
  } else {
   s1+=1006.0;
  }
 } else {
  if(i29<0.0021597796585410833){
   if(i38<0.07823243737220764){
    if(i27<0.0010749378707259893){
     s0+=96.0;
     s1+=1823.0;
    } else {
     s0+=265.0;
    }
   } else {
    if(i12<0.00027096131816506386){
     s1+=175.0;
    } else {
     s0+=623.0;
    }
   }
  } else {
   if(i50<0.0003169266856275499){
    s0+=14.0;
   } else {
    if(i26<-0.0001888275146484375){
     s0+=115.0;
     s1+=727.0;
    } else {
     s0+=50.0;
     s1+=13602.0;
    }
   }
  }
 }
}
if(i2<1.003852128982544){
 if(i11<0.20764318108558655){
  if(i18<0.0017161739524453878){
   if(i27<0.0005608070641756058){
    if(i58<0.0001130982709582895){
     s0+=22192.0;
     s1+=147.0;
    } else {
     s0+=6343.0;
     s1+=632.0;
    }
   } else {
    if(i41<-1.895322566269897e-05){
     s0+=41.0;
     s1+=46.0;
    } else {
     s0+=60821.0;
     s1+=185.0;
    }
   }
  } else {
   if(i2<0.9980640411376953){
    if(i35<0.0030681618954986334){
     s0+=17194.0;
     s1+=408.0;
    } else {
     s0+=232.0;
     s1+=125.0;
    }
   } else {
    if(i47<0.9995660185813904){
     s0+=2060.0;
     s1+=22.0;
    } else {
     s0+=3217.0;
     s1+=3837.0;
    }
   }
  }
 } else {
  if(i27<0.0025624986737966537){
   if(i1<-4.83129479107447e-05){
    if(i18<0.0011160050053149462){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i40<1.0964229106903076){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=193.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.004629146307706833){
    if(i39<0.059369832277297974){
     s0+=58.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=74.0;
    }
   } else {
    if(i41<-8.223973964049947e-06){
     s0+=35.0;
     s1+=1080.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i45<-0.0002307928225491196){
  if(i27<0.0022595368791371584){
   if(i50<0.0010085281683132052){
    if(i55<1.003906011581421){
     s0+=1.0;
     s1+=1223.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i23<1.105151891708374){
     s1+=19.0;
    } else {
     s0+=327.0;
    }
   }
  } else {
   if(i2<1.0064605474472046){
    if(i24<0.0805639922618866){
     s0+=97.0;
     s1+=81.0;
    } else {
     s0+=23.0;
     s1+=1497.0;
    }
   } else {
    if(i0<0.001298367977142334){
     s0+=6.0;
     s1+=420.0;
    } else {
     s1+=11114.0;
    }
   }
  }
 } else {
  if(i17<1.0110281705856323){
   if(i34<0.0010308127384632826){
    if(i12<0.00021194771397858858){
     s0+=11.0;
     s1+=995.0;
    } else {
     s0+=647.0;
    }
   } else {
    if(i39<0.0306938998401165){
     s0+=3068.0;
     s1+=46.0;
    } else {
     s0+=75.0;
     s1+=340.0;
    }
   }
  } else {
   if(i39<0.013945461250841618){
    if(i32<0.0011996626853942871){
     s0+=9.0;
     s1+=321.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   } else {
    if(i3<0.00012624263763427734){
     s0+=21.0;
     s1+=91.0;
    } else {
     s0+=2.0;
     s1+=1392.0;
    }
   }
  }
 }
}
if(i19<1.0181578397750854){
 if(i16<1.009092092514038){
  if(i17<1.0065288543701172){
   if(i18<0.0017366211395710707){
    if(i58<0.0001797619479475543){
     s0+=76568.0;
     s1+=321.0;
    } else {
     s0+=14142.0;
     s1+=633.0;
    }
   } else {
    if(i28<0.0010979666840285063){
     s0+=2633.0;
     s1+=2436.0;
    } else {
     s0+=19598.0;
     s1+=2522.0;
    }
   }
  } else {
   if(i37<1.0079796314239502){
    if(i25<0.020263083279132843){
     s0+=719.0;
     s1+=77.0;
    } else {
     s0+=79.0;
     s1+=335.0;
    }
   } else {
    if(i10<0.9788536429405212){
     s0+=194.0;
     s1+=197.0;
    } else {
     s0+=41.0;
     s1+=795.0;
    }
   }
  }
 } else {
  if(i6<0.0036230331752449274){
   if(i32<0.0005198121070861816){
    if(i8<0.0006055831909179688){
     s0+=90.0;
    } else {
     s1+=376.0;
    }
   } else {
    if(i58<0.00024189436226151884){
     s0+=950.0;
     s1+=5.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i32<0.0014018714427947998){
    if(i25<0.006650199182331562){
     s0+=42.0;
     s1+=506.0;
    } else {
     s0+=11.0;
     s1+=2012.0;
    }
   } else {
    if(i58<0.0007159905508160591){
     s0+=81.0;
    } else {
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i3<1.9729137420654297e-05){
  if(i1<-6.186559039633721e-05){
   if(i6<0.005468333140015602){
    if(i4<2.0265579223632812e-05){
     s0+=65.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i49<0.0002703052887227386){
     s0+=3.0;
     s1+=450.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i4<7.569789886474609e-06){
    if(i58<-4.393891867948696e-05){
     s0+=286.0;
     s1+=8.0;
    } else {
     s0+=180.0;
     s1+=35.0;
    }
   } else {
    if(i8<0.0007084012031555176){
     s0+=101.0;
     s1+=134.0;
    } else {
     s0+=112.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i28<0.0017891030292958021){
   if(i38<0.09329140186309814){
    if(i36<1.1174830198287964){
     s0+=40.0;
     s1+=1090.0;
    } else {
     s0+=194.0;
    }
   } else {
    if(i23<1.1180615425109863){
     s1+=50.0;
    } else {
     s0+=341.0;
     s1+=13.0;
    }
   }
  } else {
   if(i11<0.10245606303215027){
    if(i10<1.0145928859710693){
     s0+=90.0;
     s1+=24.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i35<0.0049774362705647945){
     s0+=59.0;
     s1+=12039.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
}
if(i21<1.0171184539794922){
 if(i6<0.014046397060155869){
  if(i49<-1.1572301445994526e-05){
   if(i51<-5.84929330216255e-06){
    s0+=100.0;
   } else {
    if(i76<0.08208882808685303){
     s0+=14.0;
     s1+=1126.0;
    } else {
     s0+=30.0;
     s1+=118.0;
    }
   }
  } else {
   if(i18<0.001741496380418539){
    if(i34<0.0003370106569491327){
     s0+=19535.0;
     s1+=683.0;
    } else {
     s0+=72336.0;
     s1+=327.0;
    }
   } else {
    if(i0<-0.0003911256790161133){
     s0+=17541.0;
     s1+=665.0;
    } else {
     s0+=4520.0;
     s1+=4139.0;
    }
   }
  }
 } else {
  if(i43<1.0330928564071655){
   if(i4<5.614757537841797e-05){
    if(i73<-0.1860419511795044){
     s0+=11.0;
     s1+=24.0;
    } else {
     s0+=880.0;
     s1+=82.0;
    }
   } else {
    if(i15<1.0476155281066895){
     s0+=28.0;
     s1+=39.0;
    } else {
     s0+=7.0;
     s1+=119.0;
    }
   }
  } else {
   if(i14<0.015902429819107056){
    if(i26<-0.0006153881549835205){
     s0+=41.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   } else {
    if(i22<0.8994952440261841){
     s0+=48.0;
     s1+=76.0;
    } else {
     s0+=24.0;
     s1+=2653.0;
    }
   }
  }
 }
} else {
 if(i27<0.00256026117131114){
  if(i44<0.0008901080582290888){
   if(i46<-3.1668530482420465e-06){
    if(i12<0.0009929380612447858){
     s1+=1551.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=32.0;
   }
  } else {
   if(i49<6.275326995819341e-06){
    if(i6<0.0053464500233531){
     s0+=873.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=65.0;
    }
   } else {
    if(i2<1.0002245903015137){
     s0+=121.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i11<0.09711065888404846){
   if(i10<1.0143883228302002){
    if(i2<1.0069271326065063){
     s0+=195.0;
     s1+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=52.0;
   }
  } else {
   if(i16<0.9995843172073364){
    if(i6<0.005986952222883701){
     s0+=213.0;
     s1+=29.0;
    } else {
     s0+=1.0;
     s1+=782.0;
    }
   } else {
    if(i45<-0.000392282847315073){
     s0+=10.0;
     s1+=10326.0;
    } else {
     s0+=21.0;
     s1+=1182.0;
    }
   }
  }
 }
}
if(i13<1.0147477388381958){
 if(i8<0.0005384087562561035){
  if(i15<1.1403480768203735){
   if(i34<0.0010463498765602708){
    if(i7<1.0065486431121826){
     s0+=30896.0;
     s1+=2273.0;
    } else {
     s0+=157.0;
     s1+=459.0;
    }
   } else {
    if(i38<0.19942966103553772){
     s0+=77029.0;
     s1+=1044.0;
    } else {
     s0+=107.0;
     s1+=131.0;
    }
   }
  } else {
   if(i25<0.038527704775333405){
    if(i47<1.0009289979934692){
     s0+=733.0;
    } else {
     s0+=41.0;
     s1+=38.0;
    }
   } else {
    if(i79<-0.023283034563064575){
     s0+=15.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=494.0;
    }
   }
  }
 } else {
  if(i27<0.002491191029548645){
   if(i6<0.004065899644047022){
    if(i20<0.001242995262145996){
     s0+=3919.0;
     s1+=67.0;
    } else {
     s0+=526.0;
     s1+=379.0;
    }
   } else {
    if(i28<0.0012649490963667631){
     s0+=48.0;
     s1+=1050.0;
    } else {
     s0+=331.0;
     s1+=89.0;
    }
   }
  } else {
   if(i11<0.08321326971054077){
    if(i72<-0.0018732845783233643){
     s0+=340.0;
     s1+=533.0;
    } else {
     s0+=1038.0;
     s1+=67.0;
    }
   } else {
    if(i69<0.1460556536912918){
     s0+=381.0;
     s1+=1549.0;
    } else {
     s0+=85.0;
     s1+=2823.0;
    }
   }
  }
 }
} else {
 if(i8<0.0003167390823364258){
  if(i45<-0.0013374874833971262){
   s1+=98.0;
  } else {
   if(i55<1.0018184185028076){
    s0+=268.0;
   } else {
    if(i1<-4.8249581595882773e-05){
     s1+=41.0;
    } else {
     s0+=91.0;
    }
   }
  }
 } else {
  if(i1<-6.967694207560271e-05){
   if(i51<-6.519388534798054e-06){
    s0+=90.0;
   } else {
    if(i27<0.0022832737304270267){
     s0+=53.0;
     s1+=1070.0;
    } else {
     s0+=9.0;
     s1+=11218.0;
    }
   }
  } else {
   if(i23<1.1180615425109863){
    s1+=512.0;
   } else {
    if(i30<1.1793382167816162){
     s0+=324.0;
    } else {
     s0+=134.0;
     s1+=282.0;
    }
   }
  }
 }
}
if(i7<1.0135951042175293){
 if(i6<0.013984546065330505){
  if(i16<1.0065035820007324){
   if(i4<1.6391277313232422e-05){
    if(i42<0.9997670650482178){
     s0+=46638.0;
     s1+=120.0;
    } else {
     s0+=59307.0;
     s1+=3181.0;
    }
   } else {
    if(i25<0.009348244406282902){
     s0+=4218.0;
     s1+=124.0;
    } else {
     s0+=1517.0;
     s1+=1589.0;
    }
   }
  } else {
   if(i23<1.116804838180542){
    if(i23<1.0610902309417725){
     s0+=146.0;
    } else {
     s1+=949.0;
    }
   } else {
    if(i31<1.1824663877487183){
     s0+=2533.0;
     s1+=82.0;
    } else {
     s0+=62.0;
     s1+=531.0;
    }
   }
  }
 } else {
  if(i10<0.9707508683204651){
   if(i43<1.092198371887207){
    if(i27<0.014781889505684376){
     s0+=890.0;
     s1+=81.0;
    } else {
     s0+=73.0;
     s1+=97.0;
    }
   } else {
    if(i7<0.9954098463058472){
     s0+=1.0;
     s1+=117.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i9<0.93410325050354){
    if(i39<0.07911517471075058){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=72.0;
    }
   } else {
    if(i50<0.0008768129046075046){
     s0+=7.0;
    } else {
     s0+=31.0;
     s1+=2691.0;
    }
   }
  }
 }
} else {
 if(i18<0.001380822854116559){
  if(i0<0.0019794106483459473){
   if(i17<0.9989053010940552){
    if(i2<1.0025405883789062){
     s0+=163.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=395.0;
   }
  } else {
   s1+=467.0;
  }
 } else {
  if(i12<0.0008811840089038014){
   if(i20<-0.0015825629234313965){
    if(i18<0.004672525450587273){
     s0+=119.0;
     s1+=5.0;
    } else {
     s1+=158.0;
    }
   } else {
    if(i6<0.0026370997074991465){
     s0+=99.0;
     s1+=62.0;
    } else {
     s0+=51.0;
     s1+=13922.0;
    }
   }
  } else {
   s0+=310.0;
  }
 }
}
if(i1<-9.269449219573289e-05){
 if(i22<0.9067921042442322){
  if(i43<1.0460968017578125){
   if(i35<0.00298140081577003){
    if(i78<-0.13725322484970093){
     s1+=4.0;
    } else {
     s0+=497.0;
     s1+=5.0;
    }
   } else {
    if(i10<0.968133807182312){
     s0+=81.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  } else {
   if(i79<-0.023940086364746094){
    if(i2<0.9946461319923401){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i23<1.447718858718872){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i47<0.9981522560119629){
   s0+=211.0;
  } else {
   if(i13<0.9475792646408081){
    if(i11<0.05397862195968628){
     s0+=80.0;
    } else {
     s0+=4.0;
     s1+=57.0;
    }
   } else {
    if(i41<-0.0001819253811845556){
     s0+=51.0;
    } else {
     s0+=153.0;
     s1+=15620.0;
    }
   }
  }
 }
} else {
 if(i6<0.003754367819055915){
  if(i49<-1.2506667189882137e-05){
   if(i28<0.0008826600387692451){
    s1+=408.0;
   } else {
    s0+=98.0;
   }
  } else {
   if(i22<0.994968056678772){
    if(i68<0.04743678495287895){
     s0+=6234.0;
     s1+=379.0;
    } else {
     s0+=10799.0;
     s1+=240.0;
    }
   } else {
    if(i62<0.0010488040279597044){
     s0+=75086.0;
     s1+=556.0;
    } else {
     s0+=326.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i19<1.0075865983963013){
   if(i2<0.9987096786499023){
    if(i4<-8.165836334228516e-06){
     s0+=15864.0;
     s1+=98.0;
    } else {
     s0+=3599.0;
     s1+=473.0;
    }
   } else {
    if(i12<0.0003534067946020514){
     s0+=853.0;
     s1+=2450.0;
    } else {
     s0+=697.0;
     s1+=157.0;
    }
   }
  } else {
   if(i0<-3.975629806518555e-05){
    if(i38<0.15681862831115723){
     s0+=1358.0;
     s1+=97.0;
    } else {
     s0+=96.0;
     s1+=115.0;
    }
   } else {
    if(i27<0.0001997685176320374){
     s0+=87.0;
    } else {
     s0+=488.0;
     s1+=3325.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i8<0.0003293752670288086){
  if(i76<0.1875612437725067){
   if(i23<1.116391897201538){
    if(i6<0.0034626477863639593){
     s0+=24268.0;
     s1+=737.0;
    } else {
     s0+=2978.0;
     s1+=1528.0;
    }
   } else {
    if(i25<0.0901748463511467){
     s0+=77407.0;
     s1+=810.0;
    } else {
     s1+=79.0;
    }
   }
  } else {
   if(i1<-3.762528649531305e-05){
    if(i6<0.007439044304192066){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=178.0;
    }
   } else {
    if(i20<-0.0030295848846435547){
     s0+=17.0;
     s1+=12.0;
    } else {
     s0+=155.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i39<0.020691920071840286){
   if(i35<0.0007922876393422484){
    if(i9<1.0293338298797607){
     s0+=3877.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i29<0.00024515908444300294){
     s0+=2042.0;
    } else {
     s0+=1163.0;
     s1+=887.0;
    }
   }
  } else {
   if(i3<-7.152557373046875e-06){
    if(i14<0.14672917127609253){
     s0+=1528.0;
     s1+=198.0;
    } else {
     s0+=97.0;
     s1+=272.0;
    }
   } else {
    if(i6<0.0044145104475319386){
     s0+=353.0;
     s1+=124.0;
    } else {
     s0+=533.0;
     s1+=3108.0;
    }
   }
  }
 }
} else {
 if(i39<0.017277801409363747){
  if(i32<0.0007866919040679932){
   if(i12<0.00029682996682822704){
    if(i51<-1.4612063750973903e-05){
     s0+=9.0;
    } else {
     s0+=2.0;
     s1+=2305.0;
    }
   } else {
    if(i8<0.0014311671257019043){
     s0+=279.0;
     s1+=2.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i17<1.0122090578079224){
    if(i27<0.004794081673026085){
     s0+=1504.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=325.0;
   }
  }
 } else {
  if(i6<0.0023405796382576227){
   if(i8<0.0013739466667175293){
    s0+=108.0;
   } else {
    if(i12<0.0007810241659171879){
     s1+=130.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i35<0.00407667551189661){
    if(i57<0.00028603861574083567){
     s0+=112.0;
     s1+=13425.0;
    } else {
     s0+=37.0;
     s1+=134.0;
    }
   } else {
    s0+=23.0;
   }
  }
 }
}
if(i21<1.017034888267517){
 if(i3<7.18235969543457e-05){
  if(i24<0.2222854495048523){
   if(i1<-9.171530837193131e-05){
    if(i15<1.0719366073608398){
     s0+=628.0;
     s1+=85.0;
    } else {
     s0+=192.0;
     s1+=941.0;
    }
   } else {
    if(i25<0.006728487089276314){
     s0+=70386.0;
     s1+=647.0;
    } else {
     s0+=42194.0;
     s1+=4205.0;
    }
   }
  } else {
   if(i69<0.07545052468776703){
    if(i41<-1.84001874004025e-05){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=103.0;
     s1+=2.0;
    }
   } else {
    if(i45<9.005503670778126e-05){
     s0+=8.0;
     s1+=599.0;
    } else {
     s0+=18.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i51<-6.734685030096443e-06){
   s0+=536.0;
  } else {
   if(i3<0.00011819601058959961){
    if(i28<0.0018251425353810191){
     s0+=593.0;
     s1+=514.0;
    } else {
     s0+=68.0;
     s1+=738.0;
    }
   } else {
    if(i10<0.97527015209198){
     s0+=7.0;
     s1+=52.0;
    } else {
     s0+=7.0;
     s1+=2474.0;
    }
   }
  }
 }
} else {
 if(i1<-5.978898116154596e-05){
  if(i31<1.1413248777389526){
   if(i50<0.0010114919859915972){
    s1+=1057.0;
   } else {
    if(i25<0.014171546325087547){
     s0+=207.0;
    } else {
     s0+=24.0;
     s1+=196.0;
    }
   }
  } else {
   if(i6<0.0037693153135478497){
    if(i2<1.0097277164459229){
     s0+=52.0;
     s1+=38.0;
    } else {
     s1+=177.0;
    }
   } else {
    if(i24<0.10742583870887756){
     s0+=7.0;
     s1+=85.0;
    } else {
     s0+=2.0;
     s1+=11840.0;
    }
   }
  }
 } else {
  if(i12<0.0003423035959713161){
   if(i32<9.143352508544922e-05){
    if(i18<0.002587778028100729){
     s0+=468.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i6<0.0035103019326925278){
     s0+=231.0;
     s1+=67.0;
    } else {
     s0+=31.0;
     s1+=775.0;
    }
   }
  } else {
   if(i43<1.149839997291565){
    s0+=564.0;
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i8<0.0005705952644348145){
 if(i11<0.20479726791381836){
  if(i18<0.0016411409014835954){
   if(i41<-1.8676511899684556e-05){
    if(i8<6.437301635742188e-05){
     s0+=8.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i31<1.0682950019836426){
     s0+=27897.0;
     s1+=661.0;
    } else {
     s0+=59880.0;
     s1+=154.0;
    }
   }
  } else {
   if(i16<0.995570182800293){
    if(i23<1.1164028644561768){
     s0+=568.0;
     s1+=197.0;
    } else {
     s0+=15938.0;
     s1+=424.0;
    }
   } else {
    if(i5<0.9998100996017456){
     s0+=2923.0;
     s1+=105.0;
    } else {
     s0+=2247.0;
     s1+=2892.0;
    }
   }
  }
 } else {
  if(i27<0.002562624868005514){
   if(i41<-1.512800736236386e-05){
    if(i0<3.153085708618164e-05){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i62<0.0002974158269353211){
     s0+=197.0;
    } else {
     s0+=34.0;
     s1+=4.0;
    }
   }
  } else {
   if(i43<1.121600866317749){
    if(i68<0.10272793471813202){
     s0+=53.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=89.0;
    }
   } else {
    if(i69<0.05410926043987274){
     s0+=17.0;
     s1+=37.0;
    } else {
     s1+=568.0;
    }
   }
  }
 }
} else {
 if(i1<-7.128690049285069e-05){
  if(i47<0.9985206127166748){
   s0+=332.0;
  } else {
   if(i26<-0.0005303919315338135){
    if(i13<0.9645675420761108){
     s0+=370.0;
     s1+=117.0;
    } else {
     s0+=2.0;
     s1+=83.0;
    }
   } else {
    if(i15<1.1136808395385742){
     s0+=324.0;
     s1+=3118.0;
    } else {
     s0+=90.0;
     s1+=12965.0;
    }
   }
  }
 } else {
  if(i32<0.0005677640438079834){
   if(i40<1.0440731048583984){
    if(i5<1.0026607513427734){
     s0+=603.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i36<1.095010757446289){
     s1+=1431.0;
    } else {
     s0+=598.0;
     s1+=884.0;
    }
   }
  } else {
   if(i29<0.0024677342735230923){
    s0+=3426.0;
   } else {
    if(i14<0.09294509887695312){
     s0+=703.0;
     s1+=136.0;
    } else {
     s0+=182.0;
     s1+=505.0;
    }
   }
  }
 }
}
if(i1<-9.840834536589682e-05){
 if(i9<0.9396428465843201){
  if(i38<0.06595826148986816){
   if(i6<0.0216653011739254){
    if(i78<-0.11910691857337952){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=538.0;
     s1+=13.0;
    }
   } else {
    if(i50<0.011786993592977524){
     s0+=39.0;
     s1+=1.0;
    } else {
     s0+=44.0;
     s1+=52.0;
    }
   }
  } else {
   if(i59<0.008012793958187103){
    if(i26<-0.0008110404014587402){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=19.0;
    }
   } else {
    if(i11<0.07160347700119019){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=84.0;
    }
   }
  }
 } else {
  if(i12<0.0007054299348965287){
   if(i24<0.037725627422332764){
    if(i2<1.0044989585876465){
     s0+=59.0;
     s1+=22.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i53<5.942583084106445e-05){
     s0+=24.0;
     s1+=15006.0;
    } else {
     s0+=74.0;
    }
   }
  } else {
   s0+=205.0;
  }
 }
} else {
 if(i13<1.0098378658294678){
  if(i2<1.0078412294387817){
   if(i54<1.0322039127349854){
    if(i65<0.0036462186835706234){
     s0+=108112.0;
     s1+=3899.0;
    } else {
     s0+=3794.0;
     s1+=929.0;
    }
   } else {
    if(i39<0.08128093183040619){
     s0+=463.0;
     s1+=146.0;
    } else {
     s0+=184.0;
     s1+=303.0;
    }
   }
  } else {
   if(i0<0.001422286033630371){
    s0+=54.0;
   } else {
    if(i58<3.621918585849926e-05){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=427.0;
    }
   }
  }
 } else {
  if(i27<0.0009939076844602823){
   if(i50<0.00292017450556159){
    if(i2<1.00050950050354){
     s0+=14.0;
    } else {
     s1+=1958.0;
    }
   } else {
    s0+=71.0;
   }
  } else {
   if(i25<0.017384085804224014){
    if(i52<0.0689956471323967){
     s0+=2824.0;
     s1+=107.0;
    } else {
     s0+=72.0;
     s1+=93.0;
    }
   } else {
    if(i2<1.0010528564453125){
     s0+=162.0;
     s1+=3.0;
    } else {
     s0+=54.0;
     s1+=892.0;
    }
   }
  }
 }
}
if(i0<0.0009646415710449219){
 if(i14<0.20055162906646729){
  if(i1<-8.40069551486522e-05){
   if(i13<0.9485169649124146){
    if(i45<-0.000523547874763608){
     s0+=52.0;
     s1+=33.0;
    } else {
     s0+=763.0;
     s1+=65.0;
    }
   } else {
    if(i52<0.25254613161087036){
     s0+=319.0;
     s1+=593.0;
    } else {
     s0+=2.0;
     s1+=413.0;
    }
   }
  } else {
   if(i39<0.011823558248579502){
    if(i35<0.0006903536850586534){
     s0+=56684.0;
     s1+=181.0;
    } else {
     s0+=13013.0;
     s1+=728.0;
    }
   } else {
    if(i8<0.00016266107559204102){
     s0+=37724.0;
     s1+=1485.0;
    } else {
     s0+=5656.0;
     s1+=2721.0;
    }
   }
  }
 } else {
  if(i41<-9.238343409379013e-06){
   if(i27<0.0017933903727680445){
    s0+=31.0;
   } else {
    if(i6<0.006278231739997864){
     s0+=51.0;
     s1+=59.0;
    } else {
     s0+=5.0;
     s1+=1589.0;
    }
   }
  } else {
   if(i18<0.0027882694266736507){
    if(i60<1.1014058589935303){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=231.0;
    }
   } else {
    if(i8<-4.559755325317383e-05){
     s0+=6.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i23<1.1180615425109863){
   if(i3<7.206201553344727e-05){
    if(i30<1.0510683059692383){
     s0+=62.0;
    } else {
     s1+=188.0;
    }
   } else {
    s1+=2214.0;
   }
  } else {
   s0+=1895.0;
  }
 } else {
  if(i14<0.0347670316696167){
   if(i72<-0.00345417857170105){
    if(i32<0.0004323124885559082){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=89.0;
    }
   } else {
    if(i44<0.00232614204287529){
     s1+=1.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i1<-6.558902532560751e-05){
    if(i19<0.8364878296852112){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=13396.0;
    }
   } else {
    if(i23<1.629280686378479){
     s0+=2.0;
     s1+=430.0;
    } else {
     s0+=48.0;
    }
   }
  }
 }
}
if(i15<1.127976417541504){
 if(i0<0.0011848211288452148){
  if(i7<1.0135858058929443){
   if(i32<0.00010257959365844727){
    if(i29<0.0010033519938588142){
     s0+=26840.0;
     s1+=983.0;
    } else {
     s0+=53624.0;
     s1+=73.0;
    }
   } else {
    if(i29<0.0010500155622139573){
     s0+=5178.0;
     s1+=2521.0;
    } else {
     s0+=26219.0;
     s1+=1531.0;
    }
   }
  } else {
   if(i32<0.0005344748497009277){
    if(i55<0.9997634887695312){
     s0+=139.0;
    } else {
     s0+=70.0;
     s1+=694.0;
    }
   } else {
    if(i7<1.0249615907669067){
     s0+=387.0;
     s1+=34.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i53<2.1398067474365234e-05){
   if(i4<1.0371208190917969e-05){
    s0+=44.0;
   } else {
    if(i12<0.00041052699089050293){
     s0+=27.0;
     s1+=4556.0;
    } else {
     s0+=474.0;
     s1+=72.0;
    }
   }
  } else {
   if(i28<0.0030208351090550423){
    if(i57<-0.0001304519100813195){
     s1+=1.0;
    } else {
     s0+=675.0;
    }
   } else {
    s1+=118.0;
   }
  }
 }
} else {
 if(i5<1.0018539428710938){
  if(i57<9.379092080052942e-05){
   if(i6<0.0071253180503845215){
    if(i5<1.000969409942627){
     s0+=1287.0;
     s1+=4.0;
    } else {
     s0+=237.0;
     s1+=42.0;
    }
   } else {
    s1+=140.0;
   }
  } else {
   if(i1<-2.5642813852755353e-05){
    if(i21<0.9079654216766357){
     s0+=76.0;
     s1+=59.0;
    } else {
     s0+=2.0;
     s1+=436.0;
    }
   } else {
    if(i12<0.0001474142773076892){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=169.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i30<1.176405668258667){
   s0+=578.0;
  } else {
   if(i2<1.0016942024230957){
    if(i36<1.2320208549499512){
     s0+=181.0;
     s1+=77.0;
    } else {
     s0+=41.0;
     s1+=554.0;
    }
   } else {
    if(i43<0.971592903137207){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=77.0;
     s1+=12554.0;
    }
   }
  }
 }
}
if(i14<0.1866081953048706){
 if(i0<0.0009635686874389648){
  if(i22<1.0165547132492065){
   if(i5<1.0022215843200684){
    if(i58<0.0001833332935348153){
     s0+=81751.0;
     s1+=1706.0;
    } else {
     s0+=25177.0;
     s1+=1933.0;
    }
   } else {
    if(i25<0.020444035530090332){
     s0+=4860.0;
     s1+=604.0;
    } else {
     s0+=742.0;
     s1+=1133.0;
    }
   }
  } else {
   if(i23<1.1178560256958008){
    if(i35<0.0005487909074872732){
     s0+=27.0;
    } else {
     s1+=447.0;
    }
   } else {
    if(i47<1.0007388591766357){
     s0+=503.0;
     s1+=6.0;
    } else {
     s0+=550.0;
     s1+=397.0;
    }
   }
  }
 } else {
  if(i32<0.000841677188873291){
   if(i47<0.999790370464325){
    if(i23<1.3955512046813965){
     s0+=233.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=39.0;
    }
   } else {
    if(i32<0.0007584095001220703){
     s0+=156.0;
     s1+=4018.0;
    } else {
     s0+=213.0;
     s1+=422.0;
    }
   }
  } else {
   if(i28<0.0024332464672625065){
    if(i29<0.002990495413541794){
     s0+=1434.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i23<1.629280686378479){
     s0+=9.0;
     s1+=544.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i25<0.006872516591101885){
  if(i7<1.0165183544158936){
   if(i27<0.004927912726998329){
    if(i0<0.002050161361694336){
     s0+=420.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i28<0.004514788277447224){
     s0+=4.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i17<0.9985493421554565){
    s0+=3.0;
   } else {
    if(i6<0.0008214750560000539){
     s0+=1.0;
    } else {
     s1+=201.0;
    }
   }
  }
 } else {
  if(i3<-4.419684410095215e-05){
   if(i69<0.09277964383363724){
    if(i1<-6.577624299097806e-05){
     s1+=9.0;
    } else {
     s0+=217.0;
     s1+=6.0;
    }
   } else {
    if(i77<0.11826002597808838){
     s0+=17.0;
     s1+=192.0;
    } else {
     s0+=30.0;
     s1+=7.0;
    }
   }
  } else {
   if(i46<-2.9421803446894046e-06){
    if(i23<1.1789745092391968){
     s0+=18.0;
    } else {
     s0+=53.0;
     s1+=12667.0;
    }
   } else {
    if(i35<0.0008920367108657956){
     s0+=67.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i0<0.0009554028511047363){
 if(i8<0.00032788515090942383){
  if(i50<0.04222404584288597){
   if(i61<-0.00037914514541625977){
    if(i0<-0.0006882250308990479){
     s0+=15525.0;
     s1+=378.0;
    } else {
     s0+=8800.0;
     s1+=1313.0;
    }
   } else {
    if(i1<-8.317914034705609e-05){
     s0+=47.0;
     s1+=116.0;
    } else {
     s0+=80377.0;
     s1+=1403.0;
    }
   }
  } else {
   if(i8<-0.001233220100402832){
    s0+=19.0;
   } else {
    s1+=115.0;
   }
  }
 } else {
  if(i63<-0.0008070315816439688){
   if(i15<1.107893705368042){
    if(i36<1.1161795854568481){
     s0+=120.0;
     s1+=635.0;
    } else {
     s0+=1045.0;
     s1+=303.0;
    }
   } else {
    if(i31<1.1713470220565796){
     s0+=282.0;
     s1+=285.0;
    } else {
     s0+=89.0;
     s1+=1812.0;
    }
   }
  } else {
   if(i25<0.009084561839699745){
    if(i31<1.0773630142211914){
     s0+=2473.0;
     s1+=201.0;
    } else {
     s0+=4376.0;
     s1+=22.0;
    }
   } else {
    if(i29<0.0012105456553399563){
     s0+=28.0;
     s1+=639.0;
    } else {
     s0+=1255.0;
     s1+=713.0;
    }
   }
  }
 }
} else {
 if(i9<1.0199272632598877){
  if(i32<0.0011628568172454834){
   if(i0<0.0013907551765441895){
    if(i53<1.233816146850586e-05){
     s0+=327.0;
     s1+=908.0;
    } else {
     s0+=636.0;
     s1+=165.0;
    }
   } else {
    if(i12<0.000704609788954258){
     s0+=53.0;
     s1+=3457.0;
    } else {
     s0+=158.0;
    }
   }
  } else {
   if(i34<0.00562768429517746){
    s0+=1007.0;
   } else {
    s1+=164.0;
   }
  }
 } else {
  if(i12<0.0008249320089817047){
   if(i46<-7.73327483329922e-05){
    s0+=2.0;
   } else {
    if(i11<0.09631425142288208){
     s0+=3.0;
     s1+=188.0;
    } else {
     s0+=1.0;
     s1+=11404.0;
    }
   }
  } else {
   s0+=16.0;
  }
 }
}
if(i7<1.0136241912841797){
 if(i1<-8.728883403819054e-05){
  if(i24<0.045134395360946655){
   if(i10<0.9785257577896118){
    if(i70<0.05166984722018242){
     s0+=750.0;
     s1+=10.0;
    } else {
     s0+=42.0;
     s1+=56.0;
    }
   } else {
    if(i56<0.020798485726118088){
     s0+=54.0;
     s1+=27.0;
    } else {
     s0+=22.0;
     s1+=127.0;
    }
   }
  } else {
   if(i51<-6.118435976532055e-06){
    if(i5<1.0098085403442383){
     s0+=236.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i10<0.9658416509628296){
     s0+=51.0;
     s1+=49.0;
    } else {
     s0+=60.0;
     s1+=3272.0;
    }
   }
  }
 } else {
  if(i0<0.0012017488479614258){
   if(i8<0.00029212236404418945){
    if(i55<1.0003482103347778){
     s0+=56336.0;
     s1+=463.0;
    } else {
     s0+=46795.0;
     s1+=2186.0;
    }
   } else {
    if(i35<0.0007501741638407111){
     s0+=4912.0;
     s1+=77.0;
    } else {
     s0+=5654.0;
     s1+=2481.0;
    }
   }
  } else {
   if(i23<1.1180615425109863){
    s1+=501.0;
   } else {
    if(i12<0.000767808873206377){
     s0+=61.0;
     s1+=333.0;
    } else {
     s0+=624.0;
    }
   }
  }
 }
} else {
 if(i1<-6.779793329769745e-05){
  if(i53<-3.17990779876709e-05){
   s0+=40.0;
  } else {
   if(i12<0.0009374562650918961){
    if(i10<1.0132179260253906){
     s0+=71.0;
     s1+=1552.0;
    } else {
     s1+=11756.0;
    }
   } else {
    s0+=143.0;
   }
  }
 } else {
  if(i34<0.0011873844778165221){
   if(i41<-8.833521860651672e-06){
    if(i60<1.1003978252410889){
     s0+=1.0;
     s1+=629.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=38.0;
   }
  } else {
   if(i55<1.0037540197372437){
    if(i11<0.12377765774726868){
     s0+=300.0;
     s1+=55.0;
    } else {
     s0+=207.0;
     s1+=410.0;
    }
   } else {
    if(i14<0.2335107922554016){
     s0+=433.0;
     s1+=8.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
}
if(i0<0.000970005989074707){
 if(i15<1.1402318477630615){
  if(i35<0.0007093652384355664){
   if(i40<1.1354830265045166){
    if(i58<0.00015384990547318012){
     s0+=63854.0;
     s1+=132.0;
    } else {
     s0+=14178.0;
     s1+=274.0;
    }
   } else {
    if(i1<-3.1642281101085246e-05){
     s0+=183.0;
     s1+=153.0;
    } else {
     s0+=1573.0;
     s1+=36.0;
    }
   }
  } else {
   if(i30<1.1160998344421387){
    if(i12<0.0002528363838791847){
     s0+=999.0;
     s1+=3259.0;
    } else {
     s0+=3700.0;
     s1+=138.0;
    }
   } else {
    if(i3<-5.662441253662109e-06){
     s0+=26088.0;
     s1+=683.0;
    } else {
     s0+=2643.0;
     s1+=1339.0;
    }
   }
  }
 } else {
  if(i1<-3.790131813730113e-05){
   if(i11<0.0014938712120056152){
    if(i25<0.0716659426689148){
     s0+=68.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i46<-2.8828017093474045e-06){
     s0+=33.0;
     s1+=1842.0;
    } else {
     s0+=81.0;
    }
   }
  } else {
   if(i6<0.00823746807873249){
    if(i40<1.1413371562957764){
     s1+=9.0;
    } else {
     s0+=1003.0;
     s1+=11.0;
    }
   } else {
    if(i25<0.023662924766540527){
     s0+=17.0;
    } else {
     s0+=8.0;
     s1+=184.0;
    }
   }
  }
 }
} else {
 if(i6<0.003449389012530446){
  if(i34<0.0010129238944500685){
   if(i23<1.057311773300171){
    s0+=58.0;
   } else {
    s1+=504.0;
   }
  } else {
   if(i22<1.0268278121948242){
    if(i31<1.176171064376831){
     s0+=1411.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=64.0;
    }
   } else {
    if(i0<0.002430140972137451){
     s0+=10.0;
    } else {
     s1+=129.0;
    }
   }
  }
 } else {
  if(i2<1.0042203664779663){
   if(i24<0.2029004991054535){
    if(i25<0.0280015729367733){
     s0+=176.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=38.0;
    }
   } else {
    if(i51<-3.551285089997691e-06){
     s0+=5.0;
    } else {
     s1+=83.0;
    }
   }
  } else {
   if(i31<1.1401267051696777){
    if(i12<0.000252951547736302){
     s0+=4.0;
     s1+=1962.0;
    } else {
     s0+=249.0;
     s1+=22.0;
    }
   } else {
    if(i11<0.07099482417106628){
     s0+=41.0;
     s1+=219.0;
    } else {
     s0+=22.0;
     s1+=13320.0;
    }
   }
  }
 }
}
if(i0<0.000976264476776123){
 if(i1<-7.644675497431308e-05){
  if(i24<0.06075441837310791){
   if(i72<-0.007441103458404541){
    if(i2<0.9978790879249573){
     s0+=83.0;
     s1+=35.0;
    } else {
     s0+=39.0;
     s1+=126.0;
    }
   } else {
    if(i46<-2.0309467799961567e-05){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=1090.0;
     s1+=31.0;
    }
   }
  } else {
   if(i34<0.0024100840091705322){
    if(i23<1.1207046508789062){
     s0+=3.0;
     s1+=113.0;
    } else {
     s0+=182.0;
     s1+=4.0;
    }
   } else {
    if(i15<1.104401707649231){
     s0+=129.0;
     s1+=322.0;
    } else {
     s0+=30.0;
     s1+=1975.0;
    }
   }
  }
 } else {
  if(i22<1.0127885341644287){
   if(i32<7.086992263793945e-05){
    if(i38<0.2316230833530426){
     s0+=74636.0;
     s1+=719.0;
    } else {
     s0+=48.0;
     s1+=49.0;
    }
   } else {
    if(i31<1.0902695655822754){
     s0+=9305.0;
     s1+=2296.0;
    } else {
     s0+=26462.0;
     s1+=1281.0;
    }
   }
  } else {
   if(i28<0.0010319561697542667){
    if(i47<0.9997130632400513){
     s0+=43.0;
    } else {
     s0+=9.0;
     s1+=366.0;
    }
   } else {
    if(i31<1.0904107093811035){
     s0+=34.0;
     s1+=236.0;
    } else {
     s0+=2581.0;
     s1+=503.0;
    }
   }
  }
 }
} else {
 if(i1<-7.31216132408008e-05){
  if(i35<0.0038930517621338367){
   if(i25<0.0028127096593379974){
    if(i53<1.8805265426635742e-05){
     s0+=31.0;
     s1+=115.0;
    } else {
     s0+=85.0;
     s1+=1.0;
    }
   } else {
    if(i51<-6.25552502242499e-06){
     s0+=80.0;
     s1+=2.0;
    } else {
     s0+=119.0;
     s1+=14412.0;
    }
   }
  } else {
   if(i44<0.022167662158608437){
    s0+=131.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i23<1.1180615425109863){
   if(i23<1.057311773300171){
    s0+=52.0;
   } else {
    s1+=1092.0;
   }
  } else {
   if(i34<0.0019864325877279043){
    s0+=1362.0;
   } else {
    if(i47<1.0009291172027588){
     s0+=40.0;
     s1+=35.0;
    } else {
     s1+=545.0;
    }
   }
  }
 }
}
if(i6<0.008016876876354218){
 if(i13<1.0127766132354736){
  if(i49<-8.758093827054836e-06){
   if(i53<1.4960765838623047e-05){
    if(i35<0.001150775351561606){
     s0+=3.0;
     s1+=658.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i36<1.1700787544250488){
     s0+=112.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i34<0.0010285584721714258){
    if(i35<0.0007243289146572351){
     s0+=28440.0;
     s1+=354.0;
    } else {
     s0+=3879.0;
     s1+=2950.0;
    }
   } else {
    if(i68<0.16391611099243164){
     s0+=74258.0;
     s1+=733.0;
    } else {
     s0+=3380.0;
     s1+=428.0;
    }
   }
  }
 } else {
  if(i12<0.00031372858211398125){
   if(i0<0.00027364492416381836){
    if(i28<0.004595587961375713){
     s0+=201.0;
     s1+=39.0;
    } else {
     s0+=234.0;
    }
   } else {
    if(i0<0.0005738735198974609){
     s0+=51.0;
     s1+=124.0;
    } else {
     s0+=17.0;
     s1+=2635.0;
    }
   }
  } else {
   if(i11<0.2610895335674286){
    if(i79<-0.0043280720710754395){
     s1+=5.0;
    } else {
     s0+=1134.0;
     s1+=15.0;
    }
   } else {
    s1+=87.0;
   }
  }
 }
} else {
 if(i5<1.0018846988677979){
  if(i7<1.0072054862976074){
   if(i43<1.1080402135849){
    if(i29<0.0013511428842321038){
     s1+=95.0;
    } else {
     s0+=3295.0;
     s1+=154.0;
    }
   } else {
    if(i14<0.019183427095413208){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=331.0;
    }
   }
  } else {
   if(i71<6.1022528825560585e-06){
    if(i32<-0.000789344310760498){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=481.0;
    }
   } else {
    s0+=49.0;
   }
  }
 } else {
  if(i38<0.03311359882354736){
   if(i0<0.0005568861961364746){
    if(i73<-0.08763664960861206){
     s0+=69.0;
     s1+=103.0;
    } else {
     s0+=678.0;
     s1+=62.0;
    }
   } else {
    if(i2<1.004347801208496){
     s0+=82.0;
     s1+=56.0;
    } else {
     s0+=18.0;
     s1+=380.0;
    }
   }
  } else {
   if(i3<-1.811981201171875e-05){
    if(i43<1.0744807720184326){
     s0+=169.0;
     s1+=97.0;
    } else {
     s0+=29.0;
     s1+=200.0;
    }
   } else {
    if(i24<0.05531039834022522){
     s0+=38.0;
     s1+=86.0;
    } else {
     s0+=116.0;
     s1+=14479.0;
    }
   }
  }
 }
}
if(i10<1.0125961303710938){
 if(i4<1.8298625946044922e-05){
  if(i11<0.23277851939201355){
   if(i7<1.0135915279388428){
    if(i25<0.00677994079887867){
     s0+=67111.0;
     s1+=557.0;
    } else {
     s0+=40598.0;
     s1+=3243.0;
    }
   } else {
    if(i18<0.0022846097126603127){
     s0+=271.0;
     s1+=1.0;
    } else {
     s0+=65.0;
     s1+=226.0;
    }
   }
  } else {
   if(i36<1.6811659336090088){
    if(i46<-3.9434985410480294e-06){
     s0+=15.0;
     s1+=385.0;
    } else {
     s0+=62.0;
     s1+=7.0;
    }
   } else {
    s0+=29.0;
   }
  }
 } else {
  if(i18<0.0020083871204406023){
   if(i0<0.0015773177146911621){
    if(i39<0.03150207921862602){
     s0+=4109.0;
     s1+=71.0;
    } else {
     s0+=18.0;
     s1+=91.0;
    }
   } else {
    if(i71<3.0567682074433833e-07){
     s0+=55.0;
     s1+=300.0;
    } else {
     s0+=37.0;
     s1+=5.0;
    }
   }
  } else {
   if(i11<0.05203452706336975){
    if(i73<-0.017795264720916748){
     s0+=521.0;
     s1+=417.0;
    } else {
     s0+=1315.0;
     s1+=108.0;
    }
   } else {
    if(i47<0.9993876218795776){
     s0+=423.0;
     s1+=8.0;
    } else {
     s0+=1371.0;
     s1+=5880.0;
    }
   }
  }
 }
} else {
 if(i53<2.855062484741211e-05){
  if(i51<-5.957832399872132e-06){
   if(i17<1.0147873163223267){
    s0+=160.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i10<1.0134620666503906){
    if(i53<1.1354684829711914e-05){
     s0+=36.0;
     s1+=294.0;
    } else {
     s0+=105.0;
     s1+=63.0;
    }
   } else {
    if(i36<1.7041046619415283){
     s0+=18.0;
     s1+=12744.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i10<1.023686170578003){
   s0+=114.0;
  } else {
   s1+=13.0;
  }
 }
}
if(i10<1.0125606060028076){
 if(i43<1.1402318477630615){
  if(i8<0.00037401914596557617){
   if(i32<7.075071334838867e-05){
    if(i36<1.0905301570892334){
     s0+=22869.0;
     s1+=659.0;
    } else {
     s0+=52977.0;
     s1+=140.0;
    }
   } else {
    if(i36<1.0919182300567627){
     s0+=3987.0;
     s1+=1634.0;
    } else {
     s0+=25737.0;
     s1+=888.0;
    }
   }
  } else {
   if(i18<0.0019253240898251534){
    if(i16<1.0108482837677002){
     s0+=5190.0;
     s1+=191.0;
    } else {
     s0+=143.0;
     s1+=229.0;
    }
   } else {
    if(i35<0.0011930037289857864){
     s0+=552.0;
     s1+=2768.0;
    } else {
     s0+=3940.0;
     s1+=2036.0;
    }
   }
  }
 } else {
  if(i57<3.27336965710856e-05){
   if(i6<0.006058414466679096){
    s0+=500.0;
   } else {
    s1+=98.0;
   }
  } else {
   if(i18<0.0014724729117006063){
    s0+=137.0;
   } else {
    if(i36<1.2311429977416992){
     s0+=90.0;
     s1+=284.0;
    } else {
     s0+=9.0;
     s1+=2244.0;
    }
   }
  }
 }
} else {
 if(i23<1.1767785549163818){
  if(i6<0.002222193405032158){
   if(i50<0.0007084235548973083){
    s1+=119.0;
   } else {
    s0+=278.0;
   }
  } else {
   if(i46<-1.3926812243880704e-05){
    s0+=91.0;
   } else {
    if(i64<0.0013028967659920454){
     s0+=1.0;
     s1+=1345.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i6<0.0034195980988442898){
   if(i0<0.0017353296279907227){
    if(i16<1.0027744770050049){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=43.0;
    }
   } else {
    s1+=193.0;
   }
  } else {
   if(i46<-2.9558159440057352e-06){
    s1+=11470.0;
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i5<1.0026333332061768){
 if(i38<0.2063690721988678){
  if(i29<0.0010668563190847635){
   if(i21<1.0089313983917236){
    if(i30<1.0577976703643799){
     s0+=19047.0;
     s1+=6.0;
    } else {
     s0+=12485.0;
     s1+=2622.0;
    }
   } else {
    if(i32<4.1961669921875e-05){
     s0+=348.0;
    } else {
     s0+=99.0;
     s1+=1095.0;
    }
   }
  } else {
   if(i23<1.0905578136444092){
    s1+=153.0;
   } else {
    if(i62<0.0024411228951066732){
     s0+=75056.0;
     s1+=632.0;
    } else {
     s0+=3287.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i41<-8.016733772819862e-06){
   if(i50<0.0025011925026774406){
    if(i77<0.10939159989356995){
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i41<-9.185604540107306e-06){
     s0+=3.0;
     s1+=711.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   s0+=139.0;
  }
 }
} else {
 if(i30<1.1934996843338013){
  if(i49<-1.2573489584610797e-05){
   if(i23<1.1180615425109863){
    s1+=1217.0;
   } else {
    if(i23<1.1734975576400757){
     s0+=146.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i29<0.0012206090614199638){
    if(i31<1.058152437210083){
     s0+=781.0;
     s1+=48.0;
    } else {
     s1+=1017.0;
    }
   } else {
    if(i29<0.002544558607041836){
     s0+=3173.0;
     s1+=127.0;
    } else {
     s0+=79.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i11<0.08812037110328674){
   if(i72<-0.002498537302017212){
    if(i24<0.01859569549560547){
     s0+=237.0;
     s1+=145.0;
    } else {
     s0+=107.0;
     s1+=502.0;
    }
   } else {
    if(i8<0.002273261547088623){
     s0+=1086.0;
     s1+=80.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  } else {
   if(i26<-0.0002706944942474365){
    if(i56<0.056873053312301636){
     s0+=278.0;
     s1+=231.0;
    } else {
     s0+=64.0;
     s1+=715.0;
    }
   } else {
    if(i4<1.4007091522216797e-05){
     s0+=63.0;
     s1+=2.0;
    } else {
     s0+=53.0;
     s1+=14198.0;
    }
   }
  }
 }
}
if(i8<0.0005698800086975098){
 if(i8<0.0002925992012023926){
  if(i24<0.24935632944107056){
   if(i6<0.0028421697206795216){
    if(i21<0.9946480989456177){
     s0+=13175.0;
     s1+=356.0;
    } else {
     s0+=61685.0;
     s1+=213.0;
    }
   } else {
    if(i17<0.9981814622879028){
     s0+=24202.0;
     s1+=339.0;
    } else {
     s0+=4751.0;
     s1+=1929.0;
    }
   }
  } else {
   if(i46<-3.210508793927147e-06){
    if(i11<0.239048570394516){
     s0+=2.0;
    } else {
     s1+=277.0;
    }
   } else {
    if(i26<-0.0007750988006591797){
     s1+=1.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<0.004165904596447945){
   if(i1<-4.225717930239625e-05){
    if(i23<1.2379851341247559){
     s0+=106.0;
     s1+=104.0;
    } else {
     s0+=135.0;
    }
   } else {
    if(i58<0.00016578161739744246){
     s0+=4446.0;
     s1+=10.0;
    } else {
     s0+=266.0;
     s1+=27.0;
    }
   }
  } else {
   if(i57<9.271703311242163e-05){
    if(i31<1.0430597066879272){
     s0+=64.0;
    } else {
     s0+=57.0;
     s1+=1375.0;
    }
   } else {
    if(i56<0.1250540316104889){
     s0+=813.0;
     s1+=175.0;
    } else {
     s0+=47.0;
     s1+=242.0;
    }
   }
  }
 }
} else {
 if(i3<8.314847946166992e-05){
  if(i1<-4.687144246418029e-05){
   if(i12<0.000818870379589498){
    if(i43<1.0262932777404785){
     s0+=420.0;
     s1+=113.0;
    } else {
     s0+=538.0;
     s1+=3114.0;
    }
   } else {
    s0+=375.0;
   }
  } else {
   if(i32<0.0003584325313568115){
    if(i6<0.003319180803373456){
     s0+=124.0;
    } else {
     s0+=26.0;
     s1+=444.0;
    }
   } else {
    if(i52<0.045689746737480164){
     s0+=3499.0;
     s1+=124.0;
    } else {
     s0+=514.0;
     s1+=347.0;
    }
   }
  }
 } else {
  if(i6<0.002878728788346052){
   if(i35<0.0007513451855629683){
    if(i3<0.00036644935607910156){
     s0+=8.0;
     s1+=442.0;
    } else {
     s0+=27.0;
     s1+=7.0;
    }
   } else {
    if(i58<0.00022891440312378109){
     s0+=685.0;
     s1+=7.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i42<1.000837802886963){
    if(i27<0.008792947046458721){
     s0+=183.0;
    } else {
     s1+=213.0;
    }
   } else {
    if(i10<0.9795262217521667){
     s0+=54.0;
     s1+=90.0;
    } else {
     s0+=163.0;
     s1+=14457.0;
    }
   }
  }
 }
}
if(i17<1.004767894744873){
 if(i15<1.1543819904327393){
  if(i23<1.1162974834442139){
   if(i35<0.0007306009065359831){
    if(i56<0.13713137805461884){
     s0+=26822.0;
     s1+=363.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i27<0.0002296941529493779){
     s0+=2232.0;
     s1+=75.0;
    } else {
     s0+=1109.0;
     s1+=3643.0;
    }
   }
  } else {
   if(i7<1.0177719593048096){
    if(i4<1.806020736694336e-05){
     s0+=78389.0;
     s1+=922.0;
    } else {
     s0+=2837.0;
     s1+=711.0;
    }
   } else {
    if(i35<0.00028272345662117004){
     s0+=49.0;
    } else {
     s0+=72.0;
     s1+=415.0;
    }
   }
  }
 } else {
  if(i29<0.004045931622385979){
   if(i8<0.00024777650833129883){
    if(i1<-7.236265810206532e-05){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=529.0;
    }
   } else {
    if(i78<-0.04597651958465576){
     s0+=1.0;
    } else {
     s1+=214.0;
    }
   }
  } else {
   if(i6<0.006488248705863953){
    s0+=81.0;
   } else {
    if(i24<0.005468159914016724){
     s0+=50.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=1736.0;
    }
   }
  }
 }
} else {
 if(i28<0.0019228956662118435){
  if(i34<0.0011852048337459564){
   if(i44<0.00013982309610582888){
    if(i34<0.0002603779430501163){
     s0+=250.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i3<5.441904067993164e-05){
     s0+=76.0;
     s1+=22.0;
    } else {
     s0+=18.0;
     s1+=1777.0;
    }
   }
  } else {
   if(i31<1.0887261629104614){
    if(i6<0.003261954989284277){
     s0+=1.0;
    } else {
     s1+=166.0;
    }
   } else {
    if(i67<-1.7529664546600543e-05){
     s1+=15.0;
    } else {
     s0+=2949.0;
    }
   }
  }
 } else {
  if(i61<-0.007109999656677246){
   if(i8<0.001695096492767334){
    if(i24<0.08868235349655151){
     s0+=350.0;
     s1+=42.0;
    } else {
     s0+=14.0;
     s1+=59.0;
    }
   } else {
    if(i28<0.010612997226417065){
     s0+=4.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=134.0;
    }
   }
  } else {
   if(i2<1.0013349056243896){
    if(i18<0.00589926540851593){
     s0+=236.0;
     s1+=41.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i31<1.127323031425476){
     s0+=42.0;
     s1+=30.0;
    } else {
     s0+=233.0;
     s1+=13949.0;
    }
   }
  }
 }
}
if(i2<1.003735065460205){
 if(i39<0.1838829517364502){
  if(i18<0.0017414058092981577){
   if(i66<-0.0008374154567718506){
    if(i18<0.0012452347436919808){
     s0+=10470.0;
     s1+=169.0;
    } else {
     s0+=1760.0;
     s1+=364.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=75786.0;
     s1+=413.0;
    } else {
     s0+=1661.0;
     s1+=148.0;
    }
   }
  } else {
   if(i4<-1.1324882507324219e-06){
    if(i76<0.22678759694099426){
     s0+=14251.0;
     s1+=403.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i20<-0.0013405680656433105){
     s0+=5135.0;
     s1+=1170.0;
    } else {
     s0+=2518.0;
     s1+=3028.0;
    }
   }
  }
 } else {
  if(i43<1.0390443801879883){
   if(i24<0.06873998045921326){
    if(i48<0.757597804069519){
     s1+=1.0;
    } else {
     s0+=189.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i25<0.054248496890068054){
    if(i39<0.18574771285057068){
     s1+=3.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i35<0.004040990024805069){
     s1+=850.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i18<0.0018717220518738031){
  if(i20<0.0014272332191467285){
   if(i12<0.00016285906895063818){
    if(i36<1.0880210399627686){
     s0+=2.0;
     s1+=90.0;
    } else {
     s0+=27.0;
     s1+=10.0;
    }
   } else {
    if(i21<1.0321215391159058){
     s0+=2931.0;
     s1+=10.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i0<0.0018059611320495605){
    if(i12<0.0002910472103394568){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=185.0;
    }
   } else {
    if(i0<0.0018352270126342773){
     s0+=4.0;
     s1+=9.0;
    } else {
     s1+=1173.0;
    }
   }
  }
 } else {
  if(i40<1.1401267051696777){
   if(i6<0.0036181025207042694){
    if(i12<0.0002651534741744399){
     s1+=69.0;
    } else {
     s0+=756.0;
    }
   } else {
    if(i59<0.0007094786269590259){
     s0+=30.0;
     s1+=2408.0;
    } else {
     s0+=471.0;
     s1+=1545.0;
    }
   }
  } else {
   if(i60<0.9558601379394531){
    if(i5<1.0065135955810547){
     s0+=37.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=100.0;
    }
   } else {
    if(i57<0.000337573466822505){
     s0+=15.0;
     s1+=12506.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i7<1.0136051177978516){
 if(i18<0.0017863238463178277){
  if(i37<1.0072972774505615){
   if(i28<0.0005327253602445126){
    if(i4<4.273653030395508e-05){
     s0+=25669.0;
     s1+=844.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i1<-5.690795660484582e-05){
     s0+=489.0;
     s1+=80.0;
    } else {
     s0+=66717.0;
     s1+=166.0;
    }
   }
  } else {
   if(i20<0.0012838244438171387){
    if(i31<1.0824462175369263){
     s1+=2.0;
    } else {
     s0+=153.0;
    }
   } else {
    if(i61<0.00023162364959716797){
     s1+=195.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i43<1.1215933561325073){
   if(i10<0.9921845197677612){
    if(i49<1.520449404779356e-05){
     s0+=88.0;
     s1+=264.0;
    } else {
     s0+=14460.0;
     s1+=1069.0;
    }
   } else {
    if(i12<0.0002676630683708936){
     s0+=2246.0;
     s1+=3910.0;
    } else {
     s0+=5187.0;
     s1+=623.0;
    }
   }
  } else {
   if(i68<0.1132952943444252){
    if(i31<1.1804778575897217){
     s0+=211.0;
     s1+=9.0;
    } else {
     s0+=10.0;
     s1+=67.0;
    }
   } else {
    if(i40<1.1682028770446777){
     s0+=91.0;
     s1+=346.0;
    } else {
     s0+=4.0;
     s1+=2000.0;
    }
   }
  }
 }
} else {
 if(i41<-1.1300217920506839e-05){
  if(i51<-7.433814062096644e-06){
   s0+=212.0;
  } else {
   if(i1<-6.911897799000144e-05){
    if(i1<-8.853025792632252e-05){
     s0+=16.0;
     s1+=12583.0;
    } else {
     s0+=102.0;
     s1+=704.0;
    }
   } else {
    if(i32<0.0006608664989471436){
     s0+=92.0;
     s1+=1149.0;
    } else {
     s0+=564.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i49<1.784233609214425e-05){
   if(i67<-4.216105025989236e-06){
    s1+=4.0;
   } else {
    if(i75<-0.015196921303868294){
     s1+=1.0;
    } else {
     s0+=335.0;
     s1+=6.0;
    }
   }
  } else {
   s1+=7.0;
  }
 }
}
if(i1<-0.00010072861186927184){
 if(i9<0.9374322891235352){
  if(i11<0.02963411808013916){
   if(i13<0.9435010552406311){
    if(i70<0.05141763016581535){
     s0+=376.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=10.0;
    }
   } else {
    if(i65<0.028591640293598175){
     s0+=55.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  } else {
   if(i68<0.40306323766708374){
    if(i66<-0.0179176926612854){
     s0+=41.0;
     s1+=4.0;
    } else {
     s0+=20.0;
     s1+=32.0;
    }
   } else {
    if(i66<-0.02089381217956543){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i29<0.002462439239025116){
   if(i10<1.0143179893493652){
    if(i36<1.0958912372589111){
     s1+=1.0;
    } else {
     s0+=258.0;
    }
   } else {
    if(i30<1.1209434270858765){
     s1+=557.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i14<0.036341965198516846){
    if(i79<-0.004737913608551025){
     s0+=30.0;
     s1+=114.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   } else {
    if(i24<0.04052865505218506){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=14169.0;
    }
   }
  }
 }
} else {
 if(i4<1.9609928131103516e-05){
  if(i35<0.0007155060302466154){
   if(i34<0.00026637950213626027){
    if(i18<0.0009781484259292483){
     s0+=15959.0;
     s1+=89.0;
    } else {
     s0+=883.0;
     s1+=217.0;
    }
   } else {
    if(i50<0.001782156527042389){
     s0+=57881.0;
     s1+=30.0;
    } else {
     s0+=4649.0;
     s1+=101.0;
    }
   }
  } else {
   if(i2<0.9984375238418579){
    if(i30<1.0912797451019287){
     s0+=851.0;
     s1+=282.0;
    } else {
     s0+=22573.0;
     s1+=386.0;
    }
   } else {
    if(i12<0.00021261305664665997){
     s0+=1160.0;
     s1+=2415.0;
    } else {
     s0+=4821.0;
     s1+=660.0;
    }
   }
  }
 } else {
  if(i25<0.007714035455137491){
   if(i28<0.0009527869988232851){
    if(i0<0.0010187625885009766){
     s0+=1624.0;
     s1+=149.0;
    } else {
     s0+=22.0;
     s1+=1108.0;
    }
   } else {
    if(i45<-0.0006139082252047956){
     s0+=20.0;
     s1+=52.0;
    } else {
     s0+=3368.0;
     s1+=37.0;
    }
   }
  } else {
   if(i12<0.00036089407512918115){
    if(i3<4.112720489501953e-06){
     s0+=625.0;
     s1+=109.0;
    } else {
     s0+=341.0;
     s1+=3190.0;
    }
   } else {
    if(i40<1.190596342086792){
     s0+=953.0;
     s1+=141.0;
    } else {
     s0+=60.0;
     s1+=203.0;
    }
   }
  }
 }
}
if(i9<1.0146441459655762){
 if(i24<0.2082497477531433){
  if(i2<1.00359046459198){
   if(i18<0.0017322666244581342){
    if(i36<1.0776758193969727){
     s0+=22813.0;
     s1+=689.0;
    } else {
     s0+=66249.0;
     s1+=279.0;
    }
   } else {
    if(i16<0.9940661787986755){
     s0+=15626.0;
     s1+=656.0;
    } else {
     s0+=6176.0;
     s1+=3395.0;
    }
   }
  } else {
   if(i12<0.0004319875151850283){
    if(i46<-5.418389264377765e-06){
     s0+=679.0;
     s1+=3077.0;
    } else {
     s0+=473.0;
     s1+=3.0;
    }
   } else {
    if(i31<1.2296533584594727){
     s0+=2926.0;
     s1+=1.0;
    } else {
     s0+=60.0;
     s1+=237.0;
    }
   }
  }
 } else {
  if(i56<0.03882865235209465){
   if(i23<1.3924143314361572){
    if(i39<0.051523976027965546){
     s0+=330.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=25.0;
    }
   } else {
    if(i11<0.23629602789878845){
     s0+=20.0;
     s1+=5.0;
    } else {
     s1+=96.0;
    }
   }
  } else {
   if(i35<0.00043696060311049223){
    if(i20<0.0013571381568908691){
     s0+=43.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i14<0.20379024744033813){
     s0+=26.0;
     s1+=39.0;
    } else {
     s0+=15.0;
     s1+=1717.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007059713825583458){
  if(i0<0.00025922060012817383){
   if(i27<0.007025688886642456){
    if(i25<0.02430374175310135){
     s0+=338.0;
     s1+=7.0;
    } else {
     s0+=75.0;
     s1+=118.0;
    }
   } else {
    s1+=117.0;
   }
  } else {
   if(i31<1.7041046619415283){
    if(i4<0.000258028507232666){
     s0+=115.0;
     s1+=13851.0;
    } else {
     s0+=18.0;
    }
   } else {
    s0+=22.0;
   }
  }
 } else {
  s0+=518.0;
 }
}
if(i1<-9.840834536589682e-05){
 if(i9<0.9388452172279358){
  if(i24<0.045460134744644165){
   if(i25<0.05481436848640442){
    if(i31<1.2008939981460571){
     s1+=4.0;
    } else {
     s0+=460.0;
     s1+=5.0;
    }
   } else {
    if(i73<-0.15399682521820068){
     s0+=10.0;
     s1+=29.0;
    } else {
     s0+=74.0;
     s1+=13.0;
    }
   }
  } else {
   if(i39<0.08990560472011566){
    if(i3<0.00010877847671508789){
     s0+=33.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i66<-0.017160266637802124){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i35<0.004026470705866814){
   if(i41<-0.00018181240011472255){
    s0+=45.0;
   } else {
    if(i24<0.03480076789855957){
     s0+=59.0;
     s1+=101.0;
    } else {
     s0+=118.0;
     s1+=15221.0;
    }
   }
  } else {
   s0+=123.0;
  }
 }
} else {
 if(i0<0.0009622573852539062){
  if(i18<0.0017322530038654804){
   if(i18<0.0012839355040341616){
    if(i29<0.00034953508293256164){
     s0+=20323.0;
     s1+=276.0;
    } else {
     s0+=61212.0;
     s1+=142.0;
    }
   } else {
    if(i28<0.0005035737412981689){
     s0+=1599.0;
     s1+=470.0;
    } else {
     s0+=8528.0;
     s1+=144.0;
    }
   }
  } else {
   if(i23<1.1164028644561768){
    if(i12<0.0002702353522181511){
     s0+=673.0;
     s1+=3034.0;
    } else {
     s0+=1906.0;
     s1+=10.0;
    }
   } else {
    if(i3<-6.139278411865234e-06){
     s0+=18327.0;
     s1+=675.0;
    } else {
     s0+=1190.0;
     s1+=1335.0;
    }
   }
  }
 } else {
  if(i50<0.0009980060858651996){
   if(i28<0.00016847002552822232){
    s0+=72.0;
   } else {
    if(i36<1.1264252662658691){
     s0+=1.0;
     s1+=1621.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i11<0.1799493134021759){
    if(i23<1.1979892253875732){
     s0+=1620.0;
     s1+=58.0;
    } else {
     s0+=78.0;
     s1+=527.0;
    }
   } else {
    if(i30<1.176405668258667){
     s0+=54.0;
    } else {
     s1+=548.0;
    }
   }
  }
 }
}
if(i13<1.0139830112457275){
 if(i8<0.0005390048027038574){
  if(i39<0.01434912346303463){
   if(i66<-0.0013063549995422363){
    if(i23<1.1020536422729492){
     s0+=156.0;
     s1+=147.0;
    } else {
     s0+=1144.0;
     s1+=43.0;
    }
   } else {
    if(i18<0.0018621421186253428){
     s0+=69132.0;
     s1+=380.0;
    } else {
     s0+=3899.0;
     s1+=452.0;
    }
   }
  } else {
   if(i8<6.395578384399414e-05){
    if(i16<0.9942734241485596){
     s0+=23448.0;
     s1+=325.0;
    } else {
     s0+=6903.0;
     s1+=883.0;
    }
   } else {
    if(i28<0.0009453909005969763){
     s0+=39.0;
     s1+=777.0;
    } else {
     s0+=4307.0;
     s1+=1487.0;
    }
   }
  }
 } else {
  if(i29<0.0025997841730713844){
   if(i28<0.0010117655619978905){
    if(i36<1.0499491691589355){
     s0+=1566.0;
    } else {
     s0+=70.0;
     s1+=1331.0;
    }
   } else {
    if(i6<0.005638808943331242){
     s0+=2851.0;
     s1+=19.0;
    } else {
     s0+=141.0;
     s1+=205.0;
    }
   }
  } else {
   if(i24<0.1021040678024292){
    if(i72<-0.0010033845901489258){
     s0+=445.0;
     s1+=700.0;
    } else {
     s0+=930.0;
     s1+=86.0;
    }
   } else {
    if(i1<-6.543051858898252e-05){
     s0+=47.0;
     s1+=3290.0;
    } else {
     s0+=216.0;
     s1+=606.0;
    }
   }
  }
 }
} else {
 if(i1<-6.847787881270051e-05){
  if(i13<1.017385482788086){
   if(i46<-2.1997615476720966e-05){
    if(i30<1.210145354270935){
     s0+=72.0;
    } else {
     s1+=61.0;
    }
   } else {
    if(i39<0.013900998048484325){
     s0+=53.0;
     s1+=130.0;
    } else {
     s0+=19.0;
     s1+=482.0;
    }
   }
  } else {
   if(i53<-3.0487775802612305e-05){
    s0+=12.0;
   } else {
    if(i67<1.8267592167831026e-05){
     s0+=34.0;
     s1+=12165.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i31<1.0965585708618164){
   s1+=545.0;
  } else {
   if(i39<0.03584359586238861){
    if(i18<0.0032317056320607662){
     s0+=761.0;
     s1+=7.0;
    } else {
     s0+=44.0;
     s1+=93.0;
    }
   } else {
    if(i4<1.5914440155029297e-05){
     s0+=133.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=202.0;
    }
   }
  }
 }
}
if(i17<1.0047690868377686){
 if(i56<0.13426905870437622){
  if(i7<1.0145659446716309){
   if(i10<1.0058153867721558){
    if(i42<0.999876856803894){
     s0+=50669.0;
     s1+=287.0;
    } else {
     s0+=58340.0;
     s1+=4076.0;
    }
   } else {
    if(i25<0.01022679079324007){
     s0+=1891.0;
     s1+=292.0;
    } else {
     s0+=129.0;
     s1+=501.0;
    }
   }
  } else {
   if(i1<-3.2999771065078676e-05){
    if(i6<0.004996201489120722){
     s0+=155.0;
     s1+=73.0;
    } else {
     s0+=37.0;
     s1+=1583.0;
    }
   } else {
    if(i6<0.006323104724287987){
     s0+=218.0;
     s1+=11.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i43<1.0732090473175049){
   if(i22<0.9839959740638733){
    if(i11<0.17046108841896057){
     s0+=580.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i30<1.1532433032989502){
    if(i23<1.106844425201416){
     s1+=13.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i40<1.6811659336090088){
     s0+=19.0;
     s1+=1288.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
} else {
 if(i3<9.161233901977539e-05){
  if(i6<0.004316581413149834){
   if(i12<0.00020838566706515849){
    if(i23<1.1035807132720947){
     s1+=115.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i28<0.0019234243081882596){
     s0+=2480.0;
    } else {
     s0+=97.0;
     s1+=17.0;
    }
   }
  } else {
   if(i13<0.9628683924674988){
    if(i39<0.14498309791088104){
     s0+=393.0;
     s1+=76.0;
    } else {
     s0+=71.0;
     s1+=140.0;
    }
   } else {
    if(i45<-0.0002871978795155883){
     s0+=28.0;
     s1+=1539.0;
    } else {
     s0+=277.0;
     s1+=599.0;
    }
   }
  }
 } else {
  if(i53<2.759695053100586e-05){
   if(i12<0.0007059713825583458){
    if(i51<-5.965858690615278e-06){
     s0+=10.0;
    } else {
     s0+=68.0;
     s1+=13807.0;
    }
   } else {
    s0+=386.0;
   }
  } else {
   if(i8<0.002652287483215332){
    s0+=376.0;
   } else {
    s1+=46.0;
   }
  }
 }
}
if(i10<1.0124289989471436){
 if(i25<0.05586782097816467){
  if(i2<1.0030834674835205){
   if(i18<0.0016409700037911534){
    if(i18<0.0011511315824463964){
     s0+=74827.0;
     s1+=271.0;
    } else {
     s0+=11468.0;
     s1+=522.0;
    }
   } else {
    if(i28<0.0010955430334433913){
     s0+=2799.0;
     s1+=1909.0;
    } else {
     s0+=20688.0;
     s1+=1954.0;
    }
   }
  } else {
   if(i30<1.1731728315353394){
    if(i34<0.0011223487090319395){
     s0+=1155.0;
     s1+=1441.0;
    } else {
     s0+=4075.0;
     s1+=57.0;
    }
   } else {
    if(i11<0.07181668281555176){
     s0+=251.0;
     s1+=182.0;
    } else {
     s0+=172.0;
     s1+=1740.0;
    }
   }
  }
 } else {
  if(i49<6.573013524757698e-05){
   if(i21<0.8955408930778503){
    if(i17<1.0179883241653442){
     s0+=102.0;
     s1+=97.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i6<0.006977733224630356){
     s0+=11.0;
    } else {
     s0+=14.0;
     s1+=2725.0;
    }
   }
  } else {
   if(i40<1.117591142654419){
    s0+=613.0;
   } else {
    if(i18<0.005425500683486462){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   }
  }
 }
} else {
 if(i6<0.002744480036199093){
  if(i20<0.0019290447235107422){
   if(i36<1.0900044441223145){
    s1+=76.0;
   } else {
    if(i33<1.038117527961731){
     s0+=384.0;
    } else {
     s0+=10.0;
     s1+=7.0;
    }
   }
  } else {
   s1+=163.0;
  }
 } else {
  if(i51<-7.407903922285186e-06){
   s0+=69.0;
  } else {
   if(i3<2.110004425048828e-05){
    if(i46<-3.2030079637479503e-06){
     s0+=2.0;
     s1+=58.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i21<1.0152018070220947){
     s0+=9.0;
     s1+=1229.0;
    } else {
     s1+=11617.0;
    }
   }
  }
 }
}
if(i13<1.0149835348129272){
 if(i11<0.19998326897621155){
  if(i5<1.002572774887085){
   if(i35<0.0007162693655118346){
    if(i31<1.1354830265045166){
     s0+=73033.0;
     s1+=306.0;
    } else {
     s0+=5945.0;
     s1+=157.0;
    }
   } else {
    if(i29<0.0010359818115830421){
     s0+=3316.0;
     s1+=2966.0;
    } else {
     s0+=27361.0;
     s1+=841.0;
    }
   }
  } else {
   if(i12<0.00035300786839798093){
    if(i3<3.427267074584961e-05){
     s0+=1339.0;
     s1+=463.0;
    } else {
     s0+=372.0;
     s1+=2610.0;
    }
   } else {
    if(i62<0.0012576652225106955){
     s0+=3321.0;
     s1+=57.0;
    } else {
     s0+=565.0;
     s1+=729.0;
    }
   }
  }
 } else {
  if(i50<0.002078925259411335){
   if(i1<-6.629372364841402e-05){
    if(i36<1.1447370052337646){
     s0+=7.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i76<0.1374184787273407){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=316.0;
     s1+=2.0;
    }
   }
  } else {
   if(i73<0.4462018609046936){
    if(i27<0.0025605149567127228){
     s0+=58.0;
     s1+=6.0;
    } else {
     s0+=102.0;
     s1+=2912.0;
    }
   } else {
    if(i65<-0.011744514107704163){
     s0+=22.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i3<1.996755599975586e-05){
  if(i27<0.0062179286032915115){
   if(i12<0.0001887103426270187){
    if(i36<1.1050615310668945){
     s1+=2.0;
    } else {
     s0+=259.0;
     s1+=5.0;
    }
   } else {
    if(i4<1.2636184692382812e-05){
     s0+=116.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   }
  } else {
   if(i41<-2.8066242521163076e-05){
    s1+=75.0;
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i9<1.0199227333068848){
   if(i23<1.1180615425109863){
    s1+=717.0;
   } else {
    if(i23<1.1843671798706055){
     s0+=356.0;
    } else {
     s0+=52.0;
     s1+=534.0;
    }
   }
  } else {
   if(i25<0.0016879098257049918){
    if(i12<0.0002908665337599814){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i46<-3.6658764202002203e-06){
     s0+=37.0;
     s1+=11746.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i21<1.017747402191162){
 if(i3<6.324052810668945e-05){
  if(i38<0.2062024176120758){
   if(i18<0.0017296173609793186){
    if(i18<0.0011104410514235497){
     s0+=76032.0;
     s1+=222.0;
    } else {
     s0+=14616.0;
     s1+=697.0;
    }
   } else {
    if(i23<1.1164028644561768){
     s0+=2552.0;
     s1+=2653.0;
    } else {
     s0+=20059.0;
     s1+=2066.0;
    }
   }
  } else {
   if(i41<-1.1887678738276009e-05){
    if(i28<0.002120974939316511){
     s0+=8.0;
    } else {
     s0+=7.0;
     s1+=442.0;
    }
   } else {
    if(i80<0.13438868522644043){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=73.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i52<0.04107419028878212){
   if(i15<1.0773653984069824){
    if(i47<0.9997437596321106){
     s0+=89.0;
    } else {
     s0+=124.0;
     s1+=1156.0;
    }
   } else {
    if(i34<0.0021232054568827152){
     s0+=1382.0;
     s1+=34.0;
    } else {
     s0+=9.0;
     s1+=316.0;
    }
   }
  } else {
   if(i14<0.12079373002052307){
    if(i0<0.0017193853855133057){
     s0+=139.0;
     s1+=249.0;
    } else {
     s0+=16.0;
     s1+=592.0;
    }
   } else {
    if(i29<0.0023387973196804523){
     s0+=11.0;
    } else {
     s0+=2.0;
     s1+=1785.0;
    }
   }
  }
 }
} else {
 if(i2<1.001683235168457){
  if(i25<0.027979422360658646){
   if(i10<0.992114782333374){
    if(i16<0.993277370929718){
     s1+=25.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i43<1.0542371273040771){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=542.0;
     s1+=12.0;
    }
   }
  } else {
   if(i46<-2.3116399461287074e-06){
    if(i40<1.1695423126220703){
     s0+=87.0;
     s1+=111.0;
    } else {
     s1+=196.0;
    }
   } else {
    s0+=60.0;
   }
  }
 } else {
  if(i6<0.0027815597131848335){
   if(i17<1.0115296840667725){
    if(i50<0.0009261116501875222){
     s1+=43.0;
    } else {
     s0+=490.0;
     s1+=22.0;
    }
   } else {
    s1+=156.0;
   }
  } else {
   if(i40<1.1401267051696777){
    if(i20<-0.001569509506225586){
     s0+=61.0;
     s1+=12.0;
    } else {
     s0+=83.0;
     s1+=2510.0;
    }
   } else {
    if(i36<1.7041046619415283){
     s0+=2.0;
     s1+=11074.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
}
if(i0<0.0009757876396179199){
 if(i8<0.00032824277877807617){
  if(i24<0.23566213250160217){
   if(i56<0.020527878776192665){
    if(i34<0.0008043374982662499){
     s0+=25760.0;
     s1+=1374.0;
    } else {
     s0+=53617.0;
     s1+=126.0;
    }
   } else {
    if(i18<0.0016930559650063515){
     s0+=15531.0;
     s1+=150.0;
    } else {
     s0+=10032.0;
     s1+=1395.0;
    }
   }
  } else {
   if(i40<1.6501121520996094){
    if(i39<0.05727744102478027){
     s0+=54.0;
     s1+=8.0;
    } else {
     s0+=25.0;
     s1+=282.0;
    }
   } else {
    s0+=32.0;
   }
  }
 } else {
  if(i25<0.00967711303383112){
   if(i6<0.003999445587396622){
    if(i21<1.0332180261611938){
     s0+=6574.0;
     s1+=48.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i28<0.0008265937794931233){
     s0+=91.0;
     s1+=318.0;
    } else {
     s0+=555.0;
     s1+=47.0;
    }
   }
  } else {
   if(i14<0.04099264740943909){
    if(i23<1.2379851341247559){
     s0+=78.0;
     s1+=230.0;
    } else {
     s0+=989.0;
     s1+=147.0;
    }
   } else {
    if(i16<0.9989563822746277){
     s0+=949.0;
     s1+=1254.0;
    } else {
     s0+=328.0;
     s1+=2612.0;
    }
   }
  }
 }
} else {
 if(i30<1.176405668258667){
  if(i44<0.0008961473358795047){
   if(i36<1.0494179725646973){
    s0+=60.0;
   } else {
    if(i12<0.0006351683405227959){
     s1+=2266.0;
    } else {
     s0+=42.0;
    }
   }
  } else {
   if(i49<-1.4396333426702768e-05){
    if(i27<0.0010612825863063335){
     s1+=76.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i50<0.0009015838149935007){
     s1+=26.0;
    } else {
     s0+=1828.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i15<1.07395601272583){
   if(i26<-0.00025707483291625977){
    if(i32<0.0008493661880493164){
     s0+=64.0;
     s1+=14.0;
    } else {
     s1+=53.0;
    }
   } else {
    s1+=178.0;
   }
  } else {
   if(i24<0.0032147467136383057){
    if(i45<-0.0001729621726553887){
     s0+=4.0;
     s1+=26.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i6<0.0043674372136592865){
     s0+=18.0;
     s1+=308.0;
    } else {
     s0+=12.0;
     s1+=13181.0;
    }
   }
  }
 }
}
if(i5<1.0026252269744873){
 if(i9<1.0115559101104736){
  if(i18<0.0016772473463788629){
   if(i36<1.0776758193969727){
    if(i35<0.0006275124032981694){
     s0+=20313.0;
     s1+=125.0;
    } else {
     s0+=2068.0;
     s1+=511.0;
    }
   } else {
    if(i23<1.1980679035186768){
     s0+=51497.0;
     s1+=29.0;
    } else {
     s0+=14303.0;
     s1+=158.0;
    }
   }
  } else {
   if(i23<1.1164028644561768){
    if(i7<1.0000141859054565){
     s0+=377.0;
     s1+=1075.0;
    } else {
     s0+=2344.0;
     s1+=1375.0;
    }
   } else {
    if(i6<0.01822950690984726){
     s0+=18662.0;
     s1+=789.0;
    } else {
     s0+=144.0;
     s1+=369.0;
    }
   }
  }
 } else {
  if(i30<1.1174830198287964){
   if(i55<0.998306155204773){
    s0+=30.0;
   } else {
    if(i76<0.11734923720359802){
     s1+=690.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i25<0.02762162685394287){
    if(i6<0.00842507928609848){
     s0+=674.0;
     s1+=50.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i18<0.0015859566628932953){
     s0+=35.0;
    } else {
     s1+=430.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012560486793518066){
  if(i45<-0.0002727305982261896){
   if(i3<2.682209014892578e-06){
    if(i1<-4.9686463171383366e-05){
     s0+=82.0;
     s1+=333.0;
    } else {
     s0+=432.0;
     s1+=34.0;
    }
   } else {
    if(i35<0.0007085310062393546){
     s0+=145.0;
     s1+=66.0;
    } else {
     s0+=240.0;
     s1+=2293.0;
    }
   }
  } else {
   if(i42<1.0024755001068115){
    if(i40<1.0452228784561157){
     s0+=393.0;
     s1+=27.0;
    } else {
     s0+=359.0;
     s1+=593.0;
    }
   } else {
    if(i39<0.04056786000728607){
     s0+=2824.0;
     s1+=20.0;
    } else {
     s0+=745.0;
     s1+=415.0;
    }
   }
  }
 } else {
  if(i12<0.0007051959983073175){
   if(i4<0.00025844573974609375){
    if(i11<0.02196362614631653){
     s0+=40.0;
     s1+=87.0;
    } else {
     s0+=67.0;
     s1+=14761.0;
    }
   } else {
    s0+=20.0;
   }
  } else {
   s0+=820.0;
  }
 }
}
if(i2<1.003865361213684){
 if(i11<0.20898586511611938){
  if(i7<1.0144805908203125){
   if(i18<0.0016411409014835954){
    if(i50<0.0004761512973345816){
     s0+=29398.0;
     s1+=631.0;
    } else {
     s0+=58197.0;
     s1+=210.0;
    }
   } else {
    if(i15<1.12998628616333){
     s0+=23302.0;
     s1+=3461.0;
    } else {
     s0+=450.0;
     s1+=756.0;
    }
   }
  } else {
   if(i29<0.0012190204579383135){
    if(i55<0.9996196031570435){
     s0+=57.0;
    } else {
     s0+=3.0;
     s1+=242.0;
    }
   } else {
    if(i39<0.03776497766375542){
     s0+=221.0;
     s1+=24.0;
    } else {
     s0+=140.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i52<0.0446188747882843){
   if(i35<0.0022089495323598385){
    if(i73<0.02028954029083252){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=159.0;
     s1+=11.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i29<0.002609620336443186){
    if(i68<0.09057004749774933){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.7041046619415283){
     s0+=61.0;
     s1+=1094.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007027651881799102){
  if(i31<1.1703872680664062){
   if(i59<0.0007014743750914931){
    if(i42<1.0027269124984741){
     s0+=16.0;
     s1+=2502.0;
    } else {
     s0+=271.0;
     s1+=229.0;
    }
   } else {
    if(i6<0.004608839750289917){
     s0+=1289.0;
     s1+=94.0;
    } else {
     s0+=46.0;
     s1+=853.0;
    }
   }
  } else {
   if(i15<1.0742030143737793){
    if(i17<1.0137338638305664){
     s0+=66.0;
     s1+=72.0;
    } else {
     s0+=3.0;
     s1+=192.0;
    }
   } else {
    if(i7<0.8724563121795654){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=55.0;
     s1+=13926.0;
    }
   }
  }
 } else {
  if(i34<0.014521022327244282){
   s0+=2576.0;
  } else {
   s1+=8.0;
  }
 }
}
if(i2<1.0038644075393677){
 if(i44<0.010542206466197968){
  if(i18<0.001728216651827097){
   if(i13<0.9967241287231445){
    if(i31<1.0742530822753906){
     s0+=5727.0;
     s1+=531.0;
    } else {
     s0+=14542.0;
     s1+=72.0;
    }
   } else {
    if(i58<0.00025981097132898867){
     s0+=68836.0;
     s1+=338.0;
    } else {
     s0+=345.0;
     s1+=71.0;
    }
   }
  } else {
   if(i0<-0.00042957067489624023){
    if(i47<1.0026344060897827){
     s0+=17469.0;
     s1+=624.0;
    } else {
     s0+=68.0;
     s1+=94.0;
    }
   } else {
    if(i42<1.0000780820846558){
     s0+=2125.0;
     s1+=80.0;
    } else {
     s0+=1871.0;
     s1+=3512.0;
    }
   }
  }
 } else {
  if(i15<1.1087533235549927){
   if(i37<1.0259943008422852){
    if(i35<0.0032433844171464443){
     s0+=963.0;
     s1+=15.0;
    } else {
     s1+=12.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i15<1.5863761901855469){
    if(i38<0.005414396524429321){
     s0+=117.0;
     s1+=73.0;
    } else {
     s0+=79.0;
     s1+=1183.0;
    }
   } else {
    if(i56<0.3625035881996155){
     s0+=194.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i31<1.1703872680664062){
  if(i27<0.0009706164710223675){
   if(i28<0.0001809722452890128){
    s0+=627.0;
   } else {
    s1+=2761.0;
   }
  } else {
   if(i50<0.002035222016274929){
    if(i25<0.01455150917172432){
     s0+=3380.0;
     s1+=73.0;
    } else {
     s0+=7.0;
     s1+=198.0;
    }
   } else {
    if(i34<0.0018892681691795588){
     s0+=19.0;
    } else {
     s0+=49.0;
     s1+=606.0;
    }
   }
  }
 } else {
  if(i24<0.11124241352081299){
   if(i19<1.0128893852233887){
    if(i57<0.0002860172535292804){
     s0+=22.0;
     s1+=576.0;
    } else {
     s0+=24.0;
     s1+=53.0;
    }
   } else {
    if(i47<1.0010745525360107){
     s0+=51.0;
     s1+=6.0;
    } else {
     s1+=130.0;
    }
   }
  } else {
   if(i13<0.9151890873908997){
    s0+=3.0;
   } else {
    if(i15<1.07395601272583){
     s0+=5.0;
     s1+=125.0;
    } else {
     s0+=9.0;
     s1+=13173.0;
    }
   }
  }
 }
}
if(i21<1.01725172996521){
 if(i18<0.0017987454775720835){
  if(i57<-2.305530506419018e-05){
   if(i58<-1.7127495084423572e-06){
    if(i29<0.000792035658378154){
     s1+=16.0;
    } else {
     s0+=67.0;
    }
   } else {
    if(i51<-2.4811632101773284e-05){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=376.0;
    }
   }
  } else {
   if(i35<0.0006243123207241297){
    if(i27<0.0019596852362155914){
     s0+=70545.0;
     s1+=139.0;
    } else {
     s0+=4125.0;
     s1+=110.0;
    }
   } else {
    if(i36<1.0845178365707397){
     s0+=2870.0;
     s1+=755.0;
    } else {
     s0+=15046.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i14<0.17479443550109863){
   if(i20<-0.0014190375804901123){
    if(i70<0.01881561055779457){
     s0+=15345.0;
     s1+=640.0;
    } else {
     s0+=650.0;
     s1+=733.0;
    }
   } else {
    if(i37<1.0000038146972656){
     s0+=3117.0;
     s1+=269.0;
    } else {
     s0+=2766.0;
     s1+=4797.0;
    }
   }
  } else {
   if(i41<-1.5016771612863522e-05){
    if(i1<-6.042719178367406e-05){
     s0+=11.0;
     s1+=1976.0;
    } else {
     s0+=108.0;
     s1+=212.0;
    }
   } else {
    if(i68<0.2494938224554062){
     s0+=220.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i46<-3.74124988411495e-06){
  if(i10<1.0144541263580322){
   if(i31<1.1757044792175293){
    if(i27<0.001064016716554761){
     s1+=765.0;
    } else {
     s0+=876.0;
     s1+=311.0;
    }
   } else {
    if(i30<1.4731788635253906){
     s0+=22.0;
     s1+=1556.0;
    } else {
     s0+=79.0;
     s1+=198.0;
    }
   }
  } else {
   if(i31<1.1133074760437012){
    if(i5<1.006253957748413){
     s1+=690.0;
    } else {
     s0+=59.0;
    }
   } else {
    s1+=10673.0;
   }
  }
 } else {
  if(i67<4.548471679299837e-06){
   s0+=457.0;
  } else {
   if(i41<-6.205870704434346e-06){
    s1+=21.0;
   } else {
    s0+=26.0;
   }
  }
 }
}
if(i13<1.014914870262146){
 if(i39<0.16861964762210846){
  if(i11<0.19998762011528015){
   if(i32<0.00010949373245239258){
    if(i30<1.0905578136444092){
     s0+=22045.0;
     s1+=1098.0;
    } else {
     s0+=60623.0;
     s1+=165.0;
    }
   } else {
    if(i9<1.0080182552337646){
     s0+=28761.0;
     s1+=4310.0;
    } else {
     s0+=3283.0;
     s1+=1989.0;
    }
   }
  } else {
   if(i18<0.0024283723905682564){
    if(i76<0.14302483201026917){
     s0+=19.0;
     s1+=39.0;
    } else {
     s0+=395.0;
     s1+=26.0;
    }
   } else {
    if(i39<0.06974701583385468){
     s0+=52.0;
     s1+=226.0;
    } else {
     s0+=28.0;
     s1+=964.0;
    }
   }
  }
 } else {
  if(i42<1.0004547834396362){
   if(i6<0.014997482299804688){
    s0+=350.0;
   } else {
    if(i49<7.043396180961281e-05){
     s1+=125.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  } else {
   if(i5<1.0000959634780884){
    if(i78<-0.0066203773021698){
     s1+=9.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i2<0.9910005331039429){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=2122.0;
    }
   }
  }
 }
} else {
 if(i6<0.004354223608970642){
  if(i34<0.0008802558295428753){
   s1+=273.0;
  } else {
   if(i3<0.0001437067985534668){
    if(i48<1.0366696119308472){
     s0+=674.0;
     s1+=6.0;
    } else {
     s0+=144.0;
     s1+=31.0;
    }
   } else {
    if(i53<5.930662155151367e-05){
     s0+=9.0;
     s1+=286.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i23<1.6811659336090088){
   if(i67<1.7299667888437398e-05){
    if(i41<-8.436658390564844e-06){
     s0+=46.0;
     s1+=12596.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i10<1.00774085521698){
     s1+=1.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   s0+=21.0;
  }
 }
}
if(i4<2.378225326538086e-05){
 if(i54<1.0291333198547363){
  if(i35<0.0007065801182761788){
   if(i39<0.009516950696706772){
    if(i9<0.9917986989021301){
     s0+=417.0;
     s1+=64.0;
    } else {
     s0+=48299.0;
     s1+=84.0;
    }
   } else {
    if(i1<-3.584763908293098e-05){
     s0+=1045.0;
     s1+=101.0;
    } else {
     s0+=28978.0;
     s1+=227.0;
    }
   }
  } else {
   if(i5<0.9998928308486938){
    if(i29<0.0010220680851489305){
     s0+=1620.0;
     s1+=398.0;
    } else {
     s0+=18771.0;
     s1+=126.0;
    }
   } else {
    if(i31<1.0903346538543701){
     s0+=2182.0;
     s1+=2450.0;
    } else {
     s0+=8313.0;
     s1+=1273.0;
    }
   }
  }
 } else {
  if(i35<0.0006474092369899154){
   if(i4<2.282857894897461e-05){
    if(i47<1.0007413625717163){
     s0+=567.0;
    } else {
     s0+=65.0;
     s1+=10.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<-0.0005826354026794434){
    if(i69<0.09376499056816101){
     s0+=192.0;
     s1+=7.0;
    } else {
     s0+=19.0;
     s1+=99.0;
    }
   } else {
    if(i6<0.004354648292064667){
     s0+=49.0;
     s1+=13.0;
    } else {
     s0+=10.0;
     s1+=825.0;
    }
   }
  }
 }
} else {
 if(i25<0.007959650829434395){
  if(i0<0.0013871192932128906){
   if(i26<0.0001494288444519043){
    if(i29<0.008449641056358814){
     s0+=2883.0;
     s1+=99.0;
    } else {
     s0+=36.0;
     s1+=21.0;
    }
   } else {
    if(i27<0.000992042594589293){
     s0+=32.0;
     s1+=279.0;
    } else {
     s0+=608.0;
     s1+=12.0;
    }
   }
  } else {
   if(i46<-1.5881916624493897e-05){
    if(i0<0.0025615692138671875){
     s0+=488.0;
     s1+=1.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i29<0.0013214905047789216){
     s1+=1137.0;
    } else {
     s0+=229.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i14<0.12406694889068604){
   if(i49<9.405567652720492e-06){
    if(i12<0.0007020320626907051){
     s0+=146.0;
     s1+=2107.0;
    } else {
     s0+=145.0;
    }
   } else {
    if(i79<-0.003669559955596924){
     s0+=414.0;
     s1+=570.0;
    } else {
     s0+=821.0;
     s1+=142.0;
    }
   }
  } else {
   if(i28<0.0017620713915675879){
    if(i50<0.0009260803926736116){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=92.0;
    }
   } else {
    if(i15<1.052932858467102){
     s0+=22.0;
     s1+=25.0;
    } else {
     s0+=139.0;
     s1+=13642.0;
    }
   }
  }
 }
}
if(i5<1.0025954246520996){
 if(i54<1.0291223526000977){
  if(i1<-0.0001346941280644387){
   if(i36<1.1805448532104492){
    s0+=52.0;
   } else {
    if(i13<0.9223778247833252){
     s0+=47.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=234.0;
    }
   }
  } else {
   if(i6<0.0036120284348726273){
    if(i35<0.0005478233797475696){
     s0+=64212.0;
     s1+=151.0;
    } else {
     s0+=22494.0;
     s1+=769.0;
    }
   } else {
    if(i18<0.0017343917861580849){
     s0+=11569.0;
     s1+=96.0;
    } else {
     s0+=11307.0;
     s1+=3240.0;
    }
   }
  }
 } else {
  if(i39<0.12237805128097534){
   if(i59<0.0007030342239886522){
    if(i18<0.0017942023696377873){
     s0+=57.0;
    } else {
     s0+=24.0;
     s1+=295.0;
    }
   } else {
    if(i57<3.0600280297221616e-05){
     s0+=499.0;
     s1+=25.0;
    } else {
     s0+=244.0;
     s1+=239.0;
    }
   }
  } else {
   if(i24<0.1675224006175995){
    s0+=19.0;
   } else {
    s1+=383.0;
   }
  }
 }
} else {
 if(i7<1.016484022140503){
  if(i36<1.176374077796936){
   if(i30<1.1174830198287964){
    if(i31<1.058152437210083){
     s0+=764.0;
     s1+=58.0;
    } else {
     s0+=61.0;
     s1+=1375.0;
    }
   } else {
    if(i6<0.005265741143375635){
     s0+=3088.0;
     s1+=24.0;
    } else {
     s0+=158.0;
     s1+=192.0;
    }
   }
  } else {
   if(i40<1.1076223850250244){
    if(i17<1.0091197490692139){
     s0+=858.0;
     s1+=141.0;
    } else {
     s0+=19.0;
     s1+=192.0;
    }
   } else {
    if(i9<0.9345314502716064){
     s0+=352.0;
     s1+=161.0;
    } else {
     s0+=336.0;
     s1+=3778.0;
    }
   }
  }
 } else {
  if(i1<-6.292032048804685e-05){
   if(i1<-8.767505642026663e-05){
    if(i31<1.1246932744979858){
     s0+=20.0;
     s1+=563.0;
    } else {
     s0+=4.0;
     s1+=11245.0;
    }
   } else {
    if(i66<0.0013053417205810547){
     s0+=53.0;
     s1+=54.0;
    } else {
     s0+=22.0;
     s1+=541.0;
    }
   }
  } else {
   if(i6<0.004104141145944595){
    if(i32<0.0005381107330322266){
     s1+=94.0;
    } else {
     s0+=274.0;
    }
   } else {
    if(i3<-5.781650543212891e-06){
     s0+=6.0;
    } else {
     s0+=14.0;
     s1+=443.0;
    }
   }
  }
 }
}
if(i21<1.0177363157272339){
 if(i25<0.06173378974199295){
  if(i2<1.0038710832595825){
   if(i68<0.1196400374174118){
    if(i17<0.9975118637084961){
     s0+=34050.0;
     s1+=101.0;
    } else {
     s0+=66643.0;
     s1+=3088.0;
    }
   } else {
    if(i1<-1.7345562810078263e-05){
     s0+=5359.0;
     s1+=1319.0;
    } else {
     s0+=4759.0;
     s1+=176.0;
    }
   }
  } else {
   if(i34<0.0021248580887913704){
    if(i34<0.001167277921922505){
     s0+=661.0;
     s1+=1485.0;
    } else {
     s0+=2936.0;
     s1+=93.0;
    }
   } else {
    if(i44<0.0003095868160016835){
     s0+=48.0;
     s1+=6.0;
    } else {
     s0+=108.0;
     s1+=1885.0;
    }
   }
  }
 } else {
  if(i67<2.046592635451816e-05){
   if(i11<0.04257813096046448){
    if(i8<0.00127488374710083){
     s0+=83.0;
     s1+=44.0;
    } else {
     s0+=4.0;
     s1+=68.0;
    }
   } else {
    if(i10<0.9731563329696655){
     s0+=50.0;
     s1+=210.0;
    } else {
     s0+=3.0;
     s1+=1733.0;
    }
   }
  } else {
   s0+=340.0;
  }
 }
} else {
 if(i18<0.0014103187713772058){
  if(i0<0.002001643180847168){
   if(i36<1.1488782167434692){
    if(i34<0.002463056705892086){
     s0+=370.0;
     s1+=10.0;
    } else {
     s1+=15.0;
    }
   } else {
    s0+=389.0;
   }
  } else {
   s1+=406.0;
  }
 } else {
  if(i11<0.10566580295562744){
   if(i49<1.4697563528898172e-05){
    if(i12<0.0008616079576313496){
     s0+=7.0;
     s1+=494.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i73<-0.05498287081718445){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=220.0;
    }
   }
  } else {
   if(i1<-5.4454885685117915e-05){
    if(i47<0.9983373284339905){
     s0+=43.0;
     s1+=1.0;
    } else {
     s0+=67.0;
     s1+=12773.0;
    }
   } else {
    if(i0<-0.0004029273986816406){
     s0+=153.0;
     s1+=31.0;
    } else {
     s0+=81.0;
     s1+=478.0;
    }
   }
  }
 }
}
if(i5<1.0025755167007446){
 if(i44<0.012187340296804905){
  if(i23<1.1162974834442139){
   if(i13<1.0075335502624512){
    if(i23<1.064497947692871){
     s0+=16154.0;
     s1+=53.0;
    } else {
     s0+=12948.0;
     s1+=2686.0;
    }
   } else {
    if(i36<1.0499491691589355){
     s0+=102.0;
    } else {
     s0+=84.0;
     s1+=950.0;
    }
   }
  } else {
   if(i19<1.0203287601470947){
    if(i59<0.0023772981949150562){
     s0+=75154.0;
     s1+=404.0;
    } else {
     s0+=4553.0;
     s1+=363.0;
    }
   } else {
    if(i57<2.820970803441014e-05){
     s0+=312.0;
     s1+=24.0;
    } else {
     s0+=90.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i6<0.01771058887243271){
   if(i43<1.1080676317214966){
    if(i38<0.13019412755966187){
     s0+=593.0;
     s1+=12.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i46<-4.0228355828730855e-06){
     s0+=1.0;
     s1+=185.0;
    } else {
     s0+=193.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<1.0469609498977661){
    if(i1<-0.00015394549700431526){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=58.0;
     s1+=10.0;
    }
   } else {
    s1+=532.0;
   }
  }
 }
} else {
 if(i31<1.1714401245117188){
  if(i20<0.0013870596885681152){
   if(i6<0.00426650233566761){
    if(i42<1.0027729272842407){
     s0+=1124.0;
     s1+=225.0;
    } else {
     s0+=2995.0;
     s1+=4.0;
    }
   } else {
    if(i10<0.9960318803787231){
     s0+=352.0;
     s1+=209.0;
    } else {
     s0+=149.0;
     s1+=986.0;
    }
   }
  } else {
   if(i12<0.00033304846147075295){
    if(i1<-0.000397669238736853){
     s0+=5.0;
    } else {
     s1+=2216.0;
    }
   } else {
    s0+=478.0;
   }
  }
 } else {
  if(i24<0.08314421772956848){
   if(i0<0.001653134822845459){
    if(i15<1.086830496788025){
     s0+=694.0;
     s1+=63.0;
    } else {
     s0+=139.0;
     s1+=217.0;
    }
   } else {
    if(i5<1.0052155256271362){
     s0+=10.0;
     s1+=15.0;
    } else {
     s0+=5.0;
     s1+=256.0;
    }
   }
  } else {
   if(i20<-0.001425623893737793){
    if(i23<1.2921578884124756){
     s0+=146.0;
     s1+=64.0;
    } else {
     s0+=162.0;
     s1+=1165.0;
    }
   } else {
    if(i29<0.0024278885684907436){
     s0+=9.0;
    } else {
     s0+=25.0;
     s1+=13444.0;
    }
   }
  }
 }
}
if(i2<1.003739833831787){
 if(i18<0.0017199964495375752){
  if(i1<-7.272198126884177e-05){
   if(i74<0.002097487449645996){
    if(i15<1.0909744501113892){
     s0+=51.0;
    } else {
     s0+=8.0;
     s1+=12.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i41<-1.9165425328537822e-05){
    if(i4<2.7835369110107422e-05){
     s1+=26.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i35<0.0005789163988083601){
     s0+=71030.0;
     s1+=203.0;
    } else {
     s0+=18081.0;
     s1+=724.0;
    }
   }
  }
 } else {
  if(i27<0.0009228305425494909){
   if(i30<1.0533521175384521){
    s0+=2051.0;
   } else {
    if(i5<0.9995361566543579){
     s0+=157.0;
     s1+=99.0;
    } else {
     s0+=7.0;
     s1+=2550.0;
    }
   }
  } else {
   if(i3<-8.165836334228516e-06){
    if(i14<0.2003687620162964){
     s0+=19062.0;
     s1+=724.0;
    } else {
     s0+=89.0;
     s1+=393.0;
    }
   } else {
    if(i36<1.1462047100067139){
     s0+=728.0;
     s1+=18.0;
    } else {
     s0+=655.0;
     s1+=1760.0;
    }
   }
  }
 }
} else {
 if(i23<1.1979892253875732){
  if(i44<0.0008804106619209051){
   if(i32<0.0005208849906921387){
    if(i6<0.0006195618188939989){
     s0+=8.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=2620.0;
    }
   } else {
    s0+=775.0;
   }
  } else {
   if(i28<0.0009759613312780857){
    s1+=112.0;
   } else {
    if(i21<1.029226303100586){
     s0+=3333.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i39<0.011823629029095173){
   if(i2<1.0062119960784912){
    if(i40<1.134916067123413){
     s0+=138.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=18.0;
    }
   } else {
    s1+=455.0;
   }
  } else {
   if(i28<0.0018974211998283863){
    if(i23<1.4667320251464844){
     s1+=15.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i11<0.0946565568447113){
     s0+=131.0;
     s1+=583.0;
    } else {
     s0+=43.0;
     s1+=14094.0;
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
