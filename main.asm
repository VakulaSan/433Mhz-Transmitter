
.include "m328Pdef.inc"

.def  temp = R16
.def  temp1 = R17
.def  temp2 = R18
.def  temp3 = R19
    
     
loop:     ldi     temp,   1<<PD3
          out     DDRD,   temp
          out     PORTD,  temp
          rcall delay
          ldi     temp,   0
          out     PORTD,  temp
          rcall delay
          rjmp  loop  


delay:   ldi     temp1,  3
lp0:      dec     temp1
          breq    exit
          ldi     temp2,  255
lp2:	     dec     temp2
          breq    lp0
          ldi     temp3,  255
lp3:	     dec     temp3 
          breq    lp2
          rjmp    lp3
exit:      ret