.class final Lcom/google/ads/interactivemedia/v3/internal/ans;
.super Lcom/google/ads/interactivemedia/v3/internal/anj;
.source "IMASDK"


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/anu;

.field private final b:Ljava/lang/Object;

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/anu;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/anj;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/anu;->b:[Ljava/lang/Object;

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    return-void
.end method

.method private final a()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 12
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/anu;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    aget-object v1, v1, v2

    .line 13
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    .line 14
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->b(Lcom/google/ads/interactivemedia/v3/internal/anu;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ans;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/anu;->c:[Ljava/lang/Object;

    .line 5
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ans;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->b:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ans;->a:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/anu;->c:[Ljava/lang/Object;

    .line 10
    aget-object v2, v1, v0

    .line 11
    aput-object p1, v1, v0

    return-object v2
.end method
