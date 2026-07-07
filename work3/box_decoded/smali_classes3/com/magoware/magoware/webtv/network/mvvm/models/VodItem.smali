.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;
.super Ljava/lang/Object;
.source "VodItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adult:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_adult"
    .end annotation
.end field

.field private assetsCarousel:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assets_categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation
.end field

.field private carouselList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vod_menu_carousels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private icon_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isAvailable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isavailable"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private order:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pinProtected:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pin_protected"
    .end annotation
.end field

.field private small_icon_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small_icon_url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->id:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->id:Ljava/lang/Integer;

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->pinProtected:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->description:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->carouselList:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->assetsCarousel:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->order:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->adult:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAssetsCarousel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->assetsCarousel:Ljava/util/List;

    return-object v0
.end method

.method public getCarouselList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->carouselList:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->order:I

    return v0
.end method

.method public getVodIcon()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->icon_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->small_icon_url:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->adult:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable:Z

    return v0
.end method

.method public isPinProtected()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->pinProtected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

    .line 53
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->id:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->id:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_0
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->pinProtected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->carouselList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 63
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->assetsCarousel:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->isAvailable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->adult:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
