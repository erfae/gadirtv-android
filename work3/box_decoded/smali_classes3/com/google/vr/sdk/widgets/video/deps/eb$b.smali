.class final Lcom/google/vr/sdk/widgets/video/deps/eb$b;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/ek;

.field public c:Lcom/google/vr/sdk/widgets/video/deps/ei;

.field public d:Lcom/google/vr/sdk/widgets/video/deps/dz;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/pe;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->i:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/eb$b;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->d()V

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/eb$b;)Lcom/google/vr/sdk/widgets/video/deps/ej;
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e()Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e()Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 65
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->d:I

    if-eqz v2, :cond_1

    .line 66
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->d:I

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    :cond_2
    return-void
.end method

.method private e()Lcom/google/vr/sdk/widgets/video/deps/ej;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->a:I

    .line 71
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/ej;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/ej;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ei;->a(I)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    .line 20
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->f:I

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->h:I

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 23
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide p1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 28
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dz;->a:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ei;->a(I)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dz;)V
    .locals 1

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ei;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 8
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dz;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->d:Lcom/google/vr/sdk/widgets/video/deps/dz;

    .line 9
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a()V

    return-void
.end method

.method public b()Z
    .locals 4

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->f:I

    .line 33
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:[I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 34
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public c()I
    .locals 6

    .line 38
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e()Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->d:I

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 43
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->d:I

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ej;->e:[B

    .line 45
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 46
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 47
    array-length v0, v0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ek;->c(I)Z

    move-result v3

    .line 49
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->i:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    if-eqz v3, :cond_2

    const/16 v5, 0x80

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 50
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->i:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 51
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->i:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    if-nez v3, :cond_3

    add-int/2addr v0, v5

    return v0

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ek;->q:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 56
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v2

    const/4 v3, -0x2

    .line 57
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    .line 59
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    return v0
.end method
