//Parent Virtual Class
private virtual class TestVirtualClass {
    
   protected String test1;
   public String test2;
 
   TestVirtualClass() {}
 
   TestVitrualClass(Strint test1, String test2) {
       this.test1 = test1;
       this.test2 = test2;
   }
 
   public virtual String myVirtualMethod() {
      return 'virtual method from virtual class';
   }
 
   private String myPrivateMethod() {
      return 'private method from virtual class';
   }
 
   protected String myProtectedMethod() {
      return 'protected method from virtual class';
   }
 
   public String myPublicMethod() {
      return 'public method from virtual class';
   }
}
    
    
//Child class
public class ExampleClass extends TestVirtualClass {
   
   ExampleClass(String test1, String test2) {
      //You can use virtual class constructor using super. 
      super(test1, test2);
   }
 
   public override String myVirtualMethod() {
      return 'Virtual method overridden in child class!';
   }   
 
   public String invokeMethodFromAbstractClass() {
      String methods = '';
      methods += myPrivateMethod();//error, private method is not accessible in child class
      methods += myProtectedMethod()
      methods += myPublicMethod();
 
      return methods; //protected method from abstract class public method from abstract class
   }
}
                  
                  
ExampleClass example = new ExampleClass('Hello', 'World');
System.debug(example.test1); //error. Property test1 can be accessed only in child class.
System.debug(example.test2); //output: 'World';
System.debug(example.myVirtualMethod()); //output: 'Virtual method overridden in child class!'
System.debug(example.myPrivateMethod()); //error. It can be used only in parent class
System.debug(example.myProtectedMethod()); //error. It can be used only in parent and child classes
System.debug(example.myPublicMethod()); //output: 'public method from virtual class'
 
TestVirtualClass virtualClass = new TestVirtualClass();
System.debug(virtualClass.myVirtualMethod()); //output: 'virtual method from virtual class' 
System.debug(virtualClass.myPrivateMethod()); //error. It can be used only in parent class
System.debug(virtualClass.myProtectedMethod()); //error. It can be used only in parent and child classes
System.debug(virtualClass.myPublicMethod()); //output: public method from virtual class'
