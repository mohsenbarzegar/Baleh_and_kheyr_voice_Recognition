%% ------------------ In the name of GOD ------------------
%   title  : HW_3_TA (Multi media)
%            "bale" & "kheyr" recognition
%   author : mohsen barzegar
%   student num :9223014
%   email  : mohsenbarzegar94@gmail.com

clear all ; clc ; close all ;

%% Add paths for RastaMat
addpath('Libraries/rastamat');

%% Read training-set
file_addr_No = '.\Dataset_Train_Final\No\';
file_addr_YES = '.\Dataset_Train_Final\Yes\';

% Read "No" files
No_feats = double(zeros(13,1));
for j = 1 : 12
    for i = 1 : 10
        file_name = strcat(file_addr_No , 'p' , int2str(j) , ' (' , int2str(i) , ').wav') ; 
        [No, Fs] = audioread(file_name);
        No_feats = [No_feats  MFCC(No(:,1),Fs)];
    end
end

% Read "Yes" files
Yes_feats = double(zeros(13,1));
for j = 1 : 12
    for i = 1 : 10
        file_name = strcat(file_addr_YES , 'p' , int2str(j) , ' (' , int2str(i) , ').wav') ; 
        [Yes, Fs] = audioread(file_name);
        Yes_feats =  [Yes_feats MFCC(Yes(:,1),Fs)];
    end
end

%% GMM

GMModel_No = fitgmdist(No_feats',5,'RegularizationValue',0.9);

GMModel_Yes = fitgmdist(Yes_feats',5,'RegularizationValue',0.9);

save('Models','GMModel_No','GMModel_Yes');
