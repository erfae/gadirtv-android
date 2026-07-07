.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;
.super Ljava/lang/Object;
.source "VodLastWatched.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private episodeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode_number"
    .end annotation
.end field

.field private seasonNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season_number"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->seasonNumber:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->episodeNumber:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->episodeNumber:I

    return v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->seasonNumber:I

    return v0
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

    .line 22
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->seasonNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodLastWatched;->episodeNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
