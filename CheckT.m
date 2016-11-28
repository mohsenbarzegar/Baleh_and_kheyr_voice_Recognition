function [ no , yes ] = CheckT( Adata )
% This func. Compare input data with models
% E
Fs = 16000 ;

load ('Models','GMModel_No','GMModel_Yes');

mfcc = MFCC(Adata(:,1),Fs);
n = GMModel_No.pdf(mfcc');
y = GMModel_Yes.pdf(mfcc');

no  = sum(log(n));
yes = sum(log(y));

end

