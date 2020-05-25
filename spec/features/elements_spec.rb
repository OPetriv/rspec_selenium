# frozen_string_literal: true

feature "Elements" do
  # scenario "Main page" do
  #   @page.main.load
  #   expect(@page.main).to have_title("The Internet")
  #   expect(@page.main.first_lvl_h).to have_text("Welcome to the-internet")
  #   expect(@page.main.second_lvl_h).to have_text("Available Examples")
  # end

  # scenario "DnD" do
  #   @page.dnd.load
  #   expect(@page.dnd.current_url).to end_with("drag_and_drop")
  #   @page.dnd.drag
  #   expect(@page.dnd.block_a).to have_text("B")
  # end

  scenario "Context menu" do
    @page.context_menu.load
    expect(@page.context_menu.current_url).to end_with("context_menu")

    @page.context_menu.move_to_area
  end
end
