import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UserInfo {
    String accountId;
    String appRegistrationId;
    int companyId;
    String email;
    String headPath;
    String headUrl;
    int id;
    String lastLoginAddress;
    String lastLoginIp;
    String lastLoginTime;
    String mobile;
    String nickname;
    int partnerType;
    int realAuthStatus;
    String realUserName;
    String token;
    int tradePwdStatus;
    List<UserAccessResourceVo> userAccessResourceVos;
    List<UserAccessSysMainBodyResourceVo> userAccessSysMainBodyResourceVos;
    int userDetailId;
    String userName;
    int userSource;
    int userStatus;
    int userType;
    List<UserType> userTypeList;

    UserInfo({this.accountId, this.appRegistrationId, this.companyId, this.email, this.headPath, this.headUrl, this.id, this.lastLoginAddress, this.lastLoginIp, this.lastLoginTime, this.mobile, this.nickname, this.partnerType, this.realAuthStatus, this.realUserName, this.token, this.tradePwdStatus, this.userAccessResourceVos, this.userAccessSysMainBodyResourceVos, this.userDetailId, this.userName, this.userSource, this.userStatus, this.userType, this.userTypeList});

    factory UserInfo.fromJson(Map<String, dynamic> json) {
        return UserInfo(
            accountId: json['accountId'],
            appRegistrationId: json['appRegistrationId'],
            companyId: json['companyId'],
            email: json['email'],
            headPath: json['headPath'],
            headUrl: json['headUrl'],
            id: json['id'],
            lastLoginAddress: json['lastLoginAddress'],
            lastLoginIp: json['lastLoginIp'],
            lastLoginTime: json['lastLoginTime'],
            mobile: json['mobile'],
            nickname: json['nickname'],
            partnerType: json['partnerType'],
            realAuthStatus: json['realAuthStatus'],
            realUserName: json['realUserName'],
            token: json['token'],
            tradePwdStatus: json['tradePwdStatus'],
            userAccessResourceVos: json['userAccessResourceVos'] != null ? (json['userAccessResourceVos'] as List).map((i) => UserAccessResourceVo.fromJson(i)).toList() : null,
            userAccessSysMainBodyResourceVos: json['userAccessSysMainBodyResourceVos'] != null ? (json['userAccessSysMainBodyResourceVos'] as List).map((i) => UserAccessSysMainBodyResourceVo.fromJson(i)).toList() : null,
            userDetailId: json['userDetailId'],
            userName: json['userName'],
            userSource: json['userSource'],
            userStatus: json['userStatus'],
            userType: json['userType'],
            userTypeList: json['userTypeList'] != null ? (json['userTypeList'] as List).map((i) => UserType.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountId'] = this.accountId;
        data['appRegistrationId'] = this.appRegistrationId;
        data['companyId'] = this.companyId;
        data['email'] = this.email;
        data['headPath'] = this.headPath;
        data['headUrl'] = this.headUrl;
        data['id'] = this.id;
        data['lastLoginAddress'] = this.lastLoginAddress;
        data['lastLoginIp'] = this.lastLoginIp;
        data['lastLoginTime'] = this.lastLoginTime;
        data['mobile'] = this.mobile;
        data['nickname'] = this.nickname;
        data['partnerType'] = this.partnerType;
        data['realAuthStatus'] = this.realAuthStatus;
        data['realUserName'] = this.realUserName;
        data['token'] = this.token;
        data['tradePwdStatus'] = this.tradePwdStatus;
        data['userDetailId'] = this.userDetailId;
        data['userName'] = this.userName;
        data['userSource'] = this.userSource;
        data['userStatus'] = this.userStatus;
        data['userType'] = this.userType;
        if (this.userAccessResourceVos != null) {
            data['userAccessResourceVos'] = this.userAccessResourceVos.map((v) => v.toJson()).toList();
        }
        if (this.userAccessSysMainBodyResourceVos != null) {
            data['userAccessSysMainBodyResourceVos'] = this.userAccessSysMainBodyResourceVos.map((v) => v.toJson()).toList();
        }
        if (this.userTypeList != null) {
            data['userTypeList'] = this.userTypeList.map((v) => v.toJson()).toList();
        }
        return data;
    }
}
@JsonSerializable()
class UserAccessSysMainBodyResourceVo {
    String resCode;
    String resName;
    int sysMainBodyId;
    int userId;

    UserAccessSysMainBodyResourceVo({this.resCode, this.resName, this.sysMainBodyId, this.userId});

    factory UserAccessSysMainBodyResourceVo.fromJson(Map<String, dynamic> json) {
        return UserAccessSysMainBodyResourceVo(
            resCode: json['resCode'],
            resName: json['resName'],
            sysMainBodyId: json['sysMainBodyId'],
            userId: json['userId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['resCode'] = this.resCode;
        data['resName'] = this.resName;
        data['sysMainBodyId'] = this.sysMainBodyId;
        data['userId'] = this.userId;
        return data;
    }
}
@JsonSerializable()
class UserAccessResourceVo {
    int organizationId;
    String resCode;
    String resName;
    int sysMainBodyId;
    int userId;

    UserAccessResourceVo({this.organizationId, this.resCode, this.resName, this.sysMainBodyId, this.userId});

    factory UserAccessResourceVo.fromJson(Map<String, dynamic> json) {
        return UserAccessResourceVo(
            organizationId: json['organizationId'],
            resCode: json['resCode'],
            resName: json['resName'],
            sysMainBodyId: json['sysMainBodyId'],
            userId: json['userId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['organizationId'] = this.organizationId;
        data['resCode'] = this.resCode;
        data['resName'] = this.resName;
        data['sysMainBodyId'] = this.sysMainBodyId;
        data['userId'] = this.userId;
        return data;
    }
}
@JsonSerializable()
class UserType {
    String partnerTypeCode;
    String partnerTypeName;
    int userId;
    String userName;
    int usersTypeId;

    UserType({this.partnerTypeCode, this.partnerTypeName, this.userId, this.userName, this.usersTypeId});

    factory UserType.fromJson(Map<String, dynamic> json) {
        return UserType(
            partnerTypeCode: json['partnerTypeCode'],
            partnerTypeName: json['partnerTypeName'],
            userId: json['userId'],
            userName: json['userName'],
            usersTypeId: json['usersTypeId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['partnerTypeCode'] = this.partnerTypeCode;
        data['partnerTypeName'] = this.partnerTypeName;
        data['userId'] = this.userId;
        data['userName'] = this.userName;
        data['usersTypeId'] = this.usersTypeId;
        return data;
    }
}