package _01_double._2_test_scores;

import javax.swing.JOptionPane;

public class testscores {
public static void main(String[] args) {
	String a =JOptionPane.showInputDialog("What is your test score?");
	double b =Double.parseDouble(a);
	if(b>=90) {
		JOptionPane.showMessageDialog(null, "Nice");
	}
	else {
		JOptionPane.showMessageDialog(null, "You need to keep working");
	}
}
}
