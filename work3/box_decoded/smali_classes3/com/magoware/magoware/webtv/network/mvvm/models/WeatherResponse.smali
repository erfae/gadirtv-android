.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;
.super Ljava/lang/Object;
.source "WeatherResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;",
        "Landroid/os/Parcelable;",
        "date",
        "",
        "city",
        "weather",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;",
        "main",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;)V",
        "getCity",
        "()Ljava/lang/String;",
        "getDate",
        "getMain",
        "()Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;",
        "getWeather",
        "()Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final city:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final main:Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

.field private final weather:Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse$Creator;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weather"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "main"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->date:Ljava/lang/String;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->city:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->weather:Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->main:Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getMain()Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->main:Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

    return-object v0
.end method

.method public final getWeather()Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->weather:Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->weather:Lcom/magoware/magoware/webtv/network/mvvm/models/Weather;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;->main:Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
