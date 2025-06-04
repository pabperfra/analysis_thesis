/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 difference_of_gaussian=15 top_hat_box=30 top_hat_box=15 gaussian_blur=10 top_hat_box=10 laplace_box_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=20 maximum_box=3 difference_of_gaussian=10 maximum_box=2 mean_box=15 median_box=5 laplace_box_of_gaussian_blur=20 gaussian_blur=2 gaussian_blur=15 sobel_of_gaussian_blur=10 laplace_box_of_gaussian_blur=10 maximum_box=5 gaussian_blur=5 mean_box=3 sobel_of_median_box=5 mean_box=10 median_box=3 variance_box=3 gaussian_blur=3 variance_box=2 maximum_box=30 maximum_box=1 mean_box=5 top_hat_box=5 maximum_box=20 variance_box=30 variance_box=20 variance_box=5 maximum_box=10 top_hat_box=2 variance_box=15 variance_box=10 difference_of_gaussian=30 gaussian_blur=20 maximum_box=15 small_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=5 sobel_of_gaussian_blur=1 top_hat_box=3 sobel_of_median_box=3 difference_of_gaussian=2 laplace_box_of_gaussian_blur=2 laplace_box_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=1 gaussian_blur=1 sobel_of_gaussian_blur=15 difference_of_gaussian=1 gaussian_blur=30 laplace_box_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=10 large_hessian_eigenvalue_of_gaussian_blur=2 mean_box=30 difference_of_gaussian=3 mean_box=20 small_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=1 sobel_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 72
max_depth = 5
num_trees = 250
feature_importances = 0.1372218284535036,0.058924104396453056,0.10493199829506945,0.12371683511166293,0.05974439549509376,0.042552080454591704,0.059706592785738165,0.0413494888919219,0.016127650084118993,0.040596007886914344,0.023626893892381894,0.03158399989463851,0.00461193115904462,0.03166004867954264,0.005472242333423408,0.005170386926753212,0.016113493156255914,0.008160904263587282,0.015654059524091598,0.009884052710504422,0.019908127232058648,0.0026698672192511765,0.008916761589436717,0.027162512255756645,0.002691741477479058,0.005080442587075009,0.012501346962087862,0.0036783788685739826,0.0035925267474707285,0.00410485661454489,0.0032235956441017703,0.005563924805504237,0.0028202381434848803,0.002821607524042453,0.00256146217949814,0.001635413824908609,0.0031405898527684184,0.0030719969254758145,0.003829799213451447,0.001601988147884036,0.002069110884023417,0.0027575678897315617,0.0031899663952629992,0.0017002218299537225,0.0025352141163551725,0.0006517689901182292,0.002156309134800158,0.001137602633051716,0.0013108199453906366,0.002089242198704058,0.001838658556262729,0.0011924179088954171,0.0032160661649260533,0.0016417909455178012,0.0010925352964416934,0.0010045829830086389,0.0010304868974598434,0.0010822409492773505,0.0007748380191462546,0.0004440355451873566,0.0011812769707202075,0.0006274088029781669,0.0008717611508955446,0.0012548010888847009,0.000716225746733051,0.0010153441207368412,0.0007055069925504079,0.0007592048880344631,0.0005609195546132643,0.0011675097013900794,0.0005496967206699612,0.00028869476813243107
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i20<1.005529522895813){
 if(i8<0.0005083680152893066){
  if(i5<0.07233139872550964){
   if(i0<0.07991784811019897){
    if(i69<0.0007801682804711163){
     s0+=60130.0;
     s1+=730.0;
    } else {
     s0+=6989.0;
     s1+=899.0;
    }
   } else {
    if(i6<-4.8279762268066406e-05){
     s0+=96.0;
     s1+=9.0;
    } else {
     s0+=59.0;
     s1+=614.0;
    }
   }
  } else {
   if(i41<0.9987839460372925){
    if(i7<-4.206008816254325e-05){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=377.0;
    }
   } else {
    if(i53<0.0010820426978170872){
     s0+=810.0;
     s1+=714.0;
    } else {
     s0+=301.0;
     s1+=1475.0;
    }
   }
  }
 } else {
  if(i17<0.011543326079845428){
   if(i64<0.0009864780586212873){
    if(i65<3.4077597774739843e-06){
     s0+=95.0;
     s1+=479.0;
    } else {
     s0+=465.0;
     s1+=394.0;
    }
   } else {
    if(i13<1.0042576789855957){
     s0+=583.0;
     s1+=97.0;
    } else {
     s0+=12.0;
     s1+=72.0;
    }
   }
  } else {
   if(i3<0.024082988500595093){
    if(i49<-0.0529114305973053){
     s0+=7.0;
     s1+=37.0;
    } else {
     s0+=98.0;
     s1+=1.0;
    }
   } else {
    if(i44<0.0200519897043705){
     s0+=21.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=1324.0;
    }
   }
  }
 }
} else {
 if(i7<-4.40081421402283e-05){
  if(i16<0.9986499547958374){
   s0+=29.0;
  } else {
   if(i3<0.045071929693222046){
    if(i64<0.00022996771440375596){
     s0+=47.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=196.0;
    }
   } else {
    if(i13<1.0146727561950684){
     s0+=24.0;
     s1+=1770.0;
    } else {
     s1+=8104.0;
    }
   }
  }
 } else {
  if(i2<0.07772567868232727){
   if(i33<0.0008130989735946059){
    if(i7<-2.6584555598674342e-05){
     s1+=33.0;
    } else {
     s0+=67.0;
     s1+=1.0;
    }
   } else {
    s0+=583.0;
   }
  } else {
   if(i53<0.0010143837425857782){
    if(i21<1.019698977470398){
     s0+=35.0;
     s1+=70.0;
    } else {
     s0+=145.0;
     s1+=9.0;
    }
   } else {
    if(i4<0.9979122281074524){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=176.0;
    }
   }
  }
 }
}
if(i3<0.07866418361663818){
 if(i8<0.0005328059196472168){
  if(i51<0.007879253476858139){
   if(i4<1.0024828910827637){
    if(i22<0.016892272979021072){
     s0+=57238.0;
     s1+=544.0;
    } else {
     s0+=7915.0;
     s1+=760.0;
    }
   } else {
    if(i57<-7.666594683541916e-07){
     s0+=129.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=87.0;
    }
   }
  } else {
   if(i3<0.03215503692626953){
    if(i36<1.0929499864578247){
     s0+=865.0;
     s1+=224.0;
    } else {
     s0+=1546.0;
     s1+=58.0;
    }
   } else {
    if(i31<0.017251789569854736){
     s0+=22.0;
     s1+=167.0;
    } else {
     s0+=667.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i23<1.0016193389892578){
   if(i49<-0.006175905466079712){
    if(i54<-0.0019336938858032227){
     s0+=48.0;
     s1+=137.0;
    } else {
     s0+=113.0;
     s1+=35.0;
    }
   } else {
    if(i55<1.0003859996795654){
     s0+=328.0;
     s1+=69.0;
    } else {
     s0+=373.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<1.075138807296753){
    s0+=38.0;
   } else {
    if(i32<1.2524442672729492){
     s1+=686.0;
    } else {
     s0+=50.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i41<0.9988100528717041){
  if(i34<0.021084342151880264){
   if(i62<-0.016018133610486984){
    s0+=332.0;
   } else {
    if(i4<0.9972095489501953){
     s0+=122.0;
    } else {
     s0+=9.0;
     s1+=4.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i0<0.11721238493919373){
   if(i7<-1.2283376236155163e-05){
    if(i46<0.06041538715362549){
     s0+=75.0;
     s1+=1639.0;
    } else {
     s0+=397.0;
     s1+=180.0;
    }
   } else {
    if(i24<0.993442177772522){
     s0+=46.0;
     s1+=83.0;
    } else {
     s0+=414.0;
     s1+=64.0;
    }
   }
  } else {
   if(i17<0.0017094736685976386){
    if(i29<1.0782506465911865){
     s0+=6.0;
     s1+=92.0;
    } else {
     s0+=240.0;
     s1+=65.0;
    }
   } else {
    if(i7<6.964093017813866e-07){
     s0+=163.0;
     s1+=11642.0;
    } else {
     s0+=36.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i3<0.07800713181495667){
 if(i9<1.0451608896255493){
  if(i28<1.0856719017028809){
   s0+=37302.0;
  } else {
   if(i21<0.9931132793426514){
    if(i49<0.003864288330078125){
     s0+=2546.0;
     s1+=640.0;
    } else {
     s0+=4104.0;
     s1+=18.0;
    }
   } else {
    if(i12<1.0013110637664795){
     s0+=17761.0;
     s1+=157.0;
    } else {
     s0+=407.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i1<0.0005043745040893555){
   if(i32<1.1037919521331787){
    if(i17<0.00360307190567255){
     s0+=1735.0;
     s1+=509.0;
    } else {
     s0+=42.0;
     s1+=395.0;
    }
   } else {
    if(i53<0.0059562623500823975){
     s0+=5168.0;
     s1+=321.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i48<0.0020413994789123535){
    if(i43<-1.4118932085693814e-05){
     s0+=90.0;
     s1+=1040.0;
    } else {
     s0+=57.0;
     s1+=26.0;
    }
   } else {
    if(i38<0.002762837801128626){
     s1+=24.0;
    } else {
     s0+=102.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i7<-1.4545135854859836e-05){
  if(i2<0.11721238493919373){
   if(i62<-0.01785414107143879){
    if(i48<0.002486974000930786){
     s0+=24.0;
     s1+=32.0;
    } else {
     s0+=280.0;
     s1+=4.0;
    }
   } else {
    if(i60<0.003993809223175049){
     s0+=81.0;
     s1+=1631.0;
    } else {
     s0+=126.0;
     s1+=50.0;
    }
   }
  } else {
   if(i23<1.0021934509277344){
    if(i44<0.023398101329803467){
     s0+=182.0;
     s1+=593.0;
    } else {
     s0+=24.0;
     s1+=2176.0;
    }
   } else {
    if(i2<0.1323392689228058){
     s0+=22.0;
     s1+=405.0;
    } else {
     s0+=19.0;
     s1+=8407.0;
    }
   }
  }
 } else {
  if(i41<0.9992896318435669){
   s0+=412.0;
  } else {
   if(i37<0.04216885566711426){
    if(i46<0.0453009307384491){
     s1+=160.0;
    } else {
     s0+=20.0;
     s1+=41.0;
    }
   } else {
    if(i4<1.001785159111023){
     s0+=727.0;
     s1+=175.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
}
if(i3<0.07771864533424377){
 if(i65<-7.983931027411018e-06){
  if(i57<0.00012858997797593474){
   if(i16<1.0018914937973022){
    s0+=2.0;
   } else {
    s1+=372.0;
   }
  } else {
   if(i56<-0.021654993295669556){
    s1+=4.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i9<1.0451608896255493){
   if(i60<-0.0012782514095306396){
    if(i6<3.6835670471191406e-05){
     s0+=4243.0;
     s1+=438.0;
    } else {
     s0+=8.0;
     s1+=78.0;
    }
   } else {
    if(i4<1.0025355815887451){
     s0+=57838.0;
     s1+=336.0;
    } else {
     s0+=35.0;
     s1+=59.0;
    }
   }
  } else {
   if(i1<0.0004762411117553711){
    if(i2<0.06319904327392578){
     s0+=5607.0;
     s1+=695.0;
    } else {
     s0+=1337.0;
     s1+=555.0;
    }
   } else {
    if(i32<1.2524442672729492){
     s0+=9.0;
     s1+=432.0;
    } else {
     s0+=246.0;
     s1+=216.0;
    }
   }
  }
 }
} else {
 if(i16<0.998519778251648){
  if(i7<-4.0322309359908104e-05){
   if(i59<1.000351905822754){
    if(i19<1.4234601259231567){
     s0+=30.0;
     s1+=5.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   s0+=511.0;
  }
 } else {
  if(i0<0.11249557137489319){
   if(i56<0.005931079387664795){
    if(i7<-7.100977654772578e-06){
     s0+=262.0;
     s1+=1542.0;
    } else {
     s0+=227.0;
     s1+=75.0;
    }
   } else {
    if(i39<0.0015406315214931965){
     s0+=33.0;
     s1+=39.0;
    } else {
     s0+=346.0;
     s1+=40.0;
    }
   }
  } else {
   if(i33<0.000580565189011395){
    if(i7<-2.7946643967879936e-05){
     s1+=48.0;
    } else {
     s0+=142.0;
     s1+=6.0;
    }
   } else {
    if(i17<0.003486556001007557){
     s0+=245.0;
     s1+=980.0;
    } else {
     s0+=70.0;
     s1+=11131.0;
    }
   }
  }
 }
}
if(i0<0.08202600479125977){
 if(i16<1.0018908977508545){
  if(i19<1.0486011505126953){
   if(i19<1.0417430400848389){
    if(i67<0.00026074430206790566){
     s0+=45456.0;
     s1+=17.0;
    } else {
     s0+=5133.0;
     s1+=110.0;
    }
   } else {
    if(i60<-0.0013783574104309082){
     s0+=281.0;
     s1+=134.0;
    } else {
     s0+=4904.0;
     s1+=94.0;
    }
   }
  } else {
   if(i38<0.001125639770179987){
    if(i69<0.0008441697573289275){
     s0+=3335.0;
     s1+=879.0;
    } else {
     s0+=169.0;
     s1+=463.0;
    }
   } else {
    if(i49<-0.010924667119979858){
     s0+=1839.0;
     s1+=255.0;
    } else {
     s0+=7511.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i49<0.008181989192962646){
   if(i65<1.7929947716766037e-05){
    if(i59<0.9976622462272644){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=63.0;
     s1+=794.0;
    }
   } else {
    if(i17<0.015461640432476997){
     s0+=280.0;
     s1+=54.0;
    } else {
     s0+=2.0;
     s1+=47.0;
    }
   }
  } else {
   if(i34<0.001723101711831987){
    s1+=1.0;
   } else {
    if(i50<-0.02780577540397644){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=359.0;
    }
   }
  }
 }
} else {
 if(i14<-1.5079975128173828e-05){
  if(i59<1.0001444816589355){
   if(i25<0.0007423259085044265){
    if(i51<-0.006273510865867138){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=54.0;
    }
   } else {
    s0+=362.0;
   }
  } else {
   if(i19<1.074893832206726){
    s0+=27.0;
   } else {
    if(i39<0.004315279424190521){
     s0+=2.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i44<0.023849956691265106){
   if(i10<0.0007874965667724609){
    if(i31<0.06422162055969238){
     s0+=55.0;
     s1+=903.0;
    } else {
     s0+=1012.0;
     s1+=877.0;
    }
   } else {
    if(i7<-4.317488128435798e-05){
     s1+=2348.0;
    } else {
     s0+=41.0;
     s1+=110.0;
    }
   }
  } else {
   if(i7<-1.4545135854859836e-05){
    if(i17<0.002468982245773077){
     s0+=26.0;
     s1+=36.0;
    } else {
     s0+=36.0;
     s1+=9727.0;
    }
   } else {
    if(i24<1.023733377456665){
     s0+=26.0;
     s1+=101.0;
    } else {
     s0+=74.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i1<0.0005484223365783691){
 if(i11<1.0452215671539307){
  if(i25<0.0003066366771236062){
   if(i56<-0.004916191101074219){
    if(i19<1.0354082584381104){
     s0+=3.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i8<0.00035834312438964844){
     s0+=52490.0;
     s1+=236.0;
    } else {
     s0+=642.0;
     s1+=68.0;
    }
   }
  } else {
   if(i33<0.0014561788411810994){
    if(i32<1.0703742504119873){
     s0+=2129.0;
     s1+=5.0;
    } else {
     s0+=1912.0;
     s1+=1356.0;
    }
   } else {
    if(i23<0.997798502445221){
     s0+=7264.0;
     s1+=132.0;
    } else {
     s0+=514.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i2<0.08962935209274292){
   if(i28<1.1013743877410889){
    if(i53<0.001161573571152985){
     s0+=963.0;
     s1+=313.0;
    } else {
     s0+=48.0;
     s1+=254.0;
    }
   } else {
    if(i17<0.007217176258563995){
     s0+=3115.0;
     s1+=184.0;
    } else {
     s0+=109.0;
     s1+=131.0;
    }
   }
  } else {
   if(i6<-5.415081977844238e-05){
    if(i34<0.0038620082195848227){
     s0+=267.0;
    } else {
     s0+=16.0;
     s1+=115.0;
    }
   } else {
    if(i64<0.00013411097461357713){
     s0+=307.0;
     s1+=187.0;
    } else {
     s0+=612.0;
     s1+=2360.0;
    }
   }
  }
 }
} else {
 if(i55<0.9991834163665771){
  s0+=150.0;
 } else {
  if(i20<1.0098929405212402){
   if(i3<0.0648905336856842){
    if(i36<1.1341700553894043){
     s0+=7.0;
     s1+=314.0;
    } else {
     s0+=255.0;
     s1+=220.0;
    }
   } else {
    if(i43<-1.2874843378085643e-05){
     s0+=114.0;
     s1+=2722.0;
    } else {
     s0+=40.0;
     s1+=70.0;
    }
   }
  } else {
   s1+=8476.0;
  }
 }
}
if(i4<1.0024573802947998){
 if(i19<1.0572319030761719){
  if(i13<1.0082513093948364){
   if(i0<0.0832144021987915){
    if(i49<-0.0056569576263427734){
     s0+=973.0;
     s1+=171.0;
    } else {
     s0+=57421.0;
     s1+=401.0;
    }
   } else {
    if(i4<0.996940553188324){
     s0+=152.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=153.0;
    }
   }
  } else {
   if(i71<0.00014664075570181012){
    s1+=69.0;
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i17<0.00434583704918623){
   if(i2<0.08370226621627808){
    if(i39<0.0016373794060200453){
     s0+=2817.0;
     s1+=754.0;
    } else {
     s0+=5268.0;
     s1+=176.0;
    }
   } else {
    if(i11<1.073185682296753){
     s0+=235.0;
     s1+=906.0;
    } else {
     s0+=952.0;
     s1+=405.0;
    }
   }
  } else {
   if(i11<1.0453037023544312){
    if(i38<0.0032863509841263294){
     s0+=63.0;
     s1+=255.0;
    } else {
     s0+=2087.0;
     s1+=128.0;
    }
   } else {
    if(i2<0.09526187181472778){
     s0+=587.0;
     s1+=417.0;
    } else {
     s0+=178.0;
     s1+=2012.0;
    }
   }
  }
 }
} else {
 if(i17<0.002001180313527584){
  if(i57<-3.0127686841296963e-05){
   s1+=119.0;
  } else {
   if(i42<1.1386182308197021){
    if(i44<0.00203509908169508){
     s0+=6.0;
    } else {
     s1+=23.0;
    }
   } else {
    s0+=173.0;
   }
  }
 } else {
  if(i0<0.04850319027900696){
   if(i54<-8.7738037109375e-05){
    if(i64<0.00024857468088157475){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=20.0;
     s1+=241.0;
    }
   } else {
    if(i47<0.033951275050640106){
     s1+=2.0;
    } else {
     s0+=32.0;
    }
   }
  } else {
   if(i18<-2.980232238769531e-07){
    if(i44<0.01898185908794403){
     s0+=82.0;
     s1+=107.0;
    } else {
     s0+=2.0;
     s1+=803.0;
    }
   } else {
    if(i4<1.002712607383728){
     s0+=13.0;
     s1+=155.0;
    } else {
     s0+=10.0;
     s1+=9769.0;
    }
   }
  }
 }
}
if(i7<-7.074392487993464e-05){
 if(i1<0.0001004636287689209){
  if(i11<1.0882463455200195){
   if(i20<0.9974112510681152){
    if(i20<0.9790481925010681){
     s0+=612.0;
     s1+=2.0;
    } else {
     s0+=254.0;
     s1+=43.0;
    }
   } else {
    s1+=29.0;
   }
  } else {
   s1+=245.0;
  }
 } else {
  if(i10<-0.002505660057067871){
   if(i5<0.043612390756607056){
    if(i44<0.023369476199150085){
     s0+=81.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i19<1.1445528268814087){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=116.0;
    }
   }
  } else {
   if(i4<1.0047109127044678){
    if(i11<1.122573733329773){
     s0+=127.0;
     s1+=979.0;
    } else {
     s1+=1169.0;
    }
   } else {
    if(i20<1.005340814590454){
     s0+=23.0;
     s1+=851.0;
    } else {
     s1+=8085.0;
    }
   }
  }
 }
} else {
 if(i22<0.022041527554392815){
  if(i0<0.07834228873252869){
   if(i1<0.0006022453308105469){
    if(i27<0.00031303492141887546){
     s0+=55297.0;
     s1+=456.0;
    } else {
     s0+=7039.0;
     s1+=630.0;
    }
   } else {
    if(i16<1.0011703968048096){
     s0+=98.0;
     s1+=1.0;
    } else {
     s0+=93.0;
     s1+=225.0;
    }
   }
  } else {
   if(i10<0.00025528669357299805){
    if(i62<-0.017940450459718704){
     s0+=608.0;
     s1+=86.0;
    } else {
     s0+=437.0;
     s1+=412.0;
    }
   } else {
    if(i32<1.2388319969177246){
     s0+=62.0;
     s1+=720.0;
    } else {
     s0+=81.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i9<1.0398318767547607){
   if(i18<-0.00022798776626586914){
    if(i0<0.08770090341567993){
     s0+=3728.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i40<-2.9385089874267578e-05){
     s0+=346.0;
     s1+=9.0;
    } else {
     s0+=133.0;
     s1+=206.0;
    }
   }
  } else {
   if(i4<0.9966427683830261){
    if(i32<1.639693260192871){
     s0+=970.0;
     s1+=87.0;
    } else {
     s0+=31.0;
     s1+=37.0;
    }
   } else {
    if(i44<0.012720445170998573){
     s0+=587.0;
     s1+=604.0;
    } else {
     s0+=447.0;
     s1+=2118.0;
    }
   }
  }
 }
}
if(i2<0.08392083644866943){
 if(i23<1.004508376121521){
  if(i60<-0.0013009607791900635){
   if(i23<0.9939217567443848){
    if(i3<0.058644264936447144){
     s0+=2941.0;
     s1+=78.0;
    } else {
     s0+=108.0;
     s1+=45.0;
    }
   } else {
    if(i38<0.000320382765494287){
     s0+=757.0;
    } else {
     s0+=1859.0;
     s1+=1081.0;
    }
   }
  } else {
   if(i25<0.00028525295783765614){
    if(i16<1.0020649433135986){
     s0+=51707.0;
     s1+=194.0;
    } else {
     s0+=12.0;
     s1+=22.0;
    }
   } else {
    if(i23<0.9946650862693787){
     s0+=6515.0;
     s1+=58.0;
    } else {
     s0+=4530.0;
     s1+=917.0;
    }
   }
  }
 } else {
  if(i7<-5.9723617596318945e-05){
   if(i8<-9.107589721679688e-05){
    s0+=5.0;
   } else {
    if(i17<0.001404823618941009){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=594.0;
    }
   }
  } else {
   if(i32<1.1016805171966553){
    s1+=110.0;
   } else {
    if(i58<0.017444320023059845){
     s0+=453.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i8<-0.0004025697708129883){
  if(i43<-8.846296623232774e-06){
   if(i10<-0.0033077597618103027){
    s0+=25.0;
   } else {
    if(i20<0.9834091663360596){
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  } else {
   if(i41<0.9997351169586182){
    s0+=634.0;
   } else {
    if(i60<0.0020476877689361572){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i4<1.0015954971313477){
   if(i7<-1.3797138308291323e-05){
    if(i37<0.04664561152458191){
     s0+=46.0;
     s1+=1654.0;
    } else {
     s0+=481.0;
     s1+=975.0;
    }
   } else {
    if(i50<0.0408329963684082){
     s0+=126.0;
     s1+=235.0;
    } else {
     s0+=560.0;
     s1+=140.0;
    }
   }
  } else {
   if(i0<0.13177666068077087){
    if(i50<0.05612638592720032){
     s0+=37.0;
     s1+=1563.0;
    } else {
     s0+=119.0;
     s1+=35.0;
    }
   } else {
    if(i2<0.17274951934814453){
     s0+=18.0;
     s1+=1125.0;
    } else {
     s1+=8438.0;
    }
   }
  }
 }
}
if(i26<1.0074777603149414){
 if(i11<1.0450963973999023){
  if(i49<-0.006181091070175171){
   if(i8<0.00045359134674072266){
    if(i34<0.002470593433827162){
     s0+=1263.0;
     s1+=580.0;
    } else {
     s0+=1361.0;
     s1+=40.0;
    }
   } else {
    if(i3<0.017029166221618652){
     s0+=121.0;
     s1+=40.0;
    } else {
     s0+=14.0;
     s1+=317.0;
    }
   }
  } else {
   if(i47<0.02775684744119644){
    if(i3<0.08350089192390442){
     s0+=55274.0;
     s1+=336.0;
    } else {
     s0+=56.0;
     s1+=82.0;
    }
   } else {
    if(i68<-2.6145648007513955e-05){
     s0+=1691.0;
     s1+=666.0;
    } else {
     s0+=4884.0;
     s1+=228.0;
    }
   }
  }
 } else {
  if(i0<0.10036703944206238){
   if(i14<3.2782554626464844e-06){
    if(i22<0.022562377154827118){
     s0+=2127.0;
     s1+=105.0;
    } else {
     s0+=506.0;
     s1+=234.0;
    }
   } else {
    if(i51<0.009411388076841831){
     s0+=1148.0;
     s1+=315.0;
    } else {
     s0+=165.0;
     s1+=499.0;
    }
   }
  } else {
   if(i41<0.9988152980804443){
    if(i28<1.4944241046905518){
     s0+=188.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i57<3.739308885997161e-05){
     s0+=169.0;
     s1+=311.0;
    } else {
     s0+=214.0;
     s1+=2482.0;
    }
   }
  }
 }
} else {
 if(i7<-4.222309507895261e-05){
  if(i16<0.9986257553100586){
   if(i13<0.9906266927719116){
    s1+=4.0;
   } else {
    s0+=48.0;
   }
  } else {
   if(i2<0.06217551231384277){
    if(i36<1.1621103286743164){
     s0+=4.0;
     s1+=181.0;
    } else {
     s0+=67.0;
     s1+=8.0;
    }
   } else {
    if(i30<1.0041780471801758){
     s0+=56.0;
     s1+=562.0;
    } else {
     s0+=22.0;
     s1+=9699.0;
    }
   }
  }
 } else {
  if(i42<1.140648365020752){
   if(i44<0.01129092276096344){
    if(i43<-3.5171592571714427e-06){
     s0+=18.0;
     s1+=55.0;
    } else {
     s0+=144.0;
    }
   } else {
    if(i7<-1.1075424481532536e-05){
     s1+=329.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i13<1.0240447521209717){
    if(i6<7.87973403930664e-05){
     s0+=1457.0;
     s1+=54.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i7<-2.123479134752415e-07){
     s1+=96.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i2<0.08522835373878479){
  if(i25<0.00030692131258547306){
   if(i15<1.0076158046722412){
    if(i8<0.0007390081882476807){
     s0+=53249.0;
     s1+=227.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i7<-3.5505014238879085e-05){
     s0+=7.0;
     s1+=45.0;
    } else {
     s0+=179.0;
     s1+=13.0;
    }
   }
  } else {
   if(i1<0.0003005862236022949){
    if(i35<0.0018364650895819068){
     s0+=5420.0;
     s1+=1243.0;
    } else {
     s0+=9114.0;
     s1+=289.0;
    }
   } else {
    if(i50<0.028321146965026855){
     s0+=142.0;
     s1+=590.0;
    } else {
     s0+=112.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i22<0.02431606873869896){
   if(i41<0.9992974996566772){
    if(i43<-8.90206138137728e-06){
     s0+=21.0;
     s1+=6.0;
    } else {
     s0+=436.0;
    }
   } else {
    if(i35<0.0013556218473240733){
     s0+=133.0;
     s1+=386.0;
    } else {
     s0+=493.0;
     s1+=260.0;
    }
   }
  } else {
   if(i43<3.927024863514816e-06){
    if(i7<-9.223096640198492e-06){
     s0+=163.0;
     s1+=2980.0;
    } else {
     s0+=100.0;
     s1+=94.0;
    }
   } else {
    if(i12<0.9982039332389832){
     s0+=153.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i17<0.003327295184135437){
  if(i39<0.0013536743354052305){
   if(i18<7.587671279907227e-05){
    if(i44<0.012246591970324516){
     s0+=55.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i35<0.0001784123305696994){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=694.0;
    }
   }
  } else {
   if(i13<1.0244395732879639){
    if(i0<0.1439686119556427){
     s0+=1059.0;
     s1+=51.0;
    } else {
     s0+=84.0;
     s1+=136.0;
    }
   } else {
    if(i7<-8.967504982138053e-06){
     s0+=1.0;
     s1+=213.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i23<0.9898496270179749){
   if(i14<-9.745359420776367e-06){
    s0+=70.0;
   } else {
    s1+=40.0;
   }
  } else {
   if(i2<0.08934426307678223){
    if(i8<-0.0002480149269104004){
     s0+=30.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=529.0;
    }
   } else {
    if(i20<1.0073164701461792){
     s0+=51.0;
     s1+=1404.0;
    } else {
     s1+=7847.0;
    }
   }
  }
 }
}
if(i6<3.653764724731445e-05){
 if(i13<1.0080623626708984){
  if(i5<0.07235640287399292){
   if(i9<1.0410068035125732){
    if(i0<0.08213692903518677){
     s0+=59003.0;
     s1+=619.0;
    } else {
     s0+=74.0;
     s1+=86.0;
    }
   } else {
    if(i3<0.07701024413108826){
     s0+=8386.0;
     s1+=1232.0;
    } else {
     s0+=50.0;
     s1+=302.0;
    }
   }
  } else {
   if(i38<0.006117885001003742){
    if(i31<0.062317878007888794){
     s0+=82.0;
     s1+=333.0;
    } else {
     s0+=1220.0;
     s1+=466.0;
    }
   } else {
    if(i20<0.9753457307815552){
     s0+=64.0;
     s1+=37.0;
    } else {
     s0+=76.0;
     s1+=672.0;
    }
   }
  }
 } else {
  if(i22<0.03987519443035126){
   if(i35<0.0011127840261906385){
    if(i33<0.0018550832755863667){
     s0+=49.0;
     s1+=751.0;
    } else {
     s0+=81.0;
     s1+=17.0;
    }
   } else {
    if(i0<0.10812097787857056){
     s0+=829.0;
     s1+=59.0;
    } else {
     s0+=185.0;
     s1+=324.0;
    }
   }
  } else {
   if(i16<0.9988003969192505){
    if(i1<-0.0003838539123535156){
     s0+=26.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i5<0.04929083585739136){
     s0+=8.0;
     s1+=16.0;
    } else {
     s0+=17.0;
     s1+=633.0;
    }
   }
  }
 }
} else {
 if(i36<1.0590304136276245){
  s0+=363.0;
 } else {
  if(i5<0.05817219614982605){
   if(i4<1.0041494369506836){
    if(i44<0.008521707728505135){
     s0+=171.0;
     s1+=83.0;
    } else {
     s0+=89.0;
     s1+=309.0;
    }
   } else {
    if(i30<0.9907069206237793){
     s0+=20.0;
     s1+=59.0;
    } else {
     s1+=882.0;
    }
   }
  } else {
   if(i38<0.009540126658976078){
    if(i43<-1.2553031410789117e-05){
     s0+=145.0;
     s1+=3421.0;
    } else {
     s0+=54.0;
     s1+=97.0;
    }
   } else {
    if(i12<0.9963879585266113){
     s0+=1.0;
     s1+=105.0;
    } else {
     s1+=6754.0;
    }
   }
  }
 }
}
if(i22<0.023739442229270935){
 if(i7<-5.102672366774641e-05){
  if(i23<1.0012271404266357){
   if(i51<0.009505263529717922){
    if(i3<0.14096811413764954){
     s0+=750.0;
     s1+=56.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   } else {
    if(i68<-0.00042037467937916517){
     s0+=8.0;
     s1+=66.0;
    } else {
     s0+=43.0;
     s1+=38.0;
    }
   }
  } else {
   if(i6<-5.602836608886719e-06){
    if(i31<0.07487314939498901){
     s0+=88.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<0.04550674557685852){
     s0+=48.0;
     s1+=100.0;
    } else {
     s0+=42.0;
     s1+=2681.0;
    }
   }
  }
 } else {
  if(i25<0.0002962963772006333){
   if(i60<-0.0028032660484313965){
    if(i60<-0.005432009696960449){
     s0+=3.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i30<1.007286548614502){
     s0+=52166.0;
     s1+=195.0;
    } else {
     s0+=558.0;
     s1+=59.0;
    }
   }
  } else {
   if(i4<1.0006237030029297){
    if(i1<-0.0003097653388977051){
     s0+=6568.0;
     s1+=367.0;
    } else {
     s0+=3718.0;
     s1+=775.0;
    }
   } else {
    if(i42<1.1065986156463623){
     s0+=21.0;
     s1+=505.0;
    } else {
     s0+=813.0;
     s1+=119.0;
    }
   }
  }
 }
} else {
 if(i23<0.9934499859809875){
  if(i9<1.0690302848815918){
   if(i5<0.16809451580047607){
    if(i5<0.07820931077003479){
     s0+=4191.0;
     s1+=20.0;
    } else {
     s0+=60.0;
     s1+=13.0;
    }
   } else {
    if(i38<0.003943945746868849){
     s0+=4.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i43<3.5794591894955374e-06){
    if(i3<0.022280603647232056){
     s0+=100.0;
     s1+=17.0;
    } else {
     s0+=56.0;
     s1+=666.0;
    }
   } else {
    if(i40<-5.2988529205322266e-05){
     s0+=393.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.06434386968612671){
   if(i20<0.9873164892196655){
    if(i17<0.020798422396183014){
     s0+=411.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i17<0.0027944522444158792){
     s0+=536.0;
     s1+=242.0;
    } else {
     s0+=103.0;
     s1+=384.0;
    }
   }
  } else {
   if(i17<0.0032897922210395336){
    if(i46<0.043675780296325684){
     s0+=22.0;
     s1+=469.0;
    } else {
     s0+=301.0;
     s1+=307.0;
    }
   } else {
    if(i10<-0.0005474388599395752){
     s0+=105.0;
     s1+=1304.0;
    } else {
     s0+=18.0;
     s1+=8586.0;
    }
   }
  }
 }
}
if(i6<3.7610530853271484e-05){
 if(i11<1.043776035308838){
  if(i0<0.0832170844078064){
   if(i19<1.0451585054397583){
    if(i69<0.0007179004023782909){
     s0+=51001.0;
     s1+=68.0;
    } else {
     s0+=2773.0;
     s1+=152.0;
    }
   } else {
    if(i2<0.06334245204925537){
     s0+=9701.0;
     s1+=742.0;
    } else {
     s0+=892.0;
     s1+=335.0;
    }
   }
  } else {
   if(i34<0.0004747642087750137){
    if(i28<1.079486608505249){
     s0+=62.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   } else {
    if(i12<0.9958465099334717){
     s0+=64.0;
     s1+=8.0;
    } else {
     s0+=54.0;
     s1+=475.0;
    }
   }
  }
 } else {
  if(i3<0.0854572057723999){
   if(i23<1.0014739036560059){
    if(i0<0.0762961208820343){
     s0+=4033.0;
     s1+=463.0;
    } else {
     s0+=405.0;
     s1+=226.0;
    }
   } else {
    if(i35<0.0011310616973787546){
     s0+=106.0;
     s1+=256.0;
    } else {
     s0+=271.0;
     s1+=56.0;
    }
   }
  } else {
   if(i40<-0.00013753771781921387){
    if(i53<0.002063652267679572){
     s0+=317.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=32.0;
    }
   } else {
    if(i44<0.02408599853515625){
     s0+=669.0;
     s1+=1173.0;
    } else {
     s0+=109.0;
     s1+=1479.0;
    }
   }
  }
 }
} else {
 if(i38<0.00040599831845611334){
  s0+=301.0;
 } else {
  if(i0<0.06267303228378296){
   if(i17<0.002522451337426901){
    if(i18<0.0002929568290710449){
     s0+=126.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=27.0;
     s1+=431.0;
    } else {
     s0+=92.0;
     s1+=46.0;
    }
   }
  } else {
   if(i1<0.0005206465721130371){
    if(i47<0.25013941526412964){
     s0+=16.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i4<1.0044927597045898){
     s0+=163.0;
     s1+=1877.0;
    } else {
     s0+=12.0;
     s1+=9196.0;
    }
   }
  }
 }
}
if(i4<1.0024676322937012){
 if(i47<0.03040575236082077){
  if(i26<1.0073931217193604){
   if(i52<0.9711258411407471){
    if(i42<1.0672621726989746){
     s0+=217.0;
    } else {
     s0+=198.0;
     s1+=180.0;
    }
   } else {
    if(i69<0.000856372993439436){
     s0+=57716.0;
     s1+=503.0;
    } else {
     s0+=1196.0;
     s1+=264.0;
    }
   }
  } else {
   if(i42<1.140648365020752){
    if(i0<0.05315569043159485){
     s0+=70.0;
     s1+=26.0;
    } else {
     s0+=42.0;
     s1+=597.0;
    }
   } else {
    if(i0<0.11596378684043884){
     s0+=440.0;
     s1+=24.0;
    } else {
     s0+=40.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i0<0.07579651474952698){
   if(i23<0.9939221739768982){
    if(i48<-0.008501410484313965){
     s0+=465.0;
     s1+=66.0;
    } else {
     s0+=5357.0;
     s1+=55.0;
    }
   } else {
    if(i35<0.0026958175003528595){
     s0+=2011.0;
     s1+=877.0;
    } else {
     s0+=1721.0;
     s1+=124.0;
    }
   }
  } else {
   if(i16<0.9985313415527344){
    if(i42<1.4761377573013306){
     s0+=306.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   } else {
    if(i63<0.025580883026123047){
     s0+=221.0;
     s1+=2081.0;
    } else {
     s0+=624.0;
     s1+=993.0;
    }
   }
  }
 }
} else {
 if(i22<0.028179358690977097){
  if(i18<0.000232696533203125){
   if(i25<0.0001870676060207188){
    if(i38<0.0010060925269499421){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=82.0;
    }
   } else {
    if(i70<-5.319031515682582e-06){
     s0+=115.0;
     s1+=837.0;
    } else {
     s0+=110.0;
     s1+=118.0;
    }
   }
  } else {
   s1+=2239.0;
  }
 } else {
  if(i44<0.014383723959326744){
   if(i18<0.0002028942108154297){
    if(i33<0.0091311726719141){
     s0+=20.0;
     s1+=70.0;
    } else {
     s0+=22.0;
    }
   } else {
    s1+=428.0;
   }
  } else {
   if(i55<1.0007832050323486){
    if(i0<0.0035457611083984375){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=7579.0;
    }
   } else {
    if(i45<0.7264742851257324){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i16<1.001905918121338){
  if(i22<0.016652897000312805){
   if(i3<0.08441758155822754){
    if(i19<1.0475225448608398){
     s0+=49701.0;
     s1+=143.0;
    } else {
     s0+=6836.0;
     s1+=465.0;
    }
   } else {
    if(i61<0.9966061115264893){
     s0+=49.0;
    } else {
     s0+=14.0;
     s1+=130.0;
    }
   }
  } else {
   if(i0<0.07301512360572815){
    if(i34<0.000879271246958524){
     s0+=1497.0;
     s1+=500.0;
    } else {
     s0+=6666.0;
     s1+=116.0;
    }
   } else {
    if(i65<2.0754341676365584e-05){
     s0+=37.0;
     s1+=558.0;
    } else {
     s0+=155.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i40<0.0003674030303955078){
   if(i25<0.00017745512013789266){
    s0+=16.0;
   } else {
    if(i47<0.23539601266384125){
     s0+=19.0;
     s1+=615.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i23<1.0033020973205566){
    if(i50<-0.07510659098625183){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=316.0;
     s1+=13.0;
    }
   } else {
    s1+=80.0;
   }
  }
 }
} else {
 if(i0<0.0915621817111969){
  if(i12<1.0035302639007568){
   if(i42<1.1037919521331787){
    if(i38<0.0002944233128800988){
     s0+=586.0;
    } else {
     s0+=468.0;
     s1+=672.0;
    }
   } else {
    if(i49<0.00043088197708129883){
     s0+=1133.0;
     s1+=234.0;
    } else {
     s0+=2246.0;
     s1+=78.0;
    }
   }
  } else {
   if(i18<-0.00010567903518676758){
    if(i24<0.9868336319923401){
     s0+=33.0;
     s1+=109.0;
    } else {
     s0+=132.0;
     s1+=5.0;
    }
   } else {
    if(i43<-1.4047096556168981e-05){
     s0+=5.0;
     s1+=570.0;
    } else {
     s0+=50.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i41<0.9989370107650757){
   if(i53<0.0031439908780157566){
    s0+=290.0;
   } else {
    s1+=14.0;
   }
  } else {
   if(i38<0.006525954697281122){
    if(i53<0.0010820426978170872){
     s0+=597.0;
     s1+=1020.0;
    } else {
     s0+=212.0;
     s1+=2623.0;
    }
   } else {
    if(i19<1.0654747486114502){
     s0+=5.0;
    } else {
     s0+=66.0;
     s1+=9104.0;
    }
   }
  }
 }
}
if(i0<0.08225274085998535){
 if(i4<1.0024793148040771){
  if(i0<0.06630954146385193){
   if(i54<-0.0027169883251190186){
    if(i12<1.0004339218139648){
     s0+=1562.0;
     s1+=254.0;
    } else {
     s0+=180.0;
     s1+=182.0;
    }
   } else {
    if(i48<-0.001650482416152954){
     s0+=2621.0;
     s1+=358.0;
    } else {
     s0+=62099.0;
     s1+=654.0;
    }
   }
  } else {
   if(i31<0.04222571849822998){
    if(i1<-0.0008157193660736084){
     s0+=49.0;
     s1+=4.0;
    } else {
     s0+=20.0;
     s1+=410.0;
    }
   } else {
    if(i46<0.03475692868232727){
     s0+=31.0;
     s1+=92.0;
    } else {
     s0+=2560.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i25<0.00019104243256151676){
   if(i65<3.527474063957925e-06){
    s0+=74.0;
   } else {
    s1+=18.0;
   }
  } else {
   if(i17<0.0022666952572762966){
    if(i36<1.1555674076080322){
     s1+=35.0;
    } else {
     s0+=104.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.0022560954093933105){
     s0+=55.0;
     s1+=846.0;
    } else {
     s0+=31.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i7<-1.2574806532938965e-05){
  if(i17<0.004802085924893618){
   if(i11<1.1681195497512817){
    if(i49<0.01727113127708435){
     s0+=132.0;
     s1+=1842.0;
    } else {
     s0+=216.0;
     s1+=239.0;
    }
   } else {
    if(i0<0.203721284866333){
     s0+=131.0;
     s1+=14.0;
    } else {
     s0+=24.0;
     s1+=82.0;
    }
   }
  } else {
   if(i59<1.0052322149276733){
    if(i8<-0.0005024969577789307){
     s0+=7.0;
    } else {
     s0+=131.0;
     s1+=11536.0;
    }
   } else {
    if(i25<0.004627742804586887){
     s0+=32.0;
    } else {
     s0+=2.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i37<0.0453794002532959){
   if(i6<-5.581974983215332e-05){
    s0+=97.0;
   } else {
    if(i64<6.507419311674312e-05){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=214.0;
    }
   }
  } else {
   if(i4<1.00178861618042){
    if(i33<0.001844368176534772){
     s0+=741.0;
     s1+=63.0;
    } else {
     s0+=137.0;
     s1+=61.0;
    }
   } else {
    s1+=16.0;
   }
  }
 }
}
if(i10<0.000807344913482666){
 if(i1<0.0005419552326202393){
  if(i5<0.07196682691574097){
   if(i47<0.026235653087496758){
    if(i0<0.07888215780258179){
     s0+=56801.0;
     s1+=589.0;
    } else {
     s0+=120.0;
     s1+=168.0;
    }
   } else {
    if(i36<1.178917407989502){
     s0+=4476.0;
     s1+=1371.0;
    } else {
     s0+=6827.0;
     s1+=208.0;
    }
   }
  } else {
   if(i0<0.1060321033000946){
    if(i29<1.0272949934005737){
     s0+=44.0;
     s1+=170.0;
    } else {
     s0+=1082.0;
     s1+=351.0;
    }
   } else {
    if(i46<0.07869845628738403){
     s0+=34.0;
     s1+=1171.0;
    } else {
     s0+=776.0;
     s1+=785.0;
    }
   }
  }
 } else {
  if(i34<0.0003889336949214339){
   s0+=197.0;
  } else {
   if(i2<0.1319558322429657){
    if(i63<0.038952916860580444){
     s0+=172.0;
     s1+=755.0;
    } else {
     s0+=60.0;
     s1+=13.0;
    }
   } else {
    if(i44<0.021024875342845917){
     s0+=15.0;
     s1+=94.0;
    } else {
     s1+=1403.0;
    }
   }
  }
 }
} else {
 if(i7<-4.2801930248970166e-05){
  if(i14<-1.0699033737182617e-05){
   if(i3<0.3836582899093628){
    s0+=148.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i64<8.76978156156838e-05){
    if(i2<0.06900107860565186){
     s0+=33.0;
     s1+=1.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i3<0.05543199181556702){
     s0+=39.0;
     s1+=341.0;
    } else {
     s0+=4.0;
     s1+=9430.0;
    }
   }
  }
 } else {
  if(i27<0.0003102135960943997){
   if(i2<0.08429321646690369){
    s0+=324.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i17<0.0025527137331664562){
    if(i33<0.0012749702436849475){
     s1+=4.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i57<-4.952456492901547e-06){
     s0+=4.0;
     s1+=103.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i20<1.004671573638916){
 if(i9<1.0469921827316284){
  if(i2<0.08783209323883057){
   if(i4<1.002488613128662){
    if(i32<1.067622423171997){
     s0+=35804.0;
     s1+=5.0;
    } else {
     s0+=26288.0;
     s1+=916.0;
    }
   } else {
    if(i53<0.001129430253058672){
     s0+=2.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i7<6.213713277247734e-07){
    if(i23<0.9935359954833984){
     s0+=84.0;
     s1+=11.0;
    } else {
     s0+=37.0;
     s1+=323.0;
    }
   } else {
    if(i23<0.9900928735733032){
     s0+=198.0;
    } else {
     s0+=21.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i38<0.005650597158819437){
   if(i0<0.07520908117294312){
    if(i1<0.00021409988403320312){
     s0+=4930.0;
     s1+=604.0;
    } else {
     s0+=251.0;
     s1+=271.0;
    }
   } else {
    if(i62<-0.018755728378891945){
     s0+=936.0;
     s1+=303.0;
    } else {
     s0+=348.0;
     s1+=1327.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i28<1.4435875415802002){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=391.0;
     s1+=1.0;
    }
   } else {
    if(i11<1.0299313068389893){
     s0+=228.0;
     s1+=104.0;
    } else {
     s0+=331.0;
     s1+=2403.0;
    }
   }
  }
 }
} else {
 if(i7<-4.2161282181041315e-05){
  if(i0<0.06511515378952026){
   if(i67<-2.241237962152809e-05){
    if(i38<0.003166777081787586){
     s1+=68.0;
    } else {
     s0+=129.0;
    }
   } else {
    if(i64<0.00018772426119539887){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=310.0;
    }
   }
  } else {
   if(i4<0.99849534034729){
    if(i29<1.1988904476165771){
     s0+=12.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i7<-4.32968299719505e-05){
     s0+=19.0;
     s1+=9940.0;
    } else {
     s0+=9.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i38<0.0011849134461954236){
   if(i34<0.0005649880040436983){
    if(i59<0.9997846484184265){
     s1+=19.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i11<1.023808240890503){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=205.0;
    }
   }
  } else {
   if(i35<0.011688271537423134){
    if(i3<0.13812336325645447){
     s0+=987.0;
     s1+=11.0;
    } else {
     s0+=55.0;
     s1+=56.0;
    }
   } else {
    if(i32<1.2626419067382812){
     s0+=6.0;
     s1+=48.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i23<1.00390625){
 if(i3<0.07800713181495667){
  if(i25<0.0002811224549077451){
   if(i26<1.0068551301956177){
    if(i56<-0.004095733165740967){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=51956.0;
     s1+=154.0;
    }
   } else {
    if(i19<1.0732929706573486){
     s0+=27.0;
     s1+=66.0;
    } else {
     s0+=186.0;
    }
   }
  } else {
   if(i4<0.9979710578918457){
    if(i39<0.0020561390556395054){
     s0+=2504.0;
     s1+=304.0;
    } else {
     s0+=8145.0;
     s1+=80.0;
    }
   } else {
    if(i57<2.898883212765213e-05){
     s0+=3989.0;
     s1+=390.0;
    } else {
     s0+=1791.0;
     s1+=1246.0;
    }
   }
  }
 } else {
  if(i7<-1.4647196621808689e-05){
   if(i0<0.11707004904747009){
    if(i38<0.0018381226109340787){
     s0+=64.0;
     s1+=606.0;
    } else {
     s0+=411.0;
     s1+=360.0;
    }
   } else {
    if(i17<0.0016825782367959619){
     s0+=73.0;
     s1+=38.0;
    } else {
     s0+=94.0;
     s1+=3275.0;
    }
   }
  } else {
   if(i14<-1.6450881958007812e-05){
    s0+=410.0;
   } else {
    if(i17<0.0017082281410694122){
     s0+=461.0;
     s1+=82.0;
    } else {
     s0+=231.0;
     s1+=345.0;
    }
   }
  }
 }
} else {
 if(i13<1.009617805480957){
  if(i25<0.0002472150372341275){
   if(i24<1.0081734657287598){
    if(i44<0.016175128519535065){
     s0+=414.0;
     s1+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<0.04218670725822449){
     s0+=13.0;
     s1+=1.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i2<0.06038600206375122){
    if(i61<0.9998880624771118){
     s0+=131.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=151.0;
    }
   } else {
    if(i67<0.0006070223753340542){
     s0+=61.0;
     s1+=558.0;
    } else {
     s0+=6.0;
     s1+=998.0;
    }
   }
  }
 } else {
  if(i17<0.002396791707724333){
   if(i32<1.25206458568573){
    s1+=313.0;
   } else {
    if(i10<0.004218876361846924){
     s0+=117.0;
     s1+=6.0;
    } else {
     s1+=46.0;
    }
   }
  } else {
   if(i10<0.0008153319358825684){
    if(i33<0.0018833844223991036){
     s0+=12.0;
     s1+=27.0;
    } else {
     s0+=5.0;
     s1+=381.0;
    }
   } else {
    if(i70<8.094003760561463e-07){
     s1+=7645.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i18<0.00011414289474487305){
 if(i11<1.0436272621154785){
  if(i49<-0.006163239479064941){
   if(i0<0.044162899255752563){
    if(i45<0.16166815161705017){
     s0+=1151.0;
     s1+=322.0;
    } else {
     s0+=1513.0;
     s1+=33.0;
    }
   } else {
    if(i61<0.9978387355804443){
     s0+=55.0;
     s1+=1.0;
    } else {
     s0+=116.0;
     s1+=477.0;
    }
   }
  } else {
   if(i2<0.08526313304901123){
    if(i16<1.0006401538848877){
     s0+=57873.0;
     s1+=553.0;
    } else {
     s0+=2817.0;
     s1+=255.0;
    }
   } else {
    if(i14<-1.329183578491211e-05){
     s0+=275.0;
     s1+=6.0;
    } else {
     s0+=98.0;
     s1+=414.0;
    }
   }
  }
 } else {
  if(i38<0.005951227620244026){
   if(i5<0.06104734539985657){
    if(i7<-2.1268522687023506e-05){
     s0+=745.0;
     s1+=510.0;
    } else {
     s0+=2918.0;
     s1+=224.0;
    }
   } else {
    if(i17<0.004772352986037731){
     s0+=1734.0;
     s1+=761.0;
    } else {
     s0+=240.0;
     s1+=1070.0;
    }
   }
  } else {
   if(i10<-0.003945648670196533){
    if(i13<0.9758037328720093){
     s0+=1.0;
     s1+=57.0;
    } else {
     s0+=290.0;
     s1+=30.0;
    }
   } else {
    if(i2<0.11499044299125671){
     s0+=289.0;
     s1+=303.0;
    } else {
     s0+=64.0;
     s1+=2087.0;
    }
   }
  }
 }
} else {
 if(i2<0.06415283679962158){
  if(i4<1.00419282913208){
   if(i66<0.0005523123545572162){
    if(i40<0.00017243623733520508){
     s0+=627.0;
     s1+=19.0;
    } else {
     s0+=74.0;
     s1+=46.0;
    }
   } else {
    if(i30<1.0006115436553955){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   s1+=159.0;
  }
 } else {
  if(i40<-0.0003739297389984131){
   s0+=36.0;
  } else {
   if(i4<0.9998650550842285){
    if(i15<1.0304439067840576){
     s0+=21.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i44<0.013226611539721489){
     s0+=81.0;
     s1+=1553.0;
    } else {
     s0+=1.0;
     s1+=8330.0;
    }
   }
  }
 }
}
if(i1<0.0005484223365783691){
 if(i29<1.0405162572860718){
  if(i9<1.0436501502990723){
   if(i69<0.0007074101595208049){
    if(i16<1.000643253326416){
     s0+=52723.0;
     s1+=216.0;
    } else {
     s0+=2234.0;
     s1+=110.0;
    }
   } else {
    if(i36<1.1311933994293213){
     s0+=1947.0;
     s1+=560.0;
    } else {
     s0+=4001.0;
     s1+=44.0;
    }
   }
  } else {
   if(i12<1.0004526376724243){
    if(i0<0.0754428505897522){
     s0+=4677.0;
     s1+=527.0;
    } else {
     s0+=75.0;
     s1+=602.0;
    }
   } else {
    if(i2<0.07651969790458679){
     s0+=888.0;
     s1+=389.0;
    } else {
     s0+=32.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i44<0.040469925850629807){
   if(i2<0.10566136240959167){
    if(i36<1.1040328741073608){
     s0+=973.0;
     s1+=452.0;
    } else {
     s0+=2052.0;
     s1+=132.0;
    }
   } else {
    if(i41<0.9989831447601318){
     s0+=228.0;
    } else {
     s0+=547.0;
     s1+=1288.0;
    }
   }
  } else {
   if(i6<-9.28342342376709e-05){
    if(i71<0.00025310475029982626){
     s0+=62.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i33<0.011805413290858269){
     s0+=23.0;
     s1+=829.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i25<0.00022994447499513626){
  if(i17<0.0037737907841801643){
   if(i57<5.921269803366158e-06){
    if(i13<1.0223188400268555){
     s0+=243.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   s1+=25.0;
  }
 } else {
  if(i17<0.0023753298446536064){
   if(i43<-1.4695903701067436e-05){
    if(i57<6.177280738484114e-05){
     s1+=199.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i64<0.00032584232394583523){
     s1+=8.0;
    } else {
     s0+=97.0;
    }
   }
  } else {
   if(i30<0.9979338645935059){
    if(i2<0.13081911206245422){
     s0+=184.0;
     s1+=491.0;
    } else {
     s0+=13.0;
     s1+=1244.0;
    }
   } else {
    if(i0<0.03995436429977417){
     s0+=18.0;
     s1+=84.0;
    } else {
     s0+=29.0;
     s1+=9601.0;
    }
   }
  }
 }
}
if(i6<3.641843795776367e-05){
 if(i13<1.0081498622894287){
  if(i19<1.0526208877563477){
   if(i49<-0.005452990531921387){
    if(i32<1.069220781326294){
     s0+=790.0;
    } else {
     s0+=270.0;
     s1+=151.0;
    }
   } else {
    if(i2<0.07796347141265869){
     s0+=55136.0;
     s1+=286.0;
    } else {
     s0+=677.0;
     s1+=102.0;
    }
   }
  } else {
   if(i31<0.055790066719055176){
    if(i28<1.229804515838623){
     s0+=3915.0;
     s1+=1565.0;
    } else {
     s0+=6580.0;
     s1+=362.0;
    }
   } else {
    if(i39<0.010822607204318047){
     s0+=1579.0;
     s1+=957.0;
    } else {
     s0+=53.0;
     s1+=357.0;
    }
   }
  }
 } else {
  if(i2<0.08954861760139465){
   if(i35<0.0008727452950552106){
    if(i2<0.059157609939575195){
     s0+=77.0;
     s1+=56.0;
    } else {
     s0+=11.0;
     s1+=150.0;
    }
   } else {
    if(i8<0.0007347464561462402){
     s0+=710.0;
     s1+=63.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i49<0.021152734756469727){
    if(i16<0.9987898468971252){
     s0+=21.0;
    } else {
     s0+=55.0;
     s1+=1029.0;
    }
   } else {
    if(i5<0.18651175498962402){
     s0+=214.0;
     s1+=47.0;
    } else {
     s0+=42.0;
     s1+=389.0;
    }
   }
  }
 }
} else {
 if(i39<0.0003575882292352617){
  s0+=391.0;
 } else {
  if(i68<-0.0005043784622102976){
   if(i17<0.003211112692952156){
    if(i23<0.9967446327209473){
     s0+=21.0;
    } else {
     s0+=3.0;
     s1+=67.0;
    }
   } else {
    if(i17<0.006692173425108194){
     s0+=15.0;
     s1+=418.0;
    } else {
     s0+=1.0;
     s1+=7325.0;
    }
   }
  } else {
   if(i2<0.07043230533599854){
    if(i54<-0.00018841028213500977){
     s0+=114.0;
     s1+=508.0;
    } else {
     s0+=147.0;
     s1+=44.0;
    }
   } else {
    if(i1<0.0008720159530639648){
     s0+=146.0;
     s1+=602.0;
    } else {
     s0+=43.0;
     s1+=2757.0;
    }
   }
  }
 }
}
if(i10<0.0008098483085632324){
 if(i31<0.06654724478721619){
  if(i0<0.07935231924057007){
   if(i4<1.0024815797805786){
    if(i51<0.0075655728578567505){
     s0+=64959.0;
     s1+=1120.0;
    } else {
     s0+=3363.0;
     s1+=779.0;
    }
   } else {
    if(i53<0.0016738355625420809){
     s0+=53.0;
     s1+=20.0;
    } else {
     s0+=55.0;
     s1+=308.0;
    }
   }
  } else {
   if(i1<-0.0007642209529876709){
    if(i25<0.013822199776768684){
     s0+=142.0;
     s1+=12.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i37<0.04562532901763916){
     s0+=38.0;
     s1+=1872.0;
    } else {
     s0+=70.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i0<0.12493923306465149){
   if(i62<-0.019325507804751396){
    if(i52<0.9556199908256531){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=731.0;
     s1+=23.0;
    }
   } else {
    if(i4<1.0019214153289795){
     s0+=640.0;
     s1+=314.0;
    } else {
     s0+=10.0;
     s1+=92.0;
    }
   }
  } else {
   if(i44<0.03818158805370331){
    if(i37<0.09354552626609802){
     s0+=63.0;
     s1+=808.0;
    } else {
     s0+=416.0;
     s1+=146.0;
    }
   } else {
    if(i54<0.04002273082733154){
     s0+=8.0;
     s1+=1418.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i3<0.05719447135925293){
  if(i53<0.0015675604809075594){
   if(i1<0.0009469389915466309){
    if(i50<-0.04881465435028076){
     s1+=8.0;
    } else {
     s0+=506.0;
     s1+=20.0;
    }
   } else {
    s1+=82.0;
   }
  } else {
   s1+=240.0;
  }
 } else {
  if(i43<-1.3838460290571675e-05){
   s1+=9099.0;
  } else {
   if(i71<9.10962262423709e-05){
    if(i55<0.9999241828918457){
     s1+=516.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.20357105135917664){
     s0+=82.0;
     s1+=29.0;
    } else {
     s1+=46.0;
    }
   }
  }
 }
}
if(i3<0.07827213406562805){
 if(i6<4.1812658309936523e-05){
  if(i47<0.025729525834321976){
   if(i67<0.0003312474873382598){
    if(i0<0.08248087763786316){
     s0+=55102.0;
     s1+=397.0;
    } else {
     s0+=34.0;
     s1+=44.0;
    }
   } else {
    if(i49<0.0006744861602783203){
     s0+=259.0;
     s1+=282.0;
    } else {
     s0+=1617.0;
     s1+=36.0;
    }
   }
  } else {
   if(i36<1.1036889553070068){
    if(i8<-6.99758529663086e-05){
     s0+=2571.0;
     s1+=346.0;
    } else {
     s0+=665.0;
     s1+=773.0;
    }
   } else {
    if(i42<1.1948275566101074){
     s0+=927.0;
     s1+=158.0;
    } else {
     s0+=7542.0;
     s1+=182.0;
    }
   }
  }
 } else {
  if(i43<-7.585008279420435e-05){
   s0+=151.0;
  } else {
   if(i41<0.9994595646858215){
    s0+=66.0;
   } else {
    if(i53<0.000900476414244622){
     s0+=119.0;
     s1+=59.0;
    } else {
     s0+=131.0;
     s1+=1086.0;
    }
   }
  }
 }
} else {
 if(i41<0.9989262819290161){
  if(i43<-9.945014426193666e-06){
   if(i41<0.9966275691986084){
    s0+=13.0;
   } else {
    s1+=22.0;
   }
  } else {
   s0+=381.0;
  }
 } else {
  if(i17<0.0016388548538088799){
   if(i46<0.048591017723083496){
    if(i33<0.0005418808432295918){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=146.0;
    }
   } else {
    if(i1<0.0009432435035705566){
     s0+=636.0;
     s1+=104.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i2<0.11741328239440918){
    if(i54<0.004158109426498413){
     s0+=219.0;
     s1+=1749.0;
    } else {
     s0+=354.0;
     s1+=38.0;
    }
   } else {
    if(i16<0.9989645481109619){
     s0+=28.0;
     s1+=34.0;
    } else {
     s0+=223.0;
     s1+=11724.0;
    }
   }
  }
 }
}
if(i6<3.832578659057617e-05){
 if(i46<0.0565832257270813){
  if(i35<0.00033134594559669495){
   if(i41<1.0004183053970337){
    if(i67<0.0003062536707147956){
     s0+=45048.0;
     s1+=15.0;
    } else {
     s0+=132.0;
     s1+=43.0;
    }
   } else {
    if(i21<1.007866382598877){
     s0+=2536.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   }
  } else {
   if(i0<0.07770967483520508){
    if(i50<-0.02477172017097473){
     s0+=2260.0;
     s1+=675.0;
    } else {
     s0+=18138.0;
     s1+=1034.0;
    }
   } else {
    if(i8<-0.0003844797611236572){
     s0+=106.0;
     s1+=3.0;
    } else {
     s0+=143.0;
     s1+=2046.0;
    }
   }
  }
 } else {
  if(i44<0.04027354717254639){
   if(i4<0.9966427683830261){
    if(i42<1.489687204360962){
     s0+=656.0;
     s1+=11.0;
    } else {
     s0+=27.0;
     s1+=46.0;
    }
   } else {
    if(i68<-0.00014184560859575868){
     s0+=671.0;
     s1+=748.0;
    } else {
     s0+=707.0;
     s1+=166.0;
    }
   }
  } else {
   if(i18<-0.0007287561893463135){
    if(i9<1.151606798171997){
     s0+=44.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i17<0.00428602984175086){
     s0+=14.0;
    } else {
     s1+=554.0;
    }
   }
  }
 }
} else {
 if(i38<0.00038372131530195475){
  s0+=283.0;
 } else {
  if(i1<0.0009791254997253418){
   if(i44<0.022521905601024628){
    if(i28<1.2392117977142334){
     s0+=11.0;
     s1+=490.0;
    } else {
     s0+=317.0;
     s1+=138.0;
    }
   } else {
    if(i66<0.0017508759628981352){
     s0+=3.0;
     s1+=1034.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  } else {
   if(i4<1.0047475099563599){
    if(i2<0.13692575693130493){
     s0+=57.0;
     s1+=226.0;
    } else {
     s0+=3.0;
     s1+=533.0;
    }
   } else {
    if(i4<1.0064908266067505){
     s0+=14.0;
     s1+=1328.0;
    } else {
     s0+=1.0;
     s1+=7831.0;
    }
   }
  }
 }
}
if(i6<3.832578659057617e-05){
 if(i3<0.07793956995010376){
  if(i0<0.06606307625770569){
   if(i58<0.0015735388733446598){
    if(i47<0.029940439388155937){
     s0+=54965.0;
     s1+=285.0;
    } else {
     s0+=5028.0;
     s1+=312.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=1532.0;
     s1+=597.0;
    } else {
     s0+=4673.0;
     s1+=262.0;
    }
   }
  } else {
   if(i63<0.016425669193267822){
    if(i31<0.05179363489151001){
     s0+=71.0;
     s1+=421.0;
    } else {
     s0+=219.0;
     s1+=66.0;
    }
   } else {
    if(i31<0.04231134057044983){
     s0+=68.0;
     s1+=73.0;
    } else {
     s0+=2172.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i32<1.081458568572998){
   if(i28<1.0835556983947754){
    s0+=189.0;
   } else {
    if(i24<1.003077507019043){
     s0+=2.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  } else {
   if(i43<3.809374447882874e-06){
    if(i37<0.04665803909301758){
     s0+=98.0;
     s1+=2127.0;
    } else {
     s0+=1078.0;
     s1+=1276.0;
    }
   } else {
    if(i11<1.0432071685791016){
     s1+=6.0;
    } else {
     s0+=252.0;
    }
   }
  }
 }
} else {
 if(i19<1.0407118797302246){
  if(i2<0.08671092987060547){
   s0+=302.0;
  } else {
   if(i21<0.9994217157363892){
    s0+=6.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i6<6.371736526489258e-05){
   if(i44<0.009131940081715584){
    if(i36<1.1480928659439087){
     s0+=13.0;
     s1+=183.0;
    } else {
     s0+=201.0;
     s1+=38.0;
    }
   } else {
    if(i3<0.12567472457885742){
     s0+=91.0;
     s1+=367.0;
    } else {
     s0+=12.0;
     s1+=985.0;
    }
   }
  } else {
   if(i2<0.05311158299446106){
    if(i49<0.0006511807441711426){
     s0+=29.0;
     s1+=213.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i40<-0.0005247592926025391){
     s0+=3.0;
    } else {
     s0+=67.0;
     s1+=9782.0;
    }
   }
  }
 }
}
if(i3<0.07831710577011108){
 if(i6<4.2498111724853516e-05){
  if(i9<1.042891263961792){
   if(i25<0.0002499200636520982){
    if(i21<1.0077297687530518){
     s0+=48031.0;
     s1+=87.0;
    } else {
     s0+=95.0;
     s1+=19.0;
    }
   } else {
    if(i28<1.2371783256530762){
     s0+=5042.0;
     s1+=633.0;
    } else {
     s0+=7401.0;
     s1+=29.0;
    }
   }
  } else {
   if(i6<1.233816146850586e-05){
    if(i42<1.103413462638855){
     s0+=2138.0;
     s1+=700.0;
    } else {
     s0+=5163.0;
     s1+=245.0;
    }
   } else {
    if(i57<3.7737167986051645e-06){
     s0+=549.0;
     s1+=28.0;
    } else {
     s0+=406.0;
     s1+=454.0;
    }
   }
  }
 } else {
  if(i12<0.9985787868499756){
   if(i58<0.0072017814964056015){
    s0+=238.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i32<1.2510931491851807){
    if(i42<1.0614044666290283){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=780.0;
    }
   } else {
    if(i48<-0.0019180774688720703){
     s0+=29.0;
     s1+=298.0;
    } else {
     s0+=205.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i41<0.9987826943397522){
  if(i44<0.09248723834753036){
   if(i1<-0.0004937648773193359){
    s0+=423.0;
   } else {
    if(i68<-0.00026936462381854653){
     s1+=4.0;
    } else {
     s0+=56.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i4<1.0015729665756226){
   if(i22<0.024651039391756058){
    if(i31<0.06447157263755798){
     s0+=42.0;
     s1+=461.0;
    } else {
     s0+=814.0;
     s1+=375.0;
    }
   } else {
    if(i46<0.05968695878982544){
     s0+=19.0;
     s1+=1157.0;
    } else {
     s0+=286.0;
     s1+=954.0;
    }
   }
  } else {
   if(i2<0.13283678889274597){
    if(i49<0.021116286516189575){
     s0+=58.0;
     s1+=1333.0;
    } else {
     s0+=96.0;
     s1+=5.0;
    }
   } else {
    if(i0<0.15879777073860168){
     s0+=28.0;
     s1+=754.0;
    } else {
     s0+=3.0;
     s1+=8754.0;
    }
   }
  }
 }
}
if(i3<0.0806303322315216){
 if(i6<4.166364669799805e-05){
  if(i35<0.00031780567951500416){
   if(i15<1.0087370872497559){
    if(i15<1.0075199604034424){
     s0+=47269.0;
     s1+=69.0;
    } else {
     s0+=66.0;
     s1+=16.0;
    }
   } else {
    if(i41<1.0003867149353027){
     s0+=13.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i7<-6.619102350668982e-06){
     s0+=305.0;
     s1+=981.0;
    } else {
     s0+=4202.0;
     s1+=513.0;
    }
   } else {
    if(i50<-0.03974652290344238){
     s0+=1046.0;
     s1+=257.0;
    } else {
     s0+=15986.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i33<0.0004634049255400896){
   s0+=226.0;
  } else {
   if(i39<0.0023778649047017097){
    if(i42<1.2296775579452515){
     s0+=3.0;
     s1+=845.0;
    } else {
     s0+=15.0;
     s1+=4.0;
    }
   } else {
    if(i54<-0.001184999942779541){
     s0+=58.0;
     s1+=279.0;
    } else {
     s0+=200.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i10<0.00036793947219848633){
  if(i14<-1.475214958190918e-05){
   if(i38<0.005441976711153984){
    if(i16<0.9988174438476562){
     s0+=384.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i63<0.04294925928115845){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.006100778467953205){
    if(i57<3.2452000596094877e-05){
     s0+=485.0;
     s1+=274.0;
    } else {
     s0+=465.0;
     s1+=1615.0;
    }
   } else {
    if(i22<0.01519249752163887){
     s0+=57.0;
     s1+=71.0;
    } else {
     s0+=64.0;
     s1+=1933.0;
    }
   }
  }
 } else {
  if(i8<-0.0003827810287475586){
   s0+=12.0;
  } else {
   if(i1<0.000140458345413208){
    if(i57<-4.502754563873168e-06){
     s0+=48.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=150.0;
    }
   } else {
    if(i42<1.0570924282073975){
     s0+=6.0;
    } else {
     s0+=40.0;
     s1+=9772.0;
    }
   }
  }
 }
}
if(i0<0.08319085836410522){
 if(i4<1.0024782419204712){
  if(i25<0.0002863903937395662){
   if(i7<-3.81822137569543e-05){
    if(i21<1.0068730115890503){
     s0+=577.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=68.0;
    }
   } else {
    if(i69<0.0013646793086081743){
     s0+=52343.0;
     s1+=128.0;
    } else {
     s0+=12.0;
     s1+=21.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i32<1.081458568572998){
     s0+=3106.0;
     s1+=187.0;
    } else {
     s0+=754.0;
     s1+=1159.0;
    }
   } else {
    if(i58<0.0066442349925637245){
     s0+=11030.0;
     s1+=301.0;
    } else {
     s0+=1381.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i49<0.007384926080703735){
   if(i53<0.0006476174457930028){
    if(i57<-3.100177491432987e-05){
     s1+=7.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i36<1.1961640119552612){
     s0+=10.0;
     s1+=708.0;
    } else {
     s0+=81.0;
     s1+=177.0;
    }
   }
  } else {
   if(i28<1.175731897354126){
    s1+=5.0;
   } else {
    s0+=82.0;
   }
  }
 }
} else {
 if(i7<-1.429480835213326e-05){
  if(i18<0.00010401010513305664){
   if(i48<0.0043947696685791016){
    if(i57<-4.032330707559595e-06){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=90.0;
     s1+=2494.0;
    }
   } else {
    if(i22<0.036348942667245865){
     s0+=477.0;
     s1+=272.0;
    } else {
     s0+=52.0;
     s1+=1240.0;
    }
   }
  } else {
   if(i36<1.0569010972976685){
    s0+=17.0;
   } else {
    if(i10<0.001422286033630371){
     s0+=50.0;
     s1+=1245.0;
    } else {
     s1+=8352.0;
    }
   }
  }
 } else {
  if(i16<0.9985203742980957){
   s0+=383.0;
  } else {
   if(i31<0.06693395972251892){
    if(i25<0.0002109197957906872){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=214.0;
    }
   } else {
    if(i38<0.004845914430916309){
     s0+=502.0;
     s1+=69.0;
    } else {
     s0+=63.0;
     s1+=149.0;
    }
   }
  }
 }
}
if(i2<0.08522948622703552){
 if(i49<-0.005849778652191162){
  if(i5<0.023276537656784058){
   if(i18<0.0001291036605834961){
    if(i6<2.6404857635498047e-05){
     s0+=2868.0;
     s1+=260.0;
    } else {
     s0+=44.0;
     s1+=102.0;
    }
   } else {
    if(i46<0.007309526205062866){
     s0+=6.0;
     s1+=106.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i41<1.0010170936584473){
    if(i6<3.49879264831543e-05){
     s0+=825.0;
     s1+=409.0;
    } else {
     s0+=9.0;
     s1+=115.0;
    }
   } else {
    if(i8<0.00043523311614990234){
     s0+=18.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i4<1.0024688243865967){
   if(i13<1.007720708847046){
    if(i9<1.0410068035125732){
     s0+=57414.0;
     s1+=374.0;
    } else {
     s0+=7063.0;
     s1+=745.0;
    }
   } else {
    if(i64<0.0006141342455521226){
     s0+=633.0;
     s1+=125.0;
    } else {
     s0+=18.0;
     s1+=91.0;
    }
   }
  } else {
   if(i39<0.0017425364349037409){
    if(i34<0.00031549265258945525){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=423.0;
    }
   } else {
    if(i40<0.0002338886260986328){
     s0+=175.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i20<1.00637948513031){
  if(i16<0.99855637550354){
   if(i7<-3.8750713429180905e-05){
    if(i67<0.00028089387342333794){
     s0+=23.0;
    } else {
     s0+=4.0;
     s1+=22.0;
    }
   } else {
    if(i16<0.9985276460647583){
     s0+=671.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i46<0.05807742476463318){
    if(i2<0.08965519070625305){
     s0+=62.0;
     s1+=150.0;
    } else {
     s0+=28.0;
     s1+=2369.0;
    }
   } else {
    if(i22<0.027916863560676575){
     s0+=867.0;
     s1+=329.0;
    } else {
     s0+=205.0;
     s1+=1630.0;
    }
   }
  }
 } else {
  if(i12<1.000346064567566){
   if(i17<0.0012376576196402311){
    if(i31<0.08528417348861694){
     s1+=21.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i56<0.014536082744598389){
     s0+=1.0;
     s1+=594.0;
    } else {
     s0+=18.0;
     s1+=390.0;
    }
   }
  } else {
   if(i44<0.018580306321382523){
    if(i4<1.001988172531128){
     s0+=14.0;
     s1+=55.0;
    } else {
     s0+=4.0;
     s1+=1557.0;
    }
   } else {
    if(i18<-6.854534149169922e-06){
     s0+=3.0;
     s1+=65.0;
    } else {
     s1+=6842.0;
    }
   }
  }
 }
}
if(i6<3.7610530853271484e-05){
 if(i31<0.06527942419052124){
  if(i3<0.07771864533424377){
   if(i28<1.0850647687911987){
    s0+=38000.0;
   } else {
    if(i34<0.0008605555631220341){
     s0+=7081.0;
     s1+=1518.0;
    } else {
     s0+=23245.0;
     s1+=577.0;
    }
   }
  } else {
   if(i12<0.9934589266777039){
    if(i4<0.9937108755111694){
     s0+=74.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i6<-5.549192428588867e-05){
     s0+=24.0;
     s1+=5.0;
    } else {
     s0+=47.0;
     s1+=1388.0;
    }
   }
  }
 } else {
  if(i3<0.10606038570404053){
   if(i62<-0.01935393735766411){
    if(i56<-0.011372923851013184){
     s1+=3.0;
    } else {
     s0+=513.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.09642720222473145){
     s0+=527.0;
     s1+=70.0;
    } else {
     s0+=104.0;
     s1+=195.0;
    }
   }
  } else {
   if(i7<-2.1154643036425114e-05){
    if(i68<-0.00021639346960000694){
     s0+=41.0;
     s1+=1301.0;
    } else {
     s0+=67.0;
     s1+=201.0;
    }
   } else {
    if(i38<0.005282765254378319){
     s0+=523.0;
     s1+=114.0;
    } else {
     s0+=28.0;
     s1+=148.0;
    }
   }
  }
 }
} else {
 if(i42<1.0646642446517944){
  s0+=310.0;
 } else {
  if(i7<-4.32968299719505e-05){
   if(i10<-0.0006322264671325684){
    if(i19<1.1211035251617432){
     s0+=134.0;
     s1+=106.0;
    } else {
     s0+=57.0;
     s1+=661.0;
    }
   } else {
    if(i59<1.002288818359375){
     s0+=30.0;
     s1+=10333.0;
    } else {
     s0+=27.0;
     s1+=286.0;
    }
   }
  } else {
   if(i18<0.0001347661018371582){
    if(i32<1.2392117977142334){
     s1+=212.0;
    } else {
     s0+=22.0;
     s1+=48.0;
    }
   } else {
    if(i33<0.0010984931141138077){
     s1+=28.0;
    } else {
     s0+=180.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i0<0.08130630850791931){
 if(i23<1.00661039352417){
  if(i69<0.0007893330766819417){
   if(i17<0.004338529892265797){
    if(i19<1.0485899448394775){
     s0+=50692.0;
     s1+=85.0;
    } else {
     s0+=7724.0;
     s1+=492.0;
    }
   } else {
    if(i4<0.9981275796890259){
     s0+=3131.0;
     s1+=39.0;
    } else {
     s0+=296.0;
     s1+=491.0;
    }
   }
  } else {
   if(i30<0.9790520668029785){
    if(i44<0.07140947878360748){
     s0+=4484.0;
     s1+=171.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i28<1.0840110778808594){
     s0+=934.0;
    } else {
     s0+=2055.0;
     s1+=1114.0;
    }
   }
  }
 } else {
  if(i14<1.7821788787841797e-05){
   if(i7<-6.0036556533304974e-05){
    if(i29<0.9621478319168091){
     s0+=1.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i54<-0.0035448968410491943){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=175.0;
    }
   }
  } else {
   if(i21<1.0353600978851318){
    if(i17<0.0012155658332630992){
     s0+=9.0;
    } else {
     s1+=492.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i14<-1.5437602996826172e-05){
  if(i43<-1.0080972970172297e-05){
   if(i17<0.0023161135613918304){
    s0+=5.0;
   } else {
    if(i16<0.9977052211761475){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i16<0.9988715052604675){
    if(i8<-0.0003503859043121338){
     s0+=410.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i19<1.1167151927947998){
     s0+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i1<0.0005220770835876465){
   if(i7<-1.3793662219541147e-05){
    if(i46<0.059477537870407104){
     s0+=43.0;
     s1+=1764.0;
    } else {
     s0+=448.0;
     s1+=1192.0;
    }
   } else {
    if(i31<0.06313502788543701){
     s0+=21.0;
     s1+=204.0;
    } else {
     s0+=687.0;
     s1+=200.0;
    }
   }
  } else {
   if(i12<1.0037031173706055){
    if(i2<0.1693134307861328){
     s0+=93.0;
     s1+=511.0;
    } else {
     s0+=1.0;
     s1+=1530.0;
    }
   } else {
    if(i1<0.0007708072662353516){
     s0+=15.0;
     s1+=296.0;
    } else {
     s0+=18.0;
     s1+=8332.0;
    }
   }
  }
 }
}
if(i26<1.0077468156814575){
 if(i2<0.08502736687660217){
  if(i16<1.0019574165344238){
   if(i9<1.0401114225387573){
    if(i49<-0.004928171634674072){
     s0+=2245.0;
     s1+=230.0;
    } else {
     s0+=55912.0;
     s1+=326.0;
    }
   } else {
    if(i4<0.9978898763656616){
     s0+=4471.0;
     s1+=214.0;
    } else {
     s0+=4351.0;
     s1+=1174.0;
    }
   }
  } else {
   if(i40<0.00036662817001342773){
    if(i50<0.034029990434646606){
     s0+=48.0;
     s1+=399.0;
    } else {
     s0+=34.0;
     s1+=3.0;
    }
   } else {
    if(i7<-0.00011739169713109732){
     s0+=38.0;
     s1+=123.0;
    } else {
     s0+=466.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i12<0.9958319664001465){
   if(i7<-1.920754584716633e-05){
    if(i41<0.9990123510360718){
     s0+=22.0;
    } else {
     s0+=14.0;
     s1+=110.0;
    }
   } else {
    if(i6<-3.8951635360717773e-05){
     s0+=454.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=20.0;
    }
   }
  } else {
   if(i69<0.0015965565107762814){
    if(i17<0.0016075882595032454){
     s0+=257.0;
     s1+=82.0;
    } else {
     s0+=531.0;
     s1+=1585.0;
    }
   } else {
    if(i70<6.172658686409704e-07){
     s0+=61.0;
     s1+=2113.0;
    } else {
     s0+=39.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i1<0.0005166530609130859){
  if(i7<-3.4126071113860235e-05){
   if(i40<-0.00020080804824829102){
    if(i17<0.01217140257358551){
     s0+=66.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i41<1.000239610671997){
     s0+=18.0;
     s1+=911.0;
    } else {
     s0+=166.0;
     s1+=359.0;
    }
   }
  } else {
   if(i33<0.0019413819536566734){
    if(i13<1.0240163803100586){
     s0+=784.0;
     s1+=182.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i4<0.9971571564674377){
     s1+=2.0;
    } else {
     s0+=614.0;
    }
   }
  }
 } else {
  if(i18<0.0002136826515197754){
   if(i2<0.06915277242660522){
    if(i52<1.0090000629425049){
     s0+=50.0;
     s1+=88.0;
    } else {
     s0+=86.0;
     s1+=15.0;
    }
   } else {
    if(i57<-1.9300594431115314e-05){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=54.0;
     s1+=1343.0;
    }
   }
  } else {
   if(i9<1.0341004133224487){
    if(i70<-7.273290066223126e-06){
     s1+=5.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=7980.0;
   }
  }
 }
}
if(i2<0.08241075277328491){
 if(i13<1.007720708847046){
  if(i4<1.0024776458740234){
   if(i19<1.0486011505126953){
    if(i69<0.0007362593896687031){
     s0+=52658.0;
     s1+=82.0;
    } else {
     s0+=2901.0;
     s1+=226.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=2857.0;
     s1+=1044.0;
    } else {
     s0+=9307.0;
     s1+=482.0;
    }
   }
  } else {
   if(i49<0.005674928426742554){
    if(i43<-1.354923369945027e-05){
     s0+=53.0;
     s1+=390.0;
    } else {
     s0+=31.0;
     s1+=14.0;
    }
   } else {
    if(i42<1.1380741596221924){
     s1+=5.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i18<0.00021445751190185547){
   if(i38<0.0011289333924651146){
    if(i20<1.0028808116912842){
     s0+=36.0;
     s1+=21.0;
    } else {
     s0+=22.0;
     s1+=320.0;
    }
   } else {
    if(i8<0.0007359981536865234){
     s0+=953.0;
     s1+=58.0;
    } else {
     s0+=19.0;
     s1+=56.0;
    }
   }
  } else {
   if(i12<1.002321481704712){
    if(i33<0.0016112151788547635){
     s1+=23.0;
    } else {
     s0+=6.0;
    }
   } else {
    s1+=290.0;
   }
  }
 }
} else {
 if(i7<-1.5404797522933222e-05){
  if(i3<0.11249420046806335){
   if(i50<0.04841858148574829){
    if(i52<1.047816514968872){
     s0+=174.0;
     s1+=1974.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.001371369929984212){
     s0+=13.0;
     s1+=54.0;
    } else {
     s0+=342.0;
     s1+=33.0;
    }
   }
  } else {
   if(i38<0.007253425195813179){
    if(i27<0.0038995554205030203){
     s0+=66.0;
     s1+=2389.0;
    } else {
     s0+=168.0;
     s1+=564.0;
    }
   } else {
    if(i36<1.2293211221694946){
     s0+=17.0;
     s1+=525.0;
    } else {
     s1+=8156.0;
    }
   }
  }
 } else {
  if(i14<-1.722574234008789e-05){
   s0+=565.0;
  } else {
   if(i52<1.0092428922653198){
    if(i57<1.1108802027592901e-05){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=80.0;
     s1+=327.0;
    }
   } else {
    if(i17<0.0036900818813592196){
     s0+=642.0;
     s1+=91.0;
    } else {
     s0+=13.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i52<1.0132806301116943){
 if(i3<0.07531154155731201){
  if(i23<1.0049419403076172){
   if(i50<-0.02810928225517273){
    if(i2<0.03222280740737915){
     s0+=2031.0;
     s1+=315.0;
    } else {
     s0+=307.0;
     s1+=412.0;
    }
   } else {
    if(i9<1.0449585914611816){
     s0+=60290.0;
     s1+=719.0;
    } else {
     s0+=4526.0;
     s1+=805.0;
    }
   }
  } else {
   if(i1<0.0005468130111694336){
    if(i42<1.0985562801361084){
     s1+=31.0;
    } else {
     s0+=322.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.00015472207451239228){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=622.0;
    }
   }
  }
 } else {
  if(i8<-0.0003829002380371094){
   if(i53<0.0039873551577329636){
    if(i13<1.0094873905181885){
     s0+=342.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<0.09422910213470459){
    if(i34<0.0003257668577134609){
     s0+=47.0;
     s1+=1.0;
    } else {
     s0+=256.0;
     s1+=584.0;
    }
   } else {
    if(i40<-0.0002988874912261963){
     s0+=5.0;
    } else {
     s0+=51.0;
     s1+=3314.0;
    }
   }
  }
 }
} else {
 if(i4<1.0019210577011108){
  if(i13<1.0107730627059937){
   if(i0<0.08768358826637268){
    if(i35<0.000783562776632607){
     s0+=259.0;
     s1+=69.0;
    } else {
     s0+=1220.0;
     s1+=13.0;
    }
   } else {
    if(i43<-2.1049495444458444e-06){
     s0+=304.0;
     s1+=760.0;
    } else {
     s0+=430.0;
     s1+=69.0;
    }
   }
  } else {
   if(i3<0.10232368111610413){
    if(i17<0.003900400595739484){
     s0+=297.0;
     s1+=24.0;
    } else {
     s0+=14.0;
     s1+=47.0;
    }
   } else {
    if(i7<-1.4610532161896117e-05){
     s0+=66.0;
     s1+=756.0;
    } else {
     s0+=94.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i44<0.012019436806440353){
   if(i28<1.2392117977142334){
    if(i35<0.0023076296783983707){
     s0+=4.0;
     s1+=684.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i1<0.0012903809547424316){
     s0+=206.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=153.0;
    }
   }
  } else {
   if(i0<0.11435666680335999){
    if(i28<1.5603917837142944){
     s0+=10.0;
     s1+=197.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i17<0.0032897922210395336){
     s0+=6.0;
     s1+=85.0;
    } else {
     s0+=7.0;
     s1+=7353.0;
    }
   }
  }
 }
}
if(i10<0.0007721781730651855){
 if(i1<0.0005248188972473145){
  if(i27<0.0003251956368330866){
   if(i3<0.07710269093513489){
    if(i24<1.0095598697662354){
     s0+=56623.0;
     s1+=531.0;
    } else {
     s0+=319.0;
     s1+=104.0;
    }
   } else {
    if(i19<1.0486375093460083){
     s0+=186.0;
     s1+=15.0;
    } else {
     s0+=25.0;
     s1+=231.0;
    }
   }
  } else {
   if(i2<0.08579924702644348){
    if(i39<0.002031044103205204){
     s0+=3507.0;
     s1+=1107.0;
    } else {
     s0+=8024.0;
     s1+=318.0;
    }
   } else {
    if(i16<0.998518705368042){
     s0+=484.0;
     s1+=20.0;
    } else {
     s0+=1004.0;
     s1+=2481.0;
    }
   }
  }
 } else {
  if(i44<0.008031128905713558){
   if(i15<0.9837209582328796){
    if(i28<1.4786540269851685){
     s1+=30.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i68<-0.00010952656884910539){
     s0+=39.0;
     s1+=16.0;
    } else {
     s0+=263.0;
     s1+=1.0;
    }
   }
  } else {
   if(i33<0.009009975008666515){
    if(i18<-9.822845458984375e-05){
     s0+=35.0;
     s1+=492.0;
    } else {
     s0+=1.0;
     s1+=1206.0;
    }
   } else {
    if(i44<0.03315094858407974){
     s0+=131.0;
     s1+=21.0;
    } else {
     s1+=581.0;
    }
   }
  }
 }
} else {
 if(i25<0.00024490192299708724){
  if(i0<0.057951420545578){
   if(i33<0.0006031914963386953){
    s1+=21.0;
   } else {
    s0+=395.0;
   }
  } else {
   if(i15<1.0052673816680908){
    s0+=7.0;
   } else {
    if(i58<0.0026412508450448513){
     s0+=2.0;
     s1+=72.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i8<-0.00029531121253967285){
   s0+=70.0;
  } else {
   if(i7<-4.2801930248970166e-05){
    if(i18<0.00022339820861816406){
     s0+=29.0;
     s1+=1275.0;
    } else {
     s1+=8232.0;
    }
   } else {
    if(i16<1.0007288455963135){
     s0+=17.0;
     s1+=99.0;
    } else {
     s0+=163.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i0<0.08393841981887817){
 if(i10<0.0011519193649291992){
  if(i1<0.0005721151828765869){
   if(i3<0.06155309081077576){
    if(i9<1.0412344932556152){
     s0+=57346.0;
     s1+=490.0;
    } else {
     s0+=7912.0;
     s1+=980.0;
    }
   } else {
    if(i46<0.030908256769180298){
     s0+=51.0;
     s1+=365.0;
    } else {
     s0+=3581.0;
     s1+=333.0;
    }
   }
  } else {
   if(i17<0.004274105187505484){
    if(i71<8.985138265416026e-05){
     s0+=5.0;
     s1+=45.0;
    } else {
     s0+=168.0;
    }
   } else {
    if(i23<1.0017409324645996){
     s0+=114.0;
     s1+=155.0;
    } else {
     s0+=19.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i17<0.0019201633986085653){
   if(i32<1.2156331539154053){
    s1+=18.0;
   } else {
    s0+=96.0;
   }
  } else {
   if(i23<1.0036594867706299){
    if(i39<0.0033529913052916527){
     s1+=4.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i61<1.0001702308654785){
     s0+=2.0;
     s1+=24.0;
    } else {
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i8<-0.00041115283966064453){
  if(i33<0.006805916782468557){
   s0+=422.0;
  } else {
   if(i28<1.5343737602233887){
    s1+=15.0;
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i23<1.001981496810913){
   if(i22<0.024426039308309555){
    if(i17<0.0018976305145770311){
     s0+=422.0;
     s1+=83.0;
    } else {
     s0+=382.0;
     s1+=763.0;
    }
   } else {
    if(i17<0.0013507079565897584){
     s0+=91.0;
     s1+=55.0;
    } else {
     s0+=178.0;
     s1+=3060.0;
    }
   }
  } else {
   if(i2<0.13325956463813782){
    if(i52<1.0465359687805176){
     s0+=47.0;
     s1+=1450.0;
    } else {
     s0+=48.0;
     s1+=2.0;
    }
   } else {
    if(i6<1.1980533599853516e-05){
     s0+=13.0;
     s1+=85.0;
    } else {
     s0+=10.0;
     s1+=8629.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i4<1.002474308013916){
  if(i3<0.07751694321632385){
   if(i58<0.0014981478452682495){
    if(i25<0.0002821942907758057){
     s0+=51718.0;
     s1+=176.0;
    } else {
     s0+=10024.0;
     s1+=718.0;
    }
   } else {
    if(i40<-3.8057565689086914e-05){
     s0+=3021.0;
     s1+=120.0;
    } else {
     s0+=3434.0;
     s1+=837.0;
    }
   }
  } else {
   if(i7<-9.200975000567269e-06){
    if(i8<-0.0003844797611236572){
     s0+=83.0;
     s1+=6.0;
    } else {
     s0+=491.0;
     s1+=1917.0;
    }
   } else {
    if(i31<0.06283926963806152){
     s0+=87.0;
     s1+=101.0;
    } else {
     s0+=789.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i12<1.0034620761871338){
   if(i53<0.0008775032474659383){
    s0+=31.0;
   } else {
    if(i14<5.2809715270996094e-05){
     s0+=33.0;
     s1+=316.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   }
  } else {
   if(i2<0.055925965309143066){
    if(i54<-5.739927291870117e-05){
     s0+=14.0;
     s1+=143.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.007774375379085541){
     s0+=43.0;
     s1+=596.0;
    } else {
     s0+=1.0;
     s1+=1065.0;
    }
   }
  }
 }
} else {
 if(i2<0.08337682485580444){
  if(i42<1.1070735454559326){
   if(i7<-2.2502408683067188e-05){
    s1+=497.0;
   } else {
    if(i14<1.6570091247558594e-05){
     s0+=53.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.0009474754333496094){
    if(i52<0.9958808422088623){
     s0+=97.0;
     s1+=41.0;
    } else {
     s0+=742.0;
     s1+=38.0;
    }
   } else {
    if(i15<1.0237399339675903){
     s1+=99.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i20<1.0071825981140137){
   if(i7<-1.3321568076207768e-05){
    if(i17<0.0027808251325041056){
     s0+=148.0;
     s1+=151.0;
    } else {
     s0+=60.0;
     s1+=1429.0;
    }
   } else {
    if(i5<0.18543776869773865){
     s0+=163.0;
     s1+=31.0;
    } else {
     s0+=29.0;
     s1+=64.0;
    }
   }
  } else {
   if(i16<1.0014917850494385){
    if(i40<7.665157318115234e-05){
     s0+=2.0;
     s1+=1403.0;
    } else {
     s0+=24.0;
     s1+=172.0;
    }
   } else {
    if(i4<1.002945899963379){
     s0+=1.0;
     s1+=30.0;
    } else {
     s1+=7095.0;
    }
   }
  }
 }
}
if(i2<0.0834135115146637){
 if(i6<4.202127456665039e-05){
  if(i27<0.0002956066164188087){
   if(i7<-3.979970279033296e-05){
    if(i4<1.0007588863372803){
     s0+=450.0;
     s1+=35.0;
    } else {
     s0+=64.0;
     s1+=138.0;
    }
   } else {
    if(i25<0.0002878748928196728){
     s0+=51416.0;
     s1+=157.0;
    } else {
     s0+=4181.0;
     s1+=262.0;
    }
   }
  } else {
   if(i18<-0.00018829107284545898){
    if(i62<-0.006646646186709404){
     s0+=5199.0;
     s1+=49.0;
    } else {
     s0+=2138.0;
     s1+=204.0;
    }
   } else {
    if(i61<1.0007177591323853){
     s0+=4824.0;
     s1+=838.0;
    } else {
     s0+=487.0;
     s1+=446.0;
    }
   }
  }
 } else {
  if(i39<0.0004281064902897924){
   s0+=192.0;
  } else {
   if(i36<1.1509525775909424){
    if(i17<0.0010663699358701706){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=587.0;
    }
   } else {
    if(i54<-0.003152996301651001){
     s0+=11.0;
     s1+=236.0;
    } else {
     s0+=224.0;
     s1+=85.0;
    }
   }
  }
 }
} else {
 if(i16<0.998518705368042){
  if(i38<0.02861601486802101){
   if(i34<0.009207659400999546){
    if(i43<-1.0296307664248161e-05){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=675.0;
    }
   } else {
    if(i0<0.10590103268623352){
     s0+=29.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i3<0.1223573386669159){
   if(i49<0.014563053846359253){
    if(i34<0.0004241619899403304){
     s0+=72.0;
     s1+=7.0;
    } else {
     s0+=247.0;
     s1+=2476.0;
    }
   } else {
    if(i20<1.0080550909042358){
     s0+=655.0;
     s1+=78.0;
    } else {
     s0+=14.0;
     s1+=34.0;
    }
   }
  } else {
   if(i34<0.001168235670775175){
    if(i11<1.0838284492492676){
     s1+=115.0;
    } else {
     s0+=158.0;
     s1+=8.0;
    }
   } else {
    if(i63<0.05363810062408447){
     s0+=28.0;
     s1+=9474.0;
    } else {
     s0+=175.0;
     s1+=1746.0;
    }
   }
  }
 }
}
if(i18<0.00011461973190307617){
 if(i22<0.023463577032089233){
  if(i5<0.07106971740722656){
   if(i0<0.07843786478042603){
    if(i4<1.0024776458740234){
     s0+=62458.0;
     s1+=1075.0;
    } else {
     s0+=65.0;
     s1+=163.0;
    }
   } else {
    if(i4<0.997312068939209){
     s0+=110.0;
     s1+=8.0;
    } else {
     s0+=49.0;
     s1+=291.0;
    }
   }
  } else {
   if(i46<0.04748073220252991){
    if(i1<-0.0008523762226104736){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=343.0;
    }
   } else {
    if(i0<0.10916882753372192){
     s0+=1009.0;
     s1+=123.0;
    } else {
     s0+=382.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i2<0.07653090357780457){
   if(i42<1.1955413818359375){
    if(i23<0.993751585483551){
     s0+=230.0;
     s1+=4.0;
    } else {
     s0+=390.0;
     s1+=638.0;
    }
   } else {
    if(i6<2.491474151611328e-05){
     s0+=4780.0;
     s1+=121.0;
    } else {
     s0+=81.0;
     s1+=175.0;
    }
   }
  } else {
   if(i70<1.6618818108327105e-06){
    if(i4<0.9943821430206299){
     s0+=98.0;
     s1+=50.0;
    } else {
     s0+=415.0;
     s1+=3755.0;
    }
   } else {
    s0+=224.0;
   }
  }
 }
} else {
 if(i16<0.9989545345306396){
  s0+=333.0;
 } else {
  if(i27<0.00016546412371098995){
   if(i1<0.0010170340538024902){
    if(i36<1.10398530960083){
     s0+=16.0;
     s1+=23.0;
    } else {
     s0+=288.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i1<0.0009080469608306885){
    if(i33<0.0018584581557661295){
     s0+=11.0;
     s1+=778.0;
    } else {
     s0+=162.0;
     s1+=471.0;
    }
   } else {
    if(i7<-4.3040279706474394e-05){
     s1+=8704.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i3<0.07825765013694763){
 if(i10<0.001141965389251709){
  if(i48<-0.0019116401672363281){
   if(i61<1.0003056526184082){
    if(i0<0.03655803203582764){
     s0+=2083.0;
     s1+=158.0;
    } else {
     s0+=245.0;
     s1+=176.0;
    }
   } else {
    if(i36<1.1792536973953247){
     s0+=138.0;
     s1+=389.0;
    } else {
     s0+=928.0;
     s1+=252.0;
    }
   }
  } else {
   if(i15<1.0072948932647705){
    if(i25<0.00030582514591515064){
     s0+=53129.0;
     s1+=184.0;
    } else {
     s0+=10730.0;
     s1+=932.0;
    }
   } else {
    if(i42<1.1040980815887451){
     s0+=419.0;
     s1+=391.0;
    } else {
     s0+=1485.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i38<0.003050680737942457){
   s1+=558.0;
  } else {
   if(i12<1.005745530128479){
    s0+=131.0;
   } else {
    s1+=89.0;
   }
  }
 }
} else {
 if(i41<0.9989306926727295){
  if(i43<-1.0074065357912332e-05){
   if(i12<0.9945435523986816){
    s0+=12.0;
   } else {
    s1+=22.0;
   }
  } else {
   s0+=436.0;
  }
 } else {
  if(i0<0.1174226701259613){
   if(i62<-0.016291260719299316){
    if(i24<0.970311164855957){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=644.0;
     s1+=74.0;
    }
   } else {
    if(i66<-0.005443117581307888){
     s0+=158.0;
     s1+=59.0;
    } else {
     s0+=198.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i53<0.000311158481054008){
    if(i37<0.07938385009765625){
     s0+=16.0;
     s1+=177.0;
    } else {
     s0+=155.0;
     s1+=27.0;
    }
   } else {
    if(i70<1.1568070021894528e-06){
     s0+=210.0;
     s1+=11713.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i6<3.7729740142822266e-05){
 if(i26<1.007392168045044){
  if(i69<0.0008429422741755843){
   if(i3<0.08110606670379639){
    if(i51<0.008001085370779037){
     s0+=60086.0;
     s1+=669.0;
    } else {
     s0+=1048.0;
     s1+=211.0;
    }
   } else {
    if(i28<1.2371783256530762){
     s0+=242.0;
     s1+=572.0;
    } else {
     s0+=445.0;
     s1+=203.0;
    }
   }
  } else {
   if(i6<-1.8358230590820312e-05){
    if(i9<1.0401138067245483){
     s0+=3786.0;
     s1+=197.0;
    } else {
     s0+=1680.0;
     s1+=532.0;
    }
   } else {
    if(i57<2.486927951395046e-05){
     s0+=946.0;
     s1+=113.0;
    } else {
     s0+=698.0;
     s1+=1320.0;
    }
   }
  }
 } else {
  if(i71<0.00011050242756027728){
   if(i7<-3.35711520165205e-05){
    if(i32<1.1819204092025757){
     s0+=34.0;
     s1+=588.0;
    } else {
     s0+=194.0;
     s1+=179.0;
    }
   } else {
    if(i68<-0.0002879840903915465){
     s0+=1248.0;
     s1+=103.0;
    } else {
     s0+=57.0;
     s1+=58.0;
    }
   }
  } else {
   if(i39<0.002255038358271122){
    if(i15<1.0071961879730225){
     s0+=2.0;
     s1+=9.0;
    } else {
     s1+=330.0;
    }
   } else {
    if(i64<0.000565775204449892){
     s0+=109.0;
     s1+=48.0;
    } else {
     s1+=305.0;
    }
   }
  }
 }
} else {
 if(i4<1.0006616115570068){
  if(i26<0.9672725796699524){
   if(i13<0.9876587390899658){
    s1+=7.0;
   } else {
    s0+=2.0;
   }
  } else {
   s0+=319.0;
  }
 } else {
  if(i0<0.060032784938812256){
   if(i54<-0.0015619397163391113){
    if(i48<0.0008092522621154785){
     s0+=21.0;
     s1+=363.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i32<1.2314128875732422){
     s0+=9.0;
     s1+=59.0;
    } else {
     s0+=169.0;
     s1+=27.0;
    }
   }
  } else {
   if(i10<3.5822391510009766e-05){
    if(i52<1.0018482208251953){
     s0+=6.0;
     s1+=670.0;
    } else {
     s0+=139.0;
     s1+=590.0;
    }
   } else {
    if(i8<0.0004995465278625488){
     s0+=52.0;
     s1+=1253.0;
    } else {
     s0+=4.0;
     s1+=8535.0;
    }
   }
  }
 }
}
if(i3<0.0772174596786499){
 if(i4<1.0024776458740234){
  if(i42<1.0598037242889404){
   s0+=37009.0;
  } else {
   if(i28<1.100754976272583){
    if(i17<0.004120704717934132){
     s0+=5279.0;
     s1+=1059.0;
    } else {
     s1+=442.0;
    }
   } else {
    if(i54<-0.0028969645500183105){
     s0+=1182.0;
     s1+=284.0;
    } else {
     s0+=25580.0;
     s1+=324.0;
    }
   }
  }
 } else {
  if(i14<1.9371509552001953e-05){
   if(i7<-5.227874135016464e-05){
    if(i36<1.1986849308013916){
     s1+=82.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i70<-4.601574346452253e-06){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=114.0;
     s1+=2.0;
    }
   }
  } else {
   if(i27<0.00016222380509134382){
    if(i53<0.0014468568842858076){
     s0+=32.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i59<1.0021260976791382){
     s0+=38.0;
     s1+=919.0;
    } else {
     s0+=49.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3548056813306175e-05){
  if(i0<0.09898978471755981){
   if(i63<0.028157413005828857){
    if(i49<0.01470869779586792){
     s0+=18.0;
     s1+=722.0;
    } else {
     s0+=130.0;
     s1+=10.0;
    }
   } else {
    if(i49<0.004466533660888672){
     s0+=48.0;
     s1+=111.0;
    } else {
     s0+=237.0;
     s1+=17.0;
    }
   }
  } else {
   if(i4<1.0023627281188965){
    if(i17<0.001678622793406248){
     s0+=98.0;
     s1+=117.0;
    } else {
     s0+=207.0;
     s1+=2673.0;
    }
   } else {
    if(i43<-1.2703625543508679e-05){
     s0+=38.0;
     s1+=9715.0;
    } else {
     s0+=12.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i29<1.0350282192230225){
   if(i6<-5.510449409484863e-05){
    if(i39<0.007376667112112045){
     s0+=100.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i3<0.08021461963653564){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=152.0;
    }
   }
  } else {
   if(i12<1.0032312870025635){
    if(i46<0.047059059143066406){
     s0+=17.0;
     s1+=74.0;
    } else {
     s0+=966.0;
     s1+=115.0;
    }
   } else {
    s1+=37.0;
   }
  }
 }
}
if(i3<0.07786303758621216){
 if(i16<1.0018703937530518){
  if(i19<1.0486011505126953){
   if(i48<-0.0017419755458831787){
    if(i0<0.03069019317626953){
     s0+=693.0;
     s1+=59.0;
    } else {
     s0+=71.0;
     s1+=42.0;
    }
   } else {
    if(i26<1.0086711645126343){
     s0+=55083.0;
     s1+=229.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i36<1.1034480333328247){
    if(i24<0.9898950457572937){
     s0+=241.0;
     s1+=500.0;
    } else {
     s0+=3661.0;
     s1+=1002.0;
    }
   } else {
    if(i54<-0.004173487424850464){
     s0+=709.0;
     s1+=161.0;
    } else {
     s0+=8227.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i49<0.007948458194732666){
   if(i59<1.0022393465042114){
    if(i23<0.9982965588569641){
     s0+=94.0;
     s1+=95.0;
    } else {
     s0+=46.0;
     s1+=885.0;
    }
   } else {
    if(i50<-0.06787756085395813){
     s0+=2.0;
     s1+=34.0;
    } else {
     s0+=241.0;
     s1+=49.0;
    }
   }
  } else {
   if(i65<-5.691184924216941e-06){
    s1+=12.0;
   } else {
    if(i33<0.00369219109416008){
     s1+=2.0;
    } else {
     s0+=310.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i0<0.09900161623954773){
  if(i39<0.0017428704304620624){
   if(i63<0.032235145568847656){
    if(i33<0.0004234827938489616){
     s0+=18.0;
    } else {
     s0+=41.0;
     s1+=626.0;
    }
   } else {
    if(i23<1.0014119148254395){
     s0+=216.0;
     s1+=44.0;
    } else {
     s0+=6.0;
     s1+=23.0;
    }
   }
  } else {
   if(i37<0.03171268105506897){
    if(i33<0.0009093239204958081){
     s0+=16.0;
    } else {
     s0+=11.0;
     s1+=259.0;
    }
   } else {
    if(i14<4.5418739318847656e-05){
     s0+=525.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i7<-1.3722745279665105e-05){
   if(i10<0.0007562041282653809){
    if(i22<0.021613527089357376){
     s0+=213.0;
     s1+=502.0;
    } else {
     s0+=123.0;
     s1+=3200.0;
    }
   } else {
    if(i3<0.13136076927185059){
     s0+=18.0;
     s1+=870.0;
    } else {
     s0+=1.0;
     s1+=7926.0;
    }
   }
  } else {
   if(i46<0.07218027114868164){
    if(i16<0.9979137778282166){
     s0+=54.0;
    } else {
     s0+=9.0;
     s1+=219.0;
    }
   } else {
    if(i42<1.255998969078064){
     s0+=297.0;
     s1+=87.0;
    } else {
     s0+=263.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i3<0.07771864533424377){
 if(i4<1.0024913549423218){
  if(i22<0.016540851444005966){
   if(i58<0.0015958354342728853){
    if(i67<-0.00010349028161726892){
     s0+=67.0;
     s1+=56.0;
    } else {
     s0+=55961.0;
     s1+=389.0;
    }
   } else {
    if(i3<0.03638753294944763){
     s0+=2293.0;
     s1+=175.0;
    } else {
     s0+=916.0;
     s1+=208.0;
    }
   }
  } else {
   if(i23<0.9946690797805786){
    if(i58<0.013721847906708717){
     s0+=6972.0;
     s1+=103.0;
    } else {
     s0+=190.0;
     s1+=56.0;
    }
   } else {
    if(i42<1.1152933835983276){
     s0+=1013.0;
     s1+=937.0;
    } else {
     s0+=1578.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i53<0.0009022338199429214){
   if(i28<1.2392117977142334){
    if(i71<0.00019742513541132212){
     s1+=65.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i9<1.2073187828063965){
     s0+=158.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i62<-0.014540962874889374){
    if(i44<0.019962746649980545){
     s0+=38.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i70<-3.777696292672772e-06){
     s0+=54.0;
     s1+=1045.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i44<0.02408599853515625){
  if(i49<0.01602572202682495){
   if(i4<0.9965639114379883){
    if(i67<0.0008120805723592639){
     s0+=279.0;
     s1+=5.0;
    } else {
     s0+=22.0;
     s1+=37.0;
    }
   } else {
    if(i10<0.0005529820919036865){
     s0+=337.0;
     s1+=1324.0;
    } else {
     s0+=19.0;
     s1+=2186.0;
    }
   }
  } else {
   if(i17<0.010045239701867104){
    if(i0<0.13196733593940735){
     s0+=636.0;
     s1+=37.0;
    } else {
     s0+=261.0;
     s1+=298.0;
    }
   } else {
    if(i12<1.0024099349975586){
     s0+=7.0;
    } else {
     s1+=116.0;
    }
   }
  }
 } else {
  if(i7<-2.5517824724374805e-06){
   if(i20<0.9828639030456543){
    if(i15<0.9808900952339172){
     s0+=4.0;
     s1+=220.0;
    } else {
     s0+=34.0;
     s1+=27.0;
    }
   } else {
    if(i64<0.00020544262952171266){
     s0+=40.0;
     s1+=309.0;
    } else {
     s0+=25.0;
     s1+=9212.0;
    }
   }
  } else {
   if(i37<0.048811882734298706){
    if(i28<1.255998969078064){
     s0+=2.0;
     s1+=42.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i16<1.0017399787902832){
     s0+=201.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
}
if(i3<0.07862180471420288){
 if(i48<-0.0015400052070617676){
  if(i8<0.0005255341529846191){
   if(i0<0.04221826791763306){
    if(i6<-2.2351741790771484e-05){
     s0+=2124.0;
     s1+=97.0;
    } else {
     s0+=1395.0;
     s1+=324.0;
    }
   } else {
    if(i27<0.00029221177101135254){
     s0+=163.0;
     s1+=14.0;
    } else {
     s0+=214.0;
     s1+=299.0;
    }
   }
  } else {
   if(i57<0.00016304528980981559){
    if(i28<1.6016557216644287){
     s0+=11.0;
     s1+=570.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   } else {
    if(i59<1.0016701221466064){
     s0+=33.0;
     s1+=97.0;
    } else {
     s0+=89.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i21<1.0068819522857666){
   if(i4<1.0029221773147583){
    if(i25<0.0002892411721404642){
     s0+=52055.0;
     s1+=176.0;
    } else {
     s0+=10933.0;
     s1+=782.0;
    }
   } else {
    if(i27<0.00013940336066298187){
     s0+=20.0;
    } else {
     s0+=30.0;
     s1+=121.0;
    }
   }
  } else {
   if(i28<1.1039612293243408){
    if(i70<-3.6227904729457805e-06){
     s0+=28.0;
     s1+=509.0;
    } else {
     s0+=552.0;
     s1+=149.0;
    }
   } else {
    if(i12<1.0054715871810913){
     s0+=1791.0;
     s1+=108.0;
    } else {
     s0+=14.0;
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i21<1.0102211236953735){
  if(i41<0.998878538608551){
   if(i34<0.021091105416417122){
    if(i70<-2.4194796424126253e-06){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=343.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i7<-4.147947038291022e-06){
    if(i67<0.0006559729808941483){
     s0+=378.0;
     s1+=1269.0;
    } else {
     s0+=119.0;
     s1+=2612.0;
    }
   } else {
    if(i49<-0.0012265443801879883){
     s0+=12.0;
     s1+=59.0;
    } else {
     s0+=336.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i1<0.00015017390251159668){
   if(i41<0.9988265037536621){
    if(i64<0.0005982246366329491){
     s0+=64.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i57<2.8463282433222048e-05){
     s0+=244.0;
     s1+=177.0;
    } else {
     s0+=46.0;
     s1+=429.0;
    }
   }
  } else {
   if(i7<-4.2115912947338074e-05){
    if(i30<1.0040171146392822){
     s0+=34.0;
     s1+=512.0;
    } else {
     s0+=4.0;
     s1+=8370.0;
    }
   } else {
    if(i36<1.1089794635772705){
     s0+=1.0;
     s1+=159.0;
    } else {
     s0+=144.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i20<1.0060044527053833){
 if(i17<0.005040166899561882){
  if(i19<1.0494916439056396){
   if(i60<-0.0014071464538574219){
    if(i5<0.039359986782073975){
     s0+=1101.0;
     s1+=129.0;
    } else {
     s0+=132.0;
     s1+=92.0;
    }
   } else {
    if(i9<1.0406912565231323){
     s0+=50112.0;
     s1+=75.0;
    } else {
     s0+=2560.0;
     s1+=86.0;
    }
   }
  } else {
   if(i3<0.06656432151794434){
    if(i13<0.9921956062316895){
     s0+=1179.0;
     s1+=379.0;
    } else {
     s0+=8211.0;
     s1+=451.0;
    }
   } else {
    if(i62<-0.020591430366039276){
     s0+=1031.0;
     s1+=201.0;
    } else {
     s0+=776.0;
     s1+=1503.0;
    }
   }
  }
 } else {
  if(i6<-1.2159347534179688e-05){
   if(i2<0.08682945370674133){
    if(i1<-0.0005633234977722168){
     s0+=3679.0;
     s1+=45.0;
    } else {
     s0+=508.0;
     s1+=90.0;
    }
   } else {
    if(i63<0.039192378520965576){
     s0+=44.0;
     s1+=314.0;
    } else {
     s0+=80.0;
     s1+=55.0;
    }
   }
  } else {
   if(i5<0.026086896657943726){
    if(i44<0.04233532026410103){
     s0+=358.0;
     s1+=78.0;
    } else {
     s0+=6.0;
     s1+=78.0;
    }
   } else {
    if(i68<-0.0001318583672400564){
     s0+=87.0;
     s1+=2565.0;
    } else {
     s0+=332.0;
     s1+=702.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022565387189388275){
  if(i36<1.0862454175949097){
   s1+=238.0;
  } else {
   if(i10<0.0025716423988342285){
    if(i7<-6.24216627329588e-05){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=693.0;
     s1+=2.0;
    }
   } else {
    s1+=102.0;
   }
  }
 } else {
  if(i70<8.776988806857844e-07){
   if(i18<0.00012302398681640625){
    if(i7<-2.364889223827049e-05){
     s0+=43.0;
     s1+=719.0;
    } else {
     s0+=30.0;
     s1+=20.0;
    }
   } else {
    if(i43<-9.258778845833149e-06){
     s1+=9099.0;
    } else {
     s0+=6.0;
     s1+=227.0;
    }
   }
  } else {
   s0+=24.0;
  }
 }
}
if(i1<0.0005481839179992676){
 if(i19<1.0494916439056396){
  if(i0<0.08216655254364014){
   if(i60<-0.0012906789779663086){
    if(i23<0.9942051768302917){
     s0+=1142.0;
     s1+=5.0;
    } else {
     s0+=778.0;
     s1+=234.0;
    }
   } else {
    if(i30<1.0086534023284912){
     s0+=54075.0;
     s1+=141.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i42<1.0670123100280762){
    s0+=118.0;
   } else {
    if(i23<0.9938782453536987){
     s0+=62.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i31<0.05733028054237366){
   if(i2<0.07553297281265259){
    if(i42<1.103413462638855){
     s0+=2496.0;
     s1+=1005.0;
    } else {
     s0+=9299.0;
     s1+=400.0;
    }
   } else {
    if(i0<0.07548266649246216){
     s0+=158.0;
     s1+=32.0;
    } else {
     s0+=66.0;
     s1+=1340.0;
    }
   }
  } else {
   if(i37<0.036302655935287476){
    if(i0<0.08202600479125977){
     s0+=118.0;
     s1+=29.0;
    } else {
     s0+=24.0;
     s1+=742.0;
    }
   } else {
    if(i7<-2.2884989448357373e-05){
     s0+=555.0;
     s1+=1286.0;
    } else {
     s0+=1448.0;
     s1+=275.0;
    }
   }
  }
 }
} else {
 if(i42<1.0624027252197266){
  s0+=192.0;
 } else {
  if(i3<0.05568322539329529){
   if(i36<1.1353518962860107){
    if(i22<0.0606604740023613){
     s1+=328.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.014347836375236511){
     s0+=224.0;
     s1+=33.0;
    } else {
     s0+=16.0;
     s1+=171.0;
    }
   }
  } else {
   if(i6<5.751848220825195e-05){
    if(i44<0.012516994029283524){
     s0+=102.0;
     s1+=212.0;
    } else {
     s0+=30.0;
     s1+=953.0;
    }
   } else {
    if(i17<0.007300524041056633){
     s0+=51.0;
     s1+=1993.0;
    } else {
     s0+=7.0;
     s1+=8026.0;
    }
   }
  }
 }
}
if(i1<0.0005484223365783691){
 if(i47<0.030410489067435265){
  if(i11<1.0452215671539307){
   if(i13<1.0103366374969482){
    if(i19<1.0451585054397583){
     s0+=50196.0;
     s1+=161.0;
    } else {
     s0+=7094.0;
     s1+=569.0;
    }
   } else {
    s1+=75.0;
   }
  } else {
   if(i0<0.07499533891677856){
    if(i24<0.9774914979934692){
     s0+=14.0;
     s1+=28.0;
    } else {
     s0+=2215.0;
     s1+=174.0;
    }
   } else {
    if(i37<0.04684191942214966){
     s0+=85.0;
     s1+=562.0;
    } else {
     s0+=482.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i5<0.07100948691368103){
   if(i38<0.0011104987934231758){
    if(i36<1.0589735507965088){
     s0+=1173.0;
     s1+=21.0;
    } else {
     s0+=551.0;
     s1+=897.0;
    }
   } else {
    if(i28<1.2371783256530762){
     s0+=949.0;
     s1+=303.0;
    } else {
     s0+=6765.0;
     s1+=246.0;
    }
   }
  } else {
   if(i44<0.04016807675361633){
    if(i37<0.049720317125320435){
     s0+=185.0;
     s1+=895.0;
    } else {
     s0+=889.0;
     s1+=467.0;
    }
   } else {
    if(i17<0.005186473019421101){
     s0+=18.0;
    } else {
     s0+=5.0;
     s1+=845.0;
    }
   }
  }
 }
} else {
 if(i38<0.00034034927375614643){
  s0+=176.0;
 } else {
  if(i7<-4.3041054595960304e-05){
   if(i59<1.0016295909881592){
    if(i68<-0.0003421563596930355){
     s0+=11.0;
     s1+=8353.0;
    } else {
     s0+=110.0;
     s1+=2531.0;
    }
   } else {
    if(i64<0.0005452601471915841){
     s0+=54.0;
    } else {
     s0+=59.0;
     s1+=520.0;
    }
   }
  } else {
   if(i6<6.401538848876953e-05){
    if(i34<0.002265042159706354){
     s0+=5.0;
     s1+=108.0;
    } else {
     s0+=135.0;
     s1+=32.0;
    }
   } else {
    if(i2<0.055672258138656616){
     s0+=2.0;
     s1+=11.0;
    } else {
     s1+=87.0;
    }
   }
  }
 }
}
if(i5<0.07235640287399292){
 if(i65<-7.972013918333687e-06){
  if(i8<0.0005826354026794434){
   s0+=1.0;
  } else {
   s1+=888.0;
  }
 } else {
  if(i3<0.0774390697479248){
   if(i1<0.000626295804977417){
    if(i9<1.0410068035125732){
     s0+=59238.0;
     s1+=583.0;
    } else {
     s0+=9438.0;
     s1+=1426.0;
    }
   } else {
    if(i71<0.00013946533726993948){
     s0+=125.0;
     s1+=585.0;
    } else {
     s0+=144.0;
     s1+=72.0;
    }
   }
  } else {
   if(i1<-0.0007181465625762939){
    if(i11<1.0868099927902222){
     s0+=98.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i63<0.0250546932220459){
     s0+=12.0;
     s1+=949.0;
    } else {
     s0+=27.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i7<-2.325823879800737e-05){
  if(i20<1.0073598623275757){
   if(i47<0.05599299073219299){
    if(i62<-0.015882693231105804){
     s0+=329.0;
     s1+=179.0;
    } else {
     s0+=127.0;
     s1+=662.0;
    }
   } else {
    if(i19<1.0665397644042969){
     s0+=39.0;
     s1+=39.0;
    } else {
     s0+=162.0;
     s1+=2757.0;
    }
   }
  } else {
   if(i4<1.0038797855377197){
    if(i55<1.000417709350586){
     s0+=18.0;
     s1+=850.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=7389.0;
   }
  }
 } else {
  if(i22<0.024513404816389084){
   if(i16<1.0015599727630615){
    if(i54<-0.003232717514038086){
     s0+=5.0;
     s1+=14.0;
    } else {
     s0+=990.0;
     s1+=133.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i23<0.9920921921730042){
    if(i61<0.9981213808059692){
     s0+=174.0;
    } else {
     s0+=32.0;
     s1+=47.0;
    }
   } else {
    if(i32<1.253311276435852){
     s0+=95.0;
     s1+=350.0;
    } else {
     s0+=129.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i9<1.05519437789917){
 if(i11<1.0410068035125732){
  if(i1<0.0005986690521240234){
   if(i2<0.08219277858734131){
    if(i56<-0.0020244717597961426){
     s0+=4609.0;
     s1+=573.0;
    } else {
     s0+=56842.0;
     s1+=336.0;
    }
   } else {
    if(i55<0.9994641542434692){
     s0+=276.0;
     s1+=2.0;
    } else {
     s0+=188.0;
     s1+=266.0;
    }
   }
  } else {
   if(i27<0.00015630078269168735){
    if(i14<3.0428171157836914e-05){
     s0+=87.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i55<0.9975473284721375){
     s0+=32.0;
    } else {
     s0+=17.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i2<0.08003434538841248){
   if(i4<1.0011388063430786){
    if(i7<-2.6290974346920848e-05){
     s0+=221.0;
     s1+=91.0;
    } else {
     s0+=1817.0;
     s1+=101.0;
    }
   } else {
    if(i35<0.0001896792819024995){
     s0+=36.0;
    } else {
     s0+=31.0;
     s1+=142.0;
    }
   }
  } else {
   if(i14<-4.76837158203125e-06){
    if(i43<-4.4077464735892136e-06){
     s0+=14.0;
     s1+=23.0;
    } else {
     s0+=82.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.07991951704025269){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=61.0;
     s1+=472.0;
    }
   }
  }
 }
} else {
 if(i10<0.000781714916229248){
  if(i0<0.09232622385025024){
   if(i22<0.0272025428712368){
    if(i32<1.1037919521331787){
     s0+=959.0;
     s1+=390.0;
    } else {
     s0+=3721.0;
     s1+=255.0;
    }
   } else {
    if(i23<0.9946249723434448){
     s0+=493.0;
     s1+=94.0;
    } else {
     s0+=311.0;
     s1+=572.0;
    }
   }
  } else {
   if(i57<3.651745282695629e-05){
    if(i46<0.06760099530220032){
     s0+=20.0;
     s1+=326.0;
    } else {
     s0+=458.0;
     s1+=189.0;
    }
   } else {
    if(i8<-0.0004031956195831299){
     s0+=207.0;
     s1+=5.0;
    } else {
     s0+=369.0;
     s1+=3343.0;
    }
   }
  }
 } else {
  if(i7<-4.330327283241786e-05){
   if(i4<0.9992879629135132){
    s0+=16.0;
   } else {
    if(i2<0.061252593994140625){
     s0+=20.0;
     s1+=162.0;
    } else {
     s1+=9431.0;
    }
   }
  } else {
   if(i34<0.0010945871472358704){
    s1+=71.0;
   } else {
    if(i11<1.1730718612670898){
     s0+=164.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i1<0.0005484223365783691){
 if(i0<0.08023607730865479){
  if(i27<0.00029290776001289487){
   if(i56<-0.004000872373580933){
    if(i6<-3.8743019104003906e-07){
     s0+=108.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=65.0;
    }
   } else {
    if(i7<-3.9984566683415323e-05){
     s0+=589.0;
     s1+=139.0;
    } else {
     s0+=55231.0;
     s1+=302.0;
    }
   }
  } else {
   if(i1<-0.00030747056007385254){
    if(i42<1.1823735237121582){
     s0+=2578.0;
     s1+=310.0;
    } else {
     s0+=6154.0;
     s1+=68.0;
    }
   } else {
    if(i40<-3.376603126525879e-05){
     s0+=1194.0;
     s1+=33.0;
    } else {
     s0+=2986.0;
     s1+=1033.0;
    }
   }
  }
 } else {
  if(i41<0.9989378452301025){
   if(i35<0.03967240825295448){
    if(i14<-1.7374753952026367e-05){
     s0+=369.0;
    } else {
     s0+=72.0;
     s1+=6.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i62<-0.01860462687909603){
    if(i22<0.04495741426944733){
     s0+=784.0;
     s1+=297.0;
    } else {
     s0+=63.0;
     s1+=740.0;
    }
   } else {
    if(i6<-6.16908073425293e-05){
     s0+=77.0;
     s1+=44.0;
    } else {
     s0+=332.0;
     s1+=2434.0;
    }
   }
  }
 }
} else {
 if(i35<0.0002465705038048327){
  if(i21<1.0074830055236816){
   s0+=175.0;
  } else {
   if(i53<0.0008256227010861039){
    s0+=2.0;
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i4<1.0041769742965698){
   if(i27<0.00020562048302963376){
    if(i36<1.1333069801330566){
     s1+=26.0;
    } else {
     s0+=77.0;
     s1+=3.0;
    }
   } else {
    if(i57<-9.056160706677474e-06){
     s0+=89.0;
     s1+=193.0;
    } else {
     s0+=198.0;
     s1+=1726.0;
    }
   }
  } else {
   if(i30<0.9942761659622192){
    if(i17<0.010702711530029774){
     s0+=27.0;
     s1+=150.0;
    } else {
     s0+=4.0;
     s1+=587.0;
    }
   } else {
    if(i18<-1.3113021850585938e-06){
     s0+=5.0;
     s1+=176.0;
    } else {
     s1+=8760.0;
    }
   }
  }
 }
}
if(i6<3.701448440551758e-05){
 if(i3<0.07994630932807922){
  if(i9<1.0410068035125732){
   if(i0<0.0840393602848053){
    if(i49<-0.004006475210189819){
     s0+=3339.0;
     s1+=277.0;
    } else {
     s0+=55974.0;
     s1+=299.0;
    }
   } else {
    if(i19<1.044049859046936){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  } else {
   if(i22<0.016553467139601707){
    if(i67<0.0003877293784171343){
     s0+=6291.0;
     s1+=376.0;
    } else {
     s0+=838.0;
     s1+=204.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=307.0;
     s1+=690.0;
    } else {
     s0+=2145.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i63<0.03480863571166992){
   if(i6<-5.772709846496582e-05){
    if(i38<0.006480327341705561){
     s0+=128.0;
    } else {
     s0+=5.0;
     s1+=54.0;
    }
   } else {
    if(i37<0.04747551679611206){
     s0+=68.0;
     s1+=1957.0;
    } else {
     s0+=312.0;
     s1+=469.0;
    }
   }
  } else {
   if(i44<0.04016807675361633){
    if(i66<-0.004392307251691818){
     s0+=710.0;
     s1+=180.0;
    } else {
     s0+=266.0;
     s1+=299.0;
    }
   } else {
    if(i20<0.9720011949539185){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=288.0;
    }
   }
  }
 }
} else {
 if(i36<1.0590304136276245){
  s0+=318.0;
 } else {
  if(i10<0.0014188885688781738){
   if(i64<0.00047144474228844047){
    if(i22<0.027679281309247017){
     s0+=253.0;
     s1+=237.0;
    } else {
     s0+=36.0;
     s1+=531.0;
    }
   } else {
    if(i59<1.0044679641723633){
     s0+=90.0;
     s1+=2539.0;
    } else {
     s0+=37.0;
     s1+=42.0;
    }
   }
  } else {
   if(i27<0.0001385772047797218){
    if(i64<0.00039135132101364434){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<1.0072652101516724){
     s0+=1.0;
     s1+=138.0;
    } else {
     s1+=8152.0;
    }
   }
  }
 }
}
if(i7<-6.217417831066996e-05){
 if(i57<0.0002523253788240254){
  if(i1<-0.00014504790306091309){
   if(i16<0.9985373020172119){
    if(i25<0.04226931557059288){
     s0+=183.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i21<0.9352700114250183){
     s0+=63.0;
     s1+=7.0;
    } else {
     s0+=64.0;
     s1+=214.0;
    }
   }
  } else {
   if(i6<3.11732292175293e-05){
    if(i11<1.0176782608032227){
     s0+=67.0;
     s1+=2.0;
    } else {
     s0+=85.0;
     s1+=747.0;
    }
   } else {
    if(i59<1.000759482383728){
     s0+=78.0;
     s1+=9707.0;
    } else {
     s0+=104.0;
     s1+=1116.0;
    }
   }
  }
 } else {
  if(i17<0.020136401057243347){
   if(i31<0.09621456265449524){
    if(i44<0.04665765166282654){
     s0+=839.0;
     s1+=14.0;
    } else {
     s0+=26.0;
     s1+=17.0;
    }
   } else {
    if(i19<1.1547293663024902){
     s0+=8.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i21<0.8431713581085205){
    s0+=21.0;
   } else {
    if(i1<-0.00015723705291748047){
     s0+=6.0;
    } else {
     s1+=293.0;
    }
   }
  }
 }
} else {
 if(i22<0.017906583845615387){
  if(i20<1.0046993494033813){
   if(i19<1.0495158433914185){
    if(i56<-0.0022396743297576904){
     s0+=1001.0;
     s1+=164.0;
    } else {
     s0+=50547.0;
     s1+=83.0;
    }
   } else {
    if(i24<0.9887616634368896){
     s0+=1028.0;
     s1+=376.0;
    } else {
     s0+=7718.0;
     s1+=443.0;
    }
   }
  } else {
   if(i64<0.0005734083242714405){
    if(i36<1.0862454175949097){
     s0+=28.0;
     s1+=297.0;
    } else {
     s0+=776.0;
     s1+=53.0;
    }
   } else {
    s1+=229.0;
   }
  }
 } else {
  if(i30<0.9791719317436218){
   if(i6<8.404254913330078e-06){
    if(i17<0.014842426404356956){
     s0+=4194.0;
     s1+=150.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   } else {
    if(i56<-0.02506735920906067){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=149.0;
    }
   }
  } else {
   if(i23<0.9936614036560059){
    if(i45<0.07185092568397522){
     s0+=1587.0;
     s1+=15.0;
    } else {
     s0+=515.0;
     s1+=205.0;
    }
   } else {
    if(i44<0.012384212575852871){
     s0+=1723.0;
     s1+=751.0;
    } else {
     s0+=536.0;
     s1+=1899.0;
    }
   }
  }
 }
}
if(i10<0.0008074641227722168){
 if(i0<0.08270066976547241){
  if(i9<1.0436501502990723){
   if(i4<1.0025181770324707){
    if(i25<0.0002735075249802321){
     s0+=49967.0;
     s1+=150.0;
    } else {
     s0+=10855.0;
     s1+=620.0;
    }
   } else {
    if(i41<1.000863790512085){
     s0+=5.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i12<1.000558614730835){
    if(i3<0.06110566854476929){
     s0+=5718.0;
     s1+=501.0;
    } else {
     s0+=970.0;
     s1+=327.0;
    }
   } else {
    if(i6<3.457069396972656e-05){
     s0+=1086.0;
     s1+=485.0;
    } else {
     s0+=135.0;
     s1+=387.0;
    }
   }
  }
 } else {
  if(i14<-1.7344951629638672e-05){
   if(i43<-1.0808560546138324e-05){
    if(i26<0.9826464056968689){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=412.0;
   }
  } else {
   if(i63<0.030609607696533203){
    if(i46<0.05677419900894165){
     s0+=18.0;
     s1+=2429.0;
    } else {
     s0+=303.0;
     s1+=1104.0;
    }
   } else {
    if(i68<-0.00021990083041600883){
     s0+=280.0;
     s1+=912.0;
    } else {
     s0+=633.0;
     s1+=344.0;
    }
   }
  }
 }
} else {
 if(i18<0.00021415948867797852){
  if(i53<0.0015481477603316307){
   if(i17<0.0021495954133570194){
    if(i71<3.91358116758056e-05){
     s0+=5.0;
     s1+=31.0;
    } else {
     s0+=453.0;
     s1+=23.0;
    }
   } else {
    if(i13<1.0075643062591553){
     s0+=120.0;
     s1+=33.0;
    } else {
     s0+=46.0;
     s1+=328.0;
    }
   }
  } else {
   if(i16<0.9989374876022339){
    s0+=5.0;
   } else {
    s1+=876.0;
   }
  }
 } else {
  if(i19<1.0481926202774048){
   s0+=4.0;
  } else {
   if(i13<1.008962631225586){
    if(i27<0.00022138319036457688){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=702.0;
    }
   } else {
    if(i20<1.0091696977615356){
     s0+=1.0;
     s1+=123.0;
    } else {
     s1+=7784.0;
    }
   }
  }
 }
}
if(i4<1.0024597644805908){
 if(i15<1.0072669982910156){
  if(i5<0.08106952905654907){
   if(i11<1.0410068035125732){
    if(i25<0.0003242145758122206){
     s0+=52748.0;
     s1+=209.0;
    } else {
     s0+=10496.0;
     s1+=1104.0;
    }
   } else {
    if(i0<0.09095025062561035){
     s0+=4231.0;
     s1+=732.0;
    } else {
     s0+=32.0;
     s1+=226.0;
    }
   }
  } else {
   if(i54<0.00505492091178894){
    if(i8<-0.000432431697845459){
     s0+=71.0;
     s1+=3.0;
    } else {
     s0+=48.0;
     s1+=884.0;
    }
   } else {
    if(i16<0.9988068342208862){
     s0+=156.0;
     s1+=3.0;
    } else {
     s0+=291.0;
     s1+=409.0;
    }
   }
  }
 } else {
  if(i53<0.0018564986530691385){
   if(i7<-3.352927524247207e-05){
    if(i2<0.0693090558052063){
     s0+=159.0;
     s1+=90.0;
    } else {
     s0+=139.0;
     s1+=830.0;
    }
   } else {
    if(i58<-0.001508359215222299){
     s0+=159.0;
     s1+=100.0;
    } else {
     s0+=1974.0;
     s1+=265.0;
    }
   }
  } else {
   if(i3<0.07796680927276611){
    if(i20<0.999985933303833){
     s0+=171.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=126.0;
    }
   } else {
    if(i41<1.0020785331726074){
     s0+=31.0;
     s1+=806.0;
    } else {
     s0+=11.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i27<0.00016248287283815444){
  if(i28<1.2392117977142334){
   if(i53<0.0005913948989473283){
    s0+=8.0;
   } else {
    s1+=40.0;
   }
  } else {
   s0+=86.0;
  }
 } else {
  if(i20<1.0094003677368164){
   if(i22<0.03362434357404709){
    if(i64<0.00046151361311785877){
     s0+=192.0;
     s1+=179.0;
    } else {
     s0+=69.0;
     s1+=683.0;
    }
   } else {
    if(i17<0.00458744540810585){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=21.0;
     s1+=1701.0;
    }
   }
  } else {
   if(i9<1.0341004133224487){
    if(i28<1.390684962272644){
     s0+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i2<0.05034840106964111){
     s0+=5.0;
     s1+=42.0;
    } else {
     s0+=2.0;
     s1+=8650.0;
    }
   }
  }
 }
}
if(i0<0.08202600479125977){
 if(i48<-0.0014802515506744385){
  if(i10<0.0011377930641174316){
   if(i12<1.0006473064422607){
    if(i32<1.1423697471618652){
     s0+=1350.0;
     s1+=401.0;
    } else {
     s0+=2098.0;
     s1+=145.0;
    }
   } else {
    if(i8<0.0006045103073120117){
     s0+=604.0;
     s1+=237.0;
    } else {
     s0+=92.0;
     s1+=334.0;
    }
   }
  } else {
   if(i4<1.0028420686721802){
    if(i32<1.1722280979156494){
     s1+=15.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i35<0.009827367961406708){
     s1+=259.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i26<1.006166696548462){
   if(i25<0.00029170140624046326){
    if(i4<1.002563714981079){
     s0+=52114.0;
     s1+=148.0;
    } else {
     s0+=10.0;
     s1+=13.0;
    }
   } else {
    if(i20<0.9904972314834595){
     s0+=7123.0;
     s1+=49.0;
    } else {
     s0+=4458.0;
     s1+=874.0;
    }
   }
  } else {
   if(i32<1.113217830657959){
    if(i53<0.0003690302255563438){
     s0+=235.0;
     s1+=58.0;
    } else {
     s0+=9.0;
     s1+=437.0;
    }
   } else {
    if(i22<0.025885194540023804){
     s0+=1076.0;
     s1+=29.0;
    } else {
     s0+=54.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i17<0.004804178141057491){
  if(i63<0.041767776012420654){
   if(i66<-0.005210443399846554){
    if(i38<0.005282765254378319){
     s0+=387.0;
     s1+=87.0;
    } else {
     s0+=44.0;
     s1+=165.0;
    }
   } else {
    if(i41<0.9985965490341187){
     s0+=74.0;
    } else {
     s0+=81.0;
     s1+=1997.0;
    }
   }
  } else {
   if(i4<1.0036168098449707){
    if(i20<1.006807804107666){
     s0+=835.0;
     s1+=160.0;
    } else {
     s0+=15.0;
     s1+=38.0;
    }
   } else {
    s1+=57.0;
   }
  }
 } else {
  if(i16<0.9979465007781982){
   s0+=91.0;
  } else {
   if(i67<0.00012482187594287097){
    if(i36<1.0592141151428223){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=6061.0;
    }
   } else {
    if(i68<-0.00011783812078647316){
     s0+=64.0;
     s1+=4958.0;
    } else {
     s0+=125.0;
     s1+=705.0;
    }
   }
  }
 }
}
if(i3<0.07905879616737366){
 if(i12<1.0027947425842285){
  if(i0<0.0692848265171051){
   if(i19<1.0451585054397583){
    if(i58<0.0015895779943093657){
     s0+=51700.0;
     s1+=86.0;
    } else {
     s0+=1540.0;
     s1+=84.0;
    }
   } else {
    if(i51<0.007750112097710371){
     s0+=11203.0;
     s1+=738.0;
    } else {
     s0+=2245.0;
     s1+=635.0;
    }
   }
  } else {
   if(i63<0.022880494594573975){
    if(i46<0.04494097828865051){
     s0+=87.0;
     s1+=457.0;
    } else {
     s0+=240.0;
     s1+=44.0;
    }
   } else {
    if(i31<0.04302915930747986){
     s0+=14.0;
     s1+=31.0;
    } else {
     s0+=1259.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i14<1.913309097290039e-05){
   if(i42<1.1820628643035889){
    if(i39<0.00031755148665979505){
     s0+=73.0;
    } else {
     s0+=18.0;
     s1+=88.0;
    }
   } else {
    if(i62<0.011941565200686455){
     s0+=816.0;
     s1+=37.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.0005691647529602051){
    if(i10<-0.000786125659942627){
     s0+=204.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    if(i36<1.1345939636230469){
     s1+=672.0;
    } else {
     s0+=120.0;
     s1+=292.0;
    }
   }
  }
 }
} else {
 if(i38<0.006125407759100199){
  if(i48<0.004727721214294434){
   if(i4<0.9965496063232422){
    if(i61<0.9994024038314819){
     s0+=272.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=19.0;
    }
   } else {
    if(i37<0.0527571439743042){
     s0+=71.0;
     s1+=2908.0;
    } else {
     s0+=279.0;
     s1+=517.0;
    }
   }
  } else {
   if(i17<0.006095856428146362){
    if(i13<1.0236752033233643){
     s0+=908.0;
     s1+=222.0;
    } else {
     s0+=12.0;
     s1+=78.0;
    }
   } else {
    if(i26<0.9907093048095703){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=414.0;
    }
   }
  }
 } else {
  if(i16<0.9976166486740112){
   s0+=23.0;
  } else {
   if(i42<1.2668852806091309){
    if(i3<0.16175991296768188){
     s0+=70.0;
     s1+=76.0;
    } else {
     s0+=5.0;
     s1+=459.0;
    }
   } else {
    if(i18<-0.0005939304828643799){
     s0+=38.0;
     s1+=86.0;
    } else {
     s0+=42.0;
     s1+=8881.0;
    }
   }
  }
 }
}
if(i6<3.832578659057617e-05){
 if(i25<0.00030615227296948433){
  if(i52<1.0130252838134766){
   if(i13<1.0080902576446533){
    if(i60<-0.002371490001678467){
     s0+=6.0;
     s1+=36.0;
    } else {
     s0+=53293.0;
     s1+=219.0;
    }
   } else {
    if(i38<0.0011742201168090105){
     s0+=8.0;
     s1+=81.0;
    } else {
     s0+=88.0;
     s1+=3.0;
    }
   }
  } else {
   if(i26<1.007273554801941){
    if(i43<-9.834791853791103e-06){
     s0+=9.0;
     s1+=15.0;
    } else {
     s0+=63.0;
     s1+=5.0;
    }
   } else {
    if(i71<0.00015452441584784538){
     s0+=3.0;
     s1+=50.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<0.9972046613693237){
   if(i23<0.9928399324417114){
    if(i11<1.0694043636322021){
     s0+=7010.0;
     s1+=78.0;
    } else {
     s0+=515.0;
     s1+=152.0;
    }
   } else {
    if(i31<0.102364182472229){
     s0+=1810.0;
     s1+=223.0;
    } else {
     s0+=41.0;
     s1+=52.0;
    }
   }
  } else {
   if(i5<0.06460049748420715){
    if(i39<0.00039802631363272667){
     s0+=1917.0;
     s1+=42.0;
    } else {
     s0+=4074.0;
     s1+=1772.0;
    }
   } else {
    if(i22<0.027252310886979103){
     s0+=1184.0;
     s1+=949.0;
    } else {
     s0+=310.0;
     s1+=1949.0;
    }
   }
  }
 }
} else {
 if(i9<1.0326924324035645){
  if(i12<1.001465082168579){
   if(i56<-0.003329545259475708){
    s1+=2.0;
   } else {
    s0+=281.0;
   }
  } else {
   if(i24<1.0031908750534058){
    s1+=49.0;
   } else {
    if(i35<0.0004614691133610904){
     s0+=23.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i44<0.020859211683273315){
   if(i57<7.045065285637975e-05){
    if(i32<1.0690243244171143){
     s0+=23.0;
    } else {
     s0+=134.0;
     s1+=2429.0;
    }
   } else {
    if(i60<0.0017690062522888184){
     s0+=151.0;
     s1+=222.0;
    } else {
     s0+=122.0;
     s1+=25.0;
    }
   }
  } else {
   if(i26<1.006155252456665){
    if(i0<0.08061829209327698){
     s0+=9.0;
     s1+=191.0;
    } else {
     s0+=4.0;
     s1+=1488.0;
    }
   } else {
    s1+=7137.0;
   }
  }
 }
}
if(i0<0.08281055092811584){
 if(i51<0.007580842822790146){
  if(i0<0.06403616070747375){
   if(i4<1.002561092376709){
    if(i19<1.0451585054397583){
     s0+=51436.0;
     s1+=144.0;
    } else {
     s0+=11148.0;
     s1+=643.0;
    }
   } else {
    if(i38<0.0017419559881091118){
     s1+=112.0;
    } else {
     s0+=159.0;
     s1+=12.0;
    }
   }
  } else {
   if(i4<1.0018465518951416){
    if(i37<0.025919795036315918){
     s0+=73.0;
     s1+=292.0;
    } else {
     s0+=3046.0;
     s1+=197.0;
    }
   } else {
    if(i70<-4.841313057113439e-06){
     s0+=36.0;
     s1+=351.0;
    } else {
     s0+=81.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i2<0.032282620668411255){
   if(i1<0.0005377531051635742){
    if(i16<0.9982595443725586){
     s0+=771.0;
     s1+=2.0;
    } else {
     s0+=1640.0;
     s1+=307.0;
    }
   } else {
    if(i52<0.9914059638977051){
     s0+=14.0;
     s1+=106.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i17<0.004099988378584385){
    if(i46<0.008730262517929077){
     s0+=103.0;
     s1+=188.0;
    } else {
     s0+=780.0;
     s1+=143.0;
    }
   } else {
    if(i61<0.9973493218421936){
     s0+=51.0;
     s1+=13.0;
    } else {
     s0+=45.0;
     s1+=671.0;
    }
   }
  }
 }
} else {
 if(i34<0.006010443903505802){
  if(i25<0.00195833807811141){
   if(i33<0.00045606427011080086){
    if(i40<0.0001004636287689209){
     s0+=146.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=19.0;
    }
   } else {
    if(i1<-0.0008536577224731445){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=193.0;
     s1+=3178.0;
    }
   }
  } else {
   if(i34<0.00313191139139235){
    if(i61<1.0004806518554688){
     s0+=681.0;
     s1+=76.0;
    } else {
     s0+=121.0;
     s1+=220.0;
    }
   } else {
    if(i2<0.13413295149803162){
     s0+=244.0;
     s1+=107.0;
    } else {
     s0+=93.0;
     s1+=727.0;
    }
   }
  }
 } else {
  if(i19<1.0647540092468262){
   if(i21<0.9596375226974487){
    s1+=1.0;
   } else {
    if(i3<0.10301050543785095){
     s0+=55.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<0.1316651701927185){
    if(i54<0.006204068660736084){
     s0+=41.0;
     s1+=1502.0;
    } else {
     s0+=46.0;
     s1+=17.0;
    }
   } else {
    if(i53<0.00022930203704163432){
     s0+=6.0;
     s1+=28.0;
    } else {
     s0+=18.0;
     s1+=8100.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i12<1.0031964778900146){
  if(i28<1.0856719017028809){
   s0+=38648.0;
  } else {
   if(i28<1.100313425064087){
    if(i7<-1.459940722270403e-05){
     s0+=179.0;
     s1+=1005.0;
    } else {
     s0+=2718.0;
     s1+=880.0;
    }
   } else {
    if(i68<-0.0013511300785467029){
     s1+=152.0;
    } else {
     s0+=27409.0;
     s1+=1612.0;
    }
   }
  }
 } else {
  if(i1<0.0003370046615600586){
   if(i9<1.0819685459136963){
    if(i28<1.246530294418335){
     s0+=21.0;
     s1+=13.0;
    } else {
     s0+=704.0;
     s1+=16.0;
    }
   } else {
    if(i56<-0.022262871265411377){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=152.0;
    }
   }
  } else {
   if(i2<0.06042400002479553){
    if(i49<-0.006608188152313232){
     s0+=24.0;
     s1+=190.0;
    } else {
     s0+=89.0;
     s1+=44.0;
    }
   } else {
    if(i44<0.024886418133974075){
     s0+=76.0;
     s1+=508.0;
    } else {
     s1+=1444.0;
    }
   }
  }
 }
} else {
 if(i16<1.0017082691192627){
  if(i18<6.99162483215332e-05){
   if(i64<0.000564096902962774){
    if(i40<2.3096799850463867e-05){
     s0+=225.0;
     s1+=450.0;
    } else {
     s0+=593.0;
     s1+=124.0;
    }
   } else {
    if(i71<0.0005279849865473807){
     s0+=13.0;
     s1+=355.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i13<1.0233194828033447){
    if(i55<0.9999005794525146){
     s0+=21.0;
     s1+=884.0;
    } else {
     s0+=295.0;
     s1+=226.0;
    }
   } else {
    if(i52<0.97090744972229){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=1073.0;
    }
   }
  }
 } else {
  if(i17<0.001046517165377736){
   if(i29<1.0421382188796997){
    s0+=24.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i23<1.000218152999878){
    if(i19<1.141074299812317){
     s0+=65.0;
     s1+=73.0;
    } else {
     s0+=4.0;
     s1+=340.0;
    }
   } else {
    if(i23<1.0037798881530762){
     s0+=14.0;
     s1+=373.0;
    } else {
     s0+=2.0;
     s1+=7101.0;
    }
   }
  }
 }
}
if(i2<0.08502998948097229){
 if(i50<-0.02883884310722351){
  if(i40<0.00013011693954467773){
   if(i61<1.0004761219024658){
    if(i4<1.0012643337249756){
     s0+=1865.0;
     s1+=225.0;
    } else {
     s0+=9.0;
     s1+=51.0;
    }
   } else {
    if(i59<1.0001399517059326){
     s0+=76.0;
     s1+=131.0;
    } else {
     s0+=141.0;
     s1+=47.0;
    }
   }
  } else {
   if(i59<1.001600980758667){
    if(i42<1.0566685199737549){
     s0+=36.0;
    } else {
     s0+=69.0;
     s1+=519.0;
    }
   } else {
    if(i6<1.3589859008789062e-05){
     s0+=185.0;
     s1+=23.0;
    } else {
     s0+=26.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i20<1.0048969984054565){
   if(i9<1.0401363372802734){
    if(i8<0.0005989670753479004){
     s0+=57475.0;
     s1+=458.0;
    } else {
     s0+=208.0;
     s1+=51.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=3126.0;
     s1+=744.0;
    } else {
     s0+=5150.0;
     s1+=288.0;
    }
   }
  } else {
   if(i38<0.0012801401317119598){
    if(i7<-3.376158565515652e-05){
     s1+=449.0;
    } else {
     s0+=59.0;
     s1+=20.0;
    }
   } else {
    if(i32<1.4174151420593262){
     s0+=822.0;
     s1+=19.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i20<1.0068550109863281){
  if(i41<0.999174177646637){
   if(i23<0.9993559122085571){
    if(i4<0.9969729781150818){
     s0+=626.0;
    } else {
     s0+=36.0;
     s1+=13.0;
    }
   } else {
    if(i17<0.0046172915026545525){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i22<0.026647698134183884){
    if(i48<0.0041484832763671875){
     s0+=258.0;
     s1+=932.0;
    } else {
     s0+=671.0;
     s1+=176.0;
    }
   } else {
    if(i17<0.0013870721450075507){
     s0+=73.0;
     s1+=47.0;
    } else {
     s0+=197.0;
     s1+=3477.0;
    }
   }
  }
 } else {
  if(i16<0.999887228012085){
   if(i47<0.08586527407169342){
    s1+=227.0;
   } else {
    if(i68<-0.001084538409486413){
     s1+=32.0;
    } else {
     s0+=31.0;
     s1+=8.0;
    }
   }
  } else {
   if(i53<0.0009337958181276917){
    if(i66<-0.009185882285237312){
     s0+=25.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=657.0;
    }
   } else {
    if(i64<0.00029963391716592014){
     s0+=1.0;
     s1+=437.0;
    } else {
     s1+=7952.0;
    }
   }
  }
 }
}
if(i5<0.0695335865020752){
 if(i12<1.0032590627670288){
  if(i3<0.07751640677452087){
   if(i35<0.0003140369663015008){
    if(i13<1.0081498622894287){
     s0+=47010.0;
     s1+=55.0;
    } else {
     s0+=12.0;
     s1+=60.0;
    }
   } else {
    if(i34<0.0008778661722317338){
     s0+=5477.0;
     s1+=1411.0;
    } else {
     s0+=15264.0;
     s1+=491.0;
    }
   }
  } else {
   if(i4<0.9965225458145142){
    if(i69<0.003491587471216917){
     s0+=80.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i37<0.037884652614593506){
     s0+=2.0;
     s1+=616.0;
    } else {
     s0+=20.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i2<0.057842910289764404){
   if(i10<-0.0019825994968414307){
    if(i53<0.006539505906403065){
     s0+=534.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i58<0.0020964897703379393){
     s0+=147.0;
     s1+=42.0;
    } else {
     s0+=50.0;
     s1+=257.0;
    }
   }
  } else {
   if(i1<0.0003479123115539551){
    if(i58<0.002881499705836177){
     s0+=111.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i66<-0.006230073515325785){
     s0+=18.0;
     s1+=22.0;
    } else {
     s0+=32.0;
     s1+=1381.0;
    }
   }
  }
 }
} else {
 if(i3<0.11344587802886963){
  if(i37<0.04389640688896179){
   if(i56<0.006154119968414307){
    if(i2<0.08512872457504272){
     s0+=91.0;
     s1+=241.0;
    } else {
     s0+=14.0;
     s1+=775.0;
    }
   } else {
    if(i36<1.1105778217315674){
     s0+=8.0;
     s1+=37.0;
    } else {
     s0+=111.0;
     s1+=22.0;
    }
   }
  } else {
   if(i10<0.0006699562072753906){
    if(i7<-1.259109194506891e-05){
     s0+=593.0;
     s1+=238.0;
    } else {
     s0+=763.0;
     s1+=35.0;
    }
   } else {
    if(i35<0.0043802750296890736){
     s0+=8.0;
     s1+=171.0;
    } else {
     s0+=20.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i41<0.9988077878952026){
   if(i19<1.398578405380249){
    s0+=227.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i53<0.0003007041523233056){
    if(i37<0.07364159822463989){
     s0+=13.0;
     s1+=148.0;
    } else {
     s0+=185.0;
     s1+=26.0;
    }
   } else {
    if(i22<0.02189224772155285){
     s0+=148.0;
     s1+=1403.0;
    } else {
     s0+=105.0;
     s1+=9687.0;
    }
   }
  }
 }
}
if(i5<0.07264465093612671){
 if(i0<0.07900145649909973){
  if(i1<0.0006018579006195068){
   if(i69<0.0007543147657997906){
    if(i2<0.06547307968139648){
     s0+=57564.0;
     s1+=535.0;
    } else {
     s0+=3467.0;
     s1+=354.0;
    }
   } else {
    if(i1<-0.00031045079231262207){
     s0+=5774.0;
     s1+=372.0;
    } else {
     s0+=1883.0;
     s1+=683.0;
    }
   }
  } else {
   if(i27<0.00017253466648980975){
    if(i5<0.050382643938064575){
     s0+=97.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=11.0;
    }
   } else {
    if(i39<0.0021767716389149427){
     s0+=17.0;
     s1+=553.0;
    } else {
     s0+=178.0;
     s1+=314.0;
    }
   }
  }
 } else {
  if(i32<1.0724589824676514){
   if(i55<1.000141978263855){
    s0+=103.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i54<0.0035472214221954346){
    if(i7<6.958640369703062e-06){
     s0+=58.0;
     s1+=1833.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i49<0.010758012533187866){
     s0+=16.0;
     s1+=32.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i0<0.10798698663711548){
  if(i4<1.002104640007019){
   if(i54<0.002900749444961548){
    if(i60<0.00423431396484375){
     s0+=204.0;
     s1+=388.0;
    } else {
     s0+=172.0;
     s1+=27.0;
    }
   } else {
    if(i27<0.0011929641477763653){
     s0+=303.0;
     s1+=97.0;
    } else {
     s0+=412.0;
     s1+=14.0;
    }
   }
  } else {
   if(i66<-0.006361722014844418){
    if(i17<0.00986501295119524){
     s0+=50.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i54<0.003730297088623047){
     s0+=12.0;
     s1+=321.0;
    } else {
     s0+=13.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i23<1.0006744861602783){
   if(i41<0.998843789100647){
    s0+=221.0;
   } else {
    if(i7<-1.4646861927758437e-05){
     s0+=159.0;
     s1+=2315.0;
    } else {
     s0+=263.0;
     s1+=210.0;
    }
   }
  } else {
   if(i0<0.12997862696647644){
    if(i31<0.09572708606719971){
     s0+=7.0;
     s1+=406.0;
    } else {
     s0+=54.0;
     s1+=54.0;
    }
   } else {
    if(i20<1.0066566467285156){
     s0+=39.0;
     s1+=1338.0;
    } else {
     s0+=1.0;
     s1+=7247.0;
    }
   }
  }
 }
}
if(i19<1.057713270187378){
 if(i0<0.0785500705242157){
  if(i30<1.0088090896606445){
   if(i60<-0.0013623535633087158){
    if(i68<0.00011406811245251447){
     s0+=926.0;
     s1+=234.0;
    } else {
     s0+=969.0;
     s1+=24.0;
    }
   } else {
    if(i9<1.0406912565231323){
     s0+=52901.0;
     s1+=115.0;
    } else {
     s0+=3469.0;
     s1+=194.0;
    }
   }
  } else {
   if(i13<1.0082154273986816){
    s0+=3.0;
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i4<0.998958945274353){
   if(i23<0.9939854145050049){
    s0+=259.0;
   } else {
    if(i57<4.7382018237840384e-05){
     s0+=82.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=48.0;
    }
   }
  } else {
   if(i46<0.058737993240356445){
    if(i33<0.0003000394790433347){
     s0+=9.0;
    } else {
     s0+=3.0;
     s1+=210.0;
    }
   } else {
    if(i30<1.0038467645645142){
     s0+=65.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i8<0.0004391670227050781){
  if(i68<-0.0007677461835555732){
   if(i0<0.08701097965240479){
    if(i17<0.006351416930556297){
     s0+=191.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i44<0.03382972627878189){
     s0+=76.0;
     s1+=211.0;
    } else {
     s0+=10.0;
     s1+=863.0;
    }
   }
  } else {
   if(i42<1.1823735237121582){
    if(i2<0.07475903630256653){
     s0+=3413.0;
     s1+=969.0;
    } else {
     s0+=524.0;
     s1+=1933.0;
    }
   } else {
    if(i5<0.10034513473510742){
     s0+=6351.0;
     s1+=199.0;
    } else {
     s0+=475.0;
     s1+=997.0;
    }
   }
  }
 } else {
  if(i0<0.0718260407447815){
   if(i1<0.0003070831298828125){
    if(i51<0.03567173331975937){
     s0+=606.0;
     s1+=42.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i39<0.001584634417667985){
     s1+=381.0;
    } else {
     s0+=248.0;
     s1+=366.0;
    }
   }
  } else {
   if(i68<-0.00020436930935829878){
    if(i64<0.0004907016409561038){
     s0+=70.0;
     s1+=1427.0;
    } else {
     s0+=38.0;
     s1+=7395.0;
    }
   } else {
    if(i4<1.0023154020309448){
     s0+=202.0;
     s1+=207.0;
    } else {
     s0+=55.0;
     s1+=1366.0;
    }
   }
  }
 }
}
if(i2<0.08502665162086487){
 if(i23<1.00433349609375){
  if(i25<0.0002811383455991745){
   if(i24<1.0113357305526733){
    if(i7<-3.987616946687922e-05){
     s0+=394.0;
     s1+=64.0;
    } else {
     s0+=51638.0;
     s1+=133.0;
    }
   } else {
    if(i32<1.1039612293243408){
     s1+=49.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   }
  } else {
   if(i18<-0.00021976232528686523){
    if(i48<-0.002441108226776123){
     s0+=1413.0;
     s1+=227.0;
    } else {
     s0+=7324.0;
     s1+=53.0;
    }
   } else {
    if(i34<0.0002954722149297595){
     s0+=2686.0;
    } else {
     s0+=5042.0;
     s1+=1788.0;
    }
   }
  }
 } else {
  if(i4<1.0029282569885254){
   if(i34<0.000856857281178236){
    if(i32<1.1016805171966553){
     s1+=60.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i57<-2.1325464331312105e-05){
     s1+=20.0;
    } else {
     s0+=498.0;
     s1+=33.0;
    }
   }
  } else {
   if(i17<0.0018442901782691479){
    if(i36<1.1112277507781982){
     s1+=6.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i71<0.00014501824625767767){
     s0+=4.0;
     s1+=605.0;
    } else {
     s0+=18.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i33<0.0005462473491206765){
  if(i40<5.710124969482422e-05){
   if(i41<0.9996099472045898){
    s0+=396.0;
   } else {
    if(i53<0.0010877869790419936){
     s0+=173.0;
     s1+=1.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i43<-4.758915565616917e-06){
    if(i32<1.0570924282073975){
     s0+=1.0;
    } else {
     s1+=139.0;
    }
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i4<1.00185227394104){
   if(i37<0.04747551679611206){
    if(i65<3.8481855881400406e-05){
     s0+=81.0;
     s1+=1893.0;
    } else {
     s0+=53.0;
     s1+=88.0;
    }
   } else {
    if(i0<0.1234159767627716){
     s0+=619.0;
     s1+=134.0;
    } else {
     s0+=439.0;
     s1+=1006.0;
    }
   }
  } else {
   if(i38<0.008836107328534126){
    if(i32<1.6016557216644287){
     s0+=111.0;
     s1+=3516.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   } else {
    if(i50<0.13208472728729248){
     s1+=5927.0;
    } else {
     s0+=5.0;
     s1+=1417.0;
    }
   }
  }
 }
}
if(i16<1.0016306638717651){
 if(i13<1.0092737674713135){
  if(i2<0.08237043023109436){
   if(i9<1.0398929119110107){
    if(i39<0.0003755648504011333){
     s0+=38234.0;
     s1+=19.0;
    } else {
     s0+=19628.0;
     s1+=481.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=2971.0;
     s1+=932.0;
    } else {
     s0+=6321.0;
     s1+=338.0;
    }
   }
  } else {
   if(i16<0.99846351146698){
    if(i45<1.3388280868530273){
     s0+=762.0;
     s1+=16.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i22<0.021906230598688126){
     s0+=571.0;
     s1+=422.0;
    } else {
     s0+=251.0;
     s1+=1649.0;
    }
   }
  }
 } else {
  if(i40<1.7374753952026367e-05){
   if(i23<0.9980769157409668){
    if(i38<0.00528715830296278){
     s0+=188.0;
     s1+=126.0;
    } else {
     s0+=3.0;
     s1+=280.0;
    }
   } else {
    if(i19<1.0471223592758179){
     s0+=6.0;
    } else {
     s0+=25.0;
     s1+=1434.0;
    }
   }
  } else {
   if(i64<0.0004638072568923235){
    if(i7<-4.4877800974063575e-05){
     s0+=19.0;
     s1+=254.0;
    } else {
     s0+=700.0;
     s1+=84.0;
    }
   } else {
    if(i53<0.0016981222433969378){
     s0+=32.0;
     s1+=29.0;
    } else {
     s0+=6.0;
     s1+=766.0;
    }
   }
  }
 }
} else {
 if(i7<-8.833337051328272e-05){
  if(i6<4.488229751586914e-05){
   if(i55<1.0004531145095825){
    if(i19<1.0765113830566406){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=212.0;
    }
   } else {
    if(i11<1.1074061393737793){
     s0+=133.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i2<0.013299345970153809){
    if(i62<0.0073782396502792835){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   } else {
    if(i23<1.0060367584228516){
     s0+=73.0;
     s1+=1433.0;
    } else {
     s0+=1.0;
     s1+=7085.0;
    }
   }
  }
 } else {
  if(i55<1.0003544092178345){
   if(i42<1.150278091430664){
    s1+=912.0;
   } else {
    if(i44<0.018318641930818558){
     s0+=307.0;
     s1+=78.0;
    } else {
     s0+=60.0;
     s1+=530.0;
    }
   }
  } else {
   if(i40<0.00026220083236694336){
    if(i32<1.132217288017273){
     s0+=37.0;
    } else {
     s0+=4.0;
     s1+=97.0;
    }
   } else {
    if(i29<1.0839078426361084){
     s0+=592.0;
     s1+=5.0;
    } else {
     s1+=57.0;
    }
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i51<0.007995941676199436){
  if(i0<0.06618699431419373){
   if(i6<4.0471553802490234e-05){
    if(i19<1.0451585054397583){
     s0+=51713.0;
     s1+=157.0;
    } else {
     s0+=11441.0;
     s1+=696.0;
    }
   } else {
    if(i40<0.00018554925918579102){
     s0+=318.0;
     s1+=23.0;
    } else {
     s0+=84.0;
     s1+=137.0;
    }
   }
  } else {
   if(i62<-0.001680940855294466){
    if(i18<0.00010901689529418945){
     s0+=2242.0;
     s1+=286.0;
    } else {
     s0+=52.0;
     s1+=88.0;
    }
   } else {
    if(i4<0.996666669845581){
     s0+=33.0;
    } else {
     s0+=32.0;
     s1+=236.0;
    }
   }
  }
 } else {
  if(i7<-3.8767600926803425e-05){
   if(i20<0.980655312538147){
    if(i5<0.011495620012283325){
     s0+=208.0;
     s1+=23.0;
    } else {
     s0+=7.0;
     s1+=63.0;
    }
   } else {
    if(i60<0.0023148059844970703){
     s0+=91.0;
     s1+=711.0;
    } else {
     s0+=85.0;
     s1+=20.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i68<0.00016973487799987197){
     s0+=620.0;
     s1+=346.0;
    } else {
     s0+=323.0;
    }
   } else {
    if(i21<0.9733880162239075){
     s0+=535.0;
     s1+=122.0;
    } else {
     s0+=1298.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i1<0.0004419684410095215){
  if(i37<0.046684831380844116){
   if(i28<1.0762357711791992){
    s0+=103.0;
   } else {
    if(i41<0.9991308450698853){
     s0+=16.0;
     s1+=11.0;
    } else {
     s0+=124.0;
     s1+=2004.0;
    }
   }
  } else {
   if(i22<0.029485322535037994){
    if(i28<1.255998969078064){
     s0+=529.0;
     s1+=277.0;
    } else {
     s0+=652.0;
     s1+=85.0;
    }
   } else {
    if(i8<-0.0004024505615234375){
     s0+=170.0;
     s1+=2.0;
    } else {
     s0+=173.0;
     s1+=728.0;
    }
   }
  }
 } else {
  if(i0<0.12855765223503113){
   if(i49<0.01332971453666687){
    if(i50<0.07929113507270813){
     s0+=7.0;
     s1+=1366.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s1+=25.0;
    } else {
     s0+=128.0;
     s1+=10.0;
    }
   }
  } else {
   if(i7<-5.4714437283109874e-05){
    if(i7<-0.00014735911099705845){
     s1+=6823.0;
    } else {
     s0+=10.0;
     s1+=2706.0;
    }
   } else {
    if(i57<7.286139589268714e-05){
     s0+=5.0;
     s1+=173.0;
    } else {
     s0+=31.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i26<1.006636381149292){
 if(i69<0.0009142138296738267){
  if(i13<1.0077526569366455){
   if(i5<0.07541152834892273){
    if(i4<1.0025075674057007){
     s0+=61184.0;
     s1+=1064.0;
    } else {
     s0+=48.0;
     s1+=107.0;
    }
   } else {
    if(i1<-0.0007582306861877441){
     s0+=195.0;
     s1+=16.0;
    } else {
     s0+=470.0;
     s1+=574.0;
    }
   }
  } else {
   if(i3<0.13015130162239075){
    if(i37<0.03940260410308838){
     s0+=47.0;
     s1+=96.0;
    } else {
     s0+=89.0;
     s1+=10.0;
    }
   } else {
    if(i37<0.13536551594734192){
     s0+=5.0;
     s1+=206.0;
    } else {
     s0+=20.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i8<0.00022339820861816406){
   if(i0<0.06953737139701843){
    if(i23<0.9935942888259888){
     s0+=3152.0;
     s1+=34.0;
    } else {
     s0+=2350.0;
     s1+=648.0;
    }
   } else {
    if(i7<-4.114771400054451e-06){
     s0+=98.0;
     s1+=695.0;
    } else {
     s0+=372.0;
     s1+=97.0;
    }
   }
  } else {
   if(i3<0.06306004524230957){
    if(i4<1.0008059740066528){
     s0+=606.0;
     s1+=97.0;
    } else {
     s0+=127.0;
     s1+=346.0;
    }
   } else {
    if(i19<1.0586028099060059){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=79.0;
     s1+=2089.0;
    }
   }
  }
 }
} else {
 if(i14<1.913309097290039e-05){
  if(i53<0.00108467903919518){
   if(i7<-4.277479456504807e-05){
    if(i32<1.25206458568573){
     s1+=626.0;
    } else {
     s0+=61.0;
     s1+=131.0;
    }
   } else {
    if(i32<1.1663256883621216){
     s0+=244.0;
     s1+=222.0;
    } else {
     s0+=1400.0;
     s1+=60.0;
    }
   }
  } else {
   if(i41<0.998977541923523){
    if(i16<0.9985323548316956){
     s0+=147.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i31<0.050343871116638184){
     s0+=75.0;
     s1+=379.0;
    } else {
     s0+=18.0;
     s1+=1513.0;
    }
   }
  }
 } else {
  if(i43<-1.6345813492080197e-05){
   if(i2<0.0684899389743805){
    if(i59<1.0021682977676392){
     s0+=5.0;
     s1+=188.0;
    } else {
     s0+=51.0;
     s1+=1.0;
    }
   } else {
    if(i10<3.5822391510009766e-05){
     s0+=61.0;
     s1+=343.0;
    } else {
     s1+=7616.0;
    }
   }
  } else {
   if(i17<0.0034939334727823734){
    if(i15<1.027039647102356){
     s0+=68.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=75.0;
   }
  }
 }
}
if(i5<0.06979292631149292){
 if(i0<0.07809460163116455){
  if(i9<1.0459426641464233){
   if(i4<1.0029221773147583){
    if(i28<1.0856719017028809){
     s0+=36994.0;
    } else {
     s0+=24905.0;
     s1+=787.0;
    }
   } else {
    if(i25<0.0001799053861759603){
     s0+=24.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=85.0;
    }
   }
  } else {
   if(i23<1.0049445629119873){
    if(i38<0.0011287308298051357){
     s0+=1964.0;
     s1+=795.0;
    } else {
     s0+=4606.0;
     s1+=487.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=1.0;
     s1+=386.0;
    } else {
     s0+=108.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i16<0.9981365203857422){
   if(i59<1.001023530960083){
    s0+=94.0;
   } else {
    if(i27<0.001172343734651804){
     s0+=6.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i54<0.003381013870239258){
    if(i19<1.0428379774093628){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=24.0;
     s1+=1817.0;
    }
   } else {
    if(i37<0.03242829442024231){
     s1+=16.0;
    } else {
     s0+=33.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i2<0.11741665005683899){
  if(i54<0.002900749444961548){
   if(i17<0.0037109684199094772){
    if(i56<0.0054007768630981445){
     s0+=227.0;
     s1+=283.0;
    } else {
     s0+=257.0;
     s1+=14.0;
    }
   } else {
    if(i56<0.006934136152267456){
     s0+=64.0;
     s1+=767.0;
    } else {
     s0+=37.0;
     s1+=21.0;
    }
   }
  } else {
   if(i46<0.04567849636077881){
    if(i3<0.07383319735527039){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=52.0;
    }
   } else {
    if(i25<0.0012882640585303307){
     s0+=246.0;
     s1+=116.0;
    } else {
     s0+=633.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i16<0.9985349178314209){
   if(i42<1.434314250946045){
    s0+=255.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i17<0.0017052508192136884){
    if(i46<0.08463838696479797){
     s0+=9.0;
     s1+=104.0;
    } else {
     s0+=248.0;
     s1+=33.0;
    }
   } else {
    if(i16<0.9989688396453857){
     s0+=27.0;
     s1+=40.0;
    } else {
     s0+=197.0;
     s1+=11249.0;
    }
   }
  }
 }
}
if(i0<0.08241268992424011){
 if(i19<1.0486011505126953){
  if(i48<-0.0017872154712677002){
   if(i3<0.0354844331741333){
    if(i28<1.0821808576583862){
     s0+=520.0;
    } else {
     s0+=141.0;
     s1+=70.0;
    }
   } else {
    if(i32<1.069220781326294){
     s0+=21.0;
    } else {
     s0+=8.0;
     s1+=52.0;
    }
   }
  } else {
   if(i60<-0.0013626515865325928){
    if(i23<0.9943779706954956){
     s0+=700.0;
    } else {
     s0+=342.0;
     s1+=124.0;
    }
   } else {
    if(i69<0.0005895373178645968){
     s0+=51632.0;
     s1+=86.0;
    } else {
     s0+=2525.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i23<1.004939079284668){
   if(i28<1.1013743877410889){
    if(i24<0.9895807504653931){
     s0+=84.0;
     s1+=406.0;
    } else {
     s0+=2546.0;
     s1+=847.0;
    }
   } else {
    if(i40<0.00019723176956176758){
     s0+=8402.0;
     s1+=375.0;
    } else {
     s0+=2166.0;
     s1+=369.0;
    }
   }
  } else {
   if(i1<0.0005441904067993164){
    if(i32<1.1380741596221924){
     s1+=37.0;
    } else {
     s0+=185.0;
     s1+=11.0;
    }
   } else {
    if(i53<0.0009694900363683701){
     s0+=28.0;
     s1+=61.0;
    } else {
     s0+=6.0;
     s1+=579.0;
    }
   }
  }
 }
} else {
 if(i42<1.0670123100280762){
  if(i1<0.0001634061336517334){
   s0+=172.0;
  } else {
   if(i1<0.0002709031105041504){
    s1+=4.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i6<3.4749507904052734e-05){
   if(i37<0.0502811074256897){
    if(i37<0.040316224098205566){
     s0+=28.0;
     s1+=1882.0;
    } else {
     s0+=95.0;
     s1+=382.0;
    }
   } else {
    if(i44<0.04032256454229355){
     s0+=1162.0;
     s1+=632.0;
    } else {
     s0+=22.0;
     s1+=457.0;
    }
   }
  } else {
   if(i6<5.65648078918457e-05){
    if(i44<0.012030016630887985){
     s0+=56.0;
     s1+=118.0;
    } else {
     s0+=23.0;
     s1+=930.0;
    }
   } else {
    if(i2<0.13113391399383545){
     s0+=37.0;
     s1+=1056.0;
    } else {
     s0+=9.0;
     s1+=8785.0;
    }
   }
  }
 }
}
if(i20<1.0060855150222778){
 if(i11<1.0452215671539307){
  if(i2<0.08293327689170837){
   if(i19<1.0451585054397583){
    if(i45<0.04214908927679062){
     s0+=48562.0;
     s1+=76.0;
    } else {
     s0+=5425.0;
     s1+=153.0;
    }
   } else {
    if(i4<1.0024751424789429){
     s0+=10337.0;
     s1+=1094.0;
    } else {
     s0+=18.0;
     s1+=160.0;
    }
   }
  } else {
   if(i40<-0.00013878941535949707){
    if(i5<0.08939862251281738){
     s0+=305.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i37<0.04645296931266785){
     s0+=42.0;
     s1+=685.0;
    } else {
     s0+=160.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i44<0.02466312237083912){
   if(i0<0.07493442296981812){
    if(i28<1.1013743877410889){
     s0+=874.0;
     s1+=331.0;
    } else {
     s0+=2563.0;
     s1+=196.0;
    }
   } else {
    if(i63<0.025820910930633545){
     s0+=346.0;
     s1+=875.0;
    } else {
     s0+=1007.0;
     s1+=368.0;
    }
   }
  } else {
   if(i23<0.990763783454895){
    if(i61<0.9984521269798279){
     s0+=236.0;
     s1+=7.0;
    } else {
     s0+=188.0;
     s1+=304.0;
    }
   } else {
    if(i28<1.3712366819381714){
     s0+=154.0;
     s1+=873.0;
    } else {
     s0+=22.0;
     s1+=1728.0;
    }
   }
  }
 }
} else {
 if(i10<0.0014184117317199707){
  if(i7<-4.39562281826511e-05){
   if(i11<1.0267637968063354){
    if(i28<1.201646327972412){
     s1+=7.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i41<0.9991335272789001){
     s0+=15.0;
    } else {
     s0+=41.0;
     s1+=1420.0;
    }
   }
  } else {
   if(i42<1.1758075952529907){
    if(i36<1.1171512603759766){
     s1+=150.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i5<0.17633867263793945){
     s0+=639.0;
     s1+=15.0;
    } else {
     s0+=29.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i1<0.0005483627319335938){
   if(i55<0.9999001026153564){
    s1+=202.0;
   } else {
    s0+=26.0;
   }
  } else {
   if(i43<-1.3047232641838491e-05){
    s1+=8256.0;
   } else {
    if(i8<0.00036850571632385254){
     s1+=124.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i0<0.08244869112968445){
 if(i8<0.0006160736083984375){
  if(i0<0.06633251905441284){
   if(i25<0.00028071465203538537){
    if(i8<0.0003631114959716797){
     s0+=50434.0;
     s1+=167.0;
    } else {
     s0+=658.0;
     s1+=59.0;
    }
   } else {
    if(i23<0.9943428039550781){
     s0+=8468.0;
     s1+=105.0;
    } else {
     s0+=6420.0;
     s1+=1125.0;
    }
   }
  } else {
   if(i31<0.042896568775177){
    if(i6<-5.793571472167969e-05){
     s0+=54.0;
    } else {
     s0+=19.0;
     s1+=460.0;
    }
   } else {
    if(i60<-0.0008887648582458496){
     s0+=139.0;
     s1+=87.0;
    } else {
     s0+=2477.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i1<0.0007026493549346924){
   if(i23<0.9955886602401733){
    if(i24<0.892096757888794){
     s1+=10.0;
    } else {
     s0+=375.0;
     s1+=6.0;
    }
   } else {
    if(i22<0.013167750090360641){
     s0+=107.0;
     s1+=23.0;
    } else {
     s0+=68.0;
     s1+=89.0;
    }
   }
  } else {
   if(i10<5.346536636352539e-05){
    if(i48<0.0006236433982849121){
     s0+=65.0;
     s1+=233.0;
    } else {
     s0+=61.0;
     s1+=3.0;
    }
   } else {
    if(i40<0.00014957785606384277){
     s0+=5.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=548.0;
    }
   }
  }
 }
} else {
 if(i1<0.00010436773300170898){
  if(i37<0.049102842807769775){
   if(i40<-0.0002669692039489746){
    s0+=87.0;
   } else {
    if(i37<0.037850260734558105){
     s0+=17.0;
     s1+=931.0;
    } else {
     s0+=36.0;
     s1+=218.0;
    }
   }
  } else {
   if(i34<0.0037208213470876217){
    if(i49<0.018168270587921143){
     s0+=416.0;
     s1+=168.0;
    } else {
     s0+=466.0;
     s1+=17.0;
    }
   } else {
    if(i29<1.111341953277588){
     s0+=179.0;
     s1+=119.0;
    } else {
     s0+=43.0;
     s1+=299.0;
    }
   }
  }
 } else {
  if(i4<1.0018550157546997){
   if(i66<-0.005482259206473827){
    if(i53<0.0010753232054412365){
     s0+=179.0;
     s1+=31.0;
    } else {
     s0+=112.0;
     s1+=505.0;
    }
   } else {
    if(i4<0.9979525804519653){
     s0+=5.0;
    } else {
     s0+=51.0;
     s1+=973.0;
    }
   }
  } else {
   if(i0<0.12857261300086975){
    if(i48<0.006290733814239502){
     s0+=35.0;
     s1+=1321.0;
    } else {
     s0+=68.0;
     s1+=1.0;
    }
   } else {
    if(i7<-6.164787919260561e-05){
     s0+=11.0;
     s1+=9281.0;
    } else {
     s0+=14.0;
     s1+=218.0;
    }
   }
  }
 }
}
if(i2<0.08518528938293457){
 if(i19<1.0486011505126953){
  if(i60<-0.0012906193733215332){
   if(i40<-5.316734313964844e-05){
    if(i36<1.0541303157806396){
     s0+=933.0;
    } else {
     s0+=238.0;
     s1+=8.0;
    }
   } else {
    if(i55<0.9998445510864258){
     s0+=35.0;
     s1+=132.0;
    } else {
     s0+=642.0;
     s1+=88.0;
    }
   }
  } else {
   if(i19<1.0410068035125732){
    if(i14<1.1146068572998047e-05){
     s0+=47143.0;
     s1+=23.0;
    } else {
     s0+=1357.0;
     s1+=17.0;
    }
   } else {
    if(i24<1.0095852613449097){
     s0+=5473.0;
     s1+=80.0;
    } else {
     s0+=16.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i8<0.0006325244903564453){
   if(i33<0.0014459392987191677){
    if(i7<-2.3406557374983095e-05){
     s0+=198.0;
     s1+=863.0;
    } else {
     s0+=5279.0;
     s1+=781.0;
    }
   } else {
    if(i58<0.010797359049320221){
     s0+=6761.0;
     s1+=181.0;
    } else {
     s0+=534.0;
     s1+=111.0;
    }
   }
  } else {
   if(i23<1.001577377319336){
    if(i59<1.0025975704193115){
     s0+=207.0;
     s1+=206.0;
    } else {
     s0+=302.0;
     s1+=24.0;
    }
   } else {
    if(i33<0.009070657193660736){
     s0+=10.0;
     s1+=631.0;
    } else {
     s0+=28.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0001379251480102539){
  if(i1<1.6689300537109375e-06){
   if(i70<-2.462658358126646e-06){
    if(i16<0.997888445854187){
     s0+=38.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i35<0.03982039541006088){
     s0+=653.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i55<0.9984529614448547){
    s0+=11.0;
   } else {
    s1+=110.0;
   }
  }
 } else {
  if(i0<0.11958423256874084){
   if(i50<0.046825528144836426){
    if(i9<1.1507277488708496){
     s0+=168.0;
     s1+=1910.0;
    } else {
     s0+=102.0;
     s1+=169.0;
    }
   } else {
    if(i50<0.0663118064403534){
     s0+=149.0;
     s1+=94.0;
    } else {
     s0+=419.0;
     s1+=24.0;
    }
   }
  } else {
   if(i17<0.001685795490629971){
    if(i27<0.003372511360794306){
     s0+=9.0;
     s1+=101.0;
    } else {
     s0+=186.0;
     s1+=47.0;
    }
   } else {
    if(i63<0.05454593896865845){
     s0+=43.0;
     s1+=9825.0;
    } else {
     s0+=131.0;
     s1+=1695.0;
    }
   }
  }
 }
}
if(i8<0.00042122602462768555){
 if(i3<0.08024245500564575){
  if(i19<1.0451585054397583){
   if(i25<0.000292076263576746){
    if(i60<-0.0016602575778961182){
     s0+=65.0;
     s1+=10.0;
    } else {
     s0+=47037.0;
     s1+=50.0;
    }
   } else {
    if(i38<0.0009475743281655014){
     s0+=2203.0;
     s1+=174.0;
    } else {
     s0+=4191.0;
     s1+=8.0;
    }
   }
  } else {
   if(i6<-4.106760025024414e-05){
    if(i4<0.9958740472793579){
     s0+=3787.0;
     s1+=45.0;
    } else {
     s0+=1185.0;
     s1+=103.0;
    }
   } else {
    if(i36<1.1036889553070068){
     s0+=3848.0;
     s1+=1412.0;
    } else {
     s0+=5340.0;
     s1+=218.0;
    }
   }
  }
 } else {
  if(i17<0.0017457695212215185){
   if(i59<0.9998031854629517){
    if(i71<8.595007238909602e-05){
     s0+=62.0;
     s1+=195.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i67<0.0005019507370889187){
     s0+=538.0;
     s1+=30.0;
    } else {
     s0+=21.0;
     s1+=65.0;
    }
   }
  } else {
   if(i14<-1.633167266845703e-05){
    if(i11<1.0473206043243408){
     s0+=61.0;
     s1+=5.0;
    } else {
     s0+=285.0;
    }
   } else {
    if(i50<0.054368793964385986){
     s0+=86.0;
     s1+=2436.0;
    } else {
     s0+=298.0;
     s1+=980.0;
    }
   }
  }
 }
} else {
 if(i1<0.0005483627319335938){
  if(i9<1.1205039024353027){
   if(i6<-1.4901161193847656e-06){
    if(i51<0.009054996073246002){
     s0+=572.0;
     s1+=18.0;
    } else {
     s0+=60.0;
     s1+=25.0;
    }
   } else {
    if(i0<0.11656665802001953){
     s0+=858.0;
     s1+=220.0;
    } else {
     s0+=11.0;
     s1+=120.0;
    }
   }
  } else {
   if(i64<0.00029066638671793044){
    s0+=36.0;
   } else {
    if(i65<6.735699571436271e-06){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=359.0;
    }
   }
  }
 } else {
  if(i17<0.0018193013966083527){
   if(i4<1.006812334060669){
    if(i71<7.958157220855355e-05){
     s1+=2.0;
    } else {
     s0+=157.0;
    }
   } else {
    s1+=81.0;
   }
  } else {
   if(i44<0.023335836827754974){
    if(i18<6.258487701416016e-06){
     s0+=227.0;
     s1+=276.0;
    } else {
     s0+=9.0;
     s1+=2425.0;
    }
   } else {
    if(i7<-8.822545350994915e-05){
     s0+=2.0;
     s1+=7492.0;
    } else {
     s0+=4.0;
     s1+=472.0;
    }
   }
  }
 }
}
if(i4<1.0024782419204712){
 if(i3<0.07771864533424377){
  if(i27<0.0003001471050083637){
   if(i25<0.00028590369038283825){
    if(i26<1.0073931217193604){
     s0+=52083.0;
     s1+=180.0;
    } else {
     s0+=208.0;
     s1+=47.0;
    }
   } else {
    if(i39<0.0013813942205160856){
     s0+=1758.0;
     s1+=311.0;
    } else {
     s0+=2701.0;
     s1+=12.0;
    }
   }
  } else {
   if(i4<0.9978723526000977){
    if(i0<0.07082724571228027){
     s0+=7838.0;
     s1+=226.0;
    } else {
     s0+=269.0;
     s1+=78.0;
    }
   } else {
    if(i44<0.011682340875267982){
     s0+=3156.0;
     s1+=532.0;
    } else {
     s0+=1229.0;
     s1+=700.0;
    }
   }
  }
 } else {
  if(i46<0.056368112564086914){
   if(i4<0.9962934255599976){
    if(i19<1.0706243515014648){
     s0+=112.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   } else {
    if(i17<0.0014469076413661242){
     s0+=25.0;
     s1+=90.0;
    } else {
     s0+=41.0;
     s1+=1967.0;
    }
   }
  } else {
   if(i3<0.12464198470115662){
    if(i7<-1.4149609341984615e-05){
     s0+=438.0;
     s1+=247.0;
    } else {
     s0+=628.0;
     s1+=38.0;
    }
   } else {
    if(i8<-0.0004030168056488037){
     s0+=214.0;
    } else {
     s0+=360.0;
     s1+=1356.0;
    }
   }
  }
 }
} else {
 if(i4<1.004129409790039){
  if(i7<-4.376960714580491e-05){
   if(i59<1.0022634267807007){
    if(i19<1.0432554483413696){
     s0+=12.0;
     s1+=6.0;
    } else {
     s0+=61.0;
     s1+=1178.0;
    }
   } else {
    if(i40<0.0002410411834716797){
     s0+=31.0;
    } else {
     s0+=30.0;
     s1+=70.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    if(i44<0.0038601201958954334){
     s0+=8.0;
    } else {
     s1+=139.0;
    }
   } else {
    if(i18<-1.3053417205810547e-05){
     s1+=15.0;
    } else {
     s0+=154.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.03515905141830444){
   if(i33<0.010581652633845806){
    if(i49<-0.008872002363204956){
     s1+=87.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.8264369964599609){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i26<0.9937856793403625){
    if(i32<1.613681674003601){
     s0+=2.0;
     s1+=534.0;
    } else {
     s0+=12.0;
     s1+=68.0;
    }
   } else {
    if(i57<0.00011023396655218676){
     s1+=8070.0;
    } else {
     s0+=12.0;
     s1+=867.0;
    }
   }
  }
 }
}
if(i27<0.00033466966124251485){
 if(i0<0.0832170844078064){
  if(i6<4.184246063232422e-05){
   if(i15<1.007529616355896){
    if(i22<0.026294823735952377){
     s0+=56309.0;
     s1+=384.0;
    } else {
     s0+=847.0;
     s1+=128.0;
    }
   } else {
    if(i4<1.001598596572876){
     s0+=630.0;
     s1+=66.0;
    } else {
     s0+=111.0;
     s1+=129.0;
    }
   }
  } else {
   if(i40<0.00019341707229614258){
    if(i17<0.004004445392638445){
     s0+=226.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i28<1.0718790292739868){
     s0+=14.0;
    } else {
     s1+=227.0;
    }
   }
  }
 } else {
  if(i6<-3.9130449295043945e-05){
   if(i26<0.971394419670105){
    s1+=2.0;
   } else {
    if(i56<-0.00020581483840942383){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i4<0.9969255924224854){
    s0+=7.0;
   } else {
    if(i39<0.00037931170663796365){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=917.0;
    }
   }
  }
 }
} else {
 if(i23<1.0011863708496094){
  if(i20<0.9854044318199158){
   if(i31<0.09271365404129028){
    if(i4<1.0000224113464355){
     s0+=5650.0;
     s1+=195.0;
    } else {
     s0+=83.0;
     s1+=113.0;
    }
   } else {
    if(i41<0.9993038177490234){
     s0+=77.0;
     s1+=6.0;
    } else {
     s0+=21.0;
     s1+=210.0;
    }
   }
  } else {
   if(i67<0.000470328435767442){
    if(i0<0.08388203382492065){
     s0+=4431.0;
     s1+=639.0;
    } else {
     s0+=947.0;
     s1+=1658.0;
    }
   } else {
    if(i2<0.09942927956581116){
     s0+=859.0;
     s1+=664.0;
    } else {
     s0+=86.0;
     s1+=1287.0;
    }
   }
  }
 } else {
  if(i0<0.07047232985496521){
   if(i7<-5.0055903557222337e-05){
    if(i6<1.3887882232666016e-05){
     s0+=45.0;
     s1+=13.0;
    } else {
     s0+=39.0;
     s1+=409.0;
    }
   } else {
    if(i28<1.1386182308197021){
     s0+=6.0;
     s1+=62.0;
    } else {
     s0+=382.0;
     s1+=27.0;
    }
   }
  } else {
   if(i6<3.057718276977539e-05){
    if(i8<0.00015369057655334473){
     s0+=23.0;
     s1+=447.0;
    } else {
     s0+=125.0;
     s1+=227.0;
    }
   } else {
    if(i3<0.1274004876613617){
     s0+=72.0;
     s1+=1227.0;
    } else {
     s0+=8.0;
     s1+=8098.0;
    }
   }
  }
 }
}
if(i4<1.0024771690368652){
 if(i26<1.0066334009170532){
  if(i3<0.08155691623687744){
   if(i9<1.0398929119110107){
    if(i25<0.00028150869184173644){
     s0+=49078.0;
     s1+=134.0;
    } else {
     s0+=9504.0;
     s1+=441.0;
    }
   } else {
    if(i50<-0.027738362550735474){
     s0+=1390.0;
     s1+=573.0;
    } else {
     s0+=7730.0;
     s1+=854.0;
    }
   }
  } else {
   if(i37<0.05404996871948242){
    if(i1<-0.0007664263248443604){
     s0+=95.0;
     s1+=55.0;
    } else {
     s0+=62.0;
     s1+=1492.0;
    }
   } else {
    if(i0<0.13008856773376465){
     s0+=600.0;
     s1+=116.0;
    } else {
     s0+=284.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i2<0.08679082989692688){
   if(i17<0.004176194313913584){
    if(i36<1.083398699760437){
     s0+=85.0;
     s1+=143.0;
    } else {
     s0+=1324.0;
     s1+=37.0;
    }
   } else {
    if(i36<1.1747405529022217){
     s1+=117.0;
    } else {
     s0+=75.0;
    }
   }
  } else {
   if(i17<0.0017679319716989994){
    if(i11<1.0609493255615234){
     s0+=3.0;
     s1+=56.0;
    } else {
     s0+=264.0;
     s1+=9.0;
    }
   } else {
    if(i41<0.9988276958465576){
     s0+=74.0;
     s1+=9.0;
    } else {
     s0+=123.0;
     s1+=1382.0;
    }
   }
  }
 }
} else {
 if(i25<0.0001930308062583208){
  if(i40<0.00017827749252319336){
   s0+=82.0;
  } else {
   if(i3<0.0476478636264801){
    s0+=9.0;
   } else {
    if(i35<0.00016946534742601216){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i4<1.004243016242981){
   if(i3<0.12204885482788086){
    if(i60<0.002429574728012085){
     s0+=118.0;
     s1+=574.0;
    } else {
     s0+=137.0;
     s1+=61.0;
    }
   } else {
    if(i17<0.0023968953173607588){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i57<0.0003171541029587388){
    if(i10<3.6835670471191406e-05){
     s0+=31.0;
     s1+=574.0;
    } else {
     s0+=3.0;
     s1+=8999.0;
    }
   } else {
    if(i47<0.3590390384197235){
     s0+=5.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i8<0.0007049441337585449){
  if(i25<0.0003066366771236062){
   if(i7<-4.590597382048145e-05){
    if(i42<1.067420482635498){
     s0+=241.0;
    } else {
     s0+=99.0;
     s1+=124.0;
    }
   } else {
    if(i56<-0.004692941904067993){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=52967.0;
     s1+=227.0;
    }
   }
  } else {
   if(i3<0.07722920179367065){
    if(i28<1.2371783256530762){
     s0+=3893.0;
     s1+=1100.0;
    } else {
     s0+=7748.0;
     s1+=73.0;
    }
   } else {
    if(i19<1.049466609954834){
     s0+=90.0;
     s1+=18.0;
    } else {
     s0+=66.0;
     s1+=618.0;
    }
   }
  }
 } else {
  if(i53<0.002575403079390526){
   if(i32<1.0621178150177002){
    s0+=11.0;
   } else {
    if(i18<-0.0002251267433166504){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=384.0;
    }
   }
  } else {
   if(i18<-0.0003712177276611328){
    if(i53<0.005992117803543806){
     s0+=172.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i19<1.0599582195281982){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=176.0;
    }
   }
  }
 }
} else {
 if(i18<0.00010401010513305664){
  if(i3<0.10566562414169312){
   if(i48<0.0038263797760009766){
    if(i0<0.06340453028678894){
     s0+=2716.0;
     s1+=492.0;
    } else {
     s0+=614.0;
     s1+=873.0;
    }
   } else {
    if(i13<0.981827974319458){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=1511.0;
     s1+=66.0;
    }
   }
  } else {
   if(i37<0.0698479413986206){
    if(i22<0.012290442362427711){
     s0+=28.0;
     s1+=91.0;
    } else {
     s0+=28.0;
     s1+=2232.0;
    }
   } else {
    if(i38<0.00595299806445837){
     s0+=607.0;
     s1+=228.0;
    } else {
     s0+=54.0;
     s1+=687.0;
    }
   }
  }
 } else {
  if(i43<-1.7257520994462539e-06){
   if(i7<-4.398620512802154e-05){
    if(i14<-1.2576580047607422e-05){
     s0+=16.0;
    } else {
     s0+=26.0;
     s1+=9466.0;
    }
   } else {
    if(i64<0.000464484968688339){
     s0+=157.0;
     s1+=115.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i2<0.09792733192443848){
    s0+=37.0;
   } else {
    if(i48<0.0017307400703430176){
     s1+=6.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i3<0.07769986987113953){
 if(i12<1.002894639968872){
  if(i36<1.0557184219360352){
   s0+=43144.0;
  } else {
   if(i12<1.0005640983581543){
    if(i38<0.0010094244498759508){
     s0+=5411.0;
     s1+=1001.0;
    } else {
     s0+=17279.0;
     s1+=368.0;
    }
   } else {
    if(i33<0.0007860271725803614){
     s0+=367.0;
     s1+=508.0;
    } else {
     s0+=1992.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i6<3.153085708618164e-05){
   if(i11<1.0987788438796997){
    if(i28<1.2385294437408447){
     s0+=69.0;
     s1+=37.0;
    } else {
     s0+=904.0;
     s1+=16.0;
    }
   } else {
    if(i26<1.0137860774993896){
     s1+=24.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i4<1.0042428970336914){
    if(i36<1.1345939636230469){
     s0+=3.0;
     s1+=183.0;
    } else {
     s0+=161.0;
     s1+=99.0;
    }
   } else {
    if(i33<0.010865110903978348){
     s0+=3.0;
     s1+=681.0;
    } else {
     s0+=14.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i1<0.00014668703079223633){
  if(i14<-1.4722347259521484e-05){
   if(i8<-0.00038558244705200195){
    if(i17<0.006247739307582378){
     s0+=413.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i44<0.02941342070698738){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i2<0.11049365997314453){
    if(i31<0.06722980737686157){
     s0+=91.0;
     s1+=451.0;
    } else {
     s0+=506.0;
     s1+=123.0;
    }
   } else {
    if(i34<0.0011701887706294656){
     s0+=248.0;
     s1+=197.0;
    } else {
     s0+=138.0;
     s1+=1176.0;
    }
   }
  }
 } else {
  if(i7<-4.230719059705734e-05){
   if(i18<-7.68899917602539e-06){
    if(i22<0.02011861652135849){
     s0+=100.0;
     s1+=83.0;
    } else {
     s0+=50.0;
     s1+=1264.0;
    }
   } else {
    if(i18<1.1146068572998047e-05){
     s0+=5.0;
     s1+=142.0;
    } else {
     s0+=2.0;
     s1+=9986.0;
    }
   }
  } else {
   if(i36<1.1089794635772705){
    if(i33<0.00028247153386473656){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=289.0;
    }
   } else {
    if(i0<0.24364876747131348){
     s0+=275.0;
     s1+=122.0;
    } else {
     s0+=8.0;
     s1+=106.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i5<0.0811576247215271){
  if(i20<1.0061919689178467){
   if(i1<0.0006622374057769775){
    if(i69<0.0007082019001245499){
     s0+=58074.0;
     s1+=664.0;
    } else {
     s0+=6756.0;
     s1+=948.0;
    }
   } else {
    if(i16<1.0004831552505493){
     s0+=35.0;
    } else {
     s0+=12.0;
     s1+=229.0;
    }
   }
  } else {
   if(i0<0.05846726894378662){
    if(i43<-1.417127077729674e-05){
     s0+=1.0;
     s1+=66.0;
    } else {
     s0+=297.0;
    }
   } else {
    if(i53<0.0008358109043911099){
     s0+=14.0;
     s1+=52.0;
    } else {
     s0+=2.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i60<0.00350382924079895){
   if(i42<1.0682156085968018){
    if(i55<0.9999390840530396){
     s0+=13.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i6<-6.693601608276367e-05){
     s0+=16.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=506.0;
    }
   }
  } else {
   s0+=15.0;
  }
 }
} else {
 if(i34<0.005458090454339981){
  if(i1<0.00018593668937683105){
   if(i7<-1.151966080215061e-05){
    if(i38<0.0017890790477395058){
     s0+=328.0;
     s1+=712.0;
    } else {
     s0+=980.0;
     s1+=494.0;
    }
   } else {
    if(i40<-0.00013390183448791504){
     s0+=1000.0;
    } else {
     s0+=1980.0;
     s1+=242.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i39<0.00024918781127780676){
     s0+=63.0;
    } else {
     s0+=145.0;
     s1+=2613.0;
    }
   } else {
    if(i3<0.12769749760627747){
     s0+=593.0;
     s1+=112.0;
    } else {
     s0+=51.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i2<0.1025514006614685){
   if(i48<-0.0011253952980041504){
    if(i50<-0.05266609787940979){
     s0+=7.0;
     s1+=314.0;
    } else {
     s0+=58.0;
     s1+=95.0;
    }
   } else {
    if(i58<0.0030299294739961624){
     s0+=523.0;
     s1+=29.0;
    } else {
     s0+=6.0;
     s1+=22.0;
    }
   }
  } else {
   if(i19<1.0765022039413452){
    if(i4<1.0014498233795166){
     s0+=21.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i10<0.00015026330947875977){
     s0+=90.0;
     s1+=1680.0;
    } else {
     s0+=1.0;
     s1+=7784.0;
    }
   }
  }
 }
}
if(i29<1.0437428951263428){
 if(i23<1.0041193962097168){
  if(i5<0.07382556796073914){
   if(i58<0.0017023554537445307){
    if(i11<1.0410068035125732){
     s0+=58526.0;
     s1+=694.0;
    } else {
     s0+=2641.0;
     s1+=550.0;
    }
   } else {
    if(i6<2.0384788513183594e-05){
     s0+=5218.0;
     s1+=849.0;
    } else {
     s0+=163.0;
     s1+=307.0;
    }
   }
  } else {
   if(i6<-4.410743713378906e-05){
    if(i37<0.033058226108551025){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=175.0;
     s1+=16.0;
    }
   } else {
    if(i44<0.005168158560991287){
     s0+=51.0;
     s1+=28.0;
    } else {
     s0+=76.0;
     s1+=774.0;
    }
   }
  }
 } else {
  if(i4<1.0024800300598145){
   if(i3<0.0788196325302124){
    if(i13<1.010789394378662){
     s0+=469.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   } else {
    if(i18<-0.00015997886657714844){
     s0+=3.0;
     s1+=10.0;
    } else {
     s1+=129.0;
    }
   }
  } else {
   if(i7<-5.1950155466329306e-05){
    if(i16<1.0011045932769775){
     s0+=14.0;
     s1+=96.0;
    } else {
     s0+=4.0;
     s1+=1672.0;
    }
   } else {
    if(i16<1.0020445585250854){
     s0+=54.0;
     s1+=9.0;
    } else {
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i7<-4.15501490351744e-05){
  if(i44<0.017956532537937164){
   if(i10<0.0008087456226348877){
    if(i30<1.0041558742523193){
     s0+=403.0;
     s1+=121.0;
    } else {
     s0+=33.0;
     s1+=135.0;
    }
   } else {
    if(i38<0.000306733010802418){
     s0+=11.0;
    } else {
     s0+=21.0;
     s1+=1315.0;
    }
   }
  } else {
   if(i20<0.9853986501693726){
    if(i19<1.0819685459136963){
     s0+=55.0;
    } else {
     s0+=16.0;
     s1+=197.0;
    }
   } else {
    if(i19<1.057525873184204){
     s0+=6.0;
    } else {
     s0+=52.0;
     s1+=9139.0;
    }
   }
  }
 } else {
  if(i13<1.0253968238830566){
   if(i3<0.09643164277076721){
    if(i28<1.1013743877410889){
     s0+=573.0;
     s1+=228.0;
    } else {
     s0+=1644.0;
     s1+=35.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=289.0;
     s1+=512.0;
    } else {
     s0+=542.0;
     s1+=153.0;
    }
   }
  } else {
   if(i2<0.17990481853485107){
    if(i53<0.001105062779970467){
     s0+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=101.0;
   }
  }
 }
}
if(i9<1.055552363395691){
 if(i3<0.08108299970626831){
  if(i6<4.0471553802490234e-05){
   if(i26<1.0073918104171753){
    if(i69<0.0007084680255502462){
     s0+=57453.0;
     s1+=436.0;
    } else {
     s0+=6285.0;
     s1+=702.0;
    }
   } else {
    if(i36<1.0922304391860962){
     s0+=8.0;
     s1+=147.0;
    } else {
     s0+=217.0;
     s1+=1.0;
    }
   }
  } else {
   if(i55<0.9990987777709961){
    s0+=214.0;
   } else {
    if(i36<1.1353518962860107){
     s1+=198.0;
    } else {
     s0+=65.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i16<0.998519778251648){
   if(i26<1.0043362379074097){
    if(i7<-3.698284854181111e-05){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=133.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i59<1.002993106842041){
    if(i10<-0.0019488632678985596){
     s0+=34.0;
     s1+=38.0;
    } else {
     s0+=36.0;
     s1+=759.0;
    }
   } else {
    if(i11<1.021021842956543){
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i23<1.001889705657959){
  if(i1<0.0004850625991821289){
   if(i39<0.010496939532458782){
    if(i14<-1.4722347259521484e-05){
     s0+=996.0;
     s1+=3.0;
    } else {
     s0+=4511.0;
     s1+=2144.0;
    }
   } else {
    if(i2<0.0789341926574707){
     s0+=194.0;
     s1+=43.0;
    } else {
     s0+=7.0;
     s1+=547.0;
    }
   }
  } else {
   if(i44<0.023330170661211014){
    if(i41<1.0008679628372192){
     s0+=31.0;
     s1+=123.0;
    } else {
     s0+=189.0;
     s1+=116.0;
    }
   } else {
    if(i20<0.9921137094497681){
     s0+=4.0;
     s1+=307.0;
    } else {
     s1+=1093.0;
    }
   }
  }
 } else {
  if(i1<0.0004718899726867676){
   if(i2<0.08540788292884827){
    if(i34<0.0011097086826339364){
     s0+=15.0;
     s1+=71.0;
    } else {
     s0+=285.0;
     s1+=37.0;
    }
   } else {
    if(i55<0.9999086856842041){
     s0+=2.0;
     s1+=378.0;
    } else {
     s0+=43.0;
     s1+=164.0;
    }
   }
  } else {
   if(i3<0.07725197076797485){
    if(i70<-4.416501724335831e-06){
     s0+=20.0;
     s1+=788.0;
    } else {
     s0+=91.0;
     s1+=19.0;
    }
   } else {
    if(i3<0.12589031457901){
     s0+=51.0;
     s1+=951.0;
    } else {
     s0+=9.0;
     s1+=8217.0;
    }
   }
  }
 }
}
if(i2<0.08355346322059631){
 if(i23<1.0046188831329346){
  if(i49<-0.004765510559082031){
   if(i4<0.9975559115409851){
    if(i2<0.043902575969696045){
     s0+=2115.0;
     s1+=61.0;
    } else {
     s0+=191.0;
     s1+=82.0;
    }
   } else {
    if(i24<0.9906101226806641){
     s0+=1017.0;
     s1+=722.0;
    } else {
     s0+=1289.0;
     s1+=182.0;
    }
   }
  } else {
   if(i9<1.042891263961792){
    if(i36<1.0556960105895996){
     s0+=40616.0;
    } else {
     s0+=16934.0;
     s1+=388.0;
    }
   } else {
    if(i32<1.1034480333328247){
     s0+=1946.0;
     s1+=680.0;
    } else {
     s0+=4305.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i40<0.0001556873321533203){
   if(i50<-0.03205758333206177){
    if(i2<0.028773963451385498){
     s0+=8.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i7<-6.25327811576426e-05){
     s0+=6.0;
     s1+=11.0;
    } else {
     s0+=398.0;
     s1+=9.0;
    }
   }
  } else {
   if(i33<0.0015467345947399735){
    s1+=404.0;
   } else {
    if(i41<1.0009844303131104){
     s0+=62.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=207.0;
    }
   }
  }
 }
} else {
 if(i8<-0.0003960132598876953){
  if(i57<0.00018563203047960997){
   if(i1<-0.0004825592041015625){
    if(i49<0.025212258100509644){
     s0+=544.0;
    } else {
     s0+=114.0;
     s1+=1.0;
    }
   } else {
    if(i1<-0.00047582387924194336){
     s1+=3.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i0<0.10126972198486328){
    if(i49<-0.0017571747303009033){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i12<1.003002643585205){
   if(i10<0.0007004141807556152){
    if(i57<2.9514922061935067e-05){
     s0+=574.0;
     s1+=389.0;
    } else {
     s0+=642.0;
     s1+=2402.0;
    }
   } else {
    if(i7<-2.2223453925107606e-05){
     s0+=24.0;
     s1+=1765.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i17<0.0025380640290677547){
    if(i52<1.0422897338867188){
     s0+=7.0;
     s1+=191.0;
    } else {
     s0+=45.0;
     s1+=28.0;
    }
   } else {
    if(i6<3.9577484130859375e-05){
     s0+=63.0;
     s1+=414.0;
    } else {
     s0+=29.0;
     s1+=9081.0;
    }
   }
  }
 }
}
if(i0<0.08502185344696045){
 if(i4<1.0024693012237549){
  if(i25<0.0002816393389366567){
   if(i56<-0.004793614149093628){
    s1+=28.0;
   } else {
    if(i69<0.0007905664388090372){
     s0+=52170.0;
     s1+=169.0;
    } else {
     s0+=400.0;
     s1+=66.0;
    }
   }
  } else {
   if(i39<0.0020231432281434536){
    if(i34<0.00041723382310010493){
     s0+=3200.0;
     s1+=66.0;
    } else {
     s0+=2738.0;
     s1+=1473.0;
    }
   } else {
    if(i49<-0.010330438613891602){
     s0+=2029.0;
     s1+=285.0;
    } else {
     s0+=9012.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i43<-1.4685972928418778e-05){
   if(i28<1.5682398080825806){
    if(i50<0.04369816184043884){
     s0+=13.0;
     s1+=923.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i35<0.01002790778875351){
     s0+=74.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=56.0;
    }
   }
  } else {
   if(i61<1.0024226903915405){
    if(i50<-0.03158283233642578){
     s1+=3.0;
    } else {
     s0+=161.0;
    }
   } else {
    if(i70<-4.270041699783178e-06){
     s1+=31.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i8<-0.00041115283966064453){
  if(i57<0.00019624768174253404){
   s0+=385.0;
  } else {
   if(i9<1.045822024345398){
    s0+=4.0;
   } else {
    if(i33<0.009213707409799099){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i17<0.0017791546415537596){
   if(i46<0.06249991059303284){
    if(i60<0.0038892626762390137){
     s0+=14.0;
     s1+=229.0;
    } else {
     s0+=28.0;
     s1+=13.0;
    }
   } else {
    if(i8<-0.0002716481685638428){
     s0+=6.0;
     s1+=57.0;
    } else {
     s0+=487.0;
     s1+=59.0;
    }
   }
  } else {
   if(i7<-4.1136994695989415e-05){
    if(i23<1.0007812976837158){
     s0+=182.0;
     s1+=2088.0;
    } else {
     s0+=52.0;
     s1+=9889.0;
    }
   } else {
    if(i52<1.0295621156692505){
     s0+=104.0;
     s1+=1100.0;
    } else {
     s0+=268.0;
     s1+=264.0;
    }
   }
  }
 }
}
if(i6<3.796815872192383e-05){
 if(i5<0.07131022214889526){
  if(i2<0.08210253715515137){
   if(i60<-0.00129622220993042){
    if(i3<0.039264798164367676){
     s0+=4837.0;
     s1+=455.0;
    } else {
     s0+=813.0;
     s1+=453.0;
    }
   } else {
    if(i19<1.0486011505126953){
     s0+=53462.0;
     s1+=110.0;
    } else {
     s0+=8679.0;
     s1+=953.0;
    }
   }
  } else {
   if(i23<0.9930689334869385){
    if(i55<0.9997646808624268){
     s0+=300.0;
     s1+=1.0;
    } else {
     s0+=77.0;
     s1+=34.0;
    }
   } else {
    if(i32<1.1819204092025757){
     s0+=30.0;
     s1+=669.0;
    } else {
     s0+=58.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i3<0.10648879408836365){
   if(i31<0.06137087941169739){
    if(i49<0.015945404767990112){
     s0+=62.0;
     s1+=356.0;
    } else {
     s0+=44.0;
     s1+=2.0;
    }
   } else {
    if(i53<0.001428675721399486){
     s0+=724.0;
     s1+=62.0;
    } else {
     s0+=377.0;
     s1+=243.0;
    }
   }
  } else {
   if(i62<-0.02787870168685913){
    if(i7<-3.8893515011295676e-05){
     s0+=22.0;
     s1+=492.0;
    } else {
     s0+=553.0;
     s1+=189.0;
    }
   } else {
    if(i43<-1.624376295694674e-06){
     s0+=23.0;
     s1+=1351.0;
    } else {
     s0+=81.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i25<0.00024223704531323165){
  if(i71<9.058500290848315e-05){
   if(i33<0.00259524118155241){
    s1+=55.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i17<0.004195970483124256){
    if(i34<0.003374515101313591){
     s0+=296.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i38<0.00041680963477119803){
   s0+=66.0;
  } else {
   if(i7<-4.32968299719505e-05){
    if(i2<0.045298248529434204){
     s0+=93.0;
     s1+=228.0;
    } else {
     s0+=180.0;
     s1+=11191.0;
    }
   } else {
    if(i57<-8.57185477798339e-06){
     s0+=103.0;
     s1+=51.0;
    } else {
     s0+=11.0;
     s1+=233.0;
    }
   }
  }
 }
}
if(i0<0.08226051926612854){
 if(i23<1.0050251483917236){
  if(i1<0.0005654096603393555){
   if(i48<-0.0015700161457061768){
    if(i2<0.04007643461227417){
     s0+=3343.0;
     s1+=406.0;
    } else {
     s0+=580.0;
     s1+=388.0;
    }
   } else {
    if(i28<1.0856719017028809){
     s0+=37206.0;
    } else {
     s0+=27343.0;
     s1+=1271.0;
    }
   }
  } else {
   if(i50<-0.029211223125457764){
    if(i69<0.0005979541456326842){
     s0+=18.0;
     s1+=10.0;
    } else {
     s0+=10.0;
     s1+=172.0;
    }
   } else {
    if(i64<0.0012439636047929525){
     s0+=183.0;
     s1+=169.0;
    } else {
     s0+=130.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i6<3.8683414459228516e-05){
   if(i42<1.1016805171966553){
    s1+=51.0;
   } else {
    if(i30<0.9773085117340088){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=349.0;
     s1+=2.0;
    }
   }
  } else {
   if(i14<2.2113323211669922e-05){
    if(i28<1.2160128355026245){
     s1+=83.0;
    } else {
     s0+=46.0;
     s1+=5.0;
    }
   } else {
    if(i2<0.0035950839519500732){
     s0+=5.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=523.0;
    }
   }
  }
 }
} else {
 if(i8<-0.0004024505615234375){
  if(i33<0.0068063633516430855){
   s0+=435.0;
  } else {
   if(i1<-0.0018131434917449951){
    if(i25<0.011932682245969772){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=11.0;
   }
  }
 } else {
  if(i8<0.000483095645904541){
   if(i22<0.024444159120321274){
    if(i54<0.00435185432434082){
     s0+=255.0;
     s1+=1236.0;
    } else {
     s0+=493.0;
     s1+=146.0;
    }
   } else {
    if(i39<0.007856655865907669){
     s0+=222.0;
     s1+=1213.0;
    } else {
     s0+=15.0;
     s1+=1695.0;
    }
   }
  } else {
   if(i2<0.1306760609149933){
    if(i66<-0.0051193758845329285){
     s0+=199.0;
     s1+=101.0;
    } else {
     s0+=17.0;
     s1+=1177.0;
    }
   } else {
    if(i4<1.0023486614227295){
     s0+=21.0;
     s1+=408.0;
    } else {
     s0+=14.0;
     s1+=8259.0;
    }
   }
  }
 }
}
if(i20<1.0056138038635254){
 if(i9<1.0452277660369873){
  if(i0<0.08264222741127014){
   if(i4<1.0025081634521484){
    if(i35<0.00031217283685691655){
     s0+=46494.0;
     s1+=48.0;
    } else {
     s0+=15528.0;
     s1+=785.0;
    }
   } else {
    if(i17<0.002550804987549782){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=61.0;
    }
   }
  } else {
   if(i36<1.0607655048370361){
    if(i13<1.0019116401672363){
     s0+=85.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   } else {
    if(i8<-0.0004315376281738281){
     s0+=28.0;
    } else {
     s0+=57.0;
     s1+=307.0;
    }
   }
  }
 } else {
  if(i22<0.02195768430829048){
   if(i56<-0.0022906064987182617){
    if(i3<0.02128651738166809){
     s0+=622.0;
     s1+=63.0;
    } else {
     s0+=367.0;
     s1+=430.0;
    }
   } else {
    if(i3<0.071656733751297){
     s0+=4485.0;
     s1+=255.0;
    } else {
     s0+=945.0;
     s1+=451.0;
    }
   }
  } else {
   if(i16<0.9986175298690796){
    if(i32<1.453708291053772){
     s0+=550.0;
     s1+=14.0;
    } else {
     s0+=27.0;
     s1+=21.0;
    }
   } else {
    if(i17<0.0033787076827138662){
     s0+=613.0;
     s1+=756.0;
    } else {
     s0+=528.0;
     s1+=3570.0;
    }
   }
  }
 }
} else {
 if(i7<-4.351964525994845e-05){
  if(i2<0.0647607147693634){
   if(i36<1.187422752380371){
    if(i61<0.9980416297912598){
     s0+=8.0;
     s1+=5.0;
    } else {
     s1+=242.0;
    }
   } else {
    if(i51<0.02091866172850132){
     s0+=75.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i14<-1.2040138244628906e-05){
    s0+=3.0;
   } else {
    if(i20<1.0096514225006104){
     s0+=13.0;
     s1+=1068.0;
    } else {
     s1+=8613.0;
    }
   }
  }
 } else {
  if(i42<1.1525394916534424){
   if(i64<6.948452210053802e-05){
    s0+=12.0;
   } else {
    s1+=186.0;
   }
  } else {
   if(i12<0.9982556104660034){
    if(i0<0.11894747614860535){
     s0+=64.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i39<0.008880937471985817){
     s0+=713.0;
     s1+=17.0;
    } else {
     s0+=22.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i1<0.0005473494529724121){
 if(i22<0.022495804354548454){
  if(i0<0.08227401971817017){
   if(i67<0.0002850854361895472){
    if(i4<1.0009911060333252){
     s0+=54826.0;
     s1+=226.0;
    } else {
     s0+=2744.0;
     s1+=276.0;
    }
   } else {
    if(i6<-1.823902130126953e-05){
     s0+=4301.0;
     s1+=290.0;
    } else {
     s0+=1007.0;
     s1+=340.0;
    }
   }
  } else {
   if(i7<-1.4555855159414932e-05){
    if(i66<-0.005187253002077341){
     s0+=272.0;
     s1+=117.0;
    } else {
     s0+=92.0;
     s1+=778.0;
    }
   } else {
    if(i15<0.9828698635101318){
     s0+=118.0;
     s1+=69.0;
    } else {
     s0+=537.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i20<0.9885786771774292){
   if(i17<0.015730660408735275){
    if(i14<1.1324882507324219e-06){
     s0+=3988.0;
     s1+=93.0;
    } else {
     s0+=1231.0;
     s1+=254.0;
    }
   } else {
    if(i2<0.017253577709197998){
     s0+=92.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   }
  } else {
   if(i3<0.0557745099067688){
    if(i28<1.255998969078064){
     s0+=469.0;
     s1+=397.0;
    } else {
     s0+=383.0;
     s1+=34.0;
    }
   } else {
    if(i16<0.9980270862579346){
     s0+=118.0;
    } else {
     s0+=426.0;
     s1+=2371.0;
    }
   }
  }
 }
} else {
 if(i33<0.0005219806917011738){
  if(i64<0.0005444732960313559){
   s1+=7.0;
  } else {
   s0+=165.0;
  }
 } else {
  if(i17<0.0022614020854234695){
   if(i43<-1.4807534171268344e-05){
    if(i65<5.045471880293917e-06){
     s1+=157.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    if(i18<-1.1414289474487305e-05){
     s1+=7.0;
    } else {
     s0+=160.0;
    }
   }
  } else {
   if(i44<0.022713422775268555){
    if(i28<1.5682398080825806){
     s0+=89.0;
     s1+=2697.0;
    } else {
     s0+=150.0;
     s1+=104.0;
    }
   } else {
    if(i18<-0.00013196468353271484){
     s0+=5.0;
     s1+=437.0;
    } else {
     s1+=8250.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i8<0.0005410313606262207){
  if(i19<1.0485899448394775){
   if(i42<1.067622423171997){
    if(i48<-0.0018005073070526123){
     s0+=588.0;
     s1+=6.0;
    } else {
     s0+=37392.0;
    }
   } else {
    if(i56<-0.002239018678665161){
     s0+=790.0;
     s1+=198.0;
    } else {
     s0+=17060.0;
     s1+=110.0;
    }
   }
  } else {
   if(i34<0.0008772681467235088){
    if(i7<-2.111767935275566e-05){
     s0+=187.0;
     s1+=565.0;
    } else {
     s0+=3684.0;
     s1+=643.0;
    }
   } else {
    if(i3<0.06342998147010803){
     s0+=8210.0;
     s1+=269.0;
    } else {
     s0+=716.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i6<4.184246063232422e-05){
   if(i25<0.01668744906783104){
    if(i42<1.1773569583892822){
     s0+=89.0;
     s1+=61.0;
    } else {
     s0+=709.0;
     s1+=56.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i49<0.008237570524215698){
    if(i4<1.0016140937805176){
     s0+=38.0;
     s1+=10.0;
    } else {
     s0+=96.0;
     s1+=807.0;
    }
   } else {
    if(i38<0.0027024170849472284){
     s1+=4.0;
    } else {
     s0+=48.0;
    }
   }
  }
 }
} else {
 if(i17<0.004804733209311962){
  if(i25<0.002171074505895376){
   if(i19<1.0494635105133057){
    if(i12<0.9973366260528564){
     s0+=92.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=25.0;
    }
   } else {
    if(i46<0.06261429190635681){
     s0+=41.0;
     s1+=1453.0;
    } else {
     s0+=189.0;
     s1+=358.0;
    }
   }
  } else {
   if(i46<0.04898524284362793){
    if(i36<1.0729994773864746){
     s0+=33.0;
    } else {
     s0+=5.0;
     s1+=303.0;
    }
   } else {
    if(i34<0.003823497798293829){
     s0+=757.0;
     s1+=49.0;
    } else {
     s0+=227.0;
     s1+=277.0;
    }
   }
  }
 } else {
  if(i32<1.0741386413574219){
   s0+=16.0;
  } else {
   if(i14<-1.990795135498047e-05){
    s0+=56.0;
   } else {
    if(i10<-0.0008341073989868164){
     s0+=158.0;
     s1+=1280.0;
    } else {
     s0+=25.0;
     s1+=10299.0;
    }
   }
  }
 }
}
if(i9<1.0527000427246094){
 if(i1<0.0006017386913299561){
  if(i9<1.041234016418457){
   if(i19<1.0417436361312866){
    if(i67<0.00026663424796424806){
     s0+=45765.0;
     s1+=17.0;
    } else {
     s0+=5246.0;
     s1+=100.0;
    }
   } else {
    if(i31<0.06259438395500183){
     s0+=9010.0;
     s1+=545.0;
    } else {
     s0+=112.0;
     s1+=84.0;
    }
   }
  } else {
   if(i7<-2.2946986064198427e-05){
    if(i38<0.0016067192191258073){
     s0+=129.0;
     s1+=442.0;
    } else {
     s0+=432.0;
     s1+=131.0;
    }
   } else {
    if(i56<-0.0013903677463531494){
     s0+=336.0;
     s1+=209.0;
    } else {
     s0+=3156.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i43<-1.4712621123180725e-05){
   if(i40<0.0004899501800537109){
    if(i10<-0.0016604065895080566){
     s0+=1.0;
     s1+=21.0;
    } else {
     s1+=333.0;
    }
   } else {
    if(i24<0.9262791872024536){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i44<0.009257785975933075){
    if(i5<0.07371988892555237){
     s0+=122.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=16.0;
   }
  }
 }
} else {
 if(i2<0.09208622574806213){
  if(i20<1.0064904689788818){
   if(i7<-1.6918627807172015e-05){
    if(i28<1.2371783256530762){
     s0+=66.0;
     s1+=504.0;
    } else {
     s0+=1778.0;
     s1+=562.0;
    }
   } else {
    if(i24<0.9876830577850342){
     s0+=541.0;
     s1+=211.0;
    } else {
     s0+=2939.0;
     s1+=130.0;
    }
   }
  } else {
   if(i35<0.0012959499144926667){
    if(i36<1.1493083238601685){
     s1+=584.0;
    } else {
     s0+=37.0;
     s1+=4.0;
    }
   } else {
    if(i69<0.001139331143349409){
     s0+=293.0;
     s1+=14.0;
    } else {
     s0+=20.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i8<-0.00040593743324279785){
   if(i28<1.434314250946045){
    s0+=300.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i7<-1.381049514748156e-05){
    if(i4<1.0023688077926636){
     s0+=383.0;
     s1+=2661.0;
    } else {
     s0+=89.0;
     s1+=9928.0;
    }
   } else {
    if(i53<0.0009410791099071503){
     s0+=427.0;
     s1+=110.0;
    } else {
     s0+=51.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i6<3.7610530853271484e-05){
 if(i36<1.0598037242889404){
  if(i25<0.0003713109181262553){
   if(i52<0.9639905691146851){
    if(i61<0.9992157220840454){
     s1+=1.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=41779.0;
   }
  } else {
   if(i32<1.0724589824676514){
    s0+=1666.0;
   } else {
    if(i52<0.9804214239120483){
     s0+=12.0;
     s1+=25.0;
    } else {
     s0+=283.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i32<1.103413462638855){
   if(i19<1.0449728965759277){
    if(i67<0.00024560524616390467){
     s0+=1470.0;
     s1+=31.0;
    } else {
     s0+=163.0;
     s1+=131.0;
    }
   } else {
    if(i44<0.011996464803814888){
     s0+=1714.0;
     s1+=986.0;
    } else {
     s0+=112.0;
     s1+=1303.0;
    }
   }
  } else {
   if(i9<1.0589220523834229){
    if(i0<0.09672892093658447){
     s0+=17910.0;
     s1+=260.0;
    } else {
     s0+=15.0;
     s1+=133.0;
    }
   } else {
    if(i3<0.10785990953445435){
     s0+=4446.0;
     s1+=576.0;
    } else {
     s0+=603.0;
     s1+=2113.0;
    }
   }
  }
 }
} else {
 if(i42<1.0646642446517944){
  s0+=317.0;
 } else {
  if(i38<0.008567865937948227){
   if(i17<0.0021184184588491917){
    if(i28<1.2392117977142334){
     s1+=103.0;
    } else {
     s0+=166.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9981971979141235){
     s0+=39.0;
     s1+=16.0;
    } else {
     s0+=189.0;
     s1+=4136.0;
    }
   }
  } else {
   if(i3<0.04890742897987366){
    if(i59<0.9976663589477539){
     s0+=24.0;
    } else {
     s0+=16.0;
     s1+=58.0;
    }
   } else {
    if(i44<0.007852031849324703){
     s0+=7.0;
     s1+=67.0;
    } else {
     s0+=9.0;
     s1+=7346.0;
    }
   }
  }
 }
}
if(i26<1.0068442821502686){
 if(i9<1.0452215671539307){
  if(i2<0.0830325186252594){
   if(i60<-0.0012661516666412354){
    if(i23<0.9940474629402161){
     s0+=2708.0;
     s1+=39.0;
    } else {
     s0+=1600.0;
     s1+=523.0;
    }
   } else {
    if(i22<0.014152899384498596){
     s0+=50118.0;
     s1+=101.0;
    } else {
     s0+=7196.0;
     s1+=238.0;
    }
   }
  } else {
   if(i23<0.9939890503883362){
    if(i31<0.09090840816497803){
     s0+=386.0;
     s1+=13.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i28<1.0840110778808594){
     s0+=40.0;
    } else {
     s0+=46.0;
     s1+=357.0;
    }
   }
  }
 } else {
  if(i4<1.0008834600448608){
   if(i2<0.07536956667900085){
    if(i64<0.0017851117299869657){
     s0+=5428.0;
     s1+=599.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i22<0.026527749374508858){
     s0+=835.0;
     s1+=432.0;
    } else {
     s0+=321.0;
     s1+=1187.0;
    }
   }
  } else {
   if(i3<0.11489641666412354){
    if(i49<-0.00406491756439209){
     s0+=58.0;
     s1+=549.0;
    } else {
     s0+=411.0;
     s1+=305.0;
    }
   } else {
    if(i17<0.0018722671084105968){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=36.0;
     s1+=1612.0;
    }
   }
  }
 }
} else {
 if(i4<1.0024675130844116){
  if(i38<0.006348418537527323){
   if(i36<1.152409315109253){
    if(i44<0.0123895313590765){
     s0+=514.0;
     s1+=369.0;
    } else {
     s0+=57.0;
     s1+=724.0;
    }
   } else {
    if(i7<-6.203664815984666e-05){
     s0+=3.0;
     s1+=113.0;
    } else {
     s0+=1275.0;
     s1+=56.0;
    }
   }
  } else {
   if(i44<0.045271869748830795){
    if(i61<0.9991106986999512){
     s0+=5.0;
    } else {
     s0+=18.0;
     s1+=135.0;
    }
   } else {
    s1+=337.0;
   }
  }
 } else {
  if(i27<0.00016199224046431482){
   if(i38<0.0025184075348079205){
    s1+=33.0;
   } else {
    if(i17<0.002155570313334465){
     s0+=61.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i1<0.0009372234344482422){
    if(i17<0.0022305105812847614){
     s0+=105.0;
     s1+=20.0;
    } else {
     s0+=20.0;
     s1+=809.0;
    }
   } else {
    if(i10<-3.55839729309082e-05){
     s0+=32.0;
     s1+=125.0;
    } else {
     s0+=1.0;
     s1+=8232.0;
    }
   }
  }
 }
}
if(i0<0.08195626735687256){
 if(i23<1.0066167116165161){
  if(i50<-0.027979493141174316){
   if(i1<0.000306546688079834){
    if(i0<0.02487596869468689){
     s0+=1945.0;
     s1+=194.0;
    } else {
     s0+=469.0;
     s1+=331.0;
    }
   } else {
    if(i26<1.0130655765533447){
     s0+=48.0;
     s1+=296.0;
    } else {
     s0+=48.0;
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.06071734428405762){
    if(i49<-0.004901319742202759){
     s0+=2993.0;
     s1+=360.0;
    } else {
     s0+=59645.0;
     s1+=645.0;
    }
   } else {
    if(i7<-2.2038320821593516e-05){
     s0+=760.0;
     s1+=446.0;
    } else {
     s0+=3164.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i7<-5.836947093484923e-05){
   if(i17<0.001002983539365232){
    s0+=4.0;
   } else {
    s1+=532.0;
   }
  } else {
   if(i17<0.005261329934000969){
    if(i62<0.00582031300291419){
     s0+=161.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=40.0;
   }
  }
 }
} else {
 if(i8<-0.00038823485374450684){
  if(i42<1.4761377573013306){
   if(i6<-3.30507755279541e-05){
    if(i38<0.005320611409842968){
     s0+=422.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.0012739693047478795){
     s0+=13.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i19<1.0700592994689941){
    s0+=17.0;
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i2<0.12541833519935608){
   if(i17<0.0016392976976931095){
    if(i46<0.05291607975959778){
     s0+=14.0;
     s1+=123.0;
    } else {
     s0+=353.0;
     s1+=39.0;
    }
   } else {
    if(i31<0.0637553334236145){
     s0+=28.0;
     s1+=1787.0;
    } else {
     s0+=528.0;
     s1+=555.0;
    }
   }
  } else {
   if(i17<0.0017094442155212164){
    if(i9<1.1754474639892578){
     s0+=42.0;
     s1+=139.0;
    } else {
     s0+=174.0;
     s1+=7.0;
    }
   } else {
    if(i54<0.008542001247406006){
     s0+=21.0;
     s1+=9299.0;
    } else {
     s0+=151.0;
     s1+=2192.0;
    }
   }
  }
 }
}
if(i1<0.0005468428134918213){
 if(i11<1.0451873540878296){
  if(i25<0.00030670006526634097){
   if(i60<-0.0028032660484313965){
    if(i20<0.9917761087417603){
     s0+=10.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i26<1.0068840980529785){
     s0+=52644.0;
     s1+=213.0;
    } else {
     s0+=328.0;
     s1+=65.0;
    }
   }
  } else {
   if(i3<0.08023357391357422){
    if(i28<1.100754976272583){
     s0+=2675.0;
     s1+=833.0;
    } else {
     s0+=9150.0;
     s1+=240.0;
    }
   } else {
    if(i62<-0.019684994593262672){
     s0+=64.0;
     s1+=13.0;
    } else {
     s0+=72.0;
     s1+=469.0;
    }
   }
  }
 } else {
  if(i17<0.005003418307751417){
   if(i3<0.09221312403678894){
    if(i1<0.00015687942504882812){
     s0+=3522.0;
     s1+=369.0;
    } else {
     s0+=568.0;
     s1+=265.0;
    }
   } else {
    if(i52<1.0304886102676392){
     s0+=289.0;
     s1+=806.0;
    } else {
     s0+=627.0;
     s1+=198.0;
    }
   }
  } else {
   if(i0<0.0856580138206482){
    if(i32<1.1698869466781616){
     s0+=6.0;
     s1+=137.0;
    } else {
     s0+=434.0;
     s1+=122.0;
    }
   } else {
    if(i16<0.9982583522796631){
     s0+=47.0;
    } else {
     s0+=69.0;
     s1+=1701.0;
    }
   }
  }
 }
} else {
 if(i17<0.0019127822015434504){
  if(i30<1.0170623064041138){
   if(i20<1.0126116275787354){
    if(i6<3.454089164733887e-05){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=249.0;
     s1+=5.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i20<1.0116831064224243){
    s0+=21.0;
   } else {
    s1+=114.0;
   }
  }
 } else {
  if(i59<0.9954335689544678){
   s0+=39.0;
  } else {
   if(i0<0.06785473227500916){
    if(i29<1.0571597814559937){
     s0+=89.0;
     s1+=538.0;
    } else {
     s0+=68.0;
     s1+=39.0;
    }
   } else {
    if(i6<5.0961971282958984e-05){
     s0+=62.0;
     s1+=711.0;
    } else {
     s0+=53.0;
     s1+=10273.0;
    }
   }
  }
 }
}
if(i26<1.0076361894607544){
 if(i31<0.06487235426902771){
  if(i4<1.0024782419204712){
   if(i0<0.07842501997947693){
    if(i9<1.0451585054397583){
     s0+=61429.0;
     s1+=721.0;
    } else {
     s0+=5885.0;
     s1+=974.0;
    }
   } else {
    if(i12<0.9971554279327393){
     s0+=133.0;
     s1+=70.0;
    } else {
     s0+=91.0;
     s1+=1096.0;
    }
   }
  } else {
   if(i35<0.00024333433248102665){
    s0+=22.0;
   } else {
    if(i10<-0.0007711648941040039){
     s0+=70.0;
     s1+=209.0;
    } else {
     s0+=27.0;
     s1+=1077.0;
    }
   }
  }
 } else {
  if(i38<0.006100778467953205){
   if(i3<0.11689239740371704){
    if(i35<0.0025537190958857536){
     s0+=476.0;
     s1+=202.0;
    } else {
     s0+=470.0;
     s1+=23.0;
    }
   } else {
    if(i50<0.09664708375930786){
     s0+=77.0;
     s1+=368.0;
    } else {
     s0+=282.0;
     s1+=117.0;
    }
   }
  } else {
   if(i67<0.0006243828684091568){
    if(i0<0.12715497612953186){
     s0+=81.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=104.0;
    }
   } else {
    if(i68<-9.630032582208514e-05){
     s0+=3.0;
     s1+=1058.0;
    } else {
     s0+=80.0;
     s1+=222.0;
    }
   }
  }
 }
} else {
 if(i26<1.0218441486358643){
  if(i7<-3.9980401197681203e-05){
   if(i14<-1.1771917343139648e-05){
    s0+=68.0;
   } else {
    if(i4<1.0044469833374023){
     s0+=183.0;
     s1+=1477.0;
    } else {
     s0+=4.0;
     s1+=1610.0;
    }
   }
  } else {
   if(i28<1.1108002662658691){
    if(i34<0.0006074558477848768){
     s0+=107.0;
     s1+=43.0;
    } else {
     s0+=21.0;
     s1+=226.0;
    }
   } else {
    if(i65<-9.016485819302034e-06){
     s1+=18.0;
    } else {
     s0+=1268.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i7<-3.0324368708534166e-05){
   if(i23<1.0038793087005615){
    if(i7<-4.9381997087039053e-05){
     s0+=8.0;
     s1+=965.0;
    } else {
     s0+=24.0;
     s1+=29.0;
    }
   } else {
    s1+=6451.0;
   }
  } else {
   if(i3<0.21575167775154114){
    if(i38<0.0066068582236766815){
     s0+=177.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.004998811520636082){
     s0+=32.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
}
if(i20<1.0058752298355103){
 if(i3<0.07866418361663818){
  if(i51<0.0075655728578567505){
   if(i3<0.06098058819770813){
    if(i39<0.00036409409949555993){
     s0+=38460.0;
     s1+=32.0;
    } else {
     s0+=23418.0;
     s1+=801.0;
    }
   } else {
    if(i22<0.015161518007516861){
     s0+=2725.0;
     s1+=162.0;
    } else {
     s0+=940.0;
     s1+=449.0;
    }
   }
  } else {
   if(i17<0.005649832542985678){
    if(i0<0.0533866286277771){
     s0+=2661.0;
     s1+=382.0;
    } else {
     s0+=233.0;
     s1+=178.0;
    }
   } else {
    if(i0<0.0133381187915802){
     s0+=339.0;
     s1+=58.0;
    } else {
     s0+=49.0;
     s1+=393.0;
    }
   }
  }
 } else {
  if(i22<0.02381378784775734){
   if(i61<0.997069239616394){
    if(i21<1.0074678659439087){
     s0+=179.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=5.0;
    }
   } else {
    if(i54<0.003553032875061035){
     s0+=228.0;
     s1+=593.0;
    } else {
     s0+=682.0;
     s1+=246.0;
    }
   }
  } else {
   if(i12<0.9948115944862366){
    if(i55<0.9996435642242432){
     s0+=159.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   } else {
    if(i70<1.6680921817169292e-06){
     s0+=300.0;
     s1+=3469.0;
    } else {
     s0+=46.0;
    }
   }
  }
 }
} else {
 if(i3<0.055992722511291504){
  if(i34<0.0010808086954057217){
   if(i10<0.0005919337272644043){
    if(i4<1.0024526119232178){
     s0+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=278.0;
   }
  } else {
   if(i4<1.0041394233703613){
    if(i70<-8.110529051919002e-06){
     s1+=10.0;
    } else {
     s0+=516.0;
     s1+=6.0;
    }
   } else {
    s1+=40.0;
   }
  }
 } else {
  if(i6<9.745359420776367e-06){
   if(i22<0.04322594404220581){
    if(i39<0.0025197742506861687){
     s0+=2.0;
     s1+=42.0;
    } else {
     s0+=134.0;
     s1+=33.0;
    }
   } else {
    if(i40<-0.00020617246627807617){
     s0+=1.0;
    } else {
     s1+=111.0;
    }
   }
  } else {
   if(i7<-4.341332896729e-05){
    if(i18<-9.59634780883789e-06){
     s0+=14.0;
     s1+=71.0;
    } else {
     s1+=9477.0;
    }
   } else {
    if(i19<1.0983662605285645){
     s0+=8.0;
     s1+=116.0;
    } else {
     s0+=108.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i1<0.0005468428134918213){
 if(i3<0.07787281274795532){
  if(i22<0.01653255522251129){
   if(i19<1.0451585054397583){
    if(i27<0.000346159067703411){
     s0+=47250.0;
     s1+=57.0;
    } else {
     s0+=1132.0;
     s1+=47.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=3202.0;
     s1+=522.0;
    } else {
     s0+=7356.0;
     s1+=125.0;
    }
   }
  } else {
   if(i1<-0.0003078579902648926){
    if(i0<0.06856745481491089){
     s0+=7746.0;
     s1+=223.0;
    } else {
     s0+=259.0;
     s1+=105.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=468.0;
     s1+=697.0;
    } else {
     s0+=1415.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i22<0.02271326258778572){
   if(i54<0.002730250358581543){
    if(i16<0.9989787340164185){
     s0+=114.0;
     s1+=7.0;
    } else {
     s0+=146.0;
     s1+=686.0;
    }
   } else {
    if(i48<0.003144383430480957){
     s0+=209.0;
     s1+=183.0;
    } else {
     s0+=667.0;
     s1+=114.0;
    }
   }
  } else {
   if(i16<0.99855637550354){
    if(i70<-2.335083308935282e-06){
     s0+=15.0;
     s1+=12.0;
    } else {
     s0+=243.0;
    }
   } else {
    if(i46<0.05819341540336609){
     s0+=17.0;
     s1+=1260.0;
    } else {
     s0+=316.0;
     s1+=1169.0;
    }
   }
  }
 }
} else {
 if(i55<0.9992470741271973){
  s0+=179.0;
 } else {
  if(i26<1.0192078351974487){
   if(i3<0.05846378207206726){
    if(i51<0.0032891351729631424){
     s0+=97.0;
     s1+=31.0;
    } else {
     s0+=118.0;
     s1+=548.0;
    }
   } else {
    if(i48<0.00365525484085083){
     s0+=23.0;
     s1+=2679.0;
    } else {
     s0+=148.0;
     s1+=965.0;
    }
   }
  } else {
   if(i59<1.00311279296875){
    if(i7<-4.2610743548721075e-05){
     s0+=1.0;
     s1+=7266.0;
    } else {
     s0+=7.0;
     s1+=10.0;
    }
   } else {
    if(i17<0.007981110364198685){
     s0+=12.0;
    } else {
     s1+=142.0;
    }
   }
  }
 }
}
if(i23<1.0039863586425781){
 if(i6<3.68952751159668e-05){
  if(i3<0.07771384716033936){
   if(i19<1.0451585054397583){
    if(i50<-0.030760854482650757){
     s0+=596.0;
     s1+=23.0;
    } else {
     s0+=53024.0;
     s1+=189.0;
    }
   } else {
    if(i3<0.06078249216079712){
     s0+=13015.0;
     s1+=1142.0;
    } else {
     s0+=1399.0;
     s1+=610.0;
    }
   }
  } else {
   if(i37<0.0474030077457428){
    if(i36<1.0670123100280762){
     s0+=73.0;
     s1+=19.0;
    } else {
     s0+=131.0;
     s1+=1845.0;
    }
   } else {
    if(i16<0.9985270500183105){
     s0+=419.0;
     s1+=9.0;
    } else {
     s0+=1056.0;
     s1+=1081.0;
    }
   }
  }
 } else {
  if(i16<1.000077247619629){
   if(i27<0.011685085482895374){
    s0+=376.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i17<0.004713759291917086){
    if(i40<5.9485435485839844e-05){
     s0+=5.0;
     s1+=89.0;
    } else {
     s0+=151.0;
     s1+=35.0;
    }
   } else {
    if(i5<0.12414968013763428){
     s0+=143.0;
     s1+=672.0;
    } else {
     s0+=6.0;
     s1+=1381.0;
    }
   }
  }
 }
} else {
 if(i35<0.0002504888689145446){
  if(i68<-0.0002913810021709651){
   if(i32<1.1760990619659424){
    s1+=29.0;
   } else {
    s0+=3.0;
   }
  } else {
   if(i25<0.00023694499395787716){
    s0+=255.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i14<1.627206802368164e-05){
   if(i0<0.07842114567756653){
    if(i28<1.1386182308197021){
     s1+=56.0;
    } else {
     s0+=328.0;
     s1+=13.0;
    }
   } else {
    if(i30<1.0102437734603882){
     s0+=52.0;
     s1+=271.0;
    } else {
     s0+=1.0;
     s1+=858.0;
    }
   }
  } else {
   if(i25<0.00016515179595444351){
    s0+=8.0;
   } else {
    if(i1<0.00057220458984375){
     s0+=17.0;
     s1+=66.0;
    } else {
     s0+=41.0;
     s1+=8755.0;
    }
   }
  }
 }
}
if(i8<0.00043314695358276367){
 if(i13<1.0081498622894287){
  if(i28<1.0850647687911987){
   s0+=38260.0;
  } else {
   if(i3<0.07723405957221985){
    if(i4<0.9978058934211731){
     s0+=19999.0;
     s1+=385.0;
    } else {
     s0+=8759.0;
     s1+=1320.0;
    }
   } else {
    if(i16<0.9985578060150146){
     s0+=352.0;
     s1+=26.0;
    } else {
     s0+=651.0;
     s1+=1677.0;
    }
   }
  }
 } else {
  if(i1<0.0004985928535461426){
   if(i35<0.0011146464385092258){
    if(i28<1.2392117977142334){
     s0+=26.0;
     s1+=690.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i5<0.10519108176231384){
     s0+=809.0;
     s1+=136.0;
    } else {
     s0+=164.0;
     s1+=644.0;
    }
   }
  } else {
   if(i40<6.744265556335449e-05){
    if(i9<1.053031325340271){
     s0+=3.0;
    } else {
     s0+=13.0;
     s1+=951.0;
    }
   } else {
    if(i17<0.0031403196044266224){
     s0+=77.0;
     s1+=13.0;
    } else {
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i12<1.002943992614746){
  if(i2<0.1265762746334076){
   if(i1<0.0005710422992706299){
    if(i58<0.005667166784405708){
     s0+=1123.0;
     s1+=160.0;
    } else {
     s0+=44.0;
     s1+=87.0;
    }
   } else {
    if(i53<0.0018167546950280666){
     s0+=116.0;
     s1+=26.0;
    } else {
     s0+=44.0;
     s1+=189.0;
    }
   }
  } else {
   if(i7<-5.4583542805630714e-05){
    if(i10<-0.00432935357093811){
     s0+=1.0;
    } else {
     s0+=13.0;
     s1+=1174.0;
    }
   } else {
    if(i63<0.07561719417572021){
     s0+=5.0;
     s1+=67.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i5<0.03997388482093811){
   if(i4<1.0015170574188232){
    if(i11<1.092090129852295){
     s0+=162.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i53<0.0007833271520212293){
     s0+=42.0;
     s1+=14.0;
    } else {
     s0+=54.0;
     s1+=522.0;
    }
   }
  } else {
   if(i1<0.0005983710289001465){
    if(i2<0.11372989416122437){
     s0+=158.0;
     s1+=57.0;
    } else {
     s0+=10.0;
     s1+=201.0;
    }
   } else {
    if(i57<0.00011496224033180624){
     s0+=24.0;
     s1+=7374.0;
    } else {
     s0+=54.0;
     s1+=1397.0;
    }
   }
  }
 }
}
if(i23<1.0039767026901245){
 if(i5<0.07663318514823914){
  if(i2<0.08341556787490845){
   if(i36<1.0557184219360352){
    if(i56<-0.003278195858001709){
     s0+=602.0;
     s1+=1.0;
    } else {
     s0+=42266.0;
    }
   } else {
    if(i1<0.00021147727966308594){
     s0+=24543.0;
     s1+=1576.0;
    } else {
     s0+=812.0;
     s1+=608.0;
    }
   }
  } else {
   if(i12<0.998032808303833){
    if(i16<0.9977184534072876){
     s0+=361.0;
    } else {
     s0+=60.0;
     s1+=68.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=37.0;
     s1+=758.0;
    } else {
     s0+=135.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i38<0.006125407759100199){
   if(i36<1.2643331289291382){
    if(i37<0.05041837692260742){
     s0+=117.0;
     s1+=995.0;
    } else {
     s0+=942.0;
     s1+=644.0;
    }
   } else {
    if(i67<0.0012355216313153505){
     s0+=355.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i37<0.041476666927337646){
     s1+=12.0;
    } else {
     s0+=51.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.0019089464331045747){
     s0+=29.0;
     s1+=2.0;
    } else {
     s0+=57.0;
     s1+=2385.0;
    }
   }
  }
 }
} else {
 if(i7<-4.329489456722513e-05){
  if(i14<-7.12275505065918e-06){
   if(i38<0.020752547308802605){
    s0+=84.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i13<1.0101444721221924){
    if(i70<-3.695919076562859e-06){
     s0+=42.0;
     s1+=1670.0;
    } else {
     s0+=35.0;
     s1+=57.0;
    }
   } else {
    if(i10<0.0014184117317199707){
     s0+=6.0;
     s1+=753.0;
    } else {
     s1+=7357.0;
    }
   }
  }
 } else {
  if(i53<0.0010800848249346018){
   if(i44<0.013516565784811974){
    if(i42<1.0985562801361084){
     s0+=17.0;
     s1+=6.0;
    } else {
     s0+=506.0;
    }
   } else {
    if(i70<-2.6639092993718805e-06){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   }
  } else {
   if(i27<0.00020950951147824526){
    if(i65<-2.3037466689856956e-06){
     s1+=3.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i57<1.8513437680667266e-05){
     s0+=7.0;
     s1+=138.0;
    } else {
     s0+=13.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i8<0.00043314695358276367){
 if(i29<1.0398966073989868){
  if(i2<0.08352836966514587){
   if(i25<0.0002816389314830303){
    if(i13<1.0081672668457031){
     s0+=51390.0;
     s1+=169.0;
    } else {
     s0+=82.0;
     s1+=54.0;
    }
   } else {
    if(i42<1.1812903881072998){
     s0+=5164.0;
     s1+=1321.0;
    } else {
     s0+=8281.0;
     s1+=106.0;
    }
   }
  } else {
   if(i12<0.99371337890625){
    if(i39<0.005372639745473862){
     s0+=298.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   } else {
    if(i4<0.9935308694839478){
     s0+=49.0;
     s1+=4.0;
    } else {
     s0+=68.0;
     s1+=979.0;
    }
   }
  }
 } else {
  if(i1<0.00020399689674377441){
   if(i5<0.0820428729057312){
    if(i0<0.08683136105537415){
     s0+=2496.0;
     s1+=260.0;
    } else {
     s0+=60.0;
     s1+=205.0;
    }
   } else {
    if(i34<0.0037208213470876217){
     s0+=769.0;
     s1+=356.0;
    } else {
     s0+=119.0;
     s1+=736.0;
    }
   }
  } else {
   if(i53<0.0010745767503976822){
    if(i2<0.10128664970397949){
     s0+=242.0;
     s1+=95.0;
    } else {
     s0+=92.0;
     s1+=454.0;
    }
   } else {
    if(i44<0.00898902676999569){
     s0+=28.0;
     s1+=32.0;
    } else {
     s0+=16.0;
     s1+=1107.0;
    }
   }
  }
 }
} else {
 if(i6<3.7729740142822266e-05){
  if(i5<0.09880083799362183){
   if(i23<1.0011115074157715){
    if(i11<1.1205039024353027){
     s0+=1277.0;
     s1+=136.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   } else {
    if(i53<0.0009611081331968307){
     s0+=53.0;
    } else {
     s0+=30.0;
     s1+=116.0;
    }
   }
  } else {
   if(i43<-1.616587906028144e-05){
    if(i71<0.00012797038652934134){
     s0+=27.0;
     s1+=104.0;
    } else {
     s1+=234.0;
    }
   } else {
    if(i4<1.0013728141784668){
     s0+=35.0;
     s1+=4.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i32<1.0690243244171143){
   s0+=66.0;
  } else {
   if(i4<1.0041437149047852){
    if(i3<0.14163553714752197){
     s0+=284.0;
     s1+=658.0;
    } else {
     s0+=7.0;
     s1+=685.0;
    }
   } else {
    if(i4<1.004711627960205){
     s0+=31.0;
     s1+=385.0;
    } else {
     s0+=21.0;
     s1+=8975.0;
    }
   }
  }
 }
}
if(i10<0.0007711648941040039){
 if(i3<0.07751694321632385){
  if(i0<0.06921279430389404){
   if(i45<0.041208334267139435){
    if(i36<1.0598037242889404){
     s0+=40197.0;
     s1+=8.0;
    } else {
     s0+=13275.0;
     s1+=464.0;
    }
   } else {
    if(i8<8.895993232727051e-05){
     s0+=10728.0;
     s1+=610.0;
    } else {
     s0+=2676.0;
     s1+=721.0;
    }
   }
  } else {
   if(i63<0.024731844663619995){
    if(i38<0.0010298884008079767){
     s0+=63.0;
     s1+=395.0;
    } else {
     s0+=292.0;
     s1+=151.0;
    }
   } else {
    if(i29<1.009840488433838){
     s0+=8.0;
     s1+=23.0;
    } else {
     s0+=1182.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i40<-0.00014126300811767578){
   if(i7<-5.1720689953071997e-05){
    if(i41<0.9966275691986084){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   } else {
    if(i70<-2.9103416636644397e-06){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=496.0;
    }
   }
  } else {
   if(i0<0.1002773642539978){
    if(i7<-1.550791239424143e-05){
     s0+=329.0;
     s1+=604.0;
    } else {
     s0+=387.0;
     s1+=121.0;
    }
   } else {
    if(i33<0.0006418608827516437){
     s0+=232.0;
     s1+=185.0;
    } else {
     s0+=358.0;
     s1+=3887.0;
    }
   }
  }
 }
} else {
 if(i11<1.0384457111358643){
  if(i6<3.62396240234375e-05){
   if(i32<1.1386182308197021){
    if(i6<1.9848346710205078e-05){
     s0+=56.0;
     s1+=2.0;
    } else {
     s1+=22.0;
    }
   } else {
    s0+=290.0;
   }
  } else {
   if(i23<1.004629135131836){
    if(i15<1.0050053596496582){
     s1+=3.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i4<1.0041100978851318){
     s0+=17.0;
     s1+=41.0;
    } else {
     s1+=178.0;
    }
   }
  }
 } else {
  if(i36<1.0569010972976685){
   s0+=35.0;
  } else {
   if(i6<6.073713302612305e-05){
    if(i39<0.0024445252493023872){
     s0+=2.0;
     s1+=765.0;
    } else {
     s0+=215.0;
     s1+=512.0;
    }
   } else {
    if(i7<-4.224680014885962e-05){
     s1+=8562.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   }
  }
 }
}
if(i4<1.0024573802947998){
 if(i29<1.0406770706176758){
  if(i0<0.07983428239822388){
   if(i49<-0.0056569576263427734){
    if(i3<0.042643994092941284){
     s0+=3460.0;
     s1+=478.0;
    } else {
     s0+=236.0;
     s1+=314.0;
    }
   } else {
    if(i3<0.05820569396018982){
     s0+=58601.0;
     s1+=560.0;
    } else {
     s0+=4272.0;
     s1+=389.0;
    }
   }
  } else {
   if(i33<0.0004211748018860817){
    if(i41<1.0003533363342285){
     s0+=149.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i19<1.045006275177002){
     s0+=86.0;
     s1+=13.0;
    } else {
     s0+=47.0;
     s1+=1123.0;
    }
   }
  }
 } else {
  if(i3<0.09726476669311523){
   if(i32<1.1037919521331787){
    if(i7<-1.589873863849789e-05){
     s0+=63.0;
     s1+=325.0;
    } else {
     s0+=716.0;
     s1+=60.0;
    }
   } else {
    if(i3<0.07775631546974182){
     s0+=1925.0;
     s1+=85.0;
    } else {
     s0+=485.0;
     s1+=94.0;
    }
   }
  } else {
   if(i17<0.004999159835278988){
    if(i50<0.07214075326919556){
     s0+=148.0;
     s1+=639.0;
    } else {
     s0+=645.0;
     s1+=176.0;
    }
   } else {
    if(i1<-0.0007965564727783203){
     s0+=34.0;
     s1+=80.0;
    } else {
     s0+=24.0;
     s1+=1522.0;
    }
   }
  }
 }
} else {
 if(i17<0.0019220530521124601){
  if(i18<0.0002995133399963379){
   if(i43<-1.5140992218221072e-05){
    s1+=13.0;
   } else {
    s0+=177.0;
   }
  } else {
   s1+=108.0;
  }
 } else {
  if(i10<-4.589557647705078e-06){
   if(i2<0.13113391399383545){
    if(i54<0.0026951730251312256){
     s0+=54.0;
     s1+=347.0;
    } else {
     s0+=74.0;
     s1+=22.0;
    }
   } else {
    if(i55<1.0000171661376953){
     s0+=3.0;
     s1+=110.0;
    } else {
     s1+=562.0;
    }
   }
  } else {
   if(i2<0.043005943298339844){
    if(i14<1.5437602996826172e-05){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=96.0;
    }
   } else {
    if(i8<0.00038760900497436523){
     s0+=22.0;
     s1+=698.0;
    } else {
     s0+=4.0;
     s1+=9190.0;
    }
   }
  }
 }
}
if(i3<0.07752794027328491){
 if(i51<0.007513933349400759){
  if(i19<1.0475037097930908){
   if(i58<0.0014039826346561313){
    if(i60<-0.0013931095600128174){
     s0+=361.0;
     s1+=55.0;
    } else {
     s0+=52281.0;
     s1+=112.0;
    }
   } else {
    if(i2<0.05494704842567444){
     s0+=1606.0;
     s1+=69.0;
    } else {
     s0+=123.0;
     s1+=50.0;
    }
   }
  } else {
   if(i10<0.001435399055480957){
    if(i12<1.0006513595581055){
     s0+=9156.0;
     s1+=710.0;
    } else {
     s0+=2111.0;
     s1+=594.0;
    }
   } else {
    if(i64<0.0001808983797673136){
     s0+=16.0;
     s1+=14.0;
    } else {
     s1+=241.0;
    }
   }
  }
 } else {
  if(i6<3.5822391510009766e-05){
   if(i2<0.021735429763793945){
    if(i25<0.0023129419423639774){
     s0+=851.0;
     s1+=154.0;
    } else {
     s0+=1101.0;
     s1+=29.0;
    }
   } else {
    if(i55<0.9995636343955994){
     s0+=399.0;
     s1+=22.0;
    } else {
     s0+=1095.0;
     s1+=563.0;
    }
   }
  } else {
   if(i48<0.002103179693222046){
    if(i12<0.9984398484230042){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=46.0;
     s1+=642.0;
    }
   } else {
    if(i69<0.0014224979095160961){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i18<6.276369094848633e-05){
  if(i61<0.9982939958572388){
   if(i7<-1.3991064406582154e-05){
    if(i28<1.293548583984375){
     s0+=7.0;
     s1+=73.0;
    } else {
     s0+=81.0;
     s1+=64.0;
    }
   } else {
    if(i55<0.9999696612358093){
     s0+=429.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=9.0;
    }
   }
  } else {
   if(i48<0.004226982593536377){
    if(i3<0.09026229381561279){
     s0+=210.0;
     s1+=420.0;
    } else {
     s0+=118.0;
     s1+=2101.0;
    }
   } else {
    if(i42<1.3008317947387695){
     s0+=762.0;
     s1+=571.0;
    } else {
     s0+=99.0;
     s1+=753.0;
    }
   }
  }
 } else {
  if(i42<1.0569010972976685){
   s0+=18.0;
  } else {
   if(i7<-2.2201937099453062e-05){
    if(i53<0.0010570958256721497){
     s0+=66.0;
     s1+=1232.0;
    } else {
     s0+=7.0;
     s1+=8706.0;
    }
   } else {
    if(i17<0.0032418689224869013){
     s0+=50.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i5<0.06989145278930664){
 if(i8<0.0006372928619384766){
  if(i3<0.07724055647850037){
   if(i4<1.0024828910827637){
    if(i51<0.007568643428385258){
     s0+=64858.0;
     s1+=1187.0;
    } else {
     s0+=3241.0;
     s1+=700.0;
    }
   } else {
    if(i32<1.2388319969177246){
     s0+=3.0;
     s1+=221.0;
    } else {
     s0+=168.0;
    }
   }
  } else {
   if(i4<0.9967865347862244){
    if(i71<6.0732530982932076e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=104.0;
     s1+=1.0;
    }
   } else {
    if(i14<-1.1682510375976562e-05){
     s0+=5.0;
    } else {
     s0+=12.0;
     s1+=751.0;
    }
   }
  }
 } else {
  if(i13<1.0034629106521606){
   if(i1<0.0008702278137207031){
    if(i10<-0.002505272626876831){
     s0+=340.0;
     s1+=33.0;
    } else {
     s0+=141.0;
     s1+=108.0;
    }
   } else {
    if(i56<0.004152357578277588){
     s0+=36.0;
     s1+=270.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i12<1.001533031463623){
    if(i60<0.0005991756916046143){
     s0+=7.0;
     s1+=22.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.9710464477539062){
     s0+=1.0;
    } else {
     s0+=9.0;
     s1+=1210.0;
    }
   }
  }
 }
} else {
 if(i38<0.0061995843425393105){
  if(i4<1.001805305480957){
   if(i16<0.9985312223434448){
    if(i7<-4.270498175173998e-05){
     s0+=17.0;
     s1+=9.0;
    } else {
     s0+=490.0;
    }
   } else {
    if(i63<0.03478991985321045){
     s0+=526.0;
     s1+=1138.0;
    } else {
     s0+=814.0;
     s1+=358.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    if(i19<1.0494716167449951){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=1186.0;
    }
   } else {
    if(i17<0.0036955808755010366){
     s0+=75.0;
     s1+=47.0;
    } else {
     s0+=43.0;
     s1+=717.0;
    }
   }
  }
 } else {
  if(i19<1.0771137475967407){
   if(i37<0.03907865285873413){
    s1+=14.0;
   } else {
    if(i57<0.00010032918362412602){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=113.0;
    }
   }
  } else {
   if(i17<0.0016181477112695575){
    if(i2<0.2238495647907257){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i36<1.265605092048645){
     s0+=95.0;
     s1+=1754.0;
    } else {
     s0+=15.0;
     s1+=7307.0;
    }
   }
  }
 }
}
if(i2<0.08523821830749512){
 if(i23<1.0053119659423828){
  if(i19<1.0486011505126953){
   if(i4<1.0025479793548584){
    if(i25<0.0002837870270013809){
     s0+=48585.0;
     s1+=84.0;
    } else {
     s0+=7055.0;
     s1+=264.0;
    }
   } else {
    if(i36<1.1131010055541992){
     s1+=18.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i34<0.0008704282809048891){
    if(i61<1.0007294416427612){
     s0+=3658.0;
     s1+=815.0;
    } else {
     s0+=179.0;
     s1+=496.0;
    }
   } else {
    if(i9<1.0410068035125732){
     s0+=4440.0;
     s1+=79.0;
    } else {
     s0+=4933.0;
     s1+=824.0;
    }
   }
  }
 } else {
  if(i43<-1.4473900591838174e-05){
   if(i16<0.9996916055679321){
    s0+=8.0;
   } else {
    if(i37<0.041004955768585205){
     s0+=9.0;
     s1+=657.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i57<-2.9454204195644706e-05){
    s1+=15.0;
   } else {
    if(i14<2.294778823852539e-05){
     s0+=336.0;
     s1+=11.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i41<0.999065101146698){
  if(i16<0.9980583190917969){
   s0+=624.0;
  } else {
   if(i68<-0.000330818525981158){
    s1+=47.0;
   } else {
    if(i53<0.0017113893991336226){
     s0+=10.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i1<0.0004849433898925781){
   if(i22<0.02884143963456154){
    if(i31<0.06471481919288635){
     s0+=64.0;
     s1+=682.0;
    } else {
     s0+=828.0;
     s1+=577.0;
    }
   } else {
    if(i17<0.0016062806826084852){
     s0+=99.0;
     s1+=73.0;
    } else {
     s0+=131.0;
     s1+=1797.0;
    }
   }
  } else {
   if(i4<1.003922462463379){
    if(i17<0.0034740320406854153){
     s0+=55.0;
     s1+=94.0;
    } else {
     s0+=56.0;
     s1+=1483.0;
    }
   } else {
    if(i10<0.0002599954605102539){
     s0+=20.0;
     s1+=643.0;
    } else {
     s1+=8484.0;
    }
   }
  }
 }
}
if(i23<1.0038928985595703){
 if(i0<0.08523273468017578){
  if(i25<0.0002819916408043355){
   if(i35<0.0002778609050437808){
    if(i15<1.0081448554992676){
     s0+=44909.0;
     s1+=21.0;
    } else {
     s0+=21.0;
     s1+=18.0;
    }
   } else {
    if(i52<0.9869185090065002){
     s0+=179.0;
     s1+=54.0;
    } else {
     s0+=7029.0;
     s1+=177.0;
    }
   }
  } else {
   if(i42<1.1812903881072998){
    if(i38<0.0003285924904048443){
     s0+=2726.0;
     s1+=27.0;
    } else {
     s0+=3655.0;
     s1+=1654.0;
    }
   } else {
    if(i48<-0.008264333009719849){
     s0+=771.0;
     s1+=198.0;
    } else {
     s0+=9654.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i17<0.0051043774001300335){
   if(i41<0.9991452693939209){
    if(i41<0.9988100528717041){
     s0+=335.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   } else {
    if(i66<-0.004655902273952961){
     s0+=796.0;
     s1+=331.0;
    } else {
     s0+=164.0;
     s1+=1184.0;
    }
   }
  } else {
   if(i19<1.0813977718353271){
    if(i48<0.004409313201904297){
     s0+=19.0;
     s1+=218.0;
    } else {
     s0+=63.0;
     s1+=5.0;
    }
   } else {
    if(i61<0.9971233606338501){
     s0+=37.0;
     s1+=75.0;
    } else {
     s0+=39.0;
     s1+=2938.0;
    }
   }
  }
 }
} else {
 if(i27<0.00018298006034456193){
  if(i70<-5.321048774931114e-06){
   if(i33<0.00512679573148489){
    s1+=74.0;
   } else {
    s0+=7.0;
   }
  } else {
   if(i52<1.015718936920166){
    if(i41<0.9997049570083618){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=361.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i17<0.0010635496582835913){
   if(i57<-3.462425229372457e-05){
    s1+=60.0;
   } else {
    s0+=143.0;
   }
  } else {
   if(i7<-4.2454870708752424e-05){
    if(i6<-2.7120113372802734e-06){
     s0+=61.0;
     s1+=8.0;
    } else {
     s0+=41.0;
     s1+=9713.0;
    }
   } else {
    if(i41<1.0009503364562988){
     s0+=99.0;
     s1+=64.0;
    } else {
     s1+=75.0;
    }
   }
  }
 }
}
if(i1<0.0005536079406738281){
 if(i5<0.07075154781341553){
  if(i47<0.0256948359310627){
   if(i67<-9.78499447228387e-05){
    if(i40<-0.00013265013694763184){
     s0+=31.0;
    } else {
     s0+=32.0;
     s1+=202.0;
    }
   } else {
    if(i60<-0.001659303903579712){
     s0+=680.0;
     s1+=290.0;
    } else {
     s0+=56125.0;
     s1+=442.0;
    }
   }
  } else {
   if(i3<0.07641541957855225){
    if(i6<-2.2351741790771484e-05){
     s0+=8006.0;
     s1+=361.0;
    } else {
     s0+=3488.0;
     s1+=953.0;
    }
   } else {
    if(i28<1.0881770849227905){
     s0+=50.0;
    } else {
     s0+=25.0;
     s1+=389.0;
    }
   }
  }
 } else {
  if(i0<0.10771867632865906){
   if(i50<0.04377150535583496){
    if(i17<0.0028025733772665262){
     s0+=405.0;
     s1+=121.0;
    } else {
     s0+=167.0;
     s1+=403.0;
    }
   } else {
    if(i27<0.0007281392463482916){
     s0+=121.0;
     s1+=35.0;
    } else {
     s0+=597.0;
     s1+=14.0;
    }
   }
  } else {
   if(i16<0.9985156059265137){
    if(i34<0.005983851850032806){
     s0+=236.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i22<0.02876647561788559){
     s0+=373.0;
     s1+=657.0;
    } else {
     s0+=102.0;
     s1+=1647.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022366377525031567){
  if(i10<0.001874089241027832){
   if(i68<-0.0002655120915733278){
    if(i43<-1.5525612980127335e-05){
     s0+=3.0;
     s1+=27.0;
    } else {
     s0+=82.0;
    }
   } else {
    if(i29<1.0017170906066895){
     s1+=2.0;
    } else {
     s0+=185.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=150.0;
  }
 } else {
  if(i55<0.9960821270942688){
   s0+=34.0;
  } else {
   if(i4<1.0037965774536133){
    if(i3<0.12145781517028809){
     s0+=175.0;
     s1+=539.0;
    } else {
     s0+=12.0;
     s1+=1043.0;
    }
   } else {
    if(i18<-0.00045609474182128906){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=48.0;
     s1+=9979.0;
    }
   }
  }
 }
}
if(i18<0.00011283159255981445){
 if(i3<0.08162745833396912){
  if(i25<0.00030671327840536833){
   if(i15<1.0097283124923706){
    if(i56<-0.004485040903091431){
     s0+=3.0;
     s1+=44.0;
    } else {
     s0+=53004.0;
     s1+=235.0;
    }
   } else {
    if(i12<0.9994921684265137){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=71.0;
    }
   }
  } else {
   if(i18<-0.00023132562637329102){
    if(i53<0.006535805761814117){
     s0+=8459.0;
     s1+=211.0;
    } else {
     s0+=7.0;
     s1+=61.0;
    }
   } else {
    if(i61<1.0006778240203857){
     s0+=6157.0;
     s1+=1057.0;
    } else {
     s0+=926.0;
     s1+=971.0;
    }
   }
  }
 } else {
  if(i1<-0.0007873773574829102){
   if(i33<0.004639445338398218){
    if(i55<1.0000922679901123){
     s0+=339.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=13.0;
    }
   } else {
    if(i11<1.1150825023651123){
     s0+=49.0;
     s1+=19.0;
    } else {
     s1+=99.0;
    }
   }
  } else {
   if(i17<0.0016902622301131487){
    if(i5<0.07608866691589355){
     s0+=10.0;
     s1+=70.0;
    } else {
     s0+=538.0;
     s1+=98.0;
    }
   } else {
    if(i46<0.061012327671051025){
     s0+=23.0;
     s1+=2456.0;
    } else {
     s0+=568.0;
     s1+=1793.0;
    }
   }
  }
 }
} else {
 if(i2<0.06563374400138855){
  if(i53<0.0015936421696096659){
   if(i50<-0.03152379393577576){
    if(i31<0.029031753540039062){
     s0+=2.0;
     s1+=46.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    if(i70<-5.330711701390101e-06){
     s0+=120.0;
     s1+=61.0;
    } else {
     s0+=604.0;
    }
   }
  } else {
   if(i42<1.0612695217132568){
    s0+=15.0;
   } else {
    s1+=191.0;
   }
  }
 } else {
  if(i40<-0.0003739297389984131){
   s0+=26.0;
  } else {
   if(i4<0.9998879432678223){
    s0+=21.0;
   } else {
    if(i32<1.2570146322250366){
     s0+=84.0;
     s1+=2266.0;
    } else {
     s1+=7472.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i6<4.106760025024414e-05){
  if(i3<0.08322206139564514){
   if(i35<0.00030403194250538945){
    if(i15<1.008784532546997){
     s0+=46249.0;
     s1+=40.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=4232.0;
     s1+=1092.0;
    } else {
     s0+=14305.0;
     s1+=314.0;
    }
   }
  } else {
   if(i6<-4.83393669128418e-05){
    if(i14<-1.3977289199829102e-05){
     s0+=96.0;
    } else {
     s0+=15.0;
     s1+=12.0;
    }
   } else {
    if(i32<1.0724589824676514){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=510.0;
    }
   }
  }
 } else {
  if(i12<0.9986346960067749){
   if(i32<1.164223551750183){
    s0+=211.0;
   } else {
    if(i43<-4.080876533407718e-05){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i8<0.0006963908672332764){
    if(i17<0.0019337437115609646){
     s0+=90.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=193.0;
    }
   } else {
    if(i12<1.0017285346984863){
     s0+=6.0;
     s1+=23.0;
    } else {
     s0+=8.0;
     s1+=534.0;
    }
   }
  }
 }
} else {
 if(i3<0.09717720746994019){
  if(i8<0.0005303621292114258){
   if(i39<0.0019952310249209404){
    if(i44<0.012356860563158989){
     s0+=1492.0;
     s1+=393.0;
    } else {
     s0+=103.0;
     s1+=549.0;
    }
   } else {
    if(i67<0.0014451275346800685){
     s0+=2677.0;
     s1+=136.0;
    } else {
     s0+=17.0;
     s1+=74.0;
    }
   }
  } else {
   if(i34<0.0021968791261315346){
    if(i6<2.1159648895263672e-05){
     s0+=4.0;
    } else {
     s1+=613.0;
    }
   } else {
    if(i23<1.0015869140625){
     s0+=479.0;
     s1+=146.0;
    } else {
     s0+=37.0;
     s1+=378.0;
    }
   }
  }
 } else {
  if(i41<0.9988077878952026){
   if(i35<0.03988460451364517){
    s0+=256.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i4<1.0016975402832031){
    if(i7<-1.3379624761000741e-05){
     s0+=239.0;
     s1+=2074.0;
    } else {
     s0+=313.0;
     s1+=176.0;
    }
   } else {
    if(i0<0.1274578869342804){
     s0+=76.0;
     s1+=570.0;
    } else {
     s0+=20.0;
     s1+=9419.0;
    }
   }
  }
 }
}
if(i3<0.07752740383148193){
 if(i23<1.0052766799926758){
  if(i9<1.0410068035125732){
   if(i19<1.0417436361312866){
    if(i56<-0.0021754205226898193){
     s0+=1524.0;
     s1+=83.0;
    } else {
     s0+=48845.0;
     s1+=38.0;
    }
   } else {
    if(i39<0.0016114896861836314){
     s0+=4171.0;
     s1+=482.0;
    } else {
     s0+=4697.0;
     s1+=32.0;
    }
   }
  } else {
   if(i53<0.0016249308828264475){
    if(i33<0.0013473036233335733){
     s0+=4299.0;
     s1+=783.0;
    } else {
     s0+=2795.0;
     s1+=67.0;
    }
   } else {
    if(i22<0.014140117913484573){
     s0+=1437.0;
     s1+=191.0;
    } else {
     s0+=1054.0;
     s1+=790.0;
    }
   }
  }
 } else {
  if(i4<1.0029282569885254){
   if(i28<1.1386182308197021){
    s1+=44.0;
   } else {
    if(i15<0.9591954946517944){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=311.0;
     s1+=2.0;
    }
   }
  } else {
   if(i40<0.00013086199760437012){
    if(i60<0.0006386637687683105){
     s1+=9.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i25<0.00013569608563557267){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=784.0;
    }
   }
  }
 }
} else {
 if(i20<1.0071825981140137){
  if(i17<0.005594329442828894){
   if(i11<1.0847222805023193){
    if(i46<0.05659031867980957){
     s0+=137.0;
     s1+=1071.0;
    } else {
     s0+=545.0;
     s1+=356.0;
    }
   } else {
    if(i50<0.03546878695487976){
     s0+=151.0;
     s1+=149.0;
    } else {
     s0+=760.0;
     s1+=163.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i57<0.00014116012607701123){
     s0+=19.0;
     s1+=193.0;
    } else {
     s0+=69.0;
     s1+=3.0;
    }
   } else {
    if(i43<3.851367182505783e-06){
     s0+=61.0;
     s1+=2907.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i7<-2.4415643565589562e-05){
   if(i7<-4.265554525773041e-05){
    if(i6<5.346536636352539e-05){
     s0+=1.0;
     s1+=897.0;
    } else {
     s1+=8089.0;
    }
   } else {
    if(i17<0.0019900882616639137){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=88.0;
    }
   }
  } else {
   if(i3<0.2320106327533722){
    if(i1<-0.00014474987983703613){
     s1+=3.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i17<0.001857005525380373){
     s0+=5.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
}
if(i13<1.0080137252807617){
 if(i3<0.07742854952812195){
  if(i58<0.0019036517478525639){
   if(i4<1.0024986267089844){
    if(i5<0.05869033932685852){
     s0+=60536.0;
     s1+=661.0;
    } else {
     s0+=2803.0;
     s1+=332.0;
    }
   } else {
    if(i30<0.9976176619529724){
     s0+=46.0;
     s1+=3.0;
    } else {
     s0+=49.0;
     s1+=149.0;
    }
   }
  } else {
   if(i7<1.2076307029929012e-05){
    if(i41<1.0010628700256348){
     s0+=2960.0;
     s1+=806.0;
    } else {
     s0+=311.0;
     s1+=360.0;
    }
   } else {
    if(i8<-9.012222290039062e-05){
     s0+=1440.0;
     s1+=7.0;
    } else {
     s0+=43.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i16<0.9985270500183105){
   if(i25<0.052900124341249466){
    if(i4<0.9970167875289917){
     s0+=449.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=9.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i67<0.0003202542138751596){
    if(i46<0.058808356523513794){
     s0+=64.0;
     s1+=504.0;
    } else {
     s0+=594.0;
     s1+=325.0;
    }
   } else {
    if(i2<0.12429484724998474){
     s0+=293.0;
     s1+=742.0;
    } else {
     s0+=49.0;
     s1+=2255.0;
    }
   }
  }
 }
} else {
 if(i53<0.0010380259482190013){
  if(i2<0.08534818887710571){
   if(i47<0.023406419903039932){
    if(i42<1.1609270572662354){
     s0+=13.0;
     s1+=194.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i10<0.0015235543251037598){
     s0+=622.0;
     s1+=21.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i50<0.1045650839805603){
    if(i56<0.009766817092895508){
     s0+=41.0;
     s1+=1195.0;
    } else {
     s0+=103.0;
     s1+=106.0;
    }
   } else {
    if(i43<-1.8405569790047593e-05){
     s1+=31.0;
    } else {
     s0+=150.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i70<1.1220141686862917e-06){
   if(i1<0.000476837158203125){
    if(i17<0.00337283406406641){
     s0+=189.0;
     s1+=83.0;
    } else {
     s0+=14.0;
     s1+=817.0;
    }
   } else {
    if(i30<0.9974368214607239){
     s0+=32.0;
     s1+=396.0;
    } else {
     s0+=27.0;
     s1+=8117.0;
    }
   }
  } else {
   s0+=111.0;
  }
 }
}
if(i2<0.08509460091590881){
 if(i7<-4.935540346195921e-05){
  if(i32<1.2413508892059326){
   if(i32<1.0634281635284424){
    s0+=252.0;
   } else {
    if(i10<-0.0005276501178741455){
     s0+=8.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=694.0;
    }
   }
  } else {
   if(i18<-0.0003358423709869385){
    if(i9<1.0882463455200195){
     s0+=1420.0;
     s1+=19.0;
    } else {
     s0+=34.0;
     s1+=44.0;
    }
   } else {
    if(i14<3.832578659057617e-05){
     s0+=468.0;
     s1+=216.0;
    } else {
     s0+=39.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i58<0.001539923483505845){
   if(i47<0.03042469173669815){
    if(i26<1.007392168045044){
     s0+=56471.0;
     s1+=307.0;
    } else {
     s0+=292.0;
     s1+=117.0;
    }
   } else {
    if(i42<1.0991880893707275){
     s0+=922.0;
     s1+=460.0;
    } else {
     s0+=3919.0;
     s1+=54.0;
    }
   }
  } else {
   if(i34<0.0008704282809048891){
    if(i34<0.00039836548967286944){
     s0+=1325.0;
     s1+=16.0;
    } else {
     s0+=436.0;
     s1+=614.0;
    }
   } else {
    if(i0<0.05259031057357788){
     s0+=3182.0;
     s1+=130.0;
    } else {
     s0+=466.0;
     s1+=153.0;
    }
   }
  }
 }
} else {
 if(i41<0.999065101146698){
  if(i35<0.03101351298391819){
   if(i16<0.9982139468193054){
    if(i43<-1.0199353710049763e-05){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=603.0;
    }
   } else {
    if(i5<0.08455139398574829){
     s0+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   s1+=24.0;
  }
 } else {
  if(i10<0.00023871660232543945){
   if(i22<0.023381106555461884){
    if(i15<0.9819547533988953){
     s0+=47.0;
     s1+=240.0;
    } else {
     s0+=758.0;
     s1+=373.0;
    }
   } else {
    if(i48<0.004221975803375244){
     s0+=57.0;
     s1+=1848.0;
    } else {
     s0+=272.0;
     s1+=1136.0;
    }
   }
  } else {
   if(i38<0.004818258341401815){
    if(i28<1.2392117977142334){
     s0+=12.0;
     s1+=1922.0;
    } else {
     s0+=137.0;
     s1+=250.0;
    }
   } else {
    if(i43<-1.0799920346471481e-05){
     s0+=1.0;
     s1+=8092.0;
    } else {
     s0+=6.0;
     s1+=147.0;
    }
   }
  }
 }
}
if(i0<0.0817338228225708){
 if(i9<1.0449585914611816){
  if(i1<0.0007365942001342773){
   if(i47<0.026191672310233116){
    if(i48<-0.003057718276977539){
     s0+=90.0;
     s1+=76.0;
    } else {
     s0+=53764.0;
     s1+=307.0;
    }
   } else {
    if(i33<0.0018206285312771797){
     s0+=2793.0;
     s1+=440.0;
    } else {
     s0+=5480.0;
     s1+=36.0;
    }
   }
  } else {
   if(i7<-4.581924804369919e-05){
    if(i15<0.9444484114646912){
     s0+=2.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i58<0.0018044174648821354){
     s0+=30.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i6<3.165006637573242e-05){
   if(i28<1.1013743877410889){
    if(i0<0.059672147035598755){
     s0+=1477.0;
     s1+=427.0;
    } else {
     s0+=279.0;
     s1+=417.0;
    }
   } else {
    if(i7<-3.953291161451489e-05){
     s0+=835.0;
     s1+=230.0;
    } else {
     s0+=4513.0;
     s1+=131.0;
    }
   }
  } else {
   if(i36<1.1877408027648926){
    if(i23<0.9945961236953735){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=646.0;
    }
   } else {
    if(i52<0.9748663902282715){
     s0+=36.0;
     s1+=226.0;
    } else {
     s0+=233.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i6<3.7550926208496094e-06){
  if(i22<0.021713893860578537){
   if(i37<0.048608094453811646){
    if(i33<0.00045433948980644345){
     s0+=61.0;
    } else {
     s0+=24.0;
     s1+=213.0;
    }
   } else {
    if(i13<1.008779764175415){
     s0+=541.0;
     s1+=69.0;
    } else {
     s0+=42.0;
     s1+=24.0;
    }
   }
  } else {
   if(i55<0.9995687007904053){
    if(i16<0.9979608654975891){
     s0+=196.0;
    } else {
     s0+=15.0;
     s1+=68.0;
    }
   } else {
    if(i7<-2.0389252313179895e-06){
     s0+=146.0;
     s1+=1108.0;
    } else {
     s0+=100.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i4<1.0019521713256836){
   if(i37<0.041270554065704346){
    if(i42<1.060716152191162){
     s0+=3.0;
    } else {
     s0+=11.0;
     s1+=1049.0;
    }
   } else {
    if(i42<1.3026196956634521){
     s0+=416.0;
     s1+=485.0;
    } else {
     s0+=17.0;
     s1+=247.0;
    }
   }
  } else {
   if(i44<0.012090800330042839){
    if(i25<0.0017904284177348018){
     s0+=20.0;
     s1+=901.0;
    } else {
     s0+=65.0;
     s1+=109.0;
    }
   } else {
    if(i2<0.13650986552238464){
     s0+=21.0;
     s1+=943.0;
    } else {
     s0+=7.0;
     s1+=8660.0;
    }
   }
  }
 }
}
if(i0<0.08304375410079956){
 if(i14<1.9252300262451172e-05){
  if(i9<1.0401114225387573){
   if(i60<-0.0013793110847473145){
    if(i21<0.9638992547988892){
     s0+=2036.0;
     s1+=23.0;
    } else {
     s0+=1533.0;
     s1+=316.0;
    }
   } else {
    if(i36<1.0557184219360352){
     s0+=39829.0;
    } else {
     s0+=14665.0;
     s1+=191.0;
    }
   }
  } else {
   if(i33<0.0014322566566988826){
    if(i36<1.0596027374267578){
     s0+=1869.0;
     s1+=10.0;
    } else {
     s0+=3436.0;
     s1+=1253.0;
    }
   } else {
    if(i58<0.001991253811866045){
     s0+=3455.0;
     s1+=72.0;
    } else {
     s0+=1197.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i50<-0.0005280077457427979){
   if(i69<0.00024228937400039285){
    if(i65<9.427562872588169e-06){
     s0+=97.0;
     s1+=150.0;
    } else {
     s0+=163.0;
     s1+=9.0;
    }
   } else {
    if(i57<0.000158230890519917){
     s0+=68.0;
     s1+=609.0;
    } else {
     s0+=123.0;
     s1+=130.0;
    }
   }
  } else {
   if(i12<0.9999256730079651){
    if(i48<-0.0015407800674438477){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=402.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.1677640676498413){
     s0+=36.0;
     s1+=118.0;
    } else {
     s0+=426.0;
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i4<0.9964578151702881){
  if(i34<0.008244041353464127){
   if(i44<0.05551626533269882){
    if(i55<0.9996119737625122){
     s0+=417.0;
    } else {
     s0+=93.0;
     s1+=19.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i9<1.0623810291290283){
    if(i34<0.009891511872410774){
     s1+=18.0;
    } else {
     s0+=18.0;
    }
   } else {
    s1+=94.0;
   }
  }
 } else {
  if(i33<0.0005116504617035389){
   if(i53<0.0005330356070771813){
    if(i6<1.0967254638671875e-05){
     s0+=196.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.002550888806581497){
     s0+=23.0;
     s1+=11.0;
    } else {
     s1+=91.0;
    }
   }
  } else {
   if(i4<1.0019546747207642){
    if(i55<0.9998687505722046){
     s0+=141.0;
     s1+=1808.0;
    } else {
     s0+=678.0;
     s1+=1382.0;
    }
   } else {
    if(i30<1.0041699409484863){
     s0+=97.0;
     s1+=1828.0;
    } else {
     s0+=14.0;
     s1+=8853.0;
    }
   }
  }
 }
}
if(i3<0.07873392105102539){
 if(i16<1.001636028289795){
  if(i19<1.0486011505126953){
   if(i69<0.0007657398236915469){
    if(i19<1.0410068035125732){
     s0+=47657.0;
     s1+=29.0;
    } else {
     s0+=5420.0;
     s1+=70.0;
    }
   } else {
    if(i34<0.0008596478146500885){
     s0+=1021.0;
     s1+=210.0;
    } else {
     s0+=1712.0;
     s1+=10.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i22<0.014454509131610394){
     s0+=2380.0;
     s1+=416.0;
    } else {
     s0+=408.0;
     s1+=973.0;
    }
   } else {
    if(i2<0.06657862663269043){
     s0+=8737.0;
     s1+=242.0;
    } else {
     s0+=942.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i4<1.0024760961532593){
   if(i58<0.009743936359882355){
    if(i55<1.000354290008545){
     s0+=173.0;
     s1+=87.0;
    } else {
     s0+=697.0;
     s1+=8.0;
    }
   } else {
    if(i6<1.3768672943115234e-05){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   }
  } else {
   if(i62<-0.012444781139492989){
    if(i0<0.07577615976333618){
     s0+=47.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i43<-1.464216438762378e-05){
     s0+=55.0;
     s1+=986.0;
    } else {
     s0+=52.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i10<0.0003553926944732666){
  if(i37<0.045191168785095215){
   if(i8<-0.0004399716854095459){
    s0+=75.0;
   } else {
    if(i7<7.5241605372866616e-06){
     s0+=50.0;
     s1+=2415.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   }
  } else {
   if(i68<-0.00011451079626567662){
    if(i0<0.11629471182823181){
     s0+=379.0;
     s1+=112.0;
    } else {
     s0+=349.0;
     s1+=1172.0;
    }
   } else {
    if(i4<1.001695156097412){
     s0+=687.0;
     s1+=131.0;
    } else {
     s0+=32.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i43<-1.8753455606201896e-06){
   if(i42<1.053894281387329){
    s0+=6.0;
   } else {
    if(i10<0.0006799101829528809){
     s0+=48.0;
     s1+=612.0;
    } else {
     s0+=33.0;
     s1+=9278.0;
    }
   }
  } else {
   if(i32<1.2604451179504395){
    if(i28<1.2799899578094482){
     s1+=19.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=66.0;
   }
  }
 }
}
if(i2<0.08355346322059631){
 if(i23<1.0043153762817383){
  if(i58<0.001771775190718472){
   if(i9<1.0428826808929443){
    if(i19<1.0428826808929443){
     s0+=50662.0;
     s1+=95.0;
    } else {
     s0+=6783.0;
     s1+=287.0;
    }
   } else {
    if(i1<0.0001475512981414795){
     s0+=4942.0;
     s1+=390.0;
    } else {
     s0+=805.0;
     s1+=318.0;
    }
   }
  } else {
   if(i3<0.046998828649520874){
    if(i40<-3.421306610107422e-05){
     s0+=2347.0;
     s1+=45.0;
    } else {
     s0+=2411.0;
     s1+=603.0;
    }
   } else {
    if(i50<0.02417561411857605){
     s0+=253.0;
     s1+=476.0;
    } else {
     s0+=360.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i1<0.0005483627319335938){
   if(i42<1.0945420265197754){
    if(i55<1.0002174377441406){
     s1+=49.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i15<0.9615148305892944){
     s0+=19.0;
     s1+=17.0;
    } else {
     s0+=485.0;
     s1+=6.0;
    }
   }
  } else {
   if(i7<-4.3521460611373186e-05){
    if(i32<1.613681674003601){
     s0+=4.0;
     s1+=660.0;
    } else {
     s0+=10.0;
     s1+=24.0;
    }
   } else {
    if(i61<1.0022940635681152){
     s0+=61.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i7<-1.4546285456162877e-05){
  if(i17<0.0046868957579135895){
   if(i28<1.2570146322250366){
    if(i41<0.9966830015182495){
     s0+=16.0;
    } else {
     s0+=64.0;
     s1+=1612.0;
    }
   } else {
    if(i46<0.05446827411651611){
     s0+=29.0;
     s1+=284.0;
    } else {
     s0+=417.0;
     s1+=143.0;
    }
   }
  } else {
   if(i0<0.08444377779960632){
    if(i34<0.003009086474776268){
     s0+=1.0;
     s1+=75.0;
    } else {
     s0+=75.0;
     s1+=8.0;
    }
   } else {
    if(i14<-1.913309097290039e-05){
     s0+=9.0;
    } else {
     s0+=153.0;
     s1+=11477.0;
    }
   }
  }
 } else {
  if(i41<0.9993038177490234){
   if(i51<-0.011788850650191307){
    if(i8<-0.0003681182861328125){
     s0+=56.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=542.0;
   }
  } else {
   if(i57<3.422966619837098e-05){
    if(i43<-1.1656960850814357e-05){
     s1+=20.0;
    } else {
     s0+=479.0;
     s1+=63.0;
    }
   } else {
    if(i46<0.05478084087371826){
     s0+=8.0;
     s1+=211.0;
    } else {
     s0+=190.0;
     s1+=146.0;
    }
   }
  }
 }
}
if(i3<0.07742848992347717){
 if(i4<1.0025451183319092){
  if(i50<-0.02768230438232422){
   if(i12<1.0004322528839111){
    if(i61<0.9978659152984619){
     s0+=722.0;
     s1+=18.0;
    } else {
     s0+=1512.0;
     s1+=355.0;
    }
   } else {
    if(i0<0.012962132692337036){
     s0+=187.0;
     s1+=41.0;
    } else {
     s0+=119.0;
     s1+=257.0;
    }
   }
  } else {
   if(i35<0.00028922752244398){
    if(i15<1.0087716579437256){
     s0+=46035.0;
     s1+=36.0;
    } else {
     s0+=4.0;
     s1+=34.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=4646.0;
     s1+=1131.0;
    } else {
     s0+=15800.0;
     s1+=283.0;
    }
   }
  }
 } else {
  if(i43<-1.4116389138507657e-05){
   if(i59<1.0021320581436157){
    if(i59<0.9976022243499756){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=21.0;
     s1+=1008.0;
    }
   } else {
    if(i21<0.99956214427948){
     s0+=21.0;
     s1+=36.0;
    } else {
     s0+=27.0;
    }
   }
  } else {
   if(i36<1.125915288925171){
    s1+=39.0;
   } else {
    if(i71<5.017372313886881e-05){
     s1+=1.0;
    } else {
     s0+=149.0;
    }
   }
  }
 }
} else {
 if(i7<-2.2693628125125542e-05){
  if(i0<0.11696016788482666){
   if(i66<-0.005163363181054592){
    if(i63<0.0062503814697265625){
     s0+=29.0;
     s1+=81.0;
    } else {
     s0+=296.0;
     s1+=24.0;
    }
   } else {
    if(i49<0.01378101110458374){
     s0+=51.0;
     s1+=1526.0;
    } else {
     s0+=28.0;
     s1+=22.0;
    }
   }
  } else {
   if(i17<0.0030356126371771097){
    if(i54<0.008235126733779907){
     s0+=21.0;
     s1+=396.0;
    } else {
     s0+=68.0;
     s1+=14.0;
    }
   } else {
    if(i8<-0.0005412697792053223){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=64.0;
     s1+=11090.0;
    }
   }
  }
 } else {
  if(i61<0.9977350234985352){
   if(i55<0.9999618530273438){
    s0+=415.0;
   } else {
    if(i40<-5.9038400650024414e-05){
     s1+=5.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i31<0.06313502788543701){
    if(i22<0.013485940173268318){
     s0+=22.0;
     s1+=41.0;
    } else {
     s0+=6.0;
     s1+=269.0;
    }
   } else {
    if(i5<0.1946505606174469){
     s0+=785.0;
     s1+=223.0;
    } else {
     s0+=98.0;
     s1+=157.0;
    }
   }
  }
 }
}
if(i6<3.653764724731445e-05){
 if(i9<1.0452277660369873){
  if(i19<1.0447232723236084){
   if(i56<-0.0023281872272491455){
    if(i3<0.04028412699699402){
     s0+=1351.0;
     s1+=60.0;
    } else {
     s0+=164.0;
     s1+=76.0;
    }
   } else {
    if(i47<0.029301036149263382){
     s0+=48790.0;
     s1+=62.0;
    } else {
     s0+=3100.0;
     s1+=45.0;
    }
   }
  } else {
   if(i5<0.060408204793930054){
    if(i51<0.0069489991292357445){
     s0+=7477.0;
     s1+=397.0;
    } else {
     s0+=564.0;
     s1+=163.0;
    }
   } else {
    if(i63<0.028398960828781128){
     s0+=77.0;
     s1+=213.0;
    } else {
     s0+=326.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i7<-4.22362209064886e-05){
   if(i3<0.0779341459274292){
    if(i57<9.321393736172467e-05){
     s0+=218.0;
     s1+=225.0;
    } else {
     s0+=512.0;
     s1+=148.0;
    }
   } else {
    if(i16<1.001330852508545){
     s0+=28.0;
     s1+=1502.0;
    } else {
     s0+=112.0;
     s1+=348.0;
    }
   }
  } else {
   if(i40<-0.00014138221740722656){
    if(i9<1.0817866325378418){
     s0+=740.0;
     s1+=9.0;
    } else {
     s0+=1036.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=1589.0;
     s1+=1197.0;
    } else {
     s0+=4197.0;
     s1+=939.0;
    }
   }
  }
 }
} else {
 if(i32<1.0795294046401978){
  s0+=355.0;
 } else {
  if(i20<1.0098415613174438){
   if(i2<0.136933833360672){
    if(i56<0.003921329975128174){
     s0+=256.0;
     s1+=1250.0;
    } else {
     s0+=174.0;
     s1+=65.0;
    }
   } else {
    if(i7<-5.446273280540481e-05){
     s0+=8.0;
     s1+=1736.0;
    } else {
     s0+=12.0;
     s1+=128.0;
    }
   }
  } else {
   if(i7<-4.175581125309691e-05){
    s1+=8498.0;
   } else {
    if(i58<0.0011917088413611054){
     s1+=8.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i3<0.07737115025520325){
 if(i16<1.0018954277038574){
  if(i27<0.0002997173578478396){
   if(i11<1.0468311309814453){
    if(i15<1.0078530311584473){
     s0+=55606.0;
     s1+=392.0;
    } else {
     s0+=457.0;
     s1+=104.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=147.0;
     s1+=119.0;
    } else {
     s0+=307.0;
    }
   }
  } else {
   if(i36<1.1034480333328247){
    if(i14<4.112720489501953e-06){
     s0+=3587.0;
     s1+=748.0;
    } else {
     s0+=260.0;
     s1+=441.0;
    }
   } else {
    if(i49<-0.018329143524169922){
     s0+=1399.0;
     s1+=191.0;
    } else {
     s0+=6907.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i49<0.007384926080703735){
   if(i1<0.0002543330192565918){
    if(i29<0.9367200136184692){
     s0+=7.0;
     s1+=11.0;
    } else {
     s0+=201.0;
     s1+=10.0;
    }
   } else {
    if(i62<-0.011179350316524506){
     s0+=36.0;
     s1+=21.0;
    } else {
     s0+=89.0;
     s1+=994.0;
    }
   }
  } else {
   if(i65<-1.4664960872323718e-06){
    if(i51<0.003449220908805728){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i38<0.002316439989954233){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=292.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i4<1.001535177230835){
  if(i40<-0.0001392960548400879){
   if(i33<0.0017667785286903381){
    if(i59<0.9999618530273438){
     s0+=467.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.10013145208358765){
     s0+=28.0;
     s1+=11.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i22<0.02225508913397789){
    if(i49<0.011188924312591553){
     s0+=195.0;
     s1+=579.0;
    } else {
     s0+=627.0;
     s1+=126.0;
    }
   } else {
    if(i46<0.05846056342124939){
     s0+=23.0;
     s1+=1220.0;
    } else {
     s0+=381.0;
     s1+=1009.0;
    }
   }
  }
 } else {
  if(i6<5.370378494262695e-05){
   if(i68<-0.00026268669171258807){
    if(i40<7.680058479309082e-05){
     s0+=2.0;
     s1+=597.0;
    } else {
     s0+=56.0;
     s1+=416.0;
    }
   } else {
    if(i62<-0.0208247359842062){
     s0+=80.0;
     s1+=26.0;
    } else {
     s0+=14.0;
     s1+=170.0;
    }
   }
  } else {
   if(i1<0.0008388757705688477){
    if(i0<0.11285710334777832){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=82.0;
    }
   } else {
    if(i10<0.00015026330947875977){
     s0+=48.0;
     s1+=932.0;
    } else {
     s0+=2.0;
     s1+=8631.0;
    }
   }
  }
 }
}
if(i30<1.0073490142822266){
 if(i52<1.0137978792190552){
  if(i12<1.0026671886444092){
   if(i3<0.07660335302352905){
    if(i56<-0.0022396743297576904){
     s0+=5078.0;
     s1+=882.0;
    } else {
     s0+=60404.0;
     s1+=837.0;
    }
   } else {
    if(i12<0.9954606294631958){
     s0+=313.0;
     s1+=55.0;
    } else {
     s0+=228.0;
     s1+=1149.0;
    }
   }
  } else {
   if(i44<0.044729672372341156){
    if(i1<0.00042766332626342773){
     s0+=929.0;
     s1+=162.0;
    } else {
     s0+=141.0;
     s1+=831.0;
    }
   } else {
    if(i6<-3.24249267578125e-05){
     s0+=30.0;
    } else {
     s0+=3.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i22<0.029414331540465355){
   if(i4<1.003767728805542){
    if(i17<0.002711643697693944){
     s0+=1146.0;
     s1+=53.0;
    } else {
     s0+=607.0;
     s1+=256.0;
    }
   } else {
    if(i64<0.0003176458412781358){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=127.0;
    }
   }
  } else {
   if(i43<2.569485104686464e-06){
    if(i0<0.1155116856098175){
     s0+=153.0;
     s1+=102.0;
    } else {
     s0+=65.0;
     s1+=1630.0;
    }
   } else {
    if(i41<0.9996001720428467){
     s0+=109.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i6<3.3915042877197266e-05){
  if(i36<1.083398699760437){
   if(i7<-2.6295634597772732e-05){
    if(i69<0.0005094758816994727){
     s0+=1.0;
     s1+=441.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   } else {
    if(i16<0.9997572898864746){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=41.0;
     s1+=3.0;
    }
   }
  } else {
   if(i44<0.01674078404903412){
    if(i17<0.0029540634714066982){
     s0+=1349.0;
     s1+=44.0;
    } else {
     s0+=98.0;
     s1+=146.0;
    }
   } else {
    if(i7<-2.1939609723631293e-05){
     s0+=23.0;
     s1+=575.0;
    } else {
     s0+=181.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i3<0.06463903188705444){
   if(i43<-1.4832723536528647e-05){
    if(i34<0.00520147942006588){
     s1+=371.0;
    } else {
     s0+=15.0;
     s1+=46.0;
    }
   } else {
    if(i40<0.00018003582954406738){
     s0+=120.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.0008353590965270996){
    if(i0<0.0942523181438446){
     s0+=13.0;
     s1+=80.0;
    } else {
     s1+=498.0;
    }
   } else {
    if(i19<1.1222221851348877){
     s0+=2.0;
     s1+=1346.0;
    } else {
     s1+=6697.0;
    }
   }
  }
 }
}
if(i15<1.00885009765625){
 if(i16<1.0016283988952637){
  if(i3<0.081393301486969){
   if(i11<1.0401114225387573){
    if(i25<0.000281831540632993){
     s0+=51125.0;
     s1+=142.0;
    } else {
     s0+=11328.0;
     s1+=937.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=1475.0;
     s1+=491.0;
    } else {
     s0+=3175.0;
     s1+=245.0;
    }
   }
  } else {
   if(i46<0.06313696503639221){
    if(i41<0.9986146688461304){
     s0+=80.0;
    } else {
     s0+=60.0;
     s1+=1273.0;
    }
   } else {
    if(i2<0.1367131769657135){
     s0+=456.0;
     s1+=90.0;
    } else {
     s0+=171.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i10<-0.002465754747390747){
   if(i25<0.015455745160579681){
    if(i2<0.10448873043060303){
     s0+=562.0;
     s1+=34.0;
    } else {
     s0+=24.0;
     s1+=51.0;
    }
   } else {
    s1+=114.0;
   }
  } else {
   if(i23<1.0029897689819336){
    if(i67<0.0002638498554006219){
     s0+=189.0;
     s1+=58.0;
    } else {
     s0+=186.0;
     s1+=678.0;
    }
   } else {
    if(i35<0.0002768163103610277){
     s0+=35.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=1636.0;
    }
   }
  }
 }
} else {
 if(i2<0.08985257148742676){
  if(i33<0.0007433926220983267){
   if(i6<1.0013580322265625e-05){
    if(i13<1.0107700824737549){
     s0+=402.0;
     s1+=63.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i7<-2.2849659217172302e-05){
     s1+=478.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   }
  } else {
   if(i16<1.0030168294906616){
    if(i36<1.1489462852478027){
     s0+=273.0;
     s1+=73.0;
    } else {
     s0+=1024.0;
     s1+=5.0;
    }
   } else {
    if(i18<-9.03010368347168e-05){
     s0+=13.0;
    } else {
     s1+=66.0;
    }
   }
  }
 } else {
  if(i1<0.0004838109016418457){
   if(i46<0.06433337926864624){
    if(i3<0.09160420298576355){
     s0+=26.0;
     s1+=117.0;
    } else {
     s0+=3.0;
     s1+=676.0;
    }
   } else {
    if(i0<0.2816479802131653){
     s0+=489.0;
     s1+=281.0;
    } else {
     s0+=63.0;
     s1+=404.0;
    }
   }
  } else {
   if(i7<-4.92919898533728e-05){
    if(i22<0.00097155652474612){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=33.0;
     s1+=8545.0;
    }
   } else {
    if(i32<1.2261788845062256){
     s0+=5.0;
     s1+=127.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
}
if(i7<-6.902685709064826e-05){
 if(i2<0.05803796648979187){
  if(i9<1.043454647064209){
   if(i30<0.9980993866920471){
    if(i66<0.005783057305961847){
     s0+=769.0;
     s1+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i50<0.003922879695892334){
    if(i5<0.0037657320499420166){
     s0+=101.0;
     s1+=45.0;
    } else {
     s0+=31.0;
     s1+=217.0;
    }
   } else {
    if(i62<-0.007444758899509907){
     s0+=108.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i33<0.0004683042352553457){
   s0+=71.0;
  } else {
   if(i3<0.0972030758857727){
    if(i62<-0.014975450001657009){
     s0+=156.0;
     s1+=34.0;
    } else {
     s0+=54.0;
     s1+=998.0;
    }
   } else {
    if(i22<0.010178185999393463){
     s0+=23.0;
     s1+=446.0;
    } else {
     s0+=26.0;
     s1+=9902.0;
    }
   }
  }
 }
} else {
 if(i3<0.07568562030792236){
  if(i8<0.0005149245262145996){
   if(i51<0.006897660903632641){
    if(i0<0.07887840270996094){
     s0+=63267.0;
     s1+=1071.0;
    } else {
     s0+=58.0;
     s1+=148.0;
    }
   } else {
    if(i41<0.9993605613708496){
     s0+=1459.0;
     s1+=35.0;
    } else {
     s0+=2448.0;
     s1+=646.0;
    }
   }
  } else {
   if(i42<1.1480928659439087){
    if(i71<0.00034797261469066143){
     s1+=310.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i8<0.0009943842887878418){
     s0+=549.0;
     s1+=35.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i46<0.057210057973861694){
   if(i14<-1.341104507446289e-05){
    if(i50<-0.08584904670715332){
     s1+=2.0;
    } else {
     s0+=127.0;
     s1+=1.0;
    }
   } else {
    if(i49<0.020795345306396484){
     s0+=77.0;
     s1+=1825.0;
    } else {
     s0+=47.0;
     s1+=77.0;
    }
   }
  } else {
   if(i8<-0.00039127469062805176){
    if(i70<-3.2578052469034446e-06){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=427.0;
     s1+=4.0;
    }
   } else {
    if(i0<0.10631850361824036){
     s0+=681.0;
     s1+=102.0;
    } else {
     s0+=556.0;
     s1+=1130.0;
    }
   }
  }
 }
}
if(i2<0.08513569831848145){
 if(i16<1.0017175674438477){
  if(i25<0.00031640162342227995){
   if(i21<1.0091263055801392){
    if(i60<-0.0027903318405151367){
     s0+=6.0;
     s1+=38.0;
    } else {
     s0+=53691.0;
     s1+=241.0;
    }
   } else {
    if(i4<1.001408576965332){
     s0+=132.0;
     s1+=21.0;
    } else {
     s0+=43.0;
     s1+=104.0;
    }
   }
  } else {
   if(i38<0.0011259757447987795){
    if(i33<0.00042110320646315813){
     s0+=2587.0;
     s1+=71.0;
    } else {
     s0+=973.0;
     s1+=1209.0;
    }
   } else {
    if(i0<0.07536333799362183){
     s0+=10434.0;
     s1+=325.0;
    } else {
     s0+=283.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i10<-0.0007170438766479492){
   if(i60<-0.0015226900577545166){
    if(i9<1.0772948265075684){
     s0+=236.0;
     s1+=80.0;
    } else {
     s0+=31.0;
     s1+=151.0;
    }
   } else {
    if(i9<1.123025894165039){
     s0+=514.0;
     s1+=22.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i70<-4.72034025733592e-06){
    if(i60<0.003838062286376953){
     s0+=37.0;
     s1+=702.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   } else {
    if(i8<0.0005758404731750488){
     s0+=58.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i14<-1.621246337890625e-05){
  if(i34<0.003546137362718582){
   s0+=546.0;
  } else {
   if(i37<0.06135404109954834){
    if(i11<1.0162153244018555){
     s1+=1.0;
    } else {
     s0+=50.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.1005815863609314){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i0<0.11924108862876892){
   if(i66<-0.004662016406655312){
    if(i37<0.03969168663024902){
     s0+=40.0;
     s1+=106.0;
    } else {
     s0+=615.0;
     s1+=24.0;
    }
   } else {
    if(i19<1.0494635105133057){
     s0+=83.0;
     s1+=38.0;
    } else {
     s0+=177.0;
     s1+=1994.0;
    }
   }
  } else {
   if(i7<-2.1036785256001167e-05){
    if(i41<0.9962259531021118){
     s0+=14.0;
    } else {
     s0+=144.0;
     s1+=11631.0;
    }
   } else {
    if(i54<0.0074547529220581055){
     s0+=53.0;
     s1+=283.0;
    } else {
     s0+=215.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i45<0.05426163971424103){
  if(i0<0.08468303084373474){
   if(i56<-0.0030773580074310303){
    if(i32<1.094580888748169){
     s0+=77.0;
     s1+=192.0;
    } else {
     s0+=146.0;
     s1+=55.0;
    }
   } else {
    if(i19<1.0487183332443237){
     s0+=52018.0;
     s1+=151.0;
    } else {
     s0+=5942.0;
     s1+=543.0;
    }
   }
  } else {
   if(i65<2.1085594198666513e-05){
    if(i37<0.05692952871322632){
     s0+=14.0;
     s1+=377.0;
    } else {
     s0+=67.0;
     s1+=61.0;
    }
   } else {
    if(i30<0.9944525957107544){
     s0+=82.0;
     s1+=3.0;
    } else {
     s0+=20.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i47<0.529824435710907){
   if(i1<0.000213623046875){
    if(i1<-0.0005168914794921875){
     s0+=6276.0;
     s1+=443.0;
    } else {
     s0+=4390.0;
     s1+=1577.0;
    }
   } else {
    if(i12<1.0015203952789307){
     s0+=181.0;
     s1+=211.0;
    } else {
     s0+=271.0;
     s1+=1872.0;
    }
   }
  } else {
   if(i0<0.02643778920173645){
    s0+=57.0;
   } else {
    s1+=765.0;
   }
  }
 }
} else {
 if(i18<0.00019687414169311523){
  if(i41<1.001232385635376){
   if(i22<0.036846525967121124){
    if(i17<0.0035789874382317066){
     s0+=1070.0;
     s1+=426.0;
    } else {
     s0+=120.0;
     s1+=744.0;
    }
   } else {
    if(i43<2.9774787435599137e-06){
     s0+=64.0;
     s1+=1003.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i6<-6.935000419616699e-05){
    s0+=2.0;
   } else {
    s1+=789.0;
   }
  }
 } else {
  if(i4<1.004080057144165){
   if(i16<1.000978946685791){
    if(i2<0.0596197247505188){
     s0+=4.0;
     s1+=4.0;
    } else {
     s1+=578.0;
    }
   } else {
    if(i57<-1.240987785422476e-05){
     s0+=36.0;
     s1+=9.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   s1+=7518.0;
  }
 }
}
if(i5<0.06979292631149292){
 if(i2<0.07987567782402039){
  if(i14<2.0563602447509766e-05){
   if(i60<-0.0012819766998291016){
    if(i6<-1.8298625946044922e-05){
     s0+=4174.0;
     s1+=287.0;
    } else {
     s0+=1536.0;
     s1+=577.0;
    }
   } else {
    if(i7<-4.9035432311939076e-05){
     s0+=437.0;
     s1+=213.0;
    } else {
     s0+=61323.0;
     s1+=717.0;
    }
   }
  } else {
   if(i23<1.0017409324645996){
    if(i27<0.012245485559105873){
     s0+=982.0;
     s1+=173.0;
    } else {
     s0+=5.0;
     s1+=42.0;
    }
   } else {
    if(i25<0.00020127810421399772){
     s0+=29.0;
    } else {
     s0+=43.0;
     s1+=588.0;
    }
   }
  }
 } else {
  if(i55<0.9995700120925903){
   s0+=282.0;
  } else {
   if(i46<0.04853355884552002){
    if(i1<-0.0009805262088775635){
     s0+=56.0;
     s1+=2.0;
    } else {
     s0+=47.0;
     s1+=1675.0;
    }
   } else {
    if(i29<1.0170183181762695){
     s1+=11.0;
    } else {
     s0+=125.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i18<5.8710575103759766e-05){
  if(i22<0.0263848677277565){
   if(i46<0.0458073616027832){
    if(i19<1.0469965934753418){
     s0+=23.0;
     s1+=4.0;
    } else {
     s0+=21.0;
     s1+=272.0;
    }
   } else {
    if(i17<0.005986793898046017){
     s0+=1395.0;
     s1+=237.0;
    } else {
     s0+=89.0;
     s1+=213.0;
    }
   }
  } else {
   if(i7<-8.41617293190211e-06){
    if(i10<-0.004063546657562256){
     s0+=52.0;
     s1+=68.0;
    } else {
     s0+=172.0;
     s1+=2735.0;
    }
   } else {
    if(i33<0.0018267338164150715){
     s0+=275.0;
     s1+=25.0;
    } else {
     s0+=37.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i1<0.00012320280075073242){
   if(i43<-2.6918230560113443e-06){
    if(i21<1.0086724758148193){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=69.0;
    }
   } else {
    if(i28<1.2604451179504395){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i0<0.09400790929794312){
    if(i52<1.0238837003707886){
     s0+=14.0;
     s1+=122.0;
    } else {
     s0+=35.0;
     s1+=9.0;
    }
   } else {
    if(i53<0.0010800848249346018){
     s0+=28.0;
     s1+=963.0;
    } else {
     s0+=2.0;
     s1+=7851.0;
    }
   }
  }
 }
}
if(i0<0.07893338799476624){
 if(i10<0.0013195276260375977){
  if(i48<-0.0015021562576293945){
   if(i41<1.0010757446289062){
    if(i0<0.02954322099685669){
     s0+=3085.0;
     s1+=276.0;
    } else {
     s0+=883.0;
     s1+=512.0;
    }
   } else {
    if(i6<2.2590160369873047e-05){
     s0+=179.0;
     s1+=47.0;
    } else {
     s0+=40.0;
     s1+=247.0;
    }
   }
  } else {
   if(i20<1.003753900527954){
    if(i35<0.000312762800604105){
     s0+=46550.0;
     s1+=59.0;
    } else {
     s0+=17302.0;
     s1+=1013.0;
    }
   } else {
    if(i34<0.0008534478256478906){
     s0+=128.0;
     s1+=258.0;
    } else {
     s0+=894.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i36<1.187422752380371){
   s1+=385.0;
  } else {
   if(i6<9.584426879882812e-05){
    s0+=61.0;
   } else {
    s1+=43.0;
   }
  }
 }
} else {
 if(i41<0.9990326166152954){
  if(i44<0.085910864174366){
   if(i40<-0.00023829936981201172){
    s0+=432.0;
   } else {
    if(i18<-7.140636444091797e-05){
     s0+=23.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   }
  } else {
   s1+=23.0;
  }
 } else {
  if(i12<1.0029940605163574){
   if(i37<0.04307854175567627){
    if(i0<0.08241268992424011){
     s0+=53.0;
     s1+=128.0;
    } else {
     s0+=46.0;
     s1+=2713.0;
    }
   } else {
    if(i38<0.006669585593044758){
     s0+=1088.0;
     s1+=907.0;
    } else {
     s0+=114.0;
     s1+=932.0;
    }
   }
  } else {
   if(i7<-6.758823292329907e-05){
    if(i10<-0.000838160514831543){
     s0+=25.0;
     s1+=444.0;
    } else {
     s0+=7.0;
     s1+=8517.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s1+=388.0;
    } else {
     s0+=119.0;
     s1+=260.0;
    }
   }
  }
 }
}
if(i2<0.08504641056060791){
 if(i4<1.0024782419204712){
  if(i27<0.00029909430304542184){
   if(i58<0.0017712253611534834){
    if(i22<0.023747418075799942){
     s0+=54540.0;
     s1+=311.0;
    } else {
     s0+=1057.0;
     s1+=134.0;
    }
   } else {
    if(i24<0.994430661201477){
     s0+=205.0;
     s1+=150.0;
    } else {
     s0+=608.0;
     s1+=13.0;
    }
   }
  } else {
   if(i0<0.06633460521697998){
    if(i1<-0.00032892823219299316){
     s0+=7715.0;
     s1+=267.0;
    } else {
     s0+=3706.0;
     s1+=824.0;
    }
   } else {
    if(i46<0.03963065147399902){
     s0+=56.0;
     s1+=433.0;
    } else {
     s0+=1067.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i38<0.0024557739961892366){
   if(i25<0.00015667668776586652){
    if(i35<0.0001905523386085406){
     s0+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i71<0.0002138882118742913){
     s1+=575.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i51<0.009103063493967056){
    if(i41<1.001140832901001){
     s0+=171.0;
     s1+=3.0;
    } else {
     s0+=34.0;
     s1+=42.0;
    }
   } else {
    if(i56<0.0029217302799224854){
     s0+=23.0;
     s1+=258.0;
    } else {
     s0+=12.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i6<-4.89354133605957e-05){
  if(i42<1.3685884475708008){
   if(i8<-0.00038698315620422363){
    if(i61<0.9984240531921387){
     s0+=474.0;
    } else {
     s0+=59.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.10340368747711182){
     s0+=46.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   }
  } else {
   if(i9<1.0429741144180298){
    if(i60<-0.0045001208782196045){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i33<0.010042037814855576){
     s0+=4.0;
     s1+=108.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i4<1.0017297267913818){
   if(i50<0.06231948733329773){
    if(i31<0.06384286284446716){
     s0+=34.0;
     s1+=1188.0;
    } else {
     s0+=332.0;
     s1+=965.0;
    }
   } else {
    if(i53<0.001081191934645176){
     s0+=493.0;
     s1+=150.0;
    } else {
     s0+=271.0;
     s1+=660.0;
    }
   }
  } else {
   if(i13<1.0233194828033447){
    if(i44<0.019026419147849083){
     s0+=150.0;
     s1+=1128.0;
    } else {
     s0+=8.0;
     s1+=2812.0;
    }
   } else {
    if(i2<0.088014155626297){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=6849.0;
    }
   }
  }
 }
}
if(i23<1.0035721063613892){
 if(i25<0.0003156763268634677){
  if(i56<-0.0046111345291137695){
   if(i50<-0.025271564722061157){
    s0+=4.0;
   } else {
    if(i61<0.9995049238204956){
     s0+=1.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i15<1.0081510543823242){
    if(i39<0.00035735045094043016){
     s0+=38269.0;
     s1+=20.0;
    } else {
     s0+=15021.0;
     s1+=259.0;
    }
   } else {
    if(i47<0.029463425278663635){
     s0+=124.0;
     s1+=136.0;
    } else {
     s0+=92.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i23<0.9945202469825745){
   if(i4<0.9979948401451111){
    if(i29<1.062173843383789){
     s0+=8267.0;
     s1+=253.0;
    } else {
     s0+=451.0;
     s1+=191.0;
    }
   } else {
    if(i35<0.007998793385922909){
     s0+=675.0;
     s1+=240.0;
    } else {
     s0+=87.0;
     s1+=408.0;
    }
   }
  } else {
   if(i31<0.05741587281227112){
    if(i1<0.0002326369285583496){
     s0+=5456.0;
     s1+=1776.0;
    } else {
     s0+=359.0;
     s1+=958.0;
    }
   } else {
    if(i2<0.10129708051681519){
     s0+=799.0;
     s1+=260.0;
    } else {
     s0+=545.0;
     s1+=2445.0;
    }
   }
  }
 }
} else {
 if(i7<-4.330831507104449e-05){
  if(i10<0.0015891194343566895){
   if(i8<-0.00017949938774108887){
    s0+=97.0;
   } else {
    if(i57<-8.302306014229544e-06){
     s0+=42.0;
     s1+=101.0;
    } else {
     s0+=66.0;
     s1+=2036.0;
    }
   }
  } else {
   s1+=7816.0;
  }
 } else {
  if(i8<0.0005910992622375488){
   if(i38<0.005403330083936453){
    if(i67<-0.0001281322620343417){
     s1+=23.0;
    } else {
     s0+=753.0;
     s1+=19.0;
    }
   } else {
    if(i9<1.088911771774292){
     s0+=7.0;
    } else {
     s1+=56.0;
    }
   }
  } else {
   s1+=101.0;
  }
 }
}
if(i9<1.052894115447998){
 if(i3<0.07747620344161987){
  if(i35<0.0002996420953422785){
   if(i4<1.0025629997253418){
    if(i21<1.0090361833572388){
     s0+=46605.0;
     s1+=46.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   } else {
    if(i38<0.0016721341526135802){
     s1+=31.0;
    } else {
     s0+=42.0;
    }
   }
  } else {
   if(i32<1.100754976272583){
    if(i61<1.000732660293579){
     s0+=4117.0;
     s1+=697.0;
    } else {
     s0+=45.0;
     s1+=372.0;
    }
   } else {
    if(i14<1.9490718841552734e-05){
     s0+=12382.0;
     s1+=168.0;
    } else {
     s0+=355.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i1<-0.0007114410400390625){
   if(i40<-0.00013276934623718262){
    s0+=152.0;
   } else {
    if(i58<0.0015700084622949362){
     s0+=93.0;
     s1+=11.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i46<0.058075129985809326){
    if(i33<0.00029876333428546786){
     s0+=4.0;
    } else {
     s0+=15.0;
     s1+=614.0;
    }
   } else {
    if(i22<0.02390298619866371){
     s0+=134.0;
     s1+=45.0;
    } else {
     s0+=7.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i6<3.331899642944336e-05){
  if(i22<0.02910551428794861){
   if(i68<-8.061009430093691e-05){
    if(i36<1.1039339303970337){
     s0+=616.0;
     s1+=770.0;
    } else {
     s0+=2972.0;
     s1+=501.0;
    }
   } else {
    if(i61<1.0008680820465088){
     s0+=1603.0;
     s1+=90.0;
    } else {
     s0+=360.0;
     s1+=112.0;
    }
   }
  } else {
   if(i38<0.005356053821742535){
    if(i25<0.004501062911003828){
     s0+=151.0;
     s1+=828.0;
    } else {
     s0+=638.0;
     s1+=135.0;
    }
   } else {
    if(i2<0.08453494310379028){
     s0+=212.0;
     s1+=68.0;
    } else {
     s0+=33.0;
     s1+=1076.0;
    }
   }
  }
 } else {
  if(i4<1.004081130027771){
   if(i0<0.11225652694702148){
    if(i28<1.2392117977142334){
     s1+=264.0;
    } else {
     s0+=320.0;
     s1+=183.0;
    }
   } else {
    if(i37<0.06227800250053406){
     s0+=1.0;
     s1+=921.0;
    } else {
     s0+=60.0;
     s1+=485.0;
    }
   }
  } else {
   if(i18<-0.00044476985931396484){
    if(i15<0.9775713682174683){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i68<-0.00011658341099973768){
     s0+=19.0;
     s1+=8875.0;
    } else {
     s0+=22.0;
     s1+=769.0;
    }
   }
  }
 }
}
if(i0<0.08236882090568542){
 if(i20<1.0045123100280762){
  if(i6<4.6193599700927734e-05){
   if(i69<0.0007819239399395883){
    if(i19<1.0486011505126953){
     s0+=52861.0;
     s1+=119.0;
    } else {
     s0+=7888.0;
     s1+=724.0;
    }
   } else {
    if(i39<0.002212021965533495){
     s0+=1494.0;
     s1+=857.0;
    } else {
     s0+=5775.0;
     s1+=268.0;
    }
   }
  } else {
   if(i48<-0.0008363723754882812){
    if(i12<0.998557448387146){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=276.0;
    }
   } else {
    if(i40<0.00022771954536437988){
     s0+=201.0;
    } else {
     s0+=30.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i60<0.0013647079467773438){
   if(i33<0.0007445081137120724){
    if(i19<1.1269298791885376){
     s0+=25.0;
     s1+=580.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i1<0.0009420514106750488){
     s0+=594.0;
     s1+=29.0;
    } else {
     s1+=139.0;
    }
   }
  } else {
   if(i43<-1.4440940503845923e-05){
    if(i42<1.1773569583892822){
     s1+=35.0;
    } else {
     s0+=30.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.0012192849535495043){
     s0+=22.0;
     s1+=18.0;
    } else {
     s0+=415.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i17<0.005267342086881399){
  if(i10<0.0006941258907318115){
   if(i37<0.05198517441749573){
    if(i33<0.00044856895692646503){
     s0+=92.0;
     s1+=9.0;
    } else {
     s0+=131.0;
     s1+=1172.0;
    }
   } else {
    if(i32<1.253311276435852){
     s0+=650.0;
     s1+=310.0;
    } else {
     s0+=551.0;
     s1+=36.0;
    }
   }
  } else {
   if(i43<-1.0924079560936661e-06){
    if(i7<-4.267675831215456e-05){
     s0+=1.0;
     s1+=1331.0;
    } else {
     s0+=40.0;
     s1+=82.0;
    }
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i20<0.9951284527778625){
   if(i39<0.006146996282041073){
    if(i37<0.044521182775497437){
     s0+=7.0;
     s1+=105.0;
    } else {
     s0+=92.0;
     s1+=62.0;
    }
   } else {
    if(i33<0.010902771726250648){
     s0+=9.0;
     s1+=960.0;
    } else {
     s0+=29.0;
     s1+=105.0;
    }
   }
  } else {
   if(i16<0.998095691204071){
    s0+=17.0;
   } else {
    if(i44<0.000810605357401073){
     s0+=2.0;
    } else {
     s0+=33.0;
     s1+=9898.0;
    }
   }
  }
 }
}
if(i25<0.00033419718965888023){
 if(i52<1.0131726264953613){
  if(i1<0.0006611049175262451){
   if(i13<1.0081498622894287){
    if(i4<1.0025017261505127){
     s0+=54426.0;
     s1+=316.0;
    } else {
     s0+=25.0;
     s1+=28.0;
    }
   } else {
    if(i32<1.1351666450500488){
     s0+=4.0;
     s1+=100.0;
    } else {
     s0+=106.0;
     s1+=10.0;
    }
   }
  } else {
   if(i71<0.0001156814832938835){
    if(i5<0.017819374799728394){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=136.0;
    }
   } else {
    if(i67<7.261793143698014e-06){
     s0+=64.0;
    } else {
     s0+=6.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i1<0.00013810396194458008){
   if(i17<0.004261959809809923){
    if(i52<1.0219478607177734){
     s0+=90.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i33<0.0002859454252757132){
    s0+=22.0;
   } else {
    if(i32<1.2392117977142334){
     s0+=1.0;
     s1+=222.0;
    } else {
     s0+=8.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i4<1.00087308883667){
  if(i9<1.0398828983306885){
   if(i33<0.0014561788411810994){
    if(i19<1.0406032800674438){
     s0+=1602.0;
     s1+=50.0;
    } else {
     s0+=788.0;
     s1+=319.0;
    }
   } else {
    if(i43<-4.6173121518222615e-05){
     s1+=4.0;
    } else {
     s0+=5993.0;
     s1+=20.0;
    }
   }
  } else {
   if(i7<-3.046039455512073e-05){
    if(i28<1.2371783256530762){
     s0+=3.0;
     s1+=676.0;
    } else {
     s0+=1182.0;
     s1+=1019.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=1647.0;
     s1+=954.0;
    } else {
     s0+=4231.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i44<0.0231805257499218){
   if(i6<5.716085433959961e-05){
    if(i56<0.0036093592643737793){
     s0+=327.0;
     s1+=868.0;
    } else {
     s0+=583.0;
     s1+=240.0;
    }
   } else {
    if(i33<0.008537530899047852){
     s0+=29.0;
     s1+=2128.0;
    } else {
     s0+=110.0;
     s1+=189.0;
    }
   }
  } else {
   if(i4<1.0013840198516846){
    if(i63<0.07383972406387329){
     s0+=30.0;
     s1+=219.0;
    } else {
     s0+=21.0;
     s1+=11.0;
    }
   } else {
    if(i7<-2.204566408181563e-05){
     s0+=1.0;
     s1+=8677.0;
    } else {
     s0+=4.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i5<0.07131022214889526){
 if(i1<0.0005721151828765869){
  if(i3<0.07798874378204346){
   if(i9<1.040665864944458){
    if(i19<1.0417436361312866){
     s0+=50282.0;
     s1+=106.0;
    } else {
     s0+=8860.0;
     s1+=466.0;
    }
   } else {
    if(i22<0.02242012694478035){
     s0+=8144.0;
     s1+=693.0;
    } else {
     s0+=1372.0;
     s1+=743.0;
    }
   }
  } else {
   if(i36<1.0688350200653076){
    s0+=61.0;
   } else {
    if(i37<0.04483592510223389){
     s0+=13.0;
     s1+=661.0;
    } else {
     s0+=25.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i17<0.001875300775282085){
   if(i41<1.0011651515960693){
    if(i43<-1.507331762695685e-05){
     s1+=9.0;
    } else {
     s0+=171.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i32<1.0633666515350342){
    s0+=36.0;
   } else {
    if(i50<0.04258492588996887){
     s0+=112.0;
     s1+=1836.0;
    } else {
     s0+=34.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i13<1.0146911144256592){
  if(i33<0.004922658670693636){
   if(i23<0.9943705797195435){
    if(i37<0.03894892334938049){
     s0+=26.0;
     s1+=42.0;
    } else {
     s0+=527.0;
     s1+=27.0;
    }
   } else {
    if(i37<0.050277113914489746){
     s0+=166.0;
     s1+=1056.0;
    } else {
     s0+=846.0;
     s1+=500.0;
    }
   }
  } else {
   if(i12<1.002122402191162){
    if(i44<0.04042040556669235){
     s0+=242.0;
     s1+=245.0;
    } else {
     s0+=18.0;
     s1+=393.0;
    }
   } else {
    if(i19<1.0638914108276367){
     s0+=27.0;
     s1+=7.0;
    } else {
     s0+=66.0;
     s1+=2072.0;
    }
   }
  }
 } else {
  if(i42<1.259662389755249){
   if(i6<5.3763389587402344e-05){
    if(i3<0.10522562265396118){
     s0+=85.0;
     s1+=25.0;
    } else {
     s0+=100.0;
     s1+=560.0;
    }
   } else {
    s1+=874.0;
   }
  } else {
   if(i8<-0.0004228353500366211){
    s0+=5.0;
   } else {
    if(i64<0.0002293056168127805){
     s0+=3.0;
     s1+=195.0;
    } else {
     s0+=1.0;
     s1+=6489.0;
    }
   }
  }
 }
}
if(i0<0.08203768730163574){
 if(i16<1.0019545555114746){
  if(i19<1.0451585054397583){
   if(i58<0.0015900211874395609){
    if(i69<0.0007040596101433039){
     s0+=50653.0;
     s1+=46.0;
    } else {
     s0+=1547.0;
     s1+=69.0;
    }
   } else {
    if(i36<1.0547096729278564){
     s0+=1034.0;
    } else {
     s0+=592.0;
     s1+=110.0;
    }
   }
  } else {
   if(i39<0.0016373794060200453){
    if(i69<0.0008848345605656505){
     s0+=5438.0;
     s1+=1017.0;
    } else {
     s0+=309.0;
     s1+=623.0;
    }
   } else {
    if(i52<0.9571067094802856){
     s0+=1978.0;
     s1+=199.0;
    } else {
     s0+=6994.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i28<1.4786540269851685){
   if(i54<0.002253890037536621){
    if(i60<0.0015937089920043945){
     s0+=30.0;
     s1+=667.0;
    } else {
     s0+=29.0;
     s1+=23.0;
    }
   } else {
    if(i63<0.04490220546722412){
     s0+=43.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i69<0.002211950719356537){
    if(i58<0.0042863041162490845){
     s0+=381.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i54<-0.0033440887928009033){
     s0+=14.0;
     s1+=170.0;
    } else {
     s0+=126.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i4<1.0018336772918701){
  if(i8<-0.00040227174758911133){
   if(i57<0.00017937980010174215){
    if(i8<-0.0004094839096069336){
     s0+=429.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i65<4.594701749738306e-05){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i54<0.002971857786178589){
    if(i46<0.058719366788864136){
     s0+=32.0;
     s1+=1544.0;
    } else {
     s0+=145.0;
     s1+=347.0;
    }
   } else {
    if(i5<0.1968153417110443){
     s0+=887.0;
     s1+=583.0;
    } else {
     s0+=91.0;
     s1+=814.0;
    }
   }
  }
 } else {
  if(i20<1.0076100826263428){
   if(i9<1.1364943981170654){
    if(i54<0.009626001119613647){
     s0+=77.0;
     s1+=940.0;
    } else {
     s0+=27.0;
     s1+=15.0;
    }
   } else {
    if(i38<0.004180607385933399){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=1141.0;
    }
   }
  } else {
   if(i7<-2.0041668904013932e-05){
    if(i7<-4.317488128435798e-05){
     s1+=8829.0;
    } else {
     s0+=6.0;
     s1+=42.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
}
if(i31<0.06022590398788452){
 if(i12<1.0029094219207764){
  if(i11<1.0452215671539307){
   if(i28<1.0856719017028809){
    s0+=37149.0;
   } else {
    if(i28<1.100313425064087){
     s0+=2596.0;
     s1+=1254.0;
    } else {
     s0+=23750.0;
     s1+=397.0;
    }
   }
  } else {
   if(i17<0.004447288811206818){
    if(i6<8.64267349243164e-06){
     s0+=2753.0;
     s1+=392.0;
    } else {
     s0+=518.0;
     s1+=453.0;
    }
   } else {
    if(i0<0.06798875331878662){
     s0+=398.0;
     s1+=191.0;
    } else {
     s0+=44.0;
     s1+=863.0;
    }
   }
  }
 } else {
  if(i3<0.04746818542480469){
   if(i50<-0.027003496885299683){
    if(i21<0.920790433883667){
     s0+=75.0;
     s1+=25.0;
    } else {
     s0+=33.0;
     s1+=283.0;
    }
   } else {
    if(i23<1.0040332078933716){
     s0+=755.0;
     s1+=27.0;
    } else {
     s0+=30.0;
     s1+=49.0;
    }
   }
  } else {
   if(i2<0.07562124729156494){
    if(i31<0.030737757682800293){
     s0+=7.0;
     s1+=256.0;
    } else {
     s0+=217.0;
     s1+=98.0;
    }
   } else {
    if(i6<-1.0848045349121094e-05){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=3464.0;
    }
   }
  }
 }
} else {
 if(i1<0.0004419684410095215){
  if(i14<-1.4930963516235352e-05){
   if(i7<-3.674704203149304e-05){
    if(i23<0.9886860847473145){
     s1+=11.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i53<0.0002454046334605664){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=564.0;
     s1+=2.0;
    }
   }
  } else {
   if(i31<0.0928967297077179){
    if(i0<0.10863643884658813){
     s0+=1303.0;
     s1+=276.0;
    } else {
     s0+=18.0;
     s1+=541.0;
    }
   } else {
    if(i5<0.16959986090660095){
     s0+=366.0;
     s1+=302.0;
    } else {
     s0+=143.0;
     s1+=899.0;
    }
   }
  }
 } else {
  if(i10<-0.0005536079406738281){
   if(i2<0.1320442259311676){
    if(i48<0.0012616217136383057){
     s0+=2.0;
     s1+=57.0;
    } else {
     s0+=100.0;
     s1+=19.0;
    }
   } else {
    if(i7<-5.4367774282582104e-05){
     s1+=375.0;
    } else {
     s0+=37.0;
     s1+=61.0;
    }
   }
  } else {
   if(i17<0.002393859438598156){
    if(i30<1.0126643180847168){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=99.0;
    }
   } else {
    if(i0<0.11709180474281311){
     s0+=27.0;
     s1+=231.0;
    } else {
     s0+=10.0;
     s1+=6638.0;
    }
   }
  }
 }
}
if(i9<1.0564017295837402){
 if(i0<0.08034226298332214){
  if(i4<1.0024954080581665){
   if(i56<-0.0017173290252685547){
    if(i9<1.0398828983306885){
     s0+=4974.0;
     s1+=358.0;
    } else {
     s0+=578.0;
     s1+=304.0;
    }
   } else {
    if(i13<1.0094983577728271){
     s0+=58840.0;
     s1+=461.0;
    } else {
     s0+=29.0;
     s1+=62.0;
    }
   }
  } else {
   if(i43<-1.44168698170688e-05){
    if(i70<-1.61194839165546e-05){
     s0+=2.0;
    } else {
     s1+=209.0;
    }
   } else {
    if(i7<-2.206741555710323e-05){
     s0+=107.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i1<-0.0005250275135040283){
   if(i32<1.0724589824676514){
    s0+=108.0;
   } else {
    if(i56<-0.0011494159698486328){
     s0+=3.0;
     s1+=30.0;
    } else {
     s0+=136.0;
     s1+=18.0;
    }
   }
  } else {
   if(i38<0.00034100032644346356){
    if(i15<1.0081473588943481){
     s0+=51.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i59<1.002951979637146){
     s0+=50.0;
     s1+=979.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i30<1.010871410369873){
  if(i33<0.004895460791885853){
   if(i7<-1.8056243789033033e-05){
    if(i32<1.150278091430664){
     s0+=19.0;
     s1+=922.0;
    } else {
     s0+=954.0;
     s1+=949.0;
    }
   } else {
    if(i61<1.0006279945373535){
     s0+=3120.0;
     s1+=347.0;
    } else {
     s0+=345.0;
     s1+=274.0;
    }
   }
  } else {
   if(i17<0.007498874329030514){
    if(i33<0.006817055866122246){
     s0+=362.0;
     s1+=480.0;
    } else {
     s0+=385.0;
     s1+=8.0;
    }
   } else {
    if(i11<1.0882463455200195){
     s0+=337.0;
     s1+=625.0;
    } else {
     s0+=4.0;
     s1+=2112.0;
    }
   }
  }
 } else {
  if(i18<0.0001424551010131836){
   if(i17<0.0031971409916877747){
    if(i5<0.1507197618484497){
     s0+=604.0;
     s1+=22.0;
    } else {
     s0+=43.0;
     s1+=45.0;
    }
   } else {
    if(i17<0.005821016617119312){
     s0+=114.0;
     s1+=194.0;
    } else {
     s1+=609.0;
    }
   }
  } else {
   if(i2<0.06563782691955566){
    if(i51<0.008284022100269794){
     s0+=61.0;
     s1+=25.0;
    } else {
     s0+=4.0;
     s1+=87.0;
    }
   } else {
    if(i44<0.0016146923881024122){
     s0+=4.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=7838.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i2<0.08297255635261536){
  if(i9<1.0451608896255493){
   if(i8<0.0006985068321228027){
    if(i35<0.0003082194016315043){
     s0+=46471.0;
     s1+=63.0;
    } else {
     s0+=15337.0;
     s1+=727.0;
    }
   } else {
    if(i55<1.00026535987854){
     s0+=25.0;
     s1+=92.0;
    } else {
     s0+=98.0;
     s1+=8.0;
    }
   }
  } else {
   if(i12<1.0006506443023682){
    if(i0<0.06707224249839783){
     s0+=2332.0;
     s1+=236.0;
    } else {
     s0+=81.0;
     s1+=100.0;
    }
   } else {
    if(i42<1.1184124946594238){
     s0+=66.0;
     s1+=300.0;
    } else {
     s0+=397.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i36<1.0670123100280762){
   if(i12<1.000391960144043){
    if(i26<1.0047943592071533){
     s0+=331.0;
     s1+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i65<2.580215777925332e-06){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i23<0.9933510422706604){
    if(i49<-0.0011762678623199463){
     s0+=10.0;
     s1+=34.0;
    } else {
     s0+=151.0;
     s1+=19.0;
    }
   } else {
    if(i46<0.05974063277244568){
     s0+=12.0;
     s1+=860.0;
    } else {
     s0+=32.0;
     s1+=98.0;
    }
   }
  }
 }
} else {
 if(i2<0.10015708208084106){
  if(i10<0.001096963882446289){
   if(i60<0.0030417442321777344){
    if(i7<-1.9980177967227064e-05){
     s0+=825.0;
     s1+=1020.0;
    } else {
     s0+=2241.0;
     s1+=268.0;
    }
   } else {
    if(i0<0.08724755048751831){
     s0+=1471.0;
     s1+=35.0;
    } else {
     s0+=109.0;
     s1+=42.0;
    }
   }
  } else {
   if(i28<1.2392117977142334){
    s1+=522.0;
   } else {
    if(i28<1.3812854290008545){
     s0+=78.0;
     s1+=1.0;
    } else {
     s1+=91.0;
    }
   }
  }
 } else {
  if(i44<0.023919343948364258){
   if(i20<1.0071752071380615){
    if(i29<1.0831290483474731){
     s0+=217.0;
     s1+=704.0;
    } else {
     s0+=559.0;
     s1+=198.0;
    }
   } else {
    if(i64<0.00013552942255046219){
     s0+=26.0;
     s1+=61.0;
    } else {
     s0+=9.0;
     s1+=1930.0;
    }
   }
  } else {
   if(i8<-0.00026664137840270996){
    if(i36<1.255998969078064){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=139.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.0029915720224380493){
     s0+=59.0;
     s1+=79.0;
    } else {
     s0+=24.0;
     s1+=9464.0;
    }
   }
  }
 }
}
if(i2<0.08511286973953247){
 if(i7<-4.987256397726014e-05){
  if(i6<1.615285873413086e-05){
   if(i26<1.0040314197540283){
    if(i34<0.003030613763257861){
     s0+=89.0;
     s1+=34.0;
    } else {
     s0+=1572.0;
     s1+=58.0;
    }
   } else {
    if(i18<9.310245513916016e-05){
     s0+=10.0;
     s1+=63.0;
    } else {
     s0+=65.0;
     s1+=7.0;
    }
   }
  } else {
   if(i50<0.010752350091934204){
    if(i23<1.0009334087371826){
     s0+=131.0;
     s1+=143.0;
    } else {
     s0+=54.0;
     s1+=859.0;
    }
   } else {
    if(i20<0.9993225336074829){
     s0+=296.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i22<0.016530074179172516){
   if(i6<4.3004751205444336e-05){
    if(i34<0.0002961615682579577){
     s0+=35310.0;
    } else {
     s0+=22910.0;
     s1+=687.0;
    }
   } else {
    if(i51<0.00659569539129734){
     s0+=100.0;
     s1+=29.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   }
  } else {
   if(i33<0.0014760696794837713){
    if(i36<1.0589431524276733){
     s0+=1385.0;
     s1+=17.0;
    } else {
     s0+=1207.0;
     s1+=1022.0;
    }
   } else {
    if(i9<1.0590819120407104){
     s0+=5313.0;
     s1+=28.0;
    } else {
     s0+=772.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i17<0.004804855678230524){
  if(i16<0.9985250234603882){
   if(i40<-0.00012925267219543457){
    if(i20<0.9969601035118103){
     s0+=530.0;
    } else {
     s0+=34.0;
     s1+=5.0;
    }
   } else {
    if(i67<0.0005441426765173674){
     s0+=14.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i63<0.040443480014801025){
    if(i49<0.020237833261489868){
     s0+=135.0;
     s1+=1880.0;
    } else {
     s0+=315.0;
     s1+=140.0;
    }
   } else {
    if(i20<1.007587194442749){
     s0+=555.0;
     s1+=172.0;
    } else {
     s0+=8.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i18<-0.00013512372970581055){
   if(i53<0.004804117605090141){
    if(i3<0.12463155388832092){
     s0+=217.0;
     s1+=164.0;
    } else {
     s0+=33.0;
     s1+=414.0;
    }
   } else {
    if(i44<0.015994377434253693){
     s0+=2.0;
     s1+=22.0;
    } else {
     s1+=565.0;
    }
   }
  } else {
   if(i43<1.2719960977847222e-06){
    if(i8<-0.0004566311836242676){
     s0+=3.0;
    } else {
     s0+=28.0;
     s1+=10535.0;
    }
   } else {
    if(i44<0.028880540281534195){
     s0+=22.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i3<0.0782996118068695){
 if(i23<1.0052235126495361){
  if(i50<-0.027522236108779907){
   if(i23<1.0019495487213135){
    if(i5<0.0352419912815094){
     s0+=2347.0;
     s1+=367.0;
    } else {
     s0+=193.0;
     s1+=242.0;
    }
   } else {
    if(i7<-3.0036702810321003e-05){
     s0+=23.0;
     s1+=142.0;
    } else {
     s0+=62.0;
     s1+=11.0;
    }
   }
  } else {
   if(i3<0.061065614223480225){
    if(i19<1.0451585054397583){
     s0+=50673.0;
     s1+=187.0;
    } else {
     s0+=11882.0;
     s1+=823.0;
    }
   } else {
    if(i46<0.03556719422340393){
     s0+=210.0;
     s1+=415.0;
    } else {
     s0+=3512.0;
     s1+=275.0;
    }
   }
  }
 } else {
  if(i43<-1.3976326954434626e-05){
   if(i8<0.00015527009963989258){
    if(i67<0.00042860073153860867){
     s1+=1.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i45<0.3992074728012085){
     s0+=1.0;
     s1+=799.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   }
  } else {
   if(i51<0.008836142718791962){
    if(i41<1.0009784698486328){
     s0+=331.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i36<1.1937308311462402){
     s1+=29.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<0.00024273991584777832){
  if(i22<0.02638406865298748){
   if(i66<-0.004379395395517349){
    if(i65<-2.605474946903996e-06){
     s0+=3.0;
     s1+=34.0;
    } else {
     s0+=845.0;
     s1+=134.0;
    }
   } else {
    if(i35<0.0003994409635197371){
     s0+=124.0;
     s1+=10.0;
    } else {
     s0+=231.0;
     s1+=589.0;
    }
   }
  } else {
   if(i4<0.9959855675697327){
    if(i32<1.4901387691497803){
     s0+=204.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=60.0;
    }
   } else {
    if(i44<0.02913866937160492){
     s0+=204.0;
     s1+=1031.0;
    } else {
     s0+=17.0;
     s1+=1798.0;
    }
   }
  }
 } else {
  if(i16<0.9986586570739746){
   s0+=31.0;
  } else {
   if(i6<1.0102987289428711e-05){
    if(i59<0.9998949766159058){
     s0+=4.0;
     s1+=182.0;
    } else {
     s0+=99.0;
     s1+=63.0;
    }
   } else {
    if(i44<0.015349159017205238){
     s0+=72.0;
     s1+=1425.0;
    } else {
     s0+=3.0;
     s1+=8492.0;
    }
   }
  }
 }
}
if(i7<-7.877762982388958e-05){
 if(i9<1.0428924560546875){
  if(i1<0.00043338537216186523){
   if(i40<0.0002798140048980713){
    if(i31<0.05563366413116455){
     s0+=461.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   } else {
    if(i10<-0.0031412243843078613){
     s0+=87.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i47<0.23627133667469025){
    s1+=53.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i10<-0.0024964213371276855){
   if(i11<1.0942420959472656){
    if(i17<0.01654732972383499){
     s0+=141.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    s1+=127.0;
   }
  } else {
   if(i18<-4.4405460357666016e-06){
    if(i53<0.002601739950478077){
     s0+=89.0;
     s1+=99.0;
    } else {
     s0+=39.0;
     s1+=1081.0;
    }
   } else {
    if(i7<-0.0007199204410426319){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=9743.0;
    }
   }
  }
 }
} else {
 if(i3<0.07536730170249939){
  if(i6<4.1812658309936523e-05){
   if(i35<0.00029590079793706536){
    if(i13<1.0077199935913086){
     s0+=46455.0;
     s1+=44.0;
    } else {
     s0+=8.0;
     s1+=81.0;
    }
   } else {
    if(i10<-0.0013446807861328125){
     s0+=11725.0;
     s1+=188.0;
    } else {
     s0+=9604.0;
     s1+=1751.0;
    }
   }
  } else {
   if(i38<0.001972575904801488){
    if(i71<0.00032466326956637204){
     s1+=445.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i13<0.9947746992111206){
     s1+=73.0;
    } else {
     s0+=151.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i1<-0.0007873773574829102){
   if(i64<0.0016215421492233872){
    if(i55<0.9997310638427734){
     s0+=382.0;
    } else {
     s0+=164.0;
     s1+=36.0;
    }
   } else {
    if(i20<0.9623085856437683){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=57.0;
    }
   }
  } else {
   if(i66<-0.005509052891284227){
    if(i0<0.12343046069145203){
     s0+=647.0;
     s1+=41.0;
    } else {
     s0+=344.0;
     s1+=853.0;
    }
   } else {
    if(i39<0.0003933015395887196){
     s0+=135.0;
     s1+=13.0;
    } else {
     s0+=301.0;
     s1+=2674.0;
    }
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i1<0.0006091594696044922){
  if(i35<0.00030454801162704825){
   if(i43<-1.4609365280193742e-05){
    if(i13<1.006525993347168){
     s0+=283.0;
     s1+=11.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i13<1.0094887018203735){
     s0+=46570.0;
     s1+=50.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i4<0.9976087808609009){
    if(i4<0.9965956211090088){
     s0+=11823.0;
     s1+=115.0;
    } else {
     s0+=2181.0;
     s1+=200.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=3081.0;
     s1+=1237.0;
    } else {
     s0+=5125.0;
     s1+=400.0;
    }
   }
  }
 } else {
  if(i17<0.0019465598743408918){
   if(i7<-5.539644917007536e-05){
    s1+=11.0;
   } else {
    s0+=166.0;
   }
  } else {
   if(i48<0.0022390782833099365){
    if(i28<1.5682398080825806){
     s0+=45.0;
     s1+=853.0;
    } else {
     s0+=69.0;
     s1+=69.0;
    }
   } else {
    s0+=50.0;
   }
  }
 }
} else {
 if(i7<-1.3829756426275708e-05){
  if(i2<0.13153088092803955){
   if(i60<0.003961801528930664){
    if(i50<0.055854618549346924){
     s0+=76.0;
     s1+=2436.0;
    } else {
     s0+=213.0;
     s1+=46.0;
    }
   } else {
    if(i37<0.03613114356994629){
     s0+=19.0;
     s1+=103.0;
    } else {
     s0+=235.0;
     s1+=11.0;
    }
   }
  } else {
   if(i64<0.00014720988110639155){
    if(i60<0.0049492716789245605){
     s0+=7.0;
     s1+=160.0;
    } else {
     s0+=53.0;
     s1+=24.0;
    }
   } else {
    if(i16<0.9979211688041687){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=90.0;
     s1+=10881.0;
    }
   }
  }
 } else {
  if(i4<0.996038556098938){
   if(i61<0.9994993209838867){
    if(i39<0.011356430128216743){
     s0+=442.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i60<-0.0011490285396575928){
     s1+=9.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i57<3.5183744330424815e-05){
    if(i40<0.00019571185111999512){
     s0+=466.0;
     s1+=45.0;
    } else {
     s0+=2.0;
     s1+=30.0;
    }
   } else {
    if(i35<0.0031033256091177464){
     s0+=23.0;
     s1+=193.0;
    } else {
     s0+=123.0;
     s1+=130.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i13<1.0084104537963867){
  if(i1<0.0006017386913299561){
   if(i2<0.08436259627342224){
    if(i27<0.00029966572765260935){
     s0+=55591.0;
     s1+=447.0;
    } else {
     s0+=8809.0;
     s1+=892.0;
    }
   } else {
    if(i19<1.049466609954834){
     s0+=360.0;
     s1+=31.0;
    } else {
     s0+=110.0;
     s1+=503.0;
    }
   }
  } else {
   if(i36<1.0533727407455444){
    s0+=56.0;
   } else {
    if(i18<-0.0004305839538574219){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=459.0;
    }
   }
  }
 } else {
  if(i36<1.1172748804092407){
   if(i26<1.0075535774230957){
    if(i25<0.00034142297226935625){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=58.0;
    }
   } else {
    s1+=292.0;
   }
  } else {
   if(i33<0.004399539902806282){
    if(i1<0.0013775229454040527){
     s0+=175.0;
     s1+=14.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i8<-0.00012880563735961914){
     s0+=1.0;
    } else {
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i17<0.004536287859082222){
  if(i3<0.0755770206451416){
   if(i10<0.001516580581665039){
    if(i32<1.1037919521331787){
     s0+=887.0;
     s1+=340.0;
    } else {
     s0+=2711.0;
     s1+=79.0;
    }
   } else {
    s1+=178.0;
   }
  } else {
   if(i7<-1.6634734492981806e-05){
    if(i27<0.0022586286067962646){
     s0+=174.0;
     s1+=1290.0;
    } else {
     s0+=281.0;
     s1+=225.0;
    }
   } else {
    if(i22<0.028984475880861282){
     s0+=658.0;
     s1+=57.0;
    } else {
     s0+=228.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i5<0.08502212166786194){
   if(i6<-3.173947334289551e-05){
    if(i53<0.005830901209264994){
     s0+=333.0;
     s1+=32.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i57<0.00011653680121526122){
     s0+=31.0;
     s1+=1680.0;
    } else {
     s0+=418.0;
     s1+=329.0;
    }
   }
  } else {
   if(i4<0.996595025062561){
    if(i8<-0.000544428825378418){
     s0+=77.0;
    } else {
     s0+=6.0;
     s1+=86.0;
    }
   } else {
    if(i8<-0.0004648864269256592){
     s0+=5.0;
    } else {
     s0+=105.0;
     s1+=9948.0;
    }
   }
  }
 }
}
if(i1<0.0005481839179992676){
 if(i0<0.08319085836410522){
  if(i51<0.007568643428385258){
   if(i19<1.0451585054397583){
    if(i49<-0.00678679347038269){
     s0+=333.0;
     s1+=41.0;
    } else {
     s0+=53051.0;
     s1+=167.0;
    }
   } else {
    if(i3<0.062477171421051025){
     s0+=11098.0;
     s1+=669.0;
    } else {
     s0+=1212.0;
     s1+=448.0;
    }
   }
  } else {
   if(i16<0.9986281394958496){
    if(i61<0.9978004097938538){
     s0+=959.0;
     s1+=6.0;
    } else {
     s0+=376.0;
     s1+=22.0;
    }
   } else {
    if(i57<3.198224658262916e-05){
     s0+=1350.0;
     s1+=210.0;
    } else {
     s0+=810.0;
     s1+=537.0;
    }
   }
  }
 } else {
  if(i4<0.9959948062896729){
   if(i53<0.0029264427721500397){
    if(i67<0.0012011588551104069){
     s0+=413.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i33<0.010852724313735962){
     s0+=12.0;
     s1+=84.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i7<-1.0585900781734381e-05){
    if(i50<0.05882033705711365){
     s0+=159.0;
     s1+=2102.0;
    } else {
     s0+=379.0;
     s1+=834.0;
    }
   } else {
    if(i29<1.0423606634140015){
     s0+=29.0;
     s1+=162.0;
    } else {
     s0+=499.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i39<0.00030976897687651217){
  s0+=195.0;
 } else {
  if(i68<-0.00048345490358769894){
   if(i59<1.0031559467315674){
    if(i43<-1.202384737553075e-05){
     s0+=7.0;
     s1+=7620.0;
    } else {
     s0+=6.0;
     s1+=60.0;
    }
   } else {
    if(i23<0.9952439069747925){
     s0+=11.0;
     s1+=2.0;
    } else {
     s1+=138.0;
    }
   }
  } else {
   if(i23<1.0065914392471313){
    if(i0<0.12765604257583618){
     s0+=347.0;
     s1+=596.0;
    } else {
     s0+=16.0;
     s1+=632.0;
    }
   } else {
    if(i9<1.0267541408538818){
     s0+=8.0;
     s1+=14.0;
    } else {
     s0+=44.0;
     s1+=2465.0;
    }
   }
  }
 }
}
if(i0<0.08225265145301819){
 if(i6<3.892183303833008e-05){
  if(i24<0.9768483638763428){
   if(i33<0.0013502128422260284){
    if(i38<0.00046263617696240544){
     s0+=544.0;
    } else {
     s0+=227.0;
     s1+=346.0;
    }
   } else {
    if(i53<0.006521731615066528){
     s0+=2196.0;
     s1+=123.0;
    } else {
     s0+=5.0;
     s1+=33.0;
    }
   }
  } else {
   if(i19<1.0451585054397583){
    if(i60<-0.0013791322708129883){
     s0+=1001.0;
     s1+=116.0;
    } else {
     s0+=52031.0;
     s1+=101.0;
    }
   } else {
    if(i34<0.0009327465668320656){
     s0+=5193.0;
     s1+=1040.0;
    } else {
     s0+=7677.0;
     s1+=289.0;
    }
   }
  }
 } else {
  if(i40<0.000152587890625){
   if(i42<1.5396478176116943){
    if(i59<1.000432014465332){
     s0+=367.0;
     s1+=27.0;
    } else {
     s1+=12.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i27<0.00016722118016332388){
    if(i6<3.9190053939819336e-05){
     s1+=3.0;
    } else {
     s0+=64.0;
     s1+=11.0;
    }
   } else {
    if(i50<0.03128477931022644){
     s0+=82.0;
     s1+=918.0;
    } else {
     s0+=41.0;
    }
   }
  }
 }
} else {
 if(i33<0.0004476824833545834){
  if(i49<0.005458474159240723){
   if(i70<-2.6117058951058425e-06){
    if(i33<0.0002739715273492038){
     s0+=10.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i43<-2.985555966006359e-06){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=119.0;
    }
   }
  } else {
   s0+=198.0;
  }
 } else {
  if(i40<-0.00025719404220581055){
   if(i16<0.9980800151824951){
    s0+=227.0;
   } else {
    s1+=37.0;
   }
  } else {
   if(i4<1.0017662048339844){
    if(i55<0.9998077154159546){
     s0+=104.0;
     s1+=1368.0;
    } else {
     s0+=869.0;
     s1+=1744.0;
    }
   } else {
    if(i17<0.002467106794938445){
     s0+=47.0;
     s1+=240.0;
    } else {
     s0+=95.0;
     s1+=10700.0;
    }
   }
  }
 }
}
if(i4<1.002460241317749){
 if(i27<0.0003172574797645211){
  if(i5<0.07290294766426086){
   if(i9<1.0451608896255493){
    if(i19<1.0451585054397583){
     s0+=50141.0;
     s1+=102.0;
    } else {
     s0+=4496.0;
     s1+=259.0;
    }
   } else {
    if(i56<-0.003385007381439209){
     s0+=10.0;
     s1+=34.0;
    } else {
     s0+=2477.0;
     s1+=364.0;
    }
   }
  } else {
   if(i63<0.04048892855644226){
    if(i0<0.08159041404724121){
     s0+=39.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=143.0;
    }
   } else {
    if(i0<0.10276508331298828){
     s0+=161.0;
     s1+=10.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i2<0.08555245399475098){
   if(i36<1.1476502418518066){
    if(i19<1.0451428890228271){
     s0+=1974.0;
     s1+=112.0;
    } else {
     s0+=2385.0;
     s1+=1109.0;
    }
   } else {
    if(i48<-0.010597437620162964){
     s0+=494.0;
     s1+=152.0;
    } else {
     s0+=6782.0;
     s1+=113.0;
    }
   }
  } else {
   if(i7<-1.381639958708547e-05){
    if(i16<0.9983965158462524){
     s0+=80.0;
     s1+=23.0;
    } else {
     s0+=523.0;
     s1+=3081.0;
    }
   } else {
    if(i63<0.04078403115272522){
     s0+=434.0;
     s1+=253.0;
    } else {
     s0+=523.0;
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i17<0.0022614020854234695){
  if(i65<-9.93086814560229e-06){
   s1+=158.0;
  } else {
   if(i57<-5.526464883587323e-05){
    s1+=31.0;
   } else {
    if(i47<0.008819369599223137){
     s0+=15.0;
     s1+=18.0;
    } else {
     s0+=180.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i44<0.018831636756658554){
   if(i57<7.178294617915526e-05){
    if(i4<1.0024685859680176){
     s0+=2.0;
    } else {
     s0+=11.0;
     s1+=2165.0;
    }
   } else {
    if(i29<1.056902527809143){
     s0+=42.0;
     s1+=152.0;
    } else {
     s0+=107.0;
     s1+=41.0;
    }
   }
  } else {
   if(i18<-0.0004572868347167969){
    if(i12<1.0049738883972168){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i23<0.997458815574646){
     s0+=5.0;
     s1+=403.0;
    } else {
     s1+=8512.0;
    }
   }
  }
 }
}
if(i4<1.0024771690368652){
 if(i3<0.07874795794487){
  if(i27<0.0002956066164188087){
   if(i19<1.0475037097930908){
    if(i60<-0.0016190409660339355){
     s0+=186.0;
     s1+=48.0;
    } else {
     s0+=50248.0;
     s1+=100.0;
    }
   } else {
    if(i11<1.0031490325927734){
     s0+=16.0;
     s1+=46.0;
    } else {
     s0+=5763.0;
     s1+=370.0;
    }
   }
  } else {
   if(i18<-0.0002206563949584961){
    if(i4<1.0010483264923096){
     s0+=6858.0;
     s1+=219.0;
    } else {
     s0+=57.0;
     s1+=56.0;
    }
   } else {
    if(i40<-3.460049629211426e-05){
     s0+=2904.0;
     s1+=107.0;
    } else {
     s0+=3001.0;
     s1+=1195.0;
    }
   }
  }
 } else {
  if(i44<0.040322914719581604){
   if(i37<0.05197903513908386){
    if(i4<0.994635820388794){
     s0+=113.0;
     s1+=12.0;
    } else {
     s0+=191.0;
     s1+=2047.0;
    }
   } else {
    if(i10<0.0008162856101989746){
     s0+=1386.0;
     s1+=537.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i19<1.0673002004623413){
    s0+=28.0;
   } else {
    if(i28<1.3750468492507935){
     s0+=17.0;
     s1+=254.0;
    } else {
     s1+=836.0;
    }
   }
  }
 }
} else {
 if(i10<0.0014309287071228027){
  if(i43<-1.5051275113364682e-05){
   if(i5<0.12802177667617798){
    if(i23<1.0018119812011719){
     s0+=115.0;
     s1+=302.0;
    } else {
     s0+=47.0;
     s1+=956.0;
    }
   } else {
    if(i2<0.16892573237419128){
     s0+=8.0;
     s1+=220.0;
    } else {
     s1+=1277.0;
    }
   }
  } else {
   if(i42<1.2038724422454834){
    if(i1<0.0004977583885192871){
     s0+=4.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i0<0.20712941884994507){
     s0+=160.0;
     s1+=1.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i18<0.00022929906845092773){
   if(i64<0.0001612966734683141){
    s0+=13.0;
   } else {
    s1+=169.0;
   }
  } else {
   if(i43<-8.555262866138946e-06){
    s1+=8170.0;
   } else {
    if(i70<-3.23801941704005e-06){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i4<1.0023751258850098){
 if(i5<0.07105055451393127){
  if(i9<1.0451608896255493){
   if(i60<-0.0013701319694519043){
    if(i27<0.0017366018146276474){
     s0+=1733.0;
     s1+=458.0;
    } else {
     s0+=2357.0;
     s1+=20.0;
    }
   } else {
    if(i36<1.0556960105895996){
     s0+=41167.0;
    } else {
     s0+=16417.0;
     s1+=405.0;
    }
   }
  } else {
   if(i22<0.01701267436146736){
    if(i18<9.924173355102539e-05){
     s0+=5015.0;
     s1+=342.0;
    } else {
     s0+=152.0;
     s1+=207.0;
    }
   } else {
    if(i1<-0.00043767690658569336){
     s0+=900.0;
     s1+=140.0;
    } else {
     s0+=970.0;
     s1+=1094.0;
    }
   }
  }
 } else {
  if(i38<0.00605424027889967){
   if(i50<0.0587787926197052){
    if(i8<-0.00038757920265197754){
     s0+=220.0;
     s1+=2.0;
    } else {
     s0+=500.0;
     s1+=1335.0;
    }
   } else {
    if(i44<0.040273088961839676){
     s0+=1028.0;
     s1+=279.0;
    } else {
     s1+=63.0;
    }
   }
  } else {
   if(i19<1.0819685459136963){
    if(i5<0.10209020972251892){
     s0+=109.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i20<0.9616785049438477){
     s0+=10.0;
     s1+=14.0;
    } else {
     s0+=69.0;
     s1+=1408.0;
    }
   }
  }
 }
} else {
 if(i0<0.06133708357810974){
  if(i49<-0.007846057415008545){
   if(i55<1.000765323638916){
    if(i25<0.00039050879422575235){
     s0+=5.0;
    } else {
     s0+=24.0;
     s1+=304.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   if(i7<-4.7750218072906137e-05){
    if(i40<0.00011420249938964844){
     s0+=27.0;
    } else {
     s0+=42.0;
     s1+=136.0;
    }
   } else {
    if(i70<-5.148922355147079e-06){
     s0+=3.0;
     s1+=15.0;
    } else {
     s0+=192.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i43<-1.4930970792192966e-05){
   if(i59<1.0009207725524902){
    if(i10<-0.0007140040397644043){
     s0+=16.0;
     s1+=380.0;
    } else {
     s0+=7.0;
     s1+=9253.0;
    }
   } else {
    if(i44<0.012106310576200485){
     s0+=42.0;
     s1+=70.0;
    } else {
     s0+=9.0;
     s1+=851.0;
    }
   }
  } else {
   if(i59<0.999587893486023){
    if(i0<0.06871193647384644){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=296.0;
    }
   } else {
    if(i53<0.0011513070203363895){
     s0+=57.0;
     s1+=1.0;
    } else {
     s1+=86.0;
    }
   }
  }
 }
}
if(i16<1.00164794921875){
 if(i5<0.07105231285095215){
  if(i3<0.07712078094482422){
   if(i19<1.0451585054397583){
    if(i56<-0.0021260976791381836){
     s0+=1761.0;
     s1+=129.0;
    } else {
     s0+=51885.0;
     s1+=85.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=3667.0;
     s1+=1397.0;
    } else {
     s0+=10503.0;
     s1+=341.0;
    }
   }
  } else {
   if(i36<1.0688350200653076){
    if(i41<0.9996938705444336){
     s0+=79.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.08503147959709167){
     s0+=39.0;
     s1+=101.0;
    } else {
     s0+=3.0;
     s1+=670.0;
    }
   }
  }
 } else {
  if(i16<0.9985753297805786){
   if(i11<1.3700618743896484){
    if(i16<0.9980416297912598){
     s0+=508.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=24.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i0<0.09556478261947632){
    if(i49<0.01044243574142456){
     s0+=220.0;
     s1+=292.0;
    } else {
     s0+=440.0;
     s1+=29.0;
    }
   } else {
    if(i37<0.059877753257751465){
     s0+=54.0;
     s1+=2495.0;
    } else {
     s0+=532.0;
     s1+=1312.0;
    }
   }
  }
 }
} else {
 if(i26<1.004718542098999){
  if(i1<0.000370025634765625){
   if(i0<0.10580721497535706){
    if(i9<1.096461296081543){
     s0+=753.0;
     s1+=61.0;
    } else {
     s0+=10.0;
     s1+=29.0;
    }
   } else {
    if(i0<0.11873748898506165){
     s0+=6.0;
     s1+=14.0;
    } else {
     s1+=132.0;
    }
   }
  } else {
   if(i2<0.12341997027397156){
    if(i50<0.03605496883392334){
     s0+=76.0;
     s1+=727.0;
    } else {
     s0+=145.0;
     s1+=35.0;
    }
   } else {
    if(i56<0.004177689552307129){
     s0+=2.0;
     s1+=987.0;
    } else {
     s0+=9.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i12<1.0003384351730347){
   if(i0<0.14872971177101135){
    if(i53<0.002118846634402871){
     s0+=84.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i64<0.00021913059754297137){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=286.0;
    }
   }
  } else {
   if(i43<-1.417127077729674e-05){
    if(i6<2.9385089874267578e-05){
     s0+=15.0;
     s1+=41.0;
    } else {
     s0+=24.0;
     s1+=7928.0;
    }
   } else {
    if(i61<1.0024147033691406){
     s0+=49.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i4<1.0024676322937012){
 if(i31<0.06512272357940674){
  if(i0<0.07908639311790466){
   if(i25<0.0003065722994506359){
    if(i60<-0.0027903318405151367){
     s0+=5.0;
     s1+=30.0;
    } else {
     s0+=53374.0;
     s1+=261.0;
    }
   } else {
    if(i41<0.999443769454956){
     s0+=4464.0;
     s1+=114.0;
    } else {
     s0+=10716.0;
     s1+=1641.0;
    }
   }
  } else {
   if(i8<-0.00036457180976867676){
    if(i13<0.9830317497253418){
     s1+=9.0;
    } else {
     s0+=113.0;
     s1+=3.0;
    }
   } else {
    if(i63<0.037511974573135376){
     s0+=54.0;
     s1+=1600.0;
    } else {
     s0+=61.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i37<0.04244881868362427){
   if(i5<0.08077430725097656){
    if(i60<0.004705548286437988){
     s0+=40.0;
     s1+=94.0;
    } else {
     s0+=32.0;
     s1+=1.0;
    }
   } else {
    if(i70<6.54539007882704e-07){
     s0+=19.0;
     s1+=722.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   }
  } else {
   if(i17<0.005321539472788572){
    if(i0<0.10891148447990417){
     s0+=936.0;
     s1+=77.0;
    } else {
     s0+=664.0;
     s1+=448.0;
    }
   } else {
    if(i40<0.0003520846366882324){
     s0+=81.0;
     s1+=789.0;
    } else {
     s0+=91.0;
     s1+=92.0;
    }
   }
  }
 }
} else {
 if(i27<0.00016920713824220002){
  if(i71<5.33945276401937e-05){
   s1+=26.0;
  } else {
   if(i16<1.0021988153457642){
    if(i48<0.00044101476669311523){
     s0+=73.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i20<1.0099434852600098){
   if(i0<0.07393169403076172){
    if(i49<0.006232261657714844){
     s0+=103.0;
     s1+=491.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i17<0.0024700872600078583){
     s0+=30.0;
     s1+=8.0;
    } else {
     s0+=65.0;
     s1+=2242.0;
    }
   }
  } else {
   if(i35<0.00024021186982281506){
    s0+=3.0;
   } else {
    if(i4<1.00265371799469){
     s0+=8.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=8484.0;
    }
   }
  }
 }
}
if(i16<1.0016396045684814){
 if(i52<1.0131547451019287){
  if(i0<0.07887840270996094){
   if(i49<-0.006055176258087158){
    if(i3<0.03696221113204956){
     s0+=3226.0;
     s1+=373.0;
    } else {
     s0+=377.0;
     s1+=378.0;
    }
   } else {
    if(i19<1.0477051734924316){
     s0+=54301.0;
     s1+=190.0;
    } else {
     s0+=9098.0;
     s1+=875.0;
    }
   }
  } else {
   if(i16<0.9980349540710449){
    if(i28<1.4901387691497803){
     s0+=283.0;
    } else {
     s0+=22.0;
     s1+=3.0;
    }
   } else {
    if(i44<0.012245070189237595){
     s0+=199.0;
     s1+=421.0;
    } else {
     s0+=98.0;
     s1+=1514.0;
    }
   }
  }
 } else {
  if(i3<0.09156149625778198){
   if(i28<1.1013743877410889){
    if(i40<4.374980926513672e-05){
     s0+=326.0;
     s1+=31.0;
    } else {
     s0+=26.0;
     s1+=202.0;
    }
   } else {
    if(i17<0.006397628225386143){
     s0+=1209.0;
     s1+=21.0;
    } else {
     s0+=15.0;
     s1+=10.0;
    }
   }
  } else {
   if(i20<1.0062663555145264){
    if(i38<0.006457208655774593){
     s0+=751.0;
     s1+=662.0;
    } else {
     s0+=27.0;
     s1+=505.0;
    }
   } else {
    if(i6<9.447336196899414e-06){
     s0+=48.0;
     s1+=128.0;
    } else {
     s0+=18.0;
     s1+=1423.0;
    }
   }
  }
 }
} else {
 if(i20<1.0028809309005737){
  if(i3<0.10243603587150574){
   if(i48<-0.0015974938869476318){
    if(i3<0.013384103775024414){
     s0+=140.0;
     s1+=37.0;
    } else {
     s0+=21.0;
     s1+=351.0;
    }
   } else {
    if(i66<-0.0038121300749480724){
     s0+=493.0;
     s1+=21.0;
    } else {
     s0+=396.0;
     s1+=139.0;
    }
   }
  } else {
   if(i22<0.03075047768652439){
    if(i63<0.03352034091949463){
     s0+=7.0;
     s1+=125.0;
    } else {
     s0+=48.0;
     s1+=33.0;
    }
   } else {
    if(i33<0.005239431280642748){
     s0+=14.0;
     s1+=172.0;
    } else {
     s0+=1.0;
     s1+=979.0;
    }
   }
  }
 } else {
  if(i27<0.0001616518129594624){
   if(i67<7.329277286771685e-05){
    if(i52<1.0212023258209229){
     s0+=40.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i12<0.9978588819503784){
    if(i0<0.16450172662734985){
     s0+=31.0;
     s1+=8.0;
    } else {
     s1+=116.0;
    }
   } else {
    if(i18<-5.340576171875e-05){
     s0+=12.0;
     s1+=74.0;
    } else {
     s0+=13.0;
     s1+=8199.0;
    }
   }
  }
 }
}
if(i0<0.07891923189163208){
 if(i16<1.0018954277038574){
  if(i7<-4.3694999476429075e-05){
   if(i32<1.2413508892059326){
    if(i8<-0.00013118982315063477){
     s0+=267.0;
     s1+=32.0;
    } else {
     s0+=20.0;
     s1+=346.0;
    }
   } else {
    if(i62<0.007659101393073797){
     s0+=1883.0;
     s1+=98.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   }
  } else {
   if(i58<0.0014884397387504578){
    if(i27<0.00029937142971903086){
     s0+=54579.0;
     s1+=287.0;
    } else {
     s0+=5908.0;
     s1+=421.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=1687.0;
     s1+=578.0;
    } else {
     s0+=3918.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i20<0.9988257884979248){
   if(i9<1.0972392559051514){
    if(i1<0.0002682805061340332){
     s0+=412.0;
     s1+=8.0;
    } else {
     s0+=189.0;
     s1+=109.0;
    }
   } else {
    if(i24<1.0008553266525269){
     s0+=6.0;
     s1+=116.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i17<0.0031577604822814465){
    if(i4<1.0041232109069824){
     s0+=59.0;
     s1+=5.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i18<-0.00013321638107299805){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=539.0;
    }
   }
  }
 }
} else {
 if(i14<-1.33514404296875e-05){
  if(i34<0.0038645179010927677){
   if(i43<-1.0074065357912332e-05){
    if(i2<0.08889332413673401){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i59<0.9999024271965027){
     s0+=450.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.10924643278121948){
    if(i27<0.0015104738995432854){
     s0+=58.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=37.0;
   }
  }
 } else {
  if(i0<0.10780218243598938){
   if(i52<1.0300934314727783){
    if(i63<0.029115736484527588){
     s0+=97.0;
     s1+=1593.0;
    } else {
     s0+=494.0;
     s1+=223.0;
    }
   } else {
    if(i17<0.0056019797921180725){
     s0+=362.0;
     s1+=10.0;
    } else {
     s0+=20.0;
     s1+=28.0;
    }
   }
  } else {
   if(i1<0.0005392134189605713){
    if(i7<-1.4055839528737124e-05){
     s0+=203.0;
     s1+=2311.0;
    } else {
     s0+=298.0;
     s1+=187.0;
    }
   } else {
    if(i18<6.258487701416016e-06){
     s0+=61.0;
     s1+=982.0;
    } else {
     s0+=16.0;
     s1+=9055.0;
    }
   }
  }
 }
}
if(i7<-7.131211168598384e-05){
 if(i30<0.9616186618804932){
  if(i43<-4.630762850865722e-05){
   if(i5<0.030172735452651978){
    if(i50<-0.11174798011779785){
     s1+=10.0;
    } else {
     s0+=21.0;
    }
   } else {
    s1+=98.0;
   }
  } else {
   if(i6<2.002716064453125e-05){
    if(i5<0.09087929129600525){
     s0+=633.0;
     s1+=22.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i13<0.969780445098877){
     s1+=32.0;
    } else {
     s0+=29.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i55<0.9988936185836792){
   s0+=168.0;
  } else {
   if(i23<1.0001133680343628){
    if(i2<0.12137165665626526){
     s0+=210.0;
     s1+=205.0;
    } else {
     s0+=5.0;
     s1+=1198.0;
    }
   } else {
    if(i60<-0.02290835976600647){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=55.0;
     s1+=10223.0;
    }
   }
  }
 }
} else {
 if(i5<0.0707012414932251){
  if(i3<0.07539111375808716){
   if(i16<1.001638650894165){
    if(i35<0.0003021693555638194){
     s0+=46396.0;
     s1+=134.0;
    } else {
     s0+=20539.0;
     s1+=1698.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s0+=61.0;
     s1+=341.0;
    } else {
     s0+=535.0;
     s1+=81.0;
    }
   }
  } else {
   if(i65<1.1908480701094959e-05){
    if(i46<0.05379849672317505){
     s0+=5.0;
     s1+=728.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   } else {
    if(i69<0.0014218073338270187){
     s0+=133.0;
     s1+=7.0;
    } else {
     s0+=18.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i22<0.024756774306297302){
   if(i28<1.255998969078064){
    if(i30<1.0043749809265137){
     s0+=579.0;
     s1+=253.0;
    } else {
     s0+=76.0;
     s1+=536.0;
    }
   } else {
    if(i0<0.17406940460205078){
     s0+=736.0;
     s1+=76.0;
    } else {
     s0+=78.0;
     s1+=51.0;
    }
   }
  } else {
   if(i7<-2.650298483786173e-06){
    if(i37<0.05083385109901428){
     s0+=36.0;
     s1+=880.0;
    } else {
     s0+=264.0;
     s1+=640.0;
    }
   } else {
    if(i17<0.007511715870350599){
     s0+=283.0;
     s1+=56.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i3<0.08341461420059204){
 if(i1<0.00060233473777771){
  if(i25<0.0002811383455991745){
   if(i21<1.0084235668182373){
    if(i60<-0.002371490001678467){
     s0+=12.0;
     s1+=29.0;
    } else {
     s0+=52019.0;
     s1+=174.0;
    }
   } else {
    if(i43<-1.0635216312948614e-05){
     s0+=8.0;
     s1+=94.0;
    } else {
     s0+=172.0;
     s1+=20.0;
    }
   }
  } else {
   if(i62<-0.009030264802277088){
    if(i68<-0.00010391828982392326){
     s0+=901.0;
     s1+=142.0;
    } else {
     s0+=5343.0;
     s1+=64.0;
    }
   } else {
    if(i3<0.06588742136955261){
     s0+=10190.0;
     s1+=1364.0;
    } else {
     s0+=486.0;
     s1+=513.0;
    }
   }
  }
 } else {
  if(i35<0.00022591266315430403){
   if(i43<-1.655916275922209e-05){
    s1+=1.0;
   } else {
    s0+=84.0;
   }
  } else {
   if(i33<0.0018039827700704336){
    if(i6<3.8295984268188477e-05){
     s0+=1.0;
    } else {
     s1+=761.0;
    }
   } else {
    if(i41<1.0012352466583252){
     s0+=195.0;
     s1+=128.0;
    } else {
     s0+=64.0;
     s1+=378.0;
    }
   }
  }
 }
} else {
 if(i6<9.238719940185547e-06){
  if(i70<2.423593741696095e-06){
   if(i33<0.000580255058594048){
    if(i7<-2.32474812946748e-05){
     s1+=53.0;
    } else {
     s0+=421.0;
     s1+=33.0;
    }
   } else {
    if(i16<0.9988330602645874){
     s0+=116.0;
     s1+=40.0;
    } else {
     s0+=365.0;
     s1+=1638.0;
    }
   }
  } else {
   s0+=207.0;
  }
 } else {
  if(i44<0.023911848664283752){
   if(i10<0.0005573034286499023){
    if(i37<0.0472872257232666){
     s0+=8.0;
     s1+=354.0;
    } else {
     s0+=306.0;
     s1+=167.0;
    }
   } else {
    if(i30<1.0028624534606934){
     s0+=19.0;
     s1+=51.0;
    } else {
     s0+=24.0;
     s1+=2173.0;
    }
   }
  } else {
   if(i32<1.311938762664795){
    if(i28<1.304537057876587){
     s0+=7.0;
     s1+=952.0;
    } else {
     s0+=46.0;
     s1+=210.0;
    }
   } else {
    if(i44<0.025937046855688095){
     s0+=1.0;
     s1+=178.0;
    } else {
     s1+=7740.0;
    }
   }
  }
 }
}
if(i3<0.08162745833396912){
 if(i9<1.0451608896255493){
  if(i27<0.0002993709349539131){
   if(i1<0.0009537339210510254){
    if(i67<0.0002805837139021605){
     s0+=51899.0;
     s1+=185.0;
    } else {
     s0+=2539.0;
     s1+=213.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i23<0.9938127994537354){
    if(i49<-0.010710984468460083){
     s0+=690.0;
     s1+=33.0;
    } else {
     s0+=4590.0;
     s1+=14.0;
    }
   } else {
    if(i1<0.000436633825302124){
     s0+=2566.0;
     s1+=457.0;
    } else {
     s0+=5.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i4<1.0027074813842773){
   if(i32<1.1037919521331787){
    if(i34<0.0003304923593532294){
     s0+=1069.0;
     s1+=8.0;
    } else {
     s0+=704.0;
     s1+=979.0;
    }
   } else {
    if(i17<0.016426298767328262){
     s0+=5412.0;
     s1+=402.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   }
  } else {
   if(i60<0.0021300315856933594){
    if(i10<-0.0019881725311279297){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=67.0;
     s1+=1042.0;
    }
   } else {
    if(i16<1.0030381679534912){
     s0+=67.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i43<-8.156534022418782e-06){
  if(i6<4.07099723815918e-05){
   if(i17<0.003271221648901701){
    if(i15<1.0055418014526367){
     s0+=38.0;
     s1+=144.0;
    } else {
     s0+=229.0;
     s1+=19.0;
    }
   } else {
    if(i2<0.11328050494194031){
     s0+=139.0;
     s1+=298.0;
    } else {
     s0+=43.0;
     s1+=1479.0;
    }
   }
  } else {
   if(i8<-0.0001653432846069336){
    s0+=15.0;
   } else {
    if(i44<0.020768126472830772){
     s0+=102.0;
     s1+=1692.0;
    } else {
     s0+=2.0;
     s1+=8371.0;
    }
   }
  }
 } else {
  if(i37<0.052097201347351074){
   if(i40<-0.00019934773445129395){
    s0+=93.0;
   } else {
    if(i40<7.82310962677002e-05){
     s0+=48.0;
     s1+=1054.0;
    } else {
     s0+=26.0;
     s1+=10.0;
    }
   }
  } else {
   if(i3<0.2929229140281677){
    if(i35<0.0025371741503477097){
     s0+=176.0;
     s1+=147.0;
    } else {
     s0+=625.0;
     s1+=61.0;
    }
   } else {
    if(i9<1.2561023235321045){
     s0+=17.0;
     s1+=163.0;
    } else {
     s0+=72.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i6<3.820657730102539e-05){
 if(i31<0.06076881289482117){
  if(i19<1.0486011505126953){
   if(i47<0.03271082043647766){
    if(i56<-0.0025842785835266113){
     s0+=328.0;
     s1+=106.0;
    } else {
     s0+=51410.0;
     s1+=100.0;
    }
   } else {
    if(i19<1.0447213649749756){
     s0+=3624.0;
     s1+=75.0;
    } else {
     s0+=204.0;
     s1+=86.0;
    }
   }
  } else {
   if(i1<0.00017029047012329102){
    if(i38<0.001078535569831729){
     s0+=3128.0;
     s1+=1186.0;
    } else {
     s0+=8494.0;
     s1+=752.0;
    }
   } else {
    if(i42<1.140648365020752){
     s0+=254.0;
     s1+=651.0;
    } else {
     s0+=738.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i17<0.0047021349892020226){
   if(i18<0.00011211633682250977){
    if(i7<-1.381049514748156e-05){
     s0+=549.0;
     s1+=573.0;
    } else {
     s0+=1470.0;
     s1+=168.0;
    }
   } else {
    if(i2<0.09554815292358398){
     s0+=9.0;
    } else {
     s0+=3.0;
     s1+=105.0;
    }
   }
  } else {
   if(i2<0.113676518201828){
    if(i38<0.0029241126030683517){
     s0+=16.0;
     s1+=94.0;
    } else {
     s0+=292.0;
     s1+=58.0;
    }
   } else {
    if(i55<0.9995768666267395){
     s0+=58.0;
     s1+=123.0;
    } else {
     s0+=17.0;
     s1+=1161.0;
    }
   }
  }
 }
} else {
 if(i42<1.0646642446517944){
  s0+=284.0;
 } else {
  if(i17<0.0022362954914569855){
   if(i4<1.004642128944397){
    if(i57<7.713200830039568e-06){
     s0+=163.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   } else {
    s1+=142.0;
   }
  } else {
   if(i9<1.1222221851348877){
    if(i18<-9.22083854675293e-05){
     s0+=190.0;
     s1+=275.0;
    } else {
     s0+=54.0;
     s1+=3698.0;
    }
   } else {
    if(i2<0.09495997428894043){
     s0+=4.0;
     s1+=209.0;
    } else {
     s0+=2.0;
     s1+=7060.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i0<0.07894015312194824){
  if(i69<0.0006752742920070887){
   if(i15<1.008129596710205){
    if(i10<0.0012113451957702637){
     s0+=57418.0;
     s1+=382.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i43<-8.273544153780676e-06){
     s0+=81.0;
     s1+=169.0;
    } else {
     s0+=190.0;
     s1+=22.0;
    }
   }
  } else {
   if(i38<0.0010109399445354939){
    if(i39<0.0003958317101933062){
     s0+=995.0;
     s1+=25.0;
    } else {
     s0+=440.0;
     s1+=684.0;
    }
   } else {
    if(i20<0.9840086102485657){
     s0+=3845.0;
     s1+=24.0;
    } else {
     s0+=1408.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i23<0.9939854145050049){
   if(i49<-0.0074988603591918945){
    if(i42<1.1026456356048584){
     s0+=19.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i1<0.00043952465057373047){
     s0+=269.0;
     s1+=17.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i35<0.00025385356275364757){
    if(i16<1.0011341571807861){
     s0+=72.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i62<-0.019212108105421066){
     s0+=42.0;
     s1+=16.0;
    } else {
     s0+=71.0;
     s1+=1034.0;
    }
   }
  }
 }
} else {
 if(i6<3.331899642944336e-05){
  if(i38<0.005978867877274752){
   if(i17<0.004557629581540823){
    if(i0<0.08021339774131775){
     s0+=3805.0;
     s1+=447.0;
    } else {
     s0+=1016.0;
     s1+=758.0;
    }
   } else {
    if(i1<-0.00038248300552368164){
     s0+=369.0;
     s1+=52.0;
    } else {
     s0+=147.0;
     s1+=783.0;
    }
   }
  } else {
   if(i41<1.0017210245132446){
    if(i2<0.09811550378799438){
     s0+=353.0;
     s1+=116.0;
    } else {
     s0+=42.0;
     s1+=1115.0;
    }
   } else {
    if(i45<0.27610886096954346){
     s0+=162.0;
     s1+=9.0;
    } else {
     s0+=33.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i3<0.1316651701927185){
   if(i49<0.014703869819641113){
    if(i60<0.0039435625076293945){
     s0+=161.0;
     s1+=1909.0;
    } else {
     s0+=41.0;
     s1+=36.0;
    }
   } else {
    if(i33<0.0012843150179833174){
     s1+=27.0;
    } else {
     s0+=158.0;
     s1+=29.0;
    }
   }
  } else {
   if(i1<0.0005167722702026367){
    if(i50<0.26586097478866577){
     s0+=4.0;
     s1+=65.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i17<0.006492264568805695){
     s0+=20.0;
     s1+=981.0;
    } else {
     s0+=1.0;
     s1+=8153.0;
    }
   }
  }
 }
}
if(i10<0.0007648468017578125){
 if(i6<3.355741500854492e-05){
  if(i0<0.08200663328170776){
   if(i47<0.026191672310233116){
    if(i58<0.002151374239474535){
     s0+=55788.0;
     s1+=421.0;
    } else {
     s0+=940.0;
     s1+=233.0;
    }
   } else {
    if(i36<1.1034480333328247){
     s0+=3127.0;
     s1+=985.0;
    } else {
     s0+=8183.0;
     s1+=336.0;
    }
   }
  } else {
   if(i63<0.03610527515411377){
    if(i59<0.9973368644714355){
     s0+=94.0;
    } else {
     s0+=452.0;
     s1+=2120.0;
    }
   } else {
    if(i39<0.010460789315402508){
     s0+=943.0;
     s1+=389.0;
    } else {
     s0+=26.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i42<1.0646642446517944){
   s0+=551.0;
  } else {
   if(i28<1.613681674003601){
    if(i6<5.537271499633789e-05){
     s0+=119.0;
     s1+=754.0;
    } else {
     s0+=36.0;
     s1+=1445.0;
    }
   } else {
    if(i44<0.03335105627775192){
     s0+=130.0;
    } else {
     s1+=271.0;
    }
   }
  }
 }
} else {
 if(i6<3.331899642944336e-05){
  if(i67<-9.549425158184022e-05){
   if(i0<0.0575716495513916){
    if(i39<0.0016529761487618089){
     s1+=6.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i26<1.0098038911819458){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=359.0;
    }
   }
  } else {
   if(i3<0.0651046633720398){
    if(i25<0.00041889402200467885){
     s0+=388.0;
     s1+=14.0;
    } else {
     s0+=35.0;
     s1+=21.0;
    }
   } else {
    if(i12<1.000859260559082){
     s0+=10.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=83.0;
    }
   }
  }
 } else {
  if(i18<0.00021392107009887695){
   if(i57<-7.095975888660178e-06){
    if(i53<0.0011118981055915356){
     s0+=166.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i17<0.001671505393460393){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=955.0;
    }
   }
  } else {
   if(i1<0.0005486905574798584){
    if(i17<0.0029930099844932556){
     s0+=9.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=8440.0;
   }
  }
 }
}
if(i10<0.0007519721984863281){
 if(i0<0.08225274085998535){
  if(i54<-0.002774447202682495){
   if(i16<1.0018928050994873){
    if(i12<1.0005056858062744){
     s0+=1471.0;
     s1+=243.0;
    } else {
     s0+=159.0;
     s1+=156.0;
    }
   } else {
    if(i50<-0.0503501296043396){
     s0+=13.0;
     s1+=217.0;
    } else {
     s0+=35.0;
     s1+=41.0;
    }
   }
  } else {
   if(i9<1.0428826808929443){
    if(i4<1.0025334358215332){
     s0+=59926.0;
     s1+=588.0;
    } else {
     s0+=3.0;
     s1+=56.0;
    }
   } else {
    if(i0<0.05958890914916992){
     s0+=5490.0;
     s1+=454.0;
    } else {
     s0+=1585.0;
     s1+=669.0;
    }
   }
  }
 } else {
  if(i40<-0.00013753771781921387){
   if(i70<-2.3052780306898057e-06){
    if(i32<1.159860372543335){
     s0+=14.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i43<-1.578475348651409e-05){
     s1+=6.0;
    } else {
     s0+=482.0;
    }
   }
  } else {
   if(i63<0.025544196367263794){
    if(i7<-1.9619372324086726e-05){
     s0+=102.0;
     s1+=2726.0;
    } else {
     s0+=146.0;
     s1+=368.0;
    }
   } else {
    if(i0<0.1249639093875885){
     s0+=683.0;
     s1+=332.0;
    } else {
     s0+=291.0;
     s1+=1195.0;
    }
   }
  }
 }
} else {
 if(i11<1.0344531536102295){
  if(i5<0.0465562641620636){
   if(i16<1.0020740032196045){
    if(i49<-0.009990811347961426){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=409.0;
     s1+=4.0;
    }
   } else {
    s1+=46.0;
   }
  } else {
   if(i2<0.0682821273803711){
    if(i70<-5.422909453045577e-06){
     s1+=10.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i44<0.0019515679450705647){
     s0+=2.0;
    } else {
     s1+=107.0;
    }
   }
  }
 } else {
  if(i20<1.0100469589233398){
   if(i0<0.06456011533737183){
    if(i33<0.0008447940926998854){
     s0+=6.0;
     s1+=96.0;
    } else {
     s0+=183.0;
     s1+=30.0;
    }
   } else {
    if(i1<6.064772605895996e-05){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=55.0;
     s1+=1229.0;
    }
   }
  } else {
   if(i1<0.0004968643188476562){
    if(i16<1.000558614730835){
     s0+=6.0;
     s1+=226.0;
    } else {
     s0+=47.0;
     s1+=5.0;
    }
   } else {
    s1+=8237.0;
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i58<0.0020290592219680548){
  if(i4<1.0024570226669312){
   if(i11<1.0375802516937256){
    if(i47<0.02655177190899849){
     s0+=52116.0;
     s1+=221.0;
    } else {
     s0+=5798.0;
     s1+=457.0;
    }
   } else {
    if(i3<0.08776459097862244){
     s0+=3609.0;
     s1+=273.0;
    } else {
     s0+=19.0;
     s1+=212.0;
    }
   }
  } else {
   if(i70<-5.045103534939699e-06){
    if(i64<0.0008773325243964791){
     s0+=3.0;
     s1+=289.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i57<7.3583969424362294e-06){
     s0+=129.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i14<2.3543834686279297e-05){
   if(i45<0.26453840732574463){
    if(i3<0.056519001722335815){
     s0+=1938.0;
     s1+=460.0;
    } else {
     s0+=103.0;
     s1+=241.0;
    }
   } else {
    if(i0<0.08843162655830383){
     s0+=1497.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=44.0;
    }
   }
  } else {
   if(i12<1.0021346807479858){
    if(i41<1.0018603801727295){
     s0+=26.0;
     s1+=53.0;
    } else {
     s0+=53.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.007997870445251465){
     s0+=33.0;
     s1+=21.0;
    } else {
     s0+=11.0;
     s1+=375.0;
    }
   }
  }
 }
} else {
 if(i38<0.006203716620802879){
  if(i35<0.0024413717910647392){
   if(i36<1.0596668720245361){
    s0+=529.0;
   } else {
    if(i17<0.0017724575009196997){
     s0+=1091.0;
     s1+=316.0;
    } else {
     s0+=613.0;
     s1+=3260.0;
    }
   }
  } else {
   if(i8<0.0005072355270385742){
    if(i2<0.10822546482086182){
     s0+=2248.0;
     s1+=97.0;
    } else {
     s0+=656.0;
     s1+=426.0;
    }
   } else {
    if(i13<1.0103256702423096){
     s0+=188.0;
     s1+=267.0;
    } else {
     s0+=9.0;
     s1+=488.0;
    }
   }
  }
 } else {
  if(i3<0.0972030758857727){
   if(i48<-7.390975952148438e-05){
    if(i19<1.071622371673584){
     s0+=11.0;
    } else {
     s0+=47.0;
     s1+=325.0;
    }
   } else {
    if(i13<0.9828508496284485){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=353.0;
     s1+=4.0;
    }
   }
  } else {
   if(i18<6.616115570068359e-06){
    if(i42<1.2590415477752686){
     s0+=44.0;
     s1+=158.0;
    } else {
     s0+=25.0;
     s1+=1362.0;
    }
   } else {
    if(i64<0.00022947872639633715){
     s0+=2.0;
     s1+=312.0;
    } else {
     s1+=7375.0;
    }
   }
  }
 }
}
if(i10<0.0008067488670349121){
 if(i22<0.023281212896108627){
  if(i6<4.0471553802490234e-05){
   if(i27<0.0003217679332010448){
    if(i0<0.086850106716156){
     s0+=55702.0;
     s1+=460.0;
    } else {
     s0+=57.0;
     s1+=122.0;
    }
   } else {
    if(i23<0.9943439364433289){
     s0+=3158.0;
     s1+=158.0;
    } else {
     s0+=4842.0;
     s1+=1203.0;
    }
   }
  } else {
   if(i17<0.0043615540489554405){
    if(i19<1.1624226570129395){
     s0+=288.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i33<0.009011654183268547){
     s0+=24.0;
     s1+=407.0;
    } else {
     s0+=78.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i18<-0.00033846497535705566){
   if(i9<1.0816617012023926){
    if(i13<0.9113110303878784){
     s0+=22.0;
     s1+=12.0;
    } else {
     s0+=4294.0;
     s1+=37.0;
    }
   } else {
    if(i40<8.875131607055664e-05){
     s0+=219.0;
     s1+=22.0;
    } else {
     s0+=46.0;
     s1+=405.0;
    }
   }
  } else {
   if(i19<1.042769432067871){
    if(i40<5.301833152770996e-05){
     s0+=427.0;
     s1+=9.0;
    } else {
     s0+=36.0;
     s1+=14.0;
    }
   } else {
    if(i43<2.7812625376100186e-06){
     s0+=927.0;
     s1+=4473.0;
    } else {
     s0+=361.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i2<0.05833202600479126){
  if(i17<0.004349834751337767){
   if(i42<1.1386182308197021){
    if(i8<-0.00028246641159057617){
     s0+=68.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i12<1.0117106437683105){
     s0+=412.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   s1+=125.0;
  }
 } else {
  if(i1<-4.26173210144043e-05){
   if(i34<0.005732466466724873){
    s0+=33.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i7<-4.330423689680174e-05){
    if(i10<0.0013636946678161621){
     s0+=6.0;
     s1+=969.0;
    } else {
     s1+=8540.0;
    }
   } else {
    if(i38<0.0012927239295095205){
     s1+=68.0;
    } else {
     s0+=94.0;
     s1+=31.0;
    }
   }
  }
 }
}
if(i23<1.0040066242218018){
 if(i11<1.0450963973999023){
  if(i3<0.0783253014087677){
   if(i58<0.0017684802878648043){
    if(i25<0.0002636678982526064){
     s0+=50175.0;
     s1+=139.0;
    } else {
     s0+=9919.0;
     s1+=573.0;
    }
   } else {
    if(i6<2.0205974578857422e-05){
     s0+=4108.0;
     s1+=573.0;
    } else {
     s0+=52.0;
     s1+=140.0;
    }
   }
  } else {
   if(i42<1.0703742504119873){
    if(i32<1.0724716186523438){
     s0+=104.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i29<1.0288865566253662){
     s0+=19.0;
     s1+=440.0;
    } else {
     s0+=160.0;
     s1+=222.0;
    }
   }
  }
 } else {
  if(i38<0.00614379346370697){
   if(i12<1.0003535747528076){
    if(i13<1.0108309984207153){
     s0+=3933.0;
     s1+=772.0;
    } else {
     s0+=288.0;
     s1+=370.0;
    }
   } else {
    if(i0<0.09743660688400269){
     s0+=802.0;
     s1+=483.0;
    } else {
     s0+=188.0;
     s1+=966.0;
    }
   }
  } else {
   if(i2<0.11273196339607239){
    if(i24<0.9835869073867798){
     s0+=46.0;
     s1+=189.0;
    } else {
     s0+=395.0;
     s1+=28.0;
    }
   } else {
    if(i53<0.00037396090920083225){
     s0+=11.0;
     s1+=12.0;
    } else {
     s0+=36.0;
     s1+=2293.0;
    }
   }
  }
 }
} else {
 if(i1<0.0005300045013427734){
  if(i0<0.0637553334236145){
   if(i62<0.0041626011952757835){
    if(i34<0.0007248995825648308){
     s0+=9.0;
     s1+=15.0;
    } else {
     s0+=538.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.2179327011108398){
     s0+=1.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i59<1.0001144409179688){
    if(i14<-1.3887882232666016e-05){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=342.0;
    }
   } else {
    if(i7<-4.358102160040289e-05){
     s0+=2.0;
     s1+=114.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<1.0099432468414307){
   if(i14<1.8894672393798828e-05){
    if(i17<0.0025560364592820406){
     s0+=94.0;
     s1+=21.0;
    } else {
     s1+=192.0;
    }
   } else {
    if(i53<0.0004732865490950644){
     s0+=18.0;
     s1+=8.0;
    } else {
     s0+=39.0;
     s1+=1453.0;
    }
   }
  } else {
   if(i25<0.00019104243256151676){
    s0+=4.0;
   } else {
    s1+=7901.0;
   }
  }
 }
}
if(i4<1.0024597644805908){
 if(i5<0.07196849584579468){
  if(i0<0.07900145649909973){
   if(i56<-0.002064615488052368){
    if(i0<0.040241122245788574){
     s0+=5084.0;
     s1+=472.0;
    } else {
     s0+=979.0;
     s1+=533.0;
    }
   } else {
    if(i11<1.0401519536972046){
     s0+=57761.0;
     s1+=368.0;
    } else {
     s0+=4966.0;
     s1+=557.0;
    }
   }
  } else {
   if(i16<0.9981558918952942){
    if(i42<1.4951298236846924){
     s0+=113.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   } else {
    if(i37<0.04131507873535156){
     s0+=16.0;
     s1+=819.0;
    } else {
     s0+=81.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i17<0.005300096236169338){
   if(i46<0.05337020754814148){
    if(i32<1.3489735126495361){
     s0+=58.0;
     s1+=616.0;
    } else {
     s0+=35.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.12202441692352295){
     s0+=1022.0;
     s1+=169.0;
    } else {
     s0+=557.0;
     s1+=508.0;
    }
   }
  } else {
   if(i19<1.081464171409607){
    if(i10<-0.0010358989238739014){
     s0+=136.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=103.0;
    }
   } else {
    if(i41<0.9987024068832397){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=60.0;
     s1+=1570.0;
    }
   }
  }
 }
} else {
 if(i17<0.0018958600703626871){
  if(i4<1.0046570301055908){
   if(i42<1.1386182308197021){
    if(i53<0.0006314310594461858){
     s0+=10.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=182.0;
   }
  } else {
   s1+=105.0;
  }
 } else {
  if(i1<0.0006928443908691406){
   if(i21<1.0083322525024414){
    if(i36<1.1238179206848145){
     s1+=60.0;
    } else {
     s0+=56.0;
     s1+=29.0;
    }
   } else {
    if(i32<1.2524442672729492){
     s1+=164.0;
    } else {
     s0+=16.0;
     s1+=89.0;
    }
   }
  } else {
   if(i44<0.018831636756658554){
    if(i18<1.3232231140136719e-05){
     s0+=139.0;
     s1+=147.0;
    } else {
     s0+=12.0;
     s1+=1989.0;
    }
   } else {
    if(i15<0.913459837436676){
     s0+=1.0;
     s1+=90.0;
    } else {
     s0+=2.0;
     s1+=8479.0;
    }
   }
  }
 }
}
if(i2<0.08509460091590881){
 if(i16<1.001882553100586){
  if(i9<1.0451608896255493){
   if(i56<-0.0022163987159729004){
    if(i62<-0.009417552500963211){
     s0+=2129.0;
     s1+=19.0;
    } else {
     s0+=1963.0;
     s1+=418.0;
    }
   } else {
    if(i16<1.0006154775619507){
     s0+=55159.0;
     s1+=220.0;
    } else {
     s0+=2491.0;
     s1+=163.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i33<0.0005124595481902361){
     s0+=1586.0;
     s1+=233.0;
    } else {
     s0+=188.0;
     s1+=755.0;
    }
   } else {
    if(i67<0.00074720848351717){
     s0+=4358.0;
     s1+=163.0;
    } else {
     s0+=662.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i4<1.00160813331604){
   if(i55<1.0003459453582764){
    if(i34<0.0030605532228946686){
     s1+=14.0;
    } else {
     s0+=58.0;
     s1+=36.0;
    }
   } else {
    if(i51<0.0182935893535614){
     s0+=427.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   }
  } else {
   if(i56<0.0029477477073669434){
    if(i35<0.00023889436852186918){
     s0+=17.0;
    } else {
     s0+=85.0;
     s1+=880.0;
    }
   } else {
    if(i36<1.1365245580673218){
     s1+=22.0;
    } else {
     s0+=77.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i41<0.9990637302398682){
  if(i17<0.012246448546648026){
   if(i43<-9.479572327109054e-06){
    if(i38<0.0012739693047478795){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s0+=601.0;
   }
  } else {
   s1+=25.0;
  }
 } else {
  if(i18<5.650520324707031e-05){
   if(i37<0.04684284329414368){
    if(i7<1.0015769476012792e-05){
     s0+=73.0;
     s1+=2413.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i53<0.0019947185646742582){
     s0+=869.0;
     s1+=474.0;
    } else {
     s0+=199.0;
     s1+=964.0;
    }
   }
  } else {
   if(i43<-1.5900548078207066e-06){
    if(i1<0.0008673667907714844){
     s0+=70.0;
     s1+=1304.0;
    } else {
     s1+=8788.0;
    }
   } else {
    if(i17<0.002534641185775399){
     s0+=31.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i6<3.7729740142822266e-05){
 if(i22<0.022007379680871964){
  if(i67<-8.863267430569977e-05){
   if(i8<-0.00034746527671813965){
    s0+=69.0;
   } else {
    if(i17<0.0017179211135953665){
     s0+=188.0;
     s1+=51.0;
    } else {
     s0+=34.0;
     s1+=445.0;
    }
   }
  } else {
   if(i45<0.04601246118545532){
    if(i9<1.0451585054397583){
     s0+=52343.0;
     s1+=252.0;
    } else {
     s0+=2607.0;
     s1+=307.0;
    }
   } else {
    if(i38<0.0003039055736735463){
     s0+=1870.0;
     s1+=4.0;
    } else {
     s0+=6378.0;
     s1+=1087.0;
    }
   }
  }
 } else {
  if(i18<-0.00023245811462402344){
   if(i5<0.08472609519958496){
    if(i50<-0.03795170783996582){
     s0+=322.0;
     s1+=89.0;
    } else {
     s0+=4922.0;
     s1+=56.0;
    }
   } else {
    if(i33<0.004987831227481365){
     s0+=161.0;
     s1+=19.0;
    } else {
     s0+=35.0;
     s1+=417.0;
    }
   }
  } else {
   if(i19<1.0419425964355469){
    if(i61<1.001452922821045){
     s0+=387.0;
     s1+=5.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i7<-1.0921770808636211e-05){
     s0+=486.0;
     s1+=2390.0;
    } else {
     s0+=651.0;
     s1+=412.0;
    }
   }
  }
 }
} else {
 if(i19<1.0409044027328491){
  s0+=337.0;
 } else {
  if(i17<0.0019228286109864712){
   if(i1<0.0009881854057312012){
    if(i36<1.1046062707901){
     s1+=5.0;
    } else {
     s0+=145.0;
     s1+=3.0;
    }
   } else {
    s1+=125.0;
   }
  } else {
   if(i4<1.0039546489715576){
    if(i14<2.7179718017578125e-05){
     s0+=51.0;
     s1+=1194.0;
    } else {
     s0+=193.0;
     s1+=512.0;
    }
   } else {
    if(i1<0.001481771469116211){
     s0+=30.0;
     s1+=1770.0;
    } else {
     s0+=15.0;
     s1+=7875.0;
    }
   }
  }
 }
}
if(i6<3.7610530853271484e-05){
 if(i3<0.07756978273391724){
  if(i35<0.00031123211374506354){
   if(i24<1.0100734233856201){
    if(i43<-1.312499625782948e-05){
     s0+=270.0;
     s1+=33.0;
    } else {
     s0+=46763.0;
     s1+=46.0;
    }
   } else {
    if(i26<1.006335735321045){
     s0+=8.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i1<-0.0002885162830352783){
    if(i42<1.1550614833831787){
     s0+=4363.0;
     s1+=521.0;
    } else {
     s0+=11148.0;
     s1+=107.0;
    }
   } else {
    if(i28<1.1013743877410889){
     s0+=1956.0;
     s1+=1084.0;
    } else {
     s0+=4109.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i46<0.057211071252822876){
   if(i16<0.9984772205352783){
    if(i14<-1.239776611328125e-05){
     s0+=76.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i1<-0.0008687973022460938){
     s0+=27.0;
     s1+=20.0;
    } else {
     s0+=55.0;
     s1+=1869.0;
    }
   }
  } else {
   if(i17<0.004780234768986702){
    if(i16<0.9988547563552856){
     s0+=381.0;
     s1+=12.0;
    } else {
     s0+=933.0;
     s1+=505.0;
    }
   } else {
    if(i0<0.11368933320045471){
     s0+=139.0;
     s1+=66.0;
    } else {
     s0+=51.0;
     s1+=883.0;
    }
   }
  }
 }
} else {
 if(i33<0.0005190003430470824){
  if(i13<1.0077340602874756){
   s0+=308.0;
  } else {
   s1+=14.0;
  }
 } else {
  if(i5<0.05573850870132446){
   if(i28<1.2392117977142334){
    if(i34<0.0003368444158695638){
     s0+=4.0;
    } else {
     s1+=764.0;
    }
   } else {
    if(i64<0.0005119419656693935){
     s0+=170.0;
     s1+=37.0;
    } else {
     s0+=75.0;
     s1+=388.0;
    }
   }
  } else {
   if(i7<-4.7794914280530065e-05){
    if(i10<-3.981590270996094e-05){
     s0+=122.0;
     s1+=997.0;
    } else {
     s0+=7.0;
     s1+=9312.0;
    }
   } else {
    if(i17<0.004629442002624273){
     s0+=80.0;
     s1+=14.0;
    } else {
     s1+=191.0;
    }
   }
  }
 }
}
if(i9<1.0564017295837402){
 if(i25<0.0002816389314830303){
  if(i12<1.0034301280975342){
   if(i15<1.0081074237823486){
    if(i69<0.000856701866723597){
     s0+=52197.0;
     s1+=107.0;
    } else {
     s0+=308.0;
     s1+=75.0;
    }
   } else {
    if(i7<-2.8334319722489454e-05){
     s0+=31.0;
     s1+=135.0;
    } else {
     s0+=110.0;
     s1+=7.0;
    }
   }
  } else {
   if(i17<0.0020363526418805122){
    s0+=58.0;
   } else {
    if(i6<8.821487426757812e-06){
     s0+=4.0;
    } else {
     s1+=108.0;
    }
   }
  }
 } else {
  if(i0<0.08190938830375671){
   if(i32<1.217149257659912){
    if(i39<0.00041145386057905853){
     s0+=2302.0;
     s1+=58.0;
    } else {
     s0+=2239.0;
     s1+=1031.0;
    }
   } else {
    if(i1<0.00044715404510498047){
     s0+=7381.0;
     s1+=65.0;
    } else {
     s0+=17.0;
     s1+=47.0;
    }
   }
  } else {
   if(i14<-2.0772218704223633e-05){
    if(i42<1.4951298236846924){
     s0+=66.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i66<-0.005117523483932018){
     s0+=53.0;
     s1+=27.0;
    } else {
     s0+=67.0;
     s1+=823.0;
    }
   }
  }
 }
} else {
 if(i4<1.0018086433410645){
  if(i13<1.010773777961731){
   if(i39<0.01122644916176796){
    if(i2<0.0914556086063385){
     s0+=4149.0;
     s1+=729.0;
    } else {
     s0+=896.0;
     s1+=1076.0;
    }
   } else {
    if(i2<0.04182127118110657){
     s0+=139.0;
     s1+=18.0;
    } else {
     s0+=16.0;
     s1+=498.0;
    }
   }
  } else {
   if(i43<2.561408564361045e-06){
    if(i67<-0.0001232024369528517){
     s0+=10.0;
     s1+=395.0;
    } else {
     s0+=424.0;
     s1+=724.0;
    }
   } else {
    s0+=86.0;
   }
  }
 } else {
  if(i22<0.026444749906659126){
   if(i65<-8.826447810861282e-06){
    s1+=1539.0;
   } else {
    if(i60<0.0024308860301971436){
     s0+=159.0;
     s1+=973.0;
    } else {
     s0+=231.0;
     s1+=364.0;
    }
   }
  } else {
   if(i15<1.0199321508407593){
    if(i25<0.00026311707915738225){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=67.0;
     s1+=2223.0;
    }
   } else {
    if(i17<0.0023575476370751858){
     s0+=4.0;
     s1+=33.0;
    } else {
     s0+=4.0;
     s1+=6164.0;
    }
   }
  }
 }
}
if(i2<0.0850517749786377){
 if(i14<1.996755599975586e-05){
  if(i22<0.01701492816209793){
   if(i26<1.007614254951477){
    if(i60<-0.0014190673828125){
     s0+=2456.0;
     s1+=389.0;
    } else {
     s0+=55737.0;
     s1+=235.0;
    }
   } else {
    if(i19<1.0731133222579956){
     s0+=38.0;
     s1+=166.0;
    } else {
     s0+=674.0;
     s1+=28.0;
    }
   }
  } else {
   if(i6<-1.7762184143066406e-05){
    if(i19<1.0428757667541504){
     s0+=4717.0;
     s1+=24.0;
    } else {
     s0+=2979.0;
     s1+=325.0;
    }
   } else {
    if(i57<2.772462903521955e-05){
     s0+=1096.0;
     s1+=285.0;
    } else {
     s0+=346.0;
     s1+=616.0;
    }
   }
  }
 } else {
  if(i4<1.0023314952850342){
   if(i44<0.04233532026410103){
    if(i19<1.0642924308776855){
     s0+=572.0;
     s1+=14.0;
    } else {
     s0+=486.0;
     s1+=115.0;
    }
   } else {
    if(i57<0.0004086083499714732){
     s1+=61.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i50<0.03388822078704834){
    if(i27<0.000168694241438061){
     s0+=29.0;
     s1+=6.0;
    } else {
     s0+=74.0;
     s1+=825.0;
    }
   } else {
    if(i57<0.00010157818906009197){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=37.0;
    }
   }
  }
 }
} else {
 if(i34<0.00048207282088696957){
  if(i55<1.000124216079712){
   s0+=317.0;
  } else {
   if(i13<1.00102698802948){
    s0+=8.0;
   } else {
    s1+=20.0;
   }
  }
 } else {
  if(i43<1.3011294868192635e-06){
   if(i18<0.00010210275650024414){
    if(i67<0.00046466433559544384){
     s0+=877.0;
     s1+=1876.0;
    } else {
     s0+=253.0;
     s1+=2561.0;
    }
   } else {
    if(i32<1.0745697021484375){
     s0+=3.0;
    } else {
     s0+=40.0;
     s1+=9518.0;
    }
   }
  } else {
   if(i41<0.9992890357971191){
    s0+=257.0;
   } else {
    if(i33<0.0010159879457205534){
     s0+=99.0;
    } else {
     s0+=13.0;
     s1+=73.0;
    }
   }
  }
 }
}
if(i21<1.008605718612671){
 if(i11<1.0452215671539307){
  if(i0<0.08213692903518677){
   if(i6<4.750490188598633e-05){
    if(i49<-0.00602450966835022){
     s0+=2893.0;
     s1+=544.0;
    } else {
     s0+=61372.0;
     s1+=766.0;
    }
   } else {
    if(i17<0.003326163161545992){
     s0+=175.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=270.0;
    }
   }
  } else {
   if(i4<0.9956426024436951){
    if(i39<0.006870085373520851){
     s0+=126.0;
    } else {
     s0+=11.0;
     s1+=12.0;
    }
   } else {
    if(i39<0.000430102925747633){
     s0+=32.0;
     s1+=5.0;
    } else {
     s0+=61.0;
     s1+=805.0;
    }
   }
  }
 } else {
  if(i7<-1.6532108929823153e-05){
   if(i1<0.0008727908134460449){
    if(i14<-1.5020370483398438e-05){
     s0+=168.0;
     s1+=5.0;
    } else {
     s0+=976.0;
     s1+=1804.0;
    }
   } else {
    if(i23<1.001510739326477){
     s0+=51.0;
     s1+=309.0;
    } else {
     s0+=15.0;
     s1+=1295.0;
    }
   }
  } else {
   if(i12<1.000671148300171){
    if(i24<0.993637204170227){
     s0+=710.0;
     s1+=133.0;
    } else {
     s0+=1768.0;
     s1+=98.0;
    }
   } else {
    if(i32<1.2385294437408447){
     s0+=28.0;
     s1+=115.0;
    } else {
     s0+=51.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i2<0.07542526721954346){
  if(i0<0.06548601388931274){
   if(i10<0.0014325976371765137){
    if(i39<0.001140886452049017){
     s0+=271.0;
     s1+=165.0;
    } else {
     s0+=1342.0;
     s1+=44.0;
    }
   } else {
    if(i63<0.006630837917327881){
     s0+=1.0;
     s1+=64.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i49<0.005851149559020996){
    if(i39<0.001609485480003059){
     s0+=4.0;
     s1+=184.0;
    } else {
     s0+=32.0;
     s1+=12.0;
    }
   } else {
    if(i49<0.01202481985092163){
     s0+=35.0;
     s1+=17.0;
    } else {
     s0+=114.0;
    }
   }
  }
 } else {
  if(i20<1.00687837600708){
   if(i43<-2.462965085214819e-06){
    if(i17<0.0034011625684797764){
     s0+=307.0;
     s1+=188.0;
    } else {
     s0+=56.0;
     s1+=1353.0;
    }
   } else {
    if(i37<0.04266250133514404){
     s0+=16.0;
     s1+=91.0;
    } else {
     s0+=252.0;
     s1+=67.0;
    }
   }
  } else {
   if(i7<-2.5161016310448758e-05){
    if(i3<0.08186069130897522){
     s0+=17.0;
     s1+=334.0;
    } else {
     s0+=7.0;
     s1+=8545.0;
    }
   } else {
    if(i13<1.025259017944336){
     s0+=63.0;
     s1+=3.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
}
if(i2<0.08340519666671753){
 if(i6<3.904104232788086e-05){
  if(i35<0.0003005065373145044){
   if(i30<1.0083680152893066){
    if(i43<-1.3736024811805692e-05){
     s0+=189.0;
     s1+=16.0;
    } else {
     s0+=46233.0;
     s1+=51.0;
    }
   } else {
    if(i38<0.0008416939526796341){
     s1+=60.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i9<1.0398929119110107){
    if(i39<0.0013780816225335002){
     s0+=4152.0;
     s1+=416.0;
    } else {
     s0+=10038.0;
     s1+=29.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=1777.0;
     s1+=1025.0;
    } else {
     s0+=6058.0;
     s1+=449.0;
    }
   }
  }
 } else {
  if(i55<0.9990686178207397){
   s0+=229.0;
  } else {
   if(i42<1.2160736322402954){
    if(i50<0.03798633813858032){
     s0+=4.0;
     s1+=625.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i56<-0.0019619762897491455){
     s0+=78.0;
     s1+=302.0;
    } else {
     s0+=198.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i7<-1.934405736392364e-05){
  if(i4<1.0023688077926636){
   if(i49<0.01633283495903015){
    if(i8<-0.0004025697708129883){
     s0+=30.0;
     s1+=8.0;
    } else {
     s0+=98.0;
     s1+=2103.0;
    }
   } else {
    if(i22<0.03612759709358215){
     s0+=395.0;
     s1+=161.0;
    } else {
     s0+=65.0;
     s1+=851.0;
    }
   }
  } else {
   if(i30<0.9969228506088257){
    if(i63<0.03152155876159668){
     s0+=14.0;
     s1+=864.0;
    } else {
     s0+=50.0;
     s1+=292.0;
    }
   } else {
    if(i44<0.011698925867676735){
     s0+=21.0;
     s1+=1000.0;
    } else {
     s0+=1.0;
     s1+=8254.0;
    }
   }
  }
 } else {
  if(i4<0.9960691928863525){
   if(i53<0.004822544753551483){
    if(i56<-0.006028324365615845){
     s0+=78.0;
     s1+=5.0;
    } else {
     s0+=574.0;
     s1+=1.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i52<1.0092895030975342){
    if(i57<3.106571239186451e-05){
     s0+=82.0;
     s1+=28.0;
    } else {
     s0+=32.0;
     s1+=371.0;
    }
   } else {
    if(i17<0.003606162965297699){
     s0+=626.0;
     s1+=115.0;
    } else {
     s0+=26.0;
     s1+=109.0;
    }
   }
  }
 }
}
if(i3<0.08032220602035522){
 if(i9<1.0468311309814453){
  if(i48<-0.0015779733657836914){
   if(i21<0.9523276090621948){
    if(i0<0.02866414189338684){
     s0+=899.0;
     s1+=4.0;
    } else {
     s0+=30.0;
     s1+=14.0;
    }
   } else {
    if(i6<3.600120544433594e-05){
     s0+=1211.0;
     s1+=286.0;
    } else {
     s0+=6.0;
     s1+=68.0;
    }
   }
  } else {
   if(i19<1.0451585054397583){
    if(i69<0.0006834545638412237){
     s0+=50710.0;
     s1+=71.0;
    } else {
     s0+=2609.0;
     s1+=117.0;
    }
   } else {
    if(i2<0.0682465136051178){
     s0+=6813.0;
     s1+=292.0;
    } else {
     s0+=399.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i38<0.0011285454966127872){
   if(i12<1.0006864070892334){
    if(i67<0.00014732542331330478){
     s0+=1601.0;
     s1+=281.0;
    } else {
     s0+=159.0;
     s1+=255.0;
    }
   } else {
    if(i7<-2.6954934583045542e-05){
     s0+=11.0;
     s1+=741.0;
    } else {
     s0+=82.0;
     s1+=158.0;
    }
   }
  } else {
   if(i8<0.0008680820465087891){
    if(i17<0.00686058821156621){
     s0+=4552.0;
     s1+=267.0;
    } else {
     s0+=283.0;
     s1+=165.0;
    }
   } else {
    if(i62<-0.010194935835897923){
     s0+=123.0;
     s1+=19.0;
    } else {
     s0+=61.0;
     s1+=390.0;
    }
   }
  }
 }
} else {
 if(i1<0.0001468658447265625){
  if(i33<0.0005861161043867469){
   if(i27<0.0009360176045447588){
    if(i7<-4.507744051807094e-06){
     s0+=39.0;
     s1+=98.0;
    } else {
     s0+=86.0;
     s1+=2.0;
    }
   } else {
    if(i51<-0.0028589325957000256){
     s0+=131.0;
     s1+=9.0;
    } else {
     s0+=238.0;
    }
   }
  } else {
   if(i8<-0.0004054605960845947){
    if(i17<0.006154780741780996){
     s0+=287.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i7<-1.1511471711855847e-05){
     s0+=225.0;
     s1+=1545.0;
    } else {
     s0+=236.0;
     s1+=214.0;
    }
   }
  }
 } else {
  if(i17<0.003219333942979574){
   if(i25<0.0025367001071572304){
    if(i60<0.003910839557647705){
     s0+=23.0;
     s1+=610.0;
    } else {
     s0+=43.0;
     s1+=32.0;
    }
   } else {
    if(i21<0.9806150197982788){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=214.0;
     s1+=41.0;
    }
   }
  } else {
   if(i10<-0.0006322264671325684){
    if(i34<0.005174853838980198){
     s0+=76.0;
     s1+=165.0;
    } else {
     s0+=34.0;
     s1+=813.0;
    }
   } else {
    if(i10<3.635883331298828e-05){
     s0+=26.0;
     s1+=647.0;
    } else {
     s0+=3.0;
     s1+=9426.0;
    }
   }
  }
 }
}
if(i9<1.0527000427246094){
 if(i0<0.08354318141937256){
  if(i13<1.0082993507385254){
   if(i19<1.042891263961792){
    if(i67<0.00025701936101540923){
     s0+=46734.0;
     s1+=22.0;
    } else {
     s0+=5450.0;
     s1+=133.0;
    }
   } else {
    if(i42<1.1158984899520874){
     s0+=4487.0;
     s1+=895.0;
    } else {
     s0+=7090.0;
     s1+=143.0;
    }
   }
  } else {
   if(i42<1.1063789129257202){
    if(i18<4.76837158203125e-07){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=163.0;
    }
   } else {
    if(i8<0.0006718039512634277){
     s0+=135.0;
     s1+=7.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i16<0.9977092742919922){
   s0+=132.0;
  } else {
   if(i59<1.003005862236023){
    if(i35<0.00022609668667428195){
     s0+=13.0;
    } else {
     s0+=48.0;
     s1+=744.0;
    }
   } else {
    if(i6<-1.3530254364013672e-05){
     s0+=31.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i22<0.023881513625383377){
  if(i6<3.165006637573242e-05){
   if(i13<1.0107821226119995){
    if(i36<1.1039339303970337){
     s0+=1309.0;
     s1+=467.0;
    } else {
     s0+=3386.0;
     s1+=232.0;
    }
   } else {
    if(i9<1.0851627588272095){
     s0+=52.0;
     s1+=398.0;
    } else {
     s0+=351.0;
     s1+=99.0;
    }
   }
  } else {
   if(i6<6.633996963500977e-05){
    if(i42<1.2271616458892822){
     s0+=40.0;
     s1+=506.0;
    } else {
     s0+=192.0;
     s1+=63.0;
    }
   } else {
    if(i18<-7.450580596923828e-06){
     s0+=42.0;
     s1+=96.0;
    } else {
     s0+=1.0;
     s1+=1881.0;
    }
   }
  }
 } else {
  if(i0<0.06825792789459229){
   if(i28<1.1039612293243408){
    if(i7<4.7200478547893e-06){
     s0+=24.0;
     s1+=205.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   } else {
    if(i4<1.0018720626831055){
     s0+=783.0;
     s1+=187.0;
    } else {
     s0+=71.0;
     s1+=190.0;
    }
   }
  } else {
   if(i41<0.9988085031509399){
    if(i17<0.011677823960781097){
     s0+=206.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i38<0.005907177925109863){
     s0+=413.0;
     s1+=2081.0;
    } else {
     s0+=65.0;
     s1+=8638.0;
    }
   }
  }
 }
}
if(i0<0.08138632774353027){
 if(i19<1.0486011505126953){
  if(i58<0.001550264423713088){
   if(i36<1.0556960105895996){
    s0+=40988.0;
   } else {
    if(i39<0.0007280685240402818){
     s0+=3461.0;
     s1+=175.0;
    } else {
     s0+=9544.0;
     s1+=32.0;
    }
   }
  } else {
   if(i49<-0.002406209707260132){
    if(i39<0.00039137486601248384){
     s0+=674.0;
     s1+=21.0;
    } else {
     s0+=384.0;
     s1+=152.0;
    }
   } else {
    s0+=785.0;
   }
  }
 } else {
  if(i42<1.103413462638855){
   if(i6<1.0788440704345703e-05){
    if(i24<0.990431010723114){
     s0+=190.0;
     s1+=480.0;
    } else {
     s0+=2531.0;
     s1+=405.0;
    }
   } else {
    if(i32<1.066007137298584){
     s0+=204.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=772.0;
    }
   }
  } else {
   if(i1<0.0005081892013549805){
    if(i53<0.006434008479118347){
     s0+=10300.0;
     s1+=416.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i40<0.0002384483814239502){
     s0+=267.0;
     s1+=103.0;
    } else {
     s0+=75.0;
     s1+=390.0;
    }
   }
  }
 }
} else {
 if(i43<4.099111720279325e-06){
  if(i33<0.0004476824833545834){
   if(i10<0.00040584802627563477){
    if(i12<1.0006990432739258){
     s0+=277.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.08576160669326782){
     s0+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i1<0.0005589723587036133){
    if(i7<-1.3784085240331478e-05){
     s0+=553.0;
     s1+=3043.0;
    } else {
     s0+=527.0;
     s1+=373.0;
    }
   } else {
    if(i18<6.258487701416016e-06){
     s0+=92.0;
     s1+=1138.0;
    } else {
     s0+=39.0;
     s1+=9506.0;
    }
   }
  }
 } else {
  if(i11<1.0325736999511719){
   if(i70<3.262327936681686e-06){
    s1+=9.0;
   } else {
    s0+=2.0;
   }
  } else {
   s0+=269.0;
  }
 }
}
if(i0<0.08203768730163574){
 if(i14<1.8775463104248047e-05){
  if(i56<-0.002227604389190674){
   if(i36<1.1803476810455322){
    if(i40<-3.457069396972656e-05){
     s0+=1448.0;
     s1+=108.0;
    } else {
     s0+=615.0;
     s1+=670.0;
    }
   } else {
    if(i47<0.6409083008766174){
     s0+=3426.0;
     s1+=106.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i21<1.0067415237426758){
    if(i36<1.0556960105895996){
     s0+=41523.0;
    } else {
     s0+=18524.0;
     s1+=626.0;
    }
   } else {
    if(i71<2.2415228158934042e-05){
     s0+=15.0;
     s1+=82.0;
    } else {
     s0+=2361.0;
     s1+=399.0;
    }
   }
  }
 } else {
  if(i9<1.041278600692749){
   if(i54<0.00028714537620544434){
    if(i23<1.0007904767990112){
     s0+=250.0;
     s1+=16.0;
    } else {
     s0+=42.0;
     s1+=59.0;
    }
   } else {
    if(i71<9.336610673926771e-05){
     s0+=67.0;
     s1+=10.0;
    } else {
     s0+=339.0;
    }
   }
  } else {
   if(i1<0.0005681514739990234){
    if(i44<0.039227455854415894){
     s0+=581.0;
     s1+=101.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   } else {
    if(i23<1.0039868354797363){
     s0+=135.0;
     s1+=215.0;
    } else {
     s0+=10.0;
     s1+=603.0;
    }
   }
  }
 }
} else {
 if(i16<0.9985270500183105){
  if(i41<0.9993387460708618){
   if(i7<-3.674704203149304e-05){
    if(i67<0.00029484217520803213){
     s0+=20.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i18<-0.0004730522632598877){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=407.0;
    }
   }
  } else {
   if(i19<1.1107944250106812){
    s0+=7.0;
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i6<3.36766242980957e-05){
   if(i46<0.0589241087436676){
    if(i19<1.0428379774093628){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=50.0;
     s1+=1937.0;
    }
   } else {
    if(i3<0.122161865234375){
     s0+=709.0;
     s1+=202.0;
    } else {
     s0+=341.0;
     s1+=1065.0;
    }
   }
  } else {
   if(i7<-4.644354703486897e-05){
    if(i0<0.13177666068077087){
     s0+=73.0;
     s1+=1224.0;
    } else {
     s0+=15.0;
     s1+=9469.0;
    }
   } else {
    if(i19<1.106724739074707){
     s0+=10.0;
     s1+=172.0;
    } else {
     s0+=58.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i3<0.07995370030403137){
 if(i10<0.0011493265628814697){
  if(i4<1.0024776458740234){
   if(i25<0.0003105606883764267){
    if(i26<1.007047176361084){
     s0+=53498.0;
     s1+=243.0;
    } else {
     s0+=255.0;
     s1+=99.0;
    }
   } else {
    if(i40<-3.55839729309082e-05){
     s0+=6595.0;
     s1+=151.0;
    } else {
     s0+=8899.0;
     s1+=1695.0;
    }
   }
  } else {
   if(i44<0.0076729608699679375){
    if(i42<1.2133851051330566){
     s0+=11.0;
     s1+=31.0;
    } else {
     s0+=115.0;
     s1+=15.0;
    }
   } else {
    if(i33<0.009066482074558735){
     s0+=15.0;
     s1+=365.0;
    } else {
     s0+=49.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i17<0.0018969941884279251){
   if(i28<1.2392117977142334){
    s1+=13.0;
   } else {
    s0+=98.0;
   }
  } else {
   if(i4<1.0029983520507812){
    if(i33<0.0018830131739377975){
     s1+=27.0;
    } else {
     s0+=10.0;
    }
   } else {
    s1+=581.0;
   }
  }
 }
} else {
 if(i53<0.0013212175108492374){
  if(i37<0.049091637134552){
   if(i12<0.9905787110328674){
    s0+=39.0;
   } else {
    if(i66<-0.00888111349195242){
     s0+=49.0;
     s1+=44.0;
    } else {
     s0+=58.0;
     s1+=2138.0;
    }
   }
  } else {
   if(i18<0.00010579824447631836){
    if(i66<-0.010338397696614265){
     s0+=419.0;
     s1+=29.0;
    } else {
     s0+=562.0;
     s1+=314.0;
    }
   } else {
    if(i30<1.007042646408081){
     s0+=19.0;
     s1+=35.0;
    } else {
     s0+=5.0;
     s1+=391.0;
    }
   }
  }
 } else {
  if(i17<0.005512343719601631){
   if(i16<0.9980455040931702){
    if(i34<0.006792740896344185){
     s0+=118.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i37<0.05348902940750122){
     s0+=35.0;
     s1+=523.0;
    } else {
     s0+=205.0;
     s1+=158.0;
    }
   }
  } else {
   if(i68<-7.065548561513424e-05){
    if(i21<1.004359483718872){
     s0+=40.0;
     s1+=1659.0;
    } else {
     s0+=5.0;
     s1+=7990.0;
    }
   } else {
    if(i10<-0.0009723901748657227){
     s0+=100.0;
     s1+=171.0;
    } else {
     s0+=7.0;
     s1+=331.0;
    }
   }
  }
 }
}
if(i7<-7.49893588363193e-05){
 if(i1<6.16610050201416e-05){
  if(i11<1.0889064073562622){
   if(i13<1.004188060760498){
    if(i9<1.0447509288787842){
     s0+=606.0;
     s1+=7.0;
    } else {
     s0+=125.0;
     s1+=52.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   s1+=239.0;
  }
 } else {
  if(i23<1.0008831024169922){
   if(i2<0.12144678831100464){
    if(i71<0.00011368725972715765){
     s0+=133.0;
     s1+=24.0;
    } else {
     s0+=67.0;
     s1+=164.0;
    }
   } else {
    if(i17<0.006179448217153549){
     s0+=11.0;
     s1+=54.0;
    } else {
     s0+=3.0;
     s1+=1039.0;
    }
   }
  } else {
   if(i15<0.8826373219490051){
    if(i42<1.490482211112976){
     s0+=7.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i23<1.0061455965042114){
     s0+=44.0;
     s1+=1286.0;
    } else {
     s0+=1.0;
     s1+=8392.0;
    }
   }
  }
 }
} else {
 if(i11<1.0410068035125732){
  if(i48<-0.0018929839134216309){
   if(i36<1.1792536973953247){
    if(i34<0.00039940958959050477){
     s0+=600.0;
     s1+=5.0;
    } else {
     s0+=353.0;
     s1+=548.0;
    }
   } else {
    if(i1<0.0002626776695251465){
     s0+=1087.0;
     s1+=24.0;
    } else {
     s0+=13.0;
     s1+=56.0;
    }
   }
  } else {
   if(i42<1.067622423171997){
    if(i16<1.0005080699920654){
     s0+=35793.0;
    } else {
     s0+=1992.0;
     s1+=17.0;
    }
   } else {
    if(i19<1.0451276302337646){
     s0+=16481.0;
     s1+=169.0;
    } else {
     s0+=6728.0;
     s1+=972.0;
    }
   }
  }
 } else {
  if(i17<0.004312185570597649){
   if(i67<-9.229731222148985e-05){
    if(i28<1.2604451179504395){
     s0+=52.0;
     s1+=382.0;
    } else {
     s0+=174.0;
     s1+=11.0;
    }
   } else {
    if(i0<0.09585350751876831){
     s0+=5181.0;
     s1+=640.0;
    } else {
     s0+=757.0;
     s1+=736.0;
    }
   }
  } else {
   if(i8<-0.0003425776958465576){
    if(i53<0.002629017923027277){
     s0+=397.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i18<-0.0001633763313293457){
     s0+=488.0;
     s1+=513.0;
    } else {
     s0+=50.0;
     s1+=1733.0;
    }
   }
  }
 }
}
if(i6<3.820657730102539e-05){
 if(i19<1.0494916439056396){
  if(i4<1.002547264099121){
   if(i42<1.067622423171997){
    if(i51<0.009067019447684288){
     s0+=37522.0;
     s1+=4.0;
    } else {
     s0+=350.0;
     s1+=4.0;
    }
   } else {
    if(i69<0.0007084989338181913){
     s0+=16577.0;
     s1+=167.0;
    } else {
     s0+=1770.0;
     s1+=275.0;
    }
   }
  } else {
   if(i65<1.4436208175538923e-06){
    s0+=8.0;
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i0<0.08142024278640747){
   if(i32<1.1037919521331787){
    if(i35<0.0004960958613082767){
     s0+=1621.0;
     s1+=227.0;
    } else {
     s0+=884.0;
     s1+=909.0;
    }
   } else {
    if(i64<0.0019444378558546305){
     s0+=10265.0;
     s1+=407.0;
    } else {
     s0+=35.0;
     s1+=44.0;
    }
   }
  } else {
   if(i37<0.04917716979980469){
    if(i40<-0.00025385618209838867){
     s0+=38.0;
    } else {
     s0+=109.0;
     s1+=2312.0;
    }
   } else {
    if(i44<0.040019698441028595){
     s0+=1247.0;
     s1+=702.0;
    } else {
     s0+=19.0;
     s1+=465.0;
    }
   }
  }
 }
} else {
 if(i39<0.00042423821287229657){
  s0+=302.0;
 } else {
  if(i20<1.0097320079803467){
   if(i3<0.12748581171035767){
    if(i36<1.2117441892623901){
     s0+=82.0;
     s1+=919.0;
    } else {
     s0+=306.0;
     s1+=324.0;
    }
   } else {
    if(i36<1.0660066604614258){
     s0+=5.0;
    } else {
     s0+=23.0;
     s1+=1861.0;
    }
   }
  } else {
   if(i8<0.00044912099838256836){
    if(i16<1.0014350414276123){
     s1+=770.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=7680.0;
   }
  }
 }
}
if(i3<0.07752794027328491){
 if(i10<0.0011751055717468262){
  if(i6<3.892183303833008e-05){
   if(i22<0.01653255522251129){
    if(i36<1.0598037242889404){
     s0+=42236.0;
     s1+=18.0;
    } else {
     s0+=16767.0;
     s1+=746.0;
    }
   } else {
    if(i1<-0.0003288388252258301){
     s0+=7928.0;
     s1+=332.0;
    } else {
     s0+=1909.0;
     s1+=962.0;
    }
   }
  } else {
   if(i44<0.0073427120223641396){
    if(i66<0.00023291028628591448){
     s0+=329.0;
     s1+=23.0;
    } else {
     s0+=11.0;
     s1+=18.0;
    }
   } else {
    if(i4<1.0022249221801758){
     s0+=49.0;
     s1+=41.0;
    } else {
     s0+=63.0;
     s1+=443.0;
    }
   }
  }
 } else {
  if(i43<-1.4116389138507657e-05){
   s1+=587.0;
  } else {
   if(i34<0.0022012381814420223){
    s1+=22.0;
   } else {
    s0+=109.0;
   }
  }
 }
} else {
 if(i16<0.9985270500183105){
  if(i3<0.6477172374725342){
   if(i65<4.3366799218347296e-05){
    if(i45<0.023495163768529892){
     s0+=42.0;
     s1+=5.0;
    } else {
     s0+=454.0;
     s1+=2.0;
    }
   } else {
    if(i28<1.5269668102264404){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i18<5.1081180572509766e-05){
   if(i34<0.005398099310696125){
    if(i37<0.04302030801773071){
     s0+=63.0;
     s1+=1136.0;
    } else {
     s0+=972.0;
     s1+=645.0;
    }
   } else {
    if(i44<0.028919778764247894){
     s0+=175.0;
     s1+=385.0;
    } else {
     s0+=36.0;
     s1+=1716.0;
    }
   }
  } else {
   if(i44<0.015615617856383324){
    if(i10<0.0014224052429199219){
     s0+=123.0;
     s1+=341.0;
    } else {
     s1+=1125.0;
    }
   } else {
    if(i33<0.0005846021231263876){
     s0+=10.0;
    } else {
     s1+=8402.0;
    }
   }
  }
 }
}
if(i2<0.08395597338676453){
 if(i9<1.0451585054397583){
  if(i8<0.0005875825881958008){
   if(i45<0.04631171375513077){
    if(i49<-0.009542077779769897){
     s0+=42.0;
     s1+=50.0;
    } else {
     s0+=53767.0;
     s1+=328.0;
    }
   } else {
    if(i42<1.1550614833831787){
     s0+=2712.0;
     s1+=449.0;
    } else {
     s0+=4990.0;
     s1+=16.0;
    }
   }
  } else {
   if(i57<0.00014870380982756615){
    if(i7<-2.462688644300215e-05){
     s0+=12.0;
     s1+=110.0;
    } else {
     s0+=85.0;
     s1+=10.0;
    }
   } else {
    if(i51<0.01695510745048523){
     s0+=179.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i4<1.0024672746658325){
   if(i7<-2.3177639377536252e-05){
    if(i34<0.001330839702859521){
     s0+=113.0;
     s1+=465.0;
    } else {
     s0+=1664.0;
     s1+=313.0;
    }
   } else {
    if(i22<0.02567077800631523){
     s0+=4661.0;
     s1+=254.0;
    } else {
     s0+=545.0;
     s1+=239.0;
    }
   }
  } else {
   if(i43<-1.44168698170688e-05){
    if(i28<1.5682398080825806){
     s0+=35.0;
     s1+=728.0;
    } else {
     s0+=61.0;
     s1+=51.0;
    }
   } else {
    if(i42<1.1783196926116943){
     s1+=28.0;
    } else {
     s0+=96.0;
    }
   }
  }
 }
} else {
 if(i4<0.996289849281311){
  if(i14<-1.481175422668457e-05){
   if(i7<-2.6176523533649743e-05){
    if(i9<1.0401077270507812){
     s0+=6.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=582.0;
   }
  } else {
   if(i17<0.005096267443150282){
    if(i13<0.9886798858642578){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=84.0;
    }
   } else {
    if(i68<7.377283327514306e-05){
     s0+=5.0;
     s1+=112.0;
    } else {
     s0+=20.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i2<0.12178194522857666){
   if(i50<0.04612666368484497){
    if(i37<0.04647088050842285){
     s0+=68.0;
     s1+=1959.0;
    } else {
     s0+=220.0;
     s1+=231.0;
    }
   } else {
    if(i37<0.040745288133621216){
     s0+=11.0;
     s1+=42.0;
    } else {
     s0+=606.0;
     s1+=103.0;
    }
   }
  } else {
   if(i63<0.06154370307922363){
    if(i53<0.0002987491898238659){
     s0+=81.0;
     s1+=144.0;
    } else {
     s0+=65.0;
     s1+=10117.0;
    }
   } else {
    if(i17<0.004641516134142876){
     s0+=260.0;
     s1+=103.0;
    } else {
     s0+=12.0;
     s1+=1379.0;
    }
   }
  }
 }
}
if(i3<0.07800713181495667){
 if(i9<1.0451585054397583){
  if(i14<1.8775463104248047e-05){
   if(i19<1.0451585054397583){
    if(i60<-0.0012906193733215332){
     s0+=1721.0;
     s1+=121.0;
    } else {
     s0+=52004.0;
     s1+=78.0;
    }
   } else {
    if(i36<1.0983617305755615){
     s0+=3061.0;
     s1+=493.0;
    } else {
     s0+=4597.0;
     s1+=49.0;
    }
   }
  } else {
   if(i12<1.0026423931121826){
    if(i4<0.99991774559021){
     s0+=452.0;
     s1+=2.0;
    } else {
     s0+=108.0;
     s1+=32.0;
    }
   } else {
    if(i53<0.002895558951422572){
     s0+=21.0;
     s1+=139.0;
    } else {
     s0+=117.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<0.00016564130783081055){
   if(i14<3.1054019927978516e-05){
    if(i7<-3.156578168272972e-05){
     s0+=1090.0;
     s1+=667.0;
    } else {
     s0+=5919.0;
     s1+=716.0;
    }
   } else {
    if(i51<0.015593722462654114){
     s0+=213.0;
     s1+=134.0;
    } else {
     s0+=5.0;
     s1+=188.0;
    }
   }
  } else {
   if(i70<-4.402698323247023e-06){
    if(i14<0.000372081995010376){
     s0+=4.0;
     s1+=576.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i54<-0.003190159797668457){
     s1+=27.0;
    } else {
     s0+=77.0;
    }
   }
  }
 }
} else {
 if(i44<0.02402268350124359){
  if(i50<0.059660404920578){
   if(i32<1.081458568572998){
    if(i40<0.00010713934898376465){
     s0+=153.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i66<-0.005368058569729328){
     s0+=244.0;
     s1+=251.0;
    } else {
     s0+=176.0;
     s1+=3291.0;
    }
   }
  } else {
   if(i20<1.0069513320922852){
    if(i46<0.04755514860153198){
     s0+=3.0;
     s1+=33.0;
    } else {
     s0+=929.0;
     s1+=211.0;
    }
   } else {
    if(i13<0.9933732748031616){
     s0+=24.0;
    } else {
     s0+=3.0;
     s1+=237.0;
    }
   }
  }
 } else {
  if(i14<-1.2814998626708984e-05){
   if(i53<0.004220351576805115){
    if(i23<0.9963269829750061){
     s0+=150.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i7<-1.7131560525740497e-05){
    if(i19<1.063935399055481){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=31.0;
     s1+=9642.0;
    }
   } else {
    if(i48<0.0026092827320098877){
     s0+=2.0;
     s1+=55.0;
    } else {
     s0+=102.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i3<0.07800713181495667){
 if(i65<-7.98229029896902e-06){
  if(i24<0.9817004799842834){
   if(i59<0.997494101524353){
    s0+=4.0;
   } else {
    s1+=16.0;
   }
  } else {
   s1+=334.0;
  }
 } else {
  if(i16<1.0016374588012695){
   if(i25<0.00029170140624046326){
    if(i7<-4.040487692691386e-05){
     s0+=496.0;
     s1+=127.0;
    } else {
     s0+=52502.0;
     s1+=189.0;
    }
   } else {
    if(i23<0.9939254522323608){
     s0+=8404.0;
     s1+=124.0;
    } else {
     s0+=6913.0;
     s1+=1626.0;
    }
   }
  } else {
   if(i4<1.002540111541748){
    if(i51<0.01320946030318737){
     s0+=862.0;
     s1+=89.0;
    } else {
     s0+=38.0;
     s1+=105.0;
    }
   } else {
    if(i23<1.0016456842422485){
     s0+=68.0;
     s1+=102.0;
    } else {
     s0+=44.0;
     s1+=533.0;
    }
   }
  }
 }
} else {
 if(i1<0.00010436773300170898){
  if(i37<0.04253086447715759){
   if(i59<0.9957003593444824){
    s0+=56.0;
   } else {
    if(i8<-0.00046125054359436035){
     s0+=12.0;
    } else {
     s0+=32.0;
     s1+=999.0;
    }
   }
  } else {
   if(i8<-0.00041115283966064453){
    if(i65<4.3509215174708515e-05){
     s0+=340.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.13445636630058289){
     s0+=654.0;
     s1+=209.0;
    } else {
     s0+=198.0;
     s1+=535.0;
    }
   }
  }
 } else {
  if(i3<0.13037991523742676){
   if(i48<0.0046697258949279785){
    if(i36<1.054610252380371){
     s0+=14.0;
    } else {
     s0+=94.0;
     s1+=1876.0;
    }
   } else {
    if(i37<0.03613114356994629){
     s0+=5.0;
     s1+=29.0;
    } else {
     s0+=273.0;
     s1+=36.0;
    }
   }
  } else {
   if(i54<0.009661078453063965){
    if(i50<0.1366146206855774){
     s0+=4.0;
     s1+=8310.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   } else {
    if(i32<1.274404764175415){
     s0+=74.0;
     s1+=64.0;
    } else {
     s0+=23.0;
     s1+=1772.0;
    }
   }
  }
 }
}
if(i5<0.07237386703491211){
 if(i10<0.0010209977626800537){
  if(i4<1.0024909973144531){
   if(i25<0.00030670693377032876){
    if(i21<1.0090007781982422){
     s0+=53503.0;
     s1+=245.0;
    } else {
     s0+=135.0;
     s1+=100.0;
    }
   } else {
    if(i28<1.2371783256530762){
     s0+=5366.0;
     s1+=1938.0;
    } else {
     s0+=9662.0;
     s1+=363.0;
    }
   }
  } else {
   if(i43<-1.1346048268023878e-05){
    if(i33<0.007826714776456356){
     s0+=31.0;
     s1+=425.0;
    } else {
     s0+=70.0;
     s1+=91.0;
    }
   } else {
    if(i16<1.0019237995147705){
     s0+=20.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<0.001595914363861084){
   if(i28<1.2392117977142334){
    s1+=377.0;
   } else {
    if(i41<1.0010251998901367){
     s0+=235.0;
     s1+=5.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   s1+=1134.0;
  }
 }
} else {
 if(i6<3.319978713989258e-05){
  if(i63<0.026034891605377197){
   if(i41<0.9987028241157532){
    s0+=84.0;
   } else {
    if(i17<0.0016482740174978971){
     s0+=164.0;
     s1+=82.0;
    } else {
     s0+=131.0;
     s1+=1519.0;
    }
   }
  } else {
   if(i17<0.0047500221990048885){
    if(i42<1.2533326148986816){
     s0+=831.0;
     s1+=443.0;
    } else {
     s0+=366.0;
     s1+=13.0;
    }
   } else {
    if(i10<-0.0008352994918823242){
     s0+=192.0;
     s1+=260.0;
    } else {
     s0+=27.0;
     s1+=351.0;
    }
   }
  }
 } else {
  if(i3<0.1285736858844757){
   if(i54<0.004330575466156006){
    if(i43<-1.4060586181585677e-05){
     s0+=37.0;
     s1+=783.0;
    } else {
     s0+=19.0;
     s1+=25.0;
    }
   } else {
    if(i38<0.0018782713450491428){
     s1+=39.0;
    } else {
     s0+=105.0;
     s1+=9.0;
    }
   }
  } else {
   if(i40<-0.0005263090133666992){
    s0+=8.0;
   } else {
    if(i7<-5.414931365521625e-05){
     s0+=6.0;
     s1+=8868.0;
    } else {
     s0+=22.0;
     s1+=129.0;
    }
   }
  }
 }
}
if(i0<0.08241817355155945){
 if(i4<1.0024950504302979){
  if(i56<-0.002227604389190674){
   if(i42<1.1823735237121582){
    if(i3<0.04358983039855957){
     s0+=1711.0;
     s1+=393.0;
    } else {
     s0+=245.0;
     s1+=381.0;
    }
   } else {
    if(i8<0.00030243396759033203){
     s0+=3243.0;
     s1+=69.0;
    } else {
     s0+=488.0;
     s1+=150.0;
    }
   }
  } else {
   if(i25<0.000299882231047377){
    if(i26<1.007777214050293){
     s0+=52734.0;
     s1+=143.0;
    } else {
     s0+=136.0;
     s1+=56.0;
    }
   } else {
    if(i35<0.00155251519754529){
     s0+=4529.0;
     s1+=789.0;
    } else {
     s0+=6123.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i43<-1.439997140550986e-05){
   if(i60<0.0025002360343933105){
    if(i49<0.008237570524215698){
     s0+=49.0;
     s1+=951.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i32<1.2731945514678955){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=31.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.125915288925171){
    if(i42<1.062556266784668){
     s0+=1.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i17<0.003547507571056485){
     s0+=167.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i16<0.998518705368042){
  if(i33<0.006805916782468557){
   if(i7<-4.225862357998267e-05){
    if(i31<0.08474767208099365){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   } else {
    s0+=474.0;
   }
  } else {
   if(i45<0.05715516209602356){
    s0+=15.0;
   } else {
    if(i10<-0.005247741937637329){
     s0+=1.0;
    } else {
     s1+=22.0;
    }
   }
  }
 } else {
  if(i4<1.00185227394104){
   if(i17<0.001680481480434537){
    if(i52<1.0014770030975342){
     s0+=12.0;
     s1+=101.0;
    } else {
     s0+=520.0;
     s1+=91.0;
    }
   } else {
    if(i62<-0.01954205334186554){
     s0+=371.0;
     s1+=943.0;
    } else {
     s0+=147.0;
     s1+=2087.0;
    }
   }
  } else {
   if(i44<0.012085679918527603){
    if(i62<-0.03296497464179993){
     s0+=35.0;
     s1+=12.0;
    } else {
     s0+=57.0;
     s1+=1067.0;
    }
   } else {
    if(i42<1.1779539585113525){
     s0+=16.0;
     s1+=407.0;
    } else {
     s0+=16.0;
     s1+=9320.0;
    }
   }
  }
 }
}
if(i13<1.0081918239593506){
 if(i4<1.0024927854537964){
  if(i25<0.00030670780688524246){
   if(i35<0.0002895683574024588){
    if(i36<1.0720129013061523){
     s0+=41602.0;
     s1+=5.0;
    } else {
     s0+=4555.0;
     s1+=29.0;
    }
   } else {
    if(i17<0.005312332883477211){
     s0+=7530.0;
     s1+=244.0;
    } else {
     s0+=27.0;
     s1+=49.0;
    }
   }
  } else {
   if(i4<0.9976550340652466){
    if(i2<0.08580896258354187){
     s0+=9443.0;
     s1+=284.0;
    } else {
     s0+=573.0;
     s1+=341.0;
    }
   } else {
    if(i0<0.07589229941368103){
     s0+=5155.0;
     s1+=1196.0;
    } else {
     s0+=796.0;
     s1+=1880.0;
    }
   }
  }
 } else {
  if(i64<0.00048646845971234143){
   if(i24<1.0023471117019653){
    if(i3<0.040748536586761475){
     s0+=7.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=238.0;
    }
   } else {
    if(i2<0.13301247358322144){
     s0+=90.0;
     s1+=46.0;
    } else {
     s1+=62.0;
    }
   }
  } else {
   if(i11<1.0884358882904053){
    if(i65<1.3137384485162329e-05){
     s0+=8.0;
     s1+=558.0;
    } else {
     s0+=51.0;
     s1+=86.0;
    }
   } else {
    s1+=1001.0;
   }
  }
 }
} else {
 if(i7<-4.222309507895261e-05){
  if(i18<5.364418029785156e-07){
   if(i19<1.1239211559295654){
    if(i11<1.0841608047485352){
     s0+=2.0;
     s1+=119.0;
    } else {
     s0+=64.0;
     s1+=24.0;
    }
   } else {
    if(i7<-4.483560405788012e-05){
     s0+=2.0;
     s1+=511.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   }
  } else {
   if(i16<0.9986974000930786){
    s0+=8.0;
   } else {
    if(i7<-4.364034248283133e-05){
     s0+=21.0;
     s1+=9605.0;
    } else {
     s0+=19.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i0<0.08273869752883911){
   if(i39<0.0013724868185818195){
    if(i19<1.0738314390182495){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=39.0;
     s1+=14.0;
    }
   } else {
    if(i41<1.0011265277862549){
     s0+=792.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   }
  } else {
   if(i46<0.06433910131454468){
    if(i66<-0.008961436338722706){
     s0+=21.0;
     s1+=19.0;
    } else {
     s0+=11.0;
     s1+=356.0;
    }
   } else {
    if(i5<0.1765328049659729){
     s0+=300.0;
     s1+=72.0;
    } else {
     s0+=44.0;
     s1+=195.0;
    }
   }
  }
 }
}
if(i6<3.629922866821289e-05){
 if(i0<0.08222377300262451){
  if(i25<0.00028711516642943025){
   if(i21<1.0084600448608398){
    if(i35<0.00025050295516848564){
     s0+=43387.0;
     s1+=13.0;
    } else {
     s0+=8945.0;
     s1+=173.0;
    }
   } else {
    if(i32<1.1063789129257202){
     s0+=43.0;
     s1+=83.0;
    } else {
     s0+=122.0;
     s1+=6.0;
    }
   }
  } else {
   if(i4<0.9977995157241821){
    if(i20<0.9873265027999878){
     s0+=7460.0;
     s1+=109.0;
    } else {
     s0+=2835.0;
     s1+=244.0;
    }
   } else {
    if(i33<0.00030718528432771564){
     s0+=2132.0;
    } else {
     s0+=3706.0;
     s1+=1463.0;
    }
   }
  }
 } else {
  if(i40<-0.0001424849033355713){
   if(i70<-2.2774020180804655e-06){
    if(i12<0.9945619106292725){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   } else {
    if(i34<0.02112499438226223){
     s0+=433.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i22<0.022512108087539673){
    if(i62<-0.01566959172487259){
     s0+=569.0;
     s1+=162.0;
    } else {
     s0+=210.0;
     s1+=828.0;
    }
   } else {
    if(i44<0.025537526234984398){
     s0+=275.0;
     s1+=1044.0;
    } else {
     s0+=49.0;
     s1+=1395.0;
    }
   }
  }
 }
} else {
 if(i34<0.0005056830123066902){
  s0+=323.0;
 } else {
  if(i20<1.0098402500152588){
   if(i47<0.3456932306289673){
    if(i0<0.12752684950828552){
     s0+=427.0;
     s1+=1146.0;
    } else {
     s0+=37.0;
     s1+=1367.0;
    }
   } else {
    if(i22<0.02908293344080448){
     s0+=4.0;
     s1+=8.0;
    } else {
     s1+=806.0;
    }
   }
  } else {
   if(i64<6.68542052153498e-05){
    if(i27<0.00030402198899537325){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i11<1.0243442058563232){
     s0+=1.0;
     s1+=33.0;
    } else {
     s0+=2.0;
     s1+=8340.0;
    }
   }
  }
 }
}
if(i23<1.0040043592453003){
 if(i9<1.0470023155212402){
  if(i19<1.0451585054397583){
   if(i69<0.0006792336935177445){
    if(i19<1.0410068035125732){
     s0+=47288.0;
     s1+=30.0;
    } else {
     s0+=3664.0;
     s1+=49.0;
    }
   } else {
    if(i20<0.989699125289917){
     s0+=2393.0;
     s1+=18.0;
    } else {
     s0+=839.0;
     s1+=171.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i42<1.0670123100280762){
     s0+=1446.0;
     s1+=34.0;
    } else {
     s0+=795.0;
     s1+=693.0;
    }
   } else {
    if(i7<-3.592683424358256e-05){
     s0+=1289.0;
     s1+=198.0;
    } else {
     s0+=4827.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i1<0.00021266937255859375){
   if(i13<1.0107730627059937){
    if(i53<0.005340591538697481){
     s0+=6696.0;
     s1+=1866.0;
    } else {
     s0+=7.0;
     s1+=147.0;
    }
   } else {
    if(i5<0.08024650812149048){
     s0+=210.0;
     s1+=139.0;
    } else {
     s0+=106.0;
     s1+=480.0;
    }
   }
  } else {
   if(i38<0.006547418422996998){
    if(i59<1.0001379251480103){
     s0+=239.0;
     s1+=900.0;
    } else {
     s0+=572.0;
     s1+=517.0;
    }
   } else {
    if(i0<0.08307617902755737){
     s0+=101.0;
     s1+=75.0;
    } else {
     s0+=40.0;
     s1+=1584.0;
    }
   }
  }
 }
} else {
 if(i7<-4.927722329739481e-05){
  if(i9<1.0341004133224487){
   if(i70<-4.631660885934252e-06){
    s1+=38.0;
   } else {
    s0+=38.0;
   }
  } else {
   if(i8<-0.0002719461917877197){
    s0+=49.0;
   } else {
    if(i23<1.0064631700515747){
     s0+=50.0;
     s1+=939.0;
    } else {
     s0+=1.0;
     s1+=8830.0;
    }
   }
  }
 } else {
  if(i34<0.0010934346355497837){
   if(i44<0.005452112294733524){
    s0+=52.0;
   } else {
    if(i33<0.0008023068075999618){
     s1+=120.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i44<0.016952428966760635){
    if(i69<0.0030297308694571257){
     s0+=545.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i34<0.004015925340354443){
     s1+=46.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i21<1.0082111358642578){
  if(i25<0.0003013138775713742){
   if(i16<1.0020453929901123){
    if(i58<0.0030414587818086147){
     s0+=53337.0;
     s1+=281.0;
    } else {
     s0+=10.0;
     s1+=14.0;
    }
   } else {
    if(i23<1.0002846717834473){
     s0+=11.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i19<1.0428826808929443){
    if(i65<2.4170560209313408e-05){
     s0+=2509.0;
     s1+=119.0;
    } else {
     s0+=3239.0;
    }
   } else {
    if(i25<0.0024935195688158274){
     s0+=3000.0;
     s1+=1446.0;
    } else {
     s0+=2574.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i28<1.2392117977142334){
   if(i35<0.0009869920322671533){
    if(i28<1.0821808576583862){
     s0+=33.0;
    } else {
     s0+=38.0;
     s1+=512.0;
    }
   } else {
    if(i7<-4.151021130383015e-05){
     s1+=15.0;
    } else {
     s0+=60.0;
     s1+=1.0;
    }
   }
  } else {
   if(i15<1.0160455703735352){
    s0+=198.0;
   } else {
    if(i10<5.9545040130615234e-05){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i28<1.4174593687057495){
  if(i2<0.08442854881286621){
   if(i23<1.0065457820892334){
    if(i9<1.0903667211532593){
     s0+=1679.0;
     s1+=573.0;
    } else {
     s0+=1981.0;
     s1+=69.0;
    }
   } else {
    if(i40<0.00013333559036254883){
     s0+=36.0;
     s1+=27.0;
    } else {
     s1+=260.0;
    }
   }
  } else {
   if(i1<0.00010463595390319824){
    if(i50<0.07540735602378845){
     s0+=333.0;
     s1+=796.0;
    } else {
     s0+=579.0;
     s1+=146.0;
    }
   } else {
    if(i7<-4.311542579671368e-05){
     s0+=16.0;
     s1+=2800.0;
    } else {
     s0+=211.0;
     s1+=416.0;
    }
   }
  }
 } else {
  if(i3<0.10031694173812866){
   if(i23<1.0016984939575195){
    if(i54<-0.004135340452194214){
     s0+=52.0;
     s1+=161.0;
    } else {
     s0+=1144.0;
     s1+=130.0;
    }
   } else {
    if(i33<0.004159144125878811){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=340.0;
    }
   }
  } else {
   if(i43<-7.709427336521912e-06){
    if(i32<1.2454195022583008){
     s0+=52.0;
     s1+=24.0;
    } else {
     s0+=85.0;
     s1+=8701.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
}
if(i9<1.0527000427246094){
 if(i3<0.07773017883300781){
  if(i60<-0.0010959804058074951){
   if(i1<0.0005543828010559082){
    if(i25<0.002272958867251873){
     s0+=2625.0;
     s1+=626.0;
    } else {
     s0+=2532.0;
     s1+=24.0;
    }
   } else {
    if(i53<0.004314327146857977){
     s0+=3.0;
     s1+=100.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<1.004440188407898){
    if(i19<1.048384666442871){
     s0+=53208.0;
     s1+=125.0;
    } else {
     s0+=5006.0;
     s1+=393.0;
    }
   } else {
    if(i42<1.1158488988876343){
     s0+=18.0;
     s1+=152.0;
    } else {
     s0+=264.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i12<0.99763023853302){
   if(i12<0.9933915734291077){
    s0+=157.0;
   } else {
    if(i3<0.09405583143234253){
     s0+=74.0;
     s1+=15.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i49<0.014511972665786743){
    if(i42<1.057462215423584){
     s0+=25.0;
    } else {
     s0+=44.0;
     s1+=651.0;
    }
   } else {
    if(i3<0.11015760898590088){
     s0+=59.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i20<1.00687575340271){
  if(i22<0.028304439038038254){
   if(i1<0.00021266937255859375){
    if(i7<-2.0041516108904034e-05){
     s0+=1164.0;
     s1+=567.0;
    } else {
     s0+=3666.0;
     s1+=314.0;
    }
   } else {
    if(i11<1.073185682296753){
     s0+=265.0;
     s1+=463.0;
    } else {
     s0+=427.0;
     s1+=225.0;
    }
   }
  } else {
   if(i7<-3.744032255781349e-06){
    if(i44<0.023936986923217773){
     s0+=381.0;
     s1+=814.0;
    } else {
     s0+=135.0;
     s1+=2917.0;
    }
   } else {
    if(i40<-0.00013133883476257324){
     s0+=414.0;
    } else {
     s0+=143.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i53<0.0008549353224225342){
   if(i59<0.9998810291290283){
    if(i10<0.0014307498931884766){
     s0+=50.0;
     s1+=58.0;
    } else {
     s1+=653.0;
    }
   } else {
    if(i13<1.024921178817749){
     s0+=328.0;
     s1+=9.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i17<0.0022366377525031567){
    if(i69<0.00011933712812606245){
     s0+=15.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=46.0;
    }
   } else {
    if(i59<1.0031672716140747){
     s1+=8713.0;
    } else {
     s0+=13.0;
     s1+=177.0;
    }
   }
  }
 }
}
if(i23<1.0038609504699707){
 if(i31<0.06219518184661865){
  if(i36<1.0598037242889404){
   if(i36<1.0557184219360352){
    s0+=42946.0;
   } else {
    if(i36<1.0559518337249756){
     s0+=9.0;
     s1+=44.0;
    } else {
     s0+=978.0;
     s1+=20.0;
    }
   }
  } else {
   if(i19<1.0486011505126953){
    if(i48<-0.0012616217136383057){
     s0+=310.0;
     s1+=108.0;
    } else {
     s0+=12486.0;
     s1+=180.0;
    }
   } else {
    if(i6<1.2934207916259766e-05){
     s0+=10610.0;
     s1+=1974.0;
    } else {
     s0+=741.0;
     s1+=1472.0;
    }
   }
  }
 } else {
  if(i7<-1.9299779523862526e-05){
   if(i44<0.025261729955673218){
    if(i3<0.10092419385910034){
     s0+=403.0;
     s1+=210.0;
    } else {
     s0+=199.0;
     s1+=671.0;
    }
   } else {
    if(i10<-0.0042816102504730225){
     s0+=62.0;
     s1+=19.0;
    } else {
     s0+=42.0;
     s1+=2026.0;
    }
   }
  } else {
   if(i14<2.384185791015625e-05){
    if(i5<0.21496817469596863){
     s0+=1370.0;
     s1+=179.0;
    } else {
     s0+=178.0;
     s1+=125.0;
    }
   } else {
    s1+=41.0;
   }
  }
 }
} else {
 if(i27<0.0001795695861801505){
  if(i2<0.06263920664787292){
   if(i5<0.05046495795249939){
    if(i43<-1.674504528637044e-05){
     s1+=1.0;
    } else {
     s0+=385.0;
    }
   } else {
    if(i37<0.016670972108840942){
     s1+=7.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i15<1.0054175853729248){
    if(i40<0.0004017055034637451){
     s0+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i61<0.9965139627456665){
     s0+=1.0;
    } else {
     s1+=67.0;
    }
   }
  }
 } else {
  if(i8<-0.0002719461917877197){
   s0+=88.0;
  } else {
   if(i53<0.0010571781313046813){
    if(i43<-1.4449860827880912e-05){
     s0+=5.0;
     s1+=850.0;
    } else {
     s0+=202.0;
     s1+=300.0;
    }
   } else {
    if(i15<0.8864089250564575){
     s0+=12.0;
     s1+=17.0;
    } else {
     s0+=43.0;
     s1+=8860.0;
    }
   }
  }
 }
}
if(i2<0.08504641056060791){
 if(i23<1.0052721500396729){
  if(i4<1.0024687051773071){
   if(i22<0.01703657954931259){
    if(i56<-0.0022396743297576904){
     s0+=2619.0;
     s1+=380.0;
    } else {
     s0+=56358.0;
     s1+=369.0;
    }
   } else {
    if(i6<-2.2113323211669922e-05){
     s0+=7618.0;
     s1+=278.0;
    } else {
     s0+=1839.0;
     s1+=1060.0;
    }
   }
  } else {
   if(i42<1.2160736322402954){
    if(i53<0.0006382339634001255){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=183.0;
    }
   } else {
    if(i69<0.0011438021901994944){
     s0+=152.0;
     s1+=4.0;
    } else {
     s0+=43.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i43<-1.3820774256600998e-05){
   if(i49<0.012438297271728516){
    if(i60<-0.021553993225097656){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=674.0;
    }
   } else {
    if(i20<1.00655198097229){
     s0+=7.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i42<1.0985562801361084){
    s1+=23.0;
   } else {
    if(i62<0.005117363296449184){
     s0+=356.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i6<9.238719940185547e-06){
  if(i22<0.02190525084733963){
   if(i33<0.0004603240522556007){
    if(i43<-5.672901806974551e-06){
     s1+=1.0;
    } else {
     s0+=333.0;
    }
   } else {
    if(i28<1.255998969078064){
     s0+=184.0;
     s1+=326.0;
    } else {
     s0+=381.0;
     s1+=83.0;
    }
   }
  } else {
   if(i55<0.9995659589767456){
    if(i16<0.9979962110519409){
     s0+=191.0;
    } else {
     s0+=14.0;
     s1+=60.0;
    }
   } else {
    if(i17<0.0016062806826084852){
     s0+=117.0;
     s1+=96.0;
    } else {
     s0+=160.0;
     s1+=1295.0;
    }
   }
  }
 } else {
  if(i17<0.003258203621953726){
   if(i66<-0.006788356229662895){
    if(i0<0.2786921262741089){
     s0+=239.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   } else {
    if(i54<0.007575780153274536){
     s0+=49.0;
     s1+=794.0;
    } else {
     s0+=27.0;
     s1+=15.0;
    }
   }
  } else {
   if(i0<0.13182389736175537){
    if(i54<0.004090458154678345){
     s0+=26.0;
     s1+=1431.0;
    } else {
     s0+=119.0;
     s1+=40.0;
    }
   } else {
    if(i0<0.1869303584098816){
     s0+=20.0;
     s1+=1573.0;
    } else {
     s1+=8514.0;
    }
   }
  }
 }
}
if(i13<1.0081918239593506){
 if(i1<0.0005737543106079102){
  if(i19<1.0486011505126953){
   if(i67<0.00026262286701239645){
    if(i47<0.05141764134168625){
     s0+=49838.0;
     s1+=83.0;
    } else {
     s0+=100.0;
     s1+=25.0;
    }
   } else {
    if(i38<0.0009275175398215652){
     s0+=1227.0;
     s1+=288.0;
    } else {
     s0+=4673.0;
     s1+=27.0;
    }
   }
  } else {
   if(i47<0.03548409789800644){
    if(i22<0.022620663046836853){
     s0+=8146.0;
     s1+=578.0;
    } else {
     s0+=402.0;
     s1+=357.0;
    }
   } else {
    if(i42<1.1823735237121582){
     s0+=765.0;
     s1+=1345.0;
    } else {
     s0+=4207.0;
     s1+=1072.0;
    }
   }
  }
 } else {
  if(i19<1.0409044027328491){
   if(i43<-1.621626506675966e-05){
    s1+=1.0;
   } else {
    s0+=113.0;
   }
  } else {
   if(i22<0.03790010139346123){
    if(i42<1.2527469396591187){
     s0+=20.0;
     s1+=462.0;
    } else {
     s0+=151.0;
     s1+=260.0;
    }
   } else {
    if(i3<0.037943750619888306){
     s0+=21.0;
     s1+=51.0;
    } else {
     s0+=6.0;
     s1+=1605.0;
    }
   }
  }
 }
} else {
 if(i13<1.0159121751785278){
  if(i4<1.0027024745941162){
   if(i36<1.1091103553771973){
    if(i6<-2.4110078811645508e-05){
     s0+=28.0;
    } else {
     s0+=52.0;
     s1+=573.0;
    }
   } else {
    if(i33<0.004913747776299715){
     s0+=859.0;
     s1+=211.0;
    } else {
     s0+=52.0;
     s1+=209.0;
    }
   }
  } else {
   if(i25<0.0001930308062583208){
    if(i34<0.0015082561876624823){
     s1+=17.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i39<0.0023938093800097704){
     s1+=728.0;
    } else {
     s0+=54.0;
     s1+=409.0;
    }
   }
  }
 } else {
  if(i0<0.08637303113937378){
   if(i6<6.240606307983398e-05){
    if(i36<1.1945602893829346){
     s0+=4.0;
     s1+=33.0;
    } else {
     s0+=124.0;
     s1+=3.0;
    }
   } else {
    if(i43<-1.4695903701067436e-05){
     s1+=142.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i32<1.274404764175415){
    if(i49<0.031323254108428955){
     s0+=48.0;
     s1+=1373.0;
    } else {
     s0+=90.0;
     s1+=119.0;
    }
   } else {
    if(i10<-0.0005940794944763184){
     s0+=17.0;
     s1+=191.0;
    } else {
     s0+=1.0;
     s1+=7052.0;
    }
   }
  }
 }
}
if(i2<0.08395597338676453){
 if(i50<-0.027514487504959106){
  if(i8<0.0004976391792297363){
   if(i5<0.022222906351089478){
    if(i41<0.9993007183074951){
     s0+=786.0;
     s1+=6.0;
    } else {
     s0+=1303.0;
     s1+=227.0;
    }
   } else {
    if(i46<0.009544849395751953){
     s0+=30.0;
     s1+=156.0;
    } else {
     s0+=382.0;
     s1+=141.0;
    }
   }
  } else {
   if(i60<0.001840829849243164){
    if(i1<0.0003046393394470215){
     s0+=42.0;
     s1+=45.0;
    } else {
     s0+=17.0;
     s1+=502.0;
    }
   } else {
    if(i0<0.05470651388168335){
     s0+=53.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i14<2.0563602447509766e-05){
   if(i3<0.0633929967880249){
    if(i25<0.00027511411462910473){
     s0+=49966.0;
     s1+=197.0;
    } else {
     s0+=12861.0;
     s1+=804.0;
    }
   } else {
    if(i42<1.2048285007476807){
     s0+=1602.0;
     s1+=522.0;
    } else {
     s0+=928.0;
     s1+=10.0;
    }
   }
  } else {
   if(i6<3.719329833984375e-05){
    if(i10<-0.0012779533863067627){
     s0+=536.0;
     s1+=8.0;
    } else {
     s0+=162.0;
     s1+=43.0;
    }
   } else {
    if(i61<1.0003204345703125){
     s0+=218.0;
     s1+=1.0;
    } else {
     s0+=136.0;
     s1+=443.0;
    }
   }
  }
 }
} else {
 if(i17<0.004687285050749779){
  if(i14<-1.4901161193847656e-05){
   if(i38<0.005568662658333778){
    if(i43<-1.0074065357912332e-05){
     s1+=1.0;
    } else {
     s0+=489.0;
     s1+=2.0;
    }
   } else {
    if(i11<1.0401077270507812){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   }
  } else {
   if(i54<0.004798412322998047){
    if(i49<0.020341306924819946){
     s0+=211.0;
     s1+=1924.0;
    } else {
     s0+=213.0;
     s1+=121.0;
    }
   } else {
    if(i7<-6.364765431499109e-05){
     s0+=4.0;
     s1+=65.0;
    } else {
     s0+=655.0;
     s1+=201.0;
    }
   }
  }
 } else {
  if(i16<0.9981839060783386){
   if(i40<-0.00011035799980163574){
    s0+=98.0;
   } else {
    if(i18<-0.00027614831924438477){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i10<-0.0021122097969055176){
    if(i3<0.10651475191116333){
     s0+=121.0;
     s1+=48.0;
    } else {
     s0+=17.0;
     s1+=456.0;
    }
   } else {
    if(i2<0.131519615650177){
     s0+=90.0;
     s1+=1520.0;
    } else {
     s0+=14.0;
     s1+=9794.0;
    }
   }
  }
 }
}
if(i0<0.08304375410079956){
 if(i9<1.0452215671539307){
  if(i4<1.0025532245635986){
   if(i56<-0.0020736753940582275){
    if(i23<0.9938538670539856){
     s0+=2703.0;
     s1+=31.0;
    } else {
     s0+=1756.0;
     s1+=452.0;
    }
   } else {
    if(i22<0.02210654877126217){
     s0+=54505.0;
     s1+=147.0;
    } else {
     s0+=3310.0;
     s1+=138.0;
    }
   }
  } else {
   if(i42<1.2062125205993652){
    s1+=126.0;
   } else {
    if(i53<0.0010647631715983152){
     s0+=65.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i65<-6.752902663720306e-06){
   if(i4<1.0041719675064087){
    if(i42<1.175731897354126){
     s1+=6.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i57<0.00012826159945689142){
     s1+=313.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.0655854344367981){
    if(i1<0.0004813671112060547){
     s0+=6057.0;
     s1+=787.0;
    } else {
     s0+=204.0;
     s1+=360.0;
    }
   } else {
    if(i62<-0.009373344480991364){
     s0+=526.0;
     s1+=62.0;
    } else {
     s0+=363.0;
     s1+=690.0;
    }
   }
  }
 }
} else {
 if(i17<0.004804733209311962){
  if(i63<0.0401364266872406){
   if(i4<0.996382474899292){
    if(i61<0.9980539083480835){
     s0+=143.0;
    } else {
     s0+=16.0;
     s1+=9.0;
    }
   } else {
    if(i62<-0.019154369831085205){
     s0+=233.0;
     s1+=164.0;
    } else {
     s0+=156.0;
     s1+=1864.0;
    }
   }
  } else {
   if(i10<0.0004272758960723877){
    if(i37<0.051800042390823364){
     s0+=11.0;
     s1+=26.0;
    } else {
     s0+=792.0;
     s1+=128.0;
    }
   } else {
    if(i25<0.006339580751955509){
     s0+=10.0;
     s1+=128.0;
    } else {
     s0+=37.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i43<1.7601347508389154e-06){
   if(i59<0.995513916015625){
    s0+=14.0;
   } else {
    if(i68<-0.0001013322762446478){
     s0+=58.0;
     s1+=10786.0;
    } else {
     s0+=125.0;
     s1+=809.0;
    }
   }
  } else {
   s0+=56.0;
  }
 }
}
if(i5<0.07237386703491211){
 if(i0<0.07821792364120483){
  if(i1<0.0006026923656463623){
   if(i19<1.0451585054397583){
    if(i49<-0.006691336631774902){
     s0+=667.0;
     s1+=87.0;
    } else {
     s0+=53148.0;
     s1+=141.0;
    }
   } else {
    if(i32<1.1037919521331787){
     s0+=3560.0;
     s1+=1314.0;
    } else {
     s0+=11005.0;
     s1+=393.0;
    }
   }
  } else {
   if(i51<0.003648697631433606){
    if(i38<0.0016836441354826093){
     s0+=47.0;
     s1+=86.0;
    } else {
     s0+=112.0;
     s1+=8.0;
    }
   } else {
    if(i48<0.002062082290649414){
     s0+=109.0;
     s1+=726.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i36<1.0670123100280762){
   if(i15<1.008937120437622){
    if(i71<3.84865197702311e-05){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=152.0;
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i6<-4.7266483306884766e-05){
    if(i47<0.05912134423851967){
     s0+=43.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i50<0.04343196749687195){
     s0+=40.0;
     s1+=1857.0;
    } else {
     s0+=38.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i4<1.0018031597137451){
  if(i3<0.11039593815803528){
   if(i48<0.003944694995880127){
    if(i17<0.004446187522262335){
     s0+=449.0;
     s1+=276.0;
    } else {
     s0+=43.0;
     s1+=322.0;
    }
   } else {
    if(i36<1.0755466222763062){
     s0+=12.0;
     s1+=12.0;
    } else {
     s0+=712.0;
     s1+=33.0;
    }
   }
  } else {
   if(i40<-0.00014024972915649414){
    if(i1<4.738569259643555e-06){
     s0+=253.0;
     s1+=5.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i39<0.008263319730758667){
     s0+=358.0;
     s1+=1008.0;
    } else {
     s0+=29.0;
     s1+=1014.0;
    }
   }
  }
 } else {
  if(i4<1.0039222240447998){
   if(i17<0.002921727951616049){
    if(i64<0.0003846113686449826){
     s0+=7.0;
     s1+=67.0;
    } else {
     s0+=57.0;
     s1+=12.0;
    }
   } else {
    if(i19<1.1334741115570068){
     s0+=78.0;
     s1+=393.0;
    } else {
     s0+=4.0;
     s1+=902.0;
    }
   }
  } else {
   if(i12<0.9963879585266113){
    if(i20<1.0137755870819092){
     s0+=5.0;
    } else {
     s1+=92.0;
    }
   } else {
    if(i64<0.00011246741632930934){
     s0+=5.0;
     s1+=85.0;
    } else {
     s0+=6.0;
     s1+=8358.0;
    }
   }
  }
 }
}
if(i16<1.0016424655914307){
 if(i19<1.0526776313781738){
  if(i56<-0.002239435911178589){
   if(i0<0.04329490661621094){
    if(i47<0.036175135523080826){
     s0+=490.0;
     s1+=102.0;
    } else {
     s0+=1165.0;
     s1+=25.0;
    }
   } else {
    if(i23<0.994864821434021){
     s0+=214.0;
     s1+=3.0;
    } else {
     s0+=46.0;
     s1+=137.0;
    }
   }
  } else {
   if(i8<0.00023680925369262695){
    if(i24<1.0119127035140991){
     s0+=53405.0;
     s1+=172.0;
    } else {
     s0+=6.0;
     s1+=17.0;
    }
   } else {
    if(i65<5.4868955885467585e-06){
     s0+=1790.0;
     s1+=6.0;
    } else {
     s0+=257.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i2<0.07991534471511841){
   if(i38<0.0011246243957430124){
    if(i24<0.9895807504653931){
     s0+=89.0;
     s1+=414.0;
    } else {
     s0+=2534.0;
     s1+=632.0;
    }
   } else {
    if(i3<0.06635239720344543){
     s0+=8134.0;
     s1+=232.0;
    } else {
     s0+=422.0;
     s1+=119.0;
    }
   }
  } else {
   if(i4<0.9965264797210693){
    if(i34<0.006161730736494064){
     s0+=455.0;
     s1+=19.0;
    } else {
     s0+=40.0;
     s1+=110.0;
    }
   } else {
    if(i2<0.11029812693595886){
     s0+=614.0;
     s1+=979.0;
    } else {
     s0+=444.0;
     s1+=3563.0;
    }
   }
  }
 }
} else {
 if(i4<1.002433180809021){
  if(i23<0.9994409084320068){
   if(i0<0.12335032224655151){
    if(i51<0.011657699942588806){
     s0+=821.0;
     s1+=47.0;
    } else {
     s0+=44.0;
     s1+=106.0;
    }
   } else {
    if(i22<0.0190623439848423){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=229.0;
    }
   }
  } else {
   if(i57<7.039452611934394e-06){
    s0+=61.0;
   } else {
    if(i22<0.011397505179047585){
     s0+=49.0;
     s1+=22.0;
    } else {
     s0+=20.0;
     s1+=239.0;
    }
   }
  }
 } else {
  if(i25<0.0001807858352549374){
   if(i43<-1.7448406651965342e-05){
    s1+=3.0;
   } else {
    s0+=41.0;
   }
  } else {
   if(i0<0.057599782943725586){
    if(i60<0.0017826259136199951){
     s0+=58.0;
     s1+=330.0;
    } else {
     s0+=32.0;
     s1+=2.0;
    }
   } else {
    if(i10<3.5643577575683594e-05){
     s0+=85.0;
     s1+=941.0;
    } else {
     s0+=10.0;
     s1+=8318.0;
    }
   }
  }
 }
}
if(i0<0.08468136191368103){
 if(i16<1.0018479824066162){
  if(i58<0.001539923483505845){
   if(i15<1.00714111328125){
    if(i45<0.05006072670221329){
     s0+=56121.0;
     s1+=309.0;
    } else {
     s0+=4725.0;
     s1+=431.0;
    }
   } else {
    if(i19<1.0731133222579956){
     s0+=389.0;
     s1+=315.0;
    } else {
     s0+=1270.0;
     s1+=69.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i19<1.0450081825256348){
     s0+=1154.0;
     s1+=69.0;
    } else {
     s0+=565.0;
     s1+=630.0;
    }
   } else {
    if(i42<1.1939998865127563){
     s0+=1004.0;
     s1+=226.0;
    } else {
     s0+=3784.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i1<0.0005737543106079102){
   if(i41<1.0015934705734253){
    if(i54<-0.002290487289428711){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=114.0;
     s1+=39.0;
    }
   } else {
    if(i18<-9.655952453613281e-05){
     s0+=502.0;
     s1+=16.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i36<1.1353518962860107){
    if(i57<0.00013343046884983778){
     s1+=515.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i51<0.012583181262016296){
     s0+=134.0;
     s1+=74.0;
    } else {
     s0+=15.0;
     s1+=286.0;
    }
   }
  }
 }
} else {
 if(i40<-0.00025263428688049316){
  if(i34<0.01992102712392807){
   if(i40<-0.00025960803031921387){
    s0+=351.0;
   } else {
    if(i40<-0.00025582313537597656){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s1+=52.0;
  }
 } else {
  if(i22<0.02648192271590233){
   if(i46<0.05979880690574646){
    if(i46<0.05816686153411865){
     s0+=29.0;
     s1+=2457.0;
    } else {
     s0+=19.0;
     s1+=75.0;
    }
   } else {
    if(i3<0.12521108984947205){
     s0+=601.0;
     s1+=230.0;
    } else {
     s0+=216.0;
     s1+=813.0;
    }
   }
  } else {
   if(i42<1.3005231618881226){
    if(i1<0.0007255077362060547){
     s0+=215.0;
     s1+=1484.0;
    } else {
     s0+=7.0;
     s1+=1105.0;
    }
   } else {
    if(i9<1.076429843902588){
     s0+=36.0;
     s1+=219.0;
    } else {
     s0+=4.0;
     s1+=7380.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i0<0.08198222517967224){
  if(i8<0.0005856752395629883){
   if(i69<0.0006678648060187697){
    if(i47<0.02985234558582306){
     s0+=54839.0;
     s1+=226.0;
    } else {
     s0+=2640.0;
     s1+=276.0;
    }
   } else {
    if(i34<0.0008630226366221905){
     s0+=1489.0;
     s1+=636.0;
    } else {
     s0+=5725.0;
     s1+=149.0;
    }
   }
  } else {
   if(i20<1.000375509262085){
    if(i6<5.0008296966552734e-05){
     s0+=362.0;
     s1+=59.0;
    } else {
     s0+=17.0;
     s1+=105.0;
    }
   } else {
    if(i71<0.0004045295645482838){
     s1+=210.0;
    } else {
     s0+=25.0;
    }
   }
  }
 } else {
  if(i12<0.9964792728424072){
   if(i7<-2.68249204964377e-05){
    if(i16<0.9953781962394714){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   } else {
    if(i21<0.9403420090675354){
     s1+=2.0;
    } else {
     s0+=126.0;
     s1+=2.0;
    }
   }
  } else {
   if(i36<1.0543125867843628){
    s0+=23.0;
   } else {
    if(i48<0.004956871271133423){
     s0+=46.0;
     s1+=1055.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i3<0.09230038523674011){
  if(i6<3.463029861450195e-05){
   if(i32<1.1037919521331787){
    if(i1<0.00014346837997436523){
     s0+=1011.0;
     s1+=381.0;
    } else {
     s0+=101.0;
     s1+=302.0;
    }
   } else {
    if(i44<0.048560164868831635){
     s0+=3459.0;
     s1+=275.0;
    } else {
     s0+=11.0;
     s1+=49.0;
    }
   }
  } else {
   if(i36<1.2007768154144287){
    if(i59<1.0020873546600342){
     s0+=12.0;
     s1+=877.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   } else {
    if(i49<-0.005463987588882446){
     s0+=37.0;
     s1+=208.0;
    } else {
     s0+=171.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i7<-1.3823004337609746e-05){
   if(i44<0.02340644784271717){
    if(i27<0.0014783593360334635){
     s0+=53.0;
     s1+=1751.0;
    } else {
     s0+=313.0;
     s1+=736.0;
    }
   } else {
    if(i53<0.00023208055063150823){
     s0+=14.0;
     s1+=25.0;
    } else {
     s0+=40.0;
     s1+=9481.0;
    }
   }
  } else {
   if(i33<0.0017783655785024166){
    if(i9<1.0806031227111816){
     s0+=67.0;
     s1+=35.0;
    } else {
     s0+=480.0;
     s1+=9.0;
    }
   } else {
    if(i46<0.07208240032196045){
     s0+=1.0;
     s1+=73.0;
    } else {
     s0+=83.0;
     s1+=84.0;
    }
   }
  }
 }
}
if(i13<1.0082976818084717){
 if(i11<1.0452215671539307){
  if(i1<0.0006743371486663818){
   if(i2<0.08320659399032593){
    if(i19<1.0451585054397583){
     s0+=53974.0;
     s1+=246.0;
    } else {
     s0+=10375.0;
     s1+=1028.0;
    }
   } else {
    if(i16<0.9985061883926392){
     s0+=341.0;
     s1+=13.0;
    } else {
     s0+=152.0;
     s1+=536.0;
    }
   }
  } else {
   if(i32<1.0657644271850586){
    s0+=26.0;
   } else {
    if(i55<1.0007681846618652){
     s0+=18.0;
     s1+=414.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i0<0.093345046043396){
   if(i22<0.017030425369739532){
    if(i16<1.0030491352081299){
     s0+=2745.0;
     s1+=181.0;
    } else {
     s0+=25.0;
     s1+=35.0;
    }
   } else {
    if(i39<0.002048022113740444){
     s0+=245.0;
     s1+=493.0;
    } else {
     s0+=965.0;
     s1+=356.0;
    }
   }
  } else {
   if(i17<0.004636975470930338){
    if(i37<0.06539100408554077){
     s0+=81.0;
     s1+=409.0;
    } else {
     s0+=551.0;
     s1+=86.0;
    }
   } else {
    if(i63<0.04234194755554199){
     s0+=20.0;
     s1+=2000.0;
    } else {
     s0+=81.0;
     s1+=386.0;
    }
   }
  }
 }
} else {
 if(i6<3.6776065826416016e-05){
  if(i64<0.0005776783218607306){
   if(i0<0.09592688083648682){
    if(i28<1.1108002662658691){
     s0+=59.0;
     s1+=185.0;
    } else {
     s0+=712.0;
     s1+=32.0;
    }
   } else {
    if(i29<1.1283799409866333){
     s0+=79.0;
     s1+=791.0;
    } else {
     s0+=219.0;
     s1+=165.0;
    }
   }
  } else {
   if(i3<0.020990431308746338){
    s0+=29.0;
   } else {
    if(i17<0.0034041069447994232){
     s0+=12.0;
    } else {
     s0+=6.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i3<0.05853426456451416){
   if(i10<0.0013999342918395996){
    if(i39<0.0015623378567397594){
     s1+=46.0;
    } else {
     s0+=92.0;
     s1+=15.0;
    }
   } else {
    if(i58<-0.00012045691255480051){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=254.0;
    }
   }
  } else {
   if(i43<-1.1564838132471777e-05){
    if(i7<-4.725661710835993e-05){
     s0+=48.0;
     s1+=8849.0;
    } else {
     s0+=30.0;
     s1+=105.0;
    }
   } else {
    if(i41<1.0001271963119507){
     s1+=58.0;
    } else {
     s0+=30.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i9<1.0452215671539307){
  if(i6<4.5359134674072266e-05){
   if(i0<0.08222886919975281){
    if(i32<1.0717806816101074){
     s0+=36319.0;
     s1+=7.0;
    } else {
     s0+=25439.0;
     s1+=746.0;
    }
   } else {
    if(i61<0.995842456817627){
     s0+=81.0;
    } else {
     s0+=127.0;
     s1+=250.0;
    }
   }
  } else {
   if(i34<0.0006054994883015752){
    s0+=184.0;
   } else {
    if(i43<-1.376196087221615e-05){
     s0+=8.0;
     s1+=169.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<0.0754287838935852){
   if(i7<-6.979744648560882e-05){
    if(i49<0.0025839805603027344){
     s0+=138.0;
     s1+=292.0;
    } else {
     s0+=123.0;
     s1+=20.0;
    }
   } else {
    if(i13<0.9947383403778076){
     s0+=1081.0;
     s1+=417.0;
    } else {
     s0+=4940.0;
     s1+=463.0;
    }
   }
  } else {
   if(i12<1.000789999961853){
    if(i40<-0.00014218688011169434){
     s0+=329.0;
     s1+=1.0;
    } else {
     s0+=715.0;
     s1+=1135.0;
    }
   } else {
    if(i18<-0.00013723969459533691){
     s0+=136.0;
     s1+=642.0;
    } else {
     s0+=45.0;
     s1+=1793.0;
    }
   }
  }
 }
} else {
 if(i7<-4.32968299719505e-05){
  if(i2<0.061208575963974){
   if(i28<1.2392117977142334){
    s1+=169.0;
   } else {
    if(i52<1.0007872581481934){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=45.0;
     s1+=3.0;
    }
   }
  } else {
   if(i16<0.998400866985321){
    s0+=3.0;
   } else {
    if(i19<1.1222221851348877){
     s0+=49.0;
     s1+=2457.0;
    } else {
     s0+=8.0;
     s1+=7775.0;
    }
   }
  }
 } else {
  if(i53<0.001996699720621109){
   if(i34<0.00382419116795063){
    if(i42<1.1413683891296387){
     s0+=137.0;
     s1+=246.0;
    } else {
     s0+=883.0;
     s1+=26.0;
    }
   } else {
    if(i3<0.18733102083206177){
     s0+=221.0;
     s1+=44.0;
    } else {
     s0+=21.0;
     s1+=269.0;
    }
   }
  } else {
   if(i26<0.9693437814712524){
    s0+=2.0;
   } else {
    if(i59<1.0032542943954468){
     s1+=219.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i9<1.052894115447998){
 if(i4<1.0025343894958496){
  if(i69<0.0007239399710670114){
   if(i45<0.04784342274069786){
    if(i13<1.0095566511154175){
     s0+=54591.0;
     s1+=379.0;
    } else {
     s0+=15.0;
     s1+=91.0;
    }
   } else {
    if(i19<1.0483686923980713){
     s0+=2331.0;
     s1+=52.0;
    } else {
     s0+=963.0;
     s1+=353.0;
    }
   }
  } else {
   if(i42<1.1823735237121582){
    if(i42<1.0670123100280762){
     s0+=1491.0;
     s1+=5.0;
    } else {
     s0+=693.0;
     s1+=746.0;
    }
   } else {
    if(i53<0.007243629079312086){
     s0+=3994.0;
     s1+=108.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i8<0.0005838274955749512){
   if(i17<0.0016696009552106261){
    if(i38<0.0012584676733240485){
     s1+=6.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i28<1.2392117977142334){
     s1+=71.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i57<0.0002793347812257707){
    s1+=253.0;
   } else {
    if(i71<0.00020466739078983665){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i10<0.0007393956184387207){
  if(i12<1.0025380849838257){
   if(i3<0.09202465415000916){
    if(i42<1.103413462638855){
     s0+=1063.0;
     s1+=606.0;
    } else {
     s0+=4156.0;
     s1+=361.0;
    }
   } else {
    if(i43<2.3301370219996898e-06){
     s0+=656.0;
     s1+=1900.0;
    } else {
     s0+=235.0;
     s1+=26.0;
    }
   }
  } else {
   if(i2<0.11489874124526978){
    if(i54<0.003267258405685425){
     s0+=287.0;
     s1+=549.0;
    } else {
     s0+=208.0;
     s1+=8.0;
    }
   } else {
    if(i54<0.007462739944458008){
     s0+=3.0;
     s1+=1241.0;
    } else {
     s0+=58.0;
     s1+=496.0;
    }
   }
  }
 } else {
  if(i27<0.0001690933422651142){
   if(i3<0.05282682180404663){
    s0+=42.0;
   } else {
    if(i42<1.3224992752075195){
     s1+=22.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i0<0.06425371766090393){
    if(i28<1.1386182308197021){
     s1+=167.0;
    } else {
     s0+=150.0;
     s1+=47.0;
    }
   } else {
    if(i38<0.00036101878504268825){
     s0+=3.0;
    } else {
     s0+=75.0;
     s1+=9648.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i3<0.08070683479309082){
  if(i6<3.93986701965332e-05){
   if(i19<1.0451585054397583){
    if(i56<-0.002398967742919922){
     s0+=1484.0;
     s1+=105.0;
    } else {
     s0+=52590.0;
     s1+=94.0;
    }
   } else {
    if(i36<1.1034480333328247){
     s0+=4222.0;
     s1+=988.0;
    } else {
     s0+=6501.0;
     s1+=190.0;
    }
   }
  } else {
   if(i17<0.0037148348055779934){
    if(i12<1.0053696632385254){
     s0+=312.0;
     s1+=17.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i12<0.9973018169403076){
     s0+=3.0;
    } else {
     s0+=11.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i16<0.9980460405349731){
   s0+=112.0;
  } else {
   if(i59<1.0011645555496216){
    if(i19<1.0450022220611572){
     s0+=11.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=811.0;
    }
   } else {
    if(i4<0.9985010623931885){
     s0+=76.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i22<0.023314140737056732){
  if(i7<-4.224119402351789e-05){
   if(i30<1.0049288272857666){
    if(i23<1.002176284790039){
     s0+=434.0;
     s1+=142.0;
    } else {
     s0+=42.0;
     s1+=155.0;
    }
   } else {
    if(i1<-0.00012430548667907715){
     s0+=23.0;
     s1+=16.0;
    } else {
     s0+=34.0;
     s1+=2442.0;
    }
   }
  } else {
   if(i7<-1.8718079445534386e-05){
    if(i32<1.1423697471618652){
     s0+=38.0;
     s1+=356.0;
    } else {
     s0+=829.0;
     s1+=111.0;
    }
   } else {
    if(i41<1.000701665878296){
     s0+=2842.0;
     s1+=126.0;
    } else {
     s0+=118.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i10<-0.0005375444889068604){
   if(i14<-1.2695789337158203e-05){
    if(i59<0.9998961687088013){
     s0+=407.0;
    } else {
     s0+=9.0;
     s1+=32.0;
    }
   } else {
    if(i33<0.000522534130141139){
     s0+=93.0;
     s1+=3.0;
    } else {
     s0+=478.0;
     s1+=1791.0;
    }
   }
  } else {
   if(i7<-2.5090124836424366e-05){
    if(i2<0.06564116477966309){
     s0+=58.0;
     s1+=139.0;
    } else {
     s0+=54.0;
     s1+=8917.0;
    }
   } else {
    if(i36<1.2549132108688354){
     s0+=143.0;
     s1+=243.0;
    } else {
     s0+=119.0;
    }
   }
  }
 }
}
if(i5<0.07105270028114319){
 if(i20<1.0060536861419678){
  if(i1<0.0006017386913299561){
   if(i19<1.0485899448394775){
    if(i56<-0.0023250579833984375){
     s0+=1655.0;
     s1+=231.0;
    } else {
     s0+=53937.0;
     s1+=162.0;
    }
   } else {
    if(i33<0.001432896126061678){
     s0+=5299.0;
     s1+=1682.0;
    } else {
     s0+=7268.0;
     s1+=355.0;
    }
   }
  } else {
   if(i44<0.0069327587261796){
    if(i49<-0.011422574520111084){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=101.0;
    }
   } else {
    if(i50<0.03916436433792114){
     s0+=70.0;
     s1+=520.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i36<1.1514184474945068){
   if(i19<1.0476430654525757){
    s0+=20.0;
   } else {
    if(i51<-0.0010225155856460333){
     s0+=3.0;
     s1+=33.0;
    } else {
     s0+=3.0;
     s1+=1182.0;
    }
   }
  } else {
   if(i4<1.0044174194335938){
    if(i53<0.0021042567677795887){
     s0+=608.0;
     s1+=9.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=472.0;
   }
  }
 }
} else {
 if(i7<-2.3336571757681668e-05){
  if(i10<-5.441904067993164e-05){
   if(i45<0.24433325231075287){
    if(i22<0.026155414059758186){
     s0+=297.0;
     s1+=244.0;
    } else {
     s0+=105.0;
     s1+=729.0;
    }
   } else {
    if(i44<0.0228617861866951){
     s0+=79.0;
     s1+=176.0;
    } else {
     s0+=21.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i8<-0.00038424134254455566){
    s0+=36.0;
   } else {
    if(i3<0.08186069130897522){
     s0+=39.0;
     s1+=92.0;
    } else {
     s0+=76.0;
     s1+=9474.0;
    }
   }
  }
 } else {
  if(i16<0.9985312223434448){
   if(i23<0.9761062860488892){
    if(i46<0.03307589888572693){
     s1+=1.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i59<0.9999788999557495){
     s0+=425.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   }
  } else {
   if(i52<1.000831127166748){
    if(i7<1.3249308722151909e-05){
     s0+=51.0;
     s1+=249.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   } else {
    if(i17<0.0035456386394798756){
     s0+=820.0;
     s1+=194.0;
    } else {
     s0+=42.0;
     s1+=157.0;
    }
   }
  }
 }
}
if(i1<0.0005475878715515137){
 if(i0<0.08385172486305237){
  if(i58<0.001573073910549283){
   if(i15<1.006689190864563){
    if(i22<0.015742944553494453){
     s0+=53566.0;
     s1+=202.0;
    } else {
     s0+=7132.0;
     s1+=488.0;
    }
   } else {
    if(i32<1.1040980815887451){
     s0+=541.0;
     s1+=327.0;
    } else {
     s0+=1284.0;
     s1+=40.0;
    }
   }
  } else {
   if(i32<1.1037919521331787){
    if(i33<0.0004303550813347101){
     s0+=1326.0;
     s1+=52.0;
    } else {
     s0+=305.0;
     s1+=606.0;
    }
   } else {
    if(i0<0.05873209238052368){
     s0+=4413.0;
     s1+=208.0;
    } else {
     s0+=350.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i7<-1.3807219147565775e-05){
   if(i55<1.0003736019134521){
    if(i28<1.2604451179504395){
     s0+=50.0;
     s1+=1724.0;
    } else {
     s0+=339.0;
     s1+=1316.0;
    }
   } else {
    if(i63<0.020743608474731445){
     s0+=9.0;
     s1+=68.0;
    } else {
     s0+=134.0;
     s1+=14.0;
    }
   }
  } else {
   if(i46<0.05752962827682495){
    if(i4<0.9940832853317261){
     s0+=67.0;
    } else {
     s0+=13.0;
     s1+=196.0;
    }
   } else {
    if(i22<0.026804642751812935){
     s0+=558.0;
     s1+=35.0;
    } else {
     s0+=315.0;
     s1+=111.0;
    }
   }
  }
 }
} else {
 if(i32<1.0795294046401978){
  s0+=198.0;
 } else {
  if(i4<1.0041773319244385){
   if(i25<0.00017990896594710648){
    if(i65<1.3011760984227294e-06){
     s0+=55.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i5<0.12421751022338867){
     s0+=299.0;
     s1+=966.0;
    } else {
     s0+=13.0;
     s1+=1076.0;
    }
   }
  } else {
   if(i5<0.004015713930130005){
    if(i54<-0.0038521885871887207){
     s0+=1.0;
     s1+=61.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i44<0.01686345785856247){
     s0+=36.0;
     s1+=1657.0;
    } else {
     s1+=7946.0;
    }
   }
  }
 }
}
if(i18<0.00011473894119262695){
 if(i6<3.820657730102539e-05){
  if(i35<0.0003976932493969798){
   if(i9<1.049499273300171){
    if(i13<1.0078521966934204){
     s0+=48467.0;
     s1+=155.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   } else {
    if(i7<-2.481777482898906e-05){
     s0+=11.0;
     s1+=90.0;
    } else {
     s0+=500.0;
     s1+=12.0;
    }
   }
  } else {
   if(i0<0.08341947197914124){
    if(i38<0.0010662912391126156){
     s0+=3975.0;
     s1+=1200.0;
    } else {
     s0+=15356.0;
     s1+=501.0;
    }
   } else {
    if(i16<0.9980583190917969){
     s0+=394.0;
     s1+=9.0;
    } else {
     s0+=1046.0;
     s1+=2866.0;
    }
   }
  }
 } else {
  if(i42<1.0646642446517944){
   s0+=128.0;
  } else {
   if(i44<0.023333603516221046){
    if(i48<0.0026490092277526855){
     s0+=110.0;
     s1+=438.0;
    } else {
     s0+=168.0;
     s1+=86.0;
    }
   } else {
    if(i2<0.06934654712677002){
     s0+=6.0;
     s1+=121.0;
    } else {
     s1+=1754.0;
    }
   }
  }
 }
} else {
 if(i9<1.0385410785675049){
  if(i16<1.0020654201507568){
   if(i21<1.007462739944458){
    if(i5<0.0014183521270751953){
     s1+=3.0;
    } else {
     s0+=477.0;
     s1+=3.0;
    }
   } else {
    if(i14<1.5854835510253906e-05){
     s1+=12.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   s1+=19.0;
  }
 } else {
  if(i0<0.0647607147693634){
   if(i8<0.0005323886871337891){
    if(i33<0.0008300044573843479){
     s0+=2.0;
     s1+=72.0;
    } else {
     s0+=273.0;
     s1+=3.0;
    }
   } else {
    s1+=195.0;
   }
  } else {
   if(i36<1.0569010972976685){
    s0+=12.0;
   } else {
    if(i6<-1.4781951904296875e-05){
     s0+=4.0;
    } else {
     s0+=55.0;
     s1+=9688.0;
    }
   }
  }
 }
}
if(i24<1.0107624530792236){
 if(i0<0.08225265145301819){
  if(i4<1.0024782419204712){
   if(i27<0.00031619376386515796){
    if(i34<0.00029554282082244754){
     s0+=34609.0;
    } else {
     s0+=22489.0;
     s1+=500.0;
    }
   } else {
    if(i42<1.185624122619629){
     s0+=3868.0;
     s1+=1092.0;
    } else {
     s0+=6979.0;
     s1+=260.0;
    }
   }
  } else {
   if(i53<0.0006713980110362172){
    if(i14<3.629922866821289e-05){
     s0+=70.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i49<0.006916224956512451){
     s0+=60.0;
     s1+=777.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i28<1.0840110778808594){
   s0+=191.0;
  } else {
   if(i46<0.06067666411399841){
    if(i8<-0.0004863440990447998){
     s0+=12.0;
    } else {
     s0+=46.0;
     s1+=2805.0;
    }
   } else {
    if(i7<-9.960448551282752e-06){
     s0+=261.0;
     s1+=910.0;
    } else {
     s0+=407.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i18<9.649991989135742e-05){
  if(i17<0.003636268898844719){
   if(i56<0.005936354398727417){
    if(i19<1.0722787380218506){
     s0+=58.0;
     s1+=110.0;
    } else {
     s0+=429.0;
     s1+=123.0;
    }
   } else {
    if(i3<0.23275864124298096){
     s0+=980.0;
     s1+=36.0;
    } else {
     s0+=47.0;
     s1+=52.0;
    }
   }
  } else {
   if(i41<0.9989327788352966){
    if(i1<-0.00020715594291687012){
     s0+=153.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=94.0;
     s1+=1659.0;
    } else {
     s0+=121.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i53<0.001020491006784141){
   if(i18<0.0002148151397705078){
    if(i39<0.0027305828407406807){
     s0+=7.0;
     s1+=179.0;
    } else {
     s0+=170.0;
     s1+=28.0;
    }
   } else {
    s1+=779.0;
   }
  } else {
   if(i8<-0.0003503561019897461){
    s0+=17.0;
   } else {
    if(i1<0.0006541013717651367){
     s0+=14.0;
     s1+=404.0;
    } else {
     s1+=7181.0;
    }
   }
  }
 }
}
if(i0<0.08225274085998535){
 if(i6<4.184246063232422e-05){
  if(i45<0.046241093426942825){
   if(i7<-3.899728471878916e-05){
    if(i21<1.0075492858886719){
     s0+=591.0;
     s1+=66.0;
    } else {
     s0+=51.0;
     s1+=130.0;
    }
   } else {
    if(i60<-0.002607882022857666){
     s0+=76.0;
     s1+=138.0;
    } else {
     s0+=55565.0;
     s1+=418.0;
    }
   }
  } else {
   if(i20<0.9872568249702454){
    if(i64<0.0022421889007091522){
     s0+=6246.0;
     s1+=118.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i67<0.00040312233613803983){
     s0+=5348.0;
     s1+=700.0;
    } else {
     s0+=840.0;
     s1+=580.0;
    }
   }
  }
 } else {
  if(i23<1.0040078163146973){
   if(i17<0.004411947447806597){
    s0+=319.0;
   } else {
    if(i48<0.001288771629333496){
     s0+=47.0;
     s1+=255.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   if(i70<-4.842394446313847e-06){
    if(i27<0.00011773777077905834){
     s0+=3.0;
    } else {
     s0+=14.0;
     s1+=661.0;
    }
   } else {
    if(i49<-0.005300253629684448){
     s1+=17.0;
    } else {
     s0+=54.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i7<-1.4285240467870608e-05){
  if(i7<-4.369633097667247e-05){
   if(i36<1.0545824766159058){
    s0+=15.0;
   } else {
    if(i3<0.10588940978050232){
     s0+=161.0;
     s1+=1225.0;
    } else {
     s0+=57.0;
     s1+=11209.0;
    }
   }
  } else {
   if(i49<0.01746809482574463){
    if(i46<0.05918702483177185){
     s0+=6.0;
     s1+=834.0;
    } else {
     s0+=121.0;
     s1+=279.0;
    }
   } else {
    if(i22<0.04500138387084007){
     s0+=254.0;
     s1+=126.0;
    } else {
     s0+=19.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i41<0.9993171095848083){
   if(i4<0.9961928129196167){
    s0+=395.0;
   } else {
    if(i18<-0.0001696944236755371){
     s1+=2.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i49<0.010640174150466919){
    if(i33<0.0005097823450341821){
     s0+=67.0;
     s1+=15.0;
    } else {
     s0+=85.0;
     s1+=313.0;
    }
   } else {
    if(i0<0.2583838105201721){
     s0+=458.0;
     s1+=57.0;
    } else {
     s0+=21.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i2<0.08509460091590881){
 if(i11<1.0401476621627808){
  if(i23<1.0044726133346558){
   if(i49<-0.0058526694774627686){
    if(i1<0.00045752525329589844){
     s0+=2830.0;
     s1+=469.0;
    } else {
     s0+=12.0;
     s1+=76.0;
    }
   } else {
    if(i0<0.07103279232978821){
     s0+=58941.0;
     s1+=474.0;
    } else {
     s0+=773.0;
     s1+=175.0;
    }
   }
  } else {
   if(i70<-4.839399480260909e-06){
    if(i62<-0.009950648061931133){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=203.0;
    }
   } else {
    if(i36<1.0750343799591064){
     s1+=2.0;
    } else {
     s0+=355.0;
    }
   }
  }
 } else {
  if(i30<1.0046682357788086){
   if(i12<1.0007612705230713){
    if(i22<0.02225179225206375){
     s0+=3777.0;
     s1+=199.0;
    } else {
     s0+=753.0;
     s1+=297.0;
    }
   } else {
    if(i58<0.0036630777176469564){
     s0+=651.0;
     s1+=175.0;
    } else {
     s0+=36.0;
     s1+=260.0;
    }
   }
  } else {
   if(i33<0.0007434815634042025){
    if(i53<0.00048602186143398285){
     s0+=293.0;
     s1+=111.0;
    } else {
     s0+=3.0;
     s1+=501.0;
    }
   } else {
    if(i7<-6.015249164192937e-05){
     s0+=26.0;
     s1+=190.0;
    } else {
     s0+=767.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i18<5.8144330978393555e-05){
  if(i41<0.9992965459823608){
   if(i33<0.0016452708514407277){
    if(i4<0.9961928129196167){
     s0+=515.0;
    } else {
     s0+=46.0;
     s1+=3.0;
    }
   } else {
    if(i11<1.0352832078933716){
     s0+=28.0;
    } else {
     s0+=10.0;
     s1+=31.0;
    }
   }
  } else {
   if(i64<0.00022186205023899674){
    if(i49<0.01335802674293518){
     s0+=114.0;
     s1+=416.0;
    } else {
     s0+=412.0;
     s1+=99.0;
    }
   } else {
    if(i0<0.11707967519760132){
     s0+=523.0;
     s1+=693.0;
    } else {
     s0+=141.0;
     s1+=2598.0;
    }
   }
  }
 } else {
  if(i7<-2.23277929762844e-05){
   if(i8<-0.0003827810287475586){
    s0+=20.0;
   } else {
    if(i4<1.0038797855377197){
     s0+=68.0;
     s1+=1439.0;
    } else {
     s1+=8626.0;
    }
   }
  } else {
   if(i25<0.01417761854827404){
    if(i5<0.06111523509025574){
     s1+=1.0;
    } else {
     s0+=76.0;
     s1+=1.0;
    }
   } else {
    s1+=9.0;
   }
  }
 }
}
if(i2<0.08513569831848145){
 if(i2<0.06982091069221497){
  if(i51<0.008207226172089577){
   if(i60<-0.0011033415794372559){
    if(i32<1.197464108467102){
     s0+=1832.0;
     s1+=502.0;
    } else {
     s0+=3072.0;
     s1+=41.0;
    }
   } else {
    if(i11<1.0409057140350342){
     s0+=55728.0;
     s1+=289.0;
    } else {
     s0+=3290.0;
     s1+=296.0;
    }
   }
  } else {
   if(i1<0.0002968311309814453){
    if(i61<1.0003608465194702){
     s0+=2057.0;
     s1+=264.0;
    } else {
     s0+=582.0;
     s1+=268.0;
    }
   } else {
    if(i69<-0.00013062974903732538){
     s0+=34.0;
     s1+=9.0;
    } else {
     s0+=68.0;
     s1+=497.0;
    }
   }
  }
 } else {
  if(i6<3.886222839355469e-05){
   if(i50<0.004211455583572388){
    if(i36<1.1475300788879395){
     s0+=97.0;
     s1+=283.0;
    } else {
     s0+=148.0;
     s1+=38.0;
    }
   } else {
    if(i46<0.03348681330680847){
     s0+=22.0;
     s1+=116.0;
    } else {
     s0+=2209.0;
     s1+=131.0;
    }
   }
  } else {
   if(i63<0.02523016929626465){
    if(i49<0.012367010116577148){
     s0+=8.0;
     s1+=415.0;
    } else {
     s0+=25.0;
     s1+=3.0;
    }
   } else {
    if(i51<0.00389395235106349){
     s0+=34.0;
     s1+=10.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i4<0.9965493679046631){
  if(i64<0.0016688915202394128){
   if(i40<-0.00013998150825500488){
    s0+=630.0;
   } else {
    if(i19<1.0720034837722778){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=35.0;
     s1+=58.0;
    }
   }
  } else {
   if(i5<0.09010720252990723){
    s0+=5.0;
   } else {
    s1+=85.0;
   }
  }
 } else {
  if(i18<0.0001125335693359375){
   if(i38<0.00617504958063364){
    if(i64<0.0002474907087162137){
     s0+=547.0;
     s1+=542.0;
    } else {
     s0+=503.0;
     s1+=1742.0;
    }
   } else {
    if(i19<1.0819685459136963){
     s0+=36.0;
     s1+=13.0;
    } else {
     s0+=73.0;
     s1+=2122.0;
    }
   }
  } else {
   if(i32<1.0634281635284424){
    s0+=2.0;
   } else {
    if(i4<1.003757119178772){
     s0+=29.0;
     s1+=973.0;
    } else {
     s1+=8407.0;
    }
   }
  }
 }
}
if(i5<0.07183805108070374){
 if(i16<1.0018908977508545){
  if(i22<0.017081189900636673){
   if(i10<0.0011508762836456299){
    if(i3<0.07751694321632385){
     s0+=59457.0;
     s1+=779.0;
    } else {
     s0+=95.0;
     s1+=131.0;
    }
   } else {
    if(i8<0.0002849698066711426){
     s0+=2.0;
     s1+=184.0;
    } else {
     s0+=37.0;
     s1+=27.0;
    }
   }
  } else {
   if(i32<1.2048285007476807){
    if(i32<1.0724589824676514){
     s0+=1072.0;
     s1+=5.0;
    } else {
     s0+=1046.0;
     s1+=1459.0;
    }
   } else {
    if(i0<0.08435139060020447){
     s0+=6919.0;
     s1+=198.0;
    } else {
     s0+=6.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i30<1.0043821334838867){
   if(i50<-0.0503501296043396){
    if(i26<0.9503774642944336){
     s0+=14.0;
     s1+=43.0;
    } else {
     s0+=6.0;
     s1+=185.0;
    }
   } else {
    if(i57<0.00014157150872051716){
     s0+=119.0;
     s1+=252.0;
    } else {
     s0+=476.0;
     s1+=25.0;
    }
   }
  } else {
   if(i57<6.541328912135214e-05){
    if(i53<0.0004213415668345988){
     s0+=7.0;
     s1+=4.0;
    } else {
     s1+=1158.0;
    }
   } else {
    if(i43<-3.1190567824523896e-05){
     s1+=77.0;
    } else {
     s0+=34.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015974044799805){
  if(i63<0.024377524852752686){
   if(i7<-1.3664545804203954e-05){
    if(i3<0.09520316123962402){
     s0+=104.0;
     s1+=244.0;
    } else {
     s0+=33.0;
     s1+=1144.0;
    }
   } else {
    if(i37<0.03830668330192566){
     s0+=17.0;
     s1+=74.0;
    } else {
     s0+=210.0;
     s1+=36.0;
    }
   }
  } else {
   if(i39<0.01048558484762907){
    if(i50<0.06641218066215515){
     s0+=527.0;
     s1+=501.0;
    } else {
     s0+=902.0;
     s1+=223.0;
    }
   } else {
    if(i2<0.11675146222114563){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i44<0.018105944618582726){
   if(i18<3.129243850708008e-05){
    if(i52<1.0084187984466553){
     s0+=11.0;
     s1+=65.0;
    } else {
     s0+=139.0;
     s1+=37.0;
    }
   } else {
    if(i50<0.11202514171600342){
     s0+=39.0;
     s1+=1204.0;
    } else {
     s0+=27.0;
     s1+=22.0;
    }
   }
  } else {
   if(i18<-0.00011849403381347656){
    if(i55<0.9999889731407166){
     s0+=10.0;
     s1+=23.0;
    } else {
     s1+=429.0;
    }
   } else {
    if(i17<0.0010447765234857798){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=8009.0;
    }
   }
  }
 }
}
if(i9<1.052894115447998){
 if(i1<0.0005886554718017578){
  if(i0<0.07845327258110046){
   if(i60<-0.001288086175918579){
    if(i20<0.9896949529647827){
     s0+=3041.0;
     s1+=61.0;
    } else {
     s0+=1407.0;
     s1+=493.0;
    }
   } else {
    if(i13<1.0081751346588135){
     s0+=59086.0;
     s1+=426.0;
    } else {
     s0+=72.0;
     s1+=95.0;
    }
   }
  } else {
   if(i23<0.9940108060836792){
    if(i19<1.1015962362289429){
     s0+=263.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i63<0.03373178839683533){
     s0+=16.0;
     s1+=488.0;
    } else {
     s0+=162.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i43<-1.4334917068481445e-05){
   if(i57<0.00016093827434815466){
    s1+=334.0;
   } else {
    if(i21<0.920221209526062){
     s1+=26.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i44<0.009521263651549816){
    if(i15<1.0179091691970825){
     s0+=122.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i4<1.0018725395202637){
  if(i0<0.08507576584815979){
   if(i64<0.0017259781016036868){
    if(i28<1.1013743877410889){
     s0+=1038.0;
     s1+=540.0;
    } else {
     s0+=4327.0;
     s1+=348.0;
    }
   } else {
    if(i41<1.0002946853637695){
     s0+=6.0;
    } else {
     s0+=3.0;
     s1+=74.0;
    }
   }
  } else {
   if(i31<0.07285591959953308){
    if(i49<0.016307473182678223){
     s0+=18.0;
     s1+=1111.0;
    } else {
     s0+=48.0;
     s1+=104.0;
    }
   } else {
    if(i34<0.003926820121705532){
     s0+=876.0;
     s1+=345.0;
    } else {
     s0+=238.0;
     s1+=1165.0;
    }
   }
  }
 } else {
  if(i17<0.0024835874792188406){
   if(i57<-3.0123435863060877e-05){
    s1+=249.0;
   } else {
    if(i42<1.1380741596221924){
     s1+=35.0;
    } else {
     s0+=195.0;
     s1+=21.0;
    }
   }
  } else {
   if(i2<0.04979535937309265){
    if(i45<0.26450881361961365){
     s0+=24.0;
     s1+=152.0;
    } else {
     s0+=60.0;
     s1+=39.0;
    }
   } else {
    if(i17<0.0073109399527311325){
     s0+=140.0;
     s1+=2285.0;
    } else {
     s0+=27.0;
     s1+=8525.0;
    }
   }
  }
 }
}
if(i20<1.0060044527053833){
 if(i3<0.07541137933731079){
  if(i6<4.202127456665039e-05){
   if(i51<0.007554411888122559){
    if(i3<0.05867213010787964){
     s0+=60289.0;
     s1+=711.0;
    } else {
     s0+=4480.0;
     s1+=549.0;
    }
   } else {
    if(i1<-0.0004036128520965576){
     s0+=1730.0;
     s1+=121.0;
    } else {
     s0+=1435.0;
     s1+=606.0;
    }
   }
  } else {
   if(i58<0.0015492616221308708){
    if(i4<1.0031077861785889){
     s0+=238.0;
     s1+=5.0;
    } else {
     s0+=22.0;
     s1+=38.0;
    }
   } else {
    if(i17<0.004686926491558552){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=40.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i16<0.9986191987991333){
   if(i67<0.0008392478339374065){
    if(i43<-1.0199353710049763e-05){
     s0+=25.0;
     s1+=7.0;
    } else {
     s0+=516.0;
    }
   } else {
    if(i59<0.9998679161071777){
     s0+=37.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   }
  } else {
   if(i1<0.000513911247253418){
    if(i50<0.04743003845214844){
     s0+=351.0;
     s1+=1732.0;
    } else {
     s0+=859.0;
     s1+=914.0;
    }
   } else {
    if(i44<0.016893533989787102){
     s0+=96.0;
     s1+=143.0;
    } else {
     s0+=21.0;
     s1+=1787.0;
    }
   }
  }
 }
} else {
 if(i7<-4.297731356928125e-05){
  if(i14<-1.2278556823730469e-05){
   s0+=18.0;
  } else {
   if(i27<0.00019726500613614917){
    if(i36<1.23526930809021){
     s0+=8.0;
     s1+=127.0;
    } else {
     s0+=36.0;
     s1+=5.0;
    }
   } else {
    if(i18<5.960464477539063e-08){
     s0+=27.0;
     s1+=122.0;
    } else {
     s0+=33.0;
     s1+=9841.0;
    }
   }
  }
 } else {
  if(i8<0.0005878210067749023){
   if(i28<1.1386182308197021){
    if(i64<5.50573859072756e-05){
     s0+=2.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i53<0.0009690657607279718){
     s0+=664.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=59.0;
    }
   }
  } else {
   s1+=48.0;
  }
 }
}
if(i3<0.07832354307174683){
 if(i20<1.006005883216858){
  if(i22<0.016620181500911713){
   if(i38<0.0003040659357793629){
    if(i30<1.0061423778533936){
     s0+=35955.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    if(i8<0.0006265640258789062){
     s0+=22647.0;
     s1+=685.0;
    } else {
     s0+=195.0;
     s1+=155.0;
    }
   }
  } else {
   if(i1<-0.00023251771926879883){
    if(i4<0.9967737793922424){
     s0+=6789.0;
     s1+=63.0;
    } else {
     s0+=1520.0;
     s1+=398.0;
    }
   } else {
    if(i32<1.1063789129257202){
     s0+=311.0;
     s1+=668.0;
    } else {
     s0+=1103.0;
     s1+=496.0;
    }
   }
  }
 } else {
  if(i34<0.0011061809491366148){
   if(i36<1.154829978942871){
    if(i53<7.481044303858653e-05){
     s0+=1.0;
    } else {
     s1+=638.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   if(i4<1.0041394233703613){
    if(i32<1.1653079986572266){
     s1+=4.0;
    } else {
     s0+=612.0;
     s1+=21.0;
    }
   } else {
    s1+=180.0;
   }
  }
 }
} else {
 if(i8<-0.0004112422466278076){
  if(i57<0.00017937980010174215){
   s0+=424.0;
  } else {
   if(i51<0.005618131719529629){
    if(i2<0.10435634851455688){
     s0+=17.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i12<1.003002643585205){
   if(i63<0.02636963129043579){
    if(i17<0.0016418937593698502){
     s0+=157.0;
     s1+=132.0;
    } else {
     s0+=139.0;
     s1+=3027.0;
    }
   } else {
    if(i39<0.008288905024528503){
     s0+=916.0;
     s1+=859.0;
    } else {
     s0+=59.0;
     s1+=652.0;
    }
   }
  } else {
   if(i6<3.7610530853271484e-05){
    if(i39<0.0032112039625644684){
     s0+=39.0;
     s1+=47.0;
    } else {
     s0+=42.0;
     s1+=411.0;
    }
   } else {
    if(i59<1.005781650543213){
     s0+=35.0;
     s1+=8808.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i13<1.0080137252807617){
 if(i3<0.08032220602035522){
  if(i6<4.202127456665039e-05){
   if(i56<-0.002227604389190674){
    if(i36<1.1792536973953247){
     s0+=2149.0;
     s1+=809.0;
    } else {
     s0+=3567.0;
     s1+=136.0;
    }
   } else {
    if(i2<0.07561221718788147){
     s0+=61455.0;
     s1+=672.0;
    } else {
     s0+=1086.0;
     s1+=260.0;
    }
   }
  } else {
   if(i28<1.082350254058838){
    s0+=201.0;
   } else {
    if(i48<0.002064526081085205){
     s0+=81.0;
     s1+=505.0;
    } else {
     s0+=63.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i16<0.998519778251648){
   if(i38<0.0076316650956869125){
    if(i35<0.0010386810172349215){
     s0+=60.0;
     s1+=5.0;
    } else {
     s0+=329.0;
    }
   } else {
    if(i63<0.042221784591674805){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i7<-1.229988720297115e-05){
    if(i35<0.01206448208540678){
     s0+=388.0;
     s1+=1907.0;
    } else {
     s0+=10.0;
     s1+=1488.0;
    }
   } else {
    if(i67<0.00034005026100203395){
     s0+=317.0;
     s1+=55.0;
    } else {
     s0+=89.0;
     s1+=170.0;
    }
   }
  }
 }
} else {
 if(i3<0.09596225619316101){
  if(i7<-4.210590850561857e-05){
   if(i38<0.0043037524446845055){
    if(i31<0.08208245038986206){
     s0+=9.0;
     s1+=1024.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i1<0.0011470317840576172){
     s0+=91.0;
     s1+=14.0;
    } else {
     s1+=69.0;
    }
   }
  } else {
   if(i47<0.02771759405732155){
    if(i35<0.0008687501540407538){
     s0+=53.0;
     s1+=113.0;
    } else {
     s0+=189.0;
     s1+=11.0;
    }
   } else {
    if(i28<1.1039612293243408){
     s0+=29.0;
     s1+=48.0;
    } else {
     s0+=746.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i10<0.000272214412689209){
   if(i64<0.0005277932505123317){
    if(i49<0.031897544860839844){
     s0+=75.0;
     s1+=391.0;
    } else {
     s0+=188.0;
     s1+=81.0;
    }
   } else {
    if(i18<-0.00025653839111328125){
     s0+=3.0;
     s1+=81.0;
    } else {
     s1+=538.0;
    }
   }
  } else {
   if(i64<1.616859299247153e-05){
    s0+=2.0;
   } else {
    if(i33<0.0018860867712646723){
     s0+=29.0;
     s1+=893.0;
    } else {
     s0+=5.0;
     s1+=7715.0;
    }
   }
  }
 }
}
if(i18<0.00011593103408813477){
 if(i29<1.0406770706176758){
  if(i35<0.00035572232445701957){
   if(i0<0.08871880173683167){
    if(i7<-4.8516096285311505e-05){
     s0+=10.0;
     s1+=22.0;
    } else {
     s0+=48143.0;
     s1+=139.0;
    }
   } else {
    if(i4<0.9985222816467285){
     s0+=14.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i18<-0.00019857287406921387){
    if(i2<0.08583882451057434){
     s0+=11486.0;
     s1+=323.0;
    } else {
     s0+=197.0;
     s1+=270.0;
    }
   } else {
    if(i22<0.0223822183907032){
     s0+=6054.0;
     s1+=1062.0;
    } else {
     s0+=609.0;
     s1+=1519.0;
    }
   }
  }
 } else {
  if(i4<1.001920223236084){
   if(i40<-0.0001361370086669922){
    if(i35<0.03101351298391819){
     s0+=913.0;
     s1+=28.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i3<0.1061621606349945){
     s0+=2471.0;
     s1+=619.0;
    } else {
     s0+=461.0;
     s1+=1641.0;
    }
   }
  } else {
   if(i3<0.11886942386627197){
    if(i58<0.005575243849307299){
     s0+=197.0;
     s1+=182.0;
    } else {
     s0+=3.0;
     s1+=91.0;
    }
   } else {
    if(i0<0.15429747104644775){
     s0+=29.0;
     s1+=143.0;
    } else {
     s0+=2.0;
     s1+=1083.0;
    }
   }
  }
 }
} else {
 if(i2<0.06479015946388245){
  if(i53<0.0015936421696096659){
   if(i4<1.0042004585266113){
    if(i26<1.0088608264923096){
     s0+=451.0;
     s1+=1.0;
    } else {
     s0+=237.0;
     s1+=47.0;
    }
   } else {
    s1+=47.0;
   }
  } else {
   if(i16<0.9993240833282471){
    s0+=10.0;
   } else {
    s1+=152.0;
   }
  }
 } else {
  if(i7<-4.2801930248970166e-05){
   if(i16<0.9990360736846924){
    if(i50<0.29030027985572815){
     s0+=49.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i3<0.09418654441833496){
     s0+=4.0;
     s1+=853.0;
    } else {
     s1+=8454.0;
    }
   }
  } else {
   if(i49<0.009572088718414307){
    if(i38<0.0019160558003932238){
     s0+=1.0;
     s1+=75.0;
    } else {
     s0+=27.0;
     s1+=20.0;
    }
   } else {
    if(i2<0.18834558129310608){
     s0+=61.0;
     s1+=3.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
}
if(i4<1.002443790435791){
 if(i27<0.0003143130452372134){
  if(i69<0.0008591767982579768){
   if(i0<0.08320531249046326){
    if(i11<1.0410094261169434){
     s0+=54897.0;
     s1+=236.0;
    } else {
     s0+=1587.0;
     s1+=146.0;
    }
   } else {
    if(i6<-4.1425228118896484e-05){
     s0+=54.0;
    } else {
     s0+=34.0;
     s1+=302.0;
    }
   }
  } else {
   if(i38<0.000999512616544962){
    if(i36<1.0683749914169312){
     s0+=192.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=190.0;
    }
   } else {
    if(i14<2.4437904357910156e-05){
     s0+=538.0;
     s1+=11.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i8<-0.00014984607696533203){
   if(i5<0.06687667965888977){
    if(i68<-5.668557423632592e-05){
     s0+=1540.0;
     s1+=188.0;
    } else {
     s0+=4282.0;
     s1+=77.0;
    }
   } else {
    if(i16<0.9985312223434448){
     s0+=474.0;
     s1+=22.0;
    } else {
     s0+=168.0;
     s1+=334.0;
    }
   }
  } else {
   if(i55<0.9998663663864136){
    if(i33<0.0005138467531651258){
     s0+=679.0;
     s1+=114.0;
    } else {
     s0+=1016.0;
     s1+=2305.0;
    }
   } else {
    if(i44<0.04850965738296509){
     s0+=5241.0;
     s1+=1438.0;
    } else {
     s0+=35.0;
     s1+=487.0;
    }
   }
  }
 }
} else {
 if(i3<0.057841986417770386){
  if(i53<0.0009978809393942356){
   if(i7<-6.0831414884887636e-05){
    if(i43<-1.315784265898401e-05){
     s1+=32.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i57<1.042435451381607e-05){
     s0+=176.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.007543810643255711){
    if(i50<0.025202512741088867){
     s0+=5.0;
     s1+=486.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i50<-0.0706750750541687){
     s1+=71.0;
    } else {
     s0+=78.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i4<1.004055142402649){
   if(i44<0.009678651578724384){
    if(i32<1.2378153800964355){
     s1+=114.0;
    } else {
     s0+=96.0;
     s1+=16.0;
    }
   } else {
    if(i2<0.13140657544136047){
     s0+=26.0;
     s1+=253.0;
    } else {
     s0+=2.0;
     s1+=836.0;
    }
   }
  } else {
   if(i10<0.0002606511116027832){
    if(i55<1.000037431716919){
     s0+=25.0;
     s1+=101.0;
    } else {
     s1+=557.0;
    }
   } else {
    s1+=8752.0;
   }
  }
 }
}
if(i9<1.055552363395691){
 if(i3<0.07769986987113953){
  if(i4<1.0024954080581665){
   if(i56<-0.0020501017570495605){
    if(i36<1.1570631265640259){
     s0+=1937.0;
     s1+=584.0;
    } else {
     s0+=2805.0;
     s1+=24.0;
    }
   } else {
    if(i15<1.007793664932251){
     s0+=59150.0;
     s1+=448.0;
    } else {
     s0+=258.0;
     s1+=126.0;
    }
   }
  } else {
   if(i32<1.2371783256530762){
    if(i19<1.0365266799926758){
     s0+=3.0;
    } else {
     s1+=233.0;
    }
   } else {
    if(i52<0.9683090448379517){
     s1+=17.0;
    } else {
     s0+=97.0;
    }
   }
  }
 } else {
  if(i32<1.0724589824676514){
   if(i23<1.0014681816101074){
    s0+=151.0;
   } else {
    if(i70<-3.5471794035402127e-06){
     s1+=1.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i66<-0.0047094812616705894){
    if(i3<0.09619185328483582){
     s0+=70.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   } else {
    if(i12<0.9954361915588379){
     s0+=49.0;
     s1+=5.0;
    } else {
     s0+=56.0;
     s1+=852.0;
    }
   }
  }
 }
} else {
 if(i7<-4.503373202169314e-05){
  if(i1<0.0002510547637939453){
   if(i24<1.017814040184021){
    if(i0<0.08747589588165283){
     s0+=458.0;
     s1+=153.0;
    } else {
     s0+=69.0;
     s1+=466.0;
    }
   } else {
    if(i70<1.511080654381658e-06){
     s1+=381.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i3<0.11696016788482666){
    if(i34<0.0031269341707229614){
     s0+=9.0;
     s1+=1147.0;
    } else {
     s0+=326.0;
     s1+=702.0;
    }
   } else {
    if(i0<0.1405821144580841){
     s0+=34.0;
     s1+=468.0;
    } else {
     s0+=15.0;
     s1+=9444.0;
    }
   }
  }
 } else {
  if(i14<2.7477741241455078e-05){
   if(i0<0.08223113417625427){
    if(i4<0.998132586479187){
     s0+=1856.0;
     s1+=79.0;
    } else {
     s0+=2542.0;
     s1+=528.0;
    }
   } else {
    if(i46<0.05810585618019104){
     s0+=41.0;
     s1+=728.0;
    } else {
     s0+=1165.0;
     s1+=538.0;
    }
   }
  } else {
   if(i19<1.065237283706665){
    s0+=11.0;
   } else {
    if(i17<0.004994845483452082){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=171.0;
    }
   }
  }
 }
}
if(i5<0.07194709777832031){
 if(i4<1.0024782419204712){
  if(i36<1.0598037242889404){
   if(i25<0.00036756432382389903){
    if(i58<0.0021917924750596285){
     s0+=42065.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.05992847681045532){
     s0+=1762.0;
     s1+=19.0;
    } else {
     s0+=201.0;
     s1+=22.0;
    }
   }
  } else {
   if(i3<0.07561245560646057){
    if(i23<0.9943428039550781){
     s0+=13868.0;
     s1+=186.0;
    } else {
     s0+=10844.0;
     s1+=1781.0;
    }
   } else {
    if(i3<0.08230835199356079){
     s0+=100.0;
     s1+=109.0;
    } else {
     s0+=32.0;
     s1+=633.0;
    }
   }
  }
 } else {
  if(i43<-1.374704788759118e-05){
   if(i32<1.2314128875732422){
    s1+=1167.0;
   } else {
    if(i0<0.07584691047668457){
     s0+=114.0;
     s1+=263.0;
    } else {
     s1+=384.0;
    }
   }
  } else {
   if(i34<0.0024585830979049206){
    if(i55<1.0001263618469238){
     s1+=64.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i17<0.0031018657609820366){
     s0+=128.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i14<-1.4424324035644531e-05){
  if(i43<-9.017143383971415e-06){
   if(i27<0.0007844144129194319){
    if(i4<0.9966700077056885){
     s0+=14.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i26<0.9582419991493225){
     s0+=1.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i4<0.9961930513381958){
    s0+=374.0;
   } else {
    if(i41<0.9996106624603271){
     s0+=72.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i3<0.1172933578491211){
   if(i49<0.016006559133529663){
    if(i37<0.05072006583213806){
     s0+=93.0;
     s1+=1176.0;
    } else {
     s0+=348.0;
     s1+=267.0;
    }
   } else {
    if(i35<0.0012258724309504032){
     s0+=38.0;
     s1+=28.0;
    } else {
     s0+=714.0;
     s1+=22.0;
    }
   }
  } else {
   if(i33<0.0006418696139007807){
    if(i35<0.001401696470566094){
     s0+=13.0;
     s1+=53.0;
    } else {
     s0+=165.0;
    }
   } else {
    if(i2<0.1772577464580536){
     s0+=179.0;
     s1+=1727.0;
    } else {
     s0+=43.0;
     s1+=9130.0;
    }
   }
  }
 }
}
if(i14<1.627206802368164e-05){
 if(i18<0.00014990568161010742){
  if(i5<0.07112503051757812){
   if(i36<1.0557184219360352){
    if(i36<1.05283784866333){
     s0+=41902.0;
    } else {
     s0+=853.0;
     s1+=1.0;
    }
   } else {
    if(i28<1.100754976272583){
     s0+=3738.0;
     s1+=1664.0;
    } else {
     s0+=20590.0;
     s1+=618.0;
    }
   }
  } else {
   if(i37<0.039829373359680176){
    if(i4<0.9953930377960205){
     s0+=38.0;
     s1+=28.0;
    } else {
     s0+=50.0;
     s1+=1113.0;
    }
   } else {
    if(i3<0.11901557445526123){
     s0+=1125.0;
     s1+=325.0;
    } else {
     s0+=541.0;
     s1+=916.0;
    }
   }
  }
 } else {
  if(i15<1.0089569091796875){
   if(i44<0.01446693204343319){
    if(i28<1.2753565311431885){
     s0+=14.0;
     s1+=35.0;
    } else {
     s0+=109.0;
    }
   } else {
    s1+=43.0;
   }
  } else {
   if(i41<1.0002415180206299){
    if(i14<-1.4483928680419922e-05){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=1241.0;
    }
   } else {
    if(i6<6.079673767089844e-05){
     s0+=85.0;
     s1+=25.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015418529510498){
  if(i25<0.010713832452893257){
   if(i31<0.06981873512268066){
    if(i0<0.08081316947937012){
     s0+=1455.0;
     s1+=107.0;
    } else {
     s0+=38.0;
     s1+=88.0;
    }
   } else {
    if(i62<-0.016210712492465973){
     s0+=112.0;
     s1+=37.0;
    } else {
     s0+=27.0;
     s1+=106.0;
    }
   }
  } else {
   if(i2<0.0019371211528778076){
    if(i60<-0.025601476430892944){
     s1+=2.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.223900556564331){
     s0+=30.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i4<1.0041308403015137){
   if(i59<1.0020098686218262){
    if(i2<0.0702059268951416){
     s0+=147.0;
     s1+=248.0;
    } else {
     s0+=64.0;
     s1+=1001.0;
    }
   } else {
    if(i54<0.007311105728149414){
     s0+=145.0;
     s1+=116.0;
    } else {
     s0+=5.0;
     s1+=54.0;
    }
   }
  } else {
   if(i0<0.014997810125350952){
    if(i33<0.010679783299565315){
     s0+=1.0;
     s1+=45.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i30<0.9966855049133301){
     s0+=33.0;
     s1+=835.0;
    } else {
     s0+=5.0;
     s1+=8148.0;
    }
   }
  }
 }
}
if(i7<-7.5000905781053e-05){
 if(i4<1.0000977516174316){
  if(i4<0.996371865272522){
   if(i11<1.081931233406067){
    if(i22<0.00023365221568383276){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=544.0;
     s1+=5.0;
    }
   } else {
    s1+=43.0;
   }
  } else {
   if(i8<0.0007387995719909668){
    if(i2<0.02848726511001587){
     s0+=99.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=283.0;
    }
   } else {
    if(i40<0.00037860870361328125){
     s1+=14.0;
    } else {
     s0+=129.0;
    }
   }
  }
 } else {
  if(i23<1.000352382659912){
   if(i26<0.9986768364906311){
    if(i5<0.08428037166595459){
     s0+=141.0;
     s1+=112.0;
    } else {
     s0+=12.0;
     s1+=287.0;
    }
   } else {
    if(i33<0.008490721695125103){
     s0+=3.0;
     s1+=603.0;
    } else {
     s0+=32.0;
     s1+=216.0;
    }
   }
  } else {
   if(i55<1.0007855892181396){
    if(i18<1.1622905731201172e-05){
     s0+=45.0;
     s1+=743.0;
    } else {
     s0+=1.0;
     s1+=9008.0;
    }
   } else {
    if(i13<0.991725504398346){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i11<1.0433766841888428){
  if(i58<0.0016875853762030602){
   if(i5<0.07899761199951172){
    if(i5<0.06480371952056885){
     s0+=58625.0;
     s1+=706.0;
    } else {
     s0+=936.0;
     s1+=189.0;
    }
   } else {
    if(i18<-0.0002894103527069092){
     s0+=47.0;
     s1+=10.0;
    } else {
     s0+=31.0;
     s1+=154.0;
    }
   }
  } else {
   if(i2<0.057016998529434204){
    if(i40<-3.555417060852051e-05){
     s0+=1864.0;
     s1+=56.0;
    } else {
     s0+=1811.0;
     s1+=485.0;
    }
   } else {
    if(i4<0.9955023527145386){
     s0+=213.0;
     s1+=7.0;
    } else {
     s0+=122.0;
     s1+=422.0;
    }
   }
  }
 } else {
  if(i17<0.004441050812602043){
   if(i23<1.0014748573303223){
    if(i0<0.09861618280410767){
     s0+=4252.0;
     s1+=455.0;
    } else {
     s0+=700.0;
     s1+=570.0;
    }
   } else {
    if(i14<5.066394805908203e-06){
     s0+=97.0;
     s1+=344.0;
    } else {
     s0+=457.0;
     s1+=311.0;
    }
   }
  } else {
   if(i18<-0.00012728571891784668){
    if(i5<0.10548356175422668){
     s0+=578.0;
     s1+=225.0;
    } else {
     s0+=87.0;
     s1+=418.0;
    }
   } else {
    if(i55<0.9995949864387512){
     s0+=139.0;
     s1+=84.0;
    } else {
     s0+=23.0;
     s1+=1489.0;
    }
   }
  }
 }
}
if(i19<1.0576403141021729){
 if(i24<1.0095852613449097){
  if(i36<1.0557184219360352){
   if(i56<-0.003278195858001709){
    if(i56<-0.0033209919929504395){
     s0+=651.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=42516.0;
   }
  } else {
   if(i52<0.9896775484085083){
    if(i18<-0.0002015829086303711){
     s0+=1460.0;
     s1+=50.0;
    } else {
     s0+=338.0;
     s1+=306.0;
    }
   } else {
    if(i15<1.0079011917114258){
     s0+=13655.0;
     s1+=364.0;
    } else {
     s0+=41.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i15<1.0075123310089111){
   if(i2<0.0865078866481781){
    if(i51<0.00894196704030037){
     s0+=66.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i67<0.00030011270428076386){
     s1+=7.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i38<0.0011739383917301893){
    s1+=147.0;
   } else {
    if(i33<0.0017143962904810905){
     s0+=12.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i7<-7.002378697507083e-05){
  if(i15<0.9230828881263733){
   if(i41<1.0008741617202759){
    if(i68<-0.0005662328912876546){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=334.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.014102518558502197){
     s0+=73.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=145.0;
    }
   }
  } else {
   if(i10<-0.003658801317214966){
    if(i19<1.2084407806396484){
     s0+=152.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=23.0;
    }
   } else {
    if(i10<-0.000546872615814209){
     s0+=211.0;
     s1+=1013.0;
    } else {
     s0+=48.0;
     s1+=10501.0;
    }
   }
  }
 } else {
  if(i5<0.058738887310028076){
   if(i36<1.1036889553070068){
    if(i33<0.0005126299802213907){
     s0+=1343.0;
     s1+=151.0;
    } else {
     s0+=624.0;
     s1+=1019.0;
    }
   } else {
    if(i0<0.07857325673103333){
     s0+=7162.0;
     s1+=228.0;
    } else {
     s0+=3.0;
     s1+=221.0;
    }
   }
  } else {
   if(i8<-0.0004054605960845947){
    if(i18<-0.00046646595001220703){
     s0+=11.0;
     s1+=13.0;
    } else {
     s0+=382.0;
    }
   } else {
    if(i54<0.0043503642082214355){
     s0+=969.0;
     s1+=2158.0;
    } else {
     s0+=1038.0;
     s1+=687.0;
    }
   }
  }
 }
}
if(i7<-7.306020415853709e-05){
 if(i30<0.9572433829307556){
  if(i0<0.06590902805328369){
   if(i43<-5.0349353841738775e-05){
    if(i42<1.4429841041564941){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i44<0.054196812212467194){
     s0+=560.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   }
  } else {
   if(i69<0.0011571627110242844){
    s0+=9.0;
   } else {
    if(i4<0.9984171986579895){
     s0+=1.0;
     s1+=19.0;
    } else {
     s1+=101.0;
    }
   }
  }
 } else {
  if(i43<-0.00011977510439464822){
   s0+=153.0;
  } else {
   if(i0<0.06417432427406311){
    if(i57<0.00013782574387732893){
     s0+=34.0;
     s1+=239.0;
    } else {
     s0+=137.0;
     s1+=81.0;
    }
   } else {
    if(i0<0.12743261456489563){
     s0+=123.0;
     s1+=1263.0;
    } else {
     s0+=16.0;
     s1+=9777.0;
    }
   }
  }
 }
} else {
 if(i2<0.0831376314163208){
  if(i51<0.007554155308753252){
   if(i0<0.06921237707138062){
    if(i36<1.0557184219360352){
     s0+=41421.0;
    } else {
     s0+=21744.0;
     s1+=1006.0;
    }
   } else {
    if(i37<0.030901819467544556){
     s0+=70.0;
     s1+=391.0;
    } else {
     s0+=1443.0;
     s1+=126.0;
    }
   }
  } else {
   if(i0<0.03633749485015869){
    if(i12<1.000664234161377){
     s0+=2402.0;
     s1+=246.0;
    } else {
     s0+=139.0;
     s1+=140.0;
    }
   } else {
    if(i46<0.01513013243675232){
     s0+=65.0;
     s1+=367.0;
    } else {
     s0+=628.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i4<0.9964188933372498){
   if(i41<0.9992890357971191){
    if(i55<0.9997952580451965){
     s0+=597.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i69<0.0013361074961721897){
     s0+=89.0;
     s1+=25.0;
    } else {
     s0+=23.0;
     s1+=63.0;
    }
   }
  } else {
   if(i48<0.004221975803375244){
    if(i33<0.0004476824833545834){
     s0+=111.0;
     s1+=17.0;
    } else {
     s0+=254.0;
     s1+=2417.0;
    }
   } else {
    if(i0<0.12358695268630981){
     s0+=561.0;
     s1+=59.0;
    } else {
     s0+=302.0;
     s1+=770.0;
    }
   }
  }
 }
}
if(i2<0.08564203977584839){
 if(i8<0.0006238818168640137){
  if(i19<1.0485899448394775){
   if(i15<1.0107519626617432){
    if(i35<0.00028186492272652686){
     s0+=44257.0;
     s1+=23.0;
    } else {
     s0+=11471.0;
     s1+=338.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i3<0.056510210037231445){
    if(i28<1.1013743877410889){
     s0+=2173.0;
     s1+=791.0;
    } else {
     s0+=8839.0;
     s1+=224.0;
    }
   } else {
    if(i42<1.1034480333328247){
     s0+=406.0;
     s1+=619.0;
    } else {
     s0+=1481.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i54<0.0006079971790313721){
   if(i60<0.00173988938331604){
    if(i39<0.000322464678902179){
     s0+=25.0;
    } else {
     s0+=96.0;
     s1+=827.0;
    }
   } else {
    if(i34<0.0019721537828445435){
     s1+=10.0;
    } else {
     s0+=150.0;
     s1+=12.0;
    }
   }
  } else {
   if(i48<0.0011896789073944092){
    if(i57<0.00014651687524747103){
     s0+=23.0;
     s1+=54.0;
    } else {
     s0+=105.0;
     s1+=5.0;
    }
   } else {
    if(i28<1.2876198291778564){
     s1+=5.0;
    } else {
     s0+=252.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i8<-0.00039246678352355957){
  if(i55<0.9998003244400024){
   if(i1<-0.0004886984825134277){
    s0+=629.0;
   } else {
    if(i53<0.0014151346404105425){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i53<0.0019796646665781736){
    if(i15<1.009838342666626){
     s0+=32.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<1.3273026943206787){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i18<0.00010186433792114258){
   if(i2<0.12574806809425354){
    if(i52<1.0261869430541992){
     s0+=408.0;
     s1+=1216.0;
    } else {
     s0+=422.0;
     s1+=69.0;
    }
   } else {
    if(i33<0.0006418609991669655){
     s0+=159.0;
     s1+=43.0;
    } else {
     s0+=195.0;
     s1+=3013.0;
    }
   }
  } else {
   if(i16<0.9965163469314575){
    s0+=2.0;
   } else {
    if(i26<1.00993812084198){
     s0+=26.0;
     s1+=877.0;
    } else {
     s0+=20.0;
     s1+=8687.0;
    }
   }
  }
 }
}
if(i0<0.08270382881164551){
 if(i6<4.011392593383789e-05){
  if(i49<-0.005847275257110596){
   if(i34<0.0008648711955174804){
    if(i38<0.0004585235728882253){
     s0+=879.0;
     s1+=20.0;
    } else {
     s0+=244.0;
     s1+=446.0;
    }
   } else {
    if(i14<1.7583370208740234e-05){
     s0+=2599.0;
     s1+=206.0;
    } else {
     s0+=164.0;
     s1+=106.0;
    }
   }
  } else {
   if(i0<0.06546536087989807){
    if(i36<1.0557184219360352){
     s0+=41076.0;
     s1+=1.0;
    } else {
     s0+=21186.0;
     s1+=767.0;
    }
   } else {
    if(i63<0.014898449182510376){
     s0+=250.0;
     s1+=382.0;
    } else {
     s0+=2570.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i42<1.0633710622787476){
   s0+=259.0;
  } else {
   if(i4<1.0042428970336914){
    if(i38<0.002523555187508464){
     s0+=2.0;
     s1+=193.0;
    } else {
     s0+=274.0;
     s1+=139.0;
    }
   } else {
    if(i0<0.006430238485336304){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=9.0;
     s1+=584.0;
    }
   }
  }
 }
} else {
 if(i7<-1.199687994812848e-05){
  if(i0<0.11954319477081299){
   if(i49<0.014568835496902466){
    if(i16<0.9981976747512817){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=110.0;
     s1+=2049.0;
    }
   } else {
    if(i32<1.124355673789978){
     s0+=6.0;
     s1+=26.0;
    } else {
     s0+=368.0;
     s1+=27.0;
    }
   }
  } else {
   if(i64<0.00018057439592666924){
    if(i37<0.07459408044815063){
     s0+=8.0;
     s1+=335.0;
    } else {
     s0+=87.0;
     s1+=47.0;
    }
   } else {
    if(i3<0.17035254836082458){
     s0+=109.0;
     s1+=2028.0;
    } else {
     s0+=24.0;
     s1+=9161.0;
    }
   }
  }
 } else {
  if(i4<0.995924711227417){
   if(i69<0.0036989180371165276){
    s0+=373.0;
   } else {
    if(i8<-0.00045624375343322754){
     s0+=24.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i64<0.00022872118279337883){
    if(i29<1.0412360429763794){
     s0+=5.0;
     s1+=37.0;
    } else {
     s0+=362.0;
     s1+=49.0;
    }
   } else {
    if(i66<-0.0043922653421759605){
     s0+=119.0;
     s1+=78.0;
    } else {
     s0+=32.0;
     s1+=169.0;
    }
   }
  }
 }
}
if(i7<-7.514744356740266e-05){
 if(i4<1.0001862049102783){
  if(i37<0.0546630322933197){
   if(i29<1.0625687837600708){
    if(i20<0.9983359575271606){
     s0+=695.0;
     s1+=80.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i68<5.0901828217320144e-05){
     s1+=132.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.10529923439025879){
    if(i32<1.5516376495361328){
     s0+=27.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i42<1.1419161558151245){
     s0+=4.0;
    } else {
     s1+=152.0;
    }
   }
  }
 } else {
  if(i0<0.06264051795005798){
   if(i44<0.02045651525259018){
    if(i27<0.0014107282040640712){
     s0+=13.0;
     s1+=118.0;
    } else {
     s0+=124.0;
     s1+=23.0;
    }
   } else {
    if(i48<0.0034750699996948242){
     s0+=8.0;
     s1+=160.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i19<1.1227065324783325){
    if(i25<0.003030837047845125){
     s0+=45.0;
     s1+=1774.0;
    } else {
     s0+=56.0;
     s1+=75.0;
    }
   } else {
    if(i57<0.00027255999157205224){
     s0+=9.0;
     s1+=8548.0;
    } else {
     s0+=5.0;
     s1+=177.0;
    }
   }
  }
 }
} else {
 if(i0<0.07721498608589172){
  if(i1<0.0006022751331329346){
   if(i49<-0.006012856960296631){
    if(i36<1.096760869026184){
     s0+=973.0;
     s1+=477.0;
    } else {
     s0+=2391.0;
     s1+=209.0;
    }
   } else {
    if(i28<1.0856719017028809){
     s0+=37423.0;
    } else {
     s0+=27155.0;
     s1+=1085.0;
    }
   }
  } else {
   if(i56<-0.0012602806091308594){
    if(i17<0.0021826138254255056){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=224.0;
    }
   } else {
    if(i33<0.0016455084551125765){
     s0+=75.0;
     s1+=118.0;
    } else {
     s0+=122.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i4<0.9964188933372498){
   if(i64<0.0016480803024023771){
    if(i57<0.00019624768174253404){
     s0+=568.0;
     s1+=23.0;
    } else {
     s0+=51.0;
     s1+=29.0;
    }
   } else {
    if(i32<1.491317868232727){
     s0+=15.0;
    } else {
     s0+=4.0;
     s1+=49.0;
    }
   }
  } else {
   if(i0<0.10780218243598938){
    if(i52<1.027930736541748){
     s0+=463.0;
     s1+=1300.0;
    } else {
     s0+=399.0;
     s1+=30.0;
    }
   } else {
    if(i50<0.08643186092376709){
     s0+=88.0;
     s1+=1837.0;
    } else {
     s0+=427.0;
     s1+=447.0;
    }
   }
  }
 }
}
if(i2<0.08580175042152405){
 if(i16<1.001828670501709){
  if(i56<-0.0020645856857299805){
   if(i20<0.9898261427879333){
    if(i3<0.04391220211982727){
     s0+=3438.0;
     s1+=89.0;
    } else {
     s0+=449.0;
     s1+=93.0;
    }
   } else {
    if(i67<0.00045967986807227135){
     s0+=1743.0;
     s1+=344.0;
    } else {
     s0+=267.0;
     s1+=440.0;
    }
   }
  } else {
   if(i9<1.0452215671539307){
    if(i16<1.0005371570587158){
     s0+=54417.0;
     s1+=209.0;
    } else {
     s0+=2838.0;
     s1+=143.0;
    }
   } else {
    if(i39<0.001978167798370123){
     s0+=2575.0;
     s1+=755.0;
    } else {
     s0+=2774.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i10<-0.0008010268211364746){
   if(i51<0.013191236183047295){
    if(i23<0.9986931085586548){
     s0+=556.0;
     s1+=14.0;
    } else {
     s0+=97.0;
     s1+=58.0;
    }
   } else {
    if(i55<1.00071120262146){
     s0+=20.0;
     s1+=148.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   }
  } else {
   if(i35<0.00023706837964709848){
    s0+=37.0;
   } else {
    if(i49<0.011906921863555908){
     s0+=41.0;
     s1+=730.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3797138308291323e-05){
  if(i41<0.9988019466400146){
   if(i17<0.011936536058783531){
    if(i40<-0.000257641077041626){
     s0+=56.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i13<1.023747444152832){
    if(i50<0.05163919925689697){
     s0+=167.0;
     s1+=4527.0;
    } else {
     s0+=465.0;
     s1+=1878.0;
    }
   } else {
    if(i26<1.0034515857696533){
     s0+=5.0;
     s1+=122.0;
    } else {
     s1+=7058.0;
    }
   }
  }
 } else {
  if(i55<1.0000531673431396){
   if(i62<-0.02045946940779686){
    if(i65<-1.7498532542958856e-06){
     s1+=15.0;
    } else {
     s0+=687.0;
     s1+=33.0;
    }
   } else {
    if(i16<0.9985203742980957){
     s0+=305.0;
    } else {
     s0+=134.0;
     s1+=215.0;
    }
   }
  } else {
   if(i39<0.0004924832610413432){
    s0+=15.0;
   } else {
    if(i18<-0.0002872347831726074){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=154.0;
    }
   }
  }
 }
}
if(i1<0.0005512535572052002){
 if(i31<0.06652206182479858){
  if(i0<0.07865980267524719){
   if(i42<1.0598037242889404){
    s0+=36678.0;
   } else {
    if(i51<0.007555656600743532){
     s0+=29321.0;
     s1+=1146.0;
    } else {
     s0+=2569.0;
     s1+=770.0;
    }
   }
  } else {
   if(i61<0.9959819316864014){
    if(i36<1.1326812505722046){
     s0+=115.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.08286729454994202){
     s0+=188.0;
     s1+=334.0;
    } else {
     s0+=33.0;
     s1+=1254.0;
    }
   }
  }
 } else {
  if(i0<0.10736396908760071){
   if(i48<0.004038006067276001){
    if(i7<-2.004494672291912e-05){
     s0+=70.0;
     s1+=130.0;
    } else {
     s0+=382.0;
     s1+=28.0;
    }
   } else {
    if(i68<-0.0008917918894439936){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=582.0;
     s1+=10.0;
    }
   }
  } else {
   if(i54<0.007325947284698486){
    if(i37<0.09051719307899475){
     s0+=101.0;
     s1+=1190.0;
    } else {
     s0+=86.0;
     s1+=81.0;
    }
   } else {
    if(i22<0.04728946462273598){
     s0+=418.0;
     s1+=114.0;
    } else {
     s0+=103.0;
     s1+=452.0;
    }
   }
  }
 }
} else {
 if(i32<1.0795294046401978){
  s0+=158.0;
 } else {
  if(i4<1.0041425228118896){
   if(i7<-4.401454498292878e-05){
    if(i2<0.10094711184501648){
     s0+=161.0;
     s1+=381.0;
    } else {
     s0+=34.0;
     s1+=1331.0;
    }
   } else {
    if(i10<0.0008611679077148438){
     s0+=14.0;
     s1+=162.0;
    } else {
     s0+=146.0;
     s1+=18.0;
    }
   }
  } else {
   if(i44<0.019121291115880013){
    if(i33<0.010106250643730164){
     s0+=11.0;
     s1+=1758.0;
    } else {
     s0+=50.0;
     s1+=62.0;
    }
   } else {
    s1+=7790.0;
   }
  }
 }
}
if(i1<0.0005481839179992676){
 if(i17<0.004567648284137249){
  if(i9<1.0433889627456665){
   if(i67<0.00028069678228348494){
    if(i3<0.08640870451927185){
     s0+=51482.0;
     s1+=144.0;
    } else {
     s0+=35.0;
     s1+=15.0;
    }
   } else {
    if(i34<0.0008600592846050858){
     s0+=916.0;
     s1+=418.0;
    } else {
     s0+=3971.0;
     s1+=89.0;
    }
   }
  } else {
   if(i0<0.07547858357429504){
    if(i52<0.9955147504806519){
     s0+=1928.0;
     s1+=456.0;
    } else {
     s0+=5018.0;
     s1+=323.0;
    }
   } else {
    if(i56<0.006515681743621826){
     s0+=829.0;
     s1+=1201.0;
    } else {
     s0+=616.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i1<-0.00041729211807250977){
   if(i68<-0.0013564946129918098){
    s1+=48.0;
   } else {
    if(i5<0.08396324515342712){
     s0+=4883.0;
     s1+=154.0;
    } else {
     s0+=97.0;
     s1+=146.0;
    }
   }
  } else {
   if(i0<0.0692061185836792){
    if(i10<-0.0011108219623565674){
     s0+=721.0;
     s1+=93.0;
    } else {
     s0+=86.0;
     s1+=187.0;
    }
   } else {
    if(i55<1.0003736019134521){
     s0+=87.0;
     s1+=1849.0;
    } else {
     s0+=105.0;
     s1+=62.0;
    }
   }
  }
 }
} else {
 if(i25<0.00020090542966499925){
  if(i15<1.0084927082061768){
   if(i43<-1.686515679466538e-05){
    s1+=3.0;
   } else {
    s0+=165.0;
   }
  } else {
   if(i53<0.0008156928233802319){
    s0+=12.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i0<0.0584568977355957){
   if(i48<-0.0012385547161102295){
    if(i28<1.5682398080825806){
     s0+=14.0;
     s1+=315.0;
    } else {
     s0+=47.0;
     s1+=48.0;
    }
   } else {
    if(i39<0.002058641519397497){
     s0+=14.0;
     s1+=30.0;
    } else {
     s0+=101.0;
     s1+=9.0;
    }
   }
  } else {
   if(i44<0.01686345785856247){
    if(i18<6.139278411865234e-06){
     s0+=113.0;
     s1+=142.0;
    } else {
     s0+=70.0;
     s1+=1753.0;
    }
   } else {
    if(i23<0.9979894161224365){
     s0+=28.0;
     s1+=588.0;
    } else {
     s0+=6.0;
     s1+=8661.0;
    }
   }
  }
 }
}
if(i2<0.08504641056060791){
 if(i23<1.0041193962097168){
  if(i25<0.0002816393389366567){
   if(i12<1.0034301280975342){
    if(i36<1.0598037242889404){
     s0+=40996.0;
    } else {
     s0+=10946.0;
     s1+=223.0;
    }
   } else {
    if(i7<-4.619138780981302e-05){
     s1+=24.0;
    } else {
     s0+=53.0;
     s1+=8.0;
    }
   }
  } else {
   if(i33<0.001430551870726049){
    if(i7<-1.903667907754425e-05){
     s0+=164.0;
     s1+=638.0;
    } else {
     s0+=6225.0;
     s1+=855.0;
    }
   } else {
    if(i8<0.0007435083389282227){
     s0+=9831.0;
     s1+=294.0;
    } else {
     s0+=386.0;
     s1+=230.0;
    }
   }
  }
 } else {
  if(i7<-5.633815089822747e-05){
   if(i12<1.0015087127685547){
    if(i11<1.0404514074325562){
     s0+=40.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=56.0;
    }
   } else {
    if(i56<0.0076257288455963135){
     s0+=7.0;
     s1+=607.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i0<0.060036659240722656){
    if(i54<-0.0024386048316955566){
     s0+=17.0;
     s1+=26.0;
    } else {
     s0+=473.0;
     s1+=4.0;
    }
   } else {
    if(i33<0.0007581195677630603){
     s0+=2.0;
     s1+=75.0;
    } else {
     s0+=62.0;
    }
   }
  }
 }
} else {
 if(i4<0.9965430498123169){
  if(i59<0.9997245073318481){
   if(i57<7.98721521277912e-05){
    s0+=477.0;
   } else {
    if(i1<-0.0010061562061309814){
     s0+=64.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i45<0.09655529260635376){
    if(i5<0.09720498323440552){
     s0+=82.0;
     s1+=2.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i22<0.02359146997332573){
     s0+=37.0;
     s1+=29.0;
    } else {
     s0+=13.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i12<1.003000020980835){
   if(i17<0.0016505375970155){
    if(i56<0.0036989450454711914){
     s0+=246.0;
     s1+=181.0;
    } else {
     s0+=318.0;
     s1+=21.0;
    }
   } else {
    if(i17<0.00488361855968833){
     s0+=415.0;
     s1+=1413.0;
    } else {
     s0+=121.0;
     s1+=2725.0;
    }
   }
  } else {
   if(i1<0.0005222558975219727){
    if(i7<-6.547372322529554e-05){
     s0+=5.0;
     s1+=181.0;
    } else {
     s0+=83.0;
     s1+=201.0;
    }
   } else {
    if(i4<1.004461407661438){
     s0+=46.0;
     s1+=1156.0;
    } else {
     s0+=6.0;
     s1+=8059.0;
    }
   }
  }
 }
}
if(i3<0.07832354307174683){
 if(i6<4.178285598754883e-05){
  if(i9<1.0412344932556152){
   if(i60<-0.0012782514095306396){
    if(i38<0.0009645923273637891){
     s0+=1185.0;
     s1+=351.0;
    } else {
     s0+=2923.0;
     s1+=31.0;
    }
   } else {
    if(i4<1.0025334358215332){
     s0+=55485.0;
     s1+=230.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i22<0.014951077289879322){
    if(i0<0.06548243761062622){
     s0+=5982.0;
     s1+=234.0;
    } else {
     s0+=591.0;
     s1+=159.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=402.0;
     s1+=800.0;
    } else {
     s0+=2370.0;
     s1+=316.0;
    }
   }
  }
 } else {
  if(i4<1.0016002655029297){
   if(i39<0.012339616194367409){
    if(i48<-0.006320327520370483){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=241.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i64<0.00046090484829619527){
    if(i32<1.2314128875732422){
     s1+=200.0;
    } else {
     s0+=175.0;
     s1+=39.0;
    }
   } else {
    if(i54<0.0033290982246398926){
     s0+=34.0;
     s1+=817.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3548056813306175e-05){
  if(i16<0.9980716705322266){
   if(i6<-8.019804954528809e-05){
    if(i44<0.017717182636260986){
     s1+=1.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=70.0;
   }
  } else {
   if(i3<0.10101276636123657){
    if(i49<0.01450890302658081){
     s0+=99.0;
     s1+=1196.0;
    } else {
     s0+=280.0;
     s1+=34.0;
    }
   } else {
    if(i64<0.00013506217510439456){
     s0+=72.0;
     s1+=287.0;
    } else {
     s0+=218.0;
     s1+=11932.0;
    }
   }
  }
 } else {
  if(i8<-0.0004054605960845947){
   s0+=397.0;
  } else {
   if(i31<0.06130579113960266){
    if(i18<-0.00034177303314208984){
     s0+=16.0;
    } else {
     s0+=8.0;
     s1+=154.0;
    }
   } else {
    if(i57<3.2820305932546034e-05){
     s0+=449.0;
     s1+=36.0;
    } else {
     s0+=197.0;
     s1+=170.0;
    }
   }
  }
 }
}
if(i4<1.002378225326538){
 if(i13<1.0081498622894287){
  if(i3<0.08023625612258911){
   if(i56<-0.002064615488052368){
    if(i18<-0.00029036402702331543){
     s0+=2987.0;
     s1+=109.0;
    } else {
     s0+=2927.0;
     s1+=904.0;
    }
   } else {
    if(i11<1.0406912565231323){
     s0+=58002.0;
     s1+=399.0;
    } else {
     s0+=4277.0;
     s1+=505.0;
    }
   }
  } else {
   if(i40<-0.00014027953147888184){
    if(i19<1.398578405380249){
     s0+=406.0;
     s1+=22.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i49<0.01340341567993164){
     s0+=205.0;
     s1+=1438.0;
    } else {
     s0+=577.0;
     s1+=618.0;
    }
   }
  }
 } else {
  if(i64<0.0006036193808540702){
   if(i3<0.09597423672676086){
    if(i56<0.003754556179046631){
     s0+=281.0;
     s1+=216.0;
    } else {
     s0+=555.0;
     s1+=6.0;
    }
   } else {
    if(i59<1.0003435611724854){
     s0+=139.0;
     s1+=981.0;
    } else {
     s0+=132.0;
     s1+=43.0;
    }
   }
  } else {
   if(i0<0.03255307674407959){
    s0+=31.0;
   } else {
    if(i17<0.0034041069447994232){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=694.0;
    }
   }
  }
 }
} else {
 if(i6<6.216764450073242e-05){
  if(i7<-4.331633317633532e-05){
   if(i10<-0.00024837255477905273){
    if(i0<0.13107934594154358){
     s0+=62.0;
     s1+=41.0;
    } else {
     s1+=110.0;
    }
   } else {
    if(i3<0.0494500994682312){
     s0+=28.0;
     s1+=74.0;
    } else {
     s0+=6.0;
     s1+=966.0;
    }
   }
  } else {
   if(i16<1.0020099878311157){
    if(i57<1.6900394257390872e-06){
     s0+=237.0;
     s1+=32.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    s1+=52.0;
   }
  }
 } else {
  if(i13<1.005810260772705){
   if(i4<1.0045669078826904){
    if(i44<0.01912989839911461){
     s0+=68.0;
     s1+=98.0;
    } else {
     s1+=291.0;
    }
   } else {
    if(i0<0.005251765251159668){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i25<0.00016129329742398113){
    s0+=4.0;
   } else {
    if(i17<0.005661102943122387){
     s0+=15.0;
     s1+=1005.0;
    } else {
     s0+=1.0;
     s1+=7419.0;
    }
   }
  }
 }
}
if(i4<1.0024573802947998){
 if(i2<0.0824936032295227){
  if(i58<0.0014983108267188072){
   if(i13<1.0064172744750977){
    if(i19<1.0475037097930908){
     s0+=53165.0;
     s1+=160.0;
    } else {
     s0+=7836.0;
     s1+=611.0;
    }
   } else {
    if(i71<2.4054203095147386e-05){
     s0+=14.0;
     s1+=64.0;
    } else {
     s0+=815.0;
     s1+=121.0;
    }
   }
  } else {
   if(i28<1.100754976272583){
    if(i40<-4.413723945617676e-05){
     s0+=1111.0;
     s1+=10.0;
    } else {
     s0+=584.0;
     s1+=682.0;
    }
   } else {
    if(i44<0.0486038438975811){
     s0+=5199.0;
     s1+=353.0;
    } else {
     s0+=33.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i1<-0.0008059442043304443){
   if(i42<1.423269510269165){
    if(i40<-6.347894668579102e-05){
     s0+=529.0;
     s1+=3.0;
    } else {
     s0+=74.0;
     s1+=47.0;
    }
   } else {
    if(i11<1.0431103706359863){
     s0+=75.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=120.0;
    }
   }
  } else {
   if(i46<0.05495789647102356){
    if(i71<0.0003255175251979381){
     s0+=59.0;
     s1+=2026.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i68<-0.00021990083041600883){
     s0+=509.0;
     s1+=1324.0;
    } else {
     s0+=718.0;
     s1+=366.0;
    }
   }
  }
 }
} else {
 if(i2<0.06382828950881958){
  if(i53<0.0009530502138659358){
   if(i43<-1.4695903701067436e-05){
    s1+=23.0;
   } else {
    s0+=166.0;
   }
  } else {
   if(i56<0.0029429197311401367){
    if(i27<0.004601901397109032){
     s0+=17.0;
     s1+=394.0;
    } else {
     s0+=43.0;
     s1+=66.0;
    }
   } else {
    if(i16<1.002913236618042){
     s0+=27.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<1.0096557140350342){
   if(i17<0.0022718701511621475){
    if(i71<8.449190499959514e-05){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i0<0.11708569526672363){
     s0+=84.0;
     s1+=625.0;
    } else {
     s0+=16.0;
     s1+=1760.0;
    }
   }
  } else {
   if(i2<0.06485679745674133){
    if(i46<0.025241106748580933){
     s1+=4.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=8209.0;
   }
  }
 }
}
if(i1<0.0005473494529724121){
 if(i2<0.08417624235153198){
  if(i56<-0.002229064702987671){
   if(i32<1.197464108467102){
    if(i38<0.0003400893183425069){
     s0+=884.0;
    } else {
     s0+=894.0;
     s1+=749.0;
    }
   } else {
    if(i50<-0.04657426476478577){
     s0+=549.0;
     s1+=162.0;
    } else {
     s0+=3321.0;
     s1+=69.0;
    }
   }
  } else {
   if(i9<1.0452277660369873){
    if(i47<0.026614513248205185){
     s0+=52960.0;
     s1+=113.0;
    } else {
     s0+=4692.0;
     s1+=204.0;
    }
   } else {
    if(i22<0.016885962337255478){
     s0+=4364.0;
     s1+=243.0;
    } else {
     s0+=1071.0;
     s1+=541.0;
    }
   }
  }
 } else {
  if(i68<-4.738727875519544e-05){
   if(i14<-1.7255544662475586e-05){
    if(i57<0.0001748289359966293){
     s0+=346.0;
    } else {
     s0+=8.0;
     s1+=9.0;
    }
   } else {
    if(i7<-1.3585250599135179e-05){
     s0+=416.0;
     s1+=2921.0;
    } else {
     s0+=399.0;
     s1+=254.0;
    }
   }
  } else {
   if(i7<4.715700924862176e-06){
    if(i37<0.04484441876411438){
     s0+=44.0;
     s1+=194.0;
    } else {
     s0+=277.0;
     s1+=85.0;
    }
   } else {
    if(i48<-0.011251270771026611){
     s0+=13.0;
     s1+=12.0;
    } else {
     s0+=365.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i55<0.9992470741271973){
  s0+=186.0;
 } else {
  if(i6<6.133317947387695e-05){
   if(i68<-0.0005372092127799988){
    if(i12<0.9966450929641724){
     s0+=2.0;
     s1+=52.0;
    } else {
     s1+=606.0;
    }
   } else {
    if(i34<0.0024535302072763443){
     s0+=6.0;
     s1+=538.0;
    } else {
     s0+=301.0;
     s1+=295.0;
    }
   }
  } else {
   if(i4<1.0045180320739746){
    if(i17<0.0029456496704369783){
     s0+=10.0;
    } else {
     s0+=80.0;
     s1+=768.0;
    }
   } else {
    if(i18<-0.00045627355575561523){
     s0+=2.0;
    } else {
     s0+=29.0;
     s1+=9211.0;
    }
   }
  }
 }
}
if(i13<1.0080245733261108){
 if(i5<0.07541009783744812){
  if(i1<0.000600278377532959){
   if(i60<-0.0012702345848083496){
    if(i20<0.9874517917633057){
     s0+=3595.0;
     s1+=154.0;
    } else {
     s0+=2262.0;
     s1+=899.0;
    }
   } else {
    if(i3<0.08310002088546753){
     s0+=62498.0;
     s1+=1000.0;
    } else {
     s0+=59.0;
     s1+=246.0;
    }
   }
  } else {
   if(i36<1.0533727407455444){
    s0+=57.0;
   } else {
    if(i32<1.2314128875732422){
     s1+=275.0;
    } else {
     s0+=133.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i7<-2.1756020942120813e-05){
   if(i44<0.022178035229444504){
    if(i49<0.014992207288742065){
     s0+=59.0;
     s1+=453.0;
    } else {
     s0+=236.0;
     s1+=158.0;
    }
   } else {
    if(i0<0.08581939339637756){
     s0+=26.0;
     s1+=42.0;
    } else {
     s0+=16.0;
     s1+=2137.0;
    }
   }
  } else {
   if(i12<1.0008631944656372){
    if(i29<1.027892827987671){
     s0+=14.0;
     s1+=69.0;
    } else {
     s0+=847.0;
     s1+=171.0;
    }
   } else {
    if(i43<-2.3101085844245972e-07){
     s0+=16.0;
     s1+=66.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
} else {
 if(i8<0.0005382299423217773){
  if(i40<1.7404556274414062e-05){
   if(i3<0.07772868871688843){
    if(i19<1.083398699760437){
     s0+=18.0;
     s1+=38.0;
    } else {
     s0+=209.0;
     s1+=9.0;
    }
   } else {
    if(i6<-5.8025121688842773e-05){
     s0+=25.0;
    } else {
     s0+=65.0;
     s1+=1799.0;
    }
   }
  } else {
   if(i5<0.18803882598876953){
    if(i33<0.0008606926421634853){
     s0+=103.0;
     s1+=387.0;
    } else {
     s0+=828.0;
     s1+=198.0;
    }
   } else {
    if(i18<-6.4373016357421875e-06){
     s0+=40.0;
     s1+=81.0;
    } else {
     s0+=4.0;
     s1+=428.0;
    }
   }
  }
 } else {
  if(i25<0.0001640798436710611){
   s0+=9.0;
  } else {
   if(i16<1.0027756690979004){
    if(i10<6.604194641113281e-05){
     s0+=104.0;
     s1+=232.0;
    } else {
     s1+=1414.0;
    }
   } else {
    if(i0<0.035895735025405884){
     s0+=2.0;
     s1+=32.0;
    } else {
     s0+=9.0;
     s1+=6391.0;
    }
   }
  }
 }
}
if(i0<0.08355417847633362){
 if(i4<1.0024776458740234){
  if(i9<1.0410068035125732){
   if(i39<0.000351916765794158){
    if(i45<0.07110223174095154){
     s0+=37486.0;
     s1+=3.0;
    } else {
     s0+=290.0;
     s1+=2.0;
    }
   } else {
    if(i34<0.0007494192104786634){
     s0+=3894.0;
     s1+=457.0;
    } else {
     s0+=17852.0;
     s1+=103.0;
    }
   }
  } else {
   if(i28<1.1013743877410889){
    if(i47<0.030321024358272552){
     s0+=2322.0;
     s1+=407.0;
    } else {
     s0+=425.0;
     s1+=540.0;
    }
   } else {
    if(i56<-0.006807923316955566){
     s0+=1068.0;
     s1+=277.0;
    } else {
     s0+=5981.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i1<0.000985860824584961){
   if(i57<-1.1544205335667357e-05){
    if(i17<0.003547507571056485){
     s0+=139.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i48<0.002001345157623291){
     s0+=57.0;
     s1+=266.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   }
  } else {
   if(i33<0.009046375751495361){
    if(i57<0.00012740647071041167){
     s0+=1.0;
     s1+=576.0;
    } else {
     s0+=5.0;
     s1+=53.0;
    }
   } else {
    if(i48<-0.011423647403717041){
     s0+=2.0;
     s1+=46.0;
    } else {
     s0+=45.0;
    }
   }
  }
 }
} else {
 if(i1<0.00012260675430297852){
  if(i7<-9.436449545319192e-06){
   if(i17<0.0012737081851810217){
    if(i20<0.9966837167739868){
     s0+=1.0;
     s1+=51.0;
    } else {
     s0+=114.0;
     s1+=2.0;
    }
   } else {
    if(i70<1.4307229321275372e-06){
     s0+=212.0;
     s1+=1557.0;
    } else {
     s0+=37.0;
    }
   }
  } else {
   if(i40<-0.00013622641563415527){
    s0+=388.0;
   } else {
    if(i52<1.0048775672912598){
     s0+=47.0;
     s1+=134.0;
    } else {
     s0+=388.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i7<-4.227841418469325e-05){
   if(i20<1.0071371793746948){
    if(i2<0.13240036368370056){
     s0+=118.0;
     s1+=542.0;
    } else {
     s0+=28.0;
     s1+=2034.0;
    }
   } else {
    if(i3<0.09418654441833496){
     s0+=2.0;
     s1+=510.0;
    } else {
     s1+=8572.0;
    }
   }
  } else {
   if(i46<0.05812042951583862){
    if(i52<1.0428783893585205){
     s0+=4.0;
     s1+=372.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.00463106669485569){
     s0+=260.0;
     s1+=97.0;
    } else {
     s0+=6.0;
     s1+=106.0;
    }
   }
  }
 }
}
if(i1<0.0005473494529724121){
 if(i5<0.07075154781341553){
  if(i0<0.07877224683761597){
   if(i51<0.008040107786655426){
    if(i3<0.05645415186882019){
     s0+=59609.0;
     s1+=690.0;
    } else {
     s0+=5779.0;
     s1+=503.0;
    }
   } else {
    if(i7<-1.4929071767255664e-05){
     s0+=813.0;
     s1+=445.0;
    } else {
     s0+=2152.0;
     s1+=274.0;
    }
   }
  } else {
   if(i28<1.0790932178497314){
    s0+=101.0;
   } else {
    if(i19<1.0428379774093628){
     s0+=32.0;
     s1+=9.0;
    } else {
     s0+=43.0;
     s1+=724.0;
    }
   }
  }
 } else {
  if(i22<0.028289875015616417){
   if(i7<-2.3464997866540216e-05){
    if(i28<1.255998969078064){
     s0+=18.0;
     s1+=578.0;
    } else {
     s0+=374.0;
     s1+=196.0;
    }
   } else {
    if(i17<0.004503851756453514){
     s0+=1069.0;
     s1+=157.0;
    } else {
     s0+=36.0;
     s1+=47.0;
    }
   }
  } else {
   if(i1<-0.0009742081165313721){
    if(i71<0.00023757059534545988){
     s0+=191.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=59.0;
    }
   } else {
    if(i53<0.0003556542797014117){
     s0+=95.0;
     s1+=108.0;
    } else {
     s0+=154.0;
     s1+=1666.0;
    }
   }
  }
 }
} else {
 if(i32<1.0795294046401978){
  s0+=185.0;
 } else {
  if(i6<6.216764450073242e-05){
   if(i32<1.2261788845062256){
    if(i45<0.6305439472198486){
     s1+=682.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i28<1.2648893594741821){
     s0+=158.0;
    } else {
     s0+=149.0;
     s1+=875.0;
    }
   }
  } else {
   if(i10<3.6835670471191406e-05){
    if(i22<0.03248997777700424){
     s0+=88.0;
     s1+=188.0;
    } else {
     s0+=12.0;
     s1+=725.0;
    }
   } else {
    if(i64<0.00038743269396945834){
     s0+=10.0;
     s1+=1332.0;
    } else {
     s1+=7900.0;
    }
   }
  }
 }
}
if(i3<0.07751694321632385){
 if(i65<-7.983931027411018e-06){
  if(i59<0.99757319688797){
   s0+=3.0;
  } else {
   if(i25<0.00017894848133437335){
    s0+=1.0;
   } else {
    s1+=391.0;
   }
  }
 } else {
  if(i12<1.0025529861450195){
   if(i56<-0.0017158687114715576){
    if(i50<0.030221164226531982){
     s0+=4426.0;
     s1+=972.0;
    } else {
     s0+=2054.0;
     s1+=25.0;
    }
   } else {
    if(i17<0.004339233506470919){
     s0+=57547.0;
     s1+=534.0;
    } else {
     s0+=3713.0;
     s1+=517.0;
    }
   }
  } else {
   if(i4<1.0024793148040771){
    if(i11<1.0977965593338013){
     s0+=1178.0;
     s1+=137.0;
    } else {
     s0+=24.0;
     s1+=47.0;
    }
   } else {
    if(i48<0.003052741289138794){
     s0+=119.0;
     s1+=566.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i6<7.450580596923828e-06){
  if(i55<0.9995704889297485){
   if(i70<-1.5176336773947696e-06){
    if(i35<0.0004878488543909043){
     s0+=10.0;
    } else {
     s0+=21.0;
     s1+=90.0;
    }
   } else {
    if(i43<-1.4575439308828209e-05){
     s1+=2.0;
    } else {
     s0+=420.0;
    }
   }
  } else {
   if(i63<0.025544196367263794){
    if(i62<-0.015994157642126083){
     s0+=101.0;
     s1+=280.0;
    } else {
     s0+=73.0;
     s1+=865.0;
    }
   } else {
    if(i17<0.0018765386193990707){
     s0+=406.0;
     s1+=80.0;
    } else {
     s0+=354.0;
     s1+=521.0;
    }
   }
  }
 } else {
  if(i3<0.12571337819099426){
   if(i37<0.05329570174217224){
    if(i23<0.9979081153869629){
     s0+=39.0;
     s1+=127.0;
    } else {
     s0+=62.0;
     s1+=1523.0;
    }
   } else {
    if(i33<0.0008994008530862629){
     s0+=21.0;
     s1+=153.0;
    } else {
     s0+=287.0;
     s1+=42.0;
    }
   }
  } else {
   if(i7<-4.1556420910637826e-05){
    if(i32<1.0762357711791992){
     s0+=8.0;
    } else {
     s0+=31.0;
     s1+=10129.0;
    }
   } else {
    if(i62<-0.04133585840463638){
     s0+=74.0;
     s1+=39.0;
    } else {
     s0+=8.0;
     s1+=193.0;
    }
   }
  }
 }
}
if(i0<0.0789104700088501){
 if(i19<1.0485899448394775){
  if(i1<0.0009312033653259277){
   if(i39<0.00035197578836232424){
    if(i58<0.001520416233688593){
     s0+=37955.0;
    } else {
     s0+=519.0;
     s1+=6.0;
    }
   } else {
    if(i56<-0.0017213225364685059){
     s0+=1377.0;
     s1+=236.0;
    } else {
     s0+=16221.0;
     s1+=72.0;
    }
   }
  } else {
   s1+=12.0;
  }
 } else {
  if(i65<-7.52222058508778e-06){
   if(i57<0.00012839683040510863){
    if(i25<0.00018453602388035506){
     s0+=1.0;
    } else {
     s1+=254.0;
    }
   } else {
    if(i50<-0.13204306364059448){
     s1+=3.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i4<1.0024909973144531){
    if(i36<1.1031841039657593){
     s0+=3825.0;
     s1+=1201.0;
    } else {
     s0+=9149.0;
     s1+=431.0;
    }
   } else {
    if(i30<1.0156205892562866){
     s0+=159.0;
     s1+=520.0;
    } else {
     s0+=63.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i4<1.0015729665756226){
  if(i40<-0.00013753771781921387){
   if(i17<0.006127255503088236){
    if(i25<0.0034818677231669426){
     s0+=175.0;
     s1+=30.0;
    } else {
     s0+=325.0;
    }
   } else {
    if(i27<0.0013325592735782266){
     s0+=3.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i50<0.041449785232543945){
    if(i17<0.0017844934482127428){
     s0+=187.0;
     s1+=169.0;
    } else {
     s0+=130.0;
     s1+=1713.0;
    }
   } else {
    if(i3<0.1312025487422943){
     s0+=664.0;
     s1+=164.0;
    } else {
     s0+=253.0;
     s1+=931.0;
    }
   }
  }
 } else {
  if(i1<0.0008369386196136475){
   if(i17<0.003220311366021633){
    if(i9<1.0723340511322021){
     s0+=6.0;
     s1+=149.0;
    } else {
     s0+=95.0;
     s1+=39.0;
    }
   } else {
    if(i54<0.004240661859512329){
     s0+=8.0;
     s1+=748.0;
    } else {
     s0+=56.0;
     s1+=386.0;
    }
   }
  } else {
   if(i38<0.009898757562041283){
    if(i35<0.004127082414925098){
     s0+=2.0;
     s1+=2247.0;
    } else {
     s0+=44.0;
     s1+=1106.0;
    }
   } else {
    s1+=6570.0;
   }
  }
 }
}
if(i4<1.00235915184021){
 if(i9<1.0452277660369873){
  if(i25<0.0003066366771236062){
   if(i60<-0.0021409988403320312){
    if(i40<-6.324052810668945e-05){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   } else {
    if(i17<0.004606305621564388){
     s0+=50653.0;
     s1+=122.0;
    } else {
     s0+=1538.0;
     s1+=63.0;
    }
   }
  } else {
   if(i23<0.9938340187072754){
    if(i5<0.09485048055648804){
     s0+=6897.0;
     s1+=57.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i3<0.06636711955070496){
     s0+=2949.0;
     s1+=483.0;
    } else {
     s0+=110.0;
     s1+=342.0;
    }
   }
  }
 } else {
  if(i0<0.08542478084564209){
   if(i7<-1.5883982996456325e-05){
    if(i0<0.06297570466995239){
     s0+=2118.0;
     s1+=438.0;
    } else {
     s0+=493.0;
     s1+=519.0;
    }
   } else {
    if(i56<-0.0013023614883422852){
     s0+=1213.0;
     s1+=241.0;
    } else {
     s0+=3550.0;
     s1+=115.0;
    }
   }
  } else {
   if(i14<-1.5407800674438477e-05){
    if(i42<1.4998304843902588){
     s0+=309.0;
     s1+=6.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i54<0.004095166921615601){
     s0+=202.0;
     s1+=2188.0;
    } else {
     s0+=728.0;
     s1+=1093.0;
    }
   }
  }
 }
} else {
 if(i6<3.319978713989258e-05){
  if(i53<0.0006723749684169888){
   s0+=119.0;
  } else {
   if(i65<-3.1913584734866163e-06){
    s0+=5.0;
   } else {
    if(i21<1.0065898895263672){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i22<0.02296406403183937){
   if(i36<1.1509422063827515){
    if(i9<1.0263299942016602){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=1337.0;
    }
   } else {
    if(i1<0.0009461641311645508){
     s0+=209.0;
     s1+=62.0;
    } else {
     s0+=57.0;
     s1+=1107.0;
    }
   }
  } else {
   if(i25<0.00020009232684969902){
    if(i24<1.0085594654083252){
     s1+=1.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i0<0.06267303228378296){
     s0+=38.0;
     s1+=186.0;
    } else {
     s0+=40.0;
     s1+=8499.0;
    }
   }
  }
 }
}
if(i2<0.08511286973953247){
 if(i16<1.001842975616455){
  if(i48<-0.001657634973526001){
   if(i38<0.0011291189584881067){
    if(i34<0.00039836548967286944){
     s0+=860.0;
     s1+=8.0;
    } else {
     s0+=81.0;
     s1+=474.0;
    }
   } else {
    if(i7<-3.8861504435772076e-05){
     s0+=668.0;
     s1+=153.0;
    } else {
     s0+=2046.0;
     s1+=126.0;
    }
   }
  } else {
   if(i3<0.06466388702392578){
    if(i16<1.0006437301635742){
     s0+=59345.0;
     s1+=564.0;
    } else {
     s0+=3196.0;
     s1+=302.0;
    }
   } else {
    if(i37<0.031219303607940674){
     s0+=165.0;
     s1+=367.0;
    } else {
     s0+=2098.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i18<-0.0001207590103149414){
   if(i4<1.0015270709991455){
    if(i55<1.0002193450927734){
     s0+=34.0;
     s1+=37.0;
    } else {
     s0+=509.0;
     s1+=18.0;
    }
   } else {
    if(i58<0.0029862113296985626){
     s0+=103.0;
     s1+=12.0;
    } else {
     s0+=23.0;
     s1+=137.0;
    }
   }
  } else {
   if(i35<0.0002498284447938204){
    s0+=30.0;
   } else {
    if(i61<0.9995979070663452){
     s0+=24.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=714.0;
    }
   }
  }
 }
} else {
 if(i3<0.1145142912864685){
  if(i54<0.0035596489906311035){
   if(i4<0.9956993460655212){
    if(i57<0.00019934173906221986){
     s0+=235.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=21.0;
    }
   } else {
    if(i37<0.055582195520401){
     s0+=139.0;
     s1+=1979.0;
    } else {
     s0+=132.0;
     s1+=89.0;
    }
   }
  } else {
   if(i62<-0.01892436295747757){
    if(i4<1.0069823265075684){
     s0+=547.0;
     s1+=29.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i49<0.018536388874053955){
     s0+=88.0;
     s1+=129.0;
    } else {
     s0+=50.0;
    }
   }
  }
 } else {
  if(i4<0.9957239627838135){
   if(i33<0.0030896388925611973){
    s0+=252.0;
   } else {
    s1+=55.0;
   }
  } else {
   if(i34<0.001169826602563262){
    if(i9<1.1108002662658691){
     s0+=20.0;
     s1+=272.0;
    } else {
     s0+=148.0;
    }
   } else {
    if(i3<0.16596558690071106){
     s0+=192.0;
     s1+=1814.0;
    } else {
     s0+=64.0;
     s1+=9681.0;
    }
   }
  }
 }
}
if(i1<0.000545799732208252){
 if(i3<0.07751694321632385){
  if(i19<1.0467959642410278){
   if(i36<1.0557184219360352){
    if(i60<-0.0019733011722564697){
     s0+=590.0;
     s1+=2.0;
    } else {
     s0+=41139.0;
    }
   } else {
    if(i32<1.0991880893707275){
     s0+=1969.0;
     s1+=222.0;
    } else {
     s0+=11326.0;
     s1+=32.0;
    }
   }
  } else {
   if(i34<0.0008620739099569619){
    if(i47<0.03250958025455475){
     s0+=3815.0;
     s1+=617.0;
    } else {
     s0+=553.0;
     s1+=772.0;
    }
   } else {
    if(i9<1.0401363372802734){
     s0+=4576.0;
     s1+=44.0;
    } else {
     s0+=4875.0;
     s1+=475.0;
    }
   }
  }
 } else {
  if(i49<0.014257252216339111){
   if(i14<-1.3917684555053711e-05){
    if(i18<-0.0004730522632598877){
     s0+=11.0;
     s1+=6.0;
    } else {
     s0+=287.0;
     s1+=3.0;
    }
   } else {
    if(i35<0.00031410285737365484){
     s0+=54.0;
     s1+=12.0;
    } else {
     s0+=241.0;
     s1+=2228.0;
    }
   }
  } else {
   if(i0<0.1246759295463562){
    if(i28<1.1013743877410889){
     s0+=91.0;
     s1+=40.0;
    } else {
     s0+=567.0;
     s1+=27.0;
    }
   } else {
    if(i16<0.998540461063385){
     s0+=151.0;
     s1+=2.0;
    } else {
     s0+=275.0;
     s1+=1036.0;
    }
   }
  }
 }
} else {
 if(i34<0.00036318082129582763){
  s0+=165.0;
 } else {
  if(i0<0.06511357426643372){
   if(i53<0.000972532550804317){
    if(i70<-6.001255314913578e-06){
     s1+=15.0;
    } else {
     s0+=106.0;
    }
   } else {
    if(i28<1.5682398080825806){
     s0+=22.0;
     s1+=480.0;
    } else {
     s0+=87.0;
     s1+=67.0;
    }
   }
  } else {
   if(i10<3.635883331298828e-05){
    if(i13<0.9956350326538086){
     s1+=628.0;
    } else {
     s0+=127.0;
     s1+=591.0;
    }
   } else {
    if(i16<1.0014896392822266){
     s0+=40.0;
     s1+=1328.0;
    } else {
     s0+=4.0;
     s1+=8554.0;
    }
   }
  }
 }
}
if(i0<0.08202600479125977){
 if(i1<0.0006022751331329346){
  if(i45<0.04403430223464966){
   if(i9<1.0462145805358887){
    if(i60<-0.0018330812454223633){
     s0+=130.0;
     s1+=103.0;
    } else {
     s0+=53305.0;
     s1+=218.0;
    }
   } else {
    if(i22<0.024079298600554466){
     s0+=2349.0;
     s1+=232.0;
    } else {
     s0+=83.0;
     s1+=124.0;
    }
   }
  } else {
   if(i39<0.0020226254127919674){
    if(i33<0.00041796750156208873){
     s0+=2801.0;
     s1+=45.0;
    } else {
     s0+=1920.0;
     s1+=1064.0;
    }
   } else {
    if(i44<0.061660900712013245){
     s0+=8457.0;
     s1+=258.0;
    } else {
     s0+=40.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i48<0.0020165443420410156){
   if(i43<-1.4118932085693814e-05){
    if(i54<0.0030117034912109375){
     s0+=74.0;
     s1+=903.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i60<-0.001140594482421875){
     s0+=4.0;
     s1+=19.0;
    } else {
     s0+=138.0;
     s1+=8.0;
    }
   }
  } else {
   if(i39<0.0022287333849817514){
    s1+=5.0;
   } else {
    s0+=93.0;
   }
  }
 }
} else {
 if(i44<0.023722313344478607){
  if(i7<-1.4340951565827709e-05){
   if(i49<0.015471845865249634){
    if(i50<0.10666614770889282){
     s0+=110.0;
     s1+=3313.0;
    } else {
     s0+=46.0;
     s1+=30.0;
    }
   } else {
    if(i3<0.12880998849868774){
     s0+=346.0;
     s1+=63.0;
    } else {
     s0+=128.0;
     s1+=365.0;
    }
   }
  } else {
   if(i46<0.058934152126312256){
    if(i14<-1.3381242752075195e-05){
     s0+=95.0;
     s1+=2.0;
    } else {
     s0+=26.0;
     s1+=194.0;
    }
   } else {
    if(i69<0.0035666590556502342){
     s0+=686.0;
     s1+=93.0;
    } else {
     s0+=9.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i14<-1.0877847671508789e-05){
   if(i42<1.255998969078064){
    if(i54<0.004538744688034058){
     s1+=12.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i67<0.0010876546148210764){
     s0+=163.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i19<1.0626659393310547){
    if(i42<1.2176787853240967){
     s1+=3.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i4<1.0014207363128662){
     s0+=113.0;
     s1+=1355.0;
    } else {
     s1+=8610.0;
    }
   }
  }
 }
}
if(i0<0.08299723267555237){
 if(i23<1.0041353702545166){
  if(i36<1.0557184219360352){
   if(i67<0.000468086072942242){
    s0+=42657.0;
   } else {
    if(i41<0.9999014139175415){
     s0+=386.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.1032289266586304){
    if(i45<0.04058579355478287){
     s0+=5936.0;
     s1+=569.0;
    } else {
     s0+=1981.0;
     s1+=1124.0;
    }
   } else {
    if(i17<0.02268950641155243){
     s0+=17760.0;
     s1+=562.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i8<0.0004347562789916992){
   if(i0<0.0686773955821991){
    if(i51<0.00937550701200962){
     s0+=520.0;
     s1+=18.0;
    } else {
     s0+=20.0;
     s1+=23.0;
    }
   } else {
    if(i39<0.00223919446580112){
     s0+=2.0;
     s1+=54.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   }
  } else {
   if(i64<0.0003213815507479012){
    if(i10<0.0013409256935119629){
     s0+=43.0;
     s1+=15.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i53<0.0008012548205442727){
     s0+=13.0;
     s1+=3.0;
    } else {
     s1+=598.0;
    }
   }
  }
 }
} else {
 if(i41<0.9988111257553101){
  if(i33<0.010509951040148735){
   if(i11<1.0416667461395264){
    if(i1<-0.0006414949893951416){
     s0+=96.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    s0+=303.0;
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i10<0.0004966855049133301){
   if(i22<0.021670445799827576){
    if(i37<0.04296344518661499){
     s0+=11.0;
     s1+=424.0;
    } else {
     s0+=791.0;
     s1+=239.0;
    }
   } else {
    if(i37<0.05264228582382202){
     s0+=35.0;
     s1+=2330.0;
    } else {
     s0+=362.0;
     s1+=1275.0;
    }
   }
  } else {
   if(i20<1.0090315341949463){
    if(i7<-2.199785376433283e-05){
     s0+=51.0;
     s1+=1303.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   } else {
    if(i7<-2.4693823434063233e-05){
     s1+=8550.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
}
if(i3<0.08162686228752136){
 if(i1<0.0006075501441955566){
  if(i19<1.0451585054397583){
   if(i49<-0.006172865629196167){
    if(i32<1.0703742504119873){
     s0+=603.0;
    } else {
     s0+=151.0;
     s1+=78.0;
    }
   } else {
    if(i60<-0.0013803541660308838){
     s0+=900.0;
     s1+=74.0;
    } else {
     s0+=52500.0;
     s1+=86.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i7<-1.5650597561034374e-05){
     s0+=494.0;
     s1+=861.0;
    } else {
     s0+=3519.0;
     s1+=571.0;
    }
   } else {
    if(i54<-0.0025154948234558105){
     s0+=1236.0;
     s1+=238.0;
    } else {
     s0+=9759.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i38<0.0003558988100849092){
   s0+=70.0;
  } else {
   if(i38<0.00252516265027225){
    if(i28<1.2392117977142334){
     s1+=826.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i6<8.362531661987305e-05){
     s0+=254.0;
     s1+=143.0;
    } else {
     s0+=27.0;
     s1+=290.0;
    }
   }
  }
 }
} else {
 if(i14<-1.5407800674438477e-05){
  if(i67<0.0012046521296724677){
   if(i12<0.9964486360549927){
    if(i42<1.4989960193634033){
     s0+=379.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i65<1.4948720490792766e-05){
     s0+=17.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   }
  } else {
   s1+=2.0;
  }
 } else {
  if(i7<-1.9866813090629876e-05){
   if(i2<0.11719539761543274){
    if(i66<-0.004416397772729397){
     s0+=276.0;
     s1+=115.0;
    } else {
     s0+=43.0;
     s1+=1293.0;
    }
   } else {
    if(i6<0.0008414089679718018){
     s0+=171.0;
     s1+=11675.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i29<1.0423029661178589){
    if(i1<-0.0010327696800231934){
     s0+=11.0;
    } else {
     s0+=25.0;
     s1+=265.0;
    }
   } else {
    if(i3<0.23253610730171204){
     s0+=643.0;
     s1+=173.0;
    } else {
     s0+=46.0;
     s1+=142.0;
    }
   }
  }
 }
}
if(i8<0.00043660402297973633){
 if(i13<1.0081918239593506){
  if(i3<0.07742848992347717){
   if(i60<-0.0012702345848083496){
    if(i1<-0.00028264522552490234){
     s0+=4066.0;
     s1+=299.0;
    } else {
     s0+=1348.0;
     s1+=577.0;
    }
   } else {
    if(i25<0.00030670693377032876){
     s0+=52415.0;
     s1+=140.0;
    } else {
     s0+=9010.0;
     s1+=713.0;
    }
   }
  } else {
   if(i33<0.0004515123728197068){
    if(i55<1.0001134872436523){
     s0+=314.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   } else {
    if(i7<-1.0358950021327473e-05){
     s0+=309.0;
     s1+=1544.0;
    } else {
     s0+=514.0;
     s1+=180.0;
    }
   }
  }
 } else {
  if(i2<0.08955976366996765){
   if(i19<1.083398699760437){
    if(i28<1.2392117977142334){
     s0+=24.0;
     s1+=277.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i28<1.4401047229766846){
     s0+=708.0;
     s1+=41.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i4<0.9965106248855591){
    if(i34<0.007275339215993881){
     s0+=35.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i10<0.00036793947219848633){
     s0+=238.0;
     s1+=668.0;
    } else {
     s0+=37.0;
     s1+=1465.0;
    }
   }
  }
 }
} else {
 if(i12<1.0023939609527588){
  if(i2<0.12470141053199768){
   if(i20<1.0061590671539307){
    if(i19<1.067292332649231){
     s0+=627.0;
     s1+=32.0;
    } else {
     s0+=567.0;
     s1+=272.0;
    }
   } else {
    if(i60<0.00379335880279541){
     s0+=7.0;
     s1+=74.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i30<1.0014764070510864){
    if(i46<0.08695057034492493){
     s1+=138.0;
    } else {
     s0+=43.0;
     s1+=68.0;
    }
   } else {
    if(i30<1.0040931701660156){
     s0+=1.0;
     s1+=37.0;
    } else {
     s1+=763.0;
    }
   }
  }
 } else {
  if(i4<1.00160813331604){
   if(i55<1.0002367496490479){
    if(i9<1.0819685459136963){
     s0+=73.0;
     s1+=24.0;
    } else {
     s0+=16.0;
     s1+=120.0;
    }
   } else {
    if(i19<1.1558804512023926){
     s0+=214.0;
     s1+=9.0;
    } else {
     s0+=60.0;
     s1+=72.0;
    }
   }
  } else {
   if(i7<-4.312358214519918e-05){
    if(i18<-0.00010353326797485352){
     s0+=105.0;
     s1+=561.0;
    } else {
     s0+=25.0;
     s1+=9062.0;
    }
   } else {
    if(i27<0.000168694241438061){
     s0+=52.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=207.0;
    }
   }
  }
 }
}
if(i2<0.08504378795623779){
 if(i4<1.002474308013916){
  if(i69<0.0007542890962213278){
   if(i13<1.007720708847046){
    if(i2<0.07199308276176453){
     s0+=59313.0;
     s1+=512.0;
    } else {
     s0+=1459.0;
     s1+=226.0;
    }
   } else {
    if(i35<0.0009221368236467242){
     s0+=113.0;
     s1+=215.0;
    } else {
     s0+=581.0;
     s1+=33.0;
    }
   }
  } else {
   if(i0<0.056721240282058716){
    if(i4<0.9964169263839722){
     s0+=4013.0;
     s1+=42.0;
    } else {
     s0+=2964.0;
     s1+=703.0;
    }
   } else {
    if(i24<0.9901576042175293){
     s0+=187.0;
     s1+=333.0;
    } else {
     s0+=516.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i56<0.0029335618019104004){
   if(i36<1.1353518962860107){
    if(i28<1.0757708549499512){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=593.0;
    }
   } else {
    if(i50<-0.024545341730117798){
     s0+=17.0;
     s1+=252.0;
    } else {
     s0+=156.0;
     s1+=45.0;
    }
   }
  } else {
   if(i34<0.002362530678510666){
    s1+=18.0;
   } else {
    if(i26<1.0250880718231201){
     s0+=104.0;
     s1+=7.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i10<0.00023871660232543945){
  if(i6<-4.9054622650146484e-05){
   if(i34<0.0038687689229846){
    if(i43<-2.1550686142290942e-06){
     s0+=22.0;
     s1+=10.0;
    } else {
     s0+=540.0;
     s1+=4.0;
    }
   } else {
    if(i3<0.09479796886444092){
     s0+=113.0;
     s1+=34.0;
    } else {
     s0+=10.0;
     s1+=126.0;
    }
   }
  } else {
   if(i22<0.023219171911478043){
    if(i37<0.045946478843688965){
     s0+=54.0;
     s1+=378.0;
    } else {
     s0+=698.0;
     s1+=190.0;
    }
   } else {
    if(i37<0.05256327986717224){
     s0+=21.0;
     s1+=1889.0;
    } else {
     s0+=277.0;
     s1+=989.0;
    }
   }
  }
 } else {
  if(i59<0.9966706037521362){
   s0+=16.0;
  } else {
   if(i8<-0.0003751516342163086){
    s0+=14.0;
   } else {
    if(i33<0.0005813968018628657){
     s0+=59.0;
     s1+=163.0;
    } else {
     s0+=99.0;
     s1+=10049.0;
    }
   }
  }
 }
}
if(i0<0.08145254850387573){
 if(i1<0.0006018579006195068){
  if(i51<0.007392185740172863){
   if(i28<1.0856719017028809){
    s0+=37458.0;
   } else {
    if(i38<0.0010135129559785128){
     s0+=7041.0;
     s1+=1184.0;
    } else {
     s0+=20980.0;
     s1+=178.0;
    }
   }
  } else {
   if(i0<0.04171547293663025){
    if(i1<-0.000379711389541626){
     s0+=1786.0;
     s1+=79.0;
    } else {
     s0+=1305.0;
     s1+=342.0;
    }
   } else {
    if(i7<-4.6854900574544445e-05){
     s0+=25.0;
     s1+=155.0;
    } else {
     s0+=521.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i25<0.0001893652806757018){
   if(i3<0.061760127544403076){
    if(i43<-1.7703256162349135e-05){
     s1+=1.0;
    } else {
     s0+=105.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i71<0.00013753936218563467){
    if(i70<-4.290749529900495e-06){
     s0+=61.0;
     s1+=769.0;
    } else {
     s0+=43.0;
     s1+=17.0;
    }
   } else {
    if(i69<0.0014633366372436285){
     s0+=130.0;
     s1+=14.0;
    } else {
     s0+=20.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i16<0.9985270500183105){
  if(i34<0.008475136011838913){
   if(i7<-4.4379528844729066e-05){
    if(i2<0.08984971046447754){
     s1+=6.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    s0+=474.0;
   }
  } else {
   if(i64<0.0007816117140464485){
    s0+=8.0;
   } else {
    if(i45<0.04903445765376091){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i39<0.008155247196555138){
   if(i1<0.00043714046478271484){
    if(i29<1.0633456707000732){
     s0+=291.0;
     s1+=1470.0;
    } else {
     s0+=743.0;
     s1+=553.0;
    }
   } else {
    if(i18<-9.447336196899414e-05){
     s0+=77.0;
     s1+=194.0;
    } else {
     s0+=65.0;
     s1+=3598.0;
    }
   }
  } else {
   if(i2<0.11352503299713135){
    if(i49<0.023490875959396362){
     s0+=6.0;
     s1+=181.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i7<-4.487336991587654e-05){
     s0+=3.0;
     s1+=7584.0;
    } else {
     s0+=39.0;
     s1+=344.0;
    }
   }
  }
 }
}
if(i15<1.0088508129119873){
 if(i60<-0.0013546645641326904){
  if(i6<1.5795230865478516e-05){
   if(i5<0.04335865378379822){
    if(i36<1.0967997312545776){
     s0+=1356.0;
     s1+=426.0;
    } else {
     s0+=3614.0;
     s1+=152.0;
    }
   } else {
    if(i4<0.9968783855438232){
     s0+=392.0;
     s1+=96.0;
    } else {
     s0+=254.0;
     s1+=669.0;
    }
   }
  } else {
   if(i56<-0.003468930721282959){
    if(i6<6.145238876342773e-05){
     s0+=121.0;
     s1+=506.0;
    } else {
     s0+=39.0;
     s1+=1421.0;
    }
   } else {
    if(i53<0.0007668118923902512){
     s0+=107.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i2<0.08773112297058105){
   if(i19<1.0485899448394775){
    if(i1<0.0009523630142211914){
     s0+=54264.0;
     s1+=169.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i17<0.0043481383472681046){
     s0+=6838.0;
     s1+=483.0;
    } else {
     s0+=921.0;
     s1+=489.0;
    }
   }
  } else {
   if(i19<1.050411343574524){
    if(i12<1.0001938343048096){
     s0+=226.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=16.0;
    }
   } else {
    if(i37<0.05445379018783569){
     s0+=74.0;
     s1+=937.0;
    } else {
     s0+=409.0;
     s1+=359.0;
    }
   }
  }
 }
} else {
 if(i2<0.08518528938293457){
  if(i36<1.0862454175949097){
   if(i43<-2.4935293367889244e-06){
    if(i23<0.9969539642333984){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=359.0;
    }
   } else {
    if(i55<0.999630331993103){
     s1+=2.0;
    } else {
     s0+=162.0;
    }
   }
  } else {
   if(i23<1.0078630447387695){
    if(i4<1.00419282913208){
     s0+=1497.0;
     s1+=99.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i7<-5.4409389122156426e-05){
     s1+=81.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i70<1.0989908787450986e-06){
   if(i18<3.17692756652832e-05){
    if(i22<0.02648422308266163){
     s0+=394.0;
     s1+=233.0;
    } else {
     s0+=106.0;
     s1+=1018.0;
    }
   } else {
    if(i18<0.00011211633682250977){
     s0+=106.0;
     s1+=769.0;
    } else {
     s0+=26.0;
     s1+=8649.0;
    }
   }
  } else {
   s0+=119.0;
  }
 }
}
if(i2<0.08355042338371277){
 if(i4<1.00270414352417){
  if(i50<-0.02901419997215271){
   if(i6<1.1324882507324219e-05){
    if(i33<0.0004481823998503387){
     s0+=794.0;
     s1+=15.0;
    } else {
     s0+=1350.0;
     s1+=441.0;
    }
   } else {
    if(i38<0.00026246599736623466){
     s0+=33.0;
    } else {
     s0+=114.0;
     s1+=212.0;
    }
   }
  } else {
   if(i19<1.0469921827316284){
    if(i48<-0.0015489459037780762){
     s0+=583.0;
     s1+=59.0;
    } else {
     s0+=53569.0;
     s1+=151.0;
    }
   } else {
    if(i0<0.06548488140106201){
     s0+=11250.0;
     s1+=696.0;
    } else {
     s0+=1005.0;
     s1+=526.0;
    }
   }
  }
 } else {
  if(i34<0.0020958702079951763){
   s1+=563.0;
  } else {
   if(i51<0.013769631274044514){
    if(i32<1.257381796836853){
     s0+=143.0;
     s1+=8.0;
    } else {
     s0+=74.0;
     s1+=65.0;
    }
   } else {
    if(i57<0.0002754823653958738){
     s0+=7.0;
     s1+=221.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i16<0.9985139966011047){
  if(i39<0.03782590478658676){
   if(i7<-3.81538993678987e-05){
    if(i55<0.9998181462287903){
     s0+=31.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i59<1.002600073814392){
     s0+=666.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i10<0.0005777180194854736){
   if(i52<1.003997564315796){
    if(i17<0.0010432156268507242){
     s0+=28.0;
     s1+=23.0;
    } else {
     s0+=55.0;
     s1+=1780.0;
    }
   } else {
    if(i7<-1.4055839528737124e-05){
     s0+=545.0;
     s1+=2470.0;
    } else {
     s0+=585.0;
     s1+=196.0;
    }
   }
  } else {
   if(i36<1.0545052289962769){
    s0+=1.0;
   } else {
    if(i7<-2.2337351765600033e-05){
     s0+=29.0;
     s1+=9881.0;
    } else {
     s0+=35.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i3<0.07745891809463501){
  if(i56<-0.002234131097793579){
   if(i25<0.0023317872546613216){
    if(i39<0.00039137486601248384){
     s0+=802.0;
     s1+=8.0;
    } else {
     s0+=1033.0;
     s1+=829.0;
    }
   } else {
    if(i4<1.000800609588623){
     s0+=3091.0;
     s1+=70.0;
    } else {
     s0+=26.0;
     s1+=73.0;
    }
   }
  } else {
   if(i16<1.001981496810913){
    if(i21<1.0081864595413208){
     s0+=59387.0;
     s1+=505.0;
    } else {
     s0+=526.0;
     s1+=137.0;
    }
   } else {
    if(i64<0.0008414286421611905){
     s0+=11.0;
     s1+=140.0;
    } else {
     s0+=142.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i1<-0.0007114410400390625){
   if(i13<0.9798299670219421){
    if(i54<0.008101344108581543){
     s1+=12.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i6<-5.9038400650024414e-05){
     s0+=193.0;
    } else {
     s0+=41.0;
     s1+=11.0;
    }
   }
  } else {
   if(i36<1.0562636852264404){
    s0+=32.0;
   } else {
    if(i0<0.0928526520729065){
     s0+=61.0;
     s1+=246.0;
    } else {
     s0+=7.0;
     s1+=711.0;
    }
   }
  }
 }
} else {
 if(i23<1.001354694366455){
  if(i0<0.10798388719558716){
   if(i53<0.0018025885801762342){
    if(i42<1.094580888748169){
     s0+=961.0;
     s1+=316.0;
    } else {
     s0+=2547.0;
     s1+=128.0;
    }
   } else {
    if(i49<0.008246660232543945){
     s0+=325.0;
     s1+=490.0;
    } else {
     s0+=704.0;
     s1+=80.0;
    }
   }
  } else {
   if(i62<-0.023547766730189323){
    if(i64<0.0004329672665335238){
     s0+=524.0;
     s1+=182.0;
    } else {
     s0+=123.0;
     s1+=834.0;
    }
   } else {
    if(i40<-0.00024831295013427734){
     s0+=35.0;
    } else {
     s0+=56.0;
     s1+=1631.0;
    }
   }
  }
 } else {
  if(i3<0.0635494589805603){
   if(i64<0.0005559739074669778){
    if(i42<1.121701955795288){
     s0+=48.0;
     s1+=162.0;
    } else {
     s0+=334.0;
     s1+=54.0;
    }
   } else {
    if(i1<0.00010120868682861328){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=295.0;
    }
   }
  } else {
   if(i1<0.0008349418640136719){
    if(i55<0.9998985528945923){
     s0+=8.0;
     s1+=892.0;
    } else {
     s0+=197.0;
     s1+=450.0;
    }
   } else {
    if(i2<0.08551308512687683){
     s0+=8.0;
     s1+=152.0;
    } else {
     s0+=11.0;
     s1+=8582.0;
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
