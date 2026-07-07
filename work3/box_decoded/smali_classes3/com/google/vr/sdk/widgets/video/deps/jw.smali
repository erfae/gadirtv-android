.class final Lcom/google/vr/sdk/widgets/video/deps/jw;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/gx;

.field private c:[J

.field private d:Z

.field private e:Lcom/google/vr/sdk/widgets/video/deps/kc;

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kc;Lcom/google/vr/sdk/widgets/video/deps/l;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->e:Lcom/google/vr/sdk/widgets/video/deps/kc;

    .line 4
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gx;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/gx;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->b:Lcom/google/vr/sdk/widgets/video/deps/gx;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->h:J

    .line 6
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/kc;->b:[J

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/jw;->a(Lcom/google/vr/sdk/widgets/video/deps/kc;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 6

    const/4 v0, 0x1

    if-nez p3, :cond_4

    .line 27
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->f:Z

    if-nez p3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    array-length p3, p3

    const/4 v1, -0x4

    const/4 v2, -0x3

    if-ne p1, p3, :cond_2

    .line 32
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 33
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    return v1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 36
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    .line 37
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->b:Lcom/google/vr/sdk/widgets/video/deps/gx;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->e:Lcom/google/vr/sdk/widgets/video/deps/kc;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/kc;->a:[Lcom/google/vr/sdk/widgets/video/deps/gv;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->e:Lcom/google/vr/sdk/widgets/video/deps/kc;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/kc;->e:J

    invoke-virtual {p3, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Lcom/google/vr/sdk/widgets/video/deps/gv;J)[B

    move-result-object p3

    if-eqz p3, :cond_3

    .line 39
    array-length v2, p3

    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e(I)V

    .line 40
    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    .line 41
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    aget-wide v2, p3, p1

    iput-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    return v1

    :cond_3
    return v2

    .line 28
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 29
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->f:Z

    const/4 p1, -0x5

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->e:Lcom/google/vr/sdk/widgets/video/deps/kc;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kc;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/kc;Z)V
    .locals 8

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 11
    :goto_0
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->d:Z

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->e:Lcom/google/vr/sdk/widgets/video/deps/kc;

    .line 13
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kc;->b:[J

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    .line 14
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->h:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/jw;->b(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 18
    invoke-static {p1, v4, v5, p2, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    :cond_2
    :goto_1
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    .line 22
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->d:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    :goto_1
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->h:J

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b_(J)I
    .locals 4

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->c:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 47
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    sub-int p2, p1, p2

    .line 48
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jw;->g:I

    return p2
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
