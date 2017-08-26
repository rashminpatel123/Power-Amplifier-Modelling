%Finite Precision
function [ H ] = H_matrix_OMPM( X,K,M,start_point,N )

H=zeros((M+1)*K);

for n=start_point+1:start_point+N  
    for m=0:M
        for k=1:K  
        for l=1:k
                  SIKM=(X(n-m)*abs(X(n-m))^(l-1))*( ((-1)^(k+l))*factorial(k+l)/(factorial(l-1)*factorial(l+1)*factorial(k-l)));
        end
        H(n-start_point,(k-1)*(M+1)+m+1)=SIKM; 
        end
    end
end

end







