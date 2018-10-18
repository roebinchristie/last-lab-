Set-Location C:\
New-Item -Name fileserver -Type directory 
$Names = Import-Csv employeelist.csv 
ForEach ($Name in $Names){
New-item -Name $Name.Name.Replace(' ','').ToLower() -Type directory -Path C:\fileserver
New-item -Name hello.txt -Type file -Value "Welcome, $($Name.Name)!!!!?" -Path C:\fileserver\$($Name.Name.Replace(' ','').ToLower())
}
