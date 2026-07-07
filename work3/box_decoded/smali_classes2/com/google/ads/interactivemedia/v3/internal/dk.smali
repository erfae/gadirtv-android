.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/dl;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aom;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ro;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dl;Lcom/google/ads/interactivemedia/v3/internal/aom;Lcom/google/ads/interactivemedia/v3/internal/ro;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->b:Lcom/google/ads/interactivemedia/v3/internal/aom;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->b:Lcom/google/ads/interactivemedia/v3/internal/aom;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/aom;Lcom/google/ads/interactivemedia/v3/internal/ro;)V

    return-void
.end method
