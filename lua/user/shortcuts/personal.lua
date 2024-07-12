local fmt = require('utils.fmt')
vim.api.nvim_create_user_command('LuaFormat', fmt.luaFormat, {})

local converters = require('utils.converters')

vim.api.nvim_create_user_command('PxToRem', function(opts)
  -- Get the px value from command arguments or prompt the user
  local px = tonumber(opts.args)
  if not px then
    px = tonumber(vim.fn.input('Enter px value: '))
  end

  -- Check if we have a valid number
  if not px then
    print('Invalid input. Please enter a number.')
    return
  end

  -- Convert px to rem using our imported function
  local rem, error = converters.pxToRem(px)

  if error then
    print(error)
    return
  end

  -- Print the result
  print(string.format('%dpx is equal to %.2frem', px, rem))
end, {
  nargs = '?',
  desc = 'Convert px to rem',
})
