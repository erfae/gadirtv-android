.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/of;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/oo;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/cz;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/of;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/of;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/op;->a:I

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/ok; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
