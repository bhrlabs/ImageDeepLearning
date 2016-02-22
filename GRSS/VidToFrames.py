__author__ = 'Bharat'

import cv2


def extract():
    video1 = cv2.VideoCapture('van.mp4')
    success, image = video1.read()
    print success
    count = 0;

    while success:
      success, image = video1.read()
      cv2.imwrite("frame%d.jpg" % count, image)
      if cv2.waitKey(10) == 27:
          break
      count += 1


if __name__ == "__main__":
    extract()