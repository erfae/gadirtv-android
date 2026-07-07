.class final Lcom/google/ads/interactivemedia/v3/internal/api;
.super Lcom/google/ads/interactivemedia/v3/internal/aop;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/aop<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->a:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->c:I

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->c:I

    .line 2
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->a:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->b:I

    add-int/2addr p1, v1

    .line 3
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/api;->c:I

    return v0
.end method
