class PartyExpense
{
  String partyName;
  float total;
  color col;
  
  PartyExpense(String partyName)
  {
    this.partyName = partyName;
    total = 0;
    col = color(random(0,255), random(0,255), random(0,255));
  }
  
  String toString()
  {
    return partyName 
      + " " + total;
  }
}