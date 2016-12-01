function [ Vdata ] = Vad( Adata )
% Voice activity detection
%   original audio is input and active parts is output
Vdata = 0 ;
for i=1 : length(Adata)-12
    temp = (Adata(i) + Adata(i+1) + Adata(i+2) + Adata(i+3) + ...
            Adata(i+4) + Adata(i+5) + Adata(i+6) + Adata(i+7) + ...
            Adata(i+8) + Adata(i+9) + Adata(i+10) + Adata(i+11))/ 12 ;
    if(temp > 0.0140)
        start = i ;
        Vdata = Adata(start : end);
        break ;
    end
end

end
