# README

# InkRadiusMeasurement

*Last Updated Dec. 9. 2022*

## Introduction

Hello :) My name is Yusong Deng; I am a Mechanical Engineering Student at Columbia University. You can call me Sebastian. I am working on this program as part of a bigger project with Professor A. Narayanaswamy of the Department of Mechanical Engineering at Columbia SEAS.

We constructed this program to solve a measurement problem when measuring the spreading of an ink firm on top of the water substrate. We hope to achieve the measurement at a precision level as high as possible without interfering with the motion of the ink firm. 

Several challenges are there in this problem.

1. **The color of the ink is unknown.** Since we have seen the phenomenon across various colors of writing ink, we hope the program is arbitrary in measuring different ink colors. For example, we shouldn’t worry if the ink color is switched from blue to red.
2. **The color of writing ink will change as it spreads.** For example, when a blue ink droplet is placed on the water substrate at the beginning, since the color particle is highly concentrated, the color is dark. For someone like me who is colorweaked, it is almost black at the beginning. However, as the ink spreads out, the particles will also spread out, which leads to lightening in color. For specific colors like yellow, green, and even sky blue, I feel the final color is almost transparent. **********************************************This causes difficulty in defining a color range for image processing to detect a clear boundary.**********************************************

We managed to get an executable program to take some measurements. The program is still in the process of improvement. And the experiment itself is also in the process of improvement.

## Usage

For a detailed illustration of how to use the program, please see the video [here.](http://yusongdeng.com/ink_radius_measurement/) ([http://yusongdeng.com/ink_radius_measurement/](http://yusongdeng.com/ink_radius_measurement/))

## Improvements

We are still trying to improve the measurement accuracy and trying make the program easier to use. Huge gratitude and Appreciation for the great constructions from Professor Narayanaswamy. We are going to continuously work on improvements, for example:

- ****Include other curve fitting methods.**** Our current circle fitting method is based on the least square fitting method. We are unsure if other circle fitting methods are based on edge points (where the color gradient is the largest), such as the fitting based on ink firm area or the ink firm boundary length.
- **************************************************Improving the workflow.************************************************** In our current program, the users have to manually determine the color range for a range of frame numbers of the video. For example, you have to specify the color range of the ink for frame range 1-100 using the color range of the ink at Frame #50. This typically leads to a problem that the radius of the ink gets overextimated at the begining of such range and underestimated at the ending of such range. Therefore, it should significantly improve our work flow efficiency and measurement accuracy if we are able to automatically determine the boundary in each frame. This might also involve some improvement in the experiment setup.

## Acknowledgment

Special thanks to Caidan Speth-McCrary, and Jacob Shelver. We discussed some of the features of this program. Their inspiring insights into this mission starts off teh program. Caidan constructed an original version of code that uses OpenCV and python. Though the details of our final approach is not following Caidan’s original code, Caidan’s code helped me realized many hidden problems of this mission. Thanks again!

We will keep you updated! Happy holiday!