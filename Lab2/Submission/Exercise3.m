clear all
close all
clc

im = double(imread('smile.png'));
A = importdata('A.txt','\t');
B = importdata('B.txt','\t');

A = A';
B = B';

M = mrdivide(B, A);