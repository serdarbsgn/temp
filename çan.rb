notlar = [['Ahmet', 50 , 60] , ['Mehmet', 60 , 90] , ['Temel', 70 , 20] ,
	['Dursun', 0 , 100] , ['Fadime', 100 , 100] , ['Zeynep', 30 , 30]]
	
$studentavg, $bellstudent , $bellpass ,$bellavg, $classavg  = [] , [] , [] , [0,0] , 0


def average arr

avg = arr[1]*0.4 + arr[2]*0.6
	
	if avg >=20 && avg<=80
	$bellavg[1]+=1
	$bellavg[0] += avg
	$bellstudent << arr[0]
	end
	
$classavg+=avg

return [arr[0], avg]
end

notlar.each{|student| $studentavg << average(student)}

$classavg/=notlar.length
$bellavg[0]/=$bellavg[1]

@passcount=0
def pass arr,final
	if final >=50
		if arr[1]>=60
			puts arr[0] + " isimli öğrenci " + arr[1].to_i.to_s + " Not ortalamasıyla dersi geçmiştir."
			@passcount+=1
		elsif arr[1]>=40 && arr[1]>=$bellavg[0]
			puts arr[0] + " isimli öğrenci " + arr[1].to_i.to_s + " Not ortalamasıyla dersi geçmiştir. -- Çan"
			@passcount+=1
			$bellpass << arr
		end
	end
end

for i in 0..notlar.length-1
pass($studentavg[i],notlar[i][2])
end

puts "Toplam Öğrenci Sayısı: #{notlar.length} \n"
puts "Geçen Öğrenci Sayısı: #{@passcount} \n"
puts "Genel Sınıf Ortalaması: #{$classavgs} \n"
puts "Çana Girenlerin Ortalaması: #{$bellavg[0]} \n"
puts "Geçenlerin Yüzdesi %#{100*@passcount/notlar.length}"
