require 'spec_helper'

describe 'Floating menu'  do

  it 'Floating menu' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load
end
end
