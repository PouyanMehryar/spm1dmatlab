    

clear;  clc



%(0) Load data:
dataset    = spm1d.data.uv1d.anova3onerm.SPM1D_ANOVA3ONERM_2x2x2();
% dataset    = spm1d.data.uv1d.anova3onerm.SPM1D_ANOVA3ONERM_2x3x4();
[Y,A,B,C,SUBJ]  = deal(dataset.Y, dataset.A, dataset.B, dataset.C, dataset.SUBJ);


%(1) Conduct SPM analysis:
spmlist   = spm1d.stats.anova3onerm(Y, A, B, C, SUBJ);
spmilist  = spmlist.inference(0.05);
disp_summ(spmilist)
close all
spmilist.plot();



% %(2) Plot:
% close all
% for k = 1:spmilist.nEffects
%     subplot(3,3,k)
%     spmi = spmilist(k);
%     spmi.plot()
%     title( spmi.effect )
% end
%

