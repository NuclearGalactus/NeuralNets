%%
xvals = linspace(0,1,10);
yvals = linspace(0,1,10);
zvals = zeros(10,10);
otherzvals = zeros(10,10);
for xs = 1:length(xvals)
    for ys = 1:length(yvals) 
       zvals(xs,ys) = forward([xvals(xs) yvals(ys)],w1,w2); 
       otherzvals(xs,ys) = xvals(xs)/2  + yvals(ys)/2;
    end
end
figure;
surf(xvals,yvals,zvals);
hold on;
%surf(xvals,yvals,otherzvals);
xlabel('Input 1');
ylabel('Input 2');
zlabel('Prediction');