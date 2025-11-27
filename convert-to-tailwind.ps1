Get-ChildItem -Path "d:\project website\Gloryhairsalon" -Filter "*.html" | ForEach-Object {
    if ($_.Name -ne 'index.html') {
        $content = Get-Content $_.FullName -Raw -Encoding UTF8
        
        # Find position of <style> tag
        $styleStart = $content.IndexOf('<style>')
        $styleEnd = $content.IndexOf('</style>') + 8
        
       if ($styleStart -gt -1 -and $styleEnd -gt $styleStart) {
            # Remove the style block
            $beforeStyle = $content.Substring(0, $styleStart)
            $afterStyle = $content.Substring($styleEnd)
            
            # Add the link tag if not already present
            $linkTag = '<link rel="stylesheet" href="/src/index.css" />'
            if (-not $beforeStyle.Contains($linkTag)) {
                $newContent = $beforeStyle.TrimEnd() + "`n  " + $linkTag + "`n" + $afterStyle.TrimStart()
            } else {
                $newContent = $beforeStyle + $afterStyle
            }
            
            Set-Content -Path $_.FullName -Value $newContent -Encoding UTF8 -NoNewline
            Write-Host "Converted: $($_.Name)"
        }
    }
}
