    

clear;  clc


%(0) Load data:
dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_2x2();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_2x3();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_3x3();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_3x4();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_3x5();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_4x4();
% dataset    = spm1d.data.uv1d.anova2rm.SPM1D_ANOVA2RM_4x5();
[Y,A,B,SUBJ] = deal(dataset.Y, dataset.A, dataset.B, dataset.SUBJ);


%(1) Conduct SPM analysis:
spmlist   = spm1d.stats.anova2rm(Y, A, B, SUBJ);
spmlisti  = spmlist.inference(0.05);


%(2) Plot: 
close all
titles = {'Main effect A', 'Main effect B', 'Interaction AB'};
for k = 1:spmlist.n
    subplot(2,2,k)
    spmi = spmlisti.SPMs{k};
    plot(spmi)
    title(titles{k})
end

