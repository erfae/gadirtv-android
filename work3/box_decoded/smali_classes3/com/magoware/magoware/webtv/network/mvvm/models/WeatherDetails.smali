.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;
.super Ljava/lang/Object;
.source "WeatherResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;",
        "Landroid/os/Parcelable;",
        "temp",
        "",
        "temp_min",
        "temp_max",
        "(FFF)V",
        "getTemp",
        "()F",
        "getTemp_max",
        "getTemp_min",
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final temp:F

.field private final temp_max:F

.field private final temp_min:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails$Creator;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails$Creator;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp:F

    iput p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_min:F

    iput p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_max:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTemp()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp:F

    return v0
.end method

.method public final getTemp_max()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_max:F

    return v0
.end method

.method public final getTemp_min()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_min:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_min:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherDetails;->temp_max:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
