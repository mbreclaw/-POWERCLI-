param(਍    嬀瀀愀爀愀洀攀琀攀爀⠀䴀愀渀搀愀琀漀爀礀㴀␀琀爀甀攀⤀崀 ␀戀漀甀渀挀攀栀漀猀琀Ⰰഀഀ
	$vms,਍    嬀瀀愀爀愀洀攀琀攀爀⠀⤀崀                ␀爀攀愀氀ഀഀ
)਍ഀഀ
਍␀戀漀甀渀挀攀栀漀猀琀 㴀 最攀琀ⴀ瘀洀栀漀猀琀 ⴀ渀愀洀攀 ␀戀漀甀渀挀攀栀漀猀琀 ഀഀ
#$vms = get-vm -location "mm01-msg01" -name "*mbx*" |sort -property name਍ഀഀ
write-host $vms.count "vms to move"਍ഀഀ
Write-Host $vms਍ഀഀ
foreach ($vm in $vms){਍    ␀渀攀琀眀漀爀欀猀 㴀 最攀琀ⴀ渀攀琀眀漀爀欀愀搀愀瀀琀攀爀 ⴀ瘀洀 ␀瘀洀ഀഀ
    if ($vm.name.ToLower().Contains("mbx")){਍        昀漀爀攀愀挀栀 ⠀␀渀攀琀眀漀爀欀 椀渀 ␀渀攀琀眀漀爀欀猀⤀笀ഀഀ
            write-host "----------"਍            眀爀椀琀攀ⴀ栀漀猀琀 ∀爀攀琀爀椀攀瘀椀渀最 琀愀爀最攀琀 瀀漀爀琀 最爀漀甀瀀 昀漀爀㨀 ∀ ␀瘀洀⸀渀愀洀攀ഀഀ
            $target_port_group = get-virtualportgroup -VirtualSwitch "Andover01-dvSwitch01" -name $network.NetworkName਍            ␀挀漀渀昀椀爀洀 㴀 爀攀愀搀ⴀ栀漀猀琀 ✀倀爀攀猀猀 夀 琀漀 洀椀最爀愀琀攀✀ ␀瘀洀⸀渀愀洀攀ഀഀ
            if (!($confirm.ToLower() -eq 'y' )){਍                攀砀椀琀ഀഀ
            }਍            椀昀 ⠀␀爀攀愀氀⤀笀ഀഀ
                write-host "moving" $vm.name "from" $vm.host.name "to" $bouncehost.name ਍                洀漀瘀攀ⴀ瘀洀 ⴀ瘀洀 ␀瘀洀 ⴀ搀攀猀琀椀渀愀琀椀漀渀 ␀戀漀甀渀挀攀栀漀猀琀ഀഀ
                write-host "changing" $vm.name "vm to target network:" $target_port_group.name਍                匀攀琀ⴀ一攀琀眀漀爀欀䄀搀愀瀀琀攀爀 ⴀ渀攀琀眀漀爀欀愀搀愀瀀琀攀爀 ␀渀攀琀眀漀爀欀 ⴀ倀漀爀琀最爀漀甀瀀 ␀琀愀爀最攀琀开瀀漀爀琀开最爀漀甀瀀 ⴀ䌀漀渀昀椀爀洀㨀␀昀愀氀猀攀 簀 伀甀琀ⴀ一甀氀氀ഀഀ
਍ऀऀऀऀ⌀␀琀愀爀最攀琀栀漀猀琀 㴀 最攀琀ⴀ瘀洀栀漀猀琀 ⴀ渀愀洀攀 ⠀␀栀漀猀琀开洀愀瀀⸀最攀琀开椀琀攀洀⠀␀瘀洀⸀栀漀猀琀⸀渀愀洀攀⤀⤀ഀഀ
                #write-host "moving " $vm.name "to:" $targethost.name਍                ⌀洀漀瘀攀ⴀ瘀洀 ⴀ瘀洀 ⠀最攀琀ⴀ瘀洀 ⴀ瘀洀 ␀瘀洀⸀渀愀洀攀 ⴀ氀漀挀愀琀椀漀渀 ␀戀漀甀渀挀攀栀漀猀琀⤀ ⴀ搀攀猀琀椀渀愀琀椀漀渀 ␀琀愀爀最攀琀栀漀猀琀 ⴀ愀猀礀渀挀㨀␀琀爀甀攀ഀഀ
            }਍            攀氀猀攀笀ഀഀ
				Write-Host '---Test---'਍                眀爀椀琀攀ⴀ栀漀猀琀 ∀洀漀瘀椀渀最∀ ␀瘀洀⸀渀愀洀攀 ∀昀爀漀洀∀ ␀瘀洀⸀栀漀猀琀⸀渀愀洀攀 ∀琀漀∀ ␀戀漀甀渀挀攀栀漀猀琀⸀渀愀洀攀 ഀഀ
                write-host "changing" $vm.name "vm to target network:" $target_port_group.name਍                ␀琀愀爀最攀琀栀漀猀琀 㴀 最攀琀ⴀ瘀洀栀漀猀琀 ⴀ渀愀洀攀 ⠀␀栀漀猀琀开洀愀瀀⸀最攀琀开椀琀攀洀⠀␀瘀洀⸀栀漀猀琀⸀渀愀洀攀⤀⤀ഀഀ
                write-host "moving " $vm.name "to:" $targethost.name਍                眀爀椀琀攀ⴀ栀漀猀琀 ∀ⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀⴀ∀ഀഀ
            }਍        紀ഀഀ
    }਍紀�