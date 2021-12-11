
local ftable = {}

    ftable.filter = function(_array, _callback)

        local new_array = {}
        local value_temp = nil

        for index, value in ipairs(_array) do
            
            if _callback(value) then
                -- criar copias dos dados recebidos
                -- value_temp = 
                -- table.insert(new_array, value_temp)
            end

        end
        
        return new_array
    end

return ftable
