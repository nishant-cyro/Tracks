module Calling
  def self.included(klass)
    klass.instance_eval do
      def before_calling(*args)
        @@before_calling_array = []
        
        args.each do |func_name|
          if func_name.class == Symbol || func_name.class == String
            @@before_calling_array << func_name
          elsif func_name.class == Hash
            @@before_calling_only_array = func_name['only'] || []
            @@before_calling_except_array = func_name['except'] || []
          end
        end
      end 

      def after_calling(*args)
        @@after_calling_array = []
        
        args.each do |func_name|
          if func_name.class == Symbol || func_name.class == String
            @@after_calling_array << func_name
          elsif func_name.class == Hash
            @@after_calling_only_array = func_name['only'] || []
            @@after_calling_except_array = func_name['except'] || []
          end
        end
      end 
    end


    def klass.method_added(name)
      if @@before_calling_array.rindex(name).nil? && @@after_calling_array.rindex(name).nil?
        return if @_adding_a_method
        @_adding_a_method = true
   
        original_method = "original_#{name}"
        alias_method original_method, name

        define_method(name) do |*args|
          if (@@before_calling_only_array.empty? && @@before_calling_except_array.empty?) || ( !@@before_calling_only_array.empty? && !@@before_calling_only_array.rindex(name).nil?) || ( !@@before_calling_except_array.empty? && @@before_calling_except_array.rindex(name).nil?)
            @@before_calling_array.each do |before_func|
              send before_func
            end
          end
    
          result = send original_method, *args
    
          if (@@after_calling_only_array.empty? && @@after_calling_except_array.empty?) || (!@@after_calling_only_array.empty? && !@@after_calling_only_array.rindex(name).nil?) || (!@@after_calling_except_array.empty? && @@after_calling_except_array.rindex(name).nil?)
            @@after_calling_array.each do |after_func|
              send after_func
            end
          end
      
          result
        end
        @_adding_a_method = false
      end
    end
  end 
end

class Test
include Calling

  before_calling :foo, 'only' => [:greet]
  after_calling :bar, 'except' => [:greet]

    def foo
      puts "foo"
    end

    def bar
      puts "bar"
    end

    def test_calling
      puts "test_calling"
    end

    def greet
      puts "greet"
    end

    def name
      puts "name"
    end
end

t = Test.new
t.greet
t.name