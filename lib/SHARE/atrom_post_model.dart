// To parse this JSON data, do
//
//     final postkaModel = postkaModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PostkaModel postkaModelFromJson(String str) => PostkaModel.fromJson(json.decode(str));

String postkaModelToJson(PostkaModel data) => json.encode(data.toJson());

class PostkaModel {
    PostkaModel({
        required this.posts,
        required this.postlike,
        required this.commentslike,
        required this.friendSuggestions,
        required this.viewposts,
        required this.instituteSuggestions,
        required this.crowdFundingSuggestions,
        required this.companySuggestions,
        required this.pageSuggestions,
        required this.projectSuggestions,
        required this.showFriendList,
        required this.groupSuggestions,
        required this.favpostdataArr,
        required this.hidePosts,
        required this.success,
    });

    Posts posts;
    List<int> postlike;
    List<int> commentslike;
    List<Suggestion> friendSuggestions;
    List<dynamic> viewposts;
    List<Suggestion> instituteSuggestions;
    List<dynamic> crowdFundingSuggestions;
    List<Suggestion> companySuggestions;
    List<PageSuggestion> pageSuggestions;
    List<Suggestion> projectSuggestions;
    List<int> showFriendList;
    List<GroupSuggestion> groupSuggestions;
    List<int> favpostdataArr;
    List<int> hidePosts;
    bool success;

    factory PostkaModel.fromJson(Map<dynamic, dynamic> json) => PostkaModel(
        posts: Posts.fromJson(json["posts"]),
        postlike: List<int>.from(json["postlike"].map((x) => x)),
        commentslike: List<int>.from(json["commentslike"].map((x) => x)),
        friendSuggestions: List<Suggestion>.from(json["friend_suggestions"].map((x) => Suggestion.fromJson(x))),
        viewposts: List<dynamic>.from(json["viewposts"].map((x) => x)),
        instituteSuggestions: List<Suggestion>.from(json["institute_suggestions"].map((x) => Suggestion.fromJson(x))),
        crowdFundingSuggestions: List<dynamic>.from(json["crowdFunding_suggestions"].map((x) => x)),
        companySuggestions: List<Suggestion>.from(json["company_suggestions"].map((x) => Suggestion.fromJson(x))),
        pageSuggestions: List<PageSuggestion>.from(json["page_suggestions"].map((x) => PageSuggestion.fromJson(x))),
        projectSuggestions: List<Suggestion>.from(json["project_suggestions"].map((x) => Suggestion.fromJson(x))),
        showFriendList: List<int>.from(json["showFriendList"].map((x) => x)),
        groupSuggestions: List<GroupSuggestion>.from(json["group_suggestions"].map((x) => GroupSuggestion.fromJson(x))),
        favpostdataArr: List<int>.from(json["favpostdataArr"].map((x) => x)),
        hidePosts: List<int>.from(json["hidePosts"].map((x) => x)),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "posts": posts.toJson(),
        "postlike": List<dynamic>.from(postlike.map((x) => x)),
        "commentslike": List<dynamic>.from(commentslike.map((x) => x)),
        "friend_suggestions": List<dynamic>.from(friendSuggestions.map((x) => x.toJson())),
        "viewposts": List<dynamic>.from(viewposts.map((x) => x)),
        "institute_suggestions": List<dynamic>.from(instituteSuggestions.map((x) => x.toJson())),
        "crowdFunding_suggestions": List<dynamic>.from(crowdFundingSuggestions.map((x) => x)),
        "company_suggestions": List<dynamic>.from(companySuggestions.map((x) => x.toJson())),
        "page_suggestions": List<dynamic>.from(pageSuggestions.map((x) => x.toJson())),
        "project_suggestions": List<dynamic>.from(projectSuggestions.map((x) => x.toJson())),
        "showFriendList": List<dynamic>.from(showFriendList.map((x) => x)),
        "group_suggestions": List<dynamic>.from(groupSuggestions.map((x) => x.toJson())),
        "favpostdataArr": List<dynamic>.from(favpostdataArr.map((x) => x)),
        "hidePosts": List<dynamic>.from(hidePosts.map((x) => x)),
        "success": success,
    };
}

class Suggestion {
    Suggestion({
        required this.id,
        required this.firstname,
        required this.lastname,
        required this.profileImage,
        required this.coverImage,
        required this.username,
        required this.aboutme,
        required this.usertype,
        required this.isBreak,
        required this.isDeactivate,
        required this.totalposts,
        required this.totalFriends,
        required this.totalmedia,
        required this.roleId,
    });

    int id;
    String firstname;
    String lastname;
    String profileImage;
    String coverImage;
    String username;
    String aboutme;
    String usertype;
    int isBreak;
    int isDeactivate;
    int totalposts;
    int totalFriends;
    int totalmedia;
    int roleId;

    factory Suggestion.fromJson(Map<String, dynamic> json) => Suggestion(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"] == null ? null : json["lastname"],
        profileImage: json["profile_image"],
        coverImage: json["cover_image"] == null ? null : json["cover_image"],
        username: json["username"],
        aboutme: json["aboutme"] == null ? null : json["aboutme"],
        usertype: json["usertype"],
        isBreak: json["is_break"],
        isDeactivate: json["is_deactivate"],
        totalposts: json["totalposts"],
        totalFriends: json["total_friends"],
        totalmedia: json["totalmedia"],
        roleId: json["role_id"] == null ? null : json["role_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname == null ? null : lastname,
        "profile_image": profileImage,
        "cover_image": coverImage == null ? null : coverImage,
        "username": username,
        "aboutme": aboutme == null ? null : aboutme,
        "usertype": usertype,
        "is_break": isBreak,
        "is_deactivate": isDeactivate,
        "totalposts": totalposts,
        "total_friends": totalFriends,
        "totalmedia": totalmedia,
        "role_id": roleId == null ? null : roleId,
    };
}

class GroupSuggestion {
    GroupSuggestion({
        required this.id,
        required this.name,
        required this.profileImage,
        required this.description,
        required this.users,
        required this.admins,
        required this.privateKey,
        required this.createdBy,
        required this.allowToJoin,
        required this.typeOfGroup,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
        required this.leftUsers,
    });

    int id;
    String name;
    String profileImage;
    String description;
    String users;
    String admins;
    String privateKey;
    int createdBy;
    int allowToJoin;
    String typeOfGroup;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime? deletedAt;
    dynamic leftUsers;

    factory GroupSuggestion.fromJson(Map<String, dynamic> json) => GroupSuggestion(
        id: json["id"],
        name: json["name"],
        profileImage: json["profile_image"],
        description: json["description"],
        users: json["users"],
        admins: json["admins"],
        privateKey: json["private_key"],
        createdBy: json["created_by"],
        allowToJoin: json["allow_to_join"],
        typeOfGroup: json["type_of_group"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] == null ? null : DateTime.parse(json["deleted_at"]),
        leftUsers: json["left_users"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "profile_image": profileImage,
        "description": description,
        "users": users,
        "admins": admins,
        "private_key": privateKey,
        "created_by": createdBy,
        "allow_to_join": allowToJoin,
        "type_of_group": typeOfGroup,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt == null ? null : deletedAt!.toIso8601String(),
        "left_users": leftUsers,
    };
}

class PageSuggestion {
    PageSuggestion({
        required this.media,
        required this.post,
        required this.followers,
        required this.id,
        required this.firstname,
        required this.username,
        required this.aboutme,
        required this.profileImage,
        required this.coverImage,
    });

    int media;
    int post;
    int followers;
    int id;
    String firstname;
    String username;
    String aboutme;
    String profileImage;
    String coverImage;

    factory PageSuggestion.fromJson(Map<String, dynamic> json) => PageSuggestion(
        media: json["media"],
        post: json["post"],
        followers: json["followers"],
        id: json["id"],
        firstname: json["firstname"],
        username: json["username"],
        aboutme: json["aboutme"],
        profileImage: json["profile_image"] == null ? null : json["profile_image"],
        coverImage: json["cover_image"] == null ? null : json["cover_image"],
    );

    Map<String, dynamic> toJson() => {
        "media": media,
        "post": post,
        "followers": followers,
        "id": id,
        "firstname": firstname,
        "username": username,
        "aboutme": aboutme,
        "profile_image": profileImage == null ? null : profileImage,
        "cover_image": coverImage == null ? null : coverImage,
    };
}

class Posts {
    Posts({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.nextPageUrl,
        required this.path,
        required this.perPage,
        required this.prevPageUrl,
        required this.to,
        required this.total,
    });

    int currentPage;
    List<Datum> data;
    String firstPageUrl;
    int from;
    int lastPage;
    String lastPageUrl;
    String nextPageUrl;
    String path;
    int perPage;
    dynamic prevPageUrl;
    int to;
    int total;

    factory Posts.fromJson(Map<String, dynamic> json) => Posts(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class Datum {
    Datum({
        required this.name,
        required this.username,
        required this.roleId,
        required this.profileImage,
        required this.isBreak,
        required this.isDeactivate,
        required this.profilePrivacy,
        required this.id,
        required this.caption,
        required this.linkPreview,
        required this.media,
        required this.mediaType,
        required this.userId,
        required this.likes,
        required this.comments,
        required this.views,
        required this.shares,
        required this.sharedBy,
        required this.isShared,
        required this.sharedCaption,
        required this.ownerPostId,
        required this.pageId,
        required this.hideFrom,
        required this.isChainOfLove,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.isProject,
        required this.projectTeamId,
        required this.isCrowdFunding,
        required this.isAtromg8,
        required this.isCompany,
        required this.isAssociation,
        required this.privacy,
        required this.tagmembers,
        required this.sharePostId,
        required this.crowdTeamId,
        required this.pollId,
        required this.pollExpire,
        required this.pollCaption,
        required this.isChaindigger,
        required this.size,
        required this.sizearray,
        required this.height,
        required this.width,
        required this.pollStartTime,
        required this.sharefirstname,
        required this.shareProfile,
        required this.shareroleid,
        required this.sharelastname,
        required this.pageName,
        required this.pageImage,
        required this.mysharedpostid,
        required this.mysharedpagename,
        required this.ownerChainOfLove,
        required this.ownerPage,
        required this.ownerAtromg8,
        required this.ownerAssociation,
        required this.ownerCompany,
        required this.shareDataCaption,
        required this.shareDataMedia,
        required this.shareDataMediaType,
        required this.postavailable,
        required this.polloptions,
        required this.polloptionIds,
        required this.pollattemp,
        required this.totalpollans,
        required this.mediaLink,
        required this.comment,
        required this.like,
    });

    String name;
    String username;
    int roleId;
    String profileImage;
    int isBreak;
    int isDeactivate;
    int profilePrivacy;
    int id;
    String caption;
    String linkPreview;
    dynamic media;
    int mediaType;
    int userId;
    int likes;
    int comments;
    int views;
    int shares;
    int sharedBy;
    int isShared;
    String sharedCaption;
    int ownerPostId;
    dynamic pageId;
    String hideFrom;
    int isChainOfLove;
    dynamic deletedAt;
    String createdAt;
    DateTime updatedAt;
    int isProject;
    dynamic projectTeamId;
    int isCrowdFunding;
    int isAtromg8;
    int isCompany;
    int isAssociation;
    int privacy;
    String tagmembers;
    int sharePostId;
    dynamic crowdTeamId;
    dynamic pollId;
    dynamic pollExpire;
    dynamic pollCaption;
    int isChaindigger;
    String size;
    List<String>? sizearray;
    List<String>? height;
    List<String>? width;
    DateTime pollStartTime;
    String? sharefirstname;
    String shareProfile;
    int shareroleid;
    String sharelastname;
    dynamic pageName;
    dynamic pageImage;
    dynamic mysharedpostid;
    dynamic mysharedpagename;
    int ownerChainOfLove;
    dynamic ownerPage;
    int ownerAtromg8;
    int ownerAssociation;
    int ownerCompany;
    String shareDataCaption;
    dynamic shareDataMedia;
    int shareDataMediaType;
    dynamic postavailable;
    dynamic polloptions;
    dynamic polloptionIds;
    int pollattemp;
    int totalpollans;
    List<String>? mediaLink;
    List<Comment> comment;
    List<Like> like;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        username: json["username"],
        roleId: json["role_id"],
        profileImage: json["profile_image"],
        isBreak: json["is_break"],
        isDeactivate: json["is_deactivate"],
        profilePrivacy: json["profile_privacy"],
        id: json["id"],
        caption: json["caption"] == null ? null : json["caption"],
        linkPreview: json["link_preview"],
        media: json["media"],
        mediaType: json["media_type"],
        userId: json["user_id"],
        likes: json["likes"],
        comments: json["comments"],
        views: json["views"],
        shares: json["shares"],
        sharedBy: json["shared_by"] == null ? null : json["shared_by"],
        isShared: json["is_shared"],
        sharedCaption: json["shared_caption"] == null ? null : json["shared_caption"],
        ownerPostId: json["owner_post_id"] == null ? null : json["owner_post_id"],
        pageId: json["page_id"],
        hideFrom: json["hide_from"] == null ? null : json["hide_from"],
        isChainOfLove: json["is_chain_of_love"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        isProject: json["is_project"],
        projectTeamId: json["project_team_id"],
        isCrowdFunding: json["is_crowd_funding"],
        isAtromg8: json["is_atromg8"],
        isCompany: json["is_company"],
        isAssociation: json["is_association"],
        privacy: json["privacy"],
        tagmembers: json["tagmembers"] == null ? null : json["tagmembers"],
        sharePostId: json["share_postId"] == null ? null : json["share_postId"],
        crowdTeamId: json["crowd_team_id"],
        pollId: json["poll_id"],
        pollExpire: json["poll_expire"],
        pollCaption: json["poll_caption"],
        isChaindigger: json["is_chaindigger"],
        size: json["size"],
        sizearray: json["sizearray"] == null ? null : List<String>.from(json["sizearray"].map((x) => x)),
        height: json["height"] == null ? null : List<String>.from(json["height"].map((x) => x)),
        width: json["width"] == null ? null : List<String>.from(json["width"].map((x) => x)),
        pollStartTime: DateTime.parse(json["poll_start_time"]),
        sharefirstname: json["sharefirstname"] == null ? null : json["sharefirstname"],
        shareProfile: json["share_profile"] == null ? null : json["share_profile"],
        shareroleid: json["shareroleid"] == null ? null : json["shareroleid"],
        sharelastname: json["sharelastname"] == null ? null : json["sharelastname"],
        pageName: json["page_name"],
        pageImage: json["page_image"],
        mysharedpostid: json["mysharedpostid"],
        mysharedpagename: json["mysharedpagename"],
        ownerChainOfLove: json["owner_chain_of_love"] == null ? null : json["owner_chain_of_love"],
        ownerPage: json["owner_page"],
        ownerAtromg8: json["owner_atromg8"] == null ? null : json["owner_atromg8"],
        ownerAssociation: json["owner_association"] == null ? null : json["owner_association"],
        ownerCompany: json["owner_company"] == null ? null : json["owner_company"],
        shareDataCaption: json["shareData_caption"] == null ? null : json["shareData_caption"],
        shareDataMedia: json["shareData_media"],
        shareDataMediaType: json["shareData_media_type"] == null ? null : json["shareData_media_type"],
        postavailable: json["postavailable"],
        polloptions: json["polloptions"],
        polloptionIds: json["polloptionIds"],
        pollattemp: json["pollattemp"],
        totalpollans: json["totalpollans"],
        mediaLink: json["media_link"] == null ? null : List<String>.from(json["media_link"].map((x) => x)),
        comment: List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
        like: List<Like>.from(json["like"].map((x) => Like.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "role_id": roleId,
        "profile_image": profileImage,
        "is_break": isBreak,
        "is_deactivate": isDeactivate,
        "profile_privacy": profilePrivacy,
        "id": id,
        "caption": caption == null ? null : caption,
        "link_preview": linkPreview,
        "media": media,
        "media_type": mediaType,
        "user_id": userId,
        "likes": likes,
        "comments": comments,
        "views": views,
        "shares": shares,
        "shared_by": sharedBy == null ? null : sharedBy,
        "is_shared": isShared,
        "shared_caption": sharedCaption == null ? null : sharedCaption,
        "owner_post_id": ownerPostId == null ? null : ownerPostId,
        "page_id": pageId,
        "hide_from": hideFrom == null ? null : hideFrom,
        "is_chain_of_love": isChainOfLove,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
        "is_project": isProject,
        "project_team_id": projectTeamId,
        "is_crowd_funding": isCrowdFunding,
        "is_atromg8": isAtromg8,
        "is_company": isCompany,
        "is_association": isAssociation,
        "privacy": privacy,
        "tagmembers": tagmembers == null ? null : tagmembers,
        "share_postId": sharePostId == null ? null : sharePostId,
        "crowd_team_id": crowdTeamId,
        "poll_id": pollId,
        "poll_expire": pollExpire,
        "poll_caption": pollCaption,
        "is_chaindigger": isChaindigger,
        "size": size,
        "sizearray": sizearray == null ? null : List<dynamic>.from(sizearray!.map((x) => x)),
        "height": height == null ? null : List<dynamic>.from(height!.map((x) => x)),
        "width": width == null ? null : List<dynamic>.from(width!.map((x) => x)),
        "poll_start_time": pollStartTime.toIso8601String(),
        "sharefirstname": sharefirstname == null ? null : sharefirstname,
        "share_profile": shareProfile == null ? null : shareProfile,
        "shareroleid": shareroleid == null ? null : shareroleid,
        "sharelastname": sharelastname == null ? null : sharelastname,
        "page_name": pageName,
        "page_image": pageImage,
        "mysharedpostid": mysharedpostid,
        "mysharedpagename": mysharedpagename,
        "owner_chain_of_love": ownerChainOfLove == null ? null : ownerChainOfLove,
        "owner_page": ownerPage,
        "owner_atromg8": ownerAtromg8 == null ? null : ownerAtromg8,
        "owner_association": ownerAssociation == null ? null : ownerAssociation,
        "owner_company": ownerCompany == null ? null : ownerCompany,
        "shareData_caption": shareDataCaption == null ? null : shareDataCaption,
        "shareData_media": shareDataMedia,
        "shareData_media_type": shareDataMediaType == null ? null : shareDataMediaType,
        "postavailable": postavailable,
        "polloptions": polloptions,
        "polloptionIds": polloptionIds,
        "pollattemp": pollattemp,
        "totalpollans": totalpollans,
        "media_link": mediaLink == null ? null : List<dynamic>.from(mediaLink!.map((x) => x)),
        "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
        "like": List<dynamic>.from(like.map((x) => x.toJson())),
    };
}

class Comment {
    Comment({
        required this.id,
        required this.parentId,
        required this.text,
        required this.postId,
        required this.likes,
        required this.userId,
        required this.creplyName,
        required this.pageId,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.creplyId,
        required this.ag8CmtStatus,
        required this.isDeactivate,
        required this.name,
        required this.roleId,
        required this.profileImage,
        required this.totalComments,
    });

    int id;
    dynamic parentId;
    String text;
    int postId;
    int likes;
    int userId;
    dynamic creplyName;
    dynamic pageId;
    dynamic deletedAt;
    String createdAt;
    DateTime updatedAt;
    dynamic creplyId;
    int ag8CmtStatus;
    int isDeactivate;
    String name;
    int roleId;
    String profileImage;
    int totalComments;

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        parentId: json["parent_id"],
        text: json["text"],
        postId: json["post_id"],
        likes: json["likes"],
        userId: json["user_id"],
        creplyName: json["creply_name"],
        pageId: json["page_id"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        creplyId: json["creply_id"],
        ag8CmtStatus: json["ag8_cmt_status"],
        isDeactivate: json["is_deactivate"],
        name: json["name"],
        roleId: json["role_id"],
        profileImage: json["profile_image"],
        totalComments: json["total_comments"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "parent_id": parentId,
        "text": text,
        "post_id": postId,
        "likes": likes,
        "user_id": userId,
        "creply_name": creplyName,
        "page_id": pageId,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
        "creply_id": creplyId,
        "ag8_cmt_status": ag8CmtStatus,
        "is_deactivate": isDeactivate,
        "name": name,
        "role_id": roleId,
        "profile_image": profileImage,
        "total_comments": totalComments,
    };
}

class Like {
    Like({
        required this.id,
        required this.postId,
        required this.userId,
        required this.type,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.name,
        required this.roleId,
        required this.profileImage,
    });

    int id;
    int postId;
    int userId;
    dynamic type;
    dynamic deletedAt;
    String createdAt;
    DateTime updatedAt;
    String name;
    int roleId;
    String profileImage;

    factory Like.fromJson(Map<String, dynamic> json) => Like(
        id: json["id"],
        postId: json["post_id"],
        userId: json["user_id"],
        type: json["type"],
        deletedAt: json["deleted_at"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        name: json["name"],
        roleId: json["role_id"],
        profileImage: json["profile_image"] == null ? null : json["profile_image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "post_id": postId,
        "user_id": userId,
        "type": type,
        "deleted_at": deletedAt,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
        "name": name,
        "role_id": roleId,
        "profile_image": profileImage == null ? null : profileImage,
    };
}

/* enum Name { QUANTUM, NIR }

final nameValues = EnumValues({
    "Nir": Name.NIR,
    "Quantum": Name.QUANTUM
});

enum Username { QUANTUM, TESTUSER123 }

final usernameValues = EnumValues({
    "Quantum": Username.QUANTUM,
    "testuser123": Username.TESTUSER123
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

  EnumValues(this.map);

    Map<T, String>? get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
 */