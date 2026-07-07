.class final Lcom/google/ads/interactivemedia/v3/internal/aoo;
.super Lcom/google/ads/interactivemedia/v3/internal/aop;
.source "IMASDK"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/aop;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aop;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;-><init>()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->a:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop;"
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->b:I

    .line 7
    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(III)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(II)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    return-object p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->c()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->c()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->b:I

    .line 2
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->c:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->a:I

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoo;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(II)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    return-object p1
.end method
