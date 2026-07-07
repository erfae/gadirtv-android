.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/wo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/wq;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wo;->a:Lcom/google/ads/interactivemedia/v3/internal/wq;

    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/wq;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/wo;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/wo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wq;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wo;->a:Lcom/google/ads/interactivemedia/v3/internal/wq;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/wq;->h()V

    return-void
.end method
