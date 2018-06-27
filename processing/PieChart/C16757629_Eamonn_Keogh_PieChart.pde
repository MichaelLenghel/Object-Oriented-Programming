ArrayList<Expense> expenses = new ArrayList<Expense>();
ArrayList<PartyExpense> partyExpenses = new ArrayList<PartyExpense>();
float border = (width + height) * 0.4f;


void setup()
{
  size(500,500);
  smooth();
  loadExpenses("expenses.txt", "tsv");
  drawPartyExpenseChart();
  noStroke();
}

void loadExpenses(String filename, String options)
{ 
  Table t = loadTable(filename, options);
  
  for (TableRow row : t.rows())
  {
    Expense expense = new Expense(row);
    expenses.add(expense);
    
    PartyExpense partyExpense = null;
    boolean found = false;
    
    for (int i = 0; i < partyExpenses.size(); i++)
    {
      if (expense.party.equals(partyExpenses.get(i).partyName))
      {
        found = true;
        partyExpense = partyExpenses.get(i);
      }
    }
    if (!found)
    {
      partyExpense = new PartyExpense(expense.party);
      partyExpenses.add(partyExpense);
    }
      partyExpense.total = partyExpense.total + expense.total;
  }    
}

void listExpenses()
{
  for(Expense row : expenses)
    println(row);
}

void listPartyExpenses()
{
  for(PartyExpense row : partyExpenses)
    println(row);
}

void drawPartyExpenseChart()
{
  float centX = width / 2;
  float centY = height / 2;
  float d = width - (border * 2);
  float r = d / 2;
  
  // find total sum of all partyExpenses
  float sum = 0;
  for(int i = 0; i < partyExpenses.size(); i++)
  {
    sum = sum + partyExpenses.get(i).total;
  }
  
  // find the party with the highest expense
  float max = partyExpenses.get(0).total;
  for(int i = 1; i < partyExpenses.size(); i++)
  {
    if (partyExpenses.get(i).total > max)
    {
      max = partyExpenses.get(i).total;
    }
  }
  
  println("Total sum: " + sum);
  println("Max expense: " + max);
  
  float thetaPrev = 0;
  for(int i = 0; i < partyExpenses.size(); i++)
  {
    // get the theata angle
    float theta = map(partyExpenses.get(i).total, 0, sum, 0, TWO_PI);
    textAlign(CENTER);
    float col = map(partyExpenses.get(i).total, 0, max, 255, 100 );
    float thetaNext = thetaPrev + theta;
    
    float radius = centX * 0.6f;
    
    float x = centX + sin(thetaPrev + (theta / 2) + HALF_PI) * radius;
    float y = centY - cos(thetaPrev + (theta / 2) + HALF_PI) * radius;
    
    
    fill(255);
    text(partyExpenses.get(i).partyName, x, y);
    
    stroke(0, col, col);
    fill(0, col, col);
    arc(centX, centY, centX, centY, thetaPrev, thetaNext);
    thetaPrev = thetaNext;
    println(theta);
  }
}

void draw()
{
 
}