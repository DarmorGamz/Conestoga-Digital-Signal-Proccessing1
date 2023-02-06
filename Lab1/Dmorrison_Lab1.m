# Clear Registers.
clear;

# Declare Default Signal (Excerise A)
y0 = [0 0 0 0 0 0 1 2 3 4 0 0 0 0]

# Declare index and length vars outside FOR loop for speed.
arrayLength = length(y0);
index = 1; indexPositionFromZero = -3;

# Run Signal through System.
for n = indexPositionFromZero:arrayLength+indexPositionFromZero-1,
  # Horizontal Scale.
  x(index) = n;

  # Excerise B.
  if ((index+indexPositionFromZero) > 1) # Don't get points if out of index.
    if ((y0(index) - y0(index+indexPositionFromZero)) != 0)
      y1(index) = y0(index) - y0(index+indexPositionFromZero);
    else
      y1(index) = NaN;
    endif
  else
    y1(index) = NaN;
  endif

  # Excerise C.
  y2(index) = 0.5*y0(index);

  # Excerise D.
  y3(index) = y0(arrayLength-index+1);

  # Increment Index.
  index++;
end

# Plot System Output.
figure;
subplot(4,2,1);
scatter(x, y0);
title("discrete-time signal");
xlabel("x(n)");
ylabel("y(n)");
subplot(4,2,2);
plot(x, y0);
title("discrete-time signal");
xlabel("x(n)");
ylabel("y(n)");

subplot(4,2,3);
scatter(x, y1);
title("signal shifting and subtraction");
xlabel("x(n)");
ylabel("y(n) - y(n-3)");
subplot(4,2,4);
plot(x, y1);
title("signal shifting and subtraction");
xlabel("x(n)");
ylabel("y(n) - y(n-3)");

subplot(4,2,5);
scatter(x, y2);
title("scaling");
xlabel("x(n)");
ylabel("0.5*y(n)");
subplot(4,2,6);
plot(x, y2);
title("scaling");
xlabel("x(n)");
ylabel("0.5*y(n)");

subplot(4,2,7);
scatter(x, y3);
title("folding");
xlabel("x(n)");
ylabel("y(-n)");
subplot(4,2,8);
plot(x, y3);
title("folding");
xlabel("x(n)");
ylabel("y(-n)");








