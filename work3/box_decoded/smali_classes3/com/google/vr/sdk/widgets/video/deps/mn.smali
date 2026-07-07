.class final Lcom/google/vr/sdk/widgets/video/deps/mn;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Ljava/lang/String;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/mn;

.field private n:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/mn;Z)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 2

    if-eqz p1, :cond_8

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->c:Z

    if-eqz v0, :cond_0

    .line 49
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->b:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(I)Lcom/google/vr/sdk/widgets/video/deps/mn;

    .line 50
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 51
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    .line 52
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    if-ne v0, v1, :cond_2

    .line 53
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 55
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->a:Ljava/lang/String;

    .line 56
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    if-ne v0, v1, :cond_4

    .line 57
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    .line 58
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    if-ne v0, v1, :cond_5

    .line 59
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->n:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 61
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->n:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->n:Landroid/text/Layout$Alignment;

    .line 62
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    if-ne v0, v1, :cond_7

    .line 63
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    .line 64
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->k:F

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->k:F

    :cond_7
    if-eqz p2, :cond_8

    .line 65
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->e:Z

    if-nez p2, :cond_8

    iget-boolean p2, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->e:Z

    if-eqz p2, :cond_8

    .line 66
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/mn;->d:I

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/mn;->b(I)Lcom/google/vr/sdk/widgets/video/deps/mn;

    :cond_8
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

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

    .line 11
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public a(F)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    .line 74
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->k:F

    return-object p0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 35
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->b:I

    .line 36
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->c:Z

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->n:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    return-object p0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->d:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->e:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->l:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    return-object p0
.end method

.method public b()Z
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    .line 76
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    return-object p0
.end method

.method public c(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 22
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->h:I

    return-object p0
.end method

.method public c()Z
    .locals 2

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->m:Lcom/google/vr/sdk/widgets/video/deps/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 25
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->i:I

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->c:Z

    if-eqz v0, :cond_0

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->b:I

    return v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->c:Z

    return v0
.end method

.method public g()I
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->e:Z

    if-eqz v0, :cond_0

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->d:I

    return v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->e:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->n:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->j:I

    return v0
.end method

.method public l()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mn;->k:F

    return v0
.end method
