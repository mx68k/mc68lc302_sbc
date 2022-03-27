*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
base	equ $FFF000
PBCNT	equ base+$824	* port B control reg
PBDDR	equ base+$826	* port B Data Direction Reg
PBDAT	equ base+$828	* port B Data Reg


    ORG    $1000
START:    
    move.w #$0,PBCNT    * all pins as PB 3
    move.w #$04FE8,PBDDR    * PB11 ,PB10 ,PB9 ,PB8 ,PB7 ,PB6 ,PB5 ,PB3 are outputs
	
DIO:                  

    move.w #$0FE8,PBDAT	    * PB11 ,PB10 ,PB9 ,PB8 ,PB7 ,PB6 ,PB5 ,PB3 - ON
    move.w #$0000,PBDAT	    * PB11 ,PB10 ,PB9 ,PB8 ,PB7 ,PB6 ,PB5 ,PB3 - OFF
    jmp DIO

    END    START        




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
