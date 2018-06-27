public class Main
{
	void matrixMultiplication()
	{
		Matrix a = new Matrix(4, 4);
		a.identity();
		a.setElement(2, 3, 7);
		a.setElement(3, 1, 2);
		a.setElement(3, 0, 4);

		Matrix b = new Matrix(4, 4);
		b.identity();
		b.setElement(2, 3, 1);
		b.setElement(3, 1, 9);
		b.setElement(3, 0, -7);

		a.mult(b); // Add b to a. This is like a+= b;

		Matrix c;
		// Add b to a, without changing a. Instead create a new matrix and return it
		// This is like c = a + b
		c = Matrix.mult(a, b); // How to call a static method

		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
	}

	public void editDistance()
	{
		// String sa = "needle";
		// String sb = "haystack";
		// System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));
		String sa = "I love DIT";
		String sb = "I love Tunepal";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));

		sa = "Games Fleadh";
		sb = "Imagine Cup";
		System.out.println("Edit distance between: " + sa + " and: " + sb + " is " + EditDistance.MinimumEditDistance(sa, sb));
	}

	public void dictionary()
	{
		Dictionary d = new Dictionary();
		System.out.println(d);

		System.out.println(d.findClosest("bread"));
		System.out.println(d.findClosest("militarry"));
		
	}
	public void strings()
	{
		String s = "I love Star Trek";

		System.out.println(s.length());
		System.out.println(s.contains("love"));
		System.out.println(s.contains("hate"));
		System.out.println(s.startsWith("I love"));
		System.out.println(s.endsWith("cats"));
		System.out.println(s.equals("Hello"));
		
		String ss = s.substring(7);

		System.out.println(ss);
		// Incorrect way to compare strings
		if (ss == "Star Trek")
		{
			System.out.println("Same");
		}
		else
		{
			System.out.println("Different");
		}
		// Correct way to compare strings
		if (ss.equalsIgnoreCase("Star Trek"))
		{
			System.out.println("Same");
		}
		else
		{
			System.out.println("Different");
		}

		String star = ss.substring(0, 5);
		System.out.println(star.toUpperCase());

	}

	public static void main(String[] args)
	{
		Main main = new Main();
		//main.matrixMultiplication();
		main.editDistance();
		//main.strings();
		//main.dictionary();
	}
}