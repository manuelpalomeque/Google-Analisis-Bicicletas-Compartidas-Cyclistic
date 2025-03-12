# **Google Data Analytics: Bicicletas Compartidas Cyclistic** 🚲

Curso: [Análisis de datos de Google Analytics Capstone: Completar un caso de éxito](https://www.coursera.org/learn/google-data-analytics-capstone)

## *Introdución:*
En este caso de estudio, realizaré tareas del mundo real de un analista de datos junior en una empresa ficticia, Cyclistic. Para responder las preguntas claves, seguiré los pasos del proceso de análisis de datos: 
1. [Preguntar](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/tree/main?tab=readme-ov-file#1--preguntar)
2. [Preparar](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/tree/main#2--preparar)
3. [Procesar](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/blob/main/README.md#3--procesar)
4. Analizar
5. Compartir
6. Actuar.
   
Identificaré tendencias, en base a los datos históricos de viajes en bicicletas, para entender cómo difiere el comportamiento de los ciclistas ocasionales, con el de los ciclistas con membresías pagas. Este análisis ayudará a los ejecutivos a tomar decisiones sobre los programas y las estrategias de marketing para convertir a los ciclistas ocasionales en ciclistas habituales con membresías anuales.

### *Fuente de datos:*
Se trabaja con datos públicos: [Divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)

### *Notebook de Jupyter completa con el análisis de los datos:*
Utilice el lenguaje de programación *R*, para desarrollar el proceso de análisis de los datos. Implemente uns Notebook de Jupyter para facilitar la visualización tanto del código como los Outputs de cada script.
* [Ver Notebook de Jupyter](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/blob/main/bicicletas-compartidas-cyclist-google.ipynb)

## *Escenario*
Soy un analista de datos júnior que trabaja en el equipo de analistas de marketing de Cyclistic, una empresa de bicicletas compartidas de Chicago. La directora de marketing cree que el éxito futuro de la empresa depende de maximizar la cantidad de membresías anuales. Por lo tanto, mi equipo quiere entender qué diferencias existen en el uso de las bicicletas Cyclistic entre los ciclistas ocasionales y los miembros anuales. 
A través de estos conocimientos, mi equipo diseñará una nueva estrategia de marketing para convertir a los ciclistas ocasionales en miembros anuales. Sin embargo, antes de eso, los ejecutivos de Cyclistic deben aprobar nuestras recomendaciones; por eso, deben respaldar mi propuesta con una visión convincente de los datos y visualizaciones profesionales de los mismos.

### *Acerca de la empresa*
En 2016, Cyclistic lanzó una exitosa oferta de bicicletas compartidas. Desde entonces, el programa creció hasta alcanzar una flota de 5,824 bicicletas georreferenciadas y bloqueadas en una red de 692 estaciones en toda Chicago. Las bicicletas se pueden desbloquear desde una estación y devolverse en cualquier otra estación del sistema en cualquier momento.
Hasta ahora, la estrategia de marketing de Cyclistic se basaba en la construcción de un reconocimiento de marca general y en atraer a amplios segmentos de consumidores. Uno de los enfoques que ayudó a hacer esto posible fue la flexibilidad de sus planes de precios: pases de un solo viaje, pases de un día completo y membresías anuales. A los clientes que compran pases de un solo viaje o pases de un día completo se los llama ciclistas ocasionales. Los clientes que compran membresías anuales se llaman miembros de Cyclistic.
Los analistas financieros de Cyclistic llegaron a la conclusión de que los miembros anuales son mucho más rentables que los ciclistas ocasionales. Aunque la flexibilidad de precios ayuda a Cyclistic a atraer más clientes, Moreno cree que maximizar el número de miembros anuales será clave para el crecimiento futuro. En lugar de crear una campaña de marketing que apunte a todos los clientes nuevos, Moreno cree que hay muchas posibilidades de convertir a los ciclistas ocasionales en miembros. Ella señala que los ciclistas ocasionales ya conocen el programa de Cyclistic y han elegido a Cyclistic para sus necesidades de movilidad.
Moreno estableció una meta clara: Diseñar estrategias de marketing orientadas a convertir a los ciclistas ocasionales en miembros anuales. Sin embargo, para hacer eso, el equipo de analistas de marketing necesita entender mejor cómo difieren los miembros anuales y los ciclistas ocasionales, por qué los ciclistas ocasionales comprarían una membresía y cómo los medios digitales podrían afectar sus tácticas de marketing. Moreno y su equipo están interesados en analizar los datos históricos de viajes en bicicleta de Cyclistic para identificar tendencias.

## *1- Preguntar*
### *Tarea Empresarial:*
Como analista de datos, en el equipo de analistas de marketing de Cyclistic, mi tarea es comprender las diferencias en el uso de las bicicletas Cyclistic entre los ciclistas ocasionales y los miembros anuales, ya que representan una fuente de ingresos estable y rentable en comparación con los ciclistas ocasionales. 
Parto de la premisa de la directora de marketing, la licenciada Lily Moreno, quien  ha establecido la meta de maximizar el número de membresías anuales, ya que esto es crucial para el éxito futuro de la empresa. 
Por lo tanto, mi objetivo es proporcionar una visión detallada de cómo difieren los socios anuales y los ciclistas ocasionales en términos de sus patrones de uso de bicicletas. Esta comprensión ayudará a que el equipo ejecutivo de Cyclistic, tome decisiones informadas  y apruebe una nueva estrategia de marketing que convierta a los ciclistas ocasionales en miembros anuales.

## *2- Preparar*
### *Fuentes de Datos Utilizadas:* 
Usaré los datos históricos de los viajes registrados de Cyclistic para analizar e identificar las tendencias de los últimos 12 meses, y con estos,  puedo responder las preguntas de la empresa. Estos datos se originan en línea, en base a los registros (logs) de los viajeros. 
Estos son datos de internos y de primera fuente (First-Party data), ya que provienen de la misma empresa que proporciona los datos (dentro del contexto del caso práctico, donde pertenezco al equipo de analistas de datos de la empresa), los mismos son públicos y permiten explorar cómo difieren los tipos de clientes que usan las bicicletas de Cyclistic.  Para el proceso de preparación de los datos, extraje los últimos 12 meses disponibles, desde el siguiente enlace [Divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)  (Los conjuntos de datos tienen un nombre diferente porque Cyclistic es una empresa ficticia). 

Los datos se encuentran originalmente comprimidos en archivos .zip. Luego de descomprimirlos, verificamos que los mismos tienen un formato .csv, y se registra un archivo por mes. En estos archivos, los Datos están estructurados, en filas y columnas, compuestas por datos del tipo numérico y texto. En estas columnas encontramos diferentes formatos de datos. A continuación se agrupan las columnas según el tipo de formato de dato:
* Cualitativos:  ride_id, rideable_type, start_statios_name, start_station_id, end_station_name, end_tation_id, member_casual.
* Cuantitativos Continuos: started_at, ended_at, start_lat, start_Ing, end_lat, end_ing

Los datos están organizados y representados en forma de datos largos (Long Data). No hay problema de sesgo de muestreo, ya que los datos son completos e incluyen a toda la población de usuarios de bicicletas, ya sean usuarios casuales o con membresías. Se  implementa una visualización  para identificar si hay sesgo visual, pero no se identifican valores favorecedores para ninguna de las sesiones.

![Id25](https://raw.githubusercontent.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/main/preparar.png)

Respecto a la confiabilidad de los datos, los mismos son originales de la propia empresa (originales y confiables), esos datos son integrales, actuales y citados, por ello cumplen con el criterio ROCC.

### *Desarrollo en R:*
* [Ver Notebook de Jupyter](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/blob/main/bicicletas-compartidas-cyclist-google.ipynb)
* [Ver Script en R](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/blob/main/02%20-%20Preparar%20Datos.R)


## *3- Procesar*
### *Herramienta de análisis:* 
Para procesar los datos utilizare el lenguaje de programación *R*, ya que permite la **manipulacion de grandes volumenes de datos** (como son los datos historicos de los ultimos 12 meses de la empresa), lo cual no me permitió hacer en Excel ni Google Sheets, debido a la cantidad de registros resultantes.
Además, me permite ir creando una **documentacion detallad**a mediente el uso de notebooks, lo que me permite  escribir el código en scripts que pueden ser ejecutados nuevamente para replicar los resultados. Esto es importante para el análisis de datos en entornos donde se necesita transparencia y replicabilidad. 

### *Limpiza y manipulación de los datos:* 
Limpiar los datos es una parte fundamental del análisis de datos para asegurar que los resultados sean precisos y confiables. Para lo cual, realicé los siguientes paso:
* *Exploración Inicial:* identifiqué los tipos de datos  y su significancia, junto con una exploración de los registros. Eliminé columnas que no son de utilidad para mi análisis.
* *Normalización de los datos:* organice y unifiqué los diferentes conjuntos de datos en un solo dataframe, para consolidar y unificar los datos.
* *Eliminación de Duplicados:* Busqué y eliminé cualquier fila duplicada, ya que pueden afectar la precisión de los resultados.
* *Estandarización de Formatos:* Renombre las columnas al español, al igual que los registros de los tipos de bicicletas y tipos de clientes, para que estos datos queden en el formato correcto para el análisis.
* *Limpieza de Datos Erróneos o faltantes:* identifiqué registros con valores faltantes o nulos y aquellos con descripción "NA", para luego eliminar dichos registros.
* *Filtrar Datos:* Como necesito analizar los datos de los usuarios casuales, no necesito los datos de aquellos usuarios que ya son miembros.


### *Desarrollo en R:*
* [Ver Notebook de Jupyter](https://github.com/manuelpalomeque/An-lisis-Bicicletas-Compartidas-Cyclistic/blob/main/bicicletas-compartidas-cyclist-google.ipynb)
