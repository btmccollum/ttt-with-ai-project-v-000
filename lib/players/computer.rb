require 'pry'
class Players::Computer < Player

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

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
    # binding.pry
    WIN_COMBINATIONS.any? do |combo|
      # binding.pry
      a = board.cells[(combo[0])]
      b = board.cells[(combo[1])]
      c = board.cells[(combo[2])]
      positions = [1,2,3,4,5,6,7,8,9]
      if !board.taken?(a) && !board.taken?(b) && !board.taken?(c)
        return (combo.sample + 1).to_s
      # else
      #   positions.sample unless
      #   next
      end
      # binding.pry
    end
  end

end
