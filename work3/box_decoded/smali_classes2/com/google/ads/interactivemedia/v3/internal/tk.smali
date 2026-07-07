.class public final Lcom/google/ads/interactivemedia/v3/internal/tk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ii;


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/ir;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ih;

.field private final c:I

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/tj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:J

.field private h:Lcom/google/ads/interactivemedia/v3/internal/iu;

.field private i:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/ti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ir;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/tk;->a:Lcom/google/ads/interactivemedia/v3/internal/ir;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ih;ILcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->c:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    new-instance p1, Landroid/util/SparseArray;

    .line 1
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tj;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->i:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/tj;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->c:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/tj;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->j:Lcom/google/ads/interactivemedia/v3/internal/ti;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->g:J

    .line 17
    invoke-virtual {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/tj;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;J)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->h:Lcom/google/ads/interactivemedia/v3/internal/iu;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ti;JJ)V
    .locals 6

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->j:Lcom/google/ads/interactivemedia/v3/internal/ti;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->g:J

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->f:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 6
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 7
    invoke-interface {p1, v3, v4, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->f:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide p2, v3

    .line 8
    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(JJ)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/tj;

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/tj;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/tk;->a:Lcom/google/ads/interactivemedia/v3/internal/ir;

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/ic;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->h:Lcom/google/ads/interactivemedia/v3/internal/iu;

    .line 5
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ic;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ic;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()[Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->i:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 13
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ih;->c()V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->e:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tj;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/tj;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tk;->i:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method
