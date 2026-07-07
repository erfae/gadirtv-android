.class public final Lcom/google/vr/sdk/widgets/video/deps/fq;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gd;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fi;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private c:I

.field private d:I

.field private e:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->c:I

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->c:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z
    .locals 3

    .line 53
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 59
    :goto_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private b()Z
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PesReader"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 69
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 70
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->k:Z

    .line 71
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 72
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->f:Z

    .line 73
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->g:Z

    .line 74
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 75
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->i:I

    if-nez v0, :cond_1

    .line 77
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    :goto_0
    return v3
.end method

.method private c()V
    .locals 10

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->l:J

    .line 82
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->f:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 85
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 86
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 87
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 88
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 89
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 90
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->h:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->g:Z

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 92
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 93
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 94
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 95
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 96
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 97
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 98
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->e:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    .line 99
    iput-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->h:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->e:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->l:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->c:I

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->d:I

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->h:Z

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a()V

    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/pe;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 15
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->c:I

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_3

    const-string v4, "PesReader"

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    .line 19
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    if-eq p2, v0, :cond_0

    const/16 v5, 0x3b

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected start indicator: expected "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " more bytes"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-string p2, "Unexpected start indicator reading extended header"

    .line 17
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(I)V

    .line 25
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p2

    if-lez p2, :cond_c

    .line 26
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->c:I

    if-eqz p2, :cond_b

    const/4 v4, 0x0

    if-eq p2, v3, :cond_9

    if-eq p2, v2, :cond_8

    if-ne p2, v1, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p2

    .line 38
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    if-ne v5, v0, :cond_5

    goto :goto_2

    :cond_5
    sub-int v4, p2, v5

    :goto_2
    if-lez v4, :cond_6

    sub-int/2addr p2, v4

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 42
    :cond_6
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 43
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    if-eq v4, v0, :cond_4

    sub-int/2addr v4, p2

    .line 44
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->j:I

    if-nez v4, :cond_4

    .line 46
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/fi;->b()V

    .line 47
    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(I)V

    goto :goto_1

    .line 48
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const/16 p2, 0xa

    .line 31
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->i:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 32
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    invoke-direct {p0, p1, v4, p2}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->i:I

    .line 33
    invoke-direct {p0, p1, p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 34
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fq;->c()V

    .line 35
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->l:J

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->k:Z

    invoke-interface {p2, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(JZ)V

    .line 36
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(I)V

    goto :goto_1

    .line 29
    :cond_9
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    const/16 v5, 0x9

    invoke-direct {p0, p1, p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 30
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fq;->b()Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 v4, 0x2

    :cond_a
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/fq;->a(I)V

    goto/16 :goto_1

    .line 27
    :cond_b
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->e:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fq;->a:Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    return-void
.end method
