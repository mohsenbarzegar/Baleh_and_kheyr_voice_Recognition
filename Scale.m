function [ Sdata ] = Scale( data )
%Scale data

maximum = max(data) ;
coef = 1/maximum * 1 *.5
Sdata = coef*data;
end

