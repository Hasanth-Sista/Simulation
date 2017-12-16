zdata1=[0 1 0 0.25
        0 2 0 0.25
        1 2 0 0.125
        1 3 0 0.15
        2 3 0 0.25];
   
zdata0=[0 1 0 0.40
        0 2 0 0.10
        1 2 0 0.30
        1 3 0 0.35
        2 3 0 0.7125];
    
    zdata2=zdata1;
    
    zbus1=zbuild(zdata1);
    zbus2=zbus1;
    zbus0=zbuild(zdata0);
    
    symfault(zdata1,zbus1)
    lgfault(zdata0,zbus0,zdata1,zbus1,zdata2,zbus2)
    llfault(zdata1,zbus1,zdata2,zbus2)
    dlgfault(zdata0,zbus0,zdata1,zbus1,zdata2,zbus2)