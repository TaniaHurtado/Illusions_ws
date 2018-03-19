# Taller ilusiones visuales

## Propósito

Comprender algunos aspectos fundamentales de la [inferencia inconsciente](https://github.com/VisualComputing/Cognitive) de la percepción visual humana.

## Tareas

Implementar al menos 6 ilusiones de tres tipos distintos (paradójicas, geométricas, ambiguas, etc.), al menos dos con movimiento y dos con interactividad.

## Integrantes
(2, o 3 si van a participar en el [best illusion of the year contest](illusionoftheyear.com) o van a implementar algunas ilusiones como visual hack)

Complete la tabla:

| Integrante | github nick |
|------------|-------------|
| Miguel Ángel Ballén | mballeng91 |
| Tania Hurtado| TaniaHurtado|
| Ivan Rojas | idrojasf |

## Discusión

1. Complete la la tabla

| Ilusión | Categoria | Referencia | Tipo de interactividad (si aplica) | URL código base (si aplica) |
|---------|-----------|------------|------------------------------------|-----------------------------|
| Hidden_Patterns | Interactivo | https://es.wikipedia.org/wiki/Copo_de_nieve_de_Koch | Hacer click para ver el patrón de fractal hasta el nivel 7 de recursión  | https://www.openprocessing.org/sketch/64573|
| Illusory square | movimiento | Explanation by Geek.com: "The phantom square connecting the four smaller dots is a result of illusory contours. The same effect happens with some static images, but it’s much more profound in this animation. It is believed illusory contours are generated in the V2 area of the visual cortex, which is responsible for processing complex shapes. It’s simply thrown off by the moving dots and the intersection of the larger dots with the square in the background. The result is that the smaller dots are perceived as the corners of a square."           |          No aplica                         | https://www.openprocessing.org/sketch/168628                            |
| Square Illusion |       Geométrica    |  En este ejemplo los patrones entrelazan los bordes rectos y las características cuadradas de la segunda mitad del conjunto y el foco circular de la primera mitad. Las curvas se crean en tu mente por este enfoque en las esquinas oscuras y claras de los cuadrados.        |    No aplica       |          Implementado desde cero            |
|    Sine Waves     |     Movimiento      | Creación de ondas sinusoidales que aparentan la formación de círculos mostrando distintas figuras.  https://betterexplained.com/articles/intuitive-understanding-of-sine-waves/         |        No aplica                            |              https://www.openprocessing.org/sketch/4324#               |
|Building checkerboard | Geometrica | Akiyoshi Kitaoka, Diciembre 30, 2009 | Al presionar la tecla A desaparecen los cuadros pequeños | Implentado desde cero |
|Banana Optical Illusion | Paradójica         |  Este es un ejemplo de una ilusión de constancia del color, en la que nuestro cerebro nos hace dar cuenta de lo que puede parecer una sombra azulada y nos dicen de qué color deben ser "las bananas". https://puzzlewocky.com/optical-illusions/color-illusions/banana-illusion/  |             No aplica                        |                      No aplica     |
|Stepping feet |Movimiento e Interactivo|Al observar el movimiento de "pies" negros y blancos, estos parecen caminar alternativamente, aunque en realidad, su movimiento es siempre simultáneo. http://www.michaelbach.de/ot/mot-feetLin/index.html            |   Hacer click para que desaparezcan las lineas verticales y pueda obervarse el movimiento de los pasos | https://www.openprocessing.org/sketch/48692                             |


### Nota
    Ejecutar el archivo 'main_class.pde' y visualizar las ilusiones con el uso de mouse
    y barra espaciadora para cambiar entre ilusiones.   

2. Describa brevememente las referencias estudiadas y los posibles temas en los que le gustaría profundizar:

    Hidden patterns: La ilusión se concretiza cuando al utilizar recursivamente el renderizado
    de varios círculos, se obtiene la forma de un copo de nieve. Esto es explicado por el modelo 
    matemático de fractales un objeto cuya estructura básica se repite a diferentes escalas. Se 
    encuentra en muchas de las estructuras naturales. La dimensión metrica fractal de un objeto, 
    es un numero no entero.
    
    Illusory square: A nivel subconsciente, como en muchas de las ilusiones ópticas...Se percibe
    un determinado patrón o figura, que a nivel básico no se encuentra dentro del gráfico.
    Dado el movimiento de los círculos pequeños (blancos) hacia el interior del cuadro,
    se percibe que hay un cuadrado(En realidad un rombo) cuando estos salen del cuadrado e
    ingresan a las elipses grandes(grises). Si se retirara el cuadrado del fondo la ilusión
    no funcionaría de la misma manera.
    
    En cuanto a la apreciación de las diferetnes ilusiones opticas, las que estan enfocadas en la parte paradojica o perspectiva hacen que la intriga sea mayor, debido a que se pueden apreciar diferentes visiones identificando ciertas  nociones de historias o momentos.
    
    Es curioso como la ilusión de las bananas nos hace asumir que hay pixeles amarillos
    cuando esto en realidad no es cierto. Si se analiza la imagen dependiendo los colores al rededor
    se puede obtener una percepción distinta sobre los pixeles correspondientes a las bananas.
    


## Entrega

* Modo de entrega: [Fork](https://help.github.com/articles/fork-a-repo/) la plantilla en las cuentas de los integrantes (de las que se tomará una al azar).
* Plazo: 18/3/18 a las 24h.

