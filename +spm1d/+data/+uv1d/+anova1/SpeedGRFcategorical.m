function [self] = SpeedGRFcategorical()
self.cite = 'Pataky, T. C., Caravaggi, P., Savage, R., Parker, D., Goulermas, J., Sellers, W., & Crompton, R. (2008). New insights into the plantar pressure correlates of walking speed using pedobarographic statistical parametric mapping (pSPM). Journal of Biomechanics, 41(9), 1987?1994.';
dir0      = spm1d.data.get_matfile_path();
fnameY    = fullfile(dir0, 'ex_grf_subj000.mat');
fnameX    = fullfile(dir0, 'ex_grf_speeds_cond.mat');
self.Y    = getfield(load(fnameY), 'Y');
X         = getfield(load(fnameX), 'x');
self.A    = X(:,1);
end


