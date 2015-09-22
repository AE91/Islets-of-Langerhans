function [ fileData ] = loadData(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[filename,pathname] = uigetfile('*.csv;');
filepath=fullfile(pathname,filename);
% This is my changes
s = struct;
a = readtable(filepath,'ReadVariableNames',true);


s.ecg = a;
s.filename = filename;
% More changes
fileData = s;



end

