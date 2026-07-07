.class public final Lcom/google/ads/interactivemedia/v3/internal/yf;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/ads/interactivemedia/v3/internal/yf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yf;->a:Z

    .line 2
    invoke-static {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yf;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yf;)I
    .locals 3

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->b()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yf;->b:Z

    iget-boolean v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yf;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yf;->a:Z

    .line 4
    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/yf;->a:Z

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/any;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/yf;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yf;->a(Lcom/google/ads/interactivemedia/v3/internal/yf;)I

    move-result p1

    return p1
.end method
