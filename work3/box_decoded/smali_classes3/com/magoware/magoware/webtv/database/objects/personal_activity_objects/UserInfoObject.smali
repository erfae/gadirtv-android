.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserInfoObject.java"


# instance fields
.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public firstname:Ljava/lang/String;

.field public lastname:Ljava/lang/String;

.field public telephone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->firstname:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->lastname:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->email:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->address:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->city:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->country:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->telephone:Ljava/lang/String;

    return-void
.end method
