.class final Lcom/google/ads/interactivemedia/v3/internal/aob;
.super Lcom/google/ads/interactivemedia/v3/internal/anj;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/anj<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/internal/aoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aoj<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aoj;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aoj<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/anj;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 1
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    return-void
.end method

.method private final a()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 9
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->b:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aob;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 3
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aob;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 6
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 7
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->a:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aob;->c:I

    .line 8
    invoke-static {v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Lcom/google/ads/interactivemedia/v3/internal/aoj;ILjava/lang/Object;)V

    return-object v0
.end method
