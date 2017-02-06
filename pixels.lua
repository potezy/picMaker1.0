function ppmHeader()
	 file = io.open("pic.ppm" , "w")
	 file:write("P3 500 500 256\n")
	 io.close(file)
end

function draw()
	 file = io.open("pic.ppm" , "a")
	 for x =499,0,-1 do
		for y =499,0,-1 do
		      	if x%2 == 0 then
			file:write((x+y)%256, " " , (y+x)%128 ," ", (y+x)%64, " ")
			else file:write((x+y)%256, " ",(x+y)%128, " ", (x+y)%64, " ")
			end
		end
		file:write("\n")
       	 end
	 io.close(file)
end

ppmHeader()
draw()