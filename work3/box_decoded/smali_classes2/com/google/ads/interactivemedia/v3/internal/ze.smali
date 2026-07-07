.class final Lcom/google/ads/interactivemedia/v3/internal/ze;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zg;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/zg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->b:Lcom/google/ads/interactivemedia/v3/internal/zg;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ze;)Lcom/google/ads/interactivemedia/v3/internal/zg;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->b:Lcom/google/ads/interactivemedia/v3/internal/zg;

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ze;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/ze;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ze;->c:Z

    return-void
.end method
