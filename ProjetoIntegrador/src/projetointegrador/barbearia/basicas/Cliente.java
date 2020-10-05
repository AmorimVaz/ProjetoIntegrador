package projetointegrador.barbearia.basicas;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * A classe {@code Cliente} possui 3 atributos, o código deve ser gerado automaticamente.
 * O rating será computado através da média de notas dos proffisionais.
 * <br>
 * Exemplo1: <pre>
 * 	Cliente cliente = new Cliente();
 * </pre>
 *  
 * Exemplo2: <pre>
 * 	Cliente cliente = new Cliente("nome");
 * </pre>
 * <p>
 *   
 * @author Fabiano Vaz
 *
 */

@Entity					// Cliente será uma entidade mapeada (ORM)
public class Cliente {

	@Id					// codigo será o identificador (chave) da entidade
	@GeneratedValue		// o valor da chave (codigo) será gerado automaticamente
	private int codigo;
	
	private String nome;
	private double rating;
		

	public Cliente() {}
	
	public Cliente(String nome) {
		this.nome = nome;
		rating = -1;
	}
	
	public int getCodigo() {
		return codigo;
	}
	
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		if(this.rating > 0)
			this.rating = (this.rating + rating)/2;
		else
			this.rating = rating;
	}
	
	@Override
	public String toString() {
		return codigo + " - " + nome + " (" + rating + ")"; 
	}
}
