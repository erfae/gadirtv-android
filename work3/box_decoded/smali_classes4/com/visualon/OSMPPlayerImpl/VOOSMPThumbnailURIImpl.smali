.class Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;
.super Ljava/lang/Object;
.source "VOOSMPThumbnailURIImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPThumbnailURI;


# instance fields
.field private m_URI:Ljava/lang/String;

.field private m_duration:I

.field private m_rect:Landroid/graphics/Rect;

.field private m_timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_URI:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_timestamp:J

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_duration:I

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_URI:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_timestamp:J

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_duration:I

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_rect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_URI:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_timestamp:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_duration:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 42
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr p1, v1

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_duration:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_timestamp:J

    return-wide v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;->m_URI:Ljava/lang/String;

    return-object v0
.end method
