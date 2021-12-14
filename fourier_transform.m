function fourier_transform(data, sampling_freq)
%FOURIER_TRANSFORM Takes in a set of data, performs a fourier transform and
%plots the result

L = length(data);

% FFT 
temp = abs(fft(data) / L);
fft_y = temp(1 : L/2+1);
fft_y(2:end - 1) = 2* fft_y(2:end - 1);

% Frequecny space
fft_x = ((0:(L/2)) / L) * sampling_freq;

% Plot FT
figure
plot(fft_x, fft_y)
xlabel('Freq (Hz)')
ylabel('Amplitude')
title('Fourier Transform')
grid on
end

