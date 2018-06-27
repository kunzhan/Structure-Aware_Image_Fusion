clear;
close all
addpath(genpath(pwd));
I1 = rgb2gray(imread('source241.jpg'));
I2 = rgb2gray(imread('source242.jpg'));
J(:,:,1) = I1;
J(:,:,2) = I2;

tic
F_echo_dtf = IJF(I1,I2);
toc
Q_echo_dtf = Qp_ABF(I1, I2, F_echo_dtf)