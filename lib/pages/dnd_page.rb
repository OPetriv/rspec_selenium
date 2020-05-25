# frozen_string_literal: true

class Dnd < SitePrism::Page
  set_url "/drag_and_drop"

  element :block_a,  "#column-a"
  element :block_b,  "#column-b"

  def drag
    block_a.drag_to(block_b)
  end
end