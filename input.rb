def output(&block)
  puts '---- 開始 ----'
  block.call
  puts '---- 終了 ----'
end
