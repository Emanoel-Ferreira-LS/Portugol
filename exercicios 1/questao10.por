programa
{
/*Desenvolva um algoritmo que gere senhas aleatórias com base nas preferências
do usuário, como comprimento da senha, uso de letras maiúsculas/minúsculas,
números e caracteres especiais. Utilize cadeias de caracteres e as bibliotecas
necessárias para construir a senha conforme as especificações fornecidas pelo
usuário.*/
    inclua biblioteca Texto --> tx
    inclua biblioteca Util --> ut
    
    funcao inicio()
    {
        inteiro n_ctr = 0
        caracter mai = ' ', min = ' ', ctr_esp = ' ', num = ' '
        cadeia senha = ""

        caracter caracteres_especiais[] = {'!', '@', '#', '$', '%', '&', '*', '-', '+', '=', '_', '?', '.', ',', ';', ':', '/', '|'}
        caracter letras_maiusculas[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
        caracter letras_minusculas[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
        caracter numeros[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}

        escreva("GERADOR DE SENHAS\n\n")

        // Solicitar preferências do usuário
        escreva("Quantidade de caracteres: ")
        leia(n_ctr)
        
        enquanto(mai != 's' e mai != 'S' e mai != 'n' e mai != 'N'){
            escreva("Maiúsculas? ('s' para sim; 'n' para não): ")
            leia(mai)
        }
        enquanto(min != 's' e min != 'S' e min != 'n' e min != 'N'){
            escreva("Minusculas? ('s' para sim; 'n' para não): ")
            leia(min)
        }
        enquanto(ctr_esp != 's' e ctr_esp != 'S' e ctr_esp != 'n' e ctr_esp != 'N'){
            escreva("Caracteres especiais? ('s' para sim; 'n' para não): ")
            leia(ctr_esp)
        }
        enquanto(num != 's' e num != 'S' e num != 'n' e num != 'N'){
            escreva("Números? ('s' para sim; 'n' para não): ")
            leia(num) 
        }

        limpa()

        // Gerarando senha
        escreva("GERADOR DE SENHAS\n\n")
        
        enquanto(verdadeiro){
            se(mai == 'S' ou mai == 's'){
                senha += sorteiaCaractere(letras_maiusculas)
                
                se(tx.numero_caracteres(senha) >= n_ctr){
                	pare
                }
            }
            se(min == 'S' ou min == 's'){
                senha += sorteiaCaractere(letras_minusculas)

                se(tx.numero_caracteres(senha) >= n_ctr){
                	pare
                }
            }
            se(ctr_esp == 'S' ou ctr_esp == 's'){
                senha += sorteiaCaractere(caracteres_especiais)

                se(tx.numero_caracteres(senha) >= n_ctr){
                	pare
                }
            }
            se(num == 'S' ou num == 's'){
                senha += sorteiaCaractere(numeros)

                se(tx.numero_caracteres(senha) >= n_ctr){
                	pare
                }
            }
        }

        // Exibir senha gerada
        escreva("\nSENHA GERADA: \n")
        escreva(senha)
        escreva("\n")
        
    }

    funcao caracter sorteiaCaractere(caracter vetor[])
    {
        inteiro n_elementos_vetor = ut.numero_elementos(vetor)
        inteiro sort_pos = ut.sorteia(0, n_elementos_vetor - 1)
        caracter caractere = vetor[sort_pos]
        
        retorne caractere
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2954; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */