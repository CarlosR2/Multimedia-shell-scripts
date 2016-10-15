#Quitamos los espacios
for f in *.wav; do mv "$f" "${f// /_}"; done
#Wav a Mp3
for file in *.wav; do ffmpeg -i $file -vn -ar 44100 -ac 2 -ab 192k -f mp3 $file.mp3; done;

