.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;,
        Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VodType"


# instance fields
.field private actions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private adult:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adult"
    .end annotation
.end field

.field private assetDetailsType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asset_detail_type"
    .end annotation
.end field

.field private backdropPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backdrop_path"
    .end annotation
.end field

.field private cast:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cast"
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private categoryId:I

.field private categoryURL:Ljava/lang/String;

.field channelEpgDataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epg_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;",
            ">;"
        }
    .end annotation
.end field

.field private channelNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_number"
    .end annotation
.end field

.field private defaultLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_language"
    .end annotation
.end field

.field private director:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "director"
    .end annotation
.end field

.field private episodeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode_number"
    .end annotation
.end field

.field private firstAirDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_air_date"
    .end annotation
.end field

.field private genreIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genres"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private isMoreItem:Z

.field private isSeasonCard:Z

.field private isWatched:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watched"
    .end annotation
.end field

.field private long_description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long_description"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
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

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field private mLocalImageResource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localImageResource"
    .end annotation
.end field

.field private mSelectedColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectedColor"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mType:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field

.field movieReaction:Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_resumes"
    .end annotation
.end field

.field private movieUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_url"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private numberOfSeasons:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_of_seasons"
    .end annotation
.end field

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
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "overview"
    .end annotation
.end field

.field private paymentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_url"
    .end annotation
.end field

.field private percentagePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percentage_position"
    .end annotation
.end field

.field private pinProtected:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pin_protected"
    .end annotation
.end field

.field private popularity:F

.field private posterPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_path"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private releaseDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release_date"
    .end annotation
.end field

.field private releaseYear:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release_year"
    .end annotation
.end field

.field private resumePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resume_position"
    .end annotation
.end field

.field private runTimeOfMovie:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime"
    .end annotation
.end field

.field private seasonNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season_number"
    .end annotation
.end field

.field private short_description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_description"
    .end annotation
.end field

.field private spokenLanguages:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spoken_languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/SpokenLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private stillPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "still_path"
    .end annotation
.end field

.field private tmdbValues:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmdb_values"
    .end annotation
.end field

.field private trailerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trailer_url"
    .end annotation
.end field

.field tvSeriesResume:Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_series_resume"
    .end annotation
.end field

.field private tvShowSeasons:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_seasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;"
        }
    .end annotation
.end field

.field private video:Z

.field private videoUrl:Ljava/lang/String;

.field vodLastWatched:Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_watched"
    .end annotation
.end field

.field private vodStream:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_stream"
    .end annotation
.end field

.field vodSubtitle:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_subtitles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field private vodType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_type"
    .end annotation
.end field

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

.field private webLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->category:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->videoUrl:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    .line 124
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->category:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->videoUrl:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    .line 124
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->price:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->trailerUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->defaultLanguage:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/SpokenLanguage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->spokenLanguages:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mImageUrl:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mId:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mWidth:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mHeight:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryId:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->posterPath:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->icon:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->adult:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->pinProtected:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->overview:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseDate:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->firstAirDate:Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->genreIds:Ljava/util/List;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->runTimeOfMovie:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->originalTitle:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->originalLanguage:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->backdropPath:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->numberOfSeasons:I

    .line 197
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvShowSeasons:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->popularity:F

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->voteCount:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->video:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->voteAverage:F

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->category:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->videoUrl:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->name:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    .line 212
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->episodeNumber:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->stillPath:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->actions:Ljava/util/List;

    .line 215
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodStream:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->paymentUrl:Ljava/lang/String;

    .line 219
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieReaction:Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    .line 220
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvSeriesResume:Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->cast:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->director:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseYear:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodType:Ljava/lang/String;

    .line 225
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodLastWatched:Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->short_description:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->long_description:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelNumber:I

    .line 230
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelEpgDataList:Ljava/util/List;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->resumePosition:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->percentagePosition:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->webLink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ActionButton;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAssetDetailsType()Ljava/lang/String;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->assetDetailsType:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getBackdropPath()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->backdropPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCast()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->cast:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryId:I

    return v0
.end method

.method public getCategoryURL()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelEpgDataList:Ljava/util/List;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 737
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelNumber:I

    return v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->episodeNumber:I

    return v0
.end method

.method public getExtraText()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstAirDate()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->firstAirDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterColor()I
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 449
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFooterLocalImageResourceName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterResource()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Genre;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->genreIds:Ljava/util/List;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mHeight:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mId:I

    return v0
.end method

.method public getImageURI()Ljava/net/URI;
    .locals 3

    .line 482
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 484
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    return-object v1
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResource()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageResourceId(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "drawable"

    .line 492
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLocalImageResourceName()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLong_description()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->long_description:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieReaction()Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieReaction:Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    return-object v0
.end method

.method public getMovieUrl()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSeasons()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->numberOfSeasons:I

    return v0
.end method

.method public getOriginalTitle()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->originalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->overview:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->paymentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentagePosition()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->percentagePosition:I

    return v0
.end method

.method public getPosterPath()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseYear()Ljava/lang/String;
    .locals 1

    .line 557
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseYear:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResumePosition()I
    .locals 1

    .line 761
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->resumePosition:I

    return v0
.end method

.method public getRunTimeOfMovie()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->runTimeOfMovie:I

    return v0
.end method

.method public getSeasonNumber()Ljava/lang/Integer;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 458
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getShort_description()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->short_description:Ljava/lang/String;

    return-object v0
.end method

.method public getStillPath()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->stillPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTmdbValues()Lcom/google/gson/JsonObject;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tmdbValues:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getTrailerUrl()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->trailerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTvSeriesResume()Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvSeriesResume:Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    return-object v0
.end method

.method public getTvShowSeasons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvShowSeasons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mType:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    if-nez v0, :cond_0

    .line 398
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE_BASE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mType:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mType:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    return-object v0
.end method

.method public getVodLastWatched()Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodLastWatched:Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    return-object v0
.end method

.method public getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodStream:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    return-object v0
.end method

.method public getVodSubtitle()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 662
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    return-object v0
.end method

.method public getVodType()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodType:Ljava/lang/String;

    return-object v0
.end method

.method public getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;
    .locals 3

    .line 636
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 639
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "tv_series"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "tv_season"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "tv_episode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "asset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 653
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    goto :goto_2

    .line 644
    :pswitch_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    goto :goto_2

    .line 647
    :pswitch_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SEASON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    goto :goto_2

    .line 641
    :pswitch_2
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    goto :goto_2

    .line 650
    :pswitch_3
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ASSETS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x58ceaf0 -> :sswitch_3
        0x3953d13e -> :sswitch_2
        0x7c376340 -> :sswitch_1
        0x7c3ef6d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVoteAverage()F
    .locals 1

    .line 393
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->voteAverage:F

    return v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mWidth:I

    return v0
.end method

.method public isAdult()Z
    .locals 2

    .line 701
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->adult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEpisodeCard()Z
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->stillPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinProtected()Z
    .locals 2

    .line 705
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->pinProtected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSeasonCard()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard:Z

    return v0
.end method

.method public isSeeMoreItem()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    return v0
.end method

.method public isTvShow()Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->firstAirDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWatched()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched:Z

    return v0
.end method

.method public setBackdropPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backdropPath"
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->backdropPath:Ljava/lang/String;

    return-void
.end method

.method public setCategoryURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryURL"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    return-void
.end method

.method public setChannelDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelEpgDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;",
            ">;)V"
        }
    .end annotation

    .line 749
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelEpgDataList:Ljava/util/List;

    return-void
.end method

.method public setChannelNumber(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .line 741
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelNumber:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setExtraText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraText"
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    return-void
.end method

.method public setFooterColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerColor"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    return-void
.end method

.method public setFooterResource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerResource"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 373
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mHeight:I

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 381
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocalImageResource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localImageResource"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    return-void
.end method

.method public setMovieReaction(Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieReaction"
        }
    .end annotation

    .line 685
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieReaction:Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    return-void
.end method

.method public setMovieUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieUrl"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    return-void
.end method

.method public setPercentagePosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentagePosition"
        }
    .end annotation

    .line 773
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->percentagePosition:I

    return-void
.end method

.method public setPosterPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posterPath"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->posterPath:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 733
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->price:Ljava/lang/String;

    return-void
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDate"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseDate:Ljava/lang/String;

    return-void
.end method

.method public setResumePosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resumePosition"
        }
    .end annotation

    .line 765
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->resumePosition:I

    return-void
.end method

.method public setSeasonCard(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSeasonCard"
        }
    .end annotation

    .line 525
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard:Z

    return-void
.end method

.method public setSeasonNumber(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonNumber"
        }
    .end annotation

    .line 709
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setSeeMoreItem(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSeeMoreItem"
        }
    .end annotation

    .line 517
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    return-void
.end method

.method public setSelectedColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedColor"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTvSeriesResume(Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvSeriesResume"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvSeriesResume:Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    return-void
.end method

.method public setTvShowSeasons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvShowSeasons"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;)V"
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvShowSeasons:Ljava/util/ArrayList;

    return-void
.end method

.method public setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mType:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    return-void
.end method

.method public setVodStream(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodStream:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    return-void
.end method

.method public setVodSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtitles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;",
            ">;)V"
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodSubtitle:Ljava/util/List;

    return-void
.end method

.method public setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodTypeObject"
        }
    .end annotation

    .line 610
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$2;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "asset"

    goto :goto_0

    :cond_1
    const-string p1, "tv_episode"

    goto :goto_0

    :cond_2
    const-string p1, "tv_series"

    goto :goto_0

    :cond_3
    const-string p1, "tv_season"

    goto :goto_0

    :cond_4
    const-string p1, "film"

    .line 627
    :goto_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodType:Ljava/lang/String;

    return-void
.end method

.method public setWatched(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watched"
        }
    .end annotation

    .line 757
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched:Z

    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webLink"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->webLink:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 365
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mWidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 239
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->trailerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->spokenLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mExtraText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mSelectedColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mLocalImageResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mFooterResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->posterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->adult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->pinProtected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->overview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->firstAirDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->genreIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->runTimeOfMovie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->originalTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->originalLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->backdropPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->numberOfSeasons:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvShowSeasons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 269
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->popularity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 270
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->voteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->video:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 272
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->voteAverage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 273
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->seasonNumber:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 285
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->episodeNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->stillPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->actions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 289
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodStream:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 290
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isMoreItem:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->categoryURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->paymentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->movieReaction:Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->tvSeriesResume:Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 295
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->cast:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->director:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->releaseYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->vodLastWatched:Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isSeasonCard:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 301
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->short_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->long_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->channelEpgDataList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 305
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isWatched:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 306
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->resumePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->percentagePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->webLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
