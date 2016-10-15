#Reducir una imagen al lado máximo de 1024 (manteniendo proporciones)
mogrify -resize '1024x1024>' *.png
#Quitar bordes transparentes en una imagen
mogrify -trim *.png
# PNGQUANT - compresión de imagenes png
pngquant -f -v *.png
