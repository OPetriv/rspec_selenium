# frozen_string_literal: true

feature "Demo 1", elements_feature: true do
  scenario "Main first", first_1_spec: true do
    @page.main.load
    expect(@page.main).to have_title("The Internet")
    expect(@page.main.first_lvl_h).to have_text("Welcome to the-internet")
    expect(@page.main.second_lvl_h).to have_text("Available Examples")
  end

  scenario "Main second", second_1_spec: true do
    @page.dnd.load
    expect(@page.dnd.current_url).to end_with("drag_and_drop")
    @page.dnd.drag
    expect(@page.dnd.block_a).to have_text("B")
  end

  scenario "Main third", third_1_spec: true do
    @page.file_upload.load
    expect(@page.dnd.current_url).to end_with("upload")
    @page.file_upload.upload
    expect(@page.file_upload.uploaded_file).to have_text("template.txt")
  end
end
