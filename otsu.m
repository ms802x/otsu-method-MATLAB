%%
clc
clear all
close all
%%
%read the image
img = imread("https://images.unsplash.com/photo-1603246572041-923cb220b634?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1003&q=80");
%convert the image to gray
img = rgb2gray(img);
%build PDF(probability density function)
h=histogram(img,'Normalization','probability','binwidth',1,'BinLimits',[0,255]);
% C is the condition for the PDF (It's arbitary number )
C = 999;

%Here otsu's method starts, just apply the fourmlas in the 15min video.
for t = [1:255]
q1 = sum(h.Values(1:t));
q2 = sum(h.Values(t+1:255));
m1 = sum ([1:t].*h.Values(1:t))/q1;
m2 = sum([t+1:255].*h.Values(t+1:255))/q2;
s1 = sum(((([1:t]-m1).^2).*h.Values(1:t)))/q1;
s2 = sum(((([t+1:255]-m2).^2).*h.Values(t+1:255)))/q2;
sw = q1*s1+q2*s2;
if C > sw
C = sw; %% this is the minmum variance
thr = t; %% this is the threshold
end
end

imshowpair(img,img>thr,'montage')
