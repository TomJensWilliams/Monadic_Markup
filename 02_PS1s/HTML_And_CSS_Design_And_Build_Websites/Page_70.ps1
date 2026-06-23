. ./01_Main/Template_Implementor.ps1

# Template Version 1.0.2

$Title = "Lists"

$Main_Content = @"
    $(To_HTML -Properties @{Tag = "h1"; Inner_HTML = "Scrambled Eggs"})
    $(To_HTML -Properties @{Tag = "p"; Inner_HTML = "Eggs are one of my favorite foods. Here is a recipe for delicously rich scrambled eggs."})
    $(To_HTML -Properties @{Tag = "h2"; Inner_HTML = "Ingredients"})
    $(To_HTML -Properties @{Tag = "ul"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "2 eggs"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "1tbs butter"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "2tbs cream"})
`t
"@})
    $(To_HTML -Properties @{Tag = "h2"; Inner_HTML = "Ingredients"})
    $(To_HTML -Properties @{Tag = "ol"; Inner_HTML = @"

        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Melt butter in a frying pan over a medium heat"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Gently mix the eggs and cream in a bowl"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Once butter has melted add cream and eggs"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "Using a spatula fold the eggs from the edge of the pan to the center every 20 seconds (as if you are making an omelette)"})
        $(To_HTML -Properties @{Tag = "li"; Inner_HTML = "When the eggs are still moist remove from the heat (it will continue to cook on the plate until served)"})
`t
"@})
"@

$Output_String = Boiler_Plater -Main_Content $Main_Content -Title $Title

$Output_File = ".\03_Output\HTML_And_CSS_Design_And_Build_Websites\Page_70.html"

Write_File -Main_Content $Output_String -Output_File $Output_File