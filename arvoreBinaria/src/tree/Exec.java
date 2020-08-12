package tree;

public class Exec {
	public static void main(String[] args) {
		System.out.println("Inserção: ");
		Tree.inserir(10);
		Tree.inserir(4);
		Tree.inserir(15);
		Tree.inserir(5);
		Tree.inserir(2);
		Tree.inserir(43);
		Tree.inserir(7);
		Tree.inserir(12);
		Tree.inserir(23);
		Tree.inserir(13);
		Tree.inserir(3);
		
		System.out.println("\nImprimir: ");
		Tree.preordem(Tree.raiz);
		
		System.out.println("\n\nBuscar: ");
		Tree.buscar(Tree.raiz, 12);

	}
}
