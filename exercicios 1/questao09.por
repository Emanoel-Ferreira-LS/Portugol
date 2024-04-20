programa
{
    inclua biblioteca Util --> ut
    inclua biblioteca Calendario --> cl

    funcao inicio()
    {
/*Utilizando algumas funções das bibliotecas Calendario e Util, implemente um
relógio que conte o tempo decorrido em horas, minutos e segundos. Utilize
estruturas de repetição para atualizar o tempo continuamente.*/

        inteiro hr = 0, min = 0, s = 0

        enquanto(verdadeiro){
   		  escreva ("TEMPORIZADOR\n\n")
        	  escreva("Hrs : Min : Seg\n")
        	  escreva("---   ---   ---\n")
            escreva(" ",hr," :  ",min," :  ",s)
            s++

            se(s == 59){
                s = 0
                min++

                se(min == 59){
                    min = 0
                    hr++

                    se(hr == 23){
                        hr = 0
                    }
                }
            }
            ut.aguarde(1000)
            limpa()
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 766; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */