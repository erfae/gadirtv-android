.class public Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ScheduleEpgInfo.java"


# instance fields
.field public action:Ljava/lang/String;

.field public channel_description:Ljava/lang/String;

.field public channel_title:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public has_catchup:Ljava/lang/String;

.field public program_description:Ljava/lang/String;

.field public program_title:Ljava/lang/String;

.field public scheduled:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->genre:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_title:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->program_description:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->channel_title:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->channel_description:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->action:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->scheduled:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;->has_catchup:Ljava/lang/String;

    return-void
.end method
