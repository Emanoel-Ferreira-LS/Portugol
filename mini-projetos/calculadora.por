programa
{
	
	funcao inicio()
	{
		//Declarando Variaveis
		real n1 = 0.0, n2 = 0.0
		caracter operacao = ' '
		
		escreva("BEM VINDO A SUA CALCULADORA PESSOAL!\n")
		escreva("----------------------------------------------------------------------------------------")
		escreva("\n")
		escreva("Digite os números e escolha uma operação para calcula-los\n")

		enquanto(operacao != 's')
		{
			escreva("Digite, caso:\n soma:  \"+\"\n subtração: \"-\"\n multiplicação: \"*\"\n divisão: \"/\"\n ")
			escreva("Para sair do modo calculadora digite: \"s\" \n")
			escreva("----------------------------------------------------------------------------------------")
			escreva("\n\n")
			
			escreva("Operação: \n")
			leia(operacao)
							
			se(operacao == 's')
			{
				escreva("\nModo de calculadora Finalizado! Até mais\n")
			}
			senao
			{
				escreva("Digite o primeiro número\n")
				leia(n1)
				escreva("Digite o segundo número\n")
				leia(n2)
				escreva("\n\n")
							
				escolha(operacao)
				{
					caso '+': limpa()
						escreva("\n-------------------------------------------------------\n")
						escreva("Resultado:  ",n1," + ",n2," = ",soma(n1,n2))
						pare
					caso '-':  limpa()
						escreva("\n-------------------------------------------------------\n")
						escreva("Resultado:  ",n1," - ",n2," = ",subtracao(n1,n2))
						pare
					caso '*':  limpa()
						escreva("\n-------------------------------------------------------\n")
						escreva("Resultado:  ",n1," * ",n2," = ",multiplicacao(n1,n2))
						pare
					caso '/':  limpa()
						escreva("\n-------------------------------------------------------\n")
						escreva("Resultado:  ",n1," / ",n2," = ",divisao(n1,n2))
						pare
				}
	
						escreva("\n-------------------------------------------------------\n\n\n")
			}
		}

	}
	

	funcao real soma(real n1, real n2)
		{
			real resultado = n1 + n2
	
	
		retorne resultado
			
		}

	funcao real subtracao(real n1, real n2)
		{
			real resultado = n1 - n2
	
	
		retorne resultado
			
		}

	funcao real multiplicacao(real n1, real n2)
		{
			real resultado = n1 * n2
	
	
		retorne resultado
			
		}

	funcao real divisao(real n1, real n2)
		{
			real resultado = n1 / n2
	
	
		retorne resultado
			
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 864; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */