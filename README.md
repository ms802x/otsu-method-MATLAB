
"# otsu-method-MATLAB"

**The algorithm returns a single intensity threshold that separate pixels into two classes, foreground, and
background.**

## Background

    There are many methods and algorithm that can be used to segment an image such as balanced
histogram thresholding, maximum entropy method, Otsu's method, and many other powerful
methods. Otsu’s method is a simple and powerful method that iterate through gray-scale
images to find a threshold that can separate the background and the foreground from the image.

## How does Otsu’s method work ?

    Otsu’s method tries to separate the foreground from the background in gray scale images. Implementing the method
requires the histogram of the image only. The method takes the distribution of each pixel in the histogram and tries to
categories them as a pixels falling in the background or in the foreground. The process of categorizing the pixels is
iterative and it calculate the variance each time it iterates until we reach a threshold where the within class variance is
minimum (Variance between background and foreground).


## References:

https://youtu.be/mnmjZOLjoBA
additional helpful material:
http://www.labbookpages.co.uk/software/imgProc/otsuThreshold.html
