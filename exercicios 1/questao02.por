programa
{                                                           
	
	funcao inicio()
	{
		escreva("Digite o ano: ")
		inteiro ano

		leia(ano)
		
		se((ano%4==0 ou ano%400==0) e ano%100!=0){
			escreva("Ano bissesto")
		}senao{
			escreva("Não é bissexto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */