a = 0:0.01:(12*pi);
d = 0.01;
max = 12*pi*100;
x1 = zeros(length(a));
y1 = zeros(length(a));
x2 = zeros(length(a));
y2 = zeros(length(a));

for i=1:1:length(a)
    x1(i) = fx(3,a(i),1.5,0.4);
    y1(i) = fy(1,a(i),1.5,0.4);
    x2(i) = fx(-3,a(i),1,0.04);
    y2(i) = fy(1,a(i),1,0.04);
end

hold on % prevents clearing the plotting space when calling plot
plot(x1,y1);
plot(x2,y2);



