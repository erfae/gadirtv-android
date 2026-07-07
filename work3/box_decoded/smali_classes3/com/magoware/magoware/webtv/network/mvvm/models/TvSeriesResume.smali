.class public Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
.super Ljava/lang/Object;
.source "TvSeriesResume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private favorite:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private reaction:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reaction"
    .end annotation
.end field

.field private tvSeriesId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_series_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->tvSeriesId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->reaction:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFavorite()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->favorite:I

    return v0
.end method

.method public getReaction()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->reaction:I

    return v0
.end method

.method public getTvSeriesId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->tvSeriesId:I

    return v0
.end method

.method public setFavorite(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favorite"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->favorite:I

    return-void
.end method

.method public setReaction(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reaction"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->reaction:I

    return-void
.end method

.method public setTvSeriesId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvSeriesId"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->tvSeriesId:I

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

    .line 41
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->tvSeriesId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;->reaction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
