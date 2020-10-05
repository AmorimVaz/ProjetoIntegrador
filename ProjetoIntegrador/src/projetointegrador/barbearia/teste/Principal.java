package projetointegrador.barbearia.teste;

import projetointegrador.barbearia.basicas.Cliente;
import projetointegrador.barbearia.colecoes.Functions;

public class Principal {

	// Método
	public static void main(String[] args) {
		
		Cliente c = new Cliente("nome");
		c.setRating(10);
		c.setCodigo(5);
		c.setNome("nome3");
		
		System.out.println(c);
		
		Functions.inserirCliente( c );
				
	}
	
}
