.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
.super Ljava/lang/Object;
.source "Video.java"


# instance fields
.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private site:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->site:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setSite(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "site"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->site:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Video;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Video;->type:Ljava/lang/String;

    return-object p0
.end method
