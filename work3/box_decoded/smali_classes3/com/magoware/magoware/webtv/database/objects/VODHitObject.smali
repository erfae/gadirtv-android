.class public Lcom/magoware/magoware/webtv/database/objects/VODHitObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "VODHitObject.java"


# instance fields
.field public hits:I

.field public id_vod:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/VODHitObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODHitObject;->id_vod:I

    .line 10
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODHitObject;->hits:I

    return-void
.end method
