$mensaje = Read-Host "Introduce el mensaje del commit"

if ([string]::IsNullOrWhiteSpace($mensaje)) {
    Write-Error "El mensaje no puede estar vacío"
    exit 1
}

git add .
git commit -m "$mensaje"
git push origin main