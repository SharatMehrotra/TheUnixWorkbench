function guessgame() 
{
    echo "Enter your guess: "
    read guess
    ans=$(ls -l |grep "^-"|wc -l) 
    echo $ans
    while [[ $guess -ne $ans ]]
    do
    if [[ $guess -gt $ans ]]
    then 
    echo "Your guess is too high. Enter new guess"
    read guess
    elif [[ $guess -lt $ans ]]  
    then 
    echo "Your guess is too low. Enter new guess"
    read guess
    fi 
    done
    echo "Your guess is correct!"
    echo "The number of files is $guess"
}
guessgame