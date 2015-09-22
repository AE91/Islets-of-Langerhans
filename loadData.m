function [ fileData ] = loadData(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[filename,pathname] = uigetfile('*.csv;');
filepath=fullfile(pathname,filename);

s = struct;
a = readtable(filepath,'ReadVariableNames',true);


s.ecg = a;
s.filename = filename;

fileData = s;



end

