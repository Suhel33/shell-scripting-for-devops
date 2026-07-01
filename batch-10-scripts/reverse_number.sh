
echo "Method -1"
for i in {5..1}
do
	echo "$i"
done

echo "Method -2"
for (( num = 5; num >= 1; num-- ))
do
	echo "$num"
done

