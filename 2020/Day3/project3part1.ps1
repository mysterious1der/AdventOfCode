$input = Get-Content C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day3\input.txt 
$countlines = $input | Measure-Object -Line | Select-Object -expandProperty Lines
$countcols = $input[0] | Measure-Object -Character | Select-Object -expandProperty Characters

#write-host $countlines
#Write-Host $countcols

#write-host $input[0]
write-host $input[11].Substring(0,1)

#for (($x = 0), ($y = 0); $y -lt $count)
for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x += 3
    $y ++


    if ($x -ge $countcols) {
        $x = $x - $countcols
    }

    #write-host "On line" $y ", X is" $x
    Write-Host "Character at pos" $x "on line" $y "is" $input[$y].Substring($x,1)
   
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees++
    }
}
write-host "You hit" $trees "trees"