class User {
  String? tag;
  bool? success;

  int? serverRecordId;

  int? totalRecord;
  int? pageNo;
  int? pageSize;
  ApiPacket? apiPacket;
  int? status;

  User({this.tag, this.success, this.serverRecordId, this.totalRecord, this.pageNo, this.pageSize, this.apiPacket, this.status});

  User.fromJson(Map<String, dynamic> json) {
    tag = json['Tag'];
    success = json['Success'];

    serverRecordId = json['ServerRecordId'];

    totalRecord = json['TotalRecord'];
    pageNo = json['PageNo'];
    pageSize = json['PageSize'];
    apiPacket = json['ApiPacket'] != null ? new ApiPacket.fromJson(json['ApiPacket']) : null;
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['Tag'] = this.tag;
    data['Success'] = this.success;

    data['ServerRecordId'] = this.serverRecordId;

    data['TotalRecord'] = this.totalRecord;
    data['PageNo'] = this.pageNo;
    data['PageSize'] = this.pageSize;
    if (this.apiPacket != null) {
      data['ApiPacket'] = this.apiPacket!.toJson();
    }
    data['Status'] = this.status;
    return data;
  }
}

class ApiPacket {
  Packet? packet;
  Null? packetList;

  ApiPacket({this.packet, this.packetList});

  ApiPacket.fromJson(Map<String, dynamic> json) {
    packet = json['Packet'] != null ? new Packet.fromJson(json['Packet']) : null;
    packetList = json['PacketList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.packet != null) {
      data['Packet'] = this.packet!.toJson();
    }
    data['PacketList'] = this.packetList;
    return data;
  }
}

class Packet {
  String? id;
  String? email;
  int? userId;
  int? isActive;
  String? fullName;
  String? createDate;
  String? editDate;
  String? message;

  String? username;
  String? token;
  String? deviceId;

  String? password;

  String? authinticationType;

  Packet({
    this.id,
    this.email,
    this.userId,
    this.isActive,
    this.fullName,
    this.createDate,
    this.editDate,
    this.message,
    this.username,
    this.token,
    this.deviceId,
    this.password,
    this.authinticationType,
  });

  Packet.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    userId = json['UserId'];
    isActive = json['IsActive'];
    fullName = json['FullName'];
    createDate = json['CreateDate'];
    editDate = json['EditDate'];
    message = json['Message'];

    username = json['Username'];
    token = json['Token'];
    deviceId = json['DeviceId'];

    password = json['Password'];

    authinticationType = json['AuthinticationType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['UserId'] = this.userId;
    data['IsActive'] = this.isActive;
    data['FullName'] = this.fullName;
    data['CreateDate'] = this.createDate;
    data['EditDate'] = this.editDate;
    data['Message'] = this.message;

    data['Username'] = this.username;
    data['Token'] = this.token;
    data['DeviceId'] = this.deviceId;

    data['Password'] = this.password;

    data['AuthinticationType'] = this.authinticationType;

    return data;
  }
}
