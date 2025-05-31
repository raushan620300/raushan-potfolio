# PowerShell script to download technology logos

# Frontend logos URLs
$htmlLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg"
$cssLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg"
$jsLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg"
$reactLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg"
$bootstrapLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bootstrap/bootstrap-original.svg"
$tailwindLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tailwindcss/tailwindcss-plain.svg"
$mysqlLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg"

# Version Control logos URLs
$gitLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"
$githubLogoUrl = "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg"

# AI Tools logos URLs
$cursorLogoUrl = "https://raw.githubusercontent.com/getcursor/cursor/main/resources/icon.png"
$copilotLogoUrl = "https://github.githubassets.com/images/modules/site/features/copilot/copilot.png"
$windsurfLogoUrl = "https://storage.googleapis.com/cms-storage-bucket/1d70ad51c56d7457d2bf.svg"

# Frontend logo paths
$htmlLogoPath = "images/tech-logos/frontend/html5-logo.png"
$cssLogoPath = "images/tech-logos/frontend/css3-logo.png"
$jsLogoPath = "images/tech-logos/frontend/javascript-logo.png"
$reactLogoPath = "images/tech-logos/frontend/react-logo.png"
$bootstrapLogoPath = "images/tech-logos/frontend/bootstrap-logo.png"
$tailwindLogoPath = "images/tech-logos/frontend/tailwind-logo.png"
$mysqlLogoPath = "images/tech-logos/frontend/mysql-logo.png"

# Version Control logo paths
$gitLogoPath = "images/tech-logos/version-control/git-logo.png"
$githubLogoPath = "images/tech-logos/version-control/github-logo.png"

# AI Tools logo paths
$cursorLogoPath = "images/tech-logos/ai-tools/cursor-logo.png"
$copilotLogoPath = "images/tech-logos/ai-tools/github-copilot-logo.png"
$windsurfLogoPath = "images/tech-logos/ai-tools/windsurf-logo.png"

# Download Frontend logos
Write-Host "Downloading Frontend logos..."
Invoke-WebRequest -Uri $htmlLogoUrl -OutFile $htmlLogoPath
Invoke-WebRequest -Uri $cssLogoUrl -OutFile $cssLogoPath
Invoke-WebRequest -Uri $jsLogoUrl -OutFile $jsLogoPath
Invoke-WebRequest -Uri $reactLogoUrl -OutFile $reactLogoPath
Invoke-WebRequest -Uri $bootstrapLogoUrl -OutFile $bootstrapLogoPath
Invoke-WebRequest -Uri $tailwindLogoUrl -OutFile $tailwindLogoPath
Invoke-WebRequest -Uri $mysqlLogoUrl -OutFile $mysqlLogoPath

# Download Version Control logos
Write-Host "Downloading Version Control logos..."
Invoke-WebRequest -Uri $gitLogoUrl -OutFile $gitLogoPath
Invoke-WebRequest -Uri $githubLogoUrl -OutFile $githubLogoPath

# Download AI Tools logos
Write-Host "Downloading AI Tools logos..."
Invoke-WebRequest -Uri $cursorLogoUrl -OutFile $cursorLogoPath
Invoke-WebRequest -Uri $copilotLogoUrl -OutFile $copilotLogoPath
Invoke-WebRequest -Uri $windsurfLogoUrl -OutFile $windsurfLogoPath

Write-Host "All technology logos downloaded successfully!" 