$Proc = Get-Process | Sort-Object CPU -Descending
$Total = 5
$num = 1

write-host
foreach ($objItm in $Proc) {
  if ($num -gt $Total) {
    break
  }
  write-host "$num) " -foregroundcolor "white" -nonewline; write-host $objItm.ProcessName -foregroundcolor "cyan" -nonewline; write-host " - CPU:"$objItm.CPU
  write-host "# ID:" $objItm.ID -foregroundcolor "white"
  write-host
  $num += 1
}

write-host
write-host --------------------------------------------------- -foregroundcolor "cyan"
write-host Top $Total CPU consuming processes... -foregroundcolor "cyan"
write-host --------------------------------------------------- -foregroundcolor "cyan"
write-host
