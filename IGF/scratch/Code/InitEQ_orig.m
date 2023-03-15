syms k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 z_1 z_2 z_3 z_4 z_5 z_6 z_7 z_8 z_1_1 z_1_2 z_1_3 z_1_4 z_1_5 z_1_6 z_1_7 z_1_8 z_2_2 z_2_3 z_2_4 z_2_5 z_2_6 z_2_7 z_2_8 z_3_3 z_3_4 z_3_5 z_3_6 z_3_7 z_3_8 z_4_4 z_4_5 z_4_6 z_4_7 z_4_8 z_5_5 z_5_6 z_5_7 z_5_8 z_6_6 z_6_7 z_6_8 z_7_7 z_7_8 z_8_8
IGF = 0;
% z_1'
dsyn(1)=k1-k2*z_1-IGF*k3*z_1+k4*z_2;
%#z_2'
dsyn(2)=IGF*k3*z_1-k2*z_2-k4*z_2-k5*z_2+k6*z_3;
% #z_3'
dsyn(3)=k5*z_2-k2*z_3-k6*z_3;
% #z_4'
dsyn(4)=-k8*z_3*z_4+k7*z_5-k8*z_3_4;
% #z_5'
dsyn(5)=k8*z_3*z_4-k7*z_5+k8*z_3_4;
% #z_6'
dsyn(6)=-k10*z_6+k9*z_5*z_7+k9*z_5_7;
% #z_7'
dsyn(7)=k10*z_6-k11*z_7-k9*z_5*z_7+k12*z_8-k9*z_5_7;
% #z_8'
dsyn(8)=k11*z_7-k12*z_8;
% #z_1_1'
dsyn(9)=k1+k2*z_1+IGF*k3*z_1+k4*z_2-2*k2*z_1_1-2*IGF*k3*z_1_1+2*k4*z_1_2;
% #z_1_2'
dsyn(10)=-IGF*k3*z_1-k4*z_2+IGF*k3*z_1_1-2*k2*z_1_2-IGF*k3*z_1_2-k4*z_1_2-k5*z_1_2+k6*z_1_3+k4*z_2_2;
% #z_1_3'
dsyn(11)=k5*z_1_2-2*k2*z_1_3-IGF*k3*z_1_3-k6*z_1_3+k4*z_2_3;
% #z_1_4'
dsyn(12)=-k8*z_4*z_1_3-k2*z_1_4-IGF*k3*z_1_4-k8*z_3*z_1_4+k7*z_1_5+k4*z_2_4;
% #z_1_5'
dsyn(13)=k8*z_4*z_1_3+k8*z_3*z_1_4-k2*z_1_5-IGF*k3*z_1_5-k7*z_1_5+k4*z_2_5;
% #z_1_6'
dsyn(14)=k9*z_7*z_1_5-k10*z_1_6-k2*z_1_6-IGF*k3*z_1_6+k9*z_5*z_1_7+k4*z_2_6;
% #z_1_7'
dsyn(15)=-k9*z_7*z_1_5+k10*z_1_6-k11*z_1_7-k2*z_1_7-IGF*k3*z_1_7-k9*z_5*z_1_7+k12*z_1_8+k4*z_2_7;
% #z_1_8'
dsyn(16)=k11*z_1_7-k12*z_1_8-k2*z_1_8-IGF*k3*z_1_8+k4*z_2_8;
% #z_2_2'
dsyn(17)=IGF*k3*z_1+k2*z_2+k4*z_2+k5*z_2+k6*z_3+2*IGF*k3*z_1_2-2*k2*z_2_2-2*k4*z_2_2-2*k5*z_2_2+2*k6*z_2_3;
% #z_2_3'
dsyn(18)=-k5*z_2-k6*z_3+IGF*k3*z_1_3+k5*z_2_2-2*k2*z_2_3-k4*z_2_3-k5*z_2_3-k6*z_2_3+k6*z_3_3;
% #z_2_4'
dsyn(19)=IGF*k3*z_1_4-k8*z_4*z_2_3-k2*z_2_4-k4*z_2_4-k5*z_2_4-k8*z_3*z_2_4+k7*z_2_5+k6*z_3_4;
% #z_2_5'
dsyn(20)=IGF*k3*z_1_5+k8*z_4*z_2_3+k8*z_3*z_2_4-k2*z_2_5-k4*z_2_5-k5*z_2_5-k7*z_2_5+k6*z_3_5;
% #z_2_6'
dsyn(21)=IGF*k3*z_1_6+k9*z_7*z_2_5-k10*z_2_6-k2*z_2_6-k4*z_2_6-k5*z_2_6+k9*z_5*z_2_7+k6*z_3_6;
% #z_2_7'
dsyn(22)=IGF*k3*z_1_7-k9*z_7*z_2_5+k10*z_2_6-k11*z_2_7-k2*z_2_7-k4*z_2_7-k5*z_2_7-k9*z_5*z_2_7+k12*z_2_8+k6*z_3_7;
% #z_2_8'
dsyn(23)=IGF*k3*z_1_8+k11*z_2_7-k12*z_2_8-k2*z_2_8-k4*z_2_8-k5*z_2_8+k6*z_3_8;
% #z_3_3'
dsyn(24)=k5*z_2+k2*z_3+k6*z_3+2*k5*z_2_3-2*k2*z_3_3-2*k6*z_3_3;
% #z_3_4'
dsyn(25)=k5*z_2_4-k8*z_4*z_3_3-k2*z_3_4-k6*z_3_4-k8*z_3*z_3_4+k7*z_3_5;
% #z_3_5'
dsyn(26)=k5*z_2_5+k8*z_4*z_3_3+k8*z_3*z_3_4-k2*z_3_5-k6*z_3_5-k7*z_3_5;
% #z_3_6'
dsyn(27)=k5*z_2_6+k9*z_7*z_3_5-k10*z_3_6-k2*z_3_6-k6*z_3_6+k9*z_5*z_3_7;
% #z_3_7'
dsyn(28)=k5*z_2_7-k9*z_7*z_3_5+k10*z_3_6-k11*z_3_7-k2*z_3_7-k6*z_3_7-k9*z_5*z_3_7+k12*z_3_8;
% #z_3_8'
dsyn(29)=k5*z_2_8+k11*z_3_7-k12*z_3_8-k2*z_3_8-k6*z_3_8;
% #z_4_4'
dsyn(30)=k8*z_3*z_4+k7*z_5+k8*z_3_4-2*k8*z_4*z_3_4-2*k8*z_3*z_4_4+2*k7*z_4_5;
% #z_4_5'
dsyn(31)=-k8*z_3*z_4-k7*z_5-k8*z_3_4+k8*z_4*z_3_4-k8*z_4*z_3_5+k8*z_3*z_4_4-k7*z_4_5-k8*z_3*z_4_5+k7*z_5_5;
% #z_4_6';
dsyn(32)=-k8*z_4*z_3_6+k9*z_7*z_4_5-k10*z_4_6-k8*z_3*z_4_6+k9*z_5*z_4_7+k7*z_5_6;
% #z_4_7'
dsyn(33)=-k8*z_4*z_3_7-k9*z_7*z_4_5+k10*z_4_6-k11*z_4_7-k8*z_3*z_4_7-k9*z_5*z_4_7+k12*z_4_8+k7*z_5_7;
% #z_4_8'
dsyn(34)=-k8*z_4*z_3_8+k11*z_4_7-k12*z_4_8-k8*z_3*z_4_8+k7*z_5_8;
% #z_5_5'
dsyn(35)=k8*z_3*z_4+k7*z_5+k8*z_3_4+2*k8*z_4*z_3_5+2*k8*z_3*z_4_5-2*k7*z_5_5;
% #z_5_6'
dsyn(36)=k8*z_4*z_3_6+k8*z_3*z_4_6+k9*z_7*z_5_5-k10*z_5_6-k7*z_5_6+k9*z_5*z_5_7;
% #z_5_7'
dsyn(37)=k8*z_4*z_3_7+k8*z_3*z_4_7-k9*z_7*z_5_5+k10*z_5_6-k11*z_5_7-k7*z_5_7-k9*z_5*z_5_7+k12*z_5_8;
% #z_5_8'
dsyn(38)=k8*z_4*z_3_8+k8*z_3*z_4_8+k11*z_5_7-k12*z_5_8-k7*z_5_8;
% #z_6_6'
dsyn(39)=k10*z_6+k9*z_5*z_7+2*k9*z_7*z_5_6+k9*z_5_7-2*k10*z_6_6+2*k9*z_5*z_6_7;
% #z_6_7'
dsyn(40)=-k10*z_6-k9*z_5*z_7-k9*z_7*z_5_6-k9*z_5_7+k9*z_7*z_5_7+k10*z_6_6-k10*z_6_7-k11*z_6_7-k9*z_5*z_6_7+k12*z_6_8+k9*z_5*z_7_7;
% #z_6_8'
dsyn(41)=k9*z_7*z_5_8+k11*z_6_7-k10*z_6_8-k12*z_6_8+k9*z_5*z_7_8;
% #z_7_7'
dsyn(42)=k10*z_6+k11*z_7+k9*z_5*z_7+k12*z_8+k9*z_5_7-2*k9*z_7*z_5_7+2*k10*z_6_7-2*k11*z_7_7-2*k9*z_5*z_7_7+2*k12*z_7_8;
% #z_7_8'
dsyn(43)=-k11*z_7-k12*z_8-k9*z_7*z_5_8+k10*z_6_8+k11*z_7_7-k11*z_7_8-k12*z_7_8-k9*z_5*z_7_8+k12*z_8_8;
% #z_8_8'
dsyn(44)=k11*z_7+k12*z_8+2*k11*z_7_8-2*k12*z_8_8;
dsyn(45) = z_8 + z_7 - 710;
dsyn(46) = z_4 - 34050;
dsyn(47) = z_8_8 - z_7_7;
Solution = solve(dsyn, [ z_1 z_2 z_3 z_4 z_5 z_6 z_7 z_8 z_1_1 z_1_2 z_1_3 z_1_4 z_1_5 z_1_6 z_1_7 z_1_8 z_2_2 z_2_3 z_2_4 z_2_5 z_2_6 z_2_7 z_2_8 z_3_3 z_3_4 z_3_5 z_3_6 z_3_7 z_3_8 z_4_4 z_4_5 z_4_6 z_4_7 z_4_8 z_5_5 z_5_6 z_5_7 z_5_8 z_6_6 z_6_7 z_6_8 z_7_7 z_7_8 z_8_8])

