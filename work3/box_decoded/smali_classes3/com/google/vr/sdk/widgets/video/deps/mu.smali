.class public final Lcom/google/vr/sdk/widgets/video/deps/mu;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/mu;->a()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->a:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/mu;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/mu;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lcom/google/vr/sdk/widgets/video/deps/mu;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 33
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 56
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->f:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->g:Z

    return-object p0
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 44
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->k:I

    return-object p0
.end method

.method public a()V
    .locals 2

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->a:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->c:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->g:Z

    .line 10
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->i:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->j:I

    .line 12
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->k:I

    .line 13
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->l:I

    .line 14
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->m:I

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->n:I

    .line 16
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->p:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->a:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->c:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 4

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->m:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->m:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 63
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->h:I

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->i:Z

    return-object p0
.end method

.method public b(Z)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->l:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Z)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 48
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->m:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mu;
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 2

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->g:Z

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->f:I

    return v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->g:Z

    return v0
.end method

.method public h()I
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->i:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->h:I

    return v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->i:Z

    return v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->p:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->n:I

    return v0
.end method

.method public l()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mu;->o:F

    return v0
.end method
