<#
.SYNOPSIS
    Converts from Base64 to text.

.DESCRIPTION
    Converts from Base64 to text.

.PARAMETER data
    The Base64 data to convert.

.OUTPUTS
    The text converted from Base64.

.EXAMPLE
    Converts the data from Base64 back to text.
    
    $text = ConvertFrom-Base64 $data

.LINK
    ConvertTo-Base64
#>
function ConvertFrom-Base64 {
   param(
      [Parameter(Mandatory)][string] $data
   )

   $bytes = [Convert]::FromBase64String($data)
   $text = [System.Text.Encoding]::Unicode.GetString($bytes)

   return $text
}