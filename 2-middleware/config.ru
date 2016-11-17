class CatId
  def initialize(app); @app = app; end
  def call(env)
    result = @app.call(env)
    result[1]['X-CatName'] = %w{ Angora Persia Bobtail }.sample
    result
  end
end

class Meow
  def call(env)
    [200, {}, ['Miaw']]
  end
end

use CatId
run Meow.new
