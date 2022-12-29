|   0000    |   NOP     |       SYNTAX        |
|:----------|:----------|:--------------------|
|   0001	  |   ADD     |   ADD RD RS	RT      |
|   0010	  |   ADDi    | ADDi RD RS Offset   |
|   0011	  |   MUL     | MUL	RD	RS	RT      |
|   0100	  |   AND     |  ND	RD	RS	RT      |
|   0101	  |   OR      |  OR	RD	RS	RT      |
|   0110	  |   DIV     | DIV	RD	RS	xx	    | / RT is constant
|   0111	  |   JAL     | JAL	J_reg	-8'offset-|	
|   1000	  |   CMP     | 	CMP	RD	RS	RT    |	/ Fixed returns for 3 cases.. see more
|   1001	  |   MOV     | 	MOV	RD	RS        |		/ RS is moved to RD
|   1010	  |   JUMP    | 	JUMP	-12'offset- |	/ only 5'b usable (64bit IM)
|   1011	  |   JR      | 	JR	RS	xx	xx    |
|   1100	  |   LW      | 	LW	RD	RS(BA)off |	
|   1101	  |   SW      | 	SW	xx	RS(BA)RT(Data)|
|   1110	  |   Li      | 	Li	RD	--8'Offset--|
|   1111	  |   SUB     | 	SUB RD RS	RT      |
