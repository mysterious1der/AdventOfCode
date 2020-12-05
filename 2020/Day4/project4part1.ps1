$input = [IO.File]::ReadAllText("C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day4\input.txt")

$array = $input -split '\r?\n\r?\n'

for (($x = 0), ($valid = 0); $x -lt $array.Count)
{
    if ($array[$x] -like '*byr:*' -and $array[$x] -like '*iyr:*' -and $array[$x] -like '*eyr:*' -and $array[$x] -like '*hgt:*' -and $array[$x] -like '*hcl:*' -and $array[$x] -like '*ecl:*' -and $array[$x] -like '*pid:*')
    {
        $valid++
    }
    $x++
}

Write-Host $valid "valid passports"