.class public final Lcom/google/vr/sdk/widgets/video/deps/jx;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/jx$a;,
        Lcom/google/vr/sdk/widgets/video/deps/jx$c;,
        Lcom/google/vr/sdk/widgets/video/deps/jx$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nl;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/gw;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/vr/sdk/widgets/video/deps/jz;

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jz;Lcom/google/vr/sdk/widgets/video/deps/jx$b;Lcom/google/vr/sdk/widgets/video/deps/nl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->b:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    .line 5
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    .line 6
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->d:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gw;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/gw;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->c:Lcom/google/vr/sdk/widgets/video/deps/gw;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->j:J

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gv;)J
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->c(Lcom/google/vr/sdk/widgets/video/deps/gv;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/jx;)Lcom/google/vr/sdk/widgets/video/deps/gw;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->c:Lcom/google/vr/sdk/widgets/video/deps/gw;

    return-object p0
.end method

.method private a(JJ)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/jx;)Landroid/os/Handler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private b(J)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/gv;)Z
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->d(Lcom/google/vr/sdk/widgets/video/deps/gv;)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gv;)J
    .locals 2

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->g(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/s; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->g:Z

    .line 68
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->f()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->e:Ljava/util/TreeMap;

    .line 72
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jz;->h:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gv;)Z
    .locals 5

    .line 93
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->b:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->h:J

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jx$b;->a(J)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->b:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/jx$b;->b()V

    return-void
.end method

.method private g()V
    .locals 5

    .line 84
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->k:Z

    .line 87
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->j:J

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->b:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/jx$b;->a()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/jx$c;
    .locals 3

    .line 48
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jx$c;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jx;Lcom/google/vr/sdk/widgets/video/deps/ir;)V

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jz;)V
    .locals 2

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->h:J

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->d()V

    return-void
.end method

.method a(J)Z
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->g:Z

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->h:J

    invoke-direct {p0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/jx;->b(J)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_3

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->h:J

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->e()V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->g()V

    :cond_4
    return v1
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->f:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 37
    :cond_1
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 39
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->g()V

    return v2

    :cond_3
    return v1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->l:Z

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/jc;)V
    .locals 5

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 43
    :cond_0
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->i:J

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jx;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 54
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jx$a;

    .line 58
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/jx$a;->a:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/jx$a;->b:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/jx;->a(JJ)V

    return v1

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jx;->c()V

    return v1
.end method
