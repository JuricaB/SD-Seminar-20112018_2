Set-ExecutionPolicy RemoteSigned
# Import the module for the Export-NAVApplicationObject cmdLet
Import-Module 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\Microsoft.Dynamics.Nav.Ide.psm1' -Verbose
# Import the module for the Split-NAVApplicationObjectFile cmdLet
Import-Module 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1' -Verbose
$NavIde= 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\finsql.exe'
#. 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1' -NavIde 'C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\finsql.exe'
# Export objects from database
Export-NAVApplicationObject -DatabaseServer 'NAV2018' -DatabaseName 'Demo Database NAV (13-0)' -Filter 'Type=Page;Id=21..22' -Path 'c:\temp\Al\Objects.txt' -Username 'Admin' -Password '1<3VScode' -ExportToNewSyntax
# Split the txt file into separate txt files pr object
Split-NAVApplicationObjectFile -Source 'C:\temp\Al\*.txt' -Destination 'c:\temp\Al\cal'
# Create the .al files
$Command = "C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\txt2al.exe" 
& $Command --source c:\temp\Al\cal --target c:\temp\Al\al
# Clean up all text files
Remove-Item c:\temp\AL\cal\*.*
Remove-Item c:\temp\AL\*.*
