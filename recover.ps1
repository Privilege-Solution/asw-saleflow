$str = [System.IO.File]::ReadAllText('mytask.html', [System.Text.Encoding]::UTF8)
$bytes = [System.Text.Encoding]::GetEncoding(874).GetBytes($str)
[System.IO.File]::WriteAllBytes('mytask.html', $bytes)
