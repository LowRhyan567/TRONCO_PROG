// gerador de tabuada

programa
{
	
	funcao inicio()
	{
		inteiro num
		inteiro i
		
		escreva("Digite o número para gerar a tabuada: ")
		leia(num)

		para(i = 1; i <= 10; i = i + 1){
		  escreva(num, " x ", i, " = ", num * i, "\n")
		}
	}
}
