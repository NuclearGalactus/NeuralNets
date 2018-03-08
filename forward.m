function output = forward(x, mw1,mw2)
z2 = x * mw1;
a2 = sigmoid(z2);
z3 = a2 * mw2;
output = sigmoid(z3);