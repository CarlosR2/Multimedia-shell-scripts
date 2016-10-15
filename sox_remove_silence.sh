#Trim de audio: quitar los silencios 
for f in *.mp3; do sox $f trimmed_"$f" silence 1 0.1 1% -1 0.1 1%; done
