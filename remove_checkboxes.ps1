$path = 'mytask.html'
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# Remove the TH checkbox column
$content = $content -replace '(?s)\s*<th width="5%" class="text-center"><input type="checkbox" class="check-all"></th>', ''

# Remove the TD checkbox columns
$content = $content -replace '(?s)\s*<td class="text-center"><input type="checkbox" class="check-item"[^>]*></td>', ''

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
