    

clear;  clc


%(0) Load data:
dataset    = spm1d.data.uv1d.anova2onerm.SPM1D_ANOVA2ONERM_2x3();
[Y,A,B,SUBJ] = deal(dataset.Y, dataset.A, dataset.B, dataset.SUBJ);


%(0a) Create region(s) of interest (ROI):
roi        = false( 1, size(Y,2) );
roi(61:end) = true;


%(1) Conduct SPM analysis:
spmlist   = spm1d.stats.anova2onerm(Y, A, B, SUBJ, 'roi', roi);
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
    

