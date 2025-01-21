
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 number1 number2"
    exit 1
fi


num1=$1
num2=$2


if ! [[ "$num1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Les arguments doivent être des nombres."
    exit 1
fi


result=$(echo "$num1 + $num2" |bc)

echo "Le résultat de l'addition de $num1 et $num2 est : $result"

