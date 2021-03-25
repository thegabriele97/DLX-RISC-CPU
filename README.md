# MS LAB


## Domande LAB 01
 - Chiedere se il mux generico va fatto con N livelli di mux oppure con i generic in AND/OR/IV - Generate with for
 - Chiedere se nella nand si può togliere la seconda achitettura - No
 
 - Chiedere se nel registro bisogna mettere il delay - No
 - Chiedere se nel registro bisogna mettere il segnale enable - Up to you
 
 - Chiedere se bisogna togliere completamente i delay (anche dai generic map) nella fase di sintesi - Only in the VHDL code
 - Chiedere se va bene utilizzare la numeric_std al posto della std_logic_unsigned e della std_logic_arith - Ok
 - Chiedere se lo shift va gestito anche per valori > N - Yes
 - Chiedere se N è sempre una potenza di 2, N e sempre pari - power of 2, he said but not specification in the pdf
 - Chiedere se si può usare la funzione rem - ???
 - Chiedere se va bene un for di lunghezza indefinita per la sintesi - Nope

## To Do List
 - Provare a mettere 0 ns nella sintesi di Synopsys con il multiplexer :white_check_mark:
 - Finire registro (enable) :white_check_mark:
 - Testare registro :white_check_mark:
 - Sintetizzare registro :white_check_mark:
 - Cambiare nome rca :white_check_mark:
 - Sintetizzare rca :white_check_mark:
 - Finire mux :white_check_mark:
 - Sintetizzare mux :white_check_mark:
 - Testare accumulator :white_check_mark:
 - Sintetizzare accumulator :white_check_mark: 
 - Fare i report di timing, area e il compile script per la ALU :white_check_mark: 
 - Commentare i risultati (timing e area) della ALU :white_check_mark: 


## Domande LAB 02
- Chiedere cosa fare del Cin nel carry generator
- Chiedere se si possono vedere i singoli fili nel caso i cui siano raggruppati? Set the current design to a certain level, then ungroup the block. Command 'ungroup' in the terminal
- Chiedere se il mux per il multiplier bisogna farlo totalmente generico o solo il numero dei bit
- Chiedere se il mux e l'encoder nel multiplier possono essere uniti
- Chiedere se il multiplier deve funzionare con gli unsigned/solo unsigned? signed
