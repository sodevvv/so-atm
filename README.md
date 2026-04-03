ATM ROBBERY - FiveM Script
Made by So

Description
ATM Robbery est un script permettant aux joueurs de braquer des distributeurs automatiques (ATM) dans FiveM. 
Le braquage utilise une animation de perceuse, une progress bar et un skillcheck pour réussir l'action.
Si le joueur réussit, il reçoit une récompense aléatoire.

Le script est compatible avec ESX, ox_lib et ox_target.

--------------------------------------------------

Features

- Braquage d'ATM interactif
- Animation de perceuse
- Progress bar pendant le braquage
- Skillcheck pour réussir le braquage
- Récompense aléatoire
- Configuration simple
- Interaction avec ox_target

--------------------------------------------------

Dépendances

Ce script nécessite :

- ESX
- ox_lib
- ox_target

--------------------------------------------------

Installation

1. Télécharge le script
2. Place le dossier dans ton dossier resources
3. Ajoute la ligne suivante dans ton server.cfg :

ensure so_atm

4. Configure le fichier config.lua selon tes besoins

--------------------------------------------------

Configuration

MainConfig = {

AtmRequiredItemsForRobbery = "water"
Item requis pour lancer le braquage

RemoveItemsForBraquage = true
Si true, l'item requis est retiré de l'inventaire

atmTargetIcon = "fa-solid fa-people-robbery"
Icône utilisée dans ox_target

atmTargetTitle = "Braquage ATM"
Texte affiché dans le target

AtmRobberyPrice = {min = 550, max = 1000}
Récompense minimum et maximum du braquage

policeJob = "sasp"
Nom du job police

atmModels = {
    "prop_atm_03",
    "prop_fleeca_atm",
    "prop_atm_01",
    "prop_atm_02"
}

}

--------------------------------------------------

Comment ça marche

1. Le joueur cible un ATM avec ox_target
2. Le script vérifie si le joueur possède l'item requis
3. Une animation de perceuse démarre
4. Un skillcheck apparaît
5. Si le joueur réussit :
   - un événement serveur est déclenché
   - une récompense aléatoire est donnée
6. Si le joueur échoue :
   - le braquage est annulé

--------------------------------------------------
