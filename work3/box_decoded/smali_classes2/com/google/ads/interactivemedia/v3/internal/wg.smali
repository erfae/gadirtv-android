.class public interface abstract Lcom/google/ads/interactivemedia/v3/internal/wg;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/wg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/vy;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/vy;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/wg;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/vw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/acf;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/ie;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/vw;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
