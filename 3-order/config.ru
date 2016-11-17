require 'pry'

class EaterBase
  def initialize(app)
    puts "Initialized with app name: #{app.name}"
    @app = app
  end
end

class Eater1 < EaterBase
  def call(env)
    puts 'CUMI DIGORENGGG'
    @app.call(env)
  end
  def name; 'Eater1'; end
end

class Eater2 < EaterBase
  def call(env)
    @app.call(env)
  end
  def name; 'Eater2'; end
end

class Meow
  def call(env)
    [200, {}, ['Miaw']]
  end
  def name
    'Meower'
  end
end

use Eater1
use Eater2
run Meow.new

$stdout.sync = true
