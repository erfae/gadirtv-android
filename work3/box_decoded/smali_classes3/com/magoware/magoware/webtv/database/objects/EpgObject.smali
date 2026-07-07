.class public Lcom/magoware/magoware/webtv/database/objects/EpgObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "EpgObject.java"


# instance fields
.field public Minutes:I

.field public channelName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public id:I

.field public number:I

.field public programend:Ljava/lang/String;

.field public programstart:Ljava/lang/String;

.field public progress:I

.field public scheduled:Ljava/lang/String;

.field public shortname:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->id:I

    const-string v1, ""

    .line 23
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->scheduled:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->number:I

    .line 25
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->title:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->description:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programstart:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->programend:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->shortname:Ljava/lang/String;

    .line 30
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->Minutes:I

    .line 31
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->channelName:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->progress:I

    .line 33
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;->duration:I

    return-void
.end method
