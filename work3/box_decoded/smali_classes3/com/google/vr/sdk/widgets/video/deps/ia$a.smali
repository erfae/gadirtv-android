.class final Lcom/google/vr/sdk/widgets/video/deps/ia$a;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ia;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/on;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ot;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/cz;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ia;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/ia$b;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/ot;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b:Landroid/net/Uri;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-direct {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/on;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 6
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ot;

    .line 7
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-direct {p3}, Lcom/google/vr/sdk/widgets/video/deps/cz;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    const/4 p4, 0x1

    .line 8
    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->i:Z

    const-wide/16 p4, -0x1

    .line 9
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->l:J

    .line 10
    new-instance p4, Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v2, p3, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    move-object v0, p4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/nv;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    return-object p0
.end method

.method private a(JJ)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    iput-wide p1, v0, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 49
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->j:J

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    return-object p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->j:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->h:Z

    return-void
.end method

.method public b()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 15
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->h:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    iget-wide v12, v4, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 18
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 19
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/on;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->l:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v12

    .line 21
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->l:J

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/on;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 23
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/co;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->l:J

    move-object v5, v11

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-virtual {v2, v11, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/ct;Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/cr;

    move-result-object v2

    .line 25
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->i:Z

    if-eqz v4, :cond_1

    .line 26
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->j:J

    invoke-interface {v2, v12, v13, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(JJ)V

    .line 27
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->i:Z

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 28
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->h:Z

    if-nez v4, :cond_2

    .line 29
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ot;->c()V

    .line 30
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-interface {v2, v11, v4}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result v1

    .line 31
    invoke-interface {v11}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ia;->b(Lcom/google/vr/sdk/widgets/video/deps/ia;)J

    move-result-wide v6

    add-long/2addr v6, v12

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 32
    invoke-interface {v11}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v12

    .line 33
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->f:Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ot;->b()Z

    .line 34
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/ia;->d(Lcom/google/vr/sdk/widgets/video/deps/ia;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ia;->c(Lcom/google/vr/sdk/widgets/video/deps/ia;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-interface {v11}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 39
    :goto_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    .line 45
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0

    :cond_5
    return-void
.end method
