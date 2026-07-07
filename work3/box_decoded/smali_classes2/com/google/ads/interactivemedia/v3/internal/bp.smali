.class public final Lcom/google/ads/interactivemedia/v3/internal/bp;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/alr;Lcom/google/ads/interactivemedia/v3/internal/yw;)Lcom/google/ads/interactivemedia/v3/internal/ej;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/bl;

    .line 1
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c()Landroid/os/Looper;

    move-result-object v9

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/ev;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/abb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    .line 3
    invoke-direct {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/ev;-><init>(Lcom/google/ads/interactivemedia/v3/internal/abb;)V

    .line 4
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zw;->a(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/zw;

    move-result-object v6

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/rb;->a(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/rb;

    move-result-object v4

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/abb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ej;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/alr;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/sa;Lcom/google/ads/interactivemedia/v3/internal/bl;Lcom/google/ads/interactivemedia/v3/internal/zh;Lcom/google/ads/interactivemedia/v3/internal/ev;Lcom/google/ads/interactivemedia/v3/internal/abb;Landroid/os/Looper;)V

    return-object v10
.end method
