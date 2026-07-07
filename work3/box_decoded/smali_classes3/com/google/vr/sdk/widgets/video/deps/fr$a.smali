.class final Lcom/google/vr/sdk/widgets/video/deps/fr$a;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x4e20

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/fr$1;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fr$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pp;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;
    .locals 9

    const/4 v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v1

    const/4 v3, -0x1

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_5

    .line 15
    iget-object v6, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v8

    invoke-static {v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a([BI)I

    move-result v6

    const/16 v8, 0x1ba

    if-eq v6, v8, :cond_0

    const/4 v6, 0x1

    .line 17
    invoke-virtual {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 20
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-lez v0, :cond_2

    cmp-long p1, v4, v1

    if-nez p1, :cond_1

    .line 25
    invoke-static {v6, v7, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1

    :cond_1
    int-to-long p1, v3

    add-long/2addr p4, p1

    .line 26
    invoke-static {p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(J)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/32 v3, 0x186a0

    add-long/2addr v3, v6

    cmp-long v0, v3, p2

    if-lez v0, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p4, p1

    .line 29
    invoke-static {p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(J)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1

    .line 31
    :cond_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    move v3, v0

    move-wide v4, v6

    .line 32
    :cond_4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    goto :goto_0

    :cond_5
    cmp-long p1, v4, v1

    if-eqz p1, :cond_6

    int-to-long p1, v0

    add-long/2addr p4, p1

    .line 37
    invoke-static {v4, v5, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->b(JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1

    .line 38
    :cond_6
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    return-object p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 43
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 45
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a([BI)I

    move-result v1

    const/16 v3, 0x1bb

    if-ne v1, v3, :cond_4

    .line 54
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    .line 59
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 60
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    if-lt v1, v2, :cond_8

    .line 61
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a([BI)I

    move-result v1

    const/16 v3, 0x1ba

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1b9

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    ushr-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    .line 70
    :cond_7
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v1

    .line 72
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 73
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cl$c;)Lcom/google/vr/sdk/widgets/video/deps/cl$f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    .line 7
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p4, v0

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, p4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fr$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1
.end method
