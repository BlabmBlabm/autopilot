function main()
{
  call InitJump

  while TRUE
  {
    if !${Display.Foreground}
    {
      call IsWarping
      call Jump
    }
  }
}


function InitJump() 
{
  wait 1
  call Jump
  wait 50
}


function Jump()
{
  call rightClickAt 78 272
  wait 20
  call leftClickAt 115 282
}


function IsWarping()
{
  variable string WarpPixel = c18e53
  variable string PosPixel = ${Display.GetPixel[990,998]}
  
  if ${WarpPixel.Equal[${PosPixel}]}
  {
    echo inWarp
    wait 200
  }
  else
  {
    wait 50
  }
}


function leftClickAt(uint x, uint y)
{
	MouseTo ${x},${y} 
  wait 1

	mouseclick -hold left
	waitframe
	mouseclick -release left
}


function rightClickAt(uint x, uint y)
	{
	MouseTo ${x},${y}
	wait 1

  mouseclick -hold right
  waitframe
  mouseclick -release right
}