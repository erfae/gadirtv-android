.class public final Lcom/google/ads/interactivemedia/v3/internal/ur;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zn;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ur;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ur;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/vb;I[ILcom/google/ads/interactivemedia/v3/internal/yr;IJZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/uy;Lcom/google/ads/interactivemedia/v3/internal/aay;)Lcom/google/ads/interactivemedia/v3/internal/ty;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aas;",
            "Lcom/google/ads/interactivemedia/v3/internal/vb;",
            "I[I",
            "Lcom/google/ads/interactivemedia/v3/internal/yr;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/uy;",
            "Lcom/google/ads/interactivemedia/v3/internal/aay;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/ty;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ur;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    .line 1
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zn;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v10

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/uu;

    const/4 v13, 0x1

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v11, p7

    move/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    .line 3
    invoke-direct/range {v3 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/uu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aas;Lcom/google/ads/interactivemedia/v3/internal/vb;I[ILcom/google/ads/interactivemedia/v3/internal/yr;ILcom/google/ads/interactivemedia/v3/internal/zo;JIZLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/uy;)V

    return-object v1
.end method
