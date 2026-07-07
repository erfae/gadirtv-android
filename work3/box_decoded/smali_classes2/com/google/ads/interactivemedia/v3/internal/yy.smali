.class final Lcom/google/ads/interactivemedia/v3/internal/yy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/yz;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/yz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->a:Lcom/google/ads/interactivemedia/v3/internal/yz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFZ)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->b:F

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->c:F

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->d:Z

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->e:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->a:Lcom/google/ads/interactivemedia/v3/internal/yz;

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/yz;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yy;->e:Z

    return-void
.end method
