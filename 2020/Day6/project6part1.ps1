$input = [IO.File]::ReadAllText("C:\Users\Jirah\Documents\GitHub\AdventOfCode\2020\Day6\input.txt")
$forms = $input -split '\r?\n\r?\n'
$count = 0

foreach ($form in $forms)
{
    $form = $form.ToCharArray() | Where { -not [string]::IsNullOrWhiteSpace($_) } | sort -CaseSensitive -Unique
    $count += $form.Length
}

write-host $count "total answers"