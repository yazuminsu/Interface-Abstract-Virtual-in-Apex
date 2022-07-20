// Interface
public interface Employee {
   // Method's signature
   Double increaseEmployeeSallary(Double currentSalarry);
}


//Example A
public class CompanyAEmployee implements Employee {
   public Double increaseEmployeeSallary(Double currentSalarry) {
      return currentSalarry * 1.1;
   }
}


//Example B
public class CompanyBEmployee implements Employee {
   public Double increaseEmployeeSallary(Double currentSalarry) {
      return currentSalarry * 1.2;
   } 
}


// Because each class implements Employee interface, we can do something like that:
Employee employeeA = new CompanyAEmployee();
Employee employeeB = new CompanyBEmployee();
 
employeeA.increaseEmployeeSallary(1000.0); //1100
employeeB.increaseEmployeeSallary(1000.0); //1200
