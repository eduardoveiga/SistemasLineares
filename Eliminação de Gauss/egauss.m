function egauss(A,B)

X=[A,B]
Xsize=size(X);

for i=1:(Xsize(1))
	
	for j=i+1:Xsize(1)
			X(j,:)=X(j,:)-((X(j,i))/(X(i,i))*X(i,:))
	endfor
endfor

X
A=X(:,1:size(X)(2)-1);
B=X(:,size(X)(2));
A\B
endfunction
