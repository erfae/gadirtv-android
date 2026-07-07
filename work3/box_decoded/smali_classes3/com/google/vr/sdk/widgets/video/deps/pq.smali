.class public final Lcom/google/vr/sdk/widgets/video/deps/pq;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public static a()V
    .locals 2

    .line 4
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->b()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/pq;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 0

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
