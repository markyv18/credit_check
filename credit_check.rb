class CreditCheck

  def initialize
    @doubled_every_other = []
  end

  def cc_check(card_number)
    cc = card_number.reverse.split(//)
    check_digit = cc.shift
    cc.each_with_index do |num, index|
      if index.even?
        num = num.to_i * 2
      else
        num = num.to_i
      end

      if num > 9
        if_two_digits = num.to_s.splits(//)
        num = if_two_digits[0].to_i + if_two_digits[1].to_i
      end
      @doubled_every_other << num
    end

    sum = @doubled_every_other.reduce(:+)
    total = sum + check_digit.to_i
    if total % 10 == 0
      p "The number is valid."
    else
      p "The number is invalid."
    end
  end
end

check = CreditCheck.new
check.cc_check("4929735477250543")
# switch last digit to something other than 3 to create an invalid number.
