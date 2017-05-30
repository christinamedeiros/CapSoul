namespace :db do
    desc "Seeds Development Data"
  # include production before dev and maybe rename file to seeds.rb
    task images: :environment do

      load(File.join(Rails.root, 'db', "seeds.rb"))

    end
end
