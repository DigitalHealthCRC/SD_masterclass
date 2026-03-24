$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$html = Get-Content (Join-Path $root 'index.html') -Raw

if ($html -match '(?m)^(<<<<<<<|=======|>>>>>>>)') {
  throw 'index.html still contains merge conflict markers.'
}

if ($html -notmatch '(?s)<section id="venue">.*?<canvas id="venue-canvas"></canvas>') {
  throw 'Missing venue background canvas inside #venue.'
}

if ($html -notmatch '#venue-canvas\s*\{[^}]*pointer-events:\s*none;') {
  throw 'Venue canvas must be decorative only and ignore pointer events.'
}

if ($html -notmatch '(?s)\(function venueParticles\(\) \{.*?const canvas\s*=\s*document\.getElementById\(''venue-canvas''\);') {
  throw 'Missing venue particle renderer.'
}

if ($html -notmatch 'const particleHex\s*=\s*''#f5f4f0'';') {
  throw 'Venue particle dots are not using the bright white palette.'
}

if ($html -notmatch 'const lineHex\s*=\s*''#f5f4f0'';') {
  throw 'Venue particle lines are not using the bright white palette.'
}

if ($html -notmatch 'const interactive\s*=\s*false;') {
  throw 'Venue particle renderer must be decorative only.'
}

if ($html -notmatch 'const particleOpacityRange\s*=\s*\[\s*0\.126\s*,\s*0\.224\s*\];') {
  throw 'Venue particle opacity has not been reduced by 30 percent.'
}

if ($html -notmatch 'const lineOpacity\s*=\s*0\.168;') {
  throw 'Venue particle line opacity has not been reduced by 30 percent.'
}

if ($html -notmatch 'const particleCount\s*=\s*w < 700 \? 90 : w < 1100 \? 144 : 198;') {
  throw 'Venue particle density does not reflect the requested 50 percent increase.'
}

if ($html -notmatch 'const particleGeometry\s*=\s*new THREE\.CircleGeometry\(1,\s*18\);') {
  throw 'Venue particles are not using small circular geometry.'
}

if ($html -notmatch 'const scale\s*=\s*randomBetween\(3,\s*6\);') {
  throw 'Venue particle dots are not small enough yet.'
}

if ($html -notmatch 'vx:\s*randomBetween\(-0\.182,\s*0\.182\)') {
  throw 'Venue particle horizontal speed has not been increased by 30 percent.'
}

if ($html -notmatch 'vy:\s*randomBetween\(-0\.104,\s*0\.104\)') {
  throw 'Venue particle vertical speed has not been increased by 30 percent.'
}

if ($html -notmatch 'drift:\s*randomBetween\(0\.52,\s*1\.82\)') {
  throw 'Venue particle drift speed has not been increased by 30 percent.'
}

Write-Output 'PASS: venue background renderer is visible and conflict-free.'
