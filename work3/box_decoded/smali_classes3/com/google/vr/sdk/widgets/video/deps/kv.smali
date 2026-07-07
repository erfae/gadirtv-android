.class final Lcom/google/vr/sdk/widgets/video/deps/kv;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ct;
.implements Lcom/google/vr/sdk/widgets/video/deps/ir$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/it;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/kv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ct;",
        "Lcom/google/vr/sdk/widgets/video/deps/ir$b;",
        "Lcom/google/vr/sdk/widgets/video/deps/it;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/jc;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$e;"
    }
.end annotation


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private B:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private C:Z

.field private D:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field private E:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field private F:[I

.field private G:I

.field private H:Z

.field private I:[Z

.field private J:[Z

.field private K:J

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:J

.field private R:I

.field private final a:I

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/kn;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/nl;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/kr;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kr;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/ku;",
            ">;"
        }
    .end annotation
.end field

.field private p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private q:[I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/kv$a;Lcom/google/vr/sdk/widgets/video/deps/kn;Lcom/google/vr/sdk/widgets/video/deps/nl;JLcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->d:Lcom/google/vr/sdk/widgets/video/deps/nl;

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 7
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->f:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 8
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/kn$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 11
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    const/4 p2, -0x1

    .line 12
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->s:I

    .line 13
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->u:I

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 14
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    new-array p2, p1, [Z

    .line 15
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->J:[Z

    new-array p1, p1, [Z

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->k:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->o:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/kw;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/kw;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kv;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->l:Ljava/lang/Runnable;

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/kx;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/kx;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kv;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->m:Ljava/lang/Runnable;

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->n:Landroid/os/Handler;

    .line 23
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    .line 24
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 10

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 478
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    move v5, p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    const/4 v5, -0x1

    .line 479
    :goto_0
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/pb;->g(Ljava/lang/String;)I

    move-result p2

    .line 480
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/pb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 483
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    :cond_2
    move-object v3, p2

    .line 484
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p0

    return-object p0
.end method

.method private a([Lcom/google/vr/sdk/widgets/video/deps/is;)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 368
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->o:Ljava/util/ArrayList;

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ku;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z
    .locals 0

    .line 485
    instance-of p0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;

    return p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/kr;)Z
    .locals 4

    .line 371
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kr;->a:I

    .line 372
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 374
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->g()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 6

    .line 486
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 487
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 488
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pb;->g(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 490
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/pb;->g(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 491
    :cond_1
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    .line 495
    :cond_4
    :goto_1
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private static b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cq;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cq;-><init>()V

    return-object p0
.end method

.method private static d(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private d(J)Z
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 464
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v4, v4, v2

    .line 465
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 466
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->J:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->H:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private l()V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 379
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->M:Z

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->M:Z

    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    .line 384
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->n()V

    return-void
.end method

.method private n()V
    .locals 4

    .line 386
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 389
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    if-eqz v0, :cond_3

    .line 393
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->o()V

    goto :goto_1

    .line 394
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->p()V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    .line 396
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->g()V

    :cond_4
    :goto_1
    return-void
.end method

.method private o()V
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    .line 399
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    const/4 v2, -0x1

    .line 400
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 402
    :goto_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 403
    aget-object v4, v4, v3

    .line 404
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ku;

    .line 410
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ku;->a()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private p()V
    .locals 14

    .line 415
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    .line 417
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v9

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 418
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/pb;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    .line 422
    :cond_1
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/pb;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    .line 425
    :goto_1
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/kv;->d(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/kv;->d(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v6, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    :cond_5
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kn;->b()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v1

    .line 432
    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    .line 433
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->G:I

    .line 434
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 436
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 438
    :cond_6
    new-array v2, v0, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_b

    .line 440
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v10

    if-ne v9, v6, :cond_9

    .line 442
    new-array v11, v4, [Lcom/google/vr/sdk/widgets/video/deps/l;

    if-ne v4, v8, :cond_7

    .line 444
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_8

    .line 446
    invoke-virtual {v1, v12}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v13

    invoke-static {v13, v10, v8}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 448
    :cond_8
    :goto_6
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    aput-object v10, v2, v9

    .line 449
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->G:I

    goto :goto_8

    :cond_9
    if-ne v5, v7, :cond_a

    .line 451
    iget-object v11, v10, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 452
    iget-object v11, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 454
    :goto_7
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v13, v8, [Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v11, v10, v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    aput-object v12, v2, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 456
    :cond_b
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 457
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->E:Lcom/google/vr/sdk/widgets/video/deps/iw;

    if-nez v0, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 458
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->E:Lcom/google/vr/sdk/widgets/video/deps/iw;

    return-void
.end method

.method private q()Lcom/google/vr/sdk/widgets/video/deps/kr;
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/kr;

    return-object v0
.end method

.method private r()Z
    .locals 5

    .line 461
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->E:Lcom/google/vr/sdk/widgets/video/deps/iw;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 46
    aput-boolean v1, p1, v0

    return v0
.end method

.method public a(IJ)I
    .locals 4

    .line 180
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, v0, p1

    .line 183
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->n()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 10

    .line 154
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/kr;

    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/kr;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 162
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/util/List;II)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/kr;

    .line 164
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 165
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->B:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->e:I

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->f:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->g:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;J)V

    .line 167
    :cond_3
    iput-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->B:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 169
    invoke-virtual/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_7

    .line 170
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->w:I

    if-ne p1, p4, :cond_7

    .line 171
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, p4, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->g()I

    move-result p1

    .line 173
    :goto_1
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v1, p4, :cond_5

    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/vr/sdk/widgets/video/deps/kr;

    iget p4, p4, Lcom/google/vr/sdk/widgets/video/deps/kr;->a:I

    if-eq p4, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 176
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/kr;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    goto :goto_2

    .line 177
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->A:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 178
    :goto_2
    iget-object p4, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    iput-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    :cond_7
    return p3
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;
    .locals 8

    .line 301
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 303
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->s:I

    if-eq v6, v3, :cond_2

    .line 304
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->r:Z

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    .line 306
    aget-object p1, v0, v6

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object p1

    :goto_0
    return-object p1

    .line 309
    :cond_1
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->r:Z

    .line 310
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    aput p1, p2, v6

    .line 311
    aget-object p1, v0, v6

    return-object p1

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->P:Z

    if-eqz v0, :cond_a

    .line 313
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    .line 315
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->u:I

    if-eq v6, v3, :cond_6

    .line 316
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->t:Z

    if-eqz v1, :cond_5

    .line 317
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    .line 318
    aget-object p1, v0, v6

    goto :goto_1

    .line 319
    :cond_4
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object p1

    :goto_1
    return-object p1

    .line 321
    :cond_5
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->t:Z

    .line 322
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    aput p1, p2, v6

    .line 323
    aget-object p1, v0, v6

    return-object p1

    .line 324
    :cond_6
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->P:Z

    if-eqz v0, :cond_a

    .line 325
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 327
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    .line 328
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 330
    :cond_9
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->P:Z

    if-eqz v0, :cond_a

    .line 331
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(II)Lcom/google/vr/sdk/widgets/video/deps/cq;

    move-result-object p1

    return-object p1

    .line 332
    :cond_a
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->d:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-direct {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V

    .line 333
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->Q:J

    invoke-virtual {v0, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J)V

    .line 334
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->R:I

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(I)V

    .line 335
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/ir$b;)V

    .line 336
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->q:[I

    .line 337
    aput p1, v3, v1

    .line 338
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 339
    aput-object v0, p1, v1

    .line 340
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->J:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->J:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 341
    :cond_c
    aput-boolean v2, p1, v1

    .line 342
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->H:Z

    aget-boolean p1, p1, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->H:Z

    if-ne p2, v5, :cond_d

    .line 344
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->r:Z

    .line 345
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->s:I

    goto :goto_3

    :cond_d
    if-ne p2, v4, :cond_e

    .line 347
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->t:Z

    .line 348
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->u:I

    .line 349
    :cond_e
    :goto_3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->d(I)I

    move-result p1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->v:I

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->d(I)I

    move-result v2

    if-le p1, v2, :cond_f

    .line 350
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->w:I

    .line 351
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->v:I

    .line 352
    :cond_f
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v2

    .line 259
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-nez v10, :cond_1

    .line 262
    :cond_0
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->f:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    move-wide/from16 v13, p4

    move-object/from16 v15, p6

    move/from16 v16, p7

    .line 263
    invoke-interface/range {v11 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_1

    .line 265
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v8, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;J)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 268
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/kr;

    if-ne v4, v1, :cond_2

    const/4 v7, 0x1

    .line 269
    :cond_2
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 270
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    .line 272
    :cond_3
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    goto :goto_1

    .line 273
    :cond_4
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->f:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 274
    invoke-interface/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/oi;->b(IJLjava/io/IOException;I)J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-eqz v4, :cond_5

    .line 276
    invoke-static {v7, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v4

    goto :goto_1

    .line 277
    :cond_5
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    .line 278
    :goto_1
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v7

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v8

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    move-wide/from16 v16, v14

    iget-wide v14, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v22

    .line 282
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a()Z

    move-result v1

    xor-int/lit8 v25, v1, 0x1

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    move-object/from16 v24, p6

    .line 283
    invoke-virtual/range {v5 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v2, :cond_7

    .line 285
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    if-nez v1, :cond_6

    .line 286
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->c(J)Z

    goto :goto_2

    .line 287
    :cond_6
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_7
    :goto_2
    return-object v4
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 0

    .line 499
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->P:Z

    .line 355
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 290
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->r:Z

    .line 291
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->t:Z

    .line 292
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->R:I

    .line 293
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 294
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 297
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 298
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/da;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/iw;ILcom/google/vr/sdk/widgets/video/deps/iw;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 31
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->E:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 32
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->G:I

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->g()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 238
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V

    .line 239
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v4

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v19

    .line 243
    invoke-virtual/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    .line 244
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    if-nez v1, :cond_0

    .line 245
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->c(J)Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 248
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v4

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v19

    .line 252
    invoke-virtual/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->l()V

    .line 255
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    if-lez v1, :cond_0

    .line 256
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    .locals 0

    .line 501
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V
    .locals 0

    .line 500
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    move-result p1

    return p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 52
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 53
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 54
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    .line 55
    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 56
    :cond_0
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    sub-int/2addr v5, v15

    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    .line 57
    aget-object v5, v2, v4

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/ku;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ku;->d()V

    .line 58
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 60
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->N:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 61
    :goto_2
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/kn;->c()Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    .line 63
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 64
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    aget-object v5, v1, v3

    if-eqz v5, :cond_9

    .line 65
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    add-int/2addr v5, v15

    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    .line 66
    aget-object v5, v1, v3

    .line 67
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/nf;->f()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result v7

    .line 68
    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->G:I

    if-ne v7, v8, :cond_6

    .line 70
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v8, v5}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/nf;)V

    move-object v11, v5

    .line 71
    :cond_6
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/ku;

    invoke-direct {v5, v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/ku;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kv;I)V

    aput-object v5, v2, v3

    .line 72
    aput-boolean v15, p4, v3

    .line 73
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    if-eqz v5, :cond_7

    .line 74
    aget-object v5, v2, v3

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/ku;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ku;->a()V

    .line 75
    :cond_7
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    if-eqz v5, :cond_9

    if-nez v16, :cond_9

    .line 76
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 77
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 78
    invoke-virtual {v5, v12, v13, v15, v15}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 79
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    move/from16 v16, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 81
    :cond_a
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->z:I

    if-nez v1, :cond_d

    .line 82
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kn;->d()V

    .line 83
    iput-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->B:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 84
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 86
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    if-eqz v1, :cond_b

    .line 87
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v3, v1

    :goto_5
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    .line 88
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 90
    :cond_b
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->c()V

    goto/16 :goto_a

    .line 91
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->l()V

    goto/16 :goto_a

    .line 92
    :cond_d
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 93
    invoke-static {v11, v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 95
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->N:Z

    if-nez v1, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->q()Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-result-object v1

    .line 98
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    .line 99
    invoke-virtual {v3, v1, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/kr;J)[Lcom/google/vr/sdk/widgets/video/deps/jl;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->k:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(JJJLjava/util/List;[Lcom/google/vr/sdk/widgets/video/deps/jl;)V

    .line 101
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/kn;->b()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v3

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v1

    .line 102
    invoke-interface/range {v18 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/nf;->i()I

    move-result v3

    if-eq v3, v1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_11

    .line 109
    iput-boolean v15, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->M:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    move/from16 v1, p7

    :goto_8
    if-eqz v16, :cond_13

    .line 111
    invoke-virtual {v0, v12, v13, v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(JZ)Z

    .line 112
    :goto_9
    array-length v1, v2

    if-ge v14, v1, :cond_13

    .line 113
    aget-object v1, v2, v14

    if-eqz v1, :cond_12

    .line 114
    aput-boolean v15, p4, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 116
    :cond_13
    :goto_a
    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a([Lcom/google/vr/sdk/widgets/video/deps/is;)V

    .line 117
    iput-boolean v15, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->N:Z

    return v16
.end method

.method public b()V
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    if-nez v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->c(J)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->F:[I

    aget p1, v0, p1

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->I:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 360
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->Q:J

    .line 361
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 362
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(JZ)Z
    .locals 2

    .line 126
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    .line 127
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->d(J)Z

    move-result p3

    if-eqz p3, :cond_0

    return v1

    .line 129
    :cond_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    .line 130
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    .line 131
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->c()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->l()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->i()V

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 206
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 208
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 210
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->k:Ljava/util/List;

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->q()Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/kr;->h:J

    :goto_0
    move-object v10, v1

    move-wide v8, v3

    .line 213
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(JJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/kn$b;)V

    .line 214
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->b:Z

    .line 215
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    .line 216
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->c:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 217
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->i:Lcom/google/vr/sdk/widgets/video/deps/kn$b;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->a()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 219
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    .line 220
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    return v7

    :cond_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    .line 224
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->b:Lcom/google/vr/sdk/widgets/video/deps/kv$a;

    invoke-interface {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/kv$a;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    :cond_3
    return v2

    .line 226
    :cond_4
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    .line 228
    move-object v1, v3

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/kr;

    .line 229
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->a(Lcom/google/vr/sdk/widgets/video/deps/kv;)V

    .line 230
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->A:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 232
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->f:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v4, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    .line 233
    invoke-interface {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v2

    .line 234
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide v19

    .line 235
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->h:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v9, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget v10, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/kv;->a:I

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v13, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v14, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v1, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V

    return v7

    :cond_6
    :goto_1
    return v2
.end method

.method public d()J
    .locals 7

    .line 187
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    return-wide v0

    .line 191
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->K:J

    .line 192
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->q()Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/kr;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/kr;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 196
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kr;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 197
    :cond_4
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->x:Z

    if-eqz v2, :cond_5

    .line 198
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 200
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 203
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->L:J

    return-wide v0

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->O:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->q()Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->h:J

    :goto_0
    return-wide v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->D:Lcom/google/vr/sdk/widgets/video/deps/iw;

    return-object v0
.end method

.method public g()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->l()V

    return-void
.end method

.method public h()V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->y:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 138
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V

    .line 141
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->C:Z

    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->g:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a()V

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kv;->c:Lcom/google/vr/sdk/widgets/video/deps/kn;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a()V

    return-void
.end method

.method final synthetic j()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->n()V

    return-void
.end method

.method final synthetic k()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->m()V

    return-void
.end method
