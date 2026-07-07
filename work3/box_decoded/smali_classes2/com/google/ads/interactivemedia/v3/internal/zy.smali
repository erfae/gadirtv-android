.class public final Lcom/google/ads/interactivemedia/v3/internal/zy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zn;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aad;

    .line 1
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aad;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zy;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zy;->b:Lcom/google/ads/interactivemedia/v3/internal/zn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/ads/interactivemedia/v3/internal/zo;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zy;->b()Lcom/google/ads/interactivemedia/v3/internal/zx;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/zx;
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zx;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zy;->b:Lcom/google/ads/interactivemedia/v3/internal/zn;

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/aad;

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aad;->b()Lcom/google/ads/interactivemedia/v3/internal/aah;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zx;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    return-object v0
.end method
