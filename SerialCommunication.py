import serial
ser = serial.Serial('/dev/cu.SLAB_USBtoUART',57600,timeout = 1)
#a = '-2;-2a'
final = ('')
ser.write(a.encode())
while 1:
    data = ('')
    data = ser.read(59)
    temp=data.decode()
    i = 0
    while temp[i] != 'x':
        i+=1
    i+=1
    while temp[i] != 'x':
        final += temp[i]
        i+=1
    pos1,pos2,v1,v2,d1,d2 = final.split(',')
    print('pos1 = ' + pos1+' pos2 = '+pos2+' v1 = '+v1+' v2 = '+v2+' d1 = '+d1+' d2 = '+d2)
    temp = []
    final = ('')
