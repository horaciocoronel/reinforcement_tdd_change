require 'pry'
class Changer

  def self.make_change(amount)
    coins = [1, 5, 10, 25]
    change = []
    amount_remaining = amount
      if coins.include?(amount)
        change << amount
      else
        while amount_remaining > 0
          if (amount_remaining / coins.max) >= 1
              number_of_coins = (amount_remaining / coins.max)
              number_of_coins.to_i
              number_of_coins.times do
                change << coins.max
                end
            amount_remaining -= coins.max * number_of_coins
            coins.pop
            # binding.pry
            else
              coins.pop
            end
          end
      end
    return change
  end

end
