module MyModule
  module MyNewModule
    def chained_alaising *args

      args.each do |func_name|
        if private_method_defined? func_name
          type = 'private'
        elsif protected_method_defined? func_name
          type = 'protected'
        else
          type = 'public'
        end

        func_name = func_name.to_s
        func_with_logger = func_name[/[a-z]+/] + "_with_logger" + (func_name[/[!?]/] || '')
        func_without_logger = func_name[/[a-z]+/] + "_without_logger" + (func_name[/[!?]/] || '')
          
          
        alias_method func_without_logger, func_name

        define_method(func_with_logger) do |*args|
          puts "--logging start"
          result = send func_without_logger, *args
          puts "--logging stop"
          result
        end

        alias_method  func_name,func_with_logger

        send(type,func_with_logger)
      end
    end
  end

  def self.included(klass)
    klass.extend MyNewModule
  end
end
