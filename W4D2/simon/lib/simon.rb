class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    add_random_color
    puts "here is the code to memorize!!"
    puts "you have two seconds to see it!"
    
    colors_to_show = show_sequence
    colors_to_show.each do |color|
      puts color 
      sleep(0.4)
      system "clear"
    end
    require_sequence
    if @game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
   add_random_color
   seq
  end

  def require_sequence
    user_guess = []
    i = 0

    until user_guess.length == @seq.length 
      puts 'Please enter the first color you saw'
      input = gets.chomp
      user_guess << input

      if user_guess[i] != @seq
        game_over_message
      else
        round_success_message
        take_turn
      end

      i += 1
    end
  end

  def add_random_color
      seq << COLORS.sample(1)
  end

  def round_success_message
    p "Correct! You have got #{@sequence_length} in  a row right!!"
  end

  def game_over_message
    p 'Game Over!'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
