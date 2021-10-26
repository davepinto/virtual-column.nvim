local M = {}

M.ternary = function(cond, T, F)
    if cond then return T else return F end
end

M.ternily = function(obj, F)
    if obj == nil then return F else return obj end
end

return M
