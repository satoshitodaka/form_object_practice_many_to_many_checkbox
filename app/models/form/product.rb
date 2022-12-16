class Form::Product < Product
  REGISTRABLE_ATTRIBUTES = %i[code name price]
  REGISTRABLE_RELATIONS = [category_ids: []]

  def selectable_categories
    Category.all
  end
end