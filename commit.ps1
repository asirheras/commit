$mensaje = Read-Host "Introduce el mensaje del commit"

if ([string]::IsNullOrWhiteSpace($mensaje)) {
    Write-Host "Error: el mensaje no puede estar vacío"
    exit
}

git add .
git commit -m "$mensaje"
git push origin main