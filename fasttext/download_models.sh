NG=$1

function get()
{
        export target=$1
        export file=$2
        echo "$target/$file"
        wget $target/$file
}

echo "Downloading model for language: ${LANG}"
export TARGET="https://dl.fbaipublicfiles.com/fasttext/vectors-crawl"
export FILE="cc.${LANG}.300.bin.gz"

get $TARGET $FILE
