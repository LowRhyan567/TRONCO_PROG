try:
  while True:
    num = int(input("Digite um número inteiro positivo: "))

    if num < 0:
      print("EU DISSE INTEIRO POSITIVO, ANIMAL!")
    else:
      print("Boa garota! 😈")
      break
except ValueError:
  print("Seu analfabeto!")
