%%
%standalone
%eof{
	/* Nombre de caractères de commentaires */
	System.out.println("Nombre commentaire : " + n);
	System.out.println("Nombre total : " + (ntotal + n));
	/* Calcul */
	double res = n * 100 / (n + ntotal);
	System.out.println("Pourcentage : " + res);
%eof}
%{
	int n = 0;	
	int ntotal = 0;
%}
%%
\/\*(([^*])|(\*[^/]))*\*\/ {n+=yylength();}
.|\n {ntotal+=1;}