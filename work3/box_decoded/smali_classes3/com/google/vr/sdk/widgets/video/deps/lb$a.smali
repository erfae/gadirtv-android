.class final Lcom/google/vr/sdk/widgets/video/deps/lb$a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/ol<",
        "Lcom/google/vr/sdk/widgets/video/deps/le;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/lb;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/vr/sdk/widgets/video/deps/ld;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ol;

    .line 5
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ko;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ko;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->b(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/lc;->n:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->a:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/pr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->c(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ol;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb$a;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb$a;Lcom/google/vr/sdk/widgets/video/deps/ld;J)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;J)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ld;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 78
    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->f:J

    .line 79
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v5, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object v5

    iput-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eq v5, v2, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    .line 82
    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->g:J

    .line 83
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-static {v1, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ld;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v5, v5, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-nez v5, :cond_2

    .line 85
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-gez v1, :cond_1

    .line 86
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/lh$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/lh$b;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    .line 87
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-static {v1, v5, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    goto :goto_0

    .line 88
    :cond_1
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->g:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->h:J

    .line 89
    invoke-static {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide/high16 v11, 0x400c000000000000L    # 3.5

    mul-double v7, v7, v11

    cmpl-double v1, v5, v7

    if-lez v1, :cond_2

    .line 90
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/lh$c;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->a:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/lh$c;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    .line 91
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    .line 92
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->f(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/oi;

    move-result-object v11

    const/4 v12, 0x4

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    const/16 v16, 0x1

    move-wide/from16 v13, p2

    invoke-interface/range {v11 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(IJLjava/io/IOException;I)J

    move-result-wide v5

    .line 93
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-static {v1, v7, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    cmp-long v1, v5, v9

    if-eqz v1, :cond_2

    .line 95
    invoke-direct {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(J)Z

    .line 97
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eq v1, v2, :cond_3

    .line 98
    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->h:J

    goto :goto_1

    .line 99
    :cond_3
    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->h:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    .line 100
    :goto_1
    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->h:J

    .line 101
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->g(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-nez v1, :cond_4

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d()V

    :cond_4
    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->i:J

    .line 105
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->g(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    move-result-object p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->h(Lcom/google/vr/sdk/widgets/video/deps/lb;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/lb$a;)Lcom/google/vr/sdk/widgets/video/deps/lc$a;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    .line 72
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->f(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/oi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v2

    .line 73
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide v0

    .line 74
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->e(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d:Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IJ)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/ld;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 0

    .line 106
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    .line 47
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->f(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/oi;

    move-result-object v3

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 49
    :goto_0
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 50
    invoke-static {v9, v10, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 52
    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    .line 54
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    .line 55
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->f(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/oi;

    move-result-object v8

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/oi;->b(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    .line 57
    invoke-static {v7, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v2

    goto :goto_3

    .line 58
    :cond_4
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    goto :goto_3

    .line 60
    :cond_5
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    .line 61
    :goto_3
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/lb;->e(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v7

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v9

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x4

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v16

    .line 65
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 66
    invoke-virtual/range {v7 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    .locals 0

    .line 108
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V
    .locals 0

    .line 107
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 30
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/le;

    .line 31
    instance-of v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-wide/from16 v9, p4

    invoke-direct {p0, v1, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;J)V

    .line 33
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->e(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 34
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 35
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x4

    .line 36
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v11

    move-wide v7, p2

    .line 37
    invoke-virtual/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 40
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->e(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    .line 43
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v11

    const/4 v6, 0x4

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 44
    invoke-virtual/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public b()Z
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    invoke-static {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->a:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ld;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->a:I

    if-eq v0, v6, :cond_1

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->f:J

    add-long/2addr v7, v4

    cmp-long v0, v7, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->d()V

    return-void
.end method

.method public d()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->i:J

    .line 18
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 22
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->j:Z

    .line 23
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a:Lcom/google/vr/sdk/widgets/video/deps/lb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->d(Lcom/google/vr/sdk/widgets/video/deps/lb;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->h:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a()V

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    throw v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->j:Z

    .line 69
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->f()V

    return-void
.end method
