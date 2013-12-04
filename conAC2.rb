#!/usr/bin/env ruby
# coding: utf-8

require 'rubygems'  
require 'active_record'  

ActiveRecord::Base.establish_connection(  
  :adapter => "mysql2",  
  :host => "172.16.207.130",  
  :database => "logger",
  :username => "ggoral",
  :password => "logger"  
  )  
  
# show tables;
ActiveRecord::Base.connection.tables.each do |table|
  puts table
end

class Interaction_log < ActiveRecord::Base
  def self.inheritance_column
     nil
  end
end

ilog = Interaction_log.find(1270)

