.class public final Lcom/google/vr/sdk/widgets/video/deps/jj;
.super Lcom/google/vr/sdk/widgets/video/deps/jc;
.source "InitializationChunk.java"


# static fields
.field private static final a:Lcom/google/vr/sdk/widgets/video/deps/cz;


# instance fields
.field private final j:Lcom/google/vr/sdk/widgets/video/deps/jd;

.field private k:J

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/jj;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/jd;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/jc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jj;->j:Lcom/google/vr/sdk/widgets/video/deps/jd;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->l:Z

    return-void
.end method

.method public b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(J)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v0

    .line 7
    :try_start_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/co;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;JJ)V

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->j:Lcom/google/vr/sdk/widgets/video/deps/jd;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jd;->a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->j:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 13
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->l:Z

    if-nez v3, :cond_1

    .line 14
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/jj;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-interface {v0, v7, v2}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v1, 0x1

    .line 15
    :cond_2
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->k:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_3
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->k:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jj;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0
.end method
