.class final Lcom/google/ads/interactivemedia/v3/internal/sf;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aan;
.implements Lcom/google/ads/interactivemedia/v3/internal/re;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/sk;

.field private final b:J

.field private final c:Landroid/net/Uri;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aax;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/sb;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/abd;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ir;

.field private volatile i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field private m:J

.field private n:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sk;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/sb;Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/abd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->c:Landroid/net/Uri;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 1
    invoke-direct {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/aax;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->g:Lcom/google/ads/interactivemedia/v3/internal/abd;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ir;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->j:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->m:J

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/rg;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->b:J

    const-wide/16 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sf;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->l:Lcom/google/ads/interactivemedia/v3/internal/zs;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sf;)Lcom/google/ads/interactivemedia/v3/internal/aax;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    return-object p0
.end method

.method private final a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zr;

    .line 4
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zr;->b(J)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/sk;->f(Lcom/google/ads/interactivemedia/v3/internal/sk;)Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(I)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/sk;->m()Ljava/util/Map;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a(Ljava/util/Map;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zr;->a()Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/sf;JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    iput-wide p1, v0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->k:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->j:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/sf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/sf;)Lcom/google/ads/interactivemedia/v3/internal/zs;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->l:Lcom/google/ads/interactivemedia/v3/internal/zs;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/sf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/sf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->m:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->i:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->o:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->k:J

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 57
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/sk;->e(Lcom/google/ads/interactivemedia/v3/internal/sk;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->n:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 58
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v2, p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 60
    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sf;->o:Z

    return-void
.end method

.method public final b()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    :cond_0
    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->i:Z

    if-nez v2, :cond_18

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    iget-wide v13, v6, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    .line 11
    invoke-direct {v1, v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/sf;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v6

    iput-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->l:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 12
    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->m:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    add-long/2addr v6, v13

    iput-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->m:J

    :cond_1
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 13
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/aax;->b()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    .line 14
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_5

    .line 15
    :try_start_1
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v12, "Invalid bitrate: "

    .line 17
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 18
    :cond_3
    new-instance v15, Ljava/lang/String;

    .line 17
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    .line 18
    :goto_0
    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x0

    const/4 v11, -0x1

    :goto_1
    move/from16 v16, v11

    goto :goto_3

    :catch_0
    const/4 v11, -0x1

    :catch_1
    :try_start_4
    const-string v12, "Invalid bitrate header: "

    .line 19
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 53
    :cond_4
    new-instance v8, Ljava/lang/String;

    .line 19
    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_2
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v11

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    const/16 v16, -0x1

    :goto_3
    const-string v11, "icy-genre"

    .line 21
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    .line 22
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v12

    :goto_4
    const-string v11, "icy-name"

    .line 23
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_7

    .line 24
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v18, v8

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v18, v12

    :goto_5
    const-string v11, "icy-url"

    .line 25
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_8

    .line 26
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v19, v12

    :goto_6
    const-string v11, "icy-pub"

    .line 27
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_9

    .line 28
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v20, v8

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    :goto_7
    const-string v11, "icy-metaint"

    .line 29
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d

    .line 30
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31
    :try_start_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v11, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    .line 32
    :cond_a
    :try_start_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 33
    :cond_b
    new-instance v15, Ljava/lang/String;

    .line 32
    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_8
    invoke-static {v9, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v11, -0x1

    :goto_9
    move/from16 v21, v11

    goto :goto_b

    :catch_2
    const/4 v11, -0x1

    .line 34
    :catch_3
    :try_start_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 19
    :cond_c
    new-instance v7, Ljava/lang/String;

    .line 34
    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 35
    :goto_a
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    const/16 v21, -0x1

    :goto_b
    if-eqz v8, :cond_e

    .line 31
    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/pe;

    move-object v15, v12

    .line 36
    invoke-direct/range {v15 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/pe;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 13
    :cond_e
    invoke-static {v6, v12}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(Lcom/google/ads/interactivemedia/v3/internal/sk;Lcom/google/ads/interactivemedia/v3/internal/pe;)V

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 37
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(Lcom/google/ads/interactivemedia/v3/internal/sk;)Lcom/google/ads/interactivemedia/v3/internal/pe;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(Lcom/google/ads/interactivemedia/v3/internal/sk;)Lcom/google/ads/interactivemedia/v3/internal/pe;

    move-result-object v7

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/pe;->f:I

    if-eq v7, v10, :cond_f

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/rf;

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 38
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(Lcom/google/ads/interactivemedia/v3/internal/sk;)Lcom/google/ads/interactivemedia/v3/internal/pe;

    move-result-object v8

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/pe;->f:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/rf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;ILcom/google/ads/interactivemedia/v3/internal/re;)V

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 39
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/sk;->j()Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v7

    iput-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->n:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/sk;->l()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v8

    .line 40
    invoke-interface {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_f
    move-object v8, v6

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->c:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 41
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/aax;->b()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->m:J

    iget-object v15, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v2, v13

    move-wide/from16 v13, v16

    .line 42
    invoke-interface/range {v7 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/sb;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/ads/interactivemedia/v3/internal/ii;)V

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 43
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/sk;->a(Lcom/google/ads/interactivemedia/v3/internal/sk;)Lcom/google/ads/interactivemedia/v3/internal/pe;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 44
    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/internal/sb;->b()V

    :cond_10
    iget-boolean v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->j:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    iget-wide v7, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->k:J

    .line 45
    invoke-interface {v6, v2, v3, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/sb;->a(JJ)V

    iput-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->j:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_11
    move-wide v13, v2

    const/4 v2, 0x0

    :cond_12
    :goto_c
    if-nez v2, :cond_14

    :try_start_8
    iget-boolean v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->i:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_13

    :try_start_9
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->g:Lcom/google/ads/interactivemedia/v3/internal/abd;

    .line 46
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abd;->b()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    .line 47
    invoke-interface {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/sb;->a(Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result v2

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 48
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/sb;->c()J

    move-result-wide v6

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 49
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/sk;->b(Lcom/google/ads/interactivemedia/v3/internal/sk;)J

    move-result-wide v8

    add-long/2addr v8, v13

    cmp-long v3, v6, v8

    if-lez v3, :cond_12

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->g:Lcom/google/ads/interactivemedia/v3/internal/abd;

    .line 50
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abd;->d()V

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    .line 51
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/sk;->d(Lcom/google/ads/interactivemedia/v3/internal/sk;)Landroid/os/Handler;

    move-result-object v3

    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/sk;->c(Lcom/google/ads/interactivemedia/v3/internal/sk;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v6

    goto :goto_c

    .line 55
    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    move v5, v2

    goto :goto_f

    :cond_14
    :goto_d
    if-ne v2, v4, :cond_15

    goto :goto_e

    .line 54
    :cond_15
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 52
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/sb;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 53
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/sb;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    :cond_16
    move v5, v2

    .line 51
    :goto_e
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 54
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    if-eqz v5, :cond_0

    goto :goto_10

    :catchall_1
    move-exception v0

    :goto_f
    if-eq v5, v4, :cond_17

    .line 55
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 52
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/sb;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_17

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->h:Lcom/google/ads/interactivemedia/v3/internal/ir;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->e:Lcom/google/ads/interactivemedia/v3/internal/sb;

    .line 53
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/sb;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    .line 17
    :cond_17
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/sf;->d:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 54
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 56
    throw v0

    :cond_18
    :goto_10
    return-void
.end method
