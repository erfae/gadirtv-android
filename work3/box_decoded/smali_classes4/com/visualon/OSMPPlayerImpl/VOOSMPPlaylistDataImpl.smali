.class Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;
.super Ljava/lang/Object;
.source "VOOSMPPlaylistDataImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPPlaylistData;


# instance fields
.field private mData:[B

.field private mDataSize:I

.field private mErrorCode:I

.field private mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

.field private mNewUrl:Ljava/lang/String;

.field private mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field private mRootUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mUrl:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    .line 50
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mDataSize:I

    .line 51
    invoke-static {p6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 52
    invoke-static {p7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    .line 53
    iput p8, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mDataSize:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    return-object v0
.end method

.method public getNewUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mNewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mPlaylistType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-object v0
.end method

.method public getRootUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
