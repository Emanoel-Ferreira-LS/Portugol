programa
{
inclua biblioteca Texto --> tx
inclua biblioteca Tipos --> tp

    funcao inicio()
    {
        inteiro numeros[12] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        cadeia chave = ""
        
        enquanto(tx.numero_caracteres(chave) != 10){
            escreva("\nDigite uma chave de 12 caracteres para ordenar os números: \n")
            leia(chave)    
        }
        
        cadeia subst_ord_letra[10] = {"2", "6", "3", "4", "5", "1", "8", "7", "#", "@"}
        cadeia subst_letra[10] = {"2", "6", "3", "4", "5", "1", "8", "7", "#", "@"}

        caracter anterior = '!'
	   inteiro p_anterior = 0
	   
        // Ordenando vetor de acordo com a chave
        para(inteiro i = 0; i < 10; i++){
                se(tx.obter_caracter(chave, i) < tx.obter_caracter(chave, p_anterior)){
                    subst_ord_letra[i] = subst_letra[p_anterior]
                    subst_ord_letra[p_anterior] = subst_letra[i]
                }
                
                p_anterior = i
            	 escreva("\n")
        }

        escreva("\nVetor de números ordenados com base na chave:\n")
        para(inteiro i = 0; i < 10; i++){
            escreva(subst_ord_letra[i], " ")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */