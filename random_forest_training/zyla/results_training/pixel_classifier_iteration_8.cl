/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=15 top_hat_box=20 difference_of_gaussian=15 top_hat_box=30 gaussian_blur=10 laplace_box_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=10 median_box=5 top_hat_box=10 maximum_box=3 maximum_box=2 difference_of_gaussian=20 gaussian_blur=5 mean_box=10 gaussian_blur=15 difference_of_gaussian=10 gaussian_blur=3 mean_box=15 laplace_box_of_gaussian_blur=10 median_box=3 sobel_of_median_box=5 sobel_of_gaussian_blur=10 laplace_box_of_gaussian_blur=20 maximum_box=5 mean_box=2 maximum_box=1 mean_box=5 top_hat_box=5 maximum_box=30 gaussian_blur=2 variance_box=2 variance_box=3 maximum_box=10 variance_box=30 sobel_of_gaussian_blur=5 mean_box=3 difference_of_gaussian=30 maximum_box=15 variance_box=15 variance_box=10 top_hat_box=2 top_hat_box=3 maximum_box=20 small_hessian_eigenvalue_of_gaussian_blur=15 difference_of_gaussian=2 laplace_box_of_gaussian_blur=2 variance_box=5 variance_box=20 sobel_of_gaussian_blur=15 gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=2 laplace_box_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=5 gaussian_blur=30 sobel_of_median_box=3 top_hat_box=1 sobel_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=20 laplace_box_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=30 mean_box=1 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=1 sobel_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=3 gaussian_blur=1 mean_box=20 sobel_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 76
max_depth = 5
num_trees = 250
feature_importances = 0.09472262465068577,0.10419088179007532,0.06977207598784714,0.08938443358122279,0.0770194758717916,0.05164299708531378,0.06470379518881063,0.029504914916736156,0.06725897499037214,0.03519436023468583,0.0334273177788707,0.01766512683089602,0.017947189383008346,0.012250408562777131,0.01430073946660874,0.021259709900518252,0.015462035645556644,0.009514447050556868,0.00910156101624891,0.008660201190207389,0.0050011246923564534,0.009658548326182449,0.015344209201332622,0.010340985807832985,0.0001593231826477984,0.005636599131578053,0.003418605030119557,0.006312027803206327,0.0036600776086084356,0.014479987966964326,0.004344644881119411,0.0024775094609542137,0.0028658642513308664,0.0019872953929159208,0.0036439580783407142,0.005489825979704534,0.0014019803670706587,0.0027929728907292403,0.0031107644620814124,0.002713777571586962,0.0024129988672297424,0.0018451845903377313,0.0023554198285972642,0.0024039182413246357,0.0014431105687533992,0.001562552637083766,0.0016510460408031174,0.0016855665112107156,0.0015485014199747948,0.0014580180881021468,0.0007793609742182023,0.0014044458618719048,0.0013518203860041007,0.0009426859825949736,0.000800360058489856,0.0007927418887624708,0.001076814260512023,0.0015822711134303392,0.0020787277647928595,0.0008212839966857214,0.00105970364778481,0.0007109470078548349,0.0010772650857703364,0.00144898986350333,0.0013578003167236644,0.001123261145037354,0.0004910093761897466,0.002785072847335325,0.0006699884979170337,0.001052833088888493,0.0007989882212006621,0.0006851173200976284,0.0010448765318992938,0.007022542117976794,0.0005808464455390768,0.00027057619604868734
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i0<0.0782729983329773){
 if(i4<1.0024828910827637){
  if(i44<-0.0015491843223571777){
   if(i2<0.0002580881118774414){
    if(i0<0.042542070150375366){
     s0+=3576.0;
     s1+=404.0;
    } else {
     s0+=249.0;
     s1+=270.0;
    }
   } else {
    if(i53<-0.0013267099857330322){
     s0+=34.0;
     s1+=153.0;
    } else {
     s0+=109.0;
     s1+=16.0;
    }
   }
  } else {
   if(i23<1.0486011505126953){
    if(i23<1.042891263961792){
     s0+=51109.0;
     s1+=93.0;
    } else {
     s0+=3691.0;
     s1+=129.0;
    }
   } else {
    if(i46<0.0017896501813083887){
     s0+=6015.0;
     s1+=1021.0;
    } else {
     s0+=4177.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i43<-1.4116389138507657e-05){
   if(i28<1.4901387691497803){
    if(i60<0.39267492294311523){
     s0+=7.0;
     s1+=932.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i51<-0.05500391125679016){
     s0+=2.0;
     s1+=112.0;
    } else {
     s0+=81.0;
     s1+=27.0;
    }
   }
  } else {
   if(i74<1.0024738311767578){
    if(i28<1.2160128355026245){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=130.0;
    }
   } else {
    if(i11<0.0006071329116821289){
     s0+=9.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i49<0.9987839460372925){
  if(i23<1.398578405380249){
   if(i15<-0.0005285143852233887){
    s0+=327.0;
   } else {
    if(i43<-1.0199353710049763e-05){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i70<0.00023168878396973014){
   if(i6<-1.38188770506531e-05){
    if(i44<0.009179294109344482){
     s0+=76.0;
     s1+=1163.0;
    } else {
     s0+=91.0;
     s1+=59.0;
    }
   } else {
    if(i12<0.997210681438446){
     s0+=178.0;
     s1+=138.0;
    } else {
     s0+=287.0;
     s1+=17.0;
    }
   }
  } else {
   if(i21<0.0032020597718656063){
    if(i71<2.9419411475828383e-06){
     s0+=65.0;
     s1+=441.0;
    } else {
     s0+=334.0;
     s1+=277.0;
    }
   } else {
    if(i0<0.10458174347877502){
     s0+=277.0;
     s1+=1036.0;
    } else {
     s0+=97.0;
     s1+=10891.0;
    }
   }
  }
 }
}
if(i4<1.0024793148040771){
 if(i3<0.08556181192398071){
  if(i23<1.0467959642410278){
   if(i68<0.01778155378997326){
    if(i62<-0.002736121416091919){
     s0+=73.0;
     s1+=47.0;
    } else {
     s0+=46161.0;
     s1+=49.0;
    }
   } else {
    if(i14<1.0004847049713135){
     s0+=8388.0;
     s1+=139.0;
    } else {
     s0+=300.0;
     s1+=61.0;
    }
   }
  } else {
   if(i38<0.0010788892395794392){
    if(i20<0.016586367040872574){
     s0+=3632.0;
     s1+=481.0;
    } else {
     s0+=328.0;
     s1+=814.0;
    }
   } else {
    if(i50<0.0038251352962106466){
     s0+=8083.0;
     s1+=209.0;
    } else {
     s0+=2016.0;
     s1+=394.0;
    }
   }
  }
 } else {
  if(i33<0.00045606427011080086){
   if(i13<1.0009623765945435){
    if(i17<1.0012741088867188){
     s0+=431.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<1.000945806503296){
     s1+=9.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i22<-1.5676021575927734e-05){
    if(i6<-5.985529423924163e-05){
     s1+=5.0;
    } else {
     s0+=396.0;
     s1+=13.0;
    }
   } else {
    if(i55<-0.005184322129935026){
     s0+=835.0;
     s1+=1470.0;
    } else {
     s0+=188.0;
     s1+=2256.0;
    }
   }
  }
 }
} else {
 if(i43<-1.0861936061701272e-05){
  if(i56<-0.0005580397555604577){
   if(i18<-4.470348358154297e-06){
    if(i48<0.0016212845221161842){
     s0+=2.0;
    } else {
     s1+=422.0;
    }
   } else {
    s1+=6880.0;
   }
  } else {
   if(i13<1.0047661066055298){
    if(i21<0.003297391813248396){
     s0+=71.0;
     s1+=8.0;
    } else {
     s0+=117.0;
     s1+=762.0;
    }
   } else {
    if(i4<1.004091501235962){
     s0+=74.0;
     s1+=353.0;
    } else {
     s0+=12.0;
     s1+=2643.0;
    }
   }
  }
 } else {
  if(i3<0.10686740279197693){
   if(i38<0.002365133259445429){
    if(i1<0.04696232080459595){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    s0+=64.0;
   }
  } else {
   if(i53<0.008154153823852539){
    s1+=51.0;
   } else {
    s0+=1.0;
   }
  }
 }
}
if(i1<0.08341947197914124){
 if(i22<2.3066997528076172e-05){
  if(i32<1.0556960105895996){
   if(i64<-0.0019733011722564697){
    if(i42<1.0776944160461426){
     s0+=609.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    s0+=42317.0;
   }
  } else {
   if(i38<0.001101042958907783){
    if(i74<1.0007718801498413){
     s0+=5886.0;
     s1+=1172.0;
    } else {
     s0+=188.0;
     s1+=613.0;
    }
   } else {
    if(i50<0.006450389511883259){
     s0+=18144.0;
     s1+=237.0;
    } else {
     s0+=1465.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i50<0.001304148230701685){
   if(i16<1.005029559135437){
    if(i15<0.0006850361824035645){
     s0+=619.0;
     s1+=29.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i18<-2.09808349609375e-05){
     s0+=40.0;
    } else {
     s0+=1.0;
     s1+=127.0;
    }
   }
  } else {
   if(i71<3.10800714942161e-05){
    if(i15<7.355213165283203e-05){
     s0+=127.0;
     s1+=287.0;
    } else {
     s0+=3.0;
     s1+=395.0;
    }
   } else {
    if(i70<0.001961303874850273){
     s0+=159.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i33<0.0005118426633998752){
  if(i49<0.9996237754821777){
   if(i1<0.08355578780174255){
    if(i20<0.016818277537822723){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=213.0;
   }
  } else {
   if(i23<1.0751657485961914){
    if(i33<0.00026809671544469893){
     s0+=18.0;
    } else {
     s0+=2.0;
     s1+=114.0;
    }
   } else {
    s0+=142.0;
   }
  }
 } else {
  if(i15<0.0003445446491241455){
   if(i41<0.059203147888183594){
    if(i4<0.9963635206222534){
     s0+=22.0;
     s1+=43.0;
    } else {
     s0+=17.0;
     s1+=1980.0;
    }
   } else {
    if(i8<0.15148547291755676){
     s0+=831.0;
     s1+=445.0;
    } else {
     s0+=271.0;
     s1+=1236.0;
    }
   }
  } else {
   if(i43<-1.5590551356581273e-06){
    if(i6<-4.3320978875271976e-05){
     s1+=9744.0;
    } else {
     s0+=79.0;
     s1+=266.0;
    }
   } else {
    if(i42<1.223331332206726){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=66.0;
    }
   }
  }
 }
}
if(i29<1.0088520050048828){
 if(i3<0.08580175042152405){
  if(i2<0.0006162524223327637){
   if(i63<0.007863675244152546){
    if(i42<1.0714969635009766){
     s0+=36531.0;
     s1+=8.0;
    } else {
     s0+=28140.0;
     s1+=1156.0;
    }
   } else {
    if(i43<-5.412986411101883e-06){
     s0+=628.0;
     s1+=363.0;
    } else {
     s0+=2099.0;
     s1+=304.0;
    }
   }
  } else {
   if(i31<0.00019618321675807238){
    if(i6<-5.501325358636677e-05){
     s1+=2.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i50<0.0003782514831982553){
     s0+=48.0;
     s1+=5.0;
    } else {
     s0+=88.0;
     s1+=672.0;
    }
   }
  }
 } else {
  if(i6<-7.816519428160973e-06){
   if(i0<0.10074204206466675){
    if(i28<1.2371783256530762){
     s0+=35.0;
     s1+=394.0;
    } else {
     s0+=262.0;
     s1+=172.0;
    }
   } else {
    if(i47<0.0006845893803983927){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=95.0;
     s1+=2711.0;
    }
   }
  } else {
   if(i74<0.9993598461151123){
    if(i33<0.0017478063236922026){
     s0+=542.0;
     s1+=8.0;
    } else {
     s0+=40.0;
     s1+=16.0;
    }
   } else {
    if(i41<0.05368697643280029){
     s0+=15.0;
     s1+=118.0;
    } else {
     s0+=142.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i11<0.00051116943359375){
  if(i21<0.002810371108353138){
   if(i15<0.001487433910369873){
    if(i6<-4.2801930248970166e-05){
     s0+=48.0;
     s1+=140.0;
    } else {
     s0+=1755.0;
     s1+=193.0;
    }
   } else {
    if(i49<1.0002167224884033){
     s1+=176.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=1175.0;
   } else {
    if(i3<0.1776140034198761){
     s0+=299.0;
     s1+=63.0;
    } else {
     s0+=75.0;
     s1+=1360.0;
    }
   }
  }
 } else {
  if(i5<3.695487976074219e-05){
   if(i58<0.06471435725688934){
    if(i8<0.09871292114257812){
     s0+=157.0;
     s1+=17.0;
    } else {
     s0+=12.0;
     s1+=34.0;
    }
   } else {
    if(i37<1.1826151609420776){
     s0+=3.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i66<1.000657081604004){
    if(i1<0.057268351316452026){
     s0+=12.0;
     s1+=22.0;
    } else {
     s0+=11.0;
     s1+=6861.0;
    }
   } else {
    if(i57<1.0000720024108887){
     s0+=62.0;
     s1+=138.0;
    } else {
     s0+=3.0;
     s1+=805.0;
    }
   }
  }
 }
}
if(i14<1.0016478300094604){
 if(i46<0.0003822727012448013){
  if(i19<1.011214256286621){
   if(i1<0.08909755945205688){
    if(i19<1.0075360536575317){
     s0+=48944.0;
     s1+=160.0;
    } else {
     s0+=246.0;
     s1+=65.0;
    }
   } else {
    if(i36<-1.4275312423706055e-05){
     s0+=29.0;
    } else {
     s0+=8.0;
     s1+=25.0;
    }
   }
  } else {
   s1+=102.0;
  }
 } else {
  if(i7<1.010773777961731){
   if(i9<1.0398929119110107){
    if(i42<1.100754976272583){
     s0+=2434.0;
     s1+=466.0;
    } else {
     s0+=9765.0;
     s1+=97.0;
    }
   } else {
    if(i21<0.004554742947220802){
     s0+=6866.0;
     s1+=1695.0;
    } else {
     s0+=874.0;
     s1+=1670.0;
    }
   }
  } else {
   if(i1<0.07692122459411621){
    if(i39<0.0017379671335220337){
     s1+=95.0;
    } else {
     s0+=383.0;
     s1+=26.0;
    }
   } else {
    if(i51<0.10485312342643738){
     s0+=126.0;
     s1+=2081.0;
    } else {
     s0+=166.0;
     s1+=425.0;
    }
   }
  }
 }
} else {
 if(i4<1.0023481845855713){
  if(i0<0.1026032567024231){
   if(i53<-0.003061056137084961){
    if(i63<0.017007993534207344){
     s0+=30.0;
     s1+=14.0;
    } else {
     s0+=18.0;
     s1+=82.0;
    }
   } else {
    if(i47<0.0018079748842865229){
     s0+=39.0;
     s1+=44.0;
    } else {
     s0+=870.0;
     s1+=61.0;
    }
   }
  } else {
   if(i58<0.05982840806245804){
    if(i53<0.0056819915771484375){
     s0+=5.0;
     s1+=49.0;
    } else {
     s0+=39.0;
     s1+=3.0;
    }
   } else {
    if(i39<0.0031441734172403812){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i21<0.001046517165377736){
   if(i55<-0.0012945502530783415){
    if(i6<-6.688573921564966e-05){
     s1+=16.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=65.0;
   }
  } else {
   if(i18<6.318092346191406e-06){
    if(i34<0.01821301504969597){
     s0+=132.0;
     s1+=180.0;
    } else {
     s0+=5.0;
     s1+=865.0;
    }
   } else {
    if(i46<0.00023668771609663963){
     s0+=1.0;
    } else {
     s0+=12.0;
     s1+=8636.0;
    }
   }
  }
 }
}
if(i23<1.0576403141021729){
 if(i31<0.00030318688368424773){
  if(i65<0.0008607685449533165){
   if(i29<1.0088374614715576){
    if(i26<1.0088398456573486){
     s0+=51157.0;
     s1+=117.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i75<0.00014551260392181575){
     s0+=3.0;
     s1+=90.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i72<0.012773629277944565){
    if(i2<-0.0006417632102966309){
     s0+=26.0;
    } else {
     s0+=13.0;
     s1+=34.0;
    }
   } else {
    if(i7<0.9960507154464722){
     s0+=38.0;
     s1+=14.0;
    } else {
     s0+=111.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i19<1.0093133449554443){
   if(i13<0.9938123226165771){
    if(i69<0.0016084511298686266){
     s0+=4817.0;
     s1+=5.0;
    } else {
     s0+=207.0;
     s1+=5.0;
    }
   } else {
    if(i34<0.011569362133741379){
     s0+=2052.0;
     s1+=228.0;
    } else {
     s0+=159.0;
     s1+=278.0;
    }
   }
  } else {
   if(i44<0.0042098164558410645){
    if(i34<0.01835261844098568){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=27.0;
   }
  }
 }
} else {
 if(i0<0.0757981538772583){
  if(i5<3.36766242980957e-05){
   if(i2<-0.000330120325088501){
    if(i70<0.0022421889007091522){
     s0+=5361.0;
     s1+=295.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i52<2.5244766220566817e-05){
     s0+=3561.0;
     s1+=297.0;
    } else {
     s0+=1476.0;
     s1+=786.0;
    }
   }
  } else {
   if(i38<0.002426320454105735){
    s1+=669.0;
   } else {
    if(i45<-0.006354987621307373){
     s0+=42.0;
     s1+=329.0;
    } else {
     s0+=265.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i14<0.9984630346298218){
   if(i52<0.0001508273562649265){
    if(i30<0.0002506150340195745){
     s1+=2.0;
    } else {
     s0+=341.0;
     s1+=1.0;
    }
   } else {
    if(i36<-0.0003808736801147461){
     s0+=1.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i21<0.0017183915479108691){
    if(i69<-0.01598425768315792){
     s0+=445.0;
     s1+=88.0;
    } else {
     s0+=139.0;
     s1+=270.0;
    }
   } else {
    if(i6<-4.316124250181019e-05){
     s0+=260.0;
     s1+=12211.0;
    } else {
     s0+=427.0;
     s1+=1356.0;
    }
   }
  }
 }
}
if(i11<0.0004343092441558838){
 if(i9<1.0452277660369873){
  if(i1<0.08345785737037659){
   if(i60<0.046341702342033386){
    if(i19<0.9704395532608032){
     s0+=17.0;
     s1+=14.0;
    } else {
     s0+=53629.0;
     s1+=294.0;
    }
   } else {
    if(i37<1.1550614833831787){
     s0+=2786.0;
     s1+=438.0;
    } else {
     s0+=4976.0;
     s1+=13.0;
    }
   }
  } else {
   if(i74<0.9980702996253967){
    if(i4<0.996962308883667){
     s0+=104.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    if(i33<0.0016158667858690023){
     s0+=20.0;
     s1+=205.0;
    } else {
     s0+=41.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i20<0.021702729165554047){
   if(i6<-3.232161543564871e-05){
    if(i1<0.06458702683448792){
     s0+=490.0;
     s1+=134.0;
    } else {
     s0+=168.0;
     s1+=909.0;
    }
   } else {
    if(i64<-0.0015265047550201416){
     s0+=788.0;
     s1+=230.0;
    } else {
     s0+=4790.0;
     s1+=253.0;
    }
   }
  } else {
   if(i56<1.954819163074717e-05){
    if(i4<0.9963690042495728){
     s0+=395.0;
     s1+=127.0;
    } else {
     s0+=678.0;
     s1+=3049.0;
    }
   } else {
    if(i74<1.0002331733703613){
     s0+=371.0;
     s1+=40.0;
    } else {
     s0+=131.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i5<3.808736801147461e-05){
  if(i34<0.03584885224699974){
   if(i0<0.11875280737876892){
    if(i52<0.00013839999155607074){
     s0+=617.0;
     s1+=212.0;
    } else {
     s0+=749.0;
     s1+=21.0;
    }
   } else {
    if(i33<0.003930950537323952){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=132.0;
    }
   }
  } else {
   if(i9<1.068404197692871){
    if(i71<4.423780046636239e-05){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.000866281392518431){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i4<1.0041308403015137){
   if(i1<0.06785306334495544){
    if(i53<-0.0007339119911193848){
     s0+=83.0;
     s1+=204.0;
    } else {
     s0+=163.0;
     s1+=38.0;
    }
   } else {
    if(i1<0.14308282732963562){
     s0+=83.0;
     s1+=360.0;
    } else {
     s0+=5.0;
     s1+=745.0;
    }
   }
  } else {
   if(i12<1.0041413307189941){
    if(i34<0.018887102603912354){
     s0+=41.0;
     s1+=68.0;
    } else {
     s0+=1.0;
     s1+=783.0;
    }
   } else {
    if(i2<0.001286923885345459){
     s0+=3.0;
     s1+=596.0;
    } else {
     s1+=7766.0;
    }
   }
  }
 }
}
if(i19<1.0107395648956299){
 if(i63<0.008502203039824963){
  if(i30<0.0003147775714751333){
   if(i11<0.0007619857788085938){
    if(i0<0.08264073729515076){
     s0+=56891.0;
     s1+=670.0;
    } else {
     s0+=77.0;
     s1+=156.0;
    }
   } else {
    if(i17<1.0015430450439453){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=163.0;
    }
   }
  } else {
   if(i2<0.0001570284366607666){
    if(i38<0.0025327936746180058){
     s0+=3400.0;
     s1+=1018.0;
    } else {
     s0+=5672.0;
     s1+=276.0;
    }
   } else {
    if(i37<1.0570924282073975){
     s0+=64.0;
    } else {
     s0+=314.0;
     s1+=1460.0;
    }
   }
  }
 } else {
  if(i22<8.64267349243164e-06){
   if(i32<1.0672215223312378){
    if(i36<9.572505950927734e-05){
     s0+=641.0;
     s1+=8.0;
    } else {
     s0+=28.0;
     s1+=9.0;
    }
   } else {
    if(i36<-0.0001469254493713379){
     s0+=620.0;
     s1+=15.0;
    } else {
     s0+=1034.0;
     s1+=718.0;
    }
   }
  } else {
   if(i1<0.029766470193862915){
    if(i63<0.017867058515548706){
     s0+=142.0;
     s1+=28.0;
    } else {
     s0+=57.0;
     s1+=125.0;
    }
   } else {
    if(i65<0.00018620507034938782){
     s0+=48.0;
     s1+=29.0;
    } else {
     s0+=21.0;
     s1+=1661.0;
    }
   }
  }
 }
} else {
 if(i4<1.0020502805709839){
  if(i21<0.003928309306502342){
   if(i14<1.0000509023666382){
    if(i44<0.0023055076599121094){
     s0+=121.0;
     s1+=324.0;
    } else {
     s0+=425.0;
     s1+=139.0;
    }
   } else {
    if(i37<1.075559377670288){
     s0+=2.0;
     s1+=36.0;
    } else {
     s0+=1032.0;
     s1+=70.0;
    }
   }
  } else {
   if(i2<-0.0004943907260894775){
    if(i50<-0.0014455912169069052){
     s0+=14.0;
     s1+=61.0;
    } else {
     s0+=171.0;
     s1+=9.0;
    }
   } else {
    if(i35<1.00801682472229){
     s0+=53.0;
     s1+=236.0;
    } else {
     s0+=17.0;
     s1+=1026.0;
    }
   }
  }
 } else {
  if(i34<0.011710659600794315){
   if(i42<1.2261788845062256){
    if(i9<1.1404547691345215){
     s0+=8.0;
     s1+=700.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i1<0.1743975281715393){
     s0+=179.0;
     s1+=4.0;
    } else {
     s1+=163.0;
    }
   }
  } else {
   if(i0<0.14745616912841797){
    if(i55<-0.009039817377924919){
     s0+=30.0;
     s1+=10.0;
    } else {
     s0+=15.0;
     s1+=761.0;
    }
   } else {
    if(i0<0.15268507599830627){
     s0+=1.0;
     s1+=53.0;
    } else {
     s1+=7230.0;
    }
   }
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i25<1.040531039237976){
  if(i23<1.0486011505126953){
   if(i23<1.0424679517745972){
    if(i4<1.0027213096618652){
     s0+=50814.0;
     s1+=144.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.0003261472156737){
     s0+=2928.0;
     s1+=12.0;
    } else {
     s0+=1492.0;
     s1+=213.0;
    }
   }
  } else {
   if(i27<0.05740368366241455){
    if(i33<0.001429909374564886){
     s0+=4446.0;
     s1+=1584.0;
    } else {
     s0+=6299.0;
     s1+=342.0;
    }
   } else {
    if(i27<0.076759934425354){
     s0+=285.0;
     s1+=288.0;
    } else {
     s0+=12.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i20<0.0280973631888628){
   if(i1<0.09077906608581543){
    if(i42<1.1037919521331787){
     s0+=681.0;
     s1+=226.0;
    } else {
     s0+=1827.0;
     s1+=45.0;
    }
   } else {
    if(i10<1.0845621824264526){
     s0+=196.0;
     s1+=555.0;
    } else {
     s0+=550.0;
     s1+=193.0;
    }
   }
  } else {
   if(i9<1.0639115571975708){
    if(i13<0.9945000410079956){
     s0+=128.0;
     s1+=7.0;
    } else {
     s0+=23.0;
     s1+=123.0;
    }
   } else {
    if(i1<0.0987350344657898){
     s0+=302.0;
     s1+=160.0;
    } else {
     s0+=318.0;
     s1+=1542.0;
    }
   }
  }
 }
} else {
 if(i23<1.0428509712219238){
  if(i72<0.016670215874910355){
   s0+=270.0;
  } else {
   if(i21<0.004062069114297628){
    s0+=1.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i31<0.00018894026288762689){
   if(i6<-5.400791997089982e-05){
    s1+=9.0;
   } else {
    s0+=45.0;
   }
  } else {
   if(i56<-0.0005583568126894534){
    if(i37<1.073845624923706){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=7523.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=181.0;
     s1+=3881.0;
    } else {
     s0+=150.0;
     s1+=278.0;
    }
   }
  }
 }
}
if(i67<1.0146472454071045){
 if(i0<0.07720842957496643){
  if(i12<1.0058729648590088){
   if(i2<0.0006611049175262451){
    if(i9<1.0410068035125732){
     s0+=59227.0;
     s1+=599.0;
    } else {
     s0+=7859.0;
     s1+=1319.0;
    }
   } else {
    if(i14<1.00123929977417){
     s0+=45.0;
    } else {
     s0+=85.0;
     s1+=355.0;
    }
   }
  } else {
   if(i2<0.0005483627319335938){
    if(i1<0.06347110867500305){
     s0+=338.0;
     s1+=51.0;
    } else {
     s0+=11.0;
     s1+=46.0;
    }
   } else {
    if(i13<1.0044891834259033){
     s0+=44.0;
     s1+=38.0;
    } else {
     s0+=18.0;
     s1+=524.0;
    }
   }
  }
 } else {
  if(i32<1.0670123100280762){
   if(i43<-7.0216574385995045e-06){
    if(i37<1.0545824766159058){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=28.0;
    }
   } else {
    s0+=211.0;
   }
  } else {
   if(i40<0.04911857843399048){
    if(i2<-0.000980675220489502){
     s0+=18.0;
     s1+=32.0;
    } else {
     s0+=38.0;
     s1+=3638.0;
    }
   } else {
    if(i1<0.0988641083240509){
     s0+=198.0;
     s1+=51.0;
    } else {
     s0+=93.0;
     s1+=417.0;
    }
   }
  }
 }
} else {
 if(i5<3.3736228942871094e-05){
  if(i21<0.004771151579916477){
   if(i18<0.00011771917343139648){
    if(i53<-0.0009125471115112305){
     s0+=352.0;
     s1+=20.0;
    } else {
     s0+=1850.0;
     s1+=548.0;
    }
   } else {
    if(i3<0.06796279549598694){
     s0+=18.0;
    } else {
     s0+=8.0;
     s1+=157.0;
    }
   }
  } else {
   if(i8<0.09358131885528564){
    if(i26<0.9925137758255005){
     s0+=209.0;
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=225.0;
    }
   } else {
    if(i43<2.465197667333996e-06){
     s0+=21.0;
     s1+=829.0;
    } else {
     s0+=33.0;
    }
   }
  }
 } else {
  if(i37<1.2582359313964844){
   if(i3<0.07474926114082336){
    if(i6<-4.8027643060777336e-05){
     s0+=18.0;
     s1+=26.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i15<-0.0006322264671325684){
     s0+=70.0;
     s1+=51.0;
    } else {
     s0+=65.0;
     s1+=1639.0;
    }
   }
  } else {
   if(i18<-0.0001316368579864502){
    if(i36<0.00019237399101257324){
     s0+=17.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=185.0;
    }
   } else {
    if(i7<1.0036864280700684){
     s0+=12.0;
     s1+=365.0;
    } else {
     s1+=6092.0;
    }
   }
  }
 }
}
if(i12<1.0048408508300781){
 if(i2<0.0005720555782318115){
  if(i20<0.022397663444280624){
   if(i23<1.0495158433914185){
    if(i65<0.0008422069950029254){
     s0+=51528.0;
     s1+=97.0;
    } else {
     s0+=1343.0;
     s1+=200.0;
    }
   } else {
    if(i0<0.06325560808181763){
     s0+=8606.0;
     s1+=560.0;
    } else {
     s0+=1496.0;
     s1+=727.0;
    }
   }
  } else {
   if(i5<-4.0471553802490234e-05){
    if(i27<0.0767328143119812){
     s0+=4635.0;
     s1+=132.0;
    } else {
     s0+=216.0;
     s1+=171.0;
    }
   } else {
    if(i1<0.06340336799621582){
     s0+=1339.0;
     s1+=485.0;
    } else {
     s0+=439.0;
     s1+=2218.0;
    }
   }
  }
 } else {
  if(i57<0.9987742304801941){
   s0+=92.0;
  } else {
   if(i20<0.04285275563597679){
    if(i37<1.2563519477844238){
     s0+=29.0;
     s1+=395.0;
    } else {
     s0+=158.0;
     s1+=232.0;
    }
   } else {
    if(i17<1.003474473953247){
     s0+=24.0;
     s1+=199.0;
    } else {
     s0+=4.0;
     s1+=1131.0;
    }
   }
  }
 }
} else {
 if(i2<0.0005148649215698242){
  if(i6<-3.93086884287186e-05){
   if(i14<0.9986336827278137){
    s0+=45.0;
   } else {
    if(i3<0.057007938623428345){
     s0+=50.0;
     s1+=41.0;
    } else {
     s0+=15.0;
     s1+=746.0;
    }
   }
  } else {
   if(i69<-0.004563901573419571){
    if(i9<1.2542110681533813){
     s0+=129.0;
     s1+=141.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i75<9.827053872868419e-05){
     s0+=644.0;
     s1+=20.0;
    } else {
     s0+=39.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i6<-4.330327283241786e-05){
   if(i23<1.0432554483413696){
    s0+=6.0;
   } else {
    if(i18<6.258487701416016e-06){
     s0+=39.0;
     s1+=108.0;
    } else {
     s0+=5.0;
     s1+=9375.0;
    }
   }
  } else {
   if(i70<0.00046982866479083896){
    if(i48<0.0011117804097011685){
     s0+=169.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i36<0.0004601776599884033){
     s1+=112.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i5<3.653764724731445e-05){
 if(i58<0.03033977374434471){
  if(i54<-9.309886809205636e-05){
   if(i5<-1.96993350982666e-05){
    if(i29<1.021646499633789){
     s0+=61.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i32<1.1951625347137451){
     s0+=34.0;
     s1+=494.0;
    } else {
     s0+=56.0;
     s1+=25.0;
    }
   }
  } else {
   if(i16<1.006658673286438){
    if(i44<-0.002610146999359131){
     s0+=485.0;
     s1+=236.0;
    } else {
     s0+=58245.0;
     s1+=735.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=242.0;
     s1+=312.0;
    } else {
     s0+=366.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i1<0.07580554485321045){
   if(i37<1.1823735237121582){
    if(i34<0.011642205528914928){
     s0+=2079.0;
     s1+=376.0;
    } else {
     s0+=468.0;
     s1+=545.0;
    }
   } else {
    if(i51<-0.04108631610870361){
     s0+=738.0;
     s1+=112.0;
    } else {
     s0+=6165.0;
     s1+=41.0;
    }
   }
  } else {
   if(i34<0.040243327617645264){
    if(i44<0.005064100027084351){
     s0+=445.0;
     s1+=1460.0;
    } else {
     s0+=741.0;
     s1+=301.0;
    }
   } else {
    if(i9<1.0715805292129517){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=8.0;
     s1+=872.0;
    }
   }
  }
 }
} else {
 if(i9<1.0336670875549316){
  if(i21<0.00406991969794035){
   if(i19<0.9825283288955688){
    if(i60<0.058943092823028564){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i13<1.006697416305542){
     s0+=371.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=52.0;
  }
 } else {
  if(i6<-4.921784784528427e-05){
   if(i71<2.653965748322662e-05){
    if(i0<0.05260664224624634){
     s0+=87.0;
     s1+=369.0;
    } else {
     s0+=133.0;
     s1+=10759.0;
    }
   } else {
    if(i15<-0.0024660229682922363){
     s0+=50.0;
     s1+=35.0;
    } else {
     s1+=121.0;
    }
   }
  } else {
   if(i32<1.1170852184295654){
    if(i33<0.00037432703538797796){
     s0+=9.0;
    } else {
     s1+=254.0;
    }
   } else {
    if(i12<1.0040874481201172){
     s0+=30.0;
     s1+=97.0;
    } else {
     s0+=151.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i0<0.07712078094482422){
 if(i18<0.00016131997108459473){
  if(i63<0.007525504566729069){
   if(i29<1.0077582597732544){
    if(i2<0.0007088184356689453){
     s0+=63996.0;
     s1+=1098.0;
    } else {
     s0+=76.0;
     s1+=94.0;
    }
   } else {
    if(i75<2.3445390979759395e-05){
     s0+=17.0;
     s1+=88.0;
    } else {
     s0+=1349.0;
     s1+=247.0;
    }
   }
  } else {
   if(i32<1.0556960105895996){
    s0+=754.0;
   } else {
    if(i20<0.01443445309996605){
     s0+=1248.0;
     s1+=218.0;
    } else {
     s0+=1356.0;
     s1+=818.0;
    }
   }
  }
 } else {
  if(i15<0.0014178156852722168){
   if(i56<-0.0003295463393442333){
    if(i2<0.0011765360832214355){
     s0+=250.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=4.0;
     s1+=116.0;
    } else {
     s0+=79.0;
     s1+=5.0;
    }
   }
  } else {
   if(i32<1.23526930809021){
    if(i21<0.001140441047027707){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=524.0;
    }
   } else {
    if(i5<9.298324584960938e-05){
     s0+=23.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i34<0.025754153728485107){
  if(i45<0.013530910015106201){
   if(i14<0.998519778251648){
    if(i43<-9.034853064804338e-06){
     s0+=8.0;
     s1+=14.0;
    } else {
     s0+=279.0;
    }
   } else {
    if(i18<9.042024612426758e-05){
     s0+=285.0;
     s1+=1412.0;
    } else {
     s0+=11.0;
     s1+=2317.0;
    }
   }
  } else {
   if(i71<-6.532222414534772e-06){
    s1+=205.0;
   } else {
    if(i3<0.12896811962127686){
     s0+=775.0;
     s1+=76.0;
    } else {
     s0+=353.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i5<-7.072091102600098e-05){
   if(i61<-5.47876561540761e-06){
    if(i70<0.0016306288307532668){
     s0+=23.0;
    } else {
     s0+=2.0;
     s1+=62.0;
    }
   } else {
    s0+=125.0;
   }
  } else {
   if(i11<-0.0002643167972564697){
    if(i6<-1.0226204722130205e-05){
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=7.0;
    }
   } else {
    if(i71<4.00700700993184e-05){
     s0+=67.0;
     s1+=9189.0;
    } else {
     s0+=21.0;
     s1+=138.0;
    }
   }
  }
 }
}
if(i9<1.0495078563690186){
 if(i16<1.0069737434387207){
  if(i1<0.0831305980682373){
   if(i54<0.00023977806267794222){
    if(i50<0.002097906544804573){
     s0+=53037.0;
     s1+=282.0;
    } else {
     s0+=238.0;
     s1+=59.0;
    }
   } else {
    if(i38<0.000982656260021031){
     s0+=1769.0;
     s1+=624.0;
    } else {
     s0+=8255.0;
     s1+=152.0;
    }
   }
  } else {
   if(i13<0.9935723543167114){
    if(i65<0.003439148887991905){
     s0+=186.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i32<1.0581717491149902){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=455.0;
    }
   }
  }
 } else {
  if(i42<1.1404918432235718){
   if(i33<0.0004199050017632544){
    s0+=7.0;
   } else {
    s1+=190.0;
   }
  } else {
   if(i74<1.0037049055099487){
    if(i3<0.0840795636177063){
     s0+=242.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i54<-2.3408923880197108e-05){
     s0+=1.0;
    } else {
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i3<0.0851379930973053){
  if(i11<0.0005154609680175781){
   if(i1<0.06290164589881897){
    if(i39<0.0019471937557682395){
     s0+=1727.0;
     s1+=445.0;
    } else {
     s0+=2877.0;
     s1+=141.0;
    }
   } else {
    if(i55<-0.0037198099307715893){
     s0+=516.0;
     s1+=19.0;
    } else {
     s0+=323.0;
     s1+=425.0;
    }
   }
  } else {
   if(i45<0.004997670650482178){
    if(i0<0.031848132610321045){
     s0+=117.0;
     s1+=150.0;
    } else {
     s0+=92.0;
     s1+=665.0;
    }
   } else {
    if(i52<4.9530764954397455e-05){
     s1+=21.0;
    } else {
     s0+=360.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i15<0.0006134510040283203){
   if(i49<0.9989272356033325){
    if(i56<-0.0015736272325739264){
     s1+=3.0;
    } else {
     s0+=328.0;
    }
   } else {
    if(i1<0.12589985132217407){
     s0+=726.0;
     s1+=962.0;
    } else {
     s0+=287.0;
     s1+=2906.0;
    }
   }
  } else {
   if(i46<0.00022793971584178507){
    s0+=2.0;
   } else {
    if(i18<0.00010496377944946289){
     s0+=22.0;
     s1+=145.0;
    } else {
     s0+=39.0;
     s1+=9314.0;
    }
   }
  }
 }
}
if(i3<0.08352804183959961){
 if(i15<0.0012593269348144531){
  if(i23<1.0486011505126953){
   if(i67<0.9736175537109375){
    if(i35<0.9796830415725708){
     s0+=1057.0;
     s1+=34.0;
    } else {
     s0+=171.0;
     s1+=53.0;
    }
   } else {
    if(i60<0.046161849051713943){
     s0+=50552.0;
     s1+=124.0;
    } else {
     s0+=4059.0;
     s1+=160.0;
    }
   }
  } else {
   if(i2<0.00046712160110473633){
    if(i13<0.9944998025894165){
     s0+=5232.0;
     s1+=129.0;
    } else {
     s0+=7550.0;
     s1+=1485.0;
    }
   } else {
    if(i38<0.0018390424083918333){
     s1+=225.0;
    } else {
     s0+=279.0;
     s1+=342.0;
    }
   }
  }
 } else {
  if(i48<0.0009146890370175242){
   if(i32<1.1484346389770508){
    s1+=49.0;
   } else {
    if(i51<-0.031795650720596313){
     s1+=5.0;
    } else {
     s0+=81.0;
    }
   }
  } else {
   s1+=372.0;
  }
 }
} else {
 if(i6<-1.4440501217904966e-05){
  if(i7<1.0235681533813477){
   if(i6<-4.207072197459638e-05){
    if(i15<-2.0742416381835938e-05){
     s0+=270.0;
     s1+=1817.0;
    } else {
     s0+=16.0;
     s1+=3468.0;
    }
   } else {
    if(i73<1.043281078338623){
     s0+=212.0;
     s1+=1109.0;
    } else {
     s0+=225.0;
     s1+=72.0;
    }
   }
  } else {
   if(i6<-4.2321848013671115e-05){
    s1+=7255.0;
   } else {
    if(i15<0.0012660622596740723){
     s0+=2.0;
     s1+=111.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i36<-0.00013405084609985352){
   if(i2<-0.0007242560386657715){
    s0+=575.0;
   } else {
    if(i15<-0.0016207993030548096){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=85.0;
    }
   }
  } else {
   if(i41<0.0511775016784668){
    if(i20<0.010768504813313484){
     s0+=17.0;
     s1+=21.0;
    } else {
     s0+=14.0;
     s1+=221.0;
    }
   } else {
    if(i54<0.00024148772354237735){
     s0+=426.0;
     s1+=66.0;
    } else {
     s0+=163.0;
     s1+=141.0;
    }
   }
  }
 }
}
if(i12<1.0056138038635254){
 if(i58<0.03726865351200104){
  if(i4<1.0024776458740234){
   if(i44<-0.0018610954284667969){
    if(i17<1.0008572340011597){
     s0+=965.0;
     s1+=260.0;
    } else {
     s0+=23.0;
     s1+=85.0;
    }
   } else {
    if(i26<1.0065587759017944){
     s0+=59773.0;
     s1+=926.0;
    } else {
     s0+=827.0;
     s1+=310.0;
    }
   }
  } else {
   if(i10<1.0832065343856812){
    if(i52<2.402454356342787e-06){
     s0+=14.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=241.0;
    }
   } else {
    if(i50<0.007861169055104256){
     s0+=28.0;
     s1+=5.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i4<0.998511791229248){
   if(i1<0.08522903919219971){
    if(i46<0.0027300799265503883){
     s0+=1435.0;
     s1+=286.0;
    } else {
     s0+=5001.0;
     s1+=76.0;
    }
   } else {
    if(i6<-1.5945870472933166e-06){
     s0+=66.0;
     s1+=527.0;
    } else {
     s0+=282.0;
     s1+=59.0;
    }
   }
  } else {
   if(i1<0.0653461217880249){
    if(i63<0.008864335715770721){
     s0+=904.0;
     s1+=176.0;
    } else {
     s0+=375.0;
     s1+=345.0;
    }
   } else {
    if(i73<1.0145214796066284){
     s0+=117.0;
     s1+=2038.0;
    } else {
     s0+=450.0;
     s1+=1227.0;
    }
   }
  }
 }
} else {
 if(i18<0.00021499395370483398){
  if(i48<0.0009609339758753777){
   if(i47<0.001115123275667429){
    if(i66<1.000383973121643){
     s0+=5.0;
     s1+=157.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i37<1.1532785892486572){
     s1+=20.0;
    } else {
     s0+=729.0;
     s1+=43.0;
    }
   }
  } else {
   if(i14<0.9988346099853516){
    s0+=42.0;
   } else {
    if(i21<0.0013360156444832683){
     s0+=16.0;
    } else {
     s0+=30.0;
     s1+=1729.0;
    }
   }
  }
 } else {
  if(i30<0.00011607055785134435){
   s0+=7.0;
  } else {
   if(i6<-6.249437865335494e-05){
    s1+=8407.0;
   } else {
    if(i33<0.0028004301711916924){
     s1+=181.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i9<1.0436501502990723){
  if(i14<1.0019869804382324){
   if(i8<0.08051767945289612){
    if(i50<0.0016256135422736406){
     s0+=57757.0;
     s1+=483.0;
    } else {
     s0+=3530.0;
     s1+=366.0;
    }
   } else {
    if(i0<0.08905637264251709){
     s0+=51.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=52.0;
    }
   }
  } else {
   if(i5<2.3066997528076172e-05){
    if(i37<1.1621358394622803){
     s1+=2.0;
    } else {
     s0+=167.0;
     s1+=2.0;
    }
   } else {
    if(i13<0.9964820742607117){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i12<1.0033531188964844){
   if(i4<0.9984305500984192){
    if(i44<-0.001532137393951416){
     s0+=138.0;
     s1+=52.0;
    } else {
     s0+=1752.0;
     s1+=74.0;
    }
   } else {
    if(i72<0.016503917053341866){
     s0+=993.0;
     s1+=84.0;
    } else {
     s0+=245.0;
     s1+=631.0;
    }
   }
  } else {
   if(i43<-1.2865375538240187e-05){
    if(i6<-2.989435597555712e-05){
     s0+=4.0;
     s1+=390.0;
    } else {
     s0+=20.0;
     s1+=5.0;
    }
   } else {
    if(i42<1.1380741596221924){
     s0+=16.0;
     s1+=166.0;
    } else {
     s0+=173.0;
    }
   }
  }
 }
} else {
 if(i19<1.021022081375122){
  if(i6<-3.877588460454717e-05){
   if(i0<0.05900725722312927){
    if(i42<1.2360035181045532){
     s0+=20.0;
     s1+=301.0;
    } else {
     s0+=575.0;
     s1+=290.0;
    }
   } else {
    if(i4<1.0033760070800781){
     s0+=279.0;
     s1+=1571.0;
    } else {
     s0+=21.0;
     s1+=2396.0;
    }
   }
  } else {
   if(i36<-0.00014090538024902344){
    if(i14<0.9986958503723145){
     s0+=1209.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i0<0.09124791622161865){
     s0+=3058.0;
     s1+=666.0;
    } else {
     s0+=294.0;
     s1+=727.0;
    }
   }
  }
 } else {
  if(i11<0.0004431605339050293){
   if(i6<-4.2871295590884984e-05){
    if(i49<1.0005913972854614){
     s1+=1300.0;
    } else {
     s0+=1.0;
     s1+=41.0;
    }
   } else {
    if(i3<0.2583838105201721){
     s0+=575.0;
     s1+=102.0;
    } else {
     s0+=44.0;
     s1+=172.0;
    }
   }
  } else {
   if(i6<-4.565770359477028e-05){
    if(i13<0.998306393623352){
     s0+=19.0;
     s1+=361.0;
    } else {
     s0+=13.0;
     s1+=6677.0;
    }
   } else {
    if(i17<1.0035232305526733){
     s0+=63.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=66.0;
    }
   }
  }
 }
}
if(i15<0.000807344913482666){
 if(i2<0.0005419552326202393){
  if(i3<0.08523821830749512){
   if(i9<1.0410068035125732){
    if(i62<-0.0018874704837799072){
     s0+=4359.0;
     s1+=366.0;
    } else {
     s0+=54463.0;
     s1+=183.0;
    }
   } else {
    if(i38<0.001057731918990612){
     s0+=3276.0;
     s1+=989.0;
    } else {
     s0+=6215.0;
     s1+=477.0;
    }
   }
  } else {
   if(i11<-0.0004030168056488037){
    if(i47<0.009134695865213871){
     s0+=629.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=10.0;
    }
   } else {
    if(i40<0.0431140661239624){
     s0+=67.0;
     s1+=1650.0;
    } else {
     s0+=1126.0;
     s1+=1137.0;
    }
   }
  }
 } else {
  if(i47<0.0003889336949214339){
   s0+=197.0;
  } else {
   if(i34<0.022980567067861557){
    if(i44<0.002953857183456421){
     s0+=114.0;
     s1+=436.0;
    } else {
     s0+=128.0;
     s1+=70.0;
    }
   } else {
    if(i0<0.0785294771194458){
     s0+=5.0;
     s1+=151.0;
    } else {
     s1+=1608.0;
    }
   }
  }
 }
} else {
 if(i9<1.0385410785675049){
  if(i15<0.0016270875930786133){
   if(i28<1.1386182308197021){
    s1+=8.0;
   } else {
    if(i6<-7.458390609826893e-05){
     s1+=1.0;
    } else {
     s0+=277.0;
    }
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i4<1.0041344165802002){
   if(i6<-4.3320978875271976e-05){
    if(i14<0.9987918734550476){
     s0+=76.0;
     s1+=1.0;
    } else {
     s0+=47.0;
     s1+=1161.0;
    }
   } else {
    if(i11<0.0002027750015258789){
     s0+=5.0;
     s1+=79.0;
    } else {
     s0+=239.0;
     s1+=23.0;
    }
   }
  } else {
   s1+=8644.0;
  }
 }
}
if(i8<0.07267516851425171){
 if(i2<0.0006008744239807129){
  if(i39<0.0003773437929339707){
   if(i24<1.0109268426895142){
    if(i16<1.0068480968475342){
     s0+=40650.0;
     s1+=65.0;
    } else {
     s0+=3.0;
     s1+=27.0;
    }
   } else {
    if(i61<-3.1386673526867526e-06){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i2<-0.00027889013290405273){
    if(i1<0.08241477608680725){
     s0+=21553.0;
     s1+=609.0;
    } else {
     s0+=105.0;
     s1+=105.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=825.0;
     s1+=1401.0;
    } else {
     s0+=5743.0;
     s1+=602.0;
    }
   }
  }
 } else {
  if(i21<0.0022705085575580597){
   if(i75<9.60354955168441e-05){
    s1+=36.0;
   } else {
    if(i71<-1.301613428950077e-05){
     s1+=22.0;
    } else {
     s0+=195.0;
    }
   }
  } else {
   if(i26<0.9974019527435303){
    if(i73<0.9914612770080566){
     s0+=58.0;
     s1+=285.0;
    } else {
     s0+=54.0;
     s1+=15.0;
    }
   } else {
    if(i28<1.5944836139678955){
     s1+=1568.0;
    } else {
     s0+=28.0;
     s1+=68.0;
    }
   }
  }
 }
} else {
 if(i4<1.0017051696777344){
  if(i6<-1.3823204426444136e-05){
   if(i1<0.09942972660064697){
    if(i69<-0.015831362456083298){
     s0+=205.0;
     s1+=20.0;
    } else {
     s0+=176.0;
     s1+=266.0;
    }
   } else {
    if(i55<-0.0099300816655159){
     s0+=141.0;
     s1+=443.0;
    } else {
     s0+=99.0;
     s1+=1482.0;
    }
   }
  } else {
   if(i62<-0.0034514665603637695){
    if(i57<0.9995517730712891){
     s0+=62.0;
    } else {
     s0+=48.0;
     s1+=107.0;
    }
   } else {
    if(i38<0.005444821901619434){
     s0+=889.0;
     s1+=87.0;
    } else {
     s0+=75.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i2<0.0008675456047058105){
   if(i57<0.9999507665634155){
    if(i73<0.9861568808555603){
     s0+=1.0;
     s1+=40.0;
    } else {
     s1+=600.0;
    }
   } else {
    if(i21<0.007060622796416283){
     s0+=121.0;
     s1+=155.0;
    } else {
     s0+=8.0;
     s1+=273.0;
    }
   }
  } else {
   if(i18<6.258487701416016e-06){
    if(i48<0.002588094212114811){
     s0+=45.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=554.0;
    }
   } else {
    if(i17<0.9981629848480225){
     s0+=1.0;
     s1+=228.0;
    } else {
     s1+=7854.0;
    }
   }
  }
 }
}
if(i9<1.0564017295837402){
 if(i1<0.07978475093841553){
  if(i12<1.0049115419387817){
   if(i50<0.0015900211874395609){
    if(i4<1.0025041103363037){
     s0+=59978.0;
     s1+=540.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i47<0.0008764047524891794){
     s0+=1223.0;
     s1+=463.0;
    } else {
     s0+=2676.0;
     s1+=137.0;
    }
   }
  } else {
   if(i42<1.1380741596221924){
    s1+=189.0;
   } else {
    if(i49<1.0010879039764404){
     s0+=430.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i23<1.0494635105133057){
   if(i74<0.9993646144866943){
    if(i11<-0.00028955936431884766){
     s0+=161.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   } else {
    if(i40<0.04566305875778198){
     s0+=8.0;
     s1+=50.0;
    } else {
     s0+=102.0;
     s1+=16.0;
    }
   }
  } else {
   if(i57<0.9993858337402344){
    s0+=24.0;
   } else {
    if(i18<-0.00024631619453430176){
     s0+=45.0;
     s1+=45.0;
    } else {
     s0+=41.0;
     s1+=923.0;
    }
   }
  }
 }
} else {
 if(i1<0.08537361025810242){
  if(i2<0.0005751252174377441){
   if(i51<-0.020419657230377197){
    if(i28<1.1013743877410889){
     s0+=210.0;
     s1+=285.0;
    } else {
     s0+=1517.0;
     s1+=269.0;
    }
   } else {
    if(i38<0.0011301659978926182){
     s0+=704.0;
     s1+=258.0;
    } else {
     s0+=2458.0;
     s1+=106.0;
    }
   }
  } else {
   if(i62<0.003788173198699951){
    if(i18<-0.0003571510314941406){
     s0+=40.0;
     s1+=19.0;
    } else {
     s0+=67.0;
     s1+=749.0;
    }
   } else {
    if(i21<0.009129488840699196){
     s0+=106.0;
     s1+=7.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i14<0.9987603425979614){
   if(i38<0.0071884216740727425){
    if(i69<-0.02016628533601761){
     s0+=271.0;
    } else {
     s0+=57.0;
     s1+=8.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i26<1.0110474824905396){
    if(i1<0.12491148710250854){
     s0+=574.0;
     s1+=927.0;
    } else {
     s0+=282.0;
     s1+=3385.0;
    }
   } else {
    if(i21<0.0016846174839884043){
     s0+=82.0;
     s1+=115.0;
    } else {
     s0+=38.0;
     s1+=8571.0;
    }
   }
  }
 }
}
if(i8<0.07267439365386963){
 if(i13<1.0050451755523682){
  if(i72<0.010786883533000946){
   if(i54<0.0003340607217978686){
    if(i0<0.08283931016921997){
     s0+=46961.0;
     s1+=228.0;
    } else {
     s0+=2.0;
     s1+=53.0;
    }
   } else {
    if(i1<0.007832914590835571){
     s0+=84.0;
     s1+=10.0;
    } else {
     s0+=48.0;
     s1+=188.0;
    }
   }
  } else {
   if(i13<0.9945915937423706){
    if(i4<1.0016050338745117){
     s0+=14561.0;
     s1+=228.0;
    } else {
     s0+=21.0;
     s1+=38.0;
    }
   } else {
    if(i21<0.002798203146085143){
     s0+=5479.0;
     s1+=841.0;
    } else {
     s0+=1433.0;
     s1+=1435.0;
    }
   }
  }
 } else {
  if(i23<1.0485590696334839){
   if(i70<0.0005882064579054713){
    s0+=161.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i1<0.05360856652259827){
    if(i4<1.0028809309005737){
     s0+=161.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=174.0;
    }
   } else {
    if(i21<0.0020484798587858677){
     s0+=38.0;
     s1+=98.0;
    } else {
     s0+=26.0;
     s1+=1312.0;
    }
   }
  }
 }
} else {
 if(i4<1.001535177230835){
  if(i14<0.9985267519950867){
   if(i47<0.02156231179833412){
    if(i2<-0.00052681565284729){
     s0+=441.0;
     s1+=3.0;
    } else {
     s0+=74.0;
     s1+=8.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i55<-0.007295811083167791){
    if(i3<0.21786853671073914){
     s0+=676.0;
     s1+=137.0;
    } else {
     s0+=80.0;
     s1+=581.0;
    }
   } else {
    if(i39<0.00048302439972758293){
     s0+=126.0;
     s1+=25.0;
    } else {
     s0+=416.0;
     s1+=1673.0;
    }
   }
  }
 } else {
  if(i3<0.10909700393676758){
   if(i40<0.05638384819030762){
    if(i61<-3.9488700167567e-06){
     s0+=31.0;
     s1+=388.0;
    } else {
     s0+=21.0;
     s1+=11.0;
    }
   } else {
    if(i44<0.0032978057861328125){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=73.0;
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.13187462091445923){
    if(i41<0.08569100499153137){
     s0+=13.0;
     s1+=485.0;
    } else {
     s0+=44.0;
     s1+=17.0;
    }
   } else {
    if(i20<0.0012295146007090807){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=26.0;
     s1+=9234.0;
    }
   }
  }
 }
}
if(i12<1.0059478282928467){
 if(i22<1.6510486602783203e-05){
  if(i38<0.00033545983023941517){
   if(i12<1.0043659210205078){
    if(i12<1.0038411617279053){
     s0+=37316.0;
     s1+=42.0;
    } else {
     s0+=49.0;
     s1+=10.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i0<0.07645782828330994){
    if(i9<1.0398929119110107){
     s0+=22702.0;
     s1+=520.0;
    } else {
     s0+=6866.0;
     s1+=1256.0;
    }
   } else {
    if(i6<-1.089042689272901e-05){
     s0+=407.0;
     s1+=2221.0;
    } else {
     s0+=914.0;
     s1+=235.0;
    }
   }
  }
 } else {
  if(i46<0.008354118093848228){
   if(i4<1.002316951751709){
    if(i23<1.0819685459136963){
     s0+=1213.0;
     s1+=92.0;
    } else {
     s0+=485.0;
     s1+=324.0;
    }
   } else {
    if(i34<0.010055351071059704){
     s0+=67.0;
     s1+=37.0;
    } else {
     s0+=69.0;
     s1+=757.0;
    }
   }
  } else {
   if(i52<0.0003171411226503551){
    if(i0<0.10260277986526489){
     s0+=73.0;
     s1+=128.0;
    } else {
     s0+=17.0;
     s1+=1224.0;
    }
   } else {
    if(i21<0.01799628883600235){
     s0+=64.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i5<3.510713577270508e-05){
  if(i0<0.07741966843605042){
   if(i47<0.0010808086954057217){
    if(i38<0.0013021293561905622){
     s0+=1.0;
     s1+=97.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i7<1.0176198482513428){
     s0+=472.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   }
  } else {
   if(i66<0.9998824596405029){
    if(i57<0.9998795390129089){
     s0+=1.0;
     s1+=483.0;
    } else {
     s0+=14.0;
     s1+=43.0;
    }
   } else {
    if(i75<4.9452533858129755e-05){
     s0+=72.0;
     s1+=5.0;
    } else {
     s0+=30.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i3<0.060375481843948364){
   if(i27<0.016631007194519043){
    if(i51<-0.004820883274078369){
     s0+=13.0;
     s1+=160.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i61<-5.15259625899489e-06){
     s0+=7.0;
     s1+=38.0;
    } else {
     s0+=92.0;
    }
   }
  } else {
   if(i43<-1.3838460290571675e-05){
    if(i7<1.0175838470458984){
     s0+=17.0;
     s1+=1821.0;
    } else {
     s1+=7205.0;
    }
   } else {
    if(i6<-4.376021752250381e-05){
     s0+=3.0;
     s1+=157.0;
    } else {
     s0+=37.0;
     s1+=18.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i31<0.0003018427232746035){
  if(i9<1.0469666719436646){
   if(i6<-3.961486800108105e-05){
    if(i14<1.0011242628097534){
     s0+=457.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i65<0.0008779653580859303){
     s0+=51397.0;
     s1+=96.0;
    } else {
     s0+=274.0;
     s1+=89.0;
    }
   }
  } else {
   if(i5<1.2218952178955078e-05){
    if(i7<1.0090577602386475){
     s0+=1086.0;
     s1+=27.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i29<1.0072920322418213){
     s0+=96.0;
     s1+=10.0;
    } else {
     s0+=34.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i10<1.0401077270507812){
   if(i0<0.07606133818626404){
    if(i28<1.1939998865127563){
     s0+=3066.0;
     s1+=748.0;
    } else {
     s0+=7777.0;
     s1+=114.0;
    }
   } else {
    if(i74<0.9979636669158936){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=70.0;
     s1+=379.0;
    }
   }
  } else {
   if(i36<-0.00013533234596252441){
    if(i4<0.9989572167396545){
     s0+=1398.0;
     s1+=40.0;
    } else {
     s0+=3.0;
     s1+=26.0;
    }
   } else {
    if(i21<0.0028963969089090824){
     s0+=3517.0;
     s1+=975.0;
    } else {
     s0+=1136.0;
     s1+=2836.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i52<8.927665476221591e-05){
   if(i18<6.139278411865234e-06){
    if(i66<1.001598834991455){
     s1+=110.0;
    } else {
     s0+=14.0;
    }
   } else {
    s1+=8906.0;
   }
  } else {
   if(i23<1.1258437633514404){
    if(i33<0.007757603190839291){
     s0+=55.0;
     s1+=297.0;
    } else {
     s0+=128.0;
     s1+=2.0;
    }
   } else {
    if(i3<0.012966126203536987){
     s0+=19.0;
     s1+=14.0;
    } else {
     s0+=32.0;
     s1+=2101.0;
    }
   }
  }
 } else {
  if(i31<0.00030875555239617825){
   if(i34<0.009654851630330086){
    s0+=257.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i74<1.0018823146820068){
    if(i57<0.9999328851699829){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=120.0;
    }
   } else {
    if(i17<1.001183032989502){
     s0+=4.0;
    } else {
     s0+=5.0;
     s1+=254.0;
    }
   }
  }
 }
}
if(i18<0.00011497735977172852){
 if(i27<0.06654724478721619){
  if(i5<4.0471553802490234e-05){
   if(i9<1.0446395874023438){
    if(i72<0.009708978235721588){
     s0+=43557.0;
     s1+=128.0;
    } else {
     s0+=17548.0;
     s1+=763.0;
    }
   } else {
    if(i14<0.9986202716827393){
     s0+=1778.0;
     s1+=19.0;
    } else {
     s0+=5374.0;
     s1+=2238.0;
    }
   }
  } else {
   if(i34<0.006824965123087168){
    if(i53<-0.004276365041732788){
     s1+=11.0;
    } else {
     s0+=109.0;
     s1+=4.0;
    }
   } else {
    if(i57<1.000072956085205){
     s0+=82.0;
     s1+=388.0;
    } else {
     s0+=29.0;
     s1+=648.0;
    }
   }
  }
 } else {
  if(i70<0.0007243024883791804){
   if(i47<0.003881902201101184){
    if(i37<1.1610381603240967){
     s0+=426.0;
     s1+=288.0;
    } else {
     s0+=775.0;
     s1+=63.0;
    }
   } else {
    if(i65<0.0014697436708956957){
     s0+=286.0;
     s1+=439.0;
    } else {
     s0+=15.0;
     s1+=279.0;
    }
   }
  } else {
   if(i9<1.0765948295593262){
    if(i13<0.9944831132888794){
     s0+=221.0;
     s1+=30.0;
    } else {
     s0+=82.0;
     s1+=137.0;
    }
   } else {
    if(i28<1.175865650177002){
     s0+=26.0;
     s1+=35.0;
    } else {
     s0+=24.0;
     s1+=1492.0;
    }
   }
  }
 }
} else {
 if(i23<1.0540467500686646){
  if(i35<1.006885051727295){
   s0+=397.0;
  } else {
   s1+=51.0;
  }
 } else {
  if(i0<0.05719447135925293){
   if(i28<1.1386182308197021){
    s1+=275.0;
   } else {
    if(i49<1.0010954141616821){
     s0+=338.0;
     s1+=4.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i28<1.3974051475524902){
    if(i2<-2.98917293548584e-05){
     s0+=12.0;
    } else {
     s0+=68.0;
     s1+=2778.0;
    }
   } else {
    s1+=6979.0;
   }
  }
 }
}
if(i23<1.057713270187378){
 if(i19<1.009708046913147){
  if(i4<1.0025296211242676){
   if(i30<0.000304060842609033){
    if(i65<0.0008439854718744755){
     s0+=52679.0;
     s1+=168.0;
    } else {
     s0+=464.0;
     s1+=101.0;
    }
   } else {
    if(i13<0.9941389560699463){
     s0+=3583.0;
     s1+=14.0;
    } else {
     s0+=1879.0;
     s1+=406.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=71.0;
   } else {
    s0+=27.0;
   }
  }
 } else {
  if(i12<0.9974944591522217){
   s0+=62.0;
  } else {
   if(i37<1.062009334564209){
    s0+=18.0;
   } else {
    if(i32<1.1992026567459106){
     s0+=1.0;
     s1+=177.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i13<1.002467393875122){
  if(i1<0.0843556821346283){
   if(i69<-0.010546701960265636){
    if(i56<-0.0006995970034040511){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=3261.0;
     s1+=75.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=1238.0;
     s1+=885.0;
    } else {
     s0+=5639.0;
     s1+=619.0;
    }
   }
  } else {
   if(i14<0.9981785416603088){
    if(i37<1.4338626861572266){
     s0+=264.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i69<-0.018619827926158905){
     s0+=804.0;
     s1+=1494.0;
    } else {
     s0+=212.0;
     s1+=2474.0;
    }
   }
  }
 } else {
  if(i3<0.06786534190177917){
   if(i22<1.7821788787841797e-05){
    if(i43<-1.4379585991264321e-05){
     s0+=25.0;
     s1+=48.0;
    } else {
     s0+=610.0;
     s1+=35.0;
    }
   } else {
    if(i43<-1.4896017091814429e-05){
     s0+=26.0;
     s1+=385.0;
    } else {
     s0+=32.0;
     s1+=6.0;
    }
   }
  } else {
   if(i21<0.0025380882434546947){
    if(i26<1.0101367235183716){
     s0+=103.0;
     s1+=42.0;
    } else {
     s0+=21.0;
     s1+=328.0;
    }
   } else {
    if(i1<0.12208932638168335){
     s0+=66.0;
     s1+=1396.0;
    } else {
     s0+=18.0;
     s1+=8467.0;
    }
   }
  }
 }
}
if(i29<1.0088505744934082){
 if(i2<0.0005721747875213623){
  if(i63<0.008321816101670265){
   if(i0<0.08225288987159729){
    if(i58<0.02661413699388504){
     s0+=56293.0;
     s1+=430.0;
    } else {
     s0+=8783.0;
     s1+=812.0;
    }
   } else {
    if(i22<-1.5109777450561523e-05){
     s0+=234.0;
     s1+=5.0;
    } else {
     s0+=445.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i1<0.03920897841453552){
    if(i36<-5.307793617248535e-05){
     s0+=1128.0;
     s1+=34.0;
    } else {
     s0+=1147.0;
     s1+=320.0;
    }
   } else {
    if(i49<0.9994379281997681){
     s0+=232.0;
     s1+=24.0;
    } else {
     s0+=134.0;
     s1+=705.0;
    }
   }
  }
 } else {
  if(i57<0.9987854957580566){
   s0+=108.0;
  } else {
   if(i62<0.0036296546459198){
    if(i8<0.05702891945838928){
     s0+=105.0;
     s1+=679.0;
    } else {
     s0+=49.0;
     s1+=1727.0;
    }
   } else {
    if(i20<0.01982821524143219){
     s0+=28.0;
    } else {
     s0+=6.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i0<0.07776999473571777){
  if(i4<1.0041208267211914){
   if(i60<0.03577931225299835){
    if(i6<-3.886298873112537e-05){
     s0+=22.0;
     s1+=115.0;
    } else {
     s0+=154.0;
     s1+=44.0;
    }
   } else {
    if(i70<0.0005608833162114024){
     s0+=1340.0;
     s1+=64.0;
    } else {
     s0+=158.0;
     s1+=163.0;
    }
   }
  } else {
   if(i40<0.03942996263504028){
    if(i21<0.0004343580221757293){
     s0+=1.0;
    } else {
     s1+=343.0;
    }
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i4<1.00185227394104){
   if(i20<0.02743050456047058){
    if(i44<0.004549205303192139){
     s0+=54.0;
     s1+=423.0;
    } else {
     s0+=479.0;
     s1+=51.0;
    }
   } else {
    if(i61<1.498765072938113e-06){
     s0+=128.0;
     s1+=920.0;
    } else {
     s0+=69.0;
    }
   }
  } else {
   if(i17<0.9961597919464111){
    if(i16<1.0235610008239746){
     s0+=17.0;
     s1+=3.0;
    } else {
     s1+=148.0;
    }
   } else {
    if(i6<-5.912840424571186e-05){
     s0+=18.0;
     s1+=8552.0;
    } else {
     s0+=42.0;
     s1+=284.0;
    }
   }
  }
 }
}
if(i1<0.0832146406173706){
 if(i45<-0.006174176931381226){
  if(i3<0.041599810123443604){
   if(i0<0.016862541437149048){
    if(i13<1.0079500675201416){
     s0+=2533.0;
     s1+=213.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i14<1.0014874935150146){
     s0+=726.0;
     s1+=212.0;
    } else {
     s0+=10.0;
     s1+=129.0;
    }
   }
  } else {
   if(i5<3.415346145629883e-05){
    if(i19<0.988578200340271){
     s0+=131.0;
     s1+=256.0;
    } else {
     s0+=308.0;
     s1+=44.0;
    }
   } else {
    if(i67<1.0184218883514404){
     s0+=8.0;
     s1+=368.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i7<1.0081498622894287){
   if(i10<1.0401519536972046){
    if(i46<0.0002815054322127253){
     s0+=44872.0;
     s1+=25.0;
    } else {
     s0+=15306.0;
     s1+=652.0;
    }
   } else {
    if(i2<0.00042188167572021484){
     s0+=4729.0;
     s1+=551.0;
    } else {
     s0+=130.0;
     s1+=146.0;
    }
   }
  } else {
   if(i62<0.003753960132598877){
    if(i38<0.0011778408661484718){
     s0+=12.0;
     s1+=367.0;
    } else {
     s0+=207.0;
     s1+=21.0;
    }
   } else {
    if(i70<0.0006628449773415923){
     s0+=548.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i2<0.000102996826171875){
  if(i57<0.9995735287666321){
   if(i14<0.998052716255188){
    s0+=381.0;
   } else {
    if(i52<3.426975308684632e-05){
     s0+=25.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i6<-1.1992860891041346e-05){
    if(i28<1.2570146322250366){
     s0+=19.0;
     s1+=760.0;
    } else {
     s0+=234.0;
     s1+=638.0;
    }
   } else {
    if(i36<4.887580871582031e-06){
     s0+=158.0;
     s1+=219.0;
    } else {
     s0+=313.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i15<0.00045925378799438477){
   if(i38<0.007237598299980164){
    if(i67<1.0369722843170166){
     s0+=86.0;
     s1+=934.0;
    } else {
     s0+=265.0;
     s1+=274.0;
    }
   } else {
    if(i39<0.00838899239897728){
     s0+=31.0;
     s1+=115.0;
    } else {
     s0+=15.0;
     s1+=1135.0;
    }
   }
  } else {
   if(i2<0.0008673667907714844){
    if(i21<0.0019321134313941002){
     s0+=38.0;
     s1+=81.0;
    } else {
     s0+=12.0;
     s1+=1114.0;
    }
   } else {
    s1+=8629.0;
   }
  }
 }
}
if(i1<0.08140268921852112){
 if(i31<0.0002819769724737853){
  if(i29<1.008420705795288){
   if(i17<1.0029728412628174){
    if(i46<0.0002636586723383516){
     s0+=44426.0;
     s1+=23.0;
    } else {
     s0+=7798.0;
     s1+=136.0;
    }
   } else {
    if(i74<1.0022354125976562){
     s0+=77.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=57.0;
    }
   }
  } else {
   if(i36<0.00012138485908508301){
    if(i3<0.07427439093589783){
     s0+=105.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=7.0;
     s1+=140.0;
    } else {
     s0+=36.0;
    }
   }
  }
 } else {
  if(i71<-4.476697540667374e-06){
   if(i6<-4.3521460611373186e-05){
    if(i55<-0.0035940404050052166){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=309.0;
    }
   } else {
    if(i36<0.00019365549087524414){
     s0+=44.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i9<1.0398883819580078){
    if(i39<0.0016543501988053322){
     s0+=3086.0;
     s1+=439.0;
    } else {
     s0+=6548.0;
     s1+=25.0;
    }
   } else {
    if(i6<-2.7587615477386862e-05){
     s0+=1761.0;
     s1+=1130.0;
    } else {
     s0+=5466.0;
     s1+=773.0;
    }
   }
  }
 }
} else {
 if(i22<-1.4424324035644531e-05){
  if(i14<0.9988701343536377){
   if(i6<-4.438096220837906e-05){
    if(i54<0.00017953250790014863){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i66<1.0003416538238525){
     s0+=455.0;
    } else {
     s0+=19.0;
     s1+=7.0;
    }
   }
  } else {
   if(i9<1.0885282754898071){
    s0+=1.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i6<-2.1002808352932334e-05){
   if(i32<1.0558756589889526){
    s0+=19.0;
   } else {
    if(i7<1.0233194828033447){
     s0+=446.0;
     s1+=6089.0;
    } else {
     s0+=2.0;
     s1+=7242.0;
    }
   }
  } else {
   if(i73<1.0129327774047852){
    if(i31<0.0002784958924166858){
     s0+=42.0;
     s1+=9.0;
    } else {
     s0+=114.0;
     s1+=477.0;
    }
   } else {
    if(i20<0.029758736491203308){
     s0+=547.0;
     s1+=67.0;
    } else {
     s0+=107.0;
     s1+=156.0;
    }
   }
  }
 }
}
if(i1<0.08225274085998535){
 if(i45<-0.006135135889053345){
  if(i34<0.04861346259713173){
   if(i2<0.000507354736328125){
    if(i0<0.03714311122894287){
     s0+=3322.0;
     s1+=352.0;
    } else {
     s0+=397.0;
     s1+=328.0;
    }
   } else {
    if(i68<0.14298205077648163){
     s0+=9.0;
     s1+=425.0;
    } else {
     s0+=50.0;
     s1+=36.0;
    }
   }
  } else {
   if(i14<1.0010426044464111){
    if(i35<0.8855891823768616){
     s0+=12.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=145.0;
   }
  }
 } else {
  if(i2<0.0006022751331329346){
   if(i58<0.02627117745578289){
    if(i24<1.0084259510040283){
     s0+=55274.0;
     s1+=327.0;
    } else {
     s0+=1367.0;
     s1+=206.0;
    }
   } else {
    if(i37<1.1476502418518066){
     s0+=2485.0;
     s1+=725.0;
    } else {
     s0+=6118.0;
     s1+=76.0;
    }
   }
  } else {
   if(i39<0.0017821589717641473){
    if(i39<0.0004247836768627167){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=332.0;
    }
   } else {
    if(i63<0.016028515994548798){
     s0+=224.0;
     s1+=24.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i49<0.9988083839416504){
  if(i0<0.6542673110961914){
   if(i31<0.05179678648710251){
    if(i33<0.0017424665857106447){
     s0+=421.0;
    } else {
     s0+=9.0;
     s1+=7.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i3<0.12476512789726257){
   if(i45<0.014493942260742188){
    if(i32<1.0596027374267578){
     s0+=54.0;
     s1+=3.0;
    } else {
     s0+=221.0;
     s1+=2356.0;
    }
   } else {
    if(i55<-0.006211729720234871){
     s0+=469.0;
     s1+=23.0;
    } else {
     s0+=117.0;
     s1+=86.0;
    }
   }
  } else {
   if(i48<0.00031410891097038984){
    if(i41<0.08565086126327515){
     s1+=123.0;
    } else {
     s0+=162.0;
     s1+=47.0;
    }
   } else {
    if(i37<1.259662389755249){
     s0+=184.0;
     s1+=2440.0;
    } else {
     s0+=10.0;
     s1+=9166.0;
    }
   }
  }
 }
}
if(i4<1.0024006366729736){
 if(i3<0.08370226621627808){
  if(i30<0.0002956066164188087){
   if(i19<1.009491205215454){
    if(i23<1.0451585054397583){
     s0+=49476.0;
     s1+=106.0;
    } else {
     s0+=6481.0;
     s1+=330.0;
    }
   } else {
    if(i32<1.075559377670288){
     s0+=40.0;
     s1+=78.0;
    } else {
     s0+=268.0;
     s1+=16.0;
    }
   }
  } else {
   if(i2<-0.00029027462005615234){
    if(i39<0.0023104706779122353){
     s0+=2439.0;
     s1+=319.0;
    } else {
     s0+=6144.0;
     s1+=91.0;
    }
   } else {
    if(i32<1.1068296432495117){
     s0+=1590.0;
     s1+=910.0;
    } else {
     s0+=2290.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i14<0.9985139966011047){
   if(i47<0.008840929716825485){
    if(i29<1.0034029483795166){
     s0+=547.0;
    } else {
     s0+=155.0;
     s1+=3.0;
    }
   } else {
    if(i10<1.0427320003509521){
     s0+=35.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i27<0.06341630220413208){
    if(i69<-0.013087174855172634){
     s0+=43.0;
     s1+=239.0;
    } else {
     s0+=23.0;
     s1+=1214.0;
    }
   } else {
    if(i6<-1.9341288862051442e-05){
     s0+=477.0;
     s1+=1920.0;
    } else {
     s0+=700.0;
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i6<-4.353338590590283e-05){
  if(i43<-1.0053658115793951e-05){
   if(i4<1.005054235458374){
    if(i43<-2.5971210561692715e-05){
     s0+=141.0;
     s1+=763.0;
    } else {
     s0+=24.0;
     s1+=1305.0;
    }
   } else {
    if(i48<0.0014664316549897194){
     s0+=14.0;
     s1+=1278.0;
    } else {
     s1+=7679.0;
    }
   }
  } else {
   if(i18<0.0002422928810119629){
    s0+=30.0;
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i28<1.2392117977142334){
   if(i22<1.4960765838623047e-05){
    if(i64<0.001687765121459961){
     s0+=43.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i74<1.000249981880188){
     s0+=1.0;
    } else {
     s1+=197.0;
    }
   }
  } else {
   if(i12<1.003847360610962){
    s1+=22.0;
   } else {
    if(i48<0.0011371952714398503){
     s0+=174.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i9<1.0452277660369873){
  if(i1<0.08197331428527832){
   if(i32<1.0557184219360352){
    if(i46<0.0005305055528879166){
     s0+=40552.0;
    } else {
     s0+=1469.0;
     s1+=2.0;
    }
   } else {
    if(i64<-0.0009951293468475342){
     s0+=3553.0;
     s1+=515.0;
    } else {
     s0+=16149.0;
     s1+=270.0;
    }
   }
  } else {
   if(i13<0.9938782453536987){
    if(i32<1.5465450286865234){
     s0+=163.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i46<0.00033052696380764246){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i21<0.004172172863036394){
   if(i0<0.08230835199356079){
    if(i6<-3.368208126630634e-05){
     s0+=441.0;
     s1+=291.0;
    } else {
     s0+=5665.0;
     s1+=482.0;
    }
   } else {
    if(i53<0.004681527614593506){
     s0+=323.0;
     s1+=900.0;
    } else {
     s0+=691.0;
     s1+=176.0;
    }
   }
  } else {
   if(i0<0.08111488819122314){
    if(i16<1.003352403640747){
     s0+=1057.0;
     s1+=333.0;
    } else {
     s0+=118.0;
     s1+=272.0;
    }
   } else {
    if(i13<0.9919064044952393){
     s0+=179.0;
     s1+=331.0;
    } else {
     s0+=106.0;
     s1+=1569.0;
    }
   }
  }
 }
} else {
 if(i57<0.9987317323684692){
  s0+=174.0;
 } else {
  if(i16<1.0208992958068848){
   if(i6<-4.405036452226341e-05){
    if(i66<1.0019878149032593){
     s0+=134.0;
     s1+=4058.0;
    } else {
     s0+=95.0;
     s1+=184.0;
    }
   } else {
    if(i74<1.0021522045135498){
     s0+=139.0;
     s1+=12.0;
    } else {
     s0+=26.0;
     s1+=266.0;
    }
   }
  } else {
   if(i7<1.0148940086364746){
    if(i3<0.13247203826904297){
     s0+=8.0;
     s1+=6.0;
    } else {
     s1+=300.0;
    }
   } else {
    s1+=6956.0;
   }
  }
 }
}
if(i8<0.0716162919998169){
 if(i2<0.0006021559238433838){
  if(i9<1.0445520877838135){
   if(i68<0.016674447804689407){
    if(i19<0.9718804359436035){
     s0+=15.0;
     s1+=19.0;
    } else {
     s0+=47917.0;
     s1+=167.0;
    }
   } else {
    if(i38<0.000982731580734253){
     s0+=3754.0;
     s1+=565.0;
    } else {
     s0+=9738.0;
     s1+=98.0;
    }
   }
  } else {
   if(i38<0.0011329001281410456){
    if(i72<0.01973114162683487){
     s0+=2052.0;
     s1+=435.0;
    } else {
     s0+=314.0;
     s1+=715.0;
    }
   } else {
    if(i72<0.14442233741283417){
     s0+=4889.0;
     s1+=664.0;
    } else {
     s0+=33.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i6<-4.330423689680174e-05){
   if(i18<-0.00011068582534790039){
    if(i44<-0.001874685287475586){
     s0+=18.0;
     s1+=120.0;
    } else {
     s0+=69.0;
     s1+=12.0;
    }
   } else {
    if(i45<0.00932401418685913){
     s0+=21.0;
     s1+=1677.0;
    } else {
     s0+=7.0;
     s1+=25.0;
    }
   }
  } else {
   if(i43<-1.4616975022363476e-05){
    if(i17<1.001986026763916){
     s0+=4.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i49<1.0009784698486328){
     s0+=206.0;
     s1+=14.0;
    } else {
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i13<1.0008549690246582){
  if(i14<0.9985270500183105){
   if(i43<-1.0307649972673971e-05){
    if(i14<0.997739315032959){
     s0+=11.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i12<0.9812139868736267){
     s0+=74.0;
     s1+=1.0;
    } else {
     s0+=403.0;
    }
   }
  } else {
   if(i65<0.0026037003844976425){
    if(i39<0.008717264980077744){
     s0+=1178.0;
     s1+=1365.0;
    } else {
     s0+=74.0;
     s1+=994.0;
    }
   } else {
    if(i49<0.9994480609893799){
     s0+=16.0;
     s1+=15.0;
    } else {
     s0+=13.0;
     s1+=756.0;
    }
   }
  }
 } else {
  if(i18<0.00021332502365112305){
   if(i34<0.023849956691265106){
    if(i25<1.081056833267212){
     s0+=92.0;
     s1+=530.0;
    } else {
     s0+=128.0;
     s1+=91.0;
    }
   } else {
    if(i43<-8.294475264847279e-06){
     s1+=1601.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  } else {
   s1+=7080.0;
  }
 }
}
if(i3<0.08524203300476074){
 if(i9<1.0451608896255493){
  if(i50<0.0015210241544991732){
   if(i1<0.06990933418273926){
    if(i14<1.0023084878921509){
     s0+=57030.0;
     s1+=290.0;
    } else {
     s0+=52.0;
     s1+=22.0;
    }
   } else {
    if(i21<0.003380873240530491){
     s0+=798.0;
     s1+=48.0;
    } else {
     s0+=199.0;
     s1+=99.0;
    }
   }
  } else {
   if(i42<1.197464108467102){
    if(i74<1.0003211498260498){
     s0+=1463.0;
     s1+=220.0;
    } else {
     s0+=113.0;
     s1+=201.0;
    }
   } else {
    if(i17<1.0099010467529297){
     s0+=2299.0;
     s1+=45.0;
    } else {
     s0+=8.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i71<-3.3662713576632086e-06){
   if(i11<0.000568687915802002){
    if(i57<0.9998900890350342){
     s1+=6.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i51<0.04165077209472656){
     s0+=7.0;
     s1+=378.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i37<1.103413462638855){
    if(i28<1.0850647687911987){
     s0+=1099.0;
    } else {
     s0+=828.0;
     s1+=1147.0;
    }
   } else {
    if(i17<1.0058987140655518){
     s0+=5297.0;
     s1+=476.0;
    } else {
     s0+=53.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i14<0.9988081455230713){
  if(i11<-0.0005632936954498291){
   if(i61<-3.5039347494603135e-06){
    if(i71<4.451908534974791e-05){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    s0+=547.0;
   }
  } else {
   if(i66<0.9998672008514404){
    if(i54<0.0017176182009279728){
     s0+=109.0;
     s1+=9.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i65<0.00029779085889458656){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i0<0.12533989548683167){
   if(i41<0.059734463691711426){
    if(i28<1.2392117977142334){
     s0+=32.0;
     s1+=1845.0;
    } else {
     s0+=69.0;
     s1+=437.0;
    }
   } else {
    if(i39<0.0015112350229173899){
     s0+=153.0;
     s1+=268.0;
    } else {
     s0+=600.0;
     s1+=98.0;
    }
   }
  } else {
   if(i40<0.08791261911392212){
    if(i33<0.0005819599027745426){
     s0+=12.0;
     s1+=8.0;
    } else {
     s0+=11.0;
     s1+=8467.0;
    }
   } else {
    if(i38<0.003224235260859132){
     s0+=202.0;
     s1+=39.0;
    } else {
     s0+=134.0;
     s1+=2683.0;
    }
   }
  }
 }
}
if(i3<0.08502998948097229){
 if(i18<0.0001583695411682129){
  if(i31<0.0003066366771236062){
   if(i1<0.0723503828048706){
    if(i65<0.0013646793086081743){
     s0+=52712.0;
     s1+=270.0;
    } else {
     s0+=17.0;
     s1+=27.0;
    }
   } else {
    if(i27<0.04610520601272583){
     s0+=20.0;
     s1+=71.0;
    } else {
     s0+=454.0;
     s1+=21.0;
    }
   }
  } else {
   if(i15<-0.0014235973358154297){
    if(i63<0.012320115230977535){
     s0+=7859.0;
     s1+=97.0;
    } else {
     s0+=686.0;
     s1+=215.0;
    }
   } else {
    if(i36<-3.191828727722168e-05){
     s0+=3168.0;
     s1+=140.0;
    } else {
     s0+=3645.0;
     s1+=1832.0;
    }
   }
  }
 } else {
  if(i4<1.004152774810791){
   if(i10<1.037003755569458){
    if(i36<0.00020503997802734375){
     s0+=274.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i33<0.00141369819175452){
     s0+=7.0;
     s1+=116.0;
    } else {
     s0+=77.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=441.0;
  }
 }
} else {
 if(i6<-1.4332285900309216e-05){
  if(i18<0.00010210275650024414){
   if(i51<0.0468369722366333){
    if(i41<0.05484849214553833){
     s0+=18.0;
     s1+=1830.0;
    } else {
     s0+=139.0;
     s1+=664.0;
    }
   } else {
    if(i3<0.13240036368370056){
     s0+=387.0;
     s1+=107.0;
    } else {
     s0+=152.0;
     s1+=1537.0;
    }
   }
  } else {
   if(i22<0.00015974044799804688){
    if(i37<1.060826301574707){
     s0+=4.0;
    } else {
     s0+=30.0;
     s1+=9611.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i36<-0.00013336539268493652){
   if(i48<0.0007801461033523083){
    if(i58<0.1492883861064911){
     s0+=118.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    s0+=417.0;
   }
  } else {
   if(i52<3.441865192144178e-05){
    if(i39<0.007353303954005241){
     s0+=430.0;
     s1+=37.0;
    } else {
     s0+=9.0;
     s1+=46.0;
    }
   } else {
    if(i42<1.253311276435852){
     s0+=76.0;
     s1+=312.0;
    } else {
     s0+=88.0;
     s1+=38.0;
    }
   }
  }
 }
}
if(i6<-7.518445636378601e-05){
 if(i35<0.9219307899475098){
  if(i61<-1.2990562936465722e-05){
   if(i21<0.01729447953402996){
    if(i21<0.01451120525598526){
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    s1+=111.0;
   }
  } else {
   if(i4<1.0002233982086182){
    if(i0<0.03790193796157837){
     s0+=411.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i35<0.8872907161712646){
     s0+=4.0;
     s1+=6.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i3<0.06696957349777222){
   if(i63<0.009334998205304146){
    if(i30<0.00213817460462451){
     s0+=156.0;
     s1+=72.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i5<1.8596649169921875e-05){
     s0+=20.0;
     s1+=24.0;
    } else {
     s0+=18.0;
     s1+=227.0;
    }
   }
  } else {
   if(i13<0.9977792501449585){
    if(i9<1.069648265838623){
     s0+=90.0;
     s1+=9.0;
    } else {
     s0+=53.0;
     s1+=853.0;
    }
   } else {
    if(i0<0.13856756687164307){
     s0+=48.0;
     s1+=1436.0;
    } else {
     s0+=5.0;
     s1+=8627.0;
    }
   }
  }
 }
} else {
 if(i8<0.0677613615989685){
  if(i64<-0.0012615323066711426){
   if(i12<0.9850956201553345){
    if(i72<0.2186233103275299){
     s0+=2731.0;
     s1+=64.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i33<0.00033573637483641505){
     s0+=1050.0;
    } else {
     s0+=1585.0;
     s1+=1098.0;
    }
   }
  } else {
   if(i15<0.0008106231689453125){
    if(i35<1.0063927173614502){
     s0+=59397.0;
     s1+=790.0;
    } else {
     s0+=2442.0;
     s1+=573.0;
    }
   } else {
    if(i38<0.00156751973554492){
     s0+=116.0;
     s1+=389.0;
    } else {
     s0+=278.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i41<0.04793471097946167){
   if(i23<1.0456106662750244){
    if(i20<0.03701179474592209){
     s0+=61.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i66<1.0046584606170654){
     s0+=40.0;
     s1+=1117.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.0015584067441523075){
    if(i1<0.10606175661087036){
     s0+=1053.0;
     s1+=111.0;
    } else {
     s0+=707.0;
     s1+=681.0;
    }
   } else {
    if(i3<0.10511419177055359){
     s0+=440.0;
     s1+=121.0;
    } else {
     s0+=133.0;
     s1+=768.0;
    }
   }
  }
 }
}
if(i8<0.0726696252822876){
 if(i2<0.0005701780319213867){
  if(i31<0.00028052114066667855){
   if(i23<1.0487183332443237){
    if(i64<-0.0027088522911071777){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=48449.0;
     s1+=76.0;
    }
   } else {
    if(i17<1.0034137964248657){
     s0+=3676.0;
     s1+=188.0;
    } else {
     s0+=5.0;
     s1+=28.0;
    }
   }
  } else {
   if(i0<0.07756328582763672){
    if(i4<0.9967604875564575){
     s0+=8805.0;
     s1+=151.0;
    } else {
     s0+=7732.0;
     s1+=1670.0;
    }
   } else {
    if(i4<0.9956327676773071){
     s0+=63.0;
    } else {
     s0+=41.0;
     s1+=660.0;
    }
   }
  }
 } else {
  if(i21<0.001949255121871829){
   if(i4<1.004645824432373){
    if(i40<0.0023082494735717773){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=183.0;
    }
   } else {
    s1+=38.0;
   }
  } else {
   if(i49<0.9960722923278809){
    s0+=29.0;
   } else {
    if(i12<0.9985259771347046){
     s0+=103.0;
     s1+=236.0;
    } else {
     s0+=58.0;
     s1+=1669.0;
    }
   }
  }
 }
} else {
 if(i6<-2.320574458281044e-05){
  if(i37<1.3386857509613037){
   if(i26<1.004045009613037){
    if(i41<0.05399978160858154){
     s0+=20.0;
     s1+=735.0;
    } else {
     s0+=458.0;
     s1+=663.0;
    }
   } else {
    if(i15<-5.984306335449219e-05){
     s0+=37.0;
     s1+=180.0;
    } else {
     s0+=46.0;
     s1+=2705.0;
    }
   }
  } else {
   if(i4<0.9977532625198364){
    if(i38<0.00797361508011818){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=145.0;
    }
   } else {
    if(i14<0.9982390403747559){
     s0+=2.0;
    } else {
     s0+=23.0;
     s1+=7340.0;
    }
   }
  }
 } else {
  if(i28<1.255998969078064){
   if(i58<0.036648739129304886){
    if(i21<0.004287545569241047){
     s0+=397.0;
     s1+=66.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i33<0.0005211380776017904){
     s0+=118.0;
     s1+=6.0;
    } else {
     s0+=98.0;
     s1+=404.0;
    }
   }
  } else {
   if(i33<0.004988526925444603){
    if(i32<1.4008572101593018){
     s0+=651.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    if(i54<0.0007411538972519338){
     s0+=75.0;
    } else {
     s0+=10.0;
     s1+=74.0;
    }
   }
  }
 }
}
if(i1<0.08263090252876282){
 if(i23<1.0486011505126953){
  if(i46<0.00027143489569425583){
   if(i6<-4.1220006096409634e-05){
    if(i46<0.000255545019172132){
     s0+=296.0;
    } else {
     s0+=8.0;
     s1+=3.0;
    }
   } else {
    if(i73<0.9915262460708618){
     s0+=12171.0;
     s1+=8.0;
    } else {
     s0+=31441.0;
    }
   }
  } else {
   if(i28<1.2371783256530762){
    if(i17<1.0009715557098389){
     s0+=4994.0;
     s1+=294.0;
    } else {
     s0+=2.0;
     s1+=97.0;
    }
   } else {
    if(i27<0.05346819758415222){
     s0+=6733.0;
    } else {
     s0+=399.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i14<1.001845359802246){
   if(i39<0.0016219083918258548){
    if(i72<0.016496840864419937){
     s0+=3523.0;
     s1+=505.0;
    } else {
     s0+=848.0;
     s1+=941.0;
    }
   } else {
    if(i50<0.006863054819405079){
     s0+=7271.0;
     s1+=127.0;
    } else {
     s0+=1373.0;
     s1+=209.0;
    }
   }
  } else {
   if(i15<-0.0008827447891235352){
    if(i51<-0.049182891845703125){
     s0+=19.0;
     s1+=116.0;
    } else {
     s0+=551.0;
     s1+=86.0;
    }
   } else {
    if(i51<0.036027342081069946){
     s0+=47.0;
     s1+=690.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015188455581665){
  if(i59<0.028652191162109375){
   if(i38<0.000555981183424592){
    if(i36<-7.0035457611083984e-06){
     s0+=46.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   } else {
    if(i49<0.9985897541046143){
     s0+=100.0;
    } else {
     s0+=233.0;
     s1+=2042.0;
    }
   }
  } else {
   if(i11<-0.0004112422466278076){
    if(i52<0.00019950578280258924){
     s0+=256.0;
    } else {
     s0+=13.0;
     s1+=5.0;
    }
   } else {
    if(i21<0.0033321762457489967){
     s0+=638.0;
     s1+=241.0;
    } else {
     s0+=186.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i34<0.017946189269423485){
   if(i28<1.2392117977142334){
    if(i64<0.007971227169036865){
     s0+=2.0;
     s1+=1207.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i0<0.1614563763141632){
     s0+=144.0;
     s1+=123.0;
    } else {
     s0+=1.0;
     s1+=507.0;
    }
   }
  } else {
   if(i34<0.021363679319620132){
    if(i40<0.05322045087814331){
     s1+=405.0;
    } else {
     s0+=14.0;
     s1+=71.0;
    }
   } else {
    if(i34<0.023335836827754974){
     s0+=2.0;
     s1+=208.0;
    } else {
     s1+=8399.0;
    }
   }
  }
 }
}
if(i0<0.0780104398727417){
 if(i5<4.035234451293945e-05){
  if(i31<0.00028163305250927806){
   if(i65<0.0008050128817558289){
    if(i16<1.0074331760406494){
     s0+=51487.0;
     s1+=111.0;
    } else {
     s0+=125.0;
     s1+=111.0;
    }
   } else {
    if(i29<0.992775559425354){
     s0+=114.0;
     s1+=67.0;
    } else {
     s0+=349.0;
     s1+=2.0;
    }
   }
  } else {
   if(i47<0.000878499005921185){
    if(i32<1.055511236190796){
     s0+=2395.0;
     s1+=1.0;
    } else {
     s0+=2248.0;
     s1+=1338.0;
    }
   } else {
    if(i0<0.06148117780685425){
     s0+=10623.0;
     s1+=336.0;
    } else {
     s0+=1236.0;
     s1+=253.0;
    }
   }
  }
 } else {
  if(i36<0.0001538395881652832){
   if(i20<0.03028421476483345){
    if(i16<0.9995940923690796){
     s0+=232.0;
     s1+=3.0;
    } else {
     s0+=78.0;
     s1+=31.0;
    }
   } else {
    if(i71<-2.644760570547078e-06){
     s0+=8.0;
     s1+=2.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i23<1.0407118797302246){
    s0+=36.0;
   } else {
    if(i53<0.0020443499088287354){
     s0+=92.0;
     s1+=997.0;
    } else {
     s0+=46.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985270500183105){
  if(i10<1.3700618743896484){
   if(i14<0.9980583190917969){
    if(i15<-0.0031873583793640137){
     s0+=26.0;
     s1+=5.0;
    } else {
     s0+=480.0;
    }
   } else {
    if(i6<-3.9517704863101244e-05){
     s1+=15.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i1<0.11970272660255432){
   if(i44<0.003944694995880127){
    if(i39<0.0003644439566414803){
     s0+=57.0;
     s1+=8.0;
    } else {
     s0+=195.0;
     s1+=1957.0;
    }
   } else {
    if(i69<-0.01871039718389511){
     s0+=417.0;
     s1+=6.0;
    } else {
     s0+=239.0;
     s1+=72.0;
    }
   }
  } else {
   if(i33<0.0006418696139007807){
    if(i39<0.00184278201777488){
     s0+=10.0;
     s1+=118.0;
    } else {
     s0+=144.0;
    }
   } else {
    if(i43<4.27745044362382e-06){
     s0+=237.0;
     s1+=11847.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i6<-8.144946332322434e-05){
 if(i8<0.018882811069488525){
  if(i12<0.9957213401794434){
   if(i1<0.03374373912811279){
    if(i4<1.0049079656600952){
     s0+=445.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i21<0.0069114877842366695){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i36<0.00018456578254699707){
    if(i11<0.0011223554611206055){
     s1+=10.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=89.0;
   }
  }
 } else {
  if(i14<0.9984195232391357){
   if(i25<1.1950528621673584){
    s0+=171.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i3<0.07178238034248352){
    if(i51<0.005866408348083496){
     s0+=7.0;
     s1+=225.0;
    } else {
     s0+=99.0;
     s1+=9.0;
    }
   } else {
    if(i13<1.0004851818084717){
     s0+=77.0;
     s1+=1232.0;
    } else {
     s0+=21.0;
     s1+=9344.0;
    }
   }
  }
 }
} else {
 if(i3<0.08194315433502197){
  if(i15<0.0011508762836456299){
   if(i42<1.0714969635009766){
    if(i38<0.0002899629180319607){
     s0+=34107.0;
    } else {
     s0+=3084.0;
     s1+=23.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=5095.0;
     s1+=1489.0;
    } else {
     s0+=25759.0;
     s1+=657.0;
    }
   }
  } else {
   if(i2<0.0009390115737915039){
    if(i6<-6.013968959450722e-05){
     s0+=7.0;
     s1+=58.0;
    } else {
     s0+=106.0;
     s1+=20.0;
    }
   } else {
    s1+=172.0;
   }
  }
 } else {
  if(i43<4.636453923012596e-06){
   if(i41<0.05620044469833374){
    if(i36<-0.0001633763313293457){
     s0+=159.0;
     s1+=6.0;
    } else {
     s0+=162.0;
     s1+=2317.0;
    }
   } else {
    if(i38<0.005046119913458824){
     s0+=1233.0;
     s1+=801.0;
    } else {
     s0+=230.0;
     s1+=629.0;
    }
   }
  } else {
   if(i49<0.9993228912353516){
    s0+=340.0;
   } else {
    if(i15<-0.001903921365737915){
     s1+=2.0;
    } else {
     s0+=27.0;
    }
   }
  }
 }
}
if(i15<0.0008261799812316895){
 if(i23<1.0576403141021729){
  if(i8<0.07143658399581909){
   if(i46<0.00028136844048276544){
    if(i42<1.0714969635009766){
     s0+=33655.0;
    } else {
     s0+=11667.0;
     s1+=48.0;
    }
   } else {
    if(i14<1.0005004405975342){
     s0+=12210.0;
     s1+=396.0;
    } else {
     s0+=654.0;
     s1+=233.0;
    }
   }
  } else {
   if(i13<0.9947761297225952){
    if(i40<0.03788435459136963){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=230.0;
     s1+=1.0;
    }
   } else {
    if(i20<0.011831066571176052){
     s0+=143.0;
     s1+=37.0;
    } else {
     s0+=19.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i68<0.3109016716480255){
   if(i0<0.07568106055259705){
    if(i1<0.06321960687637329){
     s0+=9283.0;
     s1+=1073.0;
    } else {
     s0+=961.0;
     s1+=549.0;
    }
   } else {
    if(i41<0.054686933755874634){
     s0+=100.0;
     s1+=1913.0;
    } else {
     s0+=1518.0;
     s1+=1680.0;
    }
   }
  } else {
   if(i10<1.0415773391723633){
    if(i18<-0.0004018247127532959){
     s0+=200.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i34<0.040760934352874756){
     s0+=48.0;
     s1+=8.0;
    } else {
     s1+=1143.0;
    }
   }
  }
 }
} else {
 if(i31<0.0002784869575407356){
  if(i17<1.001625657081604){
   if(i1<0.07020047307014465){
    if(i65<-5.560942736337893e-05){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=295.0;
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i61<-5.414408860815456e-06){
    s1+=138.0;
   } else {
    s0+=45.0;
   }
  }
 } else {
  if(i1<0.06415289640426636){
   if(i51<-0.025549501180648804){
    if(i50<0.0008955779485404491){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=205.0;
    }
   } else {
    if(i48<0.0015790555626153946){
     s0+=139.0;
     s1+=3.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i22<-1.093745231628418e-05){
    s0+=5.0;
   } else {
    if(i6<-4.3320978875271976e-05){
     s0+=1.0;
     s1+=9296.0;
    } else {
     s0+=60.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i6<-6.288492295425385e-05){
 if(i3<0.07040849328041077){
  if(i2<0.00047665834426879883){
   if(i3<0.0202195942401886){
    if(i58<0.07461044937372208){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=710.0;
     s1+=4.0;
    }
   } else {
    if(i73<0.9276593923568726){
     s0+=9.0;
     s1+=44.0;
    } else {
     s0+=443.0;
     s1+=61.0;
    }
   }
  } else {
   if(i45<0.0031588077545166016){
    if(i28<1.5682398080825806){
     s0+=10.0;
     s1+=394.0;
    } else {
     s0+=46.0;
     s1+=57.0;
    }
   } else {
    if(i32<1.174043893814087){
     s1+=7.0;
    } else {
     s0+=51.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i13<0.9948264360427856){
   if(i3<0.10334959626197815){
    if(i10<1.088738203048706){
     s0+=121.0;
     s1+=12.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i49<0.9964364171028137){
     s0+=18.0;
    } else {
     s0+=18.0;
     s1+=511.0;
    }
   }
  } else {
   if(i38<0.0003290990716777742){
    s0+=4.0;
   } else {
    if(i18<6.258487701416016e-06){
     s0+=105.0;
     s1+=1133.0;
    } else {
     s0+=1.0;
     s1+=9817.0;
    }
   }
  }
 }
} else {
 if(i20<0.017925988882780075){
  if(i26<1.0085053443908691){
   if(i62<-0.0023176372051239014){
    if(i26<0.9744327068328857){
     s0+=997.0;
     s1+=23.0;
    } else {
     s0+=1663.0;
     s1+=578.0;
    }
   } else {
    if(i0<0.07773518562316895){
     s0+=56697.0;
     s1+=389.0;
    } else {
     s0+=726.0;
     s1+=223.0;
    }
   }
  } else {
   if(i42<1.144650936126709){
    if(i70<6.530855898745358e-05){
     s0+=52.0;
    } else {
     s0+=35.0;
     s1+=555.0;
    }
   } else {
    if(i5<7.158517837524414e-05){
     s0+=829.0;
     s1+=29.0;
    } else {
     s1+=26.0;
    }
   }
  }
 } else {
  if(i4<0.9968701601028442){
   if(i68<0.3278043270111084){
    if(i1<0.08583930134773254){
     s0+=5743.0;
     s1+=50.0;
    } else {
     s0+=286.0;
     s1+=101.0;
    }
   } else {
    if(i75<0.00025304302107542753){
     s0+=57.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=31.0;
    }
   }
  } else {
   if(i37<1.0585991144180298){
    s0+=471.0;
   } else {
    if(i21<0.00248397933319211){
     s0+=1256.0;
     s1+=784.0;
    } else {
     s0+=773.0;
     s1+=2249.0;
    }
   }
  }
 }
}
if(i9<1.055552363395691){
 if(i3<0.08148115873336792){
  if(i23<1.0451585054397583){
   if(i45<-0.00612872838973999){
    if(i56<0.00017313349235337228){
     s0+=280.0;
     s1+=66.0;
    } else {
     s0+=461.0;
     s1+=1.0;
    }
   } else {
    if(i37<1.067622423171997){
     s0+=36171.0;
     s1+=3.0;
    } else {
     s0+=16947.0;
     s1+=158.0;
    }
   }
  } else {
   if(i0<0.060648053884506226){
    if(i28<1.1013743877410889){
     s0+=2438.0;
     s1+=602.0;
    } else {
     s0+=6825.0;
     s1+=150.0;
    }
   } else {
    if(i40<0.0330328643321991){
     s0+=120.0;
     s1+=299.0;
    } else {
     s0+=561.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<-1.0949199349852279e-05){
   if(i71<3.491945244604722e-05){
    if(i66<0.9975708723068237){
     s0+=26.0;
    } else {
     s0+=77.0;
     s1+=844.0;
    }
   } else {
    if(i45<-0.0017571747303009033){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=81.0;
     s1+=6.0;
    }
   }
  } else {
   if(i22<-1.2814998626708984e-05){
    if(i65<0.002272184006869793){
     s0+=321.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i72<0.010661272332072258){
     s0+=79.0;
     s1+=5.0;
    } else {
     s0+=73.0;
     s1+=111.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007861852645874023){
  if(i6<-3.763140557566658e-05){
   if(i34<0.024943653494119644){
    if(i39<0.001123266527429223){
     s0+=10.0;
     s1+=189.0;
    } else {
     s0+=951.0;
     s1+=647.0;
    }
   } else {
    if(i16<0.9390461444854736){
     s0+=54.0;
     s1+=59.0;
    } else {
     s0+=125.0;
     s1+=2602.0;
    }
   }
  } else {
   if(i8<0.08110511302947998){
    if(i32<1.1025084257125854){
     s0+=959.0;
     s1+=641.0;
    } else {
     s0+=3349.0;
     s1+=235.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=343.0;
     s1+=566.0;
    } else {
     s0+=646.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i34<0.008306082338094711){
   if(i1<0.06415289640426636){
    if(i15<0.0014349818229675293){
     s0+=147.0;
     s1+=35.0;
    } else {
     s1+=102.0;
    }
   } else {
    if(i23<1.1360822916030884){
     s0+=1.0;
     s1+=675.0;
    } else {
     s0+=36.0;
     s1+=113.0;
    }
   }
  } else {
   if(i5<5.525350570678711e-05){
    if(i21<0.0018919293070212007){
     s0+=21.0;
     s1+=11.0;
    } else {
     s0+=13.0;
     s1+=792.0;
    }
   } else {
    if(i43<-1.3497814506990835e-05){
     s1+=7933.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  }
 }
}
if(i5<3.7729740142822266e-05){
 if(i8<0.07196682691574097){
  if(i23<1.0486011505126953){
   if(i24<1.014859676361084){
    if(i31<0.00031648227013647556){
     s0+=49646.0;
     s1+=109.0;
    } else {
     s0+=6059.0;
     s1+=228.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i33<0.001446463051252067){
    if(i42<1.1037919521331787){
     s0+=2625.0;
     s1+=1597.0;
    } else {
     s0+=2896.0;
     s1+=400.0;
    }
   } else {
    if(i5<1.996755599975586e-05){
     s0+=7208.0;
     s1+=270.0;
    } else {
     s0+=274.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i72<0.14394375681877136){
   if(i11<-0.00038823485374450684){
    if(i70<6.957219738978893e-05){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=487.0;
     s1+=6.0;
    }
   } else {
    if(i6<-1.405719649483217e-05){
     s0+=566.0;
     s1+=1876.0;
    } else {
     s0+=786.0;
     s1+=284.0;
    }
   }
  } else {
   if(i6<-8.464625352644362e-06){
    if(i9<1.0814480781555176){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=549.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
} else {
 if(i23<1.0510351657867432){
  if(i32<1.0624027252197266){
   s0+=318.0;
  } else {
   if(i37<1.1752758026123047){
    s1+=25.0;
   } else {
    s0+=22.0;
   }
  }
 } else {
  if(i30<0.00016199224046431482){
   if(i1<0.05753287672996521){
    if(i13<1.005726933479309){
     s0+=35.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i43<-1.6009620594559237e-05){
     s1+=33.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i4<1.004080057144165){
    if(i1<0.12455910444259644){
     s0+=285.0;
     s1+=575.0;
    } else {
     s0+=22.0;
     s1+=1189.0;
    }
   } else {
    if(i34<0.019121291115880013){
     s0+=47.0;
     s1+=1959.0;
    } else {
     s0+=1.0;
     s1+=7722.0;
    }
   }
  }
 }
}
if(i0<0.0772174596786499){
 if(i2<0.0006022751331329346){
  if(i20<0.016540659591555595){
   if(i50<0.0016022269846871495){
    if(i7<1.009491205215454){
     s0+=55657.0;
     s1+=324.0;
    } else {
     s0+=188.0;
     s1+=79.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=1062.0;
     s1+=304.0;
    } else {
     s0+=2091.0;
     s1+=73.0;
    }
   }
  } else {
   if(i13<0.993762731552124){
    if(i44<-0.012627005577087402){
     s0+=158.0;
     s1+=32.0;
    } else {
     s0+=6859.0;
     s1+=54.0;
    }
   } else {
    if(i37<1.200620174407959){
     s0+=1558.0;
     s1+=1101.0;
    } else {
     s0+=1411.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i30<0.00016225039144046605){
   if(i44<-0.0016730129718780518){
    s1+=3.0;
   } else {
    if(i21<0.005060235504060984){
     s0+=118.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i64<0.0018402338027954102){
    if(i45<0.009046554565429688){
     s0+=92.0;
     s1+=1023.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   } else {
    if(i38<0.002762837801128626){
     s1+=35.0;
    } else {
     s0+=89.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i21<0.004687082022428513){
  if(i41<0.05797663331031799){
   if(i5<-5.59389591217041e-05){
    if(i69<-0.0014438615180552006){
     s0+=79.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.08860954642295837){
     s0+=81.0;
     s1+=222.0;
    } else {
     s0+=12.0;
     s1+=1396.0;
    }
   }
  } else {
   if(i33<0.0005887870211154222){
    if(i11<0.00013214349746704102){
     s0+=462.0;
     s1+=29.0;
    } else {
     s0+=15.0;
     s1+=20.0;
    }
   } else {
    if(i71<-1.1910501598322298e-06){
     s0+=25.0;
     s1+=245.0;
    } else {
     s0+=880.0;
     s1+=429.0;
    }
   }
  }
 } else {
  if(i56<-0.00010472075518919155){
   if(i23<1.0372555255889893){
    s0+=9.0;
   } else {
    if(i61<1.7333941286779009e-06){
     s0+=79.0;
     s1+=10752.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i53<0.0037232637405395508){
    if(i36<-0.00022751092910766602){
     s0+=13.0;
    } else {
     s0+=9.0;
     s1+=511.0;
    }
   } else {
    if(i3<0.11505717039108276){
     s0+=135.0;
     s1+=10.0;
    } else {
     s0+=25.0;
     s1+=266.0;
    }
   }
  }
 }
}
if(i0<0.07786303758621216){
 if(i12<1.0060601234436035){
  if(i2<0.0007026791572570801){
   if(i9<1.0401519536972046){
    if(i32<1.0556960105895996){
     s0+=41137.0;
     s1+=1.0;
    } else {
     s0+=17597.0;
     s1+=571.0;
    }
   } else {
    if(i17<1.000558614730835){
     s0+=8646.0;
     s1+=966.0;
    } else {
     s0+=1255.0;
     s1+=547.0;
    }
   }
  } else {
   if(i21<0.004308118484914303){
    s0+=32.0;
   } else {
    if(i62<0.004979550838470459){
     s0+=62.0;
     s1+=325.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<-4.362776599009521e-05){
   if(i48<0.000469973252620548){
    if(i39<0.0017961733974516392){
     s1+=30.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i54<-0.00012676644837483764){
     s0+=30.0;
     s1+=24.0;
    } else {
     s0+=9.0;
     s1+=752.0;
    }
   }
  } else {
   if(i37<1.126044750213623){
    s1+=37.0;
   } else {
    if(i61<-7.095412456692429e-06){
     s1+=4.0;
    } else {
     s0+=558.0;
    }
   }
  }
 }
} else {
 if(i5<6.258487701416016e-06){
  if(i5<-5.367398262023926e-05){
   if(i21<0.006267574615776539){
    if(i14<0.9976413249969482){
     s0+=327.0;
    } else {
     s0+=98.0;
     s1+=18.0;
    }
   } else {
    if(i70<0.0016112651210278273){
     s0+=12.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=99.0;
    }
   }
  } else {
   if(i40<0.04944503307342529){
    if(i48<0.0003019487194251269){
     s0+=47.0;
     s1+=115.0;
    } else {
     s0+=52.0;
     s1+=964.0;
    }
   } else {
    if(i6<-1.1621429621300194e-05){
     s0+=219.0;
     s1+=451.0;
    } else {
     s0+=500.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i6<-4.268142220098525e-05){
   if(i1<0.11704188585281372){
    if(i18<-9.173154830932617e-05){
     s0+=120.0;
     s1+=139.0;
    } else {
     s0+=27.0;
     s1+=952.0;
    }
   } else {
    if(i23<1.049600601196289){
     s0+=7.0;
    } else {
     s0+=47.0;
     s1+=10321.0;
    }
   }
  } else {
   if(i73<1.0238348245620728){
    if(i57<0.9985494017601013){
     s0+=10.0;
    } else {
     s0+=29.0;
     s1+=454.0;
    }
   } else {
    if(i21<0.003987443167716265){
     s0+=309.0;
     s1+=48.0;
    } else {
     s0+=7.0;
     s1+=142.0;
    }
   }
  }
 }
}
if(i0<0.07771864533424377){
 if(i18<0.0001551508903503418){
  if(i62<-0.0022155344486236572){
   if(i22<2.2590160369873047e-05){
    if(i12<0.989699125289917){
     s0+=3724.0;
     s1+=165.0;
    } else {
     s0+=1794.0;
     s1+=735.0;
    }
   } else {
    if(i15<-0.00240248441696167){
     s0+=180.0;
     s1+=48.0;
    } else {
     s0+=48.0;
     s1+=279.0;
    }
   }
  } else {
   if(i4<1.0024871826171875){
    if(i20<0.016540851444005966){
     s0+=56377.0;
     s1+=389.0;
    } else {
     s0+=6657.0;
     s1+=771.0;
    }
   } else {
    if(i68<0.0841372162103653){
     s0+=68.0;
     s1+=210.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i31<0.0003855276736430824){
   if(i36<0.00020140409469604492){
    if(i11<0.0005704760551452637){
     s0+=315.0;
     s1+=10.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i28<1.2731578350067139){
     s1+=130.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i61<-4.4068933675589506e-06){
    if(i47<0.0005524568259716034){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=521.0;
    }
   } else {
    if(i51<-0.03576695919036865){
     s1+=24.0;
    } else {
     s0+=58.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i13<1.000933289527893){
  if(i11<-0.0003960132598876953){
   if(i43<-1.0080972970172297e-05){
    if(i61<-5.646490990329767e-06){
     s0+=21.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i11<-0.0004054605960845947){
     s0+=470.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i51<0.047355473041534424){
    if(i42<1.0810585021972656){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=247.0;
     s1+=2199.0;
    }
   } else {
    if(i47<0.005521601997315884){
     s0+=732.0;
     s1+=435.0;
    } else {
     s0+=138.0;
     s1+=889.0;
    }
   }
  }
 } else {
  if(i6<-4.329586590756662e-05){
   if(i15<3.5822391510009766e-05){
    if(i34<0.017418552190065384){
     s0+=43.0;
     s1+=89.0;
    } else {
     s0+=4.0;
     s1+=655.0;
    }
   } else {
    if(i17<0.9963774085044861){
     s0+=2.0;
     s1+=151.0;
    } else {
     s1+=9030.0;
    }
   }
  } else {
   if(i32<1.1089794635772705){
    if(i21<0.0011079453397542238){
     s0+=11.0;
     s1+=7.0;
    } else {
     s1+=203.0;
    }
   } else {
    if(i73<1.0164875984191895){
     s0+=8.0;
     s1+=87.0;
    } else {
     s0+=158.0;
     s1+=67.0;
    }
   }
  }
 }
}
if(i8<0.07196861505508423){
 if(i22<1.9252300262451172e-05){
  if(i7<1.0080137252807617){
   if(i0<0.07753235101699829){
    if(i58<0.026191672310233116){
     s0+=56688.0;
     s1+=539.0;
    } else {
     s0+=10311.0;
     s1+=1165.0;
    }
   } else {
    if(i74<0.997356653213501){
     s0+=71.0;
    } else {
     s0+=35.0;
     s1+=394.0;
    }
   }
  } else {
   if(i39<0.001978052780032158){
    if(i6<-2.4535680495318957e-05){
     s0+=12.0;
     s1+=547.0;
    } else {
     s0+=51.0;
     s1+=14.0;
    }
   } else {
    if(i21<0.003360660281032324){
     s0+=730.0;
     s1+=19.0;
    } else {
     s0+=61.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i1<0.07002091407775879){
   if(i53<-0.0019289255142211914){
    if(i74<0.9993419647216797){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=87.0;
     s1+=473.0;
    }
   } else {
    if(i13<1.0040137767791748){
     s0+=1008.0;
     s1+=108.0;
    } else {
     s0+=25.0;
     s1+=137.0;
    }
   }
  } else {
   if(i45<0.013168543577194214){
    if(i9<1.0328238010406494){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=1177.0;
    }
   } else {
    if(i71<-3.40179917657224e-06){
     s1+=18.0;
    } else {
     s0+=58.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i2<0.00015732645988464355){
  if(i40<0.04244464635848999){
   if(i22<-1.4573335647583008e-05){
    if(i49<0.9996856451034546){
     s0+=27.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i55<-0.009606435894966125){
     s0+=28.0;
     s1+=52.0;
    } else {
     s0+=39.0;
     s1+=795.0;
    }
   }
  } else {
   if(i47<0.003532527480274439){
    if(i30<0.0016370799858123064){
     s0+=417.0;
     s1+=271.0;
    } else {
     s0+=725.0;
     s1+=31.0;
    }
   } else {
    if(i37<1.2527469396591187){
     s0+=118.0;
     s1+=28.0;
    } else {
     s0+=196.0;
     s1+=444.0;
    }
   }
  }
 } else {
  if(i1<0.10036703944206238){
   if(i45<0.01352834701538086){
    if(i43<-9.550288268656004e-06){
     s0+=27.0;
     s1+=284.0;
    } else {
     s0+=31.0;
     s1+=12.0;
    }
   } else {
    if(i4<1.0065068006515503){
     s0+=165.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.13240036368370056){
    if(i41<0.07716330885887146){
     s0+=10.0;
     s1+=678.0;
    } else {
     s0+=120.0;
     s1+=51.0;
    }
   } else {
    if(i59<0.06146574020385742){
     s0+=19.0;
     s1+=8472.0;
    } else {
     s0+=78.0;
     s1+=1225.0;
    }
   }
  }
 }
}
if(i13<1.0039854049682617){
 if(i9<1.0451740026474){
  if(i3<0.08262783288955688){
   if(i32<1.0557184219360352){
    s0+=41942.0;
   } else {
    if(i44<-0.0011604726314544678){
     s0+=1778.0;
     s1+=376.0;
    } else {
     s0+=17383.0;
     s1+=458.0;
    }
   }
  } else {
   if(i22<-1.33514404296875e-05){
    if(i5<-3.3527612686157227e-05){
     s0+=311.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.0004354011616669595){
     s0+=74.0;
     s1+=3.0;
    } else {
     s0+=108.0;
     s1+=287.0;
    }
   }
  }
 } else {
  if(i34<0.025043383240699768){
   if(i6<-2.271568519063294e-05){
    if(i57<0.999919056892395){
     s0+=522.0;
     s1+=1107.0;
    } else {
     s0+=1395.0;
     s1+=769.0;
    }
   } else {
    if(i17<1.0005438327789307){
     s0+=5364.0;
     s1+=646.0;
    } else {
     s0+=501.0;
     s1+=327.0;
    }
   }
  } else {
   if(i11<-0.00026667118072509766){
    if(i31<0.06081487238407135){
     s0+=323.0;
     s1+=22.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.08060958981513977){
     s0+=387.0;
     s1+=214.0;
    } else {
     s0+=111.0;
     s1+=2940.0;
    }
   }
  }
 }
} else {
 if(i6<-4.35077199654188e-05){
  if(i4<0.9995023608207703){
   if(i14<0.9996916055679321){
    if(i8<0.13702404499053955){
     s0+=98.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i48<0.00013277289690449834){
    if(i70<0.00011111886851722375){
     s0+=11.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i23<1.0428509712219238){
     s0+=2.0;
    } else {
     s0+=59.0;
     s1+=9924.0;
    }
   }
  }
 } else {
  if(i11<0.0005910992622375488){
   if(i3<0.18738535046577454){
    if(i55<0.0006955321878194809){
     s0+=615.0;
     s1+=13.0;
    } else {
     s0+=7.0;
     s1+=19.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   s1+=83.0;
  }
 }
}
if(i7<1.0081526041030884){
 if(i2<0.0005736351013183594){
  if(i25<1.0401114225387573){
   if(i68<0.025053732097148895){
    if(i50<0.0027532954700291157){
     s0+=53071.0;
     s1+=356.0;
    } else {
     s0+=191.0;
     s1+=147.0;
    }
   } else {
    if(i28<1.2298874855041504){
     s0+=3891.0;
     s1+=1503.0;
    } else {
     s0+=8647.0;
     s1+=329.0;
    }
   }
  } else {
   if(i34<0.0402272492647171){
    if(i6<-1.864689329522662e-05){
     s0+=901.0;
     s1+=725.0;
    } else {
     s0+=2486.0;
     s1+=246.0;
    }
   } else {
    if(i1<0.10293382406234741){
     s0+=73.0;
     s1+=40.0;
    } else {
     s1+=498.0;
    }
   }
  }
 } else {
  if(i57<0.9987821578979492){
   s0+=118.0;
  } else {
   if(i15<-0.000647127628326416){
    if(i42<1.3213332891464233){
     s0+=36.0;
     s1+=26.0;
    } else {
     s0+=114.0;
     s1+=628.0;
    }
   } else {
    if(i7<1.002943992614746){
     s0+=7.0;
     s1+=1151.0;
    } else {
     s0+=33.0;
     s1+=510.0;
    }
   }
  }
 }
} else {
 if(i32<1.259662389755249){
  if(i3<0.08057457208633423){
   if(i39<0.0011223708279430866){
    if(i4<1.0008959770202637){
     s0+=33.0;
     s1+=41.0;
    } else {
     s1+=438.0;
    }
   } else {
    if(i22<2.6524066925048828e-05){
     s0+=824.0;
     s1+=83.0;
    } else {
     s0+=25.0;
     s1+=76.0;
    }
   }
  } else {
   if(i11<0.0004393458366394043){
    if(i44<0.005580782890319824){
     s0+=79.0;
     s1+=1268.0;
    } else {
     s0+=293.0;
     s1+=259.0;
    }
   } else {
    if(i71<2.935574684670428e-06){
     s0+=7.0;
     s1+=2229.0;
    } else {
     s0+=60.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i0<0.09205088019371033){
   if(i48<0.0016718795523047447){
    if(i56<-4.9670365115161985e-05){
     s0+=70.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i69<0.0004517321940511465){
     s0+=1.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i14<0.9981065988540649){
    s0+=22.0;
   } else {
    if(i14<1.0002806186676025){
     s0+=2.0;
     s1+=225.0;
    } else {
     s1+=6087.0;
    }
   }
  }
 }
}
if(i3<0.08250191807746887){
 if(i71<-8.010832061700057e-06){
  if(i21<0.0009816752281039953){
   s0+=2.0;
  } else {
   if(i13<1.0031543970108032){
    if(i60<0.2685622274875641){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=223.0;
   }
  }
 } else {
  if(i63<0.0075721750035882){
   if(i23<1.0475225448608398){
    if(i50<0.0016715090023353696){
     s0+=53273.0;
     s1+=171.0;
    } else {
     s0+=1100.0;
     s1+=107.0;
    }
   } else {
    if(i2<0.0004813671112060547){
     s0+=11125.0;
     s1+=961.0;
    } else {
     s0+=241.0;
     s1+=357.0;
    }
   }
  } else {
   if(i17<1.0005316734313965){
    if(i14<0.998252272605896){
     s0+=1025.0;
     s1+=4.0;
    } else {
     s0+=1933.0;
     s1+=558.0;
    }
   } else {
    if(i11<0.00043576955795288086){
     s0+=276.0;
     s1+=203.0;
    } else {
     s0+=99.0;
     s1+=412.0;
    }
   }
  }
 }
} else {
 if(i36<-0.00013768672943115234){
  if(i35<1.0649884939193726){
   if(i2<-0.0005072355270385742){
    s0+=680.0;
   } else {
    if(i37<1.1326812505722046){
     s0+=57.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=58.0;
    }
   }
  } else {
   if(i33<0.006342888344079256){
    s0+=1.0;
   } else {
    s1+=90.0;
   }
  }
 } else {
  if(i4<1.00185227394104){
   if(i41<0.05370795726776123){
    if(i1<0.0643899142742157){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=1736.0;
    }
   } else {
    if(i3<0.12541833519935608){
     s0+=851.0;
     s1+=271.0;
    } else {
     s0+=298.0;
     s1+=1163.0;
    }
   }
  } else {
   if(i0<0.1316651701927185){
    if(i45<0.01548093557357788){
     s0+=21.0;
     s1+=1537.0;
    } else {
     s0+=89.0;
     s1+=67.0;
    }
   } else {
    if(i15<0.00015079975128173828){
     s0+=15.0;
     s1+=925.0;
    } else {
     s0+=2.0;
     s1+=8226.0;
    }
   }
  }
 }
}
if(i8<0.07235640287399292){
 if(i4<1.0024782419204712){
  if(i32<1.0556960105895996){
   if(i60<0.0992175042629242){
    s0+=42408.0;
   } else {
    if(i56<-2.682640297280159e-05){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=541.0;
    }
   }
  } else {
   if(i11<-0.0001112222671508789){
    if(i28<1.100754976272583){
     s0+=1552.0;
     s1+=324.0;
    } else {
     s0+=13321.0;
     s1+=199.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=2244.0;
     s1+=1489.0;
    } else {
     s0+=8767.0;
     s1+=669.0;
    }
   }
  }
 } else {
  if(i4<1.0041346549987793){
   if(i42<1.2454195022583008){
    if(i23<1.0365266799926758){
     s0+=2.0;
    } else {
     s1+=341.0;
    }
   } else {
    if(i21<0.0069145020097494125){
     s0+=197.0;
     s1+=9.0;
    } else {
     s0+=18.0;
     s1+=76.0;
    }
   }
  } else {
   if(i18<-0.00042694807052612305){
    s0+=6.0;
   } else {
    if(i13<1.0008375644683838){
     s0+=6.0;
     s1+=46.0;
    } else {
     s0+=3.0;
     s1+=1435.0;
    }
   }
  }
 }
} else {
 if(i14<0.9988356828689575){
  if(i41<0.050962984561920166){
   if(i5<-6.443262100219727e-05){
    if(i21<0.005474178120493889){
     s0+=16.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i38<0.0008492094348184764){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   }
  } else {
   if(i54<0.0008457738440483809){
    if(i43<-9.051245797309093e-06){
     s0+=34.0;
     s1+=13.0;
    } else {
     s0+=501.0;
    }
   } else {
    if(i56<8.566508768126369e-06){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=36.0;
    }
   }
  }
 } else {
  if(i3<0.1184200644493103){
   if(i25<1.049032211303711){
    if(i15<-0.002055436372756958){
     s0+=108.0;
     s1+=57.0;
    } else {
     s0+=147.0;
     s1+=805.0;
    }
   } else {
    if(i13<1.0029029846191406){
     s0+=716.0;
     s1+=204.0;
    } else {
     s0+=68.0;
     s1+=193.0;
    }
   }
  } else {
   if(i13<1.0021950006484985){
    if(i33<0.0006418760749511421){
     s0+=205.0;
     s1+=78.0;
    } else {
     s0+=219.0;
     s1+=2641.0;
    }
   } else {
    if(i15<0.0014001131057739258){
     s0+=46.0;
     s1+=1568.0;
    } else {
     s1+=6865.0;
    }
   }
  }
 }
}
if(i6<-6.939917511772364e-05){
 if(i0<0.046966224908828735){
  if(i5<1.990795135498047e-05){
   if(i48<0.00655121635645628){
    if(i37<1.2454195022583008){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=687.0;
     s1+=14.0;
    }
   } else {
    if(i61<-1.0041359928436577e-05){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i62<0.0021442770957946777){
    if(i12<0.9929331541061401){
     s0+=74.0;
     s1+=56.0;
    } else {
     s0+=6.0;
     s1+=198.0;
    }
   } else {
    if(i21<0.007130005396902561){
     s0+=98.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i4<0.9939323663711548){
   if(i53<-0.0026804208755493164){
    s1+=7.0;
   } else {
    s0+=77.0;
   }
  } else {
   if(i14<0.9973943829536438){
    s0+=33.0;
   } else {
    if(i12<0.9977936744689941){
     s0+=147.0;
     s1+=1217.0;
    } else {
     s0+=61.0;
     s1+=10340.0;
    }
   }
  }
 }
} else {
 if(i10<1.0410094261169434){
  if(i62<-0.0022295713424682617){
   if(i32<1.1792536973953247){
    if(i32<1.067420482635498){
     s0+=1171.0;
     s1+=52.0;
    } else {
     s0+=616.0;
     s1+=772.0;
    }
   } else {
    if(i27<0.06312808394432068){
     s0+=2499.0;
     s1+=53.0;
    } else {
     s0+=9.0;
     s1+=27.0;
    }
   }
  } else {
   if(i9<1.042891263961792){
    if(i49<1.0005528926849365){
     s0+=53359.0;
     s1+=203.0;
    } else {
     s0+=2508.0;
     s1+=140.0;
    }
   } else {
    if(i17<1.000834584236145){
     s0+=2305.0;
     s1+=247.0;
    } else {
     s0+=202.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i14<0.9989227056503296){
   if(i33<0.0017090782057493925){
    if(i66<0.9998669624328613){
     s0+=1627.0;
     s1+=3.0;
    } else {
     s0+=119.0;
     s1+=22.0;
    }
   } else {
    if(i54<0.00025052280398085713){
     s0+=407.0;
     s1+=2.0;
    } else {
     s0+=77.0;
     s1+=53.0;
    }
   }
  } else {
   if(i47<0.0002943938015960157){
    s0+=943.0;
   } else {
    if(i33<0.0020974904764443636){
     s0+=2031.0;
     s1+=2783.0;
    } else {
     s0+=2020.0;
     s1+=775.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i72<0.174699068069458){
  if(i4<1.00246000289917){
   if(i58<0.031509608030319214){
    if(i65<0.0008029270684346557){
     s0+=57993.0;
     s1+=609.0;
    } else {
     s0+=1905.0;
     s1+=448.0;
    }
   } else {
    if(i1<0.0663367509841919){
     s0+=8218.0;
     s1+=734.0;
    } else {
     s0+=1243.0;
     s1+=1752.0;
    }
   }
  } else {
   if(i30<0.00017003003449644893){
    if(i62<-0.0005130171775817871){
     s0+=31.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i3<0.05317088961601257){
     s0+=55.0;
     s1+=160.0;
    } else {
     s0+=69.0;
     s1+=1134.0;
    }
   }
  }
 } else {
  if(i12<0.9598689675331116){
   if(i4<0.9964954853057861){
    s0+=209.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i47<0.0031186770647764206){
    s0+=2.0;
   } else {
    s1+=1191.0;
   }
  }
 }
} else {
 if(i0<0.07580456137657166){
  if(i64<0.001834571361541748){
   if(i37<1.1070735454559326){
    if(i13<0.9981368780136108){
     s0+=29.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=522.0;
    }
   } else {
    if(i43<-1.755381890689023e-05){
     s0+=4.0;
     s1+=158.0;
    } else {
     s0+=360.0;
     s1+=33.0;
    }
   }
  } else {
   if(i14<1.0029014348983765){
    if(i70<0.0005996404215693474){
     s0+=562.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i6<-4.214343425701372e-05){
   if(i26<1.0014431476593018){
    if(i8<0.13184204697608948){
     s0+=23.0;
     s1+=80.0;
    } else {
     s0+=7.0;
     s1+=606.0;
    }
   } else {
    if(i18<-1.7821788787841797e-05){
     s0+=4.0;
     s1+=218.0;
    } else {
     s1+=8796.0;
    }
   }
  } else {
   if(i36<2.5957822799682617e-05){
    if(i23<1.2563661336898804){
     s0+=62.0;
     s1+=421.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i32<1.108748435974121){
     s0+=13.0;
     s1+=103.0;
    } else {
     s0+=295.0;
     s1+=86.0;
    }
   }
  }
 }
}
if(i8<0.07185176014900208){
 if(i2<0.0005682110786437988){
  if(i9<1.0451608896255493){
   if(i50<0.0015697807539254427){
    if(i0<0.08038327097892761){
     s0+=58033.0;
     s1+=427.0;
    } else {
     s0+=48.0;
     s1+=63.0;
    }
   } else {
    if(i4<0.9953665733337402){
     s0+=1797.0;
     s1+=2.0;
    } else {
     s0+=1945.0;
     s1+=390.0;
    }
   }
  } else {
   if(i20<0.016906850039958954){
    if(i1<0.08230835199356079){
     s0+=5102.0;
     s1+=437.0;
    } else {
     s0+=28.0;
     s1+=223.0;
    }
   } else {
    if(i32<1.1476502418518066){
     s0+=484.0;
     s1+=947.0;
    } else {
     s0+=1403.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i32<1.0533727407455444){
   s0+=106.0;
  } else {
   if(i21<0.0018068135250359774){
    if(i37<1.1857318878173828){
     s1+=17.0;
    } else {
     s0+=100.0;
     s1+=4.0;
    }
   } else {
    if(i4<1.0042028427124023){
     s0+=122.0;
     s1+=516.0;
    } else {
     s0+=13.0;
     s1+=1354.0;
    }
   }
  }
 }
} else {
 if(i0<0.11594927310943604){
  if(i40<0.04513385891914368){
   if(i22<-1.4483928680419922e-05){
    s0+=34.0;
   } else {
    if(i4<0.994473934173584){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=119.0;
     s1+=988.0;
    }
   }
  } else {
   if(i5<7.11679458618164e-05){
    if(i42<1.1034480333328247){
     s0+=268.0;
     s1+=195.0;
    } else {
     s0+=873.0;
     s1+=85.0;
    }
   } else {
    if(i44<0.006326019763946533){
     s0+=5.0;
     s1+=116.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i11<-0.00039246678352355957){
   if(i66<1.0001187324523926){
    s0+=191.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i47<0.0011682715266942978){
    if(i27<0.11455291509628296){
     s0+=6.0;
     s1+=188.0;
    } else {
     s0+=185.0;
     s1+=8.0;
    }
   } else {
    if(i15<9.262561798095703e-05){
     s0+=233.0;
     s1+=2324.0;
    } else {
     s0+=20.0;
     s1+=8554.0;
    }
   }
  }
 }
}
if(i12<1.0058752298355103){
 if(i1<0.08241268992424011){
  if(i46<0.0003127918462269008){
   if(i24<1.0112566947937012){
    if(i65<0.0007267207838594913){
     s0+=47241.0;
     s1+=63.0;
    } else {
     s0+=242.0;
     s1+=30.0;
    }
   } else {
    if(i16<1.007166862487793){
     s0+=8.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i2<0.0002956986427307129){
    if(i47<0.0008785373065620661){
     s0+=5543.0;
     s1+=1156.0;
    } else {
     s0+=15508.0;
     s1+=503.0;
    }
   } else {
    if(i45<0.005359470844268799){
     s0+=136.0;
     s1+=576.0;
    } else {
     s0+=179.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i21<0.005798663012683392){
   if(i40<0.04903164505958557){
    if(i13<0.9900510311126709){
     s0+=96.0;
     s1+=13.0;
    } else {
     s0+=81.0;
     s1+=1227.0;
    }
   } else {
    if(i40<0.0587390661239624){
     s0+=210.0;
     s1+=196.0;
    } else {
     s0+=1070.0;
     s1+=268.0;
    }
   }
  } else {
   if(i57<1.0003823041915894){
    if(i22<-1.913309097290039e-05){
     s0+=4.0;
    } else {
     s0+=42.0;
     s1+=2445.0;
    }
   } else {
    if(i60<0.20837950706481934){
     s0+=78.0;
     s1+=109.0;
    } else {
     s0+=9.0;
     s1+=290.0;
    }
   }
  }
 }
} else {
 if(i6<-4.401014666655101e-05){
  if(i31<0.0001922676747199148){
   if(i75<5.302063800627366e-05){
    s1+=17.0;
   } else {
    s0+=27.0;
   }
  } else {
   if(i43<-3.0263358894444536e-06){
    if(i3<0.05833202600479126){
     s0+=31.0;
     s1+=174.0;
    } else {
     s0+=16.0;
     s1+=9666.0;
    }
   } else {
    if(i71<2.7874953048012685e-06){
     s1+=3.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i1<0.08120658993721008){
   if(i38<0.0012189849512651563){
    if(i21<0.0016281291609629989){
     s0+=6.0;
    } else {
     s1+=28.0;
    }
   } else {
    s0+=554.0;
   }
  } else {
   if(i24<1.0468189716339111){
    if(i23<1.2604451179504395){
     s0+=25.0;
     s1+=195.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i21<0.003166212234646082){
     s0+=95.0;
     s1+=3.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i4<1.0024954080581665){
  if(i9<1.0436501502990723){
   if(i30<0.0002991149667650461){
    if(i46<0.0003135048900730908){
     s0+=44966.0;
     s1+=50.0;
    } else {
     s0+=8542.0;
     s1+=307.0;
    }
   } else {
    if(i12<0.9844992160797119){
     s0+=4698.0;
     s1+=58.0;
    } else {
     s0+=3002.0;
     s1+=575.0;
    }
   }
  } else {
   if(i3<0.07787096500396729){
    if(i29<0.9943966865539551){
     s0+=1075.0;
     s1+=369.0;
    } else {
     s0+=2528.0;
     s1+=195.0;
    }
   } else {
    if(i20<0.015603692270815372){
     s0+=78.0;
     s1+=99.0;
    } else {
     s0+=40.0;
     s1+=399.0;
    }
   }
  }
 } else {
  if(i19<1.0043866634368896){
   if(i60<0.021218564361333847){
    if(i21<0.002200268441811204){
     s0+=11.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i30<0.00016888932441361248){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=422.0;
    }
   }
  } else {
   if(i43<-1.4082144843996502e-05){
    if(i21<0.001315203495323658){
     s0+=2.0;
    } else {
     s1+=253.0;
    }
   } else {
    if(i10<1.0440213680267334){
     s0+=106.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i1<0.0961209237575531){
  if(i4<1.0020828247070312){
   if(i32<1.1036889553070068){
    if(i34<0.012403067201375961){
     s0+=1231.0;
     s1+=221.0;
    } else {
     s0+=149.0;
     s1+=434.0;
    }
   } else {
    if(i54<0.0013761215377599){
     s0+=3186.0;
     s1+=195.0;
    } else {
     s0+=79.0;
     s1+=129.0;
    }
   }
  } else {
   if(i62<0.0049059391021728516){
    if(i13<1.0050729513168335){
     s0+=149.0;
     s1+=285.0;
    } else {
     s0+=16.0;
     s1+=679.0;
    }
   } else {
    if(i42<1.2388319969177246){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=98.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i22<-1.6421079635620117e-05){
   if(i71<4.320653169997968e-05){
    if(i70<5.992316437186673e-05){
     s1+=1.0;
    } else {
     s0+=261.0;
    }
   } else {
    if(i59<0.04920884966850281){
     s1+=6.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i6<-1.3547796697821468e-05){
    if(i3<0.12466147541999817){
     s0+=236.0;
     s1+=1151.0;
    } else {
     s0+=185.0;
     s1+=11119.0;
    }
   } else {
    if(i57<1.0000582933425903){
     s0+=364.0;
     s1+=97.0;
    } else {
     s0+=16.0;
     s1+=118.0;
    }
   }
  }
 }
}
if(i6<-8.167879423126578e-05){
 if(i18<-0.00039952993392944336){
  if(i48<0.006284976378083229){
   if(i40<0.09513822197914124){
    if(i1<0.11530542373657227){
     s0+=474.0;
     s1+=10.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i46<0.0042501152493059635){
     s0+=2.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i13<0.9810174703598022){
    s0+=4.0;
   } else {
    if(i12<0.9481430053710938){
     s0+=7.0;
    } else {
     s1+=91.0;
    }
   }
  }
 } else {
  if(i2<2.7567148208618164e-05){
   if(i72<0.05170932412147522){
    if(i27<0.10302454233169556){
     s0+=217.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.9768581390380859){
     s0+=4.0;
    } else {
     s1+=183.0;
    }
   }
  } else {
   if(i1<0.04448118805885315){
    if(i43<-2.2862073819851503e-05){
     s0+=52.0;
     s1+=135.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i3<0.13121002912521362){
     s0+=77.0;
     s1+=1248.0;
    } else {
     s0+=13.0;
     s1+=9243.0;
    }
   }
  }
 }
} else {
 if(i25<1.0398966073989868){
  if(i3<0.08218586444854736){
   if(i5<4.175305366516113e-05){
    if(i33<0.0003529550158418715){
     s0+=36155.0;
     s1+=13.0;
    } else {
     s0+=29281.0;
     s1+=1611.0;
    }
   } else {
    if(i43<-1.4686575013911352e-05){
     s0+=25.0;
     s1+=305.0;
    } else {
     s0+=142.0;
     s1+=29.0;
    }
   }
  } else {
   if(i22<-1.4960765838623047e-05){
    if(i19<0.974189043045044){
     s0+=7.0;
     s1+=5.0;
    } else {
     s0+=361.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.045029640197754){
     s0+=90.0;
     s1+=19.0;
    } else {
     s0+=55.0;
     s1+=1237.0;
    }
   }
  }
 } else {
  if(i13<1.0014140605926514){
   if(i8<0.0915931761264801){
    if(i6<-1.4657767678727396e-05){
     s0+=946.0;
     s1+=579.0;
    } else {
     s0+=1997.0;
     s1+=114.0;
    }
   } else {
    if(i6<-1.159461317001842e-05){
     s0+=305.0;
     s1+=987.0;
    } else {
     s0+=518.0;
     s1+=93.0;
    }
   }
  } else {
   if(i21<0.002822686918079853){
    if(i23<1.0733892917633057){
     s0+=25.0;
     s1+=163.0;
    } else {
     s0+=288.0;
     s1+=65.0;
    }
   } else {
    if(i66<1.0018396377563477){
     s0+=26.0;
     s1+=950.0;
    } else {
     s0+=26.0;
     s1+=15.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i5<4.178285598754883e-05){
  if(i31<0.00030667014652863145){
   if(i10<1.0483667850494385){
    if(i4<1.002469539642334){
     s0+=53101.0;
     s1+=237.0;
    } else {
     s0+=45.0;
     s1+=39.0;
    }
   } else {
    if(i29<1.0077717304229736){
     s0+=258.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=58.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i47<0.0004804152704309672){
     s0+=2592.0;
     s1+=153.0;
    } else {
     s0+=948.0;
     s1+=1163.0;
    }
   } else {
    if(i5<2.0444393157958984e-05){
     s0+=11501.0;
     s1+=354.0;
    } else {
     s0+=301.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i51<-0.008261919021606445){
   if(i46<0.00023471663007512689){
    s0+=25.0;
   } else {
    if(i21<0.0014120468404144049){
     s0+=22.0;
    } else {
     s0+=62.0;
     s1+=739.0;
    }
   }
  } else {
   if(i12<1.0002490282058716){
    if(i19<0.9830975532531738){
     s0+=26.0;
     s1+=30.0;
    } else {
     s0+=250.0;
     s1+=2.0;
    }
   } else {
    if(i38<0.0017795211169868708){
     s0+=9.0;
     s1+=152.0;
    } else {
     s0+=96.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i18<6.16908073425293e-05){
  if(i11<-0.00038933753967285156){
   if(i6<-3.8861231587361544e-05){
    if(i57<0.9997302293777466){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i47<0.003881853073835373){
     s0+=407.0;
    } else {
     s0+=26.0;
     s1+=6.0;
    }
   }
  } else {
   if(i34<0.024340858682990074){
    if(i59<0.03651905059814453){
     s0+=348.0;
     s1+=1246.0;
    } else {
     s0+=633.0;
     s1+=249.0;
    }
   } else {
    if(i21<0.0035895751789212227){
     s0+=121.0;
     s1+=68.0;
    } else {
     s0+=31.0;
     s1+=2429.0;
    }
   }
  }
 } else {
  if(i11<-0.0001798868179321289){
   if(i44<0.027979016304016113){
    s0+=23.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i43<-1.933175553858746e-06){
    if(i23<1.0409917831420898){
     s0+=6.0;
    } else {
     s0+=82.0;
     s1+=10200.0;
    }
   } else {
    if(i66<0.9998925924301147){
     s1+=19.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
}
if(i11<0.00043135881423950195){
 if(i8<0.07533395290374756){
  if(i7<1.008097529411316){
   if(i0<0.0775662362575531){
    if(i65<0.0007554096519015729){
     s0+=59788.0;
     s1+=685.0;
    } else {
     s0+=7284.0;
     s1+=939.0;
    }
   } else {
    if(i14<0.9986215829849243){
     s0+=126.0;
     s1+=1.0;
    } else {
     s0+=64.0;
     s1+=424.0;
    }
   }
  } else {
   if(i31<0.001426928211003542){
    if(i38<0.0015825220616534352){
     s0+=50.0;
     s1+=441.0;
    } else {
     s0+=320.0;
     s1+=185.0;
    }
   } else {
    if(i5<5.3882598876953125e-05){
     s0+=395.0;
     s1+=14.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i21<0.004687605891376734){
   if(i69<-0.023269781842827797){
    if(i38<0.00518166646361351){
     s0+=674.0;
     s1+=26.0;
    } else {
     s0+=107.0;
     s1+=163.0;
    }
   } else {
    if(i0<0.10798805952072144){
     s0+=475.0;
     s1+=235.0;
    } else {
     s0+=43.0;
     s1+=676.0;
    }
   }
  } else {
   if(i2<-0.0007522404193878174){
    if(i66<0.9998680353164673){
     s0+=81.0;
    } else {
     s0+=28.0;
     s1+=122.0;
    }
   } else {
    if(i24<1.0032135248184204){
     s0+=19.0;
     s1+=384.0;
    } else {
     s0+=5.0;
     s1+=1444.0;
    }
   }
  }
 }
} else {
 if(i15<0.00046563148498535156){
  if(i3<0.11264151334762573){
   if(i64<-0.0008570849895477295){
    if(i45<-0.0018693506717681885){
     s0+=233.0;
     s1+=475.0;
    } else {
     s0+=188.0;
     s1+=14.0;
    }
   } else {
    if(i66<1.0024628639221191){
     s0+=583.0;
     s1+=246.0;
    } else {
     s0+=595.0;
     s1+=8.0;
    }
   }
  } else {
   if(i51<0.09492683410644531){
    if(i68<0.0727047324180603){
     s0+=18.0;
     s1+=194.0;
    } else {
     s0+=3.0;
     s1+=961.0;
    }
   } else {
    if(i1<0.20460370182991028){
     s0+=82.0;
     s1+=21.0;
    } else {
     s0+=6.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i6<-4.330423689680174e-05){
   s1+=8733.0;
  } else {
   if(i42<1.2392117977142334){
    if(i57<0.9995484352111816){
     s0+=34.0;
    } else {
     s1+=79.0;
    }
   } else {
    s0+=91.0;
   }
  }
 }
}
if(i2<0.0005473494529724121){
 if(i27<0.06520426273345947){
  if(i30<0.00031146517721936107){
   if(i12<1.004119634628296){
    if(i8<0.07295125722885132){
     s0+=56011.0;
     s1+=516.0;
    } else {
     s0+=50.0;
     s1+=67.0;
    }
   } else {
    if(i3<0.06538790464401245){
     s0+=636.0;
     s1+=35.0;
    } else {
     s0+=43.0;
     s1+=173.0;
    }
   }
  } else {
   if(i0<0.07828515768051147){
    if(i26<0.9744479060173035){
     s0+=5035.0;
     s1+=86.0;
    } else {
     s0+=6639.0;
     s1+=1400.0;
    }
   } else {
    if(i5<-5.3375959396362305e-05){
     s0+=63.0;
     s1+=10.0;
    } else {
     s0+=43.0;
     s1+=1177.0;
    }
   }
  }
 } else {
  if(i21<0.005198374390602112){
   if(i28<1.255998969078064){
    if(i38<0.004848787561058998){
     s0+=737.0;
     s1+=424.0;
    } else {
     s1+=275.0;
    }
   } else {
    if(i33<0.004989856854081154){
     s0+=846.0;
     s1+=35.0;
    } else {
     s0+=126.0;
     s1+=125.0;
    }
   }
  } else {
   if(i3<0.10509806871414185){
    if(i18<-0.00010204315185546875){
     s0+=131.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i14<0.9978760480880737){
     s0+=37.0;
    } else {
     s0+=38.0;
     s1+=1138.0;
    }
   }
  }
 }
} else {
 if(i38<0.00034341710852459073){
  s0+=195.0;
 } else {
  if(i6<-4.40535914094653e-05){
   if(i56<-0.000545836053788662){
    if(i56<-0.0006453028181567788){
     s1+=7151.0;
    } else {
     s0+=8.0;
     s1+=428.0;
    }
   } else {
    if(i47<0.00324803008697927){
     s0+=2.0;
     s1+=1550.0;
    } else {
     s0+=264.0;
     s1+=2219.0;
    }
   }
  } else {
   if(i74<1.0021049976348877){
    if(i48<0.0016064706724137068){
     s0+=151.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i30<0.00015411913045682013){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=278.0;
    }
   }
  }
 }
}
if(i4<1.0023632049560547){
 if(i27<0.06198364496231079){
  if(i1<0.07640022039413452){
   if(i45<-0.00612872838973999){
    if(i32<1.203652262687683){
     s0+=1577.0;
     s1+=690.0;
    } else {
     s0+=2084.0;
     s1+=136.0;
    }
   } else {
    if(i72<0.01030631922185421){
     s0+=45903.0;
     s1+=166.0;
    } else {
     s0+=18502.0;
     s1+=938.0;
    }
   }
  } else {
   if(i14<0.9984124302864075){
    if(i33<0.00702701136469841){
     s0+=127.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i2<-0.0008140206336975098){
     s0+=61.0;
     s1+=18.0;
    } else {
     s0+=82.0;
     s1+=1581.0;
    }
   }
  }
 } else {
  if(i3<0.10917219519615173){
   if(i43<-2.6331663320888765e-06){
    if(i41<0.04871729016304016){
     s0+=33.0;
     s1+=77.0;
    } else {
     s0+=753.0;
     s1+=162.0;
    }
   } else {
    if(i50<0.019946353510022163){
     s0+=695.0;
     s1+=21.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i6<-1.1286124390608165e-05){
    if(i3<0.23196670413017273){
     s0+=285.0;
     s1+=1012.0;
    } else {
     s0+=21.0;
     s1+=944.0;
    }
   } else {
    if(i69<-0.019576670601963997){
     s0+=446.0;
     s1+=66.0;
    } else {
     s0+=34.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i46<0.00019345380133017898){
  if(i21<0.001298511284403503){
   s0+=94.0;
  } else {
   s1+=3.0;
  }
 } else {
  if(i1<0.06510257720947266){
   if(i67<0.9987919330596924){
    if(i50<0.0019519053166732192){
     s0+=17.0;
     s1+=16.0;
    } else {
     s0+=29.0;
     s1+=393.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=11.0;
     s1+=124.0;
    } else {
     s0+=179.0;
     s1+=9.0;
    }
   }
  } else {
   if(i21<0.0024503744207322598){
    if(i4<1.0041815042495728){
     s0+=64.0;
     s1+=26.0;
    } else {
     s1+=198.0;
    }
   } else {
    if(i66<1.0057787895202637){
     s0+=72.0;
     s1+=10521.0;
    } else {
     s0+=9.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i16<1.0079784393310547){
 if(i8<0.08099564909934998){
  if(i0<0.0822540819644928){
   if(i4<1.0024776458740234){
    if(i36<-7.003545761108398e-05){
     s0+=34593.0;
     s1+=98.0;
    } else {
     s0+=33696.0;
     s1+=1869.0;
    }
   } else {
    if(i69<-0.010965565219521523){
     s0+=53.0;
     s1+=13.0;
    } else {
     s0+=54.0;
     s1+=496.0;
    }
   }
  } else {
   if(i59<0.02620375156402588){
    if(i42<1.0696015357971191){
     s0+=49.0;
    } else {
     s0+=15.0;
     s1+=574.0;
    }
   } else {
    if(i15<-0.0008110404014587402){
     s0+=87.0;
     s1+=16.0;
    } else {
     s0+=36.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i33<0.0049330564215779305){
   if(i51<0.07237312197685242){
    if(i14<0.9980583190917969){
     s0+=84.0;
    } else {
     s0+=131.0;
     s1+=744.0;
    }
   } else {
    if(i33<0.00188162038102746){
     s0+=376.0;
     s1+=34.0;
    } else {
     s0+=172.0;
     s1+=177.0;
    }
   }
  } else {
   if(i34<0.0242577213793993){
    if(i8<0.11543840169906616){
     s0+=108.0;
     s1+=93.0;
    } else {
     s0+=22.0;
     s1+=238.0;
    }
   } else {
    if(i23<1.0638914108276367){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=22.0;
     s1+=1886.0;
    }
   }
  }
 }
} else {
 if(i13<1.0049412250518799){
  if(i39<0.010173477232456207){
   if(i48<0.0016728386981412768){
    if(i8<0.05155476927757263){
     s0+=740.0;
     s1+=119.0;
    } else {
     s0+=801.0;
     s1+=592.0;
    }
   } else {
    if(i21<0.0043062991462647915){
     s0+=28.0;
     s1+=14.0;
    } else {
     s0+=5.0;
     s1+=813.0;
    }
   }
  } else {
   if(i11<-0.0004935264587402344){
    s0+=4.0;
   } else {
    if(i37<1.2527469396591187){
     s0+=3.0;
     s1+=9.0;
    } else {
     s1+=1012.0;
    }
   }
  }
 } else {
  if(i30<0.000147548271343112){
   if(i50<0.0013468704419210553){
    if(i6<-3.994868166046217e-05){
     s1+=22.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=31.0;
   }
  } else {
   if(i36<-0.00021764636039733887){
    if(i68<0.08729687333106995){
     s0+=19.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i5<6.097555160522461e-05){
     s0+=53.0;
     s1+=660.0;
    } else {
     s0+=2.0;
     s1+=7465.0;
    }
   }
  }
 }
}
if(i0<0.07771864533424377){
 if(i31<0.0003066366771236062){
  if(i17<1.003494381904602){
   if(i12<1.0046436786651611){
    if(i20<0.022908657789230347){
     s0+=52926.0;
     s1+=193.0;
    } else {
     s0+=488.0;
     s1+=56.0;
    }
   } else {
    if(i0<0.05777496099472046){
     s0+=466.0;
     s1+=51.0;
    } else {
     s0+=3.0;
     s1+=65.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i11<0.00030308961868286133){
     s0+=9.0;
    } else {
     s1+=126.0;
    }
   } else {
    s0+=64.0;
   }
  }
 } else {
  if(i28<1.100754976272583){
   if(i38<0.0005576815456151962){
    if(i33<0.0004192507767584175){
     s0+=2414.0;
     s1+=65.0;
    } else {
     s0+=215.0;
     s1+=196.0;
    }
   } else {
    if(i13<0.9938005208969116){
     s0+=365.0;
     s1+=8.0;
    } else {
     s0+=420.0;
     s1+=1538.0;
    }
   }
  } else {
   if(i7<1.0159742832183838){
    if(i51<-0.02487313747406006){
     s0+=1656.0;
     s1+=514.0;
    } else {
     s0+=10223.0;
     s1+=335.0;
    }
   } else {
    if(i12<1.0138654708862305){
     s0+=114.0;
     s1+=37.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i22<-1.3887882232666016e-05){
  if(i14<0.9988709092140198){
   if(i66<1.003513216972351){
    if(i48<0.0025099487975239754){
     s0+=428.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i57<1.0001187324523926){
    s1+=8.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i56<-0.00012410107592586428){
   if(i21<0.0017367787659168243){
    if(i15<0.0015206336975097656){
     s0+=341.0;
     s1+=110.0;
    } else {
     s1+=107.0;
    }
   } else {
    if(i4<1.0025426149368286){
     s0+=313.0;
     s1+=2964.0;
    } else {
     s0+=35.0;
     s1+=9301.0;
    }
   }
  } else {
   if(i44<0.003687262535095215){
    if(i37<1.066007137298584){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=130.0;
     s1+=1088.0;
    }
   } else {
    if(i43<-1.2572307241498493e-05){
     s0+=204.0;
     s1+=219.0;
    } else {
     s0+=283.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i26<1.006800889968872){
 if(i0<0.08162814378738403){
  if(i9<1.04337739944458){
   if(i62<-0.0021120011806488037){
    if(i32<1.166618824005127){
     s0+=1604.0;
     s1+=473.0;
    } else {
     s0+=2514.0;
     s1+=22.0;
    }
   } else {
    if(i58<0.02661413699388504){
     s0+=51931.0;
     s1+=115.0;
    } else {
     s0+=4374.0;
     s1+=183.0;
    }
   }
  } else {
   if(i2<0.0004520416259765625){
    if(i28<1.1013743877410889){
     s0+=2068.0;
     s1+=750.0;
    } else {
     s0+=4997.0;
     s1+=337.0;
    }
   } else {
    if(i34<0.02467021718621254){
     s0+=180.0;
     s1+=236.0;
    } else {
     s0+=5.0;
     s1+=181.0;
    }
   }
  }
 } else {
  if(i6<-1.0887548341997899e-05){
   if(i59<0.0358501672744751){
    if(i0<0.10069149732589722){
     s0+=117.0;
     s1+=467.0;
    } else {
     s0+=39.0;
     s1+=2686.0;
    }
   } else {
    if(i72<0.1064048483967781){
     s0+=365.0;
     s1+=345.0;
    } else {
     s0+=35.0;
     s1+=610.0;
    }
   }
  } else {
   if(i11<-0.00040227174758911133){
    s0+=340.0;
   } else {
    if(i27<0.06299543380737305){
     s0+=16.0;
     s1+=121.0;
    } else {
     s0+=437.0;
     s1+=147.0;
    }
   }
  }
 }
} else {
 if(i1<0.06459665298461914){
  if(i39<0.0008475446375086904){
   if(i5<1.436471939086914e-05){
    if(i1<0.06313905119895935){
     s0+=122.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.046106219291687){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=247.0;
    }
   }
  } else {
   if(i43<-2.835491977748461e-05){
    if(i6<-7.346286292886361e-05){
     s1+=49.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i69<0.003467937931418419){
     s0+=1368.0;
     s1+=26.0;
    } else {
     s0+=70.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i5<3.224611282348633e-05){
   if(i9<1.1507387161254883){
    if(i28<1.2607976198196411){
     s0+=78.0;
     s1+=825.0;
    } else {
     s0+=57.0;
     s1+=72.0;
    }
   } else {
    if(i20<0.045284029096364975){
     s0+=258.0;
     s1+=54.0;
    } else {
     s0+=27.0;
     s1+=231.0;
    }
   }
  } else {
   if(i6<-4.349312075646594e-05){
    if(i1<0.06519430875778198){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=8868.0;
    }
   } else {
    if(i48<0.0013516438193619251){
     s0+=23.0;
    } else {
     s1+=121.0;
    }
   }
  }
 }
}
if(i4<1.002378225326538){
 if(i10<1.0450963973999023){
  if(i1<0.08410564064979553){
   if(i44<-0.0015040040016174316){
    if(i2<-0.0003110170364379883){
     s0+=1947.0;
     s1+=168.0;
    } else {
     s0+=1191.0;
     s1+=422.0;
    }
   } else {
    if(i58<0.026429403573274612){
     s0+=54503.0;
     s1+=257.0;
    } else {
     s0+=7220.0;
     s1+=488.0;
    }
   }
  } else {
   if(i11<-0.0004769265651702881){
    if(i2<-0.0014815032482147217){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=93.0;
    }
   } else {
    if(i42<1.0724589824676514){
     s0+=14.0;
    } else {
     s0+=56.0;
     s1+=608.0;
    }
   }
  }
 } else {
  if(i0<0.09212127327919006){
   if(i70<0.0005597160779871047){
    if(i17<1.0005571842193604){
     s0+=2870.0;
     s1+=233.0;
    } else {
     s0+=402.0;
     s1+=214.0;
    }
   } else {
    if(i70<0.0010142745450139046){
     s0+=544.0;
     s1+=532.0;
    } else {
     s0+=815.0;
     s1+=102.0;
    }
   }
  } else {
   if(i14<0.99855637550354){
    if(i68<0.6072351932525635){
     s0+=285.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i56<-0.00012060166045557708){
     s0+=450.0;
     s1+=2496.0;
    } else {
     s0+=269.0;
     s1+=270.0;
    }
   }
  }
 }
} else {
 if(i2<0.0005484223365783691){
  if(i21<0.0016872761771082878){
   if(i75<3.7806996260769665e-05){
    s1+=8.0;
   } else {
    s0+=120.0;
   }
  } else {
   if(i71<-3.233822553738719e-06){
    if(i51<-0.0026186108589172363){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i7<1.0015273094177246){
     s0+=8.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i46<0.00019311215146444738){
   s0+=16.0;
  } else {
   if(i20<0.02765514887869358){
    if(i6<-4.3679225200321525e-05){
     s0+=117.0;
     s1+=2865.0;
    } else {
     s0+=134.0;
     s1+=170.0;
    }
   } else {
    if(i21<0.0026752324774861336){
     s0+=9.0;
     s1+=59.0;
    } else {
     s0+=34.0;
     s1+=8128.0;
    }
   }
  }
 }
}
if(i8<0.0700642466545105){
 if(i5<3.904104232788086e-05){
  if(i33<0.0003666051779873669){
   if(i57<1.0001341104507446){
    s0+=33113.0;
   } else {
    if(i16<1.006105899810791){
     s0+=3627.0;
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=9.0;
    }
   }
  } else {
   if(i10<1.0398929119110107){
    if(i28<1.100754976272583){
     s0+=4133.0;
     s1+=938.0;
    } else {
     s0+=22660.0;
     s1+=303.0;
    }
   } else {
    if(i39<0.0020172949880361557){
     s0+=1527.0;
     s1+=1107.0;
    } else {
     s0+=3190.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i23<1.0428509712219238){
   if(i54<0.0002099784032907337){
    s0+=260.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i44<0.0029744207859039307){
    if(i43<-1.4082144843996502e-05){
     s0+=98.0;
     s1+=1777.0;
    } else {
     s0+=101.0;
     s1+=98.0;
    }
   } else {
    if(i0<0.07355135679244995){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i22<-1.329183578491211e-05){
  if(i54<0.0012979131424799562){
   if(i38<0.005312846973538399){
    if(i70<6.957219738978893e-05){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=503.0;
     s1+=6.0;
    }
   } else {
    if(i14<0.9988054037094116){
     s0+=40.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i60<0.34303516149520874){
    if(i65<0.0019055779557675123){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i0<0.10199543833732605){
   if(i40<0.043946146965026855){
    if(i55<-0.0064807916060090065){
     s0+=67.0;
     s1+=22.0;
    } else {
     s0+=60.0;
     s1+=738.0;
    }
   } else {
    if(i55<-0.003991594538092613){
     s0+=589.0;
     s1+=18.0;
    } else {
     s0+=290.0;
     s1+=234.0;
    }
   }
  } else {
   if(i21<0.0016091465950012207){
    if(i69<-0.018920961767435074){
     s0+=267.0;
     s1+=43.0;
    } else {
     s0+=27.0;
     s1+=111.0;
    }
   } else {
    if(i33<0.0004504891694523394){
     s0+=18.0;
    } else {
     s0+=316.0;
     s1+=11480.0;
    }
   }
  }
 }
}
if(i4<1.0024782419204712){
 if(i0<0.07756328582763672){
  if(i3<0.06633421778678894){
   if(i50<0.0015185982920229435){
    if(i63<0.00895691104233265){
     s0+=58196.0;
     s1+=444.0;
    } else {
     s0+=467.0;
     s1+=95.0;
    }
   } else {
    if(i37<1.103413462638855){
     s0+=1651.0;
     s1+=595.0;
    } else {
     s0+=4637.0;
     s1+=305.0;
    }
   }
  } else {
   if(i58<0.027066878974437714){
    if(i6<-2.846090319508221e-05){
     s0+=228.0;
     s1+=119.0;
    } else {
     s0+=2668.0;
     s1+=74.0;
    }
   } else {
    if(i64<0.003818005323410034){
     s0+=665.0;
     s1+=476.0;
    } else {
     s0+=363.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i41<0.05683034658432007){
   if(i36<-0.0002617835998535156){
    s0+=73.0;
   } else {
    if(i46<0.00028304074658080935){
     s0+=17.0;
    } else {
     s0+=98.0;
     s1+=2120.0;
    }
   }
  } else {
   if(i20<0.040240250527858734){
    if(i45<0.0169985294342041){
     s0+=493.0;
     s1+=446.0;
    } else {
     s0+=850.0;
     s1+=195.0;
    }
   } else {
    if(i74<0.9977047443389893){
     s0+=124.0;
     s1+=63.0;
    } else {
     s0+=105.0;
     s1+=1000.0;
    }
   }
  }
 }
} else {
 if(i3<0.06269580125808716){
  if(i43<-1.417127077729674e-05){
   if(i24<1.0240437984466553){
    if(i53<0.0011164844036102295){
     s0+=43.0;
     s1+=426.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    s0+=12.0;
   }
  } else {
   if(i71<-7.959135473356582e-06){
    if(i12<1.0075364112854004){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i14<1.0022573471069336){
     s0+=165.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i22<4.559755325317383e-05){
   if(i1<0.12855765223503113){
    if(i62<0.008125156164169312){
     s0+=82.0;
     s1+=1131.0;
    } else {
     s0+=46.0;
     s1+=1.0;
    }
   } else {
    if(i21<0.002166754798963666){
     s0+=6.0;
     s1+=43.0;
    } else {
     s0+=9.0;
     s1+=4038.0;
    }
   }
  } else {
   if(i1<0.0844680666923523){
    if(i50<-0.0005186945199966431){
     s0+=6.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i70<0.00017148046754300594){
     s0+=3.0;
     s1+=82.0;
    } else {
     s1+=5460.0;
    }
   }
  }
 }
}
if(i0<0.0796835720539093){
 if(i13<1.0043950080871582){
  if(i1<0.0692034363746643){
   if(i50<0.001587721984833479){
    if(i14<1.0006418228149414){
     s0+=57443.0;
     s1+=415.0;
    } else {
     s0+=3137.0;
     s1+=258.0;
    }
   } else {
    if(i32<1.1916691064834595){
     s0+=2882.0;
     s1+=872.0;
    } else {
     s0+=3437.0;
     s1+=194.0;
    }
   }
  } else {
   if(i51<0.00463336706161499){
    if(i44<0.0031871795654296875){
     s0+=115.0;
     s1+=372.0;
    } else {
     s0+=82.0;
     s1+=5.0;
    }
   } else {
    if(i39<0.0018653766019269824){
     s0+=845.0;
     s1+=286.0;
    } else {
     s0+=702.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i17<1.0025198459625244){
   if(i3<0.058279603719711304){
    if(i38<0.0009205901878885925){
     s1+=20.0;
    } else {
     s0+=435.0;
     s1+=9.0;
    }
   } else {
    if(i53<-0.0006880760192871094){
     s1+=48.0;
    } else {
     s0+=54.0;
     s1+=41.0;
    }
   }
  } else {
   if(i31<0.0001640798436710611){
    if(i35<1.0081298351287842){
     s0+=21.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i45<0.010788559913635254){
     s0+=29.0;
     s1+=879.0;
    } else {
     s0+=24.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i1<0.10779157280921936){
  if(i64<0.002866387367248535){
   if(i45<0.01387721300125122){
    if(i4<0.9981139898300171){
     s0+=176.0;
     s1+=102.0;
    } else {
     s0+=120.0;
     s1+=1098.0;
    }
   } else {
    if(i31<0.0010792789980769157){
     s0+=10.0;
     s1+=15.0;
    } else {
     s0+=192.0;
     s1+=4.0;
    }
   }
  } else {
   if(i27<0.0642651617527008){
    if(i18<-0.00019818544387817383){
     s0+=18.0;
    } else {
     s0+=5.0;
     s1+=66.0;
    }
   } else {
    if(i63<0.0008939842227846384){
     s0+=269.0;
     s1+=9.0;
    } else {
     s0+=123.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i47<0.0031490554101765156){
   if(i46<0.0043180701322853565){
    if(i22<-1.6570091247558594e-05){
     s0+=98.0;
    } else {
     s0+=79.0;
     s1+=1645.0;
    }
   } else {
    if(i11<0.00042617321014404297){
     s0+=435.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   }
  } else {
   if(i34<0.02679578587412834){
    if(i45<0.025961190462112427){
     s0+=55.0;
     s1+=1774.0;
    } else {
     s0+=126.0;
     s1+=217.0;
    }
   } else {
    if(i21<0.0031722940038889647){
     s0+=44.0;
     s1+=81.0;
    } else {
     s0+=1.0;
     s1+=8760.0;
    }
   }
  }
 }
}
if(i0<0.07771864533424377){
 if(i50<0.0015127587830647826){
  if(i2<0.0006206631660461426){
   if(i72<0.013033218681812286){
    if(i4<1.0025357007980347){
     s0+=47978.0;
     s1+=229.0;
    } else {
     s0+=5.0;
     s1+=32.0;
    }
   } else {
    if(i9<1.0412344932556152){
     s0+=11210.0;
     s1+=227.0;
    } else {
     s0+=2873.0;
     s1+=587.0;
    }
   }
  } else {
   if(i4<1.0041816234588623){
    if(i47<0.0022741949651390314){
     s0+=62.0;
     s1+=131.0;
    } else {
     s0+=163.0;
     s1+=2.0;
    }
   } else {
    s1+=225.0;
   }
  }
 } else {
  if(i11<0.0005826354026794434){
   if(i13<0.9928200840950012){
    if(i51<-0.03782618045806885){
     s0+=485.0;
     s1+=54.0;
    } else {
     s0+=2307.0;
     s1+=22.0;
    }
   } else {
    if(i52<3.208408088539727e-05){
     s0+=2568.0;
     s1+=241.0;
    } else {
     s0+=1269.0;
     s1+=764.0;
    }
   }
  } else {
   if(i52<0.00015865433670114726){
    if(i9<1.0833278894424438){
     s0+=12.0;
     s1+=514.0;
    } else {
     s0+=23.0;
     s1+=148.0;
    }
   } else {
    if(i10<1.0862975120544434){
     s0+=228.0;
     s1+=49.0;
    } else {
     s0+=1.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3546939044317696e-05){
  if(i6<-4.153069312451407e-05){
   if(i18<-7.748603820800781e-06){
    if(i9<1.1222549676895142){
     s0+=259.0;
     s1+=668.0;
    } else {
     s0+=8.0;
     s1+=1290.0;
    }
   } else {
    if(i37<1.0585076808929443){
     s0+=14.0;
    } else {
     s0+=25.0;
     s1+=10333.0;
    }
   }
  } else {
   if(i55<-0.006193898618221283){
    if(i47<0.0038199322298169136){
     s0+=200.0;
     s1+=54.0;
    } else {
     s0+=140.0;
     s1+=183.0;
    }
   } else {
    if(i36<-0.0001456737518310547){
     s0+=39.0;
     s1+=1.0;
    } else {
     s0+=103.0;
     s1+=991.0;
    }
   }
  }
 } else {
  if(i11<-0.0004024505615234375){
   s0+=396.0;
  } else {
   if(i38<0.004845914430916309){
    if(i25<1.0388134717941284){
     s0+=37.0;
     s1+=154.0;
    } else {
     s0+=585.0;
     s1+=70.0;
    }
   } else {
    if(i47<0.004032800905406475){
     s1+=109.0;
    } else {
     s0+=63.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i29<1.0088505744934082){
 if(i1<0.08194559812545776){
  if(i4<1.0024628639221191){
   if(i62<-0.0022163987159729004){
    if(i37<1.1823735237121582){
     s0+=1927.0;
     s1+=801.0;
    } else {
     s0+=3790.0;
     s1+=219.0;
    }
   } else {
    if(i58<0.03271041810512543){
     s0+=57723.0;
     s1+=329.0;
    } else {
     s0+=4079.0;
     s1+=500.0;
    }
   }
  } else {
   if(i48<0.000899557548109442){
    if(i7<1.0111680030822754){
     s0+=88.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i12<0.9985259771347046){
     s0+=75.0;
     s1+=141.0;
    } else {
     s0+=6.0;
     s1+=477.0;
    }
   }
  }
 } else {
  if(i59<0.04086819291114807){
   if(i57<0.9993245601654053){
    s0+=98.0;
   } else {
    if(i21<0.0013972367160022259){
     s0+=53.0;
     s1+=80.0;
    } else {
     s0+=145.0;
     s1+=3167.0;
    }
   }
  } else {
   if(i20<0.042141325771808624){
    if(i3<0.17676806449890137){
     s0+=467.0;
     s1+=101.0;
    } else {
     s0+=65.0;
     s1+=68.0;
    }
   } else {
    if(i56<-0.0001252452639164403){
     s0+=8.0;
     s1+=181.0;
    } else {
     s0+=56.0;
     s1+=48.0;
    }
   }
  }
 }
} else {
 if(i6<-4.216813977109268e-05){
  if(i11<-0.00039690732955932617){
   s0+=53.0;
  } else {
   if(i18<6.258487701416016e-06){
    if(i34<0.018082156777381897){
     s0+=163.0;
     s1+=92.0;
    } else {
     s0+=32.0;
     s1+=744.0;
    }
   } else {
    if(i8<0.056144267320632935){
     s0+=36.0;
     s1+=696.0;
    } else {
     s0+=8.0;
     s1+=8827.0;
    }
   }
  }
 } else {
  if(i70<0.0005775248864665627){
   if(i1<0.09636646509170532){
    if(i31<0.000538696302101016){
     s0+=454.0;
     s1+=99.0;
    } else {
     s0+=1037.0;
     s1+=11.0;
    }
   } else {
    if(i67<1.034611463546753){
     s0+=34.0;
     s1+=250.0;
    } else {
     s0+=470.0;
     s1+=147.0;
    }
   }
  } else {
   if(i16<1.0055866241455078){
    if(i21<0.003870649728924036){
     s0+=88.0;
    } else {
     s0+=4.0;
     s1+=37.0;
    }
   } else {
    if(i25<1.0191550254821777){
     s0+=11.0;
    } else {
     s0+=12.0;
     s1+=245.0;
    }
   }
  }
 }
}
if(i15<0.0007697939872741699){
 if(i6<-4.9365284212399274e-05){
  if(i2<-0.0001385509967803955){
   if(i0<0.08043593168258667){
    if(i8<0.041398078203201294){
     s0+=1241.0;
     s1+=29.0;
    } else {
     s0+=289.0;
     s1+=72.0;
    }
   } else {
    if(i5<-4.947185516357422e-06){
     s0+=26.0;
     s1+=294.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i23<1.1260349750518799){
    if(i55<-0.004300219006836414){
     s0+=282.0;
     s1+=199.0;
    } else {
     s0+=143.0;
     s1+=628.0;
    }
   } else {
    if(i0<0.026969611644744873){
     s0+=166.0;
     s1+=46.0;
    } else {
     s0+=54.0;
     s1+=2266.0;
    }
   }
  }
 } else {
  if(i23<1.0494916439056396){
   if(i65<0.0007366922218352556){
    if(i16<1.007272720336914){
     s0+=53223.0;
     s1+=162.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   } else {
    if(i23<1.040691614151001){
     s0+=2063.0;
     s1+=70.0;
    } else {
     s0+=612.0;
     s1+=198.0;
    }
   }
  } else {
   if(i0<0.06542569398880005){
    if(i37<1.103413462638855){
     s0+=2430.0;
     s1+=926.0;
    } else {
     s0+=7730.0;
     s1+=204.0;
    }
   } else {
    if(i25<1.084590196609497){
     s0+=1064.0;
     s1+=1836.0;
    } else {
     s0+=998.0;
     s1+=321.0;
    }
   }
  }
 }
} else {
 if(i0<0.05435681343078613){
  if(i43<-1.4428353097173385e-05){
   s1+=278.0;
  } else {
   if(i55<0.0006349979666993022){
    if(i51<-0.0321747362613678){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=541.0;
     s1+=1.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i5<-1.6391277313232422e-06){
   if(i3<0.19798246026039124){
    s0+=30.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i47<0.00387556292116642){
    if(i69<-0.03057537041604519){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=61.0;
     s1+=2052.0;
    }
   } else {
    s1+=7637.0;
   }
  }
 }
}
if(i2<0.0005474090576171875){
 if(i8<0.07196682691574097){
  if(i3<0.08241268992424011){
   if(i65<0.0007540961960330606){
    if(i17<1.00108802318573){
     s0+=57958.0;
     s1+=606.0;
    } else {
     s0+=2759.0;
     s1+=294.0;
    }
   } else {
    if(i47<0.0008683425839990377){
     s0+=1394.0;
     s1+=672.0;
    } else {
     s0+=5992.0;
     s1+=373.0;
    }
   }
  } else {
   if(i71<1.4252940673031844e-05){
    if(i4<0.9959306716918945){
     s0+=25.0;
    } else {
     s0+=61.0;
     s1+=696.0;
    }
   } else {
    if(i66<0.9977264404296875){
     s0+=233.0;
    } else {
     s0+=117.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i1<0.1092987060546875){
   if(i69<-0.01935393735766411){
    if(i29<0.9337756633758545){
     s1+=3.0;
    } else {
     s0+=485.0;
     s1+=7.0;
    }
   } else {
    if(i14<0.9987119436264038){
     s0+=201.0;
     s1+=15.0;
    } else {
     s0+=441.0;
     s1+=536.0;
    }
   }
  } else {
   if(i69<-0.024445945397019386){
    if(i33<0.0016895316075533628){
     s0+=433.0;
     s1+=8.0;
    } else {
     s0+=175.0;
     s1+=791.0;
    }
   } else {
    if(i40<0.09417730569839478){
     s0+=36.0;
     s1+=1421.0;
    } else {
     s0+=31.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i47<0.0003575368318706751){
  s0+=171.0;
 } else {
  if(i6<-4.353338590590283e-05){
   if(i15<6.896257400512695e-05){
    if(i34<0.02059723623096943){
     s0+=229.0;
     s1+=209.0;
    } else {
     s0+=15.0;
     s1+=1079.0;
    }
   } else {
    if(i24<0.9606698751449585){
     s0+=4.0;
     s1+=240.0;
    } else {
     s0+=4.0;
     s1+=9972.0;
    }
   }
  } else {
   if(i32<1.133939266204834){
    if(i52<0.0001000661650323309){
     s1+=180.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   } else {
    if(i18<0.000102996826171875){
     s0+=3.0;
     s1+=67.0;
    } else {
     s0+=148.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i4<1.00242018699646){
 if(i60<0.04849446937441826){
  if(i46<0.0003127918462269008){
   if(i35<1.0092394351959229){
    if(i24<1.012852430343628){
     s0+=46747.0;
     s1+=57.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i39<0.00026711641112342477){
     s0+=2.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i1<0.08282557129859924){
    if(i64<-0.0017318427562713623){
     s0+=189.0;
     s1+=214.0;
    } else {
     s0+=10404.0;
     s1+=441.0;
    }
   } else {
    if(i2<-0.0008691251277923584){
     s0+=56.0;
     s1+=1.0;
    } else {
     s0+=118.0;
     s1+=634.0;
    }
   }
  }
 } else {
  if(i10<1.0405302047729492){
   if(i4<1.0007929801940918){
    if(i0<0.06991872191429138){
     s0+=7911.0;
     s1+=510.0;
    } else {
     s0+=188.0;
     s1+=289.0;
    }
   } else {
    if(i30<0.00028674781788140535){
     s0+=36.0;
     s1+=10.0;
    } else {
     s0+=17.0;
     s1+=162.0;
    }
   }
  } else {
   if(i34<0.040238820016384125){
    if(i3<0.08935832977294922){
     s0+=3693.0;
     s1+=683.0;
    } else {
     s0+=1163.0;
     s1+=1691.0;
    }
   } else {
    if(i18<-0.0008111894130706787){
     s0+=34.0;
     s1+=8.0;
    } else {
     s0+=34.0;
     s1+=1170.0;
    }
   }
  }
 }
} else {
 if(i31<0.0001870676060207188){
  if(i43<-1.5581832485622726e-05){
   s1+=15.0;
  } else {
   s0+=100.0;
  }
 } else {
  if(i1<0.06511685252189636){
   if(i38<0.002435023430734873){
    if(i23<1.0396788120269775){
     s0+=7.0;
    } else {
     s1+=284.0;
    }
   } else {
    if(i70<0.0004640809784177691){
     s0+=138.0;
     s1+=30.0;
    } else {
     s0+=28.0;
     s1+=186.0;
    }
   }
  } else {
   if(i12<1.009016513824463){
    if(i21<0.002191412728279829){
     s0+=42.0;
     s1+=7.0;
    } else {
     s0+=96.0;
     s1+=2247.0;
    }
   } else {
    s1+=8562.0;
   }
  }
 }
}
if(i2<0.0005489885807037354){
 if(i31<0.0003066310891881585){
  if(i35<1.008410096168518){
   if(i62<-0.0046111345291137695){
    if(i37<1.0775264501571655){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i46<0.0002754438610281795){
     s0+=45410.0;
     s1+=28.0;
    } else {
     s0+=8014.0;
     s1+=210.0;
    }
   }
  } else {
   if(i0<0.057254523038864136){
    if(i61<-4.8796455303090625e-06){
     s0+=7.0;
     s1+=35.0;
    } else {
     s0+=177.0;
     s1+=16.0;
    }
   } else {
    if(i6<-1.627439087314997e-05){
     s0+=6.0;
     s1+=126.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  if(i16<1.0020222663879395){
   if(i0<0.07645323872566223){
    if(i15<-0.0014775395393371582){
     s0+=8277.0;
     s1+=188.0;
    } else {
     s0+=5068.0;
     s1+=1109.0;
    }
   } else {
    if(i67<1.0108850002288818){
     s0+=300.0;
     s1+=1157.0;
    } else {
     s0+=671.0;
     s1+=530.0;
    }
   }
  } else {
   if(i48<0.001670738449320197){
    if(i15<0.0009405314922332764){
     s0+=2318.0;
     s1+=762.0;
    } else {
     s0+=29.0;
     s1+=334.0;
    }
   } else {
    if(i49<1.0005741119384766){
     s1+=732.0;
    } else {
     s0+=177.0;
     s1+=252.0;
    }
   }
  }
 }
} else {
 if(i37<1.0624027252197266){
  s0+=172.0;
 } else {
  if(i23<1.1365801095962524){
   if(i46<0.003169962204992771){
    if(i37<1.2271616458892822){
     s0+=25.0;
     s1+=2095.0;
    } else {
     s0+=151.0;
     s1+=851.0;
    }
   } else {
    if(i8<0.12215492129325867){
     s0+=141.0;
     s1+=118.0;
    } else {
     s0+=18.0;
     s1+=228.0;
    }
   }
  } else {
   if(i8<0.04439440369606018){
    if(i15<-0.0016459226608276367){
     s0+=22.0;
     s1+=19.0;
    } else {
     s0+=12.0;
     s1+=179.0;
    }
   } else {
    if(i48<0.0010571358725428581){
     s0+=40.0;
     s1+=508.0;
    } else {
     s0+=14.0;
     s1+=7671.0;
    }
   }
  }
 }
}
if(i0<0.07742848992347717){
 if(i11<0.0006116032600402832){
  if(i53<-0.0024010539054870605){
   if(i14<0.9983675479888916){
    if(i38<0.010534744709730148){
     s0+=867.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   } else {
    if(i6<-1.452704964322038e-05){
     s0+=482.0;
     s1+=384.0;
    } else {
     s0+=1112.0;
     s1+=185.0;
    }
   }
  } else {
   if(i32<1.0598037242889404){
    if(i39<0.00042285723611712456){
     s0+=38467.0;
     s1+=1.0;
    } else {
     s0+=4802.0;
     s1+=33.0;
    }
   } else {
    if(i4<1.0010517835617065){
     s0+=21885.0;
     s1+=1183.0;
    } else {
     s0+=871.0;
     s1+=452.0;
    }
   }
  }
 } else {
  if(i71<4.1838093238766305e-06){
   if(i9<1.0338813066482544){
    if(i34<0.007571062073111534){
     s0+=53.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i28<1.5944836139678955){
     s0+=4.0;
     s1+=826.0;
    } else {
     s0+=34.0;
     s1+=9.0;
    }
   }
  } else {
   if(i45<-0.00012540817260742188){
    if(i3<0.019689500331878662){
     s0+=132.0;
     s1+=30.0;
    } else {
     s0+=67.0;
     s1+=183.0;
    }
   } else {
    if(i63<0.011419566348195076){
     s0+=410.0;
     s1+=16.0;
    } else {
     s0+=8.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3781947927782312e-05){
  if(i0<0.11249038577079773){
   if(i51<0.04587000608444214){
    if(i27<0.06384685635566711){
     s0+=28.0;
     s1+=1296.0;
    } else {
     s0+=141.0;
     s1+=469.0;
    }
   } else {
    if(i44<0.004671931266784668){
     s0+=79.0;
     s1+=86.0;
    } else {
     s0+=275.0;
     s1+=10.0;
    }
   }
  } else {
   if(i36<-0.0005416274070739746){
    s0+=19.0;
   } else {
    if(i70<0.00013373082038015127){
     s0+=55.0;
     s1+=233.0;
    } else {
     s0+=159.0;
     s1+=11397.0;
    }
   }
  }
 } else {
  if(i65<0.0027713673189282417){
   if(i28<1.255998969078064){
    if(i22<1.7940998077392578e-05){
     s0+=558.0;
     s1+=205.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   } else {
    if(i54<0.0011464394629001617){
     s0+=495.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i6<2.423580372123979e-05){
    if(i57<0.9978317618370056){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=109.0;
    }
   } else {
    s0+=33.0;
   }
  }
 }
}
if(i1<0.08195176720619202){
 if(i7<1.008053183555603){
  if(i22<1.8775463104248047e-05){
   if(i64<-0.0012745559215545654){
    if(i2<-0.00028261542320251465){
     s0+=4107.0;
     s1+=320.0;
    } else {
     s0+=1382.0;
     s1+=593.0;
    }
   } else {
    if(i9<1.0428826808929443){
     s0+=55872.0;
     s1+=226.0;
    } else {
     s0+=5686.0;
     s1+=544.0;
    }
   }
  } else {
   if(i51<-0.014835745096206665){
    if(i64<0.002189934253692627){
     s0+=115.0;
     s1+=403.0;
    } else {
     s0+=96.0;
     s1+=6.0;
    }
   } else {
    if(i4<1.0020942687988281){
     s0+=952.0;
     s1+=59.0;
    } else {
     s0+=106.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i37<1.1070735454559326){
   if(i12<1.0031780004501343){
    if(i70<0.00011933201312785968){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=23.0;
    }
   } else {
    if(i6<-2.3780219635227695e-05){
     s1+=576.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  } else {
   if(i70<0.0005586392362602055){
    if(i2<0.0009758472442626953){
     s0+=840.0;
     s1+=30.0;
    } else {
     s0+=3.0;
     s1+=47.0;
    }
   } else {
    if(i5<1.9729137420654297e-05){
     s0+=70.0;
     s1+=24.0;
    } else {
     s0+=3.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i21<0.0017902064137160778){
  if(i4<1.0018292665481567){
   if(i47<0.0018268118146806955){
    if(i32<1.094580888748169){
     s0+=200.0;
     s1+=108.0;
    } else {
     s0+=416.0;
    }
   } else {
    if(i29<1.0098938941955566){
     s0+=32.0;
     s1+=106.0;
    } else {
     s0+=66.0;
     s1+=8.0;
    }
   }
  } else {
   if(i18<0.00022941827774047852){
    if(i72<0.00819597952067852){
     s1+=6.0;
    } else {
     s0+=21.0;
    }
   } else {
    s1+=148.0;
   }
  }
 } else {
  if(i43<2.738548118941253e-06){
   if(i6<-2.6346369850216433e-06){
    if(i23<1.049466609954834){
     s0+=61.0;
     s1+=23.0;
    } else {
     s0+=477.0;
     s1+=13630.0;
    }
   } else {
    if(i13<0.9946781992912292){
     s0+=124.0;
     s1+=6.0;
    } else {
     s0+=67.0;
     s1+=101.0;
    }
   }
  } else {
   if(i36<-0.00013336539268493652){
    if(i36<-0.00013637542724609375){
     s0+=256.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i18<-0.0001519322395324707){
     s1+=21.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i3<0.08502998948097229){
 if(i5<4.1812658309936523e-05){
  if(i23<1.0451585054397583){
   if(i28<1.0850647687911987){
    s0+=35493.0;
   } else {
    if(i19<0.9888558387756348){
     s0+=1308.0;
     s1+=149.0;
    } else {
     s0+=17342.0;
     s1+=88.0;
    }
   }
  } else {
   if(i1<0.0690864622592926){
    if(i63<0.006452730856835842){
     s0+=10976.0;
     s1+=649.0;
    } else {
     s0+=2982.0;
     s1+=685.0;
    }
   } else {
    if(i55<-0.003941004164516926){
     s0+=483.0;
     s1+=19.0;
    } else {
     s0+=367.0;
     s1+=565.0;
    }
   }
  }
 } else {
  if(i21<0.002529964316636324){
   if(i12<1.0099906921386719){
    if(i13<1.0066425800323486){
     s0+=254.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   } else {
    s1+=34.0;
   }
  } else {
   if(i13<1.001632809638977){
    if(i28<1.082350254058838){
     s0+=58.0;
    } else {
     s0+=114.0;
     s1+=135.0;
    }
   } else {
    if(i15<-0.0025750398635864258){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=788.0;
    }
   }
  }
 }
} else {
 if(i14<0.998574435710907){
  if(i43<-9.244633474736474e-06){
   if(i14<0.9977577924728394){
    s0+=23.0;
   } else {
    if(i33<0.007416144944727421){
     s1+=20.0;
    } else {
     s0+=19.0;
     s1+=9.0;
    }
   }
  } else {
   if(i14<0.9985276460647583){
    s0+=633.0;
   } else {
    if(i62<-0.005261480808258057){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<1.0018510818481445){
   if(i59<0.03153747320175171){
    if(i64<0.004470139741897583){
     s0+=105.0;
     s1+=1913.0;
    } else {
     s0+=254.0;
     s1+=421.0;
    }
   } else {
    if(i39<0.008761588484048843){
     s0+=780.0;
     s1+=487.0;
    } else {
     s0+=37.0;
     s1+=351.0;
    }
   }
  } else {
   if(i3<0.13185465335845947){
    if(i53<0.005664825439453125){
     s0+=49.0;
     s1+=1328.0;
    } else {
     s0+=48.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.1407354176044464){
     s0+=11.0;
     s1+=430.0;
    } else {
     s0+=6.0;
     s1+=8769.0;
    }
   }
  }
 }
}
if(i8<0.07131022214889526){
 if(i0<0.07544058561325073){
  if(i2<0.0006162524223327637){
   if(i51<-0.028798997402191162){
    if(i1<0.027107596397399902){
     s0+=1924.0;
     s1+=195.0;
    } else {
     s0+=367.0;
     s1+=381.0;
    }
   } else {
    if(i9<1.0398929119110107){
     s0+=57665.0;
     s1+=470.0;
    } else {
     s0+=8613.0;
     s1+=910.0;
    }
   }
  } else {
   if(i61<-4.355375040177023e-06){
    if(i66<0.9976070523262024){
     s0+=50.0;
    } else {
     s0+=124.0;
     s1+=1002.0;
    }
   } else {
    if(i73<0.9902395009994507){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=98.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i36<-0.00014320015907287598){
   s0+=93.0;
  } else {
   if(i23<1.0451407432556152){
    if(i53<0.0011112987995147705){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=57.0;
     s1+=5.0;
    }
   } else {
    if(i41<0.049321532249450684){
     s0+=3.0;
     s1+=1508.0;
    } else {
     s0+=43.0;
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i3<0.11263984441757202){
  if(i44<0.003944694995880127){
   if(i21<0.0017215119441971183){
    if(i27<0.06698846817016602){
     s0+=80.0;
     s1+=74.0;
    } else {
     s0+=191.0;
     s1+=15.0;
    }
   } else {
    if(i5<-3.8623809814453125e-05){
     s0+=175.0;
     s1+=60.0;
    } else {
     s0+=132.0;
     s1+=959.0;
    }
   }
  } else {
   if(i5<0.00011813640594482422){
    if(i20<0.036839596927165985){
     s0+=669.0;
     s1+=13.0;
    } else {
     s0+=67.0;
     s1+=17.0;
    }
   } else {
    if(i31<0.006637701764702797){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i11<-0.0004031956195831299){
   if(i42<1.434314250946045){
    s0+=202.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i17<1.0027844905853271){
    if(i39<0.008093240670859814){
     s0+=457.0;
     s1+=1265.0;
    } else {
     s0+=19.0;
     s1+=1862.0;
    }
   } else {
    if(i6<-4.238861583871767e-05){
     s0+=27.0;
     s1+=8154.0;
    } else {
     s0+=40.0;
     s1+=177.0;
    }
   }
  }
 }
}
if(i8<0.07265964150428772){
 if(i9<1.0452277660369873){
  if(i3<0.08263587951660156){
   if(i42<1.0717806816101074){
    if(i32<1.0596027374267578){
     s0+=35289.0;
    } else {
     s0+=871.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.0991880893707275){
     s0+=4122.0;
     s1+=676.0;
    } else {
     s0+=21328.0;
     s1+=242.0;
    }
   }
  } else {
   if(i36<-2.872943878173828e-05){
    if(i49<0.9993631839752197){
     s0+=269.0;
    } else {
     s0+=21.0;
     s1+=8.0;
    }
   } else {
    if(i71<2.3786946258042008e-05){
     s0+=20.0;
     s1+=174.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i0<0.07539740204811096){
   if(i18<0.00021541118621826172){
    if(i2<0.00021308660507202148){
     s0+=6231.0;
     s1+=829.0;
    } else {
     s0+=836.0;
     s1+=827.0;
    }
   } else {
    if(i56<-0.0023702671751379967){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=472.0;
    }
   }
  } else {
   if(i22<-1.5079975128173828e-05){
    s0+=27.0;
   } else {
    if(i33<0.0005134335951879621){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=31.0;
     s1+=1469.0;
    }
   }
  }
 }
} else {
 if(i1<0.10109636187553406){
  if(i65<0.003525545820593834){
   if(i55<-0.0041308715008199215){
    if(i21<0.009833638556301594){
     s0+=628.0;
     s1+=27.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   } else {
    if(i43<-7.2982365963980556e-06){
     s0+=78.0;
     s1+=363.0;
    } else {
     s0+=314.0;
     s1+=102.0;
    }
   }
  } else {
   if(i4<0.9942176342010498){
    if(i65<0.006143063772469759){
     s0+=12.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i42<1.1384456157684326){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i43<2.0921156647091266e-06){
   if(i15<0.0007634758949279785){
    if(i34<0.023440029472112656){
     s0+=576.0;
     s1+=944.0;
    } else {
     s0+=94.0;
     s1+=2714.0;
    }
   } else {
    if(i15<0.0014184117317199707){
     s0+=23.0;
     s1+=867.0;
    } else {
     s1+=7281.0;
    }
   }
  } else {
   if(i27<0.07532185316085815){
    if(i3<0.17872896790504456){
     s1+=10.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i57<1.0000689029693604){
     s0+=265.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i8<0.0723395049571991){
 if(i52<-2.231821054010652e-05){
  if(i2<0.0009409189224243164){
   if(i42<1.2160128355026245){
    s1+=135.0;
   } else {
    s0+=32.0;
   }
  } else {
   s1+=668.0;
  }
 } else {
  if(i4<1.0024913549423218){
   if(i32<1.0557184219360352){
    s0+=43085.0;
   } else {
    if(i1<0.07728269696235657){
     s0+=25673.0;
     s1+=1874.0;
    } else {
     s0+=210.0;
     s1+=860.0;
    }
   }
  } else {
   if(i37<1.217149257659912){
    if(i28<1.0757708549499512){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=794.0;
    }
   } else {
    if(i48<0.001649721059948206){
     s0+=169.0;
     s1+=12.0;
    } else {
     s0+=49.0;
     s1+=409.0;
    }
   }
  }
 }
} else {
 if(i4<1.0018020868301392){
  if(i21<0.004997630603611469){
   if(i40<0.04310476779937744){
    if(i4<0.9956027269363403){
     s0+=35.0;
    } else {
     s0+=63.0;
     s1+=600.0;
    }
   } else {
    if(i3<0.11456429958343506){
     s0+=819.0;
     s1+=120.0;
    } else {
     s0+=589.0;
     s1+=378.0;
    }
   }
  } else {
   if(i23<1.0813977718353271){
    if(i52<0.00011168234050273895){
     s0+=14.0;
     s1+=122.0;
    } else {
     s0+=113.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.10544106364250183){
     s0+=69.0;
     s1+=126.0;
    } else {
     s0+=30.0;
     s1+=1308.0;
    }
   }
  }
 } else {
  if(i8<0.12826111912727356){
   if(i13<1.0064287185668945){
    if(i55<-0.005547052714973688){
     s0+=105.0;
     s1+=138.0;
    } else {
     s0+=35.0;
     s1+=414.0;
    }
   } else {
    if(i61<-4.226031705911737e-06){
     s1+=1323.0;
    } else {
     s0+=21.0;
     s1+=161.0;
    }
   }
  } else {
   if(i3<0.17289519309997559){
    if(i45<0.02245992422103882){
     s0+=3.0;
     s1+=412.0;
    } else {
     s0+=19.0;
     s1+=22.0;
    }
   } else {
    s1+=7234.0;
   }
  }
 }
}
if(i18<0.00011557340621948242){
 if(i0<0.07771533727645874){
  if(i50<0.0015205873642116785){
   if(i4<1.0024685859680176){
    if(i35<1.006864309310913){
     s0+=60042.0;
     s1+=665.0;
    } else {
     s0+=1925.0;
     s1+=318.0;
    }
   } else {
    if(i32<1.1486610174179077){
     s0+=9.0;
     s1+=76.0;
    } else {
     s0+=55.0;
     s1+=3.0;
    }
   }
  } else {
   if(i22<2.187490463256836e-05){
    if(i4<0.9965621829032898){
     s0+=3177.0;
     s1+=83.0;
    } else {
     s0+=3148.0;
     s1+=808.0;
    }
   } else {
    if(i69<-0.010965565219521523){
     s0+=135.0;
     s1+=25.0;
    } else {
     s0+=155.0;
     s1+=351.0;
    }
   }
  }
 } else {
  if(i34<0.02350822277367115){
   if(i44<0.0039449334144592285){
    if(i38<0.0005550944479182363){
     s0+=160.0;
     s1+=55.0;
    } else {
     s0+=364.0;
     s1+=1274.0;
    }
   } else {
    if(i1<0.11693298816680908){
     s0+=576.0;
     s1+=28.0;
    } else {
     s0+=354.0;
     s1+=301.0;
    }
   }
  } else {
   if(i74<0.997342586517334){
    if(i43<-4.2736369323392864e-06){
     s0+=11.0;
     s1+=80.0;
    } else {
     s0+=115.0;
    }
   } else {
    if(i4<0.9967747926712036){
     s0+=71.0;
     s1+=89.0;
    } else {
     s0+=152.0;
     s1+=2865.0;
    }
   }
  }
 }
} else {
 if(i14<0.9990932941436768){
  if(i54<0.001080595189705491){
   s0+=327.0;
  } else {
   s1+=3.0;
  }
 } else {
  if(i30<0.00016283465083688498){
   if(i0<0.05740088224411011){
    if(i75<3.91358116758056e-05){
     s1+=6.0;
    } else {
     s0+=251.0;
     s1+=1.0;
    }
   } else {
    if(i45<-0.006706357002258301){
     s0+=1.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i1<0.06510257720947266){
    if(i37<1.1658520698547363){
     s0+=3.0;
     s1+=237.0;
    } else {
     s0+=115.0;
     s1+=55.0;
    }
   } else {
    if(i28<1.2648893594741821){
     s0+=50.0;
     s1+=2105.0;
    } else {
     s0+=7.0;
     s1+=7592.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i1<0.08200076222419739){
  if(i4<1.0024762153625488){
   if(i46<0.0003121816262137145){
    if(i16<1.0072101354599){
     s0+=46824.0;
     s1+=59.0;
    } else {
     s0+=22.0;
     s1+=10.0;
    }
   } else {
    if(i4<0.9965820908546448){
     s0+=10773.0;
     s1+=75.0;
    } else {
     s0+=7289.0;
     s1+=1151.0;
    }
   }
  } else {
   if(i21<0.0020174747332930565){
    if(i52<7.977721907082014e-06){
     s0+=107.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i60<0.43464964628219604){
     s0+=5.0;
     s1+=356.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<-0.0007641017436981201){
   if(i36<-0.00014004111289978027){
    s0+=80.0;
   } else {
    if(i25<1.0267465114593506){
     s0+=4.0;
     s1+=25.0;
    } else {
     s0+=49.0;
     s1+=5.0;
    }
   }
  } else {
   if(i41<0.05896064639091492){
    if(i39<0.0003668830031529069){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=928.0;
    }
   } else {
    if(i39<0.0006152218556962907){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=37.0;
     s1+=95.0;
    }
   }
  }
 }
} else {
 if(i3<0.08946463465690613){
  if(i4<1.003113031387329){
   if(i5<1.2218952178955078e-05){
    if(i58<0.04986514896154404){
     s0+=2882.0;
     s1+=269.0;
    } else {
     s0+=838.0;
     s1+=290.0;
    }
   } else {
    if(i37<1.1411950588226318){
     s0+=64.0;
     s1+=262.0;
    } else {
     s0+=590.0;
     s1+=134.0;
    }
   }
  } else {
   if(i64<0.001952528953552246){
    if(i75<0.00015439681010320783){
     s0+=19.0;
     s1+=560.0;
    } else {
     s0+=25.0;
     s1+=48.0;
    }
   } else {
    if(i32<1.1748521327972412){
     s1+=27.0;
    } else {
     s0+=68.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i17<1.0022149085998535){
   if(i41<0.060980141162872314){
    if(i38<0.0005539290141314268){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=35.0;
     s1+=1854.0;
    }
   } else {
    if(i43<-3.0800547392573208e-06){
     s0+=461.0;
     s1+=1441.0;
    } else {
     s0+=694.0;
     s1+=135.0;
    }
   }
  } else {
   if(i6<-4.757403439725749e-05){
    if(i66<1.002213478088379){
     s0+=21.0;
     s1+=8760.0;
    } else {
     s0+=27.0;
     s1+=318.0;
    }
   } else {
    if(i9<1.0927201509475708){
     s0+=13.0;
     s1+=249.0;
    } else {
     s0+=99.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i9<1.0564135313034058){
 if(i7<1.0080902576446533){
  if(i2<0.0006907880306243896){
   if(i65<0.0006775148212909698){
    if(i3<0.08264222741127014){
     s0+=57185.0;
     s1+=423.0;
    } else {
     s0+=434.0;
     s1+=325.0;
    }
   } else {
    if(i1<0.0674121081829071){
     s0+=6428.0;
     s1+=612.0;
    } else {
     s0+=288.0;
     s1+=308.0;
    }
   }
  } else {
   if(i46<0.00024931051302701235){
    s0+=24.0;
   } else {
    if(i49<1.0023226737976074){
     s1+=250.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i38<0.001537099713459611){
   if(i13<0.9975432753562927){
    s0+=15.0;
   } else {
    if(i47<0.0002866184222511947){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=390.0;
    }
   }
  } else {
   if(i43<-1.622108720766846e-05){
    if(i12<0.9900354146957397){
     s0+=1.0;
    } else {
     s1+=80.0;
    }
   } else {
    if(i71<1.421690103597939e-05){
     s0+=136.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i8<0.08111461997032166){
  if(i2<0.0005167722702026367){
   if(i0<0.087505042552948){
    if(i38<0.0011287308298051357){
     s0+=998.0;
     s1+=527.0;
    } else {
     s0+=3977.0;
     s1+=346.0;
    }
   } else {
    if(i36<-0.0005601942539215088){
     s0+=10.0;
    } else {
     s0+=14.0;
     s1+=484.0;
    }
   }
  } else {
   if(i44<0.0029633939266204834){
    if(i51<0.04334765672683716){
     s0+=143.0;
     s1+=1998.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i4<1.0042102336883545){
     s0+=115.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i2<0.0004678964614868164){
   if(i40<0.05513790249824524){
    if(i3<0.10742142796516418){
     s0+=87.0;
     s1+=144.0;
    } else {
     s0+=13.0;
     s1+=942.0;
    }
   } else {
    if(i21<0.005853212904185057){
     s0+=959.0;
     s1+=310.0;
    } else {
     s0+=31.0;
     s1+=527.0;
    }
   }
  } else {
   if(i18<-9.167194366455078e-05){
    if(i3<0.13068589568138123){
     s0+=71.0;
     s1+=91.0;
    } else {
     s0+=28.0;
     s1+=493.0;
    }
   } else {
    if(i37<1.2590415477752686){
     s0+=48.0;
     s1+=1245.0;
    } else {
     s0+=8.0;
     s1+=7637.0;
    }
   }
  }
 }
}
if(i29<1.008828043937683){
 if(i0<0.08139219880104065){
  if(i5<4.202127456665039e-05){
   if(i64<-0.0010856389999389648){
    if(i1<0.057597577571868896){
     s0+=6355.0;
     s1+=679.0;
    } else {
     s0+=341.0;
     s1+=348.0;
    }
   } else {
    if(i63<0.007976161316037178){
     s0+=59725.0;
     s1+=623.0;
    } else {
     s0+=954.0;
     s1+=183.0;
    }
   }
  } else {
   if(i9<1.0332242250442505){
    if(i21<0.004454833455383778){
     s0+=206.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i58<0.22869381308555603){
     s0+=70.0;
     s1+=695.0;
    } else {
     s0+=51.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i22<-1.3947486877441406e-05){
   if(i43<-1.1371476830390748e-05){
    s1+=2.0;
   } else {
    if(i66<1.000291347503662){
     s0+=277.0;
    } else {
     s0+=16.0;
     s1+=4.0;
    }
   }
  } else {
   if(i21<0.0012553965207189322){
    if(i39<0.003643312491476536){
     s0+=141.0;
     s1+=37.0;
    } else {
     s0+=19.0;
     s1+=49.0;
    }
   } else {
    if(i3<0.12399810552597046){
     s0+=262.0;
     s1+=1014.0;
    } else {
     s0+=87.0;
     s1+=2350.0;
    }
   }
  }
 }
} else {
 if(i15<0.0006754398345947266){
  if(i2<0.0004813075065612793){
   if(i6<-3.353650026838295e-05){
    if(i37<1.10590398311615){
     s1+=286.0;
    } else {
     s0+=244.0;
     s1+=612.0;
    }
   } else {
    if(i1<0.08389967679977417){
     s0+=1279.0;
     s1+=54.0;
    } else {
     s0+=520.0;
     s1+=306.0;
    }
   }
  } else {
   if(i1<0.13737952709197998){
    if(i32<1.1580166816711426){
     s0+=6.0;
     s1+=99.0;
    } else {
     s0+=81.0;
     s1+=9.0;
    }
   } else {
    if(i70<0.00023035312187857926){
     s0+=12.0;
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i2<0.00015985965728759766){
   if(i0<0.07557359337806702){
    if(i70<0.00012039458670187742){
     s1+=3.0;
    } else {
     s0+=67.0;
    }
   } else {
    if(i6<-2.6346759113948792e-05){
     s0+=1.0;
     s1+=60.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i15<0.001430511474609375){
    if(i52<-5.829516339872498e-06){
     s0+=188.0;
     s1+=134.0;
    } else {
     s0+=13.0;
     s1+=1058.0;
    }
   } else {
    if(i10<1.0466240644454956){
     s0+=2.0;
     s1+=140.0;
    } else {
     s1+=7755.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i5<3.832578659057617e-05){
  if(i9<1.041234016418457){
   if(i46<0.00031300628324970603){
    if(i7<1.0094729661941528){
     s0+=45136.0;
     s1+=52.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i32<1.0983617305755615){
     s0+=4636.0;
     s1+=596.0;
    } else {
     s0+=9854.0;
     s1+=87.0;
    }
   }
  } else {
   if(i72<0.009642714634537697){
    if(i12<1.0048091411590576){
     s0+=2203.0;
     s1+=73.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i0<0.06628149747848511){
     s0+=2754.0;
     s1+=517.0;
    } else {
     s0+=189.0;
     s1+=539.0;
    }
   }
  }
 } else {
  if(i66<0.9978374242782593){
   if(i33<0.005866413936018944){
    s0+=254.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i54<6.878633939777501e-06){
    if(i48<0.0008735783048905432){
     s0+=62.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=80.0;
    }
   } else {
    if(i58<0.21969319880008698){
     s0+=9.0;
     s1+=729.0;
    } else {
     s0+=16.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004838109016418457){
  if(i20<0.02787698805332184){
   if(i1<0.08242934942245483){
    if(i2<0.000141143798828125){
     s0+=3077.0;
     s1+=185.0;
    } else {
     s0+=552.0;
     s1+=200.0;
    }
   } else {
    if(i40<0.046836912631988525){
     s0+=60.0;
     s1+=659.0;
    } else {
     s0+=880.0;
     s1+=264.0;
    }
   }
  } else {
   if(i6<-9.618350304663181e-06){
    if(i28<1.5682398080825806){
     s0+=201.0;
     s1+=1753.0;
    } else {
     s0+=136.0;
     s1+=111.0;
    }
   } else {
    if(i43<3.7750694446003763e-06){
     s0+=200.0;
     s1+=136.0;
    } else {
     s0+=371.0;
    }
   }
  }
 } else {
  if(i18<-7.992982864379883e-05){
   if(i23<1.1238245964050293){
    if(i9<1.086982011795044){
     s0+=88.0;
     s1+=96.0;
    } else {
     s0+=77.0;
    }
   } else {
    if(i21<0.011539882980287075){
     s0+=35.0;
     s1+=81.0;
    } else {
     s0+=7.0;
     s1+=574.0;
    }
   }
  } else {
   if(i1<0.0692259669303894){
    if(i36<0.00013449788093566895){
     s0+=57.0;
     s1+=7.0;
    } else {
     s0+=33.0;
     s1+=281.0;
    }
   } else {
    if(i43<-1.049142792908242e-05){
     s0+=75.0;
     s1+=10100.0;
    } else {
     s0+=15.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i1<0.08502185344696045){
 if(i11<0.000512242317199707){
  if(i58<0.025792963802814484){
   if(i7<1.0080137252807617){
    if(i51<-0.03321567177772522){
     s0+=483.0;
     s1+=82.0;
    } else {
     s0+=56662.0;
     s1+=480.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=14.0;
     s1+=213.0;
    } else {
     s0+=163.0;
     s1+=14.0;
    }
   }
  } else {
   if(i39<0.0016390259843319654){
    if(i34<0.011283686384558678){
     s0+=2744.0;
     s1+=400.0;
    } else {
     s0+=323.0;
     s1+=645.0;
    }
   } else {
    if(i50<0.003403862938284874){
     s0+=6337.0;
     s1+=63.0;
    } else {
     s0+=2000.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i2<0.0007026791572570801){
   if(i53<-0.001231163740158081){
    if(i62<0.0033822953701019287){
     s0+=73.0;
     s1+=126.0;
    } else {
     s0+=75.0;
     s1+=3.0;
    }
   } else {
    if(i37<1.157791018486023){
     s0+=128.0;
     s1+=55.0;
    } else {
     s0+=661.0;
     s1+=15.0;
    }
   }
  } else {
   if(i31<0.00018492768867872655){
    s0+=42.0;
   } else {
    if(i28<1.5682398080825806){
     s0+=22.0;
     s1+=814.0;
    } else {
     s0+=108.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i18<4.9233436584472656e-05){
  if(i22<-1.7374753952026367e-05){
   if(i43<-1.1416495908633806e-05){
    if(i65<0.0004354228440206498){
     s0+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=344.0;
   }
  } else {
   if(i6<-1.2549948223750107e-05){
    if(i1<0.11695581674575806){
     s0+=334.0;
     s1+=791.0;
    } else {
     s0+=168.0;
     s1+=2556.0;
    }
   } else {
    if(i69<-0.019178232178092003){
     s0+=414.0;
     s1+=108.0;
    } else {
     s0+=126.0;
     s1+=232.0;
    }
   }
  }
 } else {
  if(i15<1.5556812286376953e-05){
   s0+=16.0;
  } else {
   if(i43<-2.2020008145773318e-06){
    if(i21<0.0017987911123782396){
     s0+=38.0;
     s1+=145.0;
    } else {
     s0+=33.0;
     s1+=9849.0;
    }
   } else {
    if(i28<1.2604451179504395){
     s1+=22.0;
    } else {
     s0+=54.0;
    }
   }
  }
 }
}
if(i0<0.08162745833396912){
 if(i2<0.0006022751331329346){
  if(i45<-0.005849778652191162){
   if(i37<1.1907789707183838){
    if(i33<0.0004497925110626966){
     s0+=1078.0;
     s1+=51.0;
    } else {
     s0+=451.0;
     s1+=596.0;
    }
   } else {
    if(i11<0.0004372596740722656){
     s0+=2185.0;
     s1+=75.0;
    } else {
     s0+=140.0;
     s1+=97.0;
    }
   }
  } else {
   if(i23<1.0475225448608398){
    if(i29<1.0107519626617432){
     s0+=54503.0;
     s1+=186.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i0<0.05874347686767578){
     s0+=8933.0;
     s1+=612.0;
    } else {
     s0+=1659.0;
     s1+=719.0;
    }
   }
  }
 } else {
  if(i13<1.0040078163146973){
   if(i34<0.006367760710418224){
    if(i74<1.0058560371398926){
     s0+=153.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=17.0;
    }
   } else {
    if(i9<1.1223218441009521){
     s0+=118.0;
     s1+=185.0;
    } else {
     s1+=84.0;
    }
   }
  } else {
   if(i43<-1.4084192116570193e-05){
    if(i25<1.0738284587860107){
     s0+=2.0;
     s1+=911.0;
    } else {
     s0+=7.0;
     s1+=31.0;
    }
   } else {
    if(i21<0.003373804036527872){
     s0+=68.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i22<-1.5437602996826172e-05){
  if(i47<0.0038620082195848227){
   s0+=362.0;
  } else {
   if(i23<1.0937821865081787){
    s0+=15.0;
   } else {
    if(i15<-0.0012089908123016357){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i4<1.00185227394104){
   if(i73<1.0241048336029053){
    if(i39<0.0004466225509531796){
     s0+=43.0;
     s1+=9.0;
    } else {
     s0+=261.0;
     s1+=2038.0;
    }
   } else {
    if(i8<0.22411158680915833){
     s0+=686.0;
     s1+=436.0;
    } else {
     s0+=73.0;
     s1+=619.0;
    }
   }
  } else {
   if(i3<0.13287696242332458){
    if(i40<0.05521649122238159){
     s0+=22.0;
     s1+=1022.0;
    } else {
     s0+=100.0;
     s1+=80.0;
    }
   } else {
    if(i21<0.003047245554625988){
     s0+=9.0;
     s1+=191.0;
    } else {
     s0+=12.0;
     s1+=9349.0;
    }
   }
  }
 }
}
if(i6<-7.878689211793244e-05){
 if(i2<2.54213809967041e-05){
  if(i27<0.08387348055839539){
   if(i68<0.47606971859931946){
    if(i9<1.0696518421173096){
     s0+=622.0;
     s1+=9.0;
    } else {
     s0+=37.0;
     s1+=58.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i42<1.3115932941436768){
    s0+=5.0;
   } else {
    s1+=167.0;
   }
  }
 } else {
  if(i34<0.017198245972394943){
   if(i18<1.4662742614746094e-05){
    if(i16<0.9696414470672607){
     s0+=81.0;
     s1+=2.0;
    } else {
     s0+=137.0;
     s1+=92.0;
    }
   } else {
    if(i12<1.0032804012298584){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=1327.0;
    }
   }
  } else {
   if(i71<3.2077296054922044e-05){
    if(i1<0.004438549280166626){
     s0+=31.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=9408.0;
    }
   } else {
    if(i48<0.0050248391926288605){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=121.0;
    }
   }
  }
 }
} else {
 if(i25<1.037501335144043){
  if(i0<0.07724055647850037){
   if(i64<-0.0012818574905395508){
    if(i5<3.695487976074219e-05){
     s0+=5063.0;
     s1+=866.0;
    } else {
     s0+=3.0;
     s1+=207.0;
    }
   } else {
    if(i19<1.0078516006469727){
     s0+=58714.0;
     s1+=625.0;
    } else {
     s0+=971.0;
     s1+=298.0;
    }
   }
  } else {
   if(i2<-0.0008232295513153076){
    if(i23<1.108078956604004){
     s0+=153.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   } else {
    if(i47<0.0003959634341299534){
     s0+=34.0;
     s1+=5.0;
    } else {
     s0+=28.0;
     s1+=983.0;
    }
   }
  }
 } else {
  if(i13<1.001028060913086){
   if(i49<0.9993327260017395){
    if(i6<-5.240154132479802e-05){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=1146.0;
     s1+=13.0;
    }
   } else {
    if(i1<0.08679568767547607){
     s0+=2480.0;
     s1+=273.0;
    } else {
     s0+=801.0;
     s1+=1497.0;
    }
   }
  } else {
   if(i21<0.0028249153401702642){
    if(i37<1.1497819423675537){
     s0+=112.0;
     s1+=231.0;
    } else {
     s0+=349.0;
     s1+=41.0;
    }
   } else {
    if(i3<0.06393200159072876){
     s0+=44.0;
     s1+=49.0;
    } else {
     s0+=45.0;
     s1+=1025.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i3<0.08417618274688721){
  if(i65<0.0007148704025894403){
   if(i11<0.0007213354110717773){
    if(i4<1.0024821758270264){
     s0+=58016.0;
     s1+=450.0;
    } else {
     s0+=76.0;
     s1+=77.0;
    }
   } else {
    if(i16<1.0017566680908203){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=92.0;
    }
   }
  } else {
   if(i38<0.0010029711993411183){
    if(i32<1.0547096729278564){
     s0+=1044.0;
    } else {
     s0+=235.0;
     s1+=778.0;
    }
   } else {
    if(i11<0.0006633400917053223){
     s0+=5356.0;
     s1+=186.0;
    } else {
     s0+=144.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i13<0.9933510422706604){
   if(i37<1.1262280941009521){
    s0+=267.0;
   } else {
    if(i0<0.09370321035385132){
     s0+=106.0;
     s1+=23.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i23<1.0455448627471924){
    if(i10<1.0252954959869385){
     s1+=13.0;
    } else {
     s0+=72.0;
     s1+=9.0;
    }
   } else {
    if(i8<0.009689360857009888){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=904.0;
    }
   }
  }
 }
} else {
 if(i12<1.0064680576324463){
  if(i8<0.09474003314971924){
   if(i1<0.0994422435760498){
    if(i13<1.0010401010513306){
     s0+=4162.0;
     s1+=845.0;
    } else {
     s0+=391.0;
     s1+=423.0;
    }
   } else {
    if(i41<0.0677141547203064){
     s0+=18.0;
     s1+=519.0;
    } else {
     s0+=56.0;
     s1+=23.0;
    }
   }
  } else {
   if(i47<0.003929602913558483){
    if(i43<-2.497305786164361e-06){
     s0+=185.0;
     s1+=482.0;
    } else {
     s0+=452.0;
     s1+=53.0;
    }
   } else {
    if(i6<-3.9636601286474615e-05){
     s0+=64.0;
     s1+=2057.0;
    } else {
     s0+=125.0;
     s1+=375.0;
    }
   }
  }
 } else {
  if(i34<0.018580306321382523){
   if(i13<1.0033639669418335){
    if(i3<0.10425850749015808){
     s0+=241.0;
     s1+=35.0;
    } else {
     s0+=39.0;
     s1+=152.0;
    }
   } else {
    if(i18<0.00021499395370483398){
     s0+=82.0;
     s1+=283.0;
    } else {
     s0+=2.0;
     s1+=1608.0;
    }
   }
  } else {
   if(i33<0.0005916242371313274){
    s0+=9.0;
   } else {
    if(i3<0.08658325672149658){
     s0+=17.0;
     s1+=61.0;
    } else {
     s0+=14.0;
     s1+=7351.0;
    }
   }
  }
 }
}
if(i4<1.0024597644805908){
 if(i0<0.07863140106201172){
  if(i28<1.0856719017028809){
   s0+=38140.0;
  } else {
   if(i38<0.0010300034191459417){
    if(i34<0.01355115044862032){
     s0+=7379.0;
     s1+=979.0;
    } else {
     s0+=143.0;
     s1+=571.0;
    }
   } else {
    if(i23<1.0579285621643066){
     s0+=14681.0;
     s1+=20.0;
    } else {
     s0+=8731.0;
     s1+=547.0;
    }
   }
  }
 } else {
  if(i21<0.004983176477253437){
   if(i73<1.0300253629684448){
    if(i6<-6.452963589254068e-06){
     s0+=264.0;
     s1+=1334.0;
    } else {
     s0+=517.0;
     s1+=138.0;
    }
   } else {
    if(i50<-0.0009242157102562487){
     s0+=241.0;
     s1+=142.0;
    } else {
     s0+=493.0;
     s1+=59.0;
    }
   }
  } else {
   if(i23<1.0766117572784424){
    if(i18<-0.00013247132301330566){
     s0+=130.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=152.0;
    }
   } else {
    if(i36<-0.00026801228523254395){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=57.0;
     s1+=1824.0;
    }
   }
  }
 }
} else {
 if(i1<0.06766459345817566){
  if(i2<0.0009586215019226074){
   if(i23<1.0731133222579956){
    if(i21<0.001400659792125225){
     s0+=48.0;
    } else {
     s0+=12.0;
     s1+=135.0;
    }
   } else {
    if(i56<-0.000519869732670486){
     s0+=11.0;
     s1+=23.0;
    } else {
     s0+=129.0;
     s1+=10.0;
    }
   }
  } else {
   if(i75<0.00016808854707051069){
    if(i13<1.0030357837677002){
     s0+=21.0;
     s1+=62.0;
    } else {
     s1+=320.0;
    }
   } else {
    if(i34<0.054682351648807526){
     s0+=14.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i12<1.0091238021850586){
   if(i43<-1.3036322343396023e-05){
    if(i72<0.08644095063209534){
     s0+=80.0;
     s1+=856.0;
    } else {
     s0+=1.0;
     s1+=1374.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s1+=13.0;
    } else {
     s0+=42.0;
     s1+=3.0;
    }
   }
  } else {
   s1+=8472.0;
  }
 }
}
if(i4<1.0024597644805908){
 if(i25<1.0406770706176758){
  if(i0<0.0777127742767334){
   if(i60<0.04073546081781387){
    if(i53<-0.0039885640144348145){
     s0+=38.0;
     s1+=42.0;
    } else {
     s0+=54132.0;
     s1+=466.0;
    }
   } else {
    if(i37<1.1812903881072998){
     s0+=5019.0;
     s1+=993.0;
    } else {
     s0+=7320.0;
     s1+=212.0;
    }
   }
  } else {
   if(i14<0.9985183477401733){
    if(i4<0.9969611167907715){
     s0+=140.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   } else {
    if(i13<0.9929746389389038){
     s0+=69.0;
     s1+=91.0;
    } else {
     s0+=44.0;
     s1+=966.0;
    }
   }
  }
 } else {
  if(i68<0.2695404887199402){
   if(i8<0.09158965945243835){
    if(i28<1.2371783256530762){
     s0+=1302.0;
     s1+=783.0;
    } else {
     s0+=1804.0;
     s1+=88.0;
    }
   } else {
    if(i59<0.04741111397743225){
     s0+=301.0;
     s1+=1072.0;
    } else {
     s0+=551.0;
     s1+=287.0;
    }
   }
  } else {
   if(i11<-0.0003224611282348633){
    if(i70<0.0006203530938364565){
     s0+=58.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i48<0.0011781450593844056){
     s0+=57.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=712.0;
    }
   }
  }
 }
} else {
 if(i2<0.0009407401084899902){
  if(i30<0.00020594487432390451){
   if(i47<0.0012268614955246449){
    if(i42<1.069656252861023){
     s0+=4.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i67<1.0216188430786133){
     s0+=103.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i32<1.1714107990264893){
    if(i56<2.2404163246392272e-05){
     s0+=1.0;
     s1+=538.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    if(i1<0.11404472589492798){
     s0+=142.0;
     s1+=38.0;
    } else {
     s0+=17.0;
     s1+=514.0;
    }
   }
  }
 } else {
  if(i0<0.03565025329589844){
   if(i68<0.14298205077648163){
    if(i18<-0.00010514259338378906){
     s0+=11.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=105.0;
    }
   } else {
    if(i63<0.03201480209827423){
     s0+=26.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i13<1.0061461925506592){
    if(i33<0.009079542011022568){
     s0+=6.0;
     s1+=1246.0;
    } else {
     s0+=59.0;
     s1+=516.0;
    }
   } else {
    s1+=8214.0;
   }
  }
 }
}
if(i4<1.002474308013916){
 if(i9<1.0452277660369873){
  if(i1<0.08467972278594971){
   if(i64<-0.0013273358345031738){
    if(i12<0.9895925521850586){
     s0+=2906.0;
     s1+=76.0;
    } else {
     s0+=1200.0;
     s1+=408.0;
    }
   } else {
    if(i20<0.012928083539009094){
     s0+=49009.0;
     s1+=80.0;
    } else {
     s0+=9166.0;
     s1+=258.0;
    }
   }
  } else {
   if(i36<-0.00025719404220581055){
    s0+=97.0;
   } else {
    if(i25<1.030961036682129){
     s0+=2.0;
     s1+=157.0;
    } else {
     s0+=90.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i34<0.04025735706090927){
   if(i36<-0.0001353621482849121){
    if(i14<0.9990619421005249){
     s0+=1818.0;
     s1+=32.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=3030.0;
     s1+=2741.0;
    } else {
     s0+=3447.0;
     s1+=774.0;
    }
   }
  } else {
   if(i9<1.0644006729125977){
    if(i54<0.002985270693898201){
     s0+=58.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i64<-0.02189868688583374){
     s0+=19.0;
     s1+=15.0;
    } else {
     s0+=13.0;
     s1+=1131.0;
    }
   }
  }
 }
} else {
 if(i3<0.06286835670471191){
  if(i44<-0.0017366409301757812){
   if(i70<0.0001762151368893683){
    if(i62<-0.007512927055358887){
     s1+=2.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i18<-0.0003497600555419922){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=327.0;
    }
   }
  } else {
   if(i37<1.2072352170944214){
    if(i38<0.00030838686507195234){
     s0+=3.0;
    } else {
     s1+=140.0;
    }
   } else {
    if(i4<1.0064616203308105){
     s0+=188.0;
     s1+=5.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i43<-1.2584055184561294e-05){
   if(i1<0.12765604257583618){
    if(i44<0.004061698913574219){
     s0+=26.0;
     s1+=1585.0;
    } else {
     s0+=75.0;
     s1+=24.0;
    }
   } else {
    if(i3<0.14336448907852173){
     s0+=5.0;
     s1+=343.0;
    } else {
     s0+=2.0;
     s1+=8647.0;
    }
   }
  } else {
   if(i42<1.2388319969177246){
    s1+=110.0;
   } else {
    if(i33<0.004632771946489811){
     s0+=53.0;
     s1+=1.0;
    } else {
     s1+=40.0;
    }
   }
  }
 }
}
if(i13<1.0039026737213135){
 if(i8<0.07104292511940002){
  if(i2<0.0005604922771453857){
   if(i1<0.07829827070236206){
    if(i46<0.0003133402206003666){
     s0+=46524.0;
     s1+=96.0;
    } else {
     s0+=21090.0;
     s1+=1606.0;
    }
   } else {
    if(i32<1.0670123100280762){
     s0+=106.0;
     s1+=5.0;
    } else {
     s0+=89.0;
     s1+=688.0;
    }
   }
  } else {
   if(i21<0.003480959450826049){
    if(i15<-0.00016301870346069336){
     s0+=6.0;
     s1+=18.0;
    } else {
     s0+=187.0;
     s1+=3.0;
    }
   } else {
    if(i15<-0.0008007287979125977){
     s0+=97.0;
     s1+=114.0;
    } else {
     s0+=23.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i11<-0.00040841102600097656){
   if(i15<-0.0029873251914978027){
    if(i6<-2.6176523533649743e-05){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=45.0;
    }
   } else {
    s0+=432.0;
   }
  } else {
   if(i21<0.0033147085923701525){
    if(i41<0.05091771483421326){
     s0+=38.0;
     s1+=265.0;
    } else {
     s0+=1106.0;
     s1+=397.0;
    }
   } else {
    if(i40<0.04413121938705444){
     s0+=40.0;
     s1+=1979.0;
    } else {
     s0+=379.0;
     s1+=1799.0;
    }
   }
  }
 }
} else {
 if(i8<0.044478386640548706){
  if(i63<0.0049732704646885395){
   if(i22<2.181529998779297e-05){
    if(i43<-1.5805768271093257e-05){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=439.0;
    }
   } else {
    s1+=38.0;
   }
  } else {
   if(i3<0.04593667387962341){
    if(i14<1.0015168190002441){
     s0+=86.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=130.0;
    }
   } else {
    if(i53<0.00016042590141296387){
     s0+=3.0;
     s1+=385.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i11<-0.0002593100070953369){
   s0+=36.0;
  } else {
   if(i9<1.0343151092529297){
    if(i5<3.6656856536865234e-05){
     s0+=37.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   } else {
    if(i1<0.06876763701438904){
     s0+=54.0;
     s1+=120.0;
    } else {
     s0+=102.0;
     s1+=9329.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i5<3.8683414459228516e-05){
  if(i37<1.067622423171997){
   if(i26<1.0062471628189087){
    if(i35<1.00754976272583){
     s0+=39262.0;
     s1+=47.0;
    } else {
     s0+=80.0;
     s1+=14.0;
    }
   } else {
    if(i31<0.00025900566834025085){
     s0+=25.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i20<0.022106055170297623){
    if(i62<-0.0021465718746185303){
     s0+=2422.0;
     s1+=688.0;
    } else {
     s0+=21446.0;
     s1+=580.0;
    }
   } else {
    if(i0<0.06948491930961609){
     s0+=5504.0;
     s1+=726.0;
    } else {
     s0+=658.0;
     s1+=1648.0;
    }
   }
  }
 } else {
  if(i42<1.0762357711791992){
   s0+=274.0;
  } else {
   if(i34<0.023258723318576813){
    if(i18<-1.913309097290039e-05){
     s0+=188.0;
     s1+=215.0;
    } else {
     s0+=29.0;
     s1+=425.0;
    }
   } else {
    s1+=1699.0;
   }
  }
 }
} else {
 if(i38<0.006451424211263657){
  if(i0<0.0616782009601593){
   if(i64<0.0017916560173034668){
    if(i43<-1.422461627953453e-05){
     s0+=25.0;
     s1+=341.0;
    } else {
     s0+=317.0;
     s1+=71.0;
    }
   } else {
    if(i70<0.0006277043139562011){
     s0+=409.0;
     s1+=5.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i32<1.2048285007476807){
    if(i15<0.00025975704193115234){
     s0+=182.0;
     s1+=426.0;
    } else {
     s0+=20.0;
     s1+=2114.0;
    }
   } else {
    if(i49<1.000581979751587){
     s0+=332.0;
     s1+=157.0;
    } else {
     s0+=58.0;
     s1+=494.0;
    }
   }
  }
 } else {
  if(i34<0.030609816312789917){
   if(i18<1.8298625946044922e-05){
    if(i2<0.00013750791549682617){
     s1+=89.0;
    } else {
     s0+=48.0;
     s1+=23.0;
    }
   } else {
    if(i69<-0.05628848820924759){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=1098.0;
    }
   }
  } else {
   if(i31<0.000327849731547758){
    s0+=1.0;
   } else {
    if(i18<-0.00068703293800354){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=6064.0;
    }
   }
  }
 }
}
if(i73<1.013378620147705){
 if(i22<1.9252300262451172e-05){
  if(i8<0.0755089819431305){
   if(i23<1.0486011505126953){
    if(i46<0.0002991670626215637){
     s0+=44830.0;
     s1+=31.0;
    } else {
     s0+=10869.0;
     s1+=305.0;
    }
   } else {
    if(i38<0.0010943273082375526){
     s0+=3135.0;
     s1+=1491.0;
    } else {
     s0+=7958.0;
     s1+=740.0;
    }
   }
  } else {
   if(i1<0.09515279531478882){
    if(i53<0.002440840005874634){
     s0+=50.0;
     s1+=123.0;
    } else {
     s0+=176.0;
     s1+=36.0;
    }
   } else {
    if(i11<-0.0005150139331817627){
     s0+=115.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=988.0;
    }
   }
  }
 } else {
  if(i4<1.0015439987182617){
   if(i48<0.005501801148056984){
    if(i4<0.999060869216919){
     s0+=566.0;
     s1+=8.0;
    } else {
     s0+=352.0;
     s1+=121.0;
    }
   } else {
    if(i52<0.00041087830322794616){
     s0+=10.0;
     s1+=132.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i46<0.0002615427947603166){
    if(i49<1.0009455680847168){
     s0+=32.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i15<-0.000802457332611084){
     s0+=126.0;
     s1+=478.0;
    } else {
     s0+=32.0;
     s1+=2483.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004912018775939941){
  if(i39<0.010467883199453354){
   if(i6<-2.8505701266112737e-05){
    if(i1<0.09424662590026855){
     s0+=392.0;
     s1+=157.0;
    } else {
     s0+=155.0;
     s1+=907.0;
    }
   } else {
    if(i8<0.24715778231620789){
     s0+=1751.0;
     s1+=195.0;
    } else {
     s0+=132.0;
     s1+=98.0;
    }
   }
  } else {
   if(i70<0.00018083013128489256){
    s0+=5.0;
   } else {
    if(i0<0.1411246657371521){
     s0+=15.0;
    } else {
     s1+=439.0;
    }
   }
  }
 } else {
  if(i38<0.007958179339766502){
   if(i74<1.0017290115356445){
    if(i15<0.0014311671257019043){
     s0+=149.0;
     s1+=159.0;
    } else {
     s1+=304.0;
    }
   } else {
    if(i42<1.6016557216644287){
     s0+=62.0;
     s1+=1833.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i1<0.11203968524932861){
    if(i72<0.09275113046169281){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i26<0.9959431886672974){
     s0+=5.0;
     s1+=336.0;
    } else {
     s1+=5875.0;
    }
   }
  }
 }
}
if(i2<0.0005468428134918213){
 if(i3<0.0839570164680481){
  if(i30<0.0002934373333118856){
   if(i1<0.06922608613967896){
    if(i50<0.0016538279596716166){
     s0+=53878.0;
     s1+=286.0;
    } else {
     s0+=1029.0;
     s1+=140.0;
    }
   } else {
    if(i35<1.0071556568145752){
     s0+=829.0;
     s1+=62.0;
    } else {
     s0+=24.0;
     s1+=79.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i33<0.00043412967352196574){
     s0+=2491.0;
     s1+=82.0;
    } else {
     s0+=748.0;
     s1+=977.0;
    }
   } else {
    if(i34<0.07266444712877274){
     s0+=9552.0;
     s1+=407.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i11<-0.0003844797611236572){
   if(i14<0.9976335763931274){
    s0+=606.0;
   } else {
    if(i45<-0.008968859910964966){
     s1+=7.0;
    } else {
     s0+=100.0;
     s1+=16.0;
    }
   }
  } else {
   if(i53<0.0028668642044067383){
    if(i45<0.017074793577194214){
     s0+=113.0;
     s1+=1723.0;
    } else {
     s0+=116.0;
     s1+=234.0;
    }
   } else {
    if(i52<3.959974492317997e-05){
     s0+=566.0;
     s1+=261.0;
    } else {
     s0+=451.0;
     s1+=1173.0;
    }
   }
  }
 }
} else {
 if(i14<0.998632550239563){
  s0+=152.0;
 } else {
  if(i37<1.0624027252197266){
   s0+=22.0;
  } else {
   if(i3<0.06269580125808716){
    if(i11<0.0005822181701660156){
     s0+=120.0;
     s1+=73.0;
    } else {
     s0+=108.0;
     s1+=392.0;
    }
   } else {
    if(i5<6.133317947387695e-05){
     s0+=136.0;
     s1+=1335.0;
    } else {
     s0+=47.0;
     s1+=9892.0;
    }
   }
  }
 }
}
if(i0<0.07805490493774414){
 if(i18<0.00017255544662475586){
  if(i2<0.0006018579006195068){
   if(i30<0.0002955802483484149){
    if(i24<1.0109906196594238){
     s0+=55749.0;
     s1+=524.0;
    } else {
     s0+=254.0;
     s1+=94.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=3050.0;
     s1+=973.0;
    } else {
     s0+=9609.0;
     s1+=445.0;
    }
   }
  } else {
   if(i48<0.0017337865428999066){
    if(i73<0.9731186628341675){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=202.0;
     s1+=44.0;
    }
   } else {
    if(i44<0.0017633438110351562){
     s0+=75.0;
     s1+=448.0;
    } else {
     s0+=34.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<0.0014330148696899414){
   if(i56<-0.00031528720865026116){
    if(i11<0.000542759895324707){
     s0+=218.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i43<-1.5590887414873578e-05){
     s0+=2.0;
     s1+=87.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   }
  } else {
   if(i2<0.0005872547626495361){
    if(i61<-2.0048041733389255e-06){
     s0+=27.0;
    } else {
     s1+=14.0;
    }
   } else {
    s1+=520.0;
   }
  }
 }
} else {
 if(i14<0.9985270500183105){
  if(i72<0.2509811818599701){
   if(i6<-3.9958944398676977e-05){
    if(i17<0.9949061870574951){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i43<-1.1692093721649144e-05){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=452.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i21<0.0016407293733209372){
   if(i45<0.014715135097503662){
    if(i59<0.030461907386779785){
     s0+=56.0;
     s1+=213.0;
    } else {
     s0+=141.0;
     s1+=56.0;
    }
   } else {
    if(i7<1.017467737197876){
     s0+=345.0;
     s1+=17.0;
    } else {
     s0+=20.0;
     s1+=23.0;
    }
   }
  } else {
   if(i2<0.000760495662689209){
    if(i8<0.16486698389053345){
     s0+=630.0;
     s1+=2277.0;
    } else {
     s0+=44.0;
     s1+=1560.0;
    }
   } else {
    if(i15<3.5643577575683594e-05){
     s0+=50.0;
     s1+=838.0;
    } else {
     s0+=6.0;
     s1+=9028.0;
    }
   }
  }
 }
}
if(i15<0.0007717013359069824){
 if(i27<0.06527140736579895){
  if(i1<0.07865238189697266){
   if(i51<-0.028264671564102173){
    if(i74<1.0003734827041626){
     s0+=1892.0;
     s1+=272.0;
    } else {
     s0+=520.0;
     s1+=520.0;
    }
   } else {
    if(i1<0.06856587529182434){
     s0+=64520.0;
     s1+=1092.0;
    } else {
     s0+=1385.0;
     s1+=378.0;
    }
   }
  } else {
   if(i42<1.0724589824676514){
    if(i75<3.12746997224167e-05){
     s1+=5.0;
    } else {
     s0+=100.0;
    }
   } else {
    if(i0<0.08454534411430359){
     s0+=159.0;
     s1+=438.0;
    } else {
     s0+=20.0;
     s1+=1565.0;
    }
   }
  }
 } else {
  if(i8<0.12492614984512329){
   if(i40<0.04215243458747864){
    if(i1<0.08541572093963623){
     s0+=93.0;
     s1+=49.0;
    } else {
     s0+=16.0;
     s1+=320.0;
    }
   } else {
    if(i0<0.1252332627773285){
     s0+=1302.0;
     s1+=284.0;
    } else {
     s0+=39.0;
     s1+=123.0;
    }
   }
  } else {
   if(i48<0.0012907404452562332){
    if(i47<0.003730079624801874){
     s0+=335.0;
     s1+=26.0;
    } else {
     s0+=79.0;
     s1+=309.0;
    }
   } else {
    if(i43<-3.0309024623420555e-06){
     s0+=28.0;
     s1+=1756.0;
    } else {
     s0+=39.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i18<0.00016802549362182617){
  if(i1<0.06313470005989075){
   if(i51<-0.03347587585449219){
    if(i2<-7.206201553344727e-05){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i52<1.501175393059384e-05){
     s0+=452.0;
     s1+=10.0;
    } else {
     s0+=34.0;
     s1+=26.0;
    }
   }
  } else {
   if(i43<-1.1781915418396238e-05){
    s1+=539.0;
   } else {
    if(i22<6.9141387939453125e-06){
     s0+=26.0;
     s1+=127.0;
    } else {
     s0+=33.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i9<1.0341004133224487){
   if(i2<0.0015473365783691406){
    s0+=36.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i43<-1.586810321896337e-05){
    s1+=8474.0;
   } else {
    if(i49<1.0003063678741455){
     s0+=3.0;
     s1+=635.0;
    } else {
     s0+=103.0;
     s1+=39.0;
    }
   }
  }
 }
}
if(i0<0.07766455411911011){
 if(i5<4.1812658309936523e-05){
  if(i1<0.06989970803260803){
   if(i44<-0.0015021562576293945){
    if(i37<1.1907789707183838){
     s0+=1711.0;
     s1+=564.0;
    } else {
     s0+=2377.0;
     s1+=133.0;
    }
   } else {
    if(i31<0.0002706654486246407){
     s0+=50451.0;
     s1+=171.0;
    } else {
     s0+=12901.0;
     s1+=689.0;
    }
   }
  } else {
   if(i40<0.03391134738922119){
    if(i37<1.2048285007476807){
     s0+=42.0;
     s1+=399.0;
    } else {
     s0+=90.0;
     s1+=32.0;
    }
   } else {
    if(i30<0.0003672367602121085){
     s0+=778.0;
     s1+=17.0;
    } else {
     s0+=473.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i47<0.0004100673831999302){
   s0+=204.0;
  } else {
   if(i37<1.2287709712982178){
    if(i11<0.0003985166549682617){
     s0+=12.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=785.0;
    }
   } else {
    if(i63<0.011851202696561813){
     s0+=189.0;
     s1+=31.0;
    } else {
     s0+=25.0;
     s1+=227.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015802383422852){
  if(i6<-1.4545135854859836e-05){
   if(i1<0.09250250458717346){
    if(i51<0.02371048927307129){
     s0+=50.0;
     s1+=215.0;
    } else {
     s0+=199.0;
     s1+=42.0;
    }
   } else {
    if(i21<0.001795066986232996){
     s0+=96.0;
     s1+=98.0;
    } else {
     s0+=225.0;
     s1+=2318.0;
    }
   }
  } else {
   if(i27<0.06312406063079834){
    if(i17<0.9967735409736633){
     s0+=82.0;
     s1+=8.0;
    } else {
     s0+=19.0;
     s1+=182.0;
    }
   } else {
    if(i8<0.2149641215801239){
     s0+=853.0;
     s1+=86.0;
    } else {
     s0+=155.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i3<0.13160711526870728){
   if(i64<0.00282171368598938){
    if(i27<0.07392817735671997){
     s0+=10.0;
     s1+=1000.0;
    } else {
     s0+=41.0;
     s1+=179.0;
    }
   } else {
    if(i21<0.006237741559743881){
     s0+=98.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=93.0;
    }
   }
  } else {
   if(i18<3.74913215637207e-05){
    if(i72<0.08413471281528473){
     s0+=31.0;
     s1+=313.0;
    } else {
     s1+=735.0;
    }
   } else {
    if(i6<-4.1750172385945916e-05){
     s1+=8524.0;
    } else {
     s0+=7.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i2<0.0005699992179870605){
 if(i9<1.0452277660369873){
  if(i31<0.00027658703038468957){
   if(i14<1.001638650894165){
    if(i19<1.0123236179351807){
     s0+=50900.0;
     s1+=146.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i2<0.00038886070251464844){
     s0+=103.0;
     s1+=7.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i4<0.9966963529586792){
    if(i63<0.027269814163446426){
     s0+=7262.0;
     s1+=96.0;
    } else {
     s0+=96.0;
     s1+=20.0;
    }
   } else {
    if(i28<1.0840110778808594){
     s0+=1681.0;
    } else {
     s0+=2141.0;
     s1+=778.0;
    }
   }
  }
 } else {
  if(i21<0.004438281059265137){
   if(i8<0.059403836727142334){
    if(i20<0.02200387232005596){
     s0+=4650.0;
     s1+=414.0;
    } else {
     s0+=632.0;
     s1+=395.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=833.0;
     s1+=985.0;
    } else {
     s0+=1050.0;
     s1+=202.0;
    }
   }
  } else {
   if(i0<0.07985904812812805){
    if(i28<1.250974416732788){
     s0+=48.0;
     s1+=379.0;
    } else {
     s0+=981.0;
     s1+=174.0;
    }
   } else {
    if(i61<1.7417999060853617e-06){
     s0+=114.0;
     s1+=1902.0;
    } else {
     s0+=89.0;
    }
   }
  }
 }
} else {
 if(i39<0.00042525172466412187){
  if(i37<1.0591429471969604){
   s0+=120.0;
  } else {
   if(i15<0.0009919404983520508){
    s0+=4.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i17<1.005479335784912){
   if(i0<0.07936036586761475){
    if(i64<0.0018402338027954102){
     s0+=127.0;
     s1+=509.0;
    } else {
     s0+=105.0;
     s1+=10.0;
    }
   } else {
    if(i0<0.14084625244140625){
     s0+=80.0;
     s1+=528.0;
    } else {
     s0+=12.0;
     s1+=2420.0;
    }
   }
  } else {
   if(i15<-0.0007513165473937988){
    if(i66<0.9976435899734497){
     s0+=31.0;
     s1+=6.0;
    } else {
     s0+=28.0;
     s1+=446.0;
    }
   } else {
    if(i35<0.9932874441146851){
     s0+=10.0;
     s1+=805.0;
    } else {
     s0+=2.0;
     s1+=6908.0;
    }
   }
  }
 }
}
if(i3<0.08355346322059631){
 if(i64<-0.001311570405960083){
  if(i14<1.0015043020248413){
   if(i33<0.0013552956515923142){
    if(i28<1.0840110778808594){
     s0+=1201.0;
    } else {
     s0+=1141.0;
     s1+=795.0;
    }
   } else {
    if(i25<1.0326414108276367){
     s0+=2954.0;
     s1+=75.0;
    } else {
     s0+=213.0;
     s1+=48.0;
    }
   }
  } else {
   if(i28<1.5682398080825806){
    if(i4<1.0001749992370605){
     s0+=62.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=494.0;
    }
   } else {
    if(i53<-0.005506008863449097){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=228.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i12<1.0042407512664795){
   if(i23<1.0486011505126953){
    if(i46<0.00028227665461599827){
     s0+=43832.0;
     s1+=7.0;
    } else {
     s0+=9825.0;
     s1+=130.0;
    }
   } else {
    if(i32<1.1038447618484497){
     s0+=3423.0;
     s1+=717.0;
    } else {
     s0+=5044.0;
     s1+=117.0;
    }
   }
  } else {
   if(i6<-4.089727735845372e-05){
    if(i38<0.0032783050555735826){
     s1+=494.0;
    } else {
     s0+=136.0;
     s1+=19.0;
    }
   } else {
    if(i39<0.0011114011285826564){
     s0+=136.0;
     s1+=81.0;
    } else {
     s0+=730.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5393754438264295e-05){
  if(i0<0.12589031457901){
   if(i28<1.2371783256530762){
    if(i48<6.482459139078856e-05){
     s0+=2.0;
    } else {
     s0+=17.0;
     s1+=1871.0;
    }
   } else {
    if(i73<0.9995213747024536){
     s0+=45.0;
     s1+=453.0;
    } else {
     s0+=533.0;
     s1+=128.0;
    }
   }
  } else {
   if(i47<0.0011281473562121391){
    if(i7<1.0022552013397217){
     s0+=41.0;
     s1+=3.0;
    } else {
     s1+=66.0;
    }
   } else {
    if(i38<0.006729038432240486){
     s0+=93.0;
     s1+=2155.0;
    } else {
     s0+=12.0;
     s1+=8915.0;
    }
   }
  }
 } else {
  if(i11<-0.0004054605960845947){
   s0+=611.0;
  } else {
   if(i64<-0.00016805529594421387){
    if(i10<1.0681500434875488){
     s0+=23.0;
     s1+=162.0;
    } else {
     s0+=65.0;
     s1+=68.0;
    }
   } else {
    if(i21<0.0036306497640907764){
     s0+=636.0;
     s1+=133.0;
    } else {
     s0+=20.0;
     s1+=152.0;
    }
   }
  }
 }
}
if(i2<0.0005649924278259277){
 if(i21<0.0046927183866500854){
  if(i46<0.0003773197822738439){
   if(i73<1.0137579441070557){
    if(i16<1.0072948932647705){
     s0+=47585.0;
     s1+=140.0;
    } else {
     s0+=34.0;
     s1+=89.0;
    }
   } else {
    if(i12<1.0039126873016357){
     s0+=44.0;
    } else {
     s1+=47.0;
    }
   }
  } else {
   if(i5<-1.8715858459472656e-05){
    if(i18<-0.0002206861972808838){
     s0+=7767.0;
     s1+=113.0;
    } else {
     s0+=3882.0;
     s1+=649.0;
    }
   } else {
    if(i20<0.022732891142368317){
     s0+=4664.0;
     s1+=974.0;
    } else {
     s0+=745.0;
     s1+=1017.0;
    }
   }
  }
 } else {
  if(i4<0.9981597661972046){
   if(i41<0.0716654360294342){
    if(i63<0.012969638220965862){
     s0+=4834.0;
     s1+=132.0;
    } else {
     s0+=237.0;
     s1+=120.0;
    }
   } else {
    if(i6<-7.969423677423038e-06){
     s0+=32.0;
     s1+=166.0;
    } else {
     s0+=59.0;
    }
   }
  } else {
   if(i36<0.00025215744972229004){
    if(i26<0.9779797792434692){
     s0+=193.0;
     s1+=162.0;
    } else {
     s0+=79.0;
     s1+=1612.0;
    }
   } else {
    if(i34<0.025884006172418594){
     s0+=391.0;
     s1+=82.0;
    } else {
     s0+=18.0;
     s1+=255.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003137579478789121){
  s0+=128.0;
 } else {
  if(i1<0.06512784957885742){
   if(i50<0.001817495096474886){
    if(i27<0.019679665565490723){
     s0+=30.0;
     s1+=66.0;
    } else {
     s0+=126.0;
     s1+=30.0;
    }
   } else {
    if(i53<0.00035059452056884766){
     s0+=39.0;
     s1+=432.0;
    } else {
     s0+=45.0;
     s1+=15.0;
    }
   }
  } else {
   if(i26<0.9968588948249817){
    if(i65<0.0011822429951280355){
     s0+=118.0;
     s1+=362.0;
    } else {
     s0+=8.0;
     s1+=1028.0;
    }
   } else {
    if(i21<0.0016472353599965572){
     s0+=21.0;
     s1+=79.0;
    } else {
     s0+=26.0;
     s1+=9577.0;
    }
   }
  }
 }
}
if(i22<1.9848346710205078e-05){
 if(i10<1.0452277660369873){
  if(i68<0.018856612965464592){
   if(i35<1.0084904432296753){
    if(i29<0.9717247486114502){
     s0+=19.0;
     s1+=27.0;
    } else {
     s0+=50142.0;
     s1+=231.0;
    }
   } else {
    if(i6<-2.408838554401882e-05){
     s0+=12.0;
     s1+=146.0;
    } else {
     s0+=103.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.07769572734832764){
    if(i38<0.0009747191797941923){
     s0+=3338.0;
     s1+=803.0;
    } else {
     s0+=10427.0;
     s1+=183.0;
    }
   } else {
    if(i5<-5.480647087097168e-05){
     s0+=160.0;
     s1+=25.0;
    } else {
     s0+=76.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i7<1.010759949684143){
   if(i48<0.0018305883277207613){
    if(i49<0.9993143677711487){
     s0+=1204.0;
     s1+=3.0;
    } else {
     s0+=2857.0;
     s1+=1187.0;
    }
   } else {
    if(i1<0.0750044584274292){
     s0+=477.0;
     s1+=166.0;
    } else {
     s0+=77.0;
     s1+=907.0;
    }
   }
  } else {
   if(i34<0.039066143333911896){
    if(i32<1.1532785892486572){
     s0+=24.0;
     s1+=870.0;
    } else {
     s0+=582.0;
     s1+=641.0;
    }
   } else {
    if(i21<0.003649047575891018){
     s0+=12.0;
    } else {
     s1+=883.0;
    }
   }
  }
 }
} else {
 if(i3<0.08522948622703552){
  if(i71<1.0761119483504444e-05){
   if(i65<0.00016791862435638905){
    if(i13<1.003333330154419){
     s0+=253.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=117.0;
    }
   } else {
    if(i28<1.613681674003601){
     s0+=66.0;
     s1+=688.0;
    } else {
     s0+=45.0;
     s1+=18.0;
    }
   }
  } else {
   if(i53<-0.0045951902866363525){
    if(i15<-0.004922956228256226){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=108.0;
    }
   } else {
    if(i4<1.0018925666809082){
     s0+=745.0;
     s1+=53.0;
    } else {
     s0+=80.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i11<0.00044667720794677734){
   if(i18<-0.0002792477607727051){
    s1+=1.0;
   } else {
    s0+=16.0;
   }
  } else {
   if(i34<0.024906624108552933){
    if(i71<5.55167162019643e-06){
     s0+=56.0;
     s1+=1949.0;
    } else {
     s0+=176.0;
     s1+=189.0;
    }
   } else {
    if(i18<-0.0006191432476043701){
     s0+=21.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=7394.0;
    }
   }
  }
 }
}
if(i6<-6.487523205578327e-05){
 if(i1<0.055353909730911255){
  if(i69<-0.003020951757207513){
   if(i15<-0.0031213462352752686){
    if(i17<1.0139086246490479){
     s0+=598.0;
     s1+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i53<-0.0009492635726928711){
     s0+=9.0;
     s1+=50.0;
    } else {
     s0+=226.0;
     s1+=14.0;
    }
   }
  } else {
   if(i52<0.00014161746366880834){
    if(i70<0.0002482155105099082){
     s0+=36.0;
     s1+=9.0;
    } else {
     s0+=25.0;
     s1+=199.0;
    }
   } else {
    if(i51<-0.1310732364654541){
     s0+=6.0;
     s1+=33.0;
    } else {
     s0+=190.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i61<-2.9082306355121545e-05){
   s0+=54.0;
  } else {
   if(i3<0.11263161897659302){
    if(i32<1.1592143774032593){
     s0+=21.0;
     s1+=811.0;
    } else {
     s0+=203.0;
     s1+=435.0;
    }
   } else {
    if(i1<0.1316651701927185){
     s0+=28.0;
     s1+=518.0;
    } else {
     s0+=12.0;
     s1+=10060.0;
    }
   }
  }
 }
} else {
 if(i19<1.0079665184020996){
  if(i1<0.0813697874546051){
   if(i23<1.0483907461166382){
    if(i65<0.0007163133705034852){
     s0+=52286.0;
     s1+=90.0;
    } else {
     s0+=2799.0;
     s1+=239.0;
    }
   } else {
    if(i39<0.0016226915176957846){
     s0+=4119.0;
     s1+=1195.0;
    } else {
     s0+=6644.0;
     s1+=262.0;
    }
   }
  } else {
   if(i49<0.9992896318435669){
    if(i5<-3.4928321838378906e-05){
     s0+=329.0;
     s1+=3.0;
    } else {
     s0+=53.0;
     s1+=9.0;
    }
   } else {
    if(i59<0.04081645607948303){
     s0+=118.0;
     s1+=1207.0;
    } else {
     s0+=291.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i54<-8.543595322407782e-05){
   if(i39<0.0026401688810437918){
    if(i3<0.058931052684783936){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=24.0;
     s1+=581.0;
    }
   } else {
    if(i0<0.11653059720993042){
     s0+=162.0;
    } else {
     s0+=82.0;
     s1+=114.0;
    }
   }
  } else {
   if(i20<0.03385259956121445){
    if(i38<0.0011280854232609272){
     s0+=437.0;
     s1+=488.0;
    } else {
     s0+=1935.0;
     s1+=253.0;
    }
   } else {
    if(i30<0.004976353608071804){
     s0+=49.0;
     s1+=400.0;
    } else {
     s0+=122.0;
     s1+=173.0;
    }
   }
  }
 }
}
if(i0<0.07772430777549744){
 if(i23<1.0486011505126953){
  if(i23<1.0428826808929443){
   if(i46<0.0002512491191737354){
    if(i62<-0.0027128756046295166){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=40717.0;
     s1+=4.0;
    }
   } else {
    if(i47<0.000994766829535365){
     s0+=4423.0;
     s1+=156.0;
    } else {
     s0+=7169.0;
     s1+=11.0;
    }
   }
  } else {
   if(i14<1.001875877380371){
    if(i45<-0.004251569509506226){
     s0+=221.0;
     s1+=90.0;
    } else {
     s0+=3592.0;
     s1+=84.0;
    }
   } else {
    if(i39<0.0014070298057049513){
     s1+=12.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i14<1.0016393661499023){
   if(i51<-0.0207594633102417){
    if(i0<0.022319555282592773){
     s0+=1436.0;
     s1+=178.0;
    } else {
     s0+=734.0;
     s1+=478.0;
    }
   } else {
    if(i37<1.103413462638855){
     s0+=2407.0;
     s1+=918.0;
    } else {
     s0+=7938.0;
     s1+=157.0;
    }
   }
  } else {
   if(i2<0.0005266666412353516){
    if(i33<0.0034042082261294127){
     s1+=31.0;
    } else {
     s0+=584.0;
     s1+=76.0;
    }
   } else {
    if(i37<1.2510931491851807){
     s0+=16.0;
     s1+=765.0;
    } else {
     s0+=155.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i4<1.001433253288269){
  if(i49<0.9990426301956177){
   if(i43<-1.0015804946306162e-05){
    if(i14<0.9978777170181274){
     s0+=15.0;
    } else {
     s1+=23.0;
    }
   } else {
    s0+=459.0;
   }
  } else {
   if(i67<1.023042917251587){
    if(i59<0.03845676779747009){
     s0+=97.0;
     s1+=1550.0;
    } else {
     s0+=257.0;
     s1+=198.0;
    }
   } else {
    if(i3<0.1164664626121521){
     s0+=453.0;
     s1+=78.0;
    } else {
     s0+=339.0;
     s1+=967.0;
    }
   }
  }
 } else {
  if(i32<1.2582359313964844){
   if(i17<1.0035171508789062){
    if(i18<-8.052587509155273e-05){
     s0+=63.0;
     s1+=74.0;
    } else {
     s0+=85.0;
     s1+=965.0;
    }
   } else {
    if(i30<0.027375642210245132){
     s0+=33.0;
     s1+=2806.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.08912724256515503){
    if(i65<0.0012846915051341057){
     s0+=6.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i34<0.004749557003378868){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=7109.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i25<1.042873740196228){
  if(i8<0.07131022214889526){
   if(i3<0.07835555076599121){
    if(i63<0.008502136915922165){
     s0+=63876.0;
     s1+=1060.0;
    } else {
     s0+=2072.0;
     s1+=578.0;
    }
   } else {
    if(i5<-4.8279762268066406e-05){
     s0+=387.0;
     s1+=23.0;
    } else {
     s0+=176.0;
     s1+=544.0;
    }
   }
  } else {
   if(i59<0.033637821674346924){
    if(i45<0.015280187129974365){
     s0+=54.0;
     s1+=584.0;
    } else {
     s0+=36.0;
     s1+=14.0;
    }
   } else {
    if(i5<-4.89354133605957e-05){
     s0+=152.0;
     s1+=6.0;
    } else {
     s0+=165.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i0<0.09780308604240417){
   if(i45<0.015124529600143433){
    if(i43<-6.947848305571824e-06){
     s0+=402.0;
     s1+=363.0;
    } else {
     s0+=1283.0;
     s1+=119.0;
    }
   } else {
    if(i55<-0.0032916590571403503){
     s0+=1047.0;
     s1+=16.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i57<0.999553918838501){
    if(i13<0.9907338619232178){
     s0+=202.0;
     s1+=4.0;
    } else {
     s0+=39.0;
     s1+=105.0;
    }
   } else {
    if(i40<0.05988132953643799){
     s0+=39.0;
     s1+=1190.0;
    } else {
     s0+=515.0;
     s1+=745.0;
    }
   }
  }
 }
} else {
 if(i32<1.055294156074524){
  s0+=171.0;
 } else {
  if(i34<0.01686345785856247){
   if(i5<6.216764450073242e-05){
    if(i39<0.002094591734930873){
     s0+=14.0;
     s1+=406.0;
    } else {
     s0+=259.0;
     s1+=83.0;
    }
   } else {
    if(i33<0.009085295721888542){
     s0+=26.0;
     s1+=1635.0;
    } else {
     s0+=81.0;
     s1+=94.0;
    }
   }
  } else {
   if(i4<1.0015537738800049){
    if(i20<0.015495078638195992){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=57.0;
    }
   } else {
    if(i57<1.0007836818695068){
     s0+=26.0;
     s1+=9446.0;
    } else {
     s0+=6.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i1<0.08468136191368103){
 if(i15<0.0011545419692993164){
  if(i9<1.0436501502990723){
   if(i32<1.0556960105895996){
    if(i46<0.0005305055528879166){
     s0+=40756.0;
    } else {
     s0+=1360.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.0004634261131286621){
     s0+=19344.0;
     s1+=747.0;
    } else {
     s0+=38.0;
     s1+=126.0;
    }
   }
  } else {
   if(i17<1.0005549192428589){
    if(i39<0.002031044103205204){
     s0+=2964.0;
     s1+=677.0;
    } else {
     s0+=3707.0;
     s1+=189.0;
    }
   } else {
    if(i28<1.1228315830230713){
     s0+=156.0;
     s1+=469.0;
    } else {
     s0+=1221.0;
     s1+=506.0;
    }
   }
  }
 } else {
  if(i42<1.2388319969177246){
   s1+=470.0;
  } else {
   if(i43<-2.2120741050457582e-05){
    s1+=63.0;
   } else {
    if(i31<0.011632246896624565){
     s0+=118.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985139966011047){
  if(i47<0.008514813147485256){
   if(i2<-0.0005326271057128906){
    s0+=367.0;
   } else {
    if(i75<0.00011226507922401652){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i18<-0.0007588565349578857){
    s0+=2.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i2<0.0005118250846862793){
   if(i21<0.0016494231531396508){
    if(i51<0.03770720958709717){
     s0+=85.0;
     s1+=145.0;
    } else {
     s0+=426.0;
     s1+=73.0;
    }
   } else {
    if(i40<0.04848363995552063){
     s0+=31.0;
     s1+=1951.0;
    } else {
     s0+=429.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i18<6.020069122314453e-06){
    if(i23<1.1228240728378296){
     s0+=82.0;
     s1+=248.0;
    } else {
     s0+=21.0;
     s1+=889.0;
    }
   } else {
    if(i43<-1.1766093848564196e-05){
     s0+=16.0;
     s1+=9351.0;
    } else {
     s0+=21.0;
     s1+=126.0;
    }
   }
  }
 }
}
if(i2<0.0005462765693664551){
 if(i25<1.0406770706176758){
  if(i58<0.02681783214211464){
   if(i67<0.9715838432312012){
    if(i36<-4.1991472244262695e-05){
     s0+=318.0;
     s1+=18.0;
    } else {
     s0+=92.0;
     s1+=160.0;
    }
   } else {
    if(i19<1.0116369724273682){
     s0+=55966.0;
     s1+=548.0;
    } else {
     s0+=74.0;
     s1+=197.0;
    }
   }
  } else {
   if(i18<-0.0002193748950958252){
    if(i5<1.5795230865478516e-05){
     s0+=6431.0;
     s1+=270.0;
    } else {
     s0+=64.0;
     s1+=65.0;
    }
   } else {
    if(i17<1.0001122951507568){
     s0+=3066.0;
     s1+=894.0;
    } else {
     s0+=527.0;
     s1+=710.0;
    }
   }
  }
 } else {
  if(i56<-0.00021692052541766316){
   if(i21<0.005453248508274555){
    if(i39<0.0019527827389538288){
     s0+=214.0;
     s1+=475.0;
    } else {
     s0+=1288.0;
     s1+=479.0;
    }
   } else {
    if(i22<-1.8477439880371094e-05){
     s0+=33.0;
    } else {
     s0+=29.0;
     s1+=1216.0;
    }
   }
  } else {
   if(i4<0.9983540773391724){
    if(i3<0.1111651062965393){
     s0+=1068.0;
     s1+=23.0;
    } else {
     s0+=165.0;
     s1+=57.0;
    }
   } else {
    if(i70<0.0015280586667358875){
     s0+=1177.0;
     s1+=422.0;
    } else {
     s0+=2.0;
     s1+=52.0;
    }
   }
  }
 }
} else {
 if(i31<0.00020090542966499925){
  if(i6<-4.926710607833229e-05){
   s1+=22.0;
  } else {
   s0+=220.0;
  }
 } else {
  if(i4<1.0041097402572632){
   if(i56<-0.000544424750842154){
    if(i48<0.0016195785719901323){
     s0+=1.0;
     s1+=132.0;
    } else {
     s1+=670.0;
    }
   } else {
    if(i34<0.008206816390156746){
     s0+=179.0;
     s1+=143.0;
    } else {
     s0+=137.0;
     s1+=947.0;
    }
   }
  } else {
   if(i26<0.9966562986373901){
    if(i17<1.0004990100860596){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=891.0;
    }
   } else {
    if(i70<1.4148974514682777e-05){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=8765.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i4<1.0024750232696533){
  if(i64<-0.001471489667892456){
   if(i8<0.039947688579559326){
    if(i60<0.22456574440002441){
     s0+=1876.0;
     s1+=455.0;
    } else {
     s0+=2224.0;
     s1+=17.0;
    }
   } else {
    if(i4<0.9956471920013428){
     s0+=238.0;
     s1+=12.0;
    } else {
     s0+=291.0;
     s1+=524.0;
    }
   }
  } else {
   if(i35<1.0086172819137573){
    if(i46<0.0002930329064838588){
     s0+=45890.0;
     s1+=25.0;
    } else {
     s0+=14204.0;
     s1+=792.0;
    }
   } else {
    if(i57<0.9997549057006836){
     s0+=61.0;
     s1+=107.0;
    } else {
     s0+=342.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i43<-1.4230843589757569e-05){
   if(i33<0.011781584471464157){
    if(i13<0.9942876100540161){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=714.0;
    }
   } else {
    s0+=5.0;
   }
  } else {
   if(i15<0.0004754066467285156){
    s1+=13.0;
   } else {
    if(i30<0.00029839499620720744){
     s0+=111.0;
     s1+=3.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i0<0.09212127327919006){
  if(i6<-3.423637099331245e-05){
   if(i18<-0.00013497471809387207){
    if(i63<0.01557006873190403){
     s0+=553.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=157.0;
    }
   } else {
    if(i22<-1.1593103408813477e-05){
     s0+=97.0;
    } else {
     s0+=279.0;
     s1+=1375.0;
    }
   }
  } else {
   if(i39<0.0016293032094836235){
    if(i48<0.001604081247933209){
     s0+=1325.0;
     s1+=199.0;
    } else {
     s0+=41.0;
     s1+=190.0;
    }
   } else {
    if(i5<4.4345855712890625e-05){
     s0+=2493.0;
     s1+=56.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i22<-1.6361474990844727e-05){
   if(i17<0.9978253841400146){
    s0+=263.0;
   } else {
    if(i70<8.75732657732442e-05){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i48<0.0003236053744331002){
    if(i8<0.08873698115348816){
     s0+=4.0;
     s1+=141.0;
    } else {
     s0+=308.0;
     s1+=120.0;
    }
   } else {
    if(i0<0.13166937232017517){
     s0+=366.0;
     s1+=1333.0;
    } else {
     s0+=161.0;
     s1+=10702.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i22<1.9252300262451172e-05){
  if(i9<1.0451585054397583){
   if(i39<0.00035926737473346293){
    if(i51<-0.03630581498146057){
     s0+=144.0;
     s1+=7.0;
    } else {
     s0+=38609.0;
     s1+=16.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=3733.0;
     s1+=639.0;
    } else {
     s0+=18764.0;
     s1+=141.0;
    }
   }
  } else {
   if(i4<1.00094473361969){
    if(i42<1.1037919521331787){
     s0+=1746.0;
     s1+=631.0;
    } else {
     s0+=4479.0;
     s1+=302.0;
    }
   } else {
    if(i39<0.001109273754991591){
     s0+=108.0;
     s1+=347.0;
    } else {
     s0+=472.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i51<-0.006544321775436401){
   if(i13<1.0002171993255615){
    if(i65<0.000594359589740634){
     s0+=197.0;
     s1+=16.0;
    } else {
     s0+=91.0;
     s1+=154.0;
    }
   } else {
    if(i48<0.0005198921426199377){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=673.0;
    }
   }
  } else {
   if(i2<0.0009253025054931641){
    if(i39<0.0022295797243714333){
     s0+=352.0;
     s1+=89.0;
    } else {
     s0+=580.0;
     s1+=13.0;
    }
   } else {
    if(i12<0.9987807273864746){
     s0+=37.0;
     s1+=8.0;
    } else {
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00037994980812072754){
  if(i47<0.0038620082195848227){
   if(i15<-0.0005326271057128906){
    s0+=373.0;
   } else {
    if(i16<0.9965897798538208){
     s1+=2.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   if(i30<0.0006275073392316699){
    s0+=20.0;
   } else {
    if(i74<0.997504711151123){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   }
  }
 } else {
  if(i48<0.0003012093948200345){
   if(i55<-0.004603552632033825){
    if(i2<0.0007792115211486816){
     s0+=294.0;
     s1+=23.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i66<1.0000460147857666){
     s0+=18.0;
     s1+=394.0;
    } else {
     s0+=48.0;
     s1+=5.0;
    }
   }
  } else {
   if(i1<0.11695581674575806){
    if(i62<0.006072312593460083){
     s0+=318.0;
     s1+=1640.0;
    } else {
     s0+=281.0;
     s1+=84.0;
    }
   } else {
    if(i33<0.0005087829777039587){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=204.0;
     s1+=11872.0;
    }
   }
  }
 }
}
if(i7<1.0081498622894287){
 if(i1<0.0852343738079071){
  if(i9<1.0433889627456665){
   if(i23<1.042891263961792){
    if(i62<-0.0021765530109405518){
     s0+=1601.0;
     s1+=106.0;
    } else {
     s0+=50341.0;
     s1+=59.0;
    }
   } else {
    if(i28<1.2298874855041504){
     s0+=3587.0;
     s1+=580.0;
    } else {
     s0+=5461.0;
     s1+=48.0;
    }
   }
  } else {
   if(i20<0.019878335297107697){
    if(i25<1.0029633045196533){
     s0+=423.0;
     s1+=215.0;
    } else {
     s0+=5660.0;
     s1+=373.0;
    }
   } else {
    if(i38<0.0011145677417516708){
     s0+=141.0;
     s1+=557.0;
    } else {
     s0+=1343.0;
     s1+=546.0;
    }
   }
  }
 } else {
  if(i43<-5.348401373339584e-06){
   if(i59<0.036196112632751465){
    if(i58<0.016736933961510658){
     s0+=33.0;
     s1+=124.0;
    } else {
     s0+=52.0;
     s1+=2352.0;
    }
   } else {
    if(i8<0.14961859583854675){
     s0+=237.0;
     s1+=184.0;
    } else {
     s0+=5.0;
     s1+=400.0;
    }
   }
  } else {
   if(i33<0.0005848979344591498){
    if(i21<0.005569528788328171){
     s0+=391.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=25.0;
    }
   } else {
    if(i40<0.05534672737121582){
     s0+=15.0;
     s1+=410.0;
    } else {
     s0+=353.0;
     s1+=92.0;
    }
   }
  }
 }
} else {
 if(i3<0.08878642320632935){
  if(i4<1.0041356086730957){
   if(i32<1.1091103553771973){
    if(i35<1.0242412090301514){
     s0+=44.0;
     s1+=360.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i54<0.00021278852364048362){
     s0+=786.0;
     s1+=25.0;
    } else {
     s0+=114.0;
     s1+=75.0;
    }
   }
  } else {
   s1+=397.0;
  }
 } else {
  if(i6<-4.2278479668311775e-05){
   if(i12<1.0065340995788574){
    if(i3<0.08998826146125793){
     s0+=3.0;
    } else {
     s0+=32.0;
     s1+=1119.0;
    }
   } else {
    if(i6<-4.3186584662180394e-05){
     s1+=8565.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  } else {
   if(i25<1.0848546028137207){
    if(i33<0.0005216632271185517){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=49.0;
     s1+=384.0;
    }
   } else {
    if(i3<0.23196670413017273){
     s0+=277.0;
     s1+=34.0;
    } else {
     s0+=21.0;
     s1+=183.0;
    }
   }
  }
 }
}
if(i16<1.0066348314285278){
 if(i23<1.057713270187378){
  if(i68<0.022136542946100235){
   if(i64<-0.0017231404781341553){
    if(i36<-5.97536563873291e-05){
     s0+=54.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=72.0;
    }
   } else {
    if(i20<0.029092438519001007){
     s0+=50087.0;
     s1+=107.0;
    } else {
     s0+=21.0;
     s1+=15.0;
    }
   }
  } else {
   if(i33<0.0006613589939661324){
    if(i6<-9.98423001874471e-06){
     s0+=87.0;
     s1+=302.0;
    } else {
     s0+=2487.0;
     s1+=161.0;
    }
   } else {
    if(i38<0.0007856732700020075){
     s0+=67.0;
     s1+=22.0;
    } else {
     s0+=5808.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i4<1.0008782148361206){
   if(i1<0.07806262373924255){
    if(i33<0.0014749669935554266){
     s0+=3552.0;
     s1+=776.0;
    } else {
     s0+=5317.0;
     s1+=187.0;
    }
   } else {
    if(i22<-1.7315149307250977e-05){
     s0+=230.0;
     s1+=8.0;
    } else {
     s0+=600.0;
     s1+=1716.0;
    }
   }
  } else {
   if(i2<0.0006272196769714355){
    if(i31<0.00020857130584772676){
     s0+=84.0;
     s1+=4.0;
    } else {
     s0+=299.0;
     s1+=578.0;
    }
   } else {
    if(i3<0.13290265202522278){
     s0+=153.0;
     s1+=882.0;
    } else {
     s0+=7.0;
     s1+=1266.0;
    }
   }
  }
 }
} else {
 if(i6<-4.2188541556242853e-05){
  if(i22<-1.195073127746582e-05){
   if(i61<-9.198114412356517e-07){
    s1+=1.0;
   } else {
    s0+=58.0;
   }
  } else {
   if(i37<1.2590415477752686){
    if(i0<0.05624377727508545){
     s0+=86.0;
     s1+=280.0;
    } else {
     s0+=62.0;
     s1+=2725.0;
    }
   } else {
    s1+=7508.0;
   }
  }
 } else {
  if(i38<0.0011890260502696037){
   if(i36<3.49581241607666e-05){
    if(i3<0.08372694253921509){
     s0+=178.0;
     s1+=33.0;
    } else {
     s0+=11.0;
     s1+=114.0;
    }
   } else {
    if(i70<0.00012398307444527745){
     s0+=10.0;
    } else {
     s0+=12.0;
     s1+=265.0;
    }
   }
  } else {
   if(i2<0.0009822249412536621){
    if(i47<0.003939175978302956){
     s0+=1458.0;
     s1+=59.0;
    } else {
     s0+=216.0;
     s1+=120.0;
    }
   } else {
    s1+=30.0;
   }
  }
 }
}
if(i3<0.08519679307937622){
 if(i45<-0.0058526694774627686){
  if(i1<0.04141700267791748){
   if(i3<0.007237344980239868){
    if(i4<1.0023458003997803){
     s0+=1946.0;
     s1+=91.0;
    } else {
     s0+=18.0;
     s1+=33.0;
    }
   } else {
    if(i5<3.552436828613281e-05){
     s0+=1523.0;
     s1+=356.0;
    } else {
     s0+=21.0;
     s1+=160.0;
    }
   }
  } else {
   if(i41<0.020399868488311768){
    if(i73<1.0052218437194824){
     s0+=31.0;
     s1+=535.0;
    } else {
     s0+=22.0;
     s1+=9.0;
    }
   } else {
    if(i2<0.0005086660385131836){
     s0+=358.0;
     s1+=116.0;
    } else {
     s0+=10.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i15<0.0010162293910980225){
   if(i1<0.0663345456123352){
    if(i23<1.0470306873321533){
     s0+=52581.0;
     s1+=153.0;
    } else {
     s0+=9845.0;
     s1+=695.0;
    }
   } else {
    if(i32<1.0598037242889404){
     s0+=971.0;
     s1+=6.0;
    } else {
     s0+=1634.0;
     s1+=648.0;
    }
   }
  } else {
   if(i4<1.0041539669036865){
    if(i28<1.175731897354126){
     s1+=103.0;
    } else {
     s0+=161.0;
    }
   } else {
    s1+=186.0;
   }
  }
 }
} else {
 if(i14<0.998518705368042){
  if(i10<1.3700618743896484){
   if(i61<-3.5076991480309516e-06){
    if(i38<0.0012739693047478795){
     s0+=19.0;
    } else {
     s0+=7.0;
     s1+=18.0;
    }
   } else {
    if(i14<0.9980460405349731){
     s0+=623.0;
    } else {
     s0+=43.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i21<0.0017367787659168243){
   if(i62<0.004051804542541504){
    if(i6<-8.246816832979675e-06){
     s0+=52.0;
     s1+=271.0;
    } else {
     s0+=153.0;
     s1+=12.0;
    }
   } else {
    if(i71<1.487349254603032e-05){
     s0+=374.0;
     s1+=24.0;
    } else {
     s0+=3.0;
     s1+=27.0;
    }
   }
  } else {
   if(i3<0.1153794527053833){
    if(i42<1.2261788845062256){
     s0+=106.0;
     s1+=1313.0;
    } else {
     s0+=329.0;
     s1+=413.0;
    }
   } else {
    if(i11<-0.00029227137565612793){
     s0+=22.0;
     s1+=47.0;
    } else {
     s0+=156.0;
     s1+=11895.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i17<1.003166675567627){
  if(i23<1.0486011505126953){
   if(i45<-0.0056569576263427734){
    if(i37<1.0703742504119873){
     s0+=712.0;
     s1+=3.0;
    } else {
     s0+=181.0;
     s1+=115.0;
    }
   } else {
    if(i64<-0.0013793110847473145){
     s0+=912.0;
     s1+=98.0;
    } else {
     s0+=53867.0;
     s1+=109.0;
    }
   }
  } else {
   if(i1<0.06953093409538269){
    if(i38<0.0010296526597812772){
     s0+=2287.0;
     s1+=611.0;
    } else {
     s0+=6257.0;
     s1+=196.0;
    }
   } else {
    if(i5<-6.476044654846191e-05){
     s0+=100.0;
     s1+=11.0;
    } else {
     s0+=178.0;
     s1+=790.0;
    }
   }
  }
 } else {
  if(i11<0.0005783438682556152){
   if(i2<0.0002778172492980957){
    if(i26<0.9763821363449097){
     s0+=515.0;
    } else {
     s0+=62.0;
     s1+=13.0;
    }
   } else {
    if(i15<0.000908195972442627){
     s0+=22.0;
     s1+=117.0;
    } else {
     s0+=41.0;
     s1+=12.0;
    }
   }
  } else {
   if(i5<3.260374069213867e-05){
    if(i8<0.10282030701637268){
     s0+=100.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i0<0.005739688873291016){
     s0+=7.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=590.0;
    }
   }
  }
 }
} else {
 if(i12<1.0065436363220215){
  if(i6<-2.231597318314016e-05){
   if(i11<-0.0003885328769683838){
    if(i37<1.434314250946045){
     s0+=206.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.12575504183769226){
     s0+=1183.0;
     s1+=1479.0;
    } else {
     s0+=118.0;
     s1+=2751.0;
    }
   }
  } else {
   if(i3<0.08431315422058105){
    if(i17<1.000532627105713){
     s0+=2747.0;
     s1+=118.0;
    } else {
     s0+=181.0;
     s1+=124.0;
    }
   } else {
    if(i40<0.04145932197570801){
     s0+=64.0;
     s1+=264.0;
    } else {
     s0+=916.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i47<0.005922768265008926){
   if(i28<1.2392117977142334){
    if(i23<1.1514935493469238){
     s0+=12.0;
     s1+=1801.0;
    } else {
     s0+=67.0;
     s1+=175.0;
    }
   } else {
    if(i21<0.003156711347401142){
     s0+=285.0;
     s1+=40.0;
    } else {
     s1+=249.0;
    }
   }
  } else {
   if(i47<0.006586938165128231){
    if(i66<1.0032604932785034){
     s0+=1.0;
     s1+=100.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i6<-9.887851047096774e-05){
     s1+=7019.0;
    } else {
     s0+=4.0;
     s1+=138.0;
    }
   }
  }
 }
}
if(i6<-7.076349720591679e-05){
 if(i35<0.9292158484458923){
  if(i11<0.0007091164588928223){
   if(i0<0.0858343243598938){
    if(i24<0.7567237615585327){
     s1+=2.0;
    } else {
     s0+=503.0;
     s1+=12.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i1<0.014738023281097412){
    if(i67<0.8559719920158386){
     s1+=13.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i66<1.0036096572875977){
     s1+=151.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i4<0.9999825954437256){
   if(i25<1.0649847984313965){
    if(i0<0.09145039319992065){
     s0+=347.0;
     s1+=46.0;
    } else {
     s0+=13.0;
     s1+=47.0;
    }
   } else {
    if(i60<0.11549501121044159){
     s0+=2.0;
    } else {
     s1+=234.0;
    }
   }
  } else {
   if(i26<0.9951159358024597){
    if(i34<0.019761823117733){
     s0+=210.0;
     s1+=89.0;
    } else {
     s0+=17.0;
     s1+=1153.0;
    }
   } else {
    if(i20<0.011017252691090107){
     s0+=26.0;
     s1+=645.0;
    } else {
     s0+=19.0;
     s1+=9304.0;
    }
   }
  }
 }
} else {
 if(i23<1.0495078563690186){
  if(i65<0.0007040922064334154){
   if(i16<1.0073578357696533){
    if(i8<0.09763973951339722){
     s0+=53218.0;
     s1+=163.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<-5.120862169860629e-06){
     s1+=25.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i46<0.0012886766344308853){
    if(i33<0.0003664874820969999){
     s0+=889.0;
    } else {
     s0+=384.0;
     s1+=285.0;
    }
   } else {
    if(i8<0.09049275517463684){
     s0+=1789.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<0.07478877902030945){
   if(i3<0.06556612253189087){
    if(i28<1.1013743877410889){
     s0+=2176.0;
     s1+=811.0;
    } else {
     s0+=8583.0;
     s1+=352.0;
    }
   } else {
    if(i38<0.0011278786696493626){
     s0+=254.0;
     s1+=546.0;
    } else {
     s0+=1010.0;
     s1+=105.0;
    }
   }
  } else {
   if(i25<1.084590196609497){
    if(i57<0.999127984046936){
     s0+=81.0;
    } else {
     s0+=618.0;
     s1+=2497.0;
    }
   } else {
    if(i34<0.040071554481983185){
     s0+=926.0;
     s1+=336.0;
    } else {
     s0+=17.0;
     s1+=266.0;
    }
   }
  }
 }
}
if(i5<3.331899642944336e-05){
 if(i0<0.07771864533424377){
  if(i1<0.06625548005104065){
   if(i9<1.0398929119110107){
    if(i64<-0.001322716474533081){
     s0+=3919.0;
     s1+=275.0;
    } else {
     s0+=52894.0;
     s1+=103.0;
    }
   } else {
    if(i20<0.02317330427467823){
     s0+=8117.0;
     s1+=522.0;
    } else {
     s0+=1199.0;
     s1+=494.0;
    }
   }
  } else {
   if(i51<0.004236370325088501){
    if(i41<0.03571653366088867){
     s0+=42.0;
     s1+=282.0;
    } else {
     s0+=201.0;
     s1+=63.0;
    }
   } else {
    if(i62<-0.0005949735641479492){
     s0+=233.0;
     s1+=135.0;
    } else {
     s0+=2001.0;
     s1+=190.0;
    }
   }
  }
 } else {
  if(i49<0.998971164226532){
   if(i38<0.027283957228064537){
    if(i11<-0.0004121065139770508){
     s0+=387.0;
    } else {
     s0+=53.0;
     s1+=8.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i40<0.04308730363845825){
    if(i11<-0.000425875186920166){
     s0+=5.0;
    } else {
     s0+=60.0;
     s1+=1887.0;
    }
   } else {
    if(i21<0.0032239758875221014){
     s0+=867.0;
     s1+=298.0;
    } else {
     s0+=274.0;
     s1+=937.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003586439706850797){
  s0+=486.0;
 } else {
  if(i21<0.0023749331012368202){
   if(i43<-1.4742790881427936e-05){
    if(i2<0.0005225539207458496){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=234.0;
    }
   } else {
    if(i15<-0.00043123960494995117){
     s1+=16.0;
    } else {
     s0+=198.0;
    }
   }
  } else {
   if(i1<0.08263328671455383){
    if(i33<0.007164008915424347){
     s0+=44.0;
     s1+=832.0;
    } else {
     s0+=146.0;
     s1+=155.0;
    }
   } else {
    if(i61<-0.00011148602789035067){
     s0+=10.0;
    } else {
     s0+=105.0;
     s1+=10552.0;
    }
   }
  }
 }
}
if(i30<0.0003498330188449472){
 if(i3<0.08304375410079956){
  if(i14<1.0019950866699219){
   if(i35<1.0078129768371582){
    if(i44<-0.0024270713329315186){
     s0+=147.0;
     s1+=89.0;
    } else {
     s0+=57011.0;
     s1+=494.0;
    }
   } else {
    if(i6<-4.27927661803551e-05){
     s0+=50.0;
     s1+=144.0;
    } else {
     s0+=941.0;
     s1+=78.0;
    }
   }
  } else {
   if(i33<0.002925911685451865){
    if(i46<0.00019568251445889473){
     s0+=2.0;
    } else {
     s1+=181.0;
    }
   } else {
    if(i64<-0.0005019009113311768){
     s1+=11.0;
    } else {
     s0+=74.0;
    }
   }
  }
 } else {
  if(i11<-0.00020363926887512207){
   if(i62<-0.0026734471321105957){
    s1+=2.0;
   } else {
    if(i22<-1.4603137969970703e-05){
     s0+=230.0;
    } else {
     s0+=31.0;
     s1+=8.0;
    }
   }
  } else {
   if(i4<0.997278094291687){
    if(i39<0.010327963158488274){
     s0+=25.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i47<0.0003833941591437906){
     s0+=25.0;
    } else {
     s0+=18.0;
     s1+=1012.0;
    }
   }
  }
 }
} else {
 if(i18<8.308887481689453e-05){
  if(i8<0.08145847916603088){
   if(i0<0.08307123184204102){
    if(i4<1.0008924007415771){
     s0+=10404.0;
     s1+=1215.0;
    } else {
     s0+=425.0;
     s1+=533.0;
    }
   } else {
    if(i33<0.0005075442604720592){
     s0+=67.0;
    } else {
     s0+=68.0;
     s1+=550.0;
    }
   }
  } else {
   if(i38<0.006123469676822424){
    if(i69<-0.023799795657396317){
     s0+=808.0;
     s1+=286.0;
    } else {
     s0+=311.0;
     s1+=925.0;
    }
   } else {
    if(i23<1.1234437227249146){
     s0+=58.0;
     s1+=100.0;
    } else {
     s0+=59.0;
     s1+=2012.0;
    }
   }
  }
 } else {
  if(i4<1.0005810260772705){
   if(i21<0.00214773160405457){
    s0+=76.0;
   } else {
    if(i11<-0.000285416841506958){
     s0+=44.0;
    } else {
     s0+=3.0;
     s1+=75.0;
    }
   }
  } else {
   if(i1<0.08575960993766785){
    if(i11<0.00046521425247192383){
     s0+=117.0;
     s1+=84.0;
    } else {
     s1+=392.0;
    }
   } else {
    if(i21<0.0019720220007002354){
     s0+=34.0;
     s1+=156.0;
    } else {
     s0+=13.0;
     s1+=8863.0;
    }
   }
  }
 }
}
if(i3<0.08408460021018982){
 if(i5<4.035234451293945e-05){
  if(i58<0.026184294372797012){
   if(i54<-9.55637515289709e-05){
    if(i7<1.0109206438064575){
     s0+=100.0;
     s1+=29.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i54<0.00031263267737813294){
     s0+=55038.0;
     s1+=374.0;
    } else {
     s0+=2104.0;
     s1+=302.0;
    }
   }
  } else {
   if(i39<0.0016390259843319654){
    if(i6<-8.116725439322181e-06){
     s0+=605.0;
     s1+=749.0;
    } else {
     s0+=2389.0;
     s1+=300.0;
    }
   } else {
    if(i48<0.006420840509235859){
     s0+=8363.0;
     s1+=275.0;
    } else {
     s0+=6.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i14<1.0012351274490356){
   if(i63<0.011844340711832047){
    if(i49<1.000342607498169){
     s0+=235.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   } else {
    if(i35<0.9879015684127808){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i32<1.1353518962860107){
    if(i72<0.05984422564506531){
     s1+=589.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i63<0.012479908764362335){
     s0+=234.0;
     s1+=66.0;
    } else {
     s0+=14.0;
     s1+=281.0;
    }
   }
  }
 }
} else {
 if(i22<-1.4722347259521484e-05){
  if(i49<0.9991846084594727){
   if(i38<0.02916708029806614){
    s0+=606.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i9<1.0457030534744263){
    s0+=33.0;
   } else {
    if(i61<-3.088171979470644e-06){
     s1+=18.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i6<-2.1078027202747762e-05){
   if(i1<0.10119828581809998){
    if(i42<1.2261788845062256){
     s0+=63.0;
     s1+=752.0;
    } else {
     s0+=251.0;
     s1+=208.0;
    }
   } else {
    if(i6<-4.304815229261294e-05){
     s0+=109.0;
     s1+=11584.0;
    } else {
     s0+=132.0;
     s1+=814.0;
    }
   }
  } else {
   if(i15<-0.0003864467144012451){
    if(i41<0.058077067136764526){
     s0+=18.0;
     s1+=405.0;
    } else {
     s0+=377.0;
     s1+=221.0;
    }
   } else {
    if(i54<0.00020444691472221166){
     s0+=345.0;
     s1+=58.0;
    } else {
     s0+=23.0;
     s1+=47.0;
    }
   }
  }
 }
}
if(i8<0.07121574878692627){
 if(i5<4.190206527709961e-05){
  if(i10<1.0410094261169434){
   if(i1<0.07841718196868896){
    if(i50<0.0017684802878648043){
     s0+=59085.0;
     s1+=474.0;
    } else {
     s0+=4051.0;
     s1+=583.0;
    }
   } else {
    if(i71<1.9770452126977034e-05){
     s0+=30.0;
     s1+=261.0;
    } else {
     s0+=82.0;
     s1+=8.0;
    }
   }
  } else {
   if(i3<0.08391287922859192){
    if(i2<0.00014832615852355957){
     s0+=4600.0;
     s1+=509.0;
    } else {
     s0+=683.0;
     s1+=315.0;
    }
   } else {
    if(i6<5.95530764258001e-06){
     s0+=54.0;
     s1+=548.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i14<1.0001749992370605){
   if(i57<0.9990643262863159){
    s0+=211.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i43<-1.3867535017197952e-05){
    if(i66<1.0020015239715576){
     s0+=52.0;
     s1+=1730.0;
    } else {
     s0+=63.0;
     s1+=66.0;
    }
   } else {
    if(i28<1.2160128355026245){
     s0+=1.0;
     s1+=74.0;
    } else {
     s0+=107.0;
    }
   }
  }
 }
} else {
 if(i1<0.10798698663711548){
  if(i67<1.031143069267273){
   if(i6<-1.5069826986291446e-05){
    if(i40<0.04375860095024109){
     s0+=43.0;
     s1+=638.0;
    } else {
     s0+=315.0;
     s1+=216.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=225.0;
     s1+=73.0;
    } else {
     s0+=336.0;
     s1+=16.0;
    }
   }
  } else {
   if(i12<1.0093607902526855){
    if(i21<0.010223407298326492){
     s0+=419.0;
     s1+=13.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i32<1.169237732887268){
     s1+=18.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i49<0.9987900257110596){
   if(i32<1.453892469406128){
    s0+=221.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i22<1.7821788787841797e-05){
    if(i6<-1.4588534213544335e-05){
     s0+=185.0;
     s1+=2789.0;
    } else {
     s0+=297.0;
     s1+=200.0;
    }
   } else {
    if(i1<0.13329944014549255){
     s0+=54.0;
     s1+=467.0;
    } else {
     s0+=23.0;
     s1+=8047.0;
    }
   }
  }
 }
}
if(i8<0.07196861505508423){
 if(i17<1.003492832183838){
  if(i7<1.0077145099639893){
   if(i9<1.042891263961792){
    if(i64<-0.0013829171657562256){
     s0+=3575.0;
     s1+=477.0;
    } else {
     s0+=56701.0;
     s1+=260.0;
    }
   } else {
    if(i1<0.07743096351623535){
     s0+=7071.0;
     s1+=1048.0;
    } else {
     s0+=69.0;
     s1+=365.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i68<0.03234589844942093){
     s0+=52.0;
     s1+=501.0;
    } else {
     s0+=209.0;
     s1+=166.0;
    }
   } else {
    if(i6<-9.146495722234249e-05){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=660.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i13<1.0013079643249512){
   if(i51<-0.049182891845703125){
    if(i9<1.0429182052612305){
     s0+=30.0;
    } else {
     s0+=17.0;
     s1+=120.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=13.0;
     s1+=79.0;
    } else {
     s0+=614.0;
     s1+=37.0;
    }
   }
  } else {
   if(i21<0.001758629223331809){
    if(i6<-6.51845766697079e-05){
     s1+=13.0;
    } else {
     s0+=74.0;
     s1+=1.0;
    }
   } else {
    if(i43<-1.1097601600340568e-05){
     s0+=32.0;
     s1+=1471.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i13<1.0006730556488037){
  if(i21<0.00548985879868269){
   if(i27<0.05962592363357544){
    if(i23<1.0473709106445312){
     s0+=22.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=276.0;
    }
   } else {
    if(i59<0.03637176752090454){
     s0+=519.0;
     s1+=450.0;
    } else {
     s0+=1012.0;
     s1+=186.0;
    }
   }
  } else {
   if(i8<0.0822928249835968){
    if(i18<-0.00024405121803283691){
     s0+=99.0;
     s1+=20.0;
    } else {
     s0+=23.0;
     s1+=66.0;
    }
   } else {
    if(i21<0.006009386852383614){
     s0+=37.0;
     s1+=108.0;
    } else {
     s0+=61.0;
     s1+=1915.0;
    }
   }
  }
 } else {
  if(i6<-3.1533742003375664e-05){
   if(i34<0.01029578410089016){
    if(i55<-0.005687377881258726){
     s0+=49.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=672.0;
    }
   } else {
    if(i38<0.008511686697602272){
     s0+=30.0;
     s1+=2116.0;
    } else {
     s1+=6533.0;
    }
   }
  } else {
   if(i8<0.16565042734146118){
    if(i67<1.026959776878357){
     s0+=35.0;
     s1+=47.0;
    } else {
     s0+=105.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.2604451179504395){
     s0+=7.0;
     s1+=74.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i73<1.0135796070098877){
 if(i65<0.0008436706848442554){
  if(i1<0.07645782828330994){
   if(i4<1.0024807453155518){
    if(i51<-0.028394728899002075){
     s0+=1056.0;
     s1+=197.0;
    } else {
     s0+=59491.0;
     s1+=585.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=4.0;
     s1+=286.0;
    } else {
     s0+=107.0;
     s1+=23.0;
    }
   }
  } else {
   if(i41<0.047068893909454346){
    if(i5<-5.2601099014282227e-05){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=979.0;
    }
   } else {
    if(i4<0.9985510110855103){
     s0+=341.0;
     s1+=35.0;
    } else {
     s0+=134.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i4<1.000874400138855){
   if(i13<0.9938672780990601){
    if(i34<0.07017239183187485){
     s0+=4312.0;
     s1+=300.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   } else {
    if(i0<0.06306067109107971){
     s0+=2440.0;
     s1+=659.0;
    } else {
     s0+=168.0;
     s1+=791.0;
    }
   }
  } else {
   if(i9<1.043454647064209){
    if(i73<0.9954906702041626){
     s0+=12.0;
     s1+=102.0;
    } else {
     s0+=134.0;
     s1+=10.0;
    }
   } else {
    if(i3<0.07171964645385742){
     s0+=147.0;
     s1+=459.0;
    } else {
     s0+=21.0;
     s1+=2275.0;
    }
   }
  }
 }
} else {
 if(i3<0.09948408603668213){
  if(i28<1.1013743877410889){
   if(i43<-3.699115950439591e-06){
    if(i46<0.00023897207574918866){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=324.0;
    }
   } else {
    if(i6<-1.6693305951775983e-05){
     s0+=7.0;
     s1+=18.0;
    } else {
     s0+=315.0;
     s1+=2.0;
    }
   }
  } else {
   if(i15<0.0014582276344299316){
    if(i6<-4.9912840040633455e-05){
     s0+=177.0;
     s1+=56.0;
    } else {
     s0+=1239.0;
     s1+=11.0;
    }
   } else {
    s1+=43.0;
   }
  }
 } else {
  if(i17<1.0028963088989258){
   if(i18<5.08427619934082e-05){
    if(i41<0.07283630967140198){
     s0+=18.0;
     s1+=470.0;
    } else {
     s0+=730.0;
     s1+=555.0;
    }
   } else {
    if(i33<0.0005819973303005099){
     s0+=51.0;
     s1+=52.0;
    } else {
     s0+=22.0;
     s1+=1669.0;
    }
   }
  } else {
   if(i43<-1.5519271983066574e-05){
    if(i18<-2.962350845336914e-05){
     s0+=48.0;
     s1+=385.0;
    } else {
     s0+=2.0;
     s1+=6449.0;
    }
   } else {
    if(i0<0.12102857232093811){
     s0+=21.0;
     s1+=6.0;
    } else {
     s0+=20.0;
     s1+=200.0;
    }
   }
  }
 }
}
if(i8<0.07385113835334778){
 if(i15<0.0010375380516052246){
  if(i14<1.001905918121338){
   if(i30<0.0003115199215244502){
    if(i62<-0.003589928150177002){
     s0+=116.0;
     s1+=90.0;
    } else {
     s0+=56766.0;
     s1+=656.0;
    }
   } else {
    if(i2<-0.00031045079231262207){
     s0+=8031.0;
     s1+=439.0;
    } else {
     s0+=3600.0;
     s1+=1379.0;
    }
   }
  } else {
   if(i2<0.000401914119720459){
    if(i67<0.9028174877166748){
     s0+=22.0;
     s1+=27.0;
    } else {
     s0+=452.0;
     s1+=35.0;
    }
   } else {
    if(i53<0.002937614917755127){
     s0+=110.0;
     s1+=574.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i21<0.002010280266404152){
   if(i52<-2.965694511658512e-05){
    s1+=59.0;
   } else {
    if(i14<1.000345230102539){
     s1+=20.0;
    } else {
     s0+=168.0;
     s1+=1.0;
    }
   }
  } else {
   if(i11<-0.00022521615028381348){
    s0+=28.0;
   } else {
    if(i13<1.0037304162979126){
     s0+=11.0;
     s1+=66.0;
    } else {
     s0+=2.0;
     s1+=1424.0;
    }
   }
  }
 }
} else {
 if(i6<-2.170277548430022e-05){
  if(i15<-5.27799129486084e-05){
   if(i48<0.004890143871307373){
    if(i44<0.004397451877593994){
     s0+=70.0;
     s1+=956.0;
    } else {
     s0+=400.0;
     s1+=466.0;
    }
   } else {
    if(i23<1.1747617721557617){
     s0+=1.0;
     s1+=46.0;
    } else {
     s1+=838.0;
    }
   }
  } else {
   if(i0<0.09334778785705566){
    if(i67<1.0347398519515991){
     s0+=33.0;
     s1+=279.0;
    } else {
     s0+=44.0;
     s1+=15.0;
    }
   } else {
    if(i14<0.9981974363327026){
     s0+=10.0;
    } else {
     s0+=57.0;
     s1+=9147.0;
    }
   }
  }
 } else {
  if(i41<0.056489765644073486){
   if(i68<0.024813072755932808){
    if(i4<0.9994152784347534){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   } else {
    if(i0<0.08870193362236023){
     s0+=35.0;
     s1+=40.0;
    } else {
     s0+=1.0;
     s1+=169.0;
    }
   }
  } else {
   if(i39<0.005794115364551544){
    if(i20<0.02397908642888069){
     s0+=649.0;
     s1+=32.0;
    } else {
     s0+=241.0;
     s1+=87.0;
    }
   } else {
    if(i42<1.253311276435852){
     s0+=31.0;
     s1+=122.0;
    } else {
     s0+=277.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i14<1.0016309022903442){
 if(i7<1.0100743770599365){
  if(i8<0.07074183225631714){
   if(i33<0.00034957705065608025){
    if(i26<1.0061650276184082){
     s0+=36832.0;
     s1+=7.0;
    } else {
     s0+=18.0;
     s1+=3.0;
    }
   } else {
    if(i1<0.07723158597946167){
     s0+=30450.0;
     s1+=1572.0;
    } else {
     s0+=176.0;
     s1+=601.0;
    }
   }
  } else {
   if(i6<-1.827027699619066e-05){
    if(i22<-1.4692544937133789e-05){
     s0+=58.0;
     s1+=8.0;
    } else {
     s0+=255.0;
     s1+=1494.0;
    }
   } else {
    if(i62<-0.0017029941082000732){
     s0+=172.0;
     s1+=153.0;
    } else {
     s0+=1095.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i8<0.18937954306602478){
   if(i37<1.1759474277496338){
    if(i12<0.9964534640312195){
     s0+=47.0;
    } else {
     s0+=21.0;
     s1+=946.0;
    }
   } else {
    if(i6<-4.597842416842468e-05){
     s0+=13.0;
     s1+=315.0;
    } else {
     s0+=675.0;
     s1+=74.0;
    }
   }
  } else {
   if(i51<0.2760898172855377){
    if(i22<-2.1219253540039062e-05){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=1335.0;
    }
   } else {
    if(i46<0.016409605741500854){
     s0+=22.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=95.0;
    }
   }
  }
 }
} else {
 if(i12<1.0028433799743652){
  if(i0<0.10275378823280334){
   if(i44<-0.0012968778610229492){
    if(i1<0.021347403526306152){
     s0+=122.0;
     s1+=64.0;
    } else {
     s0+=23.0;
     s1+=388.0;
    }
   } else {
    if(i50<0.0014809593558311462){
     s0+=755.0;
     s1+=79.0;
    } else {
     s0+=126.0;
     s1+=73.0;
    }
   }
  } else {
   if(i34<0.023301392793655396){
    if(i64<0.0006503760814666748){
     s0+=2.0;
     s1+=90.0;
    } else {
     s0+=63.0;
     s1+=84.0;
    }
   } else {
    if(i5<-2.5153160095214844e-05){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=1090.0;
    }
   }
  }
 } else {
  if(i30<0.0001489113346906379){
   if(i28<1.2392117977142334){
    if(i39<0.0003135478764306754){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=40.0;
   }
  } else {
   if(i21<0.002020427957177162){
    if(i6<-5.508404137799516e-05){
     s1+=94.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i1<0.04735565185546875){
     s0+=15.0;
     s1+=94.0;
    } else {
     s0+=35.0;
     s1+=8348.0;
    }
   }
  }
 }
}
if(i7<1.0081498622894287){
 if(i3<0.08522948622703552){
  if(i9<1.044858694076538){
   if(i4<1.0024954080581665){
    if(i62<-0.0022585690021514893){
     s0+=4113.0;
     s1+=483.0;
    } else {
     s0+=57569.0;
     s1+=316.0;
    }
   } else {
    if(i21<0.002539244946092367){
     s0+=45.0;
    } else {
     s1+=73.0;
    }
   }
  } else {
   if(i11<0.0005175471305847168){
    if(i38<0.0010926506947726011){
     s0+=2158.0;
     s1+=744.0;
    } else {
     s0+=4031.0;
     s1+=274.0;
    }
   } else {
    if(i45<0.003390371799468994){
     s0+=181.0;
     s1+=482.0;
    } else {
     s0+=352.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i43<-5.912333108426537e-06){
   if(i0<0.11920475959777832){
    if(i69<-0.019171368330717087){
     s0+=243.0;
     s1+=39.0;
    } else {
     s0+=160.0;
     s1+=824.0;
    }
   } else {
    if(i21<0.004295620135962963){
     s0+=42.0;
     s1+=147.0;
    } else {
     s0+=18.0;
     s1+=2122.0;
    }
   }
  } else {
   if(i49<0.9992941617965698){
    s0+=614.0;
   } else {
    if(i59<0.04124915599822998){
     s0+=160.0;
     s1+=508.0;
    } else {
     s0+=255.0;
     s1+=71.0;
    }
   }
  }
 }
} else {
 if(i7<1.023583173751831){
  if(i3<0.09196853637695312){
   if(i42<1.1063789129257202){
    if(i4<0.9998652338981628){
     s0+=42.0;
     s1+=11.0;
    } else {
     s0+=14.0;
     s1+=661.0;
    }
   } else {
    if(i2<0.0009477138519287109){
     s0+=927.0;
     s1+=88.0;
    } else {
     s0+=2.0;
     s1+=116.0;
    }
   }
  } else {
   if(i46<0.00450469646602869){
    if(i6<-1.5669869753764942e-05){
     s0+=19.0;
     s1+=1863.0;
    } else {
     s0+=26.0;
     s1+=29.0;
    }
   } else {
    if(i21<0.003630175720900297){
     s0+=258.0;
     s1+=127.0;
    } else {
     s0+=41.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i12<1.0056360960006714){
   if(i48<0.0010825035860762){
    if(i9<1.201730728149414){
     s0+=7.0;
     s1+=43.0;
    } else {
     s0+=10.0;
    }
   } else {
    s1+=256.0;
   }
  } else {
   s1+=6885.0;
  }
 }
}
if(i0<0.07800713181495667){
 if(i9<1.0452277660369873){
  if(i65<0.0007057269103825092){
   if(i36<8.350610733032227e-05){
    if(i58<0.04179275035858154){
     s0+=47863.0;
     s1+=57.0;
    } else {
     s0+=809.0;
     s1+=57.0;
    }
   } else {
    if(i29<1.0076490640640259){
     s0+=7134.0;
     s1+=193.0;
    } else {
     s0+=41.0;
     s1+=30.0;
    }
   }
  } else {
   if(i15<-0.0016711652278900146){
    if(i14<1.004354476928711){
     s0+=4046.0;
     s1+=50.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<1.002813696861267){
     s0+=2108.0;
     s1+=477.0;
    } else {
     s0+=9.0;
     s1+=83.0;
    }
   }
  }
 } else {
  if(i13<1.0049223899841309){
   if(i37<1.103413462638855){
    if(i43<-9.338329618913122e-06){
     s0+=6.0;
     s1+=505.0;
    } else {
     s0+=1863.0;
     s1+=496.0;
    }
   } else {
    if(i20<0.0291050486266613){
     s0+=4542.0;
     s1+=201.0;
    } else {
     s0+=736.0;
     s1+=306.0;
    }
   }
  } else {
   if(i5<2.7418136596679688e-05){
    if(i69<0.005706724710762501){
     s0+=80.0;
     s1+=8.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i73<1.0234723091125488){
     s0+=17.0;
     s1+=732.0;
    } else {
     s0+=31.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i2<0.00010329484939575195){
  if(i6<-1.0132732313650195e-05){
   if(i22<-1.3500452041625977e-05){
    if(i66<1.0011065006256104){
     s0+=78.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i57<1.000354290008545){
     s0+=235.0;
     s1+=1453.0;
    } else {
     s0+=110.0;
     s1+=40.0;
    }
   }
  } else {
   if(i36<-0.0001359879970550537){
    s0+=454.0;
   } else {
    if(i65<0.0025321487337350845){
     s0+=518.0;
     s1+=154.0;
    } else {
     s0+=7.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i56<-0.00017709076928440481){
   if(i1<0.13066041469573975){
    if(i41<0.059477537870407104){
     s0+=20.0;
     s1+=1131.0;
    } else {
     s0+=162.0;
     s1+=149.0;
    }
   } else {
    if(i15<3.1113624572753906e-05){
     s0+=69.0;
     s1+=1077.0;
    } else {
     s0+=7.0;
     s1+=8397.0;
    }
   }
  } else {
   if(i1<0.10958981513977051){
    if(i41<0.057187408208847046){
     s0+=5.0;
     s1+=257.0;
    } else {
     s0+=146.0;
     s1+=57.0;
    }
   } else {
    if(i17<1.0044375658035278){
     s0+=63.0;
     s1+=212.0;
    } else {
     s0+=11.0;
     s1+=837.0;
    }
   }
  }
 }
}
if(i6<-8.167394844349474e-05){
 if(i35<0.9206893444061279){
  if(i61<-1.2171138223493472e-05){
   if(i34<0.0314648374915123){
    s0+=30.0;
   } else {
    if(i75<0.0001955682091647759){
     s0+=2.0;
     s1+=13.0;
    } else {
     s1+=116.0;
    }
   }
  } else {
   if(i1<0.03790193796157837){
    if(i48<0.006640527863055468){
     s0+=332.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i65<0.005501259118318558){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   }
  }
 } else {
  if(i28<1.082350254058838){
   s0+=173.0;
  } else {
   if(i15<-0.0025173425674438477){
    if(i9<1.106778621673584){
     s0+=181.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i4<1.0044598579406738){
     s0+=89.0;
     s1+=1830.0;
    } else {
     s0+=27.0;
     s1+=8891.0;
    }
   }
  }
 }
} else {
 if(i9<1.0452215671539307){
  if(i64<-0.0013132691383361816){
   if(i1<0.05709770321846008){
    if(i2<0.0005829334259033203){
     s0+=3766.0;
     s1+=341.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i30<0.002285620430484414){
     s0+=95.0;
     s1+=235.0;
    } else {
     s0+=97.0;
     s1+=14.0;
    }
   }
  } else {
   if(i3<0.0832337737083435){
    if(i3<0.06671753525733948){
     s0+=54912.0;
     s1+=235.0;
    } else {
     s0+=2484.0;
     s1+=161.0;
    }
   } else {
    if(i2<-0.0007361173629760742){
     s0+=285.0;
     s1+=3.0;
    } else {
     s0+=99.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i1<0.07536882162094116){
   if(i23<1.1032054424285889){
    if(i4<1.001190185546875){
     s0+=3476.0;
     s1+=605.0;
    } else {
     s0+=250.0;
     s1+=506.0;
    }
   } else {
    if(i24<0.9511505365371704){
     s0+=604.0;
     s1+=139.0;
    } else {
     s0+=2414.0;
     s1+=51.0;
    }
   }
  } else {
   if(i69<-0.01615261286497116){
    if(i6<-1.3781947927782312e-05){
     s0+=513.0;
     s1+=918.0;
    } else {
     s0+=758.0;
     s1+=138.0;
    }
   } else {
    if(i40<0.03997218608856201){
     s0+=96.0;
     s1+=1910.0;
    } else {
     s0+=306.0;
     s1+=766.0;
    }
   }
  }
 }
}
if(i17<1.002553939819336){
 if(i1<0.08201402425765991){
  if(i47<0.00030969694489613175){
   if(i26<1.0061650276184082){
    if(i33<0.0003195471945218742){
     s0+=35673.0;
    } else {
     s0+=819.0;
     s1+=2.0;
    }
   } else {
    if(i41<0.01038050651550293){
     s1+=2.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i4<0.9979170560836792){
    if(i50<0.0016254147049039602){
     s0+=19527.0;
     s1+=212.0;
    } else {
     s0+=3078.0;
     s1+=239.0;
    }
   } else {
    if(i16<0.9959063529968262){
     s0+=1252.0;
     s1+=831.0;
    } else {
     s0+=7430.0;
     s1+=877.0;
    }
   }
  }
 } else {
  if(i69<-0.019119707867503166){
   if(i38<0.005469411611557007){
    if(i11<0.00030916929244995117){
     s0+=745.0;
     s1+=125.0;
    } else {
     s0+=160.0;
     s1+=144.0;
    }
   } else {
    if(i3<0.1555379331111908){
     s0+=107.0;
     s1+=30.0;
    } else {
     s0+=26.0;
     s1+=917.0;
    }
   }
  } else {
   if(i36<-0.00025451183319091797){
    if(i29<1.0903741121292114){
     s0+=124.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i21<0.0016343442257493734){
     s0+=179.0;
     s1+=158.0;
    } else {
     s0+=169.0;
     s1+=2950.0;
    }
   }
  }
 }
} else {
 if(i5<3.427267074584961e-05){
  if(i4<0.998497486114502){
   if(i10<1.0792644023895264){
    if(i46<0.0040511274710297585){
     s0+=56.0;
     s1+=15.0;
    } else {
     s0+=661.0;
     s1+=4.0;
    }
   } else {
    if(i49<0.9999690651893616){
     s0+=6.0;
     s1+=7.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i58<0.02687040902674198){
    if(i12<1.0055227279663086){
     s0+=314.0;
     s1+=52.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i26<0.9665055871009827){
     s0+=91.0;
     s1+=35.0;
    } else {
     s0+=162.0;
     s1+=449.0;
    }
   }
  }
 } else {
  if(i34<0.020434387028217316){
   if(i13<1.0064866542816162){
    if(i68<0.10376670956611633){
     s0+=137.0;
     s1+=404.0;
    } else {
     s0+=107.0;
     s1+=82.0;
    }
   } else {
    if(i30<0.00011482839909149334){
     s0+=7.0;
    } else {
     s0+=17.0;
     s1+=1787.0;
    }
   }
  } else {
   if(i2<0.0004932284355163574){
    if(i43<-2.5580800866009668e-05){
     s1+=10.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    if(i1<0.052056968212127686){
     s0+=3.0;
     s1+=100.0;
    } else {
     s0+=1.0;
     s1+=7897.0;
    }
   }
  }
 }
}
if(i3<0.08564203977584839){
 if(i4<1.0024782419204712){
  if(i9<1.0449585914611816){
   if(i46<0.0003078809822909534){
    if(i26<1.0108540058135986){
     s0+=46168.0;
     s1+=49.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i38<0.0009636355098336935){
     s0+=3719.0;
     s1+=616.0;
    } else {
     s0+=12107.0;
     s1+=104.0;
    }
   }
  } else {
   if(i6<-3.196112083969638e-05){
    if(i37<1.1056134700775146){
     s0+=67.0;
     s1+=377.0;
    } else {
     s0+=1122.0;
     s1+=318.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=1775.0;
     s1+=569.0;
    } else {
     s0+=4137.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i33<0.0015467345947399735){
   if(i9<1.0343273878097534){
    if(i48<0.0007459086482413113){
     s0+=4.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=552.0;
   }
  } else {
   if(i2<0.0009584426879882812){
    if(i52<1.5380774129880592e-05){
     s0+=180.0;
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=59.0;
    }
   } else {
    if(i45<0.002635776996612549){
     s0+=21.0;
     s1+=313.0;
    } else {
     s0+=32.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985270500183105){
  if(i52<0.00019650257308967412){
   if(i12<0.996911883354187){
    s0+=580.0;
   } else {
    if(i52<6.299911910900846e-05){
     s0+=52.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i25<1.0396509170532227){
    if(i44<0.0010861456394195557){
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i3<0.12154248356819153){
     s0+=3.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i0<0.11779606342315674){
   if(i69<-0.017881421372294426){
    if(i65<0.002996898489072919){
     s0+=505.0;
     s1+=55.0;
    } else {
     s0+=9.0;
     s1+=32.0;
    }
   } else {
    if(i62<0.006948411464691162){
     s0+=152.0;
     s1+=2103.0;
    } else {
     s0+=170.0;
     s1+=60.0;
    }
   }
  } else {
   if(i43<-1.8922232811746653e-06){
    if(i37<1.2582359313964844){
     s0+=185.0;
     s1+=2198.0;
    } else {
     s0+=22.0;
     s1+=9136.0;
    }
   } else {
    if(i52<3.615060632000677e-05){
     s0+=165.0;
     s1+=69.0;
    } else {
     s0+=16.0;
     s1+=195.0;
    }
   }
  }
 }
}
if(i12<1.0054295063018799){
 if(i34<0.05196992680430412){
  if(i2<0.0005640387535095215){
   if(i10<1.042873740196228){
    if(i8<0.07135769724845886){
     s0+=62977.0;
     s1+=1416.0;
    } else {
     s0+=313.0;
     s1+=277.0;
    }
   } else {
    if(i6<-1.3832284821546637e-05){
     s0+=1927.0;
     s1+=2049.0;
    } else {
     s0+=3961.0;
     s1+=347.0;
    }
   }
  } else {
   if(i47<0.000396848248783499){
    s0+=106.0;
   } else {
    if(i33<0.00956655852496624){
     s0+=113.0;
     s1+=1106.0;
    } else {
     s0+=121.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i22<-6.735324859619141e-06){
   if(i40<0.053441762924194336){
    if(i47<0.007965462282299995){
     s1+=1.0;
    } else {
     s0+=462.0;
    }
   } else {
    if(i68<0.22670120000839233){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i10<1.0350022315979004){
    if(i34<0.06008700653910637){
     s0+=41.0;
     s1+=8.0;
    } else {
     s1+=59.0;
    }
   } else {
    s1+=1402.0;
   }
  }
 }
} else {
 if(i22<1.6629695892333984e-05){
  if(i34<0.011657269671559334){
   if(i38<0.0012300163507461548){
    if(i15<0.0005394220352172852){
     s0+=12.0;
     s1+=2.0;
    } else {
     s1+=318.0;
    }
   } else {
    if(i19<1.0216434001922607){
     s0+=613.0;
     s1+=13.0;
    } else {
     s0+=89.0;
     s1+=116.0;
    }
   }
  } else {
   if(i1<0.08800303936004639){
    if(i39<0.0018391931662335992){
     s1+=47.0;
    } else {
     s0+=107.0;
    }
   } else {
    if(i6<-2.200359813286923e-05){
     s0+=13.0;
     s1+=1412.0;
    } else {
     s0+=58.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i11<0.0005838274955749512){
   if(i0<0.06463903188705444){
    if(i32<1.1005322933197021){
     s1+=55.0;
    } else {
     s0+=81.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.006193862296640873){
     s0+=12.0;
     s1+=180.0;
    } else {
     s1+=322.0;
    }
   }
  } else {
   if(i12<1.0079433917999268){
    if(i57<1.0000765323638916){
     s0+=24.0;
     s1+=133.0;
    } else {
     s1+=255.0;
    }
   } else {
    if(i3<0.05127596855163574){
     s0+=2.0;
     s1+=71.0;
    } else {
     s1+=7583.0;
    }
   }
  }
 }
}
if(i6<-6.900802691234276e-05){
 if(i18<-0.0003694295883178711){
  if(i1<0.09542682766914368){
   if(i9<1.1027610301971436){
    if(i58<0.016279185190796852){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=716.0;
     s1+=11.0;
    }
   } else {
    if(i0<0.0033735334873199463){
     s0+=15.0;
     s1+=2.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i57<1.00066077709198){
    if(i39<0.0075637879781425){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=150.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i42<1.0762357711791992){
   s0+=166.0;
  } else {
   if(i16<0.9439260959625244){
    if(i42<1.5032740831375122){
     s0+=57.0;
     s1+=2.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i26<0.9936273097991943){
     s0+=186.0;
     s1+=1349.0;
    } else {
     s0+=47.0;
     s1+=9927.0;
    }
   }
  }
 }
} else {
 if(i10<1.0410068035125732){
  if(i3<0.0832337737083435){
   if(i4<1.0024782419204712){
    if(i45<-0.005848526954650879){
     s0+=2453.0;
     s1+=525.0;
    } else {
     s0+=59879.0;
     s1+=650.0;
    }
   } else {
    if(i43<-1.4704144632560201e-05){
     s1+=105.0;
    } else {
     s0+=99.0;
     s1+=16.0;
    }
   }
  } else {
   if(i37<1.0670123100280762){
    if(i13<1.0005208253860474){
     s0+=212.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i22<-1.329183578491211e-05){
     s0+=126.0;
     s1+=10.0;
    } else {
     s0+=78.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i21<0.004171380773186684){
   if(i18<7.867813110351562e-05){
    if(i52<2.4803754058666527e-05){
     s0+=2784.0;
     s1+=261.0;
    } else {
     s0+=2889.0;
     s1+=985.0;
    }
   } else {
    if(i1<0.06557410955429077){
     s0+=303.0;
     s1+=74.0;
    } else {
     s0+=133.0;
     s1+=359.0;
    }
   }
  } else {
   if(i42<1.2314128875732422){
    if(i22<-1.558661460876465e-05){
     s0+=62.0;
    } else {
     s0+=36.0;
     s1+=1379.0;
    }
   } else {
    if(i10<1.0641117095947266){
     s0+=507.0;
     s1+=69.0;
    } else {
     s0+=391.0;
     s1+=605.0;
    }
   }
  }
 }
}
if(i3<0.08554530143737793){
 if(i13<1.0042946338653564){
  if(i9<1.0412344932556152){
   if(i62<-0.0018375813961029053){
    if(i1<0.055529117584228516){
     s0+=4288.0;
     s1+=277.0;
    } else {
     s0+=185.0;
     s1+=160.0;
    }
   } else {
    if(i21<0.004370677284896374){
     s0+=51627.0;
     s1+=114.0;
    } else {
     s0+=3230.0;
     s1+=101.0;
    }
   }
  } else {
   if(i20<0.02200387232005596){
    if(i21<0.004337280988693237){
     s0+=7110.0;
     s1+=506.0;
    } else {
     s0+=797.0;
     s1+=274.0;
    }
   } else {
    if(i39<0.0016872063279151917){
     s0+=140.0;
     s1+=522.0;
    } else {
     s0+=1341.0;
     s1+=404.0;
    }
   }
  }
 } else {
  if(i22<1.5556812286376953e-05){
   if(i63<0.008873552083969116){
    if(i43<-1.4504956197924912e-05){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=478.0;
     s1+=4.0;
    }
   } else {
    if(i39<0.0023841075599193573){
     s1+=46.0;
    } else {
     s0+=20.0;
     s1+=9.0;
    }
   }
  } else {
   if(i4<1.0040936470031738){
    if(i75<0.00013600921374745667){
     s0+=22.0;
     s1+=116.0;
    } else {
     s0+=24.0;
     s1+=8.0;
    }
   } else {
    if(i15<0.00040024518966674805){
     s0+=9.0;
     s1+=73.0;
    } else {
     s1+=494.0;
    }
   }
  }
 }
} else {
 if(i14<0.998518705368042){
  if(i47<0.008839060552418232){
   if(i6<-4.1334711568197235e-05){
    if(i62<0.00042426586151123047){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    s0+=611.0;
   }
  } else {
   if(i18<-0.0005089640617370605){
    s0+=21.0;
   } else {
    if(i73<0.9446166753768921){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i2<0.00044280290603637695){
   if(i73<1.0289223194122314){
    if(i33<0.0004476824833545834){
     s0+=72.0;
     s1+=11.0;
    } else {
     s0+=310.0;
     s1+=2158.0;
    }
   } else {
    if(i37<1.2879061698913574){
     s0+=572.0;
     s1+=418.0;
    } else {
     s0+=33.0;
     s1+=382.0;
    }
   }
  } else {
   if(i6<-5.916287045693025e-05){
    if(i0<0.1331298053264618){
     s0+=81.0;
     s1+=1314.0;
    } else {
     s0+=10.0;
     s1+=9173.0;
    }
   } else {
    if(i73<1.0463045835494995){
     s0+=37.0;
     s1+=437.0;
    } else {
     s0+=72.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i29<1.0081071853637695){
 if(i2<0.0005736351013183594){
  if(i20<0.02201947569847107){
   if(i9<1.0451585054397583){
    if(i54<0.00028044439386576414){
     s0+=52724.0;
     s1+=172.0;
    } else {
     s0+=4145.0;
     s1+=447.0;
    }
   } else {
    if(i29<0.9896523952484131){
     s0+=1107.0;
     s1+=374.0;
    } else {
     s0+=3736.0;
     s1+=296.0;
    }
   }
  } else {
   if(i10<1.0332090854644775){
    if(i0<0.07324299216270447){
     s0+=4534.0;
     s1+=298.0;
    } else {
     s0+=61.0;
     s1+=144.0;
    }
   } else {
    if(i18<-0.00020080804824829102){
     s0+=1272.0;
     s1+=485.0;
    } else {
     s0+=427.0;
     s1+=1300.0;
    }
   }
  }
 } else {
  if(i49<0.9992729425430298){
   if(i11<6.476044654846191e-05){
    s1+=1.0;
   } else {
    s0+=99.0;
   }
  } else {
   if(i30<0.00015551103570032865){
    if(i36<0.00023251771926879883){
     s0+=23.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i21<0.0021783052943646908){
     s0+=14.0;
     s1+=8.0;
    } else {
     s0+=145.0;
     s1+=2486.0;
    }
   }
  }
 }
} else {
 if(i3<0.0850517749786377){
  if(i64<0.0014780163764953613){
   if(i39<0.0011971875792369246){
    if(i33<0.00027381983818486333){
     s0+=15.0;
    } else {
     s0+=15.0;
     s1+=418.0;
    }
   } else {
    if(i11<0.0007532835006713867){
     s0+=260.0;
     s1+=12.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i20<0.025915831327438354){
    if(i46<0.0007423750357702374){
     s0+=204.0;
     s1+=79.0;
    } else {
     s0+=1323.0;
     s1+=32.0;
    }
   } else {
    if(i29<1.0179481506347656){
     s0+=28.0;
     s1+=101.0;
    } else {
     s0+=77.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i15<0.0006941258907318115){
   if(i43<-8.164152859535534e-06){
    if(i48<0.0018832023488357663){
     s0+=245.0;
     s1+=247.0;
    } else {
     s0+=25.0;
     s1+=1249.0;
    }
   } else {
    if(i40<0.05083140730857849){
     s0+=63.0;
     s1+=297.0;
    } else {
     s0+=390.0;
     s1+=147.0;
    }
   }
  } else {
   if(i43<-1.60525007686374e-06){
    if(i56<-9.251511073671281e-05){
     s0+=15.0;
     s1+=8455.0;
    } else {
     s0+=10.0;
     s1+=203.0;
    }
   } else {
    if(i73<1.019733190536499){
     s1+=2.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i0<0.08035913109779358){
  if(i5<4.166364669799805e-05){
   if(i0<0.0625217854976654){
    if(i73<0.9794794917106628){
     s0+=5114.0;
     s1+=441.0;
    } else {
     s0+=57208.0;
     s1+=614.0;
    }
   } else {
    if(i23<1.0485899448394775){
     s0+=1945.0;
     s1+=70.0;
    } else {
     s0+=448.0;
     s1+=329.0;
    }
   }
  } else {
   if(i21<0.003382424358278513){
    if(i15<0.0014293789863586426){
     s0+=272.0;
     s1+=9.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i18<-0.0003935694694519043){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=359.0;
    }
   }
  }
 } else {
  if(i5<-5.561113357543945e-05){
   if(i24<0.9551694393157959){
    if(i66<0.9990489482879639){
     s0+=3.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i38<0.009978420101106167){
     s0+=120.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   }
  } else {
   if(i17<0.9937231540679932){
    s0+=14.0;
   } else {
    if(i23<1.0480353832244873){
     s0+=34.0;
     s1+=20.0;
    } else {
     s0+=23.0;
     s1+=903.0;
    }
   }
  }
 }
} else {
 if(i2<0.00047722458839416504){
  if(i1<0.08518582582473755){
   if(i46<0.0015627118991687894){
    if(i6<-1.9421469914959744e-05){
     s0+=384.0;
     s1+=422.0;
    } else {
     s0+=1261.0;
     s1+=176.0;
    }
   } else {
    if(i73<0.9161852598190308){
     s0+=221.0;
     s1+=93.0;
    } else {
     s0+=2478.0;
     s1+=100.0;
    }
   }
  } else {
   if(i21<0.004703739192336798){
    if(i10<1.0847222805023193){
     s0+=245.0;
     s1+=693.0;
    } else {
     s0+=780.0;
     s1+=291.0;
    }
   } else {
    if(i49<0.9986909627914429){
     s0+=60.0;
     s1+=2.0;
    } else {
     s0+=77.0;
     s1+=1470.0;
    }
   }
  }
 } else {
  if(i52<7.60049297241494e-05){
   if(i33<0.0018846580060198903){
    if(i39<0.003333008848130703){
     s0+=1.0;
     s1+=1159.0;
    } else {
     s0+=108.0;
     s1+=26.0;
    }
   } else {
    if(i3<0.07705488801002502){
     s0+=3.0;
     s1+=59.0;
    } else {
     s0+=1.0;
     s1+=7130.0;
    }
   }
  } else {
   if(i0<0.13183292746543884){
    if(i9<1.1223218441009521){
     s0+=229.0;
     s1+=172.0;
    } else {
     s0+=3.0;
     s1+=272.0;
    }
   } else {
    if(i21<0.0030105398036539555){
     s0+=9.0;
    } else {
     s0+=15.0;
     s1+=2310.0;
    }
   }
  }
 }
}
if(i73<1.0135798454284668){
 if(i30<0.00033092533703893423){
  if(i15<0.001131296157836914){
   if(i3<0.0832170844078064){
    if(i17<1.0034899711608887){
     s0+=57523.0;
     s1+=653.0;
    } else {
     s0+=65.0;
     s1+=91.0;
    }
   } else {
    if(i13<0.9949632883071899){
     s0+=237.0;
     s1+=8.0;
    } else {
     s0+=56.0;
     s1+=252.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=190.0;
   } else {
    if(i43<-1.8094928236678243e-05){
     s1+=28.0;
    } else {
     s0+=82.0;
    }
   }
  }
 } else {
  if(i1<0.07557624578475952){
   if(i17<1.0060901641845703){
    if(i2<0.00020271539688110352){
     s0+=9721.0;
     s1+=941.0;
    } else {
     s0+=255.0;
     s1+=485.0;
    }
   } else {
    if(i2<0.0004864931106567383){
     s0+=141.0;
     s1+=5.0;
    } else {
     s0+=38.0;
     s1+=344.0;
    }
   }
  } else {
   if(i14<0.9984594583511353){
    if(i66<1.0012316703796387){
     s0+=228.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i59<0.03669780492782593){
     s0+=88.0;
     s1+=3448.0;
    } else {
     s0+=149.0;
     s1+=275.0;
    }
   }
  }
 }
} else {
 if(i21<0.004698213189840317){
  if(i2<0.0009347200393676758){
   if(i31<0.0006284824921749532){
    if(i33<0.0014119879342615604){
     s0+=187.0;
     s1+=386.0;
    } else {
     s0+=165.0;
     s1+=9.0;
    }
   } else {
    if(i8<0.21278280019760132){
     s0+=1810.0;
     s1+=249.0;
    } else {
     s0+=156.0;
     s1+=171.0;
    }
   }
  } else {
   if(i52<8.623264147900045e-05){
    s1+=552.0;
   } else {
    s0+=17.0;
   }
  }
 } else {
  if(i12<0.9989871978759766){
   if(i58<0.08068492263555527){
    if(i56<-0.0006172676221467555){
     s1+=31.0;
    } else {
     s0+=272.0;
     s1+=78.0;
    }
   } else {
    if(i43<4.175901267444715e-06){
     s0+=23.0;
     s1+=574.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i43<1.024168341245968e-06){
    if(i22<-1.4632940292358398e-05){
     s0+=4.0;
    } else {
     s0+=27.0;
     s1+=8165.0;
    }
   } else {
    s0+=33.0;
   }
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i8<0.07074698805809021){
  if(i63<0.00743071548640728){
   if(i1<0.0789894163608551){
    if(i65<0.0007177199004217982){
     s0+=58783.0;
     s1+=578.0;
    } else {
     s0+=5976.0;
     s1+=537.0;
    }
   } else {
    if(i37<1.0670123100280762){
     s0+=43.0;
     s1+=1.0;
    } else {
     s0+=60.0;
     s1+=548.0;
    }
   }
  } else {
   if(i5<1.2755393981933594e-05){
    if(i20<0.01707328110933304){
     s0+=2287.0;
     s1+=200.0;
    } else {
     s0+=1163.0;
     s1+=485.0;
    }
   } else {
    if(i35<1.027948260307312){
     s0+=121.0;
     s1+=280.0;
    } else {
     s0+=63.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<-1.38188770506531e-05){
   if(i6<-3.9116603147704154e-05){
    if(i36<0.00018003582954406738){
     s0+=43.0;
     s1+=1295.0;
    } else {
     s0+=198.0;
     s1+=444.0;
    }
   } else {
    if(i55<-0.01079983077943325){
     s0+=209.0;
     s1+=41.0;
    } else {
     s0+=314.0;
     s1+=809.0;
    }
   }
  } else {
   if(i27<0.05385488271713257){
    if(i30<0.00038249234785325825){
     s0+=14.0;
     s1+=6.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i25<1.019505262374878){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=1242.0;
     s1+=176.0;
    }
   }
  }
 }
} else {
 if(i14<0.9988690614700317){
  s0+=257.0;
 } else {
  if(i3<0.06269580125808716){
   if(i73<0.9992343783378601){
    if(i69<-0.012410927563905716){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=34.0;
     s1+=374.0;
    }
   } else {
    if(i32<1.1170852184295654){
     s0+=17.0;
     s1+=71.0;
    } else {
     s0+=161.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.131856769323349){
    if(i45<0.019600212574005127){
     s0+=78.0;
     s1+=1758.0;
    } else {
     s0+=100.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.16358953714370728){
     s0+=26.0;
     s1+=960.0;
    } else {
     s0+=2.0;
     s1+=8364.0;
    }
   }
  }
 }
}
if(i16<1.0075421333312988){
 if(i8<0.08104383945465088){
  if(i5<4.0471553802490234e-05){
   if(i64<-0.0013701319694519043){
    if(i3<0.05546301603317261){
     s0+=5246.0;
     s1+=660.0;
    } else {
     s0+=507.0;
     s1+=502.0;
    }
   } else {
    if(i0<0.08440607786178589){
     s0+=61869.0;
     s1+=988.0;
    } else {
     s0+=90.0;
     s1+=308.0;
    }
   }
  } else {
   if(i42<1.0762357711791992){
    s0+=225.0;
   } else {
    if(i63<0.0036813346669077873){
     s0+=76.0;
     s1+=112.0;
    } else {
     s0+=65.0;
     s1+=623.0;
    }
   }
  }
 } else {
  if(i4<0.9963035583496094){
   if(i52<0.0001769012160366401){
    if(i48<0.0035898983478546143){
     s0+=275.0;
     s1+=10.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i56<1.2788630556315184e-05){
     s0+=6.0;
     s1+=92.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   }
  } else {
   if(i48<0.00029800768243148923){
    if(i11<-0.0002856254577636719){
     s0+=4.0;
     s1+=44.0;
    } else {
     s0+=206.0;
     s1+=83.0;
    }
   } else {
    if(i58<0.07070175558328629){
     s0+=279.0;
     s1+=557.0;
    } else {
     s0+=140.0;
     s1+=2296.0;
    }
   }
  }
 }
} else {
 if(i14<1.001679539680481){
  if(i1<0.08449903130531311){
   if(i23<1.0731133222579956){
    if(i3<0.0308341383934021){
     s0+=14.0;
    } else {
     s0+=32.0;
     s1+=260.0;
    }
   } else {
    if(i15<0.0015592575073242188){
     s0+=1286.0;
     s1+=71.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i49<0.9988110065460205){
    if(i10<1.3969039916992188){
     s0+=77.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i70<0.00023448503634426743){
     s0+=252.0;
     s1+=391.0;
    } else {
     s0+=97.0;
     s1+=2350.0;
    }
   }
  }
 } else {
  if(i5<6.330013275146484e-05){
   if(i61<-7.836912118364125e-06){
    if(i75<3.0198345484677702e-05){
     s0+=2.0;
     s1+=28.0;
    } else {
     s1+=180.0;
    }
   } else {
    if(i4<1.0021840333938599){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=46.0;
     s1+=115.0;
    }
   }
  } else {
   if(i18<-1.7285346984863281e-06){
    if(i0<0.13699102401733398){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=136.0;
    }
   } else {
    s1+=7522.0;
   }
  }
 }
}
if(i9<1.055552363395691){
 if(i24<1.008375644683838){
  if(i14<1.001981258392334){
   if(i65<0.0007658829563297331){
    if(i1<0.0842125415802002){
     s0+=57579.0;
     s1+=467.0;
    } else {
     s0+=145.0;
     s1+=208.0;
    }
   } else {
    if(i39<0.001820673467591405){
     s0+=1539.0;
     s1+=696.0;
    } else {
     s0+=4184.0;
     s1+=147.0;
    }
   }
  } else {
   if(i15<-0.002346038818359375){
    if(i7<0.9117198586463928){
     s1+=16.0;
    } else {
     s0+=184.0;
     s1+=6.0;
    }
   } else {
    if(i4<1.0019214153289795){
     s0+=38.0;
     s1+=29.0;
    } else {
     s0+=11.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i6<-2.719102667469997e-05){
   if(i42<1.2314128875732422){
    if(i35<1.003358006477356){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=431.0;
    }
   } else {
    if(i0<0.11390507221221924){
     s0+=60.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i8<0.06886941194534302){
    if(i21<0.00516534736379981){
     s0+=574.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=21.0;
    }
   } else {
    if(i27<0.05415308475494385){
     s1+=9.0;
    } else {
     s0+=57.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i4<1.0020825862884521){
  if(i20<0.029125723987817764){
   if(i18<0.00013309717178344727){
    if(i42<1.1037919521331787){
     s0+=1001.0;
     s1+=571.0;
    } else {
     s0+=4186.0;
     s1+=614.0;
    }
   } else {
    if(i57<0.999907374382019){
     s1+=181.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<-0.00014138221740722656){
    if(i38<0.015299566090106964){
     s0+=402.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    if(i56<-4.342899046605453e-05){
     s0+=315.0;
     s1+=2103.0;
    } else {
     s0+=298.0;
     s1+=231.0;
    }
   }
  }
 } else {
  if(i3<0.05929875373840332){
   if(i43<-1.4391996955964714e-05){
    if(i51<0.0017777681350708008){
     s0+=47.0;
     s1+=278.0;
    } else {
     s0+=48.0;
     s1+=6.0;
    }
   } else {
    if(i50<0.013470610603690147){
     s0+=79.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i34<0.019024761393666267){
    if(i7<1.0042588710784912){
     s0+=79.0;
     s1+=163.0;
    } else {
     s0+=103.0;
     s1+=1872.0;
    }
   } else {
    if(i18<-9.679794311523438e-05){
     s0+=7.0;
     s1+=467.0;
    } else {
     s1+=8370.0;
    }
   }
  }
 }
}
if(i7<1.0080137252807617){
 if(i4<1.0024573802947998){
  if(i23<1.0526776313781738){
   if(i65<0.0006792336935177445){
    if(i14<1.000572919845581){
     s0+=51751.0;
     s1+=96.0;
    } else {
     s0+=2350.0;
     s1+=139.0;
    }
   } else {
    if(i12<0.9896966218948364){
     s0+=2553.0;
     s1+=20.0;
    } else {
     s0+=1003.0;
     s1+=275.0;
    }
   }
  } else {
   if(i34<0.04734239727258682){
    if(i13<0.9946277737617493){
     s0+=5346.0;
     s1+=412.0;
    } else {
     s0+=6564.0;
     s1+=2347.0;
    }
   } else {
    if(i11<-0.00022104382514953613){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=640.0;
    }
   }
  }
 } else {
  if(i38<0.006975035183131695){
   if(i21<0.002755418187007308){
    if(i73<1.01105535030365){
     s0+=60.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i28<1.4901387691497803){
     s0+=16.0;
     s1+=689.0;
    } else {
     s0+=96.0;
     s1+=102.0;
    }
   }
  } else {
   if(i0<0.04013174772262573){
    if(i50<0.01470358856022358){
     s0+=27.0;
     s1+=4.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i20<0.03790837526321411){
     s0+=11.0;
     s1+=144.0;
    } else {
     s1+=1121.0;
    }
   }
  }
 }
} else {
 if(i0<0.06357011198997498){
  if(i33<0.0007442417554557323){
   if(i60<0.1781063973903656){
    if(i15<0.0004901885986328125){
     s0+=35.0;
     s1+=27.0;
    } else {
     s1+=387.0;
    }
   } else {
    s0+=60.0;
   }
  } else {
   if(i43<-2.0453719116630964e-05){
    if(i71<3.5363345887162723e-06){
     s1+=63.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   } else {
    if(i29<0.9803851842880249){
     s0+=10.0;
     s1+=7.0;
    } else {
     s0+=697.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i47<0.005797747056931257){
   if(i10<1.1283799409866333){
    if(i55<-0.007762574590742588){
     s0+=103.0;
     s1+=89.0;
    } else {
     s0+=163.0;
     s1+=2532.0;
    }
   } else {
    if(i1<0.17516350746154785){
     s0+=224.0;
     s1+=32.0;
    } else {
     s0+=74.0;
     s1+=261.0;
    }
   }
  } else {
   if(i0<0.08189713954925537){
    if(i73<1.008676290512085){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i37<1.2590415477752686){
     s0+=41.0;
     s1+=276.0;
    } else {
     s0+=1.0;
     s1+=7245.0;
    }
   }
  }
 }
}
if(i5<3.641843795776367e-05){
 if(i10<1.0452215671539307){
  if(i9<1.042891263961792){
   if(i44<-0.0014859139919281006){
    if(i57<0.9998683929443359){
     s0+=879.0;
     s1+=244.0;
    } else {
     s0+=1269.0;
     s1+=45.0;
    }
   } else {
    if(i64<-0.001086801290512085){
     s0+=2985.0;
     s1+=249.0;
    } else {
     s0+=55518.0;
     s1+=285.0;
    }
   }
  } else {
   if(i54<0.00021181674674153328){
    if(i3<0.07796061038970947){
     s0+=2848.0;
     s1+=202.0;
    } else {
     s0+=54.0;
     s1+=208.0;
    }
   } else {
    if(i47<0.000882214866578579){
     s0+=149.0;
     s1+=353.0;
    } else {
     s0+=1167.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i39<0.010404346510767937){
   if(i6<-1.7508740711491555e-05){
    if(i1<0.08227941393852234){
     s0+=1233.0;
     s1+=523.0;
    } else {
     s0+=394.0;
     s1+=1741.0;
    }
   } else {
    if(i17<1.000379204750061){
     s0+=3317.0;
     s1+=292.0;
    } else {
     s0+=315.0;
     s1+=163.0;
    }
   }
  } else {
   if(i8<0.10030043125152588){
    if(i10<1.067557692527771){
     s0+=85.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=79.0;
    }
   } else {
    if(i23<1.0717501640319824){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=672.0;
    }
   }
  }
 }
} else {
 if(i37<1.0624027252197266){
  s0+=393.0;
 } else {
  if(i34<0.016866616904735565){
   if(i4<1.0042097568511963){
    if(i28<1.2392117977142334){
     s1+=411.0;
    } else {
     s0+=390.0;
     s1+=164.0;
    }
   } else {
    if(i15<0.00026601552963256836){
     s0+=35.0;
     s1+=46.0;
    } else {
     s0+=1.0;
     s1+=1524.0;
    }
   }
  } else {
   if(i0<0.057285457849502563){
    if(i66<0.9976876974105835){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=149.0;
    }
   } else {
    if(i42<1.2725603580474854){
     s0+=20.0;
     s1+=893.0;
    } else {
     s0+=15.0;
     s1+=8600.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i1<0.08523356914520264){
  if(i63<0.008474690839648247){
   if(i1<0.06640881299972534){
    if(i58<0.025872331112623215){
     s0+=54775.0;
     s1+=347.0;
    } else {
     s0+=9124.0;
     s1+=499.0;
    }
   } else {
    if(i9<1.0401114225387573){
     s0+=1586.0;
     s1+=144.0;
    } else {
     s0+=1045.0;
     s1+=478.0;
    }
   }
  } else {
   if(i43<-7.158926564443391e-06){
    if(i47<0.0011272190604358912){
     s0+=8.0;
     s1+=132.0;
    } else {
     s0+=619.0;
     s1+=238.0;
    }
   } else {
    if(i30<0.0022884695790708065){
     s0+=961.0;
     s1+=316.0;
    } else {
     s0+=1039.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i36<-0.00014075636863708496){
   if(i13<0.9988219141960144){
    if(i38<0.02476917952299118){
     s0+=396.0;
     s1+=6.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i68<0.032167643308639526){
     s0+=1.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i51<0.06592527031898499){
    if(i1<0.10289600491523743){
     s0+=219.0;
     s1+=647.0;
    } else {
     s0+=78.0;
     s1+=1739.0;
    }
   } else {
    if(i21<0.0038899858482182026){
     s0+=555.0;
     s1+=158.0;
    } else {
     s0+=99.0;
     s1+=621.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i66<1.0030980110168457){
   if(i4<1.002445936203003){
    if(i8<0.12984633445739746){
     s0+=76.0;
     s1+=134.0;
    } else {
     s0+=5.0;
     s1+=253.0;
    }
   } else {
    if(i28<1.613681674003601){
     s0+=28.0;
     s1+=9308.0;
    } else {
     s0+=69.0;
     s1+=1537.0;
    }
   }
  } else {
   if(i6<-8.831780723994598e-05){
    if(i0<0.043539732694625854){
     s0+=22.0;
     s1+=10.0;
    } else {
     s0+=9.0;
     s1+=207.0;
    }
   } else {
    if(i24<0.9917347431182861){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i43<-1.3847988157067448e-05){
   if(i52<-2.2544800231116824e-05){
    s0+=5.0;
   } else {
    if(i17<1.001537799835205){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=204.0;
    }
   }
  } else {
   if(i52<-2.243632707177312e-06){
    if(i21<0.005030251573771238){
     s0+=347.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i37<1.2392117977142334){
     s1+=49.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i8<0.07130923867225647){
 if(i15<0.0010905265808105469){
  if(i17<1.0025343894958496){
   if(i28<1.0856719017028809){
    s0+=38143.0;
   } else {
    if(i3<0.08235931396484375){
     s0+=29184.0;
     s1+=1820.0;
    } else {
     s0+=184.0;
     s1+=552.0;
    }
   }
  } else {
   if(i5<2.9861927032470703e-05){
    if(i28<1.2385294437408447){
     s0+=135.0;
     s1+=61.0;
    } else {
     s0+=999.0;
     s1+=52.0;
    }
   } else {
    if(i33<0.010705286636948586){
     s0+=125.0;
     s1+=655.0;
    } else {
     s0+=65.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i21<0.001844792510382831){
   if(i74<0.9987474679946899){
    s1+=44.0;
   } else {
    if(i11<0.0009227395057678223){
     s0+=137.0;
     s1+=2.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i71<6.778535407647723e-06){
    if(i21<0.0024143289774656296){
     s0+=15.0;
     s1+=88.0;
    } else {
     s0+=2.0;
     s1+=1334.0;
    }
   } else {
    if(i22<3.606081008911133e-06){
     s0+=7.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i6<-2.228838457085658e-05){
  if(i8<0.11815989017486572){
   if(i52<0.00010147279681405053){
    if(i51<0.059020787477493286){
     s0+=124.0;
     s1+=2059.0;
    } else {
     s0+=111.0;
     s1+=60.0;
    }
   } else {
    if(i55<-0.004502139054238796){
     s0+=280.0;
     s1+=147.0;
    } else {
     s0+=36.0;
     s1+=323.0;
    }
   }
  } else {
   if(i43<-0.00024314508482348174){
    s0+=4.0;
   } else {
    if(i34<0.02324375882744789){
     s0+=85.0;
     s1+=1068.0;
    } else {
     s0+=18.0;
     s1+=8274.0;
    }
   }
  }
 } else {
  if(i28<1.255998969078064){
   if(i39<0.005599593743681908){
    if(i33<0.0005142990266904235){
     s0+=454.0;
     s1+=17.0;
    } else {
     s0+=199.0;
     s1+=258.0;
    }
   } else {
    if(i49<0.9995876550674438){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=209.0;
    }
   }
  } else {
   if(i29<0.9826586246490479){
    if(i40<0.04257890582084656){
     s0+=1.0;
     s1+=55.0;
    } else {
     s0+=86.0;
     s1+=21.0;
    }
   } else {
    if(i41<0.03321671485900879){
     s1+=2.0;
    } else {
     s0+=702.0;
     s1+=11.0;
    }
   }
  }
 }
}
if(i1<0.08032277226448059){
 if(i5<4.1812658309936523e-05){
  if(i63<0.007412450388073921){
   if(i60<0.04403430223464966){
    if(i45<-0.01081201434135437){
     s0+=6.0;
     s1+=36.0;
    } else {
     s0+=54917.0;
     s1+=504.0;
    }
   } else {
    if(i46<0.0018437794642522931){
     s0+=4348.0;
     s1+=727.0;
    } else {
     s0+=5769.0;
     s1+=52.0;
    }
   }
  } else {
   if(i4<0.9968733787536621){
    if(i57<0.9997061491012573){
     s0+=968.0;
    } else {
     s0+=642.0;
     s1+=77.0;
    }
   } else {
    if(i20<0.01412547379732132){
     s0+=1268.0;
     s1+=146.0;
    } else {
     s0+=634.0;
     s1+=586.0;
    }
   }
  }
 } else {
  if(i17<0.9985787868499756){
   if(i64<-0.003418534994125366){
    if(i18<-0.0004175901412963867){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i23<1.134000301361084){
     s0+=194.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.001967711839824915){
    if(i37<1.185258150100708){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=97.0;
    }
   } else {
    if(i51<0.017563432455062866){
     s0+=65.0;
     s1+=877.0;
    } else {
     s0+=68.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i49<0.9988081455230713){
  if(i14<0.9980377554893494){
   s0+=441.0;
  } else {
   s1+=14.0;
  }
 } else {
  if(i5<3.6716461181640625e-05){
   if(i59<0.02961254119873047){
    if(i41<0.05720892548561096){
     s0+=45.0;
     s1+=1828.0;
    } else {
     s0+=292.0;
     s1+=643.0;
    }
   } else {
    if(i34<0.0421341210603714){
     s0+=914.0;
     s1+=690.0;
    } else {
     s0+=19.0;
     s1+=325.0;
    }
   }
  } else {
   if(i18<-9.644031524658203e-05){
    if(i3<0.12442198395729065){
     s0+=66.0;
     s1+=117.0;
    } else {
     s0+=15.0;
     s1+=527.0;
    }
   } else {
    if(i21<0.0019321134313941002){
     s0+=31.0;
     s1+=102.0;
    } else {
     s0+=29.0;
     s1+=10137.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i13<1.0045769214630127){
  if(i0<0.07800713181495667){
   if(i62<-0.0020241141319274902){
    if(i68<0.09522876143455505){
     s0+=2323.0;
     s1+=809.0;
    } else {
     s0+=2881.0;
     s1+=53.0;
    }
   } else {
    if(i2<0.0006637275218963623){
     s0+=59305.0;
     s1+=535.0;
    } else {
     s0+=72.0;
     s1+=42.0;
    }
   }
  } else {
   if(i11<-0.0003828704357147217){
    if(i51<0.06083846092224121){
     s0+=134.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    if(i28<1.082772970199585){
     s0+=21.0;
    } else {
     s0+=109.0;
     s1+=675.0;
    }
   }
  }
 } else {
  if(i1<0.05535924434661865){
   if(i69<0.0029002707451581955){
    if(i37<1.1016805171966553){
     s1+=27.0;
    } else {
     s0+=330.0;
     s1+=13.0;
    }
   } else {
    if(i36<7.82310962677002e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=60.0;
    }
   }
  } else {
   if(i36<-0.00016137957572937012){
    s0+=12.0;
   } else {
    if(i11<-6.04093074798584e-05){
     s0+=4.0;
    } else {
     s0+=8.0;
     s1+=509.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004509091377258301){
  if(i3<0.0915621817111969){
   if(i39<0.0019988915883004665){
    if(i72<0.020415067672729492){
     s0+=1292.0;
     s1+=214.0;
    } else {
     s0+=309.0;
     s1+=441.0;
    }
   } else {
    if(i21<0.008307432755827904){
     s0+=2684.0;
     s1+=101.0;
    } else {
     s0+=67.0;
     s1+=77.0;
    }
   }
  } else {
   if(i38<0.006153185851871967){
    if(i31<0.003335402114316821){
     s0+=213.0;
     s1+=1035.0;
    } else {
     s0+=879.0;
     s1+=302.0;
    }
   } else {
    if(i3<0.11273196339607239){
     s0+=39.0;
     s1+=52.0;
    } else {
     s0+=11.0;
     s1+=969.0;
    }
   }
  }
 } else {
  if(i5<6.133317947387695e-05){
   if(i6<-5.9172409237362444e-05){
    if(i3<0.08757033944129944){
     s0+=75.0;
     s1+=122.0;
    } else {
     s0+=28.0;
     s1+=1163.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s1+=250.0;
    } else {
     s0+=256.0;
     s1+=38.0;
    }
   }
  } else {
   if(i0<0.04642340540885925){
    if(i15<-2.8312206268310547e-05){
     s0+=45.0;
     s1+=43.0;
    } else {
     s0+=1.0;
     s1+=154.0;
    }
   } else {
    if(i15<3.635883331298828e-05){
     s0+=58.0;
     s1+=719.0;
    } else {
     s0+=3.0;
     s1+=8666.0;
    }
   }
  }
 }
}
if(i4<1.002474308013916){
 if(i25<1.0406770706176758){
  if(i54<0.0002800737274810672){
   if(i3<0.08408471941947937){
    if(i6<-4.1851260903058574e-05){
     s0+=630.0;
     s1+=171.0;
    } else {
     s0+=55918.0;
     s1+=545.0;
    }
   } else {
    if(i14<0.9989005327224731){
     s0+=202.0;
     s1+=1.0;
    } else {
     s0+=52.0;
     s1+=444.0;
    }
   }
  } else {
   if(i4<0.9975889921188354){
    if(i3<0.08225265145301819){
     s0+=7925.0;
     s1+=283.0;
    } else {
     s0+=209.0;
     s1+=146.0;
    }
   } else {
    if(i9<1.041234016418457){
     s0+=1036.0;
     s1+=369.0;
    } else {
     s0+=546.0;
     s1+=1016.0;
    }
   }
  }
 } else {
  if(i1<0.09861916303634644){
   if(i13<1.0011028051376343){
    if(i37<1.1037919521331787){
     s0+=754.0;
     s1+=232.0;
    } else {
     s0+=2156.0;
     s1+=107.0;
    }
   } else {
    if(i38<0.0013052516151219606){
     s0+=35.0;
     s1+=145.0;
    } else {
     s0+=266.0;
     s1+=45.0;
    }
   }
  } else {
   if(i21<0.004702878650277853){
    if(i69<-0.02059192955493927){
     s0+=708.0;
     s1+=194.0;
    } else {
     s0+=108.0;
     s1+=529.0;
    }
   } else {
    if(i22<-2.014636993408203e-05){
     s0+=56.0;
    } else {
     s0+=43.0;
     s1+=1763.0;
    }
   }
  }
 }
} else {
 if(i21<0.002189040184020996){
  if(i43<-1.4819078387517948e-05){
   if(i13<1.00271475315094){
    s0+=3.0;
   } else {
    s1+=185.0;
   }
  } else {
   s0+=205.0;
  }
 } else {
  if(i18<6.258487701416016e-06){
   if(i39<0.008457137271761894){
    if(i33<0.007896887138485909){
     s0+=41.0;
     s1+=425.0;
    } else {
     s0+=129.0;
     s1+=28.0;
    }
   } else {
    if(i72<0.10026222467422485){
     s0+=22.0;
     s1+=89.0;
    } else {
     s1+=489.0;
    }
   }
  } else {
   if(i0<0.0005053281784057617){
    if(i66<0.9976881742477417){
     s0+=7.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i11<0.0003744959831237793){
     s0+=13.0;
     s1+=645.0;
    } else {
     s0+=3.0;
     s1+=9317.0;
    }
   }
  }
 }
}
if(i0<0.0782729983329773){
 if(i12<1.006144404411316){
  if(i30<0.0002956066164188087){
   if(i21<0.004629840608686209){
    if(i7<1.0081751346588135){
     s0+=54262.0;
     s1+=362.0;
    } else {
     s0+=81.0;
     s1+=30.0;
    }
   } else {
    if(i4<0.997551679611206){
     s0+=1834.0;
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=182.0;
    }
   }
  } else {
   if(i1<0.05798640847206116){
    if(i38<0.0010893440339714289){
     s0+=2919.0;
     s1+=573.0;
    } else {
     s0+=7592.0;
     s1+=432.0;
    }
   } else {
    if(i40<0.024935156106948853){
     s0+=130.0;
     s1+=575.0;
    } else {
     s0+=2008.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i37<1.1532785892486572){
   s1+=652.0;
  } else {
   if(i36<0.0002384483814239502){
    if(i43<-3.103805283899419e-05){
     s1+=13.0;
    } else {
     s0+=633.0;
     s1+=12.0;
    }
   } else {
    s1+=147.0;
   }
  }
 }
} else {
 if(i22<-1.3917684555053711e-05){
  if(i11<-0.00041237473487854004){
   if(i66<1.001167893409729){
    s0+=403.0;
   } else {
    if(i69<-0.01365354098379612){
     s1+=3.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i56<-0.00023791207058820873){
    s1+=16.0;
   } else {
    if(i48<0.00020320530165918171){
     s1+=1.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i21<0.0016448013484477997){
   if(i6<-4.9311405746266246e-05){
    if(i38<0.00048285454977303743){
     s0+=1.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i8<0.06870779395103455){
     s0+=3.0;
     s1+=60.0;
    } else {
     s0+=634.0;
     s1+=120.0;
    }
   }
  } else {
   if(i1<0.1181688904762268){
    if(i55<-0.005527088418602943){
     s0+=435.0;
     s1+=93.0;
    } else {
     s0+=137.0;
     s1+=1662.0;
    }
   } else {
    if(i69<-0.037271395325660706){
     s0+=171.0;
     s1+=2263.0;
    } else {
     s0+=28.0;
     s1+=9327.0;
    }
   }
  }
 }
}
if(i22<1.8417835235595703e-05){
 if(i6<-6.190969725139439e-05){
  if(i52<0.00017607485642656684){
   if(i3<0.0491732656955719){
    if(i7<1.007918357849121){
     s0+=81.0;
     s1+=6.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i39<0.0003385268501006067){
     s0+=11.0;
    } else {
     s0+=20.0;
     s1+=2086.0;
    }
   }
  } else {
   if(i0<0.06624579429626465){
    if(i12<0.9791370034217834){
     s0+=719.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   } else {
    if(i4<0.993820309638977){
     s0+=2.0;
     s1+=4.0;
    } else {
     s1+=178.0;
    }
   }
  }
 } else {
  if(i3<0.08225265145301819){
   if(i31<0.0002811383455991745){
    if(i35<1.00840163230896){
     s0+=51861.0;
     s1+=190.0;
    } else {
     s0+=174.0;
     s1+=78.0;
    }
   } else {
    if(i42<1.1034480333328247){
     s0+=4043.0;
     s1+=1216.0;
    } else {
     s0+=10713.0;
     s1+=290.0;
    }
   }
  } else {
   if(i6<-1.3791455785394646e-05){
    if(i42<1.1820628643035889){
     s0+=37.0;
     s1+=1284.0;
    } else {
     s0+=488.0;
     s1+=609.0;
    }
   } else {
    if(i22<-1.6629695892333984e-05){
     s0+=520.0;
    } else {
     s0+=722.0;
     s1+=356.0;
    }
   }
  }
 }
} else {
 if(i1<0.06997126340866089){
  if(i51<-0.014777123928070068){
   if(i13<1.000229835510254){
    if(i54<0.0002923192805610597){
     s0+=139.0;
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=125.0;
    }
   } else {
    if(i43<-7.845622349123005e-06){
     s0+=26.0;
     s1+=447.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i13<1.0036917924880981){
    if(i2<0.0005682110786437988){
     s0+=895.0;
     s1+=38.0;
    } else {
     s0+=136.0;
     s1+=39.0;
    }
   } else {
    if(i61<-5.6251151363539975e-06){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i2<0.0005514621734619141){
   if(i20<0.03278684988617897){
    if(i8<0.10898551344871521){
     s0+=238.0;
     s1+=72.0;
    } else {
     s0+=22.0;
     s1+=68.0;
    }
   } else {
    if(i1<0.09298712015151978){
     s0+=36.0;
     s1+=22.0;
    } else {
     s0+=15.0;
     s1+=316.0;
    }
   }
  } else {
   if(i13<1.0004771947860718){
    if(i48<0.0025465884245932102){
     s0+=46.0;
     s1+=150.0;
    } else {
     s0+=14.0;
     s1+=645.0;
    }
   } else {
    if(i12<1.0061168670654297){
     s0+=37.0;
     s1+=1129.0;
    } else {
     s1+=7682.0;
    }
   }
  }
 }
}
if(i3<0.08502998948097229){
 if(i11<0.000518500804901123){
  if(i23<1.0451585054397583){
   if(i65<0.0007678050315007567){
    if(i66<1.000292420387268){
     s0+=40245.0;
     s1+=20.0;
    } else {
     s0+=10988.0;
     s1+=54.0;
    }
   } else {
    if(i55<-0.0010251562343910336){
     s0+=1746.0;
     s1+=8.0;
    } else {
     s0+=823.0;
     s1+=133.0;
    }
   }
  } else {
   if(i1<0.06562373042106628){
    if(i46<0.0024009929038584232){
     s0+=8242.0;
     s1+=1037.0;
    } else {
     s0+=4808.0;
     s1+=124.0;
    }
   } else {
    if(i46<0.0016622556140646338){
     s0+=442.0;
     s1+=535.0;
    } else {
     s0+=641.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i5<4.7266483306884766e-05){
   if(i33<0.006727788597345352){
    if(i73<0.9952112436294556){
     s0+=42.0;
     s1+=87.0;
    } else {
     s0+=312.0;
     s1+=73.0;
    }
   } else {
    if(i50<0.01344310399144888){
     s0+=457.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=34.0;
    }
   }
  } else {
   if(i21<0.0016605041455477476){
    if(i70<0.0002601069281809032){
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i18<3.874301910400391e-06){
     s0+=125.0;
     s1+=232.0;
    } else {
     s0+=2.0;
     s1+=582.0;
    }
   }
  }
 }
} else {
 if(i14<0.9986332058906555){
  if(i36<-0.00013998150825500488){
   if(i72<0.2579253911972046){
    if(i4<0.9970239400863647){
     s0+=637.0;
    } else {
     s0+=28.0;
     s1+=8.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i13<0.9878424406051636){
    if(i62<0.0063828229904174805){
     s0+=1.0;
     s1+=25.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i75<5.196578422328457e-05){
     s1+=3.0;
    } else {
     s0+=36.0;
    }
   }
  }
 } else {
  if(i66<0.999869167804718){
   if(i21<0.0036136782728135586){
    if(i55<-0.005172954872250557){
     s0+=188.0;
     s1+=109.0;
    } else {
     s0+=39.0;
     s1+=1133.0;
    }
   } else {
    if(i9<1.0927703380584717){
     s0+=35.0;
     s1+=1598.0;
    } else {
     s0+=17.0;
     s1+=7770.0;
    }
   }
  } else {
   if(i13<1.0029923915863037){
    if(i75<9.998708264902234e-05){
     s0+=674.0;
     s1+=373.0;
    } else {
     s0+=246.0;
     s1+=1402.0;
    }
   } else {
    if(i6<-4.192667984170839e-05){
     s0+=10.0;
     s1+=1843.0;
    } else {
     s0+=39.0;
     s1+=63.0;
    }
   }
  }
 }
}
if(i6<-7.076597830746323e-05){
 if(i9<1.0412224531173706){
  if(i15<0.00029158592224121094){
   if(i48<0.007002238184213638){
    if(i14<1.0042130947113037){
     s0+=779.0;
     s1+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=24.0;
   }
  } else {
   s1+=39.0;
  }
 } else {
  if(i4<1.0008608102798462){
   if(i22<2.753734588623047e-05){
    if(i10<1.034586787223816){
     s0+=55.0;
     s1+=21.0;
    } else {
     s0+=24.0;
     s1+=506.0;
    }
   } else {
    if(i0<0.10349476337432861){
     s0+=157.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=33.0;
    }
   }
  } else {
   if(i3<0.04010540246963501){
    if(i18<-0.0002651214599609375){
     s0+=37.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=100.0;
    }
   } else {
    if(i17<0.9977385997772217){
     s0+=50.0;
     s1+=286.0;
    } else {
     s0+=98.0;
     s1+=10578.0;
    }
   }
  }
 }
} else {
 if(i32<1.0598037242889404){
  if(i32<1.0557184219360352){
   if(i39<0.0006630922434851527){
    s0+=39564.0;
   } else {
    if(i19<0.9828668236732483){
     s0+=151.0;
     s1+=1.0;
    } else {
     s0+=3293.0;
    }
   }
  } else {
   if(i26<0.9895745515823364){
    if(i33<0.0005133909871801734){
     s0+=6.0;
     s1+=53.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   } else {
    if(i26<0.9921439290046692){
     s0+=25.0;
     s1+=5.0;
    } else {
     s0+=933.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i9<1.0452277660369873){
   if(i28<1.1013743877410889){
    if(i28<1.0850647687911987){
     s0+=1334.0;
    } else {
     s0+=740.0;
     s1+=761.0;
    }
   } else {
    if(i2<0.00046241283416748047){
     s0+=16299.0;
     s1+=182.0;
    } else {
     s0+=59.0;
     s1+=100.0;
    }
   }
  } else {
   if(i21<0.004536287859082222){
    if(i66<0.9999409317970276){
     s0+=2582.0;
     s1+=1525.0;
    } else {
     s0+=3981.0;
     s1+=744.0;
    }
   } else {
    if(i22<-1.424551010131836e-05){
     s0+=287.0;
     s1+=4.0;
    } else {
     s0+=609.0;
     s1+=2119.0;
    }
   }
  }
 }
}
if(i8<0.0710599422454834){
 if(i12<1.006005883216858){
  if(i1<0.0783689022064209){
   if(i63<0.007565170060843229){
    if(i23<1.0485899448394775){
     s0+=54599.0;
     s1+=267.0;
    } else {
     s0+=10285.0;
     s1+=898.0;
    }
   } else {
    if(i17<1.0005007982254028){
     s0+=2898.0;
     s1+=471.0;
    } else {
     s0+=407.0;
     s1+=437.0;
    }
   }
  } else {
   if(i32<1.0670123100280762){
    if(i16<1.0041489601135254){
     s0+=124.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i20<0.011067444458603859){
     s0+=62.0;
     s1+=62.0;
    } else {
     s0+=31.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i48<0.0009384501609019935){
   if(i37<1.1663256883621216){
    if(i15<0.000607609748840332){
     s0+=8.0;
    } else {
     s1+=314.0;
    }
   } else {
    if(i13<1.0199940204620361){
     s0+=593.0;
     s1+=22.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i5<-5.245208740234375e-06){
    s0+=28.0;
   } else {
    if(i18<6.735324859619141e-06){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=8.0;
     s1+=1387.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004127025604248047){
  if(i20<0.0263848677277565){
   if(i59<0.04080036282539368){
    if(i45<0.01333165168762207){
     s0+=159.0;
     s1+=524.0;
    } else {
     s0+=402.0;
     s1+=109.0;
    }
   } else {
    if(i8<0.09128391742706299){
     s0+=405.0;
     s1+=22.0;
    } else {
     s0+=376.0;
     s1+=122.0;
    }
   }
  } else {
   if(i6<-1.0098306120198686e-05){
    if(i5<-5.08725643157959e-05){
     s0+=63.0;
     s1+=97.0;
    } else {
     s0+=113.0;
     s1+=1518.0;
    }
   } else {
    if(i36<-0.00013622641563415527){
     s0+=180.0;
    } else {
     s0+=124.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i12<1.0065362453460693){
   if(i72<0.10154896229505539){
    if(i25<1.0832065343856812){
     s0+=56.0;
     s1+=631.0;
    } else {
     s0+=121.0;
     s1+=96.0;
    }
   } else {
    if(i37<1.2529315948486328){
     s0+=15.0;
     s1+=155.0;
    } else {
     s1+=1163.0;
    }
   }
  } else {
   if(i3<0.09542721509933472){
    if(i64<0.003708362579345703){
     s1+=60.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i6<-4.322710447013378e-05){
     s0+=1.0;
     s1+=7974.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i6<-7.277324766619131e-05){
 if(i1<0.05832093954086304){
  if(i53<-0.0023750662803649902){
   if(i18<-0.00044915080070495605){
    if(i3<0.016347140073776245){
     s0+=76.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i12<0.9806665182113647){
     s0+=16.0;
     s1+=12.0;
    } else {
     s0+=20.0;
     s1+=224.0;
    }
   }
  } else {
   if(i12<0.9982749223709106){
    if(i60<0.17236807942390442){
     s0+=119.0;
     s1+=16.0;
    } else {
     s0+=640.0;
     s1+=2.0;
    }
   } else {
    if(i28<1.5603917837142944){
     s1+=31.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i43<-0.00011970878404099494){
   s0+=36.0;
  } else {
   if(i71<2.6693951440392993e-05){
    if(i17<0.9971555471420288){
     s0+=26.0;
     s1+=241.0;
    } else {
     s0+=54.0;
     s1+=10412.0;
    }
   } else {
    if(i34<0.028976207599043846){
     s0+=88.0;
     s1+=30.0;
    } else {
     s1+=460.0;
    }
   }
  }
 }
} else {
 if(i0<0.0766308605670929){
  if(i45<-0.006169945001602173){
   if(i2<0.000519871711730957){
    if(i47<0.0008648711955174804){
     s0+=979.0;
     s1+=437.0;
    } else {
     s0+=2291.0;
     s1+=220.0;
    }
   } else {
    if(i74<0.9986906051635742){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=206.0;
    }
   }
  } else {
   if(i16<1.005981206893921){
    if(i28<1.0856719017028809){
     s0+=37444.0;
    } else {
     s0+=25906.0;
     s1+=1096.0;
    }
   } else {
    if(i21<0.003315770998597145){
     s0+=1349.0;
     s1+=182.0;
    } else {
     s0+=79.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i14<0.9985739588737488){
   if(i6<-4.225862357998267e-05){
    if(i59<0.03668069839477539){
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   } else {
    if(i49<1.0000361204147339){
     s0+=542.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i27<0.06328234076499939){
    if(i44<0.006331264972686768){
     s0+=46.0;
     s1+=1505.0;
    } else {
     s0+=21.0;
     s1+=9.0;
    }
   } else {
    if(i75<0.00010494783782633021){
     s0+=932.0;
     s1+=883.0;
    } else {
     s0+=259.0;
     s1+=952.0;
    }
   }
  }
 }
}
if(i35<1.0082122087478638){
 if(i20<0.025474444031715393){
  if(i23<1.0577178001403809){
   if(i31<0.00031397861312143505){
    if(i65<0.0009385541779920459){
     s0+=51092.0;
     s1+=96.0;
    } else {
     s0+=135.0;
     s1+=46.0;
    }
   } else {
    if(i5<5.7220458984375e-06){
     s0+=4360.0;
     s1+=250.0;
    } else {
     s0+=156.0;
     s1+=93.0;
    }
   }
  } else {
   if(i2<0.00046122074127197266){
    if(i42<1.1037919521331787){
     s0+=1312.0;
     s1+=612.0;
    } else {
     s0+=6013.0;
     s1+=497.0;
    }
   } else {
    if(i18<-0.00010305643081665039){
     s0+=130.0;
     s1+=121.0;
    } else {
     s0+=44.0;
     s1+=567.0;
    }
   }
  }
 } else {
  if(i12<0.9882952570915222){
   if(i4<0.9983500838279724){
    if(i41<0.07108712196350098){
     s0+=4126.0;
     s1+=133.0;
    } else {
     s0+=97.0;
     s1+=81.0;
    }
   } else {
    if(i9<1.0766310691833496){
     s0+=195.0;
     s1+=79.0;
    } else {
     s0+=41.0;
     s1+=399.0;
    }
   }
  } else {
   if(i21<0.004590756259858608){
    if(i33<0.000440492935013026){
     s0+=150.0;
     s1+=11.0;
    } else {
     s0+=422.0;
     s1+=988.0;
    }
   } else {
    if(i49<0.9987754821777344){
     s0+=30.0;
    } else {
     s0+=63.0;
     s1+=2141.0;
    }
   }
  }
 }
} else {
 if(i3<0.08332711458206177){
  if(i28<1.1039612293243408){
   if(i21<0.0014680034946650267){
    if(i18<7.587671279907227e-05){
     s0+=319.0;
     s1+=15.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i32<1.0558756589889526){
     s0+=16.0;
    } else {
     s0+=3.0;
     s1+=463.0;
    }
   }
  } else {
   if(i14<1.0031044483184814){
    if(i18<0.0002269744873046875){
     s0+=1642.0;
     s1+=72.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=63.0;
   }
  }
 } else {
  if(i43<-6.647289865213679e-06){
   if(i47<0.006582930218428373){
    if(i21<0.0029850879218429327){
     s0+=212.0;
     s1+=242.0;
    } else {
     s0+=33.0;
     s1+=2201.0;
    }
   } else {
    if(i15<3.1113624572753906e-05){
     s0+=31.0;
     s1+=394.0;
    } else {
     s1+=6972.0;
    }
   }
  } else {
   if(i46<0.0021795425564050674){
    if(i40<0.053502023220062256){
     s0+=4.0;
     s1+=400.0;
    } else {
     s0+=44.0;
     s1+=49.0;
    }
   } else {
    if(i7<1.0127872228622437){
     s0+=311.0;
     s1+=40.0;
    } else {
     s0+=33.0;
     s1+=162.0;
    }
   }
  }
 }
}
if(i35<1.0080324411392212){
 if(i0<0.08338120579719543){
  if(i4<1.002494215965271){
   if(i50<0.0015202043578028679){
    if(i46<0.00027996895369142294){
     s0+=45838.0;
     s1+=24.0;
    } else {
     s0+=15275.0;
     s1+=750.0;
    }
   } else {
    if(i4<0.9965153932571411){
     s0+=3168.0;
     s1+=82.0;
    } else {
     s0+=3230.0;
     s1+=1023.0;
    }
   }
  } else {
   if(i31<0.00021771017054561526){
    if(i72<0.008563237264752388){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=50.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9985259771347046){
     s0+=68.0;
     s1+=144.0;
    } else {
     s0+=2.0;
     s1+=455.0;
    }
   }
  }
 } else {
  if(i21<0.005987980403006077){
   if(i14<0.9985082149505615){
    if(i0<0.0899471640586853){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=298.0;
     s1+=1.0;
    }
   } else {
    if(i73<1.0215275287628174){
     s0+=175.0;
     s1+=1017.0;
    } else {
     s0+=313.0;
     s1+=122.0;
    }
   }
  } else {
   if(i0<0.10320127010345459){
    if(i24<0.9877061247825623){
     s0+=7.0;
     s1+=150.0;
    } else {
     s0+=71.0;
     s1+=73.0;
    }
   } else {
    if(i37<1.06563401222229){
     s0+=2.0;
    } else {
     s0+=30.0;
     s1+=2171.0;
    }
   }
  }
 }
} else {
 if(i0<0.07429763674736023){
  if(i62<0.0026787221431732178){
   if(i42<1.144650936126709){
    if(i43<-8.559088200854603e-06){
     s1+=446.0;
    } else {
     s0+=62.0;
     s1+=31.0;
    }
   } else {
    if(i22<2.580881118774414e-05){
     s0+=320.0;
     s1+=26.0;
    } else {
     s0+=1.0;
     s1+=86.0;
    }
   }
  } else {
   if(i70<0.0005797557532787323){
    if(i61<-8.28365682536969e-06){
     s1+=14.0;
    } else {
     s0+=1253.0;
     s1+=29.0;
    }
   } else {
    if(i12<0.9997575283050537){
     s0+=270.0;
     s1+=17.0;
    } else {
     s0+=26.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i18<6.431341171264648e-05){
   if(i70<0.0005435888306237757){
    if(i73<1.0295186042785645){
     s0+=95.0;
     s1+=278.0;
    } else {
     s0+=506.0;
     s1+=222.0;
    }
   } else {
    if(i58<0.023418284952640533){
     s0+=32.0;
     s1+=114.0;
    } else {
     s0+=6.0;
     s1+=834.0;
    }
   }
  } else {
   if(i15<0.0008144378662109375){
    if(i4<1.0006240606307983){
     s0+=42.0;
     s1+=92.0;
    } else {
     s0+=25.0;
     s1+=456.0;
    }
   } else {
    if(i14<0.998457670211792){
     s0+=1.0;
    } else {
     s0+=28.0;
     s1+=8210.0;
    }
   }
  }
 }
}
if(i3<0.08417728543281555){
 if(i4<1.0024688243865967){
  if(i44<-0.0014471113681793213){
   if(i34<0.04861346259713173){
    if(i60<0.24348123371601105){
     s0+=2626.0;
     s1+=730.0;
    } else {
     s0+=1694.0;
     s1+=86.0;
    }
   } else {
    if(i37<1.5993144512176514){
     s0+=2.0;
     s1+=59.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<0.016620313748717308){
    if(i14<1.0006418228149414){
     s0+=53529.0;
     s1+=265.0;
    } else {
     s0+=2949.0;
     s1+=186.0;
    }
   } else {
    if(i38<0.0010998870711773634){
     s0+=1505.0;
     s1+=621.0;
    } else {
     s0+=6349.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i43<-1.4114700206846464e-05){
   if(i28<1.5682398080825806){
    if(i51<0.029393881559371948){
     s0+=13.0;
     s1+=858.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i73<0.8995339870452881){
     s0+=5.0;
     s1+=45.0;
    } else {
     s0+=75.0;
     s1+=10.0;
    }
   }
  } else {
   if(i21<0.0035430777352303267){
    s0+=168.0;
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i43<3.211942157577141e-06){
  if(i4<1.0015792846679688){
   if(i49<0.9990403652191162){
    if(i33<0.011081897653639317){
     s0+=286.0;
     s1+=12.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i20<0.027817506343126297){
     s0+=926.0;
     s1+=968.0;
    } else {
     s0+=237.0;
     s1+=2011.0;
    }
   }
  } else {
   if(i2<0.0008388757705688477){
    if(i3<0.1407824158668518){
     s0+=140.0;
     s1+=492.0;
    } else {
     s0+=15.0;
     s1+=847.0;
    }
   } else {
    if(i5<0.00011211633682250977){
     s0+=40.0;
     s1+=2689.0;
    } else {
     s0+=2.0;
     s1+=7123.0;
    }
   }
  }
 } else {
  if(i36<-0.00013336539268493652){
   s0+=425.0;
  } else {
   if(i36<-7.134675979614258e-05){
    if(i14<0.9990426301956177){
     s1+=15.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=36.0;
   }
  }
 }
}
if(i3<0.08502665162086487){
 if(i4<1.002474308013916){
  if(i9<1.0412344932556152){
   if(i65<0.0007554101757705212){
    if(i19<1.012126088142395){
     s0+=54349.0;
     s1+=167.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i39<0.0016901453491300344){
     s0+=1264.0;
     s1+=423.0;
    } else {
     s0+=3908.0;
     s1+=21.0;
    }
   }
  } else {
   if(i0<0.06117814779281616){
    if(i20<0.014950763434171677){
     s0+=5641.0;
     s1+=268.0;
    } else {
     s0+=2253.0;
     s1+=712.0;
    }
   } else {
    if(i27<0.042997777462005615){
     s0+=60.0;
     s1+=337.0;
    } else {
     s0+=1226.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i21<0.0016693822108209133){
   if(i75<4.3049345549661666e-05){
    s1+=5.0;
   } else {
    if(i22<3.4749507904052734e-05){
     s0+=116.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i62<0.004096716642379761){
    if(i51<0.03388822078704834){
     s0+=45.0;
     s1+=943.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   } else {
    if(i70<0.0005573486560024321){
     s0+=47.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i12<1.0060863494873047){
  if(i6<-8.372823685931507e-06){
   if(i23<1.049466609954834){
    if(i41<0.05671682953834534){
     s0+=22.0;
     s1+=25.0;
    } else {
     s0+=56.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.045533955097198486){
     s0+=53.0;
     s1+=2595.0;
    } else {
     s0+=669.0;
     s1+=1610.0;
    }
   }
  } else {
   if(i2<-0.0008893013000488281){
    s0+=510.0;
   } else {
    if(i44<0.0023295581340789795){
     s0+=90.0;
     s1+=145.0;
    } else {
     s0+=450.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i6<-2.230671998404432e-05){
   if(i6<-4.2749379645101726e-05){
    if(i15<-5.888938903808594e-05){
     s0+=4.0;
     s1+=81.0;
    } else {
     s1+=9499.0;
    }
   } else {
    if(i24<1.0401103496551514){
     s0+=1.0;
     s1+=146.0;
    } else {
     s0+=22.0;
     s1+=28.0;
    }
   }
  } else {
   if(i75<8.507139864377677e-05){
    s0+=57.0;
   } else {
    if(i20<0.03840307518839836){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
}
if(i5<3.701448440551758e-05){
 if(i0<0.08341461420059204){
  if(i9<1.040665864944458){
   if(i23<1.0417436361312866){
    if(i64<-0.0013231337070465088){
     s0+=1451.0;
     s1+=86.0;
    } else {
     s0+=48369.0;
     s1+=43.0;
    }
   } else {
    if(i4<0.997194766998291){
     s0+=4594.0;
     s1+=79.0;
    } else {
     s0+=4486.0;
     s1+=425.0;
    }
   }
  } else {
   if(i39<0.001984427450224757){
    if(i21<0.003906911239027977){
     s0+=4443.0;
     s1+=838.0;
    } else {
     s0+=243.0;
     s1+=552.0;
    }
   } else {
    if(i73<0.9662589430809021){
     s0+=1120.0;
     s1+=244.0;
    } else {
     s0+=4137.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i22<-1.5109777450561523e-05){
   if(i6<-4.0322309359908104e-05){
    if(i72<0.03282633051276207){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<0.9978734254837036){
     s0+=389.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i21<0.0016834354028105736){
    if(i67<1.0198137760162354){
     s0+=66.0;
     s1+=157.0;
    } else {
     s0+=417.0;
     s1+=66.0;
    }
   } else {
    if(i1<0.11685013771057129){
     s0+=350.0;
     s1+=830.0;
    } else {
     s0+=151.0;
     s1+=2124.0;
    }
   }
  }
 }
} else {
 if(i46<0.0002513502258807421){
  if(i70<0.00044600083492696285){
   if(i47<0.0013312656665220857){
    s1+=15.0;
   } else {
    s0+=23.0;
   }
  } else {
   s0+=271.0;
  }
 } else {
  if(i49<0.9979089498519897){
   s0+=52.0;
  } else {
   if(i6<-4.877639003098011e-05){
    if(i3<0.0453934371471405){
     s0+=99.0;
     s1+=224.0;
    } else {
     s0+=159.0;
     s1+=11105.0;
    }
   } else {
    if(i34<0.007567045744508505){
     s0+=103.0;
     s1+=17.0;
    } else {
     s0+=60.0;
     s1+=357.0;
    }
   }
  }
 }
}
if(i5<3.701448440551758e-05){
 if(i9<1.0451608896255493){
  if(i20<0.014721767976880074){
   if(i23<1.0451585054397583){
    if(i38<0.00029557145899161696){
     s0+=32716.0;
    } else {
     s0+=14530.0;
     s1+=116.0;
    }
   } else {
    if(i23<1.0451740026474){
     s0+=15.0;
     s1+=23.0;
    } else {
     s0+=5364.0;
     s1+=232.0;
    }
   }
  } else {
   if(i39<0.0016037076711654663){
    if(i38<0.0004979827208444476){
     s0+=1817.0;
     s1+=54.0;
    } else {
     s0+=884.0;
     s1+=564.0;
    }
   } else {
    if(i50<0.00327868084423244){
     s0+=6135.0;
     s1+=29.0;
    } else {
     s0+=592.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i2<0.0001424849033355713){
   if(i72<0.022313322871923447){
    if(i3<0.0846002995967865){
     s0+=3267.0;
     s1+=202.0;
    } else {
     s0+=238.0;
     s1+=192.0;
    }
   } else {
    if(i8<0.08145377039909363){
     s0+=2943.0;
     s1+=967.0;
    } else {
     s0+=772.0;
     s1+=1244.0;
    }
   }
  } else {
   if(i39<0.00025983754312619567){
    s0+=191.0;
   } else {
    if(i21<0.0028335251845419407){
     s0+=775.0;
     s1+=525.0;
    } else {
     s0+=256.0;
     s1+=1275.0;
    }
   }
  }
 }
} else {
 if(i32<1.0590304136276245){
  s0+=328.0;
 } else {
  if(i37<1.3053767681121826){
   if(i28<1.2392117977142334){
    s1+=2206.0;
   } else {
    if(i2<0.0009374618530273438){
     s0+=302.0;
     s1+=349.0;
    } else {
     s0+=51.0;
     s1+=1085.0;
    }
   }
  } else {
   if(i1<0.08290094137191772){
    if(i45<0.00014337897300720215){
     s0+=28.0;
     s1+=255.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.005002493970096111){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=7637.0;
    }
   }
  }
 }
}
if(i8<0.07131022214889526){
 if(i5<4.0590763092041016e-05){
  if(i32<1.0557184219360352){
   if(i65<0.0010108466958627105){
    s0+=42184.0;
   } else {
    if(i8<0.05017465353012085){
     s0+=852.0;
    } else {
     s0+=41.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.07658994197845459){
    if(i45<-0.0037353336811065674){
     s0+=4070.0;
     s1+=863.0;
    } else {
     s0+=21362.0;
     s1+=932.0;
    }
   } else {
    if(i40<0.041064679622650146){
     s0+=84.0;
     s1+=846.0;
    } else {
     s0+=102.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i38<0.0003959996975027025){
   s0+=216.0;
  } else {
   if(i1<0.0584568977355957){
    if(i45<-0.0071686506271362305){
     s0+=52.0;
     s1+=331.0;
    } else {
     s0+=158.0;
     s1+=94.0;
    }
   } else {
    if(i45<0.01583784818649292){
     s0+=26.0;
     s1+=1414.0;
    } else {
     s0+=24.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i4<1.0017297267913818){
  if(i6<-1.381049514748156e-05){
   if(i45<0.0160464346408844){
    if(i3<0.09540489315986633){
     s0+=134.0;
     s1+=258.0;
    } else {
     s0+=59.0;
     s1+=1302.0;
    }
   } else {
    if(i58<0.06086163967847824){
     s0+=350.0;
     s1+=169.0;
    } else {
     s0+=157.0;
     s1+=698.0;
    }
   }
  } else {
   if(i41<0.041826069355010986){
    if(i3<0.07483887672424316){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=90.0;
    }
   } else {
    if(i1<0.09703108668327332){
     s0+=585.0;
     s1+=22.0;
    } else {
     s0+=644.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i3<0.13283678889274597){
   if(i25<1.0833278894424438){
    if(i66<1.0023843050003052){
     s0+=49.0;
     s1+=770.0;
    } else {
     s0+=35.0;
     s1+=25.0;
    }
   } else {
    if(i53<0.0021545886993408203){
     s0+=7.0;
     s1+=67.0;
    } else {
     s0+=65.0;
     s1+=3.0;
    }
   }
  } else {
   if(i5<5.2034854888916016e-05){
    if(i71<-4.986740805179579e-06){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=17.0;
     s1+=648.0;
    }
   } else {
    if(i1<0.1622314155101776){
     s0+=4.0;
     s1+=548.0;
    } else {
     s1+=7657.0;
    }
   }
  }
 }
}
if(i3<0.08304375410079956){
 if(i12<1.0043621063232422){
  if(i2<0.0006218850612640381){
   if(i50<0.0017491246107965708){
    if(i19<1.0064280033111572){
     s0+=60480.0;
     s1+=765.0;
    } else {
     s0+=2105.0;
     s1+=202.0;
    }
   } else {
    if(i2<-0.00031054019927978516){
     s0+=3514.0;
     s1+=258.0;
    } else {
     s0+=1693.0;
     s1+=662.0;
    }
   }
  } else {
   if(i50<0.0011777952313423157){
    if(i36<0.00025138258934020996){
     s0+=75.0;
    } else {
     s0+=22.0;
     s1+=11.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=17.0;
     s1+=271.0;
    } else {
     s0+=35.0;
     s1+=58.0;
    }
   }
  }
 } else {
  if(i28<1.1386182308197021){
   if(i6<-2.6431251171743497e-05){
    s1+=605.0;
   } else {
    if(i2<0.0006344914436340332){
     s0+=45.0;
     s1+=4.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i34<0.015432603657245636){
    if(i6<-8.467464067507535e-05){
     s0+=2.0;
     s1+=33.0;
    } else {
     s0+=1054.0;
     s1+=17.0;
    }
   } else {
    if(i22<1.8596649169921875e-05){
     s0+=57.0;
     s1+=14.0;
    } else {
     s1+=113.0;
    }
   }
  }
 }
} else {
 if(i14<0.998518705368042){
  if(i54<0.001096784370020032){
   if(i71<4.56537127320189e-05){
    if(i17<0.9949162006378174){
     s0+=544.0;
    } else {
     s0+=156.0;
     s1+=3.0;
    }
   } else {
    if(i35<0.9842901229858398){
     s1+=5.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i9<1.0398516654968262){
    s0+=15.0;
   } else {
    if(i11<-0.000533759593963623){
     s0+=2.0;
    } else {
     s1+=22.0;
    }
   }
  }
 } else {
  if(i12<1.0065597295761108){
   if(i20<0.02244153991341591){
    if(i9<1.0852011442184448){
     s0+=355.0;
     s1+=575.0;
    } else {
     s0+=512.0;
     s1+=210.0;
    }
   } else {
    if(i34<0.016133872792124748){
     s0+=212.0;
     s1+=509.0;
    } else {
     s0+=178.0;
     s1+=3290.0;
    }
   }
  } else {
   if(i11<2.3543834686279297e-06){
    if(i28<1.2604451179504395){
     s1+=187.0;
    } else {
     s0+=41.0;
     s1+=26.0;
    }
   } else {
    if(i13<1.002406358718872){
     s0+=32.0;
     s1+=841.0;
    } else {
     s0+=11.0;
     s1+=8385.0;
    }
   }
  }
 }
}
if(i1<0.08200663328170776){
 if(i9<1.0452277660369873){
  if(i62<-0.0021076202392578125){
   if(i32<1.1779849529266357){
    if(i33<0.00039336903137154877){
     s0+=1037.0;
     s1+=2.0;
    } else {
     s0+=641.0;
     s1+=519.0;
    }
   } else {
    if(i48<0.006293574348092079){
     s0+=2720.0;
     s1+=18.0;
    } else {
     s0+=21.0;
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.06888866424560547){
    if(i6<-4.9517519073560834e-05){
     s0+=458.0;
     s1+=63.0;
    } else {
     s0+=56147.0;
     s1+=198.0;
    }
   } else {
    if(i41<0.031682610511779785){
     s0+=4.0;
     s1+=78.0;
    } else {
     s0+=1130.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i17<1.0007622241973877){
   if(i32<1.1034480333328247){
    if(i58<0.03378092497587204){
     s0+=1871.0;
     s1+=251.0;
    } else {
     s0+=302.0;
     s1+=396.0;
    }
   } else {
    if(i34<0.04856978356838226){
     s0+=3853.0;
     s1+=180.0;
    } else {
     s0+=21.0;
     s1+=44.0;
    }
   }
  } else {
   if(i64<0.001833796501159668){
    if(i37<1.1065986156463623){
     s0+=77.0;
     s1+=717.0;
    } else {
     s0+=561.0;
     s1+=511.0;
    }
   } else {
    if(i15<-0.0005509555339813232){
     s0+=284.0;
    } else {
     s0+=264.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i43<3.98532301915111e-06){
  if(i17<1.0028223991394043){
   if(i34<0.02375602163374424){
    if(i40<0.054121196269989014){
     s0+=262.0;
     s1+=1590.0;
    } else {
     s0+=873.0;
     s1+=408.0;
    }
   } else {
    if(i0<0.11182206869125366){
     s0+=91.0;
     s1+=160.0;
    } else {
     s0+=70.0;
     s1+=2235.0;
    }
   }
  } else {
   if(i40<0.046349138021469116){
    if(i50<-0.001217247685417533){
     s0+=7.0;
     s1+=366.0;
    } else {
     s0+=1.0;
     s1+=5379.0;
    }
   } else {
    if(i6<-6.392977229552343e-05){
     s0+=30.0;
     s1+=3745.0;
    } else {
     s0+=97.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i28<1.2188851833343506){
   if(i25<1.0261297225952148){
    s1+=8.0;
   } else {
    s0+=21.0;
   }
  } else {
   s0+=227.0;
  }
 }
}
if(i6<-7.496170292142779e-05){
 if(i3<0.05558454990386963){
  if(i51<-0.02443590760231018){
   if(i14<1.0017452239990234){
    if(i30<0.0025011494290083647){
     s0+=5.0;
     s1+=13.0;
    } else {
     s0+=90.0;
     s1+=5.0;
    }
   } else {
    if(i5<1.9848346710205078e-05){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=206.0;
    }
   }
  } else {
   if(i4<1.002636432647705){
    if(i58<0.10840076208114624){
     s0+=103.0;
     s1+=7.0;
    } else {
     s0+=446.0;
    }
   } else {
    if(i72<0.021155741065740585){
     s1+=14.0;
    } else {
     s0+=39.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i47<0.0005754949524998665){
   if(i5<0.00011417269706726074){
    s1+=3.0;
   } else {
    s0+=58.0;
   }
  } else {
   if(i3<0.12137383222579956){
    if(i26<0.9938780069351196){
     s0+=155.0;
     s1+=242.0;
    } else {
     s0+=24.0;
     s1+=1022.0;
    }
   } else {
    if(i5<0.0008314549922943115){
     s0+=26.0;
     s1+=9810.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i23<1.0495078563690186){
  if(i4<1.0025296211242676){
   if(i23<1.0451585054397583){
    if(i46<0.00027163251070305705){
     s0+=42881.0;
     s1+=12.0;
    } else {
     s0+=11347.0;
     s1+=226.0;
    }
   } else {
    if(i62<-0.002402365207672119){
     s0+=143.0;
     s1+=103.0;
    } else {
     s0+=2096.0;
     s1+=102.0;
    }
   }
  } else {
   if(i42<1.2258224487304688){
    s1+=40.0;
   } else {
    s0+=22.0;
   }
  }
 } else {
  if(i5<1.1861324310302734e-05){
   if(i0<0.0761723518371582){
    if(i46<0.0022687017917633057){
     s0+=6093.0;
     s1+=1014.0;
    } else {
     s0+=4948.0;
     s1+=132.0;
    }
   } else {
    if(i25<1.0515129566192627){
     s0+=175.0;
     s1+=941.0;
    } else {
     s0+=1070.0;
     s1+=749.0;
    }
   }
  } else {
   if(i28<1.2385294437408447){
    if(i39<0.00025157781783491373){
     s0+=89.0;
    } else {
     s0+=241.0;
     s1+=1876.0;
    }
   } else {
    if(i34<0.027958448976278305){
     s0+=1019.0;
     s1+=289.0;
    } else {
     s0+=47.0;
     s1+=277.0;
    }
   }
  }
 }
}
if(i5<3.629922866821289e-05){
 if(i58<0.03117421269416809){
  if(i44<-0.0019326508045196533){
   if(i1<0.044342249631881714){
    if(i35<0.9840418100357056){
     s0+=232.0;
     s1+=148.0;
    } else {
     s0+=430.0;
     s1+=35.0;
    }
   } else {
    if(i66<0.9966937303543091){
     s0+=31.0;
    } else {
     s0+=43.0;
     s1+=139.0;
    }
   }
  } else {
   if(i67<1.01310133934021){
    if(i7<1.0080897808074951){
     s0+=57609.0;
     s1+=565.0;
    } else {
     s0+=75.0;
     s1+=226.0;
    }
   } else {
    if(i1<0.09873133897781372){
     s0+=1255.0;
     s1+=187.0;
    } else {
     s0+=186.0;
     s1+=494.0;
    }
   }
  }
 } else {
  if(i9<1.0398966073989868){
   if(i0<0.06926977634429932){
    if(i28<1.1860926151275635){
     s0+=1356.0;
     s1+=177.0;
    } else {
     s0+=4728.0;
     s1+=18.0;
    }
   } else {
    if(i70<0.0009027649648487568){
     s0+=54.0;
     s1+=132.0;
    } else {
     s0+=91.0;
     s1+=3.0;
    }
   }
  } else {
   if(i6<-3.151191776851192e-05){
    if(i68<0.2840959429740906){
     s0+=836.0;
     s1+=1426.0;
    } else {
     s0+=35.0;
     s1+=562.0;
    }
   } else {
    if(i52<2.759731432888657e-05){
     s0+=1381.0;
     s1+=222.0;
    } else {
     s0+=1990.0;
     s1+=1113.0;
    }
   }
  }
 }
} else {
 if(i57<0.9993064403533936){
  s0+=354.0;
 } else {
  if(i16<1.0208992958068848){
   if(i66<1.0018062591552734){
    if(i50<0.001987508963793516){
     s0+=307.0;
     s1+=2002.0;
    } else {
     s0+=44.0;
     s1+=2294.0;
    }
   } else {
    if(i57<1.0000896453857422){
     s0+=49.0;
     s1+=6.0;
    } else {
     s0+=74.0;
     s1+=223.0;
    }
   }
  } else {
   if(i17<0.9966126680374146){
    if(i0<0.13258111476898193){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=126.0;
    }
   } else {
    if(i48<0.00013347022468224168){
     s0+=1.0;
     s1+=6.0;
    } else {
     s1+=6975.0;
    }
   }
  }
 }
}
if(i2<0.0005491375923156738){
 if(i73<1.0109751224517822){
  if(i46<0.00038227488403208554){
   if(i6<-3.872965316986665e-05){
    if(i57<1.0001614093780518){
     s0+=556.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   } else {
    if(i24<1.0113673210144043){
     s0+=48350.0;
     s1+=139.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   }
  } else {
   if(i1<0.07572156190872192){
    if(i13<0.9944193363189697){
     s0+=11515.0;
     s1+=179.0;
    } else {
     s0+=6348.0;
     s1+=1369.0;
    }
   } else {
    if(i14<0.9985207319259644){
     s0+=260.0;
     s1+=16.0;
    } else {
     s0+=233.0;
     s1+=1550.0;
    }
   }
  }
 } else {
  if(i21<0.0047037480399012566){
   if(i6<-2.879335079342127e-05){
    if(i28<1.255998969078064){
     s0+=32.0;
     s1+=521.0;
    } else {
     s0+=403.0;
     s1+=70.0;
    }
   } else {
    if(i8<0.2122264802455902){
     s0+=2228.0;
     s1+=153.0;
    } else {
     s0+=170.0;
     s1+=129.0;
    }
   }
  } else {
   if(i57<1.0003665685653687){
    if(i74<0.9971818327903748){
     s0+=84.0;
     s1+=74.0;
    } else {
     s0+=86.0;
     s1+=1171.0;
    }
   } else {
    if(i27<0.10993123054504395){
     s0+=204.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i57<0.9991834163665771){
  s0+=179.0;
 } else {
  if(i13<1.0063247680664062){
   if(i6<-4.608348899637349e-05){
    if(i18<6.377696990966797e-06){
     s0+=223.0;
     s1+=1003.0;
    } else {
     s0+=4.0;
     s1+=1687.0;
    }
   } else {
    if(i52<-3.6129067666479386e-06){
     s0+=115.0;
     s1+=27.0;
    } else {
     s0+=34.0;
     s1+=259.0;
    }
   }
  } else {
   if(i21<0.0015966843347996473){
    if(i5<6.29425048828125e-05){
     s0+=45.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i18<0.0002034306526184082){
     s0+=17.0;
     s1+=995.0;
    } else {
     s1+=7592.0;
    }
   }
  }
 }
}
if(i10<1.0452215671539307){
 if(i64<-0.0014190673828125){
  if(i5<3.62396240234375e-05){
   if(i12<0.9874399900436401){
    if(i8<0.07588818669319153){
     s0+=3125.0;
     s1+=89.0;
    } else {
     s0+=10.0;
     s1+=37.0;
    }
   } else {
    if(i8<0.04010277986526489){
     s0+=1396.0;
     s1+=406.0;
    } else {
     s0+=223.0;
     s1+=397.0;
    }
   }
  } else {
   if(i58<0.21969319880008698){
    if(i49<0.99680495262146){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=519.0;
    }
   } else {
    if(i44<-0.008920460939407349){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i23<1.0486011505126953){
   if(i21<0.004467378370463848){
    if(i25<1.040954351425171){
     s0+=50852.0;
     s1+=68.0;
    } else {
     s0+=324.0;
     s1+=15.0;
    }
   } else {
    if(i15<0.0005962252616882324){
     s0+=2908.0;
     s1+=73.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  } else {
   if(i37<1.103413462638855){
    if(i34<0.009763918817043304){
     s0+=1709.0;
     s1+=240.0;
    } else {
     s0+=62.0;
     s1+=563.0;
    }
   } else {
    if(i18<0.0002015233039855957){
     s0+=4476.0;
     s1+=294.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i3<0.09128156304359436){
  if(i43<-1.7347227185382508e-05){
   if(i39<0.0010198364034295082){
    s1+=395.0;
   } else {
    if(i53<-0.004009813070297241){
     s0+=9.0;
     s1+=232.0;
    } else {
     s0+=681.0;
     s1+=191.0;
    }
   }
  } else {
   if(i37<1.1037919521331787){
    if(i5<8.52346420288086e-06){
     s0+=1012.0;
     s1+=357.0;
    } else {
     s0+=94.0;
     s1+=336.0;
    }
   } else {
    if(i54<0.0013675075024366379){
     s0+=2786.0;
     s1+=144.0;
    } else {
     s0+=16.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i34<0.023696068674325943){
   if(i40<0.05449420213699341){
    if(i4<0.9964543581008911){
     s0+=51.0;
     s1+=13.0;
    } else {
     s0+=62.0;
     s1+=2457.0;
    }
   } else {
    if(i18<0.00010859966278076172){
     s0+=860.0;
     s1+=348.0;
    } else {
     s0+=28.0;
     s1+=409.0;
    }
   }
  } else {
   if(i6<-1.230325779033592e-05){
    if(i48<0.0003875337424688041){
     s0+=27.0;
     s1+=79.0;
    } else {
     s0+=33.0;
     s1+=9429.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=5.0;
     s1+=72.0;
    } else {
     s0+=210.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<0.08340519666671753){
 if(i5<4.166364669799805e-05){
  if(i30<0.0002987820189446211){
   if(i17<1.0008714199066162){
    if(i29<1.0084363222122192){
     s0+=53027.0;
     s1+=275.0;
    } else {
     s0+=402.0;
     s1+=80.0;
    }
   } else {
    if(i52<1.3792016034130938e-05){
     s0+=2368.0;
     s1+=12.0;
    } else {
     s0+=469.0;
     s1+=213.0;
    }
   }
  } else {
   if(i5<-1.9609928131103516e-05){
    if(i39<0.0020077163353562355){
     s0+=2102.0;
     s1+=320.0;
    } else {
     s0+=6279.0;
     s1+=96.0;
    }
   } else {
    if(i47<0.000295800797175616){
     s0+=1427.0;
    } else {
     s0+=2671.0;
     s1+=1141.0;
    }
   }
  }
 } else {
  if(i47<0.0004986209096387029){
   s0+=188.0;
  } else {
   if(i4<1.0042428970336914){
    if(i47<0.0020939665846526623){
     s1+=184.0;
    } else {
     s0+=241.0;
     s1+=142.0;
    }
   } else {
    if(i15<-0.0030030012130737305){
     s0+=3.0;
    } else {
     s0+=13.0;
     s1+=557.0;
    }
   }
  }
 }
} else {
 if(i4<0.9962893128395081){
  if(i70<0.0016504470258951187){
   if(i21<0.007353375665843487){
    if(i66<0.9998953342437744){
     s0+=626.0;
    } else {
     s0+=138.0;
     s1+=33.0;
    }
   } else {
    if(i46<0.011380650103092194){
     s0+=3.0;
     s1+=24.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i56<-8.288918616017327e-05){
    s1+=80.0;
   } else {
    if(i50<-0.0029127991292625666){
     s1+=1.0;
    } else {
     s0+=20.0;
    }
   }
  }
 } else {
  if(i18<8.52048397064209e-05){
   if(i54<0.0004407759406603873){
    if(i9<1.08536958694458){
     s0+=309.0;
     s1+=992.0;
    } else {
     s0+=680.0;
     s1+=685.0;
    }
   } else {
    if(i3<0.13121476769447327){
     s0+=238.0;
     s1+=617.0;
    } else {
     s0+=34.0;
     s1+=1848.0;
    }
   }
  } else {
   if(i6<-2.2232568881008774e-05){
    if(i11<-0.0004023313522338867){
     s0+=3.0;
    } else {
     s0+=44.0;
     s1+=9624.0;
    }
   } else {
    if(i49<1.000082015991211){
     s0+=26.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i27<0.0617293119430542){
 if(i26<1.0083155632019043){
  if(i22<1.8537044525146484e-05){
   if(i1<0.0783102810382843){
    if(i65<0.0007286005420610309){
     s0+=58838.0;
     s1+=649.0;
    } else {
     s0+=7264.0;
     s1+=940.0;
    }
   } else {
    if(i36<-0.0001710951328277588){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=70.0;
     s1+=1039.0;
    }
   }
  } else {
   if(i17<1.0020990371704102){
    if(i0<0.0762816071510315){
     s0+=848.0;
     s1+=138.0;
    } else {
     s0+=8.0;
     s1+=140.0;
    }
   } else {
    if(i18<-0.00035431981086730957){
     s0+=198.0;
     s1+=66.0;
    } else {
     s0+=173.0;
     s1+=1175.0;
    }
   }
  }
 } else {
  if(i48<0.0009971498511731625){
   if(i3<0.07560586929321289){
    if(i72<0.008000645786523819){
     s0+=64.0;
     s1+=77.0;
    } else {
     s0+=897.0;
     s1+=36.0;
    }
   } else {
    if(i66<1.0003113746643066){
     s0+=5.0;
     s1+=637.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i61<2.4778617557785765e-07){
    if(i18<2.3096799850463867e-05){
     s0+=132.0;
     s1+=111.0;
    } else {
     s0+=5.0;
     s1+=2891.0;
    }
   } else {
    if(i0<0.10093164443969727){
     s0+=71.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i18<5.632638931274414e-05){
  if(i38<0.0061291856691241264){
   if(i1<0.0958111584186554){
    if(i74<1.0097345113754272){
     s0+=1054.0;
     s1+=105.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   } else {
    if(i69<-0.023449845612049103){
     s0+=717.0;
     s1+=236.0;
    } else {
     s0+=164.0;
     s1+=684.0;
    }
   }
  } else {
   if(i4<0.9943914413452148){
    if(i10<1.0943938493728638){
     s0+=117.0;
     s1+=6.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i56<-0.00011908747546840459){
     s0+=61.0;
     s1+=1310.0;
    } else {
     s0+=107.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i4<0.9989895820617676){
   s0+=63.0;
  } else {
   if(i11<0.0004305541515350342){
    if(i34<0.01583356037735939){
     s0+=122.0;
     s1+=255.0;
    } else {
     s0+=8.0;
     s1+=752.0;
    }
   } else {
    if(i48<0.000821630354039371){
     s0+=2.0;
     s1+=171.0;
    } else {
     s1+=5533.0;
    }
   }
  }
 }
}
if(i4<1.0023467540740967){
 if(i0<0.07771843671798706){
  if(i47<0.0002955076633952558){
   s0+=36301.0;
  } else {
   if(i2<-0.0003033876419067383){
    if(i13<0.9939502477645874){
     s0+=16778.0;
     s1+=115.0;
    } else {
     s0+=7931.0;
     s1+=477.0;
    }
   } else {
    if(i37<1.1047927141189575){
     s0+=2075.0;
     s1+=1167.0;
    } else {
     s0+=5856.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i40<0.0474030077457428){
   if(i11<-0.00038313865661621094){
    if(i71<5.697267988580279e-05){
     s0+=96.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i43<3.5816142371913884e-06){
     s0+=121.0;
     s1+=2386.0;
    } else {
     s0+=13.0;
     s1+=8.0;
    }
   }
  } else {
   if(i39<0.010496871545910835){
    if(i0<0.1251336634159088){
     s0+=1000.0;
     s1+=218.0;
    } else {
     s0+=508.0;
     s1+=655.0;
    }
   } else {
    if(i0<0.10945636034011841){
     s0+=37.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=423.0;
    }
   }
  }
 }
} else {
 if(i3<0.0655813217163086){
  if(i43<-1.4139714949124027e-05){
   if(i52<7.464207737939432e-05){
    if(i48<0.0006644120439887047){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=331.0;
    }
   } else {
    if(i67<0.9927052855491638){
     s0+=30.0;
     s1+=172.0;
    } else {
     s0+=38.0;
     s1+=8.0;
    }
   }
  } else {
   if(i18<3.8683414459228516e-05){
    if(i33<0.0003749848110601306){
     s0+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i32<1.109130620956421){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=218.0;
    }
   }
  }
 } else {
  if(i6<-4.283253656467423e-05){
   if(i2<0.0008536577224731445){
    if(i15<-0.0005552768707275391){
     s0+=50.0;
     s1+=86.0;
    } else {
     s0+=5.0;
     s1+=672.0;
    }
   } else {
    if(i21<0.008049549534916878){
     s0+=46.0;
     s1+=2396.0;
    } else {
     s0+=3.0;
     s1+=7378.0;
    }
   }
  } else {
   if(i21<0.002624198794364929){
    s0+=76.0;
   } else {
    s1+=205.0;
   }
  }
 }
}
if(i9<1.0555626153945923){
 if(i1<0.081205815076828){
  if(i32<1.0557184219360352){
   if(i62<-0.003278195858001709){
    if(i56<-2.5033936253748834e-05){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=600.0;
    }
   } else {
    s0+=42481.0;
   }
  } else {
   if(i28<1.100754976272583){
    if(i34<0.011381527408957481){
     s0+=2717.0;
     s1+=681.0;
    } else {
     s0+=57.0;
     s1+=489.0;
    }
   } else {
    if(i28<1.229804515838623){
     s0+=3872.0;
     s1+=214.0;
    } else {
     s0+=14455.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i37<1.0670123100280762){
   if(i19<1.0073127746582031){
    if(i12<1.0029428005218506){
     s0+=156.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i1<0.09502333402633667){
    if(i59<0.03531700372695923){
     s0+=27.0;
     s1+=283.0;
    } else {
     s0+=137.0;
     s1+=22.0;
    }
   } else {
    if(i64<0.004561781883239746){
     s0+=8.0;
     s1+=634.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i5<3.343820571899414e-05){
  if(i2<0.00016576051712036133){
   if(i8<0.08127108216285706){
    if(i3<0.08969742059707642){
     s0+=4414.0;
     s1+=641.0;
    } else {
     s0+=93.0;
     s1+=293.0;
    }
   } else {
    if(i48<0.0015382630517706275){
     s0+=744.0;
     s1+=520.0;
    } else {
     s0+=98.0;
     s1+=695.0;
    }
   }
  } else {
   if(i33<0.000840213499031961){
    if(i19<1.0014811754226685){
     s0+=10.0;
     s1+=6.0;
    } else {
     s0+=20.0;
     s1+=319.0;
    }
   } else {
    if(i20<0.02777405083179474){
     s0+=624.0;
     s1+=256.0;
    } else {
     s0+=101.0;
     s1+=691.0;
    }
   }
  }
 } else {
  if(i35<1.0365511178970337){
   if(i3<0.08259889483451843){
    if(i69<-0.014540962874889374){
     s0+=81.0;
     s1+=8.0;
    } else {
     s0+=170.0;
     s1+=713.0;
    }
   } else {
    if(i51<0.049685150384902954){
     s0+=13.0;
     s1+=3425.0;
    } else {
     s0+=136.0;
     s1+=1301.0;
    }
   }
  } else {
   if(i18<-6.9141387939453125e-06){
    if(i0<0.1330169439315796){
     s0+=16.0;
    } else {
     s0+=2.0;
     s1+=99.0;
    }
   } else {
    if(i34<0.007726718205958605){
     s0+=1.0;
     s1+=57.0;
    } else {
     s1+=5762.0;
    }
   }
  }
 }
}
if(i9<1.0564017295837402){
 if(i13<1.0044970512390137){
  if(i8<0.07316669821739197){
   if(i9<1.041234016418457){
    if(i4<1.0025382041931152){
     s0+=59592.0;
     s1+=631.0;
    } else {
     s0+=26.0;
     s1+=49.0;
    }
   } else {
    if(i1<0.06972402334213257){
     s0+=4329.0;
     s1+=540.0;
    } else {
     s0+=217.0;
     s1+=358.0;
    }
   }
  } else {
   if(i5<-4.437565803527832e-05){
    if(i60<0.06637080758810043){
     s0+=126.0;
    } else {
     s0+=40.0;
     s1+=24.0;
    }
   } else {
    if(i39<0.0003034314722754061){
     s0+=73.0;
     s1+=2.0;
    } else {
     s0+=87.0;
     s1+=441.0;
    }
   }
  }
 } else {
  if(i1<0.05143257975578308){
   if(i43<-1.4187190572556574e-05){
    if(i51<0.019215762615203857){
     s1+=33.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i63<0.008836142718791962){
     s0+=307.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i6<-3.862209268845618e-05){
    if(i4<0.9999927282333374){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=384.0;
    }
   } else {
    if(i5<3.713369369506836e-05){
     s0+=19.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i6<-4.381559119792655e-05){
  if(i1<0.06446531414985657){
   if(i37<1.2272062301635742){
    if(i44<0.001852273941040039){
     s0+=5.0;
     s1+=252.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   } else {
    if(i4<1.0034246444702148){
     s0+=507.0;
     s1+=131.0;
    } else {
     s0+=33.0;
     s1+=146.0;
    }
   }
  } else {
   if(i15<-0.0008077025413513184){
    if(i23<1.1255662441253662){
     s0+=207.0;
     s1+=83.0;
    } else {
     s0+=43.0;
     s1+=975.0;
    }
   } else {
    if(i4<1.0050899982452393){
     s0+=79.0;
     s1+=2836.0;
    } else {
     s0+=9.0;
     s1+=8387.0;
    }
   }
  }
 } else {
  if(i34<0.01408814825117588){
   if(i6<-1.2650269127334468e-05){
    if(i46<0.0006540247704833746){
     s0+=131.0;
     s1+=169.0;
    } else {
     s0+=1054.0;
     s1+=297.0;
    }
   } else {
    if(i7<0.9927701950073242){
     s0+=265.0;
     s1+=123.0;
    } else {
     s0+=1789.0;
     s1+=71.0;
    }
   }
  } else {
   if(i28<1.255998969078064){
    if(i74<0.9982592463493347){
     s0+=160.0;
     s1+=31.0;
    } else {
     s0+=329.0;
     s1+=1003.0;
    }
   } else {
    if(i1<0.11963966488838196){
     s0+=1265.0;
     s1+=47.0;
    } else {
     s0+=299.0;
     s1+=189.0;
    }
   }
  }
 }
}
if(i4<1.0024337768554688){
 if(i20<0.02345898002386093){
  if(i29<1.0074260234832764){
   if(i75<0.0001518916105851531){
    if(i1<0.08143550157546997){
     s0+=33291.0;
     s1+=909.0;
    } else {
     s0+=426.0;
     s1+=383.0;
    }
   } else {
    if(i50<0.010418307036161423){
     s0+=28539.0;
     s1+=57.0;
    } else {
     s0+=145.0;
     s1+=35.0;
    }
   }
  } else {
   if(i15<0.0005897879600524902){
    if(i46<0.0010998242069035769){
     s0+=533.0;
     s1+=336.0;
    } else {
     s0+=1374.0;
     s1+=77.0;
    }
   } else {
    if(i72<0.03162099048495293){
     s0+=93.0;
     s1+=450.0;
    } else {
     s0+=91.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i8<0.06318920850753784){
   if(i42<1.217149257659912){
    if(i32<1.05495023727417){
     s0+=318.0;
    } else {
     s0+=332.0;
     s1+=774.0;
    }
   } else {
    if(i3<0.08454489707946777){
     s0+=4831.0;
     s1+=186.0;
    } else {
     s0+=6.0;
     s1+=52.0;
    }
   }
  } else {
   if(i6<-2.196932655351702e-06){
    if(i4<0.9963690042495728){
     s0+=148.0;
     s1+=89.0;
    } else {
     s0+=269.0;
     s1+=2422.0;
    }
   } else {
    if(i22<-1.7195940017700195e-05){
     s0+=188.0;
    } else {
     s0+=131.0;
     s1+=52.0;
    }
   }
  }
 }
} else {
 if(i20<0.022164100781083107){
  if(i23<1.0484097003936768){
   if(i71<1.7022837255353807e-06){
    if(i74<1.003004550933838){
     s0+=51.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i71<-8.86237648956012e-06){
    s1+=1204.0;
   } else {
    if(i4<1.0040979385375977){
     s0+=220.0;
     s1+=487.0;
    } else {
     s0+=23.0;
     s1+=672.0;
    }
   }
  }
 } else {
  if(i30<0.00018287450075149536){
   if(i4<1.0042155981063843){
    s0+=14.0;
   } else {
    s1+=26.0;
   }
  } else {
   if(i35<1.014898419380188){
    if(i0<0.031083732843399048){
     s0+=26.0;
     s1+=60.0;
    } else {
     s0+=57.0;
     s1+=2199.0;
    }
   } else {
    if(i34<0.0016668213065713644){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=6625.0;
    }
   }
  }
 }
}
if(i1<0.0816052258014679){
 if(i15<0.001150667667388916){
  if(i31<0.0002815862826537341){
   if(i73<1.0101230144500732){
    if(i29<1.007615327835083){
     s0+=51790.0;
     s1+=205.0;
    } else {
     s0+=126.0;
     s1+=76.0;
    }
   } else {
    if(i18<8.7738037109375e-05){
     s0+=373.0;
     s1+=24.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  } else {
   if(i13<0.9942349195480347){
    if(i48<0.0063812024891376495){
     s0+=9505.0;
     s1+=148.0;
    } else {
     s0+=10.0;
     s1+=44.0;
    }
   } else {
    if(i6<-1.5956899005686864e-05){
     s0+=2244.0;
     s1+=1290.0;
    } else {
     s0+=5119.0;
     s1+=756.0;
    }
   }
  }
 } else {
  if(i21<0.001844792510382831){
   if(i61<-1.664084038566216e-06){
    if(i2<0.000995934009552002){
     s0+=91.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i64<0.006308078765869141){
    if(i66<1.0014268159866333){
     s0+=1.0;
     s1+=477.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i14<0.9980583190917969){
  if(i47<0.008615576662123203){
   s0+=436.0;
  } else {
   if(i47<0.010481958277523518){
    s1+=4.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i18<6.264448165893555e-05){
   if(i52<3.287851723143831e-05){
    if(i51<0.049892306327819824){
     s0+=134.0;
     s1+=330.0;
    } else {
     s0+=331.0;
     s1+=63.0;
    }
   } else {
    if(i73<1.004000186920166){
     s0+=49.0;
     s1+=1576.0;
    } else {
     s0+=629.0;
     s1+=2158.0;
    }
   }
  } else {
   if(i2<0.00011980533599853516){
    if(i6<-2.3960503312991932e-05){
     s0+=5.0;
     s1+=104.0;
    } else {
     s0+=36.0;
     s1+=4.0;
    }
   } else {
    if(i21<0.0027463207952678204){
     s0+=67.0;
     s1+=449.0;
    } else {
     s0+=6.0;
     s1+=9520.0;
    }
   }
  }
 }
}
if(i1<0.08223742246627808){
 if(i14<1.0018501281738281){
  if(i30<0.00029909404111094773){
   if(i14<1.000834345817566){
    if(i62<-0.002882927656173706){
     s0+=178.0;
     s1+=116.0;
    } else {
     s0+=54303.0;
     s1+=252.0;
    }
   } else {
    if(i3<0.06640976667404175){
     s0+=1922.0;
     s1+=129.0;
    } else {
     s0+=118.0;
     s1+=91.0;
    }
   }
  } else {
   if(i37<1.1032289266586304){
    if(i34<0.012178491801023483){
     s0+=3026.0;
     s1+=547.0;
    } else {
     s0+=274.0;
     s1+=564.0;
    }
   } else {
    if(i50<0.0046178256161510944){
     s0+=7015.0;
     s1+=126.0;
    } else {
     s0+=1786.0;
     s1+=256.0;
    }
   }
  }
 } else {
  if(i53<-8.881092071533203e-06){
   if(i66<1.0021698474884033){
    if(i30<0.00012509769294410944){
     s0+=7.0;
    } else {
     s0+=40.0;
     s1+=774.0;
    }
   } else {
    if(i19<0.9971596598625183){
     s0+=49.0;
     s1+=65.0;
    } else {
     s0+=150.0;
     s1+=3.0;
    }
   }
  } else {
   if(i38<0.001471096882596612){
    if(i39<0.0003125036892015487){
     s0+=6.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i25<1.014927625656128){
     s0+=78.0;
     s1+=37.0;
    } else {
     s0+=412.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i1<0.12340644001960754){
  if(i40<0.04795944690704346){
   if(i6<3.2230450415227097e-06){
    if(i45<0.021123021841049194){
     s0+=50.0;
     s1+=2110.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   } else {
    if(i19<0.9782130122184753){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=45.0;
     s1+=5.0;
    }
   }
  } else {
   if(i45<0.01598876714706421){
    if(i13<1.0021109580993652){
     s0+=352.0;
     s1+=159.0;
    } else {
     s0+=13.0;
     s1+=136.0;
    }
   } else {
    if(i55<-0.00420766044408083){
     s0+=575.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i13<0.9889836311340332){
   if(i43<-2.0377833607199136e-06){
    if(i74<0.9946120977401733){
     s0+=5.0;
    } else {
     s1+=213.0;
    }
   } else {
    s0+=192.0;
   }
  } else {
   if(i6<-2.2307662220555358e-05){
    if(i32<1.0587575435638428){
     s0+=7.0;
    } else {
     s0+=129.0;
     s1+=11126.0;
    }
   } else {
    if(i44<0.004454076290130615){
     s0+=50.0;
     s1+=217.0;
    } else {
     s0+=255.0;
     s1+=132.0;
    }
   }
  }
 }
}
if(i29<1.0075640678405762){
 if(i5<3.8236379623413086e-05){
  if(i0<0.08173385262489319){
   if(i72<0.011081280186772346){
    if(i29<0.9724348783493042){
     s0+=120.0;
     s1+=64.0;
    } else {
     s0+=46834.0;
     s1+=175.0;
    }
   } else {
    if(i15<-0.0012797713279724121){
     s0+=13539.0;
     s1+=278.0;
    } else {
     s0+=6677.0;
     s1+=1252.0;
    }
   }
  } else {
   if(i14<0.9985270500183105){
    if(i47<0.008713345974683762){
     s0+=315.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i21<0.0012001597788184881){
     s0+=139.0;
     s1+=66.0;
    } else {
     s0+=261.0;
     s1+=1505.0;
    }
   }
  }
 } else {
  if(i14<0.9999829530715942){
   s0+=301.0;
  } else {
   if(i21<0.002157868817448616){
    if(i54<0.00045095046516507864){
     s0+=40.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i26<0.9962136745452881){
     s0+=148.0;
     s1+=1223.0;
    } else {
     s0+=6.0;
     s1+=1172.0;
    }
   }
  }
 }
} else {
 if(i1<0.08532509207725525){
  if(i23<1.0833278894424438){
   if(i50<0.0003267591819167137){
    if(i13<1.0010123252868652){
     s0+=401.0;
     s1+=59.0;
    } else {
     s0+=57.0;
     s1+=141.0;
    }
   } else {
    if(i21<0.0016845015343278646){
     s0+=140.0;
     s1+=26.0;
    } else {
     s0+=33.0;
     s1+=390.0;
    }
   }
  } else {
   if(i4<1.0041329860687256){
    if(i70<0.0007502725347876549){
     s0+=1431.0;
     s1+=10.0;
    } else {
     s0+=28.0;
     s1+=56.0;
    }
   } else {
    s1+=62.0;
   }
  }
 } else {
  if(i6<-2.0999195839976892e-05){
   if(i15<9.447336196899414e-06){
    if(i21<0.003930306993424892){
     s0+=143.0;
     s1+=48.0;
    } else {
     s0+=43.0;
     s1+=882.0;
    }
   } else {
    if(i61<7.545846756329411e-07){
     s0+=72.0;
     s1+=9448.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.0016936680767685175){
    if(i51<0.015529632568359375){
     s0+=67.0;
     s1+=49.0;
    } else {
     s0+=392.0;
     s1+=46.0;
    }
   } else {
    if(i18<-0.00039392709732055664){
     s0+=2.0;
    } else {
     s1+=54.0;
    }
   }
  }
 }
}
if(i3<0.0852321982383728){
 if(i10<1.0401476621627808){
  if(i9<1.0412026643753052){
   if(i2<0.0006057322025299072){
    if(i64<-0.0012781322002410889){
     s0+=4056.0;
     s1+=370.0;
    } else {
     s0+=55140.0;
     s1+=206.0;
    }
   } else {
    if(i43<-1.6357318600057624e-05){
     s0+=1.0;
     s1+=63.0;
    } else {
     s0+=105.0;
     s1+=2.0;
    }
   }
  } else {
   if(i14<1.0018285512924194){
    if(i58<0.03041626140475273){
     s0+=2618.0;
     s1+=204.0;
    } else {
     s0+=903.0;
     s1+=334.0;
    }
   } else {
    if(i5<1.633167266845703e-05){
     s0+=79.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i5<3.361701965332031e-05){
   if(i0<0.06076157093048096){
    if(i11<-6.508827209472656e-05){
     s0+=2498.0;
     s1+=111.0;
    } else {
     s0+=2401.0;
     s1+=451.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=337.0;
     s1+=324.0;
    } else {
     s0+=765.0;
     s1+=96.0;
    }
   }
  } else {
   if(i6<-4.630758485291153e-05){
    if(i28<1.5876636505126953){
     s0+=54.0;
     s1+=678.0;
    } else {
     s0+=90.0;
     s1+=44.0;
    }
   } else {
    if(i43<-1.3432262676360551e-05){
     s0+=14.0;
     s1+=56.0;
    } else {
     s0+=71.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i61<2.400687208137242e-06){
  if(i11<-0.0004050135612487793){
   if(i43<-1.0808560546138324e-05){
    if(i65<0.0007169606979005039){
     s0+=13.0;
    } else {
     s0+=13.0;
     s1+=15.0;
    }
   } else {
    s0+=329.0;
   }
  } else {
   if(i47<0.006295825354754925){
    if(i69<-0.019163349643349648){
     s0+=770.0;
     s1+=733.0;
    } else {
     s0+=333.0;
     s1+=3825.0;
    }
   } else {
    if(i71<3.418024425627664e-05){
     s0+=71.0;
     s1+=9145.0;
    } else {
     s0+=60.0;
     s1+=295.0;
    }
   }
  }
 } else {
  s0+=336.0;
 }
}
if(i0<0.08041870594024658){
 if(i11<0.0006116032600402832){
  if(i63<0.008132991380989552){
   if(i1<0.07546600699424744){
    if(i28<1.0856719017028809){
     s0+=37325.0;
    } else {
     s0+=27929.0;
     s1+=1160.0;
    }
   } else {
    if(i8<0.06602895259857178){
     s0+=79.0;
     s1+=191.0;
    } else {
     s0+=488.0;
     s1+=171.0;
    }
   }
  } else {
   if(i0<0.022220343351364136){
    if(i32<1.096760869026184){
     s0+=697.0;
     s1+=177.0;
    } else {
     s0+=1263.0;
     s1+=51.0;
    }
   } else {
    if(i21<0.004346921108663082){
     s0+=937.0;
     s1+=295.0;
    } else {
     s0+=71.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i13<1.001577377319336){
   if(i19<0.9832366704940796){
    if(i57<1.0004632472991943){
     s0+=40.0;
     s1+=119.0;
    } else {
     s0+=106.0;
     s1+=17.0;
    }
   } else {
    if(i53<-0.003658205270767212){
     s0+=5.0;
     s1+=23.0;
    } else {
     s0+=517.0;
     s1+=58.0;
    }
   }
  } else {
   if(i42<1.0657644271850586){
    s0+=13.0;
   } else {
    if(i66<1.0021698474884033){
     s0+=17.0;
     s1+=855.0;
    } else {
     s0+=31.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i21<0.005533730611205101){
  if(i53<0.004854440689086914){
   if(i14<0.998519778251648){
    if(i54<0.001086662639863789){
     s0+=213.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i40<0.051109373569488525){
     s0+=91.0;
     s1+=2120.0;
    } else {
     s0+=288.0;
     s1+=395.0;
    }
   }
  } else {
   if(i55<-0.008859822526574135){
    if(i0<0.2860161066055298){
     s0+=410.0;
     s1+=4.0;
    } else {
     s0+=96.0;
     s1+=54.0;
    }
   } else {
    if(i0<0.1274358332157135){
     s0+=300.0;
     s1+=26.0;
    } else {
     s0+=103.0;
     s1+=253.0;
    }
   }
  }
 } else {
  if(i22<-1.946091651916504e-05){
   s0+=25.0;
  } else {
   if(i18<-0.00035837292671203613){
    if(i25<1.0882463455200195){
     s0+=78.0;
     s1+=164.0;
    } else {
     s1+=242.0;
    }
   } else {
    if(i20<0.022099599242210388){
     s0+=46.0;
     s1+=1356.0;
    } else {
     s0+=19.0;
     s1+=9067.0;
    }
   }
  }
 }
}
if(i8<0.07074698805809021){
 if(i3<0.07873713970184326){
  if(i65<0.000736340181902051){
   if(i7<1.0067492723464966){
    if(i60<0.05571812391281128){
     s0+=56323.0;
     s1+=355.0;
    } else {
     s0+=3165.0;
     s1+=312.0;
    }
   } else {
    if(i3<0.06547725200653076){
     s0+=872.0;
     s1+=214.0;
    } else {
     s0+=211.0;
     s1+=294.0;
    }
   }
  } else {
   if(i11<0.0005260109901428223){
    if(i72<0.04356388747692108){
     s0+=3073.0;
     s1+=789.0;
    } else {
     s0+=4289.0;
     s1+=152.0;
    }
   } else {
    if(i69<-0.010965565219521523){
     s0+=212.0;
     s1+=21.0;
    } else {
     s0+=161.0;
     s1+=493.0;
    }
   }
  }
 } else {
  if(i5<-4.112720489501953e-05){
   if(i22<-1.8358230590820312e-05){
    s0+=311.0;
   } else {
    if(i24<0.9931824207305908){
     s0+=26.0;
     s1+=28.0;
    } else {
     s0+=72.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.08322086930274963){
    if(i40<0.03674408793449402){
     s0+=16.0;
     s1+=194.0;
    } else {
     s0+=109.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.0769959688186646){
     s0+=14.0;
    } else {
     s0+=45.0;
     s1+=1707.0;
    }
   }
  }
 }
} else {
 if(i5<3.343820571899414e-05){
  if(i14<0.9985270500183105){
   if(i61<-3.2530133466934785e-06){
    if(i1<0.08701556921005249){
     s0+=34.0;
     s1+=3.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i42<1.5942578315734863){
     s0+=485.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  } else {
   if(i20<0.028903601691126823){
    if(i41<0.05320173501968384){
     s0+=87.0;
     s1+=457.0;
    } else {
     s0+=1098.0;
     s1+=508.0;
    }
   } else {
    if(i40<0.04287475347518921){
     s0+=14.0;
     s1+=879.0;
    } else {
     s0+=223.0;
     s1+=802.0;
    }
   }
  }
 } else {
  if(i12<1.0085996389389038){
   if(i65<0.0011813525343313813){
    if(i34<0.024784330278635025){
     s0+=183.0;
     s1+=197.0;
    } else {
     s0+=5.0;
     s1+=806.0;
    }
   } else {
    if(i49<0.996565580368042){
     s0+=2.0;
    } else {
     s0+=10.0;
     s1+=1303.0;
    }
   }
  } else {
   s1+=7668.0;
  }
 }
}
if(i4<1.0023996829986572){
 if(i3<0.08524203300476074){
  if(i44<-0.0015021562576293945){
   if(i1<0.04220762848854065){
    if(i28<1.100754976272583){
     s0+=1109.0;
     s1+=325.0;
    } else {
     s0+=2603.0;
     s1+=165.0;
    }
   } else {
    if(i54<0.00034120024065487087){
     s0+=301.0;
     s1+=77.0;
    } else {
     s0+=95.0;
     s1+=315.0;
    }
   }
  } else {
   if(i16<1.00523042678833){
    if(i58<0.02655155211687088){
     s0+=55587.0;
     s1+=293.0;
    } else {
     s0+=7735.0;
     s1+=653.0;
    }
   } else {
    if(i6<-3.849752101814374e-05){
     s0+=99.0;
     s1+=193.0;
    } else {
     s0+=1450.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i21<0.004998667631298304){
   if(i51<0.06067490577697754){
    if(i11<-0.0004111826419830322){
     s0+=349.0;
     s1+=5.0;
    } else {
     s0+=342.0;
     s1+=1332.0;
    }
   } else {
    if(i1<0.14024174213409424){
     s0+=502.0;
     s1+=40.0;
    } else {
     s0+=382.0;
     s1+=220.0;
    }
   }
  } else {
   if(i36<-0.0002696216106414795){
    if(i44<0.019231081008911133){
     s0+=64.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i33<0.011088375002145767){
     s0+=129.0;
     s1+=1957.0;
    } else {
     s0+=35.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i34<0.013686156831681728){
  if(i18<0.00022518634796142578){
   if(i39<0.0013545956462621689){
    if(i42<1.070241093635559){
     s0+=31.0;
    } else {
     s0+=14.0;
     s1+=413.0;
    }
   } else {
    if(i6<-7.042466313578188e-05){
     s0+=78.0;
     s1+=106.0;
    } else {
     s0+=253.0;
     s1+=13.0;
    }
   }
  } else {
   if(i9<1.0327575206756592){
    s0+=1.0;
   } else {
    s1+=1132.0;
   }
  }
 } else {
  if(i0<0.013021796941757202){
   if(i12<0.9880780577659607){
    if(i45<-0.09082767367362976){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i36<0.0002574324607849121){
     s0+=4.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i26<0.9998444318771362){
    if(i21<0.008924184367060661){
     s0+=33.0;
     s1+=243.0;
    } else {
     s0+=1.0;
     s1+=1177.0;
    }
   } else {
    if(i34<0.013862217776477337){
     s0+=2.0;
     s1+=26.0;
    } else {
     s0+=1.0;
     s1+=8171.0;
    }
   }
  }
 }
}
if(i2<0.0005506277084350586){
 if(i3<0.08356902003288269){
  if(i9<1.0451585054397583){
   if(i65<0.0007161129615269601){
    if(i58<0.032534971833229065){
     s0+=53907.0;
     s1+=129.0;
    } else {
     s0+=2017.0;
     s1+=123.0;
    }
   } else {
    if(i16<0.979386568069458){
     s0+=3781.0;
     s1+=66.0;
    } else {
     s0+=2033.0;
     s1+=487.0;
    }
   }
  } else {
   if(i5<1.4960765838623047e-05){
    if(i32<1.1034480333328247){
     s0+=2198.0;
     s1+=694.0;
    } else {
     s0+=4106.0;
     s1+=229.0;
    }
   } else {
    if(i75<2.5197226932505146e-05){
     s0+=17.0;
     s1+=80.0;
    } else {
     s0+=583.0;
     s1+=265.0;
    }
   }
  }
 } else {
  if(i2<-0.0007446706295013428){
   if(i14<0.9985252618789673){
    if(i52<0.0002037344966083765){
     s0+=555.0;
    } else {
     s0+=23.0;
     s1+=15.0;
    }
   } else {
    if(i31<0.0006321012042462826){
     s0+=26.0;
    } else {
     s0+=74.0;
     s1+=185.0;
    }
   }
  } else {
   if(i67<1.0257666110992432){
    if(i33<0.0004476824833545834){
     s0+=115.0;
     s1+=8.0;
    } else {
     s0+=259.0;
     s1+=2054.0;
    }
   } else {
    if(i0<0.12808197736740112){
     s0+=571.0;
     s1+=146.0;
    } else {
     s0+=277.0;
     s1+=1024.0;
    }
   }
  }
 }
} else {
 if(i57<0.9987051486968994){
  s0+=170.0;
 } else {
  if(i2<0.0009592175483703613){
   if(i21<0.002391854301095009){
    if(i42<1.2524442672729492){
     s1+=48.0;
    } else {
     s0+=190.0;
     s1+=2.0;
    }
   } else {
    if(i11<0.0007622838020324707){
     s0+=14.0;
     s1+=1245.0;
    } else {
     s0+=143.0;
     s1+=310.0;
    }
   }
  } else {
   if(i13<1.0061455965042114){
    if(i1<0.1260576844215393){
     s0+=79.0;
     s1+=321.0;
    } else {
     s0+=12.0;
     s1+=1419.0;
    }
   } else {
    s1+=8252.0;
   }
  }
 }
}
if(i1<0.08144927024841309){
 if(i10<1.0406901836395264){
  if(i50<0.001632380997762084){
   if(i35<1.008404016494751){
    if(i68<0.02488461136817932){
     s0+=51290.0;
     s1+=161.0;
    } else {
     s0+=7184.0;
     s1+=355.0;
    }
   } else {
    if(i32<1.0833402872085571){
     s0+=23.0;
     s1+=77.0;
    } else {
     s0+=185.0;
     s1+=13.0;
    }
   }
  } else {
   if(i18<-0.00030350685119628906){
    if(i53<-0.002528756856918335){
     s0+=236.0;
     s1+=35.0;
    } else {
     s0+=1906.0;
     s1+=7.0;
    }
   } else {
    if(i5<3.0279159545898438e-05){
     s0+=2422.0;
     s1+=545.0;
    } else {
     s0+=30.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i2<0.000574648380279541){
   if(i45<0.009210705757141113){
    if(i14<0.9993364810943604){
     s0+=1779.0;
     s1+=88.0;
    } else {
     s0+=2311.0;
     s1+=776.0;
    }
   } else {
    if(i18<0.00011771917343139648){
     s0+=1811.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  } else {
   if(i47<0.002571790013462305){
    s1+=393.0;
   } else {
    if(i65<0.0007852724520489573){
     s0+=131.0;
     s1+=17.0;
    } else {
     s0+=68.0;
     s1+=255.0;
    }
   }
  }
 }
} else {
 if(i22<-1.5676021575927734e-05){
  if(i54<0.0010126952547580004){
   if(i14<0.9988715052604675){
    if(i66<1.0003416538238525){
     s0+=395.0;
     s1+=2.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   } else {
    if(i53<0.0014231204986572266){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i33<0.004254382569342852){
    s0+=5.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i6<-2.2286001694737934e-05){
   if(i16<1.0093770027160645){
    if(i44<0.004402101039886475){
     s0+=70.0;
     s1+=2607.0;
    } else {
     s0+=314.0;
     s1+=922.0;
    }
   } else {
    if(i3<0.16169753670692444){
     s0+=112.0;
     s1+=1993.0;
    } else {
     s0+=4.0;
     s1+=7796.0;
    }
   }
  } else {
   if(i41<0.058934152126312256){
    if(i5<-5.441904067993164e-05){
     s0+=23.0;
     s1+=4.0;
    } else {
     s0+=52.0;
     s1+=532.0;
    }
   } else {
    if(i39<0.004888318944722414){
     s0+=638.0;
     s1+=95.0;
    } else {
     s0+=144.0;
     s1+=154.0;
    }
   }
  }
 }
}
if(i2<0.000564277172088623){
 if(i1<0.08195626735687256){
  if(i23<1.0467959642410278){
   if(i32<1.0557184219360352){
    s0+=41553.0;
   } else {
    if(i45<-0.00617489218711853){
     s0+=155.0;
     s1+=80.0;
    } else {
     s0+=13272.0;
     s1+=191.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i54<0.00017697139992378652){
     s0+=2923.0;
     s1+=601.0;
    } else {
     s0+=259.0;
     s1+=723.0;
    }
   } else {
    if(i3<0.059743523597717285){
     s0+=8884.0;
     s1+=227.0;
    } else {
     s0+=2107.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i40<0.04914194345474243){
   if(i36<-0.00027635693550109863){
    s0+=93.0;
   } else {
    if(i0<0.09250637888908386){
     s0+=90.0;
     s1+=489.0;
    } else {
     s0+=20.0;
     s1+=1830.0;
    }
   }
  } else {
   if(i6<-1.38188770506531e-05){
    if(i34<0.023710589855909348){
     s0+=458.0;
     s1+=429.0;
    } else {
     s0+=66.0;
     s1+=639.0;
    }
   } else {
    if(i25<1.028501272201538){
     s0+=3.0;
     s1+=18.0;
    } else {
     s0+=875.0;
     s1+=100.0;
    }
   }
  }
 }
} else {
 if(i31<0.00019023724598810077){
  if(i52<9.818483704293612e-06){
   s0+=139.0;
  } else {
   s1+=11.0;
  }
 } else {
  if(i6<-4.3521460611373186e-05){
   if(i1<0.06267303228378296){
    if(i15<7.808208465576172e-05){
     s0+=116.0;
     s1+=162.0;
    } else {
     s0+=1.0;
     s1+=290.0;
    }
   } else {
    if(i15<3.5822391510009766e-05){
     s0+=121.0;
     s1+=1114.0;
    } else {
     s0+=1.0;
     s1+=9588.0;
    }
   }
  } else {
   if(i74<1.0020781755447388){
    if(i71<-1.418101192030008e-06){
     s0+=149.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i31<0.00026725506177172065){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=244.0;
    }
   }
  }
 }
}
if(i2<0.000546187162399292){
 if(i20<0.022013450041413307){
  if(i1<0.078990638256073){
   if(i46<0.00027691025752574205){
    if(i29<1.0092949867248535){
     s0+=45559.0;
     s1+=26.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   } else {
    if(i67<0.9911605715751648){
     s0+=3791.0;
     s1+=566.0;
    } else {
     s0+=12946.0;
     s1+=424.0;
    }
   }
  } else {
   if(i21<0.0017902064137160778){
    if(i4<1.0018413066864014){
     s0+=651.0;
     s1+=85.0;
    } else {
     s0+=2.0;
     s1+=43.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=153.0;
     s1+=779.0;
    } else {
     s0+=397.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i4<0.9969510436058044){
   if(i29<1.008800745010376){
    if(i8<0.08110082149505615){
     s0+=4990.0;
     s1+=75.0;
    } else {
     s0+=136.0;
     s1+=117.0;
    }
   } else {
    if(i39<0.010839956812560558){
     s0+=103.0;
     s1+=20.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i3<0.06435802578926086){
    if(i28<1.2371783256530762){
     s0+=398.0;
     s1+=420.0;
    } else {
     s0+=709.0;
     s1+=99.0;
    }
   } else {
    if(i49<1.001991868019104){
     s0+=486.0;
     s1+=2604.0;
    } else {
     s0+=61.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i21<0.002219344489276409){
  if(i18<0.0002865791320800781){
   if(i54<0.00039436237420886755){
    if(i66<1.0000642538070679){
     s0+=281.0;
    } else {
     s0+=26.0;
     s1+=12.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   s1+=161.0;
  }
 } else {
  if(i23<1.0387111902236938){
   s0+=38.0;
  } else {
   if(i34<0.02204163186252117){
    if(i13<1.0014820098876953){
     s0+=191.0;
     s1+=212.0;
    } else {
     s0+=63.0;
     s1+=2638.0;
    }
   } else {
    if(i34<0.022970164194703102){
     s0+=4.0;
     s1+=103.0;
    } else {
     s0+=5.0;
     s1+=8595.0;
    }
   }
  }
 }
}
if(i6<-6.36911136098206e-05){
 if(i9<1.0405617952346802){
  if(i0<0.06927090883255005){
   if(i19<1.0065397024154663){
    if(i29<1.003371000289917){
     s0+=869.0;
     s1+=19.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i17<0.9996702671051025){
    if(i28<1.6062681674957275){
     s0+=24.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i9<1.040343999862671){
     s0+=3.0;
     s1+=87.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<1.001316785812378){
   if(i18<-0.0005214512348175049){
    if(i37<1.35280179977417){
     s0+=76.0;
    } else {
     s0+=62.0;
     s1+=58.0;
    }
   } else {
    if(i9<1.0929149389266968){
     s0+=118.0;
     s1+=116.0;
    } else {
     s0+=36.0;
     s1+=628.0;
    }
   }
  } else {
   if(i4<1.0044859647750854){
    if(i8<0.1305406093597412){
     s0+=191.0;
     s1+=694.0;
    } else {
     s1+=1266.0;
    }
   } else {
    if(i12<0.9804381728172302){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=19.0;
     s1+=9216.0;
    }
   }
  }
 }
} else {
 if(i29<1.0072780847549438){
  if(i62<-0.0017335116863250732){
   if(i14<0.9984337091445923){
    if(i43<-8.148193046508823e-06){
     s0+=212.0;
     s1+=15.0;
    } else {
     s0+=1976.0;
     s1+=6.0;
    }
   } else {
    if(i9<1.0398828983306885){
     s0+=2830.0;
     s1+=445.0;
    } else {
     s0+=1358.0;
     s1+=1259.0;
    }
   }
  } else {
   if(i68<0.029723338782787323){
    if(i17<1.0034291744232178){
     s0+=53253.0;
     s1+=219.0;
    } else {
     s0+=59.0;
     s1+=49.0;
    }
   } else {
    if(i4<0.9977594614028931){
     s0+=5912.0;
     s1+=178.0;
    } else {
     s0+=1398.0;
     s1+=976.0;
    }
   }
  }
 } else {
  if(i6<-2.8279926482355222e-05){
   if(i22<9.715557098388672e-06){
    if(i1<0.06535854935646057){
     s0+=128.0;
     s1+=67.0;
    } else {
     s0+=59.0;
     s1+=797.0;
    }
   } else {
    if(i26<1.0040595531463623){
     s0+=272.0;
     s1+=100.0;
    } else {
     s0+=292.0;
     s1+=462.0;
    }
   }
  } else {
   if(i21<0.005814105737954378){
    if(i1<0.09881481528282166){
     s0+=1663.0;
     s1+=64.0;
    } else {
     s0+=409.0;
     s1+=164.0;
    }
   } else {
    s1+=111.0;
   }
  }
 }
}
if(i9<1.055552363395691){
 if(i14<1.0020675659179688){
  if(i16<1.0073931217193604){
   if(i68<0.019360721111297607){
    if(i24<0.9706939458847046){
     s0+=25.0;
     s1+=41.0;
    } else {
     s0+=51293.0;
     s1+=271.0;
    }
   } else {
    if(i8<0.06597018241882324){
     s0+=12397.0;
     s1+=892.0;
    } else {
     s0+=413.0;
     s1+=405.0;
    }
   }
  } else {
   if(i1<0.062470942735672){
    if(i32<1.075645923614502){
     s1+=51.0;
    } else {
     s0+=235.0;
     s1+=4.0;
    }
   } else {
    if(i68<0.036835528910160065){
     s0+=5.0;
     s1+=264.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i48<0.0029885408002883196){
   if(i66<1.0025262832641602){
    if(i71<1.8439788618707098e-05){
     s1+=346.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i34<0.012212440371513367){
     s0+=24.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.09895619750022888){
    if(i52<0.00014528000610880554){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=208.0;
     s1+=4.0;
    }
   } else {
    s1+=24.0;
   }
  }
 }
} else {
 if(i5<3.319978713989258e-05){
  if(i20<0.026598423719406128){
   if(i52<-1.6674444850650616e-05){
    if(i1<0.04261919856071472){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=150.0;
    }
   } else {
    if(i32<1.1039339303970337){
     s0+=1104.0;
     s1+=616.0;
    } else {
     s0+=3839.0;
     s1+=459.0;
    }
   }
  } else {
   if(i22<-1.481175422668457e-05){
    if(i28<1.255998969078064){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=399.0;
     s1+=3.0;
    }
   } else {
    if(i20<0.04110243543982506){
     s0+=520.0;
     s1+=627.0;
    } else {
     s0+=232.0;
     s1+=1594.0;
    }
   }
  }
 } else {
  if(i6<-5.4246134823188186e-05){
   if(i3<0.07511201500892639){
    if(i28<1.5682398080825806){
     s0+=35.0;
     s1+=441.0;
    } else {
     s0+=91.0;
     s1+=61.0;
    }
   } else {
    if(i18<-1.430511474609375e-06){
     s0+=93.0;
     s1+=996.0;
    } else {
     s0+=5.0;
     s1+=9459.0;
    }
   }
  } else {
   if(i21<0.00386578356847167){
    if(i70<0.00032940212986432016){
     s0+=26.0;
     s1+=34.0;
    } else {
     s0+=145.0;
     s1+=2.0;
    }
   } else {
    if(i13<0.9961020946502686){
     s0+=16.0;
     s1+=36.0;
    } else {
     s0+=5.0;
     s1+=316.0;
    }
   }
  }
 }
}
if(i0<0.07772430777549744){
 if(i23<1.0486011505126953){
  if(i32<1.0556960105895996){
   if(i30<0.0004486253601498902){
    s0+=41305.0;
   } else {
    if(i28<1.0840110778808594){
     s0+=693.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   }
  } else {
   if(i50<0.002102532656863332){
    if(i64<-0.000995248556137085){
     s0+=694.0;
     s1+=145.0;
    } else {
     s0+=12797.0;
     s1+=97.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=48.0;
     s1+=110.0;
    } else {
     s0+=289.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i39<0.0015406995080411434){
   if(i2<0.0004266500473022461){
    if(i68<0.03492722287774086){
     s0+=3696.0;
     s1+=555.0;
    } else {
     s0+=621.0;
     s1+=762.0;
    }
   } else {
    if(i57<1.0003242492675781){
     s1+=790.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i14<1.0024230480194092){
    if(i63<0.010634809732437134){
     s0+=7238.0;
     s1+=147.0;
    } else {
     s0+=1369.0;
     s1+=281.0;
    }
   } else {
    if(i71<1.962360693141818e-05){
     s0+=72.0;
     s1+=298.0;
    } else {
     s0+=267.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i4<1.001420497894287){
  if(i3<0.11263453960418701){
   if(i51<0.039865076541900635){
    if(i5<-4.407763481140137e-05){
     s0+=150.0;
     s1+=23.0;
    } else {
     s0+=166.0;
     s1+=763.0;
    }
   } else {
    if(i27<0.06318318843841553){
     s0+=31.0;
     s1+=35.0;
    } else {
     s0+=584.0;
     s1+=54.0;
    }
   }
  } else {
   if(i20<0.02876647561788559){
    if(i21<0.0020373803563416004){
     s0+=252.0;
     s1+=27.0;
    } else {
     s0+=208.0;
     s1+=502.0;
    }
   } else {
    if(i43<4.280604116502218e-06){
     s0+=120.0;
     s1+=1518.0;
    } else {
     s0+=138.0;
    }
   }
  }
 } else {
  if(i0<0.13066041469573975){
   if(i55<-0.005522081628441811){
    if(i67<1.019911766052246){
     s1+=54.0;
    } else {
     s0+=150.0;
     s1+=48.0;
    }
   } else {
    if(i3<0.0933314859867096){
     s0+=42.0;
     s1+=257.0;
    } else {
     s0+=10.0;
     s1+=1204.0;
    }
   }
  } else {
   if(i15<9.268522262573242e-05){
    if(i34<0.021386874839663506){
     s0+=16.0;
     s1+=88.0;
    } else {
     s0+=1.0;
     s1+=880.0;
    }
   } else {
    if(i5<4.774332046508789e-05){
     s0+=3.0;
     s1+=459.0;
    } else {
     s1+=8063.0;
    }
   }
  }
 }
}
if(i0<0.0790054202079773){
 if(i14<1.0018912553787231){
  if(i46<0.0003127905074506998){
   if(i16<1.007567048072815){
    if(i67<1.0178513526916504){
     s0+=47288.0;
     s1+=58.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i68<0.014773724600672722){
     s0+=3.0;
     s1+=89.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<1.103413462638855){
    if(i6<-1.41074851853773e-05){
     s0+=194.0;
     s1+=931.0;
    } else {
     s0+=5132.0;
     s1+=667.0;
    }
   } else {
    if(i50<0.00669400580227375){
     s0+=14701.0;
     s1+=224.0;
    } else {
     s0+=1334.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i18<-0.0001087188720703125){
   if(i34<0.037035271525382996){
    if(i28<1.4786540269851685){
     s0+=125.0;
     s1+=98.0;
    } else {
     s0+=508.0;
     s1+=21.0;
    }
   } else {
    if(i58<0.3860161304473877){
     s1+=75.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i18<1.8775463104248047e-05){
    if(i28<1.5944836139678955){
     s0+=16.0;
     s1+=138.0;
    } else {
     s0+=34.0;
     s1+=5.0;
    }
   } else {
    if(i21<0.0009671958396211267){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=747.0;
    }
   }
  }
 }
} else {
 if(i1<0.11256253719329834){
  if(i53<0.002697169780731201){
   if(i41<0.057211071252822876){
    if(i22<-1.4483928680419922e-05){
     s0+=17.0;
    } else {
     s0+=39.0;
     s1+=1239.0;
    }
   } else {
    if(i43<-1.4747434761375189e-05){
     s0+=15.0;
     s1+=81.0;
    } else {
     s0+=194.0;
     s1+=44.0;
    }
   }
  } else {
   if(i25<1.053762435913086){
    if(i3<0.09867614507675171){
     s0+=224.0;
     s1+=62.0;
    } else {
     s0+=14.0;
     s1+=85.0;
    }
   } else {
    if(i71<-6.911416676302906e-06){
     s1+=10.0;
    } else {
     s0+=488.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i14<0.9979477524757385){
   if(i74<0.9987537860870361){
    s0+=275.0;
   } else {
    if(i48<0.001721084932796657){
     s0+=6.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.00048351287841796875){
    if(i48<0.0007578501245006919){
     s0+=292.0;
     s1+=339.0;
    } else {
     s0+=143.0;
     s1+=1877.0;
    }
   } else {
    if(i21<0.0030257082544267178){
     s0+=28.0;
     s1+=262.0;
    } else {
     s0+=33.0;
     s1+=9784.0;
    }
   }
  }
 }
}
if(i5<3.725290298461914e-05){
 if(i0<0.07751622796058655){
  if(i64<-0.0012906789779663086){
   if(i37<1.1823735237121582){
    if(i39<0.00039137486601248384){
     s0+=975.0;
     s1+=16.0;
    } else {
     s0+=1096.0;
     s1+=758.0;
    }
   } else {
    if(i63<0.015869393944740295){
     s0+=3272.0;
     s1+=16.0;
    } else {
     s0+=584.0;
     s1+=145.0;
    }
   }
  } else {
   if(i35<1.0067379474639893){
    if(i68<0.0252531785517931){
     s0+=52168.0;
     s1+=109.0;
    } else {
     s0+=8125.0;
     s1+=544.0;
    }
   } else {
    if(i70<0.0005958372494205832){
     s0+=1973.0;
     s1+=218.0;
    } else {
     s0+=534.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i33<0.0005116930697113276){
   if(i4<1.000671148300171){
    if(i66<1.0005371570587158){
     s0+=340.0;
     s1+=12.0;
    } else {
     s0+=33.0;
     s1+=26.0;
    }
   } else {
    if(i32<1.0530544519424438){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   if(i11<-0.0004120469093322754){
    if(i0<0.07780852913856506){
     s1+=2.0;
    } else {
     s0+=310.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.06300857663154602){
     s0+=64.0;
     s1+=1386.0;
    } else {
     s0+=895.0;
     s1+=1998.0;
    }
   }
  }
 }
} else {
 if(i57<0.9992579221725464){
  s0+=349.0;
 } else {
  if(i30<0.0001616518129594624){
   if(i48<0.0008835443295538425){
    if(i36<0.00019758939743041992){
     s0+=65.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=26.0;
   }
  } else {
   if(i3<0.07085821032524109){
    if(i62<0.0029217302799224854){
     s0+=99.0;
     s1+=629.0;
    } else {
     s0+=97.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.0008716583251953125){
     s0+=140.0;
     s1+=1091.0;
    } else {
     s0+=57.0;
     s1+=9795.0;
    }
   }
  }
 }
}
if(i1<0.081397145986557){
 if(i13<1.0044500827789307){
  if(i20<0.01425079070031643){
   if(i62<-0.0023474693298339844){
    if(i39<0.0018859505653381348){
     s0+=808.0;
     s1+=326.0;
    } else {
     s0+=1204.0;
     s1+=45.0;
    }
   } else {
    if(i9<1.0436501502990723){
     s0+=49751.0;
     s1+=91.0;
    } else {
     s0+=4534.0;
     s1+=212.0;
    }
   }
  } else {
   if(i37<1.196009874343872){
    if(i74<1.0001026391983032){
     s0+=3264.0;
     s1+=555.0;
    } else {
     s0+=706.0;
     s1+=768.0;
    }
   } else {
    if(i4<1.0008890628814697){
     s0+=8141.0;
     s1+=140.0;
    } else {
     s0+=324.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i14<1.0014841556549072){
   if(i32<1.083996295928955){
    if(i28<1.1616706848144531){
     s1+=65.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i20<0.043985068798065186){
     s0+=453.0;
     s1+=10.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i48<0.0007417324231937528){
    if(i22<3.445148468017578e-05){
     s0+=24.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i33<0.010116010904312134){
     s0+=2.0;
     s1+=617.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i14<0.9986332058906555){
  if(i38<0.007664176635444164){
   if(i17<0.9981635808944702){
    if(i66<0.9999040365219116){
     s0+=436.0;
     s1+=6.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i43<-1.0808560546138324e-05){
    if(i9<1.045812964439392){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i31<0.001156656420789659){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<3.975629806518555e-05){
   if(i21<0.0017367787659168243){
    if(i66<0.9998031854629517){
     s0+=66.0;
     s1+=166.0;
    } else {
     s0+=539.0;
     s1+=106.0;
    }
   } else {
    if(i56<-0.00012389918265398592){
     s0+=267.0;
     s1+=2900.0;
    } else {
     s0+=276.0;
     s1+=455.0;
    }
   }
  } else {
   if(i56<-0.0005582542507909238){
    if(i17<0.9958057403564453){
     s0+=5.0;
     s1+=65.0;
    } else {
     s1+=7252.0;
    }
   } else {
    if(i52<8.853756298776716e-05){
     s0+=33.0;
     s1+=2547.0;
    } else {
     s0+=90.0;
     s1+=733.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i4<1.002478003501892){
  if(i50<0.0015211787540465593){
   if(i9<1.042891263961792){
    if(i72<0.010830682702362537){
     s0+=44165.0;
     s1+=64.0;
    } else {
     s0+=12942.0;
     s1+=253.0;
    }
   } else {
    if(i20<0.02210766077041626){
     s0+=5025.0;
     s1+=301.0;
    } else {
     s0+=496.0;
     s1+=325.0;
    }
   }
  } else {
   if(i2<-0.00032889842987060547){
    if(i31<0.002352947136387229){
     s0+=1460.0;
     s1+=232.0;
    } else {
     s0+=2718.0;
     s1+=69.0;
    }
   } else {
    if(i52<2.3525652068201452e-05){
     s0+=1762.0;
     s1+=133.0;
    } else {
     s0+=747.0;
     s1+=697.0;
    }
   }
  }
 } else {
  if(i42<1.2314128875732422){
   if(i23<1.0380696058273315){
    s0+=6.0;
   } else {
    s1+=620.0;
   }
  } else {
   if(i24<1.0005313158035278){
    if(i63<0.007317803800106049){
     s0+=43.0;
     s1+=19.0;
    } else {
     s0+=21.0;
     s1+=242.0;
    }
   } else {
    if(i74<1.0044143199920654){
     s0+=182.0;
     s1+=4.0;
    } else {
     s0+=20.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i49<0.9988081455230713){
  if(i31<0.0528067983686924){
   if(i1<0.0823793113231659){
    if(i24<1.0015910863876343){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i61<-2.4194796424126253e-06){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=376.0;
    }
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i21<0.0016412362456321716){
   if(i6<-4.5713473809883e-05){
    s1+=129.0;
   } else {
    if(i28<1.255998969078064){
     s0+=315.0;
     s1+=187.0;
    } else {
     s0+=220.0;
    }
   }
  } else {
   if(i18<-4.0531158447265625e-06){
    if(i51<0.04774704575538635){
     s0+=133.0;
     s1+=1796.0;
    } else {
     s0+=515.0;
     s1+=1189.0;
    }
   } else {
    if(i12<1.0061988830566406){
     s0+=71.0;
     s1+=1482.0;
    } else {
     s0+=26.0;
     s1+=9211.0;
    }
   }
  }
 }
}
if(i3<0.08441624045372009){
 if(i12<1.0047008991241455){
  if(i11<0.0006326735019683838){
   if(i60<0.047331809997558594){
    if(i54<0.0002880088868550956){
     s0+=53858.0;
     s1+=316.0;
    } else {
     s0+=2646.0;
     s1+=299.0;
    }
   } else {
    if(i37<1.1812903881072998){
     s0+=4206.0;
     s1+=994.0;
    } else {
     s0+=6905.0;
     s1+=178.0;
    }
   }
  } else {
   if(i4<1.001943588256836){
    if(i63<0.015544513240456581){
     s0+=507.0;
     s1+=38.0;
    } else {
     s0+=11.0;
     s1+=55.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=46.0;
     s1+=323.0;
    } else {
     s0+=59.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i42<1.1657817363739014){
   if(i2<0.0001608133316040039){
    if(i70<6.26977562205866e-05){
     s0+=37.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i41<0.05260825157165527){
     s0+=4.0;
     s1+=569.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i48<0.0017993759829550982){
    if(i18<0.00036269426345825195){
     s0+=975.0;
     s1+=12.0;
    } else {
     s1+=29.0;
    }
   } else {
    s1+=120.0;
   }
  }
 }
} else {
 if(i11<-0.0003927648067474365){
  if(i11<-0.00043773651123046875){
   if(i43<-1.162849639513297e-05){
    if(i36<-0.00011268258094787598){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    s0+=634.0;
   }
  } else {
   if(i21<0.0027153603732585907){
    if(i49<0.9996635913848877){
     s0+=25.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i75<9.424780728295445e-05){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i4<1.0016975402832031){
   if(i54<0.0008268627570942044){
    if(i34<0.012303916737437248){
     s0+=494.0;
     s1+=276.0;
    } else {
     s0+=594.0;
     s1+=1905.0;
    }
   } else {
    if(i51<0.07468396425247192){
     s0+=4.0;
     s1+=608.0;
    } else {
     s0+=61.0;
     s1+=313.0;
    }
   }
  } else {
   if(i4<1.0038375854492188){
    if(i1<0.1271355152130127){
     s0+=103.0;
     s1+=406.0;
    } else {
     s0+=17.0;
     s1+=1192.0;
    }
   } else {
    if(i15<3.6835670471191406e-05){
     s0+=25.0;
     s1+=499.0;
    } else {
     s1+=8784.0;
    }
   }
  }
 }
}
if(i11<0.00044038891792297363){
 if(i19<1.0107624530792236){
  if(i25<1.0401114225387573){
   if(i9<1.042891263961792){
    if(i45<-0.006163239479064941){
     s0+=1777.0;
     s1+=272.0;
    } else {
     s0+=58067.0;
     s1+=560.0;
    }
   } else {
    if(i58<0.03370125591754913){
     s0+=3965.0;
     s1+=481.0;
    } else {
     s0+=1323.0;
     s1+=993.0;
    }
   }
  } else {
   if(i38<0.005455742124468088){
    if(i17<1.0003206729888916){
     s0+=2010.0;
     s1+=316.0;
    } else {
     s0+=188.0;
     s1+=269.0;
    }
   } else {
    if(i58<0.0929410457611084){
     s0+=173.0;
     s1+=45.0;
    } else {
     s0+=28.0;
     s1+=441.0;
    }
   }
  }
 } else {
  if(i5<1.150369644165039e-05){
   if(i56<-0.0009345976286567748){
    if(i47<0.003981305286288261){
     s0+=23.0;
    } else {
     s0+=5.0;
     s1+=144.0;
    }
   } else {
    if(i43<1.244283794221701e-06){
     s0+=910.0;
     s1+=719.0;
    } else {
     s0+=258.0;
     s1+=19.0;
    }
   }
  } else {
   if(i3<0.1059177815914154){
    if(i32<1.1458663940429688){
     s0+=32.0;
     s1+=269.0;
    } else {
     s0+=336.0;
     s1+=4.0;
    }
   } else {
    if(i21<0.0029280013404786587){
     s0+=98.0;
     s1+=136.0;
    } else {
     s0+=11.0;
     s1+=1329.0;
    }
   }
  }
 }
} else {
 if(i4<1.0018925666809082){
  if(i23<1.145543098449707){
   if(i23<1.0819685459136963){
    if(i70<0.0008372899610549212){
     s0+=269.0;
     s1+=43.0;
    } else {
     s0+=644.0;
     s1+=2.0;
    }
   } else {
    if(i3<0.13749057054519653){
     s0+=407.0;
     s1+=93.0;
    } else {
     s0+=2.0;
     s1+=60.0;
    }
   }
  } else {
   if(i55<-0.0004906380199827254){
    if(i0<0.07995370030403137){
     s0+=66.0;
     s1+=46.0;
    } else {
     s0+=31.0;
     s1+=349.0;
    }
   } else {
    if(i48<0.006489492021501064){
     s0+=81.0;
     s1+=26.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i46<0.00020624833996407688){
   s0+=27.0;
  } else {
   if(i3<0.053791552782058716){
    if(i2<0.0009527206420898438){
     s0+=88.0;
     s1+=115.0;
    } else {
     s0+=32.0;
     s1+=225.0;
    }
   } else {
    if(i15<-6.133317947387695e-05){
     s0+=152.0;
     s1+=1058.0;
    } else {
     s0+=23.0;
     s1+=9195.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i4<1.0024590492248535){
  if(i1<0.07910647988319397){
   if(i31<0.0002826203708536923){
    if(i62<-0.004355043172836304){
     s0+=1.0;
     s1+=31.0;
    } else {
     s0+=52223.0;
     s1+=191.0;
    }
   } else {
    if(i38<0.0010038657346740365){
     s0+=3416.0;
     s1+=766.0;
    } else {
     s0+=8687.0;
     s1+=168.0;
    }
   }
  } else {
   if(i22<-1.2248754501342773e-05){
    if(i54<0.0006874162354506552){
     s0+=196.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=12.0;
    }
   } else {
    if(i2<-0.0007422864437103271){
     s0+=76.0;
     s1+=21.0;
    } else {
     s0+=163.0;
     s1+=793.0;
    }
   }
  }
 } else {
  if(i31<0.00019257156236562878){
   if(i52<1.060911290551303e-05){
    s0+=70.0;
   } else {
    s1+=15.0;
   }
  } else {
   if(i70<0.00017413156456314027){
    s0+=18.0;
   } else {
    if(i57<1.0005393028259277){
     s0+=14.0;
     s1+=489.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i14<1.0015032291412354){
  if(i6<-4.108322900719941e-05){
   if(i11<-0.0003482699394226074){
    if(i3<0.12352511286735535){
     s0+=97.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i56<-0.0002269941323902458){
     s0+=83.0;
     s1+=2813.0;
    } else {
     s0+=182.0;
     s1+=248.0;
    }
   }
  } else {
   if(i8<0.07081624865531921){
    if(i3<0.0841795802116394){
     s0+=3756.0;
     s1+=430.0;
    } else {
     s0+=62.0;
     s1+=211.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=489.0;
     s1+=634.0;
    } else {
     s0+=797.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i3<0.08921685814857483){
   if(i64<0.0017723441123962402){
    if(i4<1.0023391246795654){
     s0+=133.0;
     s1+=123.0;
    } else {
     s0+=59.0;
     s1+=760.0;
    }
   } else {
    if(i6<-8.998997509479523e-05){
     s0+=6.0;
     s1+=33.0;
    } else {
     s0+=359.0;
     s1+=14.0;
    }
   }
  } else {
   if(i2<0.0006921291351318359){
    if(i60<0.24445925652980804){
     s0+=119.0;
     s1+=166.0;
    } else {
     s0+=7.0;
     s1+=297.0;
    }
   } else {
    if(i3<0.13697117567062378){
     s0+=43.0;
     s1+=920.0;
    } else {
     s0+=5.0;
     s1+=7831.0;
    }
   }
  }
 }
}
if(i6<-8.143010927597061e-05){
 if(i26<0.9616186618804932){
  if(i70<0.0018961112946271896){
   if(i0<0.1015537679195404){
    if(i48<0.006469324231147766){
     s0+=423.0;
     s1+=7.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=32.0;
   }
  } else {
   if(i5<-4.461407661437988e-05){
    if(i16<0.9365776181221008){
     s0+=11.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i33<0.008013546466827393){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=123.0;
    }
   }
  }
 } else {
  if(i37<1.0677311420440674){
   s0+=147.0;
  } else {
   if(i35<1.0059840679168701){
    if(i34<0.021912533789873123){
     s0+=122.0;
     s1+=287.0;
    } else {
     s0+=15.0;
     s1+=1653.0;
    }
   } else {
    if(i26<1.0043134689331055){
     s0+=39.0;
     s1+=527.0;
    } else {
     s0+=9.0;
     s1+=8479.0;
    }
   }
  }
 }
} else {
 if(i17<1.0028021335601807){
  if(i31<0.00030131894163787365){
   if(i29<1.0088374614715576){
    if(i50<0.0016713034128770232){
     s0+=52526.0;
     s1+=201.0;
    } else {
     s0+=461.0;
     s1+=46.0;
    }
   } else {
    if(i38<0.0011657548602670431){
     s0+=20.0;
     s1+=157.0;
    } else {
     s0+=78.0;
     s1+=14.0;
    }
   }
  } else {
   if(i0<0.07472497224807739){
    if(i42<1.1037919521331787){
     s0+=3672.0;
     s1+=1243.0;
    } else {
     s0+=10724.0;
     s1+=329.0;
    }
   } else {
    if(i27<0.06313100457191467){
     s0+=154.0;
     s1+=1252.0;
    } else {
     s0+=1453.0;
     s1+=1392.0;
    }
   }
  }
 } else {
  if(i22<2.0802021026611328e-05){
   if(i3<0.09180545806884766){
    if(i33<0.0016706546302884817){
     s0+=84.0;
     s1+=125.0;
    } else {
     s0+=654.0;
     s1+=23.0;
    }
   } else {
    if(i41<0.07121384143829346){
     s0+=2.0;
     s1+=303.0;
    } else {
     s0+=71.0;
     s1+=137.0;
    }
   }
  } else {
   if(i4<1.0020725727081299){
    if(i70<0.0017223935574293137){
     s0+=143.0;
     s1+=83.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i37<1.2312867641448975){
     s0+=7.0;
     s1+=746.0;
    } else {
     s0+=61.0;
     s1+=151.0;
    }
   }
  }
 }
}
if(i3<0.08509618043899536){
 if(i13<1.0049419403076172){
  if(i44<-0.0013678371906280518){
   if(i1<0.04369679093360901){
    if(i46<0.0029631946235895157){
     s0+=2071.0;
     s1+=443.0;
    } else {
     s0+=1974.0;
     s1+=122.0;
    }
   } else {
    if(i54<0.0003770083421841264){
     s0+=343.0;
     s1+=91.0;
    } else {
     s0+=92.0;
     s1+=403.0;
    }
   }
  } else {
   if(i1<0.06667342782020569){
    if(i58<0.026345448568463326){
     s0+=53840.0;
     s1+=321.0;
    } else {
     s0+=7711.0;
     s1+=461.0;
    }
   } else {
    if(i46<0.00027032196521759033){
     s0+=1064.0;
     s1+=17.0;
    } else {
     s0+=1503.0;
     s1+=571.0;
    }
   }
  }
 } else {
  if(i10<1.03886079788208){
   if(i6<-5.990127829136327e-05){
    if(i17<1.0004171133041382){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i47<0.0008232593536376953){
     s1+=4.0;
    } else {
     s0+=307.0;
    }
   }
  } else {
   if(i43<-1.4425161680264864e-05){
    if(i51<0.025778383016586304){
     s0+=6.0;
     s1+=526.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i37<1.1620773077011108){
     s1+=34.0;
    } else {
     s0+=83.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i57<0.9993896484375){
  if(i14<0.997862696647644){
   s0+=388.0;
  } else {
   if(i37<1.1005222797393799){
    s0+=6.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i14<0.9985301494598389){
   if(i38<0.02239430509507656){
    if(i36<-0.0001291334629058838){
     s0+=312.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=9.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i0<0.11507239937782288){
    if(i73<1.029631495475769){
     s0+=454.0;
     s1+=2090.0;
    } else {
     s0+=420.0;
     s1+=158.0;
    }
   } else {
    if(i38<0.0029918509535491467){
     s0+=253.0;
     s1+=1083.0;
    } else {
     s0+=161.0;
     s1+=10752.0;
    }
   }
  }
 }
}
if(i2<0.0005491375923156738){
 if(i67<1.0120911598205566){
  if(i3<0.08391007781028748){
   if(i65<0.0007819407619535923){
    if(i31<0.00031641291570849717){
     s0+=52911.0;
     s1+=176.0;
    } else {
     s0+=6590.0;
     s1+=640.0;
    }
   } else {
    if(i39<0.0019846719224005938){
     s0+=1520.0;
     s1+=851.0;
    } else {
     s0+=5562.0;
     s1+=255.0;
    }
   }
  } else {
   if(i14<0.9985139966011047){
    if(i36<-0.00012871623039245605){
     s0+=445.0;
     s1+=5.0;
    } else {
     s0+=28.0;
     s1+=15.0;
    }
   } else {
    if(i6<-2.0145689632045105e-06){
     s0+=72.0;
     s1+=1390.0;
    } else {
     s0+=93.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i0<0.09714290499687195){
   if(i38<0.0011792927980422974){
    if(i6<-2.3855449398979545e-05){
     s0+=17.0;
     s1+=278.0;
    } else {
     s0+=627.0;
     s1+=74.0;
    }
   } else {
    if(i43<-8.640397936687805e-06){
     s0+=856.0;
     s1+=86.0;
    } else {
     s0+=978.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<8.163889901879884e-07){
    if(i20<0.029598794877529144){
     s0+=388.0;
     s1+=506.0;
    } else {
     s0+=108.0;
     s1+=1100.0;
    }
   } else {
    if(i31<0.0018148443195968866){
     s1+=17.0;
    } else {
     s0+=222.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003116395091637969){
  s0+=141.0;
 } else {
  if(i5<6.848573684692383e-05){
   if(i66<1.0030925273895264){
    if(i9<1.1370477676391602){
     s0+=268.0;
     s1+=1081.0;
    } else {
     s0+=8.0;
     s1+=786.0;
    }
   } else {
    if(i3<0.14556166529655457){
     s0+=59.0;
     s1+=20.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i57<1.0007838010787964){
    if(i17<0.997504472732544){
     s0+=22.0;
     s1+=118.0;
    } else {
     s0+=67.0;
     s1+=9703.0;
    }
   } else {
    if(i7<0.9919891953468323){
     s0+=4.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i15<0.0008113384246826172){
 if(i11<0.0004658699035644531){
  if(i25<1.0406361818313599){
   if(i8<0.07571476697921753){
    if(i23<1.0485899448394775){
     s0+=55374.0;
     s1+=316.0;
    } else {
     s0+=10028.0;
     s1+=1590.0;
    }
   } else {
    if(i40<0.042587220668792725){
     s0+=8.0;
     s1+=319.0;
    } else {
     s0+=130.0;
     s1+=147.0;
    }
   }
  } else {
   if(i32<1.3685884475708008){
    if(i4<0.9972246885299683){
     s0+=1192.0;
     s1+=115.0;
    } else {
     s0+=2274.0;
     s1+=1665.0;
    }
   } else {
    if(i14<0.9988934993743896){
     s0+=40.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=308.0;
    }
   }
  }
 } else {
  if(i1<0.11551490426063538){
   if(i45<-0.0027983784675598145){
    if(i9<1.033184289932251){
     s0+=80.0;
     s1+=16.0;
    } else {
     s0+=190.0;
     s1+=601.0;
    }
   } else {
    if(i18<-0.00012052059173583984){
     s0+=865.0;
     s1+=38.0;
    } else {
     s0+=330.0;
     s1+=283.0;
    }
   }
  } else {
   if(i21<0.00456954026594758){
    if(i59<0.04540395736694336){
     s0+=6.0;
     s1+=56.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i68<0.16230818629264832){
     s0+=20.0;
     s1+=588.0;
    } else {
     s0+=2.0;
     s1+=1098.0;
    }
   }
  }
 }
} else {
 if(i0<0.052950650453567505){
  if(i63<0.006361411418765783){
   if(i5<7.015466690063477e-05){
    if(i43<-1.49777733895462e-05){
     s1+=22.0;
    } else {
     s0+=425.0;
     s1+=2.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i2<0.00025600194931030273){
    if(i51<-0.05786624550819397){
     s1+=1.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i43<-1.2423267435224261e-05){
     s1+=238.0;
    } else {
     s0+=15.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i21<0.002666058950126171){
   if(i32<1.145219087600708){
    if(i37<1.0634281635284424){
     s0+=4.0;
    } else {
     s1+=350.0;
    }
   } else {
    if(i12<1.0196139812469482){
     s0+=109.0;
     s1+=3.0;
    } else {
     s1+=107.0;
    }
   }
  } else {
   if(i4<0.9994387030601501){
    s0+=17.0;
   } else {
    s1+=9197.0;
   }
  }
 }
}
if(i0<0.07869040966033936){
 if(i63<0.0075655728578567505){
  if(i4<1.0024954080581665){
   if(i1<0.08271446824073792){
    if(i9<1.04337739944458){
     s0+=59563.0;
     s1+=560.0;
    } else {
     s0+=5971.0;
     s1+=670.0;
    }
   } else {
    if(i49<1.0011239051818848){
     s0+=26.0;
     s1+=136.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i37<1.217149257659912){
    if(i60<0.33379846811294556){
     s0+=2.0;
     s1+=502.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i36<0.00021412968635559082){
     s0+=159.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i2<0.0002027750015258789){
   if(i37<1.103413462638855){
    if(i28<1.0850647687911987){
     s0+=894.0;
    } else {
     s0+=174.0;
     s1+=428.0;
    }
   } else {
    if(i16<0.9780551195144653){
     s0+=789.0;
     s1+=139.0;
    } else {
     s0+=1335.0;
     s1+=62.0;
    }
   }
  } else {
   if(i62<0.004233419895172119){
    if(i47<0.0002627279027365148){
     s0+=14.0;
    } else {
     s0+=93.0;
     s1+=800.0;
    }
   } else {
    if(i70<0.0008803817327134311){
     s0+=110.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i2<0.00010317564010620117){
  if(i49<0.9989720582962036){
   if(i47<0.02070678398013115){
    if(i9<1.0416667461395264){
     s0+=96.0;
     s1+=14.0;
    } else {
     s0+=374.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i21<0.001498999074101448){
    if(i47<0.0033288218546658754){
     s0+=420.0;
     s1+=66.0;
    } else {
     s0+=21.0;
     s1+=48.0;
    }
   } else {
    if(i42<1.1824603080749512){
     s0+=34.0;
     s1+=724.0;
    } else {
     s0+=369.0;
     s1+=949.0;
    }
   }
  }
 } else {
  if(i26<1.0101923942565918){
   if(i21<0.0038716234266757965){
    if(i19<1.016275405883789){
     s0+=60.0;
     s1+=342.0;
    } else {
     s0+=251.0;
     s1+=34.0;
    }
   } else {
    if(i23<1.122573733329773){
     s0+=118.0;
     s1+=807.0;
    } else {
     s0+=17.0;
     s1+=2245.0;
    }
   }
  } else {
   if(i47<0.006582930218428373){
    if(i38<0.005599291529506445){
     s0+=27.0;
     s1+=1809.0;
    } else {
     s0+=19.0;
     s1+=55.0;
    }
   } else {
    if(i12<1.0071734189987183){
     s0+=1.0;
     s1+=128.0;
    } else {
     s1+=6692.0;
    }
   }
  }
 }
}
if(i7<1.0081498622894287){
 if(i11<0.00046449899673461914){
  if(i9<1.0450963973999023){
   if(i23<1.0451585054397583){
    if(i54<0.0002805837139021605){
     s0+=48868.0;
     s1+=55.0;
    } else {
     s0+=5181.0;
     s1+=171.0;
    }
   } else {
    if(i3<0.07665520906448364){
     s0+=7436.0;
     s1+=499.0;
    } else {
     s0+=212.0;
     s1+=252.0;
    }
   }
  } else {
   if(i20<0.021917831152677536){
    if(i0<0.06321871280670166){
     s0+=4519.0;
     s1+=279.0;
    } else {
     s0+=1032.0;
     s1+=387.0;
    }
   } else {
    if(i22<-1.2695789337158203e-05){
     s0+=529.0;
     s1+=30.0;
    } else {
     s0+=679.0;
     s1+=1681.0;
    }
   }
  }
 } else {
  if(i37<1.3424568176269531){
   if(i2<0.0006892085075378418){
    if(i23<1.066749095916748){
     s0+=624.0;
     s1+=71.0;
    } else {
     s0+=431.0;
     s1+=286.0;
    }
   } else {
    if(i15<-0.002256155014038086){
     s0+=19.0;
    } else {
     s0+=96.0;
     s1+=789.0;
    }
   }
  } else {
   if(i23<1.0980539321899414){
    if(i33<0.007828504778444767){
     s1+=51.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i68<0.2837272882461548){
     s0+=129.0;
     s1+=611.0;
    } else {
     s0+=11.0;
     s1+=898.0;
    }
   }
  }
 }
} else {
 if(i48<0.0010296711698174477){
  if(i3<0.08373239636421204){
   if(i73<1.0111420154571533){
    if(i38<0.0011281659826636314){
     s0+=14.0;
     s1+=130.0;
    } else {
     s0+=248.0;
     s1+=45.0;
    }
   } else {
    if(i56<-0.0003245936241000891){
     s0+=428.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=36.0;
    }
   }
  } else {
   if(i31<0.0035358876921236515){
    if(i66<1.000338077545166){
     s0+=20.0;
     s1+=1157.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i3<0.17386773228645325){
     s0+=196.0;
     s1+=33.0;
    } else {
     s0+=36.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i21<0.0025731013156473637){
   if(i13<1.0007848739624023){
    if(i39<0.00809132307767868){
     s0+=149.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i26<1.0095518827438354){
     s0+=9.0;
     s1+=4.0;
    } else {
     s1+=75.0;
    }
   }
  } else {
   if(i22<-1.3768672943115234e-05){
    s0+=97.0;
   } else {
    if(i7<1.0156707763671875){
     s0+=118.0;
     s1+=1499.0;
    } else {
     s0+=13.0;
     s1+=7734.0;
    }
   }
  }
 }
}
if(i6<-7.880300836404786e-05){
 if(i4<0.9967300295829773){
  if(i8<0.0850355327129364){
   if(i36<0.00018668174743652344){
    s0+=437.0;
   } else {
    if(i30<0.002209452912211418){
     s1+=9.0;
    } else {
     s0+=64.0;
     s1+=4.0;
    }
   }
  } else {
   if(i21<0.005010110791772604){
    s0+=2.0;
   } else {
    s1+=38.0;
   }
  }
 } else {
  if(i0<0.016867130994796753){
   if(i16<0.9668173789978027){
    if(i53<-0.00918281078338623){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=147.0;
    }
   } else {
    if(i44<-0.007709115743637085){
     s0+=1.0;
     s1+=32.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   }
  } else {
   if(i71<3.1111099815461785e-05){
    if(i15<2.1636486053466797e-05){
     s0+=87.0;
     s1+=1210.0;
    } else {
     s0+=1.0;
     s1+=9405.0;
    }
   } else {
    if(i23<1.1259641647338867){
     s0+=106.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=251.0;
    }
   }
  }
 }
} else {
 if(i16<1.0056328773498535){
  if(i8<0.08016151189804077){
   if(i30<0.00029744330095127225){
    if(i17<1.0037059783935547){
     s0+=55744.0;
     s1+=483.0;
    } else {
     s0+=24.0;
     s1+=62.0;
    }
   } else {
    if(i9<1.0398318767547607){
     s0+=6548.0;
     s1+=375.0;
    } else {
     s0+=4797.0;
     s1+=1417.0;
    }
   }
  } else {
   if(i55<-0.005368930287659168){
    if(i8<0.1246567964553833){
     s0+=370.0;
     s1+=67.0;
    } else {
     s0+=213.0;
     s1+=420.0;
    }
   } else {
    if(i40<0.056039512157440186){
     s0+=38.0;
     s1+=685.0;
    } else {
     s0+=218.0;
     s1+=170.0;
    }
   }
  }
 } else {
  if(i21<0.003108056029304862){
   if(i57<0.9997463226318359){
    if(i47<0.0007724936003796756){
     s0+=159.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=337.0;
    }
   } else {
    if(i1<0.291805237531662){
     s0+=2002.0;
     s1+=184.0;
    } else {
     s0+=18.0;
     s1+=45.0;
    }
   }
  } else {
   if(i23<1.324088454246521){
    if(i32<1.3183317184448242){
     s0+=93.0;
     s1+=1740.0;
    } else {
     s0+=86.0;
     s1+=16.0;
    }
   } else {
    s0+=76.0;
   }
  }
 }
}
if(i8<0.07194709777832031){
 if(i3<0.07855206727981567){
  if(i65<0.0007543103420175612){
   if(i4<1.0024821758270264){
    if(i51<-0.036050498485565186){
     s0+=439.0;
     s1+=120.0;
    } else {
     s0+=60349.0;
     s1+=662.0;
    }
   } else {
    if(i61<-5.195848643779755e-06){
     s0+=30.0;
     s1+=341.0;
    } else {
     s0+=123.0;
     s1+=19.0;
    }
   }
  } else {
   if(i13<0.9942451119422913){
    if(i48<0.006434008479118347){
     s0+=4514.0;
     s1+=90.0;
    } else {
     s0+=7.0;
     s1+=40.0;
    }
   } else {
    if(i2<0.0005509853363037109){
     s0+=2954.0;
     s1+=798.0;
    } else {
     s0+=80.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i4<0.9967865347862244){
   if(i20<0.02786931023001671){
    if(i14<0.9986097812652588){
     s0+=364.0;
     s1+=2.0;
    } else {
     s0+=40.0;
     s1+=11.0;
    }
   } else {
    if(i17<0.9956676959991455){
     s0+=16.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   }
  } else {
   if(i23<1.0452029705047607){
    if(i69<-0.0037159626372158527){
     s0+=109.0;
     s1+=8.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i41<0.04813629388809204){
     s0+=38.0;
     s1+=1970.0;
    } else {
     s0+=109.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i2<0.00045371055603027344){
  if(i72<0.1313023567199707){
   if(i51<0.059726327657699585){
    if(i20<0.016593094915151596){
     s0+=487.0;
     s1+=353.0;
    } else {
     s0+=276.0;
     s1+=1210.0;
    }
   } else {
    if(i3<0.128545343875885){
     s0+=587.0;
     s1+=49.0;
    } else {
     s0+=430.0;
     s1+=387.0;
    }
   }
  } else {
   if(i43<2.3490399598813383e-06){
    if(i57<1.0004010200500488){
     s0+=16.0;
     s1+=607.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   } else {
    s0+=25.0;
   }
  }
 } else {
  if(i2<0.0008550286293029785){
   if(i1<0.13217538595199585){
    if(i51<0.054603397846221924){
     s0+=26.0;
     s1+=203.0;
    } else {
     s0+=92.0;
     s1+=3.0;
    }
   } else {
    if(i20<0.026456722989678383){
     s0+=19.0;
     s1+=133.0;
    } else {
     s0+=8.0;
     s1+=724.0;
    }
   }
  } else {
   if(i13<0.9976902008056641){
    if(i1<0.11831635236740112){
     s0+=24.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=329.0;
    }
   } else {
    if(i0<0.11199641227722168){
     s0+=12.0;
     s1+=400.0;
    } else {
     s0+=6.0;
     s1+=8009.0;
    }
   }
  }
 }
}
if(i7<1.0082976818084717){
 if(i1<0.08401688933372498){
  if(i64<-0.0013231635093688965){
   if(i4<1.002468466758728){
    if(i12<0.9851076602935791){
     s0+=3294.0;
     s1+=110.0;
    } else {
     s0+=2499.0;
     s1+=868.0;
    }
   } else {
    if(i18<-0.00035387277603149414){
     s0+=23.0;
     s1+=7.0;
    } else {
     s0+=27.0;
     s1+=296.0;
    }
   }
  } else {
   if(i23<1.0485899448394775){
    if(i32<1.0598037242889404){
     s0+=41828.0;
     s1+=1.0;
    } else {
     s0+=12265.0;
     s1+=144.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=2401.0;
     s1+=763.0;
    } else {
     s0+=6106.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i38<0.0062002576887607574){
   if(i6<-1.1301707672828343e-05){
    if(i32<1.2630345821380615){
     s0+=243.0;
     s1+=1446.0;
    } else {
     s0+=120.0;
     s1+=3.0;
    }
   } else {
    if(i30<0.002067931229248643){
     s0+=190.0;
     s1+=146.0;
    } else {
     s0+=521.0;
     s1+=43.0;
    }
   }
  } else {
   if(i54<0.0006127596134319901){
    if(i31<0.0018871495267376304){
     s0+=30.0;
     s1+=14.0;
    } else {
     s0+=18.0;
     s1+=238.0;
    }
   } else {
    if(i11<-0.0005658864974975586){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=32.0;
     s1+=1916.0;
    }
   }
  }
 }
} else {
 if(i3<0.07048070430755615){
  if(i23<1.0836663246154785){
   if(i43<-1.3722813491767738e-05){
    if(i33<0.004787220153957605){
     s0+=2.0;
     s1+=215.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i37<1.0950405597686768){
     s0+=11.0;
     s1+=47.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<0.0002728104591369629){
    if(i2<0.0009585022926330566){
     s0+=649.0;
     s1+=43.0;
    } else {
     s0+=2.0;
     s1+=36.0;
    }
   } else {
    s1+=41.0;
   }
  }
 } else {
  if(i37<1.259662389755249){
   if(i21<0.0032135690562427044){
    if(i55<-0.00535159558057785){
     s0+=402.0;
     s1+=129.0;
    } else {
     s0+=85.0;
     s1+=709.0;
    }
   } else {
    if(i32<1.2563661336898804){
     s0+=67.0;
     s1+=2417.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i47<0.0031237686052918434){
    if(i6<-7.126150740077719e-05){
     s1+=3.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i6<-1.711010918370448e-05){
     s0+=1.0;
     s1+=7485.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i10<1.0452277660369873){
 if(i0<0.07978156208992004){
  if(i2<0.0006018579006195068){
   if(i46<0.00031265182769857347){
    if(i35<1.0090361833572388){
     s0+=46760.0;
     s1+=47.0;
    } else {
     s0+=8.0;
     s1+=16.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=3949.0;
     s1+=987.0;
    } else {
     s0+=14130.0;
     s1+=265.0;
    }
   }
  } else {
   if(i32<1.0533727407455444){
    s0+=69.0;
   } else {
    if(i61<-5.3081184887560084e-06){
     s0+=16.0;
     s1+=339.0;
    } else {
     s0+=70.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i5<-5.561113357543945e-05){
   if(i27<0.08583930134773254){
    if(i23<1.1115649938583374){
     s0+=131.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.9885735511779785){
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i23<1.049466609954834){
    if(i64<-0.000652611255645752){
     s1+=11.0;
    } else {
     s0+=61.0;
     s1+=15.0;
    }
   } else {
    if(i40<0.056511491537094116){
     s0+=11.0;
     s1+=855.0;
    } else {
     s0+=30.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i8<0.07475113868713379){
  if(i5<1.7344951629638672e-05){
   if(i6<-2.398124706814997e-05){
    if(i42<1.1423697471618652){
     s0+=36.0;
     s1+=369.0;
    } else {
     s0+=706.0;
     s1+=230.0;
    }
   } else {
    if(i3<0.08356201648712158){
     s0+=2971.0;
     s1+=196.0;
    } else {
     s0+=96.0;
     s1+=85.0;
    }
   }
  } else {
   if(i6<-4.4145337597001344e-05){
    if(i15<1.2516975402832031e-06){
     s0+=189.0;
     s1+=228.0;
    } else {
     s0+=12.0;
     s1+=1488.0;
    }
   } else {
    if(i48<0.0017718427116051316){
     s0+=330.0;
     s1+=110.0;
    } else {
     s0+=4.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i42<1.3312374353408813){
   if(i48<0.0011102445423603058){
    if(i69<-0.023300351575016975){
     s0+=582.0;
     s1+=122.0;
    } else {
     s0+=309.0;
     s1+=798.0;
    }
   } else {
    if(i2<-0.0006296932697296143){
     s0+=99.0;
     s1+=1.0;
    } else {
     s0+=194.0;
     s1+=1988.0;
    }
   }
  } else {
   if(i33<0.004773229360580444){
    if(i43<-1.2689621144090779e-05){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=113.0;
     s1+=2.0;
    }
   } else {
    if(i16<0.9984112977981567){
     s0+=130.0;
     s1+=1337.0;
    } else {
     s0+=34.0;
     s1+=7495.0;
    }
   }
  }
 }
}
if(i3<0.08515334129333496){
 if(i2<0.0006018579006195068){
  if(i30<0.0002960552810691297){
   if(i7<1.0081498622894287){
    if(i31<0.00025657439255155623){
     s0+=49919.0;
     s1+=144.0;
    } else {
     s0+=6086.0;
     s1+=358.0;
    }
   } else {
    if(i39<0.001140474108979106){
     s0+=15.0;
     s1+=112.0;
    } else {
     s0+=183.0;
     s1+=4.0;
    }
   }
  } else {
   if(i37<1.1812903881072998){
    if(i28<1.0840110778808594){
     s0+=2424.0;
    } else {
     s0+=2373.0;
     s1+=1268.0;
    }
   } else {
    if(i14<1.0009878873825073){
     s0+=6764.0;
     s1+=114.0;
    } else {
     s0+=1102.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i36<0.0001786947250366211){
   if(i43<-1.4819078387517948e-05){
    if(i42<1.5944836139678955){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=41.0;
     s1+=3.0;
    }
   } else {
    if(i53<-0.004503726959228516){
     s1+=5.0;
    } else {
     s0+=155.0;
    }
   }
  } else {
   if(i13<1.0030114650726318){
    if(i21<0.005343174561858177){
     s0+=57.0;
     s1+=2.0;
    } else {
     s0+=62.0;
     s1+=156.0;
    }
   } else {
    if(i62<0.006796419620513916){
     s0+=8.0;
     s1+=653.0;
    } else {
     s0+=10.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i11<-0.0004050135612487793){
  if(i36<-0.0001291334629058838){
   if(i2<-0.0004875063896179199){
    s0+=605.0;
   } else {
    if(i32<1.2058172225952148){
     s1+=1.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i57<0.9998556971549988){
    if(i12<0.9754793643951416){
     s0+=11.0;
    } else {
     s1+=13.0;
    }
   } else {
    s0+=20.0;
   }
  }
 } else {
  if(i6<-2.209031481470447e-05){
   if(i20<0.036087051033973694){
    if(i53<0.005025744438171387){
     s0+=167.0;
     s1+=4208.0;
    } else {
     s0+=273.0;
     s1+=378.0;
    }
   } else {
    if(i23<1.0431591272354126){
     s0+=7.0;
    } else {
     s0+=48.0;
     s1+=8767.0;
    }
   }
  } else {
   if(i40<0.04338252544403076){
    if(i21<0.001107483054511249){
     s0+=22.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=434.0;
    }
   } else {
    if(i38<0.004907004535198212){
     s0+=638.0;
     s1+=158.0;
    } else {
     s0+=79.0;
     s1+=124.0;
    }
   }
  }
 }
}
if(i16<1.0076344013214111){
 if(i2<0.000570446252822876){
  if(i10<1.0433766841888428){
   if(i23<1.0451585054397583){
    if(i23<1.0410068035125732){
     s0+=50252.0;
     s1+=103.0;
    } else {
     s0+=3724.0;
     s1+=97.0;
    }
   } else {
    if(i68<0.018613727763295174){
     s0+=4633.0;
     s1+=191.0;
    } else {
     s0+=5460.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i39<0.010469114407896996){
    if(i0<0.07947787642478943){
     s0+=3859.0;
     s1+=621.0;
    } else {
     s0+=936.0;
     s1+=1224.0;
    }
   } else {
    if(i28<1.5608327388763428){
     s0+=5.0;
     s1+=411.0;
    } else {
     s0+=119.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i47<0.0004203379503451288){
   s0+=87.0;
  } else {
   if(i30<0.0001235378731507808){
    s0+=13.0;
   } else {
    if(i3<0.05309402942657471){
     s0+=91.0;
     s1+=248.0;
    } else {
     s0+=102.0;
     s1+=2080.0;
    }
   }
  }
 }
} else {
 if(i11<0.00046557188034057617){
  if(i19<1.010759949684143){
   if(i37<1.10590398311615){
    if(i9<1.0631136894226074){
     s0+=4.0;
     s1+=143.0;
    } else {
     s0+=31.0;
     s1+=24.0;
    }
   } else {
    if(i38<0.005673767067492008){
     s0+=573.0;
     s1+=42.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i21<0.0031898319721221924){
    if(i46<0.0006537094013765454){
     s0+=25.0;
     s1+=294.0;
    } else {
     s0+=837.0;
     s1+=138.0;
    }
   } else {
    if(i61<8.875867933966219e-07){
     s0+=1.0;
     s1+=1763.0;
    } else {
     s0+=92.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<-4.217281093588099e-05){
   if(i12<1.0079443454742432){
    if(i23<1.124449610710144){
     s0+=65.0;
     s1+=182.0;
    } else {
     s1+=346.0;
    }
   } else {
    if(i34<0.0013789187651127577){
     s0+=1.0;
     s1+=15.0;
    } else {
     s1+=7857.0;
    }
   }
  } else {
   if(i47<0.001701059634797275){
    s1+=42.0;
   } else {
    if(i3<0.09380185604095459){
     s0+=140.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i3<0.08280995488166809){
 if(i6<-5.171601151232608e-05){
  if(i52<0.00015800585970282555){
   if(i62<0.0023131370544433594){
    if(i5<2.014636993408203e-05){
     s0+=211.0;
     s1+=72.0;
    } else {
     s0+=85.0;
     s1+=866.0;
    }
   } else {
    if(i34<0.010766783729195595){
     s0+=228.0;
     s1+=20.0;
    } else {
     s0+=59.0;
     s1+=59.0;
    }
   }
  } else {
   if(i34<0.061919115483760834){
    if(i13<1.0014197826385498){
     s0+=1442.0;
     s1+=33.0;
    } else {
     s0+=20.0;
     s1+=17.0;
    }
   } else {
    if(i70<0.0008960273116827011){
     s0+=2.0;
    } else {
     s1+=78.0;
    }
   }
  }
 } else {
  if(i45<-0.0058526694774627686){
   if(i0<0.03557810187339783){
    if(i14<1.0023833513259888){
     s0+=2755.0;
     s1+=345.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i64<-0.0022644102573394775){
     s0+=174.0;
     s1+=314.0;
    } else {
     s0+=297.0;
     s1+=77.0;
    }
   }
  } else {
   if(i31<0.00028167307027615607){
    if(i64<-0.0020436346530914307){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=51696.0;
     s1+=200.0;
    }
   } else {
    if(i38<0.0011359293712303042){
     s0+=3641.0;
     s1+=863.0;
    } else {
     s0+=8316.0;
     s1+=115.0;
    }
   }
  }
 }
} else {
 if(i22<-1.475214958190918e-05){
  if(i61<-3.554556315066293e-06){
   if(i30<0.0008670984534546733){
    s0+=11.0;
   } else {
    if(i13<0.9876408576965332){
     s1+=16.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i36<-5.46574592590332e-05){
    if(i38<0.007682628929615021){
     s0+=634.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=1.0;
    }
   } else {
    if(i3<0.1451554298400879){
     s0+=9.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i18<0.00010502338409423828){
   if(i0<0.12297266721725464){
    if(i73<1.0294640064239502){
     s0+=569.0;
     s1+=1402.0;
    } else {
     s0+=423.0;
     s1+=61.0;
    }
   } else {
    if(i21<0.001783021492883563){
     s0+=195.0;
     s1+=75.0;
    } else {
     s0+=157.0;
     s1+=3101.0;
    }
   }
  } else {
   if(i28<1.0762357711791992){
    s0+=21.0;
   } else {
    if(i2<6.046891212463379e-05){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=45.0;
     s1+=9430.0;
    }
   }
  }
 }
}
if(i4<1.0024573802947998){
 if(i60<0.047331809997558594){
  if(i35<1.0099942684173584){
   if(i7<1.0095628499984741){
    if(i50<0.0019750180654227734){
     s0+=56301.0;
     s1+=584.0;
    } else {
     s0+=612.0;
     s1+=197.0;
    }
   } else {
    if(i6<-2.703327663766686e-05){
     s0+=7.0;
     s1+=67.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   }
  } else {
   if(i42<1.1819204092025757){
    if(i21<0.0015846018213778734){
     s0+=83.0;
     s1+=58.0;
    } else {
     s0+=23.0;
     s1+=381.0;
    }
   } else {
    if(i8<0.069922536611557){
     s0+=153.0;
     s1+=10.0;
    } else {
     s0+=35.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i29<1.008851408958435){
   if(i11<7.513165473937988e-05){
    if(i9<1.0401077270507812){
     s0+=6088.0;
     s1+=281.0;
    } else {
     s0+=3227.0;
     s1+=1098.0;
    }
   } else {
    if(i1<0.09613078832626343){
     s0+=2140.0;
     s1+=618.0;
    } else {
     s0+=101.0;
     s1+=939.0;
    }
   }
  } else {
   if(i3<0.09096014499664307){
    if(i28<1.1039612293243408){
     s0+=207.0;
     s1+=129.0;
    } else {
     s0+=1099.0;
     s1+=43.0;
    }
   } else {
    if(i20<0.035445064306259155){
     s0+=430.0;
     s1+=515.0;
    } else {
     s0+=128.0;
     s1+=976.0;
    }
   }
  }
 }
} else {
 if(i43<-1.1105801604571752e-05){
  if(i1<0.05607566237449646){
   if(i38<0.0017419559881091118){
    if(i42<1.069656252861023){
     s0+=3.0;
    } else {
     s1+=182.0;
    }
   } else {
    if(i67<0.9925075769424438){
     s0+=35.0;
     s1+=187.0;
    } else {
     s0+=115.0;
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.13113737106323242){
    if(i64<0.0043450891971588135){
     s0+=54.0;
     s1+=1797.0;
    } else {
     s0+=51.0;
     s1+=36.0;
    }
   } else {
    if(i0<0.16144409775733948){
     s0+=7.0;
     s1+=886.0;
    } else {
     s1+=8120.0;
    }
   }
  }
 } else {
  if(i66<0.9994823336601257){
   s1+=54.0;
  } else {
   if(i51<-0.028998881578445435){
    if(i8<0.017966538667678833){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i28<1.1386182308197021){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=89.0;
    }
   }
  }
 }
}
if(i4<1.0024571418762207){
 if(i1<0.08341947197914124){
  if(i30<0.0002955581876449287){
   if(i23<1.0469666719436646){
    if(i44<-0.0019494295120239258){
     s0+=90.0;
     s1+=16.0;
    } else {
     s0+=50122.0;
     s1+=107.0;
    }
   } else {
    if(i29<0.9832561016082764){
     s0+=33.0;
     s1+=67.0;
    } else {
     s0+=5919.0;
     s1+=332.0;
    }
   }
  } else {
   if(i4<0.9979634284973145){
    if(i39<0.0022140229120850563){
     s0+=1913.0;
     s1+=232.0;
    } else {
     s0+=6422.0;
     s1+=91.0;
    }
   } else {
    if(i33<0.00031651483732275665){
     s0+=1721.0;
    } else {
     s0+=2836.0;
     s1+=1232.0;
    }
   }
  }
 } else {
  if(i40<0.046840161085128784){
   if(i57<0.9973610639572144){
    s0+=80.0;
   } else {
    if(i23<1.036442518234253){
     s0+=4.0;
    } else {
     s0+=73.0;
     s1+=2352.0;
    }
   }
  } else {
   if(i47<0.006297338753938675){
    if(i36<-0.00013622641563415527){
     s0+=383.0;
     s1+=11.0;
    } else {
     s0+=959.0;
     s1+=826.0;
    }
   } else {
    if(i1<0.10942631959915161){
     s0+=68.0;
     s1+=7.0;
    } else {
     s0+=23.0;
     s1+=600.0;
    }
   }
  }
 }
} else {
 if(i30<0.0001616518129594624){
  if(i6<-5.676590808434412e-05){
   if(i32<1.2344772815704346){
    s1+=36.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i2<0.0015282034873962402){
    if(i0<0.06178027391433716){
     s0+=89.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i1<0.07000294327735901){
   if(i53<-0.0004063546657562256){
    if(i36<0.00013715028762817383){
     s0+=30.0;
     s1+=14.0;
    } else {
     s0+=38.0;
     s1+=521.0;
    }
   } else {
    if(i32<1.1682090759277344){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=87.0;
     s1+=6.0;
    }
   }
  } else {
   if(i1<0.12669983506202698){
    if(i45<0.014839231967926025){
     s0+=16.0;
     s1+=1410.0;
    } else {
     s0+=80.0;
     s1+=30.0;
    }
   } else {
    if(i2<0.0009856820106506348){
     s0+=8.0;
     s1+=857.0;
    } else {
     s0+=3.0;
     s1+=8455.0;
    }
   }
  }
 }
}
if(i7<1.0081498622894287){
 if(i1<0.08206033706665039){
  if(i30<0.00031619376386515796){
   if(i37<1.0598037242889404){
    s0+=35308.0;
   } else {
    if(i5<4.029273986816406e-05){
     s0+=21807.0;
     s1+=518.0;
    } else {
     s0+=16.0;
     s1+=78.0;
    }
   }
  } else {
   if(i37<1.1812903881072998){
    if(i6<-1.438083199900575e-05){
     s0+=381.0;
     s1+=668.0;
    } else {
     s0+=3629.0;
     s1+=555.0;
    }
   } else {
    if(i6<-0.00011260142491664737){
     s0+=146.0;
     s1+=195.0;
    } else {
     s0+=7170.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i53<0.0028571784496307373){
   if(i11<-0.0004705190658569336){
    s0+=132.0;
   } else {
    if(i6<-2.2307662220555358e-05){
     s0+=9.0;
     s1+=1909.0;
    } else {
     s0+=100.0;
     s1+=360.0;
    }
   }
  } else {
   if(i38<0.006548816338181496){
    if(i74<1.0005089044570923){
     s0+=677.0;
     s1+=191.0;
    } else {
     s0+=258.0;
     s1+=364.0;
    }
   } else {
    if(i58<0.0959945023059845){
     s0+=67.0;
     s1+=94.0;
    } else {
     s0+=14.0;
     s1+=876.0;
    }
   }
  }
 }
} else {
 if(i34<0.023885676637291908){
  if(i28<1.2392117977142334){
   if(i21<0.0017458111979067326){
    if(i23<1.0728731155395508){
     s0+=2.0;
     s1+=122.0;
    } else {
     s0+=227.0;
     s1+=57.0;
    }
   } else {
    if(i6<-1.6683618014212698e-05){
     s0+=10.0;
     s1+=2022.0;
    } else {
     s0+=87.0;
     s1+=3.0;
    }
   }
  } else {
   if(i0<0.11062437295913696){
    if(i21<0.006165745668113232){
     s0+=771.0;
     s1+=47.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i55<-0.009880254045128822){
     s0+=69.0;
     s1+=52.0;
    } else {
     s0+=28.0;
     s1+=1084.0;
    }
   }
  }
 } else {
  if(i17<0.9999790191650391){
   if(i4<0.9978014230728149){
    if(i49<0.9994478225708008){
     s0+=94.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   } else {
    if(i21<0.003630175720900297){
     s0+=51.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=764.0;
    }
   }
  } else {
   if(i11<0.000447690486907959){
    if(i49<1.0003304481506348){
     s0+=3.0;
     s1+=700.0;
    } else {
     s0+=42.0;
     s1+=54.0;
    }
   } else {
    s1+=6025.0;
   }
  }
 }
}
if(i14<1.0016210079193115){
 if(i29<1.0080817937850952){
  if(i8<0.08111366629600525){
   if(i3<0.08262977004051208){
    if(i45<-0.005985170602798462){
     s0+=3400.0;
     s1+=697.0;
    } else {
     s0+=62700.0;
     s1+=975.0;
    }
   } else {
    if(i11<-0.00035831332206726074){
     s0+=394.0;
     s1+=7.0;
    } else {
     s0+=181.0;
     s1+=575.0;
    }
   }
  } else {
   if(i56<-0.00011120819544885308){
    if(i5<-4.616379737854004e-05){
     s0+=98.0;
     s1+=72.0;
    } else {
     s0+=65.0;
     s1+=878.0;
    }
   } else {
    if(i8<0.11951401829719543){
     s0+=283.0;
     s1+=83.0;
    } else {
     s0+=118.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i6<-3.35544791596476e-05){
   if(i0<0.05888846516609192){
    if(i38<0.0010878529865294695){
     s1+=96.0;
    } else {
     s0+=208.0;
     s1+=9.0;
    }
   } else {
    if(i43<-6.39288430193119e-07){
     s0+=111.0;
     s1+=2914.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.08269476890563965){
    if(i21<0.005803869571536779){
     s0+=1491.0;
     s1+=52.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i41<0.06261825561523438){
     s0+=44.0;
     s1+=251.0;
    } else {
     s0+=539.0;
     s1+=128.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004864931106567383){
  if(i1<0.10007676482200623){
   if(i34<0.03927215188741684){
    if(i52<0.00013531706645153463){
     s0+=255.0;
     s1+=86.0;
    } else {
     s0+=619.0;
     s1+=14.0;
    }
   } else {
    if(i62<-0.03624895215034485){
     s0+=2.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i68<0.09457103163003922){
    if(i20<0.026799865067005157){
     s0+=23.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i48<0.0011131956707686186){
     s0+=8.0;
    } else {
     s0+=8.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i3<0.05762094259262085){
   if(i64<0.0014644265174865723){
    if(i50<0.0019193347543478012){
     s0+=68.0;
     s1+=36.0;
    } else {
     s0+=45.0;
     s1+=320.0;
    }
   } else {
    if(i48<0.0032504918053746223){
     s0+=50.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i61<-3.2720697618060512e-06){
    if(i15<-0.0005464553833007812){
     s0+=122.0;
     s1+=744.0;
    } else {
     s0+=29.0;
     s1+=8901.0;
    }
   } else {
    if(i30<0.006650110241025686){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i22<1.996755599975586e-05){
 if(i19<1.0107624530792236){
  if(i9<1.0450963973999023){
   if(i0<0.07865965366363525){
    if(i44<-0.001772850751876831){
     s0+=1711.0;
     s1+=250.0;
    } else {
     s0+=59693.0;
     s1+=565.0;
    }
   } else {
    if(i71<1.1411801096983254e-05){
     s0+=28.0;
     s1+=157.0;
    } else {
     s0+=207.0;
     s1+=65.0;
    }
   }
  } else {
   if(i6<-3.082698822254315e-05){
    if(i3<0.06599122285842896){
     s0+=659.0;
     s1+=234.0;
    } else {
     s0+=124.0;
     s1+=1105.0;
    }
   } else {
    if(i58<0.035728782415390015){
     s0+=3699.0;
     s1+=352.0;
    } else {
     s0+=1702.0;
     s1+=783.0;
    }
   }
  }
 } else {
  if(i3<0.09591957926750183){
   if(i6<-3.651413499028422e-05){
    if(i28<1.2392117977142334){
     s1+=278.0;
    } else {
     s0+=143.0;
     s1+=9.0;
    }
   } else {
    if(i32<1.074927568435669){
     s0+=3.0;
     s1+=39.0;
    } else {
     s0+=1143.0;
     s1+=40.0;
    }
   }
  } else {
   if(i15<-3.555417060852051e-05){
    if(i3<0.20870479941368103){
     s0+=348.0;
     s1+=183.0;
    } else {
     s0+=64.0;
     s1+=351.0;
    }
   } else {
    if(i40<0.05415534973144531){
     s0+=7.0;
     s1+=1325.0;
    } else {
     s0+=147.0;
     s1+=834.0;
    }
   }
  }
 }
} else {
 if(i4<1.0021169185638428){
  if(i34<0.041158512234687805){
   if(i15<-0.0024644434452056885){
    if(i41<0.10861119627952576){
     s0+=637.0;
     s1+=20.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i1<0.10274949669837952){
     s0+=588.0;
     s1+=84.0;
    } else {
     s0+=39.0;
     s1+=109.0;
    }
   }
  } else {
   if(i16<0.8809046149253845){
    s0+=1.0;
   } else {
    s1+=317.0;
   }
  }
 } else {
  if(i2<0.0010957121849060059){
   if(i14<1.0041285753250122){
    if(i3<0.13223659992218018){
     s0+=144.0;
     s1+=543.0;
    } else {
     s0+=4.0;
     s1+=460.0;
    }
   } else {
    if(i9<1.1074061393737793){
     s0+=25.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i15<3.635883331298828e-05){
    if(i21<0.00931914709508419){
     s0+=53.0;
     s1+=63.0;
    } else {
     s0+=13.0;
     s1+=604.0;
    }
   } else {
    if(i1<0.0036190152168273926){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=8254.0;
    }
   }
  }
 }
}
if(i10<1.0450963973999023){
 if(i23<1.0495078563690186){
  if(i30<0.00030572223477065563){
   if(i50<0.00166973820887506){
    if(i35<1.008941411972046){
     s0+=51397.0;
     s1+=132.0;
    } else {
     s0+=25.0;
     s1+=16.0;
    }
   } else {
    if(i37<1.0703742504119873){
     s0+=217.0;
     s1+=3.0;
    } else {
     s0+=79.0;
     s1+=57.0;
    }
   }
  } else {
   if(i4<1.0006699562072754){
    if(i31<0.0016177559737116098){
     s0+=2769.0;
     s1+=181.0;
    } else {
     s0+=1855.0;
     s1+=5.0;
    }
   } else {
    if(i33<0.00029954928322695196){
     s0+=20.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i1<0.06763890385627747){
   if(i32<1.0983617305755615){
    if(i54<0.00011457062646513805){
     s0+=2066.0;
     s1+=161.0;
    } else {
     s0+=400.0;
     s1+=496.0;
    }
   } else {
    if(i51<-0.026887357234954834){
     s0+=526.0;
     s1+=154.0;
    } else {
     s0+=5640.0;
     s1+=121.0;
    }
   }
  } else {
   if(i15<-0.001286327838897705){
    if(i23<1.0697277784347534){
     s0+=130.0;
     s1+=7.0;
    } else {
     s0+=62.0;
     s1+=156.0;
    }
   } else {
    if(i3<0.08437162637710571){
     s0+=120.0;
     s1+=353.0;
    } else {
     s0+=16.0;
     s1+=804.0;
    }
   }
  }
 }
} else {
 if(i1<0.09197771549224854){
  if(i18<0.00015869736671447754){
   if(i4<1.0019097328186035){
    if(i46<0.001592853106558323){
     s0+=1735.0;
     s1+=570.0;
    } else {
     s0+=2637.0;
     s1+=223.0;
    }
   } else {
    if(i62<0.0035377144813537598){
     s0+=118.0;
     s1+=353.0;
    } else {
     s0+=117.0;
     s1+=30.0;
    }
   }
  } else {
   if(i6<-4.695719326264225e-05){
    if(i17<0.9996545314788818){
     s0+=13.0;
     s1+=20.0;
    } else {
     s1+=523.0;
    }
   } else {
    if(i33<0.0012732746545225382){
     s1+=24.0;
    } else {
     s0+=57.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i14<0.998880922794342){
   if(i21<0.006622567307204008){
    if(i71<4.434135553310625e-05){
     s0+=322.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i48<0.00030140994931571186){
    if(i6<-2.48498072323855e-05){
     s0+=5.0;
     s1+=207.0;
    } else {
     s0+=269.0;
     s1+=56.0;
    }
   } else {
    if(i3<0.12542256712913513){
     s0+=339.0;
     s1+=1232.0;
    } else {
     s0+=192.0;
     s1+=11161.0;
    }
   }
  }
 }
}
if(i4<1.0023627281188965){
 if(i1<0.08270382881164551){
  if(i20<0.017081189900636673){
   if(i32<1.0598037242889404){
    if(i30<0.00033134061959572136){
     s0+=41534.0;
     s1+=3.0;
    } else {
     s0+=1314.0;
     s1+=15.0;
    }
   } else {
    if(i73<0.9884728193283081){
     s0+=1913.0;
     s1+=413.0;
    } else {
     s0+=15037.0;
     s1+=374.0;
    }
   }
  } else {
   if(i47<0.002662849146872759){
    if(i11<-6.780028343200684e-05){
     s0+=1976.0;
     s1+=286.0;
    } else {
     s0+=715.0;
     s1+=766.0;
    }
   } else {
    if(i10<1.0690178871154785){
     s0+=6393.0;
     s1+=83.0;
    } else {
     s0+=361.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i11<-0.0004094839096069336){
   if(i18<-0.00045186281204223633){
    if(i0<0.07665196061134338){
     s1+=5.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    s0+=407.0;
   }
  } else {
   if(i40<0.0502811074256897){
    if(i21<0.0016390497330576181){
     s0+=59.0;
     s1+=117.0;
    } else {
     s0+=53.0;
     s1+=2310.0;
    }
   } else {
    if(i70<0.0003415169194340706){
     s0+=650.0;
     s1+=304.0;
    } else {
     s0+=443.0;
     s1+=877.0;
    }
   }
  }
 }
} else {
 if(i31<0.0002012100740103051){
  if(i56<-0.00029009405989199877){
   if(i75<5.333473382052034e-05){
    s1+=25.0;
   } else {
    s0+=20.0;
   }
  } else {
   s0+=139.0;
  }
 } else {
  if(i4<1.0040732622146606){
   if(i3<0.13297736644744873){
    if(i45<0.012888133525848389){
     s0+=138.0;
     s1+=578.0;
    } else {
     s0+=118.0;
     s1+=10.0;
    }
   } else {
    if(i21<0.002284287940710783){
     s0+=3.0;
    } else {
     s1+=937.0;
    }
   }
  } else {
   if(i7<1.0044530630111694){
    if(i34<0.020214123651385307){
     s0+=46.0;
     s1+=153.0;
    } else {
     s1+=1091.0;
    }
   } else {
    if(i5<0.00011628866195678711){
     s0+=17.0;
     s1+=2060.0;
    } else {
     s1+=6342.0;
    }
   }
  }
 }
}
if(i4<1.0023584365844727){
 if(i67<1.0120995044708252){
  if(i1<0.07886061072349548){
   if(i64<-0.0012818872928619385){
    if(i12<0.9874335527420044){
     s0+=3568.0;
     s1+=146.0;
    } else {
     s0+=2278.0;
     s1+=818.0;
    }
   } else {
    if(i23<1.0486011505126953){
     s0+=53596.0;
     s1+=89.0;
    } else {
     s0+=7476.0;
     s1+=762.0;
    }
   }
  } else {
   if(i5<-5.570054054260254e-05){
    if(i52<0.00019175015040673316){
     s0+=275.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=55.0;
    }
   } else {
    if(i68<0.012097857892513275){
     s0+=82.0;
     s1+=105.0;
    } else {
     s0+=157.0;
     s1+=1647.0;
    }
   }
  }
 } else {
  if(i0<0.0895264744758606){
   if(i42<1.1037919521331787){
    if(i28<1.0981647968292236){
     s0+=591.0;
     s1+=123.0;
    } else {
     s0+=22.0;
     s1+=150.0;
    }
   } else {
    if(i0<0.06857156753540039){
     s0+=1187.0;
     s1+=4.0;
    } else {
     s0+=528.0;
     s1+=43.0;
    }
   }
  } else {
   if(i56<-0.00010784348705783486){
    if(i34<0.039454277604818344){
     s0+=612.0;
     s1+=1115.0;
    } else {
     s0+=9.0;
     s1+=650.0;
    }
   } else {
    if(i2<9.584426879882812e-05){
     s0+=258.0;
     s1+=21.0;
    } else {
     s0+=79.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i21<0.0021798061206936836){
  if(i4<1.0046157836914062){
   if(i42<1.1386182308197021){
    if(i37<1.063619613647461){
     s0+=43.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i34<0.014993362128734589){
     s0+=201.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   s1+=161.0;
  }
 } else {
  if(i12<0.9988992214202881){
   if(i0<0.11360487341880798){
    if(i53<0.0029467344284057617){
     s0+=48.0;
     s1+=253.0;
    } else {
     s0+=76.0;
     s1+=6.0;
    }
   } else {
    if(i12<0.9988621473312378){
     s0+=4.0;
     s1+=704.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i70<0.00019406600040383637){
    if(i21<0.005401637405157089){
     s0+=22.0;
     s1+=50.0;
    } else {
     s0+=3.0;
     s1+=221.0;
    }
   } else {
    if(i5<4.774332046508789e-05){
     s0+=17.0;
     s1+=422.0;
    } else {
     s0+=16.0;
     s1+=9425.0;
    }
   }
  }
 }
}
if(i11<0.0004241466522216797){
 if(i0<0.07736942172050476){
  if(i63<0.007070224732160568){
   if(i46<0.00029048617579974234){
    if(i16<1.0076097249984741){
     s0+=45314.0;
     s1+=32.0;
    } else {
     s0+=15.0;
     s1+=64.0;
    }
   } else {
    if(i13<0.9947949647903442){
     s0+=11594.0;
     s1+=79.0;
    } else {
     s0+=6886.0;
     s1+=1062.0;
    }
   }
  } else {
   if(i2<-0.0004036128520965576){
    if(i6<1.9153412722516805e-07){
     s0+=824.0;
     s1+=122.0;
    } else {
     s0+=1164.0;
     s1+=11.0;
    }
   } else {
    if(i38<0.00033468689071014524){
     s0+=777.0;
     s1+=12.0;
    } else {
     s0+=931.0;
     s1+=594.0;
    }
   }
  }
 } else {
  if(i22<-1.3470649719238281e-05){
   if(i56<-0.0015014206292107701){
    s1+=3.0;
   } else {
    if(i57<1.0000277757644653){
     s0+=453.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=12.0;
    }
   }
  } else {
   if(i57<0.9998734593391418){
    if(i21<0.0013303530868142843){
     s0+=167.0;
     s1+=76.0;
    } else {
     s0+=179.0;
     s1+=2744.0;
    }
   } else {
    if(i21<0.00279950350522995){
     s0+=586.0;
     s1+=242.0;
    } else {
     s0+=132.0;
     s1+=751.0;
    }
   }
  }
 }
} else {
 if(i5<3.975629806518555e-05){
  if(i20<0.019703740254044533){
   if(i7<0.9890961647033691){
    if(i27<0.009738713502883911){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    if(i13<1.00095796585083){
     s0+=813.0;
     s1+=30.0;
    } else {
     s0+=100.0;
     s1+=78.0;
    }
   }
  } else {
   if(i8<0.09417128562927246){
    if(i13<0.9960067272186279){
     s0+=522.0;
     s1+=68.0;
    } else {
     s0+=90.0;
     s1+=199.0;
    }
   } else {
    if(i48<0.0010921156499534845){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=396.0;
    }
   }
  }
 } else {
  if(i1<0.06267303228378296){
   if(i75<0.00013539960491470993){
    if(i61<-4.533817445917521e-06){
     s0+=48.0;
     s1+=413.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.0028266506269574165){
     s0+=151.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  } else {
   if(i4<1.0050899982452393){
    if(i20<0.019270308315753937){
     s0+=72.0;
     s1+=353.0;
    } else {
     s0+=39.0;
     s1+=1326.0;
    }
   } else {
    if(i26<0.9959065318107605){
     s0+=8.0;
     s1+=534.0;
    } else {
     s1+=7990.0;
    }
   }
  }
 }
}
if(i25<1.040831446647644){
 if(i22<1.9490718841552734e-05){
  if(i60<0.04537428915500641){
   if(i1<0.08469867706298828){
    if(i64<-0.0023591816425323486){
     s0+=91.0;
     s1+=126.0;
    } else {
     s0+=55277.0;
     s1+=590.0;
    }
   } else {
    if(i12<0.9901303052902222){
     s0+=32.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=318.0;
    }
   }
  } else {
   if(i15<-0.001474916934967041){
    if(i51<-0.03194364905357361){
     s0+=476.0;
     s1+=99.0;
    } else {
     s0+=5354.0;
     s1+=175.0;
    }
   } else {
    if(i52<3.175293022650294e-05){
     s0+=3223.0;
     s1+=351.0;
    } else {
     s0+=1303.0;
     s1+=1262.0;
    }
   }
  }
 } else {
  if(i11<0.0007343888282775879){
   if(i23<1.0591386556625366){
    if(i74<1.0011811256408691){
     s0+=313.0;
    } else {
     s0+=137.0;
     s1+=45.0;
    }
   } else {
    if(i4<1.0012850761413574){
     s0+=234.0;
     s1+=75.0;
    } else {
     s0+=28.0;
     s1+=293.0;
    }
   }
  } else {
   if(i5<3.129243850708008e-05){
    if(i10<1.0649402141571045){
     s0+=186.0;
     s1+=37.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i13<1.0017489194869995){
     s0+=57.0;
     s1+=208.0;
    } else {
     s0+=7.0;
     s1+=1238.0;
    }
   }
  }
 }
} else {
 if(i21<0.004560216795653105){
  if(i1<0.09585350751876831){
   if(i13<1.0064640045166016){
    if(i39<0.0017438651993870735){
     s0+=1011.0;
     s1+=288.0;
    } else {
     s0+=1639.0;
     s1+=33.0;
    }
   } else {
    if(i38<0.003237730823457241){
     s1+=132.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  } else {
   if(i45<0.01722922921180725){
    if(i53<0.007034897804260254){
     s0+=101.0;
     s1+=926.0;
    } else {
     s0+=135.0;
     s1+=56.0;
    }
   } else {
    if(i13<1.0037033557891846){
     s0+=586.0;
     s1+=186.0;
    } else {
     s0+=23.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i18<-0.00013199448585510254){
   if(i20<0.026519352570176125){
    if(i70<0.0016571915475651622){
     s0+=383.0;
     s1+=44.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i57<0.9995465278625488){
     s0+=68.0;
     s1+=10.0;
    } else {
     s0+=148.0;
     s1+=933.0;
    }
   }
  } else {
   if(i13<0.9916845560073853){
    if(i3<0.2034226357936859){
     s0+=51.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=50.0;
    }
   } else {
    if(i4<0.9977656602859497){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=55.0;
     s1+=9636.0;
    }
   }
  }
 }
}
if(i22<1.6510486602783203e-05){
 if(i9<1.0452277660369873){
  if(i46<0.0003042662574443966){
   if(i43<-1.4484831808658782e-05){
    if(i55<-0.0011102533899247646){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=133.0;
     s1+=10.0;
    }
   } else {
    if(i62<-0.0027133822441101074){
     s0+=107.0;
     s1+=12.0;
    } else {
     s0+=45384.0;
     s1+=13.0;
    }
   }
  } else {
   if(i39<0.00155249098315835){
    if(i23<1.0428757667541504){
     s0+=3326.0;
     s1+=129.0;
    } else {
     s0+=1727.0;
     s1+=710.0;
    }
   } else {
    if(i8<0.09552010893821716){
     s0+=10606.0;
     s1+=52.0;
    } else {
     s1+=26.0;
    }
   }
  }
 } else {
  if(i5<1.0907649993896484e-05){
   if(i1<0.08355346322059631){
    if(i39<0.0020073039922863245){
     s0+=2595.0;
     s1+=675.0;
    } else {
     s0+=3361.0;
     s1+=114.0;
    }
   } else {
    if(i21<0.0017906974535435438){
     s0+=431.0;
     s1+=107.0;
    } else {
     s0+=507.0;
     s1+=1481.0;
    }
   }
  } else {
   if(i28<1.075230598449707){
    s0+=152.0;
   } else {
    if(i3<0.09684398770332336){
     s0+=552.0;
     s1+=463.0;
    } else {
     s0+=141.0;
     s1+=2121.0;
    }
   }
  }
 }
} else {
 if(i18<6.330013275146484e-05){
  if(i8<0.09880083799362183){
   if(i45<-0.0062313079833984375){
    if(i51<-0.026127517223358154){
     s0+=60.0;
     s1+=407.0;
    } else {
     s0+=140.0;
     s1+=114.0;
    }
   } else {
    if(i28<1.4901387691497803){
     s0+=754.0;
     s1+=312.0;
    } else {
     s0+=847.0;
     s1+=15.0;
    }
   }
  } else {
   if(i34<0.023775875568389893){
    if(i45<0.017430037260055542){
     s0+=12.0;
     s1+=137.0;
    } else {
     s0+=105.0;
     s1+=85.0;
    }
   } else {
    if(i21<0.002741006202995777){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=1319.0;
    }
   }
  }
 } else {
  if(i38<0.0003798599645961076){
   s0+=187.0;
  } else {
   if(i30<0.00015221067587845027){
    if(i43<-1.6646754374960437e-05){
     s1+=19.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i66<0.9955558776855469){
     s0+=11.0;
    } else {
     s0+=31.0;
     s1+=8683.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i2<0.0005882978439331055){
  if(i3<0.0835624635219574){
   if(i46<0.0003112417471129447){
    if(i35<1.010046124458313){
     s0+=47334.0;
     s1+=60.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i37<1.103413462638855){
     s0+=5301.0;
     s1+=1335.0;
    } else {
     s0+=15534.0;
     s1+=477.0;
    }
   }
  } else {
   if(i2<-0.0007262229919433594){
    if(i32<1.429196834564209){
     s0+=630.0;
     s1+=99.0;
    } else {
     s0+=42.0;
     s1+=51.0;
    }
   } else {
    if(i69<-0.01892436295747757){
     s0+=598.0;
     s1+=484.0;
    } else {
     s0+=256.0;
     s1+=1250.0;
    }
   }
  }
 } else {
  if(i1<0.057486653327941895){
   if(i65<0.0006547902012243867){
    if(i13<1.0038233995437622){
     s0+=118.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=10.0;
    }
   } else {
    if(i25<1.033308982849121){
     s0+=22.0;
     s1+=186.0;
    } else {
     s0+=49.0;
     s1+=24.0;
    }
   }
  } else {
   if(i66<0.997489333152771){
    if(i56<-0.0002541160210967064){
     s1+=4.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i39<0.008395793847739697){
     s0+=70.0;
     s1+=874.0;
    } else {
     s0+=2.0;
     s1+=1190.0;
    }
   }
  }
 }
} else {
 if(i21<0.0032239758875221014){
  if(i39<0.0012992265401408076){
   if(i15<0.0005196332931518555){
    if(i52<5.275745024846401e-06){
     s0+=40.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=50.0;
    }
   } else {
    if(i15<0.0006154775619506836){
     s0+=3.0;
     s1+=32.0;
    } else {
     s1+=572.0;
    }
   }
  } else {
   if(i20<0.03447529673576355){
    if(i54<0.000341305072652176){
     s0+=1003.0;
     s1+=66.0;
    } else {
     s0+=115.0;
     s1+=91.0;
    }
   } else {
    if(i18<-0.00012132525444030762){
     s0+=45.0;
     s1+=16.0;
    } else {
     s0+=35.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i61<4.99601583214826e-07){
   if(i18<1.0848045349121094e-05){
    if(i28<1.613681674003601){
     s0+=23.0;
     s1+=832.0;
    } else {
     s0+=33.0;
     s1+=68.0;
    }
   } else {
    if(i15<0.00022673606872558594){
     s0+=2.0;
     s1+=151.0;
    } else {
     s1+=8723.0;
    }
   }
  } else {
   if(i28<1.2188851833343506){
    s1+=6.0;
   } else {
    if(i5<-2.0891427993774414e-05){
     s0+=124.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i7<1.0080137252807617){
 if(i8<0.07541009783744812){
  if(i4<1.0024762153625488){
   if(i0<0.07982578873634338){
    if(i20<0.017024660483002663){
     s0+=59017.0;
     s1+=626.0;
    } else {
     s0+=9088.0;
     s1+=1219.0;
    }
   } else {
    if(i37<1.069220781326294){
     s0+=82.0;
    } else {
     s0+=75.0;
     s1+=459.0;
    }
   }
  } else {
   if(i30<0.0001739994768286124){
    if(i9<1.046818494796753){
     s0+=49.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i50<0.004856065846979618){
     s0+=86.0;
     s1+=325.0;
    } else {
     s0+=8.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i6<-1.029804116114974e-05){
   if(i59<0.04184901714324951){
    if(i20<0.027092287316918373){
     s0+=168.0;
     s1+=432.0;
    } else {
     s0+=38.0;
     s1+=2036.0;
    }
   } else {
    if(i10<1.1197296380996704){
     s0+=270.0;
     s1+=226.0;
    } else {
     s0+=48.0;
     s1+=337.0;
    }
   }
  } else {
   if(i27<0.059775352478027344){
    if(i66<1.0010249614715576){
     s0+=3.0;
     s1+=40.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i33<0.0018470312934368849){
     s0+=648.0;
     s1+=37.0;
    } else {
     s0+=93.0;
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i21<0.003223753534257412){
  if(i37<1.107304573059082){
   if(i4<0.999720573425293){
    if(i31<0.0005432354519143701){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=45.0;
     s1+=6.0;
    }
   } else {
    if(i6<-2.418708936602343e-05){
     s1+=609.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i71<-1.0098254279000685e-05){
    s1+=130.0;
   } else {
    if(i5<-2.9295682907104492e-05){
     s0+=29.0;
     s1+=87.0;
    } else {
     s0+=1171.0;
     s1+=199.0;
    }
   }
  }
 } else {
  if(i4<0.9978014230728149){
   if(i74<0.9993401765823364){
    if(i26<0.9867758750915527){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=112.0;
    }
   } else {
    if(i1<0.0856219232082367){
     s0+=1.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i14<0.9985685348510742){
    if(i64<0.0019168853759765625){
     s0+=10.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i43<1.4269078292272752e-06){
     s0+=59.0;
     s1+=9978.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i1<0.08223113417625427){
 if(i14<1.0018972158432007){
  if(i20<0.016554389148950577){
   if(i44<-0.0016579031944274902){
    if(i5<1.9878149032592773e-05){
     s0+=1919.0;
     s1+=263.0;
    } else {
     s0+=20.0;
     s1+=53.0;
    }
   } else {
    if(i6<-3.997064777649939e-05){
     s0+=810.0;
     s1+=173.0;
    } else {
     s0+=56386.0;
     s1+=332.0;
    }
   }
  } else {
   if(i37<1.196009874343872){
    if(i23<1.0487183332443237){
     s0+=1740.0;
     s1+=134.0;
    } else {
     s0+=708.0;
     s1+=994.0;
    }
   } else {
    if(i19<0.9661407470703125){
     s0+=1114.0;
     s1+=87.0;
    } else {
     s0+=6011.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i51<0.01029852032661438){
   if(i4<1.0014801025390625){
    if(i62<-0.019702225923538208){
     s0+=17.0;
     s1+=26.0;
    } else {
     s0+=186.0;
     s1+=17.0;
    }
   } else {
    if(i28<1.594835877418518){
     s0+=54.0;
     s1+=800.0;
    } else {
     s0+=59.0;
     s1+=40.0;
    }
   }
  } else {
   if(i33<0.003656004788354039){
    if(i7<1.0027825832366943){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   } else {
    if(i13<0.9985455870628357){
     s0+=350.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i38<0.006181949283927679){
  if(i44<0.004608124494552612){
   if(i74<0.9973099231719971){
    if(i15<0.0006057918071746826){
     s0+=228.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=109.0;
    }
   } else {
    if(i33<0.0004475691239349544){
     s0+=60.0;
     s1+=12.0;
    } else {
     s0+=244.0;
     s1+=3720.0;
    }
   }
  } else {
   if(i4<1.0019292831420898){
    if(i1<0.14484596252441406){
     s0+=582.0;
     s1+=38.0;
    } else {
     s0+=353.0;
     s1+=301.0;
    }
   } else {
    if(i24<1.0160036087036133){
     s0+=26.0;
     s1+=24.0;
    } else {
     s0+=28.0;
     s1+=376.0;
    }
   }
  }
 } else {
  if(i0<0.11247316002845764){
   if(i73<0.9996621012687683){
    if(i59<0.02335900068283081){
     s1+=203.0;
    } else {
     s0+=13.0;
     s1+=21.0;
    }
   } else {
    if(i43<-4.3590385757852346e-05){
     s1+=8.0;
    } else {
     s0+=114.0;
     s1+=9.0;
    }
   }
  } else {
   if(i37<1.2582359313964844){
    if(i55<-0.013995185494422913){
     s0+=28.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=455.0;
    }
   } else {
    if(i6<1.0368236871727277e-05){
     s0+=12.0;
     s1+=8819.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i11<0.00043660402297973633){
 if(i35<1.008631944656372){
  if(i1<0.08222377300262451){
   if(i23<1.0451585054397583){
    if(i62<-0.0022433698177337646){
     s0+=1711.0;
     s1+=137.0;
    } else {
     s0+=52112.0;
     s1+=88.0;
    }
   } else {
    if(i37<1.103413462638855){
     s0+=3621.0;
     s1+=1078.0;
    } else {
     s0+=8823.0;
     s1+=298.0;
    }
   }
  } else {
   if(i56<-8.35974351502955e-05){
    if(i11<-0.00043773651123046875){
     s0+=173.0;
     s1+=13.0;
    } else {
     s0+=171.0;
     s1+=1352.0;
    }
   } else {
    if(i41<0.05788096785545349){
     s0+=79.0;
     s1+=261.0;
    } else {
     s0+=499.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i6<-3.316116635687649e-05){
   if(i0<0.06355971097946167){
    if(i47<0.0013399028684943914){
     s1+=136.0;
    } else {
     s0+=204.0;
     s1+=23.0;
    }
   } else {
    if(i15<0.001430511474609375){
     s0+=71.0;
     s1+=1153.0;
    } else {
     s1+=961.0;
    }
   }
  } else {
   if(i7<1.027838945388794){
    if(i21<0.003574882633984089){
     s0+=1828.0;
     s1+=162.0;
    } else {
     s0+=143.0;
     s1+=179.0;
    }
   } else {
    s1+=71.0;
   }
  }
 }
} else {
 if(i2<0.0005480051040649414){
  if(i3<0.11893871426582336){
   if(i53<-0.005020946264266968){
    if(i8<0.0005112588405609131){
     s0+=14.0;
     s1+=15.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i36<0.0003470778465270996){
     s0+=572.0;
     s1+=185.0;
    } else {
     s0+=783.0;
     s1+=44.0;
    }
   }
  } else {
   if(i52<9.438318375032395e-05){
    if(i40<0.07558301091194153){
     s1+=33.0;
    } else {
     s0+=32.0;
     s1+=5.0;
    }
   } else {
    if(i34<0.012233387678861618){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=2.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i39<0.0004233341314829886){
   if(i15<0.00102311372756958){
    s0+=48.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i3<0.057211339473724365){
    if(i63<0.007988888770341873){
     s0+=112.0;
     s1+=58.0;
    } else {
     s0+=48.0;
     s1+=305.0;
    }
   } else {
    if(i15<3.5643577575683594e-05){
     s0+=131.0;
     s1+=1170.0;
    } else {
     s0+=16.0;
     s1+=8852.0;
    }
   }
  }
 }
}
if(i4<1.0024782419204712){
 if(i73<1.013296127319336){
  if(i0<0.07800483703613281){
   if(i62<-0.0023250579833984375){
    if(i39<0.0016530733555555344){
     s0+=1369.0;
     s1+=698.0;
    } else {
     s0+=4155.0;
     s1+=295.0;
    }
   } else {
    if(i9<1.0452277660369873){
     s0+=57984.0;
     s1+=342.0;
    } else {
     s0+=4143.0;
     s1+=715.0;
    }
   }
  } else {
   if(i22<-1.33514404296875e-05){
    if(i11<-0.00041306018829345703){
     s0+=283.0;
    } else {
     s0+=12.0;
     s1+=12.0;
    }
   } else {
    if(i32<1.0547174215316772){
     s0+=47.0;
    } else {
     s0+=209.0;
     s1+=1826.0;
    }
   }
  }
 } else {
  if(i72<0.12199720740318298){
   if(i5<1.150369644165039e-05){
    if(i4<0.9964545965194702){
     s0+=360.0;
     s1+=12.0;
    } else {
     s0+=1634.0;
     s1+=762.0;
    }
   } else {
    if(i46<0.0011574451345950365){
     s0+=52.0;
     s1+=392.0;
    } else {
     s0+=518.0;
     s1+=385.0;
    }
   }
  } else {
   if(i47<0.0031171711161732674){
    if(i22<5.245208740234375e-06){
     s0+=19.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i9<1.0647878646850586){
     s0+=15.0;
    } else {
     s0+=11.0;
     s1+=567.0;
    }
   }
  }
 }
} else {
 if(i12<1.0098402500152588){
  if(i20<0.03328825533390045){
   if(i39<0.002278368454426527){
    if(i57<1.0002939701080322){
     s0+=15.0;
     s1+=668.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    if(i5<6.395578384399414e-05){
     s0+=185.0;
     s1+=66.0;
    } else {
     s0+=105.0;
     s1+=264.0;
    }
   }
  } else {
   if(i0<0.08301925659179688){
    if(i4<1.0031068325042725){
     s0+=16.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=178.0;
    }
   } else {
    if(i72<0.0840892642736435){
     s0+=8.0;
     s1+=280.0;
    } else {
     s1+=1327.0;
    }
   }
  }
 } else {
  if(i6<-4.9064165068557486e-05){
   if(i46<0.00024021186982281506){
    s0+=3.0;
   } else {
    if(i5<3.218650817871094e-05){
     s0+=5.0;
     s1+=7.0;
    } else {
     s1+=8236.0;
    }
   }
  } else {
   if(i70<0.00036459550028666854){
    s0+=11.0;
   } else {
    s1+=26.0;
   }
  }
 }
}
if(i4<1.0024573802947998){
 if(i60<0.05456509441137314){
  if(i9<1.0452277660369873){
   if(i0<0.08338120579719543){
    if(i62<-0.002736121416091919){
     s0+=242.0;
     s1+=156.0;
    } else {
     s0+=55073.0;
     s1+=293.0;
    }
   } else {
    if(i23<1.0452890396118164){
     s0+=58.0;
    } else {
     s0+=9.0;
     s1+=60.0;
    }
   }
  } else {
   if(i29<1.007333755493164){
    if(i7<0.9828386902809143){
     s0+=2.0;
     s1+=45.0;
    } else {
     s0+=2644.0;
     s1+=363.0;
    }
   } else {
    if(i23<1.0737545490264893){
     s0+=157.0;
     s1+=457.0;
    } else {
     s0+=468.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i15<-0.0023341774940490723){
   if(i41<0.07494774460792542){
    if(i0<0.09307906031608582){
     s0+=4886.0;
     s1+=135.0;
    } else {
     s0+=2.0;
     s1+=159.0;
    }
   } else {
    if(i37<1.3685884475708008){
     s0+=109.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=163.0;
    }
   }
  } else {
   if(i6<-2.2722239009453915e-05){
    if(i28<1.2371783256530762){
     s0+=52.0;
     s1+=1122.0;
    } else {
     s0+=1361.0;
     s1+=1518.0;
    }
   } else {
    if(i49<0.9992124438285828){
     s0+=1341.0;
    } else {
     s0+=4200.0;
     s1+=1298.0;
    }
   }
  }
 }
} else {
 if(i6<-4.329586590756662e-05){
  if(i0<0.049371153116226196){
   if(i32<1.187422752380371){
    if(i28<1.5942578315734863){
     s0+=3.0;
     s1+=266.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i63<0.017792770639061928){
     s0+=83.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   }
  } else {
   if(i20<0.019748784601688385){
    if(i33<0.008537646383047104){
     s0+=34.0;
     s1+=1709.0;
    } else {
     s0+=43.0;
     s1+=148.0;
    }
   } else {
    if(i18<1.1920928955078125e-05){
     s0+=31.0;
     s1+=913.0;
    } else {
     s1+=7873.0;
    }
   }
  }
 } else {
  if(i28<1.2392117977142334){
   if(i37<1.0602933168411255){
    s0+=5.0;
   } else {
    if(i46<0.0002817377098836005){
     s0+=8.0;
    } else {
     s1+=212.0;
    }
   }
  } else {
   if(i50<0.004074958153069019){
    s0+=168.0;
   } else {
    if(i61<-2.503039922885364e-06){
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i5<3.7610530853271484e-05){
 if(i20<0.021963097155094147){
  if(i6<-4.4523447286337614e-05){
   if(i37<1.2380249500274658){
    if(i56<-0.00016976744518615305){
     s0+=29.0;
     s1+=542.0;
    } else {
     s0+=218.0;
     s1+=40.0;
    }
   } else {
    if(i1<0.13488668203353882){
     s0+=662.0;
     s1+=43.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i0<0.07568106055259705){
    if(i19<0.9767757654190063){
     s0+=1042.0;
     s1+=188.0;
    } else {
     s0+=60446.0;
     s1+=674.0;
    }
   } else {
    if(i6<-1.7887414287542924e-05){
     s0+=250.0;
     s1+=373.0;
    } else {
     s0+=859.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i52<0.00012983582564629614){
   if(i14<0.9987367391586304){
    if(i11<-0.00035262107849121094){
     s0+=796.0;
     s1+=8.0;
    } else {
     s0+=118.0;
     s1+=46.0;
    }
   } else {
    if(i28<1.0821808576583862){
     s0+=240.0;
    } else {
     s0+=1057.0;
     s1+=2628.0;
    }
   }
  } else {
   if(i56<-0.0005076401866972446){
    if(i4<0.9906780123710632){
     s0+=88.0;
    } else {
     s0+=7.0;
     s1+=429.0;
    }
   } else {
    if(i27<0.09501209855079651){
     s0+=4577.0;
     s1+=152.0;
    } else {
     s0+=6.0;
     s1+=105.0;
    }
   }
  }
 }
} else {
 if(i32<1.0590304136276245){
  s0+=299.0;
 } else {
  if(i0<0.058522045612335205){
   if(i51<-0.0022631287574768066){
    if(i48<0.000980745768174529){
     s0+=55.0;
     s1+=20.0;
    } else {
     s0+=59.0;
     s1+=548.0;
    }
   } else {
    if(i1<0.06116017699241638){
     s0+=117.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  } else {
   if(i70<0.0004903551889583468){
    if(i34<0.02210160344839096){
     s0+=133.0;
     s1+=871.0;
    } else {
     s0+=2.0;
     s1+=1718.0;
    }
   } else {
    if(i6<-8.469731255900115e-05){
     s0+=10.0;
     s1+=7751.0;
    } else {
     s0+=41.0;
     s1+=795.0;
    }
   }
  }
 }
}
if(i1<0.08314955234527588){
 if(i1<0.06798672676086426){
  if(i22<1.9252300262451172e-05){
   if(i44<-0.0015790760517120361){
    if(i39<0.0015594318974763155){
     s0+=1188.0;
     s1+=508.0;
    } else {
     s0+=2491.0;
     s1+=177.0;
    }
   } else {
    if(i32<1.0557184219360352){
     s0+=41296.0;
    } else {
     s0+=21011.0;
     s1+=839.0;
    }
   }
  } else {
   if(i17<1.0025625228881836){
    if(i62<-0.0007530152797698975){
     s0+=173.0;
     s1+=68.0;
    } else {
     s0+=622.0;
     s1+=33.0;
    }
   } else {
    if(i2<0.00031107664108276367){
     s0+=173.0;
     s1+=14.0;
    } else {
     s0+=134.0;
     s1+=546.0;
    }
   }
  }
 } else {
  if(i59<0.021292686462402344){
   if(i32<1.1489462852478027){
    if(i41<0.047926247119903564){
     s0+=63.0;
     s1+=739.0;
    } else {
     s0+=71.0;
     s1+=17.0;
    }
   } else {
    if(i45<-0.0005907416343688965){
     s0+=30.0;
     s1+=105.0;
    } else {
     s0+=248.0;
     s1+=7.0;
    }
   }
  } else {
   if(i27<0.0430317223072052){
    if(i4<0.9977157115936279){
     s0+=20.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=54.0;
    }
   } else {
    if(i25<1.0088316202163696){
     s0+=4.0;
     s1+=26.0;
    } else {
     s0+=1718.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i22<-1.6063451766967773e-05){
  if(i42<1.476589322090149){
   if(i33<0.001740775303915143){
    s0+=349.0;
   } else {
    if(i57<0.9994048476219177){
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<-7.618767085659783e-06){
    if(i29<0.9948931336402893){
     s1+=9.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=14.0;
   }
  }
 } else {
  if(i5<3.319978713989258e-05){
   if(i21<0.0016418937593698502){
    if(i40<0.040914714336395264){
     s0+=21.0;
     s1+=100.0;
    } else {
     s0+=573.0;
     s1+=112.0;
    }
   } else {
    if(i41<0.05895799398422241){
     s0+=36.0;
     s1+=1819.0;
    } else {
     s0+=477.0;
     s1+=1244.0;
    }
   }
  } else {
   if(i6<-5.9148103900952265e-05){
    if(i42<1.0762357711791992){
     s0+=11.0;
    } else {
     s0+=79.0;
     s1+=10428.0;
    }
   } else {
    if(i53<0.006697416305541992){
     s0+=23.0;
     s1+=336.0;
    } else {
     s0+=63.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i4<1.0024590492248535){
 if(i0<0.0806303322315216){
  if(i54<0.0002715911250561476){
   if(i16<1.0052320957183838){
    if(i36<1.245737075805664e-05){
     s0+=42687.0;
     s1+=98.0;
    } else {
     s0+=13801.0;
     s1+=506.0;
    }
   } else {
    if(i32<1.0738153457641602){
     s0+=106.0;
     s1+=226.0;
    } else {
     s0+=1938.0;
     s1+=143.0;
    }
   }
  } else {
   if(i4<0.9967581629753113){
    if(i3<0.0708194375038147){
     s0+=7267.0;
     s1+=93.0;
    } else {
     s0+=447.0;
     s1+=58.0;
    }
   } else {
    if(i42<1.236706256866455){
     s0+=1149.0;
     s1+=894.0;
    } else {
     s0+=1850.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i51<0.05680441856384277){
   if(i2<-0.000861436128616333){
    if(i48<0.0040223561227321625){
     s0+=209.0;
     s1+=16.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i40<0.04648074507713318){
     s0+=54.0;
     s1+=1913.0;
    } else {
     s0+=240.0;
     s1+=490.0;
    }
   }
  } else {
   if(i0<0.1726245880126953){
    if(i27<0.06833755970001221){
     s0+=32.0;
     s1+=40.0;
    } else {
     s0+=732.0;
     s1+=119.0;
    }
   } else {
    if(i36<-0.00014138221740722656){
     s0+=145.0;
     s1+=12.0;
    } else {
     s0+=132.0;
     s1+=954.0;
    }
   }
  }
 }
} else {
 if(i5<6.633996963500977e-05){
  if(i6<-4.51197411166504e-05){
   if(i31<0.0001297232520300895){
    s0+=10.0;
   } else {
    if(i70<0.00010424127685837448){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=68.0;
     s1+=1385.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i37<1.0602933168411255){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=114.0;
    }
   } else {
    if(i35<0.9698032736778259){
     s1+=3.0;
    } else {
     s0+=177.0;
    }
   }
  }
 } else {
  if(i15<3.1828880310058594e-05){
   if(i70<0.000405837781727314){
    if(i47<0.008455920033156872){
     s0+=5.0;
     s1+=77.0;
    } else {
     s0+=52.0;
     s1+=5.0;
    }
   } else {
    if(i17<1.0007166862487793){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=29.0;
     s1+=651.0;
    }
   }
  } else {
   if(i52<0.00013194873463362455){
    s1+=8522.0;
   } else {
    if(i56<-0.00038387742824852467){
     s1+=497.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i27<0.06108403205871582){
 if(i5<3.93986701965332e-05){
  if(i0<0.07646152377128601){
   if(i68<0.01957005076110363){
    if(i7<1.0081498622894287){
     s0+=51489.0;
     s1+=332.0;
    } else {
     s0+=52.0;
     s1+=132.0;
    }
   } else {
    if(i18<-0.00020396709442138672){
     s0+=9729.0;
     s1+=203.0;
    } else {
     s0+=6733.0;
     s1+=1384.0;
    }
   }
  } else {
   if(i2<-0.0008211731910705566){
    if(i19<0.9564980864524841){
     s1+=11.0;
    } else {
     s0+=121.0;
     s1+=2.0;
    }
   } else {
    if(i22<-1.4632940292358398e-05){
     s0+=12.0;
    } else {
     s0+=28.0;
     s1+=1312.0;
    }
   }
  }
 } else {
  if(i57<0.9989185333251953){
   s0+=267.0;
  } else {
   if(i31<0.0001797717995941639){
    if(i28<1.175731897354126){
     s1+=4.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i13<1.0047461986541748){
     s0+=188.0;
     s1+=912.0;
    } else {
     s0+=44.0;
     s1+=3420.0;
    }
   }
  }
 }
} else {
 if(i8<0.09899529814720154){
  if(i56<-0.00010843018390005454){
   if(i21<0.004461375996470451){
    if(i6<-2.3703563783783466e-05){
     s0+=164.0;
     s1+=397.0;
    } else {
     s0+=467.0;
     s1+=51.0;
    }
   } else {
    if(i53<0.005254626274108887){
     s0+=59.0;
     s1+=511.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i16<1.0043210983276367){
    if(i62<-0.0012389421463012695){
     s0+=146.0;
     s1+=91.0;
    } else {
     s0+=764.0;
     s1+=42.0;
    }
   } else {
    if(i73<1.046194314956665){
     s0+=1.0;
     s1+=49.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i5<9.715557098388672e-06){
   if(i33<0.001552358502522111){
    if(i27<0.09982925653457642){
     s0+=26.0;
     s1+=99.0;
    } else {
     s0+=465.0;
     s1+=20.0;
    }
   } else {
    if(i0<0.12519383430480957){
     s0+=54.0;
     s1+=53.0;
    } else {
     s0+=39.0;
     s1+=735.0;
    }
   }
  } else {
   if(i5<5.060434341430664e-05){
    if(i48<0.0011269242968410254){
     s0+=121.0;
     s1+=88.0;
    } else {
     s0+=64.0;
     s1+=964.0;
    }
   } else {
    if(i17<0.9965437650680542){
     s0+=23.0;
     s1+=99.0;
    } else {
     s0+=31.0;
     s1+=6164.0;
    }
   }
  }
 }
}
if(i1<0.08134973049163818){
 if(i64<-0.0014188587665557861){
  if(i5<3.62396240234375e-05){
   if(i37<1.1823735237121582){
    if(i14<0.9983209371566772){
     s0+=689.0;
     s1+=7.0;
    } else {
     s0+=1020.0;
     s1+=723.0;
    }
   } else {
    if(i53<-0.0027938485145568848){
     s0+=577.0;
     s1+=154.0;
    } else {
     s0+=3152.0;
     s1+=27.0;
    }
   }
  } else {
   if(i44<-0.0013002753257751465){
    if(i18<-0.0004207491874694824){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=22.0;
     s1+=512.0;
    }
   } else {
    if(i39<0.0023794109001755714){
     s1+=13.0;
    } else {
     s0+=49.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i13<1.005051612854004){
   if(i6<-4.2439482058398426e-05){
    if(i53<0.00044167041778564453){
     s0+=490.0;
     s1+=282.0;
    } else {
     s0+=839.0;
     s1+=59.0;
    }
   } else {
    if(i35<1.0064244270324707){
     s0+=59742.0;
     s1+=568.0;
    } else {
     s0+=2479.0;
     s1+=257.0;
    }
   }
  } else {
   if(i28<1.1386182308197021){
    s1+=305.0;
   } else {
    if(i43<-2.0141082131885923e-05){
     s1+=49.0;
    } else {
     s0+=289.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i13<1.0005266666412354){
  if(i38<0.006360701285302639){
   if(i6<-1.3037035387242213e-05){
    if(i33<0.002036510966718197){
     s0+=107.0;
     s1+=1028.0;
    } else {
     s0+=349.0;
     s1+=448.0;
    }
   } else {
    if(i44<0.00325620174407959){
     s0+=352.0;
     s1+=217.0;
    } else {
     s0+=610.0;
     s1+=61.0;
    }
   }
  } else {
   if(i32<1.2293211221694946){
    if(i45<0.006038546562194824){
     s0+=1.0;
     s1+=55.0;
    } else {
     s0+=68.0;
     s1+=44.0;
    }
   } else {
    if(i48<0.0002555747632868588){
     s0+=6.0;
    } else {
     s0+=55.0;
     s1+=1620.0;
    }
   }
  }
 } else {
  if(i13<1.0049221515655518){
   if(i48<0.0011786009417846799){
    if(i6<-2.1936226403340697e-05){
     s0+=49.0;
     s1+=499.0;
    } else {
     s0+=105.0;
     s1+=27.0;
    }
   } else {
    if(i34<0.0036655855365097523){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=1317.0;
    }
   }
  } else {
   if(i5<5.525350570678711e-05){
    if(i56<-0.00012170190166216344){
     s0+=16.0;
     s1+=649.0;
    } else {
     s0+=17.0;
     s1+=18.0;
    }
   } else {
    if(i52<0.00012221053475514054){
     s0+=1.0;
     s1+=7444.0;
    } else {
     s0+=11.0;
     s1+=679.0;
    }
   }
  }
 }
}
if(i12<1.0054543018341064){
 if(i58<0.04158396273851395){
  if(i3<0.08777308464050293){
   if(i67<0.9719431400299072){
    if(i11<-0.00016114115715026855){
     s0+=471.0;
     s1+=32.0;
    } else {
     s0+=241.0;
     s1+=243.0;
    }
   } else {
    if(i17<1.001311182975769){
     s0+=58937.0;
     s1+=649.0;
    } else {
     s0+=1855.0;
     s1+=330.0;
    }
   }
  } else {
   if(i11<-0.00041285157203674316){
    if(i47<0.009024200960993767){
     s0+=333.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i10<1.0844266414642334){
     s0+=227.0;
     s1+=684.0;
    } else {
     s0+=270.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i35<0.9915378093719482){
   if(i3<0.08284786343574524){
    if(i4<0.9990711212158203){
     s0+=5748.0;
     s1+=309.0;
    } else {
     s0+=459.0;
     s1+=391.0;
    }
   } else {
    if(i13<0.99918133020401){
     s0+=400.0;
     s1+=988.0;
    } else {
     s0+=16.0;
     s1+=975.0;
    }
   }
  } else {
   if(i0<0.08662652969360352){
    if(i70<0.0004805124772246927){
     s0+=658.0;
     s1+=91.0;
    } else {
     s0+=185.0;
     s1+=338.0;
    }
   } else {
    if(i6<-1.2842201613239013e-05){
     s0+=103.0;
     s1+=1500.0;
    } else {
     s0+=241.0;
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i21<0.0022362954914569855){
  if(i61<-6.384908374457154e-06){
   if(i18<6.681680679321289e-05){
    s0+=11.0;
   } else {
    s1+=162.0;
   }
  } else {
   if(i32<1.084579348564148){
    s1+=165.0;
   } else {
    if(i12<1.0167303085327148){
     s0+=835.0;
     s1+=13.0;
    } else {
     s1+=54.0;
    }
   }
  }
 } else {
  if(i2<-1.615285873413086e-05){
   if(i71<1.3060628589300904e-05){
    if(i8<0.18601319193840027){
     s0+=61.0;
     s1+=4.0;
    } else {
     s1+=27.0;
    }
   } else {
    s1+=58.0;
   }
  } else {
   if(i2<0.0004749298095703125){
    if(i47<0.003218467812985182){
     s0+=2.0;
     s1+=369.0;
    } else {
     s0+=63.0;
     s1+=178.0;
    }
   } else {
    if(i1<0.07325053215026855){
     s0+=13.0;
     s1+=356.0;
    } else {
     s0+=11.0;
     s1+=9030.0;
    }
   }
  }
 }
}
if(i15<0.0008068680763244629){
 if(i30<0.0003248341381549835){
  if(i20<0.022738464176654816){
   if(i1<0.08481669425964355){
    if(i44<-0.0022911131381988525){
     s0+=156.0;
     s1+=50.0;
    } else {
     s0+=55667.0;
     s1+=437.0;
    }
   } else {
    if(i7<1.0019686222076416){
     s0+=68.0;
     s1+=11.0;
    } else {
     s0+=7.0;
     s1+=122.0;
    }
   }
  } else {
   if(i23<1.0447213649749756){
    if(i53<-0.003030836582183838){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=1388.0;
     s1+=19.0;
    }
   } else {
    if(i38<0.0034753484651446342){
     s0+=80.0;
     s1+=394.0;
    } else {
     s0+=103.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i8<0.08143177628517151){
   if(i3<0.08709686994552612){
    if(i5<3.081560134887695e-05){
     s0+=11356.0;
     s1+=1347.0;
    } else {
     s0+=245.0;
     s1+=429.0;
    }
   } else {
    if(i11<-0.0003355443477630615){
     s0+=184.0;
     s1+=11.0;
    } else {
     s0+=136.0;
     s1+=704.0;
    }
   }
  } else {
   if(i47<0.003926820121705532){
    if(i25<1.0844299793243408){
     s0+=300.0;
     s1+=793.0;
    } else {
     s0+=662.0;
     s1+=143.0;
    }
   } else {
    if(i0<0.11747071146965027){
     s0+=201.0;
     s1+=243.0;
    } else {
     s0+=108.0;
     s1+=2531.0;
    }
   }
  }
 }
} else {
 if(i11<-0.0002905428409576416){
  s0+=156.0;
 } else {
  if(i3<0.057596355676651){
   if(i38<0.0010939666535705328){
    s1+=121.0;
   } else {
    if(i73<0.9899630546569824){
     s1+=62.0;
    } else {
     s0+=312.0;
     s1+=4.0;
    }
   }
  } else {
   if(i3<0.07470861077308655){
    if(i61<-4.6786744860582985e-06){
     s1+=217.0;
    } else {
     s0+=50.0;
     s1+=22.0;
    }
   } else {
    if(i48<0.001032369676977396){
     s0+=53.0;
     s1+=1088.0;
    } else {
     s1+=8243.0;
    }
   }
  }
 }
}
if(i0<0.08135956525802612){
 if(i17<1.0032522678375244){
  if(i10<1.0398929119110107){
   if(i60<0.046254366636276245){
    if(i67<0.9648301005363464){
     s0+=35.0;
     s1+=33.0;
    } else {
     s0+=54606.0;
     s1+=466.0;
    }
   } else {
    if(i37<1.1792536973953247){
     s0+=2862.0;
     s1+=555.0;
    } else {
     s0+=5024.0;
     s1+=83.0;
    }
   }
  } else {
   if(i1<0.06769764423370361){
    if(i38<0.0011263368651270866){
     s0+=1854.0;
     s1+=426.0;
    } else {
     s0+=3502.0;
     s1+=232.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=179.0;
     s1+=388.0;
    } else {
     s0+=695.0;
     s1+=125.0;
    }
   }
  }
 } else {
  if(i2<0.000420987606048584){
   if(i18<-0.00036016106605529785){
    if(i51<-0.0605522096157074){
     s0+=21.0;
     s1+=13.0;
    } else {
     s0+=560.0;
     s1+=1.0;
    }
   } else {
    if(i51<-0.026979058980941772){
     s0+=23.0;
     s1+=30.0;
    } else {
     s0+=156.0;
     s1+=7.0;
    }
   }
  } else {
   if(i44<0.0020394325256347656){
    if(i66<0.9976622462272644){
     s0+=28.0;
     s1+=2.0;
    } else {
     s0+=101.0;
     s1+=1045.0;
    }
   } else {
    if(i52<1.558980693516787e-05){
     s0+=8.0;
     s1+=21.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015729665756226){
  if(i41<0.05836254358291626){
   if(i31<0.00023113522911444306){
    if(i5<-4.646182060241699e-05){
     s0+=20.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i14<0.9981733560562134){
     s0+=58.0;
    } else {
     s0+=43.0;
     s1+=1550.0;
    }
   }
  } else {
   if(i68<0.31507423520088196){
    if(i38<0.005940128117799759){
     s0+=1179.0;
     s1+=526.0;
    } else {
     s0+=134.0;
     s1+=463.0;
    }
   } else {
    if(i6<1.0713525625760667e-05){
     s0+=1.0;
     s1+=288.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i34<0.01686345785856247){
   if(i69<-0.029772844165563583){
    if(i0<0.1744394302368164){
     s0+=92.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i71<1.2826270904042758e-05){
     s0+=46.0;
     s1+=1414.0;
    } else {
     s0+=17.0;
     s1+=19.0;
    }
   }
  } else {
   if(i6<-4.8788468120619655e-05){
    if(i0<0.10958892107009888){
     s0+=4.0;
     s1+=388.0;
    } else {
     s0+=1.0;
     s1+=8662.0;
    }
   } else {
    if(i17<1.002779245376587){
     s0+=11.0;
     s1+=13.0;
    } else {
     s1+=120.0;
    }
   }
  }
 }
}
if(i4<1.0024337768554688){
 if(i23<1.0526776313781738){
  if(i29<1.0104310512542725){
   if(i32<1.0556960105895996){
    if(i58<0.06419264525175095){
     s0+=42570.0;
    } else {
     s0+=265.0;
     s1+=3.0;
    }
   } else {
    if(i33<0.0006596597959287465){
     s0+=3534.0;
     s1+=460.0;
    } else {
     s0+=11107.0;
     s1+=50.0;
    }
   }
  } else {
   if(i49<0.9981759190559387){
    s0+=6.0;
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i27<0.05109480023384094){
   if(i0<0.06646090745925903){
    if(i51<-0.024790406227111816){
     s0+=1794.0;
     s1+=531.0;
    } else {
     s0+=8804.0;
     s1+=664.0;
    }
   } else {
    if(i71<2.064788350253366e-05){
     s0+=30.0;
     s1+=1091.0;
    } else {
     s0+=54.0;
     s1+=123.0;
    }
   }
  } else {
   if(i36<-0.00013405084609985352){
    if(i61<-2.319638724657125e-06){
     s0+=8.0;
     s1+=42.0;
    } else {
     s0+=520.0;
     s1+=5.0;
    }
   } else {
    if(i3<0.10919979214668274){
     s0+=1518.0;
     s1+=558.0;
    } else {
     s0+=517.0;
     s1+=2226.0;
    }
   }
  }
 }
} else {
 if(i31<0.00018719921354204416){
  if(i32<1.125725507736206){
   if(i16<1.007152795791626){
    s0+=5.0;
   } else {
    s1+=10.0;
   }
  } else {
   s0+=91.0;
  }
 } else {
  if(i1<0.06511685252189636){
   if(i63<0.004036560654640198){
    if(i32<1.171011209487915){
     s0+=10.0;
     s1+=32.0;
    } else {
     s0+=79.0;
     s1+=1.0;
    }
   } else {
    if(i29<1.0143933296203613){
     s0+=43.0;
     s1+=437.0;
    } else {
     s0+=37.0;
     s1+=5.0;
    }
   }
  } else {
   if(i43<-1.3171125829103403e-05){
    if(i52<9.547366789774969e-05){
     s0+=4.0;
     s1+=8715.0;
    } else {
     s0+=88.0;
     s1+=1930.0;
    }
   } else {
    if(i46<0.0026046354323625565){
     s0+=1.0;
     s1+=149.0;
    } else {
     s0+=45.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i4<1.0024445056915283){
 if(i30<0.00031967530958354473){
  if(i67<1.0136269330978394){
   if(i1<0.08410564064979553){
    if(i46<0.00027756750932894647){
     s0+=45395.0;
     s1+=50.0;
    } else {
     s0+=11832.0;
     s1+=543.0;
    }
   } else {
    if(i5<-4.3392181396484375e-05){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=177.0;
    }
   }
  } else {
   if(i17<0.9992127418518066){
    if(i6<-3.303492849227041e-05){
     s0+=6.0;
     s1+=32.0;
    } else {
     s0+=209.0;
     s1+=1.0;
    }
   } else {
    if(i52<7.120537702576257e-06){
     s0+=105.0;
     s1+=25.0;
    } else {
     s0+=37.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i56<-0.00010752522211987525){
   if(i1<0.07921838760375977){
    if(i28<1.100754976272583){
     s0+=308.0;
     s1+=349.0;
    } else {
     s0+=2768.0;
     s1+=265.0;
    }
   } else {
    if(i43<3.804079369729152e-06){
     s0+=655.0;
     s1+=2986.0;
    } else {
     s0+=168.0;
     s1+=1.0;
    }
   }
  } else {
   if(i15<-0.0013626515865325928){
    if(i8<0.12535318732261658){
     s0+=5873.0;
     s1+=188.0;
    } else {
     s0+=66.0;
     s1+=102.0;
    }
   } else {
    if(i47<0.00039836548967286944){
     s0+=1979.0;
     s1+=28.0;
    } else {
     s0+=1342.0;
     s1+=911.0;
    }
   }
  }
 }
} else {
 if(i2<0.0009569525718688965){
  if(i1<0.0651918351650238){
   if(i37<1.17421293258667){
    if(i48<0.000634391326457262){
     s0+=8.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i34<0.015389793552458286){
     s0+=200.0;
     s1+=17.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i21<0.0024503744207322598){
    if(i71<7.362632459262386e-08){
     s0+=67.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i3<0.1045110821723938){
     s0+=26.0;
     s1+=258.0;
    } else {
     s0+=3.0;
     s1+=882.0;
    }
   }
  }
 } else {
  if(i1<0.04723888635635376){
   if(i45<-0.003625154495239258){
    if(i58<0.20636692643165588){
     s1+=145.0;
    } else {
     s0+=13.0;
     s1+=24.0;
    }
   } else {
    if(i15<0.0005937814712524414){
     s0+=24.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i52<0.00011792947771027684){
    if(i15<-7.140636444091797e-05){
     s0+=4.0;
     s1+=148.0;
    } else {
     s1+=8348.0;
    }
   } else {
    if(i43<-3.616800677264109e-05){
     s0+=2.0;
     s1+=1064.0;
    } else {
     s0+=46.0;
     s1+=133.0;
    }
   }
  }
 }
}
if(i10<1.0451881885528564){
 if(i8<0.08073931932449341){
  if(i14<1.0019545555114746){
   if(i31<0.0003070464008487761){
    if(i64<-0.0027875304222106934){
     s0+=6.0;
     s1+=30.0;
    } else {
     s0+=53305.0;
     s1+=311.0;
    }
   } else {
    if(i1<0.08354318141937256){
     s0+=11432.0;
     s1+=1076.0;
    } else {
     s0+=81.0;
     s1+=320.0;
    }
   }
  } else {
   if(i70<0.0008361469954252243){
    if(i71<1.540321136417333e-05){
     s0+=8.0;
     s1+=448.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i34<0.03637785091996193){
     s0+=285.0;
     s1+=36.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i13<0.9925369024276733){
   if(i5<-6.693601608276367e-05){
    if(i1<0.11128106713294983){
     s0+=33.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.0575635433197021){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   }
  } else {
   if(i6<-6.177908289828338e-06){
    if(i71<4.077690391568467e-05){
     s0+=3.0;
     s1+=498.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i0<0.09028980135917664){
     s0+=15.0;
     s1+=1.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i21<0.004447091370820999){
  if(i3<0.07605069875717163){
   if(i17<1.0005325078964233){
    if(i13<1.001523494720459){
     s0+=2766.0;
     s1+=150.0;
    } else {
     s0+=160.0;
     s1+=59.0;
    }
   } else {
    if(i33<0.0008540477138012648){
     s0+=69.0;
     s1+=211.0;
    } else {
     s0+=383.0;
     s1+=46.0;
    }
   }
  } else {
   if(i55<-0.004758291877806187){
    if(i55<-0.011028172448277473){
     s0+=525.0;
     s1+=48.0;
    } else {
     s0+=608.0;
     s1+=307.0;
    }
   } else {
    if(i49<0.9993025064468384){
     s0+=107.0;
     s1+=2.0;
    } else {
     s0+=247.0;
     s1+=1473.0;
    }
   }
  }
 } else {
  if(i14<0.9984376430511475){
   if(i31<0.05128689110279083){
    if(i47<0.009604914113879204){
     s0+=293.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i13<0.9949787855148315){
    if(i1<0.10336154699325562){
     s0+=322.0;
     s1+=109.0;
    } else {
     s0+=21.0;
     s1+=746.0;
    }
   } else {
    if(i0<0.08061408996582031){
     s0+=187.0;
     s1+=905.0;
    } else {
     s0+=86.0;
     s1+=10383.0;
    }
   }
  }
 }
}
if(i17<1.002821445465088){
 if(i3<0.08392083644866943){
  if(i32<1.0556960105895996){
   if(i58<0.06419264525175095){
    s0+=42719.0;
   } else {
    if(i3<0.05824267864227295){
     s0+=262.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.00021630525588989258){
    if(i32<1.1036889553070068){
     s0+=7724.0;
     s1+=1392.0;
    } else {
     s0+=16479.0;
     s1+=252.0;
    }
   } else {
    if(i32<1.1088199615478516){
     s0+=99.0;
     s1+=364.0;
    } else {
     s0+=757.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i61<2.3955667529662605e-06){
   if(i14<0.9985270500183105){
    if(i38<0.009581530466675758){
     s0+=397.0;
     s1+=9.0;
    } else {
     s0+=27.0;
     s1+=11.0;
    }
   } else {
    if(i59<0.027921855449676514){
     s0+=310.0;
     s1+=3076.0;
    } else {
     s0+=820.0;
     s1+=1304.0;
    }
   }
  } else {
   s0+=308.0;
  }
 }
} else {
 if(i5<1.9252300262451172e-05){
  if(i50<-0.001364398282021284){
   if(i8<0.12784776091575623){
    if(i52<9.361494448967278e-05){
     s1+=2.0;
    } else {
     s0+=9.0;
    }
   } else {
    s1+=55.0;
   }
  } else {
   if(i25<1.0501435995101929){
    if(i9<1.0680103302001953){
     s0+=738.0;
     s1+=15.0;
    } else {
     s0+=49.0;
     s1+=34.0;
    }
   } else {
    if(i45<-0.0024183988571166992){
     s1+=40.0;
    } else {
     s0+=46.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i0<0.05594918131828308){
   if(i70<0.00045970547944307327){
    if(i43<-1.6910009435378015e-05){
     s0+=25.0;
     s1+=97.0;
    } else {
     s0+=149.0;
     s1+=7.0;
    }
   } else {
    if(i15<-0.001428067684173584){
     s0+=62.0;
     s1+=50.0;
    } else {
     s0+=8.0;
     s1+=379.0;
    }
   }
  } else {
   if(i21<0.0022073215804994106){
    if(i28<1.2392117977142334){
     s0+=5.0;
     s1+=112.0;
    } else {
     s0+=62.0;
     s1+=34.0;
    }
   } else {
    if(i16<1.0037634372711182){
     s0+=106.0;
     s1+=1721.0;
    } else {
     s0+=12.0;
     s1+=7923.0;
    }
   }
  }
 }
}
if(i19<1.0106360912322998){
 if(i3<0.08413374423980713){
  if(i2<0.0006022751331329346){
   if(i44<-0.0015513598918914795){
    if(i12<0.982337474822998){
     s0+=1283.0;
     s1+=71.0;
    } else {
     s0+=2429.0;
     s1+=741.0;
    }
   } else {
    if(i31<0.00030578483710996807){
     s0+=53072.0;
     s1+=249.0;
    } else {
     s0+=10938.0;
     s1+=821.0;
    }
   }
  } else {
   if(i32<1.0533727407455444){
    s0+=76.0;
   } else {
    if(i37<1.2510931491851807){
     s0+=14.0;
     s1+=517.0;
    } else {
     s0+=163.0;
     s1+=242.0;
    }
   }
  }
 } else {
  if(i5<-4.762411117553711e-05){
   if(i6<-3.858903801301494e-05){
    if(i17<0.9980221390724182){
     s0+=1.0;
     s1+=80.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i21<0.006020939908921719){
     s0+=624.0;
     s1+=18.0;
    } else {
     s0+=11.0;
     s1+=21.0;
    }
   }
  } else {
   if(i34<0.014505987986922264){
    if(i59<0.03998163342475891){
     s0+=105.0;
     s1+=702.0;
    } else {
     s0+=342.0;
     s1+=105.0;
    }
   } else {
    if(i44<0.005104422569274902){
     s0+=27.0;
     s1+=2545.0;
    } else {
     s0+=75.0;
     s1+=243.0;
    }
   }
  }
 }
} else {
 if(i1<0.0961209237575531){
  if(i40<0.027150452136993408){
   if(i1<0.06578302383422852){
    if(i33<0.000738308415748179){
     s0+=147.0;
     s1+=111.0;
    } else {
     s0+=542.0;
     s1+=25.0;
    }
   } else {
    if(i67<1.0280827283859253){
     s0+=26.0;
     s1+=473.0;
    } else {
     s0+=47.0;
     s1+=17.0;
    }
   }
  } else {
   if(i42<1.1039612293243408){
    if(i5<8.463859558105469e-06){
     s0+=101.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=75.0;
    }
   } else {
    if(i46<0.001560516539029777){
     s0+=67.0;
     s1+=21.0;
    } else {
     s0+=578.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i12<1.0069518089294434){
   if(i21<0.0038899858482182026){
    if(i73<1.0306370258331299){
     s0+=31.0;
     s1+=202.0;
    } else {
     s0+=348.0;
     s1+=97.0;
    }
   } else {
    if(i17<0.9949876070022583){
     s0+=38.0;
     s1+=22.0;
    } else {
     s0+=60.0;
     s1+=1594.0;
    }
   }
  } else {
   if(i5<9.357929229736328e-06){
    if(i48<0.00032013480085879564){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=115.0;
    }
   } else {
    if(i48<0.0006548622623085976){
     s0+=9.0;
     s1+=353.0;
    } else {
     s0+=3.0;
     s1+=7552.0;
    }
   }
  }
 }
}
if(i5<3.427267074584961e-05){
 if(i0<0.08396929502487183){
  if(i46<0.00031217283685691655){
   if(i19<1.0100734233856201){
    if(i12<1.0042294263839722){
     s0+=46892.0;
     s1+=49.0;
    } else {
     s0+=195.0;
     s1+=23.0;
    }
   } else {
    if(i23<1.046285629272461){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  } else {
   if(i32<1.1031841039657593){
    if(i1<0.06338798999786377){
     s0+=6165.0;
     s1+=924.0;
    } else {
     s0+=656.0;
     s1+=806.0;
    }
   } else {
    if(i64<-0.0009466409683227539){
     s0+=4374.0;
     s1+=298.0;
    } else {
     s0+=10751.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i41<0.0614701509475708){
   if(i66<0.9955679178237915){
    s0+=54.0;
   } else {
    if(i3<0.08889180421829224){
     s0+=36.0;
     s1+=106.0;
    } else {
     s0+=22.0;
     s1+=1671.0;
    }
   }
  } else {
   if(i34<0.040322914719581604){
    if(i40<0.056165218353271484){
     s0+=110.0;
     s1+=268.0;
    } else {
     s0+=1013.0;
     s1+=472.0;
    }
   } else {
    if(i27<0.0862455666065216){
     s0+=15.0;
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=514.0;
    }
   }
  }
 }
} else {
 if(i57<0.9993402361869812){
  s0+=458.0;
 } else {
  if(i21<0.002151013817638159){
   if(i5<6.490945816040039e-05){
    if(i39<0.000972151116002351){
     s1+=19.0;
    } else {
     s0+=181.0;
     s1+=19.0;
    }
   } else {
    s1+=141.0;
   }
  } else {
   if(i4<1.003451943397522){
    if(i11<0.0007554888725280762){
     s0+=44.0;
     s1+=1135.0;
    } else {
     s0+=170.0;
     s1+=348.0;
    }
   } else {
    if(i57<1.0007832050323486){
     s0+=73.0;
     s1+=10053.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i2<0.0005491375923156738){
 if(i31<0.0003149337135255337){
  if(i29<1.0088319778442383){
   if(i35<1.007720708847046){
    if(i38<0.00029612507205456495){
     s0+=34504.0;
     s1+=1.0;
    } else {
     s0+=18916.0;
     s1+=260.0;
    }
   } else {
    if(i7<1.0094664096832275){
     s0+=251.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i39<0.0020682853646576405){
    if(i1<0.06405922770500183){
     s0+=38.0;
     s1+=37.0;
    } else {
     s0+=7.0;
     s1+=139.0;
    }
   } else {
    if(i10<1.0527119636535645){
     s0+=93.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i56<-0.00010421259503345937){
   if(i21<0.004343392327427864){
    if(i1<0.07916367053985596){
     s0+=3668.0;
     s1+=340.0;
    } else {
     s0+=711.0;
     s1+=1088.0;
    }
   } else {
    if(i1<0.06393945217132568){
     s0+=706.0;
     s1+=174.0;
    } else {
     s0+=213.0;
     s1+=1896.0;
    }
   }
  } else {
   if(i23<1.0412344932556152){
    if(i13<0.9942370653152466){
     s0+=3411.0;
     s1+=1.0;
    } else {
     s0+=1047.0;
     s1+=62.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=1554.0;
     s1+=760.0;
    } else {
     s0+=5470.0;
     s1+=485.0;
    }
   }
  }
 }
} else {
 if(i38<0.0003409801865927875){
  s0+=177.0;
 } else {
  if(i30<0.00017242151079699397){
   if(i49<1.000950813293457){
    if(i38<0.001646693330258131){
     s1+=12.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i3<0.06528717279434204){
    if(i51<0.010628700256347656){
     s0+=111.0;
     s1+=511.0;
    } else {
     s0+=76.0;
     s1+=7.0;
    }
   } else {
    if(i56<-0.0005582177545875311){
     s0+=7.0;
     s1+=7582.0;
    } else {
     s0+=183.0;
     s1+=3618.0;
    }
   }
  }
 }
}
if(i3<0.08355417847633362){
 if(i53<-0.0024018585681915283){
  if(i0<0.02412089705467224){
   if(i11<0.0006063580513000488){
    if(i65<0.0006009348435327411){
     s0+=893.0;
     s1+=12.0;
    } else {
     s0+=1106.0;
     s1+=171.0;
    }
   } else {
    if(i4<1.001577377319336){
     s0+=33.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=124.0;
    }
   }
  } else {
   if(i6<-3.112566264462657e-05){
    if(i43<-2.589578798506409e-06){
     s0+=32.0;
     s1+=532.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    if(i27<0.006609022617340088){
     s0+=6.0;
     s1+=71.0;
    } else {
     s0+=350.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i1<0.06630510091781616){
   if(i62<-0.0020241141319274902){
    if(i38<0.0011057029478251934){
     s0+=1208.0;
     s1+=511.0;
    } else {
     s0+=3638.0;
     s1+=131.0;
    }
   } else {
    if(i11<0.00042361021041870117){
     s0+=58396.0;
     s1+=429.0;
    } else {
     s0+=921.0;
     s1+=156.0;
    }
   }
  } else {
   if(i51<0.004253417253494263){
    if(i42<1.1433550119400024){
     s0+=54.0;
     s1+=362.0;
    } else {
     s0+=148.0;
     s1+=99.0;
    }
   } else {
    if(i41<0.03697621822357178){
     s0+=88.0;
     s1+=215.0;
    } else {
     s0+=2172.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i4<0.9964578151702881){
  if(i57<0.9998101592063904){
   if(i4<0.9956536293029785){
    if(i57<0.9997952580451965){
     s0+=607.0;
    } else {
     s0+=13.0;
     s1+=3.0;
    }
   } else {
    if(i23<1.075092077255249){
     s1+=11.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i9<1.1150825023651123){
    if(i25<1.027402639389038){
     s0+=8.0;
     s1+=24.0;
    } else {
     s0+=95.0;
     s1+=6.0;
    }
   } else {
    if(i52<5.3617972298525274e-05){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i2<0.0004979968070983887){
   if(i59<0.03062230348587036){
    if(i73<1.0315027236938477){
     s0+=104.0;
     s1+=1799.0;
    } else {
     s0+=235.0;
     s1+=377.0;
    }
   } else {
    if(i43<-5.644507723445713e-07){
     s0+=542.0;
     s1+=806.0;
    } else {
     s0+=227.0;
     s1+=62.0;
    }
   }
  } else {
   if(i2<0.0008389949798583984){
    if(i57<0.9999054074287415){
     s1+=633.0;
    } else {
     s0+=108.0;
     s1+=410.0;
    }
   } else {
    if(i32<1.2590415477752686){
     s0+=44.0;
     s1+=3048.0;
    } else {
     s0+=1.0;
     s1+=6784.0;
    }
   }
  }
 }
}
if(i6<-7.074762106640264e-05){
 if(i67<0.9993253946304321){
  if(i3<0.062319785356521606){
   if(i26<0.9947274923324585){
    if(i4<1.0031063556671143){
     s0+=806.0;
     s1+=61.0;
    } else {
     s0+=27.0;
     s1+=86.0;
    }
   } else {
    if(i45<0.0013304948806762695){
     s0+=1.0;
     s1+=132.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i61<-2.8792383091058582e-05){
    s0+=18.0;
   } else {
    if(i9<1.036928415298462){
     s0+=15.0;
     s1+=42.0;
    } else {
     s0+=10.0;
     s1+=1807.0;
    }
   }
  }
 } else {
  if(i26<0.9979715943336487){
   if(i20<0.026087384670972824){
    if(i43<-2.3446682462235913e-05){
     s0+=153.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i8<0.09414181113243103){
     s0+=42.0;
     s1+=19.0;
    } else {
     s0+=16.0;
     s1+=802.0;
    }
   }
  } else {
   if(i21<0.004517189227044582){
    if(i3<0.05642324686050415){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=804.0;
    }
   } else {
    if(i52<0.00019681957201100886){
     s1+=7712.0;
    } else {
     s0+=2.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i8<0.0707012414932251){
  if(i1<0.07749462127685547){
   if(i51<-0.0279102623462677){
    if(i17<1.000505805015564){
     s0+=2154.0;
     s1+=310.0;
    } else {
     s0+=199.0;
     s1+=314.0;
    }
   } else {
    if(i2<0.0006026923656463623){
     s0+=65067.0;
     s1+=1271.0;
    } else {
     s0+=187.0;
     s1+=153.0;
    }
   }
  } else {
   if(i23<1.0494358539581299){
    if(i13<0.9938150644302368){
     s0+=117.0;
    } else {
     s0+=37.0;
     s1+=33.0;
    }
   } else {
    if(i22<-2.03549861907959e-05){
     s0+=25.0;
    } else {
     s0+=59.0;
     s1+=941.0;
    }
   }
  }
 } else {
  if(i3<0.10111886262893677){
   if(i55<-0.004306301474571228){
    if(i73<0.9444781541824341){
     s1+=6.0;
    } else {
     s0+=599.0;
     s1+=17.0;
    }
   } else {
    if(i47<0.00029442046070471406){
     s0+=175.0;
    } else {
     s0+=316.0;
     s1+=426.0;
    }
   }
  } else {
   if(i51<0.07950589060783386){
    if(i22<-2.4080276489257812e-05){
     s0+=64.0;
    } else {
     s0+=154.0;
     s1+=1635.0;
    }
   } else {
    if(i21<0.005526802968233824){
     s0+=712.0;
     s1+=167.0;
    } else {
     s0+=20.0;
     s1+=311.0;
    }
   }
  }
 }
}
if(i15<0.0009339749813079834){
 if(i9<1.0469921827316284){
  if(i39<0.0003777923993766308){
   if(i26<1.0077420473098755){
    if(i23<1.0494716167449951){
     s0+=39466.0;
     s1+=17.0;
    } else {
     s0+=763.0;
     s1+=21.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<0.0782274603843689){
    if(i18<-0.0002345740795135498){
     s0+=12324.0;
     s1+=85.0;
    } else {
     s0+=10031.0;
     s1+=817.0;
    }
   } else {
    if(i12<0.9879646301269531){
     s0+=137.0;
     s1+=54.0;
    } else {
     s0+=56.0;
     s1+=300.0;
    }
   }
  }
 } else {
  if(i2<0.0004813075065612793){
   if(i34<0.040005967020988464){
    if(i72<0.017048483714461327){
     s0+=3011.0;
     s1+=496.0;
    } else {
     s0+=4636.0;
     s1+=2354.0;
    }
   } else {
    if(i23<1.0910286903381348){
     s0+=78.0;
    } else {
     s0+=41.0;
     s1+=774.0;
    }
   }
  } else {
   if(i9<1.1223218441009521){
    if(i28<1.5682398080825806){
     s0+=127.0;
     s1+=1003.0;
    } else {
     s0+=164.0;
     s1+=13.0;
    }
   } else {
    if(i38<0.00670105405151844){
     s0+=13.0;
     s1+=320.0;
    } else {
     s1+=1193.0;
    }
   }
  }
 }
} else {
 if(i43<-9.975608918466605e-06){
  if(i66<0.999464750289917){
   if(i6<-4.062804509885609e-05){
    s1+=6605.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i18<0.00021499395370483398){
    if(i11<0.0005755424499511719){
     s0+=157.0;
     s1+=169.0;
    } else {
     s0+=1.0;
     s1+=304.0;
    }
   } else {
    s1+=2184.0;
   }
  }
 } else {
  if(i3<0.07791948318481445){
   if(i30<0.00043135476880706847){
    if(i1<0.07073652744293213){
     s0+=197.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.002493942389264703){
     s1+=12.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i49<1.0004734992980957){
    s1+=309.0;
   } else {
    s0+=1.0;
   }
  }
 }
}
if(i13<1.0040117502212524){
 if(i27<0.06527140736579895){
  if(i3<0.08355346322059631){
   if(i62<-0.002227604389190674){
    if(i2<-0.0002817511558532715){
     s0+=4182.0;
     s1+=334.0;
    } else {
     s0+=1412.0;
     s1+=779.0;
    }
   } else {
    if(i10<1.0401476621627808){
     s0+=57716.0;
     s1+=409.0;
    } else {
     s0+=4913.0;
     s1+=691.0;
    }
   }
  } else {
   if(i57<0.9994035959243774){
    s0+=275.0;
   } else {
    if(i22<-1.3917684555053711e-05){
     s0+=60.0;
     s1+=3.0;
    } else {
     s0+=89.0;
     s1+=1873.0;
    }
   }
  }
 } else {
  if(i33<0.004773844964802265){
   if(i3<0.10798698663711548){
    if(i37<1.1948275566101074){
     s0+=506.0;
     s1+=133.0;
    } else {
     s0+=343.0;
     s1+=11.0;
    }
   } else {
    if(i6<-1.2701755622401834e-05){
     s0+=205.0;
     s1+=798.0;
    } else {
     s0+=478.0;
     s1+=125.0;
    }
   }
  } else {
   if(i0<0.11701828241348267){
    if(i19<0.9906682968139648){
     s0+=16.0;
     s1+=84.0;
    } else {
     s0+=293.0;
     s1+=41.0;
    }
   } else {
    if(i37<1.2582359313964844){
     s0+=49.0;
     s1+=196.0;
    } else {
     s0+=3.0;
     s1+=1594.0;
    }
   }
  }
 }
} else {
 if(i4<1.0027759075164795){
  if(i9<1.0441287755966187){
   if(i49<1.0013684034347534){
    if(i11<0.00041991472244262695){
     s0+=372.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i2<0.00014388561248779297){
    if(i54<0.0003991376142948866){
     s0+=94.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=39.0;
    }
   } else {
    if(i57<0.9999150037765503){
     s0+=3.0;
     s1+=436.0;
    } else {
     s0+=110.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i3<0.10156497359275818){
   if(i62<0.0057784318923950195){
    if(i41<0.05942302942276001){
     s0+=44.0;
     s1+=1079.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   } else {
    if(i70<0.0005350896390154958){
     s0+=68.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i11<0.00036409497261047363){
    if(i0<0.13464754819869995){
     s0+=12.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=353.0;
    }
   } else {
    if(i4<1.00577974319458){
     s0+=13.0;
     s1+=766.0;
    } else {
     s1+=7045.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i17<1.0028477907180786){
  if(i9<1.0398929119110107){
   if(i54<0.00027676470926962793){
    if(i35<1.0083249807357788){
     s0+=50917.0;
     s1+=125.0;
    } else {
     s0+=12.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.2011767625808716){
     s0+=1711.0;
     s1+=375.0;
    } else {
     s0+=5397.0;
     s1+=27.0;
    }
   }
  } else {
   if(i1<0.06347781419754028){
    if(i35<0.9959737658500671){
     s0+=2522.0;
     s1+=531.0;
    } else {
     s0+=6352.0;
     s1+=341.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=317.0;
     s1+=557.0;
    } else {
     s0+=1152.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i28<1.2385294437408447){
   if(i31<0.00020281637262087315){
    if(i23<1.0529711246490479){
     s0+=74.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<0.0007852835115045309){
     s0+=6.0;
     s1+=4.0;
    } else {
     s1+=617.0;
    }
   }
  } else {
   if(i22<3.415346145629883e-05){
    if(i50<0.00914568081498146){
     s0+=888.0;
     s1+=15.0;
    } else {
     s0+=156.0;
     s1+=84.0;
    }
   } else {
    if(i66<0.9996728301048279){
     s0+=29.0;
     s1+=177.0;
    } else {
     s0+=77.0;
     s1+=85.0;
    }
   }
  }
 }
} else {
 if(i14<0.9981510639190674){
  if(i18<-0.0004679560661315918){
   if(i59<0.039529651403427124){
    s1+=5.0;
   } else {
    s0+=9.0;
   }
  } else {
   if(i46<0.043814562261104584){
    s0+=400.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i4<1.0018045902252197){
   if(i55<-0.005370283965021372){
    if(i33<0.0012147317174822092){
     s0+=348.0;
     s1+=18.0;
    } else {
     s0+=400.0;
     s1+=1150.0;
    }
   } else {
    if(i47<0.00047184459981508553){
     s0+=60.0;
     s1+=6.0;
    } else {
     s0+=142.0;
     s1+=2003.0;
    }
   }
  } else {
   if(i1<0.1385507881641388){
    if(i67<1.0499322414398193){
     s0+=64.0;
     s1+=1595.0;
    } else {
     s0+=51.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.1725631058216095){
     s0+=19.0;
     s1+=882.0;
    } else {
     s1+=8324.0;
    }
   }
  }
 }
}
if(i2<0.000545799732208252){
 if(i1<0.08223840594291687){
  if(i31<0.0003013138775713742){
   if(i4<1.0025451183319092){
    if(i64<-0.0028032660484313965){
     s0+=4.0;
     s1+=23.0;
    } else {
     s0+=53398.0;
     s1+=281.0;
    }
   } else {
    if(i75<5.378533751354553e-05){
     s1+=30.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i37<1.103413462638855){
    if(i32<1.067455530166626){
     s0+=2774.0;
     s1+=142.0;
    } else {
     s0+=1129.0;
     s1+=1233.0;
    }
   } else {
    if(i63<0.0149906687438488){
     s0+=10609.0;
     s1+=235.0;
    } else {
     s0+=1068.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i40<0.049280405044555664){
   if(i66<0.9973238706588745){
    s0+=63.0;
   } else {
    if(i22<-2.2619962692260742e-05){
     s0+=14.0;
    } else {
     s0+=88.0;
     s1+=2192.0;
    }
   }
  } else {
   if(i6<-1.3806367860524915e-05){
    if(i57<1.0003552436828613){
     s0+=342.0;
     s1+=1023.0;
    } else {
     s0+=137.0;
     s1+=23.0;
    }
   } else {
    if(i0<0.2241348922252655){
     s0+=693.0;
     s1+=59.0;
    } else {
     s0+=176.0;
     s1+=65.0;
    }
   }
  }
 }
} else {
 if(i32<1.055294156074524){
  s0+=165.0;
 } else {
  if(i15<0.0014304518699645996){
   if(i70<0.0004906479734927416){
    if(i1<0.06463679671287537){
     s0+=148.0;
     s1+=63.0;
    } else {
     s0+=133.0;
     s1+=704.0;
    }
   } else {
    if(i3<0.04224732518196106){
     s0+=52.0;
     s1+=138.0;
    } else {
     s0+=53.0;
     s1+=2372.0;
    }
   }
  } else {
   s1+=8386.0;
  }
 }
}
if(i16<1.0066354274749756){
 if(i8<0.08111581206321716){
  if(i0<0.08162745833396912){
   if(i64<-0.0012961924076080322){
    if(i2<0.0004609227180480957){
     s0+=5827.0;
     s1+=968.0;
    } else {
     s0+=101.0;
     s1+=437.0;
    }
   } else {
    if(i10<1.0401114225387573){
     s0+=57528.0;
     s1+=438.0;
    } else {
     s0+=4418.0;
     s1+=500.0;
    }
   }
  } else {
   if(i5<-4.8160552978515625e-05){
    if(i10<1.073423147201538){
     s0+=103.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i27<0.0668438971042633){
     s0+=23.0;
     s1+=615.0;
    } else {
     s0+=67.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i49<0.9987839460372925){
   if(i38<0.026849187910556793){
    if(i10<1.0402504205703735){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=239.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i1<0.12329530715942383){
    if(i73<1.004641056060791){
     s0+=52.0;
     s1+=390.0;
    } else {
     s0+=441.0;
     s1+=187.0;
    }
   } else {
    if(i54<0.00034521002089604735){
     s0+=122.0;
     s1+=141.0;
    } else {
     s0+=65.0;
     s1+=2192.0;
    }
   }
  }
 }
} else {
 if(i1<0.07411333918571472){
  if(i4<1.0041444301605225){
   if(i38<0.0012195224408060312){
    if(i61<-2.2045537662052084e-06){
     s0+=12.0;
     s1+=206.0;
    } else {
     s0+=182.0;
     s1+=42.0;
    }
   } else {
    if(i61<-7.427473974530585e-06){
     s0+=7.0;
     s1+=26.0;
    } else {
     s0+=1318.0;
     s1+=24.0;
    }
   }
  } else {
   s1+=234.0;
  }
 } else {
  if(i70<0.00023521452385466546){
   if(i45<0.015658676624298096){
    if(i66<1.0002340078353882){
     s0+=14.0;
     s1+=622.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.25251975655555725){
     s0+=240.0;
     s1+=15.0;
    } else {
     s0+=40.0;
     s1+=104.0;
    }
   }
  } else {
   if(i22<-1.5467405319213867e-05){
    s0+=74.0;
   } else {
    if(i70<0.0004676679673139006){
     s0+=203.0;
     s1+=1990.0;
    } else {
     s0+=23.0;
     s1+=7904.0;
    }
   }
  }
 }
}
if(i8<0.07196682691574097){
 if(i0<0.07752794027328491){
  if(i13<1.004927158355713){
   if(i31<0.00028120086062699556){
    if(i16<1.0070117712020874){
     s0+=51786.0;
     s1+=178.0;
    } else {
     s0+=253.0;
     s1+=76.0;
    }
   } else {
    if(i38<0.0011256551370024681){
     s0+=4459.0;
     s1+=1371.0;
    } else {
     s0+=11947.0;
     s1+=642.0;
    }
   }
  } else {
   if(i2<0.0005483627319335938){
    if(i69<0.003898418275639415){
     s0+=372.0;
     s1+=25.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i46<0.0001927319390233606){
     s0+=17.0;
    } else {
     s0+=44.0;
     s1+=737.0;
    }
   }
  }
 } else {
  if(i17<0.9948306083679199){
   if(i29<1.0183954238891602){
    s0+=89.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i6<7.747837116767187e-06){
    if(i51<0.04349759221076965){
     s0+=13.0;
     s1+=1467.0;
    } else {
     s0+=19.0;
     s1+=31.0;
    }
   } else {
    s0+=18.0;
   }
  }
 }
} else {
 if(i21<0.004680464044213295){
  if(i14<0.9985938668251038){
   if(i43<-9.541997314954642e-06){
    if(i7<1.0021283626556396){
     s0+=26.0;
     s1+=7.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i74<0.9989287257194519){
     s0+=339.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   }
  } else {
   if(i69<-0.02061127871274948){
    if(i54<0.0005667599616572261){
     s0+=662.0;
     s1+=138.0;
    } else {
     s0+=61.0;
     s1+=119.0;
    }
   } else {
    if(i38<0.00032215105602517724){
     s0+=91.0;
     s1+=6.0;
    } else {
     s0+=404.0;
     s1+=1427.0;
    }
   }
  }
 } else {
  if(i22<-1.6421079635620117e-05){
   if(i6<-5.0072056183125824e-05){
    if(i8<0.08828476071357727){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=92.0;
   }
  } else {
   if(i71<2.6528077796683647e-05){
    if(i34<0.012358281761407852){
     s0+=101.0;
     s1+=515.0;
    } else {
     s0+=63.0;
     s1+=9842.0;
    }
   } else {
    if(i23<1.1260945796966553){
     s0+=134.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=574.0;
    }
   }
  }
 }
}
if(i1<0.08297458291053772){
 if(i11<0.0006350874900817871){
  if(i4<1.0024691820144653){
   if(i9<1.0451608896255493){
    if(i45<-0.004864782094955444){
     s0+=2555.0;
     s1+=286.0;
    } else {
     s0+=59208.0;
     s1+=419.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=1749.0;
     s1+=792.0;
    } else {
     s0+=5108.0;
     s1+=355.0;
    }
   }
  } else {
   if(i70<0.0004649423062801361){
    if(i52<8.553316547477152e-06){
     s0+=176.0;
     s1+=13.0;
    } else {
     s1+=69.0;
    }
   } else {
    s1+=147.0;
   }
  }
 } else {
  if(i15<-0.0003911256790161133){
   if(i25<1.0178123712539673){
    if(i9<1.068103551864624){
     s0+=126.0;
     s1+=83.0;
    } else {
     s0+=8.0;
     s1+=128.0;
    }
   } else {
    if(i37<1.1759474277496338){
     s0+=7.0;
     s1+=35.0;
    } else {
     s0+=445.0;
     s1+=51.0;
    }
   }
  } else {
   if(i32<1.0535550117492676){
    s0+=44.0;
   } else {
    if(i28<1.613681674003601){
     s1+=642.0;
    } else {
     s0+=31.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985275268554688){
  if(i38<0.00694283377379179){
   if(i6<-4.225862357998267e-05){
    if(i33<0.0016456798184663057){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    s0+=449.0;
   }
  } else {
   if(i23<1.0700592994689941){
    s0+=15.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i1<0.12336069345474243){
   if(i41<0.0595269501209259){
    if(i69<-0.022096628323197365){
     s0+=20.0;
     s1+=9.0;
    } else {
     s0+=54.0;
     s1+=2105.0;
    }
   } else {
    if(i69<-0.01904410310089588){
     s0+=507.0;
     s1+=28.0;
    } else {
     s0+=291.0;
     s1+=279.0;
    }
   }
  } else {
   if(i42<1.3184399604797363){
    if(i69<-0.03819141536951065){
     s0+=245.0;
     s1+=265.0;
    } else {
     s0+=64.0;
     s1+=2452.0;
    }
   } else {
    if(i21<0.006256808526813984){
     s0+=21.0;
     s1+=601.0;
    } else {
     s0+=6.0;
     s1+=8308.0;
    }
   }
  }
 }
}
if(i16<1.006638765335083){
 if(i5<4.0471553802490234e-05){
  if(i3<0.08176484704017639){
   if(i44<-0.0015491843223571777){
    if(i32<1.2038172483444214){
     s0+=1735.0;
     s1+=641.0;
    } else {
     s0+=1746.0;
     s1+=150.0;
    }
   } else {
    if(i0<0.06071770191192627){
     s0+=59979.0;
     s1+=598.0;
    } else {
     s0+=3344.0;
     s1+=401.0;
    }
   }
  } else {
   if(i57<0.9995670318603516){
    if(i43<-6.757870778528741e-06){
     s0+=10.0;
     s1+=89.0;
    } else {
     s0+=549.0;
    }
   } else {
    if(i21<0.0012007131008431315){
     s0+=280.0;
     s1+=90.0;
    } else {
     s0+=651.0;
     s1+=1974.0;
    }
   }
  }
 } else {
  if(i42<1.0762357711791992){
   s0+=242.0;
  } else {
   if(i9<1.1223218441009521){
    if(i18<-0.0003351569175720215){
     s0+=69.0;
     s1+=12.0;
    } else {
     s0+=126.0;
     s1+=1060.0;
    }
   } else {
    if(i33<0.0019315071403980255){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=1132.0;
    }
   }
  }
 }
} else {
 if(i22<2.0444393157958984e-05){
  if(i57<0.9998665452003479){
   if(i5<9.208917617797852e-06){
    if(i3<0.08385366201400757){
     s0+=336.0;
     s1+=72.0;
    } else {
     s0+=103.0;
     s1+=323.0;
    }
   } else {
    if(i33<0.0005012908950448036){
     s0+=21.0;
    } else {
     s0+=13.0;
     s1+=1837.0;
    }
   }
  } else {
   if(i38<0.0010664379224181175){
    if(i34<0.0014953149948269129){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=370.0;
    }
   } else {
    if(i43<-1.7037065845215693e-05){
     s0+=12.0;
     s1+=199.0;
    } else {
     s0+=1479.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i18<1.0251998901367188e-05){
   if(i34<0.021046556532382965){
    if(i74<1.005408763885498){
     s0+=138.0;
     s1+=14.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i36<0.0001703202724456787){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=303.0;
    }
   }
  } else {
   if(i46<0.00021935231052339077){
    s0+=10.0;
   } else {
    if(i2<0.0009297728538513184){
     s0+=5.0;
     s1+=180.0;
    } else {
     s1+=7700.0;
    }
   }
  }
 }
}
if(i19<1.0099655389785767){
 if(i5<3.8504600524902344e-05){
  if(i23<1.0495078563690186){
   if(i44<-0.001493006944656372){
    if(i39<0.00039094837848097086){
     s0+=707.0;
     s1+=8.0;
    } else {
     s0+=382.0;
     s1+=103.0;
    }
   } else {
    if(i72<0.009363671764731407){
     s0+=41555.0;
     s1+=44.0;
    } else {
     s0+=13669.0;
     s1+=241.0;
    }
   }
  } else {
   if(i1<0.07481938600540161){
    if(i33<0.0014459392987191677){
     s0+=4843.0;
     s1+=1008.0;
    } else {
     s0+=6600.0;
     s1+=257.0;
    }
   } else {
    if(i36<-0.00014230608940124512){
     s0+=298.0;
     s1+=21.0;
    } else {
     s0+=564.0;
     s1+=1738.0;
    }
   }
  }
 } else {
  if(i39<0.00042423821287229657){
   if(i15<0.00102311372756958){
    s0+=275.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i34<0.020902235060930252){
    if(i32<1.1353518962860107){
     s0+=15.0;
     s1+=620.0;
    } else {
     s0+=189.0;
     s1+=393.0;
    }
   } else {
    if(i53<0.006113618612289429){
     s0+=2.0;
     s1+=1463.0;
    } else {
     s0+=6.0;
     s1+=173.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007805824279785156){
  if(i6<-3.54922995029483e-05){
   if(i1<0.13190019130706787){
    if(i52<7.540793740190566e-05){
     s0+=52.0;
     s1+=339.0;
    } else {
     s0+=192.0;
     s1+=94.0;
    }
   } else {
    if(i6<-4.50843945145607e-05){
     s0+=18.0;
     s1+=1291.0;
    } else {
     s0+=24.0;
     s1+=134.0;
    }
   }
  } else {
   if(i0<0.11787933111190796){
    if(i39<0.001443968154489994){
     s0+=303.0;
     s1+=189.0;
    } else {
     s0+=1218.0;
     s1+=27.0;
    }
   } else {
    if(i41<0.09549367427825928){
     s0+=9.0;
     s1+=213.0;
    } else {
     s0+=259.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i3<0.0666925311088562){
   if(i38<0.0018554083071649075){
    s1+=67.0;
   } else {
    if(i73<0.9798141717910767){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=102.0;
    }
   }
  } else {
   if(i12<1.009029507637024){
    if(i61<-3.861748155031819e-06){
     s0+=3.0;
     s1+=332.0;
    } else {
     s0+=60.0;
     s1+=195.0;
    }
   } else {
    if(i4<1.000455379486084){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=7801.0;
    }
   }
  }
 }
}
if(i6<-7.076597830746323e-05){
 if(i4<0.99994957447052){
  if(i25<1.0624418258666992){
   if(i63<0.007398504763841629){
    if(i1<0.09121403098106384){
     s0+=734.0;
     s1+=8.0;
    } else {
     s0+=16.0;
     s1+=33.0;
    }
   } else {
    if(i0<0.02191832661628723){
     s0+=124.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=71.0;
    }
   }
  } else {
   if(i11<0.0008592009544372559){
    s1+=233.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i2<0.0004767179489135742){
   if(i49<1.0020378828048706){
    if(i18<-0.00011047720909118652){
     s0+=52.0;
     s1+=145.0;
    } else {
     s1+=308.0;
    }
   } else {
    if(i70<0.0016660550609230995){
     s0+=54.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i1<0.04851531982421875){
    if(i4<1.0049877166748047){
     s0+=70.0;
     s1+=68.0;
    } else {
     s0+=8.0;
     s1+=107.0;
    }
   } else {
    if(i7<1.0154021978378296){
     s0+=80.0;
     s1+=2546.0;
    } else {
     s1+=7948.0;
    }
   }
  }
 }
} else {
 if(i25<1.0394845008850098){
  if(i20<0.01579814776778221){
   if(i6<-4.0365739550907165e-05){
    if(i16<1.0075480937957764){
     s0+=736.0;
     s1+=101.0;
    } else {
     s0+=41.0;
     s1+=204.0;
    }
   } else {
    if(i62<-0.0026983916759490967){
     s0+=1652.0;
     s1+=428.0;
    } else {
     s0+=54103.0;
     s1+=315.0;
    }
   }
  } else {
   if(i5<-1.7344951629638672e-05){
    if(i8<0.07247346639633179){
     s0+=7722.0;
     s1+=360.0;
    } else {
     s0+=59.0;
     s1+=124.0;
    }
   } else {
    if(i8<0.04947078227996826){
     s0+=1265.0;
     s1+=685.0;
    } else {
     s0+=167.0;
     s1+=787.0;
    }
   }
  }
 } else {
  if(i28<1.255998969078064){
   if(i15<0.00021690130233764648){
    if(i58<0.03272821009159088){
     s0+=1086.0;
     s1+=224.0;
    } else {
     s0+=577.0;
     s1+=649.0;
    }
   } else {
    if(i34<0.005316843278706074){
     s0+=130.0;
     s1+=82.0;
    } else {
     s0+=160.0;
     s1+=951.0;
    }
   }
  } else {
   if(i34<0.03598079830408096){
    if(i0<0.12699726223945618){
     s0+=1871.0;
     s1+=79.0;
    } else {
     s0+=362.0;
     s1+=218.0;
    }
   } else {
    if(i5<-7.575750350952148e-05){
     s0+=127.0;
     s1+=11.0;
    } else {
     s0+=32.0;
     s1+=305.0;
    }
   }
  }
 }
}
if(i5<3.7729740142822266e-05){
 if(i0<0.07800713181495667){
  if(i9<1.0451608896255493){
   if(i68<0.018615633249282837){
    if(i65<0.0011659114388749003){
     s0+=49092.0;
     s1+=122.0;
    } else {
     s0+=33.0;
     s1+=71.0;
    }
   } else {
    if(i32<1.0983617305755615){
     s0+=4255.0;
     s1+=539.0;
    } else {
     s0+=8418.0;
     s1+=48.0;
    }
   }
  } else {
   if(i1<0.06317943334579468){
    if(i53<-0.0019198358058929443){
     s0+=1579.0;
     s1+=437.0;
    } else {
     s0+=4334.0;
     s1+=310.0;
    }
   } else {
    if(i40<0.02818530797958374){
     s0+=120.0;
     s1+=405.0;
    } else {
     s0+=857.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i40<0.04307854175567627){
   if(i11<-0.0004399716854095459){
    s0+=72.0;
   } else {
    if(i6<1.5516008716076612e-05){
     s0+=58.0;
     s1+=2051.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.0063728210516273975){
    if(i46<0.0018804115243256092){
     s0+=348.0;
     s1+=484.0;
    } else {
     s0+=1044.0;
     s1+=286.0;
    }
   } else {
    if(i10<1.0819685459136963){
     s0+=82.0;
     s1+=46.0;
    } else {
     s0+=38.0;
     s1+=577.0;
    }
   }
  }
 }
} else {
 if(i75<0.0003256012569181621){
  if(i61<-5.8678440836956725e-05){
   s0+=58.0;
  } else {
   if(i2<0.0009589195251464844){
    if(i6<-4.428885586094111e-05){
     s0+=172.0;
     s1+=1375.0;
    } else {
     s0+=160.0;
     s1+=151.0;
    }
   } else {
    if(i0<0.012903451919555664){
     s0+=24.0;
     s1+=64.0;
    } else {
     s0+=66.0;
     s1+=10104.0;
    }
   }
  }
 } else {
  s0+=248.0;
 }
}
if(i17<1.0025955438613892){
 if(i16<1.0068186521530151){
  if(i30<0.0003360170521773398){
   if(i0<0.0816141664981842){
    if(i50<0.0020425193943083286){
     s0+=56717.0;
     s1+=408.0;
    } else {
     s0+=386.0;
     s1+=128.0;
    }
   } else {
    if(i11<-0.0001780092716217041){
     s0+=88.0;
     s1+=4.0;
    } else {
     s0+=23.0;
     s1+=126.0;
    }
   }
  } else {
   if(i3<0.082272469997406){
    if(i39<0.0020252636168152094){
     s0+=2988.0;
     s1+=897.0;
    } else {
     s0+=6244.0;
     s1+=237.0;
    }
   } else {
    if(i44<0.004013270139694214){
     s0+=418.0;
     s1+=1252.0;
    } else {
     s0+=648.0;
     s1+=426.0;
    }
   }
  }
 } else {
  if(i0<0.07233679294586182){
   if(i70<0.0006295465864241123){
    if(i39<0.00045879275421611965){
     s0+=5.0;
     s1+=94.0;
    } else {
     s0+=1323.0;
     s1+=43.0;
    }
   } else {
    if(i21<0.0027334438636898994){
     s0+=9.0;
    } else {
     s1+=171.0;
    }
   }
  } else {
   if(i6<-2.2282918507698923e-05){
    if(i14<0.9984568953514099){
     s0+=16.0;
    } else {
     s0+=116.0;
     s1+=2527.0;
    }
   } else {
    if(i38<0.006013559177517891){
     s0+=420.0;
     s1+=38.0;
    } else {
     s0+=2.0;
     s1+=48.0;
    }
   }
  }
 }
} else {
 if(i6<-6.80576849845238e-05){
  if(i1<0.030515223741531372){
   if(i53<-0.004878610372543335){
    if(i18<-0.00046584010124206543){
     s0+=15.0;
    } else {
     s0+=14.0;
     s1+=67.0;
    }
   } else {
    if(i29<0.9899974465370178){
     s0+=304.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i23<1.042703628540039){
    s0+=14.0;
   } else {
    if(i1<0.08263787627220154){
     s0+=102.0;
     s1+=555.0;
    } else {
     s0+=33.0;
     s1+=9275.0;
    }
   }
  }
 } else {
  if(i5<3.36766242980957e-05){
   if(i9<1.0525195598602295){
    if(i47<0.0036970339715480804){
     s0+=213.0;
     s1+=41.0;
    } else {
     s0+=391.0;
     s1+=1.0;
    }
   } else {
    if(i8<0.1260061264038086){
     s0+=231.0;
     s1+=128.0;
    } else {
     s0+=17.0;
     s1+=151.0;
    }
   }
  } else {
   if(i21<0.0025043031200766563){
    if(i42<1.2007015943527222){
     s1+=22.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i20<0.010862689465284348){
     s0+=35.0;
     s1+=136.0;
    } else {
     s0+=14.0;
     s1+=560.0;
    }
   }
  }
 }
}
if(i1<0.08155468106269836){
 if(i13<1.0052235126495361){
  if(i20<0.014146804809570312){
   if(i44<-0.001741647720336914){
    if(i0<0.03931567072868347){
     s0+=1357.0;
     s1+=133.0;
    } else {
     s0+=125.0;
     s1+=127.0;
    }
   } else {
    if(i4<1.002463459968567){
     s0+=54759.0;
     s1+=374.0;
    } else {
     s0+=56.0;
     s1+=49.0;
    }
   }
  } else {
   if(i9<1.0398929119110107){
    if(i15<-0.0018085837364196777){
     s0+=6379.0;
     s1+=9.0;
    } else {
     s0+=2995.0;
     s1+=306.0;
    }
   } else {
    if(i44<0.0023530125617980957){
     s0+=2313.0;
     s1+=1324.0;
    } else {
     s0+=1173.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i61<-4.8356350816902705e-06){
   if(i14<1.0000152587890625){
    s0+=8.0;
   } else {
    if(i31<0.0001255013921763748){
     s0+=3.0;
    } else {
     s0+=6.0;
     s1+=645.0;
    }
   }
  } else {
   if(i51<-0.036970049142837524){
    if(i42<1.2604451179504395){
     s1+=35.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i70<0.0006382318679243326){
     s0+=319.0;
     s1+=4.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i6<-1.2552363841678016e-05){
  if(i6<-4.70149825559929e-05){
   if(i49<0.9962298274040222){
    s0+=18.0;
   } else {
    if(i16<1.0082454681396484){
     s0+=173.0;
     s1+=2554.0;
    } else {
     s0+=25.0;
     s1+=9479.0;
    }
   }
  } else {
   if(i44<0.0045996904373168945){
    if(i38<0.001852085581049323){
     s0+=39.0;
     s1+=814.0;
    } else {
     s0+=86.0;
     s1+=418.0;
    }
   } else {
    if(i20<0.03636213392019272){
     s0+=354.0;
     s1+=130.0;
    } else {
     s0+=32.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i55<-0.0032716132700443268){
   if(i5<4.094839096069336e-05){
    if(i0<0.23275864124298096){
     s0+=619.0;
     s1+=28.0;
    } else {
     s0+=149.0;
     s1+=55.0;
    }
   } else {
    s1+=27.0;
   }
  } else {
   if(i49<0.9992860555648804){
    s0+=146.0;
   } else {
    if(i52<2.614392178656999e-05){
     s0+=62.0;
     s1+=7.0;
    } else {
     s0+=52.0;
     s1+=234.0;
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
