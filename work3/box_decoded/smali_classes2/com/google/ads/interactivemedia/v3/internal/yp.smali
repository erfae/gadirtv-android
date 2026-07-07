.class public final Lcom/google/ads/interactivemedia/v3/internal/yp;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/google/ads/interactivemedia/v3/internal/tb;


# direct methods
.method constructor <init>([I[Lcom/google/ads/interactivemedia/v3/internal/tb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->b:[I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->c:[Lcom/google/ads/interactivemedia/v3/internal/tb;

    array-length p1, p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->a:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->b:[I

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method public final b(I)Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yp;->c:[Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method
