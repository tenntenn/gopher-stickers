#/bin/sh
# Convert images so that they can be used as Telegram stickers.
# Telegram requires an image file to fit into a 512x512 square (one of the sides
# must be 512px and the other 512px or less).

set -e

mkdir -p telegram
for img in $(ls png); do
	# gm(1) is provided by GraphicsMagick.
	# If using ImageMagick, replace it with convert(1).
	gm convert -resize 512x512 png/$img telegram/$img
done
