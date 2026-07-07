.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;
.super Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.source "VideoCard.java"


# instance fields
.field private mBackgroundUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "background"
    .end annotation
.end field

.field private mStudio:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "studio"
    .end annotation
.end field

.field private mVideoSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sources"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mVideoSource:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mBackgroundUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mStudio:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->VIDEO_GRID:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mBackgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStudio()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mStudio:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSource()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mVideoSource:Ljava/lang/String;

    return-object v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mBackgroundUrl:Ljava/lang/String;

    return-void
.end method

.method public setStudio(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "studio"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mStudio:Ljava/lang/String;

    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VideoCard;->mVideoSource:Ljava/lang/String;

    return-void
.end method
