    clc;
clear all;
% Defining protocol data for Servo turn on/off
    reqid=1;
    cdno=hex2dec('83');
    inst=2;
    att=1;
    ser=hex2dec('10');
    dataon=[01, 00, 0, 0];
    dataoff=[02, 00, 0, 0];
    dataservoon=[89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataon];
    dataservooff=[89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, dataoff];
% Defining the protocol for Moving the robot to pick and place points
    reqid=2;
    cdno=hex2dec('8A');
    inst=2;  
    att=1;
    ser=hex2dec('02');
        %Definig coordinates for Pickup point above the pick point
        x=500.814;
        y=450.476;
        z=-186.052;  
        Tx=0;
        Ty=0;
        Tz=90;
        hexx=num2str(ndec2hex(round(x*1000)));   %Should be 8 digits
        hexy=num2str(ndec2hex(round(y*1000)));
        hexz=num2str(ndec2hex(round(z*1000)));
        hexTx=num2str(ndec2hex(Tx*10000));
        hexTy=num2str(ndec2hex(Ty*10000));
        hexTz=num2str(ndec2hex(Tz*10000));
        coordpu=[hex2dec(hexx(7:8)),hex2dec(hexx(5:6)),hex2dec(hexx(3:4)),hex2dec(hexx(1:2)),hex2dec(hexy(7:8)),hex2dec(hexy(5:6)),hex2dec(hexy(3:4)),hex2dec(hexy(1:2)),hex2dec(hexz(7:8)),hex2dec(hexz(5:6)),hex2dec(hexz(3:4)),hex2dec(hexz(1:2)),hex2dec(hexTx(7:8)),hex2dec(hexTx(5:6)),hex2dec(hexTx(3:4)),hex2dec(hexTx(1:2)),hex2dec(hexTy(7:8)),hex2dec(hexTy(5:6)),hex2dec(hexTy(3:4)),hex2dec(hexTy(1:2)),hex2dec(hexTz(7:8)),hex2dec(hexTz(5:6)),hex2dec(hexTz(3:4)),hex2dec(hexTz(1:2))];
        %Defining coordinates for Pick point
        x=500.814;
        y=450.476;
        z=-81.052;  
        Tx=0;
        Ty=0;
        Tz=90;
        hexx=num2str(ndec2hex(round(x*1000)));   %Should be 8 digits
        hexy=num2str(ndec2hex(round(y*1000)));
        hexz=num2str(ndec2hex(round(z*1000)));
        hexTx=num2str(ndec2hex(Tx*10000));
        hexTy=num2str(ndec2hex(Ty*10000));
        hexTz=num2str(ndec2hex(Tz*10000));
        coordp=[hex2dec(hexx(7:8)),hex2dec(hexx(5:6)),hex2dec(hexx(3:4)),hex2dec(hexx(1:2)),hex2dec(hexy(7:8)),hex2dec(hexy(5:6)),hex2dec(hexy(3:4)),hex2dec(hexy(1:2)),hex2dec(hexz(7:8)),hex2dec(hexz(5:6)),hex2dec(hexz(3:4)),hex2dec(hexz(1:2)),hex2dec(hexTx(7:8)),hex2dec(hexTx(5:6)),hex2dec(hexTx(3:4)),hex2dec(hexTx(1:2)),hex2dec(hexTy(7:8)),hex2dec(hexTy(5:6)),hex2dec(hexTy(3:4)),hex2dec(hexTy(1:2)),hex2dec(hexTz(7:8)),hex2dec(hexTz(5:6)),hex2dec(hexTz(3:4)),hex2dec(hexTz(1:2))];
        %Defining coordinates for Place down point above the place point
        x=848.508;
        y=364.125;
        z=-251.413;  
        Tx=0;
        Ty=0;
        Tz=90;
        hexx=num2str(ndec2hex(round(x*1000)));   %Should be 8 digits
        hexy=num2str(ndec2hex(round(y*1000)));
        hexz=num2str(ndec2hex(round(z*1000)));
        hexTx=num2str(ndec2hex(Tx*10000));
        hexTy=num2str(ndec2hex(Ty*10000));
        hexTz=num2str(ndec2hex(Tz*10000));
        coordpd=[hex2dec(hexx(7:8)),hex2dec(hexx(5:6)),hex2dec(hexx(3:4)),hex2dec(hexx(1:2)),hex2dec(hexy(7:8)),hex2dec(hexy(5:6)),hex2dec(hexy(3:4)),hex2dec(hexy(1:2)),hex2dec(hexz(7:8)),hex2dec(hexz(5:6)),hex2dec(hexz(3:4)),hex2dec(hexz(1:2)),hex2dec(hexTx(7:8)),hex2dec(hexTx(5:6)),hex2dec(hexTx(3:4)),hex2dec(hexTx(1:2)),hex2dec(hexTy(7:8)),hex2dec(hexTy(5:6)),hex2dec(hexTy(3:4)),hex2dec(hexTy(1:2)),hex2dec(hexTz(7:8)),hex2dec(hexTz(5:6)),hex2dec(hexTz(3:4)),hex2dec(hexTz(1:2))];
        %Defining coordinates for Place point
        x=848.519;
        y=364.120;
        z=-151.413;  
        Tx=0;
        Ty=0;
        Tz=90;
        hexx=num2str(ndec2hex(round(x*1000)));   %Should be 8 digits
        hexy=num2str(ndec2hex(round(y*1000)));
        hexz=num2str(ndec2hex(round(z*1000)));
        hexTx=num2str(ndec2hex(Tx*10000));
        hexTy=num2str(ndec2hex(Ty*10000));
        hexTz=num2str(ndec2hex(Tz*10000));
        coord=[hex2dec(hexx(7:8)),hex2dec(hexx(5:6)),hex2dec(hexx(3:4)),hex2dec(hexx(1:2)),hex2dec(hexy(7:8)),hex2dec(hexy(5:6)),hex2dec(hexy(3:4)),hex2dec(hexy(1:2)),hex2dec(hexz(7:8)),hex2dec(hexz(5:6)),hex2dec(hexz(3:4)),hex2dec(hexz(1:2)),hex2dec(hexTx(7:8)),hex2dec(hexTx(5:6)),hex2dec(hexTx(3:4)),hex2dec(hexTx(1:2)),hex2dec(hexTy(7:8)),hex2dec(hexTy(5:6)),hex2dec(hexTy(3:4)),hex2dec(hexTy(1:2)),hex2dec(hexTz(7:8)),hex2dec(hexTz(5:6)),hex2dec(hexTz(3:4)),hex2dec(hexTz(1:2))];
    excessdata=[0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    datacarpu=[01, 00, 00, 00, 00, 00, 00, 00, 2, 0, 0, 0, 100, 00, 00, 00, 18, 0, 0, 0, coordpu, 0, 0, 0, 0, excessdata];
    datacarpu1=[01, 00, 00, 00, 00, 00, 00, 00, 1, 0, 0, 0, 150, 00, 00, 00, 18, 0, 0, 0, coordpu, 0, 0, 0, 0, excessdata]; %Change in speed while coming up from pick point
    datacarp=[01, 00, 00, 00, 00, 00, 00, 00, 1, 0, 0, 0, 150, 00, 00, 00, 18, 0, 0, 0, coordp, 0, 0, 0, 0, excessdata];
    datacarpd=[01, 00, 00, 00, 00, 00, 00, 00, 2, 0, 0, 0, 60, 00, 00, 00, 18, 0, 0, 0, coordpd, 0, 0, 0, 0, excessdata];
    datacarpd1=[01, 00, 00, 00, 00, 00, 00, 00, 1, 0, 0, 0, 150, 00, 00, 00, 18, 0, 0, 0, coordpd, 0, 0, 0, 0, excessdata]; %Change in speed while coming up from place point
    datacarplace=[01, 00, 00, 00, 00, 00, 00, 00, 1, 0, 0, 0, 150, 00, 00, 00, 18, 0, 0, 0, coord, 0, 0, 0, 0, excessdata];
    datapickup=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarpu];
    datapickup1=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarpu1];
    datapick=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarp];
    dataplacedown=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarpd];
    dataplacedown1=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarpd1];
    dataplace=[89, 69, 82, 67, 32, 0, 104, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, datacarplace];
% Defining protocol for Gripper open and close by selecting a file stored in the teach pendant and executing it
    %Defing protocol for Job select
    reqid=3;
    cdno=hex2dec('87');
    inst=1;
    att=0;
    ser=hex2dec('02');
    stat=0;
    assize=0;
    data=[71, 82, 73, 80, 79, 80, 69, 78, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    dataopen=[89, 69, 82, 67, 32, 0, 36, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, data];
        %filename is 'GRIPOPENO' which converted to ASCII is 71 82 73 80 79 80 69 78 79
    data1=[71, 82, 73, 80, 79, 80, 69, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    dataclose=[89, 69, 82, 67, 32, 0, 36, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, data1];
        %filename is 'GRIPOPEN' which converted to ASCII is 71 82 73 80 79 80 69 78
    %Defining protocol for Job start
    reqid=4;
    cdno=hex2dec('86');
    inst=1;
    att=1;
    ser=hex2dec('10');
    stat=0;
    assize=0;
    data=[1, 0, 0, 0];
    datastartjob=[89, 69, 82, 67, 32, 0, 4, 0, 3, 1, 0, reqid, 0, 0, 0, 0, 57, 57, 57, 57, 57, 57, 57, 57, cdno, 0, inst, 0, att, ser, 0, 0, data];
% Communication with the robot
    t=udp('192.168.255.1',10040);
    fopen(t);
    t.DatagramTerminateMode = 'off';
    fwrite(t,dataservoon);
    fwrite(t,datapickup);
    pause(3);
    fwrite(t,dataopen);
    fwrite(t,datastartjob);
    pause(3);
    fwrite(t,datapick);
    pause(10);
    fwrite(t,dataclose);
    fwrite(t,datastartjob);
    pause(3);
    fwrite(t,datapickup1);
    pause(10);
    fwrite(t,dataplacedown);
    pause(5);
    fwrite(t,dataplace);
    pause(10);
    fwrite(t,dataopen);
    fwrite(t,datastartjob);
    pause(3);
    fwrite(t,dataplacedown1);
    pause(10);
    fwrite(t,dataservooff);
    ans1=fread(t)
    fclose(t);
    delete(t);
    clear t;
   