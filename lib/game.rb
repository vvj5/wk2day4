require_relative "players"
require_relative "board"


class Game
  def initialize
    system('clear')
    @player1 = Player1.new
    @player2 = Player2.new
    @board = Board.new
  end


  def start
    puts"
                                    *---------------------------*
                                    *  Let's Play Tic-Tac-Toe!  *
                                    *---------------------------*
                                    ****** Press y to Start *****"
    enter
  end


  def enter
      enter = gets
      if enter.include? "y"
      print @board.print_board
      player1_choose
      else puts "                                    ****** Press y to Start *****"
          loop do
          end
      end
  end


  def restart
    puts
                          "Would you like to play again? Press y to start!"
    enter
  end




  def draw?
    if @moves >= 9
      puts "NO WINNAR!"
    end
    restart
  end






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




  # def win?
  #   pieces = [@board[combo[0]], @board[combo[1]], @board[combo[2]]]
  #   pieces.uniq.length == 1 && (pieces[0] != PIECE[:blank])
  # end


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





  # if @mademovesplayer.mademovesplayer.include?(move)
      #    movep1=@mademovesplayer.index(move)
      #    @mademovesplayer[movep1]=(20)
      # end
      # if @player.mademovesplayer.reduce(:+)==(60)




    #   movea1=@ai_player.mademovesai.arraya1.index(move)
      #   @ai_.mademovesai.arraya1[movep1]=(20)
      # end
      #    @ia_player.mademovesai.arryayp1.reduce(:+)
      # if @ai_player.mademovesai.arrayp1==(60)
