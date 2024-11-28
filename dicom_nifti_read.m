clear all;
clc;

%% DICOM READ
info=dicominfo("1-48.dcm");
Y=dicomread(info);
figure
imshow(Y,[]);

%I=dicomread('1-1.dcm');
%imshow(I,"DisplayRange",[])


%%  
V = niftiread('BraTS2021_00312_flair.nii.gz');
%info = niftiinfo('BraTS2021_01058_flair.nii.gz');

%%
V = niftiread('BraTS2021_01062_seg.nii.gz');
%info = niftiinfo('BraTS2021_00024_t1ce.nii.gz');

%%
j = 70;
refImage = V(:,:,j);
imshow(refImage,[])