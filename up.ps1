Set-ExecutionPolicy RemoteSigned
Import-Module 'C:\Program Files\Microsoft Dynamics 365 Business Central\200\Service\NavAdminTool.ps1'

Get-NAVAppInfo -ServerInstance BC200 -Name '.\Default publisher_SD Seminar_1.0.0.0.app'
Uni