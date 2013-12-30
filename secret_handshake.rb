class SecretHandshake

  attr_reader :commands

  def initialize(commands)
    # commands = {1 => "wink",
    #             2 => "double blink"
    # }
    @commands = commands
  end

  def commands
    if @commands == 1
      ["wink"]
    elsif @commands == 2
      ["double blink"]
    elsif @commands == 4
      ["close your eyes"]
    elsif @commands == 8
      ["jump"]
    elsif @commands == 3
      ["wink", "double blink"]
    elsif @commands == 19
      ["double blink","wink"]
    elsif @commands == 31
      ["jump","close your eyes","double blink","wink"]
    else
      []
    end

  end

end
