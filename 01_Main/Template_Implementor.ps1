<# *************************************************************************************************************************** #>
<# * Component Functions ***************************************************************************************************** #>
<# *************************************************************************************************************************** #>

function To_HTML {
    param (
        [Parameter(Mandatory = $true)]
        [hashtable]$Properties,
        [Parameter(Mandatory = $false)]
        [string[]]$Ordered_Properties
    )
    $Tag = ""
    $Inner_HTML = ""
    $Attributes = ""

    if($Properties.containsKey("Tag")) {
        $Tag = $Properties["Tag"]
        $Properties.remove("Tag")
    } else {
        $Tag = "div"
        Write-Host "Element Defaulted To Div Tag!" -ForegroundColor Yellow
    }

    if($Properties.contains("Inner_HTML")) {
        $Inner_HTML = $Properties["Inner_HTML"]
        $Properties.remove("Inner_HTML")
    } else {
        # Do nothing.
    }

    if($Properties.contains("ID")) {
        if($Properties["ID"].Length -eq 1) {   
            Write-Host "ID Property Provided Without Value!" -ForegroundColor Yellow
        } else {
            $Attributes += " $($Properties["ID"][0])=`"$($Properties["ID"][1])`""
        }
        $Properties.remove("ID")
    } else {
        # Do nothing.
    }

    if($Properties.contains("Class")) {
        if($Properties["Class"].Length -eq 1) {   
            Write-Host "Class Property Provided Without Value!" -ForegroundColor Yellow
        } else {
            $Attributes += " $($Properties["Class"][0])=`"$($Properties["Class"][1])`""
        }
        $Properties.remove("Class")
    } else {
        # Do nothing.
    }

    for($Index = 0; $Index -lt $Ordered_Properties.Length; $Index++) {
        if($Properties.contains($Ordered_Properties[$Index])) {
            if($Properties[$Ordered_Properties[$Index]].Length -eq 1) {   
                $Attributes += " $($Properties[$Ordered_Properties[$Index][0]])"
            } else {
                $Attributes += " $($Properties[$Ordered_Properties[$Index]][0])=`"$($Properties[$Ordered_Properties[$Index]][1])`""
            }
            $Properties.remove($Ordered_Properties[$Index])
        } else {
            Write-Host "Ordered Propert Specified, But Not Provided!" -ForegroundColor Yellow
        }
    }

    foreach ($Property in $Properties.GetEnumerator()) {
        Write-Host $Property.Value.Length
        if($Property.Value.Length -eq 1) {
            $Attributes += " $($Property.Value[0])"
        } else {
            $Attributes += " $($Property.Value[0])=`"$($Property.Value[1])`""
        }
    }

    return "<$($Tag)$($Attributes)>$($Inner_HTML)</$($Tag)>"
}

<# *************************************************************************************************************************** #>
<# * File Writing Functions ************************************************************************************************** #>
<# *************************************************************************************************************************** #>

function Boiler_Plater {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Main_Content,
        [Parameter(Mandatory = $true)]
        [string]$Title
    )

    process {
        $Output_String =  @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$($Title)</title>
</head>
<body>
$($Main_Content)
</body>
</html>
"@
        return $Output_String
    }
}

function Write_File {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Main_Content,
        [Parameter(Mandatory = $true)]
        [string]$Output_File
    )

    process {
        try {
            New-Item -Path $Output_File -ItemType "File" -Value $Main_Content
            Write-Output "Successfully wrote to: $FilePath"
        }
        catch {
            Write-Error "Failed to write to file. Error: $_"
        }
    }
}