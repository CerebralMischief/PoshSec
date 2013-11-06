function Confirm-Windows8Plus {
	if(([System.Environment]::OSVersion.Version.Major -le 6) -and ([System.Environment]::OSVersion.Version.Minor -lt 2) ) {
		$false
	} else {
		$true
	}
}