deviceSelection = (deviceType,versions,currentDevice,platformType,platform) ->
  connectedDevices = versions.devices.filterBy("is_connected",true)
  android = connectedDevices.filterBy("platform", 0)
  ios = connectedDevices.filterBy("platform", 1)
  if platform is platformType.ANDROID
    if currentDevice is deviceType.PHONE_REQUIRED
      android.filterBy("is_tablet",false)
    else if currentDevice is deviceType.TABLET_REQUIRED
      android.filterBy("is_tablet",true)
    else
      android
  else
    if currentDevice is deviceType.PHONE_REQUIRED
      ios.filterBy("is_tablet",false)
    else if currentDevice is deviceType.TABLET_REQUIRED
      ios.filterBy("is_tablet",true)
    else
      ios

`export default deviceSelection`
