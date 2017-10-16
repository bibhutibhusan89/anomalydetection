while read line; do
	modifiedLine=( $line )
	inputDate=`echo ${modifiedLine[0]}`
	inputTime=`echo ${modifiedLine[1]}`
	inputFreq=`echo ${modifiedLine[2]}`
	inputValue=`echo ${modifiedLine[3]}`
	day=`echo $inputDate | cut -d'.' -f1`
	month=`echo $inputDate | cut -d'.' -f2`
	year=`echo $inputDate | cut -d'.' -f3`
	hour=`echo $inputTime | cut -d':' -f1`
	minutes=`echo $inputTime | cut -d':' -f2`
	seconds=`echo $inputTime | cut -d':' -f3`
	echo $day','$month','$year','$hour','$minutes','$seconds','$inputFreq','$inputValue
done < sample.txt
