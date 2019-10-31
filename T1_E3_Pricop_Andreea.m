for i = 1:1:10 %se genereaza 10 numere complexe
	x = randi(50); %aleator din 1...50
	y = randi(50);
	complex(i) = x*j+y; %se creeaza un vector cu elemente complexe
end
T1_E3_Operatii(complex); %se apeleaza functia Operatii
