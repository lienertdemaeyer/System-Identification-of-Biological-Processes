clear all
close all
clc



BW=[62.6000   79.7000   64.3000   72.1000   68.6000   65.3000   64.2000   78.3000   73.2000   66.5000   76.4000   73.6000   64.0000   71.3000   
    62.8000   79.3000   64.4000   71.4000   68.1000   65.0000   64.2000   77.5000   73.1000   65.5000   75.7000   73.6000   64.2000   71.3000
    63.0000   79.3000   64.5000   71.1000   67.9000   64.6000   64.2000   77.2000   72.9000   65.6000   75.2000   73.5000   64.7000   71.3000
    62.5000   78.3000   63.7000   69.7000   67.0000   63.8000   63.1000   75.5000   71.5000   64.7000   74.5000   72.1000   63.7000   70.3000
    60.6000   76.3000   62.4000   68.1000   65.5000   62.8000   61.2000   73.8000   69.6000   63.3000   73.2000   70.1000   62.5000   69.3000
    59.4000   75.0000   61.6000   67.3000   64.6000   62.7000   60.2000   72.1000   69.1000   62.4000   72.0000   69.1000   61.5000   67.7000
    58.1000   73.4000   60.2000   66.5000   63.4000   61.6000   58.3000   70.1000   68.0000   61.0000   69.6000   67.9000   60.1000   65.8000
    57.2000   72.5000   59.2000   65.5000   62.2000   60.7000   57.4000   68.8000   67.2000   60.3000   68.4000   67.0000   59.0000   65.0000
    56.0000   70.9000   58.2000   65.4000   61.0000   59.2000   56.1000   67.3000   66.2000   59.6000   67.0000   65.7000   58.0000   63.5000
    54.9000   69.6000   57.2000   64.5000   59.9000   58.6000   55.5000   66.0000   64.6000   58.6000   65.5000   64.6000   57.1000   62.3000
    54.3000   68.6000   56.5000   63.0000   59.0000   58.2000   54.6000   65.3000   64.1000   58.1000   64.4000   63.5000   56.4000   61.7000
    53.9000   67.8000   55.8000   60.3000   58.0000   57.2000   54.2000   64.8000   63.6000   57.7000   63.1000   62.6000   55.5000   60.6000
    53.0000   66.9000   55.0000   57.4000   57.5000   57.1000   53.2000   64.3000   64.1000   57.0000   61.9000   61.5000   54.9000   59.7000
    52.9000   66.3000   54.5000   55.1000   57.2000   56.2000   52.9000   63.8000   63.0000   57.0000   61.5000   61.0000   54.7000   59.3000
    52.1000   65.4000   53.6000   54.5000   56.3000   53.9000   52.5000   64.9000   60.4000   56.1000   60.8000   60.1000   53.9000   58.1000
    51.8000   64.8000   53.1000   55.2000   55.5000   50.7000   51.8000   64.4000   59.6000   55.8000   60.3000   58.8000   53.0000   57.7000
    51.3000   64.5000   53.3000   55.5000   54.5000   50.2000   51.3000   62.6000   59.9000   55.5000   60.0000   58.2000   52.8000   58.0000
    50.9000   63.7000   53.1000   54.1000   55.2000   50.3000   51.2000   60.6000   59.6000   54.8000   58.8000   58.2000   52.1000   56.7000
    50.4000   62.2000   51.9000   53.3000   53.7000   50.5000   50.8000   59.2000   58.0000   53.8000   58.1000   57.1000   50.8000   56.5000
    50.1000   61.4000   51.6000   54.2000   53.4000   49.9000   50.4000   58.8000   57.3000   53.4000   57.6000   56.5000   49.8000   56.0000
    50.1000   61.5000   51.8000   54.0000   53.6000   48.8000   49.6000   57.7000   57.6000   53.4000   57.4000   56.2000   49.4000   57.2000
    49.8000   60.8000   51.7000   52.7000   53.0000   47.8000   49.2000   57.3000   57.1000   53.3000   56.8000   54.6000   49.2000   55.8000
    49.5000   60.2000   51.4000   52.3000   52.8000   47.7000   48.7000   56.6000   57.5000   53.2000   56.1000   55.1000   48.4000   55.4000
    49.4000   59.6000   49.3000   53.0000   53.0000   48.8000   49.2000   56.5000   57.4000   53.0000   55.8000   55.2000   47.8000   55.4000
    49.1000   58.9000   48.4000   54.2000   51.9000   48.9000   48.7000   56.6000   57.2000   52.8000   55.3000   57.2000   48.1000   54.7000
    49.0000   59.2000   48.4000   53.8000   51.8000   48.3000   49.2000   58.2000   56.6000   52.8000   55.6000   57.9000   48.2000   53.2000
    49.1000   59.5000   49.7000   53.5000   51.9000   47.5000   49.3000   57.0000   58.1000   52.2000   55.7000   55.9000   48.0000   53.1000]

EI=[3879        3530        3650        3416        3299        3299        3879        3416    3879        3879        3187        3299        3879        3416
    3829        3480        3600        3249        2903        3137        3829        3366    3829        3829        3137        3366        3829        3366
    3896        3667        3433        3433        3433        3204        3896        3433    3896        3896        3204        3204        3896        3667
    1658        1658        1658        1658        1658        1658        1658        1658    1658        1658        1658        1658        1658        1658
    1658        1658        1658        1658        1658        1658        1658        1658    1658        1658        1658        1658        1658        1658
    1658        1658        1658        1658        1658        1585        1658        1658    1658        1658        1585        1658        1658        1585
    1658        1658        1585        1658        1658        1354        1658        1658    1658        1658        1354        1658        1658        1500
    1658        1658        1646        1658        1658        1318        1731        1804    1658        1731        1609        1658        1658        1634
    1658        1658        1658        1585        1658        1245        1743        1828    1658        1670        1658        1658        1658        1658
    1731        1658        1658        1427        1658        1233        1816        1974    1658        1658        1658        1658        1658        1658
    1816        1658        1658        1257        1658        1160        1828        2071    1658        1731        1658        1658        1658        1658
    1828        1658        1658        1233        1658        1148        1828        2010    1658        1743        1658        1658        1658        1658
    1755        1658        1658        1597        1658        1148        1755        1852    1512        1670        1658        1658        1658        1658
    1864        1658        1476        1901        1658         941        1804        1707    1427        1658        1658        1537        1658        1658
    1694        1658        1330        1998        1512         858        1682        1658    1403        1512        1658        1342        1512        1512
    1804        1658        1318        1998        1342         989        1658        1294    1622        1634        1658        1318        1488        1634
    1682        1658        1318        1852        1464        1609        1658        1148    1658        1512        1658        1464        1488        1512
    1658        1367        1172        1755        1634        1658        1658        1294    1585        1342        1367        1342        1342        1488
    1658        1318        1148        1974        1512        1512        1658        1609    1342        1318        1464        1172        1172        1318
    1658        1464        1148        1998        1634        1342        1512        1804    1585        1464        1488        1294        1439        1172
    1658        1634        1148        1852        1658        1318        1342        1828    1658        1488        1488        1172        1634        1024
    1658        1658        1148        1901        1658        1464        1537        1974    1658        1488        1488        1439        1658         858
    1658        1658        1148        1986        1658        1634        1622        1949    1658        1488        1488        1549        1658        1024
    1658        1731        1342        1998        1500        1658        1658        1998    1512        1488        1488        1646        1731         858
    1658        1816        1512        1998        1488        1512        1658        1998    1391        1488        1634        1658        1816         706
    1658        1974        1792        1998        1488        1342        1658        1852    1634        1488        1658        1561        1828        1184
    1658        1998        1828        1998        1488        1464        1658        1925    1658        1488        1658        1634        1974        1537]

%% 1. Data preparation

% a. Visualize the data and discuss your observations

figure(1)


plot(BW)
xlabel('time (weeks)')
ylabel('BW [kg]')
title('Body Weight (kg) vs time (weeks)')
xlim([1 27])
lgd= legend('participant 1','participant 2','participant 3','participant 4','participant 5','participant 6','participant 7','participant 8','participant 9','participant 10','participant 11','participant 12','participant 13','participant 14')
lgd.FontSize = 6;

figure(2)

plot(EI)
xlabel('time (weeks)')
ylabel('EI (kcal/day)')
title('Energy intake (kcal/day) vs time (weeks)')
xlim([1 27])
lgd= legend('participant 1','participant 2','participant 3','participant 4','participant 5','participant 6','participant 7','participant 8','participant 9','participant 10','participant 11','participant 12','participant 13','participant 14')
lgd.FontSize = 6;

%% Model 1
y1=BW(:,1)

u1=EI(:,1)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW1=y1(3)
y1=y1-Baseline_BW1;
Baseline_EI=u1(3)
u1=u1-Baseline_EI
% Subtract initial value for preprocessing
z1=iddata(y1,u1);

opt1=arxOptions('Focus', 'Simulation');
model=arx(z1,[1 1 0],opt1); % This is just one estimation --> check other model structures as well
y_sim1=sim(model,u1);
y1=y1+Baseline_BW1;             % Take into account that the data was preprocessed
y_sim1=y_sim1+Baseline_BW1;


%figure
%plot(y1)
%hold on 
%plot(y_sim1)
%xlabel('Sample (seconds)')
%ylabel('Heart rate (bpm)')
%legend('Measured data','Modelled data')

% Modelling CAPTAIN
y1=y1-Baseline_BW1;
rivid([y1 u1], [1 1 0 0; 4 4 10 0]);
th1=riv([y1 u1], [1 1 1 0]);
[a1, b1]=getpar(th1);
model_CAP1=idpoly(a1,b1);



y_sim_CAP1=sim(model_CAP1,u1);

y_sim_CAP1=y_sim_CAP1+Baseline_BW1;
y1=y1+Baseline_BW1;


figure (3)
plot(y1)
hold on 
plot(y_sim_CAP1)
title('Body Weight (kg) vs time (weeks) participant 1')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC1 = -1/log(-a1(2));
SSG1 = b1/sum(a1);

Rsq_CAP1 = 1 - sum((y1 - y_sim_CAP1).^2)/sum((y1 - mean(y1)).^2);
NRMSE1=goodnessOfFit(y_sim_CAP1,y1,'NRMSE')
figure(4)
resid(model_CAP1,z1)
figure(5)
iopzplot(model_CAP1)

%% Model 2
y2=BW(:,2)

u2=EI(:,2)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW2=y2(2);
y2=y2-Baseline_BW2;
Baseline_EI2=u2(2);
u2=u2-Baseline_EI2
% Subtract initial value for preprocessing
z2=iddata(y2,u2);

opt2=arxOptions('Focus', 'Simulation');
model2=arx(z2,[1 1 0],opt2); % This is just one estimation --> check other model structures as well
y_sim2=sim(model2,u2);
y2=y2+Baseline_BW2;             % Take into account that the data was preprocessed
y_sim2=y_sim2+Baseline_BW2;




% Modelling CAPTAIN
y2=y2-Baseline_BW2;
rivid([y2 u2], [1 1 0 0; 4 4 10 0]);
th2=riv([y2 u2], [1 1 0 0]);
[a2, b2]=getpar(th2);
model_CAP2=idpoly(a2,b2);



y_sim_CAP2=sim(model_CAP2,u2);

y_sim_CAP2=y_sim_CAP2+Baseline_BW2;
y2=y2+Baseline_BW2;


figure (6)
plot(y2)
hold on 
plot(y_sim_CAP2)
title('Body Weight (kg) vs time (weeks) participant 2')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC2 = -1/log(-a2(2));
SSG2 = b2/sum(a2);

Rsq_CAP2 = 1 - sum((y2 - y_sim_CAP2).^2)/sum((y2 - mean(y2)).^2);
NRMSE2=goodnessOfFit(y_sim_CAP2,y2,'NRMSE')
figure(7)
resid(model_CAP2,z2)
figure(8)
iopzplot(model_CAP2)
%% Model 3

y3=BW(:,3)

u3=EI(:,3)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW3=y3(2)
y3=y3-Baseline_BW3;
Baseline_EI3=y3(2)
u3=u3-Baseline_EI3
% Subtract initial value for preprocessing
z3=iddata(y3,u3);

opt3=arxOptions('Focus', 'Simulation');
model3=arx(z3,[1 1 0],opt3); % This is just one estimation --> check other model structures as well
y_sim3=sim(model3,u3);
y3=y3+Baseline_BW3;             % Take into account that the data was preprocessed
y_sim3=y_sim3+Baseline_BW3;
Rsq3=1-sum((y3-y_sim3).^2)/sum((y3-mean(y3)).^2);



% Modelling CAPTAIN
y3=y3-Baseline_BW3;
rivid([y3 u3], [1 1 0 0; 4 4 10 0]);
th3=riv([y3 u3], [1 1 0 0]);
[a3, b3]=getpar(th3);
model_CAP3=idpoly(a3,b3);



y_sim_CAP3=sim(model_CAP3,u3);

y_sim_CAP3=y_sim_CAP3+Baseline_BW3;
y3=y3+Baseline_BW3;


figure (9)
plot(y3)
hold on 
plot(y_sim_CAP3)
title('Body Weight (kg) vs time (weeks) participant 3')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC3 = -1/log(-a3(2));
SSG3 = b3/sum(a3);

Rsq_CAP3 = 1 - sum((y3 - y_sim_CAP3).^2)/sum((y3 - mean(y3)).^2);
NRMSE3=goodnessOfFit(y_sim_CAP3,y3,'NRMSE')
figure(10)
resid(model_CAP3,z3)
figure(11)
iopzplot(model_CAP3)
%% Model 4

% Model 4
y4=BW(:,4)

u4=EI(:,4)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW4=y4(3)
y4=y4-Baseline_BW4;
Baseline_EI4=u4(3)
u4=u4-Baseline_EI4
% Subtract initial value for preprocessing
z4=iddata(y4,u4);

opt4=arxOptions('Focus', 'Simulation');
model4=arx(z4,[1 1 0],opt4); % This is just one estimation --> check other model structures as well
y_sim4=sim(model4,u4);
y4=y4+Baseline_BW4;             % Take into account that the data was preprocessed
y_sim4=y_sim4+Baseline_BW4;
Rsq4=1-sum((y4-y_sim4).^2)/sum((y4-mean(y4)).^2);



% Modelling CAPTAIN
y4=y4-Baseline_BW4;
rivid([y4 u4], [1 1 0 0; 4 4 10 0]);
th4=riv([y4 u4], [1 1 2 0]);
[a4, b4]=getpar(th4);
model_CAP4=idpoly(a4,b4);



y_sim_CAP4=sim(model_CAP4,u4);

y_sim_CAP4=y_sim_CAP4+Baseline_BW4;
y4=y4+Baseline_BW4;


figure (12)
plot(y4)
hold on 
plot(y_sim_CAP4)
title('Body Weight (kg) vs time (weeks) participant 4')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC4 = -1/log(-a4(2));
SSG4 = b4/sum(a4);

Rsq_CAP4 = 1 - sum((y4 - y_sim_CAP4).^2)/sum((y4 - mean(y4)).^2);
NRMSE4=goodnessOfFit(y_sim_CAP4,y4,'NRMSE')
figure(13)
resid(model_CAP4,z4)
figure(14)
iopzplot(model_CAP4)
%% Model 5
y5=BW(:,5)

u5=EI(:,5)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW5=y5(1)
y5=y5-Baseline_BW5;
Baseline_EI5=u5(1)
u5=u5-Baseline_EI5
% Subtract initial value for preprocessing
z5=iddata(y5,u5);

opt5=arxOptions('Focus', 'Simulation');
model5=arx(z5,[1 1 0],opt5); % This is just one estimation --> check other model structures as well
y_sim5=sim(model5,u5);
y5=y5+Baseline_BW5;             % Take into account that the data was preprocessed
y_sim5=y_sim5+Baseline_BW5;
Rsq4=1-sum((y5-y_sim5).^2)/sum((y5-mean(y5)).^2);



% Modelling CAPTAIN
y5=y5-Baseline_BW5;
rivid([y5 u5], [1 1 0 0; 4 4 10 0]);
th5=riv([y5 u5], [1 1 0 0]);
[a5, b5]=getpar(th5);
model_CAP5=idpoly(a5,b5);



y_sim_CAP5=sim(model_CAP5,u5);

y_sim_CAP5=y_sim_CAP5+Baseline_BW5;
y5=y5+Baseline_BW5;


figure (15)
plot(y5)
hold on 
plot(y_sim_CAP5)
title('Body Weight (kg) vs time (weeks) participant 5')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC5 = -1/log(-a5(2));
SSG5 = b5/sum(a5);

Rsq_CAP5 = 1 - sum((y5 - y_sim_CAP5).^2)/sum((y5 - mean(y5)).^2);
NRMSE5=goodnessOfFit(y_sim_CAP5,y5,'NRMSE')
figure(16)
resid(model_CAP5,z5)
figure(17)
iopzplot(model_CAP5)

%% Model 6

y6=BW(:,6)

u6=EI(:,6)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW6=y6(1)
y6=y6-Baseline_BW6;
Baseline_EI6=y6(1)
u6=u6-Baseline_EI6
% Subtract initial value for preprocessing
z6=iddata(y6,u6);

opt6=arxOptions('Focus', 'Simulation');
model6=arx(z6,[1 1 0],opt6); % This is just one estimation --> check other model structures as well
y_sim6=sim(model6,u6);
y6=y6+Baseline_BW6;             % Take into account that the data was preprocessed
y_sim6=y_sim6+Baseline_BW6;
Rsq6=1-sum((y6-y_sim6).^2)/sum((y6-mean(y6)).^2);



% Modelling CAPTAIN
y6=y6-Baseline_BW6;
rivid([y6 u6], [1 1 0 0; 4 4 10 0]);
th6=riv([y6 u6], [1 1 0 0]);
[a6, b6]=getpar(th6);
model_CAP6=idpoly(a6,b6);



y_sim_CAP6=sim(model_CAP6,u6);

y_sim_CAP6=y_sim_CAP6+Baseline_BW6;
y6=y6+Baseline_BW6;


figure (18)
plot(y6)
hold on 
plot(y_sim_CAP6)
title('Body Weight (kg) vs time (weeks) participant 6')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC6 = -1/log(-a6(2));
SSG6 = b6/sum(a6);

Rsq_CAP6 = 1 - sum((y6 - y_sim_CAP6).^2)/sum((y6 - mean(y6)).^2);
NRMSE6=goodnessOfFit(y_sim_CAP6,y6,'NRMSE')
figure(19)
resid(model_CAP6,z6)
figure(20)
iopzplot(model_CAP6)
%% Model 7
y7=BW(:,7)

u7=EI(:,7)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW7=y7(2);
y7=y7-Baseline_BW7;
Baseline_EI7=u7(2);
u7=u7-Baseline_EI7
% Subtract initial value for preprocessing
z7=iddata(y7,u7);

opt7=arxOptions('Focus', 'Simulation');
model7=arx(z7,[1 1 0],opt7); % This is just one estimation --> check other model structures as well
y_sim7=sim(model7,u7);
y7=y7+Baseline_BW7;             % Take into account that the data was preprocessed
y_sim7=y_sim7+Baseline_BW7;
Rsq7=1-sum((y7-y_sim7).^2)/sum((y7-mean(y7)).^2);



% Modelling CAPTAIN
y7=y7-Baseline_BW7;
rivid([y7 u7], [1 1 0 0; 4 4 10 0]);
th7=riv([y7 u7], [1 1 0 0]);
[a7, b7]=getpar(th7);
model_CAP7=idpoly(a7,b7);



y_sim_CAP7=sim(model_CAP7,u7);

y_sim_CAP7=y_sim_CAP7+Baseline_BW7;
y7=y7+Baseline_BW7;


figure (21)
plot(y7)
hold on 
plot(y_sim_CAP7)
title('Body Weight (kg) vs time (weeks) participant 7')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC7 = -1/log(-a7(2));
SSG7 = b7/sum(a7);

Rsq_CAP7 = 1 - sum((y7 - y_sim_CAP7).^2)/sum((y7 - mean(y7)).^2);
NRMSE7=goodnessOfFit(y_sim_CAP7,y7,'NRMSE')
figure(22)
resid(model_CAP7,z7)
figure(23)
iopzplot(model_CAP7)
%% Model 8
y8=BW(:,8)

u8=EI(:,8)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW8=y8(3);
y8=y8-Baseline_BW8;
Baseline_EI8=u8(3);
u8=u8-Baseline_EI8
% Subtract initial value for preprocessing
z8=iddata(y8,u8);

opt8=arxOptions('Focus', 'Simulation');
model8=arx(z8,[1 1 0],opt8); % This is just one estimation --> check other model structures as well
y_sim8=sim(model8,u8);
y8=y8+Baseline_BW8;             % Take into account that the data was preprocessed
y_sim8=y_sim8+Baseline_BW8;
Rsq8=1-sum((y8-y_sim8).^2)/sum((y8-mean(y8)).^2);



% Modelling CAPTAIN
y8=y8-Baseline_BW8;
rivid([y8 u8], [1 1 0 0; 4 4 10 0]);
th8=riv([y8 u8], [1 1 1 0]);
[a8, b8]=getpar(th8);
model_CAP8=idpoly(a8,b8);



y_sim_CAP8=sim(model_CAP8,u8);

y_sim_CAP8=y_sim_CAP8+Baseline_BW8;
y8=y8+Baseline_BW8;


figure (24)
plot(y8)
hold on 
plot(y_sim_CAP8)
title('Body Weight (kg) vs time (weeks) participant 8')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

TC8 = -1/log(-a8(2));
SSG8 = b8/sum(a8);

Rsq_CAP8 = 1 - sum((y8 - y_sim_CAP8).^2)/sum((y8 - mean(y8)).^2);
NRMSE8=goodnessOfFit(y_sim_CAP8,y8,'NRMSE')
figure(25)
resid(model_CAP8,z8)
figure(26)
iopzplot(model_CAP8)

%% Model 9
y9=BW(:,9)

u9=EI(:,9)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW9=y9(1);
y9=y9-Baseline_BW9;
Baseline_EI9=u9(1);
u9=u9-Baseline_EI9
% Subtract initial value for preprocessing
z9=iddata(y9,u9);

opt9=arxOptions('Focus', 'Simulation');
model9=arx(z9,[1 1 0],opt9); % This is just one estimation --> check other model structures as well
y_sim8=sim(model9,u9);
y9=y9+Baseline_BW9;             % Take into account that the data was preprocessed
y_sim9=y_sim8+Baseline_BW9;
Rsq8=1-sum((y9-y_sim9).^2)/sum((y9-mean(y9)).^2);



% Modelling CAPTAIN
y9=y9-Baseline_BW9;
rivid([y9 u9], [1 1 0 0; 4 4 10 0]);
th9=riv([y9 u9], [1 1 0 0]);
[a9, b9]=getpar(th9);
model_CAP9=idpoly(a9,b9);



y_sim_CAP9=sim(model_CAP9,u9);

y_sim_CAP9=y_sim_CAP9+Baseline_BW9;
y9=y9+Baseline_BW9;


figure (27)
plot(y9)
hold on 
plot(y_sim_CAP9)
title('Body Weight (kg) vs time (weeks) participant 9')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')


% Model characteristics 

TC9 = -1/log(-a9(2));
SSG9 = b9/sum(a9);

Rsq_CAP9 = 1 - sum((y9 - y_sim_CAP9).^2)/sum((y9 - mean(y9)).^2);
NRMSE9=goodnessOfFit(y_sim_CAP9,y9,'NRMSE')
figure(28)
resid(model_CAP9,z9)
figure(29)
iopzplot(model_CAP9)

%% Model 10
y10=BW(:,10)

u10=EI(:,10)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW10=y10(3);
y10=y10-Baseline_BW10;
Baseline_EI10=u10(3);
u10=u10-Baseline_EI10
% Subtract initial value for preprocessing
z10=iddata(y10,u10);

opt10=arxOptions('Focus', 'Simulation');
model10=arx(z10,[1 1 0],opt10); % This is just one estimation --> check other model structures as well
y_sim10=sim(model10,u10);
y10=y10+Baseline_BW10;             % Take into account that the data was preprocessed
y_sim10=y_sim10+Baseline_BW10;
Rsq8=1-sum((y10-y_sim10).^2)/sum((y10-mean(y10)).^2);



% Modelling CAPTAIN
y10=y10-Baseline_BW10;
rivid([y10 u10], [1 1 0 0; 4 4 10 0]);
th10=riv([y10 u10], [1 1 0 0]);
[a10, b10]=getpar(th10);
model_CAP10=idpoly(a10,b10);



y_sim_CAP10=sim(model_CAP10,u10);

y_sim_CAP10=y_sim_CAP10+Baseline_BW10;
y10=y10+Baseline_BW10;


figure (30)
plot(y10)
hold on
plot(y_sim_CAP10)
title('Body Weight (kg) vs time (weeks) participant 10')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

TC10 = -1/log(-a10(2));
SSG10 = b10/sum(a10);

Rsq_CAP10 = 1 - sum((y10 - y_sim_CAP10).^2)/sum((y10 - mean(y10)).^2);
NRMSE10=goodnessOfFit(y_sim_CAP10,y10,'NRMSE')
figure(31)
resid(model_CAP10,z10)
figure(32)
iopzplot(model_CAP10)
%% Model 11
y11=BW(:,11)

u11=EI(:,11)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW11=y11(1);
y11=y11-Baseline_BW11;
Baseline_EI11=u11(1);
u11=u11-Baseline_EI11
% Subtract initial value for preprocessing
z11=iddata(y11,u11);

opt11=arxOptions('Focus', 'Simulation');
model11=arx(z11,[1 1 0],opt11); % This is just one estimation --> check other model structures as well
y_sim11=sim(model11,u11);
y11=y11+Baseline_BW11;             % Take into account that the data was preprocessed
y_sim11=y_sim11+Baseline_BW11;
Rsq11=1-sum((y11-y_sim11).^2)/sum((y11-mean(y11)).^2);



% Modelling CAPTAIN
y11=y11-Baseline_BW11;
rivid([y11 u11], [1 1 0 0; 4 4 10 0]);
th11=riv([y11 u11], [1 1 0 0]);
[a11, b11]=getpar(th11);
model_CAP11=idpoly(a11,b11);



y_sim_CAP11=sim(model_CAP11,u11);

y_sim_CAP11=y_sim_CAP11+Baseline_BW11;
y11=y11+Baseline_BW11;


figure (33)
plot(y11)
hold on
plot(y_sim_CAP11)
title('Body Weight (kg) vs time (weeks) participant 11')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

TC11 = -1/log(-a11(2));
SSG11 = b11/sum(a11);

Rsq_CAP11 = 1 - sum((y11 - y_sim_CAP11).^2)/sum((y11 - mean(y11)).^2);
NRMSE11=goodnessOfFit(y_sim_CAP11,y11,'NRMSE')
figure(34)
resid(model_CAP11,z11)
figure(35)
iopzplot(model_CAP11)

%% Model 12
y12=BW(:,12)

u12=EI(:,12)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW12=y12(1);
y12=y12-Baseline_BW12;
Baseline_EI12=y12(1);
u12=u12-Baseline_EI12
% Subtract initial value for preprocessing
z12=iddata(y12,u12);

opt12=arxOptions('Focus', 'Simulation');
model12=arx(z12,[1 1 0],opt12); % This is just one estimation --> check other model structures as well
y_sim12=sim(model12,u12);
y12=y12+Baseline_BW12;             % Take into account that the data was preprocessed
y_sim12=y_sim12+Baseline_BW12;




% Modelling CAPTAIN
y12=y12-Baseline_BW12;
rivid([y12 u12], [1 1 0 0; 4 4 10 0]);
th12=riv([y12 u12], [1 1 0 0]);
[a12, b12]=getpar(th12);
model_CAP12=idpoly(a12,b12);



y_sim_CAP12=sim(model_CAP12,u12);

y_sim_CAP12=y_sim_CAP12+Baseline_BW12;
y12=y12+Baseline_BW12;


figure (36)
plot(y12)
hold on
plot(y_sim_CAP12)
title('Body Weight (kg) vs time (weeks) participant 12')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

TC12 = -1/log(-a12(2));
SSG12 = b12/sum(a12);

Rsq_CAP12 = 1 - sum((y12 - y_sim_CAP12).^2)/sum((y12 - mean(y12)).^2);
NRMSE12=goodnessOfFit(y_sim_CAP12,y12,'NRMSE')
figure(37)
resid(model_CAP12,z12)
figure(38)
iopzplot(model_CAP12)

%% Model 13
y13=BW(:,13)

u13=EI(:,13)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW13=y13(3);
y13=y13-Baseline_BW13;
Baseline_EI13=y13(3);
u13=u13-Baseline_EI13
% Subtract initial value for preprocessing
z13=iddata(y13,u13);

opt13=arxOptions('Focus', 'Simulation');
model13=arx(z13,[1 1 0],opt13); % This is just one estimation --> check other model structures as well
y_sim13=sim(model13,u13);
y13=y13+Baseline_BW13;             % Take into account that the data was preprocessed
y_sim13=y_sim13+Baseline_BW13;




% Modelling CAPTAIN
y13=y13-Baseline_BW13;
rivid([y13 u13], [1 1 0 0; 4 4 10 0]);
th13=riv([y13 u13], [1 1 0 0]);
[a13, b13]=getpar(th13);
model_CAP13=idpoly(a13,b13);



y_sim_CAP13=sim(model_CAP13,u13);

y_sim_CAP13=y_sim_CAP13+Baseline_BW13;
y13=y13+Baseline_BW13;


figure (39)
plot(y13)
hold on
plot(y_sim_CAP13)
title('Body Weight (kg) vs time (weeks) participant 13')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

TC13 = -1/log(-a13(2));
SSG13 = b13/sum(a13);

Rsq_CAP13 = 1 - sum((y13 - y_sim_CAP13).^2)/sum((y13 - mean(y13)).^2);
NRMSE13=goodnessOfFit(y_sim_CAP13,y13,'NRMSE')
figure(40)
resid(model_CAP13,z13)
figure(41)
iopzplot(model_CAP13)

%% Model 14
y14=BW(:,14)

u14=EI(:,14)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW14=y14(1);
y14=y14-Baseline_BW14;
Baseline_EI14=y14(1);
u14=u14-Baseline_EI14
% Subtract initial value for preprocessing
z14=iddata(y14,u14);

opt14=arxOptions('Focus', 'Simulation');
model14=arx(z14,[1 1 0],opt14); % This is just one estimation --> check other model structures as well
y_sim14=sim(model14,u14);
y14=y14+Baseline_BW14;             % Take into account that the data was preprocessed
y_sim14=y_sim14+Baseline_BW14;




% Modelling CAPTAIN
y14=y14-Baseline_BW14;
rivid([y14 u14], [1 1 0 0; 4 4 10 0]);
th14=riv([y14 u14], [1 1 0 0]);
[a14, b14]=getpar(th14);
model_CAP14=idpoly(a14,b14);



y_sim_CAP14=sim(model_CAP14,u14);

y_sim_CAP14=y_sim_CAP14+Baseline_BW14;
y14=y14+Baseline_BW14;
Rsq_CAP14 = 1 - sum((y14 - y_sim_CAP14).^2)/sum((y14 - mean(y14)).^2);

figure (42)
plot(y14)
hold on
plot(y_sim_CAP14)
title('Body Weight (kg) vs time (weeks) participant 14')
xlabel('Time (weeks)')
ylabel('Body Weight (kg)')
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

TC14 = -1/log(-a14(2));
SSG14 = b14/sum(a14);

Rsq_CAP14 = 1 - sum((y14 - y_sim_CAP14).^2)/sum((y14 - mean(y14)).^2);
NRMSE14=goodnessOfFit(y_sim_CAP14,y14,'NRMSE')
figure(43)
resid(model_CAP14,z14)
figure(44)
iopzplot(model_CAP14)

%% summary of model characteristics

TC=[TC1;TC2;TC3;TC4;TC5;TC6;TC7;TC8;TC9;TC10;TC11;TC12;TC13;TC14]
SSG=[nonzeros(SSG1);SSG2;SSG3;nonzeros(SSG4);SSG5;SSG6;SSG7;nonzeros(SSG8);SSG9;SSG10;SSG11;SSG12;SSG13;SSG14]
Rsq_CAP=[Rsq_CAP1;Rsq_CAP2;Rsq_CAP3;Rsq_CAP4;Rsq_CAP5;Rsq_CAP6;Rsq_CAP7;Rsq_CAP8;Rsq_CAP9;Rsq_CAP10;Rsq_CAP11;Rsq_CAP12;Rsq_CAP13;Rsq_CAP14]
a_parameters=[a1;a2;a3;a4;a5;a6;a7;a8;a9;a10;a11;a12;a13;a14]
b_parameters=[nonzeros(b1);b2;b3;nonzeros(b4);b5;b6;b7;nonzeros(b8);b9;b10;b11;b12;b13;b14]


a_averaged=mean(a_parameters)
b_averaged=mean(b_parameters)
   
%% averaged model 1

y1=BW(:,1)

u1=EI(:,1)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW1=y1(3)
y1=y1-Baseline_BW1;
Baseline_EI=u1(3)
u1=u1-Baseline_EI

% Modelling CAPTAIN

a1_averaged=[1 -0.9488]
b1_averaged=[0.00048213]

model_CAP1_averaged=idpoly(a1_averaged,b1_averaged);



y_sim_CAP1_averaged=sim(model_CAP1_averaged,u1);

y_sim_CAP1_averaged=y_sim_CAP1_averaged+Baseline_BW1;
y1=y1+Baseline_BW1;


figure (45)
plot(y1,'LineWidth',2.0)
hold on 
plot(y_sim_CAP1_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 1','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 


Rsq_CAP1_averaged = 1 - sum((y1 - y_sim_CAP1_averaged).^2)/sum((y1 - mean(y1)).^2);

%% averaged model 2
y2=BW(:,2)

u2=EI(:,2)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW2=y2(2);
y2=y2-Baseline_BW2;
Baseline_EI2=u2(2);
u2=u2-Baseline_EI2

% Modelling CAPTAIN

a2_averaged=[1 -0.9488]
b2_averaged=[0.00048213]

model_CAP2_averaged=idpoly(a2_averaged,b2_averaged);



y_sim_CAP2_averaged=sim(model_CAP2_averaged,u2);

y_sim_CAP2_averaged=y_sim_CAP2_averaged+Baseline_BW2;
y2=y2+Baseline_BW2;

figure(46)
plot(y2,'LineWidth',2.0)
hold on 
plot(y_sim_CAP2_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 2','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics


Rsq_CAP2_averaged = 1 - sum((y2 - y_sim_CAP2_averaged).^2)/sum((y2 - mean(y2)).^2);

%% averaged model 3

y3=BW(:,3)

u3=EI(:,3)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW3=y3(2)
y3=y3-Baseline_BW3;
Baseline_EI3=y3(2)
u3=u3-Baseline_EI3

% Modelling CAPTAIN

a3_averaged=[1 -0.9488]
b3_averaged=[0.000492587]

model_CAP3_averaged=idpoly(a3_averaged,b3_averaged);



y_sim_CAP3_averaged=sim(model_CAP3_averaged,u3);


figure(47)
plot(y3,'LineWidth',2.0)
hold on 
plot(y_sim_CAP3_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 3','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP3_averaged = 1 - sum((y3 - y_sim_CAP3_averaged).^2)/sum((y3 - mean(y3)).^2);

%% averaged model 4

y4=BW(:,4)

u4=EI(:,4)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW4=y4(3)
y4=y4-Baseline_BW4;
Baseline_EI4=u4(3)
u4=u4-Baseline_EI4

% Modelling CAPTAIN


a4_averaged=[1 -0.9488]
b4_averaged=[0.00048213]

model_CAP4_averaged=idpoly(a4_averaged,b4_averaged);



y_sim_CAP4_averaged=sim(model_CAP4_averaged,u4);



figure(48)
plot(y4,'LineWidth',2.0)
hold on 
plot(y_sim_CAP4_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 4','FontSize', 15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP4_averaged = 1 - sum((y4 - y_sim_CAP4_averaged).^2)/sum((y4 - mean(y4)).^2);

%% averaged model 5

y5=BW(:,5)

u5=EI(:,5)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW5=y5(1)
y5=y5-Baseline_BW5;
Baseline_EI5=u5(1)
u5=u5-Baseline_EI5

% Modelling CAPTAIN

a5_averaged=[1 -0.9488]
b5_averaged=[0.00048213]

model_CAP5_averaged=idpoly(a5_averaged,b5_averaged);



y_sim_CAP5_averaged=sim(model_CAP5_averaged,u5);



figure(49)
plot(y5,'LineWidth',2.0)
hold on 
plot(y_sim_CAP5_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 5','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP5_averaged = 1 - sum((y5 - y_sim_CAP5_averaged).^2)/sum((y5 - mean(y5)).^2);

%% averaged model 6

y6=BW(:,6)

u6=EI(:,6)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW6=y6(1)
y6=y6-Baseline_BW6;
Baseline_EI6=y6(1)
u6=u6-Baseline_EI6

% Modelling CAPTAIN

a6_averaged=[1 -0.9488]
b6_averaged=[0.00048213]

model_CAP6_averaged=idpoly(a6_averaged,b6_averaged);



y_sim_CAP6_averaged=sim(model_CAP6_averaged,u6);



figure(50)
plot(y6,'LineWidth',2.0)
hold on 
plot(y_sim_CAP6_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 6','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP6_averaged = 1 - sum((y6 - y_sim_CAP6_averaged).^2)/sum((y6 - mean(y6)).^2);

%% averaged model 7

y7=BW(:,7)

u7=EI(:,7)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW7=y7(2);
y7=y7-Baseline_BW7;
Baseline_EI7=u7(2);
u7=u7-Baseline_EI7

% Modelling CAPTAIN

a7_averaged=[1 -0.9488]
b7_averaged=[0.00048213]

model_CAP7_averaged=idpoly(a7_averaged,b7_averaged);



y_sim_CAP7_averaged=sim(model_CAP7_averaged,u7);



figure(51)
plot(y7,'LineWidth',2.0)
hold on 
plot(y_sim_CAP7_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 7','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP7_averaged = 1 - sum((y7 - y_sim_CAP7_averaged).^2)/sum((y7 - mean(y7)).^2);

%% averaged model 8

y8=BW(:,8)

u8=EI(:,8)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW8=y8(3);
y8=y8-Baseline_BW8;
Baseline_EI8=u8(3);
u8=u8-Baseline_EI8
% Modelling CAPTAIN

a8_averaged=[1 -0.9488]
b8_averaged=[0.00048213]

model_CAP8_averaged=idpoly(a8_averaged,b8_averaged);



y_sim_CAP8_averaged=sim(model_CAP8_averaged,u8);



figure(52)
plot(y8,'LineWidth',2.0)
hold on 
plot(y_sim_CAP8_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 8','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics 

Rsq_CAP8_averaged = 1 - sum((y8 - y_sim_CAP8_averaged).^2)/sum((y8 - mean(y8)).^2);

%% averaged model 9
y9=BW(:,9)

u9=EI(:,9)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW9=y9(1);
y9=y9-Baseline_BW9;
Baseline_EI9=u9(1);
u9=u9-Baseline_EI9

% Modelling CAPTAIN

a9_averaged=[1 -0.9488]
b9_averaged=[0.00048213]

model_CAP9_averaged=idpoly(a9_averaged,b9_averaged);



y_sim_CAP9_averaged=sim(model_CAP9_averaged,u9);



figure(53)
plot(y9,'LineWidth',2.0)
hold on 
plot(y_sim_CAP9_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 9','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')


% Model characteristics 

Rsq_CAP9_averaged = 1 - sum((y9 - y_sim_CAP9_averaged).^2)/sum((y9 - mean(y9)).^2);

%% averaged model 10
y10=BW(:,10)

u10=EI(:,10)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW10=y10(3);
y10=y10-Baseline_BW10;
Baseline_EI10=u10(3);
u10=u10-Baseline_EI10

% Modelling CAPTAIN

a10_averaged=[1 -0.94875]
b10_averaged=[0.00048213]

model_CAP10_averaged=idpoly(a10_averaged,b10_averaged);



y_sim_CAP10_averaged=sim(model_CAP10_averaged,u10);



figure(54)
plot(y10,'LineWidth',2.0)
hold on
plot(y_sim_CAP10_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 10','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

Rsq_CAP10_averaged = 1 - sum((y10 - y_sim_CAP10_averaged).^2)/sum((y10 - mean(y10)).^2);

%% averaged model 11
y11=BW(:,11)

u11=EI(:,11)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW11=y11(1);
y11=y11-Baseline_BW11;
Baseline_EI11=u11(1);
u11=u11-Baseline_EI11

% Modelling CAPTAIN

a11_averaged=[1 -0.9488]
b11_averaged=[0.00048213]

model_CAP11_averaged=idpoly(a11_averaged,b11_averaged);



y_sim_CAP11_averaged=sim(model_CAP11_averaged,u11);



figure (55)
plot(y11,'LineWidth',2.0)
hold on
plot(y_sim_CAP11_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 11','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

Rsq_CAP11_averaged = 1 - sum((y11 - y_sim_CAP11_averaged).^2)/sum((y11 - mean(y11)).^2);

%% averaged model 12
y12=BW(:,12)

u12=EI(:,12)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW12=y12(1);
y12=y12-Baseline_BW12;
Baseline_EI12=y12(1);
u12=u12-Baseline_EI12

% Modelling CAPTAIN

a12_averaged=[1 -0.9488]
b12_averaged=[0.00048213]

model_CAP12_averaged=idpoly(a12_averaged,b12_averaged);



y_sim_CAP12_averaged=sim(model_CAP12_averaged,u12);



figure(56)
plot(y12,'LineWidth',2.0)
hold on
plot(y_sim_CAP12_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 12','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

Rsq_CAP12_averaged = 1 - sum((y12 - y_sim_CAP12_averaged).^2)/sum((y12 - mean(y12)).^2);


%% Averaged Model 13
y13=BW(:,13)

u13=EI(:,13)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW13=y13(3);
y13=y13-Baseline_BW13;
Baseline_EI13=y13(3);
u13=u13-Baseline_EI13

% Modelling CAPTAIN

a13_averaged=[1 -0.9488]
b13_averaged=[0.00048213]

model_CAP13_averaged=idpoly(a13_averaged,b13_averaged);

y_sim_CAP13_averaged=sim(model_CAP13_averaged,u13);



figure (57)
plot(y13,'LineWidth',2.0)
hold on
plot(y_sim_CAP13_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 13','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

Rsq_CAP13_averaged = 1 - sum((y13 - y_sim_CAP13_averaged).^2)/sum((y13 - mean(y13)).^2);

%% averaged model 14
y14=BW(:,14)

u14=EI(:,14)

% b. data pre-processing
% Aftrekken van de baseline lichaamsgewicht/energy intake voor elk individu

Baseline_BW14=y14(1);
y14=y14-Baseline_BW14;
Baseline_EI14=y14(1);
u14=u14-Baseline_EI14

a14_averaged=[1 -0.9488]
b14_averaged=[0.00048213]

model_CAP14_averaged=idpoly(a14_averaged,b14_averaged);



y_sim_CAP14_averaged=sim(model_CAP14_averaged,u14);


figure(58)
plot(y14,'LineWidth',2.0)
hold on
plot(y_sim_CAP14_averaged,'LineWidth',2.0)
title('Body Weight (kg) vs time (weeks) individual 14','FontSize',15)
xlabel('Time (weeks)','FontSize',25)
ylabel('Body Weight (kg)','FontSize',25)
legend('Measured data','Modelled data CAPTAIN')

% Model characteristics

Rsq_CAP14_averaged = 1 - sum((y14 - y_sim_CAP14_averaged).^2)/sum((y14 - mean(y14)).^2);

%% averaged R_sq values

Rsq_averaged=[Rsq_CAP1_averaged;Rsq_CAP2_averaged;Rsq_CAP3_averaged;Rsq_CAP4_averaged;Rsq_CAP5_averaged;Rsq_CAP6_averaged;Rsq_CAP7_averaged;Rsq_CAP8_averaged;Rsq_CAP9_averaged;Rsq_CAP10_averaged;Rsq_CAP11_averaged;Rsq_CAP12_averaged;Rsq_CAP13_averaged;Rsq_CAP14_averaged]



%% Dynamic model 1

y1=BW(:,1)

u1=EI(:,1)

Qa1=darxopt(y1,u1,[2 1 1],0,'ml');                        
[ysim1,fit1,fitse1,par1,parse1]=darx(y1,u1,[2 1 1],0,Qa1);   

a1est = par1(:,1);
a2est = par1(:,2);
b0est = par1(:,3);

figure(60)
plot(b0est)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
title('evolutie van de a1 parameters ifv van tijd (weken) per individu','FontSize', 24)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX1=1-sum((y1-ysim1).^2)/sum((y1-mean(y1)).^2);


%% Dynamic model 2

y2=BW(:,2)

u2=EI(:,2)

Qa2=darxopt(y2,u2,[2 1 1],0,'ml');                        
[ysim2,fit,fitse,par2,parse]=darx(y2,u2,[2 1 1],0,Qa2);   

a1est = par2(:,1);
a2est = par2(:,2);
b0est = par2(:,3);

hold on
figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)


Rsq_DARX2=1-sum((y2-ysim2).^2)/sum((y2-mean(y2)).^2);


%% Dynamic model 3

y3=BW(:,3)

u3=EI(:,3)

Qa3=darxopt(y3,u3,[2 1 1],0,'ml');                        
[ysim3,fit,fitse,par3,parse]=darx(y3,u3,[2 1 1],0,Qa3);   

a1est = par3(:,1);
a2est = par3(:,2);
b0est = par3(:,3);

figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX3=1-sum((y3-ysim3).^2)/sum((y3-mean(y3)).^2);


%% Dynamic model 4

y4=BW(:,4)

u4=EI(:,4)

Qa4=darxopt(y4,u4,[2 1 1],0,'ml');                        
[ysim4,fit,fitse,par4,parse]=darx(y4,u4,[2 1 1],0,Qa4);   

a1est = par4(:,1);
a2est = par4(:,2);
b0est = par4(:,3);

figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX4=1-sum((y4-ysim4).^2)/sum((y4-mean(y4)).^2);


%% Dynamic model 5

y5=BW(:,5)

u5=EI(:,5)

Qa5=darxopt(y5,u5,[2 1 1],0,'ml');                        
[ysim5,fit,fitse,par5,parse]=darx(y5,u5,[2 1 1],0,Qa5);   

a1est = par5(:,1);
a2est = par5(:,2);
b0est = par5(:,3);


hold on
figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX5=1-sum((y5-ysim5).^2)/sum((y5-mean(y5)).^2);


%% Dynamic model 6

y6=BW(:,6)

u6=EI(:,6)

Qa6=darxopt(y6,u6,[2 1 1],0,'ml');                        
[ysim6,fit,fitse,par6,parse]=darx(y6,u6,[2 1 1],0,Qa6);   

a1est = par6(:,1);
a2est = par6(:,2);
b0est = par6(:,3);

hold on
figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX6=1-sum((y6-ysim6).^2)/sum((y6-mean(y6)).^2);


%% Dynamic model 7

y7=BW(:,7)

u7=EI(:,7)

Qa7=darxopt(y7,u7,[2 1 1],0,'ml');                        
[ysim7,fit,fitse,par7,parse]=darx(y7,u7,[2 1 1],0,Qa7);   

a1est = par7(:,1);
a2est = par7(:,2);
b0est = par7(:,3);

hold on
figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX7=1-sum((y7-ysim7).^2)/sum((y7-mean(y7)).^2);


%% Dynamic model 8

y8=BW(:,8)

u8=EI(:,8)

Qa8=darxopt(y8,u8,[2 1 1],0,'ml');                        
[ysim8,fit,fitse,par8,parse]=darx(y8,u8,[2 1 1],0,Qa8);   

a1est = par8(:,1);
a2est = par8(:,2);
b0est = par8(:,3);

hold on
figure(60)
title('evolutie van de b0 parameters ifv van tijd (weken) per individu','FontSize', 24)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX8=1-sum((y8-ysim8).^2)/sum((y8-mean(y8)).^2);


%% Dynamic model 9

y9=BW(:,9)

u9=EI(:,9)

Qa9=darxopt(y9,u9,[2 1 1],0,'ml');                        
[ysim9,fit,fitse,par9,parse]=darx(y9,u9,[2 1 1],0,Qa9);   

a1est = par9(:,1);
a2est = par9(:,2);
b0est = par9(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX9=1-sum((y9-ysim9).^2)/sum((y9-mean(y9)).^2);


%% Dynamic model 10

y10=BW(:,10)

u10=EI(:,10)

Qa10=darxopt(y10,u10,[2 1 1],0,'ml');                        
[ysim10,fit,fitse,par10,parse]=darx(y10,u10,[2 1 1],0,Qa10);   

a1est = par10(:,1);
a2est = par10(:,2);
b0est = par10(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize',24)
xlabel('tijd (weken)','FontSize',24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX10=1-sum((y10-ysim10).^2)/sum((y10-mean(y10)).^2);


%% Dynamic model 11

y11=BW(:,11)

u11=EI(:,11)

Qa11=darxopt(y11,u11,[2 1 1],0,'ml');                        
[ysim11,fit,fitse,par11,parse]=darx(y11,u11,[2 1 1],0,Qa11);   

a1est = par11(:,1);
a2est = par11(:,2);
b0est = par11(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX11=1-sum((y11-ysim11).^2)/sum((y11-mean(y11)).^2);


%% Dynamic model 12

y12=BW(:,12)

u12=EI(:,12)

Qa12=darxopt(y12,u12,[2 1 1],0,'ml');                        
[ysim12,fit,fitse,par12,parse]=darx(y12,u12,[2 1 1],0,Qa12);   

a1est = par12(:,1);
a2est = par12(:,2);
b0est = par12(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX12=1-sum((y12-ysim12).^2)/sum((y12-mean(y12)).^2);


%% Dynamic model 13

y13=BW(:,13)

u13=EI(:,13)

Qa13=darxopt(y13,u13,[2 1 1],0,'ml');                        
[ysim13,fit,fitse,par13,parse]=darx(y13,u13,[2 1 1],0,Qa13);   

a1est = par13(:,1);
a2est = par13(:,2);
b0est = par13(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)

Rsq_DARX13=1-sum((y13-ysim13).^2)/sum((y13-mean(y13)).^2);


%% Dynamic model 14

y14=BW(:,14)

u14=EI(:,14)

Qa14=darxopt(y14,u14,[2 1 1],0,'ml');                        
[ysim14,fit,fitse,par14,parse]=darx(y14,u14,[2 1 1],0,Qa14);   

a1est = par14(:,1);
a2est = par14(:,2);
b0est = par14(:,3);

hold on
figure(60)
plot(b0est)
ylabel('b0 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
hold on
figure(61)
plot(a1est)
ylabel('a1 parameters','FontSize', 24)
xlabel('tijd (weken)','FontSize', 24)
ylim([-1.5 0])

Rsq_DARX14=1-sum((y14-ysim14).^2)/sum((y14-mean(y14)).^2);

%% Rsq_DARX14

Rsq_DARX=[Rsq_DARX1;Rsq_DARX2;Rsq_DARX3;Rsq_DARX4;Rsq_DARX5;Rsq_DARX6;Rsq_DARX7;Rsq_DARX8;Rsq_DARX9;Rsq_DARX10;Rsq_DARX11;Rsq_DARX12;Rsq_DARX13;Rsq_DARX14]
