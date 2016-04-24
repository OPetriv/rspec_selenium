require 'spec_helper'

describe 'Forgot password'  do

  it 'Forgot password' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load
end
end
