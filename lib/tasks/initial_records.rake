namespace :db do
  namespace :choices do
    namespace :create do
      desc "Create all initial choices in db"
      task all: [:languages, :settings]

      desc "Create languages"
      task languages: :environment do
        create_choices(Language, %w(English French))
      end

      desc "Create settings"
      task settings: :environment do
        create_choices(Setting, %w(Conference Court Healthcare))
      end

      desc "Create difficulties"
      task difficulties: :environment do
        create_choices(Difficulty, %w(Beginner Intermediate Advanced))
      end

      desct "Create speeds"
      task speeds: :environment do
        create_choices(Speed, %w(Slow Medium Fast))
      end

      def create_choices(model_class, choices)
        $stderr.puts "Creating records for #{model_class.to_s}:"
        choices.each do |choice|
          attrs = {name: choice}
          if model_class.exists?(attrs)
            $stderr.puts "Record already exists with attributes: #{attrs}"
          else
            model = model_class.create!(attrs)
            $stderr.puts "Created record: #{model}"
          end
        end
      end
    end
  end
end