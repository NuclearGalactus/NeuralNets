%%
ITERATIONS = 1000;
SCALARLR = 3;
ldEdW2 = zeros(ITERATIONS,1);
ldEdW1 = zeros(ITERATIONS,1);
load('y_data.mat');
load('x_data.mat');

setup
%y_data = y_data / 100;
%x_data = x_data ./ max(x_data);
costs = zeros(1,ITERATIONS);
for i = 1:ITERATIONS
%colormap jet;
%cmap = colormap;
%predicted value with forwad prop

z2 = x_data * w1;
a2 = sigmoid(z2);
z3 = a2 * w2;
yhat = sigmoid(z3);
cost = sum(0.5 * (y_data - yhat).^2);
%partial derivatives of cost function
dEdW2 = a2 * ((-(y_data - yhat)) .*  sigmoidPrime(z3));
ldEdW2(i,1) = mean(dEdW2);
dEdW1 =  x_data' * (-(y_data - yhat) .* sigmoidPrime(z3)) * w2'  * sigmoidPrime(z2);
ldEdW1(i,1) =dEdW1(1);
%update weights
w1 = w1 - SCALARLR * dEdW1;
w2 = w2 - SCALARLR * dEdW2;
% %find numerical gradient for verification
% epsilon = .001;
% testW1 = w1 + epsilon;
% testW2 = w2 + epsilon;
% cost1 = forward(x_data,testW1,testW2);
% testW1 = w1 - epsilon;
% testW2 = w2 - epsilon;
% cost2 = forward(x_data,testW1,testW2);
% gradient = (cost2 - cost1)/(2 * epsilon);
costs(i) = cost;
end
plot(costs);
xlabel('Iterations');
ylabel('Cost');
