CreateThread(function()
  local lastZoomSetting = nil
  while true do
      Wait(1000) -- Increase wait time
      local playerPed = PlayerPedId()
      local currentZoomSetting = IsPedOnFoot(playerPed) and 1100 or nil

      if currentZoomSetting ~= lastZoomSetting then
          SetRadarZoom(currentZoomSetting or 1100)
          lastZoomSetting = currentZoomSetting
      end
  end
end)
