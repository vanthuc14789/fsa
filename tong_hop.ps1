# Script: tong_hop.ps1
# Tac gia: DANG VAN THUC
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao..."
New-Item -itemtype file logs/tong_hop.txt
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-Content logs/access.log | Select-String "status=404" >> logs/tong_hop.txt
Get-Content logs/access.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan thanh!"
