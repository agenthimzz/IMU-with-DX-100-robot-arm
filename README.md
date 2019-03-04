# IMU with DX 100 robot arm

we have a Yasakawa robot arm in college which is controlled by Motoman DX100 controller
this controller works using its teach pendant and can be programmed to perform required operations based on the UDP commands sent from a PC on the local network.
UDP means User Dataframe Protocol

this protocol means that there is a fixed size of buffer available in the controller which is of around 1500 bytes.. once you send a command this buffer is filled and then commands on the buffer start to execute. this leads to the servo turning on, arm moving, arm picking up object.. etc.

hence you have to give time delay after each time you upload the code to the DX100
(please refer matlab code)

The end goal of this project is to perform interpolation in 3d space using a hand held IMU and hopefully perform Signature analysis

use GANs to generate close but approximately similar signatures.

use Recurrent Neural Network to analyse and predict the handwriting of person from small sample handwriting.


Also please contribute if possible for conversion of Matlab code to python.. most of the code is ready just the UDP communication is remaining.

