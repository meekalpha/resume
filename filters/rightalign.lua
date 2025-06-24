function Header(el)
  if el.level == 2 or el.level == 3 then
    local text = pandoc.utils.stringify(el.content)
    local left, right = string.match(text, "^(.-)%s*{(.-)}%s*$")
    if left and right and FORMAT:match("latex") then
      -- Replace header content with a single raw LaTeX inline
      el.content = { pandoc.RawInline("latex", "\\leftright{" .. left .. "}{" .. right .. "}") }
      return el
    end
  end
  return el
end