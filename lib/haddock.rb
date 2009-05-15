# A more memorable password generator. Swordfish? No, I got tired of that. I
# changed it.
module Haddock
  VERSION = '0.2.1'

  module Password
    MINIMUM = 8
    MAXIMUM = 31
    DEFAULT = 12

    SYMBOLS = '`~!@#$%^&*()-_=+[{]}\\|;:\'",<.>/?'

    class << self
      @@paths = %w(/usr/share/dict/words /usr/share/words)

      # Generates a more memorable password. Its one optional argument
      # determines the length of the generated password, and cannot be less
      # than 8 or greater than 31 characters (default: 12).
      #
      #   Password.generate     # => "bowl9&bracky"
      #   Password.generate(30) # => "Phlebotomus2473?nonconditioned"
      #   Password.generate(8)  # => "amy7@rax"
      def generate(length = DEFAULT)
        unless defined? @@diction
          self.diction = @@paths.find { |path| File.exist? path }
        end

        raise LengthError, "Invalid length" unless length.is_a? Integer
        raise LengthError, "Password length is too short" if length < MINIMUM
        raise LengthError, "Password length is too long" if length > MAXIMUM

        words_limit = length * 0.75 # Ensure over-proportionate word lengths.

        begin
          words = %W(#{random_word} #{random_symbol}#{random_word})
          words_length = words.join.length
        end until words_length < length && words_length > words_limit

        words.join random_number(length - words_length)
      end

      # Sets the dictionary. Uses "/usr/share/dict/words" or
      # "/usr/share/words" otherwise.
      #
      #   Password.diction = File.expand_path(__FILE__) + "/my_words.txt"
      def diction=(path)
        @@diction = IO.readlines path
      rescue TypeError
        raise NoWordsError, "No words file found"
      rescue Errno::ENOENT
        raise NoWordsError, "No words file at #{path.inspect}"
      end

      private

      def random_word
        @@diction[rand(@@diction.length)].chomp
      end

      def random_symbol
        SYMBOLS[rand(SYMBOLS.length), 1]
      end

      def random_number(digits)
        begin
          number = rand(10 ** digits).to_s
        end until number.length == digits

        number
      end
    end

    # Raised if a password is generated with too few or too many characters.
    class LengthError < ArgumentError
    end

    # Raised if no words file is found.
    class NoWordsError < StandardError
    end
  end
end
