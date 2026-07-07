.class public Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
.super Ljava/lang/Object;
.source "MovieDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adult:Z

.field private backdropPath:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "backdrop_path"
    .end annotation
.end field

.field private budget:I

.field private director:Ljava/lang/String;

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private imdbId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "imdb_id"
    .end annotation
.end field

.field private originalLanguage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "original_language"
    .end annotation
.end field

.field private originalTitle:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "original_title"
    .end annotation
.end field

.field private overview:Ljava/lang/String;

.field private paletteColors:Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

.field private popularity:F

.field private posterPath:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "poster_path"
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "release_date"
    .end annotation
.end field

.field private revenue:I

.field private runtime:I

.field private status:Ljava/lang/String;

.field private tagline:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private video:Z

.field private voteAverage:F
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "vote_average"
    .end annotation
.end field

.field private voteCount:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "vote_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->adult:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->overview:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->video:Z

    .line 285
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->genres:Ljava/util/List;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->title:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->popularity:F

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->budget:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->runtime:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->revenue:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->tagline:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->status:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->releaseDate:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->posterPath:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalTitle:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalLanguage:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->backdropPath:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteCount:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteAverage:F

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->imdbId:Ljava/lang/String;

    .line 301
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->paletteColors:Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->director:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackdropPath()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->backdropPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBudget()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->budget:I

    return v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->genres:Ljava/util/List;

    return-object v0
.end method

.method public getImdbId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->imdbId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalLanguage()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTitle()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->overview:Ljava/lang/String;

    return-object v0
.end method

.method public getPaletteColors()Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->paletteColors:Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    return-object v0
.end method

.method public getPopularity()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->popularity:F

    return v0
.end method

.method public getPosterPath()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->revenue:I

    return v0
.end method

.method public getRuntime()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->runtime:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->tagline:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteAverage()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteAverage:F

    return v0
.end method

.method public getVoteCount()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteCount:I

    return v0
.end method

.method public isAdult()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->adult:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->video:Z

    return v0
.end method

.method public setAdult(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adult"
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->adult:Z

    return-object p0
.end method

.method public setBackdropPath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backdropPath"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->backdropPath:Ljava/lang/String;

    return-object p0
.end method

.method public setBudget(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "budget"
        }
    .end annotation

    .line 121
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->budget:I

    return-object p0
.end method

.method public setDirector(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "director"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->director:Ljava/lang/String;

    return-object p0
.end method

.method public setGenres(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genres"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->genres:Ljava/util/List;

    return-object p0
.end method

.method public setImdbId(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imdbId"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->imdbId:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalLanguage(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalLanguage"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalTitle(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalTitle"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setOverview(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overview"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->overview:Ljava/lang/String;

    return-object p0
.end method

.method public setPaletteColors(Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paletteColors"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->paletteColors:Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    return-object p0
.end method

.method public setPopularity(F)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popularity"
        }
    .end annotation

    .line 112
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->popularity:F

    return-object p0
.end method

.method public setPosterPath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posterPath"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->posterPath:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDate"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->releaseDate:Ljava/lang/String;

    return-object p0
.end method

.method public setRevenue(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revenue"
        }
    .end annotation

    .line 139
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->revenue:I

    return-object p0
.end method

.method public setRuntime(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtime"
        }
    .end annotation

    .line 130
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->runtime:I

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->status:Ljava/lang/String;

    return-object p0
.end method

.method public setTagline(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagline"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->tagline:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setVideo(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 85
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->video:Z

    return-object p0
.end method

.method public setVoteAverage(F)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voteAverage"
        }
    .end annotation

    .line 220
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteAverage:F

    return-object p0
.end method

.method public setVoteCount(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voteCount"
        }
    .end annotation

    .line 211
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteCount:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->adult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->overview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->video:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 262
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->popularity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 264
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->budget:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->runtime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->revenue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->tagline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->posterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->originalLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->backdropPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->voteAverage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 276
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->imdbId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->paletteColors:Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 278
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieDetails;->director:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
