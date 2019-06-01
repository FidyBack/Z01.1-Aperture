/**
 * Curso: Elementos de Sistemas
 * Arquivo: SymbolTable.java
 */

package assembler;

import java.util.HashMap;

/**
 * Mantém uma tabela com a correspondência entre os rótulos simbólicos e endereços numéricos de memória.
 */
public class SymbolTable {

    private HashMap<String, Integer> symbolTable;

    /**
     * Cria a tabela de símbolos.
     */
    public SymbolTable() {
        symbolTable = new HashMap<String, Integer>();

        // Inicializa tabela com valores padroes
        initialize();
    }

    /**
     * Insere uma entrada de um símbolo com seu endereço numérico na tabela de símbolos.
     * @param  symbol símbolo a ser armazenado na tabela de símbolos.
     * @param  address símbolo a ser armazenado na tabela de símbolos.
     */
    public void addEntry(String symbol, int address) {
        symbolTable.put(symbol, address);
    }

    /**
     * Confere se o símbolo informado já foi inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return Verdadeiro se símbolo está na tabela de símbolos, Falso se não está na tabela de símbolos.
     */
    public Boolean contains(String symbol){
        if(symbolTable.get(symbol) != null){
            return true;
        }else{
            return false;
        }
    }

    /**
     * Retorna o valor númerico associado a um símbolo já inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return valor numérico associado ao símbolo procurado.
     */
    public Integer getAddress(String symbol) {

    	return symbolTable.get(symbol);
    }

    /**
    * Cria os simbolos padroes na tabela
    * ref:
    */
    public void initialize() {
        for (int i=0; i<16; i++) {
            this.addEntry("R"+i,i);
        }

        this.addEntry("SCREEN",16384);
        this.addEntry("SP",0);
        this.addEntry("LCL",1);
        this.addEntry("ARG",2);
        this.addEntry("THIS",3);
        this.addEntry("THAT",4);

    }

}
