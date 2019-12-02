echo "Running the input preparation for the turbulent simulation" #Printing a message
n=1 #Creating a dumby variable
for Re in 10000 50000 100000 500000 1000000
do
m=1 #Creasting a dumby varable called m
for xMesh in 512 1024
do
o=1 #Creating a dumby variable called o
for yMesh in 128 256
do

mkdir Marc_${n}_${m}_${o} #Crearting a directory named Marc_ with the number n_m_o assigned by the loop

cd originalF #Entering directory called originalF

sed -e "s/rrrrrrr/${Re}/" -e "s/xxxx/${xMesh}/" -e "s/yyy/${yMesh}/" inputOrig > input.dat #Replacing the value of rrrrrrr with Re, xxxx with xMech, yyy with yMech to their corresponding value in every loop

cp input.dat ../Marc_${n}_${m}_${o} #copying input.dat file in the directory created above

echo "Creating new folders with incrementing names for every Re number 2 xMesh and for every xMesh 2 yMesh"

cd ../#Going to origine directory
o=$(( $o + 1 )) #Increaing the value of the dumby variable o
done
m=$(( $m + 1 )) #Increaing the value of the dumby variable m
done
n=$(( $n + 1 )) #Increaing the value of the dumby variable n
done

echo "input file preparation is done" #Printing the following statement
