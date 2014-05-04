%function [rprof]=lotteryProfit(lastWin,currWin)

lastWin=linspace(0,1e8,200);
%addWin=linspace(0,5e7,500);

lw0=fzero(@(x) lotteryProfit(x,0),1e6);
lw=linspace(lw0,1e8,200);

BE=nan(size(lw));

for i=1:size(lw,2)
    BE(i)=fzero(@(x) lotteryProfit(lw(i)+1,x),[0 1e8]);
end

plot(lw*1e-6,(BE)*1e-6)
xlabel('potturinn var s��ast [m. kr.]')
ylabel('b�st hefur vi� pottinn [m. kr.]')