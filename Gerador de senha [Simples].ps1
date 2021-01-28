<#	
	.NOTAS
	===========================================================================
	 Criado em:   	06/01/2021 18:10
	 Criado por:   	Daniel Neo
	 Nome do arquivo:  Gerador de senha[Simples]
	===========================================================================
	.DESCRIÇÃO
		Crie senhas seguras e personalizadas com esta ferramenta de geração simples.
#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
Add-Type -AssemblyName System.Web
Write-Host "Senha gerada com Sucesso!"
#Escolha o padrão abaixo no campo entre parenteses.
[System.Web.Security.Membership]::GeneratePassword(10, 3)

Pause