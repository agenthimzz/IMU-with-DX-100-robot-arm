class RobotDX100():
    import socket
    import time



    def __init__(self, ip = '192.168.0.151', port = 10040):
        self.ip = ip
        self.port = port
        self.var = []
        #variables and the order for sending variables

        self.tosend1 = [89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0]
        #reqid = 01,02,03
        self.tosend2 = [0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57]
        #cdno = int('83')
        self.tosend3 = [0]
        #inst = 2
        self.tosend4 = [0]
        #att = [1]
        #ser = int('10')
        self.tosend5 = [0, 0]
        #dataon = [1,0,0,0]
        def connect(self):
        import socket
        #to create the socket through which we will be sending our UDP message to the server
        clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    def servo(self, on = True):
        #to write the code that will send our UDP message (turn on)
        reqid = [1]
        cdno = [83]
        inst = [2]
        att = [1]
        ser = [10]
        dataon = [1, 0, 0, 0]
        dataoff = [2, 0, 0, 0]

        self.var = []
        self.var.extend(self.tosend1)
        self.var.extend(reqid)
        self.var.extend(self.tosend2)
        self.var.extend(cdno)
        self.var.extend(self.tosend3)
        self.var.extend(inst)
        self.var.extend(self.tosend4)
        self.var.extend(att)
        self.var.extend(ser)
        self.var.extend(self.tosend5)
        if on == True:
        self.var.extend(dataon)
        else:
        self.var.extend(dataoff)
        return self.var


r = RobotDX100();



import socket
import time
UDP_IP_ADDRESS = r.ip
UDP_PORT_NO = r.port


#to create the socket through which we will be sending our UDP message to the server
clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

#make x = dataservoon in bytes.
x = [i.to_bytes(1, 'little') for i in r.servo(True)]

'''
byte = x[0]
for i in range(len(x)-1):
byte = byte + x[i+1]



i = len(x)-1
while i > 0:
byte = byte + x[i]
i -= 1


byte = byte + x[0]
'''  


#to write each element (One-by-one) of the list in our UDP message (turn on)
(clientSock.sendto( i , (r.ip, r.port)) for i in x)

#r.var = 0


time.sleep(5)# number of seconds


#make x = dataservooff in bytes.
x = [i.to_bytes(1, 'little') for i in r.servo(False)]


#to write each element (One-by-one) of the list in our UDP message (turn on)
(clientSock.sendto( i , (r.ip, r.port)) for i in x)

type(x[1])
