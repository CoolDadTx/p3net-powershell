<#
.SYNOPSIS
    Converts text to Base64.

.DESCRIPTION
    Converts text to Base64.

.PARAMETER text
    The text to convert.

.OUTPUTS
    The Base64 text.

.EXAMPLE
    Encode the string to Base64 and store the result in a variable
    
    $result = ConvertTo-Base64 "Hello World"

.LINK
    ConvertFrom-Base64
#>
function ConvertTo-Base64 {
   param(
      [Parameter(Mandatory)][string] $text
   )

   $bytes = [System.Text.Encoding]::Unicode.GetBytes($text)
   $data = [Convert]::ToBase64String($bytes)    

   return $data
}