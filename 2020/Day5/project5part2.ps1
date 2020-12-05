$input = Get-Content C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day5\input.txt 
$input = $input -replace "F","0"
$input = $input -replace "B","1"
$input = $input -replace "R","1"
$input = $input -replace "L","0"
$tickets = @()

for (($count = 0); $count -lt $input.Length)
{
    $row = [convert]::ToInt32($input[$count].Substring(0,7),2)
    $seat = [convert]::ToInt32($input[$count].Substring(7,3),2)
    $seatid = $row * 8 + $seat
    $tickets += New-Object -TypeName psobject -Property @{TicketID=$count; Row=$row; Seat=$seat; SeatID=$seatid}
    $count++
}

$seatarraystrings = $seatidlist | Foreach {"$($_.SeatID)"}

[array]$seatarray = foreach($number in $seatarraystrings) 
{
    try {
        [int]::parse($number)
    }
    catch {
        Invoke-Expression -Command $number;
    }
}

#for (($x = 0), ($valid = 0); $x -lt $array.Count)
for ($x = 0; $x -lt $seatarray.Count)
{
    $neighborabove = $x + 1
    $neighborbelow = $x - 1
    if ($seatarray.Contains($neighborabove) -and $seatarray.Contains($neighborbelow) -and $seatarray -notcontains $x)
    {
        Write-Host "Seat ID is" $x
    }
    $x++
}