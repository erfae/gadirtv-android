.class final Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;
.super Lorg/chromium/net/UploadDataProvider;
.source "ByteArrayUploadDataProvider.java"


# instance fields
.field private final data:[B

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->data:[B

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->data:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->position:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->position:I

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3
    iget p2, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->position:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->position:I

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/ext/cronet/ByteArrayUploadDataProvider;->position:I

    .line 2
    invoke-virtual {p1}, Lorg/chromium/net/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method
