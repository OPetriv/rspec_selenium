# frozen_string_literal: true

module HelperMethods
  def status(images)
    RestClient.get "#{ENV['SERVER']}/broken_images"

    images.each do |img|
      RestClient.get img[:src] do |response, _request, _result|
        expect(response.code).to eq 200
      end
    end
  end

  def removefolder
    files = Dir.pwd + "/downloadtest"
    expect(files.empty?).to eql false
    expect(File.size(files.first)).to be > 0
    FileUtils.remove_dir(files)
  end

  def wait(number_of_times)
    count = 0; item_of_interest = nil
    until !item_of_interest.nil? || count == number_of_times
      item_of_interest = yield
      sleep 10
      count += 1
    end
  end
end
