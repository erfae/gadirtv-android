.class public final Lcom/google/ads/interactivemedia/v3/internal/xj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/xj;

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:Lcom/google/ads/interactivemedia/v3/internal/hk;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    .line 1
    invoke-direct/range {v0 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/xj;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/xj;JIJLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/xj;JIJLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->b:Lcom/google/ads/interactivemedia/v3/internal/xj;

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->c:J

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->d:I

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->f:Lcom/google/ads/interactivemedia/v3/internal/hk;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->h:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->i:J

    iput-wide p13, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->j:J

    iput-boolean p15, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->k:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Ljava/lang/Long;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
