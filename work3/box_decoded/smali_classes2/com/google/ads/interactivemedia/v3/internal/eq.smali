.class public final Lcom/google/ads/interactivemedia/v3/internal/eq;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:Ljava/lang/Object;

.field private static final q:Lcom/google/ads/interactivemedia/v3/internal/dg;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/google/ads/interactivemedia/v3/internal/dg;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    const-string v1, "com.google.ads.interactivemedia.v3.exoplayer2.Timeline"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->q:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->q:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    .line 10
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/dg;Ljava/lang/Object;JJJZZZJJIJ)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/eq;->q:Lcom/google/ads/interactivemedia/v3/internal/dg;

    :goto_0
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->d:Ljava/lang/Object;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->e:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->f:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->g:J

    move v1, p10

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->h:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->i:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->j:Z

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->o:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    move/from16 v2, p17

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    move-wide/from16 v2, p18

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->p:J

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->k:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    .line 7
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    .line 8
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->d:Ljava/lang/Object;

    .line 9
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->e:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->f:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->g:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->h:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->i:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->j:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->j:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->k:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->k:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->o:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->o:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eq;->p:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->p:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0xd9

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    .line 12
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/dg;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->d:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 12
    :goto_0
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->e:J

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->f:J

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->g:J

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->h:Z

    iget-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->i:Z

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->j:Z

    iget-boolean v12, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->k:Z

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->o:J

    move-wide/from16 v17, v13

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    iget v14, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    move/from16 v19, v13

    move/from16 v20, v14

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->p:J

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x20

    ushr-long v21, v3, v2

    xor-long v3, v3, v21

    long-to-int v4, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v3, v5, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v3, v7, v2

    xor-long/2addr v3, v7

    long-to-int v4, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v12

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v3, v15, v2

    xor-long/2addr v3, v15

    long-to-int v4, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v3, v17, v2

    xor-long v3, v17, v3

    long-to-int v4, v3

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    add-int v1, v1, v19

    mul-int/lit8 v1, v1, 0x1f

    add-int v1, v1, v20

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v2, v13, v2

    xor-long/2addr v2, v13

    long-to-int v3, v2

    add-int/2addr v1, v3

    return v1
.end method
