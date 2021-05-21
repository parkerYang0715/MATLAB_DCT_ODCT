function Xc = myODCT(x)
[m,N]=size(x);
if m~=1
   x=x'; 
   N=length(x);
end

Xc = zeros(1,N);
for k=2:N
    Xc(k) = sum(x.*cos(0.5*pi/N*(2*[1:N]+1)*(k-1)));
end
Xc(1)=sum(x)/sqrt(N);

Xc(2:N)=Xc(2:N)*sqrt(2/N);
end