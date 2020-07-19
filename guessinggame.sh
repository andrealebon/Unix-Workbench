no_files=$(ls |wc -l)

function gg {
read gval
if [[ $gval -eq $no_files ]]
then
echo "Awesome job guessing!"
echo
echo
echo "Here's a list of your files if you'd like to see:"
for i in $(ls)
do
echo
echo " - $i and "
done
echo
echo "See you next time. Hope you had fun guessing!"
echo
else
if [[ $gval -gt $no_files ]]
then
echo
echo "Whoops, lesser number of files, try again!"
gg
else
echo 
echo "More number of files, take another guess!"
gg
fi
fi
}
echo
echo "Hello Hello, Welcome to the Guessing Game!"
echo 
echo "Take a random bet on the number of files in the directory:"
gg
