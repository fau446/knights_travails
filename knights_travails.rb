class Board
  attr_reader :grid

  def initialize()
    @grid = [0, 1, 2, 3, 4, 5, 6, 7].repeated_permutation(2).to_a
  end
end

class Knight
  attr_accessor :pos

  def initialize(pos)
    @pos = pos
    @possible_moves = possible_moves(pos)
  end

  def possible_moves(pos)
    moves = []
    moves.push([pos[0] - 2, pos[1] + 1]) if valid_move?([pos[0] - 2, pos[1] + 1])
    moves.push([pos[0] - 2, pos[1] - 1]) if valid_move?([pos[0] - 2, pos[1] - 1])
    moves.push([pos[0] - 1, pos[1] + 2]) if valid_move?([pos[0] - 1, pos[1] + 2])
    moves.push([pos[0] + 1, pos[1] + 2]) if valid_move?([pos[0] + 1, pos[1] + 2])
    moves.push([pos[0] + 2, pos[1] + 1]) if valid_move?([pos[0] + 2, pos[1] + 1])
    moves.push([pos[0] + 2, pos[1] - 1]) if valid_move?([pos[0] + 2, pos[1] - 1])
    moves.push([pos[0] + 1, pos[1] - 2]) if valid_move?([pos[0] + 1, pos[1] - 2])
    moves.push([pos[0] - 1, pos[1] - 2]) if valid_move?([pos[0] - 1, pos[1] - 2])

    moves
  end

  private

  def valid_move?(pos)
    return false if pos[0] < 0 || pos[0] > 7
    return false if pos[1] < 0 || pos[1] > 7
    true
  end
end

knight = Knight.new([3, 3])
p knight.possible_moves([0, 0])

# knight_moves([3,3],[4,3])