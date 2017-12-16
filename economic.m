basemva=100;
accuracy=0.001;
maxiter=10;
%9-bus power system network of an electric utility company
%bus data
        %busno buscode volmag angle     load           generated        injected
                                    %mw      mvar     mw     mvar   qmin  qmax mvar
busdata =[1        1      1.03   0   0         0        0      0       0     0   0
          2        2      1.04   0   20       10        80     0       0     250 0
          3        0      1.0    0   25       15        0      0       0     0   1
          4        0      1.0    0   10       5         0      0       0     0   3
          5        0      1.0    0   40       20        0      0       0     0   0
          6        0      1.0    0   60       40        0      0       0     0   0
          7        2      1.01   0   10       5         120    0       0     100 0
          8        0      1.0    0   80       60        0      0       0     0   0
          9        0      1.0    0   100      80        0      0       0     0   0];
      
      %line  data
      linedata=[1  2  .018  .054  .0045 1
                1  8  .014  .036  .0030 1
                2  9  .006  .030  .0028 1
                2  3  .013  .036  .0030 1
                3  4  .010  .050  .0000 1
                4  5  .018  .056  .0000 1
                5  6  .020  .060  .0000 1
                6  7  .015  .045  .0038 1
                6  9  .002  .066  .0000 1
                7  8  .032  .076  .0000 1
                7  9  .022  .065  .0000 1];
      
     cost=[240 6.7 0.009
           220 6.1 0.005
           240 6.5 0.008];
     
     mwlimits=[50 200
               50 200
               50 100];
    pdt=345;       
    lfybus
    lfnewton
    busout
    bloss
    dispatch
    gencost