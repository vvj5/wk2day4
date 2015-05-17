class Player1
  attr_accessor :player1
  def player1_choose
    puts "
                               *** Player 1, choose your move! ***"
    move=gets.chomp
      if @board.board.include?(move)
         @board.board.sub!(move, "X")
         @board.print_board
      end
      if player1_win?
      elsif draw?
      else player2_choose
      end
  end
  def player1_win?
    win_combos = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8],
                       [2, 4, 6], [0, 3, 6], [1, 4, 7], [2, 5, 7] ]
    win_combos.each do |win_combo|
      if win?(win_combo)
        puts "PLAYER 1 IS TEH WINNAR!"
      end
    end
    restart
  end
end

class Player2
  attr_accessor :player2
  def player2_choose
    puts "
                               *** Player 2, choose your move! ***"
    move=gets.chomp
      if @board.board.include?(move)
         @board.board.sub!(move, "O")
         @board.print_board
      end
      if player2_win?
      elsif draw?
      else player1_choose
      end
  def player2_win?
    win_combos = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8],
                       [2, 4, 6], [0, 3, 6], [1, 4, 7], [2, 5, 7] ]
    win_combos.each do |win_combo|
      if win?(win_combo)
        puts "PLAYER 2 IS TEH WINNAR!"
      end
    restart
    end
  end
end
end


# class Player
#   attr_accessor :mademovesplayer
#   def initialize
#     @mademovesplayer = mademovesplayer
#   end
#   def mademovesplayer
#     @mademovesplayer=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
#     # @arrayp1=[1,2,3]
#     # @arrayp2=[4,5,6]
#     # @arrayp3=[7,8,9]
#     # @arrayp4=[1,4,7]
#     # @arrayp5=[2,5,8]
#     # @arrayp6=[3,6,9]
#     # @arrayp7=[1,5,9]
#     # @arrayp8=[3,5,7]
#   end
# end


# class AI_Player
#   attr_accessor :mademovesai
#   def initialize
#     @mademovesai = mademovesai
#   end
#   def mademovesai
#     @mademovesai=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
#     # @arraya1=[1,2,3]
#     # @arraya2=[4,5,6]
#     # @arraya3=[7,8,9]
#     # @arraya4=[1,4,7]
#     # @arraya5=[2,5,8]
#     # @arraya6=[3,6,9]
#     # @arraya7=[1,5,9]
#     # @arraya8=[3,5,7]
#   end
# end
