/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=15 top_hat_box=30 top_hat_box=20 laplace_box_of_gaussian_blur=15 difference_of_gaussian=15 top_hat_box=10 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 maximum_box=3 difference_of_gaussian=20 maximum_box=2 median_box=5 mean_box=10 gaussian_blur=5 laplace_box_of_gaussian_blur=10 gaussian_blur=15 median_box=3 sobel_of_gaussian_blur=10 mean_box=15 difference_of_gaussian=10 laplace_box_of_gaussian_blur=20 gaussian_blur=3 mean_box=3 maximum_box=5 maximum_box=1 gaussian_blur=2 variance_box=3 sobel_of_median_box=5 maximum_box=30 sobel_of_gaussian_blur=5 gaussian_blur=20 top_hat_box=2 variance_box=30 variance_box=20 variance_box=15 top_hat_box=5 maximum_box=15 maximum_box=20 maximum_box=10 variance_box=10 mean_box=2 top_hat_box=3 variance_box=5 laplace_box_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=15 difference_of_gaussian=2 difference_of_gaussian=30 variance_box=2 sobel_of_median_box=3 large_hessian_eigenvalue_of_gaussian_blur=10 large_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=2 laplace_box_of_gaussian_blur=1 sobel_of_gaussian_blur=15 gaussian_blur=1 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=1 laplace_box_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=2 sobel_of_gaussian_blur=2 difference_of_gaussian=1 sobel_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=1 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=15 mean_box=5 sobel_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=20 gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=1 small_hessian_eigenvalue_of_gaussian_blur=5 mean_box=20 sobel_of_gaussian_blur=30 sobel_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=3 laplace_box_of_gaussian_blur=5 difference_of_gaussian=5 laplace_box_of_gaussian_blur=30 variance_box=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 82
max_depth = 5
num_trees = 250
feature_importances = 0.08582486953975345,0.10646307083913459,0.10302982061665342,0.0614970538319059,0.0785703100767504,0.06809089048885265,0.053943994735868785,0.049660801967722296,0.04049265938779819,0.01865058273340362,0.04316509872365472,0.014591483596193108,0.016394011027261353,0.015032334296383147,0.009054080583957751,0.02293769480676369,0.0037828582559227522,0.011706902170863244,0.021207974378064282,0.03467074494188118,0.008101178758907345,0.005690443924627693,0.008326479528556566,0.009149562507632984,0.006595748210970534,0.010619661106494186,0.0037137850830295514,0.0064024935707175795,0.002947335192389972,0.0018137680512854025,0.0034061669105956154,0.002313789984280525,0.002558070209121075,0.0021765001800999823,0.002595254988949588,0.0017923899576399202,0.0022737454525062427,0.0027053505011044895,0.002793905134370476,0.0023058376228084713,0.003034695703596408,0.001873001333461545,0.001111731919527997,0.0015248008291571487,0.001754544539341441,0.0015943538697494018,0.002654276920519116,0.004032321950644103,0.0007415709913577623,0.001080287609371299,0.0012767897817630419,0.0010780272207056181,0.0012358407640209361,0.001695767636134424,0.004842336749108229,0.0006862741655553025,0.0011733408850169112,0.0007142174512398329,0.0007820626801287636,0.0007509432160694638,0.0008384246310479158,0.0009041646786124166,0.0010653093274987926,0.001255406635622471,0.0010377063775028022,0.0008270844866905167,0.0038180071900639945,0.0007975411574173566,0.0006770040822150279,0.001000591130313467,0.0006273993266932154,0.0003971375141607299,0.0014221549596917726,0.0007655745750170704,0.00035427998092806234,0.0022986325280376575,0.0003097013676952483,0.00012167405199471135,0.00022919086693575714,0.0002342594842647928,9.998068965006743e-05,0.00023288486660056978
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_in78_TYPE in78, IMAGE_in79_TYPE in79, IMAGE_in80_TYPE in80, IMAGE_in81_TYPE in81, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i0<0.0782729983329773){
 if(i18<1.003492832183838){
  if(i2<0.06921815872192383){
   if(i56<0.008201374672353268){
    if(i51<0.0015882111620157957){
     s0+=60072.0;
     s1+=538.0;
    } else {
     s0+=3874.0;
     s1+=382.0;
    }
   } else {
    if(i4<0.0001748800277709961){
     s0+=2582.0;
     s1+=469.0;
    } else {
     s0+=148.0;
     s1+=199.0;
    }
   }
  } else {
   if(i56<0.0010948686394840479){
    if(i32<0.001220641890540719){
     s0+=671.0;
     s1+=191.0;
    } else {
     s0+=630.0;
     s1+=16.0;
    }
   } else {
    if(i64<0.003988385200500488){
     s0+=226.0;
     s1+=450.0;
    } else {
     s0+=133.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i65<1.0760174518509302e-05){
   if(i46<0.00018781423568725586){
    if(i34<0.0008905228460207582){
     s1+=62.0;
    } else {
     s0+=147.0;
     s1+=55.0;
    }
   } else {
    if(i54<1.0329318046569824){
     s0+=12.0;
     s1+=765.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i3<3.5643577575683594e-05){
    if(i56<0.031163210049271584){
     s0+=656.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=15.0;
    }
   } else {
    if(i52<-0.008206874132156372){
     s0+=4.0;
     s1+=85.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i12<1.000793218612671){
  if(i46<-0.00013515353202819824){
   if(i44<-1.0199353710049763e-05){
    if(i37<1.1298247575759888){
     s0+=10.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    if(i31<0.03245958685874939){
     s0+=35.0;
     s1+=9.0;
    } else {
     s0+=404.0;
    }
   }
  } else {
   if(i29<0.024308346211910248){
    if(i45<0.0043062567710876465){
     s0+=265.0;
     s1+=1128.0;
    } else {
     s0+=702.0;
     s1+=281.0;
    }
   } else {
    if(i27<0.02249150536954403){
     s0+=92.0;
     s1+=148.0;
    } else {
     s0+=57.0;
     s1+=2015.0;
    }
   }
  }
 } else {
  if(i14<0.00010228157043457031){
   if(i53<0.0008775346213951707){
    if(i77<-0.0017109742620959878){
     s0+=86.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=139.0;
    }
   } else {
    if(i17<0.003221617778763175){
     s0+=41.0;
     s1+=113.0;
    } else {
     s0+=30.0;
     s1+=1415.0;
    }
   }
  } else {
   if(i37<1.0683836936950684){
    s0+=2.0;
   } else {
    if(i4<-0.0001323223114013672){
     s0+=2.0;
    } else {
     s0+=39.0;
     s1+=8740.0;
    }
   }
  }
 }
}
if(i5<0.07109606266021729){
 if(i11<1.0081671476364136){
  if(i10<1.0398883819580078){
   if(i26<0.00028711516642943025){
    if(i64<-0.002742767333984375){
     s1+=25.0;
    } else {
     s0+=51380.0;
     s1+=190.0;
    }
   } else {
    if(i6<1.0007848739624023){
     s0+=11127.0;
     s1+=871.0;
    } else {
     s0+=91.0;
     s1+=278.0;
    }
   }
  } else {
   if(i50<0.0013397687580436468){
    if(i18<1.0005345344543457){
     s0+=4817.0;
     s1+=580.0;
    } else {
     s0+=619.0;
     s1+=562.0;
    }
   } else {
    if(i53<0.005433273036032915){
     s0+=136.0;
     s1+=94.0;
    } else {
     s1+=115.0;
    }
   }
  }
 } else {
  if(i12<1.0043989419937134){
   if(i1<0.07998543977737427){
    if(i44<-1.4097062376094982e-05){
     s0+=104.0;
     s1+=98.0;
    } else {
     s0+=679.0;
     s1+=87.0;
    }
   } else {
    if(i25<1.0261263847351074){
     s0+=5.0;
     s1+=276.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   }
  } else {
   if(i46<0.00013899803161621094){
    if(i15<1.0009140968322754){
     s0+=11.0;
     s1+=202.0;
    } else {
     s0+=72.0;
     s1+=11.0;
    }
   } else {
    if(i6<1.0020889043807983){
     s0+=1.0;
    } else {
     s0+=5.0;
     s1+=1080.0;
    }
   }
  }
 }
} else {
 if(i1<0.11255711317062378){
  if(i64<0.0036998391151428223){
   if(i52<0.045115530490875244){
    if(i20<-1.4275312423706055e-05){
     s0+=151.0;
    } else {
     s0+=225.0;
     s1+=1035.0;
    }
   } else {
    if(i0<0.1091468334197998){
     s0+=516.0;
     s1+=57.0;
    } else {
     s0+=8.0;
     s1+=15.0;
    }
   }
  } else {
   if(i41<0.04534316062927246){
    if(i60<0.0009289979934692383){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i53<0.004903257824480534){
     s0+=405.0;
     s1+=13.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<0.9979477524757385){
   if(i46<-0.00018671154975891113){
    s0+=256.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i32<0.0005806618137285113){
    if(i44<-4.212194198771613e-06){
     s0+=1.0;
     s1+=92.0;
    } else {
     s0+=146.0;
     s1+=5.0;
    }
   } else {
    if(i3<5.060434341430664e-05){
     s0+=373.0;
     s1+=2615.0;
    } else {
     s0+=35.0;
     s1+=8732.0;
    }
   }
  }
 }
}
if(i5<0.07196676731109619){
 if(i6<1.0024782419204712){
  if(i0<0.07798874378204346){
   if(i26<0.00027993519324809313){
    if(i16<1.0113178491592407){
     s0+=52358.0;
     s1+=217.0;
    } else {
     s0+=9.0;
     s1+=47.0;
    }
   } else {
    if(i14<-0.0002855658531188965){
     s0+=7701.0;
     s1+=150.0;
    } else {
     s0+=8704.0;
     s1+=1674.0;
    }
   }
  } else {
   if(i30<0.9993287324905396){
    s0+=84.0;
   } else {
    if(i4<-0.0007462501525878906){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=23.0;
     s1+=707.0;
    }
   }
  }
 } else {
  if(i7<-4.883077781414613e-05){
   if(i28<1.5682398080825806){
    if(i4<0.0005468130111694336){
     s0+=20.0;
     s1+=36.0;
    } else {
     s0+=29.0;
     s1+=1601.0;
    }
   } else {
    if(i56<0.018223676830530167){
     s0+=76.0;
     s1+=7.0;
    } else {
     s1+=110.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i4<0.0004850625991821289){
     s0+=4.0;
    } else {
     s1+=138.0;
    }
   } else {
    if(i37<1.2829749584197998){
     s0+=130.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004419684410095215){
  if(i17<0.004680265672504902){
   if(i36<1.2533326148986816){
    if(i36<1.2527469396591187){
     s0+=992.0;
     s1+=659.0;
    } else {
     s0+=7.0;
     s1+=268.0;
    }
   } else {
    if(i33<0.006492161191999912){
     s0+=534.0;
     s1+=12.0;
    } else {
     s0+=41.0;
     s1+=43.0;
    }
   }
  } else {
   if(i30<0.9987116456031799){
    if(i10<1.3700618743896484){
     s0+=73.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i1<0.11334103345870972){
     s0+=193.0;
     s1+=254.0;
    } else {
     s0+=11.0;
     s1+=1156.0;
    }
   }
  }
 } else {
  if(i11<1.0237452983856201){
   if(i19<-0.0006315112113952637){
    if(i36<1.3026196956634521){
     s0+=111.0;
     s1+=173.0;
    } else {
     s0+=29.0;
     s1+=499.0;
    }
   } else {
    if(i17<0.0027100672014057636){
     s0+=51.0;
     s1+=113.0;
    } else {
     s0+=29.0;
     s1+=2722.0;
    }
   }
  } else {
   if(i2<0.13662579655647278){
    if(i2<0.13656118512153625){
     s1+=111.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=6308.0;
   }
  }
 }
}
if(i3<3.641843795776367e-05){
 if(i24<1.0398095846176147){
  if(i2<0.08032220602035522){
   if(i26<0.00030135453562252223){
    if(i50<0.00027153431437909603){
     s0+=51528.0;
     s1+=137.0;
    } else {
     s0+=1243.0;
     s1+=137.0;
    }
   } else {
    if(i19<-0.0015332698822021484){
     s0+=7855.0;
     s1+=138.0;
    } else {
     s0+=5364.0;
     s1+=1221.0;
    }
   }
  } else {
   if(i6<0.9960192441940308){
    if(i44<-1.0808560546138324e-05){
     s0+=28.0;
     s1+=25.0;
    } else {
     s0+=154.0;
     s1+=4.0;
    }
   } else {
    if(i34<0.0003682481765281409){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=49.0;
     s1+=1002.0;
    }
   }
  }
 } else {
  if(i0<0.0923108160495758){
   if(i42<0.0014204933540895581){
    if(i13<1.0022587776184082){
     s0+=1099.0;
     s1+=229.0;
    } else {
     s0+=115.0;
     s1+=237.0;
    }
   } else {
    if(i27<0.034611791372299194){
     s0+=1746.0;
     s1+=43.0;
    } else {
     s0+=254.0;
     s1+=60.0;
    }
   }
  } else {
   if(i15<0.9988740682601929){
    if(i18<0.9982060194015503){
     s0+=304.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i32<0.0005807899869978428){
     s0+=217.0;
     s1+=65.0;
    } else {
     s0+=418.0;
     s1+=2150.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003575882292352617){
  s0+=336.0;
 } else {
  if(i13<1.0097784996032715){
   if(i23<1.1517620086669922){
    if(i29<0.02332339435815811){
     s0+=379.0;
     s1+=752.0;
    } else {
     s0+=1.0;
     s1+=663.0;
    }
   } else {
    if(i0<0.01677420735359192){
     s0+=22.0;
     s1+=20.0;
    } else {
     s0+=50.0;
     s1+=1747.0;
    }
   }
  } else {
   if(i7<-4.1147526644635946e-05){
    s1+=8403.0;
   } else {
    if(i43<0.0014668107032775879){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
}
if(i9<0.0004208087921142578){
 if(i26<0.00031641291570849717){
  if(i22<1.0084199905395508){
   if(i70<0.0008437596843577921){
    if(i0<0.09070277214050293){
     s0+=53048.0;
     s1+=166.0;
    } else {
     s0+=17.0;
     s1+=28.0;
    }
   } else {
    if(i34<0.0010193921625614166){
     s0+=71.0;
     s1+=106.0;
    } else {
     s0+=298.0;
    }
   }
  } else {
   if(i30<1.0004531145095825){
    if(i5<0.05324867367744446){
     s0+=170.0;
     s1+=24.0;
    } else {
     s0+=13.0;
     s1+=47.0;
    }
   } else {
    if(i33<0.0010467850370332599){
     s1+=108.0;
    } else {
     s0+=32.0;
    }
   }
  }
 } else {
  if(i3<1.0669231414794922e-05){
   if(i28<1.255998969078064){
    if(i27<0.023449242115020752){
     s0+=5165.0;
     s1+=987.0;
    } else {
     s0+=676.0;
     s1+=1404.0;
    }
   } else {
    if(i1<0.10389044880867004){
     s0+=8428.0;
     s1+=156.0;
    } else {
     s0+=475.0;
     s1+=541.0;
    }
   }
  } else {
   if(i19<0.0008817315101623535){
    if(i55<1.0001261234283447){
     s0+=203.0;
     s1+=748.0;
    } else {
     s0+=360.0;
     s1+=215.0;
    }
   } else {
    if(i30<1.0002367496490479){
     s0+=1.0;
     s1+=1308.0;
    } else {
     s0+=79.0;
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i18<1.0026966333389282){
  if(i6<1.0023252964019775){
   if(i70<0.001023561810143292){
    if(i64<0.009921729564666748){
     s0+=1147.0;
     s1+=184.0;
    } else {
     s0+=2.0;
     s1+=66.0;
    }
   } else {
    if(i72<-0.00016437884187325835){
     s0+=22.0;
     s1+=153.0;
    } else {
     s0+=214.0;
     s1+=114.0;
    }
   }
  } else {
   if(i72<-0.0005594623507931828){
    if(i23<1.1278810501098633){
     s0+=2.0;
     s1+=56.0;
    } else {
     s1+=827.0;
    }
   } else {
    if(i38<1.1612904071807861){
     s0+=5.0;
     s1+=191.0;
    } else {
     s0+=81.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i4<0.0005246996879577637){
   if(i53<0.0054667042568326){
    if(i8<1.0819685459136963){
     s0+=292.0;
     s1+=52.0;
    } else {
     s0+=33.0;
     s1+=97.0;
    }
   } else {
    if(i58<4.096189513802528e-06){
     s1+=81.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<2.2232532501220703e-05){
    if(i34<0.0060290927067399025){
     s0+=79.0;
     s1+=201.0;
    } else {
     s1+=472.0;
    }
   } else {
    if(i13<0.999457836151123){
     s0+=114.0;
     s1+=882.0;
    } else {
     s0+=15.0;
     s1+=7856.0;
    }
   }
  }
 }
}
if(i54<1.0132877826690674){
 if(i3<3.796815872192383e-05){
  if(i10<1.0452215671539307){
   if(i8<1.0452215671539307){
    if(i48<0.026680035516619682){
     s0+=53707.0;
     s1+=406.0;
    } else {
     s0+=8101.0;
     s1+=622.0;
    }
   } else {
    if(i27<0.017007093876600266){
     s0+=2166.0;
     s1+=242.0;
    } else {
     s0+=613.0;
     s1+=583.0;
    }
   }
  } else {
   if(i3<9.000301361083984e-06){
    if(i7<-1.32579734781757e-05){
     s0+=718.0;
     s1+=844.0;
    } else {
     s0+=2094.0;
     s1+=225.0;
    }
   } else {
    if(i50<0.0003245905681978911){
     s0+=272.0;
     s1+=314.0;
    } else {
     s0+=52.0;
     s1+=383.0;
    }
   }
  }
 } else {
  if(i36<1.0646642446517944){
   s0+=295.0;
  } else {
   if(i26<0.00017985103477258235){
    if(i3<3.9458274841308594e-05){
     s1+=2.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i2<0.05832093954086304){
     s0+=139.0;
     s1+=428.0;
    } else {
     s0+=26.0;
     s1+=2896.0;
    }
   }
  }
 }
} else {
 if(i13<1.0063270330429077){
  if(i27<0.02857445739209652){
   if(i38<1.0778207778930664){
    if(i11<1.0027058124542236){
     s0+=106.0;
     s1+=33.0;
    } else {
     s0+=24.0;
     s1+=149.0;
    }
   } else {
    if(i5<0.172174334526062){
     s0+=1845.0;
     s1+=285.0;
    } else {
     s0+=84.0;
     s1+=126.0;
    }
   }
  } else {
   if(i4<-0.0010207593441009521){
    if(i68<-3.2896311950025847e-06){
     s0+=10.0;
     s1+=32.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i7<-2.7686135581461713e-05){
     s0+=75.0;
     s1+=1441.0;
    } else {
     s0+=171.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i0<0.07049018144607544){
   if(i53<0.0009944259654730558){
    if(i39<0.0015887808986008167){
     s1+=7.0;
    } else {
     s0+=184.0;
    }
   } else {
    if(i55<1.0022468566894531){
     s0+=1.0;
     s1+=67.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i2<0.08897963166236877){
    if(i38<1.1428725719451904){
     s1+=63.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   } else {
    if(i32<0.0005819973303005099){
     s0+=43.0;
     s1+=77.0;
    } else {
     s0+=29.0;
     s1+=7891.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i4<0.0006022751331329346){
  if(i57<-0.002317667007446289){
   if(i37<1.197464108467102){
    if(i46<-4.807114601135254e-05){
     s0+=1164.0;
     s1+=96.0;
    } else {
     s0+=367.0;
     s1+=685.0;
    }
   } else {
    if(i77<-0.0006578117609024048){
     s0+=138.0;
     s1+=64.0;
    } else {
     s0+=3173.0;
     s1+=81.0;
    }
   }
  } else {
   if(i59<0.02484080195426941){
    if(i1<0.08691555261611938){
     s0+=52241.0;
     s1+=213.0;
    } else {
     s0+=155.0;
     s1+=114.0;
    }
   } else {
    if(i12<0.9939254522323608){
     s0+=5764.0;
     s1+=23.0;
    } else {
     s0+=2186.0;
     s1+=646.0;
    }
   }
  }
 } else {
  if(i17<0.0018812376074492931){
   if(i29<0.016179552301764488){
    s0+=104.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i80<-6.705522537231445e-06){
    s0+=22.0;
   } else {
    if(i5<0.022040903568267822){
     s0+=15.0;
     s1+=76.0;
    } else {
     s0+=2.0;
     s1+=722.0;
    }
   }
  }
 }
} else {
 if(i5<0.08164608478546143){
  if(i4<0.00046694278717041016){
   if(i37<1.1037919521331787){
    if(i29<0.012403067201375961){
     s0+=955.0;
     s1+=284.0;
    } else {
     s0+=67.0;
     s1+=485.0;
    }
   } else {
    if(i3<1.1742115020751953e-05){
     s0+=2816.0;
     s1+=326.0;
    } else {
     s0+=487.0;
     s1+=190.0;
    }
   }
  } else {
   if(i45<0.0026746392250061035){
    if(i12<1.0030014514923096){
     s0+=101.0;
     s1+=269.0;
    } else {
     s0+=40.0;
     s1+=1565.0;
    }
   } else {
    if(i36<1.2369153499603271){
     s0+=14.0;
     s1+=62.0;
    } else {
     s0+=87.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i4<0.0004686713218688965){
   if(i30<0.998927116394043){
    if(i26<0.04582162946462631){
     s0+=319.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i7<-1.3797138308291323e-05){
     s0+=337.0;
     s1+=1806.0;
    } else {
     s0+=493.0;
     s1+=165.0;
    }
   }
  } else {
   if(i17<0.0032135690562427044){
    if(i45<0.0066023170948028564){
     s0+=18.0;
     s1+=180.0;
    } else {
     s0+=46.0;
     s1+=17.0;
    }
   } else {
    if(i19<-5.2034854888916016e-05){
     s0+=63.0;
     s1+=906.0;
    } else {
     s0+=6.0;
     s1+=8064.0;
    }
   }
  }
 }
}
if(i1<0.08523550629615784){
 if(i12<1.0042946338653564){
  if(i8<1.0436501502990723){
   if(i45<-0.0014859139919281006){
    if(i0<0.0491618812084198){
     s0+=2153.0;
     s1+=211.0;
    } else {
     s0+=36.0;
     s1+=90.0;
    }
   } else {
    if(i38<1.0556960105895996){
     s0+=40988.0;
    } else {
     s0+=17562.0;
     s1+=513.0;
    }
   }
  } else {
   if(i27<0.0170164592564106){
    if(i64<-0.001238316297531128){
     s0+=794.0;
     s1+=201.0;
    } else {
     s0+=5009.0;
     s1+=277.0;
    }
   } else {
    if(i39<0.0021768459118902683){
     s0+=417.0;
     s1+=772.0;
    } else {
     s0+=1694.0;
     s1+=384.0;
    }
   }
  }
 } else {
  if(i26<0.0001870676060207188){
   if(i28<1.1386182308197021){
    if(i53<0.0006768699968233705){
     s0+=2.0;
    } else {
     s1+=19.0;
    }
   } else {
    s0+=291.0;
   }
  } else {
   if(i46<0.00013911724090576172){
    if(i28<1.2160128355026245){
     s0+=1.0;
     s1+=68.0;
    } else {
     s0+=224.0;
     s1+=21.0;
    }
   } else {
    if(i73<0.9991533756256104){
     s0+=36.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=681.0;
    }
   }
  }
 }
} else {
 if(i46<-0.00013971328735351562){
  if(i17<0.005947954021394253){
   if(i9<-0.00016325712203979492){
    if(i68<-3.0427524961851304e-06){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=616.0;
    }
   } else {
    if(i31<0.0485156774520874){
     s1+=12.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i8<1.0598496198654175){
    s0+=3.0;
   } else {
    s1+=92.0;
   }
  }
 } else {
  if(i6<1.0018550157546997){
   if(i41<0.05876019597053528){
    if(i63<0.040443480014801025){
     s0+=73.0;
     s1+=1787.0;
    } else {
     s0+=21.0;
     s1+=36.0;
    }
   } else {
    if(i49<3.615547757362947e-05){
     s0+=533.0;
     s1+=308.0;
    } else {
     s0+=451.0;
     s1+=1079.0;
    }
   }
  } else {
   if(i6<1.0039222240447998){
    if(i66<1.0091885328292847){
     s0+=88.0;
     s1+=751.0;
    } else {
     s0+=10.0;
     s1+=685.0;
    }
   } else {
    if(i0<0.16145369410514832){
     s0+=28.0;
     s1+=1706.0;
    } else {
     s1+=7457.0;
    }
   }
  }
 }
}
if(i19<0.0007561445236206055){
 if(i47<0.0003252304159104824){
  if(i22<1.0084216594696045){
   if(i48<0.035982050001621246){
    if(i64<-0.0017223656177520752){
     s0+=160.0;
     s1+=149.0;
    } else {
     s0+=55684.0;
     s1+=374.0;
    }
   } else {
    if(i21<0.9898195862770081){
     s0+=549.0;
     s1+=33.0;
    } else {
     s0+=270.0;
     s1+=169.0;
    }
   }
  } else {
   if(i3<1.4960765838623047e-05){
    if(i1<0.07316970825195312){
     s0+=529.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=94.0;
    }
   } else {
    if(i49<7.039523552521132e-06){
     s0+=49.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=181.0;
    }
   }
  }
 } else {
  if(i20<8.52346420288086e-06){
   if(i8<1.0401138067245483){
    if(i2<0.07043313980102539){
     s0+=5522.0;
     s1+=188.0;
    } else {
     s0+=185.0;
     s1+=122.0;
    }
   } else {
    if(i0<0.07534140348434448){
     s0+=3832.0;
     s1+=779.0;
    } else {
     s0+=1029.0;
     s1+=1630.0;
    }
   }
  } else {
   if(i67<0.16410502791404724){
    if(i51<0.0031383715104311705){
     s0+=2087.0;
     s1+=1494.0;
    } else {
     s0+=315.0;
     s1+=980.0;
    }
   } else {
    if(i49<0.0004098905483260751){
     s0+=3.0;
     s1+=999.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i53<0.0007593972841277719){
  if(i81<0.0002045871806330979){
   if(i14<0.0002339482307434082){
    if(i34<0.0011690394021570683){
     s0+=17.0;
     s1+=42.0;
    } else {
     s0+=383.0;
     s1+=2.0;
    }
   } else {
    s1+=69.0;
   }
  } else {
   if(i19<0.0013873577117919922){
    if(i78<0.0020017623901367188){
     s0+=14.0;
     s1+=105.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i42<0.00031697022495791316){
     s0+=1.0;
    } else {
     s1+=483.0;
    }
   }
  }
 } else {
  if(i44<-6.650675004493678e-06){
   if(i44<-1.5900217476882972e-05){
    s1+=8815.0;
   } else {
    if(i74<0.00014414958423003554){
     s0+=43.0;
     s1+=469.0;
    } else {
     s0+=48.0;
     s1+=12.0;
    }
   }
  } else {
   if(i11<1.013261318206787){
    s0+=182.0;
   } else {
    s1+=75.0;
   }
  }
 }
}
if(i0<0.07800722122192383){
 if(i66<1.0072276592254639){
  if(i56<0.008864335715770721){
   if(i3<4.202127456665039e-05){
    if(i42<0.0002970079658553004){
     s0+=46357.0;
     s1+=40.0;
    } else {
     s0+=18612.0;
     s1+=1255.0;
    }
   } else {
    if(i17<0.0036085108295083046){
     s0+=220.0;
     s1+=4.0;
    } else {
     s0+=89.0;
     s1+=173.0;
    }
   }
  } else {
   if(i4<0.00031256675720214844){
    if(i3<-2.22623348236084e-05){
     s0+=1390.0;
     s1+=141.0;
    } else {
     s0+=899.0;
     s1+=386.0;
    }
   } else {
    if(i57<0.003530532121658325){
     s0+=32.0;
     s1+=327.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i34<0.0011698147282004356){
   if(i6<1.0008260011672974){
    if(i53<0.0014986394671723247){
     s0+=164.0;
     s1+=28.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i69<0.9993645548820496){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=646.0;
    }
   }
  } else {
   if(i20<2.6941299438476562e-05){
    if(i61<0.0007259499398060143){
     s0+=1363.0;
     s1+=13.0;
    } else {
     s0+=31.0;
     s1+=26.0;
    }
   } else {
    if(i64<0.003838062286376953){
     s0+=8.0;
     s1+=158.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i19<0.00024145841598510742){
  if(i73<0.9980195164680481){
   if(i15<0.9980349540710449){
    s0+=408.0;
   } else {
    if(i29<0.027558565139770508){
     s0+=52.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=80.0;
    }
   }
  } else {
   if(i17<0.0016080406494438648){
    if(i13<0.9973811507225037){
     s0+=152.0;
     s1+=153.0;
    } else {
     s0+=329.0;
     s1+=22.0;
    }
   } else {
    if(i45<0.003827214241027832){
     s0+=96.0;
     s1+=2109.0;
    } else {
     s0+=571.0;
     s1+=1325.0;
    }
   }
  }
 } else {
  if(i3<9.685754776000977e-06){
   if(i77<-0.002585965907201171){
    if(i61<0.00037441658787429333){
     s0+=87.0;
     s1+=6.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i3<-1.7881393432617188e-05){
     s0+=17.0;
    } else {
     s0+=14.0;
     s1+=179.0;
    }
   }
  } else {
   if(i32<0.0002986965118907392){
    s0+=6.0;
   } else {
    if(i7<-4.27990235039033e-05){
     s0+=5.0;
     s1+=9832.0;
    } else {
     s0+=65.0;
     s1+=212.0;
    }
   }
  }
 }
}
if(i3<3.796815872192383e-05){
 if(i0<0.08194023370742798){
  if(i23<1.0451585054397583){
   if(i51<0.002141829114407301){
    if(i79<-0.001229017972946167){
     s0+=4704.0;
     s1+=120.0;
    } else {
     s0+=48151.0;
     s1+=46.0;
    }
   } else {
    if(i67<0.01483173482120037){
     s0+=80.0;
     s1+=45.0;
    } else {
     s0+=922.0;
     s1+=42.0;
    }
   }
  } else {
   if(i0<0.06312990188598633){
    if(i38<1.1034480333328247){
     s0+=5042.0;
     s1+=1049.0;
    } else {
     s0+=8769.0;
     s1+=282.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=246.0;
     s1+=499.0;
    } else {
     s0+=1008.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i63<0.03554892539978027){
   if(i7<-1.269704989681486e-05){
    if(i2<0.10013291239738464){
     s0+=110.0;
     s1+=393.0;
    } else {
     s0+=62.0;
     s1+=1923.0;
    }
   } else {
    if(i31<0.05060684680938721){
     s0+=102.0;
     s1+=179.0;
    } else {
     s0+=216.0;
     s1+=30.0;
    }
   }
  } else {
   if(i61<0.001624826341867447){
    if(i34<0.006123437080532312){
     s0+=908.0;
     s1+=381.0;
    } else {
     s0+=62.0;
     s1+=259.0;
    }
   } else {
    if(i9<-0.0003285706043243408){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=135.0;
    }
   }
  }
 }
} else {
 if(i1<0.06563782691955566){
  if(i45<-0.0017820000648498535){
   if(i48<0.2220948338508606){
    if(i25<1.0152723789215088){
     s0+=10.0;
     s1+=349.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i51<0.01465870626270771){
     s0+=29.0;
     s1+=9.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i55<1.0000364780426025){
    if(i15<1.002051830291748){
     s0+=337.0;
    } else {
     s0+=26.0;
     s1+=28.0;
    }
   } else {
    if(i12<1.0034043788909912){
     s0+=61.0;
     s1+=20.0;
    } else {
     s0+=21.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i36<1.0633710622787476){
   s0+=48.0;
  } else {
   if(i2<0.1274578869342804){
    if(i58<-0.006940822582691908){
     s0+=101.0;
     s1+=24.0;
    } else {
     s0+=73.0;
     s1+=1660.0;
    }
   } else {
    if(i44<-1.1704927601385862e-05){
     s0+=20.0;
     s1+=9275.0;
    } else {
     s0+=8.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i5<0.07235640287399292){
 if(i23<1.0576403141021729){
  if(i23<1.0451585054397583){
   if(i50<0.0002715658047236502){
    if(i26<0.00029910021112300456){
     s0+=46626.0;
     s1+=17.0;
    } else {
     s0+=1911.0;
     s1+=42.0;
    }
   } else {
    if(i12<0.9943685531616211){
     s0+=4616.0;
     s1+=4.0;
    } else {
     s0+=742.0;
     s1+=209.0;
    }
   }
  } else {
   if(i11<1.0067192316055298){
    if(i42<0.0003582527278922498){
     s0+=2793.0;
     s1+=19.0;
    } else {
     s0+=1514.0;
     s1+=411.0;
    }
   } else {
    if(i38<1.125725507736206){
     s1+=110.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  if(i37<1.1037919521331787){
   if(i39<0.00034491714905016124){
    if(i6<1.0009697675704956){
     s0+=634.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i17<0.0017443376127630472){
     s0+=703.0;
     s1+=460.0;
    } else {
     s0+=130.0;
     s1+=1375.0;
    }
   }
  } else {
   if(i3<3.165006637573242e-05){
    if(i70<-0.00040708616143092513){
     s0+=83.0;
     s1+=64.0;
    } else {
     s0+=8826.0;
     s1+=619.0;
    }
   } else {
    if(i7<-4.360259845270775e-05){
     s0+=185.0;
     s1+=1319.0;
    } else {
     s0+=170.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i1<0.11897790431976318){
  if(i63<0.03176271915435791){
   if(i43<0.014545142650604248){
    if(i44<-6.498041784652742e-07){
     s0+=58.0;
     s1+=957.0;
    } else {
     s0+=69.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.11503657698631287){
     s0+=337.0;
     s1+=31.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i6<1.00197434425354){
    if(i6<0.9963081479072571){
     s0+=260.0;
    } else {
     s0+=573.0;
     s1+=143.0;
    }
   } else {
    if(i13<0.9995449185371399){
     s0+=28.0;
     s1+=13.0;
    } else {
     s0+=7.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i15<0.9978741407394409){
   s0+=207.0;
  } else {
   if(i36<1.3005231618881226){
    if(i53<0.0004057945916429162){
     s0+=256.0;
     s1+=190.0;
    } else {
     s0+=225.0;
     s1+=2907.0;
    }
   } else {
    if(i2<0.12327155470848083){
     s0+=16.0;
     s1+=44.0;
    } else {
     s0+=6.0;
     s1+=8111.0;
    }
   }
  }
 }
}
if(i8<1.057713270187378){
 if(i6<1.0024954080581665){
  if(i40<1.0103514194488525){
   if(i70<0.0006864767055958509){
    if(i48<0.03042393922805786){
     s0+=55144.0;
     s1+=264.0;
    } else {
     s0+=2600.0;
     s1+=409.0;
    }
   } else {
    if(i2<0.06980633735656738){
     s0+=6464.0;
     s1+=707.0;
    } else {
     s0+=221.0;
     s1+=343.0;
    }
   }
  } else {
   if(i7<-2.537645195843652e-05){
    if(i32<0.002057891571894288){
     s0+=2.0;
     s1+=297.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i48<0.056300535798072815){
     s0+=288.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i49<-1.1373967936378904e-06){
   if(i50<5.365280594560318e-05){
    if(i20<2.276897430419922e-05){
     s0+=104.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i42<0.0002558778796810657){
     s0+=3.0;
    } else {
     s1+=128.0;
    }
   }
  } else {
   if(i61<0.0009165588999167085){
    if(i20<1.6629695892333984e-05){
     s0+=3.0;
     s1+=48.0;
    } else {
     s1+=332.0;
    }
   } else {
    if(i67<0.04724745452404022){
     s0+=11.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i13<1.0068771839141846){
  if(i0<0.09217393398284912){
   if(i38<1.1036889553070068){
    if(i27<0.01960958167910576){
     s0+=826.0;
     s1+=304.0;
    } else {
     s0+=110.0;
     s1+=377.0;
    }
   } else {
    if(i7<-6.658137135673314e-05){
     s0+=316.0;
     s1+=400.0;
    } else {
     s0+=3575.0;
     s1+=271.0;
    }
   }
  } else {
   if(i17<0.004803464747965336){
    if(i31<0.05328214168548584){
     s0+=41.0;
     s1+=610.0;
    } else {
     s0+=850.0;
     s1+=223.0;
    }
   } else {
    if(i18<0.9958839416503906){
     s0+=56.0;
     s1+=116.0;
    } else {
     s0+=82.0;
     s1+=2800.0;
    }
   }
  }
 } else {
  if(i53<0.0008507149177603424){
   if(i1<0.07902607321739197){
    if(i38<1.1463401317596436){
     s1+=22.0;
    } else {
     s0+=273.0;
     s1+=2.0;
    }
   } else {
    if(i49<-1.5570156392641366e-05){
     s0+=8.0;
     s1+=566.0;
    } else {
     s0+=74.0;
     s1+=66.0;
    }
   }
  } else {
   if(i13<1.0076394081115723){
    if(i17<0.0031042881309986115){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=193.0;
    }
   } else {
    if(i14<3.6954879760742188e-06){
     s0+=4.0;
     s1+=64.0;
    } else {
     s0+=7.0;
     s1+=8487.0;
    }
   }
  }
 }
}
if(i2<0.08233362436294556){
 if(i9<0.0005261898040771484){
  if(i51<0.001472671632654965){
   if(i25<1.0066816806793213){
    if(i34<0.0002900020335800946){
     s0+=35283.0;
    } else {
     s0+=24796.0;
     s1+=598.0;
    }
   } else {
    if(i17<0.005122805014252663){
     s0+=1729.0;
     s1+=289.0;
    } else {
     s0+=9.0;
     s1+=72.0;
    }
   }
  } else {
   if(i33<0.0008705950458534062){
    if(i39<0.00040041786269284785){
     s0+=1200.0;
     s1+=20.0;
    } else {
     s0+=743.0;
     s1+=726.0;
    }
   } else {
    if(i14<0.0002359151840209961){
     s0+=4771.0;
     s1+=334.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i12<1.000203251838684){
   if(i72<-0.0006339435931295156){
    s1+=54.0;
   } else {
    if(i52<-0.048309504985809326){
     s0+=22.0;
     s1+=76.0;
    } else {
     s0+=884.0;
     s1+=68.0;
    }
   }
  } else {
   if(i36<1.0646642446517944){
    s0+=37.0;
   } else {
    if(i26<0.00018453602388035506){
     s0+=31.0;
    } else {
     s0+=69.0;
     s1+=824.0;
    }
   }
  }
 }
} else {
 if(i7<-1.199684902530862e-05){
  if(i7<-4.207623715046793e-05){
   if(i19<-0.0006325244903564453){
    if(i27<0.021279890090227127){
     s0+=123.0;
     s1+=79.0;
    } else {
     s0+=66.0;
     s1+=1160.0;
    }
   } else {
    if(i38<1.0569010972976685){
     s0+=6.0;
    } else {
     s0+=58.0;
     s1+=11011.0;
    }
   }
  } else {
   if(i38<1.116454005241394){
    if(i31<0.05450895428657532){
     s0+=5.0;
     s1+=672.0;
    } else {
     s0+=54.0;
     s1+=124.0;
    }
   } else {
    if(i17<0.00221275445073843){
     s0+=170.0;
     s1+=81.0;
    } else {
     s0+=229.0;
     s1+=485.0;
    }
   }
  }
 } else {
  if(i35<0.06302589178085327){
   if(i2<0.1381508708000183){
    if(i15<0.9983929395675659){
     s0+=29.0;
    } else {
     s0+=11.0;
     s1+=161.0;
    }
   } else {
    if(i20<-2.1457672119140625e-05){
     s0+=53.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i18<1.0028133392333984){
    if(i34<0.005335341207683086){
     s0+=766.0;
     s1+=59.0;
    } else {
     s0+=57.0;
     s1+=80.0;
    }
   } else {
    if(i37<1.1977431774139404){
     s0+=3.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
}
if(i47<0.00035040825605392456){
 if(i1<0.08324691653251648){
  if(i15<1.0018346309661865){
   if(i16<1.0074533224105835){
    if(i8<1.0406912565231323){
     s0+=52984.0;
     s1+=291.0;
    } else {
     s0+=4054.0;
     s1+=249.0;
    }
   } else {
    if(i7<-3.2518386433366686e-05){
     s0+=146.0;
     s1+=192.0;
    } else {
     s0+=918.0;
     s1+=36.0;
    }
   }
  } else {
   if(i19<-0.0008017420768737793){
    if(i57<-4.7266483306884766e-05){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=106.0;
    }
   } else {
    if(i23<1.0415534973144531){
     s0+=22.0;
    } else {
     s0+=12.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i20<-6.288290023803711e-06){
   if(i48<0.03711321949958801){
    if(i11<1.008575439453125){
     s0+=267.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<-2.2411346435546875e-05){
     s0+=5.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i23<1.046682596206665){
    if(i34<0.0008865282870829105){
     s0+=16.0;
     s1+=16.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i17<0.00024231459246948361){
     s0+=8.0;
    } else {
     s0+=12.0;
     s1+=1033.0;
    }
   }
  }
 }
} else {
 if(i18<1.0025529861450195){
  if(i72<-0.00021839491091668606){
   if(i17<0.00577489472925663){
    if(i1<0.08958151936531067){
     s0+=1536.0;
     s1+=270.0;
    } else {
     s0+=584.0;
     s1+=1155.0;
    }
   } else {
    if(i25<0.93113112449646){
     s0+=95.0;
     s1+=46.0;
    } else {
     s0+=60.0;
     s1+=2024.0;
    }
   }
  } else {
   if(i3<-1.850724220275879e-05){
    if(i13<0.9850696325302124){
     s0+=4366.0;
     s1+=68.0;
    } else {
     s0+=1979.0;
     s1+=405.0;
    }
   } else {
    if(i1<0.08417624235153198){
     s0+=2308.0;
     s1+=682.0;
    } else {
     s0+=332.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i8<1.041447401046753){
   if(i76<2.126910771949042e-07){
    if(i13<0.9810892939567566){
     s0+=14.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i5<0.1014302670955658){
     s0+=639.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i4<0.0005105137825012207){
    if(i17<0.008969924412667751){
     s0+=260.0;
     s1+=237.0;
    } else {
     s0+=82.0;
     s1+=313.0;
    }
   } else {
    if(i2<0.08318096399307251){
     s0+=106.0;
     s1+=586.0;
    } else {
     s0+=58.0;
     s1+=8888.0;
    }
   }
  }
 }
}
if(i8<1.0555626153945923){
 if(i6<1.0024986267089844){
  if(i1<0.08110269904136658){
   if(i8<1.0412344932556152){
    if(i78<-0.0005806386470794678){
     s0+=9931.0;
     s1+=437.0;
    } else {
     s0+=49673.0;
     s1+=145.0;
    }
   } else {
    if(i71<0.9865660071372986){
     s0+=381.0;
     s1+=202.0;
    } else {
     s0+=3841.0;
     s1+=330.0;
    }
   }
  } else {
   if(i38<1.0670123100280762){
    if(i46<0.00010085105895996094){
     s0+=380.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=29.0;
    }
   } else {
    if(i43<0.013877034187316895){
     s0+=146.0;
     s1+=639.0;
    } else {
     s0+=145.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i47<0.00016248287283815444){
   if(i28<1.2392117977142334){
    s1+=36.0;
   } else {
    s0+=82.0;
   }
  } else {
   if(i15<1.001153826713562){
    if(i39<0.0014449958689510822){
     s1+=4.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i17<0.0012107595102861524){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=454.0;
    }
   }
  }
 }
} else {
 if(i4<0.00047200918197631836){
  if(i0<0.08395859599113464){
   if(i45<0.002570420503616333){
    if(i1<0.0668725073337555){
     s0+=3304.0;
     s1+=521.0;
    } else {
     s0+=263.0;
     s1+=303.0;
    }
   } else {
    if(i50<-0.0001228268665727228){
     s0+=12.0;
     s1+=9.0;
    } else {
     s0+=1392.0;
     s1+=21.0;
    }
   }
  } else {
   if(i41<0.05820918083190918){
    if(i34<0.0005618436844088137){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=1216.0;
    }
   } else {
    if(i34<0.006537489593029022){
     s0+=1074.0;
     s1+=566.0;
    } else {
     s0+=36.0;
     s1+=649.0;
    }
   }
  }
 } else {
  if(i1<0.08297982811927795){
   if(i38<1.1961640119552612){
    if(i43<0.01251131296157837){
     s0+=14.0;
     s1+=546.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i60<-0.0041391849517822266){
     s0+=4.0;
     s1+=182.0;
    } else {
     s0+=241.0;
     s1+=61.0;
    }
   }
  } else {
   if(i0<0.13138559460639954){
    if(i62<-0.02790035307407379){
     s0+=71.0;
     s1+=16.0;
    } else {
     s0+=45.0;
     s1+=1347.0;
    }
   } else {
    if(i4<0.0005219578742980957){
     s0+=13.0;
     s1+=102.0;
    } else {
     s0+=23.0;
     s1+=9273.0;
    }
   }
  }
 }
}
if(i4<0.0005478262901306152){
 if(i35<0.06663542985916138){
  if(i10<1.0410094261169434){
   if(i38<1.0556960105895996){
    s0+=41955.0;
   } else {
    if(i5<0.07135769724845886){
     s0+=21252.0;
     s1+=1301.0;
    } else {
     s0+=70.0;
     s1+=171.0;
    }
   }
  } else {
   if(i2<0.08230835199356079){
    if(i17<0.004344141110777855){
     s0+=4757.0;
     s1+=525.0;
    } else {
     s0+=665.0;
     s1+=387.0;
    }
   } else {
    if(i28<1.0762357711791992){
     s0+=17.0;
    } else {
     s0+=52.0;
     s1+=1163.0;
    }
   }
  }
 } else {
  if(i2<0.10890716314315796){
   if(i31<0.04244464635848999){
    if(i34<0.006237505469471216){
     s0+=82.0;
     s1+=64.0;
    } else {
     s0+=8.0;
     s1+=47.0;
    }
   } else {
    if(i61<0.0005353651940822601){
     s0+=602.0;
     s1+=22.0;
    } else {
     s0+=374.0;
     s1+=79.0;
    }
   }
  } else {
   if(i46<-0.00013780593872070312){
    if(i18<0.9982978105545044){
     s0+=256.0;
     s1+=1.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i63<0.04704183340072632){
     s0+=98.0;
     s1+=1284.0;
    } else {
     s0+=299.0;
     s1+=428.0;
    }
   }
  }
 }
} else {
 if(i2<0.05748438835144043){
  if(i44<-1.4896740140102338e-05){
   if(i51<0.0019253415521234274){
    if(i34<0.002921574516221881){
     s0+=1.0;
     s1+=53.0;
    } else {
     s0+=48.0;
     s1+=1.0;
    }
   } else {
    if(i19<-0.0024031996726989746){
     s0+=24.0;
     s1+=13.0;
    } else {
     s0+=24.0;
     s1+=319.0;
    }
   }
  } else {
   if(i50<8.740224438952282e-05){
    if(i56<0.008363213390111923){
     s0+=268.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i14<0.00021392107009887695){
   if(i27<0.028453711420297623){
    if(i8<1.0833379030227661){
     s0+=41.0;
     s1+=550.0;
    } else {
     s0+=126.0;
     s1+=247.0;
    }
   } else {
    if(i29<0.007680115755647421){
     s0+=10.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=2107.0;
    }
   }
  } else {
   s1+=8395.0;
  }
 }
}
if(i5<0.07258680462837219){
 if(i13<1.0061447620391846){
  if(i3<3.904104232788086e-05){
   if(i52<-0.028415799140930176){
    if(i4<0.0001747608184814453){
     s0+=2332.0;
     s1+=492.0;
    } else {
     s0+=85.0;
     s1+=143.0;
    }
   } else {
    if(i1<0.08320659399032593){
     s0+=65386.0;
     s1+=1248.0;
    } else {
     s0+=382.0;
     s1+=493.0;
    }
   }
  } else {
   if(i18<0.9987786412239075){
    s0+=269.0;
   } else {
    if(i51<0.007777192629873753){
     s0+=135.0;
     s1+=303.0;
    } else {
     s0+=5.0;
     s1+=237.0;
    }
   }
  }
 } else {
  if(i53<0.0008684444474056363){
   if(i14<0.00023412704467773438){
    if(i30<0.9998235702514648){
     s1+=91.0;
    } else {
     s0+=576.0;
     s1+=41.0;
    }
   } else {
    s1+=188.0;
   }
  } else {
   if(i68<4.630248326975561e-07){
    if(i57<0.005570411682128906){
     s0+=16.0;
     s1+=1373.0;
    } else {
     s0+=20.0;
     s1+=49.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
} else {
 if(i14<9.685754776000977e-05){
  if(i29<0.02555401250720024){
   if(i15<0.9985244870185852){
    if(i41<0.043564677238464355){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=367.0;
     s1+=10.0;
    }
   } else {
    if(i31<0.04291492700576782){
     s0+=47.0;
     s1+=770.0;
    } else {
     s0+=1207.0;
     s1+=634.0;
    }
   }
  } else {
   if(i46<-0.0001322925090789795){
    if(i61<0.0007902819197624922){
     s0+=147.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i0<0.08614259958267212){
     s0+=76.0;
     s1+=52.0;
    } else {
     s0+=94.0;
     s1+=2359.0;
    }
   }
  }
 } else {
  if(i44<-1.8787300177791622e-06){
   if(i55<0.995570182800293){
    s0+=5.0;
   } else {
    if(i22<1.0219659805297852){
     s0+=42.0;
     s1+=1794.0;
    } else {
     s0+=15.0;
     s1+=6681.0;
    }
   }
  } else {
   s0+=23.0;
  }
 }
}
if(i2<0.08385711908340454){
 if(i19<0.0012117624282836914){
  if(i10<1.0401519536972046){
   if(i4<0.0006022751331329346){
    if(i51<0.0017414403846487403){
     s0+=58888.0;
     s1+=489.0;
    } else {
     s0+=4076.0;
     s1+=632.0;
    }
   } else {
    if(i74<0.00011547406029421836){
     s0+=20.0;
     s1+=183.0;
    } else {
     s0+=108.0;
     s1+=18.0;
    }
   }
  } else {
   if(i3<1.2814998626708984e-05){
    if(i59<0.03934292495250702){
     s0+=3252.0;
     s1+=181.0;
    } else {
     s0+=2287.0;
     s1+=505.0;
    }
   } else {
    if(i51<0.004106353968381882){
     s0+=809.0;
     s1+=408.0;
    } else {
     s0+=33.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i44<-1.4428353097173385e-05){
   s1+=498.0;
  } else {
   if(i69<0.9998828172683716){
    s1+=40.0;
   } else {
    if(i49<-3.001401091751177e-05){
     s1+=1.0;
    } else {
     s0+=111.0;
    }
   }
  }
 }
} else {
 if(i46<-0.0002544522285461426){
  if(i53<0.003231124486774206){
   if(i3<-3.3408403396606445e-05){
    s0+=346.0;
   } else {
    if(i65<1.6036796296248212e-05){
     s0+=28.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   s1+=36.0;
  }
 } else {
  if(i3<3.1888484954833984e-05){
   if(i41<0.058965712785720825){
    if(i69<1.0005083084106445){
     s0+=39.0;
     s1+=1801.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i53<0.0009280603262595832){
     s0+=599.0;
     s1+=265.0;
    } else {
     s0+=370.0;
     s1+=987.0;
    }
   }
  } else {
   if(i19<-0.0006322860717773438){
    if(i36<1.3355915546417236){
     s0+=106.0;
     s1+=251.0;
    } else {
     s0+=11.0;
     s1+=474.0;
    }
   } else {
    if(i29<0.01647472009062767){
     s0+=58.0;
     s1+=1372.0;
    } else {
     s0+=1.0;
     s1+=8733.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i4<0.0006018877029418945){
  if(i47<0.0002929848851636052){
   if(i25<1.0068150758743286){
    if(i8<1.0436501502990723){
     s0+=53272.0;
     s1+=292.0;
    } else {
     s0+=1827.0;
     s1+=164.0;
    }
   } else {
    if(i2<0.0781671404838562){
     s0+=592.0;
     s1+=56.0;
    } else {
     s0+=11.0;
     s1+=113.0;
    }
   }
  } else {
   if(i28<1.1939998865127563){
    if(i33<0.0004679509438574314){
     s0+=2191.0;
     s1+=80.0;
    } else {
     s0+=705.0;
     s1+=962.0;
    }
   } else {
    if(i12<0.9970828294754028){
     s0+=5703.0;
     s1+=114.0;
    } else {
     s0+=822.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i50<2.3820026399334893e-05){
   if(i7<-4.241429269313812e-05){
    s1+=92.0;
   } else {
    if(i20<2.872943878173828e-05){
     s0+=151.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   }
  } else {
   if(i29<0.0021294481121003628){
    if(i36<1.0682322978973389){
     s0+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i23<1.0357894897460938){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=674.0;
    }
   }
  }
 }
} else {
 if(i12<1.0018609762191772){
  if(i18<1.0004725456237793){
   if(i34<0.0062011051923036575){
    if(i53<0.0020546121522784233){
     s0+=3801.0;
     s1+=684.0;
    } else {
     s0+=288.0;
     s1+=308.0;
    }
   } else {
    if(i81<0.0008491752669215202){
     s0+=211.0;
     s1+=123.0;
    } else {
     s0+=53.0;
     s1+=627.0;
    }
   }
  } else {
   if(i74<7.60710536269471e-05){
    if(i17<0.00290159834548831){
     s0+=330.0;
     s1+=176.0;
    } else {
     s0+=178.0;
     s1+=368.0;
    }
   } else {
    if(i2<0.10979712009429932){
     s0+=397.0;
     s1+=317.0;
    } else {
     s0+=42.0;
     s1+=1361.0;
    }
   }
  }
 } else {
  if(i3<3.266334533691406e-05){
   if(i69<0.9999072551727295){
    if(i7<-2.0725972717627883e-05){
     s0+=31.0;
     s1+=524.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i17<0.003166212234646082){
     s0+=298.0;
     s1+=147.0;
    } else {
     s0+=9.0;
     s1+=142.0;
    }
   }
  } else {
   if(i17<0.0024069484788924456){
    if(i44<-1.4525476217386313e-05){
     s0+=1.0;
     s1+=204.0;
    } else {
     s0+=101.0;
     s1+=2.0;
    }
   } else {
    if(i23<1.0629007816314697){
     s0+=9.0;
     s1+=40.0;
    } else {
     s0+=44.0;
     s1+=9422.0;
    }
   }
  }
 }
}
if(i1<0.08514660596847534){
 if(i7<-6.350137118715793e-05){
  if(i52<0.00685921311378479){
   if(i66<0.9610902667045593){
    if(i53<0.006415048614144325){
     s0+=232.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=47.0;
    }
   } else {
    if(i4<0.0002525150775909424){
     s0+=107.0;
     s1+=76.0;
    } else {
     s0+=70.0;
     s1+=735.0;
    }
   }
  } else {
   if(i66<1.0016201734542847){
    if(i0<0.06615260243415833){
     s0+=839.0;
     s1+=6.0;
    } else {
     s0+=72.0;
     s1+=25.0;
    }
   } else {
    if(i61<0.0002786035474855453){
     s0+=3.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i42<0.0003042430616915226){
   if(i22<1.0082908868789673){
    if(i66<1.008594274520874){
     s0+=46708.0;
     s1+=56.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   } else {
    if(i7<-2.787432458717376e-05){
     s0+=5.0;
     s1+=54.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i6<0.9979225397109985){
    if(i43<0.0012422800064086914){
     s0+=3579.0;
     s1+=255.0;
    } else {
     s0+=10067.0;
     s1+=99.0;
    }
   } else {
    if(i18<1.0006542205810547){
     s0+=6152.0;
     s1+=907.0;
    } else {
     s0+=1074.0;
     s1+=770.0;
    }
   }
  }
 }
} else {
 if(i30<0.9990403652191162){
  if(i18<0.999919593334198){
   if(i18<0.9948311448097229){
    s0+=552.0;
   } else {
    if(i39<0.0014954868238419294){
     s0+=7.0;
     s1+=5.0;
    } else {
     s0+=111.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<-0.0037527382373809814){
    s0+=1.0;
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i14<6.0230493545532227e-05){
   if(i29<0.023346535861492157){
    if(i27<0.023759104311466217){
     s0+=794.0;
     s1+=562.0;
    } else {
     s0+=240.0;
     s1+=846.0;
    }
   } else {
    if(i17<0.003630175720900297){
     s0+=186.0;
     s1+=97.0;
    } else {
     s0+=49.0;
     s1+=2449.0;
    }
   }
  } else {
   if(i4<0.00016379356384277344){
    if(i32<0.0006453105597756803){
     s0+=58.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=127.0;
    }
   } else {
    if(i0<0.12092146277427673){
     s0+=42.0;
     s1+=1298.0;
    } else {
     s0+=5.0;
     s1+=8723.0;
    }
   }
  }
 }
}
if(i5<0.07161784172058105){
 if(i2<0.07791829109191895){
  if(i15<1.0018723011016846){
   if(i51<0.0015407588798552752){
    if(i13<1.0039148330688477){
     s0+=60975.0;
     s1+=727.0;
    } else {
     s0+=763.0;
     s1+=190.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=1655.0;
     s1+=691.0;
    } else {
     s0+=4714.0;
     s1+=321.0;
    }
   }
  } else {
   if(i6<1.0029139518737793){
    if(i4<0.00019180774688720703){
     s0+=427.0;
     s1+=13.0;
    } else {
     s0+=174.0;
     s1+=116.0;
    }
   } else {
    if(i61<0.0003246124251745641){
     s0+=65.0;
     s1+=71.0;
    } else {
     s0+=34.0;
     s1+=617.0;
    }
   }
  }
 } else {
  if(i30<0.9993287324905396){
   if(i30<0.9993013143539429){
    s0+=124.0;
   } else {
    if(i23<1.047412395477295){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i41<0.04858195781707764){
    if(i6<0.9961977005004883){
     s0+=6.0;
    } else {
     s0+=20.0;
     s1+=1916.0;
    }
   } else {
    if(i2<0.09129449725151062){
     s0+=99.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i6<1.0015718936920166){
  if(i7<-1.4588751582778059e-05){
   if(i2<0.10586181282997131){
    if(i35<0.060415416955947876){
     s0+=35.0;
     s1+=200.0;
    } else {
     s0+=395.0;
     s1+=178.0;
    }
   } else {
    if(i63<0.05214416980743408){
     s0+=61.0;
     s1+=1500.0;
    } else {
     s0+=134.0;
     s1+=310.0;
    }
   }
  } else {
   if(i27<0.024801980704069138){
    if(i50<0.0005530755734071136){
     s0+=760.0;
     s1+=33.0;
    } else {
     s0+=69.0;
     s1+=62.0;
    }
   } else {
    if(i38<1.2552803754806519){
     s0+=124.0;
     s1+=186.0;
    } else {
     s0+=224.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i6<1.0037964582443237){
   if(i17<0.004604494199156761){
    if(i71<1.0265734195709229){
     s0+=10.0;
     s1+=173.0;
    } else {
     s0+=99.0;
     s1+=58.0;
    }
   } else {
    if(i5<0.08501830697059631){
     s0+=36.0;
     s1+=97.0;
    } else {
     s0+=24.0;
     s1+=1178.0;
    }
   }
  } else {
   if(i27<0.021736137568950653){
    if(i49<0.00011663811892503873){
     s0+=1.0;
     s1+=1125.0;
    } else {
     s0+=14.0;
     s1+=47.0;
    }
   } else {
    if(i29<0.01403576135635376){
     s0+=8.0;
     s1+=412.0;
    } else {
     s1+=6926.0;
    }
   }
  }
 }
}
if(i2<0.08316218852996826){
 if(i6<1.0024782419204712){
  if(i8<1.0428826808929443){
   if(i57<-0.002063751220703125){
    if(i33<0.0008686497458256781){
     s0+=1277.0;
     s1+=395.0;
    } else {
     s0+=3174.0;
     s1+=87.0;
    }
   } else {
    if(i26<0.000291947100777179){
     s0+=50101.0;
     s1+=78.0;
    } else {
     s0+=5962.0;
     s1+=150.0;
    }
   }
  } else {
   if(i27<0.01988224685192108){
    if(i7<-1.6338588466169313e-05){
     s0+=1929.0;
     s1+=397.0;
    } else {
     s0+=4951.0;
     s1+=138.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=142.0;
     s1+=537.0;
    } else {
     s0+=1543.0;
     s1+=374.0;
    }
   }
  }
 } else {
  if(i39<0.0018134602578356862){
   if(i32<0.000340489816153422){
    s0+=2.0;
   } else {
    if(i47<0.00011482839909149334){
     s0+=11.0;
     s1+=3.0;
    } else {
     s1+=646.0;
    }
   }
  } else {
   if(i43<-0.009189128875732422){
    if(i2<0.01344364881515503){
     s0+=21.0;
     s1+=52.0;
    } else {
     s0+=6.0;
     s1+=190.0;
    }
   } else {
    if(i46<0.0002370774745941162){
     s0+=200.0;
     s1+=6.0;
    } else {
     s0+=43.0;
     s1+=52.0;
    }
   }
  }
 }
} else {
 if(i19<0.000367581844329834){
  if(i15<0.9978988170623779){
   if(i73<0.9981411695480347){
    s0+=404.0;
   } else {
    if(i21<0.9826464056968689){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i27<0.028271328657865524){
    if(i71<1.0265707969665527){
     s0+=235.0;
     s1+=847.0;
    } else {
     s0+=643.0;
     s1+=205.0;
    }
   } else {
    if(i60<0.004921257495880127){
     s0+=40.0;
     s1+=1924.0;
    } else {
     s0+=171.0;
     s1+=1062.0;
    }
   }
  }
 } else {
  if(i15<0.9989224672317505){
   if(i29<0.07402198761701584){
    s0+=15.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i32<0.0005815459880977869){
    if(i33<0.0008342287037521601){
     s1+=130.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i17<0.001891218009404838){
     s0+=49.0;
     s1+=138.0;
    } else {
     s0+=30.0;
     s1+=9824.0;
    }
   }
  }
 }
}
if(i6<1.0024352073669434){
 if(i11<1.0081498622894287){
  if(i75<0.04727187752723694){
   if(i23<1.05519437789917){
    if(i51<0.004743476398289204){
     s0+=52957.0;
     s1+=237.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i16<0.9868446588516235){
     s0+=48.0;
     s1+=153.0;
    } else {
     s0+=4170.0;
     s1+=470.0;
    }
   }
  } else {
   if(i6<0.9979487657546997){
    if(i8<1.0401363372802734){
     s0+=5542.0;
     s1+=151.0;
    } else {
     s0+=2607.0;
     s1+=483.0;
    }
   } else {
    if(i7<-6.813947948103305e-06){
     s0+=1883.0;
     s1+=2058.0;
    } else {
     s0+=2353.0;
     s1+=302.0;
    }
   }
  }
 } else {
  if(i7<-3.353039937792346e-05){
   if(i9<0.00034305453300476074){
    if(i38<1.1986849308013916){
     s1+=812.0;
    } else {
     s0+=42.0;
     s1+=342.0;
    }
   } else {
    if(i65<1.62953365361318e-05){
     s0+=100.0;
     s1+=198.0;
    } else {
     s1+=97.0;
    }
   }
  } else {
   if(i1<0.12464547157287598){
    if(i61<0.0006241720402613282){
     s0+=874.0;
     s1+=52.0;
    } else {
     s0+=56.0;
     s1+=34.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=33.0;
     s1+=242.0;
    } else {
     s0+=88.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i2<0.06267303228378296){
  if(i71<0.9950920343399048){
   if(i14<-0.00042814016342163086){
    if(i0<0.04034963250160217){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.9976791143417358){
     s0+=14.0;
    } else {
     s0+=22.0;
     s1+=326.0;
    }
   }
  } else {
   if(i37<1.2371783256530762){
    if(i8<1.0343273878097534){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=103.0;
    }
   } else {
    if(i73<1.0050773620605469){
     s0+=167.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i7<-4.329586590756662e-05){
   if(i29<0.019026419147849083){
    if(i66<0.9974077939987183){
     s0+=79.0;
     s1+=73.0;
    } else {
     s0+=14.0;
     s1+=1997.0;
    }
   } else {
    if(i12<0.997458815574646){
     s0+=1.0;
     s1+=363.0;
    } else {
     s1+=8344.0;
    }
   }
  } else {
   if(i38<1.2296775579452515){
    if(i17<0.003316669724881649){
     s0+=19.0;
    } else {
     s1+=191.0;
    }
   } else {
    if(i26<0.01405355054885149){
     s0+=37.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i26<0.00030721232178620994){
  if(i25<1.008527159690857){
   if(i11<1.0109598636627197){
    if(i18<1.0031108856201172){
     s0+=53422.0;
     s1+=225.0;
    } else {
     s0+=49.0;
     s1+=32.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i36<1.1063789129257202){
    if(i18<0.9995527863502502){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=15.0;
     s1+=141.0;
    }
   } else {
    if(i81<0.00018886236648540944){
     s0+=86.0;
    } else {
     s0+=18.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i72<-9.436227264814079e-05){
   if(i1<0.07910490036010742){
    if(i34<0.0011195074766874313){
     s0+=561.0;
     s1+=489.0;
    } else {
     s0+=3877.0;
     s1+=264.0;
    }
   } else {
    if(i41<0.053741455078125){
     s0+=85.0;
     s1+=1560.0;
    } else {
     s0+=942.0;
     s1+=1395.0;
    }
   }
  } else {
   if(i4<-0.0002828836441040039){
    if(i67<0.06404109299182892){
     s0+=3633.0;
     s1+=315.0;
    } else {
     s0+=5050.0;
     s1+=40.0;
    }
   } else {
    if(i49<2.3570755729451776e-05){
     s0+=1780.0;
     s1+=146.0;
    } else {
     s0+=887.0;
     s1+=857.0;
    }
   }
  }
 }
} else {
 if(i0<0.05434945225715637){
  if(i26<0.0002831602469086647){
   if(i30<1.0009267330169678){
    if(i49<8.429988156422041e-06){
     s0+=243.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i8<1.0296695232391357){
     s0+=3.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i43<0.001135408878326416){
    if(i61<0.0004630279145203531){
     s0+=51.0;
     s1+=82.0;
    } else {
     s0+=30.0;
     s1+=409.0;
    }
   } else {
    if(i39<0.0018933459650725126){
     s1+=5.0;
    } else {
     s0+=56.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i29<0.016867419704794884){
   if(i19<0.000430375337600708){
    if(i35<0.047548532485961914){
     s0+=8.0;
     s1+=92.0;
    } else {
     s0+=125.0;
     s1+=86.0;
    }
   } else {
    if(i13<1.007612705230713){
     s0+=46.0;
     s1+=126.0;
    } else {
     s0+=21.0;
     s1+=1556.0;
    }
   }
  } else {
   if(i14<-0.00011849403381347656){
    if(i69<0.9999896287918091){
     s0+=33.0;
     s1+=49.0;
    } else {
     s0+=1.0;
     s1+=474.0;
    }
   } else {
    if(i1<0.1289386749267578){
     s0+=4.0;
     s1+=716.0;
    } else {
     s1+=8092.0;
    }
   }
  }
 }
}
if(i13<1.0060046911239624){
 if(i1<0.08408471941947937){
  if(i52<-0.028887540102005005){
   if(i4<0.00031256675720214844){
    if(i38<1.055511236190796){
     s0+=586.0;
    } else {
     s0+=1665.0;
     s1+=539.0;
    }
   } else {
    if(i42<0.00026130228070542216){
     s0+=15.0;
    } else {
     s0+=32.0;
     s1+=264.0;
    }
   }
  } else {
   if(i64<-0.0012758970260620117){
    if(i2<0.056721240282058716){
     s0+=4190.0;
     s1+=397.0;
    } else {
     s0+=235.0;
     s1+=294.0;
    }
   } else {
    if(i4<0.0007063448429107666){
     s0+=61694.0;
     s1+=805.0;
    } else {
     s0+=46.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i9<-0.0003927648067474365){
   if(i49<0.00018563203047960997){
    if(i20<-1.7255544662475586e-05){
     s0+=621.0;
    } else {
     s0+=62.0;
     s1+=6.0;
    }
   } else {
    if(i35<0.07317402958869934){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   }
  } else {
   if(i60<0.0028263330459594727){
    if(i2<0.08380219340324402){
     s0+=59.0;
     s1+=29.0;
    } else {
     s0+=124.0;
     s1+=2346.0;
    }
   } else {
    if(i1<0.13658258318901062){
     s0+=805.0;
     s1+=336.0;
    } else {
     s0+=229.0;
     s1+=1718.0;
    }
   }
  }
 }
} else {
 if(i15<1.0014944076538086){
  if(i30<1.000135064125061){
   if(i44<-1.6759465779614402e-06){
    if(i47<0.00021627359092235565){
     s0+=13.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=1546.0;
    }
   } else {
    if(i49<1.666914795350749e-05){
     s0+=81.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i44<-1.2773086382367183e-05){
    if(i5<0.09420716762542725){
     s0+=24.0;
     s1+=149.0;
    } else {
     s1+=208.0;
    }
   } else {
    if(i33<0.0008600903674960136){
     s1+=42.0;
    } else {
     s0+=547.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i6<1.0041329860687256){
   if(i28<1.2392117977142334){
    s1+=152.0;
   } else {
    if(i17<0.003657975234091282){
     s0+=95.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=100.0;
    }
   }
  } else {
   if(i66<1.0014090538024902){
    if(i13<1.0061168670654297){
     s0+=2.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=186.0;
    }
   } else {
    s1+=7819.0;
   }
  }
 }
}
if(i7<-7.899619959061965e-05){
 if(i19<-0.0033528506755828857){
  if(i2<0.08659279346466064){
   if(i8<1.081773281097412){
    if(i0<0.013986855745315552){
     s0+=345.0;
    } else {
     s0+=128.0;
     s1+=7.0;
    }
   } else {
    if(i1<0.009409397840499878){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  } else {
   if(i46<0.0004985332489013672){
    s1+=58.0;
   } else {
    if(i72<-0.00045822563697583973){
     s1+=2.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i15<0.9980791211128235){
   s0+=176.0;
  } else {
   if(i0<0.01658347249031067){
    if(i56<0.026738211512565613){
     s0+=78.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   } else {
    if(i72<-0.0005531379720196128){
     s0+=6.0;
     s1+=7976.0;
    } else {
     s0+=138.0;
     s1+=2976.0;
    }
   }
  }
 }
} else {
 if(i40<1.008375644683838){
  if(i48<0.03116614930331707){
   if(i7<-4.5298278564587235e-05){
    if(i32<0.0014749590773135424){
     s0+=1.0;
     s1+=193.0;
    } else {
     s0+=370.0;
     s1+=82.0;
    }
   } else {
    if(i43<-0.006823450326919556){
     s0+=791.0;
     s1+=287.0;
    } else {
     s0+=57083.0;
     s1+=500.0;
    }
   }
  } else {
   if(i10<1.0334362983703613){
    if(i28<1.1989223957061768){
     s0+=1379.0;
     s1+=488.0;
    } else {
     s0+=4707.0;
     s1+=135.0;
    }
   } else {
    if(i0<0.08298355340957642){
     s0+=2068.0;
     s1+=812.0;
    } else {
     s0+=336.0;
     s1+=1063.0;
    }
   }
  }
 } else {
  if(i28<1.2371783256530762){
   if(i7<-2.1444924641400576e-05){
    if(i23<1.0406510829925537){
     s0+=24.0;
    } else {
     s0+=22.0;
     s1+=1801.0;
    }
   } else {
    if(i4<0.00043773651123046875){
     s0+=1250.0;
     s1+=109.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i16<1.026921033859253){
    if(i39<0.010554155334830284){
     s0+=1811.0;
     s1+=167.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   } else {
    if(i11<1.023763656616211){
     s0+=336.0;
     s1+=174.0;
    } else {
     s0+=13.0;
     s1+=174.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i13<1.0044357776641846){
  if(i23<1.0486011505126953){
   if(i50<0.0002718777395784855){
    if(i6<1.0026092529296875){
     s0+=50410.0;
     s1+=87.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i58<-0.0015340661630034447){
     s0+=4361.0;
     s1+=24.0;
    } else {
     s0+=1372.0;
     s1+=294.0;
    }
   }
  } else {
   if(i39<0.0016193620394915342){
    if(i0<0.05915364623069763){
     s0+=2517.0;
     s1+=493.0;
    } else {
     s0+=269.0;
     s1+=566.0;
    }
   } else {
    if(i15<1.0019135475158691){
     s0+=4583.0;
     s1+=193.0;
    } else {
     s0+=154.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i17<0.0018764138221740723){
   if(i70<0.00022192760661710054){
    if(i74<3.972796548623592e-05){
     s1+=44.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i33<0.007973733358085155){
     s0+=359.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i0<0.04495742917060852){
    if(i68<-3.6938909033779055e-06){
     s1+=25.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i18<0.9983601570129395){
     s0+=10.0;
    } else {
     s0+=4.0;
     s1+=277.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004811286926269531){
  if(i17<0.004691988229751587){
   if(i2<0.08230835199356079){
    if(i36<1.103413462638855){
     s0+=1091.0;
     s1+=407.0;
    } else {
     s0+=3487.0;
     s1+=142.0;
    }
   } else {
    if(i35<0.06740450859069824){
     s0+=40.0;
     s1+=505.0;
    } else {
     s0+=1067.0;
     s1+=523.0;
    }
   }
  } else {
   if(i72<-0.00022611406166106462){
    if(i68<1.1730824098776793e-06){
     s0+=121.0;
     s1+=1570.0;
    } else {
     s0+=199.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.09228178858757019){
     s0+=554.0;
     s1+=150.0;
    } else {
     s0+=53.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i72<-0.000544424750842154){
   if(i2<0.06177857518196106){
    if(i78<0.0021167993545532227){
     s1+=55.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i0<0.1267244517803192){
     s0+=6.0;
     s1+=287.0;
    } else {
     s1+=7280.0;
    }
   }
  } else {
   if(i19<-0.0005560517311096191){
    if(i32<0.011085364036262035){
     s0+=166.0;
     s1+=474.0;
    } else {
     s0+=72.0;
     s1+=12.0;
    }
   } else {
    if(i18<0.9977445006370544){
     s0+=24.0;
     s1+=12.0;
    } else {
     s0+=135.0;
     s1+=3341.0;
    }
   }
  }
 }
}
if(i1<0.08340519666671753){
 if(i10<1.0406901836395264){
  if(i6<1.002550482749939){
   if(i56<0.008225762285292149){
    if(i42<0.0002812713210005313){
     s0+=44768.0;
     s1+=38.0;
    } else {
     s0+=16907.0;
     s1+=790.0;
    }
   } else {
    if(i6<0.9952913522720337){
     s0+=564.0;
     s1+=9.0;
    } else {
     s0+=725.0;
     s1+=310.0;
    }
   }
  } else {
   if(i44<-1.4913164704921655e-05){
    if(i32<0.011732282117009163){
     s1+=237.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i54<0.999160647392273){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=83.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<1.001624584197998){
   if(i29<0.05621375888586044){
    if(i27<0.020816676318645477){
     s0+=4349.0;
     s1+=279.0;
    } else {
     s0+=1085.0;
     s1+=468.0;
    }
   } else {
    if(i79<0.0012067556381225586){
     s1+=58.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i15<1.0016746520996094){
    if(i28<1.1386182308197021){
     s0+=49.0;
     s1+=200.0;
    } else {
     s0+=408.0;
     s1+=72.0;
    }
   } else {
    if(i55<0.9975759983062744){
     s0+=10.0;
    } else {
     s0+=22.0;
     s1+=520.0;
    }
   }
  }
 }
} else {
 if(i7<-1.9564462490961887e-05){
  if(i7<-4.808055382454768e-05){
   if(i37<1.0696141719818115){
    s0+=13.0;
   } else {
    if(i13<1.0022672414779663){
     s0+=201.0;
     s1+=2088.0;
    } else {
     s0+=25.0;
     s1+=10126.0;
    }
   }
  } else {
   if(i58<-0.005222458858042955){
    if(i39<0.00850139930844307){
     s0+=248.0;
     s1+=179.0;
    } else {
     s0+=40.0;
     s1+=156.0;
    }
   } else {
    if(i3<-4.157423973083496e-05){
     s0+=18.0;
     s1+=17.0;
    } else {
     s0+=42.0;
     s1+=1059.0;
    }
   }
  }
 } else {
  if(i20<-1.5407800674438477e-05){
   if(i44<-1.1580223144846968e-05){
    if(i78<-0.0007352530956268311){
     s1+=1.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i69<1.0000277757644653){
     s0+=620.0;
    } else {
     s0+=10.0;
     s1+=4.0;
    }
   }
  } else {
   if(i49<3.4194883482996374e-05){
    if(i44<-1.2249074643477798e-05){
     s1+=32.0;
    } else {
     s0+=549.0;
     s1+=89.0;
    }
   } else {
    if(i45<0.00382077693939209){
     s0+=65.0;
     s1+=407.0;
    } else {
     s0+=163.0;
     s1+=127.0;
    }
   }
  }
 }
}
if(i2<0.08319085836410522){
 if(i9<0.000535815954208374){
  if(i70<0.0007180303218774498){
   if(i23<1.0485899448394775){
    if(i40<1.0132228136062622){
     s0+=52864.0;
     s1+=94.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.004097301512956619){
     s0+=7335.0;
     s1+=534.0;
    } else {
     s0+=518.0;
     s1+=413.0;
    }
   }
  } else {
   if(i33<0.0008783999364823103){
    if(i28<1.0840110778808594){
     s0+=1126.0;
    } else {
     s0+=460.0;
     s1+=772.0;
    }
   } else {
    if(i56<0.007113526109606028){
     s0+=4758.0;
     s1+=76.0;
    } else {
     s0+=1426.0;
     s1+=248.0;
    }
   }
  }
 } else {
  if(i45<-0.0005682706832885742){
   if(i6<1.001605749130249){
    if(i2<0.02292180061340332){
     s0+=129.0;
     s1+=8.0;
    } else {
     s0+=49.0;
     s1+=67.0;
    }
   } else {
    if(i32<0.010650284588336945){
     s0+=40.0;
     s1+=616.0;
    } else {
     s0+=27.0;
     s1+=29.0;
    }
   }
  } else {
   if(i6<1.0029727220535278){
    if(i8<1.0186156034469604){
     s1+=5.0;
    } else {
     s0+=696.0;
     s1+=34.0;
    }
   } else {
    if(i19<-1.1682510375976562e-05){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i30<0.9989378452301025){
  if(i12<0.9991536736488342){
   if(i19<-0.00048089027404785156){
    s0+=357.0;
   } else {
    if(i32<0.0016456798184663057){
     s0+=46.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i15<0.9978407621383667){
    s0+=1.0;
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i3<3.4868717193603516e-05){
   if(i45<0.004343092441558838){
    if(i36<1.0661475658416748){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=228.0;
     s1+=2218.0;
    }
   } else {
    if(i29<0.025002960115671158){
     s0+=710.0;
     s1+=325.0;
    } else {
     s0+=132.0;
     s1+=700.0;
    }
   }
  } else {
   if(i1<0.131856769323349){
    if(i52<0.05612638592720032){
     s0+=23.0;
     s1+=1234.0;
    } else {
     s0+=96.0;
     s1+=30.0;
    }
   } else {
    if(i66<1.002331256866455){
     s0+=42.0;
     s1+=1434.0;
    } else {
     s0+=1.0;
     s1+=8076.0;
    }
   }
  }
 }
}
if(i6<1.0024685859680176){
 if(i27<0.022396035492420197){
  if(i1<0.0822523832321167){
   if(i57<-0.0022433698177337646){
    if(i38<1.146665096282959){
     s0+=1491.0;
     s1+=485.0;
    } else {
     s0+=1719.0;
     s1+=40.0;
    }
   } else {
    if(i9<0.00012093782424926758){
     s0+=52890.0;
     s1+=236.0;
    } else {
     s0+=6415.0;
     s1+=334.0;
    }
   }
  } else {
   if(i45<0.004225313663482666){
    if(i7<-1.7921242033480667e-05){
     s0+=85.0;
     s1+=749.0;
    } else {
     s0+=628.0;
     s1+=182.0;
    }
   } else {
    if(i17<0.006334261503070593){
     s0+=669.0;
     s1+=49.0;
    } else {
     s0+=61.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i15<0.9989722967147827){
   if(i3<-4.532933235168457e-05){
    if(i0<0.07011851668357849){
     s0+=2967.0;
     s1+=16.0;
    } else {
     s0+=314.0;
     s1+=41.0;
    }
   } else {
    if(i49<5.693634011549875e-05){
     s0+=139.0;
    } else {
     s0+=129.0;
     s1+=135.0;
    }
   }
  } else {
   if(i2<0.0724366307258606){
    if(i37<1.1131113767623901){
     s0+=332.0;
     s1+=472.0;
    } else {
     s0+=2439.0;
     s1+=210.0;
    }
   } else {
    if(i17<0.0013995366171002388){
     s0+=157.0;
     s1+=75.0;
    } else {
     s0+=310.0;
     s1+=2722.0;
    }
   }
  }
 }
} else {
 if(i29<0.016754135489463806){
  if(i37<1.2314128875732422){
   if(i4<0.0004667043685913086){
    if(i8<1.0422914028167725){
     s0+=10.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=1579.0;
   }
  } else {
   if(i53<0.001000889460556209){
    if(i65<-8.811882253212389e-06){
     s1+=38.0;
    } else {
     s0+=173.0;
     s1+=3.0;
    }
   } else {
    if(i7<-0.00014959549298509955){
     s0+=3.0;
     s1+=405.0;
    } else {
     s0+=143.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i14<-0.00045108795166015625){
   if(i30<1.002990961074829){
    s1+=11.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i29<0.018147584050893784){
    if(i52<0.059140026569366455){
     s0+=2.0;
     s1+=199.0;
    } else {
     s0+=5.0;
     s1+=13.0;
    }
   } else {
    if(i1<0.0035457611083984375){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=8901.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i8<1.0452215671539307){
  if(i64<-0.0013698935508728027){
   if(i36<1.1823735237121582){
    if(i12<0.993808388710022){
     s0+=669.0;
     s1+=22.0;
    } else {
     s0+=804.0;
     s1+=490.0;
    }
   } else {
    if(i0<0.08283278346061707){
     s0+=2610.0;
     s1+=27.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i5<0.0758189857006073){
    if(i26<0.0002711030247155577){
     s0+=50151.0;
     s1+=106.0;
    } else {
     s0+=7634.0;
     s1+=316.0;
    }
   } else {
    if(i6<0.9969469308853149){
     s0+=98.0;
     s1+=10.0;
    } else {
     s0+=45.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i0<0.0858352780342102){
   if(i37<1.1037919521331787){
    if(i7<-1.5650597561034374e-05){
     s0+=206.0;
     s1+=726.0;
    } else {
     s0+=1654.0;
     s1+=328.0;
    }
   } else {
    if(i16<0.9754441380500793){
     s0+=615.0;
     s1+=250.0;
    } else {
     s0+=4826.0;
     s1+=206.0;
    }
   }
  } else {
   if(i58<-0.0051826308481395245){
    if(i34<0.0055309683084487915){
     s0+=793.0;
     s1+=289.0;
    } else {
     s0+=98.0;
     s1+=895.0;
    }
   } else {
    if(i30<0.9989491701126099){
     s0+=94.0;
    } else {
     s0+=130.0;
     s1+=1725.0;
    }
   }
  }
 }
} else {
 if(i15<0.998632550239563){
  s0+=165.0;
 } else {
  if(i26<0.0001886117970570922){
   if(i17<0.0020039696246385574){
    if(i2<0.06839689612388611){
     s0+=56.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i5<0.12464404106140137){
    if(i6<1.004080057144165){
     s0+=324.0;
     s1+=887.0;
    } else {
     s0+=34.0;
     s1+=2918.0;
    }
   } else {
    if(i1<0.1692928671836853){
     s0+=28.0;
     s1+=434.0;
    } else {
     s1+=7482.0;
    }
   }
  }
 }
}
if(i6<1.0024912357330322){
 if(i0<0.08230835199356079){
  if(i2<0.0706055760383606){
   if(i79<-0.0011710822582244873){
    if(i14<-0.00019288063049316406){
     s0+=7909.0;
     s1+=236.0;
    } else {
     s0+=2678.0;
     s1+=734.0;
    }
   } else {
    if(i26<0.00031366804614663124){
     s0+=51732.0;
     s1+=146.0;
    } else {
     s0+=5504.0;
     s1+=544.0;
    }
   }
  } else {
   if(i52<0.004302531480789185){
    if(i35<0.05499529838562012){
     s0+=45.0;
     s1+=305.0;
    } else {
     s0+=120.0;
     s1+=48.0;
    }
   } else {
    if(i24<1.0183970928192139){
     s0+=55.0;
     s1+=68.0;
    } else {
     s0+=1395.0;
     s1+=222.0;
    }
   }
  }
 } else {
  if(i27<0.021702978760004044){
   if(i41<0.06106513738632202){
    if(i6<0.9954338073730469){
     s0+=63.0;
    } else {
     s0+=36.0;
     s1+=638.0;
    }
   } else {
    if(i24<1.113762617111206){
     s0+=493.0;
     s1+=199.0;
    } else {
     s0+=309.0;
     s1+=26.0;
    }
   }
  } else {
   if(i62<-0.019821643829345703){
    if(i68<9.373665648126916e-07){
     s0+=301.0;
     s1+=990.0;
    } else {
     s0+=188.0;
     s1+=2.0;
    }
   } else {
    if(i9<-0.00041285157203674316){
     s0+=46.0;
     s1+=5.0;
    } else {
     s0+=50.0;
     s1+=1749.0;
    }
   }
  }
 }
} else {
 if(i7<-4.32968299719505e-05){
  if(i1<0.05294200778007507){
   if(i53<0.0005770801217295229){
    s0+=29.0;
   } else {
    if(i62<-0.00908499862998724){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=37.0;
     s1+=264.0;
    }
   }
  } else {
   if(i22<1.004941701889038){
    if(i18<1.0022854804992676){
     s0+=23.0;
     s1+=88.0;
    } else {
     s0+=32.0;
     s1+=1554.0;
    }
   } else {
    if(i19<-3.4332275390625e-05){
     s0+=25.0;
     s1+=264.0;
    } else {
     s0+=5.0;
     s1+=8718.0;
    }
   }
  }
 } else {
  if(i53<0.0011059246025979519){
   if(i64<-0.008086562156677246){
    s1+=3.0;
   } else {
    s0+=152.0;
   }
  } else {
   s1+=196.0;
  }
 }
}
if(i4<0.0005484223365783691){
 if(i8<1.0452277660369873){
  if(i23<1.0451585054397583){
   if(i75<0.04354510083794594){
    if(i34<0.00030124979093670845){
     s0+=32424.0;
    } else {
     s0+=16299.0;
     s1+=103.0;
    }
   } else {
    if(i33<0.0010040446650236845){
     s0+=2428.0;
     s1+=146.0;
    } else {
     s0+=2833.0;
     s1+=10.0;
    }
   }
  } else {
   if(i2<0.07048305869102478){
    if(i8<1.0401077270507812){
     s0+=6762.0;
     s1+=283.0;
    } else {
     s0+=930.0;
     s1+=205.0;
    }
   } else {
    if(i65<2.2760359570384026e-05){
     s0+=70.0;
     s1+=341.0;
    } else {
     s0+=130.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i2<0.08502998948097229){
   if(i37<1.1037919521331787){
    if(i39<0.00034515518927946687){
     s0+=1094.0;
     s1+=31.0;
    } else {
     s0+=694.0;
     s1+=902.0;
    }
   } else {
    if(i25<0.9709489941596985){
     s0+=893.0;
     s1+=235.0;
    } else {
     s0+=4423.0;
     s1+=177.0;
    }
   }
  } else {
   if(i63<0.03674185276031494){
    if(i54<1.0259464979171753){
     s0+=125.0;
     s1+=1816.0;
    } else {
     s0+=295.0;
     s1+=660.0;
    }
   } else {
    if(i7<-1.7139132978627458e-05){
     s0+=300.0;
     s1+=617.0;
    } else {
     s0+=559.0;
     s1+=86.0;
    }
   }
  }
 }
} else {
 if(i36<1.0624027252197266){
  s0+=148.0;
 } else {
  if(i0<0.05846378207206726){
   if(i68<-5.122793936607195e-06){
    if(i28<1.5682398080825806){
     s0+=22.0;
     s1+=566.0;
    } else {
     s0+=92.0;
     s1+=50.0;
    }
   } else {
    if(i47<0.0003906369092874229){
     s0+=109.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=23.0;
    }
   }
  } else {
   if(i13<1.0093274116516113){
    if(i39<0.008395793847739697){
     s0+=172.0;
     s1+=1292.0;
    } else {
     s0+=9.0;
     s1+=1426.0;
    }
   } else {
    s1+=8431.0;
   }
  }
 }
}
if(i4<0.0005483031272888184){
 if(i23<1.0495078563690186){
  if(i22<1.0082292556762695){
   if(i39<0.0003519475576467812){
    if(i51<0.0021814857609570026){
     s0+=37823.0;
     s1+=1.0;
    } else {
     s0+=206.0;
     s1+=3.0;
    }
   } else {
    if(i64<-0.0009213089942932129){
     s0+=1564.0;
     s1+=253.0;
    } else {
     s0+=16627.0;
     s1+=128.0;
    }
   }
  } else {
   if(i74<0.00012951335520483553){
    if(i7<-2.463127748342231e-05){
     s1+=33.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=60.0;
   }
  }
 } else {
  if(i10<1.0401077270507812){
   if(i37<1.1037919521331787){
    if(i33<0.0005163935711607337){
     s0+=1243.0;
     s1+=103.0;
    } else {
     s0+=320.0;
     s1+=684.0;
    }
   } else {
    if(i0<0.08112871646881104){
     s0+=6696.0;
     s1+=211.0;
    } else {
     s0+=19.0;
     s1+=152.0;
    }
   }
  } else {
   if(i0<0.08565258979797363){
    if(i2<0.06563925743103027){
     s0+=3753.0;
     s1+=534.0;
    } else {
     s0+=928.0;
     s1+=579.0;
    }
   } else {
    if(i7<-1.3797138308291323e-05){
     s0+=455.0;
     s1+=2526.0;
    } else {
     s0+=744.0;
     s1+=223.0;
    }
   }
  }
 }
} else {
 if(i38<1.055294156074524){
  s0+=182.0;
 } else {
  if(i17<0.0022614020854234695){
   if(i49<-2.9872597224311903e-05){
    s1+=146.0;
   } else {
    if(i28<1.2160128355026245){
     s1+=31.0;
    } else {
     s0+=166.0;
     s1+=8.0;
    }
   }
  } else {
   if(i29<0.020936809480190277){
    if(i66<0.9973925352096558){
     s0+=197.0;
     s1+=194.0;
    } else {
     s0+=53.0;
     s1+=2438.0;
    }
   } else {
    if(i7<-5.635504930978641e-05){
     s0+=3.0;
     s1+=8740.0;
    } else {
     s0+=8.0;
     s1+=211.0;
    }
   }
  }
 }
}
if(i2<0.08532509207725525){
 if(i45<-0.001736462116241455){
  if(i12<1.004504919052124){
   if(i2<0.03546074032783508){
    if(i75<0.18911989033222198){
     s0+=1342.0;
     s1+=358.0;
    } else {
     s0+=1733.0;
     s1+=76.0;
    }
   } else {
    if(i50<0.00040970605914480984){
     s0+=355.0;
     s1+=109.0;
    } else {
     s0+=128.0;
     s1+=423.0;
    }
   }
  } else {
   if(i9<0.00013181567192077637){
    if(i78<0.0010767579078674316){
     s0+=29.0;
     s1+=5.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i53<0.0005638269940391183){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=404.0;
    }
   }
  }
 } else {
  if(i12<1.0045835971832275){
   if(i59<0.018927663564682007){
    if(i21<1.007272720336914){
     s0+=50964.0;
     s1+=244.0;
    } else {
     s0+=96.0;
     s1+=141.0;
    }
   } else {
    if(i38<1.1476502418518066){
     s0+=6018.0;
     s1+=1120.0;
    } else {
     s0+=8503.0;
     s1+=47.0;
    }
   }
  } else {
   if(i1<0.060096561908721924){
    if(i3<3.6656856536865234e-05){
     s0+=333.0;
     s1+=7.0;
    } else {
     s0+=44.0;
     s1+=42.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=5.0;
     s1+=314.0;
    } else {
     s0+=67.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4603137969970703e-05){
  if(i55<1.0002700090408325){
   if(i80<-3.5762786865234375e-06){
    s0+=299.0;
   } else {
    if(i34<0.0016326080076396465){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=83.0;
    }
   }
  } else {
   if(i63<0.022923588752746582){
    s1+=13.0;
   } else {
    if(i42<0.003848919877782464){
     s0+=12.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.0021177949383854866){
   if(i41<0.058719366788864136){
    if(i24<1.0835847854614258){
     s0+=9.0;
     s1+=334.0;
    } else {
     s0+=14.0;
     s1+=26.0;
    }
   } else {
    if(i20<3.808736801147461e-05){
     s0+=579.0;
     s1+=161.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   }
  } else {
   if(i14<-4.470348358154297e-06){
    if(i63<0.0358501672744751){
     s0+=125.0;
     s1+=2051.0;
    } else {
     s0+=356.0;
     s1+=653.0;
    }
   } else {
    if(i46<-0.0005524754524230957){
     s0+=6.0;
    } else {
     s0+=42.0;
     s1+=10512.0;
    }
   }
  }
 }
}
if(i4<0.0005462765693664551){
 if(i23<1.0495158433914185){
  if(i50<0.00024421483976766467){
   if(i21<1.007392406463623){
    if(i59<0.036809876561164856){
     s0+=49081.0;
     s1+=52.0;
    } else {
     s0+=709.0;
     s1+=52.0;
    }
   } else {
    if(i46<0.0001035928726196289){
     s0+=3.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i34<0.0009481744491495192){
    if(i32<0.0004195441724732518){
     s0+=1410.0;
     s1+=42.0;
    } else {
     s0+=265.0;
     s1+=281.0;
    }
   } else {
    if(i3<1.996755599975586e-05){
     s0+=5092.0;
     s1+=20.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i3<1.0669231414794922e-05){
   if(i3<-4.297494888305664e-05){
    if(i2<0.08608314394950867){
     s0+=4197.0;
     s1+=105.0;
    } else {
     s0+=310.0;
     s1+=205.0;
    }
   } else {
    if(i2<0.07537108659744263){
     s0+=7435.0;
     s1+=954.0;
    } else {
     s0+=885.0;
     s1+=1857.0;
    }
   }
  } else {
   if(i0<0.073231041431427){
    if(i42<0.0008219091687351465){
     s0+=416.0;
     s1+=289.0;
    } else {
     s0+=605.0;
     s1+=111.0;
    }
   } else {
    if(i17<0.004509642720222473){
     s0+=289.0;
     s1+=526.0;
    } else {
     s0+=76.0;
     s1+=951.0;
    }
   }
  }
 }
} else {
 if(i33<0.0003575368318706751){
  s0+=166.0;
 } else {
  if(i7<-4.607368100550957e-05){
   if(i13<1.0009498596191406){
    if(i27<0.04258992522954941){
     s0+=159.0;
     s1+=359.0;
    } else {
     s0+=25.0;
     s1+=988.0;
    }
   } else {
    if(i19<3.1828880310058594e-05){
     s0+=44.0;
     s1+=228.0;
    } else {
     s0+=2.0;
     s1+=9533.0;
    }
   }
  } else {
   if(i17<0.0026207028422504663){
    if(i55<0.9992667436599731){
     s1+=9.0;
    } else {
     s0+=159.0;
    }
   } else {
    if(i49<9.04078915482387e-05){
     s0+=1.0;
     s1+=282.0;
    } else {
     s0+=11.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i6<1.0024782419204712){
 if(i26<0.00030670780688524246){
  if(i16<1.0108455419540405){
   if(i23<1.0487183332443237){
    if(i0<0.07893314957618713){
     s0+=49261.0;
     s1+=96.0;
    } else {
     s0+=140.0;
     s1+=10.0;
    }
   } else {
    if(i40<0.9840076565742493){
     s0+=3.0;
     s1+=27.0;
    } else {
     s0+=4195.0;
     s1+=165.0;
    }
   }
  } else {
   if(i42<0.0007595970528200269){
    if(i62<-0.009670515544712543){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=107.0;
    }
   } else {
    if(i71<1.0204033851623535){
     s0+=23.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<0.08134973049163818){
   if(i14<-0.00021976232528686523){
    if(i65<7.370167622866575e-06){
     s0+=19.0;
     s1+=28.0;
    } else {
     s0+=8661.0;
     s1+=264.0;
    }
   } else {
    if(i33<0.0002957388060167432){
     s0+=2244.0;
    } else {
     s0+=4603.0;
     s1+=1700.0;
    }
   }
  } else {
   if(i9<-0.00041115283966064453){
    if(i46<-0.00013512372970581055){
     s0+=347.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   } else {
    if(i45<0.0043114423751831055){
     s0+=190.0;
     s1+=2302.0;
    } else {
     s0+=866.0;
     s1+=1201.0;
    }
   }
  }
 }
} else {
 if(i47<0.0001616518129594624){
  if(i25<1.008553147315979){
   if(i46<0.00022870302200317383){
    s0+=43.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i39<0.002419173251837492){
    s1+=38.0;
   } else {
    if(i29<0.014990357682108879){
     s0+=23.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<0.06263476610183716){
   if(i38<1.1961640119552612){
    if(i26<0.0001727294293232262){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=311.0;
    }
   } else {
    if(i43<-0.00921890139579773){
     s0+=20.0;
     s1+=115.0;
    } else {
     s0+=111.0;
     s1+=8.0;
    }
   }
  } else {
   if(i29<0.01647472009062767){
    if(i26<0.0022674156352877617){
     s0+=47.0;
     s1+=1665.0;
    } else {
     s0+=89.0;
     s1+=155.0;
    }
   } else {
    if(i14<-9.679794311523438e-05){
     s0+=15.0;
     s1+=397.0;
    } else {
     s1+=8726.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i23<1.0485899448394775){
  if(i57<-0.0022396743297576904){
   if(i78<-0.0016541481018066406){
    if(i59<0.031223593279719353){
     s0+=39.0;
     s1+=15.0;
    } else {
     s0+=884.0;
     s1+=18.0;
    }
   } else {
    if(i12<0.993808388710022){
     s0+=298.0;
    } else {
     s0+=389.0;
     s1+=189.0;
    }
   }
  } else {
   if(i19<0.0012308955192565918){
    if(i40<1.0134316682815552){
     s0+=54129.0;
     s1+=159.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i4<0.0005081892013549805){
   if(i28<1.1013743877410889){
    if(i32<0.0005224430351518095){
     s0+=2504.0;
     s1+=392.0;
    } else {
     s0+=77.0;
     s1+=771.0;
    }
   } else {
    if(i53<0.006415048614144325){
     s0+=10499.0;
     s1+=514.0;
    } else {
     s0+=7.0;
     s1+=28.0;
    }
   }
  } else {
   if(i37<1.25206458568573){
    if(i41<0.045903176069259644){
     s1+=618.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i51<0.004179657436907291){
     s0+=295.0;
     s1+=64.0;
    } else {
     s0+=29.0;
     s1+=307.0;
    }
   }
  }
 }
} else {
 if(i23<1.0494635105133057){
  if(i73<0.9996837377548218){
   if(i46<5.5730342864990234e-06){
    s0+=274.0;
   } else {
    if(i24<1.024735450744629){
     s1+=3.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i38<1.1062674522399902){
    if(i63<0.0409485399723053){
     s0+=3.0;
     s1+=27.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i61<0.00030868255998939276){
     s1+=1.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i46<-0.00025019049644470215){
   if(i34<0.02565127983689308){
    s0+=360.0;
   } else {
    s1+=31.0;
   }
  } else {
   if(i17<0.001682774629443884){
    if(i58<-0.0032870254945009947){
     s0+=547.0;
     s1+=99.0;
    } else {
     s0+=47.0;
     s1+=196.0;
    }
   } else {
    if(i14<-4.172325134277344e-06){
     s0+=611.0;
     s1+=2937.0;
    } else {
     s0+=58.0;
     s1+=10740.0;
    }
   }
  }
 }
}
if(i6<1.0024337768554688){
 if(i1<0.0866774320602417){
  if(i27<0.01444937102496624){
   if(i57<-0.002317667007446289){
    if(i0<0.03941282629966736){
     s0+=1804.0;
     s1+=140.0;
    } else {
     s0+=408.0;
     s1+=204.0;
    }
   } else {
    if(i0<0.0748029351234436){
     s0+=54410.0;
     s1+=250.0;
    } else {
     s0+=338.0;
     s1+=45.0;
    }
   }
  } else {
   if(i8<1.0398929119110107){
    if(i33<0.0013473117724061012){
     s0+=2442.0;
     s1+=257.0;
    } else {
     s0+=6521.0;
     s1+=26.0;
    }
   } else {
    if(i39<0.0016406918875873089){
     s0+=638.0;
     s1+=923.0;
    } else {
     s0+=2569.0;
     s1+=379.0;
    }
   }
  }
 } else {
  if(i80<-8.046627044677734e-06){
   if(i30<0.998882532119751){
    s0+=322.0;
   } else {
    if(i58<-0.01427181251347065){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i46<-0.00013780593872070312){
    if(i7<-4.8017311200965196e-05){
     s0+=11.0;
     s1+=35.0;
    } else {
     s0+=300.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.05881744623184204){
     s0+=332.0;
     s1+=2447.0;
    } else {
     s0+=767.0;
     s1+=1075.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022073215804994106){
  if(i44<-1.4896522770868614e-05){
   if(i54<1.0021486282348633){
    if(i1<0.05969548225402832){
     s0+=2.0;
    } else {
     s1+=24.0;
    }
   } else {
    s1+=159.0;
   }
  } else {
   s0+=212.0;
  }
 } else {
  if(i66<0.9976266622543335){
   if(i18<1.0022960901260376){
    if(i48<0.4391462802886963){
     s0+=54.0;
     s1+=48.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i1<0.1012524962425232){
     s0+=63.0;
     s1+=237.0;
    } else {
     s0+=11.0;
     s1+=1046.0;
    }
   }
  } else {
   if(i14<6.079673767089844e-06){
    if(i15<1.0030536651611328){
     s0+=47.0;
     s1+=108.0;
    } else {
     s1+=163.0;
    }
   } else {
    if(i4<0.0006187558174133301){
     s0+=8.0;
     s1+=130.0;
    } else {
     s1+=9257.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i6<1.0024776458740234){
  if(i48<0.026235653087496758){
   if(i70<0.000851720804348588){
    if(i66<1.0078890323638916){
     s0+=55904.0;
     s1+=279.0;
    } else {
     s0+=327.0;
     s1+=151.0;
    }
   } else {
    if(i36<1.1037919521331787){
     s0+=367.0;
     s1+=276.0;
    } else {
     s0+=835.0;
     s1+=73.0;
    }
   }
  } else {
   if(i2<0.0632183849811554){
    if(i4<-0.0004004538059234619){
     s0+=7196.0;
     s1+=208.0;
    } else {
     s0+=3273.0;
     s1+=696.0;
    }
   } else {
    if(i52<0.019634783267974854){
     s0+=295.0;
     s1+=479.0;
    } else {
     s0+=685.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i36<1.2287709712982178){
   if(i58<-0.005311894230544567){
    s0+=4.0;
   } else {
    if(i74<0.00015984970377758145){
     s0+=3.0;
     s1+=687.0;
    } else {
     s0+=10.0;
     s1+=10.0;
    }
   }
  } else {
   if(i25<1.0023220777511597){
    if(i29<0.013325824402272701){
     s0+=41.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=190.0;
    }
   } else {
    if(i33<0.007530542090535164){
     s0+=156.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i17<0.00468787644058466){
  if(i62<-0.019122816622257233){
   if(i32<0.0018811997724696994){
    if(i77<-0.0012587232049554586){
     s0+=414.0;
     s1+=6.0;
    } else {
     s0+=263.0;
     s1+=59.0;
    }
   } else {
    if(i1<0.19256341457366943){
     s0+=298.0;
     s1+=27.0;
    } else {
     s0+=31.0;
     s1+=246.0;
    }
   }
  } else {
   if(i3<-5.5342912673950195e-05){
    if(i7<-1.8054199244943447e-05){
     s0+=19.0;
     s1+=12.0;
    } else {
     s0+=286.0;
     s1+=2.0;
    }
   } else {
    if(i7<-1.799903839128092e-05){
     s0+=147.0;
     s1+=1741.0;
    } else {
     s0+=209.0;
     s1+=248.0;
    }
   }
  }
 } else {
  if(i12<0.9934288859367371){
   if(i33<0.004414017777889967){
    if(i29<0.037504684180021286){
     s0+=159.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   } else {
    if(i2<0.09330567717552185){
     s0+=63.0;
     s1+=22.0;
    } else {
     s0+=11.0;
     s1+=501.0;
    }
   }
  } else {
   if(i13<0.999724268913269){
    if(i27<0.019248969852924347){
     s0+=80.0;
     s1+=94.0;
    } else {
     s0+=22.0;
     s1+=1479.0;
    }
   } else {
    if(i20<-1.5020370483398438e-05){
     s0+=1.0;
    } else {
     s0+=19.0;
     s1+=9416.0;
    }
   }
  }
 }
}
if(i30<1.0005677938461304){
 if(i4<0.0005469024181365967){
  if(i35<0.06519588828086853){
   if(i2<0.07978475093841553){
    if(i59<0.018704619258642197){
     s0+=48977.0;
     s1+=304.0;
    } else {
     s0+=14902.0;
     s1+=1273.0;
    }
   } else {
    if(i15<0.9984714388847351){
     s0+=103.0;
     s1+=2.0;
    } else {
     s0+=72.0;
     s1+=1277.0;
    }
   }
  } else {
   if(i44<-9.78547177510336e-06){
    if(i17<0.0033571512904018164){
     s0+=155.0;
     s1+=57.0;
    } else {
     s0+=55.0;
     s1+=679.0;
    }
   } else {
    if(i17<0.0058171311393380165){
     s0+=1350.0;
     s1+=648.0;
    } else {
     s0+=3.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i30<0.9990439414978027){
   if(i37<1.3467260599136353){
    s0+=150.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i1<0.07139471173286438){
    if(i34<0.002320370636880398){
     s0+=8.0;
     s1+=30.0;
    } else {
     s0+=52.0;
     s1+=4.0;
    }
   } else {
    if(i7<-4.744988837046549e-05){
     s1+=2336.0;
    } else {
     s0+=31.0;
     s1+=65.0;
    }
   }
  }
 }
} else {
 if(i2<0.07564666867256165){
  if(i14<0.00017684698104858398){
   if(i43<-0.007853835821151733){
    if(i4<0.00030219554901123047){
     s0+=327.0;
     s1+=64.0;
    } else {
     s0+=44.0;
     s1+=259.0;
    }
   } else {
    if(i12<1.0034488439559937){
     s0+=4066.0;
     s1+=247.0;
    } else {
     s0+=267.0;
     s1+=134.0;
    }
   }
  } else {
   if(i17<0.0016264845617115498){
    s0+=40.0;
   } else {
    s1+=358.0;
   }
  }
 } else {
  if(i0<0.11886942386627197){
   if(i58<-0.004403025843203068){
    if(i51<0.0023756730370223522){
     s0+=376.0;
     s1+=53.0;
    } else {
     s0+=4.0;
     s1+=68.0;
    }
   } else {
    if(i6<0.9992603063583374){
     s0+=51.0;
     s1+=15.0;
    } else {
     s0+=40.0;
     s1+=1276.0;
    }
   }
  } else {
   if(i33<0.0030216111335903406){
    if(i10<1.1170852184295654){
     s0+=9.0;
     s1+=162.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.1407366693019867){
     s0+=26.0;
     s1+=340.0;
    } else {
     s0+=9.0;
     s1+=7307.0;
    }
   }
  }
 }
}
if(i1<0.08353149890899658){
 if(i6<1.002474308013916){
  if(i52<-0.028880715370178223){
   if(i46<-3.7163496017456055e-05){
    if(i15<0.9981244802474976){
     s0+=700.0;
    } else {
     s0+=490.0;
     s1+=74.0;
    }
   } else {
    if(i49<1.8887105397880077e-05){
     s0+=516.0;
     s1+=72.0;
    } else {
     s0+=590.0;
     s1+=539.0;
    }
   }
  } else {
   if(i8<1.042891263961792){
    if(i57<-0.0018707811832427979){
     s0+=4216.0;
     s1+=328.0;
    } else {
     s0+=55630.0;
     s1+=216.0;
    }
   } else {
    if(i37<1.1034480333328247){
     s0+=2093.0;
     s1+=735.0;
    } else {
     s0+=4713.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i53<0.0009278359357267618){
   if(i37<1.2388319969177246){
    if(i34<0.000306054629618302){
     s0+=4.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i51<0.00698945252224803){
     s0+=145.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i38<1.1709270477294922){
    if(i12<0.9945703148841858){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=629.0;
    }
   } else {
    if(i45<-0.0022254586219787598){
     s0+=19.0;
     s1+=234.0;
    } else {
     s0+=84.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985091686248779){
  if(i49<0.00019083588267676532){
   if(i6<0.9970543384552002){
    s0+=761.0;
   } else {
    if(i7<-4.7602487029507756e-05){
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   }
  } else {
   if(i73<0.9995214939117432){
    if(i79<-0.004152804613113403){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i20<1.9848346710205078e-05){
   if(i41<0.058552324771881104){
    if(i8<1.0331518650054932){
     s0+=20.0;
     s1+=30.0;
    } else {
     s0+=58.0;
     s1+=2573.0;
    }
   } else {
    if(i17<0.0033934898674488068){
     s0+=830.0;
     s1+=380.0;
    } else {
     s0+=129.0;
     s1+=1471.0;
    }
   }
  } else {
   if(i6<1.0023622512817383){
    if(i23<1.1427462100982666){
     s0+=185.0;
     s1+=125.0;
    } else {
     s0+=5.0;
     s1+=383.0;
    }
   } else {
    if(i6<1.004055142402649){
     s0+=47.0;
     s1+=540.0;
    } else {
     s0+=23.0;
     s1+=8352.0;
    }
   }
  }
 }
}
if(i0<0.0772174596786499){
 if(i14<0.00015679001808166504){
  if(i20<2.6881694793701172e-05){
   if(i60<-0.0024978220462799072){
    if(i7<-1.751764284563251e-05){
     s0+=491.0;
     s1+=325.0;
    } else {
     s0+=1715.0;
     s1+=202.0;
    }
   } else {
    if(i1<0.06633725762367249){
     s0+=62566.0;
     s1+=937.0;
    } else {
     s0+=3721.0;
     s1+=630.0;
    }
   }
  } else {
   if(i45<-9.489059448242188e-05){
    if(i48<0.20007267594337463){
     s0+=54.0;
     s1+=337.0;
    } else {
     s0+=82.0;
     s1+=51.0;
    }
   } else {
    if(i13<0.9999260306358337){
     s0+=305.0;
     s1+=10.0;
    } else {
     s0+=18.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i9<0.0005434751510620117){
   if(i74<0.00014065905997995287){
    if(i61<0.0006200559437274933){
     s0+=155.0;
     s1+=35.0;
    } else {
     s1+=48.0;
    }
   } else {
    s0+=195.0;
   }
  } else {
   if(i68<-4.358612386567984e-06){
    if(i9<0.0005530714988708496){
     s0+=2.0;
     s1+=14.0;
    } else {
     s1+=546.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
} else {
 if(i6<1.0015554428100586){
  if(i63<0.03612470626831055){
   if(i73<0.9971150159835815){
    if(i15<0.9980686902999878){
     s0+=173.0;
    } else {
     s0+=5.0;
     s1+=56.0;
    }
   } else {
    if(i43<0.017024487257003784){
     s0+=105.0;
     s1+=1791.0;
    } else {
     s0+=354.0;
     s1+=487.0;
    }
   }
  } else {
   if(i6<0.995995283126831){
    if(i16<1.0285074710845947){
     s0+=352.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i67<0.13083025813102722){
     s0+=702.0;
     s1+=403.0;
    } else {
     s0+=12.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i14<9.864568710327148e-05){
   if(i67<0.0906694233417511){
    if(i71<1.0344367027282715){
     s0+=51.0;
     s1+=573.0;
    } else {
     s0+=106.0;
     s1+=144.0;
    }
   } else {
    s1+=1151.0;
   }
  } else {
   if(i19<0.001422107219696045){
    if(i72<-9.635985770728439e-05){
     s0+=12.0;
     s1+=1000.0;
    } else {
     s0+=16.0;
     s1+=67.0;
    }
   } else {
    s1+=7995.0;
   }
  }
 }
}
if(i2<0.0819428563117981){
 if(i3<3.832578659057617e-05){
  if(i67<0.00950653851032257){
   if(i43<-0.010821789503097534){
    if(i50<0.0004429152759257704){
     s0+=93.0;
     s1+=3.0;
    } else {
     s0+=49.0;
     s1+=102.0;
    }
   } else {
    if(i78<-0.0012783408164978027){
     s0+=22.0;
     s1+=44.0;
    } else {
     s0+=45736.0;
     s1+=168.0;
    }
   }
  } else {
   if(i6<0.9976103901863098){
    if(i28<1.2392117977142334){
     s0+=4918.0;
     s1+=222.0;
    } else {
     s0+=11269.0;
     s1+=64.0;
    }
   } else {
    if(i69<0.9998077154159546){
     s0+=1130.0;
     s1+=787.0;
    } else {
     s0+=5727.0;
     s1+=732.0;
    }
   }
  }
 } else {
  if(i8<1.0332242250442505){
   if(i9<0.0007759928703308105){
    if(i59<0.03456660732626915){
     s0+=292.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i19<0.0014264583587646484){
    if(i64<0.0017826259136199951){
     s0+=167.0;
     s1+=553.0;
    } else {
     s0+=111.0;
     s1+=7.0;
    }
   } else {
    if(i80<-3.0100345611572266e-06){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=412.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010311603546142578){
  if(i20<-1.7344951629638672e-05){
   if(i49<0.0001750669616740197){
    s0+=380.0;
   } else {
    if(i15<0.9976053833961487){
     s0+=7.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i43<0.011374205350875854){
    if(i41<0.05971363186836243){
     s0+=26.0;
     s1+=863.0;
    } else {
     s0+=156.0;
     s1+=263.0;
    }
   } else {
    if(i42<0.013308568857610226){
     s0+=592.0;
     s1+=424.0;
    } else {
     s0+=23.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i17<0.0029870427679270506){
   if(i24<1.0837609767913818){
    if(i43<0.01460576057434082){
     s0+=43.0;
     s1+=603.0;
    } else {
     s0+=44.0;
     s1+=40.0;
    }
   } else {
    if(i11<1.0236752033233643){
     s0+=201.0;
     s1+=18.0;
    } else {
     s0+=10.0;
     s1+=67.0;
    }
   }
  } else {
   if(i72<-0.00020436724298633635){
    if(i19<0.000260770320892334){
     s0+=59.0;
     s1+=1432.0;
    } else {
     s0+=1.0;
     s1+=8599.0;
    }
   } else {
    if(i2<0.12693768739700317){
     s0+=122.0;
     s1+=494.0;
    } else {
     s0+=10.0;
     s1+=897.0;
    }
   }
  }
 }
}
if(i66<1.0072276592254639){
 if(i5<0.07766768336296082){
  if(i59<0.018925435841083527){
   if(i78<-0.001233428716659546){
    if(i6<0.9960854053497314){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=146.0;
    }
   } else {
    if(i25<1.0068082809448242){
     s0+=51159.0;
     s1+=211.0;
    } else {
     s0+=542.0;
     s1+=141.0;
    }
   }
  } else {
   if(i2<0.08223113417625427){
    if(i45<0.0016056299209594727){
     s0+=7852.0;
     s1+=1700.0;
    } else {
     s0+=8129.0;
     s1+=118.0;
    }
   } else {
    if(i18<0.9953830242156982){
     s0+=94.0;
     s1+=2.0;
    } else {
     s0+=70.0;
     s1+=708.0;
    }
   }
  }
 } else {
  if(i0<0.12297502160072327){
   if(i60<0.0043531060218811035){
    if(i9<-0.0003727376461029053){
     s0+=101.0;
     s1+=2.0;
    } else {
     s0+=188.0;
     s1+=725.0;
    }
   } else {
    if(i10<1.048896312713623){
     s0+=48.0;
     s1+=34.0;
    } else {
     s0+=510.0;
     s1+=30.0;
    }
   }
  } else {
   if(i4<-0.0008585453033447266){
    if(i30<0.9995139241218567){
     s0+=160.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i17<0.0035860720090568066){
     s0+=244.0;
     s1+=353.0;
    } else {
     s0+=38.0;
     s1+=2620.0;
    }
   }
  }
 }
} else {
 if(i7<-4.0429247746942565e-05){
  if(i20<-1.0848045349121094e-05){
   s0+=44.0;
  } else {
   if(i2<0.0576309859752655){
    if(i78<0.0010718107223510742){
     s0+=19.0;
     s1+=186.0;
    } else {
     s0+=79.0;
     s1+=27.0;
    }
   } else {
    if(i26<0.0001231635978911072){
     s0+=2.0;
    } else {
     s0+=37.0;
     s1+=9602.0;
    }
   }
  }
 } else {
  if(i17<0.0027502651792019606){
   if(i20<-1.1354684829711914e-05){
    if(i28<1.2856253385543823){
     s1+=11.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i33<0.0003832120564766228){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=1552.0;
     s1+=57.0;
    }
   }
  } else {
   if(i73<0.9985712766647339){
    if(i53<0.0006018186686560512){
     s1+=5.0;
    } else {
     s0+=134.0;
    }
   } else {
    if(i28<1.2927743196487427){
     s0+=9.0;
     s1+=348.0;
    } else {
     s0+=60.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i12<1.003976583480835){
 if(i5<0.07653620839118958){
  if(i0<0.07931685447692871){
   if(i26<0.0002837190986610949){
    if(i25<1.007855772972107){
     s0+=52219.0;
     s1+=215.0;
    } else {
     s0+=188.0;
     s1+=85.0;
    }
   } else {
    if(i45<0.002562195062637329){
     s0+=9881.0;
     s1+=1963.0;
    } else {
     s0+=6503.0;
     s1+=69.0;
    }
   }
  } else {
   if(i76<6.957021469133906e-06){
    if(i35<0.06743687391281128){
     s0+=42.0;
     s1+=792.0;
    } else {
     s0+=51.0;
     s1+=24.0;
    }
   } else {
    s0+=88.0;
   }
  }
 } else {
  if(i30<0.9988100528717041){
   if(i18<1.002594232559204){
    if(i46<-0.00025719404220581055){
     s0+=328.0;
    } else {
     s0+=15.0;
     s1+=7.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i53<0.0007604055572301149){
    if(i24<1.0485559701919556){
     s0+=42.0;
     s1+=176.0;
    } else {
     s0+=567.0;
     s1+=163.0;
    }
   } else {
    if(i55<1.0014344453811646){
     s0+=283.0;
     s1+=3056.0;
    } else {
     s0+=289.0;
     s1+=559.0;
    }
   }
  }
 }
} else {
 if(i8<1.0343551635742188){
  if(i44<-1.7090893379645422e-05){
   s1+=41.0;
  } else {
   s0+=378.0;
  }
 } else {
  if(i20<-1.2874603271484375e-05){
   s0+=73.0;
  } else {
   if(i17<0.0023939013481140137){
    if(i13<1.0098522901535034){
     s0+=164.0;
     s1+=97.0;
    } else {
     s0+=30.0;
     s1+=286.0;
    }
   } else {
    if(i3<-9.775161743164062e-06){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=59.0;
     s1+=9502.0;
    }
   }
  }
 }
}
if(i5<0.0699622631072998){
 if(i66<1.0071685314178467){
  if(i23<1.0572319030761719){
   if(i43<-0.006385743618011475){
    if(i36<1.0670123100280762){
     s0+=637.0;
     s1+=4.0;
    } else {
     s0+=152.0;
     s1+=151.0;
    }
   } else {
    if(i15<1.0006110668182373){
     s0+=54703.0;
     s1+=259.0;
    } else {
     s0+=2551.0;
     s1+=176.0;
    }
   }
  } else {
   if(i15<1.0018949508666992){
    if(i1<0.07548430562019348){
     s0+=8405.0;
     s1+=928.0;
    } else {
     s0+=229.0;
     s1+=515.0;
    }
   } else {
    if(i12<1.0009576082229614){
     s0+=443.0;
     s1+=198.0;
    } else {
     s0+=34.0;
     s1+=348.0;
    }
   }
  }
 } else {
  if(i3<3.3974647521972656e-05){
   if(i23<1.073743224143982){
    if(i47<0.0001856164017226547){
     s0+=84.0;
     s1+=24.0;
    } else {
     s0+=30.0;
     s1+=250.0;
    }
   } else {
    if(i55<0.99983811378479){
     s0+=194.0;
     s1+=130.0;
    } else {
     s0+=1115.0;
     s1+=45.0;
    }
   }
  } else {
   if(i37<1.25206458568573){
    if(i46<0.0004658997058868408){
     s1+=1033.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i7<-9.306553693022579e-05){
     s1+=347.0;
    } else {
     s0+=129.0;
    }
   }
  }
 }
} else {
 if(i0<0.10595828294754028){
  if(i62<-0.016128594055771828){
   if(i40<0.9428571462631226){
    if(i43<0.00838276743888855){
     s1+=14.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i4<0.0015307068824768066){
     s0+=726.0;
     s1+=48.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i28<1.0840110778808594){
    s0+=199.0;
   } else {
    if(i23<1.0469107627868652){
     s0+=171.0;
     s1+=16.0;
    } else {
     s0+=357.0;
     s1+=1114.0;
    }
   }
  }
 } else {
  if(i3<4.470348358154297e-06){
   if(i32<0.0015555323334410787){
    if(i42<0.00445708679035306){
     s0+=109.0;
     s1+=257.0;
    } else {
     s0+=402.0;
    }
   } else {
    if(i69<1.0004470348358154){
     s0+=51.0;
     s1+=769.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  } else {
   if(i37<1.274404764175415){
    if(i8<1.1520657539367676){
     s0+=74.0;
     s1+=1162.0;
    } else {
     s0+=104.0;
     s1+=214.0;
    }
   } else {
    if(i44<-3.1494919312535785e-06){
     s0+=77.0;
     s1+=9247.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i7<-6.255788321141154e-05){
 if(i13<0.9816007614135742){
  if(i0<0.09721794724464417){
   if(i53<0.006434008479118347){
    if(i74<0.0002849396551027894){
     s0+=992.0;
     s1+=18.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i44<-3.750224277609959e-05){
     s1+=61.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   if(i75<0.11369577795267105){
    if(i59<0.17960220575332642){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=124.0;
   }
  }
 } else {
  if(i28<1.0792261362075806){
   s0+=171.0;
  } else {
   if(i14<-0.00012135505676269531){
    if(i5<0.08905103802680969){
     s0+=270.0;
     s1+=189.0;
    } else {
     s0+=25.0;
     s1+=676.0;
    }
   } else {
    if(i15<0.998304009437561){
     s0+=33.0;
    } else {
     s0+=106.0;
     s1+=11235.0;
    }
   }
  }
 }
} else {
 if(i40<1.0083632469177246){
  if(i1<0.08176484704017639){
   if(i43<-0.0052412450313568115){
    if(i3<2.8789043426513672e-05){
     s0+=3600.0;
     s1+=716.0;
    } else {
     s0+=27.0;
     s1+=153.0;
    }
   } else {
    if(i1<0.06655257940292358){
     s0+=58531.0;
     s1+=596.0;
    } else {
     s0+=2774.0;
     s1+=334.0;
    }
   }
  } else {
   if(i15<0.998519778251648){
    if(i7<-3.670365913421847e-05){
     s0+=19.0;
     s1+=11.0;
    } else {
     s0+=607.0;
     s1+=3.0;
    }
   } else {
    if(i71<1.0043203830718994){
     s0+=104.0;
     s1+=867.0;
    } else {
     s0+=341.0;
     s1+=461.0;
    }
   }
  }
 } else {
  if(i34<0.0011812241282314062){
   if(i1<0.07092210650444031){
    if(i46<0.00010818243026733398){
     s0+=488.0;
     s1+=46.0;
    } else {
     s0+=32.0;
     s1+=104.0;
    }
   } else {
    if(i17<0.001449075760319829){
     s0+=164.0;
     s1+=28.0;
    } else {
     s0+=13.0;
     s1+=826.0;
    }
   }
  } else {
   if(i2<0.10797011852264404){
    if(i76<-3.7659865483874455e-06){
     s1+=23.0;
    } else {
     s0+=2208.0;
     s1+=78.0;
    }
   } else {
    if(i17<0.0029447488486766815){
     s0+=328.0;
     s1+=63.0;
    } else {
     s0+=148.0;
     s1+=651.0;
    }
   }
  }
 }
}
if(i1<0.08250191807746887){
 if(i23<1.0486011505126953){
  if(i64<-0.0012905001640319824){
   if(i23<1.040691614151001){
    if(i0<0.04994186758995056){
     s0+=1494.0;
     s1+=34.0;
    } else {
     s0+=70.0;
     s1+=33.0;
    }
   } else {
    if(i12<0.9939918518066406){
     s0+=166.0;
    } else {
     s0+=187.0;
     s1+=172.0;
    }
   }
  } else {
   if(i23<1.0410068035125732){
    if(i73<1.00184965133667){
     s0+=46594.0;
     s1+=17.0;
    } else {
     s0+=1833.0;
     s1+=24.0;
    }
   } else {
    if(i22<1.0086815357208252){
     s0+=5430.0;
     s1+=84.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i3<3.3795833587646484e-05){
   if(i5<0.05656924843788147){
    if(i37<1.1037919521331787){
     s0+=2448.0;
     s1+=879.0;
    } else {
     s0+=9157.0;
     s1+=312.0;
    }
   } else {
    if(i41<0.03581097722053528){
     s0+=76.0;
     s1+=282.0;
    } else {
     s0+=1323.0;
     s1+=171.0;
    }
   }
  } else {
   if(i64<0.0017554163932800293){
    if(i44<-1.4669136362499557e-05){
     s0+=102.0;
     s1+=912.0;
    } else {
     s0+=71.0;
     s1+=45.0;
    }
   } else {
    if(i17<0.00924677588045597){
     s0+=115.0;
     s1+=13.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i46<-0.00013768672943115234){
  if(i6<0.9982014298439026){
   if(i7<-4.206008816254325e-05){
    if(i50<0.00028089387342333794){
     s0+=19.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i12<0.9953556656837463){
     s0+=666.0;
    } else {
     s0+=55.0;
     s1+=5.0;
    }
   }
  } else {
   if(i44<-7.434090548485983e-06){
    s1+=137.0;
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i19<0.00042635202407836914){
   if(i63<0.025824666023254395){
    if(i43<0.016233861446380615){
     s0+=68.0;
     s1+=2169.0;
    } else {
     s0+=221.0;
     s1+=645.0;
    }
   } else {
    if(i17<0.005990698933601379){
     s0+=841.0;
     s1+=425.0;
    } else {
     s0+=112.0;
     s1+=808.0;
    }
   }
  } else {
   if(i42<0.00022793971584178507){
    s0+=6.0;
   } else {
    if(i44<-1.654606307965878e-06){
     s0+=65.0;
     s1+=9873.0;
    } else {
     s0+=37.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i1<0.08512812852859497){
 if(i6<1.0024688243865967){
  if(i47<0.0002993682282976806){
   if(i23<1.0451585054397583){
    if(i58<0.00127339456230402){
     s0+=49357.0;
     s1+=109.0;
    } else {
     s0+=48.0;
     s1+=9.0;
    }
   } else {
    if(i40<0.9826360940933228){
     s0+=26.0;
     s1+=92.0;
    } else {
     s0+=6903.0;
     s1+=359.0;
    }
   }
  } else {
   if(i52<0.0168287456035614){
    if(i2<0.05801931023597717){
     s0+=5729.0;
     s1+=774.0;
    } else {
     s0+=608.0;
     s1+=584.0;
    }
   } else {
    if(i6<1.0009194612503052){
     s0+=6123.0;
     s1+=131.0;
    } else {
     s0+=115.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i28<1.2392117977142334){
   if(i42<0.00018448723130859435){
    s0+=10.0;
   } else {
    if(i32<0.0003182991349603981){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=639.0;
    }
   }
  } else {
   if(i40<1.0008294582366943){
    if(i24<1.030714988708496){
     s0+=10.0;
     s1+=246.0;
    } else {
     s0+=34.0;
     s1+=64.0;
    }
   } else {
    if(i60<-0.003943830728530884){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=202.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i19<0.00046315789222717285){
  if(i15<0.998518705368042){
   if(i34<0.00913060549646616){
    if(i19<-0.0005326271057128906){
     s0+=589.0;
    } else {
     s0+=68.0;
     s1+=9.0;
    }
   } else {
    if(i67<0.04525703191757202){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.005999207496643066){
    if(i58<-0.00587957538664341){
     s0+=728.0;
     s1+=379.0;
    } else {
     s0+=280.0;
     s1+=1650.0;
    }
   } else {
    if(i27<0.03629282861948013){
     s0+=164.0;
     s1+=287.0;
    } else {
     s0+=21.0;
     s1+=1723.0;
    }
   }
  }
 } else {
  if(i32<0.0005811878945678473){
   if(i46<2.759695053100586e-05){
    s0+=47.0;
   } else {
    s1+=133.0;
   }
  } else {
   if(i20<-1.6003847122192383e-05){
    s0+=10.0;
   } else {
    if(i7<-4.318765058997087e-05){
     s1+=9617.0;
    } else {
     s0+=70.0;
     s1+=186.0;
    }
   }
  }
 }
}
if(i3<3.606081008911133e-05){
 if(i2<0.08176484704017639){
  if(i57<-0.00202062726020813){
   if(i66<0.9747095704078674){
    if(i10<1.0549633502960205){
     s0+=2985.0;
     s1+=39.0;
    } else {
     s0+=179.0;
     s1+=38.0;
    }
   } else {
    if(i46<-3.790855407714844e-05){
     s0+=1806.0;
     s1+=126.0;
    } else {
     s0+=1334.0;
     s1+=775.0;
    }
   }
  } else {
   if(i7<-4.596522921929136e-05){
    if(i32<0.001460541971027851){
     s0+=1.0;
     s1+=160.0;
    } else {
     s0+=872.0;
     s1+=89.0;
    }
   } else {
    if(i67<0.012855279259383678){
     s0+=47404.0;
     s1+=124.0;
    } else {
     s0+=14145.0;
     s1+=649.0;
    }
   }
  }
 } else {
  if(i15<0.9985270500183105){
   if(i18<1.0022549629211426){
    if(i69<0.9998038411140442){
     s0+=437.0;
     s1+=3.0;
    } else {
     s0+=34.0;
     s1+=12.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i45<0.004312396049499512){
    if(i32<0.0004476824833545834){
     s0+=53.0;
     s1+=18.0;
    } else {
     s0+=201.0;
     s1+=2309.0;
    }
   } else {
    if(i17<0.003349411766976118){
     s0+=638.0;
     s1+=130.0;
    } else {
     s0+=168.0;
     s1+=846.0;
    }
   }
  }
 }
} else {
 if(i33<0.0005015862989239395){
  s0+=377.0;
 } else {
  if(i2<0.0689035952091217){
   if(i44<-1.417127077729674e-05){
    if(i45<0.0008277297019958496){
     s0+=66.0;
     s1+=592.0;
    } else {
     s0+=60.0;
     s1+=13.0;
    }
   } else {
    if(i37<1.2344772815704346){
     s1+=14.0;
    } else {
     s0+=135.0;
    }
   }
  } else {
   if(i13<1.008596420288086){
    if(i27<0.026385461911559105){
     s0+=136.0;
     s1+=468.0;
    } else {
     s0+=46.0;
     s1+=2013.0;
    }
   } else {
    if(i0<0.08136260509490967){
     s0+=2.0;
     s1+=408.0;
    } else {
     s1+=8339.0;
    }
   }
  }
 }
}
if(i7<-8.167879423126578e-05){
 if(i66<0.9572433829307556){
  if(i5<0.03715351223945618){
   if(i53<0.006600256077945232){
    if(i7<-0.00018324579286854714){
     s1+=6.0;
    } else {
     s0+=392.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i61<0.0014164105523377657){
    if(i27<0.06404680758714676){
     s0+=14.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i51<0.0015447901096194983){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=107.0;
    }
   }
  }
 } else {
  if(i44<-0.00011977510439464822){
   s0+=159.0;
  } else {
   if(i19<2.1636486053466797e-05){
    if(i2<0.09023052453994751){
     s0+=158.0;
     s1+=235.0;
    } else {
     s0+=41.0;
     s1+=1031.0;
    }
   } else {
    if(i2<0.0036190152168273926){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=9459.0;
    }
   }
  }
 }
} else {
 if(i2<0.079098641872406){
  if(i51<0.0015180862974375486){
   if(i7<-4.5068227336741984e-05){
    if(i33<0.0028287358582019806){
     s0+=152.0;
     s1+=293.0;
    } else {
     s0+=840.0;
     s1+=15.0;
    }
   } else {
    if(i28<1.0850647687911987){
     s0+=36350.0;
    } else {
     s0+=24700.0;
     s1+=792.0;
    }
   }
  } else {
   if(i42<0.0028552627190947533){
    if(i32<0.0003486211644485593){
     s0+=1335.0;
    } else {
     s0+=1676.0;
     s1+=1050.0;
    }
   } else {
    if(i15<1.0004981756210327){
     s0+=3083.0;
     s1+=68.0;
    } else {
     s0+=377.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i4<-0.0008049905300140381){
   if(i28<1.639693260192871){
    if(i46<-0.00013843178749084473){
     s0+=352.0;
    } else {
     s0+=125.0;
     s1+=36.0;
    }
   } else {
    if(i74<0.00023241614690050483){
     s0+=18.0;
     s1+=1.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i35<0.061857372522354126){
    if(i34<0.00028894905699416995){
     s0+=6.0;
    } else {
     s0+=35.0;
     s1+=1792.0;
    }
   } else {
    if(i2<0.10404953360557556){
     s0+=676.0;
     s1+=204.0;
    } else {
     s0+=627.0;
     s1+=1830.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i24<1.0398966073989868){
  if(i75<0.045310452580451965){
   if(i25<1.0081018209457397){
    if(i42<0.00029593691579066217){
     s0+=45287.0;
     s1+=44.0;
    } else {
     s0+=10280.0;
     s1+=617.0;
    }
   } else {
    if(i36<1.140648365020752){
     s0+=99.0;
     s1+=232.0;
    } else {
     s0+=182.0;
     s1+=29.0;
    }
   }
  } else {
   if(i2<0.0756925642490387){
    if(i12<0.9942113161087036){
     s0+=6186.0;
     s1+=118.0;
    } else {
     s0+=4246.0;
     s1+=829.0;
    }
   } else {
    if(i12<0.990767776966095){
     s0+=123.0;
     s1+=49.0;
    } else {
     s0+=55.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i7<-2.362358100072015e-05){
   if(i28<1.2371783256530762){
    if(i28<1.0762357711791992){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=1049.0;
    }
   } else {
    if(i1<0.12495413422584534){
     s0+=919.0;
     s1+=165.0;
    } else {
     s0+=80.0;
     s1+=1084.0;
    }
   }
  } else {
   if(i34<0.005325918085873127){
    if(i38<1.1040674448013306){
     s0+=1132.0;
     s1+=222.0;
    } else {
     s0+=1789.0;
     s1+=46.0;
    }
   } else {
    if(i32<0.002489655278623104){
     s1+=135.0;
    } else {
     s0+=214.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i26<0.00020090542966499925){
  if(i49<8.174700269591995e-06){
   if(i77<-0.0009291227906942368){
    s1+=1.0;
   } else {
    s0+=220.0;
   }
  } else {
   s1+=12.0;
  }
 } else {
  if(i23<1.037168264389038){
   s0+=19.0;
  } else {
   if(i1<0.0687221884727478){
    if(i37<1.2524442672729492){
     s1+=317.0;
    } else {
     s0+=159.0;
     s1+=262.0;
    }
   } else {
    if(i5<0.12948071956634521){
     s0+=139.0;
     s1+=3252.0;
    } else {
     s0+=16.0;
     s1+=7789.0;
    }
   }
  }
 }
}
if(i8<1.0562306642532349){
 if(i11<1.0080137252807617){
  if(i23<1.0485899448394775){
   if(i51<0.0013629193417727947){
    if(i23<1.042891263961792){
     s0+=50424.0;
     s1+=102.0;
    } else {
     s0+=3546.0;
     s1+=102.0;
    }
   } else {
    if(i4<6.258487701416016e-05){
     s0+=2378.0;
     s1+=150.0;
    } else {
     s0+=32.0;
     s1+=32.0;
    }
   }
  } else {
   if(i1<0.07845327258110046){
    if(i37<1.1037919521331787){
     s0+=1776.0;
     s1+=565.0;
    } else {
     s0+=6354.0;
     s1+=178.0;
    }
   } else {
    if(i65<2.2592135792365298e-05){
     s0+=110.0;
     s1+=679.0;
    } else {
     s0+=125.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i16<1.0113024711608887){
   if(i33<0.0013585477136075497){
    if(i7<-1.3811295502819121e-05){
     s1+=187.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i20<2.5153160095214844e-05){
     s0+=141.0;
     s1+=7.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i30<0.9978064894676208){
    s0+=3.0;
   } else {
    if(i78<0.0020560026168823242){
     s0+=3.0;
     s1+=224.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i66<1.010695457458496){
  if(i7<-4.398667806526646e-05){
   if(i1<0.11533674597740173){
    if(i6<1.003091812133789){
     s0+=694.0;
     s1+=529.0;
    } else {
     s0+=79.0;
     s1+=582.0;
    }
   } else {
    if(i0<0.15331998467445374){
     s0+=77.0;
     s1+=495.0;
    } else {
     s0+=4.0;
     s1+=2402.0;
    }
   }
  } else {
   if(i32<0.0005125353345647454){
    if(i44<-6.765326361346524e-06){
     s0+=2.0;
     s1+=66.0;
    } else {
     s0+=1615.0;
     s1+=19.0;
    }
   } else {
    if(i38<1.1039339303970337){
     s0+=225.0;
     s1+=756.0;
    } else {
     s0+=2869.0;
     s1+=832.0;
    }
   }
  }
 } else {
  if(i0<0.06568703055381775){
   if(i7<-4.556764542940073e-05){
    if(i79<0.0023370981216430664){
     s0+=6.0;
     s1+=261.0;
    } else {
     s0+=35.0;
     s1+=19.0;
    }
   } else {
    if(i17<0.005878104828298092){
     s0+=511.0;
     s1+=8.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i2<0.09081870317459106){
    if(i41<0.04112100601196289){
     s0+=10.0;
     s1+=180.0;
    } else {
     s0+=73.0;
     s1+=18.0;
    }
   } else {
    if(i46<-0.00028833746910095215){
     s0+=21.0;
     s1+=12.0;
    } else {
     s0+=114.0;
     s1+=8504.0;
    }
   }
  }
 }
}
if(i1<0.08352804183959961){
 if(i20<2.0563602447509766e-05){
  if(i28<1.0856719017028809){
   s0+=37663.0;
  } else {
   if(i4<-0.0005741715431213379){
    if(i51<0.0017443685792386532){
     s0+=15510.0;
     s1+=106.0;
    } else {
     s0+=2067.0;
     s1+=145.0;
    }
   } else {
    if(i1<0.06399524211883545){
     s0+=11344.0;
     s1+=1126.0;
    } else {
     s0+=1257.0;
     s1+=752.0;
    }
   }
  }
 } else {
  if(i43<0.004819273948669434){
   if(i6<1.0015473365783691){
    if(i29<0.04233532026410103){
     s0+=382.0;
     s1+=59.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   } else {
    if(i26<0.00020127810421399772){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=77.0;
     s1+=832.0;
    }
   }
  } else {
   if(i19<-1.1682510375976562e-05){
    if(i44<-1.517422788310796e-05){
     s0+=625.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    s1+=18.0;
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i41<0.059734463691711426){
   if(i9<-0.0004121065139770508){
    s0+=279.0;
   } else {
    if(i64<0.0040829479694366455){
     s0+=61.0;
     s1+=1620.0;
    } else {
     s0+=54.0;
     s1+=82.0;
    }
   }
  } else {
   if(i1<0.1273842453956604){
    if(i4<0.0010055303573608398){
     s0+=791.0;
     s1+=83.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i26<0.0037700077518820763){
     s0+=42.0;
     s1+=349.0;
    } else {
     s0+=456.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i2<0.11232322454452515){
   if(i43<0.015134483575820923){
    if(i15<0.9982097148895264){
     s0+=33.0;
    } else {
     s0+=32.0;
     s1+=1016.0;
    }
   } else {
    if(i34<0.0026133093051612377){
     s0+=10.0;
     s1+=16.0;
    } else {
     s0+=195.0;
     s1+=5.0;
    }
   }
  } else {
   if(i6<0.9963538646697998){
    if(i32<0.0030897692777216434){
     s0+=68.0;
    } else {
     s0+=2.0;
     s1+=73.0;
    }
   } else {
    if(i15<0.9979872703552246){
     s0+=3.0;
    } else {
     s0+=42.0;
     s1+=10646.0;
    }
   }
  }
 }
}
if(i19<0.0008065104484558105){
 if(i1<0.08784276247024536){
  if(i4<0.0006018579006195068){
   if(i38<1.0557184219360352){
    if(i64<-0.0019735395908355713){
     s0+=618.0;
     s1+=1.0;
    } else {
     s0+=42432.0;
    }
   } else {
    if(i8<1.0401519536972046){
     s0+=17549.0;
     s1+=527.0;
    } else {
     s0+=7947.0;
     s1+=1650.0;
    }
   }
  } else {
   if(i73<1.0012190341949463){
    if(i57<-0.000733494758605957){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i67<0.031820476055145264){
     s0+=20.0;
     s1+=236.0;
    } else {
     s0+=113.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i15<0.9985270500183105){
   if(i49<0.00018659766647033393){
    if(i9<-0.0004101097583770752){
     s0+=600.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   } else {
    if(i8<1.0399566888809204){
     s0+=17.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i27<0.02240109071135521){
    if(i35<0.06677243113517761){
     s0+=26.0;
     s1+=390.0;
    } else {
     s0+=690.0;
     s1+=341.0;
    }
   } else {
    if(i52<0.05920565128326416){
     s0+=79.0;
     s1+=2405.0;
    } else {
     s0+=282.0;
     s1+=1375.0;
    }
   }
  }
 }
} else {
 if(i17<0.002249313984066248){
  if(i10<1.041433572769165){
   if(i74<4.146267019677907e-05){
    if(i44<-1.2373593563097529e-05){
     s1+=26.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i15<1.0003037452697754){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=302.0;
     s1+=2.0;
    }
   }
  } else {
   if(i37<1.1944798231124878){
    if(i33<0.00030896038515493274){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=212.0;
    }
   } else {
    if(i15<1.0019702911376953){
     s0+=117.0;
     s1+=11.0;
    } else {
     s1+=59.0;
    }
   }
  }
 } else {
  if(i34<0.00034713721834123135){
   s0+=62.0;
  } else {
   if(i15<0.9987325668334961){
    s0+=67.0;
   } else {
    if(i19<0.0011627674102783203){
     s0+=36.0;
     s1+=718.0;
    } else {
     s1+=8938.0;
    }
   }
  }
 }
}
if(i19<0.0007562637329101562){
 if(i1<0.08523821830749512){
  if(i26<0.00030670693377032876){
   if(i40<1.0113744735717773){
    if(i64<-0.0026429295539855957){
     s0+=6.0;
     s1+=24.0;
    } else {
     s0+=53062.0;
     s1+=240.0;
    }
   } else {
    if(i7<-2.568900163169019e-05){
     s0+=2.0;
     s1+=60.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i39<0.0020226254127919674){
    if(i33<0.00039836548967286944){
     s0+=2551.0;
     s1+=59.0;
    } else {
     s0+=2400.0;
     s1+=1524.0;
    }
   } else {
    if(i45<-0.0033073723316192627){
     s0+=1887.0;
     s1+=472.0;
    } else {
     s0+=8453.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i15<0.998518705368042){
   if(i49<0.00018399985856376588){
    if(i15<0.9980583190917969){
     s0+=626.0;
    } else {
     s0+=32.0;
     s1+=5.0;
    }
   } else {
    if(i19<-0.0034248828887939453){
     s0+=41.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  } else {
   if(i53<0.0010827095247805119){
    if(i71<1.0255134105682373){
     s0+=160.0;
     s1+=841.0;
    } else {
     s0+=556.0;
     s1+=172.0;
    }
   } else {
    if(i0<0.1181500256061554){
     s0+=354.0;
     s1+=892.0;
    } else {
     s0+=79.0;
     s1+=2701.0;
    }
   }
  }
 }
} else {
 if(i2<0.058556050062179565){
  if(i61<0.0005881236866116524){
   if(i46<0.00022411346435546875){
    if(i32<0.0005596153205260634){
     s1+=23.0;
    } else {
     s0+=580.0;
     s1+=11.0;
    }
   } else {
    s1+=44.0;
   }
  } else {
   if(i42<0.00030644109938293695){
    s0+=1.0;
   } else {
    s1+=132.0;
   }
  }
 } else {
  if(i30<0.9990257024765015){
   if(i38<1.453892469406128){
    s0+=19.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i6<1.004080057144165){
    if(i1<0.07501780986785889){
     s0+=49.0;
     s1+=73.0;
    } else {
     s0+=64.0;
     s1+=1261.0;
    }
   } else {
    s1+=8592.0;
   }
  }
 }
}
if(i2<0.08522835373878479){
 if(i15<1.0018281936645508){
  if(i11<1.0077202320098877){
   if(i27<0.0170164592564106){
    if(i79<-0.0014366507530212402){
     s0+=3466.0;
     s1+=361.0;
    } else {
     s0+=55612.0;
     s1+=266.0;
    }
   } else {
    if(i6<0.9970133304595947){
     s0+=6900.0;
     s1+=104.0;
    } else {
     s0+=2042.0;
     s1+=1058.0;
    }
   }
  } else {
   if(i61<0.0006222762167453766){
    if(i32<0.0007337115239351988){
     s0+=122.0;
     s1+=186.0;
    } else {
     s0+=852.0;
     s1+=47.0;
    }
   } else {
    if(i17<0.0032798410393297672){
     s0+=60.0;
    } else {
     s1+=188.0;
    }
   }
  }
 } else {
  if(i69<1.000417709350586){
   if(i12<0.9989184141159058){
    if(i11<0.9768151044845581){
     s0+=4.0;
     s1+=71.0;
    } else {
     s0+=156.0;
     s1+=41.0;
    }
   } else {
    if(i53<0.0005291168345138431){
     s0+=26.0;
     s1+=9.0;
    } else {
     s0+=56.0;
     s1+=775.0;
    }
   }
  } else {
   if(i51<0.00657431036233902){
    if(i6<1.005660057067871){
     s0+=462.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i74<0.00010614777420414612){
     s0+=7.0;
     s1+=74.0;
    } else {
     s0+=36.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i12<1.0010385513305664){
  if(i7<-1.380167668685317e-05){
   if(i41<0.05584225058555603){
    if(i80<0.00012880563735961914){
     s0+=7.0;
     s1+=1458.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i32<0.004923478700220585){
     s0+=290.0;
     s1+=460.0;
    } else {
     s0+=156.0;
     s1+=1152.0;
    }
   }
  } else {
   if(i10<1.0829319953918457){
    if(i15<0.9984541535377502){
     s0+=154.0;
    } else {
     s0+=161.0;
     s1+=284.0;
    }
   } else {
    if(i33<0.003176993690431118){
     s0+=487.0;
     s1+=5.0;
    } else {
     s0+=66.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i9<0.00039261579513549805){
   if(i17<0.001964796334505081){
    if(i58<-0.0025409336667507887){
     s0+=66.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=106.0;
    }
   } else {
    if(i63<0.043659508228302){
     s0+=11.0;
     s1+=1085.0;
    } else {
     s0+=32.0;
     s1+=232.0;
    }
   }
  } else {
   if(i19<0.00023192167282104492){
    if(i2<0.11042499542236328){
     s0+=26.0;
     s1+=72.0;
    } else {
     s0+=22.0;
     s1+=683.0;
    }
   } else {
    if(i6<1.0018885135650635){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=8120.0;
    }
   }
  }
 }
}
if(i1<0.08502736687660217){
 if(i12<1.00492262840271){
  if(i2<0.06928122043609619){
   if(i56<0.008938564918935299){
    if(i70<0.0006775489309802651){
     s0+=57963.0;
     s1+=416.0;
    } else {
     s0+=6600.0;
     s1+=603.0;
    }
   } else {
    if(i17<0.005845069419592619){
     s0+=2056.0;
     s1+=434.0;
    } else {
     s0+=284.0;
     s1+=276.0;
    }
   }
  } else {
   if(i41<0.03674352169036865){
    if(i57<0.006450027227401733){
     s0+=47.0;
     s1+=456.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i66<1.004577398300171){
     s0+=1603.0;
     s1+=141.0;
    } else {
     s0+=151.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i9<0.0004519224166870117){
   if(i52<-0.019921541213989258){
    if(i28<1.2160128355026245){
     s0+=2.0;
     s1+=58.0;
    } else {
     s0+=18.0;
     s1+=5.0;
    }
   } else {
    if(i5<0.04697173833847046){
     s0+=287.0;
     s1+=3.0;
    } else {
     s0+=72.0;
     s1+=30.0;
    }
   }
  } else {
   if(i53<0.0007600435055792332){
    if(i7<-6.399935227818787e-05){
     s1+=11.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i58<-0.0030855739023536444){
     s0+=6.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=593.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985578060150146){
  if(i50<0.00101805804297328){
   if(i69<0.9998038411140442){
    if(i68<-3.0435244298132602e-06){
     s0+=15.0;
     s1+=4.0;
    } else {
     s0+=627.0;
     s1+=2.0;
    }
   } else {
    if(i50<0.0007883360958658159){
     s0+=20.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  } else {
   if(i62<-0.017146751284599304){
    if(i25<0.9786587953567505){
     s0+=22.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i68<8.667998372402508e-07){
     s1+=14.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i72<-0.0001671222853474319){
   if(i2<0.12118694186210632){
    if(i57<0.00651705265045166){
     s0+=110.0;
     s1+=1532.0;
    } else {
     s0+=260.0;
     s1+=72.0;
    }
   } else {
    if(i19<0.0007860064506530762){
     s0+=254.0;
     s1+=2824.0;
    } else {
     s1+=7818.0;
    }
   }
  } else {
   if(i54<1.0057270526885986){
    if(i42<0.00030994246480986476){
     s0+=9.0;
    } else {
     s0+=56.0;
     s1+=1055.0;
    }
   } else {
    if(i6<1.0037400722503662){
     s0+=564.0;
     s1+=313.0;
    } else {
     s0+=16.0;
     s1+=415.0;
    }
   }
  }
 }
}
if(i4<0.0005651116371154785){
 if(i48<0.0296320877969265){
  if(i0<0.08492270112037659){
   if(i13<1.0044379234313965){
    if(i43<-0.007711619138717651){
     s0+=602.0;
     s1+=230.0;
    } else {
     s0+=58044.0;
     s1+=572.0;
    }
   } else {
    if(i44<-9.962077456293628e-06){
     s0+=47.0;
     s1+=167.0;
    } else {
     s0+=381.0;
     s1+=39.0;
    }
   }
  } else {
   if(i45<0.004689455032348633){
    if(i21<1.003201961517334){
     s0+=164.0;
     s1+=90.0;
    } else {
     s0+=22.0;
     s1+=569.0;
    }
   } else {
    if(i14<6.532669067382812e-05){
     s0+=263.0;
     s1+=56.0;
    } else {
     s0+=8.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i2<0.07646888494491577){
   if(i13<0.9895240068435669){
    if(i61<0.0022468389943242073){
     s0+=6431.0;
     s1+=179.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i38<1.1476502418518066){
     s0+=1930.0;
     s1+=903.0;
    } else {
     s0+=1477.0;
     s1+=60.0;
    }
   }
  } else {
   if(i31<0.04573488235473633){
    if(i7<6.957090590731241e-06){
     s0+=94.0;
     s1+=1638.0;
    } else {
     s0+=53.0;
     s1+=15.0;
    }
   } else {
    if(i29<0.040019698441028595){
     s0+=974.0;
     s1+=599.0;
    } else {
     s0+=33.0;
     s1+=479.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003205887333024293){
  s0+=142.0;
 } else {
  if(i4<0.000945746898651123){
   if(i17<0.0027694921009242535){
    if(i37<1.2007015943527222){
     s1+=46.0;
    } else {
     s0+=202.0;
     s1+=9.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=56.0;
     s1+=1384.0;
    } else {
     s0+=63.0;
     s1+=102.0;
    }
   }
  } else {
   if(i12<1.0063927173614502){
    if(i32<0.009083718992769718){
     s0+=6.0;
     s1+=1241.0;
    } else {
     s0+=88.0;
     s1+=544.0;
    }
   } else {
    s1+=8199.0;
   }
  }
 }
}
if(i1<0.08523821830749512){
 if(i3<4.088878631591797e-05){
  if(i75<0.04056556522846222){
   if(i57<-0.0038449764251708984){
    if(i36<1.1919987201690674){
     s0+=31.0;
     s1+=140.0;
    } else {
     s0+=53.0;
     s1+=2.0;
    }
   } else {
    if(i40<1.0111298561096191){
     s0+=54497.0;
     s1+=434.0;
    } else {
     s0+=204.0;
     s1+=126.0;
    }
   }
  } else {
   if(i39<0.0020071621984243393){
    if(i29<0.011395246721804142){
     s0+=4993.0;
     s1+=555.0;
    } else {
     s0+=531.0;
     s1+=645.0;
    }
   } else {
    if(i4<0.00021988153457641602){
     s0+=8203.0;
     s1+=169.0;
    } else {
     s0+=344.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i28<1.082350254058838){
   s0+=231.0;
  } else {
   if(i36<1.2476948499679565){
    if(i26<0.0001640817936277017){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=716.0;
    }
   } else {
    if(i53<0.0024578555021435022){
     s0+=159.0;
     s1+=45.0;
    } else {
     s0+=59.0;
     s1+=243.0;
    }
   }
  }
 }
} else {
 if(i7<-1.9305094610899687e-05){
  if(i13<1.0062553882598877){
   if(i43<0.014436215162277222){
    if(i29<0.010650094598531723){
     s0+=65.0;
     s1+=193.0;
    } else {
     s0+=38.0;
     s1+=2373.0;
    }
   } else {
    if(i48<0.05731838569045067){
     s0+=301.0;
     s1+=258.0;
    } else {
     s0+=143.0;
     s1+=1134.0;
    }
   }
  } else {
   if(i61<0.00013846246292814612){
    if(i77<-0.0030036699026823044){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=138.0;
    }
   } else {
    if(i19<0.001422286033630371){
     s0+=18.0;
     s1+=1329.0;
    } else {
     s1+=7878.0;
    }
   }
  }
 } else {
  if(i73<0.9973593950271606){
   if(i15<0.9990522265434265){
    s0+=508.0;
   } else {
    if(i24<1.049513339996338){
     s1+=3.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i43<0.0126475989818573){
    if(i31<0.04910364747047424){
     s0+=57.0;
     s1+=334.0;
    } else {
     s0+=170.0;
     s1+=90.0;
    }
   } else {
    if(i2<0.2583838105201721){
     s0+=496.0;
     s1+=67.0;
    } else {
     s0+=55.0;
     s1+=79.0;
    }
   }
  }
 }
}
if(i25<1.0088279247283936){
 if(i2<0.081397145986557){
  if(i3<4.178285598754883e-05){
   if(i10<1.0398929119110107){
    if(i71<0.9782696962356567){
     s0+=4550.0;
     s1+=412.0;
    } else {
     s0+=58013.0;
     s1+=615.0;
    }
   } else {
    if(i7<-1.641289418330416e-05){
     s0+=1274.0;
     s1+=485.0;
    } else {
     s0+=3605.0;
     s1+=243.0;
    }
   }
  } else {
   if(i38<1.058716893196106){
    s0+=239.0;
   } else {
    if(i56<0.003089793026447296){
     s0+=63.0;
     s1+=51.0;
    } else {
     s0+=73.0;
     s1+=638.0;
    }
   }
  }
 } else {
  if(i69<0.9995731711387634){
   if(i68<-2.3520005925092846e-06){
    if(i74<0.00027401329134590924){
     s0+=1.0;
     s1+=64.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i7<-3.889004437951371e-05){
     s1+=6.0;
    } else {
     s0+=330.0;
    }
   }
  } else {
   if(i52<0.057701557874679565){
    if(i31<0.055029988288879395){
     s0+=61.0;
     s1+=2555.0;
    } else {
     s0+=113.0;
     s1+=220.0;
    }
   } else {
    if(i17<0.007891671732068062){
     s0+=391.0;
     s1+=241.0;
    } else {
     s0+=41.0;
     s1+=484.0;
    }
   }
  }
 }
} else {
 if(i6<1.0021001100540161){
  if(i17<0.0036391038447618484){
   if(i37<1.0950405597686768){
    if(i6<1.0006232261657715){
     s0+=305.0;
     s1+=118.0;
    } else {
     s0+=8.0;
     s1+=266.0;
    }
   } else {
    if(i69<1.0000290870666504){
     s0+=1331.0;
     s1+=70.0;
    } else {
     s0+=248.0;
     s1+=130.0;
    }
   }
  } else {
   if(i3<-2.5272369384765625e-05){
    if(i44<-4.382512088341173e-06){
     s0+=11.0;
     s1+=103.0;
    } else {
     s0+=166.0;
     s1+=3.0;
    }
   } else {
    if(i19<-0.0007064640522003174){
     s0+=80.0;
     s1+=192.0;
    } else {
     s0+=9.0;
     s1+=1007.0;
    }
   }
  }
 } else {
  if(i5<0.04639974236488342){
   if(i7<-6.85709819663316e-05){
    if(i14<-1.430511474609375e-06){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=220.0;
    }
   } else {
    if(i53<0.001354247098788619){
     s0+=89.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=37.0;
    }
   }
  } else {
   if(i61<0.00046374480007216334){
    if(i14<3.7610530853271484e-05){
     s0+=51.0;
     s1+=22.0;
    } else {
     s0+=81.0;
     s1+=1937.0;
    }
   } else {
    if(i29<0.007549960631877184){
     s0+=4.0;
     s1+=352.0;
    } else {
     s0+=1.0;
     s1+=6595.0;
    }
   }
  }
 }
}
if(i8<1.0564017295837402){
 if(i2<0.08244869112968445){
  if(i11<1.0082993507385254){
   if(i64<-0.0012664198875427246){
    if(i39<0.0016969215357676148){
     s0+=1542.0;
     s1+=606.0;
    } else {
     s0+=2976.0;
     s1+=78.0;
    }
   } else {
    if(i10<1.0401476621627808){
     s0+=57235.0;
     s1+=320.0;
    } else {
     s0+=2404.0;
     s1+=243.0;
    }
   }
  } else {
   if(i38<1.1040980815887451){
    if(i7<-1.9376393538550474e-05){
     s1+=198.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i30<1.0013346672058105){
     s0+=137.0;
     s1+=4.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i9<-0.00036093592643737793){
   if(i33<0.008514813147485256){
    if(i40<1.0074217319488525){
     s0+=129.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.010319618508219719){
     s1+=10.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i32<0.00031630328157916665){
    s0+=35.0;
   } else {
    if(i23<1.0469107627868652){
     s0+=65.0;
     s1+=28.0;
    } else {
     s0+=56.0;
     s1+=896.0;
    }
   }
  }
 }
} else {
 if(i19<0.0007722377777099609){
  if(i12<1.001840591430664){
   if(i1<0.09995785355567932){
    if(i36<1.1037919521331787){
     s0+=870.0;
     s1+=532.0;
    } else {
     s0+=4015.0;
     s1+=484.0;
    }
   } else {
    if(i17<0.005263885483145714){
     s0+=906.0;
     s1+=775.0;
    } else {
     s0+=82.0;
     s1+=1849.0;
    }
   }
  } else {
   if(i27<0.022704940289258957){
    if(i7<-2.991888868564274e-05){
     s0+=96.0;
     s1+=295.0;
    } else {
     s0+=185.0;
     s1+=18.0;
    }
   } else {
    if(i49<1.33203529912862e-05){
     s0+=41.0;
     s1+=47.0;
    } else {
     s0+=23.0;
     s1+=1129.0;
    }
   }
  }
 } else {
  if(i2<0.06460529565811157){
   if(i68<-4.885714588453993e-06){
    if(i70<-0.00026951171457767487){
     s0+=2.0;
    } else {
     s1+=194.0;
    }
   } else {
    if(i62<0.0032892264425754547){
     s0+=151.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  } else {
   if(i29<0.011698925867676735){
    if(i58<-0.006168799474835396){
     s0+=45.0;
     s1+=43.0;
    } else {
     s0+=24.0;
     s1+=1132.0;
    }
   } else {
    if(i7<-2.3912441974971443e-05){
     s0+=2.0;
     s1+=8291.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i9<0.00043508410453796387){
 if(i2<0.08414876461029053){
  if(i26<0.0003150216653011739){
   if(i50<0.00028316836687736213){
    if(i16<1.0109915733337402){
     s0+=52515.0;
     s1+=133.0;
    } else {
     s0+=26.0;
     s1+=55.0;
    }
   } else {
    if(i6<0.9970425367355347){
     s0+=1052.0;
     s1+=1.0;
    } else {
     s0+=117.0;
     s1+=117.0;
    }
   }
  } else {
   if(i34<0.0011248879600316286){
    if(i28<1.0840110778808594){
     s0+=2273.0;
    } else {
     s0+=1350.0;
     s1+=1283.0;
    }
   } else {
    if(i56<0.009149903431534767){
     s0+=8983.0;
     s1+=151.0;
    } else {
     s0+=1688.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i9<-0.00047892332077026367){
   if(i30<0.9992748498916626){
    if(i69<0.9997832775115967){
     s0+=377.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i29<0.009904429316520691){
     s1+=5.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i63<0.03614002466201782){
    if(i31<0.0431140661239624){
     s0+=40.0;
     s1+=2242.0;
    } else {
     s0+=265.0;
     s1+=746.0;
    }
   } else {
    if(i38<1.293292760848999){
     s0+=579.0;
     s1+=527.0;
    } else {
     s0+=10.0;
     s1+=338.0;
    }
   }
  }
 }
} else {
 if(i5<0.08161786198616028){
  if(i65<7.78525645728223e-06){
   if(i28<1.0759316682815552){
    s0+=214.0;
   } else {
    if(i26<0.00019211636390537024){
     s0+=102.0;
     s1+=6.0;
    } else {
     s0+=130.0;
     s1+=1931.0;
    }
   }
  } else {
   if(i3<3.5822391510009766e-05){
    if(i12<1.0018906593322754){
     s0+=1037.0;
     s1+=120.0;
    } else {
     s0+=8.0;
     s1+=51.0;
    }
   } else {
    if(i29<0.02302205190062523){
     s0+=96.0;
     s1+=60.0;
    } else {
     s0+=1.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i6<1.0023677349090576){
   if(i37<1.2579885721206665){
    if(i32<0.002457060618326068){
     s0+=2.0;
     s1+=45.0;
    } else {
     s0+=108.0;
     s1+=24.0;
    }
   } else {
    if(i31<0.05667558312416077){
     s0+=2.0;
     s1+=320.0;
    } else {
     s0+=82.0;
     s1+=188.0;
    }
   }
  } else {
   if(i55<1.004622220993042){
    if(i11<1.0154120922088623){
     s0+=39.0;
     s1+=1922.0;
    } else {
     s1+=6403.0;
    }
   } else {
    if(i7<-8.465985592920333e-05){
     s1+=39.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
}
if(i19<0.0008068680763244629){
 if(i6<1.0023620128631592){
  if(i59<0.025570455938577652){
   if(i22<1.0078630447387695){
    if(i16<0.9723568558692932){
     s0+=68.0;
     s1+=82.0;
    } else {
     s0+=53375.0;
     s1+=420.0;
    }
   } else {
    if(i7<-2.32153688557446e-05){
     s0+=189.0;
     s1+=428.0;
    } else {
     s0+=595.0;
     s1+=31.0;
    }
   }
  } else {
   if(i8<1.041318416595459){
    if(i12<0.9944290518760681){
     s0+=7562.0;
     s1+=54.0;
    } else {
     s0+=2259.0;
     s1+=452.0;
    }
   } else {
    if(i67<0.12235821783542633){
     s0+=5835.0;
     s1+=2863.0;
    } else {
     s0+=186.0;
     s1+=917.0;
    }
   }
  }
 } else {
  if(i9<0.00036966800689697266){
   if(i32<0.0003354364598635584){
    s0+=56.0;
   } else {
    if(i17<0.002814049832522869){
     s0+=9.0;
     s1+=4.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i18<0.9982174634933472){
    if(i81<0.0014683024492114782){
     s0+=34.0;
     s1+=8.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i29<0.019947655498981476){
     s0+=147.0;
     s1+=403.0;
    } else {
     s0+=2.0;
     s1+=1666.0;
    }
   }
  }
 }
} else {
 if(i20<-8.344650268554688e-06){
  if(i70<-0.0019716692622750998){
   s1+=2.0;
  } else {
   s0+=160.0;
  }
 } else {
  if(i1<0.061331748962402344){
   if(i36<1.1532785892486572){
    s1+=158.0;
   } else {
    if(i4<0.000994563102722168){
     s0+=382.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i1<0.07470861077308655){
    if(i7<-4.330423689680174e-05){
     s0+=5.0;
     s1+=213.0;
    } else {
     s0+=44.0;
     s1+=4.0;
    }
   } else {
    if(i53<0.0010297258850187063){
     s0+=49.0;
     s1+=1172.0;
    } else {
     s0+=1.0;
     s1+=8322.0;
    }
   }
  }
 }
}
if(i2<0.08173486590385437){
 if(i4<0.0006018579006195068){
  if(i43<-0.005849778652191162){
   if(i47<0.0024205991066992283){
    if(i69<0.9998413920402527){
     s0+=441.0;
     s1+=477.0;
    } else {
     s0+=1329.0;
     s1+=132.0;
    }
   } else {
    if(i52<-0.05890563130378723){
     s0+=676.0;
     s1+=132.0;
    } else {
     s0+=1326.0;
     s1+=34.0;
    }
   }
  } else {
   if(i59<0.018550656735897064){
    if(i7<-3.988502430729568e-05){
     s0+=590.0;
     s1+=138.0;
    } else {
     s0+=50409.0;
     s1+=186.0;
    }
   } else {
    if(i32<0.001877745147794485){
     s0+=5702.0;
     s1+=885.0;
    } else {
     s0+=8494.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i17<0.0020543746650218964){
   if(i18<1.0079216957092285){
    if(i58<0.00046223291428759694){
     s0+=169.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i57<0.0033258795738220215){
    if(i45<0.003290146589279175){
     s0+=80.0;
     s1+=875.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i14<0.00019603967666625977){
     s0+=63.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i18<1.000347375869751){
  if(i15<0.9985270500183105){
   if(i44<-9.034853064804338e-06){
    if(i37<1.1414752006530762){
     s0+=22.0;
    } else {
     s0+=5.0;
     s1+=20.0;
    }
   } else {
    s0+=433.0;
   }
  } else {
   if(i38<1.309299111366272){
    if(i53<0.0007538171485066414){
     s0+=493.0;
     s1+=548.0;
    } else {
     s0+=291.0;
     s1+=1286.0;
    }
   } else {
    if(i78<-0.008312761783599854){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=851.0;
    }
   }
  }
 } else {
  if(i13<1.0062553882598877){
   if(i27<0.019453834742307663){
    if(i25<1.0201668739318848){
     s0+=158.0;
     s1+=310.0;
    } else {
     s0+=110.0;
     s1+=25.0;
    }
   } else {
    if(i72<-0.00012135271390434355){
     s0+=61.0;
     s1+=2128.0;
    } else {
     s0+=122.0;
     s1+=603.0;
    }
   }
  } else {
   if(i17<0.0019340941216796637){
    if(i42<0.003364412346854806){
     s1+=113.0;
    } else {
     s0+=19.0;
     s1+=3.0;
    }
   } else {
    if(i1<0.0820380449295044){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=8373.0;
    }
   }
  }
 }
}
if(i7<-7.396280852844939e-05){
 if(i4<0.0001004636287689209){
  if(i8<1.0696518421173096){
   if(i8<1.0447509288787842){
    if(i18<1.0113554000854492){
     s0+=661.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i69<1.0003563165664673){
     s0+=11.0;
     s1+=31.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i67<0.053203146904706955){
    if(i25<1.0157296657562256){
     s0+=40.0;
     s1+=10.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i32<0.01134524866938591){
     s0+=2.0;
     s1+=264.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i71<0.9835703372955322){
   if(i2<0.031083732843399048){
    if(i66<0.9731864929199219){
     s0+=80.0;
     s1+=20.0;
    } else {
     s0+=19.0;
     s1+=75.0;
    }
   } else {
    if(i33<0.004936535842716694){
     s0+=9.0;
     s1+=24.0;
    } else {
     s0+=6.0;
     s1+=1209.0;
    }
   }
  } else {
   if(i14<-0.0003986656665802002){
    if(i8<1.1219350099563599){
     s0+=41.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i14<6.258487701416016e-06){
     s0+=110.0;
     s1+=781.0;
    } else {
     s0+=5.0;
     s1+=9044.0;
    }
   }
  }
 }
} else {
 if(i5<0.06863737106323242){
  if(i6<1.0024782419204712){
   if(i42<0.00031463586492463946){
    if(i21<1.0068848133087158){
     s0+=46777.0;
     s1+=55.0;
    } else {
     s0+=29.0;
     s1+=51.0;
    }
   } else {
    if(i28<1.229804515838623){
     s0+=7605.0;
     s1+=2196.0;
    } else {
     s0+=12981.0;
     s1+=173.0;
    }
   }
  } else {
   if(i47<0.00020623966702260077){
    if(i37<1.2388319969177246){
     s0+=3.0;
     s1+=34.0;
    } else {
     s0+=107.0;
    }
   } else {
    if(i37<1.2314128875732422){
     s1+=466.0;
    } else {
     s0+=75.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i0<0.10607782006263733){
   if(i7<-2.353095442231279e-05){
    if(i32<0.0018777174409478903){
     s0+=38.0;
     s1+=511.0;
    } else {
     s0+=391.0;
     s1+=122.0;
    }
   } else {
    if(i24<1.0278372764587402){
     s0+=90.0;
     s1+=104.0;
    } else {
     s0+=1052.0;
     s1+=110.0;
    }
   }
  } else {
   if(i24<1.084924578666687){
    if(i65<2.1667725377483293e-05){
     s0+=47.0;
     s1+=1209.0;
    } else {
     s0+=46.0;
     s1+=37.0;
    }
   } else {
    if(i7<-2.1036785256001167e-05){
     s0+=141.0;
     s1+=556.0;
    } else {
     s0+=506.0;
     s1+=131.0;
    }
   }
  }
 }
}
if(i11<1.0081671476364136){
 if(i15<1.001847743988037){
  if(i5<0.07113850116729736){
   if(i8<1.042891263961792){
    if(i2<0.07860881090164185){
     s0+=60000.0;
     s1+=631.0;
    } else {
     s0+=145.0;
     s1+=113.0;
    }
   } else {
    if(i6<0.9981330037117004){
     s0+=3676.0;
     s1+=278.0;
    } else {
     s0+=3563.0;
     s1+=1163.0;
    }
   }
  } else {
   if(i17<0.00468874629586935){
    if(i41<0.05103510618209839){
     s0+=69.0;
     s1+=331.0;
    } else {
     s0+=1184.0;
     s1+=290.0;
    }
   } else {
    if(i9<-0.0005213022232055664){
     s0+=66.0;
    } else {
     s0+=108.0;
     s1+=1037.0;
    }
   }
  }
 } else {
  if(i7<-0.00011729907419066876){
   if(i72<-0.00043579525663517416){
    if(i8<1.088477373123169){
     s0+=2.0;
     s1+=37.0;
    } else {
     s1+=804.0;
    }
   } else {
    if(i2<0.011663466691970825){
     s0+=27.0;
     s1+=17.0;
    } else {
     s0+=20.0;
     s1+=360.0;
    }
   }
  } else {
   if(i4<0.000372469425201416){
    if(i0<0.1090782880783081){
     s0+=559.0;
     s1+=71.0;
    } else {
     s0+=2.0;
     s1+=71.0;
    }
   } else {
    if(i32<0.010721602477133274){
     s0+=176.0;
     s1+=925.0;
    } else {
     s0+=66.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i7<-4.330089723225683e-05){
  if(i9<-0.00033274292945861816){
   s0+=4.0;
  } else {
   if(i8<1.0432554483413696){
    if(i37<1.2388319969177246){
     s1+=45.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i55<1.0016305446624756){
     s0+=24.0;
     s1+=9741.0;
    } else {
     s0+=62.0;
     s1+=508.0;
    }
   }
  }
 } else {
  if(i0<0.10297462344169617){
   if(i53<0.001996699720621109){
    if(i33<0.0012019634013995528){
     s0+=160.0;
     s1+=113.0;
    } else {
     s0+=904.0;
     s1+=10.0;
    }
   } else {
    if(i49<0.00010179234232055023){
     s1+=116.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i28<1.255998969078064){
    if(i17<0.0019471395062282681){
     s0+=42.0;
     s1+=70.0;
    } else {
     s0+=11.0;
     s1+=368.0;
    }
   } else {
    if(i49<8.833578613121063e-05){
     s0+=157.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=80.0;
    }
   }
  }
 }
}
if(i6<1.0023914575576782){
 if(i8<1.0452277660369873){
  if(i2<0.08592677116394043){
   if(i64<-0.0010932683944702148){
    if(i37<1.1394507884979248){
     s0+=1906.0;
     s1+=485.0;
    } else {
     s0+=3027.0;
     s1+=72.0;
    }
   } else {
    if(i59<0.02454279735684395){
     s0+=50073.0;
     s1+=79.0;
    } else {
     s0+=6925.0;
     s1+=250.0;
    }
   }
  } else {
   if(i23<1.0447213649749756){
    if(i22<0.9615583419799805){
     s1+=1.0;
    } else {
     s0+=82.0;
     s1+=5.0;
    }
   } else {
    if(i4<-0.000869065523147583){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=240.0;
    }
   }
  }
 } else {
  if(i1<0.09140962362289429){
   if(i36<1.103413462638855){
    if(i59<0.03973396494984627){
     s0+=1655.0;
     s1+=472.0;
    } else {
     s0+=284.0;
     s1+=467.0;
    }
   } else {
    if(i29<0.05543617159128189){
     s0+=5346.0;
     s1+=438.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   }
  } else {
   if(i72<-0.00010932412988040596){
    if(i31<0.05232208967208862){
     s0+=56.0;
     s1+=1954.0;
    } else {
     s0+=617.0;
     s1+=960.0;
    }
   } else {
    if(i63<0.040987491607666016){
     s0+=129.0;
     s1+=356.0;
    } else {
     s0+=380.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041425228118896){
  if(i7<-4.393387644086033e-05){
   if(i14<-9.894371032714844e-06){
    if(i27<0.019102858379483223){
     s0+=89.0;
     s1+=66.0;
    } else {
     s0+=30.0;
     s1+=345.0;
    }
   } else {
    if(i17<0.001502060447819531){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=1103.0;
    }
   }
  } else {
   if(i68<-5.621822310786229e-06){
    s1+=120.0;
   } else {
    if(i53<0.0011297400342300534){
     s0+=254.0;
     s1+=1.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i12<1.006155014038086){
   if(i21<0.9915551543235779){
    if(i46<0.00018769502639770508){
     s0+=19.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=226.0;
    }
   } else {
    if(i29<0.01693827658891678){
     s0+=18.0;
     s1+=83.0;
    } else {
     s1+=1110.0;
    }
   }
  } else {
   s1+=8252.0;
  }
 }
}
if(i1<0.08303147554397583){
 if(i12<1.0049445629119873){
  if(i43<-0.004933714866638184){
   if(i2<0.04141700267791748){
    if(i33<0.0003464374167378992){
     s0+=1063.0;
    } else {
     s0+=2893.0;
     s1+=548.0;
    }
   } else {
    if(i54<0.9883075952529907){
     s0+=217.0;
     s1+=429.0;
    } else {
     s0+=296.0;
     s1+=69.0;
    }
   }
  } else {
   if(i5<0.0610370934009552){
    if(i6<1.0024935007095337){
     s0+=61691.0;
     s1+=836.0;
    } else {
     s0+=110.0;
     s1+=99.0;
    }
   } else {
    if(i48<0.025727447122335434){
     s0+=1581.0;
     s1+=115.0;
    } else {
     s0+=679.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i44<-1.4470709174929652e-05){
   if(i4<0.00021836161613464355){
    if(i6<1.000061273574829){
     s0+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i1<0.08287554979324341){
     s0+=3.0;
     s1+=623.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i36<1.0985562801361084){
    s1+=26.0;
   } else {
    if(i27<0.030916515737771988){
     s0+=371.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i7<-1.9298850020277314e-05){
  if(i1<0.12466564774513245){
   if(i45<0.004314243793487549){
    if(i31<0.05659431219100952){
     s0+=44.0;
     s1+=2018.0;
    } else {
     s0+=72.0;
     s1+=100.0;
    }
   } else {
    if(i41<0.047143012285232544){
     s0+=6.0;
     s1+=26.0;
    } else {
     s0+=357.0;
     s1+=27.0;
    }
   }
  } else {
   if(i17<0.0022130534052848816){
    if(i41<0.08442458510398865){
     s1+=146.0;
    } else {
     s0+=68.0;
     s1+=10.0;
    }
   } else {
    if(i7<-0.000684062484651804){
     s0+=12.0;
    } else {
     s0+=85.0;
     s1+=11280.0;
    }
   }
  }
 } else {
  if(i4<-0.0008576810359954834){
   if(i17<0.006275280844420195){
    if(i46<-5.942583084106445e-05){
     s0+=576.0;
    } else {
     s0+=49.0;
     s1+=6.0;
    }
   } else {
    if(i62<-0.008098549209535122){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i35<0.06309998035430908){
    if(i76<6.211637355590938e-06){
     s0+=27.0;
     s1+=314.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i27<0.03397569805383682){
     s0+=662.0;
     s1+=118.0;
    } else {
     s0+=103.0;
     s1+=185.0;
    }
   }
  }
 }
}
if(i13<1.0043745040893555){
 if(i27<0.024633679538965225){
  if(i6<1.0024776458740234){
   if(i79<-0.0015615224838256836){
    if(i0<0.09325283765792847){
     s0+=4941.0;
     s1+=642.0;
    } else {
     s0+=152.0;
     s1+=248.0;
    }
   } else {
    if(i2<0.0827445387840271){
     s0+=58284.0;
     s1+=539.0;
    } else {
     s0+=629.0;
     s1+=365.0;
    }
   }
  } else {
   if(i64<0.0004526078701019287){
    if(i32<0.009146690368652344){
     s0+=17.0;
     s1+=218.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   } else {
    if(i11<1.0049306154251099){
     s0+=62.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i6<0.9970512390136719){
   if(i1<0.08189743757247925){
    if(i53<0.006489492021501064){
     s0+=4126.0;
     s1+=61.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i15<0.9985739588737488){
     s0+=225.0;
     s1+=7.0;
    } else {
     s0+=31.0;
     s1+=199.0;
    }
   }
  } else {
   if(i29<0.025744933634996414){
    if(i5<0.024290651082992554){
     s0+=441.0;
     s1+=138.0;
    } else {
     s0+=574.0;
     s1+=1389.0;
    }
   } else {
    if(i0<0.0016897022724151611){
     s0+=61.0;
     s1+=19.0;
    } else {
     s0+=70.0;
     s1+=2511.0;
    }
   }
  }
 }
} else {
 if(i2<0.06560763716697693){
  if(i44<-1.4081708286539651e-05){
   if(i72<-0.00036051031202077866){
    if(i7<-7.581639511045069e-05){
     s0+=3.0;
     s1+=37.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   } else {
    if(i38<1.1170852184295654){
     s1+=256.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   }
  } else {
   if(i37<1.0862454175949097){
    if(i26<0.00022273689683061093){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i38<1.0862454175949097){
     s0+=21.0;
     s1+=13.0;
    } else {
     s0+=867.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i53<0.0008778151823207736){
   if(i19<0.0007675290107727051){
    if(i7<-3.164341615047306e-05){
     s0+=11.0;
     s1+=46.0;
    } else {
     s0+=223.0;
     s1+=28.0;
    }
   } else {
    if(i55<1.0000008344650269){
     s0+=13.0;
     s1+=904.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.012135403230786324){
    if(i6<0.9987728595733643){
     s0+=19.0;
    } else {
     s0+=53.0;
     s1+=1157.0;
    }
   } else {
    if(i12<0.9939572811126709){
     s0+=5.0;
     s1+=84.0;
    } else {
     s1+=8347.0;
    }
   }
  }
 }
}
if(i19<0.0008098483085632324){
 if(i7<-5.827056156704202e-05){
  if(i65<3.498618752928451e-05){
   if(i15<0.9980071187019348){
    s0+=163.0;
   } else {
    if(i0<0.04013174772262573){
     s0+=308.0;
     s1+=132.0;
    } else {
     s0+=263.0;
     s1+=2676.0;
    }
   }
  } else {
   if(i0<0.0927293598651886){
    if(i62<0.008293867111206055){
     s0+=993.0;
     s1+=38.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i36<1.3491634130477905){
     s0+=13.0;
     s1+=6.0;
    } else {
     s1+=190.0;
    }
   }
  }
 } else {
  if(i70<0.0008118866244331002){
   if(i2<0.07795795798301697){
    if(i8<1.042891263961792){
     s0+=55264.0;
     s1+=232.0;
    } else {
     s0+=5792.0;
     s1+=604.0;
    }
   } else {
    if(i7<-1.354130290565081e-05){
     s0+=490.0;
     s1+=1388.0;
    } else {
     s0+=841.0;
     s1+=217.0;
    }
   }
  } else {
   if(i4<-0.0002926290035247803){
    if(i2<0.06976494193077087){
     s0+=4445.0;
     s1+=281.0;
    } else {
     s0+=425.0;
     s1+=369.0;
    }
   } else {
    if(i46<-3.400444984436035e-05){
     s0+=585.0;
     s1+=66.0;
    } else {
     s0+=831.0;
     s1+=1104.0;
    }
   }
  }
 }
} else {
 if(i1<0.0647607147693634){
  if(i68<-4.832212198380148e-06){
   if(i70<-0.0002549289492890239){
    s0+=2.0;
   } else {
    if(i35<0.03301069140434265){
     s0+=1.0;
     s1+=214.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  } else {
   if(i32<0.0007974028121680021){
    s1+=20.0;
   } else {
    if(i19<0.0027740001678466797){
     s0+=503.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i9<-0.00030916929244995117){
   s0+=15.0;
  } else {
   if(i3<5.692243576049805e-05){
    if(i46<3.2007694244384766e-05){
     s0+=1.0;
     s1+=798.0;
    } else {
     s0+=65.0;
     s1+=233.0;
    }
   } else {
    if(i3<5.811452865600586e-05){
     s0+=1.0;
     s1+=39.0;
    } else {
     s1+=8630.0;
    }
   }
  }
 }
}
if(i0<0.07771864533424377){
 if(i23<1.0486011505126953){
  if(i47<0.00032289346563629806){
   if(i2<0.08066621422767639){
    if(i64<-0.0016287565231323242){
     s0+=192.0;
     s1+=72.0;
    } else {
     s0+=51370.0;
     s1+=115.0;
    }
   } else {
    if(i59<0.03456614166498184){
     s0+=39.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  } else {
   if(i49<9.693729953141883e-05){
    if(i28<1.0840110778808594){
     s0+=1428.0;
    } else {
     s0+=471.0;
     s1+=181.0;
    }
   } else {
    s0+=2275.0;
   }
  }
 } else {
  if(i4<0.00047647953033447266){
   if(i37<1.1037919521331787){
    if(i29<0.012149166315793991){
     s0+=2633.0;
     s1+=619.0;
    } else {
     s0+=89.0;
     s1+=622.0;
    }
   } else {
    if(i56<0.009611565619707108){
     s0+=8756.0;
     s1+=162.0;
    } else {
     s0+=1585.0;
     s1+=274.0;
    }
   }
  } else {
   if(i17<0.002013685181736946){
    if(i37<1.2388319969177246){
     s1+=32.0;
    } else {
     s0+=126.0;
     s1+=1.0;
    }
   } else {
    if(i38<1.2007768154144287){
     s0+=24.0;
     s1+=947.0;
    } else {
     s0+=178.0;
     s1+=217.0;
    }
   }
  }
 }
} else {
 if(i46<-0.0001353919506072998){
  if(i6<0.9984868764877319){
   if(i17<0.01227773167192936){
    if(i8<1.0819296836853027){
     s0+=205.0;
     s1+=20.0;
    } else {
     s0+=313.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i61<0.0007113676983863115){
    s0+=3.0;
   } else {
    s1+=116.0;
   }
  }
 } else {
  if(i53<0.001046464778482914){
   if(i24<1.0845712423324585){
    if(i63<0.031622111797332764){
     s0+=96.0;
     s1+=1634.0;
    } else {
     s0+=215.0;
     s1+=302.0;
    }
   } else {
    if(i13<1.012441873550415){
     s0+=532.0;
     s1+=102.0;
    } else {
     s1+=246.0;
    }
   }
  } else {
   if(i2<0.095024973154068){
    if(i52<0.044965147972106934){
     s0+=94.0;
     s1+=369.0;
    } else {
     s0+=202.0;
     s1+=13.0;
    }
   } else {
    if(i72<-0.0002191179955843836){
     s0+=70.0;
     s1+=9885.0;
    } else {
     s0+=174.0;
     s1+=1228.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i9<0.0005856752395629883){
  if(i27<0.01715215854346752){
   if(i2<0.08439859747886658){
    if(i50<0.0002822628594003618){
     s0+=53131.0;
     s1+=226.0;
    } else {
     s0+=3516.0;
     s1+=405.0;
    }
   } else {
    if(i12<0.9940462708473206){
     s0+=85.0;
     s1+=10.0;
    } else {
     s0+=30.0;
     s1+=136.0;
    }
   }
  } else {
   if(i66<0.9833449125289917){
    if(i13<0.9882898330688477){
     s0+=4879.0;
     s1+=95.0;
    } else {
     s0+=58.0;
     s1+=67.0;
    }
   } else {
    if(i12<0.9936326742172241){
     s0+=1598.0;
     s1+=22.0;
    } else {
     s0+=1437.0;
     s1+=1046.0;
    }
   }
  }
 } else {
  if(i55<1.0028772354125977){
   if(i12<0.9993085861206055){
    if(i74<0.00012273978791199625){
     s0+=58.0;
     s1+=75.0;
    } else {
     s0+=119.0;
     s1+=15.0;
    }
   } else {
    if(i38<1.055294156074524){
     s0+=17.0;
    } else {
     s0+=8.0;
     s1+=628.0;
    }
   }
  } else {
   if(i3<2.6464462280273438e-05){
    if(i45<-0.00949770212173462){
     s0+=6.0;
     s1+=6.0;
    } else {
     s0+=210.0;
     s1+=2.0;
    }
   } else {
    if(i32<0.008902415633201599){
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i17<0.004535265266895294){
  if(i66<1.007765531539917){
   if(i7<-1.5345754945883527e-05){
    if(i37<1.1819204092025757){
     s0+=242.0;
     s1+=568.0;
    } else {
     s0+=762.0;
     s1+=243.0;
    }
   } else {
    if(i2<0.1253974735736847){
     s0+=2874.0;
     s1+=155.0;
    } else {
     s0+=284.0;
     s1+=144.0;
    }
   }
  } else {
   if(i19<0.0008449554443359375){
    if(i7<-3.490439848974347e-05){
     s0+=57.0;
     s1+=164.0;
    } else {
     s0+=677.0;
     s1+=125.0;
    }
   } else {
    if(i55<1.0012845993041992){
     s0+=48.0;
     s1+=975.0;
    } else {
     s0+=24.0;
    }
   }
  }
 } else {
  if(i14<-0.0001354217529296875){
   if(i34<0.006213647313416004){
    if(i67<0.0842096209526062){
     s0+=440.0;
     s1+=159.0;
    } else {
     s0+=22.0;
     s1+=134.0;
    }
   } else {
    if(i2<0.0858880877494812){
     s0+=242.0;
     s1+=115.0;
    } else {
     s0+=29.0;
     s1+=790.0;
    }
   }
  } else {
   if(i20<-1.5467405319213867e-05){
    s0+=122.0;
   } else {
    if(i28<1.613681674003601){
     s0+=27.0;
     s1+=9353.0;
    } else {
     s0+=50.0;
     s1+=1509.0;
    }
   }
  }
 }
}
if(i18<1.002821445465088){
 if(i16<1.0103466510772705){
  if(i5<0.07550877332687378){
   if(i2<0.07983556389808655){
    if(i60<-0.002421736717224121){
     s0+=2027.0;
     s1+=437.0;
    } else {
     s0+=64604.0;
     s1+=1326.0;
    }
   } else {
    if(i9<-0.000477522611618042){
     s0+=120.0;
     s1+=4.0;
    } else {
     s0+=108.0;
     s1+=522.0;
    }
   }
  } else {
   if(i44<-7.944452704577998e-07){
    if(i41<0.05469721555709839){
     s0+=30.0;
     s1+=592.0;
    } else {
     s0+=344.0;
     s1+=473.0;
    }
   } else {
    if(i34<0.005388628225773573){
     s0+=430.0;
     s1+=52.0;
    } else {
     s0+=11.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i14<9.542703628540039e-05){
   if(i11<1.015785813331604){
    if(i1<0.09624367952346802){
     s0+=1252.0;
     s1+=234.0;
    } else {
     s0+=472.0;
     s1+=645.0;
    }
   } else {
    if(i1<0.1202327311038971){
     s0+=74.0;
     s1+=27.0;
    } else {
     s0+=51.0;
     s1+=475.0;
    }
   }
  } else {
   if(i13<1.0140671730041504){
    if(i34<0.0016348827630281448){
     s1+=449.0;
    } else {
     s0+=167.0;
     s1+=284.0;
    }
   } else {
    s1+=997.0;
   }
  }
 }
} else {
 if(i1<0.061331748962402344){
  if(i6<1.0024793148040771){
   if(i10<1.0977965593338013){
    if(i72<-0.0005542535218410194){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=858.0;
     s1+=48.0;
    }
   } else {
    if(i48<0.05845930427312851){
     s0+=3.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i56<0.003971501253545284){
    if(i28<1.2392117977142334){
     s1+=16.0;
    } else {
     s0+=83.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.002110600471496582){
     s0+=31.0;
     s1+=318.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i3<3.4868717193603516e-05){
   if(i2<0.10856902599334717){
    if(i43<0.005105555057525635){
     s0+=31.0;
     s1+=73.0;
    } else {
     s0+=185.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.003044945653527975){
     s0+=25.0;
     s1+=41.0;
    } else {
     s0+=8.0;
     s1+=336.0;
    }
   }
  } else {
   if(i2<0.09701377153396606){
    if(i52<0.04380232095718384){
     s0+=23.0;
     s1+=790.0;
    } else {
     s0+=38.0;
     s1+=5.0;
    }
   } else {
    if(i14<-5.4717063903808594e-05){
     s0+=16.0;
     s1+=656.0;
    } else {
     s0+=4.0;
     s1+=8335.0;
    }
   }
  }
 }
}
if(i3<3.653764724731445e-05){
 if(i23<1.0495078563690186){
  if(i42<0.00028952278080396354){
   if(i50<0.0003120660549029708){
    if(i73<1.0027806758880615){
     s0+=44767.0;
     s1+=3.0;
    } else {
     s0+=96.0;
     s1+=4.0;
    }
   } else {
    if(i12<0.9944310188293457){
     s0+=103.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i12<0.9940194487571716){
    if(i0<0.09397637844085693){
     s0+=8462.0;
     s1+=15.0;
    } else {
     s0+=41.0;
     s1+=3.0;
    }
   } else {
    if(i36<1.0596027374267578){
     s0+=1692.0;
    } else {
     s0+=1485.0;
     s1+=402.0;
    }
   }
  }
 } else {
  if(i2<0.07525330781936646){
   if(i28<1.1013743877410889){
    if(i59<0.031480833888053894){
     s0+=1897.0;
     s1+=352.0;
    } else {
     s0+=423.0;
     s1+=600.0;
    }
   } else {
    if(i45<-0.0035061240196228027){
     s0+=1688.0;
     s1+=217.0;
    } else {
     s0+=8205.0;
     s1+=196.0;
    }
   }
  } else {
   if(i7<-1.4068986274651252e-05){
    if(i72<-0.00011072897905251011){
     s0+=404.0;
     s1+=2855.0;
    } else {
     s0+=261.0;
     s1+=354.0;
    }
   } else {
    if(i49<3.4417142160236835e-05){
     s0+=599.0;
     s1+=54.0;
    } else {
     s0+=477.0;
     s1+=339.0;
    }
   }
  }
 }
} else {
 if(i38<1.0590304136276245){
  s0+=378.0;
 } else {
  if(i0<0.06900012493133545){
   if(i53<0.0009604241931810975){
    if(i68<-6.194485649757553e-06){
     s1+=47.0;
    } else {
     s0+=128.0;
     s1+=8.0;
    }
   } else {
    if(i45<0.0022560954093933105){
     s0+=105.0;
     s1+=857.0;
    } else {
     s0+=44.0;
     s1+=3.0;
    }
   }
  } else {
   if(i2<0.1285688281059265){
    if(i6<1.0039280652999878){
     s0+=107.0;
     s1+=302.0;
    } else {
     s0+=18.0;
     s1+=965.0;
    }
   } else {
    if(i4<0.0007532835006713867){
     s0+=13.0;
     s1+=477.0;
    } else {
     s0+=4.0;
     s1+=8778.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i0<0.07771864533424377){
  if(i47<0.00030852368217892945){
   if(i70<0.0007892977446317673){
    if(i16<1.0095566511154175){
     s0+=55558.0;
     s1+=263.0;
    } else {
     s0+=291.0;
     s1+=127.0;
    }
   } else {
    if(i4<-0.0006737112998962402){
     s0+=418.0;
     s1+=4.0;
    } else {
     s0+=592.0;
     s1+=202.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i32<0.0004280495923012495){
     s0+=2238.0;
     s1+=69.0;
    } else {
     s0+=562.0;
     s1+=947.0;
    }
   } else {
    if(i3<2.5451183319091797e-05){
     s0+=9004.0;
     s1+=384.0;
    } else {
     s0+=151.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i43<0.012644708156585693){
   if(i9<-0.0003829002380371094){
    if(i50<0.0011775658931583166){
     s0+=294.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i37<1.066007137298584){
     s0+=37.0;
    } else {
     s0+=237.0;
     s1+=2167.0;
    }
   }
  } else {
   if(i72<-0.00017796462634578347){
    if(i53<0.0011119790142402053){
     s0+=469.0;
     s1+=226.0;
    } else {
     s0+=131.0;
     s1+=873.0;
    }
   } else {
    if(i36<1.5578480958938599){
     s0+=557.0;
     s1+=86.0;
    } else {
     s0+=10.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i36<1.0624027252197266){
  s0+=155.0;
 } else {
  if(i13<1.0092449188232422){
   if(i50<-2.91386095341295e-06){
    if(i34<0.0028734104707837105){
     s0+=7.0;
     s1+=99.0;
    } else {
     s0+=107.0;
     s1+=48.0;
    }
   } else {
    if(i1<0.13191434741020203){
     s0+=253.0;
     s1+=1076.0;
    } else {
     s0+=20.0;
     s1+=1770.0;
    }
   }
  } else {
   if(i14<0.00021058320999145508){
    if(i67<0.0035554259084165096){
     s0+=1.0;
    } else {
     s0+=8.0;
     s1+=551.0;
    }
   } else {
    s1+=8147.0;
   }
  }
 }
}
if(i20<1.627206802368164e-05){
 if(i11<1.0081498622894287){
  if(i81<0.00038719610893167555){
   if(i0<0.08553484082221985){
    if(i27<0.017189379781484604){
     s0+=55504.0;
     s1+=453.0;
    } else {
     s0+=5381.0;
     s1+=735.0;
    }
   } else {
    if(i74<0.00014254979032557458){
     s0+=44.0;
     s1+=422.0;
    } else {
     s0+=58.0;
     s1+=27.0;
    }
   }
  } else {
   if(i6<0.99688321352005){
    if(i0<0.06864026188850403){
     s0+=3654.0;
     s1+=91.0;
    } else {
     s0+=503.0;
     s1+=144.0;
    }
   } else {
    if(i0<0.07492715120315552){
     s0+=2128.0;
     s1+=456.0;
    } else {
     s0+=495.0;
     s1+=1072.0;
    }
   }
  }
 } else {
  if(i0<0.08948096632957458){
   if(i36<1.1063789129257202){
    if(i64<0.004199981689453125){
     s0+=27.0;
     s1+=287.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   } else {
    if(i71<1.0018725395202637){
     s0+=112.0;
     s1+=71.0;
    } else {
     s0+=668.0;
     s1+=8.0;
    }
   }
  } else {
   if(i68<9.246357421943685e-07){
    if(i31<0.05312660336494446){
     s0+=13.0;
     s1+=1498.0;
    } else {
     s0+=211.0;
     s1+=760.0;
    }
   } else {
    if(i7<-2.4531949748052284e-05){
     s1+=1.0;
    } else {
     s0+=62.0;
    }
   }
  }
 }
} else {
 if(i13<1.003890037536621){
  if(i2<0.09600484371185303){
   if(i56<0.009612472727894783){
    if(i19<-0.0017478466033935547){
     s0+=836.0;
     s1+=12.0;
    } else {
     s0+=849.0;
     s1+=219.0;
    }
   } else {
    if(i64<0.001911759376525879){
     s0+=65.0;
     s1+=379.0;
    } else {
     s0+=48.0;
     s1+=6.0;
    }
   }
  } else {
   if(i37<1.2590827941894531){
    if(i17<0.004768586717545986){
     s0+=85.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=162.0;
    }
   } else {
    if(i29<0.025992240756750107){
     s0+=71.0;
     s1+=195.0;
    } else {
     s0+=13.0;
     s1+=1346.0;
    }
   }
  }
 } else {
  if(i2<0.05414167046546936){
   if(i71<0.9988246560096741){
    if(i14<1.8358230590820312e-05){
     s0+=9.0;
    } else {
     s1+=125.0;
    }
   } else {
    if(i39<0.0009155364241451025){
     s0+=15.0;
     s1+=33.0;
    } else {
     s0+=117.0;
    }
   }
  } else {
   if(i9<0.00043135881423950195){
    if(i1<0.13136237859725952){
     s0+=33.0;
     s1+=8.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i18<0.9971033930778503){
     s0+=25.0;
     s1+=142.0;
    } else {
     s0+=27.0;
     s1+=8470.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i38<1.0598037242889404){
  if(i51<0.002072682371363044){
   if(i59<0.047885049134492874){
    if(i57<-0.0043315589427948){
     s1+=1.0;
    } else {
     s0+=42784.0;
     s1+=7.0;
    }
   } else {
    if(i44<-3.0908504413673654e-06){
     s0+=53.0;
     s1+=20.0;
    } else {
     s0+=371.0;
    }
   }
  } else {
   if(i36<1.0657364130020142){
    s0+=858.0;
   } else {
    if(i55<1.0001904964447021){
     s1+=34.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i22<1.0077662467956543){
   if(i4<-0.0006714463233947754){
    if(i32<0.001119646243751049){
     s0+=1202.0;
     s1+=133.0;
    } else {
     s0+=11705.0;
     s1+=157.0;
    }
   } else {
    if(i8<1.040146827697754){
     s0+=6795.0;
     s1+=554.0;
    } else {
     s0+=4226.0;
     s1+=2572.0;
    }
   }
  } else {
   if(i17<0.0039809700101614){
    if(i37<1.1040980815887451){
     s0+=324.0;
     s1+=565.0;
    } else {
     s0+=1904.0;
     s1+=218.0;
    }
   } else {
    if(i30<0.998915433883667){
     s0+=161.0;
     s1+=9.0;
    } else {
     s0+=105.0;
     s1+=1283.0;
    }
   }
  }
 }
} else {
 if(i28<1.075138807296753){
  s0+=149.0;
 } else {
  if(i0<0.058522045612335205){
   if(i68<-4.832212198380148e-06){
    if(i6<1.0024901628494263){
     s0+=58.0;
     s1+=37.0;
    } else {
     s0+=58.0;
     s1+=583.0;
    }
   } else {
    if(i9<0.0006038546562194824){
     s0+=153.0;
     s1+=6.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i23<1.1516449451446533){
    if(i42<0.003876769682392478){
     s0+=70.0;
     s1+=2978.0;
    } else {
     s0+=115.0;
     s1+=356.0;
    }
   } else {
    if(i29<0.01682990789413452){
     s0+=32.0;
     s1+=342.0;
    } else {
     s0+=10.0;
     s1+=7244.0;
    }
   }
  }
 }
}
if(i2<0.08144927024841309){
 if(i65<-7.986887794686481e-06){
  if(i49<0.00012872520892415196){
   if(i6<1.0043132305145264){
    s0+=1.0;
   } else {
    s1+=250.0;
   }
  } else {
   if(i12<1.0132896900177002){
    s0+=2.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i43<-0.005240678787231445){
   if(i73<1.000347375869751){
    if(i0<0.03716978430747986){
     s0+=2658.0;
     s1+=188.0;
    } else {
     s0+=333.0;
     s1+=196.0;
    }
   } else {
    if(i0<0.013983279466629028){
     s0+=891.0;
     s1+=104.0;
    } else {
     s0+=470.0;
     s1+=638.0;
    }
   }
  } else {
   if(i3<4.0471553802490234e-05){
    if(i11<1.0067918300628662){
     s0+=63752.0;
     s1+=986.0;
    } else {
     s0+=908.0;
     s1+=252.0;
    }
   } else {
    if(i55<0.9999865889549255){
     s0+=372.0;
     s1+=41.0;
    } else {
     s0+=72.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i17<0.004822907969355583){
  if(i31<0.055529892444610596){
   if(i76<6.156121344247367e-06){
    if(i58<-0.005286946892738342){
     s0+=149.0;
     s1+=163.0;
    } else {
     s0+=77.0;
     s1+=1861.0;
    }
   } else {
    if(i7<-3.045605080842506e-05){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=100.0;
     s1+=2.0;
    }
   }
  } else {
   if(i4<0.0008370876312255859){
    if(i45<0.006142318248748779){
     s0+=561.0;
     s1+=249.0;
    } else {
     s0+=583.0;
     s1+=86.0;
    }
   } else {
    if(i12<1.0051900148391724){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=137.0;
    }
   }
  }
 } else {
  if(i9<-0.0005213022232055664){
   s0+=79.0;
  } else {
   if(i2<0.10900184512138367){
    if(i49<0.00010957501217490062){
     s0+=4.0;
     s1+=756.0;
    } else {
     s0+=148.0;
     s1+=191.0;
    }
   } else {
    if(i2<0.123960942029953){
     s0+=26.0;
     s1+=469.0;
    } else {
     s0+=10.0;
     s1+=10258.0;
    }
   }
  }
 }
}
if(i1<0.0835462212562561){
 if(i18<1.0027661323547363){
  if(i2<0.06909489631652832){
   if(i51<0.0014874800108373165){
    if(i28<1.0856719017028809){
     s0+=35991.0;
    } else {
     s0+=24126.0;
     s1+=648.0;
    }
   } else {
    if(i3<-3.55839729309082e-05){
     s0+=2924.0;
     s1+=115.0;
    } else {
     s0+=3107.0;
     s1+=747.0;
    }
   }
  } else {
   if(i7<-1.8851767890737392e-05){
    if(i36<1.2007768154144287){
     s0+=110.0;
     s1+=346.0;
    } else {
     s0+=255.0;
     s1+=53.0;
    }
   } else {
    if(i24<1.0180047750473022){
     s0+=65.0;
     s1+=74.0;
    } else {
     s0+=1175.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i9<0.0005131959915161133){
   if(i39<0.0037964549846947193){
    if(i49<1.1505011570989154e-05){
     s0+=193.0;
     s1+=13.0;
    } else {
     s0+=41.0;
     s1+=75.0;
    }
   } else {
    if(i44<-2.88424348582339e-06){
     s0+=707.0;
     s1+=21.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i62<-0.013890067115426064){
    if(i56<0.015391095541417599){
     s0+=131.0;
     s1+=2.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i3<3.147125244140625e-05){
     s0+=114.0;
     s1+=10.0;
    } else {
     s0+=97.0;
     s1+=831.0;
    }
   }
  }
 }
} else {
 if(i30<0.999065101146698){
  if(i17<0.012246448546648026){
   if(i68<-2.9217283099569613e-06){
    if(i36<1.1369764804840088){
     s0+=14.0;
    } else {
     s1+=10.0;
    }
   } else {
    s0+=641.0;
   }
  } else {
   s1+=14.0;
  }
 } else {
  if(i0<0.12587028741836548){
   if(i45<0.004409492015838623){
    if(i41<0.05856633186340332){
     s0+=78.0;
     s1+=2394.0;
    } else {
     s0+=298.0;
     s1+=376.0;
    }
   } else {
    if(i2<0.12333571910858154){
     s0+=664.0;
     s1+=52.0;
    } else {
     s0+=24.0;
     s1+=64.0;
    }
   }
  } else {
   if(i29<0.023238029330968857){
    if(i52<0.12230604887008667){
     s0+=78.0;
     s1+=1795.0;
    } else {
     s0+=191.0;
     s1+=100.0;
    }
   } else {
    if(i44<3.6906467357766815e-06){
     s0+=61.0;
     s1+=9329.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i15<1.0016194581985474){
 if(i2<0.08270633220672607){
  if(i42<0.00030036468524485826){
   if(i11<1.0084075927734375){
    if(i13<1.0039503574371338){
     s0+=46240.0;
     s1+=41.0;
    } else {
     s0+=246.0;
     s1+=9.0;
    }
   } else {
    if(i36<1.1210730075836182){
     s1+=54.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i38<1.1031841039657593){
    if(i46<-3.400444984436035e-05){
     s0+=3997.0;
     s1+=77.0;
    } else {
     s0+=3271.0;
     s1+=1514.0;
    }
   } else {
    if(i24<0.9749405384063721){
     s0+=533.0;
     s1+=83.0;
    } else {
     s0+=13971.0;
     s1+=245.0;
    }
   }
  }
 } else {
  if(i15<0.9985139966011047){
   if(i65<4.442139106686227e-05){
    if(i18<1.0023126602172852){
     s0+=468.0;
     s1+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i2<0.08734190464019775){
     s0+=7.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i41<0.05820918083190918){
    if(i30<1.0014081001281738){
     s0+=47.0;
     s1+=2582.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i3<2.950429916381836e-05){
     s0+=910.0;
     s1+=1102.0;
    } else {
     s0+=67.0;
     s1+=846.0;
    }
   }
  }
 }
} else {
 if(i1<0.09109282493591309){
  if(i65<8.309359145641793e-06){
   if(i53<0.0007200751570053399){
    if(i73<1.0037219524383545){
     s0+=115.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i52<0.03903117775917053){
     s0+=74.0;
     s1+=926.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i3<3.5822391510009766e-05){
    if(i56<0.017169112339615822){
     s0+=763.0;
     s1+=50.0;
    } else {
     s0+=23.0;
     s1+=41.0;
    }
   } else {
    if(i52<0.014701038599014282){
     s0+=30.0;
     s1+=154.0;
    } else {
     s0+=59.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i12<1.0004782676696777){
   if(i67<0.10070082545280457){
    if(i72<-0.0005462620174512267){
     s0+=4.0;
     s1+=194.0;
    } else {
     s0+=147.0;
     s1+=177.0;
    }
   } else {
    if(i8<1.0713484287261963){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=582.0;
    }
   }
  } else {
   if(i14<4.9233436584472656e-05){
    if(i46<0.00022619962692260742){
     s0+=23.0;
     s1+=129.0;
    } else {
     s0+=7.0;
     s1+=603.0;
    }
   } else {
    s1+=7737.0;
   }
  }
 }
}
if(i4<0.0005468428134918213){
 if(i0<0.08162105083465576){
  if(i1<0.06916141510009766){
   if(i56<0.008038492873311043){
    if(i70<0.0007277644472196698){
     s0+=57276.0;
     s1+=409.0;
    } else {
     s0+=5861.0;
     s1+=479.0;
    }
   } else {
    if(i18<1.0005549192428589){
     s0+=2549.0;
     s1+=367.0;
    } else {
     s0+=311.0;
     s1+=203.0;
    }
   }
  } else {
   if(i35<0.04602867364883423){
    if(i3<-4.8488378524780273e-05){
     s0+=278.0;
     s1+=13.0;
    } else {
     s0+=83.0;
     s1+=390.0;
    }
   } else {
    if(i2<0.085633784532547){
     s0+=2565.0;
     s1+=190.0;
    } else {
     s0+=27.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i27<0.028788749128580093){
   if(i62<-0.01935247704386711){
    if(i0<0.23004543781280518){
     s0+=627.0;
     s1+=73.0;
    } else {
     s0+=62.0;
     s1+=94.0;
    }
   } else {
    if(i45<0.005308479070663452){
     s0+=207.0;
     s1+=1014.0;
    } else {
     s0+=138.0;
     s1+=27.0;
    }
   }
  } else {
   if(i17<0.005990698933601379){
    if(i15<0.9984805583953857){
     s0+=192.0;
    } else {
     s0+=151.0;
     s1+=934.0;
    }
   } else {
    if(i69<1.0006396770477295){
     s0+=10.0;
     s1+=1106.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
} else {
 if(i42<0.0002465705038048327){
  if(i44<-1.563976547913626e-05){
   s1+=15.0;
  } else {
   s0+=205.0;
  }
 } else {
  if(i8<1.1363511085510254){
   if(i17<0.0022366377525031567){
    if(i14<0.0002830028533935547){
     s0+=142.0;
     s1+=24.0;
    } else {
     s1+=102.0;
    }
   } else {
    if(i32<0.008536625653505325){
     s0+=79.0;
     s1+=4398.0;
    } else {
     s0+=154.0;
     s1+=336.0;
    }
   }
  } else {
   if(i33<0.004961632192134857){
    if(i79<-0.00039905309677124023){
     s0+=12.0;
     s1+=7.0;
    } else {
     s1+=202.0;
    }
   } else {
    s1+=6825.0;
   }
  }
 }
}
if(i19<0.000807344913482666){
 if(i10<1.043776035308838){
  if(i5<0.08101236820220947){
   if(i0<0.08310112357139587){
    if(i6<1.0024778842926025){
     s0+=64088.0;
     s1+=1352.0;
    } else {
     s0+=14.0;
     s1+=170.0;
    }
   } else {
    if(i6<0.9962522983551025){
     s0+=79.0;
    } else {
     s0+=18.0;
     s1+=239.0;
    }
   }
  } else {
   if(i15<0.9984776973724365){
    if(i56<-0.00547732412815094){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i58<-0.0072797685861587524){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=341.0;
    }
   }
  }
 } else {
  if(i17<0.0055342200212180614){
   if(i9<-0.00038307905197143555){
    if(i36<1.4951298236846924){
     s0+=1119.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=8.0;
    }
   } else {
    if(i32<0.00044969620648771524){
     s0+=1335.0;
     s1+=78.0;
    } else {
     s0+=3124.0;
     s1+=1724.0;
    }
   }
  } else {
   if(i23<1.0819685459136963){
    if(i19<-0.0008854269981384277){
     s0+=268.0;
     s1+=6.0;
    } else {
     s0+=23.0;
     s1+=236.0;
    }
   } else {
    if(i29<0.018753305077552795){
     s0+=176.0;
     s1+=206.0;
    } else {
     s0+=70.0;
     s1+=2928.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019995711045339704){
  if(i54<1.0071899890899658){
   if(i28<1.1386182308197021){
    s1+=4.0;
   } else {
    s0+=267.0;
   }
  } else {
   if(i36<1.2369153499603271){
    if(i17<0.0011165146715939045){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i7<-4.3854302930412814e-05){
   if(i20<-8.344650268554688e-06){
    if(i32<0.007915113121271133){
     s0+=87.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<-1.0225624464510474e-05){
     s1+=9514.0;
    } else {
     s0+=32.0;
     s1+=300.0;
    }
   }
  } else {
   if(i28<1.1386182308197021){
    s1+=98.0;
   } else {
    if(i11<1.0241332054138184){
     s0+=186.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i6<1.002431869506836){
 if(i47<0.0003191595315001905){
  if(i11<1.0080902576446533){
   if(i43<-0.007856816053390503){
    if(i65<2.523178864066722e-06){
     s0+=40.0;
     s1+=55.0;
    } else {
     s0+=147.0;
     s1+=12.0;
    }
   } else {
    if(i42<0.00027785677229985595){
     s0+=45417.0;
     s1+=27.0;
    } else {
     s0+=11914.0;
     s1+=634.0;
    }
   }
  } else {
   if(i39<0.0021622716449201107){
    if(i55<1.0013571977615356){
     s0+=15.0;
     s1+=198.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i57<0.004793941974639893){
     s0+=174.0;
     s1+=6.0;
    } else {
     s0+=16.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i72<-0.0001053692030836828){
   if(i67<0.11476729810237885){
    if(i11<1.0107730627059937){
     s0+=3437.0;
     s1+=1543.0;
    } else {
     s0+=469.0;
     s1+=1001.0;
    }
   } else {
    if(i20<-1.0013580322265625e-05){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=29.0;
     s1+=950.0;
    }
   }
  } else {
   if(i3<-1.8417835235595703e-05){
    if(i12<0.9934210181236267){
     s0+=4948.0;
     s1+=63.0;
    } else {
     s0+=1801.0;
     s1+=237.0;
    }
   } else {
    if(i49<2.3420470824930817e-05){
     s0+=1562.0;
     s1+=91.0;
    } else {
     s0+=947.0;
     s1+=826.0;
    }
   }
  }
 }
} else {
 if(i7<-4.39562281826511e-05){
  if(i4<0.0005488693714141846){
   if(i65<2.164437319152057e-06){
    if(i38<1.1631771326065063){
     s1+=5.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i69<1.0004037618637085){
     s1+=78.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i66<0.9979226589202881){
    if(i1<0.12110203504562378){
     s0+=111.0;
     s1+=342.0;
    } else {
     s0+=22.0;
     s1+=989.0;
    }
   } else {
    if(i29<0.015199817717075348){
     s0+=38.0;
     s1+=1714.0;
    } else {
     s1+=7860.0;
    }
   }
  }
 } else {
  if(i37<1.2388319969177246){
   if(i23<1.052046298980713){
    s0+=12.0;
   } else {
    if(i26<0.00017294238205067813){
     s0+=5.0;
    } else {
     s1+=189.0;
    }
   }
  } else {
   if(i17<0.002568864729255438){
    s0+=173.0;
   } else {
    s1+=28.0;
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i2<0.08222377300262451){
  if(i51<0.001901062554679811){
   if(i2<0.06640881299972534){
    if(i38<1.0557184219360352){
     s0+=40876.0;
    } else {
     s0+=18202.0;
     s1+=521.0;
    }
   } else {
    if(i56<0.002421023789793253){
     s0+=1784.0;
     s1+=216.0;
    } else {
     s0+=66.0;
     s1+=142.0;
    }
   }
  } else {
   if(i65<-2.0849061002081726e-06){
    if(i68<-3.921888492186554e-06){
     s1+=104.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i39<0.0023945076391100883){
     s0+=1308.0;
     s1+=587.0;
    } else {
     s0+=2562.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i36<1.0670123100280762){
   if(i11<1.0018787384033203){
    s0+=114.0;
   } else {
    if(i45<0.0011538863182067871){
     s1+=6.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i41<0.05750095844268799){
    if(i57<0.007089406251907349){
     s0+=15.0;
     s1+=891.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i14<-0.0003145933151245117){
     s0+=54.0;
     s1+=29.0;
    } else {
     s0+=26.0;
     s1+=101.0;
    }
   }
  }
 }
} else {
 if(i7<-4.463285586098209e-05){
  if(i3<1.627206802368164e-05){
   if(i0<0.09738665819168091){
    if(i43<0.009683489799499512){
     s0+=147.0;
     s1+=207.0;
    } else {
     s0+=249.0;
     s1+=23.0;
    }
   } else {
    if(i30<1.0020489692687988){
     s0+=4.0;
     s1+=733.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   }
  } else {
   if(i6<1.0037859678268433){
    if(i55<1.0017590522766113){
     s0+=139.0;
     s1+=1976.0;
    } else {
     s0+=167.0;
     s1+=174.0;
    }
   } else {
    if(i19<3.635883331298828e-05){
     s0+=62.0;
     s1+=533.0;
    } else {
     s0+=4.0;
     s1+=9027.0;
    }
   }
  }
 } else {
  if(i2<0.07541418075561523){
   if(i27<0.014883438125252724){
    if(i3<6.252527236938477e-05){
     s0+=2356.0;
     s1+=84.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=176.0;
     s1+=292.0;
    } else {
     s0+=1074.0;
     s1+=65.0;
    }
   }
  } else {
   if(i35<0.06119966506958008){
    if(i3<-4.5925378799438477e-05){
     s0+=36.0;
     s1+=6.0;
    } else {
     s0+=42.0;
     s1+=588.0;
    }
   } else {
    if(i46<-0.00013405084609985352){
     s0+=369.0;
     s1+=3.0;
    } else {
     s0+=1028.0;
     s1+=867.0;
    }
   }
  }
 }
}
if(i2<0.08226051926612854){
 if(i3<4.1544437408447266e-05){
  if(i51<0.0015784403076395392){
   if(i39<0.0003323968267068267){
    if(i21<1.0062973499298096){
     s0+=38249.0;
     s1+=29.0;
    } else {
     s0+=16.0;
     s1+=20.0;
    }
   } else {
    if(i12<0.9946083426475525){
     s0+=15064.0;
     s1+=34.0;
    } else {
     s0+=8938.0;
     s1+=1007.0;
    }
   }
  } else {
   if(i13<0.9851017594337463){
    if(i60<-0.002812027931213379){
     s0+=469.0;
     s1+=89.0;
    } else {
     s0+=2490.0;
     s1+=19.0;
    }
   } else {
    if(i7<-4.1404364310437813e-05){
     s0+=183.0;
     s1+=228.0;
    } else {
     s0+=3317.0;
     s1+=738.0;
    }
   }
  }
 } else {
  if(i28<1.082350254058838){
   s0+=218.0;
  } else {
   if(i36<1.2160736322402954){
    if(i24<1.1003565788269043){
     s0+=7.0;
     s1+=608.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i17<0.004556490108370781){
     s0+=138.0;
     s1+=12.0;
    } else {
     s0+=124.0;
     s1+=323.0;
    }
   }
  }
 }
} else {
 if(i72<-0.00010794114496093243){
  if(i15<0.9982243776321411){
   if(i12<0.9848575592041016){
    if(i79<-0.0013833343982696533){
     s1+=7.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i46<-0.00023850798606872559){
     s0+=232.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  } else {
   if(i17<0.001689768279902637){
    if(i41<0.05857408046722412){
     s0+=17.0;
     s1+=137.0;
    } else {
     s0+=367.0;
     s1+=98.0;
    }
   } else {
    if(i44<2.8635665785259334e-06){
     s0+=284.0;
     s1+=12766.0;
    } else {
     s0+=19.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i3<3.4749507904052734e-05){
   if(i60<0.003785848617553711){
    if(i76<5.383700226957444e-06){
     s0+=41.0;
     s1+=313.0;
    } else {
     s0+=86.0;
     s1+=4.0;
    }
   } else {
    if(i29<0.04876701533794403){
     s0+=552.0;
     s1+=77.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i52<0.08883500099182129){
    if(i62<-0.019026465713977814){
     s0+=13.0;
     s1+=124.0;
    } else {
     s0+=1.0;
     s1+=597.0;
    }
   } else {
    if(i29<0.02626470848917961){
     s0+=48.0;
     s1+=23.0;
    } else {
     s1+=79.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i6<1.0024776458740234){
  if(i59<0.018550656735897064){
   if(i79<-0.0018151402473449707){
    if(i37<1.060716152191162){
     s0+=44.0;
    } else {
     s0+=26.0;
     s1+=149.0;
    }
   } else {
    if(i22<1.0095219612121582){
     s0+=50700.0;
     s1+=131.0;
    } else {
     s0+=70.0;
     s1+=104.0;
    }
   }
  } else {
   if(i12<0.9942039251327515){
    if(i2<0.08544737100601196){
     s0+=9488.0;
     s1+=104.0;
    } else {
     s0+=103.0;
     s1+=66.0;
    }
   } else {
    if(i23<1.0428757667541504){
     s0+=1849.0;
     s1+=82.0;
    } else {
     s0+=3000.0;
     s1+=1419.0;
    }
   }
  }
 } else {
  if(i53<0.0008398094214498997){
   if(i44<-1.7175523680634797e-05){
    s1+=36.0;
   } else {
    if(i56<-0.0024878361728042364){
     s1+=2.0;
    } else {
     s0+=96.0;
     s1+=1.0;
    }
   }
  } else {
   if(i9<0.0004239082336425781){
    if(i7<-4.373458796180785e-05){
     s1+=27.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i55<1.0027496814727783){
     s1+=597.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i7<-3.0338433134602383e-05){
  if(i1<0.08928117156028748){
   if(i20<-1.2189149856567383e-05){
    s0+=158.0;
   } else {
    if(i52<0.018285244703292847){
     s0+=465.0;
     s1+=1123.0;
    } else {
     s0+=364.0;
     s1+=75.0;
    }
   }
  } else {
   if(i3<5.716085433959961e-05){
    if(i30<1.0004312992095947){
     s0+=61.0;
     s1+=1995.0;
    } else {
     s0+=245.0;
     s1+=853.0;
    }
   } else {
    if(i36<1.0633710622787476){
     s0+=4.0;
    } else {
     s0+=29.0;
     s1+=9126.0;
    }
   }
  }
 } else {
  if(i15<1.0017414093017578){
   if(i17<0.005798738449811935){
    if(i34<0.005418575368821621){
     s0+=4213.0;
     s1+=589.0;
    } else {
     s0+=292.0;
     s1+=276.0;
    }
   } else {
    if(i1<0.05785444378852844){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=133.0;
    }
   }
  } else {
   s1+=90.0;
  }
 }
}
if(i7<-7.133316830731928e-05){
 if(i1<0.06313136219978333){
  if(i52<-0.0071031153202056885){
   if(i5<0.00269395112991333){
    if(i56<0.05482640117406845){
     s0+=179.0;
     s1+=13.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   } else {
    if(i69<0.9972610473632812){
     s0+=6.0;
    } else {
     s0+=27.0;
     s1+=304.0;
    }
   }
  } else {
   if(i4<0.0009586215019226074){
    if(i59<0.12059427797794342){
     s0+=144.0;
     s1+=10.0;
    } else {
     s0+=482.0;
    }
   } else {
    if(i10<1.0655909776687622){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.10683494806289673){
   if(i31<0.04542595148086548){
    if(i52<0.04260793328285217){
     s0+=19.0;
     s1+=906.0;
    } else {
     s0+=37.0;
     s1+=5.0;
    }
   } else {
    if(i4<0.001673877239227295){
     s0+=139.0;
     s1+=20.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i36<1.0677311420440674){
    s0+=16.0;
   } else {
    if(i1<0.13185465335845947){
     s0+=30.0;
     s1+=538.0;
    } else {
     s0+=7.0;
     s1+=9731.0;
    }
   }
  }
 }
} else {
 if(i8<1.0452215671539307){
  if(i23<1.0451585054397583){
   if(i70<0.0006792336935177445){
    if(i6<1.0025479793548584){
     s0+=50958.0;
     s1+=73.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i19<-0.0019529759883880615){
     s0+=1634.0;
     s1+=2.0;
    } else {
     s0+=1484.0;
     s1+=184.0;
    }
   }
  } else {
   if(i28<1.1013743877410889){
    if(i79<-0.0006747543811798096){
     s0+=154.0;
     s1+=409.0;
    } else {
     s0+=1613.0;
     s1+=214.0;
    }
   } else {
    if(i4<0.0004921555519104004){
     s0+=5606.0;
     s1+=153.0;
    } else {
     s0+=55.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i1<0.07739341259002686){
   if(i28<1.1013743877410889){
    if(i17<0.002110577654093504){
     s0+=1538.0;
     s1+=382.0;
    } else {
     s0+=94.0;
     s1+=538.0;
    }
   } else {
    if(i9<0.0010954737663269043){
     s0+=5138.0;
     s1+=249.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i7<-1.4284680219134316e-05){
    if(i2<0.09920790791511536){
     s0+=414.0;
     s1+=677.0;
    } else {
     s0+=270.0;
     s1+=2124.0;
    }
   } else {
    if(i4<0.0005325078964233398){
     s0+=1099.0;
     s1+=317.0;
    } else {
     s1+=52.0;
    }
   }
  }
 }
}
if(i0<0.07910805940628052){
 if(i7<-5.21506299264729e-05){
  if(i13<0.997965395450592){
   if(i60<-0.0026534199714660645){
    if(i0<0.00648459792137146){
     s0+=129.0;
     s1+=26.0;
    } else {
     s0+=14.0;
     s1+=156.0;
    }
   } else {
    if(i5<0.06286534667015076){
     s0+=1596.0;
     s1+=35.0;
    } else {
     s0+=88.0;
     s1+=31.0;
    }
   }
  } else {
   if(i3<-5.066394805908203e-06){
    if(i58<-0.0013347398489713669){
     s0+=3.0;
     s1+=28.0;
    } else {
     s0+=132.0;
    }
   } else {
    if(i64<0.002224564552307129){
     s0+=57.0;
     s1+=926.0;
    } else {
     s0+=47.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i26<0.00030671327840536833){
   if(i78<-0.0012386739253997803){
    if(i57<-0.0027223527431488037){
     s0+=18.0;
     s1+=52.0;
    } else {
     s0+=235.0;
     s1+=1.0;
    }
   } else {
    if(i70<0.0008439854718744755){
     s0+=53001.0;
     s1+=207.0;
    } else {
     s0+=295.0;
     s1+=48.0;
    }
   }
  } else {
   if(i33<0.0008705038344487548){
    if(i39<0.0004844088398385793){
     s0+=2436.0;
     s1+=125.0;
    } else {
     s0+=1545.0;
     s1+=1141.0;
    }
   } else {
    if(i34<0.002593455370515585){
     s0+=2673.0;
     s1+=265.0;
    } else {
     s0+=7199.0;
     s1+=124.0;
    }
   }
  }
 }
} else {
 if(i13<1.0071825981140137){
  if(i50<0.0006766535807400942){
   if(i9<-0.00041177868843078613){
    s0+=348.0;
   } else {
    if(i71<1.0253651142120361){
     s0+=299.0;
     s1+=1347.0;
    } else {
     s0+=844.0;
     s1+=939.0;
    }
   }
  } else {
   if(i68<1.2802992159777205e-06){
    if(i5<0.09453064203262329){
     s0+=106.0;
     s1+=352.0;
    } else {
     s0+=42.0;
     s1+=2082.0;
    }
   } else {
    if(i38<1.257188081741333){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=46.0;
    }
   }
  }
 } else {
  if(i9<-5.036592483520508e-06){
   if(i77<-0.0044694398529827595){
    if(i61<0.00028460443718358874){
     s0+=32.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i11<0.987354576587677){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=160.0;
    }
   }
  } else {
   if(i1<0.09589678049087524){
    if(i77<-0.002752502216026187){
     s0+=23.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i6<1.0014134645462036){
     s0+=13.0;
     s1+=176.0;
    } else {
     s0+=1.0;
     s1+=8594.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i18<1.002867341041565){
  if(i51<0.0015158418100327253){
   if(i11<1.0082677602767944){
    if(i1<0.08515453338623047){
     s0+=59245.0;
     s1+=563.0;
    } else {
     s0+=315.0;
     s1+=311.0;
    }
   } else {
    if(i37<1.217149257659912){
     s0+=4.0;
     s1+=119.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   }
  } else {
   if(i12<0.9935942888259888){
    if(i5<0.08499518036842346){
     s0+=2590.0;
     s1+=57.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i0<0.056519001722335815){
     s0+=2306.0;
     s1+=481.0;
    } else {
     s0+=75.0;
     s1+=322.0;
    }
   }
  }
 } else {
  if(i75<0.24805377423763275){
   if(i3<2.9742717742919922e-05){
    if(i11<0.9795613884925842){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=296.0;
     s1+=25.0;
    }
   } else {
    if(i47<0.00016164798580575734){
     s0+=55.0;
     s1+=16.0;
    } else {
     s0+=19.0;
     s1+=730.0;
    }
   }
  } else {
   if(i3<3.0338764190673828e-05){
    if(i66<0.9820948839187622){
     s0+=467.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i75<0.43439367413520813){
     s0+=2.0;
     s1+=51.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i0<0.09699669480323792){
  if(i6<1.0023614168167114){
   if(i36<1.1037919521331787){
    if(i34<0.00029148173052817583){
     s0+=597.0;
    } else {
     s0+=543.0;
     s1+=719.0;
    }
   } else {
    if(i29<0.04727780073881149){
     s0+=3492.0;
     s1+=296.0;
    } else {
     s0+=12.0;
     s1+=95.0;
    }
   }
  } else {
   if(i57<0.006870746612548828){
    if(i36<1.2280436754226685){
     s0+=7.0;
     s1+=872.0;
    } else {
     s0+=138.0;
     s1+=270.0;
    }
   } else {
    if(i29<0.021146245300769806){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i33<0.005090325139462948){
   if(i41<0.0776878297328949){
    if(i30<0.9988716840744019){
     s0+=14.0;
    } else {
     s0+=38.0;
     s1+=1923.0;
    }
   } else {
    if(i38<1.2643331289291382){
     s0+=505.0;
     s1+=539.0;
    } else {
     s0+=274.0;
    }
   }
  } else {
   if(i0<0.1268400251865387){
    if(i56<0.0019106161780655384){
     s0+=78.0;
     s1+=24.0;
    } else {
     s0+=8.0;
     s1+=289.0;
    }
   } else {
    if(i6<1.0011091232299805){
     s0+=28.0;
     s1+=764.0;
    } else {
     s0+=9.0;
     s1+=8476.0;
    }
   }
  }
 }
}
if(i2<0.08225393295288086){
 if(i57<-0.0020733773708343506){
  if(i13<0.9899998903274536){
   if(i76<-1.9888241240550997e-06){
    if(i49<0.00016396964201703668){
     s0+=2.0;
     s1+=47.0;
    } else {
     s0+=37.0;
     s1+=13.0;
    }
   } else {
    if(i67<0.22300174832344055){
     s0+=4190.0;
     s1+=235.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i20<1.6570091247558594e-05){
    if(i33<0.0003226535045541823){
     s0+=808.0;
    } else {
     s0+=1079.0;
     s1+=721.0;
    }
   } else {
    if(i45<0.0013175606727600098){
     s0+=31.0;
     s1+=478.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i3<4.0471553802490234e-05){
   if(i10<1.0410068035125732){
    if(i26<0.00028332119109109044){
     s0+=50480.0;
     s1+=121.0;
    } else {
     s0+=7362.0;
     s1+=308.0;
    }
   } else {
    if(i32<0.000687342369928956){
     s0+=1906.0;
     s1+=495.0;
    } else {
     s0+=2888.0;
     s1+=144.0;
    }
   }
  } else {
   if(i66<1.001828908920288){
    if(i17<0.005320016760379076){
     s0+=239.0;
    } else {
     s0+=39.0;
     s1+=20.0;
    }
   } else {
    if(i34<0.0019678084645420313){
     s0+=17.0;
     s1+=354.0;
    } else {
     s0+=151.0;
     s1+=38.0;
    }
   }
  }
 }
} else {
 if(i66<1.0067055225372314){
  if(i27<0.026385309174656868){
   if(i7<-1.202046223625075e-05){
    if(i63<0.03758639097213745){
     s0+=155.0;
     s1+=691.0;
    } else {
     s0+=312.0;
     s1+=147.0;
    }
   } else {
    if(i24<1.0354517698287964){
     s0+=80.0;
     s1+=80.0;
    } else {
     s0+=466.0;
     s1+=43.0;
    }
   }
  } else {
   if(i63<0.03621506690979004){
    if(i12<0.9908730983734131){
     s0+=72.0;
     s1+=225.0;
    } else {
     s0+=64.0;
     s1+=2579.0;
    }
   } else {
    if(i18<1.0021214485168457){
     s0+=289.0;
     s1+=333.0;
    } else {
     s0+=22.0;
     s1+=536.0;
    }
   }
  }
 } else {
  if(i6<1.0018020868301392){
   if(i23<1.1501617431640625){
    if(i41<0.05781048536300659){
     s1+=427.0;
    } else {
     s0+=30.0;
     s1+=159.0;
    }
   } else {
    if(i53<0.0009648624109104276){
     s0+=161.0;
     s1+=33.0;
    } else {
     s0+=36.0;
     s1+=264.0;
    }
   }
  } else {
   if(i13<1.0055534839630127){
    if(i63<0.0281791090965271){
     s1+=131.0;
    } else {
     s0+=10.0;
     s1+=34.0;
    }
   } else {
    if(i17<0.0038388080429285765){
     s0+=6.0;
     s1+=613.0;
    } else {
     s1+=8019.0;
    }
   }
  }
 }
}
if(i15<1.0016474723815918){
 if(i2<0.08242163062095642){
  if(i11<1.0081498622894287){
   if(i23<1.0467959642410278){
    if(i43<-0.00612872838973999){
     s0+=753.0;
     s1+=85.0;
    } else {
     s0+=54146.0;
     s1+=162.0;
    }
   } else {
    if(i36<1.103413462638855){
     s0+=3461.0;
     s1+=1143.0;
    } else {
     s0+=9285.0;
     s1+=304.0;
    }
   }
  } else {
   if(i33<0.0013339327415451407){
    if(i39<0.0018563804915174842){
     s0+=45.0;
     s1+=269.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i52<-0.06641188263893127){
     s0+=39.0;
     s1+=30.0;
    } else {
     s0+=709.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i69<0.9993659257888794){
   s0+=189.0;
  } else {
   if(i41<0.058360904455184937){
    if(i3<-6.410479545593262e-05){
     s0+=18.0;
     s1+=21.0;
    } else {
     s0+=47.0;
     s1+=2673.0;
    }
   } else {
    if(i36<1.3685884475708008){
     s0+=1180.0;
     s1+=1276.0;
    } else {
     s0+=46.0;
     s1+=712.0;
    }
   }
  }
 }
} else {
 if(i21<1.0055465698242188){
  if(i14<-0.0003559887409210205){
   if(i2<0.1000048816204071){
    if(i39<0.01513902097940445){
     s0+=635.0;
     s1+=23.0;
    } else {
     s0+=20.0;
     s1+=38.0;
    }
   } else {
    if(i75<0.20865324139595032){
     s0+=15.0;
     s1+=14.0;
    } else {
     s1+=143.0;
    }
   }
  } else {
   if(i4<0.0006032586097717285){
    if(i70<0.0007083212840370834){
     s0+=296.0;
     s1+=103.0;
    } else {
     s0+=47.0;
     s1+=196.0;
    }
   } else {
    if(i61<0.0005622119642794132){
     s0+=53.0;
     s1+=335.0;
    } else {
     s0+=35.0;
     s1+=1261.0;
    }
   }
  }
 } else {
  if(i1<0.05714097619056702){
   if(i36<1.17421293258667){
    s1+=83.0;
   } else {
    if(i51<0.0043798028491437435){
     s0+=92.0;
     s1+=1.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i6<1.0025426149368286){
    if(i69<0.9999977350234985){
     s0+=50.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=107.0;
    }
   } else {
    if(i4<0.001415550708770752){
     s0+=31.0;
     s1+=827.0;
    } else {
     s0+=1.0;
     s1+=7098.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i2<0.08216536045074463){
  if(i6<1.0024782419204712){
   if(i51<0.0017414403846487403){
    if(i27<0.01415286399424076){
     s0+=52084.0;
     s1+=211.0;
    } else {
     s0+=8373.0;
     s1+=458.0;
    }
   } else {
    if(i34<0.0009841469582170248){
     s0+=1207.0;
     s1+=465.0;
    } else {
     s0+=3283.0;
     s1+=183.0;
    }
   }
  } else {
   if(i50<9.272338502341881e-06){
    if(i28<1.2392117977142334){
     s0+=3.0;
     s1+=33.0;
    } else {
     s0+=102.0;
    }
   } else {
    if(i80<-3.6656856536865234e-06){
     s0+=4.0;
    } else {
     s0+=25.0;
     s1+=359.0;
    }
   }
  }
 } else {
  if(i46<-0.0001443028450012207){
   if(i5<0.08783835172653198){
    if(i32<0.00175795319955796){
     s0+=107.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i11<0.9978864192962646){
     s0+=4.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i23<1.0452029705047607){
    if(i11<0.99092698097229){
     s1+=10.0;
    } else {
     s0+=78.0;
     s1+=8.0;
    }
   } else {
    if(i7<1.566038372402545e-05){
     s0+=45.0;
     s1+=1057.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i13<1.006543755531311){
  if(i17<0.0055577997118234634){
   if(i7<-1.1519126019265968e-05){
    if(i55<1.0014557838439941){
     s0+=1143.0;
     s1+=1426.0;
    } else {
     s0+=575.0;
     s1+=38.0;
    }
   } else {
    if(i1<0.2481015920639038){
     s0+=2963.0;
     s1+=187.0;
    } else {
     s0+=149.0;
     s1+=78.0;
    }
   }
  } else {
   if(i42<0.008682841435074806){
    if(i2<0.11240136623382568){
     s0+=399.0;
     s1+=450.0;
    } else {
     s0+=15.0;
     s1+=686.0;
    }
   } else {
    if(i2<0.005371838808059692){
     s0+=32.0;
     s1+=6.0;
    } else {
     s0+=46.0;
     s1+=1980.0;
    }
   }
  }
 } else {
  if(i12<1.003975510597229){
   if(i1<0.09103119373321533){
    if(i38<1.1528830528259277){
     s1+=33.0;
    } else {
     s0+=232.0;
     s1+=8.0;
    }
   } else {
    if(i44<-7.491947826565593e-07){
     s0+=29.0;
     s1+=1167.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   }
  } else {
   if(i44<-1.3330245565157384e-05){
    if(i1<0.047867774963378906){
     s0+=2.0;
     s1+=62.0;
    } else {
     s0+=2.0;
     s1+=8034.0;
    }
   } else {
    if(i69<0.9999080896377563){
     s1+=284.0;
    } else {
     s0+=49.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i0<0.07868939638137817){
 if(i20<1.8417835235595703e-05){
  if(i1<0.06916067004203796){
   if(i52<-0.030405402183532715){
    if(i15<0.998642086982727){
     s0+=741.0;
     s1+=14.0;
    } else {
     s0+=1215.0;
     s1+=409.0;
    }
   } else {
    if(i8<1.0398929119110107){
     s0+=55634.0;
     s1+=367.0;
    } else {
     s0+=7605.0;
     s1+=616.0;
    }
   }
  } else {
   if(i41<0.036302149295806885){
    if(i9<-0.00036075711250305176){
     s0+=252.0;
     s1+=2.0;
    } else {
     s0+=62.0;
     s1+=394.0;
    }
   } else {
    if(i63<0.020767241716384888){
     s0+=312.0;
     s1+=111.0;
    } else {
     s0+=1992.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i65<9.557978046359494e-06){
   if(i17<0.0023817443288862705){
    if(i12<1.0067744255065918){
     s0+=368.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=41.0;
    }
   } else {
    if(i77<-0.0013176798820495605){
     s0+=72.0;
     s1+=49.0;
    } else {
     s0+=29.0;
     s1+=942.0;
    }
   }
  } else {
   if(i29<0.04355888068675995){
    if(i52<-0.04193654656410217){
     s0+=36.0;
     s1+=51.0;
    } else {
     s0+=930.0;
     s1+=90.0;
    }
   } else {
    s1+=89.0;
   }
  }
 }
} else {
 if(i19<0.00024759769439697266){
  if(i6<0.9965264797210693){
   if(i37<1.4274330139160156){
    if(i46<-0.00014221668243408203){
     s0+=451.0;
    } else {
     s0+=73.0;
     s1+=20.0;
    }
   } else {
    if(i17<0.006503769662231207){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=107.0;
    }
   }
  } else {
   if(i17<0.0032917787320911884){
    if(i52<0.03824535012245178){
     s0+=124.0;
     s1+=515.0;
    } else {
     s0+=663.0;
     s1+=200.0;
    }
   } else {
    if(i1<0.13338324427604675){
     s0+=248.0;
     s1+=788.0;
    } else {
     s0+=31.0;
     s1+=2091.0;
    }
   }
  }
 } else {
  if(i4<0.00012129545211791992){
   if(i38<1.260420560836792){
    if(i20<6.496906280517578e-06){
     s0+=4.0;
     s1+=143.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i37<1.3712366819381714){
     s0+=99.0;
     s1+=6.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i3<5.346536636352539e-05){
    if(i42<0.00022118492051959038){
     s0+=6.0;
    } else {
     s0+=68.0;
     s1+=1269.0;
    }
   } else {
    if(i32<0.0018824271392077208){
     s0+=4.0;
     s1+=487.0;
    } else {
     s1+=8233.0;
    }
   }
  }
 }
}
if(i12<1.0039026737213135){
 if(i26<0.00031592469895258546){
  if(i57<-0.004479438066482544){
   if(i23<1.0358704328536987){
    s0+=5.0;
   } else {
    s1+=38.0;
   }
  } else {
   if(i21<1.0058012008666992){
    if(i26<0.0002731260610744357){
     s0+=51366.0;
     s1+=163.0;
    } else {
     s0+=1894.0;
     s1+=87.0;
    }
   } else {
    if(i18<0.9994743466377258){
     s0+=241.0;
     s1+=6.0;
    } else {
     s0+=219.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i5<0.08096134662628174){
   if(i6<0.9978774785995483){
    if(i37<1.217280626296997){
     s0+=2487.0;
     s1+=303.0;
    } else {
     s0+=7414.0;
     s1+=96.0;
    }
   } else {
    if(i6<1.0008056163787842){
     s0+=4656.0;
     s1+=1487.0;
    } else {
     s0+=767.0;
     s1+=875.0;
    }
   }
  } else {
   if(i37<1.368408203125){
    if(i46<-0.0002422034740447998){
     s0+=274.0;
     s1+=1.0;
    } else {
     s0+=856.0;
     s1+=1862.0;
    }
   } else {
    if(i36<1.337784767150879){
     s0+=99.0;
     s1+=314.0;
    } else {
     s0+=23.0;
     s1+=1665.0;
    }
   }
  }
 }
} else {
 if(i44<-1.586810321896337e-05){
  if(i19<3.5822391510009766e-05){
   if(i0<0.1096307635307312){
    if(i43<0.011699706315994263){
     s0+=23.0;
     s1+=138.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i29<0.016997763887047768){
     s0+=6.0;
     s1+=21.0;
    } else {
     s1+=317.0;
    }
   }
  } else {
   if(i37<1.613681674003601){
    s1+=7838.0;
   } else {
    if(i29<0.01884276233613491){
     s0+=6.0;
     s1+=63.0;
    } else {
     s1+=1062.0;
    }
   }
  }
 } else {
  if(i8<1.045311689376831){
   if(i25<1.0076011419296265){
    s0+=383.0;
   } else {
    if(i13<1.0066840648651123){
     s1+=1.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i1<0.08296775817871094){
    if(i19<0.0016036033630371094){
     s0+=223.0;
     s1+=58.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i37<1.2009943723678589){
     s1+=410.0;
    } else {
     s0+=42.0;
     s1+=202.0;
    }
   }
  }
 }
}
if(i18<1.0025938749313354){
 if(i7<-6.820332782808691e-05){
  if(i1<0.09458804130554199){
   if(i8<1.0436697006225586){
    if(i19<0.0005240142345428467){
     s0+=539.0;
     s1+=8.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i34<0.0034360582940280437){
     s1+=88.0;
    } else {
     s0+=186.0;
     s1+=76.0;
    }
   }
  } else {
   if(i20<0.0003489851951599121){
    if(i14<-0.0005939304828643799){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=35.0;
     s1+=1978.0;
    }
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i8<1.0452277660369873){
   if(i23<1.0451585054397583){
    if(i0<0.05546438694000244){
     s0+=48925.0;
     s1+=144.0;
    } else {
     s0+=4851.0;
     s1+=101.0;
    }
   } else {
    if(i49<2.7663678338285536e-05){
     s0+=3154.0;
     s1+=96.0;
    } else {
     s0+=4017.0;
     s1+=711.0;
    }
   }
  } else {
   if(i11<1.0107828378677368){
    if(i29<0.012977558188140392){
     s0+=4636.0;
     s1+=733.0;
    } else {
     s0+=2728.0;
     s1+=1405.0;
    }
   } else {
    if(i0<0.0819418728351593){
     s0+=386.0;
     s1+=175.0;
    } else {
     s0+=156.0;
     s1+=779.0;
    }
   }
  }
 }
} else {
 if(i1<0.07549458742141724){
  if(i15<1.0018959045410156){
   if(i13<0.9819045662879944){
    if(i65<5.062280979473144e-05){
     s0+=493.0;
    } else {
     s0+=174.0;
     s1+=4.0;
    }
   } else {
    if(i53<0.0008894928032532334){
     s0+=298.0;
     s1+=29.0;
    } else {
     s0+=114.0;
     s1+=146.0;
    }
   }
  } else {
   if(i60<0.00010401010513305664){
    if(i28<1.613681674003601){
     s0+=40.0;
     s1+=532.0;
    } else {
     s0+=38.0;
     s1+=22.0;
    }
   } else {
    if(i38<1.1270583868026733){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=170.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i6<1.0023717880249023){
   if(i61<0.00017258428852073848){
    if(i51<0.003157252911478281){
     s0+=48.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i5<0.12542209029197693){
     s0+=135.0;
     s1+=243.0;
    } else {
     s0+=14.0;
     s1+=526.0;
    }
   }
  } else {
   if(i19<-0.0004004836082458496){
    if(i17<0.008068861439824104){
     s0+=32.0;
     s1+=78.0;
    } else {
     s0+=3.0;
     s1+=460.0;
    }
   } else {
    if(i17<0.002177306916564703){
     s0+=19.0;
     s1+=125.0;
    } else {
     s0+=2.0;
     s1+=8529.0;
    }
   }
  }
 }
}
if(i2<0.08522835373878479){
 if(i19<0.0011545419692993164){
  if(i4<0.0005853474140167236){
   if(i26<0.0003061392926611006){
    if(i46<0.00011724233627319336){
     s0+=48447.0;
     s1+=144.0;
    } else {
     s0+=5097.0;
     s1+=176.0;
    }
   } else {
    if(i6<0.9967672824859619){
     s0+=8383.0;
     s1+=130.0;
    } else {
     s0+=7296.0;
     s1+=1668.0;
    }
   }
  } else {
   if(i17<0.0040964726358652115){
    if(i49<6.319794920273125e-06){
     s0+=165.0;
    } else {
     s0+=24.0;
     s1+=30.0;
    }
   } else {
    if(i13<0.9985026121139526){
     s0+=105.0;
     s1+=215.0;
    } else {
     s0+=3.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i34<0.002937664743512869){
   s1+=469.0;
  } else {
   if(i6<1.0056278705596924){
    if(i30<1.000295877456665){
     s1+=2.0;
    } else {
     s0+=122.0;
    }
   } else {
    s1+=62.0;
   }
  }
 }
} else {
 if(i3<9.238719940185547e-06){
  if(i20<-1.8596649169921875e-05){
   if(i12<0.9821400046348572){
    if(i64<0.002701491117477417){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i49<0.00017884865519590676){
     s0+=340.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   if(i52<0.043568193912506104){
    if(i40<1.0304665565490723){
     s0+=52.0;
     s1+=1060.0;
    } else {
     s0+=62.0;
     s1+=123.0;
    }
   } else {
    if(i34<0.00636235810816288){
     s0+=563.0;
     s1+=312.0;
    } else {
     s0+=36.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i19<0.00023323297500610352){
   if(i29<0.023487292230129242){
    if(i52<0.05910205841064453){
     s0+=73.0;
     s1+=355.0;
    } else {
     s0+=227.0;
     s1+=75.0;
    }
   } else {
    if(i44<-1.6338010027538985e-05){
     s0+=3.0;
     s1+=1376.0;
    } else {
     s0+=67.0;
     s1+=243.0;
    }
   }
  } else {
   if(i36<1.0530544519424438){
    s0+=4.0;
   } else {
    if(i34<0.005621819291263819){
     s0+=68.0;
     s1+=2322.0;
    } else {
     s0+=1.0;
     s1+=7730.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i47<0.0003084986237809062){
  if(i4<0.0006625950336456299){
   if(i22<1.0084006786346436){
    if(i0<0.0777098536491394){
     s0+=55690.0;
     s1+=399.0;
    } else {
     s0+=166.0;
     s1+=89.0;
    }
   } else {
    if(i1<0.061316072940826416){
     s0+=199.0;
     s1+=35.0;
    } else {
     s0+=40.0;
     s1+=170.0;
    }
   }
  } else {
   if(i74<0.00013640636461786926){
    if(i1<0.056356966495513916){
     s0+=26.0;
     s1+=13.0;
    } else {
     s1+=216.0;
    }
   } else {
    if(i68<-9.018006494443398e-06){
     s1+=8.0;
    } else {
     s0+=63.0;
    }
   }
  }
 } else {
  if(i2<0.08024033904075623){
   if(i13<1.0017675161361694){
    if(i33<0.002396003343164921){
     s0+=3350.0;
     s1+=630.0;
    } else {
     s0+=5096.0;
     s1+=85.0;
    }
   } else {
    if(i17<0.0016912624705582857){
     s0+=40.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=155.0;
    }
   }
  } else {
   if(i36<1.0679112672805786){
    if(i30<1.000479817390442){
     s0+=110.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i43<0.014269113540649414){
     s0+=51.0;
     s1+=664.0;
    } else {
     s0+=76.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i0<0.08388495445251465){
  if(i30<1.0006650686264038){
   if(i23<1.0903667211532593){
    if(i13<1.0060653686523438){
     s0+=1115.0;
     s1+=462.0;
    } else {
     s0+=1.0;
     s1+=95.0;
    }
   } else {
    if(i17<0.005807346664369106){
     s0+=2647.0;
     s1+=150.0;
    } else {
     s0+=170.0;
     s1+=123.0;
    }
   }
  } else {
   if(i4<0.0004627704620361328){
    if(i51<0.006940262857824564){
     s0+=741.0;
     s1+=57.0;
    } else {
     s0+=45.0;
     s1+=64.0;
    }
   } else {
    if(i49<7.722542068222538e-05){
     s0+=29.0;
     s1+=654.0;
    } else {
     s0+=160.0;
     s1+=272.0;
    }
   }
  }
 } else {
  if(i4<0.0004442930221557617){
   if(i15<0.99855637550354){
    if(i7<-0.00011026638821931556){
     s1+=2.0;
    } else {
     s0+=285.0;
     s1+=1.0;
    }
   } else {
    if(i7<-1.3807219147565775e-05){
     s0+=348.0;
     s1+=2127.0;
    } else {
     s0+=477.0;
     s1+=226.0;
    }
   }
  } else {
   if(i4<0.0008388757705688477){
    if(i17<0.003887693863362074){
     s0+=91.0;
     s1+=88.0;
    } else {
     s0+=31.0;
     s1+=991.0;
    }
   } else {
    if(i19<3.1828880310058594e-05){
     s0+=40.0;
     s1+=750.0;
    } else {
     s0+=3.0;
     s1+=8580.0;
    }
   }
  }
 }
}
if(i7<-6.899627624079585e-05){
 if(i13<0.980326771736145){
  if(i5<0.06040149927139282){
   if(i74<0.0002774014719761908){
    if(i24<0.8900328874588013){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=769.0;
     s1+=19.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i38<1.2790629863739014){
    if(i14<-0.0005598068237304688){
     s0+=14.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=105.0;
   }
  }
 } else {
  if(i32<0.0004683042352553457){
   s0+=169.0;
  } else {
   if(i19<-0.0024654269218444824){
    if(i42<0.008090152405202389){
     s0+=102.0;
     s1+=26.0;
    } else {
     s0+=1.0;
     s1+=114.0;
    }
   } else {
    if(i66<0.9958059787750244){
     s0+=148.0;
     s1+=1542.0;
    } else {
     s0+=35.0;
     s1+=10010.0;
    }
   }
  }
 }
} else {
 if(i23<1.0495078563690186){
  if(i22<1.008435606956482){
   if(i64<-0.001375645399093628){
    if(i72<0.00012195329327369109){
     s0+=765.0;
     s1+=232.0;
    } else {
     s0+=860.0;
     s1+=18.0;
    }
   } else {
    if(i42<0.00028570869471877813){
     s0+=44418.0;
     s1+=10.0;
    } else {
     s0+=9969.0;
     s1+=174.0;
    }
   }
  } else {
   if(i74<0.00013130262959748507){
    if(i7<-2.1299685613485053e-05){
     s1+=45.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=53.0;
   }
  }
 } else {
  if(i4<0.000202178955078125){
   if(i5<0.060425907373428345){
    if(i33<0.0009340601973235607){
     s0+=3438.0;
     s1+=893.0;
    } else {
     s0+=7159.0;
     s1+=320.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=707.0;
     s1+=1266.0;
    } else {
     s0+=1271.0;
     s1+=466.0;
    }
   }
  } else {
   if(i34<0.0013151279417797923){
    if(i34<0.00024934898829087615){
     s0+=53.0;
    } else {
     s0+=31.0;
     s1+=1017.0;
    }
   } else {
    if(i16<0.994390606880188){
     s0+=10.0;
     s1+=326.0;
    } else {
     s0+=1060.0;
     s1+=582.0;
    }
   }
  }
 }
}
if(i8<1.0562306642532349){
 if(i13<1.0045123100280762){
  if(i64<-0.0013577640056610107){
   if(i12<0.9942115545272827){
    if(i5<0.062291502952575684){
     s0+=2636.0;
     s1+=45.0;
    } else {
     s0+=61.0;
     s1+=33.0;
    }
   } else {
    if(i0<0.04307502508163452){
     s0+=1399.0;
     s1+=326.0;
    } else {
     s0+=180.0;
     s1+=487.0;
    }
   }
  } else {
   if(i0<0.07829615473747253){
    if(i47<0.00029837124748155475){
     s0+=54389.0;
     s1+=301.0;
    } else {
     s0+=5240.0;
     s1+=286.0;
    }
   } else {
    if(i12<0.994552731513977){
     s0+=200.0;
     s1+=18.0;
    } else {
     s0+=98.0;
     s1+=359.0;
    }
   }
  }
 } else {
  if(i61<0.0005975629901513457){
   if(i37<1.1351666450500488){
    if(i74<0.00030185916693881154){
     s1+=266.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i18<1.006324291229248){
     s0+=479.0;
     s1+=13.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i74<0.0003863399906549603){
    s1+=263.0;
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i0<0.08456301689147949){
  if(i7<-5.080352275399491e-05){
   if(i66<1.001619577407837){
    if(i71<0.9987229704856873){
     s0+=245.0;
     s1+=347.0;
    } else {
     s0+=255.0;
     s1+=15.0;
    }
   } else {
    if(i55<1.002744197845459){
     s0+=36.0;
     s1+=765.0;
    } else {
     s0+=61.0;
     s1+=2.0;
    }
   }
  } else {
   if(i9<0.0007407665252685547){
    if(i23<1.0920991897583008){
     s0+=1560.0;
     s1+=550.0;
    } else {
     s0+=2982.0;
     s1+=147.0;
    }
   } else {
    if(i4<0.0005058646202087402){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i7<-1.3829756426275708e-05){
   if(i66<1.0108208656311035){
    if(i0<0.13041985034942627){
     s0+=331.0;
     s1+=929.0;
    } else {
     s0+=100.0;
     s1+=3144.0;
    }
   } else {
    if(i29<0.016281846910715103){
     s0+=51.0;
     s1+=1195.0;
    } else {
     s0+=11.0;
     s1+=7237.0;
    }
   }
  } else {
   if(i31<0.03996121883392334){
    if(i20<-2.3096799850463867e-05){
     s0+=9.0;
    } else {
     s0+=10.0;
     s1+=129.0;
    }
   } else {
    if(i18<1.0030410289764404){
     s0+=746.0;
     s1+=127.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
}
if(i2<0.08358585834503174){
 if(i23<1.0485899448394775){
  if(i38<1.0556960105895996){
   if(i38<1.05283784866333){
    s0+=41559.0;
   } else {
    if(i21<0.986797034740448){
     s1+=1.0;
    } else {
     s0+=560.0;
    }
   }
  } else {
   if(i45<-0.001106858253479004){
    if(i30<0.999234139919281){
     s0+=94.0;
    } else {
     s0+=354.0;
     s1+=178.0;
    }
   } else {
    if(i36<1.1476502418518066){
     s0+=4207.0;
     s1+=216.0;
    } else {
     s0+=9143.0;
    }
   }
  }
 } else {
  if(i4<0.000513911247253418){
   if(i36<1.103413462638855){
    if(i29<0.010958625003695488){
     s0+=2679.0;
     s1+=580.0;
    } else {
     s0+=177.0;
     s1+=701.0;
    }
   } else {
    if(i51<0.00542923528701067){
     s0+=8674.0;
     s1+=204.0;
    } else {
     s0+=1632.0;
     s1+=293.0;
    }
   }
  } else {
   if(i62<-0.010194935835897923){
    if(i51<0.005765785463154316){
     s0+=81.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i17<0.0020901979878544807){
     s0+=109.0;
     s1+=38.0;
    } else {
     s0+=91.0;
     s1+=984.0;
    }
   }
  }
 }
} else {
 if(i7<-1.2694299584836699e-05){
  if(i36<1.337784767150879){
   if(i58<-0.006211729720234871){
    if(i16<1.0410654544830322){
     s0+=401.0;
     s1+=447.0;
    } else {
     s0+=60.0;
     s1+=627.0;
    }
   } else {
    if(i31<0.05458146333694458){
     s0+=41.0;
     s1+=4023.0;
    } else {
     s0+=150.0;
     s1+=662.0;
    }
   }
  } else {
   if(i34<0.005000534933060408){
    if(i73<1.0014996528625488){
     s0+=14.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i0<0.08209824562072754){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=7891.0;
    }
   }
  }
 } else {
  if(i38<1.2552803754806519){
   if(i41<0.058552324771881104){
    if(i12<0.9901874661445618){
     s0+=81.0;
     s1+=1.0;
    } else {
     s0+=22.0;
     s1+=218.0;
    }
   } else {
    if(i36<1.2527469396591187){
     s0+=489.0;
     s1+=57.0;
    } else {
     s0+=50.0;
     s1+=69.0;
    }
   }
  } else {
   if(i70<0.006068255286663771){
    if(i35<0.048750340938568115){
     s1+=2.0;
    } else {
     s0+=289.0;
    }
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i3<3.5703182220458984e-05){
 if(i1<0.08677351474761963){
  if(i50<0.00027157209115102887){
   if(i47<0.00029911554884165525){
    if(i8<1.0436501502990723){
     s0+=50334.0;
     s1+=125.0;
    } else {
     s0+=2742.0;
     s1+=233.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=2041.0;
     s1+=579.0;
    } else {
     s0+=2644.0;
     s1+=69.0;
    }
   }
  } else {
   if(i39<0.00202257395721972){
    if(i3<-1.3113021850585938e-05){
     s0+=1613.0;
     s1+=500.0;
    } else {
     s0+=101.0;
     s1+=451.0;
    }
   } else {
    if(i51<0.00662129744887352){
     s0+=7540.0;
     s1+=55.0;
    } else {
     s0+=1360.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i20<-1.6361474990844727e-05){
   if(i68<-3.7287854866008274e-06){
    if(i73<1.000109076499939){
     s1+=7.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i46<-5.46574592590332e-05){
     s0+=600.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   }
  } else {
   if(i41<0.05808117985725403){
    if(i2<0.06879749894142151){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=1895.0;
    }
   } else {
    if(i5<0.2122264802455902){
     s0+=898.0;
     s1+=658.0;
    } else {
     s0+=92.0;
     s1+=771.0;
    }
   }
  }
 }
} else {
 if(i8<1.0341004133224487){
  if(i49<4.2671301343943924e-05){
   if(i57<-0.0026833415031433105){
    if(i10<1.02775239944458){
     s1+=5.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i74<4.748033097712323e-05){
     s1+=3.0;
    } else {
     s0+=406.0;
     s1+=2.0;
    }
   }
  } else {
   if(i80<0.000136643648147583){
    s1+=46.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i2<0.0688396692276001){
   if(i38<1.1961640119552612){
    if(i33<0.0004908244591206312){
     s0+=17.0;
    } else {
     s0+=19.0;
     s1+=444.0;
    }
   } else {
    if(i70<0.0028950730338692665){
     s0+=195.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=135.0;
    }
   }
  } else {
   if(i33<0.0004986256826668978){
    s0+=10.0;
   } else {
    if(i14<-4.351139068603516e-06){
     s0+=121.0;
     s1+=1127.0;
    } else {
     s0+=53.0;
     s1+=10023.0;
    }
   }
  }
 }
}
if(i2<0.08522835373878479){
 if(i23<1.0486011505126953){
  if(i64<-0.001290738582611084){
   if(i38<1.0547096729278564){
    s0+=1113.0;
   } else {
    if(i14<-0.00020062923431396484){
     s0+=626.0;
     s1+=22.0;
    } else {
     s0+=173.0;
     s1+=214.0;
    }
   }
  } else {
   if(i1<0.06530976295471191){
    if(i4<0.0006679892539978027){
     s0+=51335.0;
     s1+=56.0;
    } else {
     s0+=42.0;
     s1+=6.0;
    }
   } else {
    if(i63<0.007823467254638672){
     s0+=53.0;
     s1+=30.0;
    } else {
     s0+=2915.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i14<0.00016307830810546875){
   if(i6<1.0024672746658325){
    if(i56<0.005779725033789873){
     s0+=9736.0;
     s1+=866.0;
    } else {
     s0+=3496.0;
     s1+=959.0;
    }
   } else {
    if(i68<-4.35835409007268e-06){
     s0+=93.0;
     s1+=475.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   }
  } else {
   if(i53<0.0008055573562160134){
    if(i39<0.0018730293959379196){
     s1+=55.0;
    } else {
     s0+=119.0;
     s1+=2.0;
    }
   } else {
    if(i7<-4.248705226927996e-05){
     s0+=5.0;
     s1+=471.0;
    } else {
     s0+=10.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i18<1.000277042388916){
  if(i6<0.9960613250732422){
   if(i36<1.3685884475708008){
    if(i37<1.5029270648956299){
     s0+=390.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i50<0.0005652777617797256){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=72.0;
    }
   }
  } else {
   if(i52<0.04148757457733154){
    if(i26<0.00026932329637929797){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=92.0;
     s1+=1461.0;
    }
   } else {
    if(i0<0.11655542254447937){
     s0+=333.0;
     s1+=68.0;
    } else {
     s0+=237.0;
     s1+=816.0;
    }
   }
  }
 } else {
  if(i4<0.0005219578742980957){
   if(i45<0.004391789436340332){
    if(i31<0.055979400873184204){
     s0+=1.0;
     s1+=794.0;
    } else {
     s0+=36.0;
     s1+=132.0;
    }
   } else {
    if(i27<0.02522934041917324){
     s0+=215.0;
     s1+=68.0;
    } else {
     s0+=64.0;
     s1+=400.0;
    }
   }
  } else {
   if(i17<0.0025939950719475746){
    if(i55<0.9995750188827515){
     s1+=149.0;
    } else {
     s0+=30.0;
     s1+=31.0;
    }
   } else {
    if(i17<0.0038096634671092033){
     s0+=18.0;
     s1+=330.0;
    } else {
     s0+=25.0;
     s1+=9483.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i56<0.008501974865794182){
  if(i23<1.0475037097930908){
   if(i70<0.0007819407619535923){
    if(i22<1.0089375972747803){
     s0+=52373.0;
     s1+=106.0;
    } else {
     s0+=11.0;
     s1+=6.0;
    }
   } else {
    if(i12<0.9939166307449341){
     s0+=1658.0;
    } else {
     s0+=684.0;
     s1+=182.0;
    }
   }
  } else {
   if(i38<1.1034480333328247){
    if(i4<0.00042951107025146484){
     s0+=3930.0;
     s1+=957.0;
    } else {
     s1+=399.0;
    }
   } else {
    if(i28<1.2371783256530762){
     s0+=1728.0;
     s1+=128.0;
    } else {
     s0+=6012.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i49<-1.6625068383291364e-05){
   if(i47<0.00025005306815728545){
    s0+=2.0;
   } else {
    if(i7<-4.248705226927996e-05){
     s1+=149.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i17<0.005560217425227165){
    if(i38<1.186187505722046){
     s0+=1369.0;
     s1+=534.0;
    } else {
     s0+=1084.0;
     s1+=33.0;
    }
   } else {
    if(i10<1.0334903001785278){
     s0+=251.0;
     s1+=101.0;
    } else {
     s0+=55.0;
     s1+=457.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4603137969970703e-05){
  if(i30<0.9991846084594727){
   if(i3<-3.224611282348633e-05){
    s0+=609.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i48<0.026563014835119247){
    s0+=26.0;
   } else {
    if(i79<-0.005602538585662842){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i2<0.11685013771057129){
   if(i24<1.0610392093658447){
    if(i65<2.22876260522753e-05){
     s0+=188.0;
     s1+=1632.0;
    } else {
     s0+=111.0;
     s1+=95.0;
    }
   } else {
    if(i17<0.0039713429287076){
     s0+=423.0;
     s1+=82.0;
    } else {
     s0+=110.0;
     s1+=253.0;
    }
   }
  } else {
   if(i17<0.0017052508192136884){
    if(i52<0.07526379823684692){
     s0+=37.0;
     s1+=123.0;
    } else {
     s0+=187.0;
     s1+=27.0;
    }
   } else {
    if(i9<-0.00027748942375183105){
     s0+=34.0;
     s1+=54.0;
    } else {
     s0+=148.0;
     s1+=11747.0;
    }
   }
  }
 }
}
if(i19<0.0007711648941040039){
 if(i9<0.0004229545593261719){
  if(i2<0.08468136191368103){
   if(i16<0.976848304271698){
    if(i13<0.9850653409957886){
     s0+=2261.0;
     s1+=49.0;
    } else {
     s0+=514.0;
     s1+=380.0;
    }
   } else {
    if(i27<0.01642666384577751){
     s0+=56988.0;
     s1+=497.0;
    } else {
     s0+=7600.0;
     s1+=938.0;
    }
   }
  } else {
   if(i43<0.017239689826965332){
    if(i32<0.00045620292075909674){
     s0+=203.0;
     s1+=14.0;
    } else {
     s0+=283.0;
     s1+=1782.0;
    }
   } else {
    if(i44<-1.1163825547555462e-05){
     s0+=105.0;
     s1+=360.0;
    } else {
     s0+=615.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i72<-0.00025980331702157855){
   if(i53<0.002147786319255829){
    if(i5<0.16642215847969055){
     s0+=259.0;
     s1+=68.0;
    } else {
     s0+=3.0;
     s1+=113.0;
    }
   } else {
    if(i3<-3.653764724731445e-05){
     s0+=44.0;
     s1+=5.0;
    } else {
     s0+=53.0;
     s1+=1552.0;
    }
   }
  } else {
   if(i56<0.0076475259847939014){
    if(i5<0.11032760143280029){
     s0+=1368.0;
     s1+=358.0;
    } else {
     s0+=50.0;
     s1+=284.0;
    }
   } else {
    if(i0<0.012562304735183716){
     s0+=84.0;
     s1+=43.0;
    } else {
     s0+=34.0;
     s1+=420.0;
    }
   }
  }
 }
} else {
 if(i13<1.0086863040924072){
  if(i81<0.00025469542015343904){
   if(i17<0.004188580438494682){
    if(i16<1.0080430507659912){
     s0+=373.0;
     s1+=7.0;
    } else {
     s0+=72.0;
     s1+=62.0;
    }
   } else {
    if(i23<1.2315257787704468){
     s1+=136.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i15<0.9991416335105896){
    if(i75<0.3889613151550293){
     s0+=41.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.0024968888610601425){
     s0+=53.0;
     s1+=23.0;
    } else {
     s0+=4.0;
     s1+=816.0;
    }
   }
  }
 } else {
  if(i44<-1.158342547569191e-05){
   if(i2<0.06764331459999084){
    if(i44<-1.4807534171268344e-05){
     s1+=202.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i66<1.0101003646850586){
     s0+=2.0;
     s1+=558.0;
    } else {
     s1+=7758.0;
    }
   }
  } else {
   if(i69<0.9998874664306641){
    s1+=336.0;
   } else {
    if(i17<0.0029910726007074118){
     s0+=145.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
}
if(i7<-8.167879423126578e-05){
 if(i8<1.0428924560546875){
  if(i18<1.009645700454712){
   if(i5<0.11192145943641663){
    if(i66<1.0022716522216797){
     s0+=483.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i28<1.580256700515747){
    s1+=42.0;
   } else {
    if(i44<-5.0084250688087195e-05){
     s1+=2.0;
    } else {
     s0+=19.0;
    }
   }
  }
 } else {
  if(i66<0.9616186618804932){
   if(i1<0.01358187198638916){
    if(i52<-0.1217302680015564){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i69<1.0006135702133179){
     s0+=4.0;
     s1+=174.0;
    } else {
     s0+=47.0;
     s1+=7.0;
    }
   }
  } else {
   if(i12<1.0006585121154785){
    if(i2<0.11728420853614807){
     s0+=105.0;
     s1+=166.0;
    } else {
     s0+=17.0;
     s1+=1093.0;
    }
   } else {
    if(i43<-0.09211653470993042){
     s0+=10.0;
     s1+=19.0;
    } else {
     s0+=31.0;
     s1+=9235.0;
    }
   }
  }
 }
} else {
 if(i8<1.0452277660369873){
  if(i6<1.0024750232696533){
   if(i42<0.0003134755534119904){
    if(i21<1.0086668729782104){
     s0+=46441.0;
     s1+=50.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.07722920179367065){
     s0+=15114.0;
     s1+=791.0;
    } else {
     s0+=182.0;
     s1+=271.0;
    }
   }
  } else {
   if(i68<-5.208878974372055e-06){
    if(i23<1.0365266799926758){
     s0+=1.0;
    } else {
     s1+=132.0;
    }
   } else {
    if(i35<0.0020293891429901123){
     s1+=2.0;
    } else {
     s0+=80.0;
    }
   }
  }
 } else {
  if(i0<0.07539954781532288){
   if(i36<1.103413462638855){
    if(i34<0.0002947476168628782){
     s0+=1027.0;
    } else {
     s0+=778.0;
     s1+=1315.0;
    }
   } else {
    if(i49<5.7667501096148044e-05){
     s0+=3004.0;
     s1+=58.0;
    } else {
     s0+=2112.0;
     s1+=321.0;
    }
   }
  } else {
   if(i7<-1.2283208889130037e-05){
    if(i45<0.004568219184875488){
     s0+=165.0;
     s1+=2418.0;
    } else {
     s0+=503.0;
     s1+=805.0;
    }
   } else {
    if(i31<0.04318714141845703){
     s0+=54.0;
     s1+=133.0;
    } else {
     s0+=847.0;
     s1+=95.0;
    }
   }
  }
 }
}
if(i3<3.713369369506836e-05){
 if(i40<1.0090382099151611){
  if(i0<0.08347344398498535){
   if(i70<0.0007201328407973051){
    if(i11<1.0102158784866333){
     s0+=58804.0;
     s1+=638.0;
    } else {
     s0+=14.0;
     s1+=49.0;
    }
   } else {
    if(i39<0.0020229704678058624){
     s0+=1855.0;
     s1+=883.0;
    } else {
     s0+=6071.0;
     s1+=252.0;
    }
   }
  } else {
   if(i80<-6.735324859619141e-06){
    if(i18<0.9964783191680908){
     s0+=151.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i68<1.6683561625541188e-06){
     s0+=318.0;
     s1+=1418.0;
    } else {
     s0+=96.0;
    }
   }
  }
 } else {
  if(i7<-3.136062150588259e-05){
   if(i32<0.0014444999396800995){
    if(i23<1.1449697017669678){
     s0+=1.0;
     s1+=827.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i72<-0.00044068065471947193){
     s0+=116.0;
     s1+=822.0;
    } else {
     s0+=460.0;
     s1+=118.0;
    }
   }
  } else {
   if(i11<1.0253968238830566){
    if(i39<0.0014712077099829912){
     s0+=579.0;
     s1+=230.0;
    } else {
     s0+=1871.0;
     s1+=159.0;
    }
   } else {
    if(i47<0.018105143681168556){
     s1+=76.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i38<1.0577372312545776){
  s0+=340.0;
 } else {
  if(i2<0.0584568977355957){
   if(i60<-0.0014615654945373535){
    if(i77<-0.000986853032372892){
     s0+=42.0;
     s1+=49.0;
    } else {
     s0+=26.0;
     s1+=313.0;
    }
   } else {
    if(i36<1.2160736322402954){
     s0+=6.0;
     s1+=44.0;
    } else {
     s0+=176.0;
     s1+=16.0;
    }
   }
  } else {
   if(i1<0.13562846183776855){
    if(i60<0.004330575466156006){
     s0+=86.0;
     s1+=1936.0;
    } else {
     s0+=95.0;
     s1+=24.0;
    }
   } else {
    if(i2<0.1385507881641388){
     s0+=7.0;
     s1+=108.0;
    } else {
     s0+=14.0;
     s1+=9143.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i6<1.002474308013916){
  if(i48<0.025729525834321976){
   if(i79<-0.002018183469772339){
    if(i13<0.989698588848114){
     s0+=950.0;
     s1+=26.0;
    } else {
     s0+=169.0;
     s1+=224.0;
    }
   } else {
    if(i10<1.0455234050750732){
     s0+=54083.0;
     s1+=256.0;
    } else {
     s0+=1775.0;
     s1+=208.0;
    }
   }
  } else {
   if(i34<0.0010742347221821547){
    if(i34<0.0005095870001241565){
     s0+=1994.0;
     s1+=113.0;
    } else {
     s0+=594.0;
     s1+=811.0;
    }
   } else {
    if(i52<-0.02910435199737549){
     s0+=1159.0;
     s1+=321.0;
    } else {
     s0+=7899.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i53<0.0009694900363683701){
   if(i17<0.0016335746040567756){
    if(i49<6.330178621283267e-06){
     s0+=124.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i38<1.1484346389770508){
     s1+=64.0;
    } else {
     s0+=46.0;
     s1+=11.0;
    }
   }
  } else {
   if(i34<0.0028457683511078358){
    s1+=552.0;
   } else {
    if(i71<0.9954803586006165){
     s0+=49.0;
     s1+=292.0;
    } else {
     s0+=69.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i4<0.00014668703079223633){
  if(i46<-0.0001392960548400879){
   if(i32<0.011188913136720657){
    if(i4<-0.0004826784133911133){
     s0+=677.0;
    } else {
     s0+=30.0;
     s1+=20.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i49<2.949504596472252e-05){
    if(i17<0.0019574363250285387){
     s0+=404.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=297.0;
    }
   } else {
    if(i1<0.09897959232330322){
     s0+=271.0;
     s1+=285.0;
    } else {
     s0+=179.0;
     s1+=1334.0;
    }
   }
  }
 } else {
  if(i7<-4.285261093173176e-05){
   if(i12<1.001483678817749){
    if(i33<0.004968768917024136){
     s0+=98.0;
     s1+=290.0;
    } else {
     s0+=48.0;
     s1+=1427.0;
    }
   } else {
    if(i14<6.258487701416016e-06){
     s0+=25.0;
     s1+=552.0;
    } else {
     s0+=3.0;
     s1+=9343.0;
    }
   }
  } else {
   if(i38<1.1089794635772705){
    if(i42<0.0002553167869336903){
     s0+=12.0;
    } else {
     s0+=6.0;
     s1+=371.0;
    }
   } else {
    if(i66<0.9907711744308472){
     s0+=27.0;
     s1+=154.0;
    } else {
     s0+=230.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i1<0.08507683873176575){
 if(i20<1.8537044525146484e-05){
  if(i0<0.06465065479278564){
   if(i47<0.00029790715780109167){
    if(i40<1.0083067417144775){
     s0+=53776.0;
     s1+=348.0;
    } else {
     s0+=720.0;
     s1+=101.0;
    }
   } else {
    if(i62<-0.007430402562022209){
     s0+=5430.0;
     s1+=94.0;
    } else {
     s0+=5364.0;
     s1+=951.0;
    }
   }
  } else {
   if(i56<0.0022942230571061373){
    if(i2<0.08155468106269836){
     s0+=1948.0;
     s1+=167.0;
    } else {
     s0+=97.0;
     s1+=55.0;
    }
   } else {
    if(i5<0.05338898301124573){
     s0+=4.0;
     s1+=133.0;
    } else {
     s0+=298.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i15<1.0019804239273071){
   if(i33<0.00042783014941960573){
    s0+=322.0;
   } else {
    if(i28<1.2392117977142334){
     s0+=5.0;
     s1+=134.0;
    } else {
     s0+=478.0;
     s1+=78.0;
    }
   }
  } else {
   if(i12<1.0009641647338867){
    if(i56<0.012671854346990585){
     s0+=553.0;
     s1+=56.0;
    } else {
     s0+=36.0;
     s1+=135.0;
    }
   } else {
    if(i14<-1.531839370727539e-05){
     s0+=49.0;
     s1+=173.0;
    } else {
     s0+=11.0;
     s1+=560.0;
    }
   }
  }
 }
} else {
 if(i32<0.0005462653934955597){
  if(i37<1.0670123100280762){
   s0+=255.0;
  } else {
   if(i58<-0.004482070915400982){
    if(i15<1.000420093536377){
     s0+=212.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i37<1.1013743877410889){
     s0+=33.0;
     s1+=207.0;
    } else {
     s0+=57.0;
    }
   }
  }
 } else {
  if(i15<0.998518705368042){
   if(i68<-3.554556315066293e-06){
    if(i10<1.0403941869735718){
     s0+=12.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   } else {
    if(i75<1.3388280868530273){
     s0+=310.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i5<0.12475812435150146){
    if(i3<5.0961971282958984e-05){
     s0+=741.0;
     s1+=1894.0;
    } else {
     s0+=50.0;
     s1+=2557.0;
    }
   } else {
    if(i28<1.4085017442703247){
     s0+=208.0;
     s1+=1852.0;
    } else {
     s0+=38.0;
     s1+=7491.0;
    }
   }
  }
 }
}
if(i5<0.07130923867225647){
 if(i9<0.0006163120269775391){
  if(i19<0.0011311173439025879){
   if(i10<1.0410068035125732){
    if(i64<-0.0013701319694519043){
     s0+=4546.0;
     s1+=741.0;
    } else {
     s0+=58442.0;
     s1+=581.0;
    }
   } else {
    if(i18<1.0003697872161865){
     s0+=4451.0;
     s1+=672.0;
    } else {
     s0+=736.0;
     s1+=596.0;
    }
   }
  } else {
   if(i34<0.0028554066084325314){
    s1+=381.0;
   } else {
    if(i0<0.08947008848190308){
     s0+=138.0;
     s1+=4.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i4<0.0007326602935791016){
   if(i49<0.00015593014541082084){
    if(i29<0.012147804722189903){
     s0+=150.0;
     s1+=35.0;
    } else {
     s0+=20.0;
     s1+=101.0;
    }
   } else {
    if(i56<0.028267264366149902){
     s0+=370.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  } else {
   if(i12<1.0028862953186035){
    if(i29<0.021909037604928017){
     s0+=81.0;
     s1+=90.0;
    } else {
     s0+=1.0;
     s1+=94.0;
    }
   } else {
    if(i14<-4.750490188598633e-05){
     s0+=5.0;
     s1+=50.0;
    } else {
     s0+=1.0;
     s1+=1304.0;
    }
   }
  }
 }
} else {
 if(i39<0.010070503689348698){
  if(i7<-2.1800989998155273e-05){
   if(i52<0.05025416612625122){
    if(i2<0.0891246497631073){
     s0+=121.0;
     s1+=238.0;
    } else {
     s0+=55.0;
     s1+=3546.0;
    }
   } else {
    if(i19<0.00014126300811767578){
     s0+=418.0;
     s1+=551.0;
    } else {
     s0+=60.0;
     s1+=825.0;
    }
   }
  } else {
   if(i46<-0.00013405084609985352){
    if(i31<0.03327193856239319){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=433.0;
    }
   } else {
    if(i78<-0.0005165338516235352){
     s0+=181.0;
     s1+=323.0;
    } else {
     s0+=677.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i4<-0.0010602176189422607){
   if(i72<-0.0007720034918747842){
    if(i50<0.0003029061481356621){
     s0+=3.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i21<0.9368698000907898){
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<-1.8715858459472656e-05){
    s0+=2.0;
   } else {
    if(i53<0.0002371375449001789){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=6874.0;
    }
   }
  }
 }
}
if(i40<1.010733962059021){
 if(i1<0.08340519666671753){
  if(i15<1.0018908977508545){
   if(i45<-0.0015021562576293945){
    if(i6<0.9965765476226807){
     s0+=1667.0;
     s1+=89.0;
    } else {
     s0+=2296.0;
     s1+=757.0;
    }
   } else {
    if(i66<1.007657527923584){
     s0+=62195.0;
     s1+=926.0;
    } else {
     s0+=510.0;
     s1+=152.0;
    }
   }
  } else {
   if(i46<0.00036519765853881836){
    if(i62<-0.010780546814203262){
     s0+=45.0;
     s1+=10.0;
    } else {
     s0+=50.0;
     s1+=592.0;
    }
   } else {
    if(i76<-2.8708973331958987e-06){
     s0+=14.0;
     s1+=92.0;
    } else {
     s0+=465.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i20<-1.2755393981933594e-05){
   if(i20<-2.059340476989746e-05){
    s0+=488.0;
   } else {
    if(i33<0.0034160425420850515){
     s0+=70.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=29.0;
    }
   }
  } else {
   if(i27<0.022943584248423576){
    if(i35<0.06352722644805908){
     s0+=50.0;
     s1+=502.0;
    } else {
     s0+=342.0;
     s1+=210.0;
    }
   } else {
    if(i41<0.056475043296813965){
     s0+=16.0;
     s1+=2306.0;
    } else {
     s0+=139.0;
     s1+=781.0;
    }
   }
  }
 }
} else {
 if(i7<-3.684322291519493e-05){
  if(i2<0.08053126931190491){
   if(i28<1.2371783256530762){
    s1+=268.0;
   } else {
    if(i56<0.018257049843668938){
     s0+=327.0;
     s1+=18.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i12<1.0012918710708618){
    if(i72<-0.000201016926439479){
     s0+=45.0;
     s1+=1477.0;
    } else {
     s0+=71.0;
     s1+=65.0;
    }
   } else {
    if(i1<0.11171072721481323){
     s0+=37.0;
     s1+=512.0;
    } else {
     s0+=11.0;
     s1+=7740.0;
    }
   }
  }
 } else {
  if(i61<0.0006612685974687338){
   if(i27<0.03916022926568985){
    if(i34<0.001131776487454772){
     s0+=402.0;
     s1+=147.0;
    } else {
     s0+=1434.0;
     s1+=80.0;
    }
   } else {
    if(i15<0.9988682270050049){
     s0+=84.0;
    } else {
     s0+=61.0;
     s1+=207.0;
    }
   }
  } else {
   if(i2<0.07622936367988586){
    if(i66<1.006363034248352){
     s0+=168.0;
     s1+=5.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i70<0.0009266827255487442){
     s0+=3.0;
     s1+=186.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i18<1.0025941133499146){
 if(i7<-5.750501804868691e-05){
  if(i8<1.0445563793182373){
   if(i66<1.009015679359436){
    if(i53<0.006571558304131031){
     s0+=758.0;
     s1+=21.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i44<-1.2785338185494766e-05){
     s1+=13.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i14<-0.0003655552864074707){
    if(i10<1.0882463455200195){
     s0+=177.0;
     s1+=49.0;
    } else {
     s1+=79.0;
    }
   } else {
    if(i0<0.08061408996582031){
     s0+=177.0;
     s1+=231.0;
    } else {
     s0+=66.0;
     s1+=2191.0;
    }
   }
  }
 } else {
  if(i2<0.07853224873542786){
   if(i51<0.0014884098200127482){
    if(i26<0.0002821004600264132){
     s0+=51415.0;
     s1+=164.0;
    } else {
     s0+=9506.0;
     s1+=637.0;
    }
   } else {
    if(i2<0.056362420320510864){
     s0+=5264.0;
     s1+=613.0;
    } else {
     s0+=424.0;
     s1+=230.0;
    }
   }
  } else {
   if(i31<0.049341022968292236){
    if(i65<2.0722116460092366e-05){
     s0+=184.0;
     s1+=1454.0;
    } else {
     s0+=131.0;
     s1+=103.0;
    }
   } else {
    if(i15<0.9985270500183105){
     s0+=413.0;
     s1+=6.0;
    } else {
     s0+=980.0;
     s1+=621.0;
    }
   }
  }
 }
} else {
 if(i8<1.041278600692749){
  if(i37<1.2146494388580322){
   if(i39<0.0004150441091042012){
    s0+=134.0;
   } else {
    if(i36<1.1820628643035889){
     s0+=4.0;
     s1+=113.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   }
  } else {
   if(i0<0.09777215123176575){
    if(i48<0.004242859315127134){
     s1+=2.0;
    } else {
     s0+=731.0;
     s1+=4.0;
    }
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i5<0.04991447925567627){
   if(i14<-0.00014528632164001465){
    if(i69<1.00019371509552){
     s0+=69.0;
     s1+=86.0;
    } else {
     s0+=157.0;
     s1+=32.0;
    }
   } else {
    if(i3<3.0934810638427734e-05){
     s0+=74.0;
     s1+=52.0;
    } else {
     s0+=54.0;
     s1+=761.0;
    }
   }
  } else {
   if(i72<-0.00013926647079642862){
    if(i6<1.0041769742965698){
     s0+=90.0;
     s1+=1220.0;
    } else {
     s1+=7518.0;
    }
   } else {
    if(i4<0.000853121280670166){
     s0+=182.0;
     s1+=198.0;
    } else {
     s0+=31.0;
     s1+=765.0;
    }
   }
  }
 }
}
if(i2<0.08393236994743347){
 if(i20<1.9252300262451172e-05){
  if(i0<0.06347137689590454){
   if(i52<-0.028778642416000366){
    if(i18<1.0004596710205078){
     s0+=1979.0;
     s1+=295.0;
    } else {
     s0+=227.0;
     s1+=186.0;
    }
   } else {
    if(i10<1.0398966073989868){
     s0+=59223.0;
     s1+=631.0;
    } else {
     s0+=4022.0;
     s1+=345.0;
    }
   }
  } else {
   if(i56<0.0020953190978616476){
    if(i15<1.0006864070892334){
     s0+=2214.0;
     s1+=147.0;
    } else {
     s0+=198.0;
     s1+=88.0;
    }
   } else {
    if(i4<-0.0003574490547180176){
     s0+=166.0;
     s1+=38.0;
    } else {
     s0+=225.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i23<1.0591386556625366){
   if(i18<1.0021424293518066){
    if(i68<-4.220078153593931e-06){
     s0+=498.0;
     s1+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<0.0017970808548852801){
     s1+=33.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i49<0.00013755324471276253){
    if(i6<1.0022404193878174){
     s0+=141.0;
     s1+=83.0;
    } else {
     s0+=64.0;
     s1+=732.0;
    }
   } else {
    if(i56<0.015491712838411331){
     s0+=519.0;
     s1+=18.0;
    } else {
     s0+=34.0;
     s1+=169.0;
    }
   }
  }
 }
} else {
 if(i19<0.00023871660232543945){
  if(i7<-1.229697409144137e-05){
   if(i31<0.04664561152458191){
    if(i69<0.9973214268684387){
     s0+=8.0;
    } else {
     s0+=16.0;
     s1+=2116.0;
    }
   } else {
    if(i17<0.007953546941280365){
     s0+=488.0;
     s1+=406.0;
    } else {
     s0+=29.0;
     s1+=750.0;
    }
   }
  } else {
   if(i6<0.9957244396209717){
    if(i18<0.9983434677124023){
     s0+=365.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i58<-0.004293911624699831){
     s0+=411.0;
     s1+=77.0;
    } else {
     s0+=93.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i28<1.4041423797607422){
   if(i6<1.000617265701294){
    if(i55<0.9998791217803955){
     s0+=16.0;
     s1+=174.0;
    } else {
     s0+=68.0;
     s1+=37.0;
    }
   } else {
    if(i17<0.0018095432315021753){
     s0+=49.0;
     s1+=136.0;
    } else {
     s0+=28.0;
     s1+=2664.0;
    }
   }
  } else {
   if(i32<0.0037188732530921698){
    s0+=2.0;
   } else {
    if(i21<0.9912888407707214){
     s0+=1.0;
     s1+=216.0;
    } else {
     s1+=7186.0;
    }
   }
  }
 }
}
if(i5<0.07170867919921875){
 if(i6<1.0024782419204712){
  if(i0<0.0778147280216217){
   if(i56<0.007569046225398779){
    if(i23<1.0451585054397583){
     s0+=53157.0;
     s1+=185.0;
    } else {
     s0+=12286.0;
     s1+=1070.0;
    }
   } else {
    if(i3<-2.4199485778808594e-05){
     s0+=1793.0;
     s1+=155.0;
    } else {
     s0+=1625.0;
     s1+=681.0;
    }
   }
  } else {
   if(i32<0.0005071667255833745){
    if(i68<-1.5196751519397367e-06){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=74.0;
    }
   } else {
    if(i3<-5.498528480529785e-05){
     s0+=27.0;
    } else {
     s0+=17.0;
     s1+=716.0;
    }
   }
  }
 } else {
  if(i61<0.0004608329327311367){
   if(i37<1.2388319969177246){
    if(i21<1.005373477935791){
     s0+=5.0;
     s1+=3.0;
    } else {
     s1+=391.0;
    }
   } else {
    if(i55<0.9990071058273315){
     s0+=10.0;
     s1+=53.0;
    } else {
     s0+=202.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<1.4901387691497803){
    if(i4<0.00048786401748657227){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=1211.0;
    }
   } else {
    if(i8<1.0840188264846802){
     s0+=30.0;
     s1+=31.0;
    } else {
     s0+=4.0;
     s1+=191.0;
    }
   }
  }
 }
} else {
 if(i17<0.004565528593957424){
  if(i31<0.04356905817985535){
   if(i19<-0.002355515956878662){
    s0+=20.0;
   } else {
    if(i58<-0.010970894247293472){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=77.0;
     s1+=907.0;
    }
   }
  } else {
   if(i19<0.0007182955741882324){
    if(i7<-1.2612319551408291e-05){
     s0+=523.0;
     s1+=268.0;
    } else {
     s0+=930.0;
     s1+=92.0;
    }
   } else {
    if(i66<1.0067391395568848){
     s0+=23.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i19<-0.000942528247833252){
   if(i63<0.018023014068603516){
    if(i49<7.266506145242602e-05){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=688.0;
    }
   } else {
    if(i5<0.12547191977500916){
     s0+=259.0;
     s1+=82.0;
    } else {
     s0+=29.0;
     s1+=353.0;
    }
   }
  } else {
   if(i9<-0.0004469752311706543){
    s0+=41.0;
   } else {
    if(i14<1.1146068572998047e-05){
     s0+=41.0;
     s1+=1189.0;
    } else {
     s0+=2.0;
     s1+=8431.0;
    }
   }
  }
 }
}
if(i54<1.013148307800293){
 if(i2<0.07641658186912537){
  if(i4<0.0005979835987091064){
   if(i27<0.014673164114356041){
    if(i6<1.002469539642334){
     s0+=55924.0;
     s1+=543.0;
    } else {
     s0+=17.0;
     s1+=24.0;
    }
   } else {
    if(i6<0.9978663325309753){
     s0+=8810.0;
     s1+=223.0;
    } else {
     s0+=2426.0;
     s1+=1053.0;
    }
   }
  } else {
   if(i26<0.0001893652806757018){
    if(i47<0.00016225039144046605){
     s0+=82.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i32<0.010718773119151592){
     s0+=92.0;
     s1+=707.0;
    } else {
     s0+=53.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i38<1.0670123100280762){
   if(i18<1.0002546310424805){
    if(i49<7.386042852886021e-05){
     s0+=297.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=7.0;
    }
   } else {
    if(i36<1.0570924282073975){
     s0+=19.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i15<0.9985024929046631){
    if(i7<-3.788782487390563e-05){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=177.0;
     s1+=3.0;
    }
   } else {
    if(i3<-5.8263540267944336e-05){
     s0+=72.0;
     s1+=29.0;
    } else {
     s0+=196.0;
     s1+=4158.0;
    }
   }
  }
 }
} else {
 if(i17<0.004695533309131861){
  if(i12<1.0056579113006592){
   if(i0<0.095174640417099){
    if(i36<1.0778207778930664){
     s0+=74.0;
     s1+=69.0;
    } else {
     s0+=1579.0;
     s1+=78.0;
    }
   } else {
    if(i31<0.058785438537597656){
     s0+=37.0;
     s1+=336.0;
    } else {
     s0+=684.0;
     s1+=175.0;
    }
   }
  } else {
   if(i19<0.001435399055480957){
    if(i49<-1.7802478396333754e-05){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=70.0;
    }
   } else {
    s1+=669.0;
   }
  }
 } else {
  if(i14<-0.00013136863708496094){
   if(i24<1.089779257774353){
    if(i16<1.0166592597961426){
     s0+=255.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=70.0;
    }
   } else {
    if(i73<0.9976871013641357){
     s0+=33.0;
     s1+=6.0;
    } else {
     s1+=426.0;
    }
   }
  } else {
   if(i6<0.9977326393127441){
    if(i57<0.018310964107513428){
     s0+=40.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i25<0.997355580329895){
     s0+=6.0;
     s1+=51.0;
    } else {
     s0+=25.0;
     s1+=8405.0;
    }
   }
  }
 }
}
if(i22<1.0085874795913696){
 if(i8<1.0562013387680054){
  if(i0<0.08162105083465576){
   if(i42<0.0003133216523565352){
    if(i44<-1.4790910427109338e-05){
     s0+=239.0;
     s1+=29.0;
    } else {
     s0+=47092.0;
     s1+=42.0;
    }
   } else {
    if(i37<1.100754976272583){
     s0+=3963.0;
     s1+=974.0;
    } else {
     s0+=12918.0;
     s1+=300.0;
    }
   }
  } else {
   if(i4<-0.000744938850402832){
    if(i48<0.041697025299072266){
     s0+=134.0;
    } else {
     s0+=34.0;
     s1+=19.0;
    }
   } else {
    if(i60<0.0042771995067596436){
     s0+=28.0;
     s1+=478.0;
    } else {
     s0+=50.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i73<1.0006345510482788){
   if(i14<0.00011676549911499023){
    if(i39<0.010476786643266678){
     s0+=2890.0;
     s1+=808.0;
    } else {
     s0+=35.0;
     s1+=188.0;
    }
   } else {
    if(i5<0.027223706245422363){
     s0+=3.0;
     s1+=6.0;
    } else {
     s1+=200.0;
    }
   }
  } else {
   if(i27<0.02343776449561119){
    if(i19<-0.00080108642578125){
     s0+=664.0;
     s1+=183.0;
    } else {
     s0+=112.0;
     s1+=370.0;
    }
   } else {
    if(i2<0.044832080602645874){
     s0+=229.0;
     s1+=160.0;
    } else {
     s0+=199.0;
     s1+=2334.0;
    }
   }
  }
 }
} else {
 if(i14<0.00011140108108520508){
  if(i61<0.0006409542402252555){
   if(i29<0.02568759396672249){
    if(i37<1.1016805171966553){
     s0+=351.0;
     s1+=322.0;
    } else {
     s0+=1513.0;
     s1+=179.0;
    }
   } else {
    if(i6<0.9963058233261108){
     s0+=73.0;
    } else {
     s0+=65.0;
     s1+=420.0;
    }
   }
  } else {
   if(i7<-1.0736468539107591e-05){
    if(i2<0.06576907634735107){
     s0+=117.0;
     s1+=61.0;
    } else {
     s0+=30.0;
     s1+=1175.0;
    }
   } else {
    if(i6<1.0009095668792725){
     s0+=109.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i17<0.002261590911075473){
   if(i19<0.0014948248863220215){
    if(i74<5.6540437071816996e-05){
     s0+=21.0;
     s1+=66.0;
    } else {
     s0+=159.0;
    }
   } else {
    if(i26<0.00023757366579957306){
     s0+=1.0;
    } else {
     s1+=236.0;
    }
   }
  } else {
   if(i46<-0.00022456049919128418){
    if(i5<0.09288990497589111){
     s0+=27.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i0<0.04011613130569458){
     s0+=8.0;
     s1+=34.0;
    } else {
     s0+=12.0;
     s1+=8477.0;
    }
   }
  }
 }
}
if(i19<0.0007696449756622314){
 if(i0<0.08023786544799805){
  if(i9<0.0006369352340698242){
   if(i57<-0.002064049243927002){
    if(i13<0.9896773099899292){
     s0+=3898.0;
     s1+=170.0;
    } else {
     s0+=1834.0;
     s1+=774.0;
    }
   } else {
    if(i0<0.06804022192955017){
     s0+=61149.0;
     s1+=767.0;
    } else {
     s0+=1365.0;
     s1+=308.0;
    }
   }
  } else {
   if(i18<1.0016722679138184){
    if(i11<0.960318922996521){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=368.0;
     s1+=60.0;
    }
   } else {
    if(i69<1.000420093536377){
     s0+=85.0;
     s1+=307.0;
    } else {
     s0+=179.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i29<0.023752287030220032){
   if(i58<-0.004309510812163353){
    if(i17<0.0027529136277735233){
     s0+=591.0;
     s1+=88.0;
    } else {
     s0+=387.0;
     s1+=298.0;
    }
   } else {
    if(i30<0.9990800619125366){
     s0+=139.0;
     s1+=7.0;
    } else {
     s0+=204.0;
     s1+=1237.0;
    }
   }
  } else {
   if(i44<3.1098879844648764e-06){
    if(i7<-1.822039848775603e-05){
     s0+=65.0;
     s1+=2878.0;
    } else {
     s0+=102.0;
     s1+=151.0;
    }
   } else {
    s0+=135.0;
   }
  }
 }
} else {
 if(i23<1.0540467500686646){
  if(i32<0.0005928207538090646){
   s1+=43.0;
  } else {
   if(i0<0.0736856460571289){
    s0+=230.0;
   } else {
    if(i33<0.0006073388503864408){
     s0+=2.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i7<-4.330423689680174e-05){
   if(i9<-0.0002905428409576416){
    s0+=56.0;
   } else {
    if(i7<-6.23506202828139e-05){
     s1+=9287.0;
    } else {
     s0+=57.0;
     s1+=439.0;
    }
   }
  } else {
   if(i32<0.0008040521061047912){
    if(i48<0.08387908339500427){
     s1+=99.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i35<0.15304628014564514){
     s0+=332.0;
     s1+=14.0;
    } else {
     s1+=26.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i15<1.001905918121338){
  if(i42<0.0002990734647028148){
   if(i25<1.0087581872940063){
    if(i78<-0.0009938478469848633){
     s0+=46.0;
     s1+=12.0;
    } else {
     s0+=46864.0;
     s1+=45.0;
    }
   } else {
    if(i39<0.00026534678181633353){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=75.0;
    }
   }
  } else {
   if(i10<1.037574291229248){
    if(i33<0.0008735184092074633){
     s0+=4007.0;
     s1+=770.0;
    } else {
     s0+=11947.0;
     s1+=175.0;
    }
   } else {
    if(i38<1.1034480333328247){
     s0+=1626.0;
     s1+=823.0;
    } else {
     s0+=3937.0;
     s1+=256.0;
    }
   }
  }
 } else {
  if(i4<0.00048738718032836914){
   if(i56<0.013766536489129066){
    if(i69<1.000375509262085){
     s0+=52.0;
     s1+=26.0;
    } else {
     s0+=445.0;
    }
   } else {
    if(i2<0.013326019048690796){
     s0+=12.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=53.0;
    }
   }
  } else {
   if(i43<0.006999790668487549){
    if(i17<0.0013192060869187117){
     s0+=19.0;
    } else {
     s0+=87.0;
     s1+=807.0;
    }
   } else {
    if(i11<1.0060824155807495){
     s0+=52.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i14<3.248453140258789e-05){
  if(i9<-0.00038424134254455566){
   if(i37<1.476589322090149){
    if(i12<0.9943338632583618){
     s0+=575.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i8<1.0457030534744263){
     s0+=57.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   }
  } else {
   if(i7<-1.257023359357845e-05){
    if(i31<0.04593569040298462){
     s0+=33.0;
     s1+=1984.0;
    } else {
     s0+=529.0;
     s1+=1256.0;
    }
   } else {
    if(i35<0.06313502788543701){
     s0+=19.0;
     s1+=170.0;
    } else {
     s0+=603.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i30<0.9988263845443726){
   if(i32<0.006675543263554573){
    s0+=49.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i20<1.627206802368164e-05){
    if(i11<0.9908542633056641){
     s0+=49.0;
     s1+=70.0;
    } else {
     s0+=108.0;
     s1+=1998.0;
    }
   } else {
    if(i67<0.009612802416086197){
     s0+=2.0;
     s1+=349.0;
    } else {
     s0+=2.0;
     s1+=8007.0;
    }
   }
  }
 }
}
if(i2<0.08408460021018982){
 if(i3<4.190206527709961e-05){
  if(i47<0.00030637739109806716){
   if(i26<0.0002620822633616626){
    if(i22<1.0084702968597412){
     s0+=50459.0;
     s1+=144.0;
    } else {
     s0+=128.0;
     s1+=79.0;
    }
   } else {
    if(i57<-0.002348095178604126){
     s0+=172.0;
     s1+=120.0;
    } else {
     s0+=5818.0;
     s1+=272.0;
    }
   }
  } else {
   if(i12<0.9935603737831116){
    if(i56<0.01239543966948986){
     s0+=5859.0;
     s1+=27.0;
    } else {
     s0+=726.0;
     s1+=100.0;
    }
   } else {
    if(i49<3.198310878360644e-05){
     s0+=3596.0;
     s1+=348.0;
    } else {
     s0+=2199.0;
     s1+=1079.0;
    }
   }
  }
 } else {
  if(i37<1.0677311420440674){
   s0+=216.0;
  } else {
   if(i37<1.2524442672729492){
    if(i62<-0.017796240746974945){
     s0+=1.0;
    } else {
     s1+=613.0;
    }
   } else {
    if(i51<0.0028128288686275482){
     s0+=229.0;
     s1+=41.0;
    } else {
     s0+=35.0;
     s1+=340.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690323956310749){
  if(i62<-0.023403067141771317){
   if(i34<0.00532741891220212){
    if(i65<-6.762152224837337e-06){
     s1+=5.0;
    } else {
     s0+=750.0;
     s1+=31.0;
    }
   } else {
    if(i69<0.9999780654907227){
     s0+=111.0;
     s1+=77.0;
    } else {
     s1+=113.0;
    }
   }
  } else {
   if(i6<0.9960232973098755){
    if(i52<0.04540792107582092){
     s0+=125.0;
    } else {
     s0+=23.0;
     s1+=6.0;
    }
   } else {
    if(i55<0.9999901056289673){
     s0+=95.0;
     s1+=1648.0;
    } else {
     s0+=255.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i20<-1.9669532775878906e-05){
   s0+=92.0;
  } else {
   if(i55<1.004626989364624){
    if(i49<0.00011090096813859418){
     s0+=4.0;
     s1+=9182.0;
    } else {
     s0+=151.0;
     s1+=2338.0;
    }
   } else {
    if(i8<1.077976107597351){
     s0+=42.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=121.0;
    }
   }
  }
 }
}
if(i24<1.0437428951263428){
 if(i2<0.07829615473747253){
  if(i3<4.190206527709961e-05){
   if(i64<-0.0012745261192321777){
    if(i62<-0.009408945217728615){
     s0+=2559.0;
     s1+=46.0;
    } else {
     s0+=3103.0;
     s1+=827.0;
    }
   } else {
    if(i10<1.0406912565231323){
     s0+=58071.0;
     s1+=385.0;
    } else {
     s0+=3167.0;
     s1+=384.0;
    }
   }
  } else {
   if(i32<0.00046841526636853814){
    s0+=196.0;
   } else {
    if(i38<1.1353518962860107){
     s1+=429.0;
    } else {
     s0+=121.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i76<5.796585810458055e-06){
   if(i7<-6.571117410203442e-06){
    if(i42<0.0002667153312359005){
     s0+=30.0;
     s1+=4.0;
    } else {
     s0+=75.0;
     s1+=2642.0;
    }
   } else {
    if(i1<0.0907583236694336){
     s0+=103.0;
     s1+=37.0;
    } else {
     s0+=3.0;
     s1+=75.0;
    }
   }
  } else {
   if(i7<-3.903012111550197e-05){
    if(i19<-0.0032871663570404053){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   } else {
    if(i11<1.0119757652282715){
     s0+=222.0;
     s1+=9.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<-3.31639930664096e-05){
  if(i72<-0.00018831911438610405){
   if(i19<0.001430511474609375){
    if(i17<0.004812711849808693){
     s0+=197.0;
     s1+=407.0;
    } else {
     s0+=78.0;
     s1+=3041.0;
    }
   } else {
    s1+=6816.0;
   }
  } else {
   if(i12<1.0012333393096924){
    if(i1<0.1316981017589569){
     s0+=399.0;
     s1+=33.0;
    } else {
     s0+=24.0;
     s1+=114.0;
    }
   } else {
    if(i3<5.733966827392578e-05){
     s0+=51.0;
     s1+=82.0;
    } else {
     s0+=20.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i15<0.998810350894928){
   if(i53<0.003901704214513302){
    s0+=831.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i29<0.01389810349792242){
    if(i2<0.2156013548374176){
     s0+=1064.0;
     s1+=120.0;
    } else {
     s0+=49.0;
     s1+=67.0;
    }
   } else {
    if(i43<0.012860149145126343){
     s0+=163.0;
     s1+=375.0;
    } else {
     s0+=694.0;
     s1+=241.0;
    }
   }
  }
 }
}
if(i2<0.08061712980270386){
 if(i19<0.0011496543884277344){
  if(i23<1.0485899448394775){
   if(i64<-0.0012906789779663086){
    if(i23<1.0406032800674438){
     s0+=1553.0;
     s1+=66.0;
    } else {
     s0+=343.0;
     s1+=170.0;
    }
   } else {
    if(i22<1.0098820924758911){
     s0+=53847.0;
     s1+=126.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i18<1.000558614730835){
    if(i2<0.06632298231124878){
     s0+=10067.0;
     s1+=767.0;
    } else {
     s0+=751.0;
     s1+=325.0;
    }
   } else {
    if(i34<0.0011277454905211926){
     s0+=316.0;
     s1+=565.0;
    } else {
     s0+=2282.0;
     s1+=477.0;
    }
   }
  }
 } else {
  if(i44<-1.4819078387517948e-05){
   s1+=413.0;
  } else {
   if(i20<6.4373016357421875e-06){
    s1+=29.0;
   } else {
    s0+=117.0;
   }
  }
 }
} else {
 if(i33<0.006322205066680908){
  if(i63<0.03614109754562378){
   if(i17<0.0016412362456321716){
    if(i55<0.9998992681503296){
     s0+=60.0;
     s1+=159.0;
    } else {
     s0+=197.0;
     s1+=61.0;
    }
   } else {
    if(i7<3.2230450415227097e-06){
     s0+=228.0;
     s1+=3721.0;
    } else {
     s0+=127.0;
     s1+=38.0;
    }
   }
  } else {
   if(i19<0.00018644332885742188){
    if(i69<0.9995787143707275){
     s0+=263.0;
     s1+=4.0;
    } else {
     s0+=653.0;
     s1+=351.0;
    }
   } else {
    if(i6<1.0010616779327393){
     s0+=72.0;
     s1+=78.0;
    } else {
     s0+=36.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i12<0.9725198745727539){
   if(i56<0.006355207413434982){
    s0+=15.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i55<1.0023701190948486){
    if(i12<0.9983103275299072){
     s0+=41.0;
     s1+=1049.0;
    } else {
     s0+=16.0;
     s1+=8037.0;
    }
   } else {
    if(i23<1.126305341720581){
     s0+=80.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=395.0;
    }
   }
  }
 }
}
if(i7<-7.518445636378601e-05){
 if(i1<0.06513118743896484){
  if(i56<0.011676657944917679){
   if(i16<1.0051932334899902){
    if(i49<-1.5466321201529354e-05){
     s1+=8.0;
    } else {
     s0+=715.0;
     s1+=29.0;
    }
   } else {
    if(i81<0.0006853707600384951){
     s1+=35.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<1.800060272216797e-05){
    if(i0<0.021813690662384033){
     s0+=52.0;
     s1+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i1<0.009039878845214844){
     s0+=37.0;
     s1+=32.0;
    } else {
     s0+=10.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i15<0.9974549412727356){
   s0+=24.0;
  } else {
   if(i14<-0.0005777478218078613){
    if(i17<0.012456711381673813){
     s0+=48.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   } else {
    if(i12<1.0004782676696777){
     s0+=87.0;
     s1+=1321.0;
    } else {
     s0+=18.0;
     s1+=9468.0;
    }
   }
  }
 }
} else {
 if(i10<1.0436272621154785){
  if(i3<4.106760025024414e-05){
   if(i39<0.0003612223081290722){
    if(i15<1.0004663467407227){
     s0+=37061.0;
    } else {
     s0+=2298.0;
     s1+=32.0;
    }
   } else {
    if(i5<0.07077249884605408){
     s0+=24289.0;
     s1+=1384.0;
    } else {
     s0+=255.0;
     s1+=361.0;
    }
   }
  } else {
   if(i49<3.6004394132760353e-08){
    if(i47<0.0002994515816681087){
     s0+=137.0;
     s1+=19.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i19<-0.0015195012092590332){
     s0+=2.0;
     s1+=41.0;
    } else {
     s1+=170.0;
    }
   }
  }
 } else {
  if(i74<0.00031698765815235674){
   if(i2<0.08194559812545776){
    if(i38<1.1036889553070068){
     s0+=1466.0;
     s1+=796.0;
    } else {
     s0+=2994.0;
     s1+=195.0;
    }
   } else {
    if(i60<0.004184722900390625){
     s0+=386.0;
     s1+=2047.0;
    } else {
     s0+=953.0;
     s1+=722.0;
    }
   }
  } else {
   s0+=441.0;
  }
 }
}
if(i5<0.07194709777832031){
 if(i14<0.00014734268188476562){
  if(i27<0.016764089465141296){
   if(i15<1.0018317699432373){
    if(i7<-3.9870294131105766e-05){
     s0+=741.0;
     s1+=189.0;
    } else {
     s0+=57903.0;
     s1+=668.0;
    }
   } else {
    if(i69<1.0003751516342163){
     s0+=83.0;
     s1+=175.0;
    } else {
     s0+=206.0;
     s1+=9.0;
    }
   }
  } else {
   if(i6<0.9979216456413269){
    if(i19<-0.0013885200023651123){
     s0+=6679.0;
     s1+=86.0;
    } else {
     s0+=1037.0;
     s1+=174.0;
    }
   } else {
    if(i0<0.062080442905426025){
     s0+=1886.0;
     s1+=865.0;
    } else {
     s0+=177.0;
     s1+=906.0;
    }
   }
  }
 } else {
  if(i23<1.0540467500686646){
   if(i21<1.0088605880737305){
    if(i25<1.005624771118164){
     s0+=219.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i44<-1.4093089703237638e-05){
    if(i44<-1.469455673941411e-05){
     s1+=1297.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   } else {
    if(i37<1.1944798231124878){
     s0+=1.0;
     s1+=224.0;
    } else {
     s0+=177.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i53<0.0014456211356446147){
  if(i49<-1.577656075824052e-05){
   if(i44<-1.2925676855957136e-05){
    s1+=953.0;
   } else {
    if(i58<-0.007534097880125046){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=121.0;
    }
   }
  } else {
   if(i34<0.005324722267687321){
    if(i7<-2.276023951708339e-05){
     s0+=155.0;
     s1+=510.0;
    } else {
     s0+=1130.0;
     s1+=201.0;
    }
   } else {
    if(i58<-0.011063408106565475){
     s0+=106.0;
     s1+=130.0;
    } else {
     s0+=44.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i72<-0.0001984088885365054){
   if(i15<0.9985778331756592){
    if(i67<0.10227715969085693){
     s0+=29.0;
     s1+=8.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i72<-0.0006254107574932277){
     s0+=4.0;
     s1+=6854.0;
    } else {
     s0+=107.0;
     s1+=1991.0;
    }
   }
  } else {
   if(i63<0.02961254119873047){
    if(i12<0.9946266412734985){
     s0+=75.0;
     s1+=53.0;
    } else {
     s0+=20.0;
     s1+=598.0;
    }
   } else {
    if(i2<0.12464573979377747){
     s0+=333.0;
     s1+=117.0;
    } else {
     s0+=32.0;
     s1+=201.0;
    }
   }
  }
 }
}
if(i13<1.0054547786712646){
 if(i6<1.0024685859680176){
  if(i27<0.022017061710357666){
   if(i42<0.00031239743111655116){
    if(i25<1.009287714958191){
     s0+=47192.0;
     s1+=70.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i5<0.06290653347969055){
     s0+=14347.0;
     s1+=903.0;
    } else {
     s0+=1611.0;
     s1+=588.0;
    }
   }
  } else {
   if(i4<-0.00054970383644104){
    if(i25<1.0087130069732666){
     s0+=5058.0;
     s1+=260.0;
    } else {
     s0+=70.0;
     s1+=114.0;
    }
   } else {
    if(i49<2.808970384649001e-05){
     s0+=616.0;
     s1+=296.0;
    } else {
     s0+=947.0;
     s1+=2700.0;
    }
   }
  }
 } else {
  if(i29<0.009689167141914368){
   if(i62<-0.006218210328370333){
    if(i57<-0.014238029718399048){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=69.0;
     s1+=3.0;
    }
   } else {
    if(i13<1.0031416416168213){
     s0+=4.0;
     s1+=28.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i55<0.9975295066833496){
    if(i32<0.011208868585526943){
     s0+=19.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i53<0.0018786402652040124){
     s0+=46.0;
     s1+=325.0;
    } else {
     s0+=10.0;
     s1+=1400.0;
    }
   }
  }
 }
} else {
 if(i5<0.048532068729400635){
  if(i9<0.0005838274955749512){
   if(i69<0.9998912215232849){
    if(i1<0.05981755256652832){
     s0+=36.0;
     s1+=21.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i68<-5.5792661441955715e-06){
     s0+=9.0;
     s1+=33.0;
    } else {
     s0+=530.0;
     s1+=32.0;
    }
   }
  } else {
   if(i6<1.0035326480865479){
    if(i38<1.1590092182159424){
     s1+=9.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=524.0;
   }
  }
 } else {
  if(i17<0.002249313984066248){
   if(i28<1.1386182308197021){
    if(i10<1.0741145610809326){
     s1+=180.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   } else {
    if(i11<1.023181438446045){
     s0+=293.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=74.0;
    }
   }
  } else {
   if(i49<-7.360035851888824e-06){
    if(i44<-1.008622712106444e-05){
     s1+=5420.0;
    } else {
     s0+=2.0;
     s1+=133.0;
    }
   } else {
    if(i68<7.959675372148922e-07){
     s0+=74.0;
     s1+=3951.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
}
if(i3<3.68952751159668e-05){
 if(i26<0.00031648227013647556){
  if(i16<1.0108764171600342){
   if(i25<1.0076134204864502){
    if(i43<-0.01081201434135437){
     s0+=4.0;
     s1+=7.0;
    } else {
     s0+=53439.0;
     s1+=235.0;
    }
   } else {
    if(i34<0.00117505993694067){
     s0+=53.0;
     s1+=83.0;
    } else {
     s0+=172.0;
     s1+=17.0;
    }
   }
  } else {
   if(i37<1.2388319969177246){
    if(i74<0.0001568399165989831){
     s0+=3.0;
     s1+=141.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i0<0.07766824960708618){
   if(i36<1.103413462638855){
    if(i28<1.0840110778808594){
     s0+=2431.0;
    } else {
     s0+=1098.0;
     s1+=1334.0;
    }
   } else {
    if(i4<0.00021076202392578125){
     s0+=10899.0;
     s1+=372.0;
    } else {
     s0+=409.0;
     s1+=120.0;
    }
   }
  } else {
   if(i30<0.9990028142929077){
    if(i68<-2.265873945361818e-06){
     s0+=8.0;
     s1+=13.0;
    } else {
     s0+=384.0;
    }
   } else {
    if(i72<-7.210444164229557e-05){
     s0+=723.0;
     s1+=2967.0;
    } else {
     s0+=448.0;
     s1+=354.0;
    }
   }
  }
 }
} else {
 if(i15<0.9990412592887878){
  s0+=319.0;
 } else {
  if(i7<-4.330423689680174e-05){
   if(i55<1.0019947290420532){
    if(i13<1.0009498596191406){
     s0+=145.0;
     s1+=1380.0;
    } else {
     s0+=14.0;
     s1+=9697.0;
    }
   } else {
    if(i5<0.042793333530426025){
     s0+=63.0;
     s1+=24.0;
    } else {
     s0+=59.0;
     s1+=387.0;
    }
   }
  } else {
   if(i36<1.2296775579452515){
    if(i29<0.007553718984127045){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=228.0;
    }
   } else {
    if(i33<0.004484524019062519){
     s0+=138.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
}
if(i4<0.0005469322204589844){
 if(i10<1.0452215671539307){
  if(i47<0.0002956325188279152){
   if(i1<0.08788210153579712){
    if(i64<-0.0023628175258636475){
     s0+=85.0;
     s1+=92.0;
    } else {
     s0+=55542.0;
     s1+=369.0;
    }
   } else {
    if(i4<-0.0005924105644226074){
     s0+=157.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=139.0;
    }
   }
  } else {
   if(i33<0.002685480285435915){
    if(i27<0.030159499496221542){
     s0+=3696.0;
     s1+=764.0;
    } else {
     s0+=81.0;
     s1+=332.0;
    }
   } else {
    if(i53<0.006485591176897287){
     s0+=5644.0;
     s1+=129.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i5<0.09881135821342468){
   if(i0<0.1012292206287384){
    if(i57<0.0046755969524383545){
     s0+=2938.0;
     s1+=1104.0;
    } else {
     s0+=1708.0;
     s1+=105.0;
    }
   } else {
    if(i32<0.0005458611994981766){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=521.0;
    }
   }
  } else {
   if(i7<-2.152561501134187e-05){
    if(i29<0.023362960666418076){
     s0+=103.0;
     s1+=409.0;
    } else {
     s0+=18.0;
     s1+=1111.0;
    }
   } else {
    if(i31<0.0517255961894989){
     s0+=12.0;
     s1+=138.0;
    } else {
     s0+=603.0;
     s1+=126.0;
    }
   }
  }
 }
} else {
 if(i26<0.0002014274796238169){
  if(i49<6.194194156705635e-06){
   if(i70<0.0008983943262137473){
    s0+=194.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=15.0;
  }
 } else {
  if(i19<0.001430511474609375){
   if(i5<0.12218374013900757){
    if(i61<0.00048039876855909824){
     s0+=247.0;
     s1+=283.0;
    } else {
     s0+=137.0;
     s1+=1132.0;
    }
   } else {
    if(i29<0.008611151948571205){
     s0+=10.0;
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=1889.0;
    }
   }
  } else {
   s1+=8288.0;
  }
 }
}
if(i9<0.0004444718360900879){
 if(i16<1.0107624530792236){
  if(i10<1.0401476621627808){
   if(i59<0.018614929169416428){
    if(i57<-0.004571974277496338){
     s0+=24.0;
     s1+=78.0;
    } else {
     s0+=49049.0;
     s1+=198.0;
    }
   } else {
    if(i28<1.229804515838623){
     s0+=4681.0;
     s1+=1107.0;
    } else {
     s0+=8587.0;
     s1+=56.0;
    }
   }
  } else {
   if(i23<1.0526776313781738){
    if(i10<1.0402171611785889){
     s1+=16.0;
    } else {
     s0+=1887.0;
     s1+=79.0;
    }
   } else {
    if(i2<0.07896268367767334){
     s0+=2832.0;
     s1+=519.0;
    } else {
     s0+=549.0;
     s1+=1282.0;
    }
   }
  }
 } else {
  if(i1<0.0958966314792633){
   if(i28<1.1039612293243408){
    if(i77<-0.0016417992301285267){
     s0+=124.0;
     s1+=3.0;
    } else {
     s0+=83.0;
     s1+=296.0;
    }
   } else {
    if(i49<-3.3337288186885417e-05){
     s1+=21.0;
    } else {
     s0+=1016.0;
     s1+=30.0;
    }
   }
  } else {
   if(i31<0.05082637071609497){
    if(i2<0.09547200798988342){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=20.0;
     s1+=1365.0;
    }
   } else {
    if(i53<0.00135774165391922){
     s0+=436.0;
     s1+=349.0;
    } else {
     s0+=17.0;
     s1+=643.0;
    }
   }
  }
 }
} else {
 if(i2<0.06851419806480408){
  if(i12<1.0040043592453003){
   if(i3<4.747509956359863e-05){
    if(i8<1.1210029125213623){
     s0+=1079.0;
     s1+=113.0;
    } else {
     s0+=10.0;
     s1+=42.0;
    }
   } else {
    if(i71<0.9919021129608154){
     s0+=51.0;
     s1+=129.0;
    } else {
     s0+=97.0;
     s1+=27.0;
    }
   }
  } else {
   if(i53<0.0007348125800490379){
    if(i17<0.001642612274736166){
     s0+=23.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i52<0.010816901922225952){
     s0+=2.0;
     s1+=403.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i11<1.0098967552185059){
   if(i27<0.036119285970926285){
    if(i43<0.013501346111297607){
     s0+=67.0;
     s1+=658.0;
    } else {
     s0+=294.0;
     s1+=89.0;
    }
   } else {
    if(i36<1.2239148616790771){
     s0+=27.0;
     s1+=98.0;
    } else {
     s0+=16.0;
     s1+=1572.0;
    }
   }
  } else {
   if(i19<3.5822391510009766e-05){
    if(i30<1.0012027025222778){
     s0+=44.0;
     s1+=138.0;
    } else {
     s1+=294.0;
    }
   } else {
    if(i0<0.06627118587493896){
     s0+=4.0;
     s1+=160.0;
    } else {
     s0+=1.0;
     s1+=7440.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i8<1.0452215671539307){
  if(i9<0.0006094574928283691){
   if(i2<0.0699167549610138){
    if(i38<1.0557184219360352){
     s0+=41779.0;
     s1+=1.0;
    } else {
     s0+=18938.0;
     s1+=656.0;
    }
   } else {
    if(i31<0.028659164905548096){
     s0+=16.0;
     s1+=107.0;
    } else {
     s0+=974.0;
     s1+=105.0;
    }
   }
  } else {
   if(i74<0.00010951166768791154){
    if(i61<0.0008398283971473575){
     s0+=16.0;
     s1+=118.0;
    } else {
     s0+=61.0;
     s1+=4.0;
    }
   } else {
    if(i61<0.0008258552988991141){
     s1+=8.0;
    } else {
     s0+=170.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i4<0.0005081295967102051){
   if(i37<1.1037919521331787){
    if(i59<0.038859568536281586){
     s0+=1500.0;
     s1+=433.0;
    } else {
     s0+=285.0;
     s1+=476.0;
    }
   } else {
    if(i21<0.97719407081604){
     s0+=874.0;
     s1+=218.0;
    } else {
     s0+=4352.0;
     s1+=193.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=493.0;
   } else {
    if(i51<0.004060322418808937){
     s0+=211.0;
     s1+=51.0;
    } else {
     s0+=25.0;
     s1+=287.0;
    }
   }
  }
 }
} else {
 if(i9<-0.0003857910633087158){
  if(i46<-0.00012871623039245605){
   if(i4<-0.0004875063896179199){
    s0+=620.0;
   } else {
    if(i13<0.998127818107605){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i22<0.9866498708724976){
    if(i79<-0.006723612546920776){
     s0+=6.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i42<0.003843206912279129){
     s0+=27.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i17<0.001723350491374731){
   if(i50<0.0003167351824231446){
    if(i14<0.00022667646408081055){
     s0+=520.0;
     s1+=45.0;
    } else {
     s0+=1.0;
     s1+=119.0;
    }
   } else {
    if(i32<0.0005649707745760679){
     s0+=49.0;
     s1+=2.0;
    } else {
     s0+=21.0;
     s1+=190.0;
    }
   }
  } else {
   if(i1<0.12466564774513245){
    if(i43<0.015277683734893799){
     s0+=140.0;
     s1+=2151.0;
    } else {
     s0+=406.0;
     s1+=65.0;
    }
   } else {
    if(i68<1.1843699212477077e-06){
     s0+=158.0;
     s1+=11328.0;
    } else {
     s0+=18.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i6<1.0024573802947998){
 if(i22<1.0071606636047363){
  if(i0<0.08174291253089905){
   if(i56<0.008005520328879356){
    if(i27<0.01429639384150505){
     s0+=53794.0;
     s1+=404.0;
    } else {
     s0+=10501.0;
     s1+=771.0;
    }
   } else {
    if(i9<0.000301361083984375){
     s0+=2441.0;
     s1+=419.0;
    } else {
     s0+=150.0;
     s1+=204.0;
    }
   }
  } else {
   if(i15<0.9985202550888062){
    if(i65<4.288993659429252e-05){
     s0+=350.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i70<0.0014434882905334234){
     s0+=420.0;
     s1+=737.0;
    } else {
     s0+=79.0;
     s1+=1093.0;
    }
   }
  }
 } else {
  if(i5<0.05959814786911011){
   if(i36<1.1040980815887451){
    if(i44<-3.8676457734254654e-06){
     s0+=51.0;
     s1+=257.0;
    } else {
     s0+=429.0;
     s1+=95.0;
    }
   } else {
    if(i16<1.0160452127456665){
     s0+=1226.0;
     s1+=28.0;
    } else {
     s0+=289.0;
     s1+=84.0;
    }
   }
  } else {
   if(i7<-2.280354965478182e-05){
    if(i5<0.15719589591026306){
     s0+=281.0;
     s1+=916.0;
    } else {
     s0+=13.0;
     s1+=714.0;
    }
   } else {
    if(i23<1.2009022235870361){
     s0+=323.0;
     s1+=110.0;
    } else {
     s0+=350.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i12<1.006432294845581){
  if(i17<0.0023671393282711506){
   if(i37<1.1386182308197021){
    if(i38<1.0503214597702026){
     s0+=8.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i65<1.9481178696878487e-06){
     s0+=131.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i69<1.000760555267334){
    if(i1<0.13692575693130493){
     s0+=159.0;
     s1+=778.0;
    } else {
     s0+=8.0;
     s1+=1917.0;
    }
   } else {
    s0+=19.0;
   }
  }
 } else {
  if(i10<1.028503656387329){
   if(i44<-1.5357194570242427e-05){
    s1+=136.0;
   } else {
    s0+=28.0;
   }
  } else {
   if(i7<-4.329489456722513e-05){
    if(i2<0.0591694712638855){
     s0+=1.0;
     s1+=176.0;
    } else {
     s1+=8201.0;
    }
   } else {
    if(i34<0.0022210765164345503){
     s1+=28.0;
    } else {
     s0+=52.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i8<1.052894115447998){
 if(i10<1.0401114225387573){
  if(i9<0.0006012916564941406){
   if(i57<-0.002003312110900879){
    if(i26<0.002281655091792345){
     s0+=2097.0;
     s1+=601.0;
    } else {
     s0+=2409.0;
     s1+=46.0;
    }
   } else {
    if(i23<1.048384666442871){
     s0+=52296.0;
     s1+=121.0;
    } else {
     s0+=4452.0;
     s1+=434.0;
    }
   }
  } else {
   if(i61<0.0008417193894274533){
    if(i6<0.9998549818992615){
     s0+=29.0;
    } else {
     s0+=1.0;
     s1+=226.0;
    }
   } else {
    if(i0<0.09904778003692627){
     s0+=232.0;
     s1+=5.0;
    } else {
     s1+=24.0;
    }
   }
  }
 } else {
  if(i2<0.06751936674118042){
   if(i44<-7.673495019844268e-06){
    if(i12<0.9940401911735535){
     s0+=330.0;
     s1+=6.0;
    } else {
     s0+=146.0;
     s1+=170.0;
    }
   } else {
    if(i40<0.9876835346221924){
     s0+=78.0;
     s1+=25.0;
    } else {
     s0+=1528.0;
     s1+=45.0;
    }
   }
  } else {
   if(i18<0.9982147812843323){
    if(i12<0.9942300319671631){
     s0+=120.0;
     s1+=13.0;
    } else {
     s0+=50.0;
     s1+=35.0;
    }
   } else {
    if(i14<-0.00022780895233154297){
     s0+=84.0;
     s1+=3.0;
    } else {
     s0+=103.0;
     s1+=451.0;
    }
   }
  }
 }
} else {
 if(i6<1.00153648853302){
  if(i29<0.040238820016384125){
   if(i5<0.059622615575790405){
    if(i7<-1.5874764358159155e-05){
     s0+=1437.0;
     s1+=537.0;
    } else {
     s0+=2958.0;
     s1+=224.0;
    }
   } else {
    if(i31<0.035596638917922974){
     s0+=143.0;
     s1+=808.0;
    } else {
     s0+=1749.0;
     s1+=884.0;
    }
   }
  } else {
   if(i59<0.07424189150333405){
    if(i72<-0.0009387040045112371){
     s1+=16.0;
    } else {
     s0+=57.0;
     s1+=4.0;
    }
   } else {
    if(i6<0.9931371212005615){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=808.0;
    }
   }
  }
 } else {
  if(i17<0.00271934038028121){
   if(i7<-4.661217099055648e-05){
    if(i55<1.0028564929962158){
     s0+=3.0;
     s1+=386.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i34<0.0012142520863562822){
     s1+=20.0;
    } else {
     s0+=340.0;
     s1+=11.0;
    }
   }
  } else {
   if(i2<0.12857261300086975){
    if(i36<1.2454195022583008){
     s0+=42.0;
     s1+=1340.0;
    } else {
     s0+=198.0;
     s1+=566.0;
    }
   } else {
    if(i29<0.017956532537937164){
     s0+=27.0;
     s1+=975.0;
    } else {
     s1+=8499.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i8<1.0452277660369873){
  if(i2<0.08296343684196472){
   if(i9<0.0006161332130432129){
    if(i50<0.0002715818991418928){
     s0+=53298.0;
     s1+=273.0;
    } else {
     s0+=8507.0;
     s1+=599.0;
    }
   } else {
    if(i4<0.000731050968170166){
     s0+=248.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=96.0;
    }
   }
  } else {
   if(i73<0.9979850649833679){
    if(i3<-3.847479820251465e-05){
     s0+=84.0;
    } else {
     s0+=14.0;
     s1+=10.0;
    }
   } else {
    if(i41<0.05893644690513611){
     s0+=18.0;
     s1+=273.0;
    } else {
     s0+=60.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i3<3.063678741455078e-05){
   if(i48<0.035483263432979584){
    if(i36<1.1037919521331787){
     s0+=757.0;
     s1+=296.0;
    } else {
     s0+=1386.0;
     s1+=57.0;
    }
   } else {
    if(i39<0.0023785976227372885){
     s0+=121.0;
     s1+=369.0;
    } else {
     s0+=665.0;
     s1+=128.0;
    }
   }
  } else {
   if(i0<0.0560891330242157){
    if(i21<1.0119619369506836){
     s0+=28.0;
     s1+=168.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   } else {
    if(i52<0.10765770077705383){
     s0+=2.0;
     s1+=442.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i14<9.864568710327148e-05){
  if(i5<0.1257047951221466){
   if(i61<0.0016237436793744564){
    if(i38<1.1040328741073608){
     s0+=1346.0;
     s1+=1002.0;
    } else {
     s0+=3791.0;
     s1+=901.0;
    }
   } else {
    if(i29<0.02204490825533867){
     s0+=10.0;
     s1+=11.0;
    } else {
     s1+=286.0;
    }
   }
  } else {
   if(i7<-1.2701755622401834e-05){
    if(i50<0.00034044290077872574){
     s0+=116.0;
     s1+=550.0;
    } else {
     s0+=18.0;
     s1+=1795.0;
    }
   } else {
    if(i24<1.1183080673217773){
     s0+=28.0;
     s1+=70.0;
    } else {
     s0+=304.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i2<0.06456011533737183){
   if(i9<0.0005144476890563965){
    if(i74<3.092454426223412e-05){
     s1+=17.0;
    } else {
     s0+=173.0;
     s1+=22.0;
    }
   } else {
    s1+=152.0;
   }
  } else {
   if(i4<8.618831634521484e-05){
    if(i34<0.005698045715689659){
     s0+=19.0;
     s1+=8.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i0<0.09130692481994629){
     s0+=54.0;
     s1+=658.0;
    } else {
     s0+=16.0;
     s1+=8846.0;
    }
   }
  }
 }
}
if(i1<0.08555465936660767){
 if(i4<0.0006018579006195068){
  if(i2<0.06768256425857544){
   if(i64<-0.0012906789779663086){
    if(i37<1.100754976272583){
     s0+=1432.0;
     s1+=561.0;
    } else {
     s0+=4377.0;
     s1+=256.0;
    }
   } else {
    if(i56<0.00895691104233265){
     s0+=60205.0;
     s1+=470.0;
    } else {
     s0+=914.0;
     s1+=180.0;
    }
   }
  } else {
   if(i23<1.045206069946289){
    if(i5<0.056217193603515625){
     s0+=82.0;
     s1+=24.0;
    } else {
     s0+=1105.0;
     s1+=22.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=201.0;
     s1+=434.0;
    } else {
     s0+=785.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i64<0.001532435417175293){
   if(i32<0.00038357393350452185){
    s0+=56.0;
   } else {
    if(i43<0.007073134183883667){
     s0+=106.0;
     s1+=962.0;
    } else {
     s0+=20.0;
     s1+=4.0;
    }
   }
  } else {
   if(i69<0.9999006986618042){
    s1+=6.0;
   } else {
    if(i18<1.0063444375991821){
     s0+=106.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i6<0.9955565929412842){
  if(i46<-9.110569953918457e-05){
   if(i36<1.4951298236846924){
    s0+=545.0;
   } else {
    if(i1<0.19268792867660522){
     s0+=48.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i23<1.0729010105133057){
    if(i11<0.9808306694030762){
     s1+=2.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i78<-0.007002711296081543){
     s0+=8.0;
    } else {
     s1+=77.0;
    }
   }
  }
 } else {
  if(i15<1.0016112327575684){
   if(i17<0.001795066986232996){
    if(i41<0.058077067136764526){
     s0+=40.0;
     s1+=169.0;
    } else {
     s0+=539.0;
     s1+=112.0;
    }
   } else {
    if(i60<0.003572702407836914){
     s0+=63.0;
     s1+=2817.0;
    } else {
     s0+=388.0;
     s1+=1410.0;
    }
   }
  } else {
   if(i27<0.026094496250152588){
    if(i19<-5.2034854888916016e-05){
     s0+=183.0;
     s1+=182.0;
    } else {
     s1+=1783.0;
    }
   } else {
    if(i0<0.11510351300239563){
     s0+=54.0;
     s1+=376.0;
    } else {
     s0+=12.0;
     s1+=6936.0;
    }
   }
  }
 }
}
if(i5<0.07131022214889526){
 if(i2<0.0789894163608551){
  if(i3<4.166364669799805e-05){
   if(i8<1.040665864944458){
    if(i36<1.067622423171997){
     s0+=37168.0;
     s1+=21.0;
    } else {
     s0+=21848.0;
     s1+=534.0;
    }
   } else {
    if(i7<-3.2816627935972065e-05){
     s0+=1301.0;
     s1+=532.0;
    } else {
     s0+=8196.0;
     s1+=828.0;
    }
   }
  } else {
   if(i46<0.00013807415962219238){
    if(i17<0.0036920150741934776){
     s0+=239.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=25.0;
    }
   } else {
    if(i17<0.00176502694375813){
     s0+=78.0;
     s1+=4.0;
    } else {
     s0+=115.0;
     s1+=746.0;
    }
   }
  }
 } else {
  if(i55<0.996565580368042){
   s0+=67.0;
  } else {
   if(i3<-4.8279762268066406e-05){
    if(i16<0.9882166385650635){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.00043506763176992536){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=39.0;
     s1+=1835.0;
    }
   }
  }
 }
} else {
 if(i0<0.11746582388877869){
  if(i35<0.06283926963806152){
   if(i23<1.0459762811660767){
    if(i41<0.041555583477020264){
     s1+=5.0;
    } else {
     s0+=56.0;
     s1+=3.0;
    }
   } else {
    if(i14<-0.0003527402877807617){
     s0+=23.0;
     s1+=28.0;
    } else {
     s0+=46.0;
     s1+=834.0;
    }
   }
  } else {
   if(i3<5.710124969482422e-05){
    if(i62<-0.01892436295747757){
     s0+=646.0;
     s1+=36.0;
    } else {
     s0+=659.0;
     s1+=405.0;
    }
   } else {
    if(i41<0.07679450511932373){
     s0+=16.0;
     s1+=233.0;
    } else {
     s0+=25.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i34<0.006101734936237335){
   if(i62<-0.03414347022771835){
    if(i6<1.0015928745269775){
     s0+=459.0;
     s1+=100.0;
    } else {
     s0+=25.0;
     s1+=79.0;
    }
   } else {
    if(i46<-0.00021335482597351074){
     s0+=43.0;
    } else {
     s0+=69.0;
     s1+=1856.0;
    }
   }
  } else {
   if(i17<0.002294195583090186){
    if(i52<0.10364806652069092){
     s1+=85.0;
    } else {
     s0+=16.0;
     s1+=7.0;
    }
   } else {
    if(i17<0.007013355381786823){
     s0+=25.0;
     s1+=948.0;
    } else {
     s0+=4.0;
     s1+=7847.0;
    }
   }
  }
 }
}
if(i19<0.0007560849189758301){
 if(i7<-6.368544563883916e-05){
  if(i5<0.07717043161392212){
   if(i14<-0.0003337860107421875){
    if(i51<0.008265039883553982){
     s0+=792.0;
     s1+=8.0;
    } else {
     s0+=186.0;
     s1+=62.0;
    }
   } else {
    if(i73<0.9969432353973389){
     s0+=170.0;
     s1+=3.0;
    } else {
     s0+=216.0;
     s1+=472.0;
    }
   }
  } else {
   if(i23<1.1255662441253662){
    if(i31<0.05393117666244507){
     s0+=2.0;
     s1+=253.0;
    } else {
     s0+=107.0;
     s1+=48.0;
    }
   } else {
    if(i19<-0.00449901819229126){
     s0+=4.0;
     s1+=14.0;
    } else {
     s0+=11.0;
     s1+=1976.0;
    }
   }
  }
 } else {
  if(i26<0.00030617963057011366){
   if(i2<0.08415213227272034){
    if(i6<1.0024919509887695){
     s0+=52848.0;
     s1+=299.0;
    } else {
     s0+=10.0;
     s1+=27.0;
    }
   } else {
    if(i11<1.0023527145385742){
     s0+=56.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=101.0;
    }
   }
  } else {
   if(i0<0.07869014143943787){
    if(i38<1.1036889553070068){
     s0+=4443.0;
     s1+=1436.0;
    } else {
     s0+=9819.0;
     s1+=310.0;
    }
   } else {
    if(i15<0.9985270500183105){
     s0+=419.0;
     s1+=7.0;
    } else {
     s0+=1084.0;
     s1+=2158.0;
    }
   }
  }
 }
} else {
 if(i2<0.06429028511047363){
  if(i44<-1.4807534171268344e-05){
   s1+=245.0;
  } else {
   if(i50<-0.00015269388677552342){
    if(i60<-0.004537671804428101){
     s1+=8.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i61<0.0006332412594929338){
     s0+=623.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i7<-4.297731356928125e-05){
   if(i3<-1.519918441772461e-05){
    s0+=7.0;
   } else {
    if(i8<1.0326894521713257){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=9784.0;
    }
   }
  } else {
   if(i18<1.0021758079528809){
    if(i66<1.0175645351409912){
     s0+=6.0;
     s1+=112.0;
    } else {
     s0+=18.0;
     s1+=3.0;
    }
   } else {
    if(i68<-4.758563591167331e-06){
     s1+=16.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i2<0.08186683058738708){
 if(i26<0.0002916549565270543){
  if(i11<1.0081498622894287){
   if(i70<0.0008513686480000615){
    if(i42<0.000277854735031724){
     s0+=45035.0;
     s1+=25.0;
    } else {
     s0+=7379.0;
     s1+=160.0;
    }
   } else {
    if(i33<0.0008280517067760229){
     s0+=61.0;
     s1+=75.0;
    } else {
     s0+=267.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.021429892629384995){
    if(i34<0.001440483029000461){
     s1+=158.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i20<2.4974346160888672e-05){
     s0+=115.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i43<0.003824084997177124){
   if(i9<0.0006068944931030273){
    if(i23<1.1395494937896729){
     s0+=4733.0;
     s1+=1400.0;
    } else {
     s0+=2635.0;
     s1+=112.0;
    }
   } else {
    if(i4<0.00021892786026000977){
     s0+=139.0;
     s1+=25.0;
    } else {
     s0+=111.0;
     s1+=800.0;
    }
   }
  } else {
   if(i14<-0.00016164779663085938){
    if(i33<0.0007499887724407017){
     s0+=299.0;
     s1+=21.0;
    } else {
     s0+=6271.0;
     s1+=16.0;
    }
   } else {
    if(i27<0.03255993500351906){
     s0+=2150.0;
     s1+=197.0;
    } else {
     s0+=18.0;
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i19<0.0003954172134399414){
  if(i15<0.9982243776321411){
   if(i49<0.00017937980010174215){
    s0+=420.0;
   } else {
    if(i7<-2.6176523533649743e-05){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i7<-1.2694299584836699e-05){
    if(i2<0.11706680059432983){
     s0+=403.0;
     s1+=850.0;
    } else {
     s0+=171.0;
     s1+=2829.0;
    }
   } else {
    if(i43<0.01263013482093811){
     s0+=153.0;
     s1+=281.0;
    } else {
     s0+=438.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i44<-1.5407835007863468e-06){
   if(i33<0.0002729695988819003){
    s0+=2.0;
   } else {
    if(i7<-1.969320328498725e-05){
     s0+=49.0;
     s1+=10101.0;
    } else {
     s0+=21.0;
     s1+=4.0;
    }
   }
  } else {
   if(i23<1.117547631263733){
    s1+=10.0;
   } else {
    s0+=62.0;
   }
  }
 }
}
if(i3<3.641843795776367e-05){
 if(i24<1.0406770706176758){
  if(i64<-0.0014188587665557861){
   if(i6<0.9965494871139526){
    if(i47<0.0029686824418604374){
     s0+=1048.0;
     s1+=79.0;
    } else {
     s0+=1881.0;
     s1+=17.0;
    }
   } else {
    if(i49<3.0456312742899172e-05){
     s0+=1214.0;
     s1+=120.0;
    } else {
     s0+=1032.0;
     s1+=976.0;
    }
   }
  } else {
   if(i11<1.0080897808074951){
    if(i23<1.048384666442871){
     s0+=53825.0;
     s1+=149.0;
    } else {
     s0+=7207.0;
     s1+=986.0;
    }
   } else {
    if(i23<1.0851125717163086){
     s0+=20.0;
     s1+=318.0;
    } else {
     s0+=321.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i2<0.11000120639801025){
   if(i26<0.00095487100770697){
    if(i12<1.001107931137085){
     s0+=1014.0;
     s1+=313.0;
    } else {
     s0+=125.0;
     s1+=250.0;
    }
   } else {
    if(i43<-0.03598201274871826){
     s0+=58.0;
     s1+=48.0;
    } else {
     s0+=2056.0;
     s1+=139.0;
    }
   }
  } else {
   if(i31<0.07373058795928955){
    if(i80<-9.387731552124023e-06){
     s0+=13.0;
    } else {
     s0+=48.0;
     s1+=1311.0;
    }
   } else {
    if(i0<0.2870594561100006){
     s0+=519.0;
     s1+=181.0;
    } else {
     s0+=77.0;
     s1+=420.0;
    }
   }
  }
 }
} else {
 if(i32<0.0005227160290814936){
  if(i12<1.0040020942687988){
   s0+=324.0;
  } else {
   s1+=17.0;
  }
 } else {
  if(i39<0.00892925076186657){
   if(i7<-4.289429489290342e-05){
    if(i65<4.899800842395052e-06){
     s0+=100.0;
     s1+=3964.0;
    } else {
     s0+=157.0;
     s1+=581.0;
    }
   } else {
    if(i49<-1.1282108971499838e-06){
     s0+=171.0;
     s1+=49.0;
    } else {
     s0+=12.0;
     s1+=184.0;
    }
   }
  } else {
   if(i1<0.01323622465133667){
    if(i52<-0.12817886471748352){
     s1+=19.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i29<0.0016758523415774107){
     s0+=1.0;
    } else {
     s0+=19.0;
     s1+=6806.0;
    }
   }
  }
 }
}
if(i22<1.0083222389221191){
 if(i0<0.07977986335754395){
  if(i15<1.001955509185791){
   if(i26<0.0003013138775713742){
    if(i70<0.0008577682310715318){
     s0+=53365.0;
     s1+=143.0;
    } else {
     s0+=363.0;
     s1+=72.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=3163.0;
     s1+=1113.0;
    } else {
     s0+=10061.0;
     s1+=437.0;
    }
   }
  } else {
   if(i6<1.0014898777008057){
    if(i56<0.017867058515548706){
     s0+=344.0;
     s1+=20.0;
    } else {
     s0+=11.0;
     s1+=29.0;
    }
   } else {
    if(i60<0.002532660961151123){
     s0+=70.0;
     s1+=588.0;
    } else {
     s0+=65.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i31<0.04791057109832764){
   if(i6<0.9911750555038452){
    s0+=78.0;
   } else {
    if(i9<-0.0004781186580657959){
     s0+=15.0;
    } else {
     s0+=41.0;
     s1+=2597.0;
    }
   }
  } else {
   if(i17<0.006786734331399202){
    if(i19<-0.0007939934730529785){
     s0+=552.0;
     s1+=92.0;
    } else {
     s0+=352.0;
     s1+=269.0;
    }
   } else {
    if(i35<0.1077183187007904){
     s0+=71.0;
     s1+=229.0;
    } else {
     s0+=4.0;
     s1+=483.0;
    }
   }
  }
 }
} else {
 if(i11<1.0146911144256592){
  if(i7<-3.730485695996322e-05){
   if(i17<0.0055181533098220825){
    if(i23<1.0871238708496094){
     s0+=104.0;
     s1+=797.0;
    } else {
     s0+=256.0;
     s1+=114.0;
    }
   } else {
    if(i23<1.122573733329773){
     s0+=22.0;
     s1+=396.0;
    } else {
     s1+=806.0;
    }
   }
  } else {
   if(i53<0.001826841151341796){
    if(i37<1.1040980815887451){
     s0+=343.0;
     s1+=195.0;
    } else {
     s0+=1452.0;
     s1+=96.0;
    }
   } else {
    if(i14<-0.00014716386795043945){
     s0+=77.0;
     s1+=15.0;
    } else {
     s0+=14.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i1<0.08554920554161072){
   if(i77<-0.001156628131866455){
    if(i7<-6.778449460398406e-05){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=144.0;
    }
   } else {
    if(i12<1.0063539743423462){
     s0+=10.0;
     s1+=7.0;
    } else {
     s1+=98.0;
    }
   }
  } else {
   if(i7<-4.316124250181019e-05){
    if(i29<0.007582997437566519){
     s0+=1.0;
     s1+=309.0;
    } else {
     s1+=7824.0;
    }
   } else {
    if(i58<-0.009037509560585022){
     s0+=114.0;
     s1+=65.0;
    } else {
     s0+=8.0;
     s1+=136.0;
    }
   }
  }
 }
}
if(i5<0.07132148742675781){
 if(i11<1.0081498622894287){
  if(i8<1.0450963973999023){
   if(i4<0.0006532371044158936){
    if(i59<0.021128494292497635){
     s0+=50456.0;
     s1+=247.0;
    } else {
     s0+=11461.0;
     s1+=613.0;
    }
   } else {
    if(i42<0.00024100778682623059){
     s0+=51.0;
    } else {
     s0+=4.0;
     s1+=104.0;
    }
   }
  } else {
   if(i16<0.9906809329986572){
    if(i3<-4.887580871582031e-06){
     s0+=954.0;
     s1+=299.0;
    } else {
     s0+=237.0;
     s1+=579.0;
    }
   } else {
    if(i4<0.0004819631576538086){
     s0+=4952.0;
     s1+=689.0;
    } else {
     s0+=80.0;
     s1+=267.0;
    }
   }
  }
 } else {
  if(i17<0.003192815463989973){
   if(i23<1.0862454175949097){
    if(i28<1.1039612293243408){
     s0+=29.0;
     s1+=410.0;
    } else {
     s0+=59.0;
     s1+=6.0;
    }
   } else {
    if(i4<0.0009451508522033691){
     s0+=738.0;
     s1+=20.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i68<7.830131494301895e-07){
    if(i62<-0.015734869986772537){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=1338.0;
    }
   } else {
    s0+=46.0;
   }
  }
 }
} else {
 if(i33<0.005401111673563719){
  if(i6<1.0020160675048828){
   if(i6<0.9962934255599976){
    if(i64<-0.002757161855697632){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=414.0;
     s1+=2.0;
    }
   } else {
    if(i45<0.004445075988769531){
     s0+=410.0;
     s1+=1161.0;
    } else {
     s0+=765.0;
     s1+=348.0;
    }
   }
  } else {
   if(i60<0.0072209835052490234){
    if(i2<0.09294116497039795){
     s0+=30.0;
     s1+=59.0;
    } else {
     s0+=15.0;
     s1+=1205.0;
    }
   } else {
    if(i74<0.00016869226237758994){
     s0+=45.0;
     s1+=14.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i23<1.0765022039413452){
   if(i5<0.1001562774181366){
    if(i4<0.0005651116371154785){
     s0+=123.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i43<0.024856269359588623){
     s1+=30.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i27<0.021891973912715912){
    if(i4<0.000855565071105957){
     s0+=90.0;
     s1+=95.0;
    } else {
     s0+=32.0;
     s1+=780.0;
    }
   } else {
    if(i53<0.0001422118511982262){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=61.0;
     s1+=8772.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i3<4.106760025024414e-05){
  if(i39<0.000381662102881819){
   if(i21<1.0075665712356567){
    if(i39<0.00028504279907792807){
     s0+=36164.0;
    } else {
     s0+=4096.0;
     s1+=78.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i36<1.103413462638855){
    if(i23<1.0470306873321533){
     s0+=3693.0;
     s1+=271.0;
    } else {
     s0+=909.0;
     s1+=1072.0;
    }
   } else {
    if(i8<1.0556533336639404){
     s0+=18629.0;
     s1+=318.0;
    } else {
     s0+=1401.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i15<1.0003122091293335){
   s0+=242.0;
  } else {
   if(i9<0.0005848407745361328){
    if(i17<0.002069211332127452){
     s0+=71.0;
     s1+=4.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i2<0.01318100094795227){
     s0+=14.0;
     s1+=31.0;
    } else {
     s0+=7.0;
     s1+=620.0;
    }
   }
  }
 }
} else {
 if(i9<0.00043570995330810547){
  if(i2<0.09151780605316162){
   if(i2<0.06577956676483154){
    if(i34<0.0011409925064072013){
     s0+=1040.0;
     s1+=249.0;
    } else {
     s0+=2189.0;
     s1+=107.0;
    }
   } else {
    if(i24<1.0490155220031738){
     s0+=235.0;
     s1+=381.0;
    } else {
     s0+=630.0;
     s1+=97.0;
    }
   }
  } else {
   if(i68<9.773891633813037e-07){
    if(i34<0.0066644493490457535){
     s0+=655.0;
     s1+=1672.0;
    } else {
     s0+=24.0;
     s1+=1544.0;
    }
   } else {
    if(i31<0.010570377111434937){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=276.0;
    }
   }
  }
 } else {
  if(i4<0.0005539655685424805){
   if(i61<0.0015347134321928024){
    if(i2<0.11917376518249512){
     s0+=544.0;
     s1+=94.0;
    } else {
     s0+=26.0;
     s1+=154.0;
    }
   } else {
    if(i32<0.011637691408395767){
     s1+=276.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i29<0.022044626995921135){
    if(i13<0.9993001222610474){
     s0+=157.0;
     s1+=73.0;
    } else {
     s0+=82.0;
     s1+=2004.0;
    }
   } else {
    if(i6<1.0005271434783936){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=7721.0;
    }
   }
  }
 }
}
if(i1<0.0851379930973053){
 if(i15<1.0018290281295776){
  if(i2<0.0692184567451477){
   if(i8<1.0451608896255493){
    if(i26<0.00029186002211645246){
     s0+=50793.0;
     s1+=170.0;
    } else {
     s0+=9562.0;
     s1+=517.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=1709.0;
     s1+=729.0;
    } else {
     s0+=4436.0;
     s1+=246.0;
    }
   }
  } else {
   if(i41<0.036063581705093384){
    if(i18<0.9953622817993164){
     s0+=26.0;
    } else {
     s0+=15.0;
     s1+=464.0;
    }
   } else {
    if(i4<-0.0006685554981231689){
     s0+=677.0;
     s1+=3.0;
    } else {
     s0+=911.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i69<1.0003948211669922){
   if(i64<0.0015569627285003662){
    if(i38<1.1353518962860107){
     s0+=3.0;
     s1+=549.0;
    } else {
     s0+=105.0;
     s1+=247.0;
    }
   } else {
    if(i34<0.002525485120713711){
     s0+=6.0;
     s1+=32.0;
    } else {
     s0+=85.0;
     s1+=5.0;
    }
   }
  } else {
   if(i45<-0.004954010248184204){
    if(i19<-0.0031975507736206055){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=106.0;
    }
   } else {
    if(i56<0.01873297244310379){
     s0+=500.0;
     s1+=11.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i20<-1.4841556549072266e-05){
  if(i32<0.001722568180412054){
   s0+=566.0;
  } else {
   if(i0<0.09698978066444397){
    if(i47<0.0010348781943321228){
     s0+=61.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i6<1.0019645690917969){
   if(i32<0.0004476824833545834){
    if(i69<1.0001262426376343){
     s0+=160.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=9.0;
    }
   } else {
    if(i58<-0.005222458858042955){
     s0+=856.0;
     s1+=1225.0;
    } else {
     s0+=186.0;
     s1+=2083.0;
    }
   }
  } else {
   if(i36<1.3420226573944092){
    if(i14<-0.00013333559036254883){
     s0+=43.0;
     s1+=87.0;
    } else {
     s0+=73.0;
     s1+=3621.0;
    }
   } else {
    if(i72<-0.00024268374545499682){
     s1+=6478.0;
    } else {
     s0+=4.0;
     s1+=616.0;
    }
   }
  }
 }
}
if(i4<0.0005737543106079102){
 if(i5<0.0707579255104065){
  if(i8<1.0451608896255493){
   if(i51<0.0017124409787356853){
    if(i2<0.08341008424758911){
     s0+=58329.0;
     s1+=391.0;
    } else {
     s0+=30.0;
     s1+=70.0;
    }
   } else {
    if(i33<0.0008648711955174804){
     s0+=987.0;
     s1+=301.0;
    } else {
     s0+=2370.0;
     s1+=65.0;
    }
   }
  } else {
   if(i1<0.0774383544921875){
    if(i37<1.1037919521331787){
     s0+=1708.0;
     s1+=754.0;
    } else {
     s0+=4955.0;
     s1+=316.0;
    }
   } else {
    if(i9<-0.0003948211669921875){
     s0+=86.0;
     s1+=6.0;
    } else {
     s0+=137.0;
     s1+=723.0;
    }
   }
  }
 } else {
  if(i63<0.03301483392715454){
   if(i24<1.0493338108062744){
    if(i3<-5.5283308029174805e-05){
     s0+=48.0;
     s1+=25.0;
    } else {
     s0+=55.0;
     s1+=844.0;
    }
   } else {
    if(i53<0.0011205374030396342){
     s0+=408.0;
     s1+=265.0;
    } else {
     s0+=139.0;
     s1+=942.0;
    }
   }
  } else {
   if(i0<0.21094471216201782){
    if(i17<0.004809064790606499){
     s0+=1075.0;
     s1+=221.0;
    } else {
     s0+=171.0;
     s1+=182.0;
    }
   } else {
    if(i81<0.008157980628311634){
     s0+=51.0;
     s1+=321.0;
    } else {
     s0+=105.0;
     s1+=117.0;
    }
   }
  }
 }
} else {
 if(i2<0.06785699725151062){
  if(i12<1.0045559406280518){
   if(i52<-0.018077492713928223){
    if(i54<0.9968154430389404){
     s0+=29.0;
     s1+=155.0;
    } else {
     s0+=35.0;
     s1+=15.0;
    }
   } else {
    if(i29<0.00920356810092926){
     s0+=181.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=37.0;
    }
   }
  } else {
   if(i68<-4.5565284381154925e-06){
    if(i78<0.00138777494430542){
     s0+=9.0;
     s1+=372.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i28<1.2160128355026245){
     s1+=8.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i12<1.0082716941833496){
   if(i17<0.002195616252720356){
    if(i65<9.339692041976377e-08){
     s0+=42.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i29<0.020760778337717056){
     s0+=130.0;
     s1+=546.0;
    } else {
     s0+=3.0;
     s1+=2676.0;
    }
   }
  } else {
   if(i9<0.00046059489250183105){
    if(i66<1.0042610168457031){
     s0+=10.0;
     s1+=53.0;
    } else {
     s0+=3.0;
     s1+=545.0;
    }
   } else {
    s1+=7116.0;
   }
  }
 }
}
if(i16<1.0099639892578125){
 if(i5<0.07115301489830017){
  if(i3<4.214048385620117e-05){
   if(i0<0.07710269093513489){
    if(i64<-0.0012818872928619385){
     s0+=5754.0;
     s1+=945.0;
    } else {
     s0+=61256.0;
     s1+=825.0;
    }
   } else {
    if(i9<-0.0003497898578643799){
     s0+=89.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=419.0;
    }
   }
  } else {
   if(i6<1.000848650932312){
    if(i13<0.9696774482727051){
     s1+=1.0;
    } else {
     s0+=203.0;
    }
   } else {
    if(i37<1.2510931491851807){
     s0+=4.0;
     s1+=523.0;
    } else {
     s0+=178.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i31<0.04209178686141968){
   if(i38<1.0595405101776123){
    s0+=19.0;
   } else {
    if(i7<-9.444915122003295e-06){
     s0+=14.0;
     s1+=1989.0;
    } else {
     s0+=31.0;
     s1+=68.0;
    }
   }
  } else {
   if(i7<-2.3792361389496364e-05){
    if(i4<0.000453948974609375){
     s0+=223.0;
     s1+=334.0;
    } else {
     s0+=41.0;
     s1+=489.0;
    }
   } else {
    if(i7<-7.835347787477076e-06){
     s0+=188.0;
     s1+=133.0;
    } else {
     s0+=643.0;
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i6<1.0020160675048828){
  if(i7<-2.765953104244545e-05){
   if(i0<0.09373298287391663){
    if(i28<1.2392117977142334){
     s0+=1.0;
     s1+=301.0;
    } else {
     s0+=342.0;
     s1+=22.0;
    }
   } else {
    if(i17<0.001676210667937994){
     s0+=29.0;
     s1+=5.0;
    } else {
     s0+=97.0;
     s1+=1275.0;
    }
   }
  } else {
   if(i5<0.2337125539779663){
    if(i38<1.1005322933197021){
     s0+=284.0;
     s1+=115.0;
    } else {
     s0+=1264.0;
     s1+=74.0;
    }
   } else {
    if(i33<0.003349373582750559){
     s0+=59.0;
    } else {
     s0+=3.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i4<0.000944972038269043){
   if(i69<0.9999075531959534){
    s1+=662.0;
   } else {
    if(i61<0.0005267831147648394){
     s0+=237.0;
     s1+=102.0;
    } else {
     s0+=16.0;
     s1+=340.0;
    }
   }
  } else {
   if(i29<0.01888694055378437){
    if(i13<1.0072004795074463){
     s0+=45.0;
     s1+=17.0;
    } else {
     s1+=1239.0;
    }
   } else {
    if(i14<-9.623169898986816e-05){
     s0+=1.0;
     s1+=104.0;
    } else {
     s1+=6560.0;
    }
   }
  }
 }
}
if(i5<0.07132148742675781){
 if(i47<0.0002936567470896989){
  if(i6<1.0025533437728882){
   if(i15<1.0007426738739014){
    if(i64<-0.0015593171119689941){
     s0+=281.0;
     s1+=134.0;
    } else {
     s0+=53692.0;
     s1+=310.0;
    }
   } else {
    if(i34<0.00028053534333594143){
     s0+=1276.0;
    } else {
     s0+=1041.0;
     s1+=194.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=336.0;
   } else {
    if(i80<8.821487426757812e-06){
     s0+=120.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i19<0.0007564425468444824){
   if(i14<-0.000295102596282959){
    if(i29<0.07258159667253494){
     s0+=5815.0;
     s1+=124.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i1<0.0773676335811615){
     s0+=6602.0;
     s1+=1465.0;
    } else {
     s0+=266.0;
     s1+=638.0;
    }
   }
  } else {
   if(i6<0.9999439716339111){
    s0+=37.0;
   } else {
    if(i57<0.005305647850036621){
     s0+=33.0;
     s1+=1266.0;
    } else {
     s0+=43.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i12<1.0009806156158447){
  if(i7<-1.3590997696155682e-05){
   if(i1<0.11721238493919373){
    if(i43<0.011296331882476807){
     s0+=102.0;
     s1+=417.0;
    } else {
     s0+=414.0;
     s1+=50.0;
    }
   } else {
    if(i27<0.03991217911243439){
     s0+=158.0;
     s1+=639.0;
    } else {
     s0+=15.0;
     s1+=1667.0;
    }
   }
  } else {
   if(i33<0.0038763978518545628){
    if(i49<3.3075313695007935e-05){
     s0+=553.0;
     s1+=14.0;
    } else {
     s0+=500.0;
     s1+=163.0;
    }
   } else {
    if(i55<1.0007624626159668){
     s0+=23.0;
     s1+=118.0;
    } else {
     s0+=104.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i44<-1.2516267815954052e-05){
   if(i1<0.09582394361495972){
    if(i64<0.0037859678268432617){
     s0+=22.0;
     s1+=205.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i61<0.00020681078603956848){
     s0+=28.0;
     s1+=289.0;
    } else {
     s0+=19.0;
     s1+=8407.0;
    }
   }
  } else {
   if(i53<0.0010814692359417677){
    if(i37<1.1820628643035889){
     s0+=24.0;
     s1+=193.0;
    } else {
     s0+=130.0;
     s1+=31.0;
    }
   } else {
    if(i4<-0.00037670135498046875){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=187.0;
    }
   }
  }
 }
}
if(i6<1.0024166107177734){
 if(i1<0.08502998948097229){
  if(i23<1.0451585054397583){
   if(i57<-0.0022437572479248047){
    if(i36<1.061751127243042){
     s0+=964.0;
    } else {
     s0+=640.0;
     s1+=142.0;
    }
   } else {
    if(i18<1.0025666952133179){
     s0+=52291.0;
     s1+=84.0;
    } else {
     s0+=266.0;
     s1+=15.0;
    }
   }
  } else {
   if(i39<0.0017776545137166977){
    if(i16<0.9904108047485352){
     s0+=436.0;
     s1+=639.0;
    } else {
     s0+=5624.0;
     s1+=859.0;
    }
   } else {
    if(i3<4.26173210144043e-05){
     s0+=8674.0;
     s1+=342.0;
    } else {
     s0+=46.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i46<-0.0001359879970550537){
   if(i15<0.9988845586776733){
    if(i17<0.012246448546648026){
     s0+=629.0;
     s1+=7.0;
    } else {
     s1+=10.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i29<0.023620575666427612){
    if(i47<0.000855607446283102){
     s0+=173.0;
     s1+=986.0;
    } else {
     s0+=808.0;
     s1+=713.0;
    }
   } else {
    if(i27<0.027122963219881058){
     s0+=96.0;
     s1+=233.0;
    } else {
     s0+=52.0;
     s1+=1648.0;
    }
   }
  }
 }
} else {
 if(i9<0.0005752444267272949){
  if(i55<0.9994407892227173){
   if(i25<1.0110433101654053){
    if(i26<0.0002220701426267624){
     s0+=10.0;
    } else {
     s1+=135.0;
    }
   } else {
    s1+=1077.0;
   }
  } else {
   if(i36<1.175590991973877){
    if(i29<0.0016618365189060569){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=346.0;
    }
   } else {
    if(i2<0.09195226430892944){
     s0+=209.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=117.0;
    }
   }
  }
 } else {
  if(i66<0.9969228506088257){
   if(i17<0.007316790986806154){
    if(i70<0.0011824277462437749){
     s0+=70.0;
     s1+=38.0;
    } else {
     s0+=6.0;
     s1+=108.0;
    }
   } else {
    if(i6<1.004826545715332){
     s0+=33.0;
     s1+=410.0;
    } else {
     s0+=3.0;
     s1+=693.0;
    }
   }
  } else {
   if(i2<0.046381622552871704){
    if(i17<0.0035094483755528927){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=96.0;
    }
   } else {
    if(i47<9.92100322037004e-05){
     s0+=2.0;
    } else {
     s0+=17.0;
     s1+=8357.0;
    }
   }
  }
 }
}
if(i3<3.7729740142822266e-05){
 if(i2<0.08195626735687256){
  if(i26<0.000306669098790735){
   if(i66<1.008370280265808){
    if(i38<1.0598037242889404){
     s0+=41338.0;
    } else {
     s0+=11574.0;
     s1+=247.0;
    }
   } else {
    if(i34<0.000560656248126179){
     s0+=10.0;
     s1+=60.0;
    } else {
     s0+=365.0;
     s1+=7.0;
    }
   }
  } else {
   if(i62<-0.009500132873654366){
    if(i21<0.9846856594085693){
     s0+=4589.0;
     s1+=28.0;
    } else {
     s0+=1150.0;
     s1+=73.0;
    }
   } else {
    if(i6<0.9967585206031799){
     s0+=4305.0;
     s1+=111.0;
    } else {
     s0+=5222.0;
     s1+=1498.0;
    }
   }
  }
 } else {
  if(i7<-1.269704989681486e-05){
   if(i63<0.028282523155212402){
    if(i41<0.05820918083190918){
     s0+=12.0;
     s1+=1618.0;
    } else {
     s0+=126.0;
     s1+=607.0;
    }
   } else {
    if(i2<0.1195632815361023){
     s0+=297.0;
     s1+=171.0;
    } else {
     s0+=140.0;
     s1+=773.0;
    }
   }
  } else {
   if(i24<1.0421991348266602){
    if(i74<7.850458496250212e-05){
     s0+=19.0;
     s1+=149.0;
    } else {
     s0+=131.0;
     s1+=37.0;
    }
   } else {
    if(i5<0.1954018771648407){
     s0+=665.0;
     s1+=54.0;
    } else {
     s0+=184.0;
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i37<1.0795294046401978){
  s0+=334.0;
 } else {
  if(i0<0.06640732288360596){
   if(i38<1.1353518962860107){
    if(i46<7.924437522888184e-05){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=525.0;
    }
   } else {
    if(i6<1.0042208433151245){
     s0+=226.0;
     s1+=88.0;
    } else {
     s0+=15.0;
     s1+=176.0;
    }
   }
  } else {
   if(i7<-6.996859156060964e-05){
    if(i13<1.0073617696762085){
     s0+=76.0;
     s1+=1796.0;
    } else {
     s1+=8626.0;
    }
   } else {
    if(i60<0.0073850154876708984){
     s0+=48.0;
     s1+=556.0;
    } else {
     s0+=57.0;
     s1+=85.0;
    }
   }
  }
 }
}
if(i17<0.0050735147669911385){
 if(i19<0.0011317133903503418){
  if(i67<0.014006905257701874){
   if(i43<-0.011965155601501465){
    if(i2<0.0213775634765625){
     s0+=180.0;
     s1+=48.0;
    } else {
     s0+=46.0;
     s1+=108.0;
    }
   } else {
    if(i39<0.000334213487803936){
     s0+=38164.0;
     s1+=19.0;
    } else {
     s0+=10438.0;
     s1+=479.0;
    }
   }
  } else {
   if(i39<0.0018773255869746208){
    if(i15<0.9991549253463745){
     s0+=2736.0;
     s1+=234.0;
    } else {
     s0+=2372.0;
     s1+=1342.0;
    }
   } else {
    if(i12<0.9924451112747192){
     s0+=7513.0;
     s1+=95.0;
    } else {
     s0+=4360.0;
     s1+=934.0;
    }
   }
  }
 } else {
  if(i26<0.00020044646225869656){
   if(i7<-6.626526010222733e-05){
    s1+=4.0;
   } else {
    s0+=41.0;
   }
  } else {
   if(i36<1.2369153499603271){
    s1+=1120.0;
   } else {
    if(i44<-1.648768738959916e-05){
     s1+=287.0;
    } else {
     s0+=88.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i24<1.0332460403442383){
  if(i3<1.8775463104248047e-05){
   if(i33<0.0020502968691289425){
    if(i30<0.9965398907661438){
     s0+=79.0;
    } else {
     s0+=10.0;
     s1+=183.0;
    }
   } else {
    if(i2<0.07890453934669495){
     s0+=4176.0;
     s1+=95.0;
    } else {
     s0+=11.0;
     s1+=100.0;
    }
   }
  } else {
   if(i4<0.00043898820877075195){
    if(i5<0.02509823441505432){
     s0+=33.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=77.0;
    }
   } else {
    if(i19<-0.0029744207859039307){
     s0+=21.0;
     s1+=26.0;
    } else {
     s0+=13.0;
     s1+=1271.0;
    }
   }
  }
 } else {
  if(i17<0.008358347229659557){
   if(i20<-1.1473894119262695e-05){
    if(i59<0.22944162786006927){
     s0+=176.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    if(i21<0.9986835718154907){
     s0+=398.0;
     s1+=284.0;
    } else {
     s0+=61.0;
     s1+=2006.0;
    }
   }
  } else {
   if(i49<0.000281229498796165){
    if(i3<-0.0001583099365234375){
     s0+=4.0;
    } else {
     s0+=71.0;
     s1+=8238.0;
    }
   } else {
    if(i29<0.035511769354343414){
     s0+=111.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=175.0;
    }
   }
  }
 }
}
if(i12<1.004133701324463){
 if(i0<0.08122581243515015){
  if(i6<1.002378225326538){
   if(i27<0.014448416419327259){
    if(i64<-0.0013779997825622559){
     s0+=2151.0;
     s1+=320.0;
    } else {
     s0+=54488.0;
     s1+=318.0;
    }
   } else {
    if(i13<0.9900332689285278){
     s0+=8197.0;
     s1+=201.0;
    } else {
     s0+=3882.0;
     s1+=1360.0;
    }
   }
  } else {
   if(i45<-0.0015270113945007324){
    if(i17<0.0040720789693295956){
     s0+=21.0;
    } else {
     s0+=18.0;
     s1+=157.0;
    }
   } else {
    if(i34<0.002481450792402029){
     s0+=31.0;
     s1+=90.0;
    } else {
     s0+=118.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i17<0.0060635339468717575){
   if(i31<0.05404996871948242){
    if(i15<0.9980413913726807){
     s0+=97.0;
    } else {
     s0+=124.0;
     s1+=1422.0;
    }
   } else {
    if(i26<0.0010986307170242071){
     s0+=155.0;
     s1+=179.0;
    } else {
     s0+=1055.0;
     s1+=206.0;
    }
   }
  } else {
   if(i23<1.079460620880127){
    if(i60<0.0030984878540039062){
     s1+=69.0;
    } else {
     s0+=52.0;
     s1+=13.0;
    }
   } else {
    if(i29<0.018982987850904465){
     s0+=36.0;
     s1+=180.0;
    } else {
     s0+=3.0;
     s1+=2645.0;
    }
   }
  }
 }
} else {
 if(i44<-1.0876973647100385e-05){
  if(i42<0.00018739199731498957){
   s0+=29.0;
  } else {
   if(i76<8.753823749430012e-06){
    if(i7<-4.366729990579188e-05){
     s0+=26.0;
     s1+=9620.0;
    } else {
     s0+=81.0;
     s1+=74.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i21<1.010864496231079){
   if(i67<0.06288626790046692){
    if(i27<0.03848658502101898){
     s0+=467.0;
     s1+=12.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i30<1.0003843307495117){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<1.1944798231124878){
    s1+=205.0;
   } else {
    if(i1<0.19392985105514526){
     s0+=38.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
}
if(i1<0.0851379930973053){
 if(i3<4.035234451293945e-05){
  if(i23<1.0467959642410278){
   if(i70<0.0007800518069416285){
    if(i30<1.000563621520996){
     s0+=50182.0;
     s1+=59.0;
    } else {
     s0+=1797.0;
     s1+=53.0;
    }
   } else {
    if(i59<0.038831841200590134){
     s0+=334.0;
     s1+=117.0;
    } else {
     s0+=2207.0;
     s1+=54.0;
    }
   }
  } else {
   if(i0<0.05908772349357605){
    if(i32<0.001363984658382833){
     s0+=5372.0;
     s1+=912.0;
    } else {
     s0+=6911.0;
     s1+=190.0;
    }
   } else {
    if(i60<0.0008851289749145508){
     s0+=460.0;
     s1+=554.0;
    } else {
     s0+=1343.0;
     s1+=237.0;
    }
   }
  }
 } else {
  if(i15<1.0015532970428467){
   if(i74<0.00013718724949285388){
    if(i79<0.00029850006103515625){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=45.0;
    }
   } else {
    if(i1<0.08092838525772095){
     s0+=242.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.2287709712982178){
    if(i27<0.05251932516694069){
     s0+=4.0;
     s1+=654.0;
    } else {
     s0+=8.0;
     s1+=20.0;
    }
   } else {
    if(i29<0.017200911417603493){
     s0+=159.0;
     s1+=78.0;
    } else {
     s0+=18.0;
     s1+=267.0;
    }
   }
  }
 }
} else {
 if(i6<0.9965493679046631){
  if(i17<0.005775396712124348){
   if(i30<0.9992045164108276){
    s0+=584.0;
   } else {
    if(i28<1.2020978927612305){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=96.0;
     s1+=11.0;
    }
   }
  } else {
   if(i5<0.09861251711845398){
    if(i19<-0.0032810866832733154){
     s0+=33.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i68<-2.5558485958754318e-06){
     s0+=1.0;
     s1+=114.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i7<-1.4545135854859836e-05){
   if(i7<-4.962512321071699e-05){
    if(i49<8.684904605615884e-05){
     s0+=9.0;
     s1+=8802.0;
    } else {
     s0+=180.0;
     s1+=3063.0;
    }
   } else {
    if(i32<0.0021672495640814304){
     s0+=130.0;
     s1+=1355.0;
    } else {
     s0+=273.0;
     s1+=256.0;
    }
   }
  } else {
   if(i54<1.0077035427093506){
    if(i13<0.996880292892456){
     s0+=23.0;
     s1+=226.0;
    } else {
     s0+=37.0;
     s1+=20.0;
    }
   } else {
    if(i18<1.0026814937591553){
     s0+=506.0;
     s1+=137.0;
    } else {
     s1+=42.0;
    }
   }
  }
 }
}
if(i11<1.0083751678466797){
 if(i0<0.07568562030792236){
  if(i23<1.0451585054397583){
   if(i4<0.0009125471115112305){
    if(i50<0.0002529277990106493){
     s0+=47935.0;
     s1+=32.0;
    } else {
     s0+=6020.0;
     s1+=186.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i3<3.1888484954833984e-05){
    if(i33<0.0008683276828378439){
     s0+=4830.0;
     s1+=1206.0;
    } else {
     s0+=9195.0;
     s1+=442.0;
    }
   } else {
    if(i38<1.1509525775909424){
     s0+=5.0;
     s1+=287.0;
    } else {
     s0+=192.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i7<-1.2713067917502485e-05){
   if(i70<0.0012527820654213428){
    if(i28<1.2371783256530762){
     s0+=36.0;
     s1+=894.0;
    } else {
     s0+=513.0;
     s1+=681.0;
    }
   } else {
    if(i20<-1.8805265426635742e-05){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=31.0;
     s1+=1902.0;
    }
   }
  } else {
   if(i50<0.0003874843241646886){
    if(i18<1.0008633136749268){
     s0+=683.0;
     s1+=48.0;
    } else {
     s0+=6.0;
     s1+=30.0;
    }
   } else {
    if(i46<-0.00013828277587890625){
     s0+=173.0;
    } else {
     s0+=95.0;
     s1+=199.0;
    }
   }
  }
 }
} else {
 if(i19<0.0013550519943237305){
  if(i4<0.0005184412002563477){
   if(i27<0.04030211269855499){
    if(i36<1.1610381603240967){
     s0+=151.0;
     s1+=538.0;
    } else {
     s0+=899.0;
     s1+=299.0;
    }
   } else {
    if(i0<0.09074148535728455){
     s0+=29.0;
     s1+=28.0;
    } else {
     s0+=23.0;
     s1+=552.0;
    }
   }
  } else {
   if(i49<-6.525117896671873e-06){
    if(i61<0.0005241783801466227){
     s0+=105.0;
     s1+=2.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i0<0.16418054699897766){
     s0+=54.0;
     s1+=456.0;
    } else {
     s0+=2.0;
     s1+=955.0;
    }
   }
  }
 } else {
  if(i34<0.005074797198176384){
   if(i38<1.2296775579452515){
    if(i77<-0.002286211121827364){
     s0+=3.0;
     s1+=60.0;
    } else {
     s1+=1572.0;
    }
   } else {
    if(i3<8.70823860168457e-05){
     s0+=24.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   s1+=6560.0;
  }
 }
}
if(i0<0.07742762565612793){
 if(i6<1.0024950504302979){
  if(i56<0.008342646062374115){
   if(i26<0.000284733425360173){
    if(i25<1.0094115734100342){
     s0+=52469.0;
     s1+=203.0;
    } else {
     s0+=46.0;
     s1+=66.0;
    }
   } else {
    if(i34<0.0010774427792057395){
     s0+=3629.0;
     s1+=902.0;
    } else {
     s0+=10064.0;
     s1+=146.0;
    }
   }
  } else {
   if(i0<0.02171996235847473){
    if(i6<0.9967824220657349){
     s0+=975.0;
     s1+=19.0;
    } else {
     s0+=965.0;
     s1+=169.0;
    }
   } else {
    if(i41<0.0027341246604919434){
     s0+=34.0;
     s1+=281.0;
    } else {
     s0+=872.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i17<0.0019465598743408918){
   if(i33<0.0014496719231829047){
    if(i66<1.0062754154205322){
     s0+=1.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i50<8.449931920040399e-05){
     s0+=148.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i38<1.1700142621994019){
    if(i12<0.9943487644195557){
     s0+=1.0;
    } else {
     s1+=823.0;
    }
   } else {
    if(i51<0.004023567773401737){
     s0+=83.0;
     s1+=24.0;
    } else {
     s0+=24.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i9<-0.0003927648067474365){
  if(i33<0.003904416225850582){
   if(i6<0.9969763159751892){
    s0+=447.0;
   } else {
    if(i69<0.9994699358940125){
     s1+=1.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i2<0.10328391194343567){
    s0+=36.0;
   } else {
    s1+=11.0;
   }
  }
 } else {
  if(i3<3.36766242980957e-05){
   if(i63<0.028123140335083008){
    if(i7<-1.3672940440301318e-05){
     s0+=125.0;
     s1+=2022.0;
    } else {
     s0+=159.0;
     s1+=205.0;
    }
   } else {
    if(i1<0.27342915534973145){
     s0+=925.0;
     s1+=620.0;
    } else {
     s0+=34.0;
     s1+=363.0;
    }
   }
  } else {
   if(i19<-0.0006331801414489746){
    if(i0<0.11492383480072021){
     s0+=85.0;
     s1+=102.0;
    } else {
     s0+=29.0;
     s1+=621.0;
    }
   } else {
    if(i4<0.0008349418640136719){
     s0+=43.0;
     s1+=790.0;
    } else {
     s0+=20.0;
     s1+=9089.0;
    }
   }
  }
 }
}
if(i0<0.07653620839118958){
 if(i4<0.0006022751331329346){
  if(i47<0.0002956066164188087){
   if(i7<-3.819276753347367e-05){
    if(i30<1.0004854202270508){
     s0+=616.0;
     s1+=27.0;
    } else {
     s0+=78.0;
     s1+=133.0;
    }
   } else {
    if(i43<-0.009297609329223633){
     s0+=102.0;
     s1+=45.0;
    } else {
     s0+=55247.0;
     s1+=399.0;
    }
   }
  } else {
   if(i6<0.9978666305541992){
    if(i39<0.0020229704678058624){
     s0+=1806.0;
     s1+=182.0;
    } else {
     s0+=6436.0;
     s1+=107.0;
    }
   } else {
    if(i46<-3.5762786865234375e-05){
     s0+=1102.0;
     s1+=34.0;
    } else {
     s0+=3266.0;
     s1+=1119.0;
    }
   }
  }
 } else {
  if(i12<1.0045559406280518){
   if(i53<0.0017486121505498886){
    if(i13<0.9907538890838623){
     s1+=7.0;
    } else {
     s0+=154.0;
     s1+=6.0;
    }
   } else {
    if(i32<0.008966315537691116){
     s0+=49.0;
     s1+=237.0;
    } else {
     s0+=70.0;
     s1+=28.0;
    }
   }
  } else {
   if(i26<0.00014213877147994936){
    s0+=19.0;
   } else {
    if(i44<-1.4078847016207874e-05){
     s0+=4.0;
     s1+=755.0;
    } else {
     s0+=38.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i15<0.9988982677459717){
  if(i9<-0.0004031956195831299){
   if(i33<0.008685503154993057){
    if(i56<-0.006425556726753712){
     s0+=99.0;
     s1+=1.0;
    } else {
     s0+=408.0;
    }
   } else {
    if(i33<0.010708761401474476){
     s1+=7.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i31<0.04751521348953247){
    if(i36<1.06004798412323){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=58.0;
    }
   } else {
    if(i7<-1.8430720956530422e-05){
     s0+=5.0;
     s1+=22.0;
    } else {
     s0+=101.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i4<0.0004786252975463867){
   if(i17<0.0016418937593698502){
    if(i35<0.06231090426445007){
     s0+=18.0;
     s1+=105.0;
    } else {
     s0+=625.0;
     s1+=126.0;
    }
   } else {
    if(i20<6.854534149169922e-06){
     s0+=174.0;
     s1+=1860.0;
    } else {
     s0+=418.0;
     s1+=1068.0;
    }
   }
  } else {
   if(i2<0.1413125991821289){
    if(i60<0.005738973617553711){
     s0+=64.0;
     s1+=1567.0;
    } else {
     s0+=96.0;
     s1+=7.0;
    }
   } else {
    if(i21<1.0143537521362305){
     s0+=28.0;
     s1+=1801.0;
    } else {
     s1+=7473.0;
    }
   }
  }
 }
}
if(i5<0.07235932350158691){
 if(i18<1.0032591819763184){
  if(i0<0.07751622796058655){
   if(i23<1.0483907461166382){
    if(i57<-0.0022396743297576904){
     s0+=1727.0;
     s1+=227.0;
    } else {
     s0+=53585.0;
     s1+=124.0;
    }
   } else {
    if(i60<-0.002019643783569336){
     s0+=1744.0;
     s1+=648.0;
    } else {
     s0+=10757.0;
     s1+=1151.0;
    }
   }
  } else {
   if(i46<-0.00014704465866088867){
    s0+=93.0;
   } else {
    if(i60<0.0015741586685180664){
     s0+=7.0;
     s1+=618.0;
    } else {
     s0+=45.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i9<0.000575721263885498){
   if(i76<3.1257695809472352e-06){
    if(i32<0.001781601458787918){
     s0+=47.0;
     s1+=250.0;
    } else {
     s0+=248.0;
     s1+=25.0;
    }
   } else {
    if(i8<1.0702288150787354){
     s0+=403.0;
    } else {
     s0+=12.0;
     s1+=13.0;
    }
   }
  } else {
   if(i3<4.70280647277832e-05){
    if(i65<6.955197932256851e-06){
     s1+=12.0;
    } else {
     s0+=157.0;
     s1+=13.0;
    }
   } else {
    if(i32<0.009066482074558735){
     s0+=20.0;
     s1+=1411.0;
    } else {
     s0+=54.0;
     s1+=112.0;
    }
   }
  }
 }
} else {
 if(i33<0.005172088276594877){
  if(i12<1.001211404800415){
   if(i9<-0.00040084123611450195){
    if(i72<-0.0003431808145251125){
     s0+=167.0;
     s1+=2.0;
    } else {
     s0+=236.0;
    }
   } else {
    if(i60<0.004136919975280762){
     s0+=347.0;
     s1+=927.0;
    } else {
     s0+=769.0;
     s1+=349.0;
    }
   }
  } else {
   if(i42<0.0037324032746255398){
    if(i36<1.2827492952346802){
     s0+=40.0;
     s1+=1295.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i48<0.06228206306695938){
     s0+=93.0;
     s1+=43.0;
    } else {
     s0+=26.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i6<0.9951679706573486){
   if(i8<1.0944533348083496){
    if(i38<1.5537261962890625){
     s0+=94.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    s1+=46.0;
   }
  } else {
   if(i0<0.10089454054832458){
    if(i63<0.011407434940338135){
     s0+=16.0;
     s1+=132.0;
    } else {
     s0+=103.0;
     s1+=44.0;
    }
   } else {
    if(i0<0.16539782285690308){
     s0+=68.0;
     s1+=787.0;
    } else {
     s0+=15.0;
     s1+=8798.0;
    }
   }
  }
 }
}
if(i5<0.07267516851425171){
 if(i15<1.0018914937973022){
  if(i42<0.0003286664723418653){
   if(i21<1.0075619220733643){
    if(i78<-0.0010344386100769043){
     s0+=51.0;
     s1+=17.0;
    } else {
     s0+=47502.0;
     s1+=89.0;
    }
   } else {
    if(i34<0.0012590511469170451){
     s1+=81.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<1.2298874855041504){
    if(i2<0.06930646300315857){
     s0+=7112.0;
     s1+=1347.0;
    } else {
     s0+=344.0;
     s1+=1240.0;
    }
   } else {
    if(i47<0.031408872455358505){
     s0+=13244.0;
     s1+=205.0;
    } else {
     s0+=9.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i19<-0.0008022189140319824){
   if(i17<0.016884617507457733){
    if(i51<0.0025264048017561436){
     s0+=478.0;
     s1+=25.0;
    } else {
     s0+=114.0;
     s1+=140.0;
    }
   } else {
    s1+=81.0;
   }
  } else {
   if(i26<0.00016300984134431928){
    s0+=15.0;
   } else {
    if(i64<0.0050969719886779785){
     s0+=40.0;
     s1+=1487.0;
    } else {
     s0+=19.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i2<0.11707004904747009){
  if(i41<0.057337403297424316){
   if(i2<0.08338749408721924){
    if(i35<0.04291272163391113){
     s1+=56.0;
    } else {
     s0+=176.0;
     s1+=74.0;
    }
   } else {
    if(i24<1.0897854566574097){
     s0+=17.0;
     s1+=779.0;
    } else {
     s0+=14.0;
     s1+=41.0;
    }
   }
  } else {
   if(i4<0.0008674860000610352){
    if(i60<0.004303097724914551){
     s0+=539.0;
     s1+=178.0;
    } else {
     s0+=636.0;
     s1+=20.0;
    }
   } else {
    if(i62<-0.01983114518225193){
     s0+=24.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i7<-1.0176820069318637e-05){
   if(i7<-4.15353242715355e-05){
    if(i44<-0.00024641380878165364){
     s0+=1.0;
    } else {
     s0+=39.0;
     s1+=10466.0;
    }
   } else {
    if(i58<-0.011163696646690369){
     s0+=139.0;
     s1+=86.0;
    } else {
     s0+=57.0;
     s1+=596.0;
    }
   }
  } else {
   if(i9<-0.0003972351551055908){
    s0+=196.0;
   } else {
    if(i31<0.08709287643432617){
     s0+=13.0;
     s1+=104.0;
    } else {
     s0+=176.0;
     s1+=29.0;
    }
   }
  }
 }
}
if(i25<1.0088505744934082){
 if(i5<0.08102956414222717){
  if(i3<4.106760025024414e-05){
   if(i47<0.0003076394204981625){
    if(i79<-0.0012970268726348877){
     s0+=2562.0;
     s1+=214.0;
    } else {
     s0+=54031.0;
     s1+=385.0;
    }
   } else {
    if(i12<0.9939488172531128){
     s0+=6514.0;
     s1+=169.0;
    } else {
     s0+=4626.0;
     s1+=1576.0;
    }
   }
  } else {
   if(i37<1.0762357711791992){
    s0+=231.0;
   } else {
    if(i62<-0.013928234577178955){
     s0+=65.0;
     s1+=27.0;
    } else {
     s0+=105.0;
     s1+=1012.0;
    }
   }
  }
 } else {
  if(i62<-0.024378787726163864){
   if(i1<0.14923441410064697){
    if(i17<0.012411480769515038){
     s0+=328.0;
     s1+=17.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i44<-6.449295142374467e-07){
     s0+=44.0;
     s1+=671.0;
    } else {
     s0+=107.0;
     s1+=16.0;
    }
   }
  } else {
   if(i31<0.05494120717048645){
    if(i20<-1.9341707229614258e-05){
     s0+=9.0;
    } else {
     s0+=20.0;
     s1+=1698.0;
    }
   } else {
    if(i0<0.10623270273208618){
     s0+=117.0;
     s1+=48.0;
    } else {
     s0+=26.0;
     s1+=209.0;
    }
   }
  }
 }
} else {
 if(i1<0.0850917398929596){
  if(i38<1.0862454175949097){
   if(i13<1.0022518634796143){
    if(i46<3.6329030990600586e-05){
     s0+=135.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i37<1.0598008632659912){
     s0+=2.0;
    } else {
     s0+=9.0;
     s1+=372.0;
    }
   }
  } else {
   if(i9<0.0010161399841308594){
    if(i53<0.0019104216480627656){
     s0+=1441.0;
     s1+=63.0;
    } else {
     s0+=78.0;
     s1+=83.0;
    }
   } else {
    if(i68<-8.20660625322489e-06){
     s1+=44.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i19<0.0005791783332824707){
   if(i53<0.001913248561322689){
    if(i36<1.140648365020752){
     s0+=64.0;
     s1+=245.0;
    } else {
     s0+=672.0;
     s1+=350.0;
    }
   } else {
    if(i40<1.020829677581787){
     s0+=19.0;
     s1+=179.0;
    } else {
     s0+=7.0;
     s1+=993.0;
    }
   }
  } else {
   if(i7<-2.2232568881008774e-05){
    if(i0<0.09727424383163452){
     s0+=15.0;
     s1+=525.0;
    } else {
     s0+=5.0;
     s1+=8050.0;
    }
   } else {
    if(i19<0.0005962550640106201){
     s1+=1.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
}
if(i6<1.0023590326309204){
 if(i50<-8.554339729016647e-05){
  if(i1<0.06895220279693604){
   if(i17<0.0056171296164393425){
    if(i38<1.084579348564148){
     s0+=26.0;
     s1+=25.0;
    } else {
     s0+=246.0;
     s1+=11.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i36<1.196258783340454){
    if(i46<-0.00027382373809814453){
     s0+=6.0;
    } else {
     s0+=13.0;
     s1+=629.0;
    }
   } else {
    if(i34<0.005144715309143066){
     s0+=162.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i35<0.06205156445503235){
   if(i0<0.07646152377128601){
    if(i27<0.01796303689479828){
     s0+=59831.0;
     s1+=754.0;
    } else {
     s0+=8274.0;
     s1+=1100.0;
    }
   } else {
    if(i76<7.354618901445065e-06){
     s0+=56.0;
     s1+=1132.0;
    } else {
     s0+=99.0;
     s1+=5.0;
    }
   }
  } else {
   if(i49<3.6492012441158295e-05){
    if(i4<-7.212162017822266e-06){
     s0+=605.0;
     s1+=43.0;
    } else {
     s0+=352.0;
     s1+=209.0;
    }
   } else {
    if(i27<0.026495078578591347){
     s0+=796.0;
     s1+=317.0;
    } else {
     s0+=363.0;
     s1+=1344.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022073215804994106){
  if(i68<-5.4410465963883325e-06){
   if(i37<1.0713427066802979){
    s0+=1.0;
   } else {
    if(i28<1.613681674003601){
     s1+=148.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i4<0.0009743571281433105){
    if(i7<-6.491591921076179e-05){
     s1+=2.0;
    } else {
     s0+=281.0;
    }
   } else {
    s1+=21.0;
   }
  }
 } else {
  if(i29<0.020047392696142197){
   if(i28<1.5682398080825806){
    if(i28<1.4901387691497803){
     s0+=31.0;
     s1+=2237.0;
    } else {
     s0+=42.0;
     s1+=144.0;
    }
   } else {
    if(i9<0.001819908618927002){
     s0+=93.0;
    } else {
     s1+=81.0;
    }
   }
  } else {
   if(i6<1.0031390190124512){
    if(i58<0.0008891522884368896){
     s0+=2.0;
     s1+=477.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    s1+=8046.0;
   }
  }
 }
}
if(i6<1.0024006366729736){
 if(i10<1.0452215671539307){
  if(i2<0.08422231674194336){
   if(i43<-0.006055653095245361){
    if(i0<0.03849920630455017){
     s0+=2631.0;
     s1+=290.0;
    } else {
     s0+=232.0;
     s1+=291.0;
    }
   } else {
    if(i9<8.45789909362793e-05){
     s0+=54628.0;
     s1+=492.0;
    } else {
     s0+=7397.0;
     s1+=329.0;
    }
   }
  } else {
   if(i63<0.040373027324676514){
    if(i76<1.0887593816732988e-05){
     s0+=30.0;
     s1+=530.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i4<-0.0007641017436981201){
     s0+=61.0;
     s1+=3.0;
    } else {
     s0+=37.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i39<0.010738944634795189){
   if(i7<-2.6112120394827798e-05){
    if(i2<0.08946084976196289){
     s0+=971.0;
     s1+=509.0;
    } else {
     s0+=285.0;
     s1+=1580.0;
    }
   } else {
    if(i0<0.08087000250816345){
     s0+=3349.0;
     s1+=268.0;
    } else {
     s0+=967.0;
     s1+=520.0;
    }
   }
  } else {
   if(i8<1.0662994384765625){
    if(i19<-0.0037932991981506348){
     s0+=96.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i5<0.0005112588405609131){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=883.0;
    }
   }
  }
 }
} else {
 if(i44<-9.250386028725188e-06){
  if(i7<-4.330423689680174e-05){
   if(i12<1.006181240081787){
    if(i11<1.0154509544372559){
     s0+=162.0;
     s1+=1194.0;
    } else {
     s1+=1236.0;
    }
   } else {
    if(i47<0.00014866245328448713){
     s0+=5.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=8621.0;
    }
   }
  } else {
   if(i61<0.00046453974209725857){
    if(i49<5.71986583963735e-06){
     s0+=165.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    s1+=187.0;
   }
  }
 } else {
  if(i2<0.09963691234588623){
   if(i56<0.018941793590784073){
    s0+=80.0;
   } else {
    s1+=2.0;
   }
  } else {
   s1+=32.0;
  }
 }
}
if(i4<0.0005491375923156738){
 if(i2<0.08200663328170776){
  if(i47<0.0003038500144612044){
   if(i38<1.0598037242889404){
    if(i43<-0.008586406707763672){
     s0+=54.0;
     s1+=6.0;
    } else {
     s0+=41657.0;
     s1+=6.0;
    }
   } else {
    if(i64<-0.0017924308776855469){
     s0+=128.0;
     s1+=122.0;
    } else {
     s0+=14850.0;
     s1+=473.0;
    }
   }
  } else {
   if(i6<0.9966784715652466){
    if(i6<0.9954684972763062){
     s0+=4903.0;
     s1+=31.0;
    } else {
     s0+=1497.0;
     s1+=91.0;
    }
   } else {
    if(i32<0.00030705519020557404){
     s0+=1746.0;
    } else {
     s0+=4081.0;
     s1+=1385.0;
    }
   }
  }
 } else {
  if(i7<-1.381069523631595e-05){
   if(i69<1.0003736019134521){
    if(i15<0.9980583190917969){
     s0+=52.0;
     s1+=6.0;
    } else {
     s0+=320.0;
     s1+=2902.0;
    }
   } else {
    if(i23<1.1258130073547363){
     s0+=123.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=80.0;
    }
   }
  } else {
   if(i31<0.04500594735145569){
    if(i34<0.0006754698697477579){
     s0+=77.0;
     s1+=22.0;
    } else {
     s0+=52.0;
     s1+=199.0;
    }
   } else {
    if(i37<1.253311276435852){
     s0+=511.0;
     s1+=128.0;
    } else {
     s0+=400.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i36<1.0624027252197266){
  s0+=192.0;
 } else {
  if(i26<0.00017990896594710648){
   if(i53<0.0008234644774347544){
    s0+=50.0;
   } else {
    if(i44<-1.4358878615894355e-05){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i29<0.018109388649463654){
    if(i38<1.2007768154144287){
     s0+=22.0;
     s1+=1694.0;
    } else {
     s0+=292.0;
     s1+=675.0;
    }
   } else {
    if(i36<1.265605092048645){
     s0+=23.0;
     s1+=1305.0;
    } else {
     s0+=11.0;
     s1+=8036.0;
    }
   }
  }
 }
}
if(i7<-7.496170292142779e-05){
 if(i25<0.938132643699646){
  if(i6<1.0002286434173584){
   if(i72<-0.00048205116763710976){
    if(i54<0.7854245901107788){
     s0+=1.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i2<0.03802254796028137){
     s0+=461.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=29.0;
    }
   }
  } else {
   if(i17<0.01692723110318184){
    if(i21<0.9504348039627075){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   } else {
    s1+=188.0;
   }
  }
 } else {
  if(i38<1.0611095428466797){
   s0+=138.0;
  } else {
   if(i66<0.9649707674980164){
    if(i31<0.09637442231178284){
     s0+=131.0;
     s1+=36.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i1<0.09733250737190247){
     s0+=165.0;
     s1+=841.0;
    } else {
     s0+=68.0;
     s1+=10129.0;
    }
   }
  }
 }
} else {
 if(i2<0.07771188020706177){
  if(i56<0.007565170060843229){
   if(i23<1.0451585054397583){
    if(i79<-0.0009100437164306641){
     s0+=6995.0;
     s1+=154.0;
    } else {
     s0+=46073.0;
     s1+=48.0;
    }
   } else {
    if(i6<1.0024690628051758){
     s0+=11678.0;
     s1+=923.0;
    } else {
     s0+=187.0;
     s1+=186.0;
    }
   }
  } else {
   if(i6<1.002242088317871){
    if(i46<-3.5643577575683594e-05){
     s0+=1658.0;
     s1+=95.0;
    } else {
     s0+=1515.0;
     s1+=556.0;
    }
   } else {
    if(i38<1.1649619340896606){
     s0+=1.0;
     s1+=178.0;
    } else {
     s0+=32.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i43<0.013355135917663574){
   if(i46<-0.00013849139213562012){
    if(i7<-3.930592356482521e-05){
     s0+=2.0;
     s1+=20.0;
    } else {
     s0+=357.0;
    }
   } else {
    if(i42<0.00028766493778675795){
     s0+=96.0;
     s1+=17.0;
    } else {
     s0+=318.0;
     s1+=2600.0;
    }
   }
  } else {
   if(i53<0.0010940170614048839){
    if(i47<0.0010621058754622936){
     s0+=116.0;
     s1+=142.0;
    } else {
     s0+=635.0;
     s1+=109.0;
    }
   } else {
    if(i5<0.1529444456100464){
     s0+=465.0;
     s1+=226.0;
    } else {
     s0+=43.0;
     s1+=494.0;
    }
   }
  }
 }
}
if(i9<0.00043654441833496094){
 if(i21<1.006631851196289){
  if(i1<0.08341601490974426){
   if(i23<1.0451585054397583){
    if(i70<0.0006310805329121649){
     s0+=50246.0;
     s1+=48.0;
    } else {
     s0+=3392.0;
     s1+=165.0;
    }
   } else {
    if(i6<0.9976099729537964){
     s0+=6442.0;
     s1+=186.0;
    } else {
     s0+=6120.0;
     s1+=1176.0;
    }
   }
  } else {
   if(i6<0.9960522651672363){
    if(i53<0.002922892104834318){
     s0+=626.0;
     s1+=18.0;
    } else {
     s0+=38.0;
     s1+=106.0;
    }
   } else {
    if(i45<0.004253983497619629){
     s0+=231.0;
     s1+=1305.0;
    } else {
     s0+=361.0;
     s1+=414.0;
    }
   }
  }
 } else {
  if(i69<0.9998725652694702){
   if(i0<0.06865859031677246){
    if(i46<3.612041473388672e-05){
     s0+=315.0;
     s1+=35.0;
    } else {
     s0+=34.0;
     s1+=71.0;
    }
   } else {
    if(i19<-0.00017562508583068848){
     s0+=79.0;
     s1+=104.0;
    } else {
     s0+=54.0;
     s1+=1727.0;
    }
   }
  } else {
   if(i28<1.1386182308197021){
    if(i3<1.0132789611816406e-06){
     s0+=15.0;
     s1+=23.0;
    } else {
     s1+=231.0;
    }
   } else {
    if(i5<0.21661990880966187){
     s0+=1343.0;
     s1+=102.0;
    } else {
     s0+=59.0;
     s1+=176.0;
    }
   }
  }
 }
} else {
 if(i3<3.892183303833008e-05){
  if(i5<0.11047664284706116){
   if(i14<-0.0002796947956085205){
    if(i8<1.1205039024353027){
     s0+=775.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=80.0;
    }
   } else {
    if(i17<0.004869239404797554){
     s0+=524.0;
     s1+=52.0;
    } else {
     s0+=76.0;
     s1+=218.0;
    }
   }
  } else {
   if(i36<1.2240469455718994){
    if(i10<1.1644864082336426){
     s0+=17.0;
     s1+=73.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i26<0.0014714521821588278){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=278.0;
    }
   }
  }
 } else {
  if(i1<0.06604969501495361){
   if(i44<-1.4669136362499557e-05){
    if(i55<1.0016248226165771){
     s0+=54.0;
     s1+=481.0;
    } else {
     s0+=65.0;
     s1+=27.0;
    }
   } else {
    if(i43<-0.00567057728767395){
     s1+=6.0;
    } else {
     s0+=134.0;
     s1+=5.0;
    }
   }
  } else {
   if(i4<0.0006766915321350098){
    if(i2<0.1588229537010193){
     s0+=46.0;
     s1+=100.0;
    } else {
     s0+=1.0;
     s1+=87.0;
    }
   } else {
    if(i61<0.00047016769531182945){
     s0+=67.0;
     s1+=1721.0;
    } else {
     s0+=31.0;
     s1+=8042.0;
    }
   }
  }
 }
}
if(i5<0.07109606266021729){
 if(i13<1.0060200691223145){
  if(i23<1.0494996309280396){
   if(i43<-0.00503876805305481){
    if(i23<1.0417201519012451){
     s0+=909.0;
     s1+=28.0;
    } else {
     s0+=259.0;
     s1+=113.0;
    }
   } else {
    if(i27<0.014223914593458176){
     s0+=48014.0;
     s1+=125.0;
    } else {
     s0+=7107.0;
     s1+=191.0;
    }
   }
  } else {
   if(i5<0.04604724049568176){
    if(i60<-0.002321183681488037){
     s0+=1336.0;
     s1+=588.0;
    } else {
     s0+=7956.0;
     s1+=627.0;
    }
   } else {
    if(i45<0.003727853298187256){
     s0+=1791.0;
     s1+=1200.0;
    } else {
     s0+=931.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i9<0.0005489587783813477){
   if(i46<1.5467405319213867e-05){
    if(i4<3.6716461181640625e-05){
     s0+=36.0;
    } else {
     s0+=4.0;
     s1+=286.0;
    }
   } else {
    if(i50<1.3963071978650987e-06){
     s0+=499.0;
     s1+=55.0;
    } else {
     s0+=63.0;
     s1+=124.0;
    }
   }
  } else {
   if(i68<-4.958719728165306e-06){
    if(i19<0.00010406970977783203){
     s0+=13.0;
     s1+=5.0;
    } else {
     s1+=1193.0;
    }
   } else {
    if(i26<0.00027433817740529776){
     s0+=13.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i27<0.026309765875339508){
  if(i7<-3.257970092818141e-05){
   if(i52<0.0508098304271698){
    if(i5<0.07861918210983276){
     s0+=62.0;
     s1+=290.0;
    } else {
     s0+=45.0;
     s1+=1651.0;
    }
   } else {
    if(i1<0.13206952810287476){
     s0+=214.0;
     s1+=52.0;
    } else {
     s0+=49.0;
     s1+=341.0;
    }
   }
  } else {
   if(i71<0.9920236468315125){
    if(i28<1.0905632972717285){
     s0+=33.0;
    } else {
     s0+=32.0;
     s1+=96.0;
    }
   } else {
    if(i4<0.00047528743743896484){
     s0+=1145.0;
     s1+=214.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i69<0.999556303024292){
   if(i17<0.005978384055197239){
    if(i68<-2.2305639504338615e-06){
     s0+=2.0;
     s1+=28.0;
    } else {
     s0+=176.0;
    }
   } else {
    if(i14<-0.0005377233028411865){
     s0+=1.0;
    } else {
     s1+=227.0;
    }
   }
  } else {
   if(i4<0.00015079975128173828){
    if(i31<0.04850170016288757){
     s0+=53.0;
     s1+=671.0;
    } else {
     s0+=240.0;
     s1+=472.0;
    }
   } else {
    if(i44<-1.1203883332200348e-05){
     s0+=75.0;
     s1+=8300.0;
    } else {
     s0+=34.0;
     s1+=180.0;
    }
   }
  }
 }
}
if(i24<1.0406770706176758){
 if(i18<1.0030831098556519){
  if(i8<1.0452277660369873){
   if(i51<0.0019750180654227734){
    if(i23<1.0477051734924316){
     s0+=53355.0;
     s1+=191.0;
    } else {
     s0+=5316.0;
     s1+=438.0;
    }
   } else {
    if(i42<0.0031354709062725306){
     s0+=1128.0;
     s1+=328.0;
    } else {
     s0+=1266.0;
     s1+=29.0;
    }
   }
  } else {
   if(i17<0.004298171028494835){
    if(i5<0.06263193488121033){
     s0+=4136.0;
     s1+=702.0;
    } else {
     s0+=128.0;
     s1+=390.0;
    }
   } else {
    if(i6<0.9980820417404175){
     s0+=465.0;
     s1+=104.0;
    } else {
     s0+=132.0;
     s1+=684.0;
    }
   }
  }
 } else {
  if(i45<0.0032126307487487793){
   if(i3<1.6510486602783203e-05){
    if(i60<-0.003306448459625244){
     s0+=41.0;
     s1+=21.0;
    } else {
     s0+=356.0;
     s1+=17.0;
    }
   } else {
    if(i3<6.371736526489258e-05){
     s0+=134.0;
     s1+=437.0;
    } else {
     s0+=21.0;
     s1+=1489.0;
    }
   }
  } else {
   if(i5<0.11209475994110107){
    if(i4<0.0004513263702392578){
     s0+=328.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    s1+=16.0;
   }
  }
 }
} else {
 if(i7<-4.2278479668311775e-05){
  if(i12<1.001220941543579){
   if(i2<0.10598701238632202){
    if(i28<1.301742434501648){
     s0+=5.0;
     s1+=98.0;
    } else {
     s0+=435.0;
     s1+=105.0;
    }
   } else {
    if(i32<0.0004571534809656441){
     s0+=4.0;
    } else {
     s0+=65.0;
     s1+=1911.0;
    }
   }
  } else {
   if(i44<-2.624440639920067e-06){
    if(i7<-4.32968299719505e-05){
     s0+=78.0;
     s1+=9018.0;
    } else {
     s0+=14.0;
     s1+=19.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i27<0.02164478227496147){
   if(i18<1.0003459453582764){
    if(i26<0.0010731923393905163){
     s0+=907.0;
     s1+=142.0;
    } else {
     s0+=1143.0;
     s1+=53.0;
    }
   } else {
    if(i20<1.9252300262451172e-05){
     s0+=493.0;
     s1+=167.0;
    } else {
     s0+=19.0;
     s1+=63.0;
    }
   }
  } else {
   if(i7<-8.437551514361985e-06){
    if(i34<0.0018197230529040098){
     s0+=18.0;
     s1+=260.0;
    } else {
     s0+=342.0;
     s1+=457.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=216.0;
     s1+=109.0;
    } else {
     s0+=426.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i23<1.0526776313781738){
  if(i16<1.0116345882415771){
   if(i51<0.00147249735891819){
    if(i40<1.0132126808166504){
     s0+=55198.0;
     s1+=288.0;
    } else {
     s0+=15.0;
     s1+=15.0;
    }
   } else {
    if(i37<1.0703742504119873){
     s0+=1311.0;
    } else {
     s0+=884.0;
     s1+=211.0;
    }
   }
  } else {
   if(i74<0.00047303937026299536){
    s1+=46.0;
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i10<1.0375174283981323){
   if(i2<0.07263469696044922){
    if(i37<1.1037919521331787){
     s0+=1212.0;
     s1+=365.0;
    } else {
     s0+=5979.0;
     s1+=184.0;
    }
   } else {
    if(i4<-0.0010235309600830078){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=37.0;
     s1+=422.0;
    }
   }
  } else {
   if(i2<0.08223840594291687){
    if(i28<1.1013743877410889){
     s0+=908.0;
     s1+=614.0;
    } else {
     s0+=3968.0;
     s1+=388.0;
    }
   } else {
    if(i7<-1.1826359695987776e-05){
     s0+=574.0;
     s1+=3048.0;
    } else {
     s0+=780.0;
     s1+=182.0;
    }
   }
  }
 }
} else {
 if(i26<0.0001797717995941639){
  if(i25<1.0082359313964844){
   s0+=68.0;
  } else {
   if(i17<0.001671505393460393){
    s0+=16.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i17<0.002189040184020996){
   if(i7<-5.625663834507577e-05){
    if(i11<1.0084075927734375){
     s0+=5.0;
     s1+=6.0;
    } else {
     s1+=159.0;
    }
   } else {
    s0+=129.0;
   }
  } else {
   if(i29<0.018831636756658554){
    if(i49<9.4947186880745e-05){
     s0+=21.0;
     s1+=2118.0;
    } else {
     s0+=176.0;
     s1+=148.0;
    }
   } else {
    if(i2<0.011663466691970825){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=8695.0;
    }
   }
  }
 }
}
if(i0<0.07877135276794434){
 if(i15<1.0018606185913086){
  if(i26<0.00028182874666526914){
   if(i16<1.0111780166625977){
    if(i40<1.0083973407745361){
     s0+=52208.0;
     s1+=210.0;
    } else {
     s0+=320.0;
     s1+=65.0;
    }
   } else {
    if(i36<1.1949970722198486){
     s0+=4.0;
     s1+=66.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i19<-0.0013583898544311523){
    if(i60<-0.002320021390914917){
     s0+=713.0;
     s1+=104.0;
    } else {
     s0+=8023.0;
     s1+=101.0;
    }
   } else {
    if(i42<0.0019019334577023983){
     s0+=5053.0;
     s1+=1489.0;
    } else {
     s0+=2288.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i6<1.002540111541748){
   if(i71<0.9942747354507446){
    if(i4<0.0001310110092163086){
     s0+=160.0;
     s1+=12.0;
    } else {
     s0+=45.0;
     s1+=99.0;
    }
   } else {
    if(i19<-0.0008121728897094727){
     s0+=353.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=19.0;
    }
   }
  } else {
   if(i49<6.597507308470085e-05){
    if(i44<-1.356650682282634e-05){
     s1+=737.0;
    } else {
     s0+=14.0;
     s1+=20.0;
    }
   } else {
    if(i71<0.9949434995651245){
     s0+=25.0;
     s1+=231.0;
    } else {
     s0+=69.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i6<1.0018031597137451){
  if(i34<0.006366393528878689){
   if(i63<0.035440921783447266){
    if(i38<1.2643331289291382){
     s0+=368.0;
     s1+=1630.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i26<0.0015522594330832362){
     s0+=250.0;
     s1+=222.0;
    } else {
     s0+=777.0;
     s1+=127.0;
    }
   }
  } else {
   if(i15<0.9982955455780029){
    if(i62<-0.015503473579883575){
     s1+=5.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i38<1.208357572555542){
     s0+=21.0;
     s1+=27.0;
    } else {
     s0+=48.0;
     s1+=1176.0;
    }
   }
  }
 } else {
  if(i19<3.5643577575683594e-05){
   if(i67<0.0869024321436882){
    if(i29<0.016893533989787102){
     s0+=89.0;
     s1+=67.0;
    } else {
     s0+=12.0;
     s1+=280.0;
    }
   } else {
    s1+=708.0;
   }
  } else {
   if(i72<-0.0001300042204093188){
    if(i1<0.09980994462966919){
     s0+=14.0;
     s1+=241.0;
    } else {
     s0+=5.0;
     s1+=8857.0;
    }
   } else {
    if(i10<1.1120543479919434){
     s0+=7.0;
     s1+=412.0;
    } else {
     s0+=22.0;
     s1+=93.0;
    }
   }
  }
 }
}
if(i18<1.0025290250778198){
 if(i0<0.07771843671798706){
  if(i26<0.0003052019455935806){
   if(i40<1.0116727352142334){
    if(i77<0.0003550780238583684){
     s0+=53468.0;
     s1+=256.0;
    } else {
     s0+=18.0;
     s1+=22.0;
    }
   } else {
    if(i7<-2.568900163169019e-05){
     s0+=6.0;
     s1+=56.0;
    } else {
     s0+=44.0;
    }
   }
  } else {
   if(i39<0.001652684761211276){
    if(i33<0.0004679509438574314){
     s0+=2846.0;
     s1+=119.0;
    } else {
     s0+=1616.0;
     s1+=1295.0;
    }
   } else {
    if(i52<-0.022051990032196045){
     s0+=1542.0;
     s1+=199.0;
    } else {
     s0+=8391.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i7<-1.3793662219541147e-05){
   if(i62<-0.01635683700442314){
    if(i42<0.012850664556026459){
     s0+=363.0;
     s1+=555.0;
    } else {
     s0+=13.0;
     s1+=735.0;
    }
   } else {
    if(i15<0.9985134601593018){
     s0+=37.0;
     s1+=10.0;
    } else {
     s0+=153.0;
     s1+=2673.0;
    }
   }
  } else {
   if(i15<0.9985228776931763){
    if(i37<1.5756378173828125){
     s0+=447.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i58<-0.0032449536956846714){
     s0+=572.0;
     s1+=106.0;
    } else {
     s0+=102.0;
     s1+=244.0;
    }
   }
  }
 }
} else {
 if(i8<1.041278600692749){
  if(i2<0.07561656832695007){
   if(i3<3.355741500854492e-05){
    if(i34<0.0009322976693511009){
     s0+=112.0;
     s1+=13.0;
    } else {
     s0+=737.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.00018215971067547798){
     s0+=37.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=65.0;
    }
   }
  } else {
   if(i57<0.002461463212966919){
    if(i6<0.9985750913619995){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i14<-0.00011044740676879883){
   if(i5<0.09707686305046082){
    if(i29<0.038658127188682556){
     s0+=377.0;
     s1+=152.0;
    } else {
     s0+=9.0;
     s1+=106.0;
    }
   } else {
    if(i52<0.1363668143749237){
     s0+=13.0;
     s1+=565.0;
    } else {
     s0+=33.0;
     s1+=114.0;
    }
   }
  } else {
   if(i17<0.001949255121871829){
    if(i13<1.0118522644042969){
     s0+=184.0;
     s1+=4.0;
    } else {
     s1+=106.0;
    }
   } else {
    if(i2<0.0645466148853302){
     s0+=41.0;
     s1+=370.0;
    } else {
     s0+=36.0;
     s1+=9044.0;
    }
   }
  }
 }
}
if(i11<1.0080132484436035){
 if(i2<0.08200663328170776){
  if(i4<0.0006163120269775391){
   if(i8<1.0412344932556152){
    if(i42<0.00038125767605379224){
     s0+=46925.0;
     s1+=73.0;
    } else {
     s0+=12745.0;
     s1+=547.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=2545.0;
     s1+=879.0;
    } else {
     s0+=6053.0;
     s1+=381.0;
    }
   }
  } else {
   if(i52<0.003771066665649414){
    if(i42<0.0002558321866672486){
     s0+=46.0;
    } else {
     s0+=49.0;
     s1+=449.0;
    }
   } else {
    if(i19<0.0009665489196777344){
     s0+=99.0;
     s1+=20.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i15<0.9985071420669556){
   if(i65<4.3548658140935004e-05){
    if(i42<0.03988460451364517){
     s0+=410.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i16<0.9928604364395142){
     s1+=18.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i45<0.003945291042327881){
    if(i32<0.00044754683040082455){
     s0+=55.0;
     s1+=19.0;
    } else {
     s0+=148.0;
     s1+=2603.0;
    }
   } else {
    if(i27<0.030677715316414833){
     s0+=513.0;
     s1+=128.0;
    } else {
     s0+=100.0;
     s1+=900.0;
    }
   }
  }
 }
} else {
 if(i19<0.0014148354530334473){
  if(i73<1.0043258666992188){
   if(i19<0.0001678466796875){
    if(i53<0.0020697189029306173){
     s0+=721.0;
     s1+=418.0;
    } else {
     s0+=4.0;
     s1+=291.0;
    }
   } else {
    if(i36<1.1772923469543457){
     s0+=32.0;
     s1+=813.0;
    } else {
     s0+=509.0;
     s1+=678.0;
    }
   }
  } else {
   if(i30<1.0005431175231934){
    if(i1<0.27554887533187866){
     s0+=57.0;
     s1+=14.0;
    } else {
     s1+=80.0;
    }
   } else {
    if(i17<0.003274016547948122){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=883.0;
    }
   }
  }
 } else {
  if(i8<1.0364859104156494){
   if(i17<0.004275452811270952){
    s0+=3.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i61<0.00010471469431649894){
    if(i51<0.0025476866867393255){
     s0+=1.0;
     s1+=49.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   } else {
    if(i21<1.0197768211364746){
     s0+=4.0;
     s1+=1278.0;
    } else {
     s1+=6658.0;
    }
   }
  }
 }
}
if(i25<1.0088505744934082){
 if(i8<1.0452215671539307){
  if(i4<0.0005964040756225586){
   if(i64<-0.0012782514095306396){
    if(i34<0.00099138543009758){
     s0+=1297.0;
     s1+=454.0;
    } else {
     s0+=3021.0;
     s1+=111.0;
    }
   } else {
    if(i48<0.0305144265294075){
     s0+=54095.0;
     s1+=181.0;
    } else {
     s0+=3776.0;
     s1+=279.0;
    }
   }
  } else {
   if(i42<0.00028404570184648037){
    if(i79<-6.151199340820312e-05){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=103.0;
     s1+=1.0;
    }
   } else {
    if(i79<0.000996410846710205){
     s0+=5.0;
     s1+=193.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i73<1.0004658699035645){
   if(i5<0.08105689287185669){
    if(i0<0.08720758557319641){
     s0+=4238.0;
     s1+=545.0;
    } else {
     s0+=35.0;
     s1+=129.0;
    }
   } else {
    if(i34<0.005288185551762581){
     s0+=373.0;
     s1+=196.0;
    } else {
     s0+=19.0;
     s1+=473.0;
    }
   }
  } else {
   if(i51<0.0031415827106684446){
    if(i0<0.10112443566322327){
     s0+=1302.0;
     s1+=688.0;
    } else {
     s0+=87.0;
     s1+=707.0;
    }
   } else {
    if(i12<1.0003957748413086){
     s0+=291.0;
     s1+=843.0;
    } else {
     s0+=27.0;
     s1+=1261.0;
    }
   }
  }
 }
} else {
 if(i14<9.721517562866211e-05){
  if(i7<-2.9677585189347155e-05){
   if(i27<0.023399395868182182){
    if(i14<1.1920928955078125e-07){
     s0+=275.0;
     s1+=79.0;
    } else {
     s0+=91.0;
     s1+=304.0;
    }
   } else {
    if(i27<0.027650626376271248){
     s0+=21.0;
     s1+=88.0;
    } else {
     s0+=20.0;
     s1+=1275.0;
    }
   }
  } else {
   if(i17<0.005714733153581619){
    if(i27<0.03859679400920868){
     s0+=1545.0;
     s1+=109.0;
    } else {
     s0+=103.0;
     s1+=120.0;
    }
   } else {
    if(i23<1.2859160900115967){
     s1+=95.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i17<0.0022501572966575623){
   if(i23<1.0945417881011963){
    if(i61<0.00038767006481066346){
     s0+=3.0;
     s1+=229.0;
    } else {
     s0+=8.0;
     s1+=22.0;
    }
   } else {
    if(i44<-1.4695903701067436e-05){
     s1+=83.0;
    } else {
     s0+=217.0;
    }
   }
  } else {
   if(i1<0.06119003891944885){
    if(i46<0.00013339519500732422){
     s0+=38.0;
     s1+=2.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i68<1.117279225582024e-06){
     s0+=12.0;
     s1+=8719.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i5<0.07135769724845886){
 if(i0<0.07539111375808716){
  if(i3<4.035234451293945e-05){
   if(i60<-0.0024975836277008057){
    if(i28<1.0840110778808594){
     s0+=719.0;
    } else {
     s0+=1506.0;
     s1+=515.0;
    }
   } else {
    if(i47<0.00026842713123187423){
     s0+=53597.0;
     s1+=425.0;
    } else {
     s0+=12658.0;
     s1+=1015.0;
    }
   }
  } else {
   if(i38<1.0577372312545776){
    s0+=204.0;
   } else {
    if(i4<0.0009586215019226074){
     s0+=197.0;
     s1+=265.0;
    } else {
     s0+=54.0;
     s1+=750.0;
    }
   }
  }
 } else {
  if(i18<0.9954077005386353){
   if(i13<1.0090868473052979){
    s0+=101.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i41<0.04888296127319336){
    if(i6<0.9962928891181946){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1615.0;
    }
   } else {
    if(i6<1.002319574356079){
     s0+=84.0;
     s1+=27.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i19<0.000375211238861084){
  if(i0<0.11058551073074341){
   if(i54<0.9914661645889282){
    if(i32<0.0009531602845527232){
     s0+=32.0;
     s1+=24.0;
    } else {
     s0+=30.0;
     s1+=263.0;
    }
   } else {
    if(i43<0.01286613941192627){
     s0+=433.0;
     s1+=412.0;
    } else {
     s0+=730.0;
     s1+=54.0;
    }
   }
  } else {
   if(i7<-1.2715714547084644e-05){
    if(i29<0.02342073805630207){
     s0+=160.0;
     s1+=501.0;
    } else {
     s0+=23.0;
     s1+=2130.0;
    }
   } else {
    if(i10<1.0836379528045654){
     s0+=42.0;
     s1+=92.0;
    } else {
     s0+=367.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i2<0.09253799915313721){
   if(i46<0.0001310110092163086){
    if(i68<-3.8112548281787895e-06){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=68.0;
     s1+=3.0;
    }
   } else {
    if(i58<-0.004178982228040695){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=73.0;
    }
   }
  } else {
   if(i61<0.00013457515160553157){
    if(i4<0.00011906027793884277){
     s0+=41.0;
     s1+=5.0;
    } else {
     s1+=143.0;
    }
   } else {
    if(i17<0.002779207192361355){
     s0+=38.0;
     s1+=247.0;
    } else {
     s0+=2.0;
     s1+=8456.0;
    }
   }
  }
 }
}
if(i2<0.0816052258014679){
 if(i4<0.0007347464561462402){
  if(i59<0.01874484494328499){
   if(i9<0.00039005279541015625){
    if(i43<-0.00827452540397644){
     s0+=191.0;
     s1+=85.0;
    } else {
     s0+=50605.0;
     s1+=369.0;
    }
   } else {
    if(i11<1.008183240890503){
     s0+=615.0;
     s1+=57.0;
    } else {
     s0+=19.0;
     s1+=50.0;
    }
   }
  } else {
   if(i34<0.0010338600259274244){
    if(i46<-3.400444984436035e-05){
     s0+=2652.0;
     s1+=17.0;
    } else {
     s0+=1542.0;
     s1+=1136.0;
    }
   } else {
    if(i20<1.531839370727539e-05){
     s0+=12315.0;
     s1+=333.0;
    } else {
     s0+=1117.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i57<0.002801060676574707){
   if(i53<0.0007217754609882832){
    if(i56<0.006289249286055565){
     s0+=49.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i14<-7.992982864379883e-05){
     s0+=79.0;
     s1+=126.0;
    } else {
     s0+=15.0;
     s1+=671.0;
    }
   }
  } else {
   if(i38<1.2123806476593018){
    if(i52<0.0019658803939819336){
     s1+=12.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=71.0;
   }
  }
 }
} else {
 if(i19<0.00038677453994750977){
  if(i30<0.9987839460372925){
   if(i32<0.010985178872942924){
    if(i30<0.9987020492553711){
     s0+=387.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i2<0.11687108874320984){
    if(i63<0.02557682991027832){
     s0+=164.0;
     s1+=853.0;
    } else {
     s0+=616.0;
     s1+=255.0;
    }
   } else {
    if(i17<0.0016665514558553696){
     s0+=195.0;
     s1+=80.0;
    } else {
     s0+=175.0;
     s1+=2880.0;
    }
   }
  }
 } else {
  if(i6<1.0006294250488281){
   if(i29<0.013259315863251686){
    if(i11<1.0078861713409424){
     s0+=43.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i11<0.9884841442108154){
     s0+=11.0;
     s1+=5.0;
    } else {
     s1+=158.0;
    }
   }
  } else {
   if(i32<0.0018843271536752582){
    if(i38<1.2048285007476807){
     s0+=4.0;
     s1+=1344.0;
    } else {
     s0+=64.0;
     s1+=43.0;
    }
   } else {
    if(i3<2.6106834411621094e-05){
     s0+=17.0;
     s1+=64.0;
    } else {
     s1+=8502.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i23<1.0486011505126953){
  if(i15<1.0017242431640625){
   if(i64<-0.0013020038604736328){
    if(i6<0.9954357147216797){
     s0+=917.0;
     s1+=2.0;
    } else {
     s0+=874.0;
     s1+=232.0;
    }
   } else {
    if(i27<0.01736336387693882){
     s0+=49392.0;
     s1+=54.0;
    } else {
     s0+=4444.0;
     s1+=80.0;
    }
   }
  } else {
   if(i43<0.0013885796070098877){
    if(i73<1.0029072761535645){
     s0+=47.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=30.0;
    }
   } else {
    if(i33<0.001574091729708016){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=117.0;
    }
   }
  }
 } else {
  if(i12<1.005267858505249){
   if(i39<0.0017452617175877094){
    if(i0<0.06186407804489136){
     s0+=3172.0;
     s1+=621.0;
    } else {
     s0+=201.0;
     s1+=613.0;
    }
   } else {
    if(i6<1.0009214878082275){
     s0+=5579.0;
     s1+=271.0;
    } else {
     s0+=318.0;
     s1+=258.0;
    }
   }
  } else {
   if(i46<0.0001221299171447754){
    if(i4<0.00020292401313781738){
     s0+=72.0;
    } else {
     s0+=33.0;
     s1+=52.0;
    }
   } else {
    if(i17<0.0009959450690075755){
     s0+=4.0;
    } else {
     s0+=5.0;
     s1+=480.0;
    }
   }
  }
 }
} else {
 if(i5<0.09739476442337036){
  if(i7<-3.212269803043455e-05){
   if(i62<-0.015767347067594528){
    if(i52<0.052714645862579346){
     s0+=79.0;
     s1+=86.0;
    } else {
     s0+=258.0;
     s1+=21.0;
    }
   } else {
    if(i1<0.07047465443611145){
     s0+=576.0;
     s1+=613.0;
    } else {
     s0+=144.0;
     s1+=2656.0;
    }
   }
  } else {
   if(i42<0.002581188688054681){
    if(i0<0.06568750739097595){
     s0+=1547.0;
     s1+=235.0;
    } else {
     s0+=315.0;
     s1+=324.0;
    }
   } else {
    if(i76<-2.833576900229673e-06){
     s1+=27.0;
    } else {
     s0+=2134.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i0<0.16539782285690308){
   if(i63<0.05431258678436279){
    if(i52<0.09417805075645447){
     s0+=124.0;
     s1+=1208.0;
    } else {
     s0+=111.0;
     s1+=12.0;
    }
   } else {
    if(i38<1.0911403894424438){
     s0+=13.0;
     s1+=26.0;
    } else {
     s0+=298.0;
     s1+=23.0;
    }
   }
  } else {
   if(i17<0.004703739192336798){
    if(i62<-0.039298173040151596){
     s0+=248.0;
     s1+=81.0;
    } else {
     s0+=35.0;
     s1+=548.0;
    }
   } else {
    if(i3<-5.888938903808594e-05){
     s0+=19.0;
     s1+=54.0;
    } else {
     s1+=8458.0;
    }
   }
  }
 }
}
if(i2<0.08297458291053772){
 if(i14<0.00017267465591430664){
  if(i4<0.0005652904510498047){
   if(i27<0.01691431924700737){
    if(i64<-0.0013782680034637451){
     s0+=2611.0;
     s1+=419.0;
    } else {
     s0+=56724.0;
     s1+=355.0;
    }
   } else {
    if(i3<-1.5676021575927734e-05){
     s0+=8086.0;
     s1+=385.0;
    } else {
     s0+=1547.0;
     s1+=837.0;
    }
   }
  } else {
   if(i15<1.0011675357818604){
    if(i50<0.0011060838587582111){
     s0+=145.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i60<0.002937614917755127){
     s0+=137.0;
     s1+=529.0;
    } else {
     s0+=64.0;
    }
   }
  }
 } else {
  if(i38<1.0577372312545776){
   s0+=158.0;
  } else {
   if(i17<0.0019311923533678055){
    if(i33<0.0025736994575709105){
     s1+=5.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i18<0.9998660087585449){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=480.0;
    }
   }
  }
 }
} else {
 if(i9<-0.0004054605960845947){
  if(i28<1.4901387691497803){
   if(i9<-0.0004094839096069336){
    s0+=384.0;
   } else {
    if(i70<0.0015657686162739992){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i63<0.023312747478485107){
    s1+=12.0;
   } else {
    if(i64<-0.0007677674293518066){
     s1+=1.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i17<0.0018953131511807442){
   if(i31<0.04312467575073242){
    if(i55<0.999772310256958){
     s0+=6.0;
     s1+=226.0;
    } else {
     s0+=23.0;
     s1+=43.0;
    }
   } else {
    if(i4<0.0009481906890869141){
     s0+=583.0;
     s1+=123.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i7<3.2332150112779345e-06){
    if(i2<0.123960942029953){
     s0+=396.0;
     s1+=2168.0;
    } else {
     s0+=97.0;
     s1+=11360.0;
    }
   } else {
    if(i35<0.05646970868110657){
     s1+=21.0;
    } else {
     s0+=102.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i10<1.0452215671539307){
  if(i8<1.0433766841888428){
   if(i33<0.00035005330573767424){
    if(i33<0.0003263200633227825){
     s0+=35161.0;
    } else {
     s0+=415.0;
     s1+=4.0;
    }
   } else {
    if(i2<0.0825919508934021){
     s0+=25319.0;
     s1+=679.0;
    } else {
     s0+=152.0;
     s1+=164.0;
    }
   }
  } else {
   if(i27<0.017036180943250656){
    if(i22<0.9915143847465515){
     s0+=520.0;
     s1+=159.0;
    } else {
     s0+=2571.0;
     s1+=141.0;
    }
   } else {
    if(i38<1.1597959995269775){
     s0+=239.0;
     s1+=627.0;
    } else {
     s0+=627.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i2<0.09566336870193481){
   if(i34<0.0011285454966127872){
    if(i27<0.01486118696630001){
     s0+=1014.0;
     s1+=197.0;
    } else {
     s0+=248.0;
     s1+=441.0;
    }
   } else {
    if(i40<0.9463382363319397){
     s0+=231.0;
     s1+=133.0;
    } else {
     s0+=3039.0;
     s1+=248.0;
    }
   }
  } else {
   if(i62<-0.025753268972039223){
    if(i34<0.005270192865282297){
     s0+=605.0;
     s1+=78.0;
    } else {
     s0+=89.0;
     s1+=640.0;
    }
   } else {
    if(i68<1.7106601717387093e-06){
     s0+=211.0;
     s1+=1811.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
} else {
 if(i69<0.9991834163665771){
  s0+=181.0;
 } else {
  if(i6<1.0041769742965698){
   if(i0<0.1132650375366211){
    if(i33<0.0023200539872050285){
     s0+=3.0;
     s1+=374.0;
    } else {
     s0+=319.0;
     s1+=253.0;
    }
   } else {
    if(i27<0.03593781962990761){
     s0+=36.0;
     s1+=395.0;
    } else {
     s0+=3.0;
     s1+=960.0;
    }
   }
  } else {
   if(i79<-0.0035142600536346436){
    if(i14<-0.00044095516204833984){
     s0+=7.0;
    } else {
     s0+=24.0;
     s1+=946.0;
    }
   } else {
    if(i53<0.0016064343508332968){
     s0+=18.0;
     s1+=1535.0;
    } else {
     s0+=2.0;
     s1+=7269.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i0<0.0805407464504242){
  if(i47<0.00029787252424284816){
   if(i2<0.0827142596244812){
    if(i21<1.0082042217254639){
     s0+=55882.0;
     s1+=482.0;
    } else {
     s0+=431.0;
     s1+=79.0;
    }
   } else {
    if(i61<0.0005842359969392419){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=55.0;
    }
   }
  } else {
   if(i66<0.9763833284378052){
    if(i53<0.006434008479118347){
     s0+=5444.0;
     s1+=85.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   } else {
    if(i46<-3.5643577575683594e-05){
     s0+=3188.0;
     s1+=135.0;
    } else {
     s0+=4069.0;
     s1+=1304.0;
    }
   }
  }
 } else {
  if(i4<-0.0007873773574829102){
   if(i53<0.0045965746976435184){
    if(i50<0.0011959206312894821){
     s0+=432.0;
     s1+=27.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i39<0.020993374288082123){
     s0+=1.0;
     s1+=79.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i35<0.0668438971042633){
    if(i15<0.9983172416687012){
     s0+=18.0;
    } else {
     s0+=23.0;
     s1+=1369.0;
    }
   } else {
    if(i7<-1.3789427612209693e-05){
     s0+=450.0;
     s1+=1615.0;
    } else {
     s0+=600.0;
     s1+=144.0;
    }
   }
  }
 }
} else {
 if(i34<0.0003444966860115528){
  s0+=166.0;
 } else {
  if(i26<0.00017894848133437335){
   if(i46<0.00019782781600952148){
    s0+=51.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i7<-4.5621774916071445e-05){
    if(i29<0.020530397072434425){
     s0+=238.0;
     s1+=2532.0;
    } else {
     s0+=10.0;
     s1+=8805.0;
    }
   } else {
    if(i11<1.014089584350586){
     s0+=47.0;
     s1+=245.0;
    } else {
     s0+=119.0;
     s1+=56.0;
    }
   }
  }
 }
}
if(i75<0.054571304470300674){
 if(i22<1.008976697921753){
  if(i7<-4.9327805754728615e-05){
   if(i4<0.0005483031272888184){
    if(i6<0.9995394945144653){
     s0+=311.0;
     s1+=22.0;
    } else {
     s0+=68.0;
     s1+=60.0;
    }
   } else {
    if(i58<-0.004344198387116194){
     s0+=15.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=308.0;
    }
   }
  } else {
   if(i8<1.0451585054397583){
    if(i64<-0.001779317855834961){
     s0+=214.0;
     s1+=142.0;
    } else {
     s0+=54975.0;
     s1+=316.0;
    }
   } else {
    if(i36<1.1037919521331787){
     s0+=1174.0;
     s1+=415.0;
    } else {
     s0+=1534.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i5<0.04838302731513977){
   if(i2<0.058995723724365234){
    if(i74<2.3683391191298142e-05){
     s0+=4.0;
     s1+=32.0;
    } else {
     s0+=397.0;
     s1+=42.0;
    }
   } else {
    s1+=189.0;
   }
  } else {
   if(i19<0.00018030405044555664){
    if(i70<-8.653401164337993e-05){
     s0+=37.0;
     s1+=141.0;
    } else {
     s0+=103.0;
     s1+=57.0;
    }
   } else {
    if(i7<-4.110636655241251e-05){
     s0+=7.0;
     s1+=1278.0;
    } else {
     s0+=53.0;
     s1+=122.0;
    }
   }
  }
 }
} else {
 if(i7<-6.368265894707292e-05){
  if(i8<1.0413912534713745){
   if(i29<0.05968647450208664){
    if(i12<1.0040472745895386){
     s0+=823.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i1<0.05144202709197998){
    if(i19<-0.0007083117961883545){
     s0+=242.0;
     s1+=115.0;
    } else {
     s0+=13.0;
     s1+=112.0;
    }
   } else {
    if(i72<-0.0002046928129857406){
     s0+=70.0;
     s1+=9465.0;
    } else {
     s0+=134.0;
     s1+=1024.0;
    }
   }
  }
 } else {
  if(i1<0.08394724130630493){
   if(i38<1.1034480333328247){
    if(i46<-3.457069396972656e-05){
     s0+=1558.0;
     s1+=43.0;
    } else {
     s0+=1122.0;
     s1+=898.0;
    }
   } else {
    if(i76<-3.146646577079082e-06){
     s0+=10.0;
     s1+=30.0;
    } else {
     s0+=6797.0;
     s1+=240.0;
    }
   }
  } else {
   if(i46<-0.00013780593872070312){
    if(i30<0.9987963438034058){
     s0+=369.0;
    } else {
     s0+=64.0;
     s1+=13.0;
    }
   } else {
    if(i41<0.05835351347923279){
     s0+=64.0;
     s1+=1198.0;
    } else {
     s0+=884.0;
     s1+=824.0;
    }
   }
  }
 }
}
if(i14<0.00011497735977172852){
 if(i3<3.641843795776367e-05){
  if(i0<0.08023786544799805){
   if(i26<0.000287368253339082){
    if(i22<1.0084904432296753){
     s0+=52066.0;
     s1+=195.0;
    } else {
     s0+=143.0;
     s1+=92.0;
    }
   } else {
    if(i32<0.0014310486149042845){
     s0+=6299.0;
     s1+=1455.0;
    } else {
     s0+=9965.0;
     s1+=360.0;
    }
   }
  } else {
   if(i46<-0.00013685226440429688){
    if(i68<-2.356958248128649e-06){
     s0+=6.0;
     s1+=41.0;
    } else {
     s0+=433.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.02884378284215927){
     s0+=902.0;
     s1+=881.0;
    } else {
     s0+=161.0;
     s1+=1781.0;
    }
   }
  }
 } else {
  if(i29<0.008606929332017899){
   if(i56<0.009862628765404224){
    if(i11<0.9890732765197754){
     s0+=4.0;
     s1+=21.0;
    } else {
     s0+=282.0;
     s1+=11.0;
    }
   } else {
    if(i50<-2.6452893507666886e-05){
     s0+=7.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i5<0.12472736835479736){
    if(i28<1.613681674003601){
     s0+=56.0;
     s1+=863.0;
    } else {
     s0+=96.0;
     s1+=48.0;
    }
   } else {
    if(i0<0.15326741337776184){
     s0+=14.0;
     s1+=116.0;
    } else {
     s0+=5.0;
     s1+=1158.0;
    }
   }
  }
 }
} else {
 if(i2<0.06513780355453491){
  if(i6<1.0041282176971436){
   if(i81<0.00035308022052049637){
    if(i28<1.1386182308197021){
     s0+=130.0;
     s1+=45.0;
    } else {
     s0+=523.0;
     s1+=2.0;
    }
   } else {
    if(i60<-0.0016402602195739746){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=25.0;
     s1+=3.0;
    }
   }
  } else {
   if(i63<0.01023516058921814){
    s1+=164.0;
   } else {
    if(i28<1.175731897354126){
     s1+=11.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i37<1.0696141719818115){
   s0+=27.0;
  } else {
   if(i15<0.9986430406570435){
    s0+=3.0;
   } else {
    if(i3<6.0677528381347656e-05){
     s0+=61.0;
     s1+=1192.0;
    } else {
     s1+=8529.0;
    }
   }
  }
 }
}
if(i0<0.07800713181495667){
 if(i30<1.0005862712860107){
  if(i52<-0.02790290117263794){
   if(i20<-9.953975677490234e-06){
    if(i50<0.0004740760778076947){
     s0+=620.0;
    } else {
     s0+=368.0;
     s1+=34.0;
    }
   } else {
    if(i0<0.022097885608673096){
     s0+=933.0;
     s1+=151.0;
    } else {
     s0+=306.0;
     s1+=349.0;
    }
   }
  } else {
   if(i27<0.016020482406020164){
    if(i57<-0.0024103522300720215){
     s0+=1671.0;
     s1+=257.0;
    } else {
     s0+=52604.0;
     s1+=240.0;
    }
   } else {
    if(i13<0.9901387095451355){
     s0+=5767.0;
     s1+=29.0;
    } else {
     s0+=2389.0;
     s1+=756.0;
    }
   }
  }
 } else {
  if(i3<3.36766242980957e-05){
   if(i2<0.07795855402946472){
    if(i29<0.0604560449719429){
     s0+=4339.0;
     s1+=264.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i52<0.02855399250984192){
     s0+=8.0;
     s1+=51.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.0020958702079951763){
    if(i23<1.0365145206451416){
     s0+=1.0;
    } else {
     s1+=699.0;
    }
   } else {
    if(i3<8.147954940795898e-05){
     s0+=251.0;
     s1+=121.0;
    } else {
     s0+=23.0;
     s1+=285.0;
    }
   }
  }
 }
} else {
 if(i1<0.11897790431976318){
  if(i62<-0.01608305424451828){
   if(i45<0.0024149417877197266){
    if(i2<0.09219899773597717){
     s0+=64.0;
     s1+=5.0;
    } else {
     s0+=44.0;
     s1+=80.0;
    }
   } else {
    if(i37<1.0905632972717285){
     s0+=50.0;
     s1+=17.0;
    } else {
     s0+=539.0;
     s1+=11.0;
    }
   }
  } else {
   if(i63<0.03989008069038391){
    if(i32<0.00044877768959850073){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=202.0;
     s1+=1755.0;
    }
   } else {
    if(i3<1.9371509552001953e-05){
     s0+=178.0;
     s1+=33.0;
    } else {
     s0+=14.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i7<-1.2717222489300184e-05){
   if(i61<0.0001364046474918723){
    if(i43<0.040414124727249146){
     s0+=22.0;
     s1+=217.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i7<-4.1089359001489356e-05){
     s0+=69.0;
     s1+=10809.0;
    } else {
     s0+=114.0;
     s1+=668.0;
    }
   }
  } else {
   if(i3<-6.046891212463379e-05){
    s0+=203.0;
   } else {
    if(i71<1.0109126567840576){
     s0+=16.0;
     s1+=96.0;
    } else {
     s0+=225.0;
     s1+=113.0;
    }
   }
  }
 }
}
if(i15<1.0016283988952637){
 if(i9<8.45789909362793e-05){
  if(i25<1.0082769393920898){
   if(i1<0.08502736687660217){
    if(i23<1.0451585054397583){
     s0+=48678.0;
     s1+=174.0;
    } else {
     s0+=9804.0;
     s1+=825.0;
    }
   } else {
    if(i15<0.998518705368042){
     s0+=544.0;
     s1+=15.0;
    } else {
     s0+=291.0;
     s1+=821.0;
    }
   }
  } else {
   if(i4<5.885958671569824e-05){
    if(i7<-2.268231037305668e-05){
     s0+=134.0;
     s1+=369.0;
    } else {
     s0+=820.0;
     s1+=110.0;
    }
   } else {
    if(i17<0.0005320851923897862){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=648.0;
    }
   }
  }
 } else {
  if(i23<1.0469071865081787){
   if(i75<0.04638475179672241){
    if(i2<0.0766802430152893){
     s0+=5055.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=8.0;
    }
   } else {
    if(i34<0.0007993432227522135){
     s0+=61.0;
     s1+=63.0;
    } else {
     s0+=247.0;
    }
   }
  } else {
   if(i0<0.09164038300514221){
    if(i69<1.0001881122589111){
     s0+=2712.0;
     s1+=1032.0;
    } else {
     s0+=1184.0;
     s1+=33.0;
    }
   } else {
    if(i17<0.003209193702787161){
     s0+=327.0;
     s1+=263.0;
    } else {
     s0+=53.0;
     s1+=2278.0;
    }
   }
  }
 }
} else {
 if(i8<1.0644469261169434){
  if(i3<2.866983413696289e-05){
   if(i24<0.9179314374923706){
    if(i27<0.07934698462486267){
     s1+=9.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i36<1.154260277748108){
     s0+=41.0;
     s1+=25.0;
    } else {
     s0+=567.0;
     s1+=19.0;
    }
   }
  } else {
   if(i1<0.03648430109024048){
    if(i75<0.2529287338256836){
     s0+=27.0;
     s1+=45.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i65<1.2851051906181965e-05){
     s0+=24.0;
     s1+=810.0;
    } else {
     s0+=48.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i36<1.337784767150879){
   if(i9<0.0010689496994018555){
    if(i65<2.670886260602856e-06){
     s0+=28.0;
     s1+=866.0;
    } else {
     s0+=312.0;
     s1+=299.0;
    }
   } else {
    if(i37<1.4605737924575806){
     s0+=3.0;
     s1+=1199.0;
    } else {
     s0+=38.0;
     s1+=161.0;
    }
   }
  } else {
   if(i3<3.236532211303711e-05){
    if(i5<0.06594187021255493){
     s0+=22.0;
     s1+=22.0;
    } else {
     s1+=130.0;
    }
   } else {
    if(i29<0.020190998911857605){
     s0+=38.0;
     s1+=414.0;
    } else {
     s0+=4.0;
     s1+=6412.0;
    }
   }
  }
 }
}
if(i3<3.427267074584961e-05){
 if(i26<0.00030955878901295364){
  if(i0<0.09028220176696777){
   if(i22<1.0089316368103027){
    if(i57<-0.004633128643035889){
     s0+=6.0;
     s1+=34.0;
    } else {
     s0+=53370.0;
     s1+=223.0;
    }
   } else {
    if(i4<0.0001646876335144043){
     s0+=112.0;
     s1+=8.0;
    } else {
     s0+=30.0;
     s1+=108.0;
    }
   }
  } else {
   if(i20<-1.0162591934204102e-05){
    s0+=19.0;
   } else {
    if(i61<0.00010822110198205337){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=61.0;
    }
   }
  }
 } else {
  if(i2<0.08524009585380554){
   if(i38<1.1036889553070068){
    if(i37<1.081458568572998){
     s0+=2743.0;
     s1+=131.0;
    } else {
     s0+=1792.0;
     s1+=1269.0;
    }
   } else {
    if(i53<0.006415048614144325){
     s0+=10958.0;
     s1+=342.0;
    } else {
     s0+=8.0;
     s1+=36.0;
    }
   }
  } else {
   if(i15<0.9985091686248779){
    if(i68<-3.2137083962879842e-06){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=372.0;
     s1+=2.0;
    }
   } else {
    if(i29<0.024667814373970032){
     s0+=792.0;
     s1+=1616.0;
    } else {
     s0+=129.0;
     s1+=1439.0;
    }
   }
  }
 }
} else {
 if(i38<1.0590304136276245){
  s0+=453.0;
 } else {
  if(i29<0.01683548092842102){
   if(i37<1.2261788845062256){
    if(i32<0.004199328366667032){
     s0+=3.0;
     s1+=1572.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i3<8.70823860168457e-05){
     s0+=385.0;
     s1+=154.0;
    } else {
     s0+=40.0;
     s1+=498.0;
    }
   }
  } else {
   if(i29<0.023330170661211014){
    if(i12<0.999404788017273){
     s0+=47.0;
     s1+=50.0;
    } else {
     s0+=9.0;
     s1+=840.0;
    }
   } else {
    if(i6<1.001115322113037){
     s0+=11.0;
     s1+=49.0;
    } else {
     s0+=3.0;
     s1+=8511.0;
    }
   }
  }
 }
}
if(i15<1.0016309022903442){
 if(i8<1.0452277660369873){
  if(i2<0.08564743399620056){
   if(i16<0.9768483638763428){
    if(i0<0.04139348864555359){
     s0+=2079.0;
     s1+=95.0;
    } else {
     s0+=95.0;
     s1+=83.0;
    }
   } else {
    if(i50<0.0002529277990106493){
     s0+=52429.0;
     s1+=255.0;
    } else {
     s0+=7098.0;
     s1+=413.0;
    }
   }
  } else {
   if(i4<-0.0008641183376312256){
    if(i5<0.09448733925819397){
     s0+=80.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i36<1.0698697566986084){
     s0+=27.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=232.0;
    }
   }
  }
 } else {
  if(i32<0.000511038233526051){
   if(i4<0.00020563602447509766){
    if(i53<0.0010303582530468702){
     s0+=2002.0;
     s1+=21.0;
    } else {
     s0+=548.0;
     s1+=122.0;
    }
   } else {
    if(i65<2.3818815861886833e-06){
     s0+=139.0;
    } else {
     s1+=142.0;
    }
   }
  } else {
   if(i2<0.07964327931404114){
    if(i36<1.103413462638855){
     s0+=301.0;
     s1+=632.0;
    } else {
     s0+=3853.0;
     s1+=292.0;
    }
   } else {
    if(i45<0.004472315311431885){
     s0+=253.0;
     s1+=2979.0;
    } else {
     s0+=840.0;
     s1+=1614.0;
    }
   }
  }
 }
} else {
 if(i14<-9.077787399291992e-05){
  if(i55<1.001997470855713){
   if(i23<1.1260733604431152){
    if(i32<0.007757608778774738){
     s0+=150.0;
     s1+=203.0;
    } else {
     s0+=90.0;
     s1+=2.0;
    }
   } else {
    if(i5<0.0005112588405609131){
     s0+=42.0;
     s1+=19.0;
    } else {
     s0+=47.0;
     s1+=679.0;
    }
   }
  } else {
   if(i23<1.1357983350753784){
    if(i12<1.0038440227508545){
     s0+=616.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i5<0.024325400590896606){
     s0+=57.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i9<0.0004292130470275879){
   s0+=56.0;
  } else {
   if(i17<0.001786623033694923){
    if(i13<1.01192045211792){
     s0+=75.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i6<1.0019726753234863){
     s0+=23.0;
     s1+=35.0;
    } else {
     s0+=74.0;
     s1+=9120.0;
    }
   }
  }
 }
}
if(i0<0.07800713181495667){
 if(i19<0.0011493265628814697){
  if(i23<1.0485899448394775){
   if(i42<0.00028952278080396354){
    if(i78<-0.000990360975265503){
     s0+=53.0;
     s1+=7.0;
    } else {
     s0+=44590.0;
     s1+=16.0;
    }
   } else {
    if(i4<0.00010323524475097656){
     s0+=11307.0;
     s1+=268.0;
    } else {
     s0+=50.0;
     s1+=53.0;
    }
   }
  } else {
   if(i4<0.00048601627349853516){
    if(i0<0.05878058075904846){
     s0+=11502.0;
     s1+=998.0;
    } else {
     s0+=1543.0;
     s1+=654.0;
    }
   } else {
    if(i52<0.028416931629180908){
     s0+=152.0;
     s1+=586.0;
    } else {
     s0+=69.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i39<0.0022444475907832384){
   if(i28<1.2651259899139404){
    s1+=577.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i18<1.0054746866226196){
    if(i52<-0.13168871402740479){
     s1+=1.0;
    } else {
     s0+=123.0;
    }
   } else {
    s1+=60.0;
   }
  }
 }
} else {
 if(i19<0.000698477029800415){
  if(i31<0.049091637134552){
   if(i27<0.008081244304776192){
    if(i57<-0.004929155111312866){
     s0+=3.0;
     s1+=55.0;
    } else {
     s0+=83.0;
     s1+=33.0;
    }
   } else {
    if(i69<0.9981650114059448){
     s0+=35.0;
    } else {
     s0+=96.0;
     s1+=2874.0;
    }
   }
  } else {
   if(i27<0.03917916119098663){
    if(i2<0.1129104495048523){
     s0+=815.0;
     s1+=86.0;
    } else {
     s0+=509.0;
     s1+=371.0;
    }
   } else {
    if(i32<0.0017408013809472322){
     s0+=180.0;
     s1+=86.0;
    } else {
     s0+=57.0;
     s1+=1031.0;
    }
   }
  }
 } else {
  if(i19<0.001422107219696045){
   if(i30<0.9990279674530029){
    s0+=8.0;
   } else {
    if(i3<2.4437904357910156e-06){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=41.0;
     s1+=1191.0;
    }
   }
  } else {
   s1+=8064.0;
  }
 }
}
if(i5<0.06995061039924622){
 if(i20<2.473592758178711e-05){
  if(i66<1.0065865516662598){
   if(i70<0.000672705820761621){
    if(i1<0.0837060809135437){
     s0+=58369.0;
     s1+=627.0;
    } else {
     s0+=148.0;
     s1+=253.0;
    }
   } else {
    if(i13<0.9884151220321655){
     s0+=5382.0;
     s1+=160.0;
    } else {
     s0+=2621.0;
     s1+=1070.0;
    }
   }
  } else {
   if(i38<1.083398699760437){
    if(i34<0.0012167308013886213){
     s0+=44.0;
     s1+=445.0;
    } else {
     s0+=55.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.08629202842712402){
     s0+=1567.0;
     s1+=99.0;
    } else {
     s0+=9.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i13<1.0001318454742432){
   if(i71<0.9807193279266357){
    if(i14<-0.0003777146339416504){
     s0+=143.0;
     s1+=39.0;
    } else {
     s0+=27.0;
     s1+=228.0;
    }
   } else {
    if(i1<0.09117934107780457){
     s0+=516.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=15.0;
    }
   }
  } else {
   if(i15<1.0019969940185547){
    if(i43<-0.004843384027481079){
     s1+=12.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i55<1.00313138961792){
     s0+=4.0;
     s1+=1205.0;
    } else {
     s0+=10.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i2<0.10955452919006348){
  if(i70<0.0031576186884194613){
   if(i19<0.0005005598068237305){
    if(i35<0.058950603008270264){
     s0+=103.0;
     s1+=267.0;
    } else {
     s0+=1271.0;
     s1+=260.0;
    }
   } else {
    if(i38<1.2095597982406616){
     s0+=26.0;
     s1+=302.0;
    } else {
     s0+=56.0;
     s1+=11.0;
    }
   }
  } else {
   if(i3<-4.374980926513672e-05){
    if(i44<-1.5457590052392334e-05){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i52<0.06421700119972229){
     s0+=1.0;
     s1+=230.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i30<0.9987116456031799){
   if(i18<0.9985702037811279){
    s0+=197.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i14<0.00010859966278076172){
    if(i7<-1.4286095392890275e-05){
     s0+=226.0;
     s1+=3219.0;
    } else {
     s0+=300.0;
     s1+=211.0;
    }
   } else {
    if(i3<-1.6391277313232422e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=8138.0;
    }
   }
  }
 }
}
if(i18<1.0027947425842285){
 if(i10<1.0452277660369873){
  if(i64<-0.0014188587665557861){
   if(i13<0.9850653409957886){
    if(i0<0.06319522857666016){
     s0+=2337.0;
     s1+=30.0;
    } else {
     s0+=74.0;
     s1+=31.0;
    }
   } else {
    if(i37<1.0703742504119873){
     s0+=688.0;
    } else {
     s0+=1134.0;
     s1+=825.0;
    }
   }
  } else {
   if(i8<1.042891263961792){
    if(i5<0.08771228790283203){
     s0+=56683.0;
     s1+=335.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    if(i48<0.03647225350141525){
     s0+=2999.0;
     s1+=323.0;
    } else {
     s0+=323.0;
     s1+=342.0;
    }
   }
  }
 } else {
  if(i7<-3.034742985619232e-05){
   if(i39<0.009701361879706383){
    if(i69<0.999924898147583){
     s0+=171.0;
     s1+=1593.0;
    } else {
     s0+=705.0;
     s1+=549.0;
    }
   } else {
    if(i19<-0.0036656558513641357){
     s0+=48.0;
     s1+=45.0;
    } else {
     s0+=6.0;
     s1+=1532.0;
    }
   }
  } else {
   if(i0<0.09212127327919006){
    if(i27<0.02165444940328598){
     s0+=2989.0;
     s1+=155.0;
    } else {
     s0+=673.0;
     s1+=251.0;
    }
   } else {
    if(i7<-1.229697409144137e-05){
     s0+=147.0;
     s1+=428.0;
    } else {
     s0+=644.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i19<-0.0017128586769104004){
  if(i5<0.10030871629714966){
   if(i15<1.0024149417877197){
    if(i56<0.01457348745316267){
     s0+=732.0;
     s1+=3.0;
    } else {
     s0+=45.0;
     s1+=28.0;
    }
   } else {
    if(i51<0.004585766699165106){
     s0+=96.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=79.0;
    }
   }
  } else {
   if(i69<0.9998503923416138){
    if(i49<0.00013751073856838048){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i0<0.12335032224655151){
     s0+=4.0;
     s1+=29.0;
    } else {
     s1+=295.0;
    }
   }
  }
 } else {
  if(i42<0.0002484052674844861){
   if(i25<1.0079314708709717){
    s0+=117.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i2<0.06511244177818298){
    if(i53<0.000978470197878778){
     s0+=105.0;
     s1+=27.0;
    } else {
     s0+=96.0;
     s1+=437.0;
    }
   } else {
    if(i3<4.07099723815918e-05){
     s0+=130.0;
     s1+=446.0;
    } else {
     s0+=47.0;
     s1+=9260.0;
    }
   }
  }
 }
}
if(i4<0.0005480647087097168){
 if(i24<1.0398095846176147){
  if(i8<1.0433766841888428){
   if(i38<1.0557184219360352){
    if(i50<0.0004684734740294516){
     s0+=41060.0;
    } else {
     s0+=360.0;
     s1+=2.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=2556.0;
     s1+=644.0;
    } else {
     s0+=16341.0;
     s1+=180.0;
    }
   }
  } else {
   if(i1<0.07548260688781738){
    if(i36<1.1037919521331787){
     s0+=1815.0;
     s1+=622.0;
    } else {
     s0+=3923.0;
     s1+=236.0;
    }
   } else {
    if(i76<9.599541954230517e-06){
     s0+=104.0;
     s1+=944.0;
    } else {
     s0+=66.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i33<0.005768990144133568){
   if(i78<0.000622093677520752){
    if(i0<0.09148871898651123){
     s0+=2071.0;
     s1+=212.0;
    } else {
     s0+=566.0;
     s1+=593.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=405.0;
     s1+=864.0;
    } else {
     s0+=881.0;
     s1+=149.0;
    }
   }
  } else {
   if(i67<0.13205185532569885){
    if(i2<0.10942631959915161){
     s0+=351.0;
     s1+=24.0;
    } else {
     s0+=33.0;
     s1+=308.0;
    }
   } else {
    if(i19<-0.005478531122207642){
     s0+=31.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=617.0;
    }
   }
  }
 }
} else {
 if(i23<1.0413084030151367){
  if(i73<1.0026613473892212){
   s0+=185.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i21<1.020892858505249){
   if(i17<0.002261590911075473){
    if(i39<0.0012773876078426838){
     s1+=57.0;
    } else {
     s0+=164.0;
     s1+=21.0;
    }
   } else {
    if(i12<1.000957727432251){
     s0+=173.0;
     s1+=877.0;
    } else {
     s0+=60.0;
     s1+=3610.0;
    }
   }
  } else {
   if(i72<-0.0005780617939308286){
    s1+=6101.0;
   } else {
    if(i77<-0.003460364881902933){
     s0+=10.0;
     s1+=57.0;
    } else {
     s0+=1.0;
     s1+=956.0;
    }
   }
  }
 }
}
if(i21<1.0066382884979248){
 if(i2<0.08429723978042603){
  if(i70<0.0007947626290842891){
   if(i10<1.0406912565231323){
    if(i48<0.029191989451646805){
     s0+=53979.0;
     s1+=165.0;
    } else {
     s0+=3129.0;
     s1+=233.0;
    }
   } else {
    if(i32<0.001878030481748283){
     s0+=1928.0;
     s1+=414.0;
    } else {
     s0+=1613.0;
     s1+=29.0;
    }
   }
  } else {
   if(i9<0.0005257129669189453){
    if(i34<0.0009841069113463163){
     s0+=1102.0;
     s1+=720.0;
    } else {
     s0+=5898.0;
     s1+=288.0;
    }
   } else {
    if(i65<1.313726170337759e-05){
     s0+=41.0;
     s1+=361.0;
    } else {
     s0+=344.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i18<0.9960038065910339){
   if(i34<0.005521802231669426){
    if(i24<1.0410500764846802){
     s0+=90.0;
     s1+=10.0;
    } else {
     s0+=203.0;
    }
   } else {
    if(i23<1.1182818412780762){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=138.0;
    }
   }
  } else {
   if(i17<0.003933731932193041){
    if(i52<0.06765896081924438){
     s0+=118.0;
     s1+=715.0;
    } else {
     s0+=382.0;
     s1+=97.0;
    }
   } else {
    if(i1<0.1246977150440216){
     s0+=178.0;
     s1+=645.0;
    } else {
     s0+=21.0;
     s1+=2094.0;
    }
   }
  }
 }
} else {
 if(i53<0.0010161087848246098){
  if(i1<0.08372092247009277){
   if(i38<1.0862454175949097){
    if(i4<4.8786401748657227e-05){
     s0+=97.0;
    } else {
     s0+=13.0;
     s1+=201.0;
    }
   } else {
    if(i56<0.012802217155694962){
     s0+=1052.0;
     s1+=4.0;
    } else {
     s0+=128.0;
     s1+=22.0;
    }
   }
  } else {
   if(i12<1.001875877380371){
    if(i43<0.015959620475769043){
     s0+=35.0;
     s1+=195.0;
    } else {
     s0+=286.0;
     s1+=42.0;
    }
   } else {
    if(i7<-3.436041151871905e-05){
     s0+=16.0;
     s1+=1001.0;
    } else {
     s0+=46.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i9<-0.0002983212471008301){
   if(i1<0.5677661895751953){
    s0+=163.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i2<0.06546372175216675){
    if(i32<0.001637579989619553){
     s1+=165.0;
    } else {
     s0+=186.0;
     s1+=62.0;
    }
   } else {
    if(i42<0.0002354330208618194){
     s0+=3.0;
    } else {
     s0+=106.0;
     s1+=9298.0;
    }
   }
  }
 }
}
if(i4<0.0005469322204589844){
 if(i10<1.0452277660369873){
  if(i75<0.04684862494468689){
   if(i2<0.08909755945205688){
    if(i7<-3.898822978953831e-05){
     s0+=661.0;
     s1+=116.0;
    } else {
     s0+=55015.0;
     s1+=430.0;
    }
   } else {
    if(i23<1.045006275177002){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=174.0;
    }
   }
  } else {
   if(i36<1.1842045783996582){
    if(i32<0.00042832072358578444){
     s0+=2100.0;
     s1+=42.0;
    } else {
     s0+=1180.0;
     s1+=1044.0;
    }
   } else {
    if(i56<0.014189890585839748){
     s0+=5668.0;
     s1+=101.0;
    } else {
     s0+=260.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i17<0.004970043897628784){
   if(i0<0.09219792485237122){
    if(i36<1.1037919521331787){
     s0+=1095.0;
     s1+=499.0;
    } else {
     s0+=2954.0;
     s1+=128.0;
    }
   } else {
    if(i7<-1.1867206922033802e-05){
     s0+=284.0;
     s1+=860.0;
    } else {
     s0+=599.0;
     s1+=134.0;
    }
   }
  } else {
   if(i0<0.09746581315994263){
    if(i45<0.003755420446395874){
     s0+=173.0;
     s1+=430.0;
    } else {
     s0+=287.0;
     s1+=13.0;
    }
   } else {
    if(i6<0.9951910972595215){
     s0+=30.0;
     s1+=52.0;
    } else {
     s0+=23.0;
     s1+=1495.0;
    }
   }
  }
 }
} else {
 if(i1<0.06269580125808716){
  if(i64<-0.0010471343994140625){
   if(i24<1.0303938388824463){
    if(i13<0.9839475154876709){
     s0+=12.0;
     s1+=26.0;
    } else {
     s0+=8.0;
     s1+=271.0;
    }
   } else {
    if(i45<-0.004759311676025391){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=55.0;
     s1+=23.0;
    }
   }
  } else {
   if(i17<0.0023417454212903976){
    if(i65<5.419693934527459e-06){
     s0+=231.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i55<0.9981509447097778){
     s0+=34.0;
    } else {
     s0+=28.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i74<0.0005491364281624556){
   if(i1<0.131856769323349){
    if(i52<0.05580854415893555){
     s0+=72.0;
     s1+=1796.0;
    } else {
     s0+=114.0;
     s1+=20.0;
    }
   } else {
    if(i61<0.00044293011887930334){
     s0+=28.0;
     s1+=1797.0;
    } else {
     s0+=1.0;
     s1+=7631.0;
    }
   }
  } else {
   s0+=13.0;
  }
 }
}
if(i1<0.08502998948097229){
 if(i3<4.178285598754883e-05){
  if(i26<0.00031641291570849717){
   if(i57<-0.0046111345291137695){
    if(i23<1.0358704328536987){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   } else {
    if(i22<1.0089378356933594){
     s0+=53755.0;
     s1+=224.0;
    } else {
     s0+=152.0;
     s1+=116.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i38<1.067455530166626){
     s0+=2430.0;
     s1+=123.0;
    } else {
     s0+=862.0;
     s1+=1115.0;
    }
   } else {
    if(i56<0.009942641481757164){
     s0+=10124.0;
     s1+=239.0;
    } else {
     s0+=1563.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i30<1.0004217624664307){
   if(i56<0.014136482030153275){
    if(i55<1.0003330707550049){
     s0+=252.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i4<0.0009762048721313477){
    if(i33<0.002005533315241337){
     s1+=168.0;
    } else {
     s0+=202.0;
     s1+=73.0;
    }
   } else {
    if(i28<1.594835877418518){
     s0+=9.0;
     s1+=627.0;
    } else {
     s0+=44.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i9<-0.00038823485374450684){
  if(i44<-8.897824955056421e-06){
   if(i68<-4.891553544439375e-06){
    s0+=34.0;
   } else {
    if(i67<0.06466993689537048){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i53<0.0002323282533325255){
    if(i46<-6.979703903198242e-05){
     s0+=20.0;
    } else {
     s1+=6.0;
    }
   } else {
    s0+=554.0;
   }
  }
 } else {
  if(i4<0.00047600269317626953){
   if(i31<0.04517880082130432){
    if(i8<1.031445026397705){
     s0+=11.0;
     s1+=17.0;
    } else {
     s0+=61.0;
     s1+=1817.0;
    }
   } else {
    if(i7<-2.276855957461521e-05){
     s0+=304.0;
     s1+=937.0;
    } else {
     s0+=694.0;
     s1+=240.0;
    }
   }
  } else {
   if(i14<6.258487701416016e-06){
    if(i11<0.9956350326538086){
     s0+=1.0;
     s1+=572.0;
    } else {
     s0+=125.0;
     s1+=665.0;
    }
   } else {
    if(i39<0.0003294789930805564){
     s0+=3.0;
    } else {
     s0+=44.0;
     s1+=9650.0;
    }
   }
  }
 }
}
if(i7<-8.095601515378803e-05){
 if(i0<0.0553431510925293){
  if(i19<2.0563602447509766e-05){
   if(i6<1.0022058486938477){
    if(i52<-0.11926010251045227){
     s0+=6.0;
     s1+=18.0;
    } else {
     s0+=574.0;
     s1+=24.0;
    }
   } else {
    if(i69<1.0007638931274414){
     s0+=25.0;
     s1+=95.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   s1+=123.0;
  }
 } else {
  if(i32<0.0004927521804347634){
   s0+=74.0;
  } else {
   if(i55<1.0046932697296143){
    if(i0<0.13068589568138123){
     s0+=75.0;
     s1+=1256.0;
    } else {
     s0+=8.0;
     s1+=9221.0;
    }
   } else {
    if(i74<0.00012092462566215545){
     s0+=28.0;
    } else {
     s0+=9.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i25<1.0069892406463623){
  if(i2<0.08200076222419739){
   if(i51<0.0017440550727769732){
    if(i27<0.015743816271424294){
     s0+=54329.0;
     s1+=277.0;
    } else {
     s0+=7367.0;
     s1+=571.0;
    }
   } else {
    if(i6<1.0012121200561523){
     s0+=4838.0;
     s1+=728.0;
    } else {
     s0+=95.0;
     s1+=303.0;
    }
   }
  } else {
   if(i15<0.9985139966011047){
    if(i34<0.009224174544215202){
     s0+=351.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   } else {
    if(i1<0.12461459636688232){
     s0+=446.0;
     s1+=782.0;
    } else {
     s0+=64.0;
     s1+=878.0;
    }
   }
  }
 } else {
  if(i17<0.0033467491157352924){
   if(i59<0.020959118381142616){
    if(i36<1.1040980815887451){
     s0+=239.0;
     s1+=530.0;
    } else {
     s0+=326.0;
     s1+=8.0;
    }
   } else {
    if(i46<2.384185791015625e-06){
     s0+=408.0;
     s1+=208.0;
    } else {
     s0+=1553.0;
     s1+=54.0;
    }
   }
  } else {
   if(i46<-0.00021973252296447754){
    s0+=232.0;
   } else {
    if(i14<-9.456276893615723e-05){
     s0+=167.0;
     s1+=242.0;
    } else {
     s0+=20.0;
     s1+=1570.0;
    }
   }
  }
 }
}
if(i15<1.0016478300094604){
 if(i50<-8.565046300645918e-05){
  if(i11<1.0108230113983154){
   if(i23<1.1239335536956787){
    if(i17<0.0017407862469553947){
     s0+=106.0;
    } else {
     s0+=42.0;
     s1+=219.0;
    }
   } else {
    if(i33<0.0038937809877097607){
     s0+=286.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  } else {
   if(i15<0.998266339302063){
    s0+=21.0;
   } else {
    if(i55<1.001360535621643){
     s0+=31.0;
     s1+=1421.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i0<0.08401688933372498){
   if(i23<1.0451585054397583){
    if(i57<-0.0022437572479248047){
     s0+=1622.0;
     s1+=146.0;
    } else {
     s0+=52235.0;
     s1+=101.0;
    }
   } else {
    if(i32<0.001446463051252067){
     s0+=6810.0;
     s1+=1686.0;
    } else {
     s0+=7503.0;
     s1+=259.0;
    }
   }
  } else {
   if(i6<0.9959814548492432){
    if(i61<0.00165609794203192){
     s0+=364.0;
     s1+=28.0;
    } else {
     s0+=4.0;
     s1+=68.0;
    }
   } else {
    if(i60<0.0042029619216918945){
     s0+=171.0;
     s1+=1862.0;
    } else {
     s0+=611.0;
     s1+=1048.0;
    }
   }
  }
 }
} else {
 if(i55<1.0018062591552734){
  if(i14<-0.00013881921768188477){
   if(i8<1.1191260814666748){
    if(i1<0.11516305804252625){
     s0+=283.0;
     s1+=119.0;
    } else {
     s0+=12.0;
     s1+=125.0;
    }
   } else {
    if(i77<0.0001526527776150033){
     s1+=375.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  } else {
   if(i4<0.0003727078437805176){
    if(i42<0.0004029017291031778){
     s0+=61.0;
    } else {
     s0+=7.0;
     s1+=14.0;
    }
   } else {
    if(i47<0.00014852994354441762){
     s0+=45.0;
     s1+=11.0;
    } else {
     s0+=44.0;
     s1+=8973.0;
    }
   }
  }
 } else {
  if(i19<-5.608797073364258e-05){
   if(i5<0.12070563435554504){
    if(i23<1.136263370513916){
     s0+=669.0;
     s1+=84.0;
    } else {
     s0+=58.0;
     s1+=100.0;
    }
   } else {
    if(i68<-7.689761332585476e-06){
     s0+=2.0;
     s1+=176.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i53<0.001739234197884798){
    s0+=7.0;
   } else {
    s1+=358.0;
   }
  }
 }
}
if(i5<0.07194694876670837){
 if(i8<1.0452277660369873){
  if(i2<0.0808405876159668){
   if(i6<1.0025427341461182){
    if(i23<1.0451585054397583){
     s0+=53902.0;
     s1+=205.0;
    } else {
     s0+=7936.0;
     s1+=556.0;
    }
   } else {
    if(i38<1.125725507736206){
     s1+=94.0;
    } else {
     s0+=64.0;
     s1+=12.0;
    }
   }
  } else {
   if(i9<-0.00035831332206726074){
    s0+=73.0;
   } else {
    if(i23<1.0428379774093628){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i1<0.07879266142845154){
   if(i6<1.0026586055755615){
    if(i7<-2.5833811378106475e-05){
     s0+=1553.0;
     s1+=596.0;
    } else {
     s0+=5178.0;
     s1+=452.0;
    }
   } else {
    if(i46<0.0001500546932220459){
     s0+=56.0;
     s1+=48.0;
    } else {
     s0+=70.0;
     s1+=639.0;
    }
   }
  } else {
   if(i46<-0.00014704465866088867){
    s0+=86.0;
   } else {
    if(i41<0.05132356286048889){
     s0+=41.0;
     s1+=1802.0;
    } else {
     s0+=64.0;
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i13<1.0069503784179688){
  if(i2<0.10798698663711548){
   if(i31<0.04216885566711426){
    if(i43<0.012918353080749512){
     s0+=42.0;
     s1+=509.0;
    } else {
     s0+=49.0;
     s1+=14.0;
    }
   } else {
    if(i52<0.05858302116394043){
     s0+=576.0;
     s1+=246.0;
    } else {
     s0+=517.0;
     s1+=15.0;
    }
   }
  } else {
   if(i9<-0.000563889741897583){
    if(i37<1.434314250946045){
     s0+=235.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i63<0.046299874782562256){
     s0+=139.0;
     s1+=2827.0;
    } else {
     s0+=378.0;
     s1+=640.0;
    }
   }
  }
 } else {
  if(i12<1.002604365348816){
   if(i61<0.0002083292492898181){
    if(i55<0.9996246695518494){
     s0+=7.0;
     s1+=10.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i17<0.0016727057518437505){
     s0+=5.0;
    } else {
     s1+=851.0;
    }
   }
  } else {
   if(i2<0.0854177474975586){
    if(i54<1.0341718196868896){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i7<-2.3488857550546527e-05){
     s0+=7.0;
     s1+=7435.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i0<0.07742848992347717){
 if(i12<1.0052721500396729){
  if(i6<1.0024691820144653){
   if(i18<1.0007879734039307){
    if(i2<0.06922087073326111){
     s0+=62131.0;
     s1+=1034.0;
    } else {
     s0+=1366.0;
     s1+=370.0;
    }
   } else {
    if(i42<0.00026138199609704316){
     s0+=2519.0;
     s1+=16.0;
    } else {
     s0+=2470.0;
     s1+=632.0;
    }
   }
  } else {
   if(i29<0.008945170789957047){
    if(i49<7.234105396491941e-06){
     s0+=101.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=46.0;
    }
   } else {
    if(i32<0.00895933248102665){
     s0+=8.0;
     s1+=239.0;
    } else {
     s0+=43.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i44<-1.3820774256600998e-05){
   if(i6<1.000061273574829){
    s0+=6.0;
   } else {
    if(i60<0.003677964210510254){
     s0+=7.0;
     s1+=801.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i60<-0.003151118755340576){
    if(i17<0.00018830451881513){
     s0+=7.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i28<1.1386182308197021){
     s1+=11.0;
    } else {
     s0+=345.0;
    }
   }
  }
 }
} else {
 if(i14<3.2007694244384766e-05){
  if(i63<0.028018534183502197){
   if(i30<0.9985982179641724){
    s0+=115.0;
   } else {
    if(i50<0.00018682755762711167){
     s0+=188.0;
     s1+=403.0;
    } else {
     s0+=90.0;
     s1+=2188.0;
    }
   }
  } else {
   if(i72<-0.00044214673107489944){
    if(i44<-1.5827605238882825e-05){
     s0+=6.0;
     s1+=341.0;
    } else {
     s0+=157.0;
     s1+=131.0;
    }
   } else {
    if(i27<0.02883165329694748){
     s0+=825.0;
     s1+=216.0;
    } else {
     s0+=215.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i37<1.0670123100280762){
   s0+=24.0;
  } else {
   if(i4<0.00016379356384277344){
    if(i7<-2.2424439521273598e-05){
     s0+=35.0;
     s1+=248.0;
    } else {
     s0+=90.0;
     s1+=12.0;
    }
   } else {
    if(i1<0.10156497359275818){
     s0+=49.0;
     s1+=478.0;
    } else {
     s0+=33.0;
     s1+=9822.0;
    }
   }
  }
 }
}
if(i9<0.0004342198371887207){
 if(i1<0.08776459097862244){
  if(i48<0.025264542549848557){
   if(i51<0.0019586049020290375){
    if(i50<-0.00010407192894490436){
     s0+=44.0;
     s1+=60.0;
    } else {
     s0+=55146.0;
     s1+=423.0;
    }
   } else {
    if(i16<0.9874632954597473){
     s0+=242.0;
     s1+=192.0;
    } else {
     s0+=909.0;
     s1+=55.0;
    }
   }
  } else {
   if(i39<0.0016952457372099161){
    if(i1<0.06339579820632935){
     s0+=3012.0;
     s1+=593.0;
    } else {
     s0+=314.0;
     s1+=479.0;
    }
   } else {
    if(i10<1.0404493808746338){
     s0+=6051.0;
     s1+=56.0;
    } else {
     s0+=1931.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i7<-1.4053511222300585e-05){
   if(i20<-1.6868114471435547e-05){
    if(i11<0.9876821041107178){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.00018015503883361816){
     s0+=267.0;
     s1+=3371.0;
    } else {
     s0+=83.0;
     s1+=129.0;
    }
   }
  } else {
   if(i46<-0.00013780593872070312){
    s0+=606.0;
   } else {
    if(i31<0.05201062560081482){
     s0+=56.0;
     s1+=208.0;
    } else {
     s0+=472.0;
     s1+=99.0;
    }
   }
  }
 }
} else {
 if(i7<-6.869484786875546e-05){
  if(i13<0.9832628965377808){
   if(i74<0.0002215120621258393){
    if(i59<0.3806348443031311){
     s0+=254.0;
     s1+=19.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i29<0.04079253971576691){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=157.0;
    }
   }
  } else {
   if(i11<1.005810260772705){
    if(i2<0.09697628021240234){
     s0+=166.0;
     s1+=347.0;
    } else {
     s0+=36.0;
     s1+=1384.0;
    }
   } else {
    if(i6<1.00339937210083){
     s0+=32.0;
     s1+=337.0;
    } else {
     s0+=9.0;
     s1+=7999.0;
    }
   }
  }
 } else {
  if(i8<1.044576644897461){
   if(i74<8.373221498914063e-05){
    if(i36<1.1602129936218262){
     s0+=1.0;
     s1+=89.0;
    } else {
     s0+=82.0;
     s1+=23.0;
    }
   } else {
    if(i1<0.06924504041671753){
     s0+=495.0;
     s1+=5.0;
    } else {
     s0+=43.0;
     s1+=9.0;
    }
   }
  } else {
   if(i17<0.004706195555627346){
    if(i32<0.0014722789637744427){
     s0+=8.0;
     s1+=53.0;
    } else {
     s0+=448.0;
     s1+=72.0;
    }
   } else {
    if(i49<9.625966777093709e-05){
     s1+=600.0;
    } else {
     s0+=256.0;
     s1+=272.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i27<0.02196298912167549){
  if(i2<0.07775354385375977){
   if(i64<-0.0013585090637207031){
    if(i28<1.100754976272583){
     s0+=1119.0;
     s1+=425.0;
    } else {
     s0+=2218.0;
     s1+=111.0;
    }
   } else {
    if(i30<1.0003981590270996){
     s0+=54479.0;
     s1+=273.0;
    } else {
     s0+=4387.0;
     s1+=215.0;
    }
   }
  } else {
   if(i45<0.004225313663482666){
    if(i23<1.0485899448394775){
     s0+=268.0;
     s1+=21.0;
    } else {
     s0+=296.0;
     s1+=910.0;
    }
   } else {
    if(i0<0.1548229157924652){
     s0+=550.0;
     s1+=30.0;
    } else {
     s0+=121.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i8<1.041234016418457){
   if(i19<-0.001534193754196167){
    if(i2<0.10001632571220398){
     s0+=4420.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i36<1.0703742504119873){
     s0+=369.0;
     s1+=1.0;
    } else {
     s0+=169.0;
     s1+=259.0;
    }
   }
  } else {
   if(i46<-0.00013905763626098633){
    if(i68<-2.780142949632136e-06){
     s0+=14.0;
     s1+=62.0;
    } else {
     s0+=626.0;
     s1+=4.0;
    }
   } else {
    if(i66<0.9737504720687866){
     s0+=441.0;
     s1+=270.0;
    } else {
     s0+=939.0;
     s1+=2852.0;
    }
   }
  }
 }
} else {
 if(i69<0.998744785785675){
  s0+=141.0;
 } else {
  if(i2<0.06512784957885742){
   if(i44<-1.4669136362499557e-05){
    if(i60<6.189942359924316e-05){
     s0+=49.0;
     s1+=504.0;
    } else {
     s0+=69.0;
     s1+=27.0;
    }
   } else {
    if(i9<0.0006071329116821289){
     s0+=119.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i5<0.15210279822349548){
    if(i45<0.007075607776641846){
     s0+=90.0;
     s1+=3932.0;
    } else {
     s0+=93.0;
     s1+=72.0;
    }
   } else {
    if(i17<0.002981447149068117){
     s0+=7.0;
     s1+=76.0;
    } else {
     s0+=1.0;
     s1+=7124.0;
    }
   }
  }
 }
}
if(i18<1.0025955438613892){
 if(i2<0.08304375410079956){
  if(i8<1.0451608896255493){
   if(i23<1.0451585054397583){
    if(i16<0.9893176555633545){
     s0+=11797.0;
     s1+=133.0;
    } else {
     s0+=42279.0;
     s1+=56.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=1815.0;
     s1+=447.0;
    } else {
     s0+=5486.0;
     s1+=98.0;
    }
   }
  } else {
   if(i28<1.1013743877410889){
    if(i34<0.0002946359745692462){
     s0+=922.0;
    } else {
     s0+=726.0;
     s1+=884.0;
    }
   } else {
    if(i71<0.9889218807220459){
     s0+=1448.0;
     s1+=266.0;
    } else {
     s0+=3669.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i7<-1.229697409144137e-05){
   if(i17<0.004777717404067516){
    if(i31<0.05027127265930176){
     s0+=37.0;
     s1+=965.0;
    } else {
     s0+=397.0;
     s1+=330.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=39.0;
     s1+=2405.0;
    } else {
     s0+=61.0;
     s1+=231.0;
    }
   }
  } else {
   if(i24<1.0459182262420654){
    if(i3<-4.83393669128418e-05){
     s0+=131.0;
     s1+=2.0;
    } else {
     s0+=35.0;
     s1+=173.0;
    }
   } else {
    if(i38<1.2552803754806519){
     s0+=482.0;
     s1+=108.0;
    } else {
     s0+=279.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i6<1.002506971359253){
  if(i66<0.961368203163147){
   if(i10<1.0645925998687744){
    if(i0<0.09870311617851257){
     s0+=696.0;
     s1+=7.0;
    } else {
     s1+=23.0;
    }
   } else {
    s1+=71.0;
   }
  } else {
   if(i8<1.0438144207000732){
    if(i2<0.10124450922012329){
     s0+=289.0;
     s1+=37.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i23<1.22279691696167){
     s0+=356.0;
     s1+=586.0;
    } else {
     s0+=12.0;
     s1+=286.0;
    }
   }
  }
 } else {
  if(i14<0.00021260976791381836){
   if(i17<0.0021798061206936836){
    if(i76<4.060832452523755e-07){
     s0+=100.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i14<-0.00010353326797485352){
     s0+=70.0;
     s1+=414.0;
    } else {
     s0+=27.0;
     s1+=1919.0;
    }
   }
  } else {
   s1+=7472.0;
  }
 }
}
if(i8<1.0527000427246094){
 if(i9<0.0007097721099853516){
  if(i1<0.08345785737037659){
   if(i70<0.0006765673751942813){
    if(i25<1.0084065198898315){
     s0+=56655.0;
     s1+=380.0;
    } else {
     s0+=165.0;
     s1+=127.0;
    }
   } else {
    if(i34<0.0009969263337552547){
     s0+=1410.0;
     s1+=656.0;
    } else {
     s0+=5080.0;
     s1+=107.0;
    }
   }
  } else {
   if(i9<-0.00038805603981018066){
    if(i71<1.0152506828308105){
     s0+=334.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i58<-0.005094357766211033){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=104.0;
     s1+=553.0;
    }
   }
  }
 } else {
  if(i69<1.0004792213439941){
   if(i65<1.540321136417333e-05){
    if(i39<0.0003484608023427427){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=257.0;
    }
   } else {
    if(i57<-0.026663750410079956){
     s1+=15.0;
    } else {
     s0+=35.0;
     s1+=7.0;
    }
   }
  } else {
   if(i68<-1.515262556495145e-05){
    s1+=6.0;
   } else {
    s0+=93.0;
   }
  }
 }
} else {
 if(i11<1.010773777961731){
  if(i5<0.07536935806274414){
   if(i3<2.008676528930664e-05){
    if(i36<1.103413462638855){
     s0+=1030.0;
     s1+=655.0;
    } else {
     s0+=3813.0;
     s1+=325.0;
    }
   } else {
    if(i33<0.0024538831785321236){
     s0+=22.0;
     s1+=464.0;
    } else {
     s0+=273.0;
     s1+=398.0;
    }
   }
  } else {
   if(i9<0.00016549229621887207){
    if(i39<0.010472793132066727){
     s0+=832.0;
     s1+=505.0;
    } else {
     s1+=198.0;
    }
   } else {
    if(i2<0.12484747171401978){
     s0+=318.0;
     s1+=486.0;
    } else {
     s0+=42.0;
     s1+=1958.0;
    }
   }
  }
 } else {
  if(i2<0.08273869752883911){
   if(i38<1.1528830528259277){
    if(i71<0.9527808427810669){
     s0+=25.0;
    } else {
     s0+=14.0;
     s1+=311.0;
    }
   } else {
    if(i30<1.0012288093566895){
     s0+=384.0;
     s1+=31.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i53<0.0010815572459250689){
    if(i62<-0.04195619374513626){
     s0+=125.0;
     s1+=30.0;
    } else {
     s0+=116.0;
     s1+=1225.0;
    }
   } else {
    if(i30<0.998694658279419){
     s0+=11.0;
    } else {
     s0+=46.0;
     s1+=8520.0;
    }
   }
  }
 }
}
if(i15<1.0016424655914307){
 if(i25<1.0080935955047607){
  if(i51<0.00202825665473938){
   if(i8<1.0450963973999023){
    if(i50<0.0002713090507313609){
     s0+=53029.0;
     s1+=257.0;
    } else {
     s0+=6363.0;
     s1+=369.0;
    }
   } else {
    if(i7<-1.4396669030247722e-05){
     s0+=993.0;
     s1+=882.0;
    } else {
     s0+=2618.0;
     s1+=237.0;
    }
   }
  } else {
   if(i2<0.06132185459136963){
    if(i33<0.0008592181839048862){
     s0+=1134.0;
     s1+=457.0;
    } else {
     s0+=3089.0;
     s1+=164.0;
    }
   } else {
    if(i6<0.9965460300445557){
     s0+=288.0;
     s1+=72.0;
    } else {
     s0+=167.0;
     s1+=879.0;
    }
   }
  }
 } else {
  if(i7<-3.35324220941402e-05){
   if(i2<0.0647607147693634){
    if(i39<0.001178476493805647){
     s0+=2.0;
     s1+=91.0;
    } else {
     s0+=202.0;
     s1+=17.0;
    }
   } else {
    if(i30<0.9988730549812317){
     s0+=27.0;
     s1+=15.0;
    } else {
     s0+=100.0;
     s1+=2758.0;
    }
   }
  } else {
   if(i36<1.1016805171966553){
    if(i32<0.0005345605895854533){
     s0+=378.0;
     s1+=54.0;
    } else {
     s0+=28.0;
     s1+=220.0;
    }
   } else {
    if(i46<2.345442771911621e-05){
     s0+=606.0;
     s1+=173.0;
    } else {
     s0+=1081.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i23<1.065220594406128){
  if(i55<1.001992106437683){
   if(i4<0.0003727078437805176){
    if(i69<1.0003132820129395){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=110.0;
    }
   } else {
    if(i53<0.0007472488796338439){
     s0+=29.0;
    } else {
     s0+=8.0;
     s1+=251.0;
    }
   }
  } else {
   if(i65<8.377653102797922e-06){
    s1+=12.0;
   } else {
    s0+=376.0;
   }
  }
 } else {
  if(i19<-0.002378016710281372){
   if(i28<1.5608327388763428){
    if(i0<0.029260843992233276){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=167.0;
    }
   } else {
    if(i29<0.036857426166534424){
     s0+=303.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=102.0;
    }
   }
  } else {
   if(i3<6.216764450073242e-05){
    if(i61<0.0007011718698777258){
     s0+=183.0;
     s1+=195.0;
    } else {
     s0+=83.0;
     s1+=553.0;
    }
   } else {
    if(i0<0.04738306999206543){
     s0+=41.0;
     s1+=259.0;
    } else {
     s0+=55.0;
     s1+=8694.0;
    }
   }
  }
 }
}
if(i6<1.002413034439087){
 if(i11<1.0081498622894287){
  if(i0<0.07753235101699829){
   if(i64<-0.0013702213764190674){
    if(i39<0.001696474850177765){
     s0+=1523.0;
     s1+=675.0;
    } else {
     s0+=4062.0;
     s1+=267.0;
    }
   } else {
    if(i10<1.0410094261169434){
     s0+=58756.0;
     s1+=398.0;
    } else {
     s0+=4045.0;
     s1+=486.0;
    }
   }
  } else {
   if(i50<0.0008459375821985304){
    if(i9<-0.0003828704357147217){
     s0+=375.0;
     s1+=6.0;
    } else {
     s0+=821.0;
     s1+=1166.0;
    }
   } else {
    if(i2<0.09268447756767273){
     s0+=52.0;
     s1+=53.0;
    } else {
     s0+=51.0;
     s1+=807.0;
    }
   }
  }
 } else {
  if(i7<-3.319251845823601e-05){
   if(i7<-4.4891850848216563e-05){
    if(i0<0.07972559332847595){
     s0+=41.0;
     s1+=149.0;
    } else {
     s0+=8.0;
     s1+=1062.0;
    }
   } else {
    if(i13<1.0113787651062012){
     s0+=65.0;
     s1+=285.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i15<1.0001024007797241){
    if(i37<1.2534937858581543){
     s0+=138.0;
     s1+=279.0;
    } else {
     s0+=157.0;
     s1+=22.0;
    }
   } else {
    if(i53<0.0017892990726977587){
     s0+=732.0;
     s1+=42.0;
    } else {
     s0+=4.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022614020854234695){
  if(i13<1.0138674974441528){
   if(i68<-5.272103408060502e-06){
    if(i74<0.00010713074880186468){
     s1+=52.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i18<0.997645378112793){
     s1+=1.0;
    } else {
     s0+=253.0;
    }
   }
  } else {
   s1+=162.0;
  }
 } else {
  if(i55<1.0020452737808228){
   if(i1<0.1314406394958496){
    if(i36<1.2524442672729492){
     s0+=9.0;
     s1+=1532.0;
    } else {
     s0+=79.0;
     s1+=498.0;
    }
   } else {
    if(i18<0.994940996170044){
     s0+=2.0;
     s1+=42.0;
    } else {
     s1+=8478.0;
    }
   }
  } else {
   if(i46<0.00023695826530456543){
    s0+=29.0;
   } else {
    if(i69<1.0007619857788086){
     s0+=27.0;
     s1+=445.0;
    } else {
     s0+=14.0;
    }
   }
  }
 }
}
if(i1<0.08262783288955688){
 if(i3<3.844499588012695e-05){
  if(i27<0.014130311086773872){
   if(i13<1.0056347846984863){
    if(i26<0.00030706622055731714){
     s0+=49607.0;
     s1+=129.0;
    } else {
     s0+=6321.0;
     s1+=340.0;
    }
   } else {
    if(i17<0.0016366876661777496){
     s0+=217.0;
     s1+=35.0;
    } else {
     s0+=63.0;
     s1+=80.0;
    }
   }
  } else {
   if(i9<-6.383657455444336e-05){
    if(i19<-0.001540154218673706){
     s0+=5855.0;
     s1+=35.0;
    } else {
     s0+=2968.0;
     s1+=303.0;
    }
   } else {
    if(i67<0.050716791301965714){
     s0+=1849.0;
     s1+=931.0;
    } else {
     s0+=1669.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i30<0.9994523525238037){
   s0+=282.0;
  } else {
   if(i53<0.0009754727361723781){
    if(i68<-4.902162800135557e-06){
     s0+=1.0;
     s1+=47.0;
    } else {
     s0+=120.0;
     s1+=11.0;
    }
   } else {
    if(i52<0.011753737926483154){
     s0+=59.0;
     s1+=874.0;
    } else {
     s0+=81.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i6<0.9965496063232422){
  if(i20<-1.3440847396850586e-05){
   if(i30<0.9992927312850952){
    if(i7<-3.5323344491189346e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=564.0;
    }
   } else {
    if(i1<0.149776428937912){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  } else {
   if(i16<0.9888879060745239){
    if(i62<-0.03313137963414192){
     s0+=17.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=96.0;
    }
   } else {
    if(i16<1.020963191986084){
     s0+=123.0;
     s1+=13.0;
    } else {
     s1+=32.0;
    }
   }
  }
 } else {
  if(i7<-2.1078027202747762e-05){
   if(i6<1.003801941871643){
    if(i62<-0.01866796240210533){
     s0+=371.0;
     s1+=1298.0;
    } else {
     s0+=188.0;
     s1+=2665.0;
    }
   } else {
    if(i19<0.00015026330947875977){
     s0+=16.0;
     s1+=526.0;
    } else {
     s0+=1.0;
     s1+=8753.0;
    }
   }
  } else {
   if(i31<0.04549941420555115){
    if(i40<1.0204823017120361){
     s0+=24.0;
     s1+=402.0;
    } else {
     s0+=36.0;
     s1+=38.0;
    }
   } else {
    if(i0<0.29738447070121765){
     s0+=692.0;
     s1+=177.0;
    } else {
     s0+=27.0;
     s1+=78.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i15<1.0019803047180176){
  if(i0<0.07720842957496643){
   if(i22<1.0084904432296753){
    if(i64<-0.0011665523052215576){
     s0+=4913.0;
     s1+=626.0;
    } else {
     s0+=58705.0;
     s1+=481.0;
    }
   } else {
    if(i34<0.0011702963383868337){
     s0+=45.0;
     s1+=196.0;
    } else {
     s0+=236.0;
     s1+=11.0;
    }
   }
  } else {
   if(i46<-0.0002550184726715088){
    if(i21<0.9947630763053894){
     s0+=128.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i6<0.9969298839569092){
     s0+=149.0;
     s1+=36.0;
    } else {
     s0+=134.0;
     s1+=689.0;
    }
   }
  }
 } else {
  if(i12<0.9989616274833679){
   if(i65<1.0527222912060097e-05){
    s1+=26.0;
   } else {
    if(i44<-4.655463635572232e-05){
     s1+=1.0;
    } else {
     s0+=262.0;
     s1+=6.0;
    }
   }
  } else {
   if(i55<1.0029748678207397){
    if(i59<0.0029993043281137943){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=419.0;
    }
   } else {
    if(i76<-2.0367372144391993e-06){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=26.0;
    }
   }
  }
 }
} else {
 if(i0<0.08505553007125854){
  if(i6<1.0023305416107178){
   if(i37<1.1037919521331787){
    if(i37<1.0850647687911987){
     s0+=452.0;
     s1+=64.0;
    } else {
     s0+=406.0;
     s1+=533.0;
    }
   } else {
    if(i40<0.9566731452941895){
     s0+=686.0;
     s1+=213.0;
    } else {
     s0+=3349.0;
     s1+=176.0;
    }
   }
  } else {
   if(i44<-1.4088049283600412e-05){
    if(i28<1.5682398080825806){
     s0+=30.0;
     s1+=939.0;
    } else {
     s0+=70.0;
     s1+=70.0;
    }
   } else {
    if(i33<0.002306431531906128){
     s1+=17.0;
    } else {
     s0+=74.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i15<0.998540461063385){
   if(i42<0.04387877136468887){
    if(i68<-3.996231498604175e-06){
     s1+=4.0;
    } else {
     s0+=290.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i4<0.0005714297294616699){
    if(i69<0.9998688697814941){
     s0+=164.0;
     s1+=1528.0;
    } else {
     s0+=677.0;
     s1+=1238.0;
    }
   } else {
    if(i29<0.020760778337717056){
     s0+=108.0;
     s1+=1508.0;
    } else {
     s0+=2.0;
     s1+=8541.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i5<0.07541719079017639){
  if(i51<0.001818748889490962){
   if(i21<1.0082213878631592){
    if(i10<1.037574291229248){
     s0+=57462.0;
     s1+=528.0;
    } else {
     s0+=3260.0;
     s1+=340.0;
    }
   } else {
    if(i2<0.06293892860412598){
     s0+=150.0;
     s1+=43.0;
    } else {
     s0+=9.0;
     s1+=140.0;
    }
   }
  } else {
   if(i38<1.1792536973953247){
    if(i37<1.0703742504119873){
     s0+=1021.0;
    } else {
     s0+=767.0;
     s1+=805.0;
    }
   } else {
    if(i20<2.288818359375e-05){
     s0+=2240.0;
     s1+=42.0;
    } else {
     s0+=132.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i41<0.05356264114379883){
   if(i76<7.618702966283308e-06){
    if(i17<0.0007832419942133129){
     s0+=2.0;
    } else {
     s0+=12.0;
     s1+=489.0;
    }
   } else {
    if(i1<0.08684450387954712){
     s0+=10.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i18<0.9975537061691284){
    if(i1<0.09378039836883545){
     s0+=85.0;
    } else {
     s0+=14.0;
     s1+=17.0;
    }
   } else {
    if(i14<-0.0003705918788909912){
     s0+=42.0;
     s1+=5.0;
    } else {
     s0+=36.0;
     s1+=117.0;
    }
   }
  }
 }
} else {
 if(i2<0.0879223644733429){
  if(i6<1.002455234527588){
   if(i17<0.004447288811206818){
    if(i12<1.0007872581481934){
     s0+=3283.0;
     s1+=308.0;
    } else {
     s0+=496.0;
     s1+=175.0;
    }
   } else {
    if(i58<-0.0037180609069764614){
     s0+=382.0;
     s1+=64.0;
    } else {
     s0+=242.0;
     s1+=353.0;
    }
   }
  } else {
   if(i57<0.0038135647773742676){
    if(i69<1.0007697343826294){
     s0+=67.0;
     s1+=694.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i29<0.019452635198831558){
     s0+=104.0;
     s1+=14.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i30<0.9988973140716553){
   if(i42<0.03967240825295448){
    s0+=267.0;
   } else {
    s1+=13.0;
   }
  } else {
   if(i17<0.0017401630757376552){
    if(i13<1.0120426416397095){
     s0+=494.0;
     s1+=123.0;
    } else {
     s0+=4.0;
     s1+=125.0;
    }
   } else {
    if(i19<3.1113624572753906e-05){
     s0+=408.0;
     s1+=2547.0;
    } else {
     s0+=44.0;
     s1+=10146.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i35<0.0626521110534668){
  if(i34<0.0003041226009372622){
   if(i46<0.00010436773300170898){
    s0+=33792.0;
   } else {
    if(i23<1.0566685199737549){
     s0+=3021.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i0<0.07754018902778625){
    if(i32<0.0006616181926801801){
     s0+=8357.0;
     s1+=1422.0;
    } else {
     s0+=23064.0;
     s1+=568.0;
    }
   } else {
    if(i36<1.0670123100280762){
     s0+=70.0;
     s1+=4.0;
    } else {
     s0+=66.0;
     s1+=1291.0;
    }
   }
  }
 } else {
  if(i17<0.004976483527570963){
   if(i46<-0.00013941526412963867){
    if(i32<0.0017638379940763116){
     s0+=445.0;
    } else {
     s0+=39.0;
     s1+=11.0;
    }
   } else {
    if(i69<0.9998793601989746){
     s0+=378.0;
     s1+=483.0;
    } else {
     s0+=995.0;
     s1+=364.0;
    }
   }
  } else {
   if(i4<-0.0007450580596923828){
    if(i36<1.4310393333435059){
     s0+=112.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=84.0;
    }
   } else {
    if(i29<0.013800812885165215){
     s0+=79.0;
     s1+=74.0;
    } else {
     s0+=64.0;
     s1+=1083.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019894546130672097){
  if(i65<2.752795353444526e-06){
   if(i22<1.020193099975586){
    s0+=222.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=15.0;
  }
 } else {
  if(i2<0.06265565752983093){
   if(i43<-3.316998481750488e-05){
    if(i62<-0.009564599953591824){
     s0+=35.0;
     s1+=7.0;
    } else {
     s0+=76.0;
     s1+=442.0;
    }
   } else {
    if(i32<0.0018251992296427488){
     s0+=15.0;
     s1+=19.0;
    } else {
     s0+=72.0;
     s1+=1.0;
    }
   }
  } else {
   if(i17<0.0023749331012368202){
    if(i4<0.0009639263153076172){
     s0+=53.0;
     s1+=23.0;
    } else {
     s1+=171.0;
    }
   } else {
    if(i17<0.008376318961381912){
     s0+=108.0;
     s1+=2934.0;
    } else {
     s0+=20.0;
     s1+=8136.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i4<0.0006017386913299561){
  if(i50<0.00025689019821584225){
   if(i54<1.0130295753479004){
    if(i16<1.0102570056915283){
     s0+=54885.0;
     s1+=503.0;
    } else {
     s0+=91.0;
     s1+=67.0;
    }
   } else {
    if(i1<0.08383318781852722){
     s0+=170.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=105.0;
    }
   }
  } else {
   if(i2<0.08101001381874084){
    if(i12<0.9944708347320557){
     s0+=7840.0;
     s1+=100.0;
    } else {
     s0+=2056.0;
     s1+=772.0;
    }
   } else {
    if(i46<-0.0004997551441192627){
     s0+=52.0;
    } else {
     s0+=81.0;
     s1+=347.0;
    }
   }
  }
 } else {
  if(i44<-1.4875710803607944e-05){
   if(i1<0.0032632052898406982){
    if(i79<-0.006478846073150635){
     s0+=8.0;
     s1+=4.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i48<0.23546969890594482){
     s0+=2.0;
     s1+=699.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  } else {
   if(i2<0.06480488181114197){
    if(i55<1.00142240524292){
     s0+=134.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i55<0.9977645874023438){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i1<0.09206587076187134){
  if(i3<3.36766242980957e-05){
   if(i6<0.9982036352157593){
    if(i38<1.4296212196350098){
     s0+=1846.0;
     s1+=79.0;
    } else {
     s0+=7.0;
     s1+=22.0;
    }
   } else {
    if(i36<1.1040980815887451){
     s0+=751.0;
     s1+=592.0;
    } else {
     s0+=1631.0;
     s1+=206.0;
    }
   }
  } else {
   if(i64<0.00213015079498291){
    if(i32<0.010707319714128971){
     s0+=59.0;
     s1+=711.0;
    } else {
     s0+=59.0;
     s1+=28.0;
    }
   } else {
    if(i36<1.1675405502319336){
     s1+=18.0;
    } else {
     s0+=119.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i20<-1.4901161193847656e-05){
   if(i65<4.3286567233735695e-05){
    if(i15<0.9988174438476562){
     s0+=301.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i68<-1.1623608315858291e-06){
     s1+=9.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i4<0.0004904568195343018){
    if(i31<0.05406886339187622){
     s0+=44.0;
     s1+=1568.0;
    } else {
     s0+=787.0;
     s1+=907.0;
    }
   } else {
    if(i13<1.0062626600265503){
     s0+=109.0;
     s1+=1662.0;
    } else {
     s0+=7.0;
     s1+=8701.0;
    }
   }
  }
 }
}
if(i7<-7.076530164340511e-05){
 if(i1<0.06416741013526917){
  if(i13<0.9965699911117554){
   if(i43<-0.040355831384658813){
    if(i15<1.0022430419921875){
     s0+=144.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=87.0;
    }
   } else {
    if(i8<1.043454647064209){
     s0+=592.0;
     s1+=5.0;
    } else {
     s0+=162.0;
     s1+=52.0;
    }
   }
  } else {
   if(i61<0.0002144223835784942){
    if(i19<0.0011317133903503418){
     s0+=21.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i32<0.00036318800994195044){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i23<1.0583630800247192){
   if(i21<0.99870765209198){
    s0+=64.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i7<-0.00010131296585313976){
    if(i6<1.0050907135009766){
     s0+=39.0;
     s1+=1511.0;
    } else {
     s0+=2.0;
     s1+=7821.0;
    }
   } else {
    if(i0<0.09740227460861206){
     s0+=100.0;
     s1+=528.0;
    } else {
     s0+=22.0;
     s1+=1332.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005640387535095215){
  if(i47<0.0003222454688511789){
   if(i8<1.0451608896255493){
    if(i79<-0.0015383362770080566){
     s0+=1963.0;
     s1+=163.0;
    } else {
     s0+=52707.0;
     s1+=292.0;
    }
   } else {
    if(i25<1.0082159042358398){
     s0+=2239.0;
     s1+=219.0;
    } else {
     s0+=467.0;
     s1+=286.0;
    }
   }
  } else {
   if(i0<0.08145442605018616){
    if(i4<-0.00029027462005615234){
     s0+=7540.0;
     s1+=397.0;
    } else {
     s0+=3304.0;
     s1+=1059.0;
    }
   } else {
    if(i58<-0.005180803127586842){
     s0+=975.0;
     s1+=671.0;
    } else {
     s0+=325.0;
     s1+=1485.0;
    }
   }
  }
 } else {
  if(i30<0.9994998574256897){
   s0+=108.0;
  } else {
   if(i61<0.0005235046846792102){
    if(i2<0.06448769569396973){
     s0+=142.0;
     s1+=33.0;
    } else {
     s0+=88.0;
     s1+=284.0;
    }
   } else {
    if(i38<1.165069580078125){
     s1+=618.0;
    } else {
     s0+=26.0;
     s1+=118.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i1<0.08254918456077576){
  if(i6<1.0024687051773071){
   if(i8<1.0401114225387573){
    if(i11<1.0092363357543945){
     s0+=58450.0;
     s1+=499.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i38<1.0598037242889404){
     s0+=2305.0;
     s1+=13.0;
    } else {
     s0+=3040.0;
     s1+=642.0;
    }
   }
  } else {
   if(i26<0.00018719921354204416){
    if(i74<5.14252096763812e-05){
     s1+=22.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i78<0.0009288787841796875){
     s0+=6.0;
     s1+=233.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i55<0.9974774122238159){
   s0+=287.0;
  } else {
   if(i23<1.0483191013336182){
    if(i57<-0.0031197667121887207){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=171.0;
     s1+=30.0;
    }
   } else {
    if(i67<0.07883387804031372){
     s0+=80.0;
     s1+=860.0;
    } else {
     s0+=42.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i2<0.08725184202194214){
  if(i14<0.00014275312423706055){
   if(i4<0.0005860328674316406){
    if(i7<-1.996380160562694e-05){
     s0+=1663.0;
     s1+=573.0;
    } else {
     s0+=3400.0;
     s1+=304.0;
    }
   } else {
    if(i8<1.1223218441009521){
     s0+=148.0;
     s1+=243.0;
    } else {
     s1+=132.0;
    }
   }
  } else {
   if(i9<0.0005119442939758301){
    if(i36<1.1814327239990234){
     s1+=75.0;
    } else {
     s0+=83.0;
     s1+=2.0;
    }
   } else {
    s1+=490.0;
   }
  }
 } else {
  if(i7<-1.4545135854859836e-05){
   if(i7<-4.793042899109423e-05){
    if(i2<0.11704188585281372){
     s0+=112.0;
     s1+=892.0;
    } else {
     s0+=33.0;
     s1+=10658.0;
    }
   } else {
    if(i71<1.0327913761138916){
     s0+=65.0;
     s1+=886.0;
    } else {
     s0+=277.0;
     s1+=336.0;
    }
   }
  } else {
   if(i28<1.255998969078064){
    if(i50<0.0006039350409992039){
     s0+=341.0;
     s1+=168.0;
    } else {
     s0+=6.0;
     s1+=90.0;
    }
   } else {
    if(i70<0.005340148229151964){
     s0+=399.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i11<1.0081671476364136){
 if(i18<1.002915382385254){
  if(i23<1.0495158433914185){
   if(i26<0.0002816389314830303){
    if(i50<0.0002806371485348791){
     s0+=47884.0;
     s1+=27.0;
    } else {
     s0+=1043.0;
     s1+=49.0;
    }
   } else {
    if(i6<1.0004916191101074){
     s0+=7311.0;
     s1+=292.0;
    } else {
     s0+=48.0;
     s1+=70.0;
    }
   }
  } else {
   if(i0<0.06633877754211426){
    if(i37<1.1037919521331787){
     s0+=2251.0;
     s1+=813.0;
    } else {
     s0+=8343.0;
     s1+=276.0;
    }
   } else {
    if(i32<0.00044885766692459583){
     s0+=317.0;
     s1+=32.0;
    } else {
     s0+=1314.0;
     s1+=2018.0;
    }
   }
  }
 } else {
  if(i7<-0.00012015476386295632){
   if(i0<0.011663466691970825){
    if(i75<0.32291075587272644){
     s1+=7.0;
    } else {
     s0+=48.0;
     s1+=3.0;
    }
   } else {
    if(i60<0.003017514944076538){
     s1+=844.0;
    } else {
     s0+=8.0;
     s1+=360.0;
    }
   }
  } else {
   if(i4<0.0002893209457397461){
    if(i41<0.0921291708946228){
     s0+=878.0;
     s1+=90.0;
    } else {
     s0+=3.0;
     s1+=56.0;
    }
   } else {
    if(i1<0.1151256263256073){
     s0+=236.0;
     s1+=507.0;
    } else {
     s0+=4.0;
     s1+=664.0;
    }
   }
  }
 }
} else {
 if(i1<0.07337227463722229){
  if(i37<1.1039612293243408){
   if(i19<-6.818771362304688e-05){
    if(i7<-2.484391734469682e-05){
     s1+=1.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i44<-2.6768598218041006e-06){
     s0+=1.0;
     s1+=338.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i9<0.0008400678634643555){
    if(i13<1.0145585536956787){
     s0+=728.0;
     s1+=30.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i73<0.9991411566734314){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i17<0.0035463720560073853){
   if(i43<0.012118428945541382){
    if(i39<0.002113963942974806){
     s0+=2.0;
     s1+=596.0;
    } else {
     s0+=64.0;
     s1+=244.0;
    }
   } else {
    if(i11<1.0236752033233643){
     s0+=372.0;
     s1+=74.0;
    } else {
     s0+=9.0;
     s1+=95.0;
    }
   }
  } else {
   if(i4<-0.0007512867450714111){
    if(i39<0.01148908119648695){
     s0+=47.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i7<-6.590601060452173e-07){
     s0+=43.0;
     s1+=9684.0;
    } else {
     s0+=6.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i0<0.08023786544799805){
 if(i11<1.0083014965057373){
  if(i4<0.0006017684936523438){
   if(i42<0.00030427012825384736){
    if(i50<0.000303612498100847){
     s0+=46779.0;
     s1+=38.0;
    } else {
     s0+=101.0;
     s1+=28.0;
    }
   } else {
    if(i34<0.0010335345286875963){
     s0+=5484.0;
     s1+=1364.0;
    } else {
     s0+=15969.0;
     s1+=491.0;
    }
   }
  } else {
   if(i23<1.0415534973144531){
    s0+=74.0;
   } else {
    if(i55<0.997670590877533){
     s0+=26.0;
    } else {
     s0+=88.0;
     s1+=556.0;
    }
   }
  }
 } else {
  if(i7<-4.2875384679064155e-05){
   if(i37<1.250713586807251){
    s1+=776.0;
   } else {
    if(i52<-0.04274216294288635){
     s0+=3.0;
     s1+=57.0;
    } else {
     s0+=82.0;
     s1+=13.0;
    }
   }
  } else {
   if(i39<0.0010953755117952824){
    if(i44<-2.633830490594846e-06){
     s0+=3.0;
     s1+=79.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i46<0.0003097951412200928){
     s0+=828.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i9<-0.0004056096076965332){
  if(i33<0.008514813147485256){
   s0+=409.0;
  } else {
   if(i2<0.10321784019470215){
    s0+=8.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i17<0.001689004828222096){
   if(i5<0.07291114330291748){
    if(i55<0.9999770522117615){
     s0+=2.0;
     s1+=101.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i49<-2.8692556952591985e-05){
     s0+=2.0;
     s1+=86.0;
    } else {
     s0+=542.0;
     s1+=122.0;
    }
   }
  } else {
   if(i0<0.1172177791595459){
    if(i47<0.0008254158892668784){
     s0+=88.0;
     s1+=1182.0;
    } else {
     s0+=419.0;
     s1+=691.0;
    }
   } else {
    if(i4<0.0007533431053161621){
     s0+=159.0;
     s1+=2557.0;
    } else {
     s0+=21.0;
     s1+=8963.0;
    }
   }
  }
 }
}
if(i15<1.0016210079193115){
 if(i1<0.08509618043899536){
  if(i64<-0.0010924041271209717){
   if(i37<1.197464108467102){
    if(i55<0.9984793663024902){
     s0+=966.0;
     s1+=1.0;
    } else {
     s0+=1607.0;
     s1+=862.0;
    }
   } else {
    if(i29<0.039753858000040054){
     s0+=3774.0;
     s1+=89.0;
    } else {
     s0+=49.0;
     s1+=43.0;
    }
   }
  } else {
   if(i2<0.06921815872192383){
    if(i10<1.0406912565231323){
     s0+=55982.0;
     s1+=275.0;
    } else {
     s0+=3981.0;
     s1+=422.0;
    }
   } else {
    if(i35<0.04310008883476257){
     s0+=40.0;
     s1+=264.0;
    } else {
     s0+=1580.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i15<0.9985250234603882){
   if(i36<1.498544454574585){
    if(i14<-8.311867713928223e-05){
     s0+=562.0;
    } else {
     s0+=77.0;
     s1+=4.0;
    }
   } else {
    if(i74<0.00013960778596810997){
     s0+=55.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  } else {
   if(i63<0.02597886323928833){
    if(i17<0.0016902622301131487){
     s0+=137.0;
     s1+=157.0;
    } else {
     s0+=80.0;
     s1+=3079.0;
    }
   } else {
    if(i17<0.003343529999256134){
     s0+=662.0;
     s1+=352.0;
    } else {
     s0+=102.0;
     s1+=1212.0;
    }
   }
  }
 }
} else {
 if(i14<-0.00012189149856567383){
  if(i1<0.1161918044090271){
   if(i71<0.992796778678894){
    if(i4<0.0001310110092163086){
     s0+=209.0;
     s1+=39.0;
    } else {
     s0+=78.0;
     s1+=282.0;
    }
   } else {
    if(i9<0.0014036893844604492){
     s0+=641.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i17<0.01189604215323925){
    if(i32<0.009075475856661797){
     s0+=8.0;
     s1+=139.0;
    } else {
     s0+=11.0;
    }
   } else {
    s1+=504.0;
   }
  }
 } else {
  if(i23<1.0374274253845215){
   s0+=68.0;
  } else {
   if(i0<0.061189472675323486){
    if(i36<1.2280436754226685){
     s0+=29.0;
     s1+=462.0;
    } else {
     s0+=112.0;
     s1+=99.0;
    }
   } else {
    if(i14<-7.510185241699219e-06){
     s0+=71.0;
     s1+=513.0;
    } else {
     s0+=5.0;
     s1+=8368.0;
    }
   }
  }
 }
}
if(i5<0.06979292631149292){
 if(i3<4.106760025024414e-05){
  if(i0<0.07786303758621216){
   if(i52<-0.027904421091079712){
    if(i27<0.01540356781333685){
     s0+=1488.0;
     s1+=150.0;
    } else {
     s0+=984.0;
     s1+=463.0;
    }
   } else {
    if(i10<1.0398929119110107){
     s0+=61166.0;
     s1+=823.0;
    } else {
     s0+=4694.0;
     s1+=566.0;
    }
   }
  } else {
   if(i6<0.9964151382446289){
    if(i68<1.2411925354172126e-06){
     s0+=80.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i30<1.001700520515442){
     s0+=12.0;
     s1+=613.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i73<0.9988384246826172){
   if(i6<1.0035545825958252){
    if(i11<1.0166267156600952){
     s0+=215.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=40.0;
   }
  } else {
   if(i44<-1.4369477867148817e-05){
    if(i14<-0.00014722347259521484){
     s0+=96.0;
     s1+=113.0;
    } else {
     s0+=27.0;
     s1+=1564.0;
    }
   } else {
    if(i73<1.002414345741272){
     s0+=105.0;
     s1+=17.0;
    } else {
     s0+=5.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i72<-0.00010752114758361131){
  if(i19<0.0006134510040283203){
   if(i67<0.09247589111328125){
    if(i17<0.005483265034854412){
     s0+=991.0;
     s1+=858.0;
    } else {
     s0+=65.0;
     s1+=781.0;
    }
   } else {
    if(i53<0.0009630734566599131){
     s0+=91.0;
     s1+=22.0;
    } else {
     s0+=9.0;
     s1+=1706.0;
    }
   }
  } else {
   if(i68<1.9857455413330172e-07){
    if(i3<6.735324859619141e-06){
     s0+=18.0;
     s1+=33.0;
    } else {
     s0+=33.0;
     s1+=8266.0;
    }
   } else {
    if(i8<1.0799531936645508){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i12<1.0008549690246582){
   if(i24<1.0207717418670654){
    if(i76<6.821138867962873e-06){
     s0+=9.0;
     s1+=119.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i63<0.022983431816101074){
     s0+=69.0;
     s1+=141.0;
    } else {
     s0+=914.0;
     s1+=135.0;
    }
   }
  } else {
   if(i6<1.0037952661514282){
    if(i40<0.9906140565872192){
     s0+=4.0;
     s1+=87.0;
    } else {
     s0+=73.0;
     s1+=52.0;
    }
   } else {
    if(i49<0.00012985209468752146){
     s1+=402.0;
    } else {
     s0+=10.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i19<0.0008229613304138184){
 if(i54<1.0137789249420166){
  if(i4<0.0005654096603393555){
   if(i75<0.050029173493385315){
    if(i64<-0.0017313659191131592){
     s0+=211.0;
     s1+=199.0;
    } else {
     s0+=56840.0;
     s1+=694.0;
    }
   } else {
    if(i5<0.0627937912940979){
     s0+=10000.0;
     s1+=1198.0;
    } else {
     s0+=701.0;
     s1+=1229.0;
    }
   }
  } else {
   if(i69<0.9987759590148926){
    s0+=130.0;
   } else {
    if(i64<0.0039108991622924805){
     s0+=117.0;
     s1+=1345.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i61<0.0005799193168058991){
   if(i51<-0.0011832250747829676){
    if(i17<0.0016504292143508792){
     s0+=187.0;
     s1+=15.0;
    } else {
     s0+=137.0;
     s1+=399.0;
    }
   } else {
    if(i27<0.0290277898311615){
     s0+=1415.0;
     s1+=197.0;
    } else {
     s0+=242.0;
     s1+=315.0;
    }
   }
  } else {
   if(i6<0.999250590801239){
    if(i0<0.11240401864051819){
     s0+=328.0;
     s1+=34.0;
    } else {
     s0+=15.0;
     s1+=176.0;
    }
   } else {
    if(i74<0.00010664539149729535){
     s0+=187.0;
     s1+=196.0;
    } else {
     s0+=26.0;
     s1+=1184.0;
    }
   }
  }
 }
} else {
 if(i0<0.05543801188468933){
  if(i32<0.0008101848070509732){
   s1+=257.0;
  } else {
   if(i9<0.0006819367408752441){
    if(i34<0.005502020008862019){
     s0+=497.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=65.0;
   }
  }
 } else {
  if(i7<-4.3320978875271976e-05){
   if(i15<0.9986886978149414){
    s0+=14.0;
   } else {
    if(i0<0.05623263120651245){
     s0+=4.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=9484.0;
    }
   }
  } else {
   if(i37<1.1541988849639893){
    s1+=81.0;
   } else {
    if(i5<0.16558191180229187){
     s0+=71.0;
     s1+=6.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
}
if(i25<1.0088520050048828){
 if(i27<0.021945692598819733){
  if(i3<4.0471553802490234e-05){
   if(i47<0.00032479624496772885){
    if(i7<-3.995094448328018e-05){
     s0+=469.0;
     s1+=76.0;
    } else {
     s0+=55218.0;
     s1+=333.0;
    }
   } else {
    if(i7<-1.0222782293567434e-05){
     s0+=2061.0;
     s1+=584.0;
    } else {
     s0+=4327.0;
     s1+=312.0;
    }
   }
  } else {
   if(i17<0.0033460152335464954){
    if(i43<-0.00930139422416687){
     s1+=10.0;
    } else {
     s0+=245.0;
     s1+=4.0;
    }
   } else {
    if(i13<0.9992978572845459){
     s0+=102.0;
     s1+=112.0;
    } else {
     s1+=429.0;
    }
   }
  }
 } else {
  if(i12<0.99431312084198){
   if(i1<0.09607213735580444){
    if(i8<1.0646905899047852){
     s0+=4748.0;
     s1+=43.0;
    } else {
     s0+=361.0;
     s1+=121.0;
    }
   } else {
    if(i30<0.999334454536438){
     s0+=138.0;
     s1+=4.0;
    } else {
     s0+=47.0;
     s1+=361.0;
    }
   }
  } else {
   if(i1<0.047985345125198364){
    if(i6<1.001172423362732){
     s0+=819.0;
     s1+=233.0;
    } else {
     s0+=45.0;
     s1+=150.0;
    }
   } else {
    if(i23<1.0413804054260254){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=291.0;
     s1+=3263.0;
    }
   }
  }
 }
} else {
 if(i9<0.00048470497131347656){
  if(i32<0.004933721851557493){
   if(i17<0.0030656170565634966){
    if(i19<0.0014860033988952637){
     s0+=1790.0;
     s1+=370.0;
    } else {
     s0+=1.0;
     s1+=183.0;
    }
   } else {
    if(i4<-0.0003368854522705078){
     s0+=207.0;
     s1+=32.0;
    } else {
     s0+=60.0;
     s1+=1299.0;
    }
   }
  } else {
   if(i1<0.21778425574302673){
    if(i17<0.005316094495356083){
     s0+=93.0;
     s1+=15.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i27<0.026567867025732994){
     s0+=6.0;
     s1+=72.0;
    } else {
     s1+=884.0;
    }
   }
  }
 } else {
  if(i4<0.0005741715431213379){
   if(i59<0.11369588971138){
    if(i53<0.0023150015622377396){
     s0+=138.0;
     s1+=14.0;
    } else {
     s0+=46.0;
     s1+=71.0;
    }
   } else {
    if(i46<0.00016817450523376465){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=142.0;
    }
   }
  } else {
   if(i1<0.052153557538986206){
    if(i23<1.0852906703948975){
     s1+=15.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.00018002043361775577){
     s0+=3.0;
    } else {
     s0+=63.0;
     s1+=7722.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i9<0.0006142258644104004){
  if(i23<1.0486011505126953){
   if(i45<-0.0015038251876831055){
    if(i38<1.0547096729278564){
     s0+=796.0;
    } else {
     s0+=238.0;
     s1+=112.0;
    }
   } else {
    if(i23<1.042891263961792){
     s0+=51308.0;
     s1+=114.0;
    } else {
     s0+=3420.0;
     s1+=129.0;
    }
   }
  } else {
   if(i5<0.06074759364128113){
    if(i2<0.0672684907913208){
     s0+=8731.0;
     s1+=653.0;
    } else {
     s0+=84.0;
     s1+=335.0;
    }
   } else {
    if(i61<0.0010330448858439922){
     s0+=236.0;
     s1+=609.0;
    } else {
     s0+=130.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i46<0.0003903210163116455){
   if(i37<1.0657644271850586){
    s0+=41.0;
   } else {
    if(i55<1.0024046897888184){
     s0+=30.0;
     s1+=605.0;
    } else {
     s0+=33.0;
     s1+=18.0;
    }
   }
  } else {
   if(i76<-2.185549419664312e-06){
    if(i75<0.2200872302055359){
     s1+=64.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i6<1.0028079748153687){
     s0+=240.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i13<1.0064921379089355){
  if(i12<1.0009922981262207){
   if(i34<0.006203735247254372){
    if(i17<0.004344715736806393){
     s0+=3952.0;
     s1+=677.0;
    } else {
     s0+=669.0;
     s1+=962.0;
    }
   } else {
    if(i8<1.0819685459136963){
     s0+=351.0;
     s1+=75.0;
    } else {
     s0+=104.0;
     s1+=1306.0;
    }
   }
  } else {
   if(i5<0.06440496444702148){
    if(i78<-0.0001983940601348877){
     s0+=34.0;
     s1+=153.0;
    } else {
     s0+=286.0;
     s1+=179.0;
    }
   } else {
    if(i54<1.0168626308441162){
     s0+=14.0;
     s1+=847.0;
    } else {
     s0+=149.0;
     s1+=678.0;
    }
   }
  }
 } else {
  if(i7<-4.325253757997416e-05){
   if(i4<0.00045689940452575684){
    if(i2<0.058609455823898315){
     s0+=21.0;
     s1+=12.0;
    } else {
     s1+=435.0;
    }
   } else {
    if(i19<6.4849853515625e-05){
     s0+=8.0;
     s1+=65.0;
    } else {
     s0+=1.0;
     s1+=8834.0;
    }
   }
  } else {
   if(i38<1.1463401317596436){
    s1+=108.0;
   } else {
    if(i39<0.009242802858352661){
     s0+=293.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i0<0.07567551732063293){
 if(i6<1.0025451183319092){
  if(i8<1.0412344932556152){
   if(i26<0.00028052832931280136){
    if(i78<-0.001397937536239624){
     s0+=140.0;
     s1+=24.0;
    } else {
     s0+=49693.0;
     s1+=121.0;
    }
   } else {
    if(i12<0.9939526319503784){
     s0+=6679.0;
     s1+=30.0;
    } else {
     s0+=3057.0;
     s1+=447.0;
    }
   }
  } else {
   if(i11<0.9940071702003479){
    if(i3<-5.176663398742676e-05){
     s0+=644.0;
     s1+=33.0;
    } else {
     s0+=635.0;
     s1+=558.0;
    }
   } else {
    if(i27<0.017089281231164932){
     s0+=6409.0;
     s1+=313.0;
    } else {
     s0+=1420.0;
     s1+=599.0;
    }
   }
  }
 } else {
  if(i46<0.0001558065414428711){
   if(i34<0.002320370636880398){
    s1+=49.0;
   } else {
    if(i29<0.017989594489336014){
     s0+=152.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i45<0.002682983875274658){
    if(i68<-4.958719728165306e-06){
     s0+=53.0;
     s1+=972.0;
    } else {
     s0+=25.0;
     s1+=18.0;
    }
   } else {
    if(i2<0.0754021406173706){
     s0+=25.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i17<0.004695484880357981){
  if(i7<-1.3805152775603347e-05){
   if(i28<1.255998969078064){
    if(i33<0.0004826044605579227){
     s0+=30.0;
     s1+=13.0;
    } else {
     s0+=82.0;
     s1+=1645.0;
    }
   } else {
    if(i31<0.03694868087768555){
     s0+=25.0;
     s1+=301.0;
    } else {
     s0+=449.0;
     s1+=146.0;
    }
   }
  } else {
   if(i54<0.9962302446365356){
    if(i31<0.03140139579772949){
     s0+=29.0;
     s1+=115.0;
    } else {
     s0+=139.0;
     s1+=55.0;
    }
   } else {
    if(i7<-7.853979695937596e-06){
     s0+=186.0;
     s1+=80.0;
    } else {
     s0+=746.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i23<1.0644469261169434){
   if(i47<0.0006406982429325581){
    if(i13<0.9898624420166016){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=150.0;
    }
   } else {
    if(i17<0.005021370947360992){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=78.0;
     s1+=1.0;
    }
   }
  } else {
   if(i30<0.9988002777099609){
    if(i42<0.039308782666921616){
     s0+=70.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i13<0.9965585470199585){
     s0+=114.0;
     s1+=1586.0;
    } else {
     s0+=34.0;
     s1+=9962.0;
    }
   }
  }
 }
}
if(i1<0.08514660596847534){
 if(i6<1.0024569034576416){
  if(i27<0.016620181500911713){
   if(i2<0.07394152879714966){
    if(i50<0.00028290884802117944){
     s0+=54558.0;
     s1+=239.0;
    } else {
     s0+=3735.0;
     s1+=395.0;
    }
   } else {
    if(i60<-0.00010013580322265625){
     s0+=27.0;
     s1+=74.0;
    } else {
     s0+=565.0;
     s1+=74.0;
    }
   }
  } else {
   if(i4<-0.00023251771926879883){
    if(i6<0.9966920614242554){
     s0+=6682.0;
     s1+=50.0;
    } else {
     s0+=1635.0;
     s1+=387.0;
    }
   } else {
    if(i37<1.1063789129257202){
     s0+=319.0;
     s1+=664.0;
    } else {
     s0+=1258.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i46<0.00017827749252319336){
   if(i56<0.005559246055781841){
    if(i39<0.0009208167321048677){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=140.0;
    }
   } else {
    if(i36<1.2434227466583252){
     s1+=60.0;
    } else {
     s0+=34.0;
     s1+=30.0;
    }
   }
  } else {
   if(i32<0.007164008915424347){
    if(i69<1.0004208087921143){
     s0+=16.0;
     s1+=705.0;
    } else {
     s0+=11.0;
     s1+=22.0;
    }
   } else {
    if(i42<0.004934266209602356){
     s0+=61.0;
     s1+=13.0;
    } else {
     s0+=8.0;
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i20<-1.564621925354004e-05){
  if(i42<0.04387877136468887){
   if(i9<-0.0004138648509979248){
    if(i49<0.00018277678464073688){
     s0+=616.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    if(i72<-0.00012844604498241097){
     s1+=11.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s1+=1.0;
  }
 } else {
  if(i0<0.12404754757881165){
   if(i62<-0.019194118678569794){
    if(i65<-6.68253778712824e-06){
     s1+=22.0;
    } else {
     s0+=591.0;
     s1+=65.0;
    }
   } else {
    if(i58<-0.006276214029639959){
     s0+=190.0;
     s1+=73.0;
    } else {
     s0+=167.0;
     s1+=2582.0;
    }
   }
  } else {
   if(i7<-1.5570072719128802e-05){
    if(i9<-0.0005679428577423096){
     s0+=5.0;
    } else {
     s0+=130.0;
     s1+=11131.0;
    }
   } else {
    if(i60<0.008136749267578125){
     s0+=50.0;
     s1+=159.0;
    } else {
     s0+=167.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i3<3.8683414459228516e-05){
 if(i0<0.07800713181495667){
  if(i27<0.01577659323811531){
   if(i26<0.00028163223760202527){
    if(i8<1.0487183332443237){
     s0+=49106.0;
     s1+=114.0;
    } else {
     s0+=686.0;
     s1+=42.0;
    }
   } else {
    if(i39<0.0015612323768436909){
     s0+=3828.0;
     s1+=499.0;
    } else {
     s0+=4495.0;
     s1+=45.0;
    }
   }
  } else {
   if(i13<0.9900349378585815){
    if(i56<0.015852587297558784){
     s0+=7157.0;
     s1+=39.0;
    } else {
     s0+=455.0;
     s1+=115.0;
    }
   } else {
    if(i18<1.0006535053253174){
     s0+=2892.0;
     s1+=848.0;
    } else {
     s0+=247.0;
     s1+=334.0;
    }
   }
  }
 } else {
  if(i9<-0.00037485361099243164){
   if(i15<0.9988216161727905){
    if(i44<-9.034853064804338e-06){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=440.0;
    }
   } else {
    if(i4<-0.0010293424129486084){
     s0+=8.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i62<-0.016156867146492004){
    if(i41<0.04872843623161316){
     s0+=2.0;
     s1+=195.0;
    } else {
     s0+=908.0;
     s1+=1011.0;
    }
   } else {
    if(i32<0.00045606427011080086){
     s0+=67.0;
     s1+=19.0;
    } else {
     s0+=234.0;
     s1+=2166.0;
    }
   }
  }
 }
} else {
 if(i8<1.0336670875549316){
  if(i29<0.008268461562693119){
   if(i51<0.0026523261331021786){
    s0+=282.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i44<-0.00019760799477808177){
    s0+=4.0;
   } else {
    s1+=64.0;
   }
  }
 } else {
  if(i7<-4.882367647951469e-05){
   if(i66<0.9972964525222778){
    if(i34<0.003668342251330614){
     s0+=58.0;
     s1+=46.0;
    } else {
     s0+=163.0;
     s1+=1488.0;
    }
   } else {
    if(i13<1.0081337690353394){
     s0+=36.0;
     s1+=948.0;
    } else {
     s1+=8724.0;
    }
   }
  } else {
   if(i39<0.0023202181328088045){
    if(i6<1.0018575191497803){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=204.0;
    }
   } else {
    if(i17<0.0026127346791327){
     s0+=132.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=89.0;
    }
   }
  }
 }
}
if(i14<0.00011593103408813477){
 if(i3<3.7610530853271484e-05){
  if(i2<0.08391347527503967){
   if(i27<0.01425079070031643){
    if(i78<-0.0008678734302520752){
     s0+=2839.0;
     s1+=300.0;
    } else {
     s0+=53495.0;
     s1+=237.0;
    }
   } else {
    if(i49<9.269655856769532e-05){
     s0+=4928.0;
     s1+=1322.0;
    } else {
     s0+=7423.0;
     s1+=214.0;
    }
   }
  } else {
   if(i15<0.9981136322021484){
    if(i15<0.9976415634155273){
     s0+=381.0;
    } else {
     s0+=45.0;
     s1+=3.0;
    }
   } else {
    if(i17<0.001895959721878171){
     s0+=600.0;
     s1+=225.0;
    } else {
     s0+=451.0;
     s1+=2573.0;
    }
   }
  }
 } else {
  if(i74<0.00043048837687820196){
   if(i0<0.12683802843093872){
    if(i31<0.06025153398513794){
     s0+=179.0;
     s1+=779.0;
    } else {
     s0+=74.0;
     s1+=25.0;
    }
   } else {
    if(i29<0.016029365360736847){
     s0+=19.0;
     s1+=39.0;
    } else {
     s0+=6.0;
     s1+=1431.0;
    }
   }
  } else {
   s0+=149.0;
  }
 }
} else {
 if(i0<0.05543801188468933){
  if(i9<0.0005857944488525391){
   if(i17<0.004441430792212486){
    if(i74<3.206950714229606e-05){
     s1+=12.0;
    } else {
     s0+=659.0;
     s1+=18.0;
    }
   } else {
    if(i55<0.9995201826095581){
     s0+=1.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   s1+=230.0;
  }
 } else {
  if(i15<0.9990360736846924){
   if(i64<0.01703542470932007){
    s0+=72.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i1<0.08337682485580444){
    if(i44<-1.4078847016207874e-05){
     s0+=2.0;
     s1+=277.0;
    } else {
     s0+=63.0;
     s1+=33.0;
    }
   } else {
    if(i6<1.0038797855377197){
     s0+=43.0;
     s1+=955.0;
    } else {
     s1+=8114.0;
    }
   }
  }
 }
}
if(i20<1.9729137420654297e-05){
 if(i54<1.0131717920303345){
  if(i7<-4.935117613058537e-05){
   if(i0<0.058501869440078735){
    if(i11<1.0083967447280884){
     s0+=1349.0;
     s1+=88.0;
    } else {
     s0+=16.0;
     s1+=81.0;
    }
   } else {
    if(i13<0.9687259197235107){
     s0+=22.0;
    } else {
     s0+=26.0;
     s1+=933.0;
    }
   }
  } else {
   if(i75<0.04784342274069786){
    if(i2<0.08319219946861267){
     s0+=56225.0;
     s1+=569.0;
    } else {
     s0+=101.0;
     s1+=168.0;
    }
   } else {
    if(i4<-0.0002931356430053711){
     s0+=6946.0;
     s1+=600.0;
    } else {
     s0+=2471.0;
     s1+=1217.0;
    }
   }
  }
 } else {
  if(i27<0.03440732881426811){
   if(i50<-7.251879287650809e-05){
    if(i7<-2.2631384126725607e-05){
     s0+=99.0;
     s1+=818.0;
    } else {
     s0+=127.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.08715328574180603){
     s0+=1377.0;
     s1+=112.0;
    } else {
     s0+=625.0;
     s1+=345.0;
    }
   }
  } else {
   if(i16<0.9971545934677124){
    if(i46<-0.00014469027519226074){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=50.0;
    }
   } else {
    if(i68<1.5796048273841734e-06){
     s0+=110.0;
     s1+=1566.0;
    } else {
     s0+=72.0;
    }
   }
  }
 }
} else {
 if(i19<-2.5063753128051758e-05){
  if(i4<0.00026804208755493164){
   if(i17<0.01328686811029911){
    if(i51<0.0014982906868681312){
     s0+=732.0;
     s1+=54.0;
    } else {
     s0+=173.0;
     s1+=69.0;
    }
   } else {
    if(i21<0.93382728099823){
     s0+=40.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=94.0;
    }
   }
  } else {
   if(i27<0.019490696489810944){
    if(i45<0.0006822645664215088){
     s0+=36.0;
     s1+=155.0;
    } else {
     s0+=205.0;
     s1+=45.0;
    }
   } else {
    if(i27<0.07469874620437622){
     s0+=157.0;
     s1+=592.0;
    } else {
     s0+=2.0;
     s1+=687.0;
    }
   }
  }
 } else {
  if(i42<0.0002465705038048327){
   s0+=143.0;
  } else {
   if(i17<0.0006865246687084436){
    if(i0<0.060550570487976074){
     s0+=14.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i14<6.258487701416016e-06){
     s0+=14.0;
     s1+=48.0;
    } else {
     s0+=14.0;
     s1+=8763.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i11<1.0080902576446533){
  if(i18<1.0035613775253296){
   if(i27<0.01642666384577751){
    if(i70<0.0008770911954343319){
     s0+=53938.0;
     s1+=200.0;
    } else {
     s0+=2077.0;
     s1+=376.0;
    }
   } else {
    if(i2<0.07770729064941406){
     s0+=7764.0;
     s1+=549.0;
    } else {
     s0+=125.0;
     s1+=439.0;
    }
   }
  } else {
   if(i19<-0.0022560954093933105){
    if(i17<0.024553027004003525){
     s0+=468.0;
     s1+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i4<0.00038927793502807617){
     s0+=39.0;
    } else {
     s0+=12.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i32<0.0007438708562403917){
   if(i14<-1.1742115020751953e-05){
    if(i18<0.9992034435272217){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=323.0;
   }
  } else {
   if(i44<-1.5506058844039217e-05){
    if(i74<2.7610820325207897e-05){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=124.0;
    }
   } else {
    if(i58<-0.0011671814136207104){
     s1+=7.0;
    } else {
     s0+=142.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i19<0.0007766485214233398){
  if(i0<0.09756296873092651){
   if(i3<2.8073787689208984e-05){
    if(i39<0.0016315693501383066){
     s0+=1333.0;
     s1+=712.0;
    } else {
     s0+=3725.0;
     s1+=371.0;
    }
   } else {
    if(i60<0.0034600496292114258){
     s0+=195.0;
     s1+=507.0;
    } else {
     s0+=111.0;
     s1+=3.0;
    }
   }
  } else {
   if(i17<0.004695484880357981){
    if(i31<0.05748939514160156){
     s0+=39.0;
     s1+=575.0;
    } else {
     s0+=779.0;
     s1+=203.0;
    }
   } else {
    if(i20<-1.9162893295288086e-05){
     s0+=54.0;
    } else {
     s0+=88.0;
     s1+=2838.0;
    }
   }
  }
 } else {
  if(i7<-4.3320978875271976e-05){
   if(i3<-1.2993812561035156e-05){
    s0+=18.0;
   } else {
    if(i44<-1.0743715392891318e-05){
     s1+=9196.0;
    } else {
     s0+=21.0;
     s1+=279.0;
    }
   }
  } else {
   if(i6<1.001605749130249){
    if(i29<0.011202247813344002){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   } else {
    if(i17<0.0026514579076319933){
     s0+=167.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i3<3.629922866821289e-05){
 if(i0<0.08230835199356079){
  if(i1<0.06952464580535889){
   if(i45<-0.0015021562576293945){
    if(i13<0.9831559658050537){
     s0+=1403.0;
     s1+=49.0;
    } else {
     s0+=2575.0;
     s1+=660.0;
    }
   } else {
    if(i11<1.00792396068573){
     s0+=61613.0;
     s1+=728.0;
    } else {
     s0+=411.0;
     s1+=120.0;
    }
   }
  } else {
   if(i30<0.9993892908096313){
    if(i44<-9.118472917180043e-06){
     s0+=63.0;
     s1+=21.0;
    } else {
     s0+=1048.0;
     s1+=14.0;
    }
   } else {
    if(i17<0.0035210668575018644){
     s0+=1434.0;
     s1+=247.0;
    } else {
     s0+=433.0;
     s1+=445.0;
    }
   }
  }
 } else {
  if(i17<0.0016407293733209372){
   if(i7<-1.381069523631595e-05){
    if(i54<1.0304608345031738){
     s0+=19.0;
     s1+=153.0;
    } else {
     s0+=108.0;
     s1+=15.0;
    }
   } else {
    if(i33<0.0029537740629166365){
     s0+=442.0;
     s1+=26.0;
    } else {
     s0+=14.0;
     s1+=33.0;
    }
   }
  } else {
   if(i7<-3.7765207707707305e-06){
    if(i27<0.028719842433929443){
     s0+=363.0;
     s1+=1028.0;
    } else {
     s0+=75.0;
     s1+=1876.0;
    }
   } else {
    if(i55<0.999330997467041){
     s0+=290.0;
     s1+=6.0;
    } else {
     s0+=144.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i42<0.00027184945065528154){
  if(i21<1.009629249572754){
   if(i74<7.798160368110985e-05){
    s1+=2.0;
   } else {
    s0+=302.0;
   }
  } else {
   if(i44<-1.6694852092768997e-05){
    s1+=34.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i36<1.0633710622787476){
   s0+=47.0;
  } else {
   if(i1<0.0845906138420105){
    if(i57<0.00305098295211792){
     s0+=146.0;
     s1+=945.0;
    } else {
     s0+=134.0;
     s1+=17.0;
    }
   } else {
    if(i66<1.0041723251342773){
     s0+=123.0;
     s1+=1970.0;
    } else {
     s0+=9.0;
     s1+=8577.0;
    }
   }
  }
 }
}
if(i12<1.0037583112716675){
 if(i27<0.02627718076109886){
  if(i11<1.0080137252807617){
   if(i57<-0.0023064017295837402){
    if(i26<0.00303841196000576){
     s0+=1851.0;
     s1+=771.0;
    } else {
     s0+=1807.0;
     s1+=139.0;
    }
   } else {
    if(i0<0.07804334163665771){
     s0+=59733.0;
     s1+=564.0;
    } else {
     s0+=819.0;
     s1+=398.0;
    }
   }
  } else {
   if(i17<0.0036290015559643507){
    if(i32<0.0007347256760112941){
     s0+=130.0;
     s1+=189.0;
    } else {
     s0+=707.0;
     s1+=65.0;
    }
   } else {
    if(i30<0.9989674091339111){
     s0+=58.0;
    } else {
     s0+=30.0;
     s1+=534.0;
    }
   }
  }
 } else {
  if(i6<0.9968687295913696){
   if(i0<0.09550809860229492){
    if(i9<0.0008382201194763184){
     s0+=3884.0;
     s1+=62.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i9<-0.00040602684020996094){
     s0+=199.0;
    } else {
     s0+=15.0;
     s1+=151.0;
    }
   }
  } else {
   if(i0<0.06570813059806824){
    if(i19<-0.0016638636589050293){
     s0+=391.0;
     s1+=56.0;
    } else {
     s0+=362.0;
     s1+=537.0;
    }
   } else {
    if(i17<0.0015341765247285366){
     s0+=119.0;
     s1+=116.0;
    } else {
     s0+=199.0;
     s1+=3558.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005295276641845703){
  if(i75<0.03519466519355774){
   if(i1<0.07824176549911499){
    if(i15<1.0012922286987305){
     s0+=493.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=8.0;
    }
   } else {
    if(i7<-4.171606997260824e-05){
     s0+=4.0;
     s1+=85.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i35<0.050317347049713135){
    if(i49<-1.53115252032876e-05){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=154.0;
     s1+=90.0;
    }
   } else {
    if(i20<-1.3381242752075195e-05){
     s0+=8.0;
    } else {
     s0+=30.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i13<1.0098415613174438){
   if(i49<-1.5613684809068218e-05){
    if(i68<-5.019225682190154e-06){
     s1+=58.0;
    } else {
     s0+=85.0;
     s1+=5.0;
    }
   } else {
    if(i28<1.613681674003601){
     s0+=34.0;
     s1+=1516.0;
    } else {
     s0+=42.0;
     s1+=154.0;
    }
   }
  } else {
   if(i8<1.0341004133224487){
    s0+=2.0;
   } else {
    s1+=7687.0;
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i23<1.0495078563690186){
  if(i23<1.042891263961792){
   if(i57<-0.0022396743297576904){
    if(i12<0.9937891960144043){
     s0+=904.0;
     s1+=1.0;
    } else {
     s0+=616.0;
     s1+=115.0;
    }
   } else {
    if(i15<1.0006518363952637){
     s0+=48754.0;
     s1+=36.0;
    } else {
     s0+=1636.0;
     s1+=24.0;
    }
   }
  } else {
   if(i71<0.9904043674468994){
    if(i76<6.157211828394793e-06){
     s0+=258.0;
     s1+=179.0;
    } else {
     s0+=292.0;
     s1+=2.0;
    }
   } else {
    if(i6<1.0025227069854736){
     s0+=3957.0;
     s1+=145.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i4<0.00015658140182495117){
   if(i27<0.02209835685789585){
    if(i16<0.9907297492027283){
     s0+=1504.0;
     s1+=545.0;
    } else {
     s0+=8021.0;
     s1+=475.0;
    }
   } else {
    if(i4<-0.0006268620491027832){
     s0+=1952.0;
     s1+=259.0;
    } else {
     s0+=1153.0;
     s1+=1935.0;
    }
   }
  } else {
   if(i0<0.0960962176322937){
    if(i34<0.001138103660196066){
     s0+=113.0;
     s1+=487.0;
    } else {
     s0+=1046.0;
     s1+=183.0;
    }
   } else {
    if(i43<0.018398791551589966){
     s0+=16.0;
     s1+=807.0;
    } else {
     s0+=166.0;
     s1+=381.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003116395091637969){
  s0+=185.0;
 } else {
  if(i14<0.0002116560935974121){
   if(i27<0.029780089855194092){
    if(i37<1.2261788845062256){
     s0+=4.0;
     s1+=590.0;
    } else {
     s0+=350.0;
     s1+=380.0;
    }
   } else {
    if(i2<0.005518138408660889){
     s0+=15.0;
     s1+=11.0;
    } else {
     s0+=55.0;
     s1+=2259.0;
    }
   }
  } else {
   if(i53<0.00013791327364742756){
    if(i42<0.00039523059967905283){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i3<5.525350570678711e-05){
     s0+=1.0;
     s1+=301.0;
    } else {
     s1+=8118.0;
    }
   }
  }
 }
}
if(i3<3.7610530853271484e-05){
 if(i1<0.08353182673454285){
  if(i43<-0.005272597074508667){
   if(i33<0.0008648711955174804){
    if(i8<1.0256590843200684){
     s0+=481.0;
     s1+=28.0;
    } else {
     s0+=787.0;
     s1+=436.0;
    }
   } else {
    if(i53<0.006539278198033571){
     s0+=2844.0;
     s1+=257.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   }
  } else {
   if(i26<0.0002759275084827095){
    if(i16<1.011173963546753){
     s0+=51245.0;
     s1+=167.0;
    } else {
     s0+=4.0;
     s1+=57.0;
    }
   } else {
    if(i6<0.9970154762268066){
     s0+=7504.0;
     s1+=75.0;
    } else {
     s0+=5584.0;
     s1+=1001.0;
    }
   }
  }
 } else {
  if(i20<-1.424551010131836e-05){
   if(i11<1.0126763582229614){
    if(i33<0.008839060552418232){
     s0+=628.0;
     s1+=7.0;
    } else {
     s0+=30.0;
     s1+=17.0;
    }
   } else {
    if(i51<0.0033808029256761074){
     s1+=6.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i58<-0.00521823950111866){
    if(i1<0.21065831184387207){
     s0+=907.0;
     s1+=329.0;
    } else {
     s0+=95.0;
     s1+=805.0;
    }
   } else {
    if(i34<0.00031668003066442907){
     s0+=87.0;
     s1+=2.0;
    } else {
     s0+=194.0;
     s1+=2187.0;
    }
   }
  }
 }
} else {
 if(i39<0.00036817172076553106){
  s0+=291.0;
 } else {
  if(i22<1.0186313390731812){
   if(i1<0.057724952697753906){
    if(i37<1.2510931491851807){
     s1+=153.0;
    } else {
     s0+=178.0;
     s1+=207.0;
    }
   } else {
    if(i52<0.053732603788375854){
     s0+=37.0;
     s1+=2799.0;
    } else {
     s0+=127.0;
     s1+=766.0;
    }
   }
  } else {
   if(i0<0.06466600298881531){
    if(i39<0.002708556829020381){
     s1+=33.0;
    } else {
     s0+=47.0;
     s1+=10.0;
    }
   } else {
    if(i5<0.1316651701927185){
     s0+=37.0;
     s1+=1445.0;
    } else {
     s0+=1.0;
     s1+=6318.0;
    }
   }
  }
 }
}
if(i23<1.057713270187378){
 if(i21<1.0073578357696533){
  if(i38<1.0557184219360352){
   s0+=43259.0;
  } else {
   if(i38<1.0983617305755615){
    if(i50<0.000253361533395946){
     s0+=5245.0;
     s1+=331.0;
    } else {
     s0+=451.0;
     s1+=412.0;
    }
   } else {
    if(i23<1.049987554550171){
     s0+=9038.0;
     s1+=8.0;
    } else {
     s0+=624.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i64<-0.0005349516868591309){
   s0+=11.0;
  } else {
   if(i34<0.0015387025196105242){
    s1+=188.0;
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i22<1.0116870403289795){
  if(i9<0.00040584802627563477){
   if(i0<0.07709434628486633){
    if(i32<0.0014484211569651961){
     s0+=3687.0;
     s1+=994.0;
    } else {
     s0+=4962.0;
     s1+=155.0;
    }
   } else {
    if(i15<0.9985250234603882){
     s0+=253.0;
     s1+=17.0;
    } else {
     s0+=460.0;
     s1+=1741.0;
    }
   }
  } else {
   if(i4<0.0004871487617492676){
    if(i1<0.11514094471931458){
     s0+=803.0;
     s1+=227.0;
    } else {
     s0+=32.0;
     s1+=277.0;
    }
   } else {
    if(i1<0.05771768093109131){
     s0+=109.0;
     s1+=330.0;
    } else {
     s0+=137.0;
     s1+=2543.0;
    }
   }
  }
 } else {
  if(i1<0.08350569009780884){
   if(i19<0.0014376044273376465){
    if(i44<-1.4103456123848446e-05){
     s0+=136.0;
     s1+=115.0;
    } else {
     s0+=1122.0;
     s1+=76.0;
    }
   } else {
    s1+=151.0;
   }
  } else {
   if(i17<0.0022191868629306555){
    if(i13<1.0116370916366577){
     s0+=348.0;
     s1+=47.0;
    } else {
     s0+=4.0;
     s1+=170.0;
    }
   } else {
    if(i18<0.9947178363800049){
     s0+=72.0;
     s1+=131.0;
    } else {
     s0+=156.0;
     s1+=9410.0;
    }
   }
  }
 }
}
if(i3<3.510713577270508e-05){
 if(i27<0.022396035492420197){
  if(i21<1.0086040496826172){
   if(i70<0.0006792106432840228){
    if(i22<1.0064736604690552){
     s0+=55757.0;
     s1+=290.0;
    } else {
     s0+=1687.0;
     s1+=220.0;
    }
   } else {
    if(i2<0.0643925666809082){
     s0+=4541.0;
     s1+=550.0;
    } else {
     s0+=488.0;
     s1+=372.0;
    }
   }
  } else {
   if(i28<1.1108002662658691){
    if(i23<1.0736522674560547){
     s1+=370.0;
    } else {
     s0+=86.0;
     s1+=112.0;
    }
   } else {
    if(i79<0.0032516121864318848){
     s0+=646.0;
     s1+=38.0;
    } else {
     s0+=323.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i1<0.07983508706092834){
   if(i6<0.9970371723175049){
    if(i29<0.0748399868607521){
     s0+=4787.0;
     s1+=66.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i36<1.2009669542312622){
     s0+=467.0;
     s1+=672.0;
    } else {
     s0+=790.0;
     s1+=96.0;
    }
   }
  } else {
   if(i30<0.9989175796508789){
    if(i42<0.04806695133447647){
     s0+=236.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i31<0.04292505979537964){
     s0+=43.0;
     s1+=1322.0;
    } else {
     s0+=410.0;
     s1+=1008.0;
    }
   }
  }
 }
} else {
 if(i33<0.0004900246858596802){
  s0+=416.0;
 } else {
  if(i0<0.06640732288360596){
   if(i37<1.250713586807251){
    if(i18<1.0005615949630737){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=571.0;
    }
   } else {
    if(i56<0.009122848510742188){
     s0+=275.0;
     s1+=33.0;
    } else {
     s0+=38.0;
     s1+=232.0;
    }
   }
  } else {
   if(i14<-4.351139068603516e-06){
    if(i70<0.0014104933943599463){
     s0+=121.0;
     s1+=459.0;
    } else {
     s0+=8.0;
     s1+=687.0;
    }
   } else {
    if(i4<0.0008716583251953125){
     s0+=43.0;
     s1+=772.0;
    } else {
     s0+=9.0;
     s1+=9039.0;
    }
   }
  }
 }
}
if(i2<0.08270382881164551){
 if(i9<0.0006350874900817871){
  if(i42<0.0002922034473158419){
   if(i6<1.002470850944519){
    if(i11<1.0081498622894287){
     s0+=46504.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=37.0;
    }
   } else {
    if(i49<8.420186532021035e-06){
     s0+=65.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i39<0.0016853665001690388){
    if(i28<1.0850647687911987){
     s0+=3354.0;
    } else {
     s0+=4131.0;
     s1+=1778.0;
    }
   } else {
    if(i56<0.012051049619913101){
     s0+=13448.0;
     s1+=104.0;
    } else {
     s0+=1361.0;
     s1+=204.0;
    }
   }
  }
 } else {
  if(i12<1.001489520072937){
   if(i10<1.122715711593628){
    if(i46<0.0003886222839355469){
     s0+=222.0;
     s1+=124.0;
    } else {
     s0+=396.0;
     s1+=25.0;
    }
   } else {
    s1+=41.0;
   }
  } else {
   if(i23<1.0413609743118286){
    s0+=10.0;
   } else {
    if(i6<1.0041816234588623){
     s0+=17.0;
     s1+=113.0;
    } else {
     s0+=6.0;
     s1+=549.0;
    }
   }
  }
 }
} else {
 if(i13<1.0063354969024658){
  if(i15<0.9985275268554688){
   if(i36<1.4761377573013306){
    if(i4<-0.0004886984825134277){
     s0+=407.0;
    } else {
     s0+=41.0;
     s1+=5.0;
    }
   } else {
    if(i23<1.0700592994689941){
     s0+=18.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i54<1.0082414150238037){
    if(i17<0.0011663853656500578){
     s0+=35.0;
     s1+=43.0;
    } else {
     s0+=72.0;
     s1+=2260.0;
    }
   } else {
    if(i31<0.05056789517402649){
     s0+=76.0;
     s1+=1193.0;
    } else {
     s0+=894.0;
     s1+=1206.0;
    }
   }
  }
 } else {
  if(i9<-5.036592483520508e-06){
   if(i42<0.007756419479846954){
    s1+=129.0;
   } else {
    if(i37<1.3000928163528442){
     s0+=48.0;
     s1+=9.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i12<1.0038058757781982){
    if(i53<0.0008113899966701865){
     s0+=42.0;
     s1+=25.0;
    } else {
     s0+=9.0;
     s1+=1022.0;
    }
   } else {
    if(i44<-1.3847879017703235e-05){
     s1+=7778.0;
    } else {
     s0+=16.0;
     s1+=300.0;
    }
   }
  }
 }
}
if(i3<3.641843795776367e-05){
 if(i2<0.0807594358921051){
  if(i43<-0.006012856960296631){
   if(i5<0.027787625789642334){
    if(i37<1.1800893545150757){
     s0+=1039.0;
     s1+=288.0;
    } else {
     s0+=2063.0;
     s1+=84.0;
    }
   } else {
    if(i11<0.9959115982055664){
     s0+=200.0;
     s1+=287.0;
    } else {
     s0+=417.0;
     s1+=102.0;
    }
   }
  } else {
   if(i27<0.014130311086773872){
    if(i66<1.008746862411499){
     s0+=54353.0;
     s1+=255.0;
    } else {
     s0+=420.0;
     s1+=88.0;
    }
   } else {
    if(i12<0.9947398900985718){
     s0+=7692.0;
     s1+=51.0;
    } else {
     s0+=2534.0;
     s1+=816.0;
    }
   }
  }
 } else {
  if(i17<0.0017061628168448806){
   if(i60<0.003540337085723877){
    if(i77<-0.0008079756516963243){
     s0+=170.0;
     s1+=33.0;
    } else {
     s0+=63.0;
     s1+=156.0;
    }
   } else {
    if(i33<0.003727432806044817){
     s0+=405.0;
     s1+=24.0;
    } else {
     s0+=25.0;
     s1+=28.0;
    }
   }
  } else {
   if(i4<-0.0007873773574829102){
    if(i61<0.0016480803024023771){
     s0+=367.0;
     s1+=40.0;
    } else {
     s0+=11.0;
     s1+=99.0;
    }
   } else {
    if(i45<0.004473268985748291){
     s0+=136.0;
     s1+=2218.0;
    } else {
     s0+=489.0;
     s1+=904.0;
    }
   }
  }
 }
} else {
 if(i23<1.0413084030151367){
  if(i30<1.0009281635284424){
   s0+=324.0;
  } else {
   if(i65<-2.603132998046931e-07){
    s0+=4.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i12<1.006432294845581){
   if(i2<0.08279749751091003){
    if(i38<1.1353518962860107){
     s0+=2.0;
     s1+=220.0;
    } else {
     s0+=283.0;
     s1+=206.0;
    }
   } else {
    if(i18<0.9967595338821411){
     s0+=36.0;
     s1+=41.0;
    } else {
     s0+=89.0;
     s1+=2555.0;
    }
   }
  } else {
   if(i17<0.0018524355255067348){
    if(i19<0.0019935965538024902){
     s0+=35.0;
     s1+=5.0;
    } else {
     s1+=85.0;
    }
   } else {
    if(i17<0.0021194336004555225){
     s0+=3.0;
     s1+=58.0;
    } else {
     s1+=8444.0;
    }
   }
  }
 }
}
if(i0<0.0818752646446228){
 if(i3<4.178285598754883e-05){
  if(i52<-0.027851760387420654){
   if(i2<0.029557108879089355){
    if(i15<0.9981597661972046){
     s0+=691.0;
     s1+=1.0;
    } else {
     s0+=1410.0;
     s1+=255.0;
    }
   } else {
    if(i7<-3.9589056541444734e-05){
     s0+=23.0;
     s1+=198.0;
    } else {
     s0+=391.0;
     s1+=208.0;
    }
   }
  } else {
   if(i8<1.042891263961792){
    if(i64<-0.0011130273342132568){
     s0+=4405.0;
     s1+=346.0;
    } else {
     s0+=55174.0;
     s1+=245.0;
    }
   } else {
    if(i12<0.9946972131729126){
     s0+=2520.0;
     s1+=44.0;
    } else {
     s0+=4469.0;
     s1+=936.0;
    }
   }
  }
 } else {
  if(i6<1.004202127456665){
   if(i32<0.00046554836444556713){
    s0+=222.0;
   } else {
    if(i32<0.0015538637526333332){
     s1+=191.0;
    } else {
     s0+=274.0;
     s1+=160.0;
    }
   }
  } else {
   if(i49<0.00013825841597281396){
    s1+=776.0;
   } else {
    if(i12<1.005444049835205){
     s0+=26.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i7<-1.2001353752566501e-05){
  if(i18<1.0036053657531738){
   if(i31<0.049041420221328735){
    if(i73<0.9922388792037964){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=3015.0;
    }
   } else {
    if(i17<0.004688357003033161){
     s0+=410.0;
     s1+=348.0;
    } else {
     s0+=113.0;
     s1+=1248.0;
    }
   }
  } else {
   if(i0<0.11369270086288452){
    if(i60<0.0038238167762756348){
     s0+=11.0;
     s1+=612.0;
    } else {
     s0+=36.0;
     s1+=15.0;
    }
   } else {
    if(i17<0.0030014491640031338){
     s0+=17.0;
     s1+=159.0;
    } else {
     s0+=5.0;
     s1+=7979.0;
    }
   }
  }
 } else {
  if(i41<0.058077067136764526){
   if(i69<0.9995571374893188){
    s0+=59.0;
   } else {
    if(i14<-0.00033271312713623047){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=209.0;
    }
   }
  } else {
   if(i33<0.003176993690431118){
    if(i15<1.0012203454971313){
     s0+=708.0;
     s1+=29.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i27<0.048557691276073456){
     s0+=112.0;
     s1+=23.0;
    } else {
     s0+=5.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i13<1.005910873413086){
 if(i18<1.003166675567627){
  if(i0<0.07871049642562866){
   if(i47<0.0002956066164188087){
    if(i25<1.007291316986084){
     s0+=55474.0;
     s1+=388.0;
    } else {
     s0+=522.0;
     s1+=134.0;
    }
   } else {
    if(i34<0.0011259622406214476){
     s0+=3465.0;
     s1+=1039.0;
    } else {
     s0+=8418.0;
     s1+=460.0;
    }
   }
  } else {
   if(i7<-1.0907533578574657e-05){
    if(i31<0.049031853675842285){
     s0+=43.0;
     s1+=1551.0;
    } else {
     s0+=526.0;
     s1+=791.0;
    }
   } else {
    if(i46<-0.00013780593872070312){
     s0+=435.0;
    } else {
     s0+=568.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i5<0.06232750415802002){
   if(i32<0.002177279442548752){
    if(i67<0.00495848897844553){
     s0+=31.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=180.0;
    }
   } else {
    if(i62<-0.009194541722536087){
     s0+=504.0;
     s1+=28.0;
    } else {
     s0+=291.0;
     s1+=217.0;
    }
   }
  } else {
   if(i4<0.0005488395690917969){
    if(i2<0.10979360342025757){
     s0+=93.0;
     s1+=26.0;
    } else {
     s0+=24.0;
     s1+=319.0;
    }
   } else {
    if(i55<0.9974616765975952){
     s0+=11.0;
     s1+=6.0;
    } else {
     s0+=38.0;
     s1+=1501.0;
    }
   }
  }
 }
} else {
 if(i7<-4.281087967683561e-05){
  if(i1<0.06263476610183716){
   if(i37<1.2388319969177246){
    s1+=187.0;
   } else {
    if(i68<-8.110529051919002e-06){
     s1+=60.0;
    } else {
     s0+=87.0;
     s1+=1.0;
    }
   }
  } else {
   if(i9<-0.0003370940685272217){
    s0+=4.0;
   } else {
    if(i1<0.0837630033493042){
     s0+=11.0;
     s1+=393.0;
    } else {
     s0+=8.0;
     s1+=9278.0;
    }
   }
  }
 } else {
  if(i29<0.009573174640536308){
   if(i20<2.3543834686279297e-05){
    if(i20<-2.1457672119140625e-06){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=469.0;
     s1+=8.0;
    }
   } else {
    if(i75<0.02500848099589348){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i36<1.158913493156433){
    s1+=109.0;
   } else {
    if(i2<0.21575167775154114){
     s0+=186.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i1<0.08502736687660217){
 if(i18<1.0032522678375244){
  if(i67<0.010359346866607666){
   if(i64<-0.002987474203109741){
    if(i37<1.098250150680542){
     s0+=33.0;
     s1+=98.0;
    } else {
     s0+=94.0;
     s1+=11.0;
    }
   } else {
    if(i25<1.0079314708709717){
     s0+=46477.0;
     s1+=113.0;
    } else {
     s0+=430.0;
     s1+=171.0;
    }
   }
  } else {
   if(i3<-8.761882781982422e-06){
    if(i19<-0.0014764964580535889){
     s0+=11654.0;
     s1+=121.0;
    } else {
     s0+=6449.0;
     s1+=695.0;
    }
   } else {
    if(i27<0.021580133587121964){
     s0+=2701.0;
     s1+=474.0;
    } else {
     s0+=581.0;
     s1+=511.0;
    }
   }
  }
 } else {
  if(i19<-0.0012886524200439453){
   if(i65<1.2018862435070332e-05){
    if(i37<1.5422987937927246){
     s0+=3.0;
     s1+=51.0;
    } else {
     s0+=49.0;
     s1+=5.0;
    }
   } else {
    if(i7<-0.00017351504357066005){
     s1+=26.0;
    } else {
     s0+=698.0;
     s1+=43.0;
    }
   }
  } else {
   if(i26<0.00018907086632680148){
    if(i49<1.3343739738047589e-05){
     s0+=59.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i78<0.0010100007057189941){
     s0+=78.0;
     s1+=738.0;
    } else {
     s0+=57.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i17<0.004695484880357981){
  if(i49<-1.3013758689339738e-05){
   if(i14<0.00021404027938842773){
    if(i3<3.68952751159668e-05){
     s0+=12.0;
     s1+=51.0;
    } else {
     s0+=32.0;
    }
   } else {
    s1+=730.0;
   }
  } else {
   if(i20<-1.58846378326416e-05){
    if(i15<0.9988715052604675){
     s0+=560.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i31<0.04685324430465698){
     s0+=106.0;
     s1+=1037.0;
    } else {
     s0+=965.0;
     s1+=395.0;
    }
   }
  }
 } else {
  if(i2<0.10645782947540283){
   if(i39<0.0019168911967426538){
    if(i63<0.05534747242927551){
     s0+=2.0;
     s1+=496.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i45<0.004068642854690552){
     s0+=38.0;
     s1+=288.0;
    } else {
     s0+=149.0;
     s1+=8.0;
    }
   }
  } else {
   if(i33<0.0005929835024289787){
    if(i80<-4.410743713378906e-06){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i68<1.7442592934457934e-06){
     s0+=54.0;
     s1+=10806.0;
    } else {
     s0+=46.0;
    }
   }
  }
 }
}
if(i0<0.07771864533424377){
 if(i22<1.007767677307129){
  if(i7<-5.336204412742518e-05){
   if(i12<1.0011881589889526){
    if(i18<1.0069164037704468){
     s0+=1602.0;
     s1+=120.0;
    } else {
     s0+=75.0;
     s1+=51.0;
    }
   } else {
    if(i4<0.0005497932434082031){
     s0+=79.0;
     s1+=42.0;
    } else {
     s0+=13.0;
     s1+=423.0;
    }
   }
  } else {
   if(i23<1.0451585054397583){
    if(i78<-0.0007222294807434082){
     s0+=5394.0;
     s1+=167.0;
    } else {
     s0+=48130.0;
     s1+=53.0;
    }
   } else {
    if(i6<0.9977958798408508){
     s0+=6174.0;
     s1+=207.0;
    } else {
     s0+=5561.0;
     s1+=1154.0;
    }
   }
  }
 } else {
  if(i15<1.0018699169158936){
   if(i7<-4.37045528087765e-05){
    if(i46<-0.00021860003471374512){
     s0+=57.0;
    } else {
     s0+=68.0;
     s1+=245.0;
    }
   } else {
    if(i38<1.1025084257125854){
     s0+=424.0;
     s1+=258.0;
    } else {
     s0+=1580.0;
     s1+=8.0;
    }
   }
  } else {
   if(i6<1.0035301446914673){
    if(i34<0.0024121771566569805){
     s0+=3.0;
     s1+=20.0;
    } else {
     s0+=113.0;
     s1+=4.0;
    }
   } else {
    if(i64<0.003875911235809326){
     s0+=1.0;
     s1+=415.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i14<3.802776336669922e-05){
  if(i50<0.0007533791358582675){
   if(i63<0.03666651248931885){
    if(i7<-9.1950405476382e-06){
     s0+=201.0;
     s1+=1361.0;
    } else {
     s0+=321.0;
     s1+=117.0;
    }
   } else {
    if(i61<0.0016689704498276114){
     s0+=978.0;
     s1+=355.0;
    } else {
     s0+=6.0;
     s1+=120.0;
    }
   }
  } else {
   if(i31<0.05097341537475586){
    if(i69<0.9995124340057373){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=1205.0;
    }
   } else {
    if(i3<-3.8623809814453125e-05){
     s0+=70.0;
     s1+=30.0;
    } else {
     s0+=80.0;
     s1+=488.0;
    }
   }
  }
 } else {
  if(i44<-1.6994551970128668e-06){
   if(i36<1.0570924282073975){
    s0+=23.0;
   } else {
    if(i29<0.011698925867676735){
     s0+=70.0;
     s1+=963.0;
    } else {
     s0+=29.0;
     s1+=9299.0;
    }
   }
  } else {
   if(i33<0.0010621955152601004){
    s1+=10.0;
   } else {
    if(i0<0.3898630440235138){
     s0+=63.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i22<1.0085142850875854){
 if(i1<0.08515104651451111){
  if(i4<0.0006162524223327637){
   if(i2<0.06640750169754028){
    if(i45<-0.0015107989311218262){
     s0+=3733.0;
     s1+=624.0;
    } else {
     s0+=61101.0;
     s1+=619.0;
    }
   } else {
    if(i64<-0.0007759928703308105){
     s0+=193.0;
     s1+=211.0;
    } else {
     s0+=2140.0;
     s1+=258.0;
    }
   }
  } else {
   if(i26<0.00019894546130672097){
    if(i46<0.00020232796669006348){
     s0+=69.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   } else {
    if(i9<0.0003895759582519531){
     s0+=29.0;
     s1+=2.0;
    } else {
     s0+=111.0;
     s1+=590.0;
    }
   }
  }
 } else {
  if(i27<0.022202910855412483){
   if(i15<0.998053789138794){
    s0+=429.0;
   } else {
    if(i41<0.058024823665618896){
     s0+=43.0;
     s1+=465.0;
    } else {
     s0+=457.0;
     s1+=168.0;
    }
   }
  } else {
   if(i9<-0.0004050135612487793){
    if(i69<0.9998124837875366){
     s0+=177.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i45<0.005400598049163818){
     s0+=67.0;
     s1+=2530.0;
    } else {
     s0+=146.0;
     s1+=555.0;
    }
   }
  }
 }
} else {
 if(i1<0.08350569009780884){
  if(i37<1.1040980815887451){
   if(i7<-2.2153506506583653e-05){
    if(i37<1.0598008632659912){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=494.0;
    }
   } else {
    if(i49<2.6986459488398395e-05){
     s0+=274.0;
     s1+=1.0;
    } else {
     s0+=31.0;
     s1+=21.0;
    }
   }
  } else {
   if(i15<1.0031681060791016){
    if(i53<0.0018768972950056195){
     s0+=1428.0;
     s1+=32.0;
    } else {
     s0+=164.0;
     s1+=63.0;
    }
   } else {
    s1+=49.0;
   }
  }
 } else {
  if(i6<1.0016977787017822){
   if(i42<0.0022512043360620737){
    if(i61<3.751723124878481e-05){
     s0+=18.0;
    } else {
     s0+=42.0;
     s1+=688.0;
    }
   } else {
    if(i17<0.005419428460299969){
     s0+=483.0;
     s1+=185.0;
    } else {
     s0+=10.0;
     s1+=429.0;
    }
   }
  } else {
   if(i66<1.0107665061950684){
    if(i5<0.15650737285614014){
     s0+=61.0;
     s1+=337.0;
    } else {
     s1+=720.0;
    }
   } else {
    if(i19<0.0013980865478515625){
     s0+=4.0;
     s1+=795.0;
    } else {
     s1+=7168.0;
    }
   }
  }
 }
}
if(i18<1.002794623374939){
 if(i5<0.07196682691574097){
  if(i21<1.0066981315612793){
   if(i8<1.040665864944458){
    if(i1<0.08318895101547241){
     s0+=58062.0;
     s1+=492.0;
    } else {
     s0+=288.0;
     s1+=94.0;
    }
   } else {
    if(i28<1.229804515838623){
     s0+=3994.0;
     s1+=1210.0;
    } else {
     s0+=4107.0;
     s1+=245.0;
    }
   }
  } else {
   if(i61<0.0006403324659913778){
    if(i39<0.001328903017565608){
     s0+=215.0;
     s1+=418.0;
    } else {
     s0+=1156.0;
     s1+=111.0;
    }
   } else {
    s1+=223.0;
   }
  }
 } else {
  if(i7<-2.2178843209985644e-05){
   if(i2<0.10339391231536865){
    if(i62<-0.01629675179719925){
     s0+=168.0;
     s1+=22.0;
    } else {
     s0+=127.0;
     s1+=390.0;
    }
   } else {
    if(i9<-0.0005412697792053223){
     s0+=18.0;
     s1+=3.0;
    } else {
     s0+=150.0;
     s1+=2983.0;
    }
   }
  } else {
   if(i63<0.03534132242202759){
    if(i31<0.04214915633201599){
     s0+=72.0;
     s1+=245.0;
    } else {
     s0+=368.0;
     s1+=104.0;
    }
   } else {
    if(i7<-9.396530913363677e-06){
     s0+=217.0;
     s1+=105.0;
    } else {
     s0+=726.0;
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i3<1.996755599975586e-05){
  if(i41<0.06418722867965698){
   if(i5<0.08027547597885132){
    if(i72<-0.00040100052137859166){
     s0+=16.0;
     s1+=18.0;
    } else {
     s0+=860.0;
     s1+=25.0;
    }
   } else {
    s1+=66.0;
   }
  } else {
   if(i33<0.006540662609040737){
    if(i48<0.13851547241210938){
     s0+=31.0;
     s1+=9.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i81<0.00028309194021858275){
     s0+=3.0;
    } else {
     s1+=105.0;
    }
   }
  }
 } else {
  if(i37<1.070241093635559){
   s0+=53.0;
  } else {
   if(i4<0.000945746898651123){
    if(i5<0.1124030351638794){
     s0+=261.0;
     s1+=576.0;
    } else {
     s0+=27.0;
     s1+=666.0;
    }
   } else {
    if(i17<0.0094369538128376){
     s0+=51.0;
     s1+=2621.0;
    } else {
     s0+=12.0;
     s1+=6472.0;
    }
   }
  }
 }
}
if(i0<0.07827213406562805){
 if(i18<1.0028541088104248){
  if(i38<1.0556960105895996){
   if(i57<-0.003278195858001709){
    if(i57<-0.003296107053756714){
     s0+=616.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=42474.0;
   }
  } else {
   if(i39<0.0015454425010830164){
    if(i28<1.100754976272583){
     s0+=3598.0;
     s1+=1679.0;
    } else {
     s0+=5240.0;
     s1+=136.0;
    }
   } else {
    if(i15<1.0019540786743164){
     s0+=15945.0;
     s1+=296.0;
    } else {
     s0+=369.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i59<0.09339267015457153){
   if(i3<2.9742717742919922e-05){
    if(i45<-0.00202786922454834){
     s0+=12.0;
     s1+=26.0;
    } else {
     s0+=186.0;
     s1+=16.0;
    }
   } else {
    if(i36<1.2312867641448975){
     s0+=22.0;
     s1+=751.0;
    } else {
     s0+=125.0;
     s1+=112.0;
    }
   }
  } else {
   if(i6<1.0000224113464355){
    if(i8<1.1566972732543945){
     s0+=638.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   } else {
    if(i62<-0.011164598166942596){
     s0+=61.0;
     s1+=5.0;
    } else {
     s0+=40.0;
     s1+=137.0;
    }
   }
  }
 }
} else {
 if(i7<-1.871796303021256e-05){
  if(i14<-3.7550926208496094e-06){
   if(i27<0.0231788232922554){
    if(i45<0.0030008554458618164){
     s0+=25.0;
     s1+=244.0;
    } else {
     s0+=300.0;
     s1+=116.0;
    }
   } else {
    if(i23<1.0663535594940186){
     s0+=43.0;
     s1+=106.0;
    } else {
     s0+=97.0;
     s1+=2179.0;
    }
   }
  } else {
   if(i7<-4.329586590756662e-05){
    if(i28<1.0762357711791992){
     s0+=14.0;
    } else {
     s0+=16.0;
     s1+=10102.0;
    }
   } else {
    if(i17<0.0018074209801852703){
     s0+=76.0;
     s1+=19.0;
    } else {
     s0+=63.0;
     s1+=466.0;
    }
   }
  }
 } else {
  if(i15<0.9985275268554688){
   s0+=495.0;
  } else {
   if(i79<-0.000279843807220459){
    if(i54<1.0119504928588867){
     s0+=65.0;
     s1+=337.0;
    } else {
     s0+=164.0;
     s1+=89.0;
    }
   } else {
    if(i17<0.0035473559983074665){
     s0+=480.0;
     s1+=83.0;
    } else {
     s0+=4.0;
     s1+=63.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i18<1.0029141902923584){
  if(i8<1.042891263961792){
   if(i57<-0.002248018980026245){
    if(i38<1.146665096282959){
     s0+=1436.0;
     s1+=450.0;
    } else {
     s0+=2213.0;
     s1+=27.0;
    }
   } else {
    if(i25<1.008303165435791){
     s0+=56731.0;
     s1+=297.0;
    } else {
     s0+=50.0;
     s1+=29.0;
    }
   }
  } else {
   if(i47<0.00026211331714875996){
    if(i0<0.0766880214214325){
     s0+=2262.0;
     s1+=138.0;
    } else {
     s0+=11.0;
     s1+=89.0;
    }
   } else {
    if(i0<0.06780001521110535){
     s0+=1699.0;
     s1+=455.0;
    } else {
     s0+=130.0;
     s1+=389.0;
    }
   }
  }
 } else {
  if(i3<2.872943878173828e-05){
   if(i19<-0.0009960532188415527){
    if(i35<0.0870392918586731){
     s0+=747.0;
     s1+=4.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i79<-0.0009059011936187744){
     s1+=31.0;
    } else {
     s0+=75.0;
     s1+=9.0;
    }
   }
  } else {
   if(i17<0.0019345192704349756){
    if(i26<0.00038228018092922866){
     s0+=63.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i2<0.05340170860290527){
     s0+=14.0;
     s1+=116.0;
    } else {
     s1+=616.0;
    }
   }
  }
 }
} else {
 if(i11<1.0107395648956299){
  if(i7<-2.5132640075753443e-05){
   if(i48<0.058604054152965546){
    if(i32<0.0014419512590393424){
     s0+=28.0;
     s1+=787.0;
    } else {
     s0+=911.0;
     s1+=330.0;
    }
   } else {
    if(i2<0.09944307804107666){
     s0+=298.0;
     s1+=410.0;
    } else {
     s0+=55.0;
     s1+=2222.0;
    }
   }
  } else {
   if(i73<1.000622034072876){
    if(i33<0.003954497165977955){
     s0+=3047.0;
     s1+=192.0;
    } else {
     s0+=237.0;
     s1+=134.0;
    }
   } else {
    if(i17<0.003802828723564744){
     s0+=447.0;
     s1+=173.0;
    } else {
     s0+=59.0;
     s1+=267.0;
    }
   }
  }
 } else {
  if(i11<1.0237452983856201){
   if(i3<6.073713302612305e-05){
    if(i17<0.003582611447200179){
     s0+=612.0;
     s1+=378.0;
    } else {
     s0+=62.0;
     s1+=966.0;
    }
   } else {
    if(i19<4.178285598754883e-05){
     s0+=13.0;
     s1+=116.0;
    } else {
     s0+=2.0;
     s1+=1269.0;
    }
   }
  } else {
   if(i2<0.004552006721496582){
    if(i3<0.00020319223403930664){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i14<-6.577372550964355e-05){
     s0+=10.0;
     s1+=129.0;
    } else {
     s0+=3.0;
     s1+=6969.0;
    }
   }
  }
 }
}
if(i5<0.07324278354644775){
 if(i14<0.00016123056411743164){
  if(i43<-0.0061691999435424805){
   if(i0<0.04157024621963501){
    if(i29<0.05048888176679611){
     s0+=3399.0;
     s1+=444.0;
    } else {
     s0+=13.0;
     s1+=58.0;
    }
   } else {
    if(i78<-0.0012576878070831299){
     s0+=80.0;
     s1+=496.0;
    } else {
     s0+=212.0;
     s1+=97.0;
    }
   }
  } else {
   if(i66<1.004789113998413){
    if(i39<0.00037776544922962785){
     s0+=40059.0;
     s1+=55.0;
    } else {
     s0+=23172.0;
     s1+=1392.0;
    }
   } else {
    if(i33<0.0010400015162304044){
     s0+=572.0;
     s1+=515.0;
    } else {
     s0+=1573.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i9<-0.00014218688011169434){
   s0+=170.0;
  } else {
   if(i20<2.1755695343017578e-05){
    if(i39<0.002269165823236108){
     s0+=6.0;
     s1+=332.0;
    } else {
     s0+=136.0;
     s1+=11.0;
    }
   } else {
    if(i6<1.004122257232666){
     s0+=1.0;
     s1+=14.0;
    } else {
     s1+=1073.0;
    }
   }
  }
 }
} else {
 if(i3<3.427267074584961e-05){
  if(i1<0.11256253719329834){
   if(i41<0.056710511445999146){
    if(i43<0.01521274447441101){
     s0+=84.0;
     s1+=409.0;
    } else {
     s0+=59.0;
     s1+=1.0;
    }
   } else {
    if(i27<0.030038941651582718){
     s0+=730.0;
     s1+=55.0;
    } else {
     s0+=152.0;
     s1+=64.0;
    }
   }
  } else {
   if(i20<-1.7315149307250977e-05){
    if(i33<0.006182384677231312){
     s0+=175.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i24<1.078222393989563){
     s0+=32.0;
     s1+=968.0;
    } else {
     s0+=439.0;
     s1+=1119.0;
    }
   }
  }
 } else {
  if(i7<-4.4103282561991364e-05){
   if(i4<8.511543273925781e-05){
    s0+=12.0;
   } else {
    if(i17<0.007300524041056633){
     s0+=83.0;
     s1+=1645.0;
    } else {
     s0+=21.0;
     s1+=7952.0;
    }
   }
  } else {
   if(i15<1.0016405582427979){
    if(i48<0.08971406519412994){
     s0+=55.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   } else {
    if(i61<0.00045757548650726676){
     s0+=2.0;
     s1+=10.0;
    } else {
     s1+=94.0;
    }
   }
  }
 }
}
if(i3<3.641843795776367e-05){
 if(i25<1.007267713546753){
  if(i35<0.08101648092269897){
   if(i2<0.08341982960700989){
    if(i59<0.02112605608999729){
     s0+=51913.0;
     s1+=308.0;
    } else {
     s0+=14960.0;
     s1+=1314.0;
    }
   } else {
    if(i15<0.998462438583374){
     s0+=149.0;
     s1+=1.0;
    } else {
     s0+=194.0;
     s1+=878.0;
    }
   }
  } else {
   if(i72<-0.0001114039623644203){
    if(i6<0.9964141845703125){
     s0+=69.0;
     s1+=44.0;
    } else {
     s0+=53.0;
     s1+=444.0;
    }
   } else {
    if(i7<-9.971386134566274e-06){
     s0+=65.0;
     s1+=104.0;
    } else {
     s0+=242.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i1<0.08368849754333496){
   if(i7<-3.553873466444202e-05){
    if(i10<1.0532338619232178){
     s0+=60.0;
     s1+=170.0;
    } else {
     s0+=191.0;
     s1+=77.0;
    }
   } else {
    if(i27<0.02169155701994896){
     s0+=1536.0;
     s1+=43.0;
    } else {
     s0+=219.0;
     s1+=50.0;
    }
   }
  } else {
   if(i41<0.05820918083190918){
    if(i6<0.9964382648468018){
     s0+=6.0;
    } else {
     s0+=21.0;
     s1+=927.0;
    }
   } else {
    if(i61<0.0005353651940822601){
     s0+=668.0;
     s1+=424.0;
    } else {
     s0+=44.0;
     s1+=475.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003586439706850797){
  s0+=332.0;
 } else {
  if(i0<0.058522045612335205){
   if(i38<1.1353518962860107){
    if(i35<0.04728114604949951){
     s1+=392.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i16<0.9776771068572998){
     s0+=30.0;
     s1+=161.0;
    } else {
     s0+=233.0;
     s1+=78.0;
    }
   }
  } else {
   if(i10<1.1363511085510254){
    if(i62<-0.03672673553228378){
     s0+=64.0;
     s1+=59.0;
    } else {
     s0+=145.0;
     s1+=5308.0;
    }
   } else {
    if(i6<1.0015218257904053){
     s0+=14.0;
     s1+=34.0;
    } else {
     s1+=5733.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i0<0.08248752355575562){
  if(i56<0.008001085370779037){
   if(i26<0.000281013548374176){
    if(i11<1.0094983577728271){
     s0+=52229.0;
     s1+=221.0;
    } else {
     s0+=24.0;
     s1+=61.0;
    }
   } else {
    if(i34<0.0010777658317238092){
     s0+=3748.0;
     s1+=1019.0;
    } else {
     s0+=10199.0;
     s1+=204.0;
    }
   }
  } else {
   if(i3<1.1265277862548828e-05){
    if(i2<0.032321929931640625){
     s0+=2238.0;
     s1+=243.0;
    } else {
     s0+=661.0;
     s1+=345.0;
    }
   } else {
    if(i25<1.0169744491577148){
     s0+=102.0;
     s1+=259.0;
    } else {
     s0+=93.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i63<0.03674185276031494){
   if(i30<0.9988019466400146){
    if(i1<0.4299892485141754){
     s0+=142.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i71<1.0281386375427246){
     s0+=71.0;
     s1+=2038.0;
    } else {
     s0+=268.0;
     s1+=675.0;
    }
   }
  } else {
   if(i27<0.04227672517299652){
    if(i60<0.0069026947021484375){
     s0+=304.0;
     s1+=257.0;
    } else {
     s0+=517.0;
     s1+=63.0;
    }
   } else {
    if(i3<-6.183981895446777e-05){
     s0+=84.0;
     s1+=17.0;
    } else {
     s0+=53.0;
     s1+=468.0;
    }
   }
  }
 }
} else {
 if(i17<0.002005344722419977){
  if(i19<0.0020042061805725098){
   if(i44<-1.526416599517688e-05){
    s1+=27.0;
   } else {
    s0+=169.0;
   }
  } else {
   s1+=111.0;
  }
 } else {
  if(i19<3.5822391510009766e-05){
   if(i10<1.123502492904663){
    if(i24<1.067927598953247){
     s0+=80.0;
     s1+=489.0;
    } else {
     s0+=72.0;
     s1+=59.0;
    }
   } else {
    s1+=545.0;
   }
  } else {
   if(i4<0.0006915926933288574){
    if(i36<1.217149257659912){
     s1+=189.0;
    } else {
     s0+=25.0;
     s1+=68.0;
    }
   } else {
    if(i5<0.0004851818084716797){
     s0+=3.0;
     s1+=50.0;
    } else {
     s0+=3.0;
     s1+=9757.0;
    }
   }
  }
 }
}
if(i3<3.832578659057617e-05){
 if(i27<0.022495804354548454){
  if(i40<1.0083746910095215){
   if(i50<0.00028033123817294836){
    if(i7<-4.6539837057935074e-05){
     s0+=303.0;
     s1+=80.0;
    } else {
     s0+=55365.0;
     s1+=319.0;
    }
   } else {
    if(i12<0.9942053556442261){
     s0+=3634.0;
     s1+=114.0;
    } else {
     s0+=1870.0;
     s1+=787.0;
    }
   }
  } else {
   if(i14<8.404254913330078e-05){
    if(i37<1.1037919521331787){
     s0+=640.0;
     s1+=276.0;
    } else {
     s0+=1915.0;
     s1+=107.0;
    }
   } else {
    if(i36<1.1820628643035889){
     s0+=20.0;
     s1+=513.0;
    } else {
     s0+=110.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i66<0.9828024506568909){
   if(i5<0.0843999981880188){
    if(i10<1.0450763702392578){
     s0+=4170.0;
     s1+=75.0;
    } else {
     s0+=377.0;
     s1+=124.0;
    }
   } else {
    if(i69<0.9995483756065369){
     s0+=106.0;
     s1+=15.0;
    } else {
     s0+=85.0;
     s1+=445.0;
    }
   }
  } else {
   if(i7<-7.955359251354821e-06){
    if(i29<0.010422918945550919){
     s0+=243.0;
     s1+=186.0;
    } else {
     s0+=382.0;
     s1+=2275.0;
    }
   } else {
    if(i12<0.9933534860610962){
     s0+=541.0;
     s1+=14.0;
    } else {
     s0+=576.0;
     s1+=298.0;
    }
   }
  }
 }
} else {
 if(i36<1.0624027252197266){
  s0+=274.0;
 } else {
  if(i3<6.216764450073242e-05){
   if(i17<0.0023385407403111458){
    if(i44<-1.4731944247614592e-05){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=134.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.06373962759971619){
     s0+=73.0;
     s1+=115.0;
    } else {
     s0+=71.0;
     s1+=1336.0;
    }
   }
  } else {
   if(i8<1.1223218441009521){
    if(i65<2.5303512302343734e-05){
     s0+=107.0;
     s1+=3378.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   } else {
    s1+=6739.0;
   }
  }
 }
}
if(i5<0.07047033309936523){
 if(i4<0.0005968213081359863){
  if(i10<1.0401114225387573){
   if(i43<-0.005588740110397339){
    if(i28<1.1991922855377197){
     s0+=1077.0;
     s1+=466.0;
    } else {
     s0+=1875.0;
     s1+=70.0;
    }
   } else {
    if(i64<-0.0011120140552520752){
     s0+=2834.0;
     s1+=260.0;
    } else {
     s0+=57096.0;
     s1+=408.0;
    }
   }
  } else {
   if(i2<0.08003166317939758){
    if(i77<-0.0014188459608703852){
     s0+=2204.0;
     s1+=114.0;
    } else {
     s0+=3602.0;
     s1+=745.0;
    }
   } else {
    if(i63<0.02422603964805603){
     s0+=28.0;
     s1+=521.0;
    } else {
     s0+=24.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i47<0.00016167841386049986){
   if(i30<1.0010581016540527){
    if(i7<-5.388803401729092e-05){
     s1+=7.0;
    } else {
     s0+=111.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i2<0.06511685252189636){
    if(i62<-0.010175333358347416){
     s0+=49.0;
     s1+=4.0;
    } else {
     s0+=134.0;
     s1+=501.0;
    }
   } else {
    if(i44<-1.2749674169754144e-05){
     s0+=14.0;
     s1+=1279.0;
    } else {
     s0+=10.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i6<1.0013688802719116){
  if(i20<-1.475214958190918e-05){
   if(i15<0.998828649520874){
    if(i19<-0.0031388401985168457){
     s0+=38.0;
     s1+=10.0;
    } else {
     s0+=434.0;
     s1+=3.0;
    }
   } else {
    if(i77<-0.0012176826130598783){
     s1+=12.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i2<0.11109879612922668){
    if(i42<0.0014944786671549082){
     s0+=314.0;
     s1+=387.0;
    } else {
     s0+=671.0;
     s1+=188.0;
    }
   } else {
    if(i65<9.837558536673896e-06){
     s0+=388.0;
     s1+=795.0;
    } else {
     s0+=45.0;
     s1+=951.0;
    }
   }
  }
 } else {
  if(i1<0.13283678889274597){
   if(i41<0.059302687644958496){
    if(i2<0.08533045649528503){
     s0+=38.0;
     s1+=95.0;
    } else {
     s0+=8.0;
     s1+=704.0;
    }
   } else {
    if(i34<0.001394524471834302){
     s0+=1.0;
     s1+=78.0;
    } else {
     s0+=186.0;
     s1+=97.0;
    }
   }
  } else {
   if(i7<-5.480481559061445e-05){
    if(i14<3.74913215637207e-05){
     s0+=14.0;
     s1+=967.0;
    } else {
     s1+=8081.0;
    }
   } else {
    if(i17<0.002015960868448019){
     s0+=9.0;
    } else {
     s0+=9.0;
     s1+=193.0;
    }
   }
  }
 }
}
if(i1<0.08522948622703552){
 if(i11<1.0081751346588135){
  if(i51<0.0020055267959833145){
   if(i27<0.016880031675100327){
    if(i75<0.0424540713429451){
     s0+=51822.0;
     s1+=209.0;
    } else {
     s0+=4830.0;
     s1+=248.0;
    }
   } else {
    if(i15<0.9991551637649536){
     s0+=4572.0;
     s1+=78.0;
    } else {
     s0+=2529.0;
     s1+=655.0;
    }
   }
  } else {
   if(i5<0.04080885648727417){
    if(i36<1.1800893545150757){
     s0+=1400.0;
     s1+=484.0;
    } else {
     s0+=2704.0;
     s1+=188.0;
    }
   } else {
    if(i41<0.020654290914535522){
     s0+=19.0;
     s1+=233.0;
    } else {
     s0+=529.0;
     s1+=242.0;
    }
   }
  }
 } else {
  if(i7<-4.3531494156923145e-05){
   if(i18<1.0002164840698242){
    if(i61<0.0006219458300620317){
     s0+=73.0;
     s1+=38.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i30<1.000450849533081){
     s0+=3.0;
     s1+=44.0;
    } else {
     s1+=536.0;
    }
   }
  } else {
   if(i17<0.0057424502447247505){
    if(i48<0.02294251322746277){
     s0+=135.0;
     s1+=52.0;
    } else {
     s0+=750.0;
     s1+=13.0;
    }
   } else {
    s1+=34.0;
   }
  }
 }
} else {
 if(i9<-0.0004025697708129883){
  if(i33<0.00890285149216652){
   if(i46<-5.942583084106445e-05){
    if(i9<-0.00041115283966064453){
     s0+=619.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i46<-4.887580871582031e-05){
     s1+=2.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i14<-0.0004938244819641113){
    s0+=26.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i14<8.732080459594727e-05){
   if(i39<0.008262425661087036){
    if(i58<-0.0051826308481395245){
     s0+=814.0;
     s1+=665.0;
    } else {
     s0+=270.0;
     s1+=1738.0;
    }
   } else {
    if(i61<0.00014766305685043335){
     s0+=23.0;
     s1+=21.0;
    } else {
     s0+=57.0;
     s1+=1847.0;
    }
   }
  } else {
   if(i53<0.0010571781313046813){
    if(i19<0.0014304518699645996){
     s0+=78.0;
     s1+=248.0;
    } else {
     s1+=923.0;
    }
   } else {
    if(i38<1.0507837533950806){
     s0+=1.0;
    } else {
     s1+=8403.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i5<0.07105270028114319){
  if(i8<1.0451585054397583){
   if(i45<-0.0016542375087738037){
    if(i26<0.00236779497936368){
     s0+=1022.0;
     s1+=256.0;
    } else {
     s0+=914.0;
     s1+=9.0;
    }
   } else {
    if(i67<0.01048112753778696){
     s0+=44094.0;
     s1+=74.0;
    } else {
     s0+=15577.0;
     s1+=500.0;
    }
   }
  } else {
   if(i50<-9.26050342968665e-05){
    if(i29<0.006674193311482668){
     s0+=120.0;
     s1+=35.0;
    } else {
     s0+=93.0;
     s1+=339.0;
    }
   } else {
    if(i27<0.021702729165554047){
     s0+=5581.0;
     s1+=533.0;
    } else {
     s0+=1190.0;
     s1+=846.0;
    }
   }
  }
 } else {
  if(i15<0.9984169006347656){
   if(i4<-0.0005265772342681885){
    if(i53<0.0019296616083011031){
     s0+=420.0;
    } else {
     s0+=27.0;
     s1+=4.0;
    }
   } else {
    if(i4<-0.000387042760848999){
     s0+=11.0;
     s1+=12.0;
    } else {
     s0+=70.0;
     s1+=2.0;
    }
   }
  } else {
   if(i61<0.000248171592829749){
    if(i31<0.05048045516014099){
     s0+=120.0;
     s1+=294.0;
    } else {
     s0+=560.0;
     s1+=182.0;
    }
   } else {
    if(i1<0.1132657527923584){
     s0+=590.0;
     s1+=551.0;
    } else {
     s0+=130.0;
     s1+=1861.0;
    }
   }
  }
 }
} else {
 if(i47<0.0001623183925403282){
  if(i65<2.5760407424968434e-06){
   if(i3<7.975101470947266e-05){
    if(i51<0.0020051272585988045){
     s0+=169.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   s1+=11.0;
  }
 } else {
  if(i7<-4.401454498292878e-05){
   if(i14<6.258487701416016e-06){
    if(i29<0.020075203850865364){
     s0+=220.0;
     s1+=216.0;
    } else {
     s0+=15.0;
     s1+=1056.0;
    }
   } else {
    if(i0<0.0015204250812530518){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=10069.0;
    }
   }
  } else {
   if(i44<-1.3801911336486228e-05){
    if(i4<0.0005595088005065918){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=211.0;
    }
   } else {
    if(i0<0.09175825119018555){
     s0+=151.0;
     s1+=39.0;
    } else {
     s0+=9.0;
     s1+=32.0;
    }
   }
  }
 }
}
if(i4<0.000545799732208252){
 if(i27<0.022396035492420197){
  if(i40<1.0083954334259033){
   if(i78<-0.0009010434150695801){
    if(i4<-0.0002918243408203125){
     s0+=3917.0;
     s1+=256.0;
    } else {
     s0+=868.0;
     s1+=497.0;
    }
   } else {
    if(i47<0.00034705130383372307){
     s0+=54272.0;
     s1+=275.0;
    } else {
     s0+=2213.0;
     s1+=283.0;
    }
   }
  } else {
   if(i34<0.001183528802357614){
    if(i19<0.0004971623420715332){
     s0+=669.0;
     s1+=214.0;
    } else {
     s0+=4.0;
     s1+=386.0;
    }
   } else {
    if(i17<0.0051060812547802925){
     s0+=1802.0;
     s1+=100.0;
    } else {
     s0+=117.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i6<0.996924102306366){
   if(i47<0.01235511340200901){
    if(i4<-0.0008778572082519531){
     s0+=3742.0;
     s1+=49.0;
    } else {
     s0+=861.0;
     s1+=106.0;
    }
   } else {
    if(i29<0.039546579122543335){
     s0+=441.0;
     s1+=27.0;
    } else {
     s0+=13.0;
     s1+=88.0;
    }
   }
  } else {
   if(i14<-0.00037407875061035156){
    if(i0<0.10510870814323425){
     s0+=437.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=129.0;
    }
   } else {
    if(i37<1.0724589824676514){
     s0+=243.0;
     s1+=1.0;
    } else {
     s0+=920.0;
     s1+=2950.0;
    }
   }
  }
 }
} else {
 if(i7<-4.329586590756662e-05){
  if(i6<1.0037965774536133){
   if(i0<0.15716585516929626){
    if(i55<1.0017485618591309){
     s0+=81.0;
     s1+=586.0;
    } else {
     s0+=92.0;
     s1+=32.0;
    }
   } else {
    s1+=863.0;
   }
  } else {
   if(i29<0.01992575079202652){
    if(i14<1.4483928680419922e-05){
     s0+=54.0;
     s1+=75.0;
    } else {
     s0+=3.0;
     s1+=1972.0;
    }
   } else {
    s1+=7894.0;
   }
  }
 } else {
  if(i73<1.002440333366394){
   if(i49<-6.208756531123072e-08){
    if(i10<1.0596048831939697){
     s0+=247.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=15.0;
    }
   } else {
    if(i9<0.0004125237464904785){
     s0+=2.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i2<0.05643466114997864){
    if(i17<0.005253281909972429){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i14<-0.0002167820930480957){
     s0+=2.0;
     s1+=10.0;
    } else {
     s1+=181.0;
    }
   }
  }
 }
}
if(i19<0.000811159610748291){
 if(i10<1.0452277660369873){
  if(i9<0.0006194710731506348){
   if(i67<0.010507200844585896){
    if(i6<1.0025079250335693){
     s0+=45612.0;
     s1+=209.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.08219277858734131){
     s0+=18451.0;
     s1+=1013.0;
    } else {
     s0+=402.0;
     s1+=629.0;
    }
   }
  } else {
   if(i65<1.9989391148556024e-05){
    if(i34<0.0003663059324026108){
     s0+=46.0;
    } else {
     s0+=28.0;
     s1+=321.0;
    }
   } else {
    if(i74<0.00025284403818659484){
     s0+=263.0;
     s1+=26.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i6<1.0019556283950806){
   if(i32<0.0005111984210088849){
    if(i78<0.0005123615264892578){
     s0+=1485.0;
     s1+=38.0;
    } else {
     s0+=297.0;
     s1+=100.0;
    }
   } else {
    if(i33<0.006003519520163536){
     s0+=3307.0;
     s1+=1854.0;
    } else {
     s0+=430.0;
     s1+=1079.0;
    }
   }
  } else {
   if(i18<0.9982174634933472){
    if(i72<-0.0006735788192600012){
     s1+=28.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   } else {
    if(i29<0.00913461484014988){
     s0+=147.0;
     s1+=53.0;
    } else {
     s0+=82.0;
     s1+=1852.0;
    }
   }
  }
 }
} else {
 if(i47<0.00019853771664202213){
  if(i0<0.05637308955192566){
   if(i44<-1.615422297618352e-05){
    s1+=9.0;
   } else {
    s0+=323.0;
   }
  } else {
   if(i3<1.284480094909668e-05){
    if(i11<1.0128228664398193){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i59<0.04505220800638199){
     s0+=1.0;
     s1+=90.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i9<-0.00029399991035461426){
   s0+=93.0;
  } else {
   if(i6<1.004032850265503){
    if(i30<1.0001516342163086){
     s0+=1.0;
     s1+=832.0;
    } else {
     s0+=151.0;
     s1+=315.0;
    }
   } else {
    if(i34<0.003935946151614189){
     s0+=1.0;
     s1+=1277.0;
    } else {
     s1+=7315.0;
    }
   }
  }
 }
}
if(i12<1.003873348236084){
 if(i8<1.0469921827316284){
  if(i47<0.000317075930070132){
   if(i64<-0.0017223656177520752){
    if(i46<-3.585219383239746e-05){
     s0+=161.0;
     s1+=6.0;
    } else {
     s0+=64.0;
     s1+=98.0;
    }
   } else {
    if(i15<1.002099871635437){
     s0+=54625.0;
     s1+=333.0;
    } else {
     s0+=15.0;
     s1+=22.0;
    }
   }
  } else {
   if(i36<1.1812903881072998){
    if(i15<0.9983367919921875){
     s0+=860.0;
     s1+=12.0;
    } else {
     s0+=1588.0;
     s1+=706.0;
    }
   } else {
    if(i9<0.0006134510040283203){
     s0+=4736.0;
     s1+=45.0;
    } else {
     s0+=191.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i0<0.0916614830493927){
   if(i73<0.999615490436554){
    if(i12<0.9938146471977234){
     s0+=1295.0;
     s1+=26.0;
    } else {
     s0+=1953.0;
     s1+=288.0;
    }
   } else {
    if(i38<1.1083450317382812){
     s0+=1119.0;
     s1+=884.0;
    } else {
     s0+=2542.0;
     s1+=505.0;
    }
   }
  } else {
   if(i9<-0.0004056096076965332){
    if(i33<0.006287245079874992){
     s0+=257.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<0.00023239731672219932){
     s0+=427.0;
     s1+=590.0;
    } else {
     s0+=400.0;
     s1+=3565.0;
    }
   }
  }
 }
} else {
 if(i23<1.0484097003936768){
  if(i15<1.002131700515747){
   if(i22<1.0103634595870972){
    s0+=293.0;
   } else {
    s1+=2.0;
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i17<0.0017015631310641766){
   if(i39<0.0009747938020154834){
    if(i13<1.0060369968414307){
     s0+=19.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i6<1.0068466663360596){
     s0+=261.0;
     s1+=1.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i44<-1.0882319656957407e-05){
    if(i51<0.030237838625907898){
     s0+=75.0;
     s1+=9657.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i61<0.000409064581617713){
     s0+=18.0;
     s1+=202.0;
    } else {
     s0+=139.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i2<0.08297458291053772){
 if(i20<1.9252300262451172e-05){
  if(i56<0.006898176856338978){
   if(i1<0.0663098692893982){
    if(i48<0.022491920739412308){
     s0+=50642.0;
     s1+=278.0;
    } else {
     s0+=9832.0;
     s1+=407.0;
    }
   } else {
    if(i23<1.047502040863037){
     s0+=2480.0;
     s1+=51.0;
    } else {
     s0+=1178.0;
     s1+=412.0;
    }
   }
  } else {
   if(i12<0.9936333298683167){
    if(i6<0.995435357093811){
     s0+=1338.0;
     s1+=17.0;
    } else {
     s0+=316.0;
     s1+=45.0;
    }
   } else {
    if(i49<3.2570675102761015e-05){
     s0+=1793.0;
     s1+=250.0;
    } else {
     s0+=565.0;
     s1+=469.0;
    }
   }
  }
 } else {
  if(i4<0.0007053613662719727){
   if(i17<0.003830481553450227){
    if(i57<-0.0032269954681396484){
     s1+=7.0;
    } else {
     s0+=460.0;
     s1+=6.0;
    }
   } else {
    if(i4<0.00019186735153198242){
     s0+=516.0;
     s1+=42.0;
    } else {
     s0+=158.0;
     s1+=159.0;
    }
   }
  } else {
   if(i45<0.0022560954093933105){
    if(i52<0.013167798519134521){
     s0+=92.0;
     s1+=863.0;
    } else {
     s0+=45.0;
     s1+=22.0;
    }
   } else {
    if(i19<0.00020766258239746094){
     s0+=42.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i4<0.00044280290603637695){
  if(i9<-0.0004000663757324219){
   if(i15<0.9976413249969482){
    s0+=352.0;
   } else {
    if(i11<0.9887347221374512){
     s0+=6.0;
     s1+=13.0;
    } else {
     s0+=80.0;
     s1+=3.0;
    }
   }
  } else {
   if(i41<0.05951610207557678){
    if(i31<0.04119277000427246){
     s0+=12.0;
     s1+=1517.0;
    } else {
     s0+=57.0;
     s1+=279.0;
    }
   } else {
    if(i33<0.006322602275758982){
     s0+=941.0;
     s1+=765.0;
    } else {
     s0+=53.0;
     s1+=490.0;
    }
   }
  }
 } else {
  if(i17<0.002468802034854889){
   if(i45<0.00538402795791626){
    if(i60<0.009113818407058716){
     s0+=1.0;
     s1+=195.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i34<0.0034081418998539448){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=49.0;
     s1+=3.0;
    }
   }
  } else {
   if(i13<1.0053396224975586){
    if(i29<0.024285277351737022){
     s0+=126.0;
     s1+=239.0;
    } else {
     s0+=1.0;
     s1+=1643.0;
    }
   } else {
    if(i27<0.010178185999393463){
     s0+=3.0;
     s1+=549.0;
    } else {
     s1+=8365.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i2<0.08197331428527832){
  if(i51<0.001517964294180274){
   if(i8<1.042891263961792){
    if(i21<1.0087740421295166){
     s0+=56863.0;
     s1+=367.0;
    } else {
     s0+=9.0;
     s1+=17.0;
    }
   } else {
    if(i48<0.03935559093952179){
     s0+=2568.0;
     s1+=199.0;
    } else {
     s0+=187.0;
     s1+=137.0;
    }
   }
  } else {
   if(i9<0.0005815625190734863){
    if(i19<-0.0015122592449188232){
     s0+=2616.0;
     s1+=67.0;
    } else {
     s0+=2458.0;
     s1+=641.0;
    }
   } else {
    if(i13<0.9852592945098877){
     s0+=157.0;
     s1+=25.0;
    } else {
     s0+=15.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i15<0.9981926679611206){
   if(i23<1.0773582458496094){
    if(i9<-0.0004360675811767578){
     s0+=101.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i74<0.00036902265856042504){
     s1+=4.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i64<0.0035517513751983643){
    if(i4<-0.00028961896896362305){
     s0+=61.0;
     s1+=177.0;
    } else {
     s0+=28.0;
     s1+=875.0;
    }
   } else {
    if(i28<1.2020978927612305){
     s1+=3.0;
    } else {
     s0+=26.0;
    }
   }
  }
 }
} else {
 if(i13<1.0065340995788574){
  if(i0<0.09559676051139832){
   if(i44<-9.111179679166526e-06){
    if(i57<0.003613203763961792){
     s0+=417.0;
     s1+=771.0;
    } else {
     s0+=800.0;
     s1+=128.0;
    }
   } else {
    if(i37<1.1037919521331787){
     s0+=1078.0;
     s1+=359.0;
    } else {
     s0+=2183.0;
     s1+=62.0;
    }
   }
  } else {
   if(i18<1.000347375869751){
    if(i46<-0.00013530254364013672){
     s0+=284.0;
     s1+=12.0;
    } else {
     s0+=387.0;
     s1+=1068.0;
    }
   } else {
    if(i33<0.005209420341998339){
     s0+=191.0;
     s1+=621.0;
    } else {
     s0+=60.0;
     s1+=1843.0;
    }
   }
  }
 } else {
  if(i1<0.06849098205566406){
   if(i7<-4.556764542940073e-05){
    if(i78<0.001531839370727539){
     s1+=188.0;
    } else {
     s0+=21.0;
     s1+=5.0;
    }
   } else {
    if(i53<0.001412885496392846){
     s0+=179.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i3<9.715557098388672e-06){
    if(i61<0.00031421968014910817){
     s0+=88.0;
     s1+=37.0;
    } else {
     s0+=6.0;
     s1+=129.0;
    }
   } else {
    if(i1<0.08954453468322754){
     s0+=60.0;
     s1+=352.0;
    } else {
     s0+=24.0;
     s1+=9040.0;
    }
   }
  }
 }
}
if(i0<0.07742762565612793){
 if(i8<1.0451608896255493){
  if(i26<0.00027658703038468957){
   if(i64<-0.0028032660484313965){
    if(i23<1.1355012655258179){
     s1+=22.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i11<1.0098981857299805){
     s0+=51119.0;
     s1+=147.0;
    } else {
     s0+=21.0;
     s1+=26.0;
    }
   }
  } else {
   if(i13<0.9896939992904663){
    if(i65<2.861453822333715e-06){
     s0+=1.0;
     s1+=16.0;
    } else {
     s0+=7371.0;
     s1+=76.0;
    }
   } else {
    if(i17<0.00414067879319191){
     s0+=3573.0;
     s1+=459.0;
    } else {
     s0+=63.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i12<1.0049214363098145){
   if(i3<1.5437602996826172e-05){
    if(i15<0.9985731840133667){
     s0+=1642.0;
     s1+=14.0;
    } else {
     s0+=4834.0;
     s1+=924.0;
    }
   } else {
    if(i36<1.1773569583892822){
     s0+=137.0;
     s1+=328.0;
    } else {
     s0+=599.0;
     s1+=222.0;
    }
   }
  } else {
   if(i46<0.00013127923011779785){
    if(i53<0.0016593404579907656){
     s0+=108.0;
     s1+=21.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    if(i7<-3.924167685909197e-05){
     s0+=3.0;
     s1+=676.0;
    } else {
     s0+=9.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i1<0.1132657527923584){
  if(i60<0.002777785062789917){
   if(i45<0.004650384187698364){
    if(i7<-9.604874321667012e-06){
     s0+=79.0;
     s1+=1403.0;
    } else {
     s0+=131.0;
     s1+=63.0;
    }
   } else {
    if(i53<0.0040143639780581){
     s0+=122.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i31<0.04014778137207031){
    if(i1<0.08386749029159546){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=76.0;
    }
   } else {
    if(i42<0.0013359602307900786){
     s0+=191.0;
     s1+=85.0;
    } else {
     s0+=550.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i46<-0.0002683401107788086){
   if(i33<0.01245677750557661){
    s0+=265.0;
   } else {
    s1+=24.0;
   }
  } else {
   if(i7<-2.1036785256001167e-05){
    if(i12<1.0012915134429932){
     s0+=159.0;
     s1+=2500.0;
    } else {
     s0+=41.0;
     s1+=9139.0;
    }
   } else {
    if(i31<0.06985092163085938){
     s0+=17.0;
     s1+=291.0;
    } else {
     s0+=299.0;
     s1+=128.0;
    }
   }
  }
 }
}
if(i19<0.0008068680763244629){
 if(i23<1.057713270187378){
  if(i2<0.08344531059265137){
   if(i25<1.0092909336090088){
    if(i34<0.00029649774660356343){
     s0+=36058.0;
     s1+=2.0;
    } else {
     s0+=22384.0;
     s1+=650.0;
    }
   } else {
    if(i55<0.9992603063583374){
     s0+=25.0;
    } else {
     s0+=3.0;
     s1+=52.0;
    }
   }
  } else {
   if(i15<0.9988676309585571){
    if(i9<-0.00042554736137390137){
     s0+=132.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i28<1.1824603080749512){
     s0+=19.0;
     s1+=155.0;
    } else {
     s0+=71.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i0<0.08070677518844604){
   if(i37<1.1037919521331787){
    if(i7<-1.6322184819728136e-05){
     s0+=107.0;
     s1+=582.0;
    } else {
     s0+=1407.0;
     s1+=525.0;
    }
   } else {
    if(i29<0.04902630299329758){
     s0+=9026.0;
     s1+=644.0;
    } else {
     s0+=21.0;
     s1+=155.0;
    }
   }
  } else {
   if(i33<0.005045495927333832){
    if(i41<0.06349343061447144){
     s0+=109.0;
     s1+=1308.0;
    } else {
     s0+=1079.0;
     s1+=595.0;
    }
   } else {
    if(i23<1.12269127368927){
     s0+=102.0;
     s1+=229.0;
    } else {
     s0+=92.0;
     s1+=2342.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041282176971436){
  if(i7<-4.2801930248970166e-05){
   if(i26<0.000333062547724694){
    if(i46<0.00011813640594482422){
     s0+=176.0;
     s1+=16.0;
    } else {
     s1+=90.0;
    }
   } else {
    if(i15<0.9986504316329956){
     s0+=17.0;
    } else {
     s0+=26.0;
     s1+=1075.0;
    }
   }
  } else {
   if(i15<1.0006322860717773){
    if(i2<0.05341467261314392){
     s0+=2.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i37<1.1386182308197021){
     s1+=17.0;
    } else {
     s0+=380.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i81<7.775778794893995e-05){
   if(i6<1.005003809928894){
    s0+=1.0;
   } else {
    s1+=48.0;
   }
  } else {
   s1+=8424.0;
  }
 }
}
if(i3<3.7729740142822266e-05){
 if(i75<0.04721248149871826){
  if(i2<0.08468303084373474){
   if(i27<0.024150390177965164){
    if(i13<1.0047039985656738){
     s0+=55275.0;
     s1+=404.0;
    } else {
     s0+=413.0;
     s1+=116.0;
    }
   } else {
    if(i13<0.9927380084991455){
     s0+=1049.0;
     s1+=25.0;
    } else {
     s0+=104.0;
     s1+=227.0;
    }
   }
  } else {
   if(i60<0.003583461046218872){
    if(i19<-0.0013833045959472656){
     s0+=23.0;
     s1+=6.0;
    } else {
     s0+=34.0;
     s1+=484.0;
    }
   } else {
    if(i26<0.0012519874144345522){
     s0+=56.0;
     s1+=67.0;
    } else {
     s0+=69.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i1<0.08521229028701782){
   if(i3<-2.0444393157958984e-05){
    if(i34<0.0023096799850463867){
     s0+=2249.0;
     s1+=276.0;
    } else {
     s0+=5776.0;
     s1+=67.0;
    }
   } else {
    if(i32<0.0003339140093885362){
     s0+=1179.0;
    } else {
     s0+=2751.0;
     s1+=965.0;
    }
   }
  } else {
   if(i9<-0.0004054605960845947){
    if(i30<0.9991846084594727){
     s0+=388.0;
     s1+=1.0;
    } else {
     s0+=22.0;
     s1+=20.0;
    }
   } else {
    if(i31<0.043101340532302856){
     s0+=55.0;
     s1+=1641.0;
    } else {
     s0+=896.0;
     s1+=1184.0;
    }
   }
  }
 }
} else {
 if(i30<0.9990332126617432){
  if(i53<0.0034066932275891304){
   s0+=296.0;
  } else {
   s1+=6.0;
  }
 } else {
  if(i2<0.06429591774940491){
   if(i64<0.0017584264278411865){
    if(i3<6.192922592163086e-05){
     s0+=123.0;
     s1+=130.0;
    } else {
     s0+=42.0;
     s1+=371.0;
    }
   } else {
    if(i28<1.175731897354126){
     s1+=1.0;
    } else {
     s0+=77.0;
    }
   }
  } else {
   if(i1<0.13139626383781433){
    if(i24<1.0744779109954834){
     s0+=73.0;
     s1+=1526.0;
    } else {
     s0+=96.0;
     s1+=147.0;
    }
   } else {
    if(i5<0.16528329253196716){
     s0+=21.0;
     s1+=2771.0;
    } else {
     s1+=6742.0;
    }
   }
  }
 }
}
if(i21<1.0068414211273193){
 if(i8<1.057713270187378){
  if(i0<0.07825422286987305){
   if(i3<3.9696693420410156e-05){
    if(i59<0.01908271387219429){
     s0+=50877.0;
     s1+=208.0;
    } else {
     s0+=12930.0;
     s1+=872.0;
    }
   } else {
    if(i18<0.9991949796676636){
     s0+=220.0;
    } else {
     s0+=28.0;
     s1+=155.0;
    }
   }
  } else {
   if(i23<1.0501967668533325){
    if(i30<0.9995039105415344){
     s0+=153.0;
     s1+=2.0;
    } else {
     s0+=76.0;
     s1+=46.0;
    }
   } else {
    if(i43<0.014278143644332886){
     s0+=56.0;
     s1+=557.0;
    } else {
     s0+=70.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i67<0.09546924382448196){
   if(i18<1.0003581047058105){
    if(i32<0.000518973742146045){
     s0+=1311.0;
     s1+=42.0;
    } else {
     s0+=2051.0;
     s1+=818.0;
    }
   } else {
    if(i14<-0.00013196468353271484){
     s0+=556.0;
     s1+=411.0;
    } else {
     s0+=234.0;
     s1+=946.0;
    }
   }
  } else {
   if(i32<0.0015512150712311268){
    s0+=119.0;
   } else {
    if(i13<0.9788023233413696){
     s0+=105.0;
     s1+=150.0;
    } else {
     s0+=62.0;
     s1+=1751.0;
    }
   }
  }
 }
} else {
 if(i21<1.0209896564483643){
  if(i1<0.06564190983772278){
   if(i38<1.0862454175949097){
    if(i14<2.5093555450439453e-05){
     s0+=63.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=192.0;
    }
   } else {
    if(i20<2.396106719970703e-05){
     s0+=1076.0;
     s1+=33.0;
    } else {
     s0+=23.0;
     s1+=63.0;
    }
   }
  } else {
   if(i30<0.9989286661148071){
    if(i20<-1.4960765838623047e-05){
     s0+=69.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<-2.257646519865375e-05){
     s0+=194.0;
     s1+=3347.0;
    } else {
     s0+=354.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i17<0.0031789960339665413){
   if(i6<1.0024387836456299){
    if(i12<0.9942924976348877){
     s1+=15.0;
    } else {
     s0+=253.0;
     s1+=9.0;
    }
   } else {
    if(i19<0.0003541111946105957){
     s0+=1.0;
    } else {
     s1+=228.0;
    }
   }
  } else {
   if(i68<3.66678307273105e-07){
    if(i0<0.060612648725509644){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=5.0;
     s1+=7364.0;
    }
   } else {
    s0+=17.0;
   }
  }
 }
}
if(i1<0.08510008454322815){
 if(i6<1.0024787187576294){
  if(i56<0.007415939588099718){
   if(i38<1.0557184219360352){
    s0+=41995.0;
   } else {
    if(i6<0.9967687726020813){
     s0+=12688.0;
     s1+=56.0;
    } else {
     s0+=10907.0;
     s1+=1268.0;
    }
   }
  } else {
   if(i6<0.9965866804122925){
    if(i44<-2.954028605017811e-05){
     s0+=57.0;
     s1+=19.0;
    } else {
     s0+=1442.0;
     s1+=58.0;
    }
   } else {
    if(i7<-3.575453592929989e-05){
     s0+=234.0;
     s1+=334.0;
    } else {
     s0+=1752.0;
     s1+=450.0;
    }
   }
  }
 } else {
  if(i44<-1.4116389138507657e-05){
   if(i60<0.0027196407318115234){
    if(i32<0.0071955472230911255){
     s0+=10.0;
     s1+=852.0;
    } else {
     s0+=79.0;
     s1+=126.0;
    }
   } else {
    s0+=34.0;
   }
  } else {
   if(i38<1.125915288925171){
    if(i26<0.00018805119907483459){
     s0+=3.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i17<0.003547507571056485){
     s0+=146.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i9<-0.0003857910633087158){
  if(i73<0.9980954527854919){
   if(i18<0.9948311448097229){
    s0+=512.0;
   } else {
    if(i65<2.0649888028856367e-05){
     s0+=52.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  } else {
   if(i69<0.9998151063919067){
    if(i51<-0.0002173110842704773){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i8<1.0615109205245972){
     s0+=10.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i4<0.0004442930221557617){
   if(i31<0.04665803909301758){
    if(i29<0.012232840061187744){
     s0+=50.0;
     s1+=294.0;
    } else {
     s0+=41.0;
     s1+=1553.0;
    }
   } else {
    if(i2<0.2612289786338806){
     s0+=950.0;
     s1+=541.0;
    } else {
     s0+=34.0;
     s1+=435.0;
    }
   }
  } else {
   if(i4<0.0008349418640136719){
    if(i2<0.12862688302993774){
     s0+=99.0;
     s1+=264.0;
    } else {
     s0+=39.0;
     s1+=942.0;
    }
   } else {
    if(i2<0.13651317358016968){
     s0+=31.0;
     s1+=1217.0;
    } else {
     s0+=5.0;
     s1+=8533.0;
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
