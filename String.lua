local addOnName = 'String'
local version = '2.0.1'

if _G.Library then
  if not Library.isRegistered(addOnName, version) then
    --- @class String
    local String = {}

    function String.startsWith(string, startingWithString)
      return string.sub(string, 1, string.len(startingWithString)) == startingWithString
    end

    function String.join(delimiter, strings)
      local result = strings[1] or ''
      for index = 2, #strings do
        local string = strings[index]
        result = result .. delimiter .. string
      end
      return result
    end

    function String.split(delimiter, string)
      if _G.strsplittable then
        return strsplittable(delimiter, string)
      else
        return { strsplit(delimiter, string) }
      end
    end

    Library.register(addOnName, version, String)
  end
else
  error(addOnName .. ' requires Library. It seems absent.')
end
