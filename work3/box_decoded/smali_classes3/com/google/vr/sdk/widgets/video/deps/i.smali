.class final Lcom/google/vr/sdk/widgets/video/deps/i;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/vr/sdk/widgets/video/deps/d$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/ie$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/if$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/ni$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/i$c;,
        Lcom/google/vr/sdk/widgets/video/deps/i$a;,
        Lcom/google/vr/sdk/widgets/video/deps/i$b;,
        Lcom/google/vr/sdk/widgets/video/deps/i$d;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:Lcom/google/vr/sdk/widgets/video/deps/i$d;

.field private E:J

.field private F:I

.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/y;

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/aa;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ni;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/nj;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/o;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/nn;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/oy;

.field private final h:Landroid/os/HandlerThread;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/g;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

.field private final m:J

.field private final n:Z

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/d;

.field private final p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/oq;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/r;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/ad;

.field private u:Lcom/google/vr/sdk/widgets/video/deps/t;

.field private v:Lcom/google/vr/sdk/widgets/video/deps/if;

.field private w:[Lcom/google/vr/sdk/widgets/video/deps/y;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;ZIZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/g;Lcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->d:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->f:Lcom/google/vr/sdk/widgets/video/deps/nn;

    .line 7
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    .line 8
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->A:I

    .line 9
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    .line 10
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    .line 11
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->j:Lcom/google/vr/sdk/widgets/video/deps/g;

    .line 12
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->r:Lcom/google/vr/sdk/widgets/video/deps/oq;

    .line 13
    new-instance p6, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p6}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    .line 14
    invoke-interface {p4}, Lcom/google/vr/sdk/widgets/video/deps/o;->e()J

    move-result-wide p6

    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->m:J

    .line 15
    invoke-interface {p4}, Lcom/google/vr/sdk/widgets/video/deps/o;->f()Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->n:Z

    .line 16
    sget-object p4, Lcom/google/vr/sdk/widgets/video/deps/ad;->e:Lcom/google/vr/sdk/widgets/video/deps/ad;

    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    invoke-static {p6, p7, p3}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(JLcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 19
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/i$c;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/i$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/i$1;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    .line 20
    array-length p3, p1

    new-array p3, p3, [Lcom/google/vr/sdk/widgets/video/deps/aa;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->b:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 21
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 22
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Lcom/google/vr/sdk/widgets/video/deps/y;->setIndex(I)V

    .line 23
    iget-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->b:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    aget-object p7, p1, p4

    invoke-interface {p7}, Lcom/google/vr/sdk/widgets/video/deps/y;->getCapabilities()Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-direct {p1, p0, p11}, Lcom/google/vr/sdk/widgets/video/deps/d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/d$a;Lcom/google/vr/sdk/widgets/video/deps/oq;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    new-array p1, p3, [Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 28
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/af$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    .line 29
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 30
    invoke-virtual {p2, p0, p5}, Lcom/google/vr/sdk/widgets/video/deps/ni;->a(Lcom/google/vr/sdk/widgets/video/deps/ni$a;Lcom/google/vr/sdk/widgets/video/deps/nn;)V

    .line 31
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->h:Landroid/os/HandlerThread;

    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 33
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p11, p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/vr/sdk/widgets/video/deps/oy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    .line 324
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->d()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->e()V

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    const/4 v1, 0x2

    .line 328
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 329
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 332
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-eqz v4, :cond_0

    .line 333
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    goto :goto_1

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->h()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    .line 338
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 340
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    const/4 v2, 0x0

    :cond_4
    if-eqz v3, :cond_6

    .line 343
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)V

    .line 344
    iget-boolean p1, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->f:Z

    if-eqz p1, :cond_5

    .line 345
    iget-object p1, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ie;->b(J)J

    move-result-wide p1

    .line 346
    iget-object p3, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->m:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->n:Z

    invoke-interface {p3, v2, v3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(JZ)V

    move-wide p2, p1

    .line 347
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(J)V

    .line 348
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->q()V

    goto :goto_3

    .line 349
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/r;->b(Z)V

    .line 350
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    sget-object p4, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->d:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 351
    invoke-virtual {p1, p4, v0}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 352
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(J)V

    .line 353
    :goto_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    .line 354
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    return-wide p2
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/i$d;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/i$d;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 709
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 710
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 712
    :cond_0
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 714
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget v7, p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;->b:I

    iget-wide v8, p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Lcom/google/vr/sdk/widgets/video/deps/af$b;Lcom/google/vr/sdk/widgets/video/deps/af$a;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 720
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 724
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af;Lcom/google/vr/sdk/widgets/video/deps/af;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 726
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 727
    invoke-virtual {v0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 728
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3

    .line 717
    :catch_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/n;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;->b:I

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;->c:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V

    throw p2
.end method

.method private a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af;Lcom/google/vr/sdk/widgets/video/deps/af;)Ljava/lang/Object;
    .locals 9

    .line 698
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result p1

    .line 700
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/af;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 702
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->A:I

    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Lcom/google/vr/sdk/widgets/video/deps/af$b;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 705
    :cond_0
    invoke-virtual {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 707
    :cond_2
    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private a(F)V
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 571
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a()[Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v1

    .line 573
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 575
    invoke-interface {v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 577
    :cond_1
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(IZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    aget-object v1, v1, p1

    .line 885
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    aput-object v1, v2, p3

    .line 886
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/y;->getState()I

    move-result p3

    if-nez p3, :cond_2

    .line 887
    iget-object p3, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object v3, p3, p1

    .line 888
    iget-object p3, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object p3

    .line 889
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/nf;)[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    .line 890
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 892
    :goto_1
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 893
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v9

    move-object v2, v1

    .line 894
    invoke-interface/range {v2 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/y;->enable(Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/is;JZJ)V

    .line 895
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/d;->a(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    if-eqz p3, :cond_2

    .line 897
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/y;->start()V

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 360
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/d;->a(J)V

    .line 361
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 362
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->b(I)V

    .line 278
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(IJ)Z

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/i$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 606
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/i$a;->a:Lcom/google/vr/sdk/widgets/video/deps/if;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eq v0, v1, :cond_0

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 609
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/i$a;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 610
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/i$a;->c:Ljava/lang/Object;

    .line 611
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/af;)V

    .line 612
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v2, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 613
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->j()V

    .line 614
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    if-lez p1, :cond_7

    .line 615
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->a(I)V

    .line 616
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    .line 617
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->D:Lcom/google/vr/sdk/widgets/video/deps/i$d;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 619
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$d;Z)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/n; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->D:Lcom/google/vr/sdk/widgets/video/deps/i$d;

    if-nez p1, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->n()V

    goto/16 :goto_2

    .line 628
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 629
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 630
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1, v0, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v8

    .line 631
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 632
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    move-wide v9, v5

    goto :goto_0

    :cond_2
    move-wide v9, v11

    .line 633
    :goto_0
    invoke-virtual/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 622
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 623
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->i()Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 624
    throw p1

    .line 634
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v7, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    cmp-long p1, v7, v3

    if-nez p1, :cond_6

    .line 635
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 636
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->n()V

    goto :goto_2

    .line 637
    :cond_4
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    .line 638
    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->b(Z)I

    move-result p1

    .line 639
    invoke-direct {p0, v1, p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 640
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 641
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 642
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1, v0, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v8

    .line 643
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 644
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v9, v5

    goto :goto_1

    :cond_5
    move-wide v9, v11

    .line 645
    :goto_1
    invoke-virtual/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    :cond_6
    :goto_2
    return-void

    .line 647
    :cond_7
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 648
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    if-nez p1, :cond_9

    .line 649
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    .line 650
    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->b(Z)I

    move-result p1

    .line 651
    invoke-direct {p0, v1, p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 652
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 653
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 654
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1, v0, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v8

    .line 655
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 656
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    move-wide v9, v5

    goto :goto_3

    :cond_8
    move-wide v9, v11

    .line 657
    :goto_3
    invoke-virtual/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    :cond_9
    return-void

    .line 659
    :cond_a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p1

    .line 660
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v12, v7, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    if-nez p1, :cond_b

    .line 661
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    .line 662
    :goto_4
    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_10

    .line 664
    invoke-direct {p0, v7, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af;Lcom/google/vr/sdk/widgets/video/deps/af;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 666
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->n()V

    return-void

    .line 668
    :cond_c
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 669
    invoke-virtual {v1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 670
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 671
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 672
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 673
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0, v1, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v8

    if-eqz p1, :cond_e

    .line 675
    :cond_d
    :goto_5
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_e

    .line 676
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 677
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0, v8}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 678
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    iput-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    goto :goto_5

    .line 679
    :cond_e
    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    move-wide v5, v11

    :goto_6
    invoke-direct {p0, v8, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J

    move-result-wide v9

    .line 680
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    return-void

    .line 682
    :cond_10
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 683
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 684
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    .line 685
    invoke-virtual {v0, v7, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v9

    .line 686
    invoke-virtual {v9, p1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 688
    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_7

    :cond_11
    move-wide v5, v12

    :goto_7
    invoke-direct {p0, v9, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J

    move-result-wide v10

    .line 689
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    return-void

    .line 691
    :cond_12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)Z

    move-result p1

    if-nez p1, :cond_13

    .line 692
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/i;->g(Z)V

    .line 693
    :cond_13
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/i$d;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 280
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->a(I)V

    .line 282
    invoke-direct {v1, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$d;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->i()Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v2

    move-object v15, v2

    move-wide v12, v7

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 288
    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 289
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 290
    iget-object v12, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v12, v9, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v9

    .line 291
    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    .line 294
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 295
    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/i$d;->c:J

    cmp-long v2, v14, v7

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    .line 296
    :try_start_0
    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v10, :cond_a

    iget v10, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v7

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 299
    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 300
    invoke-direct {v1, v6, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZZ)V

    goto :goto_6

    .line 302
    :cond_4
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v7, v12, v4

    if-eqz v7, :cond_5

    .line 305
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    .line 306
    invoke-interface {v0, v12, v13, v4}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    .line 307
    :goto_3
    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v7

    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    invoke-static {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_8

    .line 308
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    move-wide/from16 v16, v3

    invoke-virtual/range {v14 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz v2, :cond_6

    .line 311
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    .line 313
    :cond_8
    :try_start_1
    invoke-direct {v1, v15, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    .line 297
    :cond_a
    :goto_5
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->D:Lcom/google/vr/sdk/widgets/video/deps/i$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    .line 316
    :goto_7
    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual/range {v14 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz v2, :cond_b

    .line 318
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 319
    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    move-wide/from16 v16, v12

    invoke-virtual/range {v14 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v3

    iput-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz v2, :cond_c

    .line 321
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v2, v9}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    :cond_c
    throw v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/o;->a([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nh;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 860
    :goto_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 861
    aget-object v5, v5, v3

    .line 862
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/y;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 863
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-virtual {v6, v3}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 865
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 866
    invoke-virtual {v6, v3}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 867
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/y;->isCurrentStreamFinal()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 868
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/y;->getStream()Lcom/google/vr/sdk/widgets/video/deps/is;

    move-result-object v6

    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 869
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 871
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 872
    invoke-virtual {p1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 873
    invoke-direct {p0, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->a([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 505
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 506
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->stop()V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, v0, p1, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZZ)V

    .line 370
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    add-int/2addr v1, p2

    .line 372
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->a(I)V

    const/4 p1, 0x0

    .line 373
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    .line 374
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/o;->b()V

    .line 375
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 22

    move-object/from16 v1, p0

    .line 392
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/oy;->b(I)V

    const/4 v2, 0x0

    .line 393
    iput-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    .line 394
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/d;->b()V

    const-wide/16 v3, 0x0

    .line 395
    iput-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 396
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 397
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 400
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 402
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 403
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->b(Z)V

    .line 404
    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 406
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->D:Lcom/google/vr/sdk/widgets/video/deps/i$d;

    :cond_1
    if-eqz p3, :cond_3

    .line 408
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/af;)V

    .line 409
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    .line 410
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-virtual {v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V

    goto :goto_3

    .line 412
    :cond_2
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 413
    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    :cond_3
    if-eqz p2, :cond_4

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->i()Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v2

    goto :goto_4

    :cond_4
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    :goto_4
    move-object v15, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_5

    move-wide/from16 v20, v2

    goto :goto_5

    .line 415
    :cond_5
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    move-wide/from16 v20, v4

    :goto_5
    if-eqz p2, :cond_6

    goto :goto_6

    .line 416
    :cond_6
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    :goto_6
    move-wide v9, v2

    .line 417
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz p3, :cond_7

    .line 418
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    goto :goto_7

    :cond_7
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    :goto_7
    move-object v4, v3

    if-eqz p3, :cond_8

    move-object v5, v0

    goto :goto_8

    .line 419
    :cond_8
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    move-object v5, v3

    :goto_8
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v11, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    const/4 v12, 0x0

    if-eqz p3, :cond_9

    .line 420
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    goto :goto_9

    :cond_9
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    :goto_9
    move-object v13, v3

    if-eqz p3, :cond_a

    .line 421
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->d:Lcom/google/vr/sdk/widgets/video/deps/nj;

    goto :goto_a

    :cond_a
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    :goto_a
    move-object v14, v3

    const-wide/16 v18, 0x0

    move-object v3, v2

    move-object v6, v15

    move-wide/from16 v7, v20

    move-wide/from16 v16, v20

    invoke-direct/range {v3 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    iput-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz p1, :cond_b

    .line 423
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v2, :cond_b

    .line 424
    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/if$b;)V

    .line 425
    iput-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    :cond_b
    return-void
.end method

.method private a([ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 875
    new-array p2, p2, [Lcom/google/vr/sdk/widgets/video/deps/y;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 877
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 878
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 879
    iget-object v2, p2, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(IZI)V

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/i$b;)Z
    .locals 6

    .line 460
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 461
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/i$d;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    .line 462
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->a()Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object v2

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    .line 463
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->g()I

    move-result v3

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    .line 464
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/i$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$d;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 469
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 470
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 471
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a(IJLjava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 476
    :cond_2
    iput v0, p1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/nf;)[Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 907
    invoke-interface {p0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 908
    :goto_0
    new-array v2, v1, [Lcom/google/vr/sdk/widgets/video/deps/l;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 910
    invoke-interface {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->l:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Lcom/google/vr/sdk/widgets/video/deps/af$b;Lcom/google/vr/sdk/widgets/video/deps/af$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(I)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    :cond_0
    return-void
.end method

.method private b(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    .line 483
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v0

    .line 484
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 485
    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 486
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    if-lez v1, :cond_2

    .line 487
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    goto :goto_0

    .line 488
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 489
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 491
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    if-lt v3, v0, :cond_6

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->c:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    .line 492
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    .line 493
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 494
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_b

    .line 496
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->b:I

    if-ne v3, v0, :cond_b

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_b

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->c:J

    cmp-long v5, v3, p3

    if-gtz v5, :cond_b

    .line 497
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    .line 498
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->h()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/x;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 500
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    goto :goto_4

    .line 499
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 501
    :goto_4
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 502
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_2

    :cond_b
    :goto_5
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/ad;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    .line 159
    invoke-direct {p0, v1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZZ)V

    .line 160
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/o;->a()V

    .line 161
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    const/4 p2, 0x2

    .line 162
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 163
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->j:Lcom/google/vr/sdk/widgets/video/deps/g;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->f:Lcom/google/vr/sdk/widgets/video/deps/nn;

    .line 164
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nn;->b()Lcom/google/vr/sdk/widgets/video/deps/oo;

    move-result-object v0

    .line 165
    invoke-interface {p1, p3, v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/g;ZLcom/google/vr/sdk/widgets/video/deps/if$b;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 166
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/d;->b(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    .line 510
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->disable()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->a(Lcom/google/vr/sdk/widgets/video/deps/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    .line 150
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->a(Lcom/google/vr/sdk/widgets/video/deps/i$c;)I

    move-result v2

    .line 151
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(Lcom/google/vr/sdk/widgets/video/deps/i$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->c(Lcom/google/vr/sdk/widgets/video/deps/i$c;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 153
    :goto_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 154
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(Lcom/google/vr/sdk/widgets/video/deps/t;)V

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 179
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->A:I

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 181
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->g(Z)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/d;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(F)V

    .line 822
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 823
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 824
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->h()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p1

    .line 825
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(J)V

    const/4 p1, 0x0

    .line 826
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)V

    .line 827
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->q()V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/d;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 427
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    goto :goto_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    .line 432
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V

    goto :goto_1

    .line 430
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/i$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/y;)Z
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->d()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 900
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-eqz v0, :cond_0

    .line 901
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    .line 199
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/d;->a()V

    .line 200
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 201
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 831
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(J)V

    .line 832
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->q()V

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 835
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(F)V

    .line 836
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 838
    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    invoke-interface {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->setOperatingRate(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 438
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->f(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    .line 439
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne p1, v1, :cond_2

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    if-eq v0, p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/d;->b()V

    .line 205
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 206
    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 2

    .line 443
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->e()Landroid/os/Handler;

    move-result-object v0

    .line 444
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/j;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/j;-><init>(Lcom/google/vr/sdk/widgets/video/deps/i;Lcom/google/vr/sdk/widgets/video/deps/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    .line 169
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    if-nez p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->e()V

    .line 172
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->f()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->d()V

    .line 175
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne p1, v1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 212
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ie;->c()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    .line 214
    invoke-direct {p0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(J)V

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 217
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/d;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(JJ)V

    .line 221
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iput-wide v0, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    .line 222
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    const/4 v2, 0x1

    .line 224
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(Z)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    .line 225
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 226
    invoke-virtual {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    return-void
.end method

.method private f(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 446
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 448
    :try_start_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->b()Lcom/google/vr/sdk/widgets/video/deps/x$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/x$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 451
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V

    throw v1
.end method

.method private f(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 184
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    .line 185
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 186
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->g(Z)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    return-void
.end method

.method private g()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 228
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->r:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/oq;->b()J

    move-result-wide v1

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->o()V

    .line 230
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->m()V

    .line 232
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(JJ)V

    return-void

    .line 234
    :cond_0
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v3

    const-string v6, "doSomeWork"

    .line 235
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a(Ljava/lang/String;)V

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->f()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 238
    iget-object v10, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v11, v11, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->m:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->n:Z

    invoke-interface {v10, v11, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(JZ)V

    .line 241
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v11, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_0
    if-ge v14, v11, :cond_6

    aget-object v12, v10, v14

    .line 242
    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-interface {v12, v8, v9, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/y;->render(JJ)V

    if-eqz v16, :cond_1

    .line 243
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/y;->isEnded()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 244
    :goto_1
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/y;->isReady()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/y;->isEnded()Z

    move-result v8

    if-nez v8, :cond_3

    .line 245
    invoke-direct {v0, v12}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(Lcom/google/vr/sdk/widgets/video/deps/y;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_4

    .line 247
    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/y;->maybeThrowStreamError()V

    :cond_4
    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    :cond_6
    if-nez v15, :cond_7

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->m()V

    .line 252
    :cond_7
    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v6, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v16, :cond_9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v6, v11

    if-eqz v13, :cond_8

    .line 253
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v11, v11, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    cmp-long v13, v6, v11

    if-gtz v13, :cond_9

    :cond_8
    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v3, v3, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    if-eqz v3, :cond_9

    .line 254
    invoke-direct {v0, v8}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->e()V

    goto :goto_5

    .line 256
    :cond_9
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne v3, v10, :cond_a

    .line 257
    invoke-direct {v0, v15}, Lcom/google/vr/sdk/widgets/video/deps/i;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 258
    invoke-direct {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 259
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    if-eqz v3, :cond_d

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->d()V

    goto :goto_5

    .line 261
    :cond_a
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne v3, v9, :cond_d

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v3, v3

    if-nez v3, :cond_b

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_b
    if-nez v15, :cond_d

    .line 263
    :cond_c
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    .line 264
    invoke-direct {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->e()V

    .line 266
    :cond_d
    :goto_5
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne v3, v10, :cond_e

    .line 267
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v6, v3

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v6, :cond_e

    aget-object v7, v3, v12

    .line 268
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/y;->maybeThrowStreamError()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 270
    :cond_e
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq v3, v9, :cond_10

    :cond_f
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-ne v3, v10, :cond_11

    .line 271
    :cond_10
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(JJ)V

    goto :goto_7

    .line 272
    :cond_11
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v3, v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq v3, v8, :cond_12

    const-wide/16 v3, 0x3e8

    .line 273
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(JJ)V

    goto :goto_7

    .line 274
    :cond_12
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    invoke-interface {v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/oy;->b(I)V

    .line 275
    :goto_7
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/pq;->a()V

    return-void
.end method

.method private g(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    const/4 v3, 0x1

    .line 191
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JZ)J

    move-result-wide v3

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    .line 194
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    .line 377
    invoke-direct {p0, v0, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZZ)V

    .line 378
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/o;->c()V

    .line 379
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    .line 380
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->x:Z

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h(Z)Z
    .locals 7

    .line 579
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->l()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 583
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 585
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p1

    .line 586
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 587
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 588
    invoke-virtual {p1, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    .line 589
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/d;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->z:Z

    .line 590
    invoke-interface {v4, v2, v3, p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/o;->a(JFZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private i()Lcom/google/vr/sdk/widgets/video/deps/if$a;
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 387
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/t;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    return-object v0

    .line 389
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->B:Z

    .line 390
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->b(Z)I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->k:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/af$b;->f:I

    .line 391
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private j()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 454
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/i$b;->a:Lcom/google/vr/sdk/widgets/video/deps/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V

    .line 456
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private k()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/d;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    .line 515
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->d()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_d

    .line 518
    iget-boolean v5, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 520
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(F)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    const/4 v0, 0x4

    if-eqz v4, :cond_8

    .line 526
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    move-result v2

    .line 528
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v4, v4

    new-array v4, v4, [Z

    .line 529
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v7, v5, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    .line 530
    invoke-virtual {v1, v7, v8, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(JZ[Z)J

    move-result-wide v7

    .line 531
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-direct {p0, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 532
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v9, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_2

    .line 533
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v10, v9, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v13, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    move-wide v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 534
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    .line 535
    invoke-direct {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(J)V

    .line 537
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 538
    :goto_1
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v9, v8

    if-ge v5, v9, :cond_7

    .line 539
    aget-object v8, v8, v5

    .line 540
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/y;->getState()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    aput-boolean v9, v2, v5

    .line 541
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 544
    :cond_4
    aget-boolean v10, v2, v5

    if-eqz v10, :cond_6

    .line 545
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/y;->getStream()Lcom/google/vr/sdk/widgets/video/deps/is;

    move-result-object v10

    if-eq v9, v10, :cond_5

    .line 546
    invoke-direct {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/y;)V

    goto :goto_3

    .line 547
    :cond_5
    aget-boolean v9, v4, v5

    if-eqz v9, :cond_6

    .line 548
    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-interface {v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/y;->resetPosition(J)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 550
    :cond_7
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 551
    invoke-virtual {v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 552
    invoke-direct {p0, v2, v7}, Lcom/google/vr/sdk/widgets/video/deps/i;->a([ZI)V

    goto :goto_4

    .line 554
    :cond_8
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    .line 555
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-eqz v2, :cond_9

    .line 556
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 557
    invoke-virtual {v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide v4

    .line 558
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 559
    invoke-virtual {v1, v2, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(JZ)J

    .line 560
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-direct {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 561
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    .line 562
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    if-eq v1, v0, :cond_a

    .line 563
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->q()V

    .line 564
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->f()V

    .line 565
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v1, v2, :cond_c

    const/4 v4, 0x0

    .line 524
    :cond_c
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method private l()Z
    .locals 6

    .line 592
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 593
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 594
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 595
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->d()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 599
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-ne v1, v0, :cond_3

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->w:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 601
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a_()V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x4

    .line 695
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 696
    invoke-direct {p0, v0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZZ)V

    return-void
.end method

.method private o()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->C:I

    if-lez v1, :cond_1

    .line 734
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/if;->b()V

    return-void

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->p()V

    .line 737
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 738
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    if-nez v0, :cond_4

    .line 741
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->q()V

    goto :goto_1

    .line 739
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Z)V

    .line 742
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 744
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->c()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 745
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->d()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 747
    :goto_2
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->y:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 748
    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/p;->b()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    if-eqz v4, :cond_6

    .line 750
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->c()V

    .line 751
    :cond_6
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v4, v4, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    .line 755
    :goto_3
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->h()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v5

    .line 756
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)V

    .line 757
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    invoke-virtual/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 758
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->p:Lcom/google/vr/sdk/widgets/video/deps/i$c;

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/i$c;->b(I)V

    .line 759
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->f()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_2

    .line 762
    :cond_8
    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    if-eqz v0, :cond_b

    .line 763
    :goto_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 764
    aget-object v0, v0, v1

    .line 765
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 766
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->getStream()Lcom/google/vr/sdk/widgets/video/deps/is;

    move-result-object v4

    if-ne v4, v3, :cond_9

    .line 767
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 768
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setCurrentStreamFinal()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 771
    :cond_b
    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v0, :cond_c

    goto/16 :goto_b

    :cond_c
    const/4 v0, 0x0

    .line 773
    :goto_5
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v5, v4

    if-ge v0, v5, :cond_f

    .line 774
    aget-object v4, v4, v0

    .line 775
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v5, v5, v0

    .line 776
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->getStream()Lcom/google/vr/sdk/widgets/video/deps/is;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    .line 777
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 780
    :cond_f
    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 781
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->g()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v2

    .line 782
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 783
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    .line 784
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/ie;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_10

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 785
    :goto_8
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->a:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v8, v7

    if-ge v6, v8, :cond_16

    .line 786
    aget-object v7, v7, v6

    .line 787
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    .line 790
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/y;->setCurrentStreamFinal()V

    goto :goto_a

    .line 791
    :cond_12
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/y;->isCurrentStreamFinal()Z

    move-result v8

    if-nez v8, :cond_15

    .line 792
    iget-object v8, v4, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v8

    .line 793
    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v9

    .line 794
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->b:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lcom/google/vr/sdk/widgets/video/deps/aa;->getTrackType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_13

    const/4 v10, 0x1

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    .line 795
    :goto_9
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object v11, v11, v6

    .line 796
    iget-object v12, v4, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object v12, v12, v6

    if-eqz v9, :cond_14

    .line 797
    invoke-virtual {v12, v11}, Lcom/google/vr/sdk/widgets/video/deps/ab;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez v10, :cond_14

    .line 798
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/nf;)[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v8

    .line 799
    iget-object v9, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v9, v9, v6

    .line 800
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v10

    .line 801
    invoke-interface {v7, v8, v9, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/y;->replaceStream([Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/is;J)V

    goto :goto_a

    .line 803
    :cond_14
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/y;->setCurrentStreamFinal()V

    :cond_15
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_16
    :goto_b
    return-void
.end method

.method private p()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(J)V

    .line 807
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(JLcom/google/vr/sdk/widgets/video/deps/t;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/if;->b()V

    goto :goto_0

    .line 811
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->b:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    .line 812
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/o;->d()Lcom/google/vr/sdk/widgets/video/deps/nl;

    move-result-object v7

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->v:Lcom/google/vr/sdk/widgets/video/deps/if;

    move-object v9, v0

    .line 813
    invoke-virtual/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/r;->a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/ie;

    move-result-object v1

    .line 814
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(Lcom/google/vr/sdk/widgets/video/deps/ie$a;J)V

    const/4 v0, 0x1

    .line 815
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Z)V

    .line 816
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 6

    .line 841
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->d()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 844
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Z)V

    return-void

    .line 846
    :cond_0
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    .line 847
    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 848
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->e:Lcom/google/vr/sdk/widgets/video/deps/o;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->o:Lcom/google/vr/sdk/widgets/video/deps/d;

    .line 849
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/d;->e()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v4

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    .line 850
    invoke-interface {v3, v1, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/o;->a(JF)Z

    move-result v1

    .line 851
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Z)V

    if-eqz v1, :cond_1

    .line 853
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/p;->d(J)V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->s:Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->b()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 905
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->u:Lcom/google/vr/sdk/widgets/video/deps/t;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(I)Z

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 65
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 71
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ad;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/i$d;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/i$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/i$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x0

    .line 36
    invoke-interface {v0, v1, p2, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/it;)V
    .locals 0

    .line 913
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0x10

    .line 82
    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 2

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->x:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final synthetic b(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    .locals 2

    .line 914
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->f(Lcom/google/vr/sdk/widgets/video/deps/x;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 917
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Z)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-interface {v0, v2, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->g:Lcom/google/vr/sdk/widgets/video/deps/oy;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {v0, v2, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/oy;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    .line 112
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    goto/16 :goto_5

    .line 116
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->e(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    goto/16 :goto_5

    .line 114
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/x;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(Lcom/google/vr/sdk/widgets/video/deps/x;)V

    goto/16 :goto_5

    .line 92
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->f(Z)V

    goto/16 :goto_5

    .line 90
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(I)V

    goto/16 :goto_5

    .line 110
    :pswitch_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->k()V

    goto/16 :goto_5

    .line 108
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->d(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    goto :goto_5

    .line 104
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    goto :goto_5

    .line 106
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/i$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$a;)V

    goto :goto_5

    .line 118
    :pswitch_9
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->h()V

    return v2

    .line 102
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZ)V

    goto :goto_5

    .line 100
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ad;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/ad;)V

    goto :goto_5

    .line 98
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    goto :goto_5

    .line 96
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/i$d;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/i$d;)V

    goto :goto_5

    .line 94
    :pswitch_e
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->g()V

    goto :goto_5

    .line 88
    :pswitch_f
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->e(Z)V

    goto :goto_5

    .line 86
    :pswitch_10
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/if;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-direct {p0, v4, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V

    .line 121
    :goto_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->c()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/f; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string v4, "Internal runtime error."

    .line 136
    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-direct {p0, v3, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZ)V

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/RuntimeException;)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 140
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->c()V

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v4, "Source error."

    .line 130
    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    invoke-direct {p0, v3, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZ)V

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/io/IOException;)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 133
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->c()V

    goto :goto_6

    :catch_2
    move-exception p1

    const-string v4, "Playback error."

    .line 124
    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-direct {p0, v3, v3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(ZZ)V

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/i;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/i;->c()V

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
