function vim {
    param (
        [string]$Path
    )

if ($path -like ".*"){
      $Path = $Path -replace '\\', '/'
      wsl -d ubuntu -- sudo vim $Path
}
else{
    # Replace backslashes with forward slashes
    $Path = $Path -replace '\\', '/'
    $Path = $Path -replace 'C:', 'c'
    $Path = $Path -replace 'D:', 'd'
    $Path = $Path -replace 'E:', 'e'
    $Path = $Path -replace 'F:', 'f'
    $Path = $Path -replace 'G:', 'g'
    
    # Prepend /mnm/ to the path
    $Path = "/mnt/$Path"
    
    wsl -d ubuntu -- sudo vim $Path
}

}

