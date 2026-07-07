.class public final Lcom/google/vr/sdk/widgets/video/deps/jq;
.super Lcom/google/vr/sdk/widgets/video/deps/hs;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/jq$e;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$c;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$h;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$g;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$d;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$b;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$a;,
        Lcom/google/vr/sdk/widgets/video/deps/jq$f;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:I

.field private E:J

.field private F:Z

.field private G:I

.field private final a:Z

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/jn$a;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/hw;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final f:J

.field private final g:Z

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/ol$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/jq$d;

.field private final k:Ljava/lang/Object;

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/jp;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/ok;

.field private final q:Ljava/lang/Object;

.field private r:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private s:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/oo;

.field private u:Ljava/io/IOException;

.field private v:Landroid/os/Handler;

.field private w:Landroid/net/Uri;

.field private x:Landroid/net/Uri;

.field private y:Lcom/google/vr/sdk/widgets/video/deps/jz;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 272
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/ka;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/ka;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/jq;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/ol$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jq;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/ol$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/nr$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/jn$a;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ig;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    .line 5
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/hx;

    invoke-direct {v8}, Lcom/google/vr/sdk/widgets/video/deps/hx;-><init>()V

    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/od;

    move/from16 v2, p5

    invoke-direct {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/od;-><init>(I)V

    const-wide/16 v2, -0x1

    cmp-long v4, p6, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x7530

    move-wide v10, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p6

    :goto_0
    if-eqz v4, :cond_1

    const/4 v2, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 9
    invoke-direct/range {v2 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/jq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jz;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/ol$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;Lcom/google/vr/sdk/widgets/video/deps/hw;Lcom/google/vr/sdk/widgets/video/deps/oi;JZLjava/lang/Object;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move-object v2, p0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/jz;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/ol$a;Lcom/google/vr/sdk/widgets/video/deps/jn$a;Lcom/google/vr/sdk/widgets/video/deps/hw;Lcom/google/vr/sdk/widgets/video/deps/oi;JZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/nr$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/jn$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/hw;",
            "Lcom/google/vr/sdk/widgets/video/deps/oi;",
            "JZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/hs;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->w:Landroid/net/Uri;

    .line 15
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 16
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->x:Landroid/net/Uri;

    .line 17
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    .line 18
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->i:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    .line 19
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->c:Lcom/google/vr/sdk/widgets/video/deps/jn$a;

    .line 20
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 21
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->f:J

    .line 22
    iput-boolean p10, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->g:Z

    .line 23
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->d:Lcom/google/vr/sdk/widgets/video/deps/hw;

    .line 24
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->q:Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 25
    :goto_0
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->a:Z

    const/4 p4, 0x0

    .line 26
    invoke-virtual {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object p5

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 27
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->k:Ljava/lang/Object;

    .line 28
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    .line 29
    new-instance p5, Lcom/google/vr/sdk/widgets/video/deps/jq$b;

    invoke-direct {p5, p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/jq$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;Lcom/google/vr/sdk/widgets/video/deps/jq$1;)V

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->o:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    if-eqz p3, :cond_1

    .line 32
    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 33
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->j:Lcom/google/vr/sdk/widgets/video/deps/jq$d;

    .line 34
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->m:Ljava/lang/Runnable;

    .line 35
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->n:Ljava/lang/Runnable;

    .line 36
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ok$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ok$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->p:Lcom/google/vr/sdk/widgets/video/deps/ok;

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jq$d;

    invoke-direct {p1, p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/jq$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;Lcom/google/vr/sdk/widgets/video/deps/jq$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->j:Lcom/google/vr/sdk/widgets/video/deps/jq$d;

    .line 38
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jq$e;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->p:Lcom/google/vr/sdk/widgets/video/deps/ok;

    .line 39
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jr;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/jr;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->m:Ljava/lang/Runnable;

    .line 40
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/js;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/js;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->n:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/jq;)Lcom/google/vr/sdk/widgets/video/deps/oj;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/kj;)V
    .locals 2

    .line 161
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/kj;->a:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 162
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 163
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 165
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 166
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 168
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 169
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 171
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Ljava/io/IOException;)V

    goto :goto_3

    .line 170
    :cond_3
    :goto_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jq$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jq$h;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/kj;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    goto :goto_3

    .line 167
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jq$c;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/jq$c;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/kj;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    goto :goto_3

    .line 164
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->b(Lcom/google/vr/sdk/widgets/video/deps/kj;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/kj;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/kj;",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->r:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kj;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/ol;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jq$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/jq$g;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jq;Lcom/google/vr/sdk/widgets/video/deps/jq$1;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ol;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide p2

    .line 264
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IJ)V

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 184
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 185
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 187
    :goto_0
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 188
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 189
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    if-lt v3, v4, :cond_0

    .line 190
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/jp;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/jp;->a(Lcom/google/vr/sdk/widgets/video/deps/jz;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 194
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v4

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 195
    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v5

    .line 196
    invoke-static {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/jq$f;->a(Lcom/google/vr/sdk/widgets/video/deps/kd;J)Lcom/google/vr/sdk/widgets/video/deps/jq$f;

    move-result-object v4

    .line 197
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 198
    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v5

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v6

    .line 199
    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/jq$f;->a(Lcom/google/vr/sdk/widgets/video/deps/kd;J)Lcom/google/vr/sdk/widgets/video/deps/jq$f;

    move-result-object v5

    .line 200
    iget-wide v6, v4, Lcom/google/vr/sdk/widgets/video/deps/jq$f;->b:J

    .line 201
    iget-wide v8, v5, Lcom/google/vr/sdk/widgets/video/deps/jq$f;->c:J

    .line 202
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v4, v4, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, v5, Lcom/google/vr/sdk/widgets/video/deps/jq$f;->a:Z

    if-nez v4, :cond_5

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->i()J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v14, v14, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    invoke-static {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 204
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 205
    invoke-virtual {v14, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v14

    iget-wide v14, v14, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    invoke-static {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 206
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 207
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/jz;->f:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_4

    .line 208
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/jz;->f:J

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_1
    cmp-long v14, v4, v12

    if-gez v14, :cond_2

    if-lez v2, :cond_2

    .line 212
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 214
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 215
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v4

    :goto_2
    move-wide v6, v4

    :cond_4
    move-wide/from16 v20, v6

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v6

    const/4 v2, 0x0

    :goto_3
    sub-long v8, v8, v20

    move-wide/from16 v22, v8

    const/4 v4, 0x0

    .line 218
    :goto_4
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 219
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 222
    :cond_6
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v3, :cond_9

    .line 223
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->f:J

    .line 224
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->g:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v5, v5, Lcom/google/vr/sdk/widgets/video/deps/jz;->g:J

    cmp-long v7, v5, v10

    if-eqz v7, :cond_7

    .line 225
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jz;->g:J

    .line 226
    :cond_7
    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v3

    sub-long v3, v22, v3

    const-wide/32 v5, 0x4c4b40

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    const-wide/16 v3, 0x2

    .line 228
    div-long v3, v22, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_8
    move-wide/from16 v24, v3

    goto :goto_5

    :cond_9
    move-wide/from16 v24, v12

    .line 229
    :goto_5
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 230
    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    add-long/2addr v3, v5

    invoke-static/range {v20 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v5

    add-long v17, v3, v5

    .line 231
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/jq$a;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->q:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v3

    move/from16 v19, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    invoke-direct/range {v14 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;-><init>(JJIJJJLcom/google/vr/sdk/widgets/video/deps/jz;Ljava/lang/Object;)V

    .line 232
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    .line 233
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->a:Z

    if-nez v1, :cond_d

    .line 234
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_a

    .line 236
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_a
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    if-eqz v1, :cond_b

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->g()V

    goto :goto_7

    :cond_b
    if-eqz p1, :cond_d

    .line 239
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/jz;->e:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_d

    .line 240
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/jz;->e:J

    cmp-long v5, v1, v12

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    move-wide v3, v1

    .line 243
    :goto_6
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->A:J

    add-long/2addr v1, v3

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 246
    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jq;->c(J)V

    :cond_d
    :goto_7
    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/jq;)Ljava/io/IOException;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->u:Ljava/io/IOException;

    return-object p0
.end method

.method private b(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->C:J

    const/4 p1, 0x1

    .line 182
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/kj;)V
    .locals 4

    .line 173
    :try_start_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kj;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->g(Ljava/lang/String;)J

    move-result-wide v0

    .line 174
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->B:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->b(J)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method private c(J)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private g()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->x:Landroid/net/Uri;

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    .line 258
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->r:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->i:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/ol;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->j:Lcom/google/vr/sdk/widgets/video/deps/jq$d;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 259
    invoke-interface {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v2

    .line 260
    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 256
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private h()J
    .locals 2

    .line 262
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->D:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private i()J
    .locals 5

    .line 266
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->C:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->C:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 268
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/nl;)Lcom/google/vr/sdk/widgets/video/deps/ie;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    sub-int v7, v2, v3

    .line 53
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-result-object v11

    .line 55
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/jp;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    add-int v5, v2, v7

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->c:Lcom/google/vr/sdk/widgets/video/deps/jn$a;

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->t:Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->C:J

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->p:Lcom/google/vr/sdk/widgets/video/deps/ok;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->d:Lcom/google/vr/sdk/widgets/video/deps/hw;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->o:Lcom/google/vr/sdk/widgets/video/deps/jx$b;

    move-object v4, v1

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/jp;-><init>(ILcom/google/vr/sdk/widgets/video/deps/jz;ILcom/google/vr/sdk/widgets/video/deps/jn$a;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;JLcom/google/vr/sdk/widgets/video/deps/ok;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/hw;Lcom/google/vr/sdk/widgets/video/deps/jx$b;)V

    .line 56
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jp;->a:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v11, p6

    .line 134
    instance-of v13, v11, Lcom/google/vr/sdk/widgets/video/deps/s;

    move-object v14, p0

    .line 135
    iget-object v1, v14, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v3

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v4

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v9

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move v12, v13

    .line 139
    invoke-virtual/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v13, :cond_0

    .line 140
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/oj;->a:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->r:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 64
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->d()V

    .line 66
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    :cond_0
    const-wide/16 v2, 0x0

    .line 67
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->A:J

    .line 68
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->B:J

    .line 69
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->a:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 70
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->w:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->x:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->u:Ljava/io/IOException;

    .line 72
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    .line 75
    :cond_2
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->C:J

    .line 76
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->D:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    .line 78
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->F:Z

    .line 79
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method a(J)V
    .locals 5

    .line 87
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 88
    :cond_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 0

    .line 42
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->t:Lcom/google/vr/sdk/widgets/video/deps/oo;

    .line 43
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->b:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/nr$a;->a()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->r:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 46
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string p2, "Loader:DashMediaSource"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->s:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    .line 48
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->g()V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 1

    .line 58
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jp;

    .line 59
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/jp;->f()V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->l:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/jp;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/jz;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v13, p2

    .line 90
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v11

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 94
    invoke-virtual/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 96
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v3

    .line 98
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    .line 99
    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 100
    invoke-virtual {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    cmp-long v10, v8, v5

    if-gez v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 102
    :cond_1
    iget-boolean v5, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v5, :cond_7

    sub-int v5, v3, v7

    .line 104
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v8

    if-le v5, v8, :cond_2

    const-string v5, "DashMediaSource"

    const-string v8, "Loaded out of sync manifest"

    .line 105
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v6, 0x1

    goto :goto_4

    .line 107
    :cond_2
    iget-boolean v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->F:Z

    if-nez v5, :cond_4

    iget-wide v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    iget-wide v8, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->h:J

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-wide v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const-string v5, "DashMediaSource"

    .line 108
    iget-wide v8, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->h:J

    iget-boolean v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->F:Z

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->E:J

    const/16 v15, 0x50

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Loaded stale dynamic manifest: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-eqz v6, :cond_6

    .line 111
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->D:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->D:I

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 112
    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->h()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jq;->c(J)V

    goto :goto_5

    .line 114
    :cond_5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/jo;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/jo;-><init>()V

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->u:Ljava/io/IOException;

    :goto_5
    return-void

    .line 116
    :cond_6
    iput v4, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->D:I

    .line 117
    :cond_7
    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 118
    iget-boolean v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    and-int/2addr v2, v5

    iput-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->z:Z

    sub-long v5, v13, p4

    .line 119
    iput-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->A:J

    .line 120
    iput-wide v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->B:J

    .line 121
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->j:Landroid/net/Uri;

    if-eqz v2, :cond_a

    .line 122
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_0
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->x:Landroid/net/Uri;

    if-ne v0, v5, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_9

    .line 125
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->j:Landroid/net/Uri;

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->x:Landroid/net/Uri;

    .line 126
    :cond_9
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    :goto_6
    if-nez v3, :cond_c

    .line 128
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->i:Lcom/google/vr/sdk/widgets/video/deps/kj;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->y:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->i:Lcom/google/vr/sdk/widgets/video/deps/kj;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Lcom/google/vr/sdk/widgets/video/deps/kj;)V

    goto :goto_7

    :cond_b
    const/4 v0, 0x1

    .line 130
    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    goto :goto_7

    :cond_c
    const/4 v0, 0x1

    .line 131
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->G:I

    .line 132
    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    :goto_7
    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$b;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 148
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 149
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 150
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 151
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 152
    invoke-virtual/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 153
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Ljava/io/IOException;)V

    .line 154
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    return-object v1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->p:Lcom/google/vr/sdk/widgets/video/deps/ok;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ok;->a()V

    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 141
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 142
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 143
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 144
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 145
    invoke-virtual/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 146
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jq;->b(J)V

    return-void
.end method

.method c()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->g()V

    return-void
.end method

.method c(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 155
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jq;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 156
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 157
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 158
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 159
    invoke-virtual/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq;->F:Z

    return-void
.end method

.method final synthetic e()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->a(Z)V

    return-void
.end method

.method final synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq;->g()V

    return-void
.end method
