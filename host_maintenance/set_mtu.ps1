param(਍    嬀瀀愀爀愀洀攀琀攀爀⠀䴀愀渀搀愀琀漀爀礀㴀␀琀爀甀攀⤀崀 ␀瘀洀栀漀猀琀猀Ⰰഀഀ
	$vmknic="vmk2",਍ऀ␀洀琀甀㴀㤀　　　ഀഀ
)਍ഀഀ
$vmhosts | Get-VMHostNetworkAdapter | Where { $_.name -eq $vmknic } | Foreach { $_ | Set-VMHostNetworkAdapter -Mtu $mtu -Confirm:$false }਍�