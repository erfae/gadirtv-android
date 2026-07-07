.class public Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;
.super Ljava/lang/Object;
.source "TvShowSeasons.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private seasonNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season_number"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->id:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->seasonNumber:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->id:I

    return v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->seasonNumber:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->title:Ljava/lang/String;

    return-object v0
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

    .line 52
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->id:I

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

    .line 60
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->seasonNumber:I

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

    .line 68
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->title:Ljava/lang/String;

    return-void
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

    .line 25
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->seasonNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
