.class public final Lcom/google/ads/interactivemedia/v3/internal/gm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fx;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:J

.field private E:F

.field private F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

.field private G:[Ljava/nio/ByteBuffer;

.field private H:Ljava/nio/ByteBuffer;

.field private I:I

.field private J:Ljava/nio/ByteBuffer;

.field private K:[B

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Lcom/google/ads/interactivemedia/v3/internal/gc;

.field private S:Z

.field private T:J

.field private U:Z

.field private final V:Lcom/google/ads/interactivemedia/v3/internal/gh;

.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ff;

.field private final b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ge;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/gy;

.field private final e:[Lcom/google/ads/interactivemedia/v3/internal/fj;

.field private final f:[Lcom/google/ads/interactivemedia/v3/internal/fj;

.field private final g:Landroid/os/ConditionVariable;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/gb;

.field private final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/gi;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Z

.field private l:Lcom/google/ads/interactivemedia/v3/internal/gl;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/fv;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/gg;

.field private o:Lcom/google/ads/interactivemedia/v3/internal/gg;

.field private p:Landroid/media/AudioTrack;

.field private q:Lcom/google/ads/interactivemedia/v3/internal/fe;

.field private r:Lcom/google/ads/interactivemedia/v3/internal/gi;

.field private s:Lcom/google/ads/interactivemedia/v3/internal/gi;

.field private t:F

.field private u:Ljava/nio/ByteBuffer;

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ff;Lcom/google/ads/interactivemedia/v3/internal/gh;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->a:Lcom/google/ads/interactivemedia/v3/internal/ff;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->V:Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 1
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->b:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->j:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->k:Z

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->g:Landroid/os/ConditionVariable;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gb;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/gj;

    .line 3
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/gj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gm;)V

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/gb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ga;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ge;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ge;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->c:Lcom/google/ads/interactivemedia/v3/internal/ge;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/gy;

    .line 5
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/gy;-><init>()V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->d:Lcom/google/ads/interactivemedia/v3/internal/gy;

    new-instance v3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/ads/interactivemedia/v3/internal/gd;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/gu;

    .line 7
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/gu;-><init>()V

    aput-object v5, v4, p1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/gh;->a()[Lcom/google/ads/interactivemedia/v3/internal/fj;

    move-result-object p2

    .line 8
    invoke-static {v3, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 9
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->e:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    new-array p2, v1, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 10
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/go;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/go;-><init>()V

    aput-object v0, p2, p1

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->f:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->E:F

    .line 11
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fe;->a:Lcom/google/ads/interactivemedia/v3/internal/fe;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->q:Lcom/google/ads/interactivemedia/v3/internal/fe;

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gc;

    .line 12
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/gc;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->R:Lcom/google/ads/interactivemedia/v3/internal/gc;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gi;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/gi;-><init>(FZJJ)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->t:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->G:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    return-void
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic a(III)Landroid/media/AudioFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/gm;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->g:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/ff;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Lcom/google/ads/interactivemedia/v3/internal/ff;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 103
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x12

    const/4 v6, 0x6

    if-eq v1, v3, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    const/16 v7, 0x11

    if-eq v1, v7, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v7, 0xe

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    if-ne v1, v5, :cond_3

    const/4 p0, 0x6

    goto :goto_1

    .line 104
    :cond_3
    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    :goto_1
    if-gt p0, v4, :cond_a

    .line 105
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v8, 0x1c

    if-gt v7, v8, :cond_6

    if-ne p0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-eq p0, v2, :cond_5

    const/4 v2, 0x4

    if-eq p0, v2, :cond_5

    if-ne p0, v3, :cond_6

    :cond_5
    const/4 v4, 0x6

    goto :goto_2

    :cond_6
    move v4, p0

    :goto_2
    sget p0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x1a

    if-gt p0, v2, :cond_7

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v2, "fugu"

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    if-ne v4, p0, :cond_7

    const/4 v4, 0x2

    :cond_7
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->f(I)I

    move-result p0

    if-nez p0, :cond_8

    return-object v0

    .line 107
    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ff;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_9
    if-ne v1, v5, :cond_a

    .line 109
    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ff;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0
.end method

.method private final a(FZ)V
    .locals 8

    .line 225
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->q()Lcom/google/ads/interactivemedia/v3/internal/gi;

    move-result-object v0

    .line 226
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gi;->b:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gi;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v0

    move v2, p1

    move v3, p2

    .line 227
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/gi;-><init>(FZJJ)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->r:Lcom/google/ads/interactivemedia/v3/internal/gi;

    return-void

    :cond_2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    return-void
.end method

.method private final a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fw;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 208
    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->G:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    .line 209
    aget-object v2, v2, v3

    goto :goto_1

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 210
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/fj;->a:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 211
    invoke-direct {p0, v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 212
    aget-object v3, v3, v1

    .line 213
    invoke-interface {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/fj;->a(Ljava/nio/ByteBuffer;)V

    .line 214
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/fj;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->G:[Ljava/nio/ByteBuffer;

    .line 215
    aput-object v3, v4, v1

    .line 216
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final a(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fw;
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 243
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    goto :goto_1

    .line 267
    :cond_2
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    .line 244
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ge v0, v1, :cond_5

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->K:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 246
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->K:[B

    .line 247
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->K:[B

    .line 248
    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->L:I

    .line 250
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 251
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ge v4, v1, :cond_7

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->y:J

    .line 252
    invoke-virtual {p2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/gb;->b(J)I

    move-result p2

    if-lez p2, :cond_6

    .line 253
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->K:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->L:I

    .line 254
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_10

    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->L:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->L:I

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    :cond_6
    :goto_2
    const/4 p2, 0x0

    goto/16 :goto_4

    .line 275
    :cond_7
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    if-eqz v1, :cond_f

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 256
    :goto_3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v4, 0x1a

    const-wide/16 v7, 0x3e8

    if-lt v1, v4, :cond_9

    const/4 v9, 0x1

    mul-long v10, p2, v7

    move-object v7, p1

    move v8, v0

    .line 257
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_a

    const/16 v1, 0x10

    .line 258
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    .line 259
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    .line 260
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_a
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    .line 261
    invoke-virtual {v1, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p2, p2, v7

    .line 262
    invoke-virtual {v1, v4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    :cond_b
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_c

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    move p2, p3

    goto :goto_4

    :cond_c
    if-ge p3, p2, :cond_d

    goto :goto_2

    .line 266
    :cond_d
    invoke-static {v6, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    if-gez p2, :cond_e

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    goto :goto_4

    :cond_e
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    goto :goto_4

    :cond_f
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 267
    invoke-static {p2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    .line 268
    :cond_10
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->T:J

    if-gez p2, :cond_12

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 p3, 0x18

    if-lt p1, p3, :cond_11

    const/4 p1, -0x6

    if-ne p2, p1, :cond_11

    .line 269
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->m()V

    :cond_11
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fw;

    .line 270
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fw;-><init>(I)V

    throw p1

    :cond_12
    iget-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->P:Z

    if-eqz p3, :cond_13

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    if-eqz p3, :cond_13

    if-ge p2, v0, :cond_13

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 271
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_13

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->z:J

    .line 272
    invoke-virtual {p3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/gb;->c(J)J

    move-result-wide v4

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/gq;

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/gr;->b(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/ec;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/gr;->b(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/ec;

    move-result-object p3

    .line 273
    invoke-interface {p3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ec;->a(J)V

    :cond_13
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 274
    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-nez p3, :cond_14

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->y:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->y:J

    :cond_14
    if-ne p2, v0, :cond_17

    if-eqz p3, :cond_16

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_15

    goto :goto_5

    :cond_15
    const/4 v2, 0x0

    .line 275
    :goto_5
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->z:J

    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->A:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->I:I

    mul-int p3, p3, v0

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->z:J

    :cond_16
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    :cond_17
    return-void
.end method

.method private static a(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 199
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(III)Landroid/media/AudioFormat;
    .locals 1

    .line 83
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 84
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/gm;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private final b(J)V
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 15
    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->V:Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gh;->a(F)F

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 17
    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->i:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->V:Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 18
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gh;->a(Z)V

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/gi;

    const-wide/16 v3, 0x0

    .line 19
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 20
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(J)J

    move-result-wide v6

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/gi;-><init>(FZJJ)V

    .line 21
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 22
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/gg;->j:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    new-instance p2, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    array-length v1, p1

    :goto_2
    if-ge v8, v1, :cond_3

    aget-object v2, p1, v8

    .line 25
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/fj;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_2
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/fj;->e()V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 29
    new-array v1, p1, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 30
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->G:[Ljava/nio/ByteBuffer;

    .line 31
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->l()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/fr;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(Z)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/gm;)Lcom/google/ads/interactivemedia/v3/internal/fv;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/gm;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/gm;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/gm;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->T:J

    return-wide v0
.end method

.method private final l()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 79
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 80
    aget-object v1, v1, v0

    .line 81
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/fj;->e()V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->G:[Ljava/nio/ByteBuffer;

    .line 82
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/fj;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->U:Z

    :cond_0
    return-void
.end method

.method private final n()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fw;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->F:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 58
    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 59
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/fj;->b()V

    .line 61
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(J)V

    .line 62
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/fj;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 63
    invoke-direct {p0, v0, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    return v2
.end method

.method private final o()V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->E:F

    .line 239
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->E:F

    .line 240
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final p()F
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->q()Lcom/google/ads/interactivemedia/v3/internal/gi;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:F

    return v0
.end method

.method private final q()Lcom/google/ads/interactivemedia/v3/internal/gi;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->r:Lcom/google/ads/interactivemedia/v3/internal/gi;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/gi;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    :goto_0
    return-object v0
.end method

.method private final r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final s()J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 121
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->w:J

    .line 122
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->x:J

    :goto_0
    return-wide v1
.end method

.method private final t()J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 123
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->y:J

    .line 124
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gg;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->z:J

    :goto_0
    return-wide v1
.end method

.method private final u()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->O:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->O:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 204
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/gb;->e(J)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 205
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 4

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->C:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 89
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gb;->a(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 90
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gi;

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gi;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    .line 94
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->d:J

    sub-long/2addr v0, v2

    .line 95
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->V:Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 97
    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gh;->a(J)J

    move-result-wide v0

    goto :goto_1

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    .line 98
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:F

    .line 99
    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JF)J

    move-result-wide v0

    .line 97
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    .line 100
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->c:J

    add-long/2addr v2, v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->V:Lcom/google/ads/interactivemedia/v3/internal/gh;

    .line 101
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gh;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_4
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->P:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 202
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 203
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 233
    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(FFF)F

    move-result p1

    .line 234
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->k()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(FZ)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    .line 228
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;[I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ft;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    .line 33
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 34
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(I)Z

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    .line 35
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(II)I

    move-result v2

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->e:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->d:Lcom/google/ads/interactivemedia/v3/internal/gy;

    .line 36
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->B:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    invoke-virtual {v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/gy;->a(II)V

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_0

    .line 37
    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    if-nez p2, :cond_0

    const/4 v6, 0x6

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    .line 38
    aput v8, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    :cond_1
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->c:Lcom/google/ads/interactivemedia/v3/internal/ge;

    .line 39
    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/ge;->a([I)V

    .line 40
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    invoke-direct {v6, v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/fh;-><init>(III)V

    .line 41
    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v3, v8

    .line 42
    :try_start_0
    invoke-interface {v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/fj;->a(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;

    move-result-object v10

    .line 43
    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/fj;->a()Z

    move-result v9
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/fi; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v9, :cond_2

    move-object v6, v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 51
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ft;

    .line 44
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 45
    :cond_3
    iget v7, v6, Lcom/google/ads/interactivemedia/v3/internal/fh;->d:I

    .line 46
    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:I

    .line 47
    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/fh;->c:I

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/ach;->f(I)I

    move-result v9

    .line 48
    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/fh;->c:I

    invoke-static {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(II)I

    move-result v6

    move v4, v2

    move-object v12, v3

    move v10, v7

    move v7, v8

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    new-array v2, v5, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 49
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->a:Lcom/google/ads/interactivemedia/v3/internal/ff;

    .line 50
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/ff;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 52
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 53
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    move-object v12, v2

    move v9, v6

    move v10, v7

    const/4 v6, -0x1

    const/4 v11, 0x0

    move v7, v4

    const/4 v4, -0x1

    :goto_2
    const-string v2, ") for: "

    if-eqz v10, :cond_7

    if-eqz v9, :cond_6

    .line 55
    iput-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->U:Z

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/gg;

    const/4 v14, 0x0

    move-object v2, v13

    move-object/from16 v3, p1

    move v5, v8

    move v8, v9

    move v9, v10

    move v10, v14

    .line 56
    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/gg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;IIIIIIZZ[Lcom/google/ads/interactivemedia/v3/internal/fj;)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    return-void

    :cond_5
    iput-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    return-void

    .line 54
    :cond_6
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ft;

    .line 55
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x36

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_7
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ft;

    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid output encoding (mode="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_8
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ft;

    .line 51
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to configure passthrough for: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/fe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->q:Lcom/google/ads/interactivemedia/v3/internal/fe;

    .line 223
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->q:Lcom/google/ads/interactivemedia/v3/internal/fe;

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    if-eqz p1, :cond_1

    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/fv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/gc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->R:Lcom/google/ads/interactivemedia/v3/internal/gc;

    .line 229
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/gc;->a:I

    .line 231
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/gc;->b:F

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->R:Lcom/google/ads/interactivemedia/v3/internal/gc;

    .line 232
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gc;->a:I

    :cond_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->R:Lcom/google/ads/interactivemedia/v3/internal/gc;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fu;,
            Lcom/google/ads/interactivemedia/v3/internal/fw;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 125
    :goto_1
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->n()Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_2
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 127
    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->e:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->f:I

    if-ne v10, v11, :cond_3

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->d:I

    iget v10, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->d:I

    if-ne v9, v10, :cond_3

    iput-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 131
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 132
    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 133
    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/gg;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v10, v9, Lcom/google/ads/interactivemedia/v3/internal/cz;->B:I

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    invoke-virtual {v5, v10, v9}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    goto :goto_2

    .line 128
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->u()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    return v6

    .line 130
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    .line 134
    :cond_5
    :goto_2
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(J)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v5

    const/4 v9, 0x2

    if-nez v5, :cond_b

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->g:Landroid/os/ConditionVariable;

    .line 135
    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    :try_start_0
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 136
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    iget-object v11, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->q:Lcom/google/ads/interactivemedia/v3/internal/fe;

    iget v12, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    .line 137
    invoke-virtual {v5, v10, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/gg;->a(ZLcom/google/ads/interactivemedia/v3/internal/fe;I)Landroid/media/AudioTrack;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/fu; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 140
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->l:Lcom/google/ads/interactivemedia/v3/internal/gl;

    if-nez v10, :cond_7

    .line 141
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/gl;

    invoke-direct {v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/gl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gm;)V

    iput-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->l:Lcom/google/ads/interactivemedia/v3/internal/gl;

    :cond_7
    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->l:Lcom/google/ads/interactivemedia/v3/internal/gl;

    .line 142
    invoke-virtual {v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/gl;->a(Landroid/media/AudioTrack;)V

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 143
    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/gg;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v11, v10, Lcom/google/ads/interactivemedia/v3/internal/cz;->B:I

    iget v10, v10, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    invoke-virtual {v5, v11, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_8
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 144
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v5

    iget v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    if-eq v10, v5, :cond_9

    iput v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    if-eqz v10, :cond_9

    check-cast v10, Lcom/google/ads/interactivemedia/v3/internal/gq;

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/fr;

    move-result-object v10

    .line 145
    invoke-virtual {v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(I)V

    :cond_9
    iget-object v11, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    iget-object v12, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 146
    iget v10, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-ne v10, v9, :cond_a

    const/4 v13, 0x1

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    :goto_3
    iget v14, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    iget v15, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->d:I

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->h:I

    move/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/gb;->a(Landroid/media/AudioTrack;ZIII)V

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->o()V

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->R:Lcom/google/ads/interactivemedia/v3/internal/gc;

    .line 148
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gc;->a:I

    iput-boolean v7, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->C:Z

    goto :goto_4

    :catch_0
    move-exception v0

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->m()V

    .line 139
    throw v0

    .line 148
    :cond_b
    :goto_4
    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->C:Z

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_c

    .line 149
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->D:J

    iput-boolean v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    iput-boolean v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->C:Z

    .line 150
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(J)V

    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->P:Z

    if-eqz v5, :cond_c

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a()V

    :cond_c
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/gb;->a(J)Z

    move-result v5

    if-nez v5, :cond_d

    return v6

    :cond_d
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    const-string v12, "AudioTrack"

    if-nez v5, :cond_20

    .line 153
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v13, :cond_e

    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_f

    return v7

    :cond_f
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 155
    iget v13, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-eqz v13, :cond_19

    iget v13, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->A:I

    if-nez v13, :cond_19

    .line 156
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->g:I

    const/16 v13, 0x10

    const/4 v15, -0x2

    const/4 v14, -0x1

    packed-switch v5, :pswitch_data_0

    .line 139
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected audio encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_1
    sget v5, Lcom/google/ads/interactivemedia/v3/internal/fd;->a:I

    new-array v5, v13, [B

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 159
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 161
    invoke-direct {v9, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/fd;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;)Lcom/google/ads/interactivemedia/v3/internal/fc;

    move-result-object v5

    iget v14, v5, Lcom/google/ads/interactivemedia/v3/internal/fc;->d:I

    goto/16 :goto_c

    :pswitch_2
    const/16 v14, 0x200

    goto/16 :goto_c

    .line 162
    :pswitch_3
    sget v5, Lcom/google/ads/interactivemedia/v3/internal/fb;->a:I

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    move v10, v5

    :goto_6
    if-gt v10, v9, :cond_11

    add-int/lit8 v11, v10, 0x4

    .line 165
    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/nio/ByteBuffer;I)I

    move-result v11

    and-int/2addr v11, v15

    const v8, -0x78d9046

    if-ne v11, v8, :cond_10

    sub-int/2addr v10, v5

    goto :goto_7

    :cond_10
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_11
    const/4 v10, -0x1

    :goto_7
    if-ne v10, v14, :cond_12

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 166
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v10

    and-int/lit16 v5, v5, 0xff

    const/16 v9, 0xbb

    if-ne v5, v9, :cond_13

    const/16 v5, 0x9

    goto :goto_8

    :cond_13
    const/16 v5, 0x8

    :goto_8
    const/16 v9, 0x28

    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v9, v5

    mul-int/lit8 v14, v5, 0x10

    goto/16 :goto_c

    :pswitch_4
    const/16 v14, 0x800

    goto/16 :goto_c

    :pswitch_5
    const/16 v14, 0x400

    goto/16 :goto_c

    .line 168
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 169
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/gt;->b(I)I

    move-result v5

    if-eq v5, v14, :cond_14

    move v14, v5

    goto :goto_c

    .line 130
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 171
    :pswitch_7
    sget v5, Lcom/google/ads/interactivemedia/v3/internal/gn;->a:I

    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 173
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v15, :cond_17

    if-eq v8, v14, :cond_16

    const/16 v10, 0x1f

    if-eq v8, v10, :cond_15

    add-int/lit8 v8, v5, 0x4

    .line 177
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_a

    :cond_15
    add-int/lit8 v8, v5, 0x5

    .line 174
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_9

    :cond_16
    add-int/lit8 v8, v5, 0x4

    .line 175
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_9
    and-int/lit8 v5, v5, 0x3c

    goto :goto_b

    :cond_17
    add-int/lit8 v8, v5, 0x5

    .line 176
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_a
    and-int/lit16 v5, v5, 0xfc

    :goto_b
    shr-int/2addr v5, v9

    or-int/2addr v5, v8

    add-int/2addr v5, v7

    mul-int/lit8 v14, v5, 0x20

    goto :goto_c

    .line 178
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 161
    :goto_c
    iput v14, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->A:I

    if-eqz v14, :cond_18

    goto :goto_d

    :cond_18
    return v7

    :cond_19
    :goto_d
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->r:Lcom/google/ads/interactivemedia/v3/internal/gi;

    if-eqz v5, :cond_1b

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->n()Z

    move-result v5

    if-nez v5, :cond_1a

    return v6

    .line 180
    :cond_1a
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(J)V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->r:Lcom/google/ads/interactivemedia/v3/internal/gi;

    :cond_1b
    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->D:J

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->s()J

    move-result-wide v10

    iget-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->d:Lcom/google/ads/interactivemedia/v3/internal/gy;

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/gy;->l()J

    move-result-wide v13

    sub-long/2addr v10, v13

    const-wide/32 v13, 0xf4240

    mul-long v10, v10, v13

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 182
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    int-to-long v13, v5

    div-long/2addr v10, v13

    add-long/2addr v8, v10

    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    if-nez v5, :cond_1c

    sub-long v10, v8, v2

    .line 183
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v13, 0x30d40

    cmp-long v5, v10, v13

    if-lez v5, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v10, 0x50

    .line 184
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Discontinuity detected [expected "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", got "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    :cond_1c
    iget-boolean v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    if-eqz v5, :cond_1e

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->n()Z

    move-result v5

    if-nez v5, :cond_1d

    return v6

    :cond_1d
    sub-long v8, v2, v8

    iget-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->D:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->D:J

    iput-boolean v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    .line 187
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(J)V

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->m:Lcom/google/ads/interactivemedia/v3/internal/fv;

    if-eqz v5, :cond_1e

    const-wide/16 v10, 0x0

    cmp-long v13, v8, v10

    if-eqz v13, :cond_1e

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/gq;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    .line 188
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/gr;->A()V

    :cond_1e
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    .line 189
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/gg;->c:I

    if-nez v5, :cond_1f

    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->w:J

    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->w:J

    goto :goto_e

    .line 195
    :cond_1f
    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->x:J

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->A:I

    mul-int v5, v5, v4

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->x:J

    .line 190
    :goto_e
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    iput v4, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->I:I

    .line 191
    :cond_20
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(J)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    iput v6, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->I:I

    return v7

    :cond_21
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/gb;->d(J)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "Resetting stalled audio track"

    .line 194
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    return v7

    :cond_22
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 3

    .line 111
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 112
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioTrack"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 115
    :cond_0
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->A:I

    if-eq p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->a:Lcom/google/ads/interactivemedia/v3/internal/ff;

    .line 116
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/ff;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->B:Z

    return-void
.end method

.method public final b(F)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->E:F

    .line 237
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->o()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 64
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    .line 65
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->p()F

    move-result v0

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(FZ)V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fw;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->N:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->N:Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->N:Z

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final e()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 197
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/gb;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()F
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->p()F

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->t:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->S:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    .line 57
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->P:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 200
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 201
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 11

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->w:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->x:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->y:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->z:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->A:I

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/gi;

    .line 66
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->p()F

    move-result v4

    .line 67
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->k()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/gi;-><init>(FZJJ)V

    iput-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->s:Lcom/google/ads/interactivemedia/v3/internal/gi;

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->D:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->r:Lcom/google/ads/interactivemedia/v3/internal/gi;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->i:Ljava/util/ArrayDeque;

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->H:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->I:I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->J:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->O:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->N:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->M:I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->u:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->v:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->d:Lcom/google/ads/interactivemedia/v3/internal/gy;

    .line 69
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/gy;->k()V

    .line 70
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->l()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 71
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/gb;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 72
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    .line 73
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->l:Lcom/google/ads/interactivemedia/v3/internal/gl;

    .line 74
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/gl;->b(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->p:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->o:Lcom/google/ads/interactivemedia/v3/internal/gg;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->n:Lcom/google/ads/interactivemedia/v3/internal/gg;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->h:Lcom/google/ads/interactivemedia/v3/internal/gb;

    .line 75
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gb;->d()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->g:Landroid/os/ConditionVariable;

    .line 76
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gf;

    .line 77
    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/gm;Landroid/media/AudioTrack;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gf;->start()V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 5

    .line 218
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->i()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->e:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 219
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 220
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/fj;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->f:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    .line 221
    array-length v1, v0

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    aget-object v3, v0, v1

    .line 222
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/fj;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->Q:I

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->P:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gm;->U:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->q()Lcom/google/ads/interactivemedia/v3/internal/gi;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gi;->b:Z

    return v0
.end method
