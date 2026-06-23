. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 43"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "h1"; Inner_HTML = "This is a Main Heading"})
    $(To_HTML -Properties @{Tag = "h2"; Inner_HTML = "This is a Level 2 Heading"})
    $(To_HTML -Properties @{Tag = "h3"; Inner_HTML = "This is a Level 3 Heading"})
    $(To_HTML -Properties @{Tag = "h4"; Inner_HTML = "This is a Level 4 Heading"})
    $(To_HTML -Properties @{Tag = "h5"; Inner_HTML = "This is a Level 5 Heading"})
    $(To_HTML -Properties @{Tag = "h6"; Inner_HTML = "This is a Level 6 Heading"})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_43.html"

Write_File -Main_Content $Output_String -Output_File $Output_File