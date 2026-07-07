.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/ya;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ya;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ya;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ya;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cz;

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    sub-int/2addr p2, p1

    return p2
.end method
