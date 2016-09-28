module BarcodesHelper
  def base64_image image
    image_bagde = <<-HTML
      <img src="data:image/jpeg;base64,#{image}" class="barcode">
    HTML
    image_bagde.html_safe
  end
end
