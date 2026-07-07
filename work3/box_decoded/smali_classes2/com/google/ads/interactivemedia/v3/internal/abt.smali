.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/abt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abt;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/abt;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/abt;->a:Ljava/util/Comparator;

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

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/abv;

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/abv;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/abv;->a:I

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/abv;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
