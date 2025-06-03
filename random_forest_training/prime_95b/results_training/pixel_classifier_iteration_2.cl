/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=15 laplace_box_of_gaussian_blur=15 gaussian_blur=15 gaussian_blur=10 laplace_box_of_gaussian_blur=20 difference_of_gaussian=20 sobel_of_gaussian_blur=10 gaussian_blur=3 median_box=3 median_box=5 gaussian_blur=2 gaussian_blur=5 mean_box=3 sobel_of_gaussian_blur=30 top_hat_box=20 sobel_of_gaussian_blur=15 top_hat_box=15 mean_box=5 mean_box=10 difference_of_gaussian=10 mean_box=15 variance_box=30 laplace_box_of_gaussian_blur=10 sobel_of_gaussian_blur=5 mean_box=2 maximum_box=30 top_hat_box=30 variance_box=20 difference_of_gaussian=30 maximum_box=3 sobel_of_gaussian_blur=20 maximum_box=15 variance_box=15 maximum_box=20 sobel_of_gaussian_blur=3 variance_box=10 maximum_box=10 maximum_box=5 small_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=10 maximum_box=2 variance_box=5 small_hessian_eigenvalue_of_gaussian_blur=15 top_hat_box=10 gaussian_blur=20 gaussian_blur=30 gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=30 laplace_box_of_gaussian_blur=30 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=5 sobel_of_gaussian_blur=2 mean_box=20 variance_box=3 mean_box=30 variance_box=2 large_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=3 difference_of_gaussian=5 laplace_box_of_gaussian_blur=5 variance_box=1 maximum_box=1 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=1 sobel_of_median_box=3 mean_box=1 large_hessian_eigenvalue_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=2 top_hat_box=5 difference_of_gaussian=2 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=1 laplace_box_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=2 laplace_box_of_gaussian_blur=3 top_hat_box=1 laplace_box_of_gaussian_blur=2 top_hat_box=2
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 82
max_depth = 5
num_trees = 250
feature_importances = 0.07566528194762595,0.08661336106202683,0.07061909349478838,0.05220672378690869,0.07096491295300104,0.06479771273668729,0.04656073991626661,0.04822182578746768,0.03503703690850533,0.015046169647342806,0.04696595599999451,0.013515703926433241,0.024374990913890206,0.012216828533880772,0.01961590095793961,0.023925115597067777,0.015290302462758618,0.01749537852013314,0.019403401305663977,0.016838563036328247,0.014100754880202106,0.015822147095883265,0.009925621532906275,0.010991711742000051,0.011068076461447165,0.006314016970582031,0.011400892303479893,0.011353000497453063,0.007298959282861512,0.0068373028371053815,0.01695097564039827,0.005919128567889701,0.005460392694294236,0.0062580977296640495,0.007260832706851397,0.004413278665095907,0.0079193436767577,0.00707629047679978,0.003773025732300588,0.0023404845042096175,0.001271353566285518,0.0025522372239489125,0.0018687852065541325,0.0034423717538322155,0.004423266220573191,0.0030460776952462116,0.0021652230074197375,0.0015546173127149166,0.00191400962866632,0.0018619364545236765,0.0017495001393198295,0.002238176491504269,0.0013527604141322848,0.0017879197709452907,0.004791210273369744,0.002533811312249247,0.0014286458549654449,0.0012576066148165842,0.0012684240287296742,0.0007208540567441986,0.0004144428702020056,0.0009241320064674752,0.0005282848371140158,0.0011987616376704206,0.0007482807282408757,0.000383694353414737,0.00033912377444638385,0.0003003907395992982,0.002088283727299639,0.0002524298108920798,0.0004970907382057671,0.00010945254804309286,4.6060660981392195e-05,0.00012386037768062855,0.0002542454370263475,0.00015384093473555792,0.00014603206913709016,0.00011217961844918341,4.103535317819512e-05,0.00010276937718188177,0.00010209563124614996,4.5392249353682e-05
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
if(i0<-9.234906610799953e-05){
 if(i18<0.9475792646408081){
  if(i32<1.5806305408477783){
   if(i17<0.10493218898773193){
    if(i31<0.003126997733488679){
     s0+=544.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i23<-0.0009482502937316895){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   }
  } else {
   if(i16<0.005478306673467159){
    s0+=37.0;
   } else {
    if(i5<3.11732292175293e-05){
     s0+=9.0;
     s1+=62.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i51<-5.304701335262507e-05){
   s0+=93.0;
  } else {
   if(i31<0.003779670223593712){
    if(i46<0.9980990886688232){
     s0+=38.0;
    } else {
     s0+=185.0;
     s1+=15823.0;
    }
   } else {
    if(i66<0.2714420258998871){
     s0+=162.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i8<1.0092967748641968){
  if(i16<0.0016999136423692107){
   if(i1<0.001528322696685791){
    if(i13<0.9945409297943115){
     s0+=15681.0;
     s1+=500.0;
    } else {
     s0+=73386.0;
     s1+=411.0;
    }
   } else {
    if(i12<1.0114368200302124){
     s1+=76.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  } else {
   if(i4<0.9978876113891602){
    if(i44<0.22439026832580566){
     s0+=16848.0;
     s1+=388.0;
    } else {
     s0+=4.0;
     s1+=44.0;
    }
   } else {
    if(i37<1.0440731048583984){
     s0+=1790.0;
     s1+=52.0;
    } else {
     s0+=3584.0;
     s1+=3855.0;
    }
   }
  }
 } else {
  if(i22<0.0010196431539952755){
   if(i29<3.68654727935791e-05){
    s0+=164.0;
   } else {
    if(i29<0.0006070435047149658){
     s1+=2063.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i22<0.002560872118920088){
    if(i26<1.1979892253875732){
     s0+=2805.0;
    } else {
     s0+=365.0;
     s1+=98.0;
    }
   } else {
    if(i22<0.003799677360802889){
     s0+=26.0;
     s1+=781.0;
    } else {
     s0+=574.0;
     s1+=295.0;
    }
   }
  }
 }
}
if(i5<2.294778823852539e-05){
 if(i7<0.0037794988602399826){
  if(i58<0.00016587846039328724){
   if(i26<1.0776758193969727){
    if(i28<0.0002036782680079341){
     s0+=10074.0;
    } else {
     s0+=2347.0;
     s1+=257.0;
    }
   } else {
    if(i67<0.13795676827430725){
     s0+=59430.0;
     s1+=95.0;
    } else {
     s0+=75.0;
     s1+=11.0;
    }
   }
  } else {
   if(i36<0.00025645073037594557){
    if(i19<0.9956828355789185){
     s0+=139.0;
     s1+=10.0;
    } else {
     s0+=44.0;
     s1+=320.0;
    }
   } else {
    if(i6<4.026293754577637e-05){
     s0+=14511.0;
     s1+=191.0;
    } else {
     s0+=1611.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i12<1.0032410621643066){
   if(i1<-0.00038802623748779297){
    if(i44<0.19376835227012634){
     s0+=20395.0;
     s1+=674.0;
    } else {
     s0+=54.0;
     s1+=238.0;
    }
   } else {
    if(i35<0.012301375158131123){
     s0+=538.0;
     s1+=65.0;
    } else {
     s0+=387.0;
     s1+=1815.0;
    }
   }
  } else {
   if(i54<0.999896764755249){
    if(i59<-0.003755809273570776){
     s1+=77.0;
    } else {
     s0+=439.0;
     s1+=27.0;
    }
   } else {
    if(i43<-1.0666560228855815e-05){
     s0+=70.0;
     s1+=1368.0;
    } else {
     s0+=112.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012420415878295898){
  if(i39<-0.0002516109962016344){
   if(i52<0.0292682945728302){
    if(i20<0.00022912025451660156){
     s0+=419.0;
     s1+=214.0;
    } else {
     s0+=202.0;
     s1+=547.0;
    }
   } else {
    if(i73<-0.014885425567626953){
     s0+=93.0;
     s1+=70.0;
    } else {
     s0+=103.0;
     s1+=2055.0;
    }
   }
  } else {
   if(i40<2.4750483134994283e-05){
    if(i23<0.00015169382095336914){
     s0+=2884.0;
     s1+=109.0;
    } else {
     s0+=392.0;
     s1+=191.0;
    }
   } else {
    if(i38<1.1073942184448242){
     s0+=712.0;
     s1+=175.0;
    } else {
     s0+=464.0;
     s1+=518.0;
    }
   }
  }
 } else {
  if(i24<0.007322993129491806){
   if(i50<1.2576580047607422e-05){
    if(i4<1.005440354347229){
     s0+=32.0;
     s1+=4.0;
    } else {
     s0+=82.0;
     s1+=1466.0;
    }
   } else {
    if(i34<1.1672043800354004){
     s0+=792.0;
     s1+=20.0;
    } else {
     s1+=145.0;
    }
   }
  } else {
   if(i3<1.0021027326583862){
    if(i6<0.0011362135410308838){
     s1+=49.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i8<0.9392907619476318){
     s0+=31.0;
     s1+=88.0;
    } else {
     s0+=114.0;
     s1+=13188.0;
    }
   }
  }
 }
}
if(i5<2.092123031616211e-05){
 if(i17<0.2063673734664917){
  if(i8<1.0092694759368896){
   if(i7<0.0031130434945225716){
    if(i16<0.0009009758941829205){
     s0+=62255.0;
     s1+=133.0;
    } else {
     s0+=18202.0;
     s1+=562.0;
    }
   } else {
    if(i1<-0.0003903806209564209){
     s0+=24730.0;
     s1+=757.0;
    } else {
     s0+=2436.0;
     s1+=2226.0;
    }
   }
  } else {
   if(i24<0.023458927869796753){
    if(i26<1.099359154701233){
     s1+=219.0;
    } else {
     s0+=1457.0;
     s1+=96.0;
    }
   } else {
    if(i7<0.005218770354986191){
     s0+=91.0;
    } else {
     s0+=2.0;
     s1+=342.0;
    }
   }
  }
 } else {
  if(i0<-4.320860534789972e-05){
   if(i42<0.001445128582417965){
    s0+=2.0;
   } else {
    if(i35<0.028814878314733505){
     s0+=2.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=588.0;
    }
   }
  } else {
   if(i54<1.003385066986084){
    if(i15<0.20686215162277222){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=222.0;
     s1+=1.0;
    }
   } else {
    if(i40<7.418330642394722e-05){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012583136558532715){
  if(i17<0.16273441910743713){
   if(i39<-0.00021781801478937268){
    if(i32<1.0967509746551514){
     s1+=640.0;
    } else {
     s0+=1028.0;
     s1+=1022.0;
    }
   } else {
    if(i16<0.002060363534837961){
     s0+=2954.0;
     s1+=14.0;
    } else {
     s0+=1672.0;
     s1+=739.0;
    }
   }
  } else {
   if(i28<0.002452127169817686){
    if(i66<0.1604514718055725){
     s0+=175.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.0067454250529408455){
     s0+=53.0;
     s1+=94.0;
    } else {
     s0+=18.0;
     s1+=1829.0;
    }
   }
  }
 } else {
  if(i32<1.1531562805175781){
   if(i34<1.1174830198287964){
    if(i51<-1.528835309727583e-05){
     s0+=49.0;
    } else {
     s1+=1899.0;
    }
   } else {
    if(i33<0.0023780670017004013){
     s0+=938.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i30<1.0236399173736572){
    if(i54<1.0138914585113525){
     s0+=13.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i12<0.9795262217521667){
     s0+=18.0;
     s1+=90.0;
    } else {
     s0+=15.0;
     s1+=13195.0;
    }
   }
  }
 }
}
if(i3<1.0025758743286133){
 if(i44<0.2063690721988678){
  if(i7<0.0037115742452442646){
   if(i16<0.0010506694670766592){
    if(i36<0.0018044563475996256){
     s0+=65161.0;
     s1+=109.0;
    } else {
     s0+=2864.0;
     s1+=104.0;
    }
   } else {
    if(i41<1.0153539180755615){
     s0+=1372.0;
     s1+=355.0;
    } else {
     s0+=18148.0;
     s1+=480.0;
    }
   }
  } else {
   if(i6<-6.490945816040039e-05){
    if(i62<0.025437653064727783){
     s0+=18926.0;
     s1+=306.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i34<1.1174830198287964){
     s0+=470.0;
     s1+=2687.0;
    } else {
     s0+=3075.0;
     s1+=811.0;
    }
   }
  }
 } else {
  if(i0<-3.313650086056441e-05){
   if(i42<0.0014327383833006024){
    s0+=4.0;
   } else {
    if(i51<-2.3867571599112125e-06){
     s0+=1.0;
     s1+=619.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i62<0.001189816277474165){
    if(i46<1.0006096363067627){
     s0+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i29<9.02414321899414e-05){
     s0+=102.0;
    } else {
     s0+=33.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012296438217163086){
  if(i39<-0.0002313270524609834){
   if(i44<0.12227341532707214){
    if(i45<1.0023839473724365){
     s0+=73.0;
     s1+=435.0;
    } else {
     s0+=876.0;
     s1+=575.0;
    }
   } else {
    if(i6<0.0002541542053222656){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=159.0;
     s1+=1898.0;
    }
   }
  } else {
   if(i45<1.0025181770324707){
    if(i7<0.0034854458644986153){
     s0+=617.0;
     s1+=1.0;
    } else {
     s0+=210.0;
     s1+=564.0;
    }
   } else {
    if(i33<0.0018365534488111734){
     s0+=2152.0;
    } else {
     s0+=1058.0;
     s1+=374.0;
    }
   }
  }
 } else {
  if(i29<0.0016276836395263672){
   if(i7<0.0022010549437254667){
    if(i36<0.0008657212601974607){
     s1+=172.0;
    } else {
     s0+=287.0;
     s1+=74.0;
    }
   } else {
    if(i14<0.0007150453748181462){
     s0+=117.0;
     s1+=14830.0;
    } else {
     s0+=128.0;
    }
   }
  } else {
   if(i5<0.00012791156768798828){
    s0+=480.0;
   } else {
    s1+=75.0;
   }
  }
 }
}
if(i9<1.0167311429977417){
 if(i70<0.0036821619141846895){
  if(i4<1.0038676261901855){
   if(i29<9.196996688842773e-05){
    if(i33<0.0003276747593190521){
     s0+=16051.0;
     s1+=719.0;
    } else {
     s0+=61487.0;
     s1+=223.0;
    }
   } else {
    if(i34<1.0955734252929688){
     s0+=4446.0;
     s1+=1579.0;
    } else {
     s0+=24914.0;
     s1+=1307.0;
    }
   }
  } else {
   if(i24<0.01470223255455494){
    if(i28<0.0012058042921125889){
     s0+=609.0;
     s1+=1170.0;
    } else {
     s0+=2849.0;
     s1+=224.0;
    }
   } else {
    if(i7<0.004363470245152712){
     s0+=10.0;
     s1+=21.0;
    } else {
     s0+=18.0;
     s1+=973.0;
    }
   }
  }
 } else {
  if(i3<1.002392292022705){
   if(i17<0.1375843584537506){
    if(i6<9.822845458984375e-05){
     s0+=2957.0;
     s1+=137.0;
    } else {
     s0+=653.0;
     s1+=218.0;
    }
   } else {
    if(i51<-4.4478679228632245e-06){
     s0+=23.0;
     s1+=270.0;
    } else {
     s0+=55.0;
     s1+=7.0;
    }
   }
  } else {
   if(i19<0.9944810271263123){
    if(i59<-0.0005848919972777367){
     s0+=59.0;
     s1+=244.0;
    } else {
     s0+=345.0;
     s1+=73.0;
    }
   } else {
    if(i30<1.0731130838394165){
     s0+=156.0;
     s1+=245.0;
    } else {
     s0+=129.0;
     s1+=2272.0;
    }
   }
  }
 }
} else {
 if(i16<0.0013814725680276752){
  if(i6<0.0014456510543823242){
   if(i22<0.0018528220243752003){
    s0+=717.0;
   } else {
    if(i26<1.2390973567962646){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=155.0;
    }
   }
  } else {
   if(i48<-1.5089557564351708e-05){
    if(i65<2.525108357076533e-06){
     s0+=1.0;
     s1+=426.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=76.0;
   }
  }
 } else {
  if(i0<-8.836502820486203e-05){
   if(i69<5.4293113862513565e-06){
    if(i49<-7.209874183899956e-06){
     s0+=29.0;
    } else {
     s0+=11.0;
     s1+=12090.0;
    }
   } else {
    s0+=28.0;
   }
  } else {
   if(i22<0.005161636974662542){
    if(i54<0.999467134475708){
     s0+=91.0;
    } else {
     s0+=331.0;
     s1+=1896.0;
    }
   } else {
    if(i44<0.20903512835502625){
     s0+=390.0;
     s1+=58.0;
    } else {
     s0+=12.0;
     s1+=71.0;
    }
   }
  }
 }
}
if(i27<0.19798699021339417){
 if(i5<1.8298625946044922e-05){
  if(i29<8.338689804077148e-05){
   if(i29<-1.4901161193847656e-06){
    if(i80<-0.11304336786270142){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=61235.0;
     s1+=390.0;
    }
   } else {
    if(i42<0.0006290526362136006){
     s0+=5285.0;
     s1+=437.0;
    } else {
     s0+=11501.0;
     s1+=108.0;
    }
   }
  } else {
   if(i33<0.0010453879367560148){
    if(i24<0.007362558506429195){
     s0+=3788.0;
     s1+=256.0;
    } else {
     s0+=413.0;
     s1+=1538.0;
    }
   } else {
    if(i22<0.0009310995228588581){
     s1+=250.0;
    } else {
     s0+=25273.0;
     s1+=889.0;
    }
   }
  }
 } else {
  if(i38<1.0440804958343506){
   if(i12<1.0077073574066162){
    if(i18<1.0100284814834595){
     s0+=2007.0;
     s1+=30.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i34<1.2257273197174072){
     s1+=25.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i23<0.0003007054328918457){
    if(i7<0.004137266427278519){
     s0+=4192.0;
     s1+=616.0;
    } else {
     s0+=1850.0;
     s1+=4293.0;
    }
   } else {
    if(i20<0.0016803145408630371){
     s0+=101.0;
    } else {
     s0+=30.0;
     s1+=2690.0;
    }
   }
  }
 }
} else {
 if(i15<0.1979827582836151){
  if(i3<1.007266879081726){
   if(i23<0.0003362894058227539){
    if(i30<1.12096107006073){
     s0+=281.0;
    } else {
     s0+=50.0;
     s1+=5.0;
    }
   } else {
    if(i64<0.00035874382592737675){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   s1+=1.0;
  }
 } else {
  if(i0<-3.427284536883235e-05){
   if(i51<-2.1665534859494073e-06){
    if(i28<0.0018960768356919289){
     s0+=37.0;
    } else {
     s0+=30.0;
     s1+=12433.0;
    }
   } else {
    s0+=24.0;
   }
  } else {
   if(i54<1.002640724182129){
    if(i27<0.19834494590759277){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=484.0;
     s1+=7.0;
    }
   } else {
    if(i55<0.002327393041923642){
     s0+=64.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=164.0;
    }
   }
  }
 }
}
if(i10<1.0135973691940308){
 if(i5<1.901388168334961e-05){
  if(i29<7.575750350952148e-05){
   if(i16<0.00597171438857913){
    if(i52<0.24491554498672485){
     s0+=76573.0;
     s1+=836.0;
    } else {
     s0+=16.0;
     s1+=18.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=64.0;
    } else {
     s1+=115.0;
    }
   }
  } else {
   if(i34<1.0955734252929688){
    if(i15<0.053062647581100464){
     s0+=3527.0;
     s1+=621.0;
    } else {
     s0+=367.0;
     s1+=1067.0;
    }
   } else {
    if(i24<0.05663605406880379){
     s0+=27413.0;
     s1+=1227.0;
    } else {
     s0+=61.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i24<0.014161933213472366){
   if(i29<0.00046375393867492676){
    if(i8<1.006108283996582){
     s0+=1074.0;
     s1+=216.0;
    } else {
     s0+=262.0;
     s1+=999.0;
    }
   } else {
    if(i4<1.0103464126586914){
     s0+=4541.0;
     s1+=161.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i23<-0.0005290508270263672){
    if(i15<0.07162019610404968){
     s0+=597.0;
     s1+=112.0;
    } else {
     s0+=145.0;
     s1+=289.0;
    }
   } else {
    if(i20<-0.0013494491577148438){
     s0+=399.0;
     s1+=1147.0;
    } else {
     s0+=57.0;
     s1+=2620.0;
    }
   }
  }
 }
} else {
 if(i10<1.0193507671356201){
  if(i63<1.0455694198608398){
   if(i28<0.0013282345607876778){
    if(i26<1.1294310092926025){
     s1+=729.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i60<-0.0001761317253112793){
     s0+=7.0;
     s1+=104.0;
    } else {
     s0+=107.0;
     s1+=54.0;
    }
   }
  } else {
   if(i24<0.017670992761850357){
    if(i2<0.0001494884490966797){
     s0+=717.0;
     s1+=135.0;
    } else {
     s0+=11.0;
     s1+=177.0;
    }
   } else {
    if(i15<0.09625336527824402){
     s0+=74.0;
     s1+=12.0;
    } else {
     s0+=58.0;
     s1+=588.0;
    }
   }
  }
 } else {
  if(i7<0.003967431373894215){
   if(i12<1.0181251764297485){
    if(i34<1.0986645221710205){
     s1+=30.0;
    } else {
     s0+=275.0;
     s1+=22.0;
    }
   } else {
    s1+=254.0;
   }
  } else {
   if(i65<1.7705686332192272e-05){
    if(i10<1.0240025520324707){
     s0+=38.0;
     s1+=1000.0;
    } else {
     s0+=7.0;
     s1+=11634.0;
    }
   } else {
    s0+=10.0;
   }
  }
 }
}
if(i0<-9.4027811428532e-05){
 if(i12<0.9737190008163452){
  if(i59<-0.0009558986639603972){
   if(i60<-0.012964487075805664){
    if(i66<0.29646509885787964){
     s0+=37.0;
     s1+=2.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i24<0.03204157203435898){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=87.0;
    }
   }
  } else {
   if(i27<0.10056006908416748){
    if(i74<0.05141763016581535){
     s0+=627.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=37.0;
    }
   } else {
    if(i46<1.001979947090149){
     s1+=42.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i50<2.962350845336914e-05){
   if(i46<0.998097836971283){
    s0+=142.0;
   } else {
    if(i27<0.01815354824066162){
     s0+=76.0;
     s1+=75.0;
    } else {
     s0+=74.0;
     s1+=15557.0;
    }
   }
  } else {
   if(i17<0.2656024694442749){
    if(i65<-2.1336309146136045e-05){
     s1+=1.0;
    } else {
     s0+=85.0;
    }
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i5<1.245737075805664e-05){
  if(i26<1.1162974834442139){
   if(i37<1.0434579849243164){
    if(i26<1.064497947692871){
     s0+=12061.0;
     s1+=14.0;
    } else {
     s0+=5121.0;
     s1+=309.0;
    }
   } else {
    if(i58<0.00017899044905789196){
     s0+=8164.0;
     s1+=835.0;
    } else {
     s0+=1848.0;
     s1+=1088.0;
    }
   }
  } else {
   if(i25<1.0238208770751953){
    if(i45<1.0036566257476807){
     s0+=76654.0;
     s1+=554.0;
    } else {
     s0+=54.0;
     s1+=48.0;
    }
   } else {
    if(i43<-8.25106144475285e-06){
     s0+=159.0;
     s1+=157.0;
    } else {
     s0+=462.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i8<1.015453577041626){
   if(i21<1.0108188390731812){
    if(i24<0.007359545677900314){
     s0+=7576.0;
     s1+=758.0;
    } else {
     s0+=2757.0;
     s1+=2487.0;
    }
   } else {
    if(i49<-4.836766493099276e-06){
     s0+=27.0;
     s1+=11.0;
    } else {
     s0+=49.0;
     s1+=600.0;
    }
   }
  } else {
   if(i37<1.0965585708618164){
    s1+=751.0;
   } else {
    if(i36<0.002045195084065199){
     s0+=338.0;
     s1+=25.0;
    } else {
     s0+=129.0;
     s1+=897.0;
    }
   }
  }
 }
}
if(i20<0.0014266371726989746){
 if(i47<1.029104471206665){
  if(i24<0.06437898427248001){
   if(i3<1.0022246837615967){
    if(i37<1.0902695655822754){
     s0+=38339.0;
     s1+=3019.0;
    } else {
     s0+=68907.0;
     s1+=712.0;
    }
   } else {
    if(i7<0.00409046933054924){
     s0+=5335.0;
     s1+=230.0;
    } else {
     s0+=1719.0;
     s1+=2683.0;
    }
   }
  } else {
   if(i57<0.0016084143426269293){
    if(i1<0.0003814101219177246){
     s0+=256.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   } else {
    if(i1<-0.0028927624225616455){
     s0+=41.0;
    } else {
     s0+=55.0;
     s1+=1409.0;
    }
   }
  }
 } else {
  if(i52<0.033425264060497284){
   if(i39<-0.00030168198281899095){
    if(i7<0.005580115132033825){
     s0+=257.0;
     s1+=51.0;
    } else {
     s0+=27.0;
     s1+=353.0;
    }
   } else {
    if(i20<0.0013176202774047852){
     s0+=578.0;
     s1+=29.0;
    } else {
     s0+=17.0;
     s1+=15.0;
    }
   }
  } else {
   if(i24<0.02765170857310295){
    if(i51<-2.86191561826854e-06){
     s0+=73.0;
     s1+=201.0;
    } else {
     s0+=124.0;
    }
   } else {
    if(i43<-7.671093953831587e-06){
     s0+=64.0;
     s1+=2486.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
} else {
 if(i12<1.0134613513946533){
  if(i22<0.0010797297582030296){
   s1+=677.0;
  } else {
   if(i24<0.013869675807654858){
    if(i48<-1.5511111996602267e-05){
     s0+=3.0;
     s1+=42.0;
    } else {
     s0+=770.0;
     s1+=4.0;
    }
   } else {
    if(i32<1.1350277662277222){
     s0+=5.0;
    } else {
     s1+=330.0;
    }
   }
  }
 } else {
  if(i49<-7.922226359369233e-06){
   s0+=42.0;
  } else {
   if(i42<0.0014770075213164091){
    if(i24<0.005320334807038307){
     s0+=50.0;
     s1+=328.0;
    } else {
     s0+=6.0;
     s1+=1611.0;
    }
   } else {
    s1+=9942.0;
   }
  }
 }
}
if(i0<-9.780903201317415e-05){
 if(i30<1.038961410522461){
  if(i11<0.9696097373962402){
   if(i79<0.07900157570838928){
    if(i61<-0.004221975803375244){
     s0+=441.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i35<0.07714590430259705){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i19<1.0090618133544922){
    s0+=1.0;
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i69<5.794467142550275e-06){
   if(i25<0.8883582353591919){
    if(i34<1.504706621170044){
     s0+=196.0;
     s1+=104.0;
    } else {
     s0+=12.0;
     s1+=86.0;
    }
   } else {
    if(i6<-0.0008913874626159668){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=190.0;
     s1+=15024.0;
    }
   }
  } else {
   s0+=135.0;
  }
 }
} else {
 if(i12<1.0075583457946777){
  if(i27<0.23481085896492004){
   if(i45<1.0002851486206055){
    if(i61<-0.00038868188858032227){
     s0+=13549.0;
     s1+=712.0;
    } else {
     s0+=51659.0;
     s1+=207.0;
    }
   } else {
    if(i22<0.0009178163600154221){
     s0+=7371.0;
     s1+=2394.0;
    } else {
     s0+=39834.0;
     s1+=1841.0;
    }
   }
  } else {
   if(i22<0.002576771890744567){
    if(i0<-3.870091313729063e-05){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=76.0;
    }
   } else {
    if(i15<0.23449113965034485){
     s0+=14.0;
    } else {
     s0+=28.0;
     s1+=427.0;
    }
   }
  }
 } else {
  if(i29<0.0007613897323608398){
   if(i45<1.00053071975708){
    if(i40<2.417182804492768e-05){
     s0+=342.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<0.001163162407465279){
     s0+=3.0;
     s1+=1913.0;
    } else {
     s0+=494.0;
     s1+=1323.0;
    }
   }
  } else {
   if(i3<1.0081214904785156){
    if(i60<-0.0017299056053161621){
     s1+=24.0;
    } else {
     s0+=2322.0;
     s1+=21.0;
    }
   } else {
    if(i1<0.0014442801475524902){
     s0+=3.0;
    } else {
     s1+=54.0;
    }
   }
  }
 }
}
if(i3<1.0026319026947021){
 if(i8<1.0113377571105957){
  if(i16<0.0017227325588464737){
   if(i32<1.0776758193969727){
    if(i32<1.05497145652771){
     s0+=20167.0;
     s1+=112.0;
    } else {
     s0+=2305.0;
     s1+=647.0;
    }
   } else {
    if(i56<1.001373529434204){
     s0+=54036.0;
     s1+=55.0;
    } else {
     s0+=12462.0;
     s1+=168.0;
    }
   }
  } else {
   if(i12<0.9920417070388794){
    if(i4<0.9974015951156616){
     s0+=12962.0;
     s1+=438.0;
    } else {
     s0+=933.0;
     s1+=433.0;
    }
   } else {
    if(i22<0.0009228305425494909){
     s0+=2106.0;
     s1+=2145.0;
    } else {
     s0+=4759.0;
     s1+=398.0;
    }
   }
  }
 } else {
  if(i16<0.0015535042621195316){
   if(i23<8.994340896606445e-05){
    if(i2<1.1444091796875e-05){
     s0+=214.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    s0+=360.0;
   }
  } else {
   if(i31<0.0028975980821996927){
    if(i35<0.02172059193253517){
     s0+=146.0;
     s1+=310.0;
    } else {
     s0+=23.0;
     s1+=817.0;
    }
   } else {
    if(i57<0.005601349752396345){
     s0+=82.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012359023094177246){
  if(i35<0.03107001632452011){
   if(i29<0.00042945146560668945){
    if(i4<1.0037624835968018){
     s0+=117.0;
     s1+=32.0;
    } else {
     s0+=20.0;
     s1+=488.0;
    }
   } else {
    if(i39<-0.0009019392309710383){
     s0+=51.0;
     s1+=83.0;
    } else {
     s0+=3606.0;
     s1+=78.0;
    }
   }
  } else {
   if(i63<1.0670970678329468){
    if(i44<0.05217680335044861){
     s0+=682.0;
     s1+=281.0;
    } else {
     s0+=264.0;
     s1+=731.0;
    }
   } else {
    if(i17<0.13403189182281494){
     s0+=193.0;
     s1+=199.0;
    } else {
     s0+=94.0;
     s1+=1735.0;
    }
   }
  }
 } else {
  if(i29<0.0016252398490905762){
   if(i36<0.0018327664583921432){
    if(i14<0.0002579393913038075){
     s0+=8.0;
     s1+=1884.0;
    } else {
     s0+=431.0;
    }
   } else {
    if(i58<0.003134381026029587){
     s0+=52.0;
     s1+=13059.0;
    } else {
     s0+=30.0;
     s1+=101.0;
    }
   }
  } else {
   if(i41<1.1515898704528809){
    s0+=480.0;
   } else {
    s1+=65.0;
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i16<0.001668105716817081){
  if(i43<-1.8781880498863757e-05){
   if(i38<1.1015276908874512){
    s0+=15.0;
   } else {
    s1+=34.0;
   }
  } else {
   if(i31<0.0005504899891093373){
    if(i28<0.0019041115883737803){
     s0+=65616.0;
     s1+=79.0;
    } else {
     s0+=3792.0;
     s1+=101.0;
    }
   } else {
    if(i11<0.9958429932594299){
     s0+=3854.0;
     s1+=428.0;
    } else {
     s0+=14758.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i5<-1.1324882507324219e-06){
   if(i68<1.0427436828613281){
    if(i17<0.23113250732421875){
     s0+=15797.0;
     s1+=464.0;
    } else {
     s0+=4.0;
     s1+=79.0;
    }
   } else {
    if(i45<1.0012750625610352){
     s0+=7.0;
     s1+=160.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  } else {
   if(i26<1.116804838180542){
    if(i34<1.0533521175384521){
     s0+=1145.0;
    } else {
     s0+=80.0;
     s1+=2403.0;
    }
   } else {
    if(i24<0.05071480572223663){
     s0+=4403.0;
     s1+=911.0;
    } else {
     s0+=38.0;
     s1+=487.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007043009391054511){
  if(i7<0.0025607056450098753){
   if(i1<0.0016383528709411621){
    if(i64<-0.0008325483649969101){
     s0+=12.0;
     s1+=21.0;
    } else {
     s0+=1451.0;
     s1+=7.0;
    }
   } else {
    s1+=393.0;
   }
  } else {
   if(i1<0.00013768672943115234){
    if(i55<0.01029140129685402){
     s0+=1118.0;
     s1+=265.0;
    } else {
     s0+=45.0;
     s1+=248.0;
    }
   } else {
    if(i18<0.9584077596664429){
     s0+=170.0;
     s1+=237.0;
    } else {
     s0+=568.0;
     s1+=17944.0;
    }
   }
  }
 } else {
  s0+=3427.0;
 }
}
if(i8<1.0143204927444458){
 if(i6<0.0005360245704650879){
  if(i17<0.2315966784954071){
   if(i58<0.00021640482009388506){
    if(i22<0.0008836754132062197){
     s0+=25450.0;
     s1+=1759.0;
    } else {
     s0+=60600.0;
     s1+=217.0;
    }
   } else {
    if(i2<-3.88026237487793e-05){
     s0+=19869.0;
     s1+=541.0;
    } else {
     s0+=2892.0;
     s1+=1533.0;
    }
   }
  } else {
   if(i43<-8.66940536070615e-06){
    if(i32<1.2029259204864502){
     s0+=3.0;
     s1+=22.0;
    } else {
     s1+=284.0;
    }
   } else {
    s0+=67.0;
   }
  }
 } else {
  if(i7<0.004011901095509529){
   if(i14<0.00020606092584785074){
    if(i23<0.00014954805374145508){
     s0+=285.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=446.0;
    }
   } else {
    if(i59<-0.0010271179489791393){
     s0+=87.0;
     s1+=10.0;
    } else {
     s0+=4149.0;
    }
   }
  } else {
   if(i17<0.12415587902069092){
    if(i20<-0.0013411641120910645){
     s0+=1310.0;
     s1+=622.0;
    } else {
     s0+=296.0;
     s1+=1833.0;
    }
   } else {
    if(i14<0.0007696507964283228){
     s0+=161.0;
     s1+=2947.0;
    } else {
     s0+=62.0;
    }
   }
  }
 }
} else {
 if(i51<-2.9165703381295316e-06){
  if(i26<1.1843671798706055){
   if(i14<0.0003058770962525159){
    if(i32<1.122192621231079){
     s0+=1.0;
     s1+=1716.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=655.0;
   }
  } else {
   if(i27<0.10595232248306274){
    if(i7<0.0041259219869971275){
     s0+=159.0;
     s1+=16.0;
    } else {
     s1+=156.0;
    }
   } else {
    if(i17<0.1645873486995697){
     s0+=107.0;
     s1+=1044.0;
    } else {
     s0+=31.0;
     s1+=11240.0;
    }
   }
  }
 } else {
  s0+=261.0;
 }
}
if(i2<6.407499313354492e-05){
 if(i7<0.007089827209711075){
  if(i18<1.0068217515945435){
   if(i22<0.0008548506302759051){
    if(i34<1.0577976703643799){
     s0+=18926.0;
     s1+=6.0;
    } else {
     s0+=12404.0;
     s1+=2316.0;
    }
   } else {
    if(i5<1.436471939086914e-05){
     s0+=68329.0;
     s1+=353.0;
    } else {
     s0+=3020.0;
     s1+=238.0;
    }
   }
  } else {
   if(i33<0.0009401518618687987){
    if(i31<0.0011024080449715257){
     s0+=19.0;
     s1+=664.0;
    } else {
     s0+=280.0;
    }
   } else {
    if(i35<0.03316524624824524){
     s0+=4964.0;
     s1+=97.0;
    } else {
     s0+=351.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i15<0.08073359727859497){
   if(i19<0.9951842427253723){
    if(i76<-0.1386379897594452){
     s0+=80.0;
     s1+=93.0;
    } else {
     s0+=4475.0;
     s1+=105.0;
    }
   } else {
    if(i24<0.015485789626836777){
     s0+=289.0;
     s1+=19.0;
    } else {
     s0+=212.0;
     s1+=362.0;
    }
   }
  } else {
   if(i30<1.113352656364441){
    if(i5<2.682209014892578e-07){
     s0+=713.0;
     s1+=70.0;
    } else {
     s0+=332.0;
     s1+=1055.0;
    }
   } else {
    if(i34<1.1529979705810547){
     s0+=17.0;
    } else {
     s0+=43.0;
     s1+=2330.0;
    }
   }
  }
 }
} else {
 if(i39<-0.0002815466723404825){
  if(i3<1.0015490055084229){
   if(i38<1.1869213581085205){
    s0+=123.0;
   } else {
    s1+=130.0;
   }
  } else {
   if(i1<0.0008424520492553711){
    s0+=22.0;
   } else {
    if(i31<0.004032772034406662){
     s0+=99.0;
     s1+=12863.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i21<1.010737419128418){
   if(i22<0.0009700385853648186){
    if(i50<1.1801719665527344e-05){
     s0+=3.0;
     s1+=888.0;
    } else {
     s0+=71.0;
     s1+=29.0;
    }
   } else {
    if(i24<0.014018183574080467){
     s0+=1643.0;
     s1+=15.0;
    } else {
     s0+=61.0;
     s1+=262.0;
    }
   }
  } else {
   if(i49<-5.797860012535239e-06){
    if(i38<1.1452820301055908){
     s0+=51.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i1<0.0017047524452209473){
     s0+=45.0;
     s1+=107.0;
    } else {
     s0+=6.0;
     s1+=2055.0;
    }
   }
  }
 }
}
if(i30<1.1279573440551758){
 if(i1<0.001077115535736084){
  if(i25<1.0212104320526123){
   if(i16<0.0017282022163271904){
    if(i8<0.9959068298339844){
     s0+=16713.0;
     s1+=511.0;
    } else {
     s0+=72740.0;
     s1+=353.0;
    }
   } else {
    if(i22<0.0009293884504586458){
     s0+=2350.0;
     s1+=2688.0;
    } else {
     s0+=19804.0;
     s1+=1335.0;
    }
   }
  } else {
   if(i1<0.00023481249809265137){
    if(i51<-1.7987249520956539e-06){
     s0+=340.0;
     s1+=134.0;
    } else {
     s0+=257.0;
    }
   } else {
    if(i3<1.0047067403793335){
     s0+=111.0;
     s1+=621.0;
    } else {
     s0+=105.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i20<0.001996934413909912){
   if(i46<0.999795138835907){
    if(i11<0.959195077419281){
     s1+=1.0;
    } else {
     s0+=557.0;
    }
   } else {
    if(i57<0.0006468032952398062){
     s0+=18.0;
     s1+=1108.0;
    } else {
     s0+=900.0;
     s1+=908.0;
    }
   }
  } else {
   if(i46<0.997456431388855){
    s0+=46.0;
   } else {
    s1+=2949.0;
   }
  }
 }
} else {
 if(i6<0.0003427863121032715){
  if(i17<0.19841250777244568){
   if(i28<0.005009791813790798){
    if(i56<1.0012710094451904){
     s0+=1257.0;
     s1+=9.0;
    } else {
     s0+=337.0;
     s1+=109.0;
    }
   } else {
    if(i66<0.16795694828033447){
     s0+=139.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=110.0;
    }
   }
  } else {
   if(i22<0.0025720875710248947){
    if(i56<1.0018224716186523){
     s0+=104.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.024816663935780525){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=345.0;
    }
   }
  }
 } else {
  if(i26<1.1834590435028076){
   s0+=524.0;
  } else {
   if(i1<-0.0004743337631225586){
    if(i35<0.12364169210195541){
     s0+=127.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=91.0;
    }
   } else {
    if(i18<0.9570379257202148){
     s0+=57.0;
     s1+=165.0;
    } else {
     s0+=81.0;
     s1+=12736.0;
    }
   }
  }
 }
}
if(i8<1.015263319015503){
 if(i6<0.0005391240119934082){
  if(i16<0.0016999326180666685){
   if(i32<1.0776758193969727){
    if(i31<0.0006275367923080921){
     s0+=20715.0;
     s1+=135.0;
    } else {
     s0+=1692.0;
     s1+=538.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=64313.0;
     s1+=104.0;
    } else {
     s0+=1969.0;
     s1+=131.0;
    }
   }
  } else {
   if(i1<-0.0005293786525726318){
    if(i24<0.06586986035108566){
     s0+=17406.0;
     s1+=567.0;
    } else {
     s0+=144.0;
     s1+=156.0;
    }
   } else {
    if(i46<0.9995830059051514){
     s0+=2002.0;
     s1+=60.0;
    } else {
     s0+=945.0;
     s1+=2576.0;
    }
   }
  }
 } else {
  if(i24<0.013978991657495499){
   if(i23<0.00017529726028442383){
    if(i24<0.007429849356412888){
     s0+=3855.0;
     s1+=167.0;
    } else {
     s0+=789.0;
     s1+=356.0;
    }
   } else {
    if(i63<1.0427131652832031){
     s0+=81.0;
     s1+=808.0;
    } else {
     s0+=756.0;
     s1+=211.0;
    }
   }
  } else {
   if(i17<0.0537601113319397){
    if(i4<1.001107096672058){
     s0+=514.0;
     s1+=45.0;
    } else {
     s0+=164.0;
     s1+=377.0;
    }
   } else {
    if(i0<-7.755257684038952e-05){
     s0+=73.0;
     s1+=2969.0;
    } else {
     s0+=402.0;
     s1+=935.0;
    }
   }
  }
 }
} else {
 if(i1<0.0002518892288208008){
  if(i43<-1.0497658877284266e-05){
   if(i32<1.233483076095581){
    if(i43<-1.869554034783505e-05){
     s0+=130.0;
     s1+=7.0;
    } else {
     s0+=40.0;
     s1+=69.0;
    }
   } else {
    if(i51<-3.803206709562801e-06){
     s1+=174.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   s0+=268.0;
  }
 } else {
  if(i16<0.0012083259643986821){
   if(i1<0.002024233341217041){
    if(i66<0.11775721609592438){
     s0+=213.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    s1+=349.0;
   }
  } else {
   if(i33<0.0030414066277444363){
    if(i26<1.1180615425109863){
     s1+=1433.0;
    } else {
     s0+=257.0;
     s1+=277.0;
    }
   } else {
    if(i0<-8.814640023047104e-05){
     s1+=11081.0;
    } else {
     s0+=45.0;
     s1+=545.0;
    }
   }
  }
 }
}
if(i4<1.0037109851837158){
 if(i7<0.0071030426770448685){
  if(i26<1.1162974834442139){
   if(i34<1.0577976703643799){
    if(i73<-0.001227736473083496){
     s0+=1626.0;
     s1+=10.0;
    } else {
     s0+=16393.0;
    }
   } else {
    if(i58<0.00018457198166288435){
     s0+=9931.0;
     s1+=1549.0;
    } else {
     s0+=1519.0;
     s1+=1185.0;
    }
   }
  } else {
   if(i44<0.15670683979988098){
    if(i56<1.0015223026275635){
     s0+=55392.0;
     s1+=37.0;
    } else {
     s0+=18767.0;
     s1+=470.0;
    }
   } else {
    if(i40<3.359044421813451e-05){
     s0+=1381.0;
     s1+=10.0;
    } else {
     s0+=823.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i13<1.0094133615493774){
   if(i30<1.113352656364441){
    if(i15<0.06384807825088501){
     s0+=4628.0;
     s1+=149.0;
    } else {
     s0+=1239.0;
     s1+=575.0;
    }
   } else {
    if(i41<1.0617940425872803){
     s0+=151.0;
     s1+=81.0;
    } else {
     s0+=66.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i1<-0.0009148716926574707){
    if(i65<1.0649680916685611e-05){
     s0+=70.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i45<0.9969637989997864){
     s0+=37.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=1022.0;
    }
   }
  }
 }
} else {
 if(i8<1.0174498558044434){
  if(i35<0.022281181067228317){
   if(i14<0.0002356524346396327){
    if(i57<0.000645129824988544){
     s0+=41.0;
     s1+=1465.0;
    } else {
     s0+=181.0;
     s1+=148.0;
    }
   } else {
    if(i60<-0.0022238194942474365){
     s0+=6.0;
     s1+=35.0;
    } else {
     s0+=3852.0;
     s1+=17.0;
    }
   }
  } else {
   if(i38<1.1343250274658203){
    if(i14<0.0004161633551120758){
     s0+=97.0;
     s1+=712.0;
    } else {
     s0+=105.0;
     s1+=11.0;
    }
   } else {
    if(i30<1.023998737335205){
     s0+=11.0;
     s1+=7.0;
    } else {
     s0+=43.0;
     s1+=2512.0;
    }
   }
  }
 } else {
  if(i24<0.0061737000942230225){
   if(i29<0.0008259415626525879){
    if(i48<1.4523118807119317e-05){
     s0+=10.0;
     s1+=552.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i7<0.0038304482586681843){
     s0+=116.0;
     s1+=2.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i49<-7.758404535707086e-06){
    s0+=6.0;
   } else {
    if(i7<0.003099074587225914){
     s0+=25.0;
     s1+=187.0;
    } else {
     s1+=12155.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i13<1.0184383392333984){
  if(i7<0.003448149189352989){
   if(i41<1.0179111957550049){
    if(i16<0.0010302071459591389){
     s0+=8004.0;
     s1+=72.0;
    } else {
     s0+=2099.0;
     s1+=386.0;
    }
   } else {
    if(i7<0.002797340042889118){
     s0+=69250.0;
     s1+=264.0;
    } else {
     s0+=5738.0;
     s1+=193.0;
    }
   }
  } else {
   if(i4<0.9988416433334351){
    if(i15<0.2054118812084198){
     s0+=22661.0;
     s1+=664.0;
    } else {
     s0+=62.0;
     s1+=172.0;
    }
   } else {
    if(i28<0.0001958469074452296){
     s0+=500.0;
    } else {
     s0+=1258.0;
     s1+=2705.0;
    }
   }
  }
 } else {
  if(i17<0.2173110544681549){
   if(i5<7.927417755126953e-06){
    if(i16<0.002731733489781618){
     s0+=420.0;
     s1+=12.0;
    } else {
     s0+=29.0;
     s1+=37.0;
    }
   } else {
    if(i29<0.0004704594612121582){
     s0+=32.0;
     s1+=340.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i37<1.7041046619415283){
    if(i36<0.0024698572233319283){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=360.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
} else {
 if(i15<0.16328924894332886){
  if(i10<1.0164823532104492){
   if(i1<0.001437544822692871){
    if(i72<-0.004164606332778931){
     s0+=510.0;
     s1+=685.0;
    } else {
     s0+=4851.0;
     s1+=1259.0;
    }
   } else {
    if(i50<2.008676528930664e-05){
     s0+=184.0;
     s1+=1647.0;
    } else {
     s0+=432.0;
     s1+=79.0;
    }
   }
  } else {
   if(i81<0.05404123663902283){
    if(i4<1.0014318227767944){
     s0+=12.0;
    } else {
     s0+=154.0;
     s1+=1931.0;
    }
   } else {
    if(i12<1.0163497924804688){
     s0+=147.0;
     s1+=23.0;
    } else {
     s1+=66.0;
    }
   }
  }
 } else {
  if(i22<0.002291782759130001){
   if(i55<0.000767063582316041){
    s1+=30.0;
   } else {
    if(i22<0.0008816855261102319){
     s1+=1.0;
    } else {
     s0+=253.0;
    }
   }
  } else {
   if(i0<-4.5094071538187563e-05){
    if(i7<0.005397612228989601){
     s0+=8.0;
     s1+=391.0;
    } else {
     s0+=7.0;
     s1+=12462.0;
    }
   } else {
    if(i14<0.00013687348109669983){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=46.0;
     s1+=289.0;
    }
   }
  }
 }
}
if(i2<6.312131881713867e-05){
 if(i27<0.2201087772846222){
  if(i13<1.0170785188674927){
   if(i0<-9.380535630043596e-05){
    if(i27<0.045084208250045776){
     s0+=712.0;
     s1+=107.0;
    } else {
     s0+=87.0;
     s1+=757.0;
    }
   } else {
    if(i32<1.0905301570892334){
     s0+=29158.0;
     s1+=2966.0;
    } else {
     s0+=83216.0;
     s1+=1716.0;
    }
   }
  } else {
   if(i0<-5.882229015696794e-05){
    if(i65<9.170413250103593e-06){
     s0+=61.0;
     s1+=623.0;
    } else {
     s0+=32.0;
     s1+=5.0;
    }
   } else {
    if(i26<1.1178560256958008){
     s0+=9.0;
     s1+=180.0;
    } else {
     s0+=848.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i43<-9.137258530245163e-06){
   if(i16<0.0015696814516559243){
    if(i25<1.028010368347168){
     s0+=17.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i42<0.0017583661247044802){
     s0+=7.0;
    } else {
     s0+=37.0;
     s1+=1287.0;
    }
   }
  } else {
   if(i45<1.0026512145996094){
    if(i64<-0.0025754037778824568){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=171.0;
    }
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i0<-7.420437759719789e-05){
  if(i3<1.0021545886993408){
   if(i22<0.0037609427236020565){
    if(i46<0.9995341300964355){
     s0+=230.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=146.0;
   }
  } else {
   if(i69<4.236634140397655e-06){
    if(i50<2.9981136322021484e-05){
     s0+=162.0;
     s1+=14612.0;
    } else {
     s0+=55.0;
     s1+=8.0;
    }
   } else {
    s0+=97.0;
   }
  }
 } else {
  if(i36<0.00099715287797153){
   if(i36<0.00018481384904589504){
    s0+=86.0;
   } else {
    s1+=1005.0;
   }
  } else {
   if(i36<0.0017349538393318653){
    if(i50<8.046627044677734e-06){
     s0+=89.0;
     s1+=77.0;
    } else {
     s0+=1419.0;
     s1+=3.0;
    }
   } else {
    if(i32<1.4586446285247803){
     s0+=14.0;
     s1+=587.0;
    } else {
     s0+=43.0;
     s1+=77.0;
    }
   }
  }
 }
}
if(i10<1.0136241912841797){
 if(i3<1.0025712251663208){
  if(i7<0.003716889303177595){
   if(i16<0.0010445925872772932){
    if(i36<0.0018042721785604954){
     s0+=64889.0;
     s1+=111.0;
    } else {
     s0+=2985.0;
     s1+=96.0;
    }
   } else {
    if(i33<0.0006877091946080327){
     s0+=3501.0;
     s1+=706.0;
    } else {
     s0+=15781.0;
     s1+=81.0;
    }
   }
  } else {
   if(i28<0.001190647017210722){
    if(i3<0.9989826679229736){
     s0+=2361.0;
    } else {
     s0+=372.0;
     s1+=2460.0;
    }
   } else {
    if(i15<0.1999817192554474){
     s0+=19674.0;
     s1+=710.0;
    } else {
     s0+=83.0;
     s1+=435.0;
    }
   }
  }
 } else {
  if(i34<1.1962356567382812){
   if(i7<0.003927025943994522){
    if(i14<0.00020553651847876608){
     s0+=366.0;
     s1+=277.0;
    } else {
     s0+=3072.0;
    }
   } else {
    if(i29<0.00046455860137939453){
     s0+=88.0;
     s1+=791.0;
    } else {
     s0+=225.0;
     s1+=28.0;
    }
   }
  } else {
   if(i48<2.6372112188255414e-05){
    if(i66<0.029754403978586197){
     s0+=131.0;
     s1+=70.0;
    } else {
     s0+=188.0;
     s1+=2655.0;
    }
   } else {
    if(i35<0.14716532826423645){
     s0+=1296.0;
     s1+=629.0;
    } else {
     s0+=61.0;
     s1+=720.0;
    }
   }
  }
 }
} else {
 if(i8<1.0205481052398682){
  if(i14<0.0007014345028437674){
   if(i45<0.9997808337211609){
    if(i48<2.2699532564729452e-05){
     s0+=77.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i31<0.00043815007666125894){
     s0+=142.0;
     s1+=160.0;
    } else {
     s0+=182.0;
     s1+=2394.0;
    }
   }
  } else {
   s0+=643.0;
  }
 } else {
  if(i7<0.005046546459197998){
   if(i2<0.00010907649993896484){
    if(i53<0.04089212045073509){
     s0+=32.0;
     s1+=29.0;
    } else {
     s0+=210.0;
     s1+=9.0;
    }
   } else {
    s1+=443.0;
   }
  } else {
   s1+=11676.0;
  }
 }
}
if(i1<0.0009554028511047363){
 if(i7<0.006916837766766548){
  if(i26<1.1162974834442139){
   if(i29<6.526708602905273e-05){
    if(i58<0.00011854626791318879){
     s0+=17378.0;
     s1+=175.0;
    } else {
     s0+=5516.0;
     s1+=472.0;
    }
   } else {
    if(i52<0.012309625744819641){
     s0+=6310.0;
     s1+=851.0;
    } else {
     s0+=802.0;
     s1+=1463.0;
    }
   }
  } else {
   if(i3<1.0023874044418335){
    if(i0<-6.016412589815445e-05){
     s0+=924.0;
     s1+=85.0;
    } else {
     s0+=73072.0;
     s1+=304.0;
    }
   } else {
    if(i24<0.013963349163532257){
     s0+=2784.0;
     s1+=77.0;
    } else {
     s0+=637.0;
     s1+=408.0;
    }
   }
  }
 } else {
  if(i63<1.0381174087524414){
   if(i4<0.9983863234519958){
    if(i24<0.0817623883485794){
     s0+=5313.0;
     s1+=224.0;
    } else {
     s0+=22.0;
     s1+=72.0;
    }
   } else {
    if(i12<0.9735591411590576){
     s0+=235.0;
     s1+=62.0;
    } else {
     s0+=256.0;
     s1+=829.0;
    }
   }
  } else {
   if(i6<-5.8710575103759766e-05){
    if(i24<0.05508933961391449){
     s0+=673.0;
     s1+=67.0;
    } else {
     s0+=4.0;
     s1+=146.0;
    }
   } else {
    if(i24<0.022117290645837784){
     s0+=185.0;
     s1+=198.0;
    } else {
     s0+=133.0;
     s1+=2533.0;
    }
   }
  }
 }
} else {
 if(i8<1.0192768573760986){
  if(i36<0.002015113364905119){
   if(i31<0.0010803727200254798){
    if(i30<1.0773653984069824){
     s0+=42.0;
     s1+=1507.0;
    } else {
     s0+=464.0;
     s1+=76.0;
    }
   } else {
    if(i22<0.0024448703043162823){
     s0+=1471.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i22<0.0024324203841388226){
    s0+=46.0;
   } else {
    if(i12<0.975357174873352){
     s0+=43.0;
     s1+=96.0;
    } else {
     s0+=53.0;
     s1+=2866.0;
    }
   }
  }
 } else {
  if(i26<1.170881986618042){
   if(i46<1.0009703636169434){
    if(i14<0.0010272266808897257){
     s1+=813.0;
    } else {
     s0+=13.0;
    }
   } else {
    s0+=29.0;
   }
  } else {
   if(i23<-8.344650268554688e-06){
    if(i0<-9.014562238007784e-05){
     s1+=186.0;
    } else {
     s0+=4.0;
     s1+=19.0;
    }
   } else {
    s1+=10895.0;
   }
  }
 }
}
if(i5<2.0205974578857422e-05){
 if(i17<0.20638719201087952){
  if(i31<0.0007165205897763371){
   if(i43<-1.871948188636452e-05){
    if(i13<1.016327977180481){
     s1+=12.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i58<0.0001669453049544245){
     s0+=65537.0;
     s1+=148.0;
    } else {
     s0+=13724.0;
     s1+=286.0;
    }
   }
  } else {
   if(i2<-3.260374069213867e-05){
    if(i76<-0.09940287470817566){
     s0+=144.0;
     s1+=102.0;
    } else {
     s0+=24592.0;
     s1+=556.0;
    }
   } else {
    if(i56<0.9998153448104858){
     s0+=2972.0;
     s1+=207.0;
    } else {
     s0+=2047.0;
     s1+=2901.0;
    }
   }
  }
 } else {
  if(i24<0.03882114589214325){
   if(i43<-9.218598279403523e-06){
    if(i7<0.004594243131577969){
     s0+=29.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=80.0;
    }
   } else {
    if(i16<0.0027557341381907463){
     s0+=202.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=536.0;
  }
 }
} else {
 if(i14<0.0007055420428514481){
  if(i2<6.097555160522461e-05){
   if(i30<1.1673319339752197){
    if(i7<0.004414921626448631){
     s0+=1988.0;
     s1+=140.0;
    } else {
     s0+=1422.0;
     s1+=1846.0;
    }
   } else {
    if(i41<1.0297950506210327){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=927.0;
    }
   }
  } else {
   if(i20<0.0012434720993041992){
    if(i16<0.0018840886186808348){
     s0+=157.0;
     s1+=14.0;
    } else {
     s0+=187.0;
     s1+=3295.0;
    }
   } else {
    if(i51<-6.509711965918541e-05){
     s0+=10.0;
    } else {
     s0+=9.0;
     s1+=13140.0;
    }
   }
  }
 } else {
  s0+=3615.0;
 }
}
if(i2<6.526708602905273e-05){
 if(i9<1.0182639360427856){
  if(i7<0.0039520664140582085){
   if(i60<-0.0006757378578186035){
    if(i33<0.0003364908043295145){
     s0+=1200.0;
     s1+=451.0;
    } else {
     s0+=15151.0;
     s1+=267.0;
    }
   } else {
    if(i26<1.0776758193969727){
     s0+=13748.0;
     s1+=348.0;
    } else {
     s0+=61814.0;
     s1+=207.0;
    }
   }
  } else {
   if(i5<-2.562999725341797e-06){
    if(i7<0.016933970153331757){
     s0+=16933.0;
     s1+=237.0;
    } else {
     s0+=56.0;
     s1+=101.0;
    }
   } else {
    if(i48<2.397679054411128e-05){
     s0+=835.0;
     s1+=3107.0;
    } else {
     s0+=3899.0;
     s1+=1433.0;
    }
   }
  }
 } else {
  if(i24<0.027138493955135345){
   if(i32<1.0940325260162354){
    s1+=187.0;
   } else {
    if(i37<1.1332385540008545){
     s0+=390.0;
     s1+=1.0;
    } else {
     s0+=450.0;
     s1+=296.0;
    }
   }
  } else {
   if(i43<-7.4518970905046444e-06){
    if(i2<-2.79843807220459e-05){
     s0+=56.0;
     s1+=120.0;
    } else {
     s0+=44.0;
     s1+=1353.0;
    }
   } else {
    s0+=47.0;
   }
  }
 }
} else {
 if(i36<0.002045207656919956){
  if(i28<0.0012571432162076235){
   if(i36<0.0001669393095653504){
    s0+=44.0;
   } else {
    if(i79<0.06973925232887268){
     s0+=23.0;
     s1+=2124.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i14<0.00021231453865766525){
    if(i69<-2.673474682524102e-06){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=184.0;
    }
   } else {
    if(i55<0.002290160395205021){
     s0+=1777.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i23<-0.0003324151039123535){
   if(i15<0.0948525071144104){
    if(i29<0.0008176565170288086){
     s0+=76.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=62.0;
    }
   } else {
    if(i31<0.001202685758471489){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=226.0;
    }
   }
  } else {
   if(i31<0.0042625428177416325){
    if(i17<0.09203770756721497){
     s0+=23.0;
     s1+=450.0;
    } else {
     s0+=14.0;
     s1+=13008.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
}
if(i6<0.0005647540092468262){
 if(i11<1.0171270370483398){
  if(i53<0.5094537734985352){
   if(i16<0.001569476444274187){
    if(i26<1.0817922353744507){
     s0+=15917.0;
     s1+=412.0;
    } else {
     s0+=70246.0;
     s1+=251.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2596.0;
     s1+=2408.0;
    } else {
     s0+=20705.0;
     s1+=1055.0;
    }
   }
  } else {
   if(i6<-0.0013909637928009033){
    s0+=3.0;
   } else {
    s1+=115.0;
   }
  }
 } else {
  if(i51<-3.6754313441633713e-06){
   if(i7<0.004277471452951431){
    if(i46<1.0011277198791504){
     s0+=3.0;
     s1+=24.0;
    } else {
     s0+=176.0;
    }
   } else {
    if(i15<0.0630350410938263){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=757.0;
    }
   }
  } else {
   if(i65<4.8639844862918835e-06){
    s0+=520.0;
   } else {
    if(i34<1.1640105247497559){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i50<1.2576580047607422e-05){
   if(i28<0.0002537001855671406){
    s0+=1114.0;
   } else {
    if(i2<6.264448165893555e-05){
     s0+=722.0;
     s1+=673.0;
    } else {
     s0+=284.0;
     s1+=2403.0;
    }
   }
  } else {
   if(i70<0.004753861576318741){
    if(i14<8.589709614170715e-05){
     s0+=17.0;
     s1+=16.0;
    } else {
     s0+=2959.0;
     s1+=5.0;
    }
   } else {
    if(i0<-9.143805073108524e-05){
     s1+=4.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i18<0.9597306847572327){
   if(i15<0.0659399926662445){
    if(i45<1.0054813623428345){
     s0+=516.0;
     s1+=61.0;
    } else {
     s0+=2.0;
     s1+=37.0;
    }
   } else {
    if(i73<0.003840416669845581){
     s0+=62.0;
     s1+=302.0;
    } else {
     s0+=29.0;
     s1+=4.0;
    }
   }
  } else {
   if(i15<0.0711505115032196){
    if(i68<0.9802130460739136){
     s0+=111.0;
     s1+=353.0;
    } else {
     s0+=447.0;
     s1+=55.0;
    }
   } else {
    if(i22<0.0026134937070310116){
     s0+=56.0;
     s1+=121.0;
    } else {
     s0+=310.0;
     s1+=14957.0;
    }
   }
  }
 }
}
if(i4<1.003712773323059){
 if(i35<0.18404248356819153){
  if(i25<1.021234154701233){
   if(i5<1.4483928680419922e-05){
    if(i26<1.1162974834442139){
     s0+=27728.0;
     s1+=2422.0;
    } else {
     s0+=77256.0;
     s1+=695.0;
    }
   } else {
    if(i0<-4.133273250772618e-05){
     s0+=1455.0;
     s1+=1051.0;
    } else {
     s0+=4399.0;
     s1+=639.0;
    }
   }
  } else {
   if(i51<-3.185109108017059e-06){
    if(i52<0.03910262882709503){
     s0+=473.0;
     s1+=268.0;
    } else {
     s0+=69.0;
     s1+=557.0;
    }
   } else {
    if(i43<-1.0851406841538846e-05){
     s0+=6.0;
     s1+=6.0;
    } else {
     s0+=588.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<-0.0013027787208557129){
   if(i20<-0.006017178297042847){
    if(i41<1.106882929801941){
     s0+=185.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i30<1.101863145828247){
     s0+=1.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i29<0.0007304549217224121){
    if(i38<1.1124476194381714){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=782.0;
    }
   } else {
    if(i43<-4.942720988765359e-05){
     s1+=14.0;
    } else {
     s0+=17.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i36<0.001134006306529045){
   if(i22<0.00024274415045510978){
    s0+=695.0;
   } else {
    if(i56<1.0030345916748047){
     s0+=30.0;
     s1+=2439.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i7<0.00720536382868886){
    s0+=3324.0;
   } else {
    if(i29<0.0007771849632263184){
     s1+=252.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i7<0.002565101720392704){
   if(i12<1.0136175155639648){
    if(i19<1.0020368099212646){
     s1+=11.0;
    } else {
     s0+=209.0;
    }
   } else {
    s1+=95.0;
   }
  } else {
   if(i30<1.0742592811584473){
    if(i63<1.03558349609375){
     s0+=21.0;
     s1+=210.0;
    } else {
     s0+=42.0;
     s1+=57.0;
    }
   } else {
    if(i33<0.0016646741423755884){
     s0+=3.0;
    } else {
     s0+=99.0;
     s1+=14637.0;
    }
   }
  }
 }
}
if(i13<1.0170204639434814){
 if(i1<0.0010123848915100098){
  if(i16<0.001817213138565421){
   if(i58<0.0001815919385990128){
    if(i38<1.0455355644226074){
     s0+=27017.0;
     s1+=336.0;
    } else {
     s0+=51048.0;
     s1+=68.0;
    }
   } else {
    if(i42<0.00025816255947574973){
     s0+=707.0;
     s1+=441.0;
    } else {
     s0+=13581.0;
     s1+=315.0;
    }
   }
  } else {
   if(i44<0.17631804943084717){
    if(i2<-2.4616718292236328e-05){
     s0+=17190.0;
     s1+=772.0;
    } else {
     s0+=3759.0;
     s1+=3735.0;
    }
   } else {
    if(i53<0.13434429466724396){
     s0+=109.0;
     s1+=74.0;
    } else {
     s0+=28.0;
     s1+=707.0;
    }
   }
  }
 } else {
  if(i28<0.002389201894402504){
   if(i41<1.0617350339889526){
    if(i14<0.0002535507665015757){
     s1+=1099.0;
    } else {
     s0+=121.0;
    }
   } else {
    if(i33<0.001184726133942604){
     s1+=86.0;
    } else {
     s0+=1203.0;
     s1+=8.0;
    }
   }
  } else {
   if(i60<-0.012298792600631714){
    if(i51<-2.025486719503533e-05){
     s1+=101.0;
    } else {
     s0+=49.0;
     s1+=38.0;
    }
   } else {
    if(i24<0.033875931054353714){
     s0+=38.0;
     s1+=709.0;
    } else {
     s0+=1.0;
     s1+=1774.0;
    }
   }
  }
 }
} else {
 if(i43<-1.0866428056033328e-05){
  if(i28<0.0025086766108870506){
   if(i26<1.1180615425109863){
    s1+=1531.0;
   } else {
    if(i22<0.002304201014339924){
     s0+=601.0;
     s1+=2.0;
    } else {
     s0+=25.0;
     s1+=18.0;
    }
   }
  } else {
   if(i4<1.0027518272399902){
    if(i7<0.0059796832501888275){
     s0+=337.0;
     s1+=10.0;
    } else {
     s0+=23.0;
     s1+=384.0;
    }
   } else {
    if(i11<1.024548053741455){
     s0+=39.0;
     s1+=796.0;
    } else {
     s0+=42.0;
     s1+=11398.0;
    }
   }
  }
 } else {
  if(i22<0.004816058091819286){
   if(i42<0.002271294128149748){
    if(i22<0.0018287468701601028){
     s0+=145.0;
    } else {
     s0+=20.0;
     s1+=14.0;
    }
   } else {
    s0+=337.0;
   }
  } else {
   if(i53<0.05533536523580551){
    s0+=16.0;
   } else {
    s1+=8.0;
   }
  }
 }
}
if(i7<0.008001732639968395){
 if(i23<0.00021129846572875977){
  if(i31<0.0006999351899139583){
   if(i21<1.0091853141784668){
    if(i0<-8.165703911799937e-05){
     s1+=83.0;
    } else {
     s0+=80103.0;
     s1+=505.0;
    }
   } else {
    if(i42<0.0007970588048920035){
     s1+=39.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i3<0.9997502565383911){
    if(i33<0.0009139481699094176){
     s0+=1531.0;
     s1+=268.0;
    } else {
     s0+=16731.0;
     s1+=20.0;
    }
   } else {
    if(i18<0.9845353364944458){
     s0+=3055.0;
     s1+=131.0;
    } else {
     s0+=9904.0;
     s1+=3891.0;
    }
   }
  }
 } else {
  if(i46<0.9998552799224854){
   if(i6<0.0026855170726776123){
    if(i32<1.0958809852600098){
     s1+=1.0;
    } else {
     s0+=594.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i14<0.0005344919627532363){
    if(i49<-1.4814521819062065e-05){
     s0+=43.0;
    } else {
     s0+=72.0;
     s1+=2904.0;
    }
   } else {
    if(i19<1.0534017086029053){
     s0+=240.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i27<0.07642829418182373){
  if(i12<1.0038349628448486){
   if(i74<0.02351037785410881){
    if(i28<0.0029906430281698704){
     s0+=2.0;
     s1+=16.0;
    } else {
     s0+=3433.0;
     s1+=81.0;
    }
   } else {
    if(i78<-0.01870325207710266){
     s0+=418.0;
     s1+=240.0;
    } else {
     s0+=8.0;
     s1+=133.0;
    }
   }
  } else {
   if(i24<0.012864204123616219){
    if(i46<0.9978787899017334){
     s0+=15.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=137.0;
   }
  }
 } else {
  if(i23<-0.000685960054397583){
   if(i24<0.05714245140552521){
    if(i16<0.0064511895179748535){
     s0+=335.0;
     s1+=25.0;
    } else {
     s0+=99.0;
     s1+=120.0;
    }
   } else {
    if(i67<0.10098259150981903){
     s0+=21.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=104.0;
    }
   }
  } else {
   if(i19<0.9952727556228638){
    if(i32<1.224023699760437){
     s0+=103.0;
     s1+=72.0;
    } else {
     s0+=47.0;
     s1+=964.0;
    }
   } else {
    if(i65<1.8424001609673724e-05){
     s0+=33.0;
     s1+=14261.0;
    } else {
     s0+=30.0;
    }
   }
  }
 }
}
if(i8<1.0151855945587158){
 if(i54<1.006547451019287){
  if(i35<0.19253018498420715){
   if(i23<0.00016814470291137695){
    if(i6<0.000280916690826416){
     s0+=101333.0;
     s1+=2858.0;
    } else {
     s0+=10139.0;
     s1+=2783.0;
    }
   } else {
    if(i42<0.0008165409089997411){
     s0+=135.0;
     s1+=650.0;
    } else {
     s0+=1286.0;
     s1+=209.0;
    }
   }
  } else {
   if(i39<5.63534558750689e-06){
    if(i3<0.9935221672058105){
     s0+=4.0;
    } else {
     s1+=603.0;
    }
   } else {
    if(i80<-0.0214918851852417){
     s1+=11.0;
    } else {
     s0+=116.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.12744760513305664){
   if(i21<1.0106687545776367){
    if(i74<0.01408085972070694){
     s0+=1610.0;
     s1+=267.0;
    } else {
     s0+=281.0;
     s1+=406.0;
    }
   } else {
    if(i65<4.281798283045646e-06){
     s0+=56.0;
     s1+=720.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   }
  } else {
   if(i22<0.0025843067560344934){
    s0+=109.0;
   } else {
    if(i5<-7.748603820800781e-06){
     s0+=17.0;
     s1+=8.0;
    } else {
     s0+=72.0;
     s1+=1992.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007203701534308493){
  if(i4<1.0017682313919067){
   if(i33<0.007339132018387318){
    if(i4<1.0011180639266968){
     s0+=336.0;
     s1+=21.0;
    } else {
     s0+=61.0;
     s1+=30.0;
    }
   } else {
    s1+=130.0;
   }
  } else {
   if(i5<0.0002608299255371094){
    if(i37<1.7041046619415283){
     s0+=119.0;
     s1+=14007.0;
    } else {
     s0+=34.0;
    }
   } else {
    s0+=16.0;
   }
  }
 } else {
  s0+=415.0;
 }
}
if(i1<0.000957190990447998){
 if(i30<1.1402404308319092){
  if(i7<0.0040365299209952354){
   if(i16<0.0010506476974114776){
    if(i42<0.0018615851877257228){
     s0+=67411.0;
     s1+=127.0;
    } else {
     s0+=2434.0;
     s1+=70.0;
    }
   } else {
    if(i6<-0.0003160238265991211){
     s0+=10613.0;
     s1+=20.0;
    } else {
     s0+=11686.0;
     s1+=1103.0;
    }
   }
  } else {
   if(i4<0.9989026784896851){
    if(i2<-4.07099723815918e-05){
     s0+=18237.0;
     s1+=353.0;
    } else {
     s0+=1272.0;
     s1+=345.0;
    }
   } else {
    if(i45<1.0000171661376953){
     s0+=397.0;
     s1+=5.0;
    } else {
     s0+=1267.0;
     s1+=3954.0;
    }
   }
  }
 } else {
  if(i16<0.0015659972559660673){
   s0+=950.0;
  } else {
   if(i15<0.0438942015171051){
    if(i23<-0.0004108250141143799){
     s0+=116.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=23.0;
    }
   } else {
    if(i37<1.170027494430542){
     s0+=95.0;
     s1+=55.0;
    } else {
     s0+=51.0;
     s1+=1979.0;
    }
   }
  }
 }
} else {
 if(i33<0.0023648133501410484){
  if(i28<0.0012747111031785607){
   if(i36<0.00016888559912331402){
    s0+=74.0;
   } else {
    if(i14<0.00026703899493440986){
     s1+=2234.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i20<0.002497732639312744){
    if(i18<1.0018916130065918){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=1925.0;
     s1+=28.0;
    }
   } else {
    s1+=96.0;
   }
  }
 } else {
  if(i15<0.029245585203170776){
   if(i48<3.863265192194376e-06){
    s1+=72.0;
   } else {
    if(i39<0.0007429642137140036){
     s0+=47.0;
     s1+=8.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i41<0.8910607695579529){
    s0+=4.0;
   } else {
    if(i20<-0.003537774085998535){
     s0+=29.0;
     s1+=80.0;
    } else {
     s0+=35.0;
     s1+=13593.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i9<1.0181578397750854){
  if(i7<0.003734379541128874){
   if(i33<0.0006850166828371584){
    if(i16<0.0012189899571239948){
     s0+=24972.0;
     s1+=201.0;
    } else {
     s0+=2843.0;
     s1+=697.0;
    }
   } else {
    if(i36<0.0018091897945851088){
     s0+=50385.0;
    } else {
     s0+=12016.0;
     s1+=214.0;
    }
   }
  } else {
   if(i4<0.9988393783569336){
    if(i27<0.21353855729103088){
     s0+=21129.0;
     s1+=754.0;
    } else {
     s0+=63.0;
     s1+=166.0;
    }
   } else {
    if(i6<-0.00016310811042785645){
     s0+=422.0;
     s1+=13.0;
    } else {
     s0+=1606.0;
     s1+=4077.0;
    }
   }
  }
 } else {
  if(i0<-3.407507756492123e-05){
   if(i45<1.0000357627868652){
    if(i7<0.015187276527285576){
     s0+=111.0;
    } else {
     s1+=98.0;
    }
   } else {
    if(i52<0.02358982339501381){
     s0+=185.0;
     s1+=265.0;
    } else {
     s0+=86.0;
     s1+=1427.0;
    }
   }
  } else {
   if(i54<1.0026509761810303){
    if(i43<-7.2182947405963205e-06){
     s0+=123.0;
     s1+=26.0;
    } else {
     s0+=347.0;
    }
   } else {
    if(i7<0.004251159727573395){
     s0+=179.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=119.0;
    }
   }
  }
 }
} else {
 if(i33<0.0023648133501410484){
  if(i14<0.0002565862669143826){
   if(i51<-4.4206368329469115e-05){
    s0+=47.0;
   } else {
    s1+=2372.0;
   }
  } else {
   s0+=1945.0;
  }
 } else {
  if(i58<0.003089567180722952){
   if(i38<1.0789777040481567){
    if(i23<-0.00033479928970336914){
     s0+=19.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i15<0.05616632103919983){
     s0+=36.0;
     s1+=144.0;
    } else {
     s0+=25.0;
     s1+=13548.0;
    }
   }
  } else {
   if(i36<0.019277848303318024){
    if(i50<1.4543533325195312e-05){
     s0+=32.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i31<0.004060161765664816){
     s1+=124.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i6<0.0005906224250793457){
 if(i27<0.22338742017745972){
  if(i13<1.0165859460830688){
   if(i8<1.008041501045227){
    if(i58<0.00018802369595505297){
     s0+=81334.0;
     s1+=1434.0;
    } else {
     s0+=25604.0;
     s1+=2287.0;
    }
   } else {
    if(i63<1.0450465679168701){
     s0+=337.0;
     s1+=377.0;
    } else {
     s0+=1547.0;
     s1+=113.0;
    }
   }
  } else {
   if(i43<-8.437777978542726e-06){
    if(i7<0.004065325483679771){
     s0+=248.0;
     s1+=27.0;
    } else {
     s0+=34.0;
     s1+=477.0;
    }
   } else {
    if(i16<0.0026686564087867737){
     s0+=455.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i28<0.004036119673401117){
   if(i3<1.0017971992492676){
    if(i16<0.0025587412528693676){
     s0+=157.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    if(i36<0.0017644362524151802){
     s0+=3.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i24<0.039016369730234146){
    if(i7<0.007004684768617153){
     s0+=34.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   } else {
    s1+=520.0;
   }
  }
 }
} else {
 if(i17<0.1559915542602539){
  if(i14<0.00031020183814689517){
   if(i4<1.0030707120895386){
    if(i28<0.001398959313519299){
     s1+=125.0;
    } else {
     s0+=594.0;
     s1+=220.0;
    }
   } else {
    if(i22<0.0009706164710223675){
     s1+=2772.0;
    } else {
     s0+=343.0;
     s1+=1768.0;
    }
   }
  } else {
   if(i64<0.001325574005022645){
    if(i10<1.0220308303833008){
     s0+=4785.0;
     s1+=57.0;
    } else {
     s0+=22.0;
     s1+=27.0;
    }
   } else {
    if(i41<1.0527876615524292){
     s0+=329.0;
     s1+=195.0;
    } else {
     s0+=96.0;
     s1+=572.0;
    }
   }
  }
 } else {
  if(i14<0.0007044356898404658){
   if(i22<0.0020064720883965492){
    s0+=92.0;
   } else {
    if(i48<3.0001785489730537e-05){
     s0+=37.0;
     s1+=12500.0;
    } else {
     s0+=50.0;
     s1+=961.0;
    }
   }
  } else {
   s0+=220.0;
  }
 }
}
if(i4<1.00374174118042){
 if(i6<0.0003134608268737793){
  if(i71<0.20962432026863098){
   if(i16<0.0014532973291352391){
    if(i12<0.9970706701278687){
     s0+=20416.0;
     s1+=352.0;
    } else {
     s0+=60548.0;
     s1+=239.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2039.0;
     s1+=1777.0;
    } else {
     s0+=21453.0;
     s1+=748.0;
    }
   }
  } else {
   if(i7<0.006032458506524563){
    if(i19<0.9885694980621338){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=80.0;
     s1+=1.0;
    }
   } else {
    s1+=155.0;
   }
  }
 } else {
  if(i25<1.0199990272521973){
   if(i0<-4.376254219096154e-05){
    if(i61<-0.006951332092285156){
     s0+=517.0;
     s1+=75.0;
    } else {
     s0+=977.0;
     s1+=1465.0;
    }
   } else {
    if(i7<0.004134019836783409){
     s0+=5102.0;
     s1+=24.0;
    } else {
     s0+=749.0;
     s1+=833.0;
    }
   }
  } else {
   if(i23<-0.00019615888595581055){
    if(i58<0.0004343346517998725){
     s0+=249.0;
     s1+=74.0;
    } else {
     s0+=25.0;
     s1+=143.0;
    }
   } else {
    if(i14<0.0011883927509188652){
     s0+=61.0;
     s1+=670.0;
    } else {
     s0+=37.0;
    }
   }
  }
 }
} else {
 if(i53<0.035276323556900024){
  if(i10<1.0164178609848022){
   if(i26<1.116804838180542){
    if(i37<1.0452228784561157){
     s0+=662.0;
    } else {
     s0+=3.0;
     s1+=1316.0;
    }
   } else {
    if(i21<1.0114784240722656){
     s0+=2964.0;
     s1+=64.0;
    } else {
     s0+=7.0;
     s1+=159.0;
    }
   }
  } else {
   if(i20<0.0019588470458984375){
    if(i49<-3.7897502807027195e-06){
     s0+=211.0;
     s1+=15.0;
    } else {
     s0+=12.0;
     s1+=539.0;
    }
   } else {
    if(i8<1.0157523155212402){
     s0+=2.0;
     s1+=26.0;
    } else {
     s1+=1697.0;
    }
   }
  }
 } else {
  if(i27<0.11730170249938965){
   if(i64<0.000848623167257756){
    if(i20<0.0012262463569641113){
     s0+=217.0;
     s1+=85.0;
    } else {
     s0+=19.0;
     s1+=319.0;
    }
   } else {
    if(i61<-0.0026810765266418457){
     s0+=65.0;
     s1+=318.0;
    } else {
     s0+=19.0;
     s1+=501.0;
    }
   }
  } else {
   if(i14<0.0007036786992102861){
    if(i26<1.1843671798706055){
     s0+=56.0;
     s1+=185.0;
    } else {
     s0+=28.0;
     s1+=12491.0;
    }
   } else {
    s0+=60.0;
   }
  }
 }
}
if(i6<0.0005738139152526855){
 if(i0<-7.925597310531884e-05){
  if(i41<1.071354627609253){
   if(i14<0.0006239040521904826){
    if(i10<1.017398715019226){
     s0+=852.0;
     s1+=59.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i10<0.9091973304748535){
     s0+=25.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=45.0;
    }
   }
  } else {
   if(i52<0.02009766176342964){
    if(i46<1.000180959701538){
     s0+=36.0;
    } else {
     s0+=8.0;
     s1+=37.0;
    }
   } else {
    if(i24<0.013900439254939556){
     s0+=16.0;
    } else {
     s0+=13.0;
     s1+=815.0;
    }
   }
  }
 } else {
  if(i16<0.0016928836703300476){
   if(i33<0.0003138355677947402){
    if(i7<0.002797357738018036){
     s0+=17745.0;
     s1+=347.0;
    } else {
     s0+=261.0;
     s1+=247.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=68552.0;
     s1+=165.0;
    } else {
     s0+=2235.0;
     s1+=134.0;
    }
   }
  } else {
   if(i1<-0.0003959834575653076){
    if(i4<0.996789813041687){
     s0+=14765.0;
     s1+=168.0;
    } else {
     s0+=2832.0;
     s1+=457.0;
    }
   } else {
    if(i3<1.0001676082611084){
     s0+=1464.0;
     s1+=114.0;
    } else {
     s0+=1052.0;
     s1+=2480.0;
    }
   }
  }
 }
} else {
 if(i7<0.004094831645488739){
  if(i1<0.0017659664154052734){
   if(i10<1.013068675994873){
    if(i65<-4.9139389375341125e-06){
     s0+=200.0;
     s1+=82.0;
    } else {
     s0+=3882.0;
     s1+=108.0;
    }
   } else {
    if(i26<1.0974079370498657){
     s1+=101.0;
    } else {
     s0+=684.0;
     s1+=40.0;
    }
   }
  } else {
   if(i31<0.0013447987148538232){
    if(i0<-6.0333295550663024e-05){
     s1+=533.0;
    } else {
     s0+=5.0;
     s1+=280.0;
    }
   } else {
    if(i1<0.005248725414276123){
     s0+=277.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i4<1.0006095170974731){
   if(i39<-0.0005254709394648671){
    if(i7<0.007964741438627243){
     s0+=26.0;
    } else {
     s0+=18.0;
     s1+=153.0;
    }
   } else {
    if(i53<0.2956433892250061){
     s0+=776.0;
     s1+=84.0;
    } else {
     s0+=3.0;
     s1+=29.0;
    }
   }
  } else {
   if(i10<1.0177710056304932){
    if(i23<-0.00020056962966918945){
     s0+=469.0;
     s1+=1218.0;
    } else {
     s0+=393.0;
     s1+=4047.0;
    }
   } else {
    if(i69<5.953987511020387e-06){
     s0+=37.0;
     s1+=12449.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
}
if(i4<1.003852128982544){
 if(i35<0.18422886729240417){
  if(i11<1.0152521133422852){
   if(i17<0.20640060305595398){
    if(i35<0.012385839596390724){
     s0+=69415.0;
     s1+=751.0;
    } else {
     s0+=40905.0;
     s1+=3789.0;
    }
   } else {
    if(i42<0.002870995318517089){
     s0+=110.0;
     s1+=4.0;
    } else {
     s0+=41.0;
     s1+=283.0;
    }
   }
  } else {
   if(i45<1.0003116130828857){
    if(i0<-9.089264494832605e-05){
     s0+=17.0;
     s1+=43.0;
    } else {
     s0+=551.0;
     s1+=7.0;
    }
   } else {
    if(i0<-3.4332631912548095e-05){
     s0+=200.0;
     s1+=839.0;
    } else {
     s0+=418.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i1<-0.0011653304100036621){
   if(i38<1.2951197624206543){
    if(i62<0.014943540096282959){
     s0+=176.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i60<-0.01681038737297058){
     s0+=18.0;
     s1+=1.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i0<-4.7360677854157984e-05){
    if(i60<-0.015794068574905396){
     s0+=2.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=777.0;
    }
   } else {
    if(i31<0.0030737193301320076){
     s0+=13.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019504593219608068){
  if(i14<0.00023811584105715156){
   if(i43<-1.3274388038553298e-05){
    if(i28<0.0013665712904185057){
     s0+=5.0;
     s1+=2715.0;
    } else {
     s0+=49.0;
     s1+=37.0;
    }
   } else {
    s0+=97.0;
   }
  } else {
   if(i7<0.007661297917366028){
    s0+=4123.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i31<0.004073325544595718){
   if(i20<-0.0011427998542785645){
    if(i27<0.10043004155158997){
     s0+=106.0;
     s1+=194.0;
    } else {
     s0+=27.0;
     s1+=698.0;
    }
   } else {
    if(i27<0.07693862915039062){
     s0+=37.0;
     s1+=253.0;
    } else {
     s0+=31.0;
     s1+=13916.0;
    }
   }
  } else {
   s0+=17.0;
  }
 }
}
if(i4<1.0038774013519287){
 if(i30<1.1403480768203735){
  if(i31<0.000720534473657608){
   if(i21<1.0056570768356323){
    if(i5<2.0205974578857422e-05){
     s0+=78756.0;
     s1+=413.0;
    } else {
     s0+=398.0;
     s1+=43.0;
    }
   } else {
    if(i66<0.08326094597578049){
     s0+=4.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i28<0.0010537025518715382){
    if(i36<0.0002014284546021372){
     s0+=2074.0;
     s1+=33.0;
    } else {
     s0+=1170.0;
     s1+=2950.0;
    }
   } else {
    if(i41<1.108658790588379){
     s0+=28005.0;
     s1+=1154.0;
    } else {
     s0+=764.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i24<0.03839575871825218){
   if(i65<-7.360350195995125e-07){
    if(i73<-0.012127578258514404){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   } else {
    if(i0<-5.089595288154669e-05){
     s0+=67.0;
     s1+=77.0;
    } else {
     s0+=890.0;
     s1+=22.0;
    }
   }
  } else {
   if(i29<0.0006788969039916992){
    if(i80<-0.07908353209495544){
     s0+=21.0;
     s1+=50.0;
    } else {
     s0+=4.0;
     s1+=1286.0;
    }
   } else {
    if(i38<1.1682028770446777){
     s0+=34.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i24<0.007905698381364346){
  if(i48<-1.258757220057305e-05){
   if(i14<0.00060124701121822){
    if(i39<-0.0013305977918207645){
     s0+=20.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=1273.0;
    }
   } else {
    s0+=115.0;
   }
  } else {
   if(i29<0.0005713701248168945){
    if(i7<0.0025629543233662844){
     s0+=243.0;
     s1+=1.0;
    } else {
     s0+=57.0;
     s1+=776.0;
    }
   } else {
    if(i23<0.0003688335418701172){
     s0+=3344.0;
     s1+=15.0;
    } else {
     s0+=5.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i15<0.10352802276611328){
   if(i26<1.1180615425109863){
    s1+=497.0;
   } else {
    if(i28<0.0023456071503460407){
     s0+=238.0;
     s1+=5.0;
    } else {
     s0+=139.0;
     s1+=684.0;
    }
   }
  } else {
   if(i0<-6.371823110384867e-05){
    if(i11<0.853461742401123){
     s0+=6.0;
    } else {
     s0+=59.0;
     s1+=13732.0;
    }
   } else {
    if(i34<1.1573951244354248){
     s0+=131.0;
     s1+=75.0;
    } else {
     s0+=6.0;
     s1+=480.0;
    }
   }
  }
 }
}
if(i2<6.347894668579102e-05){
 if(i0<-8.084102591965348e-05){
  if(i39<-0.00034640985541045666){
   if(i68<0.8560910820960999){
    if(i53<0.1601620614528656){
     s0+=92.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=102.0;
    }
   } else {
    if(i2<-0.00014895200729370117){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=72.0;
     s1+=1954.0;
    }
   }
  } else {
   if(i30<1.0722980499267578){
    if(i44<0.053503334522247314){
     s0+=792.0;
     s1+=17.0;
    } else {
     s0+=63.0;
     s1+=23.0;
    }
   } else {
    if(i21<1.0021936893463135){
     s0+=118.0;
     s1+=54.0;
    } else {
     s0+=73.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i12<1.0057153701782227){
   if(i29<7.778406143188477e-05){
    if(i7<0.014069806784391403){
     s0+=76643.0;
     s1+=805.0;
    } else {
     s0+=11.0;
     s1+=30.0;
    }
   } else {
    if(i11<1.012562870979309){
     s0+=32485.0;
     s1+=3089.0;
    } else {
     s0+=766.0;
     s1+=488.0;
    }
   }
  } else {
   if(i73<0.0022446513175964355){
    if(i62<0.0003406035539228469){
     s0+=771.0;
     s1+=502.0;
    } else {
     s0+=2274.0;
     s1+=76.0;
    }
   } else {
    if(i4<1.0013468265533447){
     s0+=193.0;
     s1+=12.0;
    } else {
     s0+=133.0;
     s1+=453.0;
    }
   }
  }
 }
} else {
 if(i36<0.001971099991351366){
  if(i14<0.00024223740911111236){
   if(i0<-0.0001915383036248386){
    if(i13<1.0421521663665771){
     s0+=51.0;
    } else {
     s1+=11.0;
    }
   } else {
    s1+=2368.0;
   }
  } else {
   if(i14<0.0002448976447340101){
    if(i42<0.0008755227318033576){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=1914.0;
   }
  }
 } else {
  if(i69<6.0428860706451815e-06){
   if(i27<0.01127159595489502){
    if(i48<2.5872341211652383e-06){
     s1+=46.0;
    } else {
     s0+=49.0;
     s1+=11.0;
    }
   } else {
    if(i31<0.004042075481265783){
     s0+=80.0;
     s1+=13954.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   s0+=37.0;
  }
 }
}
if(i4<1.003852128982544){
 if(i57<0.010880495421588421){
  if(i9<1.0181355476379395){
   if(i16<0.0017033775802701712){
    if(i16<0.0012669634306803346){
     s0+=78942.0;
     s1+=358.0;
    } else {
     s0+=9484.0;
     s1+=574.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2484.0;
     s1+=2488.0;
    } else {
     s0+=19594.0;
     s1+=1422.0;
    }
   }
  } else {
   if(i0<-3.2096544600790367e-05){
    if(i32<1.6269450187683105){
     s0+=246.0;
     s1+=847.0;
    } else {
     s0+=130.0;
     s1+=26.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s1+=16.0;
    } else {
     s0+=550.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i39<-0.00027671921998262405){
   if(i13<0.8532859086990356){
    s0+=28.0;
   } else {
    if(i37<1.6811659336090088){
     s0+=35.0;
     s1+=944.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i2<-7.152557373046875e-06){
    if(i24<0.03921530395746231){
     s0+=558.0;
     s1+=5.0;
    } else {
     s0+=26.0;
     s1+=62.0;
    }
   } else {
    if(i30<1.1693168878555298){
     s0+=46.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i22<0.00225556967779994){
  if(i55<0.0008355173631571233){
   if(i7<0.002364946063607931){
    if(i23<0.00019031763076782227){
     s0+=556.0;
    } else {
     s0+=3.0;
     s1+=173.0;
    }
   } else {
    if(i37<1.0416834354400635){
     s0+=59.0;
    } else {
     s0+=11.0;
     s1+=2383.0;
    }
   }
  } else {
   if(i32<1.094508409500122){
    s1+=85.0;
   } else {
    if(i73<0.0033524632453918457){
     s0+=3308.0;
     s1+=25.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i55<0.00020793000294361264){
   if(i33<0.008822550065815449){
    s0+=116.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i7<0.0030106487683951855){
    if(i40<-1.327277823293116e-05){
     s1+=151.0;
    } else {
     s0+=72.0;
     s1+=5.0;
    }
   } else {
    if(i0<-7.754396938253194e-05){
     s0+=43.0;
     s1+=13770.0;
    } else {
     s0+=99.0;
     s1+=954.0;
    }
   }
  }
 }
}
if(i6<0.0005726218223571777){
 if(i16<0.0017323429929092526){
  if(i43<-1.8463000742485747e-05){
   if(i30<1.0904078483581543){
    if(i6<0.000500023365020752){
     s0+=20.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=41.0;
   }
  } else {
   if(i10<0.996309757232666){
    if(i42<0.0003250313748139888){
     s0+=1707.0;
     s1+=465.0;
    } else {
     s0+=18515.0;
     s1+=129.0;
    }
   } else {
    if(i36<0.00028251955518499017){
     s0+=18151.0;
     s1+=223.0;
    } else {
     s0+=50848.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i26<1.1164028644561768){
   if(i56<0.9998265504837036){
    if(i67<0.019859371706843376){
     s0+=1310.0;
     s1+=16.0;
    } else {
     s0+=210.0;
     s1+=86.0;
    }
   } else {
    if(i14<0.00026894727488979697){
     s0+=95.0;
     s1+=2303.0;
    } else {
     s0+=353.0;
     s1+=11.0;
    }
   }
  } else {
   if(i9<1.021153211593628){
    if(i1<-0.0003940463066101074){
     s0+=17240.0;
     s1+=599.0;
    } else {
     s0+=1061.0;
     s1+=544.0;
    }
   } else {
    if(i46<1.0014721155166626){
     s0+=14.0;
     s1+=599.0;
    } else {
     s0+=118.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i26<1.1935834884643555){
  if(i22<0.0009784870781004429){
   if(i14<0.00036088796332478523){
    s1+=2920.0;
   } else {
    s0+=1402.0;
   }
  } else {
   s0+=3385.0;
  }
 } else {
  if(i17<0.06880638003349304){
   if(i48<3.1945246519171633e-06){
    if(i57<0.01068152952939272){
     s1+=179.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   } else {
    if(i30<1.0854418277740479){
     s0+=1078.0;
     s1+=90.0;
    } else {
     s0+=244.0;
     s1+=224.0;
    }
   }
  } else {
   if(i38<1.1076258420944214){
    if(i20<-0.0013737082481384277){
     s0+=314.0;
     s1+=108.0;
    } else {
     s0+=13.0;
     s1+=276.0;
    }
   } else {
    if(i2<-9.5367431640625e-07){
     s0+=119.0;
     s1+=198.0;
    } else {
     s0+=144.0;
     s1+=15337.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i44<0.19124528765678406){
  if(i31<0.0007378360023722053){
   if(i64<-0.0006329261232167482){
    if(i6<0.00030303001403808594){
     s0+=195.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=37.0;
    }
   } else {
    if(i9<1.0182666778564453){
     s0+=81116.0;
     s1+=568.0;
    } else {
     s0+=381.0;
     s1+=42.0;
    }
   }
  } else {
   if(i3<1.0000395774841309){
    if(i33<0.0008465315913781524){
     s0+=1320.0;
     s1+=472.0;
    } else {
     s0+=18658.0;
     s1+=125.0;
    }
   } else {
    if(i4<0.9987421035766602){
     s0+=5749.0;
     s1+=431.0;
    } else {
     s0+=6450.0;
     s1+=4917.0;
    }
   }
  }
 } else {
  if(i31<0.0005463692941702902){
   if(i7<0.005326629150658846){
    if(i43<-8.20333843876142e-06){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=192.0;
    }
   } else {
    if(i33<0.0026934966444969177){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i32<1.1759499311447144){
    if(i34<1.1731728315353394){
     s0+=46.0;
    } else {
     s0+=13.0;
     s1+=20.0;
    }
   } else {
    if(i38<1.1182130575180054){
     s0+=34.0;
     s1+=16.0;
    } else {
     s0+=61.0;
     s1+=1333.0;
    }
   }
  }
 }
} else {
 if(i33<0.002370662521570921){
  if(i28<0.0012758004013448954){
   if(i46<0.9997408390045166){
    s0+=62.0;
   } else {
    if(i46<1.0009737014770508){
     s0+=17.0;
     s1+=2304.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i42<0.0008023350965231657){
    s1+=110.0;
   } else {
    if(i42<0.002301349537447095){
     s0+=1867.0;
     s1+=18.0;
    } else {
     s0+=17.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i18<0.9566062688827515){
   if(i4<1.0047756433486938){
    if(i17<0.06130969524383545){
     s0+=34.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i58<0.005263293161988258){
     s0+=7.0;
     s1+=124.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i23<-0.00028717517852783203){
    if(i24<0.03279207646846771){
     s0+=30.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=218.0;
    }
   } else {
    if(i20<-7.784366607666016e-05){
     s0+=31.0;
     s1+=1080.0;
    } else {
     s1+=12638.0;
    }
   }
  }
 }
}
if(i6<0.000591576099395752){
 if(i13<1.0164005756378174){
  if(i7<0.0036543256137520075){
   if(i36<0.0005912058404646814){
    if(i13<0.9949241876602173){
     s0+=2448.0;
     s1+=485.0;
    } else {
     s0+=22203.0;
     s1+=305.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=60025.0;
     s1+=104.0;
    } else {
     s0+=1854.0;
     s1+=83.0;
    }
   }
  } else {
   if(i27<0.2074698507785797){
    if(i33<0.0010873987339437008){
     s0+=2658.0;
     s1+=2097.0;
    } else {
     s0+=19865.0;
     s1+=1005.0;
    }
   } else {
    if(i16<0.0026165195740759373){
     s0+=64.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=372.0;
    }
   }
  }
 } else {
  if(i51<-2.781053353828611e-06){
   if(i35<0.048846885561943054){
    if(i2<-1.5139579772949219e-05){
     s0+=229.0;
     s1+=10.0;
    } else {
     s0+=60.0;
     s1+=253.0;
    }
   } else {
    if(i2<-5.614757537841797e-05){
     s0+=37.0;
     s1+=21.0;
    } else {
     s0+=10.0;
     s1+=559.0;
    }
   }
  } else {
   if(i7<0.008035391569137573){
    s0+=518.0;
   } else {
    if(i42<0.0029091660398989916){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i37<1.1714401245117188){
  if(i50<1.2814998626708984e-05){
   if(i9<1.0114514827728271){
    if(i1<0.0009702444076538086){
     s0+=1645.0;
     s1+=424.0;
    } else {
     s0+=149.0;
     s1+=782.0;
    }
   } else {
    if(i42<0.0009459199500270188){
     s0+=29.0;
     s1+=1922.0;
    } else {
     s0+=377.0;
     s1+=649.0;
    }
   }
  } else {
   if(i14<0.00029934541089460254){
    if(i6<0.0013071894645690918){
     s0+=166.0;
     s1+=25.0;
    } else {
     s0+=16.0;
     s1+=148.0;
    }
   } else {
    if(i70<0.004619228187948465){
     s0+=2923.0;
     s1+=29.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i17<0.0711505115032196){
   if(i4<1.0053558349609375){
    if(i75<-0.008253246545791626){
     s0+=46.0;
     s1+=114.0;
    } else {
     s0+=720.0;
     s1+=82.0;
    }
   } else {
    if(i74<0.007046819664537907){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=278.0;
    }
   }
  } else {
   if(i0<-5.63413996133022e-05){
    if(i12<0.9659326672554016){
     s0+=30.0;
     s1+=8.0;
    } else {
     s0+=80.0;
     s1+=14100.0;
    }
   } else {
    if(i7<0.006487983278930187){
     s0+=95.0;
     s1+=6.0;
    } else {
     s0+=116.0;
     s1+=550.0;
    }
   }
  }
 }
}
if(i1<0.0009577274322509766){
 if(i6<0.000327378511428833){
  if(i15<0.23259365558624268){
   if(i3<0.9994415044784546){
    if(i63<0.8686702251434326){
     s0+=8.0;
     s1+=14.0;
    } else {
     s0+=51493.0;
     s1+=296.0;
    }
   } else {
    if(i26<1.116391897201538){
     s0+=11735.0;
     s1+=2000.0;
    } else {
     s0+=41593.0;
     s1+=739.0;
    }
   }
  } else {
   if(i43<-7.775379344820976e-06){
    if(i17<0.22679224610328674){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=287.0;
    }
   } else {
    s0+=101.0;
   }
  }
 } else {
  if(i52<0.02830231934785843){
   if(i13<1.0191645622253418){
    if(i46<0.9995899200439453){
     s0+=1991.0;
    } else {
     s0+=5887.0;
     s1+=1293.0;
    }
   } else {
    if(i29<0.0005831718444824219){
     s0+=27.0;
     s1+=287.0;
    } else {
     s0+=165.0;
     s1+=14.0;
    }
   }
  } else {
   if(i19<0.9940778613090515){
    if(i35<0.14801762998104095){
     s0+=968.0;
     s1+=233.0;
    } else {
     s0+=43.0;
     s1+=356.0;
    }
   } else {
    if(i24<0.01411798782646656){
     s0+=303.0;
     s1+=45.0;
    } else {
     s0+=190.0;
     s1+=2353.0;
    }
   }
  }
 }
} else {
 if(i24<0.007720647845417261){
  if(i62<0.00040648842696100473){
   if(i32<1.0529288053512573){
    s0+=58.0;
   } else {
    if(i29<0.0007595419883728027){
     s0+=10.0;
     s1+=1346.0;
    } else {
     s0+=69.0;
     s1+=20.0;
    }
   }
  } else {
   if(i4<1.0102919340133667){
    if(i14<0.00027616979787126184){
     s0+=13.0;
     s1+=157.0;
    } else {
     s0+=1505.0;
     s1+=6.0;
    }
   } else {
    s1+=405.0;
   }
  }
 } else {
  if(i7<0.004170738160610199){
   if(i4<1.0111453533172607){
    if(i51<-1.0360055966884829e-05){
     s0+=189.0;
     s1+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=273.0;
   }
  } else {
   if(i65<1.782047183951363e-05){
    if(i49<-7.386714969470631e-06){
     s0+=26.0;
    } else {
     s0+=90.0;
     s1+=14224.0;
    }
   } else {
    s0+=27.0;
   }
  }
 }
}
if(i30<1.1279573440551758){
 if(i4<1.003851056098938){
  if(i13<1.016502857208252){
   if(i26<1.1162974834442139){
    if(i37<1.0434579849243164){
     s0+=18770.0;
     s1+=300.0;
    } else {
     s0+=10697.0;
     s1+=2806.0;
    }
   } else {
    if(i55<0.0021583945490419865){
     s0+=72003.0;
     s1+=365.0;
    } else {
     s0+=7906.0;
     s1+=802.0;
    }
   }
  } else {
   if(i55<0.0006637420738115907){
    if(i37<1.0905578136444092){
     s0+=5.0;
     s1+=265.0;
    } else {
     s0+=50.0;
     s1+=15.0;
    }
   } else {
    if(i35<0.037513311952352524){
     s0+=429.0;
     s1+=18.0;
    } else {
     s0+=165.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i16<0.0019250228069722652){
   if(i14<0.00017747710808180273){
    if(i1<0.0013979673385620117){
     s0+=36.0;
    } else {
     s1+=827.0;
    }
   } else {
    if(i24<0.015248872339725494){
     s0+=2691.0;
     s1+=9.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i7<0.003628257429227233){
    if(i7<0.003155102487653494){
     s0+=553.0;
     s1+=8.0;
    } else {
     s0+=86.0;
     s1+=50.0;
    }
   } else {
    if(i14<0.00042761320946738124){
     s0+=82.0;
     s1+=4813.0;
    } else {
     s0+=346.0;
     s1+=106.0;
    }
   }
  }
 }
} else {
 if(i0<-4.211958366795443e-05){
  if(i34<1.1731728315353394){
   s0+=162.0;
  } else {
   if(i43<-1.1046152394555975e-05){
    if(i17<0.0006538331508636475){
     s0+=67.0;
     s1+=33.0;
    } else {
     s0+=99.0;
     s1+=13384.0;
    }
   } else {
    s0+=48.0;
   }
  }
 } else {
  if(i22<0.0025634574703872204){
   if(i7<0.006891844794154167){
    if(i0<-4.1189858166035265e-05){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=1749.0;
     s1+=16.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i21<0.999834418296814){
    if(i68<1.045425534248352){
     s0+=406.0;
     s1+=19.0;
    } else {
     s0+=11.0;
     s1+=20.0;
    }
   } else {
    if(i23<-0.00026470422744750977){
     s0+=86.0;
     s1+=64.0;
    } else {
     s0+=35.0;
     s1+=223.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i6<0.0003134608268737793){
  if(i24<0.0901748463511467){
   if(i16<0.0014692292315885425){
    if(i31<0.0005481564439833164){
     s0+=66413.0;
     s1+=152.0;
    } else {
     s0+=14902.0;
     s1+=417.0;
    }
   } else {
    if(i32<1.0906792879104614){
     s0+=1943.0;
     s1+=1571.0;
    } else {
     s0+=21064.0;
     s1+=873.0;
    }
   }
  } else {
   s1+=168.0;
  }
 } else {
  if(i24<0.010218918323516846){
   if(i31<0.0007917860057204962){
    if(i13<1.026662826538086){
     s0+=4292.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=13.0;
    }
   } else {
    if(i36<0.00019814888946712017){
     s0+=2172.0;
    } else {
     s0+=1317.0;
     s1+=413.0;
    }
   }
  } else {
   if(i53<0.29206418991088867){
    if(i34<1.2020950317382812){
     s0+=445.0;
     s1+=1925.0;
    } else {
     s0+=1794.0;
     s1+=1379.0;
    }
   } else {
    if(i30<1.1001814603805542){
     s0+=21.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=919.0;
    }
   }
  }
 }
} else {
 if(i7<0.0034542675130069256){
  if(i38<1.0773653984069824){
   if(i33<0.00019890214025508612){
    s0+=56.0;
   } else {
    if(i61<0.001412034034729004){
     s1+=442.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i1<0.002562582492828369){
    s0+=1537.0;
   } else {
    s1+=193.0;
   }
  }
 } else {
  if(i31<0.004022110253572464){
   if(i7<0.004928841255605221){
    if(i31<0.0010575545020401478){
     s0+=72.0;
     s1+=748.0;
    } else {
     s0+=164.0;
     s1+=18.0;
    }
   } else {
    if(i45<1.0007009506225586){
     s0+=47.0;
     s1+=299.0;
    } else {
     s0+=72.0;
     s1+=14858.0;
    }
   }
  } else {
   if(i80<-0.06907930970191956){
    s1+=4.0;
   } else {
    s0+=119.0;
   }
  }
 }
}
if(i0<-0.00011487703159218654){
 if(i17<0.017889678478240967){
  if(i20<-0.0014344453811645508){
   if(i76<-0.18814563751220703){
    if(i16<0.006087927147746086){
     s0+=8.0;
     s1+=3.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i46<1.0025296211242676){
     s0+=307.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i45<0.9999974370002747){
    s0+=4.0;
   } else {
    s1+=29.0;
   }
  }
 } else {
  if(i50<5.692243576049805e-05){
   if(i22<0.002374310279265046){
    if(i46<0.9999593496322632){
     s0+=80.0;
    } else {
     s0+=13.0;
     s1+=236.0;
    }
   } else {
    if(i63<0.9001542925834656){
     s0+=37.0;
     s1+=16.0;
    } else {
     s0+=32.0;
     s1+=14022.0;
    }
   }
  } else {
   s0+=82.0;
  }
 }
} else {
 if(i10<1.013148546218872){
  if(i64<0.0009310573805123568){
   if(i16<0.0016411409014835954){
    if(i6<0.001271069049835205){
     s0+=83080.0;
     s1+=650.0;
    } else {
     s0+=170.0;
     s1+=89.0;
    }
   } else {
    if(i22<0.0009593465365469456){
     s0+=2443.0;
     s1+=2927.0;
    } else {
     s0+=16551.0;
     s1+=658.0;
    }
   }
  } else {
   if(i12<0.9866714477539062){
    if(i15<0.17480289936065674){
     s0+=8760.0;
     s1+=561.0;
    } else {
     s0+=55.0;
     s1+=228.0;
    }
   } else {
    if(i43<-1.701997643976938e-05){
     s0+=335.0;
     s1+=1038.0;
    } else {
     s0+=3091.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i14<0.0005380374495871365){
   if(i6<0.00028270483016967773){
    if(i16<0.0027634799480438232){
     s0+=380.0;
     s1+=14.0;
    } else {
     s1+=88.0;
    }
   } else {
    if(i23<-0.00018829107284545898){
     s0+=150.0;
     s1+=81.0;
    } else {
     s0+=119.0;
     s1+=3003.0;
    }
   }
  } else {
   if(i67<0.10949955880641937){
    s0+=746.0;
   } else {
    s1+=10.0;
   }
  }
 }
}
if(i2<6.35981559753418e-05){
 if(i11<1.0176963806152344){
  if(i7<0.003994484432041645){
   if(i16<0.0010495239403098822){
    if(i19<0.9986253976821899){
     s0+=21695.0;
     s1+=143.0;
    } else {
     s0+=48588.0;
     s1+=51.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=4396.0;
     s1+=910.0;
    } else {
     s0+=17383.0;
     s1+=119.0;
    }
   }
  } else {
   if(i1<-0.00040459632873535156){
    if(i41<1.1399221420288086){
     s0+=19600.0;
     s1+=715.0;
    } else {
     s0+=65.0;
     s1+=193.0;
    }
   } else {
    if(i29<-6.508827209472656e-05){
     s0+=448.0;
     s1+=46.0;
    } else {
     s0+=1426.0;
     s1+=4002.0;
    }
   }
  }
 } else {
  if(i43<-9.218978448188864e-06){
   if(i56<1.0038647651672363){
    if(i49<-4.113172053621383e-06){
     s0+=36.0;
     s1+=5.0;
    } else {
     s0+=122.0;
     s1+=1384.0;
    }
   } else {
    if(i0<-6.505126657430083e-05){
     s0+=15.0;
     s1+=279.0;
    } else {
     s0+=338.0;
     s1+=18.0;
    }
   }
  } else {
   if(i65<4.090748007001821e-06){
    if(i51<-4.168770374235464e-06){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=428.0;
    }
   } else {
    if(i14<0.00023541075643151999){
     s0+=9.0;
     s1+=14.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019787342753261328){
  if(i56<1.0025538206100464){
   if(i41<1.0773653984069824){
    if(i29<0.0005246996879577637){
     s0+=52.0;
     s1+=2143.0;
    } else {
     s0+=236.0;
    }
   } else {
    if(i12<1.0144741535186768){
     s0+=704.0;
     s1+=35.0;
    } else {
     s1+=159.0;
    }
   }
  } else {
   if(i42<0.0009454124374315143){
    s1+=30.0;
   } else {
    s0+=938.0;
   }
  }
 } else {
  if(i33<0.0023778104223310947){
   if(i65<1.5509781405853573e-06){
    s1+=33.0;
   } else {
    s0+=48.0;
   }
  } else {
   if(i11<0.9232906103134155){
    if(i5<6.771087646484375e-05){
     s0+=38.0;
     s1+=60.0;
    } else {
     s0+=6.0;
     s1+=141.0;
    }
   } else {
    if(i27<0.10565221309661865){
     s0+=63.0;
     s1+=498.0;
    } else {
     s0+=18.0;
     s1+=13181.0;
    }
   }
  }
 }
}
if(i37<1.1755388975143433){
 if(i4<1.0036240816116333){
  if(i58<0.0001997045474126935){
   if(i31<0.0007451571291312575){
    if(i42<0.001976317958906293){
     s0+=67129.0;
     s1+=198.0;
    } else {
     s0+=511.0;
     s1+=99.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2614.0;
     s1+=1842.0;
    } else {
     s0+=13291.0;
     s1+=51.0;
    }
   }
  } else {
   if(i2<-4.190206527709961e-05){
    if(i7<0.012835338711738586){
     s0+=12077.0;
     s1+=212.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   } else {
    if(i45<0.9996857643127441){
     s0+=932.0;
     s1+=10.0;
    } else {
     s0+=2449.0;
     s1+=1606.0;
    }
   }
  }
 } else {
  if(i14<0.0002631360257510096){
   if(i12<1.0084679126739502){
    if(i22<0.0010267545003443956){
     s0+=12.0;
     s1+=311.0;
    } else {
     s0+=351.0;
     s1+=261.0;
    }
   } else {
    if(i49<-1.4649745935457759e-05){
     s0+=26.0;
    } else {
     s0+=19.0;
     s1+=2957.0;
    }
   }
  } else {
   if(i60<0.002113163471221924){
    if(i32<1.1713988780975342){
     s0+=3986.0;
     s1+=31.0;
    } else {
     s0+=50.0;
     s1+=121.0;
    }
   } else {
    if(i17<0.10983777046203613){
     s0+=85.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i20<-0.0014972686767578125){
  if(i30<1.1231780052185059){
   if(i2<-9.298324584960938e-06){
    if(i5<1.055002212524414e-05){
     s0+=9480.0;
     s1+=90.0;
    } else {
     s0+=1263.0;
     s1+=158.0;
    }
   } else {
    if(i52<0.043395623564720154){
     s0+=364.0;
     s1+=136.0;
    } else {
     s0+=98.0;
     s1+=223.0;
    }
   }
  } else {
   if(i43<-1.3568533177021891e-05){
    if(i35<0.06965994834899902){
     s0+=97.0;
     s1+=29.0;
    } else {
     s0+=86.0;
     s1+=1362.0;
    }
   } else {
    if(i36<0.006154079455882311){
     s0+=29.0;
     s1+=43.0;
    } else {
     s0+=248.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i51<-4.4803991841035895e-06){
   if(i1<-0.0005838871002197266){
    if(i7<0.008972084149718285){
     s0+=44.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i28<0.0024048658087849617){
     s0+=25.0;
    } else {
     s0+=120.0;
     s1+=14319.0;
    }
   }
  } else {
   if(i35<0.05700388178229332){
    if(i43<-1.456057907489594e-05){
     s1+=11.0;
    } else {
     s0+=950.0;
    }
   } else {
    if(i40<6.562202179338783e-05){
     s0+=184.0;
     s1+=6.0;
    } else {
     s1+=53.0;
    }
   }
  }
 }
}
if(i12<1.0126028060913086){
 if(i6<0.00043386220932006836){
  if(i0<-8.038296800805256e-05){
   if(i60<-0.00951799750328064){
    if(i15<0.0979398787021637){
     s0+=660.0;
     s1+=36.0;
    } else {
     s0+=3.0;
     s1+=59.0;
    }
   } else {
    if(i24<0.013813289813697338){
     s0+=98.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=404.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    if(i16<0.0016998802311718464){
     s0+=23524.0;
     s1+=642.0;
    } else {
     s0+=1293.0;
     s1+=1641.0;
    }
   } else {
    if(i30<1.122455358505249){
     s0+=78933.0;
     s1+=833.0;
    } else {
     s0+=2536.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i16<0.001972469035536051){
   if(i19<1.0107719898223877){
    if(i53<0.044740527868270874){
     s0+=4633.0;
     s1+=101.0;
    } else {
     s0+=77.0;
     s1+=114.0;
    }
   } else {
    if(i50<1.2576580047607422e-05){
     s0+=8.0;
     s1+=250.0;
    } else {
     s0+=158.0;
     s1+=10.0;
    }
   }
  } else {
   if(i34<1.0548467636108398){
    s0+=936.0;
   } else {
    if(i12<0.9769860506057739){
     s0+=933.0;
     s1+=373.0;
    } else {
     s0+=2252.0;
     s1+=6333.0;
    }
   }
  }
 }
} else {
 if(i53<0.033029939979314804){
  if(i20<0.0019825100898742676){
   if(i51<-1.1600339348660782e-05){
    if(i24<0.012593068182468414){
     s0+=320.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i43<-9.521786523691844e-06){
     s0+=2.0;
     s1+=419.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i49<-8.092827556538396e-06){
    s0+=1.0;
   } else {
    s1+=1780.0;
   }
  }
 } else {
  if(i51<-3.4575364225020166e-06){
   if(i0<-6.993785063968971e-05){
    if(i50<-3.266334533691406e-05){
     s0+=2.0;
    } else {
     s1+=10793.0;
    }
   } else {
    if(i34<1.4586446285247803){
     s0+=32.0;
     s1+=182.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   s0+=43.0;
  }
 }
}
if(i5<2.5331974029541016e-05){
 if(i16<0.001712622120976448){
  if(i31<0.0005478570237755775){
   if(i43<-1.8901615476352163e-05){
    if(i78<0.007703721523284912){
     s1+=6.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i9<1.0182666778564453){
     s0+=69278.0;
     s1+=142.0;
    } else {
     s0+=423.0;
     s1+=19.0;
    }
   }
  } else {
   if(i61<-0.0003247559070587158){
    if(i1<-0.0006438791751861572){
     s0+=1846.0;
     s1+=19.0;
    } else {
     s0+=1344.0;
     s1+=452.0;
    }
   } else {
    if(i55<0.0020262685138732195){
     s0+=16323.0;
     s1+=238.0;
    } else {
     s0+=170.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i3<1.000218152999878){
   if(i63<1.1402966976165771){
    if(i74<0.02160308137536049){
     s0+=14303.0;
     s1+=470.0;
    } else {
     s0+=144.0;
     s1+=101.0;
    }
   } else {
    s1+=233.0;
   }
  } else {
   if(i31<0.0011584851890802383){
    if(i37<1.0914386510849){
     s0+=15.0;
     s1+=2323.0;
    } else {
     s0+=1107.0;
     s1+=715.0;
    }
   } else {
    if(i63<1.0760154724121094){
     s0+=5348.0;
     s1+=485.0;
    } else {
     s0+=396.0;
     s1+=656.0;
    }
   }
  }
 }
} else {
 if(i7<0.003963872790336609){
  if(i40<-2.277378189319279e-05){
   if(i36<0.0005890133325010538){
    s1+=570.0;
   } else {
    if(i20<0.002515435218811035){
     s0+=211.0;
    } else {
     s1+=258.0;
    }
   }
  } else {
   if(i18<1.0226188898086548){
    if(i23<0.00017833709716796875){
     s0+=3327.0;
     s1+=42.0;
    } else {
     s0+=534.0;
     s1+=99.0;
    }
   } else {
    if(i21<1.0061399936676025){
     s1+=18.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i23<-0.00032001733779907227){
   if(i38<1.1286907196044922){
    if(i3<1.0063539743423462){
     s0+=590.0;
     s1+=87.0;
    } else {
     s0+=43.0;
     s1+=49.0;
    }
   } else {
    if(i61<-0.007172763347625732){
     s0+=245.0;
     s1+=132.0;
    } else {
     s0+=153.0;
     s1+=689.0;
    }
   }
  } else {
   if(i14<0.0007056489121168852){
    if(i20<-0.0013764500617980957){
     s0+=165.0;
     s1+=588.0;
    } else {
     s0+=88.0;
     s1+=16050.0;
    }
   } else {
    s0+=288.0;
   }
  }
 }
}
if(i9<1.0167112350463867){
 if(i15<0.20281925797462463){
  if(i5<3.975629806518555e-05){
   if(i3<1.0023149251937866){
    if(i31<0.0007064561941660941){
     s0+=77409.0;
     s1+=358.0;
    } else {
     s0+=30540.0;
     s1+=3231.0;
    }
   } else {
    if(i45<1.0024197101593018){
     s0+=1502.0;
     s1+=1193.0;
    } else {
     s0+=3136.0;
     s1+=493.0;
    }
   }
  } else {
   if(i37<1.171312928199768){
    if(i26<1.1180615425109863){
     s0+=10.0;
     s1+=791.0;
    } else {
     s0+=1347.0;
     s1+=164.0;
    }
   } else {
    if(i17<0.06764742732048035){
     s0+=271.0;
     s1+=314.0;
    } else {
     s0+=104.0;
     s1+=1663.0;
    }
   }
  }
 } else {
  if(i7<0.006361192557960749){
   if(i43<-3.665180702228099e-05){
    s1+=18.0;
   } else {
    if(i16<0.0016374955885112286){
     s0+=270.0;
     s1+=3.0;
    } else {
     s0+=80.0;
     s1+=11.0;
    }
   }
  } else {
   if(i37<1.126117467880249){
    s0+=9.0;
   } else {
    if(i24<0.006782203912734985){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=1448.0;
    }
   }
  }
 }
} else {
 if(i43<-1.444595091015799e-05){
  if(i15<0.16471415758132935){
   if(i28<0.0012467129854485393){
    if(i26<1.116804838180542){
     s1+=1427.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i7<0.004954990465193987){
     s0+=803.0;
     s1+=101.0;
    } else {
     s0+=140.0;
     s1+=859.0;
    }
   }
  } else {
   if(i49<-6.080845196265727e-06){
    if(i41<1.1300078630447388){
     s0+=19.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<-0.00047975778579711914){
     s0+=62.0;
     s1+=119.0;
    } else {
     s0+=49.0;
     s1+=11864.0;
    }
   }
  }
 } else {
  if(i16<0.002688527572900057){
   if(i48<1.126817733165808e-05){
    if(i33<0.00045167066855356097){
     s1+=1.0;
    } else {
     s0+=699.0;
     s1+=1.0;
    }
   } else {
    if(i63<1.0971429347991943){
     s0+=162.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=19.0;
    }
   }
  } else {
   if(i43<-7.118715984688606e-06){
    if(i7<0.003462829627096653){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=126.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i0<-7.643571007065475e-05){
  if(i30<1.0743229389190674){
   if(i27<0.0807824432849884){
    if(i12<0.9790053367614746){
     s0+=996.0;
     s1+=10.0;
    } else {
     s0+=123.0;
     s1+=21.0;
    }
   } else {
    if(i51<-6.136637239251286e-06){
     s0+=50.0;
     s1+=113.0;
    } else {
     s0+=59.0;
    }
   }
  } else {
   if(i77<-0.0014944665599614382){
    if(i38<1.127584457397461){
     s0+=98.0;
     s1+=149.0;
    } else {
     s0+=55.0;
     s1+=1786.0;
    }
   } else {
    if(i8<0.9446711540222168){
     s0+=136.0;
     s1+=103.0;
    } else {
     s0+=101.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i31<0.0007312713423743844){
   if(i43<-2.0090134057682008e-05){
    if(i29<0.00042626261711120605){
     s1+=41.0;
    } else {
     s0+=143.0;
    }
   } else {
    if(i33<0.00028868974186480045){
     s0+=17417.0;
     s1+=345.0;
    } else {
     s0+=64118.0;
     s1+=163.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i14<0.0002495260850992054){
     s0+=486.0;
     s1+=3105.0;
    } else {
     s0+=3156.0;
     s1+=170.0;
    }
   } else {
    if(i17<0.20087909698486328){
     s0+=27482.0;
     s1+=1151.0;
    } else {
     s0+=115.0;
     s1+=386.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i26<1.116804838180542){
   if(i31<0.0011436661006882787){
    if(i36<0.00015690925647504628){
     s0+=2.0;
    } else {
     s1+=2371.0;
    }
   } else {
    s0+=46.0;
   }
  } else {
   if(i33<0.0023994543589651585){
    s0+=1987.0;
   } else {
    if(i57<0.009139633737504482){
     s1+=84.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i13<0.9057977795600891){
   if(i52<0.034055016934871674){
    if(i29<0.0007709860801696777){
     s0+=28.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i72<-0.014494925737380981){
     s1+=86.0;
    } else {
     s0+=9.0;
     s1+=9.0;
    }
   }
  } else {
   if(i30<1.07395601272583){
    if(i72<0.004340618848800659){
     s0+=4.0;
     s1+=198.0;
    } else {
     s0+=30.0;
     s1+=21.0;
    }
   } else {
    if(i30<1.1342540979385376){
     s0+=35.0;
     s1+=2980.0;
    } else {
     s1+=10598.0;
    }
   }
  }
 }
}
if(i1<0.0009607076644897461){
 if(i6<0.0003286004066467285){
  if(i17<0.23627251386642456){
   if(i54<0.9988726377487183){
    if(i9<0.7918224334716797){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=39268.0;
     s1+=173.0;
    }
   } else {
    if(i34<1.0924948453903198){
     s0+=13100.0;
     s1+=1878.0;
    } else {
     s0+=52325.0;
     s1+=1029.0;
    }
   }
  } else {
   if(i33<0.006186075508594513){
    if(i43<-7.445619758073008e-06){
     s0+=1.0;
     s1+=43.0;
    } else {
     s0+=71.0;
    }
   } else {
    s1+=282.0;
   }
  }
 } else {
  if(i35<0.020671531558036804){
   if(i24<0.007906321436166763){
    if(i23<0.00014913082122802734){
     s0+=6319.0;
     s1+=113.0;
    } else {
     s0+=188.0;
     s1+=107.0;
    }
   } else {
    if(i32<1.1209434270858765){
     s0+=83.0;
     s1+=596.0;
    } else {
     s0+=651.0;
     s1+=86.0;
    }
   }
  } else {
   if(i44<0.12093847990036011){
    if(i39<-0.00015344351413659751){
     s0+=684.0;
     s1+=1408.0;
    } else {
     s0+=1521.0;
     s1+=436.0;
    }
   } else {
    if(i0<-5.504777800524607e-05){
     s0+=24.0;
     s1+=1519.0;
    } else {
     s0+=176.0;
     s1+=320.0;
    }
   }
  }
 }
} else {
 if(i33<0.0023648133501410484){
  if(i38<1.0869626998901367){
   if(i34<1.116804838180542){
    if(i37<1.0451856851577759){
     s0+=58.0;
    } else {
     s0+=2.0;
     s1+=2153.0;
    }
   } else {
    s0+=99.0;
   }
  } else {
   if(i49<-2.743727236520499e-06){
    if(i28<0.0023938624653965235){
     s0+=1766.0;
     s1+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i43<-1.89477523235837e-05){
     s0+=12.0;
     s1+=287.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i27<0.042526036500930786){
   if(i75<-0.003499448299407959){
    if(i46<1.000319242477417){
     s0+=19.0;
     s1+=1.0;
    } else {
     s1+=133.0;
    }
   } else {
    if(i39<0.0008420453523285687){
     s0+=33.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i0<-8.529283513780683e-05){
    if(i9<0.8335492014884949){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=13072.0;
    }
   } else {
    if(i40<7.708386692684144e-05){
     s1+=538.0;
    } else {
     s0+=50.0;
     s1+=193.0;
    }
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i16<0.0017301690531894565){
  if(i28<0.0006204007659107447){
   if(i58<0.00011799120693467557){
    if(i7<0.0028859232552349567){
     s0+=21074.0;
     s1+=50.0;
    } else {
     s0+=1137.0;
     s1+=117.0;
    }
   } else {
    if(i46<1.0001609325408936){
     s0+=4730.0;
     s1+=173.0;
    } else {
     s0+=1074.0;
     s1+=426.0;
    }
   }
  } else {
   if(i38<1.1354830265045166){
    if(i36<0.0018043371383100748){
     s0+=50753.0;
    } else {
     s0+=8876.0;
     s1+=78.0;
    }
   } else {
    if(i37<1.1362245082855225){
     s0+=49.0;
     s1+=95.0;
    } else {
     s0+=2059.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i19<0.9950937032699585){
   if(i63<1.1169339418411255){
    if(i75<-0.010734349489212036){
     s0+=54.0;
     s1+=77.0;
    } else {
     s0+=15350.0;
     s1+=482.0;
    }
   } else {
    if(i53<0.06687165796756744){
     s0+=76.0;
     s1+=12.0;
    } else {
     s0+=10.0;
     s1+=312.0;
    }
   }
  } else {
   if(i35<0.011277423240244389){
    if(i45<1.000781536102295){
     s0+=3007.0;
     s1+=33.0;
    } else {
     s0+=589.0;
     s1+=386.0;
    }
   } else {
    if(i28<0.001255170558579266){
     s0+=226.0;
     s1+=2411.0;
    } else {
     s0+=1493.0;
     s1+=923.0;
    }
   }
  }
 }
} else {
 if(i7<0.00428586034104228){
  if(i14<0.00022998815984465182){
   if(i21<1.0063735246658325){
    if(i1<0.00026172399520874023){
     s0+=489.0;
     s1+=10.0;
    } else {
     s0+=100.0;
     s1+=100.0;
    }
   } else {
    if(i43<-0.0001643391151446849){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=1072.0;
    }
   }
  } else {
   if(i48<-4.730153159471229e-05){
    s1+=36.0;
   } else {
    if(i80<-0.015984177589416504){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=3876.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i23<-0.0003319084644317627){
   if(i17<0.08385396003723145){
    if(i24<0.05545348674058914){
     s0+=845.0;
     s1+=146.0;
    } else {
     s0+=72.0;
     s1+=135.0;
    }
   } else {
    if(i26<1.2789254188537598){
     s0+=89.0;
     s1+=7.0;
    } else {
     s0+=137.0;
     s1+=762.0;
    }
   }
  } else {
   if(i27<0.16996267437934875){
    if(i1<0.0009626150131225586){
     s0+=304.0;
     s1+=895.0;
    } else {
     s0+=54.0;
     s1+=3236.0;
    }
   } else {
    if(i38<1.0810401439666748){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=12271.0;
    }
   }
  }
 }
}
if(i7<0.008001316338777542){
 if(i22<0.0009259162470698357){
  if(i5<7.68899917602539e-06){
   if(i53<0.011805991642177105){
    if(i8<0.9945821762084961){
     s0+=168.0;
     s1+=99.0;
    } else {
     s0+=18809.0;
     s1+=158.0;
    }
   } else {
    if(i0<-1.999445157707669e-05){
     s0+=635.0;
     s1+=776.0;
    } else {
     s0+=9528.0;
     s1+=671.0;
    }
   }
  } else {
   if(i36<0.000211961887544021){
    if(i18<1.011541485786438){
     s0+=2831.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i51<-3.910563464160077e-06){
     s0+=175.0;
     s1+=3554.0;
    } else {
     s0+=243.0;
    }
   }
  }
 } else {
  if(i19<1.014389157295227){
   if(i5<1.806020736694336e-05){
    if(i11<1.0169050693511963){
     s0+=74018.0;
     s1+=508.0;
    } else {
     s0+=506.0;
     s1+=134.0;
    }
   } else {
    if(i36<0.0019520414061844349){
     s0+=4203.0;
     s1+=5.0;
    } else {
     s0+=1159.0;
     s1+=739.0;
    }
   }
  } else {
   if(i37<1.1408452987670898){
    s0+=14.0;
   } else {
    if(i4<1.0052955150604248){
     s0+=11.0;
    } else {
     s1+=1201.0;
    }
   }
  }
 }
} else {
 if(i41<1.0495028495788574){
  if(i4<1.0006186962127686){
   if(i17<0.10238727927207947){
    if(i19<0.9973641037940979){
     s0+=3427.0;
     s1+=73.0;
    } else {
     s0+=158.0;
     s1+=35.0;
    }
   } else {
    if(i12<0.964809238910675){
     s0+=45.0;
     s1+=27.0;
    } else {
     s0+=10.0;
     s1+=69.0;
    }
   }
  } else {
   if(i4<1.005980372428894){
    if(i48<1.5737339708721265e-05){
     s0+=11.0;
     s1+=133.0;
    } else {
     s0+=177.0;
     s1+=125.0;
    }
   } else {
    if(i4<1.0061981678009033){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=350.0;
    }
   }
  }
 } else {
  if(i4<0.9966298341751099){
   if(i33<0.019956793636083603){
    if(i34<1.4606740474700928){
     s0+=381.0;
     s1+=19.0;
    } else {
     s0+=41.0;
     s1+=93.0;
    }
   } else {
    s1+=149.0;
   }
  } else {
   if(i14<0.0018974182894453406){
    if(i39<-0.00023515262000728399){
     s0+=31.0;
     s1+=13694.0;
    } else {
     s0+=154.0;
     s1+=1454.0;
    }
   } else {
    s0+=39.0;
   }
  }
 }
}
if(i4<1.0037418603897095){
 if(i24<0.06413033604621887){
  if(i25<1.0214505195617676){
   if(i26<1.1162974834442139){
    if(i24<0.0076437415555119514){
     s0+=23002.0;
     s1+=561.0;
    } else {
     s0+=6636.0;
     s1+=2437.0;
    }
   } else {
    if(i41<1.1135729551315308){
     s0+=79138.0;
     s1+=1070.0;
    } else {
     s0+=1941.0;
     s1+=489.0;
    }
   }
  } else {
   if(i45<1.0002979040145874){
    if(i9<1.0968430042266846){
     s0+=532.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i26<1.276656150817871){
     s0+=145.0;
     s1+=584.0;
    } else {
     s0+=526.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i1<-0.002878338098526001){
   s0+=256.0;
  } else {
   if(i58<0.004160603974014521){
    if(i25<0.8606277704238892){
     s0+=22.0;
     s1+=58.0;
    } else {
     s0+=6.0;
     s1+=1031.0;
    }
   } else {
    if(i69<1.715090434117883e-07){
     s0+=41.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019320198334753513){
  if(i33<0.0012082679895684123){
   if(i29<0.0005208849906921387){
    if(i26<1.116804838180542){
     s0+=6.0;
     s1+=2359.0;
    } else {
     s0+=88.0;
    }
   } else {
    s0+=768.0;
   }
  } else {
   if(i14<0.00016487998072989285){
    if(i18<1.013994812965393){
     s0+=15.0;
    } else {
     s1+=253.0;
    }
   } else {
    s0+=3388.0;
   }
  }
 } else {
  if(i23<-0.00014060735702514648){
   if(i31<0.0013204060960561037){
    if(i3<1.0073041915893555){
     s0+=108.0;
     s1+=21.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i52<0.0033919410780072212){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=878.0;
    }
   }
  } else {
   if(i17<0.0662597119808197){
    if(i31<0.0007608917658217251){
     s0+=34.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=177.0;
    }
   } else {
    if(i26<1.7041046619415283){
     s0+=28.0;
     s1+=13837.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i8<1.0143275260925293){
 if(i55<0.004527131095528603){
  if(i3<1.0024285316467285){
   if(i29<7.742643356323242e-05){
    if(i16<0.0010178829543292522){
     s0+=54903.0;
     s1+=101.0;
    } else {
     s0+=20489.0;
     s1+=652.0;
    }
   } else {
    if(i35<0.011442042887210846){
     s0+=17942.0;
     s1+=417.0;
    } else {
     s0+=11766.0;
     s1+=2550.0;
    }
   }
  } else {
   if(i1<0.0013669729232788086){
    if(i24<0.015293262898921967){
     s0+=4301.0;
     s1+=578.0;
    } else {
     s0+=681.0;
     s1+=757.0;
    }
   } else {
    if(i49<-5.320941454556305e-06){
     s0+=329.0;
     s1+=1.0;
    } else {
     s0+=95.0;
     s1+=1442.0;
    }
   }
  }
 } else {
  if(i27<0.13485679030418396){
   if(i2<-1.3649463653564453e-05){
    if(i16<0.00843917764723301){
     s0+=3778.0;
     s1+=155.0;
    } else {
     s0+=52.0;
     s1+=68.0;
    }
   } else {
    if(i76<0.024747520685195923){
     s0+=230.0;
     s1+=741.0;
    } else {
     s0+=186.0;
     s1+=13.0;
    }
   }
  } else {
   if(i16<0.0014702297048643231){
    s0+=116.0;
   } else {
    if(i1<-0.0010373890399932861){
     s0+=149.0;
     s1+=155.0;
    } else {
     s0+=95.0;
     s1+=2492.0;
    }
   }
  }
 }
} else {
 if(i16<0.0013918010517954826){
  if(i19<1.014061689376831){
   if(i36<0.0007872786372900009){
    s1+=90.0;
   } else {
    if(i35<0.04086052626371384){
     s0+=493.0;
    } else {
     s0+=123.0;
     s1+=13.0;
    }
   }
  } else {
   if(i0<-7.103283132892102e-05){
    s1+=411.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i37<1.1672112941741943){
   if(i14<0.0003199382626917213){
    if(i26<1.3394954204559326){
     s0+=4.0;
     s1+=2061.0;
    } else {
     s0+=174.0;
     s1+=33.0;
    }
   } else {
    if(i26<1.602540135383606){
     s0+=356.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   }
  } else {
   if(i7<0.0031243283301591873){
    if(i38<1.135488748550415){
     s0+=20.0;
     s1+=2.0;
    } else {
     s1+=42.0;
    }
   } else {
    s1+=11766.0;
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i13<1.017143964767456){
  if(i3<1.0023193359375){
   if(i16<0.0015701651573181152){
    if(i42<0.00047321649617515504){
     s0+=28593.0;
     s1+=559.0;
    } else {
     s0+=56929.0;
     s1+=145.0;
    }
   } else {
    if(i1<-0.0005293488502502441){
     s0+=18876.0;
     s1+=599.0;
    } else {
     s0+=4014.0;
     s1+=2842.0;
    }
   }
  } else {
   if(i67<0.05206194519996643){
    if(i45<1.0021053552627563){
     s0+=686.0;
     s1+=411.0;
    } else {
     s0+=3005.0;
     s1+=198.0;
    }
   } else {
    if(i30<1.0864568948745728){
     s0+=1029.0;
     s1+=227.0;
    } else {
     s0+=354.0;
     s1+=1444.0;
    }
   }
  }
 } else {
  if(i5<8.285045623779297e-06){
   if(i35<0.12038625776767731){
    if(i44<0.16053563356399536){
     s0+=456.0;
     s1+=38.0;
    } else {
     s0+=106.0;
     s1+=69.0;
    }
   } else {
    s1+=90.0;
   }
  } else {
   if(i29<0.0006488561630249023){
    if(i15<0.06573182344436646){
     s0+=43.0;
     s1+=9.0;
    } else {
     s0+=69.0;
     s1+=1287.0;
    }
   } else {
    if(i27<0.22026437520980835){
     s0+=297.0;
     s1+=17.0;
    } else {
     s0+=13.0;
     s1+=143.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i41<1.0773653984069824){
   if(i34<1.116804838180542){
    if(i50<1.2010335922241211e-05){
     s0+=8.0;
     s1+=2117.0;
    } else {
     s0+=106.0;
     s1+=28.0;
    }
   } else {
    s0+=422.0;
   }
  } else {
   if(i34<1.1174830198287964){
    if(i51<-1.3194072380429134e-05){
     s0+=43.0;
    } else {
     s0+=3.0;
     s1+=186.0;
    }
   } else {
    s0+=1342.0;
   }
  }
 } else {
  if(i15<0.03565865755081177){
   if(i76<-0.07877638936042786){
    if(i45<1.0023436546325684){
     s0+=18.0;
     s1+=2.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i19<1.0143818855285645){
     s0+=48.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i37<1.116449236869812){
    s0+=7.0;
   } else {
    if(i2<0.00012069940567016602){
     s0+=53.0;
     s1+=2415.0;
    } else {
     s0+=2.0;
     s1+=11418.0;
    }
   }
  }
 }
}
if(i19<1.0083096027374268){
 if(i27<0.21416786313056946){
  if(i5<1.329183578491211e-05){
   if(i31<0.000717135495506227){
    if(i60<-0.0008678138256072998){
     s0+=10747.0;
     s1+=195.0;
    } else {
     s0+=66518.0;
     s1+=246.0;
    }
   } else {
    if(i45<0.9997760057449341){
     s0+=10880.0;
     s1+=110.0;
    } else {
     s0+=16784.0;
     s1+=2541.0;
    }
   }
  } else {
   if(i2<6.562471389770508e-05){
    if(i7<0.004132079426199198){
     s0+=6738.0;
     s1+=144.0;
    } else {
     s0+=2250.0;
     s1+=2946.0;
    }
   } else {
    if(i35<0.024571789428591728){
     s0+=468.0;
     s1+=315.0;
    } else {
     s0+=131.0;
     s1+=933.0;
    }
   }
  }
 } else {
  if(i36<0.002080804668366909){
   s0+=171.0;
  } else {
   if(i31<0.0005057756206952035){
    s0+=76.0;
   } else {
    if(i38<1.1219151020050049){
     s0+=53.0;
     s1+=66.0;
    } else {
     s0+=45.0;
     s1+=2791.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i26<1.1180615425109863){
   s1+=2029.0;
  } else {
   s0+=1639.0;
  }
 } else {
  if(i42<0.00034326378954574466){
   s0+=48.0;
  } else {
   if(i6<0.0003571510314941406){
    if(i52<0.06101241335272789){
     s0+=139.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i15<0.05981042981147766){
     s0+=13.0;
     s1+=102.0;
    } else {
     s0+=3.0;
     s1+=11698.0;
    }
   }
  }
 }
}
if(i21<1.0044653415679932){
 if(i7<0.00727490521967411){
  if(i7<0.0036514331586658955){
   if(i58<0.00018966448260471225){
    if(i64<-0.0008182211313396692){
     s0+=130.0;
     s1+=33.0;
    } else {
     s0+=74906.0;
     s1+=387.0;
    }
   } else {
    if(i36<0.000309533003019169){
     s0+=505.0;
     s1+=421.0;
    } else {
     s0+=12595.0;
     s1+=254.0;
    }
   }
  } else {
   if(i11<1.0082582235336304){
    if(i33<0.0010540186194702983){
     s0+=2526.0;
     s1+=1507.0;
    } else {
     s0+=14686.0;
     s1+=369.0;
    }
   } else {
    if(i1<7.957220077514648e-05){
     s0+=1066.0;
     s1+=102.0;
    } else {
     s0+=208.0;
     s1+=977.0;
    }
   }
  }
 } else {
  if(i15<0.08420446515083313){
   if(i48<1.995609090954531e-05){
    if(i38<1.0869576930999756){
     s0+=1.0;
     s1+=162.0;
    } else {
     s0+=13.0;
     s1+=26.0;
    }
   } else {
    if(i19<0.9992040395736694){
     s0+=4408.0;
     s1+=167.0;
    } else {
     s0+=118.0;
     s1+=48.0;
    }
   }
  } else {
   if(i3<1.000230073928833){
    if(i38<1.2114272117614746){
     s0+=522.0;
     s1+=42.0;
    } else {
     s0+=16.0;
     s1+=256.0;
    }
   } else {
    if(i41<1.063460111618042){
     s0+=228.0;
     s1+=464.0;
    } else {
     s0+=86.0;
     s1+=2761.0;
    }
   }
  }
 }
} else {
 if(i7<0.0028368490748107433){
  if(i48<-1.621927549422253e-05){
   if(i56<1.0024518966674805){
    if(i58<-0.00020207719353493303){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=372.0;
    }
   } else {
    if(i20<0.002772808074951172){
     s0+=33.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i19<1.021836757659912){
    if(i33<0.0005244964268058538){
     s0+=401.0;
     s1+=23.0;
    } else {
     s0+=2672.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i23<-0.00041496753692626953){
   if(i24<0.05348315089941025){
    if(i51<-1.7669855878921226e-05){
     s0+=32.0;
     s1+=115.0;
    } else {
     s0+=553.0;
     s1+=49.0;
    }
   } else {
    if(i53<0.20792734622955322){
     s0+=57.0;
     s1+=55.0;
    } else {
     s0+=7.0;
     s1+=201.0;
    }
   }
  } else {
   if(i49<-6.413918072212255e-06){
    s0+=288.0;
   } else {
    if(i14<0.0007079356582835317){
     s0+=418.0;
     s1+=15443.0;
    } else {
     s0+=135.0;
    }
   }
  }
 }
}
if(i0<-9.084412158699706e-05){
 if(i15<0.0413852334022522){
  if(i74<0.034096673130989075){
   if(i55<0.0009928883519023657){
    s1+=6.0;
   } else {
    if(i40<-8.082546628429554e-06){
     s1+=14.0;
    } else {
     s0+=719.0;
     s1+=23.0;
    }
   }
  } else {
   if(i33<0.014635132625699043){
    if(i29<0.0004292726516723633){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=124.0;
    }
   } else {
    if(i32<1.453177809715271){
     s0+=44.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i50<2.8192996978759766e-05){
   if(i69<6.265923730097711e-06){
    if(i8<0.9243426322937012){
     s0+=64.0;
     s1+=48.0;
    } else {
     s0+=123.0;
     s1+=15454.0;
    }
   } else {
    s0+=90.0;
   }
  } else {
   if(i55<0.0024069268256425858){
    s0+=120.0;
   } else {
    s1+=42.0;
   }
  }
 }
} else {
 if(i11<1.017331600189209){
  if(i28<0.0010551821906119585){
   if(i7<0.003647779580205679){
    if(i20<0.001120835542678833){
     s0+=29589.0;
     s1+=762.0;
    } else {
     s1+=343.0;
    }
   } else {
    if(i51<-2.4023729565669782e-06){
     s0+=457.0;
     s1+=3046.0;
    } else {
     s0+=2354.0;
     s1+=6.0;
    }
   }
  } else {
   if(i7<0.014794294722378254){
    if(i57<0.0023610407952219248){
     s0+=76721.0;
     s1+=876.0;
    } else {
     s0+=4807.0;
     s1+=729.0;
    }
   } else {
    if(i48<4.5278564357431605e-05){
     s0+=38.0;
     s1+=347.0;
    } else {
     s0+=295.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i32<1.0905578136444092){
   s1+=894.0;
  } else {
   if(i34<1.1758689880371094){
    if(i30<1.0752487182617188){
     s0+=3.0;
     s1+=64.0;
    } else {
     s0+=702.0;
     s1+=31.0;
    }
   } else {
    if(i5<1.2934207916259766e-05){
     s0+=433.0;
     s1+=102.0;
    } else {
     s0+=278.0;
     s1+=928.0;
    }
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i7<0.007675830740481615){
  if(i2<3.331899642944336e-05){
   if(i26<1.1162974834442139){
    if(i7<0.0036615445278584957){
     s0+=25535.0;
     s1+=827.0;
    } else {
     s0+=2745.0;
     s1+=1769.0;
    }
   } else {
    if(i41<1.114506483078003){
     s0+=73559.0;
     s1+=541.0;
    } else {
     s0+=2274.0;
     s1+=259.0;
    }
   }
  } else {
   if(i33<0.0018365534488111734){
    if(i33<0.001018950017169118){
     s0+=1875.0;
     s1+=527.0;
    } else {
     s0+=3301.0;
     s1+=3.0;
    }
   } else {
    if(i32<1.244448184967041){
     s0+=102.0;
     s1+=265.0;
    } else {
     s0+=191.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i4<0.9980120658874512){
   if(i17<0.15728965401649475){
    if(i76<-0.15385615825653076){
     s0+=53.0;
     s1+=57.0;
    } else {
     s0+=4311.0;
     s1+=152.0;
    }
   } else {
    if(i22<0.00465364009141922){
     s0+=18.0;
    } else {
     s0+=29.0;
     s1+=285.0;
    }
   }
  } else {
   if(i77<-0.0006813551299273968){
    if(i48<1.701656583463773e-05){
     s0+=1.0;
     s1+=1067.0;
    } else {
     s0+=237.0;
     s1+=1734.0;
    }
   } else {
    if(i41<1.0666844844818115){
     s0+=342.0;
     s1+=155.0;
    } else {
     s0+=20.0;
     s1+=202.0;
    }
   }
  }
 }
} else {
 if(i0<-7.31216132408008e-05){
  if(i14<0.0007059713825583458){
   if(i51<-6.022286106599495e-05){
    s0+=36.0;
   } else {
    if(i27<0.0003789663314819336){
     s0+=37.0;
     s1+=18.0;
    } else {
     s0+=38.0;
     s1+=14637.0;
    }
   }
  } else {
   s0+=370.0;
  }
 } else {
  if(i50<1.1980533599853516e-05){
   if(i42<0.0010381564497947693){
    if(i32<1.0494179725646973){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=1079.0;
    }
   } else {
    if(i14<0.0002593739191070199){
     s1+=319.0;
    } else {
     s0+=225.0;
     s1+=72.0;
    }
   }
  } else {
   if(i16<0.003194065298885107){
    if(i2<0.00014650821685791016){
     s0+=1352.0;
     s1+=40.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i14<0.0010762818856164813){
     s0+=5.0;
     s1+=167.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i4<1.0038666725158691){
 if(i15<0.2074921429157257){
  if(i16<0.0017241251189261675){
   if(i36<0.000330680311890319){
    if(i32<1.05497145652771){
     s0+=16675.0;
     s1+=115.0;
    } else {
     s0+=4470.0;
     s1+=534.0;
    }
   } else {
    if(i29<0.00010913610458374023){
     s0+=55047.0;
     s1+=38.0;
    } else {
     s0+=13200.0;
     s1+=260.0;
    }
   }
  } else {
   if(i4<0.9979987144470215){
    if(i74<0.021597784012556076){
     s0+=16824.0;
     s1+=356.0;
    } else {
     s0+=369.0;
     s1+=153.0;
    }
   } else {
    if(i14<0.0003541158512234688){
     s0+=2493.0;
     s1+=3583.0;
    } else {
     s0+=2856.0;
     s1+=405.0;
    }
   }
  }
 } else {
  if(i7<0.006490905769169331){
   if(i16<0.001326687983237207){
    if(i43<-1.5152096239035018e-05){
     s1+=1.0;
    } else {
     s0+=210.0;
     s1+=4.0;
    }
   } else {
    if(i48<3.047952486667782e-05){
     s0+=35.0;
     s1+=35.0;
    } else {
     s0+=72.0;
     s1+=3.0;
    }
   }
  } else {
   if(i16<0.0024844114668667316){
    if(i70<0.0015637296019122005){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i5<-2.2739171981811523e-05){
     s0+=1.0;
     s1+=59.0;
    } else {
     s0+=1.0;
     s1+=1020.0;
    }
   }
  }
 }
} else {
 if(i16<0.0018730931915342808){
  if(i21<1.0111279487609863){
   if(i29<0.0005083680152893066){
    if(i37<1.081012487411499){
     s1+=218.0;
    } else {
     s0+=290.0;
     s1+=36.0;
    }
   } else {
    s0+=2790.0;
   }
  } else {
   if(i1<0.0018052458763122559){
    s0+=23.0;
   } else {
    s1+=991.0;
   }
  }
 } else {
  if(i7<0.004092545248568058){
   if(i32<1.0893936157226562){
    if(i22<0.00020696429419331253){
     s0+=124.0;
    } else {
     s1+=216.0;
    }
   } else {
    if(i3<1.0069777965545654){
     s0+=819.0;
     s1+=17.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i3<1.0018295049667358){
    if(i38<1.1869213581085205){
     s0+=82.0;
    } else {
     s1+=90.0;
    }
   } else {
    if(i15<0.14832907915115356){
     s0+=269.0;
     s1+=3457.0;
    } else {
     s0+=28.0;
     s1+=12532.0;
    }
   }
  }
 }
}
if(i1<0.0009647011756896973){
 if(i0<-7.644675497431308e-05){
  if(i61<-0.006951391696929932){
   if(i30<1.1247289180755615){
    if(i74<0.08574675023555756){
     s0+=990.0;
     s1+=32.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i14<0.00044621090637519956){
     s0+=55.0;
     s1+=33.0;
    } else {
     s0+=7.0;
     s1+=60.0;
    }
   }
  } else {
   if(i39<-0.000319272861815989){
    if(i42<0.0014883441617712379){
     s0+=77.0;
     s1+=70.0;
    } else {
     s0+=58.0;
     s1+=2035.0;
    }
   } else {
    if(i4<1.0026934146881104){
     s0+=416.0;
     s1+=95.0;
    } else {
     s0+=26.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i24<0.007394785992801189){
   if(i36<0.000661549624055624){
    if(i61<-0.0005075633525848389){
     s0+=794.0;
     s1+=343.0;
    } else {
     s0+=23880.0;
     s1+=370.0;
    }
   } else {
    if(i59<-0.0015395989175885916){
     s0+=202.0;
     s1+=48.0;
    } else {
     s0+=48225.0;
     s1+=33.0;
    }
   }
  } else {
   if(i33<0.0011842509265989065){
    if(i31<0.0007217588135972619){
     s0+=6841.0;
     s1+=103.0;
    } else {
     s0+=761.0;
     s1+=2799.0;
    }
   } else {
    if(i15<0.20555803179740906){
     s0+=32251.0;
     s1+=1411.0;
    } else {
     s0+=180.0;
     s1+=405.0;
    }
   }
  }
 }
} else {
 if(i7<0.0029292991384863853){
  if(i48<-1.548915315652266e-05){
   if(i61<0.001821279525756836){
    if(i29<0.0010804533958435059){
     s1+=372.0;
    } else {
     s0+=32.0;
     s1+=1.0;
    }
   } else {
    if(i11<1.0558538436889648){
     s0+=38.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i49<-2.557535481173545e-06){
    if(i39<0.00016553819295950234){
     s0+=1277.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i16<0.0010821225587278605){
     s0+=56.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i69<5.255182259134017e-06){
   if(i46<0.9983633756637573){
    s0+=173.0;
   } else {
    if(i2<9.447336196899414e-05){
     s0+=276.0;
     s1+=1915.0;
    } else {
     s0+=63.0;
     s1+=13753.0;
    }
   }
  } else {
   s0+=118.0;
  }
 }
}
if(i27<0.19975057244300842){
 if(i2<6.312131881713867e-05){
  if(i7<0.00399442482739687){
   if(i28<0.0006515684654004872){
    if(i32<1.05497145652771){
     s0+=20207.0;
     s1+=114.0;
    } else {
     s0+=8690.0;
     s1+=980.0;
    }
   } else {
    if(i47<1.0386478900909424){
     s0+=62869.0;
     s1+=237.0;
    } else {
     s0+=127.0;
     s1+=27.0;
    }
   }
  } else {
   if(i2<-2.5331974029541016e-05){
    if(i5<-7.569789886474609e-06){
     s0+=15565.0;
     s1+=93.0;
    } else {
     s0+=3974.0;
     s1+=653.0;
    }
   } else {
    if(i28<0.0012050208169966936){
     s0+=311.0;
     s1+=2477.0;
    } else {
     s0+=1541.0;
     s1+=1713.0;
    }
   }
  }
 } else {
  if(i24<0.007382198702543974){
   if(i50<1.2576580047607422e-05){
    if(i69<1.2610803423740435e-06){
     s0+=191.0;
     s1+=1555.0;
    } else {
     s0+=107.0;
     s1+=1.0;
    }
   } else {
    if(i26<1.185887336730957){
     s0+=1415.0;
     s1+=20.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i16<0.002056996338069439){
    if(i4<1.010089635848999){
     s0+=223.0;
     s1+=35.0;
    } else {
     s1+=360.0;
    }
   } else {
    if(i19<1.0087884664535522){
     s0+=198.0;
     s1+=1141.0;
    } else {
     s0+=24.0;
     s1+=2286.0;
    }
   }
  }
 }
} else {
 if(i2<1.9490718841552734e-05){
  if(i37<1.1759499311447144){
   if(i43<-3.2524556445423514e-05){
    s1+=41.0;
   } else {
    if(i4<1.0021750926971436){
     s0+=444.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   }
  } else {
   if(i31<0.0007680805865675211){
    s0+=89.0;
   } else {
    if(i39<-4.553272447083145e-06){
     s0+=35.0;
     s1+=688.0;
    } else {
     s0+=36.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i28<0.002447582082822919){
   if(i66<0.14396193623542786){
    if(i7<0.005568470805883408){
     s0+=132.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i3<1.0011961460113525){
    if(i29<-2.7954578399658203e-05){
     s1+=135.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=12017.0;
   }
  }
 }
}
if(i8<1.0153836011886597){
 if(i7<0.014098710380494595){
  if(i3<1.0023910999298096){
   if(i32<1.0903575420379639){
    if(i31<0.0007113252067938447){
     s0+=24536.0;
     s1+=319.0;
    } else {
     s0+=3734.0;
     s1+=2490.0;
    }
   } else {
    if(i17<0.23055705428123474){
     s0+=80419.0;
     s1+=1032.0;
    } else {
     s0+=63.0;
     s1+=99.0;
    }
   }
  } else {
   if(i53<0.04436197504401207){
    if(i7<0.0040114810690283775){
     s0+=4440.0;
     s1+=405.0;
    } else {
     s0+=369.0;
     s1+=1142.0;
    }
   } else {
    if(i48<2.4274866518680938e-05){
     s0+=296.0;
     s1+=1212.0;
    } else {
     s0+=913.0;
     s1+=368.0;
    }
   }
  }
 } else {
  if(i27<0.04280287027359009){
   if(i75<-0.010667949914932251){
    if(i14<0.000149944971781224){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=20.0;
     s1+=113.0;
    }
   } else {
    if(i1<0.0013622641563415527){
     s0+=860.0;
     s1+=34.0;
    } else {
     s0+=7.0;
     s1+=37.0;
    }
   }
  } else {
   if(i10<0.9442768096923828){
    if(i61<-0.007702440023422241){
     s0+=106.0;
     s1+=136.0;
    } else {
     s0+=2.0;
     s1+=356.0;
    }
   } else {
    if(i19<0.9777132272720337){
     s0+=29.0;
     s1+=56.0;
    } else {
     s0+=9.0;
     s1+=2613.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007216791855171323){
  if(i1<0.00029274821281433105){
   if(i31<0.0018419938860461116){
    if(i45<1.0008463859558105){
     s0+=238.0;
     s1+=5.0;
    } else {
     s0+=162.0;
     s1+=102.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i43<-1.2218921256135218e-05){
    if(i7<0.0029270583763718605){
     s0+=77.0;
     s1+=284.0;
    } else {
     s0+=12.0;
     s1+=13189.0;
    }
   } else {
    if(i81<0.10187935829162598){
     s0+=27.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  s0+=408.0;
 }
}
if(i9<1.0167311429977417){
 if(i2<6.872415542602539e-05){
  if(i64<0.002229978796094656){
   if(i26<1.1162974834442139){
    if(i16<0.0016783227911219){
     s0+=27027.0;
     s1+=712.0;
    } else {
     s0+=2794.0;
     s1+=2643.0;
    }
   } else {
    if(i57<0.005865002982318401){
     s0+=78224.0;
     s1+=810.0;
    } else {
     s0+=243.0;
     s1+=158.0;
    }
   }
  } else {
   if(i27<0.09032684564590454){
    if(i24<0.05544835329055786){
     s0+=4358.0;
     s1+=400.0;
    } else {
     s0+=108.0;
     s1+=196.0;
    }
   } else {
    if(i5<1.239776611328125e-05){
     s0+=363.0;
     s1+=235.0;
    } else {
     s0+=111.0;
     s1+=1006.0;
    }
   }
  }
 } else {
  if(i36<0.0020304694771766663){
   if(i30<1.0773653984069824){
    if(i14<0.0002297814644407481){
     s0+=13.0;
     s1+=1074.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i14<0.00022247097513172776){
     s0+=19.0;
     s1+=89.0;
    } else {
     s0+=1042.0;
    }
   }
  } else {
   if(i34<1.1515507698059082){
    s0+=14.0;
   } else {
    if(i18<0.9566088318824768){
     s0+=46.0;
     s1+=126.0;
    } else {
     s0+=19.0;
     s1+=2499.0;
    }
   }
  }
 }
} else {
 if(i6<0.00026929378509521484){
  if(i28<0.00792641844600439){
   if(i45<1.0003204345703125){
    if(i16<0.0025732689537107944){
     s0+=454.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   } else {
    if(i44<0.14473319053649902){
     s0+=328.0;
     s1+=52.0;
    } else {
     s0+=73.0;
     s1+=109.0;
    }
   }
  } else {
   s1+=175.0;
  }
 } else {
  if(i37<1.1757044792175293){
   if(i26<1.116804838180542){
    s1+=1634.0;
   } else {
    if(i8<1.0215766429901123){
     s0+=925.0;
     s1+=242.0;
    } else {
     s0+=52.0;
     s1+=512.0;
    }
   }
  } else {
   if(i23<-0.0005297064781188965){
    if(i16<0.005460583604872227){
     s0+=30.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i27<0.10748016834259033){
     s0+=53.0;
     s1+=98.0;
    } else {
     s0+=23.0;
     s1+=11641.0;
    }
   }
  }
 }
}
if(i19<1.0080909729003906){
 if(i6<0.0005146265029907227){
  if(i44<0.2062317132949829){
   if(i22<0.0008800200885161757){
    if(i16<0.0015979015734046698){
     s0+=28610.0;
     s1+=588.0;
    } else {
     s0+=2003.0;
     s1+=2314.0;
    }
   } else {
    if(i38<1.122455358505249){
     s0+=71016.0;
     s1+=317.0;
    } else {
     s0+=6968.0;
     s1+=814.0;
    }
   }
  } else {
   if(i52<0.042594559490680695){
    if(i75<0.0060877203941345215){
     s0+=9.0;
     s1+=24.0;
    } else {
     s0+=84.0;
     s1+=5.0;
    }
   } else {
    if(i16<0.0014994239900261164){
     s0+=53.0;
    } else {
     s0+=6.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i14<0.0007048479747027159){
   if(i24<0.00967711303383112){
    if(i18<1.0161266326904297){
     s0+=1760.0;
     s1+=276.0;
    } else {
     s0+=41.0;
     s1+=86.0;
    }
   } else {
    if(i18<0.9537098407745361){
     s0+=479.0;
     s1+=208.0;
    } else {
     s0+=1107.0;
     s1+=5228.0;
    }
   }
  } else {
   s0+=2362.0;
  }
 }
} else {
 if(i10<1.0186108350753784){
  if(i29<0.0007762908935546875){
   if(i43<-1.571969551150687e-05){
    if(i28<0.0012758004013448954){
     s1+=1356.0;
    } else {
     s0+=219.0;
     s1+=1244.0;
    }
   } else {
    if(i1<0.0007460713386535645){
     s0+=132.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i36<0.0020401529036462307){
    s0+=1525.0;
   } else {
    s1+=562.0;
   }
  }
 } else {
  if(i26<1.7041046619415283){
   if(i29<0.0017721056938171387){
    if(i49<-6.047762326488737e-06){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=10971.0;
    }
   } else {
    s0+=12.0;
   }
  } else {
   s0+=3.0;
  }
 }
}
if(i2<6.574392318725586e-05){
 if(i27<0.21784639358520508){
  if(i16<0.0017366211395710707){
   if(i43<-2.0374507585074753e-05){
    if(i51<-9.33566661842633e-06){
     s0+=202.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i22<0.0005604044999927282){
     s0+=28974.0;
     s1+=770.0;
    } else {
     s0+=62406.0;
     s1+=208.0;
    }
   }
  } else {
   if(i14<0.0002515846863389015){
    if(i5<-3.7550926208496094e-06){
     s0+=3665.0;
     s1+=174.0;
    } else {
     s0+=2803.0;
     s1+=3724.0;
    }
   } else {
    if(i35<0.18162335455417633){
     s0+=16102.0;
     s1+=1337.0;
    } else {
     s0+=59.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i0<-3.910322629963048e-05){
   if(i37<1.1296498775482178){
    if(i52<0.06768229603767395){
     s0+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.21324601769447327){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=1297.0;
    }
   }
  } else {
   if(i3<1.0017971992492676){
    if(i31<0.001026480458676815){
     s0+=178.0;
    } else {
     s0+=55.0;
     s1+=10.0;
    }
   } else {
    if(i37<1.1802709102630615){
     s0+=44.0;
    } else {
     s0+=4.0;
     s1+=130.0;
    }
   }
  }
 }
} else {
 if(i22<0.0023241806775331497){
  if(i29<0.0005134940147399902){
   if(i26<1.1229777336120605){
    s1+=2305.0;
   } else {
    s0+=120.0;
   }
  } else {
   s0+=1808.0;
  }
 } else {
  if(i40<0.00029449991416186094){
   if(i30<1.0742030143737793){
    if(i46<1.0008673667907715){
     s0+=34.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=206.0;
    }
   } else {
    if(i32<1.154228925704956){
     s0+=4.0;
     s1+=28.0;
    } else {
     s0+=33.0;
     s1+=13533.0;
    }
   }
  } else {
   if(i35<0.06827211380004883){
    if(i6<0.0026469826698303223){
     s0+=30.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=12.0;
     s1+=149.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i7<0.008016185835003853){
 if(i19<1.0096206665039062){
  if(i6<0.00029265880584716797){
   if(i31<0.0006773866480216384){
    if(i18<0.9949754476547241){
     s0+=12604.0;
     s1+=195.0;
    } else {
     s0+=61474.0;
     s1+=152.0;
    }
   } else {
    if(i37<1.0868351459503174){
     s0+=6443.0;
     s1+=1756.0;
    } else {
     s0+=20299.0;
     s1+=438.0;
    }
   }
  } else {
   if(i24<0.007958164438605309){
    if(i32<1.0921316146850586){
     s0+=2542.0;
     s1+=412.0;
    } else {
     s0+=5819.0;
     s1+=51.0;
    }
   } else {
    if(i1<-1.901388168334961e-05){
     s0+=1103.0;
     s1+=98.0;
    } else {
     s0+=888.0;
     s1+=1813.0;
    }
   }
  }
 } else {
  if(i62<0.0003571312117855996){
   if(i2<5.8770179748535156e-05){
    s0+=34.0;
   } else {
    if(i29<0.0007960200309753418){
     s1+=1402.0;
    } else {
     s0+=21.0;
     s1+=23.0;
    }
   }
  } else {
   if(i33<0.002262522466480732){
    if(i14<0.00021601709886454046){
     s0+=8.0;
     s1+=204.0;
    } else {
     s0+=1010.0;
    }
   } else {
    if(i43<-1.8996015569427982e-05){
     s1+=1278.0;
    } else {
     s0+=85.0;
    }
   }
  }
 }
} else {
 if(i2<-2.1755695343017578e-05){
  if(i55<0.01379968412220478){
   if(i71<0.086061030626297){
    if(i4<0.9999017119407654){
     s0+=3445.0;
     s1+=141.0;
    } else {
     s0+=10.0;
     s1+=24.0;
    }
   } else {
    if(i30<1.1078033447265625){
     s0+=147.0;
     s1+=73.0;
    } else {
     s0+=18.0;
     s1+=131.0;
    }
   }
  } else {
   if(i23<-0.0007453560829162598){
    if(i15<0.10385781526565552){
     s0+=327.0;
     s1+=11.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i77<0.0006334616336971521){
     s0+=3.0;
     s1+=212.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i44<0.016899943351745605){
   if(i60<-0.006203800439834595){
    if(i4<1.005608081817627){
     s0+=291.0;
     s1+=85.0;
    } else {
     s0+=4.0;
     s1+=78.0;
    }
   } else {
    if(i30<1.0647832155227661){
     s0+=18.0;
     s1+=14.0;
    } else {
     s0+=5.0;
     s1+=163.0;
    }
   }
  } else {
   if(i8<0.9769604206085205){
    if(i24<0.03614456579089165){
     s0+=128.0;
     s1+=163.0;
    } else {
     s0+=45.0;
     s1+=890.0;
    }
   } else {
    if(i65<1.7259479136555456e-05){
     s0+=50.0;
     s1+=14119.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i11<1.0177363157272339){
 if(i15<0.20282083749771118){
  if(i6<0.0010163187980651855){
   if(i16<0.0017414854373782873){
    if(i8<0.9957937002182007){
     s0+=16763.0;
     s1+=549.0;
    } else {
     s0+=73884.0;
     s1+=365.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2462.0;
     s1+=2873.0;
    } else {
     s0+=19376.0;
     s1+=1547.0;
    }
   }
  } else {
   if(i29<0.0007382631301879883){
    if(i18<0.9493676424026489){
     s0+=126.0;
     s1+=27.0;
    } else {
     s0+=198.0;
     s1+=2072.0;
    }
   } else {
    if(i58<0.00022653196356259286){
     s0+=1595.0;
     s1+=25.0;
    } else {
     s0+=228.0;
     s1+=1011.0;
    }
   }
  }
 } else {
  if(i7<0.0063290721736848354){
   if(i78<-0.0012570023536682129){
    if(i3<1.0063143968582153){
     s0+=18.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i78<0.012587010860443115){
     s0+=306.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i37<1.1240298748016357){
    s0+=16.0;
   } else {
    if(i24<0.024460509419441223){
     s0+=6.0;
     s1+=131.0;
    } else {
     s1+=1585.0;
    }
   }
  }
 }
} else {
 if(i3<1.0011861324310303){
  if(i7<0.006305333226919174){
   if(i51<-3.9843007471063174e-06){
    if(i31<0.001340024289675057){
     s0+=6.0;
     s1+=28.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i51<-3.357334662723588e-06){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=403.0;
    }
   }
  } else {
   if(i45<0.9968844652175903){
    if(i8<0.9925798177719116){
     s1+=1.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i53<0.030138768255710602){
     s0+=15.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i2<-3.874301910400391e-06){
   if(i37<1.182512879371643){
    if(i43<-3.843607919407077e-05){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=245.0;
    }
   } else {
    if(i2<-7.426738739013672e-05){
     s0+=14.0;
    } else {
     s0+=5.0;
     s1+=118.0;
    }
   }
  } else {
   if(i0<-6.5213767811656e-05){
    if(i43<-0.00018382453708909452){
     s0+=7.0;
    } else {
     s0+=98.0;
     s1+=12962.0;
    }
   } else {
    if(i14<0.00035137211671099067){
     s0+=76.0;
     s1+=896.0;
    } else {
     s0+=444.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i6<0.000280916690826416){
  if(i76<0.15416863560676575){
   if(i56<1.0003478527069092){
    if(i30<1.2546122074127197){
     s0+=56183.0;
     s1+=440.0;
    } else {
     s0+=133.0;
     s1+=67.0;
    }
   } else {
    if(i24<0.006075815763324499){
     s0+=24699.0;
     s1+=212.0;
    } else {
     s0+=22141.0;
     s1+=2139.0;
    }
   }
  } else {
   if(i24<0.03709063678979874){
    if(i22<0.014318959787487984){
     s0+=103.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i57<0.010553531348705292){
     s0+=4.0;
     s1+=24.0;
    } else {
     s1+=126.0;
    }
   }
  }
 } else {
  if(i11<1.0150141716003418){
   if(i7<0.004161686636507511){
    if(i58<0.00015890790382400155){
     s0+=5070.0;
     s1+=51.0;
    } else {
     s0+=424.0;
     s1+=96.0;
    }
   } else {
    if(i18<0.9856257438659668){
     s0+=861.0;
     s1+=273.0;
    } else {
     s0+=206.0;
     s1+=1045.0;
    }
   }
  } else {
   if(i45<1.0028622150421143){
    if(i0<-2.8323269361862913e-05){
     s0+=35.0;
     s1+=527.0;
    } else {
     s0+=34.0;
     s1+=8.0;
    }
   } else {
    if(i46<1.0026525259017944){
     s0+=69.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i37<1.171312928199768){
  if(i7<0.0036829221062362194){
   if(i14<0.00020093642524443567){
    if(i23<3.039836883544922e-06){
     s0+=157.0;
    } else {
     s0+=27.0;
     s1+=620.0;
    }
   } else {
    if(i14<0.00023649164359085262){
     s0+=59.0;
     s1+=20.0;
    } else {
     s0+=4408.0;
    }
   }
  } else {
   if(i34<1.1174830198287964){
    if(i14<0.00028129544807597995){
     s0+=3.0;
     s1+=2395.0;
    } else {
     s0+=112.0;
    }
   } else {
    if(i12<1.0137351751327515){
     s0+=797.0;
     s1+=615.0;
    } else {
     s0+=3.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i20<-0.002608567476272583){
   if(i62<0.003394130617380142){
    if(i6<0.0014501214027404785){
     s0+=686.0;
     s1+=178.0;
    } else {
     s0+=97.0;
     s1+=202.0;
    }
   } else {
    if(i30<1.0880699157714844){
     s0+=98.0;
     s1+=21.0;
    } else {
     s0+=59.0;
     s1+=375.0;
    }
   }
  } else {
   if(i38<1.107614517211914){
    if(i4<1.0053149461746216){
     s0+=129.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=195.0;
    }
   } else {
    if(i15<0.03353932499885559){
     s0+=39.0;
     s1+=77.0;
    } else {
     s0+=53.0;
     s1+=14023.0;
    }
   }
  }
 }
}
if(i1<0.0009757876396179199){
 if(i17<0.20057690143585205){
  if(i53<0.036641549319028854){
   if(i7<0.0034311041235923767){
    if(i33<0.0005312167922966182){
     s0+=23434.0;
     s1+=719.0;
    } else {
     s0+=53757.0;
     s1+=92.0;
    }
   } else {
    if(i2<-1.817941665649414e-05){
     s0+=12400.0;
     s1+=200.0;
    } else {
     s0+=1543.0;
     s1+=1864.0;
    }
   }
  } else {
   if(i5<6.973743438720703e-06){
    if(i6<-5.882978439331055e-05){
     s0+=16865.0;
     s1+=278.0;
    } else {
     s0+=2695.0;
     s1+=550.0;
    }
   } else {
    if(i48<2.7023521397495642e-05){
     s0+=991.0;
     s1+=1855.0;
    } else {
     s0+=2531.0;
     s1+=902.0;
    }
   }
  }
 } else {
  if(i81<0.1263641119003296){
   if(i7<0.003435931634157896){
    if(i2<1.3679265975952148e-05){
     s0+=25.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i65<-7.723790986347012e-06){
     s0+=3.0;
    } else {
     s0+=7.0;
     s1+=1270.0;
    }
   }
  } else {
   if(i52<0.057552263140678406){
    if(i22<0.0076531535014510155){
     s0+=279.0;
     s1+=46.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i7<0.005684638395905495){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=273.0;
    }
   }
  }
 }
} else {
 if(i1<0.002158224582672119){
  if(i32<1.1706266403198242){
   if(i22<0.001077080611139536){
    if(i31<0.001132535981014371){
     s1+=1529.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i22<0.002420801669359207){
     s0+=1766.0;
    } else {
     s0+=3.0;
     s1+=59.0;
    }
   }
  } else {
   if(i17<0.030427783727645874){
    if(i52<0.05423247069120407){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   } else {
    if(i58<0.0045468127354979515){
     s0+=50.0;
     s1+=3282.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i49<-7.167695912357885e-06){
   s0+=44.0;
  } else {
   s1+=11324.0;
  }
 }
}
if(i13<1.0166471004486084){
 if(i6<0.000957787036895752){
  if(i6<0.00031238794326782227){
   if(i27<0.2423374056816101){
    if(i7<0.0027828426100313663){
     s0+=74378.0;
     s1+=515.0;
    } else {
     s0+=29089.0;
     s1+=2297.0;
    }
   } else {
    if(i40<8.438162331003696e-05){
     s0+=45.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=157.0;
    }
   }
  } else {
   if(i67<0.048820171505212784){
    if(i39<-0.00016946499818004668){
     s0+=1091.0;
     s1+=730.0;
    } else {
     s0+=6452.0;
     s1+=639.0;
    }
   } else {
    if(i42<0.01622931659221649){
     s0+=1509.0;
     s1+=1128.0;
    } else {
     s0+=52.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i14<0.0006856010295450687){
   if(i1<0.0009429454803466797){
    if(i43<-3.3810843888204545e-05){
     s0+=321.0;
     s1+=734.0;
    } else {
     s0+=388.0;
     s1+=26.0;
    }
   } else {
    if(i15<0.00938040018081665){
     s0+=46.0;
     s1+=44.0;
    } else {
     s0+=142.0;
     s1+=3468.0;
    }
   }
  } else {
   if(i7<0.02033497393131256){
    s0+=1353.0;
   } else {
    if(i30<0.9289590120315552){
     s0+=11.0;
     s1+=3.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i0<-6.360732368193567e-05){
  if(i8<1.016659140586853){
   if(i59<-0.0009960226016119123){
    if(i24<0.02567189559340477){
     s0+=49.0;
     s1+=87.0;
    } else {
     s1+=476.0;
    }
   } else {
    if(i26<1.1180615425109863){
     s1+=36.0;
    } else {
     s0+=114.0;
     s1+=18.0;
    }
   }
  } else {
   if(i40<0.0004423197824507952){
    if(i14<0.0009072414832189679){
     s0+=52.0;
     s1+=12439.0;
    } else {
     s0+=34.0;
    }
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i26<1.1180615425109863){
   if(i3<1.00005304813385){
    s0+=10.0;
   } else {
    s1+=548.0;
   }
  } else {
   if(i16<0.003110755467787385){
    if(i22<0.0019620386883616447){
     s0+=810.0;
    } else {
     s0+=424.0;
     s1+=78.0;
    }
   } else {
    if(i7<0.007135337218642235){
     s0+=192.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=362.0;
    }
   }
  }
 }
}
if(i19<1.0082193613052368){
 if(i7<0.008000520057976246){
  if(i16<0.0017285794019699097){
   if(i41<1.0178465843200684){
    if(i0<-1.749056355038192e-05){
     s0+=827.0;
     s1+=229.0;
    } else {
     s0+=9625.0;
     s1+=269.0;
    }
   } else {
    if(i0<-7.185589493019506e-05){
     s0+=80.0;
     s1+=58.0;
    } else {
     s0+=80557.0;
     s1+=477.0;
    }
   }
  } else {
   if(i36<0.0011006825370714068){
    if(i46<0.999569296836853){
     s0+=1943.0;
     s1+=23.0;
    } else {
     s0+=679.0;
     s1+=2471.0;
    }
   } else {
    if(i64<-0.0008391028386540711){
     s0+=46.0;
     s1+=95.0;
    } else {
     s0+=16475.0;
     s1+=1056.0;
    }
   }
  }
 } else {
  if(i4<0.9986790418624878){
   if(i55<0.016940675675868988){
    if(i39<-0.00013848062371835113){
     s0+=1326.0;
     s1+=291.0;
    } else {
     s0+=2423.0;
     s1+=60.0;
    }
   } else {
    if(i60<-0.013279438018798828){
     s0+=191.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=216.0;
    }
   }
  } else {
   if(i27<0.03962510824203491){
    if(i7<0.021701142191886902){
     s0+=281.0;
     s1+=90.0;
    } else {
     s0+=20.0;
     s1+=69.0;
    }
   } else {
    if(i11<0.8631355166435242){
     s0+=19.0;
     s1+=9.0;
    } else {
     s0+=187.0;
     s1+=5026.0;
    }
   }
  }
 }
} else {
 if(i22<0.0025583673268556595){
  if(i33<0.0012505603954195976){
   if(i49<-4.303670266381232e-06){
    s0+=35.0;
   } else {
    s1+=1873.0;
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=194.0;
   } else {
    if(i18<1.0227795839309692){
     s0+=1759.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i1<0.0006082057952880859){
   if(i53<0.04776046797633171){
    if(i60<0.003368854522705078){
     s0+=174.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=73.0;
   }
  } else {
   if(i60<-0.01646462082862854){
    if(i55<0.006991968490183353){
     s0+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i41<1.058392882347107){
     s0+=1.0;
     s1+=291.0;
    } else {
     s1+=11259.0;
    }
   }
  }
 }
}
if(i0<-8.899930980987847e-05){
 if(i60<-0.01189267635345459){
  if(i15<0.04174652695655823){
   if(i2<0.00017338991165161133){
    if(i75<-0.01360359787940979){
     s0+=11.0;
     s1+=26.0;
    } else {
     s0+=735.0;
     s1+=10.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i79<0.004773885011672974){
    if(i57<0.00669216550886631){
     s0+=11.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=129.0;
    }
   } else {
    if(i11<0.908368706703186){
     s0+=53.0;
     s1+=14.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i26<1.1719775199890137){
   if(i20<0.002042710781097412){
    if(i22<0.0010297318222001195){
     s1+=62.0;
    } else {
     s0+=276.0;
    }
   } else {
    if(i56<0.9983937740325928){
     s0+=24.0;
    } else {
     s1+=797.0;
    }
   }
  } else {
   if(i17<0.040812134742736816){
    if(i76<-0.0745118260383606){
     s0+=39.0;
     s1+=158.0;
    } else {
     s0+=102.0;
     s1+=10.0;
    }
   } else {
    if(i32<1.1419479846954346){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=49.0;
     s1+=14914.0;
    }
   }
  }
 }
} else {
 if(i8<1.009209394454956){
  if(i2<7.170438766479492e-05){
   if(i17<0.20532405376434326){
    if(i35<0.012095244601368904){
     s0+=69505.0;
     s1+=775.0;
    } else {
     s0+=41190.0;
     s1+=3465.0;
    }
   } else {
    if(i60<-0.00014653801918029785){
     s0+=79.0;
     s1+=250.0;
    } else {
     s0+=119.0;
     s1+=46.0;
    }
   }
  } else {
   if(i26<1.629280686378479){
    if(i14<0.0007332023815251887){
     s0+=45.0;
     s1+=718.0;
    } else {
     s0+=130.0;
    }
   } else {
    s0+=52.0;
   }
  }
 } else {
  if(i29<0.000689089298248291){
   if(i32<1.0967509746551514){
    if(i43<-9.763798516360112e-07){
     s1+=1736.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i21<1.0041730403900146){
     s0+=1680.0;
     s1+=553.0;
    } else {
     s0+=127.0;
     s1+=642.0;
    }
   }
  } else {
   if(i30<1.1700975894927979){
    if(i33<0.007506643421947956){
     s0+=2155.0;
     s1+=35.0;
    } else {
     s0+=11.0;
     s1+=42.0;
    }
   } else {
    s1+=38.0;
   }
  }
 }
}
if(i10<1.0135858058929443){
 if(i5<1.8537044525146484e-05){
  if(i31<0.0006975652067922056){
   if(i56<1.0003619194030762){
    if(i31<0.0005574260139837861){
     s0+=42388.0;
     s1+=10.0;
    } else {
     s0+=6127.0;
     s1+=63.0;
    }
   } else {
    if(i40<3.560690674930811e-05){
     s0+=25606.0;
     s1+=49.0;
    } else {
     s0+=3992.0;
     s1+=276.0;
    }
   }
  } else {
   if(i54<0.9993681907653809){
    if(i7<0.018412664532661438){
     s0+=15691.0;
     s1+=278.0;
    } else {
     s0+=4.0;
     s1+=38.0;
    }
   } else {
    if(i14<0.00021072576055303216){
     s0+=2891.0;
     s1+=2269.0;
    } else {
     s0+=11401.0;
     s1+=990.0;
    }
   }
  }
 } else {
  if(i53<0.040796056389808655){
   if(i22<0.0009700385853648186){
    if(i22<0.0002508466423023492){
     s0+=1789.0;
    } else {
     s1+=1230.0;
    }
   } else {
    if(i58<0.0002522158611100167){
     s0+=3616.0;
     s1+=34.0;
    } else {
     s0+=174.0;
     s1+=243.0;
    }
   }
  } else {
   if(i20<-0.004013955593109131){
    if(i34<1.600679874420166){
     s0+=781.0;
     s1+=189.0;
    } else {
     s0+=43.0;
     s1+=125.0;
    }
   } else {
    if(i2<4.351139068603516e-06){
     s0+=463.0;
     s1+=302.0;
    } else {
     s0+=435.0;
     s1+=3623.0;
    }
   }
  }
 }
} else {
 if(i10<1.0200928449630737){
  if(i37<1.0905578136444092){
   if(i62<0.0007745954208076){
    s1+=918.0;
   } else {
    if(i51<-1.0889456461882219e-05){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i17<0.17665943503379822){
    if(i19<1.0142854452133179){
     s0+=945.0;
     s1+=226.0;
    } else {
     s0+=3.0;
     s1+=243.0;
    }
   } else {
    if(i7<0.004214927554130554){
     s0+=46.0;
     s1+=18.0;
    } else {
     s0+=8.0;
     s1+=462.0;
    }
   }
  }
 } else {
  if(i4<1.0013763904571533){
   if(i14<0.0003507056972011924){
    if(i34<1.0887749195098877){
     s1+=6.0;
    } else {
     s0+=191.0;
     s1+=14.0;
    }
   } else {
    if(i14<0.0020714569836854935){
     s1+=69.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i34<1.7041046619415283){
    if(i2<-4.9114227294921875e-05){
     s0+=9.0;
    } else {
     s0+=65.0;
     s1+=12469.0;
    }
   } else {
    s0+=27.0;
   }
  }
 }
}
if(i18<1.014253854751587){
 if(i15<0.19998762011528015){
  if(i5<1.901388168334961e-05){
   if(i28<0.0010622595436871052){
    if(i6<0.00015169382095336914){
     s0+=28254.0;
     s1+=1513.0;
    } else {
     s0+=2199.0;
     s1+=1385.0;
    }
   } else {
    if(i7<0.01973598077893257){
     s0+=77168.0;
     s1+=954.0;
    } else {
     s0+=52.0;
     s1+=98.0;
    }
   }
  } else {
   if(i0<-4.823380004381761e-05){
    if(i19<0.9971920847892761){
     s0+=795.0;
     s1+=350.0;
    } else {
     s0+=1188.0;
     s1+=2685.0;
    }
   } else {
    if(i34<1.056142807006836){
     s0+=1775.0;
    } else {
     s0+=3342.0;
     s1+=1242.0;
    }
   }
  }
 } else {
  if(i26<1.1935834884643555){
   s0+=236.0;
  } else {
   if(i43<-8.193710527848452e-06){
    if(i24<0.03382754325866699){
     s0+=63.0;
     s1+=246.0;
    } else {
     s0+=27.0;
     s1+=2543.0;
    }
   } else {
    if(i44<0.1399049162864685){
     s1+=1.0;
    } else {
     s0+=168.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i10<1.0193507671356201){
  if(i34<1.1180615425109863){
   if(i57<0.0011360689532011747){
    s1+=842.0;
   } else {
    if(i59<-0.000908196612726897){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i24<0.017696764320135117){
    if(i1<0.002217710018157959){
     s0+=756.0;
     s1+=61.0;
    } else {
     s1+=104.0;
    }
   } else {
    if(i5<1.0907649993896484e-05){
     s0+=40.0;
     s1+=6.0;
    } else {
     s0+=16.0;
     s1+=589.0;
    }
   }
  }
 } else {
  if(i16<0.001159567735157907){
   if(i65<-6.003935595799703e-06){
    s1+=207.0;
   } else {
    s0+=121.0;
   }
  } else {
   if(i7<0.002322816289961338){
    if(i12<1.0152499675750732){
     s0+=76.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   } else {
    if(i2<-5.391240119934082e-05){
     s0+=13.0;
    } else {
     s0+=25.0;
     s1+=11646.0;
    }
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i16<0.0017660732846707106){
  if(i16<0.001323083182796836){
   if(i58<0.00016782328020781279){
    if(i73<0.003907322883605957){
     s0+=68225.0;
     s1+=141.0;
    } else {
     s0+=380.0;
     s1+=17.0;
    }
   } else {
    if(i12<0.9933534860610962){
     s0+=7941.0;
     s1+=6.0;
    } else {
     s0+=4312.0;
     s1+=258.0;
    }
   }
  } else {
   if(i29<-3.8623809814453125e-05){
    if(i28<0.00021547947835642844){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=5843.0;
    }
   } else {
    if(i36<0.000476801855256781){
     s0+=468.0;
     s1+=510.0;
    } else {
     s0+=2907.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i2<-2.485513687133789e-05){
   if(i17<0.23105797171592712){
    if(i1<-0.0006863176822662354){
     s0+=15964.0;
     s1+=322.0;
    } else {
     s0+=1283.0;
     s1+=320.0;
    }
   } else {
    if(i24<0.03485899791121483){
     s0+=14.0;
     s1+=4.0;
    } else {
     s1+=180.0;
    }
   }
  } else {
   if(i7<0.00401698611676693){
    if(i20<4.482269287109375e-05){
     s0+=241.0;
     s1+=180.0;
    } else {
     s0+=1891.0;
     s1+=45.0;
    }
   } else {
    if(i28<0.00018888420891016722){
     s0+=277.0;
    } else {
     s0+=749.0;
     s1+=3504.0;
    }
   }
  }
 }
} else {
 if(i7<0.00407246220856905){
  if(i29<0.000510871410369873){
   if(i1<0.0009757876396179199){
    if(i34<1.1946446895599365){
     s0+=279.0;
     s1+=3.0;
    } else {
     s1+=78.0;
    }
   } else {
    if(i43<-0.00012494863767642528){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=789.0;
    }
   }
  } else {
   if(i21<1.0124655961990356){
    if(i21<1.0119025707244873){
     s0+=4245.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=4.0;
    }
   } else {
    s1+=209.0;
   }
  }
 } else {
  if(i4<1.0017218589782715){
   if(i35<0.13942253589630127){
    if(i41<1.0751562118530273){
     s0+=812.0;
     s1+=159.0;
    } else {
     s0+=76.0;
     s1+=197.0;
    }
   } else {
    if(i0<-4.369985617813654e-05){
     s0+=8.0;
     s1+=236.0;
    } else {
     s0+=44.0;
     s1+=18.0;
    }
   }
  } else {
   if(i49<-6.601987479371019e-06){
    s0+=79.0;
   } else {
    if(i27<0.017692655324935913){
     s0+=105.0;
     s1+=88.0;
    } else {
     s0+=406.0;
     s1+=16860.0;
    }
   }
  }
 }
}
if(i4<1.0037753582000732){
 if(i30<1.1403480768203735){
  if(i9<1.0181355476379395){
   if(i7<0.0036307750269770622){
    if(i58<0.00018802625709213316){
     s0+=73186.0;
     s1+=322.0;
    } else {
     s0+=13502.0;
     s1+=670.0;
    }
   } else {
    if(i4<0.9990548491477966){
     s0+=21605.0;
     s1+=736.0;
    } else {
     s0+=1842.0;
     s1+=2730.0;
    }
   }
  } else {
   if(i28<0.0011592860100790858){
    if(i32<1.1197539567947388){
     s0+=5.0;
     s1+=343.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i24<0.02907649055123329){
     s0+=590.0;
     s1+=113.0;
    } else {
     s0+=75.0;
     s1+=190.0;
    }
   }
  }
 } else {
  if(i43<-8.50535616336856e-06){
   if(i37<1.170027494430542){
    if(i34<1.217132568359375){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=94.0;
     s1+=14.0;
    }
   } else {
    if(i25<0.8960593938827515){
     s0+=121.0;
     s1+=159.0;
    } else {
     s0+=54.0;
     s1+=1411.0;
    }
   }
  } else {
   if(i6<0.00043070316314697266){
    s0+=754.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i22<0.0022443931084126234){
  if(i36<0.0011439246591180563){
   if(i14<0.0002638618170749396){
    if(i5<1.8477439880371094e-05){
     s0+=8.0;
     s1+=15.0;
    } else {
     s1+=2420.0;
    }
   } else {
    s0+=743.0;
   }
  } else {
   if(i55<0.0007260139100253582){
    if(i10<1.0099140405654907){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=277.0;
    }
   } else {
    if(i12<1.0177161693572998){
     s0+=3360.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i62<0.00010519450006540865){
   if(i33<0.006014161743223667){
    if(i79<0.026065945625305176){
     s0+=90.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=176.0;
   }
  } else {
   if(i4<1.0057291984558105){
    if(i36<0.0019654505886137486){
     s0+=54.0;
    } else {
     s0+=132.0;
     s1+=1381.0;
    }
   } else {
    if(i27<0.10582420229911804){
     s0+=33.0;
     s1+=612.0;
    } else {
     s0+=15.0;
     s1+=12921.0;
    }
   }
  }
 }
}
if(i20<0.0013865232467651367){
 if(i11<1.0177363157272339){
  if(i17<0.19094935059547424){
   if(i0<-8.987871115095913e-05){
    if(i27<0.044157475233078){
     s0+=831.0;
     s1+=154.0;
    } else {
     s0+=201.0;
     s1+=1281.0;
    }
   } else {
    if(i24<0.00661131925880909){
     s0+=70563.0;
     s1+=802.0;
    } else {
     s0+=42521.0;
     s1+=4326.0;
    }
   }
  } else {
   if(i55<0.002373187802731991){
    if(i0<-4.1268212953582406e-05){
     s0+=22.0;
     s1+=75.0;
    } else {
     s0+=419.0;
     s1+=7.0;
    }
   } else {
    if(i43<-7.53761560190469e-06){
     s0+=37.0;
     s1+=1398.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i0<-5.881589822820388e-05){
   if(i51<-2.792014493024908e-05){
    if(i25<1.0347998142242432){
     s0+=46.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i17<0.14299187064170837){
     s0+=94.0;
     s1+=374.0;
    } else {
     s0+=3.0;
     s1+=2020.0;
    }
   }
  } else {
   if(i16<0.0023806975223124027){
    if(i38<1.0782275199890137){
     s1+=28.0;
    } else {
     s0+=669.0;
     s1+=7.0;
    }
   } else {
    if(i7<0.005957886576652527){
     s0+=248.0;
     s1+=14.0;
    } else {
     s0+=20.0;
     s1+=599.0;
    }
   }
  }
 }
} else {
 if(i28<0.0026189875788986683){
  if(i14<0.00022947642719373107){
   if(i34<1.1226067543029785){
    s1+=1933.0;
   } else {
    s0+=21.0;
   }
  } else {
   if(i60<0.0027475953102111816){
    if(i53<0.04979236423969269){
     s0+=853.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i56<1.00025475025177){
     s0+=20.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i4<1.0037727355957031){
   if(i40<1.4578099580830894e-05){
    s0+=74.0;
   } else {
    s1+=34.0;
   }
  } else {
   s1+=11086.0;
  }
 }
}
if(i4<1.0038522481918335){
 if(i63<1.121600866317749){
  if(i6<0.00029212236404418945){
   if(i15<0.23277127742767334){
    if(i22<0.0008659957675263286){
     s0+=29346.0;
     s1+=2138.0;
    } else {
     s0+=73307.0;
     s1+=666.0;
    }
   } else {
    if(i43<-7.063075827318244e-06){
     s1+=102.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i24<0.009589133784174919){
    if(i78<0.010276705026626587){
     s0+=6049.0;
     s1+=186.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i22<0.001037677633576095){
     s0+=94.0;
     s1+=1221.0;
    } else {
     s0+=2381.0;
     s1+=1426.0;
    }
   }
  }
 } else {
  if(i40<6.865986506454647e-05){
   if(i3<1.002443790435791){
    if(i54<1.0019927024841309){
     s0+=483.0;
     s1+=4.0;
    } else {
     s0+=40.0;
     s1+=16.0;
    }
   } else {
    s1+=67.0;
   }
  } else {
   if(i24<0.03437834978103638){
    if(i37<1.1863822937011719){
     s0+=75.0;
     s1+=12.0;
    } else {
     s0+=20.0;
     s1+=74.0;
    }
   } else {
    if(i46<1.0024313926696777){
     s0+=6.0;
     s1+=868.0;
    } else {
     s0+=21.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007036786992102861){
  if(i0<-4.159187665209174e-05){
   if(i1<0.0012007355690002441){
    if(i7<0.004442503210157156){
     s0+=271.0;
     s1+=73.0;
    } else {
     s0+=65.0;
     s1+=1841.0;
    }
   } else {
    if(i23<-0.00033551454544067383){
     s0+=38.0;
     s1+=156.0;
    } else {
     s0+=73.0;
     s1+=14940.0;
    }
   }
  } else {
   if(i26<1.1038953065872192){
    if(i42<0.00013672481873072684){
     s0+=109.0;
    } else {
     s1+=430.0;
    }
   } else {
    if(i36<0.00192642817273736){
     s0+=1221.0;
    } else {
     s0+=45.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i37<1.348146677017212){
   s0+=2665.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i2<6.455183029174805e-05){
 if(i25<1.02366042137146){
  if(i31<0.0007424943032674491){
   if(i33<0.0003139721811749041){
    if(i12<0.9968447685241699){
     s0+=1779.0;
     s1+=285.0;
    } else {
     s0+=16454.0;
     s1+=98.0;
    }
   } else {
    if(i43<-1.833376518334262e-05){
     s0+=188.0;
     s1+=51.0;
    } else {
     s0+=63177.0;
     s1+=158.0;
    }
   }
  } else {
   if(i22<0.0009248446440324187){
    if(i37<1.0449475049972534){
     s0+=2996.0;
     s1+=248.0;
    } else {
     s0+=326.0;
     s1+=2857.0;
    }
   } else {
    if(i0<-9.172337740892544e-05){
     s0+=813.0;
     s1+=1336.0;
    } else {
     s0+=27787.0;
     s1+=1286.0;
    }
   }
  }
 } else {
  if(i51<-3.0155938475218136e-06){
   if(i29<0.0005615949630737305){
    if(i46<1.001814603805542){
     s0+=105.0;
     s1+=1438.0;
    } else {
     s0+=38.0;
     s1+=9.0;
    }
   } else {
    if(i17<0.21728560328483582){
     s0+=311.0;
     s1+=24.0;
    } else {
     s0+=10.0;
     s1+=288.0;
    }
   }
  } else {
   if(i31<0.001107850344851613){
    s0+=471.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i34<1.176405668258667){
  if(i22<0.0009706164710223675){
   if(i33<0.00019730009080376476){
    s0+=55.0;
   } else {
    s1+=2242.0;
   }
  } else {
   s0+=1912.0;
  }
 } else {
  if(i4<1.0040912628173828){
   if(i44<0.08350244164466858){
    if(i24<0.04181797057390213){
     s0+=49.0;
     s1+=5.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i52<0.03154401853680611){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i20<-0.0019023418426513672){
    if(i26<1.629280686378479){
     s0+=27.0;
     s1+=372.0;
    } else {
     s0+=31.0;
     s1+=10.0;
    }
   } else {
    if(i15<0.1200207769870758){
     s0+=24.0;
     s1+=801.0;
    } else {
     s0+=4.0;
     s1+=12662.0;
    }
   }
  }
 }
}
if(i1<0.0009596943855285645){
 if(i11<1.0176973342895508){
  if(i7<0.014960013329982758){
   if(i24<0.0067754811607301235){
    if(i12<0.9960528612136841){
     s0+=3785.0;
     s1+=255.0;
    } else {
     s0+=67150.0;
     s1+=331.0;
    }
   } else {
    if(i3<1.0001943111419678){
     s0+=33495.0;
     s1+=692.0;
    } else {
     s0+=8281.0;
     s1+=3766.0;
    }
   }
  } else {
   if(i17<0.049963533878326416){
    if(i18<0.9431594014167786){
     s0+=668.0;
     s1+=36.0;
    } else {
     s0+=27.0;
     s1+=96.0;
    }
   } else {
    if(i61<-0.008778363466262817){
     s0+=90.0;
     s1+=70.0;
    } else {
     s0+=23.0;
     s1+=1046.0;
    }
   }
  }
 } else {
  if(i31<0.0006216022302396595){
   if(i48<1.1854972399305552e-05){
    if(i51<-8.707764209248126e-06){
     s0+=30.0;
     s1+=4.0;
    } else {
     s0+=479.0;
    }
   } else {
    if(i38<1.1348806619644165){
     s0+=30.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  } else {
   if(i27<0.08982250094413757){
    if(i59<-0.002061184961348772){
     s0+=95.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=31.0;
    }
   } else {
    if(i38<1.1672112941741943){
     s0+=294.0;
     s1+=805.0;
    } else {
     s1+=821.0;
    }
   }
  }
 }
} else {
 if(i39<-0.00028152106096968055){
  if(i50<5.9545040130615234e-05){
   if(i65<1.636188244447112e-05){
    if(i36<0.0020812922157347202){
     s0+=114.0;
     s1+=821.0;
    } else {
     s0+=31.0;
     s1+=12046.0;
    }
   } else {
    s0+=62.0;
   }
  } else {
   s0+=34.0;
  }
 } else {
  if(i0<-8.531956700608134e-05){
   if(i31<0.0033097879495471716){
    if(i58<0.0030001355335116386){
     s0+=21.0;
     s1+=2071.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   } else {
    if(i57<0.006670892238616943){
     s0+=160.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.0005630850791931152){
    if(i3<1.002610445022583){
     s0+=79.0;
     s1+=8.0;
    } else {
     s0+=28.0;
     s1+=1083.0;
    }
   } else {
    if(i58<0.00024243413645308465){
     s0+=1552.0;
     s1+=4.0;
    } else {
     s0+=43.0;
     s1+=214.0;
    }
   }
  }
 }
}
if(i15<0.19156420230865479){
 if(i2<6.335973739624023e-05){
  if(i35<0.014398660510778427){
   if(i32<1.0905301570892334){
    if(i13<1.0098260641098022){
     s0+=23517.0;
     s1+=990.0;
    } else {
     s0+=69.0;
     s1+=304.0;
    }
   } else {
    if(i36<0.0005081817507743835){
     s0+=2716.0;
     s1+=107.0;
    } else {
     s0+=50615.0;
     s1+=79.0;
    }
   }
  } else {
   if(i19<0.9954643845558167){
    if(i46<1.002610683441162){
     s0+=27350.0;
     s1+=728.0;
    } else {
     s0+=83.0;
     s1+=111.0;
    }
   } else {
    if(i31<0.0007110578007996082){
     s0+=6629.0;
     s1+=251.0;
    } else {
     s0+=2641.0;
     s1+=3646.0;
    }
   }
  }
 } else {
  if(i29<0.0007591843605041504){
   if(i65<8.479287316731643e-07){
    if(i12<0.9793938398361206){
     s0+=50.0;
     s1+=19.0;
    } else {
     s0+=209.0;
     s1+=4082.0;
    }
   } else {
    if(i57<0.0027677910402417183){
     s0+=169.0;
     s1+=27.0;
    } else {
     s0+=4.0;
     s1+=59.0;
    }
   }
  } else {
   if(i33<0.0024712546728551388){
    s0+=1688.0;
   } else {
    if(i16<0.003987875301390886){
     s0+=55.0;
     s1+=172.0;
    } else {
     s0+=6.0;
     s1+=764.0;
    }
   }
  }
 }
} else {
 if(i3<1.0017051696777344){
  if(i24<0.03855355829000473){
   if(i9<1.0136425495147705){
    if(i22<0.011141201481223106){
     s0+=587.0;
     s1+=20.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i40<2.782346746244002e-05){
     s0+=45.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=30.0;
    }
   }
  } else {
   if(i46<1.001598834991455){
    if(i38<1.1228578090667725){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=411.0;
    }
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i33<0.0022568609565496445){
   if(i59<-0.001681213267147541){
    s1+=1.0;
   } else {
    if(i12<1.0004119873046875){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=111.0;
    }
   }
  } else {
   if(i4<1.0018061399459839){
    if(i53<0.08373528718948364){
     s0+=43.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=369.0;
    }
   } else {
    if(i4<1.0024964809417725){
     s0+=8.0;
     s1+=177.0;
    } else {
     s0+=1.0;
     s1+=11811.0;
    }
   }
  }
 }
}
if(i4<1.0038650035858154){
 if(i0<-9.148749086307362e-05){
  if(i44<0.04175412654876709){
   if(i27<0.04837465286254883){
    if(i70<0.015246781520545483){
     s0+=455.0;
     s1+=6.0;
    } else {
     s0+=291.0;
     s1+=82.0;
    }
   } else {
    if(i66<0.3061485290527344){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=72.0;
    }
   }
  } else {
   if(i35<0.0352751687169075){
    if(i17<0.18582680821418762){
     s0+=102.0;
     s1+=12.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i8<0.9060632586479187){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=32.0;
     s1+=1237.0;
    }
   }
  }
 } else {
  if(i29<8.600950241088867e-05){
   if(i28<0.0003186585963703692){
    if(i16<0.0013744364259764552){
     s0+=16256.0;
     s1+=312.0;
    } else {
     s0+=352.0;
     s1+=363.0;
    }
   } else {
    if(i63<1.1393959522247314){
     s0+=61671.0;
     s1+=289.0;
    } else {
     s0+=207.0;
     s1+=50.0;
    }
   }
  } else {
   if(i53<0.0334981232881546){
    if(i36<0.0008621608139947057){
     s0+=5556.0;
     s1+=1377.0;
    } else {
     s0+=17812.0;
     s1+=246.0;
    }
   } else {
    if(i14<0.00026974419597536325){
     s0+=3466.0;
     s1+=1979.0;
    } else {
     s0+=5873.0;
     s1+=647.0;
    }
   }
  }
 }
} else {
 if(i22<0.0022431365214288235){
  if(i55<0.0007963000680319965){
   if(i33<0.00021304230904206634){
    s0+=639.0;
   } else {
    if(i22<0.0010740417055785656){
     s1+=2605.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i14<0.0001548404834466055){
    if(i32<1.1219847202301025){
     s0+=1.0;
     s1+=134.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i33<0.0009366003214381635){
     s1+=27.0;
    } else {
     s0+=3328.0;
    }
   }
  }
 } else {
  if(i36<0.0019157432252541184){
   if(i3<1.0088635683059692){
    s0+=120.0;
   } else {
    s1+=14.0;
   }
  } else {
   if(i7<0.0038052781019359827){
    if(i0<-9.594966832082719e-05){
     s1+=252.0;
    } else {
     s0+=79.0;
     s1+=1.0;
    }
   } else {
    if(i4<1.004846453666687){
     s0+=81.0;
     s1+=716.0;
    } else {
     s0+=38.0;
     s1+=13975.0;
    }
   }
  }
 }
}
if(i23<0.00020450353622436523){
 if(i17<0.19273212552070618){
  if(i5<1.436471939086914e-05){
   if(i29<6.502866744995117e-05){
    if(i42<0.06160270795226097){
     s0+=74594.0;
     s1+=776.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i33<0.001056318636983633){
     s0+=4285.0;
     s1+=1718.0;
    } else {
     s0+=26144.0;
     s1+=748.0;
    }
   }
  } else {
   if(i35<0.020698025822639465){
    if(i14<0.0002866369322873652){
     s0+=1852.0;
     s1+=1136.0;
    } else {
     s0+=5266.0;
     s1+=30.0;
    }
   } else {
    if(i17<0.051207393407821655){
     s0+=1377.0;
     s1+=433.0;
    } else {
     s0+=1184.0;
     s1+=2743.0;
    }
   }
  }
 } else {
  if(i51<-4.185590114502702e-06){
   if(i36<0.002071645110845566){
    if(i36<0.0017556844977661967){
     s0+=79.0;
    } else {
     s0+=8.0;
     s1+=6.0;
    }
   } else {
    if(i32<1.2311432361602783){
     s0+=68.0;
     s1+=658.0;
    } else {
     s0+=35.0;
     s1+=2776.0;
    }
   }
  } else {
   if(i31<0.0011090936604887247){
    if(i28<0.005593439564108849){
     s0+=336.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i21<0.9988936185836792){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i28<0.0026138685643672943){
  if(i55<0.000807196251116693){
   if(i3<1.0012547969818115){
    s0+=42.0;
   } else {
    if(i51<-1.791242539184168e-05){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=1918.0;
    }
   }
  } else {
   if(i49<-2.721152668527793e-06){
    if(i26<1.1180615425109863){
     s1+=8.0;
    } else {
     s0+=880.0;
     s1+=1.0;
    }
   } else {
    if(i54<1.002593755722046){
     s0+=76.0;
    } else {
     s0+=2.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i32<1.7041046619415283){
   if(i45<0.9998202919960022){
    if(i28<0.013302944600582123){
     s0+=43.0;
    } else {
     s1+=233.0;
    }
   } else {
    s1+=11156.0;
   }
  } else {
   s0+=52.0;
  }
 }
}
if(i6<0.0005698800086975098){
 if(i30<1.142219066619873){
  if(i31<0.0007025785162113607){
   if(i43<-1.547943611512892e-05){
    if(i28<0.0019799736328423023){
     s0+=135.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=40.0;
    }
   } else {
    if(i42<0.0003026914200745523){
     s0+=23173.0;
     s1+=283.0;
    } else {
     s0+=55029.0;
     s1+=119.0;
    }
   }
  } else {
   if(i32<1.0903575420379639){
    if(i32<1.0547914505004883){
     s0+=2007.0;
     s1+=71.0;
    } else {
     s0+=998.0;
     s1+=2594.0;
    }
   } else {
    if(i6<0.0001589655876159668){
     s0+=24770.0;
     s1+=443.0;
    } else {
     s0+=2678.0;
     s1+=839.0;
    }
   }
  }
 } else {
  if(i43<-9.226550901075825e-06){
   if(i37<1.1804778575897217){
    if(i26<1.2984776496887207){
     s0+=2.0;
     s1+=16.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i44<0.04072996973991394){
     s0+=47.0;
     s1+=48.0;
    } else {
     s0+=6.0;
     s1+=725.0;
    }
   }
  } else {
   if(i43<-8.954374607128557e-06){
    if(i54<1.000901222229004){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=775.0;
   }
  }
 }
} else {
 if(i14<0.000704434234648943){
  if(i0<-3.763203858397901e-05){
   if(i4<1.0017335414886475){
    if(i43<-4.008220639661886e-05){
     s0+=214.0;
     s1+=295.0;
    } else {
     s0+=495.0;
     s1+=185.0;
    }
   } else {
    if(i0<-7.457345782313496e-05){
     s0+=223.0;
     s1+=15687.0;
    } else {
     s0+=428.0;
     s1+=2117.0;
    }
   }
  } else {
   if(i22<0.0008962752763181925){
    if(i22<0.000236043386394158){
     s0+=90.0;
    } else {
     s1+=424.0;
    }
   } else {
    if(i52<0.034094855189323425){
     s0+=1564.0;
     s1+=125.0;
    } else {
     s0+=277.0;
     s1+=357.0;
    }
   }
  }
 } else {
  s0+=3494.0;
 }
}
if(i10<1.0131404399871826){
 if(i2<6.431341171264648e-05){
  if(i16<0.0017376283649355173){
   if(i61<-0.00042569637298583984){
    if(i16<0.0012475538533180952){
     s0+=12383.0;
     s1+=175.0;
    } else {
     s0+=1903.0;
     s1+=365.0;
    }
   } else {
    if(i55<0.002060744445770979){
     s0+=75915.0;
     s1+=360.0;
    } else {
     s0+=1018.0;
     s1+=97.0;
    }
   }
  } else {
   if(i35<0.1899067461490631){
    if(i2<-3.045797348022461e-05){
     s0+=17819.0;
     s1+=780.0;
    } else {
     s0+=4344.0;
     s1+=3814.0;
    }
   } else {
    if(i30<1.0893580913543701){
     s0+=171.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=765.0;
    }
   }
  }
 } else {
  if(i14<0.0007045901147648692){
   if(i43<-0.00014086990267969668){
    s0+=73.0;
   } else {
    if(i24<0.02943742275238037){
     s0+=215.0;
     s1+=1196.0;
    } else {
     s0+=36.0;
     s1+=1864.0;
    }
   }
  } else {
   s0+=1184.0;
  }
 }
} else {
 if(i22<0.0025599487125873566){
  if(i22<0.001001344178803265){
   if(i6<0.00014352798461914062){
    s0+=61.0;
   } else {
    s1+=2057.0;
   }
  } else {
   if(i7<0.004964333958923817){
    if(i81<0.12289482355117798){
     s0+=887.0;
    } else {
     s0+=45.0;
     s1+=4.0;
    }
   } else {
    if(i46<1.0008509159088135){
     s0+=101.0;
    } else {
     s1+=65.0;
    }
   }
  }
 } else {
  if(i43<-2.224331910838373e-05){
   if(i23<-0.00025206804275512695){
    if(i70<-0.0014203372411429882){
     s0+=5.0;
     s1+=126.0;
    } else {
     s0+=114.0;
     s1+=45.0;
    }
   } else {
    if(i33<0.002272676443681121){
     s0+=9.0;
    } else {
     s0+=76.0;
     s1+=12264.0;
    }
   }
  } else {
   if(i51<-1.0099496648763306e-05){
    if(i9<1.056535243988037){
     s0+=67.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i2<-3.7223100662231445e-05){
     s0+=32.0;
    } else {
     s1+=402.0;
    }
   }
  }
 }
}
if(i2<6.347894668579102e-05){
 if(i17<0.19924649596214294){
  if(i16<0.0017282022163271904){
   if(i61<-0.00038701295852661133){
    if(i31<0.0006582057103514671){
     s0+=13503.0;
     s1+=124.0;
    } else {
     s0+=1735.0;
     s1+=407.0;
    }
   } else {
    if(i35<0.018343418836593628){
     s0+=69190.0;
     s1+=243.0;
    } else {
     s0+=6634.0;
     s1+=187.0;
    }
   }
  } else {
   if(i13<1.008934736251831){
    if(i2<-3.55839729309082e-05){
     s0+=17192.0;
     s1+=616.0;
    } else {
     s0+=4248.0;
     s1+=3076.0;
    }
   } else {
    if(i7<0.004017160274088383){
     s0+=927.0;
     s1+=17.0;
    } else {
     s0+=542.0;
     s1+=1614.0;
    }
   }
  }
 } else {
  if(i28<0.0026068519800901413){
   if(i36<0.0020654816180467606){
    if(i16<0.00027426722226664424){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=142.0;
    }
   } else {
    if(i20<-1.52587890625e-05){
     s0+=42.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i2<-1.436471939086914e-05){
    if(i22<0.007402701303362846){
     s0+=129.0;
     s1+=78.0;
    } else {
     s0+=4.0;
     s1+=321.0;
    }
   } else {
    if(i29<8.130073547363281e-05){
     s0+=15.0;
     s1+=173.0;
    } else {
     s0+=7.0;
     s1+=1070.0;
    }
   }
  }
 }
} else {
 if(i28<0.0023654235992580652){
  if(i14<0.00024617204326204956){
   if(i29<-8.183717727661133e-05){
    s0+=27.0;
   } else {
    if(i2<0.0003586411476135254){
     s1+=2345.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   s0+=1968.0;
  }
 } else {
  if(i30<1.07395601272583){
   if(i3<1.0072364807128906){
    if(i22<0.009791947901248932){
     s0+=2.0;
     s1+=67.0;
    } else {
     s0+=89.0;
     s1+=5.0;
    }
   } else {
    if(i78<0.0014797747135162354){
     s1+=164.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i27<0.0003789663314819336){
    if(i52<0.017153823748230934){
     s0+=11.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i61<-0.015942245721817017){
     s0+=2.0;
    } else {
     s0+=32.0;
     s1+=13788.0;
    }
   }
  }
 }
}
if(i10<1.0136241912841797){
 if(i3<1.0026252269744873){
  if(i62<0.007100427523255348){
   if(i29<8.219480514526367e-05){
    if(i15<0.24029263854026794){
     s0+=77902.0;
     s1+=858.0;
    } else {
     s0+=19.0;
     s1+=82.0;
    }
   } else {
    if(i22<0.0009286420536227524){
     s0+=4739.0;
     s1+=2490.0;
    } else {
     s0+=27188.0;
     s1+=766.0;
    }
   }
  } else {
   if(i22<0.0025694211944937706){
    if(i3<1.0018365383148193){
     s0+=231.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i24<0.03317975252866745){
     s0+=162.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i0<-7.153315527830273e-05){
   if(i44<0.0197199285030365){
    if(i40<0.00029492517933249474){
     s0+=104.0;
     s1+=237.0;
    } else {
     s0+=226.0;
     s1+=36.0;
    }
   } else {
    if(i7<0.0041576530784368515){
     s0+=180.0;
     s1+=51.0;
    } else {
     s0+=188.0;
     s1+=3011.0;
    }
   }
  } else {
   if(i7<0.00398501381278038){
    if(i23<0.00017833709716796875){
     s0+=3194.0;
     s1+=55.0;
    } else {
     s0+=329.0;
     s1+=252.0;
    }
   } else {
    if(i31<0.0014190534129738808){
     s0+=235.0;
     s1+=974.0;
    } else {
     s0+=670.0;
     s1+=347.0;
    }
   }
  }
 }
} else {
 if(i16<0.0013781406451016665){
  if(i20<0.0017116665840148926){
   if(i1<0.0019853711128234863){
    if(i20<0.0007076263427734375){
     s0+=172.0;
     s1+=17.0;
    } else {
     s0+=436.0;
    }
   } else {
    s1+=56.0;
   }
  } else {
   if(i45<1.001542091369629){
    s0+=8.0;
   } else {
    s1+=475.0;
   }
  }
 } else {
  if(i7<0.0034947434905916452){
   if(i40<-2.2446891307481565e-05){
    if(i37<1.0935760736465454){
     s1+=123.0;
    } else {
     s0+=36.0;
     s1+=52.0;
    }
   } else {
    if(i51<-9.458961358177476e-06){
     s0+=359.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   }
  } else {
   if(i37<1.141157627105713){
    if(i38<1.0921096801757812){
     s0+=11.0;
     s1+=1466.0;
    } else {
     s0+=194.0;
     s1+=221.0;
    }
   } else {
    if(i38<1.0863457918167114){
     s0+=21.0;
    } else {
     s0+=22.0;
     s1+=12180.0;
    }
   }
  }
 }
}
if(i11<1.0174247026443481){
 if(i1<0.0010769963264465332){
  if(i41<1.1403393745422363){
   if(i5<1.6391277313232422e-05){
    if(i44<0.2296675145626068){
     s0+=106507.0;
     s1+=3330.0;
    } else {
     s0+=7.0;
     s1+=62.0;
    }
   } else {
    if(i26<1.0623862743377686){
     s0+=2165.0;
    } else {
     s0+=4995.0;
     s1+=2197.0;
    }
   }
  } else {
   if(i35<0.0998847484588623){
    if(i28<0.006093244068324566){
     s0+=392.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i7<0.006876888684928417){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=781.0;
    }
   }
  }
 } else {
  if(i35<0.02189791575074196){
   if(i31<0.0010293801315128803){
    if(i55<0.0008998727425932884){
     s1+=932.0;
    } else {
     s0+=128.0;
     s1+=155.0;
    }
   } else {
    if(i32<1.1762815713882446){
     s0+=929.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=102.0;
    }
   }
  } else {
   if(i40<0.00029134636861272156){
    if(i14<0.0007136837812140584){
     s0+=62.0;
     s1+=2354.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i16<0.0055609652772545815){
     s0+=41.0;
    } else {
     s0+=9.0;
     s1+=88.0;
    }
   }
  }
 }
} else {
 if(i23<0.00027364492416381836){
  if(i16<0.0017535684164613485){
   if(i30<1.0652267932891846){
    if(i28<0.0008719703764654696){
     s1+=66.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i40<3.202998050255701e-05){
     s0+=794.0;
     s1+=3.0;
    } else {
     s0+=77.0;
     s1+=68.0;
    }
   }
  } else {
   if(i46<0.9997297525405884){
    if(i42<0.013638757169246674){
     s0+=130.0;
     s1+=3.0;
    } else {
     s1+=79.0;
    }
   } else {
    if(i1<-0.00029164552688598633){
     s0+=248.0;
     s1+=121.0;
    } else {
     s0+=182.0;
     s1+=3528.0;
    }
   }
  }
 } else {
  if(i29<0.0017361640930175781){
   if(i49<-6.548920282511972e-06){
    s0+=30.0;
   } else {
    if(i13<1.0175554752349854){
     s0+=6.0;
     s1+=138.0;
    } else {
     s0+=1.0;
     s1+=10028.0;
    }
   }
  } else {
   s0+=10.0;
  }
 }
}
if(i0<-8.41627042973414e-05){
 if(i61<-0.007151216268539429){
  if(i3<1.0059788227081299){
   if(i76<-0.17247170209884644){
    if(i11<0.826994776725769){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=37.0;
    }
   } else {
    if(i26<1.5726749897003174){
     s0+=695.0;
     s1+=22.0;
    } else {
     s0+=125.0;
     s1+=65.0;
    }
   }
  } else {
   if(i35<0.05765046551823616){
    s0+=3.0;
   } else {
    if(i58<0.003231277223676443){
     s1+=53.0;
    } else {
     s0+=11.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i29<0.0017146766185760498){
   if(i69<6.193411536514759e-06){
    if(i27<0.03910788893699646){
     s0+=181.0;
     s1+=138.0;
    } else {
     s0+=300.0;
     s1+=16197.0;
    }
   } else {
    s0+=92.0;
   }
  } else {
   s0+=80.0;
  }
 }
} else {
 if(i5<1.5079975128173828e-05){
  if(i32<1.0903575420379639){
   if(i7<0.003427214454859495){
    if(i31<0.0006275717169046402){
     s0+=21346.0;
     s1+=163.0;
    } else {
     s0+=1982.0;
     s1+=531.0;
    }
   } else {
    if(i34<1.0561506748199463){
     s0+=2894.0;
    } else {
     s0+=536.0;
     s1+=1685.0;
    }
   }
  } else {
   if(i13<1.0205984115600586){
    if(i35<0.018711183220148087){
     s0+=56019.0;
     s1+=118.0;
    } else {
     s0+=22342.0;
     s1+=775.0;
    }
   } else {
    if(i21<1.0029864311218262){
     s0+=413.0;
     s1+=71.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i36<0.00019908232206944376){
   s0+=2250.0;
  } else {
   if(i26<1.1162974834442139){
    if(i42<0.0009697271743789315){
     s0+=46.0;
     s1+=2243.0;
    } else {
     s0+=297.0;
     s1+=323.0;
    }
   } else {
    if(i34<1.1825768947601318){
     s0+=4479.0;
     s1+=31.0;
    } else {
     s0+=2248.0;
     s1+=1998.0;
    }
   }
  }
 }
}
if(i10<1.0136051177978516){
 if(i7<0.013962394557893276){
  if(i12<1.0058413743972778){
   if(i58<0.000231581085245125){
    if(i53<0.05252839997410774){
     s0+=86741.0;
     s1+=1562.0;
    } else {
     s0+=1185.0;
     s1+=349.0;
    }
   } else {
    if(i4<0.9976680874824524){
     s0+=18237.0;
     s1+=306.0;
    } else {
     s0+=3777.0;
     s1+=2431.0;
    }
   }
  } else {
   if(i19<1.0141685009002686){
    if(i29<0.0005641579627990723){
     s0+=1354.0;
     s1+=1525.0;
    } else {
     s0+=2808.0;
     s1+=90.0;
    }
   } else {
    if(i65<-2.5578456188668497e-06){
     s0+=7.0;
     s1+=450.0;
    } else {
     s0+=33.0;
    }
   }
  }
 } else {
  if(i24<0.03613623231649399){
   if(i3<1.0051270723342896){
    if(i11<0.9390965700149536){
     s0+=694.0;
     s1+=16.0;
    } else {
     s0+=25.0;
     s1+=34.0;
    }
   } else {
    if(i56<1.0062673091888428){
     s0+=10.0;
     s1+=131.0;
    } else {
     s0+=26.0;
     s1+=20.0;
    }
   }
  } else {
   if(i27<0.04110273718833923){
    if(i30<1.0668225288391113){
     s0+=192.0;
     s1+=20.0;
    } else {
     s0+=87.0;
     s1+=133.0;
    }
   } else {
    if(i27<0.07313269376754761){
     s0+=40.0;
     s1+=147.0;
    } else {
     s0+=38.0;
     s1+=2562.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007102541858330369){
  if(i43<-1.0759931683423929e-05){
   if(i2<-3.713369369506836e-05){
    if(i0<-5.7149976782966405e-05){
     s1+=28.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i10<1.0226455926895142){
     s0+=199.0;
     s1+=2491.0;
    } else {
     s0+=12.0;
     s1+=12118.0;
    }
   }
  } else {
   if(i7<0.006811755709350109){
    s0+=267.0;
   } else {
    s1+=9.0;
   }
  }
 } else {
  s0+=581.0;
 }
}
if(i2<6.324052810668945e-05){
 if(i17<0.2009410262107849){
  if(i13<1.0165292024612427){
   if(i43<-4.1052269807551056e-05){
    if(i15<0.049910902976989746){
     s0+=359.0;
     s1+=67.0;
    } else {
     s0+=67.0;
     s1+=509.0;
    }
   } else {
    if(i16<0.0017322666244581342){
     s0+=90727.0;
     s1+=982.0;
    } else {
     s0+=21646.0;
     s1+=3818.0;
    }
   }
  } else {
   if(i37<1.0905578136444092){
    if(i1<-0.00017270445823669434){
     s0+=9.0;
    } else {
     s1+=425.0;
    }
   } else {
    if(i22<0.0018287468701601028){
     s0+=457.0;
     s1+=10.0;
    } else {
     s0+=621.0;
     s1+=452.0;
    }
   }
  }
 } else {
  if(i51<-3.554522436388652e-06){
   if(i0<-3.910322629963048e-05){
    if(i33<0.0020325644873082638){
     s0+=3.0;
    } else {
     s0+=12.0;
     s1+=1356.0;
    }
   } else {
    if(i35<0.05242188647389412){
     s0+=58.0;
     s1+=3.0;
    } else {
     s0+=31.0;
     s1+=131.0;
    }
   }
  } else {
   if(i24<0.03718308359384537){
    if(i11<0.9957833290100098){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=240.0;
    }
   } else {
    if(i65<4.4828302634414285e-06){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i36<0.0020320508629083633){
  if(i55<0.0008359953062608838){
   if(i34<1.0548467636108398){
    s0+=74.0;
   } else {
    if(i65<3.1182014481601072e-06){
     s0+=17.0;
     s1+=2232.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i22<0.0009644422680139542){
    s1+=135.0;
   } else {
    if(i26<1.1995093822479248){
     s0+=1936.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i22<0.0023471880704164505){
   if(i18<1.0196735858917236){
    s0+=38.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i11<0.8939549326896667){
    if(i51<-2.0253719412721694e-05){
     s0+=3.0;
     s1+=68.0;
    } else {
     s0+=33.0;
     s1+=31.0;
    }
   } else {
    if(i38<1.0789777040481567){
     s0+=17.0;
     s1+=19.0;
    } else {
     s0+=80.0;
     s1+=14087.0;
    }
   }
  }
 }
}
if(i15<0.19664087891578674){
 if(i2<6.574392318725586e-05){
  if(i11<1.0152151584625244){
   if(i16<0.0017198332352563739){
    if(i41<1.0178465843200684){
     s0+=10460.0;
     s1+=452.0;
    } else {
     s0+=79820.0;
     s1+=470.0;
    }
   } else {
    if(i4<0.99843829870224){
     s0+=17720.0;
     s1+=662.0;
    } else {
     s0+=4736.0;
     s1+=3705.0;
    }
   }
  } else {
   if(i2<1.3649463653564453e-05){
    if(i52<0.037768181413412094){
     s0+=696.0;
     s1+=49.0;
    } else {
     s0+=183.0;
     s1+=122.0;
    }
   } else {
    if(i29<0.0006999373435974121){
     s0+=182.0;
     s1+=835.0;
    } else {
     s0+=248.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i29<0.0007658004760742188){
   if(i46<0.9997903108596802){
    if(i36<0.016530808061361313){
     s0+=179.0;
     s1+=2.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i23<-0.00033098459243774414){
     s0+=68.0;
     s1+=19.0;
    } else {
     s0+=106.0;
     s1+=4156.0;
    }
   }
  } else {
   if(i22<0.002643059939146042){
    s0+=1538.0;
   } else {
    if(i14<0.0004114765324629843){
     s0+=10.0;
     s1+=882.0;
    } else {
     s0+=49.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i32<1.1759499311447144){
  if(i34<1.1759499311447144){
   if(i25<1.0270063877105713){
    if(i35<0.027827376499772072){
     s0+=280.0;
    } else {
     s0+=20.0;
     s1+=2.0;
    }
   } else {
    if(i11<1.034651279449463){
     s1+=3.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i52<0.022201400250196457){
    if(i1<0.00041538476943969727){
     s0+=39.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i0<-4.353823896963149e-05){
     s1+=36.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i51<-3.2889940939639928e-06){
   if(i6<-0.00016096234321594238){
    if(i43<-1.715005055302754e-05){
     s0+=8.0;
     s1+=151.0;
    } else {
     s0+=63.0;
     s1+=11.0;
    }
   } else {
    if(i1<-0.00046509504318237305){
     s0+=64.0;
     s1+=155.0;
    } else {
     s0+=26.0;
     s1+=12310.0;
    }
   }
  } else {
   if(i7<0.007075716741383076){
    s0+=132.0;
   } else {
    s1+=11.0;
   }
  }
 }
}
if(i10<1.0135951042175293){
 if(i0<-8.735442679608241e-05){
  if(i40<0.00031124200904741883){
   if(i32<1.1497111320495605){
    if(i36<0.0007910696440376341){
     s1+=130.0;
    } else {
     s0+=258.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.020690083503723145){
     s0+=149.0;
     s1+=69.0;
    } else {
     s0+=63.0;
     s1+=3045.0;
    }
   }
  } else {
   if(i24<0.05611778795719147){
    if(i61<-0.005342006683349609){
     s0+=696.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=32.0;
    }
   } else {
    if(i41<0.9687516093254089){
     s0+=52.0;
     s1+=17.0;
    } else {
     s0+=29.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i54<1.00819993019104){
   if(i6<0.00029343366622924805){
    if(i32<1.0903575420379639){
     s0+=26294.0;
     s1+=1967.0;
    } else {
     s0+=76312.0;
     s1+=761.0;
    }
   } else {
    if(i14<0.00035132805351167917){
     s0+=5076.0;
     s1+=2660.0;
    } else {
     s0+=5717.0;
     s1+=86.0;
    }
   }
  } else {
   if(i4<0.9990032911300659){
    if(i22<0.01411417219787836){
     s0+=327.0;
     s1+=20.0;
    } else {
     s0+=58.0;
     s1+=46.0;
    }
   } else {
    if(i14<0.0003213314921595156){
     s0+=43.0;
     s1+=484.0;
    } else {
     s0+=223.0;
     s1+=167.0;
    }
   }
  }
 }
} else {
 if(i13<1.0253490209579468){
  if(i29<0.0012069940567016602){
   if(i0<-4.287746560294181e-05){
    if(i51<-3.823130100499839e-06){
     s0+=203.0;
     s1+=2923.0;
    } else {
     s0+=72.0;
     s1+=3.0;
    }
   } else {
    if(i26<1.0905578136444092){
     s1+=131.0;
    } else {
     s0+=374.0;
     s1+=38.0;
    }
   }
  } else {
   if(i42<0.0021685445681214333){
    s0+=277.0;
   } else {
    s1+=52.0;
   }
  }
 } else {
  if(i7<0.005042487755417824){
   if(i2<0.00012618303298950195){
    if(i5<2.4318695068359375e-05){
     s0+=190.0;
     s1+=1.0;
    } else {
     s0+=106.0;
     s1+=27.0;
    }
   } else {
    s1+=318.0;
   }
  } else {
   if(i0<1.364434774586698e-05){
    if(i31<0.00470367819070816){
     s1+=11028.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i0<-0.0001060657377820462){
 if(i17<0.023254305124282837){
  if(i60<-0.011706352233886719){
   if(i75<-0.013553082942962646){
    if(i52<0.015217907726764679){
     s0+=4.0;
    } else {
     s0+=6.0;
     s1+=18.0;
    }
   } else {
    if(i59<-0.002294889884069562){
     s1+=2.0;
    } else {
     s0+=407.0;
     s1+=4.0;
    }
   }
  } else {
   if(i12<1.0114190578460693){
    if(i39<-0.00018936122069135308){
     s0+=14.0;
     s1+=43.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   } else {
    s1+=51.0;
   }
  }
 } else {
  if(i37<1.1324639320373535){
   if(i51<-2.030344694503583e-05){
    if(i17<0.193975031375885){
     s0+=202.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i12<1.0146702527999878){
     s0+=7.0;
     s1+=14.0;
    } else {
     s1+=433.0;
    }
   }
  } else {
   if(i22<0.001898913993500173){
    s0+=13.0;
   } else {
    if(i9<0.889582097530365){
     s0+=57.0;
     s1+=255.0;
    } else {
     s0+=15.0;
     s1+=13818.0;
    }
   }
  }
 }
} else {
 if(i8<1.0108439922332764){
  if(i1<0.0010302066802978516){
   if(i6<0.00029212236404418945){
    if(i37<1.0867384672164917){
     s0+=34219.0;
     s1+=2017.0;
    } else {
     s0+=68545.0;
     s1+=696.0;
    }
   } else {
    if(i23<-4.947185516357422e-06){
     s0+=3039.0;
     s1+=1443.0;
    } else {
     s0+=6867.0;
     s1+=797.0;
    }
   }
  } else {
   if(i7<0.002374854637309909){
    if(i30<1.0586848258972168){
     s0+=14.0;
     s1+=76.0;
    } else {
     s0+=248.0;
    }
   } else {
    if(i2<9.453296661376953e-05){
     s0+=136.0;
     s1+=270.0;
    } else {
     s0+=45.0;
     s1+=764.0;
    }
   }
  }
 } else {
  if(i14<0.00031383903115056455){
   if(i5<1.1146068572998047e-05){
    if(i29<-3.269314765930176e-05){
     s0+=360.0;
     s1+=2.0;
    } else {
     s0+=223.0;
     s1+=100.0;
    }
   } else {
    if(i20<-0.0005397796630859375){
     s0+=187.0;
     s1+=89.0;
    } else {
     s0+=88.0;
     s1+=3233.0;
    }
   }
  } else {
   if(i24<0.02447514608502388){
    if(i61<0.003114938735961914){
     s0+=1898.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i57<0.0006506039062514901){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=105.0;
    }
   }
  }
 }
}
if(i12<1.0126168727874756){
 if(i30<1.1402404308319092){
  if(i48<-1.1550891940714791e-05){
   if(i31<0.0011560138082131743){
    if(i4<1.0066187381744385){
     s0+=19.0;
    } else {
     s0+=15.0;
     s1+=594.0;
    }
   } else {
    if(i33<0.0034744914155453444){
     s0+=111.0;
    } else {
     s1+=63.0;
    }
   }
  } else {
   if(i18<1.0090672969818115){
    if(i5<3.904104232788086e-05){
     s0+=110820.0;
     s1+=4557.0;
    } else {
     s0+=853.0;
     s1+=1055.0;
    }
   } else {
    if(i22<0.0009627908002585173){
     s0+=85.0;
     s1+=1110.0;
    } else {
     s0+=3006.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i37<1.170623779296875){
   if(i64<-0.0009823811706155539){
    s1+=23.0;
   } else {
    if(i58<0.0003093516279477626){
     s0+=621.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=30.0;
    }
   }
  } else {
   if(i35<0.08945505321025848){
    if(i54<1.0018031597137451){
     s0+=478.0;
     s1+=21.0;
    } else {
     s0+=117.0;
     s1+=275.0;
    }
   } else {
    if(i51<-2.7246437639405485e-06){
     s0+=35.0;
     s1+=2901.0;
    } else {
     s0+=81.0;
    }
   }
  }
 }
} else {
 if(i16<0.0012145997025072575){
  if(i0<-7.84809235483408e-05){
   if(i4<1.011183500289917){
    s0+=16.0;
   } else {
    s1+=337.0;
   }
  } else {
   if(i48<-1.577488728798926e-05){
    s1+=50.0;
   } else {
    s0+=199.0;
   }
  }
 } else {
  if(i37<1.1372692584991455){
   if(i29<0.0006847381591796875){
    s1+=1339.0;
   } else {
    if(i36<0.002096799435093999){
     s0+=203.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i41<1.0349783897399902){
    if(i13<1.0188689231872559){
     s1+=52.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i7<0.0014953513164073229){
     s0+=4.0;
     s1+=9.0;
    } else {
     s1+=11296.0;
    }
   }
  }
 }
}
if(i18<1.0138808488845825){
 if(i7<0.01397714950144291){
  if(i16<0.0016797413118183613){
   if(i12<1.0101325511932373){
    if(i19<1.0102177858352661){
     s0+=90576.0;
     s1+=878.0;
    } else {
     s0+=95.0;
     s1+=69.0;
    }
   } else {
    if(i34<1.1177868843078613){
     s0+=8.0;
     s1+=162.0;
    } else {
     s0+=367.0;
     s1+=31.0;
    }
   }
  } else {
   if(i20<-0.0014683008193969727){
    if(i4<0.9979078769683838){
     s0+=14228.0;
     s1+=267.0;
    } else {
     s0+=1621.0;
     s1+=541.0;
    }
   } else {
    if(i54<0.9996368885040283){
     s0+=3955.0;
     s1+=189.0;
    } else {
     s0+=3423.0;
     s1+=4729.0;
    }
   }
  }
 } else {
  if(i23<-0.0006657540798187256){
   if(i13<0.9124940037727356){
    if(i54<1.02294921875){
     s0+=814.0;
     s1+=86.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i71<0.035216182470321655){
     s0+=63.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=147.0;
    }
   }
  } else {
   if(i61<-0.007679581642150879){
    if(i17<0.047380924224853516){
     s0+=111.0;
     s1+=26.0;
    } else {
     s0+=13.0;
     s1+=124.0;
    }
   } else {
    if(i15<1.722574234008789e-05){
     s0+=12.0;
     s1+=6.0;
    } else {
     s0+=28.0;
     s1+=3249.0;
    }
   }
  }
 }
} else {
 if(i8<1.0202105045318604){
  if(i23<0.00030094385147094727){
   if(i22<0.001063863979652524){
    if(i26<1.1197539567947388){
     s1+=543.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i52<0.038262639194726944){
     s0+=801.0;
     s1+=113.0;
    } else {
     s0+=66.0;
     s1+=195.0;
    }
   }
  } else {
   if(i65<1.1295820513623767e-05){
    if(i58<-0.00018662339425645769){
     s0+=9.0;
    } else {
     s0+=4.0;
     s1+=751.0;
    }
   } else {
    if(i54<0.9941320419311523){
     s1+=1.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i12<1.0133570432662964){
   if(i43<-1.0933260455203708e-05){
    if(i35<0.03248940408229828){
     s0+=92.0;
     s1+=133.0;
    } else {
     s0+=11.0;
     s1+=487.0;
    }
   } else {
    s0+=144.0;
   }
  } else {
   if(i21<1.0004703998565674){
    if(i51<-3.7079387311678147e-06){
     s1+=272.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i2<4.3720006942749023e-05){
     s0+=4.0;
     s1+=77.0;
    } else {
     s0+=10.0;
     s1+=11175.0;
    }
   }
  }
 }
}
if(i2<6.514787673950195e-05){
 if(i17<0.2005639672279358){
  if(i4<1.00260591506958){
   if(i26<1.1162974834442139){
    if(i46<0.9995231628417969){
     s0+=9048.0;
     s1+=12.0;
    } else {
     s0+=19442.0;
     s1+=2853.0;
    }
   } else {
    if(i6<0.00043267011642456055){
     s0+=77250.0;
     s1+=766.0;
    } else {
     s0+=2388.0;
     s1+=743.0;
    }
   }
  } else {
   if(i7<0.00405754242092371){
    if(i55<0.002299054991453886){
     s0+=5702.0;
     s1+=75.0;
    } else {
     s0+=22.0;
     s1+=30.0;
    }
   } else {
    if(i5<3.55839729309082e-05){
     s0+=143.0;
     s1+=1530.0;
    } else {
     s0+=185.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i16<0.0025791735388338566){
   if(i3<1.0018342733383179){
    if(i17<0.20074686408042908){
     s1+=1.0;
    } else {
     s0+=256.0;
     s1+=11.0;
    }
   } else {
    if(i22<0.002337807323783636){
     s0+=33.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   }
  } else {
   if(i0<-1.6655623767292127e-05){
    if(i52<0.05554594099521637){
     s0+=20.0;
     s1+=198.0;
    } else {
     s0+=2.0;
     s1+=1271.0;
    }
   } else {
    if(i32<1.202282190322876){
     s0+=8.0;
     s1+=59.0;
    } else {
     s0+=25.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i24<0.0077140736393630505){
  if(i57<0.0006910408847033978){
   if(i36<0.0001669393095653504){
    s0+=46.0;
   } else {
    if(i29<0.0011631548404693604){
     s0+=12.0;
     s1+=1337.0;
    } else {
     s0+=15.0;
     s1+=3.0;
    }
   }
  } else {
   if(i19<1.0144226551055908){
    if(i29<0.000744253396987915){
     s0+=214.0;
     s1+=125.0;
    } else {
     s0+=1327.0;
     s1+=3.0;
    }
   } else {
    if(i46<0.9992018342018127){
     s0+=7.0;
    } else {
     s1+=425.0;
    }
   }
  }
 } else {
  if(i10<1.0153324604034424){
   if(i36<0.0020390148274600506){
    if(i42<0.0010301042348146439){
     s0+=2.0;
     s1+=311.0;
    } else {
     s0+=203.0;
     s1+=27.0;
    }
   } else {
    if(i22<0.0024476528633385897){
     s0+=29.0;
    } else {
     s0+=81.0;
     s1+=2345.0;
    }
   }
  } else {
   if(i18<1.0183086395263672){
    if(i0<-4.8407418944407254e-05){
     s0+=20.0;
     s1+=1114.0;
    } else {
     s0+=19.0;
     s1+=25.0;
    }
   } else {
    s1+=10692.0;
   }
  }
 }
}
if(i8<1.014883279800415){
 if(i17<0.19047361612319946){
  if(i5<1.8298625946044922e-05){
   if(i22<0.0008836754132062197){
    if(i31<0.0007269376656040549){
     s0+=28172.0;
     s1+=339.0;
    } else {
     s0+=1843.0;
     s1+=2410.0;
    }
   } else {
    if(i30<1.122455358505249){
     s0+=75420.0;
     s1+=497.0;
    } else {
     s0+=1973.0;
     s1+=369.0;
    }
   }
  } else {
   if(i52<0.03443656861782074){
    if(i7<0.003960121423006058){
     s0+=5340.0;
     s1+=468.0;
    } else {
     s0+=1368.0;
     s1+=1919.0;
    }
   } else {
    if(i19<0.9949996471405029){
     s0+=638.0;
     s1+=280.0;
    } else {
     s0+=224.0;
     s1+=1661.0;
    }
   }
  }
 } else {
  if(i7<0.006062345579266548){
   if(i42<0.0019070552662014961){
    if(i52<0.03513961657881737){
     s0+=346.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i0<-5.171654265723191e-05){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=159.0;
     s1+=16.0;
    }
   }
  } else {
   if(i28<0.0021948842331767082){
    s0+=31.0;
   } else {
    if(i39<0.00015723610704299062){
     s0+=7.0;
     s1+=2211.0;
    } else {
     s0+=17.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i43<-1.1513942808960564e-05){
  if(i0<-6.782356649637222e-05){
   if(i49<-6.489233328466071e-06){
    s0+=85.0;
   } else {
    if(i8<1.0179235935211182){
     s0+=59.0;
     s1+=616.0;
    } else {
     s0+=15.0;
     s1+=12543.0;
    }
   }
  } else {
   if(i37<1.0953161716461182){
    s1+=473.0;
   } else {
    if(i34<1.1793382167816162){
     s0+=363.0;
     s1+=12.0;
    } else {
     s0+=192.0;
     s1+=371.0;
    }
   }
  }
 } else {
  if(i4<0.9969989061355591){
   s1+=4.0;
  } else {
   if(i2<-2.428889274597168e-05){
    if(i31<0.0008360582287423313){
     s0+=13.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=272.0;
   }
  }
 }
}
if(i7<0.007213727571070194){
 if(i13<1.0156588554382324){
  if(i5<1.245737075805664e-05){
   if(i36<0.0009973212145268917){
    if(i24<0.006572762504220009){
     s0+=23170.0;
     s1+=405.0;
    } else {
     s0+=7265.0;
     s1+=1538.0;
    }
   } else {
    if(i38<1.122455358505249){
     s0+=63948.0;
     s1+=277.0;
    } else {
     s0+=4956.0;
     s1+=220.0;
    }
   }
  } else {
   if(i14<0.00026727590011432767){
    if(i32<1.0921316146850586){
     s0+=3.0;
     s1+=1491.0;
    } else {
     s0+=3058.0;
     s1+=749.0;
    }
   } else {
    if(i34<1.1759499311447144){
     s0+=5355.0;
    } else {
     s0+=595.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i42<0.0008890089811757207){
   if(i33<0.0020148835610598326){
    s1+=905.0;
   } else {
    s0+=14.0;
   }
  } else {
   if(i23<0.00030159950256347656){
    if(i7<0.005073198117315769){
     s0+=1848.0;
     s1+=112.0;
    } else {
     s0+=119.0;
     s1+=198.0;
    }
   } else {
    if(i5<0.0002442002296447754){
     s0+=14.0;
     s1+=797.0;
    } else {
     s0+=29.0;
    }
   }
  }
 }
} else {
 if(i47<1.0087075233459473){
  if(i27<0.07569354772567749){
   if(i48<1.9655777578009292e-05){
    if(i30<1.0241833925247192){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=279.0;
    }
   } else {
    if(i41<1.0844184160232544){
     s0+=4531.0;
     s1+=201.0;
    } else {
     s0+=60.0;
     s1+=144.0;
    }
   }
  } else {
   if(i5<6.616115570068359e-06){
    if(i26<1.5508465766906738){
     s0+=691.0;
     s1+=57.0;
    } else {
     s0+=9.0;
     s1+=158.0;
    }
   } else {
    if(i43<-3.331369589432143e-05){
     s0+=73.0;
     s1+=2634.0;
    } else {
     s0+=260.0;
     s1+=567.0;
    }
   }
  }
 } else {
  if(i43<-6.7183750616095494e-06){
   if(i14<0.0018544511403888464){
    if(i20<-0.004270017147064209){
     s0+=66.0;
     s1+=58.0;
    } else {
     s0+=4.0;
     s1+=13567.0;
    }
   } else {
    s0+=40.0;
   }
  } else {
   s0+=209.0;
  }
 }
}
if(i8<1.0143449306488037){
 if(i54<1.0070301294326782){
  if(i7<0.003994484432041645){
   if(i21<1.0075112581253052){
    if(i16<0.0011010856833308935){
     s0+=71827.0;
     s1+=251.0;
    } else {
     s0+=20637.0;
     s1+=1052.0;
    }
   } else {
    if(i34<1.0970759391784668){
     s1+=220.0;
    } else {
     s0+=498.0;
     s1+=8.0;
    }
   }
  } else {
   if(i4<0.9989069700241089){
    if(i62<0.007193580735474825){
     s0+=18838.0;
     s1+=675.0;
    } else {
     s0+=202.0;
     s1+=205.0;
    }
   } else {
    if(i46<0.9994148015975952){
     s0+=425.0;
     s1+=20.0;
    } else {
     s0+=1110.0;
     s1+=4654.0;
    }
   }
  }
 } else {
  if(i43<-4.308613279135898e-05){
   if(i43<-5.060168041381985e-05){
    if(i58<0.0031673794146627188){
     s0+=17.0;
     s1+=1538.0;
    } else {
     s0+=61.0;
     s1+=64.0;
    }
   } else {
    if(i27<0.035024046897888184){
     s0+=129.0;
     s1+=41.0;
    } else {
     s0+=73.0;
     s1+=439.0;
    }
   }
  } else {
   if(i40<-2.2474025172414258e-05){
    if(i46<0.9995526671409607){
     s0+=4.0;
    } else {
     s1+=287.0;
    }
   } else {
    if(i7<0.00671001011505723){
     s0+=655.0;
     s1+=10.0;
    } else {
     s0+=749.0;
     s1+=633.0;
    }
   }
  }
 }
} else {
 if(i2<1.6182661056518555e-05){
  if(i7<0.00545206293463707){
   if(i4<0.9966338872909546){
    s1+=2.0;
   } else {
    s0+=448.0;
   }
  } else {
   if(i54<0.9964630007743835){
    s0+=5.0;
   } else {
    s1+=254.0;
   }
  }
 } else {
  if(i16<0.0017536195227876306){
   if(i21<1.0113284587860107){
    if(i22<0.0008199101430363953){
     s0+=1.0;
     s1+=55.0;
    } else {
     s0+=418.0;
     s1+=51.0;
    }
   } else {
    if(i37<1.1094014644622803){
     s0+=2.0;
     s1+=144.0;
    } else {
     s1+=562.0;
    }
   }
  } else {
   if(i0<-8.821979281492531e-05){
    if(i51<-6.30124268354848e-05){
     s0+=4.0;
    } else {
     s0+=38.0;
     s1+=11776.0;
    }
   } else {
    if(i31<0.0015522334724664688){
     s0+=65.0;
     s1+=1499.0;
    } else {
     s0+=187.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i2<6.324052810668945e-05){
 if(i17<0.2009384036064148){
  if(i29<0.0001023411750793457){
   if(i7<0.020750708878040314){
    if(i16<0.0012834621593356133){
     s0+=65494.0;
     s1+=239.0;
    } else {
     s0+=16107.0;
     s1+=901.0;
    }
   } else {
    if(i45<0.9998023509979248){
     s1+=34.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i30<1.167499303817749){
    if(i26<1.1162974834442139){
     s0+=5909.0;
     s1+=2710.0;
    } else {
     s0+=26413.0;
     s1+=1816.0;
    }
   } else {
    if(i41<1.0554537773132324){
     s0+=38.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=485.0;
    }
   }
  }
 } else {
  if(i7<0.005546619649976492){
   if(i0<-6.446042971219867e-05){
    if(i1<0.00019311904907226562){
     s0+=2.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i51<-2.830863195413258e-06){
     s0+=133.0;
     s1+=15.0;
    } else {
     s0+=170.0;
    }
   }
  } else {
   if(i51<-1.6413926005043322e-06){
    if(i36<0.002089712768793106){
     s0+=3.0;
    } else {
     s0+=7.0;
     s1+=1544.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
} else {
 if(i7<0.003642090130597353){
  if(i48<-1.4223027392290533e-05){
   if(i29<0.0016980767250061035){
    if(i20<0.0011668801307678223){
     s0+=16.0;
    } else {
     s0+=22.0;
     s1+=634.0;
    }
   } else {
    s0+=60.0;
   }
  } else {
   if(i29<0.000438004732131958){
    if(i21<1.006341576576233){
     s0+=53.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i73<-0.0028769373893737793){
     s1+=17.0;
    } else {
     s0+=1552.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i65<1.2699926628556568e-05){
   if(i8<1.0178343057632446){
    if(i28<0.002172467764467001){
     s0+=301.0;
     s1+=968.0;
    } else {
     s0+=126.0;
     s1+=2921.0;
    }
   } else {
    if(i12<1.0118119716644287){
     s0+=4.0;
     s1+=441.0;
    } else {
     s1+=11481.0;
    }
   }
  } else {
   if(i30<1.2951157093048096){
    s0+=78.0;
   } else {
    s1+=8.0;
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i11<1.0163958072662354){
  if(i7<0.00365969049744308){
   if(i37<1.077322244644165){
    if(i61<-0.0003425180912017822){
     s0+=3083.0;
     s1+=579.0;
    } else {
     s0+=23280.0;
     s1+=255.0;
    }
   } else {
    if(i28<0.0019064306979998946){
     s0+=48726.0;
     s1+=19.0;
    } else {
     s0+=11438.0;
     s1+=155.0;
    }
   }
  } else {
   if(i6<-7.730722427368164e-05){
    if(i6<-0.00020629167556762695){
     s0+=18001.0;
     s1+=168.0;
    } else {
     s0+=943.0;
     s1+=192.0;
    }
   } else {
    if(i2<-3.0219554901123047e-05){
     s0+=2610.0;
     s1+=334.0;
    } else {
     s0+=1045.0;
     s1+=2782.0;
    }
   }
  }
 } else {
  if(i37<1.0905578136444092){
   if(i50<-3.516674041748047e-06){
    s0+=1.0;
   } else {
    if(i12<0.9980006814002991){
     s0+=2.0;
    } else {
     s1+=602.0;
    }
   }
  } else {
   if(i43<-8.415430784225464e-06){
    if(i38<1.1295076608657837){
     s0+=237.0;
     s1+=45.0;
    } else {
     s0+=36.0;
     s1+=591.0;
    }
   } else {
    if(i19<0.9840160012245178){
     s1+=6.0;
    } else {
     s0+=492.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i37<1.170027494430542){
  if(i26<1.1180615425109863){
   if(i34<1.0609431266784668){
    s0+=758.0;
   } else {
    s1+=2447.0;
   }
  } else {
   if(i26<1.1935834884643555){
    s0+=3191.0;
   } else {
    if(i30<1.0834126472473145){
     s0+=573.0;
     s1+=97.0;
    } else {
     s0+=436.0;
     s1+=1188.0;
    }
   }
  }
 } else {
  if(i27<0.08538824319839478){
   if(i2<0.00012981891632080078){
    if(i41<1.0743002891540527){
     s0+=759.0;
     s1+=180.0;
    } else {
     s0+=45.0;
     s1+=171.0;
    }
   } else {
    if(i30<1.0241833925247192){
     s0+=4.0;
     s1+=8.0;
    } else {
     s1+=256.0;
    }
   }
  } else {
   if(i38<1.1076223850250244){
    if(i12<0.99775230884552){
     s0+=183.0;
     s1+=111.0;
    } else {
     s0+=13.0;
     s1+=170.0;
    }
   } else {
    if(i27<0.14108797907829285){
     s0+=95.0;
     s1+=1130.0;
    } else {
     s0+=30.0;
     s1+=13389.0;
    }
   }
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i0<-7.621861004736274e-05){
  if(i44<0.05175676941871643){
   if(i18<0.947879433631897){
    if(i74<0.05141763016581535){
     s0+=918.0;
     s1+=18.0;
    } else {
     s0+=16.0;
     s1+=24.0;
    }
   } else {
    if(i7<0.01326825749129057){
     s0+=327.0;
     s1+=89.0;
    } else {
     s0+=33.0;
     s1+=158.0;
    }
   }
  } else {
   if(i30<1.1033984422683716){
    if(i46<0.9998650550842285){
     s0+=134.0;
    } else {
     s0+=135.0;
     s1+=299.0;
    }
   } else {
    if(i14<0.0012835918460041285){
     s0+=26.0;
     s1+=1851.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i6<0.00029343366622924805){
   if(i56<1.0003478527069092){
    if(i26<1.1164028644561768){
     s0+=17795.0;
     s1+=484.0;
    } else {
     s0+=38179.0;
     s1+=18.0;
    }
   } else {
    if(i32<1.0917774438858032){
     s0+=9047.0;
     s1+=1572.0;
    } else {
     s0+=37854.0;
     s1+=713.0;
    }
   }
  } else {
   if(i24<0.009084561839699745){
    if(i7<0.003999445587396622){
     s0+=7475.0;
     s1+=43.0;
    } else {
     s0+=478.0;
     s1+=316.0;
    }
   } else {
    if(i48<1.8017821275861934e-05){
     s0+=512.0;
     s1+=2084.0;
    } else {
     s0+=1609.0;
     s1+=291.0;
    }
   }
  }
 }
} else {
 if(i33<0.0023418846540153027){
  if(i36<0.001167183625511825){
   if(i22<0.0002076041855616495){
    s0+=60.0;
   } else {
    if(i50<1.7642974853515625e-05){
     s0+=16.0;
     s1+=2112.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i37<1.0881938934326172){
    s1+=180.0;
   } else {
    if(i24<0.015200754627585411){
     s0+=1874.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i47<0.9110679626464844){
   if(i40<0.00029132328927516937){
    if(i62<0.0007477512117475271){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=251.0;
    }
   } else {
    if(i31<0.0013958476483821869){
     s0+=46.0;
    } else {
     s0+=12.0;
     s1+=53.0;
    }
   }
  } else {
   if(i18<0.9478154182434082){
    if(i50<1.0132789611816406e-05){
     s0+=13.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i27<0.11095485091209412){
     s0+=57.0;
     s1+=565.0;
    } else {
     s0+=13.0;
     s1+=13000.0;
    }
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i47<1.0292210578918457){
  if(i30<1.1706064939498901){
   if(i18<1.0089988708496094){
    if(i70<0.004261400084942579){
     s0+=107733.0;
     s1+=3786.0;
    } else {
     s0+=3236.0;
     s1+=922.0;
    }
   } else {
    if(i16<0.0019406575011089444){
     s0+=1602.0;
     s1+=49.0;
    } else {
     s0+=480.0;
     s1+=725.0;
    }
   }
  } else {
   if(i31<0.0008175488328561187){
    s0+=327.0;
   } else {
    if(i70<0.021310899406671524){
     s0+=15.0;
     s1+=652.0;
    } else {
     s0+=43.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i31<0.0005428591393865645){
   if(i16<0.0017211504746228456){
    if(i65<4.385333340906072e-06){
     s0+=485.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.003601494710892439){
     s0+=4.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i1<2.205371856689453e-06){
    if(i38<1.1282082796096802){
     s0+=266.0;
     s1+=21.0;
    } else {
     s0+=109.0;
     s1+=319.0;
    }
   } else {
    if(i7<0.005055002402514219){
     s0+=104.0;
     s1+=68.0;
    } else {
     s0+=34.0;
     s1+=1267.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007058108458295465){
  if(i49<-6.2383332988247275e-06){
   if(i41<1.1125209331512451){
    s0+=39.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i6<0.0003638267517089844){
    if(i33<0.016378406435251236){
     s0+=45.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i1<0.0014240741729736328){
     s0+=211.0;
     s1+=1979.0;
    } else {
     s0+=27.0;
     s1+=14312.0;
    }
   }
  }
 } else {
  s0+=1799.0;
 }
}
if(i19<1.008302927017212){
 if(i9<1.0203731060028076){
  if(i2<6.586313247680664e-05){
   if(i16<0.0017322666244581342){
    if(i7<0.0018878335831686854){
     s0+=64002.0;
     s1+=255.0;
    } else {
     s0+=26686.0;
     s1+=730.0;
    }
   } else {
    if(i20<-0.0014017224311828613){
     s0+=16694.0;
     s1+=1637.0;
    } else {
     s0+=5980.0;
     s1+=3442.0;
    }
   }
  } else {
   if(i24<0.014665921218693256){
    if(i42<0.0007229477632790804){
     s0+=40.0;
     s1+=113.0;
    } else {
     s0+=416.0;
     s1+=45.0;
    }
   } else {
    if(i44<0.02107807993888855){
     s0+=41.0;
     s1+=86.0;
    } else {
     s0+=41.0;
     s1+=932.0;
    }
   }
  }
 } else {
  if(i43<-9.233059245161712e-06){
   if(i37<1.1757044792175293){
    if(i56<1.0037815570831299){
     s0+=110.0;
     s1+=729.0;
    } else {
     s0+=245.0;
     s1+=59.0;
    }
   } else {
    if(i24<0.027339298278093338){
     s0+=51.0;
     s1+=197.0;
    } else {
     s0+=32.0;
     s1+=2119.0;
    }
   }
  } else {
   if(i16<0.002445744816213846){
    if(i67<0.007931919768452644){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=357.0;
    }
   } else {
    if(i41<1.1223869323730469){
     s0+=6.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i33<0.002513339975848794){
  if(i38<1.0869626998901367){
   if(i29<0.0005828738212585449){
    if(i34<1.125762701034546){
     s1+=1845.0;
    } else {
     s0+=32.0;
    }
   } else {
    s0+=111.0;
   }
  } else {
   if(i33<0.0010695955716073513){
    s1+=187.0;
   } else {
    if(i24<0.01915064826607704){
     s0+=1618.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i16<0.0017070411704480648){
   if(i1<0.0018025040626525879){
    s0+=130.0;
   } else {
    s1+=524.0;
   }
  } else {
   if(i11<0.8472193479537964){
    if(i63<0.861308217048645){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i57<0.00012356115621514618){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=2.0;
     s1+=11319.0;
    }
   }
  }
 }
}
if(i12<1.0100387334823608){
 if(i21<1.0046476125717163){
  if(i16<0.001785720232874155){
   if(i16<0.0012835462111979723){
    if(i61<-0.00039571523666381836){
     s0+=13268.0;
     s1+=217.0;
    } else {
     s0+=67041.0;
     s1+=226.0;
    }
   } else {
    if(i28<0.0006169977132230997){
     s0+=2069.0;
     s1+=612.0;
    } else {
     s0+=8520.0;
     s1+=124.0;
    }
   }
  } else {
   if(i28<0.0012084015179425478){
    if(i40<1.3490228411683347e-05){
     s0+=1593.0;
     s1+=526.0;
    } else {
     s0+=591.0;
     s1+=2225.0;
    }
   } else {
    if(i1<-9.202957153320312e-05){
     s0+=17966.0;
     s1+=1053.0;
    } else {
     s0+=879.0;
     s1+=1381.0;
    }
   }
  }
 } else {
  if(i16<0.0018925108015537262){
   if(i48<-9.322438017989043e-06){
    if(i49<-3.3763003557396587e-06){
     s0+=14.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i12<1.0007575750350952){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=1609.0;
     s1+=7.0;
    }
   }
  } else {
   if(i59<-0.00042215787107124925){
    if(i12<0.9813793897628784){
     s0+=147.0;
     s1+=225.0;
    } else {
     s0+=279.0;
     s1+=2336.0;
    }
   } else {
    if(i65<2.340497985642287e-06){
     s0+=298.0;
     s1+=794.0;
    } else {
     s0+=428.0;
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i18<1.0177463293075562){
  if(i21<1.010866641998291){
   if(i22<0.0010817982256412506){
    s1+=797.0;
   } else {
    if(i28<0.0024080113507807255){
     s0+=1289.0;
    } else {
     s0+=80.0;
     s1+=363.0;
    }
   }
  } else {
   if(i29<0.0016708076000213623){
    if(i35<0.021775197237730026){
     s0+=20.0;
     s1+=367.0;
    } else {
     s1+=717.0;
    }
   } else {
    if(i27<0.3101663291454315){
     s0+=18.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<1.0134320259094238){
   if(i6<0.0003141164779663086){
    if(i0<-8.267699740827084e-05){
     s1+=8.0;
    } else {
     s0+=118.0;
     s1+=2.0;
    }
   } else {
    if(i7<0.0027265208773314953){
     s0+=56.0;
     s1+=12.0;
    } else {
     s0+=17.0;
     s1+=466.0;
    }
   }
  } else {
   if(i43<-1.1105922567367088e-05){
    if(i10<1.0221376419067383){
     s0+=35.0;
     s1+=990.0;
    } else {
     s0+=4.0;
     s1+=10852.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
}
if(i3<1.0026230812072754){
 if(i17<0.20717915892601013){
  if(i9<1.0181350708007812){
   if(i35<0.011364723555743694){
    if(i58<0.00023166267783381045){
     s0+=65675.0;
     s1+=505.0;
    } else {
     s0+=750.0;
     s1+=210.0;
    }
   } else {
    if(i33<0.0010649162577465177){
     s0+=7522.0;
     s1+=2369.0;
    } else {
     s0+=35669.0;
     s1+=992.0;
    }
   }
  } else {
   if(i51<-3.1970630516298115e-06){
    if(i22<0.0009876901749521494){
     s1+=542.0;
    } else {
     s0+=256.0;
     s1+=177.0;
    }
   } else {
    if(i60<0.0004730224609375){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=384.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i7<0.00752122700214386){
   if(i65<2.535975909268018e-06){
    if(i19<0.9909205436706543){
     s1+=1.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i9<1.008664846420288){
     s0+=106.0;
     s1+=10.0;
    } else {
     s0+=9.0;
     s1+=38.0;
    }
   }
  } else {
   if(i61<-0.0074395835399627686){
    if(i13<0.9349832534790039){
     s1+=18.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=695.0;
   }
  }
 }
} else {
 if(i15<0.1702955663204193){
  if(i26<1.1180615425109863){
   if(i34<1.0609431266784668){
    s0+=757.0;
   } else {
    s1+=2390.0;
   }
  } else {
   if(i26<1.1935834884643555){
    s0+=3003.0;
   } else {
    if(i4<1.0026352405548096){
     s0+=1579.0;
     s1+=540.0;
    } else {
     s0+=542.0;
     s1+=2747.0;
    }
   }
  }
 } else {
  if(i36<0.0017623440362513065){
   if(i11<1.0279991626739502){
    s0+=219.0;
   } else {
    s1+=18.0;
   }
  } else {
   if(i6<0.0004220008850097656){
    if(i43<-2.9394735975074582e-05){
     s1+=19.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i20<-0.0014750957489013672){
     s0+=65.0;
     s1+=735.0;
    } else {
     s0+=4.0;
     s1+=12161.0;
    }
   }
  }
 }
}
if(i1<0.0009578466415405273){
 if(i6<0.00032848119735717773){
  if(i30<1.1848688125610352){
   if(i28<0.0010675336234271526){
    if(i31<0.0007353837136179209){
     s0+=28683.0;
     s1+=416.0;
    } else {
     s0+=1283.0;
     s1+=1841.0;
    }
   } else {
    if(i44<0.23154854774475098){
     s0+=74242.0;
     s1+=764.0;
    } else {
     s0+=9.0;
     s1+=83.0;
    }
   }
  } else {
   if(i16<0.0021576995495706797){
    s0+=403.0;
   } else {
    if(i71<0.006488591432571411){
     s0+=25.0;
     s1+=26.0;
    } else {
     s1+=253.0;
    }
   }
  }
 } else {
  if(i7<0.004140567034482956){
   if(i48<1.0192097761319019e-05){
    if(i12<1.0068371295928955){
     s0+=5308.0;
     s1+=2.0;
    } else {
     s0+=1032.0;
     s1+=38.0;
    }
   } else {
    if(i45<1.0023194551467896){
     s0+=161.0;
     s1+=148.0;
    } else {
     s0+=769.0;
     s1+=21.0;
    }
   }
  } else {
   if(i18<0.9863032102584839){
    if(i4<0.9993967413902283){
     s0+=1180.0;
     s1+=229.0;
    } else {
     s0+=585.0;
     s1+=933.0;
    }
   } else {
    if(i24<0.010171029716730118){
     s0+=269.0;
     s1+=330.0;
    } else {
     s0+=265.0;
     s1+=2928.0;
    }
   }
  }
 }
} else {
 if(i37<1.1703872680664062){
  if(i46<0.9997873306274414){
   if(i31<0.001135529368184507){
    if(i57<0.0009171960409730673){
     s1+=3.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=709.0;
   }
  } else {
   if(i34<1.1180615425109863){
    if(i26<1.1280226707458496){
     s0+=16.0;
     s1+=2374.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i26<1.1979892253875732){
     s0+=1216.0;
    } else {
     s0+=19.0;
     s1+=627.0;
    }
   }
  }
 } else {
  if(i8<0.9393316507339478){
   if(i3<1.0061628818511963){
    if(i33<0.017971809953451157){
     s0+=35.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i21<1.009647250175476){
     s0+=3.0;
    } else {
     s1+=88.0;
    }
   }
  } else {
   if(i38<1.0772056579589844){
    if(i12<0.9962384700775146){
     s0+=14.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i20<-0.0044228434562683105){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=32.0;
     s1+=13415.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i7<0.007605092599987984){
  if(i31<0.0007118329522199929){
   if(i47<1.0313620567321777){
    if(i55<0.001966111594811082){
     s0+=77520.0;
     s1+=351.0;
    } else {
     s0+=2403.0;
     s1+=110.0;
    }
   } else {
    if(i46<1.0007413625717163){
     s0+=442.0;
    } else {
     s0+=58.0;
     s1+=76.0;
    }
   }
  } else {
   if(i33<0.001030819257721305){
    if(i53<0.011066293343901634){
     s0+=3143.0;
     s1+=377.0;
    } else {
     s0+=807.0;
     s1+=2405.0;
    }
   } else {
    if(i1<-3.7550926208496094e-06){
     s0+=22674.0;
     s1+=279.0;
    } else {
     s0+=2390.0;
     s1+=589.0;
    }
   }
  }
 } else {
  if(i15<0.08687171339988708){
   if(i2<-7.092952728271484e-06){
    if(i75<-0.011083632707595825){
     s0+=51.0;
     s1+=72.0;
    } else {
     s0+=4121.0;
     s1+=121.0;
    }
   } else {
    if(i12<0.9754637479782104){
     s0+=206.0;
     s1+=46.0;
    } else {
     s0+=97.0;
     s1+=322.0;
    }
   }
  } else {
   if(i1<-0.0012691020965576172){
    if(i15<0.1865096390247345){
     s0+=444.0;
     s1+=69.0;
    } else {
     s0+=5.0;
     s1+=82.0;
    }
   } else {
    if(i43<-6.1718933466181625e-06){
     s0+=220.0;
     s1+=3072.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
} else {
 if(i37<1.1703872680664062){
  if(i41<1.0617350339889526){
   if(i36<0.00016847002552822232){
    s0+=59.0;
   } else {
    if(i42<0.0011822752421721816){
     s0+=4.0;
     s1+=1703.0;
    } else {
     s0+=87.0;
     s1+=47.0;
    }
   }
  } else {
   if(i10<1.0192241668701172){
    if(i42<0.0009671738371253014){
     s1+=338.0;
    } else {
     s0+=1758.0;
     s1+=177.0;
    }
   } else {
    if(i12<1.0162434577941895){
     s0+=49.0;
     s1+=194.0;
    } else {
     s1+=596.0;
    }
   }
  }
 } else {
  if(i22<0.01110883243381977){
   if(i47<0.8112063407897949){
    if(i73<-0.027017056941986084){
     s1+=2.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i14<0.0004253908700775355){
     s0+=1.0;
     s1+=10016.0;
    } else {
     s0+=18.0;
     s1+=776.0;
    }
   }
  } else {
   if(i17<0.09432908892631531){
    if(i74<0.020930450409650803){
     s0+=77.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=115.0;
    }
   } else {
    if(i38<1.0904197692871094){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=2248.0;
    }
   }
  }
 }
}
if(i5<2.294778823852539e-05){
 if(i17<0.2165633738040924){
  if(i16<0.0016728255432099104){
   if(i32<1.0776758193969727){
    if(i9<0.9957698583602905){
     s0+=3912.0;
     s1+=423.0;
    } else {
     s0+=18318.0;
     s1+=211.0;
    }
   } else {
    if(i18<1.0098767280578613){
     s0+=65231.0;
     s1+=197.0;
    } else {
     s0+=806.0;
     s1+=60.0;
    }
   }
  } else {
   if(i1<-0.0004999637603759766){
    if(i22<0.0009813241194933653){
     s0+=719.0;
     s1+=221.0;
    } else {
     s0+=17563.0;
     s1+=444.0;
    }
   } else {
    if(i35<0.010231401771306992){
     s0+=2201.0;
     s1+=294.0;
    } else {
     s0+=1160.0;
     s1+=2987.0;
    }
   }
  }
 } else {
  if(i22<0.0025665154680609703){
   if(i3<1.0021824836730957){
    if(i56<1.0019984245300293){
     s0+=76.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i42<0.0033399956300854683){
    if(i18<1.0088485479354858){
     s0+=35.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i14<0.00012414736556820571){
     s0+=3.0;
    } else {
     s0+=10.0;
     s1+=681.0;
    }
   }
  }
 }
} else {
 if(i39<-0.00023289446835406125){
  if(i7<0.004380566067993641){
   if(i17<0.15614891052246094){
    if(i26<1.1180615425109863){
     s1+=78.0;
    } else {
     s0+=640.0;
     s1+=63.0;
    }
   } else {
    if(i18<1.017777919769287){
     s0+=38.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=144.0;
    }
   }
  } else {
   if(i46<0.9985082745552063){
    s0+=121.0;
   } else {
    if(i60<-0.012089341878890991){
     s0+=119.0;
     s1+=72.0;
    } else {
     s0+=169.0;
     s1+=14973.0;
    }
   }
  }
 } else {
  if(i14<0.00029901304515078664){
   if(i1<0.0007618069648742676){
    if(i48<2.4647362806717865e-05){
     s0+=234.0;
     s1+=241.0;
    } else {
     s0+=402.0;
     s1+=24.0;
    }
   } else {
    if(i14<0.000254979298915714){
     s0+=54.0;
     s1+=2527.0;
    } else {
     s0+=58.0;
     s1+=99.0;
    }
   }
  } else {
   if(i21<1.0118544101715088){
    if(i36<0.0020547020249068737){
     s0+=4052.0;
    } else {
     s0+=556.0;
     s1+=247.0;
    }
   } else {
    if(i8<0.8247590661048889){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=308.0;
    }
   }
  }
 }
}
if(i27<0.19657212495803833){
 if(i1<0.0009966492652893066){
  if(i29<9.208917617797852e-05){
   if(i45<0.9996887445449829){
    if(i9<0.8647280335426331){
     s0+=44.0;
     s1+=20.0;
    } else {
     s0+=42396.0;
     s1+=83.0;
    }
   } else {
    if(i58<0.0001658595574554056){
     s0+=31621.0;
     s1+=360.0;
    } else {
     s0+=5366.0;
     s1+=535.0;
    }
   }
  } else {
   if(i34<1.0955734252929688){
    if(i7<0.003873418318107724){
     s0+=4802.0;
     s1+=228.0;
    } else {
     s0+=315.0;
     s1+=2189.0;
    }
   } else {
    if(i0<-5.4252839618129656e-05){
     s0+=2350.0;
     s1+=1699.0;
    } else {
     s0+=26498.0;
     s1+=1215.0;
    }
   }
  }
 } else {
  if(i49<-7.613369689352112e-06){
   s0+=619.0;
  } else {
   if(i20<0.0018960237503051758){
    if(i24<0.014683367684483528){
     s0+=1208.0;
     s1+=1084.0;
    } else {
     s0+=95.0;
     s1+=1305.0;
    }
   } else {
    if(i46<0.997847318649292){
     s0+=5.0;
    } else {
     s1+=2857.0;
    }
   }
  }
 }
} else {
 if(i22<0.0025613768957555294){
  if(i28<0.002393727656453848){
   if(i35<0.028042007237672806){
    if(i28<0.0022310023196041584){
     s0+=566.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i28<0.0019339891150593758){
     s0+=47.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   }
  } else {
   if(i56<1.0019493103027344){
    s0+=87.0;
   } else {
    s1+=41.0;
   }
  }
 } else {
  if(i43<-9.252889867639169e-06){
   if(i2<-3.820657730102539e-05){
    if(i67<0.12402669340372086){
     s0+=119.0;
     s1+=27.0;
    } else {
     s0+=17.0;
     s1+=198.0;
    }
   } else {
    if(i23<-0.000417560338973999){
     s0+=37.0;
     s1+=251.0;
    } else {
     s0+=7.0;
     s1+=12390.0;
    }
   }
  } else {
   if(i79<0.06102663278579712){
    s1+=11.0;
   } else {
    if(i54<1.0052032470703125){
     s0+=142.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i18<1.0147477388381958){
 if(i7<0.013961564749479294){
  if(i6<0.00031703710556030273){
   if(i34<1.0905578136444092){
    if(i31<0.0007347657228820026){
     s0+=23213.0;
     s1+=374.0;
    } else {
     s0+=1031.0;
     s1+=1509.0;
    }
   } else {
    if(i44<0.19991984963417053){
     s0+=79130.0;
     s1+=867.0;
    } else {
     s0+=173.0;
     s1+=116.0;
    }
   }
  } else {
   if(i24<0.008207909762859344){
    if(i12<1.008854627609253){
     s0+=6782.0;
     s1+=323.0;
    } else {
     s0+=1548.0;
     s1+=834.0;
    }
   } else {
    if(i19<0.9960930347442627){
     s0+=1344.0;
     s1+=189.0;
    } else {
     s0+=1187.0;
     s1+=2990.0;
    }
   }
  }
 } else {
  if(i41<1.0477511882781982){
   if(i3<1.0053071975708008){
    if(i12<0.9706064462661743){
     s0+=946.0;
     s1+=61.0;
    } else {
     s0+=73.0;
     s1+=65.0;
    }
   } else {
    if(i21<1.0115575790405273){
     s0+=54.0;
     s1+=58.0;
    } else {
     s0+=2.0;
     s1+=153.0;
    }
   }
  } else {
   if(i40<0.00036925991298630834){
    if(i63<0.8574670553207397){
     s0+=1.0;
    } else {
     s0+=13.0;
     s1+=3416.0;
    }
   } else {
    if(i15<0.0764976441860199){
     s0+=40.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=92.0;
    }
   }
  }
 }
} else {
 if(i20<0.0019206404685974121){
  if(i11<1.024559497833252){
   if(i41<1.0748968124389648){
    if(i36<0.0011650407686829567){
     s0+=3.0;
     s1+=368.0;
    } else {
     s0+=180.0;
     s1+=99.0;
    }
   } else {
    if(i58<4.562558751786128e-05){
     s0+=461.0;
     s1+=69.0;
    } else {
     s0+=19.0;
     s1+=173.0;
    }
   }
  } else {
   if(i32<1.6269450187683105){
    if(i31<0.00031880938331596553){
     s0+=41.0;
    } else {
     s0+=86.0;
     s1+=1886.0;
    }
   } else {
    if(i15<0.3269875943660736){
     s0+=80.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i69<7.312023626582231e-06){
   if(i12<1.0134638547897339){
    if(i74<0.0030390694737434387){
     s0+=7.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i35<0.0013923675287514925){
     s0+=2.0;
     s1+=11.0;
    } else {
     s1+=10718.0;
    }
   }
  } else {
   s0+=12.0;
  }
 }
}
if(i2<6.335973739624023e-05){
 if(i5<1.6391277313232422e-05){
  if(i17<0.22808903455734253){
   if(i16<0.0014956803061068058){
    if(i31<0.0005513157229870558){
     s0+=68474.0;
     s1+=157.0;
    } else {
     s0+=15246.0;
     s1+=447.0;
    }
   } else {
    if(i19<0.9950639009475708){
     s0+=17289.0;
     s1+=505.0;
    } else {
     s0+=5902.0;
     s1+=2543.0;
    }
   }
  } else {
   if(i0<-3.965594805777073e-05){
    if(i40<1.4109042240306735e-05){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=380.0;
    }
   } else {
    if(i32<1.6057538986206055){
     s0+=41.0;
     s1+=14.0;
    } else {
     s0+=44.0;
    }
   }
  }
 } else {
  if(i59<-0.0007824331987649202){
   if(i44<0.15001180768013){
    if(i34<1.116673469543457){
     s0+=64.0;
     s1+=516.0;
    } else {
     s0+=1112.0;
     s1+=851.0;
    }
   } else {
    if(i26<1.1935834884643555){
     s0+=29.0;
    } else {
     s0+=72.0;
     s1+=1262.0;
    }
   }
  } else {
   if(i33<0.0002323922235518694){
    s0+=1940.0;
   } else {
    if(i32<1.0921316146850586){
     s0+=41.0;
     s1+=416.0;
    } else {
     s0+=4009.0;
     s1+=729.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007046828395687044){
  if(i5<0.00023752450942993164){
   if(i51<-4.933453965350054e-06){
    if(i15<0.017892539501190186){
     s0+=57.0;
     s1+=73.0;
    } else {
     s0+=195.0;
     s1+=16499.0;
    }
   } else {
    s0+=47.0;
   }
  } else {
   s0+=86.0;
  }
 } else {
  s0+=1818.0;
 }
}
if(i5<2.2113323211669922e-05){
 if(i15<0.21760904788970947){
  if(i9<1.0181578397750854){
   if(i33<0.00105313491076231){
    if(i24<0.007399183697998524){
     s0+=24340.0;
     s1+=586.0;
    } else {
     s0+=6927.0;
     s1+=2298.0;
    }
   } else {
    if(i66<0.17307926714420319){
     s0+=72778.0;
     s1+=534.0;
    } else {
     s0+=5037.0;
     s1+=649.0;
    }
   }
  } else {
   if(i31<0.0007053573499433696){
    if(i38<1.1352583169937134){
     s0+=297.0;
    } else {
     s0+=161.0;
     s1+=27.0;
    }
   } else {
    if(i45<1.0025360584259033){
     s0+=117.0;
     s1+=484.0;
    } else {
     s0+=110.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i43<-9.474591934122145e-06){
   if(i7<0.006490905769169331){
    if(i81<0.12363716959953308){
     s1+=14.0;
    } else {
     s0+=23.0;
     s1+=7.0;
    }
   } else {
    s1+=690.0;
   }
  } else {
   if(i9<1.039807915687561){
    s0+=104.0;
   } else {
    if(i8<1.0180588960647583){
     s1+=1.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i4<1.0079312324523926){
  if(i24<0.01484004221856594){
   if(i31<0.001076599583029747){
    if(i56<1.0030176639556885){
     s0+=786.0;
     s1+=1139.0;
    } else {
     s0+=1395.0;
     s1+=2.0;
    }
   } else {
    if(i8<1.0214130878448486){
     s0+=2806.0;
     s1+=72.0;
    } else {
     s1+=70.0;
    }
   }
  } else {
   if(i44<0.06060144305229187){
    if(i19<0.9954344630241394){
     s0+=575.0;
     s1+=162.0;
    } else {
     s0+=185.0;
     s1+=576.0;
    }
   } else {
    if(i7<0.005657601170241833){
     s0+=223.0;
     s1+=82.0;
    } else {
     s0+=188.0;
     s1+=3564.0;
    }
   }
  }
 } else {
  if(i49<-8.29295277071651e-06){
   s0+=294.0;
  } else {
   if(i43<-3.298342926427722e-05){
    if(i4<1.008812665939331){
     s0+=1.0;
     s1+=492.0;
    } else {
     s1+=11713.0;
    }
   } else {
    if(i49<-3.9969449971977156e-06){
     s0+=279.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=1043.0;
    }
   }
  }
 }
}
if(i30<1.1279573440551758){
 if(i2<6.574392318725586e-05){
  if(i4<1.002614974975586){
   if(i33<0.0010463498765602708){
    if(i35<0.010212518274784088){
     s0+=22835.0;
     s1+=326.0;
    } else {
     s0+=8106.0;
     s1+=2424.0;
    }
   } else {
    if(i6<0.000337064266204834){
     s0+=71832.0;
     s1+=617.0;
    } else {
     s0+=3697.0;
     s1+=578.0;
    }
   }
  } else {
   if(i0<-4.65340526716318e-05){
    if(i59<-0.0006285998388193548){
     s0+=94.0;
     s1+=742.0;
    } else {
     s0+=325.0;
     s1+=326.0;
    }
   } else {
    if(i16<0.0020581381395459175){
     s0+=4657.0;
     s1+=1.0;
    } else {
     s0+=427.0;
     s1+=516.0;
    }
   }
  }
 } else {
  if(i55<0.0007963231764733791){
   if(i26<1.057311773300171){
    s0+=42.0;
   } else {
    if(i49<-5.205341039982159e-06){
     s0+=19.0;
    } else {
     s0+=3.0;
     s1+=2699.0;
    }
   }
  } else {
   if(i36<0.0019538498017936945){
    if(i53<0.04592294245958328){
     s0+=1648.0;
     s1+=25.0;
    } else {
     s0+=19.0;
     s1+=137.0;
    }
   } else {
    if(i42<0.00841706432402134){
     s0+=80.0;
     s1+=2140.0;
    } else {
     s0+=54.0;
     s1+=157.0;
    }
   }
  }
 }
} else {
 if(i43<-1.848773899837397e-05){
  if(i17<0.004862040281295776){
   if(i12<0.9804049134254456){
    if(i5<4.279613494873047e-05){
     s0+=104.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=10.0;
    }
   } else {
    if(i36<0.004325355403125286){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i26<1.1843671798706055){
    s0+=132.0;
   } else {
    if(i19<0.9897914528846741){
     s0+=127.0;
     s1+=506.0;
    } else {
     s0+=103.0;
     s1+=12839.0;
    }
   }
  }
 } else {
  if(i26<1.1967029571533203){
   s0+=1167.0;
  } else {
   if(i31<0.0009399715345352888){
    if(i50<3.874301910400391e-06){
     s0+=719.0;
     s1+=18.0;
    } else {
     s0+=64.0;
     s1+=25.0;
    }
   } else {
    if(i52<0.03653508797287941){
     s0+=151.0;
     s1+=30.0;
    } else {
     s0+=39.0;
     s1+=256.0;
    }
   }
  }
 }
}
if(i23<0.00021034479141235352){
 if(i11<1.0176970958709717){
  if(i0<-9.16679491638206e-05){
   if(i63<0.9829059839248657){
    if(i41<1.0321578979492188){
     s0+=614.0;
     s1+=88.0;
    } else {
     s0+=54.0;
     s1+=151.0;
    }
   } else {
    if(i27<0.05033096671104431){
     s0+=169.0;
     s1+=76.0;
    } else {
     s0+=53.0;
     s1+=2146.0;
    }
   }
  } else {
   if(i5<1.5079975128173828e-05){
    if(i7<0.003236576449126005){
     s0+=80429.0;
     s1+=776.0;
    } else {
     s0+=24798.0;
     s1+=2525.0;
    }
   } else {
    if(i37<1.0452228784561157){
     s0+=2294.0;
    } else {
     s0+=5901.0;
     s1+=2422.0;
    }
   }
  }
 } else {
  if(i16<0.00197591632604599){
   if(i16<0.0014042719267308712){
    if(i78<0.008376598358154297){
     s0+=366.0;
     s1+=12.0;
    } else {
     s0+=252.0;
    }
   } else {
    if(i45<1.0026373863220215){
     s0+=28.0;
     s1+=78.0;
    } else {
     s0+=72.0;
    }
   }
  } else {
   if(i27<0.10785415768623352){
    if(i36<0.0014900240348652005){
     s1+=127.0;
    } else {
     s0+=206.0;
     s1+=43.0;
    }
   } else {
    if(i2<-3.832578659057617e-05){
     s0+=115.0;
     s1+=88.0;
    } else {
     s0+=94.0;
     s1+=2693.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007056489121168852){
  if(i50<5.692243576049805e-05){
   if(i45<1.0008292198181152){
    if(i16<0.0026748706586658955){
     s0+=115.0;
    } else {
     s1+=302.0;
    }
   } else {
    if(i51<-3.762029109566356e-06){
     s0+=8.0;
     s1+=12934.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   s0+=57.0;
  }
 } else {
  s0+=757.0;
 }
}
if(i21<1.0045526027679443){
 if(i0<-7.64493306633085e-05){
  if(i59<-0.0009256148478016257){
   if(i13<0.8996535539627075){
    if(i46<0.9993155002593994){
     s1+=6.0;
    } else {
     s0+=52.0;
     s1+=4.0;
    }
   } else {
    if(i39<6.850101635791361e-05){
     s0+=92.0;
     s1+=2320.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i18<1.0169801712036133){
    if(i6<0.0008165240287780762){
     s0+=1089.0;
     s1+=105.0;
    } else {
     s0+=160.0;
     s1+=158.0;
    }
   } else {
    if(i69<1.2085582739018719e-06){
     s0+=6.0;
     s1+=223.0;
    } else {
     s0+=17.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i29<9.185075759887695e-05){
   if(i26<1.0905578136444092){
    if(i15<0.05934035778045654){
     s0+=18154.0;
     s1+=693.0;
    } else {
     s0+=511.0;
     s1+=174.0;
    }
   } else {
    if(i62<0.004376147408038378){
     s0+=60118.0;
     s1+=138.0;
    } else {
     s0+=561.0;
     s1+=48.0;
    }
   }
  } else {
   if(i9<1.0147029161453247){
    if(i7<0.004076238721609116){
     s0+=24959.0;
     s1+=625.0;
    } else {
     s0+=5428.0;
     s1+=2454.0;
    }
   } else {
    if(i36<0.0010941193904727697){
     s0+=17.0;
     s1+=310.0;
    } else {
     s0+=735.0;
     s1+=670.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i7<0.0027252102736383677){
   if(i2<0.00012236833572387695){
    if(i7<0.0026263720355927944){
     s0+=2576.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i36<0.0008065286092460155){
     s1+=287.0;
    } else {
     s0+=190.0;
    }
   }
  } else {
   if(i34<1.1174830198287964){
    if(i45<1.0037142038345337){
     s0+=5.0;
     s1+=1817.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i60<0.0022161006927490234){
     s0+=589.0;
     s1+=81.0;
    } else {
     s1+=48.0;
    }
   }
  }
 } else {
  if(i30<1.0743002891540527){
   if(i48<1.089385386876529e-05){
    if(i21<1.005831003189087){
     s0+=17.0;
    } else {
     s0+=30.0;
     s1+=223.0;
    }
   } else {
    if(i37<1.2621995210647583){
     s0+=161.0;
     s1+=113.0;
    } else {
     s0+=429.0;
     s1+=27.0;
    }
   }
  } else {
   if(i23<-0.0004546046257019043){
    if(i29<0.0009559988975524902){
     s0+=158.0;
     s1+=192.0;
    } else {
     s0+=2.0;
     s1+=104.0;
    }
   } else {
    if(i15<0.1016799807548523){
     s0+=119.0;
     s1+=550.0;
    } else {
     s0+=49.0;
     s1+=13163.0;
    }
   }
  }
 }
}
if(i1<0.000952303409576416){
 if(i15<0.20758000016212463){
  if(i5<1.5079975128173828e-05){
   if(i22<0.0008790697902441025){
    if(i7<0.0035363940987735987){
     s0+=26925.0;
     s1+=716.0;
    } else {
     s0+=2811.0;
     s1+=1802.0;
    }
   } else {
    if(i0<-6.655740435235202e-05){
     s0+=1556.0;
     s1+=330.0;
    } else {
     s0+=74730.0;
     s1+=510.0;
    }
   }
  } else {
   if(i7<0.0041018263436853886){
    if(i7<0.0038122208788990974){
     s0+=5630.0;
     s1+=76.0;
    } else {
     s0+=195.0;
     s1+=53.0;
    }
   } else {
    if(i19<0.9969189167022705){
     s0+=1484.0;
     s1+=481.0;
    } else {
     s0+=605.0;
     s1+=2392.0;
    }
   }
  }
 } else {
  if(i22<0.0025624986737966537){
   if(i56<1.0015790462493896){
    s0+=180.0;
   } else {
    if(i34<1.1935834884643555){
     s0+=46.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  } else {
   if(i1<-0.0004692375659942627){
    if(i43<-8.807673111732583e-06){
     s0+=37.0;
     s1+=255.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.0003286497958470136){
     s0+=6.0;
     s1+=1276.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i8<1.018824815750122){
  if(i14<0.0006884903414174914){
   if(i30<1.1010658740997314){
    if(i29<0.0001545548439025879){
     s0+=58.0;
    } else {
     s0+=221.0;
     s1+=2253.0;
    }
   } else {
    if(i24<0.0023598666302859783){
     s0+=2.0;
    } else {
     s0+=26.0;
     s1+=2206.0;
    }
   }
  } else {
   if(i16<0.010491658933460712){
    s0+=1773.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i7<0.0019448420498520136){
   if(i31<0.0006468880455940962){
    s1+=76.0;
   } else {
    if(i35<0.015982605516910553){
     s0+=48.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i49<-9.881618098006584e-06){
    s0+=9.0;
   } else {
    if(i69<0.00018185841327067465){
     s0+=4.0;
     s1+=11987.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i11<1.0183451175689697){
  if(i0<-9.147352102445439e-05){
   if(i61<-0.0076659321784973145){
    if(i7<0.02205919288098812){
     s0+=579.0;
     s1+=33.0;
    } else {
     s0+=68.0;
     s1+=67.0;
    }
   } else {
    if(i63<1.0271226167678833){
     s0+=145.0;
     s1+=318.0;
    } else {
     s0+=38.0;
     s1+=952.0;
    }
   }
  } else {
   if(i6<0.00029343366622924805){
    if(i37<1.0867384672164917){
     s0+=34655.0;
     s1+=2071.0;
    } else {
     s0+=68117.0;
     s1+=603.0;
    }
   } else {
    if(i40<2.0186034817015752e-05){
     s0+=7233.0;
     s1+=597.0;
    } else {
     s0+=2815.0;
     s1+=1584.0;
    }
   }
  }
 } else {
  if(i37<1.6269450187683105){
   if(i43<-7.942683623696212e-06){
    if(i64<-0.0005603422177955508){
     s0+=40.0;
     s1+=837.0;
    } else {
     s0+=384.0;
     s1+=826.0;
    }
   } else {
    if(i51<-4.1847188185784034e-06){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=239.0;
    }
   }
  } else {
   if(i28<0.016371866688132286){
    s0+=185.0;
   } else {
    s1+=35.0;
   }
  }
 }
} else {
 if(i34<1.176405668258667){
  if(i14<0.0002442885597702116){
   if(i34<1.1188106536865234){
    if(i69<-3.7540576158789918e-06){
     s0+=6.0;
    } else {
     s1+=2345.0;
    }
   } else {
    s0+=40.0;
   }
  } else {
   s0+=1919.0;
  }
 } else {
  if(i18<0.956588625907898){
   if(i40<0.00027492648223415017){
    s1+=96.0;
   } else {
    if(i27<0.01851099729537964){
     s0+=39.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=39.0;
    }
   }
  } else {
   if(i20<-0.0021743178367614746){
    if(i26<1.629280686378479){
     s0+=7.0;
     s1+=225.0;
    } else {
     s0+=35.0;
     s1+=4.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=13.0;
     s1+=12968.0;
    } else {
     s0+=15.0;
     s1+=662.0;
    }
   }
  }
 }
}
if(i44<0.17022371292114258){
 if(i2<7.349252700805664e-05){
  if(i5<1.8298625946044922e-05){
   if(i9<1.0181355476379395){
    if(i53<0.024427708238363266){
     s0+=73655.0;
     s1+=1346.0;
    } else {
     s0+=33301.0;
     s1+=2005.0;
    }
   } else {
    if(i40<2.824125112965703e-05){
     s0+=394.0;
     s1+=16.0;
    } else {
     s0+=218.0;
     s1+=242.0;
    }
   }
  } else {
   if(i32<1.0512452125549316){
    s0+=1899.0;
   } else {
    if(i59<-0.0007992606842890382){
     s0+=1043.0;
     s1+=1599.0;
    } else {
     s0+=3604.0;
     s1+=1205.0;
    }
   }
  }
 } else {
  if(i2<0.0001431107521057129){
   if(i29<0.0007589459419250488){
    if(i46<0.9997889399528503){
     s0+=141.0;
     s1+=13.0;
    } else {
     s0+=68.0;
     s1+=2359.0;
    }
   } else {
    if(i7<0.008689474314451218){
     s0+=1193.0;
     s1+=3.0;
    } else {
     s0+=44.0;
     s1+=338.0;
    }
   }
  } else {
   if(i21<1.0083987712860107){
    if(i4<1.0085781812667847){
     s0+=125.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=375.0;
    }
   } else {
    if(i29<0.0017504692077636719){
     s0+=16.0;
     s1+=5504.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
} else {
 if(i7<0.005061640404164791){
  if(i18<1.0175631046295166){
   if(i56<1.001945972442627){
    if(i56<1.001595377922058){
     s0+=693.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   } else {
    if(i0<-5.239534948486835e-05){
     s0+=7.0;
     s1+=46.0;
    } else {
     s0+=318.0;
     s1+=20.0;
    }
   }
  } else {
   if(i1<0.0003567337989807129){
    s0+=51.0;
   } else {
    if(i36<0.0018494667019695044){
     s0+=1.0;
    } else {
     s1+=118.0;
    }
   }
  }
 } else {
  if(i38<1.1180213689804077){
   if(i43<-2.994790702359751e-05){
    if(i45<1.0004162788391113){
     s0+=4.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i2<-3.135204315185547e-05){
     s0+=68.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i43<-6.627342372667044e-06){
    if(i20<-0.003924578428268433){
     s0+=12.0;
     s1+=156.0;
    } else {
     s0+=5.0;
     s1+=8492.0;
    }
   } else {
    s0+=12.0;
   }
  }
 }
}
if(i2<6.276369094848633e-05){
 if(i10<1.0136911869049072){
  if(i24<0.06480325013399124){
   if(i35<0.014315828680992126){
    if(i55<0.0006544662173837423){
     s0+=31336.0;
     s1+=1209.0;
    } else {
     s0+=45479.0;
     s1+=75.0;
    }
   } else {
    if(i0<-5.8667217672336847e-05){
     s0+=2420.0;
     s1+=1262.0;
    } else {
     s0+=33911.0;
     s1+=2888.0;
    }
   }
  } else {
   if(i1<-0.002814352512359619){
    s0+=236.0;
   } else {
    if(i58<0.0032868352718651295){
     s0+=2.0;
     s1+=802.0;
    } else {
     s0+=83.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i24<0.02434048056602478){
   if(i7<0.004595618695020676){
    if(i0<-7.996225031092763e-05){
     s0+=16.0;
     s1+=34.0;
    } else {
     s0+=448.0;
     s1+=16.0;
    }
   } else {
    if(i29<0.0009602904319763184){
     s0+=19.0;
     s1+=245.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i20<-0.0018754005432128906){
    if(i16<0.00489119254052639){
     s0+=105.0;
    } else {
     s1+=75.0;
    }
   } else {
    if(i0<-2.0374354789964855e-05){
     s0+=3.0;
     s1+=965.0;
    } else {
     s0+=42.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i7<0.003890079678967595){
  if(i32<1.094508409500122){
   if(i28<0.00024557727738283575){
    s0+=78.0;
   } else {
    s1+=623.0;
   }
  } else {
   if(i9<1.0260827541351318){
    if(i21<1.0123649835586548){
     s0+=1711.0;
    } else {
     s1+=127.0;
    }
   } else {
    if(i8<1.0206091403961182){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i15<0.1390233337879181){
   if(i69<2.5572485355951358e-06){
    if(i14<0.000712790060788393){
     s0+=151.0;
     s1+=2839.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i13<1.0359396934509277){
     s0+=77.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i14<0.0010344985639676452){
    if(i36<0.001838789670728147){
     s0+=16.0;
     s1+=155.0;
    } else {
     s1+=12851.0;
    }
   } else {
    s0+=41.0;
   }
  }
 }
}
if(i7<0.007529483176767826){
 if(i1<0.0012653470039367676){
  if(i7<0.003611193969845772){
   if(i16<0.001049526035785675){
    if(i36<0.0018412084318697453){
     s0+=67197.0;
     s1+=140.0;
    } else {
     s0+=2861.0;
     s1+=75.0;
    }
   } else {
    if(i22<0.0005715435836464167){
     s0+=3778.0;
     s1+=716.0;
    } else {
     s0+=16384.0;
     s1+=144.0;
    }
   }
  } else {
   if(i29<4.4286251068115234e-05){
    if(i33<0.0002727435203269124){
     s0+=21.0;
     s1+=25.0;
    } else {
     s0+=13546.0;
     s1+=67.0;
    }
   } else {
    if(i1<-0.0005957186222076416){
     s0+=4497.0;
     s1+=148.0;
    } else {
     s0+=1766.0;
     s1+=3285.0;
    }
   }
  }
 } else {
  if(i48<-1.2572561900014989e-05){
   if(i14<0.0008876462234184146){
    if(i12<1.0159132480621338){
     s0+=16.0;
     s1+=765.0;
    } else {
     s1+=1219.0;
    }
   } else {
    s0+=108.0;
   }
  } else {
   if(i28<0.001161547377705574){
    s1+=404.0;
   } else {
    if(i22<0.00238726451061666){
     s0+=873.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=327.0;
    }
   }
  }
 }
} else {
 if(i19<0.9954301118850708){
  if(i11<1.0107440948486328){
   if(i15<0.15665987133979797){
    if(i5<3.641843795776367e-05){
     s0+=4446.0;
     s1+=275.0;
    } else {
     s0+=265.0;
     s1+=201.0;
    }
   } else {
    if(i22<0.004284065216779709){
     s0+=42.0;
     s1+=6.0;
    } else {
     s0+=24.0;
     s1+=520.0;
    }
   }
  } else {
   if(i38<1.118202805519104){
    s0+=49.0;
   } else {
    s1+=503.0;
   }
  }
 } else {
  if(i3<0.999977707862854){
   if(i8<1.020806074142456){
    if(i33<0.017222557216882706){
     s0+=272.0;
     s1+=2.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=55.0;
   }
  } else {
   if(i8<0.9420216083526611){
    if(i45<1.0040621757507324){
     s0+=161.0;
     s1+=69.0;
    } else {
     s0+=16.0;
     s1+=98.0;
    }
   } else {
    if(i20<-0.0018391907215118408){
     s0+=135.0;
     s1+=697.0;
    } else {
     s0+=35.0;
     s1+=14599.0;
    }
   }
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i15<0.21642684936523438){
  if(i11<1.0177927017211914){
   if(i26<1.1162974834442139){
    if(i7<0.0036616299767047167){
     s0+=26070.0;
     s1+=866.0;
    } else {
     s0+=2889.0;
     s1+=2240.0;
    }
   } else {
    if(i70<0.004054896999150515){
     s0+=77282.0;
     s1+=622.0;
    } else {
     s0+=2900.0;
     s1+=560.0;
    }
   }
  } else {
   if(i6<0.00022685527801513672){
    if(i54<1.001389741897583){
     s0+=412.0;
     s1+=8.0;
    } else {
     s0+=75.0;
     s1+=71.0;
    }
   } else {
    if(i33<0.005392095074057579){
     s0+=49.0;
     s1+=471.0;
    } else {
     s0+=68.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i51<-3.164201189065352e-06){
   if(i33<0.0023041251115500927){
    s0+=11.0;
   } else {
    if(i35<0.06854525208473206){
     s0+=26.0;
     s1+=71.0;
    } else {
     s0+=4.0;
     s1+=631.0;
    }
   }
  } else {
   if(i43<-9.280358426622115e-06){
    if(i29<-0.00012427568435668945){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=129.0;
   }
  }
 }
} else {
 if(i14<0.000704434234648943){
  if(i21<1.0075204372406006){
   if(i16<0.002002175897359848){
    if(i33<0.0026396107859909534){
     s0+=1269.0;
     s1+=17.0;
    } else {
     s0+=14.0;
     s1+=57.0;
    }
   } else {
    if(i2<1.2218952178955078e-05){
     s0+=1139.0;
     s1+=442.0;
    } else {
     s0+=408.0;
     s1+=4899.0;
    }
   }
  } else {
   if(i8<0.9491846561431885){
    if(i34<1.600679874420166){
     s0+=127.0;
     s1+=92.0;
    } else {
     s0+=5.0;
     s1+=137.0;
    }
   } else {
    if(i7<0.004605700261890888){
     s0+=146.0;
     s1+=1117.0;
    } else {
     s0+=75.0;
     s1+=12166.0;
    }
   }
  }
 } else {
  s0+=3276.0;
 }
}
if(i13<1.0166476964950562){
 if(i6<0.0008875131607055664){
  if(i30<1.1529799699783325){
   if(i33<0.0010455697774887085){
    if(i16<0.0017125923186540604){
     s0+=30058.0;
     s1+=701.0;
    } else {
     s0+=2207.0;
     s1+=2521.0;
    }
   } else {
    if(i55<0.001986078219488263){
     s0+=70627.0;
     s1+=451.0;
    } else {
     s0+=8594.0;
     s1+=1121.0;
    }
   }
  } else {
   if(i45<1.0008147954940796){
    if(i31<0.0016136004123836756){
     s0+=369.0;
    } else {
     s0+=15.0;
     s1+=175.0;
    }
   } else {
    if(i52<0.06026296317577362){
     s0+=67.0;
     s1+=54.0;
    } else {
     s0+=22.0;
     s1+=513.0;
    }
   }
  }
 } else {
  if(i26<1.1843671798706055){
   if(i26<1.116804838180542){
    if(i37<1.0474592447280884){
     s0+=137.0;
    } else {
     s1+=1015.0;
    }
   } else {
    s0+=1841.0;
   }
  } else {
   if(i24<0.030939118936657906){
    if(i23<0.0001639723777770996){
     s0+=579.0;
     s1+=291.0;
    } else {
     s1+=489.0;
    }
   } else {
    if(i61<-0.007702440023422241){
     s0+=110.0;
     s1+=154.0;
    } else {
     s0+=129.0;
     s1+=2549.0;
    }
   }
  }
 }
} else {
 if(i7<0.004952743649482727){
  if(i42<0.0009312788024544716){
   if(i33<0.002174841007217765){
    s1+=438.0;
   } else {
    if(i54<1.003374695777893){
     s1+=3.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i1<0.0021645426750183105){
    if(i0<-7.189066673163325e-05){
     s0+=103.0;
     s1+=79.0;
    } else {
     s0+=1391.0;
     s1+=40.0;
    }
   } else {
    if(i50<3.141164779663086e-05){
     s1+=310.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i45<0.9968565702438354){
   if(i60<-0.00014609098434448242){
    s1+=1.0;
   } else {
    s0+=37.0;
   }
  } else {
   if(i51<-2.1549092252826085e-06){
    if(i0<-3.776128505705856e-05){
     s0+=57.0;
     s1+=13331.0;
    } else {
     s0+=39.0;
     s1+=200.0;
    }
   } else {
    s0+=35.0;
   }
  }
 }
}
if(i3<1.0026330947875977){
 if(i15<0.2192797064781189){
  if(i16<0.0016409580130130053){
   if(i63<1.0065827369689941){
    if(i31<0.0006573137361556292){
     s0+=5677.0;
     s1+=79.0;
    } else {
     s0+=497.0;
     s1+=220.0;
    }
   } else {
    if(i32<1.0776758193969727){
     s0+=18819.0;
     s1+=378.0;
    } else {
     s0+=62863.0;
     s1+=179.0;
    }
   }
  } else {
   if(i4<0.9984240531921387){
    if(i74<0.02160308137536049){
     s0+=17967.0;
     s1+=462.0;
    } else {
     s0+=319.0;
     s1+=167.0;
    }
   } else {
    if(i33<0.00022243280545808375){
     s0+=1525.0;
    } else {
     s0+=2524.0;
     s1+=3491.0;
    }
   }
  }
 } else {
  if(i36<0.011495944112539291){
   if(i3<1.0006839036941528){
    if(i29<0.0004157423973083496){
     s0+=125.0;
     s1+=11.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i79<0.11757418513298035){
     s0+=9.0;
     s1+=132.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   }
  } else {
   s1+=547.0;
  }
 }
} else {
 if(i10<1.01691472530365){
  if(i14<0.0003976503503508866){
   if(i2<4.45246696472168e-05){
    if(i7<0.004419243894517422){
     s0+=1035.0;
     s1+=69.0;
    } else {
     s0+=691.0;
     s1+=855.0;
    }
   } else {
    if(i30<1.0260430574417114){
     s0+=33.0;
     s1+=12.0;
    } else {
     s0+=225.0;
     s1+=4020.0;
    }
   }
  } else {
   if(i55<0.002358029829338193){
    if(i28<0.014003872871398926){
     s0+=3313.0;
     s1+=27.0;
    } else {
     s0+=8.0;
     s1+=13.0;
    }
   } else {
    if(i18<0.9473909139633179){
     s0+=293.0;
     s1+=118.0;
    } else {
     s0+=102.0;
     s1+=776.0;
    }
   }
  }
 } else {
  if(i0<-7.144249684643e-05){
   if(i0<-8.779908966971561e-05){
    if(i69<1.2864231393905357e-05){
     s0+=8.0;
     s1+=11883.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i49<-4.996303687221371e-06){
     s0+=17.0;
    } else {
     s0+=16.0;
     s1+=376.0;
    }
   }
  } else {
   if(i56<1.0038628578186035){
    if(i51<-1.353124844172271e-05){
     s0+=70.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=581.0;
    }
   } else {
    if(i16<0.004642949905246496){
     s0+=200.0;
     s1+=5.0;
    } else {
     s1+=35.0;
    }
   }
  }
 }
}
if(i4<1.0038650035858154){
 if(i7<0.007605092599987984){
  if(i34<1.0905578136444092){
   if(i24<0.006565754301846027){
    if(i8<0.9948663711547852){
     s0+=859.0;
     s1+=219.0;
    } else {
     s0+=18450.0;
     s1+=127.0;
    }
   } else {
    if(i4<0.9980113506317139){
     s0+=6385.0;
     s1+=144.0;
    } else {
     s0+=877.0;
     s1+=2014.0;
    }
   }
  } else {
   if(i26<1.1162974834442139){
    if(i34<1.1157604455947876){
     s0+=4202.0;
     s1+=2.0;
    } else {
     s0+=173.0;
     s1+=412.0;
    }
   } else {
    if(i21<1.0054625272750854){
     s0+=76353.0;
     s1+=742.0;
    } else {
     s0+=153.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i68<1.0125644207000732){
   if(i24<0.06022990494966507){
    if(i44<0.08350875973701477){
     s0+=4384.0;
     s1+=428.0;
    } else {
     s0+=354.0;
     s1+=423.0;
    }
   } else {
    if(i64<0.0006695888005197048){
     s0+=45.0;
     s1+=4.0;
    } else {
     s0+=89.0;
     s1+=648.0;
    }
   }
  } else {
   if(i6<-0.0008303821086883545){
    if(i58<0.0005722621572203934){
     s0+=51.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i31<0.0041914815083146095){
     s0+=76.0;
     s1+=1291.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
} else {
 if(i0<-7.305304461624473e-05){
  if(i49<-6.50765423415578e-06){
   s0+=313.0;
  } else {
   if(i48<0.00020793605654034764){
    if(i18<0.94720059633255){
     s0+=17.0;
     s1+=18.0;
    } else {
     s0+=117.0;
     s1+=15266.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i16<0.0019438646268099546){
   if(i1<0.001803576946258545){
    if(i29<0.0004838705062866211){
     s0+=280.0;
     s1+=123.0;
    } else {
     s0+=2764.0;
    }
   } else {
    if(i51<-1.5110901586012915e-05){
     s0+=39.0;
    } else {
     s1+=343.0;
    }
   }
  } else {
   if(i24<0.013481341302394867){
    if(i31<0.0013347226195037365){
     s0+=92.0;
     s1+=931.0;
    } else {
     s0+=600.0;
     s1+=4.0;
    }
   } else {
    if(i7<0.0044389208778738976){
     s0+=14.0;
    } else {
     s0+=32.0;
     s1+=874.0;
    }
   }
  }
 }
}
if(i9<1.017014980316162){
 if(i4<1.0038676261901855){
  if(i16<0.001729308976791799){
   if(i33<0.0003407273325137794){
    if(i61<-0.00038698315620422363){
     s0+=1307.0;
     s1+=415.0;
    } else {
     s0+=18031.0;
     s1+=268.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=67802.0;
     s1+=200.0;
    } else {
     s0+=2009.0;
     s1+=111.0;
    }
   }
  } else {
   if(i34<1.1164028644561768){
    if(i33<0.00022356549743562937){
     s0+=1472.0;
    } else {
     s0+=1571.0;
     s1+=2371.0;
    }
   } else {
    if(i2<-7.68899917602539e-06){
     s0+=17858.0;
     s1+=863.0;
    } else {
     s0+=1030.0;
     s1+=1201.0;
    }
   }
  }
 } else {
  if(i33<0.0021074290852993727){
   if(i28<0.0012050056830048561){
    if(i28<0.00023858364147599787){
     s0+=613.0;
    } else {
     s0+=20.0;
     s1+=1410.0;
    }
   } else {
    if(i20<0.0024919509887695312){
     s0+=2802.0;
     s1+=35.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i52<0.016578398644924164){
    if(i2<5.78761100769043e-05){
     s0+=56.0;
     s1+=14.0;
    } else {
     s0+=13.0;
     s1+=214.0;
    }
   } else {
    if(i27<0.041255444288253784){
     s0+=33.0;
     s1+=114.0;
    } else {
     s0+=40.0;
     s1+=2688.0;
    }
   }
  }
 }
} else {
 if(i2<2.3424625396728516e-05){
  if(i48<7.592733709316235e-06){
   if(i3<1.0029513835906982){
    if(i44<0.0711199939250946){
     s0+=58.0;
     s1+=5.0;
    } else {
     s0+=337.0;
    }
   } else {
    if(i1<0.00011998414993286133){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i16<0.004848060198128223){
    if(i46<1.0014259815216064){
     s0+=254.0;
     s1+=328.0;
    } else {
     s0+=308.0;
    }
   } else {
    if(i2<-0.00014856457710266113){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i24<0.005341141484677792){
   if(i14<0.0002790166181512177){
    if(i43<-1.442737539036898e-05){
     s0+=3.0;
     s1+=559.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i36<0.007046038284897804){
     s0+=476.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i15<0.10173794627189636){
    if(i40<5.1182265451643616e-05){
     s0+=54.0;
     s1+=363.0;
    } else {
     s0+=86.0;
     s1+=9.0;
    }
   } else {
    if(i0<-8.838401845423505e-05){
     s0+=18.0;
     s1+=11543.0;
    } else {
     s0+=125.0;
     s1+=1253.0;
    }
   }
  }
 }
}
if(i1<0.0009437799453735352){
 if(i44<0.18493691086769104){
  if(i9<1.0181578397750854){
   if(i3<1.0023245811462402){
    if(i32<1.0905030965805054){
     s0+=28204.0;
     s1+=2714.0;
    } else {
     s0+=79664.0;
     s1+=1077.0;
    }
   } else {
    if(i0<-4.3942527554463595e-05){
     s0+=1067.0;
     s1+=1247.0;
    } else {
     s0+=3895.0;
     s1+=550.0;
    }
   }
  } else {
   if(i7<0.005096315406262875){
    if(i6<0.0004595518112182617){
     s0+=557.0;
     s1+=18.0;
    } else {
     s0+=226.0;
     s1+=58.0;
    }
   } else {
    if(i21<0.9959926009178162){
     s0+=25.0;
     s1+=8.0;
    } else {
     s0+=61.0;
     s1+=836.0;
    }
   }
  }
 } else {
  if(i7<0.005579294171184301){
   if(i48<1.0513536835787818e-05){
    if(i1<0.0008871555328369141){
     s0+=270.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i20<-0.0002950429916381836){
     s0+=177.0;
     s1+=16.0;
    } else {
     s0+=28.0;
     s1+=67.0;
    }
   }
  } else {
   if(i28<0.0021288907155394554){
    s0+=8.0;
   } else {
    if(i2<-7.88271427154541e-05){
     s0+=16.0;
     s1+=83.0;
    } else {
     s0+=7.0;
     s1+=1312.0;
    }
   }
  }
 }
} else {
 if(i22<0.002327374182641506){
  if(i62<0.0004151806642767042){
   if(i46<0.9997614026069641){
    s0+=100.0;
   } else {
    if(i36<0.00016141617379616946){
     s0+=36.0;
    } else {
     s0+=66.0;
     s1+=2088.0;
    }
   }
  } else {
   if(i22<0.0009695654734969139){
    s1+=199.0;
   } else {
    s0+=1921.0;
   }
  }
 } else {
  if(i15<0.030543237924575806){
   if(i2<0.00014096498489379883){
    if(i50<1.2993812561035156e-05){
     s0+=68.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=72.0;
   }
  } else {
   if(i38<1.075517177581787){
    if(i77<-0.00479548703879118){
     s0+=18.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i23<-4.45246696472168e-05){
     s0+=46.0;
     s1+=1204.0;
    } else {
     s0+=3.0;
     s1+=12805.0;
    }
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i44<0.2006644308567047){
  if(i6<0.00028055906295776367){
   if(i31<0.0006841096910648048){
    if(i19<0.9987882375717163){
     s0+=28916.0;
     s1+=289.0;
    } else {
     s0+=45295.0;
     s1+=85.0;
    }
   } else {
    if(i37<1.0867881774902344){
     s0+=6580.0;
     s1+=1825.0;
    } else {
     s0+=22170.0;
     s1+=562.0;
    }
   }
  } else {
   if(i24<0.009589133784174919){
    if(i8<1.0080235004425049){
     s0+=4963.0;
     s1+=76.0;
    } else {
     s0+=425.0;
     s1+=117.0;
    }
   } else {
    if(i1<-0.0004137754440307617){
     s0+=911.0;
     s1+=131.0;
    } else {
     s0+=330.0;
     s1+=1440.0;
    }
   }
  }
 } else {
  if(i33<0.007215976249426603){
   if(i45<1.000819444656372){
    s0+=161.0;
   } else {
    if(i35<0.0237507913261652){
     s0+=24.0;
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=159.0;
    }
   }
  } else {
   if(i16<0.003179481253027916){
    s0+=3.0;
   } else {
    if(i7<0.008859701454639435){
     s0+=1.0;
    } else {
     s1+=464.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007055420428514481){
  if(i23<0.00016695261001586914){
   if(i41<1.104677438735962){
    if(i17<0.15691277384757996){
     s0+=2766.0;
     s1+=1653.0;
    } else {
     s0+=86.0;
     s1+=597.0;
    }
   } else {
    if(i34<1.1793382167816162){
     s0+=272.0;
     s1+=7.0;
    } else {
     s0+=169.0;
     s1+=3248.0;
    }
   }
  } else {
   if(i38<1.1130268573760986){
    if(i43<-0.00010856250446522608){
     s0+=49.0;
    } else {
     s0+=38.0;
     s1+=2278.0;
    }
   } else {
    if(i19<1.0043578147888184){
     s0+=3.0;
     s1+=284.0;
    } else {
     s0+=1.0;
     s1+=11033.0;
    }
   }
  }
 } else {
  s0+=3424.0;
 }
}
if(i8<1.0143446922302246){
 if(i7<0.013961564749479294){
  if(i16<0.0017282022163271904){
   if(i40<-2.2790103685110807e-05){
    if(i61<0.0003129243850708008){
     s0+=1.0;
     s1+=285.0;
    } else {
     s0+=94.0;
     s1+=12.0;
    }
   } else {
    if(i63<1.0179111957550049){
     s0+=24726.0;
     s1+=630.0;
    } else {
     s0+=67016.0;
     s1+=329.0;
    }
   }
  } else {
   if(i34<1.1164028644561768){
    if(i6<-0.00015220046043395996){
     s0+=1211.0;
     s1+=43.0;
    } else {
     s0+=1965.0;
     s1+=3376.0;
    }
   } else {
    if(i1<-9.047985076904297e-05){
     s0+=17292.0;
     s1+=527.0;
    } else {
     s0+=1760.0;
     s1+=1610.0;
    }
   }
  }
 } else {
  if(i12<0.9706064462661743){
   if(i44<0.08309003710746765){
    if(i34<1.5810168981552124){
     s0+=817.0;
     s1+=36.0;
    } else {
     s0+=124.0;
     s1+=116.0;
    }
   } else {
    if(i44<0.13704633712768555){
     s0+=30.0;
     s1+=44.0;
    } else {
     s0+=3.0;
     s1+=97.0;
    }
   }
  } else {
   if(i8<0.9396428465843201){
    if(i31<0.0014026225544512272){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=145.0;
    }
   } else {
    if(i45<0.9960751533508301){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=2886.0;
    }
   }
  }
 }
} else {
 if(i6<0.00028628110885620117){
  if(i24<0.03085649013519287){
   if(i54<1.0020740032196045){
    s0+=329.0;
   } else {
    if(i7<0.0029977993108332157){
     s0+=12.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i31<0.0007227809401229024){
    s0+=6.0;
   } else {
    s1+=168.0;
   }
  }
 } else {
  if(i37<1.1673319339752197){
   if(i7<0.003284935839474201){
    if(i26<1.1180615425109863){
     s1+=201.0;
    } else {
     s0+=664.0;
     s1+=29.0;
    }
   } else {
    if(i31<0.002093837596476078){
     s0+=33.0;
     s1+=2014.0;
    } else {
     s0+=102.0;
     s1+=43.0;
    }
   }
  } else {
   if(i7<0.00297002331353724){
    if(i2<0.00014412403106689453){
     s0+=32.0;
    } else {
     s1+=144.0;
    }
   } else {
    s1+=11788.0;
   }
  }
 }
}
if(i10<1.0136241912841797){
 if(i30<1.1402404308319092){
  if(i2<6.407499313354492e-05){
   if(i16<0.0016907452372834086){
    if(i32<1.0776758193969727){
     s0+=23059.0;
     s1+=631.0;
    } else {
     s0+=66253.0;
     s1+=236.0;
    }
   } else {
    if(i1<-0.0004296302795410156){
     s0+=18680.0;
     s1+=810.0;
    } else {
     s0+=4490.0;
     s1+=3605.0;
    }
   }
  } else {
   if(i33<0.002280508168041706){
    if(i32<1.116804838180542){
     s0+=249.0;
     s1+=839.0;
    } else {
     s0+=1196.0;
     s1+=30.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=51.0;
     s1+=1034.0;
    } else {
     s0+=61.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i7<0.0050766668282449245){
   if(i48<-9.042623787536286e-06){
    s1+=11.0;
   } else {
    if(i40<7.677402027184144e-05){
     s0+=867.0;
    } else {
     s0+=117.0;
     s1+=7.0;
    }
   }
  } else {
   if(i0<-4.463823643163778e-05){
    if(i60<-0.01155024766921997){
     s0+=67.0;
     s1+=160.0;
    } else {
     s0+=27.0;
     s1+=2244.0;
    }
   } else {
    if(i1<-0.0004817843437194824){
     s0+=73.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=136.0;
    }
   }
  }
 }
} else {
 if(i5<1.0311603546142578e-05){
  if(i48<9.793244316824712e-06){
   s0+=245.0;
  } else {
   if(i16<0.0024283726233989){
    if(i36<0.002819448709487915){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=85.0;
    }
   } else {
    if(i45<1.0028427839279175){
     s0+=7.0;
     s1+=205.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i22<0.002549602882936597){
   if(i45<1.0030103921890259){
    if(i46<0.9997121095657349){
     s0+=180.0;
    } else {
     s0+=97.0;
     s1+=1913.0;
    }
   } else {
    s0+=370.0;
   }
  } else {
   if(i15<0.1016799807548523){
    if(i2<8.255243301391602e-05){
     s0+=103.0;
     s1+=32.0;
    } else {
     s0+=4.0;
     s1+=145.0;
    }
   } else {
    if(i2<-2.47955322265625e-05){
     s0+=78.0;
     s1+=24.0;
    } else {
     s0+=47.0;
     s1+=12343.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i7<0.007508285343647003){
  if(i4<1.0025980472564697){
   if(i34<1.0905578136444092){
    if(i32<1.05497145652771){
     s0+=20392.0;
     s1+=153.0;
    } else {
     s0+=5159.0;
     s1+=1943.0;
    }
   } else {
    if(i28<0.0008190867956727743){
     s0+=5327.0;
     s1+=372.0;
    } else {
     s0+=72598.0;
     s1+=534.0;
    }
   }
  } else {
   if(i53<0.04570893943309784){
    if(i22<0.0008719067554920912){
     s0+=1270.0;
     s1+=653.0;
    } else {
     s0+=4468.0;
     s1+=157.0;
    }
   } else {
    if(i29<0.000555574893951416){
     s0+=118.0;
     s1+=297.0;
    } else {
     s0+=111.0;
    }
   }
  }
 } else {
  if(i63<1.0387275218963623){
   if(i3<1.0005247592926025){
    if(i65<3.899818693753332e-06){
     s1+=25.0;
    } else {
     s0+=2767.0;
     s1+=75.0;
    }
   } else {
    if(i12<0.9770811796188354){
     s0+=1676.0;
     s1+=251.0;
    } else {
     s0+=207.0;
     s1+=667.0;
    }
   }
  } else {
   if(i24<0.021833136677742004){
    if(i59<-0.0018828515894711018){
     s0+=4.0;
     s1+=83.0;
    } else {
     s0+=222.0;
     s1+=53.0;
    }
   } else {
    if(i12<0.9675083756446838){
     s0+=141.0;
     s1+=64.0;
    } else {
     s0+=179.0;
     s1+=2524.0;
    }
   }
  }
 }
} else {
 if(i22<0.0023432746529579163){
  if(i57<0.0007056510075926781){
   if(i29<0.0006195008754730225){
    if(i14<0.0010250321356579661){
     s1+=2182.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=89.0;
   }
  } else {
   if(i33<0.0012021275470033288){
    if(i22<0.0009682340896688402){
     s1+=139.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i37<1.0887261629104614){
     s1+=10.0;
    } else {
     s0+=1778.0;
    }
   }
  }
 } else {
  if(i4<1.0027973651885986){
   if(i41<1.1078048944473267){
    if(i78<-0.038800328969955444){
     s1+=6.0;
    } else {
     s0+=25.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i58<0.0032086684368550777){
    if(i0<-9.02422470971942e-05){
     s0+=7.0;
     s1+=13068.0;
    } else {
     s0+=51.0;
     s1+=880.0;
    }
   } else {
    if(i16<0.005749039351940155){
     s0+=18.0;
    } else {
     s0+=4.0;
     s1+=74.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i7<0.004045216366648674){
  if(i36<0.0006386748282238841){
   if(i7<0.0031153326854109764){
    if(i58<0.00016794659313745797){
     s0+=22717.0;
     s1+=123.0;
    } else {
     s0+=1692.0;
     s1+=442.0;
    }
   } else {
    if(i56<1.0004301071166992){
     s0+=1490.0;
     s1+=113.0;
    } else {
     s0+=147.0;
     s1+=393.0;
    }
   }
  } else {
   if(i38<1.1354830265045166){
    if(i55<0.0024472735822200775){
     s0+=60445.0;
     s1+=114.0;
    } else {
     s0+=1398.0;
     s1+=45.0;
    }
   } else {
    if(i37<1.1355493068695068){
     s1+=61.0;
    } else {
     s0+=2306.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i26<1.1164028644561768){
   if(i56<0.9996740818023682){
    if(i4<1.0012834072113037){
     s0+=2316.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=15.0;
    }
   } else {
    if(i46<0.9995527267456055){
     s0+=41.0;
    } else {
     s0+=2.0;
     s1+=2322.0;
    }
   }
  } else {
   if(i47<1.027677059173584){
    if(i6<0.00014132261276245117){
     s0+=15924.0;
     s1+=418.0;
    } else {
     s0+=1660.0;
     s1+=884.0;
    }
   } else {
    if(i17<0.13931488990783691){
     s0+=128.0;
     s1+=27.0;
    } else {
     s0+=87.0;
     s1+=721.0;
    }
   }
  }
 }
} else {
 if(i33<0.0029947843868285418){
  if(i14<0.00025326121249236166){
   if(i40<5.7758428738452494e-05){
    if(i49<-3.948594894609414e-06){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=2929.0;
    }
   } else {
    if(i31<0.000553355785086751){
     s1+=2.0;
    } else {
     s0+=247.0;
     s1+=9.0;
    }
   }
  } else {
   if(i24<0.01724468730390072){
    if(i72<0.0069879889488220215){
     s0+=4337.0;
     s1+=10.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i14<0.0024330653250217438){
     s1+=126.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i44<0.056782037019729614){
   if(i17<0.068174809217453){
    if(i23<0.00013577938079833984){
     s0+=929.0;
     s1+=266.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i28<0.003389420686289668){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=588.0;
    }
   }
  } else {
   if(i18<0.9840798377990723){
    if(i52<0.046795010566711426){
     s0+=166.0;
     s1+=283.0;
    } else {
     s0+=62.0;
     s1+=894.0;
    }
   } else {
    if(i32<1.1757044792175293){
     s0+=38.0;
     s1+=7.0;
    } else {
     s0+=125.0;
     s1+=13464.0;
    }
   }
  }
 }
}
if(i19<1.0082957744598389){
 if(i7<0.008089102804660797){
  if(i5<1.7464160919189453e-05){
   if(i37<1.0867384672164917){
    if(i13<1.0081979036331177){
     s0+=34380.0;
     s1+=2076.0;
    } else {
     s0+=272.0;
     s1+=420.0;
    }
   } else {
    if(i11<1.0167675018310547){
     s0+=68796.0;
     s1+=598.0;
    } else {
     s0+=748.0;
     s1+=135.0;
    }
   }
  } else {
   if(i7<0.004105141386389732){
    if(i34<1.1986620426177979){
     s0+=4572.0;
     s1+=59.0;
    } else {
     s0+=449.0;
     s1+=91.0;
    }
   } else {
    if(i16<0.003345868084579706){
     s0+=281.0;
     s1+=1270.0;
    } else {
     s0+=660.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i44<0.05063560605049133){
   if(i2<-6.973743438720703e-06){
    if(i74<0.05127055197954178){
     s0+=3323.0;
     s1+=68.0;
    } else {
     s0+=40.0;
     s1+=63.0;
    }
   } else {
    if(i41<1.0293505191802979){
     s0+=222.0;
     s1+=80.0;
    } else {
     s0+=80.0;
     s1+=530.0;
    }
   }
  } else {
   if(i40<0.00030491899815388024){
    if(i3<0.9958744049072266){
     s0+=78.0;
    } else {
     s0+=241.0;
     s1+=4492.0;
    }
   } else {
    if(i24<0.051552239805459976){
     s0+=353.0;
     s1+=100.0;
    } else {
     s0+=52.0;
     s1+=364.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007025634404271841){
  if(i21<0.9982049465179443){
   if(i16<0.002938615158200264){
    s0+=99.0;
   } else {
    s1+=65.0;
   }
  } else {
   if(i51<-5.175198566576e-06){
    if(i27<0.15596282482147217){
     s0+=293.0;
     s1+=3340.0;
    } else {
     s0+=32.0;
     s1+=10565.0;
    }
   } else {
    s0+=44.0;
   }
  }
 } else {
  if(i17<0.4033498167991638){
   s0+=1471.0;
  } else {
   s1+=7.0;
  }
 }
}
if(i2<6.335973739624023e-05){
 if(i0<-7.645013829460368e-05){
  if(i18<0.953162670135498){
   if(i71<0.09937557578086853){
    if(i41<1.0650966167449951){
     s0+=1086.0;
     s1+=83.0;
    } else {
     s0+=23.0;
     s1+=93.0;
    }
   } else {
    if(i65<-7.331659617193509e-07){
     s0+=1.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i7<0.012525667436420918){
    if(i4<1.0022642612457275){
     s0+=356.0;
     s1+=144.0;
    } else {
     s0+=61.0;
     s1+=556.0;
    }
   } else {
    if(i80<-0.058080852031707764){
     s0+=26.0;
     s1+=111.0;
    } else {
     s0+=12.0;
     s1+=1418.0;
    }
   }
  }
 } else {
  if(i11<1.0162713527679443){
   if(i29<8.291006088256836e-05){
    if(i44<0.23686379194259644){
     s0+=77403.0;
     s1+=823.0;
    } else {
     s0+=11.0;
     s1+=46.0;
    }
   } else {
    if(i22<0.0009234921308234334){
     s0+=5408.0;
     s1+=2423.0;
    } else {
     s0+=29038.0;
     s1+=1179.0;
    }
   }
  } else {
   if(i55<0.0005914991488680243){
    if(i33<0.0017565622692927718){
     s0+=7.0;
     s1+=278.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i35<0.05182524770498276){
     s0+=852.0;
     s1+=143.0;
    } else {
     s0+=268.0;
     s1+=419.0;
    }
   }
  }
 }
} else {
 if(i28<0.0023654235992580652){
  if(i42<0.0010659191757440567){
   if(i49<-4.57286068922258e-06){
    s0+=34.0;
   } else {
    if(i28<0.0002476790396030992){
     s0+=75.0;
    } else {
     s0+=8.0;
     s1+=2331.0;
    }
   }
  } else {
   if(i70<0.0034775263629853725){
    if(i38<1.0773653984069824){
     s1+=17.0;
    } else {
     s0+=1869.0;
     s1+=4.0;
    }
   } else {
    if(i4<1.0076758861541748){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i8<0.9386835098266602){
   if(i52<0.029120130464434624){
    if(i19<1.006754755973816){
     s0+=27.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i54<1.011725664138794){
     s0+=15.0;
     s1+=13.0;
    } else {
     s0+=6.0;
     s1+=90.0;
    }
   }
  } else {
   if(i38<1.075517177581787){
    if(i77<-0.004267650656402111){
     s0+=17.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i27<0.10139989852905273){
     s0+=43.0;
     s1+=486.0;
    } else {
     s0+=17.0;
     s1+=13360.0;
    }
   }
  }
 }
}
if(i3<1.0026230812072754){
 if(i24<0.0649116039276123){
  if(i18<1.0094168186187744){
   if(i6<0.00016492605209350586){
    if(i16<0.001299664261750877){
     s0+=69071.0;
     s1+=328.0;
    } else {
     s0+=25258.0;
     s1+=1667.0;
    }
   } else {
    if(i35<0.016924459487199783){
     s0+=12359.0;
     s1+=548.0;
    } else {
     s0+=2280.0;
     s1+=1368.0;
    }
   }
  } else {
   if(i26<1.116804838180542){
    if(i43<-1.0827933692780789e-05){
     s1+=737.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i59<-0.0009831400820985436){
     s0+=405.0;
     s1+=188.0;
    } else {
     s0+=889.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i2<-0.00018262863159179688){
   s0+=239.0;
  } else {
   if(i11<0.8148449659347534){
    s0+=10.0;
   } else {
    if(i12<0.9438281059265137){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=694.0;
    }
   }
  }
 }
} else {
 if(i0<-7.230872142827138e-05){
  if(i12<0.9710646867752075){
   if(i41<1.0531532764434814){
    if(i16<0.007895585149526596){
     s0+=210.0;
     s1+=3.0;
    } else {
     s0+=98.0;
     s1+=23.0;
    }
   } else {
    if(i46<1.0001314878463745){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   }
  } else {
   if(i27<0.039544880390167236){
    if(i75<-0.007469356060028076){
     s0+=20.0;
     s1+=128.0;
    } else {
     s0+=124.0;
     s1+=25.0;
    }
   } else {
    if(i49<-6.419467354135122e-06){
     s0+=216.0;
     s1+=1.0;
    } else {
     s0+=118.0;
     s1+=15982.0;
    }
   }
  }
 } else {
  if(i16<0.0018918474670499563){
   if(i14<0.00017400211072526872){
    if(i1<0.00015664100646972656){
     s0+=136.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=372.0;
    }
   } else {
    if(i18<0.9957646131515503){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=3010.0;
     s1+=11.0;
    }
   }
  } else {
   if(i29<0.000568687915802002){
    if(i12<0.9997278451919556){
     s0+=270.0;
     s1+=214.0;
    } else {
     s0+=52.0;
     s1+=1433.0;
    }
   } else {
    if(i7<0.0068620238453149796){
     s0+=1196.0;
     s1+=24.0;
    } else {
     s0+=468.0;
     s1+=585.0;
    }
   }
  }
 }
}
if(i45<1.0017826557159424){
 if(i11<1.0162713527679443){
  if(i7<0.003659198060631752){
   if(i26<1.1162974834442139){
    if(i53<0.011403918266296387){
     s0+=17352.0;
     s1+=191.0;
    } else {
     s0+=8971.0;
     s1+=668.0;
    }
   } else {
    if(i55<0.0019241529516875744){
     s0+=54449.0;
     s1+=52.0;
    } else {
     s0+=2616.0;
     s1+=80.0;
    }
   }
  } else {
   if(i6<-6.437301635742188e-05){
    if(i15<0.23286330699920654){
     s0+=18164.0;
     s1+=258.0;
    } else {
     s0+=6.0;
     s1+=82.0;
    }
   } else {
    if(i2<-3.1888484954833984e-05){
     s0+=1453.0;
     s1+=166.0;
    } else {
     s0+=975.0;
     s1+=3150.0;
    }
   }
  }
 } else {
  if(i31<0.0006255829939618707){
   if(i56<1.0015878677368164){
    if(i2<0.00015366077423095703){
     s0+=518.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i46<0.9983292818069458){
    s0+=109.0;
   } else {
    if(i49<-3.8008781757525867e-06){
     s0+=37.0;
    } else {
     s0+=113.0;
     s1+=2134.0;
    }
   }
  }
 }
} else {
 if(i30<1.1180875301361084){
  if(i21<1.0098519325256348){
   if(i7<0.003787376917898655){
    if(i46<1.0010814666748047){
     s0+=986.0;
     s1+=222.0;
    } else {
     s0+=5795.0;
     s1+=23.0;
    }
   } else {
    if(i23<-0.00018605589866638184){
     s0+=3003.0;
     s1+=451.0;
    } else {
     s0+=583.0;
     s1+=1361.0;
    }
   }
  } else {
   if(i23<0.0002563595771789551){
    if(i29<0.0012714266777038574){
     s0+=106.0;
     s1+=640.0;
    } else {
     s0+=188.0;
     s1+=45.0;
    }
   } else {
    if(i19<1.0146987438201904){
     s0+=8.0;
     s1+=244.0;
    } else {
     s1+=1432.0;
    }
   }
  }
 } else {
  if(i33<0.00225303927436471){
   s0+=724.0;
  } else {
   if(i1<-0.0004335641860961914){
    if(i43<-3.397736873012036e-05){
     s0+=7.0;
     s1+=146.0;
    } else {
     s0+=252.0;
     s1+=49.0;
    }
   } else {
    if(i7<0.003416655585169792){
     s0+=66.0;
     s1+=167.0;
    } else {
     s0+=105.0;
     s1+=12702.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i15<0.2165270447731018){
  if(i8<1.0092215538024902){
   if(i28<0.0010681708808988333){
    if(i37<1.0514838695526123){
     s0+=24233.0;
     s1+=729.0;
    } else {
     s0+=6961.0;
     s1+=2042.0;
    }
   } else {
    if(i64<0.0011844527907669544){
     s0+=69725.0;
     s1+=352.0;
    } else {
     s0+=6704.0;
     s1+=788.0;
    }
   }
  } else {
   if(i16<0.00194212154019624){
    if(i29<0.00011456012725830078){
     s0+=958.0;
    } else {
     s0+=374.0;
     s1+=50.0;
    }
   } else {
    if(i51<-9.749173841555603e-06){
     s0+=189.0;
     s1+=7.0;
    } else {
     s0+=88.0;
     s1+=665.0;
    }
   }
  }
 } else {
  if(i51<-2.993580210386426e-06){
   if(i16<0.002790674101561308){
    if(i1<5.486607551574707e-05){
     s0+=31.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   } else {
    if(i24<0.03446698561310768){
     s0+=10.0;
     s1+=35.0;
    } else {
     s1+=622.0;
    }
   }
  } else {
   s0+=131.0;
  }
 }
} else {
 if(i24<0.007701985538005829){
  if(i9<1.0136241912841797){
   if(i29<0.0004915595054626465){
    if(i12<1.005860447883606){
     s0+=614.0;
     s1+=4.0;
    } else {
     s0+=71.0;
     s1+=681.0;
    }
   } else {
    if(i23<0.0003567934036254883){
     s0+=3079.0;
     s1+=44.0;
    } else {
     s0+=20.0;
     s1+=52.0;
    }
   }
  } else {
   if(i1<0.0018061399459838867){
    if(i37<1.090468406677246){
     s0+=5.0;
     s1+=310.0;
    } else {
     s0+=865.0;
     s1+=70.0;
    }
   } else {
    if(i49<-5.968223376839887e-06){
     s0+=106.0;
    } else {
     s1+=873.0;
    }
   }
  }
 } else {
  if(i2<9.119510650634766e-06){
   if(i35<0.1433069109916687){
    if(i27<0.1044011116027832){
     s0+=830.0;
     s1+=76.0;
    } else {
     s0+=134.0;
     s1+=191.0;
    }
   } else {
    if(i39<-0.00010463953367434442){
     s0+=6.0;
     s1+=226.0;
    } else {
     s0+=48.0;
     s1+=13.0;
    }
   }
  } else {
   if(i1<0.0014356374740600586){
    if(i31<0.0008063021814450622){
     s0+=324.0;
     s1+=197.0;
    } else {
     s0+=637.0;
     s1+=3832.0;
    }
   } else {
    if(i30<1.023998737335205){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=71.0;
     s1+=12746.0;
    }
   }
  }
 }
}
if(i10<1.0136470794677734){
 if(i3<1.0026252269744873){
  if(i15<0.231725811958313){
   if(i16<0.0016749700298532844){
    if(i58<0.00017412492888979614){
     s0+=74029.0;
     s1+=300.0;
    } else {
     s0+=14115.0;
     s1+=538.0;
    }
   } else {
    if(i4<0.9983034133911133){
     s0+=17807.0;
     s1+=571.0;
    } else {
     s0+=3906.0;
     s1+=2868.0;
    }
   }
  } else {
   if(i24<0.037079110741615295){
    if(i41<1.1320412158966064){
     s0+=17.0;
     s1+=18.0;
    } else {
     s0+=94.0;
    }
   } else {
    if(i63<1.5942423343658447){
     s1+=324.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i0<-7.402829942293465e-05){
   if(i17<0.016054928302764893){
    if(i23<-0.0001989603042602539){
     s0+=316.0;
     s1+=44.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   } else {
    if(i46<0.9987824559211731){
     s0+=94.0;
    } else {
     s0+=226.0;
     s1+=3210.0;
    }
   }
  } else {
   if(i2<9.465217590332031e-05){
    if(i16<0.0019639055244624615){
     s0+=2671.0;
     s1+=53.0;
    } else {
     s0+=1663.0;
     s1+=1114.0;
    }
   } else {
    if(i31<0.0011050633620470762){
     s0+=22.0;
     s1+=412.0;
    } else {
     s0+=294.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i23<0.00027555227279663086){
  if(i16<0.0014091108459979296){
   if(i34<1.0840704441070557){
    s1+=85.0;
   } else {
    if(i40<2.8388223654474132e-05){
     s0+=601.0;
    } else {
     s0+=35.0;
     s1+=8.0;
    }
   }
  } else {
   if(i10<1.0240117311477661){
    if(i14<0.0008770994027145207){
     s0+=244.0;
     s1+=1427.0;
    } else {
     s0+=283.0;
    }
   } else {
    if(i2<-3.8743019104003906e-05){
     s0+=41.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=2159.0;
    }
   }
  }
 } else {
  if(i32<1.150019884109497){
   if(i29<0.0006264746189117432){
    if(i43<-0.00015797986998222768){
     s0+=2.0;
    } else {
     s1+=1019.0;
    }
   } else {
    s0+=65.0;
   }
  } else {
   s1+=9940.0;
  }
 }
}
if(i1<0.0009602904319763184){
 if(i15<0.2063632607460022){
  if(i16<0.0017319467151537538){
   if(i30<1.0231759548187256){
    if(i7<0.0011654822155833244){
     s0+=6785.0;
     s1+=12.0;
    } else {
     s0+=5824.0;
     s1+=470.0;
    }
   } else {
    if(i43<-1.9633806005003862e-05){
     s0+=232.0;
     s1+=58.0;
    } else {
     s0+=78562.0;
     s1+=460.0;
    }
   }
  } else {
   if(i3<1.0002939701080322){
    if(i36<0.0010738639393821359){
     s0+=1502.0;
     s1+=404.0;
    } else {
     s0+=13012.0;
     s1+=191.0;
    }
   } else {
    if(i4<0.9991536140441895){
     s0+=4861.0;
     s1+=439.0;
    } else {
     s0+=3453.0;
     s1+=4270.0;
    }
   }
  }
 } else {
  if(i31<0.0007218207465484738){
   if(i71<0.15894031524658203){
    if(i22<0.0021955668926239014){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i33<0.0019706403836607933){
     s0+=144.0;
    } else {
     s0+=70.0;
     s1+=10.0;
    }
   }
  } else {
   if(i7<0.006484326906502247){
    if(i25<1.0259921550750732){
     s0+=106.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=32.0;
    }
   } else {
    if(i3<0.9946833252906799){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=1412.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i2<8.124113082885742e-05){
   if(i9<1.016636848449707){
    if(i14<0.00025818831636570394){
     s0+=13.0;
     s1+=305.0;
    } else {
     s0+=152.0;
     s1+=112.0;
    }
   } else {
    if(i31<0.0005084740114398301){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=647.0;
    }
   }
  } else {
   if(i49<-6.456466508097947e-06){
    s0+=32.0;
   } else {
    if(i8<0.9386835098266602){
     s0+=45.0;
     s1+=87.0;
    } else {
     s0+=67.0;
     s1+=15213.0;
    }
   }
  }
 } else {
  s0+=1820.0;
 }
}
if(i4<1.0038622617721558){
 if(i5<1.627206802368164e-05){
  if(i6<0.000280916690826416){
   if(i44<0.2262495756149292){
    if(i17<0.19821903109550476){
     s0+=102716.0;
     s1+=2671.0;
    } else {
     s0+=232.0;
     s1+=88.0;
    }
   } else {
    if(i0<-3.451716838753782e-05){
     s1+=289.0;
    } else {
     s0+=84.0;
     s1+=7.0;
    }
   }
  } else {
   if(i22<0.0009283770341426134){
    if(i37<1.044745922088623){
     s0+=555.0;
    } else {
     s1+=618.0;
    }
   } else {
    if(i52<0.05837153643369675){
     s0+=3217.0;
     s1+=114.0;
    } else {
     s0+=121.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i59<-0.000775749736931175){
   if(i24<0.042881935834884644){
    if(i31<0.001193456118926406){
     s0+=189.0;
     s1+=604.0;
    } else {
     s0+=749.0;
     s1+=326.0;
    }
   } else {
    if(i67<0.12884846329689026){
     s0+=97.0;
     s1+=132.0;
    } else {
     s0+=7.0;
     s1+=800.0;
    }
   }
  } else {
   if(i40<1.6538368072360754e-05){
    if(i35<0.017276860773563385){
     s0+=2783.0;
     s1+=112.0;
    } else {
     s0+=6.0;
     s1+=23.0;
    }
   } else {
    if(i19<0.9951868057250977){
     s0+=866.0;
     s1+=116.0;
    } else {
     s0+=622.0;
     s1+=582.0;
    }
   }
  }
 }
} else {
 if(i0<-7.333919347729534e-05){
  if(i49<-6.419467354135122e-06){
   if(i14<0.00010498372284928337){
    s1+=1.0;
   } else {
    s0+=295.0;
   }
  } else {
   if(i65<1.5794965293025598e-05){
    if(i4<1.0069072246551514){
     s0+=121.0;
     s1+=1981.0;
    } else {
     s0+=6.0;
     s1+=13485.0;
    }
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i36<0.0018880997085943818){
   if(i32<1.095010757446289){
    if(i28<0.00023986402084119618){
     s0+=622.0;
    } else {
     s1+=1271.0;
    }
   } else {
    if(i22<0.0008858201908878982){
     s1+=129.0;
    } else {
     s0+=3078.0;
    }
   }
  } else {
   if(i15<0.10208389163017273){
    if(i48<2.026718902925495e-06){
     s1+=104.0;
    } else {
     s0+=106.0;
     s1+=30.0;
    }
   } else {
    if(i77<-0.0003466983325779438){
     s0+=8.0;
     s1+=613.0;
    } else {
     s0+=20.0;
     s1+=71.0;
    }
   }
  }
 }
}
if(i38<1.1402404308319092){
 if(i5<1.6391277313232422e-05){
  if(i28<0.0010622965637594461){
   if(i56<1.0010788440704346){
    if(i36<0.00018271844601258636){
     s0+=13689.0;
     s1+=63.0;
    } else {
     s0+=13024.0;
     s1+=1201.0;
    }
   } else {
    if(i34<1.0637214183807373){
     s0+=1685.0;
     s1+=44.0;
    } else {
     s0+=1686.0;
     s1+=1241.0;
    }
   }
  } else {
   if(i68<1.0433748960494995){
    if(i43<-3.36304547090549e-05){
     s0+=304.0;
     s1+=70.0;
    } else {
     s0+=73487.0;
     s1+=622.0;
    }
   } else {
    if(i27<0.147108793258667){
     s0+=54.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i23<0.00018972158432006836){
   if(i40<1.3329959074326325e-05){
    if(i7<0.004012293182313442){
     s0+=4556.0;
     s1+=63.0;
    } else {
     s0+=98.0;
     s1+=606.0;
    }
   } else {
    if(i7<0.004494075663387775){
     s0+=1111.0;
     s1+=107.0;
    } else {
     s0+=1190.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i38<1.0870356559753418){
    if(i49<-5.298958967614453e-06){
     s0+=34.0;
    } else {
     s1+=1962.0;
    }
   } else {
    if(i14<0.0005574467941187322){
     s0+=69.0;
     s1+=1268.0;
    } else {
     s0+=859.0;
    }
   }
  }
 }
} else {
 if(i7<0.00582463014870882){
  if(i0<-8.044832793530077e-05){
   if(i57<0.0044662561267614365){
    if(i57<0.003874954767525196){
     s1+=436.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i74<0.018114592880010605){
     s0+=10.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i38<1.1426570415496826){
    if(i3<1.0024807453155518){
     s0+=61.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i35<0.05358007922768593){
     s0+=1991.0;
    } else {
     s0+=637.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i4<0.9985315203666687){
   if(i63<1.0674762725830078){
    if(i31<0.0031352504156529903){
     s0+=1629.0;
     s1+=115.0;
    } else {
     s0+=35.0;
     s1+=67.0;
    }
   } else {
    if(i24<0.02510417066514492){
     s0+=17.0;
    } else {
     s1+=218.0;
    }
   }
  } else {
   if(i13<0.9249297380447388){
    if(i5<6.455183029174805e-05){
     s0+=222.0;
     s1+=153.0;
    } else {
     s0+=3.0;
     s1+=129.0;
    }
   } else {
    if(i27<0.04036432504653931){
     s0+=46.0;
     s1+=100.0;
    } else {
     s0+=72.0;
     s1+=13909.0;
    }
   }
  }
 }
}
if(i5<2.3424625396728516e-05){
 if(i17<0.20090630650520325){
  if(i6<0.0002925992012023926){
   if(i45<0.9997739791870117){
    if(i64<0.011034315451979637){
     s0+=46404.0;
     s1+=129.0;
    } else {
     s0+=62.0;
     s1+=31.0;
    }
   } else {
    if(i34<1.0924948453903198){
     s0+=11189.0;
     s1+=1731.0;
    } else {
     s0+=45547.0;
     s1+=862.0;
    }
   }
  } else {
   if(i35<0.014436384662985802){
    if(i62<0.00030053919181227684){
     s0+=1604.0;
     s1+=459.0;
    } else {
     s0+=3380.0;
     s1+=30.0;
    }
   } else {
    if(i19<0.9962619543075562){
     s0+=950.0;
     s1+=157.0;
    } else {
     s0+=616.0;
     s1+=1335.0;
    }
   }
  }
 } else {
  if(i7<0.004953652620315552){
   if(i29<0.00010335445404052734){
    s0+=168.0;
   } else {
    if(i38<1.1231228113174438){
     s0+=72.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=14.0;
    }
   }
  } else {
   if(i38<1.122113823890686){
    if(i48<6.729886081302539e-05){
     s0+=21.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i42<0.0013320259749889374){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=848.0;
    }
   }
  }
 }
} else {
 if(i7<0.004351596347987652){
  if(i1<0.0018061399459838867){
   if(i7<0.003076293971389532){
    if(i64<-0.0011941823177039623){
     s1+=14.0;
    } else {
     s0+=3798.0;
     s1+=27.0;
    }
   } else {
    if(i33<0.0007611275650560856){
     s0+=52.0;
     s1+=326.0;
    } else {
     s0+=613.0;
     s1+=31.0;
    }
   }
  } else {
   if(i49<-5.727497864427278e-06){
    s0+=217.0;
   } else {
    s1+=829.0;
   }
  }
 } else {
  if(i27<0.05609208345413208){
   if(i16<0.003722617868334055){
    if(i12<0.9999325275421143){
     s0+=17.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=226.0;
    }
   } else {
    if(i19<0.9989299178123474){
     s0+=640.0;
     s1+=103.0;
    } else {
     s0+=122.0;
     s1+=172.0;
    }
   }
  } else {
   if(i49<-6.4661758187867235e-06){
    s0+=135.0;
   } else {
    if(i39<-0.00018677340995054692){
     s0+=172.0;
     s1+=15302.0;
    } else {
     s0+=515.0;
     s1+=1887.0;
    }
   }
  }
 }
}
if(i6<0.0005874037742614746){
 if(i15<0.2203601896762848){
  if(i16<0.0017194473184645176){
   if(i37<1.0739831924438477){
    if(i31<0.0005513069336302578){
     s0+=22469.0;
     s1+=69.0;
    } else {
     s0+=6002.0;
     s1+=693.0;
    }
   } else {
    if(i42<0.0018429369665682316){
     s0+=56338.0;
     s1+=52.0;
    } else {
     s0+=4513.0;
     s1+=150.0;
    }
   }
  } else {
   if(i33<0.0010805816855281591){
    if(i35<0.009106673300266266){
     s0+=1263.0;
     s1+=206.0;
    } else {
     s0+=477.0;
     s1+=1940.0;
    }
   } else {
    if(i2<-7.68899917602539e-06){
     s0+=18261.0;
     s1+=691.0;
    } else {
     s0+=650.0;
     s1+=713.0;
    }
   }
  }
 } else {
  if(i16<0.0024316960480064154){
   if(i21<1.0028431415557861){
    s0+=138.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i17<0.22808903455734253){
    if(i24<0.033685602247714996){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   } else {
    if(i29<0.000573277473449707){
     s0+=2.0;
     s1+=543.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i10<1.0167311429977417){
  if(i35<0.0219053216278553){
   if(i42<0.0009450750658288598){
    if(i38<1.0450111627578735){
     s0+=1416.0;
     s1+=55.0;
    } else {
     s0+=132.0;
     s1+=1510.0;
    }
   } else {
    if(i4<1.0103882551193237){
     s0+=3195.0;
     s1+=86.0;
    } else {
     s1+=124.0;
    }
   }
  } else {
   if(i1<4.57763671875e-05){
    if(i27<0.10393571853637695){
     s0+=744.0;
     s1+=101.0;
    } else {
     s0+=123.0;
     s1+=226.0;
    }
   } else {
    if(i35<0.031436190009117126){
     s0+=199.0;
     s1+=322.0;
    } else {
     s0+=359.0;
     s1+=3726.0;
    }
   }
  }
 } else {
  if(i9<1.026113510131836){
   if(i0<-6.363449210766703e-05){
    if(i7<0.003399067325517535){
     s0+=36.0;
     s1+=89.0;
    } else {
     s0+=21.0;
     s1+=1667.0;
    }
   } else {
    if(i36<0.0011156180407851934){
     s0+=2.0;
     s1+=171.0;
    } else {
     s0+=136.0;
     s1+=95.0;
    }
   }
  } else {
   if(i2<-5.841255187988281e-06){
    if(i52<0.07976368069648743){
     s0+=49.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i23<-0.0002428293228149414){
     s0+=42.0;
     s1+=75.0;
    } else {
     s0+=42.0;
     s1+=10846.0;
    }
   }
  }
 }
}
if(i3<1.0026319026947021){
 if(i10<1.0135915279388428){
  if(i53<0.3497055768966675){
   if(i28<0.001049475627951324){
    if(i10<1.0075011253356934){
     s0+=31659.0;
     s1+=2654.0;
    } else {
     s0+=168.0;
     s1+=643.0;
    }
   } else {
    if(i70<0.004448074847459793){
     s0+=75980.0;
     s1+=650.0;
    } else {
     s0+=2174.0;
     s1+=363.0;
    }
   }
  } else {
   if(i41<1.0975340604782104){
    if(i24<0.06908070296049118){
     s0+=182.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i16<0.00209428695961833){
     s0+=20.0;
    } else {
     s1+=330.0;
    }
   }
  }
 } else {
  if(i7<0.00568673200905323){
   if(i1<0.0005689859390258789){
    if(i78<-0.0007070302963256836){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=251.0;
    }
   } else {
    if(i12<1.0128099918365479){
     s0+=69.0;
     s1+=9.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i24<0.011300453916192055){
    if(i55<0.0008539746049791574){
     s1+=17.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i14<0.0013054134324193){
     s1+=935.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i37<1.170027494430542){
  if(i29<0.0005251169204711914){
   if(i6<0.00047194957733154297){
    if(i0<-4.8633657570462674e-05){
     s1+=10.0;
    } else {
     s0+=188.0;
     s1+=7.0;
    }
   } else {
    if(i10<1.0027129650115967){
     s0+=131.0;
     s1+=187.0;
    } else {
     s0+=60.0;
     s1+=2745.0;
    }
   }
  } else {
   if(i7<0.006951228715479374){
    if(i64<0.0029338826425373554){
     s0+=4454.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i12<0.9947392344474792){
     s0+=92.0;
     s1+=89.0;
    } else {
     s0+=4.0;
     s1+=428.0;
    }
   }
  }
 } else {
  if(i18<0.9593861103057861){
   if(i44<0.06852471828460693){
    if(i80<-0.08557426929473877){
     s0+=5.0;
     s1+=36.0;
    } else {
     s0+=595.0;
     s1+=101.0;
    }
   } else {
    if(i2<6.496906280517578e-05){
     s0+=62.0;
     s1+=124.0;
    } else {
     s0+=1.0;
     s1+=110.0;
    }
   }
  } else {
   if(i40<0.00010023934009950608){
    if(i26<1.1935834884643555){
     s0+=8.0;
    } else {
     s0+=22.0;
     s1+=10506.0;
    }
   } else {
    if(i16<0.004684619605541229){
     s0+=309.0;
     s1+=338.0;
    } else {
     s0+=158.0;
     s1+=3877.0;
    }
   }
  }
 }
}
if(i17<0.1875152289867401){
 if(i5<2.4378299713134766e-05){
  if(i35<0.012173762544989586){
   if(i12<1.0070996284484863){
    if(i10<0.9912793636322021){
     s0+=1111.0;
     s1+=95.0;
    } else {
     s0+=67190.0;
     s1+=572.0;
    }
   } else {
    if(i62<0.00034213531762361526){
     s0+=25.0;
     s1+=166.0;
    } else {
     s0+=333.0;
     s1+=5.0;
    }
   }
  } else {
   if(i33<0.0010809543309733272){
    if(i54<1.0000733137130737){
     s0+=6602.0;
     s1+=587.0;
    } else {
     s0+=833.0;
     s1+=1712.0;
    }
   } else {
    if(i25<1.0211457014083862){
     s0+=33051.0;
     s1+=1199.0;
    } else {
     s0+=496.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i70<0.0016728050541132689){
   if(i7<0.004059398081153631){
    if(i21<1.0114705562591553){
     s0+=3796.0;
     s1+=349.0;
    } else {
     s0+=12.0;
     s1+=241.0;
    }
   } else {
    if(i12<0.9989323616027832){
     s0+=573.0;
     s1+=65.0;
    } else {
     s0+=278.0;
     s1+=2245.0;
    }
   }
  } else {
   if(i7<0.002446745987981558){
    if(i40<-3.0715564207639545e-05){
     s0+=10.0;
     s1+=75.0;
    } else {
     s0+=414.0;
     s1+=13.0;
    }
   } else {
    if(i18<0.9572959542274475){
     s0+=384.0;
     s1+=243.0;
    } else {
     s0+=498.0;
     s1+=3394.0;
    }
   }
  }
 }
} else {
 if(i5<8.58306884765625e-06){
  if(i43<-1.4569477571058087e-05){
   if(i7<0.006380446255207062){
    if(i31<0.0011242341715842485){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i18<0.9317594170570374){
     s0+=5.0;
     s1+=19.0;
    } else {
     s1+=318.0;
    }
   }
  } else {
   if(i64<0.005620215553790331){
    if(i43<-7.895956514403224e-06){
     s0+=62.0;
     s1+=20.0;
    } else {
     s0+=523.0;
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i0<-3.338460373925045e-05){
   if(i51<-8.352241275133565e-05){
    s0+=1.0;
   } else {
    if(i28<0.0020764535292983055){
     s0+=24.0;
    } else {
     s0+=15.0;
     s1+=12561.0;
    }
   }
  } else {
   if(i26<1.1935834884643555){
    s0+=65.0;
   } else {
    if(i19<0.9939650297164917){
     s0+=50.0;
     s1+=11.0;
    } else {
     s0+=19.0;
     s1+=184.0;
    }
   }
  }
 }
}
if(i12<1.010056495666504){
 if(i0<-9.202562796417624e-05){
  if(i73<-0.014893025159835815){
   if(i27<0.04174652695655823){
    if(i56<1.0058026313781738){
     s0+=437.0;
     s1+=25.0;
    } else {
     s0+=41.0;
     s1+=33.0;
    }
   } else {
    if(i60<-0.01582348346710205){
     s0+=51.0;
     s1+=18.0;
    } else {
     s0+=14.0;
     s1+=194.0;
    }
   }
  } else {
   if(i41<1.0282726287841797){
    if(i17<0.07364550232887268){
     s0+=229.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=64.0;
    }
   } else {
    if(i34<1.169445514678955){
     s0+=153.0;
    } else {
     s0+=58.0;
     s1+=3061.0;
    }
   }
  }
 } else {
  if(i17<0.20911049842834473){
   if(i31<0.0006951309042051435){
    if(i48<-9.693505489849485e-06){
     s1+=89.0;
    } else {
     s0+=79695.0;
     s1+=447.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=4068.0;
     s1+=3589.0;
    } else {
     s0+=30080.0;
     s1+=1530.0;
    }
   }
  } else {
   if(i5<6.139278411865234e-06){
    if(i60<-0.0005431473255157471){
     s0+=52.0;
     s1+=75.0;
    } else {
     s0+=121.0;
     s1+=11.0;
    }
   } else {
    if(i59<-0.00086029595695436){
     s0+=24.0;
     s1+=444.0;
    } else {
     s0+=29.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i26<1.1843671798706055){
  if(i14<0.00024921103613451123){
   if(i34<1.1197539567947388){
    if(i46<1.001983404159546){
     s1+=2167.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=49.0;
   }
  } else {
   s0+=1412.0;
  }
 } else {
  if(i43<-1.356622396997409e-05){
   if(i56<1.0065910816192627){
    if(i27<0.06791463494300842){
     s0+=58.0;
     s1+=113.0;
    } else {
     s0+=16.0;
     s1+=11964.0;
    }
   } else {
    if(i16<0.0030205734074115753){
     s0+=44.0;
    } else {
     s1+=219.0;
    }
   }
  } else {
   if(i16<0.0021465029567480087){
    s0+=115.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i3<1.0021274089813232){
  if(i13<1.0160443782806396){
   if(i7<0.0035355393774807453){
    if(i32<1.0903575420379639){
     s0+=24625.0;
     s1+=789.0;
    } else {
     s0+=59181.0;
     s1+=169.0;
    }
   } else {
    if(i22<0.001002648496069014){
     s0+=3042.0;
     s1+=2135.0;
    } else {
     s0+=20159.0;
     s1+=820.0;
    }
   }
  } else {
   if(i0<-5.222945037530735e-05){
    if(i32<1.6811659336090088){
     s0+=77.0;
     s1+=491.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i7<0.007146087475121021){
     s0+=622.0;
     s1+=44.0;
    } else {
     s0+=20.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i15<0.17209085822105408){
   if(i35<0.032541170716285706){
    if(i26<1.116804838180542){
     s0+=1013.0;
     s1+=468.0;
    } else {
     s0+=3804.0;
     s1+=191.0;
    }
   } else {
    if(i1<-1.3589859008789062e-05){
     s0+=1296.0;
     s1+=328.0;
    } else {
     s0+=360.0;
     s1+=946.0;
    }
   }
  } else {
   if(i36<0.0020302385091781616){
    if(i12<1.0120826959609985){
     s0+=126.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i0<-4.5377972128335387e-05){
     s0+=9.0;
     s1+=1292.0;
    } else {
     s0+=110.0;
     s1+=226.0;
    }
   }
  }
 }
} else {
 if(i22<0.0023432746529579163){
  if(i34<1.116804838180542){
   if(i54<1.000573754310608){
    s0+=54.0;
   } else {
    if(i28<0.00022083253134042025){
     s0+=70.0;
    } else {
     s0+=31.0;
     s1+=2351.0;
    }
   }
  } else {
   s0+=1812.0;
  }
 } else {
  if(i41<1.023472785949707){
   if(i45<1.0024254322052002){
    if(i10<0.9952609539031982){
     s0+=35.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i7<0.04418107122182846){
     s0+=1.0;
     s1+=130.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  } else {
   if(i27<0.10565772652626038){
    if(i77<-0.005526536609977484){
     s0+=57.0;
     s1+=22.0;
    } else {
     s0+=20.0;
     s1+=529.0;
    }
   } else {
    if(i23<-0.0006035566329956055){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=7.0;
     s1+=13241.0;
    }
   }
  }
 }
}
if(i10<1.013500690460205){
 if(i0<-8.661632455186918e-05){
  if(i20<-0.003987431526184082){
   if(i63<1.0264726877212524){
    if(i24<0.055532753467559814){
     s0+=662.0;
     s1+=20.0;
    } else {
     s0+=67.0;
     s1+=90.0;
    }
   } else {
    if(i7<0.013472555205225945){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=112.0;
    }
   }
  } else {
   if(i33<0.0024100840091705322){
    if(i22<0.0010733524104580283){
     s1+=133.0;
    } else {
     s0+=299.0;
    }
   } else {
    if(i15<0.04060661792755127){
     s0+=204.0;
     s1+=135.0;
    } else {
     s0+=42.0;
     s1+=3063.0;
    }
   }
  }
 } else {
  if(i24<0.0067754811607301235){
   if(i54<1.0031558275222778){
    if(i21<1.005319595336914){
     s0+=68664.0;
     s1+=556.0;
    } else {
     s0+=65.0;
     s1+=73.0;
    }
   } else {
    if(i50<9.953975677490234e-06){
     s0+=714.0;
     s1+=507.0;
    } else {
     s0+=2410.0;
     s1+=60.0;
    }
   }
  } else {
   if(i22<0.000990370404906571){
    if(i5<-6.020069122314453e-06){
     s0+=7095.0;
     s1+=232.0;
    } else {
     s0+=891.0;
     s1+=2752.0;
    }
   } else {
    if(i19<1.0004734992980957){
     s0+=31820.0;
     s1+=926.0;
    } else {
     s0+=2244.0;
     s1+=1020.0;
    }
   }
  }
 }
} else {
 if(i43<-1.1036506293748971e-05){
  if(i27<0.1811578869819641){
   if(i49<-7.451385499734897e-06){
    s0+=197.0;
   } else {
    if(i0<-4.21564000134822e-05){
     s0+=383.0;
     s1+=3209.0;
    } else {
     s0+=291.0;
     s1+=174.0;
    }
   }
  } else {
   if(i49<-6.042733275535284e-06){
    if(i10<1.0421274900436401){
     s0+=18.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i26<1.1843671798706055){
     s0+=40.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=11254.0;
    }
   }
  }
 } else {
  if(i34<1.0887749195098877){
   s1+=5.0;
  } else {
   if(i46<1.000922441482544){
    s0+=266.0;
   } else {
    if(i33<0.0024092327803373337){
     s0+=76.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i0<-0.00010427374218124896){
 if(i17<0.015711814165115356){
  if(i24<0.056369177997112274){
   if(i59<0.0014247552026063204){
    if(i60<-0.006509006023406982){
     s0+=405.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=9.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i58<0.003281565848737955){
    s1+=37.0;
   } else {
    if(i74<0.07356806099414825){
     s0+=38.0;
     s1+=3.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i36<0.00209839828312397){
   if(i50<1.940131187438965e-05){
    if(i29<0.001277923583984375){
     s1+=521.0;
    } else {
     s0+=32.0;
    }
   } else {
    s0+=165.0;
   }
  } else {
   if(i8<0.9221420288085938){
    if(i66<0.5779596567153931){
     s0+=60.0;
     s1+=19.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i31<0.004034474492073059){
     s0+=37.0;
     s1+=14330.0;
    } else {
     s0+=31.0;
    }
   }
  }
 }
} else {
 if(i54<1.0026328563690186){
  if(i12<1.0077242851257324){
   if(i31<0.0007108417339622974){
    if(i38<1.1354689598083496){
     s0+=75247.0;
     s1+=370.0;
    } else {
     s0+=1963.0;
     s1+=99.0;
    }
   } else {
    if(i33<0.0010865821968764067){
     s0+=3743.0;
     s1+=2449.0;
    } else {
     s0+=22391.0;
     s1+=751.0;
    }
   }
  } else {
   if(i6<0.0003350377082824707){
    if(i24<0.024510860443115234){
     s0+=437.0;
     s1+=6.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i30<1.0797432661056519){
     s0+=7.0;
     s1+=469.0;
    } else {
     s0+=200.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i10<1.0153173208236694){
   if(i30<1.1230299472808838){
    if(i37<1.0903606414794922){
     s0+=1144.0;
     s1+=1174.0;
    } else {
     s0+=9436.0;
     s1+=1206.0;
    }
   } else {
    if(i34<1.1793382167816162){
     s0+=563.0;
    } else {
     s0+=187.0;
     s1+=804.0;
    }
   }
  } else {
   if(i49<-4.413369424582925e-06){
    if(i71<0.1628580391407013){
     s0+=280.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i14<0.0003940539318136871){
     s0+=126.0;
     s1+=1712.0;
    } else {
     s0+=72.0;
     s1+=29.0;
    }
   }
  }
 }
}
if(i0<-0.00011003482359228656){
 if(i17<0.021084189414978027){
  if(i18<0.9573299288749695){
   if(i46<1.0025296211242676){
    if(i77<0.0031525162048637867){
     s0+=311.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i39<-0.000582287204451859){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i66<0.1413963884115219){
    if(i12<0.991747260093689){
     s0+=10.0;
    } else {
     s0+=4.0;
     s1+=10.0;
    }
   } else {
    if(i52<0.004190986976027489){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i14<0.0007059713825583458){
   if(i43<-0.00018205418018624187){
    s0+=51.0;
   } else {
    if(i60<-0.01582348346710205){
     s0+=47.0;
     s1+=45.0;
    } else {
     s0+=59.0;
     s1+=14613.0;
    }
   }
  } else {
   s0+=100.0;
  }
 }
} else {
 if(i2<6.276369094848633e-05){
  if(i13<1.0171440839767456){
   if(i7<0.0036593035329133272){
    if(i30<1.0231759548187256){
     s0+=12584.0;
     s1+=541.0;
    } else {
     s0+=76642.0;
     s1+=531.0;
    }
   } else {
    if(i9<1.0077252388000488){
     s0+=21928.0;
     s1+=2921.0;
    } else {
     s0+=1634.0;
     s1+=1203.0;
    }
   }
  } else {
   if(i45<1.000394344329834){
    if(i56<1.0040850639343262){
     s0+=362.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i29<0.0005624294281005859){
     s0+=255.0;
     s1+=974.0;
    } else {
     s0+=405.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i7<0.0036456650123000145){
   if(i14<0.00023064081324264407){
    s1+=448.0;
   } else {
    s0+=1692.0;
   }
  } else {
   if(i49<-5.814054475195007e-06){
    if(i57<0.004279663786292076){
     s0+=99.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<1.002012014389038){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=151.0;
     s1+=2988.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i27<0.23402073979377747){
  if(i11<1.0184524059295654){
   if(i29<7.277727127075195e-05){
    if(i31<0.0006220063660293818){
     s0+=57428.0;
     s1+=118.0;
    } else {
     s0+=18703.0;
     s1+=676.0;
    }
   } else {
    if(i58<0.00018107122741639614){
     s0+=24113.0;
     s1+=1485.0;
    } else {
     s0+=8995.0;
     s1+=1893.0;
    }
   }
  } else {
   if(i54<1.0002557039260864){
    if(i29<8.732080459594727e-05){
     s0+=288.0;
    } else {
     s0+=76.0;
     s1+=16.0;
    }
   } else {
    if(i23<-8.857250213623047e-05){
     s0+=75.0;
     s1+=31.0;
    } else {
     s0+=84.0;
     s1+=399.0;
    }
   }
  }
 } else {
  if(i43<-7.489235940738581e-06){
   if(i17<0.23198726773262024){
    if(i78<0.007179975509643555){
     s0+=9.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i77<-0.003732650075107813){
     s1+=554.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   s0+=107.0;
  }
 }
} else {
 if(i2<8.195638656616211e-05){
  if(i52<0.04100118950009346){
   if(i8<1.01554274559021){
    if(i59<-0.0007736250408925116){
     s0+=676.0;
     s1+=431.0;
    } else {
     s0+=4007.0;
     s1+=601.0;
    }
   } else {
    if(i45<1.0029776096343994){
     s0+=31.0;
     s1+=559.0;
    } else {
     s0+=188.0;
     s1+=63.0;
    }
   }
  } else {
   if(i23<-0.0005805790424346924){
    if(i35<0.1377112865447998){
     s0+=354.0;
     s1+=94.0;
    } else {
     s0+=56.0;
     s1+=76.0;
    }
   } else {
    if(i14<9.395967936143279e-05){
     s0+=49.0;
     s1+=35.0;
    } else {
     s0+=61.0;
     s1+=2069.0;
    }
   }
  }
 } else {
  if(i36<0.002022639848291874){
   if(i44<0.0740833580493927){
    if(i57<0.0008379024802707136){
     s0+=8.0;
     s1+=1737.0;
    } else {
     s0+=273.0;
     s1+=88.0;
    }
   } else {
    if(i14<0.00023713975679129362){
     s0+=35.0;
     s1+=201.0;
    } else {
     s0+=802.0;
    }
   }
  } else {
   if(i65<1.5194421393971425e-05){
    if(i11<0.9088934063911438){
     s0+=22.0;
     s1+=109.0;
    } else {
     s0+=55.0;
     s1+=13060.0;
    }
   } else {
    s0+=30.0;
   }
  }
 }
}
if(i5<3.1054019927978516e-05){
 if(i16<0.0017233843682333827){
  if(i38<1.1354830265045166){
   if(i22<0.0005609338404610753){
    if(i16<0.0012708182912319899){
     s0+=26627.0;
     s1+=230.0;
    } else {
     s0+=2036.0;
     s1+=494.0;
    }
   } else {
    if(i44<0.20773690938949585){
     s0+=59587.0;
     s1+=99.0;
    } else {
     s0+=19.0;
     s1+=6.0;
    }
   }
  } else {
   if(i38<1.1355493068695068){
    s1+=112.0;
   } else {
    if(i47<1.032055139541626){
     s0+=2328.0;
     s1+=19.0;
    } else {
     s0+=218.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i21<0.9981827735900879){
   if(i47<1.0466101169586182){
    if(i17<0.23157501220703125){
     s0+=14378.0;
     s1+=438.0;
    } else {
     s0+=2.0;
     s1+=61.0;
    }
   } else {
    if(i52<0.061982717365026474){
     s0+=18.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=132.0;
    }
   }
  } else {
   if(i58<-5.9953745221719146e-05){
    if(i46<0.9994315505027771){
     s0+=100.0;
     s1+=82.0;
    } else {
     s0+=71.0;
     s1+=1198.0;
    }
   } else {
    if(i2<-3.1888484954833984e-05){
     s0+=4040.0;
     s1+=467.0;
    } else {
     s0+=3306.0;
     s1+=3621.0;
    }
   }
  }
 }
} else {
 if(i14<0.000704434234648943){
  if(i2<6.347894668579102e-05){
   if(i35<0.03362777456641197){
    if(i60<0.004553496837615967){
     s0+=856.0;
     s1+=86.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   } else {
    if(i24<0.0194045789539814){
     s0+=274.0;
     s1+=43.0;
    } else {
     s0+=404.0;
     s1+=1260.0;
    }
   }
  } else {
   if(i49<-6.2567542045144364e-06){
    if(i72<-0.010054618120193481){
     s1+=1.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i7<0.004542429465800524){
     s0+=124.0;
     s1+=1196.0;
    } else {
     s0+=92.0;
     s1+=14395.0;
    }
   }
  }
 } else {
  if(i67<0.1637793481349945){
   s0+=2254.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i17<0.18752101063728333){
 if(i5<1.8298625946044922e-05){
  if(i16<0.0014803202357143164){
   if(i10<0.9960441589355469){
    if(i28<0.0002622596803121269){
     s0+=1249.0;
     s1+=200.0;
    } else {
     s0+=16275.0;
     s1+=144.0;
    }
   } else {
    if(i8<1.0097448825836182){
     s0+=65093.0;
     s1+=200.0;
    } else {
     s0+=921.0;
     s1+=37.0;
    }
   }
  } else {
   if(i34<1.0955833196640015){
    if(i21<0.9980398416519165){
     s0+=1259.0;
     s1+=102.0;
    } else {
     s0+=1083.0;
     s1+=2011.0;
    }
   } else {
    if(i19<0.9944102764129639){
     s0+=16704.0;
     s1+=331.0;
    } else {
     s0+=5244.0;
     s1+=769.0;
    }
   }
  }
 } else {
  if(i1<0.0012401342391967773){
   if(i29<0.00042572617530822754){
    if(i18<1.007741093635559){
     s0+=1424.0;
     s1+=726.0;
    } else {
     s0+=171.0;
     s1+=1143.0;
    }
   } else {
    if(i24<0.019638480618596077){
     s0+=4716.0;
     s1+=155.0;
    } else {
     s0+=773.0;
     s1+=1018.0;
    }
   }
  } else {
   if(i29<0.0011630356311798096){
    if(i0<-7.353679393418133e-05){
     s0+=74.0;
     s1+=3181.0;
    } else {
     s0+=287.0;
     s1+=1082.0;
    }
   } else {
    if(i14<0.0007226370507851243){
     s1+=121.0;
    } else {
     s0+=737.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003279447555541992){
  if(i35<0.07334084063768387){
   if(i0<-7.738512067589909e-05){
    s1+=29.0;
   } else {
    if(i51<-3.956604814447928e-06){
     s0+=105.0;
     s1+=23.0;
    } else {
     s0+=461.0;
     s1+=6.0;
    }
   }
  } else {
   if(i0<-3.4428725484758615e-05){
    if(i56<1.0052889585494995){
     s1+=397.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i23<-0.0005287826061248779){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=48.0;
    }
   }
  }
 } else {
  if(i39<-0.00023119273828342557){
   if(i26<1.175166130065918){
    s0+=7.0;
   } else {
    if(i34<1.2680041790008545){
     s0+=22.0;
     s1+=1105.0;
    } else {
     s0+=2.0;
     s1+=10289.0;
    }
   }
  } else {
   if(i33<0.0030262658838182688){
    if(i7<0.0056671202182769775){
     s0+=78.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i4<1.0029295682907104){
     s0+=19.0;
     s1+=72.0;
    } else {
     s1+=937.0;
    }
   }
  }
 }
}
if(i6<0.000588834285736084){
 if(i15<0.22035330533981323){
  if(i18<1.0090272426605225){
   if(i5<1.8298625946044922e-05){
    if(i45<0.999854564666748){
     s0+=49768.0;
     s1+=232.0;
    } else {
     s0+=57157.0;
     s1+=3299.0;
    }
   } else {
    if(i24<0.010070018470287323){
     s0+=1204.0;
     s1+=38.0;
    } else {
     s0+=424.0;
     s1+=351.0;
    }
   }
  } else {
   if(i35<0.02915758639574051){
    if(i34<1.0952479839324951){
     s1+=206.0;
    } else {
     s0+=1275.0;
     s1+=67.0;
    }
   } else {
    if(i56<1.0002760887145996){
     s0+=185.0;
     s1+=19.0;
    } else {
     s0+=125.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i0<-3.3513089874759316e-05){
   if(i32<1.1429710388183594){
    s0+=3.0;
   } else {
    if(i35<0.04207060858607292){
     s0+=5.0;
     s1+=24.0;
    } else {
     s1+=581.0;
    }
   }
  } else {
   if(i6<0.0003800392150878906){
    if(i81<0.11684265732765198){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=135.0;
    }
   } else {
    s1+=12.0;
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i28<0.0012712047901004553){
   if(i37<1.0487251281738281){
    s0+=1355.0;
   } else {
    if(i22<0.0009706164710223675){
     s1+=2741.0;
    } else {
     s0+=325.0;
    }
   }
  } else {
   if(i22<0.0010736496187746525){
    s1+=104.0;
   } else {
    if(i34<1.1822609901428223){
     s0+=2997.0;
     s1+=3.0;
    } else {
     s0+=251.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i17<0.07186341285705566){
   if(i23<0.00017845630645751953){
    if(i76<-0.06864437460899353){
     s0+=144.0;
     s1+=300.0;
    } else {
     s0+=944.0;
     s1+=81.0;
    }
   } else {
    s1+=170.0;
   }
  } else {
   if(i20<-0.0013486742973327637){
    if(i28<0.0038868070114403963){
     s0+=165.0;
     s1+=14.0;
    } else {
     s0+=253.0;
     s1+=1445.0;
    }
   } else {
    if(i37<1.127323031425476){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=13997.0;
    }
   }
  }
 }
}
if(i6<0.0005705952644348145){
 if(i16<0.0017227325588464737){
  if(i31<0.0006357148522511125){
   if(i43<-1.8696395272854716e-05){
    if(i20<-4.07099723815918e-05){
     s0+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i58<0.00015557296865154058){
     s0+=61307.0;
     s1+=98.0;
    } else {
     s0+=13444.0;
     s1+=171.0;
    }
   }
  } else {
   if(i34<1.0912797451019287){
    if(i54<0.9990800619125366){
     s0+=1003.0;
     s1+=57.0;
    } else {
     s0+=517.0;
     s1+=482.0;
    }
   } else {
    if(i28<0.000430890591815114){
     s0+=28.0;
     s1+=87.0;
    } else {
     s0+=12884.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i26<1.1164028644561768){
   if(i7<0.0036520774010568857){
    if(i34<1.0533521175384521){
     s0+=719.0;
    } else {
     s0+=258.0;
     s1+=129.0;
    }
   } else {
    if(i34<1.0531532764434814){
     s0+=845.0;
    } else {
     s0+=111.0;
     s1+=2253.0;
    }
   }
  } else {
   if(i25<1.0242831707000732){
    if(i2<-2.5093555450439453e-05){
     s0+=17158.0;
     s1+=546.0;
    } else {
     s0+=1077.0;
     s1+=568.0;
    }
   } else {
    if(i38<1.1220200061798096){
     s0+=129.0;
    } else {
     s0+=63.0;
     s1+=578.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019506709650158882){
  if(i29<0.0005118846893310547){
   if(i12<1.0058592557907104){
    if(i35<0.01385558769106865){
     s0+=647.0;
     s1+=27.0;
    } else {
     s0+=19.0;
     s1+=128.0;
    }
   } else {
    if(i54<1.0013834238052368){
     s0+=73.0;
     s1+=58.0;
    } else {
     s0+=53.0;
     s1+=2804.0;
    }
   }
  } else {
   if(i12<1.0371218919754028){
    if(i33<0.002149862004444003){
     s0+=4105.0;
    } else {
     s0+=81.0;
     s1+=3.0;
    }
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i2<8.64267349243164e-06){
   if(i30<1.1154803037643433){
    if(i28<0.014157159253954887){
     s0+=947.0;
     s1+=90.0;
    } else {
     s0+=53.0;
     s1+=43.0;
    }
   } else {
    if(i31<0.001773835509084165){
     s0+=83.0;
     s1+=21.0;
    } else {
     s0+=33.0;
     s1+=333.0;
    }
   }
  } else {
   if(i30<1.0742592811584473){
    if(i1<0.002047598361968994){
     s0+=327.0;
     s1+=202.0;
    } else {
     s1+=173.0;
    }
   } else {
    if(i37<1.1277275085449219){
     s0+=115.0;
     s1+=24.0;
    } else {
     s0+=253.0;
     s1+=15511.0;
    }
   }
  }
 }
}
if(i4<1.0038504600524902){
 if(i16<0.0017874693730846047){
  if(i36<0.0005461373366415501){
   if(i60<-0.0006368756294250488){
    if(i0<-4.255578460288234e-06){
     s0+=202.0;
     s1+=495.0;
    } else {
     s0+=1675.0;
     s1+=5.0;
    }
   } else {
    if(i35<0.010298609733581543){
     s0+=21168.0;
     s1+=77.0;
    } else {
     s0+=1822.0;
     s1+=237.0;
    }
   }
  } else {
   if(i6<0.0005371570587158203){
    if(i37<1.1354830265045166){
     s0+=57300.0;
     s1+=29.0;
    } else {
     s0+=8135.0;
     s1+=205.0;
    }
   } else {
    if(i32<1.1419486999511719){
     s0+=415.0;
    } else {
     s0+=2.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i41<1.1215944290161133){
   if(i33<0.0011479146778583527){
    if(i36<0.00020195727120153606){
     s0+=1496.0;
     s1+=6.0;
    } else {
     s0+=687.0;
     s1+=2348.0;
    }
   } else {
    if(i7<0.007517818361520767){
     s0+=14337.0;
     s1+=461.0;
    } else {
     s0+=4729.0;
     s1+=1093.0;
    }
   }
  } else {
   if(i62<0.002939624013379216){
    if(i52<0.03158503770828247){
     s0+=191.0;
     s1+=37.0;
    } else {
     s0+=90.0;
     s1+=396.0;
    }
   } else {
    if(i42<0.003990639001131058){
     s0+=18.0;
    } else {
     s0+=34.0;
     s1+=1163.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019342033192515373){
  if(i26<1.116804838180542){
   if(i50<1.138448715209961e-05){
    if(i7<0.0017594648525118828){
     s0+=126.0;
     s1+=120.0;
    } else {
     s0+=50.0;
     s1+=2552.0;
    }
   } else {
    if(i28<0.00024563755141571164){
     s0+=439.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i22<0.008833080530166626){
    s0+=3485.0;
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i42<0.0003129316901322454){
   s0+=5.0;
  } else {
   if(i8<0.9907070398330688){
    if(i16<0.005533963441848755){
     s0+=86.0;
     s1+=420.0;
    } else {
     s0+=10.0;
     s1+=718.0;
    }
   } else {
    if(i15<0.07426297664642334){
     s0+=45.0;
     s1+=161.0;
    } else {
     s0+=36.0;
     s1+=13641.0;
    }
   }
  }
 }
}
if(i10<1.0136241912841797){
 if(i54<1.0068672895431519){
  if(i6<0.0003281235694885254){
   if(i24<0.0901748463511467){
    if(i44<0.2342281937599182){
     s0+=104038.0;
     s1+=2840.0;
    } else {
     s0+=45.0;
     s1+=113.0;
    }
   } else {
    s1+=111.0;
   }
  } else {
   if(i40<2.811152080539614e-05){
    if(i48<-8.761006029089913e-06){
     s0+=121.0;
     s1+=399.0;
    } else {
     s0+=7408.0;
     s1+=1060.0;
    }
   } else {
    if(i30<1.104677438735962){
     s0+=1711.0;
     s1+=883.0;
    } else {
     s0+=241.0;
     s1+=1353.0;
    }
   }
  }
 } else {
  if(i19<0.9941369295120239){
   if(i15<0.13630694150924683){
    if(i74<0.024042394012212753){
     s0+=1033.0;
     s1+=72.0;
    } else {
     s0+=71.0;
     s1+=77.0;
    }
   } else {
    if(i1<-0.0015849769115447998){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=20.0;
     s1+=274.0;
    }
   }
  } else {
   if(i14<0.0007055411115288734){
    if(i41<1.1049952507019043){
     s0+=405.0;
     s1+=1352.0;
    } else {
     s0+=22.0;
     s1+=1065.0;
    }
   } else {
    s0+=254.0;
   }
  }
 }
} else {
 if(i7<0.005015648901462555){
  if(i65<-2.005332817134331e-06){
   if(i14<0.0002350909635424614){
    if(i21<1.0045191049575806){
     s0+=9.0;
     s1+=30.0;
    } else {
     s1+=859.0;
    }
   } else {
    if(i38<1.166447639465332){
     s0+=286.0;
     s1+=2.0;
    } else {
     s1+=47.0;
    }
   }
  } else {
   if(i34<1.0840704441070557){
    s1+=13.0;
   } else {
    if(i23<0.00045424699783325195){
     s0+=814.0;
     s1+=49.0;
    } else {
     s0+=9.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i46<0.9982455968856812){
   s0+=25.0;
  } else {
   if(i7<0.005945602431893349){
    if(i18<1.0146832466125488){
     s0+=45.0;
     s1+=32.0;
    } else {
     s0+=7.0;
     s1+=345.0;
    }
   } else {
    if(i23<-0.00030493736267089844){
     s0+=13.0;
     s1+=102.0;
    } else {
     s0+=9.0;
     s1+=13158.0;
    }
   }
  }
 }
}
if(i12<1.0102365016937256){
 if(i27<0.21701008081436157){
  if(i5<1.8298625946044922e-05){
   if(i54<0.9993554353713989){
    if(i43<-3.8809979741927236e-05){
     s0+=14.0;
     s1+=22.0;
    } else {
     s0+=49234.0;
     s1+=401.0;
    }
   } else {
    if(i31<0.0006683413521386683){
     s0+=44181.0;
     s1+=186.0;
    } else {
     s0+=14570.0;
     s1+=3282.0;
    }
   }
  } else {
   if(i64<0.001170105068013072){
    if(i39<-0.00016741885337978601){
     s0+=1109.0;
     s1+=1033.0;
    } else {
     s0+=4718.0;
     s1+=577.0;
    }
   } else {
    if(i2<3.039836883544922e-06){
     s0+=718.0;
     s1+=275.0;
    } else {
     s0+=388.0;
     s1+=1890.0;
    }
   }
  }
 } else {
  if(i35<0.03482211381196976){
   if(i0<-4.572643229039386e-05){
    if(i54<1.001664638519287){
     s0+=6.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i19<0.9825410842895508){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=155.0;
    }
   }
  } else {
   if(i28<0.004031750373542309){
    if(i1<-0.00020453333854675293){
     s0+=67.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=137.0;
    }
   } else {
    if(i66<0.07600080966949463){
     s0+=18.0;
     s1+=82.0;
    } else {
     s0+=20.0;
     s1+=1983.0;
    }
   }
  }
 }
} else {
 if(i16<0.0018072460079565644){
  if(i20<0.0017546415328979492){
   if(i34<1.0945069789886475){
    s1+=132.0;
   } else {
    if(i39<-0.0006173966685310006){
     s0+=142.0;
     s1+=45.0;
    } else {
     s0+=760.0;
     s1+=1.0;
    }
   }
  } else {
   if(i21<1.00881028175354){
    if(i36<0.0007156676147133112){
     s1+=7.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i20<0.0017883777618408203){
     s0+=2.0;
     s1+=22.0;
    } else {
     s1+=856.0;
    }
   }
  }
 } else {
  if(i26<1.175166130065918){
   if(i32<1.116863489151001){
    if(i49<-5.002669240639079e-06){
     s0+=18.0;
    } else {
     s1+=1644.0;
    }
   } else {
    s0+=487.0;
   }
  } else {
   if(i55<0.00016463722568005323){
    s0+=8.0;
   } else {
    if(i1<-0.0005994439125061035){
     s0+=5.0;
    } else {
     s0+=23.0;
     s1+=11570.0;
    }
   }
  }
 }
}
if(i5<2.3066997528076172e-05){
 if(i13<1.016627311706543){
  if(i53<0.3476073145866394){
   if(i35<0.012013603001832962){
    if(i61<-0.0007250010967254639){
     s0+=1191.0;
     s1+=171.0;
    } else {
     s0+=66899.0;
     s1+=587.0;
    }
   } else {
    if(i28<0.0010846289806067944){
     s0+=7658.0;
     s1+=2247.0;
    } else {
     s0+=33431.0;
     s1+=1188.0;
    }
   }
  } else {
   if(i61<-0.008144617080688477){
    if(i76<-0.05181029438972473){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=159.0;
     s1+=5.0;
    }
   } else {
    if(i62<0.058042049407958984){
     s0+=7.0;
     s1+=251.0;
    } else {
     s0+=19.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i16<0.001452016644179821){
   if(i46<1.0007330179214478){
    s0+=444.0;
   } else {
    if(i55<0.0017227024072781205){
     s0+=77.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  } else {
   if(i2<-2.47955322265625e-05){
    if(i0<-8.676392462803051e-05){
     s0+=9.0;
     s1+=73.0;
    } else {
     s0+=279.0;
     s1+=29.0;
    }
   } else {
    if(i31<0.0030117430724203587){
     s0+=11.0;
     s1+=800.0;
    } else {
     s0+=13.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i26<1.1935834884643555){
  if(i55<0.0008409164729528129){
   if(i14<0.0002847036230377853){
    if(i32<1.1229116916656494){
     s1+=2667.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=1273.0;
   }
  } else {
   if(i28<0.0009339462267234921){
    s1+=124.0;
   } else {
    if(i34<1.0958912372589111){
     s1+=5.0;
    } else {
     s0+=3172.0;
    }
   }
  }
 } else {
  if(i19<1.0012903213500977){
   if(i41<1.104677438735962){
    if(i4<1.0049545764923096){
     s0+=1399.0;
     s1+=468.0;
    } else {
     s0+=7.0;
     s1+=167.0;
    }
   } else {
    if(i36<0.010052314959466457){
     s0+=161.0;
     s1+=580.0;
    } else {
     s0+=4.0;
     s1+=933.0;
    }
   }
  } else {
   if(i17<0.06435653567314148){
    if(i74<0.009612021967768669){
     s0+=243.0;
     s1+=8.0;
    } else {
     s0+=52.0;
     s1+=259.0;
    }
   } else {
    if(i1<-1.0967254638671875e-05){
     s0+=22.0;
     s1+=40.0;
    } else {
     s0+=60.0;
     s1+=13613.0;
    }
   }
  }
 }
}
if(i54<1.0035068988800049){
 if(i18<1.0130443572998047){
  if(i24<0.0887441337108612){
   if(i24<0.006644836626946926){
    if(i3<1.0029240846633911){
     s0+=68428.0;
     s1+=504.0;
    } else {
     s0+=256.0;
     s1+=85.0;
    }
   } else {
    if(i19<0.9962249994277954){
     s0+=31837.0;
     s1+=561.0;
    } else {
     s0+=6795.0;
     s1+=3436.0;
    }
   }
  } else {
   if(i51<-2.5220583665941376e-06){
    if(i40<0.0004637688398361206){
     s1+=309.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i6<0.000293731689453125){
   if(i7<0.007350887171924114){
    if(i24<0.03480032458901405){
     s0+=377.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i7<0.005923489108681679){
    if(i45<1.0006134510040283){
     s0+=75.0;
    } else {
     s0+=81.0;
     s1+=255.0;
    }
   } else {
    if(i65<1.4409504728973843e-05){
     s0+=14.0;
     s1+=2333.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
} else {
 if(i4<1.0081086158752441){
  if(i7<0.004066876135766506){
   if(i23<0.00017833709716796875){
    if(i2<8.344650268554688e-05){
     s0+=3997.0;
     s1+=31.0;
    } else {
     s0+=108.0;
     s1+=30.0;
    }
   } else {
    if(i33<0.0007522790692746639){
     s1+=119.0;
    } else {
     s0+=348.0;
    }
   }
  } else {
   if(i18<0.9661242961883545){
    if(i27<0.15228193998336792){
     s0+=2521.0;
     s1+=385.0;
    } else {
     s0+=79.0;
     s1+=261.0;
    }
   } else {
    if(i7<0.00725722499191761){
     s0+=917.0;
     s1+=760.0;
    } else {
     s0+=228.0;
     s1+=3341.0;
    }
   }
  }
 } else {
  if(i34<1.162848949432373){
   if(i33<0.0011746389791369438){
    if(i26<1.1294310092926025){
     s1+=1028.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i14<0.0001737460697768256){
     s1+=83.0;
    } else {
     s0+=546.0;
    }
   }
  } else {
   s1+=10582.0;
  }
 }
}
if(i6<0.0005705356597900391){
 if(i17<0.20642241835594177){
  if(i16<0.0015704797115176916){
   if(i41<1.0178465843200684){
    if(i40<3.470664159976877e-05){
     s0+=5522.0;
     s1+=2.0;
    } else {
     s0+=4737.0;
     s1+=347.0;
    }
   } else {
    if(i37<1.1354830265045166){
     s0+=69536.0;
     s1+=186.0;
    } else {
     s0+=6854.0;
     s1+=205.0;
    }
   }
  } else {
   if(i4<0.9992263317108154){
    if(i34<1.0912797451019287){
     s0+=1080.0;
     s1+=407.0;
    } else {
     s0+=19188.0;
     s1+=527.0;
    }
   } else {
    if(i37<1.0440731048583984){
     s0+=1097.0;
     s1+=68.0;
    } else {
     s0+=1721.0;
     s1+=2701.0;
    }
   }
  }
 } else {
  if(i22<0.002562624868005514){
   if(i0<-4.9633788876235485e-05){
    if(i49<-5.792593356090947e-07){
     s1+=18.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i30<1.1017119884490967){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=151.0;
    }
   }
  } else {
   if(i7<0.005594986490905285){
    if(i4<1.000941276550293){
     s0+=55.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i55<0.00185207964386791){
     s0+=3.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=611.0;
    }
   }
  }
 }
} else {
 if(i17<0.1565929651260376){
  if(i50<1.3530254364013672e-05){
   if(i20<0.001106858253479004){
    if(i35<0.00828468520194292){
     s0+=1491.0;
     s1+=143.0;
    } else {
     s0+=1663.0;
     s1+=1644.0;
    }
   } else {
    if(i29<0.000789642333984375){
     s0+=181.0;
     s1+=3167.0;
    } else {
     s0+=133.0;
     s1+=83.0;
    }
   }
  } else {
   if(i34<1.1793382167816162){
    if(i38<1.0773653984069824){
     s0+=221.0;
     s1+=11.0;
    } else {
     s0+=2275.0;
    }
   } else {
    if(i15<0.07670634984970093){
     s0+=291.0;
     s1+=130.0;
    } else {
     s0+=84.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i33<0.0025188704021275043){
   if(i26<1.1935834884643555){
    s0+=312.0;
   } else {
    if(i1<0.0004572272300720215){
     s0+=7.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i23<-0.0004145503044128418){
    if(i7<0.00877723190933466){
     s0+=53.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=265.0;
    }
   } else {
    if(i20<-0.0015031695365905762){
     s0+=20.0;
     s1+=499.0;
    } else {
     s0+=7.0;
     s1+=12525.0;
    }
   }
  }
 }
}
if(i0<-8.92738753464073e-05){
 if(i15<0.0413852334022522){
  if(i58<0.0023801936767995358){
   if(i38<1.0964157581329346){
    s0+=51.0;
   } else {
    if(i60<-0.0067344605922698975){
     s0+=63.0;
     s1+=44.0;
    } else {
     s0+=15.0;
     s1+=103.0;
    }
   }
  } else {
   if(i76<-0.1686353087425232){
    if(i7<0.021062709391117096){
     s0+=26.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i60<-0.010610401630401611){
     s0+=669.0;
     s1+=13.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i14<0.0007067046826705337){
   if(i5<0.00023752450942993164){
    if(i20<-0.004667162895202637){
     s0+=67.0;
     s1+=96.0;
    } else {
     s0+=72.0;
     s1+=15933.0;
    }
   } else {
    s0+=76.0;
   }
  } else {
   s0+=205.0;
  }
 }
} else {
 if(i2<6.562471389770508e-05){
  if(i31<0.0007220549741759896){
   if(i8<0.9948620796203613){
    if(i5<1.9848346710205078e-05){
     s0+=12698.0;
     s1+=247.0;
    } else {
     s0+=10.0;
     s1+=30.0;
    }
   } else {
    if(i33<0.001858205534517765){
     s0+=64029.0;
     s1+=121.0;
    } else {
     s0+=4355.0;
     s1+=167.0;
    }
   }
  } else {
   if(i6<-0.0001252591609954834){
    if(i26<1.0907573699951172){
     s0+=701.0;
     s1+=214.0;
    } else {
     s0+=21075.0;
     s1+=169.0;
    }
   } else {
    if(i24<0.008535759523510933){
     s0+=5679.0;
     s1+=559.0;
    } else {
     s0+=4892.0;
     s1+=4387.0;
    }
   }
  }
 } else {
  if(i42<0.0010159143712371588){
   if(i29<0.0005965828895568848){
    if(i69<1.3089223784845672e-06){
     s1+=1480.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    s0+=44.0;
   }
  } else {
   if(i66<0.13267523050308228){
    if(i18<1.021186113357544){
     s0+=1547.0;
     s1+=287.0;
    } else {
     s0+=6.0;
     s1+=182.0;
    }
   } else {
    if(i38<1.1344192028045654){
     s0+=33.0;
     s1+=102.0;
    } else {
     s0+=5.0;
     s1+=348.0;
    }
   }
  }
 }
}
if(i18<1.0142048597335815){
 if(i0<-8.10866040410474e-05){
  if(i17<0.04090726375579834){
   if(i40<9.474395483266562e-06){
    if(i46<0.9993658065795898){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=75.0;
    }
   } else {
    if(i76<-0.1302935779094696){
     s0+=86.0;
     s1+=101.0;
    } else {
     s0+=1004.0;
     s1+=50.0;
    }
   }
  } else {
   if(i26<1.1743842363357544){
    if(i26<1.1180615425109863){
     s1+=101.0;
    } else {
     s0+=325.0;
    }
   } else {
    if(i15<0.11251014471054077){
     s0+=179.0;
     s1+=644.0;
    } else {
     s0+=22.0;
     s1+=3528.0;
    }
   }
  }
 } else {
  if(i7<0.003733094548806548){
   if(i6<0.0011811256408691406){
    if(i26<1.1162974834442139){
     s0+=27458.0;
     s1+=1001.0;
    } else {
     s0+=62983.0;
     s1+=228.0;
    }
   } else {
    if(i29<0.0005750060081481934){
     s1+=221.0;
    } else {
     s0+=635.0;
    }
   }
  } else {
   if(i54<0.9998854398727417){
    if(i5<-5.543231964111328e-06){
     s0+=15107.0;
     s1+=40.0;
    } else {
     s0+=818.0;
     s1+=265.0;
    }
   } else {
    if(i1<-0.00047475099563598633){
     s0+=5448.0;
     s1+=320.0;
    } else {
     s0+=1287.0;
     s1+=4370.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007198286475613713){
  if(i2<1.6182661056518555e-05){
   if(i52<0.035402942448854446){
    if(i34<1.1050615310668945){
     s1+=1.0;
    } else {
     s0+=251.0;
     s1+=3.0;
    }
   } else {
    if(i32<1.1764509677886963){
     s0+=115.0;
    } else {
     s0+=42.0;
     s1+=90.0;
    }
   }
  } else {
   if(i43<-1.3325905456440523e-05){
    if(i51<-6.317071529338136e-05){
     s0+=12.0;
    } else {
     s0+=122.0;
     s1+=13364.0;
    }
   } else {
    s0+=53.0;
   }
  }
 } else {
  s0+=507.0;
 }
}
if(i11<1.0177363157272339){
 if(i2<6.633996963500977e-05){
  if(i3<1.0023244619369507){
   if(i16<0.0017130784690380096){
    if(i18<0.9956635236740112){
     s0+=16143.0;
     s1+=529.0;
    } else {
     s0+=72063.0;
     s1+=352.0;
    }
   } else {
    if(i22<0.0009228305425494909){
     s0+=2324.0;
     s1+=2282.0;
    } else {
     s0+=18092.0;
     s1+=889.0;
    }
   }
  } else {
   if(i57<0.002980567514896393){
    if(i42<0.0018187372479587793){
     s0+=3486.0;
     s1+=393.0;
    } else {
     s0+=1047.0;
     s1+=521.0;
    }
   } else {
    if(i39<-0.0001634460932109505){
     s0+=113.0;
     s1+=1021.0;
    } else {
     s0+=575.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i52<0.037377797067165375){
   if(i14<0.0006722159450873733){
    if(i46<1.0025649070739746){
     s0+=166.0;
     s1+=1866.0;
    } else {
     s0+=62.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.00142755382694304){
     s0+=1254.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i26<1.1782985925674438){
    if(i32<1.116863489151001){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i15<0.07043710350990295){
     s0+=26.0;
     s1+=184.0;
    } else {
     s0+=9.0;
     s1+=1913.0;
    }
   }
  }
 }
} else {
 if(i8<1.020949125289917){
  if(i43<-8.712526323506609e-06){
   if(i50<1.2814998626708984e-05){
    if(i29<0.0005097389221191406){
     s0+=94.0;
     s1+=1370.0;
    } else {
     s0+=244.0;
     s1+=369.0;
    }
   } else {
    if(i36<0.0040690358728170395){
     s0+=403.0;
     s1+=35.0;
    } else {
     s0+=44.0;
     s1+=273.0;
    }
   }
  } else {
   if(i28<0.004238263703882694){
    if(i3<1.0006561279296875){
     s0+=239.0;
    } else {
     s0+=47.0;
     s1+=2.0;
    }
   } else {
    if(i80<0.018453508615493774){
     s0+=11.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i20<0.0012619197368621826){
   if(i51<-3.108948931185296e-06){
    if(i27<0.08991116285324097){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=61.0;
     s1+=1422.0;
    }
   } else {
    s0+=122.0;
   }
  } else {
   if(i51<-3.915945399057819e-06){
    s1+=10462.0;
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i25<1.0213665962219238){
 if(i16<0.0017707239603623748){
  if(i4<1.0080170631408691){
   if(i32<1.0776758193969727){
    if(i32<1.05497145652771){
     s0+=20923.0;
     s1+=133.0;
    } else {
     s0+=2386.0;
     s1+=632.0;
    }
   } else {
    if(i56<1.0015125274658203){
     s0+=56181.0;
     s1+=76.0;
    } else {
     s0+=12666.0;
     s1+=167.0;
    }
   }
  } else {
   if(i45<1.0044362545013428){
    if(i23<0.00019550323486328125){
     s0+=50.0;
     s1+=7.0;
    } else {
     s0+=60.0;
     s1+=543.0;
    }
   } else {
    if(i20<0.0025896430015563965){
     s0+=178.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i21<1.0026284456253052){
   if(i5<-1.1324882507324219e-06){
    if(i55<0.036966826766729355){
     s0+=13941.0;
     s1+=419.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i34<1.116804838180542){
     s0+=1397.0;
     s1+=1865.0;
    } else {
     s0+=4372.0;
     s1+=1055.0;
    }
   }
  } else {
   if(i7<0.0035558680538088083){
    if(i38<1.1447370052337646){
     s0+=1057.0;
     s1+=90.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i12<0.9764962196350098){
     s0+=845.0;
     s1+=295.0;
    } else {
     s0+=956.0;
     s1+=5484.0;
    }
   }
  }
 }
} else {
 if(i9<1.020369052886963){
  if(i7<0.005312600173056126){
   if(i37<1.0904107093811035){
    if(i78<0.0063250064849853516){
     s1+=75.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i8<1.02000093460083){
     s0+=768.0;
     s1+=34.0;
    } else {
     s0+=21.0;
     s1+=22.0;
    }
   }
  } else {
   if(i2<-7.11977481842041e-05){
    if(i38<1.1772091388702393){
     s0+=36.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i23<-0.0005904138088226318){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=567.0;
    }
   }
  }
 } else {
  if(i6<0.0002467036247253418){
   if(i0<-6.679652142338455e-05){
    if(i43<-1.0933260455203708e-05){
     s0+=8.0;
     s1+=227.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i7<0.0051170047372579575){
     s0+=302.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   }
  } else {
   if(i1<-0.00018471479415893555){
    if(i16<0.004540127702057362){
     s0+=111.0;
     s1+=12.0;
    } else {
     s1+=96.0;
    }
   } else {
    if(i17<0.14471220970153809){
     s0+=240.0;
     s1+=1321.0;
    } else {
     s0+=30.0;
     s1+=11026.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i0<-8.215877460315824e-05){
  if(i39<-0.00040700408862903714){
   if(i15<0.03060591220855713){
    if(i48<5.17460830451455e-05){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=60.0;
     s1+=3.0;
    }
   } else {
    if(i7<0.0036372183822095394){
     s0+=6.0;
    } else {
     s0+=14.0;
     s1+=898.0;
    }
   }
  } else {
   if(i81<0.12387275695800781){
    if(i15<0.13504090905189514){
     s0+=725.0;
     s1+=41.0;
    } else {
     s0+=14.0;
     s1+=46.0;
    }
   } else {
    if(i67<0.08852682262659073){
     s0+=2.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i11<1.0141229629516602){
   if(i29<8.219480514526367e-05){
    if(i17<0.23160693049430847){
     s0+=77127.0;
     s1+=796.0;
    } else {
     s0+=21.0;
     s1+=37.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=5459.0;
     s1+=2114.0;
    } else {
     s0+=25015.0;
     s1+=741.0;
    }
   }
  } else {
   if(i16<0.002078318502753973){
    if(i0<-6.44641331746243e-05){
     s0+=44.0;
     s1+=30.0;
    } else {
     s0+=950.0;
     s1+=25.0;
    }
   } else {
    if(i2<-2.485513687133789e-05){
     s0+=311.0;
     s1+=47.0;
    } else {
     s0+=28.0;
     s1+=433.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007047067629173398){
  if(i0<-4.27890190621838e-05){
   if(i17<0.01003977656364441){
    if(i12<0.991723895072937){
     s0+=375.0;
     s1+=32.0;
    } else {
     s0+=4.0;
     s1+=74.0;
    }
   } else {
    if(i2<1.0073184967041016e-05){
     s0+=352.0;
     s1+=382.0;
    } else {
     s0+=496.0;
     s1+=17535.0;
    }
   }
  } else {
   if(i32<1.094508409500122){
    if(i16<0.0006503883050754666){
     s0+=81.0;
    } else {
     s1+=538.0;
    }
   } else {
    if(i16<0.0026343059726059437){
     s0+=1373.0;
     s1+=18.0;
    } else {
     s0+=621.0;
     s1+=554.0;
    }
   }
  }
 } else {
  if(i58<-0.0008191465167328715){
   s1+=1.0;
  } else {
   s0+=3392.0;
  }
 }
}
if(i0<-9.841138671617955e-05){
 if(i17<0.017432481050491333){
  if(i30<1.1237854957580566){
   if(i53<0.0275786891579628){
    if(i35<0.02534644864499569){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i4<1.0070984363555908){
     s0+=470.0;
     s1+=11.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i45<1.0026359558105469){
    if(i77<0.0029217302799224854){
     s0+=38.0;
     s1+=6.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i35<0.03842946141958237){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i15<0.1013062596321106){
   if(i61<-0.008977174758911133){
    if(i56<1.0007569789886475){
     s1+=11.0;
    } else {
     s0+=74.0;
     s1+=10.0;
    }
   } else {
    if(i51<-3.784412547247484e-05){
     s0+=92.0;
    } else {
     s0+=79.0;
     s1+=821.0;
    }
   }
  } else {
   if(i46<0.997887909412384){
    s0+=75.0;
   } else {
    if(i50<5.6624412536621094e-05){
     s0+=40.0;
     s1+=14439.0;
    } else {
     s0+=50.0;
    }
   }
  }
 }
} else {
 if(i2<6.443262100219727e-05){
  if(i9<1.0181578397750854){
   if(i16<0.0017227320931851864){
    if(i58<0.00017968376050703228){
     s0+=76891.0;
     s1+=309.0;
    } else {
     s0+=14065.0;
     s1+=594.0;
    }
   } else {
    if(i2<-2.485513687133789e-05){
     s0+=17963.0;
     s1+=695.0;
    } else {
     s0+=3818.0;
     s1+=3256.0;
    }
   }
  } else {
   if(i26<1.1172833442687988){
    if(i1<-0.0004920661449432373){
     s0+=37.0;
    } else {
     s0+=7.0;
     s1+=422.0;
    }
   } else {
    if(i24<0.027716200798749924){
     s0+=884.0;
     s1+=232.0;
    } else {
     s0+=122.0;
     s1+=552.0;
    }
   }
  }
 } else {
  if(i29<0.0007584095001220703){
   if(i65<8.975240461950307e-07){
    if(i51<-4.215594344714191e-06){
     s0+=131.0;
     s1+=2598.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i47<1.0417377948760986){
     s0+=115.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i22<0.0025151274167001247){
    s0+=1438.0;
   } else {
    if(i24<0.028191784396767616){
     s0+=43.0;
     s1+=61.0;
    } else {
     s0+=4.0;
     s1+=267.0;
    }
   }
  }
 }
}
if(i10<1.0135858058929443){
 if(i17<0.20032230019569397){
  if(i54<1.007190227508545){
   if(i26<1.1162974834442139){
    if(i11<1.0086950063705444){
     s0+=29965.0;
     s1+=3058.0;
    } else {
     s0+=387.0;
     s1+=1113.0;
    }
   } else {
    if(i64<0.0017914886120706797){
     s0+=78523.0;
     s1+=797.0;
    } else {
     s0+=4681.0;
     s1+=1158.0;
    }
   }
  } else {
   if(i1<0.0004169940948486328){
    if(i30<1.1121230125427246){
     s0+=1007.0;
     s1+=150.0;
    } else {
     s0+=68.0;
     s1+=160.0;
    }
   } else {
    if(i33<0.0019203734118491411){
     s0+=214.0;
     s1+=196.0;
    } else {
     s0+=173.0;
     s1+=1362.0;
    }
   }
  }
 } else {
  if(i43<-8.755558155826293e-06){
   if(i14<0.0007400831673294306){
    if(i26<1.179210901260376){
     s0+=20.0;
    } else {
     s0+=42.0;
     s1+=1903.0;
    }
   } else {
    s0+=14.0;
   }
  } else {
   if(i6<0.0007973909378051758){
    if(i46<1.0007808208465576){
     s0+=197.0;
    } else {
     s0+=55.0;
     s1+=2.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i4<1.0015225410461426){
  if(i17<0.2361641228199005){
   if(i37<1.0887749195098877){
    s1+=39.0;
   } else {
    if(i7<0.00577834015712142){
     s0+=357.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   }
  } else {
   if(i79<0.12508493661880493){
    if(i14<0.0001568689476698637){
     s0+=2.0;
    } else {
     s1+=101.0;
    }
   } else {
    if(i77<-0.009614324197173119){
     s1+=3.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i32<1.1757044792175293){
   if(i34<1.1174830198287964){
    if(i49<-4.8292822611983865e-06){
     s0+=34.0;
    } else {
     s0+=12.0;
     s1+=1889.0;
    }
   } else {
    if(i28<0.0022006556391716003){
     s0+=666.0;
    } else {
     s0+=48.0;
     s1+=87.0;
    }
   }
  } else {
   if(i51<-3.791538347286405e-06){
    if(i38<1.0877315998077393){
     s0+=24.0;
    } else {
     s0+=56.0;
     s1+=12198.0;
    }
   } else {
    s0+=33.0;
   }
  }
 }
}
if(i2<6.335973739624023e-05){
 if(i30<1.1402404308319092){
  if(i13<1.018862009048462){
   if(i16<0.0017323036445304751){
    if(i58<0.0001794628333300352){
     s0+=76371.0;
     s1+=345.0;
    } else {
     s0+=13784.0;
     s1+=614.0;
    }
   } else {
    if(i23<-0.00020885467529296875){
     s0+=16499.0;
     s1+=968.0;
    } else {
     s0+=5920.0;
     s1+=3167.0;
    }
   }
  } else {
   if(i2<1.7940998077392578e-05){
    if(i40<0.0001703166781226173){
     s0+=366.0;
     s1+=75.0;
    } else {
     s0+=27.0;
     s1+=78.0;
    }
   } else {
    if(i16<0.001165403751656413){
     s0+=40.0;
    } else {
     s0+=72.0;
     s1+=568.0;
    }
   }
  }
 } else {
  if(i43<-1.4732913768966682e-05){
   if(i17<0.0014938712120056152){
    if(i3<1.0048890113830566){
     s0+=67.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i7<0.00640856334939599){
     s0+=130.0;
     s1+=27.0;
    } else {
     s0+=52.0;
     s1+=1812.0;
    }
   }
  } else {
   if(i31<0.0012363586574792862){
    if(i22<0.0025908593088388443){
     s0+=925.0;
    } else {
     s0+=57.0;
     s1+=12.0;
    }
   } else {
    if(i3<1.0009143352508545){
     s0+=17.0;
    } else {
     s0+=3.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i22<0.002331655938178301){
  if(i42<0.0010382779873907566){
   if(i26<1.0610902309417725){
    s0+=73.0;
   } else {
    if(i2<0.00028896331787109375){
     s0+=10.0;
     s1+=2338.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i28<0.001202109968289733){
    s1+=40.0;
   } else {
    s0+=1937.0;
   }
  }
 } else {
  if(i18<0.9590188264846802){
   if(i24<0.026915594935417175){
    if(i29<0.0007252097129821777){
     s0+=28.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i31<0.0013592123286798596){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=182.0;
    }
   }
  } else {
   if(i19<1.0064241886138916){
    if(i7<0.005213239695876837){
     s0+=22.0;
    } else {
     s0+=49.0;
     s1+=1913.0;
    }
   } else {
    if(i17<0.07498612999916077){
     s0+=2.0;
     s1+=209.0;
    } else {
     s1+=11920.0;
    }
   }
  }
 }
}
if(i4<1.00374174118042){
 if(i52<0.09136515110731125){
  if(i8<1.0110883712768555){
   if(i16<0.001703730784356594){
    if(i33<0.000337004370521754){
     s0+=19074.0;
     s1+=626.0;
    } else {
     s0+=69293.0;
     s1+=295.0;
    }
   } else {
    if(i2<-3.224611282348633e-05){
     s0+=16578.0;
     s1+=603.0;
    } else {
     s0+=4314.0;
     s1+=2991.0;
    }
   }
  } else {
   if(i3<1.0002813339233398){
    if(i44<0.42897501587867737){
     s0+=343.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.00410623662173748){
     s0+=433.0;
     s1+=53.0;
    } else {
     s0+=25.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i23<-0.0006052255630493164){
   if(i17<0.20185625553131104){
    if(i75<-0.0035653412342071533){
     s0+=143.0;
     s1+=57.0;
    } else {
     s0+=1624.0;
     s1+=45.0;
    }
   } else {
    if(i12<0.9592227935791016){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i32<1.6811659336090088){
    if(i51<-2.3228242298500845e-06){
     s0+=66.0;
     s1+=1319.0;
    } else {
     s0+=103.0;
    }
   } else {
    s0+=71.0;
   }
  }
 }
} else {
 if(i14<0.0007013810100033879){
  if(i8<1.0154707431793213){
   if(i6<0.0009914040565490723){
    if(i0<-4.2296065657865256e-05){
     s0+=182.0;
     s1+=646.0;
    } else {
     s0+=1184.0;
     s1+=317.0;
    }
   } else {
    if(i24<0.03407241031527519){
     s0+=351.0;
     s1+=1471.0;
    } else {
     s0+=32.0;
     s1+=2104.0;
    }
   }
  } else {
   if(i51<-6.348478200379759e-05){
    s0+=7.0;
   } else {
    if(i27<0.06247904896736145){
     s0+=24.0;
     s1+=66.0;
    } else {
     s0+=37.0;
     s1+=13070.0;
    }
   }
  }
 } else {
  if(i34<1.3942866325378418){
   s0+=2600.0;
  } else {
   s1+=12.0;
  }
 }
}
if(i4<1.0038644075393677){
 if(i0<-9.139734174823388e-05){
  if(i61<-0.006800532341003418){
   if(i15<0.06150510907173157){
    if(i74<0.051512718200683594){
     s0+=648.0;
     s1+=8.0;
    } else {
     s0+=20.0;
     s1+=37.0;
    }
   } else {
    if(i56<1.0025100708007812){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=42.0;
     s1+=16.0;
    }
   }
  } else {
   if(i27<0.05328476428985596){
    if(i39<-0.00038563826819881797){
     s0+=18.0;
     s1+=51.0;
    } else {
     s0+=101.0;
     s1+=21.0;
    }
   } else {
    if(i51<-2.2220199753064662e-05){
     s0+=62.0;
    } else {
     s0+=34.0;
     s1+=1290.0;
    }
   }
  }
 } else {
  if(i29<8.291006088256836e-05){
   if(i7<0.015007536858320236){
    if(i31<0.0006807364989072084){
     s0+=62355.0;
     s1+=214.0;
    } else {
     s0+=15764.0;
     s1+=702.0;
    }
   } else {
    if(i65<2.0430547010619193e-05){
     s1+=31.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i35<0.012365708127617836){
    if(i28<0.0009347699815407395){
     s0+=4439.0;
     s1+=488.0;
    } else {
     s0+=14414.0;
     s1+=37.0;
    }
   } else {
    if(i37<1.0903606414794922){
     s0+=1213.0;
     s1+=2033.0;
    } else {
     s0+=13075.0;
     s1+=1624.0;
    }
   }
  }
 }
} else {
 if(i34<1.1766420602798462){
  if(i26<1.116804838180542){
   if(i28<0.0002379271318204701){
    s0+=598.0;
   } else {
    s1+=2732.0;
   }
  } else {
   if(i55<0.00267609441652894){
    if(i35<0.05054856091737747){
     s0+=3398.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i65<-1.0362700777477585e-06){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i7<0.002829838078469038){
   if(i48<-3.1148620109888725e-06){
    s1+=117.0;
   } else {
    if(i34<1.2364997863769531){
     s1+=4.0;
    } else {
     s0+=190.0;
    }
   }
  } else {
   if(i17<0.09436097741127014){
    if(i26<1.629280686378479){
     s0+=64.0;
     s1+=626.0;
    } else {
     s0+=51.0;
     s1+=36.0;
    }
   } else {
    if(i8<0.9083325862884521){
     s0+=3.0;
    } else {
     s0+=32.0;
     s1+=14180.0;
    }
   }
  }
 }
}
if(i30<1.1279573440551758){
 if(i20<0.0013714432716369629){
  if(i7<0.003640477079898119){
   if(i48<-1.1267121408309322e-05){
    if(i42<0.0006843818118795753){
     s1+=62.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i58<0.0001767688663676381){
     s0+=74662.0;
     s1+=354.0;
    } else {
     s0+=14470.0;
     s1+=667.0;
    }
   }
  } else {
   if(i28<0.001204862492159009){
    if(i26<1.05894136428833){
     s0+=2689.0;
    } else {
     s0+=55.0;
     s1+=3267.0;
    }
   } else {
    if(i50<7.331371307373047e-06){
     s0+=17988.0;
     s1+=785.0;
    } else {
     s0+=3075.0;
     s1+=1495.0;
    }
   }
  }
 } else {
  if(i23<0.0003007054328918457){
   if(i32<1.0987343788146973){
    s1+=838.0;
   } else {
    if(i13<1.0260919332504272){
     s0+=901.0;
     s1+=198.0;
    } else {
     s0+=6.0;
     s1+=98.0;
    }
   }
  } else {
   if(i45<0.9995847940444946){
    s0+=19.0;
   } else {
    if(i78<0.011182963848114014){
     s0+=16.0;
     s1+=2924.0;
    } else {
     s0+=15.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i7<0.005057200789451599){
  if(i48<-8.084013643383514e-06){
   if(i37<1.14853835105896){
    s0+=3.0;
   } else {
    s1+=262.0;
   }
  } else {
   if(i23<0.000386655330657959){
    if(i12<1.0134477615356445){
     s0+=2235.0;
     s1+=100.0;
    } else {
     s0+=13.0;
     s1+=17.0;
    }
   } else {
    if(i32<1.169403314590454){
     s0+=6.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i15<1.722574234008789e-05){
   if(i11<0.9160515666007996){
    if(i24<0.06545097380876541){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=8.0;
    }
   } else {
    if(i43<-1.6242418496403843e-05){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i2<-4.1604042053222656e-05){
    if(i55<0.002715606242418289){
     s0+=89.0;
    } else {
     s0+=43.0;
     s1+=319.0;
    }
   } else {
    if(i53<0.012579004280269146){
     s0+=16.0;
     s1+=64.0;
    } else {
     s0+=66.0;
     s1+=12767.0;
    }
   }
  }
 }
}
if(i17<0.18659314513206482){
 if(i6<0.0005268454551696777){
  if(i10<1.0135915279388428){
   if(i31<0.0007107785204425454){
    if(i22<0.0019596852362155914){
     s0+=72988.0;
     s1+=295.0;
    } else {
     s0+=5408.0;
     s1+=144.0;
    }
   } else {
    if(i32<1.0903575420379639){
     s0+=2692.0;
     s1+=2386.0;
    } else {
     s0+=27026.0;
     s1+=977.0;
    }
   }
  } else {
   if(i43<-1.0702930012485012e-05){
    if(i29<0.0004583001136779785){
     s0+=26.0;
     s1+=273.0;
    } else {
     s0+=86.0;
    }
   } else {
    if(i26<1.0905578136444092){
     s1+=3.0;
    } else {
     s0+=242.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i29<0.0005102753639221191){
   if(i26<1.0623862743377686){
    s0+=522.0;
   } else {
    if(i4<1.0038642883300781){
     s0+=934.0;
     s1+=851.0;
    } else {
     s0+=122.0;
     s1+=3555.0;
    }
   }
  } else {
   if(i37<1.1714401245117188){
    if(i64<0.0013434728607535362){
     s0+=4740.0;
     s1+=158.0;
    } else {
     s0+=155.0;
     s1+=164.0;
    }
   } else {
    if(i1<0.0006118416786193848){
     s0+=722.0;
     s1+=420.0;
    } else {
     s0+=108.0;
     s1+=2031.0;
    }
   }
  }
 }
} else {
 if(i0<-3.474114419077523e-05){
  if(i22<0.002114713191986084){
   s0+=63.0;
  } else {
   if(i2<1.615285873413086e-05){
    if(i40<3.076442226301879e-05){
     s0+=16.0;
    } else {
     s0+=23.0;
     s1+=649.0;
    }
   } else {
    if(i51<-4.39475570601644e-06){
     s0+=1.0;
     s1+=12177.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i16<0.002829848090186715){
   if(i51<-3.883823410433251e-06){
    if(i66<0.1419622302055359){
     s0+=146.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i73<-0.0010546743869781494){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=450.0;
    }
   }
  } else {
   if(i19<0.996230959892273){
    if(i48<3.4569027775432914e-05){
     s0+=7.0;
     s1+=39.0;
    } else {
     s0+=55.0;
     s1+=5.0;
    }
   } else {
    if(i12<0.9748184084892273){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=154.0;
    }
   }
  }
 }
}
if(i0<-9.780804975889623e-05){
 if(i30<1.0441462993621826){
  if(i18<0.979161262512207){
   if(i13<0.9640413522720337){
    if(i46<1.002532958984375){
     s0+=455.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i46<1.0021083354949951){
    s1+=55.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i15<0.041282445192337036){
   if(i75<-0.008310437202453613){
    if(i53<0.14761453866958618){
     s0+=45.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=68.0;
    }
   } else {
    if(i3<1.0058488845825195){
     s0+=165.0;
     s1+=19.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   }
  } else {
   if(i14<0.0007066904217936099){
    if(i50<5.692243576049805e-05){
     s0+=57.0;
     s1+=15422.0;
    } else {
     s0+=87.0;
    }
   } else {
    s0+=175.0;
   }
  }
 }
} else {
 if(i8<1.010561227798462){
  if(i19<1.0090584754943848){
   if(i1<0.0011181235313415527){
    if(i7<0.003647971898317337){
     s0+=88534.0;
     s1+=1026.0;
    } else {
     s0+=23523.0;
     s1+=3801.0;
    }
   } else {
    if(i58<6.675061740679666e-05){
     s0+=29.0;
     s1+=9.0;
    } else {
     s0+=60.0;
     s1+=402.0;
    }
   }
  } else {
   if(i62<0.0003970188554376364){
    if(i48<1.0700523489504121e-07){
     s0+=10.0;
     s1+=389.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   } else {
    if(i78<-0.004169344902038574){
     s0+=12.0;
     s1+=102.0;
    } else {
     s0+=337.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i14<0.00031446784851141274){
   if(i6<0.00032442808151245117){
    if(i48<9.994359061238356e-06){
     s0+=519.0;
     s1+=8.0;
    } else {
     s0+=125.0;
     s1+=113.0;
    }
   } else {
    if(i22<0.005172079429030418){
     s0+=97.0;
     s1+=2765.0;
    } else {
     s0+=169.0;
     s1+=33.0;
    }
   }
  } else {
   if(i7<0.006980640813708305){
    if(i42<0.003571326145902276){
     s0+=1959.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i29<0.0010298490524291992){
     s1+=102.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i15<0.18748679757118225){
 if(i9<1.0156245231628418){
  if(i45<1.0017036199569702){
   if(i31<0.0006898673018440604){
    if(i23<0.0002709627151489258){
     s0+=73960.0;
     s1+=356.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   } else {
    if(i21<0.9983391761779785){
     s0+=19111.0;
     s1+=329.0;
    } else {
     s0+=8868.0;
     s1+=3409.0;
    }
   }
  } else {
   if(i4<1.0081977844238281){
    if(i7<0.0039288923144340515){
     s0+=7320.0;
     s1+=167.0;
    } else {
     s0+=3571.0;
     s1+=2192.0;
    }
   } else {
    if(i2<0.00011289119720458984){
     s0+=252.0;
     s1+=46.0;
    } else {
     s0+=98.0;
     s1+=1402.0;
    }
   }
  }
 } else {
  if(i23<0.000288546085357666){
   if(i37<1.090468406677246){
    if(i2<-8.195638656616211e-06){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=950.0;
    }
   } else {
    if(i34<1.1758689880371094){
     s0+=1349.0;
     s1+=43.0;
    } else {
     s0+=741.0;
     s1+=732.0;
    }
   }
  } else {
   if(i45<1.001070261001587){
    if(i59<-0.003413503523916006){
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i49<-6.272173777688295e-06){
     s0+=31.0;
    } else {
     s1+=1497.0;
    }
   }
  }
 }
} else {
 if(i43<-1.2148917448939756e-05){
  if(i26<1.1935834884643555){
   s0+=77.0;
  } else {
   if(i23<-0.0003922581672668457){
    if(i16<0.00483089592307806){
     s0+=75.0;
     s1+=18.0;
    } else {
     s0+=15.0;
     s1+=439.0;
    }
   } else {
    if(i38<1.118112564086914){
     s0+=34.0;
     s1+=166.0;
    } else {
     s0+=27.0;
     s1+=12602.0;
    }
   }
  }
 } else {
  if(i66<0.12330706417560577){
   if(i72<0.014233529567718506){
    if(i65<-4.2077572288690135e-06){
     s1+=1.0;
    } else {
     s0+=699.0;
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i54<1.0023982524871826){
    if(i61<-0.0073514580726623535){
     s1+=3.0;
    } else {
     s0+=140.0;
     s1+=5.0;
    }
   } else {
    if(i77<-0.0037688734009861946){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<1.0025755167007446){
 if(i18<1.0101746320724487){
  if(i17<0.22784128785133362){
   if(i7<0.003552589565515518){
    if(i37<1.0765495300292969){
     s0+=26131.0;
     s1+=816.0;
    } else {
     s0+=60093.0;
     s1+=169.0;
    }
   } else {
    if(i4<0.9988906383514404){
     s0+=21658.0;
     s1+=762.0;
    } else {
     s0+=1488.0;
     s1+=2406.0;
    }
   }
  } else {
   if(i51<-2.3136381059885025e-06){
    if(i43<-7.678478141315281e-06){
     s0+=6.0;
     s1+=460.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=66.0;
   }
  }
 } else {
  if(i2<1.811981201171875e-05){
   if(i24<0.02770458348095417){
    if(i34<1.0952479839324951){
     s1+=10.0;
    } else {
     s0+=534.0;
     s1+=14.0;
    }
   } else {
    if(i51<-2.3976119791768724e-06){
     s0+=19.0;
     s1+=104.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i34<1.0974905490875244){
    s1+=479.0;
   } else {
    if(i35<0.018788304179906845){
     s0+=332.0;
     s1+=55.0;
    } else {
     s0+=67.0;
     s1+=342.0;
    }
   }
  }
 }
} else {
 if(i15<0.1714300513267517){
  if(i29<0.0005611777305603027){
   if(i46<1.0014171600341797){
    if(i22<0.009613292291760445){
     s0+=194.0;
     s1+=3298.0;
    } else {
     s0+=133.0;
     s1+=95.0;
    }
   } else {
    if(i48<-5.476468686538283e-06){
     s0+=5.0;
     s1+=131.0;
    } else {
     s0+=562.0;
     s1+=130.0;
    }
   }
  } else {
   if(i3<1.0059798955917358){
    if(i64<0.0011839004000648856){
     s0+=3695.0;
     s1+=166.0;
    } else {
     s0+=644.0;
     s1+=551.0;
    }
   } else {
    if(i38<1.1203497648239136){
     s0+=499.0;
     s1+=232.0;
    } else {
     s0+=63.0;
     s1+=1043.0;
    }
   }
  }
 } else {
  if(i22<0.0023487303406000137){
   if(i42<0.0008950990159064531){
    s1+=13.0;
   } else {
    s0+=200.0;
   }
  } else {
   if(i20<-0.001526951789855957){
    if(i43<-3.208672205801122e-05){
     s0+=8.0;
     s1+=646.0;
    } else {
     s0+=72.0;
     s1+=43.0;
    }
   } else {
    if(i33<0.002681269310414791){
     s0+=2.0;
     s1+=60.0;
    } else {
     s0+=8.0;
     s1+=12324.0;
    }
   }
  }
 }
}
if(i15<0.19007965922355652){
 if(i8<1.0123647451400757){
  if(i2<6.872415542602539e-05){
   if(i16<0.0017241904279217124){
    if(i33<0.0003140197368338704){
     s0+=18907.0;
     s1+=635.0;
    } else {
     s0+=71698.0;
     s1+=299.0;
    }
   } else {
    if(i3<1.0002001523971558){
     s0+=14223.0;
     s1+=505.0;
    } else {
     s0+=8194.0;
     s1+=3967.0;
    }
   }
  } else {
   if(i49<-6.267448952712584e-06){
    s0+=363.0;
   } else {
    if(i2<9.316205978393555e-05){
     s0+=364.0;
     s1+=462.0;
    } else {
     s0+=68.0;
     s1+=1502.0;
    }
   }
  }
 } else {
  if(i50<1.1861324310302734e-05){
   if(i32<1.6076141595840454){
    if(i2<1.33514404296875e-05){
     s0+=265.0;
     s1+=70.0;
    } else {
     s0+=247.0;
     s1+=3298.0;
    }
   } else {
    if(i24<0.03741246461868286){
     s0+=178.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i10<1.0217021703720093){
    if(i36<0.0020260359160602093){
     s0+=1098.0;
     s1+=12.0;
    } else {
     s0+=108.0;
     s1+=120.0;
    }
   } else {
    if(i0<-6.197723268996924e-05){
     s0+=6.0;
     s1+=358.0;
    } else {
     s0+=40.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i22<0.0025787216145545244){
  if(i35<0.022056419402360916){
   if(i20<0.002129077911376953){
    if(i44<0.24426180124282837){
     s0+=522.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<-3.4013741242233664e-05){
    if(i33<0.004125664941966534){
     s0+=1.0;
     s1+=45.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i41<1.1163694858551025){
     s0+=45.0;
     s1+=4.0;
    } else {
     s0+=107.0;
    }
   }
  }
 } else {
  if(i7<0.004953702911734581){
   if(i65<8.801875992503483e-07){
    if(i43<-1.5761623217258602e-05){
     s0+=1.0;
     s1+=255.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i70<-0.0034950696863234043){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=183.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<-0.008419424295425415){
    if(i24<0.08961881697177887){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i43<-6.627342372667044e-06){
     s0+=37.0;
     s1+=12607.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i17<0.20413538813591003){
  if(i10<1.0131568908691406){
   if(i56<1.0010870695114136){
    if(i37<1.0902695655822754){
     s0+=31568.0;
     s1+=1571.0;
    } else {
     s0+=47317.0;
     s1+=251.0;
    }
   } else {
    if(i7<0.0037707583978772163){
     s0+=23487.0;
     s1+=456.0;
    } else {
     s0+=11151.0;
     s1+=3202.0;
    }
   }
  } else {
   if(i7<0.004964333958923817){
    if(i0<-8.215631532948464e-05){
     s0+=12.0;
     s1+=34.0;
    } else {
     s0+=625.0;
     s1+=41.0;
    }
   } else {
    if(i50<1.4185905456542969e-05){
     s0+=46.0;
     s1+=735.0;
    } else {
     s0+=44.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i51<-3.554522436388652e-06){
   if(i28<0.0024528815411031246){
    if(i43<-2.1614125216729008e-05){
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i0<-3.0446812161244452e-05){
     s0+=11.0;
     s1+=1457.0;
    } else {
     s0+=45.0;
     s1+=133.0;
    }
   }
  } else {
   if(i16<0.0026656477712094784){
    s0+=224.0;
   } else {
    if(i43<-6.289904376899358e-06){
     s1+=9.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i53<0.03677818179130554){
  if(i57<0.0006290547316893935){
   if(i36<0.0001669393095653504){
    s0+=71.0;
   } else {
    if(i48<1.4712964912177995e-05){
     s0+=19.0;
     s1+=2285.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i22<0.0023797499015927315){
    if(i26<1.1180615425109863){
     s1+=22.0;
    } else {
     s0+=1724.0;
    }
   } else {
    if(i27<0.015472203493118286){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=1143.0;
    }
   }
  }
 } else {
  if(i30<1.0258264541625977){
   if(i3<1.0072059631347656){
    s0+=30.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i31<0.0040541281923651695){
    if(i22<0.0022388375364243984){
     s0+=89.0;
     s1+=472.0;
    } else {
     s0+=76.0;
     s1+=12413.0;
    }
   } else {
    s0+=22.0;
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i8<1.0111522674560547){
  if(i44<0.2062883973121643){
   if(i35<0.013448547571897507){
    if(i16<0.0019082895014435053){
     s0+=68313.0;
     s1+=480.0;
    } else {
     s0+=4140.0;
     s1+=491.0;
    }
   } else {
    if(i22<0.0009482692694291472){
     s0+=7494.0;
     s1+=2137.0;
    } else {
     s0+=29440.0;
     s1+=1256.0;
    }
   }
  } else {
   if(i35<0.10441271215677261){
    if(i16<0.0024731908924877644){
     s0+=106.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=49.0;
    }
   } else {
    if(i24<0.03275487571954727){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i21<0.9998074769973755){
   if(i36<0.011481710709631443){
    if(i38<1.0880107879638672){
     s0+=2.0;
     s1+=48.0;
    } else {
     s0+=500.0;
     s1+=74.0;
    }
   } else {
    s1+=92.0;
   }
  } else {
   if(i24<0.011029656045138836){
    if(i36<0.0007298501441255212){
     s1+=60.0;
    } else {
     s0+=272.0;
     s1+=12.0;
    }
   } else {
    if(i43<-1.0848656529560685e-05){
     s0+=36.0;
     s1+=749.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<0.0040647853165864944){
  if(i23<0.00020205974578857422){
   if(i50<6.5267086029052734e-06){
    if(i2<7.194280624389648e-05){
     s0+=200.0;
     s1+=20.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i48<-1.1513380741234869e-05){
     s0+=56.0;
     s1+=33.0;
    } else {
     s0+=3534.0;
     s1+=27.0;
    }
   }
  } else {
   if(i57<0.0005360043724067509){
    if(i3<0.9991037249565125){
     s0+=2.0;
    } else {
     s1+=609.0;
    }
   } else {
    if(i4<1.011157512664795){
     s0+=646.0;
     s1+=60.0;
    } else {
     s1+=267.0;
    }
   }
  }
 } else {
  if(i63<1.0742466449737549){
   if(i2<2.491474151611328e-05){
    if(i74<0.011072499677538872){
     s0+=627.0;
     s1+=101.0;
    } else {
     s0+=244.0;
     s1+=259.0;
    }
   } else {
    if(i14<0.0007051313878037035){
     s0+=357.0;
     s1+=5029.0;
    } else {
     s0+=195.0;
    }
   }
  } else {
   if(i46<0.9985709190368652){
    s0+=93.0;
   } else {
    if(i20<-0.004680246114730835){
     s0+=37.0;
     s1+=8.0;
    } else {
     s0+=143.0;
     s1+=12148.0;
    }
   }
  }
 }
}
if(i18<1.0148847103118896){
 if(i15<0.19998326897621155){
  if(i64<0.001746905967593193){
   if(i6<0.00032407045364379883){
    if(i37<1.0867384672164917){
     s0+=33697.0;
     s1+=1969.0;
    } else {
     s0+=65321.0;
     s1+=425.0;
    }
   } else {
    if(i37<1.0904107093811035){
     s0+=2710.0;
     s1+=2072.0;
    } else {
     s0+=7138.0;
     s1+=1085.0;
    }
   }
  } else {
   if(i43<-5.1839706429746e-05){
    if(i15<0.041029900312423706){
     s0+=61.0;
     s1+=64.0;
    } else {
     s0+=29.0;
     s1+=650.0;
    }
   } else {
    if(i17<0.09868040680885315){
     s0+=5854.0;
     s1+=905.0;
    } else {
     s0+=457.0;
     s1+=965.0;
    }
   }
  }
 } else {
  if(i7<0.007112686522305012){
   if(i71<0.15325963497161865){
    if(i2<8.285045623779297e-06){
     s0+=20.0;
     s1+=7.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i29<0.00010335445404052734){
     s0+=261.0;
    } else {
     s0+=171.0;
     s1+=42.0;
    }
   }
  } else {
   if(i26<1.1723814010620117){
    s0+=10.0;
   } else {
    if(i27<0.20744594931602478){
     s0+=3.0;
     s1+=149.0;
    } else {
     s1+=2649.0;
    }
   }
  }
 }
} else {
 if(i7<0.004342175554484129){
  if(i19<1.0141017436981201){
   if(i36<0.0007837720913812518){
    s1+=168.0;
   } else {
    if(i13<1.0282704830169678){
     s0+=604.0;
     s1+=9.0;
    } else {
     s0+=155.0;
     s1+=28.0;
    }
   }
  } else {
   if(i4<1.010741949081421){
    s0+=2.0;
   } else {
    s1+=467.0;
   }
  }
 } else {
  if(i51<-2.4553223738621455e-06){
   if(i20<-0.003374725580215454){
    s0+=8.0;
   } else {
    if(i49<-8.000715752132237e-06){
     s0+=12.0;
    } else {
     s0+=30.0;
     s1+=12599.0;
    }
   }
  } else {
   s0+=33.0;
  }
 }
}
if(i4<1.0038504600524902){
 if(i24<0.062285445630550385){
  if(i9<1.0181578397750854){
   if(i58<0.00022682022245135158){
    if(i24<0.007804326247423887){
     s0+=69227.0;
     s1+=302.0;
    } else {
     s0+=19112.0;
     s1+=1738.0;
    }
   } else {
    if(i16<0.001262003555893898){
     s0+=8392.0;
     s1+=156.0;
    } else {
     s0+=14341.0;
     s1+=2320.0;
    }
   }
  } else {
   if(i7<0.0056574661284685135){
    if(i36<0.004775984212756157){
     s0+=445.0;
     s1+=83.0;
    } else {
     s0+=371.0;
    }
   } else {
    if(i56<0.9995872974395752){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=788.0;
    }
   }
  }
 } else {
  if(i43<-1.9491817511152476e-05){
   if(i55<0.006785511039197445){
    if(i38<1.2708206176757812){
     s0+=22.0;
     s1+=42.0;
    } else {
     s0+=54.0;
     s1+=10.0;
    }
   } else {
    if(i29<-0.0008040368556976318){
     s0+=4.0;
    } else {
     s0+=12.0;
     s1+=1062.0;
    }
   }
  } else {
   if(i73<0.0010963380336761475){
    if(i30<1.0560216903686523){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i19<0.9758906364440918){
     s0+=317.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i8<1.017411470413208){
  if(i36<0.001952633960172534){
   if(i28<0.0011824665125459433){
    if(i29<0.0005320906639099121){
     s0+=8.0;
     s1+=1554.0;
    } else {
     s0+=635.0;
    }
   } else {
    if(i23<0.0004684925079345703){
     s0+=3220.0;
     s1+=2.0;
    } else {
     s0+=46.0;
     s1+=74.0;
    }
   }
  } else {
   if(i34<1.1401290893554688){
    s0+=17.0;
   } else {
    if(i15<0.09610334038734436){
     s0+=116.0;
     s1+=471.0;
    } else {
     s0+=35.0;
     s1+=2859.0;
    }
   }
  }
 } else {
  if(i37<1.1599657535552979){
   if(i34<1.1180615425109863){
    if(i0<-0.00017461128300055861){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=1059.0;
    }
   } else {
    if(i34<1.1767785549163818){
     s0+=122.0;
    } else {
     s0+=35.0;
     s1+=405.0;
    }
   }
  } else {
   if(i36<0.0019399675074964762){
    if(i63<1.0629220008850098){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i15<0.14620175957679749){
     s0+=8.0;
     s1+=507.0;
    } else {
     s0+=2.0;
     s1+=10774.0;
    }
   }
  }
 }
}
if(i21<1.005319595336914){
 if(i25<1.0217695236206055){
  if(i17<0.21610847115516663){
   if(i16<0.001728369970805943){
    if(i32<1.0776758193969727){
     s0+=23185.0;
     s1+=737.0;
    } else {
     s0+=67221.0;
     s1+=249.0;
    }
   } else {
    if(i34<1.1164028644561768){
     s0+=3219.0;
     s1+=2804.0;
    } else {
     s0+=18501.0;
     s1+=1553.0;
    }
   }
  } else {
   if(i16<0.0024795345962047577){
    if(i4<1.006103277206421){
     s0+=67.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i55<0.0014470700407400727){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=490.0;
    }
   }
  }
 } else {
  if(i39<-0.0002725035883486271){
   if(i5<8.64267349243164e-06){
    if(i24<0.035037603229284286){
     s0+=453.0;
     s1+=63.0;
    } else {
     s0+=24.0;
     s1+=185.0;
    }
   } else {
    if(i7<0.004294254817068577){
     s0+=168.0;
     s1+=46.0;
    } else {
     s0+=49.0;
     s1+=2333.0;
    }
   }
  } else {
   if(i0<-4.236983659211546e-05){
    if(i52<0.04199199378490448){
     s0+=97.0;
     s1+=31.0;
    } else {
     s0+=2.0;
     s1+=56.0;
    }
   } else {
    if(i7<0.007461216300725937){
     s0+=352.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i24<0.009662402793765068){
  if(i1<0.0018059611320495605){
   if(i28<0.0011646465864032507){
    if(i37<1.0499491691589355){
     s0+=134.0;
    } else {
     s1+=542.0;
    }
   } else {
    if(i10<1.0223455429077148){
     s0+=2330.0;
     s1+=27.0;
    } else {
     s0+=9.0;
     s1+=21.0;
    }
   }
  } else {
   if(i46<0.9998780488967896){
    s0+=263.0;
   } else {
    if(i1<0.0018442273139953613){
     s0+=10.0;
     s1+=44.0;
    } else {
     s0+=2.0;
     s1+=1485.0;
    }
   }
  }
 } else {
  if(i30<1.055739164352417){
   if(i37<1.2861123085021973){
    if(i1<0.0006354451179504395){
     s0+=76.0;
     s1+=30.0;
    } else {
     s1+=117.0;
    }
   } else {
    if(i2<0.00013911724090576172){
     s0+=228.0;
     s1+=13.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i49<-6.284908522502519e-06){
    if(i45<1.0059272050857544){
     s0+=68.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i18<0.9631115198135376){
     s0+=141.0;
     s1+=291.0;
    } else {
     s0+=238.0;
     s1+=12794.0;
    }
   }
  }
 }
}
if(i4<1.0037140846252441){
 if(i57<0.009524419903755188){
  if(i25<1.0215541124343872){
   if(i5<1.3530254364013672e-05){
    if(i7<0.0028421697206795216){
     s0+=75392.0;
     s1+=577.0;
    } else {
     s0+=28431.0;
     s1+=2313.0;
    }
   } else {
    if(i7<0.004162591882050037){
     s0+=4369.0;
     s1+=77.0;
    } else {
     s0+=1892.0;
     s1+=1591.0;
    }
   }
  } else {
   if(i7<0.005624633748084307){
    if(i4<1.003006935119629){
     s0+=831.0;
     s1+=49.0;
    } else {
     s0+=40.0;
     s1+=44.0;
    }
   } else {
    if(i56<0.99896240234375){
     s0+=42.0;
     s1+=32.0;
    } else {
     s0+=53.0;
     s1+=726.0;
    }
   }
  }
 } else {
  if(i17<0.05244418978691101){
   if(i39<-0.0005053472705185413){
    if(i78<-0.0032097697257995605){
     s0+=5.0;
     s1+=31.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i16<0.007744797505438328){
     s0+=748.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   }
  } else {
   if(i22<0.0025634574703872204){
    if(i45<1.0013940334320068){
     s0+=117.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i39<0.00013077208132017404){
     s0+=26.0;
     s1+=1031.0;
    } else {
     s0+=26.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i28<0.002205150667577982){
  if(i50<9.119510650634766e-06){
   if(i26<1.116804838180542){
    if(i8<1.0090422630310059){
     s0+=74.0;
     s1+=413.0;
    } else {
     s0+=2.0;
     s1+=2059.0;
    }
   } else {
    if(i71<0.1388331651687622){
     s0+=464.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   }
  } else {
   if(i42<0.0010536673944443464){
    if(i29<0.0005309879779815674){
     s0+=4.0;
     s1+=260.0;
    } else {
     s0+=683.0;
    }
   } else {
    if(i33<0.0007632026681676507){
     s1+=11.0;
    } else {
     s0+=2803.0;
    }
   }
  }
 } else {
  if(i15<0.07186341285705566){
   if(i1<0.0008971095085144043){
    if(i55<0.0010234297951683402){
     s0+=123.0;
    } else {
     s0+=24.0;
     s1+=53.0;
    }
   } else {
    if(i74<0.007046819664537907){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=287.0;
    }
   }
  } else {
   if(i23<-0.00018870830535888672){
    if(i24<0.02955980785191059){
     s0+=47.0;
     s1+=30.0;
    } else {
     s0+=13.0;
     s1+=630.0;
    }
   } else {
    if(i5<1.5079975128173828e-05){
     s0+=7.0;
     s1+=94.0;
    } else {
     s0+=28.0;
     s1+=14167.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i16<0.0018174595898017287){
  if(i16<0.0013017554301768541){
   if(i19<0.9989427328109741){
    if(i38<1.023176908493042){
     s0+=2379.0;
     s1+=115.0;
    } else {
     s0+=29529.0;
     s1+=204.0;
    }
   } else {
    if(i0<-5.035016147303395e-05){
     s0+=476.0;
     s1+=40.0;
    } else {
     s0+=49854.0;
     s1+=55.0;
    }
   }
  } else {
   if(i28<0.0006341275293380022){
    if(i9<0.9980436563491821){
     s0+=402.0;
     s1+=452.0;
    } else {
     s0+=1526.0;
     s1+=154.0;
    }
   } else {
    if(i8<1.0227665901184082){
     s0+=8763.0;
     s1+=97.0;
    } else {
     s0+=15.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i2<-2.4616718292236328e-05){
   if(i28<0.0007070433348417282){
    if(i14<0.0002517990069463849){
     s0+=71.0;
     s1+=172.0;
    } else {
     s0+=94.0;
     s1+=19.0;
    }
   } else {
    if(i74<0.022829072549939156){
     s0+=17368.0;
     s1+=687.0;
    } else {
     s0+=338.0;
     s1+=207.0;
    }
   }
  } else {
   if(i35<0.009358924813568592){
    if(i45<1.00077223777771){
     s0+=1543.0;
     s1+=5.0;
    } else {
     s0+=424.0;
     s1+=308.0;
    }
   } else {
    if(i44<0.14762619137763977){
     s0+=1804.0;
     s1+=3647.0;
    } else {
     s0+=77.0;
     s1+=1666.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019506709650158882){
  if(i44<0.07113876938819885){
   if(i14<0.0002516373642720282){
    if(i42<0.0013007612433284521){
     s0+=1.0;
     s1+=1999.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=484.0;
   }
  } else {
   if(i29<0.00047531723976135254){
    if(i46<1.0009994506835938){
     s0+=24.0;
     s1+=257.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i23<0.001757502555847168){
     s0+=1338.0;
     s1+=4.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i4<1.003892183303833){
   if(i24<0.04148811846971512){
    if(i14<0.00041015027090907097){
     s0+=18.0;
     s1+=4.0;
    } else {
     s0+=67.0;
    }
   } else {
    if(i16<0.005510716699063778){
     s0+=1.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i49<-7.951259249239229e-06){
    s0+=3.0;
   } else {
    if(i20<-0.002297699451446533){
     s0+=41.0;
     s1+=274.0;
    } else {
     s0+=35.0;
     s1+=13641.0;
    }
   }
  }
 }
}
if(i7<0.007674953900277615){
 if(i12<1.0132427215576172){
  if(i5<1.5079975128173828e-05){
   if(i16<0.0014910971513018012){
    if(i42<0.00047280918806791306){
     s0+=27599.0;
     s1+=474.0;
    } else {
     s0+=55432.0;
     s1+=137.0;
    }
   } else {
    if(i36<0.0010602931724861264){
     s0+=2197.0;
     s1+=1717.0;
    } else {
     s0+=17524.0;
     s1+=580.0;
    }
   }
  } else {
   if(i28<0.0009929725201800466){
    if(i55<0.00016599238733761013){
     s0+=2208.0;
     s1+=296.0;
    } else {
     s0+=155.0;
     s1+=1536.0;
    }
   } else {
    if(i26<1.1935834884643555){
     s0+=4669.0;
     s1+=3.0;
    } else {
     s0+=1592.0;
     s1+=614.0;
    }
   }
  }
 } else {
  if(i20<0.0018781423568725586){
   if(i51<-1.18221141747199e-05){
    if(i35<0.03969041258096695){
     s0+=183.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i51<-4.862817149842158e-06){
     s1+=241.0;
    } else {
     s0+=27.0;
    }
   }
  } else {
   if(i29<0.0015819370746612549){
    if(i49<-7.584053491882514e-06){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=1900.0;
    }
   } else {
    if(i52<0.06833704560995102){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i15<0.07112124562263489){
  if(i1<-0.00010448694229125977){
   if(i75<-0.01175069808959961){
    if(i15<0.002882331609725952){
     s0+=50.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i4<0.9978271722793579){
     s0+=3609.0;
     s1+=30.0;
    } else {
     s0+=259.0;
     s1+=43.0;
    }
   }
  } else {
   if(i30<1.0429201126098633){
    if(i0<-3.927558645955287e-05){
     s0+=142.0;
     s1+=11.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i12<0.9923202991485596){
     s0+=123.0;
     s1+=222.0;
    } else {
     s0+=14.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i8<0.9567475318908691){
   if(i43<-3.830737841781229e-05){
    if(i63<0.8821123838424683){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=31.0;
     s1+=402.0;
    }
   } else {
    if(i26<1.5508465766906738){
     s0+=381.0;
     s1+=44.0;
    } else {
     s0+=21.0;
     s1+=80.0;
    }
   }
  } else {
   if(i6<-0.0008023381233215332){
    if(i27<0.3171539008617401){
     s0+=166.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i1<-0.0005078911781311035){
     s0+=124.0;
     s1+=306.0;
    } else {
     s0+=142.0;
     s1+=15251.0;
    }
   }
  }
 }
}
if(i15<0.18828943371772766){
 if(i12<1.0101730823516846){
  if(i53<0.041914552450180054){
   if(i7<0.003096496919170022){
    if(i32<1.0905030965805054){
     s0+=22948.0;
     s1+=604.0;
    } else {
     s0+=53660.0;
     s1+=72.0;
    }
   } else {
    if(i28<0.001014886423945427){
     s0+=2852.0;
     s1+=2301.0;
    } else {
     s0+=14362.0;
     s1+=251.0;
    }
   }
  } else {
   if(i12<0.9903785586357117){
    if(i24<0.06447255611419678){
     s0+=15928.0;
     s1+=798.0;
    } else {
     s0+=265.0;
     s1+=457.0;
    }
   } else {
    if(i0<-2.7990288799628615e-05){
     s0+=735.0;
     s1+=2130.0;
    } else {
     s0+=3016.0;
     s1+=401.0;
    }
   }
  }
 } else {
  if(i23<0.00029987096786499023){
   if(i28<0.0012264051474630833){
    if(i4<1.001483678817749){
     s0+=41.0;
    } else {
     s1+=1014.0;
    }
   } else {
    if(i32<1.1728172302246094){
     s0+=1267.0;
     s1+=33.0;
    } else {
     s0+=195.0;
     s1+=585.0;
    }
   }
  } else {
   if(i79<0.0805024802684784){
    if(i65<1.0406642104499042e-05){
     s0+=24.0;
     s1+=2507.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i33<0.0027146046049892902){
     s0+=9.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i26<1.194390058517456){
  if(i34<1.185621738433838){
   s0+=573.0;
  } else {
   if(i63<1.1061564683914185){
    s0+=5.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i7<0.004962383769452572){
   if(i4<1.0026240348815918){
    if(i73<-0.001076430082321167){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=381.0;
     s1+=17.0;
    }
   } else {
    if(i18<0.9963176250457764){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=250.0;
    }
   }
  } else {
   if(i43<-6.6572215473570395e-06){
    if(i5<1.4483928680419922e-05){
     s0+=23.0;
     s1+=513.0;
    } else {
     s0+=20.0;
     s1+=12556.0;
    }
   } else {
    s0+=21.0;
   }
  }
 }
}
if(i5<2.3424625396728516e-05){
 if(i8<1.0111159086227417){
  if(i31<0.0007333973189815879){
   if(i38<1.1354830265045166){
    if(i58<0.00016637177031952888){
     s0+=65047.0;
     s1+=136.0;
    } else {
     s0+=13190.0;
     s1+=317.0;
    }
   } else {
    if(i38<1.1355493068695068){
     s1+=89.0;
    } else {
     s0+=1883.0;
     s1+=16.0;
    }
   }
  } else {
   if(i2<-3.319978713989258e-05){
    if(i39<-0.0014289277605712414){
     s1+=51.0;
    } else {
     s0+=24247.0;
     s1+=793.0;
    }
   } else {
    if(i34<1.0512452125549316){
     s0+=1720.0;
    } else {
     s0+=3480.0;
     s1+=3161.0;
    }
   }
  }
 } else {
  if(i6<0.00030153989791870117){
   if(i7<0.00515198428183794){
    if(i51<-4.237629582348745e-06){
     s0+=135.0;
     s1+=26.0;
    } else {
     s0+=485.0;
     s1+=3.0;
    }
   } else {
    if(i35<0.01976122334599495){
     s0+=25.0;
     s1+=8.0;
    } else {
     s1+=207.0;
    }
   }
  } else {
   if(i7<0.003915592562407255){
    if(i58<5.317384784575552e-05){
     s0+=99.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=13.0;
    }
   } else {
    if(i14<0.0010737640550360084){
     s1+=734.0;
    } else {
     s0+=57.0;
    }
   }
  }
 }
} else {
 if(i13<1.020172357559204){
  if(i52<0.04098062217235565){
   if(i0<-4.2813728214241564e-05){
    if(i26<1.1180615425109863){
     s0+=35.0;
     s1+=1442.0;
    } else {
     s0+=1760.0;
     s1+=1020.0;
    }
   } else {
    if(i29<0.0004139840602874756){
     s0+=180.0;
     s1+=301.0;
    } else {
     s0+=3320.0;
     s1+=263.0;
    }
   }
  } else {
   if(i23<-0.0005399584770202637){
    if(i24<0.05765948444604874){
     s0+=364.0;
     s1+=105.0;
    } else {
     s0+=32.0;
     s1+=143.0;
    }
   } else {
    if(i7<0.006780317984521389){
     s0+=67.0;
     s1+=113.0;
    } else {
     s0+=54.0;
     s1+=2920.0;
    }
   }
  }
 } else {
  if(i38<1.1342540979385376){
   if(i49<-5.315579528542003e-06){
    s0+=97.0;
   } else {
    if(i2<4.458427429199219e-05){
     s0+=113.0;
     s1+=35.0;
    } else {
     s0+=117.0;
     s1+=1708.0;
    }
   }
  } else {
   if(i34<1.176405668258667){
    s0+=23.0;
   } else {
    if(i48<3.600750642362982e-05){
     s0+=1.0;
     s1+=10507.0;
    } else {
     s0+=35.0;
     s1+=166.0;
    }
   }
  }
 }
}
if(i0<-9.283353574573994e-05){
 if(i12<0.9737211465835571){
  if(i32<1.488520860671997){
   if(i18<0.9434192180633545){
    if(i30<1.2761867046356201){
     s0+=467.0;
     s1+=9.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i15<0.03317761421203613){
     s0+=64.0;
     s1+=17.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   }
  } else {
   if(i15<0.055303484201431274){
    if(i76<-0.14886102080345154){
     s0+=3.0;
     s1+=15.0;
    } else {
     s0+=107.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.9144327640533447){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i50<3.0219554901123047e-05){
   if(i69<6.093351657909807e-06){
    if(i15<0.033443450927734375){
     s0+=79.0;
     s1+=136.0;
    } else {
     s0+=101.0;
     s1+=15559.0;
    }
   } else {
    s0+=106.0;
   }
  } else {
   if(i66<0.24055853486061096){
    if(i59<-0.0069353822618722916){
     s1+=1.0;
    } else {
     s0+=109.0;
    }
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i7<0.003897737478837371){
  if(i19<1.00978422164917){
   if(i48<-8.899887689040042e-06){
    if(i38<1.0861084461212158){
     s0+=2.0;
     s1+=31.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i28<0.0006515397690236568){
     s0+=28899.0;
     s1+=971.0;
    } else {
     s0+=63880.0;
     s1+=281.0;
    }
   }
  } else {
   if(i14<0.00019110592256765813){
    if(i5<2.8967857360839844e-05){
     s0+=80.0;
    } else {
     s1+=415.0;
    }
   } else {
    if(i49<-1.6554456578887766e-06){
     s0+=816.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i21<0.9987147450447083){
   if(i4<0.9999207854270935){
    if(i27<0.2336043417453766){
     s0+=17986.0;
     s1+=352.0;
    } else {
     s0+=31.0;
     s1+=35.0;
    }
   } else {
    if(i51<-5.099312147649471e-06){
     s0+=18.0;
     s1+=156.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   }
  } else {
   if(i18<0.9823206663131714){
    if(i45<1.0036952495574951){
     s0+=2178.0;
     s1+=326.0;
    } else {
     s0+=165.0;
     s1+=265.0;
    }
   } else {
    if(i3<1.0000011920928955){
     s0+=469.0;
     s1+=69.0;
    } else {
     s0+=1012.0;
     s1+=5348.0;
    }
   }
  }
 }
}
if(i9<1.0181405544281006){
 if(i1<0.001193225383758545){
  if(i66<0.4918893575668335){
   if(i26<1.1162974834442139){
    if(i32<1.05497145652771){
     s0+=21076.0;
     s1+=132.0;
    } else {
     s0+=9232.0;
     s1+=3396.0;
    }
   } else {
    if(i55<0.002262216992676258){
     s0+=75457.0;
     s1+=620.0;
    } else {
     s0+=7542.0;
     s1+=1381.0;
    }
   }
  } else {
   if(i39<-0.0002682588528841734){
    if(i15<0.031742602586746216){
     s0+=51.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=777.0;
    }
   } else {
    if(i17<0.08403977751731873){
     s0+=707.0;
     s1+=16.0;
    } else {
     s0+=83.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i7<0.0034573329612612724){
   if(i26<1.1180615425109863){
    s1+=309.0;
   } else {
    if(i64<0.001151359174400568){
     s0+=723.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   }
  } else {
   if(i14<0.0009500724263489246){
    if(i18<0.9549258947372437){
     s0+=44.0;
     s1+=92.0;
    } else {
     s0+=28.0;
     s1+=3392.0;
    }
   } else {
    s0+=172.0;
   }
  }
 }
} else {
 if(i1<0.0002683401107788086){
  if(i7<0.006033006124198437){
   if(i48<1.112721292884089e-05){
    s0+=334.0;
   } else {
    if(i22<0.005161636974662542){
     s0+=135.0;
     s1+=46.0;
    } else {
     s0+=253.0;
    }
   }
  } else {
   if(i43<-6.142551683296915e-06){
    if(i29<0.001075148582458496){
     s0+=10.0;
     s1+=543.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=16.0;
   }
  }
 } else {
  if(i11<1.0230002403259277){
   if(i24<0.006059746257960796){
    if(i22<0.0010227856691926718){
     s1+=225.0;
    } else {
     s0+=437.0;
     s1+=39.0;
    }
   } else {
    if(i46<0.998523473739624){
     s0+=26.0;
    } else {
     s0+=116.0;
     s1+=1179.0;
    }
   }
  } else {
   if(i37<1.7041046619415283){
    if(i7<0.002926609478890896){
     s0+=68.0;
     s1+=160.0;
    } else {
     s0+=29.0;
     s1+=11759.0;
    }
   } else {
    s0+=15.0;
   }
  }
 }
}
if(i4<1.0037411451339722){
 if(i15<0.20764318108558655){
  if(i31<0.0007155060302466154){
   if(i31<0.0005212754476815462){
    if(i22<0.0019645888824015856){
     s0+=64089.0;
     s1+=62.0;
    } else {
     s0+=3111.0;
     s1+=73.0;
    }
   } else {
    if(i33<0.00026651594089344144){
     s0+=1240.0;
     s1+=259.0;
    } else {
     s0+=10870.0;
     s1+=159.0;
    }
   }
  } else {
   if(i33<0.0010799238225445151){
    if(i34<1.0512452125549316){
     s0+=2391.0;
    } else {
     s0+=1233.0;
     s1+=2761.0;
    }
   } else {
    if(i1<-0.00014165043830871582){
     s0+=26165.0;
     s1+=795.0;
    } else {
     s0+=2797.0;
     s1+=1262.0;
    }
   }
  }
 } else {
  if(i36<0.0031683961860835552){
   if(i51<-5.812637027702294e-06){
    if(i49<-1.9877468275808496e-06){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i80<-0.0008988380432128906){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=168.0;
    }
   }
  } else {
   if(i51<-2.9230411655589705e-06){
    if(i55<0.002617043908685446){
     s0+=34.0;
     s1+=42.0;
    } else {
     s0+=29.0;
     s1+=1047.0;
    }
   } else {
    if(i25<0.9928212761878967){
     s1+=1.0;
    } else {
     s0+=74.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019525650423020124){
  if(i34<1.116804838180542){
   if(i42<0.00016827821673359722){
    if(i34<1.067186713218689){
     s0+=641.0;
    } else {
     s1+=61.0;
    }
   } else {
    if(i69<-3.3944565984711517e-06){
     s0+=15.0;
    } else {
     s0+=94.0;
     s1+=2577.0;
    }
   }
  } else {
   if(i5<0.0001342296600341797){
    if(i8<1.0036113262176514){
     s0+=230.0;
     s1+=3.0;
    } else {
     s0+=3170.0;
    }
   } else {
    if(i17<0.22406601905822754){
     s0+=41.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i46<0.9973368644714355){
   s0+=11.0;
  } else {
   if(i4<1.0063886642456055){
    if(i44<0.09089997410774231){
     s0+=154.0;
     s1+=298.0;
    } else {
     s0+=23.0;
     s1+=1588.0;
    }
   } else {
    if(i7<0.005798612721264362){
     s0+=18.0;
     s1+=607.0;
    } else {
     s0+=5.0;
     s1+=12614.0;
    }
   }
  }
 }
}
if(i18<1.0149835348129272){
 if(i2<6.407499313354492e-05){
  if(i9<1.020301103591919){
   if(i35<0.17955443263053894){
    if(i16<0.00169994099996984){
     s0+=90307.0;
     s1+=977.0;
    } else {
     s0+=22654.0;
     s1+=4395.0;
    }
   } else {
    if(i2<-7.444620132446289e-05){
     s0+=256.0;
     s1+=30.0;
    } else {
     s0+=12.0;
     s1+=629.0;
    }
   }
  } else {
   if(i44<0.14410722255706787){
    if(i34<1.0905578136444092){
     s1+=126.0;
    } else {
     s0+=357.0;
     s1+=119.0;
    }
   } else {
    if(i52<0.04874468594789505){
     s0+=86.0;
     s1+=69.0;
    } else {
     s0+=25.0;
     s1+=668.0;
    }
   }
  }
 } else {
  if(i7<0.0036419518291950226){
   if(i28<0.0011664254125207663){
    if(i14<0.00024673662846907973){
     s1+=342.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i78<-0.005499213933944702){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=1323.0;
     s1+=12.0;
    }
   }
  } else {
   if(i46<0.9991074800491333){
    if(i17<0.36375024914741516){
     s0+=181.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i14<0.0007066903635859489){
     s0+=165.0;
     s1+=3711.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
} else {
 if(i6<0.0003109574317932129){
  if(i36<0.018377888947725296){
   if(i24<0.024510860443115234){
    s0+=299.0;
   } else {
    if(i0<-4.394228380988352e-05){
     s1+=40.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   s1+=89.0;
  }
 } else {
  if(i14<0.0007036929600872099){
   if(i7<0.002723000943660736){
    if(i20<0.0014657378196716309){
     s0+=143.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=261.0;
    }
   } else {
    if(i27<0.056358397006988525){
     s0+=16.0;
     s1+=112.0;
    } else {
     s0+=15.0;
     s1+=12830.0;
    }
   }
  } else {
   if(i27<0.42171841859817505){
    s0+=426.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i8<1.0146746635437012){
 if(i16<0.0017991573549807072){
  if(i1<0.0016481280326843262){
   if(i16<0.0012835743837058544){
    if(i37<1.1354830265045166){
     s0+=74398.0;
     s1+=254.0;
    } else {
     s0+=7543.0;
     s1+=163.0;
    }
   } else {
    if(i36<0.0005656360881403089){
     s0+=1926.0;
     s1+=582.0;
    } else {
     s0+=9208.0;
     s1+=109.0;
    }
   }
  } else {
   if(i60<0.000295102596282959){
    if(i30<1.0881435871124268){
     s1+=308.0;
    } else {
     s0+=8.0;
     s1+=33.0;
    }
   } else {
    if(i33<0.0008625009213574231){
     s1+=40.0;
    } else {
     s0+=45.0;
    }
   }
  }
 } else {
  if(i2<-2.282857894897461e-05){
   if(i17<0.20402288436889648){
    if(i30<1.1230299472808838){
     s0+=17232.0;
     s1+=610.0;
    } else {
     s0+=398.0;
     s1+=249.0;
    }
   } else {
    if(i33<0.005462161265313625){
     s0+=39.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=289.0;
    }
   }
  } else {
   if(i26<1.057431697845459){
    s0+=1741.0;
   } else {
    if(i49<-6.666760782536585e-06){
     s0+=392.0;
    } else {
     s0+=2478.0;
     s1+=7574.0;
    }
   }
  }
 }
} else {
 if(i12<1.0144755840301514){
  if(i15<0.1952316164970398){
   if(i37<1.0953161716461182){
    s1+=584.0;
   } else {
    if(i14<0.00035885715624317527){
     s0+=425.0;
     s1+=412.0;
    } else {
     s0+=546.0;
     s1+=12.0;
    }
   }
  } else {
   if(i22<0.0025721448473632336){
    if(i71<0.1689710021018982){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i2<-3.838539123535156e-05){
     s0+=18.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=1126.0;
    }
   }
  }
 } else {
  if(i14<0.0008060724940150976){
   if(i2<1.2189149856567383e-05){
    if(i1<0.00016885995864868164){
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i12<1.0157413482666016){
     s0+=3.0;
     s1+=372.0;
    } else {
     s1+=11572.0;
    }
   }
  } else {
   s0+=56.0;
  }
 }
}
if(i20<0.0013867020606994629){
 if(i30<1.1402404308319092){
  if(i13<1.0159780979156494){
   if(i16<0.001728216651827097){
    if(i41<1.0179111957550049){
     s0+=10638.0;
     s1+=472.0;
    } else {
     s0+=79716.0;
     s1+=532.0;
    }
   } else {
    if(i5<-1.1324882507324219e-06){
     s0+=14496.0;
     s1+=419.0;
    } else {
     s0+=7875.0;
     s1+=4729.0;
    }
   }
  } else {
   if(i32<1.0905578136444092){
    if(i43<-4.2248329918948e-06){
     s1+=504.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i10<1.0243768692016602){
     s0+=1221.0;
     s1+=516.0;
    } else {
     s0+=46.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i7<0.006343744695186615){
   if(i0<-6.812295760028064e-05){
    s1+=29.0;
   } else {
    if(i48<1.4002665011503268e-05){
     s0+=1046.0;
    } else {
     s0+=177.0;
     s1+=8.0;
    }
   }
  } else {
   if(i61<-0.007394850254058838){
    if(i32<1.4849917888641357){
     s0+=104.0;
     s1+=47.0;
    } else {
     s0+=3.0;
     s1+=91.0;
    }
   } else {
    if(i20<-0.00422745943069458){
     s0+=34.0;
     s1+=113.0;
    } else {
     s0+=34.0;
     s1+=3409.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i5<1.385807991027832e-05){
   if(i7<0.005098051857203245){
    if(i52<0.05494105815887451){
     s0+=198.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=89.0;
   }
  } else {
   if(i5<0.00026416778564453125){
    if(i51<-4.659911610360723e-06){
     s0+=6.0;
     s1+=13152.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  s0+=777.0;
 }
}
if(i6<0.0005875825881958008){
 if(i11<1.018571138381958){
  if(i27<0.23401862382888794){
   if(i6<0.00029009580612182617){
    if(i28<0.0010668099857866764){
     s0+=29659.0;
     s1+=2044.0;
    } else {
     s0+=72981.0;
     s1+=650.0;
    }
   } else {
    if(i10<1.0083844661712646){
     s0+=6157.0;
     s1+=1081.0;
    } else {
     s0+=465.0;
     s1+=389.0;
    }
   }
  } else {
   if(i40<7.824608474038541e-05){
    if(i51<-6.179134288686328e-06){
     s1+=3.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i67<0.06629395484924316){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i7<0.005058640614151955){
   if(i4<1.0031054019927979){
    if(i1<-0.0011610686779022217){
     s0+=29.0;
     s1+=13.0;
    } else {
     s0+=544.0;
     s1+=16.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i45<0.9967998266220093){
    s0+=4.0;
   } else {
    if(i15<0.056452274322509766){
     s0+=7.0;
    } else {
     s0+=13.0;
     s1+=774.0;
    }
   }
  }
 }
} else {
 if(i37<1.1714401245117188){
  if(i20<0.001287221908569336){
   if(i24<0.015279179438948631){
    if(i22<0.0009223886881954968){
     s0+=1390.0;
     s1+=500.0;
    } else {
     s0+=2880.0;
     s1+=59.0;
    }
   } else {
    if(i73<0.006554126739501953){
     s0+=135.0;
     s1+=756.0;
    } else {
     s0+=118.0;
     s1+=71.0;
    }
   }
  } else {
   if(i29<0.0005827546119689941){
    if(i31<0.0019142716191709042){
     s0+=1.0;
     s1+=2366.0;
    } else {
     s0+=82.0;
    }
   } else {
    if(i32<1.1578782796859741){
     s0+=798.0;
    } else {
     s1+=107.0;
    }
   }
  }
 } else {
  if(i1<6.002187728881836e-05){
   if(i17<0.08321040868759155){
    if(i74<0.03983090817928314){
     s0+=541.0;
     s1+=32.0;
    } else {
     s0+=29.0;
     s1+=74.0;
    }
   } else {
    if(i28<0.005482747219502926){
     s0+=66.0;
     s1+=9.0;
    } else {
     s0+=52.0;
     s1+=284.0;
    }
   }
  } else {
   if(i44<0.03653493523597717){
    if(i12<0.9789273142814636){
     s0+=150.0;
     s1+=54.0;
    } else {
     s0+=59.0;
     s1+=390.0;
    }
   } else {
    if(i28<0.0026169917546212673){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=178.0;
     s1+=14459.0;
    }
   }
  }
 }
}
if(i1<0.0009595155715942383){
 if(i16<0.0017997361719608307){
  if(i33<0.0005456607323139906){
   if(i16<0.0013736133696511388){
    if(i16<0.0008557968540117145){
     s0+=20874.0;
     s1+=56.0;
    } else {
     s0+=3204.0;
     s1+=267.0;
    }
   } else {
    if(i26<1.056142807006836){
     s0+=1217.0;
    } else {
     s0+=133.0;
     s1+=537.0;
    }
   }
  } else {
   if(i42<0.0020195457618683577){
    if(i0<-7.201758853625506e-05){
     s0+=48.0;
     s1+=12.0;
    } else {
     s0+=63356.0;
     s1+=118.0;
    }
   } else {
    if(i43<-1.4908779121469706e-05){
     s0+=45.0;
     s1+=137.0;
    } else {
     s0+=3733.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i30<1.1300873756408691){
   if(i26<1.1164028644561768){
    if(i32<1.0498223304748535){
     s0+=1940.0;
     s1+=19.0;
    } else {
     s0+=332.0;
     s1+=2893.0;
    }
   } else {
    if(i15<0.17632311582565308){
     s0+=18660.0;
     s1+=1122.0;
    } else {
     s0+=347.0;
     s1+=423.0;
    }
   }
  } else {
   if(i22<0.0020341442432254553){
    s0+=65.0;
   } else {
    if(i2<-2.9265880584716797e-05){
     s0+=375.0;
     s1+=396.0;
    } else {
     s0+=117.0;
     s1+=1967.0;
    }
   }
  }
 }
} else {
 if(i28<0.0024050595238804817){
  if(i36<0.0011884358245879412){
   if(i14<0.00027553722611628473){
    s1+=2143.0;
   } else {
    s0+=82.0;
   }
  } else {
   if(i14<0.0001457756443414837){
    if(i62<0.0016514240996912122){
     s1+=217.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i9<0.9911555051803589){
     s1+=2.0;
    } else {
     s0+=1887.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i30<1.0236399173736572){
   if(i23<-0.0008680224418640137){
    s1+=6.0;
   } else {
    s0+=14.0;
   }
  } else {
   if(i8<0.9386835098266602){
    if(i38<1.131474256515503){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=88.0;
    }
   } else {
    if(i20<-0.001599729061126709){
     s0+=34.0;
     s1+=332.0;
    } else {
     s0+=24.0;
     s1+=13544.0;
    }
   }
  }
 }
}
if(i8<1.0148831605911255){
 if(i15<0.20406284928321838){
  if(i0<-8.038375381147489e-05){
   if(i18<0.9476089477539062){
    if(i74<0.04993147775530815){
     s0+=956.0;
     s1+=68.0;
    } else {
     s0+=24.0;
     s1+=47.0;
    }
   } else {
    if(i3<1.0020711421966553){
     s0+=338.0;
     s1+=124.0;
    } else {
     s0+=340.0;
     s1+=2113.0;
    }
   }
  } else {
   if(i16<0.0017543456051498652){
    if(i21<1.0091569423675537){
     s0+=92198.0;
     s1+=1025.0;
    } else {
     s0+=134.0;
     s1+=221.0;
    }
   } else {
    if(i36<0.0010991666931658983){
     s0+=2595.0;
     s1+=2832.0;
    } else {
     s0+=18864.0;
     s1+=1787.0;
    }
   }
  }
 } else {
  if(i0<-4.315700789447874e-05){
   if(i42<0.0016993209719657898){
    if(i44<0.1708926260471344){
     s1+=1.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i7<0.004698175936937332){
     s0+=5.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=1771.0;
    }
   }
  } else {
   if(i16<0.0028231090400367975){
    if(i7<0.0004958542413078249){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=265.0;
    }
   } else {
    if(i19<0.9940494298934937){
     s0+=30.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=138.0;
    }
   }
  }
 }
} else {
 if(i7<0.003948473371565342){
  if(i40<-2.532307007641066e-05){
   if(i21<1.0094692707061768){
    if(i26<1.0986645221710205){
     s1+=27.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i10<1.0114156007766724){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=422.0;
    }
   }
  } else {
   if(i36<0.0006780808907933533){
    s1+=27.0;
   } else {
    if(i45<1.002511978149414){
     s0+=288.0;
     s1+=43.0;
    } else {
     s0+=579.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i46<0.9983373284339905){
   s0+=79.0;
  } else {
   if(i1<-2.3484230041503906e-05){
    if(i35<0.055217042565345764){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=108.0;
    }
   } else {
    if(i14<0.001054077409207821){
     s0+=11.0;
     s1+=13198.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i10<1.0135858058929443){
 if(i5<1.8298625946044922e-05){
  if(i16<0.0015694904141128063){
   if(i16<0.0011167796328663826){
    if(i58<0.00016586770652793348){
     s0+=63927.0;
     s1+=112.0;
    } else {
     s0+=10670.0;
     s1+=152.0;
    }
   } else {
    if(i2<-4.416704177856445e-05){
     s0+=6256.0;
     s1+=15.0;
    } else {
     s0+=4670.0;
     s1+=499.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i37<1.0440731048583984){
     s0+=1478.0;
     s1+=70.0;
    } else {
     s0+=657.0;
     s1+=2149.0;
    }
   } else {
    if(i41<1.1230299472808838){
     s0+=19949.0;
     s1+=604.0;
    } else {
     s0+=220.0;
     s1+=458.0;
    }
   }
  }
 } else {
  if(i7<0.00409046933054924){
   if(i12<1.015981912612915){
    if(i65<-7.026304047030862e-06){
     s0+=157.0;
     s1+=133.0;
    } else {
     s0+=5288.0;
     s1+=254.0;
    }
   } else {
    s1+=53.0;
   }
  } else {
   if(i1<1.33514404296875e-05){
    if(i55<0.012617044150829315){
     s0+=1192.0;
     s1+=256.0;
    } else {
     s0+=19.0;
     s1+=160.0;
    }
   } else {
    if(i49<-6.108598881837679e-06){
     s0+=183.0;
     s1+=3.0;
    } else {
     s0+=608.0;
     s1+=4893.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i2<1.5914440155029297e-05){
   if(i0<-4.048731716466136e-05){
    if(i23<9.423494338989258e-05){
     s0+=4.0;
     s1+=212.0;
    } else {
     s0+=49.0;
     s1+=16.0;
    }
   } else {
    if(i65<1.7287392211073893e-06){
     s0+=90.0;
     s1+=26.0;
    } else {
     s0+=218.0;
    }
   }
  } else {
   if(i1<0.000859677791595459){
    if(i31<0.0005165647016838193){
     s0+=123.0;
    } else {
     s0+=79.0;
     s1+=976.0;
    }
   } else {
    if(i56<1.0110883712768555){
     s0+=51.0;
     s1+=13340.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  s0+=589.0;
 }
}
if(i4<1.0038650035858154){
 if(i35<0.18404248356819153){
  if(i6<0.00029343366622924805){
   if(i31<0.0006622209912165999){
    if(i23<-5.3942203521728516e-05){
     s0+=21754.0;
     s1+=208.0;
    } else {
     s0+=51493.0;
     s1+=100.0;
    }
   } else {
    if(i34<1.0917820930480957){
     s0+=1808.0;
     s1+=1666.0;
    } else {
     s0+=28290.0;
     s1+=965.0;
    }
   }
  } else {
   if(i67<0.03876578435301781){
    if(i24<0.009071698412299156){
     s0+=5278.0;
     s1+=148.0;
    } else {
     s0+=927.0;
     s1+=910.0;
    }
   } else {
    if(i17<0.03315475583076477){
     s0+=980.0;
     s1+=110.0;
    } else {
     s0+=1393.0;
     s1+=1743.0;
    }
   }
  }
 } else {
  if(i20<-0.006669789552688599){
   if(i70<0.008286738768219948){
    if(i48<5.22320915479213e-05){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=213.0;
    }
   } else {
    if(i4<0.9827625751495361){
     s0+=1.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i30<1.1589043140411377){
    if(i39<4.2898638639599085e-05){
     s0+=1.0;
     s1+=54.0;
    } else {
     s0+=20.0;
     s1+=7.0;
    }
   } else {
    if(i10<0.880750298500061){
     s0+=3.0;
     s1+=2.0;
    } else {
     s1+=765.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007030675187706947){
  if(i22<0.0021488629281520844){
   if(i55<0.0009106336510740221){
    if(i43<-1.2869300007878337e-05){
     s0+=9.0;
     s1+=2540.0;
    } else {
     s0+=144.0;
    }
   } else {
    if(i65<-4.3853892748302314e-06){
     s0+=50.0;
     s1+=106.0;
    } else {
     s0+=1243.0;
    }
   }
  } else {
   if(i15<0.0711505115032196){
    if(i74<0.008998623117804527){
     s0+=195.0;
     s1+=13.0;
    } else {
     s0+=41.0;
     s1+=324.0;
    }
   } else {
    if(i4<1.0048527717590332){
     s0+=46.0;
     s1+=624.0;
    } else {
     s0+=39.0;
     s1+=14110.0;
    }
   }
  }
 } else {
  if(i38<1.2467933893203735){
   s0+=2506.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i10<1.0136241912841797){
 if(i4<1.0034444332122803){
  if(i7<0.014882569201290607){
   if(i53<0.03642124682664871){
    if(i16<0.0013709012418985367){
     s0+=72236.0;
     s1+=384.0;
    } else {
     s0+=15924.0;
     s1+=1704.0;
    }
   } else {
    if(i1<-0.0005108416080474854){
     s0+=17747.0;
     s1+=461.0;
    } else {
     s0+=3953.0;
     s1+=1878.0;
    }
   }
  } else {
   if(i61<-0.007354289293289185){
    if(i63<1.0473425388336182){
     s0+=841.0;
     s1+=127.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   } else {
    if(i1<-0.0030888915061950684){
     s0+=8.0;
    } else {
     s0+=24.0;
     s1+=970.0;
    }
   }
  }
 } else {
  if(i24<0.013529260642826557){
   if(i57<0.0006120846956036985){
    if(i29<0.000511467456817627){
     s0+=34.0;
     s1+=1092.0;
    } else {
     s0+=944.0;
     s1+=20.0;
    }
   } else {
    if(i37<1.1768064498901367){
     s0+=3303.0;
     s1+=84.0;
    } else {
     s0+=51.0;
     s1+=121.0;
    }
   }
  } else {
   if(i18<0.9566088318824768){
    if(i31<0.0013156791683286428){
     s0+=19.0;
    } else {
     s0+=23.0;
     s1+=123.0;
    }
   } else {
    if(i52<0.01371012069284916){
     s0+=29.0;
     s1+=108.0;
    } else {
     s0+=42.0;
     s1+=2667.0;
    }
   }
  }
 }
} else {
 if(i10<1.0192979574203491){
  if(i33<0.001180039020255208){
   if(i5<9.715557098388672e-06){
    if(i42<0.001336552551947534){
     s1+=1.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i3<1.0062077045440674){
     s0+=3.0;
     s1+=877.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i28<0.0023306761868298054){
    if(i32<1.0905578136444092){
     s1+=109.0;
    } else {
     s0+=698.0;
    }
   } else {
    if(i15<0.10860076546669006){
     s0+=167.0;
     s1+=49.0;
    } else {
     s0+=91.0;
     s1+=656.0;
    }
   }
  }
 } else {
  if(i43<-1.0678470971470233e-05){
   if(i1<-0.00039845705032348633){
    if(i31<0.0020194214303046465){
     s0+=94.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i40<0.00037388826604001224){
     s0+=106.0;
     s1+=12877.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i4<1.0040966272354126){
    s0+=124.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i7<0.007997903972864151){
 if(i1<0.0012020468711853027){
  if(i31<0.0007121620583347976){
   if(i43<-2.0480139937717468e-05){
    if(i15<0.13347572088241577){
     s0+=177.0;
     s1+=12.0;
    } else {
     s0+=27.0;
     s1+=70.0;
    }
   } else {
    if(i55<0.0020612222142517567){
     s0+=78122.0;
     s1+=391.0;
    } else {
     s0+=2505.0;
     s1+=109.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i14<0.00024952361127361655){
     s0+=684.0;
     s1+=3091.0;
    } else {
     s0+=3201.0;
     s1+=179.0;
    }
   } else {
    if(i3<1.0018879175186157){
     s0+=23188.0;
     s1+=253.0;
    } else {
     s0+=2796.0;
     s1+=774.0;
    }
   }
  }
 } else {
  if(i49<-8.29295277071651e-06){
   s0+=550.0;
  } else {
   if(i2<0.00011867284774780273){
    if(i7<0.0028471844270825386){
     s0+=475.0;
     s1+=5.0;
    } else {
     s0+=143.0;
     s1+=767.0;
    }
   } else {
    if(i78<0.010314404964447021){
     s0+=11.0;
     s1+=2139.0;
    } else {
     s0+=6.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i20<-0.0035651028156280518){
  if(i4<0.9983198046684265){
   if(i47<1.0112699270248413){
    if(i27<0.19178089499473572){
     s0+=3254.0;
     s1+=200.0;
    } else {
     s0+=5.0;
     s1+=68.0;
    }
   } else {
    if(i63<1.1083307266235352){
     s0+=39.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=56.0;
    }
   }
  } else {
   if(i59<-0.00029343704227358103){
    if(i18<0.9405516386032104){
     s0+=30.0;
     s1+=13.0;
    } else {
     s0+=46.0;
     s1+=225.0;
    }
   } else {
    if(i5<6.455183029174805e-05){
     s0+=200.0;
     s1+=49.0;
    } else {
     s0+=7.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i3<0.9966511130332947){
   if(i30<1.3065061569213867){
    s0+=640.0;
   } else {
    s1+=21.0;
   }
  } else {
   if(i18<0.963684618473053){
    if(i24<0.03471247851848602){
     s0+=130.0;
     s1+=15.0;
    } else {
     s0+=25.0;
     s1+=235.0;
    }
   } else {
    if(i31<0.004210424143821001){
     s0+=157.0;
     s1+=15592.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
}
if(i8<1.0146980285644531){
 if(i3<1.0025560855865479){
  if(i6<0.0002478957176208496){
   if(i42<0.04167747497558594){
    if(i34<1.0905578136444092){
     s0+=24133.0;
     s1+=1694.0;
    } else {
     s0+=77190.0;
     s1+=942.0;
    }
   } else {
    if(i58<0.004904120694845915){
     s1+=52.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i16<0.001876759110018611){
    if(i4<1.0006120204925537){
     s0+=136.0;
     s1+=32.0;
    } else {
     s0+=5877.0;
     s1+=40.0;
    }
   } else {
    if(i22<0.00024606729857623577){
     s0+=1395.0;
    } else {
     s0+=1572.0;
     s1+=1834.0;
    }
   }
  }
 } else {
  if(i58<0.00016674958169460297){
   if(i42<0.0009744564886204898){
    if(i26<1.067186713218689){
     s0+=727.0;
    } else {
     s0+=271.0;
     s1+=905.0;
    }
   } else {
    if(i53<0.06525857746601105){
     s0+=2721.0;
     s1+=33.0;
    } else {
     s0+=50.0;
     s1+=114.0;
    }
   }
  } else {
   if(i2<2.980232238769531e-07){
    if(i35<0.14890174567699432){
     s0+=959.0;
     s1+=279.0;
    } else {
     s0+=35.0;
     s1+=136.0;
    }
   } else {
    if(i52<0.0379592627286911){
     s0+=592.0;
     s1+=1085.0;
    } else {
     s0+=155.0;
     s1+=2925.0;
    }
   }
  }
 }
} else {
 if(i7<0.004032319411635399){
  if(i23<0.0002512931823730469){
   if(i36<0.0008184692123904824){
    s1+=43.0;
   } else {
    if(i40<4.178141170996241e-05){
     s0+=676.0;
    } else {
     s0+=205.0;
     s1+=44.0;
    }
   }
  } else {
   if(i21<1.0084333419799805){
    if(i26<1.0986645221710205){
     s1+=20.0;
    } else {
     s0+=104.0;
    }
   } else {
    if(i10<1.0122348070144653){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=445.0;
    }
   }
  }
 } else {
  if(i32<1.6811659336090088){
   if(i14<0.0010535359615460038){
    if(i2<3.2782554626464844e-07){
     s0+=28.0;
     s1+=128.0;
    } else {
     s0+=12.0;
     s1+=13122.0;
    }
   } else {
    s0+=80.0;
   }
  } else {
   s0+=34.0;
  }
 }
}
if(i11<1.01728355884552){
 if(i7<0.014098710380494595){
  if(i23<0.00021058320999145508){
   if(i29<0.0001023411750793457){
    if(i29<-2.9265880584716797e-05){
     s0+=54619.0;
     s1+=226.0;
    } else {
     s0+=26701.0;
     s1+=893.0;
    }
   } else {
    if(i22<0.0009228155249729753){
     s0+=4930.0;
     s1+=2652.0;
    } else {
     s0+=26947.0;
     s1+=1777.0;
    }
   }
  } else {
   if(i45<1.0011322498321533){
    if(i37<1.0881752967834473){
     s0+=19.0;
     s1+=23.0;
    } else {
     s0+=421.0;
    }
   } else {
    if(i49<-5.1500924200809095e-06){
     s0+=160.0;
    } else {
     s0+=148.0;
     s1+=1550.0;
    }
   }
  }
 } else {
  if(i48<4.4712745875585824e-05){
   if(i30<1.052932858467102){
    if(i16<0.00647442601621151){
     s0+=105.0;
     s1+=4.0;
    } else {
     s0+=34.0;
     s1+=45.0;
    }
   } else {
    if(i61<-0.0071783363819122314){
     s0+=44.0;
     s1+=173.0;
    } else {
     s0+=12.0;
     s1+=2251.0;
    }
   }
  } else {
   if(i59<-0.0010334656108170748){
    if(i41<1.0160472393035889){
     s0+=76.0;
     s1+=21.0;
    } else {
     s0+=16.0;
     s1+=397.0;
    }
   } else {
    if(i15<0.0952678918838501){
     s0+=790.0;
     s1+=76.0;
    } else {
     s0+=12.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i1<0.00023365020751953125){
  if(i28<0.006025540176779032){
   if(i15<0.10997959971427917){
    if(i7<0.006126162596046925){
     s0+=261.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.0009566022781655192){
     s0+=299.0;
     s1+=12.0;
    } else {
     s0+=131.0;
     s1+=161.0;
    }
   }
  } else {
   if(i9<1.0208563804626465){
    if(i15<0.10711708664894104){
     s0+=26.0;
    } else {
     s0+=5.0;
     s1+=15.0;
    }
   } else {
    if(i0<-1.6120604414027184e-05){
     s0+=8.0;
     s1+=229.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i24<0.006505604833364487){
   if(i4<1.0102672576904297){
    if(i26<1.1180615425109863){
     s1+=294.0;
    } else {
     s0+=544.0;
     s1+=41.0;
    }
   } else {
    s1+=402.0;
   }
  } else {
   if(i7<0.004996602423489094){
    if(i4<1.0095125436782837){
     s0+=139.0;
     s1+=96.0;
    } else {
     s0+=1.0;
     s1+=323.0;
    }
   } else {
    if(i31<0.004140906035900116){
     s0+=35.0;
     s1+=12591.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
}
if(i0<-9.239432984031737e-05){
 if(i17<0.018249988555908203){
  if(i12<0.9909601211547852){
   if(i74<0.05140172690153122){
    if(i45<1.0042463541030884){
     s0+=619.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   } else {
    if(i1<-0.0009999573230743408){
     s0+=21.0;
     s1+=7.0;
    } else {
     s0+=13.0;
     s1+=31.0;
    }
   }
  } else {
   if(i49<-1.0289189958712086e-05){
    s0+=4.0;
   } else {
    if(i20<-0.000997006893157959){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=52.0;
    }
   }
  }
 } else {
  if(i28<0.00242265104316175){
   if(i49<-4.420397544890875e-06){
    s0+=276.0;
   } else {
    if(i50<-8.672475814819336e-06){
     s0+=3.0;
    } else {
     s1+=739.0;
    }
   }
  } else {
   if(i41<1.0269558429718018){
    if(i5<6.246566772460938e-05){
     s0+=119.0;
     s1+=59.0;
    } else {
     s0+=2.0;
     s1+=98.0;
    }
   } else {
    if(i33<0.002445228397846222){
     s0+=2.0;
    } else {
     s0+=46.0;
     s1+=14932.0;
    }
   }
  }
 }
} else {
 if(i6<0.00039058923721313477){
  if(i33<0.0010441167978569865){
   if(i7<0.003112842794507742){
    if(i32<1.05497145652771){
     s0+=17029.0;
     s1+=115.0;
    } else {
     s0+=9531.0;
     s1+=519.0;
    }
   } else {
    if(i56<0.9998608827590942){
     s0+=3248.0;
     s1+=68.0;
    } else {
     s0+=253.0;
     s1+=1697.0;
    }
   }
  } else {
   if(i44<0.19309058785438538){
    if(i29<0.00010210275650024414){
     s0+=54371.0;
     s1+=131.0;
    } else {
     s0+=21100.0;
     s1+=741.0;
    }
   } else {
    if(i0<-3.875069523928687e-05){
     s0+=14.0;
     s1+=161.0;
    } else {
     s0+=282.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i29<0.0005105137825012207){
   if(i4<1.004065752029419){
    if(i16<0.00199848972260952){
     s0+=2250.0;
     s1+=115.0;
    } else {
     s0+=1287.0;
     s1+=1591.0;
    }
   } else {
    if(i31<0.0015486229676753283){
     s0+=55.0;
     s1+=2291.0;
    } else {
     s0+=16.0;
     s1+=9.0;
    }
   }
  } else {
   if(i38<1.1698036193847656){
    if(i7<0.005937022157013416){
     s0+=4904.0;
     s1+=22.0;
    } else {
     s0+=730.0;
     s1+=654.0;
    }
   } else {
    if(i4<1.0011699199676514){
     s0+=69.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=496.0;
    }
   }
  }
 }
}
if(i15<0.19490376114845276){
 if(i1<0.0009459257125854492){
  if(i3<1.0020554065704346){
   if(i8<1.0115224123001099){
    if(i22<0.0008854413172230124){
     s0+=31067.0;
     s1+=2886.0;
    } else {
     s0+=75401.0;
     s1+=584.0;
    }
   } else {
    if(i7<0.006305333226919174){
     s0+=422.0;
     s1+=57.0;
    } else {
     s0+=21.0;
     s1+=347.0;
    }
   }
  } else {
   if(i0<-4.237843677401543e-05){
    if(i41<1.090099573135376){
     s0+=1286.0;
     s1+=795.0;
    } else {
     s0+=136.0;
     s1+=767.0;
    }
   } else {
    if(i29<0.0005613565444946289){
     s0+=2553.0;
     s1+=550.0;
    } else {
     s0+=2966.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i24<0.007680768147110939){
   if(i22<0.0009800171246752143){
    if(i14<0.0005786987021565437){
     s1+=1453.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i28<0.0025687499437481165){
     s0+=1743.0;
    } else {
     s1+=240.0;
    }
   }
  } else {
   if(i8<1.0164992809295654){
    if(i7<0.004418918397277594){
     s0+=188.0;
     s1+=56.0;
    } else {
     s0+=147.0;
     s1+=1601.0;
    }
   } else {
    if(i23<-3.790855407714844e-05){
     s0+=4.0;
    } else {
     s0+=10.0;
     s1+=1865.0;
    }
   }
  }
 }
} else {
 if(i22<0.0025613768957555294){
  if(i4<1.0031558275222778){
   if(i64<0.0006000518333166838){
    if(i22<0.0020075703505426645){
     s0+=304.0;
    } else {
     s0+=79.0;
     s1+=6.0;
    }
   } else {
    if(i46<1.0007611513137817){
     s0+=40.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   }
  } else {
   if(i26<1.1843671798706055){
    s0+=60.0;
   } else {
    s1+=31.0;
   }
  }
 } else {
  if(i15<0.21305927634239197){
   if(i2<-2.1010637283325195e-05){
    if(i0<-5.795337347080931e-05){
     s1+=33.0;
    } else {
     s0+=137.0;
     s1+=8.0;
    }
   } else {
    if(i18<0.9758785963058472){
     s0+=8.0;
     s1+=71.0;
    } else {
     s0+=2.0;
     s1+=829.0;
    }
   }
  } else {
   if(i65<1.7618385754758492e-05){
    if(i37<1.1271042823791504){
     s0+=12.0;
    } else {
     s0+=52.0;
     s1+=11827.0;
    }
   } else {
    if(i66<0.14232872426509857){
     s0+=12.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i44<0.204878032207489){
  if(i26<1.1162974834442139){
   if(i10<1.0073168277740479){
    if(i16<0.0015987376682460308){
     s0+=26319.0;
     s1+=593.0;
    } else {
     s0+=2274.0;
     s1+=2017.0;
    }
   } else {
    if(i57<0.0007698819972574711){
     s0+=126.0;
     s1+=617.0;
    } else {
     s0+=117.0;
     s1+=26.0;
    }
   }
  } else {
   if(i10<1.0182234048843384){
    if(i37<1.1300508975982666){
     s0+=58169.0;
     s1+=27.0;
    } else {
     s0+=22474.0;
     s1+=1198.0;
    }
   } else {
    if(i16<0.0015874106902629137){
     s0+=109.0;
     s1+=3.0;
    } else {
     s0+=61.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i43<-8.016733772819862e-06){
   if(i35<0.023197554051876068){
    if(i72<0.005693018436431885){
     s0+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i44<0.22627761960029602){
     s0+=12.0;
     s1+=88.0;
    } else {
     s1+=537.0;
    }
   }
  } else {
   if(i38<1.0974891185760498){
    if(i73<-0.0034895241260528564){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=167.0;
   }
  }
 }
} else {
 if(i10<1.0164823532104492){
  if(i37<1.171312928199768){
   if(i42<0.0010153346229344606){
    if(i34<1.056142807006836){
     s0+=1297.0;
    } else {
     s0+=313.0;
     s1+=1629.0;
    }
   } else {
    if(i7<0.006642725318670273){
     s0+=3465.0;
     s1+=145.0;
    } else {
     s0+=194.0;
     s1+=463.0;
    }
   }
  } else {
   if(i12<0.9785866737365723){
    if(i21<1.0132631063461304){
     s0+=716.0;
     s1+=217.0;
    } else {
     s0+=17.0;
     s1+=146.0;
    }
   } else {
    if(i43<-3.892354288836941e-05){
     s0+=77.0;
     s1+=2685.0;
    } else {
     s0+=351.0;
     s1+=679.0;
    }
   }
  }
 } else {
  if(i49<-6.056478014215827e-06){
   if(i33<0.0061239516362547874){
    s0+=150.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i23<-0.0002783238887786865){
    if(i16<0.004864754155278206){
     s0+=83.0;
    } else {
     s1+=78.0;
    }
   } else {
    if(i8<1.018419861793518){
     s0+=106.0;
     s1+=1126.0;
    } else {
     s0+=33.0;
     s1+=11744.0;
    }
   }
  }
 }
}
if(i21<1.0046310424804688){
 if(i44<0.1980069875717163){
  if(i4<1.0039293766021729){
   if(i24<0.006739639677107334){
    if(i12<0.996273398399353){
     s0+=4149.0;
     s1+=296.0;
    } else {
     s0+=64833.0;
     s1+=284.0;
    }
   } else {
    if(i4<0.9983030557632446){
     s0+=36255.0;
     s1+=624.0;
    } else {
     s0+=6124.0;
     s1+=3925.0;
    }
   }
  } else {
   if(i61<0.0009331703186035156){
    if(i7<0.003952924627810717){
     s0+=595.0;
     s1+=4.0;
    } else {
     s0+=51.0;
     s1+=357.0;
    }
   } else {
    if(i14<0.0007004250073805451){
     s0+=40.0;
     s1+=1012.0;
    } else {
     s0+=38.0;
    }
   }
  }
 } else {
  if(i51<-3.18949309985328e-06){
   if(i17<0.23431715369224548){
    if(i75<0.007055997848510742){
     s0+=19.0;
     s1+=176.0;
    } else {
     s0+=49.0;
     s1+=22.0;
    }
   } else {
    if(i7<0.004451834596693516){
     s0+=6.0;
     s1+=6.0;
    } else {
     s1+=1214.0;
    }
   }
  } else {
   if(i0<-6.141104677226394e-05){
    if(i80<0.014434128999710083){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i65<1.8803399143507704e-05){
     s0+=189.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i7<0.0028471844270825386){
  if(i40<-2.4846762244123966e-05){
   if(i65<-5.976679858576972e-06){
    if(i5<0.00024563074111938477){
     s0+=17.0;
     s1+=373.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i38<1.0698928833007812){
     s1+=1.0;
    } else {
     s0+=89.0;
    }
   }
  } else {
   if(i2<0.00011867284774780273){
    if(i23<0.00022643804550170898){
     s0+=2422.0;
    } else {
     s0+=160.0;
     s1+=6.0;
    }
   } else {
    if(i50<1.6927719116210938e-05){
     s0+=5.0;
     s1+=51.0;
    } else {
     s0+=138.0;
    }
   }
  }
 } else {
  if(i2<1.1742115020751953e-05){
   if(i31<0.003150178585201502){
    if(i23<-0.0004521012306213379){
     s0+=395.0;
     s1+=34.0;
    } else {
     s0+=69.0;
     s1+=75.0;
    }
   } else {
    if(i27<0.017298132181167603){
     s0+=19.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=80.0;
    }
   }
  } else {
   if(i17<0.1596449315547943){
    if(i37<1.0905089378356934){
     s1+=1513.0;
    } else {
     s0+=901.0;
     s1+=2609.0;
    }
   } else {
    if(i38<1.0958997011184692){
     s0+=16.0;
     s1+=22.0;
    } else {
     s0+=23.0;
     s1+=11522.0;
    }
   }
  }
 }
}
if(i25<1.0213663578033447){
 if(i17<0.1875152289867401){
  if(i3<1.002625584602356){
   if(i16<0.0016738008707761765){
    if(i58<0.00018744147382676601){
     s0+=74825.0;
     s1+=313.0;
    } else {
     s0+=12986.0;
     s1+=523.0;
    }
   } else {
    if(i20<-0.0014011263847351074){
     s0+=15155.0;
     s1+=511.0;
    } else {
     s0+=6198.0;
     s1+=2745.0;
    }
   }
  } else {
   if(i80<-0.004502475261688232){
    if(i12<1.0130531787872314){
     s0+=1337.0;
     s1+=1788.0;
    } else {
     s0+=14.0;
     s1+=1083.0;
    }
   } else {
    if(i23<0.00018793344497680664){
     s0+=3384.0;
     s1+=830.0;
    } else {
     s0+=512.0;
     s1+=1008.0;
    }
   }
  }
 } else {
  if(i79<0.08329656720161438){
   if(i28<0.002483082003891468){
    s0+=23.0;
   } else {
    if(i36<0.0020838538184762){
     s0+=2.0;
    } else {
     s0+=17.0;
     s1+=1954.0;
    }
   }
  } else {
   if(i64<0.0009331437759101391){
    if(i24<0.03773566335439682){
     s0+=569.0;
     s1+=21.0;
    } else {
     s0+=17.0;
     s1+=23.0;
    }
   } else {
    if(i6<-3.457069396972656e-05){
     s0+=14.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i10<1.0193507671356201){
  if(i52<0.0450473353266716){
   if(i32<1.0905578136444092){
    if(i8<1.007439374923706){
     s0+=9.0;
    } else {
     s1+=403.0;
    }
   } else {
    if(i21<1.011418342590332){
     s0+=1139.0;
     s1+=265.0;
    } else {
     s1+=81.0;
    }
   }
  } else {
   if(i43<-8.587247066316195e-06){
    if(i24<0.02671530470252037){
     s0+=28.0;
     s1+=75.0;
    } else {
     s0+=21.0;
     s1+=1071.0;
    }
   } else {
    s0+=115.0;
   }
  }
 } else {
  if(i1<0.00022333860397338867){
   if(i43<-1.1102596545242704e-05){
    if(i37<1.1764509677886963){
     s0+=68.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=149.0;
    }
   } else {
    s0+=103.0;
   }
  } else {
   if(i40<0.0004478772752918303){
    if(i32<1.7041046619415283){
     s0+=52.0;
     s1+=11262.0;
    } else {
     s0+=16.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i10<1.0135951042175293){
 if(i58<0.0005019881064072251){
  if(i23<0.00017839670181274414){
   if(i5<1.6391277313232422e-05){
    if(i33<0.0010450986446812749){
     s0+=28380.0;
     s1+=2155.0;
    } else {
     s0+=66654.0;
     s1+=491.0;
    }
   } else {
    if(i24<0.009536448866128922){
     s0+=5471.0;
     s1+=331.0;
    } else {
     s0+=773.0;
     s1+=1132.0;
    }
   }
  } else {
   if(i14<0.00022244485444389284){
    if(i51<-4.913160410069395e-06){
     s0+=24.0;
     s1+=823.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i35<0.030098754912614822){
     s0+=1073.0;
     s1+=6.0;
    } else {
     s1+=51.0;
    }
   }
  }
 } else {
  if(i0<-0.00010462164209457114){
   if(i13<0.9106995463371277){
    if(i55<0.015577878803014755){
     s0+=409.0;
     s1+=58.0;
    } else {
     s0+=50.0;
     s1+=98.0;
    }
   } else {
    if(i18<0.9351774454116821){
     s0+=14.0;
     s1+=7.0;
    } else {
     s0+=61.0;
     s1+=2578.0;
    }
   }
  } else {
   if(i17<0.1601186990737915){
    if(i19<0.9949668049812317){
     s0+=10980.0;
     s1+=391.0;
    } else {
     s0+=1197.0;
     s1+=915.0;
    }
   } else {
    if(i30<1.1081805229187012){
     s0+=175.0;
     s1+=118.0;
    } else {
     s0+=75.0;
     s1+=482.0;
    }
   }
  }
 }
} else {
 if(i12<1.0144003629684448){
  if(i14<0.0006526452489197254){
   if(i16<0.0013986877165734768){
    if(i26<1.0905578136444092){
     s1+=60.0;
    } else {
     s0+=316.0;
     s1+=12.0;
    }
   } else {
    if(i56<1.004923701286316){
     s0+=108.0;
     s1+=2505.0;
    } else {
     s0+=158.0;
     s1+=222.0;
    }
   }
  } else {
   if(i28<0.00887999963015318){
    s0+=480.0;
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i20<0.0017139315605163574){
   if(i7<0.0032222424633800983){
    if(i36<0.000763639691285789){
     s1+=12.0;
    } else {
     s0+=75.0;
    }
   } else {
    s1+=950.0;
   }
  } else {
   s1+=10855.0;
  }
 }
}
if(i0<-9.269449219573289e-05){
 if(i61<-0.0076749324798583984){
  if(i35<0.18172672390937805){
   if(i75<-0.013553082942962646){
    if(i53<0.08792552351951599){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   } else {
    if(i17<0.11746224761009216){
     s0+=575.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=16.0;
    }
   }
  } else {
   if(i65<1.9704948499565944e-05){
    if(i23<-0.0005592703819274902){
     s0+=9.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i34<1.162848949432373){
   if(i46<0.9996532201766968){
    s0+=234.0;
   } else {
    if(i49<-4.890074251306942e-06){
     s0+=75.0;
    } else {
     s1+=768.0;
    }
   }
  } else {
   if(i30<1.0446207523345947){
    if(i45<1.003605842590332){
     s0+=67.0;
     s1+=1.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i68<0.8519027829170227){
     s0+=29.0;
     s1+=115.0;
    } else {
     s0+=76.0;
     s1+=14769.0;
    }
   }
  }
 }
} else {
 if(i2<6.276369094848633e-05){
  if(i17<0.204881489276886){
   if(i16<0.0016739985439926386){
    if(i31<0.0005906036240048707){
     s0+=73061.0;
     s1+=219.0;
    } else {
     s0+=17244.0;
     s1+=660.0;
    }
   } else {
    if(i33<0.001084749004803598){
     s0+=2523.0;
     s1+=2713.0;
    } else {
     s0+=20588.0;
     s1+=1564.0;
    }
   }
  } else {
   if(i31<0.0005204278277233243){
    if(i78<-0.0016554296016693115){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=139.0;
    }
   } else {
    if(i24<0.026833999902009964){
     s0+=80.0;
     s1+=90.0;
    } else {
     s0+=24.0;
     s1+=408.0;
    }
   }
  }
 } else {
  if(i7<0.002802265342324972){
   if(i33<0.0008118764963001013){
    if(i2<9.167194366455078e-05){
     s0+=90.0;
    } else {
     s1+=242.0;
    }
   } else {
    s0+=1376.0;
   }
  } else {
   if(i26<1.1180615425109863){
    if(i33<0.00019635772332549095){
     s0+=1.0;
    } else {
     s1+=1413.0;
    }
   } else {
    if(i30<1.1147270202636719){
     s0+=391.0;
     s1+=382.0;
    } else {
     s0+=62.0;
     s1+=653.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i7<0.007041035685688257){
  if(i16<0.0015658114571124315){
   if(i0<-6.623314402531832e-05){
    if(i6<0.00014537572860717773){
     s0+=96.0;
    } else {
     s0+=3.0;
     s1+=46.0;
    }
   } else {
    if(i58<0.00017947203014045954){
     s0+=74396.0;
     s1+=262.0;
    } else {
     s0+=12858.0;
     s1+=465.0;
    }
   }
  } else {
   if(i1<-0.0004690587520599365){
    if(i64<-0.0015943489270284772){
     s1+=17.0;
    } else {
     s0+=15676.0;
     s1+=321.0;
    }
   } else {
    if(i35<0.010234092362225056){
     s0+=3192.0;
     s1+=396.0;
    } else {
     s0+=1906.0;
     s1+=2432.0;
    }
   }
  }
 } else {
  if(i5<7.569789886474609e-06){
   if(i15<0.18415433168411255){
    if(i34<1.1165244579315186){
     s0+=202.0;
     s1+=77.0;
    } else {
     s0+=4244.0;
     s1+=158.0;
    }
   } else {
    if(i0<-3.6160687159281224e-05){
     s0+=4.0;
     s1+=294.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<-0.0003959536552429199){
    if(i27<0.14361265301704407){
     s0+=1254.0;
     s1+=141.0;
    } else {
     s0+=33.0;
     s1+=222.0;
    }
   } else {
    if(i41<1.0289748907089233){
     s0+=301.0;
     s1+=159.0;
    } else {
     s0+=230.0;
     s1+=2954.0;
    }
   }
  }
 }
} else {
 if(i34<1.176405668258667){
  if(i14<0.0002504393632989377){
   if(i50<5.1915645599365234e-05){
    s1+=2374.0;
   } else {
    s0+=10.0;
   }
  } else {
   s0+=2015.0;
  }
 } else {
  if(i13<0.9057977795600891){
   if(i16<0.00561100896447897){
    if(i31<0.001371075864881277){
     s0+=25.0;
    } else {
     s0+=5.0;
     s1+=15.0;
    }
   } else {
    if(i57<0.0018516846466809511){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=88.0;
    }
   }
  } else {
   if(i20<-0.004273772239685059){
    if(i38<1.1553059816360474){
     s0+=13.0;
     s1+=1.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i27<0.10282328724861145){
     s0+=32.0;
     s1+=522.0;
    } else {
     s0+=13.0;
     s1+=13358.0;
    }
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i16<0.0017125974409282207){
  if(i63<1.0178942680358887){
   if(i14<0.00013244985893834382){
    if(i63<1.0178353786468506){
     s0+=13974.0;
     s1+=20.0;
    } else {
     s0+=51.0;
     s1+=5.0;
    }
   } else {
    if(i10<0.9969214200973511){
     s0+=3048.0;
     s1+=478.0;
    } else {
     s0+=7263.0;
     s1+=139.0;
    }
   }
  } else {
   if(i13<1.014883041381836){
    if(i55<0.0019056977471336722){
     s0+=61732.0;
     s1+=192.0;
    } else {
     s0+=2222.0;
     s1+=75.0;
    }
   } else {
    if(i58<7.657668902538717e-05){
     s0+=720.0;
     s1+=23.0;
    } else {
     s0+=57.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i1<-0.0004717111587524414){
   if(i15<0.23129808902740479){
    if(i30<1.1230299472808838){
     s0+=17197.0;
     s1+=415.0;
    } else {
     s0+=382.0;
     s1+=172.0;
    }
   } else {
    if(i32<1.2295931577682495){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=174.0;
    }
   }
  } else {
   if(i46<0.9995846748352051){
    if(i30<1.1417558193206787){
     s0+=2649.0;
     s1+=20.0;
    } else {
     s1+=273.0;
    }
   } else {
    if(i32<1.0452228784561157){
     s0+=217.0;
    } else {
     s0+=735.0;
     s1+=3696.0;
    }
   }
  }
 }
} else {
 if(i8<1.016901969909668){
  if(i14<0.0004004817456007004){
   if(i21<1.006601095199585){
    if(i44<0.14109444618225098){
     s0+=1726.0;
     s1+=1251.0;
    } else {
     s0+=95.0;
     s1+=596.0;
    }
   } else {
    if(i15<0.0181959867477417){
     s0+=90.0;
     s1+=48.0;
    } else {
     s0+=97.0;
     s1+=3201.0;
    }
   }
  } else {
   if(i66<0.13081073760986328){
    if(i60<-0.0019799470901489258){
     s0+=102.0;
     s1+=90.0;
    } else {
     s0+=3223.0;
     s1+=9.0;
    }
   } else {
    if(i20<-0.004268348217010498){
     s0+=282.0;
     s1+=110.0;
    } else {
     s0+=98.0;
     s1+=776.0;
    }
   }
  }
 } else {
  if(i1<0.00012868642807006836){
   if(i34<1.269250750541687){
    if(i24<0.03923852741718292){
     s0+=133.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   } else {
    if(i59<-0.007565775886178017){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=47.0;
    }
   }
  } else {
   if(i33<0.002988237189128995){
    if(i49<-3.882923010678496e-06){
     s0+=153.0;
     s1+=1.0;
    } else {
     s0+=22.0;
     s1+=1144.0;
    }
   } else {
    if(i23<8.249282836914062e-05){
     s0+=29.0;
     s1+=791.0;
    } else {
     s0+=3.0;
     s1+=10742.0;
    }
   }
  }
 }
}
if(i30<1.1279573440551758){
 if(i3<1.0025758743286133){
  if(i8<1.0110831260681152){
   if(i62<0.0003778625396080315){
    if(i53<0.0126123558729887){
     s0+=30422.0;
     s1+=561.0;
    } else {
     s0+=15889.0;
     s1+=2234.0;
    }
   } else {
    if(i26<1.0905578136444092){
     s0+=790.0;
     s1+=235.0;
    } else {
     s0+=60514.0;
     s1+=699.0;
    }
   }
  } else {
   if(i57<0.0006916613783687353){
    if(i16<0.0017128635663539171){
     s0+=73.0;
    } else {
     s0+=19.0;
     s1+=613.0;
    }
   } else {
    if(i56<1.0013747215270996){
     s0+=367.0;
     s1+=13.0;
    } else {
     s0+=94.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i2<8.207559585571289e-05){
   if(i24<0.018585223704576492){
    if(i7<0.004130236804485321){
     s0+=3045.0;
     s1+=61.0;
    } else {
     s0+=783.0;
     s1+=538.0;
    }
   } else {
    if(i15<0.08717408776283264){
     s0+=568.0;
     s1+=210.0;
    } else {
     s0+=146.0;
     s1+=918.0;
    }
   }
  } else {
   if(i0<-7.46210862416774e-05){
    if(i49<-6.25552502242499e-06){
     s0+=212.0;
    } else {
     s0+=27.0;
     s1+=3614.0;
    }
   } else {
    if(i57<0.0007048556581139565){
     s0+=12.0;
     s1+=832.0;
    } else {
     s0+=757.0;
     s1+=353.0;
    }
   }
  }
 }
} else {
 if(i22<0.0025631526950746775){
  if(i12<1.014496922492981){
   if(i33<0.00197231094352901){
    s0+=1489.0;
   } else {
    if(i36<0.006026084069162607){
     s1+=65.0;
    } else {
     s0+=430.0;
    }
   }
  } else {
   s1+=30.0;
  }
 } else {
  if(i1<-0.00045183300971984863){
   if(i67<0.14820414781570435){
    if(i0<-7.081063085934147e-05){
     s0+=19.0;
     s1+=63.0;
    } else {
     s0+=508.0;
     s1+=12.0;
    }
   } else {
    if(i25<0.8608807325363159){
     s0+=40.0;
     s1+=15.0;
    } else {
     s0+=25.0;
     s1+=337.0;
    }
   }
  } else {
   if(i13<0.9105468988418579){
    if(i17<0.001078486442565918){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=23.0;
     s1+=115.0;
    }
   } else {
    if(i51<-2.5274339350289665e-06){
     s0+=106.0;
     s1+=12838.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i20<0.0012868046760559082){
 if(i17<0.2009427845478058){
  if(i7<0.006937926635146141){
   if(i28<0.000896381214261055){
    if(i10<1.0074796676635742){
     s0+=31820.0;
     s1+=2402.0;
    } else {
     s0+=247.0;
     s1+=655.0;
    }
   } else {
    if(i70<0.004072153940796852){
     s0+=75014.0;
     s1+=605.0;
    } else {
     s0+=1390.0;
     s1+=202.0;
    }
   }
  } else {
   if(i15<0.0659399926662445){
    if(i2<-1.7583370208740234e-05){
     s0+=4762.0;
     s1+=112.0;
    } else {
     s0+=433.0;
     s1+=384.0;
    }
   } else {
    if(i4<0.9973109364509583){
     s0+=1330.0;
     s1+=166.0;
    } else {
     s0+=200.0;
     s1+=2982.0;
    }
   }
  }
 } else {
  if(i51<-4.504263415583409e-06){
   if(i36<0.0020658597350120544){
    if(i59<-0.0015691625885665417){
     s1+=2.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i0<-2.944597326859366e-05){
     s0+=19.0;
     s1+=2947.0;
    } else {
     s0+=43.0;
     s1+=127.0;
    }
   }
  } else {
   if(i16<0.0027882694266736507){
    if(i51<-2.9654306672455277e-06){
     s0+=26.0;
     s1+=5.0;
    } else {
     s0+=206.0;
    }
   } else {
    s1+=26.0;
   }
  }
 }
} else {
 if(i45<1.0008375644683838){
  if(i38<1.2093826532363892){
   if(i26<1.105151891708374){
    s1+=13.0;
   } else {
    s0+=696.0;
   }
  } else {
   s1+=299.0;
  }
 } else {
  if(i49<-7.624917998327874e-06){
   s0+=180.0;
  } else {
   if(i34<1.1672043800354004){
    if(i28<0.0013081273064017296){
     s0+=5.0;
     s1+=2054.0;
    } else {
     s0+=426.0;
     s1+=92.0;
    }
   } else {
    s1+=10961.0;
   }
  }
 }
}
if(i8<1.0146334171295166){
 if(i35<0.1711186021566391){
  if(i40<-2.4684610252734274e-05){
   if(i49<-4.657505996874534e-06){
    if(i80<-0.0270460844039917){
     s1+=4.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i3<1.0024322271347046){
     s0+=16.0;
    } else {
     s0+=18.0;
     s1+=776.0;
    }
   }
  } else {
   if(i1<0.0009711384773254395){
    if(i7<0.003659273264929652){
     s0+=89597.0;
     s1+=1032.0;
    } else {
     s0+=24060.0;
     s1+=4674.0;
    }
   } else {
    if(i33<0.002280508168041706){
     s0+=1293.0;
     s1+=526.0;
    } else {
     s0+=115.0;
     s1+=1293.0;
    }
   }
  }
 } else {
  if(i12<0.9577608704566956){
   if(i72<-0.00021761655807495117){
    if(i48<7.379417365882546e-05){
     s0+=6.0;
     s1+=35.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i44<0.19141459465026855){
     s0+=325.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i37<1.1874911785125732){
    if(i16<0.00509670889005065){
     s0+=16.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i30<1.0989019870758057){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=1722.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i5<1.0251998901367188e-05){
   if(i29<-0.00030601024627685547){
    s1+=115.0;
   } else {
    if(i7<0.0051504336297512054){
     s0+=316.0;
     s1+=7.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i0<-3.615650348365307e-05){
    if(i0<-7.048703264445066e-05){
     s0+=39.0;
     s1+=12918.0;
    } else {
     s0+=106.0;
     s1+=852.0;
    }
   } else {
    if(i20<-0.0008121728897094727){
     s0+=91.0;
     s1+=8.0;
    } else {
     s0+=22.0;
     s1+=114.0;
    }
   }
  }
 } else {
  s0+=515.0;
 }
}
if(i3<1.0026168823242188){
 if(i16<0.0017301072366535664){
  if(i58<0.0001810534013202414){
   if(i26<1.0776758193969727){
    if(i52<0.01308455690741539){
     s0+=11633.0;
     s1+=117.0;
    } else {
     s0+=395.0;
     s1+=157.0;
    }
   } else {
    if(i11<1.014735221862793){
     s0+=62729.0;
     s1+=65.0;
    } else {
     s0+=790.0;
     s1+=34.0;
    }
   }
  } else {
   if(i1<-0.0006438195705413818){
    if(i12<0.9897735714912415){
     s0+=7424.0;
     s1+=1.0;
    } else {
     s0+=2817.0;
     s1+=31.0;
    }
   } else {
    if(i43<-1.2937394785694778e-05){
     s0+=68.0;
     s1+=153.0;
    } else {
     s0+=3604.0;
     s1+=387.0;
    }
   }
  }
 } else {
  if(i2<-3.212690353393555e-05){
   if(i7<0.01776529848575592){
    if(i27<0.2503660321235657){
     s0+=17121.0;
     s1+=427.0;
    } else {
     s0+=1.0;
     s1+=52.0;
    }
   } else {
    if(i30<1.0352978706359863){
     s0+=123.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=180.0;
    }
   }
  } else {
   if(i7<0.004013941623270512){
    if(i36<0.0001913103915285319){
     s0+=1311.0;
     s1+=2.0;
    } else {
     s0+=928.0;
     s1+=282.0;
    }
   } else {
    if(i56<0.9997628927230835){
     s0+=846.0;
     s1+=389.0;
    } else {
     s0+=484.0;
     s1+=3242.0;
    }
   }
  }
 }
} else {
 if(i26<1.1935834884643555){
  if(i14<0.00023077582591213286){
   if(i51<-4.805825483344961e-06){
    if(i26<1.1229777336120605){
     s1+=2308.0;
    } else {
     s0+=73.0;
    }
   } else {
    s0+=169.0;
   }
  } else {
   if(i8<1.0210926532745361){
    if(i14<0.00024174971622414887){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=3657.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i0<-6.773443601559848e-05){
   if(i15<0.0499798059463501){
    if(i40<0.00018618747708387673){
     s0+=5.0;
     s1+=94.0;
    } else {
     s0+=438.0;
     s1+=126.0;
    }
   } else {
    if(i8<0.9216663837432861){
     s0+=49.0;
     s1+=6.0;
    } else {
     s0+=91.0;
     s1+=15131.0;
    }
   }
  } else {
   if(i26<1.2026599645614624){
    if(i28<0.002169395796954632){
     s0+=2.0;
     s1+=35.0;
    } else {
     s1+=503.0;
    }
   } else {
    if(i27<0.17767733335494995){
     s0+=1417.0;
     s1+=447.0;
    } else {
     s0+=109.0;
     s1+=337.0;
    }
   }
  }
 }
}
if(i12<1.0102145671844482){
 if(i30<1.1402404308319092){
  if(i31<0.000720358919352293){
   if(i48<-9.693907486507669e-06){
    if(i69<-2.682133526832331e-06){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=153.0;
    }
   } else {
    if(i0<-6.433672388084233e-05){
     s0+=210.0;
     s1+=79.0;
    } else {
     s0+=79947.0;
     s1+=531.0;
    }
   }
  } else {
   if(i8<1.0069208145141602){
    if(i4<0.998303234577179){
     s0+=23533.0;
     s1+=635.0;
    } else {
     s0+=7983.0;
     s1+=3817.0;
    }
   } else {
    if(i55<0.0007151261670514941){
     s0+=567.0;
     s1+=1173.0;
    } else {
     s0+=1407.0;
     s1+=501.0;
    }
   }
  }
 } else {
  if(i31<0.0007355658453889191){
   if(i0<-7.116721826605499e-05){
    s1+=15.0;
   } else {
    s0+=919.0;
   }
  } else {
   if(i0<-4.380245809443295e-05){
    if(i17<0.007369309663772583){
     s0+=79.0;
     s1+=29.0;
    } else {
     s0+=22.0;
     s1+=2702.0;
    }
   } else {
    if(i24<0.032422859221696854){
     s0+=160.0;
     s1+=46.0;
    } else {
     s0+=37.0;
     s1+=208.0;
    }
   }
  }
 }
} else {
 if(i12<1.014286994934082){
  if(i34<1.1174830198287964){
   if(i14<0.0004754143301397562){
    if(i79<0.07650232315063477){
     s0+=1.0;
     s1+=1017.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=16.0;
   }
  } else {
   if(i24<0.015724798664450645){
    if(i59<-0.001553383655846119){
     s0+=110.0;
     s1+=84.0;
    } else {
     s0+=1361.0;
     s1+=26.0;
    }
   } else {
    if(i7<0.0019877657759934664){
     s0+=24.0;
    } else {
     s0+=5.0;
     s1+=785.0;
    }
   }
  }
 } else {
  if(i12<1.0163497924804688){
   if(i49<-5.0610860853339545e-06){
    s0+=97.0;
   } else {
    if(i43<-1.154469464381691e-05){
     s1+=723.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   s1+=11839.0;
  }
 }
}
if(i4<1.0037109851837158){
 if(i16<0.0017932639457285404){
  if(i16<0.0011010856833308935){
   if(i16<0.0007978256326168776){
    if(i9<1.018244981765747){
     s0+=63603.0;
     s1+=94.0;
    } else {
     s0+=278.0;
     s1+=16.0;
    }
   } else {
    if(i46<1.0002152919769287){
     s0+=6781.0;
     s1+=5.0;
    } else {
     s0+=4159.0;
     s1+=143.0;
    }
   }
  } else {
   if(i32<1.0905578136444092){
    if(i5<-1.7464160919189453e-05){
     s0+=1816.0;
    } else {
     s0+=1981.0;
     s1+=692.0;
    }
   } else {
    if(i43<-1.8781880498863757e-05){
     s0+=22.0;
     s1+=80.0;
    } else {
     s0+=11987.0;
     s1+=83.0;
    }
   }
  }
 } else {
  if(i4<0.9979711771011353){
   if(i17<0.20530074834823608){
    if(i16<0.008043055422604084){
     s0+=16257.0;
     s1+=405.0;
    } else {
     s0+=152.0;
     s1+=91.0;
    }
   } else {
    if(i7<0.0075509874150156975){
     s0+=36.0;
     s1+=6.0;
    } else {
     s1+=223.0;
    }
   }
  } else {
   if(i77<-0.0007726356852799654){
    if(i24<0.012347374111413956){
     s0+=1248.0;
     s1+=351.0;
    } else {
     s0+=884.0;
     s1+=3090.0;
    }
   } else {
    if(i24<0.00921955332159996){
     s0+=2204.0;
     s1+=91.0;
    } else {
     s0+=633.0;
     s1+=1166.0;
    }
   }
  }
 }
} else {
 if(i24<0.0077140736393630505){
  if(i14<0.00026261043967679143){
   if(i23<0.00015813112258911133){
    if(i37<1.0944428443908691){
     s0+=2.0;
     s1+=115.0;
    } else {
     s0+=190.0;
     s1+=40.0;
    }
   } else {
    if(i2<5.328655242919922e-05){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=13.0;
     s1+=1841.0;
    }
   }
  } else {
   if(i12<1.0189342498779297){
    if(i60<-0.0028742849826812744){
     s1+=5.0;
    } else {
     s0+=3702.0;
    }
   } else {
    s1+=37.0;
   }
  }
 } else {
  if(i26<1.1843671798706055){
   if(i42<0.0010133105097338557){
    if(i10<1.002964735031128){
     s0+=2.0;
    } else {
     s1+=1149.0;
    }
   } else {
    if(i22<0.0010295899119228125){
     s1+=29.0;
    } else {
     s0+=438.0;
    }
   }
  } else {
   if(i33<0.0018521469319239259){
    s0+=37.0;
   } else {
    if(i0<-7.375710265478119e-05){
     s0+=74.0;
     s1+=13599.0;
    } else {
     s0+=120.0;
     s1+=854.0;
    }
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i38<1.1828725337982178){
  if(i58<-0.00012926023919135332){
   if(i26<1.1172668933868408){
    if(i29<6.097555160522461e-05){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=330.0;
    }
   } else {
    if(i56<1.001233458518982){
     s0+=355.0;
    } else {
     s0+=57.0;
     s1+=45.0;
    }
   }
  } else {
   if(i26<1.1162974834442139){
    if(i16<0.0017270202515646815){
     s0+=27359.0;
     s1+=753.0;
    } else {
     s0+=2524.0;
     s1+=2713.0;
    }
   } else {
    if(i44<0.20581212639808655){
     s0+=78373.0;
     s1+=661.0;
    } else {
     s0+=72.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i59<-0.0013348505599424243){
   if(i51<-3.0386556773009943e-06){
    if(i39<2.872202094295062e-05){
     s0+=18.0;
     s1+=770.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    s0+=275.0;
   }
  } else {
   if(i6<0.00023889541625976562){
    if(i33<0.02090008184313774){
     s0+=1293.0;
     s1+=25.0;
    } else {
     s0+=128.0;
     s1+=33.0;
    }
   } else {
    if(i44<0.03327736258506775){
     s0+=189.0;
     s1+=11.0;
    } else {
     s0+=24.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012560486793518066){
  if(i0<-6.790647603338584e-05){
   if(i30<1.0731024742126465){
    if(i1<0.0005445480346679688){
     s0+=341.0;
     s1+=61.0;
    } else {
     s0+=32.0;
     s1+=75.0;
    }
   } else {
    if(i22<0.00197620433755219){
     s0+=57.0;
     s1+=3.0;
    } else {
     s0+=152.0;
     s1+=2372.0;
    }
   }
  } else {
   if(i29<0.0005489587783813477){
    if(i51<-5.1386814448051155e-06){
     s0+=347.0;
     s1+=950.0;
    } else {
     s0+=186.0;
    }
   } else {
    if(i68<1.0818690061569214){
     s0+=4018.0;
     s1+=257.0;
    } else {
     s0+=24.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i34<1.1672043800354004){
   if(i56<1.0025626420974731){
    if(i28<0.0013719690032303333){
     s0+=32.0;
     s1+=1768.0;
    } else {
     s0+=481.0;
     s1+=30.0;
    }
   } else {
    if(i26<1.0986645221710205){
     s1+=13.0;
    } else {
     s0+=394.0;
    }
   }
  } else {
   if(i61<-0.0064678192138671875){
    if(i10<0.9705072641372681){
     s0+=6.0;
     s1+=134.0;
    } else {
     s0+=30.0;
     s1+=46.0;
    }
   } else {
    if(i14<0.00044576029176823795){
     s1+=11031.0;
    } else {
     s0+=34.0;
     s1+=1675.0;
    }
   }
  }
 }
}
if(i23<0.00018519163131713867){
 if(i0<-8.67880298756063e-05){
  if(i27<0.045134395360946655){
   if(i75<-0.008303463459014893){
    if(i53<0.1477038562297821){
     s0+=88.0;
     s1+=45.0;
    } else {
     s0+=22.0;
     s1+=84.0;
    }
   } else {
    if(i45<1.0046075582504272){
     s0+=826.0;
     s1+=17.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i24<0.015958361327648163){
    if(i8<1.0213948488235474){
     s0+=78.0;
     s1+=20.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i30<1.0260529518127441){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=68.0;
     s1+=3961.0;
    }
   }
  }
 } else {
  if(i9<1.0181578397750854){
   if(i64<0.0011665117926895618){
    if(i32<1.0903575420379639){
     s0+=27631.0;
     s1+=2711.0;
    } else {
     s0+=76397.0;
     s1+=975.0;
    }
   } else {
    if(i29<7.086992263793945e-05){
     s0+=5287.0;
     s1+=98.0;
    } else {
     s0+=3495.0;
     s1+=1506.0;
    }
   }
  } else {
   if(i14<0.0003379828413017094){
    if(i7<0.005916102789342403){
     s0+=639.0;
     s1+=117.0;
    } else {
     s0+=34.0;
     s1+=1027.0;
    }
   } else {
    if(i0<-6.361892155837268e-05){
     s0+=52.0;
     s1+=61.0;
    } else {
     s0+=375.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i12<1.0143113136291504){
  if(i26<1.1180615425109863){
   s1+=1028.0;
  } else {
   if(i58<0.00021201491472311318){
    if(i53<0.052334774285554886){
     s0+=1309.0;
     s1+=36.0;
    } else {
     s0+=19.0;
     s1+=33.0;
    }
   } else {
    if(i36<0.0019328126218169928){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=494.0;
    }
   }
  }
 } else {
  if(i50<3.1888484954833984e-05){
   if(i10<1.0237624645233154){
    if(i20<0.0017139315605163574){
     s0+=60.0;
     s1+=118.0;
    } else {
     s0+=1.0;
     s1+=1739.0;
    }
   } else {
    if(i7<0.0006715368945151567){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=10294.0;
    }
   }
  } else {
   if(i8<1.0887949466705322){
    s0+=15.0;
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i13<1.0183236598968506){
  if(i16<0.0017233737744390965){
   if(i60<-0.000823289155960083){
    if(i22<0.0005609338404610753){
     s0+=3939.0;
     s1+=413.0;
    } else {
     s0+=8375.0;
     s1+=45.0;
    }
   } else {
    if(i58<0.00015465069736819714){
     s0+=70600.0;
     s1+=278.0;
    } else {
     s0+=6343.0;
     s1+=183.0;
    }
   }
  } else {
   if(i28<0.0012081312015652657){
    if(i24<0.00936102494597435){
     s0+=2084.0;
     s1+=401.0;
    } else {
     s0+=331.0;
     s1+=2162.0;
    }
   } else {
    if(i71<0.15614429116249084){
     s0+=18113.0;
     s1+=873.0;
    } else {
     s0+=174.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i1<0.0002250969409942627){
   if(i7<0.005418137647211552){
    if(i29<0.00010919570922851562){
     s0+=320.0;
    } else {
     s0+=123.0;
     s1+=29.0;
    }
   } else {
    if(i8<1.012797236442566){
     s0+=33.0;
     s1+=39.0;
    } else {
     s1+=170.0;
    }
   }
  } else {
   if(i50<1.0102987289428711e-05){
    if(i29<0.0004011988639831543){
     s0+=48.0;
     s1+=749.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i1<0.0011352002620697021){
     s1+=4.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i29<0.0005112886428833008){
   if(i5<1.806020736694336e-05){
    if(i43<-1.2522625183919445e-05){
     s0+=7.0;
     s1+=22.0;
    } else {
     s0+=201.0;
    }
   } else {
    if(i56<1.003998041152954){
     s0+=112.0;
     s1+=2483.0;
    } else {
     s0+=37.0;
     s1+=4.0;
    }
   }
  } else {
   if(i78<-0.008481144905090332){
    if(i33<0.004076485522091389){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i18<0.9981611371040344){
     s0+=116.0;
     s1+=12.0;
    } else {
     s0+=3867.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<-6.016324186930433e-05){
   if(i30<1.0529450178146362){
    if(i32<1.4247384071350098){
     s0+=304.0;
     s1+=30.0;
    } else {
     s0+=9.0;
     s1+=52.0;
    }
   } else {
    if(i15<0.03962510824203491){
     s0+=139.0;
     s1+=170.0;
    } else {
     s0+=123.0;
     s1+=14868.0;
    }
   }
  } else {
   if(i17<0.09479278326034546){
    if(i1<0.0009284019470214844){
     s0+=767.0;
     s1+=91.0;
    } else {
     s0+=25.0;
     s1+=81.0;
    }
   } else {
    if(i4<1.0019429922103882){
     s0+=240.0;
     s1+=147.0;
    } else {
     s0+=73.0;
     s1+=686.0;
    }
   }
  }
 }
}
if(i0<-9.840834536589682e-05){
 if(i27<0.04134714603424072){
  if(i61<-0.006512075662612915){
   if(i45<1.004637360572815){
    if(i77<0.002976077375933528){
     s0+=570.0;
     s1+=21.0;
    } else {
     s0+=15.0;
     s1+=23.0;
    }
   } else {
    if(i49<-3.83956694349763e-06){
     s0+=3.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i46<1.0011500120162964){
    if(i59<-0.0004370960814412683){
     s0+=19.0;
     s1+=36.0;
    } else {
     s0+=60.0;
     s1+=9.0;
    }
   } else {
    if(i68<0.9449342489242554){
     s1+=67.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<0.0007076200563460588){
   if(i5<0.0002281665802001953){
    if(i61<-0.010449618101119995){
     s0+=34.0;
     s1+=14.0;
    } else {
     s0+=49.0;
     s1+=15384.0;
    }
   } else {
    s0+=77.0;
   }
  } else {
   s0+=178.0;
  }
 }
} else {
 if(i1<0.0009711384773254395){
  if(i6<0.00029212236404418945){
   if(i28<0.0010684211738407612){
    if(i15<0.05379295349121094){
     s0+=27417.0;
     s1+=1226.0;
    } else {
     s0+=2474.0;
     s1+=830.0;
    }
   } else {
    if(i25<1.0245282649993896){
     s0+=72758.0;
     s1+=634.0;
    } else {
     s0+=384.0;
     s1+=138.0;
    }
   }
  } else {
   if(i53<0.033835262060165405){
    if(i0<-4.4549626181833446e-05){
     s0+=384.0;
     s1+=546.0;
    } else {
     s0+=7684.0;
     s1+=578.0;
    }
   } else {
    if(i11<1.0105745792388916){
     s0+=2040.0;
     s1+=1170.0;
    } else {
     s0+=365.0;
     s1+=998.0;
    }
   }
  }
 } else {
  if(i53<0.03583720326423645){
   if(i28<0.0012572873383760452){
    if(i55<0.0001178292150143534){
     s0+=49.0;
     s1+=18.0;
    } else {
     s0+=18.0;
     s1+=1419.0;
    }
   } else {
    if(i22<0.0023630200885236263){
     s0+=1549.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=190.0;
    }
   }
  } else {
   if(i1<0.0013450980186462402){
    if(i16<0.0021752137690782547){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=58.0;
     s1+=325.0;
    }
   } else {
    if(i46<0.9997749328613281){
     s0+=19.0;
    } else {
     s0+=34.0;
     s1+=926.0;
    }
   }
  }
 }
}
if(i3<1.0026336908340454){
 if(i25<1.0215551853179932){
  if(i22<0.000899599224794656){
   if(i37<1.0514500141143799){
    if(i37<1.0434579849243164){
     s0+=20944.0;
     s1+=319.0;
    } else {
     s0+=3455.0;
     s1+=439.0;
    }
   } else {
    if(i45<1.0000051259994507){
     s0+=4634.0;
     s1+=219.0;
    } else {
     s0+=1977.0;
     s1+=2400.0;
    }
   }
  } else {
   if(i15<0.23540759086608887){
    if(i30<1.1848134994506836){
     s0+=78290.0;
     s1+=725.0;
    } else {
     s0+=280.0;
     s1+=222.0;
    }
   } else {
    if(i7<0.0064681051298975945){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i16<0.0020261153113096952){
   if(i5<8.404254913330078e-06){
    if(i3<1.000627040863037){
     s0+=464.0;
    } else {
     s0+=128.0;
     s1+=14.0;
    }
   } else {
    if(i51<-7.319792075577425e-06){
     s1+=17.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   }
  } else {
   if(i4<0.9997881650924683){
    if(i15<0.18273848295211792){
     s0+=153.0;
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=164.0;
    }
   } else {
    if(i45<1.0023828744888306){
     s0+=45.0;
     s1+=935.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i2<8.183717727661133e-05){
  if(i15<0.1806795597076416){
   if(i50<9.119510650634766e-06){
    if(i12<1.0074865818023682){
     s0+=815.0;
     s1+=686.0;
    } else {
     s0+=73.0;
     s1+=561.0;
    }
   } else {
    if(i47<0.9760608673095703){
     s0+=543.0;
     s1+=536.0;
    } else {
     s0+=3284.0;
     s1+=234.0;
    }
   }
  } else {
   if(i28<0.0024501101579517126){
    if(i14<0.0001256552350241691){
     s1+=1.0;
    } else {
     s0+=106.0;
    }
   } else {
    if(i37<1.170027494430542){
     s0+=46.0;
     s1+=168.0;
    } else {
     s0+=27.0;
     s1+=1430.0;
    }
   }
  }
 } else {
  if(i46<0.9986734986305237){
   s0+=202.0;
  } else {
   if(i50<2.855062484741211e-05){
    if(i36<0.0016649272292852402){
     s0+=481.0;
     s1+=1897.0;
    } else {
     s0+=72.0;
     s1+=13150.0;
    }
   } else {
    if(i38<1.1901063919067383){
     s0+=327.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i0<-9.841532300924882e-05){
 if(i15<0.041282445192337036){
  if(i3<1.0054130554199219){
   if(i39<-0.0004151946632191539){
    if(i11<0.8985280990600586){
     s0+=91.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   } else {
    if(i7<0.023505114018917084){
     s0+=527.0;
     s1+=21.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   }
  } else {
   if(i40<0.00033269848790951073){
    if(i75<0.0005335807800292969){
     s1+=83.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i12<0.9734570384025574){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i49<-6.389767804648727e-06){
   s0+=218.0;
  } else {
   if(i8<0.9222828149795532){
    if(i56<1.0016660690307617){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=47.0;
     s1+=11.0;
    }
   } else {
    if(i46<0.9971374869346619){
     s0+=1.0;
    } else {
     s0+=30.0;
     s1+=15083.0;
    }
   }
  }
 }
} else {
 if(i12<1.007577896118164){
  if(i16<0.0017910562455654144){
   if(i31<0.0006154353031888604){
    if(i31<0.00044582050759345293){
     s0+=61955.0;
     s1+=78.0;
    } else {
     s0+=12104.0;
     s1+=190.0;
    }
   } else {
    if(i33<0.0004915411700494587){
     s0+=2228.0;
     s1+=669.0;
    } else {
     s0+=15328.0;
     s1+=155.0;
    }
   }
  } else {
   if(i28<0.0012073649559170008){
    if(i34<1.0533521175384521){
     s0+=1994.0;
    } else {
     s0+=224.0;
     s1+=2527.0;
    }
   } else {
    if(i41<1.1025723218917847){
     s0+=17733.0;
     s1+=1036.0;
    } else {
     s0+=991.0;
     s1+=1021.0;
    }
   }
  }
 } else {
  if(i28<0.0012226274702697992){
   if(i51<-4.4907128540216945e-06){
    if(i36<0.00015445971803274006){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=2147.0;
    }
   } else {
    s0+=61.0;
   }
  } else {
   if(i36<0.0019786572083830833){
    if(i22<0.0010671063791960478){
     s1+=25.0;
    } else {
     s0+=2606.0;
     s1+=2.0;
    }
   } else {
    if(i4<1.0022249221801758){
     s0+=287.0;
     s1+=20.0;
    } else {
     s0+=101.0;
     s1+=1152.0;
    }
   }
  }
 }
}
if(i13<1.018029808998108){
 if(i17<0.19054174423217773){
  if(i1<0.0010752677917480469){
   if(i7<0.003661890747025609){
    if(i32<1.0905301570892334){
     s0+=26062.0;
     s1+=857.0;
    } else {
     s0+=63185.0;
     s1+=197.0;
    }
   } else {
    if(i5<-3.2782554626464844e-06){
     s0+=18692.0;
     s1+=223.0;
    } else {
     s0+=5416.0;
     s1+=4427.0;
    }
   }
  } else {
   if(i14<0.0007036452880129218){
    if(i61<0.0030281543731689453){
     s0+=141.0;
     s1+=2750.0;
    } else {
     s0+=15.0;
     s1+=3.0;
    }
   } else {
    s0+=1136.0;
   }
  }
 } else {
  if(i16<0.0026626568287611008){
   if(i5<1.5974044799804688e-05){
    if(i0<-4.36326845374424e-05){
     s0+=5.0;
     s1+=25.0;
    } else {
     s0+=450.0;
     s1+=7.0;
    }
   } else {
    if(i35<0.023353904485702515){
     s0+=60.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=71.0;
    }
   }
  } else {
   if(i58<0.00023528395104222){
    if(i4<1.0005137920379639){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=100.0;
    }
   } else {
    if(i2<-7.68899917602539e-06){
     s0+=39.0;
     s1+=310.0;
    } else {
     s0+=8.0;
     s1+=1663.0;
    }
   }
  }
 }
} else {
 if(i0<-6.007474803482182e-05){
  if(i46<0.9983373284339905){
   s0+=50.0;
  } else {
   if(i17<0.15458059310913086){
    if(i45<1.0003149509429932){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=96.0;
     s1+=1749.0;
    }
   } else {
    if(i22<0.0024201141204684973){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=11155.0;
    }
   }
  }
 } else {
  if(i7<0.006472794339060783){
   if(i1<0.000816047191619873){
    if(i26<1.0905578136444092){
     s1+=4.0;
    } else {
     s0+=812.0;
     s1+=29.0;
    }
   } else {
    if(i27<0.09876832365989685){
     s0+=76.0;
     s1+=113.0;
    } else {
     s0+=202.0;
     s1+=13.0;
    }
   }
  } else {
   if(i20<-0.0036153197288513184){
    s0+=18.0;
   } else {
    if(i21<0.991544246673584){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=580.0;
    }
   }
  }
 }
}
if(i1<0.000955045223236084){
 if(i47<1.0291284322738647){
  if(i24<0.0637517124414444){
   if(i16<0.001728365197777748){
    if(i37<1.0739831924438477){
     s0+=29247.0;
     s1+=706.0;
    } else {
     s0+=61466.0;
     s1+=209.0;
    }
   } else {
    if(i28<0.0010955575853586197){
     s0+=2293.0;
     s1+=2723.0;
    } else {
     s0+=19915.0;
     s1+=1798.0;
    }
   }
  } else {
   if(i48<7.585409184684977e-05){
    if(i61<-0.00975826382637024){
     s0+=55.0;
     s1+=40.0;
    } else {
     s0+=19.0;
     s1+=792.0;
    }
   } else {
    if(i7<0.021357059478759766){
     s0+=288.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i0<-5.22083391842898e-05){
   if(i71<0.12784036993980408){
    if(i17<0.13611707091331482){
     s0+=127.0;
     s1+=188.0;
    } else {
     s0+=9.0;
     s1+=391.0;
    }
   } else {
    if(i36<0.0021051252260804176){
     s0+=5.0;
    } else {
     s0+=14.0;
     s1+=713.0;
    }
   }
  } else {
   if(i24<0.028221258893609047){
    if(i45<1.0008227825164795){
     s0+=441.0;
     s1+=5.0;
    } else {
     s0+=311.0;
     s1+=89.0;
    }
   } else {
    if(i20<-0.001436680555343628){
     s0+=150.0;
     s1+=9.0;
    } else {
     s0+=20.0;
     s1+=225.0;
    }
   }
  }
 }
} else {
 if(i33<0.002370662521570921){
  if(i28<0.0012791946064680815){
   if(i14<0.0002657711738720536){
    s1+=2280.0;
   } else {
    s0+=105.0;
   }
  } else {
   if(i14<0.00025750070926733315){
    if(i49<-1.493701074650744e-05){
     s0+=14.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i28<0.002416626550257206){
     s0+=1815.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i61<-0.006819397211074829){
   if(i50<9.47713851928711e-06){
    if(i15<0.025997161865234375){
     s0+=45.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   } else {
    if(i2<7.551908493041992e-05){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=132.0;
    }
   }
  } else {
   if(i40<9.09298105398193e-05){
    if(i8<1.0234240293502808){
     s0+=1.0;
     s1+=1368.0;
    } else {
     s1+=9022.0;
    }
   } else {
    if(i7<0.00977119617164135){
     s0+=66.0;
     s1+=65.0;
    } else {
     s0+=11.0;
     s1+=3481.0;
    }
   }
  }
 }
}
if(i0<-0.00011468671436887234){
 if(i41<1.02365243434906){
  if(i61<-0.006843000650405884){
   if(i51<-2.1734798792749643e-05){
    s1+=12.0;
   } else {
    if(i15<0.014494895935058594){
     s0+=295.0;
     s1+=9.0;
    } else {
     s0+=49.0;
     s1+=17.0;
    }
   }
  } else {
   if(i58<0.0016789041692391038){
    if(i15<0.04846790432929993){
     s0+=7.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=61.0;
   }
  }
 } else {
  if(i10<1.0200928449630737){
   if(i22<0.0024228489492088556){
    if(i1<0.0023840665817260742){
     s0+=161.0;
    } else {
     s0+=1.0;
     s1+=89.0;
    }
   } else {
    if(i73<-0.012851983308792114){
     s0+=39.0;
     s1+=349.0;
    } else {
     s0+=12.0;
     s1+=2754.0;
    }
   }
  } else {
   s1+=11138.0;
  }
 }
} else {
 if(i13<1.0164004564285278){
  if(i38<1.1301478147506714){
   if(i6<0.00029343366622924805){
    if(i26<1.116391897201538){
     s0+=27363.0;
     s1+=2124.0;
    } else {
     s0+=70450.0;
     s1+=309.0;
    }
   } else {
    if(i36<0.0009280217927880585){
     s0+=2693.0;
     s1+=2005.0;
    } else {
     s0+=7259.0;
     s1+=867.0;
    }
   }
  } else {
   if(i26<1.1967029571533203){
    s0+=2479.0;
   } else {
    if(i43<-3.949185338569805e-05){
     s0+=117.0;
     s1+=534.0;
    } else {
     s0+=3748.0;
     s1+=1210.0;
    }
   }
  }
 } else {
  if(i46<0.9997058510780334){
   if(i22<0.013172734528779984){
    s0+=373.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i4<1.0016958713531494){
    if(i31<0.002292221412062645){
     s0+=578.0;
     s1+=118.0;
    } else {
     s0+=9.0;
     s1+=44.0;
    }
   } else {
    if(i45<1.0032610893249512){
     s0+=250.0;
     s1+=2414.0;
    } else {
     s0+=475.0;
     s1+=432.0;
    }
   }
  }
 }
}
if(i68<1.0298898220062256){
 if(i1<0.0011579394340515137){
  if(i16<0.0018178035970777273){
   if(i13<0.9949681758880615){
    if(i32<1.0905301570892334){
     s0+=4357.0;
     s1+=566.0;
    } else {
     s0+=12750.0;
     s1+=74.0;
    }
   } else {
    if(i64<0.0010294221574440598){
     s0+=74827.0;
     s1+=489.0;
    } else {
     s0+=310.0;
     s1+=65.0;
    }
   }
  } else {
   if(i19<0.9954134225845337){
    if(i41<1.1230299472808838){
     s0+=15488.0;
     s1+=729.0;
    } else {
     s0+=138.0;
     s1+=376.0;
    }
   } else {
    if(i46<0.9995691776275635){
     s0+=2732.0;
     s1+=25.0;
    } else {
     s0+=2614.0;
     s1+=4374.0;
    }
   }
  }
 } else {
  if(i42<0.0019237311789765954){
   if(i22<0.0010801446624100208){
    s1+=1685.0;
   } else {
    if(i22<0.0023906072601675987){
     s0+=1143.0;
    } else {
     s1+=529.0;
    }
   }
  } else {
   if(i46<0.9980708360671997){
    s0+=32.0;
   } else {
    if(i60<-0.012127071619033813){
     s0+=39.0;
     s1+=125.0;
    } else {
     s0+=23.0;
     s1+=3063.0;
    }
   }
  }
 }
} else {
 if(i2<2.110004425048828e-05){
  if(i43<-7.945685865706764e-06){
   if(i37<1.1759499311447144){
    if(i7<0.006009218282997608){
     s0+=344.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=102.0;
    }
   } else {
    if(i30<1.1157053709030151){
     s0+=95.0;
     s1+=12.0;
    } else {
     s0+=35.0;
     s1+=520.0;
    }
   }
  } else {
   if(i28<0.004110750276595354){
    s0+=836.0;
   } else {
    if(i55<0.0027534589171409607){
     s0+=43.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i28<0.0023970382753759623){
   if(i55<0.000917005178052932){
    if(i51<-1.6924865121836774e-05){
     s0+=6.0;
    } else {
     s0+=4.0;
     s1+=604.0;
    }
   } else {
    if(i22<0.0009330758475698531){
     s1+=68.0;
    } else {
     s0+=322.0;
     s1+=4.0;
    }
   }
  } else {
   if(i27<0.10740348696708679){
    if(i75<-0.0005869865417480469){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i33<0.0046373819932341576){
     s0+=46.0;
     s1+=1221.0;
    } else {
     s0+=9.0;
     s1+=9918.0;
    }
   }
  }
 }
}
if(i18<1.0139830112457275){
 if(i7<0.01397630013525486){
  if(i21<1.0061404705047607){
   if(i11<1.0150747299194336){
    if(i3<1.0022664070129395){
     s0+=107065.0;
     s1+=3390.0;
    } else {
     s0+=4310.0;
     s1+=1138.0;
    }
   } else {
    if(i28<0.0011372596491128206){
     s0+=125.0;
     s1+=361.0;
    } else {
     s0+=957.0;
     s1+=437.0;
    }
   }
  } else {
   if(i29<0.0007636547088623047){
    if(i3<1.0025843381881714){
     s0+=111.0;
     s1+=23.0;
    } else {
     s0+=143.0;
     s1+=1401.0;
    }
   } else {
    if(i7<0.00807808805257082){
     s0+=1603.0;
     s1+=37.0;
    } else {
     s0+=8.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i41<1.0330928564071655){
   if(i61<-0.007075071334838867){
    if(i28<0.019638406112790108){
     s0+=871.0;
     s1+=45.0;
    } else {
     s0+=55.0;
     s1+=74.0;
    }
   } else {
    if(i51<-1.388469900120981e-05){
     s0+=5.0;
     s1+=130.0;
    } else {
     s0+=30.0;
     s1+=8.0;
    }
   }
  } else {
   if(i20<-0.005509376525878906){
    if(i32<1.4508270025253296){
     s0+=75.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=64.0;
    }
   } else {
    if(i22<0.003018992953002453){
     s0+=3.0;
    } else {
     s0+=36.0;
     s1+=3437.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i5<1.0520219802856445e-05){
   if(i31<0.0020156106911599636){
    if(i16<0.0024869090411812067){
     s0+=353.0;
    } else {
     s0+=19.0;
     s1+=37.0;
    }
   } else {
    s1+=105.0;
   }
  } else {
   if(i7<0.002331159543246031){
    if(i19<1.0096347332000732){
     s0+=196.0;
     s1+=24.0;
    } else {
     s0+=9.0;
     s1+=201.0;
    }
   } else {
    if(i23<-0.00014215707778930664){
     s0+=42.0;
     s1+=98.0;
    } else {
     s0+=25.0;
     s1+=13063.0;
    }
   }
  }
 } else {
  s0+=604.0;
 }
}
if(i0<-0.00010072861186927184){
 if(i18<0.9439531564712524){
  if(i76<-0.14009946584701538){
   if(i28<0.014939169399440289){
    if(i35<0.11040572822093964){
     s0+=16.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i31<0.0017096064984798431){
     s0+=7.0;
     s1+=3.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i37<1.3082551956176758){
    s1+=11.0;
   } else {
    if(i15<0.14040398597717285){
     s0+=446.0;
     s1+=12.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i45<1.0005295276641846){
   if(i32<1.3914103507995605){
    s0+=198.0;
   } else {
    s1+=421.0;
   }
  } else {
   if(i44<0.010319918394088745){
    if(i41<1.030665397644043){
     s0+=75.0;
     s1+=25.0;
    } else {
     s0+=18.0;
     s1+=200.0;
    }
   } else {
    if(i43<-0.00018037510744761676){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=80.0;
     s1+=14297.0;
    }
   }
  }
 }
} else {
 if(i5<1.9609928131103516e-05){
  if(i22<0.0008836754132062197){
   if(i7<0.003538859775289893){
    if(i14<0.0001716451661195606){
     s0+=24004.0;
     s1+=307.0;
    } else {
     s0+=3807.0;
     s1+=479.0;
    }
   } else {
    if(i51<-2.002751443797024e-06){
     s0+=447.0;
     s1+=2341.0;
    } else {
     s0+=2621.0;
    }
   }
  } else {
   if(i55<0.001986078219488263){
    if(i42<0.0016666578594595194){
     s0+=61489.0;
     s1+=49.0;
    } else {
     s0+=8295.0;
     s1+=298.0;
    }
   } else {
    if(i39<-0.00020018084615003318){
     s0+=920.0;
     s1+=492.0;
    } else {
     s0+=7194.0;
     s1+=214.0;
    }
   }
  }
 } else {
  if(i2<8.088350296020508e-05){
   if(i16<0.00207185628823936){
    if(i34<1.1959260702133179){
     s0+=3391.0;
     s1+=11.0;
    } else {
     s0+=167.0;
     s1+=109.0;
    }
   } else {
    if(i1<2.6404857635498047e-05){
     s0+=1307.0;
     s1+=251.0;
    } else {
     s0+=1155.0;
     s1+=2311.0;
    }
   }
  } else {
   if(i49<-7.449428267136682e-06){
    s0+=411.0;
   } else {
    if(i56<1.0034327507019043){
     s0+=368.0;
     s1+=2141.0;
    } else {
     s0+=214.0;
     s1+=166.0;
    }
   }
  }
 }
}
if(i10<1.0136241912841797){
 if(i21<1.0075194835662842){
  if(i53<0.3050999641418457){
   if(i4<1.0029933452606201){
    if(i58<0.0002268272655783221){
     s0+=86540.0;
     s1+=1937.0;
    } else {
     s0+=22440.0;
     s1+=2412.0;
    }
   } else {
    if(i36<0.0019636289216578007){
     s0+=4640.0;
     s1+=861.0;
    } else {
     s0+=198.0;
     s1+=810.0;
    }
   }
  } else {
   if(i30<1.107909917831421){
    if(i8<0.9616118669509888){
     s0+=427.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i0<-2.716615199460648e-06){
     s0+=3.0;
     s1+=919.0;
    } else {
     s0+=41.0;
    }
   }
  }
 } else {
  if(i36<0.0018825355218723416){
   if(i32<1.117074966430664){
    if(i36<0.0009147035889327526){
     s1+=527.0;
    } else {
     s0+=83.0;
    }
   } else {
    s0+=685.0;
   }
  } else {
   if(i15<0.031184464693069458){
    if(i6<0.0015200972557067871){
     s0+=169.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=76.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=57.0;
     s1+=2140.0;
    } else {
     s0+=46.0;
     s1+=121.0;
    }
   }
  }
 }
} else {
 if(i16<0.0013815650017932057){
  if(i45<1.0018858909606934){
   s0+=279.0;
  } else {
   if(i49<-3.964961251767818e-06){
    if(i32<1.1843671798706055){
     s0+=273.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i19<1.0075652599334717){
     s0+=10.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=475.0;
    }
   }
  }
 } else {
  if(i7<0.0028845928609371185){
   if(i29<0.0004993677139282227){
    if(i5<9.894371032714844e-06){
     s0+=2.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i1<0.0027927756309509277){
     s0+=314.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i46<0.998361349105835){
    s0+=95.0;
   } else {
    if(i19<1.0099096298217773){
     s0+=186.0;
     s1+=3318.0;
    } else {
     s0+=19.0;
     s1+=10600.0;
    }
   }
  }
 }
}
if(i5<2.0802021026611328e-05){
 if(i25<1.0215239524841309){
  if(i24<0.0067750089801847935){
   if(i26<1.1162974834442139){
    if(i7<0.0012558007147163153){
     s0+=15401.0;
     s1+=71.0;
    } else {
     s0+=6089.0;
     s1+=442.0;
    }
   } else {
    if(i78<0.008368521928787231){
     s0+=46441.0;
     s1+=54.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  } else {
   if(i44<0.20635947585105896){
    if(i21<0.9984433054924011){
     s0+=33138.0;
     s1+=459.0;
    } else {
     s0+=7482.0;
     s1+=3012.0;
    }
   } else {
    if(i43<-5.8315094975114334e-06){
     s0+=5.0;
     s1+=213.0;
    } else {
     s0+=29.0;
    }
   }
  }
 } else {
  if(i43<-7.720154826529324e-06){
   if(i56<1.0032494068145752){
    if(i15<0.10678628087043762){
     s0+=55.0;
     s1+=35.0;
    } else {
     s0+=60.0;
     s1+=726.0;
    }
   } else {
    if(i35<0.09542301297187805){
     s0+=198.0;
     s1+=4.0;
    } else {
     s1+=31.0;
    }
   }
  } else {
   if(i54<1.0042119026184082){
    if(i29<0.00011140108108520508){
     s0+=538.0;
    } else {
     s0+=63.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i7<0.004376538097858429){
  if(i48<-8.900664397515357e-06){
   if(i14<0.0004705471219494939){
    if(i20<0.0009784102439880371){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=24.0;
     s1+=1023.0;
    }
   } else {
    if(i11<1.0933918952941895){
     s0+=286.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i42<0.0021038122940808535){
    if(i7<0.003472515381872654){
     s0+=4316.0;
     s1+=18.0;
    } else {
     s0+=463.0;
     s1+=120.0;
    }
   } else {
    if(i51<-8.742914360482246e-06){
     s0+=184.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i17<0.03241279721260071){
   if(i20<-0.0016331076622009277){
    if(i75<-0.009576797485351562){
     s0+=29.0;
     s1+=81.0;
    } else {
     s0+=658.0;
     s1+=34.0;
    }
   } else {
    if(i31<0.0020552147179841995){
     s0+=7.0;
     s1+=369.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   }
  } else {
   if(i23<-0.00033593177795410156){
    if(i39<-0.00022720542619936168){
     s0+=113.0;
     s1+=670.0;
    } else {
     s0+=477.0;
     s1+=296.0;
    }
   } else {
    if(i4<1.0043730735778809){
     s0+=281.0;
     s1+=1483.0;
    } else {
     s0+=150.0;
     s1+=15104.0;
    }
   }
  }
 }
}
if(i3<1.0026427507400513){
 if(i25<1.0214457511901855){
  if(i35<0.20641325414180756){
   if(i26<1.1162974834442139){
    if(i31<0.0007343421457335353){
     s0+=26255.0;
     s1+=389.0;
    } else {
     s0+=3294.0;
     s1+=2930.0;
    }
   } else {
    if(i15<0.207905113697052){
     s0+=79914.0;
     s1+=756.0;
    } else {
     s0+=186.0;
     s1+=162.0;
    }
   }
  } else {
   if(i48<8.23920127004385e-05){
    if(i39<0.00048669305397197604){
     s1+=250.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    s0+=94.0;
   }
  }
 } else {
  if(i7<0.005240924656391144){
   if(i0<-8.801039075478911e-05){
    s1+=9.0;
   } else {
    if(i40<0.00016385974595323205){
     s0+=700.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=15.0;
    }
   }
  } else {
   if(i65<1.875893576652743e-05){
    if(i15<0.08288323879241943){
     s0+=19.0;
     s1+=11.0;
    } else {
     s0+=32.0;
     s1+=1052.0;
    }
   } else {
    s0+=25.0;
   }
  }
 }
} else {
 if(i24<0.01361803524196148){
  if(i20<0.001287221908569336){
   if(i20<0.0009281635284423828){
    if(i39<-0.00025410676607862115){
     s0+=398.0;
     s1+=178.0;
    } else {
     s0+=2903.0;
     s1+=112.0;
    }
   } else {
    if(i37<1.0905089378356934){
     s0+=28.0;
     s1+=254.0;
    } else {
     s0+=692.0;
     s1+=36.0;
    }
   }
  } else {
   if(i42<0.0009956848807632923){
    if(i45<1.0043514966964722){
     s1+=1677.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   } else {
    if(i38<1.1265220642089844){
     s0+=590.0;
     s1+=209.0;
    } else {
     s0+=15.0;
     s1+=986.0;
    }
   }
  }
 } else {
  if(i10<1.017897367477417){
   if(i15<0.08301043510437012){
    if(i75<-0.0037445425987243652){
     s0+=197.0;
     s1+=470.0;
    } else {
     s0+=612.0;
     s1+=138.0;
    }
   } else {
    if(i1<0.0002046823501586914){
     s0+=229.0;
     s1+=462.0;
    } else {
     s0+=109.0;
     s1+=3154.0;
    }
   }
  } else {
   if(i23<-0.0002256333827972412){
    if(i16<0.004898052662611008){
     s0+=73.0;
    } else {
     s1+=133.0;
    }
   } else {
    if(i15<0.0653570294380188){
     s0+=7.0;
     s1+=18.0;
    } else {
     s0+=19.0;
     s1+=10980.0;
    }
   }
  }
 }
}
if(i6<0.0005906224250793457){
 if(i0<-8.286969386972487e-05){
  if(i18<0.9462881088256836){
   if(i44<0.10194224119186401){
    if(i27<0.09614458680152893){
     s0+=644.0;
     s1+=26.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s1+=54.0;
   }
  } else {
   if(i63<1.0446174144744873){
    if(i35<0.037841036915779114){
     s0+=84.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=99.0;
    }
   } else {
    if(i59<-0.0005631649401038885){
     s0+=16.0;
     s1+=759.0;
    } else {
     s0+=41.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i7<0.0036513074301183224){
   if(i33<0.0006864741444587708){
    if(i13<0.9959269762039185){
     s0+=4386.0;
     s1+=539.0;
    } else {
     s0+=22166.0;
     s1+=277.0;
    }
   } else {
    if(i55<0.0020309416577219963){
     s0+=57607.0;
     s1+=90.0;
    } else {
     s0+=2635.0;
     s1+=122.0;
    }
   }
  } else {
   if(i9<1.0077252388000488){
    if(i3<0.9997879862785339){
     s0+=16444.0;
     s1+=222.0;
    } else {
     s0+=4088.0;
     s1+=1978.0;
    }
   } else {
    if(i28<0.0011982464930042624){
     s0+=201.0;
     s1+=814.0;
    } else {
     s0+=1393.0;
     s1+=314.0;
    }
   }
  }
 }
} else {
 if(i28<0.002619003877043724){
  if(i55<0.0009125842479988933){
   if(i22<0.00024820026010274887){
    s0+=1362.0;
   } else {
    if(i38<1.0948383808135986){
     s0+=80.0;
     s1+=2671.0;
    } else {
     s0+=120.0;
     s1+=85.0;
    }
   }
  } else {
   if(i26<1.116804838180542){
    s1+=129.0;
   } else {
    if(i7<0.006006376817822456){
     s0+=3322.0;
     s1+=19.0;
    } else {
     s0+=146.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i15<0.08282828330993652){
   if(i4<1.006948709487915){
    if(i47<0.948599100112915){
     s0+=457.0;
     s1+=330.0;
    } else {
     s0+=726.0;
     s1+=27.0;
    }
   } else {
    if(i56<1.0059276819229126){
     s0+=4.0;
     s1+=259.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   }
  } else {
   if(i15<0.14748457074165344){
    if(i4<1.004349708557129){
     s0+=254.0;
     s1+=368.0;
    } else {
     s0+=46.0;
     s1+=1273.0;
    }
   } else {
    if(i7<0.006748497951775789){
     s0+=61.0;
     s1+=729.0;
    } else {
     s0+=39.0;
     s1+=13220.0;
    }
   }
  }
 }
}
if(i3<1.0026230812072754){
 if(i25<1.0215789079666138){
  if(i35<0.20531614124774933){
   if(i16<0.0015702013624832034){
    if(i36<0.0002921927080024034){
     s0+=19612.0;
     s1+=494.0;
    } else {
     s0+=66216.0;
     s1+=186.0;
    }
   } else {
    if(i12<0.991693377494812){
     s0+=14596.0;
     s1+=603.0;
    } else {
     s0+=9196.0;
     s1+=2829.0;
    }
   }
  } else {
   if(i30<1.0991476774215698){
    s0+=102.0;
   } else {
    s1+=258.0;
   }
  }
 } else {
  if(i43<-8.73040517035406e-06){
   if(i39<-0.0003335412766318768){
    if(i46<1.0014363527297974){
     s0+=48.0;
     s1+=954.0;
    } else {
     s0+=48.0;
     s1+=1.0;
    }
   } else {
    if(i54<1.0009464025497437){
     s0+=92.0;
     s1+=2.0;
    } else {
     s0+=90.0;
     s1+=145.0;
    }
   }
  } else {
   if(i31<0.0010018995963037014){
    if(i51<-5.47780609849724e-06){
     s1+=1.0;
    } else {
     s0+=557.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.00027076483820565045){
     s1+=13.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i34<1.1962356567382812){
  if(i7<0.004144860431551933){
   if(i48<-1.2538046576082706e-05){
    if(i38<1.0869626998901367){
     s0+=7.0;
     s1+=554.0;
    } else {
     s0+=141.0;
     s1+=6.0;
    }
   } else {
    if(i29<0.00041407346725463867){
     s0+=127.0;
     s1+=148.0;
    } else {
     s0+=3722.0;
     s1+=17.0;
    }
   }
  } else {
   if(i40<9.156525629805401e-05){
    if(i16<0.003998143598437309){
     s0+=125.0;
     s1+=1901.0;
    } else {
     s0+=26.0;
    }
   } else {
    s0+=123.0;
   }
  }
 } else {
  if(i23<-0.0002849698066711426){
   if(i7<0.011042053811252117){
    if(i38<1.1980550289154053){
     s0+=694.0;
     s1+=100.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i12<0.9726657271385193){
     s0+=495.0;
     s1+=190.0;
    } else {
     s0+=131.0;
     s1+=942.0;
    }
   }
  } else {
   if(i15<0.071194589138031){
    if(i0<-6.693715113215148e-05){
     s0+=25.0;
     s1+=252.0;
    } else {
     s0+=310.0;
     s1+=32.0;
    }
   } else {
    if(i1<-0.0007947683334350586){
     s0+=89.0;
     s1+=8.0;
    } else {
     s0+=100.0;
     s1+=14507.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i44<0.19833070039749146){
  if(i31<0.0007176338112913072){
   if(i43<-1.7980602933675982e-05){
    if(i24<0.0069834087044000626){
     s0+=14.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=77664.0;
     s1+=358.0;
    } else {
     s0+=2088.0;
     s1+=107.0;
    }
   }
  } else {
   if(i34<1.0955833196640015){
    if(i26<1.056142807006836){
     s0+=1720.0;
    } else {
     s0+=547.0;
     s1+=2466.0;
    }
   } else {
    if(i21<1.0026284456253052){
     s0+=26638.0;
     s1+=1084.0;
    } else {
     s0+=1038.0;
     s1+=487.0;
    }
   }
  }
 } else {
  if(i43<-1.2285770935704932e-05){
   if(i0<-3.673329410958104e-05){
    if(i7<0.006574984174221754){
     s0+=4.0;
     s1+=24.0;
    } else {
     s1+=659.0;
    }
   } else {
    if(i2<-4.678964614868164e-05){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=28.0;
    }
   }
  } else {
   if(i16<0.002516740933060646){
    if(i81<0.15795081853866577){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=154.0;
    }
   } else {
    if(i61<-0.0014086663722991943){
     s0+=4.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i39<-0.00024933621170930564){
  if(i15<0.07124209403991699){
   if(i19<1.0090317726135254){
    if(i9<0.9892928600311279){
     s0+=152.0;
     s1+=180.0;
    } else {
     s0+=427.0;
     s1+=88.0;
    }
   } else {
    if(i2<4.1425228118896484e-05){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=154.0;
    }
   }
  } else {
   if(i15<0.16067376732826233){
    if(i3<1.0014431476593018){
     s0+=89.0;
     s1+=2.0;
    } else {
     s0+=316.0;
     s1+=2641.0;
    }
   } else {
    if(i33<0.00244087353348732){
     s0+=31.0;
     s1+=42.0;
    } else {
     s0+=28.0;
     s1+=12057.0;
    }
   }
  }
 } else {
  if(i2<0.0001385807991027832){
   if(i48<-1.1042375263059512e-05){
    if(i34<1.1180615425109863){
     s1+=370.0;
    } else {
     s0+=145.0;
     s1+=34.0;
    }
   } else {
    if(i14<0.00026430917205289006){
     s0+=696.0;
     s1+=1053.0;
    } else {
     s0+=4660.0;
     s1+=371.0;
    }
   }
  } else {
   if(i14<0.0015030468348413706){
    if(i33<0.0021515744738280773){
     s0+=9.0;
     s1+=614.0;
    } else {
     s0+=1.0;
     s1+=1384.0;
    }
   } else {
    s0+=111.0;
   }
  }
 }
}
if(i1<0.0009613633155822754){
 if(i30<1.1402404308319092){
  if(i18<1.009278416633606){
   if(i45<0.9998574256896973){
    if(i60<-0.0006056129932403564){
     s0+=10899.0;
     s1+=194.0;
    } else {
     s0+=38596.0;
     s1+=13.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=13770.0;
     s1+=2907.0;
    } else {
     s0+=47851.0;
     s1+=1688.0;
    }
   }
  } else {
   if(i26<1.116391897201538){
    if(i5<6.318092346191406e-06){
     s0+=16.0;
    } else {
     s0+=10.0;
     s1+=734.0;
    }
   } else {
    if(i25<1.0258362293243408){
     s0+=1840.0;
     s1+=157.0;
    } else {
     s0+=176.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i7<0.00647768983617425){
   if(i30<1.1426570415496826){
    if(i1<0.00017663836479187012){
     s0+=18.0;
    } else {
     s1+=26.0;
    }
   } else {
    s0+=1097.0;
   }
  } else {
   if(i63<0.9850375056266785){
    if(i17<0.007369309663772583){
     s0+=88.0;
     s1+=18.0;
    } else {
     s0+=10.0;
     s1+=79.0;
    }
   } else {
    if(i0<-2.9300008463906124e-06){
     s0+=33.0;
     s1+=1853.0;
    } else {
     s0+=17.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i17<0.17217689752578735){
  if(i22<0.0009705505217425525){
   if(i46<0.999744176864624){
    s0+=39.0;
   } else {
    if(i14<0.0005913418717682362){
     s1+=2361.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i42<0.001776161603629589){
    if(i14<0.00027761617093347013){
     s0+=42.0;
     s1+=355.0;
    } else {
     s0+=1648.0;
     s1+=16.0;
    }
   } else {
    if(i14<0.0007157411309890449){
     s0+=111.0;
     s1+=1916.0;
    } else {
     s0+=127.0;
    }
   }
  }
 } else {
  if(i33<0.0018939152359962463){
   s0+=68.0;
  } else {
   s1+=11821.0;
  }
 }
}
if(i4<1.0038566589355469){
 if(i15<0.21786090731620789){
  if(i8<1.0092170238494873){
   if(i30<1.153416395187378){
    if(i7<0.0036111040972173214){
     s0+=85836.0;
     s1+=974.0;
    } else {
     s0+=24036.0;
     s1+=3189.0;
    }
   } else {
    if(i67<0.20888245105743408){
     s0+=402.0;
     s1+=92.0;
    } else {
     s0+=52.0;
     s1+=397.0;
    }
   }
  } else {
   if(i33<0.0011313601862639189){
    if(i16<0.0013406886719167233){
     s0+=134.0;
    } else {
     s1+=499.0;
    }
   } else {
    if(i24<0.023947007954120636){
     s0+=1501.0;
     s1+=86.0;
    } else {
     s0+=154.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i51<-3.539994168022531e-06){
   if(i28<0.0025092484429478645){
    s0+=10.0;
   } else {
    if(i24<0.029614955186843872){
     s0+=34.0;
     s1+=41.0;
    } else {
     s0+=15.0;
     s1+=988.0;
    }
   }
  } else {
   if(i0<-6.106155342422426e-05){
    s1+=7.0;
   } else {
    if(i64<0.0055130100809037685){
     s0+=125.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i0<-7.427007949445397e-05){
  if(i7<0.004647194407880306){
   if(i45<1.0016528367996216){
    if(i70<-0.003835811745375395){
     s1+=1.0;
    } else {
     s0+=202.0;
    }
   } else {
    if(i19<1.0131566524505615){
     s0+=80.0;
     s1+=37.0;
    } else {
     s0+=7.0;
     s1+=587.0;
    }
   }
  } else {
   if(i3<1.002002477645874){
    if(i7<0.008371613919734955){
     s0+=44.0;
     s1+=8.0;
    } else {
     s1+=131.0;
    }
   } else {
    if(i14<0.0017358901677653193){
     s0+=53.0;
     s1+=14442.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i29<0.0005810260772705078){
   if(i31<0.00028240529354661703){
    if(i8<1.0128755569458008){
     s0+=208.0;
     s1+=10.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i36<0.0011413730680942535){
     s0+=6.0;
     s1+=1351.0;
    } else {
     s0+=184.0;
     s1+=542.0;
    }
   }
  } else {
   if(i16<0.003115683328360319){
    if(i60<-0.0021880269050598145){
     s0+=1.0;
     s1+=33.0;
    } else {
     s0+=3473.0;
     s1+=60.0;
    }
   } else {
    if(i7<0.007096848450601101){
     s0+=110.0;
    } else {
     s0+=32.0;
     s1+=340.0;
    }
   }
  }
 }
}
if(i4<1.0038505792617798){
 if(i30<1.1403480768203735){
  if(i6<0.00028079748153686523){
   if(i7<0.0034042554907500744){
    if(i26<1.116391897201538){
     s0+=24256.0;
     s1+=653.0;
    } else {
     s0+=54860.0;
     s1+=139.0;
    }
   } else {
    if(i28<0.0011695550056174397){
     s0+=2844.0;
     s1+=1381.0;
    } else {
     s0+=20151.0;
     s1+=492.0;
    }
   }
  } else {
   if(i22<0.0009399490663781762){
    if(i53<0.01191648654639721){
     s0+=1954.0;
     s1+=194.0;
    } else {
     s0+=161.0;
     s1+=1181.0;
    }
   } else {
    if(i17<0.16952744126319885){
     s0+=6731.0;
     s1+=733.0;
    } else {
     s0+=175.0;
     s1+=317.0;
    }
   }
  }
 } else {
  if(i6<0.00027692317962646484){
   if(i39<-0.0009365427540615201){
    if(i7<0.00475086597725749){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=154.0;
    }
   } else {
    if(i65<6.738586307619698e-06){
     s0+=852.0;
     s1+=66.0;
    } else {
     s0+=88.0;
     s1+=143.0;
    }
   }
  } else {
   if(i14<0.0001228402543347329){
    if(i36<0.017642324790358543){
     s0+=74.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i12<0.9703451991081238){
     s0+=29.0;
     s1+=30.0;
    } else {
     s0+=47.0;
     s1+=1121.0;
    }
   }
  }
 }
} else {
 if(i7<0.0038869944401085377){
  if(i6<0.0012527108192443848){
   if(i57<0.0005132310325279832){
    if(i48<-7.258827736222884e-06){
     s1+=151.0;
    } else {
     s0+=835.0;
     s1+=46.0;
    }
   } else {
    if(i28<0.000718105467967689){
     s1+=14.0;
    } else {
     s0+=2259.0;
     s1+=11.0;
    }
   }
  } else {
   if(i14<0.00031803082674741745){
    if(i50<8.970499038696289e-05){
     s1+=708.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i6<0.0026765763759613037){
     s0+=800.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i14<0.0007044161902740598){
   if(i8<1.0119889974594116){
    if(i15<0.12081006169319153){
     s0+=168.0;
     s1+=1291.0;
    } else {
     s0+=33.0;
     s1+=1845.0;
    }
   } else {
    if(i7<0.004346962086856365){
     s0+=14.0;
     s1+=176.0;
    } else {
     s0+=2.0;
     s1+=13354.0;
    }
   }
  } else {
   s0+=275.0;
  }
 }
}
if(i19<1.0081478357315063){
 if(i15<0.20905077457427979){
  if(i16<0.001784809399396181){
   if(i22<0.0005691718542948365){
    if(i58<0.0001158723171101883){
     s0+=22836.0;
     s1+=187.0;
    } else {
     s0+=6429.0;
     s1+=667.0;
    }
   } else {
    if(i42<0.0018626163946464658){
     s0+=58942.0;
     s1+=53.0;
    } else {
     s0+=3799.0;
     s1+=237.0;
    }
   }
  } else {
   if(i1<-0.0003929734230041504){
    if(i30<1.1230299472808838){
     s0+=17229.0;
     s1+=569.0;
    } else {
     s0+=486.0;
     s1+=266.0;
    }
   } else {
    if(i7<0.004120850935578346){
     s0+=2615.0;
     s1+=295.0;
    } else {
     s0+=1716.0;
     s1+=5127.0;
    }
   }
  }
 } else {
  if(i31<0.0005295779556035995){
   if(i21<1.007002830505371){
    if(i2<6.437301635742188e-05){
     s0+=153.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i33<0.0022813340183347464){
    if(i77<-0.0036739460192620754){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i2<-6.219744682312012e-05){
     s0+=72.0;
     s1+=105.0;
    } else {
     s0+=39.0;
     s1+=2802.0;
    }
   }
  }
 }
} else {
 if(i36<0.0020211278460919857){
  if(i36<0.001141583314165473){
   if(i23<0.00016695261001586914){
    if(i33<0.0007851232076063752){
     s1+=73.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i3<1.0064692497253418){
     s0+=3.0;
     s1+=1948.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i18<1.0226383209228516){
    if(i64<0.0017046686261892319){
     s0+=1805.0;
     s1+=17.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i50<1.9252300262451172e-05){
     s1+=128.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i43<-1.5595698641845956e-05){
   if(i30<1.0176918506622314){
    if(i54<1.0077540874481201){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=11978.0;
   }
  } else {
   if(i15<0.22667360305786133){
    s0+=132.0;
   } else {
    s1+=12.0;
   }
  }
 }
}
if(i12<1.0101649761199951){
 if(i3<1.002439260482788){
  if(i27<0.24885833263397217){
   if(i13<1.0140455961227417){
    if(i34<1.094810962677002){
     s0+=26478.0;
     s1+=2446.0;
    } else {
     s0+=81881.0;
     s1+=1275.0;
    }
   } else {
    if(i6<0.00026303529739379883){
     s0+=926.0;
     s1+=133.0;
    } else {
     s0+=168.0;
     s1+=444.0;
    }
   }
  } else {
   if(i51<-2.782228648356977e-06){
    if(i16<0.0024290871806442738){
     s0+=3.0;
     s1+=4.0;
    } else {
     s1+=377.0;
    }
   } else {
    s0+=78.0;
   }
  }
 } else {
  if(i16<0.0019625735003501177){
   if(i0<-4.138785880059004e-05){
    if(i42<0.001831516856327653){
     s0+=258.0;
     s1+=97.0;
    } else {
     s1+=92.0;
    }
   } else {
    if(i4<1.0077991485595703){
     s0+=2607.0;
     s1+=20.0;
    } else {
     s0+=18.0;
     s1+=21.0;
    }
   }
  } else {
   if(i30<1.104677438735962){
    if(i56<1.003211498260498){
     s0+=566.0;
     s1+=996.0;
    } else {
     s0+=1454.0;
     s1+=457.0;
    }
   } else {
    if(i1<-0.0004048347473144531){
     s0+=258.0;
     s1+=163.0;
    } else {
     s0+=214.0;
     s1+=3173.0;
    }
   }
  }
 }
} else {
 if(i24<0.008290056139230728){
  if(i37<1.0905089378356934){
   s1+=1164.0;
  } else {
   if(i22<0.0026569520123302937){
    if(i22<0.0009966697543859482){
     s0+=3.0;
     s1+=115.0;
    } else {
     s0+=1324.0;
    }
   } else {
    if(i36<0.0020895726047456264){
     s0+=61.0;
    } else {
     s0+=23.0;
     s1+=535.0;
    }
   }
  }
 } else {
  if(i29<0.0017098784446716309){
   if(i5<1.1622905731201172e-05){
    if(i0<-8.03626753622666e-05){
     s1+=119.0;
    } else {
     s0+=103.0;
     s1+=3.0;
    }
   } else {
    if(i0<-7.010162516962737e-05){
     s0+=19.0;
     s1+=12232.0;
    } else {
     s0+=62.0;
     s1+=462.0;
    }
   }
  } else {
   s0+=28.0;
  }
 }
}
if(i2<6.300210952758789e-05){
 if(i24<0.06421361863613129){
  if(i5<1.5079975128173828e-05){
   if(i56<1.0003290176391602){
    if(i29<7.927417755126953e-05){
     s0+=52246.0;
     s1+=158.0;
    } else {
     s0+=4037.0;
     s1+=390.0;
    }
   } else {
    if(i37<1.0867881774902344){
     s0+=13239.0;
     s1+=2008.0;
    } else {
     s0+=36438.0;
     s1+=935.0;
    }
   }
  } else {
   if(i24<0.008988622575998306){
    if(i7<0.003904703538864851){
     s0+=5072.0;
     s1+=16.0;
    } else {
     s0+=516.0;
     s1+=228.0;
    }
   } else {
    if(i20<-0.0012491941452026367){
     s0+=1851.0;
     s1+=754.0;
    } else {
     s0+=410.0;
     s1+=2138.0;
    }
   }
  }
 } else {
  if(i38<1.1163756847381592){
   if(i78<-0.051807254552841187){
    s1+=2.0;
   } else {
    s0+=269.0;
   }
  } else {
   if(i73<-0.020054757595062256){
    if(i5<2.574920654296875e-05){
     s0+=7.0;
     s1+=34.0;
    } else {
     s0+=54.0;
     s1+=22.0;
    }
   } else {
    if(i5<-5.91278076171875e-05){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=1147.0;
    }
   }
  }
 }
} else {
 if(i7<0.004009163938462734){
  if(i57<0.0005529706249944866){
   if(i37<1.0474592447280884){
    s0+=98.0;
   } else {
    if(i14<0.00022706566960550845){
     s0+=2.0;
     s1+=636.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i18<1.0202956199645996){
    if(i60<-0.0010635852813720703){
     s0+=8.0;
     s1+=83.0;
    } else {
     s0+=1717.0;
     s1+=42.0;
    }
   } else {
    if(i14<0.0007921720971353352){
     s0+=1.0;
     s1+=229.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i31<0.004037807695567608){
   if(i50<3.784894943237305e-05){
    if(i17<8.344650268554688e-06){
     s0+=43.0;
     s1+=33.0;
    } else {
     s0+=234.0;
     s1+=15600.0;
    }
   } else {
    s0+=35.0;
   }
  } else {
   if(i60<-0.02987128496170044){
    s1+=3.0;
   } else {
    s0+=99.0;
   }
  }
 }
}
if(i10<1.0135858058929443){
 if(i0<-8.081561827566475e-05){
  if(i27<0.04121014475822449){
   if(i61<-0.005478262901306152){
    if(i30<1.075555682182312){
     s0+=774.0;
     s1+=14.0;
    } else {
     s0+=131.0;
     s1+=61.0;
    }
   } else {
    if(i24<0.0371253527700901){
     s0+=88.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=61.0;
    }
   }
  } else {
   if(i49<-6.452563866332639e-06){
    s0+=291.0;
   } else {
    if(i61<-0.008305490016937256){
     s0+=88.0;
     s1+=63.0;
    } else {
     s0+=210.0;
     s1+=3594.0;
    }
   }
  }
 } else {
  if(i8<1.0075855255126953){
   if(i5<4.6193599700927734e-05){
    if(i24<0.006568320095539093){
     s0+=67362.0;
     s1+=539.0;
    } else {
     s0+=41275.0;
     s1+=3474.0;
    }
   } else {
    if(i4<1.0079002380371094){
     s0+=195.0;
     s1+=229.0;
    } else {
     s0+=12.0;
     s1+=212.0;
    }
   }
  } else {
   if(i26<1.116391897201538){
    if(i22<0.00022355734836310148){
     s0+=180.0;
    } else {
     s0+=112.0;
     s1+=1181.0;
    }
   } else {
    if(i59<-0.0013398420996963978){
     s0+=620.0;
     s1+=237.0;
    } else {
     s0+=3997.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i51<-3.4123584100598237e-06){
  if(i13<1.0237056016921997){
   if(i0<-4.257279942976311e-05){
    if(i58<4.063139931531623e-05){
     s0+=377.0;
     s1+=859.0;
    } else {
     s0+=59.0;
     s1+=1757.0;
    }
   } else {
    if(i57<0.0006223641103133559){
     s0+=34.0;
     s1+=122.0;
    } else {
     s0+=328.0;
     s1+=43.0;
    }
   }
  } else {
   if(i1<-0.0005761384963989258){
    if(i16<0.0046351756900548935){
     s0+=88.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i14<0.0007449550903402269){
     s0+=75.0;
     s1+=11673.0;
    } else {
     s0+=31.0;
    }
   }
  }
 } else {
  if(i5<-2.9206275939941406e-06){
   if(i22<0.0025109066627919674){
    s0+=106.0;
   } else {
    s1+=11.0;
   }
  } else {
   s0+=155.0;
  }
 }
}
if(i0<-9.840834536589682e-05){
 if(i17<0.017823785543441772){
  if(i10<0.9990075826644897){
   if(i76<-0.22769740223884583){
    if(i65<-5.580905053648166e-07){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i8<0.968063473701477){
     s0+=582.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  } else {
   if(i72<-0.001503586769104004){
    if(i24<0.007401167415082455){
     s0+=6.0;
     s1+=4.0;
    } else {
     s1+=41.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i51<-6.164798105601221e-05){
   s0+=75.0;
  } else {
   if(i29<0.0017111897468566895){
    if(i20<-0.004013955593109131){
     s0+=98.0;
     s1+=169.0;
    } else {
     s0+=159.0;
     s1+=14950.0;
    }
   } else {
    s0+=53.0;
   }
  }
 }
} else {
 if(i4<1.0032644271850586){
  if(i29<7.289648056030273e-05){
   if(i27<0.22756335139274597){
    if(i26<1.0905578136444092){
     s0+=18544.0;
     s1+=693.0;
    } else {
     s0+=57917.0;
     s1+=116.0;
    }
   } else {
    if(i7<0.0078077539801597595){
     s0+=103.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i41<1.114367961883545){
    if(i33<0.001045349519699812){
     s0+=5331.0;
     s1+=2243.0;
    } else {
     s0+=27704.0;
     s1+=1192.0;
    }
   } else {
    if(i66<0.20277778804302216){
     s0+=618.0;
     s1+=219.0;
    } else {
     s0+=99.0;
     s1+=400.0;
    }
   }
  }
 } else {
  if(i7<0.004014371428638697){
   if(i22<0.0009706164710223675){
    if(i33<0.0002453992492519319){
     s0+=923.0;
    } else {
     s1+=594.0;
    }
   } else {
    if(i42<0.0024280669167637825){
     s0+=3941.0;
     s1+=4.0;
    } else {
     s0+=33.0;
     s1+=34.0;
    }
   }
  } else {
   if(i56<1.0037565231323242){
    if(i46<0.9991967678070068){
     s0+=85.0;
    } else {
     s0+=132.0;
     s1+=3174.0;
    }
   } else {
    if(i38<1.1287411451339722){
     s0+=147.0;
     s1+=46.0;
    } else {
     s0+=23.0;
     s1+=266.0;
    }
   }
  }
 }
}
if(i12<1.010793924331665){
 if(i17<0.20049402117729187){
  if(i5<1.5079975128173828e-05){
   if(i31<0.0007055175956338644){
    if(i58<0.00017358608602080494){
     s0+=64620.0;
     s1+=154.0;
    } else {
     s0+=12999.0;
     s1+=232.0;
    }
   } else {
    if(i6<-6.648898124694824e-05){
     s0+=23262.0;
     s1+=578.0;
    } else {
     s0+=5249.0;
     s1+=2304.0;
    }
   }
  } else {
   if(i16<0.0020019463263452053){
    if(i33<0.002388163935393095){
     s0+=4730.0;
     s1+=206.0;
    } else {
     s0+=52.0;
     s1+=105.0;
    }
   } else {
    if(i46<0.9996132850646973){
     s0+=1081.0;
     s1+=9.0;
    } else {
     s0+=2942.0;
     s1+=4025.0;
    }
   }
  }
 } else {
  if(i7<0.005585376173257828){
   if(i54<1.0019843578338623){
    if(i45<1.000819444656372){
     s0+=185.0;
    } else {
     s0+=48.0;
     s1+=4.0;
    }
   } else {
    if(i29<0.00040465593338012695){
     s0+=24.0;
     s1+=34.0;
    } else {
     s0+=70.0;
    }
   }
  } else {
   if(i28<0.0021288907155394554){
    s0+=14.0;
   } else {
    if(i24<0.013767208904027939){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=2617.0;
    }
   }
  }
 }
} else {
 if(i36<0.0019654463976621628){
  if(i36<0.00114271673373878){
   if(i34<1.1209434270858765){
    s1+=1640.0;
   } else {
    s0+=12.0;
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=206.0;
   } else {
    if(i40<-0.0001517573109595105){
     s1+=15.0;
    } else {
     s0+=1121.0;
    }
   }
  }
 } else {
  if(i21<0.9980076551437378){
   if(i15<0.15720131993293762){
    if(i2<2.422928810119629e-05){
     s0+=63.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i22<0.002514489460736513){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=91.0;
    }
   }
  } else {
   if(i21<1.0008037090301514){
    if(i6<0.0003033578395843506){
     s0+=47.0;
     s1+=18.0;
    } else {
     s1+=290.0;
    }
   } else {
    if(i45<0.9969093799591064){
     s0+=3.0;
    } else {
     s0+=14.0;
     s1+=11754.0;
    }
   }
  }
 }
}
if(i3<1.0026252269744873){
 if(i31<0.0007204670691862702){
  if(i13<0.9941127300262451){
   if(i3<0.9988037347793579){
    s0+=7226.0;
   } else {
    if(i38<1.0258550643920898){
     s0+=403.0;
     s1+=144.0;
    } else {
     s0+=6097.0;
     s1+=111.0;
    }
   }
  } else {
   if(i33<0.0018579900497570634){
    if(i23<-5.644559860229492e-05){
     s0+=9617.0;
     s1+=109.0;
    } else {
     s0+=51659.0;
     s1+=24.0;
    }
   } else {
    if(i43<-1.5558556697214954e-05){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=4540.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i26<1.1164028644561768){
   if(i24<0.008642885833978653){
    if(i46<1.000253677368164){
     s0+=2957.0;
     s1+=228.0;
    } else {
     s0+=7.0;
     s1+=313.0;
    }
   } else {
    if(i34<1.051046371459961){
     s0+=254.0;
    } else {
     s0+=170.0;
     s1+=2934.0;
    }
   }
  } else {
   if(i63<1.121600866317749){
    if(i27<0.19973203539848328){
     s0+=27043.0;
     s1+=810.0;
    } else {
     s0+=217.0;
     s1+=224.0;
    }
   } else {
    if(i42<0.005022437311708927){
     s0+=120.0;
     s1+=31.0;
    } else {
     s1+=622.0;
    }
   }
  }
 }
} else {
 if(i24<0.012793916277587414){
  if(i11<1.0230003595352173){
   if(i22<0.0010737174889072776){
    if(i38<1.0450111627578735){
     s0+=727.0;
     s1+=73.0;
    } else {
     s0+=12.0;
     s1+=1696.0;
    }
   } else {
    if(i32<1.176374077796936){
     s0+=3388.0;
     s1+=22.0;
    } else {
     s0+=576.0;
     s1+=411.0;
    }
   }
  } else {
   if(i20<0.0016167759895324707){
    if(i45<1.0031981468200684){
     s0+=7.0;
     s1+=104.0;
    } else {
     s0+=68.0;
     s1+=5.0;
    }
   } else {
    s1+=1006.0;
   }
  }
 } else {
  if(i1<0.00013935565948486328){
   if(i17<0.13600444793701172){
    if(i74<0.027689766138792038){
     s0+=760.0;
     s1+=129.0;
    } else {
     s0+=48.0;
     s1+=113.0;
    }
   } else {
    if(i31<0.0018067609053105116){
     s0+=99.0;
     s1+=57.0;
    } else {
     s0+=14.0;
     s1+=310.0;
    }
   }
  } else {
   if(i13<0.9095253944396973){
    if(i29<0.0007013678550720215){
     s0+=73.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=115.0;
    }
   } else {
    if(i7<0.004828284494578838){
     s0+=160.0;
     s1+=283.0;
    } else {
     s0+=172.0;
     s1+=14429.0;
    }
   }
  }
 }
}
if(i21<1.00459885597229){
 if(i8<1.0116868019104004){
  if(i0<-9.140255133388564e-05){
   if(i18<0.9425340890884399){
    if(i63<1.0224146842956543){
     s0+=414.0;
     s1+=17.0;
    } else {
     s0+=9.0;
     s1+=43.0;
    }
   } else {
    if(i49<-5.975767635391094e-06){
     s0+=75.0;
    } else {
     s0+=123.0;
     s1+=952.0;
    }
   }
  } else {
   if(i5<1.329183578491211e-05){
    if(i31<0.0006903324974700809){
     s0+=75520.0;
     s1+=389.0;
    } else {
     s0+=28450.0;
     s1+=2506.0;
    }
   } else {
    if(i39<-0.00016945242532528937){
     s0+=955.0;
     s1+=826.0;
    } else {
     s0+=5827.0;
     s1+=676.0;
    }
   }
  }
 } else {
  if(i37<1.6811659336090088){
   if(i5<8.64267349243164e-06){
    if(i35<0.10671734809875488){
     s0+=370.0;
     s1+=64.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i14<0.0010047636460512877){
     s0+=252.0;
     s1+=2367.0;
    } else {
     s0+=128.0;
    }
   }
  } else {
   s0+=150.0;
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i33<0.0011984298471361399){
   if(i42<0.0001769081427482888){
    if(i60<0.0008515119552612305){
     s0+=348.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   } else {
    if(i34<1.116804838180542){
     s0+=1.0;
     s1+=1842.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i14<0.0001457967737223953){
    if(i20<-0.002411186695098877){
     s0+=15.0;
    } else {
     s0+=25.0;
     s1+=284.0;
    }
   } else {
    if(i11<0.9773362278938293){
     s1+=7.0;
    } else {
     s0+=2924.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i20<-0.003131270408630371){
   if(i15<0.09512004256248474){
    if(i51<-1.9225713913328946e-05){
     s0+=23.0;
     s1+=79.0;
    } else {
     s0+=493.0;
     s1+=67.0;
    }
   } else {
    if(i64<0.001130741904489696){
     s0+=32.0;
     s1+=21.0;
    } else {
     s0+=34.0;
     s1+=233.0;
    }
   }
  } else {
   if(i30<1.055739164352417){
    if(i1<0.002144157886505127){
     s0+=113.0;
     s1+=26.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i12<1.0136058330535889){
     s0+=214.0;
     s1+=3248.0;
    } else {
     s1+=10520.0;
    }
   }
  }
 }
}
if(i0<-9.841620340012014e-05){
 if(i27<0.04262670874595642){
  if(i75<-0.006957143545150757){
   if(i41<1.048040509223938){
    if(i44<0.018122375011444092){
     s0+=102.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i6<-1.33514404296875e-05){
     s0+=6.0;
    } else {
     s0+=8.0;
     s1+=90.0;
    }
   }
  } else {
   if(i3<1.0064740180969238){
    if(i65<-7.885179002187215e-06){
     s1+=1.0;
    } else {
     s0+=547.0;
     s1+=7.0;
    }
   } else {
    if(i66<0.4301816523075104){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i69<5.794467142550275e-06){
   if(i46<0.997994065284729){
    s0+=55.0;
   } else {
    if(i51<-5.673414852935821e-05){
     s0+=68.0;
    } else {
     s0+=77.0;
     s1+=15346.0;
    }
   }
  } else {
   s0+=121.0;
  }
 }
} else {
 if(i8<1.0106234550476074){
  if(i7<0.0036593670956790447){
   if(i23<0.00021386146545410156){
    if(i48<-9.638784831622615e-06){
     s0+=28.0;
     s1+=66.0;
    } else {
     s0+=88864.0;
     s1+=1032.0;
    }
   } else {
    if(i36<0.0008323362562805414){
     s1+=110.0;
    } else {
     s0+=84.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i54<0.9993978142738342){
     s0+=2725.0;
     s1+=121.0;
    } else {
     s0+=270.0;
     s1+=2482.0;
    }
   } else {
    if(i1<2.5928020477294922e-05){
     s0+=20048.0;
     s1+=666.0;
    } else {
     s0+=631.0;
     s1+=1291.0;
    }
   }
  }
 } else {
  if(i14<0.000323833548463881){
   if(i43<-1.2239957868587226e-05){
    if(i2<2.4437904357910156e-06){
     s0+=236.0;
     s1+=57.0;
    } else {
     s0+=120.0;
     s1+=3005.0;
    }
   } else {
    if(i31<0.0010308311320841312){
     s0+=566.0;
     s1+=22.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i36<0.007022320292890072){
    if(i38<1.1921825408935547){
     s0+=1852.0;
     s1+=7.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i29<6.628036499023438e-05){
     s0+=2.0;
    } else {
     s1+=56.0;
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
