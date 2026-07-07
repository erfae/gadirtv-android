.class public Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;
.super Ljava/lang/Object;
.source "voOSPlaylistDataImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSPlaylistData;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSPlaylistDataImpl.java"


# instance fields
.field private mData:[B

.field private mErrorCode:I

.field private mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field private mNewUrl:Ljava/lang/String;

.field private mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

.field private mRootUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-object v0
.end method

.method public getPlaylistType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    return-object v0
.end method

.method public getSZNewUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSZRootUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSZUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 78
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorCode:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voOSPlaylistDataImpl [mRootUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mData:[B

    .line 102
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlaylistType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
