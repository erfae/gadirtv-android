.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/ade;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/adg;

.field private final b:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/adg;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ade;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ade;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ade;->a:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ade;->b:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/adg;->b(Landroid/view/Surface;)V

    return-void
.end method
