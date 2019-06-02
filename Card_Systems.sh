#Created by Luke Roszmann
#Do Not Distribute This Code

clear
echo "Welcome To Credit Card Systems"
while [ 1 ]
do
    echo "Please Swipe Card Now (Press Enter to Exit):"
    read data
 
    if [ "$data" = "" ]
    then
        echo "Thanks For Choosing Credit Card Systems"
	echo "To Return type chmod a+x Card_Systems.sh"
	echo "Then, type ./Card_Systems.sh"
        exit 0
    fi
 
    clear
 
    num="$(echo "$data"|cut -d\B -f2|cut -d\^ -f1)"
    name="$(echo "$data"|cut -d\^ -f2)"
    lname="$(echo "$name"|cut -d\/ -f1)"
    fname="$(echo "$name"|cut -d\/ -f2)"
    exdate="$(echo "$data"|cut -d\^ -f3)"
    exdate="${exdate:0:2}/${exdate:2:2}"
 
    echo "Card Number: $num"
    echo "Card Holder: $lname , $fname"
    echo "Experation Date: $exdate"
    echo "----------------------------"
done
