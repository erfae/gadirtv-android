.class public abstract Lcom/google/vr/sdk/widgets/video/deps/v$b;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;Z)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;Lcom/google/vr/sdk/widgets/video/deps/u;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/vr/sdk/widgets/video/deps/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;Lcom/google/vr/sdk/widgets/video/deps/f;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->b(Lcom/google/vr/sdk/widgets/video/deps/v$c;I)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;I)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/w;->b(Lcom/google/vr/sdk/widgets/video/deps/v$c;Z)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/v$b;->onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/w;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V

    return-void
.end method
