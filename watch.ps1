# Script pour surveiller la création de fichiers et mettre à jour un fichier parent
$folderToWatch = "./lib/features/home/presentation/widgets/" # Répertoire courant (modifiable)

# Créer un FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = Resolve-Path $folderToWatch
$watcher.IncludeSubdirectories = $false
$watcher.Filter = "*.*"
$watcher.NotifyFilter = [System.IO.NotifyFilters]'FileName'

# Définir l'action à effectuer quand un fichier est créé
$action = {
    param($source, $e)
    
    $newFile = $e.FullPath
    Start-Sleep -Milliseconds 100 # Attendre que le fichier soit disponible
    
    if (-not (Test-Path -Path $newFile -PathType Container)) {
        $directory = Split-Path $newFile -Parent
        $parentFolderName = (Get-Item $directory).Name
        $parentFile = Join-Path $directory "$parentFolderName.dart"
        $fileName = Split-Path $newFile -Leaf

        # Exclure le fichier parent lui-même
        if (-not $newFile.EndsWith("$parentFolderName.dart")) {
            # Créer le fichier parent si nécessaire
            if (-not (Test-Path $parentFile)) {
                New-Item $parentFile -Type File | Out-Null
            }

            # Vérifier les doublons et ajouter en tête
            $content = Get-Content $parentFile -ErrorAction SilentlyContinue
            if (-not $content.Contains($fileName)) {
                $newContent = @("export '$fileName';") + $content
                Set-Content $parentFile $newContent
            }
        }
    }
}

# S'inscrire à l'événement et démarrer la surveillance
Register-ObjectEvent $watcher "Created" -Action $action > $null

Write-Host "Surveillance active du dossier $($watcher.Path)..." -ForegroundColor Green
Write-Host "Appuyez sur Ctrl+C pour arrêter"

try {
    while ($true) { Start-Sleep -Seconds 1 }
}
finally {
    Unregister-Event -SourceIdentifier $watcher.Created
    $watcher.Dispose()
}