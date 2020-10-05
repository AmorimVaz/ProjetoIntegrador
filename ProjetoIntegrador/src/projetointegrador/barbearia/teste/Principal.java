package projetointegrador.barbearia.teste;

import projetointegrador.barbearia.basicas.Cliente;
import projetointegrador.barbearia.colecoes.Database;

public class Principal {

	// Método
	public static void main(String[] args) {
		
		Cliente c = new Cliente("nome");
		c.setRating(10);
		c.setCodigo(5);
		c.setNome("nome2");
		
		System.out.println(c);
		
		Database.inserirCliente( c );
				
	}
	
}
