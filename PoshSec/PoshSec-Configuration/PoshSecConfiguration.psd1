@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = 'PoshSec-Configuration.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
GUID = '8585ae61-35b0-460e-a205-bd08b0a65d1f'

# Author of this module
Author = 'PoshSec'

# Copyright statement for this module
Copyright = 'BSD 3-Clause'

# Description of the functionality provided by this module
Description = 'PoshSec Configuration Module'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Functions to export from this module
FunctionsToExport = '*'

# List of all modules packaged with this module.
ModuleList = @(@{ModuleName = 'PoshSec-Configuration'; ModuleVersion = '1.0.0.0'; GUID = '8585ae61-35b0-460e-a205-bd08b0a65d1f'})

# List of all files packaged with this module
FileList = 'PoshSec-Configuration.psm1', 'PoshSec-Configuration.psd1', 'Set-PoshSecConfig.ps1', 'Get-PoshSecConfig.ps1'

}

