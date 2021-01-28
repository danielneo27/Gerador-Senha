<#	
	.NOTAS
	===========================================================================
	 Criado em:   	07/01/2021 15:33
	 Criado por:   	Daniel Neo
     Versão:        1.0.0
     Atualizado:    19/01/2021
	 Nome do arquivo:  Gerador de senha[Complexa]
	===========================================================================
	.DESCRIÇÃO
		Crie senhas seguras e personalizadas com esta ferramenta de geração Complexa.

        Altere neste campo o numero de caracteres especiais desejados "($PasswordLenght,3)"
        
        Para gerar uma senha com mais de 10 caracteres altere o valor de  "GenerateStrongPassword (10)"
#>
Function GenerateStrongPassword ([Parameter(Mandatory=$true)][int]$PasswordLenght)
{
Add-Type -AssemblyName System.Web
$PassComplexCheck = $false
do {
$newPassword=[System.Web.Security.Membership]::GeneratePassword($PasswordLenght,3)
If ( ($newPassword -cmatch "[A-Z\p{Lu}\s]") `
-and ($newPassword -cmatch "[a-z\p{Ll}\s]") `
-and ($newPassword -match "[\d]") `
-and ($newPassword -match "[^\w]")
)
{
$PassComplexCheck=$True
}
} While ($PassComplexCheck -eq $false)
return $newPassword
}

GenerateStrongPassword (10)

pause
