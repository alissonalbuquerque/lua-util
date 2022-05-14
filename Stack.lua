
local stack = {}

    stack.new = function(_stack)

        local Stack = setmetatable(
            {_stack},
            {__index = 
                {
                    is_empty = function(self)
                        if (#self._stack == 0) then
                            return true
                        else
                            return false
                        end
                    end,

                    push = function(self, _item)
                        table.insert(self._stack, _item)
                    end,

                    pop = function(self)
                        local pos_top = #self._stack
                        local item = self._stack[pos_top]
                        table.remove(self._stack)
                        return item
                    end,

                    top = function(self)
                        local pos_top = #self._stack
                        return self._stack[pos_top]
                    end
                }
            }
        )

        Stack._stack = _stack or {}

        return Stack
    end

return stack
