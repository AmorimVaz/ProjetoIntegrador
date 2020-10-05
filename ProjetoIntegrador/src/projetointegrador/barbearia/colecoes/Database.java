package projetointegrador.barbearia.colecoes;

import projetointegrador.barbearia.basicas.Cliente;

public class Database {

	static DaoCliente daoCliente = new DaoCliente();
	
	public static void inserirCliente(Cliente c) {
		daoCliente.inserirCliente(c);
	}

	public void excluirCliente(Cliente cliente) {
		daoCliente.excluirCliente(cliente);
	}
	
}
