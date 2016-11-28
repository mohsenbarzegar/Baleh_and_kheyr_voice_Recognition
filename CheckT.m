function [ no , yes ] = CheckT( Adata )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Fs = 16000 ;

load ('Models','GMModel_No','GMModel_Yes');

mfcc = MFCC(Adata(:,1),Fs);
n = GMModel_No.pdf(mfcc');
y = GMModel_Yes.pdf(mfcc');

no  = sum(log(n))
yes = sum(log(y))

end

