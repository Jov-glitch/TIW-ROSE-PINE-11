# Configuracion de workspace para Windows 11

# THIS IS ROSE PINE FOR WINDOWS 11

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Start-Process pwsh.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
  }
  
Write-Host " 
⠀⠀⠀⠀⠀⠀⠀▄▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▄⠀⠀⠀⠀⠀⠀⠀  
⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀▄⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀▄⠀⠀⠀⠀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▄⠀▄▀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▄▀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ 
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀▀▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀▀▀▀▀
" -ForegroundColor magenta -NoNewline
Write-Host "Bienvenido! Soy jov-glitch, este script fue creado en mi tiempo libre para que puedas personalizar tu Windows 11 con el tema Rose Pine de manera sencilla y rapida. No busco perjudicar a nadie, solo quiero ayudar. Todos los creditos y el codigo fuente estan en https://github.com/jov-glitch/tiw-rose-pine-11" -ForegroundColor DarkMagenta
Write-Host "Estas a punto de instalar una personalizacion, " -ForegroundColor DarkRed -NoNewline
Write-Host "RECOMIENDO USARLO PRIMERO EN UNA INSTALACION LIMPIA DE WINDOWS 11 Y EN UN ENTORNO CONTROLADO PARA COMPROBAR SU FUNCIONAMIENTO AL DIA DE HOY. NO ME HAGO RESPONSABLE POR CORRUPCION DE TU SISTEMA, ME DESLINDO DE CUALQUIER ERROR OCACIONADO CON ARCHIVOS NO RELACIONAS AL SCRIPT. " -ForegroundColor DarkRed -NoNewline
Write-Host "RECOMIENDO HACER UN PUNTO DE RESTAURACION ANTES DE TODO MANUALMENTE, EL SCRIPT CREARA UNO PERO NO SE CONFIE" -ForegroundColor DarkCyan
Write-Host "`n" -ForegroundColor DarkRed
Write-Host "S" -NoNewline -ForegroundColor DarkRed
Write-Host " - Estoy seguro de que quiero instalar la personalizacion. Estoy de acuerdo con el mensaje anterior y estoy en un entorno controlado por que no soy estupido para ejecutarlo asi sin mas`n" -ForegroundColor DarkRed
Write-Host "N" -NoNewline -ForegroundColor DarkRed
Write-Host " - Soy sabio y no estoy en un entorno controlado. Prefiero abortar la instalacion.`n" -ForegroundColor DarkRed
$readhost = Read-Host " `n¿Estas seguro de queres seguir? (S/N) "
Write-Host "`n" -ForegroundColor DarkRed


while ($readhost -ne "S" -and $readhost -ne "N") {
    Write-Host "Error, ingresa S o N" -ForegroundColor DarkRed
    $readhost = Read-Host " `n¿Estas seguro de queres seguir? (S/N) "
    $bandera += 1
    if ($bandera -gt 1) {
        Write-Host "Eres estupido? S o N" -ForegroundColor DarkRed
        exit
    }
}   


if ($readhost -eq "N") {
    Write-Host "Abortando instalacion... Eres un hombre sabio" -ForegroundColor DarkRed
    exit
}

Write-Host "S" -NoNewline -ForegroundColor DarkRed
Write-Host " - Instalar los programas que requieren reiniciar Windows (Obligatorio la primera vez).`n" -ForegroundColor DarkRed
Write-Host "N" -NoNewline -ForegroundColor DarkRed
Write-Host " - No quiero instalar los programas que requieren reiniciar Windows.`n" -ForegroundColor DarkRed
$readhost2 = Read-Host " `n¿Quieres instalar los programas que requieren reiniciar Windows? (S/N) "

while ($readhost2 -ne "S" -and $readhost2 -ne "N") {
    Write-Host "Error, ingresa S o N" -ForegroundColor DarkRed
    $readhost2 = Read-Host " `n¿Quieres instalar los programas que requieren reiniciar Windows? (S/N) "
}
if ($readhost2 -eq "S") {
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.github.com/jov-glitch/tiw-rose-pine-11/main/WindowsPatcher.ps1'))
    exit
}

Write-Host "Instalando..." -ForegroundColor DarkCyan

try {
    # Ejecutar el comando
    Checkpoint-Computer -Description "Punto de restauracion creado por tiw-rosepine-11" -RestorePointType "APPLICATION_INSTALL"
    # Mostrar un mensaje de éxito
    Write-Host "¡Éxito! Se creó el punto de restauración correctamente." -ForegroundColor Green
  } catch {
    # Mostrar un mensaje de error
    Write-Host "¡Error! No se pudo crear el punto de restauración." -ForegroundColor Red
    # Mostrar el mensaje de error específico
    Write-Host "Error: $($Error[0].Message)" -ForegroundColor Red
  }


Write-Host "`n" -ForegroundColor DarkRed
Write-Host "Instalando tema rose pine for windows 11 by nuvii" -ForegroundColor DarkCyan

$githubUrl = "https://github.com/jov-glitch/tiw-rose-pine-11/tree/main/rpnuvii/Windows/"
$destinationPath = "C:\Windows\Resources\Themes\"

# Descargar el contenido de la carpeta de GitHub
Invoke-WebRequest -Uri $githubUrl -OutFile "$destinationPath\index.html"

# Extraer el contenido de la carpeta de GitHub
$zipFile = "$destinationPath\index.html"
$extractPath = "$destinationPath\carpeta"

# Extraer el contenido del archivo zip
Expand-Archive -Path $zipFile -DestinationPath $extractPath -Force

# Copiar los archivos y subcarpetas a la ubicación deseada
Copy-Item -Path $extractPath -Destination $destinationPath -Recurse -Force



# Instalar paquetes de software



