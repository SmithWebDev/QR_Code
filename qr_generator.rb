require 'rqrcode'

url = ARGV[0]

color = ARGV[1] ? "##{ARGV[1]}" : 'black'
fill = ARGV[2] ? "##{ARGV[2]}" : 'white'
size = ARGV[3] ? "#{ARGV[3]}" : 300

qr_code = RQRCode::QRCode.new(url)

png = qr_code.as_png(
  color: color,
  fill: fill,
  size: size
)

IO.binwrite("website.png", png.to_s)
