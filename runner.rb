require_relative 'lib/demo.pb.rb'

class Replay
	BYTE_LENGTH = 8
	BYTE_OFFSET = 4

	attr_accessor :file

	def initialize(filename)
		@file = File.new(filename, 'rb')
	end

	def parse
		demo = D2Parser::Proto::CDemoFileHeader.new
		
		
		literal = @file.read(8)
		offset = @file.read(4).unpack("s<")[0]
		offsetdata = @file.seek(offset)

		kind = Protobuf::Decoder.read_varint(@file)
		cmds = D2Parser::Proto::EDemoCommands.new
		comp = kind & cmds.DEM_IsCompressed.to_i
		tick = Protobuf::Decoder.read_varint(@file)
		size = Protobuf::Decoder.read_varint(@file)
		message = @file.read(size)
		# puts kind
		# puts "#{comp}"
		# puts tick
		# puts size

	end

end
replay = Replay.new('test.dem')

puts replay.parse

