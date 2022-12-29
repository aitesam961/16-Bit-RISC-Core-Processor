
## Instruction Set

|   OPCIDE  |INSTRUCTION|       SYNTAX        |
|:----------|:----------|:--------------------|
|   0000    |   NOP     |       NO OPR        |
|   0001	  |   ADD     |   ADD RD RS	RT      |
|   0010	  |   ADDi    | ADDi RD RS Offset   |
|   0011	  |   MUL     | MUL	RD	RS	RT      |
|   0100	  |   AND     |  AND	RD	RS	RT    |
|   0101	  |   OR      |  OR	RD	RS	RT      |
|   0110	  |   DIV     | DIV	RD	RS	xx	    | / RT is constant
|   0111	  |   JAL     | JAL	J_reg	-8'offset-|	
|   1000	  |   CMP     | 	CMP	RD	RS	RT    |	/ Fixed returns for 3 cases.. see more
|   1001	  |   MOV     | 	MOV	RD	RS        |		/ RS is moved to RD
|   1010	  |   JUMP    | 	JUMP	-12'offset- |	/ only 5'b usable (64bit IM)
|   1011	  |   JR      | 	JR	RS	xx	xx    |
|   1100	  |   LW      | 	LW	RD	RS(BA)off |	
|   1101	  |   SW      | 	SW	OFFs	RS(BA)RT(Data)|
|   1110	  |   Li      | 	Li	RD	--8'Offset--|
|   1111	  |   SUB     | 	SUB RD RS	RT      |


## Register Mapping


|   0000    |   R1      |       PURPOSE        |
|:----------|:----------|:--------------------|
|   0001	  |   R2      |   General           |
|   0010	  |   R3      |   General           |
|   0011	  |   R4      |   General           |
|   0100	  |   R5      |   General           |
|   0101	  |   R6      |   General           |
|   0110	  |   R7      |   General           | 
|   0111	  |   R8      |   General           |	
|   1000	  |   T1      | Temporary/General   |	
|   1001	  |   T2      | Temporary/General   |		
|   1010	  |   T3      | Temporary/General   |	
|   1011	  |   T4      | Temporary/General   |
|   1100	  |   T5      | Temporary/General   |	
|   1101	  |   JEQ     |  JEQ Rs Default     |
|   1110	  |   RA      | Return Address      |
|   1111	  |  ZERO     | ZERO (Also BA)      |
