function f = fun(Y)
    deltaX = 6.2832/(200);
    deltaY = Y(2:end)-Y(1:end-1);
   
    f = sum(sum(sqrt(deltaX.^2+deltaY.^2)./(sqrt(Y(1:end-1))+sqrt(Y(2:end))).*deltaX,1),2)
 
end