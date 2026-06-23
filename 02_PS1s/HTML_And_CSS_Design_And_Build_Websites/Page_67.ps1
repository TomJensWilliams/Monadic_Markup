. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Page 67"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "dl"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "dt"; Inner_HTML = "Sashimi"})
        $(To_HTML -Properties @{Tag = "dd"; Inner_HTML = "Sliced raw fish that is served with condiments such as shredded daikon radish or ginger root, wasabi and soy sauce"})
        $(To_HTML -Properties @{Tag = "dt"; Inner_HTML = "Scale"})
        $(To_HTML -Properties @{Tag = "dd"; Inner_HTML = "A device used to accurately measure the weight of ingredients"})
        $(To_HTML -Properties @{Tag = "dd"; Inner_HTML = "A technique by which the scales are removed from the skin of a fish"})
        $(To_HTML -Properties @{Tag = "dt"; Inner_HTML = "Scamorze"})
        $(To_HTML -Properties @{Tag = "dt"; Inner_HTML = "Scamorzo"})
        $(To_HTML -Properties @{Tag = "dd"; Inner_HTML = "An Italian cheese usually made from whole cow's milk (although it was traditionally made from buffalo milk)"})
    
"@})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_67.html"

Write_File -Main_Content $Output_String -Output_File $Output_File