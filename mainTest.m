load('x_data.mat');
load('y_data.mat');
numberOfInputs = 2;
numberOfHidden = 3;
numberOfOutputs = 1;
learningRate = 0.1;
w1 = zeros(numberOfInputs,numberOfHidden);
w2 = zeros(numberOfHidden,numberOfOutputs);
y_data = y_data / 9;
x_data = x_data / 9;
costs = zeros(1,100);
colormap jet;
cmap = colormap;
figure;
hold on;
lr = linspace(0,1,100);
for lrc = 1:100
    learningRate = lr(lrc);
    w1 = zeros(numberOfInputs,numberOfHidden);
w2 = zeros(numberOfHidden,numberOfOutputs);
for i = 1:100
z2 = x_data * w1;
a2 = sigmoid(z2);
z3 = a2 * w2;
yhat = sigmoid(z3);
cost = sum(0.5 * (y_data - yhat).^2);
dEdW2 = a2 * ((-(y_data - yhat)) .*  sigmoidPrime(z3));
dEdW1 =  x_data' * (-(y_data - yhat) .* sigmoidPrime(z3)) * w2'  * sigmoidPrime(z2);
w1 = w1 - learningRate * dEdW1;
w2 = w2 - learningRate * dEdW2;
costs(1,i) = cost;
end


plot(costs, 'Color', cmap(ceil((lrc/100) * 64),:));
end
hold off;