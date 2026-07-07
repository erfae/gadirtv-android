.class public Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "SubtitleObject.java"


# instance fields
.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vodid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;->vodid:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;->title:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;->url:Ljava/lang/String;

    return-void
.end method
