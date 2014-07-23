puts "Welcome to our game of Tic Tac Toe"

#objective is to get 3 x's or 3 o's in a row/column/disgona

#Present a board
#0 represents blank
#1 represents X
#2 represents O

#an instance variable is denoted by the @ symbol
@board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]
@gameon = true
def display_board
	puts "#{display_square @board[0][0]}|#{display_square @board[0][1]}|#{display_square @board[0][2]}"
	puts "-----"
	puts "#{display_square @board[1][0]}|#{display_square @board[1][1]}|#{display_square @board[1][2]}"
	puts "-----"
	puts "#{display_square @board[2][0]}|#{display_square @board[2][1]}|#{display_square @board[2][2]}"
	puts "player 1, it's your turn! (1 - 9 please)"
end

def display_square square
	case square
		when 0
			' '
		when 1
			'X'
		when 2
			'O'
		end
	end

def response_grabber1
	puts "Player 1 its your turn"
	response = gets.chomp.to_i
	case response
	when 1
		@board [0][0] = 1
	when 2
		@board [0][1] = 1
	when 3
		@board [0][2] = 1
	when 4
		@board [1][0] = 1
	when 5
		@board [1][1] = 1
	when 6
		@board [1][2] = 1
	when 7
		@board [2][0] = 1
	when 8
		@board [2][1] = 1
	when 9
		@board [2][2] = 1
	end
end 
def response_grabber2
	puts "Player 2 its your turn!"
	response = gets.chomp.to_i
	case response
	when 1
		@board [0][0] = 2
	when 2
		@board [0][1] = 2
	when 3
		@board [0][2] = 2
	when 4
		@board [1][0] = 2
	when 5
		@board [1][1] = 2
	when 6
		@board [1][2] = 2
	when 7
		@board [2][0] = 2
	when 8
		@board [2][1] = 2
	when 9
		@board [2][2] = 2
	end
end 

def check_win player
	if @board[0][0] == player && @board[0][1] == player && @board[0][2]
		puts "Player #{player} wins!"
		@gameon = false
	elsif @board[1][0] == player && @board[1][1] == player && @board[1][2]
		puts "Player #{player} wins!"
		@gameon = false
	elsif @board[2][0] == player && @board[2][1] == player && @board[2][2]
		puts "Player #{player} wins!"
		@gameon = false
	elsif @board[0][0] == player && @board[1][1] == player && @board[2][2]
		puts "Player #{player} wins!"
		@gameon = false
	elsif @board[0][1] == player && @board[1][1] == player && @board[1][2]
		puts "Player #{player} wins!"
		@gameon = false
	elsif @board[0][2] == player && @board[2][1] == player && @board[2][2]
		puts "Player #{player} wins!"
		@gameon = false
		
end

while true
	display_board
	#if not player 1 makes a choice
	#save his choice
	#check to see if he won, if so end the game
	response_grabber1
	check_win 1
	display_board
		if @gameon == false
			break
		end
	#if not player 2 makes a choice
	#save his choice
	#check to see if he won, if so end the game
	response_grabber2
	check_win 2
end 

#board.each do |row|
	#game_row = ""
	#row.each do |square|
		#USING A CASE STATEMENT
		#case square
		#when 0
			#game_row += ' |'
		#when 1
			#game_row += 'X|'
		#when 2
			#game_row += 'O|'
		#end
	#end
	#puts game_row
#end



#repeat line 5 through 11


