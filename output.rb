require './person_class_obj'

person1 = Person.new(3)
person2 = Person.new(20, 'alex')
puts person1.id, person1.name, person2.name, person2.validate_name('alex'), person2.name, person1.age, 
  person1.parent_permission, person1.can_use_services?, person1.parent_permission
