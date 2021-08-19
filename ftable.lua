
local ftable = {}

    function ftable.map(_table, _callback)

        local map_table = {}

        for i=1, #_table do
            if _table[i] ~= nil then
                table.insert(map_table, _callback(_table[i]))
            end
        end

        return map_table
    end

    function ftable.filter(_table, _callback)
        
        local filter_table = {}

        for i=1, #_table do
            if _callback(_table[i]) then
                table.insert(filter_table, _table[i])
            end
        end

        return filter_table
    end

    

return ftable
