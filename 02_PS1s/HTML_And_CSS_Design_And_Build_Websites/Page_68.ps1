. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 68"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "ul"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Mousses"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Pastries"})
        $(To_HTML -Properties @{Tag = "ul"; Inner_HTML = @"

            $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Croissan"})
            $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Mille-feuille"})
            $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Palmier"})
            $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Profiterole"})
`t`t
"@})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Tarts"})
`t
"@})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_68.html"

Write_File -Main_Content $Output_String -Output_File $Output_File