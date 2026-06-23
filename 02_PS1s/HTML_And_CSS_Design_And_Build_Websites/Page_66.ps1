. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 66"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "ul"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "1kg King Edward potatoes"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "100ml milk"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "50g salted butter"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Freshly grated nutmeg"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Salt and pepper to tase"})
    
"@})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_66.html"

Write_File -Main_Content $Output_String -Output_File $Output_File