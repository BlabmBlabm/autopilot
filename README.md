# autopilot
eve online autopilot for inner space

--

coded in 5min, tested in 10min, but I use it now for 5 hours to fly around with freigthers.

Its just a first aid kit for a pilot who do not have to much time.

--

Important: Make the left sidebar very small, then the hardcoded x and y coords should be fit your resolution.

Set a destination in Eve and then:

undock: 
  - `run autopilot` 
  - wait for the first mousemoment
  - now you can let run your eve windows in background (the bot only take the mouse control if the windows is in the background)
  If the eve window is foccused, the routine stops.
  - `ends autopilot` to stop the script.

TODO/Issues: 
  - It will not dock in the final destination.
  - Warp detection sucks
