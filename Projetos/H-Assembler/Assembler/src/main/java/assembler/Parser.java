/**
 * Curso: Elementos de Sistemas
 * Arquivo: Parser.java
 */

package assembler;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

/**
 * Encapsula o código de leitura. Carrega as instruções na linguagem assembly,
 * analisa, e oferece acesso as partes da instrução  (campos e símbolos).
 * Além disso, remove todos os espaços em branco e comentários.
 */
public class Parser {

    private String currentCommand = "";  // comando atual
    public String inputFile;		    // arquivo de leitura
    public int lineNumber = 0;			// linha atual do arquivo (nao do codigo gerado)
    public String currentLine;			// linha de codigo atual
    private BufferedReader fileReader;  // leitor de arquivo

    /** Enumerator para os tipos de comandos do Assembler. */
    public enum CommandType {
        A_COMMAND,      // comandos LEA, que armazenam no registrador A
        C_COMMAND,      // comandos de calculos
        L_COMMAND       // comandos de Label (símbolos)
    }

    /**
     * Abre o arquivo de entrada NASM e se prepara para analisá-lo.
     * @param file arquivo NASM que será feito o parser.
     */
    public Parser(String file) throws FileNotFoundException {
        this.lineNumber = 0;
        this.inputFile = file;
        this.fileReader = new BufferedReader(new FileReader(file));
    }

    /**
     * Carrega uma instrução e avança seu apontador interno para o próxima
     * linha do arquivo de entrada. Caso não haja mais linhas no arquivo de
     * entrada o método retorna "Falso", senão retorna "Verdadeiro".
     * @return Verdadeiro se ainda há instruções, Falso se as instruções terminaram.
     */
    public Boolean advance() throws IOException {
        String str = fileReader.readLine();
        String[] array = str.split(" ");
        if (str != null) {

            for (String e : array) {
                String[] arrayLetras = e.split("");
                for (String i : arrayLetras) {
                    if (i == ";") {
                        // é comentário
                        return false;
                    }
                    else {
                        // n é comentário
                        this.currentCommand = this.currentLine;
                        return true;
                    }
                }
            }
        }
        else{
            return false;
        }
        return null;
    }

    /**
     * Retorna o comando "intrução" atual (sem o avanço)
     * @return a instrução atual para ser analilisada
     */
    public String command() {
    	return this.currentCommand;
    }

    /**
     * Retorna o tipo da instrução passada no argumento:
     *  A_COMMAND para leaw, por exemplo leaw $1,%A
     *  L_COMMAND para labels, por exemplo Xyz: , onde Xyz é um símbolo.
     *  C_COMMAND para todos os outros comandos
     * @param  command instrução a ser analisada.
     * @return o tipo da instrução.
     */
    public CommandType commandType(String command) {
        String [] array = command.split("");
        int len = command.length();
        if (array[0] == "l" && array[1] == "e" && array[2] == "a"){
            return CommandType.A_COMMAND;
        }
        else if (array[len] == ":"){
            return CommandType.L_COMMAND;
        }
        else{
            return CommandType.C_COMMAND;
        }
    }

    /**
     * Retorna o símbolo ou valor numérico da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é A_COMMAND.
     * @param  command instrução a ser analisada.
     * @return somente o símbolo ou o valor número da instrução.
     */
    public String symbol(String command) {
        String [] array = command.split("");
        LinkedList<String> instruction = new LinkedList<>();
        int e = 0;
        for (int i=0 ; i < command.length() ; i++){
            if (array[i] == "$"){
                e = i;
            }
        }

        while (array[e] != ",") {
            instruction.add(array[e]);
            e++;
        }
        return instruction.toString();
    }

    /**
     * Retorna o símbolo da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é L_COMMAND.
     * @param  command instrução a ser analisada.
     * @return o símbolo da instrução (sem os dois pontos).
     */
    public String label(String command) {
        String [] array = command.split("");
        LinkedList<String> instruction = new LinkedList<>();
        for (int i=0 ; i <= array.length ; i ++ ){
            if (array[i] != ":"){
                instruction.add(array[i]);
            }
            else{
                break;
            }
        }
    	return instruction.toString();
    }

    /**ó
     * Separa os mnemônicos da instrução fornecida em tokens em um vetor de Strings.
     * Deve ser chamado somente quando CommandType () é C_COMMAND.
     * @param  command instrução a ser analisada.
     * @return um vetor de string contento os tokens da instrução (as partes do comando).
     */
    public String[] instruction(String command) {
        String [] array = command.split("");
        LinkedList<String> instruction = new LinkedList<>();
        LinkedList<String> finalInstruction = new LinkedList<>();
        for (int i=0 ; i <= array.length ; i ++ ){
            if (array[i] != " " && array[i] != ","){
                instruction.add(array[i]);
            }
            else{
                finalInstruction.add(instruction.toString());
                instruction = new LinkedList<>();
            }
        }

        String [] finalArray = new String[finalInstruction.size()];
        for (int i = 0 ; i <= finalInstruction.size(); i++){
            finalArray[i] = finalInstruction.get(i);
        }

        return finalArray;
    }

    // fecha o arquivo de leitura
    public void close() throws IOException {
        fileReader.close();
    }


}
