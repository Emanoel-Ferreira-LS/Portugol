programa
{
	/*Crie um algoritmo que realiza o produto (multiplicação) de um número inteiro A
positivo por um número inteiro B positivo, ou seja, A x B. Utilize apenas adições,
NÃO UTILIZE o operador de multiplicação “*” na resolução do problema.*/

	funcao inicio()
	{
		inteiro nA = 0
		inteiro nB = 0
		inteiro produto = 0
		
		escreva("Multiplicação\n")
		escreva("-----------------\n")
		escreva("Digite um número: ")
		leia(nA)
		escreva("Digite outro número: ")
		leia(nB)

		para(inteiro i = 0; i < nB ;i++){
			produto = produto + nA
		}

		escreva(nA," x ",nB," = ", produto)


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */