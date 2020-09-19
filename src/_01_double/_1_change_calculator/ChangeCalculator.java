package _01_double._1_change_calculator;

import javax.swing.JOptionPane;

/*
 * I have a pocket full of change. I hate doing math. Make me a program that
 * will calculate how much money I have without me having to use my brain.
 */

public class ChangeCalculator {

	public static void main(String[] args) {

		// Ask the user how many nickels they have
String p=JOptionPane.showInputDialog("How many pennies do you have?");
String n = JOptionPane.showInputDialog("How many nickes do you have?");
String d = JOptionPane.showInputDialog("How many dimes do you have?");
String q = JOptionPane.showInputDialog("How many quaters do you have?");
int P=Integer.parseInt(p);
int N=Integer.parseInt(n);
int D=Integer.parseInt(d);
int Q= Integer.parseInt(q);
int mm = P+5*N+10*D+25*Q;
int m=0;
while(mm>99) {
	m=m+1;
	mm=mm-100;
}
JOptionPane.showMessageDialog(null, "$"+m+"."+mm);

		// Convert their answer to an int.   Hint: Integer.parseInt()  

		// Ask the user how many dimes they have, and convert their answer

		// Ask the user how many quarters they have, and convert their answer

		// Calculate how much money the user has.  Hint: Use a double variable 

		// Tell the user how much money they have in dollars and cents format (e.g. $6.75)

	}
}

