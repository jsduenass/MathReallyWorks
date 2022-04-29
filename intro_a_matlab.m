% Todas las lineas que empiezan con el simbolo porcentaje son comentarios y 
% no influyen en el programa

%---  Introdución a Matlab ---


%% limpieza de espacio de trabajo
   close('all'), clear, clc  

%% 1. Variables y tipos de datos 
    entero=5                       % a Matlab no le gustan los enteros
    entero= int8(5)                
    decimal= 5.89
    booleano= true
    texto_char= 'cadena de caracteres'
    texto_string= "esto es un string"        
    % constantes del programa
    pi
    i                             % imaginario 
    j                             % tambien cuenta como imaginario
    Inf
    
%%   a) Vectores
    vector = [4 , 54 , 13]
    v = [1:20]                    % vector de 1 a 20
    A = [3:2:17]                  % vector de 3 a 17 con paso de 2
    vector2=[ 4, 6 ,7]
    vector3= linspace(0, 20, 11)  % vector inicia en 0 termina en 20 compuesto por 11 elementos  (tamaño)   
  
%%   b) Matrices 
    Matriz = [ 1, 2 ; 3, 4 ]      % punto-y-coma indica nueva fila
    Matriz_unos = ones(3, 2)      % ones(filas, columnas)  <- matriz de unos 
    Matriz_ceros = zeros(4,2)     % matriz de ceros
    Identidad = eye(4)            % matriz identidad
   
%% 2. Operaciones basicas
    % suma resta multiplicacion y division
    suma=2+5            ,   resta =4.5-7 
    multipliacion= 7*5  ,   division= 14/7   % varias operaciones en una linea gracias a la coma
    inf-inf
    inf^inf
    
    residuo = mod(13,5)          % residuo de la division
    potencia = 7^3
    logaritmo = log (10)         % logaritmo natural
    log_decimal = log10(10)
    
    unir= strcat ("hola", ' mama ya se como programar en Matlab'  )            % concatenar strings
    numero=3
    texto=num2str(numero)        % transformacion de numero a string
    unir= strcat("El numero es: ", texto)
    nombre= "pedro"
    fprintf("hola %s como estas \n",nombre)
    
    
       
%%   a) operaciones de vectores
           
    % elemento en determinada posición
    primer_elemento= vector(1)
    %diferencia entre char y string
    texto_char(1)           
    texto_string(1)
    ultimo_elemento= vector(end)
    rango= vector3(2:6)    % devuelve los elementos que se encontraban en las pociones de 2 a 6
    
    invertir = flip(vector)
    trasponer = vector'
    concatenar= [vector , vector2]
    tamano=size(vector)
    suma_elementos= sum(vector)
    
    vector2=[ 4, 6 ,7]

    resta =vector-vector2                 % OJO:  vectores del mismo tamaño
    multiplicacion = vector .*vector2     % OJO: punto producto multiplicacion termino a termino      
    m2=vector * vector2'                  % fila por columna    rta size: 1x1  
    m3=vector' * vector2                  % culmna por fila     rta size: 3x3
    
%%   b) operaciones de matriciales
    A=[1,2;3,4]
    B= 5*eye(2)                   % producto por escalar
    Inversa = A^-1                % inversa de la matriz A
    producto=A*B                  % producto matricial
    producto_punto=A.*B           % producto termino a termino
    A^2
    A.^2
    determiante= det(A)
    M= 10*rand(4,5)             % numeros aleatorios de 0 a 1
    M(2,:)                       % segunda fila
    M(:, end)                     % ultima columna
    int8(M)                     % Paso a entero de una matriz
    
%%   c) operaciones logicas
    prop_A= true                  % proposición A
    prop_B= false
    and = prop_A & prop_B 
    or = prop_A | prop_B
    not= ~prop_A 
    igualacion = (prop_A == prop_B) 
                  % = igual de asignación 
                  % == igual de comparación

%% 3. Estructuras de control
%%   a) if (decision)
     numero=8
      % es par ?
     if(mod(numero,2)==0)           % residuo igual a 0
        disp('el numero es par')
     end 
     
    
      
    % if anidado
    % ¿cuánto falta para graduarme?
    disciplinar=3;              % creditos pendientes por cursar
    fundamental=5;
    libre_eleccion=4;
    creditos_pendientes= disciplinar + fundamental + libre_eleccion;
    
    %materia
    nota=2.95
    tipologia="disciplinar";
    creditos_materia=3;
    
    if(nota>3.0)
       disp("Aprobo la materia")
       
      if(tipologia=="disciplinar")
        disciplinar=disciplinar -creditos_materia;
      elseif(tipologia=="fundamental")
        fundamental=disciplinar-creditos_materia;
      elseif(tipologia=="libre eleccion")
        libre_eleccion=disciplinar-creditos_materia;  
      end
    else 
      disp("Reprobo la materia")
    end
   
    if(creditos_pendientes==0)
      disp("A terminado materias")
    end

    
%%  b) ciclos

    % for() -> cuando tengo que repetir una acción un número DEFINIDO de veces
    %contar numeros de 1 a 10
    
    for(i=1:length(vector))
        % operaciones sobre cada un o de los elementos del vector
        disp(vector(i)) 
    end  
    
    % while () -> ejecuto las veces que sea necesario hasta que la condicion sea vuelva falsa
    % encuentre el proximo numero primo
    number=1589;
    breakMaltab=false;

    if  breakMaltab
        condition= true;            
        while(condition)                            % ejecuta mientras se cumpla la condición
          number=number+1;
          disp(number)
          %condition= ~isprime(number);              % no es primo
        end
    end

    disp(number)
   
    % encuentre el epsilon de maquina: numero más pequeño que cumple que
    %   1+ epsilon>1
    % hint: linear search divide by two
    number=1;
    condition= true;            
    while(condition)                            % ejecuta mientras se cumpla la condición
      number=number/2;
      condition= 1<number+1;              
    end
    disp(number)
   
    
%% 4. Interación con el usuario
%%      entradas y salidas
      entrada=input('ingrese una cadena de texto: ','s')
      
      number=input('ingrese un numero: ')
      
      salida=number+2
      disp('La funcion disp permite mostrar valores  en linea de comandos')
      disp(salida)          % salida sencilla
      disp("salida "+" concatenada ")
      fprintf("tiene una mayor funcionalidad permite establecer el formato de salida de una varaible \n")
      nombre="Carlos"
      edad= 35
      peso=89.754;
      lista=["pedro", "pablo" ,  "juanita"; 78.3, 83.7, 68.4];
      fprintf("mi nombre es %s mucho gusto \n", nombre)             %formato string
      fprintf("mi nombre es %s \t tengo %d \n", nombre,edad)        %formato decimal
      fprintf("mi nombre es %s peso %1.4f kg \n ", nombre,peso)      %formato decimal
      fprintf("mi nombre es %s peso %1.2f kg \n ", lista)      %formato decimal
      
      % formato %s: string    %d: decimal   \n: nueva linea  \t: tabular
      %         %n.mf flontante     n: ?  m: numero de decimales           
      
%%      graficas
      x=linspace(0,2*pi, 100);
      y= sin(x);
      plot(x,y)
      title('titulo de la grafica')
      xlabel('eje x')
      ylabel('eje y')
      
      y2= cos(2*x+ pi/3);
      
      figure()            % nueva ventana de grafica
      h=plot(x,y)
      hold on
      plot(x,y2)
      hold off
      
      figure()
      subplot(2,2,1)      % subplot(filas, columnas, posición)
        plot(x,y)
      subplot(2,2,2)
        plot(x,y2)
      subplot(2,2,3)
        plot(x,y)
        hold on
        plot(x,y2)
        hold off
      subplot(2,2,4)  
        plot(x, y+y2)  
       
      
%% 5. Funciones
% pueden ser importadas de otros archivos siempre y cuando esten en la
% misma carpeta o se deben dejar al final del script
    
     
medirAprendizaje()

%%
x0=5; y0=3; x_prima= 3; y_prima= 8; theta=pi/6;
[X,Y]=transform (3,5,x_prima,y_prima,theta) % transformación de coordenadas


 

%% 6. Aplicación practica 
    
    %% a)
    % Escribe una función que reciba como argumentos las coordenadas 
    % de un punto(x,y)del plano y devuelva un número (1,2,3 o 4) 
    % que indique en qué cuadrante del plano se encuentra.
    % El programa debe devolver 0 si el punto se encuentra 
    % sobre algunode los ejes coordenados.
    
    %% b)
    % resolver sistema de ecuaciones
    %  x + 2y -  z + 3t = -8
    % 2x +    + 2z -  t = 13
    % -x +  y +  z -  t = 8
    % 3x + 3y -  z + 2t = -1

    %% c)    
    % Problema: Una empresa ha gastado 1500 euros 
    % en comprar un móvil a cada uno de sus 25 empleados. 
    % Su compañía telefónica ofertó dos modelos diferentes, 
    % uno a 75 euros y otro a 50 euros. 
    % ¿Cuántos móviles de cada modelo compró?
    
    %% d) 
    % cree una función que genere un número aleatorio entre (por ejemplo) 1 y 25, 
    % y le pida repetidamente alusuario que escriba un número en el teclado, 
    % hasta que lo acierte.
    
 

%% Funciones 

function medirAprendizaje() 
  
   aprendizaje_logrado=input('voy entendiendo Matlab? ingresese 1 para SI y 0 para NO  ')
      if(aprendizaje_logrado) 
        disp('Felicidadez practica para afianzar tus conceptos')
    
      else 
        disp(' No te preocupes con un poco de practica lo dominaras, si tienes dudas preguntale al tutor')
      end  
end 
 
% funciones con multiples salidas
function [X,Y]=transform (x0,y0,x_prima,y_prima,theta)
    R=[cos(theta),sin(theta); -sin(theta),cos(theta) ];       % matriz de rotación 

    v=[x0;y0]+R*[x_prima;y_prima];
    X=v(1);
    Y=v(2);
end