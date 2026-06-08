% =========================================================
% ALGORITHM DEVELOPMENT
% =========================================================

% -------------------------
% TRAPEZOIDAL RULE
% -------------------------
% Step 1: Define function f(r) = 1/r
% Step 2: Define limits a and b
% Step 3: Choose number of intervals n
% Step 4: Compute step size h = (b - a) / n
% Step 5: Compute first and last terms
% Step 6: Loop through interior points
% Step 7: Compute final integral value
% Step 8: Display result

% -------------------------
% SIMPSON'S RULE
% -------------------------
% Step 1: Define function f(r)
% Step 2: Ensure n is even
% Step 3: Compute step size h = (b - a) / n
% Step 4: Compute first and last terms
% Step 5: Add odd-indexed terms multiplied by 4
% Step 6: Add even-indexed terms multiplied by 2
% Step 7: Compute final integral value


% CODE IMPLEMENTATION:

clc 
clear 
close all 
% Function definition 
f = @(r) 1./r; 
% Limits 
a = 0.02; 
b = 0.2; 
% Number of intervals 
n = 10; 
h = (b-a)/n; 
x = a:h:b; 
y = f(x); 
%% Trapezoidal Rule 
trap = y(1) + y(end); 
for i = 2:n 
trap = trap + 2*y(i); 
end 
trap_result = (h/2)*trap; 
%% Simpson Rule 
if mod(n,2)~=0 
error('n must be even for Simpson rule') 
end 
simp = y(1) + y(end); 
for i=2:2:n 
simp = simp + 4*y(i); 
end 
4 
for i=3:2:n-1 
simp = simp + 2*y(i); 
end 
simp_result = (h/3)*simp; 
exact = log(b/a); 
fprintf('Exact Solution = %f\n',exact) 
fprintf('Trapezoidal Result = %f\n',trap_result) 
fprintf('Simpson Result = %f\n',simp_result)
