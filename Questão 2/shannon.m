function [xc] = shannon(x, fs, t);
    Ts = 1.0 / fs;
    n = (0 : (length(x) - 1));
    xc = zeros(size(t)); % alocação de memória
    for k = 1 : length(t)
        xc(k) = sum(x .* sinc((t(k)-n * Ts) / Ts));
    end
end