.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/se;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/sk;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/iu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sk;Lcom/google/ads/interactivemedia/v3/internal/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/se;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/se;->b:Lcom/google/ads/interactivemedia/v3/internal/iu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/se;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/se;->b:Lcom/google/ads/interactivemedia/v3/internal/iu;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/sk;->b(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    return-void
.end method
