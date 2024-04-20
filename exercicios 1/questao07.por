programa
{
inclua biblioteca Texto --> tx
inclua biblioteca Tipos --> tp


/*Implemente um algoritmo de criptografia simétrica onde o usuário fornece uma
mensagem e uma chave. O programa utiliza a chave para criptografar a
mensagem e também para descriptografá-la posteriormente.*/


/*
RESUMO DE COMO FUNCIONA ESSE CÓDIGO

-Recebe um texto do usuário
-Recebe uma chave ateatória de 12 caracteres(obrigatorio)
-Possui 3 vetores no qual ele vai trabalhar para criptografar o texto
	vetor_subst[] : contém os caracteres que serão substituidos no texto original
  	subst_letra[] : possui os caracteres de substituição que será usado para substituir os caracteres do vetor vetor_subst[]
  	                dentro do texto informado pelo usuário

	subst_ord_letra[] : recebe os mesmos valores do vetor subst_letra[], porém de forma rearranjada, de acordo com a chave 
	             informada pelo usuário( lógica para o rearranjo no trecho do código: "Ordenando vetor de acordo com a chave"

-Mesma lógica se dá para descriptografia, tornando única a associação texto-chave
                       	
*/

	
	funcao inicio()
	{
		inteiro operacao
		cadeia texto="", texto_cript="", chave=""

		cadeia vetor_subst[12] = {"A","E","I","O","U","a","e","i","o","u","?"," "}	

		escreva("CRIPTOGRAFIA SIMETRICA\n\n")
		escreva("Digite 1 para criptografar nova mensagem.\nDigite 2 para descriptografar a mensagem com senha: ")
		leia(operacao)
		
		se(operacao == 1){
			cadeia subst_ord_letra[12] = {"2","6","3","4","5","1","8","7","#","@","$","&"}
			cadeia subst_letra[12] = {"2","6","3","4","5","1","8","7","#","@","$","&"}
			
			escreva("Escreva o texto: \n")
			leia(texto)
			
			enquanto(tx.numero_caracteres(chave)!=12){
				escreva("\nDigite uma chave de 16 digitos para criptografar o texto e descriptogafa-lo posteriormente: \n")
				leia(chave)	
			}

			inteiro p_anterior = 0
	   
	          // Ordenando vetor de acordo com a chave
	          para(inteiro i = 0; i < 12; i++){
	                se(tx.obter_caracter(chave, i) < tx.obter_caracter(chave, p_anterior)){
	                    subst_ord_letra[i] = subst_letra[p_anterior]
	                    subst_ord_letra[p_anterior] = subst_letra[i]
	                }
	                
	                p_anterior = i
	          }

			//recebendo mensagem para criptografa-la
			texto_cript = texto
			
			//Descriptografando a mensagem
			para(inteiro i=0; i < 12; i++){
				texto_cript =  tx.substituir(texto_cript, vetor_subst[i], subst_ord_letra[i])
			}

			limpa()
			escreva("CRIPTOGRAFIA SIMETRICA\n\n")

			escreva("TEXTO ORIGINAL: \n\n")
			escreva(texto)
			
			escreva("TEXTO CRIPTOGRAFADO: \n\n")
			escreva(texto_cript)

	          //apenas para permitir copiar o texto do terminal
			leia(chave)
				
		}senao se(operacao == 2){
			cadeia subst_ord_letra[12] = {"2","6","3","4","5","1","8","7","#","@","$","&"}
			cadeia subst_letra[12] = {"2","6","3","4","5","1","8","7","#","@","$","&"}
			
			escreva("Escreva o texto criptografado: \n")
			leia(texto)
			escreva("\nDigite a chave de descriptografia: \n")
			leia(chave)	

			inteiro p_anterior = 0
			cadeia texto_descript
	   
	          // Ordenando vetor de acordo com a chave
	          para(inteiro i = 0; i < 12; i++){
	                se(tx.obter_caracter(chave, i) < tx.obter_caracter(chave, p_anterior)){
	                    subst_ord_letra[i] = subst_letra[p_anterior]
	                    subst_ord_letra[p_anterior] = subst_letra[i]
	                }
	                
	                p_anterior = i
	            	 escreva("\n")
	          }

	          //recebendo mensagem criptografada
			texto_descript = texto

			//Descriptografando a mensagem
			para(inteiro i=0; i < 12; i++){
				texto_descript =  tx.substituir(texto_descript, subst_ord_letra[i], vetor_subst[i])
			}

			limpa()
			escreva("CRIPTOGRAFIA SIMETRICA\n\n")

			escreva("TEXTO ORIGINAL: \n\n")
			escreva(texto)
			
			escreva("\nTEXTO CRIPTOGRAFADO: \n\n")
			escreva(texto_descript)
			
		}senao{
			escreva("Operação Invalida!")
		}
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4053; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */