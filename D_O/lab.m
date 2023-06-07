close all;
clc;
clear;

FontSize = 10;
filename1 = '/users/q/source/repos/D_O/results.txt';
filename2 = '/users/q/source/repos/D_O/results2.txt';
filename3 = '/users/q/source/repos/D_O/results2_2.txt';
filename4 = '/users/q/source/repos/D_O/results3.txt';
filename5 = '/users/q/source/repos/D_O/result4.txt';
Data = importdata( [ filename1 ] );
time1   = Data(:, 1);
V1   = Data(:, 2);

Data = importdata( [ filename2 ] );
xn   = Data(:, 1);
xnn   = Data(:, 2);

Data = importdata( [ filename3 ] );
xnl   = Data(:, 1);
xnnl   = Data(:, 2);

Data = importdata( [ filename4 ] );
r   = Data(:, 1);
A   = Data(:, 2);

Data = importdata( [ filename5 ] );
x   = Data(:, 1);
y   = Data(:, 2);

fig1 = figure('units', 'normalized', 'outerposition', [0 0 1 1]);
subplot(1, 1, 1);
scatter(time1, V1, 5, 'r', 'filled');
xlim([0 25]);

qwer=0:0.1:2.5; %Формирование массива x.
ty=qwer; %Формирование массива y.
%x=y;

fig2 = figure('units', 'normalized', 'outerposition', [0 0 1 1]);
subplot(1, 1, 1);
plot(xnl,xnnl,'LineWidth', 2.5,x,y,'LineWidth', 2.5,qwer,ty,'r', 'LineWidth', 2.5);

fig3 = figure('units', 'normalized', 'outerposition', [0 0 1 1]);
subplot(1, 1, 1);
scatter(time1, V1, 'r', 'LineWidth', 0.01);

plot(r,A,'r', 'LineWidth', 1.5);
ylim([-1 1]);
xlim([0 25]);
hold on;
grid on;
