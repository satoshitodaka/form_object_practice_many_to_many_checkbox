categories = %w[肉 魚 果物 野菜 豆腐 練り物 調味料 惣菜 お菓子 日配品 パン]

categories.each do |c|
  category = Category.create(
    name: c
  )
end
