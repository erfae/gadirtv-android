.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/el;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/en;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/en;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/en;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/en;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/en;->b(Lcom/google/ads/interactivemedia/v3/internal/en;)V

    return-void
.end method
