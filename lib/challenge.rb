def calc(expr)
  if expr.length == 0
    return 0
  end
  operator = expr.split(' ')[-1].to_sym
  return expr.split(' ')[0].to_f.public_send(operator, expr.split(' ')[1].to_f)
end
