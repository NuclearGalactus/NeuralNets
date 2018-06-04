%%
%establish initial weights
numberOfInputs = 2;
numberOfHidden = 3;
numberOfOutputs = 1;
load('x_data.mat');
load('y_data.mat');
NUM = 30;
x_data = zeros(NUM,2);
y_data = zeros(NUM,1);
for i = 1:NUM
   x_data(i,:) = [rand() rand()] / 2;
   y_data(i,:) = x_data(i,1) + x_data(i,2); 
end
save('x_data.mat','x_data');
save('y_data.mat','y_data');
w1 = rand(numberOfInputs,numberOfHidden);
w2 = rand(numberOfHidden,numberOfOutputs);