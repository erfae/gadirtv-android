.class public final Lcom/google/vr/sdk/widgets/video/deps/jm;
.super Lcom/google/vr/sdk/widgets/video/deps/iz;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private final k:I

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJILcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 15

    move-object v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v12, p10

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/iz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJ)V

    move/from16 v0, p12

    .line 2
    iput v0, v14, Lcom/google/vr/sdk/widgets/video/deps/jm;->k:I

    move-object/from16 v0, p13

    .line 3
    iput-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/jm;->l:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(J)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 10
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    add-long/2addr v0, v2

    :cond_0
    move-wide v5, v0

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/co;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;JJ)V

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jm;->c()Lcom/google/vr/sdk/widgets/video/deps/jb;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jb;->a(J)V

    .line 14
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->k:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/jb;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v4

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->l:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 18
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    const v1, 0x7fffffff

    .line 19
    invoke-interface {v4, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result v3

    goto :goto_0

    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->m:J

    long-to-int v8, v0

    .line 21
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->g:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 25
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->n:Z

    return-void

    :catchall_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jm;->n:Z

    return v0
.end method
