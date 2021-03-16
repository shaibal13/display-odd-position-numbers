declare -a numberOdd
declare -i k=0
declare -i zeroForTest=0
read -p "Enter your 7 digit number : " number
n=$number
for((i=7;i>0;i--))
do
     lastdigit=$((n % 10))
       n=$((n / 10))
       j=$((i % 2))
       if [ $j != $zeroForTest ]
       then
         numberOdd[$k]=$lastdigit
              k=$((k +1))
         fi
done

length=${#numberOdd[@]}
for((i=$((length - 1));i>=0;i--))
do
     echo "${numberOdd[$i]}"
done