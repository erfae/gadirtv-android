.class Lcom/google/vr/sdk/widgets/video/deps/px$a;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/px;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/ou;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Error;

.field private d:Ljava/lang/RuntimeException;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/px;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ou;->a()V

    return-void
.end method

.method private b(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ou;->a(I)V

    .line 62
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/px;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    .line 63
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ou;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/px;-><init>(Lcom/google/vr/sdk/widgets/video/deps/px$a;Landroid/graphics/SurfaceTexture;ZLcom/google/vr/sdk/widgets/video/deps/px$1;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->e:Lcom/google/vr/sdk/widgets/video/deps/px;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/px;
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ou;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ou;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ou;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->e:Lcom/google/vr/sdk/widgets/video/deps/px;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->c:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->c:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->e:Lcom/google/vr/sdk/widgets/video/deps/px;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/px;

    return-object p1

    .line 21
    :cond_2
    throw p1

    .line 19
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 50
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->quit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 54
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->quit()Z

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->quit()Z

    throw p1

    .line 27
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->b(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 28
    monitor-enter p0

    .line 29
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 30
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 40
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->c:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 42
    monitor-enter p0

    .line 43
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit p0

    goto :goto_1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 33
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;->d:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 35
    monitor-enter p0

    .line 36
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit p0

    :goto_1
    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    .line 46
    :goto_2
    monitor-enter p0

    .line 47
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 48
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw p1

    :catchall_6
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p1
.end method
