#Elif JAFFRS
# Date : 23/10/2025
# Script pour vérifier la présence de KB sur Windows
# Procédure pour déployer sur un parc AD 

# Lire des KB depuis le fichier kb_list.txt et les stocker dans une variable
$kb_list = cat "C:\Users\Elif\Desktop\Brief23-10\kb_list.txt"

# Récupérer la liste des KB installées
$Les_KB_Presente = (Get-HotFix).HotFixID

# Pour chaque KB, vérifier la présence et afficher en couleur
foreach ($kb in $kb_list) {
    if ($Les_KB_Presente -match $kb) {
        Write-Host "$kb est present donc intallee" -ForegroundColor Green
    } else {
        Write-Host "$kb est absent" -ForegroundColor Red
    }
}
# SIG # Begin signature block
# MIIFggYJKoZIhvcNAQcCoIIFczCCBW8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUcqLUXcKhMsIagok4StHr+FS2
# xhSgggMWMIIDEjCCAfqgAwIBAgIQLJ1DrtrKHbtHfll0YG8spTANBgkqhkiG9w0B
# AQsFADAhMR8wHQYDVQQDDBZTY3JpcHRfS0JfZWxpZl9qYWZmcmVzMB4XDTI1MTAy
# MzEwMTEzOVoXDTI2MTAyMzEwMzEzOVowITEfMB0GA1UEAwwWU2NyaXB0X0tCX2Vs
# aWZfamFmZnJlczCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALV0uiJp
# AtWGituEsNGwxwl53AQx0I08QA5vEltHfWmf7lRbb2GtNwfxFxyD2YGpUFcFgJal
# StChbOeB2wtE8ExBDBbQ+Q+IoEY4M6r169z+Pkj0XVLljvsz4P+++mMZUGngQhNv
# pfcdlL3EMPAhF0u0RszQS+hJQeDlgDEdrDgjzbpgKMldAjnRdpsjKiQND5Uvv4eM
# r/40UUFdnXGNibmHr0rS9Ide8uTMJl6KaxOqsMci4qxd3I0iMl1QWmAA/8aZFtQC
# jx1z7+DttYQMgvLjNNG8PIjDZiZmfAMNfIk8PguqCKvwWoSJqQEzpCXaZBWuxp5Z
# hyikaSDDGePd0h0CAwEAAaNGMEQwDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoG
# CCsGAQUFBwMDMB0GA1UdDgQWBBSENeK5bnjfbL6dNpbnyY/bS2H4RTANBgkqhkiG
# 9w0BAQsFAAOCAQEAG4HkA0ChHQUMzgWKGBypYQOgU47Bq/1Vcr0A5t8AxSouzm7l
# Z4lCe/TkwaLW0+pnOa8nIebWrzTi8ODCEME2dvAIPFU1e8URkJPKdZEUXguPEWMn
# Zy2lZchcV4kSJ8H0D1pff1ftSGyDiC+jDYZFWhUM1a+YQgNdJ7nSLNmlMyrzyyDt
# JqUWmTdRJKgvIMo07FfmzUa+SUO6ya9TFpS8pgJIq875/Cm3ncwlfEy9QOnJ8Mi1
# W/yJkdcT7WKmlH9R4OuJf4xcLoUPKeeLBkssj3+cw6wjGOvOznUF1Iw1Y18AB8f7
# qhSSnqyJVLAf4ET087vfsDSb5mIEd9zhVCIPEDGCAdYwggHSAgEBMDUwITEfMB0G
# A1UEAwwWU2NyaXB0X0tCX2VsaWZfamFmZnJlcwIQLJ1DrtrKHbtHfll0YG8spTAJ
# BgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0B
# CQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAj
# BgkqhkiG9w0BCQQxFgQURjop97kqzGUQpmiqV8AiUe1l32QwDQYJKoZIhvcNAQEB
# BQAEggEAiAJa+mLykW5GqbjtWOjVd59QQpj5bkKxEs9h4UmgX6Jd9/GJ22UwqW8Q
# ViIuQgoNtfLJldK4UZ4Hk+un5PxU+E2GxoSo5KxKQgPx2l1cVQtv2nroIoEIdTt5
# 4pGzHsrzybpCcK2cn2m3Z4d7kElKo3MYTnN4nxUeIEm2PdZ5pOCxPdeVVyF+RY0X
# vUi83P6Mkjw4psPrbpCqL5nRiYYPxy2MJBt+HftU53SlhYteQO2i3cWgWXKGjv4X
# Dh44jsDf79xw0PD7ovCcaEENo2CULJZL+nl9e/406tyFt6krbjP9ct5k2o7Rl+3n
# j15LEAzyT/JrLs/HmMhKlDYlfOr7sA==
# SIG # End signature block
