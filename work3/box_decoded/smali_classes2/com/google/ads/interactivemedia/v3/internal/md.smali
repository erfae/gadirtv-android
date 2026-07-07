.class public final Lcom/google/ads/interactivemedia/v3/internal/md;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ni;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ni;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/util/List;

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    :cond_1
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->d:I

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->e:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->d:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    .line 8
    aget-object v5, v3, v1

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 10
    invoke-interface {v5, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->e:I

    :cond_5
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/util/List;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ni;

    .line 12
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 13
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 14
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v4, "application/dvbsubs"

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/ni;->b:[B

    .line 17
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ni;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    .line 14
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 20
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 11

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 21
    aget-object v4, v0, v3

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->f:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 22
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:Z

    :cond_1
    return-void
.end method
