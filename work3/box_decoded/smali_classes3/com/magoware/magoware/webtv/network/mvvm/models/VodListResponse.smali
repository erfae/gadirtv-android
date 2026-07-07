.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;
.super Ljava/lang/Object;
.source "VodListResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public error_code:I

.field public error_description:Ljava/lang/String;

.field public extra_data:Ljava/lang/String;

.field private isSuccessful:Z

.field public response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation
.end field

.field public status_code:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful:Z

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful:Z

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->status_code:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_code:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->timestamp:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->extra_data:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra_data"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful:Z

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->extra_data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getError_code()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_code:I

    return v0
.end method

.method public getError_description()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra_data()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->extra_data:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse_object()Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->response_object:Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;

    return-object v0
.end method

.method public getStatus_code()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->status_code:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->timestamp:J

    return-wide v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful:Z

    return v0
.end method

.method public setSuccessful(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successful"
        }
    .end annotation

    .line 89
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->isSuccessful:Z

    return-object p0
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

    .line 36
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->status_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->extra_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;->error_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
