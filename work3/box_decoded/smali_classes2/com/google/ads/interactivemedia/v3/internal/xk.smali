.class public final Lcom/google/ads/interactivemedia/v3/internal/xk;
.super Lcom/google/ads/interactivemedia/v3/internal/xl;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:I

.field public final f:J

.field public final g:I

.field public final h:J

.field public final i:Z

.field public final j:Z

.field public final k:Lcom/google/ads/interactivemedia/v3/internal/hk;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/xj;",
            ">;"
        }
    .end annotation
.end field

.field public final m:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/xj;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p15

    .line 1
    invoke-direct {p0, p2, p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/xl;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v1, p1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->a:I

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    move/from16 v1, p8

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->d:Z

    move/from16 v1, p9

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    move/from16 v1, p12

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->g:I

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->j:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->k:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 2
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    .line 3
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, p19

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/xj;

    .line 5
    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    iget-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/xj;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    goto :goto_0

    :cond_0
    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    move-wide v4, v2

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v6

    if-nez v1, :cond_1

    move-wide v1, v6

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    :cond_2
    add-long v1, v4, p4

    :goto_1
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xk;->c:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
