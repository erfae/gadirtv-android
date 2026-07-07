.class public final Lcom/google/ads/interactivemedia/v3/internal/ry;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/rx;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ry;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/rx;",
            ">;I",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->d:J

    return-void
.end method

.method private final a(J)J
    .locals 3

    .line 5
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->d:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 7

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ry;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/ads/interactivemedia/v3/internal/ro;J)V

    return-object v6
.end method

.method public final a(IJJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide v1, p2

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 46
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    .line 47
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide/from16 v1, p5

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    .line 7
    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 4
    invoke-direct {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rx;-><init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 32
    invoke-virtual/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide/from16 v1, p7

    .line 33
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 35
    invoke-virtual {p0, p1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide/from16 v1, p7

    .line 25
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 27
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 28
    invoke-virtual/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 37
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 38
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/rr;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 30
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 31
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/ru;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ru;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 48
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 50
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 51
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rv;

    invoke-direct {v4, p0, v3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 43
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide/from16 v1, p7

    .line 19
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 20
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 21
    invoke-virtual {p0, p1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 23
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 24
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/rs;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rs;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 9
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 10
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/rw;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/rw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 11
    invoke-virtual/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-wide/from16 v1, p7

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 13
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 14
    invoke-virtual {p0, p1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ry;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/rx;

    .line 16
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 17
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/rx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/rt;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
