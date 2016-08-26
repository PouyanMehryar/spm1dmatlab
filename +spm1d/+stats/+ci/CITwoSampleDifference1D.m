%__________________________________________________________________________
% Copyright (C) 2016 Todd Pataky
% $Id: SPM0D.m 1 2016-01-04 16:07 todd $


classdef CITwoSampleDifference1D < spm1d.stats.ci.CITwoSampleDifference & spm1d.stats.ci.CI1D
    methods
        function [self]  = CITwoSampleDifference1D(spmi, mn, hstar, mu)
            self@spm1d.stats.ci.CITwoSampleDifference(spmi, mn, hstar, mu)
            self@spm1d.stats.ci.CI1D(spmi)
        end
    end
end
