### Generated by rprotoc. DO NOT EDIT!
### <proto file: protobuf\dota_commonmessages.proto>
# package google.protobuf;
# enum EDOTAChatWheelMessage {
# 	k_EDOTA_CW_Ok = 0;
# 	k_EDOTA_CW_Care = 1;
# 	k_EDOTA_CW_GetBack = 2;
# 	k_EDOTA_CW_NeedWards = 3;
# 	k_EDOTA_CW_Stun = 4;
# 	k_EDOTA_CW_Help = 5;
# 	k_EDOTA_CW_Push = 6;
# 	k_EDOTA_CW_GoodJob = 7;
# 	k_EDOTA_CW_Missing = 8;
# 	k_EDOTA_CW_Missing_Top = 9;
# 	k_EDOTA_CW_Missing_Mid = 10;
# 	k_EDOTA_CW_Missing_Bottom = 11;
# }
# 
# enum EDOTAStatPopupTypes {
# 	k_EDOTA_SPT_Textline = 0;
# 	k_EDOTA_SPT_Basic = 1;
# 	k_EDOTA_SPT_Poll = 2;
# }
# 
# message CDOTAMsg_LocationPing {
# 	optional int32 x = 1;
# 	optional int32 y = 2;
# 	optional int32 target = 3;
# 	optional bool direct_ping = 4;
# 	optional int32 type = 5;
# }
# 
# message CDOTAMsg_ItemAlert {
# 	optional int32 x = 1;
# 	optional int32 y = 2;
# 	optional int32 itemid = 3;
# }
# 
# message CDOTAMsg_MapLine {
# 	optional int32 x = 1;
# 	optional int32 y = 2;
# 	optional bool initial = 3;
# }
# 
# message CDOTAMsg_WorldLine {
# 	optional int32 x = 1;
# 	optional int32 y = 2;
# 	optional int32 z = 3;
# 	optional bool initial = 4;
# 	optional bool end = 5;
# }
# 
# message CDOTAMsg_SendStatPopup {
# 	optional EDOTAStatPopupTypes style = 1 [default = k_EDOTA_SPT_Textline];
# 	repeated string stat_strings = 2;
# 	repeated int32 stat_images = 3;
# }
# 

require_relative 'protobuf/message/message'
require_relative 'protobuf/message/enum'
require_relative 'protobuf/message/service'
require_relative 'protobuf/message/extend'

module D2Parser
  module Proto
    class EDOTAChatWheelMessage < ::Protobuf::Enum
      defined_in __FILE__
      K_EDOTA_CW_Ok = value(:k_EDOTA_CW_Ok, 0)
      K_EDOTA_CW_Care = value(:k_EDOTA_CW_Care, 1)
      K_EDOTA_CW_GetBack = value(:k_EDOTA_CW_GetBack, 2)
      K_EDOTA_CW_NeedWards = value(:k_EDOTA_CW_NeedWards, 3)
      K_EDOTA_CW_Stun = value(:k_EDOTA_CW_Stun, 4)
      K_EDOTA_CW_Help = value(:k_EDOTA_CW_Help, 5)
      K_EDOTA_CW_Push = value(:k_EDOTA_CW_Push, 6)
      K_EDOTA_CW_GoodJob = value(:k_EDOTA_CW_GoodJob, 7)
      K_EDOTA_CW_Missing = value(:k_EDOTA_CW_Missing, 8)
      K_EDOTA_CW_Missing_Top = value(:k_EDOTA_CW_Missing_Top, 9)
      K_EDOTA_CW_Missing_Mid = value(:k_EDOTA_CW_Missing_Mid, 10)
      K_EDOTA_CW_Missing_Bottom = value(:k_EDOTA_CW_Missing_Bottom, 11)
    end
    class EDOTAStatPopupTypes < ::Protobuf::Enum
      defined_in __FILE__
      K_EDOTA_SPT_Textline = value(:k_EDOTA_SPT_Textline, 0)
      K_EDOTA_SPT_Basic = value(:k_EDOTA_SPT_Basic, 1)
      K_EDOTA_SPT_Poll = value(:k_EDOTA_SPT_Poll, 2)
    end
    class CDOTAMsg_LocationPing < ::Protobuf::Message
      defined_in __FILE__
      optional :int32, :x, 1
      optional :int32, :y, 2
      optional :int32, :target, 3
      optional :bool, :direct_ping, 4
      optional :int32, :type, 5
    end
    class CDOTAMsg_ItemAlert < ::Protobuf::Message
      defined_in __FILE__
      optional :int32, :x, 1
      optional :int32, :y, 2
      optional :int32, :itemid, 3
    end
    class CDOTAMsg_MapLine < ::Protobuf::Message
      defined_in __FILE__
      optional :int32, :x, 1
      optional :int32, :y, 2
      optional :bool, :initial, 3
    end
    class CDOTAMsg_WorldLine < ::Protobuf::Message
      defined_in __FILE__
      optional :int32, :x, 1
      optional :int32, :y, 2
      optional :int32, :z, 3
      optional :bool, :initial, 4
      optional :bool, :end, 5
    end
    class CDOTAMsg_SendStatPopup < ::Protobuf::Message
      defined_in __FILE__
      optional :EDOTAStatPopupTypes, :style, 1, :default => :k_EDOTA_SPT_Textline
      repeated :string, :stat_strings, 2
      repeated :int32, :stat_images, 3
    end
  end
end