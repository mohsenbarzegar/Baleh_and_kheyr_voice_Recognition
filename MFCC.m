function [ Coeff ] = MFCC( y,Fs )
%MFCC Summary of this function goes here
%   Detailed explanation goes here

Coeff = melfcc(y, Fs, 'maxfreq', Fs/2, 'numcep', 13 ...
                 , 'nbands', 13, 'fbtype', 'fcmel', 'dcttype', 1, ... 
                 'usecmp', 1, 'wintime', 0.025, 'hoptime', 0.010, ... 
                 'preemph', 0, 'dither', 1);

end

