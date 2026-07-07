.class public Lcom/google/vr/sdk/widgets/video/deps/eo;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;


# instance fields
.field private b:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/eu;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ep;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eo;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pe;
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-object p0
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 37
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eo;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/eo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>()V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/er;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 25
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    .line 26
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v4, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eo;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/en;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/en;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eo;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ew;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eo;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eo;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->d:Z

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-virtual {v1, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 19
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->d:Z

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1
.end method

.method public a(JJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->c:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eo;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eo;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/s; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
