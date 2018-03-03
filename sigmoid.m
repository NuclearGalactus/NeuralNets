function out = sigmoid(z)
    out = 1 ./ (1+exp(-z));