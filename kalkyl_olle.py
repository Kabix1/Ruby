def calc(input_string):
    operations = ["+", "-", "*", "/", "^"]
    for ops in operations:
        if input_string.find(ops) >= 0:
            segmented_input = input_string.split(ops)
            total = calc(segmented_input[0])
            for segment in segmented_input[1:]:
                if ops == "+":
                    total += calc(segment)
                elif ops == "-":
                    total -= calc(segment)
                elif ops == "*":
                    total *= calc(segment)
                elif ops == "/":
                    total /= calc(segment)
                elif ops == "^":
                    total = total ** calc(segment)
            return total
    return float(input_string)
print calc(raw_input())
