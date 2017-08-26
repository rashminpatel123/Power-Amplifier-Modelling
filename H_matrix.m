function [ H ] = H_matrix( X,K,M,start_point,N )

H=zeros((M+1)*K);

for n=start_point+1:start_point+N  
    for k=1:K
        for m=0:M  
        H(n-start_point,(k-1)*(M+1)+m+1)=X(n-m)*abs(X(n-m))^(k-1);
        end
    end
end

end






