class Note 
  attr_reader :header

  def initialize(header)
    @header = header
  end

  def body
    @body
  end

  def add_body(body)
    @body = body
  end
end