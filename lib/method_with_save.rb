require "method_with_save/version"

module MethodWithSave
  def method_missing(method_name, *args)
    if /^(.+)_with_save(\!?)$/.match(method_name)
      if defined? $1
        send($1,*args)
        if $2.blank?
          return self.save
        else
          return self.save!
        end
      end
    end

    if /^(.+)_with_save_without_validate(\!?)$/.match(method_name)
      if defined? $1
        send($1,*args)
        if $2.blank?
          return self.save(:validate=>false)
        else
          return self.save!(:validate=>false)
        end
      end
    end
    super
  end

end
