.class public abstract Lcom/google/vr/sdk/widgets/video/deps/bq;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/vr/sdk/widgets/video/deps/bo;",
        "O:",
        "Lcom/google/vr/sdk/widgets/video/deps/bp;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/bm<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:[Lcom/google/vr/sdk/widgets/video/deps/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final f:[Lcom/google/vr/sdk/widgets/video/deps/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lcom/google/vr/sdk/widgets/video/deps/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:I


# direct methods
.method protected constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/bo;[Lcom/google/vr/sdk/widgets/video/deps/bp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 6
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->g()Lcom/google/vr/sdk/widgets/video/deps/bo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->f:[Lcom/google/vr/sdk/widgets/video/deps/bp;

    .line 11
    array-length p2, p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    .line 12
    :goto_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    if-ge p1, p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->f:[Lcom/google/vr/sdk/widgets/video/deps/bp;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->h()Lcom/google/vr/sdk/widgets/video/deps/bp;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bq$1;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/bq$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->a:Ljava/lang/Thread;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bq;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->k()V

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a()V

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/bp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bp;->a()V

    .line 122
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->f:[Lcom/google/vr/sdk/widgets/video/deps/bp;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    aput-object p1, v0, v1

    return-void
.end method

.method private i()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->j:Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    throw v0
.end method

.method private j()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 76
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->l()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private l()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 85
    monitor-exit v0

    return v2

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 87
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->f:[Lcom/google/vr/sdk/widgets/video/deps/bp;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    aget-object v3, v3, v4

    .line 88
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->k:Z

    .line 89
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->k:Z

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 91
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 92
    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/bp;->b(I)V

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b_()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 94
    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/bp;->b(I)V

    .line 95
    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/bo;Lcom/google/vr/sdk/widgets/video/deps/bp;Z)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->j:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->j:Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->j:Ljava/lang/Exception;

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->j:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 105
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 106
    :try_start_3
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->k:Z

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/bp;->e()V

    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/bp;->b_()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->m:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->m:I

    .line 110
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/bp;->e()V

    goto :goto_3

    .line 111
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->m:I

    iput v0, v3, Lcom/google/vr/sdk/widgets/video/deps/bp;->b:I

    .line 112
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->m:I

    .line 113
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 114
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    .line 115
    monitor-exit v4

    return v5

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 90
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private m()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/bo;Lcom/google/vr/sdk/widgets/video/deps/bp;Z)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->e()Lcom/google/vr/sdk/widgets/video/deps/bo;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)V
    .locals 4

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->i()V

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->j()V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/bp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/bp;)V

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->j()V

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->f()Lcom/google/vr/sdk/widgets/video/deps/bp;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 50
    :try_start_0
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->k:Z

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->m:I

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bo;

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->b(Lcom/google/vr/sdk/widgets/video/deps/bo;)V

    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bp;->e()V

    goto :goto_1

    .line 59
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 62
    :try_start_0
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->l:Z

    .line 63
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 64
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final e()Lcom/google/vr/sdk/widgets/video/deps/bo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->i()V

    .line 25
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 26
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->e:[Lcom/google/vr/sdk/widgets/video/deps/bo;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->g:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->i:Lcom/google/vr/sdk/widgets/video/deps/bo;

    .line 28
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lcom/google/vr/sdk/widgets/video/deps/bp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bq;->i()V

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 41
    monitor-exit v0

    return-object v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bq;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/bp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract g()Lcom/google/vr/sdk/widgets/video/deps/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract h()Lcom/google/vr/sdk/widgets/video/deps/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method
