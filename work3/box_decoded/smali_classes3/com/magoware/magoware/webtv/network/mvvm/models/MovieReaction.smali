.class public Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;
.super Ljava/lang/Object;
.source "MovieReaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private favorite:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percentagePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percentage_position"
    .end annotation
.end field

.field private reaction:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reaction"
    .end annotation
.end field

.field private resumePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resume_position"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->resumePosition:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->reaction:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->percentagePosition:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 59
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->favorite:I

    return v0
.end method

.method public getPercentagePosition()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->percentagePosition:I

    return v0
.end method

.method public getReaction()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->reaction:I

    return v0
.end method

.method public getResumePosition()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->resumePosition:I

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

    .line 63
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->favorite:I

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

    .line 67
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->reaction:I

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

    .line 28
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->resumePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->reaction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;->percentagePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
