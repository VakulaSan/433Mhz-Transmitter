.MACRO Initialization
          ldi     temp,   HIGH(RAMEND)
          out     SPH,    temp
          ldi     temp,   LOW(RAMEND)
          out     SPL,    temp
.ENDMACRO