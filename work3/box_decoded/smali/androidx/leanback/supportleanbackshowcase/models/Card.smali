.class public Landroidx/leanback/supportleanbackshowcase/models/Card;
.super Ljava/lang/Object;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/supportleanbackshowcase/models/Card$Type;
    }
.end annotation


# instance fields
.field private encryptionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptionUrl"
    .end annotation
.end field

.field private episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/TVShowEpisode;",
            ">;"
        }
    .end annotation
.end field

.field private mCategories:Ljava/lang/String;

.field private mCategoryid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryid"
    .end annotation
.end field

.field private mDataadded:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataadded"
    .end annotation
.end field

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mDuration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private mEncryption:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryption"
    .end annotation
.end field

.field private mExtraText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraText"
    .end annotation
.end field

.field private mFooterColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "footerColor"
    .end annotation
.end field

.field private mFooterResource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "footerIconLocalImageResource"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private mIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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

.field private mMovieUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_url"
    .end annotation
.end field

.field private mRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate"
    .end annotation
.end field

.field private mSelectedColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectedColor"
    .end annotation
.end field

.field private mSubtitles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private mTokenUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenUrl"
    .end annotation
.end field

.field private mTrailerUrl:Ljava/lang/String;

.field private mType:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field

.field private mYear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field

.field private pin_protected:I

.field private season_count:I

.field private seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;",
            ">;"
        }
    .end annotation
.end field

.field private series_description:Ljava/lang/String;

.field private streamFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streamFormat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTitle:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDescription:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mExtraText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterColor:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSelectedColor:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLocalImageResource:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterResource:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mMovieUrl:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLargeimage:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mRate:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mToken:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTokenUrl:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mEncryption:Ljava/lang/String;

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDuration:I

    .line 41
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mYear:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 42
    iput-wide v3, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDataadded:J

    .line 43
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->streamFormat:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->encryptionUrl:Ljava/lang/String;

    .line 45
    iput v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->pin_protected:I

    .line 56
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mCategoryid:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mIcon:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTitle:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mId:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDescription:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLargeimage:Ljava/lang/String;

    .line 62
    iput v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDuration:I

    .line 63
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mToken:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mMovieUrl:Ljava/lang/String;

    .line 65
    iput v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->pin_protected:I

    .line 66
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->streamFormat:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->encryptionUrl:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDefaultLanguage:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTrailerUrl:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mCategories:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->series_description:Ljava/lang/String;

    .line 72
    iput v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->season_count:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSubtitles:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->seasons:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->episodes:Ljava/util/List;

    return-void
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 324
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 325
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryid()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mCategoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getDataadded()J
    .locals 2

    .line 259
    iget-wide v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDataadded:J

    return-wide v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 257
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDuration:I

    return v0
.end method

.method public getEncryption()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionUrl()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->encryptionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/TVShowEpisode;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->episodes:Ljava/util/List;

    return-object v0
.end method

.method public getExtraText()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mExtraText:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterColor()I
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 162
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFooterLocalImageResourceName()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterResource:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterResource()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterResource:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mHeight:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 3

    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@getIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeimage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLargeimage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResource()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResourceId(Landroid/content/Context;)I
    .locals 6

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@resource id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    .line 302
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {v0, v1, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLocalImageResourceName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieUrl()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mMovieUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mRate:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonCount()I
    .locals 1

    .line 340
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->season_count:I

    return v0
.end method

.method public getSeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSelectedColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 171
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpecifikDescription()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->series_description:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamFormat()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->streamFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Subtitle;",
            ">;"
        }
    .end annotation

    .line 319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@cards22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSubtitles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenUrl()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerUrl()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTrailerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroidx/leanback/supportleanbackshowcase/models/Card$Type;
    .locals 3

    .line 139
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@card_ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mType:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mType:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 126
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mWidth:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public isPinProtected()I
    .locals 1

    .line 87
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->pin_protected:I

    return v0
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mCategories:Ljava/lang/String;

    return-void
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDefaultLanguage:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 255
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mDuration:I

    return-void
.end method

.method public setEncryption(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mEncryption:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionUrl(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->encryptionUrl:Ljava/lang/String;

    return-void
.end method

.method public setEpisodes(Landroidx/leanback/supportleanbackshowcase/models/TVShowEpisode;)V
    .locals 1

    .line 359
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->episodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtraText(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mExtraText:Ljava/lang/String;

    return-void
.end method

.method public setFooterColor(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterColor:Ljava/lang/String;

    return-void
.end method

.method public setFooterResource(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mFooterResource:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 122
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mHeight:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2

    .line 204
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mIcon:Ljava/lang/String;

    .line 205
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@settIcon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLargeImage(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLargeimage:Ljava/lang/String;

    return-void
.end method

.method public setLocalImageResource(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-void
.end method

.method public setMovieUrl(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mMovieUrl:Ljava/lang/String;

    return-void
.end method

.method public setPinProtected(I)V
    .locals 0

    .line 91
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->pin_protected:I

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mRate:Ljava/lang/String;

    return-void
.end method

.method public setSeasonCount(I)V
    .locals 0

    .line 344
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->season_count:I

    return-void
.end method

.method public setSeasons(Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->seasons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSelectedColor(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSelectedColor:Ljava/lang/String;

    return-void
.end method

.method public setSpecfikDescription(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->series_description:Ljava/lang/String;

    return-void
.end method

.method public setStreamFormat(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->streamFormat:Ljava/lang/String;

    return-void
.end method

.method public setSubtitles(Landroidx/leanback/supportleanbackshowcase/models/Subtitle;)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mSubtitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenUrl(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTokenUrl:Ljava/lang/String;

    return-void
.end method

.method public setTrailerUrl(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mTrailerUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroidx/leanback/supportleanbackshowcase/models/Card$Type;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mType:Landroidx/leanback/supportleanbackshowcase/models/Card$Type;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 118
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mWidth:I

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/Card;->mYear:Ljava/lang/String;

    return-void
.end method
