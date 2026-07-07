.class public final Lcom/google/vr/sdk/widgets/video/deps/ez;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I


# instance fields
.field private final c:J

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fb;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fa;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ez;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "ID3"

    .line 59
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/ez;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ez;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->c:J

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fb;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fb;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->d:Lcom/google/vr/sdk/widgets/video/deps/fb;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0xae2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 57
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ez;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/ez;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 51
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 52
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->f:Z

    if-nez p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->d:Lcom/google/vr/sdk/widgets/video/deps/fb;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->c:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/fb;->a(JZ)V

    .line 54
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->f:Z

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->d:Lcom/google/vr/sdk/widgets/video/deps/fb;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    return v0
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->f:Z

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->d:Lcom/google/vr/sdk/widgets/video/deps/fb;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fb;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ez;->d:Lcom/google/vr/sdk/widgets/video/deps/fb;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gd$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fb;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    .line 40
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 41
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v4, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v4

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/ez;->b:I

    if-eq v4, v5, :cond_4

    .line 19
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 20
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 23
    :goto_2
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v6, 0x5

    invoke-interface {p1, v5, v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 25
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 28
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 31
    :cond_0
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    return v5

    .line 34
    :cond_2
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x5

    .line 37
    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 17
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method
