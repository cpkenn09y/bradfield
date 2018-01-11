class RESP

  def self.encode(value)

    if value.class == String

      if value.include?('\n')
        return '-ERR illegal line feed character\r\n'
      end

      if value.include?('\r')
        return '-ERR illegal carriage return character\r\n'
      end

      "+#{value}\\r\\n"
    end

  end

end
