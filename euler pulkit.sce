
clear 
clf
h = 0.2
x = [0:h:1]
y = zeros(size(x,2))
y(1) = 0
for n = 2:1:size(x,2)
    y(n) = y(n-1) + h*(x(n-1) + 1)
end
disp("y",y,"x",x)
plot2d(x,y,1)
yt = x^2/2 +x 
disp("y true", yt)
yerror=yt-y'
disp("y error", yerror)
plot2d(x,yt,3)
legend(["y approx", "y true"])
xlabel("x")
ylabel("y euler 0.1")
