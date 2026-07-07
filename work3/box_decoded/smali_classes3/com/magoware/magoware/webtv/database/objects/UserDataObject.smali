.class public Lcom/magoware/magoware/webtv/database/objects/UserDataObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserDataObject.java"


# instance fields
.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fullname:Ljava/lang/String;

.field public tel:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 22
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->fullname:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->email:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->tel:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->address:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->city:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->country:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/UserDataObject;->timezone:Ljava/lang/String;

    return-void
.end method
