#!/bin/bash
abs_path="/home/djumanto/Documents/Tugas/Sisop/no2"
function create_file_and_dir {
    cd $abs_path
    img_url="https://upload.wikimedia.org/wikipedia/commons/6/6d/Flag-map_of_Indonesia.png"
    total_download=$(expr $(date +%k))
    data=$(expr $(ls | grep "kumpulan" | cut -d '_' -f2 | tail -n 1) + 1)
    directory="kumpulan_$data"
    mkdir "$directory"
    i=1
    while [[ $i -le $total_download ]]
    do
        wget -O $directory/perjalanan_$i.jpeg $img_url
        ((++i))
    done
}

function zip_dir_and_files {
    cd $abs_path
    data=$(expr $(ls | grep "devil" | cut -d '.' -f1 | cut -d '_' -f2 | tail -n 1) + 1)
    find . -type d -name "kumpulan*" -exec zip -r "devil_$data.zip" {} \; -prune
    find . -type d -name "kumpulan*" -exec rm -r {} \; -prune
}

if [[ $1 = "-zip" ]];
then
    zip_dir_and_files
elif [[ $1 = "-dw" ]];
then
    create_file_and_dir
fi