card = 75

bingo = fn
  (75) -> "bingo!"
  (_) -> "no win."
end

card = bingo.(card)
IO.puts card
bingo = bingo.(card)
IO.puts bingo
card = bingo.(card)
