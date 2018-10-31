// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String [5];
PImage[] arrayOfPImages = new PImage [5];

void setup() {
  size(600,600);
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfImageFilenames[i] = "emoji"+i+".png";
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
  }
}

void draw() {
  int x = int(random(0, 20));
  int y = int(random(0, 20));
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
  image(arrayOfPImages[int(random(4))], x*30, y*30, 50, 50);
  }
}
