# 16-Bit-RISC-Core-Procesor
A RISC Based 16-Bit Processor 

This is a RISC Core processor with 16-Bit Architecture, a defined Instruction Set and some unique features and instructions.<br>

The complete verilog Implementation could be found in the Files. Initially, the design build and compiled in Xilinx ISE V14.7. Yet to be tested on other platforms.

The simulation is well tested with a few different Programs used as a benchmark.

## Instruction Set

|   OPCODE  |INSTRUCTION|       SYNTAX        |
|:----------|:----------|:--------------------|
|   0000    |   NOP     |       NO OPR        |
|   0001	  |   ADD     |   ADD RD RS	RT      |
|   0010	  |   ADDi    | ADDi RD RS Offset   |
|   0011	  |   MUL     | MUL	RD	RS	RT      |
|   0100	  |   AND     |  AND	RD	RS	RT    |
|   0101	  |   OR      |  OR	RD	RS	RT      |
|   0110	  |   DIV     | DIV	RD	RS	xx	    | / RT is constant
|   0111	  |   JEQ     | JR OFF RS RT   	  |		
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


## Test Program: Factorial of 5

```
> Li	R1	0x5h			  // Load 5 into R1
> Li	T2	0x1h			  // T2 holds 1 for decrement operation
> MOV	T1	R1				  // A copy of R1 (to be decremented every iter)
> JEQ	T1	ZERO 0x8h		// Break the loop when T1 == 0
> SUB	T1	T1	T2			// Decrement of 1 in T1
> MUL	R1	R1	T1			// Multiply the previous result with decremented T1	
> JUMP 0x3h				    // Loops until T1 == 0
> NOP 

```




## Simulation: Factorial of 5


<p align="center">
  <img src="Docs\iSIM_image.png" width="950" title="Simulation">
</p>


## Contributions

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request




## License

This Project is designed under General Public License V3.0 See `LICENSE.txt` for more information.
> https://www.gnu.org/licenses/quick-guide-gplv3.html

<p align="right">(<a href="#top">back to top</a>)</p>


