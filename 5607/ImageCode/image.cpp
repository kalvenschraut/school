#include "image.h"
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <float.h>


/**
 * Image
 **/
Image::Image (int width_, int height_){

    assert(width_ > 0);
    assert(height_ > 0);

    width           = width_;
    height          = height_;
    num_pixels      = width * height;
    sampling_method = IMAGE_SAMPLING_POINT;
    
    data.raw = new uint8_t[num_pixels*4];
	int b = 0; //which byte to write to
	for (int j = 0; j < height; j++){
		for (int i = 0; i < width; i++){
			data.raw[b++] = 0;
			data.raw[b++] = 0;
			data.raw[b++] = 0;
			data.raw[b++] = 0;
		}
	}

    assert(data.raw != NULL);
}

Image::Image (const Image& src){
	
	width           = src.width;
    height          = src.height;
    num_pixels      = width * height;
    sampling_method = IMAGE_SAMPLING_POINT;
    
    data.raw = new uint8_t[num_pixels*4];
    
    //memcpy(data.raw, src.data.raw, num_pixels);
    *data.raw = *src.data.raw;
}

Image::Image (char* fname){

	int numComponents; //(e.g., Y, YA, RGB, or RGBA)
	data.raw = stbi_load(fname, &width, &height, &numComponents, 4);
	
	if (data.raw == NULL){
		printf("Error loading image: %s", fname);
		exit(-1);
	}
	

	num_pixels = width * height;
	sampling_method = IMAGE_SAMPLING_POINT;
	
}

Image::~Image (){
    delete data.raw;
    data.raw = NULL;
}

void Image::Write(char* fname){
	
	int lastc = strlen(fname);

	switch (fname[lastc-1]){
	   case 'g': //jpeg (or jpg) or png
	     if (fname[lastc-2] == 'p' || fname[lastc-2] == 'e') //jpeg or jpg
	        stbi_write_jpg(fname, width, height, 4, data.raw, 95);  //95% jpeg quality
	     else //png
	        stbi_write_png(fname, width, height, 4, data.raw, width*4);
	     break;
	   case 'a': //tga (targa)
	     stbi_write_tga(fname, width, height, 4, data.raw);
	     break;
	   case 'p': //bmp
	   default:
	     stbi_write_bmp(fname, width, height, 4, data.raw);
	}
}

void Image::AddNoise (double factor)
{
	int x, y;
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			Pixel p = GetPixel(x, y);
			Pixel noise = PixelRandom()*factor;
			// can't use pixel addition due to clamping of values at 255 so colors closer to 255 don't change as much
			float r = (float)noise.r + (float)p.r;
			float g = (float)noise.g + (float)p.g;
			float b = (float)noise.b + (float)p.b;
			float a = (float)noise.a + (float)p.a;
			GetPixel(x, y).Set(r, g, b, a);
		}
	}
}

void Image::Brighten (double factor)
{
	int x,y;
	for (x = 0 ; x < Width() ; x++)
	{
		for (y = 0 ; y < Height() ; y++)
		{
			Pixel p = GetPixel(x, y);
			Pixel scaled_p = p*factor;
			GetPixel(x,y) = scaled_p;
		}
	}
}


void Image::ChangeContrast (double factor)
{	
	int x, y;
	int aveLum = 0;
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			aveLum += (int) GetPixel(x, y).Luminance();
		}
	}
	aveLum /= Height()*Width();
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			Pixel p = GetPixel(x, y);
			Pixel gp = *(new Pixel(aveLum, aveLum, aveLum, p.a));
			GetPixel(x, y) = PixelLerp(gp, p, factor);
		}
	}
}


void Image::ChangeSaturation(double factor)
{
	int x, y;
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			Pixel p = GetPixel(x, y);
			Component lum = p.Luminance();
			Pixel gp = *(new Pixel(lum, lum, lum, p.a));
			GetPixel(x, y) = PixelLerp(gp, p, factor);
		}
	}
}


Image* Image::Crop(int x, int y, int w, int h)
{
	int u, v;
	Image* cropImage = new Image(w, h);

	for (u = x; (u - x) < w; u++) {
		for (v = y; (v - y) < h; v++) {
			Pixel p = GetPixel(u, v);
			cropImage->SetPixel(u - x, v - y, p);
		}
	}
	return cropImage;
}


void Image::ExtractChannel(int channel)
{
	int x, y;
	int map[3] = { 1, 1, 1 };
	if (channel == 1) {
		map[1] = 0;
		map[2] = 0;
	} else if (channel == 2) {
		map[0] = 0;
		map[2] = 0;
	} else if (channel == 3) {
		map[0] = 0;
		map[1] = 0;
	}
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			Pixel p = GetPixel(x, y);
			p.Set(p.r*map[0], p.g*map[1], p.b*map[2], p.a);
			GetPixel(x, y) = p;
		}
	}
}


void Image::Quantize (int nbits)
{
	int x, y;

	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			Pixel p = GetPixel(x, y);
			GetPixel(x, y) = PixelQuant(p, nbits);
		}
	}
	
}

void Image::RandomDither (int nbits)
{
	AddNoise(.5);
	Quantize(nbits);
}


static int Bayer4[4][4] =
{
    {15,  7, 13,  5},
    { 3, 11,  1,  9},
    {12,  4, 14,  6},
    { 0,  8,  2, 10}
};


void Image::OrderedDither(int nbits)
{
	int x, y;
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			int i = x % 4;
			int j = y % 4;
			Pixel p = GetPixel(x, y) + Bayer4[i][j];
			GetPixel(x, y) = PixelQuant(p, nbits);
		}
	}
}

/* Error-diffusion parameters */
const double
    ALPHA = 7.0 / 16.0,
    BETA  = 3.0 / 16.0,
    GAMMA = 5.0 / 16.0,
    DELTA = 1.0 / 16.0;

void Image::FloydSteinbergDither(int nbits)
{
	int x, y;

	for (y = 0; y < Height(); y++) {
		for (x = 0; x < Width(); x++) {
			Pixel p = GetPixel(x, y);
			Pixel qp = PixelQuant(p, nbits);
			Component rError = p.r - qp.r;
			Component gError = p.g - qp.g;
			Component bError = p.b - qp.b;
			int xFactorPos = 1;
			int xFactorNeg = 1;
			int yFactor = 1;
			if (x == 0) xFactorNeg = 0;
			if (x == Width() - 1) xFactorPos = 0;
			if (y == Height() - 1) yFactor = 0;
			Pixel temp = GetPixel(x + xFactorPos, y);
			GetPixel(x + xFactorPos, y).SetClamp(temp.r + rError * ALPHA, temp.g + gError * ALPHA, temp.b + bError * ALPHA );
			Pixel temp1 = GetPixel(x - xFactorNeg, y + yFactor);
			GetPixel(x - xFactorNeg, y + yFactor).SetClamp(temp1.r + rError * BETA, temp1.g + gError * BETA, temp1.b + bError * BETA);
			Pixel temp2 = GetPixel(x, y + yFactor);
			GetPixel(x, y + yFactor).SetClamp(temp2.r + rError * GAMMA, temp2.g + gError * GAMMA, temp2.b + bError * GAMMA);
			Pixel temp3 = GetPixel(x + xFactorPos, y + yFactor);
			GetPixel(x + xFactorPos, y + yFactor).SetClamp(temp3.r + rError * DELTA, temp3.g + gError * DELTA, temp3.b + bError * DELTA);
		}
	}
}

void Image::Blur(int n)
{
	int i, j, x, y;
	int half = n / 2;
	Image *blurImage = new Image(Width(), Height());
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			double red = 0;
			double green = 0;
			double blue = 0;
			for (i = x - half; i <= x + half; i++) {
				for (j = y - half; j <= y + half; j++) {
					int calcI = i; 
					int calcJ = j;
					if (i < 0) calcI = 0;
					else if (i > Width() - 1) calcI = Width() - 1;
					if (j < 0) calcJ = 0;
					else if (j > Height() - 1) calcJ = Height() - 1;
					
					Pixel f = GetPixel(calcI, calcJ);
					int power = -(pow(x - i, 2) + pow(y - j, 2));
					double gausV = pow(2.7182818, (power / 2));
					gausV *= 1 / (2 * 3.14125);
					red += f.r*gausV;
					green += f.g*gausV;
					blue += f.b*gausV;
				}
			}
			blurImage->GetPixel(x, y).SetClamp(red, green, blue);
		}
	}
	for (y = 0; y < Height(); y++) {
		for (x = 0; x < Width(); x++) {
			GetPixel(x, y) = blurImage->GetPixel(x, y);
		}
	}
}

void Image::Sharpen(int n)
{
	int i, j, x, y;
	int half = n / 2;
	Image *sharpenImage = new Image(Width(), Height());
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			double red = 0;
			double green = 0;
			double blue = 0;
			for (i = x - half; i <= x + half; i++) {
				for (j = y - half; j <= y + half; j++) {
					int calcI = i; 
					int calcJ = j;
					if (i < 0) calcI = 0;
					else if (i > Width() - 1) calcI = Width() - 1;
					if (j < 0) calcJ = 0;
					else if (j > Height() - 1) calcJ = Height() - 1;
					
					Pixel f = GetPixel(calcI, calcJ);
					int power = -(pow(x - i, 2) + pow(y - j, 2));
					double gausV = pow(2.7182818, (power / 2));
					gausV *= 1 / (2 * 3.14125);
					red += f.r*gausV;
					green += f.g*gausV;
					blue += f.b*gausV;
				}
			}
			Pixel p = *(new Pixel(0, 0, 0));
			p.SetClamp(red, green, blue);
			sharpenImage->GetPixel(x, y) = PixelLerp(p, GetPixel(x, y), 2);
		}
	}
	for (y = 0; y < Height(); y++) {
		for (x = 0; x < Width(); x++) {
			GetPixel(x, y) = sharpenImage->GetPixel(x, y);
		}
	}
}

void Image::EdgeDetect()
{
	int i, j, x, y;
	double filter[3][3] = { {-1, -1, -1}, {-1, 8, -1}, {-1, -1, -1} };
	Image *edgeImage = new Image(Width(), Height());
	for (x = 0; x < Width(); x++) {
		for (y = 0; y < Height(); y++) {
			double red = 0;
			double green = 0;
			double blue = 0;
			for (i = -1; i <= 1; i++) {
				for (j = -1; j <= 1; j++) {
					int calcX = x + i; 
					int calcY = y + j;
					if (calcX < 0) calcX = 0;
					else if (calcX > Width() - 1) calcX = Width() - 1;
					if (calcY < 0) calcY = 0;
					else if (calcY > Height() - 1) calcY = Height() - 1;
					
					Pixel f = GetPixel(calcX, calcY);
					red += f.r*filter[i + 1][j + 1];
					green += f.g*filter[i + 1][j + 1];
					blue += f.b*filter[i + 1][j + 1];
				}
			}
			red = red > 0 ? 255 : 0;
			blue = blue > 0 ? 255 : 0;
			green = green > 0 ? 255 : 0;
			edgeImage->GetPixel(x, y).Set(red, green, blue);
		}
	}
	for (y = 0; y < Height(); y++) {
		for (x = 0; x < Width(); x++) {
			GetPixel(x, y) = edgeImage->GetPixel(x, y);
		}
	}
}

Image* Image::Scale(double sx, double sy)
{
	int x, y;
	int newHeight = sy*Height();
	int newWidth = sx*Width();
	Image *scaledImage = new Image(newWidth, newHeight);
	for (y = 0; y < newHeight; y++) {
		for (x = 0; x < newWidth; x++) {
			int u = x / sx;
			int v = y / sy;
			scaledImage->GetPixel(x, y) = Sample(u, v);
		}
	}
	return scaledImage;
}

Image* Image::Rotate(double angle)
{
	int x, y;
	double radians = angle * 3.14159265 / 180.0;
	/* calc boundary box */
	int bbX[4];
	int bbY[4];
	bbX[0] = (Width() - 1)*cos(radians) - (Height() - 1)*(sin(radians));
	bbX[1] = /* 0 */ -(Height() - 1)*(sin(radians));
	bbX[2] = 0;
	bbX[3] = (Width() - 1)*cos(radians); // -  0
	bbY[0] = (Width() - 1)*sin(radians) + (Height() - 1)*(cos(radians));
	bbY[1] = /* 0 + */ (Height() - 1)*(cos(radians));
	bbY[2] = 0;
	bbY[3] = (Width() - 1)*sin(radians); // +  0
	int minX = bbX[0];
	int maxX = bbX[0];
	int minY = bbY[0];
	int maxY = bbY[0];
	for (int i = 1; i < 4; i++) {
		if (bbX[i] < minX) minX = bbX[i];
		else if (bbX[i] > maxX) maxX = bbX[i];
		if (bbY[i] < minY) minY = bbY[i];
		else if (bbY[i] > maxY) maxY = bbY[i];
	}
	// add one to account for 0 indexing
	int height = maxY - minY + 1;
	int width = maxX - minX + 1; 
	int offsetX = 0;
	int offsetY = 0;
	if (minX < 0) offsetX = minX*-1;
	if (minY < 0) offsetY = minY*-1;
	Image *rotatedImage = new Image(width, height);
	for (y = minY; y <= maxY; y++) {
		for (x = minX; x <= maxX; x++) {
			Pixel p = *(new Pixel(0, 0, 0));
			int u = x*cos(-radians) - y*sin(-radians);
			int v = x*sin(-radians) + y*cos(-radians);
			if (u > 0 && u < Width() - 1 && v > 0 && v < Height() - 1) {
				p = Sample(u, v);
			}
			rotatedImage->GetPixel(x + offsetX, y + offsetY) = p;
		}
	}
	return rotatedImage;
}

void Image::Fun()
{
	int x, y;
	Image *swirlImage = new Image(Width(), Height());
	int centerY = Height() / 2;
	int centerX = Width() / 2;
	int bradius = sqrt(pow(Width() - 1 - centerX, 2) + pow(Height() - 1 - centerY, 2));
	int bStrength = 1;
	for (y = 0; y < Height(); y++) {
		double dy = y - centerY;
		for (x = 0; x < Width(); x++) {
			double dx = x - centerX;
			double distance = sqrt(pow(dx, 2) + pow(dy, 2));
			double r = distance / bradius;
			double a = atan(dy/dx);
			double rn = pow(r, bStrength)*distance;
			int u = rn*cos(a) + centerX;
			int v = rn*sin(a) + centerY;
			if ( u < Width() && u > 0 && v < Height() && v > 0) swirlImage->GetPixel(u, v) = Sample(x, y);
		}
	}
	for (y = 0; y < Height(); y++) {
		for (x = 0; x < Width(); x++) {
			GetPixel(x, y) = swirlImage->GetPixel(x, y);
		}
	}

}

/**
 * Image Sample
 **/
void Image::SetSamplingMethod(int method)
{
    assert((method >= 0) && (method < IMAGE_N_SAMPLING_METHODS));
    sampling_method = method;
}


Pixel Image::Sample (double u, double v){
	int i, j;
	double red = 0;
	double green = 0;
	double blue = 0;
	int r = 5;
	int roundU = floor(u + .5);
	int roundV = floor(v + .5);
	Pixel p = GetPixel(roundU, roundV);
	if (sampling_method == IMAGE_SAMPLING_BILINEAR) {
		for (i = -r; i <= r; i++) {
			for (j = -r; j <= r; j++) {
				double x = i/r;
				double y = j/r;
				if (x >= 1 || x <= -1) continue;
				if (y >= 1 || y <= -1) continue;
				int calcU = roundU + i;
				int calcV = roundV + j;
				if (calcU < 0) calcU = 0;
				if (calcU > Width() - 1) calcU = Width() - 1;
				if (calcV < 0) calcV = 0;
				if (calcV > Height() - 1) calcV = Height() - 1;
				Pixel sp = GetPixel(calcU, calcV);
				if (x < 0) x *= -1;
				if (y < 0) y *= -1;
				double f = (1 - x) / r;
				f *= (1 - y) / r;
				red += sp.r*f;
				green += sp.g*f;
				blue += sp.b*f;
			}
		}
		p.SetClamp(red, green, blue);
	} else if (sampling_method == IMAGE_SAMPLING_GAUSSIAN) {
		double red = 0;
		double green = 0;
		double blue = 0;
		for (i = -r; i <=  r; i++) {
			for (j = -r; j <= r; j++) {
				int calcU = roundU + i; 
				int calcV = roundV + j;
				if (calcU < 0) calcU = 0;
				else if (calcU > Width() - 1) calcU = Width() - 1;
				if (calcV < 0) calcV = 0;
				else if (calcV > Height() - 1) calcV = Height() - 1;
				
				Pixel f = GetPixel(calcU, calcV);
				int power = -(pow(i, 2) + pow(j, 2));
				double gausV = pow(2.7182818, (power / 2));
				gausV *= 1 / (2 * 3.14125);
				red += f.r*gausV;
				green += f.g*gausV;
				blue += f.b*gausV;
			}
		}
		p.SetClamp(red, green, blue);
	}
	return p;
}