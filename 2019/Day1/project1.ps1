[int[]]$inputArray1 = Get-Content -Path 'C:\Users\Jirah\Documents\GitHub\AdventOfCode2020\Day1\Project1\project1input.txt'
[int[]]$inputArray2 = Get-Content -Path 'C:\Users\Jirah\Documents\GitHub\AdventOfCode2020\Day1\Project1\project1input.txt'
[int[]]$inputArray3 = Get-Content -Path 'C:\Users\Jirah\Documents\GitHub\AdventOfCode2020\Day1\Project1\project1input.txt'

$i1 = 1
$i2 = 1
$i3 = 1
foreach ($num1 in $inputArray1) {
    foreach ($num2 in $inputArray2) {
        foreach ($num3 in $inputArray3) {
            $tempSum = $num1 + $num2 + $num3
            $tempProduct = $num1 * $num2 * $num3
            if ( $tempSum -eq 2020)
                {
                Write-Host $num1 "plus" $num2 "plus" $num3 "equals" $tempSum ", and multiplied together they are" $tempProduct
                }
            if ( $i3 -eq 200 )
                {
                $i3 = 1
                }
                else
                {
                $i3++
                }
        if ( $i2 -eq 200 )
            {
            $i2 = 1
            }
            else
            {
            $i2++
            }
        }
    $i1++
}
}