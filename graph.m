%%
xvals = linspace(0,1,10);
yvals = linspace(0,1,10);
zvals = zeros(10,10);
for xs = 1:length(xvals)
    for ys = 1:length(yvals) 
       zvals(xs,ys) = forward([xvals(xs) yvals(ys)],w1,w2); 
        
    end
    
end
figure;
plot(xvals,yvals,zvals);