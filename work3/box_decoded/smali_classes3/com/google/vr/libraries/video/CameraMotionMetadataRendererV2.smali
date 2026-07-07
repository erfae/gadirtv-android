.class public Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "CameraMotionMetadataRendererV2.java"


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0


# instance fields
.field private final buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

.field private final coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

.field private final formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private volatile frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;


# direct methods
.method public constructor <init>(Lcom/google/vr/libraries/video/MotionCoordinateSystem;)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>()V

    iput-object v0, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 4
    iput-object p1, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    return-void
.end method

.method private static parseMetadata([BI)[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([BI)V

    .line 34
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 p1, 0x0

    .line 37
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p0, p1

    const/4 p1, 0x1

    .line 38
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p0, p1

    const/4 p1, 0x2

    .line 39
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p0, p1

    return-object p0
.end method


# virtual methods
.method public getFrameRotationBuffer()Lcom/google/vr/libraries/video/FrameRotationBuffer;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;

    return-object v0
.end method

.method public isEnded()Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;

    return-void
.end method

.method public render(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 13
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;

    if-nez p3, :cond_0

    .line 14
    new-instance p3, Lcom/google/vr/libraries/video/FrameRotationBuffer;

    iget-object p4, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->coordinateSystem:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    invoke-direct {p3, p4}, Lcom/google/vr/libraries/video/FrameRotationBuffer;-><init>(Lcom/google/vr/libraries/video/MotionCoordinateSystem;)V

    iput-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_3

    .line 16
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 17
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p4, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->readSource(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_3

    .line 18
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->h()V

    .line 21
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    iget-object p4, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-object p4, p4, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    invoke-static {p3, p4}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->parseMetadata([BI)[F

    move-result-object p3

    if-eqz p3, :cond_2

    .line 23
    iget-object p4, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->frameRotationBuffer:Lcom/google/vr/libraries/video/FrameRotationBuffer;

    iget-object v0, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->setRotation(J[F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_2
    iget-object p3, p0, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->buffer:Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 1

    .line 9
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
