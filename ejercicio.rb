puts "Quiere ingresar una Palabra... (Si,No)"
pregunta = gets.strip.downcase

while pregunta == "si"

  #
  
    abecedario =      [26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
    letras= ([*('A'..'Z')]-%w()).sample(26)

    concatenacionHash = Hash[letras.zip(abecedario)]


    puts "Ingrese una Palabra..."
    letra = gets.gsub!(/[^A-Z]/, '') 
   
    nuevo = []

    arreglo = concatenacionHash[letra]
    myArray = letra.split('')

    cantLetras =myArray.size

    i=0
    while i <= cantLetras-1
      o = []
      o = myArray[i]  
      arregloData = concatenacionHash[o]
      suma =0
      e = suma + arregloData
      j = e.to_s.split("")

      nuevo << e 

      i = i+1

    end

    #print nuevo[i]
  
    
    print nuevo #esta linea muestra las letras ingresadas por el usuario con sus valores originales
    sum = nuevo.reduce(0, :+)
    
    if sum != 0
      
        print "La suma de las letras ingresadas es: #{sum} \n"
    else
      print "la palabra ingresada contiene minusculas\n"
      
    end
   

  
  
   
    #print concatenacionHash  #esta linea muestra el hash generado aleatoriamente
puts "Quiere ingresar una Palabra... (Si,No)\n"
pregunta = gets.strip.downcase

#
end
print " Gracias..."



  
  

  
  



