. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.1

$Main_Content = @"
$(To_HTML -Properties @{Tag = "h1"; ID = @("id", "main_header"); Class = @("class", "header"); HREF = @("href", "www.google.com"); Style = @("style", "font-weight: normal;"); Checked = @("checked"); Inner_HTML = "Hello There!"} -Ordered_Properties @("style", "href"))
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content

$Output_File = "./03_Output/Second_File.html"

Write_File -Main_Content $Output_String -Output_File $Output_File