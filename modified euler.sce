clc
clear 
clf
h = 0.2
x = [0:h:1]
y = zeros(size(x,2))
y(1) = 0
for n = 2:1:size(x,2)
    y(n) = y(n-1) + h*(x(n-1) + 1)
    yn(n)=y(n-1)+h*0.5*(x(n-1)+1+ x(n)+1)
end
disp("y",y,"x",x,"yn",yn)
plot2d(x,yn,1)
yt = x^2/2 +x 
disp("y true", yt)
yerror1=yt-y'
yerror2=yt-yn'
disp("y error1", yerror1)
disp("y error2", yerror2)
plot2d(x,yt,3)
legend(["y approx", "y true"])
xlabel("x")
ylabel("y mod euler 0.2")
