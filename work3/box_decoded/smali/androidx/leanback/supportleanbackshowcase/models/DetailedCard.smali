.class public Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;
.super Ljava/lang/Object;
.source "DetailedCard.java"


# instance fields
.field public mCharacters:[Landroidx/leanback/supportleanbackshowcase/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "characters"
    .end annotation
.end field

.field private mDescription:Landroid/text/Spanned;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mLargeimage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "largeimage"
    .end annotation
.end field

.field private mLocalImageResource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localImageResource"
    .end annotation
.end field

.field private mRecommended:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommended"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mYear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mDescription:Landroid/text/Spanned;

    .line 30
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mText:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLocalImageResource:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mCharacters:[Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mRecommended:Ljava/util/List;

    .line 35
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mYear:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLargeimage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharacters()[Landroidx/leanback/supportleanbackshowcase/models/Card;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mCharacters:[Landroidx/leanback/supportleanbackshowcase/models/Card;

    return-object v0
.end method

.method public getDescription()Landroid/text/Spanned;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mDescription:Landroid/text/Spanned;

    return-object v0
.end method

.method public getLargeImage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLargeimage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResource()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLocalImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResourceId(Landroid/content/Context;)I
    .locals 3

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->getLocalImageResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getRecommended()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Card;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mRecommended:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Landroid/text/Spanned;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mDescription:Landroid/text/Spanned;

    return-void
.end method

.method public setLargeImage(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLargeimage:Ljava/lang/String;

    return-void
.end method

.method public setLocalImageResource(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mLocalImageResource:Ljava/lang/String;

    return-void
.end method

.method public setRecommended(Landroidx/leanback/supportleanbackshowcase/models/Card;)V
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mRecommended:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->mYear:Ljava/lang/String;

    return-void
.end method
