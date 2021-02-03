While (0 -eq 0 ) {
 
$Date=(Get-date).DateTime
 
#proc :
 
$Processeur=[string]"PROCESSEUR : " +(Get-WmiObject -Class win32_processor).LoadPercentage + " % de processeur utilisé"
 
#ram = {
 
$Taille_RAM_MAX=[STRING]((Get-WmiObject -Class Win32_ComputerSystem ).TotalPhysicalMemory/1GB)
 
$Taille_RAM_LIBRE=[String]((Get-WmiObject -Class Win32_OperatingSystem).FreePhysicalMemory/1MB)

$ramutilise=$Taille_RAM_MAX - $Taille_RAM_LIBRE
 
$Taille_RAM_UTILISE=[STRING]"RAM : "+($Taille_RAM_MAX - $Taille_RAM_LIBRE) + " GB utilisée "
 
$TRAM_LIBRE=[STRING]($Taille_RAM_LIBRE) + " GB libre"

$POURCENTAGE_RAM=[STRING]"RAM : "+ (($ramutilise/$Taille_RAM_MAX)*100)+ " % utilisée "
 
$titre = [STRING] "CHARGE DU CPU ET DES RAMS"
 

$titre
$Date
 
$Processeur

$Taille_RAM_UTILISE

$POURCENTAGE_RAM

sleep(7)
Clear


 
}
