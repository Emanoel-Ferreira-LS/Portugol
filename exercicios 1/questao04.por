programa
{

/*Escreva um algoritmo que calcule o fatorial de um número fornecido pelo
usuário. O fatorial de um número inteiro não negativo n, denotado por n!, é o
produto de todos os inteiros positivos menores ou iguais a n.*/
	
	funcao inicio()
	{
		inteiro n, fat = 0, anterior = 1
		
		escreva("Fatorial de um número\n")
		escreva("-----------------------\n")
		escreva("Digite um número: ")

		leia(n)
		
		para(inteiro i = 1; i <= n; i++){
			fat = i * anterior
			anterior = fat
		}

		escreva("FatoriaL de ",n," é ", fat)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */