.class final Lcom/google/vr/sdk/widgets/video/deps/pz$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/pz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/pz;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pz;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/pz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pz;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/pz$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pz$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pz;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/pz;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pz;->tunnelingOnFrameRenderedListener:Lcom/google/vr/sdk/widgets/video/deps/pz$b;

    if-eq p0, p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/pz;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pz;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method
