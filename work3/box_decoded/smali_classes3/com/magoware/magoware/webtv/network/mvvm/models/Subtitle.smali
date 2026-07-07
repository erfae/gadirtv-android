.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"


# instance fields
.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private vodid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->vodid:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVodID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->vodid:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aTitle"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anUrl"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->url:Ljava/lang/String;

    return-void
.end method

.method public setVodID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aID"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Subtitle;->vodid:Ljava/lang/String;

    return-void
.end method
