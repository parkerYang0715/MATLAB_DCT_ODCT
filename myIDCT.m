function x = myIDCT(Xc)
[m,N]=size(Xc);
if m~=1
   Xc=Xc'; 
   N=length(Xc);
end

x = zeros(1,N);
for n=1:N
    x(n)=1/N*Xc(1);
    for k=2:N
        x(n) = x(n) + 2/N*Xc(k)*cos(0.5*pi/N*(2*n+1)*(k-1));
    end
end


end