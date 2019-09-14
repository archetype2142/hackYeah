class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories
  has_many :sub_categories

  def adventure
  	return if categories.nil?
  	true if categories.where(name: 'adventure').any?
  end

  def business
  	return if categories.nil?
  	true if categories.where(name: 'business').any?
  end

  def leisure
  	return if categories.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def culture
  	return if categories.nil?
  	true if categories.where(name: 'culture').any?
  end

  def family
  	return if categories.nil?
  	true if categories.where(name: 'family').any?
  end

  def sports
  	return if categories.nil?
  	true if categories.where(name: 'sports').any?
  end
end
