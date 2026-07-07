.class public final Lcom/google/ads/interactivemedia/v3/internal/mb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/nk;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mb;-><init>([B)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mb;->a:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mb;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aop;->g()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/mb;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nb;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/nb;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->c(Lcom/google/ads/interactivemedia/v3/internal/nj;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/nb;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final a(I)Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mb;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nn;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/nn;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->c(Lcom/google/ads/interactivemedia/v3/internal/nj;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/nn;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final c(Lcom/google/ads/interactivemedia/v3/internal/nj;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/nj;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mb;->b:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/nj;->d:[B

    .line 21
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mb;->b:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    if-lez v1, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    const/4 v5, 0x3

    .line 26
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e(I)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_2

    :cond_1
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 28
    :goto_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v10

    int-to-byte v10, v10

    .line 29
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    if-eqz v7, :cond_3

    .line 30
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/abc;->a:I

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_2

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_3

    :cond_2
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    .line 31
    :goto_3
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 32
    invoke-direct {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 33
    invoke-virtual {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I)V

    .line 36
    invoke-virtual {v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 37
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    .line 32
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto :goto_0

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/nm;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nm;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v2, 0x15

    if-eq p1, v2, :cond_d

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v1, 0x24

    if-eq p1, v1, :cond_a

    const/16 v1, 0x59

    if-eq p1, v1, :cond_9

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_7

    const/16 v1, 0x101

    if-eq p1, v1, :cond_6

    const/16 v1, 0x81

    if-eq p1, v1, :cond_5

    const/16 v1, 0x82

    if-eq p1, v1, :cond_4

    const/16 v1, 0x86

    if-eq p1, v1, :cond_2

    const/16 v1, 0x87

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    return-object v3

    .line 15
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v3

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mq;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    .line 16
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mq;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    .line 17
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mj;

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mb;->b(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nn;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v3

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    .line 18
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ma;

    const/4 v1, 0x0

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ma;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    :cond_2
    const/16 p1, 0x10

    .line 7
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v3

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/na;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/mt;

    const-string v0, "application/x-scte35"

    .line 8
    invoke-direct {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/mt;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/na;-><init>(Lcom/google/ads/interactivemedia/v3/internal/mz;)V

    return-object p1

    :cond_4
    const/16 p1, 0x40

    .line 7
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result p1

    if-nez p1, :cond_8

    return-object v3

    .line 12
    :cond_5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lw;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    .line 10
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/lw;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 9
    :cond_6
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/na;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/mt;

    const-string v0, "application/vnd.dvb.ait"

    .line 6
    invoke-direct {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/mt;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/na;-><init>(Lcom/google/ads/interactivemedia/v3/internal/mz;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ly;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    .line 7
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ly;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 0
    :cond_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mc;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mc;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 10
    :cond_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/md;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->c:Ljava/util/List;

    .line 11
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/md;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 8
    :cond_a
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mo;

    .line 12
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nb;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nb;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 11
    :cond_b
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v3

    :cond_c
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mm;

    .line 13
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nb;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/mb;->a(I)Z

    move-result v2

    .line 14
    invoke-direct {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nb;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    :cond_d
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/mp;

    .line 15
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/mp;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    .line 18
    :cond_e
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mr;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/nj;->b:Ljava/lang/String;

    .line 19
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mr;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    :cond_f
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mu;

    .line 20
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/mg;

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mb;->b(Lcom/google/ads/interactivemedia/v3/internal/nj;)Lcom/google/ads/interactivemedia/v3/internal/nn;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/mg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/me;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
