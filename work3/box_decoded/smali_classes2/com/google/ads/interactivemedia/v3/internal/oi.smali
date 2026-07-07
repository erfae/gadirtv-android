.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/oi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/oo;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/oo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oi;->a:Lcom/google/ads/interactivemedia/v3/internal/oo;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oi;->a:Lcom/google/ads/interactivemedia/v3/internal/oo;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/op;->a:I

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/oo;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oo;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
