package controle;

import java.util.List;

import org.hibernate.Session;

import modelo.Pessoa;

public class DaoPessoa {

	public void inserirPessoa(Pessoa p) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		sessao.save( p );
		
		sessao.getTransaction().commit();
		sessao.close();
	}

	public List<Pessoa> listarPessoa() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		List<Pessoa> lista = sessao.createQuery("FROM Pessoa").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}
}
