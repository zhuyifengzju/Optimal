%% Function of Riccati Equation

function P_Prime = my_riccati(t,P,A,B,Q,R)
P = reshape(P,size(A))
% P_dot = -Q-A'P-PA+Pinv(R)B'P
P_Prime = -Q-A'*P-P*A-P*inv(R)*B'*P;
P_Prime = P_Prime(:);

end

