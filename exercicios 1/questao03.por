programa
{
	
	funcao inicio()
	{
		inteiro numero
		escreva("Tabuada de um número\n")
		escreva("--------------------------\n")
		escreva("Digite um numero: ")
		
		leia(numero)

		para(inteiro i = 0; i <= 10;i++) {
			escreva(numero," x ", i, " = ", numero*i,"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 123; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */