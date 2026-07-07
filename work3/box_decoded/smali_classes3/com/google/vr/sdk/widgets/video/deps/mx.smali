.class public final Lcom/google/vr/sdk/widgets/video/deps/mx;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "WebvttDecoder.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/mw;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/mr;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/mu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mw;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/mw;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->a:Lcom/google/vr/sdk/widgets/video/deps/mw;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/mv$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mr;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/mr;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->d:Lcom/google/vr/sdk/widgets/video/deps/mr;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v3

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return v2
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 1

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/mx;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mz;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 8
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/mv$a;->a()V

    .line 10
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/my;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/mx;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 19
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/mx;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    .line 24
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->d:Lcom/google/vr/sdk/widgets/video/deps/mr;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/mr;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/mu;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->e:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 28
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->a:Lcom/google/vr/sdk/widgets/video/deps/mw;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->e:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/mw;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/mv$a;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/mv$a;->b()Lcom/google/vr/sdk/widgets/video/deps/mv;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mx;->c:Lcom/google/vr/sdk/widgets/video/deps/mv$a;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/mv$a;->a()V

    goto :goto_1

    .line 31
    :cond_5
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/mz;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/mz;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ln;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
