.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/rv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/rz;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/rl;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->c:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->c:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/rv;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/rz;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method
