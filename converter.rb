class Converter
  def self.kj_to_cals(input)
    input / 4.186
  end
end

class CLI
  def get_input
    gets
  end

  def normalize_input(input)
    begin
     Integer(input)
    rescue ArgumentError
      puts("Invalid input: ==> \"#{input}\"")
      exit(1)
    end
  end

  def display(calories)
    puts "#{calories.round(2)} Calories. Fatty."
  end

  def run
    user_input = get_input

    normalized_input = normalize_input(user_input)

    output = Converter.kj_to_cals(normalized_input)
    display(output)
  end
end
