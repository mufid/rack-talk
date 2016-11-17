class Meow
  def call(env)
    [200, {}, ['Miaw']]
  end
end

run Meow.new
