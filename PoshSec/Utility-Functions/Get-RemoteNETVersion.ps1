function Get-RemoteNETVersion {
	<#    
		.SYNOPSIS
  			Gets the .NET Framework version(s) from the remote system.
		.DESCRIPTION
			This function will return the .NET Framework versions that are installed on the remote system.
		.PARAMETER computer
  			The remote system on which to run the command.
  
		.EXAMPLE
  			PS> $versions = Get-RemoteNETVersion -computer REMOTEPC
	  
		.EXAMPLE
  			PS> $versions = Get-RemoteNETVersion REMOTEPC

		.LINK
   			www.poshsec.com
		.NOTES
			AUTHOR: Ben0xA
  			This function is a utility function for the PoshSec module.
	#>
	
	Param(
    	[Parameter(Mandatory=$true,Position=1)]
    	[string]$computer
  	)
  
  	$rtnvers = @()
  	$versions = Get-RemoteRegistryKey $computer 3 "Software\Microsoft\.NETFramework\policy\"
  	if($versions) {
    	foreach($ver in $versions) {
      	if($ver.Key -like "v*") {
        	$rtnvers += $ver
      	}
    	}
  	}
  
  	return $rtnvers
}