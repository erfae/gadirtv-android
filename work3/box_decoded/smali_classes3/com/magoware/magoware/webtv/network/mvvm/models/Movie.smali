.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
.super Ljava/lang/Object;
.source "Movie.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adult:Z

.field private backdropPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backdrop_path"
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private categoryId:I

.field private genreIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genre_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private originalLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_language"
    .end annotation
.end field

.field private originalTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_title"
    .end annotation
.end field

.field private overview:Ljava/lang/String;

.field private popularity:F

.field private posterPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_path"
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release_date"
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private video:Z

.field private videoUrl:Ljava/lang/String;

.field private voteAverage:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vote_average"
    .end annotation
.end field

.field private voteCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vote_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->videoUrl:Ljava/lang/String;

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

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->videoUrl:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->id:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->categoryId:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->posterPath:Ljava/lang/String;

    .line 219
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
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->adult:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->overview:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->releaseDate:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->genreIds:Ljava/util/List;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalTitle:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalLanguage:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->title:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->backdropPath:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->popularity:F

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteCount:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->video:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteAverage:F

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

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

    .line 146
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->backdropPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->categoryId:I

    return v0
.end method

.method public getGenreIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->genreIds:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalLanguage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTitle()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->overview:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularity()F
    .locals 1

    .line 155
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->popularity:F

    return v0
.end method

.method public getPosterPath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteAverage()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteAverage:F

    return v0
.end method

.method public getVoteCount()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteCount:I

    return v0
.end method

.method public isAdult()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->adult:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->video:Z

    return v0
.end method

.method public setAdult(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adult"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->adult:Z

    return-object p0
.end method

.method public setBackdropPath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backdropPath"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->backdropPath:Ljava/lang/String;

    return-object p0
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

    .line 239
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryId"
        }
    .end annotation

    .line 247
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->categoryId:I

    return-void
.end method

.method public setGenreIds(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genreIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->genreIds:Ljava/util/List;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalLanguage(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalLanguage"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalTitle(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalTitle"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setOverview(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overview"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->overview:Ljava/lang/String;

    return-object p0
.end method

.method public setPopularity(F)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popularity"
        }
    .end annotation

    .line 159
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->popularity:F

    return-object p0
.end method

.method public setPosterPath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posterPath"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->posterPath:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseDate(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDate"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->releaseDate:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setVideo(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video"
        }
    .end annotation

    .line 177
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->video:Z

    return-object p0
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoUrl"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVoteAverage(F)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voteAverage"
        }
    .end annotation

    .line 186
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteAverage:F

    return-object p0
.end method

.method public setVoteCount(I)Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voteCount"
        }
    .end annotation

    .line 168
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteCount:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
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

    .line 197
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->categoryId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->posterPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->adult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->overview:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->genreIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 204
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->originalLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->backdropPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->popularity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 209
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->video:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->voteAverage:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 212
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Movie;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
