class Person
    def initialize(name="Unknown", parent_permission=true, age)
      @id = Random.rand(1..100)
      @name = name
      @age = age
      @parent_permission = parent_permission
        
    end
    def is_of_age?
      if age >= 18
        return true
      else
        return false
      end
    private :is_of_age?

    def can_use_services?
        if age >= 18 && parent_permission == true
          return true
        else 
          return false
    end
    public :can_use_services?
end
