. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 20"

$Main_Content = @"
$(To_HTML -Properties @{Tag = "h1"; Inner_HTML = "This is the Main Heading"})
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "This text might be an introduction to the rest of the page. And if the page is a long one it might be split into several sub-headings."})
    $(To_HTML -Properties @{Tag = "h2"; Inner_HTML = "This is a Sub-Heading"})
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "Many long articles have sub-headings so to help you follow the structure of what is being written. There may even be sub-sub-headings (or lower-level headings)."})
    $(To_HTML -Properties @{Tag = "h2"; Inner_HTML = "Another Sub-Heading"})
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "Here you can see another sub-heading."})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_20.html"

Write_File -Main_Content $Output_String -Output_File $Output_File