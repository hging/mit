class Software < Activity
  default_scope { unscope(:where).software.order("start DESC") }
end
