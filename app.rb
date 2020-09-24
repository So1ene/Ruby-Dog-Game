# frozen_string_literal: true

require_relative 'dogrepository'
require_relative 'controller'
require_relative 'router'
require_relative 'gamerouter'
require_relative 'view'
require 'csv'

view = View.new
CSV.open('dogs.csv', 'a+')
repo = Repository.new(File.join(__dir__, 'dogs.csv'))
controller = Controller.new(repo)
router = Router.new(controller, view)

router.run
