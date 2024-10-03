% Definir la matriz de coeficientes A y el vector de términos independientes b
% Este sistema tiene 3 ecuaciones con 3 incógnitas:
% 2x + 3y + z = 1
% 4x + y + 2z = 2
% 3x + 2y + 3z = 3

A = [2, 3, 1;   % Coeficientes de la primera ecuación
     4, 1, 2;   % Coeficientes de la segunda ecuación
     3, 2, 3];  % Coeficientes de la tercera ecuación

b = [1; 2; 3];  % Términos independientes

% Mostrar las matrices A y b
disp('Matriz de coeficientes A:');
disp(A);
disp('Vector de términos independientes b:');
disp(b);

% Resolver el sistema Ax = b usando la función de MATLAB
% x será el vector que contiene las soluciones para las incógnitas
x = A\b;

% Mostrar la solución
disp('La solución del sistema es:');
disp(x);

% Verificar la solución sustituyendo x en la ecuación original
% Calculamos Ax para ver si se aproxima a b
b_calculado = A * x;

% Mostrar la verificación
disp('El resultado de Ax es:');
disp(b_calculado);

% Comparar el vector calculado con el vector b
if all(abs(b_calculado - b) < 1e-10
    disp('La solución es correcta.');
else
    disp('La solución no es correcta.');
end
