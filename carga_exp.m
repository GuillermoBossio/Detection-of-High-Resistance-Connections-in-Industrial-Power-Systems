
% Este archivo carga los datos experimentales para luego ser analizados en
% Matlab-Simulink


% Medición de corrientes y tensiones a bornes del transformador

 a=load('Exp_Transf.txt');
 %Tiempo
 t=a(:,1);
 
 % Corrientes de fase
 ia=a(:,2)-mean(a(:,2));
 ic=a(:,3)-mean(a(:,3));
 ib=a(:,4)-mean(a(:,4));
 
 % Tensiones de fase
 va=a(:,5)-mean(a(:,5));
 vc=a(:,6)-mean(a(:,6));
 vb=a(:,7)-mean(a(:,7));

 
 
 % Medición de corrientes y tensiones a bornes del motor 
 
 b=load('Exp_Motor.txt');
 %Tiempo
 t1=b(:,1);
 %Corrientes de fase
 ia1=b(:,2)-mean(b(:,2));
 ic1=b(:,3)-mean(b(:,3));
 ib1=b(:,4)-mean(b(:,4));
 
 % Tensiones de fase
 va1=b(:,5)-mean(b(:,5));
 vc1=b(:,6)-mean(b(:,6));
 vb1=b(:,7)-mean(b(:,7));
 
 clear a b
 
 
 