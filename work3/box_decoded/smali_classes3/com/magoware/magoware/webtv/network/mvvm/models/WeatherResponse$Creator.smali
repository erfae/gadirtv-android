.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;
    .locals 5

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;
    .locals 0

    new-array p1, p1, [Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;->newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;

    move-result-object p1

    return-object p1
.end method
