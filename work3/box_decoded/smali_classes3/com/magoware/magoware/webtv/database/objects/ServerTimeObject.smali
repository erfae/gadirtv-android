.class public Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ServerTimeObject.java"


# instance fields
.field public force_time_change:Z

.field public servertime_no_utc:Ljava/lang/String;

.field public servertime_utc:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public timezone_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;->timezone:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;->force_time_change:Z

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;->servertime_utc:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;->servertime_no_utc:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerTimeObject;->timezone_value:Ljava/lang/String;

    return-void
.end method
