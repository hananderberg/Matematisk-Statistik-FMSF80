%% H1

clear        % glöm alla tidigare variabelvärden
close all    % stäng alla figurer
clc          % rensa kommandofönstret

S = input('Skriv ett heltal ');

x0 = S/2;

format long

for k = 1:10
    x = (x0 + (S/x0))/2;
    x0 = x;
    disp(x)
end 

%% H2
format long

S = input('Skriv ett heltal ');

x0 = S/2;
x1 = (x0 + (S/x0))/2;

y = 1; %%antalet varv

while abs(x1-x0)>1e-6
    x2 = (x1 + (S/x1))/2;
    x0 = x1;
    x1 = x2;
    
    y = y + 1;
    X = [x1; y];
end 

    disp(X)

    
