#!/bin/bash
#
while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar fecha de hoy"
    echo "5. Crear archivos a.txt b.txt c.html a.c e.py"
    echo "6. Borrar todos los archivos txt de este directorio"
    echo "7. Borrar todos los archivos html de este directorio"
    echo "8. Borrar todos los archivos .c de este directorio"
    echo "9. Borrar todos los archivos .py de este directorio"
    echo "10. Borrar todos los archivos .png de este directorio"
    echo "11. Borrar todos los archivos .blend de este directorio"
    echo "12. Borrar todos los archivos .css de este directorio"
    echo "13. Borrar todos los archivos .js de este directorio"
    echo "14. Borrar todos los archivos .mp3 de este directorio"
    echo "15. Ir a la carpeta anterior"
    echo "16. Borrar todos los archivos txt de este directorio a traves de su ruta relativa o absoluta"
    echo "17. Crear ficheros aa.txt ab.txt ba.txt"
    echo "18. Borrar todos los ficheros .txt que empiezan por a"
    echo "19. Borrar todos los ficheros .txt que empiezan por b"
    echo "20. Crear ficheros a1.txt a22.txt ab.txt"
    echo "21. Borrar todos los ficheros  que empiezan por a y despues tenga un solo caracter y terminen con extension .txt"
    echo "22. Creamos ficheros fichero-1.txt fichero-2.txt fichero3.txt prueba.txt otraprueba.txt fichero-12.txt"
    echo "23. Borrar  los archivos que empiecen por fichero seguido de un guion con 1 caracter y termine con .txt"
    echo "24. Creamos ficheros ficheroA.txt fichero-B.txt ficheroC.txt fichero.txt ficheroD.txt"
    echo "25. Queremos borrar la palabra que contenga fichero y despues una A o B y termine con .txt"
    echo "26. Queremos borrar la palabra que contenga fichero y despues no termine ni con A o B y termine con .txt"
    echo "27. Crear ficheros fAB.txt fAC.txt fAD.txt fichero f fAE.txt"
    echo "28. Borrar los ficheros fAB.txt o fAC.txt"
    echo "29. Crear archivos f-1 f-2 f-3 f-4 f-5 f-6 f-7 f fa fb fc fd"
    echo "30. Queremos borrar los ficheros f-1 f-2 f-3 f-4 f-5 f-6 f-7"
    echo "31. Creamos ficheros fa fb fc fA fB fC fd fD"
    echo "32. Queremos borrar los ficheros que contengan una a,b,c mayuscula o minuscula "
    echo "33. Creamos archivos f1 f11 f12 fa"
    echo "34. Queremos borrar los que empiecen por f y despues tengan dos digitos ejm:f11 f12"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Crear archivos a.txt b.txt c.htm"
        touch a.txt b.txt c.htm a.c e.py
        read foo
        ;;
    6)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.txt
        read foo
        ;;
    
    # echo "7. Borrar todos los archivos html de este directorio"
    7)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.html
        read foo
        ;;
    # echo "8. Borrar todos los archivos .c de este directorio"
    8)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.c
        read foo
        ;;
    # echo "9. Borrar todos los archivos .py de este directorio"
    9)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.py
        read foo
        ;;
    # echo "9. Borrar todos los archivos .png de este directorio"
    10)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.png
        read foo
        ;;
    # echo "9. Borrar todos los archivos .blend de este directorio"
    11)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.blend
        read foo
        ;;
    # echo "9. Borrar todos los archivos .css de este directorio"
    12)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.css
        read foo
        ;;
    # echo "9. Borrar todos los archivos .js de este directorio"
    13)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.js
        read foo
        ;;
    # echo "9. Borrar todos los archivos .mp3 de este directorio"+
    14)
        echo "Borrar todos los archivos txt de este directorio"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        rm *.mp3
        read foo
        ;;
    15)
        echo "Ir a la carpeta anterior"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        echo "CUIDADO NO BORRAR / la raiz del sistema operativo"
        cd ..
        echo "rm expresiones-regulares-sarosi/*.txt"
        # Ruta absoluta booramos archivos .txt
        
        read foo
        ;;
    16)
        echo "Borrar todos los archivos txt de este directorio a traves de su ruta relativa o absoluta"
        # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        cd ..
            # rm a.txt b.txt
        # * cero o mas caracteres seguido de .txt
        echo "CUIDADO NO BORRAR / la raiz del sistema operativo"
        echo 'rm /home/next/expresiones-regulares-sarosi/*.txt'
        read foo
        ;;
    17)
        echo "Crear ficheros aa.txt ab.txt ba.txt"
        touch aa.txt ab.txt ba.txt

        read foo
        ;;

    18)
        echo "Borrar todos los ficheros .txt que empiezan por a"
        rm a*.txt

        read foo
        ;;

    19)
        echo "Borrar todos los ficheros .txt que empiezan por a"
        rm b*.txt

        read foo
        ;;
    20)
        echo "Crear ficheros a1.txt a22.txt ab.txt"
        touch a1.txt a22.txt ab.txt

        read foo
        ;;
    21)
        echo "Borrar todos los ficheros  que empiezan por a y despues tenga un solo caracter y terminen con extension .txt"
        rm a?.txt

        read foo
        ;;
    22)
        echo "Creamos ficheros fichero-1.txt fichero-2.txt fichero3.txt prueba.txt otraprueba.txt fichero-12.txt"
        touch fichero-1.txt fichero-2.txt fichero3.txt prueba.txt otraprueba.txt


        read foo
        ;;
    23)
        echo "Borrar  los archivos que empiecen por fichero seguido de un guion con 1 caracter y termine con .txt"
        rm *-?.txt
        read foo
        ;;
    24)
        echo "Creamos ficheros ficheroA.txt fichero-B.txt ficheroC.txt fichero.txt ficheroD.txt"
        touch ficheros ficheroA.txt ficheroB.txt ficheroC.txt fichero.txt ficheroD.txt
        read foo
        ;;

    25)
        echo "Queremos borrar la palabra que contenga fichero y despues una A o B y termine con .txt"
        echo "Solo borra los ficheros ficheroA.txt ficheroB.txt"
        rm fichero[AB].txt
        read foo
        ;;

    26)
        echo "Queremos borrar la palabra que contenga fichero y despues no termine ni con A o B y termine con .txt"
        echo "Solo borra los ficheros que no sean ficheroA.txt ficheroB.txt"
        rm fichero[^AB].txt
        read foo
        ;;

    27)
        echo "Crear ficheros fAB.txt fAC.txt fAD.txt fichero f fAE.txt"
        touch fAB.txt fAC.txt fAD.txt fichero f fAE.txt
        read foo
        ;;
    28)
        echo "Borrar los ficheros fAB.txt o fAC.txt"
        echo "Borra todos los ficheros que empiecen por una f seguidos de AB o AC y terminen .txt"
        rm f{AB,AC}.txt
        read foo
        ;;
    29)
        echo "Crear archivos f-1 f-2 f-3 f-4 f-5 f-6 f-7 f fa fb fc fd"
        touch f-1 f-2 f-3 f-4 f-5 f-6 f-7 f fa fb fc fd
        
        read foo
        ;;

    30)
        echo "Queremos borrar los ficheros f-1 f-2 f-3 f-4 f-5 f-6 f-7 por rango"
        rm f-[1-7]
        echo "\n"
        echo "Queremos borrar ficheros fa fb fc fd"
        echo "rm f[a-c]"
        read foo
        ;;
    31)
        echo "Creamos ficheros fa fb fc fA fB fC fd fD"
        touch fa fb fc fA fB fC fd fD
        read foo
        ;;
    32)
        echo "Queremos borrar los ficheros que contengan una a,b,c mayuscula o minuscula "
        rm f[a-cA-C]
        read foo
        ;;
    33)
        echo "Creamos archivos f1 f11 f12 fa "
        touch f1 f11 f12 fa
        read foo
        ;;
    34)
        echo "Queremos borrar los que empiecen por f y despues tengan dos digitos ejm:f11 f12 "
        rm f[0-9][0-9]
        read foo
        ;;


    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
