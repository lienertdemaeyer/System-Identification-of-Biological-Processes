load Dataset_2.mat

%% Data preparation

figure(1)
plot(Cells.WildType.C1.Out)
hold on
plot(Cells.WildType.C2.Out)
plot(Cells.WildType.C3.Out)
plot(Cells.WildType.C4.Out)
plot(Cells.WildType.C5.Out)
plot(Cells.WildType.C6.Out)
title('Gemeten output voor cellen van het type WildType')
legend('C1','C2','C3','C4','C5','C6')
ylabel('Cell index')
xlabel('tijd (seconden)')

figure(2)
plot(Cells.Mutation334.C1.Out)
hold on
plot(Cells.Mutation334.C2.Out)
plot(Cells.Mutation334.C3.Out)
plot(Cells.Mutation334.C4.Out)
plot(Cells.Mutation334.C5.Out)
plot(Cells.Mutation334.C6.Out)
title('Gemeten output voor cellen van het type Mutation334')
legend('C1','C2','C3','C4','C5','C6')
ylabel('Cell index')
xlabel('tijd (seconden)')

figure(3)
plot(Cells.Mutation343.C1.Out)
hold on
plot(Cells.Mutation343.C2.Out)
plot(Cells.Mutation343.C3.Out)
plot(Cells.Mutation343.C4.Out)
plot(Cells.Mutation343.C5.Out)
plot(Cells.Mutation343.C6.Out)
title('Gemeten output voor cellen van het type Mutation343')
legend('C1','C2','C3','C4','C5','C6')
ylabel('Cell index')
xlabel('tijd (seconden)')

figure(4)
plot(Cells.Unknown.C1.Out)
hold on
plot(Cells.Unknown.C2.Out)

title('Gemeten output voor cellen van het type Unknown')
legend('C1','C2')
ylabel('Cell index')
xlabel('tijd (seconden)')

figure(5)
plot(Cells.Mutation334.C1.In)
title('Input voor elke cell')
ylabel('ligand input: 1=ligand toegevoegd, 0=ligand niet toegevoegd')
xlabel('tijd (seconden)')

%% model 1 WildType CAPTAIN

u=Cells.Mutation334.C1.In
rivid([Cells.WildType.C1.Out u], [1 1 0 0; 4 4 10 0]);
th1_WildType=riv([Cells.WildType.C1.Out u], [2 2 0 0]);
[a1_WildType, b1_WildType]=getpar(th1_WildType);


%% model 2 WildType CAPTAIN


rivid([Cells.WildType.C2.Out u], [1 1 0 0; 4 4 10 0]);
th2_WildType=riv([Cells.WildType.C2.Out u], [2 2 0 0]);
[a2_WildType, b2_WildType]=getpar(th2_WildType);


%% model 3 WildType CAPTAIN

rivid([Cells.WildType.C3.Out u], [1 1 0 0; 4 4 10 0]);
th3_WildType=riv([Cells.WildType.C3.Out u], [2 2 0 0]);
[a3_WildType, b3_WildType]=getpar(th3_WildType);


%% model 4 WildType CAPTAIN


rivid([Cells.WildType.C4.Out u], [1 1 0 0; 4 4 10 0]);
th4_WildType=riv([Cells.WildType.C4.Out u], [2 2 0 0]);
[a4_WildType, b4_WildType]=getpar(th4_WildType);


%% model 5 WildType CAPTAIN

rivid([Cells.WildType.C5.Out u], [1 1 0 0; 4 4 10 0]);
th5_WildType=riv([Cells.WildType.C5.Out u], [2 2 0 0]);
[a5_WildType, b5_WildType]=getpar(th5_WildType);


%% model 6 WildType CAPTAIN

rivid([Cells.WildType.C6.Out u], [1 1 0 0; 4 4 10 0]);
th6_WildType=riv([Cells.WildType.C6.Out u], [2 2 0 0]);
[a6_WildType, b6_WildType]=getpar(th6_WildType);


%%

a_WildType=[a1_WildType;a2_WildType;a3_WildType;a4_WildType;a5_WildType;a6_WildType]
b_WildType=[b1_WildType;b2_WildType;b3_WildType;b4_WildType;b5_WildType;b6_WildType]

%% model 1 Mutation334 CAPTAIN


rivid([Cells.Mutation334.C1.Out u], [1 1 0 0; 4 4 10 0]);
th1_Mutation334=riv([Cells.Mutation334.C1.Out u], [2 2 0 0]);
[a1_Mutation334, b1_Mutation334]=getpar(th1_Mutation334);


%% model 2 Mutation334 CAPTAIN


rivid([Cells.Mutation334.C2.Out u], [1 1 0 0; 4 4 10 0]);
th2_Mutation334=riv([Cells.Mutation334.C2.Out u], [2 2 0 0]);
[a2_Mutation334, b2_Mutation334]=getpar(th2_Mutation334);


%% model 3 Mutation334 CAPTAIN

rivid([Cells.Mutation334.C3.Out u], [1 1 0 0; 4 4 10 0]);
th3_Mutation334=riv([Cells.Mutation334.C3.Out u], [2 2 0 0]);
[a3_Mutation334, b3_Mutation334]=getpar(th3_Mutation334);


%% model 4 Mutation334 CAPTAIN


rivid([Cells.WildType.C4.Out u], [1 1 0 0; 4 4 10 0]);
th4_Mutation334=riv([Cells.Mutation334.C4.Out u], [2 2 0 0]);
[a4_Mutation334, b4_Mutation334]=getpar(th4_Mutation334);


%% model 5 Mutation334 CAPTAIN

rivid([Cells.Mutation334.C5.Out u], [1 1 0 0; 4 4 10 0]);
th5_Mutation334=riv([Cells.Mutation334.C5.Out u], [2 2 0 0]);
[a5_Mutation334, b5_Mutation334]=getpar(th5_Mutation334);


%% model 6 Mutation334 CAPTAIN

rivid([Cells.WildType.C6.Out u], [1 1 0 0; 4 4 10 0]);
th6_Mutation334=riv([Cells.Mutation334.C6.Out u], [2 2 0 0]);
[a6_Mutation334, b6_Mutation334]=getpar(th6_Mutation334);


%%

a_Mutation334=[a1_Mutation334;a2_Mutation334;a3_Mutation334;a4_Mutation334;a5_Mutation334;a6_Mutation334]
b_Mutation334=[b1_Mutation334;b2_Mutation334;b3_Mutation334;b4_Mutation334;b5_Mutation334;b6_Mutation334]

%% model 1 Mutation343 CAPTAIN


rivid([Cells.Mutation343.C1.Out u], [1 1 0 0; 4 4 10 0]);
th1_Mutation343=riv([Cells.Mutation343.C1.Out u], [2 2 0 0]);
[a1_Mutation343, b1_Mutation343]=getpar(th1_Mutation343);
model_CAP1=idpoly(a1_Mutation343,b1_Mutation343);

%% model 2 Mutation343 CAPTAIN


rivid([Cells.Mutation343.C2.Out u], [1 1 0 0; 4 4 10 0]);
th2_Mutation343=riv([Cells.Mutation343.C2.Out u], [2 2 0 0]);
[a2_Mutation343, b2_Mutation343]=getpar(th2_Mutation343);
model_CAP2=idpoly(a2_Mutation343,b2_Mutation343);

%% model 3 Mutation343 CAPTAIN

rivid([Cells.Mutation343.C3.Out u], [1 1 0 0; 4 4 10 0]);
th3_Mutation343=riv([Cells.Mutation343.C3.Out u], [2 2 0 0]);
[a3_Mutation343, b3_Mutation343]=getpar(th3_Mutation343);
model_CAP3=idpoly(a3_Mutation343,b3_Mutation343);

%% model 4 Mutation343 CAPTAIN


rivid([Cells.Mutation343.C4.Out u], [1 1 0 0; 4 4 10 0]);
th4_Mutation343=riv([Cells.Mutation343.C4.Out u], [2 2 0 0]);
[a4_Mutation343, b4_Mutation343]=getpar(th4_Mutation343);
model_CAP4=idpoly(a4_Mutation343,b4_Mutation343);

%% model 5 Mutation343 CAPTAIN

rivid([Cells.Mutation343.C5.Out u], [1 1 0 0; 4 4 10 0]);
th5_Mutation343=riv([Cells.Mutation343.C5.Out u], [2 2 0 0]);
[a5_Mutation343, b5_Mutation343]=getpar(th5_Mutation343);
model_CAP5=idpoly(a5_Mutation343,b5_Mutation343);

%% model 6 Mutation343 CAPTAIN

rivid([Cells.Mutation343.C6.Out u], [1 1 0 0; 4 4 10 0]);
th6_Mutation343=riv([Cells.Mutation343.C6.Out u], [2 2 0 0]);
[a6_Mutation343, b6_Mutation343]=getpar(th6_Mutation343);
model_CAP6=idpoly(a6_Mutation343,b6_Mutation343);

%%

a_Mutation343=[a1_Mutation343;a2_Mutation343;a3_Mutation343;a4_Mutation343;a5_Mutation343;a6_Mutation343]
b_Mutation343=[b1_Mutation343;b2_Mutation343;b3_Mutation343;b4_Mutation343;b5_Mutation343;b6_Mutation343]

%% model 1 Unknown CAPTAIN


rivid([Cells.Unknown.C1.Out u], [1 1 0 0; 4 4 10 0]);
th1_Unknown=riv([Cells.Unknown.C1.Out u], [2 2 0 0]);
[a1_Unknown, b1_Unknown]=getpar(th1_Unknown);
model_CAP1=idpoly(a1_Mutation343,b1_Mutation343);

%% model 2 Unknown CAPTAIN


rivid([Cells.Unknown.C2.Out u], [1 1 0 0; 4 4 10 0]);
th2_Unknown=riv([Cells.Unknown.C2.Out u], [2 2 0 0]);
[a2_Unknown, b2_Unknown]=getpar(th2_Unknown);
model_CAP2=idpoly(a2_Unknown,b2_Unknown);

%%

a_Unknown=[a1_Unknown;a2_Unknown]
b_Unknown=[b1_Unknown;b2_Unknown]

