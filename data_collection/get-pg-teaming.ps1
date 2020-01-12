#਍⌀ഀഀ
#ConvertToVersion਍⌀䔀焀甀愀氀猀ഀഀ
#GetHashCode਍⌀䜀攀琀吀礀瀀攀ഀഀ
#IsConvertableTo਍⌀吀漀匀琀爀椀渀最ഀഀ
#ActiveUplinkPort਍⌀䌀氀椀攀渀琀ഀഀ
#EnableFailback਍⌀䘀愀椀氀戀愀挀欀ഀഀ
#FailbackInherited਍⌀䘀愀椀氀漀瘀攀爀䐀攀琀攀挀琀椀漀渀倀漀氀椀挀礀ഀഀ
#FailoverDetectionPolicyInherited਍⌀䰀漀愀搀䈀愀氀愀渀挀椀渀最倀漀氀椀挀礀ഀഀ
#LoadBalancingPolicyInherited਍⌀一漀琀椀昀礀匀眀椀琀挀栀攀猀ഀഀ
#NotifySwitchesInherited਍⌀匀琀愀渀搀戀礀唀瀀氀椀渀欀倀漀爀琀ഀഀ
#Uid਍⌀唀渀甀猀攀搀唀瀀氀椀渀欀倀漀爀琀ഀഀ
#UplinkPortOrderInherited਍⌀嘀䐀倀漀爀琀最爀漀甀瀀ഀഀ
਍ഀഀ
param( [parameter(Mandatory=$false)][bool]$outputcsv )਍ഀഀ
$pgs = Get-VDPortgroup਍ഀഀ
$report = $pgs | sort | % {਍ഀഀ
	$team = $_ | Get-VDUplinkTeamingPolicy਍ഀഀ
	[PSCustomObject]@{਍       ∀倀漀爀琀最爀漀甀瀀∀ 㴀 ␀开⸀渀愀洀攀㬀ഀഀ
	   "ActiveUplinkPort" = $team.ActiveUplinkPort -join ", ";਍ऀ   ∀匀琀愀渀搀戀礀唀瀀氀椀渀欀倀漀爀琀∀ 㴀 ␀琀攀愀洀⸀匀琀愀渀搀戀礀唀瀀氀椀渀欀倀漀爀琀 ⴀ樀漀椀渀 ∀Ⰰ ∀㬀ഀഀ
	   "UnusedUplinkPort" = $team.UnusedUplinkPort -join ", ";਍   紀ഀഀ
}਍ഀഀ
$report਍椀昀 ⠀␀漀甀琀瀀甀琀挀猀瘀⤀笀ഀഀ
	$report | Export-Csv -NoTypeInformation -UseCulture c:\pg-teaming-report.csv਍紀ഀഀ
਍ഀഀ
਍�