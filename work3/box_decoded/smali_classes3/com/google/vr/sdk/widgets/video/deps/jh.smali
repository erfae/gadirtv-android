.class public Lcom/google/vr/sdk/widgets/video/deps/jh;
.super Lcom/google/vr/sdk/widgets/video/deps/iz;
.source "ContainerMediaChunk.java"


# static fields
.field private static final k:Lcom/google/vr/sdk/widgets/video/deps/cz;


# instance fields
.field private final l:I

.field private final m:J

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/jd;

.field private o:J

.field private volatile p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/jh;->k:Lcom/google/vr/sdk/widgets/video/deps/cz;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJIJLcom/google/vr/sdk/widgets/video/deps/jd;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/google/vr/sdk/widgets/video/deps/iz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJ)V

    move/from16 v1, p14

    .line 2
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jh;->l:I

    move-wide/from16 v1, p15

    .line 3
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jh;->m:J

    move-object/from16 v1, p17

    .line 4
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jh;->n:Lcom/google/vr/sdk/widgets/video/deps/jd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->p:Z

    return-void
.end method

.method public final b()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(J)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v0

    .line 11
    :try_start_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/co;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;JJ)V

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jh;->c()Lcom/google/vr/sdk/widgets/video/deps/jb;

    move-result-object v0

    .line 15
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->m:J

    invoke-virtual {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/jb;->a(J)V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->n:Lcom/google/vr/sdk/widgets/video/deps/jd;

    .line 17
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->a:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->a:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->m:J

    sub-long/2addr v2, v4

    .line 18
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jd;->a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->n:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 21
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->p:Z

    if-nez v3, :cond_2

    .line 22
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/jh;->k:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-interface {v0, v7, v2}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x1

    .line 23
    :cond_3
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->o:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 30
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->q:Z

    return-void

    :catchall_0
    move-exception v0

    .line 26
    :try_start_3
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->o:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 29
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0
.end method

.method public h()J
    .locals 4

    .line 6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->j:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jh;->q:Z

    return v0
.end method
