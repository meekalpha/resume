function BulletList(el)
  return {
    pandoc.RawBlock('latex', '{\\small'),
    pandoc.BulletList(el.content),
    pandoc.RawBlock('latex', '}')
  }
end

function OrderedList(el)
  return {
    pandoc.RawBlock('latex', '{\\small'),
    pandoc.OrderedList(el.content, el.style, el.start, el.delimiter),
    pandoc.RawBlock('latex', '}')
  }
end