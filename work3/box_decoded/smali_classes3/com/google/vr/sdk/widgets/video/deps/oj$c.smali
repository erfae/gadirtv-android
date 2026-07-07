.class final Lcom/google/vr/sdk/widgets/video/deps/oj$c;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$d;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/io/IOException;

.field private g:I

.field private volatile h:Ljava/lang/Thread;

.field private volatile i:Z

.field private volatile j:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/oj;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    .line 5
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a:I

    .line 6
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->d:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->f:Ljava/io/IOException;

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b(Lcom/google/vr/sdk/widgets/video/deps/oj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;Lcom/google/vr/sdk/widgets/video/deps/oj$c;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    return-void
.end method

.method private c()J
    .locals 2

    .line 110
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->g:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->f:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->g:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-static {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;Lcom/google/vr/sdk/widgets/video/deps/oj$c;)Lcom/google/vr/sdk/widgets/video/deps/oj$c;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a()V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 17
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->f:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 22
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->i:Z

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$d;->a()V

    .line 25
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b()V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->d:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/oj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V

    .line 31
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 68
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a()V

    return-void

    .line 73
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 75
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b()V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 77
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->d:J

    sub-long v6, v4, v0

    .line 78
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->i:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/oj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V

    return-void

    .line 81
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->f:Ljava/io/IOException;

    .line 91
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->g:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->g:I

    .line 92
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    .line 93
    invoke-interface/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/oj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$b;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 95
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->f:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 96
    :cond_4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$b;)I

    move-result v0

    if-eq v0, v10, :cond_9

    .line 97
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$b;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 98
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->g:I

    .line 100
    :cond_5
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->b(Lcom/google/vr/sdk/widgets/video/deps/oj$b;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 101
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->b(Lcom/google/vr/sdk/widgets/video/deps/oj$b;)J

    move-result-wide v0

    goto :goto_0

    .line 102
    :cond_6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c()J

    move-result-wide v0

    .line 103
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->a(J)V

    goto :goto_1

    .line 84
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/oj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 87
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->b:Lcom/google/vr/sdk/widgets/video/deps/oj;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/oj$g;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oj$g;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 82
    :cond_8
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->e:Lcom/google/vr/sdk/widgets/video/deps/oj$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/oj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V

    :cond_9
    :goto_1
    return-void

    .line 74
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 33
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->h:Ljava/lang/Thread;

    .line 34
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->i:Z

    if-nez v3, :cond_1

    const-string v3, "load:"

    .line 35
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$d;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/oj$d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 39
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    throw v3

    .line 40
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v3, :cond_3

    .line 41
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 63
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 58
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj$g;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 53
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj$g;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :catch_3
    nop

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->i:Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 49
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v0, :cond_3

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_4
    move-exception v0

    .line 44
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->j:Z

    if-nez v1, :cond_3

    .line 45
    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_2
    return-void
.end method
