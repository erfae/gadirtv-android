.class final Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fk$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;)Z
    .locals 3

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->f:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->f:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->g:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->g:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->h:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->h:Z

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->j:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->j:Z

    if-ne v0, v2, :cond_5

    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->d:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->d:I

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->m:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->m:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->n:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->n:I

    if-ne v0, v2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->o:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->o:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->p:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->p:I

    if-ne v0, v2, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->k:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->k:Z

    if-ne v0, v2, :cond_5

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->l:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->l:I

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->e:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->b:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pc$b;IIIIZZZZIIIII)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->c:Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    .line 9
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->d:I

    .line 10
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->e:I

    .line 11
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->f:I

    .line 12
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->g:I

    .line 13
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->h:Z

    .line 14
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->i:Z

    .line 15
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->j:Z

    .line 16
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->k:Z

    .line 17
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->l:I

    .line 18
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->m:I

    .line 19
    iput p12, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->n:I

    .line 20
    iput p13, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->o:I

    .line 21
    iput p14, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->p:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a:Z

    .line 23
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->b:Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->e:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
