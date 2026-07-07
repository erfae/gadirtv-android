.class public final Lcom/google/ads/interactivemedia/v3/internal/alr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alr;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;Lcom/google/ads/interactivemedia/v3/internal/fs;)[Lcom/google/ads/interactivemedia/v3/internal/ed;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/acs;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alr;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/oe;->b:Lcom/google/ads/interactivemedia/v3/internal/oe;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/acs;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/oe;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;)V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/gr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alr;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/oe;->b:Lcom/google/ads/interactivemedia/v3/internal/oe;

    .line 2
    invoke-direct {p2, v1, v2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/gr;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/oe;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/fs;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/ed;

    const/4 p3, 0x0

    aput-object v0, p1, p3

    const/4 p3, 0x1

    aput-object p2, p1, p3

    return-object p1
.end method
