.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/yd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/yd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/yd;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/yd;->a:Ljava/util/Comparator;

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

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/yn;->a:I

    const/4 p1, 0x0

    return p1
.end method
