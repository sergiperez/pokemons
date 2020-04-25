# Caça de pokemons

## Instal·lació
- Heu de tnier isntal·lat el següent software
    - Virtualbox
    - Vagrant
    - Git
- Baixar-vos tots els escenaris per caçar pokemons. Amb la comanda:
```git=
git clone https://github.com/sergiperez/pokemons.git
```

## Escenari de mostra

Uns pokemons han invadit una màquina. Heu de:

1. Trobar a quina màquina està. Pistes:
   - Pertany a la xarxa 192.168.110.0/24.
   - El byte de host correspon a l'edat que ha fet aquesta setmana un dels professors que és la mateixa que farà l'altre professor a la tardor.
2. Saber quins ports té oberta la màquina.
3. Copiar els pokemons. Té tants pokemons com ports té oberts. Els pokemons es diuen com el port obert. Per exemple port 10000.
   - Instrucció per copiar ```bash=  scp -P 22 pikachu@IPTROBADA:/home/pikachu/10000.txt /vagrant_data/10000.txt```
   - Quin és el password de pikachu? Un bon profe de xarxes el sap, és el nostre clàssic password.
   
Per començar amb l'exercici, accediu a la carpeta pokemons i feu:
```bash=
./sample.sh
```
