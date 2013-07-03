module BaseType
  extend ActiveSupport::Concern

  module ClassMethods
    def model_name
      superclass.model_name
    end

    def name
      superclass.name
    end

    def permit(*args)
      @_args = args
    end

    def _args
      @_args
    end
  end

  def assign_attributes(attrs = {})
    p '===attrs==='
    p attrs
    raise ArgumentError, "expected hash" if attrs.nil?
    p '===permitted attrs==='
    permitted_attrs = attrs.send :permit, self.class._args
    p permitted_attrs
    super(permitted_attrs)
  end
end