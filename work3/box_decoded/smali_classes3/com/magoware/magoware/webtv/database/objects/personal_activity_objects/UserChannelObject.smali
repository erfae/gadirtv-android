.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "UserChannelObject.java"


# instance fields
.field public channel_number:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public genre_id:I

.field public icon_url:Ljava/lang/String;

.field public isavailable:Ljava/lang/String;

.field public stream_url:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->channel_number:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->title:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->description:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->icon_url:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->stream_url:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->isavailable:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->genre_id:I

    return-void
.end method
