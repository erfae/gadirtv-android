.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/alj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/alk;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alj;->a:Lcom/google/ads/interactivemedia/v3/internal/alk;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alj;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alj;->a:Lcom/google/ads/interactivemedia/v3/internal/alk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alj;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/all;->a(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V

    return-void
.end method
