{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 import numpy as np\
import pandas as pd\
\
\
reqid=1\
cdno=hex2dec('83')\
inst=2\
att=1\
ser=hex2dec('10');\
dataon=[01, 00, 0, 0];\
dataoff=[02, 00, 0, 0];\
dataservoon=[89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataon];\
dataservooff=[89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataoff];\
\
\
\
#servo on or off\
def servo_motor(a):\
    reqid=1\
    cdno=int('83')\
    inst=2\
    att=1\
    ser=int('10')\
    dataon = np.array([1, 0, 0, 0])\
    dataoff = np.array([2, 0, 0, 0])\
    dataservoon = np.hstack((89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataon))\
    dataservooff = np.hstack((89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataoff))\
    if a == True:\
        return dataservoon\
    else:\
        return dataservooff\
    \
#type of input givent to the code is 'a' which is a boolean varaible\
\
\
\
import socket\
import time\
\
\
UDP_IP_ADDRESS = '192.168.255.1'\
UDP_PORT_NO = 10040\
Message = "Hello, Server"\
\
\
#to create the socket through which we will be sending our UDP message to the server\
clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)\
\
#to write the code that will send our UDP message (turn on)\
clientSock.sendto(servo_motor(1), (UDP_IP_ADDRESS, UDP_PORT_NO))\
\
\
time.sleep(5) # number of seconds\
\
#to write the code that will send our UDP message (turn off)\
clientSock.sendto(servo_motor(0), (UDP_IP_ADDRESS, UDP_PORT_NO))\
\
\
}