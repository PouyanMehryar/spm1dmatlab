function [SnPM] = ttest2(yA, yB, varargin)
%__________________________________________________________________________
% Copyright (C) 2016 Todd Pataky
% $Id: ttest.m 1 2016-01-04 16:07 todd $


[yA,yB]   = deal( spm1d.util.flatten(yA), spm1d.util.flatten(yB) );
if isvector(yA)
    perm  = spm1d.stats.nonparam.permuters.PermuterTtest2_0D(yA, yB);
else
    perm  = spm1d.stats.nonparam.permuters.PermuterTtest2_1D(yA, yB);
end
SnPM      = spm1d.stats.nonparam.snpm.build_snpm('T', perm);
