clc;
clear all;
close all;

test7 = [110640,119300,131960];
test28 = [105810,162480,164770];

result7 = test7/(25*25*pi)
result28 = test28/(25*25*pi)

Mean7 = mean(result7)
mean7 = [Mean7,Mean7,Mean7,Mean7,Mean7];
Mean28 = mean(result28)
mean28 = [Mean28,Mean28,Mean28,Mean28,Mean28];
deviation7 = std(result7)
deviation28 = std(result28)

Samp = [1,2,3];
Samp2 = [0.5,1,2,3,3.5];
figure
F_SIZE = 10;
plot(Samp, result7,'*-','MarkerSize',12)
hold on 
plot(Samp, result28,'o-','MarkerSize',12)
hold on
plot(Samp2,mean7,'Linewidth',2)
hold on
plot(Samp2,mean28,'Linewidth',2)
axis([0,4,50,90])
ylabel('Compressive Strength [MPa]','fontsize',15)
xlabel('Specimens','fontsize',15)
legend({'7 days test results','28 days test results','Mean of 7 days test results','Mean of 28 days test results'},'FontSize',13)
xticks([1 2 3])
xticklabels({'Specimen1','Specimen2','Specimen3'})
title('The Results of Compressive Test','fontsize',F_SIZE+10)

