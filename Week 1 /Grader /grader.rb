# Create a class grader 
class Grader
    def self.calcGrade(score)
      if score >= 90
        return "A"
      elsif score >= 80
        return "B"
      elsif score >= 70
        return "C"
      elsif score >= 60
        return "D"
      else
        return "F"
      end
    end
  end

# Ask the students name 
  puts "What is the student's name?"
  name = gets.chomp
  
# Ask for the assignment name 
  puts "What is the assignment name?"
  assignment = gets
  
# Ask for the letter grade in numbers 
  puts "What is the numerical grade?"
  begin
    grade = Float(gets)

# Capture and print an error code if the number is not a valid float 
  rescue ArgumentError
    puts "Invalid input, please enter a numeric grade."

# Allow the user to retry to input a number 
    retry
  end
  
# Calculate the letter grade based on the numerical input 
  letterGrade = Grader.calcGrade(grade)
  
# Print the grade 
  puts "#{name} got a #{letterGrade} on #{assignment}"
  