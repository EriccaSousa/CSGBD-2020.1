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
			if (value < node.getValue()) { // IF de recursão
				if (node.getLeftNode() != null) {
					inserir(node.getLeftNode(), value); // Passo recursivo
				} else {
					System.out.println("Inserindo " + value + " a esquerda de " + node.getValue());
					node.setLeftNode(new Node(value));
				}

			} else {
				if (node.getRightNode() != null) { // IF de recursão
					inserir(node.getRightNode(), value); // Passo recursivo
				} else {
					System.out.println("Inserindo " + value + " a direita de " + node.getValue());
					node.setRightNode(new Node(value));
				}
			}
		}
	}

	public static void buscar(Node raiz, int value) {
		if (value == raiz.getValue()) {
			System.out.println("O valor informado é a raíz!");
		} else {
			if (value < raiz.getValue()) {
				if (value == raiz.getLeftNode().getValue()) {
					System.out.println("Valor encontrado!!\n valor informado: " + value + "\n filho da esquerda: " + raiz.getLeftNode().getValue());
				}else {
					buscar(raiz.getLeftNode(), value);
				}
			} else {
				if (value == raiz.getRightNode().getValue()) {
					System.out.println("Valor encontrado!!\n valor informado: " + value + "\n filho da esquerda: " + raiz.getRightNode().getValue());
				}else {
					buscar(raiz.getRightNode(), value);
				}
			}
		}
	}

	public static void preordem(Node no) { // Raiz, Da esquerda a direita da raiz;
		System.out.print(no.getValue() + " - ");
		if (no.getLeftNode() != null) {
			preordem(no.getLeftNode());
		}
		if (no.getRightNode() != null) {
			preordem(no.getRightNode());
		}
	}

}
