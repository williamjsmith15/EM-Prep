function cross_correlate(signal, echo, sample_freq)
%CROSS_CORRELATE Takes signal and echo and computes the time between the 2
%signals

% Perform cross correlation
[Rmm, lags] = xcorr(signal, echo);

Rmm = Rmm(lags>0);
lags = lags(lags>0);

% Plot
figure
plot(lags/sample_freq, Rmm)
xlabel('Lag (s)')
ylabel('Cross-Correlation')
title('Cross Correlation')


end

