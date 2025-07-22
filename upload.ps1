if ((Get-Command "fwi-serial" -ErrorAction SilentlyContinue) -eq $null) {
	Write-Host "Unable to find fwi-serial in your PATH, please install it via pypi!"
	Exit
}

foreach ($sub_file in Get-ChildItem "*.sub") {
	fwi-serial -s $sub_file
}
