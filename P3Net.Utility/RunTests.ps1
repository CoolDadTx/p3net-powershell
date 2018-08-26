import-module .\Base64Encode.psm1 -Force

# Test
$expected = "Hello World"
$result = Base64Encode $expected

$actual = Base64Encode $result -decode $true

if ($actual -ne $expected) {
   throw "Actual does not equal expected"
}
else {
   Write-Host "Test Passed"
}
