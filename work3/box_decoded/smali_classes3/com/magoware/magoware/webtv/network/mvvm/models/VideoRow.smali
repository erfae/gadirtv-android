.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;
.super Ljava/lang/Object;
.source "VideoRow.java"


# instance fields
.field private mCategory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private mVideos:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;->mCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;->mVideos:Ljava/util/List;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoRow;->mVideos:Ljava/util/List;

    return-void
.end method
