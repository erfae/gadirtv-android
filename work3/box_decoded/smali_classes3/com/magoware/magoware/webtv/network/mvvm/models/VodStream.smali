.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;
.super Ljava/lang/Object;
.source "VodStream.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drmPlatform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drm_platform"
    .end annotation
.end field

.field private encryptionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryption_url"
    .end annotation
.end field

.field private encrytion:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryption"
    .end annotation
.end field

.field private streamFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_format"
    .end annotation
.end field

.field private stream_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_type"
    .end annotation
.end field

.field private token:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private tokenUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_url"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->streamFormat:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->url:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->token:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->tokenUrl:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encrytion:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encryptionUrl:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->stream_type:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrmPlatform()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->drmPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encryptionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamFormat()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->streamFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getStreamType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 134
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "vr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->NORMAL:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    goto :goto_1

    .line 136
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VIDEO360:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    goto :goto_1

    .line 139
    :cond_2
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;->VR:Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream$StreamType;

    :goto_1
    return-object v0
.end method

.method public getTokenUrl()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->tokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasToken()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->token:Z

    return v0
.end method

.method public isEncrytion()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encrytion:Z

    return v0
.end method

.method public setEncryptionUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionUrl"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encryptionUrl:Ljava/lang/String;

    return-void
.end method

.method public setEncrytion(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encrytion"
        }
    .end annotation

    .line 64
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encrytion:Z

    return-void
.end method

.method public setStreamFormat(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamFormat"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->streamFormat:Ljava/lang/String;

    return-void
.end method

.method public setToken(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 48
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->token:Z

    return-void
.end method

.method public setTokenUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenUrl"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->tokenUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->url:Ljava/lang/String;

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

    .line 98
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->streamFormat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->token:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->tokenUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encrytion:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->encryptionUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->stream_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
