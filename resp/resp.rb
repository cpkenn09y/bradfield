class RESP

  def self.encode(value)

    if value.class == String

      if value.include?('\n')
        return '-ERR illegal character \n'
      end

      if value.include?('\r')
        return '-ERR illegal character \r'
      end

      "+#{value}\\r\\n"
    end

  end

end
