class SubCategory < ApplicationRecord

	ADVENTURE ||= %w[ extreme safari sightseeing mountains gamble party ]
	LEISURE ||= %w[ sunbathing spa massage food sightseeing gamble party relax romantic ]
	CULTURE ||= %w[ art history music_perfomance ]
	FAMILY ||= %w[ food amusement animations water_parks amusement nursery ]
	SPORTS ||= %w[ water_sports winter_sports solo trekking ]
	BUSINESS ||= %w[]

	belongs_to :category, optional: true
	belongs_to :user

  validates :name, uniqueness: true
  def extreme
  	return if category.nil?
  	true if where(name: 'adventure').any?
  end

  def safari
  	return if category.nil?
  	true if where(name: 'business').any?
  end

  def sightseeing
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def mountains
  	return if category.nil?
  	true if categories.where(name: 'culture').any?
  end

  def gamble
  	return if category.nil?
  	true if categories.where(name: 'family').any?
  end

  def party
  	return if category.nil?
  	true if categories.where(name: 'sports').any?
  end

  def sunbathing
  	return if category.nil?
  	true if categories.where(name: 'adventure').any?
  end

  def spa
  	return if category.nil?
  	true if categories.where(name: 'business').any?
  end

  def massage
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def food
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def sightseeing
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def relax
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def romantic
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def art
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def history
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def music_perfomance
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def amusement
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def animations
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def water_parks
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def nursery
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def water_sports
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def winter_sports
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def solo
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def trekking
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end
end
