module MyObjectStore
  def self.included(klass)
    
    new_klass = class << klass
      self
    end

    def klass.validate_presence_of *args
      @@validate_attributes = args
    end


    klass.instance_variables.each do |variable|
      new_klass.instance_eval do
        define_method("find_by_" + variable.slice(1, variable.size-1)) do |*args|
          selected_objects = []
          @@object_store ||= []
          @@object_store.each do |object|
            if !args.rindex(object.instance_variable_get(variable)).nil?
              selected_objects << object
            end
          end
          puts selected_objects
        end

        define_method("collect") do
          puts @@object_store
        end

        define_method("count") do 
          puts @@object_store.size
        end
      end
    end
  end


  def save
    @@validate_attributes.each do |attribute|
      if instance_variable_get('@' + attribute.to_s).nil?
        raise "#{attribute} is nil"
      end
    end

    validate() if self.class.method_defined?(:validate)

    @@object_store ||= []
    @@object_store << self

    rescue Exception => e
    puts e.message
    @error_message = e.message 
  end
end
