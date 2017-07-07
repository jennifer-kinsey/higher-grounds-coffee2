require 'rails_helper'

feature "Sessions" do

  scenario "user can add a review to a product" do
    user = create(:user)
    sign_in user
    product = create(:product)
    review = build(:review)
    visit new_product_review_path(product)
    expect(page).to have_content("New Review")
    fill_in 'review_author', with: review.author
    fill_in 'review_content', with: review.content
    click_button "Create Review"
    expect(page).to have_content("Test Author")
  end

  scenario "displays error if review author is missing" do
    user = create(:user)
    sign_in user
    product = create(:product)
    review = build(:review)
    visit new_product_review_path(product)
    expect(page).to have_content("New Review")
    fill_in 'review_content', with: review.content
    click_button "Create Review"
    expect(page).to have_content("errors")
  end
end
