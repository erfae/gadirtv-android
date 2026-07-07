.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;
.super Ljava/lang/Object;
.source "VODResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_description"
    .end annotation
.end field

.field private extraData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_data"
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private vodItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->statusCode:Ljava/lang/Integer;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->statusCode:Ljava/lang/Integer;

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorCode:Ljava/lang/Integer;

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorCode:Ljava/lang/Integer;

    .line 50
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->timestamp:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorDescription:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->extraData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->timestamp:J

    return-wide v0
.end method

.method public getVodItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->vodItems:Ljava/util/List;

    return-object v0
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

    .line 86
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->statusCode:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->statusCode:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorCode:Ljava/lang/Integer;

    if-nez p2, :cond_1

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorCode:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_1
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->errorDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VODResponse;->extraData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
