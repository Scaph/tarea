from bs4 import BeautifulSoup

import requests

url = "https://maroon5antonia.weebly.com/integrantes.html"
pagina = requests.get(url)
formal = BeautifulSoup(pagina.content, "html.parser")
conjunto= formal.select("li font")
datos=list()
valor=2
n=1
for individual in conjunto:
    datos.append(individual.getText())
print(datos)
