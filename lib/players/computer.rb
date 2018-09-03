require 'pry'
class Computer < Player

  # def display
  #   puts "-----------"
  #   puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
  #   puts "---|---|---"
  #   puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
  #   puts "---|---|---"
  #   puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  #   puts "-----------"
  # end
  #
  # def taken?(input)
  #   self.position(input) == "X" || self.position(input) == "O"
  # end
  #
  # def valid_move?(input)
  #   if input.to_i != 0
  #     return true if taken?(input) == false && ((input.to_i) - 1).between?(0,8)
  #   end
  # end

  def move(board)
    binding.pry
    WIN_COMBINATIONS.any? do |combo|
      a = self.board.cells[combo[0]]
      b = self.board.cells[combo[1]]
      c = self.board.cells[combo[2]]
      combos = [a, b, c]

      if self.board.taken?(combos.any)
        return combo
      else
        nil
      end
    end
  end

end
