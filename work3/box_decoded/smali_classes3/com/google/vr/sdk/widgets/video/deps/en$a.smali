.class Lcom/google/vr/sdk/widgets/video/deps/en$a;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;
.implements Lcom/google/vr/sdk/widgets/video/deps/es;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/en;

.field private b:[J

.field private c:[J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/en;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->d:J

    .line 3
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->e:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->e:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 20
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->e:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 9

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/en;->b(J)J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(J)J

    move-result-wide v1

    .line 32
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->d:J

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->c:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    .line 33
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    cmp-long v4, v1, p1

    if-gez v4, :cond_1

    .line 34
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    array-length p2, p1

    sub-int/2addr p2, v3

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    add-int/2addr v0, v3

    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(J)J

    move-result-wide p1

    .line 37
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->d:J

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->c:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 38
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 39
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v6, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    .line 35
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 5

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v0

    .line 9
    div-int/lit8 v0, v0, 0x12

    .line 10
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    .line 11
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->c:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 14
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->c:[J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v2, 0x2

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a_(J)J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/en;->b(J)J

    move-result-wide p1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->b:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->e:J

    return-wide p1
.end method

.method public b()J
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->a:Lcom/google/vr/sdk/widgets/video/deps/en;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(Lcom/google/vr/sdk/widgets/video/deps/en;)Lcom/google/vr/sdk/widgets/video/deps/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ox;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/en$a;->d:J

    return-void
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 0

    return-object p0
.end method
