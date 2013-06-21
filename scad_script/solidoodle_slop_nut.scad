use <write/Write.scad>

//Choose from 3mm, 5mm, or 5/16 rod and wood or aluminum bed
parts = "516_wood_bed" ; // ([choose_one,516_wood_bed,516_aluminum_bed, 5mm_wood_bed,5mm_aluminum_bed, 3mm_wood_bed,3mm_aluminum_bed])



import("library/*.stl")
print_part();



module print_part();

if (parts == "516_wood_bed"){
		rotate([180,0,0])
		516WB();
} else 
	if (parts == "516_aluminum_bed"){
		516AB();
} else 
	if (parts == "5mm_wood_bed"){
		5MMWB();
} else 
	if (parts == "5mm_aluminum_bed"){
		5MMAB();
} else 
	if (parts == "3mm_wood_bed"){
		3MMWB();
} else 
	if (parts == "3mm_aluminum_bed") {
		3MMAB();
	
} else 
	if (parts == "choose_one"){
		write("?",font="write/Letters.dxf",h=30,t=10, center=true);
} else {

}



module 516WB(){
	import("library/516tas_wb.stl",convexity=10);
}


module 516AB(){
	import("library/516tas_ab.stl",convexity=10);
}

module 5MMWB(){
	import("library/5tas_wb.stl",convexity=10);
}

module 5MMAB(){
	import("library/5tas_ab.stl",convexity=10);
}

module 3MMWB(){
	import("library/3tas_wb.stl",convexity=10);
}

module 3MMAB(){
	import("library/3tas_ab.stl",convexity=10);
}