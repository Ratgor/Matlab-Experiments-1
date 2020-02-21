function varargout = evex(varargin)
% the Evolution Experiments Examples function 

    try

        varargout = {'mai8n'};
        
        for i = 1 : nargin
            varargout{end+1} = varargin{i};
        end

        disp(varargout)

        
        %fid = fopen('evex.bin','wb');
        %fwrite(fid, varargout);
        writetable(cell2table(varargout),'evex_out.csv')
        
    catch
        disp('exception')
    end

end