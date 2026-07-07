.class public final Lcom/google/ads/interactivemedia/v3/internal/vy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/wg;


# static fields
.field private static final b:[I


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/vy;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vy;->c:Z

    return-void
.end method

.method private static a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 5
    throw p0

    .line 4
    :catch_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/vw;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {p5 .. p5}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/util/Map;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Landroid/net/Uri;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/vy;->b:[I

    array-length v7, v6

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/vy;->a(ILjava/util/List;)V

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/vy;->a(ILjava/util/List;)V

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/vy;->a(ILjava/util/List;)V

    array-length v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v7, v6, v4

    invoke-static {v7, v5}, Lcom/google/ads/interactivemedia/v3/internal/vy;->a(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    const/4 v2, 0x0

    move-object v6, v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_11

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xb

    if-eqz v7, :cond_e

    const/4 v9, 0x1

    if-eq v7, v9, :cond_d

    const/4 v9, 0x2

    if-eq v7, v9, :cond_c

    const/4 v10, 0x7

    if-eq v7, v10, :cond_b

    const/16 v10, 0x8

    if-eq v7, v10, :cond_6

    if-eq v7, v8, :cond_2

    const/16 v9, 0xd

    if-eq v7, v9, :cond_1

    move-object v9, v2

    goto/16 :goto_6

    :cond_1
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/xa;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:Ljava/lang/String;

    invoke-direct {v9, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/xa;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/acf;)V

    goto/16 :goto_6

    :cond_2
    if-eqz p3, :cond_3

    const/16 v10, 0x30

    move-object/from16 v11, p3

    goto :goto_2

    :cond_3
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/cy;

    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v11, "application/cea-608"

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x10

    move-object v11, v10

    const/16 v10, 0x10

    :goto_2
    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/abm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    or-int/lit8 v10, v10, 0x2

    :cond_4
    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/abm;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "video/avc"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    or-int/lit8 v10, v10, 0x4

    :cond_5
    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/nh;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/mb;

    invoke-direct {v13, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/mb;-><init>(ILjava/util/List;)V

    invoke-direct {v12, v9, v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/nh;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/nk;)V

    move-object v9, v12

    goto :goto_6

    :cond_6
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/ks;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-nez v10, :cond_8

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v12

    instance-of v13, v12, Lcom/google/ads/interactivemedia/v3/internal/wx;

    if-eqz v13, :cond_9

    check-cast v12, Lcom/google/ads/interactivemedia/v3/internal/wx;

    iget-object v10, v12, Lcom/google/ads/interactivemedia/v3/internal/wx;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x4

    goto :goto_4

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :goto_4
    if-eqz p3, :cond_a

    move-object/from16 v11, p3

    goto :goto_5

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    :goto_5
    invoke-direct {v9, v10, v1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ks;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;)V

    goto :goto_6

    :cond_b
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/jz;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/jz;-><init>(J)V

    goto :goto_6

    :cond_c
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/lz;

    invoke-direct {v9}, Lcom/google/ads/interactivemedia/v3/internal/lz;-><init>()V

    goto :goto_6

    :cond_d
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/lx;

    invoke-direct {v9}, Lcom/google/ads/interactivemedia/v3/internal/lx;-><init>()V

    goto :goto_6

    :cond_e
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/lv;

    invoke-direct {v9}, Lcom/google/ads/interactivemedia/v3/internal/lv;-><init>()V

    :goto_6
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, p6

    invoke-static {v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/vy;->a(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vw;

    invoke-direct {v2, v9, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/acf;)V

    goto :goto_7

    :cond_f
    if-ne v7, v8, :cond_10

    move-object v6, v9

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_11
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vw;

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v6, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/acf;)V

    :goto_7
    return-object v2
.end method
