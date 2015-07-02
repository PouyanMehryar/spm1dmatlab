


classdef Design
    properties
         X
         A
         J
         contrasts
    end
    methods
        function plot(self)
            ax0 = axes('position',[0.05,0.05,0.4,0.9]);
            self.plot_matrix(ax0, self.X);
            if numel(self.contrasts) > 0
                yy  = linspace(0.7, 0.05, 3);
                for i = 1:numel(self.contrasts)
                    ax  = axes('position', [0.53,yy(i),0.45,0.2]);
                    self.contrasts{i}.plot(ax)
%                     size(self.contrasts{i})
%                     self.plot_matrix(ax, self.contrasts{i});
                end
            end
           
       end
   end
   
   methods %(Access = protected)
        function XCONST = get_column_const(self)
            XCONST = ones(self.J,1);
        end
       
        function plot_matrix(~, ax, A)
%             imshow(A, [-1 1], 'initialmagnification','fit', 'parent',ax, 'border','tight');
            imagesc(A, 'parent',ax);
            set(ax, 'clim',[-1 1])
            colormap('gray')
        end

       
   end
    
end