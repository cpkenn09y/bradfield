class RESP

  def self.encode(value)

    if value.class == String

      if value.include?('\n')
        return '-ERR illegal character \n'
      end
      "+#{value}\\r\\n"
    end

  end

end
