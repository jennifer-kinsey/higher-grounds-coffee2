require 'rails_helper'

feature "Sessions" do
  scenario "admin can edit a product" do
    admin = create(:admin)
    sign_in admin
    product = create(:product)
    visit edit_product_path(product)
    fill_in 'product_name', with: "Edited Name"
    click_button 'Update Product'
    expect(page).to have_content("Edited Name")
  end

  scenario "renders edit page if there is an error" do
    admin = create(:admin)
    sign_in admin
    product = create(:product)
    visit edit_product_path(product)
    fill_in 'product_name', with: ""
    click_button 'Update Product'
    expect(page).to have_content("error")
  end
end
