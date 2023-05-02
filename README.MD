# Author: 
Eduardo Marval

# Date: 
01 MAY, 2023

# Title: 
Desafío - Flujo, ciclos y Métodos (III)

# Description:

- Aplicando los conceptos y herramientas aprendidas hasta ahora nos conectaremos a la API de la NASA para descargar fotos de los Rovers y filtrar resultados acorde a lo pedido.

¿Qué tenemos que saber para enfrentarnos a este desafío?
*  Consumo de una API Rest con autenticación sencilla.
* Crear métodos que reciban parámetros.
* Iterar resultados dentro de un hash y un arreglo.
* Filtrar resultados dentro de un hash y un arreglo.
* Generar un archivo HTML con los resultados de la consulta a la API. Link de la API a consultar
https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key
=DEMO_KEY

# Nota:
Esta API requiere autenticación simple para conectarse y de ese modo obtener un token de acceso. En el link entregado ya viene con ese api_key generada solo para visualizar la información que contiene. Deberás generar tu propio api_key siguiendo el proceso indicado en su documentación.

# Pasos para acceder a Mars Rover Photos

Una vez generado el api_key deberás ingresar en el menú los siguientes apartados:
1. En el menú de navegación ingresar a Browse APIs.
2. Luego, buscar en el listado de información Mars Rover Photos.
3. Luego en Example Queries, seleccionar el siguiente enlace
4. En el parámetro ?sol= aparece el número 1000, esto retorna mil fotos asociadas a la consulta, modifica el número e ingresa al menos 10 para que el retorno de información no sea tan extenso.
5. En el parámetro $api_key=, deberás ingresar la key generada durante el registro solicitado en la documentación.


# Requirements:

- Crear el método request que reciba una url y retorne el hash con los resultados.

- Crear un método llamado buid_web_page que reciba el hash de respuesta con todos los datos y construya una página web. Se evaluará la página creada y tiene que tener este formato: 
<html> 
<head> 
</head> 
<body> 
<ul>
<li><img src='.../398380645PRCLF0030000CC AM04010L1.PNG'></li>
<li><img src='.../398381687EDR_F0030000CCAM05010M_.JPG'></li> 
</ul>
</body> 
</html>.

- Crear un método photos_count que reciba el hash de respuesta y devuelva un nuevo hash con el nombre de la cámara y la cantidad de fotos.

 
● /index.rb
● /README.MD

