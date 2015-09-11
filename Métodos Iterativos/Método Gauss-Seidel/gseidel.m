function gseidel(A,B,Niter,tol,X=0)

disp("")
disp("Resultado ")
disp("n  Vetor X     erro")
disp("")

if X==0
	Asize=size(A);
	X(Asize(1))=0;
endif

oldX=X;
for i=1:Niter
	
	for j=1:Asize(1)
		S=0;
		for k=1:Asize(2)				
			if j!=k
				S=S+X(k)*A(j,k);
				endif
		endfor
		X(j)=(B(j)-S)/A(j,j);
		epsilon(j)=abs(X(j)-oldX(j));
		endfor

	
	disp([i,X,max(epsilon)])
   	if(i!=1 & max(epsilon<tol))
		disp("")
		disp("O Metodo obteve sucesso")
		disp("")
	return;
	endif
	oldX=X;
	
endfor
disp("")
disp("O metodo falhou depois de (Niter)")
disp(Niter)
disp("iteraçoes")
disp("")
endfunction
