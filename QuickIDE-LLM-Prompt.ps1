# QuickIDE-LLM-Prompt - Quick Prompt Selection Tool for LLM Chats in IDEs
# A simple tool to select and copy optimized prompts from a markdown file

# Default prompts file path - change this to your preferred location
$promptsPath = "$PSScriptRoot\PROMPTS.md"

# Check if a custom path is provided as an argument
if ($args.Length -gt 0) {
    $customPath = $args[0]
    if (Test-Path $customPath) {
        $promptsPath = $customPath
    }
    else {
        Write-Host "Error: The specified file '$customPath' was not found." -ForegroundColor Red
        Write-Host "Using default path: $promptsPath" -ForegroundColor Yellow
    }
}

# Check if the file exists
if (-not (Test-Path $promptsPath)) {
    Write-Host "Error: The PROMPTS.md file was not found at $promptsPath" -ForegroundColor Red
    exit 1
}

# Main loop
while ($true) {
    Clear-Host
    # Read the PROMPTS.md file
    $content = Get-Content $promptsPath -Raw
    $prompts = @()

    # Extract all prompts (code blocks between ```prompt and ```)
    $promptMatches = [regex]::Matches($content, '(?s)### ([^\n]+).*?```prompt\s*(.*?)```')

    foreach ($match in $promptMatches) {
        $title = $match.Groups[1].Value.Trim()
        $promptContent = $match.Groups[2].Value.Trim()
        
        # Find the main section (##) to which this prompt belongs
        $sectionMatch = [regex]::Match($content.Substring(0, $match.Index), '(?s)## \d+\. ([^\n]+)[^#]*$')
        $section = ""
        if ($sectionMatch.Success) {
            $section = $sectionMatch.Groups[1].Value.Trim()
        }
        
        $prompts += @{
            Section = $section
            Title = $title
            Content = $promptContent
        }
    }

    # Display the list of available prompts
    Write-Host "`n=== QuickIDE-LLM-Prompt - Prompt Selection Tool ===" -ForegroundColor Cyan
    Write-Host "Available prompts:" -ForegroundColor Yellow

    for ($i = 0; $i -lt $prompts.Count; $i++) {
        Write-Host "$($i + 1). $($prompts[$i].Section) - $($prompts[$i].Title)" -ForegroundColor Green
    }
    Write-Host "`n0. Exit" -ForegroundColor Red

    # Prompt selection
    $promptChoice = Read-Host "`nEnter prompt number (0 to exit)"
    
    # Check if the user wants to exit
    if ($promptChoice -eq "0") {
        Write-Host "`nGoodbye!" -ForegroundColor Cyan
        break
    }

    # Check if the choice is valid
    $choiceNum = [int]$promptChoice - 1
    if ($choiceNum -ge 0 -and $choiceNum -lt $prompts.Count) {
        $selectedPrompt = $prompts[$choiceNum]
        # Copy to clipboard
        $selectedPrompt.Content | Set-Clipboard
        Write-Host "`nPrompt copied!" -ForegroundColor Cyan
        Start-Sleep -Milliseconds 500
    }
    else {
        Write-Host "`nInvalid choice!" -ForegroundColor Red
        Start-Sleep -Milliseconds 500
    }
}
