.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/rt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/rz;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/rg;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/rl;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ry;Lcom/google/ads/interactivemedia/v3/internal/rz;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->c:Lcom/google/ads/interactivemedia/v3/internal/rg;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->a:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->b:Lcom/google/ads/interactivemedia/v3/internal/rz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->c:Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/rt;->d:Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/rz;->c(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    return-void
.end method
