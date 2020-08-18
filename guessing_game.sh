## Guessing Game##
#User will try to guess the number of files in the directory#


choice=-1
correct=10
typeset -i num=0

#Game Begins
echo "How many files are in the working directory?"

###Answer
(( answer = 10))

while (( choice !=answer )); do
        num=num+1
        read -p "Take a guess $num: " choice
        if (( choice < correct )); then
                echo "Too Low"
                echo "Try again"
        elif (( choice > correct )); then
                echo "Too High"
                echo "Try again"
        fi
done
#Finish
echo "CONGRATULATIONS!!You guessed it right!!"
