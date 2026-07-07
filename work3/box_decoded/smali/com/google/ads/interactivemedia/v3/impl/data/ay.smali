.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/data/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/and;


# static fields
.field static final $instance:Lcom/google/ads/interactivemedia/v3/internal/and;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/ay;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ay;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/ay;->$instance:Lcom/google/ads/interactivemedia/v3/internal/and;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->lambda$create$0$GsonAdsRequest(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p1

    return-object p1
.end method
