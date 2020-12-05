$input = [IO.File]::ReadAllText("C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day4\input.txt")

$array = $input -split '\r?\n\r?\n'

for (($x = 0), ($valid = 0); $x -lt $array.Count)
{
    if ($array[$x] -like '*byr:*' -and $array[$x] -like '*iyr:*' -and $array[$x] -like '*eyr:*' -and $array[$x] -like '*hgt:*' -and $array[$x] -like '*hcl:*' -and $array[$x] -like '*ecl:*' -and $array[$x] -like '*pid:*')
    {
        $hash = $array[$x]
        $hash = $hash -replace " ","`n"
        $hash = $hash -replace ":"," = "
        $hash = ConvertFrom-StringData -StringData $hash
        
        if ($hash["byr"] -ge 1920 -and $hash["byr"] -le 2002 -and $hash["byr"].Length -eq 4)
        {
            if ($hash["iyr"] -ge 2010 -and $hash["iyr"] -le 2020 -and $hash["iyr"].Length -eq 4)
            {
                if ($hash["eyr"] -ge 2020 -and $hash["eyr"] -le 2030 -and $hash["eyr"].Length -eq 4)
                {        
                    if ($hash["hcl"].Length -eq 7 -and $hash["hcl"] -match '[#][0-9a-f]{6}')
                    {
                        if ($hash["ecl"] -match '(amb|blu|brn|gry|grn|hzl|oth)')
                        {
                            if ($hash["pid"] -match '[\d]{9}' -and $hash["pid"].Length -eq 9)
                            {    
                                $unit = $hash["hgt"].Substring($hash["hgt"].Length-2,2)
                                switch ($unit)
                                {
                                    cm 
                                    {
                                        if ($hash["hgt"].Substring(0,3) -ge 150 -and $hash["hgt"].Substring(0,3) -le 193)
                                        {
                                            $valid++
                                        }
                                    }
                                    in 
                                    {
                                        if ($hash["hgt"].Substring(0,2) -ge 59 -and $hash["hgt"].Substring(0,2) -le 76)
                                        {
                                            $valid++
                                        }
                                    }
                                    Default
                                    {
                                    }

                                            
                                }

                            }
                        }
                    }
                }
            }
        }
    }
    $x++
}
Write-Host $valid "valid passports"