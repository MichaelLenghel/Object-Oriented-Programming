class Expense
{
  String name;
  String party;
  String constituency;
  float amtReturn;
  float amtClaim;
  float total;
  color col;
  
  Expense(TableRow row)
  {
    name = row.getString(0);
    party = row.getString(1);
    constituency = row.getString(2);
    amtReturn = row.getFloat(3);
    amtClaim = row.getFloat(4);
    total = amtClaim - amtReturn;
    col = color(random(0,255), random(0,255), random(0,255));
  }
  
  String toString()
  {
    return name 
      + " " + party
      + " " + constituency
      + " " + amtReturn
      + " " + amtClaim
      + " " + total;
  }
}