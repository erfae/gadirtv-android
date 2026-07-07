.class public final Lcom/google/ads/interactivemedia/v3/internal/zr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Landroid/net/Uri;

.field private final b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->b:I

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->c:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->e:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/zs;
    .locals 13

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->a:Landroid/net/Uri;

    const-string v1, "The uri must be set."

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->a:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->c:Ljava/util/Map;

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->d:J

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->e:J

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->f:Ljava/lang/String;

    iget v11, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->g:I

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/zs;-><init>(Landroid/net/Uri;ILjava/util/Map;JJLjava/lang/String;I[B)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->g:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->e:J

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->a:Landroid/net/Uri;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->c:Ljava/util/Map;

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zr;->d:J

    return-void
.end method
