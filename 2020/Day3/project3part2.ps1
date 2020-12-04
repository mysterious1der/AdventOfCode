$input = Get-Content C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day3\input.txt 
$countlines = $input | Measure-Object -Line | Select-Object -expandProperty Lines
$countcols = $input[0] | Measure-Object -Character | Select-Object -expandProperty Characters

#slope 1,1

for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x += 1
    $y ++

    if ($x -ge $countcols) 
    {
        $x = $x - $countcols
    }
 
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees11++
    }
}

#slope 3,1

for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x += 3
    $y ++

    if ($x -ge $countcols) 
    {
        $x = $x - $countcols
    }
 
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees31++
    }
}

#slope 5,1

for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x += 5
    $y ++

    if ($x -ge $countcols) 
    {
        $x = $x - $countcols
    }
 
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees51++
    }
}

#slope 7,1

for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x += 7
    $y ++

    if ($x -ge $countcols) 
    {
        $x = $x - $countcols
    }
 
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees71++
    }
}

#slope 1,2

for (($x = 0), ($y = 0), ($trees = 0); $y -lt $countlines-1)
{
    $x ++
    $y += 2

    if ($x -ge $countcols) 
    {
        $x = $x - $countcols
    }
 
    if ($input[$y].Substring($x,1) -eq "#")
    {
        $trees12++
    }
}
Write-Host "Multiplied trees =" ($trees11 * $trees31 * $trees51 * $trees71 * $trees12)