require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

    test "get new category form and create_category" do
      get new_category_path
      assert_template 'categories/new'
      assert_difference 'category_count', 1 do
        post categories_path, params: {category:{name: "sports"}}
      end
       




end    