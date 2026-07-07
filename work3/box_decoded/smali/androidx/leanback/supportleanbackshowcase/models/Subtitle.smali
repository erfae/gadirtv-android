.class public Landroidx/leanback/supportleanbackshowcase/models/Subtitle;
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
        value = "cards"
    .end annotation
.end field

.field private vodid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shadow"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->vodid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->title:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVodID()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->vodid:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->url:Ljava/lang/String;

    return-void
.end method

.method public setVodID(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Subtitle;->vodid:Ljava/lang/String;

    return-void
.end method
