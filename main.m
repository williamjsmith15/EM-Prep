% Setup of Workspace
format compact;
clear;
clc;
close all;




%------FT------
% Load Data
load('dataset.mat');

% Plot current data
figure
plot(t, dataset)
xlabel('Time (s)')
ylabel('Amplitude')
title('FT Data')
grid on

%Run function
fourier_transform(dataset, Fs);



%------Cross Correlation------
% Load Data
load('echodataset.mat');

%Plot Current Data
figure
tiledlayout(2,1)

% Input Plot
nexttile
plot(time_input, input)
title('Input')
xlabel('Time (s)')
ylabel('Amplitude')
grid on
% Echo Plot
nexttile
plot(time_echo, echo)
title('Echo')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

% Run function
cross_correlate(input, echo, Fs)




