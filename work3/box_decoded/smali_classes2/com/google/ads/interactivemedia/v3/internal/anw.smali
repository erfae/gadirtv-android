.class final Lcom/google/ads/interactivemedia/v3/internal/anw;
.super Lcom/google/ads/interactivemedia/v3/internal/any;
.source "IMASDK"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/any;-><init>()V

    return-void
.end method

.method static final a(I)Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 0

    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->c()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->d()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->e()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anw;->a(I)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/any;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anw;->a(I)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 0

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anw;->a(I)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    return-object p1
.end method

.method public final b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;
    .locals 0

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anw;->a(I)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    return-object p1
.end method
