programa
{
	
inclua biblioteca Util --> u
	
	funcao inicio()
	{
	     inteiro num
	     inteiro ale = u.sorteia(1, 10)
	     escreva("Tente advinhar o número: ")
		leia(num)
	     
		enquanto(num > ale ou num < ale){
            escreva("Tente advinhar o número: ")
		  leia(num)
		}
	}
}
