.class public final Lcom/google/ads/interactivemedia/v3/internal/ak;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/at;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/at;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->b:Lcom/google/ads/interactivemedia/v3/internal/at;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->b:Lcom/google/ads/interactivemedia/v3/internal/at;

    .line 1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/au;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/au;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ak;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/at;->a(Lcom/google/ads/interactivemedia/v3/internal/as;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->b:Lcom/google/ads/interactivemedia/v3/internal/at;

    .line 3
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/aw;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/aw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ak;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/at;->a(Lcom/google/ads/interactivemedia/v3/internal/as;)V

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ak;->b:Lcom/google/ads/interactivemedia/v3/internal/at;

    .line 2
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/av;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/av;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ak;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/at;->a(Lcom/google/ads/interactivemedia/v3/internal/as;)V

    return-void
.end method
