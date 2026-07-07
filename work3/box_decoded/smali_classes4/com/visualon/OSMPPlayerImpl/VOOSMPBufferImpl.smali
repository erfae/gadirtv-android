.class Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;
.super Ljava/lang/Object;
.source "VOOSMPBufferImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPBuffer;


# instance fields
.field protected mBuffer:[B

.field protected mBufferSize:I

.field protected mTimestamp:J


# direct methods
.method public constructor <init>(JI[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mTimestamp:J

    .line 28
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBufferSize:I

    .line 29
    iput-object p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBuffer:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBufferSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mTimestamp:J

    return-wide v0
.end method
