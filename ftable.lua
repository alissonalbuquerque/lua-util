
local ftable = {}

    function ftable.array(_table)
        
        local class_array = setmetatable(
            {_table},
            {__index = 
                {
                    get_table = function(self)
                        return self._table
                    end,

                    set_table = function(self, _table)
                        self._table = _table
                    end,

                    map = function(self, _callback)

                    end,

                    filter = function(self, _callback)
                        local filter_table = {}

                        for i=1, #self._table do
                            if _callback(_table[i]) then
                                table.insert(filter_table, _table[i])
                            end
                        end

                        return filter_table
                    end
                }
            }
        )

        class_array._table = _table or nil

        return class_array
    end

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
