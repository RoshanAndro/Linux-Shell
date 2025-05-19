
#set -vx

if [ $# -gt 1 ]; then
  printf "\nSyntax: $0 [directory_location]\n"
  exit 1
fi

if [ $# -ne 0 ]; then
  cd "$1" || { echo "Cannot change to directory: $1"; exit 1; }
fi

for i in *; do
  if [ -f "$i" ]; then
    mv "$i" "$i.$$"
  fi
done

echo "Filenames changed to filename.$$"
