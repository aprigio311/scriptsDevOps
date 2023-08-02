#Script verifica se uma porta esta em uso ou nao, voce tem que digitar a porta que quer verificar!

$Port = Read-Host "Digite a porta que gostaria de verificar"

$cmd1 = netstat -an | findstr "$Port"

if ($cmd1.Length -gt 0)
    {
    echo "A porta $Port esta ocupada"
    }

else
    {
    echo "A porta $Port esta livre"
    }