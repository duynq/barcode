class BarcodesController < ApplicationController

  def index
    str = "1234342342"
    barcode = Barcodes.create("Code128", data: str, bar_width: 44, bar_height: 900)
    image_render = Barcodes::Renderer::Image.new(barcode)
    image_file = "app/assets/images/#{str}.png"
    image_render.render(image_file)
    @image = Base64.encode64(open(image_file).read)
  end
end
