class RESP

  def self.encode(value)
    case "#{value.class}"
    when "String"

      if value.include?('\n')
        return '-ERR illegal line feed character\r\n'
      end

      if value.include?('\r')
        return '-ERR illegal carriage return character\r\n'
      end

      return "+#{value}\\r\\n"
    when "Fixnum"
      return ":#{value}\\r\\n"
    end

  end

end
