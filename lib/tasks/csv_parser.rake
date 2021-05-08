require "csv"

desc "make some recipes"
task :get_recipes, [:file_path] do |t, args|
  CSV.foreach(args[:file_path]) do |row|
    date = row[0]
    puts date if date.present?
    # full_date = Date.strptime(date, "%m/%d/%y") if date.present?
    title = row[1]
    source = row[2]
    link = row[6]

    # puts "i made a #{title.titleize} from #{source} on #{full_date}, see it here: #{link}"
  end
end
