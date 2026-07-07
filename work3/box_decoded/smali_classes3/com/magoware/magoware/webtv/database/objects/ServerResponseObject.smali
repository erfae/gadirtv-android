.class public Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
.super Ljava/lang/Object;
.source "ServerResponseObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public error_code:I

.field public error_description:Ljava/lang/String;

.field public extra_data:Ljava/lang/String;

.field private isFromCache:Z

.field private isSuccessful:Z

.field public response_object:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public status_code:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    .line 18
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    .line 18
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_code:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    .line 18
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extra_data",
            "status_code"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    .line 18
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

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

    .line 74
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_code:I

    return v0
.end method

.method public getError_description()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra_data()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse_object()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus_code()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    return-wide v0
.end method

.method public isFromCache()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    sget v1, Lcom/magoware/magoware/webtv/util/Utils;->RESPONSE_CODE_NOT_MODIFIED:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    return v0
.end method

.method public setIsFromCache(Z)Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFromCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache:Z

    return-object p0
.end method

.method public setSuccessful(Z)Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successful"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

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

    .line 44
    iget p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->error_description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
