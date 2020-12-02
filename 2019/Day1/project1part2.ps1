[int[]]$inputArray1 = Get-Content -Path 'C:\Users\Jirah\Documents\GitHub\AdventOfCode\2019\Day1\project1input.txt'

$i = 1

foreach ($num1 in $inputArray1) {
    $temp = [int][Math]::Floor($num1 / 3) - 2
    $sum += $temp
    if ( $temp -ge 9 )
        {
        # loop here
        # $sum += $temp
        }







    
    $i++
}

Write-Host $sum