function out = sigmoidPrime(z)
    out = exp(-z) ./ ((1 + exp(-z)).^2);