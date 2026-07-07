.class final Lcom/google/vr/sdk/widgets/video/deps/ia;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ct;
.implements Lcom/google/vr/sdk/widgets/video/deps/ie;
.implements Lcom/google/vr/sdk/widgets/video/deps/ir$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ia$d;,
        Lcom/google/vr/sdk/widgets/video/deps/ia$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ia$a;,
        Lcom/google/vr/sdk/widgets/video/deps/ia$e;,
        Lcom/google/vr/sdk/widgets/video/deps/ia$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ct;",
        "Lcom/google/vr/sdk/widgets/video/deps/ie;",
        "Lcom/google/vr/sdk/widgets/video/deps/ir$b;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/ia$a;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$e;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:Z

.field private G:I

.field private H:Z

.field private I:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/ia$c;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/nl;

.field private final g:Ljava/lang/String;

.field private final h:J

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/ot;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/os/Handler;

.field private o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

.field private p:Lcom/google/vr/sdk/widgets/video/deps/da;

.field private q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private r:[I

.field private s:Z

.field private t:Z

.field private u:Lcom/google/vr/sdk/widgets/video/deps/ia$d;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr;[Lcom/google/vr/sdk/widgets/video/deps/cr;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/ia$c;Lcom/google/vr/sdk/widgets/video/deps/nl;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->b:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 5
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 6
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->e:Lcom/google/vr/sdk/widgets/video/deps/ia$c;

    .line 7
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->f:Lcom/google/vr/sdk/widgets/video/deps/nl;

    .line 8
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->g:Ljava/lang/String;

    int-to-long p1, p9

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->h:J

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ia$b;-><init>([Lcom/google/vr/sdk/widgets/video/deps/cr;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->j:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ot;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->k:Lcom/google/vr/sdk/widgets/video/deps/ot;

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ib;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ib;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ia;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->l:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ic;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ic;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ia;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->m:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 16
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->r:[I

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    const-wide/16 p3, -0x1

    .line 19
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->C:J

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    .line 22
    invoke-virtual {p5}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ia;)Ljava/lang/String;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)V
    .locals 5

    .line 312
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->C:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 313
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->d(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->C:J

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;I)Z
    .locals 6

    .line 336
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->C:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->p:Lcom/google/vr/sdk/widgets/video/deps/da;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->b()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->k()Z

    move-result p2

    if-nez p2, :cond_1

    .line 341
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    return v0

    .line 343
    :cond_1
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    const-wide/16 v3, 0x0

    .line 344
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    .line 345
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    .line 346
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 347
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p1, v3, v4, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJ)V

    return v2

    .line 338
    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    return v2
.end method

.method private a([ZJ)Z
    .locals 6

    .line 351
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 353
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v4, v4, v2

    .line 354
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 355
    invoke-virtual {v4, p2, p3, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 356
    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->v:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/ia;)J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->h:J

    return-wide v0
.end method

.method private b(I)V
    .locals 10

    .line 185
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    .line 186
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->d:[Z

    .line 187
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 188
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v5

    .line 190
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 191
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pb;->g(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    .line 192
    invoke-virtual/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 193
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/ia;)Ljava/lang/Runnable;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 195
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->c:[Z

    .line 196
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, v0, p1

    .line 197
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    const/4 v2, 0x1

    .line 201
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    .line 202
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    .line 203
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 205
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/ia;)Landroid/os/Handler;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private k()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->q()Z

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

.method private l()V
    .locals 10

    .line 282
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->p:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 283
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->I:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->s:Z

    if-eqz v0, :cond_7

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 286
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->k:Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ot;->b()Z

    .line 290
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, v0

    .line 291
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 292
    new-array v3, v0, [Z

    .line 293
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    const/4 v4, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v4, v0, :cond_5

    .line 295
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v5

    .line 296
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v9, v7, [Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object v5, v9, v2

    invoke-direct {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    aput-object v8, v1, v4

    .line 297
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 298
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/pb;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 299
    :cond_4
    :goto_2
    aput-boolean v7, v3, v4

    .line 300
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->v:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->v:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    :cond_5
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->C:J

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_6

    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->b()J

    move-result-wide v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v8

    if-nez v2, :cond_6

    const/4 v2, 0x7

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    .line 305
    :goto_3
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    .line 306
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    new-array v4, v0, [Z

    new-array v5, v0, [Z

    move-object v0, v8

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ia$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iw;[Z[Z[ZLcom/google/vr/sdk/widgets/video/deps/da;)V

    iput-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->u:Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    .line 307
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    .line 308
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->e:Lcom/google/vr/sdk/widgets/video/deps/ia$c;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ia$c;->a(JZ)V

    .line 309
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->u:Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    return-object v0
.end method

.method private n()V
    .locals 22

    move-object/from16 v7, p0

    .line 315
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/ia$a;

    iget-object v2, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->a:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->b:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v4, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->j:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->k:Lcom/google/vr/sdk/widgets/video/deps/ot;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ia;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/ia$b;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/ot;)V

    .line 316
    iget-boolean v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    if-eqz v0, :cond_1

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->e:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->q()Z

    move-result v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 319
    iget-wide v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    cmp-long v9, v5, v1

    if-ltz v9, :cond_0

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    .line 321
    iput-wide v3, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    return-void

    .line 323
    :cond_0
    iget-wide v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    .line 324
    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/db;->c:J

    iget-wide v5, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    .line 325
    invoke-static {v8, v0, v1, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJ)V

    .line 326
    iput-wide v3, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    .line 327
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->o()I

    move-result v0

    iput v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    .line 328
    iget-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v2, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    .line 329
    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v1

    .line 330
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide v20

    .line 331
    iget-object v9, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 332
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 333
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J

    move-result-wide v16

    iget-wide v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    move-wide/from16 v18, v0

    .line 334
    invoke-virtual/range {v9 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private o()I
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 362
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private p()J
    .locals 7

    .line 366
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 368
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v5

    .line 369
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private q()Z
    .locals 5

    .line 372
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

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
.method a(IJ)I
    .locals 5

    .line 173
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v0, v0, p1

    .line 176
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->n()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 178
    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-lez v1, :cond_3

    .line 182
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->b(I)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->c(I)V

    :goto_1
    return v1
.end method

.method a(ILcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 9

    .line 164
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->k()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 167
    invoke-virtual/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    .line 169
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->b(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 171
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->c(I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J
    .locals 9

    .line 156
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->e:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 157
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 159
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->a:Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/db;->b:J

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/da$a;->b:Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/db;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JLcom/google/vr/sdk/widgets/video/deps/ad;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJ)J
    .locals 8

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    .line 47
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 48
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->b:[Z

    .line 49
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 51
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 52
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/ia$e;

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$e;)I

    move-result v5

    .line 53
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 54
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    .line 55
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 56
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->x:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 59
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 60
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 61
    aget-object v4, p1, v2

    .line 62
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 63
    invoke-interface {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 64
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/nf;->f()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result v4

    .line 65
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 66
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    .line 67
    aput-boolean v6, v0, v4

    .line 68
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/ia$e;

    invoke-direct {v5, p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/ia$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ia;I)V

    aput-object v5, p3, v2

    .line 69
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 71
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p2, p2, v4

    .line 72
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 73
    invoke-virtual {p2, p5, p6, v6, v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 74
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 76
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    if-nez p1, :cond_c

    .line 77
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    .line 78
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 80
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 81
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 83
    :cond_a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->c()V

    goto :goto_a

    .line 84
    :cond_b
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    .line 85
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 88
    invoke-virtual {p0, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/ia;->b(J)J

    move-result-wide p5

    .line 89
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 90
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 91
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 93
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->x:Z

    return-wide p5
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;
    .locals 3

    .line 261
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->r:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->f:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V

    .line 267
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/ir$b;)V

    .line 268
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->r:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->r:[I

    .line 269
    aput p1, v1, p2

    .line 270
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 271
    aput-object v0, p1, p2

    .line 272
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 25

    move-object/from16 v0, p0

    .line 242
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)V

    .line 243
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 244
    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/oi;->b(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 246
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-object/from16 v6, p1

    goto :goto_1

    .line 247
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->o()I

    move-result v4

    .line 248
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    if-le v4, v5, :cond_1

    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 249
    :goto_0
    invoke-direct {v0, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    invoke-static {v5, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v1

    goto :goto_1

    .line 251
    :cond_2
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    .line 252
    :goto_1
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 253
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v5

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/on;->f()Landroid/net/Uri;

    move-result-object v2

    .line 255
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/on;->g()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J

    move-result-wide v13

    move-wide v15, v13

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/on;->e()J

    move-result-wide v21

    .line 258
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a()Z

    move-result v6

    xor-int/lit8 v24, v6, 0x1

    move-object v6, v2

    move-wide/from16 v17, v12

    const/4 v2, 0x0

    move-object v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    move-object/from16 v23, p6

    .line 259
    invoke-virtual/range {v4 .. v24}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 0

    .line 373
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ia$a;

    invoke-virtual/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->s:Z

    .line 275
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 5

    .line 95
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->b:[Z

    .line 96
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/da;)V
    .locals 1

    .line 277
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->p:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 278
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJ)V
    .locals 24

    move-object/from16 v0, p0

    .line 210
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 211
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->p:Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->p()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 214
    :goto_0
    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    .line 215
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->e:Lcom/google/vr/sdk/widgets/video/deps/ia$c;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()Z

    move-result v1

    invoke-interface {v4, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ia$c;->a(JZ)V

    .line 216
    :cond_1
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v6

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/on;->f()Landroid/net/Uri;

    move-result-object v7

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/on;->g()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J

    move-result-wide v14

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    move-wide/from16 v16, v1

    .line 221
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/on;->e()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 222
    invoke-virtual/range {v5 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    .line 223
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)V

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    .line 225
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 227
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 228
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v2

    .line 229
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/on;->f()Landroid/net/Uri;

    move-result-object v3

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/on;->g()Ljava/util/Map;

    move-result-object v4

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->c(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->B:J

    .line 232
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia$a;->b(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)Lcom/google/vr/sdk/widgets/video/deps/on;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/on;->e()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 233
    invoke-virtual/range {v1 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;)V

    .line 236
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 237
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    if-lez v1, :cond_1

    .line 240
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie$a;J)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->k:Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ot;->a()Z

    .line 41
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->n()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    .locals 0

    .line 375
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ia$a;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V
    .locals 0

    .line 374
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ia$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(Lcom/google/vr/sdk/widgets/video/deps/ia$a;JJZ)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a_()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->h()V

    return-void
.end method

.method public b(J)J
    .locals 4

    .line 137
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    .line 138
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->e:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 139
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->c:[Z

    .line 140
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 141
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    .line 143
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-direct {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a([ZJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    .line 147
    :cond_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    .line 148
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    .line 149
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->c()V

    goto :goto_2

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 153
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->z:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->c()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->z:Z

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->o()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->G:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->y:Z

    .line 116
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 0

    .line 102
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->F:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->k:Lcom/google/vr/sdk/widgets/video/deps/ot;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ot;->a()Z

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->n()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()J
    .locals 9

    .line 118
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->m()Lcom/google/vr/sdk/widgets/video/deps/ia$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ia$d;->c:[Z

    .line 119
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->H:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->E:J

    return-wide v0

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->v:Z

    if-eqz v1, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    .line 125
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    .line 127
    aget-boolean v7, v0, v6

    if-eqz v7, :cond_2

    .line 128
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object v7, v7, v6

    .line 129
    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v7

    .line 130
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->p()J

    move-result-wide v4

    :cond_4
    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    .line 134
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->D:J

    :cond_5
    return-wide v4
.end method

.method public e()J
    .locals 2

    .line 109
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->A:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->t:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->I:Z

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->d:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b()V

    return-void
.end method

.method public g()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->q:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->j:Lcom/google/vr/sdk/widgets/video/deps/ia$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ia$b;->a()V

    return-void
.end method

.method h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->i:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->w:I

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(I)V

    return-void
.end method

.method final synthetic i()V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->I:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia;->o:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_0
    return-void
.end method

.method final synthetic j()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->l()V

    return-void
.end method
