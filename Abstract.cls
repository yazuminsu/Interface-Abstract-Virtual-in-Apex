//Abstract Parent class
public abstract class TestAbstractClass {
 
    protected String test1;
    public String test2;
 
    TestAbstractClass() {}
 
    TestAbstractClass(String test1, String test2) {
       this.test1 = test1;
       this.test2 = test2;
    }
 
    abstract public String myAbstractMethod();
 
    public virtual String myVirtualMethod() {
       return 'virtual method from abstract class';
    }
 
    private String myPrivateMethod() {
       return 'private method from abstract class';
    }
 
    protected String myProtectedMethod() {
       return 'protected method from abstract class';
    }
 
    public String myPublicMethod() {
       return 'public method from abstract class';
    }
}

    
//Child class
public class ExampleClass extends TestAbstractClass {
 
   ExampleClass(String test1, String test2) {
   //You can use abstract class constructor using super. 
      //Abstract class cannot be initialized, so this is the only scenario when you can use abstract class constructor!
      super(test1, test2);
   }
 
   public String myAbstractMethod() {
      return 'Abstract method implemented in child class!';
   }
 
   public override String myVirtualMethod() {
      return 'Virtual method overridden in child class!';
   }   
 
   public String invokeMethodFromAbstractClass() {
      String methods = '';
      methods += myPrivateMethod();//error, private method is not accessible in child class
      methods += myProtectedMethod();
      methods += myPublicMethod();
 
      return methods; //protected method from abstract class public method from abstract class
   }
}
                      
                      
ExampleClass example = new ExampleClass('Hello', 'World');
System.debug(example.test1); //error. Property test1 can be accessed only in child class.
System.debug(example.test2); //output: 'World';
System.debug(example.myAbstractMethod()); //output: 'Abstract method implemented in child class!'
System.debug(example.myVirtualMethod()); //output: 'Virtual method overridden in child class!'
System.debug(example.myPrivateMethod()); //error. It can be used only in parent class
System.debug(example.myProtectedMethod()); //error. It can be used only in parent and child classes
System.debug(example.myPublicMethod()); //output: 'public method from abstract class'
 
TestAbstractClass abstractClass = new TestAbstractClass();//error. Abstract class cannot be initialized
