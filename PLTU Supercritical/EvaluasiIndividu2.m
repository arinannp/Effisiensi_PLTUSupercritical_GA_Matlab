function Fitness = EvaluasiIndividu2(x,AntiKonvergensi,PowerGenerator)
    %Menghitung Fraksi Massa Ekstraksi
    %Fraksi Massa Feedwater Pada High Pressure Heater 7
    %Entalpi Steam (kJ/kg)
    h2 = 3021.0;    
    h27 = 1179.7;
    %Entalpi Water (kJ/kg)
    h25 = 1150.2;
    h26 = x(2);
    %h26 = 1272.1;
    y1 = (h26-h25)/(h2-h27);
    
    %Fraksi Massa Feedwater Pada High Pressure Heater 6
    %Entalpi Steam (kJ/kg)
    h4 = 2939.1;    
    h27 = 1179.7;
    h28 = 969.0;
    %Entalpi Water (kJ/kg)
    h24 = 952.5;
    h25 = 1150.2;
    y2 = ((h25-h24)-(y1*(h27-h28)))/(h4-h28);
    
    %Fraksi Massa Feedwater Pada High Pressure Heater 5
    %Entalpi Steam (kJ/kg)
    h7 = 3369.3;    
    h28 = 969.0;
    h29 = 853.6;
    %Entalpi Water (kJ/kg)
    h23 = 842.1;
    h24 = 952.5;
    y3 = ((h24-h23)-((y1+y2)*(h28-h29)))/(h7-h29);

    %Fraksi Massa Feedwater Pada Daerator
    %Entalpi Steam (kJ/kg)
    h9 = 3191.9;    
    h21 = 803.1;
    h29 = 853.6;
    %Entalpi Water (kJ/kg)
    h20 = 638.0;
    y4 = ((h21-h20)-((y1+y2+y3)*(h29-h20)))/(h9-h20);
 
    %Fraksi Massa Feedwater Pada Low Pressure Heater 3
    %Entalpi Steam (kJ/kg)
    h12 = 2789.1;    
    h30 = 415.2;
    %Entalpi Water (kJ/kg)
    h19 = 391.6;
    h20 = 638.0;
    y5 = ((1-y1-y2-y3-y4)*(h20-h19))/(h12-h30);

    %Fraksi Massa Feedwater Pada Low Pressure Heater 2
    %Entalpi Steam (kJ/kg)
    h13 = 2667.5;    
    h30 = 415.2;
    h31 = 311.4;
    %Entalpi Water (kJ/kg)
    h18 = 288.0;
    h19 = 391.6;
    y6 = ((1-y1-y2-y3-y4)*(h19-h18)-(y5*(h30-h31)))/(h13-h31);
    
    %Fraksi Massa Feedwater Pada Low Pressure Heater 1
    %Entalpi Steam (kJ/kg)
    h14 = 2531.5;    
    h31 = 311.4;
    h32 = 199.3;
    %Entalpi Water (kJ/kg)
    h17 = 175.9;
    h18 = 288.0;
    y7 = ((1-y1-y2-y3-y4-y5)*(h18-h17)-((y5+y6)*(h31-h32)))/((h14-h32)+(h18-h17));
    
    %Menentukan Daya Yang Dibutuhkan Pompa
    %Daya Pompa CEP (kJ/kg)
    h16 = 172.6;
    h17 = 175.9;
    Wcep = h17-h16;
    %Daya Pompa BFP (kJ/kg)
    h21 = 803.1;
    %h22 = 1043.01;
    h22 = 835.3;
    Wbfp = h22-h21;
    
    %Menentukan Daya Masing Masing Turbin
    %Menentukan Daya Masing Masing Turbin
    %High Pressure Turbin (kJ/kg)
    h1 = x(1);
    %h1 = 3306.6;
    %h2 = 3021.0;
    h3 = 2939.1;
    %h4 = 2939.1;
    %h5 = 2939.1;
    Whpt = (h1-h3);
    %Intermediate Pressure Turbin (kJ/kg)
    h6 = x(3);
    %h6 = 3590.6;
    h7 = 3369.3;
    h8 = 3191.9;
    h9 = 3191.9;
    h11 = 3191.9;
    Wipt = (1-y2)*(h6-h7)+(1-y2-y3)*(h7-h8)+(1-y2-y3-y4)*(h9-h11);
    %Low Pressure Turbin (kJ/kg)
    h11 = 3191.9;
    h12 = 2789.1;
    h13 = 2667.5;
    h14 = 2531.5;
    h15 = 2370.7;
    Wlpt = (1-y3-y4)*(h11-h12)+(1-y3-y4-y5)*(h12-h13)+(1-y3-y4-y5-y6)*(h13-h14)+(1-y3-y4-y5-y6-y7)*(h14-h15);
  

    Fitness = 1/((PowerGenerator/((Whpt+Wipt+Wlpt)-(Wcep+Wbfp)))+AntiKonvergensi);
  
end

