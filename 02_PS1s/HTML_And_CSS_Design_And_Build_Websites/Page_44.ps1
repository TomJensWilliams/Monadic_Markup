. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 44"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "A paragraph consists of one or more sentences that form a self-contained unit of discourse. The start of a paragraph is indicated by a new line."})
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "Text is easier to understand when it is split up into units of text. Foe Example, a book may have chapters. Chapters can have sub-headings. Under each heading there will be one or more paragraphs."})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_44.html"

Write_File -Main_Content $Output_String -Output_File $Output_File