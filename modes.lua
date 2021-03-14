require "api"
require "colors"

function handle(key)
  if currentMode == "tool" then
    toolModeHandle(key)
  elseif currentMode == "color" then
    colorModeHandle(key)
  elseif currentMode == "shape" then
    shapeModeHandle(key)
  elseif currentMode == "linestyle" then
    linestyleModeHandle(key)
  elseif currentMode == "sidebar" then
    sidebarModeHandle(key)
  end
end

function toolModeHandle(key)
  if key == color then
    currentMode = "color"
    print("Entered color mode")
  elseif key == shape then
    currentMode = "shape"
    print("Entered shape mode")
  elseif key == linestyle then
    currentMode = "linestyle"
    print("Entered linestyle mode")
  elseif key == sidebar then
    currentMode = "sidebar"
    print("Entered sidebar mode")
  elseif key == pen then
    clickPen()
    cleanShape()
  elseif key == eraser then
    clickEraser()
  elseif key == highlighter then
    clickHighlighter()
  elseif key == selection then
    clickSelectRegion()
  elseif key == veryFine then
    clickVeryFine()
  elseif key == fine then
    clickFine()
  elseif key == medium then
    clickMedium()
  elseif key == thick then
    clickThick()
  elseif key == veryThick then
    clickVeryThick()
  end
end

function colorModeHandle(key)
  if key == black then
    changeToolColor(blackColor)
  elseif key == white then
    changeToolColor(whiteColor)
  elseif key == red then
    changeToolColor(redColor)
  elseif key == orange then
    changeToolColor(orangeColor)
  elseif key == yellow then
    changeToolColor(yellowColor)
  elseif key == green then
    changeToolColor(greenColor)
  elseif key == cyan then
    changeToolColor(cyanColor)
  elseif key == blue then
    changeToolColor(blueColor)
  elseif key == pink then
    changeToolColor(pinkColor)
  elseif key == purple then
    changeToolColor(purpleColor)
  end
end

function shapeModeHandle(key)
  if key == ruler then
    clickRuler(true)
  elseif key == arrow then
    clickArrow(true)
  elseif key == rectangle then
    clickRectangle()
  elseif key == ellipse then
    clickEllipse()
  elseif key == spline then
    clickSpline()
  end
end

function linestyleModeHandle(key)
  if key == plain then
    clickPlain()
  elseif key == dashed then
    clickDashed()
  elseif key == dotted then
    clickDotted()
  elseif key == dashDotted then
    clickDashDotted()
  end
end

function sidebarModeHandle(key)
  if key == copy then
    clickCopy()
  elseif key == dashed then
    clickDashed()
  elseif key == moveUp then
    clickMoveUp()
  elseif key == moveDown then
    clickMoveDown()
  elseif key == newBefore then
    clickNewBefore()
  elseif key == newAfter then
    clickNewAfter()
  elseif key == goToBottom then
    clickGoToBottom()
  elseif key == goToTop then
    clickGoToTop()
  end
end


function cleanShape()
  clickRuler(false)
  clickArrow(false)
  clickRectangle(false)
  clickEllipse(false)
  clickSpline(false)
end
