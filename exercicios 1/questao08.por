programa
{
inclua biblioteca Util --> ut


/*Implemente um jogo onde o computador escolhe um número aleatório entre 1
e 100 e o jogador tenta adivinhar o número. O computador fornece dicas se o
número fornecido pelo jogador é maior ou menor que o número secreto. Utilize
estruturas de repetição para permitir várias tentativas. O usuário só terá 5
chances para acertar. Caso ele acerte o número, parabenize-o.*/
	
	funcao inicio()
	{
		inteiro n
		escreva("ADIVINHANDO NÚMERO\n\n")
		inteiro n_sort = ut.sorteia(0,100)
	
		escreva("Número sorteado! Tente adivinha-lo: ")

		para(inteiro i = 1; i<=5; i++){
			leia(n)

			se(n==n_sort){
				escreva("Parabéns! Você acertou\n")
				pare
			}senao{
				escreva("\nBoa tentativa! Mas esse ainda não é o número\n")
				se(n < n_sort){
					escreva("Dica: o número sorteado é maior que o número informado...\n")
				}senao{
					escreva("Dica: o número sorteado é menor que o número informado...\n")
				}
				se(i==5 e n != n_sort){
					escreva("\n\nNúmero de tentativas esgotadas! O número sorteado era ",n_sort)
				}
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */