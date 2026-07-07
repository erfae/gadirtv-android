.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;
.super Ljava/lang/Object;
.source "VideoResponse.java"


# instance fields
.field private id:I

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;->id:I

    return v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Video;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public setId(I)Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 26
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;->id:I

    return-object p0
.end method

.method public setResults(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Video;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoResponse;->results:Ljava/util/List;

    return-object p0
.end method
