clear;clc % Comparison DCT and DFT
f1=0.1;
SIG1 = sin(2*pi*f1*[1:20]);
spectral_DFT = abs(fft(SIG1));
subplot(3,2,1)
sSIG1=stem(SIG1,'k'); sSIG1.MarkerSize=8;  sSIG1.LineWidth=1;
title(['input signal x[n]=sin(2*',num2str(f1),'*\pi*n)'],'FontSize',14)
subplot(3,2,3)
sDFT=stem(spectral_DFT); sDFT.MarkerSize=8;  sDFT.LineWidth=1;
title(['DFT: X_F[k]'],'FontSize',14)
subplot(3,2,5)
spectral_DCT=myODCT(SIG1);
sDCT = stem(spectral_DCT); sDCT.MarkerSize=8;  sDCT.LineWidth=1;
title(['DCT: X_C[k]'],'FontSize',14)

f2=0.132;
SIG2 = sin(2*pi*f2*[1:20]);
spectral_DFT2 = abs(fft(SIG2));
subplot(3,2,2)
sSIG2=stem(SIG2,'k'); sSIG2.MarkerSize=8;  sSIG2.LineWidth=1;
title(['input signal x[n]=sin(2*',num2str(f2),'*\pi*n)'],'FontSize',14)
subplot(3,2,4)
sDFT2=stem(spectral_DFT2); sDFT2.MarkerSize=8;  sDFT2.LineWidth=1;
title(['DFT: X_F[k]'],'FontSize',14)
subplot(3,2,6)
spectral_DCT2=myODCT(SIG2);
sDCT2 = stem(spectral_DCT2); sDCT2.MarkerSize=8;  sDCT2.LineWidth=1;
title(['DCT: X_C[k]'],'FontSize',14)


spectral_ODCT=myDCT(SIG1);
%built_in_DCT= dct(SIG1);
sig1_reconstruct = myIDCT(spectral_ODCT);
%sig1_reconstruct = idct(built_in_DCT);
figure()
plot(SIG1 ,'k','LineWidth',1);hold on;
plot(sig1_reconstruct,'--','LineWidth',1)
