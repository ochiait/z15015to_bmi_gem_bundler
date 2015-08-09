require "bmi_gem_bundler/version"

module BmiGemBundler
def self.BMI
puts "あなたの体重(kg)は？"
weight = gets.to_i
puts "あなたの身長(m)は？"
height = gets.to_f
bmi = weight / (height * height)
puts "あなたのBMIは#{bmi}です。"
end
end
