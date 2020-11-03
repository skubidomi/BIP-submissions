% Test the kmeans implementation

% Set the number of clusters here:
k = 3;

% clustering & fancy plotting
load fisheriris
S = meas(:,3:4);

[LUT, M] = mykmeans(S, k);

figure; hold on;
title(['Fisher''s Iris Data', ' (k = ', num2str(k),')']);
xlabel('Petal Lengths (cm)'); ylabel('Petal Widths (cm)');
rgb = ['r','g','b','k','c','m'];
for c=1:k
    plot(M(c,1),M(c,2),[rgb(c),'x'],'MarkerSize',30);
    plot(S(LUT==c,1),S(LUT==c,2),[rgb(c),'*']);
end