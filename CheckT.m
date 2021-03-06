function [ no , yes ] = CheckT( Adata )
% This func. Compare input data with models
% E
Fs = 16000 ;

load ('./Models.mat');
length(Adata)
tic
Adata = Vad(Adata);
% Adata =fcae Scale(Adata);
length(Adata)
mfcc = MFCC(Adata(:,1),Fs);
n = GMModel_No.pdf(mfcc');
y = GMModel_Yes.pdf(mfcc');

no  = sum(log(n));
yes = sum(log(y));
toc
end

