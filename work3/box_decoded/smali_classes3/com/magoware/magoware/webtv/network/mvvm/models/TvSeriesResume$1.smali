.class Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume$1;
.super Ljava/lang/Object;
.source "TvSeriesResume.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume$1;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 30
    new-array p1, p1, [Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume$1;->newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/TvSeriesResume;

    move-result-object p1

    return-object p1
.end method
