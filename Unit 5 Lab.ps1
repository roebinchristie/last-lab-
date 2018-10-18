$rdhost = Read-Host "What is the name of the folder?"
$rdhost
$rdhost2 = Read-Host "What is the path to the folder?"
$rdhost2
$answer = Read-Host "Are you sure? (Y/N)"
$num = 5,50,50,3,1
$server = Get-Content serverlist.csv




if ($answer -eq 'y'){
    Set-Location C:\
    New-Item -Name $rdhost -Type directory -Path $rdhost2
    $Names = Import-Csv employeelist.csv 
    ForEach ($Name in $Names){
        New-Item -Name $Name.Name.Replace(' ','').ToLower() -Type directory -Path C:\fileserver
        New-Item -Name hello.txt -Type file -Value "Welcome, $($Name.Name)!!!!?" -Path C:\fileserver\$($Name.Name.Replace(' ','').ToLower())
    }
}

ForEach ($beans in $num){
   $rdhost3 = Read-Host "Insert a number"
   $equal = $beans * $rdhost3
   write-host $equal
}

ForEach ($server in $servers){
   Test-Connection -ComputerName $server -Quiet
}