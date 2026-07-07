.class final Lcom/google/ads/interactivemedia/v3/internal/nn;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/ads/interactivemedia/v3/internal/ix;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->a:Ljava/util/List;

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 4

    .line 2
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v0

    .line 4
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v1

    .line 5
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 6
    invoke-static {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->b(JLcom/google/ads/interactivemedia/v3/internal/abr;[Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 8
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->a:Ljava/util/List;

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 10
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 22
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 12
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 13
    :goto_2
    invoke-static {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(ZLjava/lang/Object;)V

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 14
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:I

    .line 17
    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->n(I)V

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->D:I

    .line 19
    invoke-virtual {v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I)V

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    .line 20
    invoke-virtual {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 21
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    .line 14
    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nn;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 22
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
