. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.0

$Main_Content = "<h1>Hello There!</h1>"

$Output_String = Boiler_Plater -Main_Content $Main_Content

$Output_File = "./03_Output/First_File.html"

Write_File -Main_Content $Output_String -Output_File $Output_File