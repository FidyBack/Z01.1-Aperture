/**
 * Curso: Elementos de Sistemas
 * Arquivo: Assemble.java
 * Created by Luciano <lpsoares@insper.edu.br>
 * Date: 04/02/2017
 * <p>
 * 2018 @ Rafael Corsi
 */

package assembler;

import java.io.*;

/**
 * Faz a geração do código gerenciando os demais módulos
 */
public class Assemble {
    File hackFile = null;                  // arquivo de saída hack
    boolean debug;                         // flag que especifica se mensagens de debug são impressas
    private String inputFile;              // arquivo de entrada nasm
    private PrintWriter outHACK = null;    // grava saida do código de máquina em Hack
    private SymbolTable table;             // tabela de símbolos (variáveis e marcadores)

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     *
     * @param mnemonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public Assemble(String inFile, String outFileHack, boolean debug) throws IOException {
        this.debug = debug;
        inputFile  = inFile;
        hackFile   = new File(outFileHack);                      // Cria arquivo de saída .hack
        outHACK    = new PrintWriter(new FileWriter(hackFile));  // Cria saída do print para o arquivo hackfile
        table      = new SymbolTable();                          // Cria e inicializa a tabela de simbolos

    }

    /**
     * primeiro passo para a construção da tabela de símbolos de marcadores (labels)
     * varre o código em busca de Símbolos novos Labels e Endereços de memórias
     * e atualiza a tabela de símbolos com os endereços.
     * <p>
     * Dependencia : Parser, SymbolTable
     */
    public SymbolTable fillSymbolTable() throws FileNotFoundException, IOException {
        //Verifica Labels comuns (com ":")
        Parser parser = new Parser(inputFile);
        Parser otherParser = new Parser(inputFile);

        int linha=0;

        while (parser.advance()){
            boolean match = parser.commandType(parser.command()).equals(Parser.CommandType.L_COMMAND);
            if(match){
                table.addEntry(parser.label(parser.command()).replace("$",""),linha);
            }
            else{
                linha+=1;
            }

        while (parser.advance()) {
            if (parser.commandType(parser.command()).equals(Parser.CommandType.L_COMMAND)) {
                String new_label = parser.label(parser.command());
                table.addEntry(new_label, linha;
            } else {
                linha++;
            }
        }

        //Verifica labels no meio de leaws
        Parser parser2 = new Parser(inputFile);
        int label_number = 16;

        while (parser2.advance()) {
            if (parser2.commandType(parser2.command()).equals(Parser.CommandType.A_COMMAND)) {
                String symbol = parser2.symbol(parser2.command());
                boolean numeric = true;
                try {
                    Double num = Double.parseDouble(symbol);
                } catch (NumberFormatException e) {
                    numeric = false;
                }
                if (!numeric) {
                    if (!table.contains(symbol)) {
                        table.addEntry(symbol, label_number);
                        label_number++;
                    }
                }
            }
        }
        int ind_marcacao=16;

        while (otherParser.advance()){
            boolean othermatch =  otherParser.commandType(otherParser.command()).equals(Parser.CommandType.A_COMMAND);
            if(othermatch){
                try{
                    Double num = Double.parseDouble(otherParser.symbol(otherParser.command()));
                }
                catch(NumberFormatException e){
                    if(!table.contains(otherParser.symbol(otherParser.command()))){
                        table.addEntry(otherParser.symbol(otherParser.command()).replace("$",""),ind_marcacao);
                        ind_marcacao+=1;
                    }
                }
            }

        }



        return table;
    }

    /**
     * Segundo passo para a geração do código de máquina
     * Varre o código em busca de instruções do tipo A, C
     * gerando a linguagem de máquina a partir do parse das instruções.
     * <p>
     * Dependencias : Parser, Code
     */
    public void generateMachineCode() throws FileNotFoundException, IOException {
        Parser parser = new Parser(inputFile);  // abre o arquivo e aponta para o começo
        String instruction  = null;

        /**
         * Aqui devemos varrer o código nasm linha a linha
         * e gerar a string 'instruction' para cada linha
         * de instrução válida do nasm
         */
        while (parser.advance()){
            String[] comando = parser.instruction(parser.command());
            switch (parser.commandType(parser.command())){
                case C_COMMAND:
                    instruction = "10" + Code.comp(comando)+Code.dest(comando)+Code.jump(comando);
                    break;


                case A_COMMAND:


                    if (table.contains(parser.symbol(parser.command()))) {

                        instruction ="00" + Code.toBinary(Integer.toString(table.getAddress(parser.symbol(parser.command()))));
                    }

                    else {
                        instruction = "00"+ Code.toBinary(parser.symbol(parser.command()));
                    }


                    break;
                default:
                    continue;
            }
            // Escreve no arquivo .hack a instrução
            if (outHACK != null) {
                outHACK.println(instruction);
            }
        }

    }

    /**
     * Fecha arquivo de escrita
     */
    public void close() throws IOException {
        if (outHACK != null) {
            outHACK.close();
        }
    }

    /**
     * Remove o arquivo de .hack se algum erro for encontrado
     */
    public void delete() {
        try {
            if (hackFile != null) {
                hackFile.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
