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

$highestseatid = $tickets | Sort-Object SeatID | select -Last 1
$highestseatid