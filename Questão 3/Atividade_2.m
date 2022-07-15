clear all; close all; clc

load('amostras_exemplo.mat','x')
fs = 4;
N = length(x);
n = 0 : N - 1; % índices de tempo
stem(n, x)
grid on;
xlabel('Índice de tempo n')
ylabel('x[n]')

t = linspace(0, (N - 1)/fs, 10000);
[xc] = shannon(x, fs, t);

figure;
stem(n * 1/fs, x);
hold on;
plot(t, xc, 'r')
grid on;
xlabel('Tempo t (ms)')
ylabel('xc(t)')
