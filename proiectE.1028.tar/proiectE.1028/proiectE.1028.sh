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
