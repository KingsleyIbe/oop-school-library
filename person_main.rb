require_relative './student_class_obj'
require_relative './teacher_class_obj'
require_relative './success.rb'

class PersonMain
  # Method to add new book record
  def add_person(person)
    @person_arr.push(person)
    @person_arr
  end

  # Method to create new student's record
  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    perm_input = gets.chomp
    case perm_input.upcase
    when 'Y'
      permission = true
    when 'N'
      permission = false
    else
      puts 'Invalid entry!'
      init
    end
    student = Student.new(age, name)
    student.parent_permission = permission
    student.type = 'Student'
    add_person(student)
    success('Person')
  end

  # Method to create new teacher record
  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    teacher = Teacher.new(age, name)
    print 'Specialization: '
    specialization = gets.chomp
    teacher.specialization = specialization
    teacher.type = 'Teacher'
    add_person(teacher)
    success('Person')
  end

  # Method to create new person
  def create_a_person()
    puts 'Do you want to create a student (1) or a teacher (2)? [enter a number]: '
    option = gets.chomp
    case option.to_i
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid entry !'
    end
    init
  end

    # Method to list all persons' record
    def list_all_people
      @person_arr.map { |person| puts "[#{person.type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
      init
    end
end
