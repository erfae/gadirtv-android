.class final Lcom/google/ads/interactivemedia/v3/internal/ann;
.super Lcom/google/ads/interactivemedia/v3/internal/anq;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/anq<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/anu;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ann;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/anq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ans;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ann;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ans;-><init>(Lcom/google/ads/interactivemedia/v3/internal/anu;I)V

    return-object v0
.end method
