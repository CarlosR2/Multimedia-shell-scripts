#Hacer imagen semitransparente al 40%
convert _test.png -alpha set -channel a -evaluate set 40% _logo_transparency40.png
#Para hacer a varias imágenes
for i in *.png; do convert $i -alpha set -channel a -evaluate set 60% $i; done ;

