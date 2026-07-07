.class final Lcom/google/vr/sdk/widgets/video/deps/ba$e;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ax$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ba;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ba;Lcom/google/vr/sdk/widgets/video/deps/ba$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ba$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ba;)V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 10

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->d(Lcom/google/vr/sdk/widgets/video/deps/ba;)Lcom/google/vr/sdk/widgets/video/deps/av$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ba;->e(Lcom/google/vr/sdk/widgets/video/deps/ba;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->d(Lcom/google/vr/sdk/widgets/video/deps/ba;)Lcom/google/vr/sdk/widgets/video/deps/av$c;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/av$c;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(JJJJ)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    .line 3
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Lcom/google/vr/sdk/widgets/video/deps/ba;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    .line 4
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ba;->c(Lcom/google/vr/sdk/widgets/video/deps/ba;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-boolean p2, Lcom/google/vr/sdk/widgets/video/deps/ba;->b:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    .line 7
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ba$c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ba$c;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ba$1;)V

    throw p2
.end method

.method public b(JJJJ)V
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    .line 10
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ba;->b(Lcom/google/vr/sdk/widgets/video/deps/ba;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ba;

    .line 11
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ba;->c(Lcom/google/vr/sdk/widgets/video/deps/ba;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-boolean p2, Lcom/google/vr/sdk/widgets/video/deps/ba;->b:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    .line 14
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ba$c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ba$c;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ba$1;)V

    throw p2
.end method
