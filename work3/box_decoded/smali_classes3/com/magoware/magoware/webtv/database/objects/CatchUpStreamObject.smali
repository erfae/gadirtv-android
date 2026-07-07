.class public Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "CatchUpStreamObject.java"


# instance fields
.field public encryption:Ljava/lang/String;

.field public encryption1:Ljava/lang/String;

.field public streamurl:Ljava/lang/String;

.field public token:Z

.field public token_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/EpgObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->streamurl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->token:Z

    .line 22
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->token_url:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->encryption:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;->encryption1:Ljava/lang/String;

    return-void
.end method
