local M = {}

function M.pxToRem(px)
  if type(px) ~= "number" then
    return nil, "Input must be a number"
  end
  return px / 16
end

return M
