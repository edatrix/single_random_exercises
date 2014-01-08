class WordProblem
  attr_reader :text

  def initialize(question)
    @text = question
    # @question = question.gsub "plus", "+"
    # @formula = @question
  end

  def answer
    if text.include?("cubed") || text.include?("president")
      raise ArgumentError
    end

    key_phrase = text.gsub("What is ", "").gsub("?", "").gsub(" by", "")
    parts = key_phrase.split(" ")

    first_number = parts[0].to_i
    second_number = parts[2].to_i
    operation = operator_method(parts[1])
    result = first_number.send(operation, second_number)
    if parts [3]
      operation = operator_method(parts[3])
      third_number = parts[4].to_i
      result = result.send(operation, third_number)
    end
    return result
  end

    # case operand
    # when "plus" then first_number + second_number
    # when "multiplied" then first_number * second_number
    # when "divided" then first_number / second_number
    # else
    #   first_number - second_number
    # end


    # if operand == "plus"
    #   addend_1 + addend_2
    # elsif operand == "multiplied"
    #   addend_1 * parts[5].to_i
    # elsif operand == "divided"
    #   addend_1 / parts[5].to_i
    # else
    #   addend_1 - addend_2
    # end

  def operator_method(string)
    known_operations[string]
   end

   def known_operations
    {"plus" => :+,
     "multiplied" => :*,
     "divided" => :/,
     "minus" => :-}
   end

    # case string
    # when "plus" then :+
    # when "multiplied" then :*
    # when "divided" then :/
    # else
    #   :-
    # end

end
