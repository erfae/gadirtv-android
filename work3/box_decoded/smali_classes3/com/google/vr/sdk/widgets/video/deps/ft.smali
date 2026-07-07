.class public final Lcom/google/vr/sdk/widgets/video/deps/ft;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ft$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/ft$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/fs;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/google/vr/sdk/widgets/video/deps/fr;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fu;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ft;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pp;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ft;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pp;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/pp;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->c:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fs;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    return-void
.end method

.method private a(J)V
    .locals 11

    .line 115
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->l:Z

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fs;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 118
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fr;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    .line 119
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->b()Lcom/google/vr/sdk/widgets/video/deps/pp;

    move-result-object v6

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    .line 120
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->c()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/fr;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pp;JJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->j:Lcom/google/vr/sdk/widgets/video/deps/fr;

    .line 121
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a()Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fs;->c()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 124
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ft;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/ft;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 45
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a()Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->e:Lcom/google/vr/sdk/widgets/video/deps/fs;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 47
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ft;->a(J)V

    .line 48
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->j:Lcom/google/vr/sdk/widgets/video/deps/fr;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/fr;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->j:Lcom/google/vr/sdk/widgets/video/deps/fr;

    invoke-virtual {v0, p1, p2, v8}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cl$c;)I

    move-result p1

    return p1

    .line 50
    :cond_2
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    if-eqz v6, :cond_3

    .line 51
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    return p2

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    return p2

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6

    return p2

    :cond_6
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_7

    .line 61
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 62
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 63
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 64
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v5

    :cond_7
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_8

    .line 67
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 68
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 69
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p2

    add-int/2addr p2, v2

    .line 70
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v5

    :cond_8
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_9

    .line 73
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v5

    :cond_9
    and-int/lit16 p2, v0, 0xff

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ft$a;

    .line 77
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->f:Z

    if-nez v3, :cond_f

    if-nez v0, :cond_d

    const/16 v3, 0xbd

    if-ne p2, v3, :cond_a

    .line 81
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fb;

    invoke-direct {v8}, Lcom/google/vr/sdk/widgets/video/deps/fb;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->g:Z

    .line 83
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->i:J

    goto :goto_2

    :cond_a
    and-int/lit16 v3, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v3, v6, :cond_b

    .line 85
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fo;

    invoke-direct {v8}, Lcom/google/vr/sdk/widgets/video/deps/fo;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->g:Z

    .line 87
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->i:J

    goto :goto_2

    :cond_b
    and-int/lit16 v3, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_c

    .line 89
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-direct {v8}, Lcom/google/vr/sdk/widgets/video/deps/fj;-><init>()V

    .line 90
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->h:Z

    .line 91
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->i:J

    :cond_c
    :goto_2
    if-eqz v8, :cond_d

    .line 93
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gd$d;

    const/16 v3, 0x100

    invoke-direct {v0, p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;-><init>(II)V

    .line 94
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v8, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    .line 95
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ft$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-direct {v0, v8, v3}, Lcom/google/vr/sdk/widgets/video/deps/ft$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;Lcom/google/vr/sdk/widgets/video/deps/pp;)V

    .line 96
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_d
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->g:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->h:Z

    if-eqz p2, :cond_e

    .line 98
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->i:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_e
    const-wide/32 v6, 0x100000

    .line 100
    :goto_3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_f

    .line 101
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->f:Z

    .line 102
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 103
    :cond_f
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 104
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 105
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_10

    .line 108
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_4

    .line 109
    :cond_10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 110
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v1, v5, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 111
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ft$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 113
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    :goto_4
    return v5
.end method

.method public a(JJ)V
    .locals 4

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 30
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 32
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 33
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->d()V

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->b:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a(J)V

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->j:Lcom/google/vr/sdk/widgets/video/deps/fr;

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fr;->a(J)V

    .line 38
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 39
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ft$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ft$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ft;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 11
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 13
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 15
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 17
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 19
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 21
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 23
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 24
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 25
    invoke-interface {p1, v1, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 26
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
