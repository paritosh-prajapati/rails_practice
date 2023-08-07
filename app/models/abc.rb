class MyValidator < ActiveModel::Validator
    def validate(record)
      unless record.product_name.start_with? 'A'
        record.errors.add :name, "Need a name starting with A please!"
      end
    end
end