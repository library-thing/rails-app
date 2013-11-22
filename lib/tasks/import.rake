desc "Imports a CSV file into an ActiveRecord table"
task :csv_model_import, [:filename] => :environment do |task,args|
  lines = File.new(args[:filename]).readlines
  # header = lines.shift.strip
  # keys = header.split(',')
  lines.each do |line|
    values = line.strip.split(',')
    book = Book.create(title: values[0], edition: values[1], series: values[2], authors: values[3], library_id: 1, available: true)
    puts book
    # attributes = Hash[keys.zip values]
    # Module.const_get(args[:model]).create(attributes)
  end
end