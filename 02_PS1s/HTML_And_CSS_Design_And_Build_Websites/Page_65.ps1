. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 65"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "ol"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Chop potatoes into quarters"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Simmer in salted water for 15-20 minutes until tender"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Heat milk, butter and nutmeg"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Drain potatoes and mash"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Mix in the milk mixture"})
    
"@})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_65.html"

Write_File -Main_Content $Output_String -Output_File $Output_File