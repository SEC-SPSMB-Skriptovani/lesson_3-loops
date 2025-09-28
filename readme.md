# Cykly v Bash

## Na co použít cykly v Bash?
Cykly umožňují **opakovat příkazy** bez nutnosti je psát vícekrát.  
Používají se pro **iteraci přes soubory, číselné řady, obsah souborů, nebo pro opakované spuštění příkazů**.

[![YOUTUBE - Why you need to learn BASH Scripting RIGHT NOW!!](https://img.youtube.com/vi/nW9M0MQinfg/0.jpg)](https://www.youtube.com/watch?v=nW9M0MQinfg)
---

## Základní `for` loop
Tento cyklus projde **seznam hodnot** (např. soubory) a provede příkaz pro každý prvek.

```bash
path="/home/student/scripts/*"
for i in $path; do
  echo "$i"
done
```

```bash
for i in "Adame" "Barboro" "Cyrile" "Davide" "Evo" "Franto" "Gabrieli" "Hynku" "Ivane" "Jano"; do
  echo "Zdravím, $i"
done
```

Tento příkaz projde všechny soubory, ve složce `/home/student/scripts/`, a vypíše je.

---

## C-like `for` loop
Podobný klasickým programovacím jazykům (C, Java, Python).  
Můžeme kontrolovat proměnnou, počáteční hodnotu, podmínku a krok.

```bash
for ((i = 0 ; i < 100 ; i++)); do
  echo "$i"
done
```

- `i=0` → počáteční hodnota
- `i<100` → podmínka, dokud se cyklus vykonává
- `i++` → inkrementace o 1

---

## Rozsahy (`ranges`)
Bash umí generovat posloupnost čísel pomocí `{start..end}`.

```bash
for i in {1..5}; do
    echo "Welcome $i"
done
```

Výstup:
```
Welcome 1
Welcome 2
Welcome 3
Welcome 4
Welcome 5
```

---

## Rozsahy se skokem (step size)
Můžeme přidat třetí parametr pro **krok** (inkrement).

```bash
for i in {5..50..5}; do
    echo "Welcome $i"
done
```

Výstup:
```
Welcome 5
Welcome 10
Welcome 15
...
Welcome 50
```

---

## While vs Until
Cyklus `while [[ podmínka ]]` → cyklus se spustí pouze, pokud je podmínka pravdivá **(true)**.

```bash
count=1

while [[ $count -le 5 ]]; do
echo "Číslo je: $count"
((count++))
done
```

Cyklus `until [[ podmínka ]]` → cyklus se spustí, dokud podmínka **není** pravdivá
```bash
until [[ $count -gt 5 ]]; do
    echo "Číslo: $count"
    ((count++))
done
```


---

## Nekonečný cyklus (`forever loop`)
Pokud potřebuješ cyklus, který **nikdy neskončí**, použij `while true`.

```bash
while true; do
  echo "Stále běží..."
  sleep 1
done
```

- `true` je vždy pravdivý příkaz
- `sleep 1` zpomalí výpis na 1 sekundu (jinak by terminál zahltil)

---

## Cvičení
Vytvořte skript `parrot.sh`, který:
1. Vypíše do konzole "Dej mi sušenku!"
2. Čeká na vstup od uživatele.
3. Ukončí cyklus a skript, pouze pokud uživatel zadá vstup "sušenka".
4. Při libovolném jiném vstupu opakuje cyklus (opět vypíše "Dej mi sušenku!).

<img src="https://github.com/user-attachments/assets/246c6341-dfe1-43d8-afa4-782aa54dbdbf" alt="parrot_example" height="700"/>

> [💡Tip]
> Použijte kombinaci příkazů `while`, případně `until` a `read` pro získání uživatleského vstupu. Pro ukončení programu lze použít příkaz `break`. 
