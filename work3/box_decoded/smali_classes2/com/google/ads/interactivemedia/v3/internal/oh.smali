.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/oh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/oo;


# static fields
.field static final a:Lcom/google/ads/interactivemedia/v3/internal/oo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/oh;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/oh;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/oh;->a:Lcom/google/ads/interactivemedia/v3/internal/oo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/op;->a:I

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
