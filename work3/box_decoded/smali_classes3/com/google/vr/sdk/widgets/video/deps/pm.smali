.class final Lcom/google/vr/sdk/widgets/video/deps/pm;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/oq;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/vr/sdk/widgets/video/deps/oy;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pn;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pn;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
