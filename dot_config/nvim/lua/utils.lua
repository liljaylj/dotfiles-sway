local M = {}

function M.is_256_colors()
  local result = vim.fn.system({'tput', 'colors'})
  return 256 <= tonumber(result)
end

function M.merge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                M.merge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

return M
