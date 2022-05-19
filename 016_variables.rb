$no_of_stdnt = 0 #global variable
PASS_MARK = 150      #PASS_MARK is a constant
class Student_details
  @@clg_name ="muthoot" #class variable
  def initialize(id,name,dept,m1,m2,m3)
    @id = id             #@id,@name... are the instance variable
    @name = name
    @dept = dept
    @m1 = m1
    @m2 = m2
    @m3 = m3
    $no_of_stdnt +=1
  end
  def display
    _total_mark = 0  # _total_mark is a local variable
    _total_mark = @m1 + @m2 + @m3

    puts "id : #{@id}"
    puts "name : #{@name}"
    puts "department : #{@dept}"
    puts "college : #{@@clg_name}"
    puts "total mark : #{_total_mark}"
    if _total_mark > PASS_MARK
      puts "status : pass"
    else
      puts "status : fail"
    end
  end
end

s1 = Student_details.new(1001,"alan","cse",50,60,70)
s2 = Student_details.new(1002,"basil","me",50,60,70)
s3 = Student_details.new(1003,"max","eee",50,30,40)
s1.display
s2.display
s3.display
puts "no of students : #{$no_of_stdnt}"
