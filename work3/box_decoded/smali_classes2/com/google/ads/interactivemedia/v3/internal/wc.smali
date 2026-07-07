.class public final Lcom/google/ads/interactivemedia/v3/internal/wc;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:Lcom/google/ads/interactivemedia/v3/internal/tl;

.field public b:Z

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/wc;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wc;->b:Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wc;->c:Landroid/net/Uri;

    return-void
.end method
