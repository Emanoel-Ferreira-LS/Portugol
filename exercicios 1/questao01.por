programa
{

	/*Escreva um algoritmo que receba a idade de uma pessoa e informe se ela é
	criança (0 a 12 anos), adolescente (13 a 17 anos), adulto (18 a 59 anos) ou idoso
	(60 anos ou mais).*/
	
	funcao inicio()
	{
		inteiro idade
		 
		escreva("Qual a sua idade? ")
		leia(idade)

		se(idade>=0 e idade <=12){
			escreva("Criança")
		}senao se(idade>=13 e idade <=17){
			escreva("Adolescente")
		}senao se(idade>=18 e idade <=59){
			escreva("Adulto")
		}senao se(idade>59){
			escreva("Idoso")
		}senao{
			escreva("Idade invalida!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */