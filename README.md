# Chess

### How the game is played
1. Two players start the game. Each with 16 pieces, on a gridded board with 64 squares.
2. The white pieces start first, then black until the game is over.
3. Pieces rules (obviously cant take friendly peices)
    - Pawn
        - first move can be 1 or 2, after the first move, 1 at a time
        - cant move if there is a piece directly in front of it
        - en pessant (not worried about that at the moment)
        - takes diagonally
    - Rook
        - horizontally or vertically 
    - Bishop
        - diagonally 
    - Knight
        - L shaped movements, can jump, but not land on own peices
    - Queen
        - horizontally or vertically or diagonally
    - King
        - any direction once
        - King cannont move into check
        - if king is in check he has to move out of it
            - game over if he cant


### Initial thoughts (archetecture of gameplay)
- there are several jobs that need to be done
    - getting valid moves
        - including captures, special moves(pawn)
    - holding position values
    - game logic
        - I think this is were bulk of the jobs will be done
            - after everymove, get input of what peice players wants to move and then go from there
    

### What classes do i need:
