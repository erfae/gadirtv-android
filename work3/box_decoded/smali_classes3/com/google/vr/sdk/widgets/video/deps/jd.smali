.class public final Lcom/google/vr/sdk/widgets/video/deps/jd;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/jd$a;,
        Lcom/google/vr/sdk/widgets/video/deps/jd$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/cr;

.field private final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/jd$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/google/vr/sdk/widgets/video/deps/jd$b;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/da;

.field private h:[Lcom/google/vr/sdk/widgets/video/deps/l;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cr;ILcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;

    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 23
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jd$a;

    .line 24
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/jd$a;-><init>(IILcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 25
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->f:Lcom/google/vr/sdk/widgets/video/deps/jd$b;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;)V

    .line 26
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/jd$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/da;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->g:Lcom/google/vr/sdk/widgets/video/deps/da;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;J)V
    .locals 6

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->f:Lcom/google/vr/sdk/widgets/video/deps/jd$b;

    .line 10
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->e:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    invoke-interface {p1, v3, v4, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->e:Z

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->a:Lcom/google/vr/sdk/widgets/video/deps/cr;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(JJ)V

    const/4 p2, 0x0

    .line 16
    :goto_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 17
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/jd$a;

    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/jd$a;->a(Lcom/google/vr/sdk/widgets/video/deps/jd$b;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->g:Lcom/google/vr/sdk/widgets/video/deps/da;

    return-object v0
.end method

.method public c()[Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jd;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object v0
.end method
