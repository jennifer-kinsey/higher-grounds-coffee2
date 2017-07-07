require 'rails_helper'

feature "Sessions" do

  scenario "admin can navigate to add a product page" do
    admin = create(:admin)
    sign_in admin
    visit root_path(admin)
    click_on "Products"
    expect(page).to have_content("Coffee Beans")
    click_button "New Product"
    expect(page).to have_content("New Product")

  end

  scenario "displays error if product name is missing" do
    admin = create(:admin)
    sign_in admin
    product = build(:product)
    visit new_product_path(admin)
    fill_in 'product_description', with: product.description
    fill_in 'product_price', with: product.price
    fill_in 'product_image', with: product.image
    fill_in 'product_origin', with: product.origin
    fill_in 'product_variety', with: product.variety
    click_button 'Create Product'
    expect(page).to have_content("Name can't be blank")
  end

  scenario "admin can add a product" do
    admin = create(:admin)
    sign_in admin
    product = build(:product)
    visit new_product_path(admin)
    fill_in 'product_name', with: product.name
    fill_in 'product_description', with: product.description
    fill_in 'product_price', with: product.price
    fill_in 'product_image', with: product.image
    fill_in 'product_origin', with: product.origin
    fill_in 'product_variety', with: product.variety
    click_button 'Create Product'
    expect(page).to have_content("Test Name")
  end

end
