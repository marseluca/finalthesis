close all


%% LINEPLOTS
figure


subplot(2,2,1)

for j=1:length(allHistories)
    plot(allHistories{j}(1,:));
    hold on
end
title("250 individuals")

axis([0 1000 75 120])

xlabel("Generations")
ylabel("Best fit")

grid on
hold off




subplot(2,2,2)

for j=1:length(allHistories)
    plot(allHistories{j}(2,:));
    hold on
end
title("500 individuals")
xlabel("Generations")
ylabel("Best fit")

axis([0 1000 75 120])

grid on
hold off





subplot(2,2,3)

for j=1:length(allHistories)
    plot(allHistories{j}(3,:));
    hold on
end
title("750 individuals")
xlabel("Generations")
ylabel("Best fit")

axis([0 1000 75 120])

grid on
hold off




subplot(2,2,4)

for j=1:length(allHistories)
    plot(allHistories{j}(4,:));
    hold on
end
title("1000 individuals")
xlabel("Generations")
ylabel("Best fit")

axis([0 1000 75 120])

grid on
hold off


sgtitle("Best fit over generations (21 executions)")


%% BOXCHARTS

figure

subplot(2,2,1)

allValues = [];
genSteps = 10;

for i=1:genSteps

    for j=1:length(allHistories)
        allValues(j,i) = allHistories{j}(1,i*1000/genSteps);
    end
end

boxchart(allValues)

title("250 individuals")
xlabel("Generations")
ylabel("Best fit")

ylim([75 95])

set(gca,'XTickLabel',{"100","200","300","400","500","600","700","800","900","1000"});


hold off
grid on








subplot(2,2,2)

allValues = [];
genSteps = 10;

for i=1:genSteps

    for j=1:length(allHistories)
        allValues(j,i) = allHistories{j}(2,i*1000/genSteps);
    end
end

boxchart(allValues)

title("500 individuals")
xlabel("Generations")
ylabel("Best fit")
set(gca,'XTickLabel',{"100","200","300","400","500","600","700","800","900","1000"});

ylim([75 95])

hold off
grid on







subplot(2,2,3)

allValues = [];
genSteps = 10;

for i=1:genSteps

    for j=1:length(allHistories)
        allValues(j,i) = allHistories{j}(3,i*1000/genSteps);
    end
end

boxchart(allValues)

title("750 individuals")
xlabel("Generations")
ylabel("Best fit")
set(gca,'XTickLabel',{"100","200","300","400","500","600","700","800","900","1000"});

ylim([75 95])

hold off
grid on







subplot(2,2,4)

allValues = [];
genSteps = 10;

for i=1:genSteps

    for j=1:length(allHistories)
        allValues(j,i) = allHistories{j}(4,i*1000/genSteps);
    end
end

boxchart(allValues)

title("1000 individuals")
xlabel("Generations")
ylabel("Best fit")
set(gca,'XTickLabel',{"100","200","300","400","500","600","700","800","900","1000"});

ylim([75 95])

hold off
grid on



sgtitle("Best fit over generations (21 executions)")