dr_chrono_2.rb

num_lines = gets.strip.to_i
records = Hash.new(nil)
 
(0..num_lines).each do |line|
    create_record(line)
    # create then add record to records hash
end

def create_record(line)
    social_number = line.match /\d\d\d\d\d\d\d\d\d/
end
