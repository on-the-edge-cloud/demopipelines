# Get today's date
$todayDate = Get-Date -Format "yyyy-MM-dd"

# Define the output directory
$outputDir = "output"

# Create the output directory if it doesn't exist
if (-Not (Test-Path -Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir
}

# Define the file name
$fileName = "$outputDir\$todayDate.txt"

# Get the formatted date
$formattedDate = Get-Date -Format "MMM d, HH:mm"

# Create the file and write the formatted date in it
Set-Content -Path $fileName -Value $formattedDate

# Confirm the creation of the file
Write-Output "File '$fileName' created with today's date formatted as '$formattedDate'."