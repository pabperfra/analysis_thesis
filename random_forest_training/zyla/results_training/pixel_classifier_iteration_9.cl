/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 top_hat_box=15 top_hat_box=30 gaussian_blur=10 difference_of_gaussian=15 top_hat_box=10 small_hessian_eigenvalue_of_gaussian_blur=10 laplace_box_of_gaussian_blur=15 maximum_box=3 maximum_box=2 median_box=5 difference_of_gaussian=10 gaussian_blur=5 difference_of_gaussian=20 gaussian_blur=3 laplace_box_of_gaussian_blur=20 gaussian_blur=2 gaussian_blur=15 mean_box=10 maximum_box=5 sobel_of_gaussian_blur=10 mean_box=15 laplace_box_of_gaussian_blur=10 median_box=3 gaussian_blur=1 top_hat_box=5 maximum_box=1 mean_box=3 sobel_of_median_box=5 variance_box=2 maximum_box=30 sobel_of_gaussian_blur=5 mean_box=5 variance_box=15 maximum_box=10 maximum_box=15 mean_box=1 variance_box=10 variance_box=3 top_hat_box=2 small_hessian_eigenvalue_of_gaussian_blur=15 maximum_box=20 sobel_of_median_box=3 variance_box=30 top_hat_box=3 variance_box=20 variance_box=5 gaussian_blur=30 laplace_box_of_gaussian_blur=2 sobel_of_gaussian_blur=15 gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=2 laplace_box_of_gaussian_blur=1 difference_of_gaussian=30 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=10 large_hessian_eigenvalue_of_gaussian_blur=3 laplace_box_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=1 sobel_of_gaussian_blur=3 difference_of_gaussian=1 top_hat_box=1 large_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=2 mean_box=20 mean_box=30 sobel_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 75
max_depth = 5
num_trees = 250
feature_importances = 0.10463039783306974,0.08772924503449968,0.10298562185466861,0.04534852995980366,0.06026906635060002,0.06417839719238351,0.056199402714497526,0.055011443601929964,0.05199463566353415,0.045170862691883196,0.03463006696223199,0.011551117595921307,0.03398609681664065,0.022470716402615665,0.005740281258805016,0.009327506308770179,0.009121090755267408,0.010176948305871522,0.014736190659028146,0.007093517610924104,0.01151232249181532,0.02694872798904993,0.012368449694922217,0.008735234304791136,0.000724373398736289,0.0016558362790056692,0.008183463543311035,0.01026443405308842,0.0061870609166528754,0.00287243648972781,0.0034857180708418186,0.003475444951516401,0.0055024506778478645,0.00273617046615419,0.005678903307487192,0.0030416685615638492,0.0005904008481106471,0.002278140370654592,0.0013731708473479324,0.00204957047119045,0.0022501255846518616,0.003000167220620791,0.0018368109749218188,0.0026926484376137557,0.002354301340924255,0.0023876774656099516,0.002415451673397521,0.0012322477070779837,0.001445692027065374,0.0011258986445352966,0.002775176319051398,0.0009821822837995727,0.0015855795384618434,0.001505374582717113,0.002488464082930959,0.001509937426027466,0.0013228198934095436,0.0007311083236929158,0.0011298443196761285,0.0013920035041493494,0.0008507678571030271,0.0007910938919336322,0.0002945356222066977,0.0012234834029820677,0.0009424632389075248,0.001171630233402485,0.0008959553952128961,0.0008063927853855017,0.0006744045918112521,0.0005394367996115801,0.0008246864338864871,0.0011961088267685401,0.0005560927825423521,0.0007203301056196028,0.00033399337552976233
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
if(i7<3.8564205169677734e-05){
 if(i26<1.0401114225387573){
  if(i0<0.08032220602035522){
   if(i62<0.009573282673954964){
    if(i52<-0.00350344181060791){
     s0+=142.0;
     s1+=89.0;
    } else {
     s0+=44698.0;
     s1+=168.0;
    }
   } else {
    if(i33<0.0010417961748316884){
     s0+=5376.0;
     s1+=1026.0;
    } else {
     s0+=15724.0;
     s1+=373.0;
    }
   }
  } else {
   if(i19<1.049466609954834){
    if(i19<1.0428669452667236){
     s0+=135.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=47.0;
    }
   } else {
    if(i73<0.9951961636543274){
     s0+=25.0;
    } else {
     s0+=49.0;
     s1+=1044.0;
    }
   }
  }
 } else {
  if(i1<0.0895264744758606){
   if(i65<-8.784602687228471e-05){
    if(i14<1.015803575515747){
     s0+=74.0;
     s1+=116.0;
    } else {
     s0+=59.0;
     s1+=1.0;
    }
   } else {
    if(i6<-2.9674087272724137e-05){
     s0+=526.0;
     s1+=266.0;
    } else {
     s0+=2441.0;
     s1+=141.0;
    }
   }
  } else {
   if(i44<0.06770572066307068){
    if(i15<-1.868605613708496e-05){
     s0+=15.0;
    } else {
     s0+=34.0;
     s1+=1294.0;
    }
   } else {
    if(i45<0.0038809452671557665){
     s0+=775.0;
     s1+=327.0;
    } else {
     s0+=188.0;
     s1+=792.0;
    }
   }
  }
 }
} else {
 if(i38<0.00023213730310089886){
  if(i18<1.0061275959014893){
   if(i35<1.0657644271850586){
    s0+=200.0;
   } else {
    if(i35<1.166407585144043){
     s1+=17.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i38<0.00015445094322785735){
    if(i46<0.0002049295580945909){
     s0+=11.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=32.0;
   }
  }
 } else {
  if(i17<0.9982088208198547){
   s0+=75.0;
  } else {
   if(i4<0.0009366869926452637){
    if(i59<-0.0002639506128616631){
     s0+=82.0;
     s1+=1087.0;
    } else {
     s0+=180.0;
     s1+=375.0;
    }
   } else {
    if(i3<1.0039582252502441){
     s0+=46.0;
     s1+=338.0;
    } else {
     s0+=51.0;
     s1+=9727.0;
    }
   }
  }
 }
}
if(i32<1.0072247982025146){
 if(i8<1.0452215671539307){
  if(i3<1.0024747848510742){
   if(i42<0.026191672310233116){
    if(i58<-0.0027133822441101074){
     s0+=371.0;
     s1+=195.0;
    } else {
     s0+=53335.0;
     s1+=203.0;
    }
   } else {
    if(i0<0.07770729064941406){
     s0+=8029.0;
     s1+=456.0;
    } else {
     s0+=125.0;
     s1+=256.0;
    }
   }
  } else {
   if(i46<0.00023939339735079557){
    s0+=30.0;
   } else {
    if(i21<1.0001490116119385){
     s0+=1.0;
    } else {
     s1+=148.0;
    }
   }
  }
 } else {
  if(i6<-2.3185793907032348e-05){
   if(i20<0.007300575263798237){
    if(i41<1.139474630355835){
     s0+=90.0;
     s1+=730.0;
    } else {
     s0+=1439.0;
     s1+=816.0;
    }
   } else {
    if(i12<0.9831135272979736){
     s0+=286.0;
     s1+=303.0;
    } else {
     s0+=110.0;
     s1+=2579.0;
    }
   }
  } else {
   if(i7<3.123283386230469e-05){
    if(i1<0.06633251905441284){
     s0+=4288.0;
     s1+=390.0;
    } else {
     s0+=1207.0;
     s1+=629.0;
    }
   } else {
    if(i13<0.0006175041198730469){
     s0+=15.0;
     s1+=11.0;
    } else {
     s1+=90.0;
    }
   }
  }
 }
} else {
 if(i1<0.06470206379890442){
  if(i12<1.0094141960144043){
   if(i66<0.0006250226870179176){
    if(i18<1.0053672790527344){
     s0+=1229.0;
     s1+=64.0;
    } else {
     s0+=40.0;
     s1+=38.0;
    }
   } else {
    if(i29<0.0002558646956458688){
     s0+=31.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=148.0;
    }
   }
  } else {
   if(i49<0.000769929145462811){
    if(i11<0.0016233325004577637){
     s0+=150.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i69<-3.9346905396087095e-06){
     s1+=269.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i69<6.131997452030191e-07){
   if(i6<-2.5253051717299968e-05){
    if(i73<1.0010703802108765){
     s0+=33.0;
     s1+=8992.0;
    } else {
     s0+=60.0;
     s1+=627.0;
    }
   } else {
    if(i20<0.003179419320076704){
     s0+=259.0;
     s1+=34.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i70<4.20944297729875e-06){
    if(i29<0.0027054953388869762){
     s1+=7.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=41.0;
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i25<0.0652681291103363){
  if(i6<-6.441008736146614e-05){
   if(i18<1.000656008720398){
    if(i5<0.07642108201980591){
     s0+=1224.0;
     s1+=180.0;
    } else {
     s0+=4.0;
     s1+=223.0;
    }
   } else {
    if(i2<0.01318100094795227){
     s0+=35.0;
     s1+=29.0;
    } else {
     s0+=34.0;
     s1+=896.0;
    }
   }
  } else {
   if(i42<0.026188760995864868){
    if(i24<0.9715438485145569){
     s0+=353.0;
     s1+=165.0;
    } else {
     s0+=56893.0;
     s1+=680.0;
    }
   } else {
    if(i4<-0.0002237558364868164){
     s0+=8035.0;
     s1+=669.0;
    } else {
     s0+=1704.0;
     s1+=1231.0;
    }
   }
  }
 } else {
  if(i6<-2.370870060985908e-05){
   if(i2<0.1316443681716919){
    if(i63<0.004373431205749512){
     s0+=106.0;
     s1+=316.0;
    } else {
     s0+=267.0;
     s1+=39.0;
    }
   } else {
    if(i31<0.021599180996418){
     s0+=37.0;
     s1+=165.0;
    } else {
     s0+=1.0;
     s1+=1316.0;
    }
   }
  } else {
   if(i34<1.2561023235321045){
    if(i28<0.028788749128580093){
     s0+=704.0;
     s1+=77.0;
    } else {
     s0+=81.0;
     s1+=140.0;
    }
   } else {
    if(i40<-1.1541420462890528e-05){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=378.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i1<0.08123615384101868){
  if(i34<1.1160385608673096){
   if(i37<0.0022503011859953403){
    if(i20<0.0009523286717012525){
     s0+=38.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=792.0;
    }
   } else {
    s0+=49.0;
   }
  } else {
   if(i54<0.00029036402702331543){
    if(i20<0.006899855099618435){
     s0+=841.0;
     s1+=50.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i7<-2.512335777282715e-05){
     s0+=4.0;
    } else {
     s1+=92.0;
    }
   }
  }
 } else {
  if(i3<1.0016825199127197){
   if(i69<9.246357421943685e-07){
    if(i50<1.0001399517059326){
     s0+=52.0;
     s1+=906.0;
    } else {
     s0+=230.0;
     s1+=279.0;
    }
   } else {
    if(i6<-3.443681634962559e-05){
     s1+=1.0;
    } else {
     s0+=64.0;
    }
   }
  } else {
   if(i20<0.0026652710512280464){
    if(i11<0.0014358162879943848){
     s0+=45.0;
     s1+=26.0;
    } else {
     s1+=240.0;
    }
   } else {
    if(i32<1.0004189014434814){
     s0+=26.0;
     s1+=495.0;
    } else {
     s1+=7961.0;
    }
   }
  }
 }
}
if(i13<0.00044780969619750977){
 if(i27<1.0082091093063354){
  if(i0<0.08580175042152405){
   if(i36<0.9786438941955566){
    if(i0<0.04581466317176819){
     s0+=4940.0;
     s1+=346.0;
    } else {
     s0+=208.0;
     s1+=229.0;
    }
   } else {
    if(i41<1.0714969635009766){
     s0+=35328.0;
     s1+=14.0;
    } else {
     s0+=25912.0;
     s1+=1028.0;
    }
   }
  } else {
   if(i54<-0.00013780593872070312){
    if(i3<0.9977397918701172){
     s0+=347.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i65<0.00046908462536521256){
     s0+=293.0;
     s1+=467.0;
    } else {
     s0+=103.0;
     s1+=1094.0;
    }
   }
  }
 } else {
  if(i18<1.003378987312317){
   if(i31<0.013804584741592407){
    if(i6<-2.9918581276433542e-05){
     s0+=182.0;
     s1+=264.0;
    } else {
     s0+=1070.0;
     s1+=23.0;
    }
   } else {
    if(i2<0.07765048742294312){
     s0+=513.0;
     s1+=114.0;
    } else {
     s0+=347.0;
     s1+=1321.0;
    }
   }
  } else {
   if(i14<1.0186798572540283){
    if(i30<1.2392117977142334){
     s0+=8.0;
     s1+=338.0;
    } else {
     s0+=168.0;
     s1+=74.0;
    }
   } else {
    if(i0<0.09187331795692444){
     s0+=19.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=699.0;
    }
   }
  }
 }
} else {
 if(i11<0.00047767162322998047){
  if(i5<0.08103537559509277){
   if(i70<1.0355435733799823e-05){
    if(i45<0.00043940305477008224){
     s0+=202.0;
    } else {
     s0+=148.0;
     s1+=433.0;
    }
   } else {
    if(i31<0.036004990339279175){
     s0+=1074.0;
     s1+=113.0;
    } else {
     s0+=19.0;
     s1+=127.0;
    }
   }
  } else {
   if(i20<0.005328295286744833){
    if(i36<1.0250455141067505){
     s0+=15.0;
     s1+=78.0;
    } else {
     s0+=119.0;
     s1+=21.0;
    }
   } else {
    if(i52<0.004406452178955078){
     s0+=6.0;
     s1+=894.0;
    } else {
     s0+=71.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i29<0.00016199224046431482){
   if(i0<0.06905743479728699){
    if(i49<0.0008700028993189335){
     s0+=58.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i34<1.0590304136276245){
    s0+=13.0;
   } else {
    if(i22<0.00021058320999145508){
     s0+=13.0;
     s1+=1158.0;
    } else {
     s1+=7459.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i1<0.0766308605670929){
  if(i10<1.0083461999893188){
   if(i8<1.0398929119110107){
    if(i38<0.0002509665791876614){
     s0+=47297.0;
     s1+=119.0;
    } else {
     s0+=11228.0;
     s1+=485.0;
    }
   } else {
    if(i0<0.07881468534469604){
     s0+=5592.0;
     s1+=656.0;
    } else {
     s0+=22.0;
     s1+=91.0;
    }
   }
  } else {
   if(i41<1.1039612293243408){
    if(i3<0.9996689558029175){
     s0+=1.0;
    } else {
     s1+=193.0;
    }
   } else {
    if(i6<-6.321464024949819e-05){
     s1+=19.0;
    } else {
     s0+=135.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<-9.755587598192506e-06){
   if(i19<1.043400764465332){
    if(i3<1.0008363723754883){
     s0+=62.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i18<0.994350254535675){
     s0+=70.0;
     s1+=33.0;
    } else {
     s0+=29.0;
     s1+=897.0;
    }
   }
  } else {
   if(i18<0.9925369024276733){
    if(i57<0.003012096043676138){
     s0+=175.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i10<0.9940930604934692){
     s0+=9.0;
     s1+=44.0;
    } else {
     s0+=101.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i6<-4.6327371819643304e-05){
  if(i12<0.9994286298751831){
   if(i2<0.11519795656204224){
    if(i9<1.0884358882904053){
     s0+=600.0;
     s1+=254.0;
    } else {
     s0+=10.0;
     s1+=232.0;
    }
   } else {
    if(i46<0.006571111269295216){
     s0+=30.0;
     s1+=173.0;
    } else {
     s0+=1.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i0<0.06345358490943909){
    if(i21<1.0017645359039307){
     s0+=84.0;
     s1+=43.0;
    } else {
     s0+=10.0;
     s1+=224.0;
    }
   } else {
    if(i17<0.9984340071678162){
     s0+=4.0;
    } else {
     s0+=62.0;
     s1+=10461.0;
    }
   }
  }
 } else {
  if(i21<1.0004069805145264){
   if(i2<0.07753753662109375){
    if(i45<0.0009340601973235607){
     s0+=1402.0;
     s1+=250.0;
    } else {
     s0+=2070.0;
     s1+=65.0;
    }
   } else {
    if(i53<0.043376028537750244){
     s0+=288.0;
     s1+=547.0;
    } else {
     s0+=796.0;
     s1+=268.0;
    }
   }
  } else {
   if(i34<1.1082366704940796){
    if(i43<0.0021796436049044132){
     s0+=7.0;
     s1+=495.0;
    } else {
     s0+=26.0;
     s1+=7.0;
    }
   } else {
    if(i28<0.036709196865558624){
     s0+=888.0;
     s1+=160.0;
    } else {
     s0+=65.0;
     s1+=247.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i0<0.08136272430419922){
  if(i17<1.001896858215332){
   if(i55<-0.0013793110847473145){
    if(i35<1.1823735237121582){
     s0+=1811.0;
     s1+=811.0;
    } else {
     s0+=3550.0;
     s1+=138.0;
    }
   } else {
    if(i9<1.0406912565231323){
     s0+=58197.0;
     s1+=392.0;
    } else {
     s0+=4090.0;
     s1+=456.0;
    }
   }
  } else {
   if(i63<-0.0006981194019317627){
    if(i7<1.3887882232666016e-05){
     s0+=109.0;
     s1+=12.0;
    } else {
     s0+=65.0;
     s1+=402.0;
    }
   } else {
    if(i45<0.0021012919023633003){
     s0+=7.0;
     s1+=55.0;
    } else {
     s0+=466.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i50<0.9992974996566772){
   if(i33<0.025099920108914375){
    if(i43<0.001740775303915143){
     s0+=402.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=20.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i2<0.12476512789726257){
    if(i36<1.026448369026184){
     s0+=336.0;
     s1+=1219.0;
    } else {
     s0+=327.0;
     s1+=96.0;
    }
   } else {
    if(i64<0.05972397327423096){
     s0+=73.0;
     s1+=2176.0;
    } else {
     s0+=144.0;
     s1+=293.0;
    }
   }
  }
 }
} else {
 if(i6<-4.333112156018615e-05){
  if(i17<0.9985671043395996){
   if(i32<1.0054491758346558){
    s1+=1.0;
   } else {
    s0+=5.0;
   }
  } else {
   if(i5<0.05845290422439575){
    if(i21<0.9998148679733276){
     s0+=45.0;
     s1+=65.0;
    } else {
     s0+=10.0;
     s1+=949.0;
    }
   } else {
    if(i31<0.014746485278010368){
     s0+=27.0;
     s1+=1201.0;
    } else {
     s0+=13.0;
     s1+=8183.0;
    }
   }
  }
 } else {
  if(i1<0.09794250130653381){
   if(i37<0.001374655868858099){
    if(i40<-2.7869537007063627e-06){
     s0+=11.0;
     s1+=181.0;
    } else {
     s0+=35.0;
     s1+=7.0;
    }
   } else {
    if(i7<6.473064422607422e-05){
     s0+=970.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  } else {
   if(i30<1.255998969078064){
    if(i66<2.532906728447415e-05){
     s0+=13.0;
    } else {
     s0+=66.0;
     s1+=456.0;
    }
   } else {
    if(i43<0.00498213991522789){
     s0+=133.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=66.0;
    }
   }
  }
 }
}
if(i1<0.07908213138580322){
 if(i18<1.0052664279937744){
  if(i8<1.0451608896255493){
   if(i19<1.042891263961792){
    if(i55<-0.0013036131858825684){
     s0+=1537.0;
     s1+=110.0;
    } else {
     s0+=50338.0;
     s1+=56.0;
    }
   } else {
    if(i7<3.0100345611572266e-05){
     s0+=9902.0;
     s1+=620.0;
    } else {
     s0+=44.0;
     s1+=86.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i28<0.014349397271871567){
     s0+=1666.0;
     s1+=293.0;
    } else {
     s0+=297.0;
     s1+=697.0;
    }
   } else {
    if(i6<-4.634067590814084e-05){
     s0+=699.0;
     s1+=388.0;
    } else {
     s0+=4559.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i21<1.0019056797027588){
   if(i41<1.1117658615112305){
    s1+=62.0;
   } else {
    if(i28<0.03784199059009552){
     s0+=304.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i58<0.004462718963623047){
    if(i66<0.00030851742485538125){
     s0+=25.0;
     s1+=88.0;
    } else {
     s0+=1.0;
     s1+=724.0;
    }
   } else {
    if(i32<1.0249840021133423){
     s0+=44.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00041115283966064453){
  if(i49<0.004001407418400049){
   if(i41<1.476589322090149){
    s0+=429.0;
   } else {
    if(i29<0.0008329923148266971){
     s0+=25.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  } else {
   s1+=2.0;
  }
 } else {
  if(i31<0.024053752422332764){
   if(i48<0.015564531087875366){
    if(i59<-7.625766738783568e-05){
     s0+=137.0;
     s1+=2996.0;
    } else {
     s0+=208.0;
     s1+=414.0;
    }
   } else {
    if(i70<-6.616718110308284e-06){
     s1+=159.0;
    } else {
     s0+=777.0;
     s1+=346.0;
    }
   }
  } else {
   if(i40<3.6601336432795506e-06){
    if(i6<-1.5364841601694934e-05){
     s0+=70.0;
     s1+=9737.0;
    } else {
     s0+=92.0;
     s1+=109.0;
    }
   } else {
    if(i33<0.002237990265712142){
     s1+=1.0;
    } else {
     s0+=24.0;
    }
   }
  }
 }
}
if(i2<0.08523550629615784){
 if(i3<1.0024913549423218){
  if(i19<1.0451585054397583){
   if(i55<-0.0012906193733215332){
    if(i54<-5.626678466796875e-05){
     s0+=1114.0;
     s1+=2.0;
    } else {
     s0+=630.0;
     s1+=143.0;
    }
   } else {
    if(i19<1.0428826808929443){
     s0+=50096.0;
     s1+=61.0;
    } else {
     s0+=2018.0;
     s1+=41.0;
    }
   }
  } else {
   if(i41<1.1037919521331787){
    if(i45<0.00029567861929535866){
     s0+=2238.0;
    } else {
     s0+=1429.0;
     s1+=1389.0;
    }
   } else {
    if(i15<1.531839370727539e-05){
     s0+=10295.0;
     s1+=363.0;
    } else {
     s0+=1143.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i63<0.0018364787101745605){
   if(i58<0.0035458803176879883){
    if(i20<0.001819764031097293){
     s0+=81.0;
     s1+=12.0;
    } else {
     s0+=48.0;
     s1+=945.0;
    }
   } else {
    if(i54<0.00023442506790161133){
     s0+=83.0;
     s1+=3.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i62<0.033901192247867584){
    if(i26<1.0570824146270752){
     s1+=11.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i40<-3.8374706491595134e-05){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=32.0;
    }
   }
  }
 }
} else {
 if(i15<-1.5407800674438477e-05){
  if(i6<-4.874927253695205e-05){
   if(i57<0.0014102451968938112){
    s0+=5.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i73<0.9998743534088135){
    s0+=547.0;
   } else {
    if(i66<0.00014689165982417762){
     s1+=8.0;
    } else {
     s0+=54.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i1<0.1190640926361084){
   if(i64<0.04132121801376343){
    if(i48<0.016555219888687134){
     s0+=126.0;
     s1+=2225.0;
    } else {
     s0+=337.0;
     s1+=63.0;
    }
   } else {
    if(i12<1.002196192741394){
     s0+=356.0;
     s1+=56.0;
    } else {
     s0+=25.0;
     s1+=90.0;
    }
   }
  } else {
   if(i49<0.0003898442955687642){
    if(i6<-2.2633554181084037e-05){
     s0+=9.0;
     s1+=187.0;
    } else {
     s0+=189.0;
     s1+=64.0;
    }
   } else {
    if(i54<-0.00013440847396850586){
     s0+=56.0;
     s1+=104.0;
    } else {
     s0+=171.0;
     s1+=11109.0;
    }
   }
  }
 }
}
if(i10<1.0081526041030884){
 if(i46<0.0004931926960125566){
  if(i6<-3.8688769564032555e-05){
   if(i3<1.0008363723754883){
    if(i62<0.01871667057275772){
     s0+=562.0;
     s1+=7.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i66<0.0002576248371042311){
     s0+=25.0;
     s1+=6.0;
    } else {
     s1+=141.0;
    }
   }
  } else {
   if(i16<1.0079092979431152){
    if(i57<0.0007543103420175612){
     s0+=50328.0;
     s1+=171.0;
    } else {
     s0+=453.0;
     s1+=133.0;
    }
   } else {
    if(i35<1.0862454175949097){
     s0+=54.0;
     s1+=72.0;
    } else {
     s0+=73.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i1<0.07742694020271301){
   if(i52<0.0007212162017822266){
    if(i13<0.0006172060966491699){
     s0+=5954.0;
     s1+=1163.0;
    } else {
     s0+=198.0;
     s1+=449.0;
    }
   } else {
    if(i45<0.000871051917783916){
     s0+=1458.0;
     s1+=256.0;
    } else {
     s0+=9233.0;
     s1+=102.0;
    }
   }
  } else {
   if(i15<-1.2964010238647461e-05){
    if(i47<0.9997020959854126){
     s0+=352.0;
     s1+=3.0;
    } else {
     s0+=35.0;
     s1+=17.0;
    }
   } else {
    if(i52<0.003941476345062256){
     s0+=179.0;
     s1+=2508.0;
    } else {
     s0+=704.0;
     s1+=1155.0;
    }
   }
  }
 }
} else {
 if(i11<0.0014148354530334473){
  if(i45<0.0060746679082512856){
   if(i30<1.2392117977142334){
    if(i6<-2.2052408894523978e-05){
     s0+=11.0;
     s1+=1171.0;
    } else {
     s0+=287.0;
     s1+=80.0;
    }
   } else {
    if(i6<-5.3391693654702976e-05){
     s0+=24.0;
     s1+=460.0;
    } else {
     s0+=956.0;
     s1+=256.0;
    }
   }
  } else {
   if(i35<1.2592661380767822){
    if(i73<0.9997829794883728){
     s0+=4.0;
     s1+=94.0;
    } else {
     s0+=54.0;
     s1+=20.0;
    }
   } else {
    if(i4<-0.0015106499195098877){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=992.0;
    }
   }
  }
 } else {
  if(i20<0.0016299299895763397){
   if(i1<0.05159488320350647){
    s0+=9.0;
   } else {
    if(i67<-0.007757841143757105){
     s0+=2.0;
    } else {
     s1+=110.0;
    }
   }
  } else {
   s1+=7916.0;
  }
 }
}
if(i21<1.0027947425842285){
 if(i46<0.00038866617251187563){
  if(i38<0.00032847048714756966){
   if(i3<1.0024638175964355){
    if(i27<1.0092394351959229){
     s0+=48715.0;
     s1+=142.0;
    } else {
     s0+=12.0;
     s1+=71.0;
    }
   } else {
    if(i55<-0.0004209280014038086){
     s0+=19.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   }
  } else {
   if(i3<1.0006508827209473){
    if(i26<0.99730384349823){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=579.0;
     s1+=12.0;
    }
   } else {
    if(i3<1.0007297992706299){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=83.0;
    }
   }
  }
 } else {
  if(i12<1.006149172782898){
   if(i5<0.06581121683120728){
    if(i30<1.100754976272583){
     s0+=3507.0;
     s1+=1325.0;
    } else {
     s0+=14274.0;
     s1+=571.0;
    }
   } else {
    if(i59<-7.305308827199042e-05){
     s0+=1129.0;
     s1+=2073.0;
    } else {
     s0+=841.0;
     s1+=265.0;
    }
   }
  } else {
   if(i5<0.06368428468704224){
    if(i2<0.0749674141407013){
     s0+=365.0;
     s1+=72.0;
    } else {
     s0+=1.0;
     s1+=199.0;
    }
   } else {
    if(i20<0.0014871840830892324){
     s0+=87.0;
     s1+=29.0;
    } else {
     s0+=58.0;
     s1+=1697.0;
    }
   }
  }
 }
} else {
 if(i16<1.009664535522461){
  if(i32<0.9614344835281372){
   if(i2<0.08691921830177307){
    if(i20<0.02367955818772316){
     s0+=670.0;
     s1+=18.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i19<1.0662994384765625){
     s0+=2.0;
    } else {
     s1+=156.0;
    }
   }
  } else {
   if(i46<0.00023064608103595674){
    s0+=129.0;
   } else {
    if(i3<0.9998787641525269){
     s0+=185.0;
     s1+=95.0;
    } else {
     s0+=254.0;
     s1+=2472.0;
    }
   }
  }
 } else {
  if(i7<4.1425228118896484e-05){
   if(i1<0.11152264475822449){
    if(i66<0.00046857373672537506){
     s0+=66.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   } else {
    if(i5<0.18719008564949036){
     s0+=25.0;
     s1+=60.0;
    } else {
     s0+=2.0;
     s1+=140.0;
    }
   }
  } else {
   if(i5<0.05366295576095581){
    if(i6<-4.269482451491058e-05){
     s0+=7.0;
     s1+=387.0;
    } else {
     s0+=42.0;
     s1+=8.0;
    }
   } else {
    if(i6<-4.301705121179111e-05){
     s0+=11.0;
     s1+=7211.0;
    } else {
     s0+=11.0;
     s1+=69.0;
    }
   }
  }
 }
}
if(i3<1.0023839473724365){
 if(i5<0.07133829593658447){
  if(i0<0.0789894163608551){
   if(i52<-0.001589059829711914){
    if(i0<0.04224497079849243){
     s0+=3542.0;
     s1+=480.0;
    } else {
     s0+=325.0;
     s1+=362.0;
    }
   } else {
    if(i19<1.0475225448608398){
     s0+=54221.0;
     s1+=191.0;
    } else {
     s0+=10407.0;
     s1+=913.0;
    }
   }
  } else {
   if(i35<1.0670123100280762){
    s0+=109.0;
   } else {
    if(i3<0.9965639114379883){
     s0+=33.0;
     s1+=13.0;
    } else {
     s0+=37.0;
     s1+=797.0;
    }
   }
  }
 } else {
  if(i57<0.0025754771195352077){
   if(i50<0.998940110206604){
    if(i45<0.020702719688415527){
     s0+=410.0;
     s1+=9.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i59<-0.000124413549201563){
     s0+=806.0;
     s1+=1973.0;
    } else {
     s0+=700.0;
     s1+=303.0;
    }
   }
  } else {
   if(i54<-0.0001296401023864746){
    if(i45<0.011783394031226635){
     s0+=67.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i45<0.0009756307117640972){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=773.0;
    }
   }
  }
 }
} else {
 if(i11<0.0015960335731506348){
  if(i15<1.7821788787841797e-05){
   if(i1<0.06465256214141846){
    if(i69<-4.8106094254762866e-06){
     s0+=4.0;
     s1+=45.0;
    } else {
     s0+=178.0;
     s1+=6.0;
    }
   } else {
    if(i40<-1.2957174476468936e-05){
     s0+=1.0;
     s1+=272.0;
    } else {
     s0+=46.0;
     s1+=25.0;
    }
   }
  } else {
   if(i2<0.05307731032371521){
    if(i48<-0.007824838161468506){
     s0+=24.0;
     s1+=153.0;
    } else {
     s0+=86.0;
     s1+=45.0;
    }
   } else {
    if(i8<1.1223218441009521){
     s0+=112.0;
     s1+=1170.0;
    } else {
     s0+=2.0;
     s1+=1490.0;
    }
   }
  }
 } else {
  s1+=8093.0;
 }
}
if(i6<-7.82879360485822e-05){
 if(i9<1.0289115905761719){
  if(i18<1.0019817352294922){
   if(i66<0.001984225818887353){
    if(i54<0.00027617812156677246){
     s0+=512.0;
     s1+=4.0;
    } else {
     s0+=77.0;
     s1+=15.0;
    }
   } else {
    if(i18<0.9896528720855713){
     s0+=5.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i5<0.012369751930236816){
    if(i54<0.00010228157043457031){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    s1+=144.0;
   }
  }
 } else {
  if(i14<0.9938771724700928){
   if(i0<0.07542344927787781){
    if(i10<0.9762846231460571){
     s0+=14.0;
     s1+=87.0;
    } else {
     s0+=176.0;
     s1+=64.0;
    }
   } else {
    if(i48<0.015683025121688843){
     s0+=4.0;
     s1+=864.0;
    } else {
     s0+=36.0;
     s1+=185.0;
    }
   }
  } else {
   if(i22<-1.430511474609375e-06){
    if(i66<0.00046821910655125976){
     s0+=44.0;
     s1+=12.0;
    } else {
     s0+=21.0;
     s1+=574.0;
    }
   } else {
    if(i32<0.9958809614181519){
     s0+=4.0;
     s1+=256.0;
    } else {
     s1+=8943.0;
    }
   }
  }
 }
} else {
 if(i0<0.07659003138542175){
  if(i19<1.0467959642410278){
   if(i4<0.0007486343383789062){
    if(i57<0.0007084989338181913){
     s0+=51434.0;
     s1+=73.0;
    } else {
     s0+=2857.0;
     s1+=218.0;
    }
   } else {
    if(i40<-1.7400552678736858e-05){
     s1+=15.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i35<1.103413462638855){
    if(i33<0.0002946359745692462){
     s0+=1984.0;
     s1+=1.0;
    } else {
     s0+=1288.0;
     s1+=1497.0;
    }
   } else {
    if(i13<0.0009519457817077637){
     s0+=10322.0;
     s1+=440.0;
    } else {
     s0+=21.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i50<0.9990839958190918){
   if(i17<0.9981576204299927){
    if(i3<0.9970078468322754){
     s0+=481.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   } else {
    if(i28<0.013899783603847027){
     s0+=6.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i52<0.004226654767990112){
    if(i64<0.03548431396484375){
     s0+=171.0;
     s1+=2457.0;
    } else {
     s0+=387.0;
     s1+=382.0;
    }
   } else {
    if(i28<0.030916908755898476){
     s0+=890.0;
     s1+=250.0;
    } else {
     s0+=186.0;
     s1+=676.0;
    }
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i0<0.07873639464378357){
  if(i19<1.0485899448394775){
   if(i57<0.0006919987499713898){
    if(i50<1.000654697418213){
     s0+=51025.0;
     s1+=46.0;
    } else {
     s0+=1487.0;
     s1+=32.0;
    }
   } else {
    if(i30<1.239396333694458){
     s0+=1722.0;
     s1+=295.0;
    } else {
     s0+=1609.0;
    }
   }
  } else {
   if(i7<3.165006637573242e-05){
    if(i30<1.1013743877410889){
     s0+=2513.0;
     s1+=1106.0;
    } else {
     s0+=10169.0;
     s1+=397.0;
    }
   } else {
    if(i34<1.1481032371520996){
     s0+=10.0;
     s1+=626.0;
    } else {
     s0+=343.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i34<1.0670123100280762){
   if(i10<1.0043017864227295){
    if(i6<-9.090827006730251e-06){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=103.0;
    }
   } else {
    if(i46<0.00020296414732001722){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i53<0.04401782155036926){
    if(i7<-4.774332046508789e-05){
     s0+=24.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=1870.0;
    }
   } else {
    if(i42<0.06004069000482559){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i6<-2.3330479962169193e-05){
  if(i31<0.023696068674325943){
   if(i61<-0.022212501615285873){
    if(i5<0.130174458026886){
     s0+=272.0;
     s1+=18.0;
    } else {
     s0+=60.0;
     s1+=223.0;
    }
   } else {
    if(i67<-0.006892635952681303){
     s0+=142.0;
     s1+=97.0;
    } else {
     s0+=95.0;
     s1+=2301.0;
    }
   }
  } else {
   if(i19<1.063935399055481){
    if(i11<-0.0019380450248718262){
     s0+=36.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i2<0.11263984441757202){
     s0+=26.0;
     s1+=267.0;
    } else {
     s0+=19.0;
     s1+=8902.0;
    }
   }
  }
 } else {
  if(i39<0.0421941876411438){
   if(i5<0.08111199736595154){
    if(i44<0.045722365379333496){
     s0+=15.0;
     s1+=73.0;
    } else {
     s0+=42.0;
     s1+=6.0;
    }
   } else {
    if(i8<1.260420560836792){
     s0+=16.0;
     s1+=200.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i43<0.0018677384359762073){
    if(i8<1.084604263305664){
     s0+=367.0;
     s1+=118.0;
    } else {
     s0+=655.0;
     s1+=10.0;
    }
   } else {
    if(i13<0.0006402134895324707){
     s0+=311.0;
     s1+=149.0;
    } else {
     s1+=44.0;
    }
   }
  }
 }
}
if(i34<1.067622423171997){
 if(i13<0.00013133883476257324){
  if(i34<1.0557184219360352){
   if(i16<0.9826003909111023){
    if(i16<0.982597827911377){
     s0+=3310.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=36447.0;
   }
  } else {
   if(i9<0.9988372325897217){
    s1+=4.0;
   } else {
    if(i27<0.9862022399902344){
     s0+=315.0;
     s1+=48.0;
    } else {
     s0+=2688.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i32<1.0061436891555786){
   if(i71<0.026530036702752113){
    if(i27<1.0084049701690674){
     s0+=3769.0;
     s1+=39.0;
    } else {
     s0+=9.0;
     s1+=36.0;
    }
   } else {
    if(i38<0.0006841305876150727){
     s1+=60.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i41<1.0558756589889526){
    s0+=11.0;
   } else {
    s1+=75.0;
   }
  }
 }
} else {
 if(i3<1.0011847019195557){
  if(i9<1.0401077270507812){
   if(i33<0.001014829846099019){
    if(i24<0.9884501695632935){
     s0+=181.0;
     s1+=513.0;
    } else {
     s0+=2608.0;
     s1+=358.0;
    }
   } else {
    if(i1<0.08583930134773254){
     s0+=15122.0;
     s1+=192.0;
    } else {
     s0+=19.0;
     s1+=134.0;
    }
   }
  } else {
   if(i17<0.9987894892692566){
    if(i59<-0.0004100324586033821){
     s0+=255.0;
     s1+=39.0;
    } else {
     s0+=1213.0;
     s1+=26.0;
    }
   } else {
    if(i28<0.02458423748612404){
     s0+=3237.0;
     s1+=834.0;
    } else {
     s0+=710.0;
     s1+=2151.0;
    }
   }
  }
 } else {
  if(i20<0.002540997229516506){
   if(i30<1.1386182308197021){
    s1+=259.0;
   } else {
    if(i11<0.0024110078811645508){
     s0+=912.0;
     s1+=54.0;
    } else {
     s1+=130.0;
    }
   }
  } else {
   if(i11<-0.0006325244903564453){
    if(i28<0.02095886692404747){
     s0+=177.0;
     s1+=119.0;
    } else {
     s0+=94.0;
     s1+=756.0;
    }
   } else {
    if(i7<3.11732292175293e-05){
     s0+=53.0;
     s1+=448.0;
    } else {
     s0+=70.0;
     s1+=10743.0;
    }
   }
  }
 }
}
if(i18<1.003675937652588){
 if(i8<1.0452215671539307){
  if(i1<0.07771533727645874){
   if(i46<0.0003133065765723586){
    if(i21<1.0031886100769043){
     s0+=46126.0;
     s1+=46.0;
    } else {
     s0+=33.0;
     s1+=7.0;
    }
   } else {
    if(i58<-0.00018143653869628906){
     s0+=5458.0;
     s1+=661.0;
    } else {
     s0+=9873.0;
     s1+=168.0;
    }
   }
  } else {
   if(i34<1.0701326131820679){
    if(i7<7.420778274536133e-06){
     s0+=140.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=5.0;
    }
   } else {
    if(i33<0.002941883634775877){
     s0+=34.0;
     s1+=204.0;
    } else {
     s0+=76.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i37<0.010459553450345993){
   if(i20<0.004344004672020674){
    if(i41<1.1037919521331787){
     s0+=1906.0;
     s1+=964.0;
    } else {
     s0+=5092.0;
     s1+=796.0;
    }
   } else {
    if(i17<0.9984776973724365){
     s0+=395.0;
     s1+=2.0;
    } else {
     s0+=730.0;
     s1+=2495.0;
    }
   }
  } else {
   if(i0<0.046060532331466675){
    if(i31<0.05776018649339676){
     s0+=202.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i9<1.0649847984313965){
     s0+=42.0;
     s1+=88.0;
    } else {
     s0+=8.0;
     s1+=1512.0;
    }
   }
  }
 }
} else {
 if(i20<0.0016352541279047728){
  if(i2<0.07370078563690186){
   if(i69<-5.542831331695197e-06){
    if(i48<0.009086787700653076){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i47<0.9997373819351196){
     s1+=1.0;
    } else {
     s0+=554.0;
    }
   }
  } else {
   if(i67<-0.00538843497633934){
    if(i54<0.00021195411682128906){
     s0+=17.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i16<1.0109972953796387){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i15<-7.271766662597656e-06){
   if(i1<0.10001084208488464){
    s0+=93.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i29<0.00016569974832236767){
    if(i21<1.0014021396636963){
     s0+=53.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=36.0;
    }
   } else {
    if(i1<0.07868391275405884){
     s0+=88.0;
     s1+=890.0;
    } else {
     s0+=49.0;
     s1+=9172.0;
    }
   }
  }
 }
}
if(i8<1.0555626153945923){
 if(i27<1.008401870727539){
  if(i8<1.041234016418457){
   if(i0<0.08275771141052246){
    if(i29<0.00027944636531174183){
     s0+=51751.0;
     s1+=249.0;
    } else {
     s0+=8209.0;
     s1+=410.0;
    }
   } else {
    if(i7<-5.790591239929199e-05){
     s0+=96.0;
    } else {
     s0+=46.0;
     s1+=228.0;
    }
   }
  } else {
   if(i57<0.00041186786256730556){
    if(i1<0.07771140336990356){
     s0+=3084.0;
     s1+=153.0;
    } else {
     s0+=89.0;
     s1+=149.0;
    }
   } else {
    if(i2<0.06692394614219666){
     s0+=911.0;
     s1+=286.0;
    } else {
     s0+=170.0;
     s1+=352.0;
    }
   }
  }
 } else {
  if(i6<-2.8155911422800273e-05){
   if(i1<0.045206546783447266){
    if(i41<1.2344772815704346){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i33<0.0032770817633718252){
     s0+=4.0;
     s1+=402.0;
    } else {
     s0+=16.0;
     s1+=16.0;
    }
   }
  } else {
   if(i5<0.05660635232925415){
    if(i1<0.06596702337265015){
     s0+=172.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i2<0.08067920804023743){
     s0+=28.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i6<-4.503373202169314e-05){
  if(i1<0.07831460237503052){
   if(i30<1.2371783256530762){
    s1+=640.0;
   } else {
    if(i52<0.0007154345512390137){
     s0+=287.0;
     s1+=478.0;
    } else {
     s0+=363.0;
     s1+=24.0;
    }
   }
  } else {
   if(i1<0.1268107295036316){
    if(i63<0.004188954830169678){
     s0+=35.0;
     s1+=1330.0;
    } else {
     s0+=143.0;
     s1+=43.0;
    }
   } else {
    if(i20<0.006492264568805695){
     s0+=27.0;
     s1+=1205.0;
    } else {
     s0+=1.0;
     s1+=9198.0;
    }
   }
  }
 } else {
  if(i34<1.1039339303970337){
   if(i30<1.0877101421356201){
    if(i45<0.0004708950873464346){
     s0+=510.0;
    } else {
     s0+=220.0;
     s1+=85.0;
    }
   } else {
    if(i1<0.06242579221725464){
     s0+=302.0;
     s1+=283.0;
    } else {
     s0+=122.0;
     s1+=612.0;
    }
   }
  } else {
   if(i1<0.12035715579986572){
    if(i7<6.318092346191406e-05){
     s0+=4038.0;
     s1+=201.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i63<0.007248044013977051){
     s0+=82.0;
     s1+=503.0;
    } else {
     s0+=387.0;
     s1+=194.0;
    }
   }
  }
 }
}
if(i2<0.08442407846450806){
 if(i7<4.178285598754883e-05){
  if(i42<0.026365695521235466){
   if(i27<1.0084123611450195){
    if(i37<0.0003581122145988047){
     s0+=38814.0;
     s1+=33.0;
    } else {
     s0+=17743.0;
     s1+=514.0;
    }
   } else {
    if(i37<0.0011754336301237345){
     s0+=189.0;
     s1+=217.0;
    } else {
     s0+=574.0;
     s1+=19.0;
    }
   }
  } else {
   if(i34<1.1476502418518066){
    if(i43<0.000446393562015146){
     s0+=1893.0;
     s1+=65.0;
    } else {
     s0+=1976.0;
     s1+=1113.0;
    }
   } else {
    if(i31<0.07268466055393219){
     s0+=7492.0;
     s1+=219.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i54<0.00014832615852355957){
   if(i52<-0.0019010603427886963){
    if(i26<1.032158374786377){
     s0+=3.0;
     s1+=36.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    if(i7<4.684925079345703e-05){
     s0+=43.0;
     s1+=12.0;
    } else {
     s0+=240.0;
     s1+=4.0;
    }
   }
  } else {
   if(i20<0.001602961216121912){
    if(i70<-1.3957460396341048e-05){
     s1+=1.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i55<0.001532435417175293){
     s0+=60.0;
     s1+=825.0;
    } else {
     s0+=45.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i4<0.00012892484664916992){
  if(i13<-0.00047266483306884766){
   if(i47<0.9997949600219727){
    s0+=594.0;
   } else {
    if(i47<0.9998043775558472){
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<0.0017929597524926066){
    if(i28<0.02908422239124775){
     s0+=390.0;
     s1+=50.0;
    } else {
     s0+=51.0;
     s1+=114.0;
    }
   } else {
    if(i61<-0.01992168463766575){
     s0+=289.0;
     s1+=524.0;
    } else {
     s0+=102.0;
     s1+=1184.0;
    }
   }
  }
 } else {
  if(i33<0.006975742522627115){
   if(i67<-0.006788528990000486){
    if(i66<0.0003195355529896915){
     s0+=154.0;
     s1+=33.0;
    } else {
     s0+=138.0;
     s1+=514.0;
    }
   } else {
    if(i33<0.0002616443089209497){
     s0+=14.0;
    } else {
     s0+=102.0;
     s1+=3136.0;
    }
   }
  } else {
   if(i31<0.020767951384186745){
    if(i2<0.13718080520629883){
     s0+=30.0;
     s1+=27.0;
    } else {
     s0+=6.0;
     s1+=578.0;
    }
   } else {
    if(i22<-0.0001767873764038086){
     s0+=4.0;
     s1+=351.0;
    } else {
     s0+=1.0;
     s1+=7574.0;
    }
   }
  }
 }
}
if(i0<0.08314955234527588){
 if(i17<1.0019333362579346){
  if(i0<0.06630954146385193){
   if(i8<1.040665864944458){
    if(i52<-0.0015021264553070068){
     s0+=1857.0;
     s1+=177.0;
    } else {
     s0+=55598.0;
     s1+=232.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=2627.0;
     s1+=757.0;
    } else {
     s0+=6113.0;
     s1+=273.0;
    }
   }
  } else {
   if(i28<0.01736440882086754){
    if(i6<-2.9535924113588408e-05){
     s0+=173.0;
     s1+=149.0;
    } else {
     s0+=1929.0;
     s1+=84.0;
    }
   } else {
    if(i55<0.0028691887855529785){
     s0+=275.0;
     s1+=435.0;
    } else {
     s0+=307.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i3<1.0021252632141113){
   if(i53<-0.05762097239494324){
    if(i13<0.000707089900970459){
     s0+=6.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=43.0;
    }
   } else {
    if(i54<0.0003495216369628906){
     s0+=67.0;
     s1+=32.0;
    } else {
     s0+=452.0;
     s1+=14.0;
    }
   }
  } else {
   if(i48<0.009480476379394531){
    if(i56<6.8559282226488e-05){
     s0+=8.0;
     s1+=551.0;
    } else {
     s0+=81.0;
     s1+=292.0;
    }
   } else {
    if(i11<0.00019502639770507812){
     s0+=29.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004811882972717285){
  if(i39<0.04838693141937256){
   if(i43<0.00044856895692646503){
    s0+=97.0;
   } else {
    if(i17<0.9976786971092224){
     s0+=11.0;
    } else {
     s0+=82.0;
     s1+=2053.0;
    }
   }
  } else {
   if(i20<0.005920846946537495){
    if(i29<0.0013401907635852695){
     s0+=302.0;
     s1+=314.0;
    } else {
     s0+=999.0;
     s1+=224.0;
    }
   } else {
    if(i1<0.10075151920318604){
     s0+=69.0;
     s1+=14.0;
    } else {
     s0+=10.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i33<0.008273242972791195){
   if(i53<0.05904555320739746){
    if(i52<0.00909513235092163){
     s0+=8.0;
     s1+=2588.0;
    } else {
     s0+=16.0;
     s1+=100.0;
    }
   } else {
    if(i11<-0.0006322264671325684){
     s0+=88.0;
     s1+=85.0;
    } else {
     s0+=36.0;
     s1+=487.0;
    }
   }
  } else {
   if(i35<1.2590415477752686){
    if(i21<0.9965164661407471){
     s0+=2.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i66<0.00016989524010568857){
     s0+=2.0;
     s1+=72.0;
    } else {
     s0+=2.0;
     s1+=7460.0;
    }
   }
  }
 }
}
if(i7<3.844499588012695e-05){
 if(i2<0.0841723084449768){
  if(i41<1.067622423171997){
   if(i14<1.0050405263900757){
    if(i38<0.0002745856763795018){
     s0+=33262.0;
    } else {
     s0+=2804.0;
     s1+=8.0;
    }
   } else {
    if(i41<1.0565075874328613){
     s0+=174.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i4<-0.0006043612957000732){
    if(i43<0.0011228728108108044){
     s0+=1897.0;
     s1+=151.0;
    } else {
     s0+=15586.0;
     s1+=54.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=3901.0;
     s1+=1403.0;
    } else {
     s0+=11015.0;
     s1+=482.0;
    }
   }
  }
 } else {
  if(i20<0.004690013825893402){
   if(i6<-1.2869129022874404e-05){
    if(i26<1.0852928161621094){
     s0+=184.0;
     s1+=1005.0;
    } else {
     s0+=246.0;
     s1+=141.0;
    }
   } else {
    if(i15<-1.7315149307250977e-05){
     s0+=436.0;
    } else {
     s0+=614.0;
     s1+=251.0;
    }
   }
  } else {
   if(i40<2.735356702032732e-06){
    if(i11<-0.0008121132850646973){
     s0+=234.0;
     s1+=767.0;
    } else {
     s0+=7.0;
     s1+=1270.0;
    }
   } else {
    s0+=71.0;
   }
  }
 }
} else {
 if(i31<0.0074600111693143845){
  if(i11<0.0013984441757202148){
   if(i33<0.0003840237041004002){
    s0+=255.0;
   } else {
    if(i35<1.2025651931762695){
     s0+=2.0;
     s1+=105.0;
    } else {
     s0+=217.0;
     s1+=52.0;
    }
   }
  } else {
   if(i6<-4.44551624241285e-05){
    s1+=739.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i18<0.9987292289733887){
   if(i46<0.01242818869650364){
    if(i45<0.011006535962224007){
     s0+=79.0;
     s1+=358.0;
    } else {
     s0+=51.0;
     s1+=19.0;
    }
   } else {
    if(i31<0.02049911394715309){
     s0+=3.0;
     s1+=20.0;
    } else {
     s1+=401.0;
    }
   }
  } else {
   if(i22<-1.7702579498291016e-05){
    if(i28<0.026208020746707916){
     s0+=50.0;
     s1+=149.0;
    } else {
     s0+=15.0;
     s1+=543.0;
    }
   } else {
    if(i7<5.429983139038086e-05){
     s0+=26.0;
     s1+=473.0;
    } else {
     s0+=10.0;
     s1+=8711.0;
    }
   }
  }
 }
}
if(i13<0.00044995546340942383){
 if(i23<1.0107624530792236){
  if(i8<1.0452215671539307){
   if(i58<-0.0020244717597961426){
    if(i5<0.04154062271118164){
     s0+=3918.0;
     s1+=299.0;
    } else {
     s0+=521.0;
     s1+=259.0;
    }
   } else {
    if(i34<1.0557184219360352){
     s0+=40887.0;
    } else {
     s0+=16240.0;
     s1+=413.0;
    }
   }
  } else {
   if(i50<0.9993823766708374){
    if(i37<0.03138063848018646){
     s0+=1932.0;
     s1+=58.0;
    } else {
     s0+=9.0;
     s1+=12.0;
    }
   } else {
    if(i5<0.06336325407028198){
     s0+=3616.0;
     s1+=991.0;
    } else {
     s0+=534.0;
     s1+=1266.0;
    }
   }
  }
 } else {
  if(i22<0.00011032819747924805){
   if(i1<0.10675352811813354){
    if(i41<1.1063789129257202){
     s0+=223.0;
     s1+=294.0;
    } else {
     s0+=953.0;
     s1+=50.0;
    }
   } else {
    if(i49<0.0009691115701571107){
     s0+=265.0;
     s1+=217.0;
    } else {
     s0+=71.0;
     s1+=703.0;
    }
   }
  } else {
   if(i50<1.0001736879348755){
    if(i7<-1.4007091522216797e-05){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=1324.0;
    }
   } else {
    if(i20<0.002848108997568488){
     s0+=133.0;
     s1+=19.0;
    } else {
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i2<0.08525791764259338){
  if(i18<1.0009572505950928){
   if(i62<0.15490412712097168){
    if(i19<1.0640654563903809){
     s0+=648.0;
     s1+=11.0;
    } else {
     s0+=663.0;
     s1+=191.0;
    }
   } else {
    if(i36<0.9584376811981201){
     s1+=49.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i40<-1.412939491274301e-05){
    if(i66<0.00013832177501171827){
     s0+=19.0;
     s1+=15.0;
    } else {
     s0+=32.0;
     s1+=819.0;
    }
   } else {
    if(i20<0.004034251440316439){
     s0+=130.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i12<1.0027986764907837){
   if(i24<1.0089757442474365){
    if(i63<0.0065908730030059814){
     s1+=900.0;
    } else {
     s0+=11.0;
     s1+=94.0;
    }
   } else {
    if(i35<1.3429441452026367){
     s0+=255.0;
     s1+=310.0;
    } else {
     s0+=18.0;
     s1+=344.0;
    }
   }
  } else {
   if(i3<1.0044496059417725){
    if(i73<1.0023703575134277){
     s0+=2.0;
     s1+=402.0;
    } else {
     s0+=20.0;
     s1+=64.0;
    }
   } else {
    if(i32<0.9949090480804443){
     s0+=1.0;
     s1+=128.0;
    } else {
     s1+=7797.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i3<1.002468466758728){
  if(i33<0.00030420516850426793){
   if(i0<0.08887791633605957){
    if(i45<0.00029624777380377054){
     s0+=35444.0;
    } else {
     s0+=1058.0;
     s1+=6.0;
    }
   } else {
    if(i13<-2.491474151611328e-05){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i29<0.00026916185743175447){
    if(i55<-0.002168804407119751){
     s0+=45.0;
     s1+=72.0;
    } else {
     s0+=19327.0;
     s1+=405.0;
    }
   } else {
    if(i45<0.0008711600094102323){
     s0+=1004.0;
     s1+=838.0;
    } else {
     s0+=6907.0;
     s1+=393.0;
    }
   }
  }
 } else {
  if(i6<-5.975287058390677e-05){
   if(i1<0.02255392074584961){
    if(i34<1.215089201927185){
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i50<1.002031922340393){
     s1+=279.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  } else {
   if(i49<0.0009261631639674306){
    if(i43<0.0007316317642107606){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=97.0;
    }
   } else {
    s1+=60.0;
   }
  }
 }
} else {
 if(i2<0.08514660596847534){
  if(i6<-5.041531039751135e-05){
   if(i34<1.1907882690429688){
    if(i53<0.04057857394218445){
     s0+=63.0;
     s1+=644.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i52<-0.002929866313934326){
     s0+=156.0;
     s1+=280.0;
    } else {
     s0+=379.0;
     s1+=37.0;
    }
   }
  } else {
   if(i34<1.1036889553070068){
    if(i28<0.01688527688384056){
     s0+=1042.0;
     s1+=180.0;
    } else {
     s0+=166.0;
     s1+=365.0;
    }
   } else {
    if(i23<0.9672166109085083){
     s0+=325.0;
     s1+=84.0;
    } else {
     s0+=3411.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i6<-1.4545470548910089e-05){
   if(i17<0.9984055757522583){
    if(i11<-0.0011647939682006836){
     s1+=2.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i22<0.00010412931442260742){
     s0+=546.0;
     s1+=3741.0;
    } else {
     s0+=40.0;
     s1+=9473.0;
    }
   }
  } else {
   if(i44<0.06118965148925781){
    if(i50<0.9992778301239014){
     s0+=47.0;
    } else {
     s0+=21.0;
     s1+=169.0;
    }
   } else {
    if(i47<1.0000462532043457){
     s0+=805.0;
     s1+=60.0;
    } else {
     s0+=49.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i13<0.00043314695358276367){
 if(i29<0.0003172599244862795){
  if(i1<0.07773411273956299){
   if(i16<1.0072920322418213){
    if(i0<0.07860150933265686){
     s0+=56024.0;
     s1+=466.0;
    } else {
     s0+=52.0;
     s1+=43.0;
    }
   } else {
    if(i40<-1.2099040759494528e-05){
     s0+=37.0;
     s1+=112.0;
    } else {
     s0+=722.0;
     s1+=62.0;
    }
   }
  } else {
   if(i13<-0.00019046664237976074){
    if(i74<0.00010571819439064711){
     s0+=27.0;
     s1+=3.0;
    } else {
     s0+=111.0;
    }
   } else {
    if(i46<0.0002859814267139882){
     s0+=32.0;
     s1+=5.0;
    } else {
     s0+=24.0;
     s1+=306.0;
    }
   }
  }
 } else {
  if(i59<-0.00010879641922656447){
   if(i0<0.08506575226783752){
    if(i37<0.0016346864867955446){
     s0+=535.0;
     s1+=500.0;
    } else {
     s0+=2364.0;
     s1+=164.0;
    }
   } else {
    if(i17<0.9980583190917969){
     s0+=160.0;
     s1+=5.0;
    } else {
     s0+=472.0;
     s1+=3241.0;
    }
   }
  } else {
   if(i0<0.07001620531082153){
    if(i61<-0.005845990031957626){
     s0+=5265.0;
     s1+=84.0;
    } else {
     s0+=2456.0;
     s1+=488.0;
    }
   } else {
    if(i39<0.0363008975982666){
     s0+=69.0;
     s1+=284.0;
    } else {
     s0+=808.0;
     s1+=182.0;
    }
   }
  }
 }
} else {
 if(i2<0.08522948622703552){
  if(i63<-0.0010780692100524902){
   if(i72<0.9997018575668335){
    if(i57<0.0018544492777436972){
     s0+=100.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i18<1.0024601221084595){
     s0+=217.0;
     s1+=214.0;
    } else {
     s0+=14.0;
     s1+=576.0;
    }
   }
  } else {
   if(i70<1.0797297363751568e-05){
    if(i41<1.075169324874878){
     s0+=260.0;
    } else {
     s0+=174.0;
     s1+=327.0;
    }
   } else {
    if(i4<0.001220405101776123){
     s0+=821.0;
     s1+=38.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i6<-6.723868864355609e-05){
   if(i9<1.1223218441009521){
    if(i18<1.0004810094833374){
     s0+=86.0;
     s1+=248.0;
    } else {
     s0+=17.0;
     s1+=3416.0;
    }
   } else {
    s1+=5737.0;
   }
  } else {
   if(i20<0.005178695544600487){
    if(i30<1.4287309646606445){
     s0+=38.0;
     s1+=87.0;
    } else {
     s0+=112.0;
     s1+=19.0;
    }
   } else {
    if(i47<1.0002597570419312){
     s0+=9.0;
     s1+=506.0;
    } else {
     s0+=48.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i1<0.07663694024085999){
 if(i13<0.000518500804901123){
  if(i19<1.0451585054397583){
   if(i48<-0.00576820969581604){
    if(i35<1.0703742504119873){
     s0+=709.0;
     s1+=3.0;
    } else {
     s0+=158.0;
     s1+=86.0;
    }
   } else {
    if(i55<-0.0012702345848083496){
     s0+=1088.0;
     s1+=64.0;
    } else {
     s0+=51732.0;
     s1+=89.0;
    }
   }
  } else {
   if(i41<1.1037919521331787){
    if(i43<0.0005020852549932897){
     s0+=3324.0;
     s1+=381.0;
    } else {
     s0+=348.0;
     s1+=1037.0;
    }
   } else {
    if(i68<0.003569542896002531){
     s0+=8625.0;
     s1+=129.0;
    } else {
     s0+=2035.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i18<1.0001509189605713){
   if(i8<1.1202845573425293){
    if(i9<1.0179688930511475){
     s0+=53.0;
     s1+=46.0;
    } else {
     s0+=850.0;
     s1+=70.0;
    }
   } else {
    if(i40<-3.147693496430293e-05){
     s1+=64.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   }
  } else {
   if(i33<0.0003680566151160747){
    s0+=52.0;
   } else {
    if(i29<0.00016201683320105076){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=48.0;
     s1+=931.0;
    }
   }
  }
 }
} else {
 if(i4<0.0001468658447265625){
  if(i13<-0.00041237473487854004){
   if(i22<-0.0004673898220062256){
    if(i64<0.04126119613647461){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=14.0;
    }
   } else {
    s0+=480.0;
   }
  } else {
   if(i6<-1.2369988326099701e-05){
    if(i48<0.016436368227005005){
     s0+=87.0;
     s1+=1274.0;
    } else {
     s0+=260.0;
     s1+=455.0;
    }
   } else {
    if(i39<0.04115527868270874){
     s0+=20.0;
     s1+=177.0;
    } else {
     s0+=611.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i33<0.00725912069901824){
   if(i61<-0.023995215073227882){
    if(i1<0.172454833984375){
     s0+=223.0;
     s1+=46.0;
    } else {
     s0+=33.0;
     s1+=342.0;
    }
   } else {
    if(i67<-0.008867792785167694){
     s0+=93.0;
     s1+=171.0;
    } else {
     s0+=98.0;
     s1+=3106.0;
    }
   }
  } else {
   if(i11<3.1113624572753906e-05){
    if(i73<0.997668981552124){
     s0+=8.0;
     s1+=8.0;
    } else {
     s0+=27.0;
     s1+=979.0;
    }
   } else {
    if(i35<1.2952208518981934){
     s0+=1.0;
     s1+=491.0;
    } else {
     s1+=6897.0;
    }
   }
  }
 }
}
if(i6<-7.970744627527893e-05){
 if(i3<0.998744785785675){
  if(i27<1.0009256601333618){
   if(i36<1.0041780471801758){
    if(i40<-2.6668991267797537e-05){
     s0+=477.0;
     s1+=28.0;
    } else {
     s0+=74.0;
     s1+=37.0;
    }
   } else {
    if(i35<1.4255383014678955){
     s0+=6.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   s1+=52.0;
  }
 } else {
  if(i0<0.06656405329704285){
   if(i61<-0.009984515607357025){
    if(i56<0.0001201854829560034){
     s1+=2.0;
    } else {
     s0+=120.0;
     s1+=1.0;
    }
   } else {
    if(i8<1.0389134883880615){
     s0+=15.0;
    } else {
     s0+=70.0;
     s1+=275.0;
    }
   }
  } else {
   if(i32<0.9967862367630005){
    if(i31<0.023437540978193283){
     s0+=100.0;
     s1+=69.0;
    } else {
     s0+=5.0;
     s1+=1267.0;
    }
   } else {
    if(i66<1.4148974514682777e-05){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=9351.0;
    }
   }
  }
 }
} else {
 if(i19<1.0494916439056396){
  if(i48<-0.005447685718536377){
   if(i8<1.0386898517608643){
    if(i41<1.0703742504119873){
     s0+=672.0;
    } else {
     s0+=182.0;
     s1+=65.0;
    }
   } else {
    if(i30<1.0821808576583862){
     s0+=115.0;
    } else {
     s0+=43.0;
     s1+=59.0;
    }
   }
  } else {
   if(i50<1.00048828125){
    if(i29<0.00026733672711998224){
     s0+=47417.0;
     s1+=85.0;
    } else {
     s0+=5328.0;
     s1+=118.0;
    }
   } else {
    if(i27<1.0083309412002563){
     s0+=2596.0;
     s1+=98.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i18<1.0014753341674805){
   if(i4<0.00021404027938842773){
    if(i1<0.07670488953590393){
     s0+=10978.0;
     s1+=1158.0;
    } else {
     s0+=1131.0;
     s1+=1600.0;
    }
   } else {
    if(i55<0.0033919811248779297){
     s0+=238.0;
     s1+=616.0;
    } else {
     s0+=318.0;
     s1+=211.0;
    }
   }
  } else {
   if(i34<1.1495144367218018){
    if(i30<1.2385294437408447){
     s0+=102.0;
     s1+=1423.0;
    } else {
     s0+=123.0;
     s1+=64.0;
    }
   } else {
    if(i0<0.11163210868835449){
     s0+=987.0;
     s1+=78.0;
    } else {
     s0+=42.0;
     s1+=408.0;
    }
   }
  }
 }
}
if(i5<0.07186156511306763){
 if(i13<0.0006086528301239014){
  if(i8<1.0452215671539307){
   if(i38<0.0002818428911268711){
    if(i57<0.0008439854718744755){
     s0+=50758.0;
     s1+=135.0;
    } else {
     s0+=332.0;
     s1+=78.0;
    }
   } else {
    if(i22<-0.0002486109733581543){
     s0+=6678.0;
     s1+=43.0;
    } else {
     s0+=3890.0;
     s1+=679.0;
    }
   }
  } else {
   if(i6<-2.7581780159380287e-05){
    if(i35<1.200620174407959){
     s0+=339.0;
     s1+=1091.0;
    } else {
     s0+=856.0;
     s1+=177.0;
    }
   } else {
    if(i27<0.9962316751480103){
     s0+=1622.0;
     s1+=509.0;
    } else {
     s0+=3781.0;
     s1+=275.0;
    }
   }
  }
 } else {
  if(i14<1.0046652555465698){
   if(i22<-0.0003407299518585205){
    if(i29<0.01258893497288227){
     s0+=409.0;
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=39.0;
    }
   } else {
    if(i31<0.010816092602908611){
     s0+=157.0;
     s1+=89.0;
    } else {
     s0+=63.0;
     s1+=443.0;
    }
   }
  } else {
   if(i11<-0.0002468228340148926){
    if(i20<0.006067534908652306){
     s0+=50.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i22<6.735324859619141e-06){
     s0+=10.0;
     s1+=19.0;
    } else {
     s1+=1205.0;
    }
   }
  }
 }
} else {
 if(i20<0.00468787644058466){
  if(i67<-0.005074355751276016){
   if(i45<0.003937201574444771){
    if(i3<1.0044887065887451){
     s0+=844.0;
     s1+=60.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i11<0.0001004934310913086){
     s0+=249.0;
     s1+=132.0;
    } else {
     s0+=9.0;
     s1+=132.0;
    }
   }
  } else {
   if(i19<1.0487183332443237){
    if(i25<0.05077216029167175){
     s1+=4.0;
    } else {
     s0+=252.0;
     s1+=9.0;
    }
   } else {
    if(i0<0.09806427359580994){
     s0+=252.0;
     s1+=226.0;
    } else {
     s0+=121.0;
     s1+=1112.0;
    }
   }
  }
 } else {
  if(i17<0.9979836940765381){
   s0+=82.0;
  } else {
   if(i11<-0.000855565071105957){
    if(i31<0.023719657212495804){
     s0+=178.0;
     s1+=214.0;
    } else {
     s0+=54.0;
     s1+=1026.0;
    }
   } else {
    if(i10<1.0154027938842773){
     s0+=51.0;
     s1+=2272.0;
    } else {
     s1+=7186.0;
    }
   }
  }
 }
}
if(i27<1.0084242820739746){
 if(i7<3.975629806518555e-05){
  if(i71<0.027034947648644447){
   if(i57<0.0008821571245789528){
    if(i24<1.0111751556396484){
     s0+=53404.0;
     s1+=231.0;
    } else {
     s0+=468.0;
     s1+=89.0;
    }
   } else {
    if(i65<0.0002899968530982733){
     s0+=248.0;
     s1+=15.0;
    } else {
     s0+=180.0;
     s1+=256.0;
    }
   }
  } else {
   if(i3<0.9967870712280273){
    if(i26<1.0686851739883423){
     s0+=8560.0;
     s1+=191.0;
    } else {
     s0+=350.0;
     s1+=67.0;
    }
   } else {
    if(i74<0.00010628595191519707){
     s0+=3727.0;
     s1+=1546.0;
    } else {
     s0+=1120.0;
     s1+=1146.0;
    }
   }
  }
 } else {
  if(i30<1.082350254058838){
   s0+=260.0;
  } else {
   if(i21<1.002568244934082){
    if(i46<0.01093936525285244){
     s0+=85.0;
     s1+=120.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i1<0.12478673458099365){
     s0+=119.0;
     s1+=880.0;
    } else {
     s0+=2.0;
     s1+=1436.0;
    }
   }
  }
 }
} else {
 if(i2<0.07970178127288818){
  if(i22<0.00021457672119140625){
   if(i33<0.0011263368651270866){
    if(i15<5.334615707397461e-06){
     s0+=260.0;
     s1+=76.0;
    } else {
     s0+=33.0;
     s1+=245.0;
    }
   } else {
    if(i6<-6.688629218842834e-05){
     s0+=39.0;
     s1+=57.0;
    } else {
     s0+=1598.0;
     s1+=25.0;
    }
   }
  } else {
   if(i20<0.0015242323279380798){
    if(i41<1.1753523349761963){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=176.0;
   }
  }
 } else {
  if(i18<1.0021946430206299){
   if(i49<0.0009240508079528809){
    if(i26<1.0649409294128418){
     s0+=47.0;
     s1+=219.0;
    } else {
     s0+=372.0;
     s1+=60.0;
    }
   } else {
    if(i17<0.9981305599212646){
     s0+=65.0;
    } else {
     s0+=145.0;
     s1+=1733.0;
    }
   }
  } else {
   if(i1<0.13648200035095215){
    if(i67<-0.007743709720671177){
     s0+=51.0;
     s1+=6.0;
    } else {
     s0+=27.0;
     s1+=1269.0;
    }
   } else {
    if(i7<9.417533874511719e-06){
     s0+=11.0;
     s1+=32.0;
    } else {
     s1+=7109.0;
    }
   }
  }
 }
}
if(i7<3.832578659057617e-05){
 if(i0<0.08208942413330078){
  if(i51<0.007431460078805685){
   if(i8<1.0436501502990723){
    if(i60<0.04332735389471054){
     s0+=51952.0;
     s1+=226.0;
    } else {
     s0+=7629.0;
     s1+=365.0;
    }
   } else {
    if(i0<0.0655827522277832){
     s0+=4944.0;
     s1+=363.0;
    } else {
     s0+=787.0;
     s1+=323.0;
    }
   }
  } else {
   if(i72<1.0003219842910767){
    if(i17<0.9983083009719849){
     s0+=1111.0;
     s1+=6.0;
    } else {
     s0+=1588.0;
     s1+=381.0;
    }
   } else {
    if(i41<1.1445549726486206){
     s0+=97.0;
     s1+=234.0;
    } else {
     s0+=736.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i50<0.9988040328025818){
   if(i71<0.5195944905281067){
    if(i69<-3.4601234801812097e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=407.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i6<-1.341773440799443e-05){
    if(i47<1.0003736019134521){
     s0+=332.0;
     s1+=3043.0;
    } else {
     s0+=113.0;
     s1+=72.0;
    }
   } else {
    if(i25<0.061207205057144165){
     s0+=16.0;
     s1+=184.0;
    } else {
     s0+=640.0;
     s1+=186.0;
    }
   }
  }
 }
} else {
 if(i19<1.0407118797302246){
  if(i72<1.0030078887939453){
   s0+=308.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i6<-4.330423689680174e-05){
   if(i11<3.5822391510009766e-05){
    if(i34<1.3019788265228271){
     s0+=247.0;
     s1+=713.0;
    } else {
     s0+=8.0;
     s1+=553.0;
    }
   } else {
    if(i53<0.13208472728729248){
     s0+=1.0;
     s1+=8628.0;
    } else {
     s0+=7.0;
     s1+=1429.0;
    }
   }
  } else {
   if(i49<0.0010973125463351607){
    if(i47<0.9999305605888367){
     s0+=4.0;
     s1+=33.0;
    } else {
     s0+=165.0;
    }
   } else {
    if(i20<0.005029147490859032){
     s0+=8.0;
     s1+=3.0;
    } else {
     s1+=209.0;
    }
   }
  }
 }
}
if(i0<0.08140268921852112){
 if(i13<0.0005766749382019043){
  if(i35<1.0598037242889404){
   s0+=36938.0;
  } else {
   if(i41<1.103413462638855){
    if(i6<-1.9013183191418648e-05){
     s0+=151.0;
     s1+=787.0;
    } else {
     s0+=5911.0;
     s1+=861.0;
    }
   } else {
    if(i48<-0.010920107364654541){
     s0+=1887.0;
     s1+=244.0;
    } else {
     s0+=23634.0;
     s1+=218.0;
    }
   }
  }
 } else {
  if(i58<0.002827554941177368){
   if(i4<0.0007335543632507324){
    if(i63<-0.00131949782371521){
     s0+=48.0;
     s1+=115.0;
    } else {
     s0+=400.0;
     s1+=49.0;
    }
   } else {
    if(i47<1.0007648468017578){
     s0+=44.0;
     s1+=752.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i35<1.1773569583892822){
    if(i50<1.0011093616485596){
     s0+=6.0;
     s1+=1.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i3<1.0045833587646484){
     s0+=336.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5364841601694934e-05){
  if(i18<1.0022525787353516){
   if(i6<-5.625431731459685e-05){
    if(i2<0.12767818570137024){
     s0+=100.0;
     s1+=288.0;
    } else {
     s0+=28.0;
     s1+=1890.0;
    }
   } else {
    if(i52<0.0047721266746521){
     s0+=111.0;
     s1+=1200.0;
    } else {
     s0+=294.0;
     s1+=304.0;
    }
   }
  } else {
   if(i49<0.001457716105505824){
    if(i53<0.10748925805091858){
     s0+=43.0;
     s1+=1848.0;
    } else {
     s0+=39.0;
     s1+=83.0;
    }
   } else {
    if(i18<1.0059380531311035){
     s0+=8.0;
     s1+=1005.0;
    } else {
     s1+=6956.0;
    }
   }
  }
 } else {
  if(i47<0.999576985836029){
   s0+=458.0;
  } else {
   if(i56<3.159749030601233e-05){
    if(i54<0.00019827485084533691){
     s0+=418.0;
     s1+=55.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i44<0.05816444754600525){
     s0+=24.0;
     s1+=258.0;
    } else {
     s0+=235.0;
     s1+=163.0;
    }
   }
  }
 }
}
if(i4<0.0005510449409484863){
 if(i5<0.07142278552055359){
  if(i2<0.08219277858734131){
   if(i9<1.0406912565231323){
    if(i35<1.067622423171997){
     s0+=37842.0;
     s1+=23.0;
    } else {
     s0+=24787.0;
     s1+=1046.0;
    }
   } else {
    if(i53<-0.024743765592575073){
     s0+=1241.0;
     s1+=404.0;
    } else {
     s0+=4235.0;
     s1+=442.0;
    }
   }
  } else {
   if(i19<1.04958975315094){
    if(i7<-6.240606307983398e-05){
     s0+=226.0;
    } else {
     s0+=52.0;
     s1+=24.0;
    }
   } else {
    if(i53<0.04653465747833252){
     s0+=88.0;
     s1+=712.0;
    } else {
     s0+=66.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i6<-1.3781947927782312e-05){
   if(i59<-0.00010635210492182523){
    if(i30<1.255998969078064){
     s0+=36.0;
     s1+=1099.0;
    } else {
     s0+=338.0;
     s1+=1252.0;
    }
   } else {
    if(i48<0.01342630386352539){
     s0+=66.0;
     s1+=183.0;
    } else {
     s0+=227.0;
     s1+=57.0;
    }
   }
  } else {
   if(i39<0.038151681423187256){
    if(i1<0.08551451563835144){
     s0+=32.0;
     s1+=17.0;
    } else {
     s0+=13.0;
     s1+=90.0;
    }
   } else {
    if(i55<-0.0009339749813079834){
     s0+=173.0;
     s1+=76.0;
    } else {
     s0+=968.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i46<0.00022597031784243882){
  if(i23<1.0080832242965698){
   s0+=166.0;
  } else {
   s1+=8.0;
  }
 } else {
  if(i6<-4.698154953075573e-05){
   if(i31<0.018831636756658554){
    if(i18<1.001577377319336){
     s0+=170.0;
     s1+=135.0;
    } else {
     s0+=48.0;
     s1+=2226.0;
    }
   } else {
    if(i2<0.08276563882827759){
     s0+=21.0;
     s1+=248.0;
    } else {
     s0+=8.0;
     s1+=8802.0;
    }
   }
  } else {
   if(i72<1.0021483898162842){
    if(i57<-0.0003695146006066352){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=150.0;
     s1+=15.0;
    }
   } else {
    if(i49<0.0017462982796132565){
     s0+=24.0;
     s1+=73.0;
    } else {
     s0+=1.0;
     s1+=223.0;
    }
   }
  }
 }
}
if(i14<1.008260726928711){
 if(i7<3.904104232788086e-05){
  if(i1<0.07745891809463501){
   if(i48<-0.006055176258087158){
    if(i0<0.02972465753555298){
     s0+=2868.0;
     s1+=304.0;
    } else {
     s0+=537.0;
     s1+=436.0;
    }
   } else {
    if(i0<0.0634080171585083){
     s0+=60982.0;
     s1+=641.0;
    } else {
     s0+=3290.0;
     s1+=510.0;
    }
   }
  } else {
   if(i59<-8.910679025575519e-05){
    if(i21<0.995447039604187){
     s0+=180.0;
     s1+=82.0;
    } else {
     s0+=372.0;
     s1+=1644.0;
    }
   } else {
    if(i6<-6.420044883270748e-06){
     s0+=296.0;
     s1+=366.0;
    } else {
     s0+=448.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i43<0.0005282936617732048){
   s0+=266.0;
  } else {
   if(i43<0.01073592621833086){
    if(i20<0.002380470745265484){
     s0+=46.0;
     s1+=9.0;
    } else {
     s0+=109.0;
     s1+=1989.0;
    }
   } else {
    if(i37<0.01335813943296671){
     s0+=100.0;
     s1+=35.0;
    } else {
     s1+=247.0;
    }
   }
  }
 }
} else {
 if(i6<-4.153069312451407e-05){
  if(i54<-0.00021764636039733887){
   if(i0<0.13848599791526794){
    s0+=37.0;
   } else {
    s1+=42.0;
   }
  } else {
   if(i14<1.0218231678009033){
    if(i30<1.613681674003601){
     s0+=73.0;
     s1+=2714.0;
    } else {
     s0+=48.0;
     s1+=163.0;
    }
   } else {
    if(i2<0.0633593499660492){
     s0+=8.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=7391.0;
    }
   }
  }
 } else {
  if(i35<1.140648365020752){
   if(i30<1.089235782623291){
    if(i19<1.0738025903701782){
     s0+=2.0;
     s1+=49.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i47<0.9995630979537964){
     s0+=6.0;
    } else {
     s0+=24.0;
     s1+=261.0;
    }
   }
  } else {
   if(i33<0.005578217096626759){
    if(i49<0.0018898553680628538){
     s0+=1267.0;
     s1+=13.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i0<0.21640291810035706){
     s0+=91.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=95.0;
    }
   }
  }
 }
}
if(i17<1.00164794921875){
 if(i71<0.021867448464035988){
  if(i16<1.0078483819961548){
   if(i46<0.0003127905074506998){
    if(i46<0.0002505127340555191){
     s0+=43787.0;
     s1+=10.0;
    } else {
     s0+=3048.0;
     s1+=38.0;
    }
   } else {
    if(i55<-0.0017304718494415283){
     s0+=153.0;
     s1+=161.0;
    } else {
     s0+=5787.0;
     s1+=193.0;
    }
   }
  } else {
   if(i17<0.9994693994522095){
    if(i28<0.01876203343272209){
     s0+=177.0;
     s1+=12.0;
    } else {
     s0+=12.0;
     s1+=25.0;
    }
   } else {
    if(i22<3.0279159545898438e-05){
     s0+=249.0;
     s1+=74.0;
    } else {
     s0+=73.0;
     s1+=710.0;
    }
   }
  }
 } else {
  if(i55<0.00968313217163086){
   if(i0<0.07878029346466064){
    if(i3<0.9966917037963867){
     s0+=9067.0;
     s1+=107.0;
    } else {
     s0+=6057.0;
     s1+=1237.0;
    }
   } else {
    if(i39<0.04035872220993042){
     s0+=122.0;
     s1+=2110.0;
    } else {
     s0+=1186.0;
     s1+=1218.0;
    }
   }
  } else {
   if(i31<0.0388965904712677){
    if(i20<0.004999159835278988){
     s0+=151.0;
     s1+=54.0;
    } else {
     s0+=1.0;
     s1+=55.0;
    }
   } else {
    if(i2<0.20919755101203918){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=690.0;
    }
   }
  }
 }
} else {
 if(i18<1.0003691911697388){
  if(i2<0.12757942080497742){
   if(i31<0.03883633017539978){
    if(i47<0.9999057054519653){
     s0+=8.0;
     s1+=50.0;
    } else {
     s0+=955.0;
     s1+=133.0;
    }
   } else {
    if(i14<0.8809046149253845){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=124.0;
    }
   }
  } else {
   if(i20<0.0038675132673233747){
    if(i67<-0.006494428962469101){
     s0+=16.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i35<1.3035686016082764){
     s0+=11.0;
     s1+=204.0;
    } else {
     s1+=544.0;
    }
   }
  }
 } else {
  if(i41<1.0621699094772339){
   s0+=60.0;
  } else {
   if(i40<-1.4634139915870037e-05){
    if(i12<1.0066536664962769){
     s0+=97.0;
     s1+=1476.0;
    } else {
     s1+=7865.0;
    }
   } else {
    if(i31<0.00703600887209177){
     s0+=38.0;
     s1+=7.0;
    } else {
     s1+=60.0;
    }
   }
  }
 }
}
if(i12<1.0056140422821045){
 if(i8<1.0452215671539307){
  if(i24<0.9775573015213013){
   if(i8<1.042016625404358){
    if(i9<0.9534680843353271){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=3607.0;
     s1+=214.0;
    }
   } else {
    if(i7<-7.802248001098633e-05){
     s0+=52.0;
    } else {
     s0+=37.0;
     s1+=100.0;
    }
   }
  } else {
   if(i46<0.00028902781195938587){
    if(i33<0.0003577771713025868){
     s0+=33886.0;
    } else {
     s0+=10938.0;
     s1+=39.0;
    }
   } else {
    if(i35<1.157791018486023){
     s0+=5048.0;
     s1+=787.0;
    } else {
     s0+=8464.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i54<-0.0001360476016998291){
   if(i3<0.9977553486824036){
    if(i40<-1.0194431524723768e-05){
     s0+=13.0;
     s1+=8.0;
    } else {
     s0+=1745.0;
     s1+=14.0;
    }
   } else {
    if(i65<0.00021241462673060596){
     s0+=96.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=55.0;
    }
   }
  } else {
   if(i20<0.003930940758436918){
    if(i2<0.07745638489723206){
     s0+=4080.0;
     s1+=613.0;
    } else {
     s0+=882.0;
     s1+=945.0;
    }
   } else {
    if(i3<0.9979761838912964){
     s0+=549.0;
     s1+=378.0;
    } else {
     s0+=735.0;
     s1+=3603.0;
    }
   }
  }
 }
} else {
 if(i4<0.000531613826751709){
  if(i49<0.0008580466965213418){
   if(i30<1.1386182308197021){
    if(i20<0.0008489277097396553){
     s0+=15.0;
     s1+=13.0;
    } else {
     s1+=235.0;
    }
   } else {
    if(i49<0.0007851746631786227){
     s0+=603.0;
     s1+=4.0;
    } else {
     s0+=33.0;
     s1+=12.0;
    }
   }
  } else {
   if(i13<-0.00031808018684387207){
    s0+=27.0;
   } else {
    if(i14<1.0122244358062744){
     s0+=18.0;
     s1+=72.0;
    } else {
     s0+=11.0;
     s1+=504.0;
    }
   }
  }
 } else {
  if(i8<1.034064531326294){
   if(i56<-2.571368713688571e-05){
    s1+=6.0;
   } else {
    s0+=35.0;
   }
  } else {
   if(i29<0.00016199224046431482){
    if(i49<0.0009297910146415234){
     s0+=24.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i30<1.2648893594741821){
     s0+=113.0;
     s1+=1975.0;
    } else {
     s0+=11.0;
     s1+=7532.0;
    }
   }
  }
 }
}
if(i4<0.0005483627319335938){
 if(i16<1.0072557926177979){
  if(i0<0.08175280690193176){
   if(i62<0.010838289745151997){
    if(i65<0.00033115269616246223){
     s0+=46518.0;
     s1+=57.0;
    } else {
     s0+=151.0;
     s1+=177.0;
    }
   } else {
    if(i41<1.103413462638855){
     s0+=4791.0;
     s1+=1045.0;
    } else {
     s0+=15616.0;
     s1+=421.0;
    }
   }
  } else {
   if(i3<0.9965264797210693){
    if(i54<-0.00013887882232666016){
     s0+=308.0;
    } else {
     s0+=96.0;
     s1+=120.0;
    }
   } else {
    if(i24<1.0087319612503052){
     s0+=78.0;
     s1+=1125.0;
    } else {
     s0+=353.0;
     s1+=426.0;
    }
   }
  }
 } else {
  if(i20<0.00434523168951273){
   if(i46<0.0007483995286747813){
    if(i0<0.06899875402450562){
     s0+=355.0;
     s1+=125.0;
    } else {
     s0+=74.0;
     s1+=441.0;
    }
   } else {
    if(i42<0.073909692466259){
     s0+=1774.0;
     s1+=176.0;
    } else {
     s0+=324.0;
     s1+=115.0;
    }
   }
  } else {
   if(i69<9.838038295129081e-07){
    if(i73<1.003371000289917){
     s0+=34.0;
     s1+=1209.0;
    } else {
     s0+=61.0;
     s1+=96.0;
    }
   } else {
    s0+=140.0;
   }
  }
 }
} else {
 if(i46<0.0002465705038048327){
  if(i27<1.0068984031677246){
   s0+=200.0;
  } else {
   if(i42<0.009399961680173874){
    s1+=10.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i0<0.06512784957885742){
   if(i68<0.0019103598315268755){
    if(i37<0.0018237897893413901){
     s0+=2.0;
     s1+=78.0;
    } else {
     s0+=143.0;
     s1+=6.0;
    }
   } else {
    if(i11<-0.0027367472648620605){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=34.0;
     s1+=397.0;
    }
   }
  } else {
   if(i12<1.0091238021850586){
    if(i0<0.13329029083251953){
     s0+=148.0;
     s1+=747.0;
    } else {
     s0+=25.0;
     s1+=1789.0;
    }
   } else {
    if(i0<0.06641024351119995){
     s0+=1.0;
     s1+=14.0;
    } else {
     s1+=8425.0;
    }
   }
  }
 }
}
if(i13<0.00044339895248413086){
 if(i6<-5.3770920203533024e-05){
  if(i1<0.06392797827720642){
   if(i3<1.0005422830581665){
    if(i63<-0.009058713912963867){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=1189.0;
     s1+=45.0;
    }
   } else {
    if(i34<1.1986849308013916){
     s1+=66.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   }
  } else {
   if(i69<-2.0488896552706137e-05){
    s0+=45.0;
   } else {
    if(i12<0.9622783660888672){
     s0+=11.0;
    } else {
     s0+=15.0;
     s1+=2160.0;
    }
   }
  }
 } else {
  if(i5<0.07114002108573914){
   if(i58<-0.00232812762260437){
    if(i30<1.1991922855377197){
     s0+=1712.0;
     s1+=815.0;
    } else {
     s0+=2656.0;
     s1+=95.0;
    }
   } else {
    if(i2<0.08341008424758911){
     s0+=61423.0;
     s1+=880.0;
    } else {
     s0+=226.0;
     s1+=437.0;
    }
   }
  } else {
   if(i50<0.9992896318435669){
    if(i50<0.9987680912017822){
     s0+=413.0;
    } else {
     s0+=67.0;
     s1+=17.0;
    }
   } else {
    if(i6<-1.38188770506531e-05){
     s0+=442.0;
     s1+=1308.0;
    } else {
     s0+=778.0;
     s1+=274.0;
    }
   }
  }
 }
} else {
 if(i22<6.398558616638184e-05){
  if(i4<0.0005599558353424072){
   if(i62<0.1388038843870163){
    if(i2<0.1273028552532196){
     s0+=1330.0;
     s1+=247.0;
    } else {
     s0+=28.0;
     s1+=202.0;
    }
   } else {
    if(i43<0.011604344472289085){
     s0+=9.0;
     s1+=177.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i72<0.9998745918273926){
    if(i33<0.007501561194658279){
     s0+=66.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i2<0.13113391399383545){
     s0+=195.0;
     s1+=600.0;
    } else {
     s0+=20.0;
     s1+=1054.0;
    }
   }
  }
 } else {
  if(i6<-4.330327283241786e-05){
   if(i2<0.0036190152168273926){
    if(i11<0.0006877779960632324){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=8917.0;
   }
  } else {
   if(i38<0.00030875555239617825){
    s0+=108.0;
   } else {
    if(i35<1.2392117977142334){
     s1+=100.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
}
if(i2<0.08241075277328491){
 if(i17<1.0019805431365967){
  if(i19<1.0486011505126953){
   if(i29<0.0003147775714751333){
    if(i57<0.0008626417256891727){
     s0+=50918.0;
     s1+=85.0;
    } else {
     s0+=461.0;
     s1+=81.0;
    }
   } else {
    if(i19<1.0447213649749756){
     s0+=3799.0;
     s1+=84.0;
    } else {
     s0+=357.0;
     s1+=65.0;
    }
   }
  } else {
   if(i19<1.0920991897583008){
    if(i30<1.1039612293243408){
     s0+=2456.0;
     s1+=1313.0;
    } else {
     s0+=4181.0;
     s1+=224.0;
    }
   } else {
    if(i49<0.006421868689358234){
     s0+=6084.0;
     s1+=285.0;
    } else {
     s0+=7.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i4<0.00038242340087890625){
   if(i51<0.028412796556949615){
    if(i22<-0.00011050701141357422){
     s0+=436.0;
     s1+=8.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i4<2.944469451904297e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i30<1.5682398080825806){
    if(i67<-0.004648425616323948){
     s0+=28.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=718.0;
    }
   } else {
    if(i36<0.9168578386306763){
     s0+=6.0;
     s1+=77.0;
    } else {
     s0+=111.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i18<1.0006494522094727){
  if(i47<0.9995659589767456){
   if(i3<0.9969128370285034){
    s0+=571.0;
   } else {
    if(i41<1.0976307392120361){
     s0+=41.0;
    } else {
     s0+=5.0;
     s1+=123.0;
    }
   }
  } else {
   if(i20<0.004802085924893618){
    if(i53<0.057592958211898804){
     s0+=414.0;
     s1+=812.0;
    } else {
     s0+=660.0;
     s1+=196.0;
    }
   } else {
    if(i51<0.003001969773322344){
     s0+=234.0;
     s1+=1206.0;
    } else {
     s0+=15.0;
     s1+=1112.0;
    }
   }
  }
 } else {
  if(i4<0.00020241737365722656){
   if(i56<2.954160481749568e-05){
    if(i17<1.0001964569091797){
     s0+=22.0;
     s1+=122.0;
    } else {
     s0+=77.0;
     s1+=13.0;
    }
   } else {
    if(i29<0.00018881492724176496){
     s0+=1.0;
    } else {
     s0+=6.0;
     s1+=181.0;
    }
   }
  } else {
   if(i41<1.0610177516937256){
    s0+=9.0;
   } else {
    if(i22<3.0279159545898438e-05){
     s0+=85.0;
     s1+=861.0;
    } else {
     s0+=38.0;
     s1+=9558.0;
    }
   }
  }
 }
}
if(i21<1.0028107166290283){
 if(i0<0.08540502190589905){
  if(i9<1.0401519536972046){
   if(i42<0.026614513248205185){
    if(i14<1.007964849472046){
     s0+=53928.0;
     s1+=402.0;
    } else {
     s0+=116.0;
     s1+=46.0;
    }
   } else {
    if(i71<0.09038791060447693){
     s0+=4052.0;
     s1+=673.0;
    } else {
     s0+=3951.0;
     s1+=47.0;
    }
   }
  } else {
   if(i30<1.1013743877410889){
    if(i43<0.0005220385501161218){
     s0+=1601.0;
     s1+=245.0;
    } else {
     s0+=129.0;
     s1+=493.0;
    }
   } else {
    if(i7<5.942583084106445e-05){
     s0+=4564.0;
     s1+=332.0;
    } else {
     s0+=23.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i64<0.036707282066345215){
   if(i13<-0.000624537467956543){
    s0+=141.0;
   } else {
    if(i47<0.9998688697814941){
     s0+=46.0;
     s1+=2130.0;
    } else {
     s0+=295.0;
     s1+=1216.0;
    }
   }
  } else {
   if(i37<0.010464027523994446){
    if(i17<0.9985275268554688){
     s0+=290.0;
     s1+=1.0;
    } else {
     s0+=609.0;
     s1+=515.0;
    }
   } else {
    if(i0<0.12868547439575195){
     s0+=11.0;
     s1+=3.0;
    } else {
     s1+=406.0;
    }
   }
  }
 }
} else {
 if(i15<2.0444393157958984e-05){
  if(i11<-0.0017773807048797607){
   if(i25<0.07468557357788086){
    if(i1<0.1066843569278717){
     s0+=653.0;
     s1+=12.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i47<0.9998511075973511){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=62.0;
    }
   }
  } else {
   if(i29<0.00020625068282242864){
    if(i1<0.06823432445526123){
     s0+=173.0;
     s1+=6.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i4<0.0004985332489013672){
     s0+=143.0;
     s1+=270.0;
    } else {
     s0+=45.0;
     s1+=1049.0;
    }
   }
  }
 } else {
  if(i7<3.8683414459228516e-05){
   if(i1<0.11026790738105774){
    if(i51<0.02742879092693329){
     s0+=233.0;
     s1+=27.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   } else {
    if(i5<0.12055614590644836){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=101.0;
    }
   }
  } else {
   if(i18<1.002931833267212){
    if(i5<0.08929502964019775){
     s0+=109.0;
     s1+=232.0;
    } else {
     s0+=3.0;
     s1+=733.0;
    }
   } else {
    if(i40<-1.4018227375345305e-05){
     s0+=25.0;
     s1+=7980.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   }
  }
 }
}
if(i0<0.08263090252876282){
 if(i18<1.0051631927490234){
  if(i57<0.000789366546086967){
   if(i21<1.0012837648391724){
    if(i38<0.00031484419014304876){
     s0+=51818.0;
     s1+=151.0;
    } else {
     s0+=7836.0;
     s1+=584.0;
    }
   } else {
    if(i33<0.00028064503567293286){
     s0+=1185.0;
    } else {
     s0+=1109.0;
     s1+=380.0;
    }
   }
  } else {
   if(i4<-0.00027883052825927734){
    if(i0<0.05873394012451172){
     s0+=5311.0;
     s1+=257.0;
    } else {
     s0+=387.0;
     s1+=135.0;
    }
   } else {
    if(i19<1.102981686592102){
     s0+=509.0;
     s1+=599.0;
    } else {
     s0+=1163.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i40<-1.3829423551214859e-05){
   if(i4<0.00021836161613464355){
    if(i17<1.001279354095459){
     s0+=15.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i52<0.003606557846069336){
     s0+=8.0;
     s1+=621.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i51<0.008836142718791962){
    if(i45<0.0008786186808720231){
     s1+=8.0;
    } else {
     s0+=348.0;
     s1+=4.0;
    }
   } else {
    if(i19<1.1894243955612183){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i50<0.9988100528717041){
  if(i45<0.021091105416417122){
   if(i17<0.9980349540710449){
    s0+=412.0;
   } else {
    s1+=3.0;
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i4<0.0004898309707641602){
   if(i1<0.1059955358505249){
    if(i63<0.003554046154022217){
     s0+=196.0;
     s1+=850.0;
    } else {
     s0+=443.0;
     s1+=81.0;
    }
   } else {
    if(i43<0.0006418696139007807){
     s0+=211.0;
     s1+=65.0;
    } else {
     s0+=250.0;
     s1+=2149.0;
    }
   }
  } else {
   if(i59<-0.0005583568126894534){
    if(i35<1.2590415477752686){
     s0+=2.0;
     s1+=595.0;
    } else {
     s1+=6724.0;
    }
   } else {
    if(i53<0.10591104626655579){
     s0+=58.0;
     s1+=3069.0;
    } else {
     s0+=70.0;
     s1+=292.0;
    }
   }
  }
 }
}
if(i11<0.0007669925689697266){
 if(i1<0.08162745833396912){
  if(i15<1.8775463104248047e-05){
   if(i19<1.0486011505126953){
    if(i68<0.0016256135422736406){
     s0+=53465.0;
     s1+=198.0;
    } else {
     s0+=1663.0;
     s1+=174.0;
    }
   } else {
    if(i0<0.0663367509841919){
     s0+=11295.0;
     s1+=1033.0;
    } else {
     s0+=853.0;
     s1+=619.0;
    }
   }
  } else {
   if(i57<0.0007837050943635404){
    if(i32<1.0015735626220703){
     s0+=728.0;
     s1+=40.0;
    } else {
     s0+=226.0;
     s1+=130.0;
    }
   } else {
    if(i37<0.005210449919104576){
     s0+=60.0;
     s1+=252.0;
    } else {
     s0+=406.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i20<0.005988460034132004){
   if(i44<0.05973231792449951){
    if(i19<1.0464835166931152){
     s0+=70.0;
     s1+=9.0;
    } else {
     s0+=55.0;
     s1+=1138.0;
    }
   } else {
    if(i47<0.9995719194412231){
     s0+=347.0;
     s1+=1.0;
    } else {
     s0+=990.0;
     s1+=562.0;
    }
   }
  } else {
   if(i31<0.01891273632645607){
    if(i43<0.009263504296541214){
     s0+=52.0;
     s1+=193.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i8<1.063843011856079){
     s0+=21.0;
     s1+=132.0;
    } else {
     s0+=7.0;
     s1+=2434.0;
    }
   }
  }
 }
} else {
 if(i5<0.04618576169013977){
  if(i6<-6.255510379560292e-05){
   if(i33<0.0003917260328307748){
    s0+=26.0;
   } else {
    s1+=500.0;
   }
  } else {
   if(i0<0.05759376287460327){
    if(i43<0.0006583228823728859){
     s0+=1.0;
     s1+=39.0;
    } else {
     s0+=469.0;
     s1+=7.0;
    }
   } else {
    s1+=60.0;
   }
  }
 } else {
  if(i2<0.0704982578754425){
   if(i69<-5.051210791862104e-06){
    s1+=95.0;
   } else {
    if(i30<1.1386182308197021){
     s1+=4.0;
    } else {
     s0+=93.0;
    }
   }
  } else {
   if(i7<-1.6391277313232422e-06){
    if(i67<-0.006407629232853651){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i22<0.00021332502365112305){
     s0+=54.0;
     s1+=1162.0;
    } else {
     s1+=8350.0;
    }
   }
  }
 }
}
if(i8<1.0555626153945923){
 if(i18<1.004399061203003){
  if(i27<1.0081523656845093){
   if(i35<1.067622423171997){
    if(i8<1.0437114238739014){
     s0+=38408.0;
     s1+=13.0;
    } else {
     s0+=949.0;
     s1+=18.0;
    }
   } else {
    if(i3<1.00110924243927){
     s0+=24091.0;
     s1+=1303.0;
    } else {
     s0+=226.0;
     s1+=282.0;
    }
   }
  } else {
   if(i41<1.1063789129257202){
    if(i1<0.05422911047935486){
     s0+=69.0;
     s1+=33.0;
    } else {
     s0+=6.0;
     s1+=238.0;
    }
   } else {
    if(i51<-0.0019850595854222775){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=235.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i17<1.0012319087982178){
   if(i16<1.0095019340515137){
    if(i4<0.0005664229393005371){
     s0+=358.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i30<1.2122554779052734){
     s1+=47.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i20<0.0011173622915521264){
    s0+=12.0;
   } else {
    if(i20<0.0021882099099457264){
     s0+=2.0;
     s1+=24.0;
    } else {
     s1+=335.0;
    }
   }
  }
 }
} else {
 if(i2<0.091400146484375){
  if(i18<1.0049057006835938){
   if(i0<0.0655854344367981){
    if(i24<0.9971569776535034){
     s0+=1859.0;
     s1+=511.0;
    } else {
     s0+=2624.0;
     s1+=153.0;
    }
   } else {
    if(i44<0.03947439789772034){
     s0+=54.0;
     s1+=387.0;
    } else {
     s0+=784.0;
     s1+=129.0;
    }
   }
  } else {
   if(i15<1.8894672393798828e-05){
    if(i30<1.2392117977142334){
     s1+=72.0;
    } else {
     s0+=149.0;
     s1+=15.0;
    }
   } else {
    if(i20<0.0016437601298093796){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=610.0;
    }
   }
  }
 } else {
  if(i20<0.004685950465500355){
   if(i61<-0.023325134068727493){
    if(i4<0.000863492488861084){
     s0+=814.0;
     s1+=170.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i3<0.9959930181503296){
     s0+=63.0;
    } else {
     s0+=233.0;
     s1+=1515.0;
    }
   }
  } else {
   if(i69<1.4100678527029231e-06){
    if(i2<0.1318739354610443){
     s0+=130.0;
     s1+=1172.0;
    } else {
     s0+=5.0;
     s1+=10032.0;
    }
   } else {
    s0+=50.0;
   }
  }
 }
}
if(i12<1.0059478282928467){
 if(i2<0.08523550629615784){
  if(i51<0.008502040058374405){
   if(i42<0.026238035410642624){
    if(i48<-0.00769534707069397){
     s0+=223.0;
     s1+=90.0;
    } else {
     s0+=56213.0;
     s1+=482.0;
    }
   } else {
    if(i37<0.001630758517421782){
     s0+=2659.0;
     s1+=804.0;
    } else {
     s0+=6930.0;
     s1+=106.0;
    }
   }
  } else {
   if(i20<0.00596595648676157){
    if(i21<1.000563621520996){
     s0+=2246.0;
     s1+=359.0;
    } else {
     s0+=113.0;
     s1+=161.0;
    }
   } else {
    if(i32<0.9734930992126465){
     s0+=254.0;
     s1+=138.0;
    } else {
     s0+=37.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i13<-0.0004050135612487793){
   if(i70<4.450622509466484e-05){
    s0+=611.0;
   } else {
    if(i10<0.985061764717102){
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   }
  } else {
   if(i25<0.0635872483253479){
    if(i74<9.518052684143186e-05){
     s0+=2.0;
     s1+=1027.0;
    } else {
     s0+=38.0;
     s1+=735.0;
    }
   } else {
    if(i41<1.319493293762207){
     s0+=916.0;
     s1+=1048.0;
    } else {
     s0+=192.0;
     s1+=1511.0;
    }
   }
  }
 }
} else {
 if(i4<0.00049591064453125){
  if(i0<0.08206424117088318){
   if(i34<1.084579348564148){
    s1+=71.0;
   } else {
    if(i42<0.0030940035358071327){
     s1+=2.0;
    } else {
     s0+=511.0;
     s1+=7.0;
    }
   }
  } else {
   if(i49<0.0008427434368059039){
    if(i35<1.1658520698547363){
     s1+=189.0;
    } else {
     s0+=112.0;
     s1+=9.0;
    }
   } else {
    if(i31<0.003797223325818777){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=431.0;
    }
   }
  }
 } else {
  if(i1<0.05986654758453369){
   if(i7<6.371736526489258e-05){
    if(i30<1.2392117977142334){
     s1+=76.0;
    } else {
     s0+=124.0;
     s1+=1.0;
    }
   } else {
    if(i73<1.0024044513702393){
     s0+=1.0;
     s1+=341.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i0<0.0774482786655426){
    if(i40<-1.3936246432422195e-05){
     s0+=6.0;
     s1+=104.0;
    } else {
     s0+=20.0;
     s1+=6.0;
    }
   } else {
    if(i12<1.007554054260254){
     s0+=25.0;
     s1+=291.0;
    } else {
     s0+=5.0;
     s1+=8660.0;
    }
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i13<0.0005329251289367676){
  if(i71<0.018550656735897064){
   if(i16<1.0078846216201782){
    if(i55<-0.0028303861618041992){
     s0+=43.0;
     s1+=88.0;
    } else {
     s0+=50988.0;
     s1+=177.0;
    }
   } else {
    if(i24<1.0119487047195435){
     s0+=84.0;
     s1+=172.0;
    } else {
     s0+=229.0;
     s1+=60.0;
    }
   }
  } else {
   if(i48<0.005359232425689697){
    if(i30<1.100754976272583){
     s0+=3030.0;
     s1+=1067.0;
    } else {
     s0+=5744.0;
     s1+=407.0;
    }
   } else {
    if(i67<-0.0033209137618541718){
     s0+=6636.0;
     s1+=24.0;
    } else {
     s0+=1603.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i12<1.003680944442749){
   if(i51<0.01293211244046688){
    if(i18<1.0002398490905762){
     s0+=795.0;
     s1+=53.0;
    } else {
     s0+=71.0;
     s1+=126.0;
    }
   } else {
    if(i4<0.0003046393394470215){
     s0+=32.0;
     s1+=46.0;
    } else {
     s0+=10.0;
     s1+=212.0;
    }
   }
  } else {
   if(i21<1.0019614696502686){
    if(i65<4.713858652394265e-05){
     s0+=54.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i13<0.0005848407745361328){
     s0+=24.0;
     s1+=33.0;
    } else {
     s0+=5.0;
     s1+=494.0;
    }
   }
  }
 }
} else {
 if(i54<-0.0001392960548400879){
  if(i3<0.9978853464126587){
   if(i21<1.0049586296081543){
    if(i40<-1.1189409633516334e-05){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=506.0;
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<0.09461897611618042){
    s0+=3.0;
   } else {
    s1+=117.0;
   }
  }
 } else {
  if(i37<0.008315237239003181){
   if(i61<-0.01936260238289833){
    if(i40<-1.3151062375982292e-05){
     s0+=222.0;
     s1+=650.0;
    } else {
     s0+=578.0;
     s1+=218.0;
    }
   } else {
    if(i20<0.0018048807978630066){
     s0+=224.0;
     s1+=322.0;
    } else {
     s0+=166.0;
     s1+=4721.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i39<0.0489543080329895){
     s1+=15.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   } else {
    if(i20<0.002652458380907774){
     s0+=36.0;
     s1+=109.0;
    } else {
     s0+=12.0;
     s1+=7843.0;
    }
   }
  }
 }
}
if(i1<0.07825765013694763){
 if(i18<1.0043835639953613){
  if(i53<-0.027904421091079712){
   if(i72<1.0003756284713745){
    if(i6<-2.7030888304580003e-05){
     s0+=150.0;
     s1+=118.0;
    } else {
     s0+=1912.0;
     s1+=141.0;
    }
   } else {
    if(i68<0.001118223648518324){
     s0+=193.0;
     s1+=35.0;
    } else {
     s0+=346.0;
     s1+=416.0;
    }
   }
  } else {
   if(i19<1.0451585054397583){
    if(i4<0.000746309757232666){
     s0+=53040.0;
     s1+=195.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=3177.0;
     s1+=1050.0;
    } else {
     s0+=9953.0;
     s1+=351.0;
    }
   }
  }
 } else {
  if(i7<3.701448440551758e-05){
   if(i40<-1.297281232837122e-05){
    if(i33<0.0025518611073493958){
     s1+=45.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   } else {
    if(i63<-0.0025865137577056885){
     s0+=13.0;
     s1+=20.0;
    } else {
     s0+=416.0;
     s1+=1.0;
    }
   }
  } else {
   if(i20<0.001842552563175559){
    if(i40<-1.5525612980127335e-05){
     s1+=10.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i52<0.003687441349029541){
     s0+=1.0;
     s1+=806.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i18<1.0009629726409912){
  if(i28<0.020412825047969818){
   if(i67<-0.005173219367861748){
    if(i5<0.14195343852043152){
     s0+=471.0;
     s1+=22.0;
    } else {
     s0+=115.0;
     s1+=66.0;
    }
   } else {
    if(i19<1.0494438409805298){
     s0+=172.0;
     s1+=5.0;
    } else {
     s0+=202.0;
     s1+=405.0;
    }
   }
  } else {
   if(i13<-0.00041115283966064453){
    if(i54<-0.00010243058204650879){
     s0+=237.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.11726287007331848){
     s0+=286.0;
     s1+=681.0;
    } else {
     s0+=164.0;
     s1+=2351.0;
    }
   }
  }
 } else {
  if(i37<0.0002575819380581379){
   s0+=9.0;
  } else {
   if(i14<1.0189094543457031){
    if(i36<1.023995280265808){
     s0+=22.0;
     s1+=2080.0;
    } else {
     s0+=153.0;
     s1+=979.0;
    }
   } else {
    if(i43<0.000592365744523704){
     s0+=1.0;
    } else {
     s0+=19.0;
     s1+=7316.0;
    }
   }
  }
 }
}
if(i12<1.0059504508972168){
 if(i9<1.0452215671539307){
  if(i42<0.029854141175746918){
   if(i0<0.08264222741127014){
    if(i52<-0.0019263029098510742){
     s0+=597.0;
     s1+=244.0;
    } else {
     s0+=56371.0;
     s1+=365.0;
    }
   } else {
    if(i7<-2.110004425048828e-05){
     s0+=111.0;
     s1+=15.0;
    } else {
     s0+=25.0;
     s1+=146.0;
    }
   }
  } else {
   if(i8<1.0401138067245483){
    if(i5<0.07270586490631104){
     s0+=6513.0;
     s1+=298.0;
    } else {
     s0+=50.0;
     s1+=112.0;
    }
   } else {
    if(i45<0.0023955926299095154){
     s0+=565.0;
     s1+=745.0;
    } else {
     s0+=924.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i6<-1.9676523152156733e-05){
   if(i5<0.09315818548202515){
    if(i30<1.2371783256530762){
     s0+=31.0;
     s1+=821.0;
    } else {
     s0+=1308.0;
     s1+=559.0;
    }
   } else {
    if(i2<0.13574367761611938){
     s0+=157.0;
     s1+=376.0;
    } else {
     s0+=93.0;
     s1+=2156.0;
    }
   }
  } else {
   if(i1<0.08174359798431396){
    if(i20<0.005901111289858818){
     s0+=2912.0;
     s1+=187.0;
    } else {
     s0+=13.0;
     s1+=43.0;
    }
   } else {
    if(i6<-9.185591807181481e-06){
     s0+=167.0;
     s1+=236.0;
    } else {
     s0+=729.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i2<0.07048600912094116){
  if(i15<2.0682811737060547e-05){
   if(i34<1.1172748804092407){
    if(i20<0.0008535960223525763){
     s0+=4.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i6<-6.313235644483939e-05){
     s1+=5.0;
    } else {
     s0+=532.0;
     s1+=1.0;
    }
   }
  } else {
   if(i72<0.9990423917770386){
    s0+=8.0;
   } else {
    if(i20<0.0013681570999324322){
     s0+=15.0;
    } else {
     s1+=247.0;
    }
   }
  }
 } else {
  if(i0<0.09101250767707825){
   if(i20<0.0019004612695425749){
    if(i24<1.0195212364196777){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=58.0;
     s1+=4.0;
    }
   } else {
    if(i55<0.003783702850341797){
     s0+=6.0;
     s1+=496.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   }
  } else {
   if(i43<0.0005818568752147257){
    if(i34<1.1517177820205688){
     s1+=72.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i11<0.0003669261932373047){
     s0+=38.0;
     s1+=247.0;
    } else {
     s0+=13.0;
     s1+=8955.0;
    }
   }
  }
 }
}
if(i7<3.629922866821289e-05){
 if(i71<0.02569199725985527){
  if(i1<0.0853641927242279){
   if(i57<0.0008439854718744755){
    if(i10<1.0065470933914185){
     s0+=53602.0;
     s1+=244.0;
    } else {
     s0+=330.0;
     s1+=260.0;
    }
   } else {
    if(i59<-1.0587085853330791e-05){
     s0+=431.0;
     s1+=93.0;
    } else {
     s0+=77.0;
     s1+=153.0;
    }
   }
  } else {
   if(i17<0.9990168809890747){
    if(i32<0.9746663570404053){
     s1+=1.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i10<0.9991023540496826){
     s0+=28.0;
     s1+=5.0;
    } else {
     s0+=54.0;
     s1+=529.0;
    }
   }
  }
 } else {
  if(i9<1.0401138067245483){
   if(i30<1.2371783256530762){
    if(i35<1.0717806816101074){
     s0+=1835.0;
     s1+=32.0;
    } else {
     s0+=1390.0;
     s1+=861.0;
    }
   } else {
    if(i25<0.07071709632873535){
     s0+=7901.0;
     s1+=84.0;
    } else {
     s0+=20.0;
     s1+=38.0;
    }
   }
  } else {
   if(i28<0.027353394776582718){
    if(i20<0.002827682066708803){
     s0+=2570.0;
     s1+=230.0;
    } else {
     s0+=1052.0;
     s1+=690.0;
    }
   } else {
    if(i54<-0.00013935565948486328){
     s0+=434.0;
     s1+=42.0;
    } else {
     s0+=600.0;
     s1+=2144.0;
    }
   }
  }
 }
} else {
 if(i33<0.000399573240429163){
  s0+=380.0;
 } else {
  if(i0<0.06512784957885742){
   if(i20<0.0025089376140385866){
    if(i41<1.1753523349761963){
     s1+=11.0;
    } else {
     s0+=136.0;
     s1+=2.0;
    }
   } else {
    if(i22<-0.00015109777450561523){
     s0+=95.0;
     s1+=92.0;
    } else {
     s0+=26.0;
     s1+=439.0;
    }
   }
  } else {
   if(i43<0.0004675943637266755){
    s0+=13.0;
   } else {
    if(i3<1.0039763450622559){
     s0+=149.0;
     s1+=1649.0;
    } else {
     s0+=32.0;
     s1+=9451.0;
    }
   }
  }
 }
}
if(i1<0.07786303758621216){
 if(i10<1.0077202320098877){
  if(i3<1.0024800300598145){
   if(i68<0.0015202329959720373){
    if(i46<0.0002878268132917583){
     s0+=46125.0;
     s1+=36.0;
    } else {
     s0+=15835.0;
     s1+=833.0;
    }
   } else {
    if(i35<1.1823735237121582){
     s0+=2479.0;
     s1+=772.0;
    } else {
     s0+=3817.0;
     s1+=239.0;
    }
   }
  } else {
   if(i46<0.000262620160356164){
    s0+=31.0;
   } else {
    if(i66<0.00038045161636546254){
     s0+=34.0;
     s1+=28.0;
    } else {
     s0+=50.0;
     s1+=420.0;
    }
   }
  }
 } else {
  if(i30<1.1039612293243408){
   if(i11<-4.780292510986328e-05){
    if(i74<0.00010200741235166788){
     s0+=56.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i6<-2.318572296644561e-05){
     s1+=654.0;
    } else {
     s0+=25.0;
     s1+=6.0;
    }
   }
  } else {
   if(i20<0.006040157284587622){
    if(i22<0.0002976655960083008){
     s0+=924.0;
     s1+=45.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i60<0.4665936827659607){
     s1+=166.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i20<0.0046697016805410385){
  if(i61<-0.01936260238289833){
   if(i12<1.0118803977966309){
    if(i2<0.23447129130363464){
     s0+=738.0;
     s1+=69.0;
    } else {
     s0+=165.0;
     s1+=182.0;
    }
   } else {
    if(i67<-0.0174238383769989){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  } else {
   if(i6<-1.627230813028291e-05){
    if(i4<-0.0006568431854248047){
     s0+=35.0;
     s1+=12.0;
    } else {
     s0+=164.0;
     s1+=1724.0;
    }
   } else {
    if(i38<0.0004617007216438651){
     s0+=149.0;
     s1+=5.0;
    } else {
     s0+=243.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i22<-0.00013083219528198242){
   if(i54<-0.0001443028450012207){
    if(i33<0.02410254254937172){
     s0+=72.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i19<1.0819685459136963){
     s0+=122.0;
     s1+=39.0;
    } else {
     s0+=70.0;
     s1+=1173.0;
    }
   }
  } else {
   if(i3<0.9975607395172119){
    if(i31<0.04251423478126526){
     s0+=20.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i2<0.13523033261299133){
     s0+=29.0;
     s1+=1282.0;
    } else {
     s0+=3.0;
     s1+=8999.0;
    }
   }
  }
 }
}
if(i3<1.002474308013916){
 if(i34<1.0598037242889404){
  if(i55<-0.0017299950122833252){
   if(i27<0.9782989025115967){
    if(i0<0.05696937441825867){
     s0+=466.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i22<-0.0001595020294189453){
     s0+=12.0;
     s1+=44.0;
    } else {
     s0+=192.0;
     s1+=2.0;
    }
   }
  } else {
   if(i28<0.026883963495492935){
    if(i1<0.06235504150390625){
     s0+=42042.0;
    } else {
     s0+=1481.0;
     s1+=3.0;
    }
   } else {
    if(i26<1.034354567527771){
     s0+=165.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i8<1.0446083545684814){
   if(i0<0.08213692903518677){
    if(i43<0.0006354182260110974){
     s0+=4147.0;
     s1+=565.0;
    } else {
     s0+=14527.0;
     s1+=165.0;
    }
   } else {
    if(i21<0.9972028732299805){
     s0+=52.0;
     s1+=11.0;
    } else {
     s0+=34.0;
     s1+=233.0;
    }
   }
  } else {
   if(i6<-3.609148916439153e-05){
    if(i35<1.150278091430664){
     s0+=33.0;
     s1+=955.0;
    } else {
     s0+=1149.0;
     s1+=1888.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=1185.0;
     s1+=1141.0;
    } else {
     s0+=5212.0;
     s1+=898.0;
    }
   }
  }
 }
} else {
 if(i0<0.061940014362335205){
  if(i52<-0.0017895102500915527){
   if(i4<0.0006218552589416504){
    if(i23<1.004810094833374){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i43<0.010845895856618881){
     s0+=7.0;
     s1+=311.0;
    } else {
     s0+=12.0;
     s1+=12.0;
    }
   }
  } else {
   if(i33<0.0024578887969255447){
    if(i34<1.052521824836731){
     s0+=3.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i35<1.2160736322402954){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=200.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i35<1.3420226573944092){
   if(i11<3.5822391510009766e-05){
    if(i1<0.13910138607025146){
     s0+=89.0;
     s1+=151.0;
    } else {
     s0+=3.0;
     s1+=237.0;
    }
   } else {
    if(i11<0.001422286033630371){
     s0+=61.0;
     s1+=927.0;
    } else {
     s1+=2464.0;
    }
   }
  } else {
   if(i12<0.9993070363998413){
    if(i49<0.0016125733964145184){
     s0+=5.0;
     s1+=10.0;
    } else {
     s1+=536.0;
    }
   } else {
    s1+=6426.0;
   }
  }
 }
}
if(i3<1.0024325847625732){
 if(i2<0.08502998948097229){
  if(i51<0.008470621891319752){
   if(i0<0.06915926933288574){
    if(i48<-0.0061759352684021){
     s0+=1978.0;
     s1+=243.0;
    } else {
     s0+=62509.0;
     s1+=676.0;
    }
   } else {
    if(i21<0.9977456331253052){
     s0+=846.0;
     s1+=58.0;
    } else {
     s0+=877.0;
     s1+=416.0;
    }
   }
  } else {
   if(i30<1.0850647687911987){
    s0+=639.0;
   } else {
    if(i30<1.100754976272583){
     s0+=108.0;
     s1+=387.0;
    } else {
     s0+=2023.0;
     s1+=398.0;
    }
   }
  }
 } else {
  if(i17<0.998518705368042){
   if(i30<1.4661059379577637){
    if(i4<-0.0004950761795043945){
     s0+=566.0;
    } else {
     s0+=38.0;
     s1+=6.0;
    }
   } else {
    if(i25<0.08533629775047302){
     s0+=66.0;
     s1+=10.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i20<0.001810494577512145){
    if(i39<0.04379826784133911){
     s0+=41.0;
     s1+=151.0;
    } else {
     s0+=542.0;
     s1+=91.0;
    }
   } else {
    if(i67<-0.005166155286133289){
     s0+=474.0;
     s1+=1411.0;
    } else {
     s0+=84.0;
     s1+=2027.0;
    }
   }
  }
 }
} else {
 if(i29<0.0001616518129594624){
  if(i34<1.125725507736206){
   if(i43<0.0003311223699711263){
    s0+=2.0;
   } else {
    s1+=37.0;
   }
  } else {
   if(i20<0.002155570313334465){
    s0+=106.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i1<0.06463903188705444){
   if(i48<0.0070307254791259766){
    if(i40<-1.4425161680264864e-05){
     s0+=53.0;
     s1+=704.0;
    } else {
     s0+=69.0;
     s1+=20.0;
    }
   } else {
    if(i41<1.1679329872131348){
     s1+=5.0;
    } else {
     s0+=54.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<0.12818372249603271){
    if(i67<-0.00803691428154707){
     s0+=72.0;
     s1+=95.0;
    } else {
     s0+=53.0;
     s1+=2866.0;
    }
   } else {
    if(i20<0.002142739947885275){
     s0+=5.0;
     s1+=44.0;
    } else {
     s0+=4.0;
     s1+=7379.0;
    }
   }
  }
 }
}
if(i3<1.0024447441101074){
 if(i36<1.0137226581573486){
  if(i0<0.08208948373794556){
   if(i0<0.06630754470825195){
    if(i19<1.0451585054397583){
     s0+=52326.0;
     s1+=200.0;
    } else {
     s0+=12888.0;
     s1+=1139.0;
    }
   } else {
    if(i38<0.00030645407969132066){
     s0+=1334.0;
     s1+=58.0;
    } else {
     s0+=767.0;
     s1+=463.0;
    }
   }
  } else {
   if(i13<-0.00044274330139160156){
    if(i49<0.002260549459606409){
     s0+=245.0;
    } else {
     s0+=32.0;
     s1+=7.0;
    }
   } else {
    if(i37<0.0003660634974949062){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=153.0;
     s1+=1833.0;
    }
   }
  }
 } else {
  if(i28<0.030309483408927917){
   if(i11<0.0005853176116943359){
    if(i65<-6.495143315987661e-05){
     s0+=147.0;
     s1+=145.0;
    } else {
     s0+=2171.0;
     s1+=344.0;
    }
   } else {
    if(i35<1.1820628643035889){
     s0+=7.0;
     s1+=321.0;
    } else {
     s0+=110.0;
     s1+=36.0;
    }
   }
  } else {
   if(i3<0.9964579343795776){
    if(i66<0.0016893830616027117){
     s0+=150.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   } else {
    if(i11<-0.0039727091789245605){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=208.0;
     s1+=1280.0;
    }
   }
  }
 }
} else {
 if(i29<0.00016961463552433997){
  if(i49<0.0008341936045326293){
   if(i40<-1.5593377611367032e-05){
    s1+=3.0;
   } else {
    s0+=97.0;
   }
  } else {
   if(i30<1.2392117977142334){
    s1+=56.0;
   } else {
    if(i66<0.00046167452819645405){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i40<-1.3192124242777936e-05){
   if(i20<0.009377308189868927){
    if(i3<1.004711627960205){
     s0+=101.0;
     s1+=957.0;
    } else {
     s0+=23.0;
     s1+=2689.0;
    }
   } else {
    if(i1<0.014646351337432861){
     s0+=15.0;
     s1+=22.0;
    } else {
     s0+=10.0;
     s1+=7509.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i41<1.069656252861023){
     s0+=6.0;
    } else {
     s1+=120.0;
    }
   } else {
    if(i2<0.21262726187705994){
     s0+=122.0;
     s1+=1.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
}
if(i3<1.0024573802947998){
 if(i23<1.010154128074646){
  if(i68<0.0021223644725978374){
   if(i28<0.020505458116531372){
    if(i8<1.0410068035125732){
     s0+=52638.0;
     s1+=243.0;
    } else {
     s0+=5828.0;
     s1+=522.0;
    }
   } else {
    if(i7<-1.817941665649414e-05){
     s0+=4721.0;
     s1+=297.0;
    } else {
     s0+=587.0;
     s1+=932.0;
    }
   }
  } else {
   if(i1<0.06057223677635193){
    if(i13<-0.00015246868133544922){
     s0+=2134.0;
     s1+=119.0;
    } else {
     s0+=2182.0;
     s1+=620.0;
    }
   } else {
    if(i6<4.746162630908657e-06){
     s0+=131.0;
     s1+=1066.0;
    } else {
     s0+=264.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i6<-3.2600160920992494e-05){
   if(i0<0.0803036093711853){
    if(i30<1.2392117977142334){
     s1+=153.0;
    } else {
     s0+=228.0;
     s1+=13.0;
    }
   } else {
    if(i15<1.3172626495361328e-05){
     s0+=25.0;
     s1+=1201.0;
    } else {
     s0+=105.0;
     s1+=365.0;
    }
   }
  } else {
   if(i30<1.255998969078064){
    if(i1<0.12485340237617493){
     s0+=752.0;
     s1+=155.0;
    } else {
     s0+=48.0;
     s1+=192.0;
    }
   } else {
    if(i2<0.2770010530948639){
     s0+=897.0;
     s1+=4.0;
    } else {
     s0+=47.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i6<-4.353338590590283e-05){
  if(i22<6.258487701416016e-06){
   if(i1<0.12115192413330078){
    if(i36<0.9923818111419678){
     s0+=35.0;
     s1+=275.0;
    } else {
     s0+=110.0;
     s1+=55.0;
    }
   } else {
    if(i21<0.9970977306365967){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=678.0;
    }
   }
  } else {
   if(i11<0.0015960335731506348){
    if(i4<0.0005483627319335938){
     s0+=37.0;
     s1+=48.0;
    } else {
     s0+=6.0;
     s1+=1868.0;
    }
   } else {
    s1+=8194.0;
   }
  }
 } else {
  if(i72<1.0024473667144775){
   if(i49<0.0011297400342300534){
    s0+=189.0;
   } else {
    s1+=26.0;
   }
  } else {
   if(i31<0.007788458839058876){
    s0+=10.0;
   } else {
    s1+=185.0;
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i0<0.08213692903518677){
  if(i13<0.0006604790687561035){
   if(i52<-0.0017358958721160889){
    if(i0<0.01393580436706543){
     s0+=1705.0;
     s1+=75.0;
    } else {
     s0+=895.0;
     s1+=464.0;
    }
   } else {
    if(i46<0.00030321942176669836){
     s0+=46447.0;
     s1+=84.0;
    } else {
     s0+=15747.0;
     s1+=784.0;
    }
   }
  } else {
   if(i47<1.0004397630691528){
    if(i70<1.7095559087465517e-05){
     s0+=54.0;
     s1+=295.0;
    } else {
     s0+=71.0;
     s1+=37.0;
    }
   } else {
    if(i51<0.01800760254263878){
     s0+=181.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i7<-5.790591239929199e-05){
   if(i6<-2.966415195260197e-05){
    if(i2<0.09448733925819397){
     s0+=10.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=133.0;
   }
  } else {
   if(i46<0.00028935406589880586){
    if(i17<1.0012962818145752){
     s0+=42.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i52<0.004315793514251709){
     s0+=38.0;
     s1+=994.0;
    } else {
     s0+=22.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i6<-2.9689123039133847e-05){
  if(i0<0.07547670602798462){
   if(i41<1.144650936126709){
    if(i31<0.001948996796272695){
     s0+=37.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=382.0;
    }
   } else {
    if(i10<0.9820388555526733){
     s0+=10.0;
     s1+=92.0;
    } else {
     s0+=826.0;
     s1+=277.0;
    }
   }
  } else {
   if(i17<0.9981062412261963){
    if(i45<0.006258536595851183){
     s0+=23.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i0<0.123960942029953){
     s0+=346.0;
     s1+=1744.0;
    } else {
     s0+=84.0;
     s1+=10760.0;
    }
   }
  }
 } else {
  if(i28<0.02905331179499626){
   if(i7<3.4928321838378906e-05){
    if(i2<0.10091853141784668){
     s0+=3348.0;
     s1+=219.0;
    } else {
     s0+=456.0;
     s1+=182.0;
    }
   } else {
    if(i56<7.271934009622782e-05){
     s1+=49.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i30<1.255998969078064){
    if(i6<-4.091211849299725e-06){
     s0+=18.0;
     s1+=403.0;
    } else {
     s0+=135.0;
     s1+=87.0;
    }
   } else {
    if(i45<0.006025590002536774){
     s0+=516.0;
     s1+=17.0;
    } else {
     s0+=21.0;
     s1+=79.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i0<0.08544698357582092){
  if(i52<-0.0015108287334442139){
   if(i34<1.203652262687683){
    if(i47<0.9999603629112244){
     s0+=966.0;
     s1+=572.0;
    } else {
     s0+=981.0;
     s1+=59.0;
    }
   } else {
    if(i51<0.013530094176530838){
     s0+=1479.0;
     s1+=14.0;
    } else {
     s0+=665.0;
     s1+=126.0;
    }
   }
  } else {
   if(i28<0.01429010834544897){
    if(i3<1.0024691820144653){
     s0+=54770.0;
     s1+=362.0;
    } else {
     s0+=25.0;
     s1+=25.0;
    }
   } else {
    if(i22<-0.0002155303955078125){
     s0+=6811.0;
     s1+=36.0;
    } else {
     s0+=3493.0;
     s1+=924.0;
    }
   }
  }
 } else {
  if(i17<0.9985139966011047){
   if(i49<0.0021699536591768265){
    if(i3<0.9969923496246338){
     s0+=365.0;
    } else {
     s0+=20.0;
     s1+=9.0;
    }
   } else {
    if(i41<1.4556559324264526){
     s0+=29.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i39<0.054121196269989014){
    if(i73<0.9999250173568726){
     s0+=20.0;
     s1+=1325.0;
    } else {
     s0+=93.0;
     s1+=963.0;
    }
   } else {
    if(i28<0.030986592173576355){
     s0+=735.0;
     s1+=258.0;
    } else {
     s0+=143.0;
     s1+=703.0;
    }
   }
  }
 }
} else {
 if(i20<0.0019228286109864712){
  if(i21<1.0065040588378906){
   if(i14<1.021218180656433){
    if(i68<0.004070296883583069){
     s0+=267.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   s1+=66.0;
  }
 } else {
  if(i46<0.0002403633261565119){
   if(i73<0.9968798756599426){
    s0+=41.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<0.13177666068077087){
    if(i37<0.001881856587715447){
     s0+=1.0;
     s1+=1311.0;
    } else {
     s0+=265.0;
     s1+=969.0;
    }
   } else {
    if(i21<0.9963879585266113){
     s0+=8.0;
     s1+=120.0;
    } else {
     s0+=10.0;
     s1+=9152.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i52<-0.001835256814956665){
  if(i3<1.0024073123931885){
   if(i4<-0.0003377199172973633){
    if(i1<0.038018256425857544){
     s0+=1612.0;
     s1+=79.0;
    } else {
     s0+=77.0;
     s1+=84.0;
    }
   } else {
    if(i2<0.06250572204589844){
     s0+=906.0;
     s1+=312.0;
    } else {
     s0+=17.0;
     s1+=180.0;
    }
   }
  } else {
   if(i20<0.0019815571140497923){
    if(i58<-0.00827866792678833){
     s1+=2.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i56<0.00031719444086775184){
     s1+=455.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i1<0.08137065172195435){
   if(i1<0.06252238154411316){
    if(i19<1.0451585054397583){
     s0+=51206.0;
     s1+=124.0;
    } else {
     s0+=8524.0;
     s1+=493.0;
    }
   } else {
    if(i64<0.014837116003036499){
     s0+=70.0;
     s1+=219.0;
    } else {
     s0+=2506.0;
     s1+=199.0;
    }
   }
  } else {
   if(i18<0.9940632581710815){
    if(i10<0.9811410307884216){
     s1+=6.0;
    } else {
     s0+=147.0;
     s1+=7.0;
    }
   } else {
    if(i35<1.0703742504119873){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=550.0;
    }
   }
  }
 }
} else {
 if(i2<0.09111663699150085){
  if(i3<1.0023305416107178){
   if(i33<0.0011289163958281279){
    if(i6<-1.578857518325094e-05){
     s0+=143.0;
     s1+=419.0;
    } else {
     s0+=1097.0;
     s1+=149.0;
    }
   } else {
    if(i10<0.9609477519989014){
     s0+=13.0;
     s1+=60.0;
    } else {
     s0+=3277.0;
     s1+=258.0;
    }
   }
  } else {
   if(i13<0.0004997849464416504){
    if(i30<1.2392117977142334){
     s0+=10.0;
     s1+=68.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i34<1.1682090759277344){
     s0+=1.0;
     s1+=433.0;
    } else {
     s0+=88.0;
     s1+=218.0;
    }
   }
  }
 } else {
  if(i20<0.004687285050749779){
   if(i39<0.06118372082710266){
    if(i18<0.9904919862747192){
     s0+=51.0;
     s1+=21.0;
    } else {
     s0+=142.0;
     s1+=1317.0;
    }
   } else {
    if(i29<0.0014800061471760273){
     s0+=101.0;
     s1+=149.0;
    } else {
     s0+=773.0;
     s1+=181.0;
    }
   }
  } else {
   if(i17<0.9979872703552246){
    s0+=74.0;
   } else {
    if(i37<0.00996153149753809){
     s0+=129.0;
     s1+=4397.0;
    } else {
     s0+=2.0;
     s1+=6788.0;
    }
   }
  }
 }
}
if(i2<0.08514660596847534){
 if(i7<3.93986701965332e-05){
  if(i34<1.0556960105895996){
   if(i29<0.0004486253601498902){
    s0+=41831.0;
   } else {
    if(i38<0.0004778417060151696){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=838.0;
    }
   }
  } else {
   if(i3<0.9967672824859619){
    if(i66<0.0022468389943242073){
     s0+=13641.0;
     s1+=99.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i35<1.1047927141189575){
     s0+=3645.0;
     s1+=1559.0;
    } else {
     s0+=8619.0;
     s1+=469.0;
    }
   }
  }
 } else {
  if(i37<0.00037083274219185114){
   s0+=258.0;
  } else {
   if(i40<-1.4685972928418778e-05){
    if(i30<1.5682398080825806){
     s0+=35.0;
     s1+=862.0;
    } else {
     s0+=106.0;
     s1+=72.0;
    }
   } else {
    if(i41<1.2348568439483643){
     s1+=32.0;
    } else {
     s0+=141.0;
    }
   }
  }
 }
} else {
 if(i35<1.0670123100280762){
  if(i17<1.0005223751068115){
   s0+=285.0;
  } else {
   if(i13<0.0001894235610961914){
    s1+=8.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i7<3.4749507904052734e-05){
   if(i61<-0.01954806037247181){
    if(i43<0.0017797035397961736){
     s0+=642.0;
     s1+=70.0;
    } else {
     s0+=414.0;
     s1+=859.0;
    }
   } else {
    if(i18<0.9908993244171143){
     s0+=169.0;
     s1+=150.0;
    } else {
     s0+=288.0;
     s1+=2182.0;
    }
   }
  } else {
   if(i7<5.65648078918457e-05){
    if(i17<1.0011115074157715){
     s0+=6.0;
     s1+=563.0;
    } else {
     s0+=104.0;
     s1+=487.0;
    }
   } else {
    if(i1<0.13810288906097412){
     s0+=35.0;
     s1+=1264.0;
    } else {
     s0+=2.0;
     s1+=8448.0;
    }
   }
  }
 }
}
if(i6<-8.143010927597061e-05){
 if(i8<1.0428924560546875){
  if(i13<0.0007597208023071289){
   if(i31<0.04721396788954735){
    if(i18<1.0069842338562012){
     s0+=467.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i21<1.0000786781311035){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i70<3.194880991941318e-05){
    if(i7<3.93986701965332e-05){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   } else {
    if(i31<0.05426723510026932){
     s0+=30.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i1<0.014997810125350952){
   if(i61<0.005753869190812111){
    if(i45<0.022470969706773758){
     s0+=78.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i11<-0.002248406410217285){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   if(i18<0.9978914856910706){
    if(i19<1.1241296529769897){
     s0+=103.0;
     s1+=41.0;
    } else {
     s0+=15.0;
     s1+=868.0;
    }
   } else {
    if(i19<1.1227065324783325){
     s0+=52.0;
     s1+=1616.0;
    } else {
     s0+=10.0;
     s1+=8163.0;
    }
   }
  }
 }
} else {
 if(i22<0.00011140108108520508){
  if(i0<0.08223840594291687){
   if(i58<-0.0020640194416046143){
    if(i1<0.041525840759277344){
     s0+=4621.0;
     s1+=540.0;
    } else {
     s0+=813.0;
     s1+=529.0;
    }
   } else {
    if(i3<1.0024738311767578){
     s0+=62634.0;
     s1+=980.0;
    } else {
     s0+=42.0;
     s1+=86.0;
    }
   }
  } else {
   if(i6<-1.3797138308291323e-05){
    if(i53<0.051278501749038696){
     s0+=133.0;
     s1+=1689.0;
    } else {
     s0+=424.0;
     s1+=747.0;
    }
   } else {
    if(i67<-0.0038530484307557344){
     s0+=718.0;
     s1+=110.0;
    } else {
     s0+=277.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i5<0.048204392194747925){
   if(i38<0.00029964238638058305){
    if(i69<-4.9964564823312685e-06){
     s1+=32.0;
    } else {
     s0+=471.0;
     s1+=3.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=11.0;
     s1+=313.0;
    } else {
     s0+=98.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<2.0563602447509766e-06){
    if(i39<0.011350661516189575){
     s1+=1.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i45<0.0027995489072054625){
     s0+=17.0;
     s1+=891.0;
    } else {
     s0+=85.0;
     s1+=106.0;
    }
   }
  }
 }
}
if(i22<0.00011152029037475586){
 if(i5<0.08110818266868591){
  if(i2<0.08352836966514587){
   if(i65<0.0002615138655528426){
    if(i46<0.0003313595661893487){
     s0+=47293.0;
     s1+=76.0;
    } else {
     s0+=9917.0;
     s1+=734.0;
    }
   } else {
    if(i15<1.0132789611816406e-06){
     s0+=8835.0;
     s1+=684.0;
    } else {
     s0+=2352.0;
     s1+=865.0;
    }
   }
  } else {
   if(i4<-0.0007025599479675293){
    if(i58<-0.002018958330154419){
     s0+=101.0;
     s1+=30.0;
    } else {
     s0+=283.0;
     s1+=6.0;
    }
   } else {
    if(i25<0.0637669563293457){
     s0+=47.0;
     s1+=783.0;
    } else {
     s0+=243.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i6<-1.3547796697821468e-05){
   if(i64<0.036729276180267334){
    if(i1<0.11247509717941284){
     s0+=146.0;
     s1+=447.0;
    } else {
     s0+=26.0;
     s1+=2250.0;
    }
   } else {
    if(i2<0.17577847838401794){
     s0+=311.0;
     s1+=224.0;
    } else {
     s0+=55.0;
     s1+=664.0;
    }
   }
  } else {
   if(i47<1.0000672340393066){
    if(i9<1.0423029661178589){
     s0+=26.0;
     s1+=46.0;
    } else {
     s0+=760.0;
     s1+=83.0;
    }
   } else {
    if(i31<0.014391116797924042){
     s0+=20.0;
    } else {
     s0+=10.0;
     s1+=99.0;
    }
   }
  }
 }
} else {
 if(i11<0.0011493265628814697){
  if(i9<1.0385931730270386){
   if(i56<1.448702096240595e-05){
    if(i31<0.013014852069318295){
     s0+=504.0;
     s1+=11.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i13<-1.7642974853515625e-05){
     s0+=44.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i0<0.06415283679962158){
    if(i43<0.0008566718315705657){
     s0+=2.0;
     s1+=30.0;
    } else {
     s0+=104.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.0545824766159058){
     s0+=2.0;
    } else {
     s0+=28.0;
     s1+=752.0;
    }
   }
  }
 } else {
  if(i38<0.0001942185335792601){
   if(i70<3.3449232432758436e-06){
    s0+=43.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i11<0.0014452338218688965){
    if(i56<-2.3028369469102472e-05){
     s0+=46.0;
     s1+=11.0;
    } else {
     s0+=38.0;
     s1+=614.0;
    }
   } else {
    if(i4<0.00047600269317626953){
     s0+=1.0;
     s1+=169.0;
    } else {
     s1+=8284.0;
    }
   }
  }
 }
}
if(i3<1.0024447441101074){
 if(i24<1.012088418006897){
  if(i1<0.08155691623687744){
   if(i58<-0.0022269487380981445){
    if(i1<0.04328235983848572){
     s0+=5030.0;
     s1+=508.0;
    } else {
     s0+=694.0;
     s1+=517.0;
    }
   } else {
    if(i28<0.017915382981300354){
     s0+=56145.0;
     s1+=376.0;
    } else {
     s0+=5406.0;
     s1+=692.0;
    }
   }
  } else {
   if(i35<1.0672621726989746){
    s0+=138.0;
   } else {
    if(i15<-1.7255544662475586e-05){
     s0+=107.0;
     s1+=6.0;
    } else {
     s0+=147.0;
     s1+=1591.0;
    }
   }
  }
 } else {
  if(i59<-0.0001426745147909969){
   if(i2<0.08947139978408813){
    if(i38<0.0008258797461166978){
     s0+=493.0;
     s1+=162.0;
    } else {
     s0+=687.0;
     s1+=9.0;
    }
   } else {
    if(i38<0.0014892634935677052){
     s0+=70.0;
     s1+=896.0;
    } else {
     s0+=563.0;
     s1+=1030.0;
    }
   }
  } else {
   if(i18<1.001244068145752){
    if(i35<1.0880398750305176){
     s0+=181.0;
     s1+=52.0;
    } else {
     s0+=907.0;
     s1+=36.0;
    }
   } else {
    if(i70<1.1393535714887548e-06){
     s0+=34.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i38<0.0001879951305454597){
  if(i40<-1.5593377611367032e-05){
   s1+=15.0;
  } else {
   s0+=90.0;
  }
 } else {
  if(i20<0.0022305105812847614){
   if(i22<0.0002881288528442383){
    if(i74<4.98951121699065e-05){
     s1+=20.0;
    } else {
     s0+=156.0;
     s1+=6.0;
    }
   } else {
    s1+=149.0;
   }
  } else {
   if(i0<0.04850319027900696){
    if(i52<0.0008092522621154785){
     s0+=34.0;
     s1+=252.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   } else {
    if(i12<1.0066099166870117){
     s0+=108.0;
     s1+=1835.0;
    } else {
     s0+=5.0;
     s1+=9013.0;
    }
   }
  }
 }
}
if(i6<-8.167879423126578e-05){
 if(i17<0.9992738962173462){
  if(i5<0.0927031934261322){
   if(i51<0.02467331662774086){
    s0+=313.0;
   } else {
    if(i29<0.02113826759159565){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i49<0.0018146497895941138){
    s0+=1.0;
   } else {
    s1+=41.0;
   }
  }
 } else {
  if(i1<0.024926036596298218){
   if(i18<1.0019670724868774){
    if(i63<-0.009342163801193237){
     s1+=14.0;
    } else {
     s0+=314.0;
     s1+=5.0;
    }
   } else {
    if(i12<0.9823927879333496){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=58.0;
    }
   }
  } else {
   if(i0<0.09973117709159851){
    if(i48<0.012868404388427734){
     s0+=47.0;
     s1+=776.0;
    } else {
     s0+=127.0;
     s1+=5.0;
    }
   } else {
    if(i31<0.0164492204785347){
     s0+=41.0;
     s1+=964.0;
    } else {
     s0+=8.0;
     s1+=9080.0;
    }
   }
  }
 }
} else {
 if(i4<0.000564873218536377){
  if(i24<1.0108890533447266){
   if(i58<-0.0023474693298339844){
    if(i5<0.05879446864128113){
     s0+=5006.0;
     s1+=905.0;
    } else {
     s0+=254.0;
     s1+=617.0;
    }
   } else {
    if(i16<1.0072667598724365){
     s0+=60733.0;
     s1+=1105.0;
    } else {
     s0+=736.0;
     s1+=425.0;
    }
   }
  } else {
   if(i59<-0.00015673614689148962){
    if(i35<1.1602869033813477){
     s0+=445.0;
     s1+=870.0;
    } else {
     s0+=1363.0;
     s1+=649.0;
    }
   } else {
    if(i67<-0.005488339811563492){
     s0+=864.0;
     s1+=31.0;
    } else {
     s0+=452.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i19<1.0415534973144531){
   if(i1<0.08219969272613525){
    s0+=127.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i2<0.0627346932888031){
    if(i49<0.0009683348471298814){
     s0+=97.0;
     s1+=3.0;
    } else {
     s0+=45.0;
     s1+=233.0;
    }
   } else {
    if(i52<0.003940105438232422){
     s0+=35.0;
     s1+=950.0;
    } else {
     s0+=90.0;
     s1+=252.0;
    }
   }
  }
 }
}
if(i0<0.08202600479125977){
 if(i8<1.0459426641464233){
  if(i7<3.898143768310547e-05){
   if(i57<0.0007542538223788142){
    if(i13<0.00010120868682861328){
     s0+=50634.0;
     s1+=139.0;
    } else {
     s0+=5549.0;
     s1+=173.0;
    }
   } else {
    if(i46<0.0013881443301215768){
     s0+=1426.0;
     s1+=453.0;
    } else {
     s0+=4166.0;
     s1+=59.0;
    }
   }
  } else {
   if(i46<0.0004100423539057374){
    if(i20<0.003773386124521494){
     s0+=299.0;
     s1+=8.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i20<0.0026791743002831936){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i34<1.1036889553070068){
   if(i40<-1.208575486089103e-05){
    if(i4<-0.00026997923851013184){
     s0+=78.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=706.0;
    }
   } else {
    if(i28<0.017057720571756363){
     s0+=1975.0;
     s1+=243.0;
    } else {
     s0+=235.0;
     s1+=434.0;
    }
   }
  } else {
   if(i65<0.0006685937405563891){
    if(i34<1.1476502418518066){
     s0+=1047.0;
     s1+=157.0;
    } else {
     s0+=2850.0;
     s1+=68.0;
    }
   } else {
    if(i7<1.7344951629638672e-05){
     s0+=812.0;
     s1+=150.0;
    } else {
     s0+=169.0;
     s1+=333.0;
    }
   }
  }
 }
} else {
 if(i54<-0.00025025010108947754){
  if(i11<0.0007898509502410889){
   if(i37<0.030147749930620193){
    if(i69<-2.4194796424126253e-06){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=412.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   s1+=26.0;
  }
 } else {
  if(i2<0.12388715147972107){
   if(i52<0.004298865795135498){
    if(i37<0.0004367301007732749){
     s0+=77.0;
     s1+=23.0;
    } else {
     s0+=228.0;
     s1+=2418.0;
    }
   } else {
    if(i5<0.0665789544582367){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=557.0;
     s1+=39.0;
    }
   }
  } else {
   if(i45<0.0011682715266942978){
    if(i34<1.1433550119400024){
     s0+=17.0;
     s1+=270.0;
    } else {
     s0+=169.0;
    }
   } else {
    if(i35<1.259662389755249){
     s0+=225.0;
     s1+=2160.0;
    } else {
     s0+=20.0;
     s1+=9267.0;
    }
   }
  }
 }
}
if(i26<1.040831446647644){
 if(i5<0.06906795501708984){
  if(i11<0.0011491179466247559){
   if(i8<1.0451585054397583){
    if(i55<-0.0014070868492126465){
     s0+=4083.0;
     s1+=490.0;
    } else {
     s0+=57462.0;
     s1+=392.0;
    }
   } else {
    if(i6<-1.8555911083240062e-05){
     s0+=1505.0;
     s1+=1074.0;
    } else {
     s0+=3393.0;
     s1+=435.0;
    }
   }
  } else {
   if(i35<1.2369153499603271){
    s1+=519.0;
   } else {
    if(i41<1.2911688089370728){
     s0+=100.0;
     s1+=1.0;
    } else {
     s1+=177.0;
    }
   }
  }
 } else {
  if(i28<0.015294095501303673){
   if(i34<1.0598037242889404){
    s0+=212.0;
   } else {
    if(i39<0.03685879707336426){
     s0+=11.0;
     s1+=166.0;
    } else {
     s0+=170.0;
     s1+=105.0;
    }
   }
  } else {
   if(i67<-0.005405245814472437){
    if(i0<0.09502261877059937){
     s0+=73.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=88.0;
    }
   } else {
    if(i6<1.6373232938349247e-06){
     s0+=40.0;
     s1+=1337.0;
    } else {
     s0+=29.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i6<-4.1723706090124324e-05){
  if(i14<1.0055420398712158){
   if(i1<0.09737834334373474){
    if(i63<-0.0028690993785858154){
     s0+=1.0;
     s1+=91.0;
    } else {
     s0+=416.0;
     s1+=111.0;
    }
   } else {
    if(i2<0.12997737526893616){
     s0+=53.0;
     s1+=150.0;
    } else {
     s0+=17.0;
     s1+=1394.0;
    }
   }
  } else {
   if(i69<6.863201633677818e-07){
    if(i2<0.07421287894248962){
     s0+=45.0;
     s1+=140.0;
    } else {
     s0+=55.0;
     s1+=9043.0;
    }
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i31<0.013530706986784935){
   if(i5<0.17466482520103455){
    if(i49<0.002074668649584055){
     s0+=1783.0;
     s1+=143.0;
    } else {
     s0+=47.0;
     s1+=48.0;
    }
   } else {
    if(i6<-2.1417959942482412e-05){
     s0+=2.0;
     s1+=58.0;
    } else {
     s0+=79.0;
     s1+=37.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i62<0.05714547634124756){
     s0+=15.0;
     s1+=326.0;
    } else {
     s0+=38.0;
     s1+=20.0;
    }
   } else {
    if(i4<0.0004912018775939941){
     s0+=1619.0;
     s1+=487.0;
    } else {
     s0+=7.0;
     s1+=98.0;
    }
   }
  }
 }
}
if(i7<3.832578659057617e-05){
 if(i8<1.0452215671539307){
  if(i55<-0.0011661052703857422){
   if(i37<0.0016141992527991533){
    if(i15<-1.823902130126953e-05){
     s0+=664.0;
    } else {
     s0+=1231.0;
     s1+=511.0;
    }
   } else {
    if(i7<3.4868717193603516e-05){
     s0+=2989.0;
     s1+=49.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i38<0.00030651327688246965){
    if(i16<1.0076560974121094){
     s0+=50898.0;
     s1+=92.0;
    } else {
     s0+=112.0;
     s1+=24.0;
    }
   } else {
    if(i67<-0.0035057486966252327){
     s0+=3896.0;
     s1+=14.0;
    } else {
     s0+=2173.0;
     s1+=340.0;
    }
   }
  }
 } else {
  if(i0<0.08564546704292297){
   if(i28<0.016885962337255478){
    if(i3<1.0012538433074951){
     s0+=4805.0;
     s1+=269.0;
    } else {
     s0+=311.0;
     s1+=172.0;
    }
   } else {
    if(i38<0.001553422654978931){
     s0+=648.0;
     s1+=675.0;
    } else {
     s0+=1344.0;
     s1+=260.0;
    }
   }
  } else {
   if(i13<-0.0004030168056488037){
    if(i33<0.007754760794341564){
     s0+=318.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i64<0.02788907289505005){
     s0+=201.0;
     s1+=2239.0;
    } else {
     s0+=742.0;
     s1+=958.0;
    }
   }
  }
 }
} else {
 if(i47<0.9992470741271973){
  s0+=302.0;
 } else {
  if(i38<0.00017894848133437335){
   if(i2<0.05905812978744507){
    s0+=38.0;
   } else {
    if(i71<0.014435475692152977){
     s1+=9.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i11<3.5643577575683594e-05){
    if(i5<0.1302001178264618){
     s0+=263.0;
     s1+=636.0;
    } else {
     s0+=16.0;
     s1+=777.0;
    }
   } else {
    if(i34<1.2582359313964844){
     s0+=127.0;
     s1+=3614.0;
    } else {
     s1+=6508.0;
    }
   }
  }
 }
}
if(i15<1.7940998077392578e-05){
 if(i1<0.08263927698135376){
  if(i28<0.017065567895770073){
   if(i12<1.004448413848877){
    if(i60<0.047328881919384){
     s0+=52920.0;
     s1+=300.0;
    } else {
     s0+=5529.0;
     s1+=413.0;
    }
   } else {
    if(i33<0.0011402019299566746){
     s0+=33.0;
     s1+=178.0;
    } else {
     s0+=576.0;
     s1+=13.0;
    }
   }
  } else {
   if(i30<1.2371783256530762){
    if(i1<0.05749744176864624){
     s0+=1881.0;
     s1+=647.0;
    } else {
     s0+=270.0;
     s1+=551.0;
    }
   } else {
    if(i35<1.1907789707183838){
     s0+=257.0;
     s1+=50.0;
    } else {
     s0+=6524.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i3<0.996302604675293){
   if(i35<1.476589322090149){
    if(i40<-1.6455629520351067e-05){
     s0+=12.0;
     s1+=14.0;
    } else {
     s0+=413.0;
     s1+=6.0;
    }
   } else {
    if(i69<-3.243847459089011e-06){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   }
  } else {
   if(i44<0.05853345990180969){
    if(i6<1.977461579372175e-06){
     s0+=16.0;
     s1+=2274.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   } else {
    if(i28<0.029474304988980293){
     s0+=737.0;
     s1+=465.0;
    } else {
     s0+=122.0;
     s1+=1221.0;
    }
   }
  }
 }
} else {
 if(i3<1.0018670558929443){
  if(i34<1.3604438304901123){
   if(i2<0.131911963224411){
    if(i51<0.017120014876127243){
     s0+=1395.0;
     s1+=143.0;
    } else {
     s0+=5.0;
     s1+=49.0;
    }
   } else {
    if(i34<1.0762633085250854){
     s0+=10.0;
    } else {
     s0+=7.0;
     s1+=215.0;
    }
   }
  } else {
   if(i31<0.04158657789230347){
    if(i5<0.039579957723617554){
     s0+=50.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i0<0.006724804639816284){
     s0+=1.0;
    } else {
     s1+=185.0;
    }
   }
  }
 } else {
  if(i0<0.05841624736785889){
   if(i63<-0.000587761402130127){
    if(i57<0.0006487581413239241){
     s0+=52.0;
     s1+=63.0;
    } else {
     s0+=17.0;
     s1+=307.0;
    }
   } else {
    if(i26<1.0146188735961914){
     s1+=11.0;
    } else {
     s0+=91.0;
     s1+=7.0;
    }
   }
  } else {
   if(i22<-2.980232238769531e-07){
    if(i40<-3.538750024745241e-05){
     s0+=7.0;
     s1+=619.0;
    } else {
     s0+=116.0;
     s1+=433.0;
    }
   } else {
    if(i46<0.00020732785924337804){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=8781.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i2<0.08524474501609802){
  if(i3<1.0024762153625488){
   if(i60<0.04056556522846222){
    if(i36<0.971880316734314){
     s0+=173.0;
     s1+=56.0;
    } else {
     s0+=53900.0;
     s1+=421.0;
    }
   } else {
    if(i8<1.0398828983306885){
     s0+=8324.0;
     s1+=346.0;
    } else {
     s0+=2458.0;
     s1+=560.0;
    }
   }
  } else {
   if(i27<1.002626657485962){
    if(i70<2.006523391173687e-05){
     s0+=1.0;
     s1+=193.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    if(i49<0.000902901345398277){
     s0+=98.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i30<1.0840110778808594){
   s0+=212.0;
  } else {
   if(i4<-0.0008920431137084961){
    if(i50<0.9999983310699463){
     s0+=95.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=9.0;
    }
   } else {
    if(i3<0.995524525642395){
     s0+=13.0;
    } else {
     s0+=69.0;
     s1+=1015.0;
    }
   }
  }
 }
} else {
 if(i7<3.153085708618164e-05){
  if(i5<0.08032909035682678){
   if(i35<1.1037919521331787){
    if(i2<0.0633888840675354){
     s0+=849.0;
     s1+=212.0;
    } else {
     s0+=207.0;
     s1+=519.0;
    }
   } else {
    if(i0<0.09067553281784058){
     s0+=3194.0;
     s1+=209.0;
    } else {
     s0+=6.0;
     s1+=249.0;
    }
   }
  } else {
   if(i6<-1.9974868337158114e-05){
    if(i39<0.05680131912231445){
     s0+=39.0;
     s1+=1024.0;
    } else {
     s0+=216.0;
     s1+=692.0;
    }
   } else {
    if(i45<0.003874986432492733){
     s0+=814.0;
     s1+=76.0;
    } else {
     s0+=87.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i1<0.10167449712753296){
   if(i32<1.0010464191436768){
    if(i63<0.00021705031394958496){
     s0+=40.0;
     s1+=216.0;
    } else {
     s0+=183.0;
     s1+=27.0;
    }
   } else {
    if(i34<1.2102389335632324){
     s0+=16.0;
     s1+=982.0;
    } else {
     s0+=88.0;
     s1+=103.0;
    }
   }
  } else {
   if(i17<0.9958349466323853){
    s0+=6.0;
   } else {
    if(i11<3.1113624572753906e-05){
     s0+=76.0;
     s1+=1073.0;
    } else {
     s0+=22.0;
     s1+=8690.0;
    }
   }
  }
 }
}
if(i26<1.0406770706176758){
 if(i1<0.07755827903747559){
  if(i55<-0.0013702809810638428){
   if(i3<1.0029304027557373){
    if(i37<0.0016236482188105583){
     s0+=1410.0;
     s1+=656.0;
    } else {
     s0+=3839.0;
     s1+=268.0;
    }
   } else {
    if(i11<-0.0025963187217712402){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=405.0;
    }
   }
  } else {
   if(i17<1.0019948482513428){
    if(i27<1.0074388980865479){
     s0+=59872.0;
     s1+=611.0;
    } else {
     s0+=1378.0;
     s1+=345.0;
    }
   } else {
    if(i11<-0.0008162260055541992){
     s0+=189.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i47<0.9993621706962585){
   s0+=110.0;
  } else {
   if(i13<-0.0003587007522583008){
    if(i3<0.9969459772109985){
     s0+=37.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.0581717491149902){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=86.0;
     s1+=2252.0;
    }
   }
  }
 }
} else {
 if(i6<-3.0334078473970294e-05){
  if(i12<1.0064496994018555){
   if(i17<0.9986621141433716){
    if(i65<0.0002510863123461604){
     s0+=94.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   } else {
    if(i46<0.009038862772285938){
     s0+=695.0;
     s1+=1270.0;
    } else {
     s0+=88.0;
     s1+=1624.0;
    }
   }
  } else {
   if(i35<1.2590415477752686){
    if(i72<1.0016125440597534){
     s0+=63.0;
     s1+=645.0;
    } else {
     s0+=2.0;
     s1+=1167.0;
    }
   } else {
    s1+=6833.0;
   }
  }
 } else {
  if(i49<0.0022052996791899204){
   if(i25<0.16691839694976807){
    if(i57<-0.0004845745861530304){
     s0+=129.0;
     s1+=67.0;
    } else {
     s0+=2750.0;
     s1+=288.0;
    }
   } else {
    if(i33<0.005287647247314453){
     s0+=217.0;
     s1+=25.0;
    } else {
     s0+=19.0;
     s1+=145.0;
    }
   }
  } else {
   if(i56<9.900297300191596e-05){
    if(i13<-6.67572021484375e-06){
     s0+=18.0;
    } else {
     s1+=149.0;
    }
   } else {
    if(i41<1.5404508113861084){
     s0+=102.0;
    } else {
     s0+=27.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i5<0.0695335865020752){
 if(i14<1.0063071250915527){
  if(i3<1.0024782419204712){
   if(i8<1.042891263961792){
    if(i19<1.042891263961792){
     s0+=51714.0;
     s1+=157.0;
    } else {
     s0+=8440.0;
     s1+=553.0;
    }
   } else {
    if(i1<0.07325592637062073){
     s0+=6823.0;
     s1+=944.0;
    } else {
     s0+=66.0;
     s1+=382.0;
    }
   }
  } else {
   if(i11<-0.0007759332656860352){
    if(i23<0.984699010848999){
     s0+=16.0;
     s1+=98.0;
    } else {
     s0+=47.0;
     s1+=10.0;
    }
   } else {
    if(i49<0.001649721059948206){
     s0+=26.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i40<-1.4938643289497122e-05){
   if(i70<8.873219485394657e-06){
    if(i11<7.265806198120117e-05){
     s0+=23.0;
     s1+=14.0;
    } else {
     s1+=1218.0;
    }
   } else {
    if(i66<0.0006733930786140263){
     s0+=89.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   if(i35<1.140648365020752){
    if(i45<0.0006441789446398616){
     s0+=219.0;
     s1+=96.0;
    } else {
     s0+=41.0;
     s1+=394.0;
    }
   } else {
    if(i30<1.1919987201690674){
     s0+=233.0;
     s1+=56.0;
    } else {
     s0+=1021.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i20<0.004687285050749779){
  if(i44<0.0481128990650177){
   if(i0<0.08202600479125977){
    if(i19<1.0456106662750244){
     s0+=33.0;
    } else {
     s0+=32.0;
     s1+=106.0;
    }
   } else {
    if(i47<0.9995344877243042){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=751.0;
    }
   }
  } else {
   if(i3<1.0039379596710205){
    if(i39<0.04837149381637573){
     s0+=246.0;
     s1+=298.0;
    } else {
     s0+=1561.0;
     s1+=462.0;
    }
   } else {
    if(i44<0.048400938510894775){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i50<0.9987862706184387){
   if(i5<0.3940432369709015){
    s0+=95.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i0<0.0925075113773346){
    if(i52<0.003047645092010498){
     s0+=29.0;
     s1+=238.0;
    } else {
     s0+=167.0;
     s1+=4.0;
    }
   } else {
    if(i13<-0.000559389591217041){
     s0+=4.0;
    } else {
     s0+=110.0;
     s1+=10676.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i10<1.0081751346588135){
  if(i38<0.0003052279644180089){
   if(i0<0.07973957061767578){
    if(i14<1.0059131383895874){
     s0+=53007.0;
     s1+=214.0;
    } else {
     s0+=339.0;
     s1+=30.0;
    }
   } else {
    if(i50<1.0007350444793701){
     s0+=144.0;
     s1+=36.0;
    } else {
     s0+=7.0;
     s1+=38.0;
    }
   }
  } else {
   if(i11<-0.0013796091079711914){
    if(i25<0.09181872010231018){
     s0+=7595.0;
     s1+=180.0;
    } else {
     s0+=4.0;
     s1+=38.0;
    }
   } else {
    if(i6<-1.058818816090934e-05){
     s0+=645.0;
     s1+=1065.0;
    } else {
     s0+=2901.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i30<1.2392117977142334){
   if(i62<0.028156103566288948){
    if(i6<-1.1444366464274935e-05){
     s1+=470.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i1<0.06202918291091919){
     s0+=22.0;
    } else {
     s0+=6.0;
     s1+=33.0;
    }
   }
  } else {
   if(i17<1.0020304918289185){
    s0+=120.0;
   } else {
    s1+=39.0;
   }
  }
 }
} else {
 if(i22<0.00010207295417785645){
  if(i72<1.0006133317947388){
   if(i20<0.005673415958881378){
    if(i5<0.06404733657836914){
     s0+=3109.0;
     s1+=354.0;
    } else {
     s0+=1117.0;
     s1+=611.0;
    }
   } else {
    if(i55<-0.013168036937713623){
     s0+=43.0;
     s1+=18.0;
    } else {
     s0+=35.0;
     s1+=486.0;
    }
   }
  } else {
   if(i6<-5.4705167713109404e-05){
    if(i59<-0.0003429873613640666){
     s0+=41.0;
     s1+=1701.0;
    } else {
     s0+=417.0;
     s1+=628.0;
    }
   } else {
    if(i28<0.024852730333805084){
     s0+=1070.0;
     s1+=387.0;
    } else {
     s0+=223.0;
     s1+=759.0;
    }
   }
  }
 } else {
  if(i40<-1.2736008102365304e-05){
   if(i6<-4.382058250484988e-05){
    s1+=9130.0;
   } else {
    if(i34<1.1580243110656738){
     s1+=29.0;
    } else {
     s0+=26.0;
     s1+=4.0;
    }
   }
  } else {
   if(i20<0.0027121352031826973){
    if(i66<0.0001522046804893762){
     s0+=57.0;
     s1+=110.0;
    } else {
     s0+=157.0;
     s1+=2.0;
    }
   } else {
    if(i1<0.07842114567756653){
     s0+=31.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=372.0;
    }
   }
  }
 }
}
if(i17<1.0016478300094604){
 if(i10<1.0081751346588135){
  if(i28<0.022396035492420197){
   if(i62<0.01057356782257557){
    if(i57<0.0008516736561432481){
     s0+=46455.0;
     s1+=90.0;
    } else {
     s0+=200.0;
     s1+=119.0;
    }
   } else {
    if(i5<0.06290042400360107){
     s0+=14777.0;
     s1+=753.0;
    } else {
     s0+=1131.0;
     s1+=418.0;
    }
   }
  } else {
   if(i26<1.0321462154388428){
    if(i18<0.9945558309555054){
     s0+=4314.0;
     s1+=127.0;
    } else {
     s0+=659.0;
     s1+=783.0;
    }
   } else {
    if(i0<0.08172285556793213){
     s0+=650.0;
     s1+=216.0;
    } else {
     s0+=388.0;
     s1+=1219.0;
    }
   }
  }
 } else {
  if(i1<0.0719163715839386){
   if(i19<1.0731005668640137){
    if(i54<0.0003006458282470703){
     s0+=10.0;
     s1+=190.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i66<0.0006016407860442996){
     s0+=718.0;
     s1+=35.0;
    } else {
     s0+=37.0;
     s1+=28.0;
    }
   }
  } else {
   if(i61<-0.021557718515396118){
    if(i1<0.2107432782649994){
     s0+=264.0;
     s1+=43.0;
    } else {
     s0+=31.0;
     s1+=688.0;
    }
   } else {
    if(i73<1.0003622770309448){
     s0+=63.0;
     s1+=1928.0;
    } else {
     s0+=91.0;
     s1+=200.0;
    }
   }
  }
 }
} else {
 if(i7<3.36766242980957e-05){
  if(i62<0.13735586404800415){
   if(i68<-0.002239980036392808){
    if(i1<0.1058209240436554){
     s0+=2.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i2<0.11862689256668091){
     s0+=814.0;
     s1+=131.0;
    } else {
     s0+=11.0;
     s1+=80.0;
    }
   }
  } else {
   if(i70<4.6196000766940415e-05){
    s1+=118.0;
   } else {
    if(i32<0.9656881093978882){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i38<0.00018490650109015405){
   s0+=41.0;
  } else {
   if(i4<0.0009452104568481445){
    if(i45<0.0024333600886166096){
     s1+=248.0;
    } else {
     s0+=185.0;
     s1+=523.0;
    }
   } else {
    if(i22<-7.510185241699219e-06){
     s0+=95.0;
     s1+=773.0;
    } else {
     s0+=10.0;
     s1+=8539.0;
    }
   }
  }
 }
}
if(i1<0.07745698094367981){
 if(i3<1.0024782419204712){
  if(i52<-0.001616358757019043){
   if(i2<0.02138841152191162){
    if(i27<0.9687765836715698){
     s0+=1535.0;
     s1+=37.0;
    } else {
     s0+=868.0;
     s1+=153.0;
    }
   } else {
    if(i14<0.9931045770645142){
     s0+=575.0;
     s1+=530.0;
    } else {
     s0+=797.0;
     s1+=102.0;
    }
   }
  } else {
   if(i19<1.0475225448608398){
    if(i58<-0.0020831823348999023){
     s0+=1191.0;
     s1+=101.0;
    } else {
     s0+=53240.0;
     s1+=109.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=2527.0;
     s1+=867.0;
    } else {
     s0+=8131.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i45<0.0020958702079951763){
   if(i47<1.000293254852295){
    s1+=680.0;
   } else {
    s0+=4.0;
   }
  } else {
   if(i15<2.3066997528076172e-05){
    if(i6<-6.714808841934428e-05){
     s1+=6.0;
    } else {
     s0+=185.0;
    }
   } else {
    if(i68<0.0036831179168075323){
     s0+=77.0;
     s1+=83.0;
    } else {
     s0+=16.0;
     s1+=283.0;
    }
   }
  }
 }
} else {
 if(i2<0.11114609241485596){
  if(i63<0.0025284290313720703){
   if(i3<0.9969065189361572){
    if(i20<0.005987766198813915){
     s0+=97.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i55<0.004249095916748047){
     s0+=40.0;
     s1+=1274.0;
    } else {
     s0+=136.0;
     s1+=33.0;
    }
   }
  } else {
   if(i61<-0.01903841271996498){
    if(i6<-0.00014147546608000994){
     s1+=5.0;
    } else {
     s0+=453.0;
     s1+=13.0;
    }
   } else {
    if(i43<0.00045594313996843994){
     s0+=99.0;
     s1+=6.0;
    } else {
     s0+=190.0;
     s1+=174.0;
    }
   }
  }
 } else {
  if(i17<0.9979211688041687){
   s0+=271.0;
  } else {
   if(i35<1.3005231618881226){
    if(i53<0.0931280255317688){
     s0+=132.0;
     s1+=3507.0;
    } else {
     s0+=421.0;
     s1+=432.0;
    }
   } else {
    if(i31<0.02045575901865959){
     s0+=28.0;
     s1+=567.0;
    } else {
     s0+=8.0;
     s1+=8025.0;
    }
   }
  }
 }
}
if(i1<0.0796835720539093){
 if(i12<1.0060200691223145){
  if(i4<0.0006026923656463623){
   if(i0<0.068574458360672){
    if(i65<0.0002715747687034309){
     s0+=56178.0;
     s1+=520.0;
    } else {
     s0+=10279.0;
     s1+=972.0;
    }
   } else {
    if(i41<1.1034480333328247){
     s0+=693.0;
     s1+=457.0;
    } else {
     s0+=1169.0;
     s1+=134.0;
    }
   }
  } else {
   if(i68<0.0021425927989184856){
    if(i3<1.0015466213226318){
     s0+=75.0;
    } else {
     s0+=80.0;
     s1+=81.0;
    }
   } else {
    if(i11<-0.002891749143600464){
     s0+=23.0;
     s1+=17.0;
    } else {
     s0+=31.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i15<1.9371509552001953e-05){
   if(i30<1.1386182308197021){
    if(i4<0.00012990832328796387){
     s0+=1.0;
    } else {
     s1+=183.0;
    }
   } else {
    if(i20<0.005134497303515673){
     s0+=633.0;
     s1+=20.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i46<0.0002610345836728811){
    s0+=15.0;
   } else {
    if(i13<0.0005489587783813477){
     s0+=18.0;
     s1+=30.0;
    } else {
     s0+=11.0;
     s1+=705.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5393201465485618e-05){
  if(i1<0.11901497840881348){
   if(i63<0.004316389560699463){
    if(i52<0.004954397678375244){
     s0+=77.0;
     s1+=1901.0;
    } else {
     s0+=108.0;
     s1+=31.0;
    }
   } else {
    if(i2<0.12972912192344666){
     s0+=278.0;
     s1+=31.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i6<-4.1748171497602016e-05){
    if(i43<0.00046990090049803257){
     s0+=11.0;
    } else {
     s0+=47.0;
     s1+=10812.0;
    }
   } else {
    if(i63<0.007794082164764404){
     s0+=17.0;
     s1+=515.0;
    } else {
     s0+=102.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i39<0.039920926094055176){
   if(i6<7.5262323662173e-06){
    if(i41<1.0696015357971191){
     s0+=22.0;
    } else {
     s0+=10.0;
     s1+=200.0;
    }
   } else {
    if(i70<1.5643943697796203e-05){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=39.0;
     s1+=1.0;
    }
   }
  } else {
   if(i21<1.0026447772979736){
    if(i39<0.056409597396850586){
     s0+=177.0;
     s1+=88.0;
    } else {
     s0+=859.0;
     s1+=99.0;
    }
   } else {
    if(i1<0.08287674188613892){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=39.0;
    }
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i11<0.0012117624282836914){
  if(i19<1.0485899448394775){
   if(i55<-0.0012906789779663086){
    if(i19<1.0406032800674438){
     s0+=1567.0;
     s1+=79.0;
    } else {
     s0+=324.0;
     s1+=187.0;
    }
   } else {
    if(i16<1.010894775390625){
     s0+=53954.0;
     s1+=106.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i3<1.0024693012237549){
    if(i35<1.103413462638855){
     s0+=2909.0;
     s1+=1135.0;
    } else {
     s0+=10055.0;
     s1+=547.0;
    }
   } else {
    if(i35<1.2160736322402954){
     s0+=6.0;
     s1+=261.0;
    } else {
     s0+=174.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i29<0.00020661183225456625){
   if(i62<0.010508744046092033){
    s1+=11.0;
   } else {
    if(i15<2.777576446533203e-05){
     s0+=50.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i20<0.0017774763982743025){
    if(i3<1.0046923160552979){
     s0+=34.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i15<1.329183578491211e-05){
     s0+=9.0;
     s1+=35.0;
    } else {
     s1+=359.0;
    }
   }
  }
 }
} else {
 if(i43<0.0005123732844367623){
  if(i69<-2.6198408704658505e-06){
   if(i70<4.036380232719239e-06){
    s0+=50.0;
   } else {
    if(i46<0.0008325440576300025){
     s1+=104.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i73<1.0001509189605713){
    if(i51<-0.00682901032269001){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=307.0;
     s1+=1.0;
    }
   } else {
    if(i56<3.3821313991211355e-05){
     s0+=97.0;
    } else {
     s0+=10.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i28<0.028266938403248787){
   if(i53<0.055724143981933594){
    if(i34<1.0601437091827393){
     s0+=40.0;
    } else {
     s0+=327.0;
     s1+=3455.0;
    }
   } else {
    if(i0<0.13219687342643738){
     s0+=481.0;
     s1+=56.0;
    } else {
     s0+=224.0;
     s1+=437.0;
    }
   }
  } else {
   if(i17<0.9977608919143677){
    s0+=165.0;
   } else {
    if(i0<0.11537882685661316){
     s0+=138.0;
     s1+=766.0;
    } else {
     s0+=91.0;
     s1+=9425.0;
    }
   }
  }
 }
}
if(i12<1.005574345588684){
 if(i2<0.09123677015304565){
  if(i19<1.0486011505126953){
   if(i65<0.000254784565186128){
    if(i1<0.0887022614479065){
     s0+=49575.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i46<0.0011786286486312747){
     s0+=1948.0;
     s1+=316.0;
    } else {
     s0+=4306.0;
     s1+=5.0;
    }
   }
  } else {
   if(i34<1.1036889553070068){
    if(i42<0.030342526733875275){
     s0+=3319.0;
     s1+=559.0;
    } else {
     s0+=616.0;
     s1+=831.0;
    }
   } else {
    if(i13<0.0007379055023193359){
     s0+=8493.0;
     s1+=459.0;
    } else {
     s0+=381.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i4<-0.0007519423961639404){
   if(i54<-0.00012823939323425293){
    if(i54<-0.00013878941535949707){
     s0+=499.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.10793694853782654){
     s0+=60.0;
     s1+=39.0;
    } else {
     s0+=2.0;
     s1+=115.0;
    }
   }
  } else {
   if(i25<0.07149749994277954){
    if(i73<0.9956742525100708){
     s0+=10.0;
    } else {
     s0+=39.0;
     s1+=1939.0;
    }
   } else {
    if(i42<0.0715741366147995){
     s0+=548.0;
     s1+=514.0;
    } else {
     s0+=242.0;
     s1+=1659.0;
    }
   }
  }
 }
} else {
 if(i12<1.0100208520889282){
  if(i13<0.0005848407745361328){
   if(i0<0.06631749868392944){
    if(i30<1.1386182308197021){
     s0+=11.0;
     s1+=94.0;
    } else {
     s0+=552.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.002766875084489584){
     s0+=21.0;
     s1+=534.0;
    } else {
     s0+=174.0;
     s1+=264.0;
    }
   }
  } else {
   if(i11<6.866455078125e-05){
    if(i19<1.1282727718353271){
     s0+=19.0;
     s1+=9.0;
    } else {
     s1+=74.0;
    }
   } else {
    s1+=679.0;
   }
  }
 } else {
  if(i4<0.0005311667919158936){
   if(i6<-5.348597187548876e-05){
    if(i55<-0.0004138946533203125){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=270.0;
    }
   } else {
    if(i37<0.002372095827013254){
     s1+=24.0;
    } else {
     s0+=136.0;
     s1+=14.0;
    }
   }
  } else {
   if(i49<0.0001279976568184793){
    if(i49<9.937630238709971e-05){
     s1+=10.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=8416.0;
   }
  }
 }
}
if(i5<0.06979292631149292){
 if(i11<0.001020967960357666){
  if(i4<0.000570446252822876){
   if(i1<0.07751241326332092){
    if(i34<1.0557184219360352){
     s0+=42753.0;
     s1+=4.0;
    } else {
     s0+=25428.0;
     s1+=1975.0;
    }
   } else {
    if(i3<0.996539831161499){
     s0+=91.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=516.0;
    }
   }
  } else {
   if(i20<0.003720815759152174){
    if(i2<0.08297377824783325){
     s0+=171.0;
     s1+=15.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i30<1.5682398080825806){
     s0+=30.0;
     s1+=496.0;
    } else {
     s0+=83.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i29<0.00020631449297070503){
   if(i37<0.0022522020153701305){
    if(i4<0.0002745985984802246){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=80.0;
    }
   } else {
    s0+=121.0;
   }
  } else {
   if(i18<1.0043983459472656){
    if(i37<0.002720635151490569){
     s0+=11.0;
     s1+=74.0;
    } else {
     s0+=31.0;
     s1+=7.0;
    }
   } else {
    if(i11<0.0014284849166870117){
     s0+=29.0;
     s1+=169.0;
    } else {
     s0+=2.0;
     s1+=1088.0;
    }
   }
  }
 }
} else {
 if(i17<0.9988812804222107){
  if(i40<-1.0000138900068123e-05){
   if(i48<0.009146392345428467){
    if(i5<0.07121774554252625){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   } else {
    if(i8<1.0674278736114502){
     s0+=40.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i54<-0.00014069676399230957){
    s0+=515.0;
   } else {
    if(i23<0.9910300970077515){
     s0+=1.0;
     s1+=25.0;
    } else {
     s0+=116.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i20<0.003270812099799514){
   if(i44<0.05091771483421326){
    if(i1<0.07524612545967102){
     s0+=34.0;
     s1+=22.0;
    } else {
     s0+=15.0;
     s1+=442.0;
    }
   } else {
    if(i12<1.0100358724594116){
     s0+=1020.0;
     s1+=340.0;
    } else {
     s0+=24.0;
     s1+=169.0;
    }
   }
  } else {
   if(i2<0.1154034435749054){
    if(i63<0.003834933042526245){
     s0+=97.0;
     s1+=852.0;
    } else {
     s0+=267.0;
     s1+=30.0;
    }
   } else {
    if(i13<-0.0002640187740325928){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=74.0;
     s1+=10776.0;
    }
   }
  }
 }
}
if(i4<0.0005474090576171875){
 if(i46<0.0003449267242103815){
  if(i27<1.0089361667633057){
   if(i65<0.0003053824766539037){
    if(i50<1.0003769397735596){
     s0+=45362.0;
     s1+=6.0;
    } else {
     s0+=2800.0;
     s1+=93.0;
    }
   } else {
    if(i7<-4.145503044128418e-05){
     s0+=141.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=44.0;
    }
   }
  } else {
   if(i7<1.519918441772461e-05){
    if(i32<1.0094225406646729){
     s0+=19.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i37<0.0002536476240493357){
     s0+=2.0;
    } else {
     s1+=90.0;
    }
   }
  }
 } else {
  if(i8<1.0451608896255493){
   if(i41<1.100754976272583){
    if(i43<0.0004263114824425429){
     s0+=2182.0;
     s1+=69.0;
    } else {
     s0+=905.0;
     s1+=669.0;
    }
   } else {
    if(i7<3.081560134887695e-05){
     s0+=11506.0;
     s1+=198.0;
    } else {
     s0+=13.0;
     s1+=28.0;
    }
   }
  } else {
   if(i2<0.09175503253936768){
    if(i34<1.1036889553070068){
     s0+=1498.0;
     s1+=987.0;
    } else {
     s0+=4785.0;
     s1+=398.0;
    }
   } else {
    if(i17<0.9981062412261963){
     s0+=336.0;
     s1+=7.0;
    } else {
     s0+=782.0;
     s1+=2977.0;
    }
   }
  }
 }
} else {
 if(i37<0.00030976897687651217){
  s0+=171.0;
 } else {
  if(i2<0.06563374400138855){
   if(i41<1.2524442672729492){
    s1+=257.0;
   } else {
    if(i7<6.943941116333008e-05){
     s0+=190.0;
     s1+=52.0;
    } else {
     s0+=38.0;
     s1+=207.0;
    }
   }
  } else {
   if(i7<6.312131881713867e-05){
    if(i5<0.16539999842643738){
     s0+=126.0;
     s1+=772.0;
    } else {
     s0+=1.0;
     s1+=648.0;
    }
   } else {
    if(i4<0.0009036064147949219){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=47.0;
     s1+=9825.0;
    }
   }
  }
 }
}
if(i5<0.07196676731109619){
 if(i4<0.000570446252822876){
  if(i38<0.00030670780688524246){
   if(i16<1.008303165435791){
    if(i10<1.0102261304855347){
     s0+=53364.0;
     s1+=239.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i54<0.00011602044105529785){
     s0+=133.0;
     s1+=32.0;
    } else {
     s0+=33.0;
     s1+=119.0;
    }
   }
  } else {
   if(i35<1.1812903881072998){
    if(i2<0.07581990957260132){
     s0+=5119.0;
     s1+=1251.0;
    } else {
     s0+=272.0;
     s1+=791.0;
    }
   } else {
    if(i1<0.08148074150085449){
     s0+=9678.0;
     s1+=236.0;
    } else {
     s0+=1.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i8<1.034064531326294){
   if(i27<0.9901654720306396){
    s1+=17.0;
   } else {
    if(i46<0.00047328195068985224){
     s0+=138.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i20<0.0022337385453283787){
    if(i30<1.2392117977142334){
     s0+=3.0;
     s1+=58.0;
    } else {
     s0+=104.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.00011496429215185344){
     s0+=22.0;
     s1+=1603.0;
    } else {
     s0+=92.0;
     s1+=244.0;
    }
   }
  }
 }
} else {
 if(i6<-1.4656490748166107e-05){
  if(i0<0.09983557462692261){
   if(i25<0.059679657220840454){
    if(i3<0.9968567490577698){
     s0+=21.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=300.0;
    }
   } else {
    if(i39<0.040006816387176514){
     s0+=40.0;
     s1+=128.0;
    } else {
     s0+=404.0;
     s1+=93.0;
    }
   }
  } else {
   if(i4<0.0007606744766235352){
    if(i61<-0.022893711924552917){
     s0+=258.0;
     s1+=956.0;
    } else {
     s0+=58.0;
     s1+=1797.0;
    }
   } else {
    if(i33<0.008836107328534126){
     s0+=40.0;
     s1+=2199.0;
    } else {
     s0+=1.0;
     s1+=6799.0;
    }
   }
  }
 } else {
  if(i47<0.9995757341384888){
   s0+=409.0;
  } else {
   if(i58<-0.0011979341506958008){
    if(i44<0.06252360343933105){
     s0+=7.0;
     s1+=107.0;
    } else {
     s0+=65.0;
     s1+=42.0;
    }
   } else {
    if(i1<0.2813611626625061){
     s0+=698.0;
     s1+=110.0;
    } else {
     s0+=22.0;
     s1+=56.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i3<1.0024800300598145){
  if(i16<1.008082389831543){
   if(i1<0.08157229423522949){
    if(i29<0.0002966678002849221){
     s0+=54883.0;
     s1+=377.0;
    } else {
     s0+=8541.0;
     s1+=751.0;
    }
   } else {
    if(i3<0.9967881441116333){
     s0+=163.0;
     s1+=20.0;
    } else {
     s0+=67.0;
     s1+=345.0;
    }
   }
  } else {
   if(i43<0.0007333853282034397){
    if(i14<1.0075099468231201){
     s0+=96.0;
     s1+=64.0;
    } else {
     s0+=9.0;
     s1+=154.0;
    }
   } else {
    if(i1<0.08178311586380005){
     s0+=108.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i69<-4.983964572602417e-06){
   if(i29<0.0033031925559043884){
    if(i35<1.0580317974090576){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=369.0;
    }
   } else {
    if(i42<0.21395756304264069){
     s1+=7.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i66<0.0005759279010817409){
    s0+=79.0;
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i2<0.08440327644348145){
  if(i15<2.1398067474365234e-05){
   if(i3<0.997988224029541){
    if(i2<0.07582706212997437){
     s0+=1952.0;
     s1+=77.0;
    } else {
     s0+=88.0;
     s1+=30.0;
    }
   } else {
    if(i28<0.0281372033059597){
     s0+=2933.0;
     s1+=519.0;
    } else {
     s0+=164.0;
     s1+=330.0;
    }
   }
  } else {
   if(i4<0.000583946704864502){
    if(i66<0.0015746536664664745){
     s0+=328.0;
     s1+=38.0;
    } else {
     s0+=11.0;
     s1+=42.0;
    }
   } else {
    if(i53<0.028371155261993408){
     s0+=84.0;
     s1+=707.0;
    } else {
     s0+=54.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i43<0.0005458015366457403){
   if(i19<1.0736522674560547){
    if(i30<1.0840110778808594){
     s0+=46.0;
    } else {
     s0+=5.0;
     s1+=86.0;
    }
   } else {
    if(i65<-0.00012959619925823063){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=256.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<3.36766242980957e-05){
    if(i39<0.04500734806060791){
     s0+=45.0;
     s1+=1587.0;
    } else {
     s0+=983.0;
     s1+=1054.0;
    }
   } else {
    if(i7<5.6803226470947266e-05){
     s0+=106.0;
     s1+=1041.0;
    } else {
     s0+=52.0;
     s1+=9555.0;
    }
   }
  }
 }
}
if(i2<0.08518528938293457){
 if(i3<1.0024782419204712){
  if(i8<1.0428826808929443){
   if(i60<0.04058770090341568){
    if(i57<0.0009123471099883318){
     s0+=50950.0;
     s1+=128.0;
    } else {
     s0+=379.0;
     s1+=116.0;
    }
   } else {
    if(i41<1.217149257659912){
     s0+=3767.0;
     s1+=422.0;
    } else {
     s0+=5348.0;
     s1+=38.0;
    }
   }
  } else {
   if(i13<-0.00023064017295837402){
    if(i41<1.2324082851409912){
     s0+=992.0;
     s1+=61.0;
    } else {
     s0+=1478.0;
     s1+=12.0;
    }
   } else {
    if(i20<0.0033394349738955498){
     s0+=4868.0;
     s1+=729.0;
    } else {
     s0+=1090.0;
     s1+=707.0;
    }
   }
  }
 } else {
  if(i43<0.0015536959981545806){
   if(i74<0.00018658355111256242){
    s1+=588.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i49<0.0017493274062871933){
    if(i48<-0.009841442108154297){
     s0+=5.0;
     s1+=34.0;
    } else {
     s0+=219.0;
     s1+=1.0;
    }
   } else {
    if(i61<-0.013881156221032143){
     s0+=29.0;
     s1+=11.0;
    } else {
     s0+=30.0;
     s1+=347.0;
    }
   }
  }
 }
} else {
 if(i73<0.9970192909240723){
  s0+=375.0;
 } else {
  if(i1<0.11938753724098206){
   if(i61<-0.01860687881708145){
    if(i20<0.008138543926179409){
     s0+=538.0;
     s1+=33.0;
    } else {
     s0+=33.0;
     s1+=61.0;
    }
   } else {
    if(i30<1.2371783256530762){
     s0+=103.0;
     s1+=1939.0;
    } else {
     s0+=324.0;
     s1+=438.0;
    }
   }
  } else {
   if(i69<9.935415619111154e-07){
    if(i4<0.0005218386650085449){
     s0+=300.0;
     s1+=1955.0;
    } else {
     s0+=49.0;
     s1+=9565.0;
    }
   } else {
    if(i20<0.005899164825677872){
     s0+=187.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i10<1.0084104537963867){
  if(i29<0.0002993909874930978){
   if(i1<0.08264222741127014){
    if(i34<1.0598037242889404){
     s0+=41298.0;
     s1+=9.0;
    } else {
     s0+=14328.0;
     s1+=536.0;
    }
   } else {
    if(i18<0.9940332770347595){
     s0+=53.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=148.0;
    }
   }
  } else {
   if(i2<0.08020609617233276){
    if(i17<1.001905918121338){
     s0+=8670.0;
     s1+=783.0;
    } else {
     s0+=252.0;
     s1+=206.0;
    }
   } else {
    if(i3<0.9956144094467163){
     s0+=208.0;
     s1+=14.0;
    } else {
     s0+=79.0;
     s1+=587.0;
    }
   }
  }
 } else {
  if(i40<-1.4944123904570006e-05){
   if(i4<0.0001232624053955078){
    if(i27<1.0085899829864502){
     s1+=3.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i19<1.1170852184295654){
     s1+=313.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   }
  } else {
   if(i29<0.000291854259558022){
    if(i68<0.001079631270840764){
     s0+=38.0;
     s1+=35.0;
    } else {
     s0+=163.0;
     s1+=8.0;
    }
   } else {
    if(i50<0.9989354610443115){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i4<0.00021666288375854492){
  if(i2<0.09244644641876221){
   if(i28<0.01765695959329605){
    if(i34<1.1040328741073608){
     s0+=1080.0;
     s1+=112.0;
    } else {
     s0+=1742.0;
     s1+=27.0;
    }
   } else {
    if(i46<0.0022326307371258736){
     s0+=266.0;
     s1+=366.0;
    } else {
     s0+=870.0;
     s1+=102.0;
    }
   }
  } else {
   if(i13<-0.00040593743324279785){
    if(i33<0.00830847304314375){
     s0+=307.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i44<0.06311997771263123){
     s0+=18.0;
     s1+=903.0;
    } else {
     s0+=650.0;
     s1+=748.0;
    }
   }
  }
 } else {
  if(i20<0.0028314650990068913){
   if(i11<0.001435399055480957){
    if(i74<5.67734387004748e-05){
     s0+=101.0;
     s1+=176.0;
    } else {
     s0+=462.0;
     s1+=94.0;
    }
   } else {
    if(i73<1.0019495487213135){
     s1+=373.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i32<1.0011391639709473){
    if(i20<0.0073098670691251755){
     s0+=227.0;
     s1+=288.0;
    } else {
     s0+=120.0;
     s1+=1709.0;
    }
   } else {
    if(i22<-3.814697265625e-06){
     s0+=37.0;
     s1+=307.0;
    } else {
     s0+=3.0;
     s1+=9282.0;
    }
   }
  }
 }
}
if(i13<0.0004476308822631836){
 if(i23<1.0107624530792236){
  if(i1<0.07557567954063416){
   if(i46<0.0003123942296952009){
    if(i16<1.0087716579437256){
     s0+=47222.0;
     s1+=59.0;
    } else {
     s0+=8.0;
     s1+=20.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=4968.0;
     s1+=1250.0;
    } else {
     s0+=14730.0;
     s1+=275.0;
    }
   }
  } else {
   if(i54<-0.00014218688011169434){
    if(i62<0.21905829012393951){
     s0+=464.0;
     s1+=13.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i0<0.08857065439224243){
     s0+=315.0;
     s1+=248.0;
    } else {
     s0+=260.0;
     s1+=1312.0;
    }
   }
  }
 } else {
  if(i33<0.006454504560679197){
   if(i46<0.001265717321075499){
    if(i1<0.07193958759307861){
     s0+=166.0;
     s1+=154.0;
    } else {
     s0+=40.0;
     s1+=916.0;
    }
   } else {
    if(i0<0.10822546482086182){
     s0+=1072.0;
     s1+=42.0;
    } else {
     s0+=365.0;
     s1+=413.0;
    }
   }
  } else {
   if(i37<0.00821394007652998){
    if(i8<1.1324782371520996){
     s0+=42.0;
     s1+=8.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   } else {
    if(i11<-0.004671722650527954){
     s0+=9.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=1113.0;
    }
   }
  }
 }
} else {
 if(i14<1.0058684349060059){
  if(i19<1.0644845962524414){
   if(i12<1.0012125968933105){
    if(i74<8.691116818226874e-05){
     s0+=181.0;
     s1+=49.0;
    } else {
     s0+=464.0;
     s1+=3.0;
    }
   } else {
    if(i57<0.00015937484567984939){
     s0+=71.0;
    } else {
     s0+=10.0;
     s1+=59.0;
    }
   }
  } else {
   if(i70<3.644921162049286e-05){
    if(i0<0.11787170171737671){
     s0+=464.0;
     s1+=803.0;
    } else {
     s0+=36.0;
     s1+=1476.0;
    }
   } else {
    if(i31<0.04023413360118866){
     s0+=239.0;
     s1+=19.0;
    } else {
     s0+=2.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i6<-4.259928027749993e-05){
   if(i3<1.0044469833374023){
    if(i73<1.0022389888763428){
     s0+=17.0;
     s1+=570.0;
    } else {
     s0+=49.0;
     s1+=106.0;
    }
   } else {
    if(i11<-1.71661376953125e-05){
     s0+=3.0;
     s1+=115.0;
    } else {
     s1+=7597.0;
    }
   }
  } else {
   if(i7<6.413459777832031e-05){
    if(i37<0.0012603941140696406){
     s0+=17.0;
     s1+=49.0;
    } else {
     s0+=162.0;
     s1+=8.0;
    }
   } else {
    s1+=62.0;
   }
  }
 }
}
if(i27<1.008514165878296){
 if(i18<1.0044186115264893){
  if(i19<1.057713270187378){
   if(i48<-0.006582170724868774){
    if(i1<0.03069019317626953){
     s0+=688.0;
     s1+=76.0;
    } else {
     s0+=84.0;
     s1+=82.0;
    }
   } else {
    if(i55<-0.0013626515865325928){
     s0+=1188.0;
     s1+=155.0;
    } else {
     s0+=56609.0;
     s1+=345.0;
    }
   }
  } else {
   if(i59<-0.0006916519487276673){
    if(i19<1.0845599174499512){
     s0+=72.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=517.0;
    }
   } else {
    if(i3<1.0011651515960693){
     s0+=9125.0;
     s1+=2311.0;
    } else {
     s0+=379.0;
     s1+=949.0;
    }
   }
  }
 } else {
  if(i7<3.3915042877197266e-05){
   if(i2<0.06370276212692261){
    if(i66<0.0006038352730683982){
     s0+=347.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=9.0;
    }
   } else {
    if(i40<-4.6854875108692795e-06){
     s0+=5.0;
     s1+=113.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<1.0476430654525757){
    if(i40<-1.8287864804733545e-05){
     s1+=9.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i18<1.0048117637634277){
     s0+=19.0;
     s1+=38.0;
    } else {
     s0+=27.0;
     s1+=1549.0;
    }
   }
  }
 }
} else {
 if(i20<0.0031570899300277233){
  if(i30<1.1039612293243408){
   if(i18<1.0009434223175049){
    if(i20<0.0014648191863670945){
     s0+=322.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=114.0;
    }
   } else {
    if(i45<0.0002741653297562152){
     s0+=10.0;
    } else {
     s0+=6.0;
     s1+=573.0;
    }
   }
  } else {
   if(i22<0.0003063678741455078){
    if(i0<0.24569040536880493){
     s0+=1653.0;
     s1+=34.0;
    } else {
     s0+=48.0;
     s1+=71.0;
    }
   } else {
    s1+=171.0;
   }
  }
 } else {
  if(i7<-1.767277717590332e-05){
   if(i13<-0.0002619922161102295){
    if(i30<1.24208402633667){
     s1+=3.0;
    } else {
     s0+=225.0;
    }
   } else {
    if(i1<0.07115107774734497){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=163.0;
    }
   }
  } else {
   if(i6<-6.798849062761292e-05){
    if(i21<0.9965835809707642){
     s0+=22.0;
     s1+=186.0;
    } else {
     s0+=26.0;
     s1+=8554.0;
    }
   } else {
    if(i2<0.08418422937393188){
     s0+=93.0;
     s1+=172.0;
    } else {
     s0+=14.0;
     s1+=940.0;
    }
   }
  }
 }
}
if(i21<1.0025629997253418){
 if(i32<1.0078613758087158){
  if(i8<1.0452215671539307){
   if(i58<-0.0023179054260253906){
    if(i33<0.00099138543009758){
     s0+=1016.0;
     s1+=482.0;
    } else {
     s0+=2566.0;
     s1+=110.0;
    }
   } else {
    if(i27<1.009840726852417){
     s0+=57466.0;
     s1+=444.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i1<0.08133786916732788){
    if(i34<1.1036889553070068){
     s0+=2134.0;
     s1+=809.0;
    } else {
     s0+=3741.0;
     s1+=296.0;
    }
   } else {
    if(i44<0.05947619676589966){
     s0+=48.0;
     s1+=1079.0;
    } else {
     s0+=1042.0;
     s1+=800.0;
    }
   }
  }
 } else {
  if(i4<0.0005373656749725342){
   if(i26<1.0394498109817505){
    if(i35<1.1040980815887451){
     s0+=103.0;
     s1+=218.0;
    } else {
     s0+=897.0;
     s1+=51.0;
    }
   } else {
    if(i66<0.000581013853661716){
     s0+=519.0;
     s1+=492.0;
    } else {
     s1+=382.0;
    }
   }
  } else {
   if(i5<0.05216905474662781){
    if(i46<0.0013055208837613463){
     s0+=2.0;
     s1+=43.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i6<-4.224237272865139e-05){
     s0+=3.0;
     s1+=1154.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i4<0.00047409534454345703){
  if(i36<1.0244636535644531){
   if(i2<0.08707001805305481){
    if(i7<0.0){
     s0+=735.0;
     s1+=21.0;
    } else {
     s0+=360.0;
     s1+=101.0;
    }
   } else {
    if(i53<0.058562666177749634){
     s0+=1.0;
     s1+=173.0;
    } else {
     s0+=21.0;
     s1+=47.0;
    }
   }
  } else {
   if(i0<0.136503666639328){
    if(i69<-1.4188992281560786e-05){
     s1+=3.0;
    } else {
     s0+=77.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.191268652677536){
     s0+=11.0;
     s1+=27.0;
    } else {
     s0+=4.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i11<0.0014189481735229492){
   if(i28<0.03709445893764496){
    if(i35<1.217149257659912){
     s0+=4.0;
     s1+=591.0;
    } else {
     s0+=288.0;
     s1+=380.0;
    }
   } else {
    if(i8<1.0892763137817383){
     s0+=13.0;
     s1+=383.0;
    } else {
     s0+=3.0;
     s1+=1462.0;
    }
   }
  } else {
   s1+=7420.0;
  }
 }
}
if(i0<0.08297458291053772){
 if(i18<1.0044573545455933){
  if(i8<1.042891263961792){
   if(i55<-0.0010868310928344727){
    if(i60<0.151126429438591){
     s0+=2272.0;
     s1+=462.0;
    } else {
     s0+=2554.0;
     s1+=46.0;
    }
   } else {
    if(i2<0.06825897097587585){
     s0+=53647.0;
     s1+=162.0;
    } else {
     s0+=2118.0;
     s1+=110.0;
    }
   }
  } else {
   if(i41<1.1034480333328247){
    if(i40<-9.205123205902055e-06){
     s0+=5.0;
     s1+=410.0;
    } else {
     s0+=2217.0;
     s1+=562.0;
    }
   } else {
    if(i7<2.771615982055664e-05){
     s0+=5829.0;
     s1+=333.0;
    } else {
     s0+=371.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i17<1.0012946128845215){
   if(i53<-0.026529580354690552){
    if(i35<1.2030597925186157){
     s0+=1.0;
     s1+=37.0;
    } else {
     s0+=15.0;
     s1+=7.0;
    }
   } else {
    if(i45<0.0008495772490277886){
     s1+=27.0;
    } else {
     s0+=451.0;
     s1+=4.0;
    }
   }
  } else {
   if(i69<-5.328836778062396e-06){
    if(i66<2.253484126413241e-05){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=682.0;
    }
   } else {
    if(i41<1.2524442672729492){
     s0+=4.0;
     s1+=41.0;
    } else {
     s0+=50.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i50<0.9988100528717041){
  if(i46<0.03982039541006088){
   if(i54<-0.00025719404220581055){
    s0+=370.0;
   } else {
    if(i43<0.0017424665857106447){
     s0+=19.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i6<-1.3817661965731531e-05){
   if(i6<-5.101428541820496e-05){
    if(i8<1.1222221851348877){
     s0+=192.0;
     s1+=3734.0;
    } else {
     s1+=8030.0;
    }
   } else {
    if(i52<0.005764365196228027){
     s0+=142.0;
     s1+=1486.0;
    } else {
     s0+=277.0;
     s1+=263.0;
    }
   }
  } else {
   if(i25<0.06693395972251892){
    if(i7<-6.145238876342773e-05){
     s0+=12.0;
    } else {
     s0+=12.0;
     s1+=215.0;
    }
   } else {
    if(i5<0.21494725346565247){
     s0+=526.0;
     s1+=112.0;
    } else {
     s0+=48.0;
     s1+=92.0;
    }
   }
  }
 }
}
if(i16<1.007918357849121){
 if(i0<0.08144927024841309){
  if(i4<0.0007088184356689453){
   if(i55<-0.0010854601860046387){
    if(i35<1.1823735237121582){
     s0+=2657.0;
     s1+=808.0;
    } else {
     s0+=4096.0;
     s1+=191.0;
    }
   } else {
    if(i6<-4.183944474789314e-05){
     s0+=1186.0;
     s1+=139.0;
    } else {
     s0+=59552.0;
     s1+=576.0;
    }
   }
  } else {
   if(i61<-0.014306657016277313){
    if(i23<0.9516032934188843){
     s1+=5.0;
    } else {
     s0+=33.0;
     s1+=1.0;
    }
   } else {
    if(i20<0.0032016104087233543){
     s0+=37.0;
     s1+=2.0;
    } else {
     s0+=44.0;
     s1+=555.0;
    }
   }
  }
 } else {
  if(i13<-0.00043773651123046875){
   if(i35<1.498544454574585){
    s0+=299.0;
   } else {
    if(i3<0.9925175905227661){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   }
  } else {
   if(i6<-3.6780629670829512e-06){
    if(i41<1.0724589824676514){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=310.0;
     s1+=3294.0;
    }
   } else {
    if(i52<0.003083169460296631){
     s0+=86.0;
     s1+=106.0;
    } else {
     s0+=183.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i45<0.0059245433658361435){
  if(i2<0.07499533891677856){
   if(i55<0.0013653039932250977){
    if(i41<1.1380741596221924){
     s0+=12.0;
     s1+=234.0;
    } else {
     s0+=207.0;
     s1+=40.0;
    }
   } else {
    if(i74<0.00011347216786816716){
     s0+=1122.0;
     s1+=33.0;
    } else {
     s0+=232.0;
     s1+=76.0;
    }
   }
  } else {
   if(i48<0.01607370376586914){
    if(i29<0.004051498603075743){
     s0+=155.0;
     s1+=2584.0;
    } else {
     s0+=48.0;
     s1+=16.0;
    }
   } else {
    if(i49<0.0022709621116518974){
     s0+=743.0;
     s1+=298.0;
    } else {
     s0+=14.0;
     s1+=321.0;
    }
   }
  }
 } else {
  if(i6<-6.014287646394223e-05){
   if(i1<0.11520406603813171){
    if(i28<0.03261967748403549){
     s0+=54.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i11<-0.0001793503761291504){
     s0+=14.0;
     s1+=377.0;
    } else {
     s0+=2.0;
     s1+=7226.0;
    }
   }
  } else {
   if(i20<0.006236477289348841){
    if(i47<0.9998844861984253){
     s1+=24.0;
    } else {
     s0+=71.0;
    }
   } else {
    s1+=72.0;
   }
  }
 }
}
if(i1<0.0783216655254364){
 if(i7<4.166364669799805e-05){
  if(i34<1.0557184219360352){
   if(i57<0.0010110895382240415){
    s0+=41971.0;
   } else {
    if(i6<-8.015098501346074e-06){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=886.0;
    }
   }
  } else {
   if(i48<-0.004864782094955444){
    if(i33<0.0009684195974841714){
     s0+=431.0;
     s1+=473.0;
    } else {
     s0+=3010.0;
     s1+=315.0;
    }
   } else {
    if(i18<0.9947412014007568){
     s0+=13120.0;
     s1+=75.0;
    } else {
     s0+=9356.0;
     s1+=1266.0;
    }
   }
  }
 } else {
  if(i17<1.0012356042861938){
   if(i57<0.0004658937396015972){
    s0+=233.0;
   } else {
    if(i43<0.001611541025340557){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i55<0.0021395087242126465){
    if(i45<0.002273865509778261){
     s0+=1.0;
     s1+=668.0;
    } else {
     s0+=163.0;
     s1+=437.0;
    }
   } else {
    if(i45<0.0029566269367933273){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=80.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i12<1.00637948513031){
  if(i44<0.0549868643283844){
   if(i13<-0.00038313865661621094){
    if(i1<0.19637450575828552){
     s0+=60.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i73<1.0067079067230225){
     s0+=47.0;
     s1+=2518.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.13157013058662415){
    if(i55<0.0035907626152038574){
     s0+=696.0;
     s1+=322.0;
    } else {
     s0+=398.0;
     s1+=19.0;
    }
   } else {
    if(i17<0.9979477524757385){
     s0+=221.0;
    } else {
     s0+=280.0;
     s1+=1754.0;
    }
   }
  }
 } else {
  if(i3<1.0006730556488037){
   if(i6<-2.2733918740414083e-05){
    if(i26<1.0404140949249268){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=132.0;
    }
   } else {
    if(i33<0.006134452763944864){
     s0+=73.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i12<1.007652997970581){
    if(i73<1.0024003982543945){
     s0+=16.0;
     s1+=294.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   } else {
    if(i6<-2.5160892619169317e-05){
     s0+=3.0;
     s1+=8817.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i2<0.08504641056060791){
 if(i13<0.0006583333015441895){
  if(i51<0.007415939588099718){
   if(i2<0.06943541765213013){
    if(i55<-0.001375645399093628){
     s0+=3692.0;
     s1+=417.0;
    } else {
     s0+=58843.0;
     s1+=493.0;
    }
   } else {
    if(i30<1.2335381507873535){
     s0+=1263.0;
     s1+=491.0;
    } else {
     s0+=1199.0;
     s1+=15.0;
    }
   }
  } else {
   if(i3<0.9976099729537964){
    if(i25<0.03518781065940857){
     s0+=1705.0;
     s1+=81.0;
    } else {
     s0+=130.0;
     s1+=35.0;
    }
   } else {
    if(i45<0.00034760264679789543){
     s0+=670.0;
     s1+=1.0;
    } else {
     s0+=991.0;
     s1+=716.0;
    }
   }
  }
 } else {
  if(i70<3.4698446143011097e-06){
   if(i37<0.0003231221635360271){
    s0+=30.0;
   } else {
    if(i9<1.0799560546875){
     s0+=4.0;
     s1+=516.0;
    } else {
     s0+=44.0;
     s1+=91.0;
    }
   }
  } else {
   if(i11<-0.0020723342895507812){
    if(i62<0.14472144842147827){
     s0+=354.0;
     s1+=26.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i6<-9.219959611073136e-05){
     s0+=7.0;
     s1+=111.0;
    } else {
     s0+=157.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i22<5.08427619934082e-05){
  if(i20<0.004702878650277853){
   if(i67<-0.004655714146792889){
    if(i1<0.1319108009338379){
     s0+=605.0;
     s1+=12.0;
    } else {
     s0+=394.0;
     s1+=215.0;
    }
   } else {
    if(i13<-0.00038874149322509766){
     s0+=302.0;
     s1+=10.0;
    } else {
     s0+=191.0;
     s1+=784.0;
    }
   }
  } else {
   if(i69<1.7333941286779009e-06){
    if(i17<0.9986382722854614){
     s0+=47.0;
     s1+=11.0;
    } else {
     s0+=214.0;
     s1+=2762.0;
    }
   } else {
    s0+=64.0;
   }
  }
 } else {
  if(i41<1.0670123100280762){
   s0+=30.0;
  } else {
   if(i20<0.001682774629443884){
    if(i4<0.00022614002227783203){
     s0+=56.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=131.0;
    }
   } else {
    if(i40<-7.187730943769566e-07){
     s0+=40.0;
     s1+=10165.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i7<3.820657730102539e-05){
 if(i2<0.08395811915397644){
  if(i29<0.0002956066164188087){
   if(i27<1.0081517696380615){
    if(i68<0.002077898010611534){
     s0+=54951.0;
     s1+=331.0;
    } else {
     s0+=329.0;
     s1+=91.0;
    }
   } else {
    if(i2<0.07067158818244934){
     s0+=646.0;
     s1+=103.0;
    } else {
     s0+=17.0;
     s1+=65.0;
    }
   }
  } else {
   if(i37<0.0020091100595891476){
    if(i17<0.9983233213424683){
     s0+=1065.0;
     s1+=7.0;
    } else {
     s0+=3188.0;
     s1+=1133.0;
    }
   } else {
    if(i1<0.08147075772285461){
     s0+=8267.0;
     s1+=271.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i4<-0.0008013248443603516){
   if(i17<0.9984363317489624){
    if(i54<-9.953975677490234e-05){
     s0+=539.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   } else {
    if(i9<1.1064577102661133){
     s0+=71.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=105.0;
    }
   }
  } else {
   if(i44<0.058075129985809326){
    if(i1<0.053796082735061646){
     s0+=21.0;
    } else {
     s0+=59.0;
     s1+=1931.0;
    }
   } else {
    if(i0<0.11972963809967041){
     s0+=702.0;
     s1+=166.0;
    } else {
     s0+=377.0;
     s1+=1253.0;
    }
   }
  }
 }
} else {
 if(i37<0.00042525172466412187){
  s0+=269.0;
 } else {
  if(i12<1.0098402500152588){
   if(i1<0.07952764630317688){
    if(i58<0.003172636032104492){
     s0+=173.0;
     s1+=684.0;
    } else {
     s0+=111.0;
     s1+=20.0;
    }
   } else {
    if(i4<0.0005130171775817871){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=117.0;
     s1+=2455.0;
    }
   }
  } else {
   s1+=8645.0;
  }
 }
}
if(i0<0.08202168345451355){
 if(i11<0.0012145638465881348){
  if(i4<0.0006022751331329346){
   if(i58<-0.0020763278007507324){
    if(i1<0.043930888175964355){
     s0+=5205.0;
     s1+=537.0;
    } else {
     s0+=752.0;
     s1+=443.0;
    }
   } else {
    if(i28<0.016540851444005966){
     s0+=56096.0;
     s1+=329.0;
    } else {
     s0+=6778.0;
     s1+=729.0;
    }
   }
  } else {
   if(i63<-0.00028002262115478516){
    if(i40<-1.3820755157212261e-05){
     s0+=48.0;
     s1+=401.0;
    } else {
     s0+=61.0;
     s1+=12.0;
    }
   } else {
    if(i35<1.1759474277496338){
     s0+=44.0;
     s1+=59.0;
    } else {
     s0+=153.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i54<0.00014349818229675293){
   if(i36<0.9999363422393799){
    if(i72<1.000547170639038){
     s1+=25.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.0016087620751932263){
     s1+=8.0;
    } else {
     s0+=83.0;
    }
   }
  } else {
   if(i49<0.0005146993789821863){
    if(i23<1.013920783996582){
     s0+=5.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=391.0;
   }
  }
 }
} else {
 if(i22<5.1021575927734375e-05){
  if(i33<0.006125407759100199){
   if(i7<-5.537271499633789e-05){
    if(i18<0.9909293055534363){
     s0+=351.0;
    } else {
     s0+=47.0;
     s1+=6.0;
    }
   } else {
    if(i61<-0.01832745037972927){
     s0+=803.0;
     s1+=452.0;
    } else {
     s0+=231.0;
     s1+=1493.0;
    }
   }
  } else {
   if(i42<0.1143694818019867){
    if(i30<1.5682398080825806){
     s0+=50.0;
     s1+=391.0;
    } else {
     s0+=80.0;
     s1+=67.0;
    }
   } else {
    if(i66<0.00019345544569659978){
     s0+=16.0;
     s1+=31.0;
    } else {
     s0+=9.0;
     s1+=1555.0;
    }
   }
  }
 } else {
  if(i13<-0.0003800690174102783){
   s0+=30.0;
  } else {
   if(i6<-2.2192822143551894e-05){
    if(i12<1.0085959434509277){
     s0+=63.0;
     s1+=1559.0;
    } else {
     s0+=3.0;
     s1+=8729.0;
    }
   } else {
    if(i20<0.002879383973777294){
     s0+=75.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i6<-7.076264591887593e-05){
 if(i3<0.9989016056060791){
  if(i0<0.08673277497291565){
   if(i42<0.13798552751541138){
    if(i49<0.005789215676486492){
     s0+=215.0;
     s1+=19.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i32<0.9907433986663818){
     s0+=547.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i20<0.005286735482513905){
    s0+=16.0;
   } else {
    if(i19<1.0918948650360107){
     s0+=6.0;
    } else {
     s1+=141.0;
    }
   }
  }
 } else {
  if(i22<-0.0003584623336791992){
   if(i59<-0.0004299022548366338){
    if(i12<0.9905354976654053){
     s1+=71.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    if(i30<1.5682398080825806){
     s1+=34.0;
    } else {
     s0+=183.0;
     s1+=3.0;
    }
   }
  } else {
   if(i11<0.00015026330947875977){
    if(i46<0.009319892153143883){
     s0+=190.0;
     s1+=502.0;
    } else {
     s0+=33.0;
     s1+=948.0;
    }
   } else {
    if(i41<1.613681674003601){
     s1+=8582.0;
    } else {
     s0+=6.0;
     s1+=1108.0;
    }
   }
  }
 }
} else {
 if(i0<0.07893708348274231){
  if(i68<0.0015338389202952385){
   if(i38<0.0002816393389366567){
    if(i27<1.0086071491241455){
     s0+=51707.0;
     s1+=139.0;
    } else {
     s0+=139.0;
     s1+=107.0;
    }
   } else {
    if(i33<0.0011256551370024681){
     s0+=3097.0;
     s1+=736.0;
    } else {
     s0+=7407.0;
     s1+=70.0;
    }
   }
  } else {
   if(i37<0.0022095555905252695){
    if(i3<1.0020217895507812){
     s0+=2087.0;
     s1+=692.0;
    } else {
     s0+=8.0;
     s1+=219.0;
    }
   } else {
    if(i7<1.5348196029663086e-05){
     s0+=3706.0;
     s1+=110.0;
    } else {
     s0+=195.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i53<0.0587787926197052){
   if(i6<-1.3541021871787962e-05){
    if(i55<0.005603045225143433){
     s0+=150.0;
     s1+=2142.0;
    } else {
     s0+=123.0;
     s1+=153.0;
    }
   } else {
    if(i13<-0.0003934204578399658){
     s0+=239.0;
    } else {
     s0+=279.0;
     s1+=307.0;
    }
   }
  } else {
   if(i20<0.005525916814804077){
    if(i44<0.05645066499710083){
     s0+=13.0;
     s1+=41.0;
    } else {
     s0+=945.0;
     s1+=255.0;
    }
   } else {
    if(i8<1.0819685459136963){
     s0+=63.0;
     s1+=47.0;
    } else {
     s0+=9.0;
     s1+=332.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i26<1.0452070236206055){
  if(i3<1.0024747848510742){
   if(i8<1.0433766841888428){
    if(i57<0.0007665572920814157){
     s0+=55490.0;
     s1+=314.0;
    } else {
     s0+=5250.0;
     s1+=556.0;
    }
   } else {
    if(i6<-1.624045216885861e-05){
     s0+=1862.0;
     s1+=1267.0;
    } else {
     s0+=4317.0;
     s1+=588.0;
    }
   }
  } else {
   if(i20<0.0022507812827825546){
    if(i62<0.03641349822282791){
     s0+=38.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i11<-0.0030660033226013184){
     s0+=8.0;
    } else {
     s0+=29.0;
     s1+=863.0;
    }
   }
  }
 } else {
  if(i49<0.0018305883277207613){
   if(i40<-7.548489520559087e-06){
    if(i73<1.0006482601165771){
     s0+=112.0;
     s1+=309.0;
    } else {
     s0+=175.0;
     s1+=40.0;
    }
   } else {
    if(i20<0.005854645278304815){
     s0+=1688.0;
     s1+=226.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   }
  } else {
   if(i2<0.11519795656204224){
    if(i30<1.1013743877410889){
     s0+=2.0;
     s1+=115.0;
    } else {
     s0+=471.0;
     s1+=234.0;
    }
   } else {
    if(i20<0.0039434731006622314){
     s0+=16.0;
    } else {
     s0+=30.0;
     s1+=1602.0;
    }
   }
  }
 }
} else {
 if(i6<-4.32968299719505e-05){
  if(i69<1.033057969834772e-06){
   if(i73<1.0023150444030762){
    if(i17<1.00321364402771){
     s0+=46.0;
     s1+=4369.0;
    } else {
     s1+=5681.0;
    }
   } else {
    if(i1<0.13583922386169434){
     s0+=62.0;
     s1+=23.0;
    } else {
     s1+=374.0;
    }
   }
  } else {
   s0+=7.0;
  }
 } else {
  if(i5<0.17466482520103455){
   if(i20<0.00358741357922554){
    if(i19<1.083398699760437){
     s0+=89.0;
     s1+=142.0;
    } else {
     s0+=1065.0;
     s1+=49.0;
    }
   } else {
    if(i35<1.324088454246521){
     s0+=5.0;
     s1+=299.0;
    } else {
     s0+=78.0;
     s1+=1.0;
    }
   }
  } else {
   if(i26<1.1526312828063965){
    s1+=195.0;
   } else {
    if(i0<0.29001563787460327){
     s0+=44.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i2<0.0852321982383728){
 if(i17<1.0019333362579346){
  if(i52<-0.0018497109413146973){
   if(i0<0.040092527866363525){
    if(i30<1.1013743877410889){
     s0+=751.0;
     s1+=270.0;
    } else {
     s0+=2219.0;
     s1+=113.0;
    }
   } else {
    if(i32<0.9964048862457275){
     s0+=111.0;
     s1+=308.0;
    } else {
     s0+=205.0;
     s1+=96.0;
    }
   }
  } else {
   if(i27<1.0071913003921509){
    if(i28<0.014118550345301628){
     s0+=53198.0;
     s1+=283.0;
    } else {
     s0+=9715.0;
     s1+=669.0;
    }
   } else {
    if(i20<0.0050680674612522125){
     s0+=2054.0;
     s1+=387.0;
    } else {
     s0+=27.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i48<0.0037963390350341797){
   if(i66<0.0008373946184292436){
    if(i34<1.2122483253479004){
     s0+=21.0;
     s1+=588.0;
    } else {
     s0+=33.0;
     s1+=52.0;
    }
   } else {
    if(i73<1.0016217231750488){
     s0+=47.0;
     s1+=199.0;
    } else {
     s0+=188.0;
     s1+=62.0;
    }
   }
  } else {
   if(i22<-4.887580871582031e-06){
    if(i74<0.00018373271450400352){
     s0+=397.0;
     s1+=6.0;
    } else {
     s0+=15.0;
     s1+=7.0;
    }
   } else {
    s1+=26.0;
   }
  }
 }
} else {
 if(i20<0.004687285050749779){
  if(i13<-0.0004024505615234375){
   if(i40<-1.0642637789715081e-05){
    if(i18<0.9852393865585327){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=18.0;
    }
   } else {
    s0+=549.0;
   }
  } else {
   if(i55<0.003603637218475342){
    if(i48<0.015190541744232178){
     s0+=240.0;
     s1+=1845.0;
    } else {
     s0+=227.0;
     s1+=144.0;
    }
   } else {
    if(i33<0.0054918983951210976){
     s0+=485.0;
     s1+=149.0;
    } else {
     s0+=78.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i35<1.0650522708892822){
   s0+=24.0;
  } else {
   if(i17<0.9981769919395447){
    if(i34<1.2935820817947388){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i11<-0.00417172908782959){
     s0+=56.0;
     s1+=59.0;
    } else {
     s0+=171.0;
     s1+=11799.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i23<1.0095628499984741){
  if(i17<1.0019985437393188){
   if(i46<0.00035587529418990016){
    if(i11<0.0010280609130859375){
     s0+=48685.0;
     s1+=133.0;
    } else {
     s0+=65.0;
     s1+=20.0;
    }
   } else {
    if(i11<-0.0013716816902160645){
     s0+=10374.0;
     s1+=196.0;
    } else {
     s0+=5145.0;
     s1+=1290.0;
    }
   }
  } else {
   if(i3<1.0015997886657715){
    if(i8<1.01816987991333){
     s1+=11.0;
    } else {
     s0+=220.0;
     s1+=8.0;
    }
   } else {
    if(i38<0.0001562094403197989){
     s0+=4.0;
    } else {
     s0+=12.0;
     s1+=311.0;
    }
   }
  }
 } else {
  if(i0<0.069725900888443){
   if(i39<0.005735874176025391){
    if(i69<-4.693456503446214e-06){
     s0+=5.0;
     s1+=31.0;
    } else {
     s0+=22.0;
     s1+=11.0;
    }
   } else {
    if(i13<0.00022172927856445312){
     s0+=101.0;
     s1+=6.0;
    } else {
     s0+=34.0;
     s1+=16.0;
    }
   }
  } else {
   if(i22<-3.814697265625e-05){
    if(i18<0.9974573850631714){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i35<1.2721021175384521){
     s0+=1.0;
     s1+=300.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i2<0.09140151739120483){
  if(i7<3.331899642944336e-05){
   if(i66<0.0017512365011498332){
    if(i19<1.0920991897583008){
     s0+=1883.0;
     s1+=692.0;
    } else {
     s0+=3168.0;
     s1+=232.0;
    }
   } else {
    if(i8<1.076237440109253){
     s0+=2.0;
     s1+=7.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i7<7.051229476928711e-05){
    if(i34<1.1459219455718994){
     s0+=4.0;
     s1+=211.0;
    } else {
     s0+=211.0;
     s1+=93.0;
    }
   } else {
    if(i41<1.613681674003601){
     s0+=27.0;
     s1+=635.0;
    } else {
     s0+=23.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i13<-0.0005078613758087158){
   s0+=263.0;
  } else {
   if(i49<0.0002987491898238659){
    if(i6<-2.156117989216e-05){
     s0+=9.0;
     s1+=143.0;
    } else {
     s0+=316.0;
     s1+=72.0;
    }
   } else {
    if(i3<1.0023725032806396){
     s0+=579.0;
     s1+=2687.0;
    } else {
     s0+=68.0;
     s1+=9802.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i42<0.03061039000749588){
  if(i1<0.08534619212150574){
   if(i29<0.0002979440032504499){
    if(i0<0.07829615473747253){
     s0+=54419.0;
     s1+=379.0;
    } else {
     s0+=168.0;
     s1+=79.0;
    }
   } else {
    if(i58<-0.002712935209274292){
     s0+=574.0;
     s1+=198.0;
    } else {
     s0+=4240.0;
     s1+=290.0;
    }
   }
  } else {
   if(i44<0.06340450048446655){
    if(i7<-4.553794860839844e-05){
     s0+=54.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=524.0;
    }
   } else {
    if(i0<0.11646991968154907){
     s0+=265.0;
     s1+=25.0;
    } else {
     s0+=106.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i3<0.9974569082260132){
   if(i5<0.08223289251327515){
    if(i41<1.2209420204162598){
     s0+=1095.0;
     s1+=189.0;
    } else {
     s0+=5458.0;
     s1+=54.0;
    }
   } else {
    if(i13<-0.000432431697845459){
     s0+=234.0;
     s1+=1.0;
    } else {
     s0+=75.0;
     s1+=244.0;
    }
   }
  } else {
   if(i28<0.02930297888815403){
    if(i0<0.07644572854042053){
     s0+=2767.0;
     s1+=548.0;
    } else {
     s0+=556.0;
     s1+=755.0;
    }
   } else {
    if(i22<-0.00033655762672424316){
     s0+=272.0;
     s1+=156.0;
    } else {
     s0+=313.0;
     s1+=1792.0;
    }
   }
  }
 }
} else {
 if(i41<1.0795294046401978){
  s0+=169.0;
 } else {
  if(i0<0.06785306334495544){
   if(i54<0.00014036893844604492){
    if(i35<1.185258150100708){
     s1+=11.0;
    } else {
     s0+=103.0;
     s1+=12.0;
    }
   } else {
    if(i63<-0.0005091428756713867){
     s0+=53.0;
     s1+=526.0;
    } else {
     s0+=87.0;
     s1+=51.0;
    }
   }
  } else {
   if(i34<1.2582359313964844){
    if(i56<9.248826245311648e-05){
     s0+=50.0;
     s1+=3259.0;
    } else {
     s0+=99.0;
     s1+=635.0;
    }
   } else {
    if(i9<1.08823561668396){
     s0+=11.0;
     s1+=756.0;
    } else {
     s1+=6418.0;
    }
   }
  }
 }
}
if(i7<3.701448440551758e-05){
 if(i16<1.007272720336914){
  if(i42<0.03146599233150482){
   if(i36<0.9715585708618164){
    if(i54<-3.4421682357788086e-05){
     s0+=411.0;
     s1+=34.0;
    } else {
     s0+=115.0;
     s1+=181.0;
    }
   } else {
    if(i6<-4.382697443361394e-05){
     s0+=446.0;
     s1+=80.0;
    } else {
     s0+=57695.0;
     s1+=504.0;
    }
   }
  } else {
   if(i0<0.07667818665504456){
    if(i12<0.9897273778915405){
     s0+=6285.0;
     s1+=185.0;
    } else {
     s0+=2220.0;
     s1+=720.0;
    }
   } else {
    if(i17<0.9980460405349731){
     s0+=168.0;
     s1+=3.0;
    } else {
     s0+=401.0;
     s1+=1513.0;
    }
   }
  }
 } else {
  if(i65<-8.545168384443969e-05){
   if(i0<0.06279563903808594){
    if(i49<0.00166809163056314){
     s0+=171.0;
     s1+=14.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i30<1.2604451179504395){
     s0+=36.0;
     s1+=688.0;
    } else {
     s0+=137.0;
     s1+=151.0;
    }
   }
  } else {
   if(i6<-3.352464773342945e-05){
    if(i30<1.2371783256530762){
     s0+=2.0;
     s1+=512.0;
    } else {
     s0+=337.0;
     s1+=433.0;
    }
   } else {
    if(i1<0.07776999473571777){
     s0+=1536.0;
     s1+=76.0;
    } else {
     s0+=547.0;
     s1+=250.0;
    }
   }
  }
 }
} else {
 if(i50<0.9984301924705505){
  s0+=271.0;
 } else {
  if(i0<0.06267303228378296){
   if(i48<-0.005523622035980225){
    if(i55<0.0006403326988220215){
     s0+=47.0;
     s1+=337.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i33<0.001670411555096507){
     s0+=19.0;
     s1+=83.0;
    } else {
     s0+=177.0;
     s1+=25.0;
    }
   }
  } else {
   if(i11<3.0934810638427734e-05){
    if(i66<0.0009527045185677707){
     s0+=132.0;
     s1+=508.0;
    } else {
     s0+=8.0;
     s1+=760.0;
    }
   } else {
    if(i40<-1.2551237887237221e-05){
     s0+=10.0;
     s1+=9831.0;
    } else {
     s0+=42.0;
     s1+=120.0;
    }
   }
  }
 }
}
if(i31<0.04863370209932327){
 if(i7<3.7610530853271484e-05){
  if(i5<0.06861492991447449){
   if(i10<1.0074986219406128){
    if(i0<0.07723328471183777){
     s0+=66218.0;
     s1+=1493.0;
    } else {
     s0+=201.0;
     s1+=410.0;
    }
   } else {
    if(i37<0.002016632817685604){
     s0+=133.0;
     s1+=470.0;
    } else {
     s0+=774.0;
     s1+=61.0;
    }
   }
  } else {
   if(i1<0.09594878554344177){
    if(i25<0.05711290240287781){
     s0+=114.0;
     s1+=245.0;
    } else {
     s0+=1315.0;
     s1+=249.0;
    }
   } else {
    if(i9<1.1462448835372925){
     s0+=360.0;
     s1+=1443.0;
    } else {
     s0+=523.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i46<0.00027994957054033875){
   if(i47<1.0001652240753174){
    s0+=233.0;
   } else {
    if(i49<0.0008234644774347544){
     s0+=19.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i4<0.0009589195251464844){
    if(i54<-0.00013467669486999512){
     s0+=55.0;
    } else {
     s0+=313.0;
     s1+=1037.0;
    }
   } else {
    if(i22<1.0788440704345703e-05){
     s0+=103.0;
     s1+=370.0;
    } else {
     s0+=5.0;
     s1+=4513.0;
    }
   }
  }
 }
} else {
 if(i2<0.07789844274520874){
  if(i6<-7.721233851043507e-05){
   if(i7<-3.534555435180664e-05){
    if(i33<0.018629349768161774){
     s1+=2.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i13<0.00028973817825317383){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=133.0;
    }
   }
  } else {
   if(i23<0.9566943645477295){
    s1+=20.0;
   } else {
    s0+=855.0;
   }
  }
 } else {
  if(i1<0.07602879405021667){
   if(i56<0.0002303818182554096){
    s1+=2.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i18<0.9709988832473755){
    s0+=4.0;
   } else {
    if(i47<0.9994027614593506){
     s0+=1.0;
    } else {
     s1+=6239.0;
    }
   }
  }
 }
}
if(i22<0.00011152029037475586){
 if(i1<0.08137065172195435){
  if(i7<4.035234451293945e-05){
   if(i2<0.06916141510009766){
    if(i52<-0.001650482416152954){
     s0+=3545.0;
     s1+=637.0;
    } else {
     s0+=61680.0;
     s1+=790.0;
    }
   } else {
    if(i44<0.04130822420120239){
     s0+=515.0;
     s1+=534.0;
    } else {
     s0+=2523.0;
     s1+=138.0;
    }
   }
  } else {
   if(i3<1.0016002655029297){
    if(i59<-0.0002678559976629913){
     s1+=6.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i43<0.007757736369967461){
     s0+=24.0;
     s1+=319.0;
    } else {
     s0+=110.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i43<0.0005116504617035389){
   if(i29<0.0006816383684054017){
    if(i5<0.08119425177574158){
     s0+=58.0;
     s1+=14.0;
    } else {
     s0+=29.0;
     s1+=61.0;
    }
   } else {
    s0+=276.0;
   }
  } else {
   if(i13<-0.0004094839096069336){
    if(i35<1.4989960193634033){
     s0+=271.0;
    } else {
     s0+=9.0;
     s1+=7.0;
    }
   } else {
    if(i64<0.036145925521850586){
     s0+=333.0;
     s1+=3589.0;
    } else {
     s0+=587.0;
     s1+=1033.0;
    }
   }
  }
 }
} else {
 if(i1<0.05541396141052246){
  if(i61<0.0020571029745042324){
   if(i2<0.0646740198135376){
    if(i55<-0.0023692846298217773){
     s0+=7.0;
     s1+=40.0;
    } else {
     s0+=687.0;
     s1+=58.0;
    }
   } else {
    s1+=64.0;
   }
  } else {
   if(i29<0.00025945910601876676){
    if(i3<1.006510853767395){
     s0+=26.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i60<0.015551400370895863){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=167.0;
    }
   }
  }
 } else {
  if(i3<0.9998650550842285){
   if(i23<1.023195743560791){
    s0+=84.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i17<1.0016807317733765){
    if(i20<0.0025412163231521845){
     s0+=80.0;
     s1+=225.0;
    } else {
     s0+=5.0;
     s1+=1770.0;
    }
   } else {
    s1+=7753.0;
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i11<0.0011022686958312988){
  if(i1<0.0774390697479248){
   if(i13<0.0005142688751220703){
    if(i71<0.018812719732522964){
     s0+=51549.0;
     s1+=438.0;
    } else {
     s0+=16369.0;
     s1+=1411.0;
    }
   } else {
    if(i11<-0.00234144926071167){
     s0+=599.0;
     s1+=51.0;
    } else {
     s0+=452.0;
     s1+=527.0;
    }
   }
  } else {
   if(i21<0.9950947761535645){
    s0+=85.0;
   } else {
    if(i39<0.04672655463218689){
     s0+=19.0;
     s1+=747.0;
    } else {
     s0+=22.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i22<0.00022995471954345703){
   if(i30<1.2392117977142334){
    s1+=248.0;
   } else {
    if(i21<1.0058531761169434){
     s0+=140.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i0<0.04030737280845642){
    if(i74<6.507790385512635e-05){
     s0+=1.0;
    } else {
     s1+=47.0;
    }
   } else {
    s1+=1056.0;
   }
  }
 }
} else {
 if(i3<1.0015792846679688){
  if(i44<0.05092158913612366){
   if(i15<-1.475214958190918e-05){
    s0+=22.0;
   } else {
    if(i19<1.0409971475601196){
     s0+=8.0;
    } else {
     s0+=37.0;
     s1+=992.0;
    }
   }
  } else {
   if(i0<0.1102154552936554){
    if(i6<-2.3941520339576527e-05){
     s0+=274.0;
     s1+=147.0;
    } else {
     s0+=850.0;
     s1+=59.0;
    }
   } else {
    if(i20<0.004999159835278988){
     s0+=601.0;
     s1+=471.0;
    } else {
     s0+=50.0;
     s1+=803.0;
    }
   }
  }
 } else {
  if(i3<1.003801703453064){
   if(i6<-4.994457776774652e-05){
    if(i19<1.122573733329773){
     s0+=85.0;
     s1+=359.0;
    } else {
     s0+=7.0;
     s1+=928.0;
    }
   } else {
    if(i22<0.0001716017723083496){
     s0+=63.0;
     s1+=160.0;
    } else {
     s0+=30.0;
     s1+=3.0;
    }
   }
  } else {
   if(i12<1.006338357925415){
    if(i66<0.0003293663030490279){
     s0+=23.0;
     s1+=126.0;
    } else {
     s0+=1.0;
     s1+=852.0;
    }
   } else {
    if(i11<0.0014226436614990234){
     s0+=1.0;
     s1+=580.0;
    } else {
     s1+=6930.0;
    }
   }
  }
 }
}
if(i1<0.07645514607429504){
 if(i22<0.00016176700592041016){
  if(i41<1.0717806816101074){
   if(i14<1.0060877799987793){
    if(i17<1.0006154775619507){
     s0+=35667.0;
     s1+=1.0;
    } else {
     s0+=1636.0;
     s1+=17.0;
    }
   } else {
    if(i66<0.0003794337681028992){
     s1+=16.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i53<-0.027910947799682617){
    if(i49<0.001570328837260604){
     s0+=1276.0;
     s1+=342.0;
    } else {
     s0+=496.0;
     s1+=508.0;
    }
   } else {
    if(i43<0.000667032552883029){
     s0+=8420.0;
     s1+=1240.0;
    } else {
     s0+=21168.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i20<0.002371670911088586){
   if(i29<0.0004152818873990327){
    if(i17<1.0019149780273438){
     s0+=271.0;
     s1+=5.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i32<1.010713815689087){
     s0+=25.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   }
  } else {
   if(i4<0.00011873245239257812){
    s0+=41.0;
   } else {
    s1+=600.0;
   }
  }
 }
} else {
 if(i6<-2.176856287405826e-05){
  if(i59<-0.00012935599079355597){
   if(i7<5.65648078918457e-05){
    if(i30<1.2392117977142334){
     s1+=1496.0;
    } else {
     s0+=261.0;
     s1+=1858.0;
    }
   } else {
    if(i54<-0.0005166530609130859){
     s0+=8.0;
    } else {
     s0+=28.0;
     s1+=8913.0;
    }
   }
  } else {
   if(i70<4.040582552988781e-06){
    if(i40<-1.1944127436436247e-05){
     s0+=26.0;
     s1+=643.0;
    } else {
     s0+=33.0;
     s1+=83.0;
    }
   } else {
    if(i64<0.03295856714248657){
     s0+=55.0;
     s1+=260.0;
    } else {
     s0+=227.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i44<0.054956674575805664){
   if(i7<-5.564093589782715e-05){
    if(i20<0.006263252813369036){
     s0+=122.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i54<-0.00013908743858337402){
     s0+=5.0;
    } else {
     s0+=33.0;
     s1+=427.0;
    }
   }
  } else {
   if(i43<0.001856439863331616){
    if(i29<0.0011660235468298197){
     s0+=206.0;
     s1+=74.0;
    } else {
     s0+=731.0;
     s1+=8.0;
    }
   } else {
    if(i5<0.12132000923156738){
     s0+=213.0;
     s1+=17.0;
    } else {
     s0+=49.0;
     s1+=189.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i6<-6.35013566352427e-05){
  if(i3<1.0000985860824585){
   if(i5<0.08501994609832764){
    if(i14<1.0049633979797363){
     s0+=1139.0;
     s1+=78.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i47<1.000457525253296){
     s0+=4.0;
     s1+=308.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i2<0.09357023239135742){
    if(i47<1.0004385709762573){
     s0+=81.0;
     s1+=384.0;
    } else {
     s0+=125.0;
     s1+=90.0;
    }
   } else {
    if(i0<0.12589031457901){
     s0+=35.0;
     s1+=244.0;
    } else {
     s0+=3.0;
     s1+=1489.0;
    }
   }
  }
 } else {
  if(i19<1.0486011505126953){
   if(i46<0.0002922881976701319){
    if(i54<0.0002180933952331543){
     s0+=43024.0;
     s1+=21.0;
    } else {
     s0+=1469.0;
     s1+=9.0;
    }
   } else {
    if(i52<-0.0004321634769439697){
     s0+=1231.0;
     s1+=213.0;
    } else {
     s0+=9804.0;
     s1+=149.0;
    }
   }
  } else {
   if(i18<0.9942014217376709){
    if(i0<0.10044804215431213){
     s0+=4874.0;
     s1+=99.0;
    } else {
     s0+=275.0;
     s1+=241.0;
    }
   } else {
    if(i42<0.033670082688331604){
     s0+=5635.0;
     s1+=981.0;
    } else {
     s0+=1958.0;
     s1+=1689.0;
    }
   }
  }
 }
} else {
 if(i66<0.0004755850532092154){
  if(i11<0.0014307498931884766){
   if(i0<0.09729674458503723){
    if(i58<0.0038703083992004395){
     s0+=350.0;
     s1+=230.0;
    } else {
     s0+=634.0;
     s1+=10.0;
    }
   } else {
    if(i52<0.006886005401611328){
     s0+=68.0;
     s1+=810.0;
    } else {
     s0+=238.0;
     s1+=283.0;
    }
   }
  } else {
   if(i1<0.024507135152816772){
    if(i63<-0.0035231411457061768){
     s1+=4.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i20<0.0013534249737858772){
     s0+=6.0;
     s1+=87.0;
    } else {
     s1+=1853.0;
    }
   }
  }
 } else {
  if(i20<0.002780535724014044){
   if(i27<1.0227129459381104){
    if(i40<-2.49028489633929e-05){
     s1+=15.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i32<1.0134022235870361){
     s0+=2.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i22<-8.803606033325195e-05){
    if(i2<0.09153777360916138){
     s0+=25.0;
     s1+=12.0;
    } else {
     s0+=10.0;
     s1+=276.0;
    }
   } else {
    if(i66<0.0005709055694751441){
     s0+=13.0;
     s1+=661.0;
    } else {
     s1+=6878.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i1<0.07800722122192383){
  if(i17<1.0019540786743164){
   if(i48<-0.005656927824020386){
    if(i1<0.038114458322525024){
     s0+=2799.0;
     s1+=309.0;
    } else {
     s0+=297.0;
     s1+=253.0;
    }
   } else {
    if(i71<0.018470972776412964){
     s0+=49901.0;
     s1+=188.0;
    } else {
     s0+=11603.0;
     s1+=573.0;
    }
   }
  } else {
   if(i11<-0.0021580755710601807){
    if(i51<0.01800776645541191){
     s0+=229.0;
    } else {
     s0+=9.0;
     s1+=21.0;
    }
   } else {
    if(i19<1.0591386556625366){
     s0+=47.0;
     s1+=35.0;
    } else {
     s0+=18.0;
     s1+=327.0;
    }
   }
  }
 } else {
  if(i7<-5.796551704406738e-05){
   if(i37<0.0064552100375294685){
    s0+=114.0;
   } else {
    if(i52<0.0021519064903259277){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=27.0;
     s1+=3.0;
    }
   }
  } else {
   if(i50<0.9986670613288879){
    s0+=26.0;
   } else {
    if(i63<0.0025756359100341797){
     s0+=10.0;
     s1+=821.0;
    } else {
     s0+=77.0;
     s1+=212.0;
    }
   }
  }
 }
} else {
 if(i4<0.00046706199645996094){
  if(i28<0.028469104319810867){
   if(i22<8.440017700195312e-05){
    if(i28<0.016812916845083237){
     s0+=3322.0;
     s1+=314.0;
    } else {
     s0+=1054.0;
     s1+=541.0;
    }
   } else {
    if(i30<1.2604451179504395){
     s0+=41.0;
     s1+=429.0;
    } else {
     s0+=180.0;
     s1+=4.0;
    }
   }
  } else {
   if(i15<-1.475214958190918e-05){
    if(i54<-0.0001304149627685547){
     s0+=345.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i20<0.0032028171699494123){
     s0+=330.0;
     s1+=352.0;
    } else {
     s0+=174.0;
     s1+=1630.0;
    }
   }
  }
 } else {
  if(i1<0.08059108257293701){
   if(i34<1.1480928659439087){
    if(i42<0.17646349966526031){
     s0+=1.0;
     s1+=604.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   } else {
    if(i28<0.05564543604850769){
     s0+=256.0;
     s1+=124.0;
    } else {
     s0+=6.0;
     s1+=112.0;
    }
   }
  } else {
   if(i18<1.0000088214874268){
    if(i19<1.125802755355835){
     s0+=65.0;
     s1+=160.0;
    } else {
     s0+=27.0;
     s1+=850.0;
    }
   } else {
    if(i40<-1.269941458303947e-05){
     s0+=33.0;
     s1+=9180.0;
    } else {
     s0+=30.0;
     s1+=156.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i9<1.042873740196228){
  if(i65<0.00028010178357362747){
   if(i38<0.00032368762185797095){
    if(i27<1.009058952331543){
     s0+=51985.0;
     s1+=116.0;
    } else {
     s0+=110.0;
     s1+=60.0;
    }
   } else {
    if(i3<1.0009205341339111){
     s0+=3114.0;
     s1+=297.0;
    } else {
     s0+=73.0;
     s1+=101.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i7<-1.4185905456542969e-05){
     s0+=2174.0;
     s1+=518.0;
    } else {
     s0+=96.0;
     s1+=526.0;
    }
   } else {
    if(i3<1.0005059242248535){
     s0+=6764.0;
     s1+=105.0;
    } else {
     s0+=54.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i6<-2.6113535568583757e-05){
   if(i17<1.0008962154388428){
    if(i7<-1.239776611328125e-05){
     s0+=334.0;
     s1+=421.0;
    } else {
     s0+=109.0;
     s1+=1637.0;
    }
   } else {
    if(i0<0.12273487448692322){
     s0+=847.0;
     s1+=290.0;
    } else {
     s0+=54.0;
     s1+=488.0;
    }
   }
  } else {
   if(i0<0.08422687649726868){
    if(i35<1.1037919521331787){
     s0+=1278.0;
     s1+=285.0;
    } else {
     s0+=2700.0;
     s1+=50.0;
    }
   } else {
    if(i45<0.003813175717368722){
     s0+=821.0;
     s1+=273.0;
    } else {
     s0+=126.0;
     s1+=254.0;
    }
   }
  }
 }
} else {
 if(i20<0.0019231135956943035){
  if(i56<-3.031402957276441e-05){
   s1+=113.0;
  } else {
   if(i74<8.569728379370645e-05){
    s1+=18.0;
   } else {
    s0+=257.0;
   }
  }
 } else {
  if(i35<1.0590065717697144){
   s0+=41.0;
  } else {
   if(i2<0.049664467573165894){
    if(i58<0.0031029582023620605){
     s0+=80.0;
     s1+=263.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i1<0.13138559460639954){
     s0+=162.0;
     s1+=2047.0;
    } else {
     s0+=14.0;
     s1+=9135.0;
    }
   }
  }
 }
}
if(i1<0.07766455411911011){
 if(i12<1.0061482191085815){
  if(i17<1.001664638519287){
   if(i29<0.0002976125106215477){
    if(i34<1.0598037242889404){
     s0+=41745.0;
     s1+=10.0;
    } else {
     s0+=14205.0;
     s1+=502.0;
    }
   } else {
    if(i33<0.0011244213674217463){
     s0+=3415.0;
     s1+=988.0;
    } else {
     s0+=8402.0;
     s1+=338.0;
    }
   }
  } else {
   if(i70<9.41711914492771e-06){
    if(i46<0.0002484459546394646){
     s0+=36.0;
    } else {
     s0+=62.0;
     s1+=326.0;
    }
   } else {
    if(i68<0.006548222154378891){
     s0+=715.0;
     s1+=50.0;
    } else {
     s0+=83.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i40<-1.4109648873272818e-05){
   if(i72<0.9990423917770386){
    if(i52<-0.003804326057434082){
     s1+=8.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i57<-0.0005422901595011353){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=744.0;
    }
   }
  } else {
   if(i34<1.1140391826629639){
    s1+=57.0;
   } else {
    if(i35<1.1463401317596436){
     s1+=5.0;
    } else {
     s0+=580.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i20<0.004687673412263393){
  if(i22<0.00010943412780761719){
   if(i64<0.0344051718711853){
    if(i55<0.003936499357223511){
     s0+=186.0;
     s1+=948.0;
    } else {
     s0+=301.0;
     s1+=153.0;
    }
   } else {
    if(i61<-0.023387422785162926){
     s0+=686.0;
     s1+=102.0;
    } else {
     s0+=318.0;
     s1+=175.0;
    }
   }
  } else {
   if(i38<0.0025381045415997505){
    if(i12<1.0024186372756958){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=865.0;
    }
   } else {
    if(i57<0.0019078527111560106){
     s0+=49.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i11<-0.0009030699729919434){
   if(i2<0.11721307039260864){
    if(i8<1.0916776657104492){
     s0+=178.0;
     s1+=74.0;
    } else {
     s0+=16.0;
     s1+=138.0;
    }
   } else {
    if(i4<-0.0008499026298522949){
     s0+=51.0;
     s1+=73.0;
    } else {
     s0+=16.0;
     s1+=926.0;
    }
   }
  } else {
   if(i31<0.01672711968421936){
    if(i11<0.00026214122772216797){
     s0+=45.0;
     s1+=152.0;
    } else {
     s0+=3.0;
     s1+=902.0;
    }
   } else {
    if(i3<0.9964545965194702){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=9383.0;
    }
   }
  }
 }
}
if(i4<0.0005699992179870605){
 if(i2<0.08528822660446167){
  if(i71<0.01874484494328499){
   if(i10<1.0081751346588135){
    if(i65<0.00035554866190068424){
     s0+=51284.0;
     s1+=176.0;
    } else {
     s0+=170.0;
     s1+=135.0;
    }
   } else {
    if(i35<1.1413683891296387){
     s0+=9.0;
     s1+=140.0;
    } else {
     s0+=45.0;
     s1+=4.0;
    }
   }
  } else {
   if(i30<1.100754976272583){
    if(i21<1.0006810426712036){
     s0+=3877.0;
     s1+=814.0;
    } else {
     s0+=22.0;
     s1+=291.0;
    }
   } else {
    if(i1<0.07587873935699463){
     s0+=13107.0;
     s1+=452.0;
    } else {
     s0+=214.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i47<0.9993597269058228){
   s0+=403.0;
  } else {
   if(i13<-0.00039127469062805176){
    if(i47<0.9997957944869995){
     s0+=252.0;
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=17.0;
    }
   } else {
    if(i39<0.0474071204662323){
     s0+=109.0;
     s1+=2145.0;
    } else {
     s0+=1034.0;
     s1+=1238.0;
    }
   }
  }
 }
} else {
 if(i20<0.0020571204368025064){
  if(i13<0.0007806718349456787){
   if(i74<8.675803837832063e-05){
    s1+=38.0;
   } else {
    if(i4<0.0017058849334716797){
     s0+=236.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   s1+=91.0;
  }
 } else {
  if(i35<1.0590065717697144){
   s0+=30.0;
  } else {
   if(i18<1.0030146837234497){
    if(i1<0.15326741337776184){
     s0+=205.0;
     s1+=555.0;
    } else {
     s0+=2.0;
     s1+=1236.0;
    }
   } else {
    if(i18<1.0062897205352783){
     s0+=44.0;
     s1+=1112.0;
    } else {
     s0+=2.0;
     s1+=8599.0;
    }
   }
  }
 }
}
if(i6<-6.899627624079585e-05){
 if(i3<0.9993571043014526){
  if(i2<0.08237600326538086){
   if(i14<1.0062642097473145){
    if(i49<0.006434008479118347){
     s0+=878.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i7<0.00030663609504699707){
    if(i8<1.0766117572784424){
     s0+=17.0;
     s1+=22.0;
    } else {
     s1+=208.0;
    }
   } else {
    s0+=14.0;
   }
  }
 } else {
  if(i0<0.05145189166069031){
   if(i73<1.002242088317871){
    if(i53<-0.022913843393325806){
     s0+=23.0;
     s1+=214.0;
    } else {
     s0+=65.0;
     s1+=12.0;
    }
   } else {
    if(i45<0.005783287808299065){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=89.0;
     s1+=4.0;
    }
   }
  } else {
   if(i59<-7.980257214512676e-05){
    if(i10<1.0154021978378296){
     s0+=74.0;
     s1+=2629.0;
    } else {
     s1+=8026.0;
    }
   } else {
    if(i48<0.024638712406158447){
     s0+=31.0;
     s1+=613.0;
    } else {
     s0+=52.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i0<0.07645806670188904){
  if(i48<-0.005849778652191162){
   if(i13<0.0004919767379760742){
    if(i7<-1.6689300537109375e-05){
     s0+=2125.0;
     s1+=203.0;
    } else {
     s0+=1271.0;
     s1+=462.0;
    }
   } else {
    if(i49<0.0030889532063156366){
     s0+=16.0;
     s1+=179.0;
    } else {
     s0+=31.0;
     s1+=12.0;
    }
   }
  } else {
   if(i10<1.0065538883209229){
    if(i19<1.0451585054397583){
     s0+=52534.0;
     s1+=144.0;
    } else {
     s0+=10591.0;
     s1+=790.0;
    }
   } else {
    if(i74<2.4099976144498214e-05){
     s0+=20.0;
     s1+=94.0;
    } else {
     s0+=1088.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i15<-1.5676021575927734e-05){
   if(i50<0.9993369579315186){
    if(i7<-3.248453140258789e-05){
     s0+=490.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.1084057092666626){
     s0+=35.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i52<0.004369497299194336){
    if(i19<1.0452029705047607){
     s0+=164.0;
     s1+=30.0;
    } else {
     s0+=373.0;
     s1+=2495.0;
    }
   } else {
    if(i20<0.003609077539294958){
     s0+=858.0;
     s1+=183.0;
    } else {
     s0+=196.0;
     s1+=546.0;
    }
   }
  }
 }
}
if(i12<1.0056138038635254){
 if(i9<1.0450963973999023){
  if(i4<0.0006532371044158936){
   if(i1<0.08066606521606445){
    if(i58<-0.002227991819381714){
     s0+=4875.0;
     s1+=800.0;
    } else {
     s0+=59659.0;
     s1+=582.0;
    }
   } else {
    if(i21<0.9947069883346558){
     s0+=117.0;
     s1+=2.0;
    } else {
     s0+=96.0;
     s1+=484.0;
    }
   }
  } else {
   if(i21<0.9985220432281494){
    if(i10<0.9597030878067017){
     s1+=2.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i56<0.000311522395350039){
     s0+=14.0;
     s1+=339.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i2<0.09584566950798035){
   if(i20<0.004903439898043871){
    if(i17<0.99878990650177){
     s0+=1054.0;
     s1+=8.0;
    } else {
     s0+=2649.0;
     s1+=490.0;
    }
   } else {
    if(i18<0.9949334859848022){
     s0+=379.0;
     s1+=96.0;
    } else {
     s0+=230.0;
     s1+=468.0;
    }
   }
  } else {
   if(i39<0.055745482444763184){
    if(i47<0.9991523027420044){
     s0+=46.0;
    } else {
     s0+=65.0;
     s1+=2249.0;
    }
   } else {
    if(i31<0.04016799479722977){
     s0+=929.0;
     s1+=522.0;
    } else {
     s0+=15.0;
     s1+=691.0;
    }
   }
  }
 }
} else {
 if(i7<3.3795833587646484e-05){
  if(i47<0.9998732805252075){
   if(i2<0.06826099753379822){
    if(i62<0.008482172153890133){
     s1+=9.0;
    } else {
     s0+=40.0;
     s1+=6.0;
    }
   } else {
    if(i54<-0.00018793344497680664){
     s0+=17.0;
    } else {
     s1+=534.0;
    }
   }
  } else {
   if(i49<0.0009429770288988948){
    if(i17<0.9994999170303345){
     s1+=16.0;
    } else {
     s0+=674.0;
     s1+=53.0;
    }
   } else {
    if(i31<0.0035586513113230467){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i2<0.05901682376861572){
   if(i49<0.0009160415502265096){
    if(i43<0.0010570951271802187){
     s1+=4.0;
    } else {
     s0+=89.0;
     s1+=1.0;
    }
   } else {
    if(i22<1.2755393981933594e-05){
     s0+=16.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=167.0;
    }
   }
  } else {
   if(i20<0.0022344503086060286){
    if(i4<0.0009556412696838379){
     s0+=60.0;
     s1+=21.0;
    } else {
     s1+=166.0;
    }
   } else {
    if(i66<0.0003787933674175292){
     s0+=12.0;
     s1+=1323.0;
    } else {
     s1+=7894.0;
    }
   }
  }
 }
}
if(i2<0.08355417847633362){
 if(i6<-5.035597860114649e-05){
  if(i12<0.9980026483535767){
   if(i4<0.0004075169563293457){
    if(i63<-0.004872560501098633){
     s0+=52.0;
     s1+=54.0;
    } else {
     s0+=1628.0;
     s1+=56.0;
    }
   } else {
    if(i49<0.005455491133034229){
     s0+=128.0;
     s1+=132.0;
    } else {
     s1+=79.0;
    }
   }
  } else {
   if(i13<-0.00031110644340515137){
    if(i70<1.761208477546461e-05){
     s0+=160.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i35<1.2280436754226685){
     s0+=8.0;
     s1+=739.0;
    } else {
     s0+=92.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i19<1.0451585054397583){
   if(i38<0.0002882369444705546){
    if(i21<1.002916693687439){
     s0+=47171.0;
     s1+=56.0;
    } else {
     s0+=57.0;
     s1+=8.0;
    }
   } else {
    if(i62<0.03571227192878723){
     s0+=2558.0;
     s1+=162.0;
    } else {
     s0+=3531.0;
     s1+=13.0;
    }
   }
  } else {
   if(i41<1.1037919521331787){
    if(i65<0.00017677515279501677){
     s0+=3371.0;
     s1+=565.0;
    } else {
     s0+=279.0;
     s1+=765.0;
    }
   } else {
    if(i7<6.395578384399414e-05){
     s0+=9908.0;
     s1+=302.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i54<-0.00013744831085205078){
  if(i6<-4.4379528844729066e-05){
   if(i31<0.014731122180819511){
    if(i17<0.998039960861206){
     s0+=21.0;
    } else {
     s1+=10.0;
    }
   } else {
    s1+=117.0;
   }
  } else {
   if(i74<1.917477675306145e-05){
    if(i16<0.9901255369186401){
     s1+=2.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=695.0;
   }
  }
 } else {
  if(i11<0.0007004141807556152){
   if(i25<0.06298044323921204){
    if(i22<-0.0003707706928253174){
     s0+=45.0;
     s1+=80.0;
    } else {
     s0+=39.0;
     s1+=1715.0;
    }
   } else {
    if(i28<0.02791137434542179){
     s0+=965.0;
     s1+=578.0;
    } else {
     s0+=230.0;
     s1+=2200.0;
    }
   }
  } else {
   if(i6<-2.2337351765600033e-05){
    if(i3<1.0038797855377197){
     s0+=36.0;
     s1+=1100.0;
    } else {
     s1+=8349.0;
    }
   } else {
    s0+=17.0;
   }
  }
 }
}
if(i10<1.0081498622894287){
 if(i0<0.0813697874546051){
  if(i4<0.0006022751331329346){
   if(i54<-2.8908252716064453e-05){
    if(i68<0.0035087852738797665){
     s0+=39792.0;
     s1+=109.0;
    } else {
     s0+=1413.0;
     s1+=153.0;
    }
   } else {
    if(i57<0.0007145819254219532){
     s0+=23168.0;
     s1+=713.0;
    } else {
     s0+=3689.0;
     s1+=887.0;
    }
   }
  } else {
   if(i73<0.9977561235427856){
    if(i52<-0.018145978450775146){
     s1+=1.0;
    } else {
     s0+=93.0;
    }
   } else {
    if(i63<-4.336237907409668e-05){
     s0+=40.0;
     s1+=373.0;
    } else {
     s0+=66.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i44<0.05789309740066528){
   if(i74<0.0003261756501160562){
    if(i15<-1.895427703857422e-05){
     s0+=58.0;
    } else {
     s0+=48.0;
     s1+=2251.0;
    }
   } else {
    s0+=41.0;
   }
  } else {
   if(i33<0.006111837457865477){
    if(i4<0.0009233951568603516){
     s0+=1076.0;
     s1+=352.0;
    } else {
     s1+=98.0;
    }
   } else {
    if(i1<0.11278262734413147){
     s0+=97.0;
     s1+=49.0;
    } else {
     s0+=10.0;
     s1+=1001.0;
    }
   }
  }
 }
} else {
 if(i11<0.0014290213584899902){
  if(i66<0.0005638356087729335){
   if(i31<0.022727197036147118){
    if(i2<0.17502188682556152){
     s0+=1032.0;
     s1+=482.0;
    } else {
     s0+=18.0;
     s1+=252.0;
    }
   } else {
    if(i20<0.003548556240275502){
     s0+=144.0;
     s1+=81.0;
    } else {
     s0+=51.0;
     s1+=742.0;
    }
   }
  } else {
   if(i2<0.005596935749053955){
    if(i6<-5.000958844902925e-05){
     s1+=2.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i6<5.267410870146705e-06){
     s0+=17.0;
     s1+=1667.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i49<3.1949377444107085e-05){
   s0+=1.0;
  } else {
   if(i8<1.039934515953064){
    if(i22<0.0002332925796508789){
     s0+=4.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i9<1.03933584690094){
     s0+=2.0;
     s1+=100.0;
    } else {
     s1+=7984.0;
    }
   }
  }
 }
}
if(i0<0.08522835373878479){
 if(i7<4.202127456665039e-05){
  if(i19<1.0467959642410278){
   if(i48<-0.005439490079879761){
    if(i30<1.0821808576583862){
     s0+=727.0;
    } else {
     s0+=219.0;
     s1+=91.0;
    }
   } else {
    if(i46<0.0002512491191737354){
     s0+=42090.0;
     s1+=6.0;
    } else {
     s0+=12038.0;
     s1+=187.0;
    }
   }
  } else {
   if(i45<0.0008764697704464197){
    if(i56<3.0499220883939415e-05){
     s0+=3930.0;
     s1+=499.0;
    } else {
     s0+=533.0;
     s1+=795.0;
    }
   } else {
    if(i41<1.1037919521331787){
     s0+=9.0;
     s1+=115.0;
    } else {
     s0+=9770.0;
     s1+=524.0;
    }
   }
  }
 } else {
  if(i20<0.0023678657598793507){
   if(i74<9.445904288440943e-05){
    s1+=40.0;
   } else {
    if(i14<1.0209426879882812){
     s0+=264.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i53<0.03078317642211914){
    if(i73<0.9976022243499756){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=66.0;
     s1+=925.0;
    }
   } else {
    if(i3<1.0051472187042236){
     s0+=62.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i15<-1.5109777450561523e-05){
  if(i13<-0.0004056096076965332){
   if(i56<0.00017402941011823714){
    s0+=386.0;
   } else {
    if(i19<1.0700592994689941){
     s0+=10.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i54<-9.992718696594238e-05){
    if(i22<-0.00022089481353759766){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  }
 } else {
  if(i2<0.11629471182823181){
   if(i58<0.005976945161819458){
    if(i25<0.06884697079658508){
     s0+=23.0;
     s1+=1367.0;
    } else {
     s0+=357.0;
     s1+=307.0;
    }
   } else {
    if(i52<0.004264861345291138){
     s0+=15.0;
     s1+=52.0;
    } else {
     s0+=237.0;
     s1+=15.0;
    }
   }
  } else {
   if(i49<0.00032114877831190825){
    if(i8<1.1693381071090698){
     s0+=55.0;
     s1+=234.0;
    } else {
     s0+=133.0;
     s1+=6.0;
    }
   } else {
    if(i45<0.006299339234828949){
     s0+=229.0;
     s1+=2773.0;
    } else {
     s0+=30.0;
     s1+=9047.0;
    }
   }
  }
 }
}
if(i1<0.07752794027328491){
 if(i70<-7.983931027411018e-06){
  if(i29<0.00016201683320105076){
   if(i21<1.0080004930496216){
    s0+=2.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i30<1.5942578315734863){
    s1+=361.0;
   } else {
    if(i52<-0.015153467655181885){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i51<0.007526258006691933){
   if(i4<0.0006026923656463623){
    if(i38<0.0002813995524775237){
     s0+=51940.0;
     s1+=262.0;
    } else {
     s0+=13473.0;
     s1+=1084.0;
    }
   } else {
    if(i73<0.9999865889549255){
     s0+=183.0;
     s1+=47.0;
    } else {
     s0+=68.0;
     s1+=291.0;
    }
   }
  } else {
   if(i15<1.7702579498291016e-05){
    if(i41<1.1037919521331787){
     s0+=1080.0;
     s1+=460.0;
    } else {
     s0+=2220.0;
     s1+=254.0;
    }
   } else {
    if(i58<0.0033258795738220215){
     s0+=104.0;
     s1+=496.0;
    } else {
     s0+=112.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i33<0.005946729332208633){
  if(i39<0.053831666707992554){
   if(i7<-5.456805229187012e-05){
    if(i4<-0.0008113682270050049){
     s0+=127.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i34<1.2643331289291382){
     s0+=213.0;
     s1+=3360.0;
    } else {
     s0+=44.0;
     s1+=3.0;
    }
   }
  } else {
   if(i3<1.001621127128601){
    if(i17<0.9988440275192261){
     s0+=423.0;
     s1+=9.0;
    } else {
     s0+=753.0;
     s1+=366.0;
    }
   } else {
    if(i34<1.2508301734924316){
     s0+=52.0;
     s1+=535.0;
    } else {
     s0+=43.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i59<-0.00011658300354611129){
   if(i1<0.09712371230125427){
    if(i68<0.001139400526881218){
     s0+=46.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=88.0;
    }
   } else {
    if(i73<1.000854253768921){
     s0+=10.0;
     s1+=8059.0;
    } else {
     s0+=36.0;
     s1+=865.0;
    }
   }
  } else {
   if(i57<0.0012948631774634123){
    if(i0<0.12416896224021912){
     s0+=103.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=105.0;
    }
   } else {
    if(i54<0.00010782480239868164){
     s0+=6.0;
     s1+=93.0;
    } else {
     s0+=1.0;
     s1+=408.0;
    }
   }
  }
 }
}
if(i4<0.0005468428134918213){
 if(i29<0.0003148145042359829){
  if(i16<1.00810706615448){
   if(i65<0.0002800102811306715){
    if(i38<0.00030189420795068145){
     s0+=51870.0;
     s1+=130.0;
    } else {
     s0+=2123.0;
     s1+=192.0;
    }
   } else {
    if(i37<0.001042988384142518){
     s0+=303.0;
     s1+=261.0;
    } else {
     s0+=2569.0;
     s1+=36.0;
    }
   }
  } else {
   if(i6<-3.1421135645359755e-05){
    if(i37<0.0027169869281351566){
     s0+=11.0;
     s1+=281.0;
    } else {
     s0+=63.0;
     s1+=8.0;
    }
   } else {
    if(i5<0.0628896951675415){
     s0+=449.0;
     s1+=11.0;
    } else {
     s0+=22.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i12<0.9876586198806763){
   if(i31<0.06030832231044769){
    if(i51<-0.008750023320317268){
     s0+=79.0;
     s1+=63.0;
    } else {
     s0+=6578.0;
     s1+=374.0;
    }
   } else {
    if(i3<0.9922933578491211){
     s0+=42.0;
    } else {
     s0+=2.0;
     s1+=109.0;
    }
   }
  } else {
   if(i45<0.0002969486522488296){
    s0+=1870.0;
   } else {
    if(i41<1.1040980815887451){
     s0+=619.0;
     s1+=1667.0;
    } else {
     s0+=3988.0;
     s1+=2283.0;
    }
   }
  }
 }
} else {
 if(i73<0.9970558881759644){
  s0+=150.0;
 } else {
  if(i20<0.002195025561377406){
   if(i22<0.00028783082962036133){
    if(i56<8.639031875645742e-06){
     s0+=198.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    s1+=129.0;
   }
  } else {
   if(i8<1.1222221851348877){
    if(i29<0.0031930566765367985){
     s0+=133.0;
     s1+=3938.0;
    } else {
     s0+=114.0;
     s1+=245.0;
    }
   } else {
    if(i6<-4.7323435865109786e-05){
     s1+=7193.0;
    } else {
     s0+=5.0;
     s1+=47.0;
    }
   }
  }
 }
}
if(i23<1.0102744102478027){
 if(i13<0.0004188418388366699){
  if(i9<1.0452215671539307){
   if(i58<-0.0020244717597961426){
    if(i0<0.058057695627212524){
     s0+=4879.0;
     s1+=554.0;
    } else {
     s0+=248.0;
     s1+=381.0;
    }
   } else {
    if(i46<0.00033857335802167654){
     s0+=46856.0;
     s1+=64.0;
    } else {
     s0+=12105.0;
     s1+=744.0;
    }
   }
  } else {
   if(i20<0.005716565530747175){
    if(i5<0.05041584372520447){
     s0+=2100.0;
     s1+=295.0;
    } else {
     s0+=1084.0;
     s1+=695.0;
    }
   } else {
    if(i0<0.049230217933654785){
     s0+=54.0;
     s1+=21.0;
    } else {
     s0+=30.0;
     s1+=488.0;
    }
   }
  }
 } else {
  if(i3<1.0015394687652588){
   if(i9<1.0819685459136963){
    if(i68<0.003949620760977268){
     s0+=1167.0;
     s1+=92.0;
    } else {
     s0+=134.0;
     s1+=111.0;
    }
   } else {
    if(i46<0.00283642765134573){
     s0+=18.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=225.0;
    }
   }
  } else {
   if(i7<6.371736526489258e-05){
    if(i38<0.0001807858352549374){
     s0+=57.0;
     s1+=5.0;
    } else {
     s0+=128.0;
     s1+=602.0;
    }
   } else {
    if(i22<-0.00010305643081665039){
     s0+=47.0;
     s1+=336.0;
    } else {
     s0+=14.0;
     s1+=1847.0;
    }
   }
  }
 }
} else {
 if(i45<0.006295825354754925){
  if(i22<0.00010949373245239258){
   if(i15<2.9742717742919922e-05){
    if(i57<-0.0004527650307863951){
     s0+=203.0;
     s1+=396.0;
    } else {
     s0+=1607.0;
     s1+=745.0;
    }
   } else {
    if(i66<0.0005338618066161871){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=242.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i22<0.00011146068572998047){
     s0+=3.0;
     s1+=22.0;
    } else {
     s1+=1729.0;
    }
   } else {
    if(i43<0.004912223666906357){
     s0+=179.0;
     s1+=72.0;
    } else {
     s0+=1.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i8<1.0641473531723022){
   if(i56<0.00015058284043334424){
    s1+=9.0;
   } else {
    s0+=72.0;
   }
  } else {
   if(i34<1.2589144706726074){
    if(i56<9.22649705898948e-05){
     s0+=11.0;
     s1+=963.0;
    } else {
     s0+=68.0;
     s1+=208.0;
    }
   } else {
    s1+=6140.0;
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i3<1.0024750232696533){
  if(i57<0.0008410174050368369){
   if(i42<0.032624002546072006){
    if(i2<0.08487600088119507){
     s0+=55940.0;
     s1+=262.0;
    } else {
     s0+=265.0;
     s1+=157.0;
    }
   } else {
    if(i41<1.2048285007476807){
     s0+=850.0;
     s1+=439.0;
    } else {
     s0+=2214.0;
     s1+=45.0;
    }
   }
  } else {
   if(i22<-0.0003123283386230469){
    if(i6<-0.00014226131315808743){
     s0+=13.0;
     s1+=19.0;
    } else {
     s0+=3390.0;
     s1+=83.0;
    }
   } else {
    if(i56<3.13215859932825e-05){
     s0+=1328.0;
     s1+=91.0;
    } else {
     s0+=1126.0;
     s1+=928.0;
    }
   }
  }
 } else {
  if(i46<0.00026522536063566804){
   if(i32<1.0088374614715576){
    s0+=30.0;
   } else {
    if(i3<1.003713607788086){
     s1+=22.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i13<0.0005320310592651367){
    if(i40<-1.4930764336895663e-05){
     s1+=75.0;
    } else {
     s0+=68.0;
     s1+=16.0;
    }
   } else {
    if(i29<0.006458866409957409){
     s0+=3.0;
     s1+=635.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i10<1.0107395648956299){
  if(i1<0.09230038523674011){
   if(i20<0.004519003443419933){
    if(i4<0.00045174360275268555){
     s0+=3545.0;
     s1+=370.0;
    } else {
     s0+=29.0;
     s1+=145.0;
    }
   } else {
    if(i37<0.0016557089984416962){
     s0+=37.0;
     s1+=461.0;
    } else {
     s0+=700.0;
     s1+=392.0;
    }
   }
  } else {
   if(i40<-3.65067899110727e-06){
    if(i2<0.13240036368370056){
     s0+=200.0;
     s1+=561.0;
    } else {
     s0+=37.0;
     s1+=2254.0;
    }
   } else {
    if(i9<1.073929786682129){
     s0+=69.0;
     s1+=149.0;
    } else {
     s0+=545.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i6<-4.2832893086597323e-05){
   if(i0<0.057687729597091675){
    if(i53<-0.05040886998176575){
     s1+=57.0;
    } else {
     s0+=26.0;
     s1+=32.0;
    }
   } else {
    if(i0<0.08057540655136108){
     s0+=16.0;
     s1+=205.0;
    } else {
     s0+=16.0;
     s1+=9098.0;
    }
   }
  } else {
   if(i0<0.09886199235916138){
    if(i17<1.002107858657837){
     s0+=466.0;
     s1+=55.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i39<0.05508822202682495){
     s0+=10.0;
     s1+=263.0;
    } else {
     s0+=201.0;
     s1+=171.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i8<1.0452215671539307){
  if(i5<0.0758880078792572){
   if(i13<0.0004577040672302246){
    if(i55<-0.0012741684913635254){
     s0+=4191.0;
     s1+=512.0;
    } else {
     s0+=57158.0;
     s1+=358.0;
    }
   } else {
    if(i56<0.00014870380982756615){
     s0+=325.0;
     s1+=202.0;
    } else {
     s0+=325.0;
     s1+=5.0;
    }
   }
  } else {
   if(i1<0.09368851780891418){
    if(i26<1.0214649438858032){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=150.0;
     s1+=45.0;
    }
   } else {
    if(i61<-0.023773180320858955){
     s0+=5.0;
     s1+=9.0;
    } else {
     s1+=129.0;
    }
   }
  }
 } else {
  if(i2<0.06722259521484375){
   if(i15<2.7060508728027344e-05){
    if(i30<1.1013743877410889){
     s0+=708.0;
     s1+=277.0;
    } else {
     s0+=1967.0;
     s1+=107.0;
    }
   } else {
    if(i50<1.0015792846679688){
     s0+=6.0;
     s1+=98.0;
    } else {
     s0+=44.0;
     s1+=43.0;
    }
   }
  } else {
   if(i18<0.9928496479988098){
    if(i0<0.08273443579673767){
     s0+=81.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=25.0;
    }
   } else {
    if(i20<0.0010537868365645409){
     s0+=45.0;
     s1+=31.0;
    } else {
     s0+=77.0;
     s1+=848.0;
    }
   }
  }
 }
} else {
 if(i6<-3.5350964026292786e-05){
  if(i59<-0.00020835362374782562){
   if(i40<-6.557834240084048e-07){
    if(i2<0.07502049207687378){
     s0+=240.0;
     s1+=480.0;
    } else {
     s0+=118.0;
     s1+=11096.0;
    }
   } else {
    if(i4<-0.00040093064308166504){
     s0+=50.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i22<-0.00010025501251220703){
    if(i2<0.11960655450820923){
     s0+=524.0;
     s1+=96.0;
    } else {
     s0+=30.0;
     s1+=171.0;
    }
   } else {
    if(i30<1.5608327388763428){
     s0+=41.0;
     s1+=1208.0;
    } else {
     s0+=111.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i4<0.0004756450653076172){
   if(i20<0.0028343896847218275){
    if(i30<1.255998969078064){
     s0+=2288.0;
     s1+=499.0;
    } else {
     s0+=1329.0;
     s1+=34.0;
    }
   } else {
    if(i15<-1.2010335922241211e-05){
     s0+=731.0;
     s1+=7.0;
    } else {
     s0+=398.0;
     s1+=694.0;
    }
   }
  } else {
   if(i4<0.0006157159805297852){
    if(i41<1.2385294437408447){
     s1+=28.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   } else {
    s1+=115.0;
   }
  }
 }
}
if(i5<0.07132148742675781){
 if(i29<0.00029643403831869364){
  if(i10<1.0080902576446533){
   if(i21<1.0037115812301636){
    if(i1<0.0822550356388092){
     s0+=55896.0;
     s1+=477.0;
    } else {
     s0+=22.0;
     s1+=53.0;
    }
   } else {
    if(i4<0.00038570165634155273){
     s0+=38.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i0<0.0405387282371521){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=408.0;
    }
   } else {
    if(i40<-2.8910591936437413e-05){
     s1+=3.0;
    } else {
     s0+=243.0;
    }
   }
  }
 } else {
  if(i7<2.294778823852539e-05){
   if(i7<-1.2576580047607422e-05){
    if(i11<-0.002185732126235962){
     s0+=5313.0;
     s1+=75.0;
    } else {
     s0+=3986.0;
     s1+=588.0;
    }
   } else {
    if(i28<0.016969023272395134){
     s0+=2194.0;
     s1+=321.0;
    } else {
     s0+=713.0;
     s1+=760.0;
    }
   }
  } else {
   if(i52<0.0026519298553466797){
    if(i3<1.0023424625396729){
     s0+=192.0;
     s1+=283.0;
    } else {
     s0+=96.0;
     s1+=1560.0;
    }
   } else {
    if(i35<1.2038609981536865){
     s0+=32.0;
     s1+=36.0;
    } else {
     s0+=137.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i45<0.005398971494287252){
  if(i29<0.0023144069127738476){
   if(i30<1.0840110778808594){
    s0+=197.0;
   } else {
    if(i11<-1.8417835235595703e-05){
     s0+=476.0;
     s1+=784.0;
    } else {
     s0+=130.0;
     s1+=1741.0;
    }
   }
  } else {
   if(i45<0.003127629403024912){
    if(i20<0.006130821071565151){
     s0+=758.0;
     s1+=61.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i0<0.1533462405204773){
     s0+=198.0;
     s1+=59.0;
    } else {
     s0+=40.0;
     s1+=373.0;
    }
   }
  }
 } else {
  if(i7<-6.392598152160645e-05){
   if(i0<0.11115622520446777){
    if(i39<0.029410362243652344){
     s1+=4.0;
    } else {
     s0+=103.0;
    }
   } else {
    s1+=77.0;
   }
  } else {
   if(i73<1.0014748573303223){
    if(i20<0.000970513210631907){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=72.0;
     s1+=8878.0;
    }
   } else {
    if(i0<0.15151447057724){
     s0+=117.0;
     s1+=81.0;
    } else {
     s0+=13.0;
     s1+=466.0;
    }
   }
  }
 }
}
if(i0<0.08318096399307251){
 if(i17<1.0019333362579346){
  if(i34<1.0557184219360352){
   s0+=43154.0;
  } else {
   if(i3<0.9968733787536621){
    if(i48<-0.004309624433517456){
     s0+=1703.0;
     s1+=112.0;
    } else {
     s0+=12288.0;
     s1+=54.0;
    }
   } else {
    if(i35<1.1047927141189575){
     s0+=3488.0;
     s1+=1639.0;
    } else {
     s0+=8053.0;
     s1+=390.0;
    }
   }
  }
 } else {
  if(i47<1.0004127025604248){
   if(i52<0.002318263053894043){
    if(i30<1.5876636505126953){
     s0+=46.0;
     s1+=785.0;
    } else {
     s0+=45.0;
     s1+=17.0;
    }
   } else {
    if(i14<1.012650489807129){
     s0+=80.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   }
  } else {
   if(i57<0.003447254654020071){
    if(i66<0.0017006774432957172){
     s0+=421.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i11<-0.00249558687210083){
     s0+=69.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i22<9.688735008239746e-05){
  if(i62<0.12198314070701599){
   if(i50<0.9990717172622681){
    if(i3<0.9981740117073059){
     s0+=419.0;
     s1+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i53<0.06225454807281494){
     s0+=367.0;
     s1+=2429.0;
    } else {
     s0+=716.0;
     s1+=568.0;
    }
   }
  } else {
   if(i15<-1.0013580322265625e-05){
    if(i20<0.005307938903570175){
     s0+=25.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i4<-0.001405179500579834){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=13.0;
     s1+=1521.0;
    }
   }
  }
 } else {
  if(i34<1.0545824766159058){
   s0+=17.0;
  } else {
   if(i31<0.01299118623137474){
    if(i63<0.006880521774291992){
     s0+=26.0;
     s1+=1133.0;
    } else {
     s0+=28.0;
     s1+=38.0;
    }
   } else {
    s1+=8426.0;
   }
  }
 }
}
if(i32<1.0074329376220703){
 if(i2<0.08523550629615784){
  if(i4<0.0006837546825408936){
   if(i65<0.00025688367895781994){
    if(i2<0.0692034363746643){
     s0+=54471.0;
     s1+=425.0;
    } else {
     s0+=1868.0;
     s1+=236.0;
    }
   } else {
    if(i18<0.993919849395752){
     s0+=8060.0;
     s1+=149.0;
    } else {
     s0+=3071.0;
     s1+=1158.0;
    }
   }
  } else {
   if(i48<0.0028097033500671387){
    if(i3<1.000848650932312){
     s0+=20.0;
    } else {
     s0+=61.0;
     s1+=372.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s1+=12.0;
    } else {
     s0+=61.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i4<-0.0007540285587310791){
   if(i45<0.003254543524235487){
    if(i56<0.00017201928130816668){
     s0+=534.0;
     s1+=15.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i28<0.023777475580573082){
     s0+=84.0;
     s1+=20.0;
    } else {
     s0+=24.0;
     s1+=114.0;
    }
   }
  } else {
   if(i31<0.023392261937260628){
    if(i48<0.016350537538528442){
     s0+=282.0;
     s1+=1117.0;
    } else {
     s0+=569.0;
     s1+=203.0;
    }
   } else {
    if(i0<0.09586703777313232){
     s0+=35.0;
     s1+=98.0;
    } else {
     s0+=84.0;
     s1+=3003.0;
    }
   }
  }
 }
} else {
 if(i0<0.06577837467193604){
  if(i37<0.0009358153911307454){
   if(i11<0.0005692243576049805){
    if(i4<0.00016564130783081055){
     s0+=108.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i6<-3.3796059142332524e-05){
     s1+=269.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i28<0.03494368493556976){
    if(i41<1.4399763345718384){
     s0+=1226.0;
     s1+=30.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i54<0.00012129545211791992){
     s0+=11.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i66<0.00021946552442386746){
   if(i55<0.0053122639656066895){
    if(i20<0.0017332161078229547){
     s0+=57.0;
     s1+=72.0;
    } else {
     s0+=9.0;
     s1+=468.0;
    }
   } else {
    if(i6<-0.00010180989920627326){
     s1+=44.0;
    } else {
     s0+=173.0;
     s1+=11.0;
    }
   }
  } else {
   if(i2<0.1063612699508667){
    if(i55<0.003715813159942627){
     s0+=49.0;
     s1+=848.0;
    } else {
     s0+=91.0;
     s1+=20.0;
    }
   } else {
    if(i50<0.998774528503418){
     s0+=15.0;
    } else {
     s0+=31.0;
     s1+=8486.0;
    }
   }
  }
 }
}
if(i23<1.0107395648956299){
 if(i2<0.08241075277328491){
  if(i7<4.202127456665039e-05){
   if(i38<0.00029963228735141456){
    if(i14<1.0086822509765625){
     s0+=52956.0;
     s1+=225.0;
    } else {
     s0+=148.0;
     s1+=37.0;
    }
   } else {
    if(i4<0.00014829635620117188){
     s0+=13811.0;
     s1+=1227.0;
    } else {
     s0+=378.0;
     s1+=348.0;
    }
   }
  } else {
   if(i17<1.0011260509490967){
    if(i2<0.07976126670837402){
     s0+=195.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i20<0.0018700012005865574){
     s0+=39.0;
    } else {
     s0+=123.0;
     s1+=709.0;
    }
   }
  }
 } else {
  if(i21<0.9959878921508789){
   if(i54<-0.00014540553092956543){
    if(i43<0.001722568180412054){
     s0+=527.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.10196518898010254){
     s0+=64.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=102.0;
    }
   }
  } else {
   if(i37<0.0004930667346343398){
    if(i17<1.0006065368652344){
     s0+=161.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   } else {
    if(i6<-6.4321666286559775e-06){
     s0+=339.0;
     s1+=3561.0;
    } else {
     s0+=207.0;
     s1+=160.0;
    }
   }
  }
 }
} else {
 if(i12<1.010017991065979){
  if(i6<-2.7551410312298685e-05){
   if(i1<0.08465713262557983){
    if(i55<0.003366708755493164){
     s0+=160.0;
     s1+=376.0;
    } else {
     s0+=227.0;
     s1+=27.0;
    }
   } else {
    if(i2<0.16151419281959534){
     s0+=187.0;
     s1+=711.0;
    } else {
     s0+=32.0;
     s1+=1571.0;
    }
   }
  } else {
   if(i21<1.0035322904586792){
    if(i20<0.005755414720624685){
     s0+=1333.0;
     s1+=208.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i1<0.07865568995475769){
     s0+=8.0;
    } else {
     s0+=7.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i2<0.0638778805732727){
   if(i24<1.0066436529159546){
    s1+=29.0;
   } else {
    if(i18<1.007195234298706){
     s0+=56.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i7<5.066394805908203e-06){
    if(i6<-2.5080182240344584e-05){
     s1+=58.0;
    } else {
     s0+=27.0;
     s1+=2.0;
    }
   } else {
    if(i11<0.0005501508712768555){
     s0+=13.0;
     s1+=91.0;
    } else {
     s0+=5.0;
     s1+=7624.0;
    }
   }
  }
 }
}
if(i5<0.0723993182182312){
 if(i16<1.0070574283599854){
  if(i7<4.0471553802490234e-05){
   if(i60<0.049149513244628906){
    if(i0<0.08413907885551453){
     s0+=56702.0;
     s1+=516.0;
    } else {
     s0+=16.0;
     s1+=80.0;
    }
   } else {
    if(i3<0.998154878616333){
     s0+=7389.0;
     s1+=396.0;
    } else {
     s0+=2501.0;
     s1+=972.0;
    }
   }
  } else {
   if(i3<1.0013692378997803){
    if(i52<-0.008476674556732178){
     s1+=4.0;
    } else {
     s0+=254.0;
     s1+=2.0;
    }
   } else {
    if(i20<0.0019190263701602817){
     s0+=21.0;
    } else {
     s0+=88.0;
     s1+=796.0;
    }
   }
  }
 } else {
  if(i0<0.07338419556617737){
   if(i34<1.0778207778930664){
    if(i35<1.0558756589889526){
     s0+=74.0;
    } else {
     s0+=27.0;
     s1+=228.0;
    }
   } else {
    if(i6<-6.004475289955735e-05){
     s0+=59.0;
     s1+=150.0;
    } else {
     s0+=1919.0;
     s1+=84.0;
    }
   }
  } else {
   if(i2<0.08300349116325378){
    if(i44<0.04192224144935608){
     s0+=13.0;
     s1+=194.0;
    } else {
     s0+=72.0;
     s1+=13.0;
    }
   } else {
    if(i6<-1.869970583356917e-05){
     s0+=5.0;
     s1+=1085.0;
    } else {
     s0+=12.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i20<0.004691104404628277){
  if(i6<-1.3935436072642915e-05){
   if(i58<0.005753517150878906){
    if(i19<1.0468668937683105){
     s0+=35.0;
     s1+=2.0;
    } else {
     s0+=205.0;
     s1+=1222.0;
    }
   } else {
    if(i0<0.13517624139785767){
     s0+=243.0;
     s1+=30.0;
    } else {
     s0+=114.0;
     s1+=215.0;
    }
   }
  } else {
   if(i58<-0.00427737832069397){
    if(i54<-0.00014153122901916504){
     s0+=58.0;
    } else {
     s0+=22.0;
     s1+=90.0;
    }
   } else {
    if(i42<0.03847845643758774){
     s0+=515.0;
     s1+=19.0;
    } else {
     s0+=448.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i12<0.9989854097366333){
   if(i0<0.10912185907363892){
    if(i48<0.011078506708145142){
     s0+=42.0;
     s1+=215.0;
    } else {
     s0+=195.0;
     s1+=8.0;
    }
   } else {
    if(i65<5.292310379445553e-05){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=1501.0;
    }
   }
  } else {
   if(i50<0.9988002777099609){
    if(i73<0.9982972145080566){
     s1+=4.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i13<-0.000620424747467041){
     s0+=3.0;
    } else {
     s0+=24.0;
     s1+=9121.0;
    }
   }
  }
 }
}
if(i14<1.0066354274749756){
 if(i6<-5.75907361053396e-05){
  if(i9<1.0393353700637817){
   if(i5<0.07411748170852661){
    if(i17<1.0017223358154297){
     s0+=1086.0;
     s1+=34.0;
    } else {
     s0+=167.0;
     s1+=157.0;
    }
   } else {
    if(i9<1.0377763509750366){
     s0+=1.0;
     s1+=169.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   }
  } else {
   if(i42<0.0708601325750351){
    if(i11<-0.0010265111923217773){
     s0+=218.0;
     s1+=47.0;
    } else {
     s0+=40.0;
     s1+=322.0;
    }
   } else {
    if(i5<0.05264270305633545){
     s0+=134.0;
     s1+=174.0;
    } else {
     s0+=51.0;
     s1+=1799.0;
    }
   }
  }
 } else {
  if(i2<0.08225265145301819){
   if(i51<0.007569841109216213){
    if(i42<0.026191672310233116){
     s0+=55554.0;
     s1+=437.0;
    } else {
     s0+=7776.0;
     s1+=669.0;
    }
   } else {
    if(i30<1.0850647687911987){
     s0+=901.0;
    } else {
     s0+=1852.0;
     s1+=629.0;
    }
   }
  } else {
   if(i50<0.9993038177490234){
    if(i72<0.9994288086891174){
     s0+=595.0;
     s1+=10.0;
    } else {
     s0+=24.0;
     s1+=14.0;
    }
   } else {
    if(i25<0.06048378348350525){
     s0+=50.0;
     s1+=758.0;
    } else {
     s0+=703.0;
     s1+=822.0;
    }
   }
  }
 }
} else {
 if(i0<0.06572476029396057){
  if(i22<0.00023442506790161133){
   if(i66<0.0006392002105712891){
    if(i35<1.0778207778930664){
     s0+=6.0;
     s1+=65.0;
    } else {
     s0+=1303.0;
     s1+=62.0;
    }
   } else {
    if(i49<0.0016963633242994547){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=89.0;
    }
   }
  } else {
   s1+=101.0;
  }
 } else {
  if(i3<1.001833200454712){
   if(i19<1.1492650508880615){
    if(i35<1.1411950588226318){
     s0+=43.0;
     s1+=637.0;
    } else {
     s0+=113.0;
     s1+=188.0;
    }
   } else {
    if(i2<0.2151414453983307){
     s0+=414.0;
     s1+=33.0;
    } else {
     s0+=111.0;
     s1+=396.0;
    }
   }
  } else {
   if(i6<-4.349312075646594e-05){
    if(i12<1.0073598623275757){
     s0+=55.0;
     s1+=574.0;
    } else {
     s0+=2.0;
     s1+=8664.0;
    }
   } else {
    if(i46<0.0031970152631402016){
     s0+=9.0;
     s1+=121.0;
    } else {
     s0+=40.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i21<1.0030670166015625){
  if(i65<0.0002806496631819755){
   if(i23<1.0095653533935547){
    if(i10<1.0108033418655396){
     s0+=55666.0;
     s1+=567.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i35<1.1539469957351685){
     s0+=68.0;
     s1+=174.0;
    } else {
     s0+=170.0;
     s1+=8.0;
    }
   }
  } else {
   if(i35<1.1842045783996582){
    if(i6<4.552128302748315e-06){
     s0+=577.0;
     s1+=901.0;
    } else {
     s0+=1527.0;
     s1+=107.0;
    }
   } else {
    if(i17<1.0018521547317505){
     s0+=6231.0;
     s1+=92.0;
    } else {
     s0+=169.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i15<2.0444393157958984e-05){
   if(i0<0.06644099950790405){
    if(i34<1.075858235359192){
     s0+=26.0;
     s1+=22.0;
    } else {
     s0+=554.0;
     s1+=16.0;
    }
   } else {
    if(i70<2.2908427126822062e-05){
     s0+=2.0;
     s1+=114.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i11<-0.002453148365020752){
    if(i49<0.0066942013800144196){
     s0+=128.0;
     s1+=1.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i46<0.00025648457813076675){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=605.0;
    }
   }
  }
 }
} else {
 if(i18<1.0014185905456543){
  if(i31<0.0250958651304245){
   if(i6<-1.8428669136483222e-05){
    if(i2<0.09733211994171143){
     s0+=1094.0;
     s1+=471.0;
    } else {
     s0+=240.0;
     s1+=749.0;
    }
   } else {
    if(i56<3.2165797165362164e-05){
     s0+=2086.0;
     s1+=72.0;
    } else {
     s0+=1241.0;
     s1+=346.0;
    }
   }
  } else {
   if(i4<-0.0006237924098968506){
    if(i37<0.011041040532290936){
     s0+=360.0;
     s1+=36.0;
    } else {
     s0+=40.0;
     s1+=108.0;
    }
   } else {
    if(i28<0.016867727041244507){
     s0+=80.0;
     s1+=48.0;
    } else {
     s0+=101.0;
     s1+=2184.0;
    }
   }
  }
 } else {
  if(i1<0.06947007775306702){
   if(i40<-1.3745281648880336e-05){
    if(i34<1.2160736322402954){
     s0+=9.0;
     s1+=495.0;
    } else {
     s0+=23.0;
     s1+=68.0;
    }
   } else {
    if(i41<1.158913493156433){
     s0+=50.0;
     s1+=64.0;
    } else {
     s0+=329.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<0.09510040283203125){
    if(i25<0.05515250563621521){
     s0+=3.0;
     s1+=304.0;
    } else {
     s0+=97.0;
     s1+=78.0;
    }
   } else {
    if(i11<0.001422286033630371){
     s0+=109.0;
     s1+=1893.0;
    } else {
     s1+=7564.0;
    }
   }
  }
 }
}
if(i2<0.08408460021018982){
 if(i51<0.008619355969130993){
  if(i4<0.0007212162017822266){
   if(i10<1.0080137252807617){
    if(i68<0.0015397097449749708){
     s0+=61605.0;
     s1+=793.0;
    } else {
     s0+=4251.0;
     s1+=476.0;
    }
   } else {
    if(i59<-0.0003347930032759905){
     s0+=416.0;
     s1+=27.0;
    } else {
     s0+=118.0;
     s1+=178.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i37<0.0003178208717145026){
     s0+=3.0;
    } else {
     s1+=318.0;
    }
   } else {
    if(i23<1.0033947229385376){
     s0+=46.0;
     s1+=47.0;
    } else {
     s0+=123.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i3<1.0013859272003174){
   if(i30<1.0840110778808594){
    s0+=534.0;
   } else {
    if(i46<0.00215050857514143){
     s0+=461.0;
     s1+=401.0;
    } else {
     s0+=1431.0;
     s1+=206.0;
    }
   }
  } else {
   if(i58<0.00473707914352417){
    if(i48<0.002671539783477783){
     s0+=32.0;
     s1+=580.0;
    } else {
     s0+=14.0;
     s1+=21.0;
    }
   } else {
    if(i20<0.0068688783794641495){
     s0+=71.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i7<2.9385089874267578e-05){
  if(i59<-7.182182889664546e-05){
   if(i19<1.0486375093460083){
    if(i7<-5.5164098739624023e-05){
     s0+=152.0;
    } else {
     s0+=19.0;
     s1+=15.0;
    }
   } else {
    if(i13<-0.00047576427459716797){
     s0+=213.0;
     s1+=15.0;
    } else {
     s0+=640.0;
     s1+=2733.0;
    }
   }
  } else {
   if(i4<-0.0008013248443603516){
    if(i54<-2.8252601623535156e-05){
     s0+=297.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=13.0;
    }
   } else {
    if(i63<0.003662973642349243){
     s0+=57.0;
     s1+=206.0;
    } else {
     s0+=362.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i11<-0.0006331801414489746){
   if(i8<1.1191260814666748){
    if(i63<0.004277557134628296){
     s0+=19.0;
     s1+=178.0;
    } else {
     s0+=85.0;
     s1+=50.0;
    }
   } else {
    if(i13<0.0005014538764953613){
     s0+=19.0;
     s1+=27.0;
    } else {
     s0+=1.0;
     s1+=476.0;
    }
   }
  } else {
   if(i6<-4.317488128435798e-05){
    if(i73<1.000882863998413){
     s0+=7.0;
     s1+=9390.0;
    } else {
     s0+=16.0;
     s1+=753.0;
    }
   } else {
    if(i22<0.00017780065536499023){
     s0+=23.0;
     s1+=176.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i2<0.08244869112968445){
  if(i16<1.0079245567321777){
   if(i48<-0.005415022373199463){
    if(i45<0.0003953051345888525){
     s0+=880.0;
     s1+=2.0;
    } else {
     s0+=1529.0;
     s1+=567.0;
    }
   } else {
    if(i3<1.002955675125122){
     s0+=61535.0;
     s1+=668.0;
    } else {
     s0+=21.0;
     s1+=58.0;
    }
   }
  } else {
   if(i40<-1.2326847354415804e-05){
    if(i30<1.2392117977142334){
     s1+=164.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i35<1.1008371114730835){
     s0+=66.0;
     s1+=46.0;
    } else {
     s0+=214.0;
    }
   }
  }
 } else {
  if(i35<1.0679112672805786){
   if(i74<2.7244528610026464e-05){
    if(i47<1.0001344680786133){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=275.0;
   }
  } else {
   if(i13<-0.0003612935543060303){
    if(i1<0.09698978066444397){
     s0+=151.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i19<1.0452029705047607){
     s0+=53.0;
     s1+=24.0;
    } else {
     s0+=105.0;
     s1+=993.0;
    }
   }
  }
 }
} else {
 if(i3<1.002012014389038){
  if(i31<0.02370629459619522){
   if(i1<0.07931685447692871){
    if(i18<0.9962859153747559){
     s0+=1826.0;
     s1+=106.0;
    } else {
     s0+=2358.0;
     s1+=507.0;
    }
   } else {
    if(i6<-1.3797138308291323e-05){
     s0+=423.0;
     s1+=972.0;
    } else {
     s0+=600.0;
     s1+=150.0;
    }
   }
  } else {
   if(i20<0.00366222788579762){
    if(i43<0.0027694718446582556){
     s0+=109.0;
     s1+=62.0;
    } else {
     s0+=206.0;
     s1+=10.0;
    }
   } else {
    if(i0<0.08026868104934692){
     s0+=309.0;
     s1+=145.0;
    } else {
     s0+=122.0;
     s1+=1544.0;
    }
   }
  }
 } else {
  if(i20<0.002409829758107662){
   if(i56<-2.9777607778669335e-05){
    s1+=186.0;
   } else {
    if(i35<1.1386182308197021){
     s1+=20.0;
    } else {
     s0+=168.0;
     s1+=10.0;
    }
   }
  } else {
   if(i11<1.1324882507324219e-05){
    if(i1<0.13081911206245422){
     s0+=163.0;
     s1+=405.0;
    } else {
     s0+=10.0;
     s1+=710.0;
    }
   } else {
    if(i6<-3.621671930886805e-05){
     s0+=10.0;
     s1+=9640.0;
    } else {
     s0+=11.0;
     s1+=66.0;
    }
   }
  }
 }
}
if(i12<1.0055713653564453){
 if(i2<0.08355346322059631){
  if(i8<1.042891263961792){
   if(i17<1.001929521560669){
    if(i34<1.0557184219360352){
     s0+=41926.0;
     s1+=1.0;
    } else {
     s0+=18395.0;
     s1+=673.0;
    }
   } else {
    if(i71<0.06955586373806){
     s0+=37.0;
     s1+=85.0;
    } else {
     s0+=167.0;
     s1+=5.0;
    }
   }
  } else {
   if(i28<0.016969501972198486){
    if(i65<0.000341444683726877){
     s0+=4980.0;
     s1+=192.0;
    } else {
     s0+=896.0;
     s1+=249.0;
    }
   } else {
    if(i34<1.1083450317382812){
     s0+=329.0;
     s1+=666.0;
    } else {
     s0+=1628.0;
     s1+=508.0;
    }
   }
  }
 } else {
  if(i15<-1.4722347259521484e-05){
   if(i54<-0.00014004111289978027){
    if(i3<0.9970239400863647){
     s0+=608.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i65<0.00021955868578515947){
     s0+=27.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   }
  } else {
   if(i39<0.04651486873626709){
    if(i3<0.9954173564910889){
     s0+=29.0;
     s1+=36.0;
    } else {
     s0+=63.0;
     s1+=2698.0;
    }
   } else {
    if(i25<0.16065189242362976){
     s0+=1036.0;
     s1+=915.0;
    } else {
     s0+=92.0;
     s1+=691.0;
    }
   }
  }
 }
} else {
 if(i3<1.0026724338531494){
  if(i47<0.9998725652694702){
   if(i10<1.0107742547988892){
    if(i17<0.998634934425354){
     s0+=28.0;
    } else {
     s0+=7.0;
     s1+=63.0;
    }
   } else {
    s1+=673.0;
   }
  } else {
   if(i1<0.10536804795265198){
    if(i40<-1.3030383342993446e-05){
     s0+=34.0;
     s1+=55.0;
    } else {
     s0+=621.0;
     s1+=32.0;
    }
   } else {
    if(i74<6.735111674061045e-05){
     s0+=65.0;
    } else {
     s0+=8.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i22<0.0002142786979675293){
   if(i2<0.057901740074157715){
    if(i24<0.9991536140441895){
     s1+=28.0;
    } else {
     s0+=103.0;
     s1+=25.0;
    }
   } else {
    if(i0<0.06905743479728699){
     s0+=24.0;
     s1+=55.0;
    } else {
     s0+=34.0;
     s1+=1043.0;
    }
   }
  } else {
   if(i19<1.0481926202774048){
    s0+=7.0;
   } else {
    if(i3<1.0028586387634277){
     s0+=3.0;
     s1+=54.0;
    } else {
     s1+=8158.0;
    }
   }
  }
 }
}
if(i1<0.07710838317871094){
 if(i12<1.0060343742370605){
  if(i1<0.06312254071235657){
   if(i48<-0.0058526694774627686){
    if(i4<0.0002968907356262207){
     s0+=3603.0;
     s1+=578.0;
    } else {
     s0+=46.0;
     s1+=259.0;
    }
   } else {
    if(i19<1.0475037097930908){
     s0+=52622.0;
     s1+=166.0;
    } else {
     s0+=9553.0;
     s1+=702.0;
    }
   }
  } else {
   if(i24<0.980872392654419){
    if(i61<-0.025171812623739243){
     s0+=18.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=174.0;
    }
   } else {
    if(i64<0.02098226547241211){
     s0+=359.0;
     s1+=351.0;
    } else {
     s0+=2250.0;
     s1+=122.0;
    }
   }
  }
 } else {
  if(i41<1.1653079986572266){
   s1+=655.0;
  } else {
   if(i36<0.9972199201583862){
    if(i33<0.0022535345051437616){
     s0+=23.0;
     s1+=1.0;
    } else {
     s1+=104.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=149.0;
     s1+=93.0;
    } else {
     s0+=450.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i22<5.632638931274414e-05){
  if(i13<-0.00039127469062805176){
   if(i59<-0.00167909637093544){
    s1+=2.0;
   } else {
    if(i69<-2.386763526374125e-06){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=450.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.02388116344809532){
    if(i67<-0.0036635075230151415){
     s0+=796.0;
     s1+=187.0;
    } else {
     s0+=185.0;
     s1+=524.0;
    }
   } else {
    if(i39<0.04735064506530762){
     s0+=23.0;
     s1+=1966.0;
    } else {
     s0+=332.0;
     s1+=1244.0;
    }
   }
  }
 } else {
  if(i73<0.9966715574264526){
   s0+=25.0;
  } else {
   if(i20<0.0012526039499789476){
    if(i6<-4.5723016228294e-05){
     s1+=66.0;
    } else {
     s0+=80.0;
     s1+=3.0;
    }
   } else {
    if(i4<-0.000272601842880249){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=54.0;
     s1+=9943.0;
    }
   }
  }
 }
}
if(i23<1.0099639892578125){
 if(i1<0.08137065172195435){
  if(i17<1.001955509185791){
   if(i4<0.0005979835987091064){
    if(i51<0.007341477554291487){
     s0+=64215.0;
     s1+=1101.0;
    } else {
     s0+=3270.0;
     s1+=652.0;
    }
   } else {
    if(i20<0.0036920150741934776){
     s0+=113.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=116.0;
    }
   }
  } else {
   if(i43<0.006818508729338646){
    if(i66<0.0008480169344693422){
     s0+=22.0;
     s1+=517.0;
    } else {
     s0+=90.0;
     s1+=85.0;
    }
   } else {
    if(i19<1.1878235340118408){
     s0+=379.0;
     s1+=37.0;
    } else {
     s0+=44.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i6<-6.595450940949377e-06){
   if(i55<0.00017559528350830078){
    if(i39<0.06034466624259949){
     s0+=13.0;
     s1+=2108.0;
    } else {
     s0+=53.0;
     s1+=298.0;
    }
   } else {
    if(i28<0.022098001092672348){
     s0+=172.0;
     s1+=161.0;
    } else {
     s0+=85.0;
     s1+=744.0;
    }
   }
  } else {
   if(i44<0.05387192964553833){
    if(i4<-0.000861436128616333){
     s0+=61.0;
    } else {
     s0+=8.0;
     s1+=83.0;
    }
   } else {
    if(i68<0.011442175135016441){
     s0+=413.0;
     s1+=13.0;
    } else {
     s0+=16.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i10<1.0158941745758057){
  if(i0<0.07550209760665894){
   if(i34<1.0778207778930664){
    if(i6<-2.2984724637353793e-05){
     s1+=161.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i11<0.0015520453453063965){
     s0+=1163.0;
     s1+=81.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i18<1.0007951259613037){
    if(i66<0.0005864037666469812){
     s0+=613.0;
     s1+=338.0;
    } else {
     s0+=69.0;
     s1+=594.0;
    }
   } else {
    if(i37<0.0016175687778741121){
     s1+=572.0;
    } else {
     s0+=107.0;
     s1+=764.0;
    }
   }
  }
 } else {
  if(i7<6.097555160522461e-05){
   if(i40<-1.492246246925788e-05){
    if(i66<0.0001734326360747218){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=624.0;
    }
   } else {
    if(i50<1.0001018047332764){
     s0+=49.0;
     s1+=670.0;
    } else {
     s0+=241.0;
     s1+=103.0;
    }
   }
  } else {
   if(i2<0.05796748399734497){
    if(i16<1.0141971111297607){
     s1+=12.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=6956.0;
   }
  }
 }
}
if(i5<0.07114002108573914){
 if(i8<1.0452277660369873){
  if(i4<0.0005986690521240234){
   if(i1<0.07663029432296753){
    if(i55<-0.001086801290512085){
     s0+=5024.0;
     s1+=514.0;
    } else {
     s0+=56562.0;
     s1+=288.0;
    }
   } else {
    if(i7<-4.795193672180176e-05){
     s0+=71.0;
    } else {
     s0+=25.0;
     s1+=100.0;
    }
   }
  } else {
   if(i74<0.00011792023724410683){
    if(i20<0.0018603334901854396){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=141.0;
    }
   } else {
    if(i45<0.0029215440154075623){
     s0+=116.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i1<0.07365468144416809){
   if(i41<1.1037919521331787){
    if(i41<1.081458568572998){
     s0+=1143.0;
     s1+=88.0;
    } else {
     s0+=562.0;
     s1+=1241.0;
    }
   } else {
    if(i7<6.23464584350586e-05){
     s0+=5276.0;
     s1+=369.0;
    } else {
     s0+=61.0;
     s1+=312.0;
    }
   }
  } else {
   if(i45<0.000565188645850867){
    s0+=28.0;
   } else {
    if(i52<0.003958225250244141){
     s0+=28.0;
     s1+=1485.0;
    } else {
     s0+=29.0;
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i6<-2.185610355809331e-05){
  if(i34<1.3017840385437012){
   if(i22<-9.080767631530762e-05){
    if(i47<1.0006054639816284){
     s0+=331.0;
     s1+=855.0;
    } else {
     s0+=55.0;
     s1+=9.0;
    }
   } else {
    if(i46<0.00022608785366173834){
     s0+=15.0;
     s1+=4.0;
    } else {
     s0+=206.0;
     s1+=4312.0;
    }
   }
  } else {
   if(i17<0.9982390403747559){
    if(i60<0.8093477487564087){
     s0+=32.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i18<0.9871155023574829){
     s0+=20.0;
     s1+=63.0;
    } else {
     s0+=7.0;
     s1+=6800.0;
    }
   }
  }
 } else {
  if(i13<-0.00040084123611450195){
   if(i52<-0.008492052555084229){
    if(i48<-0.03848487138748169){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=441.0;
   }
  } else {
   if(i39<0.04216885566711426){
    if(i0<0.09085133671760559){
     s0+=52.0;
     s1+=43.0;
    } else {
     s0+=8.0;
     s1+=186.0;
    }
   } else {
    if(i20<0.003334206994622946){
     s0+=906.0;
     s1+=186.0;
    } else {
     s0+=57.0;
     s1+=145.0;
    }
   }
  }
 }
}
if(i2<0.08522948622703552){
 if(i11<0.001141965389251709){
  if(i52<-0.0019263029098510742){
   if(i62<0.1566745638847351){
    if(i15<1.710653305053711e-05){
     s0+=3046.0;
     s1+=625.0;
    } else {
     s0+=205.0;
     s1+=341.0;
    }
   } else {
    if(i9<1.0196778774261475){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=99.0;
    }
   }
  } else {
   if(i3<1.002474308013916){
    if(i28<0.015109440311789513){
     s0+=56162.0;
     s1+=430.0;
    } else {
     s0+=9672.0;
     s1+=953.0;
    }
   } else {
    if(i45<0.002015305683016777){
     s0+=5.0;
     s1+=176.0;
    } else {
     s0+=143.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i41<1.2388319969177246){
   s1+=445.0;
  } else {
   if(i33<0.005400043912231922){
    s0+=131.0;
   } else {
    s1+=71.0;
   }
  }
 }
} else {
 if(i54<-0.00013768672943115234){
  if(i17<0.9989203214645386){
   if(i6<-4.225862357998267e-05){
    if(i5<0.08687323331832886){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=23.0;
    }
   } else {
    if(i50<0.9993106126785278){
     s0+=659.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=106.0;
  }
 } else {
  if(i20<0.0018970044329762459){
   if(i52<0.004330098628997803){
    if(i30<1.089235782623291){
     s0+=54.0;
    } else {
     s0+=131.0;
     s1+=332.0;
    }
   } else {
    if(i70<1.383387188980123e-05){
     s0+=396.0;
     s1+=17.0;
    } else {
     s0+=9.0;
     s1+=33.0;
    }
   }
  } else {
   if(i59<-0.0001214449293911457){
    if(i31<0.022573545575141907){
     s0+=220.0;
     s1+=2817.0;
    } else {
     s0+=68.0;
     s1+=9190.0;
    }
   } else {
    if(i0<0.12575164437294006){
     s0+=312.0;
     s1+=460.0;
    } else {
     s0+=37.0;
     s1+=800.0;
    }
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i8<1.0457967519760132){
  if(i68<0.0016704503213986754){
   if(i57<0.0006822012364864349){
    if(i4<0.0009466409683227539){
     s0+=55249.0;
     s1+=254.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i12<0.9901200532913208){
     s0+=2561.0;
     s1+=9.0;
    } else {
     s0+=692.0;
     s1+=198.0;
    }
   }
  } else {
   if(i18<0.9938097596168518){
    if(i0<0.057415008544921875){
     s0+=1975.0;
     s1+=23.0;
    } else {
     s0+=66.0;
     s1+=11.0;
    }
   } else {
    if(i6<1.3362754543777555e-05){
     s0+=965.0;
     s1+=382.0;
    } else {
     s0+=514.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i7<3.4749507904052734e-05){
   if(i17<0.9985833168029785){
    if(i59<-0.0006450697546824813){
     s0+=47.0;
     s1+=4.0;
    } else {
     s0+=1612.0;
     s1+=9.0;
    }
   } else {
    if(i47<0.9998080730438232){
     s0+=1087.0;
     s1+=560.0;
    } else {
     s0+=4146.0;
     s1+=544.0;
    }
   }
  } else {
   if(i55<0.0017826259136199951){
    if(i35<1.2451565265655518){
     s0+=16.0;
     s1+=520.0;
    } else {
     s0+=135.0;
     s1+=243.0;
    }
   } else {
    if(i34<1.1411938667297363){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=122.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i43<0.00045606427011080086){
  if(i12<1.0029873847961426){
   if(i21<1.0006990432739258){
    if(i29<0.0002665882930159569){
     s0+=71.0;
     s1+=6.0;
    } else {
     s0+=363.0;
     s1+=3.0;
    }
   } else {
    if(i34<1.054610252380371){
     s0+=6.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i5<0.06708475947380066){
    s0+=3.0;
   } else {
    s1+=17.0;
   }
  }
 } else {
  if(i17<0.9985250234603882){
   if(i40<-1.0080972970172297e-05){
    if(i69<-5.646490990329767e-06){
     s0+=6.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i56<0.0001847466337494552){
     s0+=335.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<3.641843795776367e-05){
    if(i44<0.05752962827682495){
     s0+=69.0;
     s1+=2003.0;
    } else {
     s0+=967.0;
     s1+=1429.0;
    }
   } else {
    if(i56<8.014598279260099e-05){
     s0+=23.0;
     s1+=8188.0;
    } else {
     s0+=120.0;
     s1+=2616.0;
    }
   }
  }
 }
}
if(i6<-8.167394844349474e-05){
 if(i19<1.0590742826461792){
  if(i27<1.005410075187683){
   s0+=282.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i5<0.006862014532089233){
   if(i53<-0.08768293261528015){
    if(i70<3.992380516137928e-05){
     s0+=12.0;
     s1+=84.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i12<0.9954161643981934){
     s0+=314.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i2<0.08661609888076782){
    if(i53<0.023661136627197266){
     s0+=33.0;
     s1+=486.0;
    } else {
     s0+=105.0;
     s1+=7.0;
    }
   } else {
    if(i47<1.0007508993148804){
     s0+=68.0;
     s1+=10337.0;
    } else {
     s0+=13.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i26<1.039496898651123){
  if(i5<0.07294827699661255){
   if(i19<1.0485899448394775){
    if(i38<0.00027314238832332194){
     s0+=47822.0;
     s1+=100.0;
    } else {
     s0+=7137.0;
     s1+=291.0;
    }
   } else {
    if(i18<0.9944950342178345){
     s0+=4561.0;
     s1+=153.0;
    } else {
     s0+=6095.0;
     s1+=1939.0;
    }
   }
  } else {
   if(i34<1.0607655048370361){
    if(i17<1.0005910396575928){
     s0+=107.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i1<0.08433133363723755){
     s0+=120.0;
     s1+=128.0;
    } else {
     s0+=18.0;
     s1+=529.0;
    }
   }
  }
 } else {
  if(i59<-0.00012872813385911286){
   if(i11<0.0007697641849517822){
    if(i28<0.022301506251096725){
     s0+=1603.0;
     s1+=477.0;
    } else {
     s0+=507.0;
     s1+=1429.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s1+=644.0;
    } else {
     s0+=84.0;
     s1+=55.0;
    }
   }
  } else {
   if(i21<1.0011354684829712){
    if(i34<1.5754120349884033){
     s0+=1724.0;
     s1+=154.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i56<7.410925900330767e-05){
     s0+=88.0;
     s1+=244.0;
    } else {
     s0+=289.0;
     s1+=118.0;
    }
   }
  }
 }
}
if(i7<3.68952751159668e-05){
 if(i27<1.0081526041030884){
  if(i0<0.08572125434875488){
   if(i8<1.0412344932556152){
    if(i29<0.0002762141521088779){
     s0+=50964.0;
     s1+=227.0;
    } else {
     s0+=8496.0;
     s1+=368.0;
    }
   } else {
    if(i65<0.00015861651627346873){
     s0+=4178.0;
     s1+=289.0;
    } else {
     s0+=3123.0;
     s1+=952.0;
    }
   }
  } else {
   if(i13<-0.00041115283966064453){
    if(i12<0.9812247157096863){
     s0+=59.0;
     s1+=12.0;
    } else {
     s0+=219.0;
     s1+=1.0;
    }
   } else {
    if(i40<1.3248428558654268e-06){
     s0+=430.0;
     s1+=1622.0;
    } else {
     s0+=102.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i28<0.026264484971761703){
   if(i30<1.1039612293243408){
    if(i45<0.0007364090997725725){
     s0+=388.0;
     s1+=284.0;
    } else {
     s0+=4.0;
     s1+=463.0;
    }
   } else {
    if(i2<0.11186575889587402){
     s0+=1636.0;
     s1+=57.0;
    } else {
     s0+=156.0;
     s1+=213.0;
    }
   }
  } else {
   if(i15<-1.8835067749023438e-05){
    s0+=111.0;
   } else {
    if(i31<0.012460155412554741){
     s0+=117.0;
     s1+=85.0;
    } else {
     s0+=102.0;
     s1+=1017.0;
    }
   }
  }
 }
} else {
 if(i35<1.0624027252197266){
  s0+=337.0;
 } else {
  if(i4<0.0009589195251464844){
   if(i2<0.07054570317268372){
    if(i35<1.2160736322402954){
     s0+=4.0;
     s1+=148.0;
    } else {
     s0+=206.0;
     s1+=55.0;
    }
   } else {
    if(i46<0.01165226474404335){
     s0+=119.0;
     s1+=876.0;
    } else {
     s0+=2.0;
     s1+=582.0;
    }
   }
  } else {
   if(i3<1.0039563179016113){
    if(i40<-2.6404524760437198e-05){
     s0+=55.0;
     s1+=183.0;
    } else {
     s1+=156.0;
    }
   } else {
    if(i74<7.902611287136097e-06){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=56.0;
     s1+=9735.0;
    }
   }
  }
 }
}
if(i3<1.0024573802947998){
 if(i0<0.08523273468017578){
  if(i58<-0.002019822597503662){
   if(i1<0.055364370346069336){
    if(i3<0.9965777397155762){
     s0+=3369.0;
     s1+=68.0;
    } else {
     s0+=2602.0;
     s1+=691.0;
    }
   } else {
    if(i53<0.03488847613334656){
     s0+=74.0;
     s1+=318.0;
    } else {
     s0+=273.0;
     s1+=12.0;
    }
   }
  } else {
   if(i51<0.00894889235496521){
    if(i16<1.0067417621612549){
     s0+=60282.0;
     s1+=554.0;
    } else {
     s0+=1820.0;
     s1+=305.0;
    }
   } else {
    if(i35<1.1037919521331787){
     s0+=280.0;
     s1+=192.0;
    } else {
     s0+=769.0;
     s1+=58.0;
    }
   }
  }
 } else {
  if(i39<0.05411982536315918){
   if(i59<3.588914478314109e-05){
    if(i34<1.0545824766159058){
     s0+=22.0;
    } else {
     s0+=105.0;
     s1+=2337.0;
    }
   } else {
    if(i40<-4.451655058801407e-06){
     s0+=13.0;
     s1+=111.0;
    } else {
     s0+=67.0;
     s1+=2.0;
    }
   }
  } else {
   if(i6<-2.1477560949278995e-05){
    if(i2<0.12339895963668823){
     s0+=226.0;
     s1+=62.0;
    } else {
     s0+=90.0;
     s1+=883.0;
    }
   } else {
    if(i47<1.0000439882278442){
     s0+=818.0;
     s1+=109.0;
    } else {
     s0+=62.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i1<0.05846378207206726){
  if(i66<0.0004629202885553241){
   if(i13<0.0010165572166442871){
    if(i37<0.0008339544292539358){
     s0+=12.0;
     s1+=40.0;
    } else {
     s0+=189.0;
     s1+=2.0;
    }
   } else {
    if(i74<0.00015987406368367374){
     s0+=2.0;
     s1+=96.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i11<-0.0005280375480651855){
    if(i31<0.01406236831098795){
     s0+=33.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=58.0;
    }
   } else {
    s1+=351.0;
   }
  }
 } else {
  if(i1<0.12236613035202026){
   if(i34<1.217149257659912){
    if(i30<1.4901387691497803){
     s0+=10.0;
     s1+=1215.0;
    } else {
     s0+=11.0;
     s1+=32.0;
    }
   } else {
    if(i6<-0.00010117846250068396){
     s0+=17.0;
     s1+=251.0;
    } else {
     s0+=91.0;
     s1+=30.0;
    }
   }
  } else {
   if(i11<0.0013996362686157227){
    if(i40<-1.1904152415809222e-05){
     s0+=12.0;
     s1+=1857.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    s1+=7267.0;
   }
  }
 }
}
if(i21<1.002597689628601){
 if(i10<1.010773777961731){
  if(i2<0.0824175775051117){
   if(i19<1.0451585054397583){
    if(i36<0.973898708820343){
     s0+=1148.0;
     s1+=41.0;
    } else {
     s0+=52307.0;
     s1+=143.0;
    }
   } else {
    if(i17<0.9989334344863892){
     s0+=4643.0;
     s1+=119.0;
    } else {
     s0+=9135.0;
     s1+=1563.0;
    }
   }
  } else {
   if(i3<0.996383786201477){
    if(i10<0.9437429904937744){
     s1+=13.0;
    } else {
     s0+=736.0;
     s1+=97.0;
    }
   } else {
    if(i64<0.03159111738204956){
     s0+=295.0;
     s1+=1396.0;
    } else {
     s0+=657.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i40<1.985709332075203e-06){
   if(i11<0.001430511474609375){
    if(i30<1.1039612293243408){
     s1+=304.0;
    } else {
     s0+=497.0;
     s1+=1118.0;
    }
   } else {
    s1+=1126.0;
   }
  } else {
   if(i73<1.0001832246780396){
    s0+=104.0;
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i4<0.00047135353088378906){
  if(i44<0.05892074108123779){
   if(i59<-0.0003607982653193176){
    if(i65<0.00027691409923136234){
     s0+=44.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=115.0;
    }
   } else {
    if(i30<1.2385294437408447){
     s0+=144.0;
     s1+=100.0;
    } else {
     s0+=937.0;
     s1+=66.0;
    }
   }
  } else {
   if(i28<0.019520025700330734){
    if(i33<0.007143043912947178){
     s0+=78.0;
     s1+=7.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i28<0.03056960366666317){
     s0+=19.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i14<1.0205937623977661){
   if(i40<-1.6004221834009513e-05){
    if(i11<-0.0008034110069274902){
     s0+=143.0;
     s1+=571.0;
    } else {
     s0+=19.0;
     s1+=3283.0;
    }
   } else {
    if(i0<0.06378582119941711){
     s0+=84.0;
     s1+=12.0;
    } else {
     s0+=37.0;
     s1+=230.0;
    }
   }
  } else {
   if(i4<0.0004923343658447266){
    s0+=2.0;
   } else {
    s1+=6198.0;
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i3<1.0024782419204712){
  if(i2<0.08414876461029053){
   if(i51<0.009048067033290863){
    if(i58<-0.0021001100540161133){
     s0+=4467.0;
     s1+=565.0;
    } else {
     s0+=61692.0;
     s1+=804.0;
    }
   } else {
    if(i35<1.1999231576919556){
     s0+=1003.0;
     s1+=490.0;
    } else {
     s0+=1330.0;
     s1+=201.0;
    }
   }
  } else {
   if(i17<0.9986392259597778){
    if(i54<-0.00011727213859558105){
     s0+=303.0;
    } else {
     s0+=15.0;
     s1+=11.0;
    }
   } else {
    if(i44<0.05132356286048889){
     s0+=23.0;
     s1+=730.0;
    } else {
     s0+=54.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i30<1.2392117977142334){
   if(i30<1.0757708549499512){
    s0+=5.0;
   } else {
    s1+=1207.0;
   }
  } else {
   if(i53<-0.025928586721420288){
    if(i31<0.012654950842261314){
     s0+=16.0;
     s1+=38.0;
    } else {
     s0+=12.0;
     s1+=456.0;
    }
   } else {
    if(i66<0.00046300020767375827){
     s0+=176.0;
     s1+=3.0;
    } else {
     s0+=31.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i3<1.0017297267913818){
  if(i37<0.010467883199453354){
   if(i59<-8.57014165376313e-05){
    if(i13<-0.0003857910633087158){
     s0+=272.0;
     s1+=15.0;
    } else {
     s0+=791.0;
     s1+=1644.0;
    }
   } else {
    if(i39<0.04342705011367798){
     s0+=23.0;
     s1+=140.0;
    } else {
     s0+=739.0;
     s1+=125.0;
    }
   }
  } else {
   if(i1<0.08587682247161865){
    if(i39<0.025123238563537598){
     s1+=10.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i74<6.153956928756088e-05){
     s0+=4.0;
     s1+=97.0;
    } else {
     s0+=1.0;
     s1+=621.0;
    }
   }
  }
 } else {
  if(i2<0.12576967477798462){
   if(i63<0.004130125045776367){
    if(i67<-0.008881541900336742){
     s0+=23.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=677.0;
    }
   } else {
    if(i3<1.0050725936889648){
     s0+=95.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   }
  } else {
   if(i1<0.16498062014579773){
    if(i67<-0.010194683447480202){
     s0+=30.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=918.0;
    }
   } else {
    s1+=8156.0;
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i7<3.844499588012695e-05){
  if(i5<0.07001450657844543){
   if(i29<0.0002987820189446211){
    if(i58<-0.004000872373580933){
     s0+=102.0;
     s1+=89.0;
    } else {
     s0+=55871.0;
     s1+=441.0;
    }
   } else {
    if(i41<1.1800893545150757){
     s0+=4054.0;
     s1+=1237.0;
    } else {
     s0+=7606.0;
     s1+=339.0;
    }
   }
  } else {
   if(i37<0.010505308397114277){
    if(i20<0.001674377592280507){
     s0+=665.0;
     s1+=83.0;
    } else {
     s0+=911.0;
     s1+=1066.0;
    }
   } else {
    if(i7<-6.395578384399414e-05){
     s0+=42.0;
     s1+=61.0;
    } else {
     s0+=7.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i17<0.9989444017410278){
   s0+=260.0;
  } else {
   if(i0<0.05841624736785889){
    if(i54<0.00018548965454101562){
     s0+=56.0;
     s1+=23.0;
    } else {
     s0+=87.0;
     s1+=214.0;
    }
   } else {
    if(i31<0.022060323506593704){
     s0+=110.0;
     s1+=493.0;
    } else {
     s1+=1651.0;
    }
   }
  }
 }
} else {
 if(i6<-4.329156217863783e-05){
  if(i0<0.05765557289123535){
   if(i40<-1.0441895938129164e-05){
    if(i18<0.9981498718261719){
     s0+=11.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=201.0;
    }
   } else {
    if(i11<0.0016233325004577637){
     s0+=36.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i17<0.9983482360839844){
    s0+=3.0;
   } else {
    if(i11<3.5822391510009766e-05){
     s0+=47.0;
     s1+=610.0;
    } else {
     s0+=4.0;
     s1+=9367.0;
    }
   }
  }
 } else {
  if(i2<0.09125509858131409){
   if(i33<0.001127699506469071){
    if(i38<0.0007341756718233228){
     s0+=14.0;
     s1+=101.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    if(i30<1.0950405597686768){
     s1+=14.0;
    } else {
     s0+=892.0;
     s1+=9.0;
    }
   }
  } else {
   if(i44<0.06097370386123657){
    if(i26<1.2105493545532227){
     s0+=7.0;
     s1+=408.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i66<0.00046313644270412624){
     s0+=299.0;
     s1+=184.0;
    } else {
     s0+=10.0;
     s1+=110.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i3<1.0024800300598145){
  if(i1<0.08296510577201843){
   if(i51<0.007862912490963936){
    if(i0<0.08429723978042603){
     s0+=63230.0;
     s1+=1047.0;
    } else {
     s0+=29.0;
     s1+=92.0;
    }
   } else {
    if(i18<0.9928879141807556){
     s0+=810.0;
     s1+=33.0;
    } else {
     s0+=789.0;
     s1+=350.0;
    }
   }
  } else {
   if(i43<0.0004220139526296407){
    if(i30<1.082350254058838){
     s0+=86.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i70<2.572114681242965e-05){
     s0+=27.0;
     s1+=521.0;
    } else {
     s0+=56.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i38<0.00019555987091735005){
   if(i41<1.1753523349761963){
    if(i11<0.0007307529449462891){
     s0+=5.0;
    } else {
     s1+=13.0;
    }
   } else {
    s0+=76.0;
   }
  } else {
   if(i40<-1.2556117326312233e-05){
    if(i43<0.01178186945617199){
     s0+=10.0;
     s1+=736.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i66<0.0005422630347311497){
     s0+=23.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i21<1.0013883113861084){
  if(i65<-8.260534377768636e-05){
   if(i37<0.009972946718335152){
    if(i35<1.1820628643035889){
     s0+=33.0;
     s1+=652.0;
    } else {
     s0+=324.0;
     s1+=122.0;
    }
   } else {
    s1+=558.0;
   }
  } else {
   if(i33<0.005979829467833042){
    if(i28<0.022370774298906326){
     s0+=3312.0;
     s1+=432.0;
    } else {
     s0+=971.0;
     s1+=826.0;
    }
   } else {
    if(i19<1.123558521270752){
     s0+=280.0;
     s1+=7.0;
    } else {
     s0+=53.0;
     s1+=955.0;
    }
   }
  }
 } else {
  if(i4<0.0005184412002563477){
   if(i5<0.10312998294830322){
    if(i43<0.001872302033007145){
     s0+=78.0;
     s1+=275.0;
    } else {
     s0+=443.0;
     s1+=98.0;
    }
   } else {
    if(i66<0.00020477236830629408){
     s0+=54.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=506.0;
    }
   }
  } else {
   if(i7<6.073713302612305e-05){
    if(i30<1.2392117977142334){
     s1+=401.0;
    } else {
     s0+=164.0;
     s1+=527.0;
    }
   } else {
    if(i32<0.9936565160751343){
     s0+=60.0;
     s1+=874.0;
    } else {
     s0+=18.0;
     s1+=8203.0;
    }
   }
  }
 }
}
if(i12<1.0059202909469604){
 if(i6<-6.900345033500344e-05){
  if(i27<0.9291689991950989){
   if(i3<1.0004088878631592){
    if(i2<0.030790269374847412){
     s0+=561.0;
     s1+=5.0;
    } else {
     s0+=36.0;
     s1+=36.0;
    }
   } else {
    if(i31<0.028877727687358856){
     s0+=12.0;
     s1+=1.0;
    } else {
     s1+=130.0;
    }
   }
  } else {
   if(i3<0.99994957447052){
    if(i2<0.08747544884681702){
     s0+=329.0;
     s1+=38.0;
    } else {
     s0+=22.0;
     s1+=230.0;
    }
   } else {
    if(i0<0.11691480875015259){
     s0+=233.0;
     s1+=453.0;
    } else {
     s0+=24.0;
     s1+=1581.0;
    }
   }
  }
 } else {
  if(i2<0.08219337463378906){
   if(i51<0.007574244402348995){
    if(i2<0.0663098692893982){
     s0+=60781.0;
     s1+=814.0;
    } else {
     s0+=3400.0;
     s1+=481.0;
    }
   } else {
    if(i17<0.9983351230621338){
     s0+=1029.0;
     s1+=5.0;
    } else {
     s0+=1975.0;
     s1+=713.0;
    }
   }
  } else {
   if(i50<0.9993095397949219){
    if(i43<0.0017544834408909082){
     s0+=661.0;
     s1+=2.0;
    } else {
     s0+=76.0;
     s1+=17.0;
    }
   } else {
    if(i44<0.05520617961883545){
     s0+=102.0;
     s1+=1426.0;
    } else {
     s0+=1047.0;
     s1+=964.0;
    }
   }
  }
 }
} else {
 if(i20<0.0022362954914569855){
  if(i30<1.1386182308197021){
   if(i30<1.089235782623291){
    s0+=2.0;
   } else {
    s1+=244.0;
   }
  } else {
   if(i10<1.0233423709869385){
    if(i3<1.004640817642212){
     s0+=660.0;
     s1+=10.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i56<-3.102129994658753e-05){
     s1+=87.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i69<6.131997452030191e-07){
   if(i74<7.669584738323465e-05){
    if(i11<0.0008079409599304199){
     s0+=65.0;
     s1+=137.0;
    } else {
     s0+=20.0;
     s1+=1775.0;
    }
   } else {
    if(i34<1.2252782583236694){
     s0+=25.0;
     s1+=1846.0;
    } else {
     s1+=6147.0;
    }
   }
  } else {
   if(i19<1.1292780637741089){
    s1+=1.0;
   } else {
    s0+=28.0;
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i5<0.06911459565162659){
  if(i4<0.0005970597267150879){
   if(i1<0.07551169395446777){
    if(i55<-0.0012702345848083496){
     s0+=4626.0;
     s1+=605.0;
    } else {
     s0+=59442.0;
     s1+=553.0;
    }
   } else {
    if(i18<0.993714451789856){
     s0+=90.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=205.0;
    }
   }
  } else {
   if(i40<-1.462851923861308e-05){
    if(i70<1.2885794603789691e-05){
     s1+=287.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.00038180703995749354){
     s0+=97.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i18<0.994747519493103){
   if(i2<0.10401716828346252){
    if(i44<0.03806447982788086){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=380.0;
     s1+=5.0;
    }
   } else {
    if(i3<0.9920331835746765){
     s0+=18.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i10<1.0046939849853516){
    if(i28<0.014486112631857395){
     s0+=250.0;
     s1+=61.0;
    } else {
     s0+=32.0;
     s1+=372.0;
    }
   } else {
    if(i13<-0.00034108757972717285){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=293.0;
    }
   }
  }
 }
} else {
 if(i20<0.004446921870112419){
  if(i12<1.0100009441375732){
   if(i6<-2.3955512006068602e-05){
    if(i46<0.000640616228338331){
     s0+=76.0;
     s1+=278.0;
    } else {
     s0+=925.0;
     s1+=467.0;
    }
   } else {
    if(i25<0.1378072202205658){
     s0+=3792.0;
     s1+=512.0;
    } else {
     s0+=279.0;
     s1+=151.0;
    }
   }
  } else {
   if(i70<-8.7472767518193e-07){
    if(i0<0.05337300896644592){
     s0+=4.0;
     s1+=17.0;
    } else {
     s1+=824.0;
    }
   } else {
    if(i10<1.0236752033233643){
     s0+=94.0;
     s1+=32.0;
    } else {
     s1+=43.0;
    }
   }
  }
 } else {
  if(i14<1.0040130615234375){
   if(i26<1.0882463455200195){
    if(i12<0.9831442832946777){
     s0+=420.0;
     s1+=218.0;
    } else {
     s0+=487.0;
     s1+=1494.0;
    }
   } else {
    if(i69<1.962918304343475e-06){
     s0+=14.0;
     s1+=1081.0;
    } else {
     s0+=32.0;
    }
   }
  } else {
   if(i18<0.9918808937072754){
    if(i43<0.003253150498494506){
     s0+=109.0;
     s1+=2.0;
    } else {
     s1+=113.0;
    }
   } else {
    if(i4<-0.0003630220890045166){
     s0+=48.0;
     s1+=46.0;
    } else {
     s0+=31.0;
     s1+=9202.0;
    }
   }
  }
 }
}
if(i4<0.000564277172088623){
 if(i19<1.0495158433914185){
  if(i38<0.00028498092433437705){
   if(i0<0.07864540815353394){
    if(i27<1.0098203420639038){
     s0+=49187.0;
     s1+=90.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   } else {
    if(i7<1.239776611328125e-05){
     s0+=142.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=16.0;
    }
   }
  } else {
   if(i48<0.0010575652122497559){
    if(i1<0.04336899518966675){
     s0+=1658.0;
     s1+=106.0;
    } else {
     s0+=336.0;
     s1+=131.0;
    }
   } else {
    if(i19<1.0428757667541504){
     s0+=4525.0;
     s1+=19.0;
    } else {
     s0+=782.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i7<9.59634780883789e-06){
   if(i59<-0.0009787577437236905){
    if(i49<0.0007695725653320551){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=243.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=2602.0;
     s1+=1431.0;
    } else {
     s0+=9937.0;
     s1+=1388.0;
    }
   }
  } else {
   if(i1<0.0788634717464447){
    if(i59<-0.000326385983498767){
     s0+=495.0;
     s1+=61.0;
    } else {
     s0+=672.0;
     s1+=446.0;
    }
   } else {
    if(i67<-0.005295353941619396){
     s0+=293.0;
     s1+=553.0;
    } else {
     s0+=29.0;
     s1+=943.0;
    }
   }
  }
 }
} else {
 if(i19<1.0407118797302246){
  if(i3<1.0021543502807617){
   s0+=104.0;
  } else {
   if(i9<1.022210955619812){
    s0+=8.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i0<0.06267303228378296){
   if(i40<-1.4669136362499557e-05){
    if(i73<1.0022516250610352){
     s0+=59.0;
     s1+=446.0;
    } else {
     s0+=47.0;
     s1+=16.0;
    }
   } else {
    if(i66<0.0005392232560552657){
     s0+=119.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i2<0.131856769323349){
    if(i32<0.9998431205749512){
     s0+=122.0;
     s1+=356.0;
    } else {
     s0+=39.0;
     s1+=1373.0;
    }
   } else {
    if(i21<0.9963879585266113){
     s0+=8.0;
     s1+=106.0;
    } else {
     s0+=17.0;
     s1+=9209.0;
    }
   }
  }
 }
}
if(i1<0.07909366488456726){
 if(i11<0.0011491179466247559){
  if(i7<4.175305366516113e-05){
   if(i8<1.0398929119110107){
    if(i19<1.042891263961792){
     s0+=50098.0;
     s1+=122.0;
    } else {
     s0+=8140.0;
     s1+=464.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=3353.0;
     s1+=1201.0;
    } else {
     s0+=6992.0;
     s1+=429.0;
    }
   }
  } else {
   if(i31<0.0073427120223641396){
    if(i68<0.004105431027710438){
     s0+=305.0;
     s1+=19.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i43<0.009009975008666515){
     s0+=29.0;
     s1+=415.0;
    } else {
     s0+=68.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i13<0.0005526542663574219){
   if(i74<5.493373828358017e-05){
    s1+=34.0;
   } else {
    if(i33<0.0026199626736342907){
     s1+=35.0;
    } else {
     s0+=118.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=572.0;
  }
 }
} else {
 if(i54<-0.0002504289150238037){
  if(i65<0.001426066504791379){
   if(i10<1.0324220657348633){
    if(i40<-1.0249375918647274e-05){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=417.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   s1+=15.0;
  }
 } else {
  if(i4<0.00048482418060302734){
   if(i37<0.008288681507110596){
    if(i64<0.04068654775619507){
     s0+=449.0;
     s1+=1808.0;
    } else {
     s0+=672.0;
     s1+=320.0;
    }
   } else {
    if(i1<0.10031694173812866){
     s0+=58.0;
     s1+=31.0;
    } else {
     s0+=31.0;
     s1+=1009.0;
    }
   }
  } else {
   if(i4<0.0008671879768371582){
    if(i22<-8.654594421386719e-05){
     s0+=69.0;
     s1+=276.0;
    } else {
     s0+=32.0;
     s1+=868.0;
    }
   } else {
    if(i0<0.1316651701927185){
     s0+=32.0;
     s1+=909.0;
    } else {
     s0+=8.0;
     s1+=8739.0;
    }
   }
  }
 }
}
if(i6<-7.877488678786904e-05){
 if(i9<1.0289115905761719){
  if(i4<0.000265657901763916){
   if(i8<1.0351126194000244){
    if(i25<0.08681890368461609){
     s0+=474.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i29<0.003668066579848528){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=76.0;
     s1+=3.0;
    }
   }
  } else {
   if(i57<0.013416577130556107){
    if(i1<0.0124758780002594){
     s0+=3.0;
     s1+=12.0;
    } else {
     s1+=175.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i12<0.9831422567367554){
   if(i47<1.0004491806030273){
    if(i0<0.026796460151672363){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=129.0;
    }
   } else {
    if(i31<0.05633963644504547){
     s0+=102.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i32<0.9942761659622192){
    if(i28<0.02826172299683094){
     s0+=120.0;
     s1+=87.0;
    } else {
     s0+=41.0;
     s1+=1065.0;
    }
   } else {
    if(i10<1.0148868560791016){
     s0+=30.0;
     s1+=1666.0;
    } else {
     s1+=7964.0;
    }
   }
  }
 }
} else {
 if(i9<1.0436456203460693){
  if(i1<0.08160707354545593){
   if(i34<1.0556960105895996){
    s0+=42142.0;
   } else {
    if(i43<0.0014450200833380222){
     s0+=7491.0;
     s1+=1398.0;
    } else {
     s0+=14185.0;
     s1+=179.0;
    }
   }
  } else {
   if(i43<0.000449385610409081){
    if(i12<1.0003799200057983){
     s0+=77.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i4<-0.001012176275253296){
     s0+=47.0;
     s1+=2.0;
    } else {
     s0+=32.0;
     s1+=529.0;
    }
   }
  }
 } else {
  if(i2<0.08931839466094971){
   if(i34<1.1040328741073608){
    if(i21<1.0008275508880615){
     s0+=1471.0;
     s1+=425.0;
    } else {
     s0+=82.0;
     s1+=483.0;
    }
   } else {
    if(i52<-0.009917259216308594){
     s0+=251.0;
     s1+=96.0;
    } else {
     s0+=3025.0;
     s1+=146.0;
    }
   }
  } else {
   if(i3<0.996302604675293){
    if(i70<3.396528700250201e-05){
     s0+=292.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=58.0;
    }
   } else {
    if(i9<1.08536958694458){
     s0+=286.0;
     s1+=1787.0;
    } else {
     s0+=696.0;
     s1+=1020.0;
    }
   }
  }
 }
}
if(i2<0.08523821830749512){
 if(i12<1.0043823719024658){
  if(i48<-0.006544351577758789){
   if(i2<0.031729817390441895){
    if(i1<0.007146686315536499){
     s0+=2001.0;
     s1+=101.0;
    } else {
     s0+=755.0;
     s1+=274.0;
    }
   } else {
    if(i6<-3.67573338735383e-05){
     s0+=22.0;
     s1+=306.0;
    } else {
     s0+=430.0;
     s1+=318.0;
    }
   }
  } else {
   if(i20<0.004141172394156456){
    if(i54<-3.236532211303711e-05){
     s0+=35784.0;
     s1+=57.0;
    } else {
     s0+=23062.0;
     s1+=687.0;
    }
   } else {
    if(i41<1.2413508892059326){
     s0+=851.0;
     s1+=467.0;
    } else {
     s0+=5252.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i30<1.1386182308197021){
   if(i6<-2.5437730073463172e-05){
    s1+=661.0;
   } else {
    if(i7<4.738569259643555e-05){
     s0+=48.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i13<0.0006420612335205078){
    if(i12<1.0145783424377441){
     s0+=1108.0;
     s1+=29.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i31<0.012219281867146492){
     s0+=26.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=148.0;
    }
   }
  }
 }
} else {
 if(i22<3.403425216674805e-05){
  if(i6<-1.255813731404487e-05){
   if(i48<0.016230463981628418){
    if(i17<0.9980349540710449){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=114.0;
     s1+=2099.0;
    }
   } else {
    if(i46<0.007640191353857517){
     s0+=332.0;
     s1+=313.0;
    } else {
     s0+=139.0;
     s1+=830.0;
    }
   }
  } else {
   if(i21<0.9949357509613037){
    if(i10<1.0124280452728271){
     s0+=505.0;
     s1+=7.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i24<1.0116255283355713){
     s0+=108.0;
     s1+=250.0;
    } else {
     s0+=496.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i34<1.0546374320983887){
   s0+=36.0;
  } else {
   if(i69<9.591856269253185e-07){
    if(i4<0.000159531831741333){
     s0+=89.0;
     s1+=247.0;
    } else {
     s0+=56.0;
     s1+=9958.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i8<1.057713270187378){
 if(i19<1.0486011505126953){
  if(i27<1.0098820924758911){
   if(i4<0.0007063746452331543){
    if(i29<0.0003233657334931195){
     s0+=52151.0;
     s1+=179.0;
    } else {
     s0+=4099.0;
     s1+=198.0;
    }
   } else {
    if(i70<-2.844721620931523e-06){
     s0+=26.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i16<1.0085846185684204){
   if(i5<0.06002679467201233){
    if(i3<1.00287926197052){
     s0+=7944.0;
     s1+=743.0;
    } else {
     s0+=16.0;
     s1+=144.0;
    }
   } else {
    if(i64<0.023478418588638306){
     s0+=91.0;
     s1+=422.0;
    } else {
     s0+=418.0;
     s1+=248.0;
    }
   }
  } else {
   if(i41<1.1063789129257202){
    if(i14<1.005664587020874){
     s0+=29.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=419.0;
    }
   } else {
    if(i49<0.001909698243252933){
     s0+=139.0;
     s1+=15.0;
    } else {
     s0+=20.0;
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i22<0.00010198354721069336){
  if(i45<0.005323818419128656){
   if(i43<0.0005124668823555112){
    if(i69<-4.553799044515472e-06){
     s1+=17.0;
    } else {
     s0+=1599.0;
     s1+=95.0;
    }
   } else {
    if(i33<0.0011195074766874313){
     s0+=125.0;
     s1+=673.0;
    } else {
     s0+=3286.0;
     s1+=1530.0;
    }
   }
  } else {
   if(i4<-0.0003153085708618164){
    if(i47<1.00030517578125){
     s0+=208.0;
     s1+=295.0;
    } else {
     s0+=218.0;
     s1+=4.0;
    }
   } else {
    if(i2<0.12144678831100464){
     s0+=396.0;
     s1+=493.0;
    } else {
     s0+=39.0;
     s1+=1778.0;
    }
   }
  }
 } else {
  if(i6<-4.397488373797387e-05){
   if(i2<0.06393200159072876){
    if(i7<3.2961368560791016e-05){
     s0+=38.0;
     s1+=6.0;
    } else {
     s1+=173.0;
    }
   } else {
    if(i15<-1.5228986740112305e-05){
     s0+=7.0;
    } else {
     s1+=9433.0;
    }
   }
  } else {
   if(i66<0.0004645136068575084){
    if(i3<1.0016984939575195){
     s0+=26.0;
     s1+=77.0;
    } else {
     s0+=213.0;
     s1+=15.0;
    }
   } else {
    s1+=51.0;
   }
  }
 }
}
if(i8<1.0564017295837402){
 if(i2<0.07844924926757812){
  if(i68<0.0015748317819088697){
   if(i14<1.0081675052642822){
    if(i9<1.0406912565231323){
     s0+=57762.0;
     s1+=378.0;
    } else {
     s0+=1964.0;
     s1+=178.0;
    }
   } else {
    if(i33<0.0013919882476329803){
     s1+=130.0;
    } else {
     s0+=61.0;
    }
   }
  } else {
   if(i33<0.0010423873318359256){
    if(i13<6.753206253051758e-05){
     s0+=1150.0;
     s1+=275.0;
    } else {
     s0+=43.0;
     s1+=246.0;
    }
   } else {
    if(i7<6.663799285888672e-05){
     s0+=2909.0;
     s1+=110.0;
    } else {
     s1+=26.0;
    }
   }
  }
 } else {
  if(i19<1.049466609954834){
   if(i21<1.0014228820800781){
    if(i21<0.9965014457702637){
     s0+=421.0;
     s1+=2.0;
    } else {
     s0+=217.0;
     s1+=43.0;
    }
   } else {
    if(i45<0.002646236214786768){
     s0+=4.0;
     s1+=32.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i4<-0.0008383989334106445){
    if(i25<0.08700361847877502){
     s0+=86.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i11<-0.0020922422409057617){
     s0+=52.0;
     s1+=30.0;
    } else {
     s0+=85.0;
     s1+=936.0;
    }
   }
  }
 }
} else {
 if(i35<1.3733716011047363){
  if(i2<0.08519679307937622){
   if(i21<1.0025990009307861){
    if(i30<1.1013743877410889){
     s0+=829.0;
     s1+=502.0;
    } else {
     s0+=3605.0;
     s1+=314.0;
    }
   } else {
    if(i7<4.297494888305664e-05){
     s0+=165.0;
     s1+=61.0;
    } else {
     s0+=90.0;
     s1+=506.0;
    }
   }
  } else {
   if(i53<0.058817923069000244){
    if(i11<0.0007508397102355957){
     s0+=347.0;
     s1+=1753.0;
    } else {
     s0+=15.0;
     s1+=2781.0;
    }
   } else {
    if(i31<0.03647197037935257){
     s0+=983.0;
     s1+=539.0;
    } else {
     s0+=34.0;
     s1+=689.0;
    }
   }
  }
 } else {
  if(i22<-0.00023227930068969727){
   if(i31<0.04850965738296509){
    if(i1<0.0961749255657196){
     s0+=230.0;
     s1+=35.0;
    } else {
     s0+=7.0;
     s1+=170.0;
    }
   } else {
    if(i14<0.9028360843658447){
     s0+=9.0;
     s1+=4.0;
    } else {
     s1+=342.0;
    }
   }
  } else {
   if(i0<0.02991384267807007){
    if(i61<0.004351059906184673){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i15<-1.6301870346069336e-05){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=7013.0;
    }
   }
  }
 }
}
if(i16<1.008828043937683){
 if(i13<0.0004565119743347168){
  if(i2<0.08523821830749512){
   if(i0<0.0663345456123352){
    if(i51<0.008289376273751259){
     s0+=61816.0;
     s1+=757.0;
    } else {
     s0+=2333.0;
     s1+=468.0;
    }
   } else {
    if(i42<0.025520075112581253){
     s0+=1615.0;
     s1+=104.0;
    } else {
     s0+=551.0;
     s1+=396.0;
    }
   }
  } else {
   if(i73<0.9974860548973083){
    s0+=345.0;
   } else {
    if(i40<1.4843641338302405e-06){
     s0+=411.0;
     s1+=1471.0;
    } else {
     s0+=236.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i4<0.0006623566150665283){
   if(i0<0.10955208539962769){
    if(i0<0.06987836956977844){
     s0+=946.0;
     s1+=168.0;
    } else {
     s0+=194.0;
     s1+=124.0;
    }
   } else {
    if(i63<0.007539898157119751){
     s0+=3.0;
     s1+=221.0;
    } else {
     s0+=24.0;
     s1+=28.0;
    }
   }
  } else {
   if(i3<1.0043926239013672){
    if(i31<0.00834862794727087){
     s0+=91.0;
     s1+=52.0;
    } else {
     s0+=68.0;
     s1+=679.0;
    }
   } else {
    if(i66<0.0004044370143674314){
     s0+=14.0;
     s1+=270.0;
    } else {
     s0+=8.0;
     s1+=1339.0;
    }
   }
  }
 }
} else {
 if(i12<1.0100469589233398){
  if(i2<0.08792981505393982){
   if(i20<0.004354061558842659){
    if(i46<0.0004765890189446509){
     s0+=75.0;
     s1+=177.0;
    } else {
     s0+=1498.0;
     s1+=74.0;
    }
   } else {
    if(i30<1.277674913406372){
     s1+=180.0;
    } else {
     s0+=84.0;
     s1+=23.0;
    }
   }
  } else {
   if(i20<0.0017986095044761896){
    if(i35<1.0729575157165527){
     s1+=6.0;
    } else {
     s0+=332.0;
     s1+=19.0;
    }
   } else {
    if(i48<0.0161435604095459){
     s0+=22.0;
     s1+=1022.0;
    } else {
     s0+=328.0;
     s1+=1404.0;
    }
   }
  }
 } else {
  if(i69<2.7685149461831315e-07){
   if(i31<0.011160120368003845){
    if(i11<0.0014300942420959473){
     s0+=72.0;
     s1+=30.0;
    } else {
     s0+=5.0;
     s1+=816.0;
    }
   } else {
    if(i15<1.7464160919189453e-05){
     s0+=21.0;
     s1+=994.0;
    } else {
     s1+=6277.0;
    }
   }
  } else {
   if(i60<0.10794965922832489){
    s1+=2.0;
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i1<0.07737115025520325){
 if(i13<0.0005263090133666992){
  if(i68<0.0016257886309176683){
   if(i5<0.06343454122543335){
    if(i10<1.007720708847046){
     s0+=60409.0;
     s1+=693.0;
    } else {
     s0+=426.0;
     s1+=181.0;
    }
   } else {
    if(i40<-7.656278285139706e-06){
     s0+=334.0;
     s1+=227.0;
    } else {
     s0+=978.0;
     s1+=68.0;
    }
   }
  } else {
   if(i22<-0.00020357966423034668){
    if(i51<0.013533287681639194){
     s0+=2128.0;
     s1+=44.0;
    } else {
     s0+=594.0;
     s1+=98.0;
    }
   } else {
    if(i45<0.000379172241082415){
     s0+=1167.0;
     s1+=7.0;
    } else {
     s0+=1940.0;
     s1+=830.0;
    }
   }
  }
 } else {
  if(i63<0.0003611445426940918){
   if(i73<1.0022393465042114){
    if(i8<1.039478063583374){
     s0+=104.0;
     s1+=34.0;
    } else {
     s0+=65.0;
     s1+=950.0;
    }
   } else {
    if(i68<0.0038227466866374016){
     s0+=240.0;
     s1+=14.0;
    } else {
     s0+=34.0;
     s1+=65.0;
    }
   }
  } else {
   if(i22<7.927417755126953e-05){
    if(i26<1.0020190477371216){
     s0+=22.0;
     s1+=17.0;
    } else {
     s0+=481.0;
     s1+=25.0;
    }
   } else {
    if(i45<0.0019460194744169712){
     s0+=5.0;
     s1+=85.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i6<-2.1702413505408913e-05){
  if(i7<5.6803226470947266e-05){
   if(i50<1.0003392696380615){
    if(i13<-0.0003890693187713623){
     s0+=37.0;
     s1+=12.0;
    } else {
     s0+=84.0;
     s1+=2520.0;
    }
   } else {
    if(i41<1.365386724472046){
     s0+=329.0;
     s1+=545.0;
    } else {
     s0+=96.0;
     s1+=672.0;
    }
   }
  } else {
   if(i47<0.9973702430725098){
    s0+=14.0;
   } else {
    if(i32<0.9983689785003662){
     s0+=42.0;
     s1+=1193.0;
    } else {
     s0+=7.0;
     s1+=8444.0;
    }
   }
  }
 } else {
  if(i44<0.05788096785545349){
   if(i19<1.0494358539581299){
    if(i4<-0.0007462501525878906){
     s0+=64.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   } else {
    if(i28<0.018817992880940437){
     s0+=58.0;
     s1+=94.0;
    } else {
     s0+=9.0;
     s1+=307.0;
    }
   }
  } else {
   if(i0<0.11291947960853577){
    if(i65<0.0004585827700793743){
     s0+=527.0;
     s1+=13.0;
    } else {
     s0+=99.0;
     s1+=15.0;
    }
   } else {
    if(i39<0.08421298861503601){
     s0+=61.0;
     s1+=152.0;
    } else {
     s0+=465.0;
     s1+=98.0;
    }
   }
  }
 }
}
if(i1<0.07829615473747253){
 if(i18<1.0043151378631592){
  if(i8<1.0420758724212646){
   if(i58<-0.0020241141319274902){
    if(i71<0.09047786146402359){
     s0+=1766.0;
     s1+=419.0;
    } else {
     s0+=2490.0;
     s1+=21.0;
    }
   } else {
    if(i51<0.01180352084338665){
     s0+=55548.0;
     s1+=205.0;
    } else {
     s0+=24.0;
     s1+=10.0;
    }
   }
  } else {
   if(i4<0.0004601478576660156){
    if(i10<0.9926068782806396){
     s0+=1004.0;
     s1+=502.0;
    } else {
     s0+=7666.0;
     s1+=845.0;
    }
   } else {
    if(i49<0.0017418853240087628){
     s0+=142.0;
     s1+=22.0;
    } else {
     s0+=108.0;
     s1+=275.0;
    }
   }
  }
 } else {
  if(i13<0.00041300058364868164){
   if(i41<1.1016805171966553){
    if(i20<0.0010483385995030403){
     s0+=1.0;
    } else {
     s1+=79.0;
    }
   } else {
    if(i10<1.0211315155029297){
     s0+=476.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i6<-4.331633317633532e-05){
    if(i12<0.9806810021400452){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=801.0;
    }
   } else {
    if(i49<0.0012155954027548432){
     s0+=55.0;
    } else {
     s1+=48.0;
    }
   }
  }
 }
} else {
 if(i18<1.0010182857513428){
  if(i39<0.046970099210739136){
   if(i17<0.9980413913726807){
    s0+=93.0;
   } else {
    if(i44<0.04191291332244873){
     s0+=3.0;
     s1+=1334.0;
    } else {
     s0+=105.0;
     s1+=824.0;
    }
   }
  } else {
   if(i37<0.010496871545910835){
    if(i1<0.15234708786010742){
     s0+=1055.0;
     s1+=261.0;
    } else {
     s0+=398.0;
     s1+=483.0;
    }
   } else {
    if(i25<0.08180299401283264){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=596.0;
    }
   }
  }
 } else {
  if(i20<0.0016472353599965572){
   if(i56<-2.8692556952591985e-05){
    s1+=113.0;
   } else {
    if(i56<4.110545705771074e-05){
     s0+=101.0;
     s1+=14.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i6<-4.1203868022421375e-05){
    if(i22<2.849102020263672e-05){
     s0+=42.0;
     s1+=870.0;
    } else {
     s0+=3.0;
     s1+=9023.0;
    }
   } else {
    if(i46<0.0039686402305960655){
     s0+=3.0;
     s1+=185.0;
    } else {
     s0+=58.0;
     s1+=114.0;
    }
   }
  }
 }
}
if(i10<1.0084013938903809){
 if(i28<0.022738464176654816){
  if(i42<0.026874952018260956){
   if(i55<-0.001730799674987793){
    if(i47<0.9994934797286987){
     s0+=199.0;
    } else {
     s0+=359.0;
     s1+=246.0;
    }
   } else {
    if(i5<0.0699985921382904){
     s0+=56043.0;
     s1+=353.0;
    } else {
     s0+=660.0;
     s1+=167.0;
    }
   }
  } else {
   if(i17<1.0005028247833252){
    if(i0<0.07385236024856567){
     s0+=4930.0;
     s1+=315.0;
    } else {
     s0+=397.0;
     s1+=244.0;
    }
   } else {
    if(i4<5.7756900787353516e-05){
     s0+=443.0;
     s1+=59.0;
    } else {
     s0+=373.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i22<-0.00023245811462402344){
   if(i2<0.0985984206199646){
    if(i8<1.089733600616455){
     s0+=4786.0;
     s1+=57.0;
    } else {
     s0+=282.0;
     s1+=123.0;
    }
   } else {
    if(i54<-0.00014579296112060547){
     s0+=114.0;
    } else {
     s0+=54.0;
     s1+=574.0;
    }
   }
  } else {
   if(i34<1.0547096729278564){
    s0+=308.0;
   } else {
    if(i3<0.99686598777771){
     s0+=208.0;
     s1+=37.0;
    } else {
     s0+=551.0;
     s1+=3569.0;
    }
   }
  }
 }
} else {
 if(i18<1.0043938159942627){
  if(i4<0.0004985928535461426){
   if(i33<0.006544937379658222){
    if(i29<0.0009691530140116811){
     s0+=410.0;
     s1+=683.0;
    } else {
     s0+=637.0;
     s1+=248.0;
    }
   } else {
    if(i37<0.007721009664237499){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=374.0;
    }
   }
  } else {
   if(i14<1.021286964416504){
    if(i0<0.06940791010856628){
     s0+=95.0;
     s1+=26.0;
    } else {
     s0+=44.0;
     s1+=576.0;
    }
   } else {
    if(i5<0.08138903975486755){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=730.0;
    }
   }
  }
 } else {
  if(i1<0.052937597036361694){
   if(i50<1.0006967782974243){
    if(i52<-0.0026416778564453125){
     s1+=28.0;
    } else {
     s0+=61.0;
     s1+=11.0;
    }
   } else {
    if(i13<0.0005797147750854492){
     s0+=8.0;
     s1+=18.0;
    } else {
     s1+=163.0;
    }
   }
  } else {
   if(i7<6.079673767089844e-05){
    if(i30<1.2392117977142334){
     s1+=474.0;
    } else {
     s0+=76.0;
     s1+=280.0;
    }
   } else {
    if(i22<2.849102020263672e-05){
     s0+=1.0;
     s1+=76.0;
    } else {
     s1+=7263.0;
    }
   }
  }
 }
}
if(i1<0.0782729983329773){
 if(i22<0.00016170740127563477){
  if(i17<1.001865029335022){
   if(i8<1.042891263961792){
    if(i57<0.0007803354528732598){
     s0+=55325.0;
     s1+=238.0;
    } else {
     s0+=5020.0;
     s1+=460.0;
    }
   } else {
    if(i33<0.0011017726501449943){
     s0+=2679.0;
     s1+=1035.0;
    } else {
     s0+=5420.0;
     s1+=372.0;
    }
   }
  } else {
   if(i3<1.0012712478637695){
    if(i62<0.15490412712097168){
     s0+=489.0;
     s1+=35.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i52<0.000796198844909668){
     s0+=104.0;
     s1+=444.0;
    } else {
     s0+=127.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i4<0.0009329319000244141){
   if(i67<6.8985100369900465e-06){
    if(i2<0.08019402623176575){
     s0+=290.0;
     s1+=28.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    if(i8<1.044114589691162){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=58.0;
    }
   }
  } else {
   s1+=536.0;
  }
 }
} else {
 if(i3<1.00185227394104){
  if(i20<0.0016364629846066236){
   if(i45<0.0018956053536385298){
    if(i26<1.042771577835083){
     s0+=76.0;
     s1+=70.0;
    } else {
     s0+=515.0;
     s1+=24.0;
    }
   } else {
    if(i65<0.0003234968171454966){
     s0+=68.0;
     s1+=9.0;
    } else {
     s0+=8.0;
     s1+=82.0;
    }
   }
  } else {
   if(i17<0.9980716705322266){
    if(i41<1.476589322090149){
     s0+=379.0;
    } else {
     s0+=19.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.11903154850006104){
     s0+=466.0;
     s1+=959.0;
    } else {
     s0+=152.0;
     s1+=2010.0;
    }
   }
  }
 } else {
  if(i0<0.11918017268180847){
   if(i53<0.05215686559677124){
    if(i68<-0.001155440928414464){
     s0+=22.0;
     s1+=13.0;
    } else {
     s0+=16.0;
     s1+=858.0;
    }
   } else {
    if(i20<0.009357165545225143){
     s0+=86.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   }
  } else {
   if(i31<0.017957482486963272){
    if(i12<1.0063390731811523){
     s0+=31.0;
     s1+=78.0;
    } else {
     s1+=1096.0;
    }
   } else {
    if(i0<0.14236250519752502){
     s0+=2.0;
     s1+=352.0;
    } else {
     s1+=8093.0;
    }
   }
  }
 }
}
if(i2<0.08502998948097229){
 if(i15<1.9252300262451172e-05){
  if(i38<0.0002811383455991745){
   if(i0<0.0794154703617096){
    if(i14<1.0075058937072754){
     s0+=51886.0;
     s1+=192.0;
    } else {
     s0+=230.0;
     s1+=84.0;
    }
   } else {
    if(i40<-5.7800648392003495e-06){
     s0+=12.0;
     s1+=26.0;
    } else {
     s0+=52.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<1.0398883819580078){
    if(i35<1.139474630355835){
     s0+=2939.0;
     s1+=342.0;
    } else {
     s0+=6297.0;
     s1+=18.0;
    }
   } else {
    if(i47<0.9998104572296143){
     s0+=2482.0;
     s1+=892.0;
    } else {
     s0+=4072.0;
     s1+=487.0;
    }
   }
  }
 } else {
  if(i7<4.184246063232422e-05){
   if(i34<1.1270583868026733){
    if(i57<0.0003362721181474626){
     s0+=208.0;
     s1+=31.0;
    } else {
     s0+=16.0;
     s1+=65.0;
    }
   } else {
    if(i8<1.1202845573425293){
     s0+=696.0;
     s1+=40.0;
    } else {
     s0+=10.0;
     s1+=38.0;
    }
   }
  } else {
   if(i43<0.00047273997915908694){
    s0+=189.0;
   } else {
    if(i48<0.0077323317527771){
     s0+=119.0;
     s1+=894.0;
    } else {
     s0+=38.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i17<0.9988582730293274){
  if(i45<0.00890285149216652){
   if(i37<0.0022448133677244186){
    if(i3<0.9955190420150757){
     s0+=242.0;
    } else {
     s0+=13.0;
     s1+=32.0;
    }
   } else {
    if(i37<0.002758106216788292){
     s0+=49.0;
     s1+=2.0;
    } else {
     s0+=329.0;
    }
   }
  } else {
   if(i9<1.039884090423584){
    if(i34<1.2893482446670532){
     s1+=3.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i15<-2.8401613235473633e-05){
     s0+=5.0;
    } else {
     s1+=27.0;
    }
   }
  }
 } else {
  if(i11<0.0002765357494354248){
   if(i28<0.023219171911478043){
    if(i63<0.0037745237350463867){
     s0+=187.0;
     s1+=452.0;
    } else {
     s0+=565.0;
     s1+=175.0;
    }
   } else {
    if(i57<0.0014448617585003376){
     s0+=278.0;
     s1+=1616.0;
    } else {
     s0+=13.0;
     s1+=1353.0;
    }
   }
  } else {
   if(i41<1.2950773239135742){
    if(i19<1.2550978660583496){
     s0+=70.0;
     s1+=2767.0;
    } else {
     s0+=77.0;
     s1+=90.0;
    }
   } else {
    s1+=7514.0;
   }
  }
 }
}
if(i5<0.07194709777832031){
 if(i3<1.0024797916412354){
  if(i10<1.0077202320098877){
   if(i38<0.00030960998265072703){
    if(i57<0.000897154794074595){
     s0+=53224.0;
     s1+=162.0;
    } else {
     s0+=269.0;
     s1+=100.0;
    }
   } else {
    if(i3<0.9967348575592041){
     s0+=8043.0;
     s1+=148.0;
    } else {
     s0+=6253.0;
     s1+=1712.0;
    }
   }
  } else {
   if(i6<-3.673689570860006e-05){
    if(i19<1.1561510562896729){
     s0+=21.0;
     s1+=419.0;
    } else {
     s0+=52.0;
     s1+=6.0;
    }
   } else {
    if(i37<0.001374655868858099){
     s0+=59.0;
     s1+=118.0;
    } else {
     s0+=721.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i4<0.0009453892707824707){
   if(i35<1.2163902521133423){
    if(i11<-0.0005029439926147461){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=347.0;
    }
   } else {
    if(i31<0.014631107449531555){
     s0+=184.0;
     s1+=14.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i11<-0.0019428730010986328){
    if(i66<0.0014027910074219108){
     s0+=18.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i61<-0.01855822466313839){
     s0+=8.0;
    } else {
     s0+=20.0;
     s1+=1489.0;
    }
   }
  }
 }
} else {
 if(i22<6.264448165893555e-05){
  if(i13<-0.00040227174758911133){
   if(i35<1.489687204360962){
    if(i13<-0.0004127919673919678){
     s0+=404.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i29<0.0008329923148266971){
     s0+=22.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  } else {
   if(i33<0.006456740200519562){
    if(i39<0.04255110025405884){
     s0+=71.0;
     s1+=943.0;
    } else {
     s0+=1170.0;
     s1+=732.0;
    }
   } else {
    if(i8<1.1226052045822144){
     s0+=159.0;
     s1+=366.0;
    } else {
     s0+=22.0;
     s1+=1603.0;
    }
   }
  }
 } else {
  if(i50<0.998886227607727){
   if(i42<0.24565914273262024){
    s0+=23.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i7<1.0192394256591797e-05){
    if(i10<1.0034894943237305){
     s0+=56.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=99.0;
    }
   } else {
    if(i40<-1.1811912372650113e-05){
     s0+=14.0;
     s1+=8733.0;
    } else {
     s0+=49.0;
     s1+=292.0;
    }
   }
  }
 }
}
if(i1<0.0755770206451416){
 if(i10<1.0081498622894287){
  if(i3<1.0024782419204712){
   if(i68<0.0015697807539254427){
    if(i20<0.004331094678491354){
     s0+=57375.0;
     s1+=498.0;
    } else {
     s0+=4538.0;
     s1+=315.0;
    }
   } else {
    if(i4<-0.0003090500831604004){
     s0+=3992.0;
     s1+=293.0;
    } else {
     s0+=2084.0;
     s1+=681.0;
    }
   }
  } else {
   if(i49<0.0014279019087553024){
    if(i5<0.04861423373222351){
     s0+=42.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   } else {
    if(i41<1.4628499746322632){
     s0+=19.0;
     s1+=347.0;
    } else {
     s0+=35.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i40<-1.4924538845662028e-05){
   if(i73<1.0021207332611084){
    if(i39<0.03811168670654297){
     s0+=9.0;
     s1+=640.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i20<0.005237242206931114){
     s0+=80.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i41<1.1039612293243408){
    if(i46<0.0008759830379858613){
     s0+=13.0;
     s1+=146.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   } else {
    if(i28<0.03735429048538208){
     s0+=755.0;
     s1+=7.0;
    } else {
     s0+=24.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i33<0.006386884953826666){
  if(i54<-0.00014165043830871582){
   if(i43<0.0017222859896719456){
    s0+=567.0;
   } else {
    if(i7<-3.3915042877197266e-05){
     s0+=18.0;
    } else {
     s1+=31.0;
    }
   }
  } else {
   if(i25<0.06300857663154602){
    if(i7<-5.9664249420166016e-05){
     s0+=34.0;
    } else {
     s0+=63.0;
     s1+=2572.0;
    }
   } else {
    if(i11<0.0006157159805297852){
     s0+=1130.0;
     s1+=1101.0;
    } else {
     s0+=61.0;
     s1+=1014.0;
    }
   }
  }
 } else {
  if(i17<0.998894453048706){
   if(i1<0.10766667127609253){
    if(i0<0.10345956683158875){
     s0+=54.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i2<0.12152394652366638){
    if(i44<0.055735498666763306){
     s0+=7.0;
     s1+=299.0;
    } else {
     s0+=112.0;
     s1+=44.0;
    }
   } else {
    if(i40<8.320171218656469e-07){
     s0+=39.0;
     s1+=9009.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i0<0.0816357433795929){
 if(i18<1.0052664279937744){
  if(i4<0.0006162524223327637){
   if(i53<-0.026992470026016235){
    if(i1<0.02950569987297058){
     s0+=2365.0;
     s1+=269.0;
    } else {
     s0+=371.0;
     s1+=327.0;
    }
   } else {
    if(i1<0.06136313080787659){
     s0+=62402.0;
     s1+=917.0;
    } else {
     s0+=3657.0;
     s1+=520.0;
    }
   }
  } else {
   if(i48<-0.006120473146438599){
    if(i1<0.019594281911849976){
     s0+=34.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=167.0;
    }
   } else {
    if(i56<-4.017089850094635e-06){
     s0+=130.0;
    } else {
     s0+=85.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i4<0.0005698800086975098){
   if(i0<0.06298056244850159){
    if(i35<1.1016805171966553){
     s1+=17.0;
    } else {
     s0+=263.0;
     s1+=2.0;
    }
   } else {
    if(i67<-0.005505938082933426){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   }
  } else {
   if(i69<-4.842394446313847e-06){
    if(i38<0.0001255013921763748){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=585.0;
    }
   } else {
    if(i24<1.0011403560638428){
     s1+=17.0;
    } else {
     s0+=46.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i12<1.0063388347625732){
  if(i44<0.05752962827682495){
   if(i43<0.00044936328777112067){
    if(i21<1.0000698566436768){
     s0+=102.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i15<-1.895427703857422e-05){
     s0+=16.0;
    } else {
     s0+=46.0;
     s1+=2631.0;
    }
   }
  } else {
   if(i6<-1.2626778698177077e-05){
    if(i20<0.0066488683223724365){
     s0+=493.0;
     s1+=524.0;
    } else {
     s0+=75.0;
     s1+=1363.0;
    }
   } else {
    if(i45<0.0038705244660377502){
     s0+=789.0;
     s1+=55.0;
    } else {
     s0+=74.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i4<0.0001709461212158203){
   if(i6<-2.2733918740414083e-05){
    if(i20<0.0020181317813694477){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=164.0;
    }
   } else {
    if(i3<0.9994497299194336){
     s1+=7.0;
    } else {
     s0+=64.0;
     s1+=3.0;
    }
   }
  } else {
   if(i2<0.10384279489517212){
    if(i36<1.0381395816802979){
     s0+=7.0;
     s1+=516.0;
    } else {
     s0+=19.0;
     s1+=3.0;
    }
   } else {
    if(i22<5.0067901611328125e-06){
     s0+=5.0;
     s1+=69.0;
    } else {
     s0+=1.0;
     s1+=8768.0;
    }
   }
  }
 }
}
if(i0<0.08297458291053772){
 if(i18<1.0043854713439941){
  if(i3<1.0024787187576294){
   if(i8<1.0401476621627808){
    if(i19<1.0428826808929443){
     s0+=50490.0;
     s1+=137.0;
    } else {
     s0+=8007.0;
     s1+=435.0;
    }
   } else {
    if(i28<0.017037421464920044){
     s0+=7630.0;
     s1+=472.0;
    } else {
     s0+=2534.0;
     s1+=1034.0;
    }
   }
  } else {
   if(i65<-1.3381213648244739e-07){
    if(i30<1.175731897354126){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=75.0;
    }
   } else {
    if(i58<0.0035454928874969482){
     s0+=57.0;
     s1+=266.0;
    } else {
     s0+=22.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i38<0.00018949067452922463){
   if(i69<-5.70537895328016e-06){
    if(i37<0.00036672709393315017){
     s0+=1.0;
    } else {
     s1+=24.0;
    }
   } else {
    s0+=284.0;
   }
  } else {
   if(i69<-3.8095963645901065e-06){
    if(i48<0.011846065521240234){
     s0+=37.0;
     s1+=772.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i34<1.1620773077011108){
     s0+=5.0;
     s1+=32.0;
    } else {
     s0+=191.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i50<0.9988081455230713){
  if(i38<0.053911760449409485){
   if(i32<0.9948148131370544){
    s0+=318.0;
   } else {
    if(i26<1.0403190851211548){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=94.0;
    }
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i3<1.0017845630645752){
   if(i67<-0.005402958486229181){
    if(i37<0.007840865291655064){
     s0+=700.0;
     s1+=379.0;
    } else {
     s0+=83.0;
     s1+=793.0;
    }
   } else {
    if(i20<0.0016124250832945108){
     s0+=158.0;
     s1+=122.0;
    } else {
     s0+=114.0;
     s1+=1945.0;
    }
   }
  } else {
   if(i11<3.5822391510009766e-05){
    if(i51<0.003727992530912161){
     s0+=87.0;
     s1+=479.0;
    } else {
     s0+=2.0;
     s1+=611.0;
    }
   } else {
    if(i46<0.00020819035125896335){
     s0+=2.0;
    } else {
     s0+=38.0;
     s1+=9770.0;
    }
   }
  }
 }
}
if(i5<0.07132148742675781){
 if(i2<0.07856440544128418){
  if(i11<0.001150667667388916){
   if(i38<0.0003065722994506359){
    if(i57<0.0009208896663039923){
     s0+=52954.0;
     s1+=263.0;
    } else {
     s0+=236.0;
     s1+=87.0;
    }
   } else {
    if(i43<0.0014749669935554266){
     s0+=5606.0;
     s1+=1413.0;
    } else {
     s0+=9412.0;
     s1+=520.0;
    }
   }
  } else {
   if(i40<-1.4116389138507657e-05){
    if(i65<-0.00011093712237197906){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=370.0;
    }
   } else {
    if(i33<0.002541482914239168){
     s1+=31.0;
    } else {
     s0+=104.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i70<1.5124156561796553e-05){
   if(i34<1.0581047534942627){
    s0+=86.0;
   } else {
    if(i50<0.9993155598640442){
     s0+=38.0;
    } else {
     s0+=70.0;
     s1+=1799.0;
    }
   }
  } else {
   if(i7<-4.547834396362305e-05){
    if(i42<0.04672122001647949){
     s0+=341.0;
     s1+=2.0;
    } else {
     s0+=43.0;
     s1+=24.0;
    }
   } else {
    if(i63<0.0011431574821472168){
     s0+=7.0;
     s1+=95.0;
    } else {
     s0+=58.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i20<0.00531949894502759){
  if(i70<-3.7597035316139227e-06){
   if(i38<0.005909563973546028){
    if(i2<0.09282255172729492){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=629.0;
    }
   } else {
    if(i33<0.013162896037101746){
     s0+=12.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i50<0.9989747405052185){
    if(i40<-1.0015804946306162e-05){
     s0+=10.0;
     s1+=8.0;
    } else {
     s0+=395.0;
    }
   } else {
    if(i63<0.004182875156402588){
     s0+=545.0;
     s1+=1174.0;
    } else {
     s0+=842.0;
     s1+=360.0;
    }
   }
  }
 } else {
  if(i3<0.9972351789474487){
   if(i15<-1.773238182067871e-05){
    s0+=39.0;
   } else {
    if(i50<1.0010881423950195){
     s0+=15.0;
     s1+=170.0;
    } else {
     s0+=21.0;
     s1+=7.0;
    }
   }
  } else {
   if(i11<-0.0008384287357330322){
    if(i71<0.16910836100578308){
     s0+=148.0;
     s1+=311.0;
    } else {
     s0+=7.0;
     s1+=688.0;
    }
   } else {
    if(i28<0.0012295146007090807){
     s0+=2.0;
     s1+=6.0;
    } else {
     s0+=15.0;
     s1+=9235.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i21<1.003166675567627){
  if(i1<0.08262783288955688){
   if(i65<0.0002715747687034309){
    if(i0<0.08377093076705933){
     s0+=55615.0;
     s1+=452.0;
    } else {
     s0+=24.0;
     s1+=67.0;
    }
   } else {
    if(i18<0.9938390851020813){
     s0+=6845.0;
     s1+=67.0;
    } else {
     s0+=2046.0;
     s1+=861.0;
    }
   }
  } else {
   if(i50<0.9988019466400146){
    if(i17<0.9980336427688599){
     s0+=76.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i59<0.00012770231114700437){
     s0+=50.0;
     s1+=519.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i3<1.000415325164795){
   if(i59<-0.0003881995799019933){
    if(i60<0.06283359229564667){
     s0+=5.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i7<2.0503997802734375e-05){
     s0+=589.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   if(i38<0.0001948030258063227){
    if(i2<0.06272715330123901){
     s0+=53.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i18<0.9963967204093933){
     s0+=29.0;
     s1+=39.0;
    } else {
     s0+=44.0;
     s1+=718.0;
    }
   }
  }
 }
} else {
 if(i1<0.0921248197555542){
  if(i72<1.0005614757537842){
   if(i3<1.0012840032577515){
    if(i6<-3.064538395847194e-05){
     s0+=246.0;
     s1+=292.0;
    } else {
     s0+=2929.0;
     s1+=130.0;
    }
   } else {
    if(i11<0.0004366636276245117){
     s0+=72.0;
     s1+=10.0;
    } else {
     s0+=48.0;
     s1+=198.0;
    }
   }
  } else {
   if(i37<0.0013787891948595643){
    if(i45<0.0002980100689455867){
     s0+=74.0;
    } else {
     s0+=62.0;
     s1+=902.0;
    }
   } else {
    if(i51<0.014417799189686775){
     s0+=1234.0;
     s1+=203.0;
    } else {
     s0+=47.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i17<0.9988181591033936){
   if(i21<0.9995250701904297){
    if(i20<0.006626143120229244){
     s0+=335.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i20<0.0016903802752494812){
    if(i67<-0.00471483264118433){
     s0+=341.0;
     s1+=42.0;
    } else {
     s0+=70.0;
     s1+=142.0;
    }
   } else {
    if(i20<0.003886194434016943){
     s0+=254.0;
     s1+=998.0;
    } else {
     s0+=127.0;
     s1+=10998.0;
    }
   }
  }
 }
}
if(i13<0.00042560696601867676){
 if(i16<1.0073606967926025){
  if(i9<1.0452215671539307){
   if(i29<0.0002956066164188087){
    if(i1<0.09033522009849548){
     s0+=54719.0;
     s1+=410.0;
    } else {
     s0+=19.0;
     s1+=55.0;
    }
   } else {
    if(i0<0.08023446798324585){
     s0+=8610.0;
     s1+=682.0;
    } else {
     s0+=146.0;
     s1+=367.0;
    }
   }
  } else {
   if(i42<0.03744348883628845){
    if(i0<0.08942067623138428){
     s0+=1706.0;
     s1+=103.0;
    } else {
     s0+=160.0;
     s1+=80.0;
    }
   } else {
    if(i1<0.09233325719833374){
     s0+=983.0;
     s1+=361.0;
    } else {
     s0+=244.0;
     s1+=873.0;
    }
   }
  }
 } else {
  if(i20<0.0029175477102398872){
   if(i37<0.0013324811588972807){
    if(i12<1.0035014152526855){
     s0+=436.0;
     s1+=128.0;
    } else {
     s0+=69.0;
     s1+=432.0;
    }
   } else {
    if(i1<0.2122264802455902){
     s0+=1518.0;
     s1+=22.0;
    } else {
     s0+=65.0;
     s1+=68.0;
    }
   }
  } else {
   if(i4<-0.00030672550201416016){
    if(i70<2.053922798950225e-05){
     s0+=280.0;
     s1+=38.0;
    } else {
     s0+=26.0;
     s1+=104.0;
    }
   } else {
    if(i20<0.0033858942333608866){
     s0+=82.0;
     s1+=155.0;
    } else {
     s0+=28.0;
     s1+=1984.0;
    }
   }
  }
 }
} else {
 if(i31<0.026337124407291412){
  if(i14<1.005556344985962){
   if(i55<-0.000529170036315918){
    if(i56<0.00014870380982756615){
     s0+=86.0;
     s1+=506.0;
    } else {
     s0+=381.0;
     s1+=18.0;
    }
   } else {
    if(i3<1.0022482872009277){
     s0+=940.0;
     s1+=146.0;
    } else {
     s0+=73.0;
     s1+=94.0;
    }
   }
  } else {
   if(i40<-1.752091156959068e-05){
    if(i6<-4.8736830649431795e-05){
     s0+=78.0;
     s1+=2291.0;
    } else {
     s0+=47.0;
     s1+=91.0;
    }
   } else {
    if(i6<-4.3793945224024355e-05){
     s1+=84.0;
    } else {
     s0+=198.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i7<-3.0040740966796875e-05){
   if(i56<0.00023759316536597908){
    if(i28<0.026764336973428726){
     s0+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i31<0.046149931848049164){
     s0+=95.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i1<0.05099865794181824){
    if(i36<0.9962283372879028){
     s0+=14.0;
     s1+=111.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i20<0.0016077978070825338){
     s0+=12.0;
     s1+=12.0;
    } else {
     s0+=17.0;
     s1+=7912.0;
    }
   }
  }
 }
}
if(i2<0.08502665162086487){
 if(i63<-0.0024043619632720947){
  if(i3<1.0009448528289795){
   if(i2<0.03849589824676514){
    if(i54<-5.6415796279907227e-05){
     s0+=1051.0;
     s1+=28.0;
    } else {
     s0+=1102.0;
     s1+=229.0;
    }
   } else {
    if(i44<0.010034412145614624){
     s0+=32.0;
     s1+=161.0;
    } else {
     s0+=165.0;
     s1+=66.0;
    }
   }
  } else {
   if(i27<1.02494215965271){
    if(i1<0.013168245553970337){
     s0+=33.0;
     s1+=69.0;
    } else {
     s0+=19.0;
     s1+=477.0;
    }
   } else {
    if(i11<0.001659393310546875){
     s0+=41.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i22<0.00014767050743103027){
   if(i4<0.0006906092166900635){
    if(i46<0.00029967830050736666){
     s0+=45848.0;
     s1+=131.0;
    } else {
     s0+=20135.0;
     s1+=1457.0;
    }
   } else {
    if(i43<0.006782390642911196){
     s0+=42.0;
     s1+=179.0;
    } else {
     s0+=90.0;
     s1+=16.0;
    }
   }
  } else {
   if(i19<1.0552619695663452){
    if(i32<1.0088813304901123){
     s0+=232.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i20<0.002101616468280554){
     s0+=142.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=288.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5394753063446842e-05){
  if(i3<1.0019888877868652){
   if(i17<0.9981886744499207){
    if(i31<0.003135166596621275){
     s1+=4.0;
    } else {
     s0+=77.0;
     s1+=7.0;
    }
   } else {
    if(i64<0.02544504404067993){
     s0+=127.0;
     s1+=1964.0;
    } else {
     s0+=381.0;
     s1+=961.0;
    }
   }
  } else {
   if(i22<-4.351139068603516e-06){
    if(i62<0.08090771734714508){
     s0+=63.0;
     s1+=269.0;
    } else {
     s0+=2.0;
     s1+=597.0;
    }
   } else {
    if(i6<-4.2749379645101726e-05){
     s0+=6.0;
     s1+=9848.0;
    } else {
     s0+=31.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i50<0.9992883205413818){
   s0+=588.0;
  } else {
   if(i56<3.5325218050275e-05){
    if(i40<-9.56813346419949e-06){
     s0+=5.0;
     s1+=20.0;
    } else {
     s0+=457.0;
     s1+=58.0;
    }
   } else {
    if(i44<0.05081290006637573){
     s0+=6.0;
     s1+=215.0;
    } else {
     s0+=199.0;
     s1+=163.0;
    }
   }
  }
 }
}
if(i0<0.08345785737037659){
 if(i11<0.0012122392654418945){
  if(i3<1.0024738311767578){
   if(i48<-0.006055176258087158){
    if(i41<1.197464108467102){
     s0+=1339.0;
     s1+=579.0;
    } else {
     s0+=2389.0;
     s1+=272.0;
    }
   } else {
    if(i8<1.0428826808929443){
     s0+=58591.0;
     s1+=469.0;
    } else {
     s0+=6704.0;
     s1+=886.0;
    }
   }
  } else {
   if(i40<-1.3867535017197952e-05){
    if(i41<1.2314128875732422){
     s1+=197.0;
    } else {
     s0+=132.0;
     s1+=262.0;
    }
   } else {
    if(i34<1.1126924753189087){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=83.0;
    }
   }
  }
 } else {
  if(i41<1.2388319969177246){
   s1+=443.0;
  } else {
   if(i43<0.005004297010600567){
    s0+=93.0;
   } else {
    s1+=52.0;
   }
  }
 }
} else {
 if(i40<3.935303993785055e-06){
  if(i6<-1.1545426787051838e-05){
   if(i13<-0.00043773651123046875){
    if(i56<0.00017402941011823714){
     s0+=49.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i32<1.0057188272476196){
     s0+=525.0;
     s1+=4003.0;
    } else {
     s0+=138.0;
     s1+=9771.0;
    }
   }
  } else {
   if(i52<0.0028610527515411377){
    if(i13<-0.00040328502655029297){
     s0+=141.0;
    } else {
     s0+=82.0;
     s1+=202.0;
    }
   } else {
    if(i13<-0.0002663135528564453){
     s0+=41.0;
     s1+=39.0;
    } else {
     s0+=410.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i37<0.0020915851928293705){
   if(i57<0.0014686835929751396){
    s0+=10.0;
   } else {
    s1+=4.0;
   }
  } else {
   s0+=265.0;
  }
 }
}
if(i21<1.0026135444641113){
 if(i1<0.08225265145301819){
  if(i58<-0.0020731985569000244){
   if(i41<1.1037919521331787){
    if(i43<0.0004282240988686681){
     s0+=1240.0;
     s1+=51.0;
    } else {
     s0+=257.0;
     s1+=635.0;
    }
   } else {
    if(i34<1.1645891666412354){
     s0+=631.0;
     s1+=165.0;
    } else {
     s0+=3279.0;
     s1+=147.0;
    }
   }
  } else {
   if(i16<1.0067417621612549){
    if(i51<0.009603983722627163){
     s0+=60095.0;
     s1+=621.0;
    } else {
     s0+=573.0;
     s1+=140.0;
    }
   } else {
    if(i34<1.082922339439392){
     s0+=346.0;
     s1+=346.0;
    } else {
     s0+=1863.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i15<-1.7344951629638672e-05){
   if(i73<1.0011540651321411){
    s0+=406.0;
   } else {
    if(i46<0.003402071539312601){
     s0+=8.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i6<-1.4627360542363022e-05){
    if(i39<0.0484747588634491){
     s0+=31.0;
     s1+=2387.0;
    } else {
     s0+=372.0;
     s1+=1368.0;
    }
   } else {
    if(i25<0.06680354475975037){
     s0+=12.0;
     s1+=134.0;
    } else {
     s0+=595.0;
     s1+=178.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004788041114807129){
  if(i32<0.9662834405899048){
   if(i8<1.1788976192474365){
    if(i20<0.002578388899564743){
     s1+=3.0;
    } else {
     s0+=710.0;
     s1+=14.0;
    }
   } else {
    if(i26<0.9795702695846558){
     s0+=5.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i31<0.04400624707341194){
    if(i28<0.017620205879211426){
     s0+=449.0;
     s1+=53.0;
    } else {
     s0+=102.0;
     s1+=257.0;
    }
   } else {
    if(i20<0.00697846757248044){
     s0+=5.0;
    } else {
     s1+=177.0;
    }
   }
  }
 } else {
  if(i1<0.06489688158035278){
   if(i34<1.1345939636230469){
    if(i18<0.9952556490898132){
     s0+=1.0;
    } else {
     s1+=509.0;
    }
   } else {
    if(i58<-0.0021781325340270996){
     s0+=45.0;
     s1+=235.0;
    } else {
     s0+=133.0;
     s1+=13.0;
    }
   }
  } else {
   if(i20<0.0025380640290677547){
    if(i61<-0.04503325745463371){
     s0+=23.0;
    } else {
     s0+=12.0;
     s1+=196.0;
    }
   } else {
    if(i2<0.10544037818908691){
     s0+=52.0;
     s1+=645.0;
    } else {
     s0+=15.0;
     s1+=8532.0;
    }
   }
  }
 }
}
if(i18<1.0037975311279297){
 if(i28<0.023463577032089233){
  if(i29<0.00031446211505681276){
   if(i0<0.08274275064468384){
    if(i57<0.0008952078642323613){
     s0+=55259.0;
     s1+=304.0;
    } else {
     s0+=504.0;
     s1+=164.0;
    }
   } else {
    if(i17<0.9993051290512085){
     s0+=72.0;
     s1+=11.0;
    } else {
     s0+=33.0;
     s1+=164.0;
    }
   }
  } else {
   if(i6<-2.002276960411109e-05){
    if(i41<1.1423697471618652){
     s0+=71.0;
     s1+=525.0;
    } else {
     s0+=2055.0;
     s1+=559.0;
    }
   } else {
    if(i34<1.1172821521759033){
     s0+=3452.0;
     s1+=498.0;
    } else {
     s0+=2768.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i3<0.9970512390136719){
   if(i29<0.020208392292261124){
    if(i44<0.05582764744758606){
     s0+=4432.0;
     s1+=110.0;
    } else {
     s0+=268.0;
     s1+=90.0;
    }
   } else {
    if(i31<0.04083913564682007){
     s0+=138.0;
     s1+=13.0;
    } else {
     s0+=6.0;
     s1+=46.0;
    }
   }
  } else {
   if(i11<-0.002342700958251953){
    if(i5<0.09385460615158081){
     s0+=462.0;
     s1+=82.0;
    } else {
     s0+=6.0;
     s1+=221.0;
    }
   } else {
    if(i74<9.654877794673666e-05){
     s0+=805.0;
     s1+=1823.0;
    } else {
     s0+=145.0;
     s1+=2447.0;
    }
   }
  }
 }
} else {
 if(i7<3.403425216674805e-05){
  if(i26<1.0312429666519165){
   if(i2<0.07076266407966614){
    if(i63<-0.01877450942993164){
     s1+=6.0;
    } else {
     s0+=549.0;
     s1+=12.0;
    }
   } else {
    if(i48<0.0024504661560058594){
     s0+=1.0;
     s1+=44.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i17<0.9990502595901489){
    if(i9<1.2587050199508667){
     s0+=38.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i33<0.0015144264325499535){
     s0+=2.0;
     s1+=200.0;
    } else {
     s0+=80.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i19<1.0428509712219238){
   s0+=12.0;
  } else {
   if(i29<0.0001522879465483129){
    if(i40<-1.6374953702325e-05){
     s1+=19.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i49<0.001007725833915174){
     s0+=80.0;
     s1+=815.0;
    } else {
     s0+=26.0;
     s1+=8533.0;
    }
   }
  }
 }
}
if(i6<-7.310696673812345e-05){
 if(i8<1.0407109260559082){
  if(i4<0.0005807876586914062){
   if(i2<0.09949809312820435){
    s0+=686.0;
   } else {
    if(i56<0.00018775733769871294){
     s0+=9.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i71<0.17589524388313293){
    s1+=78.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i0<0.06294897198677063){
   if(i63<-0.0002785325050354004){
    if(i18<1.0012284517288208){
     s0+=69.0;
     s1+=83.0;
    } else {
     s0+=14.0;
     s1+=253.0;
    }
   } else {
    if(i29<0.001149275922216475){
     s0+=10.0;
     s1+=15.0;
    } else {
     s0+=158.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.0004767474310938269){
    s0+=12.0;
   } else {
    if(i18<0.9997800588607788){
     s0+=102.0;
     s1+=1264.0;
    } else {
     s0+=36.0;
     s1+=9735.0;
    }
   }
  }
 }
} else {
 if(i19<1.0495078563690186){
  if(i19<1.0451585054397583){
   if(i52<-0.0015038251876831055){
    if(i34<1.0544123649597168){
     s0+=752.0;
    } else {
     s0+=137.0;
     s1+=77.0;
    }
   } else {
    if(i60<0.04639077186584473){
     s0+=49188.0;
     s1+=81.0;
    } else {
     s0+=3958.0;
     s1+=89.0;
    }
   }
  } else {
   if(i71<0.02210903912782669){
    if(i57<0.0010045268572866917){
     s0+=1871.0;
     s1+=42.0;
    } else {
     s0+=7.0;
     s1+=33.0;
    }
   } else {
    if(i18<0.9940290451049805){
     s0+=266.0;
     s1+=2.0;
    } else {
     s0+=160.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i1<0.06937462091445923){
   if(i34<1.1031841039657593){
    if(i3<1.0010716915130615){
     s0+=3343.0;
     s1+=838.0;
    } else {
     s0+=63.0;
     s1+=535.0;
    }
   } else {
    if(i13<0.0009881258010864258){
     s0+=8365.0;
     s1+=268.0;
    } else {
     s0+=3.0;
     s1+=43.0;
    }
   }
  } else {
   if(i54<-0.00014135241508483887){
    if(i44<0.04568791389465332){
     s0+=15.0;
     s1+=13.0;
    } else {
     s0+=399.0;
     s1+=6.0;
    }
   } else {
    if(i30<1.255998969078064){
     s0+=564.0;
     s1+=2534.0;
    } else {
     s0+=978.0;
     s1+=940.0;
    }
   }
  }
 }
}
if(i8<1.057713270187378){
 if(i7<3.9637088775634766e-05){
  if(i0<0.08200076222419739){
   if(i23<1.0106210708618164){
    if(i38<0.0003066366771236062){
     s0+=53223.0;
     s1+=247.0;
    } else {
     s0+=10843.0;
     s1+=910.0;
    }
   } else {
    if(i34<1.0922304391860962){
     s0+=31.0;
     s1+=126.0;
    } else {
     s0+=109.0;
     s1+=7.0;
    }
   }
  } else {
   if(i70<2.1737327188020572e-05){
    if(i39<0.05658632516860962){
     s0+=32.0;
     s1+=551.0;
    } else {
     s0+=66.0;
     s1+=51.0;
    }
   } else {
    if(i19<1.0795769691467285){
     s0+=201.0;
     s1+=18.0;
    } else {
     s0+=11.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i34<1.0577372312545776){
   s0+=269.0;
  } else {
   if(i27<1.0033893585205078){
    if(i30<1.5874378681182861){
     s0+=4.0;
     s1+=336.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.05891820788383484){
     s0+=64.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=215.0;
    }
   }
  }
 }
} else {
 if(i0<0.08661609888076782){
  if(i11<0.0014330148696899414){
   if(i31<0.048560164868831635){
    if(i18<1.0017069578170776){
     s0+=4527.0;
     s1+=824.0;
    } else {
     s0+=463.0;
     s1+=352.0;
    }
   } else {
    if(i50<1.0004897117614746){
     s0+=13.0;
     s1+=17.0;
    } else {
     s1+=143.0;
    }
   }
  } else {
   if(i73<1.0030803680419922){
    s1+=413.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i50<0.9988119006156921){
   if(i35<1.4944241046905518){
    s0+=260.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i31<0.024875879287719727){
    if(i53<0.062339603900909424){
     s0+=199.0;
     s1+=2828.0;
    } else {
     s0+=620.0;
     s1+=438.0;
    }
   } else {
    if(i0<0.19307813048362732){
     s0+=109.0;
     s1+=1791.0;
    } else {
     s0+=18.0;
     s1+=7855.0;
    }
   }
  }
 }
}
if(i0<0.07982069253921509){
 if(i10<1.008053183555603){
  if(i3<1.002474308013916){
   if(i55<-0.0012745261192321777){
    if(i18<0.9942597150802612){
     s0+=3309.0;
     s1+=131.0;
    } else {
     s0+=2501.0;
     s1+=860.0;
    }
   } else {
    if(i8<1.0428826808929443){
     s0+=56394.0;
     s1+=200.0;
    } else {
     s0+=5933.0;
     s1+=597.0;
    }
   }
  } else {
   if(i38<0.00018524759798310697){
    s0+=40.0;
   } else {
    if(i52<0.0026847124099731445){
     s0+=50.0;
     s1+=442.0;
    } else {
     s0+=36.0;
    }
   }
  }
 } else {
  if(i19<1.0862454175949097){
   if(i8<1.0330078601837158){
    s0+=28.0;
   } else {
    if(i6<-2.3528285964857787e-05){
     s0+=32.0;
     s1+=530.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i70<-8.35502396512311e-06){
    s1+=71.0;
   } else {
    if(i66<0.0006066384958103299){
     s0+=797.0;
     s1+=38.0;
    } else {
     s0+=39.0;
     s1+=64.0;
    }
   }
  }
 }
} else {
 if(i17<0.998153567314148){
  if(i50<0.9992334842681885){
   if(i38<0.06081487238407135){
    if(i17<0.9980660676956177){
     s0+=494.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i58<-0.000896453857421875){
    s1+=4.0;
   } else {
    if(i65<0.0005880777025595307){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i7<3.36766242980957e-05){
   if(i59<-7.40229879738763e-05){
    if(i47<0.9998749494552612){
     s0+=169.0;
     s1+=1768.0;
    } else {
     s0+=620.0;
     s1+=1124.0;
    }
   } else {
    if(i61<-0.015897812321782112){
     s0+=411.0;
     s1+=110.0;
    } else {
     s0+=63.0;
     s1+=258.0;
    }
   }
  } else {
   if(i31<0.022884562611579895){
    if(i70<5.5577538660145365e-06){
     s0+=89.0;
     s1+=2240.0;
    } else {
     s0+=80.0;
     s1+=144.0;
    }
   } else {
    if(i3<1.00115966796875){
     s0+=3.0;
     s1+=42.0;
    } else {
     s0+=4.0;
     s1+=8469.0;
    }
   }
  }
 }
}
if(i4<0.0005480647087097168){
 if(i9<1.0451881885528564){
  if(i1<0.08338120579719543){
   if(i0<0.06981739401817322){
    if(i52<-0.0015769004821777344){
     s0+=2945.0;
     s1+=475.0;
    } else {
     s0+=60761.0;
     s1+=551.0;
    }
   } else {
    if(i44<0.04155874252319336){
     s0+=91.0;
     s1+=279.0;
    } else {
     s0+=1097.0;
     s1+=77.0;
    }
   }
  } else {
   if(i47<0.9993675947189331){
    s0+=100.0;
   } else {
    if(i58<0.00657239556312561){
     s0+=53.0;
     s1+=488.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i2<0.09649041295051575){
   if(i6<-1.718109706416726e-05){
    if(i30<1.2371783256530762){
     s0+=90.0;
     s1+=636.0;
    } else {
     s0+=1392.0;
     s1+=221.0;
    }
   } else {
    if(i13<0.000485837459564209){
     s0+=2981.0;
     s1+=154.0;
    } else {
     s0+=17.0;
     s1+=24.0;
    }
   }
  } else {
   if(i50<0.9988265037536621){
    if(i31<0.07604053616523743){
     s0+=283.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i28<0.029348909854888916){
     s0+=595.0;
     s1+=827.0;
    } else {
     s0+=136.0;
     s1+=1740.0;
    }
   }
  }
 }
} else {
 if(i37<0.00042525172466412187){
  if(i40<-1.614376378711313e-05){
   s1+=4.0;
  } else {
   s0+=168.0;
  }
 } else {
  if(i20<0.002189040184020996){
   if(i50<1.0009424686431885){
    if(i12<1.014664888381958){
     s0+=184.0;
     s1+=19.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i3<1.003493070602417){
     s0+=2.0;
    } else {
     s1+=96.0;
    }
   }
  } else {
   if(i7<7.420778274536133e-05){
    if(i73<1.0029276609420776){
     s0+=115.0;
     s1+=2124.0;
    } else {
     s0+=70.0;
     s1+=64.0;
    }
   } else {
    if(i5<0.003758668899536133){
     s0+=22.0;
     s1+=38.0;
    } else {
     s0+=55.0;
     s1+=9210.0;
    }
   }
  }
 }
}
if(i18<1.0040032863616943){
 if(i19<1.0576403141021729){
  if(i9<1.0428826808929443){
   if(i57<0.0006623310619033873){
    if(i27<1.008575439453125){
     s0+=53487.0;
     s1+=211.0;
    } else {
     s0+=51.0;
     s1+=27.0;
    }
   } else {
    if(i18<0.9938127994537354){
     s0+=2636.0;
     s1+=5.0;
    } else {
     s0+=946.0;
     s1+=326.0;
    }
   }
  } else {
   if(i16<1.0077672004699707){
    if(i28<0.016587764024734497){
     s0+=1067.0;
     s1+=23.0;
    } else {
     s0+=207.0;
     s1+=101.0;
    }
   } else {
    if(i73<0.999245285987854){
     s0+=18.0;
    } else {
     s0+=9.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i1<0.07932350039482117){
   if(i31<0.04902630299329758){
    if(i3<1.00127112865448){
     s0+=9880.0;
     s1+=1215.0;
    } else {
     s0+=604.0;
     s1+=397.0;
    }
   } else {
    if(i54<6.335973739624023e-05){
     s0+=18.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   }
  } else {
   if(i6<-1.2574806532938965e-05){
    if(i1<0.11238545179367065){
     s0+=371.0;
     s1+=941.0;
    } else {
     s0+=221.0;
     s1+=3425.0;
    }
   } else {
    if(i25<0.06686535477638245){
     s0+=35.0;
     s1+=141.0;
    } else {
     s0+=788.0;
     s1+=171.0;
    }
   }
  }
 }
} else {
 if(i6<-4.351964525994845e-05){
  if(i50<0.9990516901016235){
   if(i57<-0.0015534154372289777){
    s1+=13.0;
   } else {
    s0+=81.0;
   }
  } else {
   if(i13<-0.00015500187873840332){
    s0+=15.0;
   } else {
    if(i7<3.781914710998535e-05){
     s0+=54.0;
     s1+=475.0;
    } else {
     s0+=27.0;
     s1+=9367.0;
    }
   }
  }
 } else {
  if(i50<1.0009722709655762){
   if(i62<0.06288626790046692){
    if(i49<0.0020365873351693153){
     s0+=560.0;
     s1+=17.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i50<1.000258445739746){
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  } else {
   if(i17<1.0012609958648682){
    s0+=6.0;
   } else {
    s1+=52.0;
   }
  }
 }
}
if(i2<0.08355346322059631){
 if(i4<0.0006161332130432129){
  if(i8<1.040665864944458){
   if(i52<-0.0014859139919281006){
    if(i0<0.03760835528373718){
     s0+=1766.0;
     s1+=102.0;
    } else {
     s0+=165.0;
     s1+=114.0;
    }
   } else {
    if(i60<0.04332612082362175){
     s0+=50608.0;
     s1+=179.0;
    } else {
     s0+=6471.0;
     s1+=190.0;
    }
   }
  } else {
   if(i28<0.016969501972198486){
    if(i10<1.0108582973480225){
     s0+=6990.0;
     s1+=433.0;
    } else {
     s0+=167.0;
     s1+=123.0;
    }
   } else {
    if(i43<0.0007063738303259015){
     s0+=496.0;
     s1+=645.0;
    } else {
     s0+=1910.0;
     s1+=379.0;
    }
   }
  }
 } else {
  if(i58<0.0028154850006103516){
   if(i20<0.0019949618726968765){
    if(i17<1.0030498504638672){
     s0+=99.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i45<0.00037138088373467326){
     s0+=18.0;
    } else {
     s0+=91.0;
     s1+=912.0;
    }
   }
  } else {
   if(i37<0.002256772480905056){
    s1+=16.0;
   } else {
    if(i31<0.025710951536893845){
     s0+=107.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i43<0.0005458869854919612){
  if(i40<-5.340166808309732e-06){
   if(i73<0.9981691241264343){
    s0+=33.0;
   } else {
    if(i54<1.4543533325195312e-05){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=165.0;
    }
   }
  } else {
   if(i17<1.000523328781128){
    if(i20<0.006302575580775738){
     s0+=617.0;
     s1+=10.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i22<9.006261825561523e-05){
   if(i28<0.027917973697185516){
    if(i34<1.1064984798431396){
     s0+=103.0;
     s1+=510.0;
    } else {
     s0+=886.0;
     s1+=585.0;
    }
   } else {
    if(i18<0.990912139415741){
     s0+=192.0;
     s1+=321.0;
    } else {
     s0+=192.0;
     s1+=2913.0;
    }
   }
  } else {
   if(i17<0.9985833764076233){
    s0+=3.0;
   } else {
    if(i6<-2.2337351765600033e-05){
     s0+=37.0;
     s1+=9658.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i12<1.0055713653564453){
 if(i9<1.0446083545684814){
  if(i55<-0.0013700127601623535){
   if(i5<0.04151511192321777){
    if(i71<0.11248566955327988){
     s0+=1916.0;
     s1+=491.0;
    } else {
     s0+=2419.0;
     s1+=23.0;
    }
   } else {
    if(i0<0.0700967013835907){
     s0+=382.0;
     s1+=270.0;
    } else {
     s0+=53.0;
     s1+=390.0;
    }
   }
  } else {
   if(i42<0.030941195785999298){
    if(i16<1.0078530311584473){
     s0+=55724.0;
     s1+=316.0;
    } else {
     s0+=192.0;
     s1+=77.0;
    }
   } else {
    if(i2<0.08074945211410522){
     s0+=3951.0;
     s1+=288.0;
    } else {
     s0+=99.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i45<0.005457888823002577){
   if(i0<0.08240053057670593){
    if(i72<1.0004937648773193){
     s0+=3020.0;
     s1+=295.0;
    } else {
     s0+=777.0;
     s1+=336.0;
    }
   } else {
    if(i34<1.2797276973724365){
     s0+=870.0;
     s1+=1492.0;
    } else {
     s0+=260.0;
    }
   }
  } else {
   if(i19<1.1234437227249146){
    if(i42<0.07112062722444534){
     s0+=393.0;
     s1+=64.0;
    } else {
     s0+=115.0;
     s1+=158.0;
    }
   } else {
    if(i37<0.008386701345443726){
     s0+=115.0;
     s1+=445.0;
    } else {
     s0+=69.0;
     s1+=1757.0;
    }
   }
  }
 }
} else {
 if(i2<0.0639570951461792){
  if(i33<0.001226827735081315){
   if(i6<-3.370177364558913e-05){
    s1+=218.0;
   } else {
    if(i7<4.178285598754883e-05){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i3<1.0041444301605225){
    if(i20<0.006292573641985655){
     s0+=634.0;
     s1+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=46.0;
   }
  }
 } else {
  if(i11<0.0007568001747131348){
   if(i40<-1.2839120245189406e-05){
    if(i6<-3.271526293247007e-05){
     s0+=15.0;
     s1+=542.0;
    } else {
     s0+=23.0;
     s1+=7.0;
    }
   } else {
    if(i0<0.10369393229484558){
     s0+=136.0;
     s1+=24.0;
    } else {
     s0+=75.0;
     s1+=125.0;
    }
   }
  } else {
   if(i20<0.0018958600703626871){
    if(i46<0.0032827036920934916){
     s0+=18.0;
     s1+=172.0;
    } else {
     s0+=34.0;
     s1+=3.0;
    }
   } else {
    if(i15<-1.3381242752075195e-05){
     s0+=4.0;
    } else {
     s0+=17.0;
     s1+=9107.0;
    }
   }
  }
 }
}
if(i0<0.0834648609161377){
 if(i6<-5.7990844652522355e-05){
  if(i35<1.2454195022583008){
   if(i72<0.9998752474784851){
    if(i33<0.000661685480736196){
     s0+=215.0;
    } else {
     s0+=18.0;
     s1+=54.0;
    }
   } else {
    if(i38<0.0019593769684433937){
     s0+=3.0;
     s1+=608.0;
    } else {
     s0+=39.0;
     s1+=39.0;
    }
   }
  } else {
   if(i59<-0.000478226225823164){
    if(i30<1.613681674003601){
     s0+=10.0;
     s1+=154.0;
    } else {
     s0+=15.0;
     s1+=8.0;
    }
   } else {
    if(i53<-0.04918944835662842){
     s0+=92.0;
     s1+=139.0;
    } else {
     s0+=1246.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i55<-0.0013793110847473145){
   if(i54<-4.3451786041259766e-05){
    if(i56<5.315843736752868e-05){
     s0+=1151.0;
     s1+=2.0;
    } else {
     s0+=1356.0;
     s1+=108.0;
    }
   } else {
    if(i37<0.0017138118855655193){
     s0+=375.0;
     s1+=648.0;
    } else {
     s0+=1790.0;
     s1+=173.0;
    }
   }
  } else {
   if(i3<1.0024926662445068){
    if(i8<1.0428826808929443){
     s0+=56600.0;
     s1+=288.0;
    } else {
     s0+=6461.0;
     s1+=737.0;
    }
   } else {
    if(i69<-5.048937055107672e-06){
     s0+=2.0;
     s1+=118.0;
    } else {
     s0+=118.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i15<-1.615285873413086e-05){
  if(i70<4.23641613451764e-05){
   if(i27<1.0417273044586182){
    if(i39<0.008278965950012207){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=354.0;
     s1+=1.0;
    }
   } else {
    if(i54<-0.0001780688762664795){
     s0+=13.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i4<-0.001698911190032959){
    s0+=17.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i6<-1.871796303021256e-05){
   if(i7<5.251169204711914e-05){
    if(i39<0.04684284329414368){
     s0+=31.0;
     s1+=2263.0;
    } else {
     s0+=420.0;
     s1+=1284.0;
    }
   } else {
    if(i34<1.0577372312545776){
     s0+=14.0;
    } else {
     s0+=61.0;
     s1+=9885.0;
    }
   }
  } else {
   if(i64<0.04081645607948303){
    if(i24<1.0261528491973877){
     s0+=56.0;
     s1+=423.0;
    } else {
     s0+=202.0;
     s1+=45.0;
    }
   } else {
    if(i33<0.00484860222786665){
     s0+=356.0;
     s1+=38.0;
    } else {
     s0+=52.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i1<0.07751640677452087){
 if(i4<0.0006022751331329346){
  if(i9<1.0401114225387573){
   if(i51<0.007863429374992847){
    if(i0<0.07661014795303345){
     s0+=61354.0;
     s1+=772.0;
    } else {
     s0+=161.0;
     s1+=103.0;
    }
   } else {
    if(i30<1.0840110778808594){
     s0+=607.0;
    } else {
     s0+=891.0;
     s1+=281.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i34<1.0596027374267578){
     s0+=1078.0;
     s1+=10.0;
    } else {
     s0+=780.0;
     s1+=686.0;
    }
   } else {
    if(i57<0.00563088059425354){
     s0+=4019.0;
     s1+=180.0;
    } else {
     s0+=89.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i3<1.0042097568511963){
   if(i52<-0.0011040568351745605){
    if(i53<0.01756066083908081){
     s0+=38.0;
     s1+=223.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   } else {
    if(i19<1.0832065343856812){
     s0+=118.0;
     s1+=118.0;
    } else {
     s0+=153.0;
     s1+=10.0;
    }
   }
  } else {
   if(i43<0.010844741947948933){
    if(i14<0.9914562702178955){
     s0+=5.0;
     s1+=120.0;
    } else {
     s1+=639.0;
    }
   } else {
    if(i59<-0.0005379810463637114){
     s1+=4.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
} else {
 if(i17<0.998753011226654){
  if(i43<0.0017667785286903381){
   if(i21<0.9981772899627686){
    if(i74<3.95390743506141e-05){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=451.0;
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i29<0.0005890537868253887){
    if(i64<0.028473377227783203){
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=3.0;
    }
   } else {
    if(i69<-2.186079200328095e-06){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i22<8.51750373840332e-05){
   if(i49<0.0002929234178736806){
    if(i39<0.04020950198173523){
     s0+=16.0;
     s1+=137.0;
    } else {
     s0+=389.0;
     s1+=94.0;
    }
   } else {
    if(i28<0.0213826522231102){
     s0+=563.0;
     s1+=626.0;
    } else {
     s0+=294.0;
     s1+=3496.0;
    }
   }
  } else {
   if(i2<0.10159468650817871){
    if(i25<0.06228300929069519){
     s1+=342.0;
    } else {
     s0+=34.0;
     s1+=39.0;
    }
   } else {
    if(i6<-2.4722245143493637e-05){
     s0+=24.0;
     s1+=9030.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i12<1.0054552555084229){
 if(i8<1.0451608896255493){
  if(i0<0.08297067880630493){
   if(i38<0.00028374098474159837){
    if(i17<1.0021240711212158){
     s0+=51244.0;
     s1+=149.0;
    } else {
     s0+=8.0;
     s1+=11.0;
    }
   } else {
    if(i43<0.001467074267566204){
     s0+=3587.0;
     s1+=655.0;
    } else {
     s0+=6985.0;
     s1+=100.0;
    }
   }
  } else {
   if(i17<0.9984776973724365){
    if(i23<1.0085939168930054){
     s0+=98.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i11<-0.0021598637104034424){
     s0+=45.0;
     s1+=28.0;
    } else {
     s0+=24.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i28<0.021962344646453857){
   if(i72<1.0006248950958252){
    if(i6<-2.579394458734896e-05){
     s0+=621.0;
     s1+=317.0;
    } else {
     s0+=4268.0;
     s1+=211.0;
    }
   } else {
    if(i45<0.0012630277778953314){
     s0+=188.0;
     s1+=302.0;
    } else {
     s0+=1336.0;
     s1+=349.0;
    }
   }
  } else {
   if(i6<-6.381300408975221e-06){
    if(i0<0.0745604932308197){
     s0+=611.0;
     s1+=638.0;
    } else {
     s0+=244.0;
     s1+=3477.0;
    }
   } else {
    if(i17<0.998855471611023){
     s0+=525.0;
     s1+=5.0;
    } else {
     s0+=300.0;
     s1+=203.0;
    }
   }
  }
 }
} else {
 if(i11<0.0014148354530334473){
  if(i1<0.0624273419380188){
   if(i33<0.0011154899839311838){
    if(i11<0.0005555152893066406){
     s0+=14.0;
     s1+=6.0;
    } else {
     s1+=171.0;
    }
   } else {
    if(i54<0.0002897977828979492){
     s0+=675.0;
     s1+=15.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i13<0.0004284977912902832){
    if(i2<0.09077373147010803){
     s0+=120.0;
     s1+=69.0;
    } else {
     s0+=116.0;
     s1+=613.0;
    }
   } else {
    if(i22<-4.76837158203125e-06){
     s0+=10.0;
     s1+=90.0;
    } else {
     s0+=3.0;
     s1+=1001.0;
    }
   }
  }
 } else {
  if(i29<0.00015219773922581226){
   if(i35<1.2388319969177246){
    s1+=10.0;
   } else {
    s0+=12.0;
   }
  } else {
   if(i73<1.0046801567077637){
    if(i8<1.0468316078186035){
     s0+=5.0;
     s1+=68.0;
    } else {
     s0+=5.0;
     s1+=8443.0;
    }
   } else {
    if(i20<0.00701248599216342){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i2<0.0853736400604248){
 if(i48<-0.006163239479064941){
  if(i50<1.0010457038879395){
   if(i15<1.7702579498291016e-05){
    if(i34<1.0967997312545776){
     s0+=899.0;
     s1+=506.0;
    } else {
     s0+=2399.0;
     s1+=211.0;
    }
   } else {
    if(i3<1.0016043186187744){
     s0+=54.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=143.0;
    }
   }
  } else {
   if(i3<1.0005029439926147){
    if(i0<0.02025657892227173){
     s0+=126.0;
     s1+=8.0;
    } else {
     s0+=32.0;
     s1+=43.0;
    }
   } else {
    if(i1<0.013299345970153809){
     s0+=23.0;
     s1+=45.0;
    } else {
     s0+=15.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i0<0.06921815872192383){
   if(i13<0.0004399418830871582){
    if(i29<0.0002925004228018224){
     s0+=54461.0;
     s1+=313.0;
    } else {
     s0+=8196.0;
     s1+=533.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=275.0;
     s1+=185.0;
    } else {
     s0+=854.0;
     s1+=73.0;
    }
   }
  } else {
   if(i53<0.0042874813079833984){
    if(i58<0.005654364824295044){
     s0+=47.0;
     s1+=410.0;
    } else {
     s0+=107.0;
     s1+=9.0;
    }
   } else {
    if(i13<8.431077003479004e-05){
     s0+=1169.0;
     s1+=111.0;
    } else {
     s0+=447.0;
     s1+=201.0;
    }
   }
  }
 }
} else {
 if(i54<-0.00013971328735351562){
  if(i15<-1.0460615158081055e-05){
   if(i4<-0.0004963576793670654){
    s0+=620.0;
   } else {
    if(i1<0.09501886367797852){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i43<0.0014023012481629848){
    s0+=43.0;
   } else {
    s1+=107.0;
   }
  }
 } else {
  if(i49<0.00030160535243339837){
   if(i67<-0.004556511528789997){
    if(i33<0.0025504429358989){
     s0+=291.0;
    } else {
     s0+=12.0;
     s1+=60.0;
    }
   } else {
    if(i6<-4.677189281210303e-06){
     s0+=25.0;
     s1+=348.0;
    } else {
     s0+=68.0;
     s1+=16.0;
    }
   }
  } else {
   if(i20<0.0031815222464501858){
    if(i55<0.0038430392742156982){
     s0+=208.0;
     s1+=893.0;
    } else {
     s0+=295.0;
     s1+=81.0;
    }
   } else {
    if(i59<-0.0001178065431304276){
     s0+=117.0;
     s1+=11524.0;
    } else {
     s0+=233.0;
     s1+=994.0;
    }
   }
  }
 }
}
if(i7<3.427267074584961e-05){
 if(i0<0.08223840594291687){
  if(i28<0.01703657954931259){
   if(i58<-0.0023179054260253906){
    if(i30<1.100754976272583){
     s0+=855.0;
     s1+=325.0;
    } else {
     s0+=1724.0;
     s1+=62.0;
    }
   } else {
    if(i23<1.0095598697662354){
     s0+=55687.0;
     s1+=242.0;
    } else {
     s0+=933.0;
     s1+=132.0;
    }
   }
  } else {
   if(i30<1.2371783256530762){
    if(i21<0.9998300075531006){
     s0+=2034.0;
     s1+=513.0;
    } else {
     s0+=184.0;
     s1+=490.0;
    }
   } else {
    if(i22<-0.00030559301376342773){
     s0+=6083.0;
     s1+=68.0;
    } else {
     s0+=1236.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i13<-0.00041306018829345703){
   if(i40<-1.118967975344276e-05){
    if(i0<0.10420683026313782){
     s0+=4.0;
    } else {
     s1+=6.0;
    }
   } else {
    s0+=371.0;
   }
  } else {
   if(i44<0.0587906539440155){
    if(i45<0.0002550194039940834){
     s0+=5.0;
    } else {
     s0+=43.0;
     s1+=1868.0;
    }
   } else {
    if(i6<-1.3578168363892473e-05){
     s0+=439.0;
     s1+=1245.0;
    } else {
     s0+=583.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i19<1.0432554483413696){
  if(i74<9.567839151713997e-05){
   if(i37<0.0013470080448314548){
    s1+=4.0;
   } else {
    s0+=5.0;
   }
  } else {
   s0+=449.0;
  }
 } else {
  if(i73<1.0021073818206787){
   if(i6<-4.5621774916071445e-05){
    if(i54<-0.0005302727222442627){
     s0+=11.0;
    } else {
     s0+=152.0;
     s1+=11117.0;
    }
   } else {
    if(i37<0.002264836337417364){
     s0+=18.0;
     s1+=232.0;
    } else {
     s0+=169.0;
     s1+=103.0;
    }
   }
  } else {
   if(i20<0.007301972713321447){
    if(i9<1.0560030937194824){
     s1+=16.0;
    } else {
     s0+=87.0;
     s1+=9.0;
    }
   } else {
    if(i3<1.0022025108337402){
     s0+=22.0;
     s1+=5.0;
    } else {
     s0+=20.0;
     s1+=408.0;
    }
   }
  }
 }
}
if(i10<1.0081498622894287){
 if(i2<0.08225265145301819){
  if(i58<-0.0022151172161102295){
   if(i17<1.0019211769104004){
    if(i30<1.1860926151275635){
     s0+=1697.0;
     s1+=741.0;
    } else {
     s0+=3813.0;
     s1+=155.0;
    }
   } else {
    if(i56<0.00014923137496225536){
     s0+=12.0;
     s1+=234.0;
    } else {
     s0+=242.0;
     s1+=113.0;
    }
   }
  } else {
   if(i3<1.002474308013916){
    if(i5<0.06078225374221802){
     s0+=60041.0;
     s1+=629.0;
    } else {
     s0+=2083.0;
     s1+=236.0;
    }
   } else {
    if(i20<0.0028368530329316854){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i54<-0.00014230608940124512){
   if(i40<-1.087069176719524e-05){
    if(i3<0.9954413175582886){
     s0+=15.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i4<-0.0004825592041015625){
     s0+=601.0;
    } else {
     s0+=53.0;
     s1+=2.0;
    }
   }
  } else {
   if(i39<0.045533955097198486){
    if(i5<0.03215152025222778){
     s0+=21.0;
     s1+=64.0;
    } else {
     s0+=54.0;
     s1+=2365.0;
    }
   } else {
    if(i20<0.009344524703919888){
     s0+=916.0;
     s1+=628.0;
    } else {
     s0+=17.0;
     s1+=770.0;
    }
   }
  }
 }
} else {
 if(i6<-4.210590850561857e-05){
  if(i10<1.0154021978378296){
   if(i35<1.2271616458892822){
    if(i27<0.9810888171195984){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=1160.0;
    }
   } else {
    if(i31<0.012402268126606941){
     s0+=56.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=449.0;
    }
   }
  } else {
   if(i14<1.0201985836029053){
    if(i15<1.901388168334961e-05){
     s0+=15.0;
     s1+=559.0;
    } else {
     s1+=984.0;
    }
   } else {
    s1+=7241.0;
   }
  }
 } else {
  if(i0<0.08273869752883911){
   if(i49<0.001995693426579237){
    if(i46<0.0004808130324818194){
     s0+=32.0;
     s1+=37.0;
    } else {
     s0+=834.0;
     s1+=34.0;
    }
   } else {
    if(i74<0.0001725223264656961){
     s1+=37.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i35<1.1755121946334839){
    if(i20<0.0016088758129626513){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=317.0;
    }
   } else {
    if(i50<1.0000805854797363){
     s0+=74.0;
     s1+=202.0;
    } else {
     s0+=266.0;
     s1+=114.0;
    }
   }
  }
 }
}
if(i12<1.005866527557373){
 if(i60<0.05767250806093216){
  if(i27<1.0079772472381592){
   if(i55<-0.0019456148147583008){
    if(i13<-9.647011756896973e-05){
     s0+=107.0;
     s1+=26.0;
    } else {
     s0+=58.0;
     s1+=210.0;
    }
   } else {
    if(i6<-4.524591349763796e-05){
     s0+=484.0;
     s1+=180.0;
    } else {
     s0+=57616.0;
     s1+=621.0;
    }
   }
  } else {
   if(i21<1.000014066696167){
    if(i1<0.06209784746170044){
     s0+=477.0;
     s1+=31.0;
    } else {
     s0+=88.0;
     s1+=123.0;
    }
   } else {
    if(i20<0.0016299636336043477){
     s0+=65.0;
     s1+=24.0;
    } else {
     s0+=76.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i0<0.08018022775650024){
   if(i7<2.7120113372802734e-05){
    if(i33<0.0011120359413325787){
     s0+=2137.0;
     s1+=654.0;
    } else {
     s0+=7620.0;
     s1+=321.0;
    }
   } else {
    if(i52<0.0008833706378936768){
     s0+=84.0;
     s1+=378.0;
    } else {
     s0+=139.0;
     s1+=9.0;
    }
   }
  } else {
   if(i20<0.005707032047212124){
    if(i54<-0.0001392960548400879){
     s0+=380.0;
     s1+=10.0;
    } else {
     s0+=788.0;
     s1+=1169.0;
    }
   } else {
    if(i1<0.10656207799911499){
     s0+=102.0;
     s1+=318.0;
    } else {
     s0+=29.0;
     s1+=2358.0;
    }
   }
  }
 }
} else {
 if(i1<0.05541890859603882){
  if(i4<0.0009390115737915039){
   if(i19<1.073072910308838){
    if(i34<1.1173423528671265){
     s1+=96.0;
    } else {
     s0+=85.0;
    }
   } else {
    if(i49<0.0019435093272477388){
     s0+=462.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i58<0.008577406406402588){
    s1+=268.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i31<0.018047049641609192){
   if(i11<0.0007695555686950684){
    if(i56<1.5427540347445756e-06){
     s0+=125.0;
     s1+=14.0;
    } else {
     s0+=55.0;
     s1+=144.0;
    }
   } else {
    if(i2<0.06908196210861206){
     s0+=28.0;
     s1+=61.0;
    } else {
     s0+=36.0;
     s1+=2000.0;
    }
   }
  } else {
   if(i69<-8.953641383868671e-08){
    if(i3<1.0017372369766235){
     s0+=33.0;
     s1+=287.0;
    } else {
     s1+=7479.0;
    }
   } else {
    if(i4<-2.3305416107177734e-05){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i5<0.07237556576728821){
 if(i2<0.0817350447177887){
  if(i13<0.0005179047584533691){
   if(i48<-0.0059767961502075195){
    if(i30<1.1860926151275635){
     s0+=1262.0;
     s1+=561.0;
    } else {
     s0+=2363.0;
     s1+=120.0;
    }
   } else {
    if(i10<1.0077147483825684){
     s0+=63494.0;
     s1+=908.0;
    } else {
     s0+=649.0;
     s1+=206.0;
    }
   }
  } else {
   if(i53<-0.0021196603775024414){
    if(i7<4.184246063232422e-05){
     s0+=290.0;
     s1+=116.0;
    } else {
     s0+=68.0;
     s1+=684.0;
    }
   } else {
    if(i41<1.236706256866455){
     s0+=103.0;
     s1+=116.0;
    } else {
     s0+=514.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i21<0.9968351125717163){
   if(i73<0.9985141754150391){
    s0+=270.0;
   } else {
    if(i23<0.9878746271133423){
     s1+=18.0;
    } else {
     s0+=66.0;
     s1+=10.0;
    }
   }
  } else {
   if(i44<0.05012565851211548){
    if(i19<1.0383962392807007){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=53.0;
     s1+=1834.0;
    }
   } else {
    if(i0<0.08444234728813171){
     s0+=83.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i2<0.10958105325698853){
  if(i4<0.00047713518142700195){
   if(i39<0.039829373359680176){
    if(i17<0.9981855154037476){
     s0+=16.0;
    } else {
     s0+=50.0;
     s1+=296.0;
    }
   } else {
    if(i18<0.9949890375137329){
     s0+=448.0;
     s1+=14.0;
    } else {
     s0+=585.0;
     s1+=148.0;
    }
   }
  } else {
   if(i55<0.0028504133224487305){
    if(i52<0.003838479518890381){
     s0+=19.0;
     s1+=336.0;
    } else {
     s0+=25.0;
     s1+=2.0;
    }
   } else {
    if(i40<-3.257817297708243e-05){
     s1+=8.0;
    } else {
     s0+=42.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i66<0.00013368552026804537){
   if(i43<0.0006420040735974908){
    if(i8<1.0626126527786255){
     s1+=6.0;
    } else {
     s0+=191.0;
     s1+=1.0;
    }
   } else {
    if(i26<1.1476669311523438){
     s0+=6.0;
     s1+=225.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   }
  } else {
   if(i6<-1.3379624761000741e-05){
    if(i17<0.9980753660202026){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=211.0;
     s1+=11143.0;
    }
   } else {
    if(i50<0.9990464448928833){
     s0+=198.0;
    } else {
     s0+=134.0;
     s1+=203.0;
    }
   }
  }
 }
}
if(i0<0.08350890874862671){
 if(i8<1.0452277660369873){
  if(i55<-0.0012745559215545654){
   if(i22<-0.00029087066650390625){
    if(i31<0.06675510853528976){
     s0+=2313.0;
     s1+=18.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i45<0.0003956352884415537){
     s0+=1098.0;
     s1+=12.0;
    } else {
     s0+=928.0;
     s1+=512.0;
    }
   }
  } else {
   if(i8<1.0406912565231323){
    if(i8<1.0338833332061768){
     s0+=47001.0;
     s1+=81.0;
    } else {
     s0+=8446.0;
     s1+=147.0;
    }
   } else {
    if(i28<0.0165889672935009){
     s0+=1965.0;
     s1+=42.0;
    } else {
     s0+=441.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i7<3.361701965332031e-05){
   if(i55<0.0028381943702697754){
    if(i28<0.017037007957696915){
     s0+=3793.0;
     s1+=379.0;
    } else {
     s0+=1386.0;
     s1+=846.0;
    }
   } else {
    if(i44<0.006072968244552612){
     s0+=106.0;
     s1+=14.0;
    } else {
     s0+=1717.0;
     s1+=30.0;
    }
   }
  } else {
   if(i58<0.0029335618019104004){
    if(i63<0.0018364787101745605){
     s0+=74.0;
     s1+=916.0;
    } else {
     s0+=52.0;
     s1+=7.0;
    }
   } else {
    if(i4<0.0013445019721984863){
     s0+=131.0;
     s1+=13.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i50<0.9988040328025818){
  if(i43<0.010980024933815002){
   s0+=432.0;
  } else {
   s1+=11.0;
  }
 } else {
  if(i11<0.00024193525314331055){
   if(i28<0.026592068374156952){
    if(i36<1.025726079940796){
     s0+=223.0;
     s1+=641.0;
    } else {
     s0+=537.0;
     s1+=145.0;
    }
   } else {
    if(i44<0.05583050847053528){
     s0+=5.0;
     s1+=1467.0;
    } else {
     s0+=263.0;
     s1+=1376.0;
    }
   }
  } else {
   if(i40<-8.779794029578625e-07){
    if(i0<0.10159805417060852){
     s0+=67.0;
     s1+=596.0;
    } else {
     s0+=46.0;
     s1+=9789.0;
    }
   } else {
    if(i26<1.077521800994873){
     s1+=7.0;
    } else {
     s0+=46.0;
    }
   }
  }
 }
}
if(i16<1.0088496208190918){
 if(i3<1.0024747848510742){
  if(i38<0.00033419718965888023){
   if(i16<1.0067534446716309){
    if(i65<0.0002818233915604651){
     s0+=52765.0;
     s1+=150.0;
    } else {
     s0+=1297.0;
     s1+=143.0;
    }
   } else {
    if(i67<-0.0013588301371783018){
     s0+=68.0;
     s1+=35.0;
    } else {
     s0+=302.0;
     s1+=23.0;
    }
   }
  } else {
   if(i12<0.9877932667732239){
    if(i2<0.10110792517662048){
     s0+=7792.0;
     s1+=245.0;
    } else {
     s0+=338.0;
     s1+=439.0;
    }
   } else {
    if(i28<0.030067037791013718){
     s0+=5588.0;
     s1+=1402.0;
    } else {
     s0+=312.0;
     s1+=1405.0;
    }
   }
  }
 } else {
  if(i40<-1.3759651665168349e-05){
   if(i11<-0.0008034110069274902){
    if(i68<0.0034192390739917755){
     s0+=70.0;
     s1+=59.0;
    } else {
     s0+=15.0;
     s1+=284.0;
    }
   } else {
    if(i73<0.9975423216819763){
     s0+=9.0;
     s1+=88.0;
    } else {
     s0+=8.0;
     s1+=1713.0;
    }
   }
  } else {
   if(i43<0.0014529784675687551){
    if(i3<1.0025439262390137){
     s0+=4.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i36<0.9324199557304382){
     s1+=5.0;
    } else {
     s0+=82.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i13<0.00046694278717041016){
  if(i0<0.0837407112121582){
   if(i6<-3.219657082809135e-05){
    if(i37<0.0011019859230145812){
     s0+=2.0;
     s1+=202.0;
    } else {
     s0+=280.0;
     s1+=57.0;
    }
   } else {
    if(i34<1.0738025903701782){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=1301.0;
     s1+=30.0;
    }
   }
  } else {
   if(i22<3.403425216674805e-05){
    if(i40<2.80060044133279e-06){
     s0+=361.0;
     s1+=656.0;
    } else {
     s0+=127.0;
    }
   } else {
    if(i19<1.150404453277588){
     s0+=14.0;
     s1+=983.0;
    } else {
     s0+=114.0;
     s1+=827.0;
    }
   }
  }
 } else {
  if(i56<3.772140189539641e-05){
   if(i38<0.00020851928275078535){
    if(i10<1.0157139301300049){
     s0+=18.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i6<-4.325253757997416e-05){
     s1+=5767.0;
    } else {
     s0+=26.0;
     s1+=93.0;
    }
   }
  } else {
   if(i6<-5.907241938984953e-05){
    if(i2<0.11429527401924133){
     s0+=92.0;
     s1+=76.0;
    } else {
     s0+=20.0;
     s1+=2284.0;
    }
   } else {
    if(i43<0.0025098237674683332){
     s1+=32.0;
    } else {
     s0+=181.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i22<0.00011497735977172852){
 if(i0<0.08459565043449402){
  if(i19<1.0485899448394775){
   if(i19<1.0428826808929443){
    if(i60<0.04214908927679062){
     s0+=46729.0;
     s1+=50.0;
    } else {
     s0+=5084.0;
     s1+=99.0;
    }
   } else {
    if(i24<0.9880523681640625){
     s0+=329.0;
     s1+=113.0;
    } else {
     s0+=3531.0;
     s1+=108.0;
    }
   }
  } else {
   if(i0<0.06548601388931274){
    if(i35<1.103413462638855){
     s0+=2520.0;
     s1+=815.0;
    } else {
     s0+=9383.0;
     s1+=556.0;
    }
   } else {
    if(i36<1.0184285640716553){
     s0+=646.0;
     s1+=729.0;
    } else {
     s0+=528.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i28<0.02887403592467308){
   if(i53<0.05966508388519287){
    if(i20<0.0018957916181534529){
     s0+=204.0;
     s1+=81.0;
    } else {
     s0+=160.0;
     s1+=986.0;
    }
   } else {
    if(i20<0.005886326543986797){
     s0+=676.0;
     s1+=108.0;
    } else {
     s0+=57.0;
     s1+=122.0;
    }
   }
  } else {
   if(i4<-0.0008326470851898193){
    if(i17<0.9987854361534119){
     s0+=152.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=87.0;
    }
   } else {
    if(i6<-1.0098306120198686e-05){
     s0+=109.0;
     s1+=3156.0;
    } else {
     s0+=105.0;
     s1+=145.0;
    }
   }
  }
 }
} else {
 if(i2<0.06425553560256958){
  if(i61<0.0020571029745042324){
   if(i17<1.0019700527191162){
    if(i67<0.0006331180338747799){
     s0+=675.0;
     s1+=32.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i6<-3.9876198570709676e-05){
     s1+=93.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i60<0.03399542719125748){
    if(i40<-1.2780787983501796e-05){
     s1+=11.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i57<-0.00010035758896265179){
     s0+=2.0;
    } else {
     s1+=112.0;
    }
   }
  }
 } else {
  if(i13<-0.0002434253692626953){
   if(i20<0.01176395732909441){
    s0+=49.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i22<0.00021332502365112305){
    if(i13<0.0004609823226928711){
     s0+=74.0;
     s1+=531.0;
    } else {
     s0+=2.0;
     s1+=783.0;
    }
   } else {
    if(i19<1.0439121723175049){
     s0+=1.0;
    } else {
     s1+=8435.0;
    }
   }
  }
 }
}
if(i12<1.0046703815460205){
 if(i1<0.08289653062820435){
  if(i8<1.0412344932556152){
   if(i4<0.0007641315460205078){
    if(i65<0.0002748980768956244){
     s0+=51493.0;
     s1+=151.0;
    } else {
     s0+=8260.0;
     s1+=511.0;
    }
   } else {
    if(i43<0.009702514857053757){
     s1+=29.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i21<1.0005419254302979){
    if(i37<0.0020080148242413998){
     s0+=3923.0;
     s1+=750.0;
    } else {
     s0+=3796.0;
     s1+=155.0;
    }
   } else {
    if(i26<1.0087566375732422){
     s0+=172.0;
     s1+=312.0;
    } else {
     s0+=1049.0;
     s1+=460.0;
    }
   }
  }
 } else {
  if(i13<-0.00038698315620422363){
   if(i4<-0.0005109310150146484){
    if(i47<1.000098466873169){
     s0+=361.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i43<0.0005139429122209549){
    if(i6<-1.8809128960128874e-05){
     s0+=1.0;
     s1+=44.0;
    } else {
     s0+=210.0;
     s1+=5.0;
    }
   } else {
    if(i64<0.02850717306137085){
     s0+=115.0;
     s1+=2773.0;
    } else {
     s0+=591.0;
     s1+=1109.0;
    }
   }
  }
 }
} else {
 if(i18<1.0054547786712646){
  if(i0<0.07581666111946106){
   if(i40<-1.4108705727267079e-05){
    if(i34<1.1170852184295654){
     s1+=101.0;
    } else {
     s0+=54.0;
     s1+=21.0;
    }
   } else {
    if(i37<0.0004276881809346378){
     s0+=4.0;
     s1+=29.0;
    } else {
     s0+=764.0;
     s1+=35.0;
    }
   }
  } else {
   if(i7<9.745359420776367e-06){
    if(i30<1.2604451179504395){
     s0+=11.0;
     s1+=165.0;
    } else {
     s0+=107.0;
     s1+=74.0;
    }
   } else {
    if(i11<0.00025177001953125){
     s0+=60.0;
     s1+=172.0;
    } else {
     s0+=49.0;
     s1+=1517.0;
    }
   }
  }
 } else {
  if(i46<0.00019215719657950103){
   s0+=74.0;
  } else {
   if(i40<-1.3717812180402689e-05){
    if(i38<0.00025961309438571334){
     s0+=2.0;
     s1+=87.0;
    } else {
     s1+=8208.0;
    }
   } else {
    if(i6<-4.362652180134319e-05){
     s0+=29.0;
     s1+=312.0;
    } else {
     s0+=79.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i10<1.0080137252807617){
 if(i0<0.08204913139343262){
  if(i13<0.0005766749382019043){
   if(i34<1.0557184219360352){
    if(i55<-0.0019733011722564697){
     s0+=614.0;
     s1+=1.0;
    } else {
     s0+=42570.0;
    }
   } else {
    if(i34<1.1031841039657593){
     s0+=7702.0;
     s1+=1489.0;
    } else {
     s0+=16774.0;
     s1+=269.0;
    }
   }
  } else {
   if(i52<-0.0012976527214050293){
    if(i22<-0.00033414363861083984){
     s0+=96.0;
     s1+=32.0;
    } else {
     s0+=20.0;
     s1+=306.0;
    }
   } else {
    if(i7<4.667043685913086e-05){
     s0+=528.0;
     s1+=50.0;
    } else {
     s0+=81.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i21<1.0003465414047241){
   if(i44<0.05959513783454895){
    if(i13<-0.000477522611618042){
     s0+=84.0;
    } else {
     s0+=49.0;
     s1+=681.0;
    }
   } else {
    if(i65<0.0010259785922244191){
     s0+=870.0;
     s1+=266.0;
    } else {
     s0+=14.0;
     s1+=130.0;
    }
   }
  } else {
   if(i0<0.13109055161476135){
    if(i63<0.0049803853034973145){
     s0+=75.0;
     s1+=826.0;
    } else {
     s0+=162.0;
     s1+=24.0;
    }
   } else {
    if(i33<0.0065291267819702625){
     s0+=29.0;
     s1+=397.0;
    } else {
     s1+=1436.0;
    }
   }
  }
 }
} else {
 if(i2<0.08676207065582275){
  if(i4<0.0009390115737915039){
   if(i42<0.014404470100998878){
    if(i74<7.758136780466884e-05){
     s0+=8.0;
     s1+=166.0;
    } else {
     s0+=75.0;
     s1+=25.0;
    }
   } else {
    if(i58<0.0058383941650390625){
     s0+=542.0;
     s1+=239.0;
    } else {
     s0+=441.0;
     s1+=3.0;
    }
   }
  } else {
   if(i70<3.6551682569552213e-06){
    s1+=380.0;
   } else {
    if(i8<1.1178693771362305){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i4<0.0006157159805297852){
   if(i39<0.05053073167800903){
    if(i3<0.9964983463287354){
     s0+=7.0;
    } else {
     s0+=36.0;
     s1+=1047.0;
    }
   } else {
    if(i66<0.0005408127326518297){
     s0+=306.0;
     s1+=311.0;
    } else {
     s0+=5.0;
     s1+=249.0;
    }
   }
  } else {
   if(i11<0.0014230012893676758){
    if(i50<1.0012214183807373){
     s0+=54.0;
     s1+=563.0;
    } else {
     s1+=694.0;
    }
   } else {
    s1+=7390.0;
   }
  }
 }
}
if(i1<0.07908213138580322){
 if(i8<1.0452215671539307){
  if(i4<0.0007367730140686035){
   if(i19<1.0451585054397583){
    if(i55<-0.0016289353370666504){
     s0+=1297.0;
     s1+=129.0;
    } else {
     s0+=52716.0;
     s1+=105.0;
    }
   } else {
    if(i63<-0.0023280084133148193){
     s0+=213.0;
     s1+=88.0;
    } else {
     s0+=7691.0;
     s1+=534.0;
    }
   }
  } else {
   if(i29<0.00016751090879552066){
    if(i24<0.9988671541213989){
     s1+=2.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i50<1.0023242235183716){
     s0+=1.0;
     s1+=97.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i20<0.00409940117970109){
   if(i22<0.00022995471954345703){
    if(i41<1.1037919521331787){
     s0+=1761.0;
     s1+=632.0;
    } else {
     s0+=4317.0;
     s1+=133.0;
    }
   } else {
    s1+=184.0;
   }
  } else {
   if(i56<1.4594801541534252e-05){
    if(i17<0.9989546537399292){
     s0+=11.0;
    } else {
     s1+=513.0;
    }
   } else {
    if(i33<0.002250652527436614){
     s0+=41.0;
     s1+=405.0;
    } else {
     s0+=1289.0;
     s1+=462.0;
    }
   }
  }
 }
} else {
 if(i6<-1.2258994502190035e-05){
  if(i13<-0.000432431697845459){
   if(i7<-8.973479270935059e-05){
    if(i10<0.9885029196739197){
     s1+=3.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=63.0;
   }
  } else {
   if(i22<0.00011116266250610352){
    if(i0<0.10780945420265198){
     s0+=391.0;
     s1+=788.0;
    } else {
     s0+=268.0;
     s1+=3492.0;
    }
   } else {
    if(i20<0.0025939950719475746){
     s0+=38.0;
     s1+=393.0;
    } else {
     s1+=8801.0;
    }
   }
  }
 } else {
  if(i44<0.058556586503982544){
   if(i74<0.00010695969103835523){
    if(i13<-0.0003960132598876953){
     s0+=21.0;
    } else {
     s0+=18.0;
     s1+=197.0;
    }
   } else {
    if(i17<1.0017715692520142){
     s0+=91.0;
     s1+=6.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i3<1.00169038772583){
    if(i43<0.0018770613241940737){
     s0+=759.0;
     s1+=39.0;
    } else {
     s0+=142.0;
     s1+=53.0;
    }
   } else {
    s1+=20.0;
   }
  }
 }
}
if(i5<0.06995564699172974){
 if(i2<0.08235225081443787){
  if(i12<1.0061482191085815){
   if(i8<1.0398929119110107){
    if(i58<-0.002239435911178589){
     s0+=3721.0;
     s1+=323.0;
    } else {
     s0+=54453.0;
     s1+=184.0;
    }
   } else {
    if(i36<0.9887434244155884){
     s0+=2104.0;
     s1+=891.0;
    } else {
     s0+=7827.0;
     s1+=760.0;
    }
   }
  } else {
   if(i33<0.0012855007080361247){
    s1+=482.0;
   } else {
    if(i15<3.6597251892089844e-05){
     s0+=577.0;
     s1+=28.0;
    } else {
     s0+=1.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i54<-0.0001392066478729248){
   s0+=295.0;
  } else {
   if(i4<-0.0005620718002319336){
    if(i43<0.00746978260576725){
     s0+=21.0;
     s1+=41.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i53<0.05414748191833496){
     s0+=42.0;
     s1+=1713.0;
    } else {
     s0+=12.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i66<0.00020678623695857823){
  if(i18<1.0023186206817627){
   if(i73<0.9995715618133545){
    if(i45<0.0006668160203844309){
     s0+=58.0;
     s1+=2.0;
    } else {
     s0+=62.0;
     s1+=221.0;
    }
   } else {
    if(i7<-3.167986869812012e-05){
     s0+=79.0;
     s1+=99.0;
    } else {
     s0+=490.0;
     s1+=68.0;
    }
   }
  } else {
   if(i73<1.0000009536743164){
    if(i61<-0.04258739948272705){
     s0+=9.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=353.0;
    }
   } else {
    if(i47<1.0000895261764526){
     s0+=26.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i22<5.131959915161133e-05){
   if(i50<0.9989761114120483){
    if(i42<0.5355454683303833){
     s0+=428.0;
     s1+=9.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i59<-0.00021708416170440614){
     s0+=338.0;
     s1+=2273.0;
    } else {
     s0+=611.0;
     s1+=863.0;
    }
   }
  } else {
   if(i34<1.0558182001113892){
    s0+=29.0;
   } else {
    if(i0<0.09719431400299072){
     s0+=54.0;
     s1+=147.0;
    } else {
     s0+=29.0;
     s1+=8398.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i17<1.001905918121338){
  if(i8<1.0428826808929443){
   if(i19<1.0447232723236084){
    if(i45<0.0003260777739342302){
     s0+=33683.0;
    } else {
     s0+=19405.0;
     s1+=204.0;
    }
   } else {
    if(i2<0.07664677500724792){
     s0+=7439.0;
     s1+=471.0;
    } else {
     s0+=157.0;
     s1+=241.0;
    }
   }
  } else {
   if(i0<0.06922745704650879){
    if(i35<1.1037919521331787){
     s0+=1354.0;
     s1+=392.0;
    } else {
     s0+=2647.0;
     s1+=94.0;
    }
   } else {
    if(i17<0.9982135891914368){
     s0+=53.0;
     s1+=3.0;
    } else {
     s0+=138.0;
     s1+=662.0;
    }
   }
  }
 } else {
  if(i50<1.0015873908996582){
   if(i73<1.0023859739303589){
    if(i20<0.0010818694718182087){
     s0+=15.0;
    } else {
     s0+=13.0;
     s1+=595.0;
    }
   } else {
    if(i26<1.004282832145691){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<1.0024452209472656){
    if(i48<-0.04047241806983948){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=285.0;
     s1+=7.0;
    }
   } else {
    if(i43<0.01178186945617199){
     s0+=7.0;
     s1+=124.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i2<0.09196853637695312){
  if(i48<0.007774174213409424){
   if(i40<-1.0512198059586808e-05){
    if(i34<1.101383090019226){
     s0+=33.0;
     s1+=574.0;
    } else {
     s0+=423.0;
     s1+=562.0;
    }
   } else {
    if(i11<0.0013590455055236816){
     s0+=2165.0;
     s1+=367.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   }
  } else {
   if(i3<1.0053105354309082){
    if(i46<0.0008489286410622299){
     s0+=127.0;
     s1+=76.0;
    } else {
     s0+=1728.0;
     s1+=36.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i17<0.9985363483428955){
   if(i30<1.4901387691497803){
    s0+=337.0;
   } else {
    if(i66<0.0007787892827764153){
     s0+=6.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i43<0.0005117261316627264){
    if(i8<1.073258876800537){
     s0+=20.0;
     s1+=34.0;
    } else {
     s0+=128.0;
    }
   } else {
    if(i34<1.3008317947387695){
     s0+=782.0;
     s1+=5862.0;
    } else {
     s0+=4.0;
     s1+=6883.0;
    }
   }
  }
 }
}
if(i3<1.0024676322937012){
 if(i46<0.00038351802504621446){
  if(i12<1.0042312145233154){
   if(i65<0.0003030873485840857){
    if(i16<1.0081148147583008){
     s0+=48952.0;
     s1+=74.0;
    } else {
     s0+=29.0;
     s1+=16.0;
    }
   } else {
    if(i56<5.9176825743634254e-05){
     s0+=38.0;
     s1+=49.0;
    } else {
     s0+=115.0;
     s1+=3.0;
    }
   }
  } else {
   if(i73<0.9998561143875122){
    if(i4<0.00020042061805725098){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=107.0;
    }
   } else {
    if(i55<0.0009909272193908691){
     s0+=215.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i18<0.9943339824676514){
   if(i23<1.021475076675415){
    if(i20<0.017949458211660385){
     s0+=12729.0;
     s1+=537.0;
    } else {
     s0+=43.0;
     s1+=85.0;
    }
   } else {
    if(i49<0.0018171225674450397){
     s0+=81.0;
     s1+=107.0;
    } else {
     s0+=2.0;
     s1+=137.0;
    }
   }
  } else {
   if(i6<-4.154037742409855e-05){
    if(i59<-0.0002748433907981962){
     s0+=189.0;
     s1+=1491.0;
    } else {
     s0+=699.0;
     s1+=461.0;
    }
   } else {
    if(i34<1.10614013671875){
     s0+=3141.0;
     s1+=2049.0;
    } else {
     s0+=4617.0;
     s1+=582.0;
    }
   }
  }
 }
} else {
 if(i6<-4.367733345134184e-05){
  if(i38<0.0001879951305454597){
   if(i35<1.2388319969177246){
    s1+=15.0;
   } else {
    s0+=24.0;
   }
  } else {
   if(i1<0.039875566959381104){
    if(i43<0.008494080975651741){
     s0+=13.0;
     s1+=203.0;
    } else {
     s0+=43.0;
     s1+=20.0;
    }
   } else {
    if(i2<0.13129520416259766){
     s0+=106.0;
     s1+=1843.0;
    } else {
     s0+=3.0;
     s1+=9030.0;
    }
   }
  }
 } else {
  if(i41<1.2388319969177246){
   if(i7<3.522634506225586e-05){
    if(i54<0.00021284818649291992){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=187.0;
   }
  } else {
   if(i65<0.0004355859709903598){
    s0+=171.0;
   } else {
    s1+=19.0;
   }
  }
 }
}
if(i27<1.0082027912139893){
 if(i42<0.03598007559776306){
  if(i52<-0.001922011375427246){
   if(i7<1.704692840576172e-05){
    if(i33<0.0003324343415442854){
     s0+=392.0;
    } else {
     s0+=572.0;
     s1+=294.0;
    }
   } else {
    if(i29<0.0001652174978516996){
     s0+=7.0;
    } else {
     s0+=7.0;
     s1+=295.0;
    }
   }
  } else {
   if(i5<0.08186620473861694){
    if(i7<4.6253204345703125e-05){
     s0+=58929.0;
     s1+=634.0;
    } else {
     s0+=191.0;
     s1+=129.0;
    }
   } else {
    if(i39<0.05384013056755066){
     s0+=18.0;
     s1+=107.0;
    } else {
     s0+=278.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i4<-0.0001964569091796875){
   if(i3<0.9964216351509094){
    if(i1<0.09283807873725891){
     s0+=4599.0;
     s1+=78.0;
    } else {
     s0+=163.0;
     s1+=74.0;
    }
   } else {
    if(i49<0.0006486987695097923){
     s0+=1026.0;
     s1+=98.0;
    } else {
     s0+=1094.0;
     s1+=719.0;
    }
   }
  } else {
   if(i8<1.037574291229248){
    if(i5<0.05333060026168823){
     s0+=283.0;
     s1+=46.0;
    } else {
     s0+=8.0;
     s1+=70.0;
    }
   } else {
    if(i1<0.07931742072105408){
     s0+=692.0;
     s1+=840.0;
    } else {
     s0+=202.0;
     s1+=2674.0;
    }
   }
  }
 }
} else {
 if(i12<1.006465196609497){
  if(i5<0.06476572155952454){
   if(i20<0.005845069419592619){
    if(i0<0.07226693630218506){
     s0+=1517.0;
     s1+=137.0;
    } else {
     s0+=30.0;
     s1+=149.0;
    }
   } else {
    if(i41<1.4221910238265991){
     s1+=104.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i28<0.0259163249284029){
    if(i34<1.1160385608673096){
     s0+=101.0;
     s1+=240.0;
    } else {
     s0+=395.0;
     s1+=88.0;
    }
   } else {
    if(i50<0.998696506023407){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=124.0;
     s1+=1073.0;
    }
   }
  }
 } else {
  if(i7<3.236532211303711e-05){
   if(i1<0.08218210935592651){
    if(i45<0.0011121598072350025){
     s1+=48.0;
    } else {
     s0+=264.0;
     s1+=9.0;
    }
   } else {
    if(i47<0.9998748302459717){
     s1+=402.0;
    } else {
     s0+=58.0;
     s1+=160.0;
    }
   }
  } else {
   if(i20<0.0022366377525031567){
    if(i37<0.0026567098684608936){
     s0+=1.0;
     s1+=127.0;
    } else {
     s0+=109.0;
     s1+=46.0;
    }
   } else {
    if(i0<0.05584216117858887){
     s0+=6.0;
     s1+=39.0;
    } else {
     s0+=4.0;
     s1+=8358.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i2<0.08367037773132324){
  if(i8<1.042891263961792){
   if(i58<-0.0017709136009216309){
    if(i71<0.09023445099592209){
     s0+=2417.0;
     s1+=478.0;
    } else {
     s0+=2484.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.08191418647766113){
     s0+=55362.0;
     s1+=186.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i13<-0.0003376305103302002){
    if(i55<-0.0005904138088226318){
     s0+=624.0;
     s1+=6.0;
    } else {
     s0+=1234.0;
    }
   } else {
    if(i37<0.0020223683677613735){
     s0+=2917.0;
     s1+=1136.0;
    } else {
     s0+=3478.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i54<-0.0001392066478729248){
   if(i69<-2.438586761854822e-06){
    if(i14<0.9903513193130493){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i71<0.562595009803772){
     s0+=650.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i59<-9.494533878751099e-05){
    if(i62<0.12199720740318298){
     s0+=692.0;
     s1+=2245.0;
    } else {
     s0+=11.0;
     s1+=737.0;
    }
   } else {
    if(i53<0.046742647886276245){
     s0+=79.0;
     s1+=329.0;
    } else {
     s0+=461.0;
     s1+=111.0;
    }
   }
  }
 }
} else {
 if(i34<1.055294156074524){
  s0+=191.0;
 } else {
  if(i4<0.0009405314922332764){
   if(i56<-1.161492764367722e-05){
    if(i2<0.08890092372894287){
     s0+=111.0;
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=166.0;
    }
   } else {
    if(i2<0.1320771872997284){
     s0+=145.0;
     s1+=515.0;
    } else {
     s0+=10.0;
     s1+=836.0;
    }
   }
  } else {
   if(i3<1.004560947418213){
    if(i31<0.01889515295624733){
     s0+=64.0;
     s1+=155.0;
    } else {
     s0+=1.0;
     s1+=614.0;
    }
   } else {
    if(i6<-0.00016665144357830286){
     s1+=6191.0;
    } else {
     s0+=26.0;
     s1+=3166.0;
    }
   }
  }
 }
}
if(i6<-8.167879423126578e-05){
 if(i2<0.0637739896774292){
  if(i21<1.0077580213546753){
   if(i53<-0.01932087540626526){
    if(i14<0.92881178855896){
     s0+=56.0;
     s1+=8.0;
    } else {
     s0+=34.0;
     s1+=101.0;
    }
   } else {
    if(i27<1.0135862827301025){
     s0+=498.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i30<1.594835877418518){
    if(i50<1.0007106065750122){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=124.0;
    }
   } else {
    if(i68<0.013166731223464012){
     s0+=33.0;
    } else {
     s0+=5.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i50<0.9978577494621277){
   s0+=31.0;
  } else {
   if(i22<-0.00040087103843688965){
    if(i41<1.5403209924697876){
     s0+=48.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=113.0;
    }
   } else {
    if(i22<-1.430511474609375e-06){
     s0+=55.0;
     s1+=1126.0;
    } else {
     s0+=4.0;
     s1+=9410.0;
    }
   }
  }
 }
} else {
 if(i13<0.00043660402297973633){
  if(i0<0.07842501997947693){
   if(i8<1.0410068035125732){
    if(i52<-0.0015491843223571777){
     s0+=1572.0;
     s1+=171.0;
    } else {
     s0+=56576.0;
     s1+=342.0;
    }
   } else {
    if(i0<0.06400790810585022){
     s0+=8036.0;
     s1+=779.0;
    } else {
     s0+=967.0;
     s1+=394.0;
    }
   }
  } else {
   if(i6<-1.380167668685317e-05){
    if(i15<-1.5616416931152344e-05){
     s0+=67.0;
     s1+=11.0;
    } else {
     s0+=445.0;
     s1+=2424.0;
    }
   } else {
    if(i54<-0.00013780593872070312){
     s0+=518.0;
    } else {
     s0+=702.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i4<0.0006050765514373779){
   if(i25<0.08675241470336914){
    if(i1<0.09731489419937134){
     s0+=1201.0;
     s1+=200.0;
    } else {
     s0+=4.0;
     s1+=123.0;
    }
   } else {
    if(i2<0.1613444983959198){
     s0+=56.0;
     s1+=42.0;
    } else {
     s0+=11.0;
     s1+=118.0;
    }
   }
  } else {
   if(i29<0.0001684749440755695){
    if(i8<1.046690821647644){
     s0+=83.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   } else {
    if(i43<0.007113404106348753){
     s0+=68.0;
     s1+=1154.0;
    } else {
     s0+=63.0;
     s1+=52.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i10<1.0080137252807617){
  if(i57<0.0006864508613944054){
   if(i9<1.0410068035125732){
    if(i13<0.000700533390045166){
     s0+=55818.0;
     s1+=384.0;
    } else {
     s0+=62.0;
     s1+=37.0;
    }
   } else {
    if(i6<-1.7504913557786494e-05){
     s0+=440.0;
     s1+=330.0;
    } else {
     s0+=1649.0;
     s1+=85.0;
    }
   }
  } else {
   if(i35<1.1823735237121582){
    if(i34<1.0547096729278564){
     s0+=1523.0;
     s1+=1.0;
    } else {
     s0+=818.0;
     s1+=949.0;
    }
   } else {
    if(i1<0.08711770176887512){
     s0+=4461.0;
     s1+=83.0;
    } else {
     s0+=5.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i19<1.0840181112289429){
   if(i29<0.00014559546252712607){
    if(i5<0.04810613393783569){
     s0+=26.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i56<0.00013451807899400592){
     s0+=5.0;
     s1+=470.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i66<0.0005735362065024674){
    if(i0<0.08532053232192993){
     s0+=122.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i60<0.31685492396354675){
     s1+=51.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
} else {
 if(i2<0.08502665162086487){
  if(i20<0.004442569334059954){
   if(i18<1.007411241531372){
    if(i34<1.0922304391860962){
     s0+=707.0;
     s1+=351.0;
    } else {
     s0+=3287.0;
     s1+=172.0;
    }
   } else {
    if(i6<-5.4417709179688245e-05){
     s1+=144.0;
    } else {
     s0+=17.0;
     s1+=4.0;
    }
   }
  } else {
   if(i34<1.1484851837158203){
    if(i23<0.9626940488815308){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=466.0;
    }
   } else {
    if(i4<0.0005709528923034668){
     s0+=705.0;
     s1+=133.0;
    } else {
     s0+=95.0;
     s1+=292.0;
    }
   }
  }
 } else {
  if(i20<0.004640540108084679){
   if(i6<-1.3797138308291323e-05){
    if(i48<0.024550557136535645){
     s0+=140.0;
     s1+=1469.0;
    } else {
     s0+=261.0;
     s1+=112.0;
    }
   } else {
    if(i25<0.06397995352745056){
     s0+=59.0;
     s1+=90.0;
    } else {
     s0+=696.0;
     s1+=139.0;
    }
   }
  } else {
   if(i0<0.10984665155410767){
    if(i51<0.0007993383333086967){
     s0+=128.0;
     s1+=73.0;
    } else {
     s0+=37.0;
     s1+=589.0;
    }
   } else {
    if(i17<0.9979872703552246){
     s0+=43.0;
    } else {
     s0+=44.0;
     s1+=10467.0;
    }
   }
  }
 }
}
if(i1<0.07910805940628052){
 if(i9<1.0406901836395264){
  if(i38<0.0002895880024880171){
   if(i40<-1.898335904115811e-05){
    if(i1<0.06489235162734985){
     s0+=272.0;
     s1+=20.0;
    } else {
     s0+=16.0;
     s1+=23.0;
    }
   } else {
    if(i50<1.0005428791046143){
     s0+=49465.0;
     s1+=134.0;
    } else {
     s0+=1992.0;
     s1+=86.0;
    }
   }
  } else {
   if(i8<1.0398870706558228){
    if(i41<1.2011767625808716){
     s0+=2866.0;
     s1+=417.0;
    } else {
     s0+=6301.0;
     s1+=27.0;
    }
   } else {
    if(i3<1.0022778511047363){
     s0+=2374.0;
     s1+=586.0;
    } else {
     s0+=7.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i22<0.00013461709022521973){
   if(i41<1.1037919521331787){
    if(i12<1.0034031867980957){
     s0+=1525.0;
     s1+=497.0;
    } else {
     s0+=47.0;
     s1+=229.0;
    }
   } else {
    if(i10<0.9787585139274597){
     s0+=68.0;
     s1+=131.0;
    } else {
     s0+=4162.0;
     s1+=349.0;
    }
   }
  } else {
   if(i40<-1.4425161680264864e-05){
    if(i35<1.0611095428466797){
     s0+=2.0;
    } else {
     s1+=583.0;
    }
   } else {
    if(i31<0.00993738416582346){
     s0+=108.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i45<0.006297966931015253){
  if(i50<0.9991060495376587){
   if(i15<-1.7374753952026367e-05){
    s0+=371.0;
   } else {
    if(i50<0.997954249382019){
     s0+=51.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   }
  } else {
   if(i44<0.058860599994659424){
    if(i69<1.7199351987073896e-06){
     s0+=89.0;
     s1+=2966.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i1<0.1190640926361084){
     s0+=714.0;
     s1+=280.0;
    } else {
     s0+=359.0;
     s1+=1180.0;
    }
   }
  }
 } else {
  if(i0<0.10025402903556824){
   if(i44<0.05663555860519409){
    if(i48<0.012941837310791016){
     s0+=2.0;
     s1+=123.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i68<0.002008950337767601){
     s0+=98.0;
     s1+=5.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i32<0.9967894554138184){
    if(i0<0.13113340735435486){
     s0+=34.0;
     s1+=194.0;
    } else {
     s0+=22.0;
     s1+=1526.0;
    }
   } else {
    if(i6<-3.536659642122686e-05){
     s0+=7.0;
     s1+=7645.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i7<3.463029861450195e-05){
 if(i0<0.08195626735687256){
  if(i19<1.0485899448394775){
   if(i43<0.00035669858334586024){
    if(i26<1.0350744724273682){
     s0+=33955.0;
    } else {
     s0+=806.0;
     s1+=2.0;
    }
   } else {
    if(i48<-0.00612872838973999){
     s0+=226.0;
     s1+=126.0;
    } else {
     s0+=20630.0;
     s1+=216.0;
    }
   }
  } else {
   if(i43<0.0014479858800768852){
    if(i6<-2.340653009014204e-05){
     s0+=217.0;
     s1+=552.0;
    } else {
     s0+=5397.0;
     s1+=796.0;
    }
   } else {
    if(i51<0.01112407073378563){
     s0+=6846.0;
     s1+=119.0;
    } else {
     s0+=705.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i44<0.06095856428146362){
   if(i15<-1.7702579498291016e-05){
    s0+=85.0;
   } else {
    if(i0<0.08674019575119019){
     s0+=86.0;
     s1+=183.0;
    } else {
     s0+=27.0;
     s1+=1809.0;
    }
   }
  } else {
   if(i2<0.1277458667755127){
    if(i30<1.1039612293243408){
     s0+=146.0;
     s1+=95.0;
    } else {
     s0+=677.0;
     s1+=52.0;
    }
   } else {
    if(i33<0.006045833230018616){
     s0+=480.0;
     s1+=434.0;
    } else {
     s0+=17.0;
     s1+=652.0;
    }
   }
  }
 }
} else {
 if(i47<0.9993402361869812){
  s0+=469.0;
 } else {
  if(i1<0.06640732288360596){
   if(i41<1.2314128875732422){
    if(i67<-0.0059066470712423325){
     s0+=1.0;
    } else {
     s1+=560.0;
    }
   } else {
    if(i57<0.0006489843945018947){
     s0+=183.0;
     s1+=9.0;
    } else {
     s0+=114.0;
     s1+=254.0;
    }
   }
  } else {
   if(i8<1.1363511085510254){
    if(i52<0.007264077663421631){
     s0+=92.0;
     s1+=3951.0;
    } else {
     s0+=96.0;
     s1+=212.0;
    }
   } else {
    if(i49<0.00013837902224622667){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=6771.0;
    }
   }
  }
 }
}
if(i0<0.08316195011138916){
 if(i11<0.0011587142944335938){
  if(i3<1.0024688243865967){
   if(i68<0.0015338389202952385){
    if(i38<0.0002821004600264132){
     s0+=52053.0;
     s1+=206.0;
    } else {
     s0+=10661.0;
     s1+=794.0;
    }
   } else {
    if(i3<0.9965623617172241){
     s0+=3156.0;
     s1+=83.0;
    } else {
     s0+=3470.0;
     s1+=963.0;
    }
   }
  } else {
   if(i35<1.2160736322402954){
    if(i20<0.001030931482091546){
     s0+=6.0;
    } else {
     s0+=4.0;
     s1+=288.0;
    }
   } else {
    if(i65<0.00030299770878627896){
     s0+=100.0;
     s1+=3.0;
    } else {
     s0+=46.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i30<1.2392117977142334){
   s1+=411.0;
  } else {
   if(i20<0.0024955528788268566){
    s0+=121.0;
   } else {
    s1+=55.0;
   }
  }
 }
} else {
 if(i17<0.9985139966011047){
  if(i56<0.00017988620675168931){
   if(i40<-1.0199353710049763e-05){
    if(i67<-0.003400370478630066){
     s0+=23.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=436.0;
   }
  } else {
   if(i20<0.0030304472893476486){
    s0+=3.0;
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i20<0.001680481480434537){
   if(i56<-3.1632160244043916e-05){
    s1+=125.0;
   } else {
    if(i9<1.0497591495513916){
     s0+=32.0;
     s1+=114.0;
    } else {
     s0+=524.0;
     s1+=88.0;
    }
   }
  } else {
   if(i11<-5.367398262023926e-05){
    if(i48<0.016243159770965576){
     s0+=109.0;
     s1+=1946.0;
    } else {
     s0+=440.0;
     s1+=973.0;
    }
   } else {
    if(i73<0.9964355230331421){
     s0+=3.0;
    } else {
     s0+=64.0;
     s1+=10719.0;
    }
   }
  }
 }
}
if(i6<-7.496170292142779e-05){
 if(i56<0.000273692246992141){
  if(i50<0.9979676008224487){
   s0+=167.0;
  } else {
   if(i1<0.0056587159633636475){
    if(i16<0.971134603023529){
     s0+=95.0;
     s1+=9.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i22<-0.0003565549850463867){
     s0+=57.0;
     s1+=81.0;
    } else {
     s0+=119.0;
     s1+=10921.0;
    }
   }
  }
 } else {
  if(i11<-0.0036477744579315186){
   if(i26<1.0773394107818604){
    if(i66<0.001945086638443172){
     s0+=537.0;
     s1+=5.0;
    } else {
     s0+=15.0;
     s1+=23.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i49<0.00536290742456913){
    if(i8<1.3110358715057373){
     s0+=18.0;
    } else {
     s1+=11.0;
    }
   } else {
    s1+=224.0;
   }
  }
 }
} else {
 if(i19<1.0495078563690186){
  if(i36<0.9738965630531311){
   if(i4<-0.0002957284450531006){
    if(i35<1.0703742504119873){
     s0+=714.0;
    } else {
     s0+=380.0;
     s1+=51.0;
    }
   } else {
    if(i41<1.0600991249084473){
     s0+=74.0;
    } else {
     s0+=1.0;
     s1+=60.0;
    }
   }
  } else {
   if(i21<1.001317024230957){
    if(i60<0.04687690734863281){
     s0+=49620.0;
     s1+=113.0;
    } else {
     s0+=3822.0;
     s1+=121.0;
    }
   } else {
    if(i20<0.0015603352803736925){
     s0+=1309.0;
    } else {
     s0+=383.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i11<0.0010280013084411621){
   if(i4<0.00018531084060668945){
    if(i2<0.0770484209060669){
     s0+=10862.0;
     s1+=1075.0;
    } else {
     s0+=1468.0;
     s1+=1932.0;
    }
   } else {
    if(i35<1.150278091430664){
     s0+=99.0;
     s1+=829.0;
    } else {
     s0+=1062.0;
     s1+=845.0;
    }
   }
  } else {
   if(i34<1.145219087600708){
    if(i41<1.07004976272583){
     s0+=17.0;
    } else {
     s1+=718.0;
    }
   } else {
    if(i9<1.1418626308441162){
     s0+=207.0;
     s1+=6.0;
    } else {
     s1+=30.0;
    }
   }
  }
 }
}
if(i5<0.07194694876670837){
 if(i21<1.0031788349151611){
  if(i8<1.0449585914611816){
   if(i0<0.08318749070167542){
    if(i19<1.0451585054397583){
     s0+=53735.0;
     s1+=203.0;
    } else {
     s0+=7468.0;
     s1+=555.0;
    }
   } else {
    if(i43<0.00043557537719607353){
     s0+=63.0;
    } else {
     s0+=12.0;
     s1+=119.0;
    }
   }
  } else {
   if(i2<0.07901611924171448){
    if(i3<1.0012588500976562){
     s0+=6226.0;
     s1+=746.0;
    } else {
     s0+=447.0;
     s1+=355.0;
    }
   } else {
    if(i17<0.9983965754508972){
     s0+=86.0;
     s1+=6.0;
    } else {
     s0+=88.0;
     s1+=780.0;
    }
   }
  }
 } else {
  if(i70<1.0737402590166312e-05){
   if(i69<-5.297619281918742e-06){
    if(i18<0.9964928030967712){
     s0+=17.0;
     s1+=17.0;
    } else {
     s0+=27.0;
     s1+=1531.0;
    }
   } else {
    if(i12<0.9993933439254761){
     s0+=2.0;
     s1+=75.0;
    } else {
     s0+=141.0;
     s1+=63.0;
    }
   }
  } else {
   if(i9<1.0716731548309326){
    if(i63<-0.0023256242275238037){
     s0+=76.0;
     s1+=34.0;
    } else {
     s0+=656.0;
     s1+=13.0;
    }
   } else {
    if(i6<-4.061564686708152e-05){
     s0+=7.0;
     s1+=108.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015792846679688){
  if(i28<0.028282690793275833){
   if(i13<-0.00038373470306396484){
    if(i45<0.008514813147485256){
     s0+=308.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i64<0.036730170249938965){
     s0+=402.0;
     s1+=610.0;
    } else {
     s0+=656.0;
     s1+=172.0;
    }
   }
  } else {
   if(i13<-0.0004031956195831299){
    if(i30<1.255998969078064){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=204.0;
    }
   } else {
    if(i44<0.05847811698913574){
     s0+=15.0;
     s1+=818.0;
    } else {
     s0+=225.0;
     s1+=933.0;
    }
   }
  }
 } else {
  if(i32<1.010197639465332){
   if(i7<5.716085433959961e-05){
    if(i1<0.156489759683609){
     s0+=130.0;
     s1+=188.0;
    } else {
     s0+=1.0;
     s1+=369.0;
    }
   } else {
    if(i11<0.0002599954605102539){
     s0+=50.0;
     s1+=830.0;
    } else {
     s0+=1.0;
     s1+=1046.0;
    }
   }
  } else {
   if(i18<1.002604365348816){
    if(i33<0.0022809095680713654){
     s0+=13.0;
     s1+=27.0;
    } else {
     s0+=4.0;
     s1+=658.0;
    }
   } else {
    if(i14<1.0202921628952026){
     s0+=1.0;
     s1+=761.0;
    } else {
     s1+=6143.0;
    }
   }
  }
 }
}
if(i6<-8.143010927597061e-05){
 if(i4<0.0001004636287689209){
  if(i5<0.07756981253623962){
   if(i63<-0.007351219654083252){
    if(i58<-0.0452842116355896){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i23<1.0115331411361694){
     s0+=534.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<1.3528574705123901){
    if(i53<0.049677491188049316){
     s1+=12.0;
    } else {
     s0+=17.0;
    }
   } else {
    s1+=225.0;
   }
  }
 } else {
  if(i2<0.037149131298065186){
   if(i56<0.00013825841597281396){
    if(i65<-0.00013883465726394206){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=62.0;
    }
   } else {
    if(i49<0.00546268280595541){
     s0+=98.0;
     s1+=12.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i22<-0.0003688037395477295){
    if(i57<0.001956632360816002){
     s0+=38.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=83.0;
    }
   } else {
    if(i3<1.005795955657959){
     s0+=73.0;
     s1+=2442.0;
    } else {
     s0+=1.0;
     s1+=8205.0;
    }
   }
  }
 }
} else {
 if(i5<0.07071217894554138){
  if(i1<0.07751694321632385){
   if(i19<1.0485899448394775){
    if(i52<-0.0017414391040802002){
     s0+=745.0;
     s1+=96.0;
    } else {
     s0+=54633.0;
     s1+=272.0;
    }
   } else {
    if(i37<0.0016373794060200453){
     s0+=4374.0;
     s1+=1722.0;
    } else {
     s0+=8266.0;
     s1+=349.0;
    }
   }
  } else {
   if(i54<-0.00014734268188476562){
    s0+=62.0;
   } else {
    if(i30<1.4901387691497803){
     s0+=25.0;
     s1+=830.0;
    } else {
     s0+=20.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i54<-0.00013971328735351562){
   if(i17<0.9980716705322266){
    s0+=430.0;
   } else {
    if(i73<0.9987767934799194){
     s1+=32.0;
    } else {
     s0+=48.0;
     s1+=2.0;
    }
   }
  } else {
   if(i44<0.05393990874290466){
    if(i30<1.4901387691497803){
     s0+=64.0;
     s1+=1237.0;
    } else {
     s0+=82.0;
     s1+=74.0;
    }
   } else {
    if(i18<1.0010958909988403){
     s0+=1184.0;
     s1+=1041.0;
    } else {
     s0+=177.0;
     s1+=595.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i19<1.0486011505126953){
  if(i68<0.0015895779943093657){
   if(i2<0.07878583669662476){
    if(i60<0.04734060913324356){
     s0+=50281.0;
     s1+=94.0;
    } else {
     s0+=3152.0;
     s1+=85.0;
    }
   } else {
    if(i58<-0.0023127198219299316){
     s0+=4.0;
     s1+=13.0;
    } else {
     s0+=529.0;
     s1+=40.0;
    }
   }
  } else {
   if(i33<0.0003022387681994587){
    s0+=755.0;
   } else {
    if(i33<0.000941235339269042){
     s0+=181.0;
     s1+=182.0;
    } else {
     s0+=789.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i5<0.05925548076629639){
   if(i15<2.6881694793701172e-05){
    if(i0<0.06888747215270996){
     s0+=8747.0;
     s1+=692.0;
    } else {
     s0+=50.0;
     s1+=283.0;
    }
   } else {
    if(i22<-0.00038620829582214355){
     s0+=125.0;
     s1+=4.0;
    } else {
     s0+=21.0;
     s1+=294.0;
    }
   }
  } else {
   if(i63<0.0010800957679748535){
    if(i72<0.9929654598236084){
     s0+=18.0;
    } else {
     s0+=51.0;
     s1+=483.0;
    }
   } else {
    if(i48<0.012712210416793823){
     s0+=255.0;
     s1+=499.0;
    } else {
     s0+=151.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i7<1.913309097290039e-05){
  if(i20<0.004970562644302845){
   if(i41<1.253311276435852){
    if(i2<0.0915621817111969){
     s0+=2518.0;
     s1+=448.0;
    } else {
     s0+=456.0;
     s1+=709.0;
    }
   } else {
    if(i72<1.000373125076294){
     s0+=1384.0;
     s1+=27.0;
    } else {
     s0+=283.0;
     s1+=91.0;
    }
   }
  } else {
   if(i47<1.000346064567566){
    if(i54<-0.00022786855697631836){
     s0+=143.0;
     s1+=16.0;
    } else {
     s0+=58.0;
     s1+=1192.0;
    }
   } else {
    if(i5<0.1057441234588623){
     s0+=250.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i3<1.002935528755188){
   if(i66<0.0002086533058900386){
    if(i11<0.0009518861770629883){
     s0+=189.0;
     s1+=32.0;
    } else {
     s0+=18.0;
     s1+=98.0;
    }
   } else {
    if(i38<0.010416554287075996){
     s0+=427.0;
     s1+=954.0;
    } else {
     s0+=18.0;
     s1+=631.0;
    }
   }
  } else {
   if(i16<1.0352118015289307){
    if(i1<0.058539897203445435){
     s0+=86.0;
     s1+=350.0;
    } else {
     s0+=90.0;
     s1+=4059.0;
    }
   } else {
    if(i22<6.377696990966797e-06){
     s0+=6.0;
     s1+=122.0;
    } else {
     s1+=5748.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i1<0.07712078094482422){
  if(i68<0.0015213002916425467){
   if(i3<1.0025017261505127){
    if(i60<0.042388200759887695){
     s0+=53337.0;
     s1+=276.0;
    } else {
     s0+=6164.0;
     s1+=346.0;
    }
   } else {
    if(i69<-5.308414074534085e-06){
     s0+=3.0;
     s1+=115.0;
    } else {
     s0+=76.0;
    }
   }
  } else {
   if(i7<3.5822391510009766e-05){
    if(i11<-0.001970261335372925){
     s0+=2362.0;
     s1+=53.0;
    } else {
     s0+=2900.0;
     s1+=695.0;
    }
   } else {
    if(i55<0.0004590153694152832){
     s0+=34.0;
     s1+=284.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i18<0.9942111968994141){
   if(i3<0.9945751428604126){
    if(i44<0.08760502934455872){
     s0+=170.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i25<0.0817171037197113){
     s0+=66.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   }
  } else {
   if(i43<0.0004552179598249495){
    if(i28<0.016107425093650818){
     s0+=45.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i19<1.0469107627868652){
     s0+=21.0;
     s1+=21.0;
    } else {
     s0+=21.0;
     s1+=965.0;
    }
   }
  }
 }
} else {
 if(i32<1.0068156719207764){
  if(i6<-1.650801823416259e-05){
   if(i20<0.008190636523067951){
    if(i28<0.02145460993051529){
     s0+=1052.0;
     s1+=379.0;
    } else {
     s0+=338.0;
     s1+=1150.0;
    }
   } else {
    if(i70<3.2385418307967484e-05){
     s0+=70.0;
     s1+=2138.0;
    } else {
     s0+=95.0;
     s1+=281.0;
    }
   }
  } else {
   if(i13<0.0006112456321716309){
    if(i33<0.005448729731142521){
     s0+=3115.0;
     s1+=272.0;
    } else {
     s0+=162.0;
     s1+=135.0;
    }
   } else {
    s1+=63.0;
   }
  }
 } else {
  if(i15<1.7821788787841797e-05){
   if(i1<0.07471507787704468){
    if(i8<1.0729780197143555){
     s0+=84.0;
     s1+=167.0;
    } else {
     s0+=516.0;
     s1+=35.0;
    }
   } else {
    if(i4<0.00014767050743103027){
     s0+=178.0;
     s1+=341.0;
    } else {
     s0+=72.0;
     s1+=1602.0;
    }
   }
  } else {
   if(i4<0.00047838687896728516){
    if(i40<-2.38657885347493e-05){
     s1+=79.0;
    } else {
     s0+=59.0;
     s1+=2.0;
    }
   } else {
    if(i4<0.0011066198348999023){
     s0+=28.0;
     s1+=445.0;
    } else {
     s1+=7352.0;
    }
   }
  }
 }
}
if(i3<1.00246000289917){
 if(i10<1.0081526041030884){
  if(i46<0.00047395334695465863){
   if(i14<1.0063247680664062){
    if(i65<0.00028584690880961716){
     s0+=50809.0;
     s1+=177.0;
    } else {
     s0+=372.0;
     s1+=88.0;
    }
   } else {
    if(i8<1.045343279838562){
     s0+=92.0;
    } else {
     s0+=52.0;
     s1+=69.0;
    }
   }
  } else {
   if(i7<5.364418029785156e-07){
    if(i5<0.0665578544139862){
     s0+=15185.0;
     s1+=1077.0;
    } else {
     s0+=1255.0;
     s1+=894.0;
    }
   } else {
    if(i65<0.0002777782501652837){
     s0+=1244.0;
     s1+=433.0;
    } else {
     s0+=641.0;
     s1+=1162.0;
    }
   }
  }
 } else {
  if(i34<1.1091103553771973){
   if(i20<0.0015787484589964151){
    if(i11<0.0005179047584533691){
     s0+=81.0;
    } else {
     s1+=81.0;
    }
   } else {
    if(i8<1.0440565347671509){
     s0+=6.0;
     s1+=7.0;
    } else {
     s1+=619.0;
    }
   }
  } else {
   if(i43<0.0011891087051481009){
    if(i37<0.0019894158467650414){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=301.0;
     s1+=2.0;
    }
   } else {
    if(i62<0.0696144700050354){
     s0+=611.0;
     s1+=586.0;
    } else {
     s0+=122.0;
     s1+=628.0;
    }
   }
  }
 }
} else {
 if(i4<0.000946044921875){
  if(i66<0.00046109920367598534){
   if(i74<0.00010389700764790177){
    if(i29<0.0001974089100258425){
     s0+=38.0;
     s1+=35.0;
    } else {
     s0+=21.0;
     s1+=411.0;
    }
   } else {
    if(i57<0.004417603835463524){
     s0+=167.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i32<0.9969800114631653){
    if(i62<0.07184009999036789){
     s0+=42.0;
     s1+=21.0;
    } else {
     s0+=4.0;
     s1+=120.0;
    }
   } else {
    s1+=679.0;
   }
  }
 } else {
  if(i4<0.0014882087707519531){
   if(i14<0.9978677034378052){
    if(i1<0.035941869020462036){
     s0+=28.0;
     s1+=33.0;
    } else {
     s0+=17.0;
     s1+=420.0;
    }
   } else {
    if(i56<9.141195914708078e-05){
     s1+=1107.0;
    } else {
     s0+=34.0;
     s1+=297.0;
    }
   }
  } else {
   if(i32<0.9936313629150391){
    if(i65<0.0008623878238722682){
     s0+=13.0;
     s1+=43.0;
    } else {
     s0+=7.0;
     s1+=479.0;
    }
   } else {
    if(i14<1.0043705701828003){
     s0+=1.0;
     s1+=369.0;
    } else {
     s1+=7245.0;
    }
   }
  }
 }
}
if(i10<1.0081671476364136){
 if(i5<0.07536935806274414){
  if(i4<0.0006026923656463623){
   if(i29<0.0003084782510995865){
    if(i19<1.0451585054397583){
     s0+=49762.0;
     s1+=124.0;
    } else {
     s0+=6868.0;
     s1+=506.0;
    }
   } else {
    if(i1<0.08023625612258911){
     s0+=11485.0;
     s1+=1371.0;
    } else {
     s0+=79.0;
     s1+=362.0;
    }
   }
  } else {
   if(i34<1.0533727407455444){
    s0+=60.0;
   } else {
    if(i55<0.0024759769439697266){
     s0+=112.0;
     s1+=641.0;
    } else {
     s0+=37.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<0.11008182168006897){
   if(i53<0.05091094970703125){
    if(i39<0.049091637134552){
     s0+=71.0;
     s1+=458.0;
    } else {
     s0+=236.0;
     s1+=122.0;
    }
   } else {
    if(i67<-0.004571673460304737){
     s0+=404.0;
    } else {
     s0+=104.0;
     s1+=35.0;
    }
   }
  } else {
   if(i6<-1.5347486623795703e-05){
    if(i21<1.0014829635620117){
     s0+=98.0;
     s1+=646.0;
    } else {
     s0+=19.0;
     s1+=1763.0;
    }
   } else {
    if(i45<0.0039159925654530525){
     s0+=365.0;
     s1+=63.0;
    } else {
     s0+=18.0;
     s1+=68.0;
    }
   }
  }
 }
} else {
 if(i28<0.02763967402279377){
  if(i11<0.0014307498931884766){
   if(i41<1.1063789129257202){
    if(i20<0.0015669006388634443){
     s0+=55.0;
     s1+=38.0;
    } else {
     s0+=2.0;
     s1+=522.0;
    }
   } else {
    if(i7<6.109476089477539e-05){
     s0+=980.0;
     s1+=362.0;
    } else {
     s0+=23.0;
     s1+=199.0;
    }
   }
  } else {
   if(i38<0.00018236020696349442){
    s0+=2.0;
   } else {
    if(i5<0.020058929920196533){
     s0+=4.0;
     s1+=70.0;
    } else {
     s0+=1.0;
     s1+=2192.0;
    }
   }
  }
 } else {
  if(i33<0.005758792161941528){
   if(i60<0.287332147359848){
    if(i2<0.07289943099021912){
     s0+=51.0;
     s1+=70.0;
    } else {
     s0+=42.0;
     s1+=875.0;
    }
   } else {
    if(i20<0.0062873829156160355){
     s0+=94.0;
     s1+=38.0;
    } else {
     s1+=93.0;
    }
   }
  } else {
   if(i5<0.0022326111793518066){
    if(i13<0.0008619427680969238){
     s0+=7.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i22<-0.00017398595809936523){
     s0+=5.0;
     s1+=128.0;
    } else {
     s0+=4.0;
     s1+=6503.0;
    }
   }
  }
 }
}
if(i0<0.08355346322059631){
 if(i55<-0.0012956559658050537){
  if(i11<-0.0019838809967041016){
   if(i10<0.9361836314201355){
    if(i2<0.016107618808746338){
     s0+=120.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=44.0;
    }
   } else {
    if(i4<0.0006625056266784668){
     s0+=2777.0;
     s1+=66.0;
    } else {
     s0+=52.0;
     s1+=32.0;
    }
   }
  } else {
   if(i50<1.000961422920227){
    if(i45<0.0003875603142660111){
     s0+=1200.0;
     s1+=16.0;
    } else {
     s0+=1879.0;
     s1+=945.0;
    }
   } else {
    if(i32<0.9821110367774963){
     s0+=36.0;
     s1+=81.0;
    } else {
     s0+=11.0;
     s1+=348.0;
    }
   }
  }
 } else {
  if(i0<0.06921815872192383){
   if(i21<1.0015692710876465){
    if(i19<1.0486011505126953){
     s0+=52060.0;
     s1+=62.0;
    } else {
     s0+=8011.0;
     s1+=527.0;
    }
   } else {
    if(i6<-5.06263313582167e-05){
     s0+=173.0;
     s1+=203.0;
    } else {
     s0+=1622.0;
     s1+=149.0;
    }
   }
  } else {
   if(i32<1.004171371459961){
    if(i25<0.046041786670684814){
     s0+=55.0;
     s1+=151.0;
    } else {
     s0+=1591.0;
     s1+=104.0;
    }
   } else {
    if(i44<0.04196441173553467){
     s0+=28.0;
     s1+=408.0;
    } else {
     s0+=156.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i17<0.998518705368042){
  if(i40<-8.182229976227973e-06){
   if(i43<0.0010990723967552185){
    s0+=14.0;
   } else {
    if(i57<0.0002628159418236464){
     s0+=3.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   s0+=424.0;
  }
 } else {
  if(i28<0.030533183366060257){
   if(i39<0.05342486500740051){
    if(i48<0.019605517387390137){
     s0+=52.0;
     s1+=3143.0;
    } else {
     s0+=89.0;
     s1+=179.0;
    }
   } else {
    if(i12<1.0076990127563477){
     s0+=780.0;
     s1+=285.0;
    } else {
     s0+=25.0;
     s1+=486.0;
    }
   }
  } else {
   if(i66<0.0001866955281002447){
    if(i29<0.006187272258102894){
     s0+=13.0;
     s1+=372.0;
    } else {
     s0+=57.0;
     s1+=20.0;
    }
   } else {
    if(i59<-0.0002150402287952602){
     s0+=28.0;
     s1+=8187.0;
    } else {
     s0+=75.0;
     s1+=1059.0;
    }
   }
  }
 }
}
if(i26<1.0406770706176758){
 if(i0<0.07862547039985657){
  if(i11<0.0012152791023254395){
   if(i4<0.0006022751331329346){
    if(i57<0.0007801682804711163){
     s0+=59823.0;
     s1+=648.0;
    } else {
     s0+=6697.0;
     s1+=975.0;
    }
   } else {
    if(i29<0.00020511932962108403){
     s0+=132.0;
     s1+=22.0;
    } else {
     s0+=74.0;
     s1+=377.0;
    }
   }
  } else {
   if(i15<1.8715858459472656e-05){
    if(i37<0.0019146113190799952){
     s1+=37.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i69<-4.518454716162523e-06){
     s0+=1.0;
     s1+=255.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i21<0.9942126274108887){
   if(i57<0.0034991458524018526){
    if(i0<0.2835236191749573){
     s0+=159.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i30<1.0840110778808594){
    s0+=45.0;
   } else {
    if(i19<1.045006275177002){
     s0+=79.0;
     s1+=31.0;
    } else {
     s0+=59.0;
     s1+=2427.0;
    }
   }
  }
 }
} else {
 if(i31<0.023799974471330643){
  if(i7<4.0471553802490234e-05){
   if(i0<0.09566336870193481){
    if(i46<0.0014976232778280973){
     s0+=1027.0;
     s1+=391.0;
    } else {
     s0+=1643.0;
     s1+=35.0;
    }
   } else {
    if(i6<-1.1622358215390705e-05){
     s0+=305.0;
     s1+=916.0;
    } else {
     s0+=348.0;
     s1+=62.0;
    }
   }
  } else {
   if(i0<0.0682208240032196){
    if(i34<1.1759474277496338){
     s0+=5.0;
     s1+=58.0;
    } else {
     s0+=92.0;
     s1+=1.0;
    }
   } else {
    if(i32<1.0017099380493164){
     s0+=109.0;
     s1+=90.0;
    } else {
     s0+=27.0;
     s1+=1758.0;
    }
   }
  }
 } else {
  if(i13<-0.0002675652503967285){
   if(i6<-6.070786184864119e-05){
    s1+=7.0;
   } else {
    if(i30<1.255998969078064){
     s0+=12.0;
     s1+=7.0;
    } else {
     s0+=305.0;
     s1+=2.0;
    }
   }
  } else {
   if(i22<-0.0005509257316589355){
    if(i74<0.0002287801034981385){
     s0+=121.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i49<0.0009427798795513809){
     s0+=96.0;
     s1+=484.0;
    } else {
     s0+=44.0;
     s1+=8331.0;
    }
   }
  }
 }
}
if(i2<0.08262783288955688){
 if(i11<0.0011547207832336426){
  if(i4<0.0005737543106079102){
   if(i8<1.042891263961792){
    if(i55<-0.0012197792530059814){
     s0+=4365.0;
     s1+=377.0;
    } else {
     s0+=56160.0;
     s1+=232.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=2431.0;
     s1+=955.0;
    } else {
     s0+=5727.0;
     s1+=378.0;
    }
   }
  } else {
   if(i43<0.0003803689905907959){
    s0+=110.0;
   } else {
    if(i20<0.002778401365503669){
     s0+=73.0;
     s1+=14.0;
    } else {
     s0+=121.0;
     s1+=531.0;
    }
   }
  }
 } else {
  if(i40<-1.4974414625612553e-05){
   s1+=429.0;
  } else {
   if(i69<-1.9758781490963884e-06){
    s0+=105.0;
   } else {
    s1+=29.0;
   }
  }
 }
} else {
 if(i4<0.0001367628574371338){
  if(i50<0.9990042448043823){
   if(i33<0.026523761451244354){
    if(i17<0.9980449676513672){
     s0+=628.0;
    } else {
     s0+=10.0;
     s1+=12.0;
    }
   } else {
    if(i40<-1.556818824610673e-05){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i39<0.043147921562194824){
    if(i17<0.998499870300293){
     s0+=18.0;
     s1+=4.0;
    } else {
     s0+=51.0;
     s1+=1239.0;
    }
   } else {
    if(i37<0.008598506450653076){
     s0+=853.0;
     s1+=464.0;
    } else {
     s0+=39.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i0<0.1181688904762268){
   if(i67<-0.005212652962654829){
    if(i52<0.0027273893356323242){
     s0+=3.0;
     s1+=46.0;
    } else {
     s0+=288.0;
     s1+=24.0;
    }
   } else {
    if(i3<0.9986423850059509){
     s0+=6.0;
    } else {
     s0+=68.0;
     s1+=1421.0;
    }
   }
  } else {
   if(i49<0.00013979300274513662){
    if(i5<0.1328463852405548){
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   } else {
    if(i35<1.2582359313964844){
     s0+=120.0;
     s1+=2009.0;
    } else {
     s0+=10.0;
     s1+=8579.0;
    }
   }
  }
 }
}
if(i7<3.832578659057617e-05){
 if(i16<1.0072929859161377){
  if(i60<0.05674983561038971){
   if(i42<0.04049988090991974){
    if(i55<-0.002360731363296509){
     s0+=102.0;
     s1+=138.0;
    } else {
     s0+=57133.0;
     s1+=473.0;
    }
   } else {
    if(i32<0.9891887903213501){
     s0+=398.0;
     s1+=47.0;
    } else {
     s0+=138.0;
     s1+=218.0;
    }
   }
  } else {
   if(i1<0.08150610327720642){
    if(i53<0.006913870573043823){
     s0+=3279.0;
     s1+=824.0;
    } else {
     s0+=5869.0;
     s1+=238.0;
    }
   } else {
    if(i6<-6.527612640638836e-06){
     s0+=170.0;
     s1+=1313.0;
    } else {
     s0+=411.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i49<0.0019104216480627656){
   if(i34<1.082922339439392){
    if(i22<3.013014793395996e-05){
     s0+=228.0;
     s1+=142.0;
    } else {
     s0+=32.0;
     s1+=530.0;
    }
   } else {
    if(i28<0.028935717418789864){
     s0+=2016.0;
     s1+=240.0;
    } else {
     s0+=239.0;
     s1+=529.0;
    }
   }
  } else {
   if(i0<0.07224994897842407){
    if(i12<1.0005006790161133){
     s0+=144.0;
     s1+=8.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i47<1.0003749132156372){
     s0+=27.0;
     s1+=812.0;
    } else {
     s0+=32.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i41<1.0762357711791992){
  s0+=314.0;
 } else {
  if(i3<1.0041277408599854){
   if(i2<0.13650986552238464){
    if(i33<0.002460992895066738){
     s0+=3.0;
     s1+=351.0;
    } else {
     s0+=323.0;
     s1+=320.0;
    }
   } else {
    if(i0<0.136659175157547){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=1141.0;
    }
   }
  } else {
   if(i2<0.005178898572921753){
    if(i30<1.5682398080825806){
     s1+=22.0;
    } else {
     s0+=11.0;
     s1+=6.0;
    }
   } else {
    if(i20<6.812219362473115e-05){
     s0+=1.0;
    } else {
     s0+=31.0;
     s1+=9795.0;
    }
   }
  }
 }
}
if(i11<0.0008068680763244629){
 if(i29<0.0003217680787201971){
  if(i0<0.08469423651695251){
   if(i4<0.0006645619869232178){
    if(i57<0.0008579068235121667){
     s0+=56441.0;
     s1+=375.0;
    } else {
     s0+=618.0;
     s1+=194.0;
    }
   } else {
    if(i45<0.00042199704330414534){
     s0+=38.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  } else {
   if(i64<0.04475131630897522){
    if(i43<0.00042154366383329034){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=306.0;
    }
   } else {
    if(i25<0.06701958179473877){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i1<0.08157110214233398){
   if(i18<0.9939217567443848){
    if(i8<1.1205039024353027){
     s0+=6033.0;
     s1+=92.0;
    } else {
     s0+=432.0;
     s1+=94.0;
    }
   } else {
    if(i31<0.014391962438821793){
     s0+=4426.0;
     s1+=898.0;
    } else {
     s0+=970.0;
     s1+=772.0;
    }
   }
  } else {
   if(i6<-1.269704989681486e-05){
    if(i39<0.04735064506530762){
     s0+=33.0;
     s1+=2470.0;
    } else {
     s0+=543.0;
     s1+=1575.0;
    }
   } else {
    if(i52<0.002860456705093384){
     s0+=207.0;
     s1+=213.0;
    } else {
     s0+=628.0;
     s1+=114.0;
    }
   }
  }
 }
} else {
 if(i20<0.0022362954914569855){
  if(i33<0.0012197881005704403){
   if(i27<1.0055503845214844){
    s0+=21.0;
   } else {
    s1+=217.0;
   }
  } else {
   if(i18<1.016446590423584){
    s0+=430.0;
   } else {
    s1+=114.0;
   }
  }
 } else {
  if(i5<0.05116280913352966){
   if(i15<-7.68899917602539e-06){
    s0+=100.0;
   } else {
    if(i57<-0.0005222342442721128){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=696.0;
    }
   }
  } else {
   if(i69<6.219215151759272e-07){
    if(i17<0.9986886978149414){
     s0+=2.0;
    } else {
     s0+=12.0;
     s1+=9002.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
}
if(i2<0.08515334129333496){
 if(i7<4.1812658309936523e-05){
  if(i51<0.007526116445660591){
   if(i8<1.0410068035125732){
    if(i57<0.0007204411667771637){
     s0+=53297.0;
     s1+=147.0;
    } else {
     s0+=4835.0;
     s1+=335.0;
    }
   } else {
    if(i0<0.06663846969604492){
     s0+=6333.0;
     s1+=451.0;
    } else {
     s0+=861.0;
     s1+=408.0;
    }
   }
  } else {
   if(i54<-3.421306610107422e-05){
    if(i6<-3.2162806746782735e-05){
     s0+=109.0;
     s1+=39.0;
    } else {
     s0+=1503.0;
     s1+=57.0;
    }
   } else {
    if(i0<0.029315590858459473){
     s0+=1200.0;
     s1+=211.0;
    } else {
     s0+=625.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i3<1.0016067028045654){
   if(i10<0.977192759513855){
    s1+=5.0;
   } else {
    s0+=208.0;
   }
  } else {
   if(i6<-4.330423689680174e-05){
    if(i73<1.0015509128570557){
     s0+=57.0;
     s1+=798.0;
    } else {
     s0+=69.0;
     s1+=38.0;
    }
   } else {
    if(i23<1.0045650005340576){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=102.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0004050135612487793){
  if(i69<-3.2578052469034446e-06){
   if(i9<1.0401077270507812){
    if(i52<-0.0035808682441711426){
     s1+=1.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i35<1.4392380714416504){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   s0+=612.0;
  }
 } else {
  if(i20<0.0017052508192136884){
   if(i44<0.05814352631568909){
    if(i67<-0.00412005977705121){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=188.0;
    }
   } else {
    if(i6<-4.959958459949121e-05){
     s1+=32.0;
    } else {
     s0+=519.0;
     s1+=89.0;
    }
   }
  } else {
   if(i6<-4.62803291156888e-05){
    if(i3<1.0023627281188965){
     s0+=166.0;
     s1+=1877.0;
    } else {
     s0+=57.0;
     s1+=10205.0;
    }
   } else {
    if(i30<1.255998969078064){
     s0+=122.0;
     s1+=1349.0;
    } else {
     s0+=352.0;
     s1+=324.0;
    }
   }
  }
 }
}
if(i5<0.0723993182182312){
 if(i7<3.892183303833008e-05){
  if(i1<0.08030879497528076){
   if(i60<0.044104307889938354){
    if(i28<0.025658689439296722){
     s0+=55109.0;
     s1+=466.0;
    } else {
     s0+=808.0;
     s1+=209.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=3559.0;
     s1+=995.0;
    } else {
     s0+=9022.0;
     s1+=391.0;
    }
   }
  } else {
   if(i17<0.9986754655838013){
    s0+=75.0;
   } else {
    if(i4<-0.0007452964782714844){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=693.0;
    }
   }
  }
 } else {
  if(i34<1.0577372312545776){
   s0+=230.0;
  } else {
   if(i3<1.0041329860687256){
    if(i48<0.009289354085922241){
     s0+=198.0;
     s1+=470.0;
    } else {
     s0+=65.0;
     s1+=5.0;
    }
   } else {
    if(i63<0.00377655029296875){
     s0+=16.0;
     s1+=1447.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i6<-2.175322333641816e-05){
  if(i1<0.09972590208053589){
   if(i30<1.2371783256530762){
    if(i41<1.0724716186523438){
     s0+=14.0;
    } else {
     s0+=1.0;
     s1+=466.0;
    }
   } else {
    if(i4<0.0008566975593566895){
     s0+=368.0;
     s1+=136.0;
    } else {
     s0+=12.0;
     s1+=106.0;
    }
   }
  } else {
   if(i2<0.13220727443695068){
    if(i36<1.0383063554763794){
     s0+=57.0;
     s1+=717.0;
    } else {
     s0+=76.0;
     s1+=27.0;
    }
   } else {
    if(i50<0.9987900257110596){
     s0+=10.0;
     s1+=7.0;
    } else {
     s0+=98.0;
     s1+=10558.0;
    }
   }
  }
 } else {
  if(i33<0.005325671285390854){
   if(i30<1.255998969078064){
    if(i41<1.081458568572998){
     s0+=193.0;
     s1+=4.0;
    } else {
     s0+=404.0;
     s1+=283.0;
    }
   } else {
    if(i21<1.001330852508545){
     s0+=559.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=7.0;
    }
   }
  } else {
   if(i47<0.9999674558639526){
    if(i65<0.0006288622971624136){
     s0+=86.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=85.0;
    }
   } else {
    if(i19<1.0623810291290283){
     s0+=10.0;
    } else {
     s1+=117.0;
    }
   }
  }
 }
}
if(i5<0.07105270028114319){
 if(i2<0.07854408025741577){
  if(i7<4.178285598754883e-05){
   if(i52<-0.0015020966529846191){
    if(i71<0.11645740270614624){
     s0+=2533.0;
     s1+=747.0;
    } else {
     s0+=1471.0;
     s1+=69.0;
    }
   } else {
    if(i14<1.0061872005462646){
     s0+=62677.0;
     s1+=863.0;
    } else {
     s0+=1201.0;
     s1+=239.0;
    }
   }
  } else {
   if(i3<1.0007082223892212){
    s0+=190.0;
   } else {
    if(i30<1.2392117977142334){
     s0+=5.0;
     s1+=466.0;
    } else {
     s0+=254.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i0<0.07888215780258179){
   if(i12<1.0094904899597168){
    if(i64<0.010120034217834473){
     s0+=124.0;
     s1+=53.0;
    } else {
     s0+=352.0;
     s1+=14.0;
    }
   } else {
    if(i11<0.0011730194091796875){
     s0+=1.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i4<-0.0007450878620147705){
    if(i65<0.000849061761982739){
     s0+=127.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   } else {
    if(i30<1.0790932178497314){
     s0+=12.0;
    } else {
     s0+=37.0;
     s1+=1818.0;
    }
   }
  }
 }
} else {
 if(i0<0.10029727220535278){
  if(i39<0.03951290249824524){
   if(i21<0.99519944190979){
    if(i65<0.000622528896201402){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i55<0.004122138023376465){
     s0+=22.0;
     s1+=426.0;
    } else {
     s0+=33.0;
     s1+=7.0;
    }
   }
  } else {
   if(i48<0.012860238552093506){
    if(i19<1.046053409576416){
     s0+=210.0;
     s1+=3.0;
    } else {
     s0+=284.0;
     s1+=208.0;
    }
   } else {
    if(i33<0.0010649780742824078){
     s0+=81.0;
     s1+=12.0;
    } else {
     s0+=472.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i40<-6.771800144633744e-06){
   if(i6<-4.2749379645101726e-05){
    if(i7<0.0008819401264190674){
     s0+=116.0;
     s1+=10611.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i36<1.0537548065185547){
     s0+=60.0;
     s1+=405.0;
    } else {
     s0+=173.0;
     s1+=56.0;
    }
   }
  } else {
   if(i53<0.07262909412384033){
    if(i7<-5.748867988586426e-05){
     s0+=48.0;
    } else {
     s0+=77.0;
     s1+=623.0;
    }
   } else {
    if(i43<0.0017011656891554594){
     s0+=421.0;
     s1+=32.0;
    } else {
     s0+=35.0;
     s1+=140.0;
    }
   }
  }
 }
}
if(i4<0.0005475878715515137){
 if(i71<0.021839145570993423){
  if(i19<1.0572319030761719){
   if(i68<0.0048294104635715485){
    if(i27<1.0090255737304688){
     s0+=49896.0;
     s1+=161.0;
    } else {
     s0+=47.0;
     s1+=132.0;
    }
   } else {
    if(i38<0.0004789994563907385){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i0<0.07562750577926636){
    if(i65<0.0003605874953791499){
     s0+=2950.0;
     s1+=184.0;
    } else {
     s0+=60.0;
     s1+=95.0;
    }
   } else {
    if(i6<-1.8831255147233605e-05){
     s0+=54.0;
     s1+=494.0;
    } else {
     s0+=93.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i8<1.0401077270507812){
   if(i37<0.0018346855649724603){
    if(i54<-3.585219383239746e-05){
     s0+=2111.0;
     s1+=26.0;
    } else {
     s0+=798.0;
     s1+=373.0;
    }
   } else {
    if(i6<-0.0001394503633491695){
     s0+=14.0;
     s1+=6.0;
    } else {
     s0+=7540.0;
     s1+=29.0;
    }
   }
  } else {
   if(i0<0.08677279949188232){
    if(i61<-0.012658033519983292){
     s0+=1510.0;
     s1+=39.0;
    } else {
     s0+=4205.0;
     s1+=1193.0;
    }
   } else {
    if(i64<0.035524964332580566){
     s0+=322.0;
     s1+=2099.0;
    } else {
     s0+=801.0;
     s1+=652.0;
    }
   }
  }
 }
} else {
 if(i6<-4.401454498292878e-05){
  if(i47<1.0007635354995728){
   if(i11<6.92605972290039e-05){
    if(i30<1.594835877418518){
     s0+=71.0;
     s1+=1059.0;
    } else {
     s0+=131.0;
     s1+=277.0;
    }
   } else {
    if(i56<0.00013194873463362455){
     s1+=9499.0;
    } else {
     s0+=6.0;
     s1+=561.0;
    }
   }
  } else {
   if(i22<-0.00028127431869506836){
    s0+=17.0;
   } else {
    s1+=29.0;
   }
  }
 } else {
  if(i31<0.007581412326544523){
   if(i59<0.00033326083212159574){
    if(i42<0.06692579388618469){
     s0+=351.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i20<0.002403611782938242){
    if(i12<0.9981694221496582){
     s1+=13.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i66<0.00013864677748642862){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=272.0;
    }
   }
  }
 }
}
if(i12<1.0055530071258545){
 if(i19<1.0576403141021729){
  if(i58<-0.0023250579833984375){
   if(i32<0.976367712020874){
    if(i59<-1.921900548040867e-06){
     s0+=64.0;
     s1+=3.0;
    } else {
     s0+=739.0;
     s1+=2.0;
    }
   } else {
    if(i33<0.000357848679414019){
     s0+=737.0;
    } else {
     s0+=259.0;
     s1+=294.0;
    }
   }
  } else {
   if(i14<1.0058003664016724){
    if(i3<1.0025379657745361){
     s0+=56781.0;
     s1+=397.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i5<0.05128759145736694){
     s0+=38.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i1<0.08026513457298279){
   if(i41<1.1037919521331787){
    if(i21<1.0004799365997314){
     s0+=1465.0;
     s1+=643.0;
    } else {
     s0+=7.0;
     s1+=267.0;
    }
   } else {
    if(i17<1.0015733242034912){
     s0+=7922.0;
     s1+=354.0;
    } else {
     s0+=747.0;
     s1+=454.0;
    }
   }
  } else {
   if(i49<0.002091292291879654){
    if(i39<0.0491487979888916){
     s0+=79.0;
     s1+=1376.0;
    } else {
     s0+=1065.0;
     s1+=589.0;
    }
   } else {
    if(i1<0.1044924259185791){
     s0+=130.0;
     s1+=298.0;
    } else {
     s0+=20.0;
     s1+=1932.0;
    }
   }
  }
 }
} else {
 if(i22<0.00016874074935913086){
  if(i2<0.07401883602142334){
   if(i49<0.00162975094281137){
    if(i74<3.9059086702764034e-05){
     s0+=49.0;
     s1+=62.0;
    } else {
     s0+=560.0;
     s1+=22.0;
    }
   } else {
    s1+=69.0;
   }
  } else {
   if(i3<1.0018408298492432){
    if(i66<0.0003167522372677922){
     s0+=162.0;
     s1+=134.0;
    } else {
     s0+=17.0;
     s1+=308.0;
    }
   } else {
    if(i49<0.0004630514304153621){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=888.0;
    }
   }
  }
 } else {
  if(i20<0.0019174329936504364){
   if(i4<0.0009856224060058594){
    if(i17<1.0003424882888794){
     s1+=84.0;
    } else {
     s0+=132.0;
    }
   } else {
    s1+=108.0;
   }
  } else {
   if(i3<1.0033336877822876){
    if(i0<0.05163624882698059){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=470.0;
    }
   } else {
    s1+=8369.0;
   }
  }
 }
}
if(i20<0.005230050068348646){
 if(i0<0.07908812165260315){
  if(i4<0.0009382963180541992){
   if(i19<1.0485899448394775){
    if(i65<0.00028069678228348494){
     s0+=49461.0;
     s1+=64.0;
    } else {
     s0+=4029.0;
     s1+=231.0;
    }
   } else {
    if(i23<0.9904108047485352){
     s0+=1634.0;
     s1+=623.0;
    } else {
     s0+=9363.0;
     s1+=770.0;
    }
   }
  } else {
   if(i3<1.0042080879211426){
    if(i27<0.9754308462142944){
     s1+=2.0;
    } else {
     s0+=15.0;
    }
   } else {
    s1+=213.0;
   }
  }
 } else {
  if(i63<0.004780769348144531){
   if(i30<1.0840110778808594){
    s0+=175.0;
   } else {
    if(i17<0.9986160397529602){
     s0+=133.0;
     s1+=22.0;
    } else {
     s0+=464.0;
     s1+=2570.0;
    }
   }
  } else {
   if(i1<0.12738820910453796){
    if(i12<1.0086147785186768){
     s0+=484.0;
     s1+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i64<0.06323075294494629){
     s0+=100.0;
     s1+=227.0;
    } else {
     s0+=312.0;
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i50<0.9995198249816895){
  if(i8<1.0599066019058228){
   if(i67<0.0008448903681710362){
    s0+=1441.0;
   } else {
    if(i67<0.0008533599320799112){
     s1+=1.0;
    } else {
     s0+=131.0;
    }
   }
  } else {
   if(i13<-0.00048601627349853516){
    s0+=100.0;
   } else {
    if(i2<0.01923009753227234){
     s0+=35.0;
     s1+=5.0;
    } else {
     s1+=213.0;
    }
   }
  }
 } else {
  if(i56<0.0001961094094440341){
   if(i1<0.05861678719520569){
    if(i3<1.000483751296997){
     s0+=432.0;
     s1+=105.0;
    } else {
     s0+=63.0;
     s1+=480.0;
    }
   } else {
    if(i22<-0.00028908252716064453){
     s0+=103.0;
     s1+=112.0;
    } else {
     s0+=118.0;
     s1+=10363.0;
    }
   }
  } else {
   if(i2<0.09391000866889954){
    if(i53<-0.07431769371032715){
     s0+=48.0;
     s1+=123.0;
    } else {
     s0+=2435.0;
     s1+=58.0;
    }
   } else {
    if(i1<0.09414541721343994){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=845.0;
    }
   }
  }
 }
}
if(i1<0.07874476909637451){
 if(i11<0.0011493265628814697){
  if(i17<1.0016357898712158){
   if(i29<0.00029937142971903086){
    if(i23<1.0116113424301147){
     s0+=56002.0;
     s1+=531.0;
    } else {
     s0+=137.0;
     s1+=95.0;
    }
   } else {
    if(i37<0.0016491911374032497){
     s0+=3844.0;
     s1+=1201.0;
    } else {
     s0+=8035.0;
     s1+=281.0;
    }
   }
  } else {
   if(i47<1.0003752708435059){
    if(i33<0.0015963682672008872){
     s1+=201.0;
    } else {
     s0+=284.0;
     s1+=274.0;
    }
   } else {
    if(i8<1.088477373123169){
     s0+=680.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i41<1.2388319969177246){
   s1+=618.0;
  } else {
   if(i20<0.002517164684832096){
    s0+=128.0;
   } else {
    s1+=53.0;
   }
  }
 }
} else {
 if(i45<0.006322205066680908){
  if(i6<-1.4647196621808689e-05){
   if(i53<0.058817923069000244){
    if(i17<0.9980716705322266){
     s0+=30.0;
    } else {
     s0+=156.0;
     s1+=3452.0;
    }
   } else {
    if(i42<0.058807723224163055){
     s0+=260.0;
     s1+=194.0;
    } else {
     s0+=107.0;
     s1+=432.0;
    }
   }
  } else {
   if(i44<0.056555092334747314){
    if(i7<-5.5789947509765625e-05){
     s0+=86.0;
    } else {
     s0+=30.0;
     s1+=230.0;
    }
   } else {
    if(i49<0.0020838254131376743){
     s0+=931.0;
     s1+=111.0;
    } else {
     s0+=22.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i19<1.0771137475967407){
   if(i11<-0.001645207405090332){
    if(i10<0.9820750951766968){
     s1+=2.0;
    } else {
     s0+=73.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i28<0.026033978909254074){
    if(i12<1.0061542987823486){
     s0+=63.0;
     s1+=132.0;
    } else {
     s1+=957.0;
    }
   } else {
    if(i20<0.0009826966561377048){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=8414.0;
    }
   }
  }
 }
}
if(i21<1.0027947425842285){
 if(i5<0.07541489601135254){
  if(i2<0.08356902003288269){
   if(i38<0.0002811383455991745){
    if(i14<1.0075058937072754){
     s0+=52230.0;
     s1+=151.0;
    } else {
     s0+=209.0;
     s1+=84.0;
    }
   } else {
    if(i12<0.9901204109191895){
     s0+=8100.0;
     s1+=185.0;
    } else {
     s0+=7242.0;
     s1+=1569.0;
    }
   }
  } else {
   if(i72<0.9956538677215576){
    s0+=248.0;
   } else {
    if(i41<1.1819204092025757){
     s0+=49.0;
     s1+=736.0;
    } else {
     s0+=156.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i20<0.005266228690743446){
   if(i30<1.255998969078064){
    if(i1<0.11293435096740723){
     s0+=395.0;
     s1+=295.0;
    } else {
     s0+=165.0;
     s1+=692.0;
    }
   } else {
    if(i43<0.004795870743691921){
     s0+=754.0;
     s1+=49.0;
    } else {
     s0+=151.0;
     s1+=213.0;
    }
   }
  } else {
   if(i6<-1.278228774026502e-05){
    if(i8<1.0666289329528809){
     s0+=62.0;
     s1+=197.0;
    } else {
     s0+=40.0;
     s1+=2130.0;
    }
   } else {
    if(i47<0.9996860027313232){
     s0+=28.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i10<1.0044305324554443){
  if(i12<0.9806944131851196){
   if(i74<0.00027472677174955606){
    if(i26<1.054844617843628){
     s0+=707.0;
     s1+=46.0;
    } else {
     s0+=11.0;
     s1+=34.0;
    }
   } else {
    if(i12<0.9422091841697693){
     s0+=1.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i28<0.03023744560778141){
    if(i7<2.8848648071289062e-05){
     s0+=231.0;
     s1+=65.0;
    } else {
     s0+=146.0;
     s1+=328.0;
    }
   } else {
    if(i3<0.9994380474090576){
     s0+=13.0;
     s1+=40.0;
    } else {
     s0+=14.0;
     s1+=1535.0;
    }
   }
  }
 } else {
  if(i29<0.00016932733706198633){
   if(i13<0.0007612109184265137){
    if(i34<1.075645923614502){
     s0+=13.0;
     s1+=15.0;
    } else {
     s0+=53.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i17<1.0015316009521484){
    if(i20<0.0030421647243201733){
     s0+=143.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=797.0;
    }
   } else {
    if(i4<0.000548243522644043){
     s0+=11.0;
     s1+=58.0;
    } else {
     s0+=2.0;
     s1+=7638.0;
    }
   }
  }
 }
}
if(i8<1.0576403141021729){
 if(i14<1.0073938369750977){
  if(i70<-7.950389772304334e-06){
   s1+=85.0;
  } else {
   if(i5<0.07001450657844543){
    if(i58<-0.0020241141319274902){
     s0+=4818.0;
     s1+=749.0;
    } else {
     s0+=59254.0;
     s1+=646.0;
    }
   } else {
    if(i39<0.04228737950325012){
     s0+=48.0;
     s1+=304.0;
    } else {
     s0+=593.0;
     s1+=170.0;
    }
   }
  }
 } else {
  if(i2<0.059177905321121216){
   if(i37<0.0009658411145210266){
    if(i66<8.168077329173684e-05){
     s0+=4.0;
    } else {
     s1+=62.0;
    }
   } else {
    s0+=250.0;
   }
  } else {
   if(i20<0.0017555158119648695){
    if(i37<0.0010124897817149758){
     s0+=1.0;
     s1+=48.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.0446783304214478){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=440.0;
    }
   }
  }
 }
} else {
 if(i13<0.00042504072189331055){
  if(i7<1.0669231414794922e-05){
   if(i2<0.08454659581184387){
    if(i8<1.0922304391860962){
     s0+=1862.0;
     s1+=423.0;
    } else {
     s0+=1844.0;
     s1+=85.0;
    }
   } else {
    if(i67<-0.0051792217418551445){
     s0+=735.0;
     s1+=559.0;
    } else {
     s0+=213.0;
     s1+=782.0;
    }
   }
  } else {
   if(i6<-4.276272375136614e-05){
    if(i16<0.930970311164856){
     s0+=30.0;
     s1+=16.0;
    } else {
     s0+=18.0;
     s1+=1732.0;
    }
   } else {
    if(i12<0.9969371557235718){
     s0+=13.0;
     s1+=103.0;
    } else {
     s0+=527.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i32<1.0064456462860107){
   if(i18<1.0004496574401855){
    if(i2<0.12763145565986633){
     s0+=643.0;
     s1+=281.0;
    } else {
     s0+=44.0;
     s1+=625.0;
    }
   } else {
    if(i65<0.000402294856030494){
     s0+=57.0;
     s1+=231.0;
    } else {
     s0+=17.0;
     s1+=1354.0;
    }
   }
  } else {
   if(i2<0.07043877243995667){
    if(i21<1.001629114151001){
     s0+=83.0;
     s1+=12.0;
    } else {
     s0+=29.0;
     s1+=221.0;
    }
   } else {
    if(i7<3.4749507904052734e-05){
     s0+=16.0;
     s1+=105.0;
    } else {
     s0+=7.0;
     s1+=7864.0;
    }
   }
  }
 }
}
if(i15<1.8537044525146484e-05){
 if(i2<0.08346298336982727){
  if(i34<1.0598037242889404){
   if(i57<0.0009273724863305688){
    if(i71<0.04447144269943237){
     s0+=42491.0;
    } else {
     s0+=356.0;
     s1+=12.0;
    }
   } else {
    if(i30<1.0840110778808594){
     s0+=941.0;
    } else {
     s0+=19.0;
     s1+=26.0;
    }
   }
  } else {
   if(i41<1.103413462638855){
    if(i65<0.00018499941506888717){
     s0+=2966.0;
     s1+=685.0;
    } else {
     s0+=418.0;
     s1+=831.0;
    }
   } else {
    if(i51<0.01570303365588188){
     s0+=19686.0;
     s1+=269.0;
    } else {
     s0+=949.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i13<-0.0004025697708129883){
   if(i21<0.9946023225784302){
    if(i30<1.639693260192871){
     s0+=509.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i70<4.5648117520613596e-05){
     s0+=180.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  } else {
   if(i33<0.006666436791419983){
    if(i44<0.058222174644470215){
     s0+=93.0;
     s1+=1648.0;
    } else {
     s0+=971.0;
     s1+=742.0;
    }
   } else {
    if(i20<0.0022914675064384937){
     s0+=23.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=1850.0;
    }
   }
  }
 }
} else {
 if(i8<1.041292428970337){
  if(i0<0.07638373970985413){
   if(i21<1.003126621246338){
    if(i49<0.006033044308423996){
     s0+=618.0;
     s1+=15.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s1+=55.0;
    } else {
     s0+=117.0;
     s1+=2.0;
    }
   }
  } else {
   if(i48<0.012640595436096191){
    if(i54<0.0004597008228302002){
     s0+=2.0;
     s1+=101.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i3<1.0021395683288574){
     s0+=28.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i12<1.0012425184249878){
   if(i8<1.1205039024353027){
    if(i2<0.1271762251853943){
     s0+=776.0;
     s1+=286.0;
    } else {
     s0+=27.0;
     s1+=288.0;
    }
   } else {
    if(i20<0.004598122090101242){
     s0+=12.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=1080.0;
    }
   }
  } else {
   if(i21<1.000333547592163){
    if(i11<0.00023376941680908203){
     s0+=93.0;
     s1+=75.0;
    } else {
     s1+=334.0;
    }
   } else {
    if(i11<-0.0002518892288208008){
     s0+=19.0;
     s1+=135.0;
    } else {
     s0+=19.0;
     s1+=8240.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i65<-8.562184666516259e-05){
  if(i10<1.0107306241989136){
   if(i30<1.1517177820205688){
    if(i2<0.05861133337020874){
     s0+=51.0;
     s1+=3.0;
    } else {
     s0+=20.0;
     s1+=195.0;
    }
   } else {
    if(i66<0.0008820757502689958){
     s0+=304.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   }
  } else {
   if(i1<0.05364561080932617){
    if(i45<0.0013475734740495682){
     s1+=12.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   } else {
    if(i12<1.001516342163086){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=666.0;
    }
   }
  }
 } else {
  if(i71<0.02581748738884926){
   if(i14<1.0066602230072021){
    if(i55<-0.001659303903579712){
     s0+=345.0;
     s1+=214.0;
    } else {
     s0+=54080.0;
     s1+=341.0;
    }
   } else {
    if(i19<1.073743224143982){
     s0+=36.0;
     s1+=229.0;
    } else {
     s0+=221.0;
     s1+=50.0;
    }
   }
  } else {
   if(i19<1.0451428890228271){
    if(i67<-0.0010303091257810593){
     s0+=5793.0;
     s1+=28.0;
    } else {
     s0+=945.0;
     s1+=103.0;
    }
   } else {
    if(i4<-0.0005522370338439941){
     s0+=3942.0;
     s1+=428.0;
    } else {
     s0+=4809.0;
     s1+=3193.0;
    }
   }
  }
 }
} else {
 if(i41<1.0795294046401978){
  s0+=150.0;
 } else {
  if(i1<0.05437350273132324){
   if(i53<-0.002152383327484131){
    if(i30<1.2392117977142334){
     s1+=308.0;
    } else {
     s0+=100.0;
     s1+=192.0;
    }
   } else {
    if(i31<0.003566206432878971){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=97.0;
     s1+=7.0;
    }
   }
  } else {
   if(i6<-4.5767941628582776e-05){
    if(i6<-8.587801858084276e-05){
     s0+=48.0;
     s1+=9639.0;
    } else {
     s0+=85.0;
     s1+=1192.0;
    }
   } else {
    if(i45<0.0029566269367933273){
     s0+=2.0;
     s1+=178.0;
    } else {
     s0+=64.0;
     s1+=62.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i0<0.0800500214099884){
  if(i3<1.0025451183319092){
   if(i58<-0.001775205135345459){
    if(i43<0.00144673022441566){
     s0+=2485.0;
     s1+=708.0;
    } else {
     s0+=3364.0;
     s1+=128.0;
    }
   } else {
    if(i28<0.020689118653535843){
     s0+=55103.0;
     s1+=241.0;
    } else {
     s0+=3792.0;
     s1+=280.0;
    }
   }
  } else {
   if(i29<0.00017038217629306018){
    if(i56<4.620836534741102e-06){
     s0+=75.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i20<0.00220080791041255){
     s0+=29.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=339.0;
    }
   }
  }
 } else {
  if(i43<0.0004475691239349544){
   if(i14<1.0037925243377686){
    if(i13<0.00011813640594482422){
     s0+=155.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i30<1.0981647968292236){
     s0+=3.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i70<2.2578888092539273e-05){
    if(i64<0.04121851921081543){
     s0+=10.0;
     s1+=936.0;
    } else {
     s0+=31.0;
     s1+=52.0;
    }
   } else {
    if(i36<0.9955525994300842){
     s0+=3.0;
     s1+=59.0;
    } else {
     s0+=111.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i0<0.09742850065231323){
  if(i15<1.9252300262451172e-05){
   if(i41<1.1037919521331787){
    if(i43<0.0005225627683103085){
     s0+=937.0;
     s1+=214.0;
    } else {
     s0+=111.0;
     s1+=540.0;
    }
   } else {
    if(i27<0.9761829972267151){
     s0+=430.0;
     s1+=141.0;
    } else {
     s0+=2753.0;
     s1+=154.0;
    }
   }
  } else {
   if(i44<0.04598736763000488){
    if(i11<3.24249267578125e-05){
     s0+=346.0;
     s1+=237.0;
    } else {
     s0+=7.0;
     s1+=616.0;
    }
   } else {
    if(i12<0.9991562962532043){
     s0+=181.0;
     s1+=19.0;
    } else {
     s0+=33.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i13<-0.0004056096076965332){
   if(i35<1.4955813884735107){
    s0+=242.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i66<0.0002212325925938785){
    if(i29<0.0017915982753038406){
     s0+=55.0;
     s1+=566.0;
    } else {
     s0+=350.0;
     s1+=207.0;
    }
   } else {
    if(i1<0.12589818239212036){
     s0+=237.0;
     s1+=1178.0;
    } else {
     s0+=104.0;
     s1+=10588.0;
    }
   }
  }
 }
}
if(i21<1.0028316974639893){
 if(i8<1.0469666719436646){
  if(i65<0.0002567390038166195){
   if(i42<0.05136439949274063){
    if(i19<1.0469666719436646){
     s0+=48962.0;
     s1+=56.0;
    } else {
     s0+=4158.0;
     s1+=256.0;
    }
   } else {
    if(i20<0.0023457463830709457){
     s0+=95.0;
     s1+=9.0;
    } else {
     s0+=11.0;
     s1+=77.0;
    }
   }
  } else {
   if(i33<0.0010042899521067739){
    if(i17<0.9984332323074341){
     s0+=633.0;
     s1+=1.0;
    } else {
     s0+=791.0;
     s1+=580.0;
    }
   } else {
    if(i2<0.08134204149246216){
     s0+=7051.0;
     s1+=128.0;
    } else {
     s0+=119.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i15<-1.3649463653564453e-05){
   if(i45<0.003736142534762621){
    if(i40<-1.2607777534867637e-05){
     s1+=1.0;
    } else {
     s0+=1524.0;
     s1+=4.0;
    }
   } else {
    if(i44<0.05126368999481201){
     s0+=135.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   }
  } else {
   if(i43<0.0005124137969687581){
    if(i50<1.0003814697265625){
     s0+=2183.0;
     s1+=143.0;
    } else {
     s0+=44.0;
     s1+=150.0;
    }
   } else {
    if(i6<-4.142369289183989e-05){
     s0+=668.0;
     s1+=3400.0;
    } else {
     s0+=3308.0;
     s1+=1838.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004317164421081543){
  if(i8<1.0819685459136963){
   if(i30<1.2385294437408447){
    if(i33<0.00037899354356341064){
     s0+=45.0;
    } else {
     s0+=21.0;
     s1+=76.0;
    }
   } else {
    if(i14<0.9618227481842041){
     s0+=550.0;
     s1+=5.0;
    } else {
     s0+=319.0;
     s1+=44.0;
    }
   }
  } else {
   if(i14<0.9563719034194946){
    if(i62<0.09998582303524017){
     s0+=37.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i49<0.0011272464180365205){
     s0+=24.0;
     s1+=21.0;
    } else {
     s0+=16.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i0<0.0694766640663147){
   if(i40<-1.417127077729674e-05){
    if(i53<0.0011022984981536865){
     s0+=37.0;
     s1+=504.0;
    } else {
     s0+=57.0;
     s1+=25.0;
    }
   } else {
    if(i48<-0.005550295114517212){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=101.0;
     s1+=2.0;
    }
   }
  } else {
   if(i22<-0.00010293722152709961){
    if(i73<0.997642457485199){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=47.0;
     s1+=558.0;
    }
   } else {
    if(i13<0.000424116849899292){
     s0+=23.0;
     s1+=641.0;
    } else {
     s0+=10.0;
     s1+=8333.0;
    }
   }
  }
 }
}
if(i7<3.8683414459228516e-05){
 if(i42<0.030405839905142784){
  if(i27<1.0083394050598145){
   if(i52<-0.0021085739135742188){
    if(i14<0.9886801838874817){
     s0+=275.0;
     s1+=215.0;
    } else {
     s0+=403.0;
     s1+=32.0;
    }
   } else {
    if(i8<1.0412026643753052){
     s0+=52824.0;
     s1+=237.0;
    } else {
     s0+=5046.0;
     s1+=326.0;
    }
   }
  } else {
   if(i10<1.0081470012664795){
    if(i0<0.0756382942199707){
     s0+=766.0;
     s1+=56.0;
    } else {
     s0+=114.0;
     s1+=146.0;
    }
   } else {
    if(i9<1.0847091674804688){
     s0+=92.0;
     s1+=648.0;
    } else {
     s0+=135.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i2<0.08240079879760742){
   if(i22<-0.0002334117889404297){
    if(i7<1.8417835235595703e-05){
     s0+=6083.0;
     s1+=98.0;
    } else {
     s0+=66.0;
     s1+=26.0;
    }
   } else {
    if(i56<3.0533894459949806e-05){
     s0+=2354.0;
     s1+=184.0;
    } else {
     s0+=1260.0;
     s1+=826.0;
    }
   }
  } else {
   if(i69<2.397042862867238e-06){
    if(i28<0.028257567435503006){
     s0+=685.0;
     s1+=714.0;
    } else {
     s0+=216.0;
     s1+=1854.0;
    }
   } else {
    s0+=216.0;
   }
  }
 }
} else {
 if(i3<0.9998602867126465){
  s0+=258.0;
 } else {
  if(i6<-4.882367647951469e-05){
   if(i22<6.258487701416016e-06){
    if(i1<0.11356890201568604){
     s0+=205.0;
     s1+=344.0;
    } else {
     s0+=33.0;
     s1+=931.0;
    }
   } else {
    if(i71<0.2001553475856781){
     s1+=7217.0;
    } else {
     s0+=7.0;
     s1+=2773.0;
    }
   }
  } else {
   if(i73<1.0002679824829102){
    if(i49<0.0019126206170767546){
     s0+=176.0;
     s1+=56.0;
    } else {
     s0+=1.0;
     s1+=91.0;
    }
   } else {
    if(i66<0.00041225587483495474){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=161.0;
    }
   }
  }
 }
}
if(i0<0.08264222741127014){
 if(i19<1.0485899448394775){
  if(i4<0.0007486343383789062){
   if(i58<-0.002243250608444214){
    if(i38<0.0016211818438023329){
     s0+=1100.0;
     s1+=227.0;
    } else {
     s0+=703.0;
     s1+=2.0;
    }
   } else {
    if(i8<1.0410044193267822){
     s0+=52128.0;
     s1+=83.0;
    } else {
     s0+=2334.0;
     s1+=59.0;
    }
   }
  } else {
   if(i54<0.0002276897430419922){
    s0+=13.0;
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i7<3.319978713989258e-05){
   if(i33<0.0010792557150125504){
    if(i56<2.563756424933672e-05){
     s0+=2864.0;
     s1+=351.0;
    } else {
     s0+=555.0;
     s1+=844.0;
    }
   } else {
    if(i26<0.9805026054382324){
     s0+=620.0;
     s1+=128.0;
    } else {
     s0+=9047.0;
     s1+=367.0;
    }
   }
  } else {
   if(i24<1.009140968322754){
    if(i22<-0.00021147727966308594){
     s0+=88.0;
     s1+=83.0;
    } else {
     s0+=82.0;
     s1+=755.0;
    }
   } else {
    if(i43<0.0018365795258432627){
     s1+=141.0;
    } else {
     s0+=187.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i20<0.004643522202968597){
  if(i67<-0.005391121841967106){
   if(i29<0.0014755325391888618){
    if(i0<0.12192264199256897){
     s0+=128.0;
    } else {
     s0+=5.0;
     s1+=95.0;
    }
   } else {
    if(i28<0.04065966606140137){
     s0+=686.0;
     s1+=55.0;
    } else {
     s0+=142.0;
     s1+=125.0;
    }
   }
  } else {
   if(i54<-0.00013941526412963867){
    if(i40<-9.729226803756319e-06){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=165.0;
    }
   } else {
    if(i6<-8.192845598387066e-06){
     s0+=117.0;
     s1+=1848.0;
    } else {
     s0+=160.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i11<-0.0009003281593322754){
   if(i17<0.9982097148895264){
    s0+=83.0;
   } else {
    if(i68<0.0016656292136758566){
     s0+=157.0;
     s1+=502.0;
    } else {
     s0+=2.0;
     s1+=683.0;
    }
   }
  } else {
   if(i20<0.005767856724560261){
    if(i7<-3.165006637573242e-05){
     s0+=30.0;
    } else {
     s0+=14.0;
     s1+=751.0;
    }
   } else {
    if(i20<0.007300524041056633){
     s0+=14.0;
     s1+=1057.0;
    } else {
     s1+=8525.0;
    }
   }
  }
 }
}
if(i34<1.067622423171997){
 if(i19<1.0596027374267578){
  if(i27<1.0089378356933594){
   if(i16<1.0076556205749512){
    if(i71<0.025263885036110878){
     s0+=43805.0;
     s1+=21.0;
    } else {
     s0+=2353.0;
     s1+=89.0;
    }
   } else {
    if(i68<-7.084432581905276e-05){
     s0+=37.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i15<6.9141387939453125e-06){
    s0+=4.0;
   } else {
    if(i37<0.0002745366364251822){
     s0+=1.0;
    } else {
     s1+=31.0;
    }
   }
  }
 } else {
  if(i66<0.00032160658156499267){
   if(i47<1.000157117843628){
    s0+=51.0;
   } else {
    s1+=83.0;
   }
  } else {
   if(i12<1.0011990070343018){
    if(i41<1.1328204870224){
     s0+=253.0;
    } else {
     s0+=57.0;
     s1+=10.0;
    }
   } else {
    s1+=4.0;
   }
  }
 }
} else {
 if(i11<0.0006179213523864746){
  if(i60<0.045318640768527985){
   if(i16<1.0084079504013062){
    if(i23<0.989219069480896){
     s0+=158.0;
     s1+=246.0;
    } else {
     s0+=12196.0;
     s1+=448.0;
    }
   } else {
    if(i34<1.075559377670288){
     s0+=2.0;
     s1+=91.0;
    } else {
     s0+=297.0;
     s1+=211.0;
    }
   }
  } else {
   if(i25<0.05725020170211792){
    if(i7<1.996755599975586e-05){
     s0+=8932.0;
     s1+=1606.0;
    } else {
     s0+=306.0;
     s1+=1107.0;
    }
   } else {
    if(i28<0.027947600930929184){
     s0+=1356.0;
     s1+=595.0;
    } else {
     s0+=525.0;
     s1+=2237.0;
    }
   }
  }
 } else {
  if(i29<0.00016994235920719802){
   if(i2<0.06941187381744385){
    if(i34<1.079040765762329){
     s1+=7.0;
    } else {
     s0+=394.0;
     s1+=3.0;
    }
   } else {
    if(i39<0.04520618915557861){
     s1+=45.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i4<0.00011438131332397461){
    if(i45<0.003926941193640232){
     s0+=152.0;
     s1+=26.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i41<1.2642087936401367){
     s0+=283.0;
     s1+=2559.0;
    } else {
     s1+=7631.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i16<1.0082106590270996){
  if(i55<-0.0013007521629333496){
   if(i1<0.05627584457397461){
    if(i38<0.002451618667691946){
     s0+=1987.0;
     s1+=501.0;
    } else {
     s0+=2397.0;
     s1+=8.0;
    }
   } else {
    if(i12<0.9865282773971558){
     s0+=122.0;
     s1+=75.0;
    } else {
     s0+=72.0;
     s1+=397.0;
    }
   }
  } else {
   if(i17<1.0019967555999756){
    if(i9<1.0399296283721924){
     s0+=57247.0;
     s1+=425.0;
    } else {
     s0+=2400.0;
     s1+=329.0;
    }
   } else {
    if(i54<0.0003764629364013672){
     s0+=4.0;
     s1+=101.0;
    } else {
     s0+=101.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i1<0.0658864974975586){
   if(i40<-1.4073795682634227e-05){
    if(i33<0.0028533684089779854){
     s0+=2.0;
     s1+=89.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i0<0.07121121883392334){
     s0+=205.0;
     s1+=17.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i37<0.0026261175516992807){
    if(i20<0.001043649623170495){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=371.0;
    }
   } else {
    if(i0<0.17925646901130676){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i2<0.0871066153049469){
  if(i11<0.0014179348945617676){
   if(i4<0.0004671812057495117){
    if(i35<1.103413462638855){
     s0+=873.0;
     s1+=548.0;
    } else {
     s0+=3962.0;
     s1+=337.0;
    }
   } else {
    if(i48<0.00362318754196167){
     s0+=135.0;
     s1+=438.0;
    } else {
     s0+=127.0;
     s1+=30.0;
    }
   }
  } else {
   if(i69<-4.117918251722585e-06){
    s1+=365.0;
   } else {
    if(i15<9.03010368347168e-06){
     s1+=38.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i20<0.004687285050749779){
   if(i53<0.07121911644935608){
    if(i44<0.05920848250389099){
     s0+=59.0;
     s1+=1196.0;
    } else {
     s0+=319.0;
     s1+=410.0;
    }
   } else {
    if(i6<-6.444262544391677e-05){
     s1+=42.0;
    } else {
     s0+=812.0;
     s1+=153.0;
    }
   }
  } else {
   if(i50<0.9987168312072754){
    if(i42<0.3980525732040405){
     s0+=60.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i27<1.0085737705230713){
     s0+=163.0;
     s1+=2502.0;
    } else {
     s0+=25.0;
     s1+=8741.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08222377300262451){
  if(i4<0.0006022751331329346){
   if(i34<1.0556960105895996){
    if(i60<0.09921935200691223){
     s0+=42133.0;
    } else {
     s0+=520.0;
     s1+=1.0;
    }
   } else {
    if(i52<-0.001212388277053833){
     s0+=2841.0;
     s1+=645.0;
    } else {
     s0+=19452.0;
     s1+=700.0;
    }
   }
  } else {
   if(i19<1.0407118797302246){
    s0+=64.0;
   } else {
    if(i33<0.002564148511737585){
     s1+=203.0;
    } else {
     s0+=67.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i34<1.0670123100280762){
   if(i54<0.00010085105895996094){
    if(i35<1.0724589824676514){
     s0+=130.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.0003114216378889978){
     s0+=14.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i19<1.0444363355636597){
    if(i51<-0.0023027677088975906){
     s0+=32.0;
    } else {
     s0+=10.0;
     s1+=20.0;
    }
   } else {
    if(i4<-0.001012176275253296){
     s0+=19.0;
     s1+=10.0;
    } else {
     s0+=28.0;
     s1+=990.0;
    }
   }
  }
 }
} else {
 if(i12<1.0069584846496582){
  if(i0<0.10798805952072144){
   if(i28<0.028465773910284042){
    if(i18<1.001079797744751){
     s0+=3765.0;
     s1+=431.0;
    } else {
     s0+=423.0;
     s1+=356.0;
    }
   } else {
    if(i40<3.69628878615913e-08){
     s0+=359.0;
     s1+=717.0;
    } else {
     s0+=275.0;
     s1+=17.0;
    }
   }
  } else {
   if(i13<-0.0004030168056488037){
    if(i0<0.11020243167877197){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=222.0;
     s1+=4.0;
    }
   } else {
    if(i66<0.000216715969145298){
     s0+=255.0;
     s1+=381.0;
    } else {
     s0+=237.0;
     s1+=3084.0;
    }
   }
  }
 } else {
  if(i20<0.002239406108856201){
   if(i37<0.0016277306713163853){
    if(i73<1.0007996559143066){
     s1+=226.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i6<-6.174272857606411e-05){
     s0+=1.0;
     s1+=65.0;
    } else {
     s0+=253.0;
    }
   }
  } else {
   if(i20<0.003166212234646082){
    if(i6<-2.8586389817064628e-05){
     s0+=25.0;
     s1+=300.0;
    } else {
     s0+=41.0;
     s1+=7.0;
    }
   } else {
    if(i73<1.00311279296875){
     s1+=8597.0;
    } else {
     s0+=7.0;
     s1+=165.0;
    }
   }
  }
 }
}
if(i3<1.0024782419204712){
 if(i8<1.0452277660369873){
  if(i2<0.08312517404556274){
   if(i68<0.0017414403846487403){
    if(i0<0.07663694024085999){
     s0+=58602.0;
     s1+=375.0;
    } else {
     s0+=183.0;
     s1+=53.0;
    }
   } else {
    if(i33<0.0009720802772790194){
     s0+=898.0;
     s1+=310.0;
    } else {
     s0+=2206.0;
     s1+=70.0;
    }
   }
  } else {
   if(i17<0.9985061287879944){
    if(i5<0.09508314728736877){
     s0+=308.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i42<0.0188844483345747){
     s0+=79.0;
     s1+=34.0;
    } else {
     s0+=60.0;
     s1+=277.0;
    }
   }
  }
 } else {
  if(i28<0.024464420974254608){
   if(i4<0.0001735091209411621){
    if(i1<0.07569560408592224){
     s0+=5223.0;
     s1+=405.0;
    } else {
     s0+=805.0;
     s1+=491.0;
    }
   } else {
    if(i47<0.9998601078987122){
     s0+=127.0;
     s1+=436.0;
    } else {
     s0+=819.0;
     s1+=407.0;
    }
   }
  } else {
   if(i2<0.08416748046875){
    if(i32<0.983995795249939){
     s0+=570.0;
     s1+=118.0;
    } else {
     s0+=434.0;
     s1+=470.0;
    }
   } else {
    if(i6<-8.414344847551547e-06){
     s0+=185.0;
     s1+=2436.0;
    } else {
     s0+=312.0;
     s1+=123.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i31<0.019127894192934036){
   if(i22<1.537799835205078e-05){
    if(i8<1.0568180084228516){
     s0+=1.0;
     s1+=44.0;
    } else {
     s0+=159.0;
     s1+=117.0;
    }
   } else {
    if(i4<0.0005483627319335938){
     s0+=25.0;
     s1+=32.0;
    } else {
     s0+=7.0;
     s1+=2116.0;
    }
   }
  } else {
   if(i56<0.000317797705065459){
    if(i32<0.9847095012664795){
     s0+=6.0;
     s1+=561.0;
    } else {
     s1+=7955.0;
    }
   } else {
    if(i51<0.02907879836857319){
     s0+=2.0;
    } else {
     s1+=35.0;
    }
   }
  }
 } else {
  if(i54<0.00018003582954406738){
   if(i31<0.010356885381042957){
    if(i66<0.0005610306398011744){
     s0+=158.0;
     s1+=2.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i69<-3.419841505092336e-06){
     s1+=28.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i20<0.0024049319326877594){
    s0+=3.0;
   } else {
    s1+=164.0;
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i23<1.010154128074646){
  if(i26<1.0401114225387573){
   if(i19<1.0486011505126953){
    if(i48<-0.006227642297744751){
     s0+=745.0;
     s1+=119.0;
    } else {
     s0+=54512.0;
     s1+=282.0;
    }
   } else {
    if(i8<1.0338647365570068){
     s0+=4578.0;
     s1+=177.0;
    } else {
     s0+=5877.0;
     s1+=1782.0;
    }
   }
  } else {
   if(i20<0.007215476594865322){
    if(i54<-0.0001391768455505371){
     s0+=732.0;
     s1+=17.0;
    } else {
     s0+=1751.0;
     s1+=695.0;
    }
   } else {
    if(i47<1.000352144241333){
     s0+=19.0;
     s1+=452.0;
    } else {
     s0+=92.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i1<0.0960962176322937){
   if(i37<0.0014684665948152542){
    if(i20<0.0014314167201519012){
     s0+=233.0;
     s1+=56.0;
    } else {
     s0+=34.0;
     s1+=333.0;
    }
   } else {
    if(i0<0.11541050672531128){
     s0+=1337.0;
     s1+=67.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i44<0.07123395800590515){
    if(i6<1.2284705007914454e-05){
     s0+=5.0;
     s1+=863.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i74<9.459980356041342e-05){
     s0+=401.0;
     s1+=202.0;
    } else {
     s0+=71.0;
     s1+=506.0;
    }
   }
  }
 }
} else {
 if(i46<0.00021661806385964155){
  if(i8<1.0441009998321533){
   s0+=199.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i1<0.1274447739124298){
   if(i63<0.00407642126083374){
    if(i22<0.00020933151245117188){
     s0+=270.0;
     s1+=1138.0;
    } else {
     s0+=1.0;
     s1+=1138.0;
    }
   } else {
    if(i56<8.757876639720052e-05){
     s0+=11.0;
     s1+=46.0;
    } else {
     s0+=102.0;
     s1+=6.0;
    }
   }
  } else {
   if(i40<-1.1704927601385862e-05){
    if(i2<0.16548368334770203){
     s0+=23.0;
     s1+=824.0;
    } else {
     s1+=8440.0;
    }
   } else {
    if(i51<-0.00777194369584322){
     s0+=5.0;
    } else {
     s1+=71.0;
    }
   }
  }
 }
}
if(i7<3.7610530853271484e-05){
 if(i9<1.0410068035125732){
  if(i62<0.010507332161068916){
   if(i22<0.0001658797264099121){
    if(i55<-0.0016816258430480957){
     s0+=224.0;
     s1+=120.0;
    } else {
     s0+=44864.0;
     s1+=75.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i7<-9.5367431640625e-06){
    if(i30<1.2392117977142334){
     s0+=5499.0;
     s1+=641.0;
    } else {
     s0+=10912.0;
     s1+=66.0;
    }
   } else {
    if(i0<0.06777393817901611){
     s0+=1757.0;
     s1+=329.0;
    } else {
     s0+=40.0;
     s1+=348.0;
    }
   }
  }
 } else {
  if(i6<-2.3218603018904105e-05){
   if(i50<1.0003390312194824){
    if(i17<0.998803436756134){
     s0+=298.0;
     s1+=53.0;
    } else {
     s0+=192.0;
     s1+=1964.0;
    }
   } else {
    if(i71<0.21315886080265045){
     s0+=1092.0;
     s1+=647.0;
    } else {
     s0+=59.0;
     s1+=320.0;
    }
   }
  } else {
   if(i56<3.0133636755635962e-05){
    if(i6<-1.7888723959913477e-05){
     s0+=245.0;
     s1+=71.0;
    } else {
     s0+=2770.0;
     s1+=111.0;
    }
   } else {
    if(i17<0.9988566637039185){
     s0+=1211.0;
     s1+=13.0;
    } else {
     s0+=1232.0;
     s1+=629.0;
    }
   }
  }
 }
} else {
 if(i41<1.0795294046401978){
  s0+=296.0;
 } else {
  if(i38<0.0001797717995941639){
   if(i30<1.1059328317642212){
    s1+=9.0;
   } else {
    s0+=44.0;
   }
  } else {
   if(i1<0.06632471084594727){
    if(i3<1.004202127456665){
     s0+=206.0;
     s1+=293.0;
    } else {
     s0+=14.0;
     s1+=493.0;
    }
   } else {
    if(i0<0.12861096858978271){
     s0+=134.0;
     s1+=1380.0;
    } else {
     s0+=24.0;
     s1+=9556.0;
    }
   }
  }
 }
}
if(i2<0.08346298336982727){
 if(i53<-0.028228431940078735){
  if(i20<0.004397047217935324){
   if(i28<0.01806289330124855){
    if(i22<0.00015985965728759766){
     s0+=1448.0;
     s1+=130.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i38<0.0023499401286244392){
     s0+=144.0;
     s1+=211.0;
    } else {
     s0+=395.0;
     s1+=64.0;
    }
   }
  } else {
   if(i50<0.9994288086891174){
    if(i1<0.06336265802383423){
     s0+=156.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i56<0.00016788108041509986){
     s0+=46.0;
     s1+=529.0;
    } else {
     s0+=214.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i8<1.0447232723236084){
   if(i17<1.0017714500427246){
    if(i19<1.0447232723236084){
     s0+=52671.0;
     s1+=203.0;
    } else {
     s0+=7605.0;
     s1+=498.0;
    }
   } else {
    if(i18<0.9975124597549438){
     s0+=206.0;
     s1+=1.0;
    } else {
     s0+=68.0;
     s1+=95.0;
    }
   }
  } else {
   if(i21<1.0006517171859741){
    if(i23<0.9932020902633667){
     s0+=577.0;
     s1+=203.0;
    } else {
     s0+=4231.0;
     s1+=308.0;
    }
   } else {
    if(i11<-0.0009846091270446777){
     s0+=496.0;
     s1+=35.0;
    } else {
     s0+=591.0;
     s1+=669.0;
    }
   }
  }
 }
} else {
 if(i20<0.004992709029465914){
  if(i22<0.00011259317398071289){
   if(i50<0.9992939233779907){
    if(i40<-1.0071161341329571e-05){
     s0+=11.0;
     s1+=15.0;
    } else {
     s0+=586.0;
     s1+=2.0;
    }
   } else {
    if(i63<0.004818081855773926){
     s0+=460.0;
     s1+=1220.0;
    } else {
     s0+=649.0;
     s1+=230.0;
    }
   }
  } else {
   if(i32<0.9995555877685547){
    if(i6<-3.6635879951063544e-05){
     s0+=23.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<0.0003621520008891821){
     s0+=2.0;
    } else {
     s0+=14.0;
     s1+=1129.0;
    }
   }
  }
 } else {
  if(i19<1.0640453100204468){
   if(i70<1.6200738173210993e-05){
    if(i37<0.002275067614391446){
     s0+=1.0;
     s1+=115.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i30<1.2876198291778564){
     s0+=15.0;
     s1+=16.0;
    } else {
     s0+=91.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<-5.358457565307617e-05){
    if(i73<1.0013105869293213){
     s0+=52.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=86.0;
    }
   } else {
    if(i0<0.11660927534103394){
     s0+=116.0;
     s1+=953.0;
    } else {
     s0+=26.0;
     s1+=10423.0;
    }
   }
  }
 }
}
if(i1<0.07645988464355469){
 if(i15<2.199411392211914e-05){
  if(i8<1.0451740026474){
   if(i52<-0.0015513598918914795){
    if(i14<0.9656562209129333){
     s0+=806.0;
     s1+=8.0;
    } else {
     s0+=1159.0;
     s1+=271.0;
    }
   } else {
    if(i62<0.009496256709098816){
     s0+=43219.0;
     s1+=81.0;
    } else {
     s0+=16286.0;
     s1+=462.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i28<0.011350585147738457){
     s0+=1493.0;
     s1+=198.0;
    } else {
     s0+=422.0;
     s1+=824.0;
    }
   } else {
    if(i23<0.9652718305587769){
     s0+=405.0;
     s1+=126.0;
    } else {
     s0+=4503.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i53<-0.0004101395606994629){
   if(i18<1.000554084777832){
    if(i51<0.014454546384513378){
     s0+=219.0;
     s1+=45.0;
    } else {
     s0+=36.0;
     s1+=121.0;
    }
   } else {
    if(i34<1.0547351837158203){
     s0+=6.0;
    } else {
     s0+=35.0;
     s1+=720.0;
    }
   }
  } else {
   if(i35<1.1759474277496338){
    if(i33<0.00043770609772764146){
     s0+=165.0;
    } else {
     s0+=5.0;
     s1+=123.0;
    }
   } else {
    if(i3<1.0065255165100098){
     s0+=481.0;
     s1+=19.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i22<6.0111284255981445e-05){
  if(i64<0.020962059497833252){
   if(i17<0.9975716471672058){
    s0+=114.0;
   } else {
    if(i24<1.0286903381347656){
     s0+=58.0;
     s1+=2023.0;
    } else {
     s0+=167.0;
     s1+=448.0;
    }
   }
  } else {
   if(i31<0.03889665752649307){
    if(i67<-0.004480121191591024){
     s0+=971.0;
     s1+=312.0;
    } else {
     s0+=435.0;
     s1+=584.0;
    }
   } else {
    if(i3<0.9940111637115479){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=604.0;
    }
   }
  }
 } else {
  if(i6<-2.240788671770133e-05){
   if(i50<0.9989066123962402){
    if(i21<1.000197172164917){
     s0+=25.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i20<0.0027800307143479586){
     s0+=58.0;
     s1+=503.0;
    } else {
     s0+=2.0;
     s1+=9438.0;
    }
   }
  } else {
   if(i38<0.011462216265499592){
    if(i45<0.0027588813100010157){
     s0+=68.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  }
 }
}
if(i2<0.08314889669418335){
 if(i38<0.00030562852043658495){
  if(i21<1.0036982297897339){
   if(i46<0.0002543526061344892){
    if(i18<1.0044364929199219){
     s0+=43961.0;
     s1+=33.0;
    } else {
     s0+=211.0;
     s1+=32.0;
    }
   } else {
    if(i24<0.9887982606887817){
     s0+=460.0;
     s1+=89.0;
    } else {
     s0+=8968.0;
     s1+=173.0;
    }
   }
  } else {
   if(i6<-4.64523327536881e-05){
    s1+=103.0;
   } else {
    if(i31<0.010701362043619156){
     s0+=53.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i41<1.1037919521331787){
   if(i8<1.0380855798721313){
    if(i41<1.0703742504119873){
     s0+=1594.0;
    } else {
     s0+=391.0;
     s1+=247.0;
    }
   } else {
    if(i6<-1.3528846466215327e-05){
     s0+=69.0;
     s1+=933.0;
    } else {
     s0+=1496.0;
     s1+=447.0;
    }
   }
  } else {
   if(i52<-0.0036889314651489258){
    if(i50<1.0010523796081543){
     s0+=1636.0;
     s1+=243.0;
    } else {
     s0+=107.0;
     s1+=325.0;
    }
   } else {
    if(i21<1.0063624382019043){
     s0+=10083.0;
     s1+=307.0;
    } else {
     s0+=101.0;
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i22<3.248453140258789e-05){
  if(i17<0.9985275268554688){
   if(i43<0.006982252933084965){
    if(i22<-8.037686347961426e-05){
     s0+=619.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   } else {
    if(i8<1.045822024345398){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=18.0;
    }
   }
  } else {
   if(i42<0.0802004486322403){
    if(i67<-0.0053334785625338554){
     s0+=609.0;
     s1+=344.0;
    } else {
     s0+=208.0;
     s1+=1007.0;
    }
   } else {
    if(i70<8.38882988318801e-06){
     s0+=237.0;
     s1+=884.0;
    } else {
     s0+=76.0;
     s1+=1511.0;
    }
   }
  }
 } else {
  if(i43<0.0005815459880977869){
   if(i6<-2.4982098693726584e-05){
    if(i27<0.9961103200912476){
     s0+=10.0;
    } else {
     s1+=168.0;
    }
   } else {
    if(i58<-0.0005745291709899902){
     s1+=1.0;
    } else {
     s0+=87.0;
    }
   }
  } else {
   if(i15<-1.4543533325195312e-05){
    s0+=12.0;
   } else {
    if(i1<0.10162872076034546){
     s0+=66.0;
     s1+=807.0;
    } else {
     s0+=36.0;
     s1+=9331.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i4<0.0006021559238433838){
  if(i5<0.07570505142211914){
   if(i19<1.0475225448608398){
    if(i58<-0.00232502818107605){
     s0+=1617.0;
     s1+=183.0;
    } else {
     s0+=53670.0;
     s1+=125.0;
    }
   } else {
    if(i37<0.0015431703068315983){
     s0+=3687.0;
     s1+=1084.0;
    } else {
     s0+=6113.0;
     s1+=239.0;
    }
   }
  } else {
   if(i39<0.05038914084434509){
    if(i28<0.010510922409594059){
     s0+=27.0;
     s1+=29.0;
    } else {
     s0+=8.0;
     s1+=231.0;
    }
   } else {
    if(i59<-7.457179890479892e-05){
     s0+=52.0;
     s1+=55.0;
    } else {
     s0+=118.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i6<-4.063192318426445e-05){
   if(i40<-1.2388334653223865e-05){
    if(i30<1.5682398080825806){
     s0+=3.0;
     s1+=671.0;
    } else {
     s0+=9.0;
     s1+=27.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   if(i40<-1.417127077729674e-05){
    if(i32<1.0114942789077759){
     s1+=44.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.008981980383396149){
     s0+=133.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i5<0.08145597577095032){
  if(i22<0.00011157989501953125){
   if(i7<1.1265277862548828e-05){
    if(i35<1.1037919521331787){
     s0+=935.0;
     s1+=426.0;
    } else {
     s0+=2622.0;
     s1+=313.0;
    }
   } else {
    if(i31<0.01138225756585598){
     s0+=451.0;
     s1+=126.0;
    } else {
     s0+=282.0;
     s1+=613.0;
    }
   }
  } else {
   if(i6<-4.281087967683561e-05){
    if(i13<-0.00025090575218200684){
     s0+=35.0;
    } else {
     s0+=16.0;
     s1+=1633.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=89.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i13<-0.0004054605960845947){
   if(i18<0.9843720197677612){
    s1+=3.0;
   } else {
    s0+=277.0;
   }
  } else {
   if(i7<3.343820571899414e-05){
    if(i66<0.00022057526803109795){
     s0+=466.0;
     s1+=233.0;
    } else {
     s0+=397.0;
     s1+=1832.0;
    }
   } else {
    if(i22<6.258487701416016e-06){
     s0+=126.0;
     s1+=973.0;
    } else {
     s0+=22.0;
     s1+=8125.0;
    }
   }
  }
 }
}
if(i5<0.07132148742675781){
 if(i9<1.0409057140350342){
  if(i8<1.0412344932556152){
   if(i1<0.08023148775100708){
    if(i46<0.0002816813357640058){
     s0+=43955.0;
     s1+=42.0;
    } else {
     s0+=15609.0;
     s1+=593.0;
    }
   } else {
    if(i11<-0.0009384453296661377){
     s0+=56.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=56.0;
    }
   }
  } else {
   if(i2<0.06722879409790039){
    if(i33<0.001019603805616498){
     s0+=1284.0;
     s1+=357.0;
    } else {
     s0+=2247.0;
     s1+=170.0;
    }
   } else {
    if(i21<0.9980297088623047){
     s0+=106.0;
     s1+=24.0;
    } else {
     s0+=80.0;
     s1+=369.0;
    }
   }
  }
 } else {
  if(i0<0.0758490264415741){
   if(i20<0.004255582112818956){
    if(i67<-0.0027273769956082106){
     s0+=1613.0;
     s1+=27.0;
    } else {
     s0+=3153.0;
     s1+=516.0;
    }
   } else {
    if(i18<1.000586748123169){
     s0+=794.0;
     s1+=289.0;
    } else {
     s0+=52.0;
     s1+=419.0;
    }
   }
  } else {
   if(i61<-0.01162203773856163){
    if(i57<0.0020264126360416412){
     s0+=66.0;
     s1+=33.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   } else {
    if(i64<0.02422603964805603){
     s0+=28.0;
     s1+=1495.0;
    } else {
     s0+=33.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00038883090019226074){
  if(i66<6.957219738978893e-05){
   if(i21<0.9968560338020325){
    s0+=2.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i15<-1.4603137969970703e-05){
    if(i13<-0.00041237473487854004){
     s0+=451.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=5.0;
    }
   } else {
    if(i65<0.0010919435881078243){
     s0+=18.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i6<-2.3059745217324235e-05){
   if(i7<5.429983139038086e-05){
    if(i5<0.10893562436103821){
     s0+=410.0;
     s1+=1032.0;
    } else {
     s0+=120.0;
     s1+=2031.0;
    }
   } else {
    if(i4<0.0007508397102355957){
     s0+=4.0;
    } else {
     s0+=56.0;
     s1+=8941.0;
    }
   }
  } else {
   if(i26<1.030937671661377){
    if(i28<0.008124427869915962){
     s0+=16.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=142.0;
    }
   } else {
    if(i33<0.004910494200885296){
     s0+=881.0;
     s1+=216.0;
    } else {
     s0+=88.0;
     s1+=222.0;
    }
   }
  }
 }
}
if(i0<0.08507418632507324){
 if(i55<-0.0013684630393981934){
  if(i17<1.0016409158706665){
   if(i1<0.03965926170349121){
    if(i3<0.9975826144218445){
     s0+=3069.0;
     s1+=82.0;
    } else {
     s0+=1468.0;
     s1+=362.0;
    }
   } else {
    if(i25<0.027732491493225098){
     s0+=55.0;
     s1+=232.0;
    } else {
     s0+=766.0;
     s1+=255.0;
    }
   }
  } else {
   if(i30<1.5682398080825806){
    if(i70<1.3545546607929282e-05){
     s0+=9.0;
     s1+=452.0;
    } else {
     s0+=81.0;
     s1+=66.0;
    }
   } else {
    if(i31<0.03764810413122177){
     s0+=172.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i11<0.0010965466499328613){
   if(i4<0.0006022751331329346){
    if(i8<1.0452277660369873){
     s0+=58173.0;
     s1+=335.0;
    } else {
     s0+=5648.0;
     s1+=830.0;
    }
   } else {
    if(i18<0.999933123588562){
     s0+=107.0;
     s1+=20.0;
    } else {
     s0+=72.0;
     s1+=169.0;
    }
   }
  } else {
   if(i45<0.0024301998782902956){
    s1+=312.0;
   } else {
    if(i3<1.00465989112854){
     s0+=106.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00041306018829345703){
  if(i56<0.00017937980010174215){
   s0+=392.0;
  } else {
   if(i64<0.03533771634101868){
    s1+=10.0;
   } else {
    if(i31<0.008496114052832127){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i18<1.0021934509277344){
   if(i63<0.004011332988739014){
    if(i39<0.04275330901145935){
     s0+=24.0;
     s1+=1967.0;
    } else {
     s0+=188.0;
     s1+=585.0;
    }
   } else {
    if(i2<0.177952378988266){
     s0+=609.0;
     s1+=241.0;
    } else {
     s0+=169.0;
     s1+=1190.0;
    }
   }
  } else {
   if(i73<1.004622220993042){
    if(i6<-4.27990235039033e-05){
     s0+=35.0;
     s1+=9610.0;
    } else {
     s0+=70.0;
     s1+=169.0;
    }
   } else {
    if(i19<1.1926465034484863){
     s0+=14.0;
     s1+=5.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i0<0.08223113417625427){
  if(i38<0.00030667014652863145){
   if(i17<1.0007002353668213){
    if(i57<0.0008439854718744755){
     s0+=51370.0;
     s1+=69.0;
    } else {
     s0+=189.0;
     s1+=89.0;
    }
   } else {
    if(i10<1.0089528560638428){
     s0+=2229.0;
     s1+=105.0;
    } else {
     s0+=17.0;
     s1+=53.0;
    }
   }
  } else {
   if(i41<1.1037919521331787){
    if(i6<-6.619698979193345e-06){
     s0+=323.0;
     s1+=834.0;
    } else {
     s0+=3237.0;
     s1+=392.0;
    }
   } else {
    if(i24<0.9312427639961243){
     s0+=1282.0;
     s1+=192.0;
    } else {
     s0+=10530.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i43<0.00045622797915712){
   if(i22<5.9723854064941406e-05){
    if(i53<0.03335946798324585){
     s0+=93.0;
     s1+=12.0;
    } else {
     s0+=239.0;
    }
   } else {
    if(i72<0.996659517288208){
     s0+=17.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i6<-1.3793662219541147e-05){
    if(i1<0.10540494322776794){
     s0+=360.0;
     s1+=741.0;
    } else {
     s0+=183.0;
     s1+=2215.0;
    }
   } else {
    if(i67<-0.0034151431173086166){
     s0+=604.0;
     s1+=102.0;
    } else {
     s0+=101.0;
     s1+=246.0;
    }
   }
  }
 }
} else {
 if(i37<0.0003137579478789121){
  s0+=148.0;
 } else {
  if(i18<1.0063705444335938){
   if(i0<0.12324169278144836){
    if(i73<0.9976574182510376){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=269.0;
     s1+=775.0;
    }
   } else {
    if(i61<-0.04568297415971756){
     s0+=25.0;
     s1+=450.0;
    } else {
     s0+=8.0;
     s1+=1799.0;
    }
   }
  } else {
   if(i8<1.0330078601837158){
    if(i21<1.004868507385254){
     s0+=15.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i4<0.0009004473686218262){
     s0+=44.0;
     s1+=344.0;
    } else {
     s0+=2.0;
     s1+=8183.0;
    }
   }
  }
 }
}
if(i0<0.08236882090568542){
 if(i22<0.00016120076179504395){
  if(i7<4.673004150390625e-05){
   if(i19<1.0467959642410278){
    if(i3<1.0026142597198486){
     s0+=54844.0;
     s1+=265.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<0.9978059530258179){
     s0+=6800.0;
     s1+=246.0;
    } else {
     s0+=7299.0;
     s1+=1547.0;
    }
   }
  } else {
   if(i68<0.0050133224576711655){
    if(i18<1.0003252029418945){
     s0+=101.0;
     s1+=22.0;
    } else {
     s0+=53.0;
     s1+=139.0;
    }
   } else {
    if(i11<-0.0030975043773651123){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i11<0.0015987753868103027){
   if(i9<1.0370097160339355){
    if(i13<0.0006066560745239258){
     s0+=253.0;
     s1+=12.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i45<0.0022784587927162647){
     s0+=1.0;
     s1+=143.0;
    } else {
     s0+=78.0;
     s1+=8.0;
    }
   }
  } else {
   s1+=366.0;
  }
 }
} else {
 if(i3<1.0015796422958374){
  if(i44<0.05801957845687866){
   if(i45<0.0004766466736327857){
    if(i40<-3.775756795221241e-06){
     s1+=8.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i13<-0.0004863440990447998){
     s0+=23.0;
    } else {
     s0+=39.0;
     s1+=1665.0;
    }
   }
  } else {
   if(i28<0.03499505668878555){
    if(i6<-1.5338893717853352e-05){
     s0+=379.0;
     s1+=344.0;
    } else {
     s0+=719.0;
     s1+=69.0;
    }
   } else {
    if(i7<-5.40614128112793e-05){
     s0+=162.0;
     s1+=45.0;
    } else {
     s0+=123.0;
     s1+=831.0;
    }
   }
  }
 } else {
  if(i18<1.0063121318817139){
   if(i2<0.13237899541854858){
    if(i52<0.0037605464458465576){
     s0+=23.0;
     s1+=499.0;
    } else {
     s0+=123.0;
     s1+=30.0;
    }
   } else {
    if(i4<0.00015747547149658203){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=2330.0;
    }
   }
  } else {
   if(i6<-4.360271850600839e-05){
    s1+=8297.0;
   } else {
    if(i48<0.012056410312652588){
     s1+=18.0;
    } else {
     s0+=18.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i15<1.9848346710205078e-05){
 if(i2<0.08502736687660217){
  if(i0<0.0663345456123352){
   if(i55<-0.0012782514095306396){
    if(i45<0.0008625079644843936){
     s0+=1439.0;
     s1+=571.0;
    } else {
     s0+=3986.0;
     s1+=157.0;
    }
   } else {
    if(i28<0.014968262054026127){
     s0+=52817.0;
     s1+=182.0;
    } else {
     s0+=7317.0;
     s1+=449.0;
    }
   }
  } else {
   if(i64<0.017561376094818115){
    if(i52<0.003219902515411377){
     s0+=76.0;
     s1+=479.0;
    } else {
     s0+=211.0;
     s1+=10.0;
    }
   } else {
    if(i26<1.010038137435913){
     s0+=14.0;
     s1+=43.0;
    } else {
     s0+=2207.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i13<-0.0004050135612487793){
   if(i6<-5.508054528036155e-05){
    if(i2<0.13683852553367615){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i49<0.003838558681309223){
     s0+=670.0;
     s1+=5.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i59<-0.00010932412988040596){
    if(i44<0.058719366788864136){
     s0+=42.0;
     s1+=2292.0;
    } else {
     s0+=501.0;
     s1+=1756.0;
    }
   } else {
    if(i36<1.0089325904846191){
     s0+=85.0;
     s1+=388.0;
    } else {
     s0+=386.0;
     s1+=88.0;
    }
   }
  }
 }
} else {
 if(i22<-0.00010353326797485352){
  if(i5<0.0982358455657959){
   if(i8<1.1197855472564697){
    if(i56<0.00014580483548343182){
     s0+=264.0;
     s1+=134.0;
    } else {
     s0+=722.0;
     s1+=46.0;
    }
   } else {
    if(i28<0.03940954431891441){
     s0+=9.0;
     s1+=37.0;
    } else {
     s1+=136.0;
    }
   }
  } else {
   if(i19<1.125802755355835){
    if(i24<1.02512526512146){
     s0+=4.0;
     s1+=56.0;
    } else {
     s0+=46.0;
     s1+=21.0;
    }
   } else {
    if(i43<0.00498554902151227){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=648.0;
    }
   }
  }
 } else {
  if(i41<1.0718756914138794){
   s0+=283.0;
  } else {
   if(i74<4.8532332584727556e-05){
    if(i4<0.00040858983993530273){
     s0+=33.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=540.0;
    }
   } else {
    if(i0<0.05765557289123535){
     s0+=63.0;
     s1+=211.0;
    } else {
     s0+=52.0;
     s1+=8572.0;
    }
   }
  }
 }
}
if(i10<1.0081498622894287){
 if(i13<0.0005875229835510254){
  if(i5<0.07199159264564514){
   if(i46<0.0003981383633799851){
    if(i3<1.0025315284729004){
     s0+=49388.0;
     s1+=171.0;
    } else {
     s0+=30.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.07825559377670288){
     s0+=17867.0;
     s1+=1435.0;
    } else {
     s0+=140.0;
     s1+=535.0;
    }
   }
  } else {
   if(i31<0.040245652198791504){
    if(i44<0.05796167254447937){
     s0+=179.0;
     s1+=636.0;
    } else {
     s0+=1142.0;
     s1+=458.0;
    }
   } else {
    if(i3<0.9938099384307861){
     s0+=22.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=584.0;
    }
   }
  }
 } else {
  if(i21<1.003507137298584){
   if(i31<0.03698994591832161){
    if(i18<1.0009576082229614){
     s0+=579.0;
     s1+=118.0;
    } else {
     s0+=31.0;
     s1+=134.0;
    }
   } else {
    if(i62<0.0392494797706604){
     s0+=1.0;
    } else {
     s1+=220.0;
    }
   }
  } else {
   if(i2<0.05826219916343689){
    if(i4<0.0006384849548339844){
     s0+=103.0;
     s1+=4.0;
    } else {
     s0+=53.0;
     s1+=184.0;
    }
   } else {
    if(i11<-0.0008037686347961426){
     s0+=74.0;
     s1+=433.0;
    } else {
     s0+=5.0;
     s1+=1276.0;
    }
   }
  }
 }
} else {
 if(i13<0.0005641281604766846){
  if(i20<0.0033472783397883177){
   if(i37<0.0012992265401408076){
    if(i40<-2.3913755740068154e-06){
     s0+=18.0;
     s1+=514.0;
    } else {
     s0+=46.0;
     s1+=12.0;
    }
   } else {
    if(i0<0.19872689247131348){
     s0+=1044.0;
     s1+=103.0;
    } else {
     s0+=30.0;
     s1+=193.0;
    }
   }
  } else {
   if(i12<1.0016810894012451){
    if(i13<-0.0002605915069580078){
     s0+=93.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=384.0;
    }
   } else {
    if(i4<-0.0006936788558959961){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=1958.0;
    }
   }
  }
 } else {
  if(i3<1.0029834508895874){
   if(i46<0.009046576917171478){
    if(i47<1.0000545978546143){
     s0+=73.0;
     s1+=13.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i2<0.11260724067687988){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=123.0;
    }
   }
  } else {
   if(i12<1.0083813667297363){
    if(i31<0.008061371743679047){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=627.0;
    }
   } else {
    s1+=7047.0;
   }
  }
 }
}
if(i2<0.0824936032295227){
 if(i12<1.006021499633789){
  if(i48<-0.00612872838973999){
   if(i7<1.8715858459472656e-05){
    if(i33<0.0009798570536077023){
     s0+=892.0;
     s1+=437.0;
    } else {
     s0+=2624.0;
     s1+=211.0;
    }
   } else {
    if(i32<0.9679902791976929){
     s0+=49.0;
     s1+=52.0;
    } else {
     s0+=43.0;
     s1+=324.0;
    }
   }
  } else {
   if(i1<0.06351593136787415){
    if(i46<0.0002703841309994459){
     s0+=43975.0;
     s1+=29.0;
    } else {
     s0+=18208.0;
     s1+=828.0;
    }
   } else {
    if(i63<0.0008608698844909668){
     s0+=304.0;
     s1+=294.0;
    } else {
     s0+=2304.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i40<-1.4116389138507657e-05){
   if(i22<5.543231964111328e-06){
    if(i44<0.009717166423797607){
     s1+=4.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i27<1.0243303775787354){
     s1+=572.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  } else {
   if(i45<0.0011102557182312012){
    if(i31<0.0026916698552668095){
     s0+=5.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i56<-3.5965320421382785e-05){
     s1+=5.0;
    } else {
     s0+=638.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i73<0.9970192909240723){
  s0+=389.0;
 } else {
  if(i21<1.003000020980835){
   if(i50<0.9992896318435669){
    if(i49<0.0018083530012518167){
     s0+=340.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=37.0;
    }
   } else {
    if(i20<0.0017457695212215185){
     s0+=632.0;
     s1+=273.0;
    } else {
     s0+=612.0;
     s1+=4233.0;
    }
   }
  } else {
   if(i7<5.120038986206055e-05){
    if(i31<0.01615803688764572){
     s0+=63.0;
     s1+=146.0;
    } else {
     s0+=35.0;
     s1+=666.0;
    }
   } else {
    if(i2<0.08258795738220215){
     s0+=2.0;
    } else {
     s0+=28.0;
     s1+=8725.0;
    }
   }
  }
 }
}
if(i7<3.74913215637207e-05){
 if(i0<0.0834648609161377){
  if(i57<0.0007819994352757931){
   if(i65<-8.41881992528215e-05){
    if(i31<0.009220553562045097){
     s0+=169.0;
     s1+=38.0;
    } else {
     s0+=47.0;
     s1+=102.0;
    }
   } else {
    if(i9<1.0406912565231323){
     s0+=57173.0;
     s1+=373.0;
    } else {
     s0+=4170.0;
     s1+=493.0;
    }
   }
  } else {
   if(i3<0.9967700242996216){
    if(i32<0.9744588732719421){
     s0+=3339.0;
     s1+=36.0;
    } else {
     s0+=1168.0;
     s1+=95.0;
    }
   } else {
    if(i0<0.04070866107940674){
     s0+=2133.0;
     s1+=425.0;
    } else {
     s0+=780.0;
     s1+=536.0;
    }
   }
  }
 } else {
  if(i67<-0.0051826308481395245){
   if(i6<-2.8190399461891502e-05){
    if(i15<1.0967254638671875e-05){
     s0+=21.0;
     s1+=627.0;
    } else {
     s0+=225.0;
     s1+=423.0;
    }
   } else {
    if(i45<0.0037288526073098183){
     s0+=621.0;
     s1+=11.0;
    } else {
     s0+=149.0;
     s1+=205.0;
    }
   }
  } else {
   if(i41<1.0670123100280762){
    s0+=137.0;
   } else {
    if(i64<0.03955671191215515){
     s0+=86.0;
     s1+=2008.0;
    } else {
     s0+=224.0;
     s1+=226.0;
    }
   }
  }
 }
} else {
 if(i35<1.0624027252197266){
  s0+=335.0;
 } else {
  if(i18<1.006528377532959){
   if(i0<0.11540913581848145){
    if(i61<-0.01816270500421524){
     s0+=118.0;
     s1+=8.0;
    } else {
     s0+=234.0;
     s1+=690.0;
    }
   } else {
    if(i28<0.020953387022018433){
     s0+=20.0;
     s1+=202.0;
    } else {
     s0+=17.0;
     s1+=2040.0;
    }
   }
  } else {
   if(i49<0.0009928129147738218){
    if(i32<1.0107786655426025){
     s0+=42.0;
     s1+=86.0;
    } else {
     s0+=11.0;
     s1+=657.0;
    }
   } else {
    s1+=7752.0;
   }
  }
 }
}
if(i2<0.08502665162086487){
 if(i51<0.008502040058374405){
  if(i14<1.0061876773834229){
   if(i58<-0.0017163753509521484){
    if(i30<1.2385294437408447){
     s0+=2134.0;
     s1+=605.0;
    } else {
     s0+=3120.0;
     s1+=68.0;
    }
   } else {
    if(i8<1.0410068035125732){
     s0+=54271.0;
     s1+=179.0;
    } else {
     s0+=5706.0;
     s1+=465.0;
    }
   }
  } else {
   if(i33<0.0011726354714483023){
    if(i59<-0.00033136061392724514){
     s0+=111.0;
     s1+=10.0;
    } else {
     s0+=141.0;
     s1+=459.0;
    }
   } else {
    if(i54<0.0002834200859069824){
     s0+=1142.0;
     s1+=28.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i11<0.0009659528732299805){
   if(i69<-1.0429415851831436e-05){
    if(i1<0.0144195556640625){
     s0+=80.0;
     s1+=27.0;
    } else {
     s0+=40.0;
     s1+=196.0;
    }
   } else {
    if(i2<0.032243311405181885){
     s0+=1884.0;
     s1+=245.0;
    } else {
     s0+=739.0;
     s1+=478.0;
    }
   }
  } else {
   if(i73<1.0014135837554932){
    if(i6<-4.301869194023311e-05){
     s0+=1.0;
     s1+=283.0;
    } else {
     s0+=6.0;
     s1+=8.0;
    }
   } else {
    if(i16<0.9909443259239197){
     s1+=1.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i3<0.9959895610809326){
  if(i30<1.4901387691497803){
   if(i4<-0.0008330643177032471){
    s0+=440.0;
   } else {
    if(i65<0.0008601151639595628){
     s0+=90.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i6<-2.0512627088464797e-05){
    if(i59<1.0955380275845528e-05){
     s0+=4.0;
     s1+=93.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   } else {
    if(i57<0.0015081192832440138){
     s0+=65.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i45<0.006322205066680908){
   if(i25<0.06621295213699341){
    if(i22<-0.00033530592918395996){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=45.0;
     s1+=2477.0;
    }
   } else {
    if(i1<0.11905840039253235){
     s0+=696.0;
     s1+=513.0;
    } else {
     s0+=352.0;
     s1+=1518.0;
    }
   }
  } else {
   if(i56<0.0002523253788240254){
    if(i73<1.002228856086731){
     s0+=42.0;
     s1+=8679.0;
    } else {
     s0+=29.0;
     s1+=341.0;
    }
   } else {
    if(i66<0.001482574618421495){
     s0+=39.0;
     s1+=17.0;
    } else {
     s1+=265.0;
    }
   }
  }
 }
}
if(i21<1.002579927444458){
 if(i25<0.060194969177246094){
  if(i19<1.0485899448394775){
   if(i68<0.0016259596450254321){
    if(i65<0.00028061497141607106){
     s0+=49558.0;
     s1+=77.0;
    } else {
     s0+=3845.0;
     s1+=118.0;
    }
   } else {
    if(i59<0.00013513817975763232){
     s0+=832.0;
     s1+=136.0;
    } else {
     s0+=868.0;
     s1+=8.0;
    }
   }
  } else {
   if(i6<-3.274676782893948e-05){
    if(i4<6.905198097229004e-05){
     s0+=1600.0;
     s1+=429.0;
    } else {
     s0+=430.0;
     s1+=1167.0;
    }
   } else {
    if(i3<0.9970616698265076){
     s0+=3960.0;
     s1+=101.0;
    } else {
     s0+=6152.0;
     s1+=1254.0;
    }
   }
  }
 } else {
  if(i2<0.11115330457687378){
   if(i6<-2.3289241653401405e-05){
    if(i45<0.0010286247124895453){
     s0+=16.0;
     s1+=171.0;
    } else {
     s0+=332.0;
     s1+=140.0;
    }
   } else {
    if(i0<0.08725681900978088){
     s0+=977.0;
     s1+=26.0;
    } else {
     s0+=358.0;
     s1+=68.0;
    }
   }
  } else {
   if(i45<0.0035057414788752794){
    if(i39<0.0871809720993042){
     s0+=140.0;
     s1+=656.0;
    } else {
     s0+=431.0;
     s1+=25.0;
    }
   } else {
    if(i22<6.258487701416016e-06){
     s0+=140.0;
     s1+=800.0;
    } else {
     s0+=5.0;
     s1+=1074.0;
    }
   }
  }
 }
} else {
 if(i2<0.0655813217163086){
  if(i4<0.0004528164863586426){
   if(i32<0.9723789691925049){
    if(i72<1.0169095993041992){
     s0+=705.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i65<0.00026996847009286284){
     s0+=264.0;
     s1+=5.0;
    } else {
     s0+=65.0;
     s1+=59.0;
    }
   }
  } else {
   if(i29<0.00018965790513902903){
    if(i49<0.0009271205635741353){
     s0+=71.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i73<0.9976924061775208){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=91.0;
     s1+=466.0;
    }
   }
  }
 } else {
  if(i4<0.0005823373794555664){
   if(i28<0.026049116626381874){
    if(i44<0.031575530767440796){
     s0+=3.0;
     s1+=53.0;
    } else {
     s0+=212.0;
     s1+=80.0;
    }
   } else {
    if(i2<0.07725775241851807){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=471.0;
    }
   }
  } else {
   if(i2<0.13164687156677246){
    if(i67<-0.009226161055266857){
     s0+=41.0;
     s1+=7.0;
    } else {
     s0+=40.0;
     s1+=1530.0;
    }
   } else {
    if(i40<-1.119320859288564e-05){
     s0+=3.0;
     s1+=8091.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i1<0.07800713181495667){
  if(i42<0.025792963802814484){
   if(i10<1.0081751346588135){
    if(i28<0.022007379680871964){
     s0+=56178.0;
     s1+=432.0;
    } else {
     s0+=921.0;
     s1+=170.0;
    }
   } else {
    if(i34<1.0924489498138428){
     s0+=13.0;
     s1+=166.0;
    } else {
     s0+=113.0;
     s1+=7.0;
    }
   }
  } else {
   if(i37<0.0020232335664331913){
    if(i54<-3.573298454284668e-05){
     s0+=2061.0;
     s1+=95.0;
    } else {
     s0+=1324.0;
     s1+=1019.0;
    }
   } else {
    if(i53<-0.02458438277244568){
     s0+=1265.0;
     s1+=183.0;
    } else {
     s0+=6911.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i54<-0.00015497207641601562){
   if(i40<-1.0015804946306162e-05){
    if(i41<1.1414752006530762){
     s0+=14.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   } else {
    s0+=468.0;
   }
  } else {
   if(i6<-1.2031832739012316e-05){
    if(i52<0.004568219184875488){
     s0+=124.0;
     s1+=2099.0;
    } else {
     s0+=451.0;
     s1+=900.0;
    }
   } else {
    if(i25<0.06059113144874573){
     s0+=12.0;
     s1+=121.0;
    } else {
     s0+=620.0;
     s1+=156.0;
    }
   }
  }
 }
} else {
 if(i34<1.0590304136276245){
  s0+=185.0;
 } else {
  if(i20<0.0023749331012368202){
   if(i50<1.0009444952011108){
    if(i6<-5.255727228359319e-05){
     s1+=65.0;
    } else {
     s0+=158.0;
     s1+=9.0;
    }
   } else {
    if(i56<4.132123649469577e-05){
     s0+=1.0;
     s1+=130.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i32<0.9976953268051147){
    if(i28<0.043385379016399384){
     s0+=193.0;
     s1+=453.0;
    } else {
     s0+=27.0;
     s1+=1258.0;
    }
   } else {
    if(i73<1.00311279296875){
     s0+=16.0;
     s1+=9644.0;
    } else {
     s0+=26.0;
     s1+=149.0;
    }
   }
  }
 }
}
if(i8<1.0564017295837402){
 if(i10<1.0080902576446533){
  if(i65<0.00027039460837841034){
   if(i23<1.009770393371582){
    if(i21<1.0037181377410889){
     s0+=55220.0;
     s1+=530.0;
    } else {
     s0+=24.0;
     s1+=74.0;
    }
   } else {
    if(i34<1.1070735454559326){
     s0+=46.0;
     s1+=131.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.9902098774909973){
    if(i4<0.0003718733787536621){
     s0+=7664.0;
     s1+=174.0;
    } else {
     s0+=28.0;
     s1+=96.0;
    }
   } else {
    if(i20<0.001189058879390359){
     s0+=784.0;
     s1+=236.0;
    } else {
     s0+=548.0;
     s1+=750.0;
    }
   }
  }
 } else {
  if(i2<0.053438156843185425){
   if(i29<0.0002149463107343763){
    if(i45<0.0005224295891821384){
     s1+=7.0;
    } else {
     s0+=96.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.083996295928955){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i32<1.02101731300354){
    if(i48<0.018282771110534668){
     s0+=20.0;
     s1+=457.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i69<-4.428627107699867e-06){
     s1+=9.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
} else {
 if(i0<0.08586421608924866){
  if(i18<1.0053470134735107){
   if(i33<0.0011287308298051357){
    if(i43<0.0005222748150117695){
     s0+=928.0;
     s1+=105.0;
    } else {
     s0+=73.0;
     s1+=447.0;
    }
   } else {
    if(i31<0.04882403463125229){
     s0+=4088.0;
     s1+=432.0;
    } else {
     s0+=11.0;
     s1+=106.0;
    }
   }
  } else {
   if(i6<-5.621142918244004e-05){
    if(i16<0.8932077288627625){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=530.0;
    }
   } else {
    if(i13<0.0004908442497253418){
     s0+=75.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i6<-1.3797138308291323e-05){
   if(i22<0.00011247396469116211){
    if(i2<0.12573164701461792){
     s0+=334.0;
     s1+=725.0;
    } else {
     s0+=171.0;
     s1+=2946.0;
    }
   } else {
    if(i4<0.0008243322372436523){
     s0+=26.0;
     s1+=827.0;
    } else {
     s0+=1.0;
     s1+=8289.0;
    }
   }
  } else {
   if(i47<1.0000667572021484){
    if(i8<1.084604263305664){
     s0+=120.0;
     s1+=94.0;
    } else {
     s0+=619.0;
     s1+=63.0;
    }
   } else {
    if(i47<1.000176191329956){
     s0+=7.0;
     s1+=121.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
}
if(i3<1.002457618713379){
 if(i28<0.022099703550338745){
  if(i10<1.0088715553283691){
   if(i19<1.0475225448608398){
    if(i27<1.0111973285675049){
     s0+=52355.0;
     s1+=211.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i33<0.0011359641794115305){
     s0+=3798.0;
     s1+=777.0;
    } else {
     s0+=7126.0;
     s1+=368.0;
    }
   }
  } else {
   if(i47<0.9998975992202759){
    if(i22<8.851289749145508e-06){
     s0+=148.0;
     s1+=53.0;
    } else {
     s0+=41.0;
     s1+=439.0;
    }
   } else {
    if(i41<1.1351666450500488){
     s1+=103.0;
    } else {
     s0+=516.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i17<0.9990782737731934){
   if(i33<0.0026692855171859264){
    if(i6<-7.676473614992574e-06){
     s0+=82.0;
     s1+=125.0;
    } else {
     s0+=394.0;
     s1+=29.0;
    }
   } else {
    if(i4<-0.0003638267517089844){
     s0+=3364.0;
     s1+=86.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i9<1.0332063436508179){
    if(i45<0.002518127905204892){
     s0+=299.0;
     s1+=295.0;
    } else {
     s0+=1522.0;
     s1+=94.0;
    }
   } else {
    if(i1<0.08131334185600281){
     s0+=887.0;
     s1+=645.0;
    } else {
     s0+=328.0;
     s1+=2397.0;
    }
   }
  }
 }
} else {
 if(i20<0.0019779945723712444){
  if(i0<0.0918322503566742){
   if(i40<-1.522019192634616e-05){
    s1+=36.0;
   } else {
    s0+=170.0;
   }
  } else {
   if(i67<-0.007268745452165604){
    if(i2<0.2943161725997925){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<0.011776983737945557){
     s1+=127.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i1<0.1274447739124298){
   if(i43<0.007456949446350336){
    if(i29<0.005960679613053799){
     s0+=28.0;
     s1+=1827.0;
    } else {
     s0+=19.0;
     s1+=33.0;
    }
   } else {
    if(i6<-0.00011532227654242888){
     s0+=27.0;
     s1+=266.0;
    } else {
     s0+=90.0;
     s1+=23.0;
    }
   }
  } else {
   if(i66<0.0002293436846230179){
    if(i74<0.00014948376337997615){
     s1+=388.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i53<0.15286338329315186){
     s1+=7387.0;
    } else {
     s0+=3.0;
     s1+=1235.0;
    }
   }
  }
 }
}
if(i2<0.08522948622703552){
 if(i11<0.0011632442474365234){
  if(i68<0.0020055267959833145){
   if(i12<1.003753900527954){
    if(i19<1.0475225448608398){
     s0+=53981.0;
     s1+=238.0;
    } else {
     s0+=9316.0;
     s1+=843.0;
    }
   } else {
    if(i33<0.0012126814108341932){
     s0+=178.0;
     s1+=303.0;
    } else {
     s0+=810.0;
     s1+=17.0;
    }
   }
  } else {
   if(i17<1.0019060373306274){
    if(i1<0.04028308391571045){
     s0+=3989.0;
     s1+=407.0;
    } else {
     s0+=802.0;
     s1+=423.0;
    }
   } else {
    if(i7<2.676248550415039e-05){
     s0+=107.0;
     s1+=16.0;
    } else {
     s0+=61.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i4<0.0009455680847167969){
   if(i37<0.002170276828110218){
    s1+=92.0;
   } else {
    s0+=122.0;
   }
  } else {
   s1+=401.0;
  }
 }
} else {
 if(i43<0.0005462653934955597){
  if(i50<1.0003256797790527){
   if(i21<0.9965100288391113){
    s0+=346.0;
   } else {
    if(i56<3.2513220503460616e-05){
     s0+=231.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=70.0;
    }
   }
  } else {
   if(i45<0.0002511756611056626){
    s0+=1.0;
   } else {
    if(i69<-2.7799308099929476e-06){
     s1+=72.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i13<-0.0004025697708129883){
   if(i18<0.9852755069732666){
    if(i68<0.0009878482669591904){
     s0+=13.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i54<-5.942583084106445e-05){
     s0+=314.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<0.003271221648901701){
    if(i44<0.060405343770980835){
     s0+=48.0;
     s1+=996.0;
    } else {
     s0+=613.0;
     s1+=354.0;
    }
   } else {
    if(i0<0.11706680059432983){
     s0+=254.0;
     s1+=1302.0;
    } else {
     s0+=63.0;
     s1+=11020.0;
    }
   }
  }
 }
}
if(i7<3.7729740142822266e-05){
 if(i2<0.08414876461029053){
  if(i1<0.06630772352218628){
   if(i29<0.0002956066164188087){
    if(i55<-0.0028825700283050537){
     s0+=54.0;
     s1+=80.0;
    } else {
     s0+=55020.0;
     s1+=387.0;
    }
   } else {
    if(i12<0.9896975755691528){
     s0+=6433.0;
     s1+=138.0;
    } else {
     s0+=5230.0;
     s1+=921.0;
    }
   }
  } else {
   if(i39<0.029981940984725952){
    if(i58<0.005679607391357422){
     s0+=54.0;
     s1+=351.0;
    } else {
     s0+=52.0;
     s1+=7.0;
    }
   } else {
    if(i19<1.0485711097717285){
     s0+=1021.0;
     s1+=17.0;
    } else {
     s0+=707.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i43<0.00045622797915712){
   if(i69<-3.233897587051615e-06){
    if(i12<1.0029428005218506){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i28<0.02962593361735344){
     s0+=379.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<-1.3539904102799483e-05){
    if(i52<0.004519045352935791){
     s0+=147.0;
     s1+=2146.0;
    } else {
     s0+=482.0;
     s1+=1009.0;
    }
   } else {
    if(i26<1.0423246622085571){
     s0+=95.0;
     s1+=198.0;
    } else {
     s0+=678.0;
     s1+=132.0;
    }
   }
  }
 }
} else {
 if(i33<0.0003828137996606529){
  s0+=290.0;
 } else {
  if(i2<0.062794029712677){
   if(i40<-1.4669136362499557e-05){
    if(i48<0.002280980348587036){
     s0+=64.0;
     s1+=431.0;
    } else {
     s0+=45.0;
     s1+=6.0;
    }
   } else {
    if(i20<0.004251006059348583){
     s0+=109.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i20<0.0022098517511039972){
    if(i32<1.0149688720703125){
     s0+=45.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=162.0;
    }
   } else {
    if(i12<1.006458044052124){
     s0+=152.0;
     s1+=2022.0;
    } else {
     s0+=8.0;
     s1+=8940.0;
    }
   }
  }
 }
}
if(i21<1.0028324127197266){
 if(i12<1.004345417022705){
  if(i29<0.0003161412023473531){
   if(i19<1.0495158433914185){
    if(i71<0.017708323895931244){
     s0+=46667.0;
     s1+=63.0;
    } else {
     s0+=5565.0;
     s1+=125.0;
    }
   } else {
    if(i0<0.07542666792869568){
     s0+=4536.0;
     s1+=300.0;
    } else {
     s0+=26.0;
     s1+=234.0;
    }
   }
  } else {
   if(i2<0.08529612421989441){
    if(i45<0.0008774688467383385){
     s0+=3072.0;
     s1+=936.0;
    } else {
     s0+=7480.0;
     s1+=444.0;
    }
   } else {
    if(i44<0.058495670557022095){
     s0+=173.0;
     s1+=1135.0;
    } else {
     s0+=1097.0;
     s1+=867.0;
    }
   }
  }
 } else {
  if(i20<0.0024919449351727962){
   if(i41<1.1628741025924683){
    if(i11<0.0005272030830383301){
     s0+=36.0;
     s1+=9.0;
    } else {
     s0+=10.0;
     s1+=290.0;
    }
   } else {
    if(i70<-7.00319787938497e-06){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=947.0;
     s1+=43.0;
    }
   }
  } else {
   if(i69<8.580905728194921e-07){
    if(i22<2.8461217880249023e-05){
     s0+=62.0;
     s1+=223.0;
    } else {
     s0+=43.0;
     s1+=1904.0;
    }
   } else {
    s0+=64.0;
   }
  }
 }
} else {
 if(i7<3.319978713989258e-05){
  if(i12<0.9762893915176392){
   if(i31<0.06294027715921402){
    if(i74<0.0002775868633762002){
     s0+=600.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i73<0.9997804164886475){
    if(i27<0.925208330154419){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=58.0;
     s1+=255.0;
    }
   } else {
    if(i9<1.0832910537719727){
     s0+=352.0;
     s1+=72.0;
    } else {
     s0+=24.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i0<0.06050592660903931){
   if(i20<0.0020079840905964375){
    if(i2<0.06708335876464844){
     s0+=66.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i61<-0.011104429140686989){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=39.0;
     s1+=417.0;
    }
   }
  } else {
   if(i12<0.9988992214202881){
    if(i65<0.000692150613758713){
     s0+=60.0;
     s1+=121.0;
    } else {
     s0+=8.0;
     s1+=929.0;
    }
   } else {
    if(i40<-1.1871858077938668e-05){
     s0+=11.0;
     s1+=8637.0;
    } else {
     s0+=13.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i27<1.0085874795913696){
 if(i21<1.0025525093078613){
  if(i1<0.08160707354545593){
   if(i55<-0.0012961924076080322){
    if(i37<0.0016374588012695312){
     s0+=1617.0;
     s1+=742.0;
    } else {
     s0+=3742.0;
     s1+=213.0;
    }
   } else {
    if(i42<0.031210938468575478){
     s0+=56912.0;
     s1+=272.0;
    } else {
     s0+=4088.0;
     s1+=505.0;
    }
   }
  } else {
   if(i50<0.9987839460372925){
    if(i43<0.0017222859896719456){
     s0+=324.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.05508193373680115){
     s0+=49.0;
     s1+=1122.0;
    } else {
     s0+=521.0;
     s1+=389.0;
    }
   }
  }
 } else {
  if(i4<0.000453948974609375){
   if(i44<0.08105552196502686){
    if(i59<-0.00032761794864200056){
     s0+=27.0;
     s1+=113.0;
    } else {
     s0+=1088.0;
     s1+=177.0;
    }
   } else {
    if(i33<0.00509856641292572){
     s0+=19.0;
     s1+=15.0;
    } else {
     s0+=7.0;
     s1+=91.0;
    }
   }
  } else {
   if(i38<0.0001797717995941639){
    if(i40<-1.7703256162349135e-05){
     s1+=2.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i4<0.000821232795715332){
     s0+=109.0;
     s1+=431.0;
    } else {
     s0+=64.0;
     s1+=2061.0;
    }
   }
  }
 }
} else {
 if(i33<0.006443382240831852){
  if(i4<0.0004805326461791992){
   if(i6<-3.250233203289099e-05){
    if(i1<0.06077301502227783){
     s0+=213.0;
     s1+=109.0;
    } else {
     s0+=107.0;
     s1+=873.0;
    }
   } else {
    if(i30<1.1039612293243408){
     s0+=332.0;
     s1+=230.0;
    } else {
     s0+=1628.0;
     s1+=87.0;
    }
   }
  } else {
   if(i20<0.0025380640290677547){
    if(i3<1.0042128562927246){
     s0+=144.0;
     s1+=30.0;
    } else {
     s1+=148.0;
    }
   } else {
    if(i22<-1.0251998901367188e-05){
     s0+=49.0;
     s1+=142.0;
    } else {
     s0+=2.0;
     s1+=1996.0;
    }
   }
  }
 } else {
  if(i2<0.08471819758415222){
   if(i4<0.0012516379356384277){
    s0+=53.0;
   } else {
    s1+=19.0;
   }
  } else {
   if(i73<1.00095796585083){
    if(i11<-0.0007613301277160645){
     s0+=3.0;
     s1+=100.0;
    } else {
     s1+=6684.0;
    }
   } else {
    if(i34<1.2354029417037964){
     s0+=34.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=523.0;
    }
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i12<1.006086826324463){
  if(i19<1.0494916439056396){
   if(i57<0.000753947882913053){
    if(i28<0.01901353895664215){
     s0+=50260.0;
     s1+=62.0;
    } else {
     s0+=3054.0;
     s1+=93.0;
    }
   } else {
    if(i19<1.0406453609466553){
     s0+=2349.0;
     s1+=70.0;
    } else {
     s0+=575.0;
     s1+=215.0;
    }
   }
  } else {
   if(i35<1.103413462638855){
    if(i30<1.084442138671875){
     s0+=1483.0;
    } else {
     s0+=1092.0;
     s1+=1390.0;
    }
   } else {
    if(i1<0.07753127813339233){
     s0+=9564.0;
     s1+=689.0;
    } else {
     s0+=19.0;
     s1+=384.0;
    }
   }
  }
 } else {
  if(i17<1.0019675493240356){
   if(i34<1.1486610174179077){
    if(i35<1.216667890548706){
     s0+=11.0;
     s1+=473.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.08737942576408386){
     s0+=580.0;
     s1+=6.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i56<7.319249561987817e-05){
    if(i19<1.0460395812988281){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=1111.0;
    }
   } else {
    if(i72<1.00038480758667){
     s0+=14.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004665255546569824){
  if(i33<0.006046468857675791){
   if(i64<0.035524964332580566){
    if(i67<-0.005929087288677692){
     s0+=355.0;
     s1+=156.0;
    } else {
     s0+=168.0;
     s1+=936.0;
    }
   } else {
    if(i3<0.9962854981422424){
     s0+=350.0;
     s1+=6.0;
    } else {
     s0+=760.0;
     s1+=389.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i31<0.01016814261674881){
     s1+=5.0;
    } else {
     s0+=93.0;
     s1+=1.0;
    }
   } else {
    if(i53<0.1129307746887207){
     s0+=19.0;
     s1+=810.0;
    } else {
     s0+=53.0;
     s1+=347.0;
    }
   }
  }
 } else {
  if(i31<0.022395364940166473){
   if(i38<0.002163386670872569){
    if(i11<1.6689300537109375e-05){
     s0+=40.0;
     s1+=66.0;
    } else {
     s0+=3.0;
     s1+=1217.0;
    }
   } else {
    if(i52<0.0011902451515197754){
     s1+=243.0;
    } else {
     s0+=162.0;
     s1+=109.0;
    }
   }
  } else {
   if(i18<0.9978131055831909){
    if(i6<-3.59653786290437e-05){
     s0+=8.0;
     s1+=550.0;
    } else {
     s0+=14.0;
     s1+=13.0;
    }
   } else {
    if(i6<-4.29390711360611e-05){
     s1+=7751.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   }
  }
 }
}
if(i0<0.08297458291053772){
 if(i7<4.1812658309936523e-05){
  if(i28<0.014269999228417873){
   if(i56<-2.1392927010310814e-05){
    if(i72<1.000645637512207){
     s1+=21.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i10<1.0086190700531006){
     s0+=56114.0;
     s1+=479.0;
    } else {
     s0+=296.0;
     s1+=107.0;
    }
   }
  } else {
   if(i13<-0.0001131296157836914){
    if(i19<1.0428826808929443){
     s0+=5666.0;
     s1+=25.0;
    } else {
     s0+=2601.0;
     s1+=249.0;
    }
   } else {
    if(i41<1.1038670539855957){
     s0+=598.0;
     s1+=821.0;
    } else {
     s0+=3689.0;
     s1+=314.0;
    }
   }
  }
 } else {
  if(i54<0.0001430809497833252){
   if(i53<-0.025686591863632202){
    if(i72<1.013207197189331){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i14<1.0079281330108643){
     s0+=205.0;
    } else {
     s0+=66.0;
     s1+=9.0;
    }
   }
  } else {
   if(i58<0.0025791525840759277){
    if(i18<1.002963662147522){
     s0+=127.0;
     s1+=222.0;
    } else {
     s0+=29.0;
     s1+=733.0;
    }
   } else {
    if(i12<1.0085415840148926){
     s0+=61.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i6<-1.2258994502190035e-05){
  if(i7<5.0961971282958984e-05){
   if(i52<0.004555642604827881){
    if(i40<1.995420234379708e-06){
     s0+=150.0;
     s1+=2537.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i2<0.13482680916786194){
     s0+=350.0;
     s1+=48.0;
    } else {
     s0+=144.0;
     s1+=1175.0;
    }
   }
  } else {
   if(i4<0.0006772279739379883){
    s0+=11.0;
   } else {
    if(i12<1.0071278810501099){
     s0+=62.0;
     s1+=1608.0;
    } else {
     s0+=3.0;
     s1+=8354.0;
    }
   }
  }
 } else {
  if(i3<0.9960691928863525){
   if(i58<-0.007682085037231445){
    if(i29<0.002563916612416506){
     s1+=6.0;
    } else {
     s0+=46.0;
    }
   } else {
    s0+=374.0;
   }
  } else {
   if(i44<0.05893605947494507){
    if(i0<0.08724355697631836){
     s0+=25.0;
     s1+=37.0;
    } else {
     s0+=5.0;
     s1+=176.0;
    }
   } else {
    if(i56<3.625492536230013e-05){
     s0+=386.0;
     s1+=23.0;
    } else {
     s0+=120.0;
     s1+=106.0;
    }
   }
  }
 }
}
if(i18<1.0038928985595703){
 if(i2<0.08556181192398071){
  if(i48<-0.005670666694641113){
   if(i5<0.028280317783355713){
    if(i31<0.048629388213157654){
     s0+=3140.0;
     s1+=384.0;
    } else {
     s0+=7.0;
     s1+=43.0;
    }
   } else {
    if(i21<1.0008671283721924){
     s0+=599.0;
     s1+=308.0;
    } else {
     s0+=62.0;
     s1+=249.0;
    }
   }
  } else {
   if(i19<1.0475225448608398){
    if(i57<0.00068338040728122){
     s0+=51581.0;
     s1+=89.0;
    } else {
     s0+=2559.0;
     s1+=127.0;
    }
   } else {
    if(i1<0.06071534752845764){
     s0+=8973.0;
     s1+=597.0;
    } else {
     s0+=1391.0;
     s1+=598.0;
    }
   }
  }
 } else {
  if(i47<0.9993896484375){
   if(i32<0.9948354959487915){
    s0+=349.0;
   } else {
    if(i27<0.9935553073883057){
     s1+=1.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i31<0.02360890433192253){
    if(i63<0.004153609275817871){
     s0+=356.0;
     s1+=1367.0;
    } else {
     s0+=778.0;
     s1+=352.0;
    }
   } else {
    if(i64<0.0405040979385376){
     s0+=95.0;
     s1+=2417.0;
    } else {
     s0+=210.0;
     s1+=720.0;
    }
   }
  }
 }
} else {
 if(i40<-1.586781581863761e-05){
  if(i55<-0.025920778512954712){
   s0+=5.0;
  } else {
   if(i22<-1.7404556274414062e-05){
    if(i4<-0.0004527866840362549){
     s0+=10.0;
    } else {
     s0+=21.0;
     s1+=376.0;
    }
   } else {
    if(i22<4.941225051879883e-05){
     s0+=5.0;
     s1+=229.0;
    } else {
     s0+=1.0;
     s1+=8908.0;
    }
   }
  }
 } else {
  if(i23<1.0106433629989624){
   if(i10<1.0101046562194824){
    if(i71<0.2571483850479126){
     s0+=589.0;
     s1+=24.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i29<0.00012448216148186475){
     s0+=6.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i54<3.8564205169677734e-05){
    if(i7<-1.0967254638671875e-05){
     s0+=6.0;
    } else {
     s1+=414.0;
    }
   } else {
    if(i33<0.0016980164218693972){
     s1+=57.0;
    } else {
     s0+=121.0;
     s1+=41.0;
    }
   }
  }
 }
}
if(i21<1.0026133060455322){
 if(i10<1.0092737674713135){
  if(i1<0.07720842957496643){
   if(i8<1.0401363372802734){
    if(i34<1.0556960105895996){
     s0+=40779.0;
     s1+=2.0;
    } else {
     s0+=17500.0;
     s1+=494.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=2915.0;
     s1+=938.0;
    } else {
     s0+=6340.0;
     s1+=370.0;
    }
   }
  } else {
   if(i6<-1.0990548616973683e-05){
    if(i0<0.09298533201217651){
     s0+=253.0;
     s1+=258.0;
    } else {
     s0+=245.0;
     s1+=1361.0;
    }
   } else {
    if(i61<-0.019689485430717468){
     s0+=552.0;
     s1+=30.0;
    } else {
     s0+=335.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i6<-3.319251845823601e-05){
   if(i59<-0.00024289661087095737){
    if(i47<0.9999077320098877){
     s0+=6.0;
     s1+=1781.0;
    } else {
     s0+=110.0;
     s1+=535.0;
    }
   } else {
    if(i47<1.000044345855713){
     s0+=1.0;
     s1+=52.0;
    } else {
     s0+=36.0;
     s1+=14.0;
    }
   }
  } else {
   if(i1<0.19122815132141113){
    if(i49<0.0021275822073221207){
     s0+=700.0;
     s1+=87.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i61<-0.07121162116527557){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=177.0;
    }
   }
  }
 }
} else {
 if(i2<0.06604969501495361){
  if(i63<-0.0012291669845581055){
   if(i12<0.9806665182113647){
    if(i1<0.006739139556884766){
     s0+=81.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i20<0.0021174708381295204){
     s0+=59.0;
     s1+=15.0;
    } else {
     s0+=58.0;
     s1+=360.0;
    }
   }
  } else {
   if(i71<0.09291455149650574){
    if(i16<0.9950356483459473){
     s0+=5.0;
     s1+=46.0;
    } else {
     s0+=297.0;
     s1+=53.0;
    }
   } else {
    if(i30<1.2788593769073486){
     s1+=3.0;
    } else {
     s0+=704.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<-6.379768456099555e-05){
   if(i22<-0.0005513131618499756){
    if(i49<0.005459723062813282){
     s0+=21.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i32<0.998320460319519){
     s0+=61.0;
     s1+=1397.0;
    } else {
     s1+=7916.0;
    }
   }
  } else {
   if(i39<0.03215464949607849){
    if(i14<1.0166540145874023){
     s0+=8.0;
     s1+=371.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=12.0;
     s1+=230.0;
    } else {
     s0+=240.0;
     s1+=131.0;
    }
   }
  }
 }
}
if(i5<0.0723993182182312){
 if(i7<4.0471553802490234e-05){
  if(i0<0.07877469062805176){
   if(i58<-0.0022295713424682617){
    if(i4<-0.0002827942371368408){
     s0+=4273.0;
     s1+=307.0;
    } else {
     s0+=1479.0;
     s1+=657.0;
    }
   } else {
    if(i42<0.02669459953904152){
     s0+=56212.0;
     s1+=424.0;
    } else {
     s0+=6564.0;
     s1+=589.0;
    }
   }
  } else {
   if(i64<0.02590826153755188){
    if(i21<0.9913007616996765){
     s0+=51.0;
    } else {
     s0+=33.0;
     s1+=804.0;
    }
   } else {
    if(i18<0.9943064451217651){
     s0+=94.0;
    } else {
     s0+=51.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i8<1.0336670875549316){
   if(i57<0.0006621768698096275){
    if(i32<1.0091545581817627){
     s0+=252.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i15<0.00016382336616516113){
     s1+=16.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i20<0.0022204199340194464){
    if(i12<1.0112650394439697){
     s0+=112.0;
     s1+=10.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i22<3.6954879760742188e-06){
     s0+=124.0;
     s1+=273.0;
    } else {
     s0+=12.0;
     s1+=1505.0;
    }
   }
  }
 }
} else {
 if(i2<0.1149987280368805){
  if(i44<0.0505712628364563){
   if(i52<0.0042279064655303955){
    if(i15<-1.475214958190918e-05){
     s0+=20.0;
    } else {
     s0+=24.0;
     s1+=653.0;
    }
   } else {
    if(i2<0.09163764119148254){
     s0+=43.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i48<0.014493942260742188){
    if(i13<-5.078315734863281e-05){
     s0+=294.0;
     s1+=46.0;
    } else {
     s0+=189.0;
     s1+=292.0;
    }
   } else {
    if(i13<0.0013256669044494629){
     s0+=652.0;
     s1+=16.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i15<-1.4185905456542969e-05){
   if(i50<0.9993229508399963){
    if(i17<0.9985483884811401){
     s0+=235.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i43<0.0005809152498841286){
    if(i26<1.0736899375915527){
     s0+=5.0;
     s1+=57.0;
    } else {
     s0+=167.0;
     s1+=10.0;
    }
   } else {
    if(i11<0.00032782554626464844){
     s0+=325.0;
     s1+=2662.0;
    } else {
     s0+=14.0;
     s1+=8514.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i5<0.07195839285850525){
  if(i16<1.0067417621612549){
   if(i38<0.00031648267759010196){
    if(i68<0.001595816807821393){
     s0+=52646.0;
     s1+=172.0;
    } else {
     s0+=565.0;
     s1+=53.0;
    }
   } else {
    if(i1<0.08029741048812866){
     s0+=13279.0;
     s1+=1371.0;
    } else {
     s0+=58.0;
     s1+=305.0;
    }
   }
  } else {
   if(i6<-3.36635930580087e-05){
    if(i46<0.0009348108433187008){
     s0+=56.0;
     s1+=435.0;
    } else {
     s0+=264.0;
     s1+=93.0;
    }
   } else {
    if(i37<0.0014265773352235556){
     s0+=542.0;
     s1+=187.0;
    } else {
     s0+=1239.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i6<-1.2694299584836699e-05){
   if(i44<0.053915202617645264){
    if(i3<0.9975419044494629){
     s0+=19.0;
     s1+=67.0;
    } else {
     s0+=28.0;
     s1+=1010.0;
    }
   } else {
    if(i0<0.10990697145462036){
     s0+=468.0;
     s1+=153.0;
    } else {
     s0+=202.0;
     s1+=1363.0;
    }
   }
  } else {
   if(i48<-0.0018088817596435547){
    if(i72<0.9973162412643433){
     s0+=53.0;
    } else {
     s0+=30.0;
     s1+=82.0;
    }
   } else {
    if(i16<0.9945111274719238){
     s0+=248.0;
     s1+=70.0;
    } else {
     s0+=761.0;
     s1+=68.0;
    }
   }
  }
 }
} else {
 if(i6<-4.32968299719505e-05){
  if(i32<0.9976254105567932){
   if(i62<0.0954156368970871){
    if(i43<0.009009471163153648){
     s0+=68.0;
     s1+=434.0;
    } else {
     s0+=121.0;
     s1+=31.0;
    }
   } else {
    if(i1<0.0033735334873199463){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=1051.0;
    }
   }
  } else {
   if(i20<0.004683756269514561){
    if(i43<0.007376064546406269){
     s0+=5.0;
     s1+=969.0;
    } else {
     s0+=39.0;
     s1+=62.0;
    }
   } else {
    if(i1<0.0626240074634552){
     s0+=6.0;
     s1+=287.0;
    } else {
     s1+=8649.0;
    }
   }
  }
 } else {
  if(i72<1.0021522045135498){
   if(i9<1.0596048831939697){
    s0+=269.0;
   } else {
    if(i45<0.001901893992908299){
     s1+=11.0;
    } else {
     s0+=68.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.00018516957061365247){
    s0+=8.0;
   } else {
    if(i4<0.0006496310234069824){
     s0+=10.0;
     s1+=52.0;
    } else {
     s0+=1.0;
     s1+=188.0;
    }
   }
  }
 }
}
if(i6<-7.241511775646359e-05){
 if(i2<0.05596327781677246){
  if(i56<0.0001563836121931672){
   if(i63<-0.0022822916507720947){
    if(i20<0.003491091076284647){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=157.0;
    }
   } else {
    if(i73<0.9982117414474487){
     s0+=99.0;
    } else {
     s0+=27.0;
     s1+=32.0;
    }
   }
  } else {
   if(i59<-0.0005555542884394526){
    if(i36<0.7527122497558594){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i69<-1.650647391215898e-05){
     s0+=4.0;
     s1+=14.0;
    } else {
     s0+=675.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i34<1.0585076808929443){
   s0+=65.0;
  } else {
   if(i3<1.0017402172088623){
    if(i54<0.0004374384880065918){
     s0+=27.0;
     s1+=741.0;
    } else {
     s0+=77.0;
     s1+=29.0;
    }
   } else {
    if(i56<0.00010813802509801462){
     s0+=9.0;
     s1+=8869.0;
    } else {
     s0+=77.0;
     s1+=1853.0;
    }
   }
  }
 }
} else {
 if(i29<0.000307346461340785){
  if(i12<1.0036582946777344){
   if(i28<0.024714775383472443){
    if(i46<0.0002772704465314746){
     s0+=44830.0;
     s1+=16.0;
    } else {
     s0+=10255.0;
     s1+=412.0;
    }
   } else {
    if(i18<0.9948258399963379){
     s0+=906.0;
     s1+=14.0;
    } else {
     s0+=71.0;
     s1+=241.0;
    }
   }
  } else {
   if(i1<0.056122660636901855){
    if(i40<-1.5338740922743455e-05){
     s0+=13.0;
     s1+=55.0;
    } else {
     s0+=833.0;
     s1+=25.0;
    }
   } else {
    if(i35<1.139992117881775){
     s0+=22.0;
     s1+=304.0;
    } else {
     s0+=62.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i16<1.0049360990524292){
   if(i9<1.0398883819580078){
    if(i45<0.0021308891009539366){
     s0+=2772.0;
     s1+=757.0;
    } else {
     s0+=4536.0;
     s1+=146.0;
    }
   } else {
    if(i0<0.0927131175994873){
     s0+=2779.0;
     s1+=713.0;
    } else {
     s0+=353.0;
     s1+=879.0;
    }
   }
  } else {
   if(i66<0.0006453128298744559){
    if(i46<0.0007686758181080222){
     s0+=218.0;
     s1+=607.0;
    } else {
     s0+=1923.0;
     s1+=588.0;
    }
   } else {
    if(i32<1.002634048461914){
     s0+=251.0;
     s1+=199.0;
    } else {
     s0+=16.0;
     s1+=603.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i4<0.0005701184272766113){
  if(i2<0.07844924926757812){
   if(i58<-0.002235919237136841){
    if(i61<-0.009471587836742401){
     s0+=2287.0;
     s1+=21.0;
    } else {
     s0+=1933.0;
     s1+=531.0;
    }
   } else {
    if(i10<1.0086190700531006){
     s0+=58801.0;
     s1+=444.0;
    } else {
     s0+=53.0;
     s1+=81.0;
    }
   }
  } else {
   if(i19<1.049466609954834){
    if(i18<0.9940281510353088){
     s0+=453.0;
     s1+=2.0;
    } else {
     s0+=201.0;
     s1+=69.0;
    }
   } else {
    if(i18<0.9942851066589355){
     s0+=106.0;
     s1+=28.0;
    } else {
     s0+=54.0;
     s1+=535.0;
    }
   }
  }
 } else {
  if(i40<-1.462851923861308e-05){
   if(i40<-5.4885895224288106e-05){
    if(i36<0.9064584970474243){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i18<0.9936398267745972){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=360.0;
    }
   }
  } else {
   if(i0<0.08095526695251465){
    if(i73<1.0012190341949463){
     s0+=164.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=23.0;
   }
  }
 }
} else {
 if(i5<0.08124589920043945){
  if(i3<1.0022846460342407){
   if(i20<0.004338358994573355){
    if(i0<0.08778020739555359){
     s0+=4715.0;
     s1+=566.0;
    } else {
     s0+=38.0;
     s1+=330.0;
    }
   } else {
    if(i34<1.1489462852478027){
     s0+=59.0;
     s1+=454.0;
    } else {
     s0+=937.0;
     s1+=256.0;
    }
   }
  } else {
   if(i48<0.008860647678375244){
    if(i56<0.00013438088353723288){
     s0+=74.0;
     s1+=1901.0;
    } else {
     s0+=50.0;
     s1+=122.0;
    }
   } else {
    if(i41<1.2314128875732422){
     s1+=75.0;
    } else {
     s0+=89.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i15<-1.7315149307250977e-05){
   if(i45<0.006468147970736027){
    s0+=269.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i40<-1.0109048162121326e-05){
    if(i35<1.2590415477752686){
     s0+=312.0;
     s1+=1782.0;
    } else {
     s0+=71.0;
     s1+=8589.0;
    }
   } else {
    if(i29<0.0010582578834146261){
     s0+=56.0;
     s1+=285.0;
    } else {
     s0+=526.0;
     s1+=503.0;
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
