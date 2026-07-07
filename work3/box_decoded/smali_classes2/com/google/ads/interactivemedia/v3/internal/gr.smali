.class public final Lcom/google/ads/interactivemedia/v3/internal/gr;
.super Lcom/google/ads/interactivemedia/v3/internal/oc;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/abj;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fr;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/fx;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Lcom/google/ads/interactivemedia/v3/internal/ec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/oe;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/fs;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ff;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/gm;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 2
    invoke-direct {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/gh;-><init>([Lcom/google/ads/interactivemedia/v3/internal/fj;)V

    invoke-direct {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ff;Lcom/google/ads/interactivemedia/v3/internal/gh;)V

    const/4 v0, 0x1

    const v1, 0x472c4400    # 44100.0f

    .line 3
    invoke-direct {p0, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;-><init>(ILcom/google/ads/interactivemedia/v3/internal/oe;F)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fr;

    .line 5
    invoke-direct {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/fr;-><init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/fs;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/gq;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/gq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gr;)V

    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/fv;)V

    return-void
.end method

.method private final S()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 158
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->z()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->k:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    .line 159
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 158
    :goto_0
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->k:Z

    :cond_1
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 1

    .line 54
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 56
    :cond_1
    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    return p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/fr;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/ec;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->l:Lcom/google/ads/interactivemedia/v3/internal/ec;

    return-object p0
.end method


# virtual methods
.method protected final A()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->k:Z

    return-void
.end method

.method protected final B()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 121
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b()V

    return-void
.end method

.method protected final C()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 140
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->c()V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/fw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->G()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->F()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    .line 141
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0
.end method

.method protected final a(F[Lcom/google/ads/interactivemedia/v3/internal/cz;)F
    .locals 5

    .line 57
    array-length v0, p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 58
    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    if-eq v4, v1, :cond_0

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v3

    mul-float p2, p2, p1

    return p2
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 3

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->e:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ne p1, v1, :cond_1

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    if-ne p1, v1, :cond_1

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    if-ne p1, v1, :cond_1

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string p2, "audio/opus"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    .line 144
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 145
    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->E:Ljava/lang/Class;

    .line 147
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/gr;->c(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 148
    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    .line 149
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/op;->a()Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, v0, 0xc

    return p1

    .line 150
    :cond_3
    :goto_1
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    invoke-interface {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 157
    :cond_4
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 150
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 151
    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    iget v6, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    const/4 v7, 0x2

    .line 152
    invoke-static {v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(III)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    .line 151
    invoke-interface {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 153
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v3, :cond_8

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 155
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 156
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    .line 157
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x10

    :cond_9
    if-eq v4, v1, :cond_a

    const/4 p1, 0x3

    goto :goto_3

    :cond_a
    const/4 p1, 0x4

    :goto_3
    or-int/2addr p1, v2

    or-int/2addr p1, v0

    return p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/oe;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    .line 60
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 62
    invoke-interface {v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/op;->a()Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 64
    invoke-interface {p1, v0, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/oe;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 65
    invoke-static {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/util/List;

    move-result-object p2

    const-string v2, "audio/eac3-joc"

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 68
    invoke-interface {p1, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/oe;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    .line 70
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 142
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(F)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 74
    :pswitch_0
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/ec;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->l:Lcom/google/ads/interactivemedia/v3/internal/ec;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 75
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b(Z)V

    return-void

    .line 77
    :cond_0
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/gc;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 78
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/gc;)V

    return-void

    .line 79
    :cond_1
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/fe;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 80
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/fe;)V

    return-void

    .line 0
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 81
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(JZ)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 120
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/fx;->i()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->j:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->k:Z

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->h:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p1

    goto/16 :goto_2

    .line 97
    :cond_1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    goto :goto_0

    .line 99
    :cond_2
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 100
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(I)I

    move-result v0

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 98
    :goto_0
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 105
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 106
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->i(I)V

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->B:I

    .line 108
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(I)V

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    .line 109
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(I)V

    const-string v0, "channel-count"

    .line 110
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    const-string v0, "sample-rate"

    .line 111
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 112
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->f:Z

    if-eqz p2, :cond_6

    iget p2, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    const/4 v2, 0x6

    if-ne p2, v2, :cond_6

    .line 113
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ge p2, v2, :cond_6

    .line 114
    new-array v1, p2, [I

    const/4 p2, 0x0

    .line 115
    :goto_1
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ge p2, v2, :cond_6

    .line 116
    aput p2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 0
    :cond_6
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 117
    invoke-interface {p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;[I)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/ft; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object p1

    throw p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/da;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/da;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    .line 96
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->j:Z

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 124
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->j:Z

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/ny;Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->u()[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v1

    .line 14
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 15
    aget-object v6, v0, v5

    .line 16
    invoke-virtual {p1, p3, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 17
    invoke-direct {p0, p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->e:I

    .line 18
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    .line 19
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const-string v2, "samsung"

    const/16 v5, 0x18

    if-ge v1, v5, :cond_4

    const-string v1, "OMX.SEC.aac.dec"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "herolte"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->f:Z

    .line 25
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v6, 0x15

    if-ge v1, v6, :cond_6

    const-string v1, "OMX.SEC.mp3.dec"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "baffin"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "grand"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "fortuna"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "gprimelte"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "j2y18lte"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v1, "ms01"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->g:Z

    .line 34
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->e:I

    .line 35
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    .line 36
    invoke-virtual {v2, v6, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    const-string v6, "channel-count"

    invoke-virtual {v2, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 38
    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    const-string v6, "sample-rate"

    invoke-virtual {v2, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 39
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v0, "max-input-size"

    .line 40
    invoke-static {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const-string v0, "priority"

    .line 41
    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "operating-rate"

    .line 43
    invoke-virtual {v2, v0, p5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    sget p5, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v0, 0x1c

    if-gt p5, v0, :cond_9

    .line 44
    iget-object p5, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9

    const-string p5, "ac4-is-sync"

    .line 45
    invoke-virtual {v2, p5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    sget p5, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt p5, v5, :cond_a

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 46
    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    iget v1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    const/4 v3, 0x4

    .line 47
    invoke-static {v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(III)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    .line 48
    invoke-interface {p5, v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p5

    const/4 v0, 0x2

    if-ne p5, v0, :cond_a

    const-string p5, "pcm-encoding"

    .line 49
    invoke-virtual {v2, p5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/4 p5, 0x0

    .line 50
    invoke-interface {p2, v2, p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    .line 51
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->b:Ljava/lang/String;

    const-string p2, "audio/raw"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    move-object p3, p5

    :goto_4
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->h:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 90
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(ZZ)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 91
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->v()Lcom/google/ads/interactivemedia/v3/internal/ef;

    move-result-object p1

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:I

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 93
    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 94
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->g()V

    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 131
    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->g:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p10, p1

    if-nez p3, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q()J

    move-result-wide p1

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p13, p1, p3

    if-eqz p13, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q()J

    move-result-wide p10

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->h:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    and-int/lit8 p1, p8, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p2

    :cond_2
    :goto_0
    if-eqz p12, :cond_4

    if-eqz p5, :cond_3

    .line 132
    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 133
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 134
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->b()V

    return p2

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 135
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/fu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/fw; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    .line 137
    invoke-virtual {p5, p7, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 138
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    return p2

    :cond_6
    return p3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 136
    :goto_1
    invoke-virtual {p0, p1, p14}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object p1

    throw p1
.end method

.method public final ad()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gr;->S()V

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->i:J

    return-wide v0
.end method

.method protected final b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 143
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/abj;
    .locals 0

    return-object p0
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 72
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->f()F

    move-result v0

    return v0
.end method

.method protected final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 128
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->a()V

    return-void
.end method

.method protected final q()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gr;->S()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 130
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->h()V

    return-void
.end method

.method protected final r()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 85
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void

    :catchall_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    .line 88
    throw v0

    :catchall_1
    move-exception v0

    .line 86
    :try_start_2
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    .line 89
    throw v0

    :catchall_2
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->c:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    .line 88
    throw v0
.end method

.method protected final s()V
    .locals 2

    .line 125
    :try_start_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 126
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->j()V

    return-void

    :catchall_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 126
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/fx;->j()V

    .line 127
    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 83
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gr;->d:Lcom/google/ads/interactivemedia/v3/internal/fx;

    .line 82
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
