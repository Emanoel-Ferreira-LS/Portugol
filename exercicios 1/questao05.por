programa
{

	/*Escreva um algoritmo que recebe um número de três dígitos e o apresenta de
forma invertida. Exemplo: 371 → 173. Dica: use o operador % (resto da divisão).*/
	
	funcao inicio()
	{
		inteiro n, d1, d2, d3, valor_invertido
		
		escreva("INVERSOR DE NÚMERO\n\n")
		escreva("Digite um número de três digitos: ")

		leia(n)
		escreva("\n")
		
		se(n >= 1000){
			escreva("O número precisa ter três digitos")
		}senao{
			d1 = n % 10
			//escreva(d1)


			d2 = (n % 100)/10
			//escreva(d2)

			
			d3 = (n % 1000)/100
			//escreva(d3)

			valor_invertido = d1*100 + d2*10 + d3

			escreva(n, " --> " + valor_invertido)
		}
			


		
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 532; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */