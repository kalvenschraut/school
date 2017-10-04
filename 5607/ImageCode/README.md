[Image.cpp](https://github.com/kalvenschraut/school/blob/master/5607/ImageCode/image.cpp)

The hardest part of this assignment was figuring out how to correctly code convolutions. I had a lot of issues running into 
having the wrong types for a few variables so unwanted rounding was occuring. I still don't think I have some of my 
convolutions 100% right due to brightness seeming to increase after the convolution. I struggled at first with rotation, but after I figured out I needed to create a bounding box for the image, I was able to quickly finish rotation. Overall I like this
assignment because of the struggles I had early on since I was able to learn so much about image processing.

Artistic images at the end.

Picture Examples:

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/millcityBrighten.jpg)
command line: image -input millcity.jpg -brightness 1.5 -output millcityBrighten.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashNoise.jpg)
command line: image -input splash.jpg -noise .5 -output splashNoise.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashContrast.jpg)
command line: image -input splash.jpg -contrast 1.5 -output splashContrast.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashSaturation.jpg)
command line: image -input splash.jpg -saturation 0 -output splashSaturation.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashCrop.jpg)

command line: image -input splash.jpg -crop 300 300 600 300 -output splashCrop.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunRed.jpg)
command line: image -input sun.jpg -extractChannel 1 -output sunRed.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunGreen.jpg)
command line: image -input sun.jpg -extractChannel 2 -output sunGreen.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunBlue.jpg)
command line: image -input sun.jpg -extractChannel 3 -output sunBlue.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashQuantize.jpg)
command line: image -input splash.jpg -quantize 2 -output splashQuantize.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashRandomDither.jpg)
command line: image -input splash.jpg -randomDither 2 -output splashRandomDither.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashOrderedDither.jpg)
command line: image -input splash.jpg -orderedDither 2 -output splashOrderedDither.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashFloydSteinbergDither.jpg)
command line: image -input splash.jpg -FloydSteinbergDither 2 -output splashFloydSteinbergDither.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/millcityBlur.jpg)
command line: image -input millcity.jpg -blur 5 -output millcityBlur.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/millcitySharpen.jpg)
command line: image -input millcity.jpg -sharpen 5 -output millcitySharpen.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/millcityEdgeDetect.jpg)
command line: image -input millcity.jpg -edgeDetect -output millcityEdgeDetect.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunPointScale.jpg)
command line: image -input sun.jpg -scale 2.0 1.5 -output sunPointScale.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunTentScale.jpg)
command line: image -input sun.jpg -sampling 1 -scale 2.0 1.5 -output sunTentScale.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunGaussianScale.jpg)
command line: image -input sun.jpg -sampling 2 -scale 2.0 1.5 -output sunGaussianScale.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/hopkinsRotate.jpg)
command line: image -input sun.jpg -rotate 30 -output hopkinsRotate.jpg

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashFun.jpg)
command line: image -input splash.jpg -fun -output splashFun.jpg

Cool/artistic images.


![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/sunzoomFloydSteinbergDither%20-%20Copy.png)

A Floyd Steignberg dither not working correctly as I had a few errors in my code, but I thought the image was interesting.

![Alt text](https://raw.githubusercontent.com/kalvenschraut/school/master/5607/ImageCode/sample/splashCool.jpg)
 
 I don't remember what this came from, I think a dither or quantize gone bad. 

