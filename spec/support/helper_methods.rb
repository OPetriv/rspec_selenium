module HelperMethods
  def status images
    RestClient.get "#{ENV['SERVER']}/broken_images"

    images.each do |img|
      RestClient.get img[:src] do |response, request, result|
        expect(response.code).to eq 200
      end
    end
  end

end