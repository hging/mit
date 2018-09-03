class Hardware < Activity
  default_scope { unscope(:where).hardware.order("start DESC") }
end
