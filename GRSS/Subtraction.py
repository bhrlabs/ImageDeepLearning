__author__ = 'Bharat'

import cv2
from pylab import imread, imshow, figure, gray, show, title, subplot
from numpy import square, zeros, sqrt, array
from skimage import filters, img_as_float


def find_movement():
    #img = imread('shot1.jpg')
    #img2 = imread('shot2.jpg')
    img = imread('frame0.jpg')
    img2 = imread('frame2.jpg')
    img1 = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    img2 = cv2.cvtColor(img2,cv2.COLOR_BGR2GRAY)
    img1 = img_as_float(img1)
    img2 = img_as_float(img2)
   #print img1
    h1, w1 = img1.shape
    h2, w2 = img2.shape

    img3 = zeros((h1, w1))

    for x in range(0, h1-1):
        for y in range(0, w1-1):
            if abs(img1[x, y] - img2[x, y]) > 0.01:
                #print img1[x, y], " ", img2[x, y]
                img3[x, y] = 1

    figure()
    #subplot(1, 2, 1), imshow(img)
    #subplot(1, 2, 2), \
    imshow(img3)
    show()

if __name__ == "__main__":
    find_movement()