.class public final Lcom/google/ads/interactivemedia/v3/internal/au;
.super Lcom/google/ads/interactivemedia/v3/internal/as;
.source "IMASDK"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ak;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/as;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ak;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/au;->d:Lcom/google/ads/interactivemedia/v3/internal/ak;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ak;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
