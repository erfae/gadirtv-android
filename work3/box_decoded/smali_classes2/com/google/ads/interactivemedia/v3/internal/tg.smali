.class public abstract Lcom/google/ads/interactivemedia/v3/internal/tg;
.super Lcom/google/ads/interactivemedia/v3/internal/tu;
.source "IMASDK"


# instance fields
.field public final a:J

.field public final b:J

.field private m:Lcom/google/ads/interactivemedia/v3/internal/ti;

.field private n:[I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJJJ)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p14

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/tu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJ)V

    move-wide/from16 v0, p10

    iput-wide v0, v12, Lcom/google/ads/interactivemedia/v3/internal/tg;->a:J

    move-wide/from16 v0, p12

    iput-wide v0, v12, Lcom/google/ads/interactivemedia/v3/internal/tg;->b:J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tg;->n:[I

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget p1, v0, p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ti;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tg;->m:Lcom/google/ads/interactivemedia/v3/internal/ti;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ti;->a()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tg;->n:[I

    return-void
.end method

.method protected final c()Lcom/google/ads/interactivemedia/v3/internal/ti;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tg;->m:Lcom/google/ads/interactivemedia/v3/internal/ti;

    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
