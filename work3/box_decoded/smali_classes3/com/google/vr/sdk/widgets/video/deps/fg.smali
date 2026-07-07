.class public final Lcom/google/vr/sdk/widgets/video/deps/fg;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z
    .locals 2

    .line 35
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 36
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 37
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z
    .locals 4

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    .line 42
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p1, v2

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v0, 0x2

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 46
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    const/4 p1, 0x4

    .line 47
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    .line 48
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    return v2

    :cond_1
    return v1
.end method

.method private c()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->i:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bb;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->i:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 54
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bb;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->j:I

    const-wide/32 v1, 0xf4240

    .line 57
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bb;->a([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->i:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    .line 8
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->g:I

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->k:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 1

    .line 10
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 11
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 10

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->j:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 27
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->f:I

    .line 28
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->j:I

    if-ne v1, v7, :cond_0

    .line 29
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->k:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 30
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->k:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->h:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->k:J

    .line 31
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fg;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fg;->c()V

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 24
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    goto :goto_0

    .line 18
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fg;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fg;->e:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
