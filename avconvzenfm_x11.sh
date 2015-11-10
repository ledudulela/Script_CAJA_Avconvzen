#!/bin/bash
# auteur : ledudulela
# version: 1.1
# màj : 2015-06-10 20:40 
# util: convertit les vidéos sélectionnées
# dépendances: zenity, avconv, avconvzen
# x11=spécial ts->mp4 avec correction aac
OLD_IFS="$IFS"
IFS='
'
arrFilePaths=( $CAJA_SCRIPT_SELECTED_FILE_PATHS )
IFS="$OLD_IFS"
for selectedFile in "${arrFilePaths[@]}"
do
	bash /usr/local/bin/avconvzen -x11 "$selectedFile"
done
if [ $? == 0 ]
then
	zenity --info --title="Conversion" --text="Conversion terminée" --timeout=10
fi
exit
