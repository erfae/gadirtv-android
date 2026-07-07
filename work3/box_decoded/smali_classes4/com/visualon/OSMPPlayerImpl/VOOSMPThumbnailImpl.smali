.class Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;
.super Ljava/lang/Object;
.source "VOOSMPThumbnailImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPThumbnail;


# instance fields
.field private dataSize:I

.field private height:I

.field private tbData:[B

.field private timeStamp:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->tbData:[B

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->dataSize:I

    .line 30
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->width:I

    .line 31
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->height:I

    .line 32
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->timeStamp:I

    return-void
.end method

.method public constructor <init>([BIIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->tbData:[B

    .line 37
    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->dataSize:I

    .line 38
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->width:I

    .line 39
    iput p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->height:I

    .line 40
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->timeStamp:I

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->dataSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->height:I

    return v0
.end method

.method public getThumbnailData()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->tbData:[B

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->timeStamp:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->width:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->dataSize:I

    if-lez v0, :cond_1

    .line 51
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->tbData:[B

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->width:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->height:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->timeStamp:I

    const/4 p1, 0x1

    return p1
.end method
