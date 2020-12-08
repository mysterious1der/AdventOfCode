$input = [IO.File]::ReadAllText("C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day6\input.txt")
$forms = $input -split '\r?\n\r?\n'
$count = 0
$letters = 0

foreach ($form in $forms)
{
    $temp = $form -split '\r?\n'

    #Alphabet Loop
    for ($tick = 0; $tick -lt 26; $tick++) 
    { 
        $letters = 0
        $char = [char](97 +$tick) 
        write-host "Working on letter" $char "on text " $temp        
        for ($tock = 0; $tock -lt $temp.Length; $tock++)
        {
            if ($temp[$tock].Contains($char))
            {
                Write-Host "Found me a" $char
                $letters++
            }
        }
        $letters
        if ($letters -eq $temp.length)
        {
            $count++
            Write-Host "Looks like" $char "appears on every line here"
        }
    }
}

write-host "I have no idea if this is the answer but lets try" $count