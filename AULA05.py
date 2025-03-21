idade = int(input("Digite sua idade: "))

if idade >= 18 and idade < 110:
  print("Vocẽ é maior de idade.")
elif idade == 16:
  print("Você pode votar, mas não dirigir.")
elif idade >= 110:
  print("Você está morto.")
else:
  print("Você é menor de idade.")
