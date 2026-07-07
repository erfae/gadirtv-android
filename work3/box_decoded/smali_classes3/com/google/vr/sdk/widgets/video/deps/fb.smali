.class public final Lcom/google/vr/sdk/widgets/video/deps/fb;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->a:Lcom/google/vr/sdk/widgets/video/deps/pd;

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 43
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z
    .locals 5

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 46
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->h:Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 53
    :cond_3
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c()V
    .locals 14

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->a:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->a:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;)Lcom/google/vr/sdk/widgets/video/deps/ai$a;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->d:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->c:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->d:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->c:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 60
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 61
    :cond_1
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->e:I

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->k:I

    const-wide/32 v1, 0xf4240

    .line 62
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ai$a;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->j:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->i:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->h:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->l:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 1

    .line 13
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 10

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->k:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 33
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    .line 34
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->k:I

    if-ne v2, v7, :cond_0

    .line 35
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->l:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 36
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->l:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->l:J

    .line 37
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/fb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fb;->c()V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 30
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fb;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->f:I

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 25
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fb;->g:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
