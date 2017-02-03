
def choose(n, k):
    if k == 0 or n == k:
        return 1
    elif n == 1:
        return k
    else:
        return choose(n-1, k-1) + choose(n-1, k)

print ("Number of 5 card hands from 52 card deck:", choose(52, 5))
print ("Number of 2 card blackjack hands from 3 52-card decks:", choose(156, 2))
print("thing i actually know", choose(7,3))
