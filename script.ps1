$password = ConvertTo-SecureString -String $ENV:secret -AsPlainText -Force
$credentials = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $ENV:username, $password
Connect-ToMyApi -Url $ENV:apiUrl -ApplicationPassword $credentials