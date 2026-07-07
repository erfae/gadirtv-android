.class public final Lcom/google/ads/interactivemedia/v3/internal/xy;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/abb;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/abb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x2710

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->a:I

    const/16 v1, 0x61a8

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->b:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->c:I

    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->d:F

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->e:F

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xy;->f:Lcom/google/ads/interactivemedia/v3/internal/abb;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/sz;Lcom/google/ads/interactivemedia/v3/internal/zh;[II)Lcom/google/ads/interactivemedia/v3/internal/xz;
    .locals 14

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/xz;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/xx;

    move/from16 v0, p4

    int-to-long v0, v0

    const v2, 0x3f333333    # 0.7f

    move-object/from16 v4, p2

    .line 1
    invoke-direct {v3, v4, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zh;FJ)V

    move-object v13, p0

    iget-object v11, v13, Lcom/google/ads/interactivemedia/v3/internal/xy;->f:Lcom/google/ads/interactivemedia/v3/internal/abb;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x61a8

    const-wide/16 v8, 0x61a8

    const/high16 v10, 0x3f400000    # 0.75f

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/xz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[ILcom/google/ads/interactivemedia/v3/internal/xx;JJJFLcom/google/ads/interactivemedia/v3/internal/abb;)V

    return-object v12
.end method
