%__________________________________________________________________________
% Copyright (C) 2016 Todd Pataky
% $Id: SPM0D.m 1 2016-01-04 16:07 todd $


% matlab.mixin.CustomDisplay
classdef ASnPMFiList < spm1d.stats.nonparam.snpm.ASnPMFList


    methods
        function [self] = ASnPMFiList(SnPMs, perm, varargin)
            self @ spm1d.stats.nonparam.snpm.ASnPMFList(SnPMs, perm)
            self.name         = 'SnPM{F} inference list';
        end


    end
    
    
    methods (Access = protected)

        function disp_summ_table(self)
            fprintf('Effects:\n')
            for i = 1:self.nEffects
                f  = self.SPMs{i};
                if self.dim == 0
                    fprintf('   %3s     F = %6.3f    p = %.5f\n', self.effect_labels_short{i}, f.z, f.p)
                else
                    fprintf('   %3s     F = [(1x%d) array]    h0reject = %d\n', self.effect_labels_short{i}, numel(f.z), f.df(1), f.df(2), f.h0reject)
                end
            end
        end
    
    
    end
    

end