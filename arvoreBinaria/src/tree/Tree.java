package tree;

public class Tree {

	public static Node raiz;

	public static void inserir(int value) {
		inserir(raiz, value);
	}

	public static void inserir(Node node, int value) {
		if (node == null) {
			System.out.println("Raiz " + value);
			raiz = new Node(value);
		} else {
			if (value < node.getValue()) { //IF de recursão
				if (node.getLeftNode() != null) {
					inserir(node.getLeftNode(), value); //Passo recursivo
				} else {
					System.out.println("Inserindo " + value + " a esquerda de " + node.getValue());
					node.setLeftNode(new Node(value));
				}

			} else {
				if (node.getRightNode() != null) { //IF de recursão
					inserir(node.getRightNode(), value); //Passo recursivo
				} else {
					System.out.println("Inserindo " + value + " a direita de " + node.getValue());
					node.setRightNode(new Node(value));
				}
			}
		}
	}

}
