function clearColor() {
  NC="\e[0m"
  echo -en "${NC}"
}

function printColor() {
  echo $TYPE
  for ((i = 0; i < ${#COLORS[@]}; i+=2)); do
    echo -en "  "
    echo -en "${COLORS[i+1]}"
    echo -en "${COLORS[i]}"
    clearColor
    echo -en "  "
  done
  clearColor
  echo ""
  echo ""
}

function printBackground() {
  echo $TYPE
  for ((i = 0; i < ${#COLORS[@]}; i+=2)); do
    echo -en "${COLORS[i+1]}"
    echo -en "  "
    echo -en "${COLORS[i]}"
    echo -en "  "
  done
  clearColor
  echo ""
  echo ""
}

TYPE="Regular"
COLORS=(
  "Black" "\e[0;30m"
  "Red" "\e[0;31m"
  "Green" "\e[0;32m"
  "Yellow" "\e[0;33m"
  "Blue" "\e[0;34m"
  "Purple" "\e[0;35m"
  "Cyan" "\e[0;36m"
  "White" "\e[0;37m"
)
printColor

TYPE="Bold"
COLORS=(
  "Black" "\e[1;30m"
  "Red" "\e[1;31m"
  "Green" "\e[1;32m"
  "Yellow" "\e[1;33m"
  "Blue" "\e[1;34m"
  "Purple" "\e[1;35m"
  "Cyan" "\e[1;36m"
  "White" "\e[1;37m"
)
printColor

TYPE="Underline"
COLORS=(
  "Black" "\e[4;30m"
  "Red" "\e[4;31m"
  "Green" "\e[4;32m"
  "Yellow" "\e[4;33m"
  "Blue" "\e[4;34m"
  "Purple" "\e[4;35m"
  "Cyan" "\e[4;36m"
  "White" "\e[4;37m"
)
printColor

TYPE="High Intensity"
COLORS=(
  "Black" "\e[0;90m"
  "Red" "\e[0;91m"
  "Green" "\e[0;92m"
  "Yellow" "\e[0;93m"
  "Blue" "\e[0;94m"
  "Purple" "\e[0;95m"
  "Cyan" "\e[0;96m"
  "White" "\e[0;97m"
)
printColor

TYPE="Bold High Intensity"
COLORS=(
  "Black" "\e[1;90m"
  "Red" "\e[1;91m"
  "Green" "\e[1;92m"
  "Yellow" "\e[1;93m"
  "Blue" "\e[1;94m"
  "Purple" "\e[1;95m"
  "Cyan" "\e[1;96m"
  "White" "\e[1;97m"
)
printColor

TYPE="Backgrounds"
COLORS=(
  "Black" "\e[40m"
  "Red" "\e[41m"
  "Green" "\e[42m"
  "Yellow" "\e[43m"
  "Blue" "\e[44m"
  "Purple" "\e[45m"
  "Cyan" "\e[46m"
  "White" "\e[47m"
)
printBackground

TYPE="High Intensity backgrounds"
COLORS=(
  "Black" "\e[0;100"
  "Red" "\e[0;101"
  "Green" "\e[0;102"
  "Yellow" "\e[0;103"
  "Blue" "\e[0;104"
  "Purple" "\e[0;105"
  "Cyan" "\e[0;106"
  "White" "\e[0;107"
)
