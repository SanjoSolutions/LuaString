local function startsWith(string, startingWithString)
  return string.sub(string, 1, string.len(startingWithString)) == startingWithString
end

local function join(delimiter, strings)
  local result = strings[1] or ''
  for index = 2, #strings do
    local string = strings[index]
    result = result .. delimiter .. string
  end
  return result
end

String = {
  startsWith = startsWith,
  join = join
}
