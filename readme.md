Proiect realizat de Cavaler Alexandru si Balta Mihnea


aceasta rularea scriptului:
Ex 1
Introdu numele fisierului: fis.txt
Introdu sirul de cautat: mere
Introdu sirul de inlocuit: pere
Sirul 'mere' a fost inlocuit cu 'pere' in fisierul 'fis.txt'
Ex 2
Introdu litera sau secventa de litere: alex
Numarul de utilizatori care incep cu 'alex' este: 1
Ex 3
Introdu numele utilizatorului: alex
Numarul de procese pornite de utilizatorul 'alex' este: 78
Ex 4
Introdu numele fisierului: fis.txt
Introdu calea directorului: /home/alex
Fisierul 'fis.txt' a fost gasit in calea '/home/alex':
/home/alex/fis.txt


aici este codul mai jos, in caz ca nu merge:
#!/bin/bash

# Proiectul E

functia_1() { 
   echo "Ex 1" 
   read -p "Introdu numele fisierului: " nume_fisier
   read -p "Introdu sirul de cautat: " sir_cautat
   read -p "Introdu sirul de inlocuit: " sir_inlocuit

   # Verificare daca fisierul exista
   if [ -f "$nume_fisier" ]; then
       sed -i "s/$sir_cautat/$sir_inlocuit/g" "$nume_fisier"
       echo "Sirul '$sir_cautat' a fost inlocuit cu '$sir_inlocuit' in fisierul '$nume_fisier'"
   else
       echo "Fisierul '$nume_fisier' nu exista!"
   fi
}

functia_2() {
   echo "Ex 2"
   read -p "Introdu litera sau secventa de litere: " litera
   nr_utilizatori=$(grep -c "^$litera" /etc/passwd)
   echo "Numarul de utilizatori care incep cu '$litera' este: $nr_utilizatori"
}

functia_3() {
   echo "Ex 3"
   read -p "Introdu numele utilizatorului: " nume_utilizator
   numar_procese=$(pgrep -u "$nume_utilizator" | wc -l)
   echo "Numarul de procese pornite de utilizatorul '$nume_utilizator' este: $numar_procese"
}

functia_4() {
   echo "Ex 4"
   read -p "Introdu numele fisierului: " nume_fisier
   read -p "Introdu calea directorului: " cale_director
   rezultat=$(find "$cale_director" -name "$nume_fisier")
   if [ -n "$rezultat" ]; then
      echo "Fisierul '$nume_fisier' a fost gasit in calea '$cale_director':"
      echo "$rezultat"
   else
      echo "Fisierul '$nume_fisier' nu a fost gasit in calea '$cale_director'"
   fi
}

functia_1
functia_2
functia_3
functia_4


