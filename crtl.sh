chmod +x E.pl
chmod +x E.py
python E.py > code.txt
sed -e 's/true},/true}\n/g' code.txt > code_tmp.txt
./E.pl code_tmp.txt > course_tmp.txt
sed -e 's/&quot;/ /g' course_tmp.txt >tmp.txt
sed -e 's/,[ ]\tTime/\tTime/g' tmp.txt >tmp2.txt
sed -e 's/[ ],[ ]$/ /g' tmp2.txt >course.txt
rm -f code.txt
rm -f code_tmp.txt
rm -f course_tmp.txt
rm -f tmp.txt
rm -f tmp2.txt
