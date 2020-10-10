function Write-DNS {
    param([Parameter()] [string] $dns)

    if ($dns) {
        $Name = Get-NetAdapter -physical | where status -eq ‘up’
        $Name2 = $Name.Name
        #Agregué una $Name2 porque no me dejaba sustituir "$Name.Name"
        set-DnsClientServerAddress -InterfaceAlias “$Name2” -ServerAddresses $dns
        Write-Host 'Se ha agregado, a contiuación verás en la sección DNS tu opción'
        ipconfig -all
 
    } else {
        "No agregaste un nuevo DNS"
        #Este aparece si no pongo el parámetro, solo llamo a la función

    }

}
Write-DNS -dns 192.168.0.1