$ADUsers = Import-csv C:\Users\Administrator\Documents\users.csv

foreach ($User in $ADUsers)
{
    $firstname = $User.Firstname
    $lastname = $User.Lastname
    $username = $User.username
    $upn = $User.username + "@bedroom.ephec-ti.be"
    $dptmt = $User.department
    $pwd = $User.password

    New-ADUser -Path 'OU=utilisateurs,DC=bedroom,DC=ephec-ti,DC=be' -SamAccountName $username -UserPrincipalName $upn -Name "$firstname $lastname" -Givenname $firstname -Surname $lastname -Department $dptmt -ChangePasswordAtLogon $true -AccountPassword (ConvertTo-SecureString $pwd -AsPlainText -force)  -Enabled $true -Type user
    Add-ADGroupMember -Identity $dptmt -Members $username
}