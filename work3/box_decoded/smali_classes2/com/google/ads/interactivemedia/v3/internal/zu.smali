.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zv;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zw;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zv;Lcom/google/ads/interactivemedia/v3/internal/zw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zu;->a:Lcom/google/ads/interactivemedia/v3/internal/zv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zu;->b:Lcom/google/ads/interactivemedia/v3/internal/zw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zu;->b:Lcom/google/ads/interactivemedia/v3/internal/zw;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zw;->a(Lcom/google/ads/interactivemedia/v3/internal/zw;)V

    return-void
.end method
