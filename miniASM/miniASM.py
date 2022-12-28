
# Assign OPCODE to Instructions using dictionary. Using String for VALUE field to maintain Number of bits while still being copy-able...
Instrictions = {'NOP' : '0000', 'ADD' : '0001', 'ADDi' : '0010', 'MUL' : '0011', 'AND' : '0100', 'OR' : '0101', 'DIV' : '0110', 'JAL' : '0111', 'CMP' : '1000', 'MOV' : '1001', 'JUMP' : '1010', 'JR' : '1011', 'LW' : '1100', 'SW' : '1101', 'Li' : '1110', 'SGT' : '1111' };
REGF = {'R1' : '0000', 'R2' : '0001', 'R3' : '0010', 'R4' : '0011', 'R5' : '0100', 'R6' : '0101', 'R7' : '0110', 'R8' : '0111', 'T1' : '1000', 'T2' : '1001', 'T3' : '1010', 'T4' : '1011', 'T5' : '1100', 'T6' : '1101', 'RA' : '1110', 'ZERO' : '1111' };
opcode ='NOP';
RD = 'NOP'
RS ='NOP'
RT = 'NOP'
while True:
  opcode = input('OPCODE\n')
  RD = input('RD\n')
  RS = input('RS\n')
  RT = input('RT\n')
  print(ISA[opcode],REGF[RD],REGF[RS],REGF[RT],"\n")
