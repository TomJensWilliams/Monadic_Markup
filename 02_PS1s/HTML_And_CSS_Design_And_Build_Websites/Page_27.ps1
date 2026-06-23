. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "This is the Title of the Page."

$Main_Content = @"
$(To_HTML -Properties @{Tag =  "h1"; Inner_HTML =  "This is the Body of the Page"})
    $(To_HTML -Properties @{Tag =  "p"; Inner_HTML =  "Anything within the body of a webpage is displayed in the main browser window."})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_27.html"

Write_File -Main_Content $Output_String -Output_File $Output_File