.class public Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "CatchUpObject.java"


# instance fields
.field public channelName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public id:I

.field public number:I

.field public programend:Ljava/lang/String;

.field public programstart:Ljava/lang/String;

.field public progress:Ljava/lang/String;

.field public scheduled:Ljava/lang/String;

.field public shortname:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->id:I

    const-string v1, ""

    .line 29
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->scheduled:Ljava/lang/String;

    .line 30
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->number:I

    .line 31
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->title:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->description:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programstart:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programend:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->shortname:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->duration:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->channelName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->progress:Ljava/lang/String;

    return-void
.end method
