# welcome to python
# bienvienido a python

import sys
import time

def escribir(text):
    for letra in text:
        time.sleep(0.1)
        sys.stdout.write(letra)
        sys.stdout.flush()
    print("")    
    time.sleep(0.5)

def selfdestruct(n):
    escribir(f"T menos {n} segundos ")
    for i in range(n): 
        print(n-i)
        time.sleep(1)

    print("BOOOM!!!")
    time.sleep(1)

print("\n")

escribir("presiona enter para continuar")

entrada = input()

escribir("Bienvenido al mundo de la programación")
escribir("¿cual es tu nombre?")

nombre = input()

escribir(f"hola {nombre}, la programación es una herramienta poderosa y un tema muy interesante ")


while True:
    escribir("¿ te gustaria saber más? [S/N]")
    seguir = input()
    if seguir=="N":
        escribir("es una lastima")
        escribir( f"gusto en conocerte {nombre} iniciando rutina de autodestrucción")
        selfdestruct(10)
        break
    elif seguir =="S":
        escribir("soy un programa escrito en python un lenguaje  de proposito general de alto nivel,")

        escribir("el cual es usado en muchas aplicaciones alrededor del mundo ")
        escribir("para desarrollar herramientas, resolver problemas y por que no tambien realizar video juegos ")
        escribir("espero que esto que te he comentado halla encendido una chispa de curiosidad ")
        escribir("y te motive a adrentrarte en este mundo de la programación")
        break
    print("valor no es valido intenta escribir letras [S] para continuar o [N] para finalizar")

print("\n \n")
time.sleep(3)